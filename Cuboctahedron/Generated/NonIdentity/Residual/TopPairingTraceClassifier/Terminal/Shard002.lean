import Cuboctahedron.Search.TopPairingBellmanObject

/-!
Generated terminal top-pairing trace-classifier rejection shard.

This shard consumes a full-trace disjunction and the semantic cancellation
summary equality, deriving contradiction for traces that are not in the
Lean-aligned top-pairing cancellation language.  It contains no sampled rank or
path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard002

open Cuboctahedron

def terminalTrace_128 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.yp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_129 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.zm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_130 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.tpmp, Face.tmpp, Face.zm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_131 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.zp, Face.tpmm, Face.tmpm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_132 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.tppm, Face.zp, Face.tpmm, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_133 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.zp, Face.tpmm, Face.tmmp, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_134 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.zp, Face.tpmp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_135 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.zp, Face.tpmp, Face.tpmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_136 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.zp, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_137 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tmmm, Face.zp, Face.tppm, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_138 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tmmm, Face.zp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_139 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tpmm, Face.zm, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_140 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmp, Face.tmmm, Face.zm, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_141 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.zm, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_142 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.zm, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_143 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.zm, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_144 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.tppp, Face.zm, Face.tpmm, Face.tpmp, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_145 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_146 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp, Face.tmmm, Face.tppp, Face.tpmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_147 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_148 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_149 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tpmp, Face.tpmm, Face.tppp, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_150 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tpmm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_151 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_152 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tmmm, Face.tppp, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_153 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tmmp, Face.tpmm, Face.tmpm, Face.tppp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_154 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_155 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_156 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_157 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_158 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tpmm, Face.tmmp, Face.tmpm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_159 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tppm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_160 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tpmp, Face.tpmm, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_161 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_162 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tmmm, Face.tppm, Face.tpmm, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_163 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tpmp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_164 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tpmp, Face.tpmm, Face.tppp, Face.tppm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_165 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_166 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_167 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tpmp, Face.tppm, Face.tpmm, Face.tmpp, Face.tmmp, Face.tmmm, Face.yp, Face.xp]
def terminalTrace_168 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_169 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tppm, Face.tpmm, Face.tpmp, Face.tmmm, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_170 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.xp]
def terminalTrace_171 : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppp, Face.tppm, Face.tpmm, Face.tppp, Face.tpmp, Face.yp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_172 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmmp, Face.tmpp, Face.tpmp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_173 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmmp, Face.tppp, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_174 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmmp, Face.tppp, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_175 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tmmp, Face.tmpp, Face.tppp, Face.zm, Face.zp, Face.xp]
def terminalTrace_176 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tmpp, Face.tppm, Face.zm, Face.tmmm, Face.zp, Face.xp]
def terminalTrace_177 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tmpp, Face.zm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_178 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.tmmp, Face.tmpp, Face.tmpm, Face.zm, Face.zp, Face.xp]
def terminalTrace_179 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.tmmp, Face.zm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_180 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.tmpp, Face.tpmp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_181 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.tmpp, Face.tpmp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_182 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.zp, Face.tmpp, Face.tmpm, Face.zm, Face.tmmp, Face.xp]
def terminalTrace_183 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tppp, Face.zp, Face.zm, Face.tmpm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_184 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.tmmm, Face.tppm, Face.tmpm, Face.tmpp, Face.zp, Face.xp]
def terminalTrace_185 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.zp, Face.tmpp, Face.tmpm, Face.tppp, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_186 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpm, Face.tpmp, Face.tmpp, Face.tmmp, Face.zm, Face.zp, Face.xp]
def terminalTrace_187 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpm, Face.tpmp, Face.tmpp, Face.zm, Face.zp, Face.tmmp, Face.xp]
def terminalTrace_188 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.tppp, Face.tmpm, Face.tpmp, Face.zp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_189 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.zp, Face.tmpm, Face.tpmp, Face.zm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_190 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.tppm, Face.zp, Face.tmpm, Face.tppp, Face.tpmp, Face.zm, Face.tmpp, Face.tmmp, Face.xp]
def terminalTrace_191 : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm, Face.tpmm, Face.zp, Face.tppm, Face.tpmp, Face.zp, Face.tmpp, Face.tmpm, Face.tmmm, Face.tmmp, Face.xp]


private theorem trace_128_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_128 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_129_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_129 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_130_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_130 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_131_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_131 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_132_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_132 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_133_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_133 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_134_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_134 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_135_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_135 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_136_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_136 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_137_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_137 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_138_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_138 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_139_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_139 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_140_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_140 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_141_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_141 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_142_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_142 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_143_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_143 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_144_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_144 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_145_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_145 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_146_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_146 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_147_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_147 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_148_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_148 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_149_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_149 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_150_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_150 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_151_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_151 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_152_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_152 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_153_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_153 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_154_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_154 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_155_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_155 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_156_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_156 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_157_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_157 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_158_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_158 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_159_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_159 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_160_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_160 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_161_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_161 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_162_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_162 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_163_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_163 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_164_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_164 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_165_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_165 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_166_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_166 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_167_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_167 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_168_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_168 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_169_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_169 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_170_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_170 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_171_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_171 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_172_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_172 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_173_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_173 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_174_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_174 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_175_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_175 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_176_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_176 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_177_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_177 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_178_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_178 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_179_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_179 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_180_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_180 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_181_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_181 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_182_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_182 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_183_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_183 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_184_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_184 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_185_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_185 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_186_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_186 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_187_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_187 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_188_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_188 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_189_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_189 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_190_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_190 ≠
      topPairingTargetSummary := by
  decide

private theorem trace_191_cancellation_ne :
    triangularCancellationSummaryOfFaceLabels terminalTrace_191 ≠
      topPairingTargetSummary := by
  decide

theorem terminal_shard_002
    {labels : List Face}
    (hc :
      triangularCancellationSummaryOfFaceLabels labels =
        topPairingTargetSummary)
    (hterm :
    labels = terminalTrace_128 \/
    labels = terminalTrace_129 \/
    labels = terminalTrace_130 \/
    labels = terminalTrace_131 \/
    labels = terminalTrace_132 \/
    labels = terminalTrace_133 \/
    labels = terminalTrace_134 \/
    labels = terminalTrace_135 \/
    labels = terminalTrace_136 \/
    labels = terminalTrace_137 \/
    labels = terminalTrace_138 \/
    labels = terminalTrace_139 \/
    labels = terminalTrace_140 \/
    labels = terminalTrace_141 \/
    labels = terminalTrace_142 \/
    labels = terminalTrace_143 \/
    labels = terminalTrace_144 \/
    labels = terminalTrace_145 \/
    labels = terminalTrace_146 \/
    labels = terminalTrace_147 \/
    labels = terminalTrace_148 \/
    labels = terminalTrace_149 \/
    labels = terminalTrace_150 \/
    labels = terminalTrace_151 \/
    labels = terminalTrace_152 \/
    labels = terminalTrace_153 \/
    labels = terminalTrace_154 \/
    labels = terminalTrace_155 \/
    labels = terminalTrace_156 \/
    labels = terminalTrace_157 \/
    labels = terminalTrace_158 \/
    labels = terminalTrace_159 \/
    labels = terminalTrace_160 \/
    labels = terminalTrace_161 \/
    labels = terminalTrace_162 \/
    labels = terminalTrace_163 \/
    labels = terminalTrace_164 \/
    labels = terminalTrace_165 \/
    labels = terminalTrace_166 \/
    labels = terminalTrace_167 \/
    labels = terminalTrace_168 \/
    labels = terminalTrace_169 \/
    labels = terminalTrace_170 \/
    labels = terminalTrace_171 \/
    labels = terminalTrace_172 \/
    labels = terminalTrace_173 \/
    labels = terminalTrace_174 \/
    labels = terminalTrace_175 \/
    labels = terminalTrace_176 \/
    labels = terminalTrace_177 \/
    labels = terminalTrace_178 \/
    labels = terminalTrace_179 \/
    labels = terminalTrace_180 \/
    labels = terminalTrace_181 \/
    labels = terminalTrace_182 \/
    labels = terminalTrace_183 \/
    labels = terminalTrace_184 \/
    labels = terminalTrace_185 \/
    labels = terminalTrace_186 \/
    labels = terminalTrace_187 \/
    labels = terminalTrace_188 \/
    labels = terminalTrace_189 \/
    labels = terminalTrace_190 \/
    labels = terminalTrace_191) :
    False := by
  rcases hterm with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36 | h37 | h38 | h39 | h40 | h41 | h42 | h43 | h44 | h45 | h46 | h47 | h48 | h49 | h50 | h51 | h52 | h53 | h54 | h55 | h56 | h57 | h58 | h59 | h60 | h61 | h62 | h63
  · rw [h0] at hc
    exact trace_128_cancellation_ne hc
  · rw [h1] at hc
    exact trace_129_cancellation_ne hc
  · rw [h2] at hc
    exact trace_130_cancellation_ne hc
  · rw [h3] at hc
    exact trace_131_cancellation_ne hc
  · rw [h4] at hc
    exact trace_132_cancellation_ne hc
  · rw [h5] at hc
    exact trace_133_cancellation_ne hc
  · rw [h6] at hc
    exact trace_134_cancellation_ne hc
  · rw [h7] at hc
    exact trace_135_cancellation_ne hc
  · rw [h8] at hc
    exact trace_136_cancellation_ne hc
  · rw [h9] at hc
    exact trace_137_cancellation_ne hc
  · rw [h10] at hc
    exact trace_138_cancellation_ne hc
  · rw [h11] at hc
    exact trace_139_cancellation_ne hc
  · rw [h12] at hc
    exact trace_140_cancellation_ne hc
  · rw [h13] at hc
    exact trace_141_cancellation_ne hc
  · rw [h14] at hc
    exact trace_142_cancellation_ne hc
  · rw [h15] at hc
    exact trace_143_cancellation_ne hc
  · rw [h16] at hc
    exact trace_144_cancellation_ne hc
  · rw [h17] at hc
    exact trace_145_cancellation_ne hc
  · rw [h18] at hc
    exact trace_146_cancellation_ne hc
  · rw [h19] at hc
    exact trace_147_cancellation_ne hc
  · rw [h20] at hc
    exact trace_148_cancellation_ne hc
  · rw [h21] at hc
    exact trace_149_cancellation_ne hc
  · rw [h22] at hc
    exact trace_150_cancellation_ne hc
  · rw [h23] at hc
    exact trace_151_cancellation_ne hc
  · rw [h24] at hc
    exact trace_152_cancellation_ne hc
  · rw [h25] at hc
    exact trace_153_cancellation_ne hc
  · rw [h26] at hc
    exact trace_154_cancellation_ne hc
  · rw [h27] at hc
    exact trace_155_cancellation_ne hc
  · rw [h28] at hc
    exact trace_156_cancellation_ne hc
  · rw [h29] at hc
    exact trace_157_cancellation_ne hc
  · rw [h30] at hc
    exact trace_158_cancellation_ne hc
  · rw [h31] at hc
    exact trace_159_cancellation_ne hc
  · rw [h32] at hc
    exact trace_160_cancellation_ne hc
  · rw [h33] at hc
    exact trace_161_cancellation_ne hc
  · rw [h34] at hc
    exact trace_162_cancellation_ne hc
  · rw [h35] at hc
    exact trace_163_cancellation_ne hc
  · rw [h36] at hc
    exact trace_164_cancellation_ne hc
  · rw [h37] at hc
    exact trace_165_cancellation_ne hc
  · rw [h38] at hc
    exact trace_166_cancellation_ne hc
  · rw [h39] at hc
    exact trace_167_cancellation_ne hc
  · rw [h40] at hc
    exact trace_168_cancellation_ne hc
  · rw [h41] at hc
    exact trace_169_cancellation_ne hc
  · rw [h42] at hc
    exact trace_170_cancellation_ne hc
  · rw [h43] at hc
    exact trace_171_cancellation_ne hc
  · rw [h44] at hc
    exact trace_172_cancellation_ne hc
  · rw [h45] at hc
    exact trace_173_cancellation_ne hc
  · rw [h46] at hc
    exact trace_174_cancellation_ne hc
  · rw [h47] at hc
    exact trace_175_cancellation_ne hc
  · rw [h48] at hc
    exact trace_176_cancellation_ne hc
  · rw [h49] at hc
    exact trace_177_cancellation_ne hc
  · rw [h50] at hc
    exact trace_178_cancellation_ne hc
  · rw [h51] at hc
    exact trace_179_cancellation_ne hc
  · rw [h52] at hc
    exact trace_180_cancellation_ne hc
  · rw [h53] at hc
    exact trace_181_cancellation_ne hc
  · rw [h54] at hc
    exact trace_182_cancellation_ne hc
  · rw [h55] at hc
    exact trace_183_cancellation_ne hc
  · rw [h56] at hc
    exact trace_184_cancellation_ne hc
  · rw [h57] at hc
    exact trace_185_cancellation_ne hc
  · rw [h58] at hc
    exact trace_186_cancellation_ne hc
  · rw [h59] at hc
    exact trace_187_cancellation_ne hc
  · rw [h60] at hc
    exact trace_188_cancellation_ne hc
  · rw [h61] at hc
    exact trace_189_cancellation_ne hc
  · rw [h62] at hc
    exact trace_190_cancellation_ne hc
  · rw [h63] at hc
    exact trace_191_cancellation_ne hc

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Terminal.Shard002
