Require Import Crypto.Specific.Framework.RawCurveParameters.
Require Import Crypto.Util.LetIn.

(***
Modulus : 2^448-2^224-1
Base: 56
***)

Definition curve : CurveParameters :=
  {|
    sz := 8%nat;
    base := 56;
    bitwidth := 64;
    s := 2^448;
    c := [(1, 1); (2^224, 1)];
    carry_chains := Some [[3; 7]; [0; 4; 1; 5; 2; 6; 3; 7]; [4; 0]]%nat;

    a24 := None;
    coef_div_modulus := Some 2%nat;

    goldilocks := Some true;
    karatsuba := None;
    montgomery := false;
    freeze := Some false;
    ladderstep := false;

    mul_code := None;

    square_code := None;

    upper_bound_of_exponent_loose := None;
    upper_bound_of_exponent_tight := None;
    allowable_bit_widths := None;
    freeze_extra_allowable_bit_widths := None;
    modinv_fuel := None
  |}.

Ltac extra_prove_mul_eq _ := idtac.
Ltac extra_prove_square_eq _ := idtac.
