import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCases

/-!
Semantic label equalities for the graph-147 target-tail cases.

This file is deliberately tiny: it only records that a graph147 semantic object
whose `rest` is one of the two target tails has one of the four corresponding
full face-label lists.  Future margin or start-violation producers can consume
these equalities without reintroducing sampled ranks, accepted trace IDs,
selected-prefix covers, exact affine RHS keys, or raw graph paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailLabels

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

def graph147YpZmTargetTailZpLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm] ++ graph147TargetTailZp

def graph147YpZmTargetTailTmmpLabels : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm] ++ graph147TargetTailTmmp

def graph147ZmYpTargetTailZpLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp] ++ graph147TargetTailZp

def graph147ZmYpTargetTailTmmpLabels : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp] ++ graph147TargetTailTmmp

theorem graph147YpZm_labels_eq_targetTailZp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    topPairingRankFaceLabels obj.rank =
      graph147YpZmTargetTailZpLabels := by
  have hlabels :
      topPairingRankFaceLabels obj.rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ obj.rest := by
    simpa [Depth11Layer4PrefixAtRank] using obj.branchPrefix
  rw [hlabels, hrest]
  rfl

theorem graph147YpZm_labels_eq_targetTailTmmp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    topPairingRankFaceLabels obj.rank =
      graph147YpZmTargetTailTmmpLabels := by
  have hlabels :
      topPairingRankFaceLabels obj.rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ obj.rest := by
    simpa [Depth11Layer4PrefixAtRank] using obj.branchPrefix
  rw [hlabels, hrest]
  rfl

theorem graph147ZmYp_labels_eq_targetTailZp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    topPairingRankFaceLabels obj.rank =
      graph147ZmYpTargetTailZpLabels := by
  have hlabels :
      topPairingRankFaceLabels obj.rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ obj.rest := by
    simpa [Depth11Layer4PrefixAtRank] using obj.branchPrefix
  rw [hlabels, hrest]
  rfl

theorem graph147ZmYp_labels_eq_targetTailTmmp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    topPairingRankFaceLabels obj.rank =
      graph147ZmYpTargetTailTmmpLabels := by
  have hlabels :
      topPairingRankFaceLabels obj.rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ obj.rest := by
    simpa [Depth11Layer4PrefixAtRank] using obj.branchPrefix
  rw [hlabels, hrest]
  rfl

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailLabels
