import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard004

open Cuboctahedron

def terminalTrace_256 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp, Face.zm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_257 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp, Face.zm, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_258 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm, Face.tppp, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_259 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_260 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.zp, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_261 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tmmm, Face.zp, Face.tmpm, Face.tpmm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_262 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.tpmp, Face.tmmm, Face.tpmp, Face.tppp, Face.tmpp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_263 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_264 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.zm, Face.zp, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_265 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tmpm, Face.tpmm, Face.tmpp, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_266 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmmm, Face.tppm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_267 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_268 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.zm, Face.tppp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_269 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_270 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_271 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_272 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_273 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.zm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_274 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_275 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.zm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_276 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.zp, Face.tppp, Face.tmpm, Face.tpmm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_277 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.tpmp, Face.tmmm, Face.zp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_278 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.tppp, Face.zp, Face.tpmp, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_279 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_280 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_281 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_282 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_283 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_284 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tmpm, Face.yp, Face.zp, Face.xp]
def terminalTrace_285 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmmp, Face.tppp, Face.tmmm, Face.tmpm, Face.zp, Face.yp, Face.xp]
def terminalTrace_286 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmmp, Face.tppp, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_287 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmpm, Face.tmmp, Face.yp, Face.tppp, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_288 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmpm, Face.tmmp, Face.zp, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_289 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmpm, Face.tppp, Face.tmmm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_290 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmpm, Face.tppp, Face.tmmm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_291 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_292 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp, Face.tmmm, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_293 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp, Face.tmmm, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_294 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp, Face.tmmp, Face.yp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_295 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppp, Face.tmmp, Face.tmmm, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_296 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppp, Face.tmmp, Face.tmmm, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_297 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppp, Face.tmpm, Face.tmmp, Face.yp, Face.tppp, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_298 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppp, Face.tmpm, Face.zp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_299 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.tppp, Face.zm, Face.tpmp, Face.tmmp, Face.tppm, Face.tmpm, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_300 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tpmm, Face.zp, Face.tppm, Face.tpmp, Face.tmmm, Face.tpmp, Face.yp, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_301 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tpmp, Face.zm, Face.tmmp, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_302 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tmmp, Face.tpmm, Face.tpmp, Face.tmpm, Face.yp, Face.zp, Face.xp]
def terminalTrace_303 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tmmp, Face.tpmm, Face.tpmp, Face.tmpm, Face.zp, Face.yp, Face.xp]
def terminalTrace_304 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tmmp, Face.tpmp, Face.tmpm, Face.yp, Face.zp, Face.xp]
def terminalTrace_305 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tmmp, Face.tpmp, Face.tmpm, Face.zp, Face.yp, Face.xp]
def terminalTrace_306 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_307 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_308 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.yp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_309 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.zm, Face.tmpm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_310 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.zm, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_311 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tmmm, Face.tpmp, Face.tmpp, Face.tppm, Face.tmmp, Face.zm, Face.yp, Face.xp]
def terminalTrace_312 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tmmm, Face.tpmp, Face.zp, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_313 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_314 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmmp, Face.tmmm, Face.tmpm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_315 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpm, Face.tmmp, Face.yp, Face.tppp, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_316 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpm, Face.zp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_317 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmpm, Face.tpmm, Face.tmmm, Face.tmmp, Face.yp, Face.zp, Face.xp]
def terminalTrace_318 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmpm, Face.tpmm, Face.tmmm, Face.tmmp, Face.zp, Face.yp, Face.xp]
def terminalTrace_319 : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp, Face.tppm, Face.tmpm, Face.tpmm, Face.zp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]


