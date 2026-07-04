import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman potential smoke.

This module contains scaled integer potentials and root/final facts
for the small strengthened closed-language diagnostic graph.  It is
not rank coverage.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

open Cuboctahedron

def graphStateCount : Nat := 223
def graphEdgeCount : Nat := 229
def graphScale : Nat := 88
def graphConst : Int := 176
def graphRoot : Nat := 0

def graphPotential : Nat -> Int
  | 0 => -176
  | 1 => -137
  | 2 => -137
  | 3 => -137
  | 4 => -137
  | 5 => -137
  | 6 => -137
  | 7 => -119
  | 8 => -119
  | 9 => 13
  | 10 => -111
  | 11 => -111
  | 12 => 31
  | 13 => 31
  | 14 => 2
  | 15 => 2
  | 16 => 2
  | 17 => 2
  | 18 => 2
  | 19 => -218
  | 20 => 2
  | 21 => -104
  | 22 => 10
  | 23 => -101
  | 24 => -101
  | 25 => -101
  | 26 => -101
  | 27 => -101
  | 28 => -101
  | 29 => -101
  | 30 => -101
  | 31 => -101
  | 32 => -101
  | 33 => -101
  | 34 => -101
  | 35 => -101
  | 36 => -101
  | 37 => -83
  | 38 => -83
  | 39 => -83
  | 40 => -207
  | 41 => -207
  | 42 => -93
  | 43 => -93
  | 44 => -93
  | 45 => -94
  | 46 => -94
  | 47 => -94
  | 48 => -94
  | 49 => -94
  | 50 => -94
  | 51 => 20
  | 52 => 20
  | 53 => -197
  | 54 => -197
  | 55 => -197
  | 56 => -197
  | 57 => -197
  | 58 => -197
  | 59 => -197
  | 60 => -197
  | 61 => -197
  | 62 => -197
  | 63 => -197
  | 64 => -197
  | 65 => -197
  | 66 => -197
  | 67 => -197
  | 68 => -197
  | 69 => -197
  | 70 => -83
  | 71 => -83
  | 72 => -83
  | 73 => -83
  | 74 => -83
  | 75 => -83
  | 76 => 30
  | 77 => 30
  | 78 => 30
  | 79 => 30
  | 80 => 30
  | 81 => 30
  | 82 => 30
  | 83 => 30
  | 84 => -73
  | 85 => -73
  | 86 => -73
  | 87 => -73
  | 88 => -73
  | 89 => -73
  | 90 => -73
  | 91 => -73
  | 92 => -73
  | 93 => -73
  | 94 => -73
  | 95 => -73
  | 96 => -73
  | 97 => -73
  | 98 => -73
  | 99 => -73
  | 100 => -73
  | 101 => -73
  | 102 => -73
  | 103 => -73
  | 104 => -73
  | 105 => -73
  | 106 => -73
  | 107 => -73
  | 108 => -73
  | 109 => -73
  | 110 => -73
  | 111 => -73
  | 112 => -73
  | 113 => 0
  | 114 => 0
  | 115 => 0
  | 116 => 0
  | 117 => 0
  | 118 => 0
  | 119 => 0
  | 120 => 0
  | 121 => 0
  | 122 => 0
  | 123 => 0
  | 124 => 0
  | 125 => 0
  | 126 => 0
  | 127 => 0
  | 128 => 0
  | 129 => 0
  | 130 => 0
  | 131 => 0
  | 132 => 0
  | 133 => 0
  | 134 => 0
  | 135 => 0
  | 136 => 0
  | 137 => 0
  | 138 => 0
  | 139 => 0
  | 140 => 0
  | 141 => 0
  | 142 => -279
  | 143 => -206
  | 144 => -261
  | 145 => -396
  | 146 => -82
  | 147 => -499
  | 148 => -137
  | 149 => -386
  | 150 => -368
  | 151 => -272
  | 152 => -178
  | 153 => -489
  | 154 => -251
  | 155 => -375
  | 156 => -233
  | 157 => -482
  | 158 => -262
  | 159 => -368
  | 160 => -376
  | 161 => -142
  | 162 => -365
  | 163 => -365
  | 164 => -347
  | 165 => -479
  | 166 => -471
  | 167 => -197
  | 168 => -358
  | 169 => -578
  | 170 => -358
  | 171 => -332
  | 172 => -376
  | 173 => 2
  | 174 => -461
  | 175 => -461
  | 176 => -461
  | 177 => -311
  | 178 => -435
  | 179 => -479
  | 180 => -53
  | 181 => -322
  | 182 => -322
  | 183 => -542
  | 184 => -322
  | 185 => -88
  | 186 => -188
  | 187 => -26
  | 188 => -425
  | 189 => -425
  | 190 => -425
  | 191 => -425
  | 192 => -167
  | 193 => -191
  | 194 => -291
  | 195 => 91
  | 196 => -178
  | 197 => -178
  | 198 => -178
  | 199 => -398
  | 200 => -178
  | 201 => -88
  | 202 => -44
  | 203 => 10
  | 204 => -281
  | 205 => -281
  | 206 => -281
  | 207 => -281
  | 208 => -281
  | 209 => -23
  | 210 => -191
  | 211 => -147
  | 212 => 127
  | 213 => 127
  | 214 => -34
  | 215 => -34
  | 216 => -34
  | 217 => -34
  | 218 => -254
  | 219 => -34
  | 220 => -16
  | 221 => -8
  | 222 => -114
  | _ => 0

