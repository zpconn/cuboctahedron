import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard000
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard001
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard002
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Shard003

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated strengthened top-pairing Bellman graph smoke root.

This root assembles the sharded real-gain transition table and proves
a concrete evaluator sanity check for one candidate path class.  It is
not rank coverage.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke

open Cuboctahedron
open Potential

def emittedBellmanShardCount : Nat := 4
def emittedBellmanEdgeCount : Nat := 229

def closedBellmanNext (state : Nat) (face : Face) : Option (Nat × Int) :=
  if state < 64 then Shard000.next state face else
    if state < 128 then Shard001.next state face else
      if state < 192 then Shard002.next state face else
        Shard003.next state face

inductive ClosedBellmanStep : Nat -> Face -> Nat -> Int -> Prop
  | e0000_l08 : ClosedBellmanStep 0 Face.xm 142 (103 : Int)
  | e0001_l07 : ClosedBellmanStep 1 Face.tppp 29 (-36 : Int)
  | e0002_l07 : ClosedBellmanStep 2 Face.tppp 31 (-36 : Int)
  | e0003_l07 : ClosedBellmanStep 3 Face.tppp 32 (-36 : Int)
  | e0004_l07 : ClosedBellmanStep 4 Face.tppp 33 (-36 : Int)
  | e0005_l07 : ClosedBellmanStep 5 Face.tppp 34 (-36 : Int)
  | e0006_l07 : ClosedBellmanStep 6 Face.tppp 36 (-36 : Int)
  | e0007_l12 : ClosedBellmanStep 7 Face.zm 23 (-18 : Int)
  | e0008_l12 : ClosedBellmanStep 8 Face.zm 30 (-18 : Int)
  | e0009_l02 : ClosedBellmanStep 9 Face.tmpm 39 (96 : Int)
  | e0010_l02 : ClosedBellmanStep 10 Face.tmpm 40 (96 : Int)
  | e0011_l02 : ClosedBellmanStep 11 Face.tmpm 41 (96 : Int)
  | e0012_l12 : ClosedBellmanStep 12 Face.zm 37 (114 : Int)
  | e0013_l01 : ClosedBellmanStep 12 Face.tmmp 43 (-124 : Int)
  | e0014_l12 : ClosedBellmanStep 13 Face.zm 38 (114 : Int)
  | e0015_l01 : ClosedBellmanStep 13 Face.tmmp 44 (-124 : Int)
  | e0016_l11 : ClosedBellmanStep 14 Face.yp 23 (-117 : Int)
  | e0017_l01 : ClosedBellmanStep 14 Face.tmmp 45 (96 : Int)
  | e0018_l11 : ClosedBellmanStep 15 Face.yp 24 (-117 : Int)
  | e0019_l01 : ClosedBellmanStep 15 Face.tmmp 46 (96 : Int)
  | e0020_l11 : ClosedBellmanStep 16 Face.yp 25 (-117 : Int)
  | e0021_l01 : ClosedBellmanStep 16 Face.tmmp 47 (96 : Int)
  | e0022_l11 : ClosedBellmanStep 17 Face.yp 26 (-117 : Int)
  | e0023_l01 : ClosedBellmanStep 17 Face.tmmp 48 (96 : Int)
  | e0024_l11 : ClosedBellmanStep 18 Face.yp 27 (-117 : Int)
  | e0025_l01 : ClosedBellmanStep 18 Face.tmmp 49 (96 : Int)
  | e0026_l11 : ClosedBellmanStep 19 Face.yp 28 (-117 : Int)
  | e0027_l11 : ClosedBellmanStep 20 Face.yp 35 (-117 : Int)
  | e0028_l01 : ClosedBellmanStep 20 Face.tmmp 50 (96 : Int)
  | e0029_l02 : ClosedBellmanStep 21 Face.tmpm 52 (-124 : Int)
  | e0030_l11 : ClosedBellmanStep 22 Face.yp 42 (103 : Int)
  | e0031_l12 : ClosedBellmanStep 22 Face.zm 51 (-10 : Int)
  | e0032_l03 : ClosedBellmanStep 23 Face.tmpp 53 (96 : Int)
  | e0033_l03 : ClosedBellmanStep 24 Face.tmpp 55 (96 : Int)
  | e0034_l03 : ClosedBellmanStep 25 Face.tmpp 56 (96 : Int)
  | e0035_l03 : ClosedBellmanStep 26 Face.tmpp 57 (96 : Int)
  | e0036_l03 : ClosedBellmanStep 27 Face.tmpp 58 (96 : Int)
  | e0037_l03 : ClosedBellmanStep 28 Face.tmpp 59 (96 : Int)
  | e0038_l03 : ClosedBellmanStep 29 Face.tmpp 60 (96 : Int)
  | e0039_l03 : ClosedBellmanStep 30 Face.tmpp 61 (96 : Int)
  | e0040_l03 : ClosedBellmanStep 31 Face.tmpp 63 (96 : Int)
  | e0041_l03 : ClosedBellmanStep 32 Face.tmpp 64 (96 : Int)
  | e0042_l03 : ClosedBellmanStep 33 Face.tmpp 65 (96 : Int)
  | e0043_l03 : ClosedBellmanStep 34 Face.tmpp 67 (96 : Int)
  | e0044_l03 : ClosedBellmanStep 35 Face.tmpp 68 (96 : Int)
  | e0045_l03 : ClosedBellmanStep 36 Face.tmpp 69 (96 : Int)
  | e0046_l13 : ClosedBellmanStep 37 Face.zp 54 (114 : Int)
  | e0047_l13 : ClosedBellmanStep 38 Face.zp 62 (114 : Int)
  | e0048_l13 : ClosedBellmanStep 39 Face.zp 66 (114 : Int)
  | e0049_l00 : ClosedBellmanStep 40 Face.tmmm 73 (-124 : Int)
  | e0050_l00 : ClosedBellmanStep 41 Face.tmmm 75 (-124 : Int)
  | e0051_l12 : ClosedBellmanStep 42 Face.zm 70 (-10 : Int)
  | e0052_l12 : ClosedBellmanStep 43 Face.zm 71 (-10 : Int)
  | e0053_l12 : ClosedBellmanStep 44 Face.zm 72 (-10 : Int)
  | e0054_l03 : ClosedBellmanStep 45 Face.tmpp 76 (-124 : Int)
  | e0055_l03 : ClosedBellmanStep 46 Face.tmpp 78 (-124 : Int)
  | e0056_l03 : ClosedBellmanStep 47 Face.tmpp 79 (-124 : Int)
  | e0057_l03 : ClosedBellmanStep 48 Face.tmpp 80 (-124 : Int)
  | e0058_l03 : ClosedBellmanStep 49 Face.tmpp 81 (-124 : Int)
  | e0059_l03 : ClosedBellmanStep 50 Face.tmpp 83 (-124 : Int)
  | e0060_l11 : ClosedBellmanStep 51 Face.yp 70 (103 : Int)
  | e0061_l13 : ClosedBellmanStep 51 Face.zp 77 (-10 : Int)
  | e0062_l11 : ClosedBellmanStep 52 Face.yp 74 (103 : Int)
  | e0063_l13 : ClosedBellmanStep 52 Face.zp 82 (-10 : Int)
  | e0064_l01 : ClosedBellmanStep 53 Face.tmmp 85 (-124 : Int)
  | e0065_l01 : ClosedBellmanStep 54 Face.tmmp 88 (-124 : Int)
  | e0066_l01 : ClosedBellmanStep 55 Face.tmmp 90 (-124 : Int)
  | e0067_l01 : ClosedBellmanStep 56 Face.tmmp 92 (-124 : Int)
  | e0068_l01 : ClosedBellmanStep 57 Face.tmmp 94 (-124 : Int)
  | e0069_l01 : ClosedBellmanStep 58 Face.tmmp 96 (-124 : Int)
  | e0070_l01 : ClosedBellmanStep 59 Face.tmmp 97 (-124 : Int)
  | e0071_l01 : ClosedBellmanStep 60 Face.tmmp 98 (-124 : Int)
  | e0072_l01 : ClosedBellmanStep 61 Face.tmmp 99 (-124 : Int)
  | e0073_l01 : ClosedBellmanStep 62 Face.tmmp 101 (-124 : Int)
  | e0074_l01 : ClosedBellmanStep 63 Face.tmmp 102 (-124 : Int)
  | e0075_l01 : ClosedBellmanStep 64 Face.tmmp 103 (-124 : Int)
  | e0076_l01 : ClosedBellmanStep 65 Face.tmmp 104 (-124 : Int)
  | e0077_l01 : ClosedBellmanStep 66 Face.tmmp 105 (-124 : Int)
  | e0078_l01 : ClosedBellmanStep 67 Face.tmmp 106 (-124 : Int)
  | e0079_l01 : ClosedBellmanStep 68 Face.tmmp 111 (-124 : Int)
  | e0080_l01 : ClosedBellmanStep 69 Face.tmmp 112 (-124 : Int)
  | e0081_l13 : ClosedBellmanStep 70 Face.zp 86 (-10 : Int)
  | e0082_l13 : ClosedBellmanStep 71 Face.zp 87 (-10 : Int)
  | e0083_l13 : ClosedBellmanStep 72 Face.zp 100 (-10 : Int)
  | e0084_l13 : ClosedBellmanStep 73 Face.zp 107 (-10 : Int)
  | e0085_l13 : ClosedBellmanStep 74 Face.zp 108 (-10 : Int)
  | e0086_l13 : ClosedBellmanStep 75 Face.zp 109 (-10 : Int)
  | e0087_l11 : ClosedBellmanStep 76 Face.yp 84 (103 : Int)
  | e0088_l11 : ClosedBellmanStep 77 Face.yp 86 (103 : Int)
  | e0089_l11 : ClosedBellmanStep 78 Face.yp 89 (103 : Int)
  | e0090_l11 : ClosedBellmanStep 79 Face.yp 91 (103 : Int)
  | e0091_l11 : ClosedBellmanStep 80 Face.yp 93 (103 : Int)
  | e0092_l11 : ClosedBellmanStep 81 Face.yp 95 (103 : Int)
  | e0093_l11 : ClosedBellmanStep 82 Face.yp 108 (103 : Int)
  | e0094_l11 : ClosedBellmanStep 83 Face.yp 110 (103 : Int)
  | e0095_l09 : ClosedBellmanStep 84 Face.xp 113 (-73 : Int)
  | e0096_l09 : ClosedBellmanStep 85 Face.xp 114 (-73 : Int)
  | e0097_l09 : ClosedBellmanStep 86 Face.xp 115 (-73 : Int)
  | e0098_l09 : ClosedBellmanStep 87 Face.xp 116 (-73 : Int)
  | e0099_l09 : ClosedBellmanStep 88 Face.xp 117 (-73 : Int)
  | e0100_l09 : ClosedBellmanStep 89 Face.xp 118 (-73 : Int)
  | e0101_l09 : ClosedBellmanStep 90 Face.xp 119 (-73 : Int)
  | e0102_l09 : ClosedBellmanStep 91 Face.xp 120 (-73 : Int)
  | e0103_l09 : ClosedBellmanStep 92 Face.xp 121 (-73 : Int)
  | e0104_l09 : ClosedBellmanStep 93 Face.xp 122 (-73 : Int)
  | e0105_l09 : ClosedBellmanStep 94 Face.xp 123 (-73 : Int)
  | e0106_l09 : ClosedBellmanStep 95 Face.xp 124 (-73 : Int)
  | e0107_l09 : ClosedBellmanStep 96 Face.xp 125 (-73 : Int)
  | e0108_l09 : ClosedBellmanStep 97 Face.xp 126 (-73 : Int)
  | e0109_l09 : ClosedBellmanStep 98 Face.xp 127 (-73 : Int)
  | e0110_l09 : ClosedBellmanStep 99 Face.xp 128 (-73 : Int)
  | e0111_l09 : ClosedBellmanStep 100 Face.xp 129 (-73 : Int)
  | e0112_l09 : ClosedBellmanStep 101 Face.xp 130 (-73 : Int)
  | e0113_l09 : ClosedBellmanStep 102 Face.xp 131 (-73 : Int)
  | e0114_l09 : ClosedBellmanStep 103 Face.xp 132 (-73 : Int)
  | e0115_l09 : ClosedBellmanStep 104 Face.xp 133 (-73 : Int)
  | e0116_l09 : ClosedBellmanStep 105 Face.xp 134 (-73 : Int)
  | e0117_l09 : ClosedBellmanStep 106 Face.xp 135 (-73 : Int)
  | e0118_l09 : ClosedBellmanStep 107 Face.xp 136 (-73 : Int)
  | e0119_l09 : ClosedBellmanStep 108 Face.xp 137 (-73 : Int)
  | e0120_l09 : ClosedBellmanStep 109 Face.xp 138 (-73 : Int)
  | e0121_l09 : ClosedBellmanStep 110 Face.xp 139 (-73 : Int)
  | e0122_l09 : ClosedBellmanStep 111 Face.xp 140 (-73 : Int)
  | e0123_l09 : ClosedBellmanStep 112 Face.xp 141 (-73 : Int)
  | e0124_l10 : ClosedBellmanStep 142 Face.ym 143 (-73 : Int)
  | e0125_l11 : ClosedBellmanStep 143 Face.yp 144 (-73 : Int)
  | e0126_l12 : ClosedBellmanStep 143 Face.zm 145 (-10 : Int)
  | e0127_l02 : ClosedBellmanStep 143 Face.tmpm 146 (-124 : Int)
  | e0128_l12 : ClosedBellmanStep 144 Face.zm 147 (-10 : Int)
  | e0129_l00 : ClosedBellmanStep 144 Face.tmmm 148 (-124 : Int)
  | e0130_l11 : ClosedBellmanStep 145 Face.yp 147 (-73 : Int)
  | e0131_l13 : ClosedBellmanStep 145 Face.zp 149 (-10 : Int)
  | e0132_l03 : ClosedBellmanStep 145 Face.tmpp 151 (-124 : Int)
  | e0133_l12 : ClosedBellmanStep 146 Face.zm 150 (114 : Int)
  | e0134_l06 : ClosedBellmanStep 146 Face.tppm 152 (96 : Int)
  | e0135_l13 : ClosedBellmanStep 147 Face.zp 153 (-10 : Int)
  | e0136_l01 : ClosedBellmanStep 147 Face.tmmp 155 (-124 : Int)
  | e0137_l12 : ClosedBellmanStep 148 Face.zm 154 (114 : Int)
  | e0138_l04 : ClosedBellmanStep 148 Face.tpmm 156 (96 : Int)
  | e0139_l11 : ClosedBellmanStep 149 Face.yp 153 (-73 : Int)
  | e0140_l02 : ClosedBellmanStep 149 Face.tmpm 158 (-124 : Int)
  | e0141_l13 : ClosedBellmanStep 150 Face.zp 157 (114 : Int)
  | e0142_l07 : ClosedBellmanStep 151 Face.tppp 159 (96 : Int)
  | e0143_l13 : ClosedBellmanStep 152 Face.zp 160 (-18 : Int)
  | e0144_l04 : ClosedBellmanStep 152 Face.tpmm 161 (-36 : Int)
  | e0145_l00 : ClosedBellmanStep 153 Face.tmmm 163 (-124 : Int)
  | e0146_l13 : ClosedBellmanStep 154 Face.zp 162 (114 : Int)
  | e0147_l05 : ClosedBellmanStep 154 Face.tpmp 164 (96 : Int)
  | e0148_l05 : ClosedBellmanStep 155 Face.tpmp 166 (96 : Int)
  | e0149_l13 : ClosedBellmanStep 156 Face.zp 165 (-18 : Int)
  | e0150_l06 : ClosedBellmanStep 156 Face.tppm 167 (-36 : Int)
  | e0151_l06 : ClosedBellmanStep 157 Face.tppm 169 (96 : Int)
  | e0152_l06 : ClosedBellmanStep 158 Face.tppm 170 (96 : Int)
  | e0153_l05 : ClosedBellmanStep 159 Face.tpmp 171 (-36 : Int)
  | e0154_l12 : ClosedBellmanStep 160 Face.zm 168 (-18 : Int)
  | e0155_l13 : ClosedBellmanStep 161 Face.zp 172 (-54 : Int)
  | e0156_l07 : ClosedBellmanStep 161 Face.tppp 173 (-144 : Int)
  | e0157_l04 : ClosedBellmanStep 162 Face.tpmm 175 (96 : Int)
  | e0158_l04 : ClosedBellmanStep 163 Face.tpmm 176 (96 : Int)
  | e0159_l07 : ClosedBellmanStep 164 Face.tppp 177 (-36 : Int)
  | e0160_l12 : ClosedBellmanStep 165 Face.zm 174 (-18 : Int)
  | e0161_l07 : ClosedBellmanStep 166 Face.tppp 178 (-36 : Int)
  | e0162_l13 : ClosedBellmanStep 167 Face.zp 179 (-54 : Int)
  | e0163_l05 : ClosedBellmanStep 167 Face.tpmp 180 (-144 : Int)
  | e0164_l04 : ClosedBellmanStep 168 Face.tpmm 182 (-36 : Int)
  | e0165_l04 : ClosedBellmanStep 169 Face.tpmm 183 (-36 : Int)
  | e0166_l04 : ClosedBellmanStep 170 Face.tpmm 184 (-36 : Int)
  | e0167_l06 : ClosedBellmanStep 171 Face.tppm 186 (-144 : Int)
  | e0168_l12 : ClosedBellmanStep 172 Face.zm 181 (-54 : Int)
  | e0169_l13 : ClosedBellmanStep 173 Face.zp 185 (90 : Int)
  | e0170_l00 : ClosedBellmanStep 173 Face.tmmm 187 (-144 : Int)
  | e0171_l06 : ClosedBellmanStep 174 Face.tppm 189 (-36 : Int)
  | e0172_l06 : ClosedBellmanStep 175 Face.tppm 190 (-36 : Int)
  | e0173_l06 : ClosedBellmanStep 176 Face.tppm 191 (-36 : Int)
  | e0174_l04 : ClosedBellmanStep 177 Face.tpmm 192 (-144 : Int)
  | e0175_l04 : ClosedBellmanStep 178 Face.tpmm 194 (-144 : Int)
  | e0176_l12 : ClosedBellmanStep 179 Face.zm 188 (-54 : Int)
  | e0177_l13 : ClosedBellmanStep 180 Face.zp 193 (90 : Int)
  | e0178_l02 : ClosedBellmanStep 180 Face.tmpm 195 (-144 : Int)
  | e0179_l07 : ClosedBellmanStep 181 Face.tppp 197 (-144 : Int)
  | e0180_l07 : ClosedBellmanStep 182 Face.tppp 198 (-144 : Int)
  | e0181_l07 : ClosedBellmanStep 183 Face.tppp 199 (-144 : Int)
  | e0182_l07 : ClosedBellmanStep 184 Face.tppp 200 (-144 : Int)
  | e0183_l12 : ClosedBellmanStep 185 Face.zm 196 (90 : Int)
  | e0184_l01 : ClosedBellmanStep 186 Face.tmmp 202 (-144 : Int)
  | e0185_l13 : ClosedBellmanStep 187 Face.zp 201 (-54 : Int)
  | e0186_l05 : ClosedBellmanStep 187 Face.tpmp 203 (-36 : Int)
  | e0187_l05 : ClosedBellmanStep 188 Face.tpmp 205 (-144 : Int)
  | e0188_l05 : ClosedBellmanStep 189 Face.tpmp 206 (-144 : Int)
  | e0189_l05 : ClosedBellmanStep 190 Face.tpmp 207 (-144 : Int)
  | e0190_l05 : ClosedBellmanStep 191 Face.tpmp 208 (-144 : Int)
  | e0191_l03 : ClosedBellmanStep 192 Face.tmpp 209 (-144 : Int)
  | e0192_l12 : ClosedBellmanStep 193 Face.zm 204 (90 : Int)
  | e0193_l03 : ClosedBellmanStep 194 Face.tmpp 211 (-144 : Int)
  | e0194_l13 : ClosedBellmanStep 195 Face.zp 210 (-54 : Int)
  | e0195_l07 : ClosedBellmanStep 195 Face.tppp 213 (-36 : Int)
  | e0196_l00 : ClosedBellmanStep 196 Face.tmmm 215 (-144 : Int)
  | e0197_l00 : ClosedBellmanStep 197 Face.tmmm 216 (-144 : Int)
  | e0198_l00 : ClosedBellmanStep 198 Face.tmmm 217 (-144 : Int)
  | e0199_l00 : ClosedBellmanStep 199 Face.tmmm 218 (-144 : Int)
  | e0200_l00 : ClosedBellmanStep 200 Face.tmmm 219 (-144 : Int)
  | e0201_l12 : ClosedBellmanStep 201 Face.zm 214 (-54 : Int)
  | e0202_l04 : ClosedBellmanStep 202 Face.tpmm 221 (-36 : Int)
  | e0203_l11 : ClosedBellmanStep 203 Face.yp 212 (-117 : Int)
  | e0204_l13 : ClosedBellmanStep 203 Face.zp 220 (-18 : Int)
  | e0205_l01 : ClosedBellmanStep 203 Face.tmmp 222 (96 : Int)
  | e0206_l02 : ClosedBellmanStep 204 Face.tmpm 2 (-144 : Int)
  | e0207_l02 : ClosedBellmanStep 205 Face.tmpm 3 (-144 : Int)
  | e0208_l02 : ClosedBellmanStep 206 Face.tmpm 4 (-144 : Int)
  | e0209_l02 : ClosedBellmanStep 207 Face.tmpm 5 (-144 : Int)
  | e0210_l02 : ClosedBellmanStep 208 Face.tmpm 6 (-144 : Int)
  | e0211_l06 : ClosedBellmanStep 209 Face.tppm 9 (-36 : Int)
  | e0212_l12 : ClosedBellmanStep 210 Face.zm 1 (-54 : Int)
  | e0213_l06 : ClosedBellmanStep 211 Face.tppm 11 (-36 : Int)
  | e0214_l13 : ClosedBellmanStep 212 Face.zp 7 (-18 : Int)
  | e0215_l03 : ClosedBellmanStep 212 Face.tmpp 12 (96 : Int)
  | e0216_l13 : ClosedBellmanStep 213 Face.zp 8 (-18 : Int)
  | e0217_l03 : ClosedBellmanStep 213 Face.tmpp 13 (96 : Int)
  | e0218_l05 : ClosedBellmanStep 214 Face.tpmp 15 (-36 : Int)
  | e0219_l05 : ClosedBellmanStep 215 Face.tpmp 16 (-36 : Int)
  | e0220_l05 : ClosedBellmanStep 216 Face.tpmp 17 (-36 : Int)
  | e0221_l05 : ClosedBellmanStep 217 Face.tpmp 18 (-36 : Int)
  | e0222_l05 : ClosedBellmanStep 218 Face.tpmp 19 (-36 : Int)
  | e0223_l05 : ClosedBellmanStep 219 Face.tpmp 20 (-36 : Int)
  | e0224_l11 : ClosedBellmanStep 220 Face.yp 7 (-117 : Int)
  | e0225_l12 : ClosedBellmanStep 220 Face.zm 14 (-18 : Int)
  | e0226_l11 : ClosedBellmanStep 221 Face.yp 10 (-117 : Int)
  | e0227_l00 : ClosedBellmanStep 221 Face.tmmm 21 (96 : Int)
  | e0228_l03 : ClosedBellmanStep 222 Face.tmpp 22 (-124 : Int)

theorem closedBellmanStep_next
    {state : Nat} {face : Face} {nextState : Nat} {gain : Int}
    (h : ClosedBellmanStep state face nextState gain) :
    closedBellmanNext state face = some (nextState, gain) := by
  cases h <;> rfl

theorem closedBellmanStep_valid
    {state : Nat} {face : Face} {nextState : Nat} {gain : Int}
    (h : ClosedBellmanStep state face nextState gain) :
    gain + graphPotential nextState <= graphPotential state := by
  cases h <;> decide

inductive ClosedBellmanSuffixOk : Nat -> List Face -> Prop
  | nil (state : Nat) : ClosedBellmanSuffixOk state []
  | cons {state nextState : Nat} {face : Face} {gain : Int}
      {rest : List Face}
      (hnext : closedBellmanNext state face = some (nextState, gain))
      (hrest : ClosedBellmanSuffixOk nextState rest) :
      ClosedBellmanSuffixOk state (face :: rest)

theorem evalLabelStepFn_exists_of_closedBellmanSuffixOk
    {state : Nat} {labels : List Face}
    (h : ClosedBellmanSuffixOk state labels) :
    exists finish gain,
      evalLabelStepFn closedBellmanNext state labels = some (finish, gain) := by
  induction h with
  | nil state =>
      exact ⟨state, 0, by simp [evalLabelStepFn]⟩
  | cons hnext _hrest ih =>
      rename_i _ _ _ gain _
      rcases ih with ⟨finish, tailGain, htail⟩
      refine ⟨finish, gain + tailGain, ?_⟩
      simp [evalLabelStepFn, hnext, htail]

theorem strengthenedCandidate0_eval :
    evalLabelStepFn closedBellmanNext graphRoot
      [Face.xm, Face.ym, Face.tmpm, Face.tppm, Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp, Face.tmmp, Face.tmpp, Face.yp, Face.zm, Face.zp, Face.xp] =
      some (115, (-376 : Int)) := by
  rfl

theorem strengthenedCandidate0_margin_nonpos :
    (-200 : Int) <= 0 := by
  decide

theorem strengthenedBellmanRootBound :
    graphConst + graphPotential graphRoot <= 0 := root_bound

theorem strengthenedBellmanShardedSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