private theorem trace_256_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_256 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_257_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_257 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_258_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_258 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_259_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_259 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_260_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_260 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_261_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_261 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_262_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_262 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_263_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_263 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_264_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_264 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_265_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_265 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_266_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_266 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_267_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_267 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_268_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_268 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_269_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_269 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_270_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_270 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_271_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_271 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_272_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_272 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_273_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_273 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_274_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_274 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_275_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_275 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_276_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_276 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_277_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_277 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_278_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_278 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_279_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_279 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_280_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_280 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_281_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_281 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_282_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_282 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_283_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_283 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_284_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_284 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_285_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_285 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_286_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_286 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_287_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_287 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_288_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_288 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_289_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_289 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_290_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_290 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_291_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_291 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_292_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_292 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_293_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_293 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_294_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_294 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_295_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_295 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_296_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_296 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_297_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_297 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_298_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_298 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_299_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_299 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_300_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_300 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_301_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_301 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_302_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_302 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_303_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_303 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_304_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_304 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_305_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_305 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_306_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_306 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_307_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_307 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_308_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_308 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_309_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_309 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_310_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_310 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_311_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_311 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_312_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_312 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_313_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_313 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_314_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_314 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_315_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_315 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_316_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_316 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_317_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_317 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_318_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_318 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_319_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_319 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_004
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_256 \/
    labels = terminalTrace_257 \/
    labels = terminalTrace_258 \/
    labels = terminalTrace_259 \/
    labels = terminalTrace_260 \/
    labels = terminalTrace_261 \/
    labels = terminalTrace_262 \/
    labels = terminalTrace_263 \/
    labels = terminalTrace_264 \/
    labels = terminalTrace_265 \/
    labels = terminalTrace_266 \/
    labels = terminalTrace_267 \/
    labels = terminalTrace_268 \/
    labels = terminalTrace_269 \/
    labels = terminalTrace_270 \/
    labels = terminalTrace_271 \/
    labels = terminalTrace_272 \/
    labels = terminalTrace_273 \/
    labels = terminalTrace_274 \/
    labels = terminalTrace_275 \/
    labels = terminalTrace_276 \/
    labels = terminalTrace_277 \/
    labels = terminalTrace_278 \/
    labels = terminalTrace_279 \/
    labels = terminalTrace_280 \/
    labels = terminalTrace_281 \/
    labels = terminalTrace_282 \/
    labels = terminalTrace_283 \/
    labels = terminalTrace_284 \/
    labels = terminalTrace_285 \/
    labels = terminalTrace_286 \/
    labels = terminalTrace_287 \/
    labels = terminalTrace_288 \/
    labels = terminalTrace_289 \/
    labels = terminalTrace_290 \/
    labels = terminalTrace_291 \/
    labels = terminalTrace_292 \/
    labels = terminalTrace_293 \/
    labels = terminalTrace_294 \/
    labels = terminalTrace_295 \/
    labels = terminalTrace_296 \/
    labels = terminalTrace_297 \/
    labels = terminalTrace_298 \/
    labels = terminalTrace_299 \/
    labels = terminalTrace_300 \/
    labels = terminalTrace_301 \/
    labels = terminalTrace_302 \/
    labels = terminalTrace_303 \/
    labels = terminalTrace_304 \/
    labels = terminalTrace_305 \/
    labels = terminalTrace_306 \/
    labels = terminalTrace_307 \/
    labels = terminalTrace_308 \/
    labels = terminalTrace_309 \/
    labels = terminalTrace_310 \/
    labels = terminalTrace_311 \/
    labels = terminalTrace_312 \/
    labels = terminalTrace_313 \/
    labels = terminalTrace_314 \/
    labels = terminalTrace_315 \/
    labels = terminalTrace_316 \/
    labels = terminalTrace_317 \/
    labels = terminalTrace_318 \/
    labels = terminalTrace_319) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_256_cancellation_ne hc
  · rw [h1] at hc
    exact trace_257_cancellation_ne hc
  · rw [h2] at hc
    exact trace_258_cancellation_ne hc
  · rw [h3] at hc
    exact trace_259_cancellation_ne hc
  · rw [h4] at hc
    exact trace_260_cancellation_ne hc
  · rw [h5] at hc
    exact trace_261_cancellation_ne hc
  · rw [h6] at hc
    exact trace_262_cancellation_ne hc
  · rw [h7] at hc
    exact trace_263_cancellation_ne hc
  · rw [h8] at hc
    exact trace_264_cancellation_ne hc
  · rw [h9] at hc
    exact trace_265_cancellation_ne hc
  · rw [h10] at hc
    exact trace_266_cancellation_ne hc
  · rw [h11] at hc
    exact trace_267_cancellation_ne hc
  · rw [h12] at hc
    exact trace_268_cancellation_ne hc
  · rw [h13] at hc
    exact trace_269_cancellation_ne hc
  · rw [h14] at hc
    exact trace_270_cancellation_ne hc
  · rw [h15] at hc
    exact trace_271_cancellation_ne hc
  · rw [h16] at hc
    exact trace_272_cancellation_ne hc
  · rw [h17] at hc
    exact trace_273_cancellation_ne hc
  · rw [h18] at hc
    exact trace_274_cancellation_ne hc
  · rw [h19] at hc
    exact trace_275_cancellation_ne hc
  · rw [h20] at hc
    exact trace_276_cancellation_ne hc
  · rw [h21] at hc
    exact trace_277_cancellation_ne hc
  · rw [h22] at hc
    exact trace_278_cancellation_ne hc
  · rw [h23] at hc
    exact trace_279_cancellation_ne hc
  · rw [h24] at hc
    exact trace_280_cancellation_ne hc
  · rw [h25] at hc
    exact trace_281_cancellation_ne hc
  · rw [h26] at hc
    exact trace_282_cancellation_ne hc
  · rw [h27] at hc
    exact trace_283_cancellation_ne hc
  · rw [h28] at hc
    exact trace_284_cancellation_ne hc
  · rw [h29] at hc
    exact trace_285_cancellation_ne hc
  · rw [h30] at hc
    exact trace_286_cancellation_ne hc
  · rw [h31] at hc
    exact trace_287_cancellation_ne hc
  · rw [h32] at hc
    exact trace_288_cancellation_ne hc
  · rw [h33] at hc
    exact trace_289_cancellation_ne hc
  · rw [h34] at hc
    exact trace_290_cancellation_ne hc
  · rw [h35] at hc
    exact trace_291_cancellation_ne hc
  · rw [h36] at hc
    exact trace_292_cancellation_ne hc
  · rw [h37] at hc
    exact trace_293_cancellation_ne hc
  · rw [h38] at hc
    exact trace_294_cancellation_ne hc
  · rw [h39] at hc
    exact trace_295_cancellation_ne hc
  · rw [h40] at hc
    exact trace_296_cancellation_ne hc
  · rw [h41] at hc
    exact trace_297_cancellation_ne hc
  · rw [h42] at hc
    exact trace_298_cancellation_ne hc
  · rw [h43] at hc
    exact trace_299_cancellation_ne hc
  · rw [h44] at hc
    exact trace_300_cancellation_ne hc
  · rw [h45] at hc
    exact trace_301_cancellation_ne hc
  · rw [h46] at hc
    exact trace_302_cancellation_ne hc
  · rw [h47] at hc
    exact trace_303_cancellation_ne hc
  · rw [h48] at hc
    exact trace_304_cancellation_ne hc
  · rw [h49] at hc
    exact trace_305_cancellation_ne hc
  · rw [h50] at hc
    exact trace_306_cancellation_ne hc
  · rw [h51] at hc
    exact trace_307_cancellation_ne hc
  · rw [h52] at hc
    exact trace_308_cancellation_ne hc
  · rw [h53] at hc
    exact trace_309_cancellation_ne hc
  · rw [h54] at hc
    exact trace_310_cancellation_ne hc
  · rw [h55] at hc
    exact trace_311_cancellation_ne hc
  · rw [h56] at hc
    exact trace_312_cancellation_ne hc
  · rw [h57] at hc
    exact trace_313_cancellation_ne hc
  · rw [h58] at hc
    exact trace_314_cancellation_ne hc
  · rw [h59] at hc
    exact trace_315_cancellation_ne hc
  · rw [h60] at hc
    exact trace_316_cancellation_ne hc
  · rw [h61] at hc
    exact trace_317_cancellation_ne hc
  · rw [h62] at hc
    exact trace_318_cancellation_ne hc
  · rw [h63] at hc
    exact trace_319_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard004