theorem root_bound :
    graphConst + graphPotential graphRoot <= 0 := by
  decide

theorem final_nonneg_000 :
    0 <= graphPotential 113 := by
  decide

theorem final_nonneg_001 :
    0 <= graphPotential 114 := by
  decide

theorem final_nonneg_002 :
    0 <= graphPotential 115 := by
  decide

theorem final_nonneg_003 :
    0 <= graphPotential 116 := by
  decide

theorem final_nonneg_004 :
    0 <= graphPotential 117 := by
  decide

theorem final_nonneg_005 :
    0 <= graphPotential 118 := by
  decide

theorem final_nonneg_006 :
    0 <= graphPotential 119 := by
  decide

theorem final_nonneg_007 :
    0 <= graphPotential 120 := by
  decide

theorem final_nonneg_008 :
    0 <= graphPotential 121 := by
  decide

theorem final_nonneg_009 :
    0 <= graphPotential 122 := by
  decide

theorem final_nonneg_010 :
    0 <= graphPotential 123 := by
  decide

theorem final_nonneg_011 :
    0 <= graphPotential 124 := by
  decide

theorem final_nonneg_012 :
    0 <= graphPotential 125 := by
  decide

theorem final_nonneg_013 :
    0 <= graphPotential 126 := by
  decide

theorem final_nonneg_014 :
    0 <= graphPotential 127 := by
  decide

theorem final_nonneg_015 :
    0 <= graphPotential 128 := by
  decide

theorem final_nonneg_016 :
    0 <= graphPotential 129 := by
  decide

theorem final_nonneg_017 :
    0 <= graphPotential 130 := by
  decide

theorem final_nonneg_018 :
    0 <= graphPotential 131 := by
  decide

theorem final_nonneg_019 :
    0 <= graphPotential 132 := by
  decide

theorem final_nonneg_020 :
    0 <= graphPotential 133 := by
  decide

theorem final_nonneg_021 :
    0 <= graphPotential 134 := by
  decide

theorem final_nonneg_022 :
    0 <= graphPotential 135 := by
  decide

theorem final_nonneg_023 :
    0 <= graphPotential 136 := by
  decide

theorem final_nonneg_024 :
    0 <= graphPotential 137 := by
  decide

theorem final_nonneg_025 :
    0 <= graphPotential 138 := by
  decide

theorem final_nonneg_026 :
    0 <= graphPotential 139 := by
  decide

theorem final_nonneg_027 :
    0 <= graphPotential 140 := by
  decide

theorem final_nonneg_028 :
    0 <= graphPotential 141 := by
  decide

theorem potential_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
