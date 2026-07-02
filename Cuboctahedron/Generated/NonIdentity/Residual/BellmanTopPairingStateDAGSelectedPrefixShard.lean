import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSharedGainPrefixBucketSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke

/-!
First bounded state-DAG prefix shard for the top-pairing Bellman route.

This shard targets the first compact closed-terminal prefix selected by
`scripts/plan_top_pairing_state_dag_prefix_shard.py`.  It is still only a
bounded smoke: it proves that semantic constructor facts for the selected
state-DAG prefix feed `StateDAGPrefixClosedMarginFamily`, and then reuses the
existing Bellman eval-language socket.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixShard

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSharedGainPrefixBucketSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke

def selectedPrefixGap : Nat :=
  topPairingNextGap
    (topPairingNextGap
      (topPairingNextGap
        (topPairingNextGap
          (topPairingNextGap
            (topPairingNextGap
              (topPairingNextGap
                (topPairingNextGap
                  (topPairingNextGap 0 Face.xm)
                  Face.ym)
                Face.tmpm)
              Face.tppm)
            Face.tpmm)
          Face.tppp)
        Face.tmmm)
      Face.tpmp)
    Face.tmmp

def selectedPrefixLinear : Mat3 Rat :=
  topPairingNextLinear
    (topPairingNextLinear
      (topPairingNextLinear
        (topPairingNextLinear
          (topPairingNextLinear
            (topPairingNextLinear
              (topPairingNextLinear
                (topPairingNextLinear
                  (topPairingNextLinear (matId : Mat3 Rat) Face.xm)
                  Face.ym)
                Face.tmpm)
              Face.tppm)
            Face.tpmm)
          Face.tppp)
        Face.tmmm)
      Face.tpmp)
    Face.tmmp

theorem selectedPrefixGap_eq : selectedPrefixGap = 7 := by
  rfl

theorem selectedPrefix_tail_of_closed_labels
    {rank : Fin numPairWords}
    {rest : List Face}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hlabels :
      topPairingRankFaceLabels rank =
        Trace000001002Prefix ++ rest) :
    TopPairingTraceTail Trace000001002Prefix.length
      selectedPrefixGap selectedPrefixLinear rest := by
  have htail0 :
      TopPairingTraceTail 0 0 (matId : Mat3 Rat)
        (Trace000001002Prefix ++ rest) := by
    simpa [hlabels] using
      TopPairingTraceTail.ofClosedRank hclosed
  have htail1 := TopPairingTraceTail.cons_tail htail0
  have htail2 := TopPairingTraceTail.cons_tail htail1
  have htail3 := TopPairingTraceTail.cons_tail htail2
  have htail4 := TopPairingTraceTail.cons_tail htail3
  have htail5 := TopPairingTraceTail.cons_tail htail4
  have htail6 := TopPairingTraceTail.cons_tail htail5
  have htail7 := TopPairingTraceTail.cons_tail htail6
  have htail8 := TopPairingTraceTail.cons_tail htail7
  have htail9 := TopPairingTraceTail.cons_tail htail8
  simpa [Trace000001002Prefix, selectedPrefixGap, selectedPrefixLinear] using
    htail9

def SelectedPrefixShardFamily
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  TopPairingClosedLanguageAtRank rank Face.ym /\
    TopPairingActualFaceOmniAtRank rank /\
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym /\
        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
          (topPairingRankFaceLabels rank) /\
          (∃ rest : List Face,
            topPairingRankFaceLabels rank = Trace000001002Prefix ++ rest) /\
            scaledMargin rank <= (176 : Int) + (-376 : Int)

theorem stateDAGPrefixFamily_of_selectedPrefixShardFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixShardFamily scaledMargin rank) :
    StateDAGPrefixClosedMarginFamily
      Trace000001002Prefix selectedPrefixGap selectedPrefixLinear
      (-376) scaledMargin rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_, hmargin⟩
  exact
    ⟨rest, hlabels,
      selectedPrefix_tail_of_closed_labels hclosed hlabels⟩

theorem selectedPrefixShard_evalLanguage
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixShardFamily scaledMargin rank) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym :=
  evalLanguage_of_stateDAGPrefixFamily
    (allowedTraceId := Trace000001002Allowed)
    (pfx := Trace000001002Prefix)
    (gap := selectedPrefixGap)
    (linear := selectedPrefixLinear)
    (gain := (-376 : Int))
    trace000001002Prefix_gain
    (stateDAGPrefixFamily_of_selectedPrefixShardFamily hrank)

theorem selectedPrefixShard_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixShardFamily scaledMargin rank) :
    scaledMargin rank <= 0 :=
  stateDAGPrefixFamily_scaledMargin_nonpos
    (allowedTraceId := Trace000001002Allowed)
    (pfx := Trace000001002Prefix)
    (gap := selectedPrefixGap)
    (linear := selectedPrefixLinear)
    (gain := (-376 : Int))
    trace000001002Prefix_gain
    (stateDAGPrefixFamily_of_selectedPrefixShardFamily hrank)

theorem selected_prefix_shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixShard
