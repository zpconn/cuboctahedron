import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge

/-!
Memory-safe bridge for separating GoodDirection membership from semantic row facts.

The failed DU.9AT direct rank smoke imported the compact-Walsh
`GoodDirection -> generatedGoodMaskMember` proof and also recomputed semantic
row facts in the same generated module.  This file splits those obligations:

* one generated shard may prove that every `GoodDirectionAtRank` survivor in an
  identity range belongs to a small member predicate;
* another generated shard may prove that membership in that predicate gives
  row-property semantic coverage.

The two proofs can then be composed by a tiny Prop-level theorem.  In
particular, semantic row shards no longer need to import the heavy denominator
cover modules.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyAllGoodBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient

/-- A small generated mask/rank predicate contains every GoodDirection survivor
in an identity-linear range. -/
abbrev GoodMaskMembershipOnIdentityRange
    (Member : Nat -> SignMask -> Prop) (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨r, hlt⟩ mask ->
            Member r mask

/-- The generated member predicate carries semantic row-property coverage over
the same identity-linear range. -/
abbrev RowPropertyMemberSemanticCoverageOnIdentityRange
    (Member : Nat -> SignMask -> Prop) (lo hi : Nat) : Prop :=
  forall (r : Nat) (hlt : r < numPairWords) (mask : SignMask),
    lo <= r ->
      r < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) = (matId : Mat3 Rat) ->
          Member r mask ->
            RowPropertyParametricCovered r mask

/-- Compose separated GoodDirection membership and semantic row coverage into
the existing direct row-property coverage surface. -/
theorem RowPropertyMemberSemanticCoverageOnIdentityRange.to_parametricCoverage
    {Member : Nat -> SignMask -> Prop} {lo hi : Nat}
    (hmember : GoodMaskMembershipOnIdentityRange Member lo hi)
    (hsemantic : RowPropertyMemberSemanticCoverageOnIdentityRange Member lo hi) :
    RowPropertyParametricCoverageOnIdentityRange lo hi := by
  intro r hlt mask hlo hhi hM hgood
  exact hsemantic r hlt mask hlo hhi hM
    (hmember r hlt mask hlo hhi hM hgood)

/-- Compose separated GoodDirection membership and semantic row coverage all the
way to the public all-Good translation coverage target. -/
theorem RowPropertyMemberSemanticCoverageOnIdentityRange.to_allGoodCoverage
    {Member : Nat -> SignMask -> Prop} {lo hi : Nat}
    (hmember : GoodMaskMembershipOnIdentityRange Member lo hi)
    (hsemantic : RowPropertyMemberSemanticCoverageOnIdentityRange Member lo hi) :
    AllTranslationGoodCoverageOnRange lo hi :=
  RowPropertyParametricCoverageOnIdentityRange.to_allGoodCoverage
    (RowPropertyMemberSemanticCoverageOnIdentityRange.to_parametricCoverage
      hmember hsemantic)

theorem rowPropertyMemberBridge_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyMemberBridge
