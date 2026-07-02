import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard005

open Cuboctahedron

def terminalTrace_320 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_321 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_322 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.yp, Face.zp, Face.xp]
def terminalTrace_323 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.zp, Face.yp, Face.xp]
def terminalTrace_324 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
def terminalTrace_325 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]
def terminalTrace_326 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmp, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_327 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_328 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_329 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_330 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.zm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_331 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.zm, Face.tpmp, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_332 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.zm, Face.tpmp, Face.tppm, Face.tmmp, Face.tmmm, Face.tmpm, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_333 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_334 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tmmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_335 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_336 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_337 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_338 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tpmp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_339 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmpm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_340 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.zp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_341 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tmpm, Face.tpmm, Face.tmpp, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_342 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_343 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_344 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tpmp, Face.zm, Face.tppp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_345 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_346 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_347 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_348 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_349 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.zm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_350 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_351 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.zm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_352 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tmmp, Face.zp, Face.tppp, Face.tmpm, Face.tpmm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_353 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.tpmp, Face.tmmm, Face.zp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_354 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.tppp, Face.zp, Face.tpmp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_355 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_356 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_357 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tmmm, Face.tpmp, Face.tppp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_358 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_359 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.yp, Face.zp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_360 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_361 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_362 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_363 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_364 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tpmp, Face.tpmm, Face.tppp, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_365 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tmmm, Face.tpmm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_366 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_367 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_368 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tmmp, Face.tpmm, Face.tmpm, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_369 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_370 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_371 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_372 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_373 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tmmm, Face.tpmm, Face.tmmp, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_374 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_375 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_376 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_377 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_378 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_379 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.tpmm, Face.tppp, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_380 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_381 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_382 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_383 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp, Face.tmpm, Face.tppp, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]


private theorem trace_320_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_320 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_321_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_321 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_322_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_322 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_323_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_323 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_324_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_324 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_325_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_325 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_326_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_326 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_327_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_327 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_328_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_328 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_329_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_329 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_330_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_330 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_331_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_331 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_332_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_332 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_333_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_333 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_334_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_334 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_335_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_335 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_336_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_336 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_337_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_337 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_338_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_338 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_339_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_339 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_340_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_340 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_341_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_341 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_342_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_342 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_343_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_343 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_344_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_344 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_345_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_345 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_346_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_346 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_347_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_347 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_348_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_348 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_349_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_349 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_350_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_350 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_351_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_351 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_352_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_352 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_353_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_353 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_354_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_354 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_355_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_355 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_356_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_356 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_357_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_357 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_358_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_358 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_359_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_359 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_360_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_360 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_361_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_361 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_362_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_362 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_363_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_363 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_364_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_364 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_365_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_365 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_366_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_366 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_367_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_367 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_368_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_368 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_369_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_369 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_370_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_370 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_371_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_371 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_372_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_372 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_373_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_373 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_374_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_374 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_375_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_375 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_376_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_376 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_377_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_377 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_378_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_378 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_379_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_379 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_380_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_380 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_381_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_381 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_382_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_382 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_383_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_383 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_005
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_320 \/
    labels = terminalTrace_321 \/
    labels = terminalTrace_322 \/
    labels = terminalTrace_323 \/
    labels = terminalTrace_324 \/
    labels = terminalTrace_325 \/
    labels = terminalTrace_326 \/
    labels = terminalTrace_327 \/
    labels = terminalTrace_328 \/
    labels = terminalTrace_329 \/
    labels = terminalTrace_330 \/
    labels = terminalTrace_331 \/
    labels = terminalTrace_332 \/
    labels = terminalTrace_333 \/
    labels = terminalTrace_334 \/
    labels = terminalTrace_335 \/
    labels = terminalTrace_336 \/
    labels = terminalTrace_337 \/
    labels = terminalTrace_338 \/
    labels = terminalTrace_339 \/
    labels = terminalTrace_340 \/
    labels = terminalTrace_341 \/
    labels = terminalTrace_342 \/
    labels = terminalTrace_343 \/
    labels = terminalTrace_344 \/
    labels = terminalTrace_345 \/
    labels = terminalTrace_346 \/
    labels = terminalTrace_347 \/
    labels = terminalTrace_348 \/
    labels = terminalTrace_349 \/
    labels = terminalTrace_350 \/
    labels = terminalTrace_351 \/
    labels = terminalTrace_352 \/
    labels = terminalTrace_353 \/
    labels = terminalTrace_354 \/
    labels = terminalTrace_355 \/
    labels = terminalTrace_356 \/
    labels = terminalTrace_357 \/
    labels = terminalTrace_358 \/
    labels = terminalTrace_359 \/
    labels = terminalTrace_360 \/
    labels = terminalTrace_361 \/
    labels = terminalTrace_362 \/
    labels = terminalTrace_363 \/
    labels = terminalTrace_364 \/
    labels = terminalTrace_365 \/
    labels = terminalTrace_366 \/
    labels = terminalTrace_367 \/
    labels = terminalTrace_368 \/
    labels = terminalTrace_369 \/
    labels = terminalTrace_370 \/
    labels = terminalTrace_371 \/
    labels = terminalTrace_372 \/
    labels = terminalTrace_373 \/
    labels = terminalTrace_374 \/
    labels = terminalTrace_375 \/
    labels = terminalTrace_376 \/
    labels = terminalTrace_377 \/
    labels = terminalTrace_378 \/
    labels = terminalTrace_379 \/
    labels = terminalTrace_380 \/
    labels = terminalTrace_381 \/
    labels = terminalTrace_382 \/
    labels = terminalTrace_383) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_320_cancellation_ne hc
  · rw [h1] at hc
    exact trace_321_cancellation_ne hc
  · rw [h2] at hc
    exact trace_322_cancellation_ne hc
  · rw [h3] at hc
    exact trace_323_cancellation_ne hc
  · rw [h4] at hc
    exact trace_324_cancellation_ne hc
  · rw [h5] at hc
    exact trace_325_cancellation_ne hc
  · rw [h6] at hc
    exact trace_326_cancellation_ne hc
  · rw [h7] at hc
    exact trace_327_cancellation_ne hc
  · rw [h8] at hc
    exact trace_328_cancellation_ne hc
  · rw [h9] at hc
    exact trace_329_cancellation_ne hc
  · rw [h10] at hc
    exact trace_330_cancellation_ne hc
  · rw [h11] at hc
    exact trace_331_cancellation_ne hc
  · rw [h12] at hc
    exact trace_332_cancellation_ne hc
  · rw [h13] at hc
    exact trace_333_cancellation_ne hc
  · rw [h14] at hc
    exact trace_334_cancellation_ne hc
  · rw [h15] at hc
    exact trace_335_cancellation_ne hc
  · rw [h16] at hc
    exact trace_336_cancellation_ne hc
  · rw [h17] at hc
    exact trace_337_cancellation_ne hc
  · rw [h18] at hc
    exact trace_338_cancellation_ne hc
  · rw [h19] at hc
    exact trace_339_cancellation_ne hc
  · rw [h20] at hc
    exact trace_340_cancellation_ne hc
  · rw [h21] at hc
    exact trace_341_cancellation_ne hc
  · rw [h22] at hc
    exact trace_342_cancellation_ne hc
  · rw [h23] at hc
    exact trace_343_cancellation_ne hc
  · rw [h24] at hc
    exact trace_344_cancellation_ne hc
  · rw [h25] at hc
    exact trace_345_cancellation_ne hc
  · rw [h26] at hc
    exact trace_346_cancellation_ne hc
  · rw [h27] at hc
    exact trace_347_cancellation_ne hc
  · rw [h28] at hc
    exact trace_348_cancellation_ne hc
  · rw [h29] at hc
    exact trace_349_cancellation_ne hc
  · rw [h30] at hc
    exact trace_350_cancellation_ne hc
  · rw [h31] at hc
    exact trace_351_cancellation_ne hc
  · rw [h32] at hc
    exact trace_352_cancellation_ne hc
  · rw [h33] at hc
    exact trace_353_cancellation_ne hc
  · rw [h34] at hc
    exact trace_354_cancellation_ne hc
  · rw [h35] at hc
    exact trace_355_cancellation_ne hc
  · rw [h36] at hc
    exact trace_356_cancellation_ne hc
  · rw [h37] at hc
    exact trace_357_cancellation_ne hc
  · rw [h38] at hc
    exact trace_358_cancellation_ne hc
  · rw [h39] at hc
    exact trace_359_cancellation_ne hc
  · rw [h40] at hc
    exact trace_360_cancellation_ne hc
  · rw [h41] at hc
    exact trace_361_cancellation_ne hc
  · rw [h42] at hc
    exact trace_362_cancellation_ne hc
  · rw [h43] at hc
    exact trace_363_cancellation_ne hc
  · rw [h44] at hc
    exact trace_364_cancellation_ne hc
  · rw [h45] at hc
    exact trace_365_cancellation_ne hc
  · rw [h46] at hc
    exact trace_366_cancellation_ne hc
  · rw [h47] at hc
    exact trace_367_cancellation_ne hc
  · rw [h48] at hc
    exact trace_368_cancellation_ne hc
  · rw [h49] at hc
    exact trace_369_cancellation_ne hc
  · rw [h50] at hc
    exact trace_370_cancellation_ne hc
  · rw [h51] at hc
    exact trace_371_cancellation_ne hc
  · rw [h52] at hc
    exact trace_372_cancellation_ne hc
  · rw [h53] at hc
    exact trace_373_cancellation_ne hc
  · rw [h54] at hc
    exact trace_374_cancellation_ne hc
  · rw [h55] at hc
    exact trace_375_cancellation_ne hc
  · rw [h56] at hc
    exact trace_376_cancellation_ne hc
  · rw [h57] at hc
    exact trace_377_cancellation_ne hc
  · rw [h58] at hc
    exact trace_378_cancellation_ne hc
  · rw [h59] at hc
    exact trace_379_cancellation_ne hc
  · rw [h60] at hc
    exact trace_380_cancellation_ne hc
  · rw [h61] at hc
    exact trace_381_cancellation_ne hc
  · rw [h62] at hc
    exact trace_382_cancellation_ne hc
  · rw [h63] at hc
    exact trace_383_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard005
