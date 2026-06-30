import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke

/-!
Generated split compact-Walsh cover root.

This rank `657` root imports one obstruction module per selected
subcube and proves only the finite mask-completeness wrapper.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Public positive-survivor mask predicate for this generated rank fixture. -/
def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 16 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 28 \/
    mask.val = 29 \/
    mask.val = 31 \/
    mask.val = 41 \/
    mask.val = 47 \/
    mask.val = 55 \/
    mask.val = 63

private inductive GeneratedCompactSubcube
  | s000
  | s001
  | s002
  | s003
  | s004
  | s005
  | s006
  | s007
  | s008
  | s009
  | s010
  | s011
  | s012
  | s013
  | s014
  | s015
  | s016
  | s017
  | s018
  | s019
  | s020
  | s021
deriving DecidableEq, Repr

private def generatedSubcubeMember : GeneratedCompactSubcube -> SignMask -> Prop
  | .s000, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember mask
  | .s001, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedSubcubeMember mask
  | .s002, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedSubcubeMember mask
  | .s003, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedSubcubeMember mask
  | .s004, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedSubcubeMember mask
  | .s005, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedSubcubeMember mask
  | .s006, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedSubcubeMember mask
  | .s007, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedSubcubeMember mask
  | .s008, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedSubcubeMember mask
  | .s009, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedSubcubeMember mask
  | .s010, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedSubcubeMember mask
  | .s011, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedSubcubeMember mask
  | .s012, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedSubcubeMember mask
  | .s013, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedSubcubeMember mask
  | .s014, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedSubcubeMember mask
  | .s015, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedSubcubeMember mask
  | .s016, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedSubcubeMember mask
  | .s017, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedSubcubeMember mask
  | .s018, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedSubcubeMember mask
  | .s019, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedSubcubeMember mask
  | .s020, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedSubcubeMember mask
  | .s021, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedSubcubeMember mask

private theorem generatedSubcube_notGood
    (cube : GeneratedCompactSubcube)
    {mask : SignMask}
    (hlt : 657 < numPairWords)
    (hmember : generatedSubcubeMember cube mask) :
    ¬ GoodDirectionAtRank (⟨657, hlt⟩ : Fin numPairWords) mask := by
  cases cube
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨657, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedNonpos hlt hmember)

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s014, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube014Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s018, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube018Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s015, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube015Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s013, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube013Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s019, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube019Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s021, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube021Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s016, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube016Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s012, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube012Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s020, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube020Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s017, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube017Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Subcube011Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
theorem generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    {mask : SignMask} (hlt : 657 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨657, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask := by
  by_contra hnot
  rcases generatedSubcube_complete hnot with ⟨cube, hmember⟩
  exact generatedSubcube_notGood cube hlt hmember hgood

theorem splitCompactWalshCoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke
