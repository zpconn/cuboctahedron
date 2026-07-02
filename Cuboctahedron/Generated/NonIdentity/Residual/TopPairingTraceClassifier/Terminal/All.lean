import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard000
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard001
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard002
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard003
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard004
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard005
import Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard006

/-!
Generated terminal top-pairing trace-classifier root.

This root combines all cancellation-reject shards into a single semantic
theorem.  It still consumes a terminal full-trace disjunction; it contains no
sampled rank or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal

open Cuboctahedron

set_option maxRecDepth 4096
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

def TerminalRejectTraceLabels (labels : List Face) : Prop :=
  (
    labels = Shard000.terminalTrace_000 \/
    labels = Shard000.terminalTrace_001 \/
    labels = Shard000.terminalTrace_002 \/
    labels = Shard000.terminalTrace_003 \/
    labels = Shard000.terminalTrace_004 \/
    labels = Shard000.terminalTrace_005 \/
    labels = Shard000.terminalTrace_006 \/
    labels = Shard000.terminalTrace_007 \/
    labels = Shard000.terminalTrace_008 \/
    labels = Shard000.terminalTrace_009 \/
    labels = Shard000.terminalTrace_010 \/
    labels = Shard000.terminalTrace_011 \/
    labels = Shard000.terminalTrace_012 \/
    labels = Shard000.terminalTrace_013 \/
    labels = Shard000.terminalTrace_014 \/
    labels = Shard000.terminalTrace_015 \/
    labels = Shard000.terminalTrace_016 \/
    labels = Shard000.terminalTrace_017 \/
    labels = Shard000.terminalTrace_018 \/
    labels = Shard000.terminalTrace_019 \/
    labels = Shard000.terminalTrace_020 \/
    labels = Shard000.terminalTrace_021 \/
    labels = Shard000.terminalTrace_022 \/
    labels = Shard000.terminalTrace_023 \/
    labels = Shard000.terminalTrace_024 \/
    labels = Shard000.terminalTrace_025 \/
    labels = Shard000.terminalTrace_026 \/
    labels = Shard000.terminalTrace_027 \/
    labels = Shard000.terminalTrace_028 \/
    labels = Shard000.terminalTrace_029 \/
    labels = Shard000.terminalTrace_030 \/
    labels = Shard000.terminalTrace_031 \/
    labels = Shard000.terminalTrace_032 \/
    labels = Shard000.terminalTrace_033 \/
    labels = Shard000.terminalTrace_034 \/
    labels = Shard000.terminalTrace_035 \/
    labels = Shard000.terminalTrace_036 \/
    labels = Shard000.terminalTrace_037 \/
    labels = Shard000.terminalTrace_038 \/
    labels = Shard000.terminalTrace_039 \/
    labels = Shard000.terminalTrace_040 \/
    labels = Shard000.terminalTrace_041 \/
    labels = Shard000.terminalTrace_042 \/
    labels = Shard000.terminalTrace_043 \/
    labels = Shard000.terminalTrace_044 \/
    labels = Shard000.terminalTrace_045 \/
    labels = Shard000.terminalTrace_046 \/
    labels = Shard000.terminalTrace_047 \/
    labels = Shard000.terminalTrace_048 \/
    labels = Shard000.terminalTrace_049 \/
    labels = Shard000.terminalTrace_050 \/
    labels = Shard000.terminalTrace_051 \/
    labels = Shard000.terminalTrace_052 \/
    labels = Shard000.terminalTrace_053 \/
    labels = Shard000.terminalTrace_054 \/
    labels = Shard000.terminalTrace_055 \/
    labels = Shard000.terminalTrace_056 \/
    labels = Shard000.terminalTrace_057 \/
    labels = Shard000.terminalTrace_058 \/
    labels = Shard000.terminalTrace_059 \/
    labels = Shard000.terminalTrace_060 \/
    labels = Shard000.terminalTrace_061 \/
    labels = Shard000.terminalTrace_062 \/
    labels = Shard000.terminalTrace_063) \/
  (
    labels = Shard001.terminalTrace_064 \/
    labels = Shard001.terminalTrace_065 \/
    labels = Shard001.terminalTrace_066 \/
    labels = Shard001.terminalTrace_067 \/
    labels = Shard001.terminalTrace_068 \/
    labels = Shard001.terminalTrace_069 \/
    labels = Shard001.terminalTrace_070 \/
    labels = Shard001.terminalTrace_071 \/
    labels = Shard001.terminalTrace_072 \/
    labels = Shard001.terminalTrace_073 \/
    labels = Shard001.terminalTrace_074 \/
    labels = Shard001.terminalTrace_075 \/
    labels = Shard001.terminalTrace_076 \/
    labels = Shard001.terminalTrace_077 \/
    labels = Shard001.terminalTrace_078 \/
    labels = Shard001.terminalTrace_079 \/
    labels = Shard001.terminalTrace_080 \/
    labels = Shard001.terminalTrace_081 \/
    labels = Shard001.terminalTrace_082 \/
    labels = Shard001.terminalTrace_083 \/
    labels = Shard001.terminalTrace_084 \/
    labels = Shard001.terminalTrace_085 \/
    labels = Shard001.terminalTrace_086 \/
    labels = Shard001.terminalTrace_087 \/
    labels = Shard001.terminalTrace_088 \/
    labels = Shard001.terminalTrace_089 \/
    labels = Shard001.terminalTrace_090 \/
    labels = Shard001.terminalTrace_091 \/
    labels = Shard001.terminalTrace_092 \/
    labels = Shard001.terminalTrace_093 \/
    labels = Shard001.terminalTrace_094 \/
    labels = Shard001.terminalTrace_095 \/
    labels = Shard001.terminalTrace_096 \/
    labels = Shard001.terminalTrace_097 \/
    labels = Shard001.terminalTrace_098 \/
    labels = Shard001.terminalTrace_099 \/
    labels = Shard001.terminalTrace_100 \/
    labels = Shard001.terminalTrace_101 \/
    labels = Shard001.terminalTrace_102 \/
    labels = Shard001.terminalTrace_103 \/
    labels = Shard001.terminalTrace_104 \/
    labels = Shard001.terminalTrace_105 \/
    labels = Shard001.terminalTrace_106 \/
    labels = Shard001.terminalTrace_107 \/
    labels = Shard001.terminalTrace_108 \/
    labels = Shard001.terminalTrace_109 \/
    labels = Shard001.terminalTrace_110 \/
    labels = Shard001.terminalTrace_111 \/
    labels = Shard001.terminalTrace_112 \/
    labels = Shard001.terminalTrace_113 \/
    labels = Shard001.terminalTrace_114 \/
    labels = Shard001.terminalTrace_115 \/
    labels = Shard001.terminalTrace_116 \/
    labels = Shard001.terminalTrace_117 \/
    labels = Shard001.terminalTrace_118 \/
    labels = Shard001.terminalTrace_119 \/
    labels = Shard001.terminalTrace_120 \/
    labels = Shard001.terminalTrace_121 \/
    labels = Shard001.terminalTrace_122 \/
    labels = Shard001.terminalTrace_123 \/
    labels = Shard001.terminalTrace_124 \/
    labels = Shard001.terminalTrace_125 \/
    labels = Shard001.terminalTrace_126 \/
    labels = Shard001.terminalTrace_127) \/
  (
    labels = Shard002.terminalTrace_128 \/
    labels = Shard002.terminalTrace_129 \/
    labels = Shard002.terminalTrace_130 \/
    labels = Shard002.terminalTrace_131 \/
    labels = Shard002.terminalTrace_132 \/
    labels = Shard002.terminalTrace_133 \/
    labels = Shard002.terminalTrace_134 \/
    labels = Shard002.terminalTrace_135 \/
    labels = Shard002.terminalTrace_136 \/
    labels = Shard002.terminalTrace_137 \/
    labels = Shard002.terminalTrace_138 \/
    labels = Shard002.terminalTrace_139 \/
    labels = Shard002.terminalTrace_140 \/
    labels = Shard002.terminalTrace_141 \/
    labels = Shard002.terminalTrace_142 \/
    labels = Shard002.terminalTrace_143 \/
    labels = Shard002.terminalTrace_144 \/
    labels = Shard002.terminalTrace_145 \/
    labels = Shard002.terminalTrace_146 \/
    labels = Shard002.terminalTrace_147 \/
    labels = Shard002.terminalTrace_148 \/
    labels = Shard002.terminalTrace_149 \/
    labels = Shard002.terminalTrace_150 \/
    labels = Shard002.terminalTrace_151 \/
    labels = Shard002.terminalTrace_152 \/
    labels = Shard002.terminalTrace_153 \/
    labels = Shard002.terminalTrace_154 \/
    labels = Shard002.terminalTrace_155 \/
    labels = Shard002.terminalTrace_156 \/
    labels = Shard002.terminalTrace_157 \/
    labels = Shard002.terminalTrace_158 \/
    labels = Shard002.terminalTrace_159 \/
    labels = Shard002.terminalTrace_160 \/
    labels = Shard002.terminalTrace_161 \/
    labels = Shard002.terminalTrace_162 \/
    labels = Shard002.terminalTrace_163 \/
    labels = Shard002.terminalTrace_164 \/
    labels = Shard002.terminalTrace_165 \/
    labels = Shard002.terminalTrace_166 \/
    labels = Shard002.terminalTrace_167 \/
    labels = Shard002.terminalTrace_168 \/
    labels = Shard002.terminalTrace_169 \/
    labels = Shard002.terminalTrace_170 \/
    labels = Shard002.terminalTrace_171 \/
    labels = Shard002.terminalTrace_172 \/
    labels = Shard002.terminalTrace_173 \/
    labels = Shard002.terminalTrace_174 \/
    labels = Shard002.terminalTrace_175 \/
    labels = Shard002.terminalTrace_176 \/
    labels = Shard002.terminalTrace_177 \/
    labels = Shard002.terminalTrace_178 \/
    labels = Shard002.terminalTrace_179 \/
    labels = Shard002.terminalTrace_180 \/
    labels = Shard002.terminalTrace_181 \/
    labels = Shard002.terminalTrace_182 \/
    labels = Shard002.terminalTrace_183 \/
    labels = Shard002.terminalTrace_184 \/
    labels = Shard002.terminalTrace_185 \/
    labels = Shard002.terminalTrace_186 \/
    labels = Shard002.terminalTrace_187 \/
    labels = Shard002.terminalTrace_188 \/
    labels = Shard002.terminalTrace_189 \/
    labels = Shard002.terminalTrace_190 \/
    labels = Shard002.terminalTrace_191) \/
  (
    labels = Shard003.terminalTrace_192 \/
    labels = Shard003.terminalTrace_193 \/
    labels = Shard003.terminalTrace_194 \/
    labels = Shard003.terminalTrace_195 \/
    labels = Shard003.terminalTrace_196 \/
    labels = Shard003.terminalTrace_197 \/
    labels = Shard003.terminalTrace_198 \/
    labels = Shard003.terminalTrace_199 \/
    labels = Shard003.terminalTrace_200 \/
    labels = Shard003.terminalTrace_201 \/
    labels = Shard003.terminalTrace_202 \/
    labels = Shard003.terminalTrace_203 \/
    labels = Shard003.terminalTrace_204 \/
    labels = Shard003.terminalTrace_205 \/
    labels = Shard003.terminalTrace_206 \/
    labels = Shard003.terminalTrace_207 \/
    labels = Shard003.terminalTrace_208 \/
    labels = Shard003.terminalTrace_209 \/
    labels = Shard003.terminalTrace_210 \/
    labels = Shard003.terminalTrace_211 \/
    labels = Shard003.terminalTrace_212 \/
    labels = Shard003.terminalTrace_213 \/
    labels = Shard003.terminalTrace_214 \/
    labels = Shard003.terminalTrace_215 \/
    labels = Shard003.terminalTrace_216 \/
    labels = Shard003.terminalTrace_217 \/
    labels = Shard003.terminalTrace_218 \/
    labels = Shard003.terminalTrace_219 \/
    labels = Shard003.terminalTrace_220 \/
    labels = Shard003.terminalTrace_221 \/
    labels = Shard003.terminalTrace_222 \/
    labels = Shard003.terminalTrace_223 \/
    labels = Shard003.terminalTrace_224 \/
    labels = Shard003.terminalTrace_225 \/
    labels = Shard003.terminalTrace_226 \/
    labels = Shard003.terminalTrace_227 \/
    labels = Shard003.terminalTrace_228 \/
    labels = Shard003.terminalTrace_229 \/
    labels = Shard003.terminalTrace_230 \/
    labels = Shard003.terminalTrace_231 \/
    labels = Shard003.terminalTrace_232 \/
    labels = Shard003.terminalTrace_233 \/
    labels = Shard003.terminalTrace_234 \/
    labels = Shard003.terminalTrace_235 \/
    labels = Shard003.terminalTrace_236 \/
    labels = Shard003.terminalTrace_237 \/
    labels = Shard003.terminalTrace_238 \/
    labels = Shard003.terminalTrace_239 \/
    labels = Shard003.terminalTrace_240 \/
    labels = Shard003.terminalTrace_241 \/
    labels = Shard003.terminalTrace_242 \/
    labels = Shard003.terminalTrace_243 \/
    labels = Shard003.terminalTrace_244 \/
    labels = Shard003.terminalTrace_245 \/
    labels = Shard003.terminalTrace_246 \/
    labels = Shard003.terminalTrace_247 \/
    labels = Shard003.terminalTrace_248 \/
    labels = Shard003.terminalTrace_249 \/
    labels = Shard003.terminalTrace_250 \/
    labels = Shard003.terminalTrace_251 \/
    labels = Shard003.terminalTrace_252 \/
    labels = Shard003.terminalTrace_253 \/
    labels = Shard003.terminalTrace_254 \/
    labels = Shard003.terminalTrace_255) \/
  (
    labels = Shard004.terminalTrace_256 \/
    labels = Shard004.terminalTrace_257 \/
    labels = Shard004.terminalTrace_258 \/
    labels = Shard004.terminalTrace_259 \/
    labels = Shard004.terminalTrace_260 \/
    labels = Shard004.terminalTrace_261 \/
    labels = Shard004.terminalTrace_262 \/
    labels = Shard004.terminalTrace_263 \/
    labels = Shard004.terminalTrace_264 \/
    labels = Shard004.terminalTrace_265 \/
    labels = Shard004.terminalTrace_266 \/
    labels = Shard004.terminalTrace_267 \/
    labels = Shard004.terminalTrace_268 \/
    labels = Shard004.terminalTrace_269 \/
    labels = Shard004.terminalTrace_270 \/
    labels = Shard004.terminalTrace_271 \/
    labels = Shard004.terminalTrace_272 \/
    labels = Shard004.terminalTrace_273 \/
    labels = Shard004.terminalTrace_274 \/
    labels = Shard004.terminalTrace_275 \/
    labels = Shard004.terminalTrace_276 \/
    labels = Shard004.terminalTrace_277 \/
    labels = Shard004.terminalTrace_278 \/
    labels = Shard004.terminalTrace_279 \/
    labels = Shard004.terminalTrace_280 \/
    labels = Shard004.terminalTrace_281 \/
    labels = Shard004.terminalTrace_282 \/
    labels = Shard004.terminalTrace_283 \/
    labels = Shard004.terminalTrace_284 \/
    labels = Shard004.terminalTrace_285 \/
    labels = Shard004.terminalTrace_286 \/
    labels = Shard004.terminalTrace_287 \/
    labels = Shard004.terminalTrace_288 \/
    labels = Shard004.terminalTrace_289 \/
    labels = Shard004.terminalTrace_290 \/
    labels = Shard004.terminalTrace_291 \/
    labels = Shard004.terminalTrace_292 \/
    labels = Shard004.terminalTrace_293 \/
    labels = Shard004.terminalTrace_294 \/
    labels = Shard004.terminalTrace_295 \/
    labels = Shard004.terminalTrace_296 \/
    labels = Shard004.terminalTrace_297 \/
    labels = Shard004.terminalTrace_298 \/
    labels = Shard004.terminalTrace_299 \/
    labels = Shard004.terminalTrace_300 \/
    labels = Shard004.terminalTrace_301 \/
    labels = Shard004.terminalTrace_302 \/
    labels = Shard004.terminalTrace_303 \/
    labels = Shard004.terminalTrace_304 \/
    labels = Shard004.terminalTrace_305 \/
    labels = Shard004.terminalTrace_306 \/
    labels = Shard004.terminalTrace_307 \/
    labels = Shard004.terminalTrace_308 \/
    labels = Shard004.terminalTrace_309 \/
    labels = Shard004.terminalTrace_310 \/
    labels = Shard004.terminalTrace_311 \/
    labels = Shard004.terminalTrace_312 \/
    labels = Shard004.terminalTrace_313 \/
    labels = Shard004.terminalTrace_314 \/
    labels = Shard004.terminalTrace_315 \/
    labels = Shard004.terminalTrace_316 \/
    labels = Shard004.terminalTrace_317 \/
    labels = Shard004.terminalTrace_318 \/
    labels = Shard004.terminalTrace_319) \/
  (
    labels = Shard005.terminalTrace_320 \/
    labels = Shard005.terminalTrace_321 \/
    labels = Shard005.terminalTrace_322 \/
    labels = Shard005.terminalTrace_323 \/
    labels = Shard005.terminalTrace_324 \/
    labels = Shard005.terminalTrace_325 \/
    labels = Shard005.terminalTrace_326 \/
    labels = Shard005.terminalTrace_327 \/
    labels = Shard005.terminalTrace_328 \/
    labels = Shard005.terminalTrace_329 \/
    labels = Shard005.terminalTrace_330 \/
    labels = Shard005.terminalTrace_331 \/
    labels = Shard005.terminalTrace_332 \/
    labels = Shard005.terminalTrace_333 \/
    labels = Shard005.terminalTrace_334 \/
    labels = Shard005.terminalTrace_335 \/
    labels = Shard005.terminalTrace_336 \/
    labels = Shard005.terminalTrace_337 \/
    labels = Shard005.terminalTrace_338 \/
    labels = Shard005.terminalTrace_339 \/
    labels = Shard005.terminalTrace_340 \/
    labels = Shard005.terminalTrace_341 \/
    labels = Shard005.terminalTrace_342 \/
    labels = Shard005.terminalTrace_343 \/
    labels = Shard005.terminalTrace_344 \/
    labels = Shard005.terminalTrace_345 \/
    labels = Shard005.terminalTrace_346 \/
    labels = Shard005.terminalTrace_347 \/
    labels = Shard005.terminalTrace_348 \/
    labels = Shard005.terminalTrace_349 \/
    labels = Shard005.terminalTrace_350 \/
    labels = Shard005.terminalTrace_351 \/
    labels = Shard005.terminalTrace_352 \/
    labels = Shard005.terminalTrace_353 \/
    labels = Shard005.terminalTrace_354 \/
    labels = Shard005.terminalTrace_355 \/
    labels = Shard005.terminalTrace_356 \/
    labels = Shard005.terminalTrace_357 \/
    labels = Shard005.terminalTrace_358 \/
    labels = Shard005.terminalTrace_359 \/
    labels = Shard005.terminalTrace_360 \/
    labels = Shard005.terminalTrace_361 \/
    labels = Shard005.terminalTrace_362 \/
    labels = Shard005.terminalTrace_363 \/
    labels = Shard005.terminalTrace_364 \/
    labels = Shard005.terminalTrace_365 \/
    labels = Shard005.terminalTrace_366 \/
    labels = Shard005.terminalTrace_367 \/
    labels = Shard005.terminalTrace_368 \/
    labels = Shard005.terminalTrace_369 \/
    labels = Shard005.terminalTrace_370 \/
    labels = Shard005.terminalTrace_371 \/
    labels = Shard005.terminalTrace_372 \/
    labels = Shard005.terminalTrace_373 \/
    labels = Shard005.terminalTrace_374 \/
    labels = Shard005.terminalTrace_375 \/
    labels = Shard005.terminalTrace_376 \/
    labels = Shard005.terminalTrace_377 \/
    labels = Shard005.terminalTrace_378 \/
    labels = Shard005.terminalTrace_379 \/
    labels = Shard005.terminalTrace_380 \/
    labels = Shard005.terminalTrace_381 \/
    labels = Shard005.terminalTrace_382 \/
    labels = Shard005.terminalTrace_383) \/
  (
    labels = Shard006.terminalTrace_384 \/
    labels = Shard006.terminalTrace_385 \/
    labels = Shard006.terminalTrace_386 \/
    labels = Shard006.terminalTrace_387 \/
    labels = Shard006.terminalTrace_388 \/
    labels = Shard006.terminalTrace_389 \/
    labels = Shard006.terminalTrace_390 \/
    labels = Shard006.terminalTrace_391 \/
    labels = Shard006.terminalTrace_392 \/
    labels = Shard006.terminalTrace_393 \/
    labels = Shard006.terminalTrace_394)

theorem terminal_rejects_false
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm : TerminalRejectTraceLabels labels) :
    False := by
  unfold TerminalRejectTraceLabels at hterm
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6
  · exact Shard000.terminal_shard_000 hc h0
  · exact Shard001.terminal_shard_001 hc h1
  · exact Shard002.terminal_shard_002 hc h2
  · exact Shard003.terminal_shard_003 hc h3
  · exact Shard004.terminal_shard_004 hc h4
  · exact Shard005.terminal_shard_005 hc h5
  · exact Shard006.terminal_shard_006 hc h6

theorem root_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal
