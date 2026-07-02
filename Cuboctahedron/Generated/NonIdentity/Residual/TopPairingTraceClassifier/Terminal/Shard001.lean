import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard001

open Cuboctahedron

def terminalTrace_064 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmp, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_065 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_066 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_067 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_068 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.zm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_069 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tpmp, Face.tmpp, Face.yp, Face.tppp, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_070 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_071 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmpm, Face.tmmp, Face.zm, Face.yp, Face.xp]
def terminalTrace_072 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm, Face.yp, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_073 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tppp, Face.zm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_074 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tppp, Face.zm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_075 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tpmm, Face.tmpm, Face.tmmp, Face.zm, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_076 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tpmm, Face.tmpm, Face.tppp, Face.tmmm, Face.tmmp, Face.zm, Face.yp, Face.xp]
def terminalTrace_077 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.tpmm, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_078 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tmmp, Face.tpmm, Face.tmpm, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_079 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_080 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_081 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_082 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tppp, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_083 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tpmm, Face.tpmp, Face.tppp, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_084 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tpmm, Face.tpmp, Face.tppp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_085 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tpmm, Face.tpmp, Face.tppp, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_086 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tpmm, Face.tppp, Face.tpmm, Face.tmpm, Face.tmmp, Face.zm, Face.yp, Face.xp]
def terminalTrace_087 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.tmmm, Face.zm, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_088 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmmp, Face.tmpp, Face.tmpm, Face.zm, Face.yp, Face.xp]
def terminalTrace_089 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmmp, Face.zm, Face.tmpm, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_090 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.tpmp, Face.tpmm, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_091 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.tpmp, Face.tpmm, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_092 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.tpmp, Face.tpmm, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_093 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.zm, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_094 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.tppp, Face.zm, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_095 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.zp, Face.tppp, Face.tpmm, Face.tmpm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_096 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tmmm, Face.zp, Face.tppp, Face.tpmm, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_097 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_098 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_099 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_100 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.zp, Face.tppp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_101 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.tpmp, Face.zm, Face.tmmp, Face.tpmm, Face.tmpp, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_102 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tmmm, Face.tpmm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_103 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_104 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_105 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tmmp, Face.tpmm, Face.tmpm, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_106 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_107 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_108 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_109 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.zp, Face.zm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_110 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp, Face.zp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_111 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp, Face.tppp, Face.zm, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_112 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp, Face.zp, Face.tppp, Face.tmmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_113 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp, Face.zp, Face.tppp, Face.tmmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_114 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tpmp, Face.zp, Face.tppp, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_115 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_116 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.zp, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_117 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp, Face.tpmm, Face.tmmp, Face.zm, Face.tpmp, Face.yp, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_118 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.tppp, Face.tpmm, Face.zm, Face.tmmp, Face.tppm, Face.tmpm, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_119 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_120 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_121 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_122 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_123 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_124 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tpmm, Face.zp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_125 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tpmm, Face.tpmp, Face.zp, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_126 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tpmm, Face.tpmp, Face.zp, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_127 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tmmp, Face.tpmp, Face.zm, Face.tmpp, Face.yp, Face.xp]


