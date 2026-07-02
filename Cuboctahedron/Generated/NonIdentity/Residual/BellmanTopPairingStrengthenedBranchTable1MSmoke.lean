import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke

/-!
Generated strengthened Bellman branch-table smoke.

This module records the finite branch classification accepted by
`scripts/audit_bellman_strengthened_branch_table.py`: ordinary graph
transitions plus semantic socket branches.  It is a producer-shaped
smoke artifact, not the final closed-language membership theorem.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke

inductive BranchKind where
  | graph
  | socket19Tmmp
  | socket150Tppp
  deriving DecidableEq, Repr

def realGraphTransitionBranchCount : Nat := 229
def semanticSocketBranchCount : Nat := 2
def remainingUncoveredAuditedBranchCount : Nat := 0

theorem branchCount_audit :
    realGraphTransitionBranchCount = 229 /\
    semanticSocketBranchCount = 2 /\
    remainingUncoveredAuditedBranchCount = 0 := by
  decide

inductive StrengthenedBranchTable : State -> Face -> BranchKind -> Prop
  | graph_000_s0000_xm : StrengthenedBranchTable (0 : State) Face.xm BranchKind.graph
  | graph_001_s0001_tppp : StrengthenedBranchTable (1 : State) Face.tppp BranchKind.graph
  | graph_002_s0002_tppp : StrengthenedBranchTable (2 : State) Face.tppp BranchKind.graph
  | graph_003_s0003_tppp : StrengthenedBranchTable (3 : State) Face.tppp BranchKind.graph
  | graph_004_s0004_tppp : StrengthenedBranchTable (4 : State) Face.tppp BranchKind.graph
  | graph_005_s0005_tppp : StrengthenedBranchTable (5 : State) Face.tppp BranchKind.graph
  | graph_006_s0006_tppp : StrengthenedBranchTable (6 : State) Face.tppp BranchKind.graph
  | graph_007_s0007_zm : StrengthenedBranchTable (7 : State) Face.zm BranchKind.graph
  | graph_008_s0008_zm : StrengthenedBranchTable (8 : State) Face.zm BranchKind.graph
  | graph_009_s0009_tmpm : StrengthenedBranchTable (9 : State) Face.tmpm BranchKind.graph
  | graph_010_s0010_tmpm : StrengthenedBranchTable (10 : State) Face.tmpm BranchKind.graph
  | graph_011_s0011_tmpm : StrengthenedBranchTable (11 : State) Face.tmpm BranchKind.graph
  | graph_012_s0012_zm : StrengthenedBranchTable (12 : State) Face.zm BranchKind.graph
  | graph_013_s0012_tmmp : StrengthenedBranchTable (12 : State) Face.tmmp BranchKind.graph
  | graph_014_s0013_zm : StrengthenedBranchTable (13 : State) Face.zm BranchKind.graph
  | graph_015_s0013_tmmp : StrengthenedBranchTable (13 : State) Face.tmmp BranchKind.graph
  | graph_016_s0014_yp : StrengthenedBranchTable (14 : State) Face.yp BranchKind.graph
  | graph_017_s0014_tmmp : StrengthenedBranchTable (14 : State) Face.tmmp BranchKind.graph
  | graph_018_s0015_yp : StrengthenedBranchTable (15 : State) Face.yp BranchKind.graph
  | graph_019_s0015_tmmp : StrengthenedBranchTable (15 : State) Face.tmmp BranchKind.graph
  | graph_020_s0016_yp : StrengthenedBranchTable (16 : State) Face.yp BranchKind.graph
  | graph_021_s0016_tmmp : StrengthenedBranchTable (16 : State) Face.tmmp BranchKind.graph
  | graph_022_s0017_yp : StrengthenedBranchTable (17 : State) Face.yp BranchKind.graph
  | graph_023_s0017_tmmp : StrengthenedBranchTable (17 : State) Face.tmmp BranchKind.graph
  | graph_024_s0018_yp : StrengthenedBranchTable (18 : State) Face.yp BranchKind.graph
  | graph_025_s0018_tmmp : StrengthenedBranchTable (18 : State) Face.tmmp BranchKind.graph
  | graph_026_s0019_yp : StrengthenedBranchTable (19 : State) Face.yp BranchKind.graph
  | graph_027_s0020_yp : StrengthenedBranchTable (20 : State) Face.yp BranchKind.graph
  | graph_028_s0020_tmmp : StrengthenedBranchTable (20 : State) Face.tmmp BranchKind.graph
  | graph_029_s0021_tmpm : StrengthenedBranchTable (21 : State) Face.tmpm BranchKind.graph
  | graph_030_s0022_yp : StrengthenedBranchTable (22 : State) Face.yp BranchKind.graph
  | graph_031_s0022_zm : StrengthenedBranchTable (22 : State) Face.zm BranchKind.graph
  | graph_032_s0023_tmpp : StrengthenedBranchTable (23 : State) Face.tmpp BranchKind.graph
  | graph_033_s0024_tmpp : StrengthenedBranchTable (24 : State) Face.tmpp BranchKind.graph
  | graph_034_s0025_tmpp : StrengthenedBranchTable (25 : State) Face.tmpp BranchKind.graph
  | graph_035_s0026_tmpp : StrengthenedBranchTable (26 : State) Face.tmpp BranchKind.graph
  | graph_036_s0027_tmpp : StrengthenedBranchTable (27 : State) Face.tmpp BranchKind.graph
  | graph_037_s0028_tmpp : StrengthenedBranchTable (28 : State) Face.tmpp BranchKind.graph
  | graph_038_s0029_tmpp : StrengthenedBranchTable (29 : State) Face.tmpp BranchKind.graph
  | graph_039_s0030_tmpp : StrengthenedBranchTable (30 : State) Face.tmpp BranchKind.graph
  | graph_040_s0031_tmpp : StrengthenedBranchTable (31 : State) Face.tmpp BranchKind.graph
  | graph_041_s0032_tmpp : StrengthenedBranchTable (32 : State) Face.tmpp BranchKind.graph
  | graph_042_s0033_tmpp : StrengthenedBranchTable (33 : State) Face.tmpp BranchKind.graph
  | graph_043_s0034_tmpp : StrengthenedBranchTable (34 : State) Face.tmpp BranchKind.graph
  | graph_044_s0035_tmpp : StrengthenedBranchTable (35 : State) Face.tmpp BranchKind.graph
  | graph_045_s0036_tmpp : StrengthenedBranchTable (36 : State) Face.tmpp BranchKind.graph
  | graph_046_s0037_zp : StrengthenedBranchTable (37 : State) Face.zp BranchKind.graph
  | graph_047_s0038_zp : StrengthenedBranchTable (38 : State) Face.zp BranchKind.graph
  | graph_048_s0039_zp : StrengthenedBranchTable (39 : State) Face.zp BranchKind.graph
  | graph_049_s0040_tmmm : StrengthenedBranchTable (40 : State) Face.tmmm BranchKind.graph
  | graph_050_s0041_tmmm : StrengthenedBranchTable (41 : State) Face.tmmm BranchKind.graph
  | graph_051_s0042_zm : StrengthenedBranchTable (42 : State) Face.zm BranchKind.graph
  | graph_052_s0043_zm : StrengthenedBranchTable (43 : State) Face.zm BranchKind.graph
  | graph_053_s0044_zm : StrengthenedBranchTable (44 : State) Face.zm BranchKind.graph
  | graph_054_s0045_tmpp : StrengthenedBranchTable (45 : State) Face.tmpp BranchKind.graph
  | graph_055_s0046_tmpp : StrengthenedBranchTable (46 : State) Face.tmpp BranchKind.graph
  | graph_056_s0047_tmpp : StrengthenedBranchTable (47 : State) Face.tmpp BranchKind.graph
  | graph_057_s0048_tmpp : StrengthenedBranchTable (48 : State) Face.tmpp BranchKind.graph
  | graph_058_s0049_tmpp : StrengthenedBranchTable (49 : State) Face.tmpp BranchKind.graph
  | graph_059_s0050_tmpp : StrengthenedBranchTable (50 : State) Face.tmpp BranchKind.graph
  | graph_060_s0051_yp : StrengthenedBranchTable (51 : State) Face.yp BranchKind.graph
  | graph_061_s0051_zp : StrengthenedBranchTable (51 : State) Face.zp BranchKind.graph
  | graph_062_s0052_yp : StrengthenedBranchTable (52 : State) Face.yp BranchKind.graph
  | graph_063_s0052_zp : StrengthenedBranchTable (52 : State) Face.zp BranchKind.graph
  | graph_064_s0053_tmmp : StrengthenedBranchTable (53 : State) Face.tmmp BranchKind.graph
  | graph_065_s0054_tmmp : StrengthenedBranchTable (54 : State) Face.tmmp BranchKind.graph
  | graph_066_s0055_tmmp : StrengthenedBranchTable (55 : State) Face.tmmp BranchKind.graph
  | graph_067_s0056_tmmp : StrengthenedBranchTable (56 : State) Face.tmmp BranchKind.graph
  | graph_068_s0057_tmmp : StrengthenedBranchTable (57 : State) Face.tmmp BranchKind.graph
  | graph_069_s0058_tmmp : StrengthenedBranchTable (58 : State) Face.tmmp BranchKind.graph
  | graph_070_s0059_tmmp : StrengthenedBranchTable (59 : State) Face.tmmp BranchKind.graph
  | graph_071_s0060_tmmp : StrengthenedBranchTable (60 : State) Face.tmmp BranchKind.graph
  | graph_072_s0061_tmmp : StrengthenedBranchTable (61 : State) Face.tmmp BranchKind.graph
  | graph_073_s0062_tmmp : StrengthenedBranchTable (62 : State) Face.tmmp BranchKind.graph
  | graph_074_s0063_tmmp : StrengthenedBranchTable (63 : State) Face.tmmp BranchKind.graph
  | graph_075_s0064_tmmp : StrengthenedBranchTable (64 : State) Face.tmmp BranchKind.graph
  | graph_076_s0065_tmmp : StrengthenedBranchTable (65 : State) Face.tmmp BranchKind.graph
  | graph_077_s0066_tmmp : StrengthenedBranchTable (66 : State) Face.tmmp BranchKind.graph
  | graph_078_s0067_tmmp : StrengthenedBranchTable (67 : State) Face.tmmp BranchKind.graph
  | graph_079_s0068_tmmp : StrengthenedBranchTable (68 : State) Face.tmmp BranchKind.graph
  | graph_080_s0069_tmmp : StrengthenedBranchTable (69 : State) Face.tmmp BranchKind.graph
  | graph_081_s0070_zp : StrengthenedBranchTable (70 : State) Face.zp BranchKind.graph
  | graph_082_s0071_zp : StrengthenedBranchTable (71 : State) Face.zp BranchKind.graph
  | graph_083_s0072_zp : StrengthenedBranchTable (72 : State) Face.zp BranchKind.graph
  | graph_084_s0073_zp : StrengthenedBranchTable (73 : State) Face.zp BranchKind.graph
  | graph_085_s0074_zp : StrengthenedBranchTable (74 : State) Face.zp BranchKind.graph
  | graph_086_s0075_zp : StrengthenedBranchTable (75 : State) Face.zp BranchKind.graph
  | graph_087_s0076_yp : StrengthenedBranchTable (76 : State) Face.yp BranchKind.graph
  | graph_088_s0077_yp : StrengthenedBranchTable (77 : State) Face.yp BranchKind.graph
  | graph_089_s0078_yp : StrengthenedBranchTable (78 : State) Face.yp BranchKind.graph
  | graph_090_s0079_yp : StrengthenedBranchTable (79 : State) Face.yp BranchKind.graph
  | graph_091_s0080_yp : StrengthenedBranchTable (80 : State) Face.yp BranchKind.graph
  | graph_092_s0081_yp : StrengthenedBranchTable (81 : State) Face.yp BranchKind.graph
  | graph_093_s0082_yp : StrengthenedBranchTable (82 : State) Face.yp BranchKind.graph
  | graph_094_s0083_yp : StrengthenedBranchTable (83 : State) Face.yp BranchKind.graph
  | graph_095_s0084_xp : StrengthenedBranchTable (84 : State) Face.xp BranchKind.graph
  | graph_096_s0085_xp : StrengthenedBranchTable (85 : State) Face.xp BranchKind.graph
  | graph_097_s0086_xp : StrengthenedBranchTable (86 : State) Face.xp BranchKind.graph
  | graph_098_s0087_xp : StrengthenedBranchTable (87 : State) Face.xp BranchKind.graph
  | graph_099_s0088_xp : StrengthenedBranchTable (88 : State) Face.xp BranchKind.graph
  | graph_100_s0089_xp : StrengthenedBranchTable (89 : State) Face.xp BranchKind.graph
  | graph_101_s0090_xp : StrengthenedBranchTable (90 : State) Face.xp BranchKind.graph
  | graph_102_s0091_xp : StrengthenedBranchTable (91 : State) Face.xp BranchKind.graph
  | graph_103_s0092_xp : StrengthenedBranchTable (92 : State) Face.xp BranchKind.graph
  | graph_104_s0093_xp : StrengthenedBranchTable (93 : State) Face.xp BranchKind.graph
  | graph_105_s0094_xp : StrengthenedBranchTable (94 : State) Face.xp BranchKind.graph
  | graph_106_s0095_xp : StrengthenedBranchTable (95 : State) Face.xp BranchKind.graph
  | graph_107_s0096_xp : StrengthenedBranchTable (96 : State) Face.xp BranchKind.graph
  | graph_108_s0097_xp : StrengthenedBranchTable (97 : State) Face.xp BranchKind.graph
  | graph_109_s0098_xp : StrengthenedBranchTable (98 : State) Face.xp BranchKind.graph
  | graph_110_s0099_xp : StrengthenedBranchTable (99 : State) Face.xp BranchKind.graph
  | graph_111_s0100_xp : StrengthenedBranchTable (100 : State) Face.xp BranchKind.graph
  | graph_112_s0101_xp : StrengthenedBranchTable (101 : State) Face.xp BranchKind.graph
  | graph_113_s0102_xp : StrengthenedBranchTable (102 : State) Face.xp BranchKind.graph
  | graph_114_s0103_xp : StrengthenedBranchTable (103 : State) Face.xp BranchKind.graph
  | graph_115_s0104_xp : StrengthenedBranchTable (104 : State) Face.xp BranchKind.graph
  | graph_116_s0105_xp : StrengthenedBranchTable (105 : State) Face.xp BranchKind.graph
  | graph_117_s0106_xp : StrengthenedBranchTable (106 : State) Face.xp BranchKind.graph
  | graph_118_s0107_xp : StrengthenedBranchTable (107 : State) Face.xp BranchKind.graph
  | graph_119_s0108_xp : StrengthenedBranchTable (108 : State) Face.xp BranchKind.graph
  | graph_120_s0109_xp : StrengthenedBranchTable (109 : State) Face.xp BranchKind.graph
  | graph_121_s0110_xp : StrengthenedBranchTable (110 : State) Face.xp BranchKind.graph
  | graph_122_s0111_xp : StrengthenedBranchTable (111 : State) Face.xp BranchKind.graph
  | graph_123_s0112_xp : StrengthenedBranchTable (112 : State) Face.xp BranchKind.graph
  | graph_124_s0142_ym : StrengthenedBranchTable (142 : State) Face.ym BranchKind.graph
  | graph_125_s0143_yp : StrengthenedBranchTable (143 : State) Face.yp BranchKind.graph
  | graph_126_s0143_zm : StrengthenedBranchTable (143 : State) Face.zm BranchKind.graph
  | graph_127_s0143_tmpm : StrengthenedBranchTable (143 : State) Face.tmpm BranchKind.graph
  | graph_128_s0144_zm : StrengthenedBranchTable (144 : State) Face.zm BranchKind.graph
  | graph_129_s0144_tmmm : StrengthenedBranchTable (144 : State) Face.tmmm BranchKind.graph
  | graph_130_s0145_yp : StrengthenedBranchTable (145 : State) Face.yp BranchKind.graph
  | graph_131_s0145_zp : StrengthenedBranchTable (145 : State) Face.zp BranchKind.graph
  | graph_132_s0145_tmpp : StrengthenedBranchTable (145 : State) Face.tmpp BranchKind.graph
  | graph_133_s0146_zm : StrengthenedBranchTable (146 : State) Face.zm BranchKind.graph
  | graph_134_s0146_tppm : StrengthenedBranchTable (146 : State) Face.tppm BranchKind.graph
  | graph_135_s0147_zp : StrengthenedBranchTable (147 : State) Face.zp BranchKind.graph
  | graph_136_s0147_tmmp : StrengthenedBranchTable (147 : State) Face.tmmp BranchKind.graph
  | graph_137_s0148_zm : StrengthenedBranchTable (148 : State) Face.zm BranchKind.graph
  | graph_138_s0148_tpmm : StrengthenedBranchTable (148 : State) Face.tpmm BranchKind.graph
  | graph_139_s0149_yp : StrengthenedBranchTable (149 : State) Face.yp BranchKind.graph
  | graph_140_s0149_tmpm : StrengthenedBranchTable (149 : State) Face.tmpm BranchKind.graph
  | graph_141_s0150_zp : StrengthenedBranchTable (150 : State) Face.zp BranchKind.graph
  | graph_142_s0151_tppp : StrengthenedBranchTable (151 : State) Face.tppp BranchKind.graph
  | graph_143_s0152_zp : StrengthenedBranchTable (152 : State) Face.zp BranchKind.graph
  | graph_144_s0152_tpmm : StrengthenedBranchTable (152 : State) Face.tpmm BranchKind.graph
  | graph_145_s0153_tmmm : StrengthenedBranchTable (153 : State) Face.tmmm BranchKind.graph
  | graph_146_s0154_zp : StrengthenedBranchTable (154 : State) Face.zp BranchKind.graph
  | graph_147_s0154_tpmp : StrengthenedBranchTable (154 : State) Face.tpmp BranchKind.graph
  | graph_148_s0155_tpmp : StrengthenedBranchTable (155 : State) Face.tpmp BranchKind.graph
  | graph_149_s0156_zp : StrengthenedBranchTable (156 : State) Face.zp BranchKind.graph
  | graph_150_s0156_tppm : StrengthenedBranchTable (156 : State) Face.tppm BranchKind.graph
  | graph_151_s0157_tppm : StrengthenedBranchTable (157 : State) Face.tppm BranchKind.graph
  | graph_152_s0158_tppm : StrengthenedBranchTable (158 : State) Face.tppm BranchKind.graph
  | graph_153_s0159_zm : StrengthenedBranchTable (159 : State) Face.zm BranchKind.graph
  | graph_154_s0160_tpmp : StrengthenedBranchTable (160 : State) Face.tpmp BranchKind.graph
  | graph_155_s0161_zp : StrengthenedBranchTable (161 : State) Face.zp BranchKind.graph
  | graph_156_s0161_tppp : StrengthenedBranchTable (161 : State) Face.tppp BranchKind.graph
  | graph_157_s0162_tpmm : StrengthenedBranchTable (162 : State) Face.tpmm BranchKind.graph
  | graph_158_s0163_tpmm : StrengthenedBranchTable (163 : State) Face.tpmm BranchKind.graph
  | graph_159_s0164_zm : StrengthenedBranchTable (164 : State) Face.zm BranchKind.graph
  | graph_160_s0165_tppp : StrengthenedBranchTable (165 : State) Face.tppp BranchKind.graph
  | graph_161_s0166_tppp : StrengthenedBranchTable (166 : State) Face.tppp BranchKind.graph
  | graph_162_s0167_zp : StrengthenedBranchTable (167 : State) Face.zp BranchKind.graph
  | graph_163_s0167_tpmp : StrengthenedBranchTable (167 : State) Face.tpmp BranchKind.graph
  | graph_164_s0168_tpmm : StrengthenedBranchTable (168 : State) Face.tpmm BranchKind.graph
  | graph_165_s0169_tpmm : StrengthenedBranchTable (169 : State) Face.tpmm BranchKind.graph
  | graph_166_s0170_tpmm : StrengthenedBranchTable (170 : State) Face.tpmm BranchKind.graph
  | graph_167_s0171_zm : StrengthenedBranchTable (171 : State) Face.zm BranchKind.graph
  | graph_168_s0172_tppm : StrengthenedBranchTable (172 : State) Face.tppm BranchKind.graph
  | graph_169_s0173_zp : StrengthenedBranchTable (173 : State) Face.zp BranchKind.graph
  | graph_170_s0173_tmmm : StrengthenedBranchTable (173 : State) Face.tmmm BranchKind.graph
  | graph_171_s0174_tppm : StrengthenedBranchTable (174 : State) Face.tppm BranchKind.graph
  | graph_172_s0175_tppm : StrengthenedBranchTable (175 : State) Face.tppm BranchKind.graph
  | graph_173_s0176_tppm : StrengthenedBranchTable (176 : State) Face.tppm BranchKind.graph
  | graph_174_s0177_zm : StrengthenedBranchTable (177 : State) Face.zm BranchKind.graph
  | graph_175_s0178_tpmm : StrengthenedBranchTable (178 : State) Face.tpmm BranchKind.graph
  | graph_176_s0179_tpmm : StrengthenedBranchTable (179 : State) Face.tpmm BranchKind.graph
  | graph_177_s0180_zp : StrengthenedBranchTable (180 : State) Face.zp BranchKind.graph
  | graph_178_s0180_tmpm : StrengthenedBranchTable (180 : State) Face.tmpm BranchKind.graph
  | graph_179_s0181_tppp : StrengthenedBranchTable (181 : State) Face.tppp BranchKind.graph
  | graph_180_s0182_tppp : StrengthenedBranchTable (182 : State) Face.tppp BranchKind.graph
  | graph_181_s0183_tppp : StrengthenedBranchTable (183 : State) Face.tppp BranchKind.graph
  | graph_182_s0184_tppp : StrengthenedBranchTable (184 : State) Face.tppp BranchKind.graph
  | graph_183_s0185_zm : StrengthenedBranchTable (185 : State) Face.zm BranchKind.graph
  | graph_184_s0186_tmmp : StrengthenedBranchTable (186 : State) Face.tmmp BranchKind.graph
  | graph_185_s0187_zp : StrengthenedBranchTable (187 : State) Face.zp BranchKind.graph
  | graph_186_s0187_tpmp : StrengthenedBranchTable (187 : State) Face.tpmp BranchKind.graph
  | graph_187_s0188_tpmp : StrengthenedBranchTable (188 : State) Face.tpmp BranchKind.graph
  | graph_188_s0189_tpmp : StrengthenedBranchTable (189 : State) Face.tpmp BranchKind.graph
  | graph_189_s0190_tpmp : StrengthenedBranchTable (190 : State) Face.tpmp BranchKind.graph
  | graph_190_s0191_tpmp : StrengthenedBranchTable (191 : State) Face.tpmp BranchKind.graph
  | graph_191_s0192_zm : StrengthenedBranchTable (192 : State) Face.zm BranchKind.graph
  | graph_192_s0193_tmpp : StrengthenedBranchTable (193 : State) Face.tmpp BranchKind.graph
  | graph_193_s0194_tmpp : StrengthenedBranchTable (194 : State) Face.tmpp BranchKind.graph
  | graph_194_s0195_zp : StrengthenedBranchTable (195 : State) Face.zp BranchKind.graph
  | graph_195_s0195_tppp : StrengthenedBranchTable (195 : State) Face.tppp BranchKind.graph
  | graph_196_s0196_tmmm : StrengthenedBranchTable (196 : State) Face.tmmm BranchKind.graph
  | graph_197_s0197_tmmm : StrengthenedBranchTable (197 : State) Face.tmmm BranchKind.graph
  | graph_198_s0198_tmmm : StrengthenedBranchTable (198 : State) Face.tmmm BranchKind.graph
  | graph_199_s0199_tmmm : StrengthenedBranchTable (199 : State) Face.tmmm BranchKind.graph
  | graph_200_s0200_tmmm : StrengthenedBranchTable (200 : State) Face.tmmm BranchKind.graph
  | graph_201_s0201_zm : StrengthenedBranchTable (201 : State) Face.zm BranchKind.graph
  | graph_202_s0202_tpmm : StrengthenedBranchTable (202 : State) Face.tpmm BranchKind.graph
  | graph_203_s0203_yp : StrengthenedBranchTable (203 : State) Face.yp BranchKind.graph
  | graph_204_s0203_zp : StrengthenedBranchTable (203 : State) Face.zp BranchKind.graph
  | graph_205_s0203_tmmp : StrengthenedBranchTable (203 : State) Face.tmmp BranchKind.graph
  | graph_206_s0204_tmpm : StrengthenedBranchTable (204 : State) Face.tmpm BranchKind.graph
  | graph_207_s0205_tmpm : StrengthenedBranchTable (205 : State) Face.tmpm BranchKind.graph
  | graph_208_s0206_tmpm : StrengthenedBranchTable (206 : State) Face.tmpm BranchKind.graph
  | graph_209_s0207_tmpm : StrengthenedBranchTable (207 : State) Face.tmpm BranchKind.graph
  | graph_210_s0208_tmpm : StrengthenedBranchTable (208 : State) Face.tmpm BranchKind.graph
  | graph_211_s0209_zm : StrengthenedBranchTable (209 : State) Face.zm BranchKind.graph
  | graph_212_s0210_tppm : StrengthenedBranchTable (210 : State) Face.tppm BranchKind.graph
  | graph_213_s0211_tppm : StrengthenedBranchTable (211 : State) Face.tppm BranchKind.graph
  | graph_214_s0212_zp : StrengthenedBranchTable (212 : State) Face.zp BranchKind.graph
  | graph_215_s0212_tmpp : StrengthenedBranchTable (212 : State) Face.tmpp BranchKind.graph
  | graph_216_s0213_zp : StrengthenedBranchTable (213 : State) Face.zp BranchKind.graph
  | graph_217_s0213_tmpp : StrengthenedBranchTable (213 : State) Face.tmpp BranchKind.graph
  | graph_218_s0214_tpmp : StrengthenedBranchTable (214 : State) Face.tpmp BranchKind.graph
  | graph_219_s0215_tpmp : StrengthenedBranchTable (215 : State) Face.tpmp BranchKind.graph
  | graph_220_s0216_tpmp : StrengthenedBranchTable (216 : State) Face.tpmp BranchKind.graph
  | graph_221_s0217_tpmp : StrengthenedBranchTable (217 : State) Face.tpmp BranchKind.graph
  | graph_222_s0218_tpmp : StrengthenedBranchTable (218 : State) Face.tpmp BranchKind.graph
  | graph_223_s0219_tpmp : StrengthenedBranchTable (219 : State) Face.tpmp BranchKind.graph
  | graph_224_s0220_yp : StrengthenedBranchTable (220 : State) Face.yp BranchKind.graph
  | graph_225_s0220_zm : StrengthenedBranchTable (220 : State) Face.zm BranchKind.graph
  | graph_226_s0221_yp : StrengthenedBranchTable (221 : State) Face.yp BranchKind.graph
  | graph_227_s0221_tmmm : StrengthenedBranchTable (221 : State) Face.tmmm BranchKind.graph
  | graph_228_s0222_tmpp : StrengthenedBranchTable (222 : State) Face.tmpp BranchKind.graph
  | socket19Tmmp :
      StrengthenedBranchTable (19 : State) Face.tmmp BranchKind.socket19Tmmp
  | socket150Tppp :
      StrengthenedBranchTable (150 : State) Face.tppp BranchKind.socket150Tppp

def strengthenedBranchKind? : State -> Face -> Option BranchKind
  | 0, Face.xm => some BranchKind.graph
  | 1, Face.tppp => some BranchKind.graph
  | 2, Face.tppp => some BranchKind.graph
  | 3, Face.tppp => some BranchKind.graph
  | 4, Face.tppp => some BranchKind.graph
  | 5, Face.tppp => some BranchKind.graph
  | 6, Face.tppp => some BranchKind.graph
  | 7, Face.zm => some BranchKind.graph
  | 8, Face.zm => some BranchKind.graph
  | 9, Face.tmpm => some BranchKind.graph
  | 10, Face.tmpm => some BranchKind.graph
  | 11, Face.tmpm => some BranchKind.graph
  | 12, Face.zm => some BranchKind.graph
  | 12, Face.tmmp => some BranchKind.graph
  | 13, Face.zm => some BranchKind.graph
  | 13, Face.tmmp => some BranchKind.graph
  | 14, Face.yp => some BranchKind.graph
  | 14, Face.tmmp => some BranchKind.graph
  | 15, Face.yp => some BranchKind.graph
  | 15, Face.tmmp => some BranchKind.graph
  | 16, Face.yp => some BranchKind.graph
  | 16, Face.tmmp => some BranchKind.graph
  | 17, Face.yp => some BranchKind.graph
  | 17, Face.tmmp => some BranchKind.graph
  | 18, Face.yp => some BranchKind.graph
  | 18, Face.tmmp => some BranchKind.graph
  | 19, Face.yp => some BranchKind.graph
  | 20, Face.yp => some BranchKind.graph
  | 20, Face.tmmp => some BranchKind.graph
  | 21, Face.tmpm => some BranchKind.graph
  | 22, Face.yp => some BranchKind.graph
  | 22, Face.zm => some BranchKind.graph
  | 23, Face.tmpp => some BranchKind.graph
  | 24, Face.tmpp => some BranchKind.graph
  | 25, Face.tmpp => some BranchKind.graph
  | 26, Face.tmpp => some BranchKind.graph
  | 27, Face.tmpp => some BranchKind.graph
  | 28, Face.tmpp => some BranchKind.graph
  | 29, Face.tmpp => some BranchKind.graph
  | 30, Face.tmpp => some BranchKind.graph
  | 31, Face.tmpp => some BranchKind.graph
  | 32, Face.tmpp => some BranchKind.graph
  | 33, Face.tmpp => some BranchKind.graph
  | 34, Face.tmpp => some BranchKind.graph
  | 35, Face.tmpp => some BranchKind.graph
  | 36, Face.tmpp => some BranchKind.graph
  | 37, Face.zp => some BranchKind.graph
  | 38, Face.zp => some BranchKind.graph
  | 39, Face.zp => some BranchKind.graph
  | 40, Face.tmmm => some BranchKind.graph
  | 41, Face.tmmm => some BranchKind.graph
  | 42, Face.zm => some BranchKind.graph
  | 43, Face.zm => some BranchKind.graph
  | 44, Face.zm => some BranchKind.graph
  | 45, Face.tmpp => some BranchKind.graph
  | 46, Face.tmpp => some BranchKind.graph
  | 47, Face.tmpp => some BranchKind.graph
  | 48, Face.tmpp => some BranchKind.graph
  | 49, Face.tmpp => some BranchKind.graph
  | 50, Face.tmpp => some BranchKind.graph
  | 51, Face.yp => some BranchKind.graph
  | 51, Face.zp => some BranchKind.graph
  | 52, Face.yp => some BranchKind.graph
  | 52, Face.zp => some BranchKind.graph
  | 53, Face.tmmp => some BranchKind.graph
  | 54, Face.tmmp => some BranchKind.graph
  | 55, Face.tmmp => some BranchKind.graph
  | 56, Face.tmmp => some BranchKind.graph
  | 57, Face.tmmp => some BranchKind.graph
  | 58, Face.tmmp => some BranchKind.graph
  | 59, Face.tmmp => some BranchKind.graph
  | 60, Face.tmmp => some BranchKind.graph
  | 61, Face.tmmp => some BranchKind.graph
  | 62, Face.tmmp => some BranchKind.graph
  | 63, Face.tmmp => some BranchKind.graph
  | 64, Face.tmmp => some BranchKind.graph
  | 65, Face.tmmp => some BranchKind.graph
  | 66, Face.tmmp => some BranchKind.graph
  | 67, Face.tmmp => some BranchKind.graph
  | 68, Face.tmmp => some BranchKind.graph
  | 69, Face.tmmp => some BranchKind.graph
  | 70, Face.zp => some BranchKind.graph
  | 71, Face.zp => some BranchKind.graph
  | 72, Face.zp => some BranchKind.graph
  | 73, Face.zp => some BranchKind.graph
  | 74, Face.zp => some BranchKind.graph
  | 75, Face.zp => some BranchKind.graph
  | 76, Face.yp => some BranchKind.graph
  | 77, Face.yp => some BranchKind.graph
  | 78, Face.yp => some BranchKind.graph
  | 79, Face.yp => some BranchKind.graph
  | 80, Face.yp => some BranchKind.graph
  | 81, Face.yp => some BranchKind.graph
  | 82, Face.yp => some BranchKind.graph
  | 83, Face.yp => some BranchKind.graph
  | 84, Face.xp => some BranchKind.graph
  | 85, Face.xp => some BranchKind.graph
  | 86, Face.xp => some BranchKind.graph
  | 87, Face.xp => some BranchKind.graph
  | 88, Face.xp => some BranchKind.graph
  | 89, Face.xp => some BranchKind.graph
  | 90, Face.xp => some BranchKind.graph
  | 91, Face.xp => some BranchKind.graph
  | 92, Face.xp => some BranchKind.graph
  | 93, Face.xp => some BranchKind.graph
  | 94, Face.xp => some BranchKind.graph
  | 95, Face.xp => some BranchKind.graph
  | 96, Face.xp => some BranchKind.graph
  | 97, Face.xp => some BranchKind.graph
  | 98, Face.xp => some BranchKind.graph
  | 99, Face.xp => some BranchKind.graph
  | 100, Face.xp => some BranchKind.graph
  | 101, Face.xp => some BranchKind.graph
  | 102, Face.xp => some BranchKind.graph
  | 103, Face.xp => some BranchKind.graph
  | 104, Face.xp => some BranchKind.graph
  | 105, Face.xp => some BranchKind.graph
  | 106, Face.xp => some BranchKind.graph
  | 107, Face.xp => some BranchKind.graph
  | 108, Face.xp => some BranchKind.graph
  | 109, Face.xp => some BranchKind.graph
  | 110, Face.xp => some BranchKind.graph
  | 111, Face.xp => some BranchKind.graph
  | 112, Face.xp => some BranchKind.graph
  | 142, Face.ym => some BranchKind.graph
  | 143, Face.yp => some BranchKind.graph
  | 143, Face.zm => some BranchKind.graph
  | 143, Face.tmpm => some BranchKind.graph
  | 144, Face.zm => some BranchKind.graph
  | 144, Face.tmmm => some BranchKind.graph
  | 145, Face.yp => some BranchKind.graph
  | 145, Face.zp => some BranchKind.graph
  | 145, Face.tmpp => some BranchKind.graph
  | 146, Face.zm => some BranchKind.graph
  | 146, Face.tppm => some BranchKind.graph
  | 147, Face.zp => some BranchKind.graph
  | 147, Face.tmmp => some BranchKind.graph
  | 148, Face.zm => some BranchKind.graph
  | 148, Face.tpmm => some BranchKind.graph
  | 149, Face.yp => some BranchKind.graph
  | 149, Face.tmpm => some BranchKind.graph
  | 150, Face.zp => some BranchKind.graph
  | 151, Face.tppp => some BranchKind.graph
  | 152, Face.zp => some BranchKind.graph
  | 152, Face.tpmm => some BranchKind.graph
  | 153, Face.tmmm => some BranchKind.graph
  | 154, Face.zp => some BranchKind.graph
  | 154, Face.tpmp => some BranchKind.graph
  | 155, Face.tpmp => some BranchKind.graph
  | 156, Face.zp => some BranchKind.graph
  | 156, Face.tppm => some BranchKind.graph
  | 157, Face.tppm => some BranchKind.graph
  | 158, Face.tppm => some BranchKind.graph
  | 159, Face.zm => some BranchKind.graph
  | 160, Face.tpmp => some BranchKind.graph
  | 161, Face.zp => some BranchKind.graph
  | 161, Face.tppp => some BranchKind.graph
  | 162, Face.tpmm => some BranchKind.graph
  | 163, Face.tpmm => some BranchKind.graph
  | 164, Face.zm => some BranchKind.graph
  | 165, Face.tppp => some BranchKind.graph
  | 166, Face.tppp => some BranchKind.graph
  | 167, Face.zp => some BranchKind.graph
  | 167, Face.tpmp => some BranchKind.graph
  | 168, Face.tpmm => some BranchKind.graph
  | 169, Face.tpmm => some BranchKind.graph
  | 170, Face.tpmm => some BranchKind.graph
  | 171, Face.zm => some BranchKind.graph
  | 172, Face.tppm => some BranchKind.graph
  | 173, Face.zp => some BranchKind.graph
  | 173, Face.tmmm => some BranchKind.graph
  | 174, Face.tppm => some BranchKind.graph
  | 175, Face.tppm => some BranchKind.graph
  | 176, Face.tppm => some BranchKind.graph
  | 177, Face.zm => some BranchKind.graph
  | 178, Face.tpmm => some BranchKind.graph
  | 179, Face.tpmm => some BranchKind.graph
  | 180, Face.zp => some BranchKind.graph
  | 180, Face.tmpm => some BranchKind.graph
  | 181, Face.tppp => some BranchKind.graph
  | 182, Face.tppp => some BranchKind.graph
  | 183, Face.tppp => some BranchKind.graph
  | 184, Face.tppp => some BranchKind.graph
  | 185, Face.zm => some BranchKind.graph
  | 186, Face.tmmp => some BranchKind.graph
  | 187, Face.zp => some BranchKind.graph
  | 187, Face.tpmp => some BranchKind.graph
  | 188, Face.tpmp => some BranchKind.graph
  | 189, Face.tpmp => some BranchKind.graph
  | 190, Face.tpmp => some BranchKind.graph
  | 191, Face.tpmp => some BranchKind.graph
  | 192, Face.zm => some BranchKind.graph
  | 193, Face.tmpp => some BranchKind.graph
  | 194, Face.tmpp => some BranchKind.graph
  | 195, Face.zp => some BranchKind.graph
  | 195, Face.tppp => some BranchKind.graph
  | 196, Face.tmmm => some BranchKind.graph
  | 197, Face.tmmm => some BranchKind.graph
  | 198, Face.tmmm => some BranchKind.graph
  | 199, Face.tmmm => some BranchKind.graph
  | 200, Face.tmmm => some BranchKind.graph
  | 201, Face.zm => some BranchKind.graph
  | 202, Face.tpmm => some BranchKind.graph
  | 203, Face.yp => some BranchKind.graph
  | 203, Face.zp => some BranchKind.graph
  | 203, Face.tmmp => some BranchKind.graph
  | 204, Face.tmpm => some BranchKind.graph
  | 205, Face.tmpm => some BranchKind.graph
  | 206, Face.tmpm => some BranchKind.graph
  | 207, Face.tmpm => some BranchKind.graph
  | 208, Face.tmpm => some BranchKind.graph
  | 209, Face.zm => some BranchKind.graph
  | 210, Face.tppm => some BranchKind.graph
  | 211, Face.tppm => some BranchKind.graph
  | 212, Face.zp => some BranchKind.graph
  | 212, Face.tmpp => some BranchKind.graph
  | 213, Face.zp => some BranchKind.graph
  | 213, Face.tmpp => some BranchKind.graph
  | 214, Face.tpmp => some BranchKind.graph
  | 215, Face.tpmp => some BranchKind.graph
  | 216, Face.tpmp => some BranchKind.graph
  | 217, Face.tpmp => some BranchKind.graph
  | 218, Face.tpmp => some BranchKind.graph
  | 219, Face.tpmp => some BranchKind.graph
  | 220, Face.yp => some BranchKind.graph
  | 220, Face.zm => some BranchKind.graph
  | 221, Face.yp => some BranchKind.graph
  | 221, Face.tmmm => some BranchKind.graph
  | 222, Face.tmpp => some BranchKind.graph
  | 19, Face.tmmp => some BranchKind.socket19Tmmp
  | 150, Face.tppp => some BranchKind.socket150Tppp
  | _, _ => none

theorem branchKind?_of_branchTable
    {s : State} {face : Face} {kind : BranchKind}
    (h : StrengthenedBranchTable s face kind) :
    strengthenedBranchKind? s face = some kind := by
  cases h <;> rfl

theorem graph_next_of_graphBranch
    {s : State} {face : Face}
    (h : StrengthenedBranchTable s face BranchKind.graph) :
    ∃ nextState gain,
      graphSmokeNext s (smokeLabelOfFace face) = some (nextState, gain) := by
  cases h
  · exact ⟨(142 : State), (103 : Int), rfl⟩
  · exact ⟨(29 : State), (-36 : Int), rfl⟩
  · exact ⟨(31 : State), (-36 : Int), rfl⟩
  · exact ⟨(32 : State), (-36 : Int), rfl⟩
  · exact ⟨(33 : State), (-36 : Int), rfl⟩
  · exact ⟨(34 : State), (-36 : Int), rfl⟩
  · exact ⟨(36 : State), (-36 : Int), rfl⟩
  · exact ⟨(23 : State), (-18 : Int), rfl⟩
  · exact ⟨(30 : State), (-18 : Int), rfl⟩
  · exact ⟨(39 : State), (96 : Int), rfl⟩
  · exact ⟨(40 : State), (96 : Int), rfl⟩
  · exact ⟨(41 : State), (96 : Int), rfl⟩
  · exact ⟨(37 : State), (114 : Int), rfl⟩
  · exact ⟨(43 : State), (-124 : Int), rfl⟩
  · exact ⟨(38 : State), (114 : Int), rfl⟩
  · exact ⟨(44 : State), (-124 : Int), rfl⟩
  · exact ⟨(23 : State), (-117 : Int), rfl⟩
  · exact ⟨(45 : State), (96 : Int), rfl⟩
  · exact ⟨(24 : State), (-117 : Int), rfl⟩
  · exact ⟨(46 : State), (96 : Int), rfl⟩
  · exact ⟨(25 : State), (-117 : Int), rfl⟩
  · exact ⟨(47 : State), (96 : Int), rfl⟩
  · exact ⟨(26 : State), (-117 : Int), rfl⟩
  · exact ⟨(48 : State), (96 : Int), rfl⟩
  · exact ⟨(27 : State), (-117 : Int), rfl⟩
  · exact ⟨(49 : State), (96 : Int), rfl⟩
  · exact ⟨(28 : State), (-117 : Int), rfl⟩
  · exact ⟨(35 : State), (-117 : Int), rfl⟩
  · exact ⟨(50 : State), (96 : Int), rfl⟩
  · exact ⟨(52 : State), (-124 : Int), rfl⟩
  · exact ⟨(42 : State), (103 : Int), rfl⟩
  · exact ⟨(51 : State), (-10 : Int), rfl⟩
  · exact ⟨(53 : State), (96 : Int), rfl⟩
  · exact ⟨(55 : State), (96 : Int), rfl⟩
  · exact ⟨(56 : State), (96 : Int), rfl⟩
  · exact ⟨(57 : State), (96 : Int), rfl⟩
  · exact ⟨(58 : State), (96 : Int), rfl⟩
  · exact ⟨(59 : State), (96 : Int), rfl⟩
  · exact ⟨(60 : State), (96 : Int), rfl⟩
  · exact ⟨(61 : State), (96 : Int), rfl⟩
  · exact ⟨(63 : State), (96 : Int), rfl⟩
  · exact ⟨(64 : State), (96 : Int), rfl⟩
  · exact ⟨(65 : State), (96 : Int), rfl⟩
  · exact ⟨(67 : State), (96 : Int), rfl⟩
  · exact ⟨(68 : State), (96 : Int), rfl⟩
  · exact ⟨(69 : State), (96 : Int), rfl⟩
  · exact ⟨(54 : State), (114 : Int), rfl⟩
  · exact ⟨(62 : State), (114 : Int), rfl⟩
  · exact ⟨(66 : State), (114 : Int), rfl⟩
  · exact ⟨(73 : State), (-124 : Int), rfl⟩
  · exact ⟨(75 : State), (-124 : Int), rfl⟩
  · exact ⟨(70 : State), (-10 : Int), rfl⟩
  · exact ⟨(71 : State), (-10 : Int), rfl⟩
  · exact ⟨(72 : State), (-10 : Int), rfl⟩
  · exact ⟨(76 : State), (-124 : Int), rfl⟩
  · exact ⟨(78 : State), (-124 : Int), rfl⟩
  · exact ⟨(79 : State), (-124 : Int), rfl⟩
  · exact ⟨(80 : State), (-124 : Int), rfl⟩
  · exact ⟨(81 : State), (-124 : Int), rfl⟩
  · exact ⟨(83 : State), (-124 : Int), rfl⟩
  · exact ⟨(70 : State), (103 : Int), rfl⟩
  · exact ⟨(77 : State), (-10 : Int), rfl⟩
  · exact ⟨(74 : State), (103 : Int), rfl⟩
  · exact ⟨(82 : State), (-10 : Int), rfl⟩
  · exact ⟨(85 : State), (-124 : Int), rfl⟩
  · exact ⟨(88 : State), (-124 : Int), rfl⟩
  · exact ⟨(90 : State), (-124 : Int), rfl⟩
  · exact ⟨(92 : State), (-124 : Int), rfl⟩
  · exact ⟨(94 : State), (-124 : Int), rfl⟩
  · exact ⟨(96 : State), (-124 : Int), rfl⟩
  · exact ⟨(97 : State), (-124 : Int), rfl⟩
  · exact ⟨(98 : State), (-124 : Int), rfl⟩
  · exact ⟨(99 : State), (-124 : Int), rfl⟩
  · exact ⟨(101 : State), (-124 : Int), rfl⟩
  · exact ⟨(102 : State), (-124 : Int), rfl⟩
  · exact ⟨(103 : State), (-124 : Int), rfl⟩
  · exact ⟨(104 : State), (-124 : Int), rfl⟩
  · exact ⟨(105 : State), (-124 : Int), rfl⟩
  · exact ⟨(106 : State), (-124 : Int), rfl⟩
  · exact ⟨(111 : State), (-124 : Int), rfl⟩
  · exact ⟨(112 : State), (-124 : Int), rfl⟩
  · exact ⟨(86 : State), (-10 : Int), rfl⟩
  · exact ⟨(87 : State), (-10 : Int), rfl⟩
  · exact ⟨(100 : State), (-10 : Int), rfl⟩
  · exact ⟨(107 : State), (-10 : Int), rfl⟩
  · exact ⟨(108 : State), (-10 : Int), rfl⟩
  · exact ⟨(109 : State), (-10 : Int), rfl⟩
  · exact ⟨(84 : State), (103 : Int), rfl⟩
  · exact ⟨(86 : State), (103 : Int), rfl⟩
  · exact ⟨(89 : State), (103 : Int), rfl⟩
  · exact ⟨(91 : State), (103 : Int), rfl⟩
  · exact ⟨(93 : State), (103 : Int), rfl⟩
  · exact ⟨(95 : State), (103 : Int), rfl⟩
  · exact ⟨(108 : State), (103 : Int), rfl⟩
  · exact ⟨(110 : State), (103 : Int), rfl⟩
  · exact ⟨(113 : State), (-73 : Int), rfl⟩
  · exact ⟨(114 : State), (-73 : Int), rfl⟩
  · exact ⟨(115 : State), (-73 : Int), rfl⟩
  · exact ⟨(116 : State), (-73 : Int), rfl⟩
  · exact ⟨(117 : State), (-73 : Int), rfl⟩
  · exact ⟨(118 : State), (-73 : Int), rfl⟩
  · exact ⟨(119 : State), (-73 : Int), rfl⟩
  · exact ⟨(120 : State), (-73 : Int), rfl⟩
  · exact ⟨(121 : State), (-73 : Int), rfl⟩
  · exact ⟨(122 : State), (-73 : Int), rfl⟩
  · exact ⟨(123 : State), (-73 : Int), rfl⟩
  · exact ⟨(124 : State), (-73 : Int), rfl⟩
  · exact ⟨(125 : State), (-73 : Int), rfl⟩
  · exact ⟨(126 : State), (-73 : Int), rfl⟩
  · exact ⟨(127 : State), (-73 : Int), rfl⟩
  · exact ⟨(128 : State), (-73 : Int), rfl⟩
  · exact ⟨(129 : State), (-73 : Int), rfl⟩
  · exact ⟨(130 : State), (-73 : Int), rfl⟩
  · exact ⟨(131 : State), (-73 : Int), rfl⟩
  · exact ⟨(132 : State), (-73 : Int), rfl⟩
  · exact ⟨(133 : State), (-73 : Int), rfl⟩
  · exact ⟨(134 : State), (-73 : Int), rfl⟩
  · exact ⟨(135 : State), (-73 : Int), rfl⟩
  · exact ⟨(136 : State), (-73 : Int), rfl⟩
  · exact ⟨(137 : State), (-73 : Int), rfl⟩
  · exact ⟨(138 : State), (-73 : Int), rfl⟩
  · exact ⟨(139 : State), (-73 : Int), rfl⟩
  · exact ⟨(140 : State), (-73 : Int), rfl⟩
  · exact ⟨(141 : State), (-73 : Int), rfl⟩
  · exact ⟨(143 : State), (-73 : Int), rfl⟩
  · exact ⟨(144 : State), (-73 : Int), rfl⟩
  · exact ⟨(145 : State), (-10 : Int), rfl⟩
  · exact ⟨(146 : State), (-124 : Int), rfl⟩
  · exact ⟨(147 : State), (-10 : Int), rfl⟩
  · exact ⟨(148 : State), (-124 : Int), rfl⟩
  · exact ⟨(147 : State), (-73 : Int), rfl⟩
  · exact ⟨(149 : State), (-10 : Int), rfl⟩
  · exact ⟨(151 : State), (-124 : Int), rfl⟩
  · exact ⟨(150 : State), (114 : Int), rfl⟩
  · exact ⟨(152 : State), (96 : Int), rfl⟩
  · exact ⟨(153 : State), (-10 : Int), rfl⟩
  · exact ⟨(155 : State), (-124 : Int), rfl⟩
  · exact ⟨(154 : State), (114 : Int), rfl⟩
  · exact ⟨(156 : State), (96 : Int), rfl⟩
  · exact ⟨(153 : State), (-73 : Int), rfl⟩
  · exact ⟨(158 : State), (-124 : Int), rfl⟩
  · exact ⟨(157 : State), (114 : Int), rfl⟩
  · exact ⟨(160 : State), (96 : Int), rfl⟩
  · exact ⟨(159 : State), (-18 : Int), rfl⟩
  · exact ⟨(161 : State), (-36 : Int), rfl⟩
  · exact ⟨(163 : State), (-124 : Int), rfl⟩
  · exact ⟨(162 : State), (114 : Int), rfl⟩
  · exact ⟨(165 : State), (96 : Int), rfl⟩
  · exact ⟨(166 : State), (96 : Int), rfl⟩
  · exact ⟨(164 : State), (-18 : Int), rfl⟩
  · exact ⟨(167 : State), (-36 : Int), rfl⟩
  · exact ⟨(169 : State), (96 : Int), rfl⟩
  · exact ⟨(170 : State), (96 : Int), rfl⟩
  · exact ⟨(168 : State), (-18 : Int), rfl⟩
  · exact ⟨(172 : State), (-36 : Int), rfl⟩
  · exact ⟨(171 : State), (-54 : Int), rfl⟩
  · exact ⟨(173 : State), (-144 : Int), rfl⟩
  · exact ⟨(175 : State), (96 : Int), rfl⟩
  · exact ⟨(176 : State), (96 : Int), rfl⟩
  · exact ⟨(174 : State), (-18 : Int), rfl⟩
  · exact ⟨(178 : State), (-36 : Int), rfl⟩
  · exact ⟨(179 : State), (-36 : Int), rfl⟩
  · exact ⟨(177 : State), (-54 : Int), rfl⟩
  · exact ⟨(180 : State), (-144 : Int), rfl⟩
  · exact ⟨(182 : State), (-36 : Int), rfl⟩
  · exact ⟨(183 : State), (-36 : Int), rfl⟩
  · exact ⟨(184 : State), (-36 : Int), rfl⟩
  · exact ⟨(181 : State), (-54 : Int), rfl⟩
  · exact ⟨(186 : State), (-144 : Int), rfl⟩
  · exact ⟨(185 : State), (90 : Int), rfl⟩
  · exact ⟨(187 : State), (-144 : Int), rfl⟩
  · exact ⟨(189 : State), (-36 : Int), rfl⟩
  · exact ⟨(190 : State), (-36 : Int), rfl⟩
  · exact ⟨(191 : State), (-36 : Int), rfl⟩
  · exact ⟨(188 : State), (-54 : Int), rfl⟩
  · exact ⟨(193 : State), (-144 : Int), rfl⟩
  · exact ⟨(194 : State), (-144 : Int), rfl⟩
  · exact ⟨(192 : State), (90 : Int), rfl⟩
  · exact ⟨(195 : State), (-144 : Int), rfl⟩
  · exact ⟨(197 : State), (-144 : Int), rfl⟩
  · exact ⟨(198 : State), (-144 : Int), rfl⟩
  · exact ⟨(199 : State), (-144 : Int), rfl⟩
  · exact ⟨(200 : State), (-144 : Int), rfl⟩
  · exact ⟨(196 : State), (90 : Int), rfl⟩
  · exact ⟨(202 : State), (-144 : Int), rfl⟩
  · exact ⟨(201 : State), (-54 : Int), rfl⟩
  · exact ⟨(203 : State), (-36 : Int), rfl⟩
  · exact ⟨(205 : State), (-144 : Int), rfl⟩
  · exact ⟨(206 : State), (-144 : Int), rfl⟩
  · exact ⟨(207 : State), (-144 : Int), rfl⟩
  · exact ⟨(208 : State), (-144 : Int), rfl⟩
  · exact ⟨(204 : State), (90 : Int), rfl⟩
  · exact ⟨(210 : State), (-144 : Int), rfl⟩
  · exact ⟨(211 : State), (-144 : Int), rfl⟩
  · exact ⟨(209 : State), (-54 : Int), rfl⟩
  · exact ⟨(213 : State), (-36 : Int), rfl⟩
  · exact ⟨(215 : State), (-144 : Int), rfl⟩
  · exact ⟨(216 : State), (-144 : Int), rfl⟩
  · exact ⟨(217 : State), (-144 : Int), rfl⟩
  · exact ⟨(218 : State), (-144 : Int), rfl⟩
  · exact ⟨(219 : State), (-144 : Int), rfl⟩
  · exact ⟨(214 : State), (-54 : Int), rfl⟩
  · exact ⟨(221 : State), (-36 : Int), rfl⟩
  · exact ⟨(212 : State), (-117 : Int), rfl⟩
  · exact ⟨(220 : State), (-18 : Int), rfl⟩
  · exact ⟨(222 : State), (96 : Int), rfl⟩
  · exact ⟨(2 : State), (-144 : Int), rfl⟩
  · exact ⟨(3 : State), (-144 : Int), rfl⟩
  · exact ⟨(4 : State), (-144 : Int), rfl⟩
  · exact ⟨(5 : State), (-144 : Int), rfl⟩
  · exact ⟨(6 : State), (-144 : Int), rfl⟩
  · exact ⟨(1 : State), (-54 : Int), rfl⟩
  · exact ⟨(9 : State), (-36 : Int), rfl⟩
  · exact ⟨(11 : State), (-36 : Int), rfl⟩
  · exact ⟨(7 : State), (-18 : Int), rfl⟩
  · exact ⟨(12 : State), (96 : Int), rfl⟩
  · exact ⟨(8 : State), (-18 : Int), rfl⟩
  · exact ⟨(13 : State), (96 : Int), rfl⟩
  · exact ⟨(15 : State), (-36 : Int), rfl⟩
  · exact ⟨(16 : State), (-36 : Int), rfl⟩
  · exact ⟨(17 : State), (-36 : Int), rfl⟩
  · exact ⟨(18 : State), (-36 : Int), rfl⟩
  · exact ⟨(19 : State), (-36 : Int), rfl⟩
  · exact ⟨(20 : State), (-36 : Int), rfl⟩
  · exact ⟨(7 : State), (-117 : Int), rfl⟩
  · exact ⟨(14 : State), (-18 : Int), rfl⟩
  · exact ⟨(10 : State), (-117 : Int), rfl⟩
  · exact ⟨(21 : State), (96 : Int), rfl⟩
  · exact ⟨(22 : State), (-124 : Int), rfl⟩

theorem socketBranches_present :
    StrengthenedBranchTable (19 : State) Face.tmmp BranchKind.socket19Tmmp /\
    StrengthenedBranchTable (150 : State) Face.tppp BranchKind.socket150Tppp := by
  exact ⟨StrengthenedBranchTable.socket19Tmmp,
    StrengthenedBranchTable.socket150Tppp⟩

theorem strengthenedBranchTable1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTable1MSmoke
