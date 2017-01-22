Require Import Coq.omega.Omega.
Require Import Crypto.Reflection.Syntax.
Require Import Crypto.Reflection.Equality.
Require Import Crypto.Reflection.Application.
Require Import Crypto.Reflection.MapCastWithCastOp.

(** * Preliminaries: bounded and unbounded number types *)

Definition bound8 := 256.

Definition word8 := {n | n < bound8}.

Definition bound9 := 512.

Definition word9 := {n | n < bound9}.


(** * Expressions over unbounded words *)

Inductive base_type := Nat | Word8 | Word9.
Scheme Equality for base_type.
Definition interp_base_type (t : base_type)
  := match t with
     | Nat => nat
     | Word8 => word8
     | Word9 => word9
     end.
Definition interp_base_type_bounds (t : base_type)
  := nat.
Local Notation TNat := (Tbase Nat).
Local Notation TWord8 := (Tbase Word8).
Local Notation TWord9 := (Tbase Word9).
Inductive op : flat_type base_type -> flat_type base_type -> Set :=
| Const {t} (v : interp_base_type t) : op Unit (Tbase t)
| Plus (t : base_type) : op (Tbase t * Tbase t) (Tbase t)
| Cast (t1 t2 : base_type) : op (Tbase t1) (Tbase t2).

Definition Constf {var} {t} (v : interp_base_type t) : exprf base_type op (var:=var) (Tbase t)
  := Op (Const v) TT.

Theorem O_lt_S : forall n, O < S n.
Proof.
  intros; omega.
Qed.

Definition plus8 (a b : word8) : word8 :=
  let n := proj1_sig a + proj1_sig b in
  match le_lt_dec bound8 n with
  | left _ => exist _ O (O_lt_S _)
  | right pf => exist _ n pf
  end.

Definition plus9 (a b : word9) : word9 :=
  let n := proj1_sig a + proj1_sig b in
  match le_lt_dec bound9 n with
  | left _ => exist _ O (O_lt_S _)
  | right pf => exist _ n pf
  end.

Infix "+8" := plus8 (at level 50).
Infix "+9" := plus9 (at level 50).

Definition unbound {t} : interp_base_type t -> nat :=
  match t with
  | Nat => fun x => x
  | Word8 => fun x => proj1_sig x
  | Word9 => fun x => proj1_sig x
  end.

Definition bound {t} : nat -> interp_base_type t :=
  match t return nat -> interp_base_type t with
  | Nat => fun x => x
  | Word8 => fun x =>
               match le_lt_dec bound8 x with
               | left _ => exist _ O (O_lt_S _)
               | right pf => exist _ x pf
               end
  | Word9 => fun x =>
               match le_lt_dec bound9 x with
               | left _ => exist _ O (O_lt_S _)
               | right pf => exist _ x pf
               end
  end.

Definition interp_op {src dst} (opc : op src dst) : interp_flat_type interp_base_type src -> interp_flat_type interp_base_type dst
  := match opc in op src dst return interp_flat_type _ src -> interp_flat_type _ dst with
     | Const _ v => fun _ => v
     | Plus Nat => fun xy => fst xy + snd xy
     | Plus Word8 => fun xy => fst xy +8 snd xy
     | Plus Word9 => fun xy => fst xy +9 snd xy
     | Cast t1 t2 => fun x => bound (unbound x)
     end.

Definition interp_op_bounds {src dst} (opc : op src dst) : interp_flat_type interp_base_type_bounds src -> interp_flat_type interp_base_type_bounds dst
  := match opc in op src dst return interp_flat_type interp_base_type_bounds src -> interp_flat_type interp_base_type_bounds dst with
     | Const _ v => fun _ => unbound v
     | Plus _ => fun xy => fst xy + snd xy
     | Cast t1 t2 => fun x => x
     end.

Definition bound_type t (v : interp_base_type_bounds t) : base_type
  := if lt_dec v bound8
     then Word8
     else if lt_dec v bound9
          then Word9
          else Nat.

Definition failv t : interp_base_type t
  := match t with
     | Nat => 0
     | Word8 => exist _ 0 (O_lt_S _)
     | Word9 => exist _ 0 (O_lt_S _)
     end.
Definition failf var t : @exprf base_type op var (Tbase t)
  := Op (Const (failv t)) TT.

Definition bound_base_const t1 t2 (x1 : interp_base_type t1) (x2 : interp_base_type_bounds t2) : interp_base_type (bound_type _ x2)
  := bound (unbound x1).
Local Notation new_flat_type (*: forall t, interp_flat_type interp_base_type2 t -> flat_type base_type_code1*)
  := (@SmartFlatTypeMap2 _ _ interp_base_type_bounds (fun t v => Tbase (bound_type t v))).
Definition bound_op
           ovar src1 dst1 src2 dst2 (opc1 : op src1 dst1) (opc2 : op src2 dst2)
  : forall args2,
    option { new_src : _ & (@exprf _ op ovar new_src
                            -> @exprf _ op ovar (new_flat_type (interpf (@interp_op_bounds) (Op opc2 args2))))%type }
  := match opc1 in op src1 dst1, opc2 in op src2 dst2
           return (forall args2,
                      option { new_src : _ & (exprf _ _ new_src -> exprf _ _ (new_flat_type (interpf (@interp_op_bounds) (Op opc2 args2))))%type })
     with
     | Const t1 v1, Const t2 v2
       => fun args2 => Some (existT _ Unit (fun x => Op (Const (@bound_base_const t1 t2 v1 _)) TT))
     | Plus T1, Plus T2 => fun args2 => Some (existT _ _ (Op (Plus (bound_type T2 _))))
     | Cast _ _, Plus _
     | Cast _ _, Const _ _
     | Cast _ _, Cast _ _
       => fun args2 => Some (existT _ _ (fun args' => args'))
     | Plus _, _
     | Const _ _, _
       => fun _ => None
     end.

Definition Boundify {t1} (e1 : Expr base_type op t1) args2
  : Expr _ _ _
  := @MapInterpCastWithCastOp
       base_type interp_base_type_bounds
       op (@interp_op_bounds) base_type_beq internal_base_type_dec_bl
       (@failf) (@bound_type)
       (fun var t1 t2 => Op (Cast t1 t2))
       (fun _ _ opc => match opc with Cast _ _ => true | _ => false end)
       bound_op
       t1 e1 (interp_all_binders_for_to' args2).

(** * Examples *)

Example ex1 : Expr base_type op TNat := fun var =>
  LetIn (Constf (t:=Nat) 127) (fun a : var Nat =>
  LetIn (Constf (t:=Nat) 63) (fun b : var Nat =>
  LetIn (Op (tR:=TNat) (Plus Nat) (Pair (Var a) (Var b))) (fun c : var Nat =>
  Op (Plus Nat) (Pair (Var c) (Var c))))).

Example ex1f : Expr base_type op (Arrow Nat (Arrow Nat TNat)) := fun var =>
  Abs (fun a0 =>
  Abs (fun b0 =>
  LetIn (Var a0) (fun a : var Nat =>
  LetIn (Var b0) (fun b : var Nat =>
  LetIn (Op (tR:=TNat) (Plus Nat) (Pair (Var a) (Var b))) (fun c : var Nat =>
  Op (Plus Nat) (Pair (Var c) (Var c))))))).

Eval compute in (Interp (@interp_op) ex1).
Eval cbv -[plus] in (Interp (@interp_op) ex1f).

Notation e x := (exist _ x _).

Definition ex1b := Boundify ex1 tt.
Eval compute in ex1b.

Definition ex1fb := Boundify ex1f (63, 63)%core.
Eval compute in ex1fb.