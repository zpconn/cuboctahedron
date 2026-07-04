import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

/-!
Generated semantic state-transition emitter smoke.

This bounded module proves graph transition facts emitted from the
audited split-10M Bellman graph JSON.  It is a low-risk generator
socket for deterministic semantic-state emission; it does not prove
closed-language membership and it does not use sampled ranks, selected
prefixes, accepted trace ids, or exact affine keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateTransitions

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Source graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`. -/
def emittedTransitionCount : Nat := 1054

theorem emittedTransitionCount_eq :
    emittedTransitionCount = 1054 := by
  rfl

theorem emitted_transition_0000_s0000_xm :
    graphSmokeNext (0 : State) (smokeLabelOfFace Face.xm) =
      some ((608 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0001_s0000_ym :
    graphSmokeNext (0 : State) (smokeLabelOfFace Face.ym) =
      some ((609 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0002_s0001_tppp :
    graphSmokeNext (1 : State) (smokeLabelOfFace Face.tppp) =
      some ((114 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0003_s0002_tppp :
    graphSmokeNext (2 : State) (smokeLabelOfFace Face.tppp) =
      some ((117 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0004_s0003_tppp :
    graphSmokeNext (3 : State) (smokeLabelOfFace Face.tppp) =
      some ((119 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0005_s0004_tppp :
    graphSmokeNext (4 : State) (smokeLabelOfFace Face.tppp) =
      some ((120 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0006_s0005_tppp :
    graphSmokeNext (5 : State) (smokeLabelOfFace Face.tppp) =
      some ((122 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0007_s0006_tppp :
    graphSmokeNext (6 : State) (smokeLabelOfFace Face.tppp) =
      some ((123 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0008_s0007_tppp :
    graphSmokeNext (7 : State) (smokeLabelOfFace Face.tppp) =
      some ((124 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0009_s0008_tppp :
    graphSmokeNext (8 : State) (smokeLabelOfFace Face.tppp) =
      some ((126 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0010_s0009_tppp :
    graphSmokeNext (9 : State) (smokeLabelOfFace Face.tppp) =
      some ((127 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0011_s0010_tppp :
    graphSmokeNext (10 : State) (smokeLabelOfFace Face.tppp) =
      some ((128 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0012_s0011_tppp :
    graphSmokeNext (11 : State) (smokeLabelOfFace Face.tppp) =
      some ((129 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0013_s0012_tppp :
    graphSmokeNext (12 : State) (smokeLabelOfFace Face.tppp) =
      some ((130 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0014_s0013_tppp :
    graphSmokeNext (13 : State) (smokeLabelOfFace Face.tppp) =
      some ((132 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0015_s0014_tppp :
    graphSmokeNext (14 : State) (smokeLabelOfFace Face.tppp) =
      some ((133 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0016_s0015_tppp :
    graphSmokeNext (15 : State) (smokeLabelOfFace Face.tppp) =
      some ((134 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0017_s0016_tppp :
    graphSmokeNext (16 : State) (smokeLabelOfFace Face.tppp) =
      some ((135 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0018_s0017_tppp :
    graphSmokeNext (17 : State) (smokeLabelOfFace Face.tppp) =
      some ((136 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0019_s0018_tppp :
    graphSmokeNext (18 : State) (smokeLabelOfFace Face.tppp) =
      some ((138 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0020_s0019_tppp :
    graphSmokeNext (19 : State) (smokeLabelOfFace Face.tppp) =
      some ((139 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0021_s0020_tppp :
    graphSmokeNext (20 : State) (smokeLabelOfFace Face.tppp) =
      some ((140 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0022_s0021_tppp :
    graphSmokeNext (21 : State) (smokeLabelOfFace Face.tppp) =
      some ((141 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0023_s0022_tppp :
    graphSmokeNext (22 : State) (smokeLabelOfFace Face.tppp) =
      some ((148 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0024_s0023_tppp :
    graphSmokeNext (23 : State) (smokeLabelOfFace Face.tppp) =
      some ((150 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0025_s0024_tppp :
    graphSmokeNext (24 : State) (smokeLabelOfFace Face.tppp) =
      some ((151 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0026_s0025_tppp :
    graphSmokeNext (25 : State) (smokeLabelOfFace Face.tppp) =
      some ((152 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0027_s0026_tppp :
    graphSmokeNext (26 : State) (smokeLabelOfFace Face.tppp) =
      some ((153 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0028_s0027_tppp :
    graphSmokeNext (27 : State) (smokeLabelOfFace Face.tppp) =
      some ((154 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0029_s0028_tppp :
    graphSmokeNext (28 : State) (smokeLabelOfFace Face.tppp) =
      some ((156 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0030_s0029_tppp :
    graphSmokeNext (29 : State) (smokeLabelOfFace Face.tppp) =
      some ((157 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0031_s0030_tppp :
    graphSmokeNext (30 : State) (smokeLabelOfFace Face.tppp) =
      some ((158 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0032_s0031_tppp :
    graphSmokeNext (31 : State) (smokeLabelOfFace Face.tppp) =
      some ((159 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0033_s0032_tppp :
    graphSmokeNext (32 : State) (smokeLabelOfFace Face.tppp) =
      some ((160 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0034_s0033_tppp :
    graphSmokeNext (33 : State) (smokeLabelOfFace Face.tppp) =
      some ((162 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0035_s0034_tppp :
    graphSmokeNext (34 : State) (smokeLabelOfFace Face.tppp) =
      some ((163 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0036_s0035_zm :
    graphSmokeNext (35 : State) (smokeLabelOfFace Face.zm) =
      some ((115 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0037_s0036_zm :
    graphSmokeNext (36 : State) (smokeLabelOfFace Face.zm) =
      some ((116 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0038_s0037_zm :
    graphSmokeNext (37 : State) (smokeLabelOfFace Face.zm) =
      some ((118 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0039_s0038_zm :
    graphSmokeNext (38 : State) (smokeLabelOfFace Face.zm) =
      some ((121 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0040_s0039_zm :
    graphSmokeNext (39 : State) (smokeLabelOfFace Face.zm) =
      some ((125 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0041_s0040_zm :
    graphSmokeNext (40 : State) (smokeLabelOfFace Face.zm) =
      some ((131 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0042_s0041_zm :
    graphSmokeNext (41 : State) (smokeLabelOfFace Face.zm) =
      some ((137 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0043_s0042_zm :
    graphSmokeNext (42 : State) (smokeLabelOfFace Face.zm) =
      some ((142 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0044_s0043_zm :
    graphSmokeNext (43 : State) (smokeLabelOfFace Face.zm) =
      some ((149 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0045_s0044_zm :
    graphSmokeNext (44 : State) (smokeLabelOfFace Face.zm) =
      some ((155 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0046_s0045_tmpm :
    graphSmokeNext (45 : State) (smokeLabelOfFace Face.tmpm) =
      some ((167 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0047_s0046_tmpm :
    graphSmokeNext (46 : State) (smokeLabelOfFace Face.tmpm) =
      some ((169 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0048_s0047_tmpm :
    graphSmokeNext (47 : State) (smokeLabelOfFace Face.tmpm) =
      some ((171 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0049_s0048_tmpm :
    graphSmokeNext (48 : State) (smokeLabelOfFace Face.tmpm) =
      some ((175 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0050_s0049_tmpm :
    graphSmokeNext (49 : State) (smokeLabelOfFace Face.tmpm) =
      some ((176 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0051_s0050_tmpm :
    graphSmokeNext (50 : State) (smokeLabelOfFace Face.tmpm) =
      some ((178 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0052_s0051_tmpm :
    graphSmokeNext (51 : State) (smokeLabelOfFace Face.tmpm) =
      some ((179 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0053_s0052_tmpm :
    graphSmokeNext (52 : State) (smokeLabelOfFace Face.tmpm) =
      some ((180 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0054_s0053_tmpm :
    graphSmokeNext (53 : State) (smokeLabelOfFace Face.tmpm) =
      some ((181 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0055_s0054_tmpm :
    graphSmokeNext (54 : State) (smokeLabelOfFace Face.tmpm) =
      some ((182 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0056_s0055_tmpm :
    graphSmokeNext (55 : State) (smokeLabelOfFace Face.tmpm) =
      some ((183 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0057_s0056_tmpm :
    graphSmokeNext (56 : State) (smokeLabelOfFace Face.tmpm) =
      some ((184 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0058_s0057_tmpm :
    graphSmokeNext (57 : State) (smokeLabelOfFace Face.tmpm) =
      some ((185 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0059_s0058_tmpm :
    graphSmokeNext (58 : State) (smokeLabelOfFace Face.tmpm) =
      some ((186 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0060_s0059_zm :
    graphSmokeNext (59 : State) (smokeLabelOfFace Face.zm) =
      some ((164 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0061_s0059_tmmp :
    graphSmokeNext (59 : State) (smokeLabelOfFace Face.tmmp) =
      some ((187 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0062_s0060_zm :
    graphSmokeNext (60 : State) (smokeLabelOfFace Face.zm) =
      some ((165 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0063_s0060_tmmp :
    graphSmokeNext (60 : State) (smokeLabelOfFace Face.tmmp) =
      some ((190 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0064_s0061_tmmp :
    graphSmokeNext (61 : State) (smokeLabelOfFace Face.tmmp) =
      some ((191 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0065_s0062_zm :
    graphSmokeNext (62 : State) (smokeLabelOfFace Face.zm) =
      some ((166 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0066_s0062_tmmp :
    graphSmokeNext (62 : State) (smokeLabelOfFace Face.tmmp) =
      some ((192 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0067_s0063_tmmp :
    graphSmokeNext (63 : State) (smokeLabelOfFace Face.tmmp) =
      some ((193 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0068_s0064_tmmp :
    graphSmokeNext (64 : State) (smokeLabelOfFace Face.tmmp) =
      some ((194 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0069_s0065_tmmp :
    graphSmokeNext (65 : State) (smokeLabelOfFace Face.tmmp) =
      some ((195 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0070_s0066_zm :
    graphSmokeNext (66 : State) (smokeLabelOfFace Face.zm) =
      some ((170 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0071_s0066_tmmp :
    graphSmokeNext (66 : State) (smokeLabelOfFace Face.tmmp) =
      some ((196 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0072_s0067_zm :
    graphSmokeNext (67 : State) (smokeLabelOfFace Face.zm) =
      some ((172 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0073_s0067_tmmp :
    graphSmokeNext (67 : State) (smokeLabelOfFace Face.tmmp) =
      some ((198 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0074_s0068_zm :
    graphSmokeNext (68 : State) (smokeLabelOfFace Face.zm) =
      some ((173 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0075_s0068_tmmp :
    graphSmokeNext (68 : State) (smokeLabelOfFace Face.tmmp) =
      some ((200 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0076_s0069_zm :
    graphSmokeNext (69 : State) (smokeLabelOfFace Face.zm) =
      some ((174 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0077_s0069_tmmp :
    graphSmokeNext (69 : State) (smokeLabelOfFace Face.tmmp) =
      some ((201 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0078_s0070_yp :
    graphSmokeNext (70 : State) (smokeLabelOfFace Face.yp) =
      some ((115 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0079_s0070_tmmp :
    graphSmokeNext (70 : State) (smokeLabelOfFace Face.tmmp) =
      some ((202 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0080_s0071_yp :
    graphSmokeNext (71 : State) (smokeLabelOfFace Face.yp) =
      some ((116 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0081_s0071_tmmp :
    graphSmokeNext (71 : State) (smokeLabelOfFace Face.tmmp) =
      some ((203 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0082_s0072_yp :
    graphSmokeNext (72 : State) (smokeLabelOfFace Face.yp) =
      some ((118 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0083_s0072_tmmp :
    graphSmokeNext (72 : State) (smokeLabelOfFace Face.tmmp) =
      some ((204 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0084_s0073_yp :
    graphSmokeNext (73 : State) (smokeLabelOfFace Face.yp) =
      some ((121 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0085_s0073_tmmp :
    graphSmokeNext (73 : State) (smokeLabelOfFace Face.tmmp) =
      some ((205 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0086_s0074_yp :
    graphSmokeNext (74 : State) (smokeLabelOfFace Face.yp) =
      some ((125 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0087_s0074_tmmp :
    graphSmokeNext (74 : State) (smokeLabelOfFace Face.tmmp) =
      some ((206 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0088_s0075_yp :
    graphSmokeNext (75 : State) (smokeLabelOfFace Face.yp) =
      some ((137 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0089_s0076_yp :
    graphSmokeNext (76 : State) (smokeLabelOfFace Face.yp) =
      some ((142 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0090_s0076_tmmp :
    graphSmokeNext (76 : State) (smokeLabelOfFace Face.tmmp) =
      some ((207 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0091_s0077_yp :
    graphSmokeNext (77 : State) (smokeLabelOfFace Face.yp) =
      some ((143 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0092_s0077_tmmp :
    graphSmokeNext (77 : State) (smokeLabelOfFace Face.tmmp) =
      some ((208 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0093_s0078_yp :
    graphSmokeNext (78 : State) (smokeLabelOfFace Face.yp) =
      some ((144 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0094_s0078_tmmp :
    graphSmokeNext (78 : State) (smokeLabelOfFace Face.tmmp) =
      some ((209 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0095_s0079_yp :
    graphSmokeNext (79 : State) (smokeLabelOfFace Face.yp) =
      some ((145 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0096_s0079_tmmp :
    graphSmokeNext (79 : State) (smokeLabelOfFace Face.tmmp) =
      some ((210 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0097_s0080_yp :
    graphSmokeNext (80 : State) (smokeLabelOfFace Face.yp) =
      some ((146 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0098_s0080_tmmp :
    graphSmokeNext (80 : State) (smokeLabelOfFace Face.tmmp) =
      some ((211 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0099_s0081_yp :
    graphSmokeNext (81 : State) (smokeLabelOfFace Face.yp) =
      some ((147 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0100_s0082_yp :
    graphSmokeNext (82 : State) (smokeLabelOfFace Face.yp) =
      some ((155 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0101_s0082_tmmp :
    graphSmokeNext (82 : State) (smokeLabelOfFace Face.tmmp) =
      some ((212 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0102_s0083_yp :
    graphSmokeNext (83 : State) (smokeLabelOfFace Face.yp) =
      some ((161 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0103_s0083_tmmp :
    graphSmokeNext (83 : State) (smokeLabelOfFace Face.tmmp) =
      some ((213 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0104_s0084_tmpm :
    graphSmokeNext (84 : State) (smokeLabelOfFace Face.tmpm) =
      some ((226 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0105_s0085_tmpm :
    graphSmokeNext (85 : State) (smokeLabelOfFace Face.tmpm) =
      some ((228 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0106_s0086_yp :
    graphSmokeNext (86 : State) (smokeLabelOfFace Face.yp) =
      some ((164 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0107_s0086_zp :
    graphSmokeNext (86 : State) (smokeLabelOfFace Face.zp) =
      some ((214 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0108_s0087_yp :
    graphSmokeNext (87 : State) (smokeLabelOfFace Face.yp) =
      some ((168 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0109_s0087_zp :
    graphSmokeNext (87 : State) (smokeLabelOfFace Face.zp) =
      some ((220 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0110_s0088_yp :
    graphSmokeNext (88 : State) (smokeLabelOfFace Face.yp) =
      some ((177 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0111_s0089_yp :
    graphSmokeNext (89 : State) (smokeLabelOfFace Face.yp) =
      some ((188 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0112_s0089_zm :
    graphSmokeNext (89 : State) (smokeLabelOfFace Face.zm) =
      some ((223 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0113_s0090_yp :
    graphSmokeNext (90 : State) (smokeLabelOfFace Face.yp) =
      some ((189 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0114_s0090_zm :
    graphSmokeNext (90 : State) (smokeLabelOfFace Face.zm) =
      some ((224 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0115_s0091_yp :
    graphSmokeNext (91 : State) (smokeLabelOfFace Face.yp) =
      some ((197 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0116_s0091_zm :
    graphSmokeNext (91 : State) (smokeLabelOfFace Face.zm) =
      some ((227 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0117_s0092_ym :
    graphSmokeNext (92 : State) (smokeLabelOfFace Face.ym) =
      some ((214 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0118_s0093_ym :
    graphSmokeNext (93 : State) (smokeLabelOfFace Face.ym) =
      some ((215 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0119_s0093_tmmp :
    graphSmokeNext (93 : State) (smokeLabelOfFace Face.tmmp) =
      some ((230 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0120_s0094_ym :
    graphSmokeNext (94 : State) (smokeLabelOfFace Face.ym) =
      some ((216 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0121_s0094_tmmp :
    graphSmokeNext (94 : State) (smokeLabelOfFace Face.tmmp) =
      some ((231 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0122_s0095_ym :
    graphSmokeNext (95 : State) (smokeLabelOfFace Face.ym) =
      some ((217 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0123_s0096_ym :
    graphSmokeNext (96 : State) (smokeLabelOfFace Face.ym) =
      some ((218 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0124_s0096_tmmp :
    graphSmokeNext (96 : State) (smokeLabelOfFace Face.tmmp) =
      some ((232 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0125_s0097_ym :
    graphSmokeNext (97 : State) (smokeLabelOfFace Face.ym) =
      some ((219 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0126_s0097_tmmp :
    graphSmokeNext (97 : State) (smokeLabelOfFace Face.tmmp) =
      some ((233 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0127_s0098_ym :
    graphSmokeNext (98 : State) (smokeLabelOfFace Face.ym) =
      some ((220 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0128_s0099_ym :
    graphSmokeNext (99 : State) (smokeLabelOfFace Face.ym) =
      some ((221 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0129_s0100_ym :
    graphSmokeNext (100 : State) (smokeLabelOfFace Face.ym) =
      some ((222 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0130_s0100_tmmp :
    graphSmokeNext (100 : State) (smokeLabelOfFace Face.tmmp) =
      some ((235 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0131_s0101_ym :
    graphSmokeNext (101 : State) (smokeLabelOfFace Face.ym) =
      some ((223 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0132_s0101_zp :
    graphSmokeNext (101 : State) (smokeLabelOfFace Face.zp) =
      some ((229 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0133_s0102_ym :
    graphSmokeNext (102 : State) (smokeLabelOfFace Face.ym) =
      some ((225 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0134_s0102_zp :
    graphSmokeNext (102 : State) (smokeLabelOfFace Face.zp) =
      some ((234 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0135_s0103_tppp :
    graphSmokeNext (103 : State) (smokeLabelOfFace Face.tppp) =
      some ((236 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0136_s0104_tppp :
    graphSmokeNext (104 : State) (smokeLabelOfFace Face.tppp) =
      some ((238 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0137_s0105_tppp :
    graphSmokeNext (105 : State) (smokeLabelOfFace Face.tppp) =
      some ((239 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0138_s0106_tppp :
    graphSmokeNext (106 : State) (smokeLabelOfFace Face.tppp) =
      some ((240 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0139_s0107_tppp :
    graphSmokeNext (107 : State) (smokeLabelOfFace Face.tppp) =
      some ((241 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0140_s0108_tppp :
    graphSmokeNext (108 : State) (smokeLabelOfFace Face.tppp) =
      some ((243 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0141_s0109_tppp :
    graphSmokeNext (109 : State) (smokeLabelOfFace Face.tppp) =
      some ((244 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0142_s0110_tpmm :
    graphSmokeNext (110 : State) (smokeLabelOfFace Face.tpmm) =
      some ((246 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0143_s0111_zp :
    graphSmokeNext (111 : State) (smokeLabelOfFace Face.zp) =
      some ((237 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0144_s0112_zp :
    graphSmokeNext (112 : State) (smokeLabelOfFace Face.zp) =
      some ((242 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0145_s0113_xm :
    graphSmokeNext (113 : State) (smokeLabelOfFace Face.xm) =
      some ((199 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0146_s0113_zm :
    graphSmokeNext (113 : State) (smokeLabelOfFace Face.zm) =
      some ((245 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0147_s0114_tmpp :
    graphSmokeNext (114 : State) (smokeLabelOfFace Face.tmpp) =
      some ((247 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0148_s0115_tmpp :
    graphSmokeNext (115 : State) (smokeLabelOfFace Face.tmpp) =
      some ((248 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0149_s0116_tmpp :
    graphSmokeNext (116 : State) (smokeLabelOfFace Face.tmpp) =
      some ((251 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0150_s0117_tmpp :
    graphSmokeNext (117 : State) (smokeLabelOfFace Face.tmpp) =
      some ((253 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0151_s0118_tmpp :
    graphSmokeNext (118 : State) (smokeLabelOfFace Face.tmpp) =
      some ((254 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0152_s0119_tmpp :
    graphSmokeNext (119 : State) (smokeLabelOfFace Face.tmpp) =
      some ((256 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0153_s0120_tmpp :
    graphSmokeNext (120 : State) (smokeLabelOfFace Face.tmpp) =
      some ((257 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0154_s0121_tmpp :
    graphSmokeNext (121 : State) (smokeLabelOfFace Face.tmpp) =
      some ((258 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0155_s0122_tmpp :
    graphSmokeNext (122 : State) (smokeLabelOfFace Face.tmpp) =
      some ((260 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0156_s0123_tmpp :
    graphSmokeNext (123 : State) (smokeLabelOfFace Face.tmpp) =
      some ((261 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0157_s0124_tmpp :
    graphSmokeNext (124 : State) (smokeLabelOfFace Face.tmpp) =
      some ((262 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0158_s0125_tmpp :
    graphSmokeNext (125 : State) (smokeLabelOfFace Face.tmpp) =
      some ((263 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0159_s0126_tmpp :
    graphSmokeNext (126 : State) (smokeLabelOfFace Face.tmpp) =
      some ((265 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0160_s0127_tmpp :
    graphSmokeNext (127 : State) (smokeLabelOfFace Face.tmpp) =
      some ((266 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0161_s0128_tmpp :
    graphSmokeNext (128 : State) (smokeLabelOfFace Face.tmpp) =
      some ((267 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0162_s0129_tmpp :
    graphSmokeNext (129 : State) (smokeLabelOfFace Face.tmpp) =
      some ((268 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0163_s0130_tmpp :
    graphSmokeNext (130 : State) (smokeLabelOfFace Face.tmpp) =
      some ((269 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0164_s0131_tmpp :
    graphSmokeNext (131 : State) (smokeLabelOfFace Face.tmpp) =
      some ((270 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0165_s0132_tmpp :
    graphSmokeNext (132 : State) (smokeLabelOfFace Face.tmpp) =
      some ((271 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0166_s0133_tmpp :
    graphSmokeNext (133 : State) (smokeLabelOfFace Face.tmpp) =
      some ((272 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0167_s0134_tmpp :
    graphSmokeNext (134 : State) (smokeLabelOfFace Face.tmpp) =
      some ((273 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0168_s0135_tmpp :
    graphSmokeNext (135 : State) (smokeLabelOfFace Face.tmpp) =
      some ((274 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0169_s0136_tmpp :
    graphSmokeNext (136 : State) (smokeLabelOfFace Face.tmpp) =
      some ((278 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0170_s0137_tmpp :
    graphSmokeNext (137 : State) (smokeLabelOfFace Face.tmpp) =
      some ((279 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0171_s0138_tmpp :
    graphSmokeNext (138 : State) (smokeLabelOfFace Face.tmpp) =
      some ((281 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0172_s0139_tmpp :
    graphSmokeNext (139 : State) (smokeLabelOfFace Face.tmpp) =
      some ((282 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0173_s0140_tmpp :
    graphSmokeNext (140 : State) (smokeLabelOfFace Face.tmpp) =
      some ((283 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0174_s0141_tmpp :
    graphSmokeNext (141 : State) (smokeLabelOfFace Face.tmpp) =
      some ((285 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0175_s0142_tmpp :
    graphSmokeNext (142 : State) (smokeLabelOfFace Face.tmpp) =
      some ((286 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0176_s0143_tmpp :
    graphSmokeNext (143 : State) (smokeLabelOfFace Face.tmpp) =
      some ((288 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0177_s0144_tmpp :
    graphSmokeNext (144 : State) (smokeLabelOfFace Face.tmpp) =
      some ((289 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0178_s0145_tmpp :
    graphSmokeNext (145 : State) (smokeLabelOfFace Face.tmpp) =
      some ((290 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0179_s0146_tmpp :
    graphSmokeNext (146 : State) (smokeLabelOfFace Face.tmpp) =
      some ((291 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0180_s0147_tmpp :
    graphSmokeNext (147 : State) (smokeLabelOfFace Face.tmpp) =
      some ((292 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0181_s0148_tmpp :
    graphSmokeNext (148 : State) (smokeLabelOfFace Face.tmpp) =
      some ((293 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0182_s0149_tmpp :
    graphSmokeNext (149 : State) (smokeLabelOfFace Face.tmpp) =
      some ((294 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0183_s0150_tmpp :
    graphSmokeNext (150 : State) (smokeLabelOfFace Face.tmpp) =
      some ((296 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0184_s0151_tmpp :
    graphSmokeNext (151 : State) (smokeLabelOfFace Face.tmpp) =
      some ((297 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0185_s0152_tmpp :
    graphSmokeNext (152 : State) (smokeLabelOfFace Face.tmpp) =
      some ((298 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0186_s0153_tmpp :
    graphSmokeNext (153 : State) (smokeLabelOfFace Face.tmpp) =
      some ((299 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0187_s0154_tmpp :
    graphSmokeNext (154 : State) (smokeLabelOfFace Face.tmpp) =
      some ((300 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0188_s0155_tmpp :
    graphSmokeNext (155 : State) (smokeLabelOfFace Face.tmpp) =
      some ((301 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0189_s0156_tmpp :
    graphSmokeNext (156 : State) (smokeLabelOfFace Face.tmpp) =
      some ((303 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0190_s0157_tmpp :
    graphSmokeNext (157 : State) (smokeLabelOfFace Face.tmpp) =
      some ((304 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0191_s0158_tmpp :
    graphSmokeNext (158 : State) (smokeLabelOfFace Face.tmpp) =
      some ((305 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0192_s0159_tmpp :
    graphSmokeNext (159 : State) (smokeLabelOfFace Face.tmpp) =
      some ((306 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0193_s0160_tmpp :
    graphSmokeNext (160 : State) (smokeLabelOfFace Face.tmpp) =
      some ((308 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0194_s0161_tmpp :
    graphSmokeNext (161 : State) (smokeLabelOfFace Face.tmpp) =
      some ((309 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0195_s0162_tmpp :
    graphSmokeNext (162 : State) (smokeLabelOfFace Face.tmpp) =
      some ((310 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0196_s0163_tmpp :
    graphSmokeNext (163 : State) (smokeLabelOfFace Face.tmpp) =
      some ((311 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0197_s0164_zp :
    graphSmokeNext (164 : State) (smokeLabelOfFace Face.zp) =
      some ((249 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0198_s0165_zp :
    graphSmokeNext (165 : State) (smokeLabelOfFace Face.zp) =
      some ((250 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0199_s0166_zp :
    graphSmokeNext (166 : State) (smokeLabelOfFace Face.zp) =
      some ((255 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0200_s0167_zp :
    graphSmokeNext (167 : State) (smokeLabelOfFace Face.zp) =
      some ((275 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0201_s0168_zp :
    graphSmokeNext (168 : State) (smokeLabelOfFace Face.zp) =
      some ((276 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0202_s0169_zp :
    graphSmokeNext (169 : State) (smokeLabelOfFace Face.zp) =
      some ((277 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0203_s0170_zp :
    graphSmokeNext (170 : State) (smokeLabelOfFace Face.zp) =
      some ((280 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0204_s0171_zp :
    graphSmokeNext (171 : State) (smokeLabelOfFace Face.zp) =
      some ((284 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0205_s0172_zp :
    graphSmokeNext (172 : State) (smokeLabelOfFace Face.zp) =
      some ((287 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0206_s0173_zp :
    graphSmokeNext (173 : State) (smokeLabelOfFace Face.zp) =
      some ((295 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0207_s0174_zp :
    graphSmokeNext (174 : State) (smokeLabelOfFace Face.zp) =
      some ((302 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0208_s0175_zp :
    graphSmokeNext (175 : State) (smokeLabelOfFace Face.zp) =
      some ((307 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0209_s0176_tmmm :
    graphSmokeNext (176 : State) (smokeLabelOfFace Face.tmmm) =
      some ((322 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0210_s0177_tmmm :
    graphSmokeNext (177 : State) (smokeLabelOfFace Face.tmmm) =
      some ((323 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0211_s0178_tmmm :
    graphSmokeNext (178 : State) (smokeLabelOfFace Face.tmmm) =
      some ((326 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0212_s0179_tmmm :
    graphSmokeNext (179 : State) (smokeLabelOfFace Face.tmmm) =
      some ((327 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0213_s0180_tmmm :
    graphSmokeNext (180 : State) (smokeLabelOfFace Face.tmmm) =
      some ((328 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0214_s0181_tmmm :
    graphSmokeNext (181 : State) (smokeLabelOfFace Face.tmmm) =
      some ((329 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0215_s0182_tmmm :
    graphSmokeNext (182 : State) (smokeLabelOfFace Face.tmmm) =
      some ((330 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0216_s0183_tmmm :
    graphSmokeNext (183 : State) (smokeLabelOfFace Face.tmmm) =
      some ((331 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0217_s0184_tmmm :
    graphSmokeNext (184 : State) (smokeLabelOfFace Face.tmmm) =
      some ((338 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0218_s0185_tmmm :
    graphSmokeNext (185 : State) (smokeLabelOfFace Face.tmmm) =
      some ((339 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0219_s0186_tmmm :
    graphSmokeNext (186 : State) (smokeLabelOfFace Face.tmmm) =
      some ((341 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0220_s0187_zm :
    graphSmokeNext (187 : State) (smokeLabelOfFace Face.zm) =
      some ((312 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0221_s0188_zm :
    graphSmokeNext (188 : State) (smokeLabelOfFace Face.zm) =
      some ((313 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0222_s0189_zm :
    graphSmokeNext (189 : State) (smokeLabelOfFace Face.zm) =
      some ((314 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0223_s0190_zm :
    graphSmokeNext (190 : State) (smokeLabelOfFace Face.zm) =
      some ((315 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0224_s0191_zm :
    graphSmokeNext (191 : State) (smokeLabelOfFace Face.zm) =
      some ((316 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0225_s0192_zm :
    graphSmokeNext (192 : State) (smokeLabelOfFace Face.zm) =
      some ((317 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0226_s0193_zm :
    graphSmokeNext (193 : State) (smokeLabelOfFace Face.zm) =
      some ((318 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0227_s0194_zm :
    graphSmokeNext (194 : State) (smokeLabelOfFace Face.zm) =
      some ((319 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0228_s0195_zm :
    graphSmokeNext (195 : State) (smokeLabelOfFace Face.zm) =
      some ((320 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0229_s0196_zm :
    graphSmokeNext (196 : State) (smokeLabelOfFace Face.zm) =
      some ((321 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0230_s0197_zm :
    graphSmokeNext (197 : State) (smokeLabelOfFace Face.zm) =
      some ((332 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0231_s0198_zm :
    graphSmokeNext (198 : State) (smokeLabelOfFace Face.zm) =
      some ((333 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0232_s0199_zm :
    graphSmokeNext (199 : State) (smokeLabelOfFace Face.zm) =
      some ((334 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0233_s0200_zm :
    graphSmokeNext (200 : State) (smokeLabelOfFace Face.zm) =
      some ((335 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0234_s0201_zm :
    graphSmokeNext (201 : State) (smokeLabelOfFace Face.zm) =
      some ((336 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0235_s0202_tmpp :
    graphSmokeNext (202 : State) (smokeLabelOfFace Face.tmpp) =
      some ((342 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0236_s0203_tmpp :
    graphSmokeNext (203 : State) (smokeLabelOfFace Face.tmpp) =
      some ((346 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0237_s0204_tmpp :
    graphSmokeNext (204 : State) (smokeLabelOfFace Face.tmpp) =
      some ((348 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0238_s0205_tmpp :
    graphSmokeNext (205 : State) (smokeLabelOfFace Face.tmpp) =
      some ((349 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0239_s0206_tmpp :
    graphSmokeNext (206 : State) (smokeLabelOfFace Face.tmpp) =
      some ((351 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0240_s0207_tmpp :
    graphSmokeNext (207 : State) (smokeLabelOfFace Face.tmpp) =
      some ((355 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0241_s0208_tmpp :
    graphSmokeNext (208 : State) (smokeLabelOfFace Face.tmpp) =
      some ((357 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0242_s0209_tmpp :
    graphSmokeNext (209 : State) (smokeLabelOfFace Face.tmpp) =
      some ((358 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0243_s0210_tmpp :
    graphSmokeNext (210 : State) (smokeLabelOfFace Face.tmpp) =
      some ((359 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0244_s0211_tmpp :
    graphSmokeNext (211 : State) (smokeLabelOfFace Face.tmpp) =
      some ((360 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0245_s0212_tmpp :
    graphSmokeNext (212 : State) (smokeLabelOfFace Face.tmpp) =
      some ((361 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0246_s0213_tmpp :
    graphSmokeNext (213 : State) (smokeLabelOfFace Face.tmpp) =
      some ((364 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0247_s0214_yp :
    graphSmokeNext (214 : State) (smokeLabelOfFace Face.yp) =
      some ((249 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0248_s0215_yp :
    graphSmokeNext (215 : State) (smokeLabelOfFace Face.yp) =
      some ((250 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0249_s0216_yp :
    graphSmokeNext (216 : State) (smokeLabelOfFace Face.yp) =
      some ((252 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0250_s0217_yp :
    graphSmokeNext (217 : State) (smokeLabelOfFace Face.yp) =
      some ((255 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0251_s0218_yp :
    graphSmokeNext (218 : State) (smokeLabelOfFace Face.yp) =
      some ((259 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0252_s0219_yp :
    graphSmokeNext (219 : State) (smokeLabelOfFace Face.yp) =
      some ((264 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0253_s0220_yp :
    graphSmokeNext (220 : State) (smokeLabelOfFace Face.yp) =
      some ((276 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0254_s0221_yp :
    graphSmokeNext (221 : State) (smokeLabelOfFace Face.yp) =
      some ((280 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0255_s0222_yp :
    graphSmokeNext (222 : State) (smokeLabelOfFace Face.yp) =
      some ((302 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0256_s0223_yp :
    graphSmokeNext (223 : State) (smokeLabelOfFace Face.yp) =
      some ((313 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0257_s0223_zp :
    graphSmokeNext (223 : State) (smokeLabelOfFace Face.zp) =
      some ((343 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0258_s0224_yp :
    graphSmokeNext (224 : State) (smokeLabelOfFace Face.yp) =
      some ((314 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0259_s0224_zp :
    graphSmokeNext (224 : State) (smokeLabelOfFace Face.zp) =
      some ((344 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0260_s0225_yp :
    graphSmokeNext (225 : State) (smokeLabelOfFace Face.yp) =
      some ((324 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0261_s0225_zp :
    graphSmokeNext (225 : State) (smokeLabelOfFace Face.zp) =
      some ((353 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0262_s0226_yp :
    graphSmokeNext (226 : State) (smokeLabelOfFace Face.yp) =
      some ((325 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0263_s0226_zp :
    graphSmokeNext (226 : State) (smokeLabelOfFace Face.zp) =
      some ((354 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0264_s0227_yp :
    graphSmokeNext (227 : State) (smokeLabelOfFace Face.yp) =
      some ((332 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0265_s0227_zp :
    graphSmokeNext (227 : State) (smokeLabelOfFace Face.zp) =
      some ((356 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0266_s0228_yp :
    graphSmokeNext (228 : State) (smokeLabelOfFace Face.yp) =
      some ((340 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0267_s0228_zp :
    graphSmokeNext (228 : State) (smokeLabelOfFace Face.zp) =
      some ((363 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0268_s0229_ym :
    graphSmokeNext (229 : State) (smokeLabelOfFace Face.ym) =
      some ((343 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0269_s0230_ym :
    graphSmokeNext (230 : State) (smokeLabelOfFace Face.ym) =
      some ((345 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0270_s0231_ym :
    graphSmokeNext (231 : State) (smokeLabelOfFace Face.ym) =
      some ((347 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0271_s0232_ym :
    graphSmokeNext (232 : State) (smokeLabelOfFace Face.ym) =
      some ((350 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0272_s0233_ym :
    graphSmokeNext (233 : State) (smokeLabelOfFace Face.ym) =
      some ((352 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0273_s0234_ym :
    graphSmokeNext (234 : State) (smokeLabelOfFace Face.ym) =
      some ((353 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0274_s0235_ym :
    graphSmokeNext (235 : State) (smokeLabelOfFace Face.ym) =
      some ((362 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0275_s0236_tpmp :
    graphSmokeNext (236 : State) (smokeLabelOfFace Face.tpmp) =
      some ((365 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0276_s0237_tpmp :
    graphSmokeNext (237 : State) (smokeLabelOfFace Face.tpmp) =
      some ((366 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0277_s0238_tpmp :
    graphSmokeNext (238 : State) (smokeLabelOfFace Face.tpmp) =
      some ((368 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0278_s0239_tpmp :
    graphSmokeNext (239 : State) (smokeLabelOfFace Face.tpmp) =
      some ((369 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0279_s0240_tpmp :
    graphSmokeNext (240 : State) (smokeLabelOfFace Face.tpmp) =
      some ((370 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0280_s0241_tpmp :
    graphSmokeNext (241 : State) (smokeLabelOfFace Face.tpmp) =
      some ((371 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0281_s0242_tpmp :
    graphSmokeNext (242 : State) (smokeLabelOfFace Face.tpmp) =
      some ((372 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0282_s0243_tpmp :
    graphSmokeNext (243 : State) (smokeLabelOfFace Face.tpmp) =
      some ((373 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0283_s0244_tpmp :
    graphSmokeNext (244 : State) (smokeLabelOfFace Face.tpmp) =
      some ((375 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0284_s0245_xm :
    graphSmokeNext (245 : State) (smokeLabelOfFace Face.xm) =
      some ((334 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0285_s0245_zp :
    graphSmokeNext (245 : State) (smokeLabelOfFace Face.zp) =
      some ((367 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0286_s0246_xm :
    graphSmokeNext (246 : State) (smokeLabelOfFace Face.xm) =
      some ((337 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0287_s0246_zp :
    graphSmokeNext (246 : State) (smokeLabelOfFace Face.zp) =
      some ((374 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0288_s0247_tmmp :
    graphSmokeNext (247 : State) (smokeLabelOfFace Face.tmmp) =
      some ((376 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0289_s0248_tmmp :
    graphSmokeNext (248 : State) (smokeLabelOfFace Face.tmmp) =
      some ((378 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0290_s0249_tmmp :
    graphSmokeNext (249 : State) (smokeLabelOfFace Face.tmmp) =
      some ((380 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0291_s0250_tmmp :
    graphSmokeNext (250 : State) (smokeLabelOfFace Face.tmmp) =
      some ((384 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0292_s0251_tmmp :
    graphSmokeNext (251 : State) (smokeLabelOfFace Face.tmmp) =
      some ((386 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0293_s0252_tmmp :
    graphSmokeNext (252 : State) (smokeLabelOfFace Face.tmmp) =
      some ((388 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0294_s0253_tmmp :
    graphSmokeNext (253 : State) (smokeLabelOfFace Face.tmmp) =
      some ((389 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0295_s0254_tmmp :
    graphSmokeNext (254 : State) (smokeLabelOfFace Face.tmmp) =
      some ((391 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0296_s0255_tmmp :
    graphSmokeNext (255 : State) (smokeLabelOfFace Face.tmmp) =
      some ((393 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0297_s0256_tmmp :
    graphSmokeNext (256 : State) (smokeLabelOfFace Face.tmmp) =
      some ((394 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0298_s0257_tmmp :
    graphSmokeNext (257 : State) (smokeLabelOfFace Face.tmmp) =
      some ((395 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0299_s0258_tmmp :
    graphSmokeNext (258 : State) (smokeLabelOfFace Face.tmmp) =
      some ((397 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0300_s0259_tmmp :
    graphSmokeNext (259 : State) (smokeLabelOfFace Face.tmmp) =
      some ((399 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0301_s0260_tmmp :
    graphSmokeNext (260 : State) (smokeLabelOfFace Face.tmmp) =
      some ((400 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0302_s0261_tmmp :
    graphSmokeNext (261 : State) (smokeLabelOfFace Face.tmmp) =
      some ((401 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0303_s0262_tmmp :
    graphSmokeNext (262 : State) (smokeLabelOfFace Face.tmmp) =
      some ((402 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0304_s0263_tmmp :
    graphSmokeNext (263 : State) (smokeLabelOfFace Face.tmmp) =
      some ((404 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0305_s0264_tmmp :
    graphSmokeNext (264 : State) (smokeLabelOfFace Face.tmmp) =
      some ((406 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0306_s0265_tmmp :
    graphSmokeNext (265 : State) (smokeLabelOfFace Face.tmmp) =
      some ((407 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0307_s0266_tmmp :
    graphSmokeNext (266 : State) (smokeLabelOfFace Face.tmmp) =
      some ((408 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0308_s0267_tmmp :
    graphSmokeNext (267 : State) (smokeLabelOfFace Face.tmmp) =
      some ((409 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0309_s0268_tmmp :
    graphSmokeNext (268 : State) (smokeLabelOfFace Face.tmmp) =
      some ((410 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0310_s0269_tmmp :
    graphSmokeNext (269 : State) (smokeLabelOfFace Face.tmmp) =
      some ((411 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0311_s0270_tmmp :
    graphSmokeNext (270 : State) (smokeLabelOfFace Face.tmmp) =
      some ((412 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0312_s0271_tmmp :
    graphSmokeNext (271 : State) (smokeLabelOfFace Face.tmmp) =
      some ((414 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0313_s0272_tmmp :
    graphSmokeNext (272 : State) (smokeLabelOfFace Face.tmmp) =
      some ((415 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0314_s0273_tmmp :
    graphSmokeNext (273 : State) (smokeLabelOfFace Face.tmmp) =
      some ((416 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0315_s0274_tmmp :
    graphSmokeNext (274 : State) (smokeLabelOfFace Face.tmmp) =
      some ((417 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0316_s0275_tmmp :
    graphSmokeNext (275 : State) (smokeLabelOfFace Face.tmmp) =
      some ((418 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0317_s0276_tmmp :
    graphSmokeNext (276 : State) (smokeLabelOfFace Face.tmmp) =
      some ((419 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0318_s0277_tmmp :
    graphSmokeNext (277 : State) (smokeLabelOfFace Face.tmmp) =
      some ((420 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0319_s0278_tmmp :
    graphSmokeNext (278 : State) (smokeLabelOfFace Face.tmmp) =
      some ((421 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0320_s0279_tmmp :
    graphSmokeNext (279 : State) (smokeLabelOfFace Face.tmmp) =
      some ((422 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0321_s0280_tmmp :
    graphSmokeNext (280 : State) (smokeLabelOfFace Face.tmmp) =
      some ((424 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0322_s0281_tmmp :
    graphSmokeNext (281 : State) (smokeLabelOfFace Face.tmmp) =
      some ((425 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0323_s0282_tmmp :
    graphSmokeNext (282 : State) (smokeLabelOfFace Face.tmmp) =
      some ((426 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0324_s0283_tmmp :
    graphSmokeNext (283 : State) (smokeLabelOfFace Face.tmmp) =
      some ((427 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0325_s0284_tmmp :
    graphSmokeNext (284 : State) (smokeLabelOfFace Face.tmmp) =
      some ((428 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0326_s0285_tmmp :
    graphSmokeNext (285 : State) (smokeLabelOfFace Face.tmmp) =
      some ((429 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0327_s0286_tmmp :
    graphSmokeNext (286 : State) (smokeLabelOfFace Face.tmmp) =
      some ((441 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0328_s0287_tmmp :
    graphSmokeNext (287 : State) (smokeLabelOfFace Face.tmmp) =
      some ((444 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0329_s0288_tmmp :
    graphSmokeNext (288 : State) (smokeLabelOfFace Face.tmmp) =
      some ((446 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0330_s0289_tmmp :
    graphSmokeNext (289 : State) (smokeLabelOfFace Face.tmmp) =
      some ((448 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0331_s0290_tmmp :
    graphSmokeNext (290 : State) (smokeLabelOfFace Face.tmmp) =
      some ((450 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0332_s0291_tmmp :
    graphSmokeNext (291 : State) (smokeLabelOfFace Face.tmmp) =
      some ((452 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0333_s0292_tmmp :
    graphSmokeNext (292 : State) (smokeLabelOfFace Face.tmmp) =
      some ((453 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0334_s0293_tmmp :
    graphSmokeNext (293 : State) (smokeLabelOfFace Face.tmmp) =
      some ((460 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0335_s0294_tmmp :
    graphSmokeNext (294 : State) (smokeLabelOfFace Face.tmmp) =
      some ((461 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0336_s0295_tmmp :
    graphSmokeNext (295 : State) (smokeLabelOfFace Face.tmmp) =
      some ((463 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0337_s0296_tmmp :
    graphSmokeNext (296 : State) (smokeLabelOfFace Face.tmmp) =
      some ((464 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0338_s0297_tmmp :
    graphSmokeNext (297 : State) (smokeLabelOfFace Face.tmmp) =
      some ((465 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0339_s0298_tmmp :
    graphSmokeNext (298 : State) (smokeLabelOfFace Face.tmmp) =
      some ((467 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0340_s0299_tmmp :
    graphSmokeNext (299 : State) (smokeLabelOfFace Face.tmmp) =
      some ((470 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0341_s0300_tmmp :
    graphSmokeNext (300 : State) (smokeLabelOfFace Face.tmmp) =
      some ((471 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0342_s0301_tmmp :
    graphSmokeNext (301 : State) (smokeLabelOfFace Face.tmmp) =
      some ((473 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0343_s0302_tmmp :
    graphSmokeNext (302 : State) (smokeLabelOfFace Face.tmmp) =
      some ((475 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0344_s0303_tmmp :
    graphSmokeNext (303 : State) (smokeLabelOfFace Face.tmmp) =
      some ((476 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0345_s0304_tmmp :
    graphSmokeNext (304 : State) (smokeLabelOfFace Face.tmmp) =
      some ((477 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0346_s0305_tmmp :
    graphSmokeNext (305 : State) (smokeLabelOfFace Face.tmmp) =
      some ((478 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0347_s0306_tmmp :
    graphSmokeNext (306 : State) (smokeLabelOfFace Face.tmmp) =
      some ((479 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0348_s0307_tmmp :
    graphSmokeNext (307 : State) (smokeLabelOfFace Face.tmmp) =
      some ((480 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0349_s0308_tmmp :
    graphSmokeNext (308 : State) (smokeLabelOfFace Face.tmmp) =
      some ((481 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0350_s0309_tmmp :
    graphSmokeNext (309 : State) (smokeLabelOfFace Face.tmmp) =
      some ((488 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0351_s0310_tmmp :
    graphSmokeNext (310 : State) (smokeLabelOfFace Face.tmmp) =
      some ((490 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0352_s0311_tmmp :
    graphSmokeNext (311 : State) (smokeLabelOfFace Face.tmmp) =
      some ((491 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0353_s0312_zp :
    graphSmokeNext (312 : State) (smokeLabelOfFace Face.zp) =
      some ((379 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0354_s0313_zp :
    graphSmokeNext (313 : State) (smokeLabelOfFace Face.zp) =
      some ((381 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0355_s0314_zp :
    graphSmokeNext (314 : State) (smokeLabelOfFace Face.zp) =
      some ((382 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0356_s0315_zp :
    graphSmokeNext (315 : State) (smokeLabelOfFace Face.zp) =
      some ((383 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0357_s0316_zp :
    graphSmokeNext (316 : State) (smokeLabelOfFace Face.zp) =
      some ((387 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0358_s0317_zp :
    graphSmokeNext (317 : State) (smokeLabelOfFace Face.zp) =
      some ((392 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0359_s0318_zp :
    graphSmokeNext (318 : State) (smokeLabelOfFace Face.zp) =
      some ((398 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0360_s0319_zp :
    graphSmokeNext (319 : State) (smokeLabelOfFace Face.zp) =
      some ((405 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0361_s0320_zp :
    graphSmokeNext (320 : State) (smokeLabelOfFace Face.zp) =
      some ((413 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0362_s0321_zp :
    graphSmokeNext (321 : State) (smokeLabelOfFace Face.zp) =
      some ((423 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0363_s0322_zp :
    graphSmokeNext (322 : State) (smokeLabelOfFace Face.zp) =
      some ((430 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0364_s0323_zp :
    graphSmokeNext (323 : State) (smokeLabelOfFace Face.zp) =
      some ((431 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0365_s0324_zp :
    graphSmokeNext (324 : State) (smokeLabelOfFace Face.zp) =
      some ((432 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0366_s0325_zp :
    graphSmokeNext (325 : State) (smokeLabelOfFace Face.zp) =
      some ((433 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0367_s0326_zp :
    graphSmokeNext (326 : State) (smokeLabelOfFace Face.zp) =
      some ((434 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0368_s0327_zp :
    graphSmokeNext (327 : State) (smokeLabelOfFace Face.zp) =
      some ((435 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0369_s0328_zp :
    graphSmokeNext (328 : State) (smokeLabelOfFace Face.zp) =
      some ((436 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0370_s0329_zp :
    graphSmokeNext (329 : State) (smokeLabelOfFace Face.zp) =
      some ((437 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0371_s0330_zp :
    graphSmokeNext (330 : State) (smokeLabelOfFace Face.zp) =
      some ((438 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0372_s0331_zp :
    graphSmokeNext (331 : State) (smokeLabelOfFace Face.zp) =
      some ((439 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0373_s0332_zp :
    graphSmokeNext (332 : State) (smokeLabelOfFace Face.zp) =
      some ((442 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0374_s0333_zp :
    graphSmokeNext (333 : State) (smokeLabelOfFace Face.zp) =
      some ((443 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0375_s0334_zp :
    graphSmokeNext (334 : State) (smokeLabelOfFace Face.zp) =
      some ((456 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0376_s0335_zp :
    graphSmokeNext (335 : State) (smokeLabelOfFace Face.zp) =
      some ((462 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0377_s0336_zp :
    graphSmokeNext (336 : State) (smokeLabelOfFace Face.zp) =
      some ((474 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0378_s0337_zp :
    graphSmokeNext (337 : State) (smokeLabelOfFace Face.zp) =
      some ((482 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0379_s0338_zp :
    graphSmokeNext (338 : State) (smokeLabelOfFace Face.zp) =
      some ((483 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0380_s0339_zp :
    graphSmokeNext (339 : State) (smokeLabelOfFace Face.zp) =
      some ((484 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0381_s0340_zp :
    graphSmokeNext (340 : State) (smokeLabelOfFace Face.zp) =
      some ((485 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0382_s0341_zp :
    graphSmokeNext (341 : State) (smokeLabelOfFace Face.zp) =
      some ((486 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0383_s0342_yp :
    graphSmokeNext (342 : State) (smokeLabelOfFace Face.yp) =
      some ((377 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0384_s0343_yp :
    graphSmokeNext (343 : State) (smokeLabelOfFace Face.yp) =
      some ((381 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0385_s0344_yp :
    graphSmokeNext (344 : State) (smokeLabelOfFace Face.yp) =
      some ((382 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0386_s0345_yp :
    graphSmokeNext (345 : State) (smokeLabelOfFace Face.yp) =
      some ((383 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0387_s0346_yp :
    graphSmokeNext (346 : State) (smokeLabelOfFace Face.yp) =
      some ((385 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0388_s0347_yp :
    graphSmokeNext (347 : State) (smokeLabelOfFace Face.yp) =
      some ((387 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0389_s0348_yp :
    graphSmokeNext (348 : State) (smokeLabelOfFace Face.yp) =
      some ((390 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0390_s0349_yp :
    graphSmokeNext (349 : State) (smokeLabelOfFace Face.yp) =
      some ((396 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0391_s0350_yp :
    graphSmokeNext (350 : State) (smokeLabelOfFace Face.yp) =
      some ((398 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0392_s0351_yp :
    graphSmokeNext (351 : State) (smokeLabelOfFace Face.yp) =
      some ((403 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0393_s0352_yp :
    graphSmokeNext (352 : State) (smokeLabelOfFace Face.yp) =
      some ((405 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0394_s0353_yp :
    graphSmokeNext (353 : State) (smokeLabelOfFace Face.yp) =
      some ((432 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0395_s0354_yp :
    graphSmokeNext (354 : State) (smokeLabelOfFace Face.yp) =
      some ((433 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0396_s0355_yp :
    graphSmokeNext (355 : State) (smokeLabelOfFace Face.yp) =
      some ((440 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0397_s0356_yp :
    graphSmokeNext (356 : State) (smokeLabelOfFace Face.yp) =
      some ((442 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0398_s0357_yp :
    graphSmokeNext (357 : State) (smokeLabelOfFace Face.yp) =
      some ((445 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0399_s0358_yp :
    graphSmokeNext (358 : State) (smokeLabelOfFace Face.yp) =
      some ((447 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0400_s0359_yp :
    graphSmokeNext (359 : State) (smokeLabelOfFace Face.yp) =
      some ((449 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0401_s0360_yp :
    graphSmokeNext (360 : State) (smokeLabelOfFace Face.yp) =
      some ((451 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0402_s0361_yp :
    graphSmokeNext (361 : State) (smokeLabelOfFace Face.yp) =
      some ((472 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0403_s0362_yp :
    graphSmokeNext (362 : State) (smokeLabelOfFace Face.yp) =
      some ((474 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0404_s0363_yp :
    graphSmokeNext (363 : State) (smokeLabelOfFace Face.yp) =
      some ((485 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0405_s0364_yp :
    graphSmokeNext (364 : State) (smokeLabelOfFace Face.yp) =
      some ((487 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0406_s0365_xm :
    graphSmokeNext (365 : State) (smokeLabelOfFace Face.xm) =
      some ((454 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0407_s0366_xm :
    graphSmokeNext (366 : State) (smokeLabelOfFace Face.xm) =
      some ((455 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0408_s0367_xm :
    graphSmokeNext (367 : State) (smokeLabelOfFace Face.xm) =
      some ((456 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0409_s0368_xm :
    graphSmokeNext (368 : State) (smokeLabelOfFace Face.xm) =
      some ((457 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0410_s0369_xm :
    graphSmokeNext (369 : State) (smokeLabelOfFace Face.xm) =
      some ((458 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0411_s0370_xm :
    graphSmokeNext (370 : State) (smokeLabelOfFace Face.xm) =
      some ((459 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0412_s0371_xm :
    graphSmokeNext (371 : State) (smokeLabelOfFace Face.xm) =
      some ((466 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0413_s0372_xm :
    graphSmokeNext (372 : State) (smokeLabelOfFace Face.xm) =
      some ((468 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0414_s0373_xm :
    graphSmokeNext (373 : State) (smokeLabelOfFace Face.xm) =
      some ((469 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0415_s0374_xm :
    graphSmokeNext (374 : State) (smokeLabelOfFace Face.xm) =
      some ((482 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0416_s0375_xm :
    graphSmokeNext (375 : State) (smokeLabelOfFace Face.xm) =
      some ((489 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0417_s0376_xp :
    graphSmokeNext (376 : State) (smokeLabelOfFace Face.xp) =
      some ((492 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0418_s0377_xp :
    graphSmokeNext (377 : State) (smokeLabelOfFace Face.xp) =
      some ((493 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0419_s0378_xp :
    graphSmokeNext (378 : State) (smokeLabelOfFace Face.xp) =
      some ((494 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0420_s0379_xp :
    graphSmokeNext (379 : State) (smokeLabelOfFace Face.xp) =
      some ((495 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0421_s0380_xp :
    graphSmokeNext (380 : State) (smokeLabelOfFace Face.xp) =
      some ((496 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0422_s0381_xp :
    graphSmokeNext (381 : State) (smokeLabelOfFace Face.xp) =
      some ((497 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0423_s0382_xp :
    graphSmokeNext (382 : State) (smokeLabelOfFace Face.xp) =
      some ((498 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0424_s0383_xp :
    graphSmokeNext (383 : State) (smokeLabelOfFace Face.xp) =
      some ((499 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0425_s0384_xp :
    graphSmokeNext (384 : State) (smokeLabelOfFace Face.xp) =
      some ((500 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0426_s0385_xp :
    graphSmokeNext (385 : State) (smokeLabelOfFace Face.xp) =
      some ((501 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0427_s0386_xp :
    graphSmokeNext (386 : State) (smokeLabelOfFace Face.xp) =
      some ((502 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0428_s0387_xp :
    graphSmokeNext (387 : State) (smokeLabelOfFace Face.xp) =
      some ((503 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0429_s0388_xp :
    graphSmokeNext (388 : State) (smokeLabelOfFace Face.xp) =
      some ((504 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0430_s0389_xp :
    graphSmokeNext (389 : State) (smokeLabelOfFace Face.xp) =
      some ((505 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0431_s0390_xp :
    graphSmokeNext (390 : State) (smokeLabelOfFace Face.xp) =
      some ((506 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0432_s0391_xp :
    graphSmokeNext (391 : State) (smokeLabelOfFace Face.xp) =
      some ((507 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0433_s0392_xp :
    graphSmokeNext (392 : State) (smokeLabelOfFace Face.xp) =
      some ((508 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0434_s0393_xp :
    graphSmokeNext (393 : State) (smokeLabelOfFace Face.xp) =
      some ((509 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0435_s0394_xp :
    graphSmokeNext (394 : State) (smokeLabelOfFace Face.xp) =
      some ((510 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0436_s0395_xp :
    graphSmokeNext (395 : State) (smokeLabelOfFace Face.xp) =
      some ((511 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0437_s0396_xp :
    graphSmokeNext (396 : State) (smokeLabelOfFace Face.xp) =
      some ((512 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0438_s0397_xp :
    graphSmokeNext (397 : State) (smokeLabelOfFace Face.xp) =
      some ((513 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0439_s0398_xp :
    graphSmokeNext (398 : State) (smokeLabelOfFace Face.xp) =
      some ((514 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0440_s0399_xp :
    graphSmokeNext (399 : State) (smokeLabelOfFace Face.xp) =
      some ((515 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0441_s0400_xp :
    graphSmokeNext (400 : State) (smokeLabelOfFace Face.xp) =
      some ((516 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0442_s0401_xp :
    graphSmokeNext (401 : State) (smokeLabelOfFace Face.xp) =
      some ((517 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0443_s0402_xp :
    graphSmokeNext (402 : State) (smokeLabelOfFace Face.xp) =
      some ((518 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0444_s0403_xp :
    graphSmokeNext (403 : State) (smokeLabelOfFace Face.xp) =
      some ((519 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0445_s0404_xp :
    graphSmokeNext (404 : State) (smokeLabelOfFace Face.xp) =
      some ((520 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0446_s0405_xp :
    graphSmokeNext (405 : State) (smokeLabelOfFace Face.xp) =
      some ((521 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0447_s0406_xp :
    graphSmokeNext (406 : State) (smokeLabelOfFace Face.xp) =
      some ((522 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0448_s0407_xp :
    graphSmokeNext (407 : State) (smokeLabelOfFace Face.xp) =
      some ((523 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0449_s0408_xp :
    graphSmokeNext (408 : State) (smokeLabelOfFace Face.xp) =
      some ((524 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0450_s0409_xp :
    graphSmokeNext (409 : State) (smokeLabelOfFace Face.xp) =
      some ((525 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0451_s0410_xp :
    graphSmokeNext (410 : State) (smokeLabelOfFace Face.xp) =
      some ((526 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0452_s0411_xp :
    graphSmokeNext (411 : State) (smokeLabelOfFace Face.xp) =
      some ((527 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0453_s0412_xp :
    graphSmokeNext (412 : State) (smokeLabelOfFace Face.xp) =
      some ((528 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0454_s0413_xp :
    graphSmokeNext (413 : State) (smokeLabelOfFace Face.xp) =
      some ((529 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0455_s0414_xp :
    graphSmokeNext (414 : State) (smokeLabelOfFace Face.xp) =
      some ((530 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0456_s0415_xp :
    graphSmokeNext (415 : State) (smokeLabelOfFace Face.xp) =
      some ((531 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0457_s0416_xp :
    graphSmokeNext (416 : State) (smokeLabelOfFace Face.xp) =
      some ((532 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0458_s0417_xp :
    graphSmokeNext (417 : State) (smokeLabelOfFace Face.xp) =
      some ((533 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0459_s0418_xp :
    graphSmokeNext (418 : State) (smokeLabelOfFace Face.xp) =
      some ((534 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0460_s0419_xp :
    graphSmokeNext (419 : State) (smokeLabelOfFace Face.xp) =
      some ((535 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0461_s0420_xp :
    graphSmokeNext (420 : State) (smokeLabelOfFace Face.xp) =
      some ((536 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0462_s0421_xp :
    graphSmokeNext (421 : State) (smokeLabelOfFace Face.xp) =
      some ((537 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0463_s0422_xp :
    graphSmokeNext (422 : State) (smokeLabelOfFace Face.xp) =
      some ((538 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0464_s0423_xp :
    graphSmokeNext (423 : State) (smokeLabelOfFace Face.xp) =
      some ((539 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0465_s0424_xp :
    graphSmokeNext (424 : State) (smokeLabelOfFace Face.xp) =
      some ((540 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0466_s0425_xp :
    graphSmokeNext (425 : State) (smokeLabelOfFace Face.xp) =
      some ((541 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0467_s0426_xp :
    graphSmokeNext (426 : State) (smokeLabelOfFace Face.xp) =
      some ((542 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0468_s0427_xp :
    graphSmokeNext (427 : State) (smokeLabelOfFace Face.xp) =
      some ((543 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0469_s0428_xp :
    graphSmokeNext (428 : State) (smokeLabelOfFace Face.xp) =
      some ((544 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0470_s0429_xp :
    graphSmokeNext (429 : State) (smokeLabelOfFace Face.xp) =
      some ((545 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0471_s0430_xp :
    graphSmokeNext (430 : State) (smokeLabelOfFace Face.xp) =
      some ((546 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0472_s0431_xp :
    graphSmokeNext (431 : State) (smokeLabelOfFace Face.xp) =
      some ((547 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0473_s0432_xp :
    graphSmokeNext (432 : State) (smokeLabelOfFace Face.xp) =
      some ((548 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0474_s0433_xp :
    graphSmokeNext (433 : State) (smokeLabelOfFace Face.xp) =
      some ((549 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0475_s0434_xp :
    graphSmokeNext (434 : State) (smokeLabelOfFace Face.xp) =
      some ((550 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0476_s0435_xp :
    graphSmokeNext (435 : State) (smokeLabelOfFace Face.xp) =
      some ((551 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0477_s0436_xp :
    graphSmokeNext (436 : State) (smokeLabelOfFace Face.xp) =
      some ((552 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0478_s0437_xp :
    graphSmokeNext (437 : State) (smokeLabelOfFace Face.xp) =
      some ((553 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0479_s0438_xp :
    graphSmokeNext (438 : State) (smokeLabelOfFace Face.xp) =
      some ((554 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0480_s0439_xp :
    graphSmokeNext (439 : State) (smokeLabelOfFace Face.xp) =
      some ((555 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0481_s0440_xp :
    graphSmokeNext (440 : State) (smokeLabelOfFace Face.xp) =
      some ((556 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0482_s0441_xp :
    graphSmokeNext (441 : State) (smokeLabelOfFace Face.xp) =
      some ((557 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0483_s0442_xp :
    graphSmokeNext (442 : State) (smokeLabelOfFace Face.xp) =
      some ((558 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0484_s0443_xp :
    graphSmokeNext (443 : State) (smokeLabelOfFace Face.xp) =
      some ((559 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0485_s0444_xp :
    graphSmokeNext (444 : State) (smokeLabelOfFace Face.xp) =
      some ((560 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0486_s0445_xp :
    graphSmokeNext (445 : State) (smokeLabelOfFace Face.xp) =
      some ((561 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0487_s0446_xp :
    graphSmokeNext (446 : State) (smokeLabelOfFace Face.xp) =
      some ((562 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0488_s0447_xp :
    graphSmokeNext (447 : State) (smokeLabelOfFace Face.xp) =
      some ((563 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0489_s0448_xp :
    graphSmokeNext (448 : State) (smokeLabelOfFace Face.xp) =
      some ((564 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0490_s0449_xp :
    graphSmokeNext (449 : State) (smokeLabelOfFace Face.xp) =
      some ((565 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0491_s0450_xp :
    graphSmokeNext (450 : State) (smokeLabelOfFace Face.xp) =
      some ((566 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0492_s0451_xp :
    graphSmokeNext (451 : State) (smokeLabelOfFace Face.xp) =
      some ((567 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0493_s0452_xp :
    graphSmokeNext (452 : State) (smokeLabelOfFace Face.xp) =
      some ((568 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0494_s0453_xp :
    graphSmokeNext (453 : State) (smokeLabelOfFace Face.xp) =
      some ((569 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0495_s0454_xp :
    graphSmokeNext (454 : State) (smokeLabelOfFace Face.xp) =
      some ((570 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0496_s0455_xp :
    graphSmokeNext (455 : State) (smokeLabelOfFace Face.xp) =
      some ((571 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0497_s0456_xp :
    graphSmokeNext (456 : State) (smokeLabelOfFace Face.xp) =
      some ((572 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0498_s0457_xp :
    graphSmokeNext (457 : State) (smokeLabelOfFace Face.xp) =
      some ((573 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0499_s0458_xp :
    graphSmokeNext (458 : State) (smokeLabelOfFace Face.xp) =
      some ((574 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0500_s0459_xp :
    graphSmokeNext (459 : State) (smokeLabelOfFace Face.xp) =
      some ((575 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0501_s0460_xp :
    graphSmokeNext (460 : State) (smokeLabelOfFace Face.xp) =
      some ((576 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0502_s0461_xp :
    graphSmokeNext (461 : State) (smokeLabelOfFace Face.xp) =
      some ((577 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0503_s0462_xp :
    graphSmokeNext (462 : State) (smokeLabelOfFace Face.xp) =
      some ((578 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0504_s0463_xp :
    graphSmokeNext (463 : State) (smokeLabelOfFace Face.xp) =
      some ((579 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0505_s0464_xp :
    graphSmokeNext (464 : State) (smokeLabelOfFace Face.xp) =
      some ((580 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0506_s0465_xp :
    graphSmokeNext (465 : State) (smokeLabelOfFace Face.xp) =
      some ((581 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0507_s0466_xp :
    graphSmokeNext (466 : State) (smokeLabelOfFace Face.xp) =
      some ((582 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0508_s0467_xp :
    graphSmokeNext (467 : State) (smokeLabelOfFace Face.xp) =
      some ((583 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0509_s0468_xp :
    graphSmokeNext (468 : State) (smokeLabelOfFace Face.xp) =
      some ((584 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0510_s0469_xp :
    graphSmokeNext (469 : State) (smokeLabelOfFace Face.xp) =
      some ((585 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0511_s0470_xp :
    graphSmokeNext (470 : State) (smokeLabelOfFace Face.xp) =
      some ((586 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0512_s0471_xp :
    graphSmokeNext (471 : State) (smokeLabelOfFace Face.xp) =
      some ((587 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0513_s0472_xp :
    graphSmokeNext (472 : State) (smokeLabelOfFace Face.xp) =
      some ((588 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0514_s0473_xp :
    graphSmokeNext (473 : State) (smokeLabelOfFace Face.xp) =
      some ((589 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0515_s0474_xp :
    graphSmokeNext (474 : State) (smokeLabelOfFace Face.xp) =
      some ((590 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0516_s0475_xp :
    graphSmokeNext (475 : State) (smokeLabelOfFace Face.xp) =
      some ((591 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0517_s0476_xp :
    graphSmokeNext (476 : State) (smokeLabelOfFace Face.xp) =
      some ((592 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0518_s0477_xp :
    graphSmokeNext (477 : State) (smokeLabelOfFace Face.xp) =
      some ((593 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0519_s0478_xp :
    graphSmokeNext (478 : State) (smokeLabelOfFace Face.xp) =
      some ((594 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0520_s0479_xp :
    graphSmokeNext (479 : State) (smokeLabelOfFace Face.xp) =
      some ((595 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0521_s0480_xp :
    graphSmokeNext (480 : State) (smokeLabelOfFace Face.xp) =
      some ((596 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0522_s0481_xp :
    graphSmokeNext (481 : State) (smokeLabelOfFace Face.xp) =
      some ((597 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0523_s0482_xp :
    graphSmokeNext (482 : State) (smokeLabelOfFace Face.xp) =
      some ((598 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0524_s0483_xp :
    graphSmokeNext (483 : State) (smokeLabelOfFace Face.xp) =
      some ((599 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0525_s0484_xp :
    graphSmokeNext (484 : State) (smokeLabelOfFace Face.xp) =
      some ((600 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0526_s0485_xp :
    graphSmokeNext (485 : State) (smokeLabelOfFace Face.xp) =
      some ((601 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0527_s0486_xp :
    graphSmokeNext (486 : State) (smokeLabelOfFace Face.xp) =
      some ((602 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0528_s0487_xp :
    graphSmokeNext (487 : State) (smokeLabelOfFace Face.xp) =
      some ((603 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0529_s0488_xp :
    graphSmokeNext (488 : State) (smokeLabelOfFace Face.xp) =
      some ((604 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0530_s0489_xp :
    graphSmokeNext (489 : State) (smokeLabelOfFace Face.xp) =
      some ((605 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0531_s0490_xp :
    graphSmokeNext (490 : State) (smokeLabelOfFace Face.xp) =
      some ((606 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0532_s0491_xp :
    graphSmokeNext (491 : State) (smokeLabelOfFace Face.xp) =
      some ((607 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0533_s0608_ym :
    graphSmokeNext (608 : State) (smokeLabelOfFace Face.ym) =
      some ((610 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0534_s0608_zm :
    graphSmokeNext (608 : State) (smokeLabelOfFace Face.zm) =
      some ((611 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0535_s0608_tmmm :
    graphSmokeNext (608 : State) (smokeLabelOfFace Face.tmmm) =
      some ((612 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0536_s0609_xm :
    graphSmokeNext (609 : State) (smokeLabelOfFace Face.xm) =
      some ((610 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0537_s0609_yp :
    graphSmokeNext (609 : State) (smokeLabelOfFace Face.yp) =
      some ((613 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0538_s0609_zm :
    graphSmokeNext (609 : State) (smokeLabelOfFace Face.zm) =
      some ((614 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0539_s0610_yp :
    graphSmokeNext (610 : State) (smokeLabelOfFace Face.yp) =
      some ((615 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0540_s0610_zm :
    graphSmokeNext (610 : State) (smokeLabelOfFace Face.zm) =
      some ((616 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0541_s0610_tmpm :
    graphSmokeNext (610 : State) (smokeLabelOfFace Face.tmpm) =
      some ((618 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0542_s0611_ym :
    graphSmokeNext (611 : State) (smokeLabelOfFace Face.ym) =
      some ((616 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0543_s0611_zp :
    graphSmokeNext (611 : State) (smokeLabelOfFace Face.zp) =
      some ((619 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0544_s0611_tmmp :
    graphSmokeNext (611 : State) (smokeLabelOfFace Face.tmmp) =
      some ((621 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0545_s0612_yp :
    graphSmokeNext (612 : State) (smokeLabelOfFace Face.yp) =
      some ((617 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0546_s0612_zm :
    graphSmokeNext (612 : State) (smokeLabelOfFace Face.zm) =
      some ((620 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0547_s0612_tpmm :
    graphSmokeNext (612 : State) (smokeLabelOfFace Face.tpmm) =
      some ((622 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0548_s0613_xm :
    graphSmokeNext (613 : State) (smokeLabelOfFace Face.xm) =
      some ((615 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0549_s0613_zm :
    graphSmokeNext (613 : State) (smokeLabelOfFace Face.zm) =
      some ((623 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0550_s0613_tpmm :
    graphSmokeNext (613 : State) (smokeLabelOfFace Face.tpmm) =
      some ((624 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0551_s0614_xm :
    graphSmokeNext (614 : State) (smokeLabelOfFace Face.xm) =
      some ((616 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0552_s0615_zm :
    graphSmokeNext (615 : State) (smokeLabelOfFace Face.zm) =
      some ((625 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0553_s0615_tmmm :
    graphSmokeNext (615 : State) (smokeLabelOfFace Face.tmmm) =
      some ((627 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0554_s0616_yp :
    graphSmokeNext (616 : State) (smokeLabelOfFace Face.yp) =
      some ((625 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0555_s0616_zp :
    graphSmokeNext (616 : State) (smokeLabelOfFace Face.zp) =
      some ((628 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0556_s0616_tmpp :
    graphSmokeNext (616 : State) (smokeLabelOfFace Face.tmpp) =
      some ((632 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0557_s0617_ym :
    graphSmokeNext (617 : State) (smokeLabelOfFace Face.ym) =
      some ((626 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0558_s0617_zm :
    graphSmokeNext (617 : State) (smokeLabelOfFace Face.zm) =
      some ((629 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0559_s0617_tppm :
    graphSmokeNext (617 : State) (smokeLabelOfFace Face.tppm) =
      some ((633 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0560_s0618_zm :
    graphSmokeNext (618 : State) (smokeLabelOfFace Face.zm) =
      some ((631 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0561_s0618_tppm :
    graphSmokeNext (618 : State) (smokeLabelOfFace Face.tppm) =
      some ((635 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0562_s0619_ym :
    graphSmokeNext (619 : State) (smokeLabelOfFace Face.ym) =
      some ((628 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0563_s0619_tmmm :
    graphSmokeNext (619 : State) (smokeLabelOfFace Face.tmmm) =
      some ((637 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0564_s0620_yp :
    graphSmokeNext (620 : State) (smokeLabelOfFace Face.yp) =
      some ((629 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0565_s0620_zp :
    graphSmokeNext (620 : State) (smokeLabelOfFace Face.zp) =
      some ((636 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0566_s0620_tpmp :
    graphSmokeNext (620 : State) (smokeLabelOfFace Face.tpmp) =
      some ((638 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0567_s0621_yp :
    graphSmokeNext (621 : State) (smokeLabelOfFace Face.yp) =
      some ((630 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0568_s0621_tpmp :
    graphSmokeNext (621 : State) (smokeLabelOfFace Face.tpmp) =
      some ((640 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0569_s0622_yp :
    graphSmokeNext (622 : State) (smokeLabelOfFace Face.yp) =
      some ((634 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0570_s0622_zp :
    graphSmokeNext (622 : State) (smokeLabelOfFace Face.zp) =
      some ((639 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0571_s0622_tppm :
    graphSmokeNext (622 : State) (smokeLabelOfFace Face.tppm) =
      some ((641 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0572_s0623_xm :
    graphSmokeNext (623 : State) (smokeLabelOfFace Face.xm) =
      some ((625 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0573_s0623_zp :
    graphSmokeNext (623 : State) (smokeLabelOfFace Face.zp) =
      some ((642 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0574_s0623_tpmp :
    graphSmokeNext (623 : State) (smokeLabelOfFace Face.tpmp) =
      some ((643 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0575_s0624_zm :
    graphSmokeNext (624 : State) (smokeLabelOfFace Face.zm) =
      some ((644 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0576_s0624_tmmm :
    graphSmokeNext (624 : State) (smokeLabelOfFace Face.tmmm) =
      some ((645 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0577_s0625_zp :
    graphSmokeNext (625 : State) (smokeLabelOfFace Face.zp) =
      some ((646 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_0578_s0625_tmmp :
    graphSmokeNext (625 : State) (smokeLabelOfFace Face.tmmp) =
      some ((650 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0579_s0626_zm :
    graphSmokeNext (626 : State) (smokeLabelOfFace Face.zm) =
      some ((647 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0580_s0626_tpmm :
    graphSmokeNext (626 : State) (smokeLabelOfFace Face.tpmm) =
      some ((652 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0581_s0627_zm :
    graphSmokeNext (627 : State) (smokeLabelOfFace Face.zm) =
      some ((648 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0582_s0627_tpmm :
    graphSmokeNext (627 : State) (smokeLabelOfFace Face.tpmm) =
      some ((654 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0583_s0628_yp :
    graphSmokeNext (628 : State) (smokeLabelOfFace Face.yp) =
      some ((646 : State), (-73 : Int)) := by
  rfl

theorem emitted_transition_0584_s0628_tmpm :
    graphSmokeNext (628 : State) (smokeLabelOfFace Face.tmpm) =
      some ((658 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0585_s0629_ym :
    graphSmokeNext (629 : State) (smokeLabelOfFace Face.ym) =
      some ((647 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0586_s0629_zp :
    graphSmokeNext (629 : State) (smokeLabelOfFace Face.zp) =
      some ((655 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0587_s0630_ym :
    graphSmokeNext (630 : State) (smokeLabelOfFace Face.ym) =
      some ((649 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0588_s0630_tppp :
    graphSmokeNext (630 : State) (smokeLabelOfFace Face.tppp) =
      some ((660 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0589_s0631_zp :
    graphSmokeNext (631 : State) (smokeLabelOfFace Face.zp) =
      some ((657 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0590_s0632_tppp :
    graphSmokeNext (632 : State) (smokeLabelOfFace Face.tppp) =
      some ((662 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0591_s0633_zp :
    graphSmokeNext (633 : State) (smokeLabelOfFace Face.zp) =
      some ((659 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0592_s0633_tpmm :
    graphSmokeNext (633 : State) (smokeLabelOfFace Face.tpmm) =
      some ((666 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0593_s0634_ym :
    graphSmokeNext (634 : State) (smokeLabelOfFace Face.ym) =
      some ((651 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0594_s0634_zp :
    graphSmokeNext (634 : State) (smokeLabelOfFace Face.zp) =
      some ((661 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0595_s0635_zp :
    graphSmokeNext (635 : State) (smokeLabelOfFace Face.zp) =
      some ((664 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0596_s0635_tpmm :
    graphSmokeNext (635 : State) (smokeLabelOfFace Face.tpmm) =
      some ((667 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0597_s0636_yp :
    graphSmokeNext (636 : State) (smokeLabelOfFace Face.yp) =
      some ((655 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0598_s0636_tpmm :
    graphSmokeNext (636 : State) (smokeLabelOfFace Face.tpmm) =
      some ((669 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0599_s0637_yp :
    graphSmokeNext (637 : State) (smokeLabelOfFace Face.yp) =
      some ((656 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0600_s0637_tpmm :
    graphSmokeNext (637 : State) (smokeLabelOfFace Face.tpmm) =
      some ((670 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0601_s0638_tppp :
    graphSmokeNext (638 : State) (smokeLabelOfFace Face.tppp) =
      some ((671 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0602_s0639_yp :
    graphSmokeNext (639 : State) (smokeLabelOfFace Face.yp) =
      some ((661 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0603_s0639_zm :
    graphSmokeNext (639 : State) (smokeLabelOfFace Face.zm) =
      some ((668 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0604_s0640_yp :
    graphSmokeNext (640 : State) (smokeLabelOfFace Face.yp) =
      some ((663 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0605_s0640_tppp :
    graphSmokeNext (640 : State) (smokeLabelOfFace Face.tppp) =
      some ((672 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0606_s0641_yp :
    graphSmokeNext (641 : State) (smokeLabelOfFace Face.yp) =
      some ((665 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0607_s0641_zp :
    graphSmokeNext (641 : State) (smokeLabelOfFace Face.zp) =
      some ((673 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0608_s0641_tpmp :
    graphSmokeNext (641 : State) (smokeLabelOfFace Face.tpmp) =
      some ((674 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0609_s0642_xm :
    graphSmokeNext (642 : State) (smokeLabelOfFace Face.xm) =
      some ((646 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_0610_s0642_tpmm :
    graphSmokeNext (642 : State) (smokeLabelOfFace Face.tpmm) =
      some ((676 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0611_s0643_tmmp :
    graphSmokeNext (643 : State) (smokeLabelOfFace Face.tmmp) =
      some ((678 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0612_s0644_zp :
    graphSmokeNext (644 : State) (smokeLabelOfFace Face.zp) =
      some ((675 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0613_s0644_tmmp :
    graphSmokeNext (644 : State) (smokeLabelOfFace Face.tmmp) =
      some ((679 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0614_s0645_xm :
    graphSmokeNext (645 : State) (smokeLabelOfFace Face.xm) =
      some ((653 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0615_s0645_zp :
    graphSmokeNext (645 : State) (smokeLabelOfFace Face.zp) =
      some ((677 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0616_s0645_tmpm :
    graphSmokeNext (645 : State) (smokeLabelOfFace Face.tmpm) =
      some ((680 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0617_s0646_tmmm :
    graphSmokeNext (646 : State) (smokeLabelOfFace Face.tmmm) =
      some ((683 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0618_s0647_zp :
    graphSmokeNext (647 : State) (smokeLabelOfFace Face.zp) =
      some ((681 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0619_s0647_tpmp :
    graphSmokeNext (647 : State) (smokeLabelOfFace Face.tpmp) =
      some ((684 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0620_s0648_zp :
    graphSmokeNext (648 : State) (smokeLabelOfFace Face.zp) =
      some ((682 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0621_s0648_tpmp :
    graphSmokeNext (648 : State) (smokeLabelOfFace Face.tpmp) =
      some ((685 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0622_s0649_tpmp :
    graphSmokeNext (649 : State) (smokeLabelOfFace Face.tpmp) =
      some ((691 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0623_s0650_tpmp :
    graphSmokeNext (650 : State) (smokeLabelOfFace Face.tpmp) =
      some ((693 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0624_s0651_zp :
    graphSmokeNext (651 : State) (smokeLabelOfFace Face.zp) =
      some ((686 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0625_s0651_tppm :
    graphSmokeNext (651 : State) (smokeLabelOfFace Face.tppm) =
      some ((695 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0626_s0652_zp :
    graphSmokeNext (652 : State) (smokeLabelOfFace Face.zp) =
      some ((687 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0627_s0652_tppm :
    graphSmokeNext (652 : State) (smokeLabelOfFace Face.tppm) =
      some ((697 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0628_s0653_zp :
    graphSmokeNext (653 : State) (smokeLabelOfFace Face.zp) =
      some ((688 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0629_s0653_tppm :
    graphSmokeNext (653 : State) (smokeLabelOfFace Face.tppm) =
      some ((698 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0630_s0654_zp :
    graphSmokeNext (654 : State) (smokeLabelOfFace Face.zp) =
      some ((689 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0631_s0654_tppm :
    graphSmokeNext (654 : State) (smokeLabelOfFace Face.tppm) =
      some ((699 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0632_s0655_ym :
    graphSmokeNext (655 : State) (smokeLabelOfFace Face.ym) =
      some ((681 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0633_s0656_ym :
    graphSmokeNext (656 : State) (smokeLabelOfFace Face.ym) =
      some ((682 : State), (-51 : Int)) := by
  rfl

theorem emitted_transition_0634_s0656_tppm :
    graphSmokeNext (656 : State) (smokeLabelOfFace Face.tppm) =
      some ((701 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0635_s0657_tppm :
    graphSmokeNext (657 : State) (smokeLabelOfFace Face.tppm) =
      some ((705 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0636_s0658_tppm :
    graphSmokeNext (658 : State) (smokeLabelOfFace Face.tppm) =
      some ((706 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0637_s0659_zm :
    graphSmokeNext (659 : State) (smokeLabelOfFace Face.zm) =
      some ((700 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0638_s0659_tpmp :
    graphSmokeNext (659 : State) (smokeLabelOfFace Face.tpmp) =
      some ((707 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0639_s0660_tpmp :
    graphSmokeNext (660 : State) (smokeLabelOfFace Face.tpmp) =
      some ((709 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0640_s0661_ym :
    graphSmokeNext (661 : State) (smokeLabelOfFace Face.ym) =
      some ((686 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0641_s0661_zm :
    graphSmokeNext (661 : State) (smokeLabelOfFace Face.zm) =
      some ((702 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0642_s0661_tpmp :
    graphSmokeNext (661 : State) (smokeLabelOfFace Face.tpmp) =
      some ((712 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0643_s0662_tpmp :
    graphSmokeNext (662 : State) (smokeLabelOfFace Face.tpmp) =
      some ((713 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0644_s0663_ym :
    graphSmokeNext (663 : State) (smokeLabelOfFace Face.ym) =
      some ((690 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0645_s0664_zm :
    graphSmokeNext (664 : State) (smokeLabelOfFace Face.zm) =
      some ((704 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0646_s0665_ym :
    graphSmokeNext (665 : State) (smokeLabelOfFace Face.ym) =
      some ((694 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0647_s0665_zp :
    graphSmokeNext (665 : State) (smokeLabelOfFace Face.zp) =
      some ((710 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0648_s0666_ym :
    graphSmokeNext (666 : State) (smokeLabelOfFace Face.ym) =
      some ((696 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0649_s0666_zp :
    graphSmokeNext (666 : State) (smokeLabelOfFace Face.zp) =
      some ((711 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0650_s0667_zp :
    graphSmokeNext (667 : State) (smokeLabelOfFace Face.zp) =
      some ((714 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0651_s0667_tppp :
    graphSmokeNext (667 : State) (smokeLabelOfFace Face.tppp) =
      some ((716 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0652_s0668_yp :
    graphSmokeNext (668 : State) (smokeLabelOfFace Face.yp) =
      some ((702 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0653_s0668_tppm :
    graphSmokeNext (668 : State) (smokeLabelOfFace Face.tppm) =
      some ((718 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0654_s0669_tppm :
    graphSmokeNext (669 : State) (smokeLabelOfFace Face.tppm) =
      some ((719 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0655_s0670_yp :
    graphSmokeNext (670 : State) (smokeLabelOfFace Face.yp) =
      some ((703 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0656_s0670_tppm :
    graphSmokeNext (670 : State) (smokeLabelOfFace Face.tppm) =
      some ((720 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0657_s0671_tpmm :
    graphSmokeNext (671 : State) (smokeLabelOfFace Face.tpmm) =
      some ((721 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0658_s0672_yp :
    graphSmokeNext (672 : State) (smokeLabelOfFace Face.yp) =
      some ((708 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0659_s0672_tpmm :
    graphSmokeNext (672 : State) (smokeLabelOfFace Face.tpmm) =
      some ((723 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0660_s0673_yp :
    graphSmokeNext (673 : State) (smokeLabelOfFace Face.yp) =
      some ((710 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0661_s0673_zm :
    graphSmokeNext (673 : State) (smokeLabelOfFace Face.zm) =
      some ((717 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0662_s0674_yp :
    graphSmokeNext (674 : State) (smokeLabelOfFace Face.yp) =
      some ((715 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0663_s0674_zp :
    graphSmokeNext (674 : State) (smokeLabelOfFace Face.zp) =
      some ((722 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0664_s0674_tmpm :
    graphSmokeNext (674 : State) (smokeLabelOfFace Face.tmpm) =
      some ((724 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0665_s0675_tmmm :
    graphSmokeNext (675 : State) (smokeLabelOfFace Face.tmmm) =
      some ((726 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0666_s0676_tmmm :
    graphSmokeNext (676 : State) (smokeLabelOfFace Face.tmmm) =
      some ((727 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0667_s0677_xm :
    graphSmokeNext (677 : State) (smokeLabelOfFace Face.xm) =
      some ((688 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0668_s0677_zm :
    graphSmokeNext (677 : State) (smokeLabelOfFace Face.zm) =
      some ((725 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0669_s0678_xm :
    graphSmokeNext (678 : State) (smokeLabelOfFace Face.xm) =
      some ((692 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0670_s0678_tmpp :
    graphSmokeNext (678 : State) (smokeLabelOfFace Face.tmpp) =
      some ((729 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0671_s0679_tmpp :
    graphSmokeNext (679 : State) (smokeLabelOfFace Face.tmpp) =
      some ((730 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0672_s0680_zp :
    graphSmokeNext (680 : State) (smokeLabelOfFace Face.zp) =
      some ((728 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0673_s0680_tmmp :
    graphSmokeNext (680 : State) (smokeLabelOfFace Face.tmmp) =
      some ((731 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0674_s0681_tpmm :
    graphSmokeNext (681 : State) (smokeLabelOfFace Face.tpmm) =
      some ((734 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0675_s0682_tpmm :
    graphSmokeNext (682 : State) (smokeLabelOfFace Face.tpmm) =
      some ((738 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0676_s0683_tpmm :
    graphSmokeNext (683 : State) (smokeLabelOfFace Face.tpmm) =
      some ((740 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0677_s0684_tppp :
    graphSmokeNext (684 : State) (smokeLabelOfFace Face.tppp) =
      some ((741 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0678_s0685_tppp :
    graphSmokeNext (685 : State) (smokeLabelOfFace Face.tppp) =
      some ((742 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0679_s0686_zm :
    graphSmokeNext (686 : State) (smokeLabelOfFace Face.zm) =
      some ((732 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0680_s0687_zm :
    graphSmokeNext (687 : State) (smokeLabelOfFace Face.zm) =
      some ((733 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0681_s0688_zm :
    graphSmokeNext (688 : State) (smokeLabelOfFace Face.zm) =
      some ((735 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0682_s0689_zm :
    graphSmokeNext (689 : State) (smokeLabelOfFace Face.zm) =
      some ((737 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0683_s0690_tppp :
    graphSmokeNext (690 : State) (smokeLabelOfFace Face.tppp) =
      some ((745 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0684_s0691_tppp :
    graphSmokeNext (691 : State) (smokeLabelOfFace Face.tppp) =
      some ((747 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0685_s0692_tppp :
    graphSmokeNext (692 : State) (smokeLabelOfFace Face.tppp) =
      some ((748 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0686_s0693_tppp :
    graphSmokeNext (693 : State) (smokeLabelOfFace Face.tppp) =
      some ((749 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0687_s0694_zp :
    graphSmokeNext (694 : State) (smokeLabelOfFace Face.zp) =
      some ((750 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0688_s0694_tpmp :
    graphSmokeNext (694 : State) (smokeLabelOfFace Face.tpmp) =
      some ((757 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0689_s0695_zp :
    graphSmokeNext (695 : State) (smokeLabelOfFace Face.zp) =
      some ((751 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0690_s0695_tpmp :
    graphSmokeNext (695 : State) (smokeLabelOfFace Face.tpmp) =
      some ((758 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0691_s0696_zp :
    graphSmokeNext (696 : State) (smokeLabelOfFace Face.zp) =
      some ((752 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0692_s0696_tpmp :
    graphSmokeNext (696 : State) (smokeLabelOfFace Face.tpmp) =
      some ((759 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0693_s0697_zp :
    graphSmokeNext (697 : State) (smokeLabelOfFace Face.zp) =
      some ((753 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0694_s0697_tpmp :
    graphSmokeNext (697 : State) (smokeLabelOfFace Face.tpmp) =
      some ((760 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0695_s0698_zp :
    graphSmokeNext (698 : State) (smokeLabelOfFace Face.zp) =
      some ((754 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0696_s0698_tpmp :
    graphSmokeNext (698 : State) (smokeLabelOfFace Face.tpmp) =
      some ((761 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0697_s0699_zp :
    graphSmokeNext (699 : State) (smokeLabelOfFace Face.zp) =
      some ((755 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0698_s0699_tpmp :
    graphSmokeNext (699 : State) (smokeLabelOfFace Face.tpmp) =
      some ((762 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0699_s0700_tpmm :
    graphSmokeNext (700 : State) (smokeLabelOfFace Face.tpmm) =
      some ((766 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0700_s0701_tpmm :
    graphSmokeNext (701 : State) (smokeLabelOfFace Face.tpmm) =
      some ((768 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0701_s0702_ym :
    graphSmokeNext (702 : State) (smokeLabelOfFace Face.ym) =
      some ((732 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0702_s0703_ym :
    graphSmokeNext (703 : State) (smokeLabelOfFace Face.ym) =
      some ((737 : State), (45 : Int)) := by
  rfl

theorem emitted_transition_0703_s0704_tpmm :
    graphSmokeNext (704 : State) (smokeLabelOfFace Face.tpmm) =
      some ((770 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0704_s0705_tpmm :
    graphSmokeNext (705 : State) (smokeLabelOfFace Face.tpmm) =
      some ((771 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0705_s0706_tpmm :
    graphSmokeNext (706 : State) (smokeLabelOfFace Face.tpmm) =
      some ((772 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0706_s0707_ym :
    graphSmokeNext (707 : State) (smokeLabelOfFace Face.ym) =
      some ((743 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0707_s0708_ym :
    graphSmokeNext (708 : State) (smokeLabelOfFace Face.ym) =
      some ((744 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0708_s0709_ym :
    graphSmokeNext (709 : State) (smokeLabelOfFace Face.ym) =
      some ((746 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0709_s0710_ym :
    graphSmokeNext (710 : State) (smokeLabelOfFace Face.ym) =
      some ((750 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0710_s0710_zm :
    graphSmokeNext (710 : State) (smokeLabelOfFace Face.zm) =
      some ((763 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0711_s0711_ym :
    graphSmokeNext (711 : State) (smokeLabelOfFace Face.ym) =
      some ((752 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0712_s0711_zm :
    graphSmokeNext (711 : State) (smokeLabelOfFace Face.zm) =
      some ((765 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0713_s0712_tppm :
    graphSmokeNext (712 : State) (smokeLabelOfFace Face.tppm) =
      some ((775 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0714_s0713_tppm :
    graphSmokeNext (713 : State) (smokeLabelOfFace Face.tppm) =
      some ((778 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0715_s0714_zm :
    graphSmokeNext (714 : State) (smokeLabelOfFace Face.zm) =
      some ((769 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0716_s0715_ym :
    graphSmokeNext (715 : State) (smokeLabelOfFace Face.ym) =
      some ((756 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0717_s0715_zp :
    graphSmokeNext (715 : State) (smokeLabelOfFace Face.zp) =
      some ((774 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0718_s0716_zp :
    graphSmokeNext (716 : State) (smokeLabelOfFace Face.zp) =
      some ((777 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0719_s0716_tmmm :
    graphSmokeNext (716 : State) (smokeLabelOfFace Face.tmmm) =
      some ((779 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0720_s0717_yp :
    graphSmokeNext (717 : State) (smokeLabelOfFace Face.yp) =
      some ((763 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0721_s0717_tpmp :
    graphSmokeNext (717 : State) (smokeLabelOfFace Face.tpmp) =
      some ((782 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0722_s0718_yp :
    graphSmokeNext (718 : State) (smokeLabelOfFace Face.yp) =
      some ((764 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0723_s0718_tpmp :
    graphSmokeNext (718 : State) (smokeLabelOfFace Face.tpmp) =
      some ((783 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0724_s0719_tpmp :
    graphSmokeNext (719 : State) (smokeLabelOfFace Face.tpmp) =
      some ((784 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0725_s0720_yp :
    graphSmokeNext (720 : State) (smokeLabelOfFace Face.yp) =
      some ((767 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0726_s0720_tpmp :
    graphSmokeNext (720 : State) (smokeLabelOfFace Face.tpmp) =
      some ((785 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0727_s0721_yp :
    graphSmokeNext (721 : State) (smokeLabelOfFace Face.yp) =
      some ((773 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0728_s0721_tmpp :
    graphSmokeNext (721 : State) (smokeLabelOfFace Face.tmpp) =
      some ((786 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0729_s0722_yp :
    graphSmokeNext (722 : State) (smokeLabelOfFace Face.yp) =
      some ((774 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0730_s0722_zm :
    graphSmokeNext (722 : State) (smokeLabelOfFace Face.zm) =
      some ((781 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0731_s0723_yp :
    graphSmokeNext (723 : State) (smokeLabelOfFace Face.yp) =
      some ((776 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0732_s0723_tmpp :
    graphSmokeNext (723 : State) (smokeLabelOfFace Face.tmpp) =
      some ((788 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0733_s0724_yp :
    graphSmokeNext (724 : State) (smokeLabelOfFace Face.yp) =
      some ((780 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0734_s0724_zp :
    graphSmokeNext (724 : State) (smokeLabelOfFace Face.zp) =
      some ((787 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0735_s0724_tppp :
    graphSmokeNext (724 : State) (smokeLabelOfFace Face.tppp) =
      some ((789 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0736_s0725_xm :
    graphSmokeNext (725 : State) (smokeLabelOfFace Face.xm) =
      some ((735 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0737_s0725_tmpm :
    graphSmokeNext (725 : State) (smokeLabelOfFace Face.tmpm) =
      some ((791 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0738_s0726_xm :
    graphSmokeNext (726 : State) (smokeLabelOfFace Face.xm) =
      some ((736 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0739_s0726_tmpm :
    graphSmokeNext (726 : State) (smokeLabelOfFace Face.tmpm) =
      some ((792 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0740_s0727_xm :
    graphSmokeNext (727 : State) (smokeLabelOfFace Face.xm) =
      some ((739 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0741_s0727_tmpm :
    graphSmokeNext (727 : State) (smokeLabelOfFace Face.tmpm) =
      some ((793 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0742_s0728_zm :
    graphSmokeNext (728 : State) (smokeLabelOfFace Face.zm) =
      some ((790 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0743_s0729_tmmm :
    graphSmokeNext (729 : State) (smokeLabelOfFace Face.tmmm) =
      some ((795 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0744_s0730_tmmm :
    graphSmokeNext (730 : State) (smokeLabelOfFace Face.tmmm) =
      some ((796 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0745_s0731_zp :
    graphSmokeNext (731 : State) (smokeLabelOfFace Face.zp) =
      some ((794 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0746_s0731_tppm :
    graphSmokeNext (731 : State) (smokeLabelOfFace Face.tppm) =
      some ((797 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0747_s0732_tppm :
    graphSmokeNext (732 : State) (smokeLabelOfFace Face.tppm) =
      some ((800 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0748_s0733_tppm :
    graphSmokeNext (733 : State) (smokeLabelOfFace Face.tppm) =
      some ((804 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0749_s0734_tppm :
    graphSmokeNext (734 : State) (smokeLabelOfFace Face.tppm) =
      some ((805 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0750_s0735_tppm :
    graphSmokeNext (735 : State) (smokeLabelOfFace Face.tppm) =
      some ((807 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0751_s0736_tppm :
    graphSmokeNext (736 : State) (smokeLabelOfFace Face.tppm) =
      some ((808 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0752_s0737_tppm :
    graphSmokeNext (737 : State) (smokeLabelOfFace Face.tppm) =
      some ((810 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0753_s0738_tppm :
    graphSmokeNext (738 : State) (smokeLabelOfFace Face.tppm) =
      some ((812 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0754_s0739_tppm :
    graphSmokeNext (739 : State) (smokeLabelOfFace Face.tppm) =
      some ((813 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0755_s0740_tppm :
    graphSmokeNext (740 : State) (smokeLabelOfFace Face.tppm) =
      some ((814 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0756_s0741_tpmm :
    graphSmokeNext (741 : State) (smokeLabelOfFace Face.tpmm) =
      some ((816 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0757_s0742_tpmm :
    graphSmokeNext (742 : State) (smokeLabelOfFace Face.tpmm) =
      some ((817 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0758_s0743_tpmm :
    graphSmokeNext (743 : State) (smokeLabelOfFace Face.tpmm) =
      some ((821 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0759_s0744_tpmm :
    graphSmokeNext (744 : State) (smokeLabelOfFace Face.tpmm) =
      some ((824 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0760_s0745_tpmm :
    graphSmokeNext (745 : State) (smokeLabelOfFace Face.tpmm) =
      some ((825 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0761_s0746_tpmm :
    graphSmokeNext (746 : State) (smokeLabelOfFace Face.tpmm) =
      some ((826 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0762_s0747_tpmm :
    graphSmokeNext (747 : State) (smokeLabelOfFace Face.tpmm) =
      some ((827 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0763_s0748_tpmm :
    graphSmokeNext (748 : State) (smokeLabelOfFace Face.tpmm) =
      some ((830 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0764_s0749_tpmm :
    graphSmokeNext (749 : State) (smokeLabelOfFace Face.tpmm) =
      some ((831 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0765_s0750_zm :
    graphSmokeNext (750 : State) (smokeLabelOfFace Face.zm) =
      some ((798 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0766_s0751_zm :
    graphSmokeNext (751 : State) (smokeLabelOfFace Face.zm) =
      some ((799 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0767_s0752_zm :
    graphSmokeNext (752 : State) (smokeLabelOfFace Face.zm) =
      some ((801 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0768_s0753_zm :
    graphSmokeNext (753 : State) (smokeLabelOfFace Face.zm) =
      some ((803 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0769_s0754_zm :
    graphSmokeNext (754 : State) (smokeLabelOfFace Face.zm) =
      some ((806 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0770_s0755_zm :
    graphSmokeNext (755 : State) (smokeLabelOfFace Face.zm) =
      some ((809 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0771_s0756_zp :
    graphSmokeNext (756 : State) (smokeLabelOfFace Face.zp) =
      some ((818 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0772_s0756_tmpm :
    graphSmokeNext (756 : State) (smokeLabelOfFace Face.tmpm) =
      some ((833 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0773_s0757_tmpm :
    graphSmokeNext (757 : State) (smokeLabelOfFace Face.tmpm) =
      some ((834 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0774_s0758_tmpm :
    graphSmokeNext (758 : State) (smokeLabelOfFace Face.tmpm) =
      some ((835 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0775_s0759_zp :
    graphSmokeNext (759 : State) (smokeLabelOfFace Face.zp) =
      some ((820 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0776_s0759_tmpm :
    graphSmokeNext (759 : State) (smokeLabelOfFace Face.tmpm) =
      some ((836 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0777_s0760_zp :
    graphSmokeNext (760 : State) (smokeLabelOfFace Face.zp) =
      some ((822 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0778_s0760_tmpm :
    graphSmokeNext (760 : State) (smokeLabelOfFace Face.tmpm) =
      some ((837 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0779_s0761_zp :
    graphSmokeNext (761 : State) (smokeLabelOfFace Face.zp) =
      some ((828 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0780_s0761_tmpm :
    graphSmokeNext (761 : State) (smokeLabelOfFace Face.tmpm) =
      some ((838 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0781_s0762_zp :
    graphSmokeNext (762 : State) (smokeLabelOfFace Face.zp) =
      some ((829 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0782_s0762_tmpm :
    graphSmokeNext (762 : State) (smokeLabelOfFace Face.tmpm) =
      some ((839 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0783_s0763_ym :
    graphSmokeNext (763 : State) (smokeLabelOfFace Face.ym) =
      some ((798 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0784_s0764_ym :
    graphSmokeNext (764 : State) (smokeLabelOfFace Face.ym) =
      some ((799 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0785_s0765_ym :
    graphSmokeNext (765 : State) (smokeLabelOfFace Face.ym) =
      some ((801 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0786_s0766_ym :
    graphSmokeNext (766 : State) (smokeLabelOfFace Face.ym) =
      some ((802 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0787_s0767_ym :
    graphSmokeNext (767 : State) (smokeLabelOfFace Face.ym) =
      some ((809 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0788_s0768_ym :
    graphSmokeNext (768 : State) (smokeLabelOfFace Face.ym) =
      some ((811 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0789_s0769_tppp :
    graphSmokeNext (769 : State) (smokeLabelOfFace Face.tppp) =
      some ((846 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0790_s0770_tppp :
    graphSmokeNext (770 : State) (smokeLabelOfFace Face.tppp) =
      some ((847 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0791_s0771_tppp :
    graphSmokeNext (771 : State) (smokeLabelOfFace Face.tppp) =
      some ((848 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0792_s0772_tppp :
    graphSmokeNext (772 : State) (smokeLabelOfFace Face.tppp) =
      some ((850 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0793_s0773_ym :
    graphSmokeNext (773 : State) (smokeLabelOfFace Face.ym) =
      some ((815 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0794_s0774_ym :
    graphSmokeNext (774 : State) (smokeLabelOfFace Face.ym) =
      some ((818 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0795_s0774_zm :
    graphSmokeNext (774 : State) (smokeLabelOfFace Face.zm) =
      some ((840 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0796_s0775_ym :
    graphSmokeNext (775 : State) (smokeLabelOfFace Face.ym) =
      some ((819 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0797_s0775_zm :
    graphSmokeNext (775 : State) (smokeLabelOfFace Face.zm) =
      some ((843 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0798_s0776_ym :
    graphSmokeNext (776 : State) (smokeLabelOfFace Face.ym) =
      some ((823 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0799_s0777_zm :
    graphSmokeNext (777 : State) (smokeLabelOfFace Face.zm) =
      some ((845 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0800_s0778_tmmp :
    graphSmokeNext (778 : State) (smokeLabelOfFace Face.tmmp) =
      some ((852 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0801_s0779_zp :
    graphSmokeNext (779 : State) (smokeLabelOfFace Face.zp) =
      some ((851 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0802_s0779_tpmp :
    graphSmokeNext (779 : State) (smokeLabelOfFace Face.tpmp) =
      some ((856 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0803_s0780_ym :
    graphSmokeNext (780 : State) (smokeLabelOfFace Face.ym) =
      some ((832 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0804_s0780_zp :
    graphSmokeNext (780 : State) (smokeLabelOfFace Face.zp) =
      some ((853 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0805_s0781_yp :
    graphSmokeNext (781 : State) (smokeLabelOfFace Face.yp) =
      some ((840 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0806_s0781_tmpm :
    graphSmokeNext (781 : State) (smokeLabelOfFace Face.tmpm) =
      some ((858 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0807_s0782_yp :
    graphSmokeNext (782 : State) (smokeLabelOfFace Face.yp) =
      some ((841 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0808_s0782_tmpm :
    graphSmokeNext (782 : State) (smokeLabelOfFace Face.tmpm) =
      some ((859 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0809_s0783_yp :
    graphSmokeNext (783 : State) (smokeLabelOfFace Face.yp) =
      some ((842 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0810_s0783_tmpm :
    graphSmokeNext (783 : State) (smokeLabelOfFace Face.tmpm) =
      some ((860 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0811_s0784_yp :
    graphSmokeNext (784 : State) (smokeLabelOfFace Face.yp) =
      some ((844 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0812_s0784_tmpm :
    graphSmokeNext (784 : State) (smokeLabelOfFace Face.tmpm) =
      some ((861 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0813_s0785_yp :
    graphSmokeNext (785 : State) (smokeLabelOfFace Face.yp) =
      some ((849 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0814_s0785_tmpm :
    graphSmokeNext (785 : State) (smokeLabelOfFace Face.tmpm) =
      some ((862 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0815_s0786_tppm :
    graphSmokeNext (786 : State) (smokeLabelOfFace Face.tppm) =
      some ((864 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0816_s0787_yp :
    graphSmokeNext (787 : State) (smokeLabelOfFace Face.yp) =
      some ((853 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0817_s0787_zm :
    graphSmokeNext (787 : State) (smokeLabelOfFace Face.zm) =
      some ((857 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0818_s0788_yp :
    graphSmokeNext (788 : State) (smokeLabelOfFace Face.yp) =
      some ((854 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0819_s0788_tppm :
    graphSmokeNext (788 : State) (smokeLabelOfFace Face.tppm) =
      some ((865 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0820_s0789_ym :
    graphSmokeNext (789 : State) (smokeLabelOfFace Face.ym) =
      some ((855 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0821_s0789_zp :
    graphSmokeNext (789 : State) (smokeLabelOfFace Face.zp) =
      some ((863 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0822_s0789_tmpp :
    graphSmokeNext (789 : State) (smokeLabelOfFace Face.tmpp) =
      some ((866 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0823_s0790_tmmp :
    graphSmokeNext (790 : State) (smokeLabelOfFace Face.tmmp) =
      some ((868 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0824_s0791_tmmp :
    graphSmokeNext (791 : State) (smokeLabelOfFace Face.tmmp) =
      some ((869 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0825_s0792_tmmp :
    graphSmokeNext (792 : State) (smokeLabelOfFace Face.tmmp) =
      some ((870 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0826_s0793_tmmp :
    graphSmokeNext (793 : State) (smokeLabelOfFace Face.tmmp) =
      some ((871 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0827_s0794_zm :
    graphSmokeNext (794 : State) (smokeLabelOfFace Face.zm) =
      some ((867 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0828_s0795_tppp :
    graphSmokeNext (795 : State) (smokeLabelOfFace Face.tppp) =
      some ((872 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0829_s0796_tppp :
    graphSmokeNext (796 : State) (smokeLabelOfFace Face.tppp) =
      some ((873 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0830_s0797_zp :
    graphSmokeNext (797 : State) (smokeLabelOfFace Face.zp) =
      some ((874 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0831_s0797_tmpp :
    graphSmokeNext (797 : State) (smokeLabelOfFace Face.tmpp) =
      some ((875 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0832_s0798_tpmp :
    graphSmokeNext (798 : State) (smokeLabelOfFace Face.tpmp) =
      some ((878 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0833_s0799_tpmp :
    graphSmokeNext (799 : State) (smokeLabelOfFace Face.tpmp) =
      some ((880 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0834_s0800_tpmp :
    graphSmokeNext (800 : State) (smokeLabelOfFace Face.tpmp) =
      some ((882 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0835_s0801_tpmp :
    graphSmokeNext (801 : State) (smokeLabelOfFace Face.tpmp) =
      some ((884 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0836_s0802_tpmp :
    graphSmokeNext (802 : State) (smokeLabelOfFace Face.tpmp) =
      some ((886 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0837_s0803_tpmp :
    graphSmokeNext (803 : State) (smokeLabelOfFace Face.tpmp) =
      some ((888 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0838_s0804_tpmp :
    graphSmokeNext (804 : State) (smokeLabelOfFace Face.tpmp) =
      some ((889 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0839_s0805_tpmp :
    graphSmokeNext (805 : State) (smokeLabelOfFace Face.tpmp) =
      some ((890 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0840_s0806_tpmp :
    graphSmokeNext (806 : State) (smokeLabelOfFace Face.tpmp) =
      some ((892 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0841_s0807_tpmp :
    graphSmokeNext (807 : State) (smokeLabelOfFace Face.tpmp) =
      some ((893 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0842_s0808_tpmp :
    graphSmokeNext (808 : State) (smokeLabelOfFace Face.tpmp) =
      some ((894 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0843_s0809_tpmp :
    graphSmokeNext (809 : State) (smokeLabelOfFace Face.tpmp) =
      some ((896 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0844_s0810_tpmp :
    graphSmokeNext (810 : State) (smokeLabelOfFace Face.tpmp) =
      some ((897 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0845_s0811_tpmp :
    graphSmokeNext (811 : State) (smokeLabelOfFace Face.tpmp) =
      some ((898 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0846_s0812_tpmp :
    graphSmokeNext (812 : State) (smokeLabelOfFace Face.tpmp) =
      some ((899 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0847_s0813_tpmp :
    graphSmokeNext (813 : State) (smokeLabelOfFace Face.tpmp) =
      some ((900 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0848_s0814_tpmp :
    graphSmokeNext (814 : State) (smokeLabelOfFace Face.tpmp) =
      some ((901 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0849_s0815_tmpp :
    graphSmokeNext (815 : State) (smokeLabelOfFace Face.tmpp) =
      some ((902 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0850_s0816_tmpp :
    graphSmokeNext (816 : State) (smokeLabelOfFace Face.tmpp) =
      some ((903 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0851_s0817_tmpp :
    graphSmokeNext (817 : State) (smokeLabelOfFace Face.tmpp) =
      some ((904 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0852_s0818_zm :
    graphSmokeNext (818 : State) (smokeLabelOfFace Face.zm) =
      some ((876 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0853_s0819_zm :
    graphSmokeNext (819 : State) (smokeLabelOfFace Face.zm) =
      some ((881 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0854_s0820_zm :
    graphSmokeNext (820 : State) (smokeLabelOfFace Face.zm) =
      some ((883 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0855_s0821_zm :
    graphSmokeNext (821 : State) (smokeLabelOfFace Face.zm) =
      some ((885 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0856_s0822_zm :
    graphSmokeNext (822 : State) (smokeLabelOfFace Face.zm) =
      some ((887 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0857_s0823_tmpp :
    graphSmokeNext (823 : State) (smokeLabelOfFace Face.tmpp) =
      some ((914 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0858_s0824_tmpp :
    graphSmokeNext (824 : State) (smokeLabelOfFace Face.tmpp) =
      some ((915 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0859_s0825_tmpp :
    graphSmokeNext (825 : State) (smokeLabelOfFace Face.tmpp) =
      some ((916 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0860_s0826_tmpp :
    graphSmokeNext (826 : State) (smokeLabelOfFace Face.tmpp) =
      some ((917 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0861_s0827_tmpp :
    graphSmokeNext (827 : State) (smokeLabelOfFace Face.tmpp) =
      some ((918 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0862_s0828_zm :
    graphSmokeNext (828 : State) (smokeLabelOfFace Face.zm) =
      some ((891 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0863_s0829_zm :
    graphSmokeNext (829 : State) (smokeLabelOfFace Face.zm) =
      some ((895 : State), (90 : Int)) := by
  rfl

theorem emitted_transition_0864_s0830_tmpp :
    graphSmokeNext (830 : State) (smokeLabelOfFace Face.tmpp) =
      some ((919 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0865_s0831_tmpp :
    graphSmokeNext (831 : State) (smokeLabelOfFace Face.tmpp) =
      some ((920 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0866_s0832_zp :
    graphSmokeNext (832 : State) (smokeLabelOfFace Face.zp) =
      some ((905 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0867_s0832_tppp :
    graphSmokeNext (832 : State) (smokeLabelOfFace Face.tppp) =
      some ((922 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0868_s0833_zp :
    graphSmokeNext (833 : State) (smokeLabelOfFace Face.zp) =
      some ((906 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0869_s0833_tppp :
    graphSmokeNext (833 : State) (smokeLabelOfFace Face.tppp) =
      some ((923 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0870_s0834_zp :
    graphSmokeNext (834 : State) (smokeLabelOfFace Face.zp) =
      some ((907 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0871_s0834_tppp :
    graphSmokeNext (834 : State) (smokeLabelOfFace Face.tppp) =
      some ((924 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0872_s0835_zp :
    graphSmokeNext (835 : State) (smokeLabelOfFace Face.zp) =
      some ((908 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0873_s0835_tppp :
    graphSmokeNext (835 : State) (smokeLabelOfFace Face.tppp) =
      some ((925 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0874_s0836_zp :
    graphSmokeNext (836 : State) (smokeLabelOfFace Face.zp) =
      some ((909 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0875_s0836_tppp :
    graphSmokeNext (836 : State) (smokeLabelOfFace Face.tppp) =
      some ((926 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0876_s0837_zp :
    graphSmokeNext (837 : State) (smokeLabelOfFace Face.zp) =
      some ((910 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0877_s0837_tppp :
    graphSmokeNext (837 : State) (smokeLabelOfFace Face.tppp) =
      some ((927 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0878_s0838_zp :
    graphSmokeNext (838 : State) (smokeLabelOfFace Face.zp) =
      some ((911 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0879_s0838_tppp :
    graphSmokeNext (838 : State) (smokeLabelOfFace Face.tppp) =
      some ((929 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0880_s0839_zp :
    graphSmokeNext (839 : State) (smokeLabelOfFace Face.zp) =
      some ((912 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0881_s0839_tppp :
    graphSmokeNext (839 : State) (smokeLabelOfFace Face.tppp) =
      some ((930 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0882_s0840_ym :
    graphSmokeNext (840 : State) (smokeLabelOfFace Face.ym) =
      some ((876 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0883_s0841_ym :
    graphSmokeNext (841 : State) (smokeLabelOfFace Face.ym) =
      some ((877 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0884_s0842_ym :
    graphSmokeNext (842 : State) (smokeLabelOfFace Face.ym) =
      some ((879 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0885_s0843_ym :
    graphSmokeNext (843 : State) (smokeLabelOfFace Face.ym) =
      some ((881 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0886_s0844_ym :
    graphSmokeNext (844 : State) (smokeLabelOfFace Face.ym) =
      some ((887 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0887_s0845_tmmm :
    graphSmokeNext (845 : State) (smokeLabelOfFace Face.tmmm) =
      some ((932 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0888_s0846_tmmm :
    graphSmokeNext (846 : State) (smokeLabelOfFace Face.tmmm) =
      some ((933 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0889_s0847_tmmm :
    graphSmokeNext (847 : State) (smokeLabelOfFace Face.tmmm) =
      some ((934 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0890_s0848_tmmm :
    graphSmokeNext (848 : State) (smokeLabelOfFace Face.tmmm) =
      some ((935 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0891_s0849_ym :
    graphSmokeNext (849 : State) (smokeLabelOfFace Face.ym) =
      some ((895 : State), (-63 : Int)) := by
  rfl

theorem emitted_transition_0892_s0850_tmmm :
    graphSmokeNext (850 : State) (smokeLabelOfFace Face.tmmm) =
      some ((936 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0893_s0851_zm :
    graphSmokeNext (851 : State) (smokeLabelOfFace Face.zm) =
      some ((931 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0894_s0852_tpmm :
    graphSmokeNext (852 : State) (smokeLabelOfFace Face.tpmm) =
      some ((945 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0895_s0853_ym :
    graphSmokeNext (853 : State) (smokeLabelOfFace Face.ym) =
      some ((905 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0896_s0853_zm :
    graphSmokeNext (853 : State) (smokeLabelOfFace Face.zm) =
      some ((937 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0897_s0854_ym :
    graphSmokeNext (854 : State) (smokeLabelOfFace Face.ym) =
      some ((913 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0898_s0855_yp :
    graphSmokeNext (855 : State) (smokeLabelOfFace Face.yp) =
      some ((921 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0899_s0855_zp :
    graphSmokeNext (855 : State) (smokeLabelOfFace Face.zp) =
      some ((941 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0900_s0855_tmmp :
    graphSmokeNext (855 : State) (smokeLabelOfFace Face.tmmp) =
      some ((946 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0901_s0856_yp :
    graphSmokeNext (856 : State) (smokeLabelOfFace Face.yp) =
      some ((928 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0902_s0856_zp :
    graphSmokeNext (856 : State) (smokeLabelOfFace Face.zp) =
      some ((942 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0903_s0856_tmmp :
    graphSmokeNext (856 : State) (smokeLabelOfFace Face.tmmp) =
      some ((947 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0904_s0857_yp :
    graphSmokeNext (857 : State) (smokeLabelOfFace Face.yp) =
      some ((937 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0905_s0857_tppp :
    graphSmokeNext (857 : State) (smokeLabelOfFace Face.tppp) =
      some ((950 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0906_s0858_tppp :
    graphSmokeNext (858 : State) (smokeLabelOfFace Face.tppp) =
      some ((951 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0907_s0859_yp :
    graphSmokeNext (859 : State) (smokeLabelOfFace Face.yp) =
      some ((938 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0908_s0859_tppp :
    graphSmokeNext (859 : State) (smokeLabelOfFace Face.tppp) =
      some ((952 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0909_s0860_yp :
    graphSmokeNext (860 : State) (smokeLabelOfFace Face.yp) =
      some ((939 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0910_s0860_tppp :
    graphSmokeNext (860 : State) (smokeLabelOfFace Face.tppp) =
      some ((953 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0911_s0861_tppp :
    graphSmokeNext (861 : State) (smokeLabelOfFace Face.tppp) =
      some ((954 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0912_s0862_yp :
    graphSmokeNext (862 : State) (smokeLabelOfFace Face.yp) =
      some ((940 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_0913_s0862_tppp :
    graphSmokeNext (862 : State) (smokeLabelOfFace Face.tppp) =
      some ((955 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0914_s0863_ym :
    graphSmokeNext (863 : State) (smokeLabelOfFace Face.ym) =
      some ((941 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0915_s0863_zm :
    graphSmokeNext (863 : State) (smokeLabelOfFace Face.zm) =
      some ((949 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0916_s0864_ym :
    graphSmokeNext (864 : State) (smokeLabelOfFace Face.ym) =
      some ((943 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0917_s0864_tmpm :
    graphSmokeNext (864 : State) (smokeLabelOfFace Face.tmpm) =
      some ((957 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0918_s0865_ym :
    graphSmokeNext (865 : State) (smokeLabelOfFace Face.ym) =
      some ((944 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_0919_s0865_tmpm :
    graphSmokeNext (865 : State) (smokeLabelOfFace Face.tmpm) =
      some ((958 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0920_s0866_ym :
    graphSmokeNext (866 : State) (smokeLabelOfFace Face.ym) =
      some ((948 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_0921_s0866_zm :
    graphSmokeNext (866 : State) (smokeLabelOfFace Face.zm) =
      some ((956 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_0922_s0866_tmmp :
    graphSmokeNext (866 : State) (smokeLabelOfFace Face.tmmp) =
      some ((959 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_0923_s0867_tppm :
    graphSmokeNext (867 : State) (smokeLabelOfFace Face.tppm) =
      some ((961 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0924_s0868_tppm :
    graphSmokeNext (868 : State) (smokeLabelOfFace Face.tppm) =
      some ((962 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0925_s0869_tppm :
    graphSmokeNext (869 : State) (smokeLabelOfFace Face.tppm) =
      some ((963 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0926_s0870_tppm :
    graphSmokeNext (870 : State) (smokeLabelOfFace Face.tppm) =
      some ((964 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0927_s0871_tppm :
    graphSmokeNext (871 : State) (smokeLabelOfFace Face.tppm) =
      some ((965 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0928_s0872_tmpm :
    graphSmokeNext (872 : State) (smokeLabelOfFace Face.tmpm) =
      some ((966 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0929_s0873_tmpm :
    graphSmokeNext (873 : State) (smokeLabelOfFace Face.tmpm) =
      some ((967 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0930_s0874_zm :
    graphSmokeNext (874 : State) (smokeLabelOfFace Face.zm) =
      some ((960 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0931_s0875_zp :
    graphSmokeNext (875 : State) (smokeLabelOfFace Face.zp) =
      some ((968 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0932_s0875_tppp :
    graphSmokeNext (875 : State) (smokeLabelOfFace Face.tppp) =
      some ((969 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0933_s0876_tmpm :
    graphSmokeNext (876 : State) (smokeLabelOfFace Face.tmpm) =
      some ((3 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0934_s0877_tmpm :
    graphSmokeNext (877 : State) (smokeLabelOfFace Face.tmpm) =
      some ((5 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0935_s0878_tmpm :
    graphSmokeNext (878 : State) (smokeLabelOfFace Face.tmpm) =
      some ((6 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0936_s0879_tmpm :
    graphSmokeNext (879 : State) (smokeLabelOfFace Face.tmpm) =
      some ((8 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0937_s0880_tmpm :
    graphSmokeNext (880 : State) (smokeLabelOfFace Face.tmpm) =
      some ((9 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0938_s0881_tmpm :
    graphSmokeNext (881 : State) (smokeLabelOfFace Face.tmpm) =
      some ((10 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0939_s0882_tmpm :
    graphSmokeNext (882 : State) (smokeLabelOfFace Face.tmpm) =
      some ((11 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0940_s0883_tmpm :
    graphSmokeNext (883 : State) (smokeLabelOfFace Face.tmpm) =
      some ((13 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0941_s0884_tmpm :
    graphSmokeNext (884 : State) (smokeLabelOfFace Face.tmpm) =
      some ((14 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0942_s0885_tmpm :
    graphSmokeNext (885 : State) (smokeLabelOfFace Face.tmpm) =
      some ((15 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0943_s0886_tmpm :
    graphSmokeNext (886 : State) (smokeLabelOfFace Face.tmpm) =
      some ((16 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0944_s0887_tmpm :
    graphSmokeNext (887 : State) (smokeLabelOfFace Face.tmpm) =
      some ((18 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0945_s0888_tmpm :
    graphSmokeNext (888 : State) (smokeLabelOfFace Face.tmpm) =
      some ((19 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0946_s0889_tmpm :
    graphSmokeNext (889 : State) (smokeLabelOfFace Face.tmpm) =
      some ((20 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0947_s0890_tmpm :
    graphSmokeNext (890 : State) (smokeLabelOfFace Face.tmpm) =
      some ((21 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0948_s0891_tmpm :
    graphSmokeNext (891 : State) (smokeLabelOfFace Face.tmpm) =
      some ((23 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0949_s0892_tmpm :
    graphSmokeNext (892 : State) (smokeLabelOfFace Face.tmpm) =
      some ((24 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0950_s0893_tmpm :
    graphSmokeNext (893 : State) (smokeLabelOfFace Face.tmpm) =
      some ((25 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0951_s0894_tmpm :
    graphSmokeNext (894 : State) (smokeLabelOfFace Face.tmpm) =
      some ((26 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0952_s0895_tmpm :
    graphSmokeNext (895 : State) (smokeLabelOfFace Face.tmpm) =
      some ((28 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0953_s0896_tmpm :
    graphSmokeNext (896 : State) (smokeLabelOfFace Face.tmpm) =
      some ((29 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0954_s0897_tmpm :
    graphSmokeNext (897 : State) (smokeLabelOfFace Face.tmpm) =
      some ((30 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0955_s0898_tmpm :
    graphSmokeNext (898 : State) (smokeLabelOfFace Face.tmpm) =
      some ((31 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0956_s0899_tmpm :
    graphSmokeNext (899 : State) (smokeLabelOfFace Face.tmpm) =
      some ((32 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0957_s0900_tmpm :
    graphSmokeNext (900 : State) (smokeLabelOfFace Face.tmpm) =
      some ((33 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0958_s0901_tmpm :
    graphSmokeNext (901 : State) (smokeLabelOfFace Face.tmpm) =
      some ((34 : State), (-144 : Int)) := by
  rfl

theorem emitted_transition_0959_s0902_tppm :
    graphSmokeNext (902 : State) (smokeLabelOfFace Face.tppm) =
      some ((46 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0960_s0903_tppm :
    graphSmokeNext (903 : State) (smokeLabelOfFace Face.tppm) =
      some ((47 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0961_s0904_tppm :
    graphSmokeNext (904 : State) (smokeLabelOfFace Face.tppm) =
      some ((48 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0962_s0905_zm :
    graphSmokeNext (905 : State) (smokeLabelOfFace Face.zm) =
      some ((1 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0963_s0906_zm :
    graphSmokeNext (906 : State) (smokeLabelOfFace Face.zm) =
      some ((2 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0964_s0907_zm :
    graphSmokeNext (907 : State) (smokeLabelOfFace Face.zm) =
      some ((4 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0965_s0908_zm :
    graphSmokeNext (908 : State) (smokeLabelOfFace Face.zm) =
      some ((7 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0966_s0909_zm :
    graphSmokeNext (909 : State) (smokeLabelOfFace Face.zm) =
      some ((12 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0967_s0910_zm :
    graphSmokeNext (910 : State) (smokeLabelOfFace Face.zm) =
      some ((17 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0968_s0911_zm :
    graphSmokeNext (911 : State) (smokeLabelOfFace Face.zm) =
      some ((22 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0969_s0912_zm :
    graphSmokeNext (912 : State) (smokeLabelOfFace Face.zm) =
      some ((27 : State), (-54 : Int)) := by
  rfl

theorem emitted_transition_0970_s0913_tppm :
    graphSmokeNext (913 : State) (smokeLabelOfFace Face.tppm) =
      some ((50 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0971_s0914_tppm :
    graphSmokeNext (914 : State) (smokeLabelOfFace Face.tppm) =
      some ((51 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0972_s0915_tppm :
    graphSmokeNext (915 : State) (smokeLabelOfFace Face.tppm) =
      some ((52 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0973_s0916_tppm :
    graphSmokeNext (916 : State) (smokeLabelOfFace Face.tppm) =
      some ((53 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0974_s0917_tppm :
    graphSmokeNext (917 : State) (smokeLabelOfFace Face.tppm) =
      some ((54 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0975_s0918_tppm :
    graphSmokeNext (918 : State) (smokeLabelOfFace Face.tppm) =
      some ((55 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0976_s0919_tppm :
    graphSmokeNext (919 : State) (smokeLabelOfFace Face.tppm) =
      some ((56 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0977_s0920_tppm :
    graphSmokeNext (920 : State) (smokeLabelOfFace Face.tppm) =
      some ((58 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0978_s0921_zp :
    graphSmokeNext (921 : State) (smokeLabelOfFace Face.zp) =
      some ((35 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0979_s0921_tmpp :
    graphSmokeNext (921 : State) (smokeLabelOfFace Face.tmpp) =
      some ((60 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0980_s0922_zp :
    graphSmokeNext (922 : State) (smokeLabelOfFace Face.zp) =
      some ((36 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0981_s0922_tmpp :
    graphSmokeNext (922 : State) (smokeLabelOfFace Face.tmpp) =
      some ((61 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0982_s0923_zp :
    graphSmokeNext (923 : State) (smokeLabelOfFace Face.zp) =
      some ((37 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0983_s0923_tmpp :
    graphSmokeNext (923 : State) (smokeLabelOfFace Face.tmpp) =
      some ((62 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0984_s0924_zp :
    graphSmokeNext (924 : State) (smokeLabelOfFace Face.zp) =
      some ((38 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0985_s0924_tmpp :
    graphSmokeNext (924 : State) (smokeLabelOfFace Face.tmpp) =
      some ((63 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0986_s0925_zp :
    graphSmokeNext (925 : State) (smokeLabelOfFace Face.zp) =
      some ((39 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0987_s0925_tmpp :
    graphSmokeNext (925 : State) (smokeLabelOfFace Face.tmpp) =
      some ((64 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0988_s0926_zp :
    graphSmokeNext (926 : State) (smokeLabelOfFace Face.zp) =
      some ((40 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0989_s0926_tmpp :
    graphSmokeNext (926 : State) (smokeLabelOfFace Face.tmpp) =
      some ((65 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0990_s0927_zp :
    graphSmokeNext (927 : State) (smokeLabelOfFace Face.zp) =
      some ((41 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0991_s0927_tmpp :
    graphSmokeNext (927 : State) (smokeLabelOfFace Face.tmpp) =
      some ((66 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0992_s0928_zp :
    graphSmokeNext (928 : State) (smokeLabelOfFace Face.zp) =
      some ((42 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0993_s0928_tmpp :
    graphSmokeNext (928 : State) (smokeLabelOfFace Face.tmpp) =
      some ((67 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0994_s0929_zp :
    graphSmokeNext (929 : State) (smokeLabelOfFace Face.zp) =
      some ((43 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0995_s0929_tmpp :
    graphSmokeNext (929 : State) (smokeLabelOfFace Face.tmpp) =
      some ((68 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0996_s0930_zp :
    graphSmokeNext (930 : State) (smokeLabelOfFace Face.zp) =
      some ((44 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_0997_s0930_tmpp :
    graphSmokeNext (930 : State) (smokeLabelOfFace Face.tmpp) =
      some ((69 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_0998_s0931_tpmp :
    graphSmokeNext (931 : State) (smokeLabelOfFace Face.tpmp) =
      some ((77 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_0999_s0932_tpmp :
    graphSmokeNext (932 : State) (smokeLabelOfFace Face.tpmp) =
      some ((78 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1000_s0933_tpmp :
    graphSmokeNext (933 : State) (smokeLabelOfFace Face.tpmp) =
      some ((79 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1001_s0934_tpmp :
    graphSmokeNext (934 : State) (smokeLabelOfFace Face.tpmp) =
      some ((80 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1002_s0935_tpmp :
    graphSmokeNext (935 : State) (smokeLabelOfFace Face.tpmp) =
      some ((81 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1003_s0936_tpmp :
    graphSmokeNext (936 : State) (smokeLabelOfFace Face.tpmp) =
      some ((83 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1004_s0937_ym :
    graphSmokeNext (937 : State) (smokeLabelOfFace Face.ym) =
      some ((1 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_1005_s0938_ym :
    graphSmokeNext (938 : State) (smokeLabelOfFace Face.ym) =
      some ((4 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_1006_s0939_ym :
    graphSmokeNext (939 : State) (smokeLabelOfFace Face.ym) =
      some ((7 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_1007_s0940_ym :
    graphSmokeNext (940 : State) (smokeLabelOfFace Face.ym) =
      some ((27 : State), (81 : Int)) := by
  rfl

theorem emitted_transition_1008_s0941_yp :
    graphSmokeNext (941 : State) (smokeLabelOfFace Face.yp) =
      some ((35 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1009_s0941_zm :
    graphSmokeNext (941 : State) (smokeLabelOfFace Face.zm) =
      some ((70 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_1010_s0942_yp :
    graphSmokeNext (942 : State) (smokeLabelOfFace Face.yp) =
      some ((42 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1011_s0942_zm :
    graphSmokeNext (942 : State) (smokeLabelOfFace Face.zm) =
      some ((76 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_1012_s0943_yp :
    graphSmokeNext (943 : State) (smokeLabelOfFace Face.yp) =
      some ((45 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1013_s0944_yp :
    graphSmokeNext (944 : State) (smokeLabelOfFace Face.yp) =
      some ((49 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1014_s0944_tmmm :
    graphSmokeNext (944 : State) (smokeLabelOfFace Face.tmmm) =
      some ((84 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1015_s0945_yp :
    graphSmokeNext (945 : State) (smokeLabelOfFace Face.yp) =
      some ((57 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1016_s0945_tmmm :
    graphSmokeNext (945 : State) (smokeLabelOfFace Face.tmmm) =
      some ((85 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1017_s0946_tmpp :
    graphSmokeNext (946 : State) (smokeLabelOfFace Face.tmpp) =
      some ((90 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_1018_s0947_tmpp :
    graphSmokeNext (947 : State) (smokeLabelOfFace Face.tmpp) =
      some ((91 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_1019_s0948_yp :
    graphSmokeNext (948 : State) (smokeLabelOfFace Face.yp) =
      some ((59 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_1020_s0948_zm :
    graphSmokeNext (948 : State) (smokeLabelOfFace Face.zm) =
      some ((86 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_1021_s0949_ym :
    graphSmokeNext (949 : State) (smokeLabelOfFace Face.ym) =
      some ((70 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1022_s0949_tmpp :
    graphSmokeNext (949 : State) (smokeLabelOfFace Face.tmpp) =
      some ((93 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1023_s0950_ym :
    graphSmokeNext (950 : State) (smokeLabelOfFace Face.ym) =
      some ((71 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1024_s0950_tmpp :
    graphSmokeNext (950 : State) (smokeLabelOfFace Face.tmpp) =
      some ((94 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1025_s0951_ym :
    graphSmokeNext (951 : State) (smokeLabelOfFace Face.ym) =
      some ((72 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1026_s0951_tmpp :
    graphSmokeNext (951 : State) (smokeLabelOfFace Face.tmpp) =
      some ((95 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1027_s0952_ym :
    graphSmokeNext (952 : State) (smokeLabelOfFace Face.ym) =
      some ((73 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1028_s0952_tmpp :
    graphSmokeNext (952 : State) (smokeLabelOfFace Face.tmpp) =
      some ((96 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1029_s0953_ym :
    graphSmokeNext (953 : State) (smokeLabelOfFace Face.ym) =
      some ((74 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1030_s0953_tmpp :
    graphSmokeNext (953 : State) (smokeLabelOfFace Face.tmpp) =
      some ((97 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1031_s0954_ym :
    graphSmokeNext (954 : State) (smokeLabelOfFace Face.ym) =
      some ((75 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1032_s0954_tmpp :
    graphSmokeNext (954 : State) (smokeLabelOfFace Face.tmpp) =
      some ((99 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1033_s0955_ym :
    graphSmokeNext (955 : State) (smokeLabelOfFace Face.ym) =
      some ((82 : State), (-117 : Int)) := by
  rfl

theorem emitted_transition_1034_s0955_tmpp :
    graphSmokeNext (955 : State) (smokeLabelOfFace Face.tmpp) =
      some ((100 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1035_s0956_ym :
    graphSmokeNext (956 : State) (smokeLabelOfFace Face.ym) =
      some ((86 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_1036_s0956_zp :
    graphSmokeNext (956 : State) (smokeLabelOfFace Face.zp) =
      some ((92 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_1037_s0957_ym :
    graphSmokeNext (957 : State) (smokeLabelOfFace Face.ym) =
      some ((87 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_1038_s0957_zp :
    graphSmokeNext (957 : State) (smokeLabelOfFace Face.zp) =
      some ((98 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_1039_s0958_ym :
    graphSmokeNext (958 : State) (smokeLabelOfFace Face.ym) =
      some ((88 : State), (-21 : Int)) := by
  rfl

theorem emitted_transition_1040_s0958_tmmm :
    graphSmokeNext (958 : State) (smokeLabelOfFace Face.tmmm) =
      some ((102 : State), (-124 : Int)) := by
  rfl

theorem emitted_transition_1041_s0959_ym :
    graphSmokeNext (959 : State) (smokeLabelOfFace Face.ym) =
      some ((89 : State), (103 : Int)) := by
  rfl

theorem emitted_transition_1042_s0959_zm :
    graphSmokeNext (959 : State) (smokeLabelOfFace Face.zm) =
      some ((101 : State), (-10 : Int)) := by
  rfl

theorem emitted_transition_1043_s0960_tmpp :
    graphSmokeNext (960 : State) (smokeLabelOfFace Face.tmpp) =
      some ((104 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1044_s0961_tmpp :
    graphSmokeNext (961 : State) (smokeLabelOfFace Face.tmpp) =
      some ((105 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1045_s0962_tmpp :
    graphSmokeNext (962 : State) (smokeLabelOfFace Face.tmpp) =
      some ((106 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1046_s0963_tmpp :
    graphSmokeNext (963 : State) (smokeLabelOfFace Face.tmpp) =
      some ((107 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1047_s0964_tmpp :
    graphSmokeNext (964 : State) (smokeLabelOfFace Face.tmpp) =
      some ((108 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1048_s0965_tmpp :
    graphSmokeNext (965 : State) (smokeLabelOfFace Face.tmpp) =
      some ((109 : State), (-36 : Int)) := by
  rfl

theorem emitted_transition_1049_s0966_tppm :
    graphSmokeNext (966 : State) (smokeLabelOfFace Face.tppm) =
      some ((110 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1050_s0967_tppm :
    graphSmokeNext (967 : State) (smokeLabelOfFace Face.tppm) =
      some ((112 : State), (96 : Int)) := by
  rfl

theorem emitted_transition_1051_s0968_zm :
    graphSmokeNext (968 : State) (smokeLabelOfFace Face.zm) =
      some ((103 : State), (-18 : Int)) := by
  rfl

theorem emitted_transition_1052_s0969_zm :
    graphSmokeNext (969 : State) (smokeLabelOfFace Face.zm) =
      some ((111 : State), (114 : Int)) := by
  rfl

theorem emitted_transition_1053_s0969_tpmp :
    graphSmokeNext (969 : State) (smokeLabelOfFace Face.tpmp) =
      some ((113 : State), (-124 : Int)) := by
  rfl

theorem semanticStateTransitionEmitterSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateTransitions
