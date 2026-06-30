import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke

/-!
Generated split compact-Walsh cover root.

This rank `413` root imports one obstruction module per selected
subcube and proves only the finite mask-completeness wrapper.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Smoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Public positive-survivor mask predicate for this generated rank fixture. -/
def generatedGoodMaskMember (mask : SignMask) : Prop :=
  mask.val = 5 \/
    mask.val = 7 \/
    mask.val = 9 \/
    mask.val = 22 \/
    mask.val = 24 \/
    mask.val = 30 \/
    mask.val = 54

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
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember mask
  | .s001, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedSubcubeMember mask
  | .s002, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedSubcubeMember mask
  | .s003, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedSubcubeMember mask
  | .s004, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedSubcubeMember mask
  | .s005, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedSubcubeMember mask
  | .s006, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedSubcubeMember mask
  | .s007, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedSubcubeMember mask
  | .s008, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedSubcubeMember mask
  | .s009, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedSubcubeMember mask
  | .s010, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedSubcubeMember mask
  | .s011, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedSubcubeMember mask
  | .s012, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedSubcubeMember mask
  | .s013, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedSubcubeMember mask
  | .s014, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedSubcubeMember mask
  | .s015, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedSubcubeMember mask
  | .s016, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedSubcubeMember mask
  | .s017, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedSubcubeMember mask
  | .s018, mask =>
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedSubcubeMember mask

private def generatedObstruction :
    (cube : GeneratedCompactSubcube) ->
      ImpactSubcubeObstruction 413 (generatedSubcubeMember cube)
  | .s000 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedNonpos hlt hmember
    }
  | .s001 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedNonpos hlt hmember
    }
  | .s002 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedNonpos hlt hmember
    }
  | .s003 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedNonpos hlt hmember
    }
  | .s004 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedNonpos hlt hmember
    }
  | .s005 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedNonpos hlt hmember
    }
  | .s006 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedNonpos hlt hmember
    }
  | .s007 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedNonpos hlt hmember
    }
  | .s008 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedNonpos hlt hmember
    }
  | .s009 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedNonpos hlt hmember
    }
  | .s010 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedNonpos hlt hmember
    }
  | .s011 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedNonpos hlt hmember
    }
  | .s012 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedNonpos hlt hmember
    }
  | .s013 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedNonpos hlt hmember
    }
  | .s014 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedNonpos hlt hmember
    }
  | .s015 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedNonpos hlt hmember
    }
  | .s016 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedNonpos hlt hmember
    }
  | .s017 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedNonpos hlt hmember
    }
  | .s018 => {
      impact := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedImpact
      not_zero := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedImpact_not_zero
      not_last := Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedImpact_not_last
      nonpos := by
        intro mask hlt hmember
        exact Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedNonpos hlt hmember
    }

private theorem generatedSubcube_complete
    {mask : SignMask}
    (hnot : ¬ generatedGoodMaskMember mask) :
    exists cube : GeneratedCompactSubcube, generatedSubcubeMember cube mask := by
  fin_cases mask
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s013, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube013Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s014, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube014Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s007, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube007Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s011, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube011Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s004, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube004Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s016, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube016Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s005, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube005Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s012, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s009, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube009Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s001, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube001Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s017, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube017Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s015, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube015Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s008, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube008Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s010, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube010Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact False.elim (hnot (by simp [generatedGoodMaskMember]))
  · exact ⟨.s006, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube006Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s000, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube000Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s012, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube012Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s002, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube002Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s018, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube018Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩
  · exact ⟨.s003, by
      intro bit
      cases bit <;> simp [generatedSubcubeMember, Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedSubcubeMember,
        Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Subcube003Smoke.generatedCube, MaskSubcube.Member, SignBit.toPairId,
        maskBitForPair]⟩

private def generatedImpactSubcubeCover :
    ImpactSubcubeCover 413 generatedGoodMaskMember where
  Family := GeneratedCompactSubcube
  Member := generatedSubcubeMember
  obstruction := generatedObstruction
  complete := by
    intro mask hnot
    exact generatedSubcube_complete hnot

theorem generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes
    {mask : SignMask} (hlt : 413 < numPairWords)
    (hgood : GoodDirectionAtRank (⟨413, hlt⟩ : Fin numPairWords) mask) :
    generatedGoodMaskMember mask :=
  generatedImpactSubcubeCover.goodMaskMember_of_goodDirection hlt hgood

theorem splitCompactWalshCoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank413Smoke
