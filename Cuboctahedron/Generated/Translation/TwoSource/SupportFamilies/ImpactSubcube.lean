import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover

/-!
AP.16BK impact-subcube obstruction core.

AP.16BJ found that the AP16BF singleton bad-mask complement is covered by 20
Boolean subcubes, each killed by one internal impact denominator whose exact
Walsh form is nonpositive on the whole subcube.

This file provides the small semantic target for those generated leaves.  A
generated subcube proof only has to supply the subcube membership predicate and
the exact denominator nonpositivity theorem for its chosen impact; this module
then erases that fact to `BadMaskCover`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
namespace PositiveSurvivorClassifier
namespace ImpactSubcube

/--
A generated family whose members all have a nonpositive denominator at one
internal impact.
-/
structure ImpactSubcubeObstruction
    (rank : Nat) (Member : SignMask -> Prop) where
  impact : Impact15
  not_zero : impact ≠ (0 : Impact15)
  not_last : impact ≠ lastImpact
  nonpos :
    forall {mask : SignMask} (hlt : rank < numPairWords),
      Member mask ->
        impactDenomAtRank
          (⟨rank, hlt⟩ : Fin numPairWords) mask impact <= 0

theorem ImpactSubcubeObstruction.notGood
    {rank : Nat} {Member : SignMask -> Prop}
    (obstruction : ImpactSubcubeObstruction rank Member)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hmember : Member mask) :
    ¬ GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask :=
  not_goodDirectionAtRank_of_nonpositive_denom
    (r := (⟨rank, hlt⟩ : Fin numPairWords))
    (mask := mask)
    (i := obstruction.impact)
    obstruction.not_zero
    obstruction.not_last
    (obstruction.nonpos hlt hmember)

/--
A cover by impact subcubes.  This is the AP16BJ production-facing wrapper:
generated leaves can keep the concrete subcube family private and export this
object, then erase it to `BadMaskCover`.
-/
structure ImpactSubcubeCover
    (rank : Nat) (GoodMaskMember : SignMask -> Prop) where
  Family : Type
  Member : Family -> SignMask -> Prop
  obstruction :
    forall family : Family,
      ImpactSubcubeObstruction rank (Member family)
  complete :
    forall {mask : SignMask},
      ¬ GoodMaskMember mask ->
        exists family : Family, Member family mask

def ImpactSubcubeCover.toBadMaskCover
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : ImpactSubcubeCover rank GoodMaskMember) :
    BadMaskCover rank GoodMaskMember where
  BadFamily := cover.Family
  Member := cover.Member
  notGood := by
    intro family mask hlt hmember
    exact (cover.obstruction family).notGood hlt hmember
  complete := by
    intro mask hnot
    exact cover.complete hnot

theorem ImpactSubcubeCover.goodMaskMember_of_goodDirection
    {rank : Nat} {GoodMaskMember : SignMask -> Prop}
    (cover : ImpactSubcubeCover rank GoodMaskMember)
    {mask : SignMask} (hlt : rank < numPairWords)
    (hgood : GoodDirectionAtRank (⟨rank, hlt⟩ : Fin numPairWords) mask) :
    GoodMaskMember mask :=
  cover.toBadMaskCover.goodMaskMember_of_goodDirection hlt hgood

theorem impactSubcube_builds : True := by
  trivial

end ImpactSubcube
end PositiveSurvivorClassifier
end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies
