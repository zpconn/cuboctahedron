import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard000

open Cuboctahedron

private def terminalTrace_000 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_001 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_002 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_003 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_004 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_005 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_006 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmpp, Face.tmmm, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_007 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmpp, Face.tmmm, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_008 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmpp, Face.tmmm, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_009 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tpmp, Face.zm, Face.tppp, Face.tpmm, Face.tmpp, Face.zm, Face.tmmm, Face.yp, Face.xp]
private def terminalTrace_010 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmm, Face.tmpp, Face.tpmp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_011 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmm, Face.tmpp, Face.tpmp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_012 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmm, Face.tmpp, Face.tpmp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_013 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_014 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_015 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_016 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.zp, Face.tmmm, Face.zm, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_017 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmm, Face.zp, Face.tmpp, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_018 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmm, Face.zp, Face.tmpp, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_019 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmm, Face.zp, Face.tmpp, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
private def terminalTrace_020 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmmm, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_021 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmmm, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_022 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmmm, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_023 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.tppp, Face.zm, Face.tpmp, Face.tmpp, Face.tmmm, Face.zm, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_024 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm, Face.tpmm, Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tmmm, Face.yp, Face.xp]
private def terminalTrace_025 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tmmp, Face.zm, Face.tppp, Face.tpmm, Face.zp, Face.tmmm, Face.tmpm, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_026 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.tmmm, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_027 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.tmmm, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_028 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.tmmm, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_029 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_030 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmmp, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_031 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmmp, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_032 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.zm, Face.tmmp, Face.zm, Face.yp, Face.xp]
private def terminalTrace_033 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.yp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_034 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.yp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
private def terminalTrace_035 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.yp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
private def terminalTrace_036 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.zp, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
private def terminalTrace_037 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.zp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_038 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tppp, Face.zp, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def terminalTrace_039 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tmmp, Face.tpmm, Face.zm, Face.tmpm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_040 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tmmp, Face.tpmm, Face.zm, Face.tmpm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_041 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tmmp, Face.yp, Face.tpmp, Face.zm, Face.tmpp, Face.zp, Face.xp]
private def terminalTrace_042 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmpp, Face.zm, Face.tmmp, Face.zm, Face.yp, Face.xp]
private def terminalTrace_043 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.zp, Face.tpmm, Face.tmpm, Face.tmmp, Face.zm, Face.yp, Face.xp]
private def terminalTrace_044 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tmpp, Face.tmmm, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_045 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tmpp, Face.tmmm, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_046 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tmpp, Face.tmmm, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_047 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tppp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp]
private def terminalTrace_048 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tppp, Face.tmpp, Face.zm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_049 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tppp, Face.tmpp, Face.zm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_050 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.zm, Face.zp, Face.tppp, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_051 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.zp, Face.tmmp, Face.tmmm, Face.zm, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_052 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
private def terminalTrace_053 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.zp, Face.zm, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
private def terminalTrace_054 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
private def terminalTrace_055 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tmmp, Face.yp, Face.zp, Face.xp]
private def terminalTrace_056 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tmmp, Face.zp, Face.yp, Face.xp]
private def terminalTrace_057 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tmpm, Face.tpmm, Face.zp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
private def terminalTrace_058 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
private def terminalTrace_059 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
private def terminalTrace_060 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_061 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.zp, Face.yp, Face.xp]
private def terminalTrace_062 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
private def terminalTrace_063 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.zp, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]


private theorem trace_000_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_000 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_001_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_001 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_002_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_002 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_003_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_003 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_004_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_004 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_005_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_005 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_006_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_006 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_007_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_007 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_008_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_008 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_009_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_009 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_010_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_010 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_011_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_011 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_012_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_012 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_013_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_013 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_014_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_014 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_015_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_015 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_016_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_016 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_017_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_017 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_018_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_018 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_019_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_019 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_020_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_020 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_021_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_021 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_022_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_022 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_023_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_023 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_024_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_024 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_025_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_025 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_026_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_026 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_027_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_027 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_028_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_028 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_029_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_029 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_030_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_030 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_031_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_031 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_032_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_032 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_033_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_033 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_034_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_034 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_035_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_035 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_036_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_036 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_037_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_037 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_038_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_038 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_039_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_039 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_040_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_040 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_041_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_041 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_042_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_042 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_043_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_043 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_044_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_044 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_045_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_045 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_046_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_046 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_047_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_047 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_048_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_048 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_049_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_049 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_050_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_050 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_051_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_051 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_052_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_052 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_053_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_053 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_054_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_054 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_055_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_055 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_056_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_056 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_057_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_057 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_058_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_058 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_059_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_059 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_060_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_060 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_061_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_061 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_062_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_062 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_063_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_063 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_000
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_000 \/
    labels = terminalTrace_001 \/
    labels = terminalTrace_002 \/
    labels = terminalTrace_003 \/
    labels = terminalTrace_004 \/
    labels = terminalTrace_005 \/
    labels = terminalTrace_006 \/
    labels = terminalTrace_007 \/
    labels = terminalTrace_008 \/
    labels = terminalTrace_009 \/
    labels = terminalTrace_010 \/
    labels = terminalTrace_011 \/
    labels = terminalTrace_012 \/
    labels = terminalTrace_013 \/
    labels = terminalTrace_014 \/
    labels = terminalTrace_015 \/
    labels = terminalTrace_016 \/
    labels = terminalTrace_017 \/
    labels = terminalTrace_018 \/
    labels = terminalTrace_019 \/
    labels = terminalTrace_020 \/
    labels = terminalTrace_021 \/
    labels = terminalTrace_022 \/
    labels = terminalTrace_023 \/
    labels = terminalTrace_024 \/
    labels = terminalTrace_025 \/
    labels = terminalTrace_026 \/
    labels = terminalTrace_027 \/
    labels = terminalTrace_028 \/
    labels = terminalTrace_029 \/
    labels = terminalTrace_030 \/
    labels = terminalTrace_031 \/
    labels = terminalTrace_032 \/
    labels = terminalTrace_033 \/
    labels = terminalTrace_034 \/
    labels = terminalTrace_035 \/
    labels = terminalTrace_036 \/
    labels = terminalTrace_037 \/
    labels = terminalTrace_038 \/
    labels = terminalTrace_039 \/
    labels = terminalTrace_040 \/
    labels = terminalTrace_041 \/
    labels = terminalTrace_042 \/
    labels = terminalTrace_043 \/
    labels = terminalTrace_044 \/
    labels = terminalTrace_045 \/
    labels = terminalTrace_046 \/
    labels = terminalTrace_047 \/
    labels = terminalTrace_048 \/
    labels = terminalTrace_049 \/
    labels = terminalTrace_050 \/
    labels = terminalTrace_051 \/
    labels = terminalTrace_052 \/
    labels = terminalTrace_053 \/
    labels = terminalTrace_054 \/
    labels = terminalTrace_055 \/
    labels = terminalTrace_056 \/
    labels = terminalTrace_057 \/
    labels = terminalTrace_058 \/
    labels = terminalTrace_059 \/
    labels = terminalTrace_060 \/
    labels = terminalTrace_061 \/
    labels = terminalTrace_062 \/
    labels = terminalTrace_063) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_000_cancellation_ne hc
  · rw [h1] at hc
    exact trace_001_cancellation_ne hc
  · rw [h2] at hc
    exact trace_002_cancellation_ne hc
  · rw [h3] at hc
    exact trace_003_cancellation_ne hc
  · rw [h4] at hc
    exact trace_004_cancellation_ne hc
  · rw [h5] at hc
    exact trace_005_cancellation_ne hc
  · rw [h6] at hc
    exact trace_006_cancellation_ne hc
  · rw [h7] at hc
    exact trace_007_cancellation_ne hc
  · rw [h8] at hc
    exact trace_008_cancellation_ne hc
  · rw [h9] at hc
    exact trace_009_cancellation_ne hc
  · rw [h10] at hc
    exact trace_010_cancellation_ne hc
  · rw [h11] at hc
    exact trace_011_cancellation_ne hc
  · rw [h12] at hc
    exact trace_012_cancellation_ne hc
  · rw [h13] at hc
    exact trace_013_cancellation_ne hc
  · rw [h14] at hc
    exact trace_014_cancellation_ne hc
  · rw [h15] at hc
    exact trace_015_cancellation_ne hc
  · rw [h16] at hc
    exact trace_016_cancellation_ne hc
  · rw [h17] at hc
    exact trace_017_cancellation_ne hc
  · rw [h18] at hc
    exact trace_018_cancellation_ne hc
  · rw [h19] at hc
    exact trace_019_cancellation_ne hc
  · rw [h20] at hc
    exact trace_020_cancellation_ne hc
  · rw [h21] at hc
    exact trace_021_cancellation_ne hc
  · rw [h22] at hc
    exact trace_022_cancellation_ne hc
  · rw [h23] at hc
    exact trace_023_cancellation_ne hc
  · rw [h24] at hc
    exact trace_024_cancellation_ne hc
  · rw [h25] at hc
    exact trace_025_cancellation_ne hc
  · rw [h26] at hc
    exact trace_026_cancellation_ne hc
  · rw [h27] at hc
    exact trace_027_cancellation_ne hc
  · rw [h28] at hc
    exact trace_028_cancellation_ne hc
  · rw [h29] at hc
    exact trace_029_cancellation_ne hc
  · rw [h30] at hc
    exact trace_030_cancellation_ne hc
  · rw [h31] at hc
    exact trace_031_cancellation_ne hc
  · rw [h32] at hc
    exact trace_032_cancellation_ne hc
  · rw [h33] at hc
    exact trace_033_cancellation_ne hc
  · rw [h34] at hc
    exact trace_034_cancellation_ne hc
  · rw [h35] at hc
    exact trace_035_cancellation_ne hc
  · rw [h36] at hc
    exact trace_036_cancellation_ne hc
  · rw [h37] at hc
    exact trace_037_cancellation_ne hc
  · rw [h38] at hc
    exact trace_038_cancellation_ne hc
  · rw [h39] at hc
    exact trace_039_cancellation_ne hc
  · rw [h40] at hc
    exact trace_040_cancellation_ne hc
  · rw [h41] at hc
    exact trace_041_cancellation_ne hc
  · rw [h42] at hc
    exact trace_042_cancellation_ne hc
  · rw [h43] at hc
    exact trace_043_cancellation_ne hc
  · rw [h44] at hc
    exact trace_044_cancellation_ne hc
  · rw [h45] at hc
    exact trace_045_cancellation_ne hc
  · rw [h46] at hc
    exact trace_046_cancellation_ne hc
  · rw [h47] at hc
    exact trace_047_cancellation_ne hc
  · rw [h48] at hc
    exact trace_048_cancellation_ne hc
  · rw [h49] at hc
    exact trace_049_cancellation_ne hc
  · rw [h50] at hc
    exact trace_050_cancellation_ne hc
  · rw [h51] at hc
    exact trace_051_cancellation_ne hc
  · rw [h52] at hc
    exact trace_052_cancellation_ne hc
  · rw [h53] at hc
    exact trace_053_cancellation_ne hc
  · rw [h54] at hc
    exact trace_054_cancellation_ne hc
  · rw [h55] at hc
    exact trace_055_cancellation_ne hc
  · rw [h56] at hc
    exact trace_056_cancellation_ne hc
  · rw [h57] at hc
    exact trace_057_cancellation_ne hc
  · rw [h58] at hc
    exact trace_058_cancellation_ne hc
  · rw [h59] at hc
    exact trace_059_cancellation_ne hc
  · rw [h60] at hc
    exact trace_060_cancellation_ne hc
  · rw [h61] at hc
    exact trace_061_cancellation_ne hc
  · rw [h62] at hc
    exact trace_062_cancellation_ne hc
  · rw [h63] at hc
    exact trace_063_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard000
