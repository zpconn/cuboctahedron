import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseSocket

/-!
Scaled-margin socket for the graph-147 target-tail cases.

The target-tail case socket reduces graph147 production to four semantic
object-tail bounds.  This module records the deterministic evaluator gain for
the two concrete graph147 tails.  A future producer can therefore prove the
four object-tail bounds by proving the semantic scaled-margin inequality
`scaledMargin obj.rank <= -376` for each branch/tail case.

No rank table, sampled path, selected-prefix id, accepted trace, affine key, or
stored path is introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseMarginSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

def Graph147RankedEvalTailGain
    (tail : List Face) (expectedGain : Int) : Prop :=
  ∀ {finish :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {gain : Int},
    evalLabelStepFn graph147RankedEvalNext
        graph147RankedPrefix4EvalState tail =
      some (finish, gain) ->
    gain = expectedGain

def Graph147RankedEvalTargetTailZpGain : Prop :=
  Graph147RankedEvalTailGain graph147TargetTailZp (-499 : Int)

def Graph147RankedEvalTargetTailTmmpGain : Prop :=
  Graph147RankedEvalTailGain graph147TargetTailTmmp (-499 : Int)

/-! Diagnostic note: these two gain facts are true by direct evaluation of the
ranked evaluator.  They remain proof-carrying fields of the producer contract
instead of being reduced in this socket, so this adapter stays small and does
not become a hidden Boolean checker. -/

private theorem graph147TargetTailZp_rankedEval_gain
    (hgain : Graph147RankedEvalTargetTailZpGain)
    {finish :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {gain : Int}
    (heval :
      evalLabelStepFn graph147RankedEvalNext
          graph147RankedPrefix4EvalState graph147TargetTailZp =
        some (finish, gain)) :
    gain = (-499 : Int) :=
  hgain heval

private theorem graph147TargetTailTmmp_rankedEval_gain
    (hgain : Graph147RankedEvalTargetTailTmmpGain)
    {finish :
      TopPairingTransducerEvalState StrengthenedClosedEvalState}
    {gain : Int}
    (heval :
      evalLabelStepFn graph147RankedEvalNext
          graph147RankedPrefix4EvalState graph147TargetTailTmmp =
        some (finish, gain)) :
    gain = (-499 : Int) :=
  hgain heval

def Graph147YpZmRankedEvalTailCaseScaledMarginBound
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (tail : List Face) (bound : Int) : Prop :=
  ∀ obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace,
    obj.rest = tail ->
      scaledMargin obj.rank <= bound

def Graph147ZmYpRankedEvalTailCaseScaledMarginBound
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (tail : List Face) (bound : Int) : Prop :=
  ∀ obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace,
    obj.rest = tail ->
      scaledMargin obj.rank <= bound

structure StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tailZpGain :
    Graph147RankedEvalTargetTailZpGain
  tailTmmpGain :
    Graph147RankedEvalTargetTailTmmpGain
  yp_zm_zp :
    Graph147YpZmRankedEvalTailCaseScaledMarginBound
      sequenceBadFace scaledMargin graph147TargetTailZp (-376 : Int)
  yp_zm_tmmp :
    Graph147YpZmRankedEvalTailCaseScaledMarginBound
      sequenceBadFace scaledMargin graph147TargetTailTmmp (-376 : Int)
  zm_yp_zp :
    Graph147ZmYpRankedEvalTailCaseScaledMarginBound
      sequenceBadFace scaledMargin graph147TargetTailZp (-376 : Int)
  zm_yp_tmmp :
    Graph147ZmYpRankedEvalTailCaseScaledMarginBound
      sequenceBadFace scaledMargin graph147TargetTailTmmp (-376 : Int)

private theorem marginBound_of_scaledMargin_le_tailZp
    (hgain : Graph147RankedEvalTargetTailZpGain)
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hscaled : scaledMargin obj.rank <= (-376 : Int))
    (hrest : obj.rest = graph147TargetTailZp) :
    Graph147YpZmRankedEvalMarginObj.marginBound scaledMargin obj := by
  intro finish gain heval
  have hgain' := graph147TargetTailZp_rankedEval_gain hgain
    (by simpa [hrest] using heval)
  simpa [hgain'] using hscaled

private theorem marginBound_of_scaledMargin_le_tailTmmp
    (hgain : Graph147RankedEvalTargetTailTmmpGain)
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hscaled : scaledMargin obj.rank <= (-376 : Int))
    (hrest : obj.rest = graph147TargetTailTmmp) :
    Graph147YpZmRankedEvalMarginObj.marginBound scaledMargin obj := by
  intro finish gain heval
  have hgain' := graph147TargetTailTmmp_rankedEval_gain hgain
    (by simpa [hrest] using heval)
  simpa [hgain'] using hscaled

private theorem zm_yp_marginBound_of_scaledMargin_le_tailZp
    (hgain : Graph147RankedEvalTargetTailZpGain)
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hscaled : scaledMargin obj.rank <= (-376 : Int))
    (hrest : obj.rest = graph147TargetTailZp) :
    Graph147ZmYpRankedEvalMarginObj.marginBound scaledMargin obj := by
  intro finish gain heval
  have hgain' := graph147TargetTailZp_rankedEval_gain hgain
    (by simpa [hrest] using heval)
  simpa [hgain'] using hscaled

private theorem zm_yp_marginBound_of_scaledMargin_le_tailTmmp
    (hgain : Graph147RankedEvalTargetTailTmmpGain)
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hscaled : scaledMargin obj.rank <= (-376 : Int))
    (hrest : obj.rest = graph147TargetTailTmmp) :
    Graph147ZmYpRankedEvalMarginObj.marginBound scaledMargin obj := by
  intro finish gain heval
  have hgain' := graph147TargetTailTmmp_rankedEval_gain hgain
    (by simpa [hrest] using heval)
  simpa [hgain'] using hscaled

def targetTailCaseFamily_of_scaledMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalTargetTailCaseFamily
      scaledMargin sequenceBadFace where
  yp_zm_zp := by
    intro obj hrest
    exact marginBound_of_scaledMargin_le_tailZp hfamily.tailZpGain obj
      (hfamily.yp_zm_zp obj hrest) hrest
  yp_zm_tmmp := by
    intro obj hrest
    exact marginBound_of_scaledMargin_le_tailTmmp hfamily.tailTmmpGain obj
      (hfamily.yp_zm_tmmp obj hrest) hrest
  zm_yp_zp := by
    intro obj hrest
    exact zm_yp_marginBound_of_scaledMargin_le_tailZp hfamily.tailZpGain obj
      (hfamily.zm_yp_zp obj hrest) hrest
  zm_yp_tmmp := by
    intro obj hrest
    exact zm_yp_marginBound_of_scaledMargin_le_tailTmmp hfamily.tailTmmpGain obj
      (hfamily.zm_yp_tmmp obj hrest) hrest

def rankedEvalTargetTailObjectFamily_of_scaledMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalTargetTailObjectFamily
      scaledMargin sequenceBadFace :=
  rankedEvalTargetTailObjectFamily_of_tailCaseFamily
    (targetTailCaseFamily_of_scaledMarginFamily hfamily)

def rankedEvalMarginBundle_of_scaledMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace :=
  rankedEvalMarginBundle_of_tailCaseFamily
    (targetTailCaseFamily_of_scaledMarginFamily hfamily)

def rootMarginBundle_of_scaledMarginFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseScaledMarginFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_tailCaseFamily
    (targetTailCaseFamily_of_scaledMarginFamily hfamily)

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseMarginSocket
