Require Export Crypto.Reflection.Syntax.
Require Import Crypto.Reflection.Z.Syntax.
Require Export Crypto.Reflection.Z.HexNotationConstants.
Require Export Crypto.Util.Notations.

Reserved Notation "T x = A ; b" (at level 200, b at level 200, format "T  x  =  A ; '//' b").
Reserved Notation "'(bool)' x" (at level 200, x at level 9).
Reserved Notation "'(uint8_t)' x" (at level 200, x at level 9).
Reserved Notation "'(uint16_t)' x" (at level 200, x at level 9).
Reserved Notation "'(uint32_t)' x" (at level 200, x at level 9).
Reserved Notation "'(uint64_t)' x" (at level 200, x at level 9).
Reserved Notation "'(uint128_t)' x" (at level 200, x at level 9).
Reserved Notation "x & y" (at level 40).

Global Open Scope expr_scope.

Notation "T x = A ; b" := (LetIn (tx:=T) A (fun x => b)) : expr_scope.
(*Notation uint32_t := (_ (TWord 5)).
Notation uint64_t := (_ (TWord 6)).
Notation uint128_t := (_ (TWord 7)).*)
(*
Notation bool := (Tbase (TWord 0)).
Notation "'uint8_t'" := (Tbase (TWord 1)).
Notation "'uint8_t'" := (Tbase (TWord 2)).
Notation "'uint8_t'" := (Tbase (TWord 3)).
Notation uint16_t := (Tbase (TWord 4)).
Notation uint32_t := (Tbase (TWord 5)).
Notation uint64_t := (Tbase (TWord 6)).
Notation uint128_t := (Tbase (TWord 7)).
Notation "'(bool)' x" := (Op (Cast _ (TWord 0)) x).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 1)) x).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 2)) x).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 3)) x).
Notation "'(uint16_t)' x" := (Op (Cast _ (TWord 4)) x).
Notation "'(uint32_t)' x" := (Op (Cast _ (TWord 5)) x).
Notation "'(uint64_t)' x" := (Op (Cast _ (TWord 6)) x).
Notation "'(uint128_t)' x" := (Op (Cast _ (TWord 7)) x).
Notation "'(bool)' x" := (Op (Cast _ (TWord 0)) (Var x)).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 1)) (Var x)).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 2)) (Var x)).
Notation "'(uint8_t)' x" := (Op (Cast _ (TWord 3)) (Var x)).
Notation "'(uint16_t)' x" := (Op (Cast _ (TWord 4)) (Var x)).
Notation "'(uint32_t)' x" := (Op (Cast _ (TWord 5)) (Var x)).
Notation "'(uint64_t)' x" := (Op (Cast _ (TWord 6)) (Var x)).
Notation "'(uint128_t)' x" := (Op (Cast _ (TWord 7)) (Var x)).
*)
Notation "x + y" := (Op (Add) (Pair x y)).
Notation "x + y" := (Op (Add) (Pair (Var x) y)).
Notation "x + y" := (Op (Add) (Pair x (Var y))).
Notation "x + y" := (Op (Add) (Pair (Var x) (Var y))).
Notation "x - y" := (Op (Sub) (Pair x y)).
Notation "x - y" := (Op (Sub) (Pair (Var x) y)).
Notation "x - y" := (Op (Sub) (Pair x (Var y))).
Notation "x - y" := (Op (Sub) (Pair (Var x) (Var y))).
Notation "x * y" := (Op (Mul) (Pair x y)).
Notation "x * y" := (Op (Mul) (Pair (Var x) y)).
Notation "x * y" := (Op (Mul) (Pair x (Var y))).
Notation "x * y" := (Op (Mul) (Pair (Var x) (Var y))).
(* python:
<<
for opn, op in (('*', 'Mul'), ('+', 'Add'), ('&', 'Land')):
    for lgwordsz in (5, 6, 7):
        for side in ('l', 'r'):
            for v1 in (False, True):
                for v2 in (False, True):
                    lhs = ('x' if not v1 else '(Var x)')
                    lhs = (lhs if side != 'l' else '(Op (Cast _ (TWord %d)) %s)' % (lgwordsz, lhs))
                    rhs = ('y' if not v2 else '(Var y)')
                    rhs = (rhs if side != 'r' else '(Op (Cast _ (TWord %d)) %s)' % (lgwordsz, rhs))
                    print('Notation "x %s y" := (Op (%s (TWord %d)) (Pair %s %s)).' % (opn, op, lgwordsz, lhs, rhs))
>> *)
(*
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) y)).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) (Var y))).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) y)).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) (Var y))).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) y))).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) y))).
Notation "x * y" := (Op (Mul (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) y)).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) (Var y))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) y)).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) (Var y))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) y))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) y))).
Notation "x * y" := (Op (Mul (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) y)).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) (Var y))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) y)).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) (Var y))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) y))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) (Var y)))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) y))).
Notation "x * y" := (Op (Mul (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) y)).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) (Var y))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) y)).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) (Var y))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) y))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) y))).
Notation "x + y" := (Op (Add (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) y)).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) (Var y))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) y)).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) (Var y))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) y))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) y))).
Notation "x + y" := (Op (Add (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) y)).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) (Var y))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) y)).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) (Var y))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) y))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) (Var y)))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) y))).
Notation "x + y" := (Op (Add (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) (Var y)))).
*)
Notation "x >> y" := (Op (Shr) (Pair x y)).
Notation "x >> y" := (Op (Shr) (Pair (Var x) y)).
Notation "x >> y" := (Op (Shr) (Pair x (Var y))).
Notation "x >> y" := (Op (Shr) (Pair (Var x) (Var y))).
(*
Notation "x >> y" := (Op (Shr _) (Pair x (Op (Cast _ _) y))).
Notation "x >> y" := (Op (Shr _) (Pair (Var x) (Op (Cast _ _) y))).
Notation "x >> y" := (Op (Shr _) (Pair x (Op (Cast _ _) (Var y)))).
Notation "x >> y" := (Op (Shr _) (Pair (Var x) (Op (Cast _ _) (Var y)))).
*)
Notation "x & y" := (Op (Land) (Pair x y)).
Notation "x & y" := (Op (Land) (Pair (Var x) y)).
Notation "x & y" := (Op (Land) (Pair x (Var y))).
Notation "x & y" := (Op (Land) (Pair (Var x) (Var y))).
(*
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) y)).
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Op (Cast _ (TWord 5)) x) (Var y))).
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) y)).
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Op (Cast _ (TWord 5)) (Var x)) (Var y))).
Notation "x & y" := (Op (Land (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) y))).
Notation "x & y" := (Op (Land (TWord 5)) (Pair x (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) y))).
Notation "x & y" := (Op (Land (TWord 5)) (Pair (Var x) (Op (Cast _ (TWord 5)) (Var y)))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) y)).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Op (Cast _ (TWord 6)) x) (Var y))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) y)).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Op (Cast _ (TWord 6)) (Var x)) (Var y))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) y))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair x (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) y))).
Notation "x & y" := (Op (Land (TWord 6)) (Pair (Var x) (Op (Cast _ (TWord 6)) (Var y)))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) y)).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Op (Cast _ (TWord 7)) x) (Var y))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) y)).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Op (Cast _ (TWord 7)) (Var x)) (Var y))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) y))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair x (Op (Cast _ (TWord 7)) (Var y)))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) y))).
Notation "x & y" := (Op (Land (TWord 7)) (Pair (Var x) (Op (Cast _ (TWord 7)) (Var y)))).
*)
Notation Return x := (Var x).
Notation C_like := (Expr base_type op _).