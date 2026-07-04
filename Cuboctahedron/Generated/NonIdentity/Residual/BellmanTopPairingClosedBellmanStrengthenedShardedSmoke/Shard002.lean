import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman transition shard.

This file checks scaled integer edge inequalities for one source-state
range of the strengthened closed-language graph.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard002

open Cuboctahedron
open Potential

def shardIndex : Nat := 2
def stateStart : Nat := 128
def stateStop : Nat := 192
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 142, Face.ym => some (143, (-73 : Int))
  | 143, Face.yp => some (144, (-73 : Int))
  | 143, Face.zm => some (145, (-10 : Int))
  | 143, Face.tmpm => some (146, (-124 : Int))
  | 144, Face.zm => some (147, (-10 : Int))
  | 144, Face.tmmm => some (148, (-124 : Int))
  | 145, Face.yp => some (147, (-73 : Int))
  | 145, Face.zp => some (149, (-10 : Int))
  | 145, Face.tmpp => some (151, (-124 : Int))
  | 146, Face.zm => some (150, (114 : Int))
  | 146, Face.tppm => some (152, (96 : Int))
  | 147, Face.zp => some (153, (-10 : Int))
  | 147, Face.tmmp => some (155, (-124 : Int))
  | 148, Face.zm => some (154, (114 : Int))
  | 148, Face.tpmm => some (156, (96 : Int))
  | 149, Face.yp => some (153, (-73 : Int))
  | 149, Face.tmpm => some (158, (-124 : Int))
  | 150, Face.zp => some (157, (114 : Int))
  | 151, Face.tppp => some (159, (96 : Int))
  | 152, Face.zp => some (160, (-18 : Int))
  | 152, Face.tpmm => some (161, (-36 : Int))
  | 153, Face.tmmm => some (163, (-124 : Int))
  | 154, Face.zp => some (162, (114 : Int))
  | 154, Face.tpmp => some (164, (96 : Int))
  | 155, Face.tpmp => some (166, (96 : Int))
  | 156, Face.zp => some (165, (-18 : Int))
  | 156, Face.tppm => some (167, (-36 : Int))
  | 157, Face.tppm => some (169, (96 : Int))
  | 158, Face.tppm => some (170, (96 : Int))
  | 159, Face.tpmp => some (171, (-36 : Int))
  | 160, Face.zm => some (168, (-18 : Int))
  | 161, Face.zp => some (172, (-54 : Int))
  | 161, Face.tppp => some (173, (-144 : Int))
  | 162, Face.tpmm => some (175, (96 : Int))
  | 163, Face.tpmm => some (176, (96 : Int))
  | 164, Face.tppp => some (177, (-36 : Int))
  | 165, Face.zm => some (174, (-18 : Int))
  | 166, Face.tppp => some (178, (-36 : Int))
  | 167, Face.zp => some (179, (-54 : Int))
  | 167, Face.tpmp => some (180, (-144 : Int))
  | 168, Face.tpmm => some (182, (-36 : Int))
  | 169, Face.tpmm => some (183, (-36 : Int))
  | 170, Face.tpmm => some (184, (-36 : Int))
  | 171, Face.tppm => some (186, (-144 : Int))
  | 172, Face.zm => some (181, (-54 : Int))
  | 173, Face.zp => some (185, (90 : Int))
  | 173, Face.tmmm => some (187, (-144 : Int))
  | 174, Face.tppm => some (189, (-36 : Int))
  | 175, Face.tppm => some (190, (-36 : Int))
  | 176, Face.tppm => some (191, (-36 : Int))
  | 177, Face.tpmm => some (192, (-144 : Int))
  | 178, Face.tpmm => some (194, (-144 : Int))
  | 179, Face.zm => some (188, (-54 : Int))
  | 180, Face.zp => some (193, (90 : Int))
  | 180, Face.tmpm => some (195, (-144 : Int))
  | 181, Face.tppp => some (197, (-144 : Int))
  | 182, Face.tppp => some (198, (-144 : Int))
  | 183, Face.tppp => some (199, (-144 : Int))
  | 184, Face.tppp => some (200, (-144 : Int))
  | 185, Face.zm => some (196, (90 : Int))
  | 186, Face.tmmp => some (202, (-144 : Int))
  | 187, Face.zp => some (201, (-54 : Int))
  | 187, Face.tpmp => some (203, (-36 : Int))
  | 188, Face.tpmp => some (205, (-144 : Int))
  | 189, Face.tpmp => some (206, (-144 : Int))
  | 190, Face.tpmp => some (207, (-144 : Int))
  | 191, Face.tpmp => some (208, (-144 : Int))
  | _, _ => none

