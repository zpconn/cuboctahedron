import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcube

/-!
AP.16BM Walsh/subcube bound core.

AP.16BL validated the `ImpactSubcubeCover` theorem surface, but its generated
subcube nonpositivity proofs still split over concrete masks.  This module is
the next reusable layer: it packages a denominator as a Walsh polynomial in the
six translation sign bits and proves that termwise upper bounds over a Boolean
subcube imply denominator nonpositivity over the whole subcube.

The core deliberately does not compute a bound from coefficients.  Generated
or hand-written leaves may prove sharper term bounds however they like, and
this file handles the trusted summation and `GoodDirection` contradiction.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

open scoped BigOperators

/-- The six non-`x` translation mask variables. -/
inductive SignBit
  | y | z | d111 | d11m | d1m1 | dm11
deriving DecidableEq, Repr

def SignBit.toPairId : SignBit -> PairId
  | SignBit.y => PairId.y
  | SignBit.z => PairId.z
  | SignBit.d111 => PairId.d111
  | SignBit.d11m => PairId.d11m
  | SignBit.d1m1 => PairId.d1m1
  | SignBit.dm11 => PairId.dm11

def SignBit.value (mask : SignMask) (bit : SignBit) : Rat :=
  if maskBitForPair mask bit.toPairId then 1 else -1

/--
A Boolean subcube.  `none` leaves a bit free; `some b` fixes that bit to `b`.
-/
structure MaskSubcube where
  fixed : SignBit -> Option Bool

def MaskSubcube.Member (cube : MaskSubcube) (mask : SignMask) : Prop :=
  forall bit : SignBit,
    match cube.fixed bit with
    | none => True
    | some value => maskBitForPair mask bit.toPairId = value

/-- A Walsh monomial of degree at most two. -/
structure WalshMonomial where
  fst : Option SignBit
  snd : Option SignBit
deriving Repr

def WalshMonomial.factorValue (mask : SignMask) : Option SignBit -> Rat
  | none => 1
  | some bit => SignBit.value mask bit

def WalshMonomial.eval (monomial : WalshMonomial) (mask : SignMask) : Rat :=
  WalshMonomial.factorValue mask monomial.fst *
    WalshMonomial.factorValue mask monomial.snd

structure WalshTerm where
  coeff : Rat
  monomial : WalshMonomial
deriving Repr

def WalshTerm.eval (term : WalshTerm) (mask : SignMask) : Rat :=
  term.coeff * term.monomial.eval mask

structure WalshPoly (n : Nat) where
  term : Fin n -> WalshTerm

def WalshPoly.eval {n : Nat} (poly : WalshPoly n) (mask : SignMask) : Rat :=
  Finset.univ.sum fun i => (poly.term i).eval mask

/--
Termwise upper bounds for a Walsh polynomial over a Boolean subcube.

This is the small proof-carrying object that replaces AP16BL's mask-by-mask
subcube proof.  A generated leaf supplies one bound per polynomial term and
proves the term sound over the subcube; this structure proves the summed
polynomial is nonpositive.
-/
structure WalshSubcubeUpperBound
    {n : Nat} (cube : MaskSubcube) (poly : WalshPoly n) where
  bound : Fin n -> Rat
  term_le :
    forall i : Fin n, forall {mask : SignMask},
      cube.Member mask -> (poly.term i).eval mask <= bound i
  total_nonpos : (Finset.univ.sum fun i => bound i) <= 0

theorem WalshSubcubeUpperBound.eval_le_bound
    {n : Nat} {cube : MaskSubcube} {poly : WalshPoly n}
    (upper : WalshSubcubeUpperBound cube poly)
    {mask : SignMask} (hmask : cube.Member mask) :
    poly.eval mask <= Finset.univ.sum fun i => upper.bound i := by
  unfold WalshPoly.eval
  exact Finset.sum_le_sum (fun i _ => upper.term_le i hmask)

theorem WalshSubcubeUpperBound.eval_nonpos
    {n : Nat} {cube : MaskSubcube} {poly : WalshPoly n}
    (upper : WalshSubcubeUpperBound cube poly)
    {mask : SignMask} (hmask : cube.Member mask) :
    poly.eval mask <= 0 :=
  le_trans (upper.eval_le_bound hmask) upper.total_nonpos

/--
An impact-denominator obstruction proved through a Walsh polynomial over a
Boolean subcube.
-/
structure WalshImpactObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  impact : Impact15
  not_zero : impact ≠ (0 : Impact15)
  not_last : impact ≠ lastImpact
  cube : MaskSubcube
  member_cube :
    forall {mask : SignMask}, Member mask -> cube.Member mask
  arity : Nat
  poly : WalshPoly arity
  upper : WalshSubcubeUpperBound cube poly
  denom_eq :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        impactDenomAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask impact =
            poly.eval mask

theorem WalshImpactObstruction.nonpos
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WalshImpactObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    impactDenomAtRank
      (⟨rank, hlt⟩ : Fin numPairWords) mask obstruction.impact <= 0 := by
  rw [obstruction.denom_eq hlt hmember]
  exact obstruction.upper.eval_nonpos (obstruction.member_cube hmember)

def WalshImpactObstruction.toImpactSubcubeObstruction
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : WalshImpactObstruction rank Member) :
    ImpactSubcubeObstruction rank Member where
  impact := obstruction.impact
  not_zero := obstruction.not_zero
  not_last := obstruction.not_last
  nonpos := by
    intro mask hlt hmember
    exact obstruction.nonpos hlt hmember

theorem impactSubcubeWalsh_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