private theorem trace_064_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_064 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_065_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_065 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_066_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_066 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_067_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_067 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_068_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_068 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_069_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_069 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_070_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_070 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_071_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_071 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_072_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_072 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_073_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_073 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_074_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_074 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_075_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_075 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_076_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_076 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_077_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_077 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_078_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_078 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_079_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_079 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_080_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_080 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_081_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_081 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_082_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_082 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_083_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_083 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_084_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_084 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_085_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_085 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_086_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_086 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_087_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_087 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_088_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_088 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_089_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_089 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_090_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_090 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_091_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_091 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_092_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_092 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_093_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_093 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_094_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_094 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_095_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_095 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_096_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_096 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_097_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_097 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_098_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_098 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_099_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_099 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_100_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_100 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_101_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_101 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_102_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_102 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_103_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_103 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_104_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_104 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_105_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_105 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_106_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_106 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_107_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_107 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_108_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_108 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_109_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_109 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_110_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_110 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_111_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_111 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_112_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_112 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_113_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_113 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_114_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_114 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_115_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_115 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_116_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_116 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_117_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_117 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_118_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_118 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_119_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_119 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_120_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_120 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_121_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_121 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_122_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_122 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_123_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_123 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_124_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_124 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_125_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_125 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_126_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_126 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_127_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_127 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_001
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_064 \/
    labels = terminalTrace_065 \/
    labels = terminalTrace_066 \/
    labels = terminalTrace_067 \/
    labels = terminalTrace_068 \/
    labels = terminalTrace_069 \/
    labels = terminalTrace_070 \/
    labels = terminalTrace_071 \/
    labels = terminalTrace_072 \/
    labels = terminalTrace_073 \/
    labels = terminalTrace_074 \/
    labels = terminalTrace_075 \/
    labels = terminalTrace_076 \/
    labels = terminalTrace_077 \/
    labels = terminalTrace_078 \/
    labels = terminalTrace_079 \/
    labels = terminalTrace_080 \/
    labels = terminalTrace_081 \/
    labels = terminalTrace_082 \/
    labels = terminalTrace_083 \/
    labels = terminalTrace_084 \/
    labels = terminalTrace_085 \/
    labels = terminalTrace_086 \/
    labels = terminalTrace_087 \/
    labels = terminalTrace_088 \/
    labels = terminalTrace_089 \/
    labels = terminalTrace_090 \/
    labels = terminalTrace_091 \/
    labels = terminalTrace_092 \/
    labels = terminalTrace_093 \/
    labels = terminalTrace_094 \/
    labels = terminalTrace_095 \/
    labels = terminalTrace_096 \/
    labels = terminalTrace_097 \/
    labels = terminalTrace_098 \/
    labels = terminalTrace_099 \/
    labels = terminalTrace_100 \/
    labels = terminalTrace_101 \/
    labels = terminalTrace_102 \/
    labels = terminalTrace_103 \/
    labels = terminalTrace_104 \/
    labels = terminalTrace_105 \/
    labels = terminalTrace_106 \/
    labels = terminalTrace_107 \/
    labels = terminalTrace_108 \/
    labels = terminalTrace_109 \/
    labels = terminalTrace_110 \/
    labels = terminalTrace_111 \/
    labels = terminalTrace_112 \/
    labels = terminalTrace_113 \/
    labels = terminalTrace_114 \/
    labels = terminalTrace_115 \/
    labels = terminalTrace_116 \/
    labels = terminalTrace_117 \/
    labels = terminalTrace_118 \/
    labels = terminalTrace_119 \/
    labels = terminalTrace_120 \/
    labels = terminalTrace_121 \/
    labels = terminalTrace_122 \/
    labels = terminalTrace_123 \/
    labels = terminalTrace_124 \/
    labels = terminalTrace_125 \/
    labels = terminalTrace_126 \/
    labels = terminalTrace_127) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_064_cancellation_ne hc
  · rw [h1] at hc
    exact trace_065_cancellation_ne hc
  · rw [h2] at hc
    exact trace_066_cancellation_ne hc
  · rw [h3] at hc
    exact trace_067_cancellation_ne hc
  · rw [h4] at hc
    exact trace_068_cancellation_ne hc
  · rw [h5] at hc
    exact trace_069_cancellation_ne hc
  · rw [h6] at hc
    exact trace_070_cancellation_ne hc
  · rw [h7] at hc
    exact trace_071_cancellation_ne hc
  · rw [h8] at hc
    exact trace_072_cancellation_ne hc
  · rw [h9] at hc
    exact trace_073_cancellation_ne hc
  · rw [h10] at hc
    exact trace_074_cancellation_ne hc
  · rw [h11] at hc
    exact trace_075_cancellation_ne hc
  · rw [h12] at hc
    exact trace_076_cancellation_ne hc
  · rw [h13] at hc
    exact trace_077_cancellation_ne hc
  · rw [h14] at hc
    exact trace_078_cancellation_ne hc
  · rw [h15] at hc
    exact trace_079_cancellation_ne hc
  · rw [h16] at hc
    exact trace_080_cancellation_ne hc
  · rw [h17] at hc
    exact trace_081_cancellation_ne hc
  · rw [h18] at hc
    exact trace_082_cancellation_ne hc
  · rw [h19] at hc
    exact trace_083_cancellation_ne hc
  · rw [h20] at hc
    exact trace_084_cancellation_ne hc
  · rw [h21] at hc
    exact trace_085_cancellation_ne hc
  · rw [h22] at hc
    exact trace_086_cancellation_ne hc
  · rw [h23] at hc
    exact trace_087_cancellation_ne hc
  · rw [h24] at hc
    exact trace_088_cancellation_ne hc
  · rw [h25] at hc
    exact trace_089_cancellation_ne hc
  · rw [h26] at hc
    exact trace_090_cancellation_ne hc
  · rw [h27] at hc
    exact trace_091_cancellation_ne hc
  · rw [h28] at hc
    exact trace_092_cancellation_ne hc
  · rw [h29] at hc
    exact trace_093_cancellation_ne hc
  · rw [h30] at hc
    exact trace_094_cancellation_ne hc
  · rw [h31] at hc
    exact trace_095_cancellation_ne hc
  · rw [h32] at hc
    exact trace_096_cancellation_ne hc
  · rw [h33] at hc
    exact trace_097_cancellation_ne hc
  · rw [h34] at hc
    exact trace_098_cancellation_ne hc
  · rw [h35] at hc
    exact trace_099_cancellation_ne hc
  · rw [h36] at hc
    exact trace_100_cancellation_ne hc
  · rw [h37] at hc
    exact trace_101_cancellation_ne hc
  · rw [h38] at hc
    exact trace_102_cancellation_ne hc
  · rw [h39] at hc
    exact trace_103_cancellation_ne hc
  · rw [h40] at hc
    exact trace_104_cancellation_ne hc
  · rw [h41] at hc
    exact trace_105_cancellation_ne hc
  · rw [h42] at hc
    exact trace_106_cancellation_ne hc
  · rw [h43] at hc
    exact trace_107_cancellation_ne hc
  · rw [h44] at hc
    exact trace_108_cancellation_ne hc
  · rw [h45] at hc
    exact trace_109_cancellation_ne hc
  · rw [h46] at hc
    exact trace_110_cancellation_ne hc
  · rw [h47] at hc
    exact trace_111_cancellation_ne hc
  · rw [h48] at hc
    exact trace_112_cancellation_ne hc
  · rw [h49] at hc
    exact trace_113_cancellation_ne hc
  · rw [h50] at hc
    exact trace_114_cancellation_ne hc
  · rw [h51] at hc
    exact trace_115_cancellation_ne hc
  · rw [h52] at hc
    exact trace_116_cancellation_ne hc
  · rw [h53] at hc
    exact trace_117_cancellation_ne hc
  · rw [h54] at hc
    exact trace_118_cancellation_ne hc
  · rw [h55] at hc
    exact trace_119_cancellation_ne hc
  · rw [h56] at hc
    exact trace_120_cancellation_ne hc
  · rw [h57] at hc
    exact trace_121_cancellation_ne hc
  · rw [h58] at hc
    exact trace_122_cancellation_ne hc
  · rw [h59] at hc
    exact trace_123_cancellation_ne hc
  · rw [h60] at hc
    exact trace_124_cancellation_ne hc
  · rw [h61] at hc
    exact trace_125_cancellation_ne hc
  · rw [h62] at hc
    exact trace_126_cancellation_ne hc
  · rw [h63] at hc
    exact trace_127_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard001
