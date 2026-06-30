import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke

/-!
Generated split compact-Walsh cover root.

This rank `840` root imports one obstruction module per selected
subcube and proves only the finite mask-completeness wrapper.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Public positive-survivor mask predicate for this generated rank fixture. -/
def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 8 \/
    mask.val = 13 \/
    mask.val = 16 \/
    mask.val = 18 \/
    mask.val = 24 \/
    mask.val = 29 \/
    mask.val = 30 \/
    mask.val = 31 \/
    mask.val = 45 \/
    mask.val = 47 \/
    mask.val = 54 \/
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
deriving DecidableEq, Repr

private def generatedSubcubeMember : GeneratedCompactSubcube -> SignMask -> Prop
  | .s000, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember mask
  | .s001, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedSubcubeMember mask
  | .s002, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedSubcubeMember mask
  | .s003, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedSubcubeMember mask
  | .s004, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedSubcubeMember mask
  | .s005, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedSubcubeMember mask
  | .s006, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedSubcubeMember mask
  | .s007, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedSubcubeMember mask
  | .s008, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedSubcubeMember mask
  | .s009, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedSubcubeMember mask
  | .s010, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedSubcubeMember mask
  | .s011, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedSubcubeMember mask
  | .s012, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedSubcubeMember mask
  | .s013, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedSubcubeMember mask
  | .s014, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedSubcubeMember mask
  | .s015, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedSubcubeMember mask
  | .s016, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedSubcubeMember mask
  | .s017, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedSubcubeMember mask
  | .s018, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedSubcubeMember mask

private theorem generatedSubcube_notGood
    (cube : GeneratedCompactSubcube)
    {mask : SignMask}
    (hlt : 840 < numPairWords)
    (hmember : generatedSubcubeMember cube mask) :
    ¬ GoodDirectionAtRank (⟨840, hlt⟩ : Fin numPairWords) mask := by
  cases cube
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedNonpos hlt hmember)
  · exact not_goodDirectionAtRank_of_nonpositive_denom
      (r := (⟨840, hlt⟩ : Fin numPairWords))
      (mask := mask)
      (i := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedImpact)
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedImpact_not_zero
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedImpact_not_last
      (Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedNonpos hlt hmember)

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s017, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube017Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s013, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube013Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s014, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube014Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s016, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube016Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube011Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s015, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube015Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s012, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube012Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s018, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube018Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
theorem generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    {mask : SignMask} (hlt : 840 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨840, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask := by
  by_contra hnot
  rcases generatedSubcube_complete hnot with ⟨cube, hmember⟩
  exact generatedSubcube_notGood cube hlt hmember hgood

theorem splitCompactWalshCoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank840Smoke
