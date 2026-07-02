import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard003

open Cuboctahedron

def terminalTrace_192 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp, Face.tppp, Face.tmpm, Face.tpmp, Face.tppm, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_193 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp, Face.zm, Face.tmpm, Face.tpmp, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_194 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_195 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_196 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmm, Face.tmpm, Face.tpmp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_197 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tmmp, Face.tpmm, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_198 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tmmp, Face.tpmm, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_199 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_200 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_201 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tmpm, Face.tpmm, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_202 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_203 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_204 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tpmm, Face.zm, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_205 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.tpmm, Face.zm, Face.zp, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_206 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.zm, Face.tmpp, Face.tpmp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_207 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.tpmp, Face.zm, Face.tpmp, Face.tmpp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_208 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.zm, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_209 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.zm, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_210 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tppp, Face.tppm, Face.zm, Face.tpmm, Face.tpmp, Face.zp, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_211 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tpmp, Face.tppm, Face.zp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tmmm, Face.tmmp, Face.xp]
def terminalTrace_212 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm, Face.tppp, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_213 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_214 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm, Face.tppp, Face.tpmm, Face.tpmp, Face.zp, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_215 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppm, Face.zp, Face.tmpm, Face.tpmm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_216 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp, Face.tpmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.tmmp, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_217 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.tppp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_218 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp, Face.tpmm, Face.tmpm, Face.tpmp, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_219 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp, Face.tpmp, Face.tmpm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_220 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.zm, Face.zp, Face.tpmp, Face.tppp, Face.tpmm, Face.tppm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_221 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm, Face.tpmm, Face.tmpm, Face.tpmp, Face.tmpp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_222 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm, Face.tpmp, Face.tmpm, Face.tpmm, Face.tmpp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_223 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tmpp, Face.tmpm, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_224 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_225 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.tmmm, Face.tpmp, Face.tppp, Face.tpmm, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_226 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm, Face.tppp, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_227 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm, Face.tppp, Face.tpmm, Face.tmpp, Face.tpmp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_228 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tmmp, Face.zm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmpp, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_229 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.tpmp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_230 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tppp, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_231 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmmp, Face.tppp, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_232 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmmp, Face.tmpp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_233 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmpp, Face.tppm, Face.zm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_234 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tmpp, Face.zm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_235 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_236 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_237 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.tppp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_238 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tmpm, Face.zp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_239 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.tmmp, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_240 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.tmmp, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_241 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_242 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.tmpp, Face.tpmp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_243 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.zp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_244 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.tppp, Face.zp, Face.zm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_245 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.zp, Face.tmmm, Face.tppm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_246 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.zp, Face.tmpp, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_247 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.zp, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_248 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tpmp, Face.zp, Face.zm, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_249 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_250 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpm, Face.tpmp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_251 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.tppp, Face.tmpm, Face.tpmp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_252 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.zp, Face.tmpm, Face.tpmp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_253 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_254 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.tmmm, Face.zp, Face.zm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_255 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tppm, Face.tpmm, Face.zp, Face.tmmm, Face.tpmp, Face.tppp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]


private theorem trace_192_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_192 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_193_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_193 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_194_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_194 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_195_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_195 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_196_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_196 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_197_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_197 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_198_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_198 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_199_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_199 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_200_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_200 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_201_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_201 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_202_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_202 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_203_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_203 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_204_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_204 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_205_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_205 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_206_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_206 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_207_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_207 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_208_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_208 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_209_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_209 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_210_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_210 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_211_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_211 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_212_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_212 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_213_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_213 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_214_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_214 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_215_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_215 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_216_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_216 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_217_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_217 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_218_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_218 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_219_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_219 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_220_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_220 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_221_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_221 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_222_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_222 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_223_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_223 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_224_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_224 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_225_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_225 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_226_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_226 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_227_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_227 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_228_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_228 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_229_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_229 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_230_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_230 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_231_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_231 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_232_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_232 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_233_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_233 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_234_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_234 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_235_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_235 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_236_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_236 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_237_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_237 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_238_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_238 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_239_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_239 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_240_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_240 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_241_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_241 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_242_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_242 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_243_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_243 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_244_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_244 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_245_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_245 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_246_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_246 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_247_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_247 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_248_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_248 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_249_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_249 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_250_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_250 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_251_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_251 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_252_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_252 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_253_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_253 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_254_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_254 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_255_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_255 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_003
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_192 \/
    labels = terminalTrace_193 \/
    labels = terminalTrace_194 \/
    labels = terminalTrace_195 \/
    labels = terminalTrace_196 \/
    labels = terminalTrace_197 \/
    labels = terminalTrace_198 \/
    labels = terminalTrace_199 \/
    labels = terminalTrace_200 \/
    labels = terminalTrace_201 \/
    labels = terminalTrace_202 \/
    labels = terminalTrace_203 \/
    labels = terminalTrace_204 \/
    labels = terminalTrace_205 \/
    labels = terminalTrace_206 \/
    labels = terminalTrace_207 \/
    labels = terminalTrace_208 \/
    labels = terminalTrace_209 \/
    labels = terminalTrace_210 \/
    labels = terminalTrace_211 \/
    labels = terminalTrace_212 \/
    labels = terminalTrace_213 \/
    labels = terminalTrace_214 \/
    labels = terminalTrace_215 \/
    labels = terminalTrace_216 \/
    labels = terminalTrace_217 \/
    labels = terminalTrace_218 \/
    labels = terminalTrace_219 \/
    labels = terminalTrace_220 \/
    labels = terminalTrace_221 \/
    labels = terminalTrace_222 \/
    labels = terminalTrace_223 \/
    labels = terminalTrace_224 \/
    labels = terminalTrace_225 \/
    labels = terminalTrace_226 \/
    labels = terminalTrace_227 \/
    labels = terminalTrace_228 \/
    labels = terminalTrace_229 \/
    labels = terminalTrace_230 \/
    labels = terminalTrace_231 \/
    labels = terminalTrace_232 \/
    labels = terminalTrace_233 \/
    labels = terminalTrace_234 \/
    labels = terminalTrace_235 \/
    labels = terminalTrace_236 \/
    labels = terminalTrace_237 \/
    labels = terminalTrace_238 \/
    labels = terminalTrace_239 \/
    labels = terminalTrace_240 \/
    labels = terminalTrace_241 \/
    labels = terminalTrace_242 \/
    labels = terminalTrace_243 \/
    labels = terminalTrace_244 \/
    labels = terminalTrace_245 \/
    labels = terminalTrace_246 \/
    labels = terminalTrace_247 \/
    labels = terminalTrace_248 \/
    labels = terminalTrace_249 \/
    labels = terminalTrace_250 \/
    labels = terminalTrace_251 \/
    labels = terminalTrace_252 \/
    labels = terminalTrace_253 \/
    labels = terminalTrace_254 \/
    labels = terminalTrace_255) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_192_cancellation_ne hc
  · rw [h1] at hc
    exact trace_193_cancellation_ne hc
  · rw [h2] at hc
    exact trace_194_cancellation_ne hc
  · rw [h3] at hc
    exact trace_195_cancellation_ne hc
  · rw [h4] at hc
    exact trace_196_cancellation_ne hc
  · rw [h5] at hc
    exact trace_197_cancellation_ne hc
  · rw [h6] at hc
    exact trace_198_cancellation_ne hc
  · rw [h7] at hc
    exact trace_199_cancellation_ne hc
  · rw [h8] at hc
    exact trace_200_cancellation_ne hc
  · rw [h9] at hc
    exact trace_201_cancellation_ne hc
  · rw [h10] at hc
    exact trace_202_cancellation_ne hc
  · rw [h11] at hc
    exact trace_203_cancellation_ne hc
  · rw [h12] at hc
    exact trace_204_cancellation_ne hc
  · rw [h13] at hc
    exact trace_205_cancellation_ne hc
  · rw [h14] at hc
    exact trace_206_cancellation_ne hc
  · rw [h15] at hc
    exact trace_207_cancellation_ne hc
  · rw [h16] at hc
    exact trace_208_cancellation_ne hc
  · rw [h17] at hc
    exact trace_209_cancellation_ne hc
  · rw [h18] at hc
    exact trace_210_cancellation_ne hc
  · rw [h19] at hc
    exact trace_211_cancellation_ne hc
  · rw [h20] at hc
    exact trace_212_cancellation_ne hc
  · rw [h21] at hc
    exact trace_213_cancellation_ne hc
  · rw [h22] at hc
    exact trace_214_cancellation_ne hc
  · rw [h23] at hc
    exact trace_215_cancellation_ne hc
  · rw [h24] at hc
    exact trace_216_cancellation_ne hc
  · rw [h25] at hc
    exact trace_217_cancellation_ne hc
  · rw [h26] at hc
    exact trace_218_cancellation_ne hc
  · rw [h27] at hc
    exact trace_219_cancellation_ne hc
  · rw [h28] at hc
    exact trace_220_cancellation_ne hc
  · rw [h29] at hc
    exact trace_221_cancellation_ne hc
  · rw [h30] at hc
    exact trace_222_cancellation_ne hc
  · rw [h31] at hc
    exact trace_223_cancellation_ne hc
  · rw [h32] at hc
    exact trace_224_cancellation_ne hc
  · rw [h33] at hc
    exact trace_225_cancellation_ne hc
  · rw [h34] at hc
    exact trace_226_cancellation_ne hc
  · rw [h35] at hc
    exact trace_227_cancellation_ne hc
  · rw [h36] at hc
    exact trace_228_cancellation_ne hc
  · rw [h37] at hc
    exact trace_229_cancellation_ne hc
  · rw [h38] at hc
    exact trace_230_cancellation_ne hc
  · rw [h39] at hc
    exact trace_231_cancellation_ne hc
  · rw [h40] at hc
    exact trace_232_cancellation_ne hc
  · rw [h41] at hc
    exact trace_233_cancellation_ne hc
  · rw [h42] at hc
    exact trace_234_cancellation_ne hc
  · rw [h43] at hc
    exact trace_235_cancellation_ne hc
  · rw [h44] at hc
    exact trace_236_cancellation_ne hc
  · rw [h45] at hc
    exact trace_237_cancellation_ne hc
  · rw [h46] at hc
    exact trace_238_cancellation_ne hc
  · rw [h47] at hc
    exact trace_239_cancellation_ne hc
  · rw [h48] at hc
    exact trace_240_cancellation_ne hc
  · rw [h49] at hc
    exact trace_241_cancellation_ne hc
  · rw [h50] at hc
    exact trace_242_cancellation_ne hc
  · rw [h51] at hc
    exact trace_243_cancellation_ne hc
  · rw [h52] at hc
    exact trace_244_cancellation_ne hc
  · rw [h53] at hc
    exact trace_245_cancellation_ne hc
  · rw [h54] at hc
    exact trace_246_cancellation_ne hc
  · rw [h55] at hc
    exact trace_247_cancellation_ne hc
  · rw [h56] at hc
    exact trace_248_cancellation_ne hc
  · rw [h57] at hc
    exact trace_249_cancellation_ne hc
  · rw [h58] at hc
    exact trace_250_cancellation_ne hc
  · rw [h59] at hc
    exact trace_251_cancellation_ne hc
  · rw [h60] at hc
    exact trace_252_cancellation_ne hc
  · rw [h61] at hc
    exact trace_253_cancellation_ne hc
  · rw [h62] at hc
    exact trace_254_cancellation_ne hc
  · rw [h63] at hc
    exact trace_255_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard003