theorem edge_0124_label_10 :
    next 142 Face.ym =
      some (143, (-73 : Int)) /\
    (-73 : Int) + graphPotential 143 <=
      graphPotential 142 := by
  constructor <;> decide

theorem edge_0125_label_11 :
    next 143 Face.yp =
      some (144, (-73 : Int)) /\
    (-73 : Int) + graphPotential 144 <=
      graphPotential 143 := by
  constructor <;> decide

theorem edge_0126_label_12 :
    next 143 Face.zm =
      some (145, (-10 : Int)) /\
    (-10 : Int) + graphPotential 145 <=
      graphPotential 143 := by
  constructor <;> decide

theorem edge_0127_label_02 :
    next 143 Face.tmpm =
      some (146, (-124 : Int)) /\
    (-124 : Int) + graphPotential 146 <=
      graphPotential 143 := by
  constructor <;> decide

theorem edge_0128_label_12 :
    next 144 Face.zm =
      some (147, (-10 : Int)) /\
    (-10 : Int) + graphPotential 147 <=
      graphPotential 144 := by
  constructor <;> decide

theorem edge_0129_label_00 :
    next 144 Face.tmmm =
      some (148, (-124 : Int)) /\
    (-124 : Int) + graphPotential 148 <=
      graphPotential 144 := by
  constructor <;> decide

theorem edge_0130_label_11 :
    next 145 Face.yp =
      some (147, (-73 : Int)) /\
    (-73 : Int) + graphPotential 147 <=
      graphPotential 145 := by
  constructor <;> decide

theorem edge_0131_label_13 :
    next 145 Face.zp =
      some (149, (-10 : Int)) /\
    (-10 : Int) + graphPotential 149 <=
      graphPotential 145 := by
  constructor <;> decide

theorem edge_0132_label_03 :
    next 145 Face.tmpp =
      some (151, (-124 : Int)) /\
    (-124 : Int) + graphPotential 151 <=
      graphPotential 145 := by
  constructor <;> decide

theorem edge_0133_label_12 :
    next 146 Face.zm =
      some (150, (114 : Int)) /\
    (114 : Int) + graphPotential 150 <=
      graphPotential 146 := by
  constructor <;> decide

theorem edge_0134_label_06 :
    next 146 Face.tppm =
      some (152, (96 : Int)) /\
    (96 : Int) + graphPotential 152 <=
      graphPotential 146 := by
  constructor <;> decide

theorem edge_0135_label_13 :
    next 147 Face.zp =
      some (153, (-10 : Int)) /\
    (-10 : Int) + graphPotential 153 <=
      graphPotential 147 := by
  constructor <;> decide

theorem edge_0136_label_01 :
    next 147 Face.tmmp =
      some (155, (-124 : Int)) /\
    (-124 : Int) + graphPotential 155 <=
      graphPotential 147 := by
  constructor <;> decide

theorem edge_0137_label_12 :
    next 148 Face.zm =
      some (154, (114 : Int)) /\
    (114 : Int) + graphPotential 154 <=
      graphPotential 148 := by
  constructor <;> decide

