import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
AP.16BE bad-mask cover interface.

AP.16BA proved one closed singleton membership theorem by enumerating every
non-GoodDirection mask and attaching one nonpositive-denominator witness to
each.  AP.16BD showed that the bad-mask complements have small Boolean cube
covers.  This module provides the small semantic interface that future
generated cube/Farkas leaves should target.

The interface is intentionally proof-valued.  It stores no generated arrays and
does not choose a particular cube representation.  A generated module may use a
Boolean mask cube, a denominator-cube Farkas certificate, or another local
language as `BadFamily`, as long as it proves that every member contradicts
`GoodDirectionAtRank` and that every mask outside the positive set belongs to
some bad family.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier

/--
A proof-valued cover of all masks that are not in a positive survivor set at a
fixed rank.

`BadFamily` is deliberately abstract.  For the next production attempt it
should be instantiated by Boolean mask cubes whose soundness is proved by exact
denominator-cube/Farkas witnesses.
-/
structure BadMaskCover (rank : Nat) (GoodMaskMember : SignMask -> Prop) where
  BadFamily : Type
  Member : BadFamily -> SignMask -> Prop
  notGood :
    forall {family : BadFamily} {mask : SignMask}
      (hlt : rank < numPairWords),
      Member family mask ->
        ¬ GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask
  complete :
    forall {mask : SignMask},
      ¬ GoodMaskMember mask ->
        exists family : BadFamily, Member family mask

/--
If all masks outside the positive survivor set are covered by families that
contradict `GoodDirectionAtRank`, then every `GoodDirectionAtRank` mask is in
the positive survivor set.
-/
theorem BadMaskCover.goodMaskMember_of_goodDirection
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : BadMaskCover rank GoodMaskMember)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :
    GoodMaskMember mask := by
  by_contra hnot
  rcases cover.complete hnot with ⟨family, hmember⟩
  exact cover.notGood hlt hmember hgood

/--
An erased theorem surface matching the AP.16AZ membership premise.
-/
def BadMaskCover.toMembershipPremise
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : BadMaskCover rank GoodMaskMember) :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask ->
        GoodMaskMember mask := by
  intro mask hlt hgood
  exact cover.goodMaskMember_of_goodDirection hlt hgood

theorem badMaskCover_builds : True := by
  trivial

end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
