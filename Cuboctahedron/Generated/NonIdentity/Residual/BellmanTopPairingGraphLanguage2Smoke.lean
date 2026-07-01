import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.FaceLabelLanguage
import Cuboctahedron.Search.AxisForcedRankLanguage
import Cuboctahedron.Search.BellmanAxisBridge
import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-!
Generated-style graph smoke for a Bellman nonidentity margin family.

This file is not final generated coverage.  It verifies one bounded
private Bellman graph emitted from the exact tri-source profiler.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke

open Cuboctahedron

-- state count: 223
private inductive State where
  | s0000
  | s0001
  | s0002
  | s0003
  | s0004
  | s0005
  | s0006
  | s0007
  | s0008
  | s0009
  | s0010
  | s0011
  | s0012
  | s0013
  | s0014
  | s0015
  | s0016
  | s0017
  | s0018
  | s0019
  | s0020
  | s0021
  | s0022
  | s0023
  | s0024
  | s0025
  | s0026
  | s0027
  | s0028
  | s0029
  | s0030
  | s0031
  | s0032
  | s0033
  | s0034
  | s0035
  | s0036
  | s0037
  | s0038
  | s0039
  | s0040
  | s0041
  | s0042
  | s0043
  | s0044
  | s0045
  | s0046
  | s0047
  | s0048
  | s0049
  | s0050
  | s0051
  | s0052
  | s0053
  | s0054
  | s0055
  | s0056
  | s0057
  | s0058
  | s0059
  | s0060
  | s0061
  | s0062
  | s0063
  | s0064
  | s0065
  | s0066
  | s0067
  | s0068
  | s0069
  | s0070
  | s0071
  | s0072
  | s0073
  | s0074
  | s0075
  | s0076
  | s0077
  | s0078
  | s0079
  | s0080
  | s0081
  | s0082
  | s0083
  | s0084
  | s0085
  | s0086
  | s0087
  | s0088
  | s0089
  | s0090
  | s0091
  | s0092
  | s0093
  | s0094
  | s0095
  | s0096
  | s0097
  | s0098
  | s0099
  | s0100
  | s0101
  | s0102
  | s0103
  | s0104
  | s0105
  | s0106
  | s0107
  | s0108
  | s0109
  | s0110
  | s0111
  | s0112
  | s0113
  | s0114
  | s0115
  | s0116
  | s0117
  | s0118
  | s0119
  | s0120
  | s0121
  | s0122
  | s0123
  | s0124
  | s0125
  | s0126
  | s0127
  | s0128
  | s0129
  | s0130
  | s0131
  | s0132
  | s0133
  | s0134
  | s0135
  | s0136
  | s0137
  | s0138
  | s0139
  | s0140
  | s0141
  | s0142
  | s0143
  | s0144
  | s0145
  | s0146
  | s0147
  | s0148
  | s0149
  | s0150
  | s0151
  | s0152
  | s0153
  | s0154
  | s0155
  | s0156
  | s0157
  | s0158
  | s0159
  | s0160
  | s0161
  | s0162
  | s0163
  | s0164
  | s0165
  | s0166
  | s0167
  | s0168
  | s0169
  | s0170
  | s0171
  | s0172
  | s0173
  | s0174
  | s0175
  | s0176
  | s0177
  | s0178
  | s0179
  | s0180
  | s0181
  | s0182
  | s0183
  | s0184
  | s0185
  | s0186
  | s0187
  | s0188
  | s0189
  | s0190
  | s0191
  | s0192
  | s0193
  | s0194
  | s0195
  | s0196
  | s0197
  | s0198
  | s0199
  | s0200
  | s0201
  | s0202
  | s0203
  | s0204
  | s0205
  | s0206
  | s0207
  | s0208
  | s0209
  | s0210
  | s0211
  | s0212
  | s0213
  | s0214
  | s0215
  | s0216
  | s0217
  | s0218
  | s0219
  | s0220
  | s0221
  | s0222

private def graphPotential : State -> Int
  | State.s0000 => -176
  | State.s0001 => -137
  | State.s0002 => -137
  | State.s0003 => -137
  | State.s0004 => -137
  | State.s0005 => -137
  | State.s0006 => -137
  | State.s0007 => -119
  | State.s0008 => -119
  | State.s0009 => 13
  | State.s0010 => -111
  | State.s0011 => -111
  | State.s0012 => 31
  | State.s0013 => 31
  | State.s0014 => 2
  | State.s0015 => 2
  | State.s0016 => 2
  | State.s0017 => 2
  | State.s0018 => 2
  | State.s0019 => -218
  | State.s0020 => 2
  | State.s0021 => -104
  | State.s0022 => 10
  | State.s0023 => -101
  | State.s0024 => -101
  | State.s0025 => -101
  | State.s0026 => -101
  | State.s0027 => -101
  | State.s0028 => -101
  | State.s0029 => -101
  | State.s0030 => -101
  | State.s0031 => -101
  | State.s0032 => -101
  | State.s0033 => -101
  | State.s0034 => -101
  | State.s0035 => -101
  | State.s0036 => -101
  | State.s0037 => -83
  | State.s0038 => -83
  | State.s0039 => -83
  | State.s0040 => -207
  | State.s0041 => -207
  | State.s0042 => -93
  | State.s0043 => -93
  | State.s0044 => -93
  | State.s0045 => -94
  | State.s0046 => -94
  | State.s0047 => -94
  | State.s0048 => -94
  | State.s0049 => -94
  | State.s0050 => -94
  | State.s0051 => 20
  | State.s0052 => 20
  | State.s0053 => -197
  | State.s0054 => -197
  | State.s0055 => -197
  | State.s0056 => -197
  | State.s0057 => -197
  | State.s0058 => -197
  | State.s0059 => -197
  | State.s0060 => -197
  | State.s0061 => -197
  | State.s0062 => -197
  | State.s0063 => -197
  | State.s0064 => -197
  | State.s0065 => -197
  | State.s0066 => -197
  | State.s0067 => -197
  | State.s0068 => -197
  | State.s0069 => -197
  | State.s0070 => -83
  | State.s0071 => -83
  | State.s0072 => -83
  | State.s0073 => -83
  | State.s0074 => -83
  | State.s0075 => -83
  | State.s0076 => 30
  | State.s0077 => 30
  | State.s0078 => 30
  | State.s0079 => 30
  | State.s0080 => 30
  | State.s0081 => 30
  | State.s0082 => 30
  | State.s0083 => 30
  | State.s0084 => -73
  | State.s0085 => -73
  | State.s0086 => -73
  | State.s0087 => -73
  | State.s0088 => -73
  | State.s0089 => -73
  | State.s0090 => -73
  | State.s0091 => -73
  | State.s0092 => -73
  | State.s0093 => -73
  | State.s0094 => -73
  | State.s0095 => -73
  | State.s0096 => -73
  | State.s0097 => -73
  | State.s0098 => -73
  | State.s0099 => -73
  | State.s0100 => -73
  | State.s0101 => -73
  | State.s0102 => -73
  | State.s0103 => -73
  | State.s0104 => -73
  | State.s0105 => -73
  | State.s0106 => -73
  | State.s0107 => -73
  | State.s0108 => -73
  | State.s0109 => -73
  | State.s0110 => -73
  | State.s0111 => -73
  | State.s0112 => -73
  | State.s0113 => 0
  | State.s0114 => 0
  | State.s0115 => 0
  | State.s0116 => 0
  | State.s0117 => 0
  | State.s0118 => 0
  | State.s0119 => 0
  | State.s0120 => 0
  | State.s0121 => 0
  | State.s0122 => 0
  | State.s0123 => 0
  | State.s0124 => 0
  | State.s0125 => 0
  | State.s0126 => 0
  | State.s0127 => 0
  | State.s0128 => 0
  | State.s0129 => 0
  | State.s0130 => 0
  | State.s0131 => 0
  | State.s0132 => 0
  | State.s0133 => 0
  | State.s0134 => 0
  | State.s0135 => 0
  | State.s0136 => 0
  | State.s0137 => 0
  | State.s0138 => 0
  | State.s0139 => 0
  | State.s0140 => 0
  | State.s0141 => 0
  | State.s0142 => -279
  | State.s0143 => -206
  | State.s0144 => -261
  | State.s0145 => -396
  | State.s0146 => -82
  | State.s0147 => -499
  | State.s0148 => -137
  | State.s0149 => -386
  | State.s0150 => -368
  | State.s0151 => -272
  | State.s0152 => -178
  | State.s0153 => -489
  | State.s0154 => -251
  | State.s0155 => -375
  | State.s0156 => -233
  | State.s0157 => -482
  | State.s0158 => -262
  | State.s0159 => -376
  | State.s0160 => -368
  | State.s0161 => -142
  | State.s0162 => -365
  | State.s0163 => -365
  | State.s0164 => -479
  | State.s0165 => -347
  | State.s0166 => -471
  | State.s0167 => -197
  | State.s0168 => -358
  | State.s0169 => -578
  | State.s0170 => -358
  | State.s0171 => -376
  | State.s0172 => -332
  | State.s0173 => 2
  | State.s0174 => -461
  | State.s0175 => -461
  | State.s0176 => -461
  | State.s0177 => -479
  | State.s0178 => -311
  | State.s0179 => -435
  | State.s0180 => -53
  | State.s0181 => -322
  | State.s0182 => -322
  | State.s0183 => -542
  | State.s0184 => -322
  | State.s0185 => -88
  | State.s0186 => -188
  | State.s0187 => -26
  | State.s0188 => -425
  | State.s0189 => -425
  | State.s0190 => -425
  | State.s0191 => -425
  | State.s0192 => -191
  | State.s0193 => -167
  | State.s0194 => -291
  | State.s0195 => 91
  | State.s0196 => -178
  | State.s0197 => -178
  | State.s0198 => -178
  | State.s0199 => -398
  | State.s0200 => -178
  | State.s0201 => -88
  | State.s0202 => -44
  | State.s0203 => 10
  | State.s0204 => -281
  | State.s0205 => -281
  | State.s0206 => -281
  | State.s0207 => -281
  | State.s0208 => -281
  | State.s0209 => -191
  | State.s0210 => -23
  | State.s0211 => -147
  | State.s0212 => 127
  | State.s0213 => 127
  | State.s0214 => -34
  | State.s0215 => -34
  | State.s0216 => -34
  | State.s0217 => -34
  | State.s0218 => -254
  | State.s0219 => -34
  | State.s0220 => -16
  | State.s0221 => -8
  | State.s0222 => -114

private def rootState : State := State.s0000

private def edge0000 : BellmanEdge State :=
  { src := State.s0000, gain := 103, dst := State.s0142 }

private theorem edge0000_valid : edge0000.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0142 <= graphPotential State.s0000
  decide

private def edge0001 : BellmanEdge State :=
  { src := State.s0001, gain := -36, dst := State.s0029 }

private theorem edge0001_valid : edge0001.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0029 <= graphPotential State.s0001
  decide

private def edge0002 : BellmanEdge State :=
  { src := State.s0002, gain := -36, dst := State.s0031 }

private theorem edge0002_valid : edge0002.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0031 <= graphPotential State.s0002
  decide

private def edge0003 : BellmanEdge State :=
  { src := State.s0003, gain := -36, dst := State.s0032 }

private theorem edge0003_valid : edge0003.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0032 <= graphPotential State.s0003
  decide

private def edge0004 : BellmanEdge State :=
  { src := State.s0004, gain := -36, dst := State.s0033 }

private theorem edge0004_valid : edge0004.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0033 <= graphPotential State.s0004
  decide

private def edge0005 : BellmanEdge State :=
  { src := State.s0005, gain := -36, dst := State.s0034 }

private theorem edge0005_valid : edge0005.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0034 <= graphPotential State.s0005
  decide

private def edge0006 : BellmanEdge State :=
  { src := State.s0006, gain := -36, dst := State.s0036 }

private theorem edge0006_valid : edge0006.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0036 <= graphPotential State.s0006
  decide

private def edge0007 : BellmanEdge State :=
  { src := State.s0007, gain := -18, dst := State.s0023 }

private theorem edge0007_valid : edge0007.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0023 <= graphPotential State.s0007
  decide

private def edge0008 : BellmanEdge State :=
  { src := State.s0008, gain := -18, dst := State.s0030 }

private theorem edge0008_valid : edge0008.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0030 <= graphPotential State.s0008
  decide

private def edge0009 : BellmanEdge State :=
  { src := State.s0009, gain := 96, dst := State.s0039 }

private theorem edge0009_valid : edge0009.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0039 <= graphPotential State.s0009
  decide

private def edge0010 : BellmanEdge State :=
  { src := State.s0010, gain := 96, dst := State.s0040 }

private theorem edge0010_valid : edge0010.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0040 <= graphPotential State.s0010
  decide

private def edge0011 : BellmanEdge State :=
  { src := State.s0011, gain := 96, dst := State.s0041 }

private theorem edge0011_valid : edge0011.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0041 <= graphPotential State.s0011
  decide

private def edge0012 : BellmanEdge State :=
  { src := State.s0012, gain := 114, dst := State.s0037 }

private theorem edge0012_valid : edge0012.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0037 <= graphPotential State.s0012
  decide

private def edge0013 : BellmanEdge State :=
  { src := State.s0012, gain := -124, dst := State.s0043 }

private theorem edge0013_valid : edge0013.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0043 <= graphPotential State.s0012
  decide

private def edge0014 : BellmanEdge State :=
  { src := State.s0013, gain := 114, dst := State.s0038 }

private theorem edge0014_valid : edge0014.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0038 <= graphPotential State.s0013
  decide

private def edge0015 : BellmanEdge State :=
  { src := State.s0013, gain := -124, dst := State.s0044 }

private theorem edge0015_valid : edge0015.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0044 <= graphPotential State.s0013
  decide

private def edge0016 : BellmanEdge State :=
  { src := State.s0014, gain := -117, dst := State.s0023 }

private theorem edge0016_valid : edge0016.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0023 <= graphPotential State.s0014
  decide

private def edge0017 : BellmanEdge State :=
  { src := State.s0014, gain := 96, dst := State.s0045 }

private theorem edge0017_valid : edge0017.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0045 <= graphPotential State.s0014
  decide

private def edge0018 : BellmanEdge State :=
  { src := State.s0015, gain := -117, dst := State.s0024 }

private theorem edge0018_valid : edge0018.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0024 <= graphPotential State.s0015
  decide

private def edge0019 : BellmanEdge State :=
  { src := State.s0015, gain := 96, dst := State.s0046 }

private theorem edge0019_valid : edge0019.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0046 <= graphPotential State.s0015
  decide

private def edge0020 : BellmanEdge State :=
  { src := State.s0016, gain := -117, dst := State.s0025 }

private theorem edge0020_valid : edge0020.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0025 <= graphPotential State.s0016
  decide

private def edge0021 : BellmanEdge State :=
  { src := State.s0016, gain := 96, dst := State.s0047 }

private theorem edge0021_valid : edge0021.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0047 <= graphPotential State.s0016
  decide

private def edge0022 : BellmanEdge State :=
  { src := State.s0017, gain := -117, dst := State.s0026 }

private theorem edge0022_valid : edge0022.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0026 <= graphPotential State.s0017
  decide

private def edge0023 : BellmanEdge State :=
  { src := State.s0017, gain := 96, dst := State.s0048 }

private theorem edge0023_valid : edge0023.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0048 <= graphPotential State.s0017
  decide

private def edge0024 : BellmanEdge State :=
  { src := State.s0018, gain := -117, dst := State.s0027 }

private theorem edge0024_valid : edge0024.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0027 <= graphPotential State.s0018
  decide

private def edge0025 : BellmanEdge State :=
  { src := State.s0018, gain := 96, dst := State.s0049 }

private theorem edge0025_valid : edge0025.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0049 <= graphPotential State.s0018
  decide

private def edge0026 : BellmanEdge State :=
  { src := State.s0019, gain := -117, dst := State.s0028 }

private theorem edge0026_valid : edge0026.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0028 <= graphPotential State.s0019
  decide

private def edge0027 : BellmanEdge State :=
  { src := State.s0020, gain := -117, dst := State.s0035 }

private theorem edge0027_valid : edge0027.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0035 <= graphPotential State.s0020
  decide

private def edge0028 : BellmanEdge State :=
  { src := State.s0020, gain := 96, dst := State.s0050 }

private theorem edge0028_valid : edge0028.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0050 <= graphPotential State.s0020
  decide

private def edge0029 : BellmanEdge State :=
  { src := State.s0021, gain := -124, dst := State.s0052 }

private theorem edge0029_valid : edge0029.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0052 <= graphPotential State.s0021
  decide

private def edge0030 : BellmanEdge State :=
  { src := State.s0022, gain := 103, dst := State.s0042 }

private theorem edge0030_valid : edge0030.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0042 <= graphPotential State.s0022
  decide

private def edge0031 : BellmanEdge State :=
  { src := State.s0022, gain := -10, dst := State.s0051 }

private theorem edge0031_valid : edge0031.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0051 <= graphPotential State.s0022
  decide

private def edge0032 : BellmanEdge State :=
  { src := State.s0023, gain := 96, dst := State.s0053 }

private theorem edge0032_valid : edge0032.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0053 <= graphPotential State.s0023
  decide

private def edge0033 : BellmanEdge State :=
  { src := State.s0024, gain := 96, dst := State.s0055 }

private theorem edge0033_valid : edge0033.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0055 <= graphPotential State.s0024
  decide

private def edge0034 : BellmanEdge State :=
  { src := State.s0025, gain := 96, dst := State.s0056 }

private theorem edge0034_valid : edge0034.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0056 <= graphPotential State.s0025
  decide

private def edge0035 : BellmanEdge State :=
  { src := State.s0026, gain := 96, dst := State.s0057 }

private theorem edge0035_valid : edge0035.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0057 <= graphPotential State.s0026
  decide

private def edge0036 : BellmanEdge State :=
  { src := State.s0027, gain := 96, dst := State.s0058 }

private theorem edge0036_valid : edge0036.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0058 <= graphPotential State.s0027
  decide

private def edge0037 : BellmanEdge State :=
  { src := State.s0028, gain := 96, dst := State.s0059 }

private theorem edge0037_valid : edge0037.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0059 <= graphPotential State.s0028
  decide

private def edge0038 : BellmanEdge State :=
  { src := State.s0029, gain := 96, dst := State.s0060 }

private theorem edge0038_valid : edge0038.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0060 <= graphPotential State.s0029
  decide

private def edge0039 : BellmanEdge State :=
  { src := State.s0030, gain := 96, dst := State.s0061 }

private theorem edge0039_valid : edge0039.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0061 <= graphPotential State.s0030
  decide

private def edge0040 : BellmanEdge State :=
  { src := State.s0031, gain := 96, dst := State.s0063 }

private theorem edge0040_valid : edge0040.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0063 <= graphPotential State.s0031
  decide

private def edge0041 : BellmanEdge State :=
  { src := State.s0032, gain := 96, dst := State.s0064 }

private theorem edge0041_valid : edge0041.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0064 <= graphPotential State.s0032
  decide

private def edge0042 : BellmanEdge State :=
  { src := State.s0033, gain := 96, dst := State.s0065 }

private theorem edge0042_valid : edge0042.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0065 <= graphPotential State.s0033
  decide

private def edge0043 : BellmanEdge State :=
  { src := State.s0034, gain := 96, dst := State.s0067 }

private theorem edge0043_valid : edge0043.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0067 <= graphPotential State.s0034
  decide

private def edge0044 : BellmanEdge State :=
  { src := State.s0035, gain := 96, dst := State.s0068 }

private theorem edge0044_valid : edge0044.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0068 <= graphPotential State.s0035
  decide

private def edge0045 : BellmanEdge State :=
  { src := State.s0036, gain := 96, dst := State.s0069 }

private theorem edge0045_valid : edge0045.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0069 <= graphPotential State.s0036
  decide

private def edge0046 : BellmanEdge State :=
  { src := State.s0037, gain := 114, dst := State.s0054 }

private theorem edge0046_valid : edge0046.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0054 <= graphPotential State.s0037
  decide

private def edge0047 : BellmanEdge State :=
  { src := State.s0038, gain := 114, dst := State.s0062 }

private theorem edge0047_valid : edge0047.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0062 <= graphPotential State.s0038
  decide

private def edge0048 : BellmanEdge State :=
  { src := State.s0039, gain := 114, dst := State.s0066 }

private theorem edge0048_valid : edge0048.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0066 <= graphPotential State.s0039
  decide

private def edge0049 : BellmanEdge State :=
  { src := State.s0040, gain := -124, dst := State.s0073 }

private theorem edge0049_valid : edge0049.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0073 <= graphPotential State.s0040
  decide

private def edge0050 : BellmanEdge State :=
  { src := State.s0041, gain := -124, dst := State.s0075 }

private theorem edge0050_valid : edge0050.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0075 <= graphPotential State.s0041
  decide

private def edge0051 : BellmanEdge State :=
  { src := State.s0042, gain := -10, dst := State.s0070 }

private theorem edge0051_valid : edge0051.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0070 <= graphPotential State.s0042
  decide

private def edge0052 : BellmanEdge State :=
  { src := State.s0043, gain := -10, dst := State.s0071 }

private theorem edge0052_valid : edge0052.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0071 <= graphPotential State.s0043
  decide

private def edge0053 : BellmanEdge State :=
  { src := State.s0044, gain := -10, dst := State.s0072 }

private theorem edge0053_valid : edge0053.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0072 <= graphPotential State.s0044
  decide

private def edge0054 : BellmanEdge State :=
  { src := State.s0045, gain := -124, dst := State.s0076 }

private theorem edge0054_valid : edge0054.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0076 <= graphPotential State.s0045
  decide

private def edge0055 : BellmanEdge State :=
  { src := State.s0046, gain := -124, dst := State.s0078 }

private theorem edge0055_valid : edge0055.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0078 <= graphPotential State.s0046
  decide

private def edge0056 : BellmanEdge State :=
  { src := State.s0047, gain := -124, dst := State.s0079 }

private theorem edge0056_valid : edge0056.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0079 <= graphPotential State.s0047
  decide

private def edge0057 : BellmanEdge State :=
  { src := State.s0048, gain := -124, dst := State.s0080 }

private theorem edge0057_valid : edge0057.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0080 <= graphPotential State.s0048
  decide

private def edge0058 : BellmanEdge State :=
  { src := State.s0049, gain := -124, dst := State.s0081 }

private theorem edge0058_valid : edge0058.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0081 <= graphPotential State.s0049
  decide

private def edge0059 : BellmanEdge State :=
  { src := State.s0050, gain := -124, dst := State.s0083 }

private theorem edge0059_valid : edge0059.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0083 <= graphPotential State.s0050
  decide

private def edge0060 : BellmanEdge State :=
  { src := State.s0051, gain := 103, dst := State.s0070 }

private theorem edge0060_valid : edge0060.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0070 <= graphPotential State.s0051
  decide

private def edge0061 : BellmanEdge State :=
  { src := State.s0051, gain := -10, dst := State.s0077 }

private theorem edge0061_valid : edge0061.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0077 <= graphPotential State.s0051
  decide

private def edge0062 : BellmanEdge State :=
  { src := State.s0052, gain := 103, dst := State.s0074 }

private theorem edge0062_valid : edge0062.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0074 <= graphPotential State.s0052
  decide

private def edge0063 : BellmanEdge State :=
  { src := State.s0052, gain := -10, dst := State.s0082 }

private theorem edge0063_valid : edge0063.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0082 <= graphPotential State.s0052
  decide

private def edge0064 : BellmanEdge State :=
  { src := State.s0053, gain := -124, dst := State.s0085 }

private theorem edge0064_valid : edge0064.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0085 <= graphPotential State.s0053
  decide

private def edge0065 : BellmanEdge State :=
  { src := State.s0054, gain := -124, dst := State.s0088 }

private theorem edge0065_valid : edge0065.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0088 <= graphPotential State.s0054
  decide

private def edge0066 : BellmanEdge State :=
  { src := State.s0055, gain := -124, dst := State.s0090 }

private theorem edge0066_valid : edge0066.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0090 <= graphPotential State.s0055
  decide

private def edge0067 : BellmanEdge State :=
  { src := State.s0056, gain := -124, dst := State.s0092 }

private theorem edge0067_valid : edge0067.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0092 <= graphPotential State.s0056
  decide

private def edge0068 : BellmanEdge State :=
  { src := State.s0057, gain := -124, dst := State.s0094 }

private theorem edge0068_valid : edge0068.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0094 <= graphPotential State.s0057
  decide

private def edge0069 : BellmanEdge State :=
  { src := State.s0058, gain := -124, dst := State.s0096 }

private theorem edge0069_valid : edge0069.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0096 <= graphPotential State.s0058
  decide

private def edge0070 : BellmanEdge State :=
  { src := State.s0059, gain := -124, dst := State.s0097 }

private theorem edge0070_valid : edge0070.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0097 <= graphPotential State.s0059
  decide

private def edge0071 : BellmanEdge State :=
  { src := State.s0060, gain := -124, dst := State.s0098 }

private theorem edge0071_valid : edge0071.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0098 <= graphPotential State.s0060
  decide

private def edge0072 : BellmanEdge State :=
  { src := State.s0061, gain := -124, dst := State.s0099 }

private theorem edge0072_valid : edge0072.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0099 <= graphPotential State.s0061
  decide

private def edge0073 : BellmanEdge State :=
  { src := State.s0062, gain := -124, dst := State.s0101 }

private theorem edge0073_valid : edge0073.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0101 <= graphPotential State.s0062
  decide

private def edge0074 : BellmanEdge State :=
  { src := State.s0063, gain := -124, dst := State.s0102 }

private theorem edge0074_valid : edge0074.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0102 <= graphPotential State.s0063
  decide

private def edge0075 : BellmanEdge State :=
  { src := State.s0064, gain := -124, dst := State.s0103 }

private theorem edge0075_valid : edge0075.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0103 <= graphPotential State.s0064
  decide

private def edge0076 : BellmanEdge State :=
  { src := State.s0065, gain := -124, dst := State.s0104 }

private theorem edge0076_valid : edge0076.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0104 <= graphPotential State.s0065
  decide

private def edge0077 : BellmanEdge State :=
  { src := State.s0066, gain := -124, dst := State.s0105 }

private theorem edge0077_valid : edge0077.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0105 <= graphPotential State.s0066
  decide

private def edge0078 : BellmanEdge State :=
  { src := State.s0067, gain := -124, dst := State.s0106 }

private theorem edge0078_valid : edge0078.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0106 <= graphPotential State.s0067
  decide

private def edge0079 : BellmanEdge State :=
  { src := State.s0068, gain := -124, dst := State.s0111 }

private theorem edge0079_valid : edge0079.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0111 <= graphPotential State.s0068
  decide

private def edge0080 : BellmanEdge State :=
  { src := State.s0069, gain := -124, dst := State.s0112 }

private theorem edge0080_valid : edge0080.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0112 <= graphPotential State.s0069
  decide

private def edge0081 : BellmanEdge State :=
  { src := State.s0070, gain := -10, dst := State.s0086 }

private theorem edge0081_valid : edge0081.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0086 <= graphPotential State.s0070
  decide

private def edge0082 : BellmanEdge State :=
  { src := State.s0071, gain := -10, dst := State.s0087 }

private theorem edge0082_valid : edge0082.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0087 <= graphPotential State.s0071
  decide

private def edge0083 : BellmanEdge State :=
  { src := State.s0072, gain := -10, dst := State.s0100 }

private theorem edge0083_valid : edge0083.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0100 <= graphPotential State.s0072
  decide

private def edge0084 : BellmanEdge State :=
  { src := State.s0073, gain := -10, dst := State.s0107 }

private theorem edge0084_valid : edge0084.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0107 <= graphPotential State.s0073
  decide

private def edge0085 : BellmanEdge State :=
  { src := State.s0074, gain := -10, dst := State.s0108 }

private theorem edge0085_valid : edge0085.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0108 <= graphPotential State.s0074
  decide

private def edge0086 : BellmanEdge State :=
  { src := State.s0075, gain := -10, dst := State.s0109 }

private theorem edge0086_valid : edge0086.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0109 <= graphPotential State.s0075
  decide

private def edge0087 : BellmanEdge State :=
  { src := State.s0076, gain := 103, dst := State.s0084 }

private theorem edge0087_valid : edge0087.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0084 <= graphPotential State.s0076
  decide

private def edge0088 : BellmanEdge State :=
  { src := State.s0077, gain := 103, dst := State.s0086 }

private theorem edge0088_valid : edge0088.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0086 <= graphPotential State.s0077
  decide

private def edge0089 : BellmanEdge State :=
  { src := State.s0078, gain := 103, dst := State.s0089 }

private theorem edge0089_valid : edge0089.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0089 <= graphPotential State.s0078
  decide

private def edge0090 : BellmanEdge State :=
  { src := State.s0079, gain := 103, dst := State.s0091 }

private theorem edge0090_valid : edge0090.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0091 <= graphPotential State.s0079
  decide

private def edge0091 : BellmanEdge State :=
  { src := State.s0080, gain := 103, dst := State.s0093 }

private theorem edge0091_valid : edge0091.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0093 <= graphPotential State.s0080
  decide

private def edge0092 : BellmanEdge State :=
  { src := State.s0081, gain := 103, dst := State.s0095 }

private theorem edge0092_valid : edge0092.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0095 <= graphPotential State.s0081
  decide

private def edge0093 : BellmanEdge State :=
  { src := State.s0082, gain := 103, dst := State.s0108 }

private theorem edge0093_valid : edge0093.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0108 <= graphPotential State.s0082
  decide

private def edge0094 : BellmanEdge State :=
  { src := State.s0083, gain := 103, dst := State.s0110 }

private theorem edge0094_valid : edge0094.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0110 <= graphPotential State.s0083
  decide

private def edge0095 : BellmanEdge State :=
  { src := State.s0084, gain := -73, dst := State.s0113 }

private theorem edge0095_valid : edge0095.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0113 <= graphPotential State.s0084
  decide

private def edge0096 : BellmanEdge State :=
  { src := State.s0085, gain := -73, dst := State.s0114 }

private theorem edge0096_valid : edge0096.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0114 <= graphPotential State.s0085
  decide

private def edge0097 : BellmanEdge State :=
  { src := State.s0086, gain := -73, dst := State.s0115 }

private theorem edge0097_valid : edge0097.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0115 <= graphPotential State.s0086
  decide

private def edge0098 : BellmanEdge State :=
  { src := State.s0087, gain := -73, dst := State.s0116 }

private theorem edge0098_valid : edge0098.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0116 <= graphPotential State.s0087
  decide

private def edge0099 : BellmanEdge State :=
  { src := State.s0088, gain := -73, dst := State.s0117 }

private theorem edge0099_valid : edge0099.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0117 <= graphPotential State.s0088
  decide

private def edge0100 : BellmanEdge State :=
  { src := State.s0089, gain := -73, dst := State.s0118 }

private theorem edge0100_valid : edge0100.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0118 <= graphPotential State.s0089
  decide

private def edge0101 : BellmanEdge State :=
  { src := State.s0090, gain := -73, dst := State.s0119 }

private theorem edge0101_valid : edge0101.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0119 <= graphPotential State.s0090
  decide

private def edge0102 : BellmanEdge State :=
  { src := State.s0091, gain := -73, dst := State.s0120 }

private theorem edge0102_valid : edge0102.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0120 <= graphPotential State.s0091
  decide

private def edge0103 : BellmanEdge State :=
  { src := State.s0092, gain := -73, dst := State.s0121 }

private theorem edge0103_valid : edge0103.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0121 <= graphPotential State.s0092
  decide

private def edge0104 : BellmanEdge State :=
  { src := State.s0093, gain := -73, dst := State.s0122 }

private theorem edge0104_valid : edge0104.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0122 <= graphPotential State.s0093
  decide

private def edge0105 : BellmanEdge State :=
  { src := State.s0094, gain := -73, dst := State.s0123 }

private theorem edge0105_valid : edge0105.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0123 <= graphPotential State.s0094
  decide

private def edge0106 : BellmanEdge State :=
  { src := State.s0095, gain := -73, dst := State.s0124 }

private theorem edge0106_valid : edge0106.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0124 <= graphPotential State.s0095
  decide

private def edge0107 : BellmanEdge State :=
  { src := State.s0096, gain := -73, dst := State.s0125 }

private theorem edge0107_valid : edge0107.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0125 <= graphPotential State.s0096
  decide

private def edge0108 : BellmanEdge State :=
  { src := State.s0097, gain := -73, dst := State.s0126 }

private theorem edge0108_valid : edge0108.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0126 <= graphPotential State.s0097
  decide

private def edge0109 : BellmanEdge State :=
  { src := State.s0098, gain := -73, dst := State.s0127 }

private theorem edge0109_valid : edge0109.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0127 <= graphPotential State.s0098
  decide

private def edge0110 : BellmanEdge State :=
  { src := State.s0099, gain := -73, dst := State.s0128 }

private theorem edge0110_valid : edge0110.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0128 <= graphPotential State.s0099
  decide

private def edge0111 : BellmanEdge State :=
  { src := State.s0100, gain := -73, dst := State.s0129 }

private theorem edge0111_valid : edge0111.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0129 <= graphPotential State.s0100
  decide

private def edge0112 : BellmanEdge State :=
  { src := State.s0101, gain := -73, dst := State.s0130 }

private theorem edge0112_valid : edge0112.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0130 <= graphPotential State.s0101
  decide

private def edge0113 : BellmanEdge State :=
  { src := State.s0102, gain := -73, dst := State.s0131 }

private theorem edge0113_valid : edge0113.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0131 <= graphPotential State.s0102
  decide

private def edge0114 : BellmanEdge State :=
  { src := State.s0103, gain := -73, dst := State.s0132 }

private theorem edge0114_valid : edge0114.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0132 <= graphPotential State.s0103
  decide

private def edge0115 : BellmanEdge State :=
  { src := State.s0104, gain := -73, dst := State.s0133 }

private theorem edge0115_valid : edge0115.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0133 <= graphPotential State.s0104
  decide

private def edge0116 : BellmanEdge State :=
  { src := State.s0105, gain := -73, dst := State.s0134 }

private theorem edge0116_valid : edge0116.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0134 <= graphPotential State.s0105
  decide

private def edge0117 : BellmanEdge State :=
  { src := State.s0106, gain := -73, dst := State.s0135 }

private theorem edge0117_valid : edge0117.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0135 <= graphPotential State.s0106
  decide

private def edge0118 : BellmanEdge State :=
  { src := State.s0107, gain := -73, dst := State.s0136 }

private theorem edge0118_valid : edge0118.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0136 <= graphPotential State.s0107
  decide

private def edge0119 : BellmanEdge State :=
  { src := State.s0108, gain := -73, dst := State.s0137 }

private theorem edge0119_valid : edge0119.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0137 <= graphPotential State.s0108
  decide

private def edge0120 : BellmanEdge State :=
  { src := State.s0109, gain := -73, dst := State.s0138 }

private theorem edge0120_valid : edge0120.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0138 <= graphPotential State.s0109
  decide

private def edge0121 : BellmanEdge State :=
  { src := State.s0110, gain := -73, dst := State.s0139 }

private theorem edge0121_valid : edge0121.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0139 <= graphPotential State.s0110
  decide

private def edge0122 : BellmanEdge State :=
  { src := State.s0111, gain := -73, dst := State.s0140 }

private theorem edge0122_valid : edge0122.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0140 <= graphPotential State.s0111
  decide

private def edge0123 : BellmanEdge State :=
  { src := State.s0112, gain := -73, dst := State.s0141 }

private theorem edge0123_valid : edge0123.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0141 <= graphPotential State.s0112
  decide

private def edge0124 : BellmanEdge State :=
  { src := State.s0142, gain := -73, dst := State.s0143 }

private theorem edge0124_valid : edge0124.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0143 <= graphPotential State.s0142
  decide

private def edge0125 : BellmanEdge State :=
  { src := State.s0143, gain := -73, dst := State.s0144 }

private theorem edge0125_valid : edge0125.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0144 <= graphPotential State.s0143
  decide

private def edge0126 : BellmanEdge State :=
  { src := State.s0143, gain := -10, dst := State.s0145 }

private theorem edge0126_valid : edge0126.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0145 <= graphPotential State.s0143
  decide

private def edge0127 : BellmanEdge State :=
  { src := State.s0143, gain := -124, dst := State.s0146 }

private theorem edge0127_valid : edge0127.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0146 <= graphPotential State.s0143
  decide

private def edge0128 : BellmanEdge State :=
  { src := State.s0144, gain := -10, dst := State.s0147 }

private theorem edge0128_valid : edge0128.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0147 <= graphPotential State.s0144
  decide

private def edge0129 : BellmanEdge State :=
  { src := State.s0144, gain := -124, dst := State.s0148 }

private theorem edge0129_valid : edge0129.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0148 <= graphPotential State.s0144
  decide

private def edge0130 : BellmanEdge State :=
  { src := State.s0145, gain := -73, dst := State.s0147 }

private theorem edge0130_valid : edge0130.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0147 <= graphPotential State.s0145
  decide

private def edge0131 : BellmanEdge State :=
  { src := State.s0145, gain := -10, dst := State.s0149 }

private theorem edge0131_valid : edge0131.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0149 <= graphPotential State.s0145
  decide

private def edge0132 : BellmanEdge State :=
  { src := State.s0145, gain := -124, dst := State.s0151 }

private theorem edge0132_valid : edge0132.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0151 <= graphPotential State.s0145
  decide

private def edge0133 : BellmanEdge State :=
  { src := State.s0146, gain := 114, dst := State.s0150 }

private theorem edge0133_valid : edge0133.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0150 <= graphPotential State.s0146
  decide

private def edge0134 : BellmanEdge State :=
  { src := State.s0146, gain := 96, dst := State.s0152 }

private theorem edge0134_valid : edge0134.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0152 <= graphPotential State.s0146
  decide

private def edge0135 : BellmanEdge State :=
  { src := State.s0147, gain := -10, dst := State.s0153 }

private theorem edge0135_valid : edge0135.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0153 <= graphPotential State.s0147
  decide

private def edge0136 : BellmanEdge State :=
  { src := State.s0147, gain := -124, dst := State.s0155 }

private theorem edge0136_valid : edge0136.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0155 <= graphPotential State.s0147
  decide

private def edge0137 : BellmanEdge State :=
  { src := State.s0148, gain := 114, dst := State.s0154 }

private theorem edge0137_valid : edge0137.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0154 <= graphPotential State.s0148
  decide

private def edge0138 : BellmanEdge State :=
  { src := State.s0148, gain := 96, dst := State.s0156 }

private theorem edge0138_valid : edge0138.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0156 <= graphPotential State.s0148
  decide

private def edge0139 : BellmanEdge State :=
  { src := State.s0149, gain := -73, dst := State.s0153 }

private theorem edge0139_valid : edge0139.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0153 <= graphPotential State.s0149
  decide

private def edge0140 : BellmanEdge State :=
  { src := State.s0149, gain := -124, dst := State.s0158 }

private theorem edge0140_valid : edge0140.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0158 <= graphPotential State.s0149
  decide

private def edge0141 : BellmanEdge State :=
  { src := State.s0150, gain := 114, dst := State.s0157 }

private theorem edge0141_valid : edge0141.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0157 <= graphPotential State.s0150
  decide

private def edge0142 : BellmanEdge State :=
  { src := State.s0151, gain := 96, dst := State.s0160 }

private theorem edge0142_valid : edge0142.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0160 <= graphPotential State.s0151
  decide

private def edge0143 : BellmanEdge State :=
  { src := State.s0152, gain := -18, dst := State.s0159 }

private theorem edge0143_valid : edge0143.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0159 <= graphPotential State.s0152
  decide

private def edge0144 : BellmanEdge State :=
  { src := State.s0152, gain := -36, dst := State.s0161 }

private theorem edge0144_valid : edge0144.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0161 <= graphPotential State.s0152
  decide

private def edge0145 : BellmanEdge State :=
  { src := State.s0153, gain := -124, dst := State.s0163 }

private theorem edge0145_valid : edge0145.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0163 <= graphPotential State.s0153
  decide

private def edge0146 : BellmanEdge State :=
  { src := State.s0154, gain := 114, dst := State.s0162 }

private theorem edge0146_valid : edge0146.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0162 <= graphPotential State.s0154
  decide

private def edge0147 : BellmanEdge State :=
  { src := State.s0154, gain := 96, dst := State.s0165 }

private theorem edge0147_valid : edge0147.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0165 <= graphPotential State.s0154
  decide

private def edge0148 : BellmanEdge State :=
  { src := State.s0155, gain := 96, dst := State.s0166 }

private theorem edge0148_valid : edge0148.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0166 <= graphPotential State.s0155
  decide

private def edge0149 : BellmanEdge State :=
  { src := State.s0156, gain := -18, dst := State.s0164 }

private theorem edge0149_valid : edge0149.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0164 <= graphPotential State.s0156
  decide

private def edge0150 : BellmanEdge State :=
  { src := State.s0156, gain := -36, dst := State.s0167 }

private theorem edge0150_valid : edge0150.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0167 <= graphPotential State.s0156
  decide

private def edge0151 : BellmanEdge State :=
  { src := State.s0157, gain := 96, dst := State.s0169 }

private theorem edge0151_valid : edge0151.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0169 <= graphPotential State.s0157
  decide

private def edge0152 : BellmanEdge State :=
  { src := State.s0158, gain := 96, dst := State.s0170 }

private theorem edge0152_valid : edge0152.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0170 <= graphPotential State.s0158
  decide

private def edge0153 : BellmanEdge State :=
  { src := State.s0159, gain := -18, dst := State.s0168 }

private theorem edge0153_valid : edge0153.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0168 <= graphPotential State.s0159
  decide

private def edge0154 : BellmanEdge State :=
  { src := State.s0160, gain := -36, dst := State.s0172 }

private theorem edge0154_valid : edge0154.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0172 <= graphPotential State.s0160
  decide

private def edge0155 : BellmanEdge State :=
  { src := State.s0161, gain := -54, dst := State.s0171 }

private theorem edge0155_valid : edge0155.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0171 <= graphPotential State.s0161
  decide

private def edge0156 : BellmanEdge State :=
  { src := State.s0161, gain := -144, dst := State.s0173 }

private theorem edge0156_valid : edge0156.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0173 <= graphPotential State.s0161
  decide

private def edge0157 : BellmanEdge State :=
  { src := State.s0162, gain := 96, dst := State.s0175 }

private theorem edge0157_valid : edge0157.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0175 <= graphPotential State.s0162
  decide

private def edge0158 : BellmanEdge State :=
  { src := State.s0163, gain := 96, dst := State.s0176 }

private theorem edge0158_valid : edge0158.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0176 <= graphPotential State.s0163
  decide

private def edge0159 : BellmanEdge State :=
  { src := State.s0164, gain := -18, dst := State.s0174 }

private theorem edge0159_valid : edge0159.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0174 <= graphPotential State.s0164
  decide

private def edge0160 : BellmanEdge State :=
  { src := State.s0165, gain := -36, dst := State.s0178 }

private theorem edge0160_valid : edge0160.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0178 <= graphPotential State.s0165
  decide

private def edge0161 : BellmanEdge State :=
  { src := State.s0166, gain := -36, dst := State.s0179 }

private theorem edge0161_valid : edge0161.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0179 <= graphPotential State.s0166
  decide

private def edge0162 : BellmanEdge State :=
  { src := State.s0167, gain := -54, dst := State.s0177 }

private theorem edge0162_valid : edge0162.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0177 <= graphPotential State.s0167
  decide

private def edge0163 : BellmanEdge State :=
  { src := State.s0167, gain := -144, dst := State.s0180 }

private theorem edge0163_valid : edge0163.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0180 <= graphPotential State.s0167
  decide

private def edge0164 : BellmanEdge State :=
  { src := State.s0168, gain := -36, dst := State.s0182 }

private theorem edge0164_valid : edge0164.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0182 <= graphPotential State.s0168
  decide

private def edge0165 : BellmanEdge State :=
  { src := State.s0169, gain := -36, dst := State.s0183 }

private theorem edge0165_valid : edge0165.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0183 <= graphPotential State.s0169
  decide

private def edge0166 : BellmanEdge State :=
  { src := State.s0170, gain := -36, dst := State.s0184 }

private theorem edge0166_valid : edge0166.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0184 <= graphPotential State.s0170
  decide

private def edge0167 : BellmanEdge State :=
  { src := State.s0171, gain := -54, dst := State.s0181 }

private theorem edge0167_valid : edge0167.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0181 <= graphPotential State.s0171
  decide

private def edge0168 : BellmanEdge State :=
  { src := State.s0172, gain := -144, dst := State.s0186 }

private theorem edge0168_valid : edge0168.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0186 <= graphPotential State.s0172
  decide

private def edge0169 : BellmanEdge State :=
  { src := State.s0173, gain := 90, dst := State.s0185 }

private theorem edge0169_valid : edge0169.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0185 <= graphPotential State.s0173
  decide

private def edge0170 : BellmanEdge State :=
  { src := State.s0173, gain := -144, dst := State.s0187 }

private theorem edge0170_valid : edge0170.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0187 <= graphPotential State.s0173
  decide

private def edge0171 : BellmanEdge State :=
  { src := State.s0174, gain := -36, dst := State.s0189 }

private theorem edge0171_valid : edge0171.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0189 <= graphPotential State.s0174
  decide

private def edge0172 : BellmanEdge State :=
  { src := State.s0175, gain := -36, dst := State.s0190 }

private theorem edge0172_valid : edge0172.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0190 <= graphPotential State.s0175
  decide

private def edge0173 : BellmanEdge State :=
  { src := State.s0176, gain := -36, dst := State.s0191 }

private theorem edge0173_valid : edge0173.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0191 <= graphPotential State.s0176
  decide

private def edge0174 : BellmanEdge State :=
  { src := State.s0177, gain := -54, dst := State.s0188 }

private theorem edge0174_valid : edge0174.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0188 <= graphPotential State.s0177
  decide

private def edge0175 : BellmanEdge State :=
  { src := State.s0178, gain := -144, dst := State.s0193 }

private theorem edge0175_valid : edge0175.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0193 <= graphPotential State.s0178
  decide

private def edge0176 : BellmanEdge State :=
  { src := State.s0179, gain := -144, dst := State.s0194 }

private theorem edge0176_valid : edge0176.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0194 <= graphPotential State.s0179
  decide

private def edge0177 : BellmanEdge State :=
  { src := State.s0180, gain := 90, dst := State.s0192 }

private theorem edge0177_valid : edge0177.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0192 <= graphPotential State.s0180
  decide

private def edge0178 : BellmanEdge State :=
  { src := State.s0180, gain := -144, dst := State.s0195 }

private theorem edge0178_valid : edge0178.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0195 <= graphPotential State.s0180
  decide

private def edge0179 : BellmanEdge State :=
  { src := State.s0181, gain := -144, dst := State.s0197 }

private theorem edge0179_valid : edge0179.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0197 <= graphPotential State.s0181
  decide

private def edge0180 : BellmanEdge State :=
  { src := State.s0182, gain := -144, dst := State.s0198 }

private theorem edge0180_valid : edge0180.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0198 <= graphPotential State.s0182
  decide

private def edge0181 : BellmanEdge State :=
  { src := State.s0183, gain := -144, dst := State.s0199 }

private theorem edge0181_valid : edge0181.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0199 <= graphPotential State.s0183
  decide

private def edge0182 : BellmanEdge State :=
  { src := State.s0184, gain := -144, dst := State.s0200 }

private theorem edge0182_valid : edge0182.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0200 <= graphPotential State.s0184
  decide

private def edge0183 : BellmanEdge State :=
  { src := State.s0185, gain := 90, dst := State.s0196 }

private theorem edge0183_valid : edge0183.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0196 <= graphPotential State.s0185
  decide

private def edge0184 : BellmanEdge State :=
  { src := State.s0186, gain := -144, dst := State.s0202 }

private theorem edge0184_valid : edge0184.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0202 <= graphPotential State.s0186
  decide

private def edge0185 : BellmanEdge State :=
  { src := State.s0187, gain := -54, dst := State.s0201 }

private theorem edge0185_valid : edge0185.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0201 <= graphPotential State.s0187
  decide

private def edge0186 : BellmanEdge State :=
  { src := State.s0187, gain := -36, dst := State.s0203 }

private theorem edge0186_valid : edge0186.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0203 <= graphPotential State.s0187
  decide

private def edge0187 : BellmanEdge State :=
  { src := State.s0188, gain := -144, dst := State.s0205 }

private theorem edge0187_valid : edge0187.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0205 <= graphPotential State.s0188
  decide

private def edge0188 : BellmanEdge State :=
  { src := State.s0189, gain := -144, dst := State.s0206 }

private theorem edge0188_valid : edge0188.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0206 <= graphPotential State.s0189
  decide

private def edge0189 : BellmanEdge State :=
  { src := State.s0190, gain := -144, dst := State.s0207 }

private theorem edge0189_valid : edge0189.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0207 <= graphPotential State.s0190
  decide

private def edge0190 : BellmanEdge State :=
  { src := State.s0191, gain := -144, dst := State.s0208 }

private theorem edge0190_valid : edge0190.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0208 <= graphPotential State.s0191
  decide

private def edge0191 : BellmanEdge State :=
  { src := State.s0192, gain := 90, dst := State.s0204 }

private theorem edge0191_valid : edge0191.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0204 <= graphPotential State.s0192
  decide

private def edge0192 : BellmanEdge State :=
  { src := State.s0193, gain := -144, dst := State.s0210 }

private theorem edge0192_valid : edge0192.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0210 <= graphPotential State.s0193
  decide

private def edge0193 : BellmanEdge State :=
  { src := State.s0194, gain := -144, dst := State.s0211 }

private theorem edge0193_valid : edge0193.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0211 <= graphPotential State.s0194
  decide

private def edge0194 : BellmanEdge State :=
  { src := State.s0195, gain := -54, dst := State.s0209 }

private theorem edge0194_valid : edge0194.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0209 <= graphPotential State.s0195
  decide

private def edge0195 : BellmanEdge State :=
  { src := State.s0195, gain := -36, dst := State.s0213 }

private theorem edge0195_valid : edge0195.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0213 <= graphPotential State.s0195
  decide

private def edge0196 : BellmanEdge State :=
  { src := State.s0196, gain := -144, dst := State.s0215 }

private theorem edge0196_valid : edge0196.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0215 <= graphPotential State.s0196
  decide

private def edge0197 : BellmanEdge State :=
  { src := State.s0197, gain := -144, dst := State.s0216 }

private theorem edge0197_valid : edge0197.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0216 <= graphPotential State.s0197
  decide

private def edge0198 : BellmanEdge State :=
  { src := State.s0198, gain := -144, dst := State.s0217 }

private theorem edge0198_valid : edge0198.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0217 <= graphPotential State.s0198
  decide

private def edge0199 : BellmanEdge State :=
  { src := State.s0199, gain := -144, dst := State.s0218 }

private theorem edge0199_valid : edge0199.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0218 <= graphPotential State.s0199
  decide

private def edge0200 : BellmanEdge State :=
  { src := State.s0200, gain := -144, dst := State.s0219 }

private theorem edge0200_valid : edge0200.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0219 <= graphPotential State.s0200
  decide

private def edge0201 : BellmanEdge State :=
  { src := State.s0201, gain := -54, dst := State.s0214 }

private theorem edge0201_valid : edge0201.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0214 <= graphPotential State.s0201
  decide

private def edge0202 : BellmanEdge State :=
  { src := State.s0202, gain := -36, dst := State.s0221 }

private theorem edge0202_valid : edge0202.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0221 <= graphPotential State.s0202
  decide

private def edge0203 : BellmanEdge State :=
  { src := State.s0203, gain := -117, dst := State.s0212 }

private theorem edge0203_valid : edge0203.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0212 <= graphPotential State.s0203
  decide

private def edge0204 : BellmanEdge State :=
  { src := State.s0203, gain := -18, dst := State.s0220 }

private theorem edge0204_valid : edge0204.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0220 <= graphPotential State.s0203
  decide

private def edge0205 : BellmanEdge State :=
  { src := State.s0203, gain := 96, dst := State.s0222 }

private theorem edge0205_valid : edge0205.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0222 <= graphPotential State.s0203
  decide

private def edge0206 : BellmanEdge State :=
  { src := State.s0204, gain := -144, dst := State.s0002 }

private theorem edge0206_valid : edge0206.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0002 <= graphPotential State.s0204
  decide

private def edge0207 : BellmanEdge State :=
  { src := State.s0205, gain := -144, dst := State.s0003 }

private theorem edge0207_valid : edge0207.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0003 <= graphPotential State.s0205
  decide

private def edge0208 : BellmanEdge State :=
  { src := State.s0206, gain := -144, dst := State.s0004 }

private theorem edge0208_valid : edge0208.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0004 <= graphPotential State.s0206
  decide

private def edge0209 : BellmanEdge State :=
  { src := State.s0207, gain := -144, dst := State.s0005 }

private theorem edge0209_valid : edge0209.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0005 <= graphPotential State.s0207
  decide

private def edge0210 : BellmanEdge State :=
  { src := State.s0208, gain := -144, dst := State.s0006 }

private theorem edge0210_valid : edge0210.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0006 <= graphPotential State.s0208
  decide

private def edge0211 : BellmanEdge State :=
  { src := State.s0209, gain := -54, dst := State.s0001 }

private theorem edge0211_valid : edge0211.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0001 <= graphPotential State.s0209
  decide

private def edge0212 : BellmanEdge State :=
  { src := State.s0210, gain := -36, dst := State.s0009 }

private theorem edge0212_valid : edge0212.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0009 <= graphPotential State.s0210
  decide

private def edge0213 : BellmanEdge State :=
  { src := State.s0211, gain := -36, dst := State.s0011 }

private theorem edge0213_valid : edge0213.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0011 <= graphPotential State.s0211
  decide

private def edge0214 : BellmanEdge State :=
  { src := State.s0212, gain := -18, dst := State.s0007 }

private theorem edge0214_valid : edge0214.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0007 <= graphPotential State.s0212
  decide

private def edge0215 : BellmanEdge State :=
  { src := State.s0212, gain := 96, dst := State.s0012 }

private theorem edge0215_valid : edge0215.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0012 <= graphPotential State.s0212
  decide

private def edge0216 : BellmanEdge State :=
  { src := State.s0213, gain := -18, dst := State.s0008 }

private theorem edge0216_valid : edge0216.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0008 <= graphPotential State.s0213
  decide

private def edge0217 : BellmanEdge State :=
  { src := State.s0213, gain := 96, dst := State.s0013 }

private theorem edge0217_valid : edge0217.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0013 <= graphPotential State.s0213
  decide

private def edge0218 : BellmanEdge State :=
  { src := State.s0214, gain := -36, dst := State.s0015 }

private theorem edge0218_valid : edge0218.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0015 <= graphPotential State.s0214
  decide

private def edge0219 : BellmanEdge State :=
  { src := State.s0215, gain := -36, dst := State.s0016 }

private theorem edge0219_valid : edge0219.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0016 <= graphPotential State.s0215
  decide

private def edge0220 : BellmanEdge State :=
  { src := State.s0216, gain := -36, dst := State.s0017 }

private theorem edge0220_valid : edge0220.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0017 <= graphPotential State.s0216
  decide

private def edge0221 : BellmanEdge State :=
  { src := State.s0217, gain := -36, dst := State.s0018 }

private theorem edge0221_valid : edge0221.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0018 <= graphPotential State.s0217
  decide

private def edge0222 : BellmanEdge State :=
  { src := State.s0218, gain := -36, dst := State.s0019 }

private theorem edge0222_valid : edge0222.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0019 <= graphPotential State.s0218
  decide

private def edge0223 : BellmanEdge State :=
  { src := State.s0219, gain := -36, dst := State.s0020 }

private theorem edge0223_valid : edge0223.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0020 <= graphPotential State.s0219
  decide

private def edge0224 : BellmanEdge State :=
  { src := State.s0220, gain := -117, dst := State.s0007 }

private theorem edge0224_valid : edge0224.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0007 <= graphPotential State.s0220
  decide

private def edge0225 : BellmanEdge State :=
  { src := State.s0220, gain := -18, dst := State.s0014 }

private theorem edge0225_valid : edge0225.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0014 <= graphPotential State.s0220
  decide

private def edge0226 : BellmanEdge State :=
  { src := State.s0221, gain := -117, dst := State.s0010 }

private theorem edge0226_valid : edge0226.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0010 <= graphPotential State.s0221
  decide

private def edge0227 : BellmanEdge State :=
  { src := State.s0221, gain := 96, dst := State.s0021 }

private theorem edge0227_valid : edge0227.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0021 <= graphPotential State.s0221
  decide

private def edge0228 : BellmanEdge State :=
  { src := State.s0222, gain := -124, dst := State.s0022 }

private theorem edge0228_valid : edge0228.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0022 <= graphPotential State.s0222
  decide

private inductive GraphEdge : BellmanEdge State -> Prop where
  | e0000 : GraphEdge edge0000
  | e0001 : GraphEdge edge0001
  | e0002 : GraphEdge edge0002
  | e0003 : GraphEdge edge0003
  | e0004 : GraphEdge edge0004
  | e0005 : GraphEdge edge0005
  | e0006 : GraphEdge edge0006
  | e0007 : GraphEdge edge0007
  | e0008 : GraphEdge edge0008
  | e0009 : GraphEdge edge0009
  | e0010 : GraphEdge edge0010
  | e0011 : GraphEdge edge0011
  | e0012 : GraphEdge edge0012
  | e0013 : GraphEdge edge0013
  | e0014 : GraphEdge edge0014
  | e0015 : GraphEdge edge0015
  | e0016 : GraphEdge edge0016
  | e0017 : GraphEdge edge0017
  | e0018 : GraphEdge edge0018
  | e0019 : GraphEdge edge0019
  | e0020 : GraphEdge edge0020
  | e0021 : GraphEdge edge0021
  | e0022 : GraphEdge edge0022
  | e0023 : GraphEdge edge0023
  | e0024 : GraphEdge edge0024
  | e0025 : GraphEdge edge0025
  | e0026 : GraphEdge edge0026
  | e0027 : GraphEdge edge0027
  | e0028 : GraphEdge edge0028
  | e0029 : GraphEdge edge0029
  | e0030 : GraphEdge edge0030
  | e0031 : GraphEdge edge0031
  | e0032 : GraphEdge edge0032
  | e0033 : GraphEdge edge0033
  | e0034 : GraphEdge edge0034
  | e0035 : GraphEdge edge0035
  | e0036 : GraphEdge edge0036
  | e0037 : GraphEdge edge0037
  | e0038 : GraphEdge edge0038
  | e0039 : GraphEdge edge0039
  | e0040 : GraphEdge edge0040
  | e0041 : GraphEdge edge0041
  | e0042 : GraphEdge edge0042
  | e0043 : GraphEdge edge0043
  | e0044 : GraphEdge edge0044
  | e0045 : GraphEdge edge0045
  | e0046 : GraphEdge edge0046
  | e0047 : GraphEdge edge0047
  | e0048 : GraphEdge edge0048
  | e0049 : GraphEdge edge0049
  | e0050 : GraphEdge edge0050
  | e0051 : GraphEdge edge0051
  | e0052 : GraphEdge edge0052
  | e0053 : GraphEdge edge0053
  | e0054 : GraphEdge edge0054
  | e0055 : GraphEdge edge0055
  | e0056 : GraphEdge edge0056
  | e0057 : GraphEdge edge0057
  | e0058 : GraphEdge edge0058
  | e0059 : GraphEdge edge0059
  | e0060 : GraphEdge edge0060
  | e0061 : GraphEdge edge0061
  | e0062 : GraphEdge edge0062
  | e0063 : GraphEdge edge0063
  | e0064 : GraphEdge edge0064
  | e0065 : GraphEdge edge0065
  | e0066 : GraphEdge edge0066
  | e0067 : GraphEdge edge0067
  | e0068 : GraphEdge edge0068
  | e0069 : GraphEdge edge0069
  | e0070 : GraphEdge edge0070
  | e0071 : GraphEdge edge0071
  | e0072 : GraphEdge edge0072
  | e0073 : GraphEdge edge0073
  | e0074 : GraphEdge edge0074
  | e0075 : GraphEdge edge0075
  | e0076 : GraphEdge edge0076
  | e0077 : GraphEdge edge0077
  | e0078 : GraphEdge edge0078
  | e0079 : GraphEdge edge0079
  | e0080 : GraphEdge edge0080
  | e0081 : GraphEdge edge0081
  | e0082 : GraphEdge edge0082
  | e0083 : GraphEdge edge0083
  | e0084 : GraphEdge edge0084
  | e0085 : GraphEdge edge0085
  | e0086 : GraphEdge edge0086
  | e0087 : GraphEdge edge0087
  | e0088 : GraphEdge edge0088
  | e0089 : GraphEdge edge0089
  | e0090 : GraphEdge edge0090
  | e0091 : GraphEdge edge0091
  | e0092 : GraphEdge edge0092
  | e0093 : GraphEdge edge0093
  | e0094 : GraphEdge edge0094
  | e0095 : GraphEdge edge0095
  | e0096 : GraphEdge edge0096
  | e0097 : GraphEdge edge0097
  | e0098 : GraphEdge edge0098
  | e0099 : GraphEdge edge0099
  | e0100 : GraphEdge edge0100
  | e0101 : GraphEdge edge0101
  | e0102 : GraphEdge edge0102
  | e0103 : GraphEdge edge0103
  | e0104 : GraphEdge edge0104
  | e0105 : GraphEdge edge0105
  | e0106 : GraphEdge edge0106
  | e0107 : GraphEdge edge0107
  | e0108 : GraphEdge edge0108
  | e0109 : GraphEdge edge0109
  | e0110 : GraphEdge edge0110
  | e0111 : GraphEdge edge0111
  | e0112 : GraphEdge edge0112
  | e0113 : GraphEdge edge0113
  | e0114 : GraphEdge edge0114
  | e0115 : GraphEdge edge0115
  | e0116 : GraphEdge edge0116
  | e0117 : GraphEdge edge0117
  | e0118 : GraphEdge edge0118
  | e0119 : GraphEdge edge0119
  | e0120 : GraphEdge edge0120
  | e0121 : GraphEdge edge0121
  | e0122 : GraphEdge edge0122
  | e0123 : GraphEdge edge0123
  | e0124 : GraphEdge edge0124
  | e0125 : GraphEdge edge0125
  | e0126 : GraphEdge edge0126
  | e0127 : GraphEdge edge0127
  | e0128 : GraphEdge edge0128
  | e0129 : GraphEdge edge0129
  | e0130 : GraphEdge edge0130
  | e0131 : GraphEdge edge0131
  | e0132 : GraphEdge edge0132
  | e0133 : GraphEdge edge0133
  | e0134 : GraphEdge edge0134
  | e0135 : GraphEdge edge0135
  | e0136 : GraphEdge edge0136
  | e0137 : GraphEdge edge0137
  | e0138 : GraphEdge edge0138
  | e0139 : GraphEdge edge0139
  | e0140 : GraphEdge edge0140
  | e0141 : GraphEdge edge0141
  | e0142 : GraphEdge edge0142
  | e0143 : GraphEdge edge0143
  | e0144 : GraphEdge edge0144
  | e0145 : GraphEdge edge0145
  | e0146 : GraphEdge edge0146
  | e0147 : GraphEdge edge0147
  | e0148 : GraphEdge edge0148
  | e0149 : GraphEdge edge0149
  | e0150 : GraphEdge edge0150
  | e0151 : GraphEdge edge0151
  | e0152 : GraphEdge edge0152
  | e0153 : GraphEdge edge0153
  | e0154 : GraphEdge edge0154
  | e0155 : GraphEdge edge0155
  | e0156 : GraphEdge edge0156
  | e0157 : GraphEdge edge0157
  | e0158 : GraphEdge edge0158
  | e0159 : GraphEdge edge0159
  | e0160 : GraphEdge edge0160
  | e0161 : GraphEdge edge0161
  | e0162 : GraphEdge edge0162
  | e0163 : GraphEdge edge0163
  | e0164 : GraphEdge edge0164
  | e0165 : GraphEdge edge0165
  | e0166 : GraphEdge edge0166
  | e0167 : GraphEdge edge0167
  | e0168 : GraphEdge edge0168
  | e0169 : GraphEdge edge0169
  | e0170 : GraphEdge edge0170
  | e0171 : GraphEdge edge0171
  | e0172 : GraphEdge edge0172
  | e0173 : GraphEdge edge0173
  | e0174 : GraphEdge edge0174
  | e0175 : GraphEdge edge0175
  | e0176 : GraphEdge edge0176
  | e0177 : GraphEdge edge0177
  | e0178 : GraphEdge edge0178
  | e0179 : GraphEdge edge0179
  | e0180 : GraphEdge edge0180
  | e0181 : GraphEdge edge0181
  | e0182 : GraphEdge edge0182
  | e0183 : GraphEdge edge0183
  | e0184 : GraphEdge edge0184
  | e0185 : GraphEdge edge0185
  | e0186 : GraphEdge edge0186
  | e0187 : GraphEdge edge0187
  | e0188 : GraphEdge edge0188
  | e0189 : GraphEdge edge0189
  | e0190 : GraphEdge edge0190
  | e0191 : GraphEdge edge0191
  | e0192 : GraphEdge edge0192
  | e0193 : GraphEdge edge0193
  | e0194 : GraphEdge edge0194
  | e0195 : GraphEdge edge0195
  | e0196 : GraphEdge edge0196
  | e0197 : GraphEdge edge0197
  | e0198 : GraphEdge edge0198
  | e0199 : GraphEdge edge0199
  | e0200 : GraphEdge edge0200
  | e0201 : GraphEdge edge0201
  | e0202 : GraphEdge edge0202
  | e0203 : GraphEdge edge0203
  | e0204 : GraphEdge edge0204
  | e0205 : GraphEdge edge0205
  | e0206 : GraphEdge edge0206
  | e0207 : GraphEdge edge0207
  | e0208 : GraphEdge edge0208
  | e0209 : GraphEdge edge0209
  | e0210 : GraphEdge edge0210
  | e0211 : GraphEdge edge0211
  | e0212 : GraphEdge edge0212
  | e0213 : GraphEdge edge0213
  | e0214 : GraphEdge edge0214
  | e0215 : GraphEdge edge0215
  | e0216 : GraphEdge edge0216
  | e0217 : GraphEdge edge0217
  | e0218 : GraphEdge edge0218
  | e0219 : GraphEdge edge0219
  | e0220 : GraphEdge edge0220
  | e0221 : GraphEdge edge0221
  | e0222 : GraphEdge edge0222
  | e0223 : GraphEdge edge0223
  | e0224 : GraphEdge edge0224
  | e0225 : GraphEdge edge0225
  | e0226 : GraphEdge edge0226
  | e0227 : GraphEdge edge0227
  | e0228 : GraphEdge edge0228

private theorem GraphEdge.valid {e : BellmanEdge State} :
    GraphEdge e -> e.Valid graphPotential := by
  intro h
  cases h with
  | e0000 => exact edge0000_valid
  | e0001 => exact edge0001_valid
  | e0002 => exact edge0002_valid
  | e0003 => exact edge0003_valid
  | e0004 => exact edge0004_valid
  | e0005 => exact edge0005_valid
  | e0006 => exact edge0006_valid
  | e0007 => exact edge0007_valid
  | e0008 => exact edge0008_valid
  | e0009 => exact edge0009_valid
  | e0010 => exact edge0010_valid
  | e0011 => exact edge0011_valid
  | e0012 => exact edge0012_valid
  | e0013 => exact edge0013_valid
  | e0014 => exact edge0014_valid
  | e0015 => exact edge0015_valid
  | e0016 => exact edge0016_valid
  | e0017 => exact edge0017_valid
  | e0018 => exact edge0018_valid
  | e0019 => exact edge0019_valid
  | e0020 => exact edge0020_valid
  | e0021 => exact edge0021_valid
  | e0022 => exact edge0022_valid
  | e0023 => exact edge0023_valid
  | e0024 => exact edge0024_valid
  | e0025 => exact edge0025_valid
  | e0026 => exact edge0026_valid
  | e0027 => exact edge0027_valid
  | e0028 => exact edge0028_valid
  | e0029 => exact edge0029_valid
  | e0030 => exact edge0030_valid
  | e0031 => exact edge0031_valid
  | e0032 => exact edge0032_valid
  | e0033 => exact edge0033_valid
  | e0034 => exact edge0034_valid
  | e0035 => exact edge0035_valid
  | e0036 => exact edge0036_valid
  | e0037 => exact edge0037_valid
  | e0038 => exact edge0038_valid
  | e0039 => exact edge0039_valid
  | e0040 => exact edge0040_valid
  | e0041 => exact edge0041_valid
  | e0042 => exact edge0042_valid
  | e0043 => exact edge0043_valid
  | e0044 => exact edge0044_valid
  | e0045 => exact edge0045_valid
  | e0046 => exact edge0046_valid
  | e0047 => exact edge0047_valid
  | e0048 => exact edge0048_valid
  | e0049 => exact edge0049_valid
  | e0050 => exact edge0050_valid
  | e0051 => exact edge0051_valid
  | e0052 => exact edge0052_valid
  | e0053 => exact edge0053_valid
  | e0054 => exact edge0054_valid
  | e0055 => exact edge0055_valid
  | e0056 => exact edge0056_valid
  | e0057 => exact edge0057_valid
  | e0058 => exact edge0058_valid
  | e0059 => exact edge0059_valid
  | e0060 => exact edge0060_valid
  | e0061 => exact edge0061_valid
  | e0062 => exact edge0062_valid
  | e0063 => exact edge0063_valid
  | e0064 => exact edge0064_valid
  | e0065 => exact edge0065_valid
  | e0066 => exact edge0066_valid
  | e0067 => exact edge0067_valid
  | e0068 => exact edge0068_valid
  | e0069 => exact edge0069_valid
  | e0070 => exact edge0070_valid
  | e0071 => exact edge0071_valid
  | e0072 => exact edge0072_valid
  | e0073 => exact edge0073_valid
  | e0074 => exact edge0074_valid
  | e0075 => exact edge0075_valid
  | e0076 => exact edge0076_valid
  | e0077 => exact edge0077_valid
  | e0078 => exact edge0078_valid
  | e0079 => exact edge0079_valid
  | e0080 => exact edge0080_valid
  | e0081 => exact edge0081_valid
  | e0082 => exact edge0082_valid
  | e0083 => exact edge0083_valid
  | e0084 => exact edge0084_valid
  | e0085 => exact edge0085_valid
  | e0086 => exact edge0086_valid
  | e0087 => exact edge0087_valid
  | e0088 => exact edge0088_valid
  | e0089 => exact edge0089_valid
  | e0090 => exact edge0090_valid
  | e0091 => exact edge0091_valid
  | e0092 => exact edge0092_valid
  | e0093 => exact edge0093_valid
  | e0094 => exact edge0094_valid
  | e0095 => exact edge0095_valid
  | e0096 => exact edge0096_valid
  | e0097 => exact edge0097_valid
  | e0098 => exact edge0098_valid
  | e0099 => exact edge0099_valid
  | e0100 => exact edge0100_valid
  | e0101 => exact edge0101_valid
  | e0102 => exact edge0102_valid
  | e0103 => exact edge0103_valid
  | e0104 => exact edge0104_valid
  | e0105 => exact edge0105_valid
  | e0106 => exact edge0106_valid
  | e0107 => exact edge0107_valid
  | e0108 => exact edge0108_valid
  | e0109 => exact edge0109_valid
  | e0110 => exact edge0110_valid
  | e0111 => exact edge0111_valid
  | e0112 => exact edge0112_valid
  | e0113 => exact edge0113_valid
  | e0114 => exact edge0114_valid
  | e0115 => exact edge0115_valid
  | e0116 => exact edge0116_valid
  | e0117 => exact edge0117_valid
  | e0118 => exact edge0118_valid
  | e0119 => exact edge0119_valid
  | e0120 => exact edge0120_valid
  | e0121 => exact edge0121_valid
  | e0122 => exact edge0122_valid
  | e0123 => exact edge0123_valid
  | e0124 => exact edge0124_valid
  | e0125 => exact edge0125_valid
  | e0126 => exact edge0126_valid
  | e0127 => exact edge0127_valid
  | e0128 => exact edge0128_valid
  | e0129 => exact edge0129_valid
  | e0130 => exact edge0130_valid
  | e0131 => exact edge0131_valid
  | e0132 => exact edge0132_valid
  | e0133 => exact edge0133_valid
  | e0134 => exact edge0134_valid
  | e0135 => exact edge0135_valid
  | e0136 => exact edge0136_valid
  | e0137 => exact edge0137_valid
  | e0138 => exact edge0138_valid
  | e0139 => exact edge0139_valid
  | e0140 => exact edge0140_valid
  | e0141 => exact edge0141_valid
  | e0142 => exact edge0142_valid
  | e0143 => exact edge0143_valid
  | e0144 => exact edge0144_valid
  | e0145 => exact edge0145_valid
  | e0146 => exact edge0146_valid
  | e0147 => exact edge0147_valid
  | e0148 => exact edge0148_valid
  | e0149 => exact edge0149_valid
  | e0150 => exact edge0150_valid
  | e0151 => exact edge0151_valid
  | e0152 => exact edge0152_valid
  | e0153 => exact edge0153_valid
  | e0154 => exact edge0154_valid
  | e0155 => exact edge0155_valid
  | e0156 => exact edge0156_valid
  | e0157 => exact edge0157_valid
  | e0158 => exact edge0158_valid
  | e0159 => exact edge0159_valid
  | e0160 => exact edge0160_valid
  | e0161 => exact edge0161_valid
  | e0162 => exact edge0162_valid
  | e0163 => exact edge0163_valid
  | e0164 => exact edge0164_valid
  | e0165 => exact edge0165_valid
  | e0166 => exact edge0166_valid
  | e0167 => exact edge0167_valid
  | e0168 => exact edge0168_valid
  | e0169 => exact edge0169_valid
  | e0170 => exact edge0170_valid
  | e0171 => exact edge0171_valid
  | e0172 => exact edge0172_valid
  | e0173 => exact edge0173_valid
  | e0174 => exact edge0174_valid
  | e0175 => exact edge0175_valid
  | e0176 => exact edge0176_valid
  | e0177 => exact edge0177_valid
  | e0178 => exact edge0178_valid
  | e0179 => exact edge0179_valid
  | e0180 => exact edge0180_valid
  | e0181 => exact edge0181_valid
  | e0182 => exact edge0182_valid
  | e0183 => exact edge0183_valid
  | e0184 => exact edge0184_valid
  | e0185 => exact edge0185_valid
  | e0186 => exact edge0186_valid
  | e0187 => exact edge0187_valid
  | e0188 => exact edge0188_valid
  | e0189 => exact edge0189_valid
  | e0190 => exact edge0190_valid
  | e0191 => exact edge0191_valid
  | e0192 => exact edge0192_valid
  | e0193 => exact edge0193_valid
  | e0194 => exact edge0194_valid
  | e0195 => exact edge0195_valid
  | e0196 => exact edge0196_valid
  | e0197 => exact edge0197_valid
  | e0198 => exact edge0198_valid
  | e0199 => exact edge0199_valid
  | e0200 => exact edge0200_valid
  | e0201 => exact edge0201_valid
  | e0202 => exact edge0202_valid
  | e0203 => exact edge0203_valid
  | e0204 => exact edge0204_valid
  | e0205 => exact edge0205_valid
  | e0206 => exact edge0206_valid
  | e0207 => exact edge0207_valid
  | e0208 => exact edge0208_valid
  | e0209 => exact edge0209_valid
  | e0210 => exact edge0210_valid
  | e0211 => exact edge0211_valid
  | e0212 => exact edge0212_valid
  | e0213 => exact edge0213_valid
  | e0214 => exact edge0214_valid
  | e0215 => exact edge0215_valid
  | e0216 => exact edge0216_valid
  | e0217 => exact edge0217_valid
  | e0218 => exact edge0218_valid
  | e0219 => exact edge0219_valid
  | e0220 => exact edge0220_valid
  | e0221 => exact edge0221_valid
  | e0222 => exact edge0222_valid
  | e0223 => exact edge0223_valid
  | e0224 => exact edge0224_valid
  | e0225 => exact edge0225_valid
  | e0226 => exact edge0226_valid
  | e0227 => exact edge0227_valid
  | e0228 => exact edge0228_valid

private theorem root_bound :
    (176 : Int) + graphPotential rootState <= 0 := by
  decide

theorem graphSmoke_path_scaled_margin_nonpos
    {finish : State} {edges : List (BellmanEdge State)}
    (hpath : BellmanPath rootState finish edges)
    (hgraph : forall e, e ∈ edges -> GraphEdge e)
    (hfinish : 0 <= graphPotential finish) :
    (176 : Int) + bellmanGainSum edges <= 0 :=
  const_add_bellmanGainSum_nonpos_of_path
    (V := graphPotential)
    (const := 176)
    hpath
    (fun e he => GraphEdge.valid (hgraph e he))
    hfinish
    root_bound

theorem graphSmoke_family_scaled_margin_nonpos
    {Obj : Type} {scaledMargin : Obj -> Int}
    (htrace : BellmanTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) scaledMargin) :
    forall obj : Obj, scaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanTraceBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (start := rootState)
    (const := 176)
    (fun _ he => GraphEdge.valid he)
    root_bound
    htrace

private inductive SmokeObj where
  | cls0000
  | cls0001
  | cls0002
  | cls0003
  | cls0004
  | cls0005
  | cls0006
  | cls0007
  | cls0008
  | cls0009
  | cls0010
  | cls0011
  | cls0012
  | cls0013
  | cls0014
  | cls0015
  | cls0016
  | cls0017
  | cls0018
  | cls0019
  | cls0020
  | cls0021
  | cls0022
  | cls0023
  | cls0024
  | cls0025
  | cls0026
  | cls0027
  | cls0028
  | cls0029
  | cls0030
  | cls0031
  | cls0032
  | cls0033
  | cls0034
  | cls0035
  | cls0036

private def smokeScaledMargin : SmokeObj -> Int
  | SmokeObj.cls0000 => -376
  | SmokeObj.cls0001 => -376
  | SmokeObj.cls0002 => -128
  | SmokeObj.cls0003 => -128
  | SmokeObj.cls0004 => -392
  | SmokeObj.cls0005 => -464
  | SmokeObj.cls0006 => -176
  | SmokeObj.cls0007 => -464
  | SmokeObj.cls0008 => -392
  | SmokeObj.cls0009 => -128
  | SmokeObj.cls0010 => -376
  | SmokeObj.cls0011 => -376
  | SmokeObj.cls0012 => -376
  | SmokeObj.cls0013 => -376
  | SmokeObj.cls0014 => -420
  | SmokeObj.cls0015 => -200
  | SmokeObj.cls0016 => -420
  | SmokeObj.cls0017 => -200
  | SmokeObj.cls0018 => -200
  | SmokeObj.cls0019 => -172
  | SmokeObj.cls0020 => -436
  | SmokeObj.cls0021 => -216
  | SmokeObj.cls0022 => -508
  | SmokeObj.cls0023 => -288
  | SmokeObj.cls0024 => -220
  | SmokeObj.cls0025 => 0
  | SmokeObj.cls0026 => -508
  | SmokeObj.cls0027 => -288
  | SmokeObj.cls0028 => -436
  | SmokeObj.cls0029 => -172
  | SmokeObj.cls0030 => -420
  | SmokeObj.cls0031 => -436
  | SmokeObj.cls0032 => -436
  | SmokeObj.cls0033 => -216
  | SmokeObj.cls0034 => -200
  | SmokeObj.cls0035 => -200
  | SmokeObj.cls0036 => -200

-- rank: class count 1; sample [517]
private def cls0000FinalState : State := State.s0141

private def cls0000Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0128
  , edge0135
  , edge0145
  , edge0158
  , edge0173
  , edge0190
  , edge0210
  , edge0006
  , edge0045
  , edge0080
  , edge0123]

private theorem cls0000Path :
    BellmanPath rootState cls0000FinalState cls0000Edges := by
  unfold cls0000Edges rootState cls0000FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0141

private theorem cls0000Graph :
    forall e, e ∈ cls0000Edges -> GraphEdge e := by
  intro e he
  simp [cls0000Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0128
  · subst e; exact GraphEdge.e0135
  · subst e; exact GraphEdge.e0145
  · subst e; exact GraphEdge.e0158
  · subst e; exact GraphEdge.e0173
  · subst e; exact GraphEdge.e0190
  · subst e; exact GraphEdge.e0210
  · subst e; exact GraphEdge.e0006
  · subst e; exact GraphEdge.e0045
  · subst e; exact GraphEdge.e0080
  · subst e; exact GraphEdge.e0123

private theorem cls0000Final_nonneg :
    0 <= graphPotential cls0000FinalState := by
  decide

private theorem cls0000Margin_bound :
    smokeScaledMargin SmokeObj.cls0000 <= (176 : Int) + bellmanGainSum cls0000Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [10613]
private def cls0001FinalState : State := State.s0138

private def cls0001Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0128
  , edge0136
  , edge0148
  , edge0161
  , edge0176
  , edge0193
  , edge0213
  , edge0011
  , edge0050
  , edge0086
  , edge0120]

private theorem cls0001Path :
    BellmanPath rootState cls0001FinalState cls0001Edges := by
  unfold cls0001Edges rootState cls0001FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0138

private theorem cls0001Graph :
    forall e, e ∈ cls0001Edges -> GraphEdge e := by
  intro e he
  simp [cls0001Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0128
  · subst e; exact GraphEdge.e0136
  · subst e; exact GraphEdge.e0148
  · subst e; exact GraphEdge.e0161
  · subst e; exact GraphEdge.e0176
  · subst e; exact GraphEdge.e0193
  · subst e; exact GraphEdge.e0213
  · subst e; exact GraphEdge.e0011
  · subst e; exact GraphEdge.e0050
  · subst e; exact GraphEdge.e0086
  · subst e; exact GraphEdge.e0120

private theorem cls0001Final_nonneg :
    0 <= graphPotential cls0001FinalState := by
  decide

private theorem cls0001Margin_bound :
    smokeScaledMargin SmokeObj.cls0001 <= (176 : Int) + bellmanGainSum cls0001Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [23197]
private def cls0002FinalState : State := State.s0135

private def cls0002Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0137
  , edge0146
  , edge0157
  , edge0172
  , edge0189
  , edge0209
  , edge0005
  , edge0043
  , edge0078
  , edge0117]

private theorem cls0002Path :
    BellmanPath rootState cls0002FinalState cls0002Edges := by
  unfold cls0002Edges rootState cls0002FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0135

private theorem cls0002Graph :
    forall e, e ∈ cls0002Edges -> GraphEdge e := by
  intro e he
  simp [cls0002Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0137
  · subst e; exact GraphEdge.e0146
  · subst e; exact GraphEdge.e0157
  · subst e; exact GraphEdge.e0172
  · subst e; exact GraphEdge.e0189
  · subst e; exact GraphEdge.e0209
  · subst e; exact GraphEdge.e0005
  · subst e; exact GraphEdge.e0043
  · subst e; exact GraphEdge.e0078
  · subst e; exact GraphEdge.e0117

private theorem cls0002Final_nonneg :
    0 <= graphPotential cls0002FinalState := by
  decide

private theorem cls0002Margin_bound :
    smokeScaledMargin SmokeObj.cls0002 <= (176 : Int) + bellmanGainSum cls0002Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: class count 1; sample [25555]
private def cls0003FinalState : State := State.s0134

private def cls0003Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0137
  , edge0147
  , edge0160
  , edge0175
  , edge0192
  , edge0212
  , edge0009
  , edge0048
  , edge0077
  , edge0116]

private theorem cls0003Path :
    BellmanPath rootState cls0003FinalState cls0003Edges := by
  unfold cls0003Edges rootState cls0003FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0134

private theorem cls0003Graph :
    forall e, e ∈ cls0003Edges -> GraphEdge e := by
  intro e he
  simp [cls0003Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0137
  · subst e; exact GraphEdge.e0147
  · subst e; exact GraphEdge.e0160
  · subst e; exact GraphEdge.e0175
  · subst e; exact GraphEdge.e0192
  · subst e; exact GraphEdge.e0212
  · subst e; exact GraphEdge.e0009
  · subst e; exact GraphEdge.e0048
  · subst e; exact GraphEdge.e0077
  · subst e; exact GraphEdge.e0116

private theorem cls0003Final_nonneg :
    0 <= graphPotential cls0003FinalState := by
  decide

private theorem cls0003Margin_bound :
    smokeScaledMargin SmokeObj.cls0003 <= (176 : Int) + bellmanGainSum cls0003Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: class count 1; sample [40387]
private def cls0004FinalState : State := State.s0133

private def cls0004Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0149
  , edge0159
  , edge0171
  , edge0188
  , edge0208
  , edge0004
  , edge0042
  , edge0076
  , edge0115]

private theorem cls0004Path :
    BellmanPath rootState cls0004FinalState cls0004Edges := by
  unfold cls0004Edges rootState cls0004FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0133

private theorem cls0004Graph :
    forall e, e ∈ cls0004Edges -> GraphEdge e := by
  intro e he
  simp [cls0004Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0149
  · subst e; exact GraphEdge.e0159
  · subst e; exact GraphEdge.e0171
  · subst e; exact GraphEdge.e0188
  · subst e; exact GraphEdge.e0208
  · subst e; exact GraphEdge.e0004
  · subst e; exact GraphEdge.e0042
  · subst e; exact GraphEdge.e0076
  · subst e; exact GraphEdge.e0115

private theorem cls0004Final_nonneg :
    0 <= graphPotential cls0004FinalState := by
  decide

private theorem cls0004Margin_bound :
    smokeScaledMargin SmokeObj.cls0004 <= (176 : Int) + bellmanGainSum cls0004Edges := by
  change (-392 : Int) <= -392
  decide

-- rank: class count 1; sample [42247]
private def cls0005FinalState : State := State.s0132

private def cls0005Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0162
  , edge0174
  , edge0187
  , edge0207
  , edge0003
  , edge0041
  , edge0075
  , edge0114]

private theorem cls0005Path :
    BellmanPath rootState cls0005FinalState cls0005Edges := by
  unfold cls0005Edges rootState cls0005FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0132

private theorem cls0005Graph :
    forall e, e ∈ cls0005Edges -> GraphEdge e := by
  intro e he
  simp [cls0005Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0162
  · subst e; exact GraphEdge.e0174
  · subst e; exact GraphEdge.e0187
  · subst e; exact GraphEdge.e0207
  · subst e; exact GraphEdge.e0003
  · subst e; exact GraphEdge.e0041
  · subst e; exact GraphEdge.e0075
  · subst e; exact GraphEdge.e0114

private theorem cls0005Final_nonneg :
    0 <= graphPotential cls0005FinalState := by
  decide

private theorem cls0005Margin_bound :
    smokeScaledMargin SmokeObj.cls0005 <= (176 : Int) + bellmanGainSum cls0005Edges := by
  change (-464 : Int) <= -464
  decide

-- rank: class count 1; sample [42943]
private def cls0006FinalState : State := State.s0131

private def cls0006Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0163
  , edge0177
  , edge0191
  , edge0206
  , edge0002
  , edge0040
  , edge0074
  , edge0113]

private theorem cls0006Path :
    BellmanPath rootState cls0006FinalState cls0006Edges := by
  unfold cls0006Edges rootState cls0006FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0131

private theorem cls0006Graph :
    forall e, e ∈ cls0006Edges -> GraphEdge e := by
  intro e he
  simp [cls0006Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0163
  · subst e; exact GraphEdge.e0177
  · subst e; exact GraphEdge.e0191
  · subst e; exact GraphEdge.e0206
  · subst e; exact GraphEdge.e0002
  · subst e; exact GraphEdge.e0040
  · subst e; exact GraphEdge.e0074
  · subst e; exact GraphEdge.e0113

private theorem cls0006Final_nonneg :
    0 <= graphPotential cls0006FinalState := by
  decide

private theorem cls0006Margin_bound :
    smokeScaledMargin SmokeObj.cls0006 <= (176 : Int) + bellmanGainSum cls0006Edges := by
  change (-176 : Int) <= -176
  decide

-- rank: class count 1; sample [43171]
private def cls0007FinalState : State := State.s0127

private def cls0007Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0163
  , edge0178
  , edge0194
  , edge0211
  , edge0001
  , edge0038
  , edge0071
  , edge0109]

private theorem cls0007Path :
    BellmanPath rootState cls0007FinalState cls0007Edges := by
  unfold cls0007Edges rootState cls0007FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0127

private theorem cls0007Graph :
    forall e, e ∈ cls0007Edges -> GraphEdge e := by
  intro e he
  simp [cls0007Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0163
  · subst e; exact GraphEdge.e0178
  · subst e; exact GraphEdge.e0194
  · subst e; exact GraphEdge.e0211
  · subst e; exact GraphEdge.e0001
  · subst e; exact GraphEdge.e0038
  · subst e; exact GraphEdge.e0071
  · subst e; exact GraphEdge.e0109

private theorem cls0007Final_nonneg :
    0 <= graphPotential cls0007FinalState := by
  decide

private theorem cls0007Margin_bound :
    smokeScaledMargin SmokeObj.cls0007 <= (176 : Int) + bellmanGainSum cls0007Edges := by
  change (-464 : Int) <= -464
  decide

-- rank: class count 1; sample [43195]
private def cls0008FinalState : State := State.s0128

private def cls0008Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0163
  , edge0178
  , edge0195
  , edge0216
  , edge0008
  , edge0039
  , edge0072
  , edge0110]

private theorem cls0008Path :
    BellmanPath rootState cls0008FinalState cls0008Edges := by
  unfold cls0008Edges rootState cls0008FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0128

private theorem cls0008Graph :
    forall e, e ∈ cls0008Edges -> GraphEdge e := by
  intro e he
  simp [cls0008Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0163
  · subst e; exact GraphEdge.e0178
  · subst e; exact GraphEdge.e0195
  · subst e; exact GraphEdge.e0216
  · subst e; exact GraphEdge.e0008
  · subst e; exact GraphEdge.e0039
  · subst e; exact GraphEdge.e0072
  · subst e; exact GraphEdge.e0110

private theorem cls0008Final_nonneg :
    0 <= graphPotential cls0008FinalState := by
  decide

private theorem cls0008Margin_bound :
    smokeScaledMargin SmokeObj.cls0008 <= (176 : Int) + bellmanGainSum cls0008Edges := by
  change (-392 : Int) <= -392
  decide

-- rank: class count 1; sample [43203]
private def cls0009FinalState : State := State.s0130

private def cls0009Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0163
  , edge0178
  , edge0195
  , edge0217
  , edge0014
  , edge0047
  , edge0073
  , edge0112]

private theorem cls0009Path :
    BellmanPath rootState cls0009FinalState cls0009Edges := by
  unfold cls0009Edges rootState cls0009FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0130

private theorem cls0009Graph :
    forall e, e ∈ cls0009Edges -> GraphEdge e := by
  intro e he
  simp [cls0009Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0163
  · subst e; exact GraphEdge.e0178
  · subst e; exact GraphEdge.e0195
  · subst e; exact GraphEdge.e0217
  · subst e; exact GraphEdge.e0014
  · subst e; exact GraphEdge.e0047
  · subst e; exact GraphEdge.e0073
  · subst e; exact GraphEdge.e0112

private theorem cls0009Final_nonneg :
    0 <= graphPotential cls0009FinalState := by
  decide

private theorem cls0009Margin_bound :
    smokeScaledMargin SmokeObj.cls0009 <= (176 : Int) + bellmanGainSum cls0009Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: class count 1; sample [43205]
private def cls0010FinalState : State := State.s0129

private def cls0010Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0125
  , edge0129
  , edge0138
  , edge0150
  , edge0163
  , edge0178
  , edge0195
  , edge0217
  , edge0015
  , edge0053
  , edge0083
  , edge0111]

private theorem cls0010Path :
    BellmanPath rootState cls0010FinalState cls0010Edges := by
  unfold cls0010Edges rootState cls0010FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0129

private theorem cls0010Graph :
    forall e, e ∈ cls0010Edges -> GraphEdge e := by
  intro e he
  simp [cls0010Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0125
  · subst e; exact GraphEdge.e0129
  · subst e; exact GraphEdge.e0138
  · subst e; exact GraphEdge.e0150
  · subst e; exact GraphEdge.e0163
  · subst e; exact GraphEdge.e0178
  · subst e; exact GraphEdge.e0195
  · subst e; exact GraphEdge.e0217
  · subst e; exact GraphEdge.e0015
  · subst e; exact GraphEdge.e0053
  · subst e; exact GraphEdge.e0083
  · subst e; exact GraphEdge.e0111

private theorem cls0010Final_nonneg :
    0 <= graphPotential cls0010FinalState := by
  decide

private theorem cls0010Margin_bound :
    smokeScaledMargin SmokeObj.cls0010 <= (176 : Int) + bellmanGainSum cls0010Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [113917]
private def cls0011FinalState : State := State.s0141

private def cls0011Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0130
  , edge0135
  , edge0145
  , edge0158
  , edge0173
  , edge0190
  , edge0210
  , edge0006
  , edge0045
  , edge0080
  , edge0123]

private theorem cls0011Path :
    BellmanPath rootState cls0011FinalState cls0011Edges := by
  unfold cls0011Edges rootState cls0011FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0141

private theorem cls0011Graph :
    forall e, e ∈ cls0011Edges -> GraphEdge e := by
  intro e he
  simp [cls0011Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0130
  · subst e; exact GraphEdge.e0135
  · subst e; exact GraphEdge.e0145
  · subst e; exact GraphEdge.e0158
  · subst e; exact GraphEdge.e0173
  · subst e; exact GraphEdge.e0190
  · subst e; exact GraphEdge.e0210
  · subst e; exact GraphEdge.e0006
  · subst e; exact GraphEdge.e0045
  · subst e; exact GraphEdge.e0080
  · subst e; exact GraphEdge.e0123

private theorem cls0011Final_nonneg :
    0 <= graphPotential cls0011FinalState := by
  decide

private theorem cls0011Margin_bound :
    smokeScaledMargin SmokeObj.cls0011 <= (176 : Int) + bellmanGainSum cls0011Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [124013]
private def cls0012FinalState : State := State.s0138

private def cls0012Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0130
  , edge0136
  , edge0148
  , edge0161
  , edge0176
  , edge0193
  , edge0213
  , edge0011
  , edge0050
  , edge0086
  , edge0120]

private theorem cls0012Path :
    BellmanPath rootState cls0012FinalState cls0012Edges := by
  unfold cls0012Edges rootState cls0012FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0138

private theorem cls0012Graph :
    forall e, e ∈ cls0012Edges -> GraphEdge e := by
  intro e he
  simp [cls0012Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0130
  · subst e; exact GraphEdge.e0136
  · subst e; exact GraphEdge.e0148
  · subst e; exact GraphEdge.e0161
  · subst e; exact GraphEdge.e0176
  · subst e; exact GraphEdge.e0193
  · subst e; exact GraphEdge.e0213
  · subst e; exact GraphEdge.e0011
  · subst e; exact GraphEdge.e0050
  · subst e; exact GraphEdge.e0086
  · subst e; exact GraphEdge.e0120

private theorem cls0012Final_nonneg :
    0 <= graphPotential cls0012FinalState := by
  decide

private theorem cls0012Margin_bound :
    smokeScaledMargin SmokeObj.cls0012 <= (176 : Int) + bellmanGainSum cls0012Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [136597]
private def cls0013FinalState : State := State.s0141

private def cls0013Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0131
  , edge0139
  , edge0145
  , edge0158
  , edge0173
  , edge0190
  , edge0210
  , edge0006
  , edge0045
  , edge0080
  , edge0123]

private theorem cls0013Path :
    BellmanPath rootState cls0013FinalState cls0013Edges := by
  unfold cls0013Edges rootState cls0013FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0141

private theorem cls0013Graph :
    forall e, e ∈ cls0013Edges -> GraphEdge e := by
  intro e he
  simp [cls0013Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0131
  · subst e; exact GraphEdge.e0139
  · subst e; exact GraphEdge.e0145
  · subst e; exact GraphEdge.e0158
  · subst e; exact GraphEdge.e0173
  · subst e; exact GraphEdge.e0190
  · subst e; exact GraphEdge.e0210
  · subst e; exact GraphEdge.e0006
  · subst e; exact GraphEdge.e0045
  · subst e; exact GraphEdge.e0080
  · subst e; exact GraphEdge.e0123

private theorem cls0013Final_nonneg :
    0 <= graphPotential cls0013FinalState := by
  decide

private theorem cls0013Margin_bound :
    smokeScaledMargin SmokeObj.cls0013 <= (176 : Int) + bellmanGainSum cls0013Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: class count 1; sample [151567]
private def cls0014FinalState : State := State.s0140

private def cls0014Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0131
  , edge0140
  , edge0152
  , edge0166
  , edge0182
  , edge0200
  , edge0223
  , edge0027
  , edge0044
  , edge0079
  , edge0122]

private theorem cls0014Path :
    BellmanPath rootState cls0014FinalState cls0014Edges := by
  unfold cls0014Edges rootState cls0014FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0140

private theorem cls0014Graph :
    forall e, e ∈ cls0014Edges -> GraphEdge e := by
  intro e he
  simp [cls0014Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0131
  · subst e; exact GraphEdge.e0140
  · subst e; exact GraphEdge.e0152
  · subst e; exact GraphEdge.e0166
  · subst e; exact GraphEdge.e0182
  · subst e; exact GraphEdge.e0200
  · subst e; exact GraphEdge.e0223
  · subst e; exact GraphEdge.e0027
  · subst e; exact GraphEdge.e0044
  · subst e; exact GraphEdge.e0079
  · subst e; exact GraphEdge.e0122

private theorem cls0014Final_nonneg :
    0 <= graphPotential cls0014FinalState := by
  decide

private theorem cls0014Margin_bound :
    smokeScaledMargin SmokeObj.cls0014 <= (176 : Int) + bellmanGainSum cls0014Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: class count 1; sample [151569]
private def cls0015FinalState : State := State.s0139

private def cls0015Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0131
  , edge0140
  , edge0152
  , edge0166
  , edge0182
  , edge0200
  , edge0223
  , edge0028
  , edge0059
  , edge0094
  , edge0121]

private theorem cls0015Path :
    BellmanPath rootState cls0015FinalState cls0015Edges := by
  unfold cls0015Edges rootState cls0015FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0139

private theorem cls0015Graph :
    forall e, e ∈ cls0015Edges -> GraphEdge e := by
  intro e he
  simp [cls0015Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0131
  · subst e; exact GraphEdge.e0140
  · subst e; exact GraphEdge.e0152
  · subst e; exact GraphEdge.e0166
  · subst e; exact GraphEdge.e0182
  · subst e; exact GraphEdge.e0200
  · subst e; exact GraphEdge.e0223
  · subst e; exact GraphEdge.e0028
  · subst e; exact GraphEdge.e0059
  · subst e; exact GraphEdge.e0094
  · subst e; exact GraphEdge.e0121

private theorem cls0015Final_nonneg :
    0 <= graphPotential cls0015FinalState := by
  decide

private theorem cls0015Margin_bound :
    smokeScaledMargin SmokeObj.cls0015 <= (176 : Int) + bellmanGainSum cls0015Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: class count 1; sample [312761]
private def cls0016FinalState : State := State.s0136

private def cls0016Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0132
  , edge0142
  , edge0154
  , edge0168
  , edge0184
  , edge0202
  , edge0226
  , edge0010
  , edge0049
  , edge0084
  , edge0118]

private theorem cls0016Path :
    BellmanPath rootState cls0016FinalState cls0016Edges := by
  unfold cls0016Edges rootState cls0016FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0136

private theorem cls0016Graph :
    forall e, e ∈ cls0016Edges -> GraphEdge e := by
  intro e he
  simp [cls0016Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0132
  · subst e; exact GraphEdge.e0142
  · subst e; exact GraphEdge.e0154
  · subst e; exact GraphEdge.e0168
  · subst e; exact GraphEdge.e0184
  · subst e; exact GraphEdge.e0202
  · subst e; exact GraphEdge.e0226
  · subst e; exact GraphEdge.e0010
  · subst e; exact GraphEdge.e0049
  · subst e; exact GraphEdge.e0084
  · subst e; exact GraphEdge.e0118

private theorem cls0016Final_nonneg :
    0 <= graphPotential cls0016FinalState := by
  decide

private theorem cls0016Margin_bound :
    smokeScaledMargin SmokeObj.cls0016 <= (176 : Int) + bellmanGainSum cls0016Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: class count 1; sample [312772]
private def cls0017FinalState : State := State.s0137

private def cls0017Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0132
  , edge0142
  , edge0154
  , edge0168
  , edge0184
  , edge0202
  , edge0227
  , edge0029
  , edge0062
  , edge0085
  , edge0119]

private theorem cls0017Path :
    BellmanPath rootState cls0017FinalState cls0017Edges := by
  unfold cls0017Edges rootState cls0017FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0137

private theorem cls0017Graph :
    forall e, e ∈ cls0017Edges -> GraphEdge e := by
  intro e he
  simp [cls0017Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0132
  · subst e; exact GraphEdge.e0142
  · subst e; exact GraphEdge.e0154
  · subst e; exact GraphEdge.e0168
  · subst e; exact GraphEdge.e0184
  · subst e; exact GraphEdge.e0202
  · subst e; exact GraphEdge.e0227
  · subst e; exact GraphEdge.e0029
  · subst e; exact GraphEdge.e0062
  · subst e; exact GraphEdge.e0085
  · subst e; exact GraphEdge.e0119

private theorem cls0017Final_nonneg :
    0 <= graphPotential cls0017FinalState := by
  decide

private theorem cls0017Margin_bound :
    smokeScaledMargin SmokeObj.cls0017 <= (176 : Int) + bellmanGainSum cls0017Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: class count 1; sample [312773]
private def cls0018FinalState : State := State.s0137

private def cls0018Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0126
  , edge0132
  , edge0142
  , edge0154
  , edge0168
  , edge0184
  , edge0202
  , edge0227
  , edge0029
  , edge0063
  , edge0093
  , edge0119]

private theorem cls0018Path :
    BellmanPath rootState cls0018FinalState cls0018Edges := by
  unfold cls0018Edges rootState cls0018FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0137

private theorem cls0018Graph :
    forall e, e ∈ cls0018Edges -> GraphEdge e := by
  intro e he
  simp [cls0018Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0126
  · subst e; exact GraphEdge.e0132
  · subst e; exact GraphEdge.e0142
  · subst e; exact GraphEdge.e0154
  · subst e; exact GraphEdge.e0168
  · subst e; exact GraphEdge.e0184
  · subst e; exact GraphEdge.e0202
  · subst e; exact GraphEdge.e0227
  · subst e; exact GraphEdge.e0029
  · subst e; exact GraphEdge.e0063
  · subst e; exact GraphEdge.e0093
  · subst e; exact GraphEdge.e0119

private theorem cls0018Final_nonneg :
    0 <= graphPotential cls0018FinalState := by
  decide

private theorem cls0018Margin_bound :
    smokeScaledMargin SmokeObj.cls0018 <= (176 : Int) + bellmanGainSum cls0018Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: class count 1; sample [824407]
private def cls0019FinalState : State := State.s0126

private def cls0019Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0133
  , edge0141
  , edge0151
  , edge0165
  , edge0181
  , edge0199
  , edge0222
  , edge0026
  , edge0037
  , edge0070
  , edge0108]

private theorem cls0019Path :
    BellmanPath rootState cls0019FinalState cls0019Edges := by
  unfold cls0019Edges rootState cls0019FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0126

private theorem cls0019Graph :
    forall e, e ∈ cls0019Edges -> GraphEdge e := by
  intro e he
  simp [cls0019Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0133
  · subst e; exact GraphEdge.e0141
  · subst e; exact GraphEdge.e0151
  · subst e; exact GraphEdge.e0165
  · subst e; exact GraphEdge.e0181
  · subst e; exact GraphEdge.e0199
  · subst e; exact GraphEdge.e0222
  · subst e; exact GraphEdge.e0026
  · subst e; exact GraphEdge.e0037
  · subst e; exact GraphEdge.e0070
  · subst e; exact GraphEdge.e0108

private theorem cls0019Final_nonneg :
    0 <= graphPotential cls0019FinalState := by
  decide

private theorem cls0019Margin_bound :
    smokeScaledMargin SmokeObj.cls0019 <= (176 : Int) + bellmanGainSum cls0019Edges := by
  change (-172 : Int) <= -172
  decide

-- rank: class count 1; sample [914497]
private def cls0020FinalState : State := State.s0125

private def cls0020Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0143
  , edge0153
  , edge0164
  , edge0180
  , edge0198
  , edge0221
  , edge0024
  , edge0036
  , edge0069
  , edge0107]

private theorem cls0020Path :
    BellmanPath rootState cls0020FinalState cls0020Edges := by
  unfold cls0020Edges rootState cls0020FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0125

private theorem cls0020Graph :
    forall e, e ∈ cls0020Edges -> GraphEdge e := by
  intro e he
  simp [cls0020Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0143
  · subst e; exact GraphEdge.e0153
  · subst e; exact GraphEdge.e0164
  · subst e; exact GraphEdge.e0180
  · subst e; exact GraphEdge.e0198
  · subst e; exact GraphEdge.e0221
  · subst e; exact GraphEdge.e0024
  · subst e; exact GraphEdge.e0036
  · subst e; exact GraphEdge.e0069
  · subst e; exact GraphEdge.e0107

private theorem cls0020Final_nonneg :
    0 <= graphPotential cls0020FinalState := by
  decide

private theorem cls0020Margin_bound :
    smokeScaledMargin SmokeObj.cls0020 <= (176 : Int) + bellmanGainSum cls0020Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: class count 1; sample [914499]
private def cls0021FinalState : State := State.s0124

private def cls0021Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0143
  , edge0153
  , edge0164
  , edge0180
  , edge0198
  , edge0221
  , edge0025
  , edge0058
  , edge0092
  , edge0106]

private theorem cls0021Path :
    BellmanPath rootState cls0021FinalState cls0021Edges := by
  unfold cls0021Edges rootState cls0021FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0124

private theorem cls0021Graph :
    forall e, e ∈ cls0021Edges -> GraphEdge e := by
  intro e he
  simp [cls0021Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0143
  · subst e; exact GraphEdge.e0153
  · subst e; exact GraphEdge.e0164
  · subst e; exact GraphEdge.e0180
  · subst e; exact GraphEdge.e0198
  · subst e; exact GraphEdge.e0221
  · subst e; exact GraphEdge.e0025
  · subst e; exact GraphEdge.e0058
  · subst e; exact GraphEdge.e0092
  · subst e; exact GraphEdge.e0106

private theorem cls0021Final_nonneg :
    0 <= graphPotential cls0021FinalState := by
  decide

private theorem cls0021Margin_bound :
    smokeScaledMargin SmokeObj.cls0021 <= (176 : Int) + bellmanGainSum cls0021Edges := by
  change (-216 : Int) <= -216
  decide

-- rank: class count 1; sample [944197]
private def cls0022FinalState : State := State.s0123

private def cls0022Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0155
  , edge0167
  , edge0179
  , edge0197
  , edge0220
  , edge0022
  , edge0035
  , edge0068
  , edge0105]

private theorem cls0022Path :
    BellmanPath rootState cls0022FinalState cls0022Edges := by
  unfold cls0022Edges rootState cls0022FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0123

private theorem cls0022Graph :
    forall e, e ∈ cls0022Edges -> GraphEdge e := by
  intro e he
  simp [cls0022Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0155
  · subst e; exact GraphEdge.e0167
  · subst e; exact GraphEdge.e0179
  · subst e; exact GraphEdge.e0197
  · subst e; exact GraphEdge.e0220
  · subst e; exact GraphEdge.e0022
  · subst e; exact GraphEdge.e0035
  · subst e; exact GraphEdge.e0068
  · subst e; exact GraphEdge.e0105

private theorem cls0022Final_nonneg :
    0 <= graphPotential cls0022FinalState := by
  decide

private theorem cls0022Margin_bound :
    smokeScaledMargin SmokeObj.cls0022 <= (176 : Int) + bellmanGainSum cls0022Edges := by
  change (-508 : Int) <= -508
  decide

-- rank: class count 1; sample [944199]
private def cls0023FinalState : State := State.s0122

private def cls0023Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0155
  , edge0167
  , edge0179
  , edge0197
  , edge0220
  , edge0023
  , edge0057
  , edge0091
  , edge0104]

private theorem cls0023Path :
    BellmanPath rootState cls0023FinalState cls0023Edges := by
  unfold cls0023Edges rootState cls0023FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0122

private theorem cls0023Graph :
    forall e, e ∈ cls0023Edges -> GraphEdge e := by
  intro e he
  simp [cls0023Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0155
  · subst e; exact GraphEdge.e0167
  · subst e; exact GraphEdge.e0179
  · subst e; exact GraphEdge.e0197
  · subst e; exact GraphEdge.e0220
  · subst e; exact GraphEdge.e0023
  · subst e; exact GraphEdge.e0057
  · subst e; exact GraphEdge.e0091
  · subst e; exact GraphEdge.e0104

private theorem cls0023Final_nonneg :
    0 <= graphPotential cls0023FinalState := by
  decide

private theorem cls0023Margin_bound :
    smokeScaledMargin SmokeObj.cls0023 <= (176 : Int) + bellmanGainSum cls0023Edges := by
  change (-288 : Int) <= -288
  decide

-- rank: class count 1; sample [946777]
private def cls0024FinalState : State := State.s0121

private def cls0024Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0169
  , edge0183
  , edge0196
  , edge0219
  , edge0020
  , edge0034
  , edge0067
  , edge0103]

private theorem cls0024Path :
    BellmanPath rootState cls0024FinalState cls0024Edges := by
  unfold cls0024Edges rootState cls0024FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0121

private theorem cls0024Graph :
    forall e, e ∈ cls0024Edges -> GraphEdge e := by
  intro e he
  simp [cls0024Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0169
  · subst e; exact GraphEdge.e0183
  · subst e; exact GraphEdge.e0196
  · subst e; exact GraphEdge.e0219
  · subst e; exact GraphEdge.e0020
  · subst e; exact GraphEdge.e0034
  · subst e; exact GraphEdge.e0067
  · subst e; exact GraphEdge.e0103

private theorem cls0024Final_nonneg :
    0 <= graphPotential cls0024FinalState := by
  decide

private theorem cls0024Margin_bound :
    smokeScaledMargin SmokeObj.cls0024 <= (176 : Int) + bellmanGainSum cls0024Edges := by
  change (-220 : Int) <= -220
  decide

-- rank: class count 1; sample [946779]
private def cls0025FinalState : State := State.s0120

private def cls0025Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0169
  , edge0183
  , edge0196
  , edge0219
  , edge0021
  , edge0056
  , edge0090
  , edge0102]

private theorem cls0025Path :
    BellmanPath rootState cls0025FinalState cls0025Edges := by
  unfold cls0025Edges rootState cls0025FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0120

private theorem cls0025Graph :
    forall e, e ∈ cls0025Edges -> GraphEdge e := by
  intro e he
  simp [cls0025Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0169
  · subst e; exact GraphEdge.e0183
  · subst e; exact GraphEdge.e0196
  · subst e; exact GraphEdge.e0219
  · subst e; exact GraphEdge.e0021
  · subst e; exact GraphEdge.e0056
  · subst e; exact GraphEdge.e0090
  · subst e; exact GraphEdge.e0102

private theorem cls0025Final_nonneg :
    0 <= graphPotential cls0025FinalState := by
  decide

private theorem cls0025Margin_bound :
    smokeScaledMargin SmokeObj.cls0025 <= (176 : Int) + bellmanGainSum cls0025Edges := by
  change (0 : Int) <= 0
  decide

-- rank: class count 1; sample [947437]
private def cls0026FinalState : State := State.s0119

private def cls0026Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0185
  , edge0201
  , edge0218
  , edge0018
  , edge0033
  , edge0066
  , edge0101]

private theorem cls0026Path :
    BellmanPath rootState cls0026FinalState cls0026Edges := by
  unfold cls0026Edges rootState cls0026FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0119

private theorem cls0026Graph :
    forall e, e ∈ cls0026Edges -> GraphEdge e := by
  intro e he
  simp [cls0026Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0185
  · subst e; exact GraphEdge.e0201
  · subst e; exact GraphEdge.e0218
  · subst e; exact GraphEdge.e0018
  · subst e; exact GraphEdge.e0033
  · subst e; exact GraphEdge.e0066
  · subst e; exact GraphEdge.e0101

private theorem cls0026Final_nonneg :
    0 <= graphPotential cls0026FinalState := by
  decide

private theorem cls0026Margin_bound :
    smokeScaledMargin SmokeObj.cls0026 <= (176 : Int) + bellmanGainSum cls0026Edges := by
  change (-508 : Int) <= -508
  decide

-- rank: class count 1; sample [947439]
private def cls0027FinalState : State := State.s0118

private def cls0027Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0185
  , edge0201
  , edge0218
  , edge0019
  , edge0055
  , edge0089
  , edge0100]

private theorem cls0027Path :
    BellmanPath rootState cls0027FinalState cls0027Edges := by
  unfold cls0027Edges rootState cls0027FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0118

private theorem cls0027Graph :
    forall e, e ∈ cls0027Edges -> GraphEdge e := by
  intro e he
  simp [cls0027Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0185
  · subst e; exact GraphEdge.e0201
  · subst e; exact GraphEdge.e0218
  · subst e; exact GraphEdge.e0019
  · subst e; exact GraphEdge.e0055
  · subst e; exact GraphEdge.e0089
  · subst e; exact GraphEdge.e0100

private theorem cls0027Final_nonneg :
    0 <= graphPotential cls0027FinalState := by
  decide

private theorem cls0027Margin_bound :
    smokeScaledMargin SmokeObj.cls0027 <= (176 : Int) + bellmanGainSum cls0027Edges := by
  change (-288 : Int) <= -288
  decide

-- rank: class count 1; sample [947581]
private def cls0028FinalState : State := State.s0114

private def cls0028Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0203
  , edge0214
  , edge0007
  , edge0032
  , edge0064
  , edge0096]

private theorem cls0028Path :
    BellmanPath rootState cls0028FinalState cls0028Edges := by
  unfold cls0028Edges rootState cls0028FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0114

private theorem cls0028Graph :
    forall e, e ∈ cls0028Edges -> GraphEdge e := by
  intro e he
  simp [cls0028Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0203
  · subst e; exact GraphEdge.e0214
  · subst e; exact GraphEdge.e0007
  · subst e; exact GraphEdge.e0032
  · subst e; exact GraphEdge.e0064
  · subst e; exact GraphEdge.e0096

private theorem cls0028Final_nonneg :
    0 <= graphPotential cls0028FinalState := by
  decide

private theorem cls0028Margin_bound :
    smokeScaledMargin SmokeObj.cls0028 <= (176 : Int) + bellmanGainSum cls0028Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: class count 1; sample [947589]
private def cls0029FinalState : State := State.s0117

private def cls0029Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0203
  , edge0215
  , edge0012
  , edge0046
  , edge0065
  , edge0099]

private theorem cls0029Path :
    BellmanPath rootState cls0029FinalState cls0029Edges := by
  unfold cls0029Edges rootState cls0029FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0117

private theorem cls0029Graph :
    forall e, e ∈ cls0029Edges -> GraphEdge e := by
  intro e he
  simp [cls0029Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0203
  · subst e; exact GraphEdge.e0215
  · subst e; exact GraphEdge.e0012
  · subst e; exact GraphEdge.e0046
  · subst e; exact GraphEdge.e0065
  · subst e; exact GraphEdge.e0099

private theorem cls0029Final_nonneg :
    0 <= graphPotential cls0029FinalState := by
  decide

private theorem cls0029Margin_bound :
    smokeScaledMargin SmokeObj.cls0029 <= (176 : Int) + bellmanGainSum cls0029Edges := by
  change (-172 : Int) <= -172
  decide

-- rank: class count 1; sample [947591]
private def cls0030FinalState : State := State.s0116

private def cls0030Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0203
  , edge0215
  , edge0013
  , edge0052
  , edge0082
  , edge0098]

private theorem cls0030Path :
    BellmanPath rootState cls0030FinalState cls0030Edges := by
  unfold cls0030Edges rootState cls0030FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0116

private theorem cls0030Graph :
    forall e, e ∈ cls0030Edges -> GraphEdge e := by
  intro e he
  simp [cls0030Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0203
  · subst e; exact GraphEdge.e0215
  · subst e; exact GraphEdge.e0013
  · subst e; exact GraphEdge.e0052
  · subst e; exact GraphEdge.e0082
  · subst e; exact GraphEdge.e0098

private theorem cls0030Final_nonneg :
    0 <= graphPotential cls0030FinalState := by
  decide

private theorem cls0030Margin_bound :
    smokeScaledMargin SmokeObj.cls0030 <= (176 : Int) + bellmanGainSum cls0030Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: class count 1; sample [947593]
private def cls0031FinalState : State := State.s0114

private def cls0031Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0204
  , edge0224
  , edge0007
  , edge0032
  , edge0064
  , edge0096]

private theorem cls0031Path :
    BellmanPath rootState cls0031FinalState cls0031Edges := by
  unfold cls0031Edges rootState cls0031FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0114

private theorem cls0031Graph :
    forall e, e ∈ cls0031Edges -> GraphEdge e := by
  intro e he
  simp [cls0031Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0204
  · subst e; exact GraphEdge.e0224
  · subst e; exact GraphEdge.e0007
  · subst e; exact GraphEdge.e0032
  · subst e; exact GraphEdge.e0064
  · subst e; exact GraphEdge.e0096

private theorem cls0031Final_nonneg :
    0 <= graphPotential cls0031FinalState := by
  decide

private theorem cls0031Margin_bound :
    smokeScaledMargin SmokeObj.cls0031 <= (176 : Int) + bellmanGainSum cls0031Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: class count 1; sample [947599]
private def cls0032FinalState : State := State.s0114

private def cls0032Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0204
  , edge0225
  , edge0016
  , edge0032
  , edge0064
  , edge0096]

private theorem cls0032Path :
    BellmanPath rootState cls0032FinalState cls0032Edges := by
  unfold cls0032Edges rootState cls0032FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0114

private theorem cls0032Graph :
    forall e, e ∈ cls0032Edges -> GraphEdge e := by
  intro e he
  simp [cls0032Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0204
  · subst e; exact GraphEdge.e0225
  · subst e; exact GraphEdge.e0016
  · subst e; exact GraphEdge.e0032
  · subst e; exact GraphEdge.e0064
  · subst e; exact GraphEdge.e0096

private theorem cls0032Final_nonneg :
    0 <= graphPotential cls0032FinalState := by
  decide

private theorem cls0032Margin_bound :
    smokeScaledMargin SmokeObj.cls0032 <= (176 : Int) + bellmanGainSum cls0032Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: class count 1; sample [947601]
private def cls0033FinalState : State := State.s0113

private def cls0033Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0204
  , edge0225
  , edge0017
  , edge0054
  , edge0087
  , edge0095]

private theorem cls0033Path :
    BellmanPath rootState cls0033FinalState cls0033Edges := by
  unfold cls0033Edges rootState cls0033FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0113

private theorem cls0033Graph :
    forall e, e ∈ cls0033Edges -> GraphEdge e := by
  intro e he
  simp [cls0033Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0204
  · subst e; exact GraphEdge.e0225
  · subst e; exact GraphEdge.e0017
  · subst e; exact GraphEdge.e0054
  · subst e; exact GraphEdge.e0087
  · subst e; exact GraphEdge.e0095

private theorem cls0033Final_nonneg :
    0 <= graphPotential cls0033FinalState := by
  decide

private theorem cls0033Margin_bound :
    smokeScaledMargin SmokeObj.cls0033 <= (176 : Int) + bellmanGainSum cls0033Edges := by
  change (-216 : Int) <= -216
  decide

-- rank: class count 1; sample [947625]
private def cls0034FinalState : State := State.s0115

private def cls0034Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0205
  , edge0228
  , edge0030
  , edge0051
  , edge0081
  , edge0097]

private theorem cls0034Path :
    BellmanPath rootState cls0034FinalState cls0034Edges := by
  unfold cls0034Edges rootState cls0034FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0115

private theorem cls0034Graph :
    forall e, e ∈ cls0034Edges -> GraphEdge e := by
  intro e he
  simp [cls0034Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0205
  · subst e; exact GraphEdge.e0228
  · subst e; exact GraphEdge.e0030
  · subst e; exact GraphEdge.e0051
  · subst e; exact GraphEdge.e0081
  · subst e; exact GraphEdge.e0097

private theorem cls0034Final_nonneg :
    0 <= graphPotential cls0034FinalState := by
  decide

private theorem cls0034Margin_bound :
    smokeScaledMargin SmokeObj.cls0034 <= (176 : Int) + bellmanGainSum cls0034Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: class count 1; sample [947626]
private def cls0035FinalState : State := State.s0115

private def cls0035Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0205
  , edge0228
  , edge0031
  , edge0060
  , edge0081
  , edge0097]

private theorem cls0035Path :
    BellmanPath rootState cls0035FinalState cls0035Edges := by
  unfold cls0035Edges rootState cls0035FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0115

private theorem cls0035Graph :
    forall e, e ∈ cls0035Edges -> GraphEdge e := by
  intro e he
  simp [cls0035Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0205
  · subst e; exact GraphEdge.e0228
  · subst e; exact GraphEdge.e0031
  · subst e; exact GraphEdge.e0060
  · subst e; exact GraphEdge.e0081
  · subst e; exact GraphEdge.e0097

private theorem cls0035Final_nonneg :
    0 <= graphPotential cls0035FinalState := by
  decide

private theorem cls0035Margin_bound :
    smokeScaledMargin SmokeObj.cls0035 <= (176 : Int) + bellmanGainSum cls0035Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: class count 1; sample [947627]
private def cls0036FinalState : State := State.s0115

private def cls0036Edges : List (BellmanEdge State) :=
  [edge0000
  , edge0124
  , edge0127
  , edge0134
  , edge0144
  , edge0156
  , edge0170
  , edge0186
  , edge0205
  , edge0228
  , edge0031
  , edge0061
  , edge0088
  , edge0097]

private theorem cls0036Path :
    BellmanPath rootState cls0036FinalState cls0036Edges := by
  unfold cls0036Edges rootState cls0036FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil State.s0115

private theorem cls0036Graph :
    forall e, e ∈ cls0036Edges -> GraphEdge e := by
  intro e he
  simp [cls0036Edges] at he
  rcases he with
    h0000 | h0001 | h0002 | h0003 | h0004 | h0005 | h0006 | h0007 | h0008 | h0009 | h0010 | h0011 | h0012 | h0013
  · subst e; exact GraphEdge.e0000
  · subst e; exact GraphEdge.e0124
  · subst e; exact GraphEdge.e0127
  · subst e; exact GraphEdge.e0134
  · subst e; exact GraphEdge.e0144
  · subst e; exact GraphEdge.e0156
  · subst e; exact GraphEdge.e0170
  · subst e; exact GraphEdge.e0186
  · subst e; exact GraphEdge.e0205
  · subst e; exact GraphEdge.e0228
  · subst e; exact GraphEdge.e0031
  · subst e; exact GraphEdge.e0061
  · subst e; exact GraphEdge.e0088
  · subst e; exact GraphEdge.e0097

private theorem cls0036Final_nonneg :
    0 <= graphPotential cls0036FinalState := by
  decide

private theorem cls0036Margin_bound :
    smokeScaledMargin SmokeObj.cls0036 <= (176 : Int) + bellmanGainSum cls0036Edges := by
  change (-200 : Int) <= -200
  decide

private theorem smokeTraceBound :
    BellmanTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) smokeScaledMargin := by
  intro obj
  cases obj
  · exact ⟨cls0000FinalState, cls0000Edges, cls0000Path,
      cls0000Graph, cls0000Final_nonneg, cls0000Margin_bound⟩
  · exact ⟨cls0001FinalState, cls0001Edges, cls0001Path,
      cls0001Graph, cls0001Final_nonneg, cls0001Margin_bound⟩
  · exact ⟨cls0002FinalState, cls0002Edges, cls0002Path,
      cls0002Graph, cls0002Final_nonneg, cls0002Margin_bound⟩
  · exact ⟨cls0003FinalState, cls0003Edges, cls0003Path,
      cls0003Graph, cls0003Final_nonneg, cls0003Margin_bound⟩
  · exact ⟨cls0004FinalState, cls0004Edges, cls0004Path,
      cls0004Graph, cls0004Final_nonneg, cls0004Margin_bound⟩
  · exact ⟨cls0005FinalState, cls0005Edges, cls0005Path,
      cls0005Graph, cls0005Final_nonneg, cls0005Margin_bound⟩
  · exact ⟨cls0006FinalState, cls0006Edges, cls0006Path,
      cls0006Graph, cls0006Final_nonneg, cls0006Margin_bound⟩
  · exact ⟨cls0007FinalState, cls0007Edges, cls0007Path,
      cls0007Graph, cls0007Final_nonneg, cls0007Margin_bound⟩
  · exact ⟨cls0008FinalState, cls0008Edges, cls0008Path,
      cls0008Graph, cls0008Final_nonneg, cls0008Margin_bound⟩
  · exact ⟨cls0009FinalState, cls0009Edges, cls0009Path,
      cls0009Graph, cls0009Final_nonneg, cls0009Margin_bound⟩
  · exact ⟨cls0010FinalState, cls0010Edges, cls0010Path,
      cls0010Graph, cls0010Final_nonneg, cls0010Margin_bound⟩
  · exact ⟨cls0011FinalState, cls0011Edges, cls0011Path,
      cls0011Graph, cls0011Final_nonneg, cls0011Margin_bound⟩
  · exact ⟨cls0012FinalState, cls0012Edges, cls0012Path,
      cls0012Graph, cls0012Final_nonneg, cls0012Margin_bound⟩
  · exact ⟨cls0013FinalState, cls0013Edges, cls0013Path,
      cls0013Graph, cls0013Final_nonneg, cls0013Margin_bound⟩
  · exact ⟨cls0014FinalState, cls0014Edges, cls0014Path,
      cls0014Graph, cls0014Final_nonneg, cls0014Margin_bound⟩
  · exact ⟨cls0015FinalState, cls0015Edges, cls0015Path,
      cls0015Graph, cls0015Final_nonneg, cls0015Margin_bound⟩
  · exact ⟨cls0016FinalState, cls0016Edges, cls0016Path,
      cls0016Graph, cls0016Final_nonneg, cls0016Margin_bound⟩
  · exact ⟨cls0017FinalState, cls0017Edges, cls0017Path,
      cls0017Graph, cls0017Final_nonneg, cls0017Margin_bound⟩
  · exact ⟨cls0018FinalState, cls0018Edges, cls0018Path,
      cls0018Graph, cls0018Final_nonneg, cls0018Margin_bound⟩
  · exact ⟨cls0019FinalState, cls0019Edges, cls0019Path,
      cls0019Graph, cls0019Final_nonneg, cls0019Margin_bound⟩
  · exact ⟨cls0020FinalState, cls0020Edges, cls0020Path,
      cls0020Graph, cls0020Final_nonneg, cls0020Margin_bound⟩
  · exact ⟨cls0021FinalState, cls0021Edges, cls0021Path,
      cls0021Graph, cls0021Final_nonneg, cls0021Margin_bound⟩
  · exact ⟨cls0022FinalState, cls0022Edges, cls0022Path,
      cls0022Graph, cls0022Final_nonneg, cls0022Margin_bound⟩
  · exact ⟨cls0023FinalState, cls0023Edges, cls0023Path,
      cls0023Graph, cls0023Final_nonneg, cls0023Margin_bound⟩
  · exact ⟨cls0024FinalState, cls0024Edges, cls0024Path,
      cls0024Graph, cls0024Final_nonneg, cls0024Margin_bound⟩
  · exact ⟨cls0025FinalState, cls0025Edges, cls0025Path,
      cls0025Graph, cls0025Final_nonneg, cls0025Margin_bound⟩
  · exact ⟨cls0026FinalState, cls0026Edges, cls0026Path,
      cls0026Graph, cls0026Final_nonneg, cls0026Margin_bound⟩
  · exact ⟨cls0027FinalState, cls0027Edges, cls0027Path,
      cls0027Graph, cls0027Final_nonneg, cls0027Margin_bound⟩
  · exact ⟨cls0028FinalState, cls0028Edges, cls0028Path,
      cls0028Graph, cls0028Final_nonneg, cls0028Margin_bound⟩
  · exact ⟨cls0029FinalState, cls0029Edges, cls0029Path,
      cls0029Graph, cls0029Final_nonneg, cls0029Margin_bound⟩
  · exact ⟨cls0030FinalState, cls0030Edges, cls0030Path,
      cls0030Graph, cls0030Final_nonneg, cls0030Margin_bound⟩
  · exact ⟨cls0031FinalState, cls0031Edges, cls0031Path,
      cls0031Graph, cls0031Final_nonneg, cls0031Margin_bound⟩
  · exact ⟨cls0032FinalState, cls0032Edges, cls0032Path,
      cls0032Graph, cls0032Final_nonneg, cls0032Margin_bound⟩
  · exact ⟨cls0033FinalState, cls0033Edges, cls0033Path,
      cls0033Graph, cls0033Final_nonneg, cls0033Margin_bound⟩
  · exact ⟨cls0034FinalState, cls0034Edges, cls0034Path,
      cls0034Graph, cls0034Final_nonneg, cls0034Margin_bound⟩
  · exact ⟨cls0035FinalState, cls0035Edges, cls0035Path,
      cls0035Graph, cls0035Final_nonneg, cls0035Margin_bound⟩
  · exact ⟨cls0036FinalState, cls0036Edges, cls0036Path,
      cls0036Graph, cls0036Final_nonneg, cls0036Margin_bound⟩

theorem graphSmoke_observed_objects_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=
  graphSmoke_family_scaled_margin_nonpos smokeTraceBound

private def smokeAccepts (_obj : SmokeObj) : Prop := True

private theorem smokeLanguageTraceBound :
    BellmanLanguageTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) smokeScaledMargin smokeAccepts := by
  intro obj _hobj
  exact smokeTraceBound obj

theorem graphSmoke_observed_language_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanLanguageTraceBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (start := rootState)
    (const := 176)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeLanguageTraceBound

private structure SmokeTrace where
  finish : State
  edges : List (BellmanEdge State)
  margin : Int

private def smokeTraceScaledMargin (trace : SmokeTrace) : Int :=
  trace.margin

private def smokeTraceAccepts (trace : SmokeTrace) : Prop :=
  BellmanPath rootState trace.finish trace.edges
    /\ (forall e, e ∈ trace.edges -> GraphEdge e)
    /\ 0 <= graphPotential trace.finish
    /\ trace.margin <= (176 : Int) + bellmanGainSum trace.edges

private theorem smokeTraceLanguageTraceBound :
    BellmanLanguageTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) smokeTraceScaledMargin smokeTraceAccepts := by
  intro trace htrace
  rcases htrace with ⟨hpath, hgraph, hfinish, hmargin⟩
  exact ⟨trace.finish, trace.edges, hpath, hgraph, hfinish, hmargin⟩

theorem graphSmoke_trace_language_scaled_margin_nonpos :
    forall trace : SmokeTrace,
      smokeTraceAccepts trace -> smokeTraceScaledMargin trace <= 0 :=
  scaledMargin_nonpos_of_bellmanLanguageTraceBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (start := rootState)
    (const := 176)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeTraceLanguageTraceBound

private def smokeGraphTraceAccepts (trace : SmokeTrace) : Prop :=
  BellmanGraphPath GraphEdge rootState trace.finish trace.edges
    /\ 0 <= graphPotential trace.finish
    /\ trace.margin <= (176 : Int) + bellmanGainSum trace.edges

private theorem smokeGraphTraceLanguageTraceBound :
    BellmanGraphLanguageTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) smokeTraceScaledMargin smokeGraphTraceAccepts := by
  intro trace htrace
  rcases htrace with ⟨hpath, hfinish, hmargin⟩
  exact ⟨trace.finish, trace.edges, hpath, hfinish, hmargin⟩

theorem graphSmoke_graph_trace_language_scaled_margin_nonpos :
    forall trace : SmokeTrace,
      smokeGraphTraceAccepts trace -> smokeTraceScaledMargin trace <= 0 :=
  scaledMargin_nonpos_of_bellmanGraphLanguageTraceBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (start := rootState)
    (const := 176)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeGraphTraceLanguageTraceBound

private inductive SmokeLabel where
  | l0000 -- face=tmmm|pair=d111
  | l0001 -- face=tmmp|pair=d11m
  | l0002 -- face=tmpm|pair=d1m1
  | l0003 -- face=tmpp|pair=dm11
  | l0004 -- face=tpmm|pair=dm11
  | l0005 -- face=tpmp|pair=d1m1
  | l0006 -- face=tppm|pair=d11m
  | l0007 -- face=tppp|pair=d111
  | l0008 -- face=xm|pair=x
  | l0009 -- face=xp|pair=x
  | l0010 -- face=ym|pair=y
  | l0011 -- face=yp|pair=y
  | l0012 -- face=zm|pair=z
  | l0013 -- face=zp|pair=z

private def smokeLabelOfFace : Face -> SmokeLabel
  | Face.xp => SmokeLabel.l0009
  | Face.xm => SmokeLabel.l0008
  | Face.yp => SmokeLabel.l0011
  | Face.ym => SmokeLabel.l0010
  | Face.zp => SmokeLabel.l0013
  | Face.zm => SmokeLabel.l0012
  | Face.tmmm => SmokeLabel.l0000
  | Face.tmmp => SmokeLabel.l0001
  | Face.tmpm => SmokeLabel.l0002
  | Face.tmpp => SmokeLabel.l0003
  | Face.tpmm => SmokeLabel.l0004
  | Face.tpmp => SmokeLabel.l0005
  | Face.tppm => SmokeLabel.l0006
  | Face.tppp => SmokeLabel.l0007

/--
The profiler emits Bellman labels in contribution order: the thirteen
post-start faces first, followed by the initial `X+` face.
-/
private def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=
  faceLabelsInContributionOrder smokeLabelOfFace seq

private inductive SmokeEdgeLabel : BellmanEdge State -> SmokeLabel -> Prop where
  | e0000 : SmokeEdgeLabel edge0000 SmokeLabel.l0008
  | e0001 : SmokeEdgeLabel edge0001 SmokeLabel.l0007
  | e0002 : SmokeEdgeLabel edge0002 SmokeLabel.l0007
  | e0003 : SmokeEdgeLabel edge0003 SmokeLabel.l0007
  | e0004 : SmokeEdgeLabel edge0004 SmokeLabel.l0007
  | e0005 : SmokeEdgeLabel edge0005 SmokeLabel.l0007
  | e0006 : SmokeEdgeLabel edge0006 SmokeLabel.l0007
  | e0007 : SmokeEdgeLabel edge0007 SmokeLabel.l0012
  | e0008 : SmokeEdgeLabel edge0008 SmokeLabel.l0012
  | e0009 : SmokeEdgeLabel edge0009 SmokeLabel.l0002
  | e0010 : SmokeEdgeLabel edge0010 SmokeLabel.l0002
  | e0011 : SmokeEdgeLabel edge0011 SmokeLabel.l0002
  | e0012 : SmokeEdgeLabel edge0012 SmokeLabel.l0012
  | e0013 : SmokeEdgeLabel edge0013 SmokeLabel.l0001
  | e0014 : SmokeEdgeLabel edge0014 SmokeLabel.l0012
  | e0015 : SmokeEdgeLabel edge0015 SmokeLabel.l0001
  | e0016 : SmokeEdgeLabel edge0016 SmokeLabel.l0011
  | e0017 : SmokeEdgeLabel edge0017 SmokeLabel.l0001
  | e0018 : SmokeEdgeLabel edge0018 SmokeLabel.l0011
  | e0019 : SmokeEdgeLabel edge0019 SmokeLabel.l0001
  | e0020 : SmokeEdgeLabel edge0020 SmokeLabel.l0011
  | e0021 : SmokeEdgeLabel edge0021 SmokeLabel.l0001
  | e0022 : SmokeEdgeLabel edge0022 SmokeLabel.l0011
  | e0023 : SmokeEdgeLabel edge0023 SmokeLabel.l0001
  | e0024 : SmokeEdgeLabel edge0024 SmokeLabel.l0011
  | e0025 : SmokeEdgeLabel edge0025 SmokeLabel.l0001
  | e0026 : SmokeEdgeLabel edge0026 SmokeLabel.l0011
  | e0027 : SmokeEdgeLabel edge0027 SmokeLabel.l0011
  | e0028 : SmokeEdgeLabel edge0028 SmokeLabel.l0001
  | e0029 : SmokeEdgeLabel edge0029 SmokeLabel.l0002
  | e0030 : SmokeEdgeLabel edge0030 SmokeLabel.l0011
  | e0031 : SmokeEdgeLabel edge0031 SmokeLabel.l0012
  | e0032 : SmokeEdgeLabel edge0032 SmokeLabel.l0003
  | e0033 : SmokeEdgeLabel edge0033 SmokeLabel.l0003
  | e0034 : SmokeEdgeLabel edge0034 SmokeLabel.l0003
  | e0035 : SmokeEdgeLabel edge0035 SmokeLabel.l0003
  | e0036 : SmokeEdgeLabel edge0036 SmokeLabel.l0003
  | e0037 : SmokeEdgeLabel edge0037 SmokeLabel.l0003
  | e0038 : SmokeEdgeLabel edge0038 SmokeLabel.l0003
  | e0039 : SmokeEdgeLabel edge0039 SmokeLabel.l0003
  | e0040 : SmokeEdgeLabel edge0040 SmokeLabel.l0003
  | e0041 : SmokeEdgeLabel edge0041 SmokeLabel.l0003
  | e0042 : SmokeEdgeLabel edge0042 SmokeLabel.l0003
  | e0043 : SmokeEdgeLabel edge0043 SmokeLabel.l0003
  | e0044 : SmokeEdgeLabel edge0044 SmokeLabel.l0003
  | e0045 : SmokeEdgeLabel edge0045 SmokeLabel.l0003
  | e0046 : SmokeEdgeLabel edge0046 SmokeLabel.l0013
  | e0047 : SmokeEdgeLabel edge0047 SmokeLabel.l0013
  | e0048 : SmokeEdgeLabel edge0048 SmokeLabel.l0013
  | e0049 : SmokeEdgeLabel edge0049 SmokeLabel.l0000
  | e0050 : SmokeEdgeLabel edge0050 SmokeLabel.l0000
  | e0051 : SmokeEdgeLabel edge0051 SmokeLabel.l0012
  | e0052 : SmokeEdgeLabel edge0052 SmokeLabel.l0012
  | e0053 : SmokeEdgeLabel edge0053 SmokeLabel.l0012
  | e0054 : SmokeEdgeLabel edge0054 SmokeLabel.l0003
  | e0055 : SmokeEdgeLabel edge0055 SmokeLabel.l0003
  | e0056 : SmokeEdgeLabel edge0056 SmokeLabel.l0003
  | e0057 : SmokeEdgeLabel edge0057 SmokeLabel.l0003
  | e0058 : SmokeEdgeLabel edge0058 SmokeLabel.l0003
  | e0059 : SmokeEdgeLabel edge0059 SmokeLabel.l0003
  | e0060 : SmokeEdgeLabel edge0060 SmokeLabel.l0011
  | e0061 : SmokeEdgeLabel edge0061 SmokeLabel.l0013
  | e0062 : SmokeEdgeLabel edge0062 SmokeLabel.l0011
  | e0063 : SmokeEdgeLabel edge0063 SmokeLabel.l0013
  | e0064 : SmokeEdgeLabel edge0064 SmokeLabel.l0001
  | e0065 : SmokeEdgeLabel edge0065 SmokeLabel.l0001
  | e0066 : SmokeEdgeLabel edge0066 SmokeLabel.l0001
  | e0067 : SmokeEdgeLabel edge0067 SmokeLabel.l0001
  | e0068 : SmokeEdgeLabel edge0068 SmokeLabel.l0001
  | e0069 : SmokeEdgeLabel edge0069 SmokeLabel.l0001
  | e0070 : SmokeEdgeLabel edge0070 SmokeLabel.l0001
  | e0071 : SmokeEdgeLabel edge0071 SmokeLabel.l0001
  | e0072 : SmokeEdgeLabel edge0072 SmokeLabel.l0001
  | e0073 : SmokeEdgeLabel edge0073 SmokeLabel.l0001
  | e0074 : SmokeEdgeLabel edge0074 SmokeLabel.l0001
  | e0075 : SmokeEdgeLabel edge0075 SmokeLabel.l0001
  | e0076 : SmokeEdgeLabel edge0076 SmokeLabel.l0001
  | e0077 : SmokeEdgeLabel edge0077 SmokeLabel.l0001
  | e0078 : SmokeEdgeLabel edge0078 SmokeLabel.l0001
  | e0079 : SmokeEdgeLabel edge0079 SmokeLabel.l0001
  | e0080 : SmokeEdgeLabel edge0080 SmokeLabel.l0001
  | e0081 : SmokeEdgeLabel edge0081 SmokeLabel.l0013
  | e0082 : SmokeEdgeLabel edge0082 SmokeLabel.l0013
  | e0083 : SmokeEdgeLabel edge0083 SmokeLabel.l0013
  | e0084 : SmokeEdgeLabel edge0084 SmokeLabel.l0013
  | e0085 : SmokeEdgeLabel edge0085 SmokeLabel.l0013
  | e0086 : SmokeEdgeLabel edge0086 SmokeLabel.l0013
  | e0087 : SmokeEdgeLabel edge0087 SmokeLabel.l0011
  | e0088 : SmokeEdgeLabel edge0088 SmokeLabel.l0011
  | e0089 : SmokeEdgeLabel edge0089 SmokeLabel.l0011
  | e0090 : SmokeEdgeLabel edge0090 SmokeLabel.l0011
  | e0091 : SmokeEdgeLabel edge0091 SmokeLabel.l0011
  | e0092 : SmokeEdgeLabel edge0092 SmokeLabel.l0011
  | e0093 : SmokeEdgeLabel edge0093 SmokeLabel.l0011
  | e0094 : SmokeEdgeLabel edge0094 SmokeLabel.l0011
  | e0095 : SmokeEdgeLabel edge0095 SmokeLabel.l0009
  | e0096 : SmokeEdgeLabel edge0096 SmokeLabel.l0009
  | e0097 : SmokeEdgeLabel edge0097 SmokeLabel.l0009
  | e0098 : SmokeEdgeLabel edge0098 SmokeLabel.l0009
  | e0099 : SmokeEdgeLabel edge0099 SmokeLabel.l0009
  | e0100 : SmokeEdgeLabel edge0100 SmokeLabel.l0009
  | e0101 : SmokeEdgeLabel edge0101 SmokeLabel.l0009
  | e0102 : SmokeEdgeLabel edge0102 SmokeLabel.l0009
  | e0103 : SmokeEdgeLabel edge0103 SmokeLabel.l0009
  | e0104 : SmokeEdgeLabel edge0104 SmokeLabel.l0009
  | e0105 : SmokeEdgeLabel edge0105 SmokeLabel.l0009
  | e0106 : SmokeEdgeLabel edge0106 SmokeLabel.l0009
  | e0107 : SmokeEdgeLabel edge0107 SmokeLabel.l0009
  | e0108 : SmokeEdgeLabel edge0108 SmokeLabel.l0009
  | e0109 : SmokeEdgeLabel edge0109 SmokeLabel.l0009
  | e0110 : SmokeEdgeLabel edge0110 SmokeLabel.l0009
  | e0111 : SmokeEdgeLabel edge0111 SmokeLabel.l0009
  | e0112 : SmokeEdgeLabel edge0112 SmokeLabel.l0009
  | e0113 : SmokeEdgeLabel edge0113 SmokeLabel.l0009
  | e0114 : SmokeEdgeLabel edge0114 SmokeLabel.l0009
  | e0115 : SmokeEdgeLabel edge0115 SmokeLabel.l0009
  | e0116 : SmokeEdgeLabel edge0116 SmokeLabel.l0009
  | e0117 : SmokeEdgeLabel edge0117 SmokeLabel.l0009
  | e0118 : SmokeEdgeLabel edge0118 SmokeLabel.l0009
  | e0119 : SmokeEdgeLabel edge0119 SmokeLabel.l0009
  | e0120 : SmokeEdgeLabel edge0120 SmokeLabel.l0009
  | e0121 : SmokeEdgeLabel edge0121 SmokeLabel.l0009
  | e0122 : SmokeEdgeLabel edge0122 SmokeLabel.l0009
  | e0123 : SmokeEdgeLabel edge0123 SmokeLabel.l0009
  | e0124 : SmokeEdgeLabel edge0124 SmokeLabel.l0010
  | e0125 : SmokeEdgeLabel edge0125 SmokeLabel.l0011
  | e0126 : SmokeEdgeLabel edge0126 SmokeLabel.l0012
  | e0127 : SmokeEdgeLabel edge0127 SmokeLabel.l0002
  | e0128 : SmokeEdgeLabel edge0128 SmokeLabel.l0012
  | e0129 : SmokeEdgeLabel edge0129 SmokeLabel.l0000
  | e0130 : SmokeEdgeLabel edge0130 SmokeLabel.l0011
  | e0131 : SmokeEdgeLabel edge0131 SmokeLabel.l0013
  | e0132 : SmokeEdgeLabel edge0132 SmokeLabel.l0003
  | e0133 : SmokeEdgeLabel edge0133 SmokeLabel.l0012
  | e0134 : SmokeEdgeLabel edge0134 SmokeLabel.l0006
  | e0135 : SmokeEdgeLabel edge0135 SmokeLabel.l0013
  | e0136 : SmokeEdgeLabel edge0136 SmokeLabel.l0001
  | e0137 : SmokeEdgeLabel edge0137 SmokeLabel.l0012
  | e0138 : SmokeEdgeLabel edge0138 SmokeLabel.l0004
  | e0139 : SmokeEdgeLabel edge0139 SmokeLabel.l0011
  | e0140 : SmokeEdgeLabel edge0140 SmokeLabel.l0002
  | e0141 : SmokeEdgeLabel edge0141 SmokeLabel.l0013
  | e0142 : SmokeEdgeLabel edge0142 SmokeLabel.l0007
  | e0143 : SmokeEdgeLabel edge0143 SmokeLabel.l0013
  | e0144 : SmokeEdgeLabel edge0144 SmokeLabel.l0004
  | e0145 : SmokeEdgeLabel edge0145 SmokeLabel.l0000
  | e0146 : SmokeEdgeLabel edge0146 SmokeLabel.l0013
  | e0147 : SmokeEdgeLabel edge0147 SmokeLabel.l0005
  | e0148 : SmokeEdgeLabel edge0148 SmokeLabel.l0005
  | e0149 : SmokeEdgeLabel edge0149 SmokeLabel.l0013
  | e0150 : SmokeEdgeLabel edge0150 SmokeLabel.l0006
  | e0151 : SmokeEdgeLabel edge0151 SmokeLabel.l0006
  | e0152 : SmokeEdgeLabel edge0152 SmokeLabel.l0006
  | e0153 : SmokeEdgeLabel edge0153 SmokeLabel.l0012
  | e0154 : SmokeEdgeLabel edge0154 SmokeLabel.l0005
  | e0155 : SmokeEdgeLabel edge0155 SmokeLabel.l0013
  | e0156 : SmokeEdgeLabel edge0156 SmokeLabel.l0007
  | e0157 : SmokeEdgeLabel edge0157 SmokeLabel.l0004
  | e0158 : SmokeEdgeLabel edge0158 SmokeLabel.l0004
  | e0159 : SmokeEdgeLabel edge0159 SmokeLabel.l0012
  | e0160 : SmokeEdgeLabel edge0160 SmokeLabel.l0007
  | e0161 : SmokeEdgeLabel edge0161 SmokeLabel.l0007
  | e0162 : SmokeEdgeLabel edge0162 SmokeLabel.l0013
  | e0163 : SmokeEdgeLabel edge0163 SmokeLabel.l0005
  | e0164 : SmokeEdgeLabel edge0164 SmokeLabel.l0004
  | e0165 : SmokeEdgeLabel edge0165 SmokeLabel.l0004
  | e0166 : SmokeEdgeLabel edge0166 SmokeLabel.l0004
  | e0167 : SmokeEdgeLabel edge0167 SmokeLabel.l0012
  | e0168 : SmokeEdgeLabel edge0168 SmokeLabel.l0006
  | e0169 : SmokeEdgeLabel edge0169 SmokeLabel.l0013
  | e0170 : SmokeEdgeLabel edge0170 SmokeLabel.l0000
  | e0171 : SmokeEdgeLabel edge0171 SmokeLabel.l0006
  | e0172 : SmokeEdgeLabel edge0172 SmokeLabel.l0006
  | e0173 : SmokeEdgeLabel edge0173 SmokeLabel.l0006
  | e0174 : SmokeEdgeLabel edge0174 SmokeLabel.l0012
  | e0175 : SmokeEdgeLabel edge0175 SmokeLabel.l0004
  | e0176 : SmokeEdgeLabel edge0176 SmokeLabel.l0004
  | e0177 : SmokeEdgeLabel edge0177 SmokeLabel.l0013
  | e0178 : SmokeEdgeLabel edge0178 SmokeLabel.l0002
  | e0179 : SmokeEdgeLabel edge0179 SmokeLabel.l0007
  | e0180 : SmokeEdgeLabel edge0180 SmokeLabel.l0007
  | e0181 : SmokeEdgeLabel edge0181 SmokeLabel.l0007
  | e0182 : SmokeEdgeLabel edge0182 SmokeLabel.l0007
  | e0183 : SmokeEdgeLabel edge0183 SmokeLabel.l0012
  | e0184 : SmokeEdgeLabel edge0184 SmokeLabel.l0001
  | e0185 : SmokeEdgeLabel edge0185 SmokeLabel.l0013
  | e0186 : SmokeEdgeLabel edge0186 SmokeLabel.l0005
  | e0187 : SmokeEdgeLabel edge0187 SmokeLabel.l0005
  | e0188 : SmokeEdgeLabel edge0188 SmokeLabel.l0005
  | e0189 : SmokeEdgeLabel edge0189 SmokeLabel.l0005
  | e0190 : SmokeEdgeLabel edge0190 SmokeLabel.l0005
  | e0191 : SmokeEdgeLabel edge0191 SmokeLabel.l0012
  | e0192 : SmokeEdgeLabel edge0192 SmokeLabel.l0003
  | e0193 : SmokeEdgeLabel edge0193 SmokeLabel.l0003
  | e0194 : SmokeEdgeLabel edge0194 SmokeLabel.l0013
  | e0195 : SmokeEdgeLabel edge0195 SmokeLabel.l0007
  | e0196 : SmokeEdgeLabel edge0196 SmokeLabel.l0000
  | e0197 : SmokeEdgeLabel edge0197 SmokeLabel.l0000
  | e0198 : SmokeEdgeLabel edge0198 SmokeLabel.l0000
  | e0199 : SmokeEdgeLabel edge0199 SmokeLabel.l0000
  | e0200 : SmokeEdgeLabel edge0200 SmokeLabel.l0000
  | e0201 : SmokeEdgeLabel edge0201 SmokeLabel.l0012
  | e0202 : SmokeEdgeLabel edge0202 SmokeLabel.l0004
  | e0203 : SmokeEdgeLabel edge0203 SmokeLabel.l0011
  | e0204 : SmokeEdgeLabel edge0204 SmokeLabel.l0013
  | e0205 : SmokeEdgeLabel edge0205 SmokeLabel.l0001
  | e0206 : SmokeEdgeLabel edge0206 SmokeLabel.l0002
  | e0207 : SmokeEdgeLabel edge0207 SmokeLabel.l0002
  | e0208 : SmokeEdgeLabel edge0208 SmokeLabel.l0002
  | e0209 : SmokeEdgeLabel edge0209 SmokeLabel.l0002
  | e0210 : SmokeEdgeLabel edge0210 SmokeLabel.l0002
  | e0211 : SmokeEdgeLabel edge0211 SmokeLabel.l0012
  | e0212 : SmokeEdgeLabel edge0212 SmokeLabel.l0006
  | e0213 : SmokeEdgeLabel edge0213 SmokeLabel.l0006
  | e0214 : SmokeEdgeLabel edge0214 SmokeLabel.l0013
  | e0215 : SmokeEdgeLabel edge0215 SmokeLabel.l0003
  | e0216 : SmokeEdgeLabel edge0216 SmokeLabel.l0013
  | e0217 : SmokeEdgeLabel edge0217 SmokeLabel.l0003
  | e0218 : SmokeEdgeLabel edge0218 SmokeLabel.l0005
  | e0219 : SmokeEdgeLabel edge0219 SmokeLabel.l0005
  | e0220 : SmokeEdgeLabel edge0220 SmokeLabel.l0005
  | e0221 : SmokeEdgeLabel edge0221 SmokeLabel.l0005
  | e0222 : SmokeEdgeLabel edge0222 SmokeLabel.l0005
  | e0223 : SmokeEdgeLabel edge0223 SmokeLabel.l0005
  | e0224 : SmokeEdgeLabel edge0224 SmokeLabel.l0011
  | e0225 : SmokeEdgeLabel edge0225 SmokeLabel.l0012
  | e0226 : SmokeEdgeLabel edge0226 SmokeLabel.l0011
  | e0227 : SmokeEdgeLabel edge0227 SmokeLabel.l0000
  | e0228 : SmokeEdgeLabel edge0228 SmokeLabel.l0003

private inductive SmokeStep : State -> SmokeLabel -> State -> Int -> Prop where
  | e0000 : SmokeStep edge0000.src SmokeLabel.l0008 edge0000.dst edge0000.gain
  | e0001 : SmokeStep edge0001.src SmokeLabel.l0007 edge0001.dst edge0001.gain
  | e0002 : SmokeStep edge0002.src SmokeLabel.l0007 edge0002.dst edge0002.gain
  | e0003 : SmokeStep edge0003.src SmokeLabel.l0007 edge0003.dst edge0003.gain
  | e0004 : SmokeStep edge0004.src SmokeLabel.l0007 edge0004.dst edge0004.gain
  | e0005 : SmokeStep edge0005.src SmokeLabel.l0007 edge0005.dst edge0005.gain
  | e0006 : SmokeStep edge0006.src SmokeLabel.l0007 edge0006.dst edge0006.gain
  | e0007 : SmokeStep edge0007.src SmokeLabel.l0012 edge0007.dst edge0007.gain
  | e0008 : SmokeStep edge0008.src SmokeLabel.l0012 edge0008.dst edge0008.gain
  | e0009 : SmokeStep edge0009.src SmokeLabel.l0002 edge0009.dst edge0009.gain
  | e0010 : SmokeStep edge0010.src SmokeLabel.l0002 edge0010.dst edge0010.gain
  | e0011 : SmokeStep edge0011.src SmokeLabel.l0002 edge0011.dst edge0011.gain
  | e0012 : SmokeStep edge0012.src SmokeLabel.l0012 edge0012.dst edge0012.gain
  | e0013 : SmokeStep edge0013.src SmokeLabel.l0001 edge0013.dst edge0013.gain
  | e0014 : SmokeStep edge0014.src SmokeLabel.l0012 edge0014.dst edge0014.gain
  | e0015 : SmokeStep edge0015.src SmokeLabel.l0001 edge0015.dst edge0015.gain
  | e0016 : SmokeStep edge0016.src SmokeLabel.l0011 edge0016.dst edge0016.gain
  | e0017 : SmokeStep edge0017.src SmokeLabel.l0001 edge0017.dst edge0017.gain
  | e0018 : SmokeStep edge0018.src SmokeLabel.l0011 edge0018.dst edge0018.gain
  | e0019 : SmokeStep edge0019.src SmokeLabel.l0001 edge0019.dst edge0019.gain
  | e0020 : SmokeStep edge0020.src SmokeLabel.l0011 edge0020.dst edge0020.gain
  | e0021 : SmokeStep edge0021.src SmokeLabel.l0001 edge0021.dst edge0021.gain
  | e0022 : SmokeStep edge0022.src SmokeLabel.l0011 edge0022.dst edge0022.gain
  | e0023 : SmokeStep edge0023.src SmokeLabel.l0001 edge0023.dst edge0023.gain
  | e0024 : SmokeStep edge0024.src SmokeLabel.l0011 edge0024.dst edge0024.gain
  | e0025 : SmokeStep edge0025.src SmokeLabel.l0001 edge0025.dst edge0025.gain
  | e0026 : SmokeStep edge0026.src SmokeLabel.l0011 edge0026.dst edge0026.gain
  | e0027 : SmokeStep edge0027.src SmokeLabel.l0011 edge0027.dst edge0027.gain
  | e0028 : SmokeStep edge0028.src SmokeLabel.l0001 edge0028.dst edge0028.gain
  | e0029 : SmokeStep edge0029.src SmokeLabel.l0002 edge0029.dst edge0029.gain
  | e0030 : SmokeStep edge0030.src SmokeLabel.l0011 edge0030.dst edge0030.gain
  | e0031 : SmokeStep edge0031.src SmokeLabel.l0012 edge0031.dst edge0031.gain
  | e0032 : SmokeStep edge0032.src SmokeLabel.l0003 edge0032.dst edge0032.gain
  | e0033 : SmokeStep edge0033.src SmokeLabel.l0003 edge0033.dst edge0033.gain
  | e0034 : SmokeStep edge0034.src SmokeLabel.l0003 edge0034.dst edge0034.gain
  | e0035 : SmokeStep edge0035.src SmokeLabel.l0003 edge0035.dst edge0035.gain
  | e0036 : SmokeStep edge0036.src SmokeLabel.l0003 edge0036.dst edge0036.gain
  | e0037 : SmokeStep edge0037.src SmokeLabel.l0003 edge0037.dst edge0037.gain
  | e0038 : SmokeStep edge0038.src SmokeLabel.l0003 edge0038.dst edge0038.gain
  | e0039 : SmokeStep edge0039.src SmokeLabel.l0003 edge0039.dst edge0039.gain
  | e0040 : SmokeStep edge0040.src SmokeLabel.l0003 edge0040.dst edge0040.gain
  | e0041 : SmokeStep edge0041.src SmokeLabel.l0003 edge0041.dst edge0041.gain
  | e0042 : SmokeStep edge0042.src SmokeLabel.l0003 edge0042.dst edge0042.gain
  | e0043 : SmokeStep edge0043.src SmokeLabel.l0003 edge0043.dst edge0043.gain
  | e0044 : SmokeStep edge0044.src SmokeLabel.l0003 edge0044.dst edge0044.gain
  | e0045 : SmokeStep edge0045.src SmokeLabel.l0003 edge0045.dst edge0045.gain
  | e0046 : SmokeStep edge0046.src SmokeLabel.l0013 edge0046.dst edge0046.gain
  | e0047 : SmokeStep edge0047.src SmokeLabel.l0013 edge0047.dst edge0047.gain
  | e0048 : SmokeStep edge0048.src SmokeLabel.l0013 edge0048.dst edge0048.gain
  | e0049 : SmokeStep edge0049.src SmokeLabel.l0000 edge0049.dst edge0049.gain
  | e0050 : SmokeStep edge0050.src SmokeLabel.l0000 edge0050.dst edge0050.gain
  | e0051 : SmokeStep edge0051.src SmokeLabel.l0012 edge0051.dst edge0051.gain
  | e0052 : SmokeStep edge0052.src SmokeLabel.l0012 edge0052.dst edge0052.gain
  | e0053 : SmokeStep edge0053.src SmokeLabel.l0012 edge0053.dst edge0053.gain
  | e0054 : SmokeStep edge0054.src SmokeLabel.l0003 edge0054.dst edge0054.gain
  | e0055 : SmokeStep edge0055.src SmokeLabel.l0003 edge0055.dst edge0055.gain
  | e0056 : SmokeStep edge0056.src SmokeLabel.l0003 edge0056.dst edge0056.gain
  | e0057 : SmokeStep edge0057.src SmokeLabel.l0003 edge0057.dst edge0057.gain
  | e0058 : SmokeStep edge0058.src SmokeLabel.l0003 edge0058.dst edge0058.gain
  | e0059 : SmokeStep edge0059.src SmokeLabel.l0003 edge0059.dst edge0059.gain
  | e0060 : SmokeStep edge0060.src SmokeLabel.l0011 edge0060.dst edge0060.gain
  | e0061 : SmokeStep edge0061.src SmokeLabel.l0013 edge0061.dst edge0061.gain
  | e0062 : SmokeStep edge0062.src SmokeLabel.l0011 edge0062.dst edge0062.gain
  | e0063 : SmokeStep edge0063.src SmokeLabel.l0013 edge0063.dst edge0063.gain
  | e0064 : SmokeStep edge0064.src SmokeLabel.l0001 edge0064.dst edge0064.gain
  | e0065 : SmokeStep edge0065.src SmokeLabel.l0001 edge0065.dst edge0065.gain
  | e0066 : SmokeStep edge0066.src SmokeLabel.l0001 edge0066.dst edge0066.gain
  | e0067 : SmokeStep edge0067.src SmokeLabel.l0001 edge0067.dst edge0067.gain
  | e0068 : SmokeStep edge0068.src SmokeLabel.l0001 edge0068.dst edge0068.gain
  | e0069 : SmokeStep edge0069.src SmokeLabel.l0001 edge0069.dst edge0069.gain
  | e0070 : SmokeStep edge0070.src SmokeLabel.l0001 edge0070.dst edge0070.gain
  | e0071 : SmokeStep edge0071.src SmokeLabel.l0001 edge0071.dst edge0071.gain
  | e0072 : SmokeStep edge0072.src SmokeLabel.l0001 edge0072.dst edge0072.gain
  | e0073 : SmokeStep edge0073.src SmokeLabel.l0001 edge0073.dst edge0073.gain
  | e0074 : SmokeStep edge0074.src SmokeLabel.l0001 edge0074.dst edge0074.gain
  | e0075 : SmokeStep edge0075.src SmokeLabel.l0001 edge0075.dst edge0075.gain
  | e0076 : SmokeStep edge0076.src SmokeLabel.l0001 edge0076.dst edge0076.gain
  | e0077 : SmokeStep edge0077.src SmokeLabel.l0001 edge0077.dst edge0077.gain
  | e0078 : SmokeStep edge0078.src SmokeLabel.l0001 edge0078.dst edge0078.gain
  | e0079 : SmokeStep edge0079.src SmokeLabel.l0001 edge0079.dst edge0079.gain
  | e0080 : SmokeStep edge0080.src SmokeLabel.l0001 edge0080.dst edge0080.gain
  | e0081 : SmokeStep edge0081.src SmokeLabel.l0013 edge0081.dst edge0081.gain
  | e0082 : SmokeStep edge0082.src SmokeLabel.l0013 edge0082.dst edge0082.gain
  | e0083 : SmokeStep edge0083.src SmokeLabel.l0013 edge0083.dst edge0083.gain
  | e0084 : SmokeStep edge0084.src SmokeLabel.l0013 edge0084.dst edge0084.gain
  | e0085 : SmokeStep edge0085.src SmokeLabel.l0013 edge0085.dst edge0085.gain
  | e0086 : SmokeStep edge0086.src SmokeLabel.l0013 edge0086.dst edge0086.gain
  | e0087 : SmokeStep edge0087.src SmokeLabel.l0011 edge0087.dst edge0087.gain
  | e0088 : SmokeStep edge0088.src SmokeLabel.l0011 edge0088.dst edge0088.gain
  | e0089 : SmokeStep edge0089.src SmokeLabel.l0011 edge0089.dst edge0089.gain
  | e0090 : SmokeStep edge0090.src SmokeLabel.l0011 edge0090.dst edge0090.gain
  | e0091 : SmokeStep edge0091.src SmokeLabel.l0011 edge0091.dst edge0091.gain
  | e0092 : SmokeStep edge0092.src SmokeLabel.l0011 edge0092.dst edge0092.gain
  | e0093 : SmokeStep edge0093.src SmokeLabel.l0011 edge0093.dst edge0093.gain
  | e0094 : SmokeStep edge0094.src SmokeLabel.l0011 edge0094.dst edge0094.gain
  | e0095 : SmokeStep edge0095.src SmokeLabel.l0009 edge0095.dst edge0095.gain
  | e0096 : SmokeStep edge0096.src SmokeLabel.l0009 edge0096.dst edge0096.gain
  | e0097 : SmokeStep edge0097.src SmokeLabel.l0009 edge0097.dst edge0097.gain
  | e0098 : SmokeStep edge0098.src SmokeLabel.l0009 edge0098.dst edge0098.gain
  | e0099 : SmokeStep edge0099.src SmokeLabel.l0009 edge0099.dst edge0099.gain
  | e0100 : SmokeStep edge0100.src SmokeLabel.l0009 edge0100.dst edge0100.gain
  | e0101 : SmokeStep edge0101.src SmokeLabel.l0009 edge0101.dst edge0101.gain
  | e0102 : SmokeStep edge0102.src SmokeLabel.l0009 edge0102.dst edge0102.gain
  | e0103 : SmokeStep edge0103.src SmokeLabel.l0009 edge0103.dst edge0103.gain
  | e0104 : SmokeStep edge0104.src SmokeLabel.l0009 edge0104.dst edge0104.gain
  | e0105 : SmokeStep edge0105.src SmokeLabel.l0009 edge0105.dst edge0105.gain
  | e0106 : SmokeStep edge0106.src SmokeLabel.l0009 edge0106.dst edge0106.gain
  | e0107 : SmokeStep edge0107.src SmokeLabel.l0009 edge0107.dst edge0107.gain
  | e0108 : SmokeStep edge0108.src SmokeLabel.l0009 edge0108.dst edge0108.gain
  | e0109 : SmokeStep edge0109.src SmokeLabel.l0009 edge0109.dst edge0109.gain
  | e0110 : SmokeStep edge0110.src SmokeLabel.l0009 edge0110.dst edge0110.gain
  | e0111 : SmokeStep edge0111.src SmokeLabel.l0009 edge0111.dst edge0111.gain
  | e0112 : SmokeStep edge0112.src SmokeLabel.l0009 edge0112.dst edge0112.gain
  | e0113 : SmokeStep edge0113.src SmokeLabel.l0009 edge0113.dst edge0113.gain
  | e0114 : SmokeStep edge0114.src SmokeLabel.l0009 edge0114.dst edge0114.gain
  | e0115 : SmokeStep edge0115.src SmokeLabel.l0009 edge0115.dst edge0115.gain
  | e0116 : SmokeStep edge0116.src SmokeLabel.l0009 edge0116.dst edge0116.gain
  | e0117 : SmokeStep edge0117.src SmokeLabel.l0009 edge0117.dst edge0117.gain
  | e0118 : SmokeStep edge0118.src SmokeLabel.l0009 edge0118.dst edge0118.gain
  | e0119 : SmokeStep edge0119.src SmokeLabel.l0009 edge0119.dst edge0119.gain
  | e0120 : SmokeStep edge0120.src SmokeLabel.l0009 edge0120.dst edge0120.gain
  | e0121 : SmokeStep edge0121.src SmokeLabel.l0009 edge0121.dst edge0121.gain
  | e0122 : SmokeStep edge0122.src SmokeLabel.l0009 edge0122.dst edge0122.gain
  | e0123 : SmokeStep edge0123.src SmokeLabel.l0009 edge0123.dst edge0123.gain
  | e0124 : SmokeStep edge0124.src SmokeLabel.l0010 edge0124.dst edge0124.gain
  | e0125 : SmokeStep edge0125.src SmokeLabel.l0011 edge0125.dst edge0125.gain
  | e0126 : SmokeStep edge0126.src SmokeLabel.l0012 edge0126.dst edge0126.gain
  | e0127 : SmokeStep edge0127.src SmokeLabel.l0002 edge0127.dst edge0127.gain
  | e0128 : SmokeStep edge0128.src SmokeLabel.l0012 edge0128.dst edge0128.gain
  | e0129 : SmokeStep edge0129.src SmokeLabel.l0000 edge0129.dst edge0129.gain
  | e0130 : SmokeStep edge0130.src SmokeLabel.l0011 edge0130.dst edge0130.gain
  | e0131 : SmokeStep edge0131.src SmokeLabel.l0013 edge0131.dst edge0131.gain
  | e0132 : SmokeStep edge0132.src SmokeLabel.l0003 edge0132.dst edge0132.gain
  | e0133 : SmokeStep edge0133.src SmokeLabel.l0012 edge0133.dst edge0133.gain
  | e0134 : SmokeStep edge0134.src SmokeLabel.l0006 edge0134.dst edge0134.gain
  | e0135 : SmokeStep edge0135.src SmokeLabel.l0013 edge0135.dst edge0135.gain
  | e0136 : SmokeStep edge0136.src SmokeLabel.l0001 edge0136.dst edge0136.gain
  | e0137 : SmokeStep edge0137.src SmokeLabel.l0012 edge0137.dst edge0137.gain
  | e0138 : SmokeStep edge0138.src SmokeLabel.l0004 edge0138.dst edge0138.gain
  | e0139 : SmokeStep edge0139.src SmokeLabel.l0011 edge0139.dst edge0139.gain
  | e0140 : SmokeStep edge0140.src SmokeLabel.l0002 edge0140.dst edge0140.gain
  | e0141 : SmokeStep edge0141.src SmokeLabel.l0013 edge0141.dst edge0141.gain
  | e0142 : SmokeStep edge0142.src SmokeLabel.l0007 edge0142.dst edge0142.gain
  | e0143 : SmokeStep edge0143.src SmokeLabel.l0013 edge0143.dst edge0143.gain
  | e0144 : SmokeStep edge0144.src SmokeLabel.l0004 edge0144.dst edge0144.gain
  | e0145 : SmokeStep edge0145.src SmokeLabel.l0000 edge0145.dst edge0145.gain
  | e0146 : SmokeStep edge0146.src SmokeLabel.l0013 edge0146.dst edge0146.gain
  | e0147 : SmokeStep edge0147.src SmokeLabel.l0005 edge0147.dst edge0147.gain
  | e0148 : SmokeStep edge0148.src SmokeLabel.l0005 edge0148.dst edge0148.gain
  | e0149 : SmokeStep edge0149.src SmokeLabel.l0013 edge0149.dst edge0149.gain
  | e0150 : SmokeStep edge0150.src SmokeLabel.l0006 edge0150.dst edge0150.gain
  | e0151 : SmokeStep edge0151.src SmokeLabel.l0006 edge0151.dst edge0151.gain
  | e0152 : SmokeStep edge0152.src SmokeLabel.l0006 edge0152.dst edge0152.gain
  | e0153 : SmokeStep edge0153.src SmokeLabel.l0012 edge0153.dst edge0153.gain
  | e0154 : SmokeStep edge0154.src SmokeLabel.l0005 edge0154.dst edge0154.gain
  | e0155 : SmokeStep edge0155.src SmokeLabel.l0013 edge0155.dst edge0155.gain
  | e0156 : SmokeStep edge0156.src SmokeLabel.l0007 edge0156.dst edge0156.gain
  | e0157 : SmokeStep edge0157.src SmokeLabel.l0004 edge0157.dst edge0157.gain
  | e0158 : SmokeStep edge0158.src SmokeLabel.l0004 edge0158.dst edge0158.gain
  | e0159 : SmokeStep edge0159.src SmokeLabel.l0012 edge0159.dst edge0159.gain
  | e0160 : SmokeStep edge0160.src SmokeLabel.l0007 edge0160.dst edge0160.gain
  | e0161 : SmokeStep edge0161.src SmokeLabel.l0007 edge0161.dst edge0161.gain
  | e0162 : SmokeStep edge0162.src SmokeLabel.l0013 edge0162.dst edge0162.gain
  | e0163 : SmokeStep edge0163.src SmokeLabel.l0005 edge0163.dst edge0163.gain
  | e0164 : SmokeStep edge0164.src SmokeLabel.l0004 edge0164.dst edge0164.gain
  | e0165 : SmokeStep edge0165.src SmokeLabel.l0004 edge0165.dst edge0165.gain
  | e0166 : SmokeStep edge0166.src SmokeLabel.l0004 edge0166.dst edge0166.gain
  | e0167 : SmokeStep edge0167.src SmokeLabel.l0012 edge0167.dst edge0167.gain
  | e0168 : SmokeStep edge0168.src SmokeLabel.l0006 edge0168.dst edge0168.gain
  | e0169 : SmokeStep edge0169.src SmokeLabel.l0013 edge0169.dst edge0169.gain
  | e0170 : SmokeStep edge0170.src SmokeLabel.l0000 edge0170.dst edge0170.gain
  | e0171 : SmokeStep edge0171.src SmokeLabel.l0006 edge0171.dst edge0171.gain
  | e0172 : SmokeStep edge0172.src SmokeLabel.l0006 edge0172.dst edge0172.gain
  | e0173 : SmokeStep edge0173.src SmokeLabel.l0006 edge0173.dst edge0173.gain
  | e0174 : SmokeStep edge0174.src SmokeLabel.l0012 edge0174.dst edge0174.gain
  | e0175 : SmokeStep edge0175.src SmokeLabel.l0004 edge0175.dst edge0175.gain
  | e0176 : SmokeStep edge0176.src SmokeLabel.l0004 edge0176.dst edge0176.gain
  | e0177 : SmokeStep edge0177.src SmokeLabel.l0013 edge0177.dst edge0177.gain
  | e0178 : SmokeStep edge0178.src SmokeLabel.l0002 edge0178.dst edge0178.gain
  | e0179 : SmokeStep edge0179.src SmokeLabel.l0007 edge0179.dst edge0179.gain
  | e0180 : SmokeStep edge0180.src SmokeLabel.l0007 edge0180.dst edge0180.gain
  | e0181 : SmokeStep edge0181.src SmokeLabel.l0007 edge0181.dst edge0181.gain
  | e0182 : SmokeStep edge0182.src SmokeLabel.l0007 edge0182.dst edge0182.gain
  | e0183 : SmokeStep edge0183.src SmokeLabel.l0012 edge0183.dst edge0183.gain
  | e0184 : SmokeStep edge0184.src SmokeLabel.l0001 edge0184.dst edge0184.gain
  | e0185 : SmokeStep edge0185.src SmokeLabel.l0013 edge0185.dst edge0185.gain
  | e0186 : SmokeStep edge0186.src SmokeLabel.l0005 edge0186.dst edge0186.gain
  | e0187 : SmokeStep edge0187.src SmokeLabel.l0005 edge0187.dst edge0187.gain
  | e0188 : SmokeStep edge0188.src SmokeLabel.l0005 edge0188.dst edge0188.gain
  | e0189 : SmokeStep edge0189.src SmokeLabel.l0005 edge0189.dst edge0189.gain
  | e0190 : SmokeStep edge0190.src SmokeLabel.l0005 edge0190.dst edge0190.gain
  | e0191 : SmokeStep edge0191.src SmokeLabel.l0012 edge0191.dst edge0191.gain
  | e0192 : SmokeStep edge0192.src SmokeLabel.l0003 edge0192.dst edge0192.gain
  | e0193 : SmokeStep edge0193.src SmokeLabel.l0003 edge0193.dst edge0193.gain
  | e0194 : SmokeStep edge0194.src SmokeLabel.l0013 edge0194.dst edge0194.gain
  | e0195 : SmokeStep edge0195.src SmokeLabel.l0007 edge0195.dst edge0195.gain
  | e0196 : SmokeStep edge0196.src SmokeLabel.l0000 edge0196.dst edge0196.gain
  | e0197 : SmokeStep edge0197.src SmokeLabel.l0000 edge0197.dst edge0197.gain
  | e0198 : SmokeStep edge0198.src SmokeLabel.l0000 edge0198.dst edge0198.gain
  | e0199 : SmokeStep edge0199.src SmokeLabel.l0000 edge0199.dst edge0199.gain
  | e0200 : SmokeStep edge0200.src SmokeLabel.l0000 edge0200.dst edge0200.gain
  | e0201 : SmokeStep edge0201.src SmokeLabel.l0012 edge0201.dst edge0201.gain
  | e0202 : SmokeStep edge0202.src SmokeLabel.l0004 edge0202.dst edge0202.gain
  | e0203 : SmokeStep edge0203.src SmokeLabel.l0011 edge0203.dst edge0203.gain
  | e0204 : SmokeStep edge0204.src SmokeLabel.l0013 edge0204.dst edge0204.gain
  | e0205 : SmokeStep edge0205.src SmokeLabel.l0001 edge0205.dst edge0205.gain
  | e0206 : SmokeStep edge0206.src SmokeLabel.l0002 edge0206.dst edge0206.gain
  | e0207 : SmokeStep edge0207.src SmokeLabel.l0002 edge0207.dst edge0207.gain
  | e0208 : SmokeStep edge0208.src SmokeLabel.l0002 edge0208.dst edge0208.gain
  | e0209 : SmokeStep edge0209.src SmokeLabel.l0002 edge0209.dst edge0209.gain
  | e0210 : SmokeStep edge0210.src SmokeLabel.l0002 edge0210.dst edge0210.gain
  | e0211 : SmokeStep edge0211.src SmokeLabel.l0012 edge0211.dst edge0211.gain
  | e0212 : SmokeStep edge0212.src SmokeLabel.l0006 edge0212.dst edge0212.gain
  | e0213 : SmokeStep edge0213.src SmokeLabel.l0006 edge0213.dst edge0213.gain
  | e0214 : SmokeStep edge0214.src SmokeLabel.l0013 edge0214.dst edge0214.gain
  | e0215 : SmokeStep edge0215.src SmokeLabel.l0003 edge0215.dst edge0215.gain
  | e0216 : SmokeStep edge0216.src SmokeLabel.l0013 edge0216.dst edge0216.gain
  | e0217 : SmokeStep edge0217.src SmokeLabel.l0003 edge0217.dst edge0217.gain
  | e0218 : SmokeStep edge0218.src SmokeLabel.l0005 edge0218.dst edge0218.gain
  | e0219 : SmokeStep edge0219.src SmokeLabel.l0005 edge0219.dst edge0219.gain
  | e0220 : SmokeStep edge0220.src SmokeLabel.l0005 edge0220.dst edge0220.gain
  | e0221 : SmokeStep edge0221.src SmokeLabel.l0005 edge0221.dst edge0221.gain
  | e0222 : SmokeStep edge0222.src SmokeLabel.l0005 edge0222.dst edge0222.gain
  | e0223 : SmokeStep edge0223.src SmokeLabel.l0005 edge0223.dst edge0223.gain
  | e0224 : SmokeStep edge0224.src SmokeLabel.l0011 edge0224.dst edge0224.gain
  | e0225 : SmokeStep edge0225.src SmokeLabel.l0012 edge0225.dst edge0225.gain
  | e0226 : SmokeStep edge0226.src SmokeLabel.l0011 edge0226.dst edge0226.gain
  | e0227 : SmokeStep edge0227.src SmokeLabel.l0000 edge0227.dst edge0227.gain
  | e0228 : SmokeStep edge0228.src SmokeLabel.l0003 edge0228.dst edge0228.gain

private theorem SmokeStep.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    SmokeStep s label t gain -> gain + graphPotential t <= graphPotential s := by
  intro h
  cases h with
  | e0000 => simpa [BellmanEdge.Valid] using edge0000_valid
  | e0001 => simpa [BellmanEdge.Valid] using edge0001_valid
  | e0002 => simpa [BellmanEdge.Valid] using edge0002_valid
  | e0003 => simpa [BellmanEdge.Valid] using edge0003_valid
  | e0004 => simpa [BellmanEdge.Valid] using edge0004_valid
  | e0005 => simpa [BellmanEdge.Valid] using edge0005_valid
  | e0006 => simpa [BellmanEdge.Valid] using edge0006_valid
  | e0007 => simpa [BellmanEdge.Valid] using edge0007_valid
  | e0008 => simpa [BellmanEdge.Valid] using edge0008_valid
  | e0009 => simpa [BellmanEdge.Valid] using edge0009_valid
  | e0010 => simpa [BellmanEdge.Valid] using edge0010_valid
  | e0011 => simpa [BellmanEdge.Valid] using edge0011_valid
  | e0012 => simpa [BellmanEdge.Valid] using edge0012_valid
  | e0013 => simpa [BellmanEdge.Valid] using edge0013_valid
  | e0014 => simpa [BellmanEdge.Valid] using edge0014_valid
  | e0015 => simpa [BellmanEdge.Valid] using edge0015_valid
  | e0016 => simpa [BellmanEdge.Valid] using edge0016_valid
  | e0017 => simpa [BellmanEdge.Valid] using edge0017_valid
  | e0018 => simpa [BellmanEdge.Valid] using edge0018_valid
  | e0019 => simpa [BellmanEdge.Valid] using edge0019_valid
  | e0020 => simpa [BellmanEdge.Valid] using edge0020_valid
  | e0021 => simpa [BellmanEdge.Valid] using edge0021_valid
  | e0022 => simpa [BellmanEdge.Valid] using edge0022_valid
  | e0023 => simpa [BellmanEdge.Valid] using edge0023_valid
  | e0024 => simpa [BellmanEdge.Valid] using edge0024_valid
  | e0025 => simpa [BellmanEdge.Valid] using edge0025_valid
  | e0026 => simpa [BellmanEdge.Valid] using edge0026_valid
  | e0027 => simpa [BellmanEdge.Valid] using edge0027_valid
  | e0028 => simpa [BellmanEdge.Valid] using edge0028_valid
  | e0029 => simpa [BellmanEdge.Valid] using edge0029_valid
  | e0030 => simpa [BellmanEdge.Valid] using edge0030_valid
  | e0031 => simpa [BellmanEdge.Valid] using edge0031_valid
  | e0032 => simpa [BellmanEdge.Valid] using edge0032_valid
  | e0033 => simpa [BellmanEdge.Valid] using edge0033_valid
  | e0034 => simpa [BellmanEdge.Valid] using edge0034_valid
  | e0035 => simpa [BellmanEdge.Valid] using edge0035_valid
  | e0036 => simpa [BellmanEdge.Valid] using edge0036_valid
  | e0037 => simpa [BellmanEdge.Valid] using edge0037_valid
  | e0038 => simpa [BellmanEdge.Valid] using edge0038_valid
  | e0039 => simpa [BellmanEdge.Valid] using edge0039_valid
  | e0040 => simpa [BellmanEdge.Valid] using edge0040_valid
  | e0041 => simpa [BellmanEdge.Valid] using edge0041_valid
  | e0042 => simpa [BellmanEdge.Valid] using edge0042_valid
  | e0043 => simpa [BellmanEdge.Valid] using edge0043_valid
  | e0044 => simpa [BellmanEdge.Valid] using edge0044_valid
  | e0045 => simpa [BellmanEdge.Valid] using edge0045_valid
  | e0046 => simpa [BellmanEdge.Valid] using edge0046_valid
  | e0047 => simpa [BellmanEdge.Valid] using edge0047_valid
  | e0048 => simpa [BellmanEdge.Valid] using edge0048_valid
  | e0049 => simpa [BellmanEdge.Valid] using edge0049_valid
  | e0050 => simpa [BellmanEdge.Valid] using edge0050_valid
  | e0051 => simpa [BellmanEdge.Valid] using edge0051_valid
  | e0052 => simpa [BellmanEdge.Valid] using edge0052_valid
  | e0053 => simpa [BellmanEdge.Valid] using edge0053_valid
  | e0054 => simpa [BellmanEdge.Valid] using edge0054_valid
  | e0055 => simpa [BellmanEdge.Valid] using edge0055_valid
  | e0056 => simpa [BellmanEdge.Valid] using edge0056_valid
  | e0057 => simpa [BellmanEdge.Valid] using edge0057_valid
  | e0058 => simpa [BellmanEdge.Valid] using edge0058_valid
  | e0059 => simpa [BellmanEdge.Valid] using edge0059_valid
  | e0060 => simpa [BellmanEdge.Valid] using edge0060_valid
  | e0061 => simpa [BellmanEdge.Valid] using edge0061_valid
  | e0062 => simpa [BellmanEdge.Valid] using edge0062_valid
  | e0063 => simpa [BellmanEdge.Valid] using edge0063_valid
  | e0064 => simpa [BellmanEdge.Valid] using edge0064_valid
  | e0065 => simpa [BellmanEdge.Valid] using edge0065_valid
  | e0066 => simpa [BellmanEdge.Valid] using edge0066_valid
  | e0067 => simpa [BellmanEdge.Valid] using edge0067_valid
  | e0068 => simpa [BellmanEdge.Valid] using edge0068_valid
  | e0069 => simpa [BellmanEdge.Valid] using edge0069_valid
  | e0070 => simpa [BellmanEdge.Valid] using edge0070_valid
  | e0071 => simpa [BellmanEdge.Valid] using edge0071_valid
  | e0072 => simpa [BellmanEdge.Valid] using edge0072_valid
  | e0073 => simpa [BellmanEdge.Valid] using edge0073_valid
  | e0074 => simpa [BellmanEdge.Valid] using edge0074_valid
  | e0075 => simpa [BellmanEdge.Valid] using edge0075_valid
  | e0076 => simpa [BellmanEdge.Valid] using edge0076_valid
  | e0077 => simpa [BellmanEdge.Valid] using edge0077_valid
  | e0078 => simpa [BellmanEdge.Valid] using edge0078_valid
  | e0079 => simpa [BellmanEdge.Valid] using edge0079_valid
  | e0080 => simpa [BellmanEdge.Valid] using edge0080_valid
  | e0081 => simpa [BellmanEdge.Valid] using edge0081_valid
  | e0082 => simpa [BellmanEdge.Valid] using edge0082_valid
  | e0083 => simpa [BellmanEdge.Valid] using edge0083_valid
  | e0084 => simpa [BellmanEdge.Valid] using edge0084_valid
  | e0085 => simpa [BellmanEdge.Valid] using edge0085_valid
  | e0086 => simpa [BellmanEdge.Valid] using edge0086_valid
  | e0087 => simpa [BellmanEdge.Valid] using edge0087_valid
  | e0088 => simpa [BellmanEdge.Valid] using edge0088_valid
  | e0089 => simpa [BellmanEdge.Valid] using edge0089_valid
  | e0090 => simpa [BellmanEdge.Valid] using edge0090_valid
  | e0091 => simpa [BellmanEdge.Valid] using edge0091_valid
  | e0092 => simpa [BellmanEdge.Valid] using edge0092_valid
  | e0093 => simpa [BellmanEdge.Valid] using edge0093_valid
  | e0094 => simpa [BellmanEdge.Valid] using edge0094_valid
  | e0095 => simpa [BellmanEdge.Valid] using edge0095_valid
  | e0096 => simpa [BellmanEdge.Valid] using edge0096_valid
  | e0097 => simpa [BellmanEdge.Valid] using edge0097_valid
  | e0098 => simpa [BellmanEdge.Valid] using edge0098_valid
  | e0099 => simpa [BellmanEdge.Valid] using edge0099_valid
  | e0100 => simpa [BellmanEdge.Valid] using edge0100_valid
  | e0101 => simpa [BellmanEdge.Valid] using edge0101_valid
  | e0102 => simpa [BellmanEdge.Valid] using edge0102_valid
  | e0103 => simpa [BellmanEdge.Valid] using edge0103_valid
  | e0104 => simpa [BellmanEdge.Valid] using edge0104_valid
  | e0105 => simpa [BellmanEdge.Valid] using edge0105_valid
  | e0106 => simpa [BellmanEdge.Valid] using edge0106_valid
  | e0107 => simpa [BellmanEdge.Valid] using edge0107_valid
  | e0108 => simpa [BellmanEdge.Valid] using edge0108_valid
  | e0109 => simpa [BellmanEdge.Valid] using edge0109_valid
  | e0110 => simpa [BellmanEdge.Valid] using edge0110_valid
  | e0111 => simpa [BellmanEdge.Valid] using edge0111_valid
  | e0112 => simpa [BellmanEdge.Valid] using edge0112_valid
  | e0113 => simpa [BellmanEdge.Valid] using edge0113_valid
  | e0114 => simpa [BellmanEdge.Valid] using edge0114_valid
  | e0115 => simpa [BellmanEdge.Valid] using edge0115_valid
  | e0116 => simpa [BellmanEdge.Valid] using edge0116_valid
  | e0117 => simpa [BellmanEdge.Valid] using edge0117_valid
  | e0118 => simpa [BellmanEdge.Valid] using edge0118_valid
  | e0119 => simpa [BellmanEdge.Valid] using edge0119_valid
  | e0120 => simpa [BellmanEdge.Valid] using edge0120_valid
  | e0121 => simpa [BellmanEdge.Valid] using edge0121_valid
  | e0122 => simpa [BellmanEdge.Valid] using edge0122_valid
  | e0123 => simpa [BellmanEdge.Valid] using edge0123_valid
  | e0124 => simpa [BellmanEdge.Valid] using edge0124_valid
  | e0125 => simpa [BellmanEdge.Valid] using edge0125_valid
  | e0126 => simpa [BellmanEdge.Valid] using edge0126_valid
  | e0127 => simpa [BellmanEdge.Valid] using edge0127_valid
  | e0128 => simpa [BellmanEdge.Valid] using edge0128_valid
  | e0129 => simpa [BellmanEdge.Valid] using edge0129_valid
  | e0130 => simpa [BellmanEdge.Valid] using edge0130_valid
  | e0131 => simpa [BellmanEdge.Valid] using edge0131_valid
  | e0132 => simpa [BellmanEdge.Valid] using edge0132_valid
  | e0133 => simpa [BellmanEdge.Valid] using edge0133_valid
  | e0134 => simpa [BellmanEdge.Valid] using edge0134_valid
  | e0135 => simpa [BellmanEdge.Valid] using edge0135_valid
  | e0136 => simpa [BellmanEdge.Valid] using edge0136_valid
  | e0137 => simpa [BellmanEdge.Valid] using edge0137_valid
  | e0138 => simpa [BellmanEdge.Valid] using edge0138_valid
  | e0139 => simpa [BellmanEdge.Valid] using edge0139_valid
  | e0140 => simpa [BellmanEdge.Valid] using edge0140_valid
  | e0141 => simpa [BellmanEdge.Valid] using edge0141_valid
  | e0142 => simpa [BellmanEdge.Valid] using edge0142_valid
  | e0143 => simpa [BellmanEdge.Valid] using edge0143_valid
  | e0144 => simpa [BellmanEdge.Valid] using edge0144_valid
  | e0145 => simpa [BellmanEdge.Valid] using edge0145_valid
  | e0146 => simpa [BellmanEdge.Valid] using edge0146_valid
  | e0147 => simpa [BellmanEdge.Valid] using edge0147_valid
  | e0148 => simpa [BellmanEdge.Valid] using edge0148_valid
  | e0149 => simpa [BellmanEdge.Valid] using edge0149_valid
  | e0150 => simpa [BellmanEdge.Valid] using edge0150_valid
  | e0151 => simpa [BellmanEdge.Valid] using edge0151_valid
  | e0152 => simpa [BellmanEdge.Valid] using edge0152_valid
  | e0153 => simpa [BellmanEdge.Valid] using edge0153_valid
  | e0154 => simpa [BellmanEdge.Valid] using edge0154_valid
  | e0155 => simpa [BellmanEdge.Valid] using edge0155_valid
  | e0156 => simpa [BellmanEdge.Valid] using edge0156_valid
  | e0157 => simpa [BellmanEdge.Valid] using edge0157_valid
  | e0158 => simpa [BellmanEdge.Valid] using edge0158_valid
  | e0159 => simpa [BellmanEdge.Valid] using edge0159_valid
  | e0160 => simpa [BellmanEdge.Valid] using edge0160_valid
  | e0161 => simpa [BellmanEdge.Valid] using edge0161_valid
  | e0162 => simpa [BellmanEdge.Valid] using edge0162_valid
  | e0163 => simpa [BellmanEdge.Valid] using edge0163_valid
  | e0164 => simpa [BellmanEdge.Valid] using edge0164_valid
  | e0165 => simpa [BellmanEdge.Valid] using edge0165_valid
  | e0166 => simpa [BellmanEdge.Valid] using edge0166_valid
  | e0167 => simpa [BellmanEdge.Valid] using edge0167_valid
  | e0168 => simpa [BellmanEdge.Valid] using edge0168_valid
  | e0169 => simpa [BellmanEdge.Valid] using edge0169_valid
  | e0170 => simpa [BellmanEdge.Valid] using edge0170_valid
  | e0171 => simpa [BellmanEdge.Valid] using edge0171_valid
  | e0172 => simpa [BellmanEdge.Valid] using edge0172_valid
  | e0173 => simpa [BellmanEdge.Valid] using edge0173_valid
  | e0174 => simpa [BellmanEdge.Valid] using edge0174_valid
  | e0175 => simpa [BellmanEdge.Valid] using edge0175_valid
  | e0176 => simpa [BellmanEdge.Valid] using edge0176_valid
  | e0177 => simpa [BellmanEdge.Valid] using edge0177_valid
  | e0178 => simpa [BellmanEdge.Valid] using edge0178_valid
  | e0179 => simpa [BellmanEdge.Valid] using edge0179_valid
  | e0180 => simpa [BellmanEdge.Valid] using edge0180_valid
  | e0181 => simpa [BellmanEdge.Valid] using edge0181_valid
  | e0182 => simpa [BellmanEdge.Valid] using edge0182_valid
  | e0183 => simpa [BellmanEdge.Valid] using edge0183_valid
  | e0184 => simpa [BellmanEdge.Valid] using edge0184_valid
  | e0185 => simpa [BellmanEdge.Valid] using edge0185_valid
  | e0186 => simpa [BellmanEdge.Valid] using edge0186_valid
  | e0187 => simpa [BellmanEdge.Valid] using edge0187_valid
  | e0188 => simpa [BellmanEdge.Valid] using edge0188_valid
  | e0189 => simpa [BellmanEdge.Valid] using edge0189_valid
  | e0190 => simpa [BellmanEdge.Valid] using edge0190_valid
  | e0191 => simpa [BellmanEdge.Valid] using edge0191_valid
  | e0192 => simpa [BellmanEdge.Valid] using edge0192_valid
  | e0193 => simpa [BellmanEdge.Valid] using edge0193_valid
  | e0194 => simpa [BellmanEdge.Valid] using edge0194_valid
  | e0195 => simpa [BellmanEdge.Valid] using edge0195_valid
  | e0196 => simpa [BellmanEdge.Valid] using edge0196_valid
  | e0197 => simpa [BellmanEdge.Valid] using edge0197_valid
  | e0198 => simpa [BellmanEdge.Valid] using edge0198_valid
  | e0199 => simpa [BellmanEdge.Valid] using edge0199_valid
  | e0200 => simpa [BellmanEdge.Valid] using edge0200_valid
  | e0201 => simpa [BellmanEdge.Valid] using edge0201_valid
  | e0202 => simpa [BellmanEdge.Valid] using edge0202_valid
  | e0203 => simpa [BellmanEdge.Valid] using edge0203_valid
  | e0204 => simpa [BellmanEdge.Valid] using edge0204_valid
  | e0205 => simpa [BellmanEdge.Valid] using edge0205_valid
  | e0206 => simpa [BellmanEdge.Valid] using edge0206_valid
  | e0207 => simpa [BellmanEdge.Valid] using edge0207_valid
  | e0208 => simpa [BellmanEdge.Valid] using edge0208_valid
  | e0209 => simpa [BellmanEdge.Valid] using edge0209_valid
  | e0210 => simpa [BellmanEdge.Valid] using edge0210_valid
  | e0211 => simpa [BellmanEdge.Valid] using edge0211_valid
  | e0212 => simpa [BellmanEdge.Valid] using edge0212_valid
  | e0213 => simpa [BellmanEdge.Valid] using edge0213_valid
  | e0214 => simpa [BellmanEdge.Valid] using edge0214_valid
  | e0215 => simpa [BellmanEdge.Valid] using edge0215_valid
  | e0216 => simpa [BellmanEdge.Valid] using edge0216_valid
  | e0217 => simpa [BellmanEdge.Valid] using edge0217_valid
  | e0218 => simpa [BellmanEdge.Valid] using edge0218_valid
  | e0219 => simpa [BellmanEdge.Valid] using edge0219_valid
  | e0220 => simpa [BellmanEdge.Valid] using edge0220_valid
  | e0221 => simpa [BellmanEdge.Valid] using edge0221_valid
  | e0222 => simpa [BellmanEdge.Valid] using edge0222_valid
  | e0223 => simpa [BellmanEdge.Valid] using edge0223_valid
  | e0224 => simpa [BellmanEdge.Valid] using edge0224_valid
  | e0225 => simpa [BellmanEdge.Valid] using edge0225_valid
  | e0226 => simpa [BellmanEdge.Valid] using edge0226_valid
  | e0227 => simpa [BellmanEdge.Valid] using edge0227_valid
  | e0228 => simpa [BellmanEdge.Valid] using edge0228_valid

private def smokeNext : State -> SmokeLabel -> Option (State × Int)
  | State.s0000, SmokeLabel.l0008 => some (State.s0142, 103)
  | State.s0001, SmokeLabel.l0007 => some (State.s0029, -36)
  | State.s0002, SmokeLabel.l0007 => some (State.s0031, -36)
  | State.s0003, SmokeLabel.l0007 => some (State.s0032, -36)
  | State.s0004, SmokeLabel.l0007 => some (State.s0033, -36)
  | State.s0005, SmokeLabel.l0007 => some (State.s0034, -36)
  | State.s0006, SmokeLabel.l0007 => some (State.s0036, -36)
  | State.s0007, SmokeLabel.l0012 => some (State.s0023, -18)
  | State.s0008, SmokeLabel.l0012 => some (State.s0030, -18)
  | State.s0009, SmokeLabel.l0002 => some (State.s0039, 96)
  | State.s0010, SmokeLabel.l0002 => some (State.s0040, 96)
  | State.s0011, SmokeLabel.l0002 => some (State.s0041, 96)
  | State.s0012, SmokeLabel.l0001 => some (State.s0043, -124)
  | State.s0012, SmokeLabel.l0012 => some (State.s0037, 114)
  | State.s0013, SmokeLabel.l0001 => some (State.s0044, -124)
  | State.s0013, SmokeLabel.l0012 => some (State.s0038, 114)
  | State.s0014, SmokeLabel.l0001 => some (State.s0045, 96)
  | State.s0014, SmokeLabel.l0011 => some (State.s0023, -117)
  | State.s0015, SmokeLabel.l0001 => some (State.s0046, 96)
  | State.s0015, SmokeLabel.l0011 => some (State.s0024, -117)
  | State.s0016, SmokeLabel.l0001 => some (State.s0047, 96)
  | State.s0016, SmokeLabel.l0011 => some (State.s0025, -117)
  | State.s0017, SmokeLabel.l0001 => some (State.s0048, 96)
  | State.s0017, SmokeLabel.l0011 => some (State.s0026, -117)
  | State.s0018, SmokeLabel.l0001 => some (State.s0049, 96)
  | State.s0018, SmokeLabel.l0011 => some (State.s0027, -117)
  | State.s0019, SmokeLabel.l0011 => some (State.s0028, -117)
  | State.s0020, SmokeLabel.l0001 => some (State.s0050, 96)
  | State.s0020, SmokeLabel.l0011 => some (State.s0035, -117)
  | State.s0021, SmokeLabel.l0002 => some (State.s0052, -124)
  | State.s0022, SmokeLabel.l0011 => some (State.s0042, 103)
  | State.s0022, SmokeLabel.l0012 => some (State.s0051, -10)
  | State.s0023, SmokeLabel.l0003 => some (State.s0053, 96)
  | State.s0024, SmokeLabel.l0003 => some (State.s0055, 96)
  | State.s0025, SmokeLabel.l0003 => some (State.s0056, 96)
  | State.s0026, SmokeLabel.l0003 => some (State.s0057, 96)
  | State.s0027, SmokeLabel.l0003 => some (State.s0058, 96)
  | State.s0028, SmokeLabel.l0003 => some (State.s0059, 96)
  | State.s0029, SmokeLabel.l0003 => some (State.s0060, 96)
  | State.s0030, SmokeLabel.l0003 => some (State.s0061, 96)
  | State.s0031, SmokeLabel.l0003 => some (State.s0063, 96)
  | State.s0032, SmokeLabel.l0003 => some (State.s0064, 96)
  | State.s0033, SmokeLabel.l0003 => some (State.s0065, 96)
  | State.s0034, SmokeLabel.l0003 => some (State.s0067, 96)
  | State.s0035, SmokeLabel.l0003 => some (State.s0068, 96)
  | State.s0036, SmokeLabel.l0003 => some (State.s0069, 96)
  | State.s0037, SmokeLabel.l0013 => some (State.s0054, 114)
  | State.s0038, SmokeLabel.l0013 => some (State.s0062, 114)
  | State.s0039, SmokeLabel.l0013 => some (State.s0066, 114)
  | State.s0040, SmokeLabel.l0000 => some (State.s0073, -124)
  | State.s0041, SmokeLabel.l0000 => some (State.s0075, -124)
  | State.s0042, SmokeLabel.l0012 => some (State.s0070, -10)
  | State.s0043, SmokeLabel.l0012 => some (State.s0071, -10)
  | State.s0044, SmokeLabel.l0012 => some (State.s0072, -10)
  | State.s0045, SmokeLabel.l0003 => some (State.s0076, -124)
  | State.s0046, SmokeLabel.l0003 => some (State.s0078, -124)
  | State.s0047, SmokeLabel.l0003 => some (State.s0079, -124)
  | State.s0048, SmokeLabel.l0003 => some (State.s0080, -124)
  | State.s0049, SmokeLabel.l0003 => some (State.s0081, -124)
  | State.s0050, SmokeLabel.l0003 => some (State.s0083, -124)
  | State.s0051, SmokeLabel.l0011 => some (State.s0070, 103)
  | State.s0051, SmokeLabel.l0013 => some (State.s0077, -10)
  | State.s0052, SmokeLabel.l0011 => some (State.s0074, 103)
  | State.s0052, SmokeLabel.l0013 => some (State.s0082, -10)
  | State.s0053, SmokeLabel.l0001 => some (State.s0085, -124)
  | State.s0054, SmokeLabel.l0001 => some (State.s0088, -124)
  | State.s0055, SmokeLabel.l0001 => some (State.s0090, -124)
  | State.s0056, SmokeLabel.l0001 => some (State.s0092, -124)
  | State.s0057, SmokeLabel.l0001 => some (State.s0094, -124)
  | State.s0058, SmokeLabel.l0001 => some (State.s0096, -124)
  | State.s0059, SmokeLabel.l0001 => some (State.s0097, -124)
  | State.s0060, SmokeLabel.l0001 => some (State.s0098, -124)
  | State.s0061, SmokeLabel.l0001 => some (State.s0099, -124)
  | State.s0062, SmokeLabel.l0001 => some (State.s0101, -124)
  | State.s0063, SmokeLabel.l0001 => some (State.s0102, -124)
  | State.s0064, SmokeLabel.l0001 => some (State.s0103, -124)
  | State.s0065, SmokeLabel.l0001 => some (State.s0104, -124)
  | State.s0066, SmokeLabel.l0001 => some (State.s0105, -124)
  | State.s0067, SmokeLabel.l0001 => some (State.s0106, -124)
  | State.s0068, SmokeLabel.l0001 => some (State.s0111, -124)
  | State.s0069, SmokeLabel.l0001 => some (State.s0112, -124)
  | State.s0070, SmokeLabel.l0013 => some (State.s0086, -10)
  | State.s0071, SmokeLabel.l0013 => some (State.s0087, -10)
  | State.s0072, SmokeLabel.l0013 => some (State.s0100, -10)
  | State.s0073, SmokeLabel.l0013 => some (State.s0107, -10)
  | State.s0074, SmokeLabel.l0013 => some (State.s0108, -10)
  | State.s0075, SmokeLabel.l0013 => some (State.s0109, -10)
  | State.s0076, SmokeLabel.l0011 => some (State.s0084, 103)
  | State.s0077, SmokeLabel.l0011 => some (State.s0086, 103)
  | State.s0078, SmokeLabel.l0011 => some (State.s0089, 103)
  | State.s0079, SmokeLabel.l0011 => some (State.s0091, 103)
  | State.s0080, SmokeLabel.l0011 => some (State.s0093, 103)
  | State.s0081, SmokeLabel.l0011 => some (State.s0095, 103)
  | State.s0082, SmokeLabel.l0011 => some (State.s0108, 103)
  | State.s0083, SmokeLabel.l0011 => some (State.s0110, 103)
  | State.s0084, SmokeLabel.l0009 => some (State.s0113, -73)
  | State.s0085, SmokeLabel.l0009 => some (State.s0114, -73)
  | State.s0086, SmokeLabel.l0009 => some (State.s0115, -73)
  | State.s0087, SmokeLabel.l0009 => some (State.s0116, -73)
  | State.s0088, SmokeLabel.l0009 => some (State.s0117, -73)
  | State.s0089, SmokeLabel.l0009 => some (State.s0118, -73)
  | State.s0090, SmokeLabel.l0009 => some (State.s0119, -73)
  | State.s0091, SmokeLabel.l0009 => some (State.s0120, -73)
  | State.s0092, SmokeLabel.l0009 => some (State.s0121, -73)
  | State.s0093, SmokeLabel.l0009 => some (State.s0122, -73)
  | State.s0094, SmokeLabel.l0009 => some (State.s0123, -73)
  | State.s0095, SmokeLabel.l0009 => some (State.s0124, -73)
  | State.s0096, SmokeLabel.l0009 => some (State.s0125, -73)
  | State.s0097, SmokeLabel.l0009 => some (State.s0126, -73)
  | State.s0098, SmokeLabel.l0009 => some (State.s0127, -73)
  | State.s0099, SmokeLabel.l0009 => some (State.s0128, -73)
  | State.s0100, SmokeLabel.l0009 => some (State.s0129, -73)
  | State.s0101, SmokeLabel.l0009 => some (State.s0130, -73)
  | State.s0102, SmokeLabel.l0009 => some (State.s0131, -73)
  | State.s0103, SmokeLabel.l0009 => some (State.s0132, -73)
  | State.s0104, SmokeLabel.l0009 => some (State.s0133, -73)
  | State.s0105, SmokeLabel.l0009 => some (State.s0134, -73)
  | State.s0106, SmokeLabel.l0009 => some (State.s0135, -73)
  | State.s0107, SmokeLabel.l0009 => some (State.s0136, -73)
  | State.s0108, SmokeLabel.l0009 => some (State.s0137, -73)
  | State.s0109, SmokeLabel.l0009 => some (State.s0138, -73)
  | State.s0110, SmokeLabel.l0009 => some (State.s0139, -73)
  | State.s0111, SmokeLabel.l0009 => some (State.s0140, -73)
  | State.s0112, SmokeLabel.l0009 => some (State.s0141, -73)
  | State.s0142, SmokeLabel.l0010 => some (State.s0143, -73)
  | State.s0143, SmokeLabel.l0002 => some (State.s0146, -124)
  | State.s0143, SmokeLabel.l0011 => some (State.s0144, -73)
  | State.s0143, SmokeLabel.l0012 => some (State.s0145, -10)
  | State.s0144, SmokeLabel.l0000 => some (State.s0148, -124)
  | State.s0144, SmokeLabel.l0012 => some (State.s0147, -10)
  | State.s0145, SmokeLabel.l0003 => some (State.s0151, -124)
  | State.s0145, SmokeLabel.l0011 => some (State.s0147, -73)
  | State.s0145, SmokeLabel.l0013 => some (State.s0149, -10)
  | State.s0146, SmokeLabel.l0006 => some (State.s0152, 96)
  | State.s0146, SmokeLabel.l0012 => some (State.s0150, 114)
  | State.s0147, SmokeLabel.l0001 => some (State.s0155, -124)
  | State.s0147, SmokeLabel.l0013 => some (State.s0153, -10)
  | State.s0148, SmokeLabel.l0004 => some (State.s0156, 96)
  | State.s0148, SmokeLabel.l0012 => some (State.s0154, 114)
  | State.s0149, SmokeLabel.l0002 => some (State.s0158, -124)
  | State.s0149, SmokeLabel.l0011 => some (State.s0153, -73)
  | State.s0150, SmokeLabel.l0013 => some (State.s0157, 114)
  | State.s0151, SmokeLabel.l0007 => some (State.s0160, 96)
  | State.s0152, SmokeLabel.l0004 => some (State.s0161, -36)
  | State.s0152, SmokeLabel.l0013 => some (State.s0159, -18)
  | State.s0153, SmokeLabel.l0000 => some (State.s0163, -124)
  | State.s0154, SmokeLabel.l0005 => some (State.s0165, 96)
  | State.s0154, SmokeLabel.l0013 => some (State.s0162, 114)
  | State.s0155, SmokeLabel.l0005 => some (State.s0166, 96)
  | State.s0156, SmokeLabel.l0006 => some (State.s0167, -36)
  | State.s0156, SmokeLabel.l0013 => some (State.s0164, -18)
  | State.s0157, SmokeLabel.l0006 => some (State.s0169, 96)
  | State.s0158, SmokeLabel.l0006 => some (State.s0170, 96)
  | State.s0159, SmokeLabel.l0012 => some (State.s0168, -18)
  | State.s0160, SmokeLabel.l0005 => some (State.s0172, -36)
  | State.s0161, SmokeLabel.l0007 => some (State.s0173, -144)
  | State.s0161, SmokeLabel.l0013 => some (State.s0171, -54)
  | State.s0162, SmokeLabel.l0004 => some (State.s0175, 96)
  | State.s0163, SmokeLabel.l0004 => some (State.s0176, 96)
  | State.s0164, SmokeLabel.l0012 => some (State.s0174, -18)
  | State.s0165, SmokeLabel.l0007 => some (State.s0178, -36)
  | State.s0166, SmokeLabel.l0007 => some (State.s0179, -36)
  | State.s0167, SmokeLabel.l0005 => some (State.s0180, -144)
  | State.s0167, SmokeLabel.l0013 => some (State.s0177, -54)
  | State.s0168, SmokeLabel.l0004 => some (State.s0182, -36)
  | State.s0169, SmokeLabel.l0004 => some (State.s0183, -36)
  | State.s0170, SmokeLabel.l0004 => some (State.s0184, -36)
  | State.s0171, SmokeLabel.l0012 => some (State.s0181, -54)
  | State.s0172, SmokeLabel.l0006 => some (State.s0186, -144)
  | State.s0173, SmokeLabel.l0000 => some (State.s0187, -144)
  | State.s0173, SmokeLabel.l0013 => some (State.s0185, 90)
  | State.s0174, SmokeLabel.l0006 => some (State.s0189, -36)
  | State.s0175, SmokeLabel.l0006 => some (State.s0190, -36)
  | State.s0176, SmokeLabel.l0006 => some (State.s0191, -36)
  | State.s0177, SmokeLabel.l0012 => some (State.s0188, -54)
  | State.s0178, SmokeLabel.l0004 => some (State.s0193, -144)
  | State.s0179, SmokeLabel.l0004 => some (State.s0194, -144)
  | State.s0180, SmokeLabel.l0002 => some (State.s0195, -144)
  | State.s0180, SmokeLabel.l0013 => some (State.s0192, 90)
  | State.s0181, SmokeLabel.l0007 => some (State.s0197, -144)
  | State.s0182, SmokeLabel.l0007 => some (State.s0198, -144)
  | State.s0183, SmokeLabel.l0007 => some (State.s0199, -144)
  | State.s0184, SmokeLabel.l0007 => some (State.s0200, -144)
  | State.s0185, SmokeLabel.l0012 => some (State.s0196, 90)
  | State.s0186, SmokeLabel.l0001 => some (State.s0202, -144)
  | State.s0187, SmokeLabel.l0005 => some (State.s0203, -36)
  | State.s0187, SmokeLabel.l0013 => some (State.s0201, -54)
  | State.s0188, SmokeLabel.l0005 => some (State.s0205, -144)
  | State.s0189, SmokeLabel.l0005 => some (State.s0206, -144)
  | State.s0190, SmokeLabel.l0005 => some (State.s0207, -144)
  | State.s0191, SmokeLabel.l0005 => some (State.s0208, -144)
  | State.s0192, SmokeLabel.l0012 => some (State.s0204, 90)
  | State.s0193, SmokeLabel.l0003 => some (State.s0210, -144)
  | State.s0194, SmokeLabel.l0003 => some (State.s0211, -144)
  | State.s0195, SmokeLabel.l0007 => some (State.s0213, -36)
  | State.s0195, SmokeLabel.l0013 => some (State.s0209, -54)
  | State.s0196, SmokeLabel.l0000 => some (State.s0215, -144)
  | State.s0197, SmokeLabel.l0000 => some (State.s0216, -144)
  | State.s0198, SmokeLabel.l0000 => some (State.s0217, -144)
  | State.s0199, SmokeLabel.l0000 => some (State.s0218, -144)
  | State.s0200, SmokeLabel.l0000 => some (State.s0219, -144)
  | State.s0201, SmokeLabel.l0012 => some (State.s0214, -54)
  | State.s0202, SmokeLabel.l0004 => some (State.s0221, -36)
  | State.s0203, SmokeLabel.l0001 => some (State.s0222, 96)
  | State.s0203, SmokeLabel.l0011 => some (State.s0212, -117)
  | State.s0203, SmokeLabel.l0013 => some (State.s0220, -18)
  | State.s0204, SmokeLabel.l0002 => some (State.s0002, -144)
  | State.s0205, SmokeLabel.l0002 => some (State.s0003, -144)
  | State.s0206, SmokeLabel.l0002 => some (State.s0004, -144)
  | State.s0207, SmokeLabel.l0002 => some (State.s0005, -144)
  | State.s0208, SmokeLabel.l0002 => some (State.s0006, -144)
  | State.s0209, SmokeLabel.l0012 => some (State.s0001, -54)
  | State.s0210, SmokeLabel.l0006 => some (State.s0009, -36)
  | State.s0211, SmokeLabel.l0006 => some (State.s0011, -36)
  | State.s0212, SmokeLabel.l0003 => some (State.s0012, 96)
  | State.s0212, SmokeLabel.l0013 => some (State.s0007, -18)
  | State.s0213, SmokeLabel.l0003 => some (State.s0013, 96)
  | State.s0213, SmokeLabel.l0013 => some (State.s0008, -18)
  | State.s0214, SmokeLabel.l0005 => some (State.s0015, -36)
  | State.s0215, SmokeLabel.l0005 => some (State.s0016, -36)
  | State.s0216, SmokeLabel.l0005 => some (State.s0017, -36)
  | State.s0217, SmokeLabel.l0005 => some (State.s0018, -36)
  | State.s0218, SmokeLabel.l0005 => some (State.s0019, -36)
  | State.s0219, SmokeLabel.l0005 => some (State.s0020, -36)
  | State.s0220, SmokeLabel.l0011 => some (State.s0007, -117)
  | State.s0220, SmokeLabel.l0012 => some (State.s0014, -18)
  | State.s0221, SmokeLabel.l0000 => some (State.s0021, 96)
  | State.s0221, SmokeLabel.l0011 => some (State.s0010, -117)
  | State.s0222, SmokeLabel.l0003 => some (State.s0022, -124)
  | _, _ => none

private def SmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=
  smokeNext s label = some (t, gain)

private theorem SmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    SmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by
  intro h
  revert t gain
  cases s <;> cases label <;> intro t gain h <;> simp [SmokeStepEval, smokeNext] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    decide

private theorem SmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    smokeNext s label = some (t, gain) -> SmokeStepEval s label t gain := by
  intro h
  exact h

-- shared prefix length: 2
private def commonPrefixFinalState : State := State.s0143

private def commonPrefixLabels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010]

private def commonPrefixGain : Int :=
  edge0000.gain + (edge0124.gain + (0))

private theorem commonPrefixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState commonPrefixFinalState commonPrefixLabels commonPrefixGain := by
  unfold commonPrefixLabels commonPrefixGain rootState commonPrefixFinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  exact BellmanLabelStepRun.nil State.s0143

-- label-prefix trie nodes, including root: 270
private def trieNode0000State : State := rootState
private def trieNode0000Labels : List SmokeLabel := []
private def trieNode0000Gain : Int := 0
private theorem trieNode0000Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0000State
      trieNode0000Labels trieNode0000Gain := by
  unfold trieNode0000State trieNode0000Labels trieNode0000Gain
  exact BellmanLabelStepRun.nil rootState

private def trieNode0001State : State := edge0000.dst
private def trieNode0001StepLabels : List SmokeLabel :=
  [SmokeLabel.l0008]
private def trieNode0001StepGain : Int := edge0000.gain + (0)
private def trieNode0001Labels : List SmokeLabel :=
  trieNode0000Labels ++ trieNode0001StepLabels
private def trieNode0001Gain : Int :=
  trieNode0000Gain + trieNode0001StepGain

private theorem trieNode0001StepRun :
    BellmanLabelStepRun SmokeStep trieNode0000State trieNode0001State
      trieNode0001StepLabels trieNode0001StepGain := by
  unfold trieNode0000State trieNode0001State
  unfold trieNode0001StepLabels trieNode0001StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  exact BellmanLabelStepRun.nil trieNode0001State

private theorem trieNode0001Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0001State
      trieNode0001Labels trieNode0001Gain := by
  unfold trieNode0001Labels trieNode0001Gain
  exact BellmanLabelStepRun.append trieNode0000Run trieNode0001StepRun

private def trieNode0002State : State := edge0124.dst
private def trieNode0002StepLabels : List SmokeLabel :=
  [SmokeLabel.l0010]
private def trieNode0002StepGain : Int := edge0124.gain + (0)
private def trieNode0002Labels : List SmokeLabel :=
  trieNode0001Labels ++ trieNode0002StepLabels
private def trieNode0002Gain : Int :=
  trieNode0001Gain + trieNode0002StepGain

private theorem trieNode0002StepRun :
    BellmanLabelStepRun SmokeStep trieNode0001State trieNode0002State
      trieNode0002StepLabels trieNode0002StepGain := by
  unfold trieNode0001State trieNode0002State
  unfold trieNode0002StepLabels trieNode0002StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  exact BellmanLabelStepRun.nil trieNode0002State

private theorem trieNode0002Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0002State
      trieNode0002Labels trieNode0002Gain := by
  unfold trieNode0002Labels trieNode0002Gain
  exact BellmanLabelStepRun.append trieNode0001Run trieNode0002StepRun

private def trieNode0003State : State := edge0125.dst
private def trieNode0003StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0003StepGain : Int := edge0125.gain + (0)
private def trieNode0003Labels : List SmokeLabel :=
  trieNode0002Labels ++ trieNode0003StepLabels
private def trieNode0003Gain : Int :=
  trieNode0002Gain + trieNode0003StepGain

private theorem trieNode0003StepRun :
    BellmanLabelStepRun SmokeStep trieNode0002State trieNode0003State
      trieNode0003StepLabels trieNode0003StepGain := by
  unfold trieNode0002State trieNode0003State
  unfold trieNode0003StepLabels trieNode0003StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  exact BellmanLabelStepRun.nil trieNode0003State

private theorem trieNode0003Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0003State
      trieNode0003Labels trieNode0003Gain := by
  unfold trieNode0003Labels trieNode0003Gain
  exact BellmanLabelStepRun.append trieNode0002Run trieNode0003StepRun

private def trieNode0004State : State := edge0128.dst
private def trieNode0004StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0004StepGain : Int := edge0128.gain + (0)
private def trieNode0004Labels : List SmokeLabel :=
  trieNode0003Labels ++ trieNode0004StepLabels
private def trieNode0004Gain : Int :=
  trieNode0003Gain + trieNode0004StepGain

private theorem trieNode0004StepRun :
    BellmanLabelStepRun SmokeStep trieNode0003State trieNode0004State
      trieNode0004StepLabels trieNode0004StepGain := by
  unfold trieNode0003State trieNode0004State
  unfold trieNode0004StepLabels trieNode0004StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0128
  exact BellmanLabelStepRun.nil trieNode0004State

private theorem trieNode0004Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0004State
      trieNode0004Labels trieNode0004Gain := by
  unfold trieNode0004Labels trieNode0004Gain
  exact BellmanLabelStepRun.append trieNode0003Run trieNode0004StepRun

private def trieNode0005State : State := edge0135.dst
private def trieNode0005StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0005StepGain : Int := edge0135.gain + (0)
private def trieNode0005Labels : List SmokeLabel :=
  trieNode0004Labels ++ trieNode0005StepLabels
private def trieNode0005Gain : Int :=
  trieNode0004Gain + trieNode0005StepGain

private theorem trieNode0005StepRun :
    BellmanLabelStepRun SmokeStep trieNode0004State trieNode0005State
      trieNode0005StepLabels trieNode0005StepGain := by
  unfold trieNode0004State trieNode0005State
  unfold trieNode0005StepLabels trieNode0005StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  exact BellmanLabelStepRun.nil trieNode0005State

private theorem trieNode0005Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0005State
      trieNode0005Labels trieNode0005Gain := by
  unfold trieNode0005Labels trieNode0005Gain
  exact BellmanLabelStepRun.append trieNode0004Run trieNode0005StepRun

private def trieNode0006State : State := edge0145.dst
private def trieNode0006StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0006StepGain : Int := edge0145.gain + (0)
private def trieNode0006Labels : List SmokeLabel :=
  trieNode0005Labels ++ trieNode0006StepLabels
private def trieNode0006Gain : Int :=
  trieNode0005Gain + trieNode0006StepGain

private theorem trieNode0006StepRun :
    BellmanLabelStepRun SmokeStep trieNode0005State trieNode0006State
      trieNode0006StepLabels trieNode0006StepGain := by
  unfold trieNode0005State trieNode0006State
  unfold trieNode0006StepLabels trieNode0006StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  exact BellmanLabelStepRun.nil trieNode0006State

private theorem trieNode0006Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0006State
      trieNode0006Labels trieNode0006Gain := by
  unfold trieNode0006Labels trieNode0006Gain
  exact BellmanLabelStepRun.append trieNode0005Run trieNode0006StepRun

private def trieNode0007State : State := edge0158.dst
private def trieNode0007StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0007StepGain : Int := edge0158.gain + (0)
private def trieNode0007Labels : List SmokeLabel :=
  trieNode0006Labels ++ trieNode0007StepLabels
private def trieNode0007Gain : Int :=
  trieNode0006Gain + trieNode0007StepGain

private theorem trieNode0007StepRun :
    BellmanLabelStepRun SmokeStep trieNode0006State trieNode0007State
      trieNode0007StepLabels trieNode0007StepGain := by
  unfold trieNode0006State trieNode0007State
  unfold trieNode0007StepLabels trieNode0007StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  exact BellmanLabelStepRun.nil trieNode0007State

private theorem trieNode0007Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0007State
      trieNode0007Labels trieNode0007Gain := by
  unfold trieNode0007Labels trieNode0007Gain
  exact BellmanLabelStepRun.append trieNode0006Run trieNode0007StepRun

private def trieNode0008State : State := edge0173.dst
private def trieNode0008StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0008StepGain : Int := edge0173.gain + (0)
private def trieNode0008Labels : List SmokeLabel :=
  trieNode0007Labels ++ trieNode0008StepLabels
private def trieNode0008Gain : Int :=
  trieNode0007Gain + trieNode0008StepGain

private theorem trieNode0008StepRun :
    BellmanLabelStepRun SmokeStep trieNode0007State trieNode0008State
      trieNode0008StepLabels trieNode0008StepGain := by
  unfold trieNode0007State trieNode0008State
  unfold trieNode0008StepLabels trieNode0008StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  exact BellmanLabelStepRun.nil trieNode0008State

private theorem trieNode0008Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0008State
      trieNode0008Labels trieNode0008Gain := by
  unfold trieNode0008Labels trieNode0008Gain
  exact BellmanLabelStepRun.append trieNode0007Run trieNode0008StepRun

private def trieNode0009State : State := edge0190.dst
private def trieNode0009StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0009StepGain : Int := edge0190.gain + (0)
private def trieNode0009Labels : List SmokeLabel :=
  trieNode0008Labels ++ trieNode0009StepLabels
private def trieNode0009Gain : Int :=
  trieNode0008Gain + trieNode0009StepGain

private theorem trieNode0009StepRun :
    BellmanLabelStepRun SmokeStep trieNode0008State trieNode0009State
      trieNode0009StepLabels trieNode0009StepGain := by
  unfold trieNode0008State trieNode0009State
  unfold trieNode0009StepLabels trieNode0009StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  exact BellmanLabelStepRun.nil trieNode0009State

private theorem trieNode0009Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0009State
      trieNode0009Labels trieNode0009Gain := by
  unfold trieNode0009Labels trieNode0009Gain
  exact BellmanLabelStepRun.append trieNode0008Run trieNode0009StepRun

private def trieNode0010State : State := edge0210.dst
private def trieNode0010StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0010StepGain : Int := edge0210.gain + (0)
private def trieNode0010Labels : List SmokeLabel :=
  trieNode0009Labels ++ trieNode0010StepLabels
private def trieNode0010Gain : Int :=
  trieNode0009Gain + trieNode0010StepGain

private theorem trieNode0010StepRun :
    BellmanLabelStepRun SmokeStep trieNode0009State trieNode0010State
      trieNode0010StepLabels trieNode0010StepGain := by
  unfold trieNode0009State trieNode0010State
  unfold trieNode0010StepLabels trieNode0010StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  exact BellmanLabelStepRun.nil trieNode0010State

private theorem trieNode0010Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0010State
      trieNode0010Labels trieNode0010Gain := by
  unfold trieNode0010Labels trieNode0010Gain
  exact BellmanLabelStepRun.append trieNode0009Run trieNode0010StepRun

private def trieNode0011State : State := edge0006.dst
private def trieNode0011StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0011StepGain : Int := edge0006.gain + (0)
private def trieNode0011Labels : List SmokeLabel :=
  trieNode0010Labels ++ trieNode0011StepLabels
private def trieNode0011Gain : Int :=
  trieNode0010Gain + trieNode0011StepGain

private theorem trieNode0011StepRun :
    BellmanLabelStepRun SmokeStep trieNode0010State trieNode0011State
      trieNode0011StepLabels trieNode0011StepGain := by
  unfold trieNode0010State trieNode0011State
  unfold trieNode0011StepLabels trieNode0011StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  exact BellmanLabelStepRun.nil trieNode0011State

private theorem trieNode0011Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0011State
      trieNode0011Labels trieNode0011Gain := by
  unfold trieNode0011Labels trieNode0011Gain
  exact BellmanLabelStepRun.append trieNode0010Run trieNode0011StepRun

private def trieNode0012State : State := edge0045.dst
private def trieNode0012StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0012StepGain : Int := edge0045.gain + (0)
private def trieNode0012Labels : List SmokeLabel :=
  trieNode0011Labels ++ trieNode0012StepLabels
private def trieNode0012Gain : Int :=
  trieNode0011Gain + trieNode0012StepGain

private theorem trieNode0012StepRun :
    BellmanLabelStepRun SmokeStep trieNode0011State trieNode0012State
      trieNode0012StepLabels trieNode0012StepGain := by
  unfold trieNode0011State trieNode0012State
  unfold trieNode0012StepLabels trieNode0012StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  exact BellmanLabelStepRun.nil trieNode0012State

private theorem trieNode0012Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0012State
      trieNode0012Labels trieNode0012Gain := by
  unfold trieNode0012Labels trieNode0012Gain
  exact BellmanLabelStepRun.append trieNode0011Run trieNode0012StepRun

private def trieNode0013State : State := edge0080.dst
private def trieNode0013StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0013StepGain : Int := edge0080.gain + (0)
private def trieNode0013Labels : List SmokeLabel :=
  trieNode0012Labels ++ trieNode0013StepLabels
private def trieNode0013Gain : Int :=
  trieNode0012Gain + trieNode0013StepGain

private theorem trieNode0013StepRun :
    BellmanLabelStepRun SmokeStep trieNode0012State trieNode0013State
      trieNode0013StepLabels trieNode0013StepGain := by
  unfold trieNode0012State trieNode0013State
  unfold trieNode0013StepLabels trieNode0013StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  exact BellmanLabelStepRun.nil trieNode0013State

private theorem trieNode0013Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0013State
      trieNode0013Labels trieNode0013Gain := by
  unfold trieNode0013Labels trieNode0013Gain
  exact BellmanLabelStepRun.append trieNode0012Run trieNode0013StepRun

private def trieNode0014State : State := edge0123.dst
private def trieNode0014StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0014StepGain : Int := edge0123.gain + (0)
private def trieNode0014Labels : List SmokeLabel :=
  trieNode0013Labels ++ trieNode0014StepLabels
private def trieNode0014Gain : Int :=
  trieNode0013Gain + trieNode0014StepGain

private theorem trieNode0014StepRun :
    BellmanLabelStepRun SmokeStep trieNode0013State trieNode0014State
      trieNode0014StepLabels trieNode0014StepGain := by
  unfold trieNode0013State trieNode0014State
  unfold trieNode0014StepLabels trieNode0014StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil trieNode0014State

private theorem trieNode0014Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0014State
      trieNode0014Labels trieNode0014Gain := by
  unfold trieNode0014Labels trieNode0014Gain
  exact BellmanLabelStepRun.append trieNode0013Run trieNode0014StepRun

private def trieNode0015State : State := edge0136.dst
private def trieNode0015StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0015StepGain : Int := edge0136.gain + (0)
private def trieNode0015Labels : List SmokeLabel :=
  trieNode0004Labels ++ trieNode0015StepLabels
private def trieNode0015Gain : Int :=
  trieNode0004Gain + trieNode0015StepGain

private theorem trieNode0015StepRun :
    BellmanLabelStepRun SmokeStep trieNode0004State trieNode0015State
      trieNode0015StepLabels trieNode0015StepGain := by
  unfold trieNode0004State trieNode0015State
  unfold trieNode0015StepLabels trieNode0015StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  exact BellmanLabelStepRun.nil trieNode0015State

private theorem trieNode0015Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0015State
      trieNode0015Labels trieNode0015Gain := by
  unfold trieNode0015Labels trieNode0015Gain
  exact BellmanLabelStepRun.append trieNode0004Run trieNode0015StepRun

private def trieNode0016State : State := edge0148.dst
private def trieNode0016StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0016StepGain : Int := edge0148.gain + (0)
private def trieNode0016Labels : List SmokeLabel :=
  trieNode0015Labels ++ trieNode0016StepLabels
private def trieNode0016Gain : Int :=
  trieNode0015Gain + trieNode0016StepGain

private theorem trieNode0016StepRun :
    BellmanLabelStepRun SmokeStep trieNode0015State trieNode0016State
      trieNode0016StepLabels trieNode0016StepGain := by
  unfold trieNode0015State trieNode0016State
  unfold trieNode0016StepLabels trieNode0016StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  exact BellmanLabelStepRun.nil trieNode0016State

private theorem trieNode0016Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0016State
      trieNode0016Labels trieNode0016Gain := by
  unfold trieNode0016Labels trieNode0016Gain
  exact BellmanLabelStepRun.append trieNode0015Run trieNode0016StepRun

private def trieNode0017State : State := edge0161.dst
private def trieNode0017StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0017StepGain : Int := edge0161.gain + (0)
private def trieNode0017Labels : List SmokeLabel :=
  trieNode0016Labels ++ trieNode0017StepLabels
private def trieNode0017Gain : Int :=
  trieNode0016Gain + trieNode0017StepGain

private theorem trieNode0017StepRun :
    BellmanLabelStepRun SmokeStep trieNode0016State trieNode0017State
      trieNode0017StepLabels trieNode0017StepGain := by
  unfold trieNode0016State trieNode0017State
  unfold trieNode0017StepLabels trieNode0017StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  exact BellmanLabelStepRun.nil trieNode0017State

private theorem trieNode0017Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0017State
      trieNode0017Labels trieNode0017Gain := by
  unfold trieNode0017Labels trieNode0017Gain
  exact BellmanLabelStepRun.append trieNode0016Run trieNode0017StepRun

private def trieNode0018State : State := edge0176.dst
private def trieNode0018StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0018StepGain : Int := edge0176.gain + (0)
private def trieNode0018Labels : List SmokeLabel :=
  trieNode0017Labels ++ trieNode0018StepLabels
private def trieNode0018Gain : Int :=
  trieNode0017Gain + trieNode0018StepGain

private theorem trieNode0018StepRun :
    BellmanLabelStepRun SmokeStep trieNode0017State trieNode0018State
      trieNode0018StepLabels trieNode0018StepGain := by
  unfold trieNode0017State trieNode0018State
  unfold trieNode0018StepLabels trieNode0018StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  exact BellmanLabelStepRun.nil trieNode0018State

private theorem trieNode0018Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0018State
      trieNode0018Labels trieNode0018Gain := by
  unfold trieNode0018Labels trieNode0018Gain
  exact BellmanLabelStepRun.append trieNode0017Run trieNode0018StepRun

private def trieNode0019State : State := edge0193.dst
private def trieNode0019StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0019StepGain : Int := edge0193.gain + (0)
private def trieNode0019Labels : List SmokeLabel :=
  trieNode0018Labels ++ trieNode0019StepLabels
private def trieNode0019Gain : Int :=
  trieNode0018Gain + trieNode0019StepGain

private theorem trieNode0019StepRun :
    BellmanLabelStepRun SmokeStep trieNode0018State trieNode0019State
      trieNode0019StepLabels trieNode0019StepGain := by
  unfold trieNode0018State trieNode0019State
  unfold trieNode0019StepLabels trieNode0019StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  exact BellmanLabelStepRun.nil trieNode0019State

private theorem trieNode0019Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0019State
      trieNode0019Labels trieNode0019Gain := by
  unfold trieNode0019Labels trieNode0019Gain
  exact BellmanLabelStepRun.append trieNode0018Run trieNode0019StepRun

private def trieNode0020State : State := edge0213.dst
private def trieNode0020StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0020StepGain : Int := edge0213.gain + (0)
private def trieNode0020Labels : List SmokeLabel :=
  trieNode0019Labels ++ trieNode0020StepLabels
private def trieNode0020Gain : Int :=
  trieNode0019Gain + trieNode0020StepGain

private theorem trieNode0020StepRun :
    BellmanLabelStepRun SmokeStep trieNode0019State trieNode0020State
      trieNode0020StepLabels trieNode0020StepGain := by
  unfold trieNode0019State trieNode0020State
  unfold trieNode0020StepLabels trieNode0020StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  exact BellmanLabelStepRun.nil trieNode0020State

private theorem trieNode0020Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0020State
      trieNode0020Labels trieNode0020Gain := by
  unfold trieNode0020Labels trieNode0020Gain
  exact BellmanLabelStepRun.append trieNode0019Run trieNode0020StepRun

private def trieNode0021State : State := edge0011.dst
private def trieNode0021StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0021StepGain : Int := edge0011.gain + (0)
private def trieNode0021Labels : List SmokeLabel :=
  trieNode0020Labels ++ trieNode0021StepLabels
private def trieNode0021Gain : Int :=
  trieNode0020Gain + trieNode0021StepGain

private theorem trieNode0021StepRun :
    BellmanLabelStepRun SmokeStep trieNode0020State trieNode0021State
      trieNode0021StepLabels trieNode0021StepGain := by
  unfold trieNode0020State trieNode0021State
  unfold trieNode0021StepLabels trieNode0021StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  exact BellmanLabelStepRun.nil trieNode0021State

private theorem trieNode0021Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0021State
      trieNode0021Labels trieNode0021Gain := by
  unfold trieNode0021Labels trieNode0021Gain
  exact BellmanLabelStepRun.append trieNode0020Run trieNode0021StepRun

private def trieNode0022State : State := edge0050.dst
private def trieNode0022StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0022StepGain : Int := edge0050.gain + (0)
private def trieNode0022Labels : List SmokeLabel :=
  trieNode0021Labels ++ trieNode0022StepLabels
private def trieNode0022Gain : Int :=
  trieNode0021Gain + trieNode0022StepGain

private theorem trieNode0022StepRun :
    BellmanLabelStepRun SmokeStep trieNode0021State trieNode0022State
      trieNode0022StepLabels trieNode0022StepGain := by
  unfold trieNode0021State trieNode0022State
  unfold trieNode0022StepLabels trieNode0022StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  exact BellmanLabelStepRun.nil trieNode0022State

private theorem trieNode0022Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0022State
      trieNode0022Labels trieNode0022Gain := by
  unfold trieNode0022Labels trieNode0022Gain
  exact BellmanLabelStepRun.append trieNode0021Run trieNode0022StepRun

private def trieNode0023State : State := edge0086.dst
private def trieNode0023StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0023StepGain : Int := edge0086.gain + (0)
private def trieNode0023Labels : List SmokeLabel :=
  trieNode0022Labels ++ trieNode0023StepLabels
private def trieNode0023Gain : Int :=
  trieNode0022Gain + trieNode0023StepGain

private theorem trieNode0023StepRun :
    BellmanLabelStepRun SmokeStep trieNode0022State trieNode0023State
      trieNode0023StepLabels trieNode0023StepGain := by
  unfold trieNode0022State trieNode0023State
  unfold trieNode0023StepLabels trieNode0023StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  exact BellmanLabelStepRun.nil trieNode0023State

private theorem trieNode0023Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0023State
      trieNode0023Labels trieNode0023Gain := by
  unfold trieNode0023Labels trieNode0023Gain
  exact BellmanLabelStepRun.append trieNode0022Run trieNode0023StepRun

private def trieNode0024State : State := edge0120.dst
private def trieNode0024StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0024StepGain : Int := edge0120.gain + (0)
private def trieNode0024Labels : List SmokeLabel :=
  trieNode0023Labels ++ trieNode0024StepLabels
private def trieNode0024Gain : Int :=
  trieNode0023Gain + trieNode0024StepGain

private theorem trieNode0024StepRun :
    BellmanLabelStepRun SmokeStep trieNode0023State trieNode0024State
      trieNode0024StepLabels trieNode0024StepGain := by
  unfold trieNode0023State trieNode0024State
  unfold trieNode0024StepLabels trieNode0024StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil trieNode0024State

private theorem trieNode0024Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0024State
      trieNode0024Labels trieNode0024Gain := by
  unfold trieNode0024Labels trieNode0024Gain
  exact BellmanLabelStepRun.append trieNode0023Run trieNode0024StepRun

private def trieNode0025State : State := edge0129.dst
private def trieNode0025StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0025StepGain : Int := edge0129.gain + (0)
private def trieNode0025Labels : List SmokeLabel :=
  trieNode0003Labels ++ trieNode0025StepLabels
private def trieNode0025Gain : Int :=
  trieNode0003Gain + trieNode0025StepGain

private theorem trieNode0025StepRun :
    BellmanLabelStepRun SmokeStep trieNode0003State trieNode0025State
      trieNode0025StepLabels trieNode0025StepGain := by
  unfold trieNode0003State trieNode0025State
  unfold trieNode0025StepLabels trieNode0025StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  exact BellmanLabelStepRun.nil trieNode0025State

private theorem trieNode0025Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0025State
      trieNode0025Labels trieNode0025Gain := by
  unfold trieNode0025Labels trieNode0025Gain
  exact BellmanLabelStepRun.append trieNode0003Run trieNode0025StepRun

private def trieNode0026State : State := edge0137.dst
private def trieNode0026StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0026StepGain : Int := edge0137.gain + (0)
private def trieNode0026Labels : List SmokeLabel :=
  trieNode0025Labels ++ trieNode0026StepLabels
private def trieNode0026Gain : Int :=
  trieNode0025Gain + trieNode0026StepGain

private theorem trieNode0026StepRun :
    BellmanLabelStepRun SmokeStep trieNode0025State trieNode0026State
      trieNode0026StepLabels trieNode0026StepGain := by
  unfold trieNode0025State trieNode0026State
  unfold trieNode0026StepLabels trieNode0026StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0137
  exact BellmanLabelStepRun.nil trieNode0026State

private theorem trieNode0026Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0026State
      trieNode0026Labels trieNode0026Gain := by
  unfold trieNode0026Labels trieNode0026Gain
  exact BellmanLabelStepRun.append trieNode0025Run trieNode0026StepRun

private def trieNode0027State : State := edge0146.dst
private def trieNode0027StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0027StepGain : Int := edge0146.gain + (0)
private def trieNode0027Labels : List SmokeLabel :=
  trieNode0026Labels ++ trieNode0027StepLabels
private def trieNode0027Gain : Int :=
  trieNode0026Gain + trieNode0027StepGain

private theorem trieNode0027StepRun :
    BellmanLabelStepRun SmokeStep trieNode0026State trieNode0027State
      trieNode0027StepLabels trieNode0027StepGain := by
  unfold trieNode0026State trieNode0027State
  unfold trieNode0027StepLabels trieNode0027StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0146
  exact BellmanLabelStepRun.nil trieNode0027State

private theorem trieNode0027Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0027State
      trieNode0027Labels trieNode0027Gain := by
  unfold trieNode0027Labels trieNode0027Gain
  exact BellmanLabelStepRun.append trieNode0026Run trieNode0027StepRun

private def trieNode0028State : State := edge0157.dst
private def trieNode0028StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0028StepGain : Int := edge0157.gain + (0)
private def trieNode0028Labels : List SmokeLabel :=
  trieNode0027Labels ++ trieNode0028StepLabels
private def trieNode0028Gain : Int :=
  trieNode0027Gain + trieNode0028StepGain

private theorem trieNode0028StepRun :
    BellmanLabelStepRun SmokeStep trieNode0027State trieNode0028State
      trieNode0028StepLabels trieNode0028StepGain := by
  unfold trieNode0027State trieNode0028State
  unfold trieNode0028StepLabels trieNode0028StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0157
  exact BellmanLabelStepRun.nil trieNode0028State

private theorem trieNode0028Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0028State
      trieNode0028Labels trieNode0028Gain := by
  unfold trieNode0028Labels trieNode0028Gain
  exact BellmanLabelStepRun.append trieNode0027Run trieNode0028StepRun

private def trieNode0029State : State := edge0172.dst
private def trieNode0029StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0029StepGain : Int := edge0172.gain + (0)
private def trieNode0029Labels : List SmokeLabel :=
  trieNode0028Labels ++ trieNode0029StepLabels
private def trieNode0029Gain : Int :=
  trieNode0028Gain + trieNode0029StepGain

private theorem trieNode0029StepRun :
    BellmanLabelStepRun SmokeStep trieNode0028State trieNode0029State
      trieNode0029StepLabels trieNode0029StepGain := by
  unfold trieNode0028State trieNode0029State
  unfold trieNode0029StepLabels trieNode0029StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0172
  exact BellmanLabelStepRun.nil trieNode0029State

private theorem trieNode0029Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0029State
      trieNode0029Labels trieNode0029Gain := by
  unfold trieNode0029Labels trieNode0029Gain
  exact BellmanLabelStepRun.append trieNode0028Run trieNode0029StepRun

private def trieNode0030State : State := edge0189.dst
private def trieNode0030StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0030StepGain : Int := edge0189.gain + (0)
private def trieNode0030Labels : List SmokeLabel :=
  trieNode0029Labels ++ trieNode0030StepLabels
private def trieNode0030Gain : Int :=
  trieNode0029Gain + trieNode0030StepGain

private theorem trieNode0030StepRun :
    BellmanLabelStepRun SmokeStep trieNode0029State trieNode0030State
      trieNode0030StepLabels trieNode0030StepGain := by
  unfold trieNode0029State trieNode0030State
  unfold trieNode0030StepLabels trieNode0030StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0189
  exact BellmanLabelStepRun.nil trieNode0030State

private theorem trieNode0030Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0030State
      trieNode0030Labels trieNode0030Gain := by
  unfold trieNode0030Labels trieNode0030Gain
  exact BellmanLabelStepRun.append trieNode0029Run trieNode0030StepRun

private def trieNode0031State : State := edge0209.dst
private def trieNode0031StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0031StepGain : Int := edge0209.gain + (0)
private def trieNode0031Labels : List SmokeLabel :=
  trieNode0030Labels ++ trieNode0031StepLabels
private def trieNode0031Gain : Int :=
  trieNode0030Gain + trieNode0031StepGain

private theorem trieNode0031StepRun :
    BellmanLabelStepRun SmokeStep trieNode0030State trieNode0031State
      trieNode0031StepLabels trieNode0031StepGain := by
  unfold trieNode0030State trieNode0031State
  unfold trieNode0031StepLabels trieNode0031StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0209
  exact BellmanLabelStepRun.nil trieNode0031State

private theorem trieNode0031Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0031State
      trieNode0031Labels trieNode0031Gain := by
  unfold trieNode0031Labels trieNode0031Gain
  exact BellmanLabelStepRun.append trieNode0030Run trieNode0031StepRun

private def trieNode0032State : State := edge0005.dst
private def trieNode0032StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0032StepGain : Int := edge0005.gain + (0)
private def trieNode0032Labels : List SmokeLabel :=
  trieNode0031Labels ++ trieNode0032StepLabels
private def trieNode0032Gain : Int :=
  trieNode0031Gain + trieNode0032StepGain

private theorem trieNode0032StepRun :
    BellmanLabelStepRun SmokeStep trieNode0031State trieNode0032State
      trieNode0032StepLabels trieNode0032StepGain := by
  unfold trieNode0031State trieNode0032State
  unfold trieNode0032StepLabels trieNode0032StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0005
  exact BellmanLabelStepRun.nil trieNode0032State

private theorem trieNode0032Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0032State
      trieNode0032Labels trieNode0032Gain := by
  unfold trieNode0032Labels trieNode0032Gain
  exact BellmanLabelStepRun.append trieNode0031Run trieNode0032StepRun

private def trieNode0033State : State := edge0043.dst
private def trieNode0033StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0033StepGain : Int := edge0043.gain + (0)
private def trieNode0033Labels : List SmokeLabel :=
  trieNode0032Labels ++ trieNode0033StepLabels
private def trieNode0033Gain : Int :=
  trieNode0032Gain + trieNode0033StepGain

private theorem trieNode0033StepRun :
    BellmanLabelStepRun SmokeStep trieNode0032State trieNode0033State
      trieNode0033StepLabels trieNode0033StepGain := by
  unfold trieNode0032State trieNode0033State
  unfold trieNode0033StepLabels trieNode0033StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0043
  exact BellmanLabelStepRun.nil trieNode0033State

private theorem trieNode0033Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0033State
      trieNode0033Labels trieNode0033Gain := by
  unfold trieNode0033Labels trieNode0033Gain
  exact BellmanLabelStepRun.append trieNode0032Run trieNode0033StepRun

private def trieNode0034State : State := edge0078.dst
private def trieNode0034StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0034StepGain : Int := edge0078.gain + (0)
private def trieNode0034Labels : List SmokeLabel :=
  trieNode0033Labels ++ trieNode0034StepLabels
private def trieNode0034Gain : Int :=
  trieNode0033Gain + trieNode0034StepGain

private theorem trieNode0034StepRun :
    BellmanLabelStepRun SmokeStep trieNode0033State trieNode0034State
      trieNode0034StepLabels trieNode0034StepGain := by
  unfold trieNode0033State trieNode0034State
  unfold trieNode0034StepLabels trieNode0034StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0078
  exact BellmanLabelStepRun.nil trieNode0034State

private theorem trieNode0034Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0034State
      trieNode0034Labels trieNode0034Gain := by
  unfold trieNode0034Labels trieNode0034Gain
  exact BellmanLabelStepRun.append trieNode0033Run trieNode0034StepRun

private def trieNode0035State : State := edge0117.dst
private def trieNode0035StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0035StepGain : Int := edge0117.gain + (0)
private def trieNode0035Labels : List SmokeLabel :=
  trieNode0034Labels ++ trieNode0035StepLabels
private def trieNode0035Gain : Int :=
  trieNode0034Gain + trieNode0035StepGain

private theorem trieNode0035StepRun :
    BellmanLabelStepRun SmokeStep trieNode0034State trieNode0035State
      trieNode0035StepLabels trieNode0035StepGain := by
  unfold trieNode0034State trieNode0035State
  unfold trieNode0035StepLabels trieNode0035StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0117
  exact BellmanLabelStepRun.nil trieNode0035State

private theorem trieNode0035Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0035State
      trieNode0035Labels trieNode0035Gain := by
  unfold trieNode0035Labels trieNode0035Gain
  exact BellmanLabelStepRun.append trieNode0034Run trieNode0035StepRun

private def trieNode0036State : State := edge0147.dst
private def trieNode0036StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0036StepGain : Int := edge0147.gain + (0)
private def trieNode0036Labels : List SmokeLabel :=
  trieNode0026Labels ++ trieNode0036StepLabels
private def trieNode0036Gain : Int :=
  trieNode0026Gain + trieNode0036StepGain

private theorem trieNode0036StepRun :
    BellmanLabelStepRun SmokeStep trieNode0026State trieNode0036State
      trieNode0036StepLabels trieNode0036StepGain := by
  unfold trieNode0026State trieNode0036State
  unfold trieNode0036StepLabels trieNode0036StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0147
  exact BellmanLabelStepRun.nil trieNode0036State

private theorem trieNode0036Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0036State
      trieNode0036Labels trieNode0036Gain := by
  unfold trieNode0036Labels trieNode0036Gain
  exact BellmanLabelStepRun.append trieNode0026Run trieNode0036StepRun

private def trieNode0037State : State := edge0160.dst
private def trieNode0037StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0037StepGain : Int := edge0160.gain + (0)
private def trieNode0037Labels : List SmokeLabel :=
  trieNode0036Labels ++ trieNode0037StepLabels
private def trieNode0037Gain : Int :=
  trieNode0036Gain + trieNode0037StepGain

private theorem trieNode0037StepRun :
    BellmanLabelStepRun SmokeStep trieNode0036State trieNode0037State
      trieNode0037StepLabels trieNode0037StepGain := by
  unfold trieNode0036State trieNode0037State
  unfold trieNode0037StepLabels trieNode0037StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0160
  exact BellmanLabelStepRun.nil trieNode0037State

private theorem trieNode0037Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0037State
      trieNode0037Labels trieNode0037Gain := by
  unfold trieNode0037Labels trieNode0037Gain
  exact BellmanLabelStepRun.append trieNode0036Run trieNode0037StepRun

private def trieNode0038State : State := edge0175.dst
private def trieNode0038StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0038StepGain : Int := edge0175.gain + (0)
private def trieNode0038Labels : List SmokeLabel :=
  trieNode0037Labels ++ trieNode0038StepLabels
private def trieNode0038Gain : Int :=
  trieNode0037Gain + trieNode0038StepGain

private theorem trieNode0038StepRun :
    BellmanLabelStepRun SmokeStep trieNode0037State trieNode0038State
      trieNode0038StepLabels trieNode0038StepGain := by
  unfold trieNode0037State trieNode0038State
  unfold trieNode0038StepLabels trieNode0038StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0175
  exact BellmanLabelStepRun.nil trieNode0038State

private theorem trieNode0038Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0038State
      trieNode0038Labels trieNode0038Gain := by
  unfold trieNode0038Labels trieNode0038Gain
  exact BellmanLabelStepRun.append trieNode0037Run trieNode0038StepRun

private def trieNode0039State : State := edge0192.dst
private def trieNode0039StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0039StepGain : Int := edge0192.gain + (0)
private def trieNode0039Labels : List SmokeLabel :=
  trieNode0038Labels ++ trieNode0039StepLabels
private def trieNode0039Gain : Int :=
  trieNode0038Gain + trieNode0039StepGain

private theorem trieNode0039StepRun :
    BellmanLabelStepRun SmokeStep trieNode0038State trieNode0039State
      trieNode0039StepLabels trieNode0039StepGain := by
  unfold trieNode0038State trieNode0039State
  unfold trieNode0039StepLabels trieNode0039StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0192
  exact BellmanLabelStepRun.nil trieNode0039State

private theorem trieNode0039Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0039State
      trieNode0039Labels trieNode0039Gain := by
  unfold trieNode0039Labels trieNode0039Gain
  exact BellmanLabelStepRun.append trieNode0038Run trieNode0039StepRun

private def trieNode0040State : State := edge0212.dst
private def trieNode0040StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0040StepGain : Int := edge0212.gain + (0)
private def trieNode0040Labels : List SmokeLabel :=
  trieNode0039Labels ++ trieNode0040StepLabels
private def trieNode0040Gain : Int :=
  trieNode0039Gain + trieNode0040StepGain

private theorem trieNode0040StepRun :
    BellmanLabelStepRun SmokeStep trieNode0039State trieNode0040State
      trieNode0040StepLabels trieNode0040StepGain := by
  unfold trieNode0039State trieNode0040State
  unfold trieNode0040StepLabels trieNode0040StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0212
  exact BellmanLabelStepRun.nil trieNode0040State

private theorem trieNode0040Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0040State
      trieNode0040Labels trieNode0040Gain := by
  unfold trieNode0040Labels trieNode0040Gain
  exact BellmanLabelStepRun.append trieNode0039Run trieNode0040StepRun

private def trieNode0041State : State := edge0009.dst
private def trieNode0041StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0041StepGain : Int := edge0009.gain + (0)
private def trieNode0041Labels : List SmokeLabel :=
  trieNode0040Labels ++ trieNode0041StepLabels
private def trieNode0041Gain : Int :=
  trieNode0040Gain + trieNode0041StepGain

private theorem trieNode0041StepRun :
    BellmanLabelStepRun SmokeStep trieNode0040State trieNode0041State
      trieNode0041StepLabels trieNode0041StepGain := by
  unfold trieNode0040State trieNode0041State
  unfold trieNode0041StepLabels trieNode0041StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0009
  exact BellmanLabelStepRun.nil trieNode0041State

private theorem trieNode0041Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0041State
      trieNode0041Labels trieNode0041Gain := by
  unfold trieNode0041Labels trieNode0041Gain
  exact BellmanLabelStepRun.append trieNode0040Run trieNode0041StepRun

private def trieNode0042State : State := edge0048.dst
private def trieNode0042StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0042StepGain : Int := edge0048.gain + (0)
private def trieNode0042Labels : List SmokeLabel :=
  trieNode0041Labels ++ trieNode0042StepLabels
private def trieNode0042Gain : Int :=
  trieNode0041Gain + trieNode0042StepGain

private theorem trieNode0042StepRun :
    BellmanLabelStepRun SmokeStep trieNode0041State trieNode0042State
      trieNode0042StepLabels trieNode0042StepGain := by
  unfold trieNode0041State trieNode0042State
  unfold trieNode0042StepLabels trieNode0042StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0048
  exact BellmanLabelStepRun.nil trieNode0042State

private theorem trieNode0042Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0042State
      trieNode0042Labels trieNode0042Gain := by
  unfold trieNode0042Labels trieNode0042Gain
  exact BellmanLabelStepRun.append trieNode0041Run trieNode0042StepRun

private def trieNode0043State : State := edge0077.dst
private def trieNode0043StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0043StepGain : Int := edge0077.gain + (0)
private def trieNode0043Labels : List SmokeLabel :=
  trieNode0042Labels ++ trieNode0043StepLabels
private def trieNode0043Gain : Int :=
  trieNode0042Gain + trieNode0043StepGain

private theorem trieNode0043StepRun :
    BellmanLabelStepRun SmokeStep trieNode0042State trieNode0043State
      trieNode0043StepLabels trieNode0043StepGain := by
  unfold trieNode0042State trieNode0043State
  unfold trieNode0043StepLabels trieNode0043StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0077
  exact BellmanLabelStepRun.nil trieNode0043State

private theorem trieNode0043Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0043State
      trieNode0043Labels trieNode0043Gain := by
  unfold trieNode0043Labels trieNode0043Gain
  exact BellmanLabelStepRun.append trieNode0042Run trieNode0043StepRun

private def trieNode0044State : State := edge0116.dst
private def trieNode0044StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0044StepGain : Int := edge0116.gain + (0)
private def trieNode0044Labels : List SmokeLabel :=
  trieNode0043Labels ++ trieNode0044StepLabels
private def trieNode0044Gain : Int :=
  trieNode0043Gain + trieNode0044StepGain

private theorem trieNode0044StepRun :
    BellmanLabelStepRun SmokeStep trieNode0043State trieNode0044State
      trieNode0044StepLabels trieNode0044StepGain := by
  unfold trieNode0043State trieNode0044State
  unfold trieNode0044StepLabels trieNode0044StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0116
  exact BellmanLabelStepRun.nil trieNode0044State

private theorem trieNode0044Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0044State
      trieNode0044Labels trieNode0044Gain := by
  unfold trieNode0044Labels trieNode0044Gain
  exact BellmanLabelStepRun.append trieNode0043Run trieNode0044StepRun

private def trieNode0045State : State := edge0138.dst
private def trieNode0045StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0045StepGain : Int := edge0138.gain + (0)
private def trieNode0045Labels : List SmokeLabel :=
  trieNode0025Labels ++ trieNode0045StepLabels
private def trieNode0045Gain : Int :=
  trieNode0025Gain + trieNode0045StepGain

private theorem trieNode0045StepRun :
    BellmanLabelStepRun SmokeStep trieNode0025State trieNode0045State
      trieNode0045StepLabels trieNode0045StepGain := by
  unfold trieNode0025State trieNode0045State
  unfold trieNode0045StepLabels trieNode0045StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  exact BellmanLabelStepRun.nil trieNode0045State

private theorem trieNode0045Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0045State
      trieNode0045Labels trieNode0045Gain := by
  unfold trieNode0045Labels trieNode0045Gain
  exact BellmanLabelStepRun.append trieNode0025Run trieNode0045StepRun

private def trieNode0046State : State := edge0149.dst
private def trieNode0046StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0046StepGain : Int := edge0149.gain + (0)
private def trieNode0046Labels : List SmokeLabel :=
  trieNode0045Labels ++ trieNode0046StepLabels
private def trieNode0046Gain : Int :=
  trieNode0045Gain + trieNode0046StepGain

private theorem trieNode0046StepRun :
    BellmanLabelStepRun SmokeStep trieNode0045State trieNode0046State
      trieNode0046StepLabels trieNode0046StepGain := by
  unfold trieNode0045State trieNode0046State
  unfold trieNode0046StepLabels trieNode0046StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0149
  exact BellmanLabelStepRun.nil trieNode0046State

private theorem trieNode0046Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0046State
      trieNode0046Labels trieNode0046Gain := by
  unfold trieNode0046Labels trieNode0046Gain
  exact BellmanLabelStepRun.append trieNode0045Run trieNode0046StepRun

private def trieNode0047State : State := edge0159.dst
private def trieNode0047StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0047StepGain : Int := edge0159.gain + (0)
private def trieNode0047Labels : List SmokeLabel :=
  trieNode0046Labels ++ trieNode0047StepLabels
private def trieNode0047Gain : Int :=
  trieNode0046Gain + trieNode0047StepGain

private theorem trieNode0047StepRun :
    BellmanLabelStepRun SmokeStep trieNode0046State trieNode0047State
      trieNode0047StepLabels trieNode0047StepGain := by
  unfold trieNode0046State trieNode0047State
  unfold trieNode0047StepLabels trieNode0047StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0159
  exact BellmanLabelStepRun.nil trieNode0047State

private theorem trieNode0047Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0047State
      trieNode0047Labels trieNode0047Gain := by
  unfold trieNode0047Labels trieNode0047Gain
  exact BellmanLabelStepRun.append trieNode0046Run trieNode0047StepRun

private def trieNode0048State : State := edge0171.dst
private def trieNode0048StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0048StepGain : Int := edge0171.gain + (0)
private def trieNode0048Labels : List SmokeLabel :=
  trieNode0047Labels ++ trieNode0048StepLabels
private def trieNode0048Gain : Int :=
  trieNode0047Gain + trieNode0048StepGain

private theorem trieNode0048StepRun :
    BellmanLabelStepRun SmokeStep trieNode0047State trieNode0048State
      trieNode0048StepLabels trieNode0048StepGain := by
  unfold trieNode0047State trieNode0048State
  unfold trieNode0048StepLabels trieNode0048StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0171
  exact BellmanLabelStepRun.nil trieNode0048State

private theorem trieNode0048Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0048State
      trieNode0048Labels trieNode0048Gain := by
  unfold trieNode0048Labels trieNode0048Gain
  exact BellmanLabelStepRun.append trieNode0047Run trieNode0048StepRun

private def trieNode0049State : State := edge0188.dst
private def trieNode0049StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0049StepGain : Int := edge0188.gain + (0)
private def trieNode0049Labels : List SmokeLabel :=
  trieNode0048Labels ++ trieNode0049StepLabels
private def trieNode0049Gain : Int :=
  trieNode0048Gain + trieNode0049StepGain

private theorem trieNode0049StepRun :
    BellmanLabelStepRun SmokeStep trieNode0048State trieNode0049State
      trieNode0049StepLabels trieNode0049StepGain := by
  unfold trieNode0048State trieNode0049State
  unfold trieNode0049StepLabels trieNode0049StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0188
  exact BellmanLabelStepRun.nil trieNode0049State

private theorem trieNode0049Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0049State
      trieNode0049Labels trieNode0049Gain := by
  unfold trieNode0049Labels trieNode0049Gain
  exact BellmanLabelStepRun.append trieNode0048Run trieNode0049StepRun

private def trieNode0050State : State := edge0208.dst
private def trieNode0050StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0050StepGain : Int := edge0208.gain + (0)
private def trieNode0050Labels : List SmokeLabel :=
  trieNode0049Labels ++ trieNode0050StepLabels
private def trieNode0050Gain : Int :=
  trieNode0049Gain + trieNode0050StepGain

private theorem trieNode0050StepRun :
    BellmanLabelStepRun SmokeStep trieNode0049State trieNode0050State
      trieNode0050StepLabels trieNode0050StepGain := by
  unfold trieNode0049State trieNode0050State
  unfold trieNode0050StepLabels trieNode0050StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0208
  exact BellmanLabelStepRun.nil trieNode0050State

private theorem trieNode0050Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0050State
      trieNode0050Labels trieNode0050Gain := by
  unfold trieNode0050Labels trieNode0050Gain
  exact BellmanLabelStepRun.append trieNode0049Run trieNode0050StepRun

private def trieNode0051State : State := edge0004.dst
private def trieNode0051StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0051StepGain : Int := edge0004.gain + (0)
private def trieNode0051Labels : List SmokeLabel :=
  trieNode0050Labels ++ trieNode0051StepLabels
private def trieNode0051Gain : Int :=
  trieNode0050Gain + trieNode0051StepGain

private theorem trieNode0051StepRun :
    BellmanLabelStepRun SmokeStep trieNode0050State trieNode0051State
      trieNode0051StepLabels trieNode0051StepGain := by
  unfold trieNode0050State trieNode0051State
  unfold trieNode0051StepLabels trieNode0051StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0004
  exact BellmanLabelStepRun.nil trieNode0051State

private theorem trieNode0051Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0051State
      trieNode0051Labels trieNode0051Gain := by
  unfold trieNode0051Labels trieNode0051Gain
  exact BellmanLabelStepRun.append trieNode0050Run trieNode0051StepRun

private def trieNode0052State : State := edge0042.dst
private def trieNode0052StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0052StepGain : Int := edge0042.gain + (0)
private def trieNode0052Labels : List SmokeLabel :=
  trieNode0051Labels ++ trieNode0052StepLabels
private def trieNode0052Gain : Int :=
  trieNode0051Gain + trieNode0052StepGain

private theorem trieNode0052StepRun :
    BellmanLabelStepRun SmokeStep trieNode0051State trieNode0052State
      trieNode0052StepLabels trieNode0052StepGain := by
  unfold trieNode0051State trieNode0052State
  unfold trieNode0052StepLabels trieNode0052StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0042
  exact BellmanLabelStepRun.nil trieNode0052State

private theorem trieNode0052Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0052State
      trieNode0052Labels trieNode0052Gain := by
  unfold trieNode0052Labels trieNode0052Gain
  exact BellmanLabelStepRun.append trieNode0051Run trieNode0052StepRun

private def trieNode0053State : State := edge0076.dst
private def trieNode0053StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0053StepGain : Int := edge0076.gain + (0)
private def trieNode0053Labels : List SmokeLabel :=
  trieNode0052Labels ++ trieNode0053StepLabels
private def trieNode0053Gain : Int :=
  trieNode0052Gain + trieNode0053StepGain

private theorem trieNode0053StepRun :
    BellmanLabelStepRun SmokeStep trieNode0052State trieNode0053State
      trieNode0053StepLabels trieNode0053StepGain := by
  unfold trieNode0052State trieNode0053State
  unfold trieNode0053StepLabels trieNode0053StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0076
  exact BellmanLabelStepRun.nil trieNode0053State

private theorem trieNode0053Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0053State
      trieNode0053Labels trieNode0053Gain := by
  unfold trieNode0053Labels trieNode0053Gain
  exact BellmanLabelStepRun.append trieNode0052Run trieNode0053StepRun

private def trieNode0054State : State := edge0115.dst
private def trieNode0054StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0054StepGain : Int := edge0115.gain + (0)
private def trieNode0054Labels : List SmokeLabel :=
  trieNode0053Labels ++ trieNode0054StepLabels
private def trieNode0054Gain : Int :=
  trieNode0053Gain + trieNode0054StepGain

private theorem trieNode0054StepRun :
    BellmanLabelStepRun SmokeStep trieNode0053State trieNode0054State
      trieNode0054StepLabels trieNode0054StepGain := by
  unfold trieNode0053State trieNode0054State
  unfold trieNode0054StepLabels trieNode0054StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0115
  exact BellmanLabelStepRun.nil trieNode0054State

private theorem trieNode0054Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0054State
      trieNode0054Labels trieNode0054Gain := by
  unfold trieNode0054Labels trieNode0054Gain
  exact BellmanLabelStepRun.append trieNode0053Run trieNode0054StepRun

private def trieNode0055State : State := edge0150.dst
private def trieNode0055StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0055StepGain : Int := edge0150.gain + (0)
private def trieNode0055Labels : List SmokeLabel :=
  trieNode0045Labels ++ trieNode0055StepLabels
private def trieNode0055Gain : Int :=
  trieNode0045Gain + trieNode0055StepGain

private theorem trieNode0055StepRun :
    BellmanLabelStepRun SmokeStep trieNode0045State trieNode0055State
      trieNode0055StepLabels trieNode0055StepGain := by
  unfold trieNode0045State trieNode0055State
  unfold trieNode0055StepLabels trieNode0055StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  exact BellmanLabelStepRun.nil trieNode0055State

private theorem trieNode0055Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0055State
      trieNode0055Labels trieNode0055Gain := by
  unfold trieNode0055Labels trieNode0055Gain
  exact BellmanLabelStepRun.append trieNode0045Run trieNode0055StepRun

private def trieNode0056State : State := edge0162.dst
private def trieNode0056StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0056StepGain : Int := edge0162.gain + (0)
private def trieNode0056Labels : List SmokeLabel :=
  trieNode0055Labels ++ trieNode0056StepLabels
private def trieNode0056Gain : Int :=
  trieNode0055Gain + trieNode0056StepGain

private theorem trieNode0056StepRun :
    BellmanLabelStepRun SmokeStep trieNode0055State trieNode0056State
      trieNode0056StepLabels trieNode0056StepGain := by
  unfold trieNode0055State trieNode0056State
  unfold trieNode0056StepLabels trieNode0056StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0162
  exact BellmanLabelStepRun.nil trieNode0056State

private theorem trieNode0056Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0056State
      trieNode0056Labels trieNode0056Gain := by
  unfold trieNode0056Labels trieNode0056Gain
  exact BellmanLabelStepRun.append trieNode0055Run trieNode0056StepRun

private def trieNode0057State : State := edge0174.dst
private def trieNode0057StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0057StepGain : Int := edge0174.gain + (0)
private def trieNode0057Labels : List SmokeLabel :=
  trieNode0056Labels ++ trieNode0057StepLabels
private def trieNode0057Gain : Int :=
  trieNode0056Gain + trieNode0057StepGain

private theorem trieNode0057StepRun :
    BellmanLabelStepRun SmokeStep trieNode0056State trieNode0057State
      trieNode0057StepLabels trieNode0057StepGain := by
  unfold trieNode0056State trieNode0057State
  unfold trieNode0057StepLabels trieNode0057StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0174
  exact BellmanLabelStepRun.nil trieNode0057State

private theorem trieNode0057Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0057State
      trieNode0057Labels trieNode0057Gain := by
  unfold trieNode0057Labels trieNode0057Gain
  exact BellmanLabelStepRun.append trieNode0056Run trieNode0057StepRun

private def trieNode0058State : State := edge0187.dst
private def trieNode0058StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0058StepGain : Int := edge0187.gain + (0)
private def trieNode0058Labels : List SmokeLabel :=
  trieNode0057Labels ++ trieNode0058StepLabels
private def trieNode0058Gain : Int :=
  trieNode0057Gain + trieNode0058StepGain

private theorem trieNode0058StepRun :
    BellmanLabelStepRun SmokeStep trieNode0057State trieNode0058State
      trieNode0058StepLabels trieNode0058StepGain := by
  unfold trieNode0057State trieNode0058State
  unfold trieNode0058StepLabels trieNode0058StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0187
  exact BellmanLabelStepRun.nil trieNode0058State

private theorem trieNode0058Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0058State
      trieNode0058Labels trieNode0058Gain := by
  unfold trieNode0058Labels trieNode0058Gain
  exact BellmanLabelStepRun.append trieNode0057Run trieNode0058StepRun

private def trieNode0059State : State := edge0207.dst
private def trieNode0059StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0059StepGain : Int := edge0207.gain + (0)
private def trieNode0059Labels : List SmokeLabel :=
  trieNode0058Labels ++ trieNode0059StepLabels
private def trieNode0059Gain : Int :=
  trieNode0058Gain + trieNode0059StepGain

private theorem trieNode0059StepRun :
    BellmanLabelStepRun SmokeStep trieNode0058State trieNode0059State
      trieNode0059StepLabels trieNode0059StepGain := by
  unfold trieNode0058State trieNode0059State
  unfold trieNode0059StepLabels trieNode0059StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0207
  exact BellmanLabelStepRun.nil trieNode0059State

private theorem trieNode0059Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0059State
      trieNode0059Labels trieNode0059Gain := by
  unfold trieNode0059Labels trieNode0059Gain
  exact BellmanLabelStepRun.append trieNode0058Run trieNode0059StepRun

private def trieNode0060State : State := edge0003.dst
private def trieNode0060StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0060StepGain : Int := edge0003.gain + (0)
private def trieNode0060Labels : List SmokeLabel :=
  trieNode0059Labels ++ trieNode0060StepLabels
private def trieNode0060Gain : Int :=
  trieNode0059Gain + trieNode0060StepGain

private theorem trieNode0060StepRun :
    BellmanLabelStepRun SmokeStep trieNode0059State trieNode0060State
      trieNode0060StepLabels trieNode0060StepGain := by
  unfold trieNode0059State trieNode0060State
  unfold trieNode0060StepLabels trieNode0060StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0003
  exact BellmanLabelStepRun.nil trieNode0060State

private theorem trieNode0060Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0060State
      trieNode0060Labels trieNode0060Gain := by
  unfold trieNode0060Labels trieNode0060Gain
  exact BellmanLabelStepRun.append trieNode0059Run trieNode0060StepRun

private def trieNode0061State : State := edge0041.dst
private def trieNode0061StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0061StepGain : Int := edge0041.gain + (0)
private def trieNode0061Labels : List SmokeLabel :=
  trieNode0060Labels ++ trieNode0061StepLabels
private def trieNode0061Gain : Int :=
  trieNode0060Gain + trieNode0061StepGain

private theorem trieNode0061StepRun :
    BellmanLabelStepRun SmokeStep trieNode0060State trieNode0061State
      trieNode0061StepLabels trieNode0061StepGain := by
  unfold trieNode0060State trieNode0061State
  unfold trieNode0061StepLabels trieNode0061StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0041
  exact BellmanLabelStepRun.nil trieNode0061State

private theorem trieNode0061Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0061State
      trieNode0061Labels trieNode0061Gain := by
  unfold trieNode0061Labels trieNode0061Gain
  exact BellmanLabelStepRun.append trieNode0060Run trieNode0061StepRun

private def trieNode0062State : State := edge0075.dst
private def trieNode0062StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0062StepGain : Int := edge0075.gain + (0)
private def trieNode0062Labels : List SmokeLabel :=
  trieNode0061Labels ++ trieNode0062StepLabels
private def trieNode0062Gain : Int :=
  trieNode0061Gain + trieNode0062StepGain

private theorem trieNode0062StepRun :
    BellmanLabelStepRun SmokeStep trieNode0061State trieNode0062State
      trieNode0062StepLabels trieNode0062StepGain := by
  unfold trieNode0061State trieNode0062State
  unfold trieNode0062StepLabels trieNode0062StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0075
  exact BellmanLabelStepRun.nil trieNode0062State

private theorem trieNode0062Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0062State
      trieNode0062Labels trieNode0062Gain := by
  unfold trieNode0062Labels trieNode0062Gain
  exact BellmanLabelStepRun.append trieNode0061Run trieNode0062StepRun

private def trieNode0063State : State := edge0114.dst
private def trieNode0063StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0063StepGain : Int := edge0114.gain + (0)
private def trieNode0063Labels : List SmokeLabel :=
  trieNode0062Labels ++ trieNode0063StepLabels
private def trieNode0063Gain : Int :=
  trieNode0062Gain + trieNode0063StepGain

private theorem trieNode0063StepRun :
    BellmanLabelStepRun SmokeStep trieNode0062State trieNode0063State
      trieNode0063StepLabels trieNode0063StepGain := by
  unfold trieNode0062State trieNode0063State
  unfold trieNode0063StepLabels trieNode0063StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0114
  exact BellmanLabelStepRun.nil trieNode0063State

private theorem trieNode0063Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0063State
      trieNode0063Labels trieNode0063Gain := by
  unfold trieNode0063Labels trieNode0063Gain
  exact BellmanLabelStepRun.append trieNode0062Run trieNode0063StepRun

private def trieNode0064State : State := edge0163.dst
private def trieNode0064StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0064StepGain : Int := edge0163.gain + (0)
private def trieNode0064Labels : List SmokeLabel :=
  trieNode0055Labels ++ trieNode0064StepLabels
private def trieNode0064Gain : Int :=
  trieNode0055Gain + trieNode0064StepGain

private theorem trieNode0064StepRun :
    BellmanLabelStepRun SmokeStep trieNode0055State trieNode0064State
      trieNode0064StepLabels trieNode0064StepGain := by
  unfold trieNode0055State trieNode0064State
  unfold trieNode0064StepLabels trieNode0064StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  exact BellmanLabelStepRun.nil trieNode0064State

private theorem trieNode0064Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0064State
      trieNode0064Labels trieNode0064Gain := by
  unfold trieNode0064Labels trieNode0064Gain
  exact BellmanLabelStepRun.append trieNode0055Run trieNode0064StepRun

private def trieNode0065State : State := edge0177.dst
private def trieNode0065StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0065StepGain : Int := edge0177.gain + (0)
private def trieNode0065Labels : List SmokeLabel :=
  trieNode0064Labels ++ trieNode0065StepLabels
private def trieNode0065Gain : Int :=
  trieNode0064Gain + trieNode0065StepGain

private theorem trieNode0065StepRun :
    BellmanLabelStepRun SmokeStep trieNode0064State trieNode0065State
      trieNode0065StepLabels trieNode0065StepGain := by
  unfold trieNode0064State trieNode0065State
  unfold trieNode0065StepLabels trieNode0065StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0177
  exact BellmanLabelStepRun.nil trieNode0065State

private theorem trieNode0065Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0065State
      trieNode0065Labels trieNode0065Gain := by
  unfold trieNode0065Labels trieNode0065Gain
  exact BellmanLabelStepRun.append trieNode0064Run trieNode0065StepRun

private def trieNode0066State : State := edge0191.dst
private def trieNode0066StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0066StepGain : Int := edge0191.gain + (0)
private def trieNode0066Labels : List SmokeLabel :=
  trieNode0065Labels ++ trieNode0066StepLabels
private def trieNode0066Gain : Int :=
  trieNode0065Gain + trieNode0066StepGain

private theorem trieNode0066StepRun :
    BellmanLabelStepRun SmokeStep trieNode0065State trieNode0066State
      trieNode0066StepLabels trieNode0066StepGain := by
  unfold trieNode0065State trieNode0066State
  unfold trieNode0066StepLabels trieNode0066StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0191
  exact BellmanLabelStepRun.nil trieNode0066State

private theorem trieNode0066Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0066State
      trieNode0066Labels trieNode0066Gain := by
  unfold trieNode0066Labels trieNode0066Gain
  exact BellmanLabelStepRun.append trieNode0065Run trieNode0066StepRun

private def trieNode0067State : State := edge0206.dst
private def trieNode0067StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0067StepGain : Int := edge0206.gain + (0)
private def trieNode0067Labels : List SmokeLabel :=
  trieNode0066Labels ++ trieNode0067StepLabels
private def trieNode0067Gain : Int :=
  trieNode0066Gain + trieNode0067StepGain

private theorem trieNode0067StepRun :
    BellmanLabelStepRun SmokeStep trieNode0066State trieNode0067State
      trieNode0067StepLabels trieNode0067StepGain := by
  unfold trieNode0066State trieNode0067State
  unfold trieNode0067StepLabels trieNode0067StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0206
  exact BellmanLabelStepRun.nil trieNode0067State

private theorem trieNode0067Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0067State
      trieNode0067Labels trieNode0067Gain := by
  unfold trieNode0067Labels trieNode0067Gain
  exact BellmanLabelStepRun.append trieNode0066Run trieNode0067StepRun

private def trieNode0068State : State := edge0002.dst
private def trieNode0068StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0068StepGain : Int := edge0002.gain + (0)
private def trieNode0068Labels : List SmokeLabel :=
  trieNode0067Labels ++ trieNode0068StepLabels
private def trieNode0068Gain : Int :=
  trieNode0067Gain + trieNode0068StepGain

private theorem trieNode0068StepRun :
    BellmanLabelStepRun SmokeStep trieNode0067State trieNode0068State
      trieNode0068StepLabels trieNode0068StepGain := by
  unfold trieNode0067State trieNode0068State
  unfold trieNode0068StepLabels trieNode0068StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0002
  exact BellmanLabelStepRun.nil trieNode0068State

private theorem trieNode0068Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0068State
      trieNode0068Labels trieNode0068Gain := by
  unfold trieNode0068Labels trieNode0068Gain
  exact BellmanLabelStepRun.append trieNode0067Run trieNode0068StepRun

private def trieNode0069State : State := edge0040.dst
private def trieNode0069StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0069StepGain : Int := edge0040.gain + (0)
private def trieNode0069Labels : List SmokeLabel :=
  trieNode0068Labels ++ trieNode0069StepLabels
private def trieNode0069Gain : Int :=
  trieNode0068Gain + trieNode0069StepGain

private theorem trieNode0069StepRun :
    BellmanLabelStepRun SmokeStep trieNode0068State trieNode0069State
      trieNode0069StepLabels trieNode0069StepGain := by
  unfold trieNode0068State trieNode0069State
  unfold trieNode0069StepLabels trieNode0069StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0040
  exact BellmanLabelStepRun.nil trieNode0069State

private theorem trieNode0069Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0069State
      trieNode0069Labels trieNode0069Gain := by
  unfold trieNode0069Labels trieNode0069Gain
  exact BellmanLabelStepRun.append trieNode0068Run trieNode0069StepRun

private def trieNode0070State : State := edge0074.dst
private def trieNode0070StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0070StepGain : Int := edge0074.gain + (0)
private def trieNode0070Labels : List SmokeLabel :=
  trieNode0069Labels ++ trieNode0070StepLabels
private def trieNode0070Gain : Int :=
  trieNode0069Gain + trieNode0070StepGain

private theorem trieNode0070StepRun :
    BellmanLabelStepRun SmokeStep trieNode0069State trieNode0070State
      trieNode0070StepLabels trieNode0070StepGain := by
  unfold trieNode0069State trieNode0070State
  unfold trieNode0070StepLabels trieNode0070StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0074
  exact BellmanLabelStepRun.nil trieNode0070State

private theorem trieNode0070Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0070State
      trieNode0070Labels trieNode0070Gain := by
  unfold trieNode0070Labels trieNode0070Gain
  exact BellmanLabelStepRun.append trieNode0069Run trieNode0070StepRun

private def trieNode0071State : State := edge0113.dst
private def trieNode0071StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0071StepGain : Int := edge0113.gain + (0)
private def trieNode0071Labels : List SmokeLabel :=
  trieNode0070Labels ++ trieNode0071StepLabels
private def trieNode0071Gain : Int :=
  trieNode0070Gain + trieNode0071StepGain

private theorem trieNode0071StepRun :
    BellmanLabelStepRun SmokeStep trieNode0070State trieNode0071State
      trieNode0071StepLabels trieNode0071StepGain := by
  unfold trieNode0070State trieNode0071State
  unfold trieNode0071StepLabels trieNode0071StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0113
  exact BellmanLabelStepRun.nil trieNode0071State

private theorem trieNode0071Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0071State
      trieNode0071Labels trieNode0071Gain := by
  unfold trieNode0071Labels trieNode0071Gain
  exact BellmanLabelStepRun.append trieNode0070Run trieNode0071StepRun

private def trieNode0072State : State := edge0178.dst
private def trieNode0072StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0072StepGain : Int := edge0178.gain + (0)
private def trieNode0072Labels : List SmokeLabel :=
  trieNode0064Labels ++ trieNode0072StepLabels
private def trieNode0072Gain : Int :=
  trieNode0064Gain + trieNode0072StepGain

private theorem trieNode0072StepRun :
    BellmanLabelStepRun SmokeStep trieNode0064State trieNode0072State
      trieNode0072StepLabels trieNode0072StepGain := by
  unfold trieNode0064State trieNode0072State
  unfold trieNode0072StepLabels trieNode0072StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  exact BellmanLabelStepRun.nil trieNode0072State

private theorem trieNode0072Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0072State
      trieNode0072Labels trieNode0072Gain := by
  unfold trieNode0072Labels trieNode0072Gain
  exact BellmanLabelStepRun.append trieNode0064Run trieNode0072StepRun

private def trieNode0073State : State := edge0194.dst
private def trieNode0073StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0073StepGain : Int := edge0194.gain + (0)
private def trieNode0073Labels : List SmokeLabel :=
  trieNode0072Labels ++ trieNode0073StepLabels
private def trieNode0073Gain : Int :=
  trieNode0072Gain + trieNode0073StepGain

private theorem trieNode0073StepRun :
    BellmanLabelStepRun SmokeStep trieNode0072State trieNode0073State
      trieNode0073StepLabels trieNode0073StepGain := by
  unfold trieNode0072State trieNode0073State
  unfold trieNode0073StepLabels trieNode0073StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0194
  exact BellmanLabelStepRun.nil trieNode0073State

private theorem trieNode0073Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0073State
      trieNode0073Labels trieNode0073Gain := by
  unfold trieNode0073Labels trieNode0073Gain
  exact BellmanLabelStepRun.append trieNode0072Run trieNode0073StepRun

private def trieNode0074State : State := edge0211.dst
private def trieNode0074StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0074StepGain : Int := edge0211.gain + (0)
private def trieNode0074Labels : List SmokeLabel :=
  trieNode0073Labels ++ trieNode0074StepLabels
private def trieNode0074Gain : Int :=
  trieNode0073Gain + trieNode0074StepGain

private theorem trieNode0074StepRun :
    BellmanLabelStepRun SmokeStep trieNode0073State trieNode0074State
      trieNode0074StepLabels trieNode0074StepGain := by
  unfold trieNode0073State trieNode0074State
  unfold trieNode0074StepLabels trieNode0074StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0211
  exact BellmanLabelStepRun.nil trieNode0074State

private theorem trieNode0074Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0074State
      trieNode0074Labels trieNode0074Gain := by
  unfold trieNode0074Labels trieNode0074Gain
  exact BellmanLabelStepRun.append trieNode0073Run trieNode0074StepRun

private def trieNode0075State : State := edge0001.dst
private def trieNode0075StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0075StepGain : Int := edge0001.gain + (0)
private def trieNode0075Labels : List SmokeLabel :=
  trieNode0074Labels ++ trieNode0075StepLabels
private def trieNode0075Gain : Int :=
  trieNode0074Gain + trieNode0075StepGain

private theorem trieNode0075StepRun :
    BellmanLabelStepRun SmokeStep trieNode0074State trieNode0075State
      trieNode0075StepLabels trieNode0075StepGain := by
  unfold trieNode0074State trieNode0075State
  unfold trieNode0075StepLabels trieNode0075StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0001
  exact BellmanLabelStepRun.nil trieNode0075State

private theorem trieNode0075Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0075State
      trieNode0075Labels trieNode0075Gain := by
  unfold trieNode0075Labels trieNode0075Gain
  exact BellmanLabelStepRun.append trieNode0074Run trieNode0075StepRun

private def trieNode0076State : State := edge0038.dst
private def trieNode0076StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0076StepGain : Int := edge0038.gain + (0)
private def trieNode0076Labels : List SmokeLabel :=
  trieNode0075Labels ++ trieNode0076StepLabels
private def trieNode0076Gain : Int :=
  trieNode0075Gain + trieNode0076StepGain

private theorem trieNode0076StepRun :
    BellmanLabelStepRun SmokeStep trieNode0075State trieNode0076State
      trieNode0076StepLabels trieNode0076StepGain := by
  unfold trieNode0075State trieNode0076State
  unfold trieNode0076StepLabels trieNode0076StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0038
  exact BellmanLabelStepRun.nil trieNode0076State

private theorem trieNode0076Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0076State
      trieNode0076Labels trieNode0076Gain := by
  unfold trieNode0076Labels trieNode0076Gain
  exact BellmanLabelStepRun.append trieNode0075Run trieNode0076StepRun

private def trieNode0077State : State := edge0071.dst
private def trieNode0077StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0077StepGain : Int := edge0071.gain + (0)
private def trieNode0077Labels : List SmokeLabel :=
  trieNode0076Labels ++ trieNode0077StepLabels
private def trieNode0077Gain : Int :=
  trieNode0076Gain + trieNode0077StepGain

private theorem trieNode0077StepRun :
    BellmanLabelStepRun SmokeStep trieNode0076State trieNode0077State
      trieNode0077StepLabels trieNode0077StepGain := by
  unfold trieNode0076State trieNode0077State
  unfold trieNode0077StepLabels trieNode0077StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0071
  exact BellmanLabelStepRun.nil trieNode0077State

private theorem trieNode0077Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0077State
      trieNode0077Labels trieNode0077Gain := by
  unfold trieNode0077Labels trieNode0077Gain
  exact BellmanLabelStepRun.append trieNode0076Run trieNode0077StepRun

private def trieNode0078State : State := edge0109.dst
private def trieNode0078StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0078StepGain : Int := edge0109.gain + (0)
private def trieNode0078Labels : List SmokeLabel :=
  trieNode0077Labels ++ trieNode0078StepLabels
private def trieNode0078Gain : Int :=
  trieNode0077Gain + trieNode0078StepGain

private theorem trieNode0078StepRun :
    BellmanLabelStepRun SmokeStep trieNode0077State trieNode0078State
      trieNode0078StepLabels trieNode0078StepGain := by
  unfold trieNode0077State trieNode0078State
  unfold trieNode0078StepLabels trieNode0078StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0109
  exact BellmanLabelStepRun.nil trieNode0078State

private theorem trieNode0078Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0078State
      trieNode0078Labels trieNode0078Gain := by
  unfold trieNode0078Labels trieNode0078Gain
  exact BellmanLabelStepRun.append trieNode0077Run trieNode0078StepRun

private def trieNode0079State : State := edge0195.dst
private def trieNode0079StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0079StepGain : Int := edge0195.gain + (0)
private def trieNode0079Labels : List SmokeLabel :=
  trieNode0072Labels ++ trieNode0079StepLabels
private def trieNode0079Gain : Int :=
  trieNode0072Gain + trieNode0079StepGain

private theorem trieNode0079StepRun :
    BellmanLabelStepRun SmokeStep trieNode0072State trieNode0079State
      trieNode0079StepLabels trieNode0079StepGain := by
  unfold trieNode0072State trieNode0079State
  unfold trieNode0079StepLabels trieNode0079StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  exact BellmanLabelStepRun.nil trieNode0079State

private theorem trieNode0079Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0079State
      trieNode0079Labels trieNode0079Gain := by
  unfold trieNode0079Labels trieNode0079Gain
  exact BellmanLabelStepRun.append trieNode0072Run trieNode0079StepRun

private def trieNode0080State : State := edge0216.dst
private def trieNode0080StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0080StepGain : Int := edge0216.gain + (0)
private def trieNode0080Labels : List SmokeLabel :=
  trieNode0079Labels ++ trieNode0080StepLabels
private def trieNode0080Gain : Int :=
  trieNode0079Gain + trieNode0080StepGain

private theorem trieNode0080StepRun :
    BellmanLabelStepRun SmokeStep trieNode0079State trieNode0080State
      trieNode0080StepLabels trieNode0080StepGain := by
  unfold trieNode0079State trieNode0080State
  unfold trieNode0080StepLabels trieNode0080StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0216
  exact BellmanLabelStepRun.nil trieNode0080State

private theorem trieNode0080Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0080State
      trieNode0080Labels trieNode0080Gain := by
  unfold trieNode0080Labels trieNode0080Gain
  exact BellmanLabelStepRun.append trieNode0079Run trieNode0080StepRun

private def trieNode0081State : State := edge0008.dst
private def trieNode0081StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0081StepGain : Int := edge0008.gain + (0)
private def trieNode0081Labels : List SmokeLabel :=
  trieNode0080Labels ++ trieNode0081StepLabels
private def trieNode0081Gain : Int :=
  trieNode0080Gain + trieNode0081StepGain

private theorem trieNode0081StepRun :
    BellmanLabelStepRun SmokeStep trieNode0080State trieNode0081State
      trieNode0081StepLabels trieNode0081StepGain := by
  unfold trieNode0080State trieNode0081State
  unfold trieNode0081StepLabels trieNode0081StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0008
  exact BellmanLabelStepRun.nil trieNode0081State

private theorem trieNode0081Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0081State
      trieNode0081Labels trieNode0081Gain := by
  unfold trieNode0081Labels trieNode0081Gain
  exact BellmanLabelStepRun.append trieNode0080Run trieNode0081StepRun

private def trieNode0082State : State := edge0039.dst
private def trieNode0082StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0082StepGain : Int := edge0039.gain + (0)
private def trieNode0082Labels : List SmokeLabel :=
  trieNode0081Labels ++ trieNode0082StepLabels
private def trieNode0082Gain : Int :=
  trieNode0081Gain + trieNode0082StepGain

private theorem trieNode0082StepRun :
    BellmanLabelStepRun SmokeStep trieNode0081State trieNode0082State
      trieNode0082StepLabels trieNode0082StepGain := by
  unfold trieNode0081State trieNode0082State
  unfold trieNode0082StepLabels trieNode0082StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0039
  exact BellmanLabelStepRun.nil trieNode0082State

private theorem trieNode0082Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0082State
      trieNode0082Labels trieNode0082Gain := by
  unfold trieNode0082Labels trieNode0082Gain
  exact BellmanLabelStepRun.append trieNode0081Run trieNode0082StepRun

private def trieNode0083State : State := edge0072.dst
private def trieNode0083StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0083StepGain : Int := edge0072.gain + (0)
private def trieNode0083Labels : List SmokeLabel :=
  trieNode0082Labels ++ trieNode0083StepLabels
private def trieNode0083Gain : Int :=
  trieNode0082Gain + trieNode0083StepGain

private theorem trieNode0083StepRun :
    BellmanLabelStepRun SmokeStep trieNode0082State trieNode0083State
      trieNode0083StepLabels trieNode0083StepGain := by
  unfold trieNode0082State trieNode0083State
  unfold trieNode0083StepLabels trieNode0083StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0072
  exact BellmanLabelStepRun.nil trieNode0083State

private theorem trieNode0083Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0083State
      trieNode0083Labels trieNode0083Gain := by
  unfold trieNode0083Labels trieNode0083Gain
  exact BellmanLabelStepRun.append trieNode0082Run trieNode0083StepRun

private def trieNode0084State : State := edge0110.dst
private def trieNode0084StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0084StepGain : Int := edge0110.gain + (0)
private def trieNode0084Labels : List SmokeLabel :=
  trieNode0083Labels ++ trieNode0084StepLabels
private def trieNode0084Gain : Int :=
  trieNode0083Gain + trieNode0084StepGain

private theorem trieNode0084StepRun :
    BellmanLabelStepRun SmokeStep trieNode0083State trieNode0084State
      trieNode0084StepLabels trieNode0084StepGain := by
  unfold trieNode0083State trieNode0084State
  unfold trieNode0084StepLabels trieNode0084StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0110
  exact BellmanLabelStepRun.nil trieNode0084State

private theorem trieNode0084Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0084State
      trieNode0084Labels trieNode0084Gain := by
  unfold trieNode0084Labels trieNode0084Gain
  exact BellmanLabelStepRun.append trieNode0083Run trieNode0084StepRun

private def trieNode0085State : State := edge0217.dst
private def trieNode0085StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0085StepGain : Int := edge0217.gain + (0)
private def trieNode0085Labels : List SmokeLabel :=
  trieNode0079Labels ++ trieNode0085StepLabels
private def trieNode0085Gain : Int :=
  trieNode0079Gain + trieNode0085StepGain

private theorem trieNode0085StepRun :
    BellmanLabelStepRun SmokeStep trieNode0079State trieNode0085State
      trieNode0085StepLabels trieNode0085StepGain := by
  unfold trieNode0079State trieNode0085State
  unfold trieNode0085StepLabels trieNode0085StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0217
  exact BellmanLabelStepRun.nil trieNode0085State

private theorem trieNode0085Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0085State
      trieNode0085Labels trieNode0085Gain := by
  unfold trieNode0085Labels trieNode0085Gain
  exact BellmanLabelStepRun.append trieNode0079Run trieNode0085StepRun

private def trieNode0086State : State := edge0014.dst
private def trieNode0086StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0086StepGain : Int := edge0014.gain + (0)
private def trieNode0086Labels : List SmokeLabel :=
  trieNode0085Labels ++ trieNode0086StepLabels
private def trieNode0086Gain : Int :=
  trieNode0085Gain + trieNode0086StepGain

private theorem trieNode0086StepRun :
    BellmanLabelStepRun SmokeStep trieNode0085State trieNode0086State
      trieNode0086StepLabels trieNode0086StepGain := by
  unfold trieNode0085State trieNode0086State
  unfold trieNode0086StepLabels trieNode0086StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0014
  exact BellmanLabelStepRun.nil trieNode0086State

private theorem trieNode0086Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0086State
      trieNode0086Labels trieNode0086Gain := by
  unfold trieNode0086Labels trieNode0086Gain
  exact BellmanLabelStepRun.append trieNode0085Run trieNode0086StepRun

private def trieNode0087State : State := edge0047.dst
private def trieNode0087StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0087StepGain : Int := edge0047.gain + (0)
private def trieNode0087Labels : List SmokeLabel :=
  trieNode0086Labels ++ trieNode0087StepLabels
private def trieNode0087Gain : Int :=
  trieNode0086Gain + trieNode0087StepGain

private theorem trieNode0087StepRun :
    BellmanLabelStepRun SmokeStep trieNode0086State trieNode0087State
      trieNode0087StepLabels trieNode0087StepGain := by
  unfold trieNode0086State trieNode0087State
  unfold trieNode0087StepLabels trieNode0087StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0047
  exact BellmanLabelStepRun.nil trieNode0087State

private theorem trieNode0087Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0087State
      trieNode0087Labels trieNode0087Gain := by
  unfold trieNode0087Labels trieNode0087Gain
  exact BellmanLabelStepRun.append trieNode0086Run trieNode0087StepRun

private def trieNode0088State : State := edge0073.dst
private def trieNode0088StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0088StepGain : Int := edge0073.gain + (0)
private def trieNode0088Labels : List SmokeLabel :=
  trieNode0087Labels ++ trieNode0088StepLabels
private def trieNode0088Gain : Int :=
  trieNode0087Gain + trieNode0088StepGain

private theorem trieNode0088StepRun :
    BellmanLabelStepRun SmokeStep trieNode0087State trieNode0088State
      trieNode0088StepLabels trieNode0088StepGain := by
  unfold trieNode0087State trieNode0088State
  unfold trieNode0088StepLabels trieNode0088StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0073
  exact BellmanLabelStepRun.nil trieNode0088State

private theorem trieNode0088Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0088State
      trieNode0088Labels trieNode0088Gain := by
  unfold trieNode0088Labels trieNode0088Gain
  exact BellmanLabelStepRun.append trieNode0087Run trieNode0088StepRun

private def trieNode0089State : State := edge0112.dst
private def trieNode0089StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0089StepGain : Int := edge0112.gain + (0)
private def trieNode0089Labels : List SmokeLabel :=
  trieNode0088Labels ++ trieNode0089StepLabels
private def trieNode0089Gain : Int :=
  trieNode0088Gain + trieNode0089StepGain

private theorem trieNode0089StepRun :
    BellmanLabelStepRun SmokeStep trieNode0088State trieNode0089State
      trieNode0089StepLabels trieNode0089StepGain := by
  unfold trieNode0088State trieNode0089State
  unfold trieNode0089StepLabels trieNode0089StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0112
  exact BellmanLabelStepRun.nil trieNode0089State

private theorem trieNode0089Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0089State
      trieNode0089Labels trieNode0089Gain := by
  unfold trieNode0089Labels trieNode0089Gain
  exact BellmanLabelStepRun.append trieNode0088Run trieNode0089StepRun

private def trieNode0090State : State := edge0015.dst
private def trieNode0090StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0090StepGain : Int := edge0015.gain + (0)
private def trieNode0090Labels : List SmokeLabel :=
  trieNode0085Labels ++ trieNode0090StepLabels
private def trieNode0090Gain : Int :=
  trieNode0085Gain + trieNode0090StepGain

private theorem trieNode0090StepRun :
    BellmanLabelStepRun SmokeStep trieNode0085State trieNode0090State
      trieNode0090StepLabels trieNode0090StepGain := by
  unfold trieNode0085State trieNode0090State
  unfold trieNode0090StepLabels trieNode0090StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0015
  exact BellmanLabelStepRun.nil trieNode0090State

private theorem trieNode0090Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0090State
      trieNode0090Labels trieNode0090Gain := by
  unfold trieNode0090Labels trieNode0090Gain
  exact BellmanLabelStepRun.append trieNode0085Run trieNode0090StepRun

private def trieNode0091State : State := edge0053.dst
private def trieNode0091StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0091StepGain : Int := edge0053.gain + (0)
private def trieNode0091Labels : List SmokeLabel :=
  trieNode0090Labels ++ trieNode0091StepLabels
private def trieNode0091Gain : Int :=
  trieNode0090Gain + trieNode0091StepGain

private theorem trieNode0091StepRun :
    BellmanLabelStepRun SmokeStep trieNode0090State trieNode0091State
      trieNode0091StepLabels trieNode0091StepGain := by
  unfold trieNode0090State trieNode0091State
  unfold trieNode0091StepLabels trieNode0091StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0053
  exact BellmanLabelStepRun.nil trieNode0091State

private theorem trieNode0091Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0091State
      trieNode0091Labels trieNode0091Gain := by
  unfold trieNode0091Labels trieNode0091Gain
  exact BellmanLabelStepRun.append trieNode0090Run trieNode0091StepRun

private def trieNode0092State : State := edge0083.dst
private def trieNode0092StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0092StepGain : Int := edge0083.gain + (0)
private def trieNode0092Labels : List SmokeLabel :=
  trieNode0091Labels ++ trieNode0092StepLabels
private def trieNode0092Gain : Int :=
  trieNode0091Gain + trieNode0092StepGain

private theorem trieNode0092StepRun :
    BellmanLabelStepRun SmokeStep trieNode0091State trieNode0092State
      trieNode0092StepLabels trieNode0092StepGain := by
  unfold trieNode0091State trieNode0092State
  unfold trieNode0092StepLabels trieNode0092StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0083
  exact BellmanLabelStepRun.nil trieNode0092State

private theorem trieNode0092Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0092State
      trieNode0092Labels trieNode0092Gain := by
  unfold trieNode0092Labels trieNode0092Gain
  exact BellmanLabelStepRun.append trieNode0091Run trieNode0092StepRun

private def trieNode0093State : State := edge0111.dst
private def trieNode0093StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0093StepGain : Int := edge0111.gain + (0)
private def trieNode0093Labels : List SmokeLabel :=
  trieNode0092Labels ++ trieNode0093StepLabels
private def trieNode0093Gain : Int :=
  trieNode0092Gain + trieNode0093StepGain

private theorem trieNode0093StepRun :
    BellmanLabelStepRun SmokeStep trieNode0092State trieNode0093State
      trieNode0093StepLabels trieNode0093StepGain := by
  unfold trieNode0092State trieNode0093State
  unfold trieNode0093StepLabels trieNode0093StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0111
  exact BellmanLabelStepRun.nil trieNode0093State

private theorem trieNode0093Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0093State
      trieNode0093Labels trieNode0093Gain := by
  unfold trieNode0093Labels trieNode0093Gain
  exact BellmanLabelStepRun.append trieNode0092Run trieNode0093StepRun

private def trieNode0094State : State := edge0126.dst
private def trieNode0094StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0094StepGain : Int := edge0126.gain + (0)
private def trieNode0094Labels : List SmokeLabel :=
  trieNode0002Labels ++ trieNode0094StepLabels
private def trieNode0094Gain : Int :=
  trieNode0002Gain + trieNode0094StepGain

private theorem trieNode0094StepRun :
    BellmanLabelStepRun SmokeStep trieNode0002State trieNode0094State
      trieNode0094StepLabels trieNode0094StepGain := by
  unfold trieNode0002State trieNode0094State
  unfold trieNode0094StepLabels trieNode0094StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  exact BellmanLabelStepRun.nil trieNode0094State

private theorem trieNode0094Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0094State
      trieNode0094Labels trieNode0094Gain := by
  unfold trieNode0094Labels trieNode0094Gain
  exact BellmanLabelStepRun.append trieNode0002Run trieNode0094StepRun

private def trieNode0095State : State := edge0130.dst
private def trieNode0095StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0095StepGain : Int := edge0130.gain + (0)
private def trieNode0095Labels : List SmokeLabel :=
  trieNode0094Labels ++ trieNode0095StepLabels
private def trieNode0095Gain : Int :=
  trieNode0094Gain + trieNode0095StepGain

private theorem trieNode0095StepRun :
    BellmanLabelStepRun SmokeStep trieNode0094State trieNode0095State
      trieNode0095StepLabels trieNode0095StepGain := by
  unfold trieNode0094State trieNode0095State
  unfold trieNode0095StepLabels trieNode0095StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0130
  exact BellmanLabelStepRun.nil trieNode0095State

private theorem trieNode0095Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0095State
      trieNode0095Labels trieNode0095Gain := by
  unfold trieNode0095Labels trieNode0095Gain
  exact BellmanLabelStepRun.append trieNode0094Run trieNode0095StepRun

private def trieNode0096State : State := edge0135.dst
private def trieNode0096StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0096StepGain : Int := edge0135.gain + (0)
private def trieNode0096Labels : List SmokeLabel :=
  trieNode0095Labels ++ trieNode0096StepLabels
private def trieNode0096Gain : Int :=
  trieNode0095Gain + trieNode0096StepGain

private theorem trieNode0096StepRun :
    BellmanLabelStepRun SmokeStep trieNode0095State trieNode0096State
      trieNode0096StepLabels trieNode0096StepGain := by
  unfold trieNode0095State trieNode0096State
  unfold trieNode0096StepLabels trieNode0096StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  exact BellmanLabelStepRun.nil trieNode0096State

private theorem trieNode0096Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0096State
      trieNode0096Labels trieNode0096Gain := by
  unfold trieNode0096Labels trieNode0096Gain
  exact BellmanLabelStepRun.append trieNode0095Run trieNode0096StepRun

private def trieNode0097State : State := edge0145.dst
private def trieNode0097StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0097StepGain : Int := edge0145.gain + (0)
private def trieNode0097Labels : List SmokeLabel :=
  trieNode0096Labels ++ trieNode0097StepLabels
private def trieNode0097Gain : Int :=
  trieNode0096Gain + trieNode0097StepGain

private theorem trieNode0097StepRun :
    BellmanLabelStepRun SmokeStep trieNode0096State trieNode0097State
      trieNode0097StepLabels trieNode0097StepGain := by
  unfold trieNode0096State trieNode0097State
  unfold trieNode0097StepLabels trieNode0097StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  exact BellmanLabelStepRun.nil trieNode0097State

private theorem trieNode0097Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0097State
      trieNode0097Labels trieNode0097Gain := by
  unfold trieNode0097Labels trieNode0097Gain
  exact BellmanLabelStepRun.append trieNode0096Run trieNode0097StepRun

private def trieNode0098State : State := edge0158.dst
private def trieNode0098StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0098StepGain : Int := edge0158.gain + (0)
private def trieNode0098Labels : List SmokeLabel :=
  trieNode0097Labels ++ trieNode0098StepLabels
private def trieNode0098Gain : Int :=
  trieNode0097Gain + trieNode0098StepGain

private theorem trieNode0098StepRun :
    BellmanLabelStepRun SmokeStep trieNode0097State trieNode0098State
      trieNode0098StepLabels trieNode0098StepGain := by
  unfold trieNode0097State trieNode0098State
  unfold trieNode0098StepLabels trieNode0098StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  exact BellmanLabelStepRun.nil trieNode0098State

private theorem trieNode0098Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0098State
      trieNode0098Labels trieNode0098Gain := by
  unfold trieNode0098Labels trieNode0098Gain
  exact BellmanLabelStepRun.append trieNode0097Run trieNode0098StepRun

private def trieNode0099State : State := edge0173.dst
private def trieNode0099StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0099StepGain : Int := edge0173.gain + (0)
private def trieNode0099Labels : List SmokeLabel :=
  trieNode0098Labels ++ trieNode0099StepLabels
private def trieNode0099Gain : Int :=
  trieNode0098Gain + trieNode0099StepGain

private theorem trieNode0099StepRun :
    BellmanLabelStepRun SmokeStep trieNode0098State trieNode0099State
      trieNode0099StepLabels trieNode0099StepGain := by
  unfold trieNode0098State trieNode0099State
  unfold trieNode0099StepLabels trieNode0099StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  exact BellmanLabelStepRun.nil trieNode0099State

private theorem trieNode0099Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0099State
      trieNode0099Labels trieNode0099Gain := by
  unfold trieNode0099Labels trieNode0099Gain
  exact BellmanLabelStepRun.append trieNode0098Run trieNode0099StepRun

private def trieNode0100State : State := edge0190.dst
private def trieNode0100StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0100StepGain : Int := edge0190.gain + (0)
private def trieNode0100Labels : List SmokeLabel :=
  trieNode0099Labels ++ trieNode0100StepLabels
private def trieNode0100Gain : Int :=
  trieNode0099Gain + trieNode0100StepGain

private theorem trieNode0100StepRun :
    BellmanLabelStepRun SmokeStep trieNode0099State trieNode0100State
      trieNode0100StepLabels trieNode0100StepGain := by
  unfold trieNode0099State trieNode0100State
  unfold trieNode0100StepLabels trieNode0100StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  exact BellmanLabelStepRun.nil trieNode0100State

private theorem trieNode0100Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0100State
      trieNode0100Labels trieNode0100Gain := by
  unfold trieNode0100Labels trieNode0100Gain
  exact BellmanLabelStepRun.append trieNode0099Run trieNode0100StepRun

private def trieNode0101State : State := edge0210.dst
private def trieNode0101StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0101StepGain : Int := edge0210.gain + (0)
private def trieNode0101Labels : List SmokeLabel :=
  trieNode0100Labels ++ trieNode0101StepLabels
private def trieNode0101Gain : Int :=
  trieNode0100Gain + trieNode0101StepGain

private theorem trieNode0101StepRun :
    BellmanLabelStepRun SmokeStep trieNode0100State trieNode0101State
      trieNode0101StepLabels trieNode0101StepGain := by
  unfold trieNode0100State trieNode0101State
  unfold trieNode0101StepLabels trieNode0101StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  exact BellmanLabelStepRun.nil trieNode0101State

private theorem trieNode0101Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0101State
      trieNode0101Labels trieNode0101Gain := by
  unfold trieNode0101Labels trieNode0101Gain
  exact BellmanLabelStepRun.append trieNode0100Run trieNode0101StepRun

private def trieNode0102State : State := edge0006.dst
private def trieNode0102StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0102StepGain : Int := edge0006.gain + (0)
private def trieNode0102Labels : List SmokeLabel :=
  trieNode0101Labels ++ trieNode0102StepLabels
private def trieNode0102Gain : Int :=
  trieNode0101Gain + trieNode0102StepGain

private theorem trieNode0102StepRun :
    BellmanLabelStepRun SmokeStep trieNode0101State trieNode0102State
      trieNode0102StepLabels trieNode0102StepGain := by
  unfold trieNode0101State trieNode0102State
  unfold trieNode0102StepLabels trieNode0102StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  exact BellmanLabelStepRun.nil trieNode0102State

private theorem trieNode0102Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0102State
      trieNode0102Labels trieNode0102Gain := by
  unfold trieNode0102Labels trieNode0102Gain
  exact BellmanLabelStepRun.append trieNode0101Run trieNode0102StepRun

private def trieNode0103State : State := edge0045.dst
private def trieNode0103StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0103StepGain : Int := edge0045.gain + (0)
private def trieNode0103Labels : List SmokeLabel :=
  trieNode0102Labels ++ trieNode0103StepLabels
private def trieNode0103Gain : Int :=
  trieNode0102Gain + trieNode0103StepGain

private theorem trieNode0103StepRun :
    BellmanLabelStepRun SmokeStep trieNode0102State trieNode0103State
      trieNode0103StepLabels trieNode0103StepGain := by
  unfold trieNode0102State trieNode0103State
  unfold trieNode0103StepLabels trieNode0103StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  exact BellmanLabelStepRun.nil trieNode0103State

private theorem trieNode0103Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0103State
      trieNode0103Labels trieNode0103Gain := by
  unfold trieNode0103Labels trieNode0103Gain
  exact BellmanLabelStepRun.append trieNode0102Run trieNode0103StepRun

private def trieNode0104State : State := edge0080.dst
private def trieNode0104StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0104StepGain : Int := edge0080.gain + (0)
private def trieNode0104Labels : List SmokeLabel :=
  trieNode0103Labels ++ trieNode0104StepLabels
private def trieNode0104Gain : Int :=
  trieNode0103Gain + trieNode0104StepGain

private theorem trieNode0104StepRun :
    BellmanLabelStepRun SmokeStep trieNode0103State trieNode0104State
      trieNode0104StepLabels trieNode0104StepGain := by
  unfold trieNode0103State trieNode0104State
  unfold trieNode0104StepLabels trieNode0104StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  exact BellmanLabelStepRun.nil trieNode0104State

private theorem trieNode0104Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0104State
      trieNode0104Labels trieNode0104Gain := by
  unfold trieNode0104Labels trieNode0104Gain
  exact BellmanLabelStepRun.append trieNode0103Run trieNode0104StepRun

private def trieNode0105State : State := edge0123.dst
private def trieNode0105StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0105StepGain : Int := edge0123.gain + (0)
private def trieNode0105Labels : List SmokeLabel :=
  trieNode0104Labels ++ trieNode0105StepLabels
private def trieNode0105Gain : Int :=
  trieNode0104Gain + trieNode0105StepGain

private theorem trieNode0105StepRun :
    BellmanLabelStepRun SmokeStep trieNode0104State trieNode0105State
      trieNode0105StepLabels trieNode0105StepGain := by
  unfold trieNode0104State trieNode0105State
  unfold trieNode0105StepLabels trieNode0105StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil trieNode0105State

private theorem trieNode0105Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0105State
      trieNode0105Labels trieNode0105Gain := by
  unfold trieNode0105Labels trieNode0105Gain
  exact BellmanLabelStepRun.append trieNode0104Run trieNode0105StepRun

private def trieNode0106State : State := edge0136.dst
private def trieNode0106StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0106StepGain : Int := edge0136.gain + (0)
private def trieNode0106Labels : List SmokeLabel :=
  trieNode0095Labels ++ trieNode0106StepLabels
private def trieNode0106Gain : Int :=
  trieNode0095Gain + trieNode0106StepGain

private theorem trieNode0106StepRun :
    BellmanLabelStepRun SmokeStep trieNode0095State trieNode0106State
      trieNode0106StepLabels trieNode0106StepGain := by
  unfold trieNode0095State trieNode0106State
  unfold trieNode0106StepLabels trieNode0106StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  exact BellmanLabelStepRun.nil trieNode0106State

private theorem trieNode0106Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0106State
      trieNode0106Labels trieNode0106Gain := by
  unfold trieNode0106Labels trieNode0106Gain
  exact BellmanLabelStepRun.append trieNode0095Run trieNode0106StepRun

private def trieNode0107State : State := edge0148.dst
private def trieNode0107StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0107StepGain : Int := edge0148.gain + (0)
private def trieNode0107Labels : List SmokeLabel :=
  trieNode0106Labels ++ trieNode0107StepLabels
private def trieNode0107Gain : Int :=
  trieNode0106Gain + trieNode0107StepGain

private theorem trieNode0107StepRun :
    BellmanLabelStepRun SmokeStep trieNode0106State trieNode0107State
      trieNode0107StepLabels trieNode0107StepGain := by
  unfold trieNode0106State trieNode0107State
  unfold trieNode0107StepLabels trieNode0107StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  exact BellmanLabelStepRun.nil trieNode0107State

private theorem trieNode0107Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0107State
      trieNode0107Labels trieNode0107Gain := by
  unfold trieNode0107Labels trieNode0107Gain
  exact BellmanLabelStepRun.append trieNode0106Run trieNode0107StepRun

private def trieNode0108State : State := edge0161.dst
private def trieNode0108StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0108StepGain : Int := edge0161.gain + (0)
private def trieNode0108Labels : List SmokeLabel :=
  trieNode0107Labels ++ trieNode0108StepLabels
private def trieNode0108Gain : Int :=
  trieNode0107Gain + trieNode0108StepGain

private theorem trieNode0108StepRun :
    BellmanLabelStepRun SmokeStep trieNode0107State trieNode0108State
      trieNode0108StepLabels trieNode0108StepGain := by
  unfold trieNode0107State trieNode0108State
  unfold trieNode0108StepLabels trieNode0108StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  exact BellmanLabelStepRun.nil trieNode0108State

private theorem trieNode0108Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0108State
      trieNode0108Labels trieNode0108Gain := by
  unfold trieNode0108Labels trieNode0108Gain
  exact BellmanLabelStepRun.append trieNode0107Run trieNode0108StepRun

private def trieNode0109State : State := edge0176.dst
private def trieNode0109StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0109StepGain : Int := edge0176.gain + (0)
private def trieNode0109Labels : List SmokeLabel :=
  trieNode0108Labels ++ trieNode0109StepLabels
private def trieNode0109Gain : Int :=
  trieNode0108Gain + trieNode0109StepGain

private theorem trieNode0109StepRun :
    BellmanLabelStepRun SmokeStep trieNode0108State trieNode0109State
      trieNode0109StepLabels trieNode0109StepGain := by
  unfold trieNode0108State trieNode0109State
  unfold trieNode0109StepLabels trieNode0109StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  exact BellmanLabelStepRun.nil trieNode0109State

private theorem trieNode0109Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0109State
      trieNode0109Labels trieNode0109Gain := by
  unfold trieNode0109Labels trieNode0109Gain
  exact BellmanLabelStepRun.append trieNode0108Run trieNode0109StepRun

private def trieNode0110State : State := edge0193.dst
private def trieNode0110StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0110StepGain : Int := edge0193.gain + (0)
private def trieNode0110Labels : List SmokeLabel :=
  trieNode0109Labels ++ trieNode0110StepLabels
private def trieNode0110Gain : Int :=
  trieNode0109Gain + trieNode0110StepGain

private theorem trieNode0110StepRun :
    BellmanLabelStepRun SmokeStep trieNode0109State trieNode0110State
      trieNode0110StepLabels trieNode0110StepGain := by
  unfold trieNode0109State trieNode0110State
  unfold trieNode0110StepLabels trieNode0110StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  exact BellmanLabelStepRun.nil trieNode0110State

private theorem trieNode0110Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0110State
      trieNode0110Labels trieNode0110Gain := by
  unfold trieNode0110Labels trieNode0110Gain
  exact BellmanLabelStepRun.append trieNode0109Run trieNode0110StepRun

private def trieNode0111State : State := edge0213.dst
private def trieNode0111StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0111StepGain : Int := edge0213.gain + (0)
private def trieNode0111Labels : List SmokeLabel :=
  trieNode0110Labels ++ trieNode0111StepLabels
private def trieNode0111Gain : Int :=
  trieNode0110Gain + trieNode0111StepGain

private theorem trieNode0111StepRun :
    BellmanLabelStepRun SmokeStep trieNode0110State trieNode0111State
      trieNode0111StepLabels trieNode0111StepGain := by
  unfold trieNode0110State trieNode0111State
  unfold trieNode0111StepLabels trieNode0111StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  exact BellmanLabelStepRun.nil trieNode0111State

private theorem trieNode0111Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0111State
      trieNode0111Labels trieNode0111Gain := by
  unfold trieNode0111Labels trieNode0111Gain
  exact BellmanLabelStepRun.append trieNode0110Run trieNode0111StepRun

private def trieNode0112State : State := edge0011.dst
private def trieNode0112StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0112StepGain : Int := edge0011.gain + (0)
private def trieNode0112Labels : List SmokeLabel :=
  trieNode0111Labels ++ trieNode0112StepLabels
private def trieNode0112Gain : Int :=
  trieNode0111Gain + trieNode0112StepGain

private theorem trieNode0112StepRun :
    BellmanLabelStepRun SmokeStep trieNode0111State trieNode0112State
      trieNode0112StepLabels trieNode0112StepGain := by
  unfold trieNode0111State trieNode0112State
  unfold trieNode0112StepLabels trieNode0112StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  exact BellmanLabelStepRun.nil trieNode0112State

private theorem trieNode0112Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0112State
      trieNode0112Labels trieNode0112Gain := by
  unfold trieNode0112Labels trieNode0112Gain
  exact BellmanLabelStepRun.append trieNode0111Run trieNode0112StepRun

private def trieNode0113State : State := edge0050.dst
private def trieNode0113StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0113StepGain : Int := edge0050.gain + (0)
private def trieNode0113Labels : List SmokeLabel :=
  trieNode0112Labels ++ trieNode0113StepLabels
private def trieNode0113Gain : Int :=
  trieNode0112Gain + trieNode0113StepGain

private theorem trieNode0113StepRun :
    BellmanLabelStepRun SmokeStep trieNode0112State trieNode0113State
      trieNode0113StepLabels trieNode0113StepGain := by
  unfold trieNode0112State trieNode0113State
  unfold trieNode0113StepLabels trieNode0113StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  exact BellmanLabelStepRun.nil trieNode0113State

private theorem trieNode0113Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0113State
      trieNode0113Labels trieNode0113Gain := by
  unfold trieNode0113Labels trieNode0113Gain
  exact BellmanLabelStepRun.append trieNode0112Run trieNode0113StepRun

private def trieNode0114State : State := edge0086.dst
private def trieNode0114StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0114StepGain : Int := edge0086.gain + (0)
private def trieNode0114Labels : List SmokeLabel :=
  trieNode0113Labels ++ trieNode0114StepLabels
private def trieNode0114Gain : Int :=
  trieNode0113Gain + trieNode0114StepGain

private theorem trieNode0114StepRun :
    BellmanLabelStepRun SmokeStep trieNode0113State trieNode0114State
      trieNode0114StepLabels trieNode0114StepGain := by
  unfold trieNode0113State trieNode0114State
  unfold trieNode0114StepLabels trieNode0114StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  exact BellmanLabelStepRun.nil trieNode0114State

private theorem trieNode0114Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0114State
      trieNode0114Labels trieNode0114Gain := by
  unfold trieNode0114Labels trieNode0114Gain
  exact BellmanLabelStepRun.append trieNode0113Run trieNode0114StepRun

private def trieNode0115State : State := edge0120.dst
private def trieNode0115StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0115StepGain : Int := edge0120.gain + (0)
private def trieNode0115Labels : List SmokeLabel :=
  trieNode0114Labels ++ trieNode0115StepLabels
private def trieNode0115Gain : Int :=
  trieNode0114Gain + trieNode0115StepGain

private theorem trieNode0115StepRun :
    BellmanLabelStepRun SmokeStep trieNode0114State trieNode0115State
      trieNode0115StepLabels trieNode0115StepGain := by
  unfold trieNode0114State trieNode0115State
  unfold trieNode0115StepLabels trieNode0115StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil trieNode0115State

private theorem trieNode0115Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0115State
      trieNode0115Labels trieNode0115Gain := by
  unfold trieNode0115Labels trieNode0115Gain
  exact BellmanLabelStepRun.append trieNode0114Run trieNode0115StepRun

private def trieNode0116State : State := edge0131.dst
private def trieNode0116StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0116StepGain : Int := edge0131.gain + (0)
private def trieNode0116Labels : List SmokeLabel :=
  trieNode0094Labels ++ trieNode0116StepLabels
private def trieNode0116Gain : Int :=
  trieNode0094Gain + trieNode0116StepGain

private theorem trieNode0116StepRun :
    BellmanLabelStepRun SmokeStep trieNode0094State trieNode0116State
      trieNode0116StepLabels trieNode0116StepGain := by
  unfold trieNode0094State trieNode0116State
  unfold trieNode0116StepLabels trieNode0116StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  exact BellmanLabelStepRun.nil trieNode0116State

private theorem trieNode0116Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0116State
      trieNode0116Labels trieNode0116Gain := by
  unfold trieNode0116Labels trieNode0116Gain
  exact BellmanLabelStepRun.append trieNode0094Run trieNode0116StepRun

private def trieNode0117State : State := edge0139.dst
private def trieNode0117StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0117StepGain : Int := edge0139.gain + (0)
private def trieNode0117Labels : List SmokeLabel :=
  trieNode0116Labels ++ trieNode0117StepLabels
private def trieNode0117Gain : Int :=
  trieNode0116Gain + trieNode0117StepGain

private theorem trieNode0117StepRun :
    BellmanLabelStepRun SmokeStep trieNode0116State trieNode0117State
      trieNode0117StepLabels trieNode0117StepGain := by
  unfold trieNode0116State trieNode0117State
  unfold trieNode0117StepLabels trieNode0117StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0139
  exact BellmanLabelStepRun.nil trieNode0117State

private theorem trieNode0117Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0117State
      trieNode0117Labels trieNode0117Gain := by
  unfold trieNode0117Labels trieNode0117Gain
  exact BellmanLabelStepRun.append trieNode0116Run trieNode0117StepRun

private def trieNode0118State : State := edge0145.dst
private def trieNode0118StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0118StepGain : Int := edge0145.gain + (0)
private def trieNode0118Labels : List SmokeLabel :=
  trieNode0117Labels ++ trieNode0118StepLabels
private def trieNode0118Gain : Int :=
  trieNode0117Gain + trieNode0118StepGain

private theorem trieNode0118StepRun :
    BellmanLabelStepRun SmokeStep trieNode0117State trieNode0118State
      trieNode0118StepLabels trieNode0118StepGain := by
  unfold trieNode0117State trieNode0118State
  unfold trieNode0118StepLabels trieNode0118StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  exact BellmanLabelStepRun.nil trieNode0118State

private theorem trieNode0118Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0118State
      trieNode0118Labels trieNode0118Gain := by
  unfold trieNode0118Labels trieNode0118Gain
  exact BellmanLabelStepRun.append trieNode0117Run trieNode0118StepRun

private def trieNode0119State : State := edge0158.dst
private def trieNode0119StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0119StepGain : Int := edge0158.gain + (0)
private def trieNode0119Labels : List SmokeLabel :=
  trieNode0118Labels ++ trieNode0119StepLabels
private def trieNode0119Gain : Int :=
  trieNode0118Gain + trieNode0119StepGain

private theorem trieNode0119StepRun :
    BellmanLabelStepRun SmokeStep trieNode0118State trieNode0119State
      trieNode0119StepLabels trieNode0119StepGain := by
  unfold trieNode0118State trieNode0119State
  unfold trieNode0119StepLabels trieNode0119StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  exact BellmanLabelStepRun.nil trieNode0119State

private theorem trieNode0119Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0119State
      trieNode0119Labels trieNode0119Gain := by
  unfold trieNode0119Labels trieNode0119Gain
  exact BellmanLabelStepRun.append trieNode0118Run trieNode0119StepRun

private def trieNode0120State : State := edge0173.dst
private def trieNode0120StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0120StepGain : Int := edge0173.gain + (0)
private def trieNode0120Labels : List SmokeLabel :=
  trieNode0119Labels ++ trieNode0120StepLabels
private def trieNode0120Gain : Int :=
  trieNode0119Gain + trieNode0120StepGain

private theorem trieNode0120StepRun :
    BellmanLabelStepRun SmokeStep trieNode0119State trieNode0120State
      trieNode0120StepLabels trieNode0120StepGain := by
  unfold trieNode0119State trieNode0120State
  unfold trieNode0120StepLabels trieNode0120StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  exact BellmanLabelStepRun.nil trieNode0120State

private theorem trieNode0120Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0120State
      trieNode0120Labels trieNode0120Gain := by
  unfold trieNode0120Labels trieNode0120Gain
  exact BellmanLabelStepRun.append trieNode0119Run trieNode0120StepRun

private def trieNode0121State : State := edge0190.dst
private def trieNode0121StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0121StepGain : Int := edge0190.gain + (0)
private def trieNode0121Labels : List SmokeLabel :=
  trieNode0120Labels ++ trieNode0121StepLabels
private def trieNode0121Gain : Int :=
  trieNode0120Gain + trieNode0121StepGain

private theorem trieNode0121StepRun :
    BellmanLabelStepRun SmokeStep trieNode0120State trieNode0121State
      trieNode0121StepLabels trieNode0121StepGain := by
  unfold trieNode0120State trieNode0121State
  unfold trieNode0121StepLabels trieNode0121StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  exact BellmanLabelStepRun.nil trieNode0121State

private theorem trieNode0121Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0121State
      trieNode0121Labels trieNode0121Gain := by
  unfold trieNode0121Labels trieNode0121Gain
  exact BellmanLabelStepRun.append trieNode0120Run trieNode0121StepRun

private def trieNode0122State : State := edge0210.dst
private def trieNode0122StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0122StepGain : Int := edge0210.gain + (0)
private def trieNode0122Labels : List SmokeLabel :=
  trieNode0121Labels ++ trieNode0122StepLabels
private def trieNode0122Gain : Int :=
  trieNode0121Gain + trieNode0122StepGain

private theorem trieNode0122StepRun :
    BellmanLabelStepRun SmokeStep trieNode0121State trieNode0122State
      trieNode0122StepLabels trieNode0122StepGain := by
  unfold trieNode0121State trieNode0122State
  unfold trieNode0122StepLabels trieNode0122StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  exact BellmanLabelStepRun.nil trieNode0122State

private theorem trieNode0122Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0122State
      trieNode0122Labels trieNode0122Gain := by
  unfold trieNode0122Labels trieNode0122Gain
  exact BellmanLabelStepRun.append trieNode0121Run trieNode0122StepRun

private def trieNode0123State : State := edge0006.dst
private def trieNode0123StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0123StepGain : Int := edge0006.gain + (0)
private def trieNode0123Labels : List SmokeLabel :=
  trieNode0122Labels ++ trieNode0123StepLabels
private def trieNode0123Gain : Int :=
  trieNode0122Gain + trieNode0123StepGain

private theorem trieNode0123StepRun :
    BellmanLabelStepRun SmokeStep trieNode0122State trieNode0123State
      trieNode0123StepLabels trieNode0123StepGain := by
  unfold trieNode0122State trieNode0123State
  unfold trieNode0123StepLabels trieNode0123StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  exact BellmanLabelStepRun.nil trieNode0123State

private theorem trieNode0123Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0123State
      trieNode0123Labels trieNode0123Gain := by
  unfold trieNode0123Labels trieNode0123Gain
  exact BellmanLabelStepRun.append trieNode0122Run trieNode0123StepRun

private def trieNode0124State : State := edge0045.dst
private def trieNode0124StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0124StepGain : Int := edge0045.gain + (0)
private def trieNode0124Labels : List SmokeLabel :=
  trieNode0123Labels ++ trieNode0124StepLabels
private def trieNode0124Gain : Int :=
  trieNode0123Gain + trieNode0124StepGain

private theorem trieNode0124StepRun :
    BellmanLabelStepRun SmokeStep trieNode0123State trieNode0124State
      trieNode0124StepLabels trieNode0124StepGain := by
  unfold trieNode0123State trieNode0124State
  unfold trieNode0124StepLabels trieNode0124StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  exact BellmanLabelStepRun.nil trieNode0124State

private theorem trieNode0124Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0124State
      trieNode0124Labels trieNode0124Gain := by
  unfold trieNode0124Labels trieNode0124Gain
  exact BellmanLabelStepRun.append trieNode0123Run trieNode0124StepRun

private def trieNode0125State : State := edge0080.dst
private def trieNode0125StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0125StepGain : Int := edge0080.gain + (0)
private def trieNode0125Labels : List SmokeLabel :=
  trieNode0124Labels ++ trieNode0125StepLabels
private def trieNode0125Gain : Int :=
  trieNode0124Gain + trieNode0125StepGain

private theorem trieNode0125StepRun :
    BellmanLabelStepRun SmokeStep trieNode0124State trieNode0125State
      trieNode0125StepLabels trieNode0125StepGain := by
  unfold trieNode0124State trieNode0125State
  unfold trieNode0125StepLabels trieNode0125StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  exact BellmanLabelStepRun.nil trieNode0125State

private theorem trieNode0125Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0125State
      trieNode0125Labels trieNode0125Gain := by
  unfold trieNode0125Labels trieNode0125Gain
  exact BellmanLabelStepRun.append trieNode0124Run trieNode0125StepRun

private def trieNode0126State : State := edge0123.dst
private def trieNode0126StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0126StepGain : Int := edge0123.gain + (0)
private def trieNode0126Labels : List SmokeLabel :=
  trieNode0125Labels ++ trieNode0126StepLabels
private def trieNode0126Gain : Int :=
  trieNode0125Gain + trieNode0126StepGain

private theorem trieNode0126StepRun :
    BellmanLabelStepRun SmokeStep trieNode0125State trieNode0126State
      trieNode0126StepLabels trieNode0126StepGain := by
  unfold trieNode0125State trieNode0126State
  unfold trieNode0126StepLabels trieNode0126StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil trieNode0126State

private theorem trieNode0126Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0126State
      trieNode0126Labels trieNode0126Gain := by
  unfold trieNode0126Labels trieNode0126Gain
  exact BellmanLabelStepRun.append trieNode0125Run trieNode0126StepRun

private def trieNode0127State : State := edge0140.dst
private def trieNode0127StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0127StepGain : Int := edge0140.gain + (0)
private def trieNode0127Labels : List SmokeLabel :=
  trieNode0116Labels ++ trieNode0127StepLabels
private def trieNode0127Gain : Int :=
  trieNode0116Gain + trieNode0127StepGain

private theorem trieNode0127StepRun :
    BellmanLabelStepRun SmokeStep trieNode0116State trieNode0127State
      trieNode0127StepLabels trieNode0127StepGain := by
  unfold trieNode0116State trieNode0127State
  unfold trieNode0127StepLabels trieNode0127StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0140
  exact BellmanLabelStepRun.nil trieNode0127State

private theorem trieNode0127Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0127State
      trieNode0127Labels trieNode0127Gain := by
  unfold trieNode0127Labels trieNode0127Gain
  exact BellmanLabelStepRun.append trieNode0116Run trieNode0127StepRun

private def trieNode0128State : State := edge0152.dst
private def trieNode0128StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0128StepGain : Int := edge0152.gain + (0)
private def trieNode0128Labels : List SmokeLabel :=
  trieNode0127Labels ++ trieNode0128StepLabels
private def trieNode0128Gain : Int :=
  trieNode0127Gain + trieNode0128StepGain

private theorem trieNode0128StepRun :
    BellmanLabelStepRun SmokeStep trieNode0127State trieNode0128State
      trieNode0128StepLabels trieNode0128StepGain := by
  unfold trieNode0127State trieNode0128State
  unfold trieNode0128StepLabels trieNode0128StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0152
  exact BellmanLabelStepRun.nil trieNode0128State

private theorem trieNode0128Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0128State
      trieNode0128Labels trieNode0128Gain := by
  unfold trieNode0128Labels trieNode0128Gain
  exact BellmanLabelStepRun.append trieNode0127Run trieNode0128StepRun

private def trieNode0129State : State := edge0166.dst
private def trieNode0129StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0129StepGain : Int := edge0166.gain + (0)
private def trieNode0129Labels : List SmokeLabel :=
  trieNode0128Labels ++ trieNode0129StepLabels
private def trieNode0129Gain : Int :=
  trieNode0128Gain + trieNode0129StepGain

private theorem trieNode0129StepRun :
    BellmanLabelStepRun SmokeStep trieNode0128State trieNode0129State
      trieNode0129StepLabels trieNode0129StepGain := by
  unfold trieNode0128State trieNode0129State
  unfold trieNode0129StepLabels trieNode0129StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0166
  exact BellmanLabelStepRun.nil trieNode0129State

private theorem trieNode0129Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0129State
      trieNode0129Labels trieNode0129Gain := by
  unfold trieNode0129Labels trieNode0129Gain
  exact BellmanLabelStepRun.append trieNode0128Run trieNode0129StepRun

private def trieNode0130State : State := edge0182.dst
private def trieNode0130StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0130StepGain : Int := edge0182.gain + (0)
private def trieNode0130Labels : List SmokeLabel :=
  trieNode0129Labels ++ trieNode0130StepLabels
private def trieNode0130Gain : Int :=
  trieNode0129Gain + trieNode0130StepGain

private theorem trieNode0130StepRun :
    BellmanLabelStepRun SmokeStep trieNode0129State trieNode0130State
      trieNode0130StepLabels trieNode0130StepGain := by
  unfold trieNode0129State trieNode0130State
  unfold trieNode0130StepLabels trieNode0130StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0182
  exact BellmanLabelStepRun.nil trieNode0130State

private theorem trieNode0130Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0130State
      trieNode0130Labels trieNode0130Gain := by
  unfold trieNode0130Labels trieNode0130Gain
  exact BellmanLabelStepRun.append trieNode0129Run trieNode0130StepRun

private def trieNode0131State : State := edge0200.dst
private def trieNode0131StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0131StepGain : Int := edge0200.gain + (0)
private def trieNode0131Labels : List SmokeLabel :=
  trieNode0130Labels ++ trieNode0131StepLabels
private def trieNode0131Gain : Int :=
  trieNode0130Gain + trieNode0131StepGain

private theorem trieNode0131StepRun :
    BellmanLabelStepRun SmokeStep trieNode0130State trieNode0131State
      trieNode0131StepLabels trieNode0131StepGain := by
  unfold trieNode0130State trieNode0131State
  unfold trieNode0131StepLabels trieNode0131StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0200
  exact BellmanLabelStepRun.nil trieNode0131State

private theorem trieNode0131Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0131State
      trieNode0131Labels trieNode0131Gain := by
  unfold trieNode0131Labels trieNode0131Gain
  exact BellmanLabelStepRun.append trieNode0130Run trieNode0131StepRun

private def trieNode0132State : State := edge0223.dst
private def trieNode0132StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0132StepGain : Int := edge0223.gain + (0)
private def trieNode0132Labels : List SmokeLabel :=
  trieNode0131Labels ++ trieNode0132StepLabels
private def trieNode0132Gain : Int :=
  trieNode0131Gain + trieNode0132StepGain

private theorem trieNode0132StepRun :
    BellmanLabelStepRun SmokeStep trieNode0131State trieNode0132State
      trieNode0132StepLabels trieNode0132StepGain := by
  unfold trieNode0131State trieNode0132State
  unfold trieNode0132StepLabels trieNode0132StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0223
  exact BellmanLabelStepRun.nil trieNode0132State

private theorem trieNode0132Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0132State
      trieNode0132Labels trieNode0132Gain := by
  unfold trieNode0132Labels trieNode0132Gain
  exact BellmanLabelStepRun.append trieNode0131Run trieNode0132StepRun

private def trieNode0133State : State := edge0027.dst
private def trieNode0133StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0133StepGain : Int := edge0027.gain + (0)
private def trieNode0133Labels : List SmokeLabel :=
  trieNode0132Labels ++ trieNode0133StepLabels
private def trieNode0133Gain : Int :=
  trieNode0132Gain + trieNode0133StepGain

private theorem trieNode0133StepRun :
    BellmanLabelStepRun SmokeStep trieNode0132State trieNode0133State
      trieNode0133StepLabels trieNode0133StepGain := by
  unfold trieNode0132State trieNode0133State
  unfold trieNode0133StepLabels trieNode0133StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0027
  exact BellmanLabelStepRun.nil trieNode0133State

private theorem trieNode0133Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0133State
      trieNode0133Labels trieNode0133Gain := by
  unfold trieNode0133Labels trieNode0133Gain
  exact BellmanLabelStepRun.append trieNode0132Run trieNode0133StepRun

private def trieNode0134State : State := edge0044.dst
private def trieNode0134StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0134StepGain : Int := edge0044.gain + (0)
private def trieNode0134Labels : List SmokeLabel :=
  trieNode0133Labels ++ trieNode0134StepLabels
private def trieNode0134Gain : Int :=
  trieNode0133Gain + trieNode0134StepGain

private theorem trieNode0134StepRun :
    BellmanLabelStepRun SmokeStep trieNode0133State trieNode0134State
      trieNode0134StepLabels trieNode0134StepGain := by
  unfold trieNode0133State trieNode0134State
  unfold trieNode0134StepLabels trieNode0134StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0044
  exact BellmanLabelStepRun.nil trieNode0134State

private theorem trieNode0134Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0134State
      trieNode0134Labels trieNode0134Gain := by
  unfold trieNode0134Labels trieNode0134Gain
  exact BellmanLabelStepRun.append trieNode0133Run trieNode0134StepRun

private def trieNode0135State : State := edge0079.dst
private def trieNode0135StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0135StepGain : Int := edge0079.gain + (0)
private def trieNode0135Labels : List SmokeLabel :=
  trieNode0134Labels ++ trieNode0135StepLabels
private def trieNode0135Gain : Int :=
  trieNode0134Gain + trieNode0135StepGain

private theorem trieNode0135StepRun :
    BellmanLabelStepRun SmokeStep trieNode0134State trieNode0135State
      trieNode0135StepLabels trieNode0135StepGain := by
  unfold trieNode0134State trieNode0135State
  unfold trieNode0135StepLabels trieNode0135StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0079
  exact BellmanLabelStepRun.nil trieNode0135State

private theorem trieNode0135Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0135State
      trieNode0135Labels trieNode0135Gain := by
  unfold trieNode0135Labels trieNode0135Gain
  exact BellmanLabelStepRun.append trieNode0134Run trieNode0135StepRun

private def trieNode0136State : State := edge0122.dst
private def trieNode0136StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0136StepGain : Int := edge0122.gain + (0)
private def trieNode0136Labels : List SmokeLabel :=
  trieNode0135Labels ++ trieNode0136StepLabels
private def trieNode0136Gain : Int :=
  trieNode0135Gain + trieNode0136StepGain

private theorem trieNode0136StepRun :
    BellmanLabelStepRun SmokeStep trieNode0135State trieNode0136State
      trieNode0136StepLabels trieNode0136StepGain := by
  unfold trieNode0135State trieNode0136State
  unfold trieNode0136StepLabels trieNode0136StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0122
  exact BellmanLabelStepRun.nil trieNode0136State

private theorem trieNode0136Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0136State
      trieNode0136Labels trieNode0136Gain := by
  unfold trieNode0136Labels trieNode0136Gain
  exact BellmanLabelStepRun.append trieNode0135Run trieNode0136StepRun

private def trieNode0137State : State := edge0028.dst
private def trieNode0137StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0137StepGain : Int := edge0028.gain + (0)
private def trieNode0137Labels : List SmokeLabel :=
  trieNode0132Labels ++ trieNode0137StepLabels
private def trieNode0137Gain : Int :=
  trieNode0132Gain + trieNode0137StepGain

private theorem trieNode0137StepRun :
    BellmanLabelStepRun SmokeStep trieNode0132State trieNode0137State
      trieNode0137StepLabels trieNode0137StepGain := by
  unfold trieNode0132State trieNode0137State
  unfold trieNode0137StepLabels trieNode0137StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0028
  exact BellmanLabelStepRun.nil trieNode0137State

private theorem trieNode0137Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0137State
      trieNode0137Labels trieNode0137Gain := by
  unfold trieNode0137Labels trieNode0137Gain
  exact BellmanLabelStepRun.append trieNode0132Run trieNode0137StepRun

private def trieNode0138State : State := edge0059.dst
private def trieNode0138StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0138StepGain : Int := edge0059.gain + (0)
private def trieNode0138Labels : List SmokeLabel :=
  trieNode0137Labels ++ trieNode0138StepLabels
private def trieNode0138Gain : Int :=
  trieNode0137Gain + trieNode0138StepGain

private theorem trieNode0138StepRun :
    BellmanLabelStepRun SmokeStep trieNode0137State trieNode0138State
      trieNode0138StepLabels trieNode0138StepGain := by
  unfold trieNode0137State trieNode0138State
  unfold trieNode0138StepLabels trieNode0138StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0059
  exact BellmanLabelStepRun.nil trieNode0138State

private theorem trieNode0138Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0138State
      trieNode0138Labels trieNode0138Gain := by
  unfold trieNode0138Labels trieNode0138Gain
  exact BellmanLabelStepRun.append trieNode0137Run trieNode0138StepRun

private def trieNode0139State : State := edge0094.dst
private def trieNode0139StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0139StepGain : Int := edge0094.gain + (0)
private def trieNode0139Labels : List SmokeLabel :=
  trieNode0138Labels ++ trieNode0139StepLabels
private def trieNode0139Gain : Int :=
  trieNode0138Gain + trieNode0139StepGain

private theorem trieNode0139StepRun :
    BellmanLabelStepRun SmokeStep trieNode0138State trieNode0139State
      trieNode0139StepLabels trieNode0139StepGain := by
  unfold trieNode0138State trieNode0139State
  unfold trieNode0139StepLabels trieNode0139StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0094
  exact BellmanLabelStepRun.nil trieNode0139State

private theorem trieNode0139Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0139State
      trieNode0139Labels trieNode0139Gain := by
  unfold trieNode0139Labels trieNode0139Gain
  exact BellmanLabelStepRun.append trieNode0138Run trieNode0139StepRun

private def trieNode0140State : State := edge0121.dst
private def trieNode0140StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0140StepGain : Int := edge0121.gain + (0)
private def trieNode0140Labels : List SmokeLabel :=
  trieNode0139Labels ++ trieNode0140StepLabels
private def trieNode0140Gain : Int :=
  trieNode0139Gain + trieNode0140StepGain

private theorem trieNode0140StepRun :
    BellmanLabelStepRun SmokeStep trieNode0139State trieNode0140State
      trieNode0140StepLabels trieNode0140StepGain := by
  unfold trieNode0139State trieNode0140State
  unfold trieNode0140StepLabels trieNode0140StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0121
  exact BellmanLabelStepRun.nil trieNode0140State

private theorem trieNode0140Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0140State
      trieNode0140Labels trieNode0140Gain := by
  unfold trieNode0140Labels trieNode0140Gain
  exact BellmanLabelStepRun.append trieNode0139Run trieNode0140StepRun

private def trieNode0141State : State := edge0132.dst
private def trieNode0141StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0141StepGain : Int := edge0132.gain + (0)
private def trieNode0141Labels : List SmokeLabel :=
  trieNode0094Labels ++ trieNode0141StepLabels
private def trieNode0141Gain : Int :=
  trieNode0094Gain + trieNode0141StepGain

private theorem trieNode0141StepRun :
    BellmanLabelStepRun SmokeStep trieNode0094State trieNode0141State
      trieNode0141StepLabels trieNode0141StepGain := by
  unfold trieNode0094State trieNode0141State
  unfold trieNode0141StepLabels trieNode0141StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  exact BellmanLabelStepRun.nil trieNode0141State

private theorem trieNode0141Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0141State
      trieNode0141Labels trieNode0141Gain := by
  unfold trieNode0141Labels trieNode0141Gain
  exact BellmanLabelStepRun.append trieNode0094Run trieNode0141StepRun

private def trieNode0142State : State := edge0142.dst
private def trieNode0142StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0142StepGain : Int := edge0142.gain + (0)
private def trieNode0142Labels : List SmokeLabel :=
  trieNode0141Labels ++ trieNode0142StepLabels
private def trieNode0142Gain : Int :=
  trieNode0141Gain + trieNode0142StepGain

private theorem trieNode0142StepRun :
    BellmanLabelStepRun SmokeStep trieNode0141State trieNode0142State
      trieNode0142StepLabels trieNode0142StepGain := by
  unfold trieNode0141State trieNode0142State
  unfold trieNode0142StepLabels trieNode0142StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  exact BellmanLabelStepRun.nil trieNode0142State

private theorem trieNode0142Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0142State
      trieNode0142Labels trieNode0142Gain := by
  unfold trieNode0142Labels trieNode0142Gain
  exact BellmanLabelStepRun.append trieNode0141Run trieNode0142StepRun

private def trieNode0143State : State := edge0154.dst
private def trieNode0143StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0143StepGain : Int := edge0154.gain + (0)
private def trieNode0143Labels : List SmokeLabel :=
  trieNode0142Labels ++ trieNode0143StepLabels
private def trieNode0143Gain : Int :=
  trieNode0142Gain + trieNode0143StepGain

private theorem trieNode0143StepRun :
    BellmanLabelStepRun SmokeStep trieNode0142State trieNode0143State
      trieNode0143StepLabels trieNode0143StepGain := by
  unfold trieNode0142State trieNode0143State
  unfold trieNode0143StepLabels trieNode0143StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  exact BellmanLabelStepRun.nil trieNode0143State

private theorem trieNode0143Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0143State
      trieNode0143Labels trieNode0143Gain := by
  unfold trieNode0143Labels trieNode0143Gain
  exact BellmanLabelStepRun.append trieNode0142Run trieNode0143StepRun

private def trieNode0144State : State := edge0168.dst
private def trieNode0144StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0144StepGain : Int := edge0168.gain + (0)
private def trieNode0144Labels : List SmokeLabel :=
  trieNode0143Labels ++ trieNode0144StepLabels
private def trieNode0144Gain : Int :=
  trieNode0143Gain + trieNode0144StepGain

private theorem trieNode0144StepRun :
    BellmanLabelStepRun SmokeStep trieNode0143State trieNode0144State
      trieNode0144StepLabels trieNode0144StepGain := by
  unfold trieNode0143State trieNode0144State
  unfold trieNode0144StepLabels trieNode0144StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  exact BellmanLabelStepRun.nil trieNode0144State

private theorem trieNode0144Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0144State
      trieNode0144Labels trieNode0144Gain := by
  unfold trieNode0144Labels trieNode0144Gain
  exact BellmanLabelStepRun.append trieNode0143Run trieNode0144StepRun

private def trieNode0145State : State := edge0184.dst
private def trieNode0145StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0145StepGain : Int := edge0184.gain + (0)
private def trieNode0145Labels : List SmokeLabel :=
  trieNode0144Labels ++ trieNode0145StepLabels
private def trieNode0145Gain : Int :=
  trieNode0144Gain + trieNode0145StepGain

private theorem trieNode0145StepRun :
    BellmanLabelStepRun SmokeStep trieNode0144State trieNode0145State
      trieNode0145StepLabels trieNode0145StepGain := by
  unfold trieNode0144State trieNode0145State
  unfold trieNode0145StepLabels trieNode0145StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  exact BellmanLabelStepRun.nil trieNode0145State

private theorem trieNode0145Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0145State
      trieNode0145Labels trieNode0145Gain := by
  unfold trieNode0145Labels trieNode0145Gain
  exact BellmanLabelStepRun.append trieNode0144Run trieNode0145StepRun

private def trieNode0146State : State := edge0202.dst
private def trieNode0146StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0146StepGain : Int := edge0202.gain + (0)
private def trieNode0146Labels : List SmokeLabel :=
  trieNode0145Labels ++ trieNode0146StepLabels
private def trieNode0146Gain : Int :=
  trieNode0145Gain + trieNode0146StepGain

private theorem trieNode0146StepRun :
    BellmanLabelStepRun SmokeStep trieNode0145State trieNode0146State
      trieNode0146StepLabels trieNode0146StepGain := by
  unfold trieNode0145State trieNode0146State
  unfold trieNode0146StepLabels trieNode0146StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  exact BellmanLabelStepRun.nil trieNode0146State

private theorem trieNode0146Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0146State
      trieNode0146Labels trieNode0146Gain := by
  unfold trieNode0146Labels trieNode0146Gain
  exact BellmanLabelStepRun.append trieNode0145Run trieNode0146StepRun

private def trieNode0147State : State := edge0226.dst
private def trieNode0147StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0147StepGain : Int := edge0226.gain + (0)
private def trieNode0147Labels : List SmokeLabel :=
  trieNode0146Labels ++ trieNode0147StepLabels
private def trieNode0147Gain : Int :=
  trieNode0146Gain + trieNode0147StepGain

private theorem trieNode0147StepRun :
    BellmanLabelStepRun SmokeStep trieNode0146State trieNode0147State
      trieNode0147StepLabels trieNode0147StepGain := by
  unfold trieNode0146State trieNode0147State
  unfold trieNode0147StepLabels trieNode0147StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0226
  exact BellmanLabelStepRun.nil trieNode0147State

private theorem trieNode0147Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0147State
      trieNode0147Labels trieNode0147Gain := by
  unfold trieNode0147Labels trieNode0147Gain
  exact BellmanLabelStepRun.append trieNode0146Run trieNode0147StepRun

private def trieNode0148State : State := edge0010.dst
private def trieNode0148StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0148StepGain : Int := edge0010.gain + (0)
private def trieNode0148Labels : List SmokeLabel :=
  trieNode0147Labels ++ trieNode0148StepLabels
private def trieNode0148Gain : Int :=
  trieNode0147Gain + trieNode0148StepGain

private theorem trieNode0148StepRun :
    BellmanLabelStepRun SmokeStep trieNode0147State trieNode0148State
      trieNode0148StepLabels trieNode0148StepGain := by
  unfold trieNode0147State trieNode0148State
  unfold trieNode0148StepLabels trieNode0148StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0010
  exact BellmanLabelStepRun.nil trieNode0148State

private theorem trieNode0148Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0148State
      trieNode0148Labels trieNode0148Gain := by
  unfold trieNode0148Labels trieNode0148Gain
  exact BellmanLabelStepRun.append trieNode0147Run trieNode0148StepRun

private def trieNode0149State : State := edge0049.dst
private def trieNode0149StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0149StepGain : Int := edge0049.gain + (0)
private def trieNode0149Labels : List SmokeLabel :=
  trieNode0148Labels ++ trieNode0149StepLabels
private def trieNode0149Gain : Int :=
  trieNode0148Gain + trieNode0149StepGain

private theorem trieNode0149StepRun :
    BellmanLabelStepRun SmokeStep trieNode0148State trieNode0149State
      trieNode0149StepLabels trieNode0149StepGain := by
  unfold trieNode0148State trieNode0149State
  unfold trieNode0149StepLabels trieNode0149StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0049
  exact BellmanLabelStepRun.nil trieNode0149State

private theorem trieNode0149Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0149State
      trieNode0149Labels trieNode0149Gain := by
  unfold trieNode0149Labels trieNode0149Gain
  exact BellmanLabelStepRun.append trieNode0148Run trieNode0149StepRun

private def trieNode0150State : State := edge0084.dst
private def trieNode0150StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0150StepGain : Int := edge0084.gain + (0)
private def trieNode0150Labels : List SmokeLabel :=
  trieNode0149Labels ++ trieNode0150StepLabels
private def trieNode0150Gain : Int :=
  trieNode0149Gain + trieNode0150StepGain

private theorem trieNode0150StepRun :
    BellmanLabelStepRun SmokeStep trieNode0149State trieNode0150State
      trieNode0150StepLabels trieNode0150StepGain := by
  unfold trieNode0149State trieNode0150State
  unfold trieNode0150StepLabels trieNode0150StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0084
  exact BellmanLabelStepRun.nil trieNode0150State

private theorem trieNode0150Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0150State
      trieNode0150Labels trieNode0150Gain := by
  unfold trieNode0150Labels trieNode0150Gain
  exact BellmanLabelStepRun.append trieNode0149Run trieNode0150StepRun

private def trieNode0151State : State := edge0118.dst
private def trieNode0151StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0151StepGain : Int := edge0118.gain + (0)
private def trieNode0151Labels : List SmokeLabel :=
  trieNode0150Labels ++ trieNode0151StepLabels
private def trieNode0151Gain : Int :=
  trieNode0150Gain + trieNode0151StepGain

private theorem trieNode0151StepRun :
    BellmanLabelStepRun SmokeStep trieNode0150State trieNode0151State
      trieNode0151StepLabels trieNode0151StepGain := by
  unfold trieNode0150State trieNode0151State
  unfold trieNode0151StepLabels trieNode0151StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0118
  exact BellmanLabelStepRun.nil trieNode0151State

private theorem trieNode0151Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0151State
      trieNode0151Labels trieNode0151Gain := by
  unfold trieNode0151Labels trieNode0151Gain
  exact BellmanLabelStepRun.append trieNode0150Run trieNode0151StepRun

private def trieNode0152State : State := edge0227.dst
private def trieNode0152StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0152StepGain : Int := edge0227.gain + (0)
private def trieNode0152Labels : List SmokeLabel :=
  trieNode0146Labels ++ trieNode0152StepLabels
private def trieNode0152Gain : Int :=
  trieNode0146Gain + trieNode0152StepGain

private theorem trieNode0152StepRun :
    BellmanLabelStepRun SmokeStep trieNode0146State trieNode0152State
      trieNode0152StepLabels trieNode0152StepGain := by
  unfold trieNode0146State trieNode0152State
  unfold trieNode0152StepLabels trieNode0152StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0227
  exact BellmanLabelStepRun.nil trieNode0152State

private theorem trieNode0152Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0152State
      trieNode0152Labels trieNode0152Gain := by
  unfold trieNode0152Labels trieNode0152Gain
  exact BellmanLabelStepRun.append trieNode0146Run trieNode0152StepRun

private def trieNode0153State : State := edge0029.dst
private def trieNode0153StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0153StepGain : Int := edge0029.gain + (0)
private def trieNode0153Labels : List SmokeLabel :=
  trieNode0152Labels ++ trieNode0153StepLabels
private def trieNode0153Gain : Int :=
  trieNode0152Gain + trieNode0153StepGain

private theorem trieNode0153StepRun :
    BellmanLabelStepRun SmokeStep trieNode0152State trieNode0153State
      trieNode0153StepLabels trieNode0153StepGain := by
  unfold trieNode0152State trieNode0153State
  unfold trieNode0153StepLabels trieNode0153StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0029
  exact BellmanLabelStepRun.nil trieNode0153State

private theorem trieNode0153Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0153State
      trieNode0153Labels trieNode0153Gain := by
  unfold trieNode0153Labels trieNode0153Gain
  exact BellmanLabelStepRun.append trieNode0152Run trieNode0153StepRun

private def trieNode0154State : State := edge0062.dst
private def trieNode0154StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0154StepGain : Int := edge0062.gain + (0)
private def trieNode0154Labels : List SmokeLabel :=
  trieNode0153Labels ++ trieNode0154StepLabels
private def trieNode0154Gain : Int :=
  trieNode0153Gain + trieNode0154StepGain

private theorem trieNode0154StepRun :
    BellmanLabelStepRun SmokeStep trieNode0153State trieNode0154State
      trieNode0154StepLabels trieNode0154StepGain := by
  unfold trieNode0153State trieNode0154State
  unfold trieNode0154StepLabels trieNode0154StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0062
  exact BellmanLabelStepRun.nil trieNode0154State

private theorem trieNode0154Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0154State
      trieNode0154Labels trieNode0154Gain := by
  unfold trieNode0154Labels trieNode0154Gain
  exact BellmanLabelStepRun.append trieNode0153Run trieNode0154StepRun

private def trieNode0155State : State := edge0085.dst
private def trieNode0155StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0155StepGain : Int := edge0085.gain + (0)
private def trieNode0155Labels : List SmokeLabel :=
  trieNode0154Labels ++ trieNode0155StepLabels
private def trieNode0155Gain : Int :=
  trieNode0154Gain + trieNode0155StepGain

private theorem trieNode0155StepRun :
    BellmanLabelStepRun SmokeStep trieNode0154State trieNode0155State
      trieNode0155StepLabels trieNode0155StepGain := by
  unfold trieNode0154State trieNode0155State
  unfold trieNode0155StepLabels trieNode0155StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0085
  exact BellmanLabelStepRun.nil trieNode0155State

private theorem trieNode0155Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0155State
      trieNode0155Labels trieNode0155Gain := by
  unfold trieNode0155Labels trieNode0155Gain
  exact BellmanLabelStepRun.append trieNode0154Run trieNode0155StepRun

private def trieNode0156State : State := edge0119.dst
private def trieNode0156StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0156StepGain : Int := edge0119.gain + (0)
private def trieNode0156Labels : List SmokeLabel :=
  trieNode0155Labels ++ trieNode0156StepLabels
private def trieNode0156Gain : Int :=
  trieNode0155Gain + trieNode0156StepGain

private theorem trieNode0156StepRun :
    BellmanLabelStepRun SmokeStep trieNode0155State trieNode0156State
      trieNode0156StepLabels trieNode0156StepGain := by
  unfold trieNode0155State trieNode0156State
  unfold trieNode0156StepLabels trieNode0156StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil trieNode0156State

private theorem trieNode0156Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0156State
      trieNode0156Labels trieNode0156Gain := by
  unfold trieNode0156Labels trieNode0156Gain
  exact BellmanLabelStepRun.append trieNode0155Run trieNode0156StepRun

private def trieNode0157State : State := edge0063.dst
private def trieNode0157StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0157StepGain : Int := edge0063.gain + (0)
private def trieNode0157Labels : List SmokeLabel :=
  trieNode0153Labels ++ trieNode0157StepLabels
private def trieNode0157Gain : Int :=
  trieNode0153Gain + trieNode0157StepGain

private theorem trieNode0157StepRun :
    BellmanLabelStepRun SmokeStep trieNode0153State trieNode0157State
      trieNode0157StepLabels trieNode0157StepGain := by
  unfold trieNode0153State trieNode0157State
  unfold trieNode0157StepLabels trieNode0157StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0063
  exact BellmanLabelStepRun.nil trieNode0157State

private theorem trieNode0157Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0157State
      trieNode0157Labels trieNode0157Gain := by
  unfold trieNode0157Labels trieNode0157Gain
  exact BellmanLabelStepRun.append trieNode0153Run trieNode0157StepRun

private def trieNode0158State : State := edge0093.dst
private def trieNode0158StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0158StepGain : Int := edge0093.gain + (0)
private def trieNode0158Labels : List SmokeLabel :=
  trieNode0157Labels ++ trieNode0158StepLabels
private def trieNode0158Gain : Int :=
  trieNode0157Gain + trieNode0158StepGain

private theorem trieNode0158StepRun :
    BellmanLabelStepRun SmokeStep trieNode0157State trieNode0158State
      trieNode0158StepLabels trieNode0158StepGain := by
  unfold trieNode0157State trieNode0158State
  unfold trieNode0158StepLabels trieNode0158StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0093
  exact BellmanLabelStepRun.nil trieNode0158State

private theorem trieNode0158Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0158State
      trieNode0158Labels trieNode0158Gain := by
  unfold trieNode0158Labels trieNode0158Gain
  exact BellmanLabelStepRun.append trieNode0157Run trieNode0158StepRun

private def trieNode0159State : State := edge0119.dst
private def trieNode0159StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0159StepGain : Int := edge0119.gain + (0)
private def trieNode0159Labels : List SmokeLabel :=
  trieNode0158Labels ++ trieNode0159StepLabels
private def trieNode0159Gain : Int :=
  trieNode0158Gain + trieNode0159StepGain

private theorem trieNode0159StepRun :
    BellmanLabelStepRun SmokeStep trieNode0158State trieNode0159State
      trieNode0159StepLabels trieNode0159StepGain := by
  unfold trieNode0158State trieNode0159State
  unfold trieNode0159StepLabels trieNode0159StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil trieNode0159State

private theorem trieNode0159Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0159State
      trieNode0159Labels trieNode0159Gain := by
  unfold trieNode0159Labels trieNode0159Gain
  exact BellmanLabelStepRun.append trieNode0158Run trieNode0159StepRun

private def trieNode0160State : State := edge0127.dst
private def trieNode0160StepLabels : List SmokeLabel :=
  [SmokeLabel.l0002]
private def trieNode0160StepGain : Int := edge0127.gain + (0)
private def trieNode0160Labels : List SmokeLabel :=
  trieNode0002Labels ++ trieNode0160StepLabels
private def trieNode0160Gain : Int :=
  trieNode0002Gain + trieNode0160StepGain

private theorem trieNode0160StepRun :
    BellmanLabelStepRun SmokeStep trieNode0002State trieNode0160State
      trieNode0160StepLabels trieNode0160StepGain := by
  unfold trieNode0002State trieNode0160State
  unfold trieNode0160StepLabels trieNode0160StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  exact BellmanLabelStepRun.nil trieNode0160State

private theorem trieNode0160Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0160State
      trieNode0160Labels trieNode0160Gain := by
  unfold trieNode0160Labels trieNode0160Gain
  exact BellmanLabelStepRun.append trieNode0002Run trieNode0160StepRun

private def trieNode0161State : State := edge0133.dst
private def trieNode0161StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0161StepGain : Int := edge0133.gain + (0)
private def trieNode0161Labels : List SmokeLabel :=
  trieNode0160Labels ++ trieNode0161StepLabels
private def trieNode0161Gain : Int :=
  trieNode0160Gain + trieNode0161StepGain

private theorem trieNode0161StepRun :
    BellmanLabelStepRun SmokeStep trieNode0160State trieNode0161State
      trieNode0161StepLabels trieNode0161StepGain := by
  unfold trieNode0160State trieNode0161State
  unfold trieNode0161StepLabels trieNode0161StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0133
  exact BellmanLabelStepRun.nil trieNode0161State

private theorem trieNode0161Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0161State
      trieNode0161Labels trieNode0161Gain := by
  unfold trieNode0161Labels trieNode0161Gain
  exact BellmanLabelStepRun.append trieNode0160Run trieNode0161StepRun

private def trieNode0162State : State := edge0141.dst
private def trieNode0162StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0162StepGain : Int := edge0141.gain + (0)
private def trieNode0162Labels : List SmokeLabel :=
  trieNode0161Labels ++ trieNode0162StepLabels
private def trieNode0162Gain : Int :=
  trieNode0161Gain + trieNode0162StepGain

private theorem trieNode0162StepRun :
    BellmanLabelStepRun SmokeStep trieNode0161State trieNode0162State
      trieNode0162StepLabels trieNode0162StepGain := by
  unfold trieNode0161State trieNode0162State
  unfold trieNode0162StepLabels trieNode0162StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0141
  exact BellmanLabelStepRun.nil trieNode0162State

private theorem trieNode0162Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0162State
      trieNode0162Labels trieNode0162Gain := by
  unfold trieNode0162Labels trieNode0162Gain
  exact BellmanLabelStepRun.append trieNode0161Run trieNode0162StepRun

private def trieNode0163State : State := edge0151.dst
private def trieNode0163StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0163StepGain : Int := edge0151.gain + (0)
private def trieNode0163Labels : List SmokeLabel :=
  trieNode0162Labels ++ trieNode0163StepLabels
private def trieNode0163Gain : Int :=
  trieNode0162Gain + trieNode0163StepGain

private theorem trieNode0163StepRun :
    BellmanLabelStepRun SmokeStep trieNode0162State trieNode0163State
      trieNode0163StepLabels trieNode0163StepGain := by
  unfold trieNode0162State trieNode0163State
  unfold trieNode0163StepLabels trieNode0163StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0151
  exact BellmanLabelStepRun.nil trieNode0163State

private theorem trieNode0163Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0163State
      trieNode0163Labels trieNode0163Gain := by
  unfold trieNode0163Labels trieNode0163Gain
  exact BellmanLabelStepRun.append trieNode0162Run trieNode0163StepRun

private def trieNode0164State : State := edge0165.dst
private def trieNode0164StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0164StepGain : Int := edge0165.gain + (0)
private def trieNode0164Labels : List SmokeLabel :=
  trieNode0163Labels ++ trieNode0164StepLabels
private def trieNode0164Gain : Int :=
  trieNode0163Gain + trieNode0164StepGain

private theorem trieNode0164StepRun :
    BellmanLabelStepRun SmokeStep trieNode0163State trieNode0164State
      trieNode0164StepLabels trieNode0164StepGain := by
  unfold trieNode0163State trieNode0164State
  unfold trieNode0164StepLabels trieNode0164StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0165
  exact BellmanLabelStepRun.nil trieNode0164State

private theorem trieNode0164Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0164State
      trieNode0164Labels trieNode0164Gain := by
  unfold trieNode0164Labels trieNode0164Gain
  exact BellmanLabelStepRun.append trieNode0163Run trieNode0164StepRun

private def trieNode0165State : State := edge0181.dst
private def trieNode0165StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0165StepGain : Int := edge0181.gain + (0)
private def trieNode0165Labels : List SmokeLabel :=
  trieNode0164Labels ++ trieNode0165StepLabels
private def trieNode0165Gain : Int :=
  trieNode0164Gain + trieNode0165StepGain

private theorem trieNode0165StepRun :
    BellmanLabelStepRun SmokeStep trieNode0164State trieNode0165State
      trieNode0165StepLabels trieNode0165StepGain := by
  unfold trieNode0164State trieNode0165State
  unfold trieNode0165StepLabels trieNode0165StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0181
  exact BellmanLabelStepRun.nil trieNode0165State

private theorem trieNode0165Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0165State
      trieNode0165Labels trieNode0165Gain := by
  unfold trieNode0165Labels trieNode0165Gain
  exact BellmanLabelStepRun.append trieNode0164Run trieNode0165StepRun

private def trieNode0166State : State := edge0199.dst
private def trieNode0166StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0166StepGain : Int := edge0199.gain + (0)
private def trieNode0166Labels : List SmokeLabel :=
  trieNode0165Labels ++ trieNode0166StepLabels
private def trieNode0166Gain : Int :=
  trieNode0165Gain + trieNode0166StepGain

private theorem trieNode0166StepRun :
    BellmanLabelStepRun SmokeStep trieNode0165State trieNode0166State
      trieNode0166StepLabels trieNode0166StepGain := by
  unfold trieNode0165State trieNode0166State
  unfold trieNode0166StepLabels trieNode0166StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0199
  exact BellmanLabelStepRun.nil trieNode0166State

private theorem trieNode0166Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0166State
      trieNode0166Labels trieNode0166Gain := by
  unfold trieNode0166Labels trieNode0166Gain
  exact BellmanLabelStepRun.append trieNode0165Run trieNode0166StepRun

private def trieNode0167State : State := edge0222.dst
private def trieNode0167StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0167StepGain : Int := edge0222.gain + (0)
private def trieNode0167Labels : List SmokeLabel :=
  trieNode0166Labels ++ trieNode0167StepLabels
private def trieNode0167Gain : Int :=
  trieNode0166Gain + trieNode0167StepGain

private theorem trieNode0167StepRun :
    BellmanLabelStepRun SmokeStep trieNode0166State trieNode0167State
      trieNode0167StepLabels trieNode0167StepGain := by
  unfold trieNode0166State trieNode0167State
  unfold trieNode0167StepLabels trieNode0167StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0222
  exact BellmanLabelStepRun.nil trieNode0167State

private theorem trieNode0167Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0167State
      trieNode0167Labels trieNode0167Gain := by
  unfold trieNode0167Labels trieNode0167Gain
  exact BellmanLabelStepRun.append trieNode0166Run trieNode0167StepRun

private def trieNode0168State : State := edge0026.dst
private def trieNode0168StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0168StepGain : Int := edge0026.gain + (0)
private def trieNode0168Labels : List SmokeLabel :=
  trieNode0167Labels ++ trieNode0168StepLabels
private def trieNode0168Gain : Int :=
  trieNode0167Gain + trieNode0168StepGain

private theorem trieNode0168StepRun :
    BellmanLabelStepRun SmokeStep trieNode0167State trieNode0168State
      trieNode0168StepLabels trieNode0168StepGain := by
  unfold trieNode0167State trieNode0168State
  unfold trieNode0168StepLabels trieNode0168StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0026
  exact BellmanLabelStepRun.nil trieNode0168State

private theorem trieNode0168Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0168State
      trieNode0168Labels trieNode0168Gain := by
  unfold trieNode0168Labels trieNode0168Gain
  exact BellmanLabelStepRun.append trieNode0167Run trieNode0168StepRun

private def trieNode0169State : State := edge0037.dst
private def trieNode0169StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0169StepGain : Int := edge0037.gain + (0)
private def trieNode0169Labels : List SmokeLabel :=
  trieNode0168Labels ++ trieNode0169StepLabels
private def trieNode0169Gain : Int :=
  trieNode0168Gain + trieNode0169StepGain

private theorem trieNode0169StepRun :
    BellmanLabelStepRun SmokeStep trieNode0168State trieNode0169State
      trieNode0169StepLabels trieNode0169StepGain := by
  unfold trieNode0168State trieNode0169State
  unfold trieNode0169StepLabels trieNode0169StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0037
  exact BellmanLabelStepRun.nil trieNode0169State

private theorem trieNode0169Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0169State
      trieNode0169Labels trieNode0169Gain := by
  unfold trieNode0169Labels trieNode0169Gain
  exact BellmanLabelStepRun.append trieNode0168Run trieNode0169StepRun

private def trieNode0170State : State := edge0070.dst
private def trieNode0170StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0170StepGain : Int := edge0070.gain + (0)
private def trieNode0170Labels : List SmokeLabel :=
  trieNode0169Labels ++ trieNode0170StepLabels
private def trieNode0170Gain : Int :=
  trieNode0169Gain + trieNode0170StepGain

private theorem trieNode0170StepRun :
    BellmanLabelStepRun SmokeStep trieNode0169State trieNode0170State
      trieNode0170StepLabels trieNode0170StepGain := by
  unfold trieNode0169State trieNode0170State
  unfold trieNode0170StepLabels trieNode0170StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0070
  exact BellmanLabelStepRun.nil trieNode0170State

private theorem trieNode0170Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0170State
      trieNode0170Labels trieNode0170Gain := by
  unfold trieNode0170Labels trieNode0170Gain
  exact BellmanLabelStepRun.append trieNode0169Run trieNode0170StepRun

private def trieNode0171State : State := edge0108.dst
private def trieNode0171StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0171StepGain : Int := edge0108.gain + (0)
private def trieNode0171Labels : List SmokeLabel :=
  trieNode0170Labels ++ trieNode0171StepLabels
private def trieNode0171Gain : Int :=
  trieNode0170Gain + trieNode0171StepGain

private theorem trieNode0171StepRun :
    BellmanLabelStepRun SmokeStep trieNode0170State trieNode0171State
      trieNode0171StepLabels trieNode0171StepGain := by
  unfold trieNode0170State trieNode0171State
  unfold trieNode0171StepLabels trieNode0171StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0108
  exact BellmanLabelStepRun.nil trieNode0171State

private theorem trieNode0171Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0171State
      trieNode0171Labels trieNode0171Gain := by
  unfold trieNode0171Labels trieNode0171Gain
  exact BellmanLabelStepRun.append trieNode0170Run trieNode0171StepRun

private def trieNode0172State : State := edge0134.dst
private def trieNode0172StepLabels : List SmokeLabel :=
  [SmokeLabel.l0006]
private def trieNode0172StepGain : Int := edge0134.gain + (0)
private def trieNode0172Labels : List SmokeLabel :=
  trieNode0160Labels ++ trieNode0172StepLabels
private def trieNode0172Gain : Int :=
  trieNode0160Gain + trieNode0172StepGain

private theorem trieNode0172StepRun :
    BellmanLabelStepRun SmokeStep trieNode0160State trieNode0172State
      trieNode0172StepLabels trieNode0172StepGain := by
  unfold trieNode0160State trieNode0172State
  unfold trieNode0172StepLabels trieNode0172StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  exact BellmanLabelStepRun.nil trieNode0172State

private theorem trieNode0172Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0172State
      trieNode0172Labels trieNode0172Gain := by
  unfold trieNode0172Labels trieNode0172Gain
  exact BellmanLabelStepRun.append trieNode0160Run trieNode0172StepRun

private def trieNode0173State : State := edge0143.dst
private def trieNode0173StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0173StepGain : Int := edge0143.gain + (0)
private def trieNode0173Labels : List SmokeLabel :=
  trieNode0172Labels ++ trieNode0173StepLabels
private def trieNode0173Gain : Int :=
  trieNode0172Gain + trieNode0173StepGain

private theorem trieNode0173StepRun :
    BellmanLabelStepRun SmokeStep trieNode0172State trieNode0173State
      trieNode0173StepLabels trieNode0173StepGain := by
  unfold trieNode0172State trieNode0173State
  unfold trieNode0173StepLabels trieNode0173StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0143
  exact BellmanLabelStepRun.nil trieNode0173State

private theorem trieNode0173Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0173State
      trieNode0173Labels trieNode0173Gain := by
  unfold trieNode0173Labels trieNode0173Gain
  exact BellmanLabelStepRun.append trieNode0172Run trieNode0173StepRun

private def trieNode0174State : State := edge0153.dst
private def trieNode0174StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0174StepGain : Int := edge0153.gain + (0)
private def trieNode0174Labels : List SmokeLabel :=
  trieNode0173Labels ++ trieNode0174StepLabels
private def trieNode0174Gain : Int :=
  trieNode0173Gain + trieNode0174StepGain

private theorem trieNode0174StepRun :
    BellmanLabelStepRun SmokeStep trieNode0173State trieNode0174State
      trieNode0174StepLabels trieNode0174StepGain := by
  unfold trieNode0173State trieNode0174State
  unfold trieNode0174StepLabels trieNode0174StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0153
  exact BellmanLabelStepRun.nil trieNode0174State

private theorem trieNode0174Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0174State
      trieNode0174Labels trieNode0174Gain := by
  unfold trieNode0174Labels trieNode0174Gain
  exact BellmanLabelStepRun.append trieNode0173Run trieNode0174StepRun

private def trieNode0175State : State := edge0164.dst
private def trieNode0175StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0175StepGain : Int := edge0164.gain + (0)
private def trieNode0175Labels : List SmokeLabel :=
  trieNode0174Labels ++ trieNode0175StepLabels
private def trieNode0175Gain : Int :=
  trieNode0174Gain + trieNode0175StepGain

private theorem trieNode0175StepRun :
    BellmanLabelStepRun SmokeStep trieNode0174State trieNode0175State
      trieNode0175StepLabels trieNode0175StepGain := by
  unfold trieNode0174State trieNode0175State
  unfold trieNode0175StepLabels trieNode0175StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0164
  exact BellmanLabelStepRun.nil trieNode0175State

private theorem trieNode0175Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0175State
      trieNode0175Labels trieNode0175Gain := by
  unfold trieNode0175Labels trieNode0175Gain
  exact BellmanLabelStepRun.append trieNode0174Run trieNode0175StepRun

private def trieNode0176State : State := edge0180.dst
private def trieNode0176StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0176StepGain : Int := edge0180.gain + (0)
private def trieNode0176Labels : List SmokeLabel :=
  trieNode0175Labels ++ trieNode0176StepLabels
private def trieNode0176Gain : Int :=
  trieNode0175Gain + trieNode0176StepGain

private theorem trieNode0176StepRun :
    BellmanLabelStepRun SmokeStep trieNode0175State trieNode0176State
      trieNode0176StepLabels trieNode0176StepGain := by
  unfold trieNode0175State trieNode0176State
  unfold trieNode0176StepLabels trieNode0176StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0180
  exact BellmanLabelStepRun.nil trieNode0176State

private theorem trieNode0176Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0176State
      trieNode0176Labels trieNode0176Gain := by
  unfold trieNode0176Labels trieNode0176Gain
  exact BellmanLabelStepRun.append trieNode0175Run trieNode0176StepRun

private def trieNode0177State : State := edge0198.dst
private def trieNode0177StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0177StepGain : Int := edge0198.gain + (0)
private def trieNode0177Labels : List SmokeLabel :=
  trieNode0176Labels ++ trieNode0177StepLabels
private def trieNode0177Gain : Int :=
  trieNode0176Gain + trieNode0177StepGain

private theorem trieNode0177StepRun :
    BellmanLabelStepRun SmokeStep trieNode0176State trieNode0177State
      trieNode0177StepLabels trieNode0177StepGain := by
  unfold trieNode0176State trieNode0177State
  unfold trieNode0177StepLabels trieNode0177StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0198
  exact BellmanLabelStepRun.nil trieNode0177State

private theorem trieNode0177Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0177State
      trieNode0177Labels trieNode0177Gain := by
  unfold trieNode0177Labels trieNode0177Gain
  exact BellmanLabelStepRun.append trieNode0176Run trieNode0177StepRun

private def trieNode0178State : State := edge0221.dst
private def trieNode0178StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0178StepGain : Int := edge0221.gain + (0)
private def trieNode0178Labels : List SmokeLabel :=
  trieNode0177Labels ++ trieNode0178StepLabels
private def trieNode0178Gain : Int :=
  trieNode0177Gain + trieNode0178StepGain

private theorem trieNode0178StepRun :
    BellmanLabelStepRun SmokeStep trieNode0177State trieNode0178State
      trieNode0178StepLabels trieNode0178StepGain := by
  unfold trieNode0177State trieNode0178State
  unfold trieNode0178StepLabels trieNode0178StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0221
  exact BellmanLabelStepRun.nil trieNode0178State

private theorem trieNode0178Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0178State
      trieNode0178Labels trieNode0178Gain := by
  unfold trieNode0178Labels trieNode0178Gain
  exact BellmanLabelStepRun.append trieNode0177Run trieNode0178StepRun

private def trieNode0179State : State := edge0024.dst
private def trieNode0179StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0179StepGain : Int := edge0024.gain + (0)
private def trieNode0179Labels : List SmokeLabel :=
  trieNode0178Labels ++ trieNode0179StepLabels
private def trieNode0179Gain : Int :=
  trieNode0178Gain + trieNode0179StepGain

private theorem trieNode0179StepRun :
    BellmanLabelStepRun SmokeStep trieNode0178State trieNode0179State
      trieNode0179StepLabels trieNode0179StepGain := by
  unfold trieNode0178State trieNode0179State
  unfold trieNode0179StepLabels trieNode0179StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0024
  exact BellmanLabelStepRun.nil trieNode0179State

private theorem trieNode0179Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0179State
      trieNode0179Labels trieNode0179Gain := by
  unfold trieNode0179Labels trieNode0179Gain
  exact BellmanLabelStepRun.append trieNode0178Run trieNode0179StepRun

private def trieNode0180State : State := edge0036.dst
private def trieNode0180StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0180StepGain : Int := edge0036.gain + (0)
private def trieNode0180Labels : List SmokeLabel :=
  trieNode0179Labels ++ trieNode0180StepLabels
private def trieNode0180Gain : Int :=
  trieNode0179Gain + trieNode0180StepGain

private theorem trieNode0180StepRun :
    BellmanLabelStepRun SmokeStep trieNode0179State trieNode0180State
      trieNode0180StepLabels trieNode0180StepGain := by
  unfold trieNode0179State trieNode0180State
  unfold trieNode0180StepLabels trieNode0180StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0036
  exact BellmanLabelStepRun.nil trieNode0180State

private theorem trieNode0180Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0180State
      trieNode0180Labels trieNode0180Gain := by
  unfold trieNode0180Labels trieNode0180Gain
  exact BellmanLabelStepRun.append trieNode0179Run trieNode0180StepRun

private def trieNode0181State : State := edge0069.dst
private def trieNode0181StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0181StepGain : Int := edge0069.gain + (0)
private def trieNode0181Labels : List SmokeLabel :=
  trieNode0180Labels ++ trieNode0181StepLabels
private def trieNode0181Gain : Int :=
  trieNode0180Gain + trieNode0181StepGain

private theorem trieNode0181StepRun :
    BellmanLabelStepRun SmokeStep trieNode0180State trieNode0181State
      trieNode0181StepLabels trieNode0181StepGain := by
  unfold trieNode0180State trieNode0181State
  unfold trieNode0181StepLabels trieNode0181StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0069
  exact BellmanLabelStepRun.nil trieNode0181State

private theorem trieNode0181Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0181State
      trieNode0181Labels trieNode0181Gain := by
  unfold trieNode0181Labels trieNode0181Gain
  exact BellmanLabelStepRun.append trieNode0180Run trieNode0181StepRun

private def trieNode0182State : State := edge0107.dst
private def trieNode0182StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0182StepGain : Int := edge0107.gain + (0)
private def trieNode0182Labels : List SmokeLabel :=
  trieNode0181Labels ++ trieNode0182StepLabels
private def trieNode0182Gain : Int :=
  trieNode0181Gain + trieNode0182StepGain

private theorem trieNode0182StepRun :
    BellmanLabelStepRun SmokeStep trieNode0181State trieNode0182State
      trieNode0182StepLabels trieNode0182StepGain := by
  unfold trieNode0181State trieNode0182State
  unfold trieNode0182StepLabels trieNode0182StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0107
  exact BellmanLabelStepRun.nil trieNode0182State

private theorem trieNode0182Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0182State
      trieNode0182Labels trieNode0182Gain := by
  unfold trieNode0182Labels trieNode0182Gain
  exact BellmanLabelStepRun.append trieNode0181Run trieNode0182StepRun

private def trieNode0183State : State := edge0025.dst
private def trieNode0183StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0183StepGain : Int := edge0025.gain + (0)
private def trieNode0183Labels : List SmokeLabel :=
  trieNode0178Labels ++ trieNode0183StepLabels
private def trieNode0183Gain : Int :=
  trieNode0178Gain + trieNode0183StepGain

private theorem trieNode0183StepRun :
    BellmanLabelStepRun SmokeStep trieNode0178State trieNode0183State
      trieNode0183StepLabels trieNode0183StepGain := by
  unfold trieNode0178State trieNode0183State
  unfold trieNode0183StepLabels trieNode0183StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0025
  exact BellmanLabelStepRun.nil trieNode0183State

private theorem trieNode0183Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0183State
      trieNode0183Labels trieNode0183Gain := by
  unfold trieNode0183Labels trieNode0183Gain
  exact BellmanLabelStepRun.append trieNode0178Run trieNode0183StepRun

private def trieNode0184State : State := edge0058.dst
private def trieNode0184StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0184StepGain : Int := edge0058.gain + (0)
private def trieNode0184Labels : List SmokeLabel :=
  trieNode0183Labels ++ trieNode0184StepLabels
private def trieNode0184Gain : Int :=
  trieNode0183Gain + trieNode0184StepGain

private theorem trieNode0184StepRun :
    BellmanLabelStepRun SmokeStep trieNode0183State trieNode0184State
      trieNode0184StepLabels trieNode0184StepGain := by
  unfold trieNode0183State trieNode0184State
  unfold trieNode0184StepLabels trieNode0184StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0058
  exact BellmanLabelStepRun.nil trieNode0184State

private theorem trieNode0184Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0184State
      trieNode0184Labels trieNode0184Gain := by
  unfold trieNode0184Labels trieNode0184Gain
  exact BellmanLabelStepRun.append trieNode0183Run trieNode0184StepRun

private def trieNode0185State : State := edge0092.dst
private def trieNode0185StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0185StepGain : Int := edge0092.gain + (0)
private def trieNode0185Labels : List SmokeLabel :=
  trieNode0184Labels ++ trieNode0185StepLabels
private def trieNode0185Gain : Int :=
  trieNode0184Gain + trieNode0185StepGain

private theorem trieNode0185StepRun :
    BellmanLabelStepRun SmokeStep trieNode0184State trieNode0185State
      trieNode0185StepLabels trieNode0185StepGain := by
  unfold trieNode0184State trieNode0185State
  unfold trieNode0185StepLabels trieNode0185StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0092
  exact BellmanLabelStepRun.nil trieNode0185State

private theorem trieNode0185Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0185State
      trieNode0185Labels trieNode0185Gain := by
  unfold trieNode0185Labels trieNode0185Gain
  exact BellmanLabelStepRun.append trieNode0184Run trieNode0185StepRun

private def trieNode0186State : State := edge0106.dst
private def trieNode0186StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0186StepGain : Int := edge0106.gain + (0)
private def trieNode0186Labels : List SmokeLabel :=
  trieNode0185Labels ++ trieNode0186StepLabels
private def trieNode0186Gain : Int :=
  trieNode0185Gain + trieNode0186StepGain

private theorem trieNode0186StepRun :
    BellmanLabelStepRun SmokeStep trieNode0185State trieNode0186State
      trieNode0186StepLabels trieNode0186StepGain := by
  unfold trieNode0185State trieNode0186State
  unfold trieNode0186StepLabels trieNode0186StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0106
  exact BellmanLabelStepRun.nil trieNode0186State

private theorem trieNode0186Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0186State
      trieNode0186Labels trieNode0186Gain := by
  unfold trieNode0186Labels trieNode0186Gain
  exact BellmanLabelStepRun.append trieNode0185Run trieNode0186StepRun

private def trieNode0187State : State := edge0144.dst
private def trieNode0187StepLabels : List SmokeLabel :=
  [SmokeLabel.l0004]
private def trieNode0187StepGain : Int := edge0144.gain + (0)
private def trieNode0187Labels : List SmokeLabel :=
  trieNode0172Labels ++ trieNode0187StepLabels
private def trieNode0187Gain : Int :=
  trieNode0172Gain + trieNode0187StepGain

private theorem trieNode0187StepRun :
    BellmanLabelStepRun SmokeStep trieNode0172State trieNode0187State
      trieNode0187StepLabels trieNode0187StepGain := by
  unfold trieNode0172State trieNode0187State
  unfold trieNode0187StepLabels trieNode0187StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  exact BellmanLabelStepRun.nil trieNode0187State

private theorem trieNode0187Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0187State
      trieNode0187Labels trieNode0187Gain := by
  unfold trieNode0187Labels trieNode0187Gain
  exact BellmanLabelStepRun.append trieNode0172Run trieNode0187StepRun

private def trieNode0188State : State := edge0155.dst
private def trieNode0188StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0188StepGain : Int := edge0155.gain + (0)
private def trieNode0188Labels : List SmokeLabel :=
  trieNode0187Labels ++ trieNode0188StepLabels
private def trieNode0188Gain : Int :=
  trieNode0187Gain + trieNode0188StepGain

private theorem trieNode0188StepRun :
    BellmanLabelStepRun SmokeStep trieNode0187State trieNode0188State
      trieNode0188StepLabels trieNode0188StepGain := by
  unfold trieNode0187State trieNode0188State
  unfold trieNode0188StepLabels trieNode0188StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0155
  exact BellmanLabelStepRun.nil trieNode0188State

private theorem trieNode0188Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0188State
      trieNode0188Labels trieNode0188Gain := by
  unfold trieNode0188Labels trieNode0188Gain
  exact BellmanLabelStepRun.append trieNode0187Run trieNode0188StepRun

private def trieNode0189State : State := edge0167.dst
private def trieNode0189StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0189StepGain : Int := edge0167.gain + (0)
private def trieNode0189Labels : List SmokeLabel :=
  trieNode0188Labels ++ trieNode0189StepLabels
private def trieNode0189Gain : Int :=
  trieNode0188Gain + trieNode0189StepGain

private theorem trieNode0189StepRun :
    BellmanLabelStepRun SmokeStep trieNode0188State trieNode0189State
      trieNode0189StepLabels trieNode0189StepGain := by
  unfold trieNode0188State trieNode0189State
  unfold trieNode0189StepLabels trieNode0189StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
  exact BellmanLabelStepRun.nil trieNode0189State

private theorem trieNode0189Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0189State
      trieNode0189Labels trieNode0189Gain := by
  unfold trieNode0189Labels trieNode0189Gain
  exact BellmanLabelStepRun.append trieNode0188Run trieNode0189StepRun

private def trieNode0190State : State := edge0179.dst
private def trieNode0190StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0190StepGain : Int := edge0179.gain + (0)
private def trieNode0190Labels : List SmokeLabel :=
  trieNode0189Labels ++ trieNode0190StepLabels
private def trieNode0190Gain : Int :=
  trieNode0189Gain + trieNode0190StepGain

private theorem trieNode0190StepRun :
    BellmanLabelStepRun SmokeStep trieNode0189State trieNode0190State
      trieNode0190StepLabels trieNode0190StepGain := by
  unfold trieNode0189State trieNode0190State
  unfold trieNode0190StepLabels trieNode0190StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0179
  exact BellmanLabelStepRun.nil trieNode0190State

private theorem trieNode0190Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0190State
      trieNode0190Labels trieNode0190Gain := by
  unfold trieNode0190Labels trieNode0190Gain
  exact BellmanLabelStepRun.append trieNode0189Run trieNode0190StepRun

private def trieNode0191State : State := edge0197.dst
private def trieNode0191StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0191StepGain : Int := edge0197.gain + (0)
private def trieNode0191Labels : List SmokeLabel :=
  trieNode0190Labels ++ trieNode0191StepLabels
private def trieNode0191Gain : Int :=
  trieNode0190Gain + trieNode0191StepGain

private theorem trieNode0191StepRun :
    BellmanLabelStepRun SmokeStep trieNode0190State trieNode0191State
      trieNode0191StepLabels trieNode0191StepGain := by
  unfold trieNode0190State trieNode0191State
  unfold trieNode0191StepLabels trieNode0191StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0197
  exact BellmanLabelStepRun.nil trieNode0191State

private theorem trieNode0191Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0191State
      trieNode0191Labels trieNode0191Gain := by
  unfold trieNode0191Labels trieNode0191Gain
  exact BellmanLabelStepRun.append trieNode0190Run trieNode0191StepRun

private def trieNode0192State : State := edge0220.dst
private def trieNode0192StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0192StepGain : Int := edge0220.gain + (0)
private def trieNode0192Labels : List SmokeLabel :=
  trieNode0191Labels ++ trieNode0192StepLabels
private def trieNode0192Gain : Int :=
  trieNode0191Gain + trieNode0192StepGain

private theorem trieNode0192StepRun :
    BellmanLabelStepRun SmokeStep trieNode0191State trieNode0192State
      trieNode0192StepLabels trieNode0192StepGain := by
  unfold trieNode0191State trieNode0192State
  unfold trieNode0192StepLabels trieNode0192StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0220
  exact BellmanLabelStepRun.nil trieNode0192State

private theorem trieNode0192Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0192State
      trieNode0192Labels trieNode0192Gain := by
  unfold trieNode0192Labels trieNode0192Gain
  exact BellmanLabelStepRun.append trieNode0191Run trieNode0192StepRun

private def trieNode0193State : State := edge0022.dst
private def trieNode0193StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0193StepGain : Int := edge0022.gain + (0)
private def trieNode0193Labels : List SmokeLabel :=
  trieNode0192Labels ++ trieNode0193StepLabels
private def trieNode0193Gain : Int :=
  trieNode0192Gain + trieNode0193StepGain

private theorem trieNode0193StepRun :
    BellmanLabelStepRun SmokeStep trieNode0192State trieNode0193State
      trieNode0193StepLabels trieNode0193StepGain := by
  unfold trieNode0192State trieNode0193State
  unfold trieNode0193StepLabels trieNode0193StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0022
  exact BellmanLabelStepRun.nil trieNode0193State

private theorem trieNode0193Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0193State
      trieNode0193Labels trieNode0193Gain := by
  unfold trieNode0193Labels trieNode0193Gain
  exact BellmanLabelStepRun.append trieNode0192Run trieNode0193StepRun

private def trieNode0194State : State := edge0035.dst
private def trieNode0194StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0194StepGain : Int := edge0035.gain + (0)
private def trieNode0194Labels : List SmokeLabel :=
  trieNode0193Labels ++ trieNode0194StepLabels
private def trieNode0194Gain : Int :=
  trieNode0193Gain + trieNode0194StepGain

private theorem trieNode0194StepRun :
    BellmanLabelStepRun SmokeStep trieNode0193State trieNode0194State
      trieNode0194StepLabels trieNode0194StepGain := by
  unfold trieNode0193State trieNode0194State
  unfold trieNode0194StepLabels trieNode0194StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0035
  exact BellmanLabelStepRun.nil trieNode0194State

private theorem trieNode0194Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0194State
      trieNode0194Labels trieNode0194Gain := by
  unfold trieNode0194Labels trieNode0194Gain
  exact BellmanLabelStepRun.append trieNode0193Run trieNode0194StepRun

private def trieNode0195State : State := edge0068.dst
private def trieNode0195StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0195StepGain : Int := edge0068.gain + (0)
private def trieNode0195Labels : List SmokeLabel :=
  trieNode0194Labels ++ trieNode0195StepLabels
private def trieNode0195Gain : Int :=
  trieNode0194Gain + trieNode0195StepGain

private theorem trieNode0195StepRun :
    BellmanLabelStepRun SmokeStep trieNode0194State trieNode0195State
      trieNode0195StepLabels trieNode0195StepGain := by
  unfold trieNode0194State trieNode0195State
  unfold trieNode0195StepLabels trieNode0195StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0068
  exact BellmanLabelStepRun.nil trieNode0195State

private theorem trieNode0195Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0195State
      trieNode0195Labels trieNode0195Gain := by
  unfold trieNode0195Labels trieNode0195Gain
  exact BellmanLabelStepRun.append trieNode0194Run trieNode0195StepRun

private def trieNode0196State : State := edge0105.dst
private def trieNode0196StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0196StepGain : Int := edge0105.gain + (0)
private def trieNode0196Labels : List SmokeLabel :=
  trieNode0195Labels ++ trieNode0196StepLabels
private def trieNode0196Gain : Int :=
  trieNode0195Gain + trieNode0196StepGain

private theorem trieNode0196StepRun :
    BellmanLabelStepRun SmokeStep trieNode0195State trieNode0196State
      trieNode0196StepLabels trieNode0196StepGain := by
  unfold trieNode0195State trieNode0196State
  unfold trieNode0196StepLabels trieNode0196StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0105
  exact BellmanLabelStepRun.nil trieNode0196State

private theorem trieNode0196Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0196State
      trieNode0196Labels trieNode0196Gain := by
  unfold trieNode0196Labels trieNode0196Gain
  exact BellmanLabelStepRun.append trieNode0195Run trieNode0196StepRun

private def trieNode0197State : State := edge0023.dst
private def trieNode0197StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0197StepGain : Int := edge0023.gain + (0)
private def trieNode0197Labels : List SmokeLabel :=
  trieNode0192Labels ++ trieNode0197StepLabels
private def trieNode0197Gain : Int :=
  trieNode0192Gain + trieNode0197StepGain

private theorem trieNode0197StepRun :
    BellmanLabelStepRun SmokeStep trieNode0192State trieNode0197State
      trieNode0197StepLabels trieNode0197StepGain := by
  unfold trieNode0192State trieNode0197State
  unfold trieNode0197StepLabels trieNode0197StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0023
  exact BellmanLabelStepRun.nil trieNode0197State

private theorem trieNode0197Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0197State
      trieNode0197Labels trieNode0197Gain := by
  unfold trieNode0197Labels trieNode0197Gain
  exact BellmanLabelStepRun.append trieNode0192Run trieNode0197StepRun

private def trieNode0198State : State := edge0057.dst
private def trieNode0198StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0198StepGain : Int := edge0057.gain + (0)
private def trieNode0198Labels : List SmokeLabel :=
  trieNode0197Labels ++ trieNode0198StepLabels
private def trieNode0198Gain : Int :=
  trieNode0197Gain + trieNode0198StepGain

private theorem trieNode0198StepRun :
    BellmanLabelStepRun SmokeStep trieNode0197State trieNode0198State
      trieNode0198StepLabels trieNode0198StepGain := by
  unfold trieNode0197State trieNode0198State
  unfold trieNode0198StepLabels trieNode0198StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0057
  exact BellmanLabelStepRun.nil trieNode0198State

private theorem trieNode0198Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0198State
      trieNode0198Labels trieNode0198Gain := by
  unfold trieNode0198Labels trieNode0198Gain
  exact BellmanLabelStepRun.append trieNode0197Run trieNode0198StepRun

private def trieNode0199State : State := edge0091.dst
private def trieNode0199StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0199StepGain : Int := edge0091.gain + (0)
private def trieNode0199Labels : List SmokeLabel :=
  trieNode0198Labels ++ trieNode0199StepLabels
private def trieNode0199Gain : Int :=
  trieNode0198Gain + trieNode0199StepGain

private theorem trieNode0199StepRun :
    BellmanLabelStepRun SmokeStep trieNode0198State trieNode0199State
      trieNode0199StepLabels trieNode0199StepGain := by
  unfold trieNode0198State trieNode0199State
  unfold trieNode0199StepLabels trieNode0199StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0091
  exact BellmanLabelStepRun.nil trieNode0199State

private theorem trieNode0199Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0199State
      trieNode0199Labels trieNode0199Gain := by
  unfold trieNode0199Labels trieNode0199Gain
  exact BellmanLabelStepRun.append trieNode0198Run trieNode0199StepRun

private def trieNode0200State : State := edge0104.dst
private def trieNode0200StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0200StepGain : Int := edge0104.gain + (0)
private def trieNode0200Labels : List SmokeLabel :=
  trieNode0199Labels ++ trieNode0200StepLabels
private def trieNode0200Gain : Int :=
  trieNode0199Gain + trieNode0200StepGain

private theorem trieNode0200StepRun :
    BellmanLabelStepRun SmokeStep trieNode0199State trieNode0200State
      trieNode0200StepLabels trieNode0200StepGain := by
  unfold trieNode0199State trieNode0200State
  unfold trieNode0200StepLabels trieNode0200StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0104
  exact BellmanLabelStepRun.nil trieNode0200State

private theorem trieNode0200Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0200State
      trieNode0200Labels trieNode0200Gain := by
  unfold trieNode0200Labels trieNode0200Gain
  exact BellmanLabelStepRun.append trieNode0199Run trieNode0200StepRun

private def trieNode0201State : State := edge0156.dst
private def trieNode0201StepLabels : List SmokeLabel :=
  [SmokeLabel.l0007]
private def trieNode0201StepGain : Int := edge0156.gain + (0)
private def trieNode0201Labels : List SmokeLabel :=
  trieNode0187Labels ++ trieNode0201StepLabels
private def trieNode0201Gain : Int :=
  trieNode0187Gain + trieNode0201StepGain

private theorem trieNode0201StepRun :
    BellmanLabelStepRun SmokeStep trieNode0187State trieNode0201State
      trieNode0201StepLabels trieNode0201StepGain := by
  unfold trieNode0187State trieNode0201State
  unfold trieNode0201StepLabels trieNode0201StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  exact BellmanLabelStepRun.nil trieNode0201State

private theorem trieNode0201Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0201State
      trieNode0201Labels trieNode0201Gain := by
  unfold trieNode0201Labels trieNode0201Gain
  exact BellmanLabelStepRun.append trieNode0187Run trieNode0201StepRun

private def trieNode0202State : State := edge0169.dst
private def trieNode0202StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0202StepGain : Int := edge0169.gain + (0)
private def trieNode0202Labels : List SmokeLabel :=
  trieNode0201Labels ++ trieNode0202StepLabels
private def trieNode0202Gain : Int :=
  trieNode0201Gain + trieNode0202StepGain

private theorem trieNode0202StepRun :
    BellmanLabelStepRun SmokeStep trieNode0201State trieNode0202State
      trieNode0202StepLabels trieNode0202StepGain := by
  unfold trieNode0201State trieNode0202State
  unfold trieNode0202StepLabels trieNode0202StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0169
  exact BellmanLabelStepRun.nil trieNode0202State

private theorem trieNode0202Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0202State
      trieNode0202Labels trieNode0202Gain := by
  unfold trieNode0202Labels trieNode0202Gain
  exact BellmanLabelStepRun.append trieNode0201Run trieNode0202StepRun

private def trieNode0203State : State := edge0183.dst
private def trieNode0203StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0203StepGain : Int := edge0183.gain + (0)
private def trieNode0203Labels : List SmokeLabel :=
  trieNode0202Labels ++ trieNode0203StepLabels
private def trieNode0203Gain : Int :=
  trieNode0202Gain + trieNode0203StepGain

private theorem trieNode0203StepRun :
    BellmanLabelStepRun SmokeStep trieNode0202State trieNode0203State
      trieNode0203StepLabels trieNode0203StepGain := by
  unfold trieNode0202State trieNode0203State
  unfold trieNode0203StepLabels trieNode0203StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0183
  exact BellmanLabelStepRun.nil trieNode0203State

private theorem trieNode0203Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0203State
      trieNode0203Labels trieNode0203Gain := by
  unfold trieNode0203Labels trieNode0203Gain
  exact BellmanLabelStepRun.append trieNode0202Run trieNode0203StepRun

private def trieNode0204State : State := edge0196.dst
private def trieNode0204StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0204StepGain : Int := edge0196.gain + (0)
private def trieNode0204Labels : List SmokeLabel :=
  trieNode0203Labels ++ trieNode0204StepLabels
private def trieNode0204Gain : Int :=
  trieNode0203Gain + trieNode0204StepGain

private theorem trieNode0204StepRun :
    BellmanLabelStepRun SmokeStep trieNode0203State trieNode0204State
      trieNode0204StepLabels trieNode0204StepGain := by
  unfold trieNode0203State trieNode0204State
  unfold trieNode0204StepLabels trieNode0204StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0196
  exact BellmanLabelStepRun.nil trieNode0204State

private theorem trieNode0204Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0204State
      trieNode0204Labels trieNode0204Gain := by
  unfold trieNode0204Labels trieNode0204Gain
  exact BellmanLabelStepRun.append trieNode0203Run trieNode0204StepRun

private def trieNode0205State : State := edge0219.dst
private def trieNode0205StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0205StepGain : Int := edge0219.gain + (0)
private def trieNode0205Labels : List SmokeLabel :=
  trieNode0204Labels ++ trieNode0205StepLabels
private def trieNode0205Gain : Int :=
  trieNode0204Gain + trieNode0205StepGain

private theorem trieNode0205StepRun :
    BellmanLabelStepRun SmokeStep trieNode0204State trieNode0205State
      trieNode0205StepLabels trieNode0205StepGain := by
  unfold trieNode0204State trieNode0205State
  unfold trieNode0205StepLabels trieNode0205StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0219
  exact BellmanLabelStepRun.nil trieNode0205State

private theorem trieNode0205Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0205State
      trieNode0205Labels trieNode0205Gain := by
  unfold trieNode0205Labels trieNode0205Gain
  exact BellmanLabelStepRun.append trieNode0204Run trieNode0205StepRun

private def trieNode0206State : State := edge0020.dst
private def trieNode0206StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0206StepGain : Int := edge0020.gain + (0)
private def trieNode0206Labels : List SmokeLabel :=
  trieNode0205Labels ++ trieNode0206StepLabels
private def trieNode0206Gain : Int :=
  trieNode0205Gain + trieNode0206StepGain

private theorem trieNode0206StepRun :
    BellmanLabelStepRun SmokeStep trieNode0205State trieNode0206State
      trieNode0206StepLabels trieNode0206StepGain := by
  unfold trieNode0205State trieNode0206State
  unfold trieNode0206StepLabels trieNode0206StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0020
  exact BellmanLabelStepRun.nil trieNode0206State

private theorem trieNode0206Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0206State
      trieNode0206Labels trieNode0206Gain := by
  unfold trieNode0206Labels trieNode0206Gain
  exact BellmanLabelStepRun.append trieNode0205Run trieNode0206StepRun

private def trieNode0207State : State := edge0034.dst
private def trieNode0207StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0207StepGain : Int := edge0034.gain + (0)
private def trieNode0207Labels : List SmokeLabel :=
  trieNode0206Labels ++ trieNode0207StepLabels
private def trieNode0207Gain : Int :=
  trieNode0206Gain + trieNode0207StepGain

private theorem trieNode0207StepRun :
    BellmanLabelStepRun SmokeStep trieNode0206State trieNode0207State
      trieNode0207StepLabels trieNode0207StepGain := by
  unfold trieNode0206State trieNode0207State
  unfold trieNode0207StepLabels trieNode0207StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0034
  exact BellmanLabelStepRun.nil trieNode0207State

private theorem trieNode0207Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0207State
      trieNode0207Labels trieNode0207Gain := by
  unfold trieNode0207Labels trieNode0207Gain
  exact BellmanLabelStepRun.append trieNode0206Run trieNode0207StepRun

private def trieNode0208State : State := edge0067.dst
private def trieNode0208StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0208StepGain : Int := edge0067.gain + (0)
private def trieNode0208Labels : List SmokeLabel :=
  trieNode0207Labels ++ trieNode0208StepLabels
private def trieNode0208Gain : Int :=
  trieNode0207Gain + trieNode0208StepGain

private theorem trieNode0208StepRun :
    BellmanLabelStepRun SmokeStep trieNode0207State trieNode0208State
      trieNode0208StepLabels trieNode0208StepGain := by
  unfold trieNode0207State trieNode0208State
  unfold trieNode0208StepLabels trieNode0208StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0067
  exact BellmanLabelStepRun.nil trieNode0208State

private theorem trieNode0208Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0208State
      trieNode0208Labels trieNode0208Gain := by
  unfold trieNode0208Labels trieNode0208Gain
  exact BellmanLabelStepRun.append trieNode0207Run trieNode0208StepRun

private def trieNode0209State : State := edge0103.dst
private def trieNode0209StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0209StepGain : Int := edge0103.gain + (0)
private def trieNode0209Labels : List SmokeLabel :=
  trieNode0208Labels ++ trieNode0209StepLabels
private def trieNode0209Gain : Int :=
  trieNode0208Gain + trieNode0209StepGain

private theorem trieNode0209StepRun :
    BellmanLabelStepRun SmokeStep trieNode0208State trieNode0209State
      trieNode0209StepLabels trieNode0209StepGain := by
  unfold trieNode0208State trieNode0209State
  unfold trieNode0209StepLabels trieNode0209StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0103
  exact BellmanLabelStepRun.nil trieNode0209State

private theorem trieNode0209Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0209State
      trieNode0209Labels trieNode0209Gain := by
  unfold trieNode0209Labels trieNode0209Gain
  exact BellmanLabelStepRun.append trieNode0208Run trieNode0209StepRun

private def trieNode0210State : State := edge0021.dst
private def trieNode0210StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0210StepGain : Int := edge0021.gain + (0)
private def trieNode0210Labels : List SmokeLabel :=
  trieNode0205Labels ++ trieNode0210StepLabels
private def trieNode0210Gain : Int :=
  trieNode0205Gain + trieNode0210StepGain

private theorem trieNode0210StepRun :
    BellmanLabelStepRun SmokeStep trieNode0205State trieNode0210State
      trieNode0210StepLabels trieNode0210StepGain := by
  unfold trieNode0205State trieNode0210State
  unfold trieNode0210StepLabels trieNode0210StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0021
  exact BellmanLabelStepRun.nil trieNode0210State

private theorem trieNode0210Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0210State
      trieNode0210Labels trieNode0210Gain := by
  unfold trieNode0210Labels trieNode0210Gain
  exact BellmanLabelStepRun.append trieNode0205Run trieNode0210StepRun

private def trieNode0211State : State := edge0056.dst
private def trieNode0211StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0211StepGain : Int := edge0056.gain + (0)
private def trieNode0211Labels : List SmokeLabel :=
  trieNode0210Labels ++ trieNode0211StepLabels
private def trieNode0211Gain : Int :=
  trieNode0210Gain + trieNode0211StepGain

private theorem trieNode0211StepRun :
    BellmanLabelStepRun SmokeStep trieNode0210State trieNode0211State
      trieNode0211StepLabels trieNode0211StepGain := by
  unfold trieNode0210State trieNode0211State
  unfold trieNode0211StepLabels trieNode0211StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0056
  exact BellmanLabelStepRun.nil trieNode0211State

private theorem trieNode0211Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0211State
      trieNode0211Labels trieNode0211Gain := by
  unfold trieNode0211Labels trieNode0211Gain
  exact BellmanLabelStepRun.append trieNode0210Run trieNode0211StepRun

private def trieNode0212State : State := edge0090.dst
private def trieNode0212StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0212StepGain : Int := edge0090.gain + (0)
private def trieNode0212Labels : List SmokeLabel :=
  trieNode0211Labels ++ trieNode0212StepLabels
private def trieNode0212Gain : Int :=
  trieNode0211Gain + trieNode0212StepGain

private theorem trieNode0212StepRun :
    BellmanLabelStepRun SmokeStep trieNode0211State trieNode0212State
      trieNode0212StepLabels trieNode0212StepGain := by
  unfold trieNode0211State trieNode0212State
  unfold trieNode0212StepLabels trieNode0212StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0090
  exact BellmanLabelStepRun.nil trieNode0212State

private theorem trieNode0212Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0212State
      trieNode0212Labels trieNode0212Gain := by
  unfold trieNode0212Labels trieNode0212Gain
  exact BellmanLabelStepRun.append trieNode0211Run trieNode0212StepRun

private def trieNode0213State : State := edge0102.dst
private def trieNode0213StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0213StepGain : Int := edge0102.gain + (0)
private def trieNode0213Labels : List SmokeLabel :=
  trieNode0212Labels ++ trieNode0213StepLabels
private def trieNode0213Gain : Int :=
  trieNode0212Gain + trieNode0213StepGain

private theorem trieNode0213StepRun :
    BellmanLabelStepRun SmokeStep trieNode0212State trieNode0213State
      trieNode0213StepLabels trieNode0213StepGain := by
  unfold trieNode0212State trieNode0213State
  unfold trieNode0213StepLabels trieNode0213StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0102
  exact BellmanLabelStepRun.nil trieNode0213State

private theorem trieNode0213Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0213State
      trieNode0213Labels trieNode0213Gain := by
  unfold trieNode0213Labels trieNode0213Gain
  exact BellmanLabelStepRun.append trieNode0212Run trieNode0213StepRun

private def trieNode0214State : State := edge0170.dst
private def trieNode0214StepLabels : List SmokeLabel :=
  [SmokeLabel.l0000]
private def trieNode0214StepGain : Int := edge0170.gain + (0)
private def trieNode0214Labels : List SmokeLabel :=
  trieNode0201Labels ++ trieNode0214StepLabels
private def trieNode0214Gain : Int :=
  trieNode0201Gain + trieNode0214StepGain

private theorem trieNode0214StepRun :
    BellmanLabelStepRun SmokeStep trieNode0201State trieNode0214State
      trieNode0214StepLabels trieNode0214StepGain := by
  unfold trieNode0201State trieNode0214State
  unfold trieNode0214StepLabels trieNode0214StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  exact BellmanLabelStepRun.nil trieNode0214State

private theorem trieNode0214Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0214State
      trieNode0214Labels trieNode0214Gain := by
  unfold trieNode0214Labels trieNode0214Gain
  exact BellmanLabelStepRun.append trieNode0201Run trieNode0214StepRun

private def trieNode0215State : State := edge0185.dst
private def trieNode0215StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0215StepGain : Int := edge0185.gain + (0)
private def trieNode0215Labels : List SmokeLabel :=
  trieNode0214Labels ++ trieNode0215StepLabels
private def trieNode0215Gain : Int :=
  trieNode0214Gain + trieNode0215StepGain

private theorem trieNode0215StepRun :
    BellmanLabelStepRun SmokeStep trieNode0214State trieNode0215State
      trieNode0215StepLabels trieNode0215StepGain := by
  unfold trieNode0214State trieNode0215State
  unfold trieNode0215StepLabels trieNode0215StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0185
  exact BellmanLabelStepRun.nil trieNode0215State

private theorem trieNode0215Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0215State
      trieNode0215Labels trieNode0215Gain := by
  unfold trieNode0215Labels trieNode0215Gain
  exact BellmanLabelStepRun.append trieNode0214Run trieNode0215StepRun

private def trieNode0216State : State := edge0201.dst
private def trieNode0216StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0216StepGain : Int := edge0201.gain + (0)
private def trieNode0216Labels : List SmokeLabel :=
  trieNode0215Labels ++ trieNode0216StepLabels
private def trieNode0216Gain : Int :=
  trieNode0215Gain + trieNode0216StepGain

private theorem trieNode0216StepRun :
    BellmanLabelStepRun SmokeStep trieNode0215State trieNode0216State
      trieNode0216StepLabels trieNode0216StepGain := by
  unfold trieNode0215State trieNode0216State
  unfold trieNode0216StepLabels trieNode0216StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0201
  exact BellmanLabelStepRun.nil trieNode0216State

private theorem trieNode0216Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0216State
      trieNode0216Labels trieNode0216Gain := by
  unfold trieNode0216Labels trieNode0216Gain
  exact BellmanLabelStepRun.append trieNode0215Run trieNode0216StepRun

private def trieNode0217State : State := edge0218.dst
private def trieNode0217StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0217StepGain : Int := edge0218.gain + (0)
private def trieNode0217Labels : List SmokeLabel :=
  trieNode0216Labels ++ trieNode0217StepLabels
private def trieNode0217Gain : Int :=
  trieNode0216Gain + trieNode0217StepGain

private theorem trieNode0217StepRun :
    BellmanLabelStepRun SmokeStep trieNode0216State trieNode0217State
      trieNode0217StepLabels trieNode0217StepGain := by
  unfold trieNode0216State trieNode0217State
  unfold trieNode0217StepLabels trieNode0217StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0218
  exact BellmanLabelStepRun.nil trieNode0217State

private theorem trieNode0217Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0217State
      trieNode0217Labels trieNode0217Gain := by
  unfold trieNode0217Labels trieNode0217Gain
  exact BellmanLabelStepRun.append trieNode0216Run trieNode0217StepRun

private def trieNode0218State : State := edge0018.dst
private def trieNode0218StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0218StepGain : Int := edge0018.gain + (0)
private def trieNode0218Labels : List SmokeLabel :=
  trieNode0217Labels ++ trieNode0218StepLabels
private def trieNode0218Gain : Int :=
  trieNode0217Gain + trieNode0218StepGain

private theorem trieNode0218StepRun :
    BellmanLabelStepRun SmokeStep trieNode0217State trieNode0218State
      trieNode0218StepLabels trieNode0218StepGain := by
  unfold trieNode0217State trieNode0218State
  unfold trieNode0218StepLabels trieNode0218StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0018
  exact BellmanLabelStepRun.nil trieNode0218State

private theorem trieNode0218Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0218State
      trieNode0218Labels trieNode0218Gain := by
  unfold trieNode0218Labels trieNode0218Gain
  exact BellmanLabelStepRun.append trieNode0217Run trieNode0218StepRun

private def trieNode0219State : State := edge0033.dst
private def trieNode0219StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0219StepGain : Int := edge0033.gain + (0)
private def trieNode0219Labels : List SmokeLabel :=
  trieNode0218Labels ++ trieNode0219StepLabels
private def trieNode0219Gain : Int :=
  trieNode0218Gain + trieNode0219StepGain

private theorem trieNode0219StepRun :
    BellmanLabelStepRun SmokeStep trieNode0218State trieNode0219State
      trieNode0219StepLabels trieNode0219StepGain := by
  unfold trieNode0218State trieNode0219State
  unfold trieNode0219StepLabels trieNode0219StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0033
  exact BellmanLabelStepRun.nil trieNode0219State

private theorem trieNode0219Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0219State
      trieNode0219Labels trieNode0219Gain := by
  unfold trieNode0219Labels trieNode0219Gain
  exact BellmanLabelStepRun.append trieNode0218Run trieNode0219StepRun

private def trieNode0220State : State := edge0066.dst
private def trieNode0220StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0220StepGain : Int := edge0066.gain + (0)
private def trieNode0220Labels : List SmokeLabel :=
  trieNode0219Labels ++ trieNode0220StepLabels
private def trieNode0220Gain : Int :=
  trieNode0219Gain + trieNode0220StepGain

private theorem trieNode0220StepRun :
    BellmanLabelStepRun SmokeStep trieNode0219State trieNode0220State
      trieNode0220StepLabels trieNode0220StepGain := by
  unfold trieNode0219State trieNode0220State
  unfold trieNode0220StepLabels trieNode0220StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0066
  exact BellmanLabelStepRun.nil trieNode0220State

private theorem trieNode0220Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0220State
      trieNode0220Labels trieNode0220Gain := by
  unfold trieNode0220Labels trieNode0220Gain
  exact BellmanLabelStepRun.append trieNode0219Run trieNode0220StepRun

private def trieNode0221State : State := edge0101.dst
private def trieNode0221StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0221StepGain : Int := edge0101.gain + (0)
private def trieNode0221Labels : List SmokeLabel :=
  trieNode0220Labels ++ trieNode0221StepLabels
private def trieNode0221Gain : Int :=
  trieNode0220Gain + trieNode0221StepGain

private theorem trieNode0221StepRun :
    BellmanLabelStepRun SmokeStep trieNode0220State trieNode0221State
      trieNode0221StepLabels trieNode0221StepGain := by
  unfold trieNode0220State trieNode0221State
  unfold trieNode0221StepLabels trieNode0221StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0101
  exact BellmanLabelStepRun.nil trieNode0221State

private theorem trieNode0221Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0221State
      trieNode0221Labels trieNode0221Gain := by
  unfold trieNode0221Labels trieNode0221Gain
  exact BellmanLabelStepRun.append trieNode0220Run trieNode0221StepRun

private def trieNode0222State : State := edge0019.dst
private def trieNode0222StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0222StepGain : Int := edge0019.gain + (0)
private def trieNode0222Labels : List SmokeLabel :=
  trieNode0217Labels ++ trieNode0222StepLabels
private def trieNode0222Gain : Int :=
  trieNode0217Gain + trieNode0222StepGain

private theorem trieNode0222StepRun :
    BellmanLabelStepRun SmokeStep trieNode0217State trieNode0222State
      trieNode0222StepLabels trieNode0222StepGain := by
  unfold trieNode0217State trieNode0222State
  unfold trieNode0222StepLabels trieNode0222StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0019
  exact BellmanLabelStepRun.nil trieNode0222State

private theorem trieNode0222Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0222State
      trieNode0222Labels trieNode0222Gain := by
  unfold trieNode0222Labels trieNode0222Gain
  exact BellmanLabelStepRun.append trieNode0217Run trieNode0222StepRun

private def trieNode0223State : State := edge0055.dst
private def trieNode0223StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0223StepGain : Int := edge0055.gain + (0)
private def trieNode0223Labels : List SmokeLabel :=
  trieNode0222Labels ++ trieNode0223StepLabels
private def trieNode0223Gain : Int :=
  trieNode0222Gain + trieNode0223StepGain

private theorem trieNode0223StepRun :
    BellmanLabelStepRun SmokeStep trieNode0222State trieNode0223State
      trieNode0223StepLabels trieNode0223StepGain := by
  unfold trieNode0222State trieNode0223State
  unfold trieNode0223StepLabels trieNode0223StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0055
  exact BellmanLabelStepRun.nil trieNode0223State

private theorem trieNode0223Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0223State
      trieNode0223Labels trieNode0223Gain := by
  unfold trieNode0223Labels trieNode0223Gain
  exact BellmanLabelStepRun.append trieNode0222Run trieNode0223StepRun

private def trieNode0224State : State := edge0089.dst
private def trieNode0224StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0224StepGain : Int := edge0089.gain + (0)
private def trieNode0224Labels : List SmokeLabel :=
  trieNode0223Labels ++ trieNode0224StepLabels
private def trieNode0224Gain : Int :=
  trieNode0223Gain + trieNode0224StepGain

private theorem trieNode0224StepRun :
    BellmanLabelStepRun SmokeStep trieNode0223State trieNode0224State
      trieNode0224StepLabels trieNode0224StepGain := by
  unfold trieNode0223State trieNode0224State
  unfold trieNode0224StepLabels trieNode0224StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0089
  exact BellmanLabelStepRun.nil trieNode0224State

private theorem trieNode0224Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0224State
      trieNode0224Labels trieNode0224Gain := by
  unfold trieNode0224Labels trieNode0224Gain
  exact BellmanLabelStepRun.append trieNode0223Run trieNode0224StepRun

private def trieNode0225State : State := edge0100.dst
private def trieNode0225StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0225StepGain : Int := edge0100.gain + (0)
private def trieNode0225Labels : List SmokeLabel :=
  trieNode0224Labels ++ trieNode0225StepLabels
private def trieNode0225Gain : Int :=
  trieNode0224Gain + trieNode0225StepGain

private theorem trieNode0225StepRun :
    BellmanLabelStepRun SmokeStep trieNode0224State trieNode0225State
      trieNode0225StepLabels trieNode0225StepGain := by
  unfold trieNode0224State trieNode0225State
  unfold trieNode0225StepLabels trieNode0225StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0100
  exact BellmanLabelStepRun.nil trieNode0225State

private theorem trieNode0225Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0225State
      trieNode0225Labels trieNode0225Gain := by
  unfold trieNode0225Labels trieNode0225Gain
  exact BellmanLabelStepRun.append trieNode0224Run trieNode0225StepRun

private def trieNode0226State : State := edge0186.dst
private def trieNode0226StepLabels : List SmokeLabel :=
  [SmokeLabel.l0005]
private def trieNode0226StepGain : Int := edge0186.gain + (0)
private def trieNode0226Labels : List SmokeLabel :=
  trieNode0214Labels ++ trieNode0226StepLabels
private def trieNode0226Gain : Int :=
  trieNode0214Gain + trieNode0226StepGain

private theorem trieNode0226StepRun :
    BellmanLabelStepRun SmokeStep trieNode0214State trieNode0226State
      trieNode0226StepLabels trieNode0226StepGain := by
  unfold trieNode0214State trieNode0226State
  unfold trieNode0226StepLabels trieNode0226StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  exact BellmanLabelStepRun.nil trieNode0226State

private theorem trieNode0226Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0226State
      trieNode0226Labels trieNode0226Gain := by
  unfold trieNode0226Labels trieNode0226Gain
  exact BellmanLabelStepRun.append trieNode0214Run trieNode0226StepRun

private def trieNode0227State : State := edge0203.dst
private def trieNode0227StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0227StepGain : Int := edge0203.gain + (0)
private def trieNode0227Labels : List SmokeLabel :=
  trieNode0226Labels ++ trieNode0227StepLabels
private def trieNode0227Gain : Int :=
  trieNode0226Gain + trieNode0227StepGain

private theorem trieNode0227StepRun :
    BellmanLabelStepRun SmokeStep trieNode0226State trieNode0227State
      trieNode0227StepLabels trieNode0227StepGain := by
  unfold trieNode0226State trieNode0227State
  unfold trieNode0227StepLabels trieNode0227StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  exact BellmanLabelStepRun.nil trieNode0227State

private theorem trieNode0227Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0227State
      trieNode0227Labels trieNode0227Gain := by
  unfold trieNode0227Labels trieNode0227Gain
  exact BellmanLabelStepRun.append trieNode0226Run trieNode0227StepRun

private def trieNode0228State : State := edge0214.dst
private def trieNode0228StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0228StepGain : Int := edge0214.gain + (0)
private def trieNode0228Labels : List SmokeLabel :=
  trieNode0227Labels ++ trieNode0228StepLabels
private def trieNode0228Gain : Int :=
  trieNode0227Gain + trieNode0228StepGain

private theorem trieNode0228StepRun :
    BellmanLabelStepRun SmokeStep trieNode0227State trieNode0228State
      trieNode0228StepLabels trieNode0228StepGain := by
  unfold trieNode0227State trieNode0228State
  unfold trieNode0228StepLabels trieNode0228StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0214
  exact BellmanLabelStepRun.nil trieNode0228State

private theorem trieNode0228Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0228State
      trieNode0228Labels trieNode0228Gain := by
  unfold trieNode0228Labels trieNode0228Gain
  exact BellmanLabelStepRun.append trieNode0227Run trieNode0228StepRun

private def trieNode0229State : State := edge0007.dst
private def trieNode0229StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0229StepGain : Int := edge0007.gain + (0)
private def trieNode0229Labels : List SmokeLabel :=
  trieNode0228Labels ++ trieNode0229StepLabels
private def trieNode0229Gain : Int :=
  trieNode0228Gain + trieNode0229StepGain

private theorem trieNode0229StepRun :
    BellmanLabelStepRun SmokeStep trieNode0228State trieNode0229State
      trieNode0229StepLabels trieNode0229StepGain := by
  unfold trieNode0228State trieNode0229State
  unfold trieNode0229StepLabels trieNode0229StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  exact BellmanLabelStepRun.nil trieNode0229State

private theorem trieNode0229Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0229State
      trieNode0229Labels trieNode0229Gain := by
  unfold trieNode0229Labels trieNode0229Gain
  exact BellmanLabelStepRun.append trieNode0228Run trieNode0229StepRun

private def trieNode0230State : State := edge0032.dst
private def trieNode0230StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0230StepGain : Int := edge0032.gain + (0)
private def trieNode0230Labels : List SmokeLabel :=
  trieNode0229Labels ++ trieNode0230StepLabels
private def trieNode0230Gain : Int :=
  trieNode0229Gain + trieNode0230StepGain

private theorem trieNode0230StepRun :
    BellmanLabelStepRun SmokeStep trieNode0229State trieNode0230State
      trieNode0230StepLabels trieNode0230StepGain := by
  unfold trieNode0229State trieNode0230State
  unfold trieNode0230StepLabels trieNode0230StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  exact BellmanLabelStepRun.nil trieNode0230State

private theorem trieNode0230Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0230State
      trieNode0230Labels trieNode0230Gain := by
  unfold trieNode0230Labels trieNode0230Gain
  exact BellmanLabelStepRun.append trieNode0229Run trieNode0230StepRun

private def trieNode0231State : State := edge0064.dst
private def trieNode0231StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0231StepGain : Int := edge0064.gain + (0)
private def trieNode0231Labels : List SmokeLabel :=
  trieNode0230Labels ++ trieNode0231StepLabels
private def trieNode0231Gain : Int :=
  trieNode0230Gain + trieNode0231StepGain

private theorem trieNode0231StepRun :
    BellmanLabelStepRun SmokeStep trieNode0230State trieNode0231State
      trieNode0231StepLabels trieNode0231StepGain := by
  unfold trieNode0230State trieNode0231State
  unfold trieNode0231StepLabels trieNode0231StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  exact BellmanLabelStepRun.nil trieNode0231State

private theorem trieNode0231Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0231State
      trieNode0231Labels trieNode0231Gain := by
  unfold trieNode0231Labels trieNode0231Gain
  exact BellmanLabelStepRun.append trieNode0230Run trieNode0231StepRun

private def trieNode0232State : State := edge0096.dst
private def trieNode0232StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0232StepGain : Int := edge0096.gain + (0)
private def trieNode0232Labels : List SmokeLabel :=
  trieNode0231Labels ++ trieNode0232StepLabels
private def trieNode0232Gain : Int :=
  trieNode0231Gain + trieNode0232StepGain

private theorem trieNode0232StepRun :
    BellmanLabelStepRun SmokeStep trieNode0231State trieNode0232State
      trieNode0232StepLabels trieNode0232StepGain := by
  unfold trieNode0231State trieNode0232State
  unfold trieNode0232StepLabels trieNode0232StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil trieNode0232State

private theorem trieNode0232Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0232State
      trieNode0232Labels trieNode0232Gain := by
  unfold trieNode0232Labels trieNode0232Gain
  exact BellmanLabelStepRun.append trieNode0231Run trieNode0232StepRun

private def trieNode0233State : State := edge0215.dst
private def trieNode0233StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0233StepGain : Int := edge0215.gain + (0)
private def trieNode0233Labels : List SmokeLabel :=
  trieNode0227Labels ++ trieNode0233StepLabels
private def trieNode0233Gain : Int :=
  trieNode0227Gain + trieNode0233StepGain

private theorem trieNode0233StepRun :
    BellmanLabelStepRun SmokeStep trieNode0227State trieNode0233State
      trieNode0233StepLabels trieNode0233StepGain := by
  unfold trieNode0227State trieNode0233State
  unfold trieNode0233StepLabels trieNode0233StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0215
  exact BellmanLabelStepRun.nil trieNode0233State

private theorem trieNode0233Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0233State
      trieNode0233Labels trieNode0233Gain := by
  unfold trieNode0233Labels trieNode0233Gain
  exact BellmanLabelStepRun.append trieNode0227Run trieNode0233StepRun

private def trieNode0234State : State := edge0012.dst
private def trieNode0234StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0234StepGain : Int := edge0012.gain + (0)
private def trieNode0234Labels : List SmokeLabel :=
  trieNode0233Labels ++ trieNode0234StepLabels
private def trieNode0234Gain : Int :=
  trieNode0233Gain + trieNode0234StepGain

private theorem trieNode0234StepRun :
    BellmanLabelStepRun SmokeStep trieNode0233State trieNode0234State
      trieNode0234StepLabels trieNode0234StepGain := by
  unfold trieNode0233State trieNode0234State
  unfold trieNode0234StepLabels trieNode0234StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0012
  exact BellmanLabelStepRun.nil trieNode0234State

private theorem trieNode0234Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0234State
      trieNode0234Labels trieNode0234Gain := by
  unfold trieNode0234Labels trieNode0234Gain
  exact BellmanLabelStepRun.append trieNode0233Run trieNode0234StepRun

private def trieNode0235State : State := edge0046.dst
private def trieNode0235StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0235StepGain : Int := edge0046.gain + (0)
private def trieNode0235Labels : List SmokeLabel :=
  trieNode0234Labels ++ trieNode0235StepLabels
private def trieNode0235Gain : Int :=
  trieNode0234Gain + trieNode0235StepGain

private theorem trieNode0235StepRun :
    BellmanLabelStepRun SmokeStep trieNode0234State trieNode0235State
      trieNode0235StepLabels trieNode0235StepGain := by
  unfold trieNode0234State trieNode0235State
  unfold trieNode0235StepLabels trieNode0235StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0046
  exact BellmanLabelStepRun.nil trieNode0235State

private theorem trieNode0235Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0235State
      trieNode0235Labels trieNode0235Gain := by
  unfold trieNode0235Labels trieNode0235Gain
  exact BellmanLabelStepRun.append trieNode0234Run trieNode0235StepRun

private def trieNode0236State : State := edge0065.dst
private def trieNode0236StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0236StepGain : Int := edge0065.gain + (0)
private def trieNode0236Labels : List SmokeLabel :=
  trieNode0235Labels ++ trieNode0236StepLabels
private def trieNode0236Gain : Int :=
  trieNode0235Gain + trieNode0236StepGain

private theorem trieNode0236StepRun :
    BellmanLabelStepRun SmokeStep trieNode0235State trieNode0236State
      trieNode0236StepLabels trieNode0236StepGain := by
  unfold trieNode0235State trieNode0236State
  unfold trieNode0236StepLabels trieNode0236StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0065
  exact BellmanLabelStepRun.nil trieNode0236State

private theorem trieNode0236Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0236State
      trieNode0236Labels trieNode0236Gain := by
  unfold trieNode0236Labels trieNode0236Gain
  exact BellmanLabelStepRun.append trieNode0235Run trieNode0236StepRun

private def trieNode0237State : State := edge0099.dst
private def trieNode0237StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0237StepGain : Int := edge0099.gain + (0)
private def trieNode0237Labels : List SmokeLabel :=
  trieNode0236Labels ++ trieNode0237StepLabels
private def trieNode0237Gain : Int :=
  trieNode0236Gain + trieNode0237StepGain

private theorem trieNode0237StepRun :
    BellmanLabelStepRun SmokeStep trieNode0236State trieNode0237State
      trieNode0237StepLabels trieNode0237StepGain := by
  unfold trieNode0236State trieNode0237State
  unfold trieNode0237StepLabels trieNode0237StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0099
  exact BellmanLabelStepRun.nil trieNode0237State

private theorem trieNode0237Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0237State
      trieNode0237Labels trieNode0237Gain := by
  unfold trieNode0237Labels trieNode0237Gain
  exact BellmanLabelStepRun.append trieNode0236Run trieNode0237StepRun

private def trieNode0238State : State := edge0013.dst
private def trieNode0238StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0238StepGain : Int := edge0013.gain + (0)
private def trieNode0238Labels : List SmokeLabel :=
  trieNode0233Labels ++ trieNode0238StepLabels
private def trieNode0238Gain : Int :=
  trieNode0233Gain + trieNode0238StepGain

private theorem trieNode0238StepRun :
    BellmanLabelStepRun SmokeStep trieNode0233State trieNode0238State
      trieNode0238StepLabels trieNode0238StepGain := by
  unfold trieNode0233State trieNode0238State
  unfold trieNode0238StepLabels trieNode0238StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0013
  exact BellmanLabelStepRun.nil trieNode0238State

private theorem trieNode0238Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0238State
      trieNode0238Labels trieNode0238Gain := by
  unfold trieNode0238Labels trieNode0238Gain
  exact BellmanLabelStepRun.append trieNode0233Run trieNode0238StepRun

private def trieNode0239State : State := edge0052.dst
private def trieNode0239StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0239StepGain : Int := edge0052.gain + (0)
private def trieNode0239Labels : List SmokeLabel :=
  trieNode0238Labels ++ trieNode0239StepLabels
private def trieNode0239Gain : Int :=
  trieNode0238Gain + trieNode0239StepGain

private theorem trieNode0239StepRun :
    BellmanLabelStepRun SmokeStep trieNode0238State trieNode0239State
      trieNode0239StepLabels trieNode0239StepGain := by
  unfold trieNode0238State trieNode0239State
  unfold trieNode0239StepLabels trieNode0239StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0052
  exact BellmanLabelStepRun.nil trieNode0239State

private theorem trieNode0239Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0239State
      trieNode0239Labels trieNode0239Gain := by
  unfold trieNode0239Labels trieNode0239Gain
  exact BellmanLabelStepRun.append trieNode0238Run trieNode0239StepRun

private def trieNode0240State : State := edge0082.dst
private def trieNode0240StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0240StepGain : Int := edge0082.gain + (0)
private def trieNode0240Labels : List SmokeLabel :=
  trieNode0239Labels ++ trieNode0240StepLabels
private def trieNode0240Gain : Int :=
  trieNode0239Gain + trieNode0240StepGain

private theorem trieNode0240StepRun :
    BellmanLabelStepRun SmokeStep trieNode0239State trieNode0240State
      trieNode0240StepLabels trieNode0240StepGain := by
  unfold trieNode0239State trieNode0240State
  unfold trieNode0240StepLabels trieNode0240StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0082
  exact BellmanLabelStepRun.nil trieNode0240State

private theorem trieNode0240Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0240State
      trieNode0240Labels trieNode0240Gain := by
  unfold trieNode0240Labels trieNode0240Gain
  exact BellmanLabelStepRun.append trieNode0239Run trieNode0240StepRun

private def trieNode0241State : State := edge0098.dst
private def trieNode0241StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0241StepGain : Int := edge0098.gain + (0)
private def trieNode0241Labels : List SmokeLabel :=
  trieNode0240Labels ++ trieNode0241StepLabels
private def trieNode0241Gain : Int :=
  trieNode0240Gain + trieNode0241StepGain

private theorem trieNode0241StepRun :
    BellmanLabelStepRun SmokeStep trieNode0240State trieNode0241State
      trieNode0241StepLabels trieNode0241StepGain := by
  unfold trieNode0240State trieNode0241State
  unfold trieNode0241StepLabels trieNode0241StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0098
  exact BellmanLabelStepRun.nil trieNode0241State

private theorem trieNode0241Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0241State
      trieNode0241Labels trieNode0241Gain := by
  unfold trieNode0241Labels trieNode0241Gain
  exact BellmanLabelStepRun.append trieNode0240Run trieNode0241StepRun

private def trieNode0242State : State := edge0204.dst
private def trieNode0242StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0242StepGain : Int := edge0204.gain + (0)
private def trieNode0242Labels : List SmokeLabel :=
  trieNode0226Labels ++ trieNode0242StepLabels
private def trieNode0242Gain : Int :=
  trieNode0226Gain + trieNode0242StepGain

private theorem trieNode0242StepRun :
    BellmanLabelStepRun SmokeStep trieNode0226State trieNode0242State
      trieNode0242StepLabels trieNode0242StepGain := by
  unfold trieNode0226State trieNode0242State
  unfold trieNode0242StepLabels trieNode0242StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  exact BellmanLabelStepRun.nil trieNode0242State

private theorem trieNode0242Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0242State
      trieNode0242Labels trieNode0242Gain := by
  unfold trieNode0242Labels trieNode0242Gain
  exact BellmanLabelStepRun.append trieNode0226Run trieNode0242StepRun

private def trieNode0243State : State := edge0224.dst
private def trieNode0243StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0243StepGain : Int := edge0224.gain + (0)
private def trieNode0243Labels : List SmokeLabel :=
  trieNode0242Labels ++ trieNode0243StepLabels
private def trieNode0243Gain : Int :=
  trieNode0242Gain + trieNode0243StepGain

private theorem trieNode0243StepRun :
    BellmanLabelStepRun SmokeStep trieNode0242State trieNode0243State
      trieNode0243StepLabels trieNode0243StepGain := by
  unfold trieNode0242State trieNode0243State
  unfold trieNode0243StepLabels trieNode0243StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0224
  exact BellmanLabelStepRun.nil trieNode0243State

private theorem trieNode0243Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0243State
      trieNode0243Labels trieNode0243Gain := by
  unfold trieNode0243Labels trieNode0243Gain
  exact BellmanLabelStepRun.append trieNode0242Run trieNode0243StepRun

private def trieNode0244State : State := edge0007.dst
private def trieNode0244StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0244StepGain : Int := edge0007.gain + (0)
private def trieNode0244Labels : List SmokeLabel :=
  trieNode0243Labels ++ trieNode0244StepLabels
private def trieNode0244Gain : Int :=
  trieNode0243Gain + trieNode0244StepGain

private theorem trieNode0244StepRun :
    BellmanLabelStepRun SmokeStep trieNode0243State trieNode0244State
      trieNode0244StepLabels trieNode0244StepGain := by
  unfold trieNode0243State trieNode0244State
  unfold trieNode0244StepLabels trieNode0244StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  exact BellmanLabelStepRun.nil trieNode0244State

private theorem trieNode0244Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0244State
      trieNode0244Labels trieNode0244Gain := by
  unfold trieNode0244Labels trieNode0244Gain
  exact BellmanLabelStepRun.append trieNode0243Run trieNode0244StepRun

private def trieNode0245State : State := edge0032.dst
private def trieNode0245StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0245StepGain : Int := edge0032.gain + (0)
private def trieNode0245Labels : List SmokeLabel :=
  trieNode0244Labels ++ trieNode0245StepLabels
private def trieNode0245Gain : Int :=
  trieNode0244Gain + trieNode0245StepGain

private theorem trieNode0245StepRun :
    BellmanLabelStepRun SmokeStep trieNode0244State trieNode0245State
      trieNode0245StepLabels trieNode0245StepGain := by
  unfold trieNode0244State trieNode0245State
  unfold trieNode0245StepLabels trieNode0245StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  exact BellmanLabelStepRun.nil trieNode0245State

private theorem trieNode0245Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0245State
      trieNode0245Labels trieNode0245Gain := by
  unfold trieNode0245Labels trieNode0245Gain
  exact BellmanLabelStepRun.append trieNode0244Run trieNode0245StepRun

private def trieNode0246State : State := edge0064.dst
private def trieNode0246StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0246StepGain : Int := edge0064.gain + (0)
private def trieNode0246Labels : List SmokeLabel :=
  trieNode0245Labels ++ trieNode0246StepLabels
private def trieNode0246Gain : Int :=
  trieNode0245Gain + trieNode0246StepGain

private theorem trieNode0246StepRun :
    BellmanLabelStepRun SmokeStep trieNode0245State trieNode0246State
      trieNode0246StepLabels trieNode0246StepGain := by
  unfold trieNode0245State trieNode0246State
  unfold trieNode0246StepLabels trieNode0246StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  exact BellmanLabelStepRun.nil trieNode0246State

private theorem trieNode0246Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0246State
      trieNode0246Labels trieNode0246Gain := by
  unfold trieNode0246Labels trieNode0246Gain
  exact BellmanLabelStepRun.append trieNode0245Run trieNode0246StepRun

private def trieNode0247State : State := edge0096.dst
private def trieNode0247StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0247StepGain : Int := edge0096.gain + (0)
private def trieNode0247Labels : List SmokeLabel :=
  trieNode0246Labels ++ trieNode0247StepLabels
private def trieNode0247Gain : Int :=
  trieNode0246Gain + trieNode0247StepGain

private theorem trieNode0247StepRun :
    BellmanLabelStepRun SmokeStep trieNode0246State trieNode0247State
      trieNode0247StepLabels trieNode0247StepGain := by
  unfold trieNode0246State trieNode0247State
  unfold trieNode0247StepLabels trieNode0247StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil trieNode0247State

private theorem trieNode0247Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0247State
      trieNode0247Labels trieNode0247Gain := by
  unfold trieNode0247Labels trieNode0247Gain
  exact BellmanLabelStepRun.append trieNode0246Run trieNode0247StepRun

private def trieNode0248State : State := edge0225.dst
private def trieNode0248StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0248StepGain : Int := edge0225.gain + (0)
private def trieNode0248Labels : List SmokeLabel :=
  trieNode0242Labels ++ trieNode0248StepLabels
private def trieNode0248Gain : Int :=
  trieNode0242Gain + trieNode0248StepGain

private theorem trieNode0248StepRun :
    BellmanLabelStepRun SmokeStep trieNode0242State trieNode0248State
      trieNode0248StepLabels trieNode0248StepGain := by
  unfold trieNode0242State trieNode0248State
  unfold trieNode0248StepLabels trieNode0248StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0225
  exact BellmanLabelStepRun.nil trieNode0248State

private theorem trieNode0248Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0248State
      trieNode0248Labels trieNode0248Gain := by
  unfold trieNode0248Labels trieNode0248Gain
  exact BellmanLabelStepRun.append trieNode0242Run trieNode0248StepRun

private def trieNode0249State : State := edge0016.dst
private def trieNode0249StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0249StepGain : Int := edge0016.gain + (0)
private def trieNode0249Labels : List SmokeLabel :=
  trieNode0248Labels ++ trieNode0249StepLabels
private def trieNode0249Gain : Int :=
  trieNode0248Gain + trieNode0249StepGain

private theorem trieNode0249StepRun :
    BellmanLabelStepRun SmokeStep trieNode0248State trieNode0249State
      trieNode0249StepLabels trieNode0249StepGain := by
  unfold trieNode0248State trieNode0249State
  unfold trieNode0249StepLabels trieNode0249StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0016
  exact BellmanLabelStepRun.nil trieNode0249State

private theorem trieNode0249Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0249State
      trieNode0249Labels trieNode0249Gain := by
  unfold trieNode0249Labels trieNode0249Gain
  exact BellmanLabelStepRun.append trieNode0248Run trieNode0249StepRun

private def trieNode0250State : State := edge0032.dst
private def trieNode0250StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0250StepGain : Int := edge0032.gain + (0)
private def trieNode0250Labels : List SmokeLabel :=
  trieNode0249Labels ++ trieNode0250StepLabels
private def trieNode0250Gain : Int :=
  trieNode0249Gain + trieNode0250StepGain

private theorem trieNode0250StepRun :
    BellmanLabelStepRun SmokeStep trieNode0249State trieNode0250State
      trieNode0250StepLabels trieNode0250StepGain := by
  unfold trieNode0249State trieNode0250State
  unfold trieNode0250StepLabels trieNode0250StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  exact BellmanLabelStepRun.nil trieNode0250State

private theorem trieNode0250Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0250State
      trieNode0250Labels trieNode0250Gain := by
  unfold trieNode0250Labels trieNode0250Gain
  exact BellmanLabelStepRun.append trieNode0249Run trieNode0250StepRun

private def trieNode0251State : State := edge0064.dst
private def trieNode0251StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0251StepGain : Int := edge0064.gain + (0)
private def trieNode0251Labels : List SmokeLabel :=
  trieNode0250Labels ++ trieNode0251StepLabels
private def trieNode0251Gain : Int :=
  trieNode0250Gain + trieNode0251StepGain

private theorem trieNode0251StepRun :
    BellmanLabelStepRun SmokeStep trieNode0250State trieNode0251State
      trieNode0251StepLabels trieNode0251StepGain := by
  unfold trieNode0250State trieNode0251State
  unfold trieNode0251StepLabels trieNode0251StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  exact BellmanLabelStepRun.nil trieNode0251State

private theorem trieNode0251Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0251State
      trieNode0251Labels trieNode0251Gain := by
  unfold trieNode0251Labels trieNode0251Gain
  exact BellmanLabelStepRun.append trieNode0250Run trieNode0251StepRun

private def trieNode0252State : State := edge0096.dst
private def trieNode0252StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0252StepGain : Int := edge0096.gain + (0)
private def trieNode0252Labels : List SmokeLabel :=
  trieNode0251Labels ++ trieNode0252StepLabels
private def trieNode0252Gain : Int :=
  trieNode0251Gain + trieNode0252StepGain

private theorem trieNode0252StepRun :
    BellmanLabelStepRun SmokeStep trieNode0251State trieNode0252State
      trieNode0252StepLabels trieNode0252StepGain := by
  unfold trieNode0251State trieNode0252State
  unfold trieNode0252StepLabels trieNode0252StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil trieNode0252State

private theorem trieNode0252Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0252State
      trieNode0252Labels trieNode0252Gain := by
  unfold trieNode0252Labels trieNode0252Gain
  exact BellmanLabelStepRun.append trieNode0251Run trieNode0252StepRun

private def trieNode0253State : State := edge0017.dst
private def trieNode0253StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0253StepGain : Int := edge0017.gain + (0)
private def trieNode0253Labels : List SmokeLabel :=
  trieNode0248Labels ++ trieNode0253StepLabels
private def trieNode0253Gain : Int :=
  trieNode0248Gain + trieNode0253StepGain

private theorem trieNode0253StepRun :
    BellmanLabelStepRun SmokeStep trieNode0248State trieNode0253State
      trieNode0253StepLabels trieNode0253StepGain := by
  unfold trieNode0248State trieNode0253State
  unfold trieNode0253StepLabels trieNode0253StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0017
  exact BellmanLabelStepRun.nil trieNode0253State

private theorem trieNode0253Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0253State
      trieNode0253Labels trieNode0253Gain := by
  unfold trieNode0253Labels trieNode0253Gain
  exact BellmanLabelStepRun.append trieNode0248Run trieNode0253StepRun

private def trieNode0254State : State := edge0054.dst
private def trieNode0254StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0254StepGain : Int := edge0054.gain + (0)
private def trieNode0254Labels : List SmokeLabel :=
  trieNode0253Labels ++ trieNode0254StepLabels
private def trieNode0254Gain : Int :=
  trieNode0253Gain + trieNode0254StepGain

private theorem trieNode0254StepRun :
    BellmanLabelStepRun SmokeStep trieNode0253State trieNode0254State
      trieNode0254StepLabels trieNode0254StepGain := by
  unfold trieNode0253State trieNode0254State
  unfold trieNode0254StepLabels trieNode0254StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0054
  exact BellmanLabelStepRun.nil trieNode0254State

private theorem trieNode0254Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0254State
      trieNode0254Labels trieNode0254Gain := by
  unfold trieNode0254Labels trieNode0254Gain
  exact BellmanLabelStepRun.append trieNode0253Run trieNode0254StepRun

private def trieNode0255State : State := edge0087.dst
private def trieNode0255StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0255StepGain : Int := edge0087.gain + (0)
private def trieNode0255Labels : List SmokeLabel :=
  trieNode0254Labels ++ trieNode0255StepLabels
private def trieNode0255Gain : Int :=
  trieNode0254Gain + trieNode0255StepGain

private theorem trieNode0255StepRun :
    BellmanLabelStepRun SmokeStep trieNode0254State trieNode0255State
      trieNode0255StepLabels trieNode0255StepGain := by
  unfold trieNode0254State trieNode0255State
  unfold trieNode0255StepLabels trieNode0255StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0087
  exact BellmanLabelStepRun.nil trieNode0255State

private theorem trieNode0255Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0255State
      trieNode0255Labels trieNode0255Gain := by
  unfold trieNode0255Labels trieNode0255Gain
  exact BellmanLabelStepRun.append trieNode0254Run trieNode0255StepRun

private def trieNode0256State : State := edge0095.dst
private def trieNode0256StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0256StepGain : Int := edge0095.gain + (0)
private def trieNode0256Labels : List SmokeLabel :=
  trieNode0255Labels ++ trieNode0256StepLabels
private def trieNode0256Gain : Int :=
  trieNode0255Gain + trieNode0256StepGain

private theorem trieNode0256StepRun :
    BellmanLabelStepRun SmokeStep trieNode0255State trieNode0256State
      trieNode0256StepLabels trieNode0256StepGain := by
  unfold trieNode0255State trieNode0256State
  unfold trieNode0256StepLabels trieNode0256StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0095
  exact BellmanLabelStepRun.nil trieNode0256State

private theorem trieNode0256Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0256State
      trieNode0256Labels trieNode0256Gain := by
  unfold trieNode0256Labels trieNode0256Gain
  exact BellmanLabelStepRun.append trieNode0255Run trieNode0256StepRun

private def trieNode0257State : State := edge0205.dst
private def trieNode0257StepLabels : List SmokeLabel :=
  [SmokeLabel.l0001]
private def trieNode0257StepGain : Int := edge0205.gain + (0)
private def trieNode0257Labels : List SmokeLabel :=
  trieNode0226Labels ++ trieNode0257StepLabels
private def trieNode0257Gain : Int :=
  trieNode0226Gain + trieNode0257StepGain

private theorem trieNode0257StepRun :
    BellmanLabelStepRun SmokeStep trieNode0226State trieNode0257State
      trieNode0257StepLabels trieNode0257StepGain := by
  unfold trieNode0226State trieNode0257State
  unfold trieNode0257StepLabels trieNode0257StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  exact BellmanLabelStepRun.nil trieNode0257State

private theorem trieNode0257Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0257State
      trieNode0257Labels trieNode0257Gain := by
  unfold trieNode0257Labels trieNode0257Gain
  exact BellmanLabelStepRun.append trieNode0226Run trieNode0257StepRun

private def trieNode0258State : State := edge0228.dst
private def trieNode0258StepLabels : List SmokeLabel :=
  [SmokeLabel.l0003]
private def trieNode0258StepGain : Int := edge0228.gain + (0)
private def trieNode0258Labels : List SmokeLabel :=
  trieNode0257Labels ++ trieNode0258StepLabels
private def trieNode0258Gain : Int :=
  trieNode0257Gain + trieNode0258StepGain

private theorem trieNode0258StepRun :
    BellmanLabelStepRun SmokeStep trieNode0257State trieNode0258State
      trieNode0258StepLabels trieNode0258StepGain := by
  unfold trieNode0257State trieNode0258State
  unfold trieNode0258StepLabels trieNode0258StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  exact BellmanLabelStepRun.nil trieNode0258State

private theorem trieNode0258Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0258State
      trieNode0258Labels trieNode0258Gain := by
  unfold trieNode0258Labels trieNode0258Gain
  exact BellmanLabelStepRun.append trieNode0257Run trieNode0258StepRun

private def trieNode0259State : State := edge0030.dst
private def trieNode0259StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0259StepGain : Int := edge0030.gain + (0)
private def trieNode0259Labels : List SmokeLabel :=
  trieNode0258Labels ++ trieNode0259StepLabels
private def trieNode0259Gain : Int :=
  trieNode0258Gain + trieNode0259StepGain

private theorem trieNode0259StepRun :
    BellmanLabelStepRun SmokeStep trieNode0258State trieNode0259State
      trieNode0259StepLabels trieNode0259StepGain := by
  unfold trieNode0258State trieNode0259State
  unfold trieNode0259StepLabels trieNode0259StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0030
  exact BellmanLabelStepRun.nil trieNode0259State

private theorem trieNode0259Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0259State
      trieNode0259Labels trieNode0259Gain := by
  unfold trieNode0259Labels trieNode0259Gain
  exact BellmanLabelStepRun.append trieNode0258Run trieNode0259StepRun

private def trieNode0260State : State := edge0051.dst
private def trieNode0260StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0260StepGain : Int := edge0051.gain + (0)
private def trieNode0260Labels : List SmokeLabel :=
  trieNode0259Labels ++ trieNode0260StepLabels
private def trieNode0260Gain : Int :=
  trieNode0259Gain + trieNode0260StepGain

private theorem trieNode0260StepRun :
    BellmanLabelStepRun SmokeStep trieNode0259State trieNode0260State
      trieNode0260StepLabels trieNode0260StepGain := by
  unfold trieNode0259State trieNode0260State
  unfold trieNode0260StepLabels trieNode0260StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0051
  exact BellmanLabelStepRun.nil trieNode0260State

private theorem trieNode0260Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0260State
      trieNode0260Labels trieNode0260Gain := by
  unfold trieNode0260Labels trieNode0260Gain
  exact BellmanLabelStepRun.append trieNode0259Run trieNode0260StepRun

private def trieNode0261State : State := edge0081.dst
private def trieNode0261StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0261StepGain : Int := edge0081.gain + (0)
private def trieNode0261Labels : List SmokeLabel :=
  trieNode0260Labels ++ trieNode0261StepLabels
private def trieNode0261Gain : Int :=
  trieNode0260Gain + trieNode0261StepGain

private theorem trieNode0261StepRun :
    BellmanLabelStepRun SmokeStep trieNode0260State trieNode0261State
      trieNode0261StepLabels trieNode0261StepGain := by
  unfold trieNode0260State trieNode0261State
  unfold trieNode0261StepLabels trieNode0261StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  exact BellmanLabelStepRun.nil trieNode0261State

private theorem trieNode0261Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0261State
      trieNode0261Labels trieNode0261Gain := by
  unfold trieNode0261Labels trieNode0261Gain
  exact BellmanLabelStepRun.append trieNode0260Run trieNode0261StepRun

private def trieNode0262State : State := edge0097.dst
private def trieNode0262StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0262StepGain : Int := edge0097.gain + (0)
private def trieNode0262Labels : List SmokeLabel :=
  trieNode0261Labels ++ trieNode0262StepLabels
private def trieNode0262Gain : Int :=
  trieNode0261Gain + trieNode0262StepGain

private theorem trieNode0262StepRun :
    BellmanLabelStepRun SmokeStep trieNode0261State trieNode0262State
      trieNode0262StepLabels trieNode0262StepGain := by
  unfold trieNode0261State trieNode0262State
  unfold trieNode0262StepLabels trieNode0262StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil trieNode0262State

private theorem trieNode0262Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0262State
      trieNode0262Labels trieNode0262Gain := by
  unfold trieNode0262Labels trieNode0262Gain
  exact BellmanLabelStepRun.append trieNode0261Run trieNode0262StepRun

private def trieNode0263State : State := edge0031.dst
private def trieNode0263StepLabels : List SmokeLabel :=
  [SmokeLabel.l0012]
private def trieNode0263StepGain : Int := edge0031.gain + (0)
private def trieNode0263Labels : List SmokeLabel :=
  trieNode0258Labels ++ trieNode0263StepLabels
private def trieNode0263Gain : Int :=
  trieNode0258Gain + trieNode0263StepGain

private theorem trieNode0263StepRun :
    BellmanLabelStepRun SmokeStep trieNode0258State trieNode0263State
      trieNode0263StepLabels trieNode0263StepGain := by
  unfold trieNode0258State trieNode0263State
  unfold trieNode0263StepLabels trieNode0263StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0031
  exact BellmanLabelStepRun.nil trieNode0263State

private theorem trieNode0263Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0263State
      trieNode0263Labels trieNode0263Gain := by
  unfold trieNode0263Labels trieNode0263Gain
  exact BellmanLabelStepRun.append trieNode0258Run trieNode0263StepRun

private def trieNode0264State : State := edge0060.dst
private def trieNode0264StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0264StepGain : Int := edge0060.gain + (0)
private def trieNode0264Labels : List SmokeLabel :=
  trieNode0263Labels ++ trieNode0264StepLabels
private def trieNode0264Gain : Int :=
  trieNode0263Gain + trieNode0264StepGain

private theorem trieNode0264StepRun :
    BellmanLabelStepRun SmokeStep trieNode0263State trieNode0264State
      trieNode0264StepLabels trieNode0264StepGain := by
  unfold trieNode0263State trieNode0264State
  unfold trieNode0264StepLabels trieNode0264StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0060
  exact BellmanLabelStepRun.nil trieNode0264State

private theorem trieNode0264Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0264State
      trieNode0264Labels trieNode0264Gain := by
  unfold trieNode0264Labels trieNode0264Gain
  exact BellmanLabelStepRun.append trieNode0263Run trieNode0264StepRun

private def trieNode0265State : State := edge0081.dst
private def trieNode0265StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0265StepGain : Int := edge0081.gain + (0)
private def trieNode0265Labels : List SmokeLabel :=
  trieNode0264Labels ++ trieNode0265StepLabels
private def trieNode0265Gain : Int :=
  trieNode0264Gain + trieNode0265StepGain

private theorem trieNode0265StepRun :
    BellmanLabelStepRun SmokeStep trieNode0264State trieNode0265State
      trieNode0265StepLabels trieNode0265StepGain := by
  unfold trieNode0264State trieNode0265State
  unfold trieNode0265StepLabels trieNode0265StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  exact BellmanLabelStepRun.nil trieNode0265State

private theorem trieNode0265Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0265State
      trieNode0265Labels trieNode0265Gain := by
  unfold trieNode0265Labels trieNode0265Gain
  exact BellmanLabelStepRun.append trieNode0264Run trieNode0265StepRun

private def trieNode0266State : State := edge0097.dst
private def trieNode0266StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0266StepGain : Int := edge0097.gain + (0)
private def trieNode0266Labels : List SmokeLabel :=
  trieNode0265Labels ++ trieNode0266StepLabels
private def trieNode0266Gain : Int :=
  trieNode0265Gain + trieNode0266StepGain

private theorem trieNode0266StepRun :
    BellmanLabelStepRun SmokeStep trieNode0265State trieNode0266State
      trieNode0266StepLabels trieNode0266StepGain := by
  unfold trieNode0265State trieNode0266State
  unfold trieNode0266StepLabels trieNode0266StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil trieNode0266State

private theorem trieNode0266Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0266State
      trieNode0266Labels trieNode0266Gain := by
  unfold trieNode0266Labels trieNode0266Gain
  exact BellmanLabelStepRun.append trieNode0265Run trieNode0266StepRun

private def trieNode0267State : State := edge0061.dst
private def trieNode0267StepLabels : List SmokeLabel :=
  [SmokeLabel.l0013]
private def trieNode0267StepGain : Int := edge0061.gain + (0)
private def trieNode0267Labels : List SmokeLabel :=
  trieNode0263Labels ++ trieNode0267StepLabels
private def trieNode0267Gain : Int :=
  trieNode0263Gain + trieNode0267StepGain

private theorem trieNode0267StepRun :
    BellmanLabelStepRun SmokeStep trieNode0263State trieNode0267State
      trieNode0267StepLabels trieNode0267StepGain := by
  unfold trieNode0263State trieNode0267State
  unfold trieNode0267StepLabels trieNode0267StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0061
  exact BellmanLabelStepRun.nil trieNode0267State

private theorem trieNode0267Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0267State
      trieNode0267Labels trieNode0267Gain := by
  unfold trieNode0267Labels trieNode0267Gain
  exact BellmanLabelStepRun.append trieNode0263Run trieNode0267StepRun

private def trieNode0268State : State := edge0088.dst
private def trieNode0268StepLabels : List SmokeLabel :=
  [SmokeLabel.l0011]
private def trieNode0268StepGain : Int := edge0088.gain + (0)
private def trieNode0268Labels : List SmokeLabel :=
  trieNode0267Labels ++ trieNode0268StepLabels
private def trieNode0268Gain : Int :=
  trieNode0267Gain + trieNode0268StepGain

private theorem trieNode0268StepRun :
    BellmanLabelStepRun SmokeStep trieNode0267State trieNode0268State
      trieNode0268StepLabels trieNode0268StepGain := by
  unfold trieNode0267State trieNode0268State
  unfold trieNode0268StepLabels trieNode0268StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0088
  exact BellmanLabelStepRun.nil trieNode0268State

private theorem trieNode0268Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0268State
      trieNode0268Labels trieNode0268Gain := by
  unfold trieNode0268Labels trieNode0268Gain
  exact BellmanLabelStepRun.append trieNode0267Run trieNode0268StepRun

private def trieNode0269State : State := edge0097.dst
private def trieNode0269StepLabels : List SmokeLabel :=
  [SmokeLabel.l0009]
private def trieNode0269StepGain : Int := edge0097.gain + (0)
private def trieNode0269Labels : List SmokeLabel :=
  trieNode0268Labels ++ trieNode0269StepLabels
private def trieNode0269Gain : Int :=
  trieNode0268Gain + trieNode0269StepGain

private theorem trieNode0269StepRun :
    BellmanLabelStepRun SmokeStep trieNode0268State trieNode0269State
      trieNode0269StepLabels trieNode0269StepGain := by
  unfold trieNode0268State trieNode0269State
  unfold trieNode0269StepLabels trieNode0269StepGain
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil trieNode0269State

private theorem trieNode0269Run :
    BellmanLabelStepRun SmokeStep rootState trieNode0269State
      trieNode0269Labels trieNode0269Gain := by
  unfold trieNode0269Labels trieNode0269Gain
  exact BellmanLabelStepRun.append trieNode0268Run trieNode0269StepRun

private def cls0000Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0000Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0128.gain + (edge0135.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))))

private theorem cls0000LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0000FinalState cls0000Labels cls0000Gain := by
  unfold cls0000Labels cls0000Gain rootState cls0000FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0128)
  · rfl
  · rfl
  · exact GraphEdge.e0128
  · exact SmokeEdgeLabel.e0128
  apply BellmanLabeledRun.cons (e := edge0135)
  · rfl
  · rfl
  · exact GraphEdge.e0135
  · exact SmokeEdgeLabel.e0135
  apply BellmanLabeledRun.cons (e := edge0145)
  · rfl
  · rfl
  · exact GraphEdge.e0145
  · exact SmokeEdgeLabel.e0145
  apply BellmanLabeledRun.cons (e := edge0158)
  · rfl
  · rfl
  · exact GraphEdge.e0158
  · exact SmokeEdgeLabel.e0158
  apply BellmanLabeledRun.cons (e := edge0173)
  · rfl
  · rfl
  · exact GraphEdge.e0173
  · exact SmokeEdgeLabel.e0173
  apply BellmanLabeledRun.cons (e := edge0190)
  · rfl
  · rfl
  · exact GraphEdge.e0190
  · exact SmokeEdgeLabel.e0190
  apply BellmanLabeledRun.cons (e := edge0210)
  · rfl
  · rfl
  · exact GraphEdge.e0210
  · exact SmokeEdgeLabel.e0210
  apply BellmanLabeledRun.cons (e := edge0006)
  · rfl
  · rfl
  · exact GraphEdge.e0006
  · exact SmokeEdgeLabel.e0006
  apply BellmanLabeledRun.cons (e := edge0045)
  · rfl
  · rfl
  · exact GraphEdge.e0045
  · exact SmokeEdgeLabel.e0045
  apply BellmanLabeledRun.cons (e := edge0080)
  · rfl
  · rfl
  · exact GraphEdge.e0080
  · exact SmokeEdgeLabel.e0080
  apply BellmanLabeledRun.cons (e := edge0123)
  · rfl
  · rfl
  · exact GraphEdge.e0123
  · exact SmokeEdgeLabel.e0123
  exact BellmanLabeledRun.nil State.s0141

private theorem cls0000LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0000FinalState cls0000Labels cls0000Gain := by
  unfold cls0000Labels cls0000Gain rootState cls0000FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0128
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0000SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0000SuffixGain : Int :=
  edge0125.gain + (edge0128.gain + (edge0135.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))

private theorem cls0000SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0000FinalState cls0000SuffixLabels cls0000SuffixGain := by
  unfold cls0000SuffixLabels cls0000SuffixGain commonPrefixFinalState cls0000FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0128
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0000ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0000SuffixLabels

private def cls0000ComposedGain : Int :=
  commonPrefixGain + cls0000SuffixGain

private theorem cls0000ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0000FinalState cls0000ComposedLabels cls0000ComposedGain := by
  unfold cls0000ComposedLabels cls0000ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0000SuffixLabelStepRun

private theorem cls0000ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0000 <= (176 : Int) + cls0000ComposedGain := by
  unfold cls0000ComposedGain commonPrefixGain cls0000SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0000TrieFinal_nonneg :
    0 <= graphPotential trieNode0014State := by
  unfold trieNode0014State
  decide

private theorem cls0000TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0000 <= (176 : Int) + trieNode0014Gain := by
  unfold trieNode0014Gain trieNode0014StepGain trieNode0013Gain trieNode0013StepGain trieNode0012Gain trieNode0012StepGain trieNode0011Gain trieNode0011StepGain trieNode0010Gain trieNode0010StepGain trieNode0009Gain trieNode0009StepGain trieNode0008Gain trieNode0008StepGain trieNode0007Gain trieNode0007StepGain trieNode0006Gain trieNode0006StepGain trieNode0005Gain trieNode0005StepGain trieNode0004Gain trieNode0004StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0000Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0000 <= (176 : Int) + cls0000Gain := by
  unfold cls0000Gain
  change (-376 : Int) <= -376
  decide

private def cls0001Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0001
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0001Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0128.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0176.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))))

private theorem cls0001LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0001FinalState cls0001Labels cls0001Gain := by
  unfold cls0001Labels cls0001Gain rootState cls0001FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0128)
  · rfl
  · rfl
  · exact GraphEdge.e0128
  · exact SmokeEdgeLabel.e0128
  apply BellmanLabeledRun.cons (e := edge0136)
  · rfl
  · rfl
  · exact GraphEdge.e0136
  · exact SmokeEdgeLabel.e0136
  apply BellmanLabeledRun.cons (e := edge0148)
  · rfl
  · rfl
  · exact GraphEdge.e0148
  · exact SmokeEdgeLabel.e0148
  apply BellmanLabeledRun.cons (e := edge0161)
  · rfl
  · rfl
  · exact GraphEdge.e0161
  · exact SmokeEdgeLabel.e0161
  apply BellmanLabeledRun.cons (e := edge0176)
  · rfl
  · rfl
  · exact GraphEdge.e0176
  · exact SmokeEdgeLabel.e0176
  apply BellmanLabeledRun.cons (e := edge0193)
  · rfl
  · rfl
  · exact GraphEdge.e0193
  · exact SmokeEdgeLabel.e0193
  apply BellmanLabeledRun.cons (e := edge0213)
  · rfl
  · rfl
  · exact GraphEdge.e0213
  · exact SmokeEdgeLabel.e0213
  apply BellmanLabeledRun.cons (e := edge0011)
  · rfl
  · rfl
  · exact GraphEdge.e0011
  · exact SmokeEdgeLabel.e0011
  apply BellmanLabeledRun.cons (e := edge0050)
  · rfl
  · rfl
  · exact GraphEdge.e0050
  · exact SmokeEdgeLabel.e0050
  apply BellmanLabeledRun.cons (e := edge0086)
  · rfl
  · rfl
  · exact GraphEdge.e0086
  · exact SmokeEdgeLabel.e0086
  apply BellmanLabeledRun.cons (e := edge0120)
  · rfl
  · rfl
  · exact GraphEdge.e0120
  · exact SmokeEdgeLabel.e0120
  exact BellmanLabeledRun.nil State.s0138

private theorem cls0001LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0001FinalState cls0001Labels cls0001Gain := by
  unfold cls0001Labels cls0001Gain rootState cls0001FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0128
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil State.s0138

private def cls0001SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0001
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0001SuffixGain : Int :=
  edge0125.gain + (edge0128.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0176.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))

private theorem cls0001SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0001FinalState cls0001SuffixLabels cls0001SuffixGain := by
  unfold cls0001SuffixLabels cls0001SuffixGain commonPrefixFinalState cls0001FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0128
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil State.s0138

private def cls0001ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0001SuffixLabels

private def cls0001ComposedGain : Int :=
  commonPrefixGain + cls0001SuffixGain

private theorem cls0001ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0001FinalState cls0001ComposedLabels cls0001ComposedGain := by
  unfold cls0001ComposedLabels cls0001ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0001SuffixLabelStepRun

private theorem cls0001ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0001 <= (176 : Int) + cls0001ComposedGain := by
  unfold cls0001ComposedGain commonPrefixGain cls0001SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0001TrieFinal_nonneg :
    0 <= graphPotential trieNode0024State := by
  unfold trieNode0024State
  decide

private theorem cls0001TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0001 <= (176 : Int) + trieNode0024Gain := by
  unfold trieNode0024Gain trieNode0024StepGain trieNode0023Gain trieNode0023StepGain trieNode0022Gain trieNode0022StepGain trieNode0021Gain trieNode0021StepGain trieNode0020Gain trieNode0020StepGain trieNode0019Gain trieNode0019StepGain trieNode0018Gain trieNode0018StepGain trieNode0017Gain trieNode0017StepGain trieNode0016Gain trieNode0016StepGain trieNode0015Gain trieNode0015StepGain trieNode0004Gain trieNode0004StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0001Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0001 <= (176 : Int) + cls0001Gain := by
  unfold cls0001Gain
  change (-376 : Int) <= -376
  decide

private def cls0002Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0002Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0137.gain + (edge0146.gain + (edge0157.gain + (edge0172.gain + (edge0189.gain + (edge0209.gain + (edge0005.gain + (edge0043.gain + (edge0078.gain + (edge0117.gain + (0))))))))))))))

private theorem cls0002LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0002FinalState cls0002Labels cls0002Gain := by
  unfold cls0002Labels cls0002Gain rootState cls0002FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0137)
  · rfl
  · rfl
  · exact GraphEdge.e0137
  · exact SmokeEdgeLabel.e0137
  apply BellmanLabeledRun.cons (e := edge0146)
  · rfl
  · rfl
  · exact GraphEdge.e0146
  · exact SmokeEdgeLabel.e0146
  apply BellmanLabeledRun.cons (e := edge0157)
  · rfl
  · rfl
  · exact GraphEdge.e0157
  · exact SmokeEdgeLabel.e0157
  apply BellmanLabeledRun.cons (e := edge0172)
  · rfl
  · rfl
  · exact GraphEdge.e0172
  · exact SmokeEdgeLabel.e0172
  apply BellmanLabeledRun.cons (e := edge0189)
  · rfl
  · rfl
  · exact GraphEdge.e0189
  · exact SmokeEdgeLabel.e0189
  apply BellmanLabeledRun.cons (e := edge0209)
  · rfl
  · rfl
  · exact GraphEdge.e0209
  · exact SmokeEdgeLabel.e0209
  apply BellmanLabeledRun.cons (e := edge0005)
  · rfl
  · rfl
  · exact GraphEdge.e0005
  · exact SmokeEdgeLabel.e0005
  apply BellmanLabeledRun.cons (e := edge0043)
  · rfl
  · rfl
  · exact GraphEdge.e0043
  · exact SmokeEdgeLabel.e0043
  apply BellmanLabeledRun.cons (e := edge0078)
  · rfl
  · rfl
  · exact GraphEdge.e0078
  · exact SmokeEdgeLabel.e0078
  apply BellmanLabeledRun.cons (e := edge0117)
  · rfl
  · rfl
  · exact GraphEdge.e0117
  · exact SmokeEdgeLabel.e0117
  exact BellmanLabeledRun.nil State.s0135

private theorem cls0002LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0002FinalState cls0002Labels cls0002Gain := by
  unfold cls0002Labels cls0002Gain rootState cls0002FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0137
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0146
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0157
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0172
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0189
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0209
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0005
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0043
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0078
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0117
  exact BellmanLabelStepRun.nil State.s0135

private def cls0002SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0002SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0137.gain + (edge0146.gain + (edge0157.gain + (edge0172.gain + (edge0189.gain + (edge0209.gain + (edge0005.gain + (edge0043.gain + (edge0078.gain + (edge0117.gain + (0))))))))))))

private theorem cls0002SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0002FinalState cls0002SuffixLabels cls0002SuffixGain := by
  unfold cls0002SuffixLabels cls0002SuffixGain commonPrefixFinalState cls0002FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0137
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0146
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0157
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0172
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0189
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0209
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0005
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0043
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0078
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0117
  exact BellmanLabelStepRun.nil State.s0135

private def cls0002ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0002SuffixLabels

private def cls0002ComposedGain : Int :=
  commonPrefixGain + cls0002SuffixGain

private theorem cls0002ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0002FinalState cls0002ComposedLabels cls0002ComposedGain := by
  unfold cls0002ComposedLabels cls0002ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0002SuffixLabelStepRun

private theorem cls0002ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0002 <= (176 : Int) + cls0002ComposedGain := by
  unfold cls0002ComposedGain commonPrefixGain cls0002SuffixGain
  change (-128 : Int) <= -128
  decide

private theorem cls0002TrieFinal_nonneg :
    0 <= graphPotential trieNode0035State := by
  unfold trieNode0035State
  decide

private theorem cls0002TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0002 <= (176 : Int) + trieNode0035Gain := by
  unfold trieNode0035Gain trieNode0035StepGain trieNode0034Gain trieNode0034StepGain trieNode0033Gain trieNode0033StepGain trieNode0032Gain trieNode0032StepGain trieNode0031Gain trieNode0031StepGain trieNode0030Gain trieNode0030StepGain trieNode0029Gain trieNode0029StepGain trieNode0028Gain trieNode0028StepGain trieNode0027Gain trieNode0027StepGain trieNode0026Gain trieNode0026StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-128 : Int) <= -128
  decide

private theorem cls0002Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0002 <= (176 : Int) + cls0002Gain := by
  unfold cls0002Gain
  change (-128 : Int) <= -128
  decide

private def cls0003Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0003Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0137.gain + (edge0147.gain + (edge0160.gain + (edge0175.gain + (edge0192.gain + (edge0212.gain + (edge0009.gain + (edge0048.gain + (edge0077.gain + (edge0116.gain + (0))))))))))))))

private theorem cls0003LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0003FinalState cls0003Labels cls0003Gain := by
  unfold cls0003Labels cls0003Gain rootState cls0003FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0137)
  · rfl
  · rfl
  · exact GraphEdge.e0137
  · exact SmokeEdgeLabel.e0137
  apply BellmanLabeledRun.cons (e := edge0147)
  · rfl
  · rfl
  · exact GraphEdge.e0147
  · exact SmokeEdgeLabel.e0147
  apply BellmanLabeledRun.cons (e := edge0160)
  · rfl
  · rfl
  · exact GraphEdge.e0160
  · exact SmokeEdgeLabel.e0160
  apply BellmanLabeledRun.cons (e := edge0175)
  · rfl
  · rfl
  · exact GraphEdge.e0175
  · exact SmokeEdgeLabel.e0175
  apply BellmanLabeledRun.cons (e := edge0192)
  · rfl
  · rfl
  · exact GraphEdge.e0192
  · exact SmokeEdgeLabel.e0192
  apply BellmanLabeledRun.cons (e := edge0212)
  · rfl
  · rfl
  · exact GraphEdge.e0212
  · exact SmokeEdgeLabel.e0212
  apply BellmanLabeledRun.cons (e := edge0009)
  · rfl
  · rfl
  · exact GraphEdge.e0009
  · exact SmokeEdgeLabel.e0009
  apply BellmanLabeledRun.cons (e := edge0048)
  · rfl
  · rfl
  · exact GraphEdge.e0048
  · exact SmokeEdgeLabel.e0048
  apply BellmanLabeledRun.cons (e := edge0077)
  · rfl
  · rfl
  · exact GraphEdge.e0077
  · exact SmokeEdgeLabel.e0077
  apply BellmanLabeledRun.cons (e := edge0116)
  · rfl
  · rfl
  · exact GraphEdge.e0116
  · exact SmokeEdgeLabel.e0116
  exact BellmanLabeledRun.nil State.s0134

private theorem cls0003LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0003FinalState cls0003Labels cls0003Gain := by
  unfold cls0003Labels cls0003Gain rootState cls0003FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0137
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0147
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0160
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0175
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0192
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0212
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0009
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0048
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0077
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0116
  exact BellmanLabelStepRun.nil State.s0134

private def cls0003SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0003SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0137.gain + (edge0147.gain + (edge0160.gain + (edge0175.gain + (edge0192.gain + (edge0212.gain + (edge0009.gain + (edge0048.gain + (edge0077.gain + (edge0116.gain + (0))))))))))))

private theorem cls0003SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0003FinalState cls0003SuffixLabels cls0003SuffixGain := by
  unfold cls0003SuffixLabels cls0003SuffixGain commonPrefixFinalState cls0003FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0137
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0147
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0160
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0175
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0192
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0212
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0009
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0048
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0077
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0116
  exact BellmanLabelStepRun.nil State.s0134

private def cls0003ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0003SuffixLabels

private def cls0003ComposedGain : Int :=
  commonPrefixGain + cls0003SuffixGain

private theorem cls0003ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0003FinalState cls0003ComposedLabels cls0003ComposedGain := by
  unfold cls0003ComposedLabels cls0003ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0003SuffixLabelStepRun

private theorem cls0003ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0003 <= (176 : Int) + cls0003ComposedGain := by
  unfold cls0003ComposedGain commonPrefixGain cls0003SuffixGain
  change (-128 : Int) <= -128
  decide

private theorem cls0003TrieFinal_nonneg :
    0 <= graphPotential trieNode0044State := by
  unfold trieNode0044State
  decide

private theorem cls0003TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0003 <= (176 : Int) + trieNode0044Gain := by
  unfold trieNode0044Gain trieNode0044StepGain trieNode0043Gain trieNode0043StepGain trieNode0042Gain trieNode0042StepGain trieNode0041Gain trieNode0041StepGain trieNode0040Gain trieNode0040StepGain trieNode0039Gain trieNode0039StepGain trieNode0038Gain trieNode0038StepGain trieNode0037Gain trieNode0037StepGain trieNode0036Gain trieNode0036StepGain trieNode0026Gain trieNode0026StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-128 : Int) <= -128
  decide

private theorem cls0003Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0003 <= (176 : Int) + cls0003Gain := by
  unfold cls0003Gain
  change (-128 : Int) <= -128
  decide

private def cls0004Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0004Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0149.gain + (edge0159.gain + (edge0171.gain + (edge0188.gain + (edge0208.gain + (edge0004.gain + (edge0042.gain + (edge0076.gain + (edge0115.gain + (0))))))))))))))

private theorem cls0004LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0004FinalState cls0004Labels cls0004Gain := by
  unfold cls0004Labels cls0004Gain rootState cls0004FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0149)
  · rfl
  · rfl
  · exact GraphEdge.e0149
  · exact SmokeEdgeLabel.e0149
  apply BellmanLabeledRun.cons (e := edge0159)
  · rfl
  · rfl
  · exact GraphEdge.e0159
  · exact SmokeEdgeLabel.e0159
  apply BellmanLabeledRun.cons (e := edge0171)
  · rfl
  · rfl
  · exact GraphEdge.e0171
  · exact SmokeEdgeLabel.e0171
  apply BellmanLabeledRun.cons (e := edge0188)
  · rfl
  · rfl
  · exact GraphEdge.e0188
  · exact SmokeEdgeLabel.e0188
  apply BellmanLabeledRun.cons (e := edge0208)
  · rfl
  · rfl
  · exact GraphEdge.e0208
  · exact SmokeEdgeLabel.e0208
  apply BellmanLabeledRun.cons (e := edge0004)
  · rfl
  · rfl
  · exact GraphEdge.e0004
  · exact SmokeEdgeLabel.e0004
  apply BellmanLabeledRun.cons (e := edge0042)
  · rfl
  · rfl
  · exact GraphEdge.e0042
  · exact SmokeEdgeLabel.e0042
  apply BellmanLabeledRun.cons (e := edge0076)
  · rfl
  · rfl
  · exact GraphEdge.e0076
  · exact SmokeEdgeLabel.e0076
  apply BellmanLabeledRun.cons (e := edge0115)
  · rfl
  · rfl
  · exact GraphEdge.e0115
  · exact SmokeEdgeLabel.e0115
  exact BellmanLabeledRun.nil State.s0133

private theorem cls0004LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0004FinalState cls0004Labels cls0004Gain := by
  unfold cls0004Labels cls0004Gain rootState cls0004FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0149
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0159
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0171
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0188
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0208
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0004
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0042
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0076
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0115
  exact BellmanLabelStepRun.nil State.s0133

private def cls0004SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0004SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0149.gain + (edge0159.gain + (edge0171.gain + (edge0188.gain + (edge0208.gain + (edge0004.gain + (edge0042.gain + (edge0076.gain + (edge0115.gain + (0))))))))))))

private theorem cls0004SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0004FinalState cls0004SuffixLabels cls0004SuffixGain := by
  unfold cls0004SuffixLabels cls0004SuffixGain commonPrefixFinalState cls0004FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0149
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0159
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0171
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0188
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0208
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0004
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0042
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0076
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0115
  exact BellmanLabelStepRun.nil State.s0133

private def cls0004ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0004SuffixLabels

private def cls0004ComposedGain : Int :=
  commonPrefixGain + cls0004SuffixGain

private theorem cls0004ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0004FinalState cls0004ComposedLabels cls0004ComposedGain := by
  unfold cls0004ComposedLabels cls0004ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0004SuffixLabelStepRun

private theorem cls0004ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0004 <= (176 : Int) + cls0004ComposedGain := by
  unfold cls0004ComposedGain commonPrefixGain cls0004SuffixGain
  change (-392 : Int) <= -392
  decide

private theorem cls0004TrieFinal_nonneg :
    0 <= graphPotential trieNode0054State := by
  unfold trieNode0054State
  decide

private theorem cls0004TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0004 <= (176 : Int) + trieNode0054Gain := by
  unfold trieNode0054Gain trieNode0054StepGain trieNode0053Gain trieNode0053StepGain trieNode0052Gain trieNode0052StepGain trieNode0051Gain trieNode0051StepGain trieNode0050Gain trieNode0050StepGain trieNode0049Gain trieNode0049StepGain trieNode0048Gain trieNode0048StepGain trieNode0047Gain trieNode0047StepGain trieNode0046Gain trieNode0046StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-392 : Int) <= -392
  decide

private theorem cls0004Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0004 <= (176 : Int) + cls0004Gain := by
  unfold cls0004Gain
  change (-392 : Int) <= -392
  decide

private def cls0005Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0005Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0162.gain + (edge0174.gain + (edge0187.gain + (edge0207.gain + (edge0003.gain + (edge0041.gain + (edge0075.gain + (edge0114.gain + (0))))))))))))))

private theorem cls0005LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0005FinalState cls0005Labels cls0005Gain := by
  unfold cls0005Labels cls0005Gain rootState cls0005FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0162)
  · rfl
  · rfl
  · exact GraphEdge.e0162
  · exact SmokeEdgeLabel.e0162
  apply BellmanLabeledRun.cons (e := edge0174)
  · rfl
  · rfl
  · exact GraphEdge.e0174
  · exact SmokeEdgeLabel.e0174
  apply BellmanLabeledRun.cons (e := edge0187)
  · rfl
  · rfl
  · exact GraphEdge.e0187
  · exact SmokeEdgeLabel.e0187
  apply BellmanLabeledRun.cons (e := edge0207)
  · rfl
  · rfl
  · exact GraphEdge.e0207
  · exact SmokeEdgeLabel.e0207
  apply BellmanLabeledRun.cons (e := edge0003)
  · rfl
  · rfl
  · exact GraphEdge.e0003
  · exact SmokeEdgeLabel.e0003
  apply BellmanLabeledRun.cons (e := edge0041)
  · rfl
  · rfl
  · exact GraphEdge.e0041
  · exact SmokeEdgeLabel.e0041
  apply BellmanLabeledRun.cons (e := edge0075)
  · rfl
  · rfl
  · exact GraphEdge.e0075
  · exact SmokeEdgeLabel.e0075
  apply BellmanLabeledRun.cons (e := edge0114)
  · rfl
  · rfl
  · exact GraphEdge.e0114
  · exact SmokeEdgeLabel.e0114
  exact BellmanLabeledRun.nil State.s0132

private theorem cls0005LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0005FinalState cls0005Labels cls0005Gain := by
  unfold cls0005Labels cls0005Gain rootState cls0005FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0162
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0174
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0187
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0207
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0003
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0041
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0075
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0114
  exact BellmanLabelStepRun.nil State.s0132

private def cls0005SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0005SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0162.gain + (edge0174.gain + (edge0187.gain + (edge0207.gain + (edge0003.gain + (edge0041.gain + (edge0075.gain + (edge0114.gain + (0))))))))))))

private theorem cls0005SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0005FinalState cls0005SuffixLabels cls0005SuffixGain := by
  unfold cls0005SuffixLabels cls0005SuffixGain commonPrefixFinalState cls0005FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0162
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0174
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0187
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0207
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0003
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0041
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0075
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0114
  exact BellmanLabelStepRun.nil State.s0132

private def cls0005ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0005SuffixLabels

private def cls0005ComposedGain : Int :=
  commonPrefixGain + cls0005SuffixGain

private theorem cls0005ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0005FinalState cls0005ComposedLabels cls0005ComposedGain := by
  unfold cls0005ComposedLabels cls0005ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0005SuffixLabelStepRun

private theorem cls0005ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0005 <= (176 : Int) + cls0005ComposedGain := by
  unfold cls0005ComposedGain commonPrefixGain cls0005SuffixGain
  change (-464 : Int) <= -464
  decide

private theorem cls0005TrieFinal_nonneg :
    0 <= graphPotential trieNode0063State := by
  unfold trieNode0063State
  decide

private theorem cls0005TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0005 <= (176 : Int) + trieNode0063Gain := by
  unfold trieNode0063Gain trieNode0063StepGain trieNode0062Gain trieNode0062StepGain trieNode0061Gain trieNode0061StepGain trieNode0060Gain trieNode0060StepGain trieNode0059Gain trieNode0059StepGain trieNode0058Gain trieNode0058StepGain trieNode0057Gain trieNode0057StepGain trieNode0056Gain trieNode0056StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-464 : Int) <= -464
  decide

private theorem cls0005Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0005 <= (176 : Int) + cls0005Gain := by
  unfold cls0005Gain
  change (-464 : Int) <= -464
  decide

private def cls0006Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0006Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0177.gain + (edge0191.gain + (edge0206.gain + (edge0002.gain + (edge0040.gain + (edge0074.gain + (edge0113.gain + (0))))))))))))))

private theorem cls0006LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0006FinalState cls0006Labels cls0006Gain := by
  unfold cls0006Labels cls0006Gain rootState cls0006FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0163)
  · rfl
  · rfl
  · exact GraphEdge.e0163
  · exact SmokeEdgeLabel.e0163
  apply BellmanLabeledRun.cons (e := edge0177)
  · rfl
  · rfl
  · exact GraphEdge.e0177
  · exact SmokeEdgeLabel.e0177
  apply BellmanLabeledRun.cons (e := edge0191)
  · rfl
  · rfl
  · exact GraphEdge.e0191
  · exact SmokeEdgeLabel.e0191
  apply BellmanLabeledRun.cons (e := edge0206)
  · rfl
  · rfl
  · exact GraphEdge.e0206
  · exact SmokeEdgeLabel.e0206
  apply BellmanLabeledRun.cons (e := edge0002)
  · rfl
  · rfl
  · exact GraphEdge.e0002
  · exact SmokeEdgeLabel.e0002
  apply BellmanLabeledRun.cons (e := edge0040)
  · rfl
  · rfl
  · exact GraphEdge.e0040
  · exact SmokeEdgeLabel.e0040
  apply BellmanLabeledRun.cons (e := edge0074)
  · rfl
  · rfl
  · exact GraphEdge.e0074
  · exact SmokeEdgeLabel.e0074
  apply BellmanLabeledRun.cons (e := edge0113)
  · rfl
  · rfl
  · exact GraphEdge.e0113
  · exact SmokeEdgeLabel.e0113
  exact BellmanLabeledRun.nil State.s0131

private theorem cls0006LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0006FinalState cls0006Labels cls0006Gain := by
  unfold cls0006Labels cls0006Gain rootState cls0006FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0177
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0191
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0206
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0002
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0040
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0074
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0113
  exact BellmanLabelStepRun.nil State.s0131

private def cls0006SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0006SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0177.gain + (edge0191.gain + (edge0206.gain + (edge0002.gain + (edge0040.gain + (edge0074.gain + (edge0113.gain + (0))))))))))))

private theorem cls0006SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0006FinalState cls0006SuffixLabels cls0006SuffixGain := by
  unfold cls0006SuffixLabels cls0006SuffixGain commonPrefixFinalState cls0006FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0177
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0191
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0206
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0002
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0040
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0074
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0113
  exact BellmanLabelStepRun.nil State.s0131

private def cls0006ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0006SuffixLabels

private def cls0006ComposedGain : Int :=
  commonPrefixGain + cls0006SuffixGain

private theorem cls0006ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0006FinalState cls0006ComposedLabels cls0006ComposedGain := by
  unfold cls0006ComposedLabels cls0006ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0006SuffixLabelStepRun

private theorem cls0006ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0006 <= (176 : Int) + cls0006ComposedGain := by
  unfold cls0006ComposedGain commonPrefixGain cls0006SuffixGain
  change (-176 : Int) <= -176
  decide

private theorem cls0006TrieFinal_nonneg :
    0 <= graphPotential trieNode0071State := by
  unfold trieNode0071State
  decide

private theorem cls0006TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0006 <= (176 : Int) + trieNode0071Gain := by
  unfold trieNode0071Gain trieNode0071StepGain trieNode0070Gain trieNode0070StepGain trieNode0069Gain trieNode0069StepGain trieNode0068Gain trieNode0068StepGain trieNode0067Gain trieNode0067StepGain trieNode0066Gain trieNode0066StepGain trieNode0065Gain trieNode0065StepGain trieNode0064Gain trieNode0064StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-176 : Int) <= -176
  decide

private theorem cls0006Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0006 <= (176 : Int) + cls0006Gain := by
  unfold cls0006Gain
  change (-176 : Int) <= -176
  decide

private def cls0007Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0007Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0194.gain + (edge0211.gain + (edge0001.gain + (edge0038.gain + (edge0071.gain + (edge0109.gain + (0))))))))))))))

private theorem cls0007LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0007FinalState cls0007Labels cls0007Gain := by
  unfold cls0007Labels cls0007Gain rootState cls0007FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0163)
  · rfl
  · rfl
  · exact GraphEdge.e0163
  · exact SmokeEdgeLabel.e0163
  apply BellmanLabeledRun.cons (e := edge0178)
  · rfl
  · rfl
  · exact GraphEdge.e0178
  · exact SmokeEdgeLabel.e0178
  apply BellmanLabeledRun.cons (e := edge0194)
  · rfl
  · rfl
  · exact GraphEdge.e0194
  · exact SmokeEdgeLabel.e0194
  apply BellmanLabeledRun.cons (e := edge0211)
  · rfl
  · rfl
  · exact GraphEdge.e0211
  · exact SmokeEdgeLabel.e0211
  apply BellmanLabeledRun.cons (e := edge0001)
  · rfl
  · rfl
  · exact GraphEdge.e0001
  · exact SmokeEdgeLabel.e0001
  apply BellmanLabeledRun.cons (e := edge0038)
  · rfl
  · rfl
  · exact GraphEdge.e0038
  · exact SmokeEdgeLabel.e0038
  apply BellmanLabeledRun.cons (e := edge0071)
  · rfl
  · rfl
  · exact GraphEdge.e0071
  · exact SmokeEdgeLabel.e0071
  apply BellmanLabeledRun.cons (e := edge0109)
  · rfl
  · rfl
  · exact GraphEdge.e0109
  · exact SmokeEdgeLabel.e0109
  exact BellmanLabeledRun.nil State.s0127

private theorem cls0007LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0007FinalState cls0007Labels cls0007Gain := by
  unfold cls0007Labels cls0007Gain rootState cls0007FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0194
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0211
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0001
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0038
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0071
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0109
  exact BellmanLabelStepRun.nil State.s0127

private def cls0007SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0007SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0194.gain + (edge0211.gain + (edge0001.gain + (edge0038.gain + (edge0071.gain + (edge0109.gain + (0))))))))))))

private theorem cls0007SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0007FinalState cls0007SuffixLabels cls0007SuffixGain := by
  unfold cls0007SuffixLabels cls0007SuffixGain commonPrefixFinalState cls0007FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0194
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0211
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0001
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0038
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0071
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0109
  exact BellmanLabelStepRun.nil State.s0127

private def cls0007ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0007SuffixLabels

private def cls0007ComposedGain : Int :=
  commonPrefixGain + cls0007SuffixGain

private theorem cls0007ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0007FinalState cls0007ComposedLabels cls0007ComposedGain := by
  unfold cls0007ComposedLabels cls0007ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0007SuffixLabelStepRun

private theorem cls0007ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0007 <= (176 : Int) + cls0007ComposedGain := by
  unfold cls0007ComposedGain commonPrefixGain cls0007SuffixGain
  change (-464 : Int) <= -464
  decide

private theorem cls0007TrieFinal_nonneg :
    0 <= graphPotential trieNode0078State := by
  unfold trieNode0078State
  decide

private theorem cls0007TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0007 <= (176 : Int) + trieNode0078Gain := by
  unfold trieNode0078Gain trieNode0078StepGain trieNode0077Gain trieNode0077StepGain trieNode0076Gain trieNode0076StepGain trieNode0075Gain trieNode0075StepGain trieNode0074Gain trieNode0074StepGain trieNode0073Gain trieNode0073StepGain trieNode0072Gain trieNode0072StepGain trieNode0064Gain trieNode0064StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-464 : Int) <= -464
  decide

private theorem cls0007Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0007 <= (176 : Int) + cls0007Gain := by
  unfold cls0007Gain
  change (-464 : Int) <= -464
  decide

private def cls0008Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0008Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0216.gain + (edge0008.gain + (edge0039.gain + (edge0072.gain + (edge0110.gain + (0))))))))))))))

private theorem cls0008LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0008FinalState cls0008Labels cls0008Gain := by
  unfold cls0008Labels cls0008Gain rootState cls0008FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0163)
  · rfl
  · rfl
  · exact GraphEdge.e0163
  · exact SmokeEdgeLabel.e0163
  apply BellmanLabeledRun.cons (e := edge0178)
  · rfl
  · rfl
  · exact GraphEdge.e0178
  · exact SmokeEdgeLabel.e0178
  apply BellmanLabeledRun.cons (e := edge0195)
  · rfl
  · rfl
  · exact GraphEdge.e0195
  · exact SmokeEdgeLabel.e0195
  apply BellmanLabeledRun.cons (e := edge0216)
  · rfl
  · rfl
  · exact GraphEdge.e0216
  · exact SmokeEdgeLabel.e0216
  apply BellmanLabeledRun.cons (e := edge0008)
  · rfl
  · rfl
  · exact GraphEdge.e0008
  · exact SmokeEdgeLabel.e0008
  apply BellmanLabeledRun.cons (e := edge0039)
  · rfl
  · rfl
  · exact GraphEdge.e0039
  · exact SmokeEdgeLabel.e0039
  apply BellmanLabeledRun.cons (e := edge0072)
  · rfl
  · rfl
  · exact GraphEdge.e0072
  · exact SmokeEdgeLabel.e0072
  apply BellmanLabeledRun.cons (e := edge0110)
  · rfl
  · rfl
  · exact GraphEdge.e0110
  · exact SmokeEdgeLabel.e0110
  exact BellmanLabeledRun.nil State.s0128

private theorem cls0008LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0008FinalState cls0008Labels cls0008Gain := by
  unfold cls0008Labels cls0008Gain rootState cls0008FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0216
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0008
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0039
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0072
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0110
  exact BellmanLabelStepRun.nil State.s0128

private def cls0008SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0008SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0216.gain + (edge0008.gain + (edge0039.gain + (edge0072.gain + (edge0110.gain + (0))))))))))))

private theorem cls0008SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0008FinalState cls0008SuffixLabels cls0008SuffixGain := by
  unfold cls0008SuffixLabels cls0008SuffixGain commonPrefixFinalState cls0008FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0216
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0008
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0039
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0072
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0110
  exact BellmanLabelStepRun.nil State.s0128

private def cls0008ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0008SuffixLabels

private def cls0008ComposedGain : Int :=
  commonPrefixGain + cls0008SuffixGain

private theorem cls0008ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0008FinalState cls0008ComposedLabels cls0008ComposedGain := by
  unfold cls0008ComposedLabels cls0008ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0008SuffixLabelStepRun

private theorem cls0008ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0008 <= (176 : Int) + cls0008ComposedGain := by
  unfold cls0008ComposedGain commonPrefixGain cls0008SuffixGain
  change (-392 : Int) <= -392
  decide

private theorem cls0008TrieFinal_nonneg :
    0 <= graphPotential trieNode0084State := by
  unfold trieNode0084State
  decide

private theorem cls0008TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0008 <= (176 : Int) + trieNode0084Gain := by
  unfold trieNode0084Gain trieNode0084StepGain trieNode0083Gain trieNode0083StepGain trieNode0082Gain trieNode0082StepGain trieNode0081Gain trieNode0081StepGain trieNode0080Gain trieNode0080StepGain trieNode0079Gain trieNode0079StepGain trieNode0072Gain trieNode0072StepGain trieNode0064Gain trieNode0064StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-392 : Int) <= -392
  decide

private theorem cls0008Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0008 <= (176 : Int) + cls0008Gain := by
  unfold cls0008Gain
  change (-392 : Int) <= -392
  decide

private def cls0009Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0009Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0217.gain + (edge0014.gain + (edge0047.gain + (edge0073.gain + (edge0112.gain + (0))))))))))))))

private theorem cls0009LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0009FinalState cls0009Labels cls0009Gain := by
  unfold cls0009Labels cls0009Gain rootState cls0009FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0163)
  · rfl
  · rfl
  · exact GraphEdge.e0163
  · exact SmokeEdgeLabel.e0163
  apply BellmanLabeledRun.cons (e := edge0178)
  · rfl
  · rfl
  · exact GraphEdge.e0178
  · exact SmokeEdgeLabel.e0178
  apply BellmanLabeledRun.cons (e := edge0195)
  · rfl
  · rfl
  · exact GraphEdge.e0195
  · exact SmokeEdgeLabel.e0195
  apply BellmanLabeledRun.cons (e := edge0217)
  · rfl
  · rfl
  · exact GraphEdge.e0217
  · exact SmokeEdgeLabel.e0217
  apply BellmanLabeledRun.cons (e := edge0014)
  · rfl
  · rfl
  · exact GraphEdge.e0014
  · exact SmokeEdgeLabel.e0014
  apply BellmanLabeledRun.cons (e := edge0047)
  · rfl
  · rfl
  · exact GraphEdge.e0047
  · exact SmokeEdgeLabel.e0047
  apply BellmanLabeledRun.cons (e := edge0073)
  · rfl
  · rfl
  · exact GraphEdge.e0073
  · exact SmokeEdgeLabel.e0073
  apply BellmanLabeledRun.cons (e := edge0112)
  · rfl
  · rfl
  · exact GraphEdge.e0112
  · exact SmokeEdgeLabel.e0112
  exact BellmanLabeledRun.nil State.s0130

private theorem cls0009LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0009FinalState cls0009Labels cls0009Gain := by
  unfold cls0009Labels cls0009Gain rootState cls0009FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0217
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0014
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0047
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0073
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0112
  exact BellmanLabelStepRun.nil State.s0130

private def cls0009SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0009SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0217.gain + (edge0014.gain + (edge0047.gain + (edge0073.gain + (edge0112.gain + (0))))))))))))

private theorem cls0009SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0009FinalState cls0009SuffixLabels cls0009SuffixGain := by
  unfold cls0009SuffixLabels cls0009SuffixGain commonPrefixFinalState cls0009FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0217
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0014
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0047
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0073
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0112
  exact BellmanLabelStepRun.nil State.s0130

private def cls0009ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0009SuffixLabels

private def cls0009ComposedGain : Int :=
  commonPrefixGain + cls0009SuffixGain

private theorem cls0009ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0009FinalState cls0009ComposedLabels cls0009ComposedGain := by
  unfold cls0009ComposedLabels cls0009ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0009SuffixLabelStepRun

private theorem cls0009ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0009 <= (176 : Int) + cls0009ComposedGain := by
  unfold cls0009ComposedGain commonPrefixGain cls0009SuffixGain
  change (-128 : Int) <= -128
  decide

private theorem cls0009TrieFinal_nonneg :
    0 <= graphPotential trieNode0089State := by
  unfold trieNode0089State
  decide

private theorem cls0009TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0009 <= (176 : Int) + trieNode0089Gain := by
  unfold trieNode0089Gain trieNode0089StepGain trieNode0088Gain trieNode0088StepGain trieNode0087Gain trieNode0087StepGain trieNode0086Gain trieNode0086StepGain trieNode0085Gain trieNode0085StepGain trieNode0079Gain trieNode0079StepGain trieNode0072Gain trieNode0072StepGain trieNode0064Gain trieNode0064StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-128 : Int) <= -128
  decide

private theorem cls0009Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0009 <= (176 : Int) + cls0009Gain := by
  unfold cls0009Gain
  change (-128 : Int) <= -128
  decide

private def cls0010Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0010Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0217.gain + (edge0015.gain + (edge0053.gain + (edge0083.gain + (edge0111.gain + (0))))))))))))))

private theorem cls0010LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0010FinalState cls0010Labels cls0010Gain := by
  unfold cls0010Labels cls0010Gain rootState cls0010FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0125)
  · rfl
  · rfl
  · exact GraphEdge.e0125
  · exact SmokeEdgeLabel.e0125
  apply BellmanLabeledRun.cons (e := edge0129)
  · rfl
  · rfl
  · exact GraphEdge.e0129
  · exact SmokeEdgeLabel.e0129
  apply BellmanLabeledRun.cons (e := edge0138)
  · rfl
  · rfl
  · exact GraphEdge.e0138
  · exact SmokeEdgeLabel.e0138
  apply BellmanLabeledRun.cons (e := edge0150)
  · rfl
  · rfl
  · exact GraphEdge.e0150
  · exact SmokeEdgeLabel.e0150
  apply BellmanLabeledRun.cons (e := edge0163)
  · rfl
  · rfl
  · exact GraphEdge.e0163
  · exact SmokeEdgeLabel.e0163
  apply BellmanLabeledRun.cons (e := edge0178)
  · rfl
  · rfl
  · exact GraphEdge.e0178
  · exact SmokeEdgeLabel.e0178
  apply BellmanLabeledRun.cons (e := edge0195)
  · rfl
  · rfl
  · exact GraphEdge.e0195
  · exact SmokeEdgeLabel.e0195
  apply BellmanLabeledRun.cons (e := edge0217)
  · rfl
  · rfl
  · exact GraphEdge.e0217
  · exact SmokeEdgeLabel.e0217
  apply BellmanLabeledRun.cons (e := edge0015)
  · rfl
  · rfl
  · exact GraphEdge.e0015
  · exact SmokeEdgeLabel.e0015
  apply BellmanLabeledRun.cons (e := edge0053)
  · rfl
  · rfl
  · exact GraphEdge.e0053
  · exact SmokeEdgeLabel.e0053
  apply BellmanLabeledRun.cons (e := edge0083)
  · rfl
  · rfl
  · exact GraphEdge.e0083
  · exact SmokeEdgeLabel.e0083
  apply BellmanLabeledRun.cons (e := edge0111)
  · rfl
  · rfl
  · exact GraphEdge.e0111
  · exact SmokeEdgeLabel.e0111
  exact BellmanLabeledRun.nil State.s0129

private theorem cls0010LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0010FinalState cls0010Labels cls0010Gain := by
  unfold cls0010Labels cls0010Gain rootState cls0010FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0217
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0015
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0053
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0083
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0111
  exact BellmanLabelStepRun.nil State.s0129

private def cls0010SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0010SuffixGain : Int :=
  edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0195.gain + (edge0217.gain + (edge0015.gain + (edge0053.gain + (edge0083.gain + (edge0111.gain + (0))))))))))))

private theorem cls0010SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0010FinalState cls0010SuffixLabels cls0010SuffixGain := by
  unfold cls0010SuffixLabels cls0010SuffixGain commonPrefixFinalState cls0010FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0125
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0129
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0138
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0150
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0163
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0178
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0195
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0217
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0015
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0053
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0083
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0111
  exact BellmanLabelStepRun.nil State.s0129

private def cls0010ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0010SuffixLabels

private def cls0010ComposedGain : Int :=
  commonPrefixGain + cls0010SuffixGain

private theorem cls0010ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0010FinalState cls0010ComposedLabels cls0010ComposedGain := by
  unfold cls0010ComposedLabels cls0010ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0010SuffixLabelStepRun

private theorem cls0010ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0010 <= (176 : Int) + cls0010ComposedGain := by
  unfold cls0010ComposedGain commonPrefixGain cls0010SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0010TrieFinal_nonneg :
    0 <= graphPotential trieNode0093State := by
  unfold trieNode0093State
  decide

private theorem cls0010TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0010 <= (176 : Int) + trieNode0093Gain := by
  unfold trieNode0093Gain trieNode0093StepGain trieNode0092Gain trieNode0092StepGain trieNode0091Gain trieNode0091StepGain trieNode0090Gain trieNode0090StepGain trieNode0085Gain trieNode0085StepGain trieNode0079Gain trieNode0079StepGain trieNode0072Gain trieNode0072StepGain trieNode0064Gain trieNode0064StepGain trieNode0055Gain trieNode0055StepGain trieNode0045Gain trieNode0045StepGain trieNode0025Gain trieNode0025StepGain trieNode0003Gain trieNode0003StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0010Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0010 <= (176 : Int) + cls0010Gain := by
  unfold cls0010Gain
  change (-376 : Int) <= -376
  decide

private def cls0011Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0011Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0130.gain + (edge0135.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))))

private theorem cls0011LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0011FinalState cls0011Labels cls0011Gain := by
  unfold cls0011Labels cls0011Gain rootState cls0011FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0130)
  · rfl
  · rfl
  · exact GraphEdge.e0130
  · exact SmokeEdgeLabel.e0130
  apply BellmanLabeledRun.cons (e := edge0135)
  · rfl
  · rfl
  · exact GraphEdge.e0135
  · exact SmokeEdgeLabel.e0135
  apply BellmanLabeledRun.cons (e := edge0145)
  · rfl
  · rfl
  · exact GraphEdge.e0145
  · exact SmokeEdgeLabel.e0145
  apply BellmanLabeledRun.cons (e := edge0158)
  · rfl
  · rfl
  · exact GraphEdge.e0158
  · exact SmokeEdgeLabel.e0158
  apply BellmanLabeledRun.cons (e := edge0173)
  · rfl
  · rfl
  · exact GraphEdge.e0173
  · exact SmokeEdgeLabel.e0173
  apply BellmanLabeledRun.cons (e := edge0190)
  · rfl
  · rfl
  · exact GraphEdge.e0190
  · exact SmokeEdgeLabel.e0190
  apply BellmanLabeledRun.cons (e := edge0210)
  · rfl
  · rfl
  · exact GraphEdge.e0210
  · exact SmokeEdgeLabel.e0210
  apply BellmanLabeledRun.cons (e := edge0006)
  · rfl
  · rfl
  · exact GraphEdge.e0006
  · exact SmokeEdgeLabel.e0006
  apply BellmanLabeledRun.cons (e := edge0045)
  · rfl
  · rfl
  · exact GraphEdge.e0045
  · exact SmokeEdgeLabel.e0045
  apply BellmanLabeledRun.cons (e := edge0080)
  · rfl
  · rfl
  · exact GraphEdge.e0080
  · exact SmokeEdgeLabel.e0080
  apply BellmanLabeledRun.cons (e := edge0123)
  · rfl
  · rfl
  · exact GraphEdge.e0123
  · exact SmokeEdgeLabel.e0123
  exact BellmanLabeledRun.nil State.s0141

private theorem cls0011LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0011FinalState cls0011Labels cls0011Gain := by
  unfold cls0011Labels cls0011Gain rootState cls0011FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0130
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0011SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0011SuffixGain : Int :=
  edge0126.gain + (edge0130.gain + (edge0135.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))

private theorem cls0011SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0011FinalState cls0011SuffixLabels cls0011SuffixGain := by
  unfold cls0011SuffixLabels cls0011SuffixGain commonPrefixFinalState cls0011FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0130
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0135
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0011ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0011SuffixLabels

private def cls0011ComposedGain : Int :=
  commonPrefixGain + cls0011SuffixGain

private theorem cls0011ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0011FinalState cls0011ComposedLabels cls0011ComposedGain := by
  unfold cls0011ComposedLabels cls0011ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0011SuffixLabelStepRun

private theorem cls0011ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0011 <= (176 : Int) + cls0011ComposedGain := by
  unfold cls0011ComposedGain commonPrefixGain cls0011SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0011TrieFinal_nonneg :
    0 <= graphPotential trieNode0105State := by
  unfold trieNode0105State
  decide

private theorem cls0011TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0011 <= (176 : Int) + trieNode0105Gain := by
  unfold trieNode0105Gain trieNode0105StepGain trieNode0104Gain trieNode0104StepGain trieNode0103Gain trieNode0103StepGain trieNode0102Gain trieNode0102StepGain trieNode0101Gain trieNode0101StepGain trieNode0100Gain trieNode0100StepGain trieNode0099Gain trieNode0099StepGain trieNode0098Gain trieNode0098StepGain trieNode0097Gain trieNode0097StepGain trieNode0096Gain trieNode0096StepGain trieNode0095Gain trieNode0095StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0011Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0011 <= (176 : Int) + cls0011Gain := by
  unfold cls0011Gain
  change (-376 : Int) <= -376
  decide

private def cls0012Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0001
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0012Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0130.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0176.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))))

private theorem cls0012LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0012FinalState cls0012Labels cls0012Gain := by
  unfold cls0012Labels cls0012Gain rootState cls0012FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0130)
  · rfl
  · rfl
  · exact GraphEdge.e0130
  · exact SmokeEdgeLabel.e0130
  apply BellmanLabeledRun.cons (e := edge0136)
  · rfl
  · rfl
  · exact GraphEdge.e0136
  · exact SmokeEdgeLabel.e0136
  apply BellmanLabeledRun.cons (e := edge0148)
  · rfl
  · rfl
  · exact GraphEdge.e0148
  · exact SmokeEdgeLabel.e0148
  apply BellmanLabeledRun.cons (e := edge0161)
  · rfl
  · rfl
  · exact GraphEdge.e0161
  · exact SmokeEdgeLabel.e0161
  apply BellmanLabeledRun.cons (e := edge0176)
  · rfl
  · rfl
  · exact GraphEdge.e0176
  · exact SmokeEdgeLabel.e0176
  apply BellmanLabeledRun.cons (e := edge0193)
  · rfl
  · rfl
  · exact GraphEdge.e0193
  · exact SmokeEdgeLabel.e0193
  apply BellmanLabeledRun.cons (e := edge0213)
  · rfl
  · rfl
  · exact GraphEdge.e0213
  · exact SmokeEdgeLabel.e0213
  apply BellmanLabeledRun.cons (e := edge0011)
  · rfl
  · rfl
  · exact GraphEdge.e0011
  · exact SmokeEdgeLabel.e0011
  apply BellmanLabeledRun.cons (e := edge0050)
  · rfl
  · rfl
  · exact GraphEdge.e0050
  · exact SmokeEdgeLabel.e0050
  apply BellmanLabeledRun.cons (e := edge0086)
  · rfl
  · rfl
  · exact GraphEdge.e0086
  · exact SmokeEdgeLabel.e0086
  apply BellmanLabeledRun.cons (e := edge0120)
  · rfl
  · rfl
  · exact GraphEdge.e0120
  · exact SmokeEdgeLabel.e0120
  exact BellmanLabeledRun.nil State.s0138

private theorem cls0012LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0012FinalState cls0012Labels cls0012Gain := by
  unfold cls0012Labels cls0012Gain rootState cls0012FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0130
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil State.s0138

private def cls0012SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0001
  , SmokeLabel.l0005
  , SmokeLabel.l0007
  , SmokeLabel.l0004
  , SmokeLabel.l0003
  , SmokeLabel.l0006
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0012SuffixGain : Int :=
  edge0126.gain + (edge0130.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0176.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))

private theorem cls0012SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0012FinalState cls0012SuffixLabels cls0012SuffixGain := by
  unfold cls0012SuffixLabels cls0012SuffixGain commonPrefixFinalState cls0012FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0130
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0136
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0148
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0161
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0176
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0193
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0213
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0011
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0050
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0086
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0120
  exact BellmanLabelStepRun.nil State.s0138

private def cls0012ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0012SuffixLabels

private def cls0012ComposedGain : Int :=
  commonPrefixGain + cls0012SuffixGain

private theorem cls0012ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0012FinalState cls0012ComposedLabels cls0012ComposedGain := by
  unfold cls0012ComposedLabels cls0012ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0012SuffixLabelStepRun

private theorem cls0012ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0012 <= (176 : Int) + cls0012ComposedGain := by
  unfold cls0012ComposedGain commonPrefixGain cls0012SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0012TrieFinal_nonneg :
    0 <= graphPotential trieNode0115State := by
  unfold trieNode0115State
  decide

private theorem cls0012TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0012 <= (176 : Int) + trieNode0115Gain := by
  unfold trieNode0115Gain trieNode0115StepGain trieNode0114Gain trieNode0114StepGain trieNode0113Gain trieNode0113StepGain trieNode0112Gain trieNode0112StepGain trieNode0111Gain trieNode0111StepGain trieNode0110Gain trieNode0110StepGain trieNode0109Gain trieNode0109StepGain trieNode0108Gain trieNode0108StepGain trieNode0107Gain trieNode0107StepGain trieNode0106Gain trieNode0106StepGain trieNode0095Gain trieNode0095StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0012Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0012 <= (176 : Int) + cls0012Gain := by
  unfold cls0012Gain
  change (-376 : Int) <= -376
  decide

private def cls0013Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0013Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0131.gain + (edge0139.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))))

private theorem cls0013LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0013FinalState cls0013Labels cls0013Gain := by
  unfold cls0013Labels cls0013Gain rootState cls0013FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0131)
  · rfl
  · rfl
  · exact GraphEdge.e0131
  · exact SmokeEdgeLabel.e0131
  apply BellmanLabeledRun.cons (e := edge0139)
  · rfl
  · rfl
  · exact GraphEdge.e0139
  · exact SmokeEdgeLabel.e0139
  apply BellmanLabeledRun.cons (e := edge0145)
  · rfl
  · rfl
  · exact GraphEdge.e0145
  · exact SmokeEdgeLabel.e0145
  apply BellmanLabeledRun.cons (e := edge0158)
  · rfl
  · rfl
  · exact GraphEdge.e0158
  · exact SmokeEdgeLabel.e0158
  apply BellmanLabeledRun.cons (e := edge0173)
  · rfl
  · rfl
  · exact GraphEdge.e0173
  · exact SmokeEdgeLabel.e0173
  apply BellmanLabeledRun.cons (e := edge0190)
  · rfl
  · rfl
  · exact GraphEdge.e0190
  · exact SmokeEdgeLabel.e0190
  apply BellmanLabeledRun.cons (e := edge0210)
  · rfl
  · rfl
  · exact GraphEdge.e0210
  · exact SmokeEdgeLabel.e0210
  apply BellmanLabeledRun.cons (e := edge0006)
  · rfl
  · rfl
  · exact GraphEdge.e0006
  · exact SmokeEdgeLabel.e0006
  apply BellmanLabeledRun.cons (e := edge0045)
  · rfl
  · rfl
  · exact GraphEdge.e0045
  · exact SmokeEdgeLabel.e0045
  apply BellmanLabeledRun.cons (e := edge0080)
  · rfl
  · rfl
  · exact GraphEdge.e0080
  · exact SmokeEdgeLabel.e0080
  apply BellmanLabeledRun.cons (e := edge0123)
  · rfl
  · rfl
  · exact GraphEdge.e0123
  · exact SmokeEdgeLabel.e0123
  exact BellmanLabeledRun.nil State.s0141

private theorem cls0013LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0013FinalState cls0013Labels cls0013Gain := by
  unfold cls0013Labels cls0013Gain rootState cls0013FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0139
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0013SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0000
  , SmokeLabel.l0004
  , SmokeLabel.l0006
  , SmokeLabel.l0005
  , SmokeLabel.l0002
  , SmokeLabel.l0007
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0013SuffixGain : Int :=
  edge0126.gain + (edge0131.gain + (edge0139.gain + (edge0145.gain + (edge0158.gain + (edge0173.gain + (edge0190.gain + (edge0210.gain + (edge0006.gain + (edge0045.gain + (edge0080.gain + (edge0123.gain + (0))))))))))))

private theorem cls0013SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0013FinalState cls0013SuffixLabels cls0013SuffixGain := by
  unfold cls0013SuffixLabels cls0013SuffixGain commonPrefixFinalState cls0013FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0139
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0145
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0158
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0173
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0190
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0210
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0006
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0045
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0080
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0123
  exact BellmanLabelStepRun.nil State.s0141

private def cls0013ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0013SuffixLabels

private def cls0013ComposedGain : Int :=
  commonPrefixGain + cls0013SuffixGain

private theorem cls0013ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0013FinalState cls0013ComposedLabels cls0013ComposedGain := by
  unfold cls0013ComposedLabels cls0013ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0013SuffixLabelStepRun

private theorem cls0013ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0013 <= (176 : Int) + cls0013ComposedGain := by
  unfold cls0013ComposedGain commonPrefixGain cls0013SuffixGain
  change (-376 : Int) <= -376
  decide

private theorem cls0013TrieFinal_nonneg :
    0 <= graphPotential trieNode0126State := by
  unfold trieNode0126State
  decide

private theorem cls0013TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0013 <= (176 : Int) + trieNode0126Gain := by
  unfold trieNode0126Gain trieNode0126StepGain trieNode0125Gain trieNode0125StepGain trieNode0124Gain trieNode0124StepGain trieNode0123Gain trieNode0123StepGain trieNode0122Gain trieNode0122StepGain trieNode0121Gain trieNode0121StepGain trieNode0120Gain trieNode0120StepGain trieNode0119Gain trieNode0119StepGain trieNode0118Gain trieNode0118StepGain trieNode0117Gain trieNode0117StepGain trieNode0116Gain trieNode0116StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-376 : Int) <= -376
  decide

private theorem cls0013Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0013 <= (176 : Int) + cls0013Gain := by
  unfold cls0013Gain
  change (-376 : Int) <= -376
  decide

private def cls0014Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0014Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0131.gain + (edge0140.gain + (edge0152.gain + (edge0166.gain + (edge0182.gain + (edge0200.gain + (edge0223.gain + (edge0027.gain + (edge0044.gain + (edge0079.gain + (edge0122.gain + (0))))))))))))))

private theorem cls0014LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0014FinalState cls0014Labels cls0014Gain := by
  unfold cls0014Labels cls0014Gain rootState cls0014FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0131)
  · rfl
  · rfl
  · exact GraphEdge.e0131
  · exact SmokeEdgeLabel.e0131
  apply BellmanLabeledRun.cons (e := edge0140)
  · rfl
  · rfl
  · exact GraphEdge.e0140
  · exact SmokeEdgeLabel.e0140
  apply BellmanLabeledRun.cons (e := edge0152)
  · rfl
  · rfl
  · exact GraphEdge.e0152
  · exact SmokeEdgeLabel.e0152
  apply BellmanLabeledRun.cons (e := edge0166)
  · rfl
  · rfl
  · exact GraphEdge.e0166
  · exact SmokeEdgeLabel.e0166
  apply BellmanLabeledRun.cons (e := edge0182)
  · rfl
  · rfl
  · exact GraphEdge.e0182
  · exact SmokeEdgeLabel.e0182
  apply BellmanLabeledRun.cons (e := edge0200)
  · rfl
  · rfl
  · exact GraphEdge.e0200
  · exact SmokeEdgeLabel.e0200
  apply BellmanLabeledRun.cons (e := edge0223)
  · rfl
  · rfl
  · exact GraphEdge.e0223
  · exact SmokeEdgeLabel.e0223
  apply BellmanLabeledRun.cons (e := edge0027)
  · rfl
  · rfl
  · exact GraphEdge.e0027
  · exact SmokeEdgeLabel.e0027
  apply BellmanLabeledRun.cons (e := edge0044)
  · rfl
  · rfl
  · exact GraphEdge.e0044
  · exact SmokeEdgeLabel.e0044
  apply BellmanLabeledRun.cons (e := edge0079)
  · rfl
  · rfl
  · exact GraphEdge.e0079
  · exact SmokeEdgeLabel.e0079
  apply BellmanLabeledRun.cons (e := edge0122)
  · rfl
  · rfl
  · exact GraphEdge.e0122
  · exact SmokeEdgeLabel.e0122
  exact BellmanLabeledRun.nil State.s0140

private theorem cls0014LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0014FinalState cls0014Labels cls0014Gain := by
  unfold cls0014Labels cls0014Gain rootState cls0014FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0140
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0152
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0166
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0182
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0200
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0223
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0027
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0044
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0079
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0122
  exact BellmanLabelStepRun.nil State.s0140

private def cls0014SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0014SuffixGain : Int :=
  edge0126.gain + (edge0131.gain + (edge0140.gain + (edge0152.gain + (edge0166.gain + (edge0182.gain + (edge0200.gain + (edge0223.gain + (edge0027.gain + (edge0044.gain + (edge0079.gain + (edge0122.gain + (0))))))))))))

private theorem cls0014SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0014FinalState cls0014SuffixLabels cls0014SuffixGain := by
  unfold cls0014SuffixLabels cls0014SuffixGain commonPrefixFinalState cls0014FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0140
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0152
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0166
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0182
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0200
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0223
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0027
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0044
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0079
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0122
  exact BellmanLabelStepRun.nil State.s0140

private def cls0014ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0014SuffixLabels

private def cls0014ComposedGain : Int :=
  commonPrefixGain + cls0014SuffixGain

private theorem cls0014ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0014FinalState cls0014ComposedLabels cls0014ComposedGain := by
  unfold cls0014ComposedLabels cls0014ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0014SuffixLabelStepRun

private theorem cls0014ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0014 <= (176 : Int) + cls0014ComposedGain := by
  unfold cls0014ComposedGain commonPrefixGain cls0014SuffixGain
  change (-420 : Int) <= -420
  decide

private theorem cls0014TrieFinal_nonneg :
    0 <= graphPotential trieNode0136State := by
  unfold trieNode0136State
  decide

private theorem cls0014TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0014 <= (176 : Int) + trieNode0136Gain := by
  unfold trieNode0136Gain trieNode0136StepGain trieNode0135Gain trieNode0135StepGain trieNode0134Gain trieNode0134StepGain trieNode0133Gain trieNode0133StepGain trieNode0132Gain trieNode0132StepGain trieNode0131Gain trieNode0131StepGain trieNode0130Gain trieNode0130StepGain trieNode0129Gain trieNode0129StepGain trieNode0128Gain trieNode0128StepGain trieNode0127Gain trieNode0127StepGain trieNode0116Gain trieNode0116StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-420 : Int) <= -420
  decide

private theorem cls0014Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0014 <= (176 : Int) + cls0014Gain := by
  unfold cls0014Gain
  change (-420 : Int) <= -420
  decide

private def cls0015Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0015Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0131.gain + (edge0140.gain + (edge0152.gain + (edge0166.gain + (edge0182.gain + (edge0200.gain + (edge0223.gain + (edge0028.gain + (edge0059.gain + (edge0094.gain + (edge0121.gain + (0))))))))))))))

private theorem cls0015LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0015FinalState cls0015Labels cls0015Gain := by
  unfold cls0015Labels cls0015Gain rootState cls0015FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0131)
  · rfl
  · rfl
  · exact GraphEdge.e0131
  · exact SmokeEdgeLabel.e0131
  apply BellmanLabeledRun.cons (e := edge0140)
  · rfl
  · rfl
  · exact GraphEdge.e0140
  · exact SmokeEdgeLabel.e0140
  apply BellmanLabeledRun.cons (e := edge0152)
  · rfl
  · rfl
  · exact GraphEdge.e0152
  · exact SmokeEdgeLabel.e0152
  apply BellmanLabeledRun.cons (e := edge0166)
  · rfl
  · rfl
  · exact GraphEdge.e0166
  · exact SmokeEdgeLabel.e0166
  apply BellmanLabeledRun.cons (e := edge0182)
  · rfl
  · rfl
  · exact GraphEdge.e0182
  · exact SmokeEdgeLabel.e0182
  apply BellmanLabeledRun.cons (e := edge0200)
  · rfl
  · rfl
  · exact GraphEdge.e0200
  · exact SmokeEdgeLabel.e0200
  apply BellmanLabeledRun.cons (e := edge0223)
  · rfl
  · rfl
  · exact GraphEdge.e0223
  · exact SmokeEdgeLabel.e0223
  apply BellmanLabeledRun.cons (e := edge0028)
  · rfl
  · rfl
  · exact GraphEdge.e0028
  · exact SmokeEdgeLabel.e0028
  apply BellmanLabeledRun.cons (e := edge0059)
  · rfl
  · rfl
  · exact GraphEdge.e0059
  · exact SmokeEdgeLabel.e0059
  apply BellmanLabeledRun.cons (e := edge0094)
  · rfl
  · rfl
  · exact GraphEdge.e0094
  · exact SmokeEdgeLabel.e0094
  apply BellmanLabeledRun.cons (e := edge0121)
  · rfl
  · rfl
  · exact GraphEdge.e0121
  · exact SmokeEdgeLabel.e0121
  exact BellmanLabeledRun.nil State.s0139

private theorem cls0015LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0015FinalState cls0015Labels cls0015Gain := by
  unfold cls0015Labels cls0015Gain rootState cls0015FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0140
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0152
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0166
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0182
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0200
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0223
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0028
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0059
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0094
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0121
  exact BellmanLabelStepRun.nil State.s0139

private def cls0015SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0015SuffixGain : Int :=
  edge0126.gain + (edge0131.gain + (edge0140.gain + (edge0152.gain + (edge0166.gain + (edge0182.gain + (edge0200.gain + (edge0223.gain + (edge0028.gain + (edge0059.gain + (edge0094.gain + (edge0121.gain + (0))))))))))))

private theorem cls0015SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0015FinalState cls0015SuffixLabels cls0015SuffixGain := by
  unfold cls0015SuffixLabels cls0015SuffixGain commonPrefixFinalState cls0015FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0131
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0140
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0152
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0166
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0182
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0200
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0223
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0028
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0059
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0094
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0121
  exact BellmanLabelStepRun.nil State.s0139

private def cls0015ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0015SuffixLabels

private def cls0015ComposedGain : Int :=
  commonPrefixGain + cls0015SuffixGain

private theorem cls0015ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0015FinalState cls0015ComposedLabels cls0015ComposedGain := by
  unfold cls0015ComposedLabels cls0015ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0015SuffixLabelStepRun

private theorem cls0015ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0015 <= (176 : Int) + cls0015ComposedGain := by
  unfold cls0015ComposedGain commonPrefixGain cls0015SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0015TrieFinal_nonneg :
    0 <= graphPotential trieNode0140State := by
  unfold trieNode0140State
  decide

private theorem cls0015TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0015 <= (176 : Int) + trieNode0140Gain := by
  unfold trieNode0140Gain trieNode0140StepGain trieNode0139Gain trieNode0139StepGain trieNode0138Gain trieNode0138StepGain trieNode0137Gain trieNode0137StepGain trieNode0132Gain trieNode0132StepGain trieNode0131Gain trieNode0131StepGain trieNode0130Gain trieNode0130StepGain trieNode0129Gain trieNode0129StepGain trieNode0128Gain trieNode0128StepGain trieNode0127Gain trieNode0127StepGain trieNode0116Gain trieNode0116StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0015Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0015 <= (176 : Int) + cls0015Gain := by
  unfold cls0015Gain
  change (-200 : Int) <= -200
  decide

private def cls0016Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0011
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0016Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0226.gain + (edge0010.gain + (edge0049.gain + (edge0084.gain + (edge0118.gain + (0))))))))))))))

private theorem cls0016LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0016FinalState cls0016Labels cls0016Gain := by
  unfold cls0016Labels cls0016Gain rootState cls0016FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0132)
  · rfl
  · rfl
  · exact GraphEdge.e0132
  · exact SmokeEdgeLabel.e0132
  apply BellmanLabeledRun.cons (e := edge0142)
  · rfl
  · rfl
  · exact GraphEdge.e0142
  · exact SmokeEdgeLabel.e0142
  apply BellmanLabeledRun.cons (e := edge0154)
  · rfl
  · rfl
  · exact GraphEdge.e0154
  · exact SmokeEdgeLabel.e0154
  apply BellmanLabeledRun.cons (e := edge0168)
  · rfl
  · rfl
  · exact GraphEdge.e0168
  · exact SmokeEdgeLabel.e0168
  apply BellmanLabeledRun.cons (e := edge0184)
  · rfl
  · rfl
  · exact GraphEdge.e0184
  · exact SmokeEdgeLabel.e0184
  apply BellmanLabeledRun.cons (e := edge0202)
  · rfl
  · rfl
  · exact GraphEdge.e0202
  · exact SmokeEdgeLabel.e0202
  apply BellmanLabeledRun.cons (e := edge0226)
  · rfl
  · rfl
  · exact GraphEdge.e0226
  · exact SmokeEdgeLabel.e0226
  apply BellmanLabeledRun.cons (e := edge0010)
  · rfl
  · rfl
  · exact GraphEdge.e0010
  · exact SmokeEdgeLabel.e0010
  apply BellmanLabeledRun.cons (e := edge0049)
  · rfl
  · rfl
  · exact GraphEdge.e0049
  · exact SmokeEdgeLabel.e0049
  apply BellmanLabeledRun.cons (e := edge0084)
  · rfl
  · rfl
  · exact GraphEdge.e0084
  · exact SmokeEdgeLabel.e0084
  apply BellmanLabeledRun.cons (e := edge0118)
  · rfl
  · rfl
  · exact GraphEdge.e0118
  · exact SmokeEdgeLabel.e0118
  exact BellmanLabeledRun.nil State.s0136

private theorem cls0016LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0016FinalState cls0016Labels cls0016Gain := by
  unfold cls0016Labels cls0016Gain rootState cls0016FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0226
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0010
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0049
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0084
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0118
  exact BellmanLabelStepRun.nil State.s0136

private def cls0016SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0011
  , SmokeLabel.l0002
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0016SuffixGain : Int :=
  edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0226.gain + (edge0010.gain + (edge0049.gain + (edge0084.gain + (edge0118.gain + (0))))))))))))

private theorem cls0016SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0016FinalState cls0016SuffixLabels cls0016SuffixGain := by
  unfold cls0016SuffixLabels cls0016SuffixGain commonPrefixFinalState cls0016FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0226
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0010
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0049
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0084
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0118
  exact BellmanLabelStepRun.nil State.s0136

private def cls0016ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0016SuffixLabels

private def cls0016ComposedGain : Int :=
  commonPrefixGain + cls0016SuffixGain

private theorem cls0016ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0016FinalState cls0016ComposedLabels cls0016ComposedGain := by
  unfold cls0016ComposedLabels cls0016ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0016SuffixLabelStepRun

private theorem cls0016ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0016 <= (176 : Int) + cls0016ComposedGain := by
  unfold cls0016ComposedGain commonPrefixGain cls0016SuffixGain
  change (-420 : Int) <= -420
  decide

private theorem cls0016TrieFinal_nonneg :
    0 <= graphPotential trieNode0151State := by
  unfold trieNode0151State
  decide

private theorem cls0016TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0016 <= (176 : Int) + trieNode0151Gain := by
  unfold trieNode0151Gain trieNode0151StepGain trieNode0150Gain trieNode0150StepGain trieNode0149Gain trieNode0149StepGain trieNode0148Gain trieNode0148StepGain trieNode0147Gain trieNode0147StepGain trieNode0146Gain trieNode0146StepGain trieNode0145Gain trieNode0145StepGain trieNode0144Gain trieNode0144StepGain trieNode0143Gain trieNode0143StepGain trieNode0142Gain trieNode0142StepGain trieNode0141Gain trieNode0141StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-420 : Int) <= -420
  decide

private theorem cls0016Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0016 <= (176 : Int) + cls0016Gain := by
  unfold cls0016Gain
  change (-420 : Int) <= -420
  decide

private def cls0017Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0000
  , SmokeLabel.l0002
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0017Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0062.gain + (edge0085.gain + (edge0119.gain + (0))))))))))))))

private theorem cls0017LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0017FinalState cls0017Labels cls0017Gain := by
  unfold cls0017Labels cls0017Gain rootState cls0017FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0132)
  · rfl
  · rfl
  · exact GraphEdge.e0132
  · exact SmokeEdgeLabel.e0132
  apply BellmanLabeledRun.cons (e := edge0142)
  · rfl
  · rfl
  · exact GraphEdge.e0142
  · exact SmokeEdgeLabel.e0142
  apply BellmanLabeledRun.cons (e := edge0154)
  · rfl
  · rfl
  · exact GraphEdge.e0154
  · exact SmokeEdgeLabel.e0154
  apply BellmanLabeledRun.cons (e := edge0168)
  · rfl
  · rfl
  · exact GraphEdge.e0168
  · exact SmokeEdgeLabel.e0168
  apply BellmanLabeledRun.cons (e := edge0184)
  · rfl
  · rfl
  · exact GraphEdge.e0184
  · exact SmokeEdgeLabel.e0184
  apply BellmanLabeledRun.cons (e := edge0202)
  · rfl
  · rfl
  · exact GraphEdge.e0202
  · exact SmokeEdgeLabel.e0202
  apply BellmanLabeledRun.cons (e := edge0227)
  · rfl
  · rfl
  · exact GraphEdge.e0227
  · exact SmokeEdgeLabel.e0227
  apply BellmanLabeledRun.cons (e := edge0029)
  · rfl
  · rfl
  · exact GraphEdge.e0029
  · exact SmokeEdgeLabel.e0029
  apply BellmanLabeledRun.cons (e := edge0062)
  · rfl
  · rfl
  · exact GraphEdge.e0062
  · exact SmokeEdgeLabel.e0062
  apply BellmanLabeledRun.cons (e := edge0085)
  · rfl
  · rfl
  · exact GraphEdge.e0085
  · exact SmokeEdgeLabel.e0085
  apply BellmanLabeledRun.cons (e := edge0119)
  · rfl
  · rfl
  · exact GraphEdge.e0119
  · exact SmokeEdgeLabel.e0119
  exact BellmanLabeledRun.nil State.s0137

private theorem cls0017LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0017FinalState cls0017Labels cls0017Gain := by
  unfold cls0017Labels cls0017Gain rootState cls0017FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0227
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0029
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0062
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0085
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil State.s0137

private def cls0017SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0000
  , SmokeLabel.l0002
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0017SuffixGain : Int :=
  edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0062.gain + (edge0085.gain + (edge0119.gain + (0))))))))))))

private theorem cls0017SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0017FinalState cls0017SuffixLabels cls0017SuffixGain := by
  unfold cls0017SuffixLabels cls0017SuffixGain commonPrefixFinalState cls0017FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0227
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0029
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0062
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0085
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil State.s0137

private def cls0017ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0017SuffixLabels

private def cls0017ComposedGain : Int :=
  commonPrefixGain + cls0017SuffixGain

private theorem cls0017ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0017FinalState cls0017ComposedLabels cls0017ComposedGain := by
  unfold cls0017ComposedLabels cls0017ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0017SuffixLabelStepRun

private theorem cls0017ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0017 <= (176 : Int) + cls0017ComposedGain := by
  unfold cls0017ComposedGain commonPrefixGain cls0017SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0017TrieFinal_nonneg :
    0 <= graphPotential trieNode0156State := by
  unfold trieNode0156State
  decide

private theorem cls0017TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0017 <= (176 : Int) + trieNode0156Gain := by
  unfold trieNode0156Gain trieNode0156StepGain trieNode0155Gain trieNode0155StepGain trieNode0154Gain trieNode0154StepGain trieNode0153Gain trieNode0153StepGain trieNode0152Gain trieNode0152StepGain trieNode0146Gain trieNode0146StepGain trieNode0145Gain trieNode0145StepGain trieNode0144Gain trieNode0144StepGain trieNode0143Gain trieNode0143StepGain trieNode0142Gain trieNode0142StepGain trieNode0141Gain trieNode0141StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0017Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0017 <= (176 : Int) + cls0017Gain := by
  unfold cls0017Gain
  change (-200 : Int) <= -200
  decide

private def cls0018Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0000
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0018Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0063.gain + (edge0093.gain + (edge0119.gain + (0))))))))))))))

private theorem cls0018LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0018FinalState cls0018Labels cls0018Gain := by
  unfold cls0018Labels cls0018Gain rootState cls0018FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0126)
  · rfl
  · rfl
  · exact GraphEdge.e0126
  · exact SmokeEdgeLabel.e0126
  apply BellmanLabeledRun.cons (e := edge0132)
  · rfl
  · rfl
  · exact GraphEdge.e0132
  · exact SmokeEdgeLabel.e0132
  apply BellmanLabeledRun.cons (e := edge0142)
  · rfl
  · rfl
  · exact GraphEdge.e0142
  · exact SmokeEdgeLabel.e0142
  apply BellmanLabeledRun.cons (e := edge0154)
  · rfl
  · rfl
  · exact GraphEdge.e0154
  · exact SmokeEdgeLabel.e0154
  apply BellmanLabeledRun.cons (e := edge0168)
  · rfl
  · rfl
  · exact GraphEdge.e0168
  · exact SmokeEdgeLabel.e0168
  apply BellmanLabeledRun.cons (e := edge0184)
  · rfl
  · rfl
  · exact GraphEdge.e0184
  · exact SmokeEdgeLabel.e0184
  apply BellmanLabeledRun.cons (e := edge0202)
  · rfl
  · rfl
  · exact GraphEdge.e0202
  · exact SmokeEdgeLabel.e0202
  apply BellmanLabeledRun.cons (e := edge0227)
  · rfl
  · rfl
  · exact GraphEdge.e0227
  · exact SmokeEdgeLabel.e0227
  apply BellmanLabeledRun.cons (e := edge0029)
  · rfl
  · rfl
  · exact GraphEdge.e0029
  · exact SmokeEdgeLabel.e0029
  apply BellmanLabeledRun.cons (e := edge0063)
  · rfl
  · rfl
  · exact GraphEdge.e0063
  · exact SmokeEdgeLabel.e0063
  apply BellmanLabeledRun.cons (e := edge0093)
  · rfl
  · rfl
  · exact GraphEdge.e0093
  · exact SmokeEdgeLabel.e0093
  apply BellmanLabeledRun.cons (e := edge0119)
  · rfl
  · rfl
  · exact GraphEdge.e0119
  · exact SmokeEdgeLabel.e0119
  exact BellmanLabeledRun.nil State.s0137

private theorem cls0018LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0018FinalState cls0018Labels cls0018Gain := by
  unfold cls0018Labels cls0018Gain rootState cls0018FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0227
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0029
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0063
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0093
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil State.s0137

private def cls0018SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0007
  , SmokeLabel.l0005
  , SmokeLabel.l0006
  , SmokeLabel.l0001
  , SmokeLabel.l0004
  , SmokeLabel.l0000
  , SmokeLabel.l0002
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0018SuffixGain : Int :=
  edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0154.gain + (edge0168.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0063.gain + (edge0093.gain + (edge0119.gain + (0))))))))))))

private theorem cls0018SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0018FinalState cls0018SuffixLabels cls0018SuffixGain := by
  unfold cls0018SuffixLabels cls0018SuffixGain commonPrefixFinalState cls0018FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0126
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0132
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0142
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0154
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0168
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0184
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0202
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0227
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0029
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0063
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0093
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0119
  exact BellmanLabelStepRun.nil State.s0137

private def cls0018ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0018SuffixLabels

private def cls0018ComposedGain : Int :=
  commonPrefixGain + cls0018SuffixGain

private theorem cls0018ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0018FinalState cls0018ComposedLabels cls0018ComposedGain := by
  unfold cls0018ComposedLabels cls0018ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0018SuffixLabelStepRun

private theorem cls0018ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0018 <= (176 : Int) + cls0018ComposedGain := by
  unfold cls0018ComposedGain commonPrefixGain cls0018SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0018TrieFinal_nonneg :
    0 <= graphPotential trieNode0159State := by
  unfold trieNode0159State
  decide

private theorem cls0018TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0018 <= (176 : Int) + trieNode0159Gain := by
  unfold trieNode0159Gain trieNode0159StepGain trieNode0158Gain trieNode0158StepGain trieNode0157Gain trieNode0157StepGain trieNode0153Gain trieNode0153StepGain trieNode0152Gain trieNode0152StepGain trieNode0146Gain trieNode0146StepGain trieNode0145Gain trieNode0145StepGain trieNode0144Gain trieNode0144StepGain trieNode0143Gain trieNode0143StepGain trieNode0142Gain trieNode0142StepGain trieNode0141Gain trieNode0141StepGain trieNode0094Gain trieNode0094StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0018Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0018 <= (176 : Int) + cls0018Gain := by
  unfold cls0018Gain
  change (-200 : Int) <= -200
  decide

private def cls0019Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0019Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0133.gain + (edge0141.gain + (edge0151.gain + (edge0165.gain + (edge0181.gain + (edge0199.gain + (edge0222.gain + (edge0026.gain + (edge0037.gain + (edge0070.gain + (edge0108.gain + (0))))))))))))))

private theorem cls0019LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0019FinalState cls0019Labels cls0019Gain := by
  unfold cls0019Labels cls0019Gain rootState cls0019FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0133)
  · rfl
  · rfl
  · exact GraphEdge.e0133
  · exact SmokeEdgeLabel.e0133
  apply BellmanLabeledRun.cons (e := edge0141)
  · rfl
  · rfl
  · exact GraphEdge.e0141
  · exact SmokeEdgeLabel.e0141
  apply BellmanLabeledRun.cons (e := edge0151)
  · rfl
  · rfl
  · exact GraphEdge.e0151
  · exact SmokeEdgeLabel.e0151
  apply BellmanLabeledRun.cons (e := edge0165)
  · rfl
  · rfl
  · exact GraphEdge.e0165
  · exact SmokeEdgeLabel.e0165
  apply BellmanLabeledRun.cons (e := edge0181)
  · rfl
  · rfl
  · exact GraphEdge.e0181
  · exact SmokeEdgeLabel.e0181
  apply BellmanLabeledRun.cons (e := edge0199)
  · rfl
  · rfl
  · exact GraphEdge.e0199
  · exact SmokeEdgeLabel.e0199
  apply BellmanLabeledRun.cons (e := edge0222)
  · rfl
  · rfl
  · exact GraphEdge.e0222
  · exact SmokeEdgeLabel.e0222
  apply BellmanLabeledRun.cons (e := edge0026)
  · rfl
  · rfl
  · exact GraphEdge.e0026
  · exact SmokeEdgeLabel.e0026
  apply BellmanLabeledRun.cons (e := edge0037)
  · rfl
  · rfl
  · exact GraphEdge.e0037
  · exact SmokeEdgeLabel.e0037
  apply BellmanLabeledRun.cons (e := edge0070)
  · rfl
  · rfl
  · exact GraphEdge.e0070
  · exact SmokeEdgeLabel.e0070
  apply BellmanLabeledRun.cons (e := edge0108)
  · rfl
  · rfl
  · exact GraphEdge.e0108
  · exact SmokeEdgeLabel.e0108
  exact BellmanLabeledRun.nil State.s0126

private theorem cls0019LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0019FinalState cls0019Labels cls0019Gain := by
  unfold cls0019Labels cls0019Gain rootState cls0019FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0133
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0141
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0151
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0165
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0181
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0199
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0222
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0026
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0037
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0070
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0108
  exact BellmanLabelStepRun.nil State.s0126

private def cls0019SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0019SuffixGain : Int :=
  edge0127.gain + (edge0133.gain + (edge0141.gain + (edge0151.gain + (edge0165.gain + (edge0181.gain + (edge0199.gain + (edge0222.gain + (edge0026.gain + (edge0037.gain + (edge0070.gain + (edge0108.gain + (0))))))))))))

private theorem cls0019SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0019FinalState cls0019SuffixLabels cls0019SuffixGain := by
  unfold cls0019SuffixLabels cls0019SuffixGain commonPrefixFinalState cls0019FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0133
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0141
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0151
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0165
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0181
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0199
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0222
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0026
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0037
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0070
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0108
  exact BellmanLabelStepRun.nil State.s0126

private def cls0019ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0019SuffixLabels

private def cls0019ComposedGain : Int :=
  commonPrefixGain + cls0019SuffixGain

private theorem cls0019ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0019FinalState cls0019ComposedLabels cls0019ComposedGain := by
  unfold cls0019ComposedLabels cls0019ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0019SuffixLabelStepRun

private theorem cls0019ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0019 <= (176 : Int) + cls0019ComposedGain := by
  unfold cls0019ComposedGain commonPrefixGain cls0019SuffixGain
  change (-172 : Int) <= -172
  decide

private theorem cls0019TrieFinal_nonneg :
    0 <= graphPotential trieNode0171State := by
  unfold trieNode0171State
  decide

private theorem cls0019TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0019 <= (176 : Int) + trieNode0171Gain := by
  unfold trieNode0171Gain trieNode0171StepGain trieNode0170Gain trieNode0170StepGain trieNode0169Gain trieNode0169StepGain trieNode0168Gain trieNode0168StepGain trieNode0167Gain trieNode0167StepGain trieNode0166Gain trieNode0166StepGain trieNode0165Gain trieNode0165StepGain trieNode0164Gain trieNode0164StepGain trieNode0163Gain trieNode0163StepGain trieNode0162Gain trieNode0162StepGain trieNode0161Gain trieNode0161StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-172 : Int) <= -172
  decide

private theorem cls0019Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0019 <= (176 : Int) + cls0019Gain := by
  unfold cls0019Gain
  change (-172 : Int) <= -172
  decide

private def cls0020Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0020Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0153.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0024.gain + (edge0036.gain + (edge0069.gain + (edge0107.gain + (0))))))))))))))

private theorem cls0020LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0020FinalState cls0020Labels cls0020Gain := by
  unfold cls0020Labels cls0020Gain rootState cls0020FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0143)
  · rfl
  · rfl
  · exact GraphEdge.e0143
  · exact SmokeEdgeLabel.e0143
  apply BellmanLabeledRun.cons (e := edge0153)
  · rfl
  · rfl
  · exact GraphEdge.e0153
  · exact SmokeEdgeLabel.e0153
  apply BellmanLabeledRun.cons (e := edge0164)
  · rfl
  · rfl
  · exact GraphEdge.e0164
  · exact SmokeEdgeLabel.e0164
  apply BellmanLabeledRun.cons (e := edge0180)
  · rfl
  · rfl
  · exact GraphEdge.e0180
  · exact SmokeEdgeLabel.e0180
  apply BellmanLabeledRun.cons (e := edge0198)
  · rfl
  · rfl
  · exact GraphEdge.e0198
  · exact SmokeEdgeLabel.e0198
  apply BellmanLabeledRun.cons (e := edge0221)
  · rfl
  · rfl
  · exact GraphEdge.e0221
  · exact SmokeEdgeLabel.e0221
  apply BellmanLabeledRun.cons (e := edge0024)
  · rfl
  · rfl
  · exact GraphEdge.e0024
  · exact SmokeEdgeLabel.e0024
  apply BellmanLabeledRun.cons (e := edge0036)
  · rfl
  · rfl
  · exact GraphEdge.e0036
  · exact SmokeEdgeLabel.e0036
  apply BellmanLabeledRun.cons (e := edge0069)
  · rfl
  · rfl
  · exact GraphEdge.e0069
  · exact SmokeEdgeLabel.e0069
  apply BellmanLabeledRun.cons (e := edge0107)
  · rfl
  · rfl
  · exact GraphEdge.e0107
  · exact SmokeEdgeLabel.e0107
  exact BellmanLabeledRun.nil State.s0125

private theorem cls0020LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0020FinalState cls0020Labels cls0020Gain := by
  unfold cls0020Labels cls0020Gain rootState cls0020FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0143
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0164
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0180
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0198
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0221
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0024
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0036
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0069
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0107
  exact BellmanLabelStepRun.nil State.s0125

private def cls0020SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0020SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0153.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0024.gain + (edge0036.gain + (edge0069.gain + (edge0107.gain + (0))))))))))))

private theorem cls0020SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0020FinalState cls0020SuffixLabels cls0020SuffixGain := by
  unfold cls0020SuffixLabels cls0020SuffixGain commonPrefixFinalState cls0020FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0143
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0164
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0180
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0198
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0221
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0024
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0036
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0069
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0107
  exact BellmanLabelStepRun.nil State.s0125

private def cls0020ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0020SuffixLabels

private def cls0020ComposedGain : Int :=
  commonPrefixGain + cls0020SuffixGain

private theorem cls0020ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0020FinalState cls0020ComposedLabels cls0020ComposedGain := by
  unfold cls0020ComposedLabels cls0020ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0020SuffixLabelStepRun

private theorem cls0020ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0020 <= (176 : Int) + cls0020ComposedGain := by
  unfold cls0020ComposedGain commonPrefixGain cls0020SuffixGain
  change (-436 : Int) <= -436
  decide

private theorem cls0020TrieFinal_nonneg :
    0 <= graphPotential trieNode0182State := by
  unfold trieNode0182State
  decide

private theorem cls0020TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0020 <= (176 : Int) + trieNode0182Gain := by
  unfold trieNode0182Gain trieNode0182StepGain trieNode0181Gain trieNode0181StepGain trieNode0180Gain trieNode0180StepGain trieNode0179Gain trieNode0179StepGain trieNode0178Gain trieNode0178StepGain trieNode0177Gain trieNode0177StepGain trieNode0176Gain trieNode0176StepGain trieNode0175Gain trieNode0175StepGain trieNode0174Gain trieNode0174StepGain trieNode0173Gain trieNode0173StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-436 : Int) <= -436
  decide

private theorem cls0020Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0020 <= (176 : Int) + cls0020Gain := by
  unfold cls0020Gain
  change (-436 : Int) <= -436
  decide

private def cls0021Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0021Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0153.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0025.gain + (edge0058.gain + (edge0092.gain + (edge0106.gain + (0))))))))))))))

private theorem cls0021LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0021FinalState cls0021Labels cls0021Gain := by
  unfold cls0021Labels cls0021Gain rootState cls0021FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0143)
  · rfl
  · rfl
  · exact GraphEdge.e0143
  · exact SmokeEdgeLabel.e0143
  apply BellmanLabeledRun.cons (e := edge0153)
  · rfl
  · rfl
  · exact GraphEdge.e0153
  · exact SmokeEdgeLabel.e0153
  apply BellmanLabeledRun.cons (e := edge0164)
  · rfl
  · rfl
  · exact GraphEdge.e0164
  · exact SmokeEdgeLabel.e0164
  apply BellmanLabeledRun.cons (e := edge0180)
  · rfl
  · rfl
  · exact GraphEdge.e0180
  · exact SmokeEdgeLabel.e0180
  apply BellmanLabeledRun.cons (e := edge0198)
  · rfl
  · rfl
  · exact GraphEdge.e0198
  · exact SmokeEdgeLabel.e0198
  apply BellmanLabeledRun.cons (e := edge0221)
  · rfl
  · rfl
  · exact GraphEdge.e0221
  · exact SmokeEdgeLabel.e0221
  apply BellmanLabeledRun.cons (e := edge0025)
  · rfl
  · rfl
  · exact GraphEdge.e0025
  · exact SmokeEdgeLabel.e0025
  apply BellmanLabeledRun.cons (e := edge0058)
  · rfl
  · rfl
  · exact GraphEdge.e0058
  · exact SmokeEdgeLabel.e0058
  apply BellmanLabeledRun.cons (e := edge0092)
  · rfl
  · rfl
  · exact GraphEdge.e0092
  · exact SmokeEdgeLabel.e0092
  apply BellmanLabeledRun.cons (e := edge0106)
  · rfl
  · rfl
  · exact GraphEdge.e0106
  · exact SmokeEdgeLabel.e0106
  exact BellmanLabeledRun.nil State.s0124

private theorem cls0021LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0021FinalState cls0021Labels cls0021Gain := by
  unfold cls0021Labels cls0021Gain rootState cls0021FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0143
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0164
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0180
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0198
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0221
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0025
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0058
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0092
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0106
  exact BellmanLabelStepRun.nil State.s0124

private def cls0021SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0021SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0153.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0025.gain + (edge0058.gain + (edge0092.gain + (edge0106.gain + (0))))))))))))

private theorem cls0021SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0021FinalState cls0021SuffixLabels cls0021SuffixGain := by
  unfold cls0021SuffixLabels cls0021SuffixGain commonPrefixFinalState cls0021FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0143
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0164
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0180
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0198
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0221
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0025
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0058
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0092
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0106
  exact BellmanLabelStepRun.nil State.s0124

private def cls0021ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0021SuffixLabels

private def cls0021ComposedGain : Int :=
  commonPrefixGain + cls0021SuffixGain

private theorem cls0021ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0021FinalState cls0021ComposedLabels cls0021ComposedGain := by
  unfold cls0021ComposedLabels cls0021ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0021SuffixLabelStepRun

private theorem cls0021ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0021 <= (176 : Int) + cls0021ComposedGain := by
  unfold cls0021ComposedGain commonPrefixGain cls0021SuffixGain
  change (-216 : Int) <= -216
  decide

private theorem cls0021TrieFinal_nonneg :
    0 <= graphPotential trieNode0186State := by
  unfold trieNode0186State
  decide

private theorem cls0021TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0021 <= (176 : Int) + trieNode0186Gain := by
  unfold trieNode0186Gain trieNode0186StepGain trieNode0185Gain trieNode0185StepGain trieNode0184Gain trieNode0184StepGain trieNode0183Gain trieNode0183StepGain trieNode0178Gain trieNode0178StepGain trieNode0177Gain trieNode0177StepGain trieNode0176Gain trieNode0176StepGain trieNode0175Gain trieNode0175StepGain trieNode0174Gain trieNode0174StepGain trieNode0173Gain trieNode0173StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-216 : Int) <= -216
  decide

private theorem cls0021Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0021 <= (176 : Int) + cls0021Gain := by
  unfold cls0021Gain
  change (-216 : Int) <= -216
  decide

private def cls0022Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0022Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0167.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0022.gain + (edge0035.gain + (edge0068.gain + (edge0105.gain + (0))))))))))))))

private theorem cls0022LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0022FinalState cls0022Labels cls0022Gain := by
  unfold cls0022Labels cls0022Gain rootState cls0022FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0155)
  · rfl
  · rfl
  · exact GraphEdge.e0155
  · exact SmokeEdgeLabel.e0155
  apply BellmanLabeledRun.cons (e := edge0167)
  · rfl
  · rfl
  · exact GraphEdge.e0167
  · exact SmokeEdgeLabel.e0167
  apply BellmanLabeledRun.cons (e := edge0179)
  · rfl
  · rfl
  · exact GraphEdge.e0179
  · exact SmokeEdgeLabel.e0179
  apply BellmanLabeledRun.cons (e := edge0197)
  · rfl
  · rfl
  · exact GraphEdge.e0197
  · exact SmokeEdgeLabel.e0197
  apply BellmanLabeledRun.cons (e := edge0220)
  · rfl
  · rfl
  · exact GraphEdge.e0220
  · exact SmokeEdgeLabel.e0220
  apply BellmanLabeledRun.cons (e := edge0022)
  · rfl
  · rfl
  · exact GraphEdge.e0022
  · exact SmokeEdgeLabel.e0022
  apply BellmanLabeledRun.cons (e := edge0035)
  · rfl
  · rfl
  · exact GraphEdge.e0035
  · exact SmokeEdgeLabel.e0035
  apply BellmanLabeledRun.cons (e := edge0068)
  · rfl
  · rfl
  · exact GraphEdge.e0068
  · exact SmokeEdgeLabel.e0068
  apply BellmanLabeledRun.cons (e := edge0105)
  · rfl
  · rfl
  · exact GraphEdge.e0105
  · exact SmokeEdgeLabel.e0105
  exact BellmanLabeledRun.nil State.s0123

private theorem cls0022LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0022FinalState cls0022Labels cls0022Gain := by
  unfold cls0022Labels cls0022Gain rootState cls0022FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0155
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0179
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0197
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0220
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0022
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0035
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0068
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0105
  exact BellmanLabelStepRun.nil State.s0123

private def cls0022SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0022SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0167.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0022.gain + (edge0035.gain + (edge0068.gain + (edge0105.gain + (0))))))))))))

private theorem cls0022SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0022FinalState cls0022SuffixLabels cls0022SuffixGain := by
  unfold cls0022SuffixLabels cls0022SuffixGain commonPrefixFinalState cls0022FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0155
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0179
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0197
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0220
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0022
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0035
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0068
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0105
  exact BellmanLabelStepRun.nil State.s0123

private def cls0022ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0022SuffixLabels

private def cls0022ComposedGain : Int :=
  commonPrefixGain + cls0022SuffixGain

private theorem cls0022ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0022FinalState cls0022ComposedLabels cls0022ComposedGain := by
  unfold cls0022ComposedLabels cls0022ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0022SuffixLabelStepRun

private theorem cls0022ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0022 <= (176 : Int) + cls0022ComposedGain := by
  unfold cls0022ComposedGain commonPrefixGain cls0022SuffixGain
  change (-508 : Int) <= -508
  decide

private theorem cls0022TrieFinal_nonneg :
    0 <= graphPotential trieNode0196State := by
  unfold trieNode0196State
  decide

private theorem cls0022TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0022 <= (176 : Int) + trieNode0196Gain := by
  unfold trieNode0196Gain trieNode0196StepGain trieNode0195Gain trieNode0195StepGain trieNode0194Gain trieNode0194StepGain trieNode0193Gain trieNode0193StepGain trieNode0192Gain trieNode0192StepGain trieNode0191Gain trieNode0191StepGain trieNode0190Gain trieNode0190StepGain trieNode0189Gain trieNode0189StepGain trieNode0188Gain trieNode0188StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-508 : Int) <= -508
  decide

private theorem cls0022Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0022 <= (176 : Int) + cls0022Gain := by
  unfold cls0022Gain
  change (-508 : Int) <= -508
  decide

private def cls0023Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0023Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0167.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0023.gain + (edge0057.gain + (edge0091.gain + (edge0104.gain + (0))))))))))))))

private theorem cls0023LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0023FinalState cls0023Labels cls0023Gain := by
  unfold cls0023Labels cls0023Gain rootState cls0023FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0155)
  · rfl
  · rfl
  · exact GraphEdge.e0155
  · exact SmokeEdgeLabel.e0155
  apply BellmanLabeledRun.cons (e := edge0167)
  · rfl
  · rfl
  · exact GraphEdge.e0167
  · exact SmokeEdgeLabel.e0167
  apply BellmanLabeledRun.cons (e := edge0179)
  · rfl
  · rfl
  · exact GraphEdge.e0179
  · exact SmokeEdgeLabel.e0179
  apply BellmanLabeledRun.cons (e := edge0197)
  · rfl
  · rfl
  · exact GraphEdge.e0197
  · exact SmokeEdgeLabel.e0197
  apply BellmanLabeledRun.cons (e := edge0220)
  · rfl
  · rfl
  · exact GraphEdge.e0220
  · exact SmokeEdgeLabel.e0220
  apply BellmanLabeledRun.cons (e := edge0023)
  · rfl
  · rfl
  · exact GraphEdge.e0023
  · exact SmokeEdgeLabel.e0023
  apply BellmanLabeledRun.cons (e := edge0057)
  · rfl
  · rfl
  · exact GraphEdge.e0057
  · exact SmokeEdgeLabel.e0057
  apply BellmanLabeledRun.cons (e := edge0091)
  · rfl
  · rfl
  · exact GraphEdge.e0091
  · exact SmokeEdgeLabel.e0091
  apply BellmanLabeledRun.cons (e := edge0104)
  · rfl
  · rfl
  · exact GraphEdge.e0104
  · exact SmokeEdgeLabel.e0104
  exact BellmanLabeledRun.nil State.s0122

private theorem cls0023LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0023FinalState cls0023Labels cls0023Gain := by
  unfold cls0023Labels cls0023Gain rootState cls0023FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0155
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0179
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0197
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0220
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0023
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0057
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0091
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0104
  exact BellmanLabelStepRun.nil State.s0122

private def cls0023SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0023SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0167.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0023.gain + (edge0057.gain + (edge0091.gain + (edge0104.gain + (0))))))))))))

private theorem cls0023SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0023FinalState cls0023SuffixLabels cls0023SuffixGain := by
  unfold cls0023SuffixLabels cls0023SuffixGain commonPrefixFinalState cls0023FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0155
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0179
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0197
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0220
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0023
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0057
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0091
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0104
  exact BellmanLabelStepRun.nil State.s0122

private def cls0023ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0023SuffixLabels

private def cls0023ComposedGain : Int :=
  commonPrefixGain + cls0023SuffixGain

private theorem cls0023ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0023FinalState cls0023ComposedLabels cls0023ComposedGain := by
  unfold cls0023ComposedLabels cls0023ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0023SuffixLabelStepRun

private theorem cls0023ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0023 <= (176 : Int) + cls0023ComposedGain := by
  unfold cls0023ComposedGain commonPrefixGain cls0023SuffixGain
  change (-288 : Int) <= -288
  decide

private theorem cls0023TrieFinal_nonneg :
    0 <= graphPotential trieNode0200State := by
  unfold trieNode0200State
  decide

private theorem cls0023TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0023 <= (176 : Int) + trieNode0200Gain := by
  unfold trieNode0200Gain trieNode0200StepGain trieNode0199Gain trieNode0199StepGain trieNode0198Gain trieNode0198StepGain trieNode0197Gain trieNode0197StepGain trieNode0192Gain trieNode0192StepGain trieNode0191Gain trieNode0191StepGain trieNode0190Gain trieNode0190StepGain trieNode0189Gain trieNode0189StepGain trieNode0188Gain trieNode0188StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-288 : Int) <= -288
  decide

private theorem cls0023Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0023 <= (176 : Int) + cls0023Gain := by
  unfold cls0023Gain
  change (-288 : Int) <= -288
  decide

private def cls0024Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0024Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0169.gain + (edge0183.gain + (edge0196.gain + (edge0219.gain + (edge0020.gain + (edge0034.gain + (edge0067.gain + (edge0103.gain + (0))))))))))))))

private theorem cls0024LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0024FinalState cls0024Labels cls0024Gain := by
  unfold cls0024Labels cls0024Gain rootState cls0024FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0169)
  · rfl
  · rfl
  · exact GraphEdge.e0169
  · exact SmokeEdgeLabel.e0169
  apply BellmanLabeledRun.cons (e := edge0183)
  · rfl
  · rfl
  · exact GraphEdge.e0183
  · exact SmokeEdgeLabel.e0183
  apply BellmanLabeledRun.cons (e := edge0196)
  · rfl
  · rfl
  · exact GraphEdge.e0196
  · exact SmokeEdgeLabel.e0196
  apply BellmanLabeledRun.cons (e := edge0219)
  · rfl
  · rfl
  · exact GraphEdge.e0219
  · exact SmokeEdgeLabel.e0219
  apply BellmanLabeledRun.cons (e := edge0020)
  · rfl
  · rfl
  · exact GraphEdge.e0020
  · exact SmokeEdgeLabel.e0020
  apply BellmanLabeledRun.cons (e := edge0034)
  · rfl
  · rfl
  · exact GraphEdge.e0034
  · exact SmokeEdgeLabel.e0034
  apply BellmanLabeledRun.cons (e := edge0067)
  · rfl
  · rfl
  · exact GraphEdge.e0067
  · exact SmokeEdgeLabel.e0067
  apply BellmanLabeledRun.cons (e := edge0103)
  · rfl
  · rfl
  · exact GraphEdge.e0103
  · exact SmokeEdgeLabel.e0103
  exact BellmanLabeledRun.nil State.s0121

private theorem cls0024LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0024FinalState cls0024Labels cls0024Gain := by
  unfold cls0024Labels cls0024Gain rootState cls0024FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0169
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0183
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0196
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0219
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0020
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0034
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0067
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0103
  exact BellmanLabelStepRun.nil State.s0121

private def cls0024SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0024SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0169.gain + (edge0183.gain + (edge0196.gain + (edge0219.gain + (edge0020.gain + (edge0034.gain + (edge0067.gain + (edge0103.gain + (0))))))))))))

private theorem cls0024SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0024FinalState cls0024SuffixLabels cls0024SuffixGain := by
  unfold cls0024SuffixLabels cls0024SuffixGain commonPrefixFinalState cls0024FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0169
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0183
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0196
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0219
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0020
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0034
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0067
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0103
  exact BellmanLabelStepRun.nil State.s0121

private def cls0024ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0024SuffixLabels

private def cls0024ComposedGain : Int :=
  commonPrefixGain + cls0024SuffixGain

private theorem cls0024ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0024FinalState cls0024ComposedLabels cls0024ComposedGain := by
  unfold cls0024ComposedLabels cls0024ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0024SuffixLabelStepRun

private theorem cls0024ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0024 <= (176 : Int) + cls0024ComposedGain := by
  unfold cls0024ComposedGain commonPrefixGain cls0024SuffixGain
  change (-220 : Int) <= -220
  decide

private theorem cls0024TrieFinal_nonneg :
    0 <= graphPotential trieNode0209State := by
  unfold trieNode0209State
  decide

private theorem cls0024TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0024 <= (176 : Int) + trieNode0209Gain := by
  unfold trieNode0209Gain trieNode0209StepGain trieNode0208Gain trieNode0208StepGain trieNode0207Gain trieNode0207StepGain trieNode0206Gain trieNode0206StepGain trieNode0205Gain trieNode0205StepGain trieNode0204Gain trieNode0204StepGain trieNode0203Gain trieNode0203StepGain trieNode0202Gain trieNode0202StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-220 : Int) <= -220
  decide

private theorem cls0024Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0024 <= (176 : Int) + cls0024Gain := by
  unfold cls0024Gain
  change (-220 : Int) <= -220
  decide

private def cls0025Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0025Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0169.gain + (edge0183.gain + (edge0196.gain + (edge0219.gain + (edge0021.gain + (edge0056.gain + (edge0090.gain + (edge0102.gain + (0))))))))))))))

private theorem cls0025LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0025FinalState cls0025Labels cls0025Gain := by
  unfold cls0025Labels cls0025Gain rootState cls0025FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0169)
  · rfl
  · rfl
  · exact GraphEdge.e0169
  · exact SmokeEdgeLabel.e0169
  apply BellmanLabeledRun.cons (e := edge0183)
  · rfl
  · rfl
  · exact GraphEdge.e0183
  · exact SmokeEdgeLabel.e0183
  apply BellmanLabeledRun.cons (e := edge0196)
  · rfl
  · rfl
  · exact GraphEdge.e0196
  · exact SmokeEdgeLabel.e0196
  apply BellmanLabeledRun.cons (e := edge0219)
  · rfl
  · rfl
  · exact GraphEdge.e0219
  · exact SmokeEdgeLabel.e0219
  apply BellmanLabeledRun.cons (e := edge0021)
  · rfl
  · rfl
  · exact GraphEdge.e0021
  · exact SmokeEdgeLabel.e0021
  apply BellmanLabeledRun.cons (e := edge0056)
  · rfl
  · rfl
  · exact GraphEdge.e0056
  · exact SmokeEdgeLabel.e0056
  apply BellmanLabeledRun.cons (e := edge0090)
  · rfl
  · rfl
  · exact GraphEdge.e0090
  · exact SmokeEdgeLabel.e0090
  apply BellmanLabeledRun.cons (e := edge0102)
  · rfl
  · rfl
  · exact GraphEdge.e0102
  · exact SmokeEdgeLabel.e0102
  exact BellmanLabeledRun.nil State.s0120

private theorem cls0025LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0025FinalState cls0025Labels cls0025Gain := by
  unfold cls0025Labels cls0025Gain rootState cls0025FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0169
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0183
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0196
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0219
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0021
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0056
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0090
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0102
  exact BellmanLabelStepRun.nil State.s0120

private def cls0025SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0025SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0169.gain + (edge0183.gain + (edge0196.gain + (edge0219.gain + (edge0021.gain + (edge0056.gain + (edge0090.gain + (edge0102.gain + (0))))))))))))

private theorem cls0025SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0025FinalState cls0025SuffixLabels cls0025SuffixGain := by
  unfold cls0025SuffixLabels cls0025SuffixGain commonPrefixFinalState cls0025FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0169
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0183
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0196
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0219
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0021
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0056
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0090
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0102
  exact BellmanLabelStepRun.nil State.s0120

private def cls0025ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0025SuffixLabels

private def cls0025ComposedGain : Int :=
  commonPrefixGain + cls0025SuffixGain

private theorem cls0025ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0025FinalState cls0025ComposedLabels cls0025ComposedGain := by
  unfold cls0025ComposedLabels cls0025ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0025SuffixLabelStepRun

private theorem cls0025ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0025 <= (176 : Int) + cls0025ComposedGain := by
  unfold cls0025ComposedGain commonPrefixGain cls0025SuffixGain
  change (0 : Int) <= 0
  decide

private theorem cls0025TrieFinal_nonneg :
    0 <= graphPotential trieNode0213State := by
  unfold trieNode0213State
  decide

private theorem cls0025TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0025 <= (176 : Int) + trieNode0213Gain := by
  unfold trieNode0213Gain trieNode0213StepGain trieNode0212Gain trieNode0212StepGain trieNode0211Gain trieNode0211StepGain trieNode0210Gain trieNode0210StepGain trieNode0205Gain trieNode0205StepGain trieNode0204Gain trieNode0204StepGain trieNode0203Gain trieNode0203StepGain trieNode0202Gain trieNode0202StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (0 : Int) <= 0
  decide

private theorem cls0025Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0025 <= (176 : Int) + cls0025Gain := by
  unfold cls0025Gain
  change (0 : Int) <= 0
  decide

private def cls0026Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0026Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0185.gain + (edge0201.gain + (edge0218.gain + (edge0018.gain + (edge0033.gain + (edge0066.gain + (edge0101.gain + (0))))))))))))))

private theorem cls0026LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0026FinalState cls0026Labels cls0026Gain := by
  unfold cls0026Labels cls0026Gain rootState cls0026FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0185)
  · rfl
  · rfl
  · exact GraphEdge.e0185
  · exact SmokeEdgeLabel.e0185
  apply BellmanLabeledRun.cons (e := edge0201)
  · rfl
  · rfl
  · exact GraphEdge.e0201
  · exact SmokeEdgeLabel.e0201
  apply BellmanLabeledRun.cons (e := edge0218)
  · rfl
  · rfl
  · exact GraphEdge.e0218
  · exact SmokeEdgeLabel.e0218
  apply BellmanLabeledRun.cons (e := edge0018)
  · rfl
  · rfl
  · exact GraphEdge.e0018
  · exact SmokeEdgeLabel.e0018
  apply BellmanLabeledRun.cons (e := edge0033)
  · rfl
  · rfl
  · exact GraphEdge.e0033
  · exact SmokeEdgeLabel.e0033
  apply BellmanLabeledRun.cons (e := edge0066)
  · rfl
  · rfl
  · exact GraphEdge.e0066
  · exact SmokeEdgeLabel.e0066
  apply BellmanLabeledRun.cons (e := edge0101)
  · rfl
  · rfl
  · exact GraphEdge.e0101
  · exact SmokeEdgeLabel.e0101
  exact BellmanLabeledRun.nil State.s0119

private theorem cls0026LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0026FinalState cls0026Labels cls0026Gain := by
  unfold cls0026Labels cls0026Gain rootState cls0026FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0185
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0201
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0218
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0018
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0033
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0066
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0101
  exact BellmanLabelStepRun.nil State.s0119

private def cls0026SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0026SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0185.gain + (edge0201.gain + (edge0218.gain + (edge0018.gain + (edge0033.gain + (edge0066.gain + (edge0101.gain + (0))))))))))))

private theorem cls0026SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0026FinalState cls0026SuffixLabels cls0026SuffixGain := by
  unfold cls0026SuffixLabels cls0026SuffixGain commonPrefixFinalState cls0026FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0185
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0201
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0218
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0018
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0033
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0066
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0101
  exact BellmanLabelStepRun.nil State.s0119

private def cls0026ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0026SuffixLabels

private def cls0026ComposedGain : Int :=
  commonPrefixGain + cls0026SuffixGain

private theorem cls0026ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0026FinalState cls0026ComposedLabels cls0026ComposedGain := by
  unfold cls0026ComposedLabels cls0026ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0026SuffixLabelStepRun

private theorem cls0026ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0026 <= (176 : Int) + cls0026ComposedGain := by
  unfold cls0026ComposedGain commonPrefixGain cls0026SuffixGain
  change (-508 : Int) <= -508
  decide

private theorem cls0026TrieFinal_nonneg :
    0 <= graphPotential trieNode0221State := by
  unfold trieNode0221State
  decide

private theorem cls0026TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0026 <= (176 : Int) + trieNode0221Gain := by
  unfold trieNode0221Gain trieNode0221StepGain trieNode0220Gain trieNode0220StepGain trieNode0219Gain trieNode0219StepGain trieNode0218Gain trieNode0218StepGain trieNode0217Gain trieNode0217StepGain trieNode0216Gain trieNode0216StepGain trieNode0215Gain trieNode0215StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-508 : Int) <= -508
  decide

private theorem cls0026Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0026 <= (176 : Int) + cls0026Gain := by
  unfold cls0026Gain
  change (-508 : Int) <= -508
  decide

private def cls0027Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0027Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0185.gain + (edge0201.gain + (edge0218.gain + (edge0019.gain + (edge0055.gain + (edge0089.gain + (edge0100.gain + (0))))))))))))))

private theorem cls0027LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0027FinalState cls0027Labels cls0027Gain := by
  unfold cls0027Labels cls0027Gain rootState cls0027FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0185)
  · rfl
  · rfl
  · exact GraphEdge.e0185
  · exact SmokeEdgeLabel.e0185
  apply BellmanLabeledRun.cons (e := edge0201)
  · rfl
  · rfl
  · exact GraphEdge.e0201
  · exact SmokeEdgeLabel.e0201
  apply BellmanLabeledRun.cons (e := edge0218)
  · rfl
  · rfl
  · exact GraphEdge.e0218
  · exact SmokeEdgeLabel.e0218
  apply BellmanLabeledRun.cons (e := edge0019)
  · rfl
  · rfl
  · exact GraphEdge.e0019
  · exact SmokeEdgeLabel.e0019
  apply BellmanLabeledRun.cons (e := edge0055)
  · rfl
  · rfl
  · exact GraphEdge.e0055
  · exact SmokeEdgeLabel.e0055
  apply BellmanLabeledRun.cons (e := edge0089)
  · rfl
  · rfl
  · exact GraphEdge.e0089
  · exact SmokeEdgeLabel.e0089
  apply BellmanLabeledRun.cons (e := edge0100)
  · rfl
  · rfl
  · exact GraphEdge.e0100
  · exact SmokeEdgeLabel.e0100
  exact BellmanLabeledRun.nil State.s0118

private theorem cls0027LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0027FinalState cls0027Labels cls0027Gain := by
  unfold cls0027Labels cls0027Gain rootState cls0027FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0185
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0201
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0218
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0019
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0055
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0089
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0100
  exact BellmanLabelStepRun.nil State.s0118

private def cls0027SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0027SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0185.gain + (edge0201.gain + (edge0218.gain + (edge0019.gain + (edge0055.gain + (edge0089.gain + (edge0100.gain + (0))))))))))))

private theorem cls0027SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0027FinalState cls0027SuffixLabels cls0027SuffixGain := by
  unfold cls0027SuffixLabels cls0027SuffixGain commonPrefixFinalState cls0027FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0185
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0201
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0218
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0019
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0055
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0089
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0100
  exact BellmanLabelStepRun.nil State.s0118

private def cls0027ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0027SuffixLabels

private def cls0027ComposedGain : Int :=
  commonPrefixGain + cls0027SuffixGain

private theorem cls0027ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0027FinalState cls0027ComposedLabels cls0027ComposedGain := by
  unfold cls0027ComposedLabels cls0027ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0027SuffixLabelStepRun

private theorem cls0027ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0027 <= (176 : Int) + cls0027ComposedGain := by
  unfold cls0027ComposedGain commonPrefixGain cls0027SuffixGain
  change (-288 : Int) <= -288
  decide

private theorem cls0027TrieFinal_nonneg :
    0 <= graphPotential trieNode0225State := by
  unfold trieNode0225State
  decide

private theorem cls0027TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0027 <= (176 : Int) + trieNode0225Gain := by
  unfold trieNode0225Gain trieNode0225StepGain trieNode0224Gain trieNode0224StepGain trieNode0223Gain trieNode0223StepGain trieNode0222Gain trieNode0222StepGain trieNode0217Gain trieNode0217StepGain trieNode0216Gain trieNode0216StepGain trieNode0215Gain trieNode0215StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-288 : Int) <= -288
  decide

private theorem cls0027Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0027 <= (176 : Int) + cls0027Gain := by
  unfold cls0027Gain
  change (-288 : Int) <= -288
  decide

private def cls0028Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0028Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0214.gain + (edge0007.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))))

private theorem cls0028LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0028FinalState cls0028Labels cls0028Gain := by
  unfold cls0028Labels cls0028Gain rootState cls0028FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0203)
  · rfl
  · rfl
  · exact GraphEdge.e0203
  · exact SmokeEdgeLabel.e0203
  apply BellmanLabeledRun.cons (e := edge0214)
  · rfl
  · rfl
  · exact GraphEdge.e0214
  · exact SmokeEdgeLabel.e0214
  apply BellmanLabeledRun.cons (e := edge0007)
  · rfl
  · rfl
  · exact GraphEdge.e0007
  · exact SmokeEdgeLabel.e0007
  apply BellmanLabeledRun.cons (e := edge0032)
  · rfl
  · rfl
  · exact GraphEdge.e0032
  · exact SmokeEdgeLabel.e0032
  apply BellmanLabeledRun.cons (e := edge0064)
  · rfl
  · rfl
  · exact GraphEdge.e0064
  · exact SmokeEdgeLabel.e0064
  apply BellmanLabeledRun.cons (e := edge0096)
  · rfl
  · rfl
  · exact GraphEdge.e0096
  · exact SmokeEdgeLabel.e0096
  exact BellmanLabeledRun.nil State.s0114

private theorem cls0028LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0028FinalState cls0028Labels cls0028Gain := by
  unfold cls0028Labels cls0028Gain rootState cls0028FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0214
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0028SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0028SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0214.gain + (edge0007.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))

private theorem cls0028SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0028FinalState cls0028SuffixLabels cls0028SuffixGain := by
  unfold cls0028SuffixLabels cls0028SuffixGain commonPrefixFinalState cls0028FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0214
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0028ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0028SuffixLabels

private def cls0028ComposedGain : Int :=
  commonPrefixGain + cls0028SuffixGain

private theorem cls0028ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0028FinalState cls0028ComposedLabels cls0028ComposedGain := by
  unfold cls0028ComposedLabels cls0028ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0028SuffixLabelStepRun

private theorem cls0028ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0028 <= (176 : Int) + cls0028ComposedGain := by
  unfold cls0028ComposedGain commonPrefixGain cls0028SuffixGain
  change (-436 : Int) <= -436
  decide

private theorem cls0028TrieFinal_nonneg :
    0 <= graphPotential trieNode0232State := by
  unfold trieNode0232State
  decide

private theorem cls0028TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0028 <= (176 : Int) + trieNode0232Gain := by
  unfold trieNode0232Gain trieNode0232StepGain trieNode0231Gain trieNode0231StepGain trieNode0230Gain trieNode0230StepGain trieNode0229Gain trieNode0229StepGain trieNode0228Gain trieNode0228StepGain trieNode0227Gain trieNode0227StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-436 : Int) <= -436
  decide

private theorem cls0028Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0028 <= (176 : Int) + cls0028Gain := by
  unfold cls0028Gain
  change (-436 : Int) <= -436
  decide

private def cls0029Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0029Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0215.gain + (edge0012.gain + (edge0046.gain + (edge0065.gain + (edge0099.gain + (0))))))))))))))

private theorem cls0029LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0029FinalState cls0029Labels cls0029Gain := by
  unfold cls0029Labels cls0029Gain rootState cls0029FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0203)
  · rfl
  · rfl
  · exact GraphEdge.e0203
  · exact SmokeEdgeLabel.e0203
  apply BellmanLabeledRun.cons (e := edge0215)
  · rfl
  · rfl
  · exact GraphEdge.e0215
  · exact SmokeEdgeLabel.e0215
  apply BellmanLabeledRun.cons (e := edge0012)
  · rfl
  · rfl
  · exact GraphEdge.e0012
  · exact SmokeEdgeLabel.e0012
  apply BellmanLabeledRun.cons (e := edge0046)
  · rfl
  · rfl
  · exact GraphEdge.e0046
  · exact SmokeEdgeLabel.e0046
  apply BellmanLabeledRun.cons (e := edge0065)
  · rfl
  · rfl
  · exact GraphEdge.e0065
  · exact SmokeEdgeLabel.e0065
  apply BellmanLabeledRun.cons (e := edge0099)
  · rfl
  · rfl
  · exact GraphEdge.e0099
  · exact SmokeEdgeLabel.e0099
  exact BellmanLabeledRun.nil State.s0117

private theorem cls0029LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0029FinalState cls0029Labels cls0029Gain := by
  unfold cls0029Labels cls0029Gain rootState cls0029FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0215
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0012
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0046
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0065
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0099
  exact BellmanLabelStepRun.nil State.s0117

private def cls0029SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0029SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0215.gain + (edge0012.gain + (edge0046.gain + (edge0065.gain + (edge0099.gain + (0))))))))))))

private theorem cls0029SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0029FinalState cls0029SuffixLabels cls0029SuffixGain := by
  unfold cls0029SuffixLabels cls0029SuffixGain commonPrefixFinalState cls0029FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0215
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0012
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0046
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0065
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0099
  exact BellmanLabelStepRun.nil State.s0117

private def cls0029ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0029SuffixLabels

private def cls0029ComposedGain : Int :=
  commonPrefixGain + cls0029SuffixGain

private theorem cls0029ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0029FinalState cls0029ComposedLabels cls0029ComposedGain := by
  unfold cls0029ComposedLabels cls0029ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0029SuffixLabelStepRun

private theorem cls0029ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0029 <= (176 : Int) + cls0029ComposedGain := by
  unfold cls0029ComposedGain commonPrefixGain cls0029SuffixGain
  change (-172 : Int) <= -172
  decide

private theorem cls0029TrieFinal_nonneg :
    0 <= graphPotential trieNode0237State := by
  unfold trieNode0237State
  decide

private theorem cls0029TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0029 <= (176 : Int) + trieNode0237Gain := by
  unfold trieNode0237Gain trieNode0237StepGain trieNode0236Gain trieNode0236StepGain trieNode0235Gain trieNode0235StepGain trieNode0234Gain trieNode0234StepGain trieNode0233Gain trieNode0233StepGain trieNode0227Gain trieNode0227StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-172 : Int) <= -172
  decide

private theorem cls0029Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0029 <= (176 : Int) + cls0029Gain := by
  unfold cls0029Gain
  change (-172 : Int) <= -172
  decide

private def cls0030Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0030Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0215.gain + (edge0013.gain + (edge0052.gain + (edge0082.gain + (edge0098.gain + (0))))))))))))))

private theorem cls0030LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0030FinalState cls0030Labels cls0030Gain := by
  unfold cls0030Labels cls0030Gain rootState cls0030FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0203)
  · rfl
  · rfl
  · exact GraphEdge.e0203
  · exact SmokeEdgeLabel.e0203
  apply BellmanLabeledRun.cons (e := edge0215)
  · rfl
  · rfl
  · exact GraphEdge.e0215
  · exact SmokeEdgeLabel.e0215
  apply BellmanLabeledRun.cons (e := edge0013)
  · rfl
  · rfl
  · exact GraphEdge.e0013
  · exact SmokeEdgeLabel.e0013
  apply BellmanLabeledRun.cons (e := edge0052)
  · rfl
  · rfl
  · exact GraphEdge.e0052
  · exact SmokeEdgeLabel.e0052
  apply BellmanLabeledRun.cons (e := edge0082)
  · rfl
  · rfl
  · exact GraphEdge.e0082
  · exact SmokeEdgeLabel.e0082
  apply BellmanLabeledRun.cons (e := edge0098)
  · rfl
  · rfl
  · exact GraphEdge.e0098
  · exact SmokeEdgeLabel.e0098
  exact BellmanLabeledRun.nil State.s0116

private theorem cls0030LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0030FinalState cls0030Labels cls0030Gain := by
  unfold cls0030Labels cls0030Gain rootState cls0030FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0215
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0013
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0052
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0082
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0098
  exact BellmanLabelStepRun.nil State.s0116

private def cls0030SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0030SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0203.gain + (edge0215.gain + (edge0013.gain + (edge0052.gain + (edge0082.gain + (edge0098.gain + (0))))))))))))

private theorem cls0030SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0030FinalState cls0030SuffixLabels cls0030SuffixGain := by
  unfold cls0030SuffixLabels cls0030SuffixGain commonPrefixFinalState cls0030FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0203
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0215
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0013
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0052
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0082
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0098
  exact BellmanLabelStepRun.nil State.s0116

private def cls0030ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0030SuffixLabels

private def cls0030ComposedGain : Int :=
  commonPrefixGain + cls0030SuffixGain

private theorem cls0030ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0030FinalState cls0030ComposedLabels cls0030ComposedGain := by
  unfold cls0030ComposedLabels cls0030ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0030SuffixLabelStepRun

private theorem cls0030ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0030 <= (176 : Int) + cls0030ComposedGain := by
  unfold cls0030ComposedGain commonPrefixGain cls0030SuffixGain
  change (-420 : Int) <= -420
  decide

private theorem cls0030TrieFinal_nonneg :
    0 <= graphPotential trieNode0241State := by
  unfold trieNode0241State
  decide

private theorem cls0030TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0030 <= (176 : Int) + trieNode0241Gain := by
  unfold trieNode0241Gain trieNode0241StepGain trieNode0240Gain trieNode0240StepGain trieNode0239Gain trieNode0239StepGain trieNode0238Gain trieNode0238StepGain trieNode0233Gain trieNode0233StepGain trieNode0227Gain trieNode0227StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-420 : Int) <= -420
  decide

private theorem cls0030Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0030 <= (176 : Int) + cls0030Gain := by
  unfold cls0030Gain
  change (-420 : Int) <= -420
  decide

private def cls0031Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0031Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0224.gain + (edge0007.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))))

private theorem cls0031LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0031FinalState cls0031Labels cls0031Gain := by
  unfold cls0031Labels cls0031Gain rootState cls0031FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0204)
  · rfl
  · rfl
  · exact GraphEdge.e0204
  · exact SmokeEdgeLabel.e0204
  apply BellmanLabeledRun.cons (e := edge0224)
  · rfl
  · rfl
  · exact GraphEdge.e0224
  · exact SmokeEdgeLabel.e0224
  apply BellmanLabeledRun.cons (e := edge0007)
  · rfl
  · rfl
  · exact GraphEdge.e0007
  · exact SmokeEdgeLabel.e0007
  apply BellmanLabeledRun.cons (e := edge0032)
  · rfl
  · rfl
  · exact GraphEdge.e0032
  · exact SmokeEdgeLabel.e0032
  apply BellmanLabeledRun.cons (e := edge0064)
  · rfl
  · rfl
  · exact GraphEdge.e0064
  · exact SmokeEdgeLabel.e0064
  apply BellmanLabeledRun.cons (e := edge0096)
  · rfl
  · rfl
  · exact GraphEdge.e0096
  · exact SmokeEdgeLabel.e0096
  exact BellmanLabeledRun.nil State.s0114

private theorem cls0031LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0031FinalState cls0031Labels cls0031Gain := by
  unfold cls0031Labels cls0031Gain rootState cls0031FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0224
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0031SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0031SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0224.gain + (edge0007.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))

private theorem cls0031SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0031FinalState cls0031SuffixLabels cls0031SuffixGain := by
  unfold cls0031SuffixLabels cls0031SuffixGain commonPrefixFinalState cls0031FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0224
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0007
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0031ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0031SuffixLabels

private def cls0031ComposedGain : Int :=
  commonPrefixGain + cls0031SuffixGain

private theorem cls0031ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0031FinalState cls0031ComposedLabels cls0031ComposedGain := by
  unfold cls0031ComposedLabels cls0031ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0031SuffixLabelStepRun

private theorem cls0031ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0031 <= (176 : Int) + cls0031ComposedGain := by
  unfold cls0031ComposedGain commonPrefixGain cls0031SuffixGain
  change (-436 : Int) <= -436
  decide

private theorem cls0031TrieFinal_nonneg :
    0 <= graphPotential trieNode0247State := by
  unfold trieNode0247State
  decide

private theorem cls0031TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0031 <= (176 : Int) + trieNode0247Gain := by
  unfold trieNode0247Gain trieNode0247StepGain trieNode0246Gain trieNode0246StepGain trieNode0245Gain trieNode0245StepGain trieNode0244Gain trieNode0244StepGain trieNode0243Gain trieNode0243StepGain trieNode0242Gain trieNode0242StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-436 : Int) <= -436
  decide

private theorem cls0031Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0031 <= (176 : Int) + cls0031Gain := by
  unfold cls0031Gain
  change (-436 : Int) <= -436
  decide

private def cls0032Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0032Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0225.gain + (edge0016.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))))

private theorem cls0032LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0032FinalState cls0032Labels cls0032Gain := by
  unfold cls0032Labels cls0032Gain rootState cls0032FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0204)
  · rfl
  · rfl
  · exact GraphEdge.e0204
  · exact SmokeEdgeLabel.e0204
  apply BellmanLabeledRun.cons (e := edge0225)
  · rfl
  · rfl
  · exact GraphEdge.e0225
  · exact SmokeEdgeLabel.e0225
  apply BellmanLabeledRun.cons (e := edge0016)
  · rfl
  · rfl
  · exact GraphEdge.e0016
  · exact SmokeEdgeLabel.e0016
  apply BellmanLabeledRun.cons (e := edge0032)
  · rfl
  · rfl
  · exact GraphEdge.e0032
  · exact SmokeEdgeLabel.e0032
  apply BellmanLabeledRun.cons (e := edge0064)
  · rfl
  · rfl
  · exact GraphEdge.e0064
  · exact SmokeEdgeLabel.e0064
  apply BellmanLabeledRun.cons (e := edge0096)
  · rfl
  · rfl
  · exact GraphEdge.e0096
  · exact SmokeEdgeLabel.e0096
  exact BellmanLabeledRun.nil State.s0114

private theorem cls0032LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0032FinalState cls0032Labels cls0032Gain := by
  unfold cls0032Labels cls0032Gain rootState cls0032FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0225
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0016
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0032SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0003
  , SmokeLabel.l0001
  , SmokeLabel.l0009]

private def cls0032SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0225.gain + (edge0016.gain + (edge0032.gain + (edge0064.gain + (edge0096.gain + (0))))))))))))

private theorem cls0032SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0032FinalState cls0032SuffixLabels cls0032SuffixGain := by
  unfold cls0032SuffixLabels cls0032SuffixGain commonPrefixFinalState cls0032FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0225
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0016
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0032
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0064
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0096
  exact BellmanLabelStepRun.nil State.s0114

private def cls0032ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0032SuffixLabels

private def cls0032ComposedGain : Int :=
  commonPrefixGain + cls0032SuffixGain

private theorem cls0032ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0032FinalState cls0032ComposedLabels cls0032ComposedGain := by
  unfold cls0032ComposedLabels cls0032ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0032SuffixLabelStepRun

private theorem cls0032ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0032 <= (176 : Int) + cls0032ComposedGain := by
  unfold cls0032ComposedGain commonPrefixGain cls0032SuffixGain
  change (-436 : Int) <= -436
  decide

private theorem cls0032TrieFinal_nonneg :
    0 <= graphPotential trieNode0252State := by
  unfold trieNode0252State
  decide

private theorem cls0032TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0032 <= (176 : Int) + trieNode0252Gain := by
  unfold trieNode0252Gain trieNode0252StepGain trieNode0251Gain trieNode0251StepGain trieNode0250Gain trieNode0250StepGain trieNode0249Gain trieNode0249StepGain trieNode0248Gain trieNode0248StepGain trieNode0242Gain trieNode0242StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-436 : Int) <= -436
  decide

private theorem cls0032Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0032 <= (176 : Int) + cls0032Gain := by
  unfold cls0032Gain
  change (-436 : Int) <= -436
  decide

private def cls0033Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0033Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0225.gain + (edge0017.gain + (edge0054.gain + (edge0087.gain + (edge0095.gain + (0))))))))))))))

private theorem cls0033LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0033FinalState cls0033Labels cls0033Gain := by
  unfold cls0033Labels cls0033Gain rootState cls0033FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0204)
  · rfl
  · rfl
  · exact GraphEdge.e0204
  · exact SmokeEdgeLabel.e0204
  apply BellmanLabeledRun.cons (e := edge0225)
  · rfl
  · rfl
  · exact GraphEdge.e0225
  · exact SmokeEdgeLabel.e0225
  apply BellmanLabeledRun.cons (e := edge0017)
  · rfl
  · rfl
  · exact GraphEdge.e0017
  · exact SmokeEdgeLabel.e0017
  apply BellmanLabeledRun.cons (e := edge0054)
  · rfl
  · rfl
  · exact GraphEdge.e0054
  · exact SmokeEdgeLabel.e0054
  apply BellmanLabeledRun.cons (e := edge0087)
  · rfl
  · rfl
  · exact GraphEdge.e0087
  · exact SmokeEdgeLabel.e0087
  apply BellmanLabeledRun.cons (e := edge0095)
  · rfl
  · rfl
  · exact GraphEdge.e0095
  · exact SmokeEdgeLabel.e0095
  exact BellmanLabeledRun.nil State.s0113

private theorem cls0033LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0033FinalState cls0033Labels cls0033Gain := by
  unfold cls0033Labels cls0033Gain rootState cls0033FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0225
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0017
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0054
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0087
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0095
  exact BellmanLabelStepRun.nil State.s0113

private def cls0033SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0013
  , SmokeLabel.l0012
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0033SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0204.gain + (edge0225.gain + (edge0017.gain + (edge0054.gain + (edge0087.gain + (edge0095.gain + (0))))))))))))

private theorem cls0033SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0033FinalState cls0033SuffixLabels cls0033SuffixGain := by
  unfold cls0033SuffixLabels cls0033SuffixGain commonPrefixFinalState cls0033FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0204
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0225
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0017
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0054
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0087
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0095
  exact BellmanLabelStepRun.nil State.s0113

private def cls0033ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0033SuffixLabels

private def cls0033ComposedGain : Int :=
  commonPrefixGain + cls0033SuffixGain

private theorem cls0033ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0033FinalState cls0033ComposedLabels cls0033ComposedGain := by
  unfold cls0033ComposedLabels cls0033ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0033SuffixLabelStepRun

private theorem cls0033ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0033 <= (176 : Int) + cls0033ComposedGain := by
  unfold cls0033ComposedGain commonPrefixGain cls0033SuffixGain
  change (-216 : Int) <= -216
  decide

private theorem cls0033TrieFinal_nonneg :
    0 <= graphPotential trieNode0256State := by
  unfold trieNode0256State
  decide

private theorem cls0033TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0033 <= (176 : Int) + trieNode0256Gain := by
  unfold trieNode0256Gain trieNode0256StepGain trieNode0255Gain trieNode0255StepGain trieNode0254Gain trieNode0254StepGain trieNode0253Gain trieNode0253StepGain trieNode0248Gain trieNode0248StepGain trieNode0242Gain trieNode0242StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-216 : Int) <= -216
  decide

private theorem cls0033Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0033 <= (176 : Int) + cls0033Gain := by
  unfold cls0033Gain
  change (-216 : Int) <= -216
  decide

private def cls0034Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0034Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0030.gain + (edge0051.gain + (edge0081.gain + (edge0097.gain + (0))))))))))))))

private theorem cls0034LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0034FinalState cls0034Labels cls0034Gain := by
  unfold cls0034Labels cls0034Gain rootState cls0034FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0205)
  · rfl
  · rfl
  · exact GraphEdge.e0205
  · exact SmokeEdgeLabel.e0205
  apply BellmanLabeledRun.cons (e := edge0228)
  · rfl
  · rfl
  · exact GraphEdge.e0228
  · exact SmokeEdgeLabel.e0228
  apply BellmanLabeledRun.cons (e := edge0030)
  · rfl
  · rfl
  · exact GraphEdge.e0030
  · exact SmokeEdgeLabel.e0030
  apply BellmanLabeledRun.cons (e := edge0051)
  · rfl
  · rfl
  · exact GraphEdge.e0051
  · exact SmokeEdgeLabel.e0051
  apply BellmanLabeledRun.cons (e := edge0081)
  · rfl
  · rfl
  · exact GraphEdge.e0081
  · exact SmokeEdgeLabel.e0081
  apply BellmanLabeledRun.cons (e := edge0097)
  · rfl
  · rfl
  · exact GraphEdge.e0097
  · exact SmokeEdgeLabel.e0097
  exact BellmanLabeledRun.nil State.s0115

private theorem cls0034LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0034FinalState cls0034Labels cls0034Gain := by
  unfold cls0034Labels cls0034Gain rootState cls0034FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0030
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0051
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0034SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0011
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0034SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0030.gain + (edge0051.gain + (edge0081.gain + (edge0097.gain + (0))))))))))))

private theorem cls0034SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0034FinalState cls0034SuffixLabels cls0034SuffixGain := by
  unfold cls0034SuffixLabels cls0034SuffixGain commonPrefixFinalState cls0034FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0030
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0051
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0034ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0034SuffixLabels

private def cls0034ComposedGain : Int :=
  commonPrefixGain + cls0034SuffixGain

private theorem cls0034ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0034FinalState cls0034ComposedLabels cls0034ComposedGain := by
  unfold cls0034ComposedLabels cls0034ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0034SuffixLabelStepRun

private theorem cls0034ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0034 <= (176 : Int) + cls0034ComposedGain := by
  unfold cls0034ComposedGain commonPrefixGain cls0034SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0034TrieFinal_nonneg :
    0 <= graphPotential trieNode0262State := by
  unfold trieNode0262State
  decide

private theorem cls0034TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0034 <= (176 : Int) + trieNode0262Gain := by
  unfold trieNode0262Gain trieNode0262StepGain trieNode0261Gain trieNode0261StepGain trieNode0260Gain trieNode0260StepGain trieNode0259Gain trieNode0259StepGain trieNode0258Gain trieNode0258StepGain trieNode0257Gain trieNode0257StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0034Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0034 <= (176 : Int) + cls0034Gain := by
  unfold cls0034Gain
  change (-200 : Int) <= -200
  decide

private def cls0035Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0035Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0031.gain + (edge0060.gain + (edge0081.gain + (edge0097.gain + (0))))))))))))))

private theorem cls0035LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0035FinalState cls0035Labels cls0035Gain := by
  unfold cls0035Labels cls0035Gain rootState cls0035FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0205)
  · rfl
  · rfl
  · exact GraphEdge.e0205
  · exact SmokeEdgeLabel.e0205
  apply BellmanLabeledRun.cons (e := edge0228)
  · rfl
  · rfl
  · exact GraphEdge.e0228
  · exact SmokeEdgeLabel.e0228
  apply BellmanLabeledRun.cons (e := edge0031)
  · rfl
  · rfl
  · exact GraphEdge.e0031
  · exact SmokeEdgeLabel.e0031
  apply BellmanLabeledRun.cons (e := edge0060)
  · rfl
  · rfl
  · exact GraphEdge.e0060
  · exact SmokeEdgeLabel.e0060
  apply BellmanLabeledRun.cons (e := edge0081)
  · rfl
  · rfl
  · exact GraphEdge.e0081
  · exact SmokeEdgeLabel.e0081
  apply BellmanLabeledRun.cons (e := edge0097)
  · rfl
  · rfl
  · exact GraphEdge.e0097
  · exact SmokeEdgeLabel.e0097
  exact BellmanLabeledRun.nil State.s0115

private theorem cls0035LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0035FinalState cls0035Labels cls0035Gain := by
  unfold cls0035Labels cls0035Gain rootState cls0035FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0031
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0060
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0035SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0011
  , SmokeLabel.l0013
  , SmokeLabel.l0009]

private def cls0035SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0031.gain + (edge0060.gain + (edge0081.gain + (edge0097.gain + (0))))))))))))

private theorem cls0035SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0035FinalState cls0035SuffixLabels cls0035SuffixGain := by
  unfold cls0035SuffixLabels cls0035SuffixGain commonPrefixFinalState cls0035FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0031
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0060
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0081
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0035ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0035SuffixLabels

private def cls0035ComposedGain : Int :=
  commonPrefixGain + cls0035SuffixGain

private theorem cls0035ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0035FinalState cls0035ComposedLabels cls0035ComposedGain := by
  unfold cls0035ComposedLabels cls0035ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0035SuffixLabelStepRun

private theorem cls0035ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0035 <= (176 : Int) + cls0035ComposedGain := by
  unfold cls0035ComposedGain commonPrefixGain cls0035SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0035TrieFinal_nonneg :
    0 <= graphPotential trieNode0266State := by
  unfold trieNode0266State
  decide

private theorem cls0035TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0035 <= (176 : Int) + trieNode0266Gain := by
  unfold trieNode0266Gain trieNode0266StepGain trieNode0265Gain trieNode0265StepGain trieNode0264Gain trieNode0264StepGain trieNode0263Gain trieNode0263StepGain trieNode0258Gain trieNode0258StepGain trieNode0257Gain trieNode0257StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0035Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0035 <= (176 : Int) + cls0035Gain := by
  unfold cls0035Gain
  change (-200 : Int) <= -200
  decide

private def cls0036Labels : List SmokeLabel :=
  [SmokeLabel.l0008
  , SmokeLabel.l0010
  , SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0036Gain : Int :=
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0031.gain + (edge0061.gain + (edge0088.gain + (edge0097.gain + (0))))))))))))))

private theorem cls0036LabeledRun :
    BellmanLabeledRun GraphEdge SmokeEdgeLabel
      rootState cls0036FinalState cls0036Labels cls0036Gain := by
  unfold cls0036Labels cls0036Gain rootState cls0036FinalState
  apply BellmanLabeledRun.cons (e := edge0000)
  · rfl
  · rfl
  · exact GraphEdge.e0000
  · exact SmokeEdgeLabel.e0000
  apply BellmanLabeledRun.cons (e := edge0124)
  · rfl
  · rfl
  · exact GraphEdge.e0124
  · exact SmokeEdgeLabel.e0124
  apply BellmanLabeledRun.cons (e := edge0127)
  · rfl
  · rfl
  · exact GraphEdge.e0127
  · exact SmokeEdgeLabel.e0127
  apply BellmanLabeledRun.cons (e := edge0134)
  · rfl
  · rfl
  · exact GraphEdge.e0134
  · exact SmokeEdgeLabel.e0134
  apply BellmanLabeledRun.cons (e := edge0144)
  · rfl
  · rfl
  · exact GraphEdge.e0144
  · exact SmokeEdgeLabel.e0144
  apply BellmanLabeledRun.cons (e := edge0156)
  · rfl
  · rfl
  · exact GraphEdge.e0156
  · exact SmokeEdgeLabel.e0156
  apply BellmanLabeledRun.cons (e := edge0170)
  · rfl
  · rfl
  · exact GraphEdge.e0170
  · exact SmokeEdgeLabel.e0170
  apply BellmanLabeledRun.cons (e := edge0186)
  · rfl
  · rfl
  · exact GraphEdge.e0186
  · exact SmokeEdgeLabel.e0186
  apply BellmanLabeledRun.cons (e := edge0205)
  · rfl
  · rfl
  · exact GraphEdge.e0205
  · exact SmokeEdgeLabel.e0205
  apply BellmanLabeledRun.cons (e := edge0228)
  · rfl
  · rfl
  · exact GraphEdge.e0228
  · exact SmokeEdgeLabel.e0228
  apply BellmanLabeledRun.cons (e := edge0031)
  · rfl
  · rfl
  · exact GraphEdge.e0031
  · exact SmokeEdgeLabel.e0031
  apply BellmanLabeledRun.cons (e := edge0061)
  · rfl
  · rfl
  · exact GraphEdge.e0061
  · exact SmokeEdgeLabel.e0061
  apply BellmanLabeledRun.cons (e := edge0088)
  · rfl
  · rfl
  · exact GraphEdge.e0088
  · exact SmokeEdgeLabel.e0088
  apply BellmanLabeledRun.cons (e := edge0097)
  · rfl
  · rfl
  · exact GraphEdge.e0097
  · exact SmokeEdgeLabel.e0097
  exact BellmanLabeledRun.nil State.s0115

private theorem cls0036LabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0036FinalState cls0036Labels cls0036Gain := by
  unfold cls0036Labels cls0036Gain rootState cls0036FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0000
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0124
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0031
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0061
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0088
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0036SuffixLabels : List SmokeLabel :=
  [SmokeLabel.l0002
  , SmokeLabel.l0006
  , SmokeLabel.l0004
  , SmokeLabel.l0007
  , SmokeLabel.l0000
  , SmokeLabel.l0005
  , SmokeLabel.l0001
  , SmokeLabel.l0003
  , SmokeLabel.l0012
  , SmokeLabel.l0013
  , SmokeLabel.l0011
  , SmokeLabel.l0009]

private def cls0036SuffixGain : Int :=
  edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0156.gain + (edge0170.gain + (edge0186.gain + (edge0205.gain + (edge0228.gain + (edge0031.gain + (edge0061.gain + (edge0088.gain + (edge0097.gain + (0))))))))))))

private theorem cls0036SuffixLabelStepRun :
    BellmanLabelStepRun SmokeStep
      commonPrefixFinalState cls0036FinalState cls0036SuffixLabels cls0036SuffixGain := by
  unfold cls0036SuffixLabels cls0036SuffixGain commonPrefixFinalState cls0036FinalState
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0127
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0134
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0144
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0156
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0170
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0186
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0205
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0228
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0031
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0061
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0088
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0097
  exact BellmanLabelStepRun.nil State.s0115

private def cls0036ComposedLabels : List SmokeLabel :=
  commonPrefixLabels ++ cls0036SuffixLabels

private def cls0036ComposedGain : Int :=
  commonPrefixGain + cls0036SuffixGain

private theorem cls0036ComposedLabelStepRun :
    BellmanLabelStepRun SmokeStep
      rootState cls0036FinalState cls0036ComposedLabels cls0036ComposedGain := by
  unfold cls0036ComposedLabels cls0036ComposedGain
  exact BellmanLabelStepRun.append commonPrefixLabelStepRun cls0036SuffixLabelStepRun

private theorem cls0036ComposedMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0036 <= (176 : Int) + cls0036ComposedGain := by
  unfold cls0036ComposedGain commonPrefixGain cls0036SuffixGain
  change (-200 : Int) <= -200
  decide

private theorem cls0036TrieFinal_nonneg :
    0 <= graphPotential trieNode0269State := by
  unfold trieNode0269State
  decide

private theorem cls0036TrieMargin_bound_gain :
    smokeScaledMargin SmokeObj.cls0036 <= (176 : Int) + trieNode0269Gain := by
  unfold trieNode0269Gain trieNode0269StepGain trieNode0268Gain trieNode0268StepGain trieNode0267Gain trieNode0267StepGain trieNode0263Gain trieNode0263StepGain trieNode0258Gain trieNode0258StepGain trieNode0257Gain trieNode0257StepGain trieNode0226Gain trieNode0226StepGain trieNode0214Gain trieNode0214StepGain trieNode0201Gain trieNode0201StepGain trieNode0187Gain trieNode0187StepGain trieNode0172Gain trieNode0172StepGain trieNode0160Gain trieNode0160StepGain trieNode0002Gain trieNode0002StepGain trieNode0001Gain trieNode0001StepGain trieNode0000Gain
  change (-200 : Int) <= -200
  decide

private theorem cls0036Margin_bound_gain :
    smokeScaledMargin SmokeObj.cls0036 <= (176 : Int) + cls0036Gain := by
  unfold cls0036Gain
  change (-200 : Int) <= -200
  decide

private structure SmokeLabeledTrace where
  finish : State
  labels : List SmokeLabel
  edges : List (BellmanEdge State)
  margin : Int

private def smokeLabeledTraceScaledMargin (trace : SmokeLabeledTrace) : Int :=
  trace.margin

private def smokeLabeledTraceAccepts (trace : SmokeLabeledTrace) : Prop :=
  BellmanLabeledGraphPath GraphEdge SmokeEdgeLabel
    rootState trace.finish trace.labels trace.edges
    /\ 0 <= graphPotential trace.finish
    /\ trace.margin <= (176 : Int) + bellmanGainSum trace.edges

private theorem smokeLabeledTraceLanguageTraceBound :
    BellmanLabeledGraphLanguageTraceBound
      graphPotential GraphEdge SmokeEdgeLabel rootState
      (176 : Int) smokeLabeledTraceScaledMargin
      (fun trace => trace.labels) smokeLabeledTraceAccepts := by
  intro trace htrace
  rcases htrace with ⟨hpath, hfinish, hmargin⟩
  exact ⟨trace.finish, trace.edges, hpath, hfinish, hmargin⟩

theorem graphSmoke_labeled_trace_language_scaled_margin_nonpos :
    forall trace : SmokeLabeledTrace,
      smokeLabeledTraceAccepts trace ->
        smokeLabeledTraceScaledMargin trace <= 0 :=
  scaledMargin_nonpos_of_bellmanLabeledGraphLanguageTraceBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (EdgeLabel := SmokeEdgeLabel)
    (start := rootState)
    (const := 176)
    (wordOf := fun trace => trace.labels)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeLabeledTraceLanguageTraceBound

private structure SmokeLabeledRunTrace where
  finish : State
  labels : List SmokeLabel
  gain : Int
  margin : Int

private def smokeLabeledRunTraceScaledMargin (trace : SmokeLabeledRunTrace) : Int :=
  trace.margin

private def smokeLabeledRunTraceAccepts (trace : SmokeLabeledRunTrace) : Prop :=
  BellmanLabeledRun GraphEdge SmokeEdgeLabel
    rootState trace.finish trace.labels trace.gain
    /\ 0 <= graphPotential trace.finish
    /\ trace.margin <= (176 : Int) + trace.gain

private theorem smokeLabeledRunLanguageBound :
    BellmanLabeledRunLanguageBound
      graphPotential GraphEdge SmokeEdgeLabel rootState
      (176 : Int) smokeLabeledRunTraceScaledMargin
      (fun trace => trace.labels) smokeLabeledRunTraceAccepts := by
  intro trace htrace
  rcases htrace with ⟨hrun, hfinish, hmargin⟩
  exact ⟨trace.finish, trace.gain, hrun, hfinish, hmargin⟩

theorem graphSmoke_labeled_run_language_scaled_margin_nonpos :
    forall trace : SmokeLabeledRunTrace,
      smokeLabeledRunTraceAccepts trace ->
        smokeLabeledRunTraceScaledMargin trace <= 0 :=
  scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (EdgeLabel := SmokeEdgeLabel)
    (start := rootState)
    (const := 176)
    (wordOf := fun trace => trace.labels)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeLabeledRunLanguageBound

private structure SmokeLabelStepTrace where
  finish : State
  labels : List SmokeLabel
  gain : Int
  margin : Int

private def smokeLabelStepTraceScaledMargin (trace : SmokeLabelStepTrace) : Int :=
  trace.margin

private def smokeLabelStepTraceAccepts (trace : SmokeLabelStepTrace) : Prop :=
  BellmanLabelStepRun SmokeStep
    rootState trace.finish trace.labels trace.gain
    /\ 0 <= graphPotential trace.finish
    /\ trace.margin <= (176 : Int) + trace.gain

private theorem smokeLabelStepTraceLanguageBound :
    BellmanLabelStepRunLanguageBound
      graphPotential SmokeStep rootState
      (176 : Int) smokeLabelStepTraceScaledMargin
      (fun trace => trace.labels) smokeLabelStepTraceAccepts := by
  intro trace htrace
  rcases htrace with ⟨hrun, hfinish, hmargin⟩
  exact ⟨trace.finish, trace.gain, hrun, hfinish, hmargin⟩

theorem graphSmoke_label_step_trace_language_scaled_margin_nonpos :
    forall trace : SmokeLabelStepTrace,
      smokeLabelStepTraceAccepts trace ->
        smokeLabelStepTraceScaledMargin trace <= 0 :=
  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    (V := graphPotential)
    (Step := SmokeStep)
    (start := rootState)
    (const := 176)
    (wordOf := fun trace => trace.labels)
    (fun _ _ _ _ h => SmokeStep.valid h)
    root_bound
    smokeLabelStepTraceLanguageBound

private def smokeObjLabels : SmokeObj -> List SmokeLabel
  | SmokeObj.cls0000 => cls0000Labels
  | SmokeObj.cls0001 => cls0001Labels
  | SmokeObj.cls0002 => cls0002Labels
  | SmokeObj.cls0003 => cls0003Labels
  | SmokeObj.cls0004 => cls0004Labels
  | SmokeObj.cls0005 => cls0005Labels
  | SmokeObj.cls0006 => cls0006Labels
  | SmokeObj.cls0007 => cls0007Labels
  | SmokeObj.cls0008 => cls0008Labels
  | SmokeObj.cls0009 => cls0009Labels
  | SmokeObj.cls0010 => cls0010Labels
  | SmokeObj.cls0011 => cls0011Labels
  | SmokeObj.cls0012 => cls0012Labels
  | SmokeObj.cls0013 => cls0013Labels
  | SmokeObj.cls0014 => cls0014Labels
  | SmokeObj.cls0015 => cls0015Labels
  | SmokeObj.cls0016 => cls0016Labels
  | SmokeObj.cls0017 => cls0017Labels
  | SmokeObj.cls0018 => cls0018Labels
  | SmokeObj.cls0019 => cls0019Labels
  | SmokeObj.cls0020 => cls0020Labels
  | SmokeObj.cls0021 => cls0021Labels
  | SmokeObj.cls0022 => cls0022Labels
  | SmokeObj.cls0023 => cls0023Labels
  | SmokeObj.cls0024 => cls0024Labels
  | SmokeObj.cls0025 => cls0025Labels
  | SmokeObj.cls0026 => cls0026Labels
  | SmokeObj.cls0027 => cls0027Labels
  | SmokeObj.cls0028 => cls0028Labels
  | SmokeObj.cls0029 => cls0029Labels
  | SmokeObj.cls0030 => cls0030Labels
  | SmokeObj.cls0031 => cls0031Labels
  | SmokeObj.cls0032 => cls0032Labels
  | SmokeObj.cls0033 => cls0033Labels
  | SmokeObj.cls0034 => cls0034Labels
  | SmokeObj.cls0035 => cls0035Labels
  | SmokeObj.cls0036 => cls0036Labels

private def smokeObjComposedLabels : SmokeObj -> List SmokeLabel
  | SmokeObj.cls0000 => cls0000ComposedLabels
  | SmokeObj.cls0001 => cls0001ComposedLabels
  | SmokeObj.cls0002 => cls0002ComposedLabels
  | SmokeObj.cls0003 => cls0003ComposedLabels
  | SmokeObj.cls0004 => cls0004ComposedLabels
  | SmokeObj.cls0005 => cls0005ComposedLabels
  | SmokeObj.cls0006 => cls0006ComposedLabels
  | SmokeObj.cls0007 => cls0007ComposedLabels
  | SmokeObj.cls0008 => cls0008ComposedLabels
  | SmokeObj.cls0009 => cls0009ComposedLabels
  | SmokeObj.cls0010 => cls0010ComposedLabels
  | SmokeObj.cls0011 => cls0011ComposedLabels
  | SmokeObj.cls0012 => cls0012ComposedLabels
  | SmokeObj.cls0013 => cls0013ComposedLabels
  | SmokeObj.cls0014 => cls0014ComposedLabels
  | SmokeObj.cls0015 => cls0015ComposedLabels
  | SmokeObj.cls0016 => cls0016ComposedLabels
  | SmokeObj.cls0017 => cls0017ComposedLabels
  | SmokeObj.cls0018 => cls0018ComposedLabels
  | SmokeObj.cls0019 => cls0019ComposedLabels
  | SmokeObj.cls0020 => cls0020ComposedLabels
  | SmokeObj.cls0021 => cls0021ComposedLabels
  | SmokeObj.cls0022 => cls0022ComposedLabels
  | SmokeObj.cls0023 => cls0023ComposedLabels
  | SmokeObj.cls0024 => cls0024ComposedLabels
  | SmokeObj.cls0025 => cls0025ComposedLabels
  | SmokeObj.cls0026 => cls0026ComposedLabels
  | SmokeObj.cls0027 => cls0027ComposedLabels
  | SmokeObj.cls0028 => cls0028ComposedLabels
  | SmokeObj.cls0029 => cls0029ComposedLabels
  | SmokeObj.cls0030 => cls0030ComposedLabels
  | SmokeObj.cls0031 => cls0031ComposedLabels
  | SmokeObj.cls0032 => cls0032ComposedLabels
  | SmokeObj.cls0033 => cls0033ComposedLabels
  | SmokeObj.cls0034 => cls0034ComposedLabels
  | SmokeObj.cls0035 => cls0035ComposedLabels
  | SmokeObj.cls0036 => cls0036ComposedLabels

private def smokeObjTrieLabels : SmokeObj -> List SmokeLabel
  | SmokeObj.cls0000 => trieNode0014Labels
  | SmokeObj.cls0001 => trieNode0024Labels
  | SmokeObj.cls0002 => trieNode0035Labels
  | SmokeObj.cls0003 => trieNode0044Labels
  | SmokeObj.cls0004 => trieNode0054Labels
  | SmokeObj.cls0005 => trieNode0063Labels
  | SmokeObj.cls0006 => trieNode0071Labels
  | SmokeObj.cls0007 => trieNode0078Labels
  | SmokeObj.cls0008 => trieNode0084Labels
  | SmokeObj.cls0009 => trieNode0089Labels
  | SmokeObj.cls0010 => trieNode0093Labels
  | SmokeObj.cls0011 => trieNode0105Labels
  | SmokeObj.cls0012 => trieNode0115Labels
  | SmokeObj.cls0013 => trieNode0126Labels
  | SmokeObj.cls0014 => trieNode0136Labels
  | SmokeObj.cls0015 => trieNode0140Labels
  | SmokeObj.cls0016 => trieNode0151Labels
  | SmokeObj.cls0017 => trieNode0156Labels
  | SmokeObj.cls0018 => trieNode0159Labels
  | SmokeObj.cls0019 => trieNode0171Labels
  | SmokeObj.cls0020 => trieNode0182Labels
  | SmokeObj.cls0021 => trieNode0186Labels
  | SmokeObj.cls0022 => trieNode0196Labels
  | SmokeObj.cls0023 => trieNode0200Labels
  | SmokeObj.cls0024 => trieNode0209Labels
  | SmokeObj.cls0025 => trieNode0213Labels
  | SmokeObj.cls0026 => trieNode0221Labels
  | SmokeObj.cls0027 => trieNode0225Labels
  | SmokeObj.cls0028 => trieNode0232Labels
  | SmokeObj.cls0029 => trieNode0237Labels
  | SmokeObj.cls0030 => trieNode0241Labels
  | SmokeObj.cls0031 => trieNode0247Labels
  | SmokeObj.cls0032 => trieNode0252Labels
  | SmokeObj.cls0033 => trieNode0256Labels
  | SmokeObj.cls0034 => trieNode0262Labels
  | SmokeObj.cls0035 => trieNode0266Labels
  | SmokeObj.cls0036 => trieNode0269Labels

private theorem smokeObservedLabeledRunLanguageBound :
    BellmanLabeledRunLanguageBound
      graphPotential GraphEdge SmokeEdgeLabel rootState
      (176 : Int) smokeScaledMargin smokeObjLabels smokeAccepts := by
  intro obj _hobj
  cases obj
  · exact ⟨cls0000FinalState, cls0000Gain,
      cls0000LabeledRun, cls0000Final_nonneg,
      cls0000Margin_bound_gain⟩
  · exact ⟨cls0001FinalState, cls0001Gain,
      cls0001LabeledRun, cls0001Final_nonneg,
      cls0001Margin_bound_gain⟩
  · exact ⟨cls0002FinalState, cls0002Gain,
      cls0002LabeledRun, cls0002Final_nonneg,
      cls0002Margin_bound_gain⟩
  · exact ⟨cls0003FinalState, cls0003Gain,
      cls0003LabeledRun, cls0003Final_nonneg,
      cls0003Margin_bound_gain⟩
  · exact ⟨cls0004FinalState, cls0004Gain,
      cls0004LabeledRun, cls0004Final_nonneg,
      cls0004Margin_bound_gain⟩
  · exact ⟨cls0005FinalState, cls0005Gain,
      cls0005LabeledRun, cls0005Final_nonneg,
      cls0005Margin_bound_gain⟩
  · exact ⟨cls0006FinalState, cls0006Gain,
      cls0006LabeledRun, cls0006Final_nonneg,
      cls0006Margin_bound_gain⟩
  · exact ⟨cls0007FinalState, cls0007Gain,
      cls0007LabeledRun, cls0007Final_nonneg,
      cls0007Margin_bound_gain⟩
  · exact ⟨cls0008FinalState, cls0008Gain,
      cls0008LabeledRun, cls0008Final_nonneg,
      cls0008Margin_bound_gain⟩
  · exact ⟨cls0009FinalState, cls0009Gain,
      cls0009LabeledRun, cls0009Final_nonneg,
      cls0009Margin_bound_gain⟩
  · exact ⟨cls0010FinalState, cls0010Gain,
      cls0010LabeledRun, cls0010Final_nonneg,
      cls0010Margin_bound_gain⟩
  · exact ⟨cls0011FinalState, cls0011Gain,
      cls0011LabeledRun, cls0011Final_nonneg,
      cls0011Margin_bound_gain⟩
  · exact ⟨cls0012FinalState, cls0012Gain,
      cls0012LabeledRun, cls0012Final_nonneg,
      cls0012Margin_bound_gain⟩
  · exact ⟨cls0013FinalState, cls0013Gain,
      cls0013LabeledRun, cls0013Final_nonneg,
      cls0013Margin_bound_gain⟩
  · exact ⟨cls0014FinalState, cls0014Gain,
      cls0014LabeledRun, cls0014Final_nonneg,
      cls0014Margin_bound_gain⟩
  · exact ⟨cls0015FinalState, cls0015Gain,
      cls0015LabeledRun, cls0015Final_nonneg,
      cls0015Margin_bound_gain⟩
  · exact ⟨cls0016FinalState, cls0016Gain,
      cls0016LabeledRun, cls0016Final_nonneg,
      cls0016Margin_bound_gain⟩
  · exact ⟨cls0017FinalState, cls0017Gain,
      cls0017LabeledRun, cls0017Final_nonneg,
      cls0017Margin_bound_gain⟩
  · exact ⟨cls0018FinalState, cls0018Gain,
      cls0018LabeledRun, cls0018Final_nonneg,
      cls0018Margin_bound_gain⟩
  · exact ⟨cls0019FinalState, cls0019Gain,
      cls0019LabeledRun, cls0019Final_nonneg,
      cls0019Margin_bound_gain⟩
  · exact ⟨cls0020FinalState, cls0020Gain,
      cls0020LabeledRun, cls0020Final_nonneg,
      cls0020Margin_bound_gain⟩
  · exact ⟨cls0021FinalState, cls0021Gain,
      cls0021LabeledRun, cls0021Final_nonneg,
      cls0021Margin_bound_gain⟩
  · exact ⟨cls0022FinalState, cls0022Gain,
      cls0022LabeledRun, cls0022Final_nonneg,
      cls0022Margin_bound_gain⟩
  · exact ⟨cls0023FinalState, cls0023Gain,
      cls0023LabeledRun, cls0023Final_nonneg,
      cls0023Margin_bound_gain⟩
  · exact ⟨cls0024FinalState, cls0024Gain,
      cls0024LabeledRun, cls0024Final_nonneg,
      cls0024Margin_bound_gain⟩
  · exact ⟨cls0025FinalState, cls0025Gain,
      cls0025LabeledRun, cls0025Final_nonneg,
      cls0025Margin_bound_gain⟩
  · exact ⟨cls0026FinalState, cls0026Gain,
      cls0026LabeledRun, cls0026Final_nonneg,
      cls0026Margin_bound_gain⟩
  · exact ⟨cls0027FinalState, cls0027Gain,
      cls0027LabeledRun, cls0027Final_nonneg,
      cls0027Margin_bound_gain⟩
  · exact ⟨cls0028FinalState, cls0028Gain,
      cls0028LabeledRun, cls0028Final_nonneg,
      cls0028Margin_bound_gain⟩
  · exact ⟨cls0029FinalState, cls0029Gain,
      cls0029LabeledRun, cls0029Final_nonneg,
      cls0029Margin_bound_gain⟩
  · exact ⟨cls0030FinalState, cls0030Gain,
      cls0030LabeledRun, cls0030Final_nonneg,
      cls0030Margin_bound_gain⟩
  · exact ⟨cls0031FinalState, cls0031Gain,
      cls0031LabeledRun, cls0031Final_nonneg,
      cls0031Margin_bound_gain⟩
  · exact ⟨cls0032FinalState, cls0032Gain,
      cls0032LabeledRun, cls0032Final_nonneg,
      cls0032Margin_bound_gain⟩
  · exact ⟨cls0033FinalState, cls0033Gain,
      cls0033LabeledRun, cls0033Final_nonneg,
      cls0033Margin_bound_gain⟩
  · exact ⟨cls0034FinalState, cls0034Gain,
      cls0034LabeledRun, cls0034Final_nonneg,
      cls0034Margin_bound_gain⟩
  · exact ⟨cls0035FinalState, cls0035Gain,
      cls0035LabeledRun, cls0035Final_nonneg,
      cls0035Margin_bound_gain⟩
  · exact ⟨cls0036FinalState, cls0036Gain,
      cls0036LabeledRun, cls0036Final_nonneg,
      cls0036Margin_bound_gain⟩

theorem graphSmoke_observed_labeled_run_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound
    (V := graphPotential)
    (GraphEdge := GraphEdge)
    (EdgeLabel := SmokeEdgeLabel)
    (start := rootState)
    (const := 176)
    (wordOf := smokeObjLabels)
    (fun _ he => GraphEdge.valid he)
    root_bound
    smokeObservedLabeledRunLanguageBound

private theorem smokeObservedLabelStepRunLanguageBound :
    BellmanLabelStepRunLanguageBound
      graphPotential SmokeStep rootState
      (176 : Int) smokeScaledMargin smokeObjLabels smokeAccepts := by
  intro obj _hobj
  cases obj
  · exact ⟨cls0000FinalState, cls0000Gain,
      cls0000LabelStepRun, cls0000Final_nonneg,
      cls0000Margin_bound_gain⟩
  · exact ⟨cls0001FinalState, cls0001Gain,
      cls0001LabelStepRun, cls0001Final_nonneg,
      cls0001Margin_bound_gain⟩
  · exact ⟨cls0002FinalState, cls0002Gain,
      cls0002LabelStepRun, cls0002Final_nonneg,
      cls0002Margin_bound_gain⟩
  · exact ⟨cls0003FinalState, cls0003Gain,
      cls0003LabelStepRun, cls0003Final_nonneg,
      cls0003Margin_bound_gain⟩
  · exact ⟨cls0004FinalState, cls0004Gain,
      cls0004LabelStepRun, cls0004Final_nonneg,
      cls0004Margin_bound_gain⟩
  · exact ⟨cls0005FinalState, cls0005Gain,
      cls0005LabelStepRun, cls0005Final_nonneg,
      cls0005Margin_bound_gain⟩
  · exact ⟨cls0006FinalState, cls0006Gain,
      cls0006LabelStepRun, cls0006Final_nonneg,
      cls0006Margin_bound_gain⟩
  · exact ⟨cls0007FinalState, cls0007Gain,
      cls0007LabelStepRun, cls0007Final_nonneg,
      cls0007Margin_bound_gain⟩
  · exact ⟨cls0008FinalState, cls0008Gain,
      cls0008LabelStepRun, cls0008Final_nonneg,
      cls0008Margin_bound_gain⟩
  · exact ⟨cls0009FinalState, cls0009Gain,
      cls0009LabelStepRun, cls0009Final_nonneg,
      cls0009Margin_bound_gain⟩
  · exact ⟨cls0010FinalState, cls0010Gain,
      cls0010LabelStepRun, cls0010Final_nonneg,
      cls0010Margin_bound_gain⟩
  · exact ⟨cls0011FinalState, cls0011Gain,
      cls0011LabelStepRun, cls0011Final_nonneg,
      cls0011Margin_bound_gain⟩
  · exact ⟨cls0012FinalState, cls0012Gain,
      cls0012LabelStepRun, cls0012Final_nonneg,
      cls0012Margin_bound_gain⟩
  · exact ⟨cls0013FinalState, cls0013Gain,
      cls0013LabelStepRun, cls0013Final_nonneg,
      cls0013Margin_bound_gain⟩
  · exact ⟨cls0014FinalState, cls0014Gain,
      cls0014LabelStepRun, cls0014Final_nonneg,
      cls0014Margin_bound_gain⟩
  · exact ⟨cls0015FinalState, cls0015Gain,
      cls0015LabelStepRun, cls0015Final_nonneg,
      cls0015Margin_bound_gain⟩
  · exact ⟨cls0016FinalState, cls0016Gain,
      cls0016LabelStepRun, cls0016Final_nonneg,
      cls0016Margin_bound_gain⟩
  · exact ⟨cls0017FinalState, cls0017Gain,
      cls0017LabelStepRun, cls0017Final_nonneg,
      cls0017Margin_bound_gain⟩
  · exact ⟨cls0018FinalState, cls0018Gain,
      cls0018LabelStepRun, cls0018Final_nonneg,
      cls0018Margin_bound_gain⟩
  · exact ⟨cls0019FinalState, cls0019Gain,
      cls0019LabelStepRun, cls0019Final_nonneg,
      cls0019Margin_bound_gain⟩
  · exact ⟨cls0020FinalState, cls0020Gain,
      cls0020LabelStepRun, cls0020Final_nonneg,
      cls0020Margin_bound_gain⟩
  · exact ⟨cls0021FinalState, cls0021Gain,
      cls0021LabelStepRun, cls0021Final_nonneg,
      cls0021Margin_bound_gain⟩
  · exact ⟨cls0022FinalState, cls0022Gain,
      cls0022LabelStepRun, cls0022Final_nonneg,
      cls0022Margin_bound_gain⟩
  · exact ⟨cls0023FinalState, cls0023Gain,
      cls0023LabelStepRun, cls0023Final_nonneg,
      cls0023Margin_bound_gain⟩
  · exact ⟨cls0024FinalState, cls0024Gain,
      cls0024LabelStepRun, cls0024Final_nonneg,
      cls0024Margin_bound_gain⟩
  · exact ⟨cls0025FinalState, cls0025Gain,
      cls0025LabelStepRun, cls0025Final_nonneg,
      cls0025Margin_bound_gain⟩
  · exact ⟨cls0026FinalState, cls0026Gain,
      cls0026LabelStepRun, cls0026Final_nonneg,
      cls0026Margin_bound_gain⟩
  · exact ⟨cls0027FinalState, cls0027Gain,
      cls0027LabelStepRun, cls0027Final_nonneg,
      cls0027Margin_bound_gain⟩
  · exact ⟨cls0028FinalState, cls0028Gain,
      cls0028LabelStepRun, cls0028Final_nonneg,
      cls0028Margin_bound_gain⟩
  · exact ⟨cls0029FinalState, cls0029Gain,
      cls0029LabelStepRun, cls0029Final_nonneg,
      cls0029Margin_bound_gain⟩
  · exact ⟨cls0030FinalState, cls0030Gain,
      cls0030LabelStepRun, cls0030Final_nonneg,
      cls0030Margin_bound_gain⟩
  · exact ⟨cls0031FinalState, cls0031Gain,
      cls0031LabelStepRun, cls0031Final_nonneg,
      cls0031Margin_bound_gain⟩
  · exact ⟨cls0032FinalState, cls0032Gain,
      cls0032LabelStepRun, cls0032Final_nonneg,
      cls0032Margin_bound_gain⟩
  · exact ⟨cls0033FinalState, cls0033Gain,
      cls0033LabelStepRun, cls0033Final_nonneg,
      cls0033Margin_bound_gain⟩
  · exact ⟨cls0034FinalState, cls0034Gain,
      cls0034LabelStepRun, cls0034Final_nonneg,
      cls0034Margin_bound_gain⟩
  · exact ⟨cls0035FinalState, cls0035Gain,
      cls0035LabelStepRun, cls0035Final_nonneg,
      cls0035Margin_bound_gain⟩
  · exact ⟨cls0036FinalState, cls0036Gain,
      cls0036LabelStepRun, cls0036Final_nonneg,
      cls0036Margin_bound_gain⟩

theorem graphSmoke_observed_label_step_run_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    (V := graphPotential)
    (Step := SmokeStep)
    (start := rootState)
    (const := 176)
    (wordOf := smokeObjLabels)
    (fun _ _ _ _ h => SmokeStep.valid h)
    root_bound
    smokeObservedLabelStepRunLanguageBound

private theorem smokeObservedComposedLabelStepRunLanguageBound :
    BellmanLabelStepRunLanguageBound
      graphPotential SmokeStep rootState
      (176 : Int) smokeScaledMargin smokeObjComposedLabels smokeAccepts := by
  intro obj _hobj
  cases obj
  · exact ⟨cls0000FinalState, cls0000ComposedGain,
      cls0000ComposedLabelStepRun, cls0000Final_nonneg,
      cls0000ComposedMargin_bound_gain⟩
  · exact ⟨cls0001FinalState, cls0001ComposedGain,
      cls0001ComposedLabelStepRun, cls0001Final_nonneg,
      cls0001ComposedMargin_bound_gain⟩
  · exact ⟨cls0002FinalState, cls0002ComposedGain,
      cls0002ComposedLabelStepRun, cls0002Final_nonneg,
      cls0002ComposedMargin_bound_gain⟩
  · exact ⟨cls0003FinalState, cls0003ComposedGain,
      cls0003ComposedLabelStepRun, cls0003Final_nonneg,
      cls0003ComposedMargin_bound_gain⟩
  · exact ⟨cls0004FinalState, cls0004ComposedGain,
      cls0004ComposedLabelStepRun, cls0004Final_nonneg,
      cls0004ComposedMargin_bound_gain⟩
  · exact ⟨cls0005FinalState, cls0005ComposedGain,
      cls0005ComposedLabelStepRun, cls0005Final_nonneg,
      cls0005ComposedMargin_bound_gain⟩
  · exact ⟨cls0006FinalState, cls0006ComposedGain,
      cls0006ComposedLabelStepRun, cls0006Final_nonneg,
      cls0006ComposedMargin_bound_gain⟩
  · exact ⟨cls0007FinalState, cls0007ComposedGain,
      cls0007ComposedLabelStepRun, cls0007Final_nonneg,
      cls0007ComposedMargin_bound_gain⟩
  · exact ⟨cls0008FinalState, cls0008ComposedGain,
      cls0008ComposedLabelStepRun, cls0008Final_nonneg,
      cls0008ComposedMargin_bound_gain⟩
  · exact ⟨cls0009FinalState, cls0009ComposedGain,
      cls0009ComposedLabelStepRun, cls0009Final_nonneg,
      cls0009ComposedMargin_bound_gain⟩
  · exact ⟨cls0010FinalState, cls0010ComposedGain,
      cls0010ComposedLabelStepRun, cls0010Final_nonneg,
      cls0010ComposedMargin_bound_gain⟩
  · exact ⟨cls0011FinalState, cls0011ComposedGain,
      cls0011ComposedLabelStepRun, cls0011Final_nonneg,
      cls0011ComposedMargin_bound_gain⟩
  · exact ⟨cls0012FinalState, cls0012ComposedGain,
      cls0012ComposedLabelStepRun, cls0012Final_nonneg,
      cls0012ComposedMargin_bound_gain⟩
  · exact ⟨cls0013FinalState, cls0013ComposedGain,
      cls0013ComposedLabelStepRun, cls0013Final_nonneg,
      cls0013ComposedMargin_bound_gain⟩
  · exact ⟨cls0014FinalState, cls0014ComposedGain,
      cls0014ComposedLabelStepRun, cls0014Final_nonneg,
      cls0014ComposedMargin_bound_gain⟩
  · exact ⟨cls0015FinalState, cls0015ComposedGain,
      cls0015ComposedLabelStepRun, cls0015Final_nonneg,
      cls0015ComposedMargin_bound_gain⟩
  · exact ⟨cls0016FinalState, cls0016ComposedGain,
      cls0016ComposedLabelStepRun, cls0016Final_nonneg,
      cls0016ComposedMargin_bound_gain⟩
  · exact ⟨cls0017FinalState, cls0017ComposedGain,
      cls0017ComposedLabelStepRun, cls0017Final_nonneg,
      cls0017ComposedMargin_bound_gain⟩
  · exact ⟨cls0018FinalState, cls0018ComposedGain,
      cls0018ComposedLabelStepRun, cls0018Final_nonneg,
      cls0018ComposedMargin_bound_gain⟩
  · exact ⟨cls0019FinalState, cls0019ComposedGain,
      cls0019ComposedLabelStepRun, cls0019Final_nonneg,
      cls0019ComposedMargin_bound_gain⟩
  · exact ⟨cls0020FinalState, cls0020ComposedGain,
      cls0020ComposedLabelStepRun, cls0020Final_nonneg,
      cls0020ComposedMargin_bound_gain⟩
  · exact ⟨cls0021FinalState, cls0021ComposedGain,
      cls0021ComposedLabelStepRun, cls0021Final_nonneg,
      cls0021ComposedMargin_bound_gain⟩
  · exact ⟨cls0022FinalState, cls0022ComposedGain,
      cls0022ComposedLabelStepRun, cls0022Final_nonneg,
      cls0022ComposedMargin_bound_gain⟩
  · exact ⟨cls0023FinalState, cls0023ComposedGain,
      cls0023ComposedLabelStepRun, cls0023Final_nonneg,
      cls0023ComposedMargin_bound_gain⟩
  · exact ⟨cls0024FinalState, cls0024ComposedGain,
      cls0024ComposedLabelStepRun, cls0024Final_nonneg,
      cls0024ComposedMargin_bound_gain⟩
  · exact ⟨cls0025FinalState, cls0025ComposedGain,
      cls0025ComposedLabelStepRun, cls0025Final_nonneg,
      cls0025ComposedMargin_bound_gain⟩
  · exact ⟨cls0026FinalState, cls0026ComposedGain,
      cls0026ComposedLabelStepRun, cls0026Final_nonneg,
      cls0026ComposedMargin_bound_gain⟩
  · exact ⟨cls0027FinalState, cls0027ComposedGain,
      cls0027ComposedLabelStepRun, cls0027Final_nonneg,
      cls0027ComposedMargin_bound_gain⟩
  · exact ⟨cls0028FinalState, cls0028ComposedGain,
      cls0028ComposedLabelStepRun, cls0028Final_nonneg,
      cls0028ComposedMargin_bound_gain⟩
  · exact ⟨cls0029FinalState, cls0029ComposedGain,
      cls0029ComposedLabelStepRun, cls0029Final_nonneg,
      cls0029ComposedMargin_bound_gain⟩
  · exact ⟨cls0030FinalState, cls0030ComposedGain,
      cls0030ComposedLabelStepRun, cls0030Final_nonneg,
      cls0030ComposedMargin_bound_gain⟩
  · exact ⟨cls0031FinalState, cls0031ComposedGain,
      cls0031ComposedLabelStepRun, cls0031Final_nonneg,
      cls0031ComposedMargin_bound_gain⟩
  · exact ⟨cls0032FinalState, cls0032ComposedGain,
      cls0032ComposedLabelStepRun, cls0032Final_nonneg,
      cls0032ComposedMargin_bound_gain⟩
  · exact ⟨cls0033FinalState, cls0033ComposedGain,
      cls0033ComposedLabelStepRun, cls0033Final_nonneg,
      cls0033ComposedMargin_bound_gain⟩
  · exact ⟨cls0034FinalState, cls0034ComposedGain,
      cls0034ComposedLabelStepRun, cls0034Final_nonneg,
      cls0034ComposedMargin_bound_gain⟩
  · exact ⟨cls0035FinalState, cls0035ComposedGain,
      cls0035ComposedLabelStepRun, cls0035Final_nonneg,
      cls0035ComposedMargin_bound_gain⟩
  · exact ⟨cls0036FinalState, cls0036ComposedGain,
      cls0036ComposedLabelStepRun, cls0036Final_nonneg,
      cls0036ComposedMargin_bound_gain⟩

theorem graphSmoke_observed_composed_label_step_run_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    (V := graphPotential)
    (Step := SmokeStep)
    (start := rootState)
    (const := 176)
    (wordOf := smokeObjComposedLabels)
    (fun _ _ _ _ h => SmokeStep.valid h)
    root_bound
    smokeObservedComposedLabelStepRunLanguageBound

private theorem smokeObservedTrieLabelStepRunLanguageBound :
    BellmanLabelStepRunLanguageBound
      graphPotential SmokeStep rootState
      (176 : Int) smokeScaledMargin smokeObjTrieLabels smokeAccepts := by
  intro obj _hobj
  cases obj
  · exact ⟨trieNode0014State, trieNode0014Gain,
      trieNode0014Run, cls0000TrieFinal_nonneg,
      cls0000TrieMargin_bound_gain⟩
  · exact ⟨trieNode0024State, trieNode0024Gain,
      trieNode0024Run, cls0001TrieFinal_nonneg,
      cls0001TrieMargin_bound_gain⟩
  · exact ⟨trieNode0035State, trieNode0035Gain,
      trieNode0035Run, cls0002TrieFinal_nonneg,
      cls0002TrieMargin_bound_gain⟩
  · exact ⟨trieNode0044State, trieNode0044Gain,
      trieNode0044Run, cls0003TrieFinal_nonneg,
      cls0003TrieMargin_bound_gain⟩
  · exact ⟨trieNode0054State, trieNode0054Gain,
      trieNode0054Run, cls0004TrieFinal_nonneg,
      cls0004TrieMargin_bound_gain⟩
  · exact ⟨trieNode0063State, trieNode0063Gain,
      trieNode0063Run, cls0005TrieFinal_nonneg,
      cls0005TrieMargin_bound_gain⟩
  · exact ⟨trieNode0071State, trieNode0071Gain,
      trieNode0071Run, cls0006TrieFinal_nonneg,
      cls0006TrieMargin_bound_gain⟩
  · exact ⟨trieNode0078State, trieNode0078Gain,
      trieNode0078Run, cls0007TrieFinal_nonneg,
      cls0007TrieMargin_bound_gain⟩
  · exact ⟨trieNode0084State, trieNode0084Gain,
      trieNode0084Run, cls0008TrieFinal_nonneg,
      cls0008TrieMargin_bound_gain⟩
  · exact ⟨trieNode0089State, trieNode0089Gain,
      trieNode0089Run, cls0009TrieFinal_nonneg,
      cls0009TrieMargin_bound_gain⟩
  · exact ⟨trieNode0093State, trieNode0093Gain,
      trieNode0093Run, cls0010TrieFinal_nonneg,
      cls0010TrieMargin_bound_gain⟩
  · exact ⟨trieNode0105State, trieNode0105Gain,
      trieNode0105Run, cls0011TrieFinal_nonneg,
      cls0011TrieMargin_bound_gain⟩
  · exact ⟨trieNode0115State, trieNode0115Gain,
      trieNode0115Run, cls0012TrieFinal_nonneg,
      cls0012TrieMargin_bound_gain⟩
  · exact ⟨trieNode0126State, trieNode0126Gain,
      trieNode0126Run, cls0013TrieFinal_nonneg,
      cls0013TrieMargin_bound_gain⟩
  · exact ⟨trieNode0136State, trieNode0136Gain,
      trieNode0136Run, cls0014TrieFinal_nonneg,
      cls0014TrieMargin_bound_gain⟩
  · exact ⟨trieNode0140State, trieNode0140Gain,
      trieNode0140Run, cls0015TrieFinal_nonneg,
      cls0015TrieMargin_bound_gain⟩
  · exact ⟨trieNode0151State, trieNode0151Gain,
      trieNode0151Run, cls0016TrieFinal_nonneg,
      cls0016TrieMargin_bound_gain⟩
  · exact ⟨trieNode0156State, trieNode0156Gain,
      trieNode0156Run, cls0017TrieFinal_nonneg,
      cls0017TrieMargin_bound_gain⟩
  · exact ⟨trieNode0159State, trieNode0159Gain,
      trieNode0159Run, cls0018TrieFinal_nonneg,
      cls0018TrieMargin_bound_gain⟩
  · exact ⟨trieNode0171State, trieNode0171Gain,
      trieNode0171Run, cls0019TrieFinal_nonneg,
      cls0019TrieMargin_bound_gain⟩
  · exact ⟨trieNode0182State, trieNode0182Gain,
      trieNode0182Run, cls0020TrieFinal_nonneg,
      cls0020TrieMargin_bound_gain⟩
  · exact ⟨trieNode0186State, trieNode0186Gain,
      trieNode0186Run, cls0021TrieFinal_nonneg,
      cls0021TrieMargin_bound_gain⟩
  · exact ⟨trieNode0196State, trieNode0196Gain,
      trieNode0196Run, cls0022TrieFinal_nonneg,
      cls0022TrieMargin_bound_gain⟩
  · exact ⟨trieNode0200State, trieNode0200Gain,
      trieNode0200Run, cls0023TrieFinal_nonneg,
      cls0023TrieMargin_bound_gain⟩
  · exact ⟨trieNode0209State, trieNode0209Gain,
      trieNode0209Run, cls0024TrieFinal_nonneg,
      cls0024TrieMargin_bound_gain⟩
  · exact ⟨trieNode0213State, trieNode0213Gain,
      trieNode0213Run, cls0025TrieFinal_nonneg,
      cls0025TrieMargin_bound_gain⟩
  · exact ⟨trieNode0221State, trieNode0221Gain,
      trieNode0221Run, cls0026TrieFinal_nonneg,
      cls0026TrieMargin_bound_gain⟩
  · exact ⟨trieNode0225State, trieNode0225Gain,
      trieNode0225Run, cls0027TrieFinal_nonneg,
      cls0027TrieMargin_bound_gain⟩
  · exact ⟨trieNode0232State, trieNode0232Gain,
      trieNode0232Run, cls0028TrieFinal_nonneg,
      cls0028TrieMargin_bound_gain⟩
  · exact ⟨trieNode0237State, trieNode0237Gain,
      trieNode0237Run, cls0029TrieFinal_nonneg,
      cls0029TrieMargin_bound_gain⟩
  · exact ⟨trieNode0241State, trieNode0241Gain,
      trieNode0241Run, cls0030TrieFinal_nonneg,
      cls0030TrieMargin_bound_gain⟩
  · exact ⟨trieNode0247State, trieNode0247Gain,
      trieNode0247Run, cls0031TrieFinal_nonneg,
      cls0031TrieMargin_bound_gain⟩
  · exact ⟨trieNode0252State, trieNode0252Gain,
      trieNode0252Run, cls0032TrieFinal_nonneg,
      cls0032TrieMargin_bound_gain⟩
  · exact ⟨trieNode0256State, trieNode0256Gain,
      trieNode0256Run, cls0033TrieFinal_nonneg,
      cls0033TrieMargin_bound_gain⟩
  · exact ⟨trieNode0262State, trieNode0262Gain,
      trieNode0262Run, cls0034TrieFinal_nonneg,
      cls0034TrieMargin_bound_gain⟩
  · exact ⟨trieNode0266State, trieNode0266Gain,
      trieNode0266Run, cls0035TrieFinal_nonneg,
      cls0035TrieMargin_bound_gain⟩
  · exact ⟨trieNode0269State, trieNode0269Gain,
      trieNode0269Run, cls0036TrieFinal_nonneg,
      cls0036TrieMargin_bound_gain⟩

theorem graphSmoke_observed_trie_label_step_run_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeAccepts obj -> smokeScaledMargin obj <= 0 :=
  scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    (V := graphPotential)
    (Step := SmokeStep)
    (start := rootState)
    (const := 176)
    (wordOf := smokeObjTrieLabels)
    (fun _ _ _ _ h => SmokeStep.valid h)
    root_bound
    smokeObservedTrieLabelStepRunLanguageBound

private def cls0000FaceSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.zp
  | ⟨6, _⟩ => Face.tmmm
  | ⟨7, _⟩ => Face.tpmm
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tpmp
  | ⟨10, _⟩ => Face.tmpm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpp
  | _ => Face.tmmp

private def cls0000FaceSeqLanguage (seq : Step14 -> Face) : Prop :=
  SameFaceSeq cls0000FaceSeq seq

private theorem cls0000FaceSeqLabels_eq :
    smokeLabelsOfSeq cls0000FaceSeq = trieNode0014Labels := by
  unfold smokeLabelsOfSeq faceLabelsInContributionOrder contributionOrderSteps cls0000FaceSeq smokeLabelOfFace
  unfold trieNode0014Labels trieNode0014StepLabels trieNode0013Labels trieNode0013StepLabels trieNode0012Labels trieNode0012StepLabels trieNode0011Labels trieNode0011StepLabels trieNode0010Labels trieNode0010StepLabels trieNode0009Labels trieNode0009StepLabels trieNode0008Labels trieNode0008StepLabels trieNode0007Labels trieNode0007StepLabels trieNode0006Labels trieNode0006StepLabels trieNode0005Labels trieNode0005StepLabels trieNode0004Labels trieNode0004StepLabels trieNode0003Labels trieNode0003StepLabels trieNode0002Labels trieNode0002StepLabels trieNode0001Labels trieNode0001StepLabels trieNode0000Labels
  rfl

private theorem cls0000FaceSeqLanguage_labels_eq
    (seq : Step14 -> Face)
    (hseq : cls0000FaceSeqLanguage seq) :
    smokeLabelsOfSeq seq = trieNode0014Labels := by
  rw [← cls0000FaceSeqLabels_eq]
  unfold smokeLabelsOfSeq
  exact faceLabelsInContributionOrder_eq_of_same smokeLabelOfFace hseq

private def cls0000Rank : Fin numPairWords := ⟨517, by decide⟩

private def cls0000Word : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.d111, PairId.dm11, PairId.d11m], by decide⟩

@[simp] theorem cls0000Word_get00_num :
    cls0000Word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem cls0000Word_get00_mk (h : 0 < 13) :
    cls0000Word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get01_num :
    cls0000Word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem cls0000Word_get01_mk (h : 1 < 13) :
    cls0000Word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get02_num :
    cls0000Word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem cls0000Word_get02_mk (h : 2 < 13) :
    cls0000Word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get03_num :
    cls0000Word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem cls0000Word_get03_mk (h : 3 < 13) :
    cls0000Word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get04_num :
    cls0000Word.get (4 : WordIndex) = PairId.z := by
  decide

@[simp] theorem cls0000Word_get04_mk (h : 4 < 13) :
    cls0000Word.get ⟨4, h⟩ = PairId.z := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get05_num :
    cls0000Word.get (5 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem cls0000Word_get05_mk (h : 5 < 13) :
    cls0000Word.get ⟨5, h⟩ = PairId.d111 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get06_num :
    cls0000Word.get (6 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem cls0000Word_get06_mk (h : 6 < 13) :
    cls0000Word.get ⟨6, h⟩ = PairId.dm11 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get07_num :
    cls0000Word.get (7 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem cls0000Word_get07_mk (h : 7 < 13) :
    cls0000Word.get ⟨7, h⟩ = PairId.d11m := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get08_num :
    cls0000Word.get (8 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem cls0000Word_get08_mk (h : 8 < 13) :
    cls0000Word.get ⟨8, h⟩ = PairId.d1m1 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get09_num :
    cls0000Word.get (9 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem cls0000Word_get09_mk (h : 9 < 13) :
    cls0000Word.get ⟨9, h⟩ = PairId.d1m1 := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get10_num :
    cls0000Word.get (10 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem cls0000Word_get10_mk (h : 10 < 13) :
    cls0000Word.get ⟨10, h⟩ = PairId.d111 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get11_num :
    cls0000Word.get (11 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem cls0000Word_get11_mk (h : 11 < 13) :
    cls0000Word.get ⟨11, h⟩ = PairId.dm11 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000Word_get12_num :
    cls0000Word.get (12 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem cls0000Word_get12_mk (h : 12 < 13) :
    cls0000Word.get ⟨12, h⟩ = PairId.d11m := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem cls0000Word_eq_pairWordOfSeq :
    cls0000Word = pairWordOfSeq cls0000FaceSeq := by
  decide

private theorem cls0000FaceSeq_rank :
    rankPairWord? (pairWordOfSeq cls0000FaceSeq) = some cls0000Rank := by
  decide

private theorem cls0000FaceSeq_unrank_pairword :
    unrankPairWord cls0000Rank = pairWordOfSeq cls0000FaceSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq cls0000FaceSeq)
      cls0000Rank).1 cls0000FaceSeq_rank).symm

private theorem cls0000FaceSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord cls0000Rank) cls0000FaceSeq := by
  rw [cls0000FaceSeq_unrank_pairword]
  exact pairWordOfSeq_matches cls0000FaceSeq

private theorem cls0000_unrank_word :
    unrankPairWord cls0000Rank = cls0000Word := by
  rw [cls0000FaceSeq_unrank_pairword]
  exact cls0000Word_eq_pairWordOfSeq.symm

private def cls0000Axis : Vec3 Rat := { x := (-1/3), y := (-1/3), z := -1 }

private def cls0000Kernel : KernelLineWitness :=
  { crossFactor := { m00 := (7/144), m01 := (-5/9), m02 := 0, m10 := (5/9), m11 := (23/144), m12 := 0, m20 := (-29/144), m21 := (19/144), m22 := 0 } }

private theorem cls0000KernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord cls0000Rank))
      cls0000Axis cls0000Kernel = true := by
  rw [cls0000_unrank_word]
  norm_num [cls0000Axis, cls0000Kernel, checkKernelLineWitness,
    checkVec3NonzeroQ, totalLinearOfPairWord, pairLinearProductRight,
    pairLinearSuffixNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num, fixedPart, crossLeftMatrix,
    matSub, matId, matMul, matVec, canonicalNormalQ, normalQ,
    reflM, dot, scalarMat, outer]

private theorem cls0000FinalAxisDot :
    finalAxisDotQ (unrankPairWord cls0000Rank) cls0000Axis =
      (1/3) := by
  rw [cls0000_unrank_word]
  norm_num [cls0000Axis, finalAxisDotQ, pairPrefixLinearNat,
    cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num, canonicalNormalQ, normalQ, matId, matMul,
    reflM, dot, matSub, scalarMat, outer, matVec]

private theorem cls0000PrefixLinear00 :
    pairPrefixLinearNat cls0000Word 0 =
      { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear01 :
    pairPrefixLinearNat cls0000Word 1 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear02 :
    pairPrefixLinearNat cls0000Word 2 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear03 :
    pairPrefixLinearNat cls0000Word 3 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear04 :
    pairPrefixLinearNat cls0000Word 4 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear05 :
    pairPrefixLinearNat cls0000Word 5 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear06 :
    pairPrefixLinearNat cls0000Word 6 =
      { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear07 :
    pairPrefixLinearNat cls0000Word 7 =
      { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear08 :
    pairPrefixLinearNat cls0000Word 8 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear09 :
    pairPrefixLinearNat cls0000Word 9 =
      { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear10 :
    pairPrefixLinearNat cls0000Word 10 =
      { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear11 :
    pairPrefixLinearNat cls0000Word 11 =
      { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000PrefixLinear12 :
    pairPrefixLinearNat cls0000Word 12 =
      { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) } := by
  norm_num [pairPrefixLinearNat, cls0000Word_get00_num, cls0000Word_get01_num, cls0000Word_get02_num, cls0000Word_get03_num, cls0000Word_get04_num, cls0000Word_get05_num, cls0000Word_get06_num, cls0000Word_get07_num, cls0000Word_get08_num, cls0000Word_get09_num, cls0000Word_get10_num, cls0000Word_get11_num, cls0000Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0000AxisForcesAt00 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (0 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 0)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (0 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear00] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get00_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt01 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (1 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 1)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (1 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear01] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get01_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt02 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (2 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 2)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (2 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear02] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get02_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt03 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (3 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 3)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (3 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear03] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get03_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt04 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (4 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 4)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (4 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear04] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get04_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt05 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (5 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 5)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (5 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear05] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get05_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt06 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (6 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 6)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (6 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear06] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get06_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt07 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (7 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 7)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (7 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear07] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get07_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt08 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (8 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 8)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (8 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear08] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get08_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt09 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (9 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 9)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (9 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear09] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get09_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt10 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (10 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 10)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (10 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear10] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get10_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt11 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (11 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 11)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (11 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear11] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get11_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForcesAt12 (f : Face)
    (hf : pairOfFace f = cls0000Word.get (12 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0000Word 12)
        (normalQ f)) cls0000Axis) :
    normalQ (cls0000FaceSeq (afterStart (12 : WordIndex))) =
      normalQ f := by
  rw [cls0000PrefixLinear12] at hpos
  cases f <;>
    simp [cls0000Axis, cls0000FaceSeq, cls0000Word_get12_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0000AxisForces :
    AxisForcesForcedSeq (unrankPairWord cls0000Rank)
      cls0000Axis cls0000FaceSeq := by
  constructor
  · unfold StartsXp cls0000FaceSeq
    decide
  constructor
  · exact cls0000FaceSeq_matches_unrank
  constructor
  · rw [cls0000FinalAxisDot]
    norm_num
  · intro i f hf hpos
    rw [cls0000_unrank_word] at hf hpos
    fin_cases i
    · exact cls0000AxisForcesAt00 f hf hpos
    · exact cls0000AxisForcesAt01 f hf hpos
    · exact cls0000AxisForcesAt02 f hf hpos
    · exact cls0000AxisForcesAt03 f hf hpos
    · exact cls0000AxisForcesAt04 f hf hpos
    · exact cls0000AxisForcesAt05 f hf hpos
    · exact cls0000AxisForcesAt06 f hf hpos
    · exact cls0000AxisForcesAt07 f hf hpos
    · exact cls0000AxisForcesAt08 f hf hpos
    · exact cls0000AxisForcesAt09 f hf hpos
    · exact cls0000AxisForcesAt10 f hf hpos
    · exact cls0000AxisForcesAt11 f hf hpos
    · exact cls0000AxisForcesAt12 f hf hpos

private def cls0000PositiveCertSeq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp], by decide⟩

@[simp] theorem cls0000PositiveCertSeq_get00_num :
    cls0000PositiveCertSeq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get00_mk (h : 0 < 14) :
    cls0000PositiveCertSeq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get01_num :
    cls0000PositiveCertSeq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get01_mk (h : 1 < 14) :
    cls0000PositiveCertSeq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get02_num :
    cls0000PositiveCertSeq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get02_mk (h : 2 < 14) :
    cls0000PositiveCertSeq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get03_num :
    cls0000PositiveCertSeq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get03_mk (h : 3 < 14) :
    cls0000PositiveCertSeq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get04_num :
    cls0000PositiveCertSeq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get04_mk (h : 4 < 14) :
    cls0000PositiveCertSeq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get05_num :
    cls0000PositiveCertSeq.get (5 : Step14) = Face.zp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get05_mk (h : 5 < 14) :
    cls0000PositiveCertSeq.get ⟨5, h⟩ = Face.zp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get06_num :
    cls0000PositiveCertSeq.get (6 : Step14) = Face.tmmm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get06_mk (h : 6 < 14) :
    cls0000PositiveCertSeq.get ⟨6, h⟩ = Face.tmmm := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get07_num :
    cls0000PositiveCertSeq.get (7 : Step14) = Face.tpmm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get07_mk (h : 7 < 14) :
    cls0000PositiveCertSeq.get ⟨7, h⟩ = Face.tpmm := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get08_num :
    cls0000PositiveCertSeq.get (8 : Step14) = Face.tppm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get08_mk (h : 8 < 14) :
    cls0000PositiveCertSeq.get ⟨8, h⟩ = Face.tppm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get09_num :
    cls0000PositiveCertSeq.get (9 : Step14) = Face.tpmp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get09_mk (h : 9 < 14) :
    cls0000PositiveCertSeq.get ⟨9, h⟩ = Face.tpmp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get10_num :
    cls0000PositiveCertSeq.get (10 : Step14) = Face.tmpm := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get10_mk (h : 10 < 14) :
    cls0000PositiveCertSeq.get ⟨10, h⟩ = Face.tmpm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get11_num :
    cls0000PositiveCertSeq.get (11 : Step14) = Face.tppp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get11_mk (h : 11 < 14) :
    cls0000PositiveCertSeq.get ⟨11, h⟩ = Face.tppp := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get12_num :
    cls0000PositiveCertSeq.get (12 : Step14) = Face.tmpp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get12_mk (h : 12 < 14) :
    cls0000PositiveCertSeq.get ⟨12, h⟩ = Face.tmpp := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0000PositiveCertSeq_get13_num :
    cls0000PositiveCertSeq.get (13 : Step14) = Face.tmmp := by
  decide

@[simp] theorem cls0000PositiveCertSeq_get13_mk (h : 13 < 14) :
    cls0000PositiveCertSeq.get ⟨13, h⟩ = Face.tmmp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def cls0000PositiveCert : NonIdCert where
  word := cls0000Word
  axis := cls0000Axis
  kernel := cls0000Kernel
  forcedSeq := cls0000PositiveCertSeq
  p0 := { x := 1, y := (-58/11), z := (-119/22) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

theorem cls0000PositiveCert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [cls0000PositiveCertSeq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem cls0000PositiveCert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix00, faceVectorSeq,
    cls0000PositiveCertSeq_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix01, faceVectorSeq,
    cls0000PositiveCertSeq_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix02, faceVectorSeq,
    cls0000PositiveCertSeq_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := -2 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix03, faceVectorSeq,
    cls0000PositiveCertSeq_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 5 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := -4 } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix04, faceVectorSeq,
    cls0000PositiveCertSeq_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 6 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (2/3), m10 := (-2/3), m11 := (1/3), m12 := (-2/3), m20 := (-2/3), m21 := (-2/3), m22 := (1/3) }, b := { x := (-2/3), y := (-16/3), z := (-16/3) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix05, faceVectorSeq,
    cls0000PositiveCertSeq_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 7 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (-4/9), m10 := (-4/9), m11 := (1/9), m12 := (-8/9), m20 := (-4/9), m21 := (-8/9), m22 := (1/9) }, b := { x := (-26/9), y := (-52/9), z := (-52/9) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix06, faceVectorSeq,
    cls0000PositiveCertSeq_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 8 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (-50/27), y := (-136/27), z := (-208/27) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix07, faceVectorSeq,
    cls0000PositiveCertSeq_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 9 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (-64/81), m10 := (-8/81), m11 := (-79/81), m12 := (16/81), m20 := (64/81), m21 := (-16/81), m22 := (-47/81) }, b := { x := (-10/81), y := (-524/81), z := (-668/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix08, faceVectorSeq,
    cls0000PositiveCertSeq_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 10 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (2/27), m10 := (-22/27), m11 := (-7/27), m12 := (-14/27), m20 := (14/27), m21 := (2/27), m22 := (-23/27) }, b := { x := (130/81), y := (-640/81), z := (-712/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix09, faceVectorSeq,
    cls0000PositiveCertSeq_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 11 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (40/81), m10 := (20/81), m11 := (65/81), m12 := (44/81), m20 := (56/81), m21 := (20/81), m22 := (-55/81) }, b := { x := (62/81), y := (-812/81), z := (-740/81) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix10, faceVectorSeq,
    cls0000PositiveCertSeq_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 12 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (238/243), m10 := (238/243), m11 := (17/243), m12 := (-46/243), m20 := (-14/243), m21 := (242/243), m22 := (17/243) }, b := { x := (-50/243), y := (-2080/243), z := (-2584/243) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix11, faceVectorSeq,
    cls0000PositiveCertSeq_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (670/729), y := (-7444/729), z := (-8596/729) } } := by
  simp [pathPrefixAffNat, cls0000PositiveCert_pathPrefix12, faceVectorSeq,
    cls0000PositiveCertSeq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0000PositiveCert_totalAff :
    totalAff (faceVectorSeq cls0000PositiveCert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq cls0000PositiveCertSeq) 13)
      (faceReflectionQ (faceVectorSeq cls0000PositiveCertSeq 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (1772/729), y := (-7220/729), z := (-9524/729) } }
  rw [cls0000PositiveCert_pathPrefix13]
  simp [faceVectorSeq, cls0000PositiveCertSeq_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem cls0000PositiveCert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cls0000PositiveCert.forcedSeq))
      cls0000PositiveCert.axis cls0000PositiveCert.p0 cls0000PositiveCert.lambda cls0000PositiveCert.solve = true := by
  rw [cls0000PositiveCert_totalAff]
  norm_num [cls0000PositiveCert, cls0000Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem cls0000PositiveCert_axisForces :
    AxisForcesForcedSeq cls0000PositiveCert.word cls0000PositiveCert.axis
      (faceVectorSeq cls0000PositiveCert.forcedSeq) := by
  change AxisForcesForcedSeq cls0000Word cls0000Axis
      (faceVectorSeq cls0000PositiveCertSeq)
  have hSeqEq : faceVectorSeq cls0000PositiveCertSeq = cls0000FaceSeq := by
    funext i
    fin_cases i <;> rfl
  rw [hSeqEq]
  rw [← cls0000_unrank_word]
  exact cls0000AxisForces

private theorem cls0000PositiveCert_kernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord cls0000PositiveCert.word)
      cls0000PositiveCert.axis cls0000PositiveCert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord cls0000Word)
      cls0000Axis cls0000Kernel = true
  rw [← cls0000_unrank_word]
  exact cls0000KernelCheck

private theorem cls0000PositiveCert_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem cls0000PositiveCert_badFaceViolation :
    offsetR Face.ym <=
      dot (normalR Face.ym)
        (vecRatToReal cls0000PositiveCert.p0) := by
  norm_num [cls0000PositiveCert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]

private def cls0000PairSignLanguage (seq : Step14 -> Face) : Prop :=
  PairSignLanguageAtRank cls0000Rank cls0000FaceSeq seq

private theorem cls0000PairSignLanguage_same
    (seq : Step14 -> Face)
    (hseq : cls0000PairSignLanguage seq) :
    cls0000FaceSeqLanguage seq := by
  exact sameFaceSeq_of_pairSignLanguageAtRank
    cls0000FaceSeq_matches_unrank hseq

private def cls0000TraceOfSeq (seq : Step14 -> Face) : SmokeLabelStepTrace where
  finish := trieNode0014State
  labels := smokeLabelsOfSeq seq
  gain := trieNode0014Gain
  margin := smokeScaledMargin SmokeObj.cls0000

private theorem cls0000TraceOfSeq_accepts
    (seq : Step14 -> Face)
    (hlabels : smokeLabelsOfSeq seq = trieNode0014Labels) :
    smokeLabelStepTraceAccepts (cls0000TraceOfSeq seq) := by
  unfold smokeLabelStepTraceAccepts cls0000TraceOfSeq
  refine ⟨?_, ?_, ?_⟩
  · change BellmanLabelStepRun SmokeStep
      rootState trieNode0014State
      (smokeLabelsOfSeq seq) trieNode0014Gain
    rw [hlabels]
    exact trieNode0014Run
  · exact cls0000TrieFinal_nonneg
  · change smokeScaledMargin SmokeObj.cls0000 <=
      (176 : Int) + trieNode0014Gain
    exact cls0000TrieMargin_bound_gain

theorem graphSmoke_cls0000_seq_of_trie_labels_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hlabels : smokeLabelsOfSeq seq = trieNode0014Labels) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 :=
  graphSmoke_label_step_trace_language_scaled_margin_nonpos
    (cls0000TraceOfSeq seq) (cls0000TraceOfSeq_accepts seq hlabels)

theorem graphSmoke_cls0000_seq_language_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hseq : cls0000FaceSeqLanguage seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0000_seq_of_trie_labels_scaled_margin_nonpos
    seq (cls0000FaceSeqLanguage_labels_eq seq hseq)

theorem graphSmoke_cls0000_pair_sign_language_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hseq : cls0000PairSignLanguage seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0000_seq_language_scaled_margin_nonpos
    seq (cls0000PairSignLanguage_same seq hseq)

theorem graphSmoke_cls0000_axis_forces_scaled_margin_nonpos
    (seq : Step14 -> Face) (axis : Vec3 Rat)
    (kernel : KernelLineWitness)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0000Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord cls0000Rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord cls0000Rank)
        axis cls0000FaceSeq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0000_pair_sign_language_scaled_margin_nonpos
    seq
    (pairSignLanguageAtRank_of_axisForces
      hRealize hAxisConstraints hKernel hForces)

theorem graphSmoke_cls0000_generated_axis_forces_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0000Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0000_axis_forces_scaled_margin_nonpos
    seq cls0000Axis cls0000Kernel hRealize hAxisConstraints
    cls0000KernelCheck cls0000AxisForces

theorem graphSmoke_cls0000_generated_axis_forces_bridge_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0000Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0000TraceOfSeq
  have hrun :
      BellmanLabelStepRun SmokeStep rootState
        trieNode0014State
        (faceLabelsInContributionOrder smokeLabelOfFace cls0000FaceSeq)
        trieNode0014Gain := by
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0014State
      (smokeLabelsOfSeq cls0000FaceSeq) trieNode0014Gain
    rw [cls0000FaceSeqLabels_eq]
    exact trieNode0014Run
  exact scaledMargin_nonpos_of_axisForces_labelStepRun
    (labelOfFace := smokeLabelOfFace)
    (V := graphPotential)
    (Step := SmokeStep)
    (rank := cls0000Rank)
    (axis := cls0000Axis)
    (kernel := cls0000Kernel)
    (forcedSeq := cls0000FaceSeq)
    (seq := seq)
    (start := rootState)
    (finish := trieNode0014State)
    (gain := trieNode0014Gain)
    (const := 176)
    (margin := smokeScaledMargin SmokeObj.cls0000)
    hrun
    (fun _ _ _ _ h => SmokeStep.valid h)
    cls0000TrieFinal_nonneg
    root_bound
    cls0000TrieMargin_bound_gain
    hRealize hAxisConstraints cls0000KernelCheck cls0000AxisForces

private def cls0000ContainsRank (rank : Fin numPairWords) : Prop :=
  rank = cls0000Rank

private def cls0000ScaledMarginAtRank (_rank : Fin numPairWords) : Int :=
  smokeScaledMargin SmokeObj.cls0000

private def cls0000AxisRankFamily :
    BellmanAxisRankFamily
      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) cls0000ContainsRank
      cls0000ScaledMarginAtRank where
  forcedSeq := cls0000FaceSeq
  axis := cls0000Axis
  kernel := cls0000Kernel
  finish := trieNode0014State
  gain := trieNode0014Gain
  run := by
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0014State
      (smokeLabelsOfSeq cls0000FaceSeq) trieNode0014Gain
    rw [cls0000FaceSeqLabels_eq]
    exact trieNode0014Run
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  finish_nonneg := cls0000TrieFinal_nonneg
  root_bound := root_bound
  margin_bound := by
    intro rank hrank
    unfold cls0000ScaledMarginAtRank
    exact cls0000TrieMargin_bound_gain
  kernel_check := by
    intro rank hrank
    rw [hrank]
    exact cls0000KernelCheck
  axis_forces := by
    intro rank hrank
    rw [hrank]
    exact cls0000AxisForces

theorem graphSmoke_cls0000_axis_rank_family_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0000Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0000TraceOfSeq
  exact BellmanAxisRankFamily.scaledMargin_nonpos
    cls0000AxisRankFamily
    (rank := cls0000Rank)
    (seq := seq)
    rfl
    hRealize
    hAxisConstraints

private def cls0000AxisRankLanguageFamily :
    BellmanAxisRankLanguageFamily
      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) cls0000ContainsRank
      cls0000ScaledMarginAtRank where
  axis := cls0000Axis
  kernel := by
    intro rank hrank
    exact cls0000Kernel
  forcedSeq := by
    intro rank hrank
    exact cls0000FaceSeq
  finish := by
    intro rank hrank
    exact trieNode0014State
  gain := by
    intro rank hrank
    exact trieNode0014Gain
  run := by
    intro rank hrank
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0014State
      (smokeLabelsOfSeq cls0000FaceSeq) trieNode0014Gain
    rw [cls0000FaceSeqLabels_eq]
    exact trieNode0014Run
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  finish_nonneg := by
    intro rank hrank
    exact cls0000TrieFinal_nonneg
  root_bound := root_bound
  margin_bound := by
    intro rank hrank
    unfold cls0000ScaledMarginAtRank
    exact cls0000TrieMargin_bound_gain
  kernel_check := by
    intro rank hrank
    rw [hrank]
    exact cls0000KernelCheck
  axis_forces := by
    intro rank hrank
    rw [hrank]
    exact cls0000AxisForces

theorem graphSmoke_cls0000_axis_rank_language_family_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0000Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0000TraceOfSeq
  exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos
    cls0000AxisRankLanguageFamily
    (rank := cls0000Rank)
    (seq := seq)
    rfl
    hRealize
    hAxisConstraints

theorem graphSmoke_cls0000_face_seq_trace_scaled_margin_nonpos :
    smokeLabelStepTraceScaledMargin (cls0000TraceOfSeq cls0000FaceSeq) <= 0 :=
  graphSmoke_cls0000_seq_language_scaled_margin_nonpos
    cls0000FaceSeq (fun _ => rfl)

private def cls0001FaceSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.ym
  | ⟨3, _⟩ => Face.yp
  | ⟨4, _⟩ => Face.zm
  | ⟨5, _⟩ => Face.tmmp
  | ⟨6, _⟩ => Face.tpmp
  | ⟨7, _⟩ => Face.tppp
  | ⟨8, _⟩ => Face.tpmm
  | ⟨9, _⟩ => Face.tmpp
  | ⟨10, _⟩ => Face.tppm
  | ⟨11, _⟩ => Face.tmpm
  | ⟨12, _⟩ => Face.tmmm
  | _ => Face.zp

private def cls0001FaceSeqLanguage (seq : Step14 -> Face) : Prop :=
  SameFaceSeq cls0001FaceSeq seq

private theorem cls0001FaceSeqLabels_eq :
    smokeLabelsOfSeq cls0001FaceSeq = trieNode0024Labels := by
  unfold smokeLabelsOfSeq faceLabelsInContributionOrder contributionOrderSteps cls0001FaceSeq smokeLabelOfFace
  unfold trieNode0024Labels trieNode0024StepLabels trieNode0023Labels trieNode0023StepLabels trieNode0022Labels trieNode0022StepLabels trieNode0021Labels trieNode0021StepLabels trieNode0020Labels trieNode0020StepLabels trieNode0019Labels trieNode0019StepLabels trieNode0018Labels trieNode0018StepLabels trieNode0017Labels trieNode0017StepLabels trieNode0016Labels trieNode0016StepLabels trieNode0015Labels trieNode0015StepLabels trieNode0004Labels trieNode0004StepLabels trieNode0003Labels trieNode0003StepLabels trieNode0002Labels trieNode0002StepLabels trieNode0001Labels trieNode0001StepLabels trieNode0000Labels
  rfl

private theorem cls0001FaceSeqLanguage_labels_eq
    (seq : Step14 -> Face)
    (hseq : cls0001FaceSeqLanguage seq) :
    smokeLabelsOfSeq seq = trieNode0024Labels := by
  rw [← cls0001FaceSeqLabels_eq]
  unfold smokeLabelsOfSeq
  exact faceLabelsInContributionOrder_eq_of_same smokeLabelOfFace hseq

private def cls0001Rank : Fin numPairWords := ⟨10613, by decide⟩

private def cls0001Word : PairWord :=
  ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.d11m, PairId.d1m1, PairId.d111, PairId.dm11, PairId.dm11, PairId.d11m, PairId.d1m1, PairId.d111, PairId.z], by decide⟩

@[simp] theorem cls0001Word_get00_num :
    cls0001Word.get (0 : WordIndex) = PairId.x := by
  decide

@[simp] theorem cls0001Word_get00_mk (h : 0 < 13) :
    cls0001Word.get ⟨0, h⟩ = PairId.x := by
  have hi : (⟨0, h⟩ : WordIndex) = (0 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get01_num :
    cls0001Word.get (1 : WordIndex) = PairId.y := by
  decide

@[simp] theorem cls0001Word_get01_mk (h : 1 < 13) :
    cls0001Word.get ⟨1, h⟩ = PairId.y := by
  have hi : (⟨1, h⟩ : WordIndex) = (1 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get02_num :
    cls0001Word.get (2 : WordIndex) = PairId.y := by
  decide

@[simp] theorem cls0001Word_get02_mk (h : 2 < 13) :
    cls0001Word.get ⟨2, h⟩ = PairId.y := by
  have hi : (⟨2, h⟩ : WordIndex) = (2 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get03_num :
    cls0001Word.get (3 : WordIndex) = PairId.z := by
  decide

@[simp] theorem cls0001Word_get03_mk (h : 3 < 13) :
    cls0001Word.get ⟨3, h⟩ = PairId.z := by
  have hi : (⟨3, h⟩ : WordIndex) = (3 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get04_num :
    cls0001Word.get (4 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem cls0001Word_get04_mk (h : 4 < 13) :
    cls0001Word.get ⟨4, h⟩ = PairId.d11m := by
  have hi : (⟨4, h⟩ : WordIndex) = (4 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get05_num :
    cls0001Word.get (5 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem cls0001Word_get05_mk (h : 5 < 13) :
    cls0001Word.get ⟨5, h⟩ = PairId.d1m1 := by
  have hi : (⟨5, h⟩ : WordIndex) = (5 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get06_num :
    cls0001Word.get (6 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem cls0001Word_get06_mk (h : 6 < 13) :
    cls0001Word.get ⟨6, h⟩ = PairId.d111 := by
  have hi : (⟨6, h⟩ : WordIndex) = (6 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get07_num :
    cls0001Word.get (7 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem cls0001Word_get07_mk (h : 7 < 13) :
    cls0001Word.get ⟨7, h⟩ = PairId.dm11 := by
  have hi : (⟨7, h⟩ : WordIndex) = (7 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get08_num :
    cls0001Word.get (8 : WordIndex) = PairId.dm11 := by
  decide

@[simp] theorem cls0001Word_get08_mk (h : 8 < 13) :
    cls0001Word.get ⟨8, h⟩ = PairId.dm11 := by
  have hi : (⟨8, h⟩ : WordIndex) = (8 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get09_num :
    cls0001Word.get (9 : WordIndex) = PairId.d11m := by
  decide

@[simp] theorem cls0001Word_get09_mk (h : 9 < 13) :
    cls0001Word.get ⟨9, h⟩ = PairId.d11m := by
  have hi : (⟨9, h⟩ : WordIndex) = (9 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get10_num :
    cls0001Word.get (10 : WordIndex) = PairId.d1m1 := by
  decide

@[simp] theorem cls0001Word_get10_mk (h : 10 < 13) :
    cls0001Word.get ⟨10, h⟩ = PairId.d1m1 := by
  have hi : (⟨10, h⟩ : WordIndex) = (10 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get11_num :
    cls0001Word.get (11 : WordIndex) = PairId.d111 := by
  decide

@[simp] theorem cls0001Word_get11_mk (h : 11 < 13) :
    cls0001Word.get ⟨11, h⟩ = PairId.d111 := by
  have hi : (⟨11, h⟩ : WordIndex) = (11 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001Word_get12_num :
    cls0001Word.get (12 : WordIndex) = PairId.z := by
  decide

@[simp] theorem cls0001Word_get12_mk (h : 12 < 13) :
    cls0001Word.get ⟨12, h⟩ = PairId.z := by
  have hi : (⟨12, h⟩ : WordIndex) = (12 : WordIndex) := by
    ext
    rfl
  rw [hi]
  decide

private theorem cls0001Word_eq_pairWordOfSeq :
    cls0001Word = pairWordOfSeq cls0001FaceSeq := by
  decide

private theorem cls0001FaceSeq_rank :
    rankPairWord? (pairWordOfSeq cls0001FaceSeq) = some cls0001Rank := by
  decide

private theorem cls0001FaceSeq_unrank_pairword :
    unrankPairWord cls0001Rank = pairWordOfSeq cls0001FaceSeq := by
  exact
    ((rankPairWord?_eq_some_iff_unrank (pairWordOfSeq cls0001FaceSeq)
      cls0001Rank).1 cls0001FaceSeq_rank).symm

private theorem cls0001FaceSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord cls0001Rank) cls0001FaceSeq := by
  rw [cls0001FaceSeq_unrank_pairword]
  exact pairWordOfSeq_matches cls0001FaceSeq

private theorem cls0001_unrank_word :
    unrankPairWord cls0001Rank = cls0001Word := by
  rw [cls0001FaceSeq_unrank_pairword]
  exact cls0001Word_eq_pairWordOfSeq.symm

private def cls0001Axis : Vec3 Rat := { x := (-1/3), y := (-1/3), z := -1 }

private def cls0001Kernel : KernelLineWitness :=
  { crossFactor := { m00 := (7/144), m01 := (-5/9), m02 := 0, m10 := (5/9), m11 := (23/144), m12 := 0, m20 := (-29/144), m21 := (19/144), m22 := 0 } }

private theorem cls0001KernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord cls0001Rank))
      cls0001Axis cls0001Kernel = true := by
  rw [cls0001_unrank_word]
  norm_num [cls0001Axis, cls0001Kernel, checkKernelLineWitness,
    checkVec3NonzeroQ, totalLinearOfPairWord, pairLinearProductRight,
    pairLinearSuffixNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num, fixedPart, crossLeftMatrix,
    matSub, matId, matMul, matVec, canonicalNormalQ, normalQ,
    reflM, dot, scalarMat, outer]

private theorem cls0001FinalAxisDot :
    finalAxisDotQ (unrankPairWord cls0001Rank) cls0001Axis =
      (1/3) := by
  rw [cls0001_unrank_word]
  norm_num [cls0001Axis, finalAxisDotQ, pairPrefixLinearNat,
    cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num, canonicalNormalQ, normalQ, matId, matMul,
    reflM, dot, matSub, scalarMat, outer, matVec]

private theorem cls0001PrefixLinear00 :
    pairPrefixLinearNat cls0001Word 0 =
      { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear01 :
    pairPrefixLinearNat cls0001Word 1 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear02 :
    pairPrefixLinearNat cls0001Word 2 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear03 :
    pairPrefixLinearNat cls0001Word 3 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear04 :
    pairPrefixLinearNat cls0001Word 4 =
      { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear05 :
    pairPrefixLinearNat cls0001Word 5 =
      { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear06 :
    pairPrefixLinearNat cls0001Word 6 =
      { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear07 :
    pairPrefixLinearNat cls0001Word 7 =
      { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear08 :
    pairPrefixLinearNat cls0001Word 8 =
      { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear09 :
    pairPrefixLinearNat cls0001Word 9 =
      { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear10 :
    pairPrefixLinearNat cls0001Word 10 =
      { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear11 :
    pairPrefixLinearNat cls0001Word 11 =
      { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001PrefixLinear12 :
    pairPrefixLinearNat cls0001Word 12 =
      { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) } := by
  norm_num [pairPrefixLinearNat, cls0001Word_get00_num, cls0001Word_get01_num, cls0001Word_get02_num, cls0001Word_get03_num, cls0001Word_get04_num, cls0001Word_get05_num, cls0001Word_get06_num, cls0001Word_get07_num, cls0001Word_get08_num, cls0001Word_get09_num, cls0001Word_get10_num, cls0001Word_get11_num, cls0001Word_get12_num,
    canonicalNormalQ, normalQ, matId, matMul, reflM, dot,
    matSub, scalarMat, outer]

private theorem cls0001AxisForcesAt00 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (0 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 0)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (0 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear00] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get00_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt01 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (1 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 1)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (1 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear01] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get01_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt02 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (2 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 2)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (2 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear02] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get02_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt03 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (3 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 3)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (3 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear03] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get03_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt04 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (4 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 4)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (4 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear04] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get04_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt05 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (5 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 5)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (5 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear05] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get05_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt06 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (6 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 6)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (6 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear06] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get06_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt07 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (7 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 7)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (7 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear07] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get07_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt08 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (8 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 8)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (8 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear08] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get08_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt09 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (9 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 9)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (9 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear09] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get09_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt10 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (10 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 10)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (10 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear10] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get10_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt11 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (11 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 11)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (11 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear11] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get11_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForcesAt12 (f : Face)
    (hf : pairOfFace f = cls0001Word.get (12 : WordIndex))
    (hpos : 0 <
      dot (matVec (pairPrefixLinearNat cls0001Word 12)
        (normalQ f)) cls0001Axis) :
    normalQ (cls0001FaceSeq (afterStart (12 : WordIndex))) =
      normalQ f := by
  rw [cls0001PrefixLinear12] at hpos
  cases f <;>
    simp [cls0001Axis, cls0001FaceSeq, cls0001Word_get12_num,
      afterStart, pairOfFace, normalQ, dot, matVec]
      at hf hpos ⊢ <;>
    first | contradiction | linarith | rfl

private theorem cls0001AxisForces :
    AxisForcesForcedSeq (unrankPairWord cls0001Rank)
      cls0001Axis cls0001FaceSeq := by
  constructor
  · unfold StartsXp cls0001FaceSeq
    decide
  constructor
  · exact cls0001FaceSeq_matches_unrank
  constructor
  · rw [cls0001FinalAxisDot]
    norm_num
  · intro i f hf hpos
    rw [cls0001_unrank_word] at hf hpos
    fin_cases i
    · exact cls0001AxisForcesAt00 f hf hpos
    · exact cls0001AxisForcesAt01 f hf hpos
    · exact cls0001AxisForcesAt02 f hf hpos
    · exact cls0001AxisForcesAt03 f hf hpos
    · exact cls0001AxisForcesAt04 f hf hpos
    · exact cls0001AxisForcesAt05 f hf hpos
    · exact cls0001AxisForcesAt06 f hf hpos
    · exact cls0001AxisForcesAt07 f hf hpos
    · exact cls0001AxisForcesAt08 f hf hpos
    · exact cls0001AxisForcesAt09 f hf hpos
    · exact cls0001AxisForcesAt10 f hf hpos
    · exact cls0001AxisForcesAt11 f hf hpos
    · exact cls0001AxisForcesAt12 f hf hpos

private def cls0001PositiveCertSeq : Vector Face 14 :=
  ⟨#[Face.xp, Face.xm, Face.ym, Face.yp, Face.zm, Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp], by decide⟩

@[simp] theorem cls0001PositiveCertSeq_get00_num :
    cls0001PositiveCertSeq.get (0 : Step14) = Face.xp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get00_mk (h : 0 < 14) :
    cls0001PositiveCertSeq.get ⟨0, h⟩ = Face.xp := by
  have hi : (⟨0, h⟩ : Step14) = (0 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get01_num :
    cls0001PositiveCertSeq.get (1 : Step14) = Face.xm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get01_mk (h : 1 < 14) :
    cls0001PositiveCertSeq.get ⟨1, h⟩ = Face.xm := by
  have hi : (⟨1, h⟩ : Step14) = (1 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get02_num :
    cls0001PositiveCertSeq.get (2 : Step14) = Face.ym := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get02_mk (h : 2 < 14) :
    cls0001PositiveCertSeq.get ⟨2, h⟩ = Face.ym := by
  have hi : (⟨2, h⟩ : Step14) = (2 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get03_num :
    cls0001PositiveCertSeq.get (3 : Step14) = Face.yp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get03_mk (h : 3 < 14) :
    cls0001PositiveCertSeq.get ⟨3, h⟩ = Face.yp := by
  have hi : (⟨3, h⟩ : Step14) = (3 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get04_num :
    cls0001PositiveCertSeq.get (4 : Step14) = Face.zm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get04_mk (h : 4 < 14) :
    cls0001PositiveCertSeq.get ⟨4, h⟩ = Face.zm := by
  have hi : (⟨4, h⟩ : Step14) = (4 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get05_num :
    cls0001PositiveCertSeq.get (5 : Step14) = Face.tmmp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get05_mk (h : 5 < 14) :
    cls0001PositiveCertSeq.get ⟨5, h⟩ = Face.tmmp := by
  have hi : (⟨5, h⟩ : Step14) = (5 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get06_num :
    cls0001PositiveCertSeq.get (6 : Step14) = Face.tpmp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get06_mk (h : 6 < 14) :
    cls0001PositiveCertSeq.get ⟨6, h⟩ = Face.tpmp := by
  have hi : (⟨6, h⟩ : Step14) = (6 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get07_num :
    cls0001PositiveCertSeq.get (7 : Step14) = Face.tppp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get07_mk (h : 7 < 14) :
    cls0001PositiveCertSeq.get ⟨7, h⟩ = Face.tppp := by
  have hi : (⟨7, h⟩ : Step14) = (7 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get08_num :
    cls0001PositiveCertSeq.get (8 : Step14) = Face.tpmm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get08_mk (h : 8 < 14) :
    cls0001PositiveCertSeq.get ⟨8, h⟩ = Face.tpmm := by
  have hi : (⟨8, h⟩ : Step14) = (8 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get09_num :
    cls0001PositiveCertSeq.get (9 : Step14) = Face.tmpp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get09_mk (h : 9 < 14) :
    cls0001PositiveCertSeq.get ⟨9, h⟩ = Face.tmpp := by
  have hi : (⟨9, h⟩ : Step14) = (9 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get10_num :
    cls0001PositiveCertSeq.get (10 : Step14) = Face.tppm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get10_mk (h : 10 < 14) :
    cls0001PositiveCertSeq.get ⟨10, h⟩ = Face.tppm := by
  have hi : (⟨10, h⟩ : Step14) = (10 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get11_num :
    cls0001PositiveCertSeq.get (11 : Step14) = Face.tmpm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get11_mk (h : 11 < 14) :
    cls0001PositiveCertSeq.get ⟨11, h⟩ = Face.tmpm := by
  have hi : (⟨11, h⟩ : Step14) = (11 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get12_num :
    cls0001PositiveCertSeq.get (12 : Step14) = Face.tmmm := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get12_mk (h : 12 < 14) :
    cls0001PositiveCertSeq.get ⟨12, h⟩ = Face.tmmm := by
  have hi : (⟨12, h⟩ : Step14) = (12 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

@[simp] theorem cls0001PositiveCertSeq_get13_num :
    cls0001PositiveCertSeq.get (13 : Step14) = Face.zp := by
  decide

@[simp] theorem cls0001PositiveCertSeq_get13_mk (h : 13 < 14) :
    cls0001PositiveCertSeq.get ⟨13, h⟩ = Face.zp := by
  have hi : (⟨13, h⟩ : Step14) = (13 : Step14) := by
    ext
    rfl
  rw [hi]
  decide

private def cls0001PositiveCert : NonIdCert where
  word := cls0001Word
  axis := cls0001Axis
  kernel := cls0001Kernel
  forcedSeq := cls0001PositiveCertSeq
  p0 := { x := 1, y := (-58/11), z := (-75/22) }
  lambda := (140/11)
  solve := { leftInverse := { m00 := 0, m01 := 0, m02 := 0, m03 := 1, m10 := (103/176), m11 := (-73/176), m12 := (-5/88), m13 := 1, m20 := (259/176), m21 := (25/88), m22 := (-103/176), m23 := 3, m30 := (3/11), m31 := (3/11), m32 := (9/11), m33 := 0 } }
  failure := NonIdFailure.axisMissesStartInterior

theorem cls0001PositiveCert_pathPrefix00 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 0 = { M := { m00 := 1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := 0, y := 0, z := 0 } } := by
  simp [cls0001PositiveCertSeq, faceVectorSeq, pathPrefixAffNat, affId, matId]

theorem cls0001PositiveCert_pathPrefix01 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 1 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := 0, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix00, faceVectorSeq,
    cls0001PositiveCertSeq_get01_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix02 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 2 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := -1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -2, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix01, faceVectorSeq,
    cls0001PositiveCertSeq_get02_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix03 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 3 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := 1 }, b := { x := -2, y := -4, z := 0 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix02, faceVectorSeq,
    cls0001PositiveCertSeq_get03_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix04 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 4 = { M := { m00 := -1, m01 := 0, m02 := 0, m10 := 0, m11 := 1, m12 := 0, m20 := 0, m21 := 0, m22 := -1 }, b := { x := -2, y := -4, z := -2 } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix03, faceVectorSeq,
    cls0001PositiveCertSeq_get04_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix05 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 5 = { M := { m00 := (-1/3), m01 := (2/3), m02 := (-2/3), m10 := (-2/3), m11 := (1/3), m12 := (2/3), m20 := (-2/3), m21 := (-2/3), m22 := (-1/3) }, b := { x := (-2/3), y := (-16/3), z := (-10/3) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix04, faceVectorSeq,
    cls0001PositiveCertSeq_get05_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix06 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 6 = { M := { m00 := (7/9), m01 := (-4/9), m02 := (4/9), m10 := (-4/9), m11 := (1/9), m12 := (8/9), m20 := (-4/9), m21 := (-8/9), m22 := (-1/9) }, b := { x := (-26/9), y := (-52/9), z := (-34/9) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix05, faceVectorSeq,
    cls0001PositiveCertSeq_get06_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix07 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 7 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }, b := { x := (-50/27), y := (-136/27), z := (-154/27) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix06, faceVectorSeq,
    cls0001PositiveCertSeq_get07_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix08 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 8 = { M := { m00 := (-49/81), m01 := (-8/81), m02 := (64/81), m10 := (-8/81), m11 := (-79/81), m12 := (-16/81), m20 := (64/81), m21 := (-16/81), m22 := (47/81) }, b := { x := (-10/81), y := (-524/81), z := (-506/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix07, faceVectorSeq,
    cls0001PositiveCertSeq_get08_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix09 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 9 = { M := { m00 := (7/27), m01 := (-26/27), m02 := (-2/27), m10 := (-22/27), m11 := (-7/27), m12 := (14/27), m20 := (14/27), m21 := (2/27), m22 := (23/27) }, b := { x := (130/81), y := (-640/81), z := (-550/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix08, faceVectorSeq,
    cls0001PositiveCertSeq_get09_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix10 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 10 = { M := { m00 := (55/81), m01 := (-44/81), m02 := (-40/81), m10 := (20/81), m11 := (65/81), m12 := (-44/81), m20 := (56/81), m21 := (20/81), m22 := (55/81) }, b := { x := (62/81), y := (-812/81), z := (-578/81) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix09, faceVectorSeq,
    cls0001PositiveCertSeq_get10_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix11 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 11 = { M := { m00 := (47/243), m01 := (-14/243), m02 := (-238/243), m10 := (238/243), m11 := (17/243), m12 := (46/243), m20 := (-14/243), m21 := (242/243), m22 := (-17/243) }, b := { x := (-50/243), y := (-2080/243), z := (-2098/243) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix10, faceVectorSeq,
    cls0001PositiveCertSeq_get11_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix12 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 12 = { M := { m00 := (551/729), m01 := (368/729), m02 := (-304/729), m10 := (112/729), m11 := (-551/729), m12 := (-464/729), m20 := (-464/729), m21 := (304/729), m22 := (-473/729) }, b := { x := (670/729), y := (-7444/729), z := (-7138/729) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix11, faceVectorSeq,
    cls0001PositiveCertSeq_get12_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_pathPrefix13 :
    pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 13 = { M := { m00 := (551/729), m01 := (368/729), m02 := (304/729), m10 := (112/729), m11 := (-551/729), m12 := (464/729), m20 := (-464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (62/729), y := (-8372/729), z := (-8084/729) } } := by
  simp [pathPrefixAffNat, cls0001PositiveCert_pathPrefix12, faceVectorSeq,
    cls0001PositiveCertSeq_get13_num, faceReflectionQ, reflM, reflD, normalQ, offsetQ,
    affCompose, affId, matSub, matId, scalarMat, outer, dot, matMul,
    matVec, vecAdd, scalarMul]
  norm_num

theorem cls0001PositiveCert_totalAff :
    totalAff (faceVectorSeq cls0001PositiveCert.forcedSeq) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (388/243), y := (-2716/243), z := (-3004/243) } } := by
  rw [totalAff_eq_finalPath]
  change affCompose (pathPrefixAffNat (faceVectorSeq cls0001PositiveCertSeq) 13)
      (faceReflectionQ (faceVectorSeq cls0001PositiveCertSeq 0)) = { M := { m00 := (-551/729), m01 := (368/729), m02 := (304/729), m10 := (-112/729), m11 := (-551/729), m12 := (464/729), m20 := (464/729), m21 := (304/729), m22 := (473/729) }, b := { x := (388/243), y := (-2716/243), z := (-3004/243) } }
  rw [cls0001PositiveCert_pathPrefix13]
  simp [faceVectorSeq, cls0001PositiveCertSeq_get00_num,
    faceReflectionQ, reflM, reflD, normalQ, offsetQ, affCompose,
    matSub, matId, scalarMat, outer, dot, matMul, matVec, vecAdd,
    scalarMul]
  norm_num

theorem cls0001PositiveCert_axisSolveCheck :
    checkAffineAxisSolveWitness
      (totalAff (faceVectorSeq cls0001PositiveCert.forcedSeq))
      cls0001PositiveCert.axis cls0001PositiveCert.p0 cls0001PositiveCert.lambda cls0001PositiveCert.solve = true := by
  rw [cls0001PositiveCert_totalAff]
  norm_num [cls0001PositiveCert, cls0001Axis, checkAffineAxisSolveWitness, axisSolveMatrix,
    axisSolveVector, axisSolveRhs, mat4Mul, mat4Vec, mat4Id, matId, matSub]

private theorem cls0001PositiveCert_axisForces :
    AxisForcesForcedSeq cls0001PositiveCert.word cls0001PositiveCert.axis
      (faceVectorSeq cls0001PositiveCert.forcedSeq) := by
  change AxisForcesForcedSeq cls0001Word cls0001Axis
      (faceVectorSeq cls0001PositiveCertSeq)
  have hSeqEq : faceVectorSeq cls0001PositiveCertSeq = cls0001FaceSeq := by
    funext i
    fin_cases i <;> rfl
  rw [hSeqEq]
  rw [← cls0001_unrank_word]
  exact cls0001AxisForces

private theorem cls0001PositiveCert_kernelCheck :
    checkKernelLineWitness (totalLinearOfPairWord cls0001PositiveCert.word)
      cls0001PositiveCert.axis cls0001PositiveCert.kernel = true := by
  change checkKernelLineWitness (totalLinearOfPairWord cls0001Word)
      cls0001Axis cls0001Kernel = true
  rw [← cls0001_unrank_word]
  exact cls0001KernelCheck

private theorem cls0001PositiveCert_badFace_ne_xp :
    Face.ym ≠ Face.xp := by
  decide

private theorem cls0001PositiveCert_badFaceViolation :
    offsetR Face.ym <=
      dot (normalR Face.ym)
        (vecRatToReal cls0001PositiveCert.p0) := by
  norm_num [cls0001PositiveCert, offsetR, normalR, offsetQ, normalQ,
    vecRatToReal, dot]

private def cls0001PairSignLanguage (seq : Step14 -> Face) : Prop :=
  PairSignLanguageAtRank cls0001Rank cls0001FaceSeq seq

private theorem cls0001PairSignLanguage_same
    (seq : Step14 -> Face)
    (hseq : cls0001PairSignLanguage seq) :
    cls0001FaceSeqLanguage seq := by
  exact sameFaceSeq_of_pairSignLanguageAtRank
    cls0001FaceSeq_matches_unrank hseq

private def cls0001TraceOfSeq (seq : Step14 -> Face) : SmokeLabelStepTrace where
  finish := trieNode0024State
  labels := smokeLabelsOfSeq seq
  gain := trieNode0024Gain
  margin := smokeScaledMargin SmokeObj.cls0001

private theorem cls0001TraceOfSeq_accepts
    (seq : Step14 -> Face)
    (hlabels : smokeLabelsOfSeq seq = trieNode0024Labels) :
    smokeLabelStepTraceAccepts (cls0001TraceOfSeq seq) := by
  unfold smokeLabelStepTraceAccepts cls0001TraceOfSeq
  refine ⟨?_, ?_, ?_⟩
  · change BellmanLabelStepRun SmokeStep
      rootState trieNode0024State
      (smokeLabelsOfSeq seq) trieNode0024Gain
    rw [hlabels]
    exact trieNode0024Run
  · exact cls0001TrieFinal_nonneg
  · change smokeScaledMargin SmokeObj.cls0001 <=
      (176 : Int) + trieNode0024Gain
    exact cls0001TrieMargin_bound_gain

theorem graphSmoke_cls0001_seq_of_trie_labels_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hlabels : smokeLabelsOfSeq seq = trieNode0024Labels) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 :=
  graphSmoke_label_step_trace_language_scaled_margin_nonpos
    (cls0001TraceOfSeq seq) (cls0001TraceOfSeq_accepts seq hlabels)

theorem graphSmoke_cls0001_seq_language_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hseq : cls0001FaceSeqLanguage seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0001_seq_of_trie_labels_scaled_margin_nonpos
    seq (cls0001FaceSeqLanguage_labels_eq seq hseq)

theorem graphSmoke_cls0001_pair_sign_language_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hseq : cls0001PairSignLanguage seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0001_seq_language_scaled_margin_nonpos
    seq (cls0001PairSignLanguage_same seq hseq)

theorem graphSmoke_cls0001_axis_forces_scaled_margin_nonpos
    (seq : Step14 -> Face) (axis : Vec3 Rat)
    (kernel : KernelLineWitness)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0001Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord (unrankPairWord cls0001Rank))
        axis kernel = true)
    (hForces :
      AxisForcesForcedSeq (unrankPairWord cls0001Rank)
        axis cls0001FaceSeq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0001_pair_sign_language_scaled_margin_nonpos
    seq
    (pairSignLanguageAtRank_of_axisForces
      hRealize hAxisConstraints hKernel hForces)

theorem graphSmoke_cls0001_generated_axis_forces_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0001Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 :=
  graphSmoke_cls0001_axis_forces_scaled_margin_nonpos
    seq cls0001Axis cls0001Kernel hRealize hAxisConstraints
    cls0001KernelCheck cls0001AxisForces

theorem graphSmoke_cls0001_generated_axis_forces_bridge_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0001Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0001TraceOfSeq
  have hrun :
      BellmanLabelStepRun SmokeStep rootState
        trieNode0024State
        (faceLabelsInContributionOrder smokeLabelOfFace cls0001FaceSeq)
        trieNode0024Gain := by
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0024State
      (smokeLabelsOfSeq cls0001FaceSeq) trieNode0024Gain
    rw [cls0001FaceSeqLabels_eq]
    exact trieNode0024Run
  exact scaledMargin_nonpos_of_axisForces_labelStepRun
    (labelOfFace := smokeLabelOfFace)
    (V := graphPotential)
    (Step := SmokeStep)
    (rank := cls0001Rank)
    (axis := cls0001Axis)
    (kernel := cls0001Kernel)
    (forcedSeq := cls0001FaceSeq)
    (seq := seq)
    (start := rootState)
    (finish := trieNode0024State)
    (gain := trieNode0024Gain)
    (const := 176)
    (margin := smokeScaledMargin SmokeObj.cls0001)
    hrun
    (fun _ _ _ _ h => SmokeStep.valid h)
    cls0001TrieFinal_nonneg
    root_bound
    cls0001TrieMargin_bound_gain
    hRealize hAxisConstraints cls0001KernelCheck cls0001AxisForces

private def cls0001ContainsRank (rank : Fin numPairWords) : Prop :=
  rank = cls0001Rank

private def cls0001ScaledMarginAtRank (_rank : Fin numPairWords) : Int :=
  smokeScaledMargin SmokeObj.cls0001

private def cls0001AxisRankFamily :
    BellmanAxisRankFamily
      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) cls0001ContainsRank
      cls0001ScaledMarginAtRank where
  forcedSeq := cls0001FaceSeq
  axis := cls0001Axis
  kernel := cls0001Kernel
  finish := trieNode0024State
  gain := trieNode0024Gain
  run := by
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0024State
      (smokeLabelsOfSeq cls0001FaceSeq) trieNode0024Gain
    rw [cls0001FaceSeqLabels_eq]
    exact trieNode0024Run
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  finish_nonneg := cls0001TrieFinal_nonneg
  root_bound := root_bound
  margin_bound := by
    intro rank hrank
    unfold cls0001ScaledMarginAtRank
    exact cls0001TrieMargin_bound_gain
  kernel_check := by
    intro rank hrank
    rw [hrank]
    exact cls0001KernelCheck
  axis_forces := by
    intro rank hrank
    rw [hrank]
    exact cls0001AxisForces

theorem graphSmoke_cls0001_axis_rank_family_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0001Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0001TraceOfSeq
  exact BellmanAxisRankFamily.scaledMargin_nonpos
    cls0001AxisRankFamily
    (rank := cls0001Rank)
    (seq := seq)
    rfl
    hRealize
    hAxisConstraints

private def cls0001AxisRankLanguageFamily :
    BellmanAxisRankLanguageFamily
      State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) cls0001ContainsRank
      cls0001ScaledMarginAtRank where
  axis := cls0001Axis
  kernel := by
    intro rank hrank
    exact cls0001Kernel
  forcedSeq := by
    intro rank hrank
    exact cls0001FaceSeq
  finish := by
    intro rank hrank
    exact trieNode0024State
  gain := by
    intro rank hrank
    exact trieNode0024Gain
  run := by
    intro rank hrank
    change BellmanLabelStepRun SmokeStep rootState
      trieNode0024State
      (smokeLabelsOfSeq cls0001FaceSeq) trieNode0024Gain
    rw [cls0001FaceSeqLabels_eq]
    exact trieNode0024Run
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  finish_nonneg := by
    intro rank hrank
    exact cls0001TrieFinal_nonneg
  root_bound := root_bound
  margin_bound := by
    intro rank hrank
    unfold cls0001ScaledMarginAtRank
    exact cls0001TrieMargin_bound_gain
  kernel_check := by
    intro rank hrank
    rw [hrank]
    exact cls0001KernelCheck
  axis_forces := by
    intro rank hrank
    rw [hrank]
    exact cls0001AxisForces

theorem graphSmoke_cls0001_axis_rank_language_family_scaled_margin_nonpos
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord cls0001Rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq seq) <= 0 := by
  unfold smokeLabelStepTraceScaledMargin cls0001TraceOfSeq
  exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos
    cls0001AxisRankLanguageFamily
    (rank := cls0001Rank)
    (seq := seq)
    rfl
    hRealize
    hAxisConstraints

theorem graphSmoke_cls0001_face_seq_trace_scaled_margin_nonpos :
    smokeLabelStepTraceScaledMargin (cls0001TraceOfSeq cls0001FaceSeq) <= 0 :=
  graphSmoke_cls0001_seq_language_scaled_margin_nonpos
    cls0001FaceSeq (fun _ => rfl)

-- sampled eval trie nodes, including root: 25
private theorem trieNode0000Eval :
    evalLabelStepFn smokeNext rootState trieNode0000Labels =
      some (trieNode0000State, trieNode0000Gain) := by
  unfold trieNode0000State trieNode0000Labels trieNode0000Gain
  simp [evalLabelStepFn]

private theorem trieNode0001StepEval :
    evalLabelStepFn smokeNext trieNode0000State
      trieNode0001StepLabels =
        some (trieNode0001State, trieNode0001StepGain) := by
  change evalLabelStepFn smokeNext State.s0000
    [SmokeLabel.l0008] = some (State.s0142, 103)
  rfl

private theorem trieNode0001Eval :
    evalLabelStepFn smokeNext rootState trieNode0001Labels =
      some (trieNode0001State, trieNode0001Gain) := by
  unfold trieNode0001Labels trieNode0001Gain
  exact evalLabelStepFn_append trieNode0000Eval trieNode0001StepEval

private theorem trieNode0002StepEval :
    evalLabelStepFn smokeNext trieNode0001State
      trieNode0002StepLabels =
        some (trieNode0002State, trieNode0002StepGain) := by
  change evalLabelStepFn smokeNext State.s0142
    [SmokeLabel.l0010] = some (State.s0143, -73)
  rfl

private theorem trieNode0002Eval :
    evalLabelStepFn smokeNext rootState trieNode0002Labels =
      some (trieNode0002State, trieNode0002Gain) := by
  unfold trieNode0002Labels trieNode0002Gain
  exact evalLabelStepFn_append trieNode0001Eval trieNode0002StepEval

private theorem trieNode0003StepEval :
    evalLabelStepFn smokeNext trieNode0002State
      trieNode0003StepLabels =
        some (trieNode0003State, trieNode0003StepGain) := by
  change evalLabelStepFn smokeNext State.s0143
    [SmokeLabel.l0011] = some (State.s0144, -73)
  rfl

private theorem trieNode0003Eval :
    evalLabelStepFn smokeNext rootState trieNode0003Labels =
      some (trieNode0003State, trieNode0003Gain) := by
  unfold trieNode0003Labels trieNode0003Gain
  exact evalLabelStepFn_append trieNode0002Eval trieNode0003StepEval

private theorem trieNode0004StepEval :
    evalLabelStepFn smokeNext trieNode0003State
      trieNode0004StepLabels =
        some (trieNode0004State, trieNode0004StepGain) := by
  change evalLabelStepFn smokeNext State.s0144
    [SmokeLabel.l0012] = some (State.s0147, -10)
  rfl

private theorem trieNode0004Eval :
    evalLabelStepFn smokeNext rootState trieNode0004Labels =
      some (trieNode0004State, trieNode0004Gain) := by
  unfold trieNode0004Labels trieNode0004Gain
  exact evalLabelStepFn_append trieNode0003Eval trieNode0004StepEval

private theorem trieNode0005StepEval :
    evalLabelStepFn smokeNext trieNode0004State
      trieNode0005StepLabels =
        some (trieNode0005State, trieNode0005StepGain) := by
  change evalLabelStepFn smokeNext State.s0147
    [SmokeLabel.l0013] = some (State.s0153, -10)
  rfl

private theorem trieNode0005Eval :
    evalLabelStepFn smokeNext rootState trieNode0005Labels =
      some (trieNode0005State, trieNode0005Gain) := by
  unfold trieNode0005Labels trieNode0005Gain
  exact evalLabelStepFn_append trieNode0004Eval trieNode0005StepEval

private theorem trieNode0015StepEval :
    evalLabelStepFn smokeNext trieNode0004State
      trieNode0015StepLabels =
        some (trieNode0015State, trieNode0015StepGain) := by
  change evalLabelStepFn smokeNext State.s0147
    [SmokeLabel.l0001] = some (State.s0155, -124)
  rfl

private theorem trieNode0015Eval :
    evalLabelStepFn smokeNext rootState trieNode0015Labels =
      some (trieNode0015State, trieNode0015Gain) := by
  unfold trieNode0015Labels trieNode0015Gain
  exact evalLabelStepFn_append trieNode0004Eval trieNode0015StepEval

private theorem trieNode0006StepEval :
    evalLabelStepFn smokeNext trieNode0005State
      trieNode0006StepLabels =
        some (trieNode0006State, trieNode0006StepGain) := by
  change evalLabelStepFn smokeNext State.s0153
    [SmokeLabel.l0000] = some (State.s0163, -124)
  rfl

private theorem trieNode0006Eval :
    evalLabelStepFn smokeNext rootState trieNode0006Labels =
      some (trieNode0006State, trieNode0006Gain) := by
  unfold trieNode0006Labels trieNode0006Gain
  exact evalLabelStepFn_append trieNode0005Eval trieNode0006StepEval

private theorem trieNode0016StepEval :
    evalLabelStepFn smokeNext trieNode0015State
      trieNode0016StepLabels =
        some (trieNode0016State, trieNode0016StepGain) := by
  change evalLabelStepFn smokeNext State.s0155
    [SmokeLabel.l0005] = some (State.s0166, 96)
  rfl

private theorem trieNode0016Eval :
    evalLabelStepFn smokeNext rootState trieNode0016Labels =
      some (trieNode0016State, trieNode0016Gain) := by
  unfold trieNode0016Labels trieNode0016Gain
  exact evalLabelStepFn_append trieNode0015Eval trieNode0016StepEval

private theorem trieNode0007StepEval :
    evalLabelStepFn smokeNext trieNode0006State
      trieNode0007StepLabels =
        some (trieNode0007State, trieNode0007StepGain) := by
  change evalLabelStepFn smokeNext State.s0163
    [SmokeLabel.l0004] = some (State.s0176, 96)
  rfl

private theorem trieNode0007Eval :
    evalLabelStepFn smokeNext rootState trieNode0007Labels =
      some (trieNode0007State, trieNode0007Gain) := by
  unfold trieNode0007Labels trieNode0007Gain
  exact evalLabelStepFn_append trieNode0006Eval trieNode0007StepEval

private theorem trieNode0017StepEval :
    evalLabelStepFn smokeNext trieNode0016State
      trieNode0017StepLabels =
        some (trieNode0017State, trieNode0017StepGain) := by
  change evalLabelStepFn smokeNext State.s0166
    [SmokeLabel.l0007] = some (State.s0179, -36)
  rfl

private theorem trieNode0017Eval :
    evalLabelStepFn smokeNext rootState trieNode0017Labels =
      some (trieNode0017State, trieNode0017Gain) := by
  unfold trieNode0017Labels trieNode0017Gain
  exact evalLabelStepFn_append trieNode0016Eval trieNode0017StepEval

private theorem trieNode0008StepEval :
    evalLabelStepFn smokeNext trieNode0007State
      trieNode0008StepLabels =
        some (trieNode0008State, trieNode0008StepGain) := by
  change evalLabelStepFn smokeNext State.s0176
    [SmokeLabel.l0006] = some (State.s0191, -36)
  rfl

private theorem trieNode0008Eval :
    evalLabelStepFn smokeNext rootState trieNode0008Labels =
      some (trieNode0008State, trieNode0008Gain) := by
  unfold trieNode0008Labels trieNode0008Gain
  exact evalLabelStepFn_append trieNode0007Eval trieNode0008StepEval

private theorem trieNode0018StepEval :
    evalLabelStepFn smokeNext trieNode0017State
      trieNode0018StepLabels =
        some (trieNode0018State, trieNode0018StepGain) := by
  change evalLabelStepFn smokeNext State.s0179
    [SmokeLabel.l0004] = some (State.s0194, -144)
  rfl

private theorem trieNode0018Eval :
    evalLabelStepFn smokeNext rootState trieNode0018Labels =
      some (trieNode0018State, trieNode0018Gain) := by
  unfold trieNode0018Labels trieNode0018Gain
  exact evalLabelStepFn_append trieNode0017Eval trieNode0018StepEval

private theorem trieNode0009StepEval :
    evalLabelStepFn smokeNext trieNode0008State
      trieNode0009StepLabels =
        some (trieNode0009State, trieNode0009StepGain) := by
  change evalLabelStepFn smokeNext State.s0191
    [SmokeLabel.l0005] = some (State.s0208, -144)
  rfl

private theorem trieNode0009Eval :
    evalLabelStepFn smokeNext rootState trieNode0009Labels =
      some (trieNode0009State, trieNode0009Gain) := by
  unfold trieNode0009Labels trieNode0009Gain
  exact evalLabelStepFn_append trieNode0008Eval trieNode0009StepEval

private theorem trieNode0019StepEval :
    evalLabelStepFn smokeNext trieNode0018State
      trieNode0019StepLabels =
        some (trieNode0019State, trieNode0019StepGain) := by
  change evalLabelStepFn smokeNext State.s0194
    [SmokeLabel.l0003] = some (State.s0211, -144)
  rfl

private theorem trieNode0019Eval :
    evalLabelStepFn smokeNext rootState trieNode0019Labels =
      some (trieNode0019State, trieNode0019Gain) := by
  unfold trieNode0019Labels trieNode0019Gain
  exact evalLabelStepFn_append trieNode0018Eval trieNode0019StepEval

private theorem trieNode0010StepEval :
    evalLabelStepFn smokeNext trieNode0009State
      trieNode0010StepLabels =
        some (trieNode0010State, trieNode0010StepGain) := by
  change evalLabelStepFn smokeNext State.s0208
    [SmokeLabel.l0002] = some (State.s0006, -144)
  rfl

private theorem trieNode0010Eval :
    evalLabelStepFn smokeNext rootState trieNode0010Labels =
      some (trieNode0010State, trieNode0010Gain) := by
  unfold trieNode0010Labels trieNode0010Gain
  exact evalLabelStepFn_append trieNode0009Eval trieNode0010StepEval

private theorem trieNode0020StepEval :
    evalLabelStepFn smokeNext trieNode0019State
      trieNode0020StepLabels =
        some (trieNode0020State, trieNode0020StepGain) := by
  change evalLabelStepFn smokeNext State.s0211
    [SmokeLabel.l0006] = some (State.s0011, -36)
  rfl

private theorem trieNode0020Eval :
    evalLabelStepFn smokeNext rootState trieNode0020Labels =
      some (trieNode0020State, trieNode0020Gain) := by
  unfold trieNode0020Labels trieNode0020Gain
  exact evalLabelStepFn_append trieNode0019Eval trieNode0020StepEval

private theorem trieNode0011StepEval :
    evalLabelStepFn smokeNext trieNode0010State
      trieNode0011StepLabels =
        some (trieNode0011State, trieNode0011StepGain) := by
  change evalLabelStepFn smokeNext State.s0006
    [SmokeLabel.l0007] = some (State.s0036, -36)
  rfl

private theorem trieNode0011Eval :
    evalLabelStepFn smokeNext rootState trieNode0011Labels =
      some (trieNode0011State, trieNode0011Gain) := by
  unfold trieNode0011Labels trieNode0011Gain
  exact evalLabelStepFn_append trieNode0010Eval trieNode0011StepEval

private theorem trieNode0021StepEval :
    evalLabelStepFn smokeNext trieNode0020State
      trieNode0021StepLabels =
        some (trieNode0021State, trieNode0021StepGain) := by
  change evalLabelStepFn smokeNext State.s0011
    [SmokeLabel.l0002] = some (State.s0041, 96)
  rfl

private theorem trieNode0021Eval :
    evalLabelStepFn smokeNext rootState trieNode0021Labels =
      some (trieNode0021State, trieNode0021Gain) := by
  unfold trieNode0021Labels trieNode0021Gain
  exact evalLabelStepFn_append trieNode0020Eval trieNode0021StepEval

private theorem trieNode0012StepEval :
    evalLabelStepFn smokeNext trieNode0011State
      trieNode0012StepLabels =
        some (trieNode0012State, trieNode0012StepGain) := by
  change evalLabelStepFn smokeNext State.s0036
    [SmokeLabel.l0003] = some (State.s0069, 96)
  rfl

private theorem trieNode0012Eval :
    evalLabelStepFn smokeNext rootState trieNode0012Labels =
      some (trieNode0012State, trieNode0012Gain) := by
  unfold trieNode0012Labels trieNode0012Gain
  exact evalLabelStepFn_append trieNode0011Eval trieNode0012StepEval

private theorem trieNode0022StepEval :
    evalLabelStepFn smokeNext trieNode0021State
      trieNode0022StepLabels =
        some (trieNode0022State, trieNode0022StepGain) := by
  change evalLabelStepFn smokeNext State.s0041
    [SmokeLabel.l0000] = some (State.s0075, -124)
  rfl

private theorem trieNode0022Eval :
    evalLabelStepFn smokeNext rootState trieNode0022Labels =
      some (trieNode0022State, trieNode0022Gain) := by
  unfold trieNode0022Labels trieNode0022Gain
  exact evalLabelStepFn_append trieNode0021Eval trieNode0022StepEval

private theorem trieNode0013StepEval :
    evalLabelStepFn smokeNext trieNode0012State
      trieNode0013StepLabels =
        some (trieNode0013State, trieNode0013StepGain) := by
  change evalLabelStepFn smokeNext State.s0069
    [SmokeLabel.l0001] = some (State.s0112, -124)
  rfl

private theorem trieNode0013Eval :
    evalLabelStepFn smokeNext rootState trieNode0013Labels =
      some (trieNode0013State, trieNode0013Gain) := by
  unfold trieNode0013Labels trieNode0013Gain
  exact evalLabelStepFn_append trieNode0012Eval trieNode0013StepEval

private theorem trieNode0023StepEval :
    evalLabelStepFn smokeNext trieNode0022State
      trieNode0023StepLabels =
        some (trieNode0023State, trieNode0023StepGain) := by
  change evalLabelStepFn smokeNext State.s0075
    [SmokeLabel.l0013] = some (State.s0109, -10)
  rfl

private theorem trieNode0023Eval :
    evalLabelStepFn smokeNext rootState trieNode0023Labels =
      some (trieNode0023State, trieNode0023Gain) := by
  unfold trieNode0023Labels trieNode0023Gain
  exact evalLabelStepFn_append trieNode0022Eval trieNode0023StepEval

private theorem trieNode0014StepEval :
    evalLabelStepFn smokeNext trieNode0013State
      trieNode0014StepLabels =
        some (trieNode0014State, trieNode0014StepGain) := by
  change evalLabelStepFn smokeNext State.s0112
    [SmokeLabel.l0009] = some (State.s0141, -73)
  rfl

private theorem trieNode0014Eval :
    evalLabelStepFn smokeNext rootState trieNode0014Labels =
      some (trieNode0014State, trieNode0014Gain) := by
  unfold trieNode0014Labels trieNode0014Gain
  exact evalLabelStepFn_append trieNode0013Eval trieNode0014StepEval

private theorem trieNode0024StepEval :
    evalLabelStepFn smokeNext trieNode0023State
      trieNode0024StepLabels =
        some (trieNode0024State, trieNode0024StepGain) := by
  change evalLabelStepFn smokeNext State.s0109
    [SmokeLabel.l0009] = some (State.s0138, -73)
  rfl

private theorem trieNode0024Eval :
    evalLabelStepFn smokeNext rootState trieNode0024Labels =
      some (trieNode0024State, trieNode0024Gain) := by
  unfold trieNode0024Labels trieNode0024Gain
  exact evalLabelStepFn_append trieNode0023Eval trieNode0024StepEval

private inductive SampledRankIndex where
  | i0000
  | i0001

private def sampledRankOf : SampledRankIndex -> Fin numPairWords
  | SampledRankIndex.i0000 => cls0000Rank
  | SampledRankIndex.i0001 => cls0001Rank

private def sampledContainsRank (rank : Fin numPairWords) : Prop :=
  exists idx : SampledRankIndex, sampledRankOf idx = rank

private def sampledScaledMarginAtRank (rank : Fin numPairWords) : Int :=
  if rank = cls0000Rank then smokeScaledMargin SmokeObj.cls0000 else
  if rank = cls0001Rank then smokeScaledMargin SmokeObj.cls0001 else
  0

private theorem cls0000PositiveCert_xpStartInterior_margin_positive :
    XpStartInteriorQ cls0000PositiveCert.p0 ->
      0 < sampledScaledMarginAtRank cls0000Rank := by
  intro hInterior
  have hNotInterior : ¬ XpStartInteriorQ cls0000PositiveCert.p0 := by
    unfold XpStartInteriorQ cls0000PositiveCert
    norm_num
  exact False.elim (hNotInterior hInterior)

private theorem cls0001PositiveCert_xpStartInterior_margin_positive :
    XpStartInteriorQ cls0001PositiveCert.p0 ->
      0 < sampledScaledMarginAtRank cls0001Rank := by
  intro hInterior
  have hNotInterior : ¬ XpStartInteriorQ cls0001PositiveCert.p0 := by
    unfold XpStartInteriorQ cls0001PositiveCert
    norm_num
  exact False.elim (hNotInterior hInterior)

private def sampledAxisRankIndexedFamily :
    BellmanAxisRankIndexedFamily
      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) sampledRankOf
      sampledScaledMarginAtRank where
  axis := cls0000Axis
  kernel := by
    intro idx
    cases idx
    · exact cls0000Kernel
    · exact cls0001Kernel
  forcedSeq := by
    intro idx
    cases idx
    · exact cls0000FaceSeq
    · exact cls0001FaceSeq
  finish := by
    intro idx
    cases idx
    · exact trieNode0014State
    · exact trieNode0024State
  gain := by
    intro idx
    cases idx
    · exact trieNode0014Gain
    · exact trieNode0024Gain
  run := by
    intro idx
    cases idx
    · change BellmanLabelStepRun SmokeStep rootState
        trieNode0014State
        (smokeLabelsOfSeq cls0000FaceSeq) trieNode0014Gain
      rw [cls0000FaceSeqLabels_eq]
      exact trieNode0014Run
    · change BellmanLabelStepRun SmokeStep rootState
        trieNode0024State
        (smokeLabelsOfSeq cls0001FaceSeq) trieNode0024Gain
      rw [cls0001FaceSeqLabels_eq]
      exact trieNode0024Run
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  finish_nonneg := by
    intro idx
    cases idx
    · exact cls0000TrieFinal_nonneg
    · exact cls0001TrieFinal_nonneg
  root_bound := root_bound
  margin_bound := by
    intro idx
    cases idx
    · unfold sampledRankOf sampledScaledMarginAtRank
      simp
      exact cls0000TrieMargin_bound_gain
    · unfold sampledRankOf sampledScaledMarginAtRank
      simp
      exact cls0001TrieMargin_bound_gain
  kernel_check := by
    intro idx
    cases idx
    · change checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord cls0000Rank))
        cls0000Axis cls0000Kernel = true
      exact cls0000KernelCheck
    · change checkKernelLineWitness
        (totalLinearOfPairWord (unrankPairWord cls0001Rank))
        cls0000Axis cls0001Kernel = true
      exact cls0001KernelCheck
  axis_forces := by
    intro idx
    cases idx
    · change AxisForcesForcedSeq (unrankPairWord cls0000Rank)
        cls0000Axis cls0000FaceSeq
      exact cls0000AxisForces
    · change AxisForcesForcedSeq (unrankPairWord cls0001Rank)
        cls0000Axis cls0001FaceSeq
      exact cls0001AxisForces

theorem graphSmoke_sampled_axis_indexed_rank_family_scaled_margin_nonpos
    (idx : SampledRankIndex)
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    sampledScaledMarginAtRank (sampledRankOf idx) <= 0 :=
  BellmanAxisRankIndexedFamily.scaledMargin_nonpos
    sampledAxisRankIndexedFamily
    idx
    hRealize
    hAxisConstraints

private def sampledAxisRankIndexedCover :
    BellmanAxisRankIndexedCover
      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) sampledRankOf sampledContainsRank
      sampledScaledMarginAtRank where
  family := sampledAxisRankIndexedFamily
  covers := by
    intro rank hrank
    exact hrank

theorem graphSmoke_sampled_axis_rank_language_family_scaled_margin_nonpos
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank)
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    sampledScaledMarginAtRank rank <= 0 :=
  BellmanAxisRankIndexedCover.scaledMargin_nonpos
    sampledAxisRankIndexedCover hrank hRealize hAxisConstraints

private def sampledObjectForcedSeq : SampledRankIndex -> Step14 -> Face
  | SampledRankIndex.i0000 => cls0000FaceSeq
  | SampledRankIndex.i0001 => cls0001FaceSeq

private def sampledObjectAccepts (idx : SampledRankIndex) : Prop :=
  AxisForcesForcedSeq (unrankPairWord (sampledRankOf idx))
    cls0000Axis (sampledObjectForcedSeq idx)

private def sampledAxisRankObjectCover :
    BellmanAxisRankObjectCover
      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace
      rootState (176 : Int) sampledRankOf sampledObjectAccepts
      sampledContainsRank sampledScaledMarginAtRank where
  forcedSeq := sampledObjectForcedSeq
  trace_bound := by
    intro idx _hAccept
    cases idx
    · refine ⟨trieNode0014State, trieNode0014Gain, ?_, ?_, ?_⟩
      · change BellmanLabelStepRun SmokeStep rootState
          trieNode0014State
          (smokeLabelsOfSeq cls0000FaceSeq) trieNode0014Gain
        rw [cls0000FaceSeqLabels_eq]
        exact trieNode0014Run
      · exact cls0000TrieFinal_nonneg
      · unfold sampledRankOf sampledScaledMarginAtRank
        simp
        exact cls0000TrieMargin_bound_gain
    · refine ⟨trieNode0024State, trieNode0024Gain, ?_, ?_, ?_⟩
      · change BellmanLabelStepRun SmokeStep rootState
          trieNode0024State
          (smokeLabelsOfSeq cls0001FaceSeq) trieNode0024Gain
        rw [cls0001FaceSeqLabels_eq]
        exact trieNode0024Run
      · exact cls0001TrieFinal_nonneg
      · unfold sampledRankOf sampledScaledMarginAtRank
        simp
        exact cls0001TrieMargin_bound_gain
  step_valid := by
    intro s label t gain h
    exact SmokeStep.valid h
  root_bound := root_bound
  covers := by
    intro rank hrank
    rcases hrank with ⟨idx, hidx⟩
    have hAccept : sampledObjectAccepts idx := by
      cases idx
      · change AxisForcesForcedSeq (unrankPairWord cls0000Rank)
          cls0000Axis cls0000FaceSeq
        exact cls0000AxisForces
      · change AxisForcesForcedSeq (unrankPairWord cls0001Rank)
          cls0000Axis cls0001FaceSeq
        exact cls0001AxisForces
    exact ⟨idx, hAccept, hidx⟩

theorem graphSmoke_sampled_axis_object_cover_scaled_margin_nonpos
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    sampledScaledMarginAtRank rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    sampledAxisRankObjectCover hrank

private def sampledAxisRankObjectCoverEval :
    BellmanAxisRankObjectCover
      SampledRankIndex State SmokeLabel graphPotential SmokeStepEval smokeLabelOfFace
      rootState (176 : Int) sampledRankOf sampledObjectAccepts
      sampledContainsRank sampledScaledMarginAtRank where
  forcedSeq := sampledObjectForcedSeq
  trace_bound := by
    intro idx _hAccept
    cases idx
    · refine ⟨trieNode0014State, trieNode0014Gain, ?_, ?_, ?_⟩
      · have heval :
          evalLabelStepFn smokeNext rootState
            (smokeLabelsOfSeq cls0000FaceSeq) =
              some (trieNode0014State, trieNode0014Gain) := by
          rw [cls0000FaceSeqLabels_eq]
          exact trieNode0014Eval
        exact bellmanLabelStepRun_of_evalLabelStepFn
          (Step := SmokeStepEval)
          (next := smokeNext)
          (start := rootState)
          (labels := smokeLabelsOfSeq cls0000FaceSeq)
          (result := (trieNode0014State, trieNode0014Gain))
          (by
            intro s label t gain h
            exact SmokeStepEval.sound h)
          heval
      · exact cls0000TrieFinal_nonneg
      · unfold sampledRankOf sampledScaledMarginAtRank
        simp
        exact cls0000TrieMargin_bound_gain
    · refine ⟨trieNode0024State, trieNode0024Gain, ?_, ?_, ?_⟩
      · have heval :
          evalLabelStepFn smokeNext rootState
            (smokeLabelsOfSeq cls0001FaceSeq) =
              some (trieNode0024State, trieNode0024Gain) := by
          rw [cls0001FaceSeqLabels_eq]
          exact trieNode0024Eval
        exact bellmanLabelStepRun_of_evalLabelStepFn
          (Step := SmokeStepEval)
          (next := smokeNext)
          (start := rootState)
          (labels := smokeLabelsOfSeq cls0001FaceSeq)
          (result := (trieNode0024State, trieNode0024Gain))
          (by
            intro s label t gain h
            exact SmokeStepEval.sound h)
          heval
      · exact cls0001TrieFinal_nonneg
      · unfold sampledRankOf sampledScaledMarginAtRank
        simp
        exact cls0001TrieMargin_bound_gain
  step_valid := by
    intro s label t gain h
    exact SmokeStepEval.valid h
  root_bound := root_bound
  covers := by
    intro rank hrank
    rcases hrank with ⟨idx, hidx⟩
    have hAccept : sampledObjectAccepts idx := by
      cases idx
      · change AxisForcesForcedSeq (unrankPairWord cls0000Rank)
          cls0000Axis cls0000FaceSeq
        exact cls0000AxisForces
      · change AxisForcesForcedSeq (unrankPairWord cls0001Rank)
          cls0000Axis cls0001FaceSeq
        exact cls0001AxisForces
    exact ⟨idx, hAccept, hidx⟩

theorem graphSmoke_sampled_axis_object_cover_eval_scaled_margin_nonpos
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    sampledScaledMarginAtRank rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    sampledAxisRankObjectCoverEval hrank

private def sampledObjectStartViolationCert :
    forall idx, sampledObjectAccepts idx ->
      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
        (sampledRankOf idx)
        (sampledScaledMarginAtRank (sampledRankOf idx))
  | idx, _hAccept => by
      cases idx
      · refine {
          cert := cls0000PositiveCert,
          word_eq := ?_,
          kernel_check := cls0000PositiveCert_kernelCheck,
          solve_check := cls0000PositiveCert_axisSolveCheck,
          axis_forces := cls0000PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0000PositiveCert_badFace_ne_xp,
          badFace_violation := cls0000PositiveCert_badFaceViolation
        }
        change cls0000Word = unrankPairWord cls0000Rank
        exact cls0000_unrank_word.symm
      · refine {
          cert := cls0001PositiveCert,
          word_eq := ?_,
          kernel_check := cls0001PositiveCert_kernelCheck,
          solve_check := cls0001PositiveCert_axisSolveCheck,
          axis_forces := cls0001PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0001PositiveCert_badFace_ne_xp,
          badFace_violation := cls0001PositiveCert_badFaceViolation
        }
        change cls0001Word = unrankPairWord cls0001Rank
        exact cls0001_unrank_word.symm

theorem graphSmoke_sampled_axis_object_cover_rank_killed_of_start_violation
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    sampledAxisRankObjectCover sampledObjectStartViolationCert hrank

theorem graphSmoke_sampled_axis_object_cover_eval_rank_killed_of_start_violation
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    sampledAxisRankObjectCoverEval sampledObjectStartViolationCert hrank

theorem graphSmoke_sampled_axis_object_cover_rank_killed_of_margin_positive
    (hpositive :
      forall idx seq,
        sampledObjectAccepts idx ->
        SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        NonIdentityAxisConstraints seq ->
        0 < sampledScaledMarginAtRank (sampledRankOf idx))
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_cover_margin_positive
    sampledAxisRankObjectCover hpositive hrank

theorem graphSmoke_sampled_axis_rank_killed_of_margin_positive
    (hpositive :
      forall idx seq,
        SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        NonIdentityAxisConstraints seq ->
        0 < sampledScaledMarginAtRank (sampledRankOf idx))
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_indexed_cover_margin_positive
    sampledAxisRankIndexedCover hpositive hrank

private theorem graphSmoke_sampled_axis_rank_positive_margin
    (idx : SampledRankIndex)
    (seq : Step14 -> Face)
    (hRealize : SeqRealizesPairWord (unrankPairWord (sampledRankOf idx)) seq)
    (_hStart : StartsXp seq)
    (_hLinear : totalLinear seq ≠ (matId : Mat3 Rat))
    (hAxis : NonIdentityAxisConstraints seq) :
    0 < sampledScaledMarginAtRank (sampledRankOf idx) := by
  cases idx
  · have hRealizeCert : SeqRealizesPairWord cls0000PositiveCert.word seq := by
      change SeqRealizesPairWord cls0000Word seq
      rw [← cls0000_unrank_word]
      exact hRealize
    exact
      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.positive_margin_of_axis_forces_start_interior
        hRealizeCert hAxis cls0000PositiveCert_kernelCheck
        cls0000PositiveCert_axisSolveCheck cls0000PositiveCert_axisForces
        cls0000PositiveCert_xpStartInterior_margin_positive
  · have hRealizeCert : SeqRealizesPairWord cls0001PositiveCert.word seq := by
      change SeqRealizesPairWord cls0001Word seq
      rw [← cls0001_unrank_word]
      exact hRealize
    exact
      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.positive_margin_of_axis_forces_start_interior
        hRealizeCert hAxis cls0001PositiveCert_kernelCheck
        cls0001PositiveCert_axisSolveCheck cls0001PositiveCert_axisForces
        cls0001PositiveCert_xpStartInterior_margin_positive

theorem graphSmoke_sampled_axis_rank_killed
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  graphSmoke_sampled_axis_object_cover_eval_rank_killed_of_start_violation
    hrank

theorem graphSmoke_argmax_object_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=
  graphSmoke_observed_objects_scaled_margin_nonpos

theorem bellmanGraphSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