theorem edge_0138_label_04 :
    next 148 Face.tpmm =
      some (156, (96 : Int)) /\
    (96 : Int) + graphPotential 156 <=
      graphPotential 148 := by
  constructor <;> decide

theorem edge_0139_label_11 :
    next 149 Face.yp =
      some (153, (-73 : Int)) /\
    (-73 : Int) + graphPotential 153 <=
      graphPotential 149 := by
  constructor <;> decide

theorem edge_0140_label_02 :
    next 149 Face.tmpm =
      some (158, (-124 : Int)) /\
    (-124 : Int) + graphPotential 158 <=
      graphPotential 149 := by
  constructor <;> decide

theorem edge_0141_label_13 :
    next 150 Face.zp =
      some (157, (114 : Int)) /\
    (114 : Int) + graphPotential 157 <=
      graphPotential 150 := by
  constructor <;> decide

theorem edge_0142_label_07 :
    next 151 Face.tppp =
      some (159, (96 : Int)) /\
    (96 : Int) + graphPotential 159 <=
      graphPotential 151 := by
  constructor <;> decide

theorem edge_0143_label_13 :
    next 152 Face.zp =
      some (160, (-18 : Int)) /\
    (-18 : Int) + graphPotential 160 <=
      graphPotential 152 := by
  constructor <;> decide

theorem edge_0144_label_04 :
    next 152 Face.tpmm =
      some (161, (-36 : Int)) /\
    (-36 : Int) + graphPotential 161 <=
      graphPotential 152 := by
  constructor <;> decide

theorem edge_0145_label_00 :
    next 153 Face.tmmm =
      some (163, (-124 : Int)) /\
    (-124 : Int) + graphPotential 163 <=
      graphPotential 153 := by
  constructor <;> decide

theorem edge_0146_label_13 :
    next 154 Face.zp =
      some (162, (114 : Int)) /\
    (114 : Int) + graphPotential 162 <=
      graphPotential 154 := by
  constructor <;> decide

theorem edge_0147_label_05 :
    next 154 Face.tpmp =
      some (164, (96 : Int)) /\
    (96 : Int) + graphPotential 164 <=
      graphPotential 154 := by
  constructor <;> decide

theorem edge_0148_label_05 :
    next 155 Face.tpmp =
      some (166, (96 : Int)) /\
    (96 : Int) + graphPotential 166 <=
      graphPotential 155 := by
  constructor <;> decide

theorem edge_0149_label_13 :
    next 156 Face.zp =
      some (165, (-18 : Int)) /\
    (-18 : Int) + graphPotential 165 <=
      graphPotential 156 := by
  constructor <;> decide

theorem edge_0150_label_06 :
    next 156 Face.tppm =
      some (167, (-36 : Int)) /\
    (-36 : Int) + graphPotential 167 <=
      graphPotential 156 := by
  constructor <;> decide

theorem edge_0151_label_06 :
    next 157 Face.tppm =
      some (169, (96 : Int)) /\
    (96 : Int) + graphPotential 169 <=
      graphPotential 157 := by
  constructor <;> decide

theorem edge_0152_label_06 :
    next 158 Face.tppm =
      some (170, (96 : Int)) /\
    (96 : Int) + graphPotential 170 <=
      graphPotential 158 := by
  constructor <;> decide

theorem edge_0153_label_05 :
    next 159 Face.tpmp =
      some (171, (-36 : Int)) /\
    (-36 : Int) + graphPotential 171 <=
      graphPotential 159 := by
  constructor <;> decide

theorem edge_0154_label_12 :
    next 160 Face.zm =
      some (168, (-18 : Int)) /\
    (-18 : Int) + graphPotential 168 <=
      graphPotential 160 := by
  constructor <;> decide

theorem edge_0155_label_13 :
    next 161 Face.zp =
      some (172, (-54 : Int)) /\
    (-54 : Int) + graphPotential 172 <=
      graphPotential 161 := by
  constructor <;> decide

theorem edge_0156_label_07 :
    next 161 Face.tppp =
      some (173, (-144 : Int)) /\
    (-144 : Int) + graphPotential 173 <=
      graphPotential 161 := by
  constructor <;> decide

theorem edge_0157_label_04 :
    next 162 Face.tpmm =
      some (175, (96 : Int)) /\
    (96 : Int) + graphPotential 175 <=
      graphPotential 162 := by
  constructor <;> decide

theorem edge_0158_label_04 :
    next 163 Face.tpmm =
      some (176, (96 : Int)) /\
    (96 : Int) + graphPotential 176 <=
      graphPotential 163 := by
  constructor <;> decide

theorem edge_0159_label_07 :
    next 164 Face.tppp =
      some (177, (-36 : Int)) /\
    (-36 : Int) + graphPotential 177 <=
      graphPotential 164 := by
  constructor <;> decide

theorem edge_0160_label_12 :
    next 165 Face.zm =
      some (174, (-18 : Int)) /\
    (-18 : Int) + graphPotential 174 <=
      graphPotential 165 := by
  constructor <;> decide

theorem edge_0161_label_07 :
    next 166 Face.tppp =
      some (178, (-36 : Int)) /\
    (-36 : Int) + graphPotential 178 <=
      graphPotential 166 := by
  constructor <;> decide

theorem edge_0162_label_13 :
    next 167 Face.zp =
      some (179, (-54 : Int)) /\
    (-54 : Int) + graphPotential 179 <=
      graphPotential 167 := by
  constructor <;> decide

theorem edge_0163_label_05 :
    next 167 Face.tpmp =
      some (180, (-144 : Int)) /\
    (-144 : Int) + graphPotential 180 <=
      graphPotential 167 := by
  constructor <;> decide

theorem edge_0164_label_04 :
    next 168 Face.tpmm =
      some (182, (-36 : Int)) /\
    (-36 : Int) + graphPotential 182 <=
      graphPotential 168 := by
  constructor <;> decide

theorem edge_0165_label_04 :
    next 169 Face.tpmm =
      some (183, (-36 : Int)) /\
    (-36 : Int) + graphPotential 183 <=
      graphPotential 169 := by
  constructor <;> decide

theorem edge_0166_label_04 :
    next 170 Face.tpmm =
      some (184, (-36 : Int)) /\
    (-36 : Int) + graphPotential 184 <=
      graphPotential 170 := by
  constructor <;> decide

theorem edge_0167_label_06 :
    next 171 Face.tppm =
      some (186, (-144 : Int)) /\
    (-144 : Int) + graphPotential 186 <=
      graphPotential 171 := by
  constructor <;> decide

theorem edge_0168_label_12 :
    next 172 Face.zm =
      some (181, (-54 : Int)) /\
    (-54 : Int) + graphPotential 181 <=
      graphPotential 172 := by
  constructor <;> decide

theorem edge_0169_label_13 :
    next 173 Face.zp =
      some (185, (90 : Int)) /\
    (90 : Int) + graphPotential 185 <=
      graphPotential 173 := by
  constructor <;> decide

theorem edge_0170_label_00 :
    next 173 Face.tmmm =
      some (187, (-144 : Int)) /\
    (-144 : Int) + graphPotential 187 <=
      graphPotential 173 := by
  constructor <;> decide

theorem edge_0171_label_06 :
    next 174 Face.tppm =
      some (189, (-36 : Int)) /\
    (-36 : Int) + graphPotential 189 <=
      graphPotential 174 := by
  constructor <;> decide

theorem edge_0172_label_06 :
    next 175 Face.tppm =
      some (190, (-36 : Int)) /\
    (-36 : Int) + graphPotential 190 <=
      graphPotential 175 := by
  constructor <;> decide

theorem edge_0173_label_06 :
    next 176 Face.tppm =
      some (191, (-36 : Int)) /\
    (-36 : Int) + graphPotential 191 <=
      graphPotential 176 := by
  constructor <;> decide

theorem edge_0174_label_04 :
    next 177 Face.tpmm =
      some (192, (-144 : Int)) /\
    (-144 : Int) + graphPotential 192 <=
      graphPotential 177 := by
  constructor <;> decide

theorem edge_0175_label_04 :
    next 178 Face.tpmm =
      some (194, (-144 : Int)) /\
    (-144 : Int) + graphPotential 194 <=
      graphPotential 178 := by
  constructor <;> decide

theorem edge_0176_label_12 :
    next 179 Face.zm =
      some (188, (-54 : Int)) /\
    (-54 : Int) + graphPotential 188 <=
      graphPotential 179 := by
  constructor <;> decide

theorem edge_0177_label_13 :
    next 180 Face.zp =
      some (193, (90 : Int)) /\
    (90 : Int) + graphPotential 193 <=
      graphPotential 180 := by
  constructor <;> decide

theorem edge_0178_label_02 :
    next 180 Face.tmpm =
      some (195, (-144 : Int)) /\
    (-144 : Int) + graphPotential 195 <=
      graphPotential 180 := by
  constructor <;> decide

theorem edge_0179_label_07 :
    next 181 Face.tppp =
      some (197, (-144 : Int)) /\
    (-144 : Int) + graphPotential 197 <=
      graphPotential 181 := by
  constructor <;> decide

theorem edge_0180_label_07 :
    next 182 Face.tppp =
      some (198, (-144 : Int)) /\
    (-144 : Int) + graphPotential 198 <=
      graphPotential 182 := by
  constructor <;> decide

theorem edge_0181_label_07 :
    next 183 Face.tppp =
      some (199, (-144 : Int)) /\
    (-144 : Int) + graphPotential 199 <=
      graphPotential 183 := by
  constructor <;> decide

theorem edge_0182_label_07 :
    next 184 Face.tppp =
      some (200, (-144 : Int)) /\
    (-144 : Int) + graphPotential 200 <=
      graphPotential 184 := by
  constructor <;> decide

theorem edge_0183_label_12 :
    next 185 Face.zm =
      some (196, (90 : Int)) /\
    (90 : Int) + graphPotential 196 <=
      graphPotential 185 := by
  constructor <;> decide

theorem edge_0184_label_01 :
    next 186 Face.tmmp =
      some (202, (-144 : Int)) /\
    (-144 : Int) + graphPotential 202 <=
      graphPotential 186 := by
  constructor <;> decide

theorem edge_0185_label_13 :
    next 187 Face.zp =
      some (201, (-54 : Int)) /\
    (-54 : Int) + graphPotential 201 <=
      graphPotential 187 := by
  constructor <;> decide

theorem edge_0186_label_05 :
    next 187 Face.tpmp =
      some (203, (-36 : Int)) /\
    (-36 : Int) + graphPotential 203 <=
      graphPotential 187 := by
  constructor <;> decide

theorem edge_0187_label_05 :
    next 188 Face.tpmp =
      some (205, (-144 : Int)) /\
    (-144 : Int) + graphPotential 205 <=
      graphPotential 188 := by
  constructor <;> decide

theorem edge_0188_label_05 :
    next 189 Face.tpmp =
      some (206, (-144 : Int)) /\
    (-144 : Int) + graphPotential 206 <=
      graphPotential 189 := by
  constructor <;> decide

theorem edge_0189_label_05 :
    next 190 Face.tpmp =
      some (207, (-144 : Int)) /\
    (-144 : Int) + graphPotential 207 <=
      graphPotential 190 := by
  constructor <;> decide

theorem edge_0190_label_05 :
    next 191 Face.tpmp =
      some (208, (-144 : Int)) /\
    (-144 : Int) + graphPotential 208 <=
      graphPotential 191 := by
  constructor <;> decide

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard002
