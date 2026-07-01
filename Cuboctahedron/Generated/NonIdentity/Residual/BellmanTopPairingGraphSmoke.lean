import Cuboctahedron.Search.BellmanPotential

set_option maxRecDepth 4096

/-!
Generated-style graph smoke for a Bellman nonidentity margin family.

This file is not final generated coverage.  It verifies one bounded
private Bellman graph emitted from the exact tri-source profiler.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke

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
  | State.s0159 => -368
  | State.s0160 => -376
  | State.s0161 => -142
  | State.s0162 => -365
  | State.s0163 => -365
  | State.s0164 => -347
  | State.s0165 => -479
  | State.s0166 => -471
  | State.s0167 => -197
  | State.s0168 => -358
  | State.s0169 => -578
  | State.s0170 => -358
  | State.s0171 => -332
  | State.s0172 => -376
  | State.s0173 => 2
  | State.s0174 => -461
  | State.s0175 => -461
  | State.s0176 => -461
  | State.s0177 => -311
  | State.s0178 => -435
  | State.s0179 => -479
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
  | State.s0192 => -167
  | State.s0193 => -191
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
  | State.s0209 => -23
  | State.s0210 => -191
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
  { src := State.s0151, gain := 96, dst := State.s0159 }

private theorem edge0142_valid : edge0142.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0159 <= graphPotential State.s0151
  decide

private def edge0143 : BellmanEdge State :=
  { src := State.s0152, gain := -18, dst := State.s0160 }

private theorem edge0143_valid : edge0143.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0160 <= graphPotential State.s0152
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
  { src := State.s0154, gain := 96, dst := State.s0164 }

private theorem edge0147_valid : edge0147.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0164 <= graphPotential State.s0154
  decide

private def edge0148 : BellmanEdge State :=
  { src := State.s0155, gain := 96, dst := State.s0166 }

private theorem edge0148_valid : edge0148.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0166 <= graphPotential State.s0155
  decide

private def edge0149 : BellmanEdge State :=
  { src := State.s0156, gain := -18, dst := State.s0165 }

private theorem edge0149_valid : edge0149.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0165 <= graphPotential State.s0156
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
  { src := State.s0159, gain := -36, dst := State.s0171 }

private theorem edge0153_valid : edge0153.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0171 <= graphPotential State.s0159
  decide

private def edge0154 : BellmanEdge State :=
  { src := State.s0160, gain := -18, dst := State.s0168 }

private theorem edge0154_valid : edge0154.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0168 <= graphPotential State.s0160
  decide

private def edge0155 : BellmanEdge State :=
  { src := State.s0161, gain := -54, dst := State.s0172 }

private theorem edge0155_valid : edge0155.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0172 <= graphPotential State.s0161
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
  { src := State.s0164, gain := -36, dst := State.s0177 }

private theorem edge0159_valid : edge0159.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0177 <= graphPotential State.s0164
  decide

private def edge0160 : BellmanEdge State :=
  { src := State.s0165, gain := -18, dst := State.s0174 }

private theorem edge0160_valid : edge0160.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0174 <= graphPotential State.s0165
  decide

private def edge0161 : BellmanEdge State :=
  { src := State.s0166, gain := -36, dst := State.s0178 }

private theorem edge0161_valid : edge0161.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0178 <= graphPotential State.s0166
  decide

private def edge0162 : BellmanEdge State :=
  { src := State.s0167, gain := -54, dst := State.s0179 }

private theorem edge0162_valid : edge0162.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0179 <= graphPotential State.s0167
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
  { src := State.s0171, gain := -144, dst := State.s0186 }

private theorem edge0167_valid : edge0167.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0186 <= graphPotential State.s0171
  decide

private def edge0168 : BellmanEdge State :=
  { src := State.s0172, gain := -54, dst := State.s0181 }

private theorem edge0168_valid : edge0168.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0181 <= graphPotential State.s0172
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
  { src := State.s0177, gain := -144, dst := State.s0192 }

private theorem edge0174_valid : edge0174.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0192 <= graphPotential State.s0177
  decide

private def edge0175 : BellmanEdge State :=
  { src := State.s0178, gain := -144, dst := State.s0194 }

private theorem edge0175_valid : edge0175.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0194 <= graphPotential State.s0178
  decide

private def edge0176 : BellmanEdge State :=
  { src := State.s0179, gain := -54, dst := State.s0188 }

private theorem edge0176_valid : edge0176.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0188 <= graphPotential State.s0179
  decide

private def edge0177 : BellmanEdge State :=
  { src := State.s0180, gain := 90, dst := State.s0193 }

private theorem edge0177_valid : edge0177.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0193 <= graphPotential State.s0180
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
  { src := State.s0192, gain := -144, dst := State.s0209 }

private theorem edge0191_valid : edge0191.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0209 <= graphPotential State.s0192
  decide

private def edge0192 : BellmanEdge State :=
  { src := State.s0193, gain := 90, dst := State.s0204 }

private theorem edge0192_valid : edge0192.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0204 <= graphPotential State.s0193
  decide

private def edge0193 : BellmanEdge State :=
  { src := State.s0194, gain := -144, dst := State.s0211 }

private theorem edge0193_valid : edge0193.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0211 <= graphPotential State.s0194
  decide

private def edge0194 : BellmanEdge State :=
  { src := State.s0195, gain := -54, dst := State.s0210 }

private theorem edge0194_valid : edge0194.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0210 <= graphPotential State.s0195
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
  { src := State.s0209, gain := -36, dst := State.s0009 }

private theorem edge0211_valid : edge0211.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0009 <= graphPotential State.s0209
  decide

private def edge0212 : BellmanEdge State :=
  { src := State.s0210, gain := -54, dst := State.s0001 }

private theorem edge0212_valid : edge0212.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0001 <= graphPotential State.s0210
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
  , edge0175
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
  · subst e; exact GraphEdge.e0175
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
  , edge0159
  , edge0174
  , edge0191
  , edge0211
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
  · subst e; exact GraphEdge.e0159
  · subst e; exact GraphEdge.e0174
  · subst e; exact GraphEdge.e0191
  · subst e; exact GraphEdge.e0211
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
  , edge0160
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
  · subst e; exact GraphEdge.e0160
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
  , edge0176
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
  · subst e; exact GraphEdge.e0176
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
  , edge0192
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
  · subst e; exact GraphEdge.e0192
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
  , edge0212
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
  · subst e; exact GraphEdge.e0212
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
  , edge0175
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
  · subst e; exact GraphEdge.e0175
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
  , edge0153
  , edge0167
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
  · subst e; exact GraphEdge.e0153
  · subst e; exact GraphEdge.e0167
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
  , edge0153
  , edge0167
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
  · subst e; exact GraphEdge.e0153
  · subst e; exact GraphEdge.e0167
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
  , edge0153
  , edge0167
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
  · subst e; exact GraphEdge.e0153
  · subst e; exact GraphEdge.e0167
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
  , edge0154
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
  · subst e; exact GraphEdge.e0154
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
  , edge0154
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
  · subst e; exact GraphEdge.e0154
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
  , edge0168
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
  · subst e; exact GraphEdge.e0168
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
  , edge0168
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
  · subst e; exact GraphEdge.e0168
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
  | e0153 : SmokeEdgeLabel edge0153 SmokeLabel.l0005
  | e0154 : SmokeEdgeLabel edge0154 SmokeLabel.l0012
  | e0155 : SmokeEdgeLabel edge0155 SmokeLabel.l0013
  | e0156 : SmokeEdgeLabel edge0156 SmokeLabel.l0007
  | e0157 : SmokeEdgeLabel edge0157 SmokeLabel.l0004
  | e0158 : SmokeEdgeLabel edge0158 SmokeLabel.l0004
  | e0159 : SmokeEdgeLabel edge0159 SmokeLabel.l0007
  | e0160 : SmokeEdgeLabel edge0160 SmokeLabel.l0012
  | e0161 : SmokeEdgeLabel edge0161 SmokeLabel.l0007
  | e0162 : SmokeEdgeLabel edge0162 SmokeLabel.l0013
  | e0163 : SmokeEdgeLabel edge0163 SmokeLabel.l0005
  | e0164 : SmokeEdgeLabel edge0164 SmokeLabel.l0004
  | e0165 : SmokeEdgeLabel edge0165 SmokeLabel.l0004
  | e0166 : SmokeEdgeLabel edge0166 SmokeLabel.l0004
  | e0167 : SmokeEdgeLabel edge0167 SmokeLabel.l0006
  | e0168 : SmokeEdgeLabel edge0168 SmokeLabel.l0012
  | e0169 : SmokeEdgeLabel edge0169 SmokeLabel.l0013
  | e0170 : SmokeEdgeLabel edge0170 SmokeLabel.l0000
  | e0171 : SmokeEdgeLabel edge0171 SmokeLabel.l0006
  | e0172 : SmokeEdgeLabel edge0172 SmokeLabel.l0006
  | e0173 : SmokeEdgeLabel edge0173 SmokeLabel.l0006
  | e0174 : SmokeEdgeLabel edge0174 SmokeLabel.l0004
  | e0175 : SmokeEdgeLabel edge0175 SmokeLabel.l0004
  | e0176 : SmokeEdgeLabel edge0176 SmokeLabel.l0012
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
  | e0191 : SmokeEdgeLabel edge0191 SmokeLabel.l0003
  | e0192 : SmokeEdgeLabel edge0192 SmokeLabel.l0012
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
  | e0211 : SmokeEdgeLabel edge0211 SmokeLabel.l0006
  | e0212 : SmokeEdgeLabel edge0212 SmokeLabel.l0012
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
  | e0153 : SmokeStep edge0153.src SmokeLabel.l0005 edge0153.dst edge0153.gain
  | e0154 : SmokeStep edge0154.src SmokeLabel.l0012 edge0154.dst edge0154.gain
  | e0155 : SmokeStep edge0155.src SmokeLabel.l0013 edge0155.dst edge0155.gain
  | e0156 : SmokeStep edge0156.src SmokeLabel.l0007 edge0156.dst edge0156.gain
  | e0157 : SmokeStep edge0157.src SmokeLabel.l0004 edge0157.dst edge0157.gain
  | e0158 : SmokeStep edge0158.src SmokeLabel.l0004 edge0158.dst edge0158.gain
  | e0159 : SmokeStep edge0159.src SmokeLabel.l0007 edge0159.dst edge0159.gain
  | e0160 : SmokeStep edge0160.src SmokeLabel.l0012 edge0160.dst edge0160.gain
  | e0161 : SmokeStep edge0161.src SmokeLabel.l0007 edge0161.dst edge0161.gain
  | e0162 : SmokeStep edge0162.src SmokeLabel.l0013 edge0162.dst edge0162.gain
  | e0163 : SmokeStep edge0163.src SmokeLabel.l0005 edge0163.dst edge0163.gain
  | e0164 : SmokeStep edge0164.src SmokeLabel.l0004 edge0164.dst edge0164.gain
  | e0165 : SmokeStep edge0165.src SmokeLabel.l0004 edge0165.dst edge0165.gain
  | e0166 : SmokeStep edge0166.src SmokeLabel.l0004 edge0166.dst edge0166.gain
  | e0167 : SmokeStep edge0167.src SmokeLabel.l0006 edge0167.dst edge0167.gain
  | e0168 : SmokeStep edge0168.src SmokeLabel.l0012 edge0168.dst edge0168.gain
  | e0169 : SmokeStep edge0169.src SmokeLabel.l0013 edge0169.dst edge0169.gain
  | e0170 : SmokeStep edge0170.src SmokeLabel.l0000 edge0170.dst edge0170.gain
  | e0171 : SmokeStep edge0171.src SmokeLabel.l0006 edge0171.dst edge0171.gain
  | e0172 : SmokeStep edge0172.src SmokeLabel.l0006 edge0172.dst edge0172.gain
  | e0173 : SmokeStep edge0173.src SmokeLabel.l0006 edge0173.dst edge0173.gain
  | e0174 : SmokeStep edge0174.src SmokeLabel.l0004 edge0174.dst edge0174.gain
  | e0175 : SmokeStep edge0175.src SmokeLabel.l0004 edge0175.dst edge0175.gain
  | e0176 : SmokeStep edge0176.src SmokeLabel.l0012 edge0176.dst edge0176.gain
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
  | e0191 : SmokeStep edge0191.src SmokeLabel.l0003 edge0191.dst edge0191.gain
  | e0192 : SmokeStep edge0192.src SmokeLabel.l0012 edge0192.dst edge0192.gain
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
  | e0211 : SmokeStep edge0211.src SmokeLabel.l0006 edge0211.dst edge0211.gain
  | e0212 : SmokeStep edge0212.src SmokeLabel.l0012 edge0212.dst edge0212.gain
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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0128.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0175.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0175)
  · rfl
  · rfl
  · exact GraphEdge.e0175
  · exact SmokeEdgeLabel.e0175
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
  · exact SmokeStep.e0175
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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0137.gain + (edge0147.gain + (edge0159.gain + (edge0174.gain + (edge0191.gain + (edge0211.gain + (edge0009.gain + (edge0048.gain + (edge0077.gain + (edge0116.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0159)
  · rfl
  · rfl
  · exact GraphEdge.e0159
  · exact SmokeEdgeLabel.e0159
  apply BellmanLabeledRun.cons (e := edge0174)
  · rfl
  · rfl
  · exact GraphEdge.e0174
  · exact SmokeEdgeLabel.e0174
  apply BellmanLabeledRun.cons (e := edge0191)
  · rfl
  · rfl
  · exact GraphEdge.e0191
  · exact SmokeEdgeLabel.e0191
  apply BellmanLabeledRun.cons (e := edge0211)
  · rfl
  · rfl
  · exact GraphEdge.e0211
  · exact SmokeEdgeLabel.e0211
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
  · exact SmokeStep.e0159
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0174
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0191
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0211
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0009
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0048
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0077
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0116
  exact BellmanLabelStepRun.nil State.s0134

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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0149.gain + (edge0160.gain + (edge0171.gain + (edge0188.gain + (edge0208.gain + (edge0004.gain + (edge0042.gain + (edge0076.gain + (edge0115.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0160)
  · rfl
  · rfl
  · exact GraphEdge.e0160
  · exact SmokeEdgeLabel.e0160
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
  · exact SmokeStep.e0160
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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0162.gain + (edge0176.gain + (edge0187.gain + (edge0207.gain + (edge0003.gain + (edge0041.gain + (edge0075.gain + (edge0114.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0176)
  · rfl
  · rfl
  · exact GraphEdge.e0176
  · exact SmokeEdgeLabel.e0176
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
  · exact SmokeStep.e0176
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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0177.gain + (edge0192.gain + (edge0206.gain + (edge0002.gain + (edge0040.gain + (edge0074.gain + (edge0113.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0192)
  · rfl
  · rfl
  · exact GraphEdge.e0192
  · exact SmokeEdgeLabel.e0192
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
  · exact SmokeStep.e0192
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
  edge0000.gain + (edge0124.gain + (edge0125.gain + (edge0129.gain + (edge0138.gain + (edge0150.gain + (edge0163.gain + (edge0178.gain + (edge0194.gain + (edge0212.gain + (edge0001.gain + (edge0038.gain + (edge0071.gain + (edge0109.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0212)
  · rfl
  · rfl
  · exact GraphEdge.e0212
  · exact SmokeEdgeLabel.e0212
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
  · exact SmokeStep.e0212
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0001
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0038
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0071
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0109
  exact BellmanLabelStepRun.nil State.s0127

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
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0130.gain + (edge0136.gain + (edge0148.gain + (edge0161.gain + (edge0175.gain + (edge0193.gain + (edge0213.gain + (edge0011.gain + (edge0050.gain + (edge0086.gain + (edge0120.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0175)
  · rfl
  · rfl
  · exact GraphEdge.e0175
  · exact SmokeEdgeLabel.e0175
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
  · exact SmokeStep.e0175
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
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0153.gain + (edge0167.gain + (edge0184.gain + (edge0202.gain + (edge0226.gain + (edge0010.gain + (edge0049.gain + (edge0084.gain + (edge0118.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0153)
  · rfl
  · rfl
  · exact GraphEdge.e0153
  · exact SmokeEdgeLabel.e0153
  apply BellmanLabeledRun.cons (e := edge0167)
  · rfl
  · rfl
  · exact GraphEdge.e0167
  · exact SmokeEdgeLabel.e0167
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
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
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
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0153.gain + (edge0167.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0062.gain + (edge0085.gain + (edge0119.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0153)
  · rfl
  · rfl
  · exact GraphEdge.e0153
  · exact SmokeEdgeLabel.e0153
  apply BellmanLabeledRun.cons (e := edge0167)
  · rfl
  · rfl
  · exact GraphEdge.e0167
  · exact SmokeEdgeLabel.e0167
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
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
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
  edge0000.gain + (edge0124.gain + (edge0126.gain + (edge0132.gain + (edge0142.gain + (edge0153.gain + (edge0167.gain + (edge0184.gain + (edge0202.gain + (edge0227.gain + (edge0029.gain + (edge0063.gain + (edge0093.gain + (edge0119.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0153)
  · rfl
  · rfl
  · exact GraphEdge.e0153
  · exact SmokeEdgeLabel.e0153
  apply BellmanLabeledRun.cons (e := edge0167)
  · rfl
  · rfl
  · exact GraphEdge.e0167
  · exact SmokeEdgeLabel.e0167
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
  · exact SmokeStep.e0153
  apply BellmanLabelStepRun.cons
  · exact SmokeStep.e0167
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
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0154.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0024.gain + (edge0036.gain + (edge0069.gain + (edge0107.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0154)
  · rfl
  · rfl
  · exact GraphEdge.e0154
  · exact SmokeEdgeLabel.e0154
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
  · exact SmokeStep.e0154
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
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0143.gain + (edge0154.gain + (edge0164.gain + (edge0180.gain + (edge0198.gain + (edge0221.gain + (edge0025.gain + (edge0058.gain + (edge0092.gain + (edge0106.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0154)
  · rfl
  · rfl
  · exact GraphEdge.e0154
  · exact SmokeEdgeLabel.e0154
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
  · exact SmokeStep.e0154
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
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0168.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0022.gain + (edge0035.gain + (edge0068.gain + (edge0105.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0168)
  · rfl
  · rfl
  · exact GraphEdge.e0168
  · exact SmokeEdgeLabel.e0168
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
  · exact SmokeStep.e0168
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
  edge0000.gain + (edge0124.gain + (edge0127.gain + (edge0134.gain + (edge0144.gain + (edge0155.gain + (edge0168.gain + (edge0179.gain + (edge0197.gain + (edge0220.gain + (edge0023.gain + (edge0057.gain + (edge0091.gain + (edge0104.gain + (0))))))))))))))

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
  apply BellmanLabeledRun.cons (e := edge0168)
  · rfl
  · rfl
  · exact GraphEdge.e0168
  · exact SmokeEdgeLabel.e0168
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
  · exact SmokeStep.e0168
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

theorem graphSmoke_argmax_object_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=
  graphSmoke_observed_objects_scaled_margin_nonpos

theorem bellmanGraphSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke
