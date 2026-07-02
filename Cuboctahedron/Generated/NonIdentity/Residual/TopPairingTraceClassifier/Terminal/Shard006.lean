import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard006

open Cuboctahedron

def terminalTrace_384 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_385 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_386 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_387 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp, Face.tmmm, Face.tmpm, Face.tpmp, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_388 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp, Face.tmmm, Face.tmpm, Face.tpmp, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_389 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tpmm, Face.tppp, Face.tppm, Face.tmpm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_390 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_391 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_392 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tmmm, Face.tpmp, Face.tppp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_393 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_394 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.yp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]


private theorem trace_384_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_384 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_385_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_385 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_386_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_386 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_387_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_387 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_388_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_388 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_389_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_389 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_390_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_390 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_391_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_391 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_392_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_392 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_393_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_393 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_394_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_394 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_006
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_384 \/
    labels = terminalTrace_385 \/
    labels = terminalTrace_386 \/
    labels = terminalTrace_387 \/
    labels = terminalTrace_388 \/
    labels = terminalTrace_389 \/
    labels = terminalTrace_390 \/
    labels = terminalTrace_391 \/
    labels = terminalTrace_392 \/
    labels = terminalTrace_393 \/
    labels = terminalTrace_394) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10
  · rw [h0] at hc
    exact trace_384_cancellation_ne hc
  · rw [h1] at hc
    exact trace_385_cancellation_ne hc
  · rw [h2] at hc
    exact trace_386_cancellation_ne hc
  · rw [h3] at hc
    exact trace_387_cancellation_ne hc
  · rw [h4] at hc
    exact trace_388_cancellation_ne hc
  · rw [h5] at hc
    exact trace_389_cancellation_ne hc
  · rw [h6] at hc
    exact trace_390_cancellation_ne hc
  · rw [h7] at hc
    exact trace_391_cancellation_ne hc
  · rw [h8] at hc
    exact trace_392_cancellation_ne hc
  · rw [h9] at hc
    exact trace_393_cancellation_ne hc
  · rw [h10] at hc
    exact trace_394_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard006
