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
  | obj0000
  | obj0001
  | obj0002
  | obj0003
  | obj0004
  | obj0005
  | obj0006
  | obj0007
  | obj0008
  | obj0009
  | obj0010
  | obj0011
  | obj0012
  | obj0013
  | obj0014
  | obj0015
  | obj0016
  | obj0017
  | obj0018
  | obj0019
  | obj0020
  | obj0021
  | obj0022
  | obj0023
  | obj0024
  | obj0025
  | obj0026
  | obj0027
  | obj0028
  | obj0029
  | obj0030
  | obj0031
  | obj0032
  | obj0033
  | obj0034
  | obj0035
  | obj0036

private def smokeScaledMargin : SmokeObj -> Int
  | SmokeObj.obj0000 => -376
  | SmokeObj.obj0001 => -376
  | SmokeObj.obj0002 => -128
  | SmokeObj.obj0003 => -128
  | SmokeObj.obj0004 => -392
  | SmokeObj.obj0005 => -464
  | SmokeObj.obj0006 => -176
  | SmokeObj.obj0007 => -464
  | SmokeObj.obj0008 => -392
  | SmokeObj.obj0009 => -128
  | SmokeObj.obj0010 => -376
  | SmokeObj.obj0011 => -376
  | SmokeObj.obj0012 => -376
  | SmokeObj.obj0013 => -376
  | SmokeObj.obj0014 => -420
  | SmokeObj.obj0015 => -200
  | SmokeObj.obj0016 => -420
  | SmokeObj.obj0017 => -200
  | SmokeObj.obj0018 => -200
  | SmokeObj.obj0019 => -172
  | SmokeObj.obj0020 => -436
  | SmokeObj.obj0021 => -216
  | SmokeObj.obj0022 => -508
  | SmokeObj.obj0023 => -288
  | SmokeObj.obj0024 => -220
  | SmokeObj.obj0025 => 0
  | SmokeObj.obj0026 => -508
  | SmokeObj.obj0027 => -288
  | SmokeObj.obj0028 => -436
  | SmokeObj.obj0029 => -172
  | SmokeObj.obj0030 => -420
  | SmokeObj.obj0031 => -436
  | SmokeObj.obj0032 => -436
  | SmokeObj.obj0033 => -216
  | SmokeObj.obj0034 => -200
  | SmokeObj.obj0035 => -200
  | SmokeObj.obj0036 => -200

-- rank: 517
private def obj0000FinalState : State := State.s0141

private def obj0000Edges : List (BellmanEdge State) :=
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

private theorem obj0000Path :
    BellmanPath rootState obj0000FinalState obj0000Edges := by
  unfold obj0000Edges rootState obj0000FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0000Graph :
    forall e, e ∈ obj0000Edges -> GraphEdge e := by
  intro e he
  simp [obj0000Edges] at he
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

private theorem obj0000Final_nonneg :
    0 <= graphPotential obj0000FinalState := by
  decide

private theorem obj0000Margin_bound :
    smokeScaledMargin SmokeObj.obj0000 <= (176 : Int) + bellmanGainSum obj0000Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 10613
private def obj0001FinalState : State := State.s0138

private def obj0001Edges : List (BellmanEdge State) :=
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

private theorem obj0001Path :
    BellmanPath rootState obj0001FinalState obj0001Edges := by
  unfold obj0001Edges rootState obj0001FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0001Graph :
    forall e, e ∈ obj0001Edges -> GraphEdge e := by
  intro e he
  simp [obj0001Edges] at he
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

private theorem obj0001Final_nonneg :
    0 <= graphPotential obj0001FinalState := by
  decide

private theorem obj0001Margin_bound :
    smokeScaledMargin SmokeObj.obj0001 <= (176 : Int) + bellmanGainSum obj0001Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 23197
private def obj0002FinalState : State := State.s0135

private def obj0002Edges : List (BellmanEdge State) :=
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

private theorem obj0002Path :
    BellmanPath rootState obj0002FinalState obj0002Edges := by
  unfold obj0002Edges rootState obj0002FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0002Graph :
    forall e, e ∈ obj0002Edges -> GraphEdge e := by
  intro e he
  simp [obj0002Edges] at he
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

private theorem obj0002Final_nonneg :
    0 <= graphPotential obj0002FinalState := by
  decide

private theorem obj0002Margin_bound :
    smokeScaledMargin SmokeObj.obj0002 <= (176 : Int) + bellmanGainSum obj0002Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: 25555
private def obj0003FinalState : State := State.s0134

private def obj0003Edges : List (BellmanEdge State) :=
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

private theorem obj0003Path :
    BellmanPath rootState obj0003FinalState obj0003Edges := by
  unfold obj0003Edges rootState obj0003FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0003Graph :
    forall e, e ∈ obj0003Edges -> GraphEdge e := by
  intro e he
  simp [obj0003Edges] at he
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

private theorem obj0003Final_nonneg :
    0 <= graphPotential obj0003FinalState := by
  decide

private theorem obj0003Margin_bound :
    smokeScaledMargin SmokeObj.obj0003 <= (176 : Int) + bellmanGainSum obj0003Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: 40387
private def obj0004FinalState : State := State.s0133

private def obj0004Edges : List (BellmanEdge State) :=
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

private theorem obj0004Path :
    BellmanPath rootState obj0004FinalState obj0004Edges := by
  unfold obj0004Edges rootState obj0004FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0004Graph :
    forall e, e ∈ obj0004Edges -> GraphEdge e := by
  intro e he
  simp [obj0004Edges] at he
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

private theorem obj0004Final_nonneg :
    0 <= graphPotential obj0004FinalState := by
  decide

private theorem obj0004Margin_bound :
    smokeScaledMargin SmokeObj.obj0004 <= (176 : Int) + bellmanGainSum obj0004Edges := by
  change (-392 : Int) <= -392
  decide

-- rank: 42247
private def obj0005FinalState : State := State.s0132

private def obj0005Edges : List (BellmanEdge State) :=
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

private theorem obj0005Path :
    BellmanPath rootState obj0005FinalState obj0005Edges := by
  unfold obj0005Edges rootState obj0005FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0005Graph :
    forall e, e ∈ obj0005Edges -> GraphEdge e := by
  intro e he
  simp [obj0005Edges] at he
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

private theorem obj0005Final_nonneg :
    0 <= graphPotential obj0005FinalState := by
  decide

private theorem obj0005Margin_bound :
    smokeScaledMargin SmokeObj.obj0005 <= (176 : Int) + bellmanGainSum obj0005Edges := by
  change (-464 : Int) <= -464
  decide

-- rank: 42943
private def obj0006FinalState : State := State.s0131

private def obj0006Edges : List (BellmanEdge State) :=
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

private theorem obj0006Path :
    BellmanPath rootState obj0006FinalState obj0006Edges := by
  unfold obj0006Edges rootState obj0006FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0006Graph :
    forall e, e ∈ obj0006Edges -> GraphEdge e := by
  intro e he
  simp [obj0006Edges] at he
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

private theorem obj0006Final_nonneg :
    0 <= graphPotential obj0006FinalState := by
  decide

private theorem obj0006Margin_bound :
    smokeScaledMargin SmokeObj.obj0006 <= (176 : Int) + bellmanGainSum obj0006Edges := by
  change (-176 : Int) <= -176
  decide

-- rank: 43171
private def obj0007FinalState : State := State.s0127

private def obj0007Edges : List (BellmanEdge State) :=
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

private theorem obj0007Path :
    BellmanPath rootState obj0007FinalState obj0007Edges := by
  unfold obj0007Edges rootState obj0007FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0007Graph :
    forall e, e ∈ obj0007Edges -> GraphEdge e := by
  intro e he
  simp [obj0007Edges] at he
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

private theorem obj0007Final_nonneg :
    0 <= graphPotential obj0007FinalState := by
  decide

private theorem obj0007Margin_bound :
    smokeScaledMargin SmokeObj.obj0007 <= (176 : Int) + bellmanGainSum obj0007Edges := by
  change (-464 : Int) <= -464
  decide

-- rank: 43195
private def obj0008FinalState : State := State.s0128

private def obj0008Edges : List (BellmanEdge State) :=
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

private theorem obj0008Path :
    BellmanPath rootState obj0008FinalState obj0008Edges := by
  unfold obj0008Edges rootState obj0008FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0008Graph :
    forall e, e ∈ obj0008Edges -> GraphEdge e := by
  intro e he
  simp [obj0008Edges] at he
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

private theorem obj0008Final_nonneg :
    0 <= graphPotential obj0008FinalState := by
  decide

private theorem obj0008Margin_bound :
    smokeScaledMargin SmokeObj.obj0008 <= (176 : Int) + bellmanGainSum obj0008Edges := by
  change (-392 : Int) <= -392
  decide

-- rank: 43203
private def obj0009FinalState : State := State.s0130

private def obj0009Edges : List (BellmanEdge State) :=
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

private theorem obj0009Path :
    BellmanPath rootState obj0009FinalState obj0009Edges := by
  unfold obj0009Edges rootState obj0009FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0009Graph :
    forall e, e ∈ obj0009Edges -> GraphEdge e := by
  intro e he
  simp [obj0009Edges] at he
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

private theorem obj0009Final_nonneg :
    0 <= graphPotential obj0009FinalState := by
  decide

private theorem obj0009Margin_bound :
    smokeScaledMargin SmokeObj.obj0009 <= (176 : Int) + bellmanGainSum obj0009Edges := by
  change (-128 : Int) <= -128
  decide

-- rank: 43205
private def obj0010FinalState : State := State.s0129

private def obj0010Edges : List (BellmanEdge State) :=
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

private theorem obj0010Path :
    BellmanPath rootState obj0010FinalState obj0010Edges := by
  unfold obj0010Edges rootState obj0010FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0010Graph :
    forall e, e ∈ obj0010Edges -> GraphEdge e := by
  intro e he
  simp [obj0010Edges] at he
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

private theorem obj0010Final_nonneg :
    0 <= graphPotential obj0010FinalState := by
  decide

private theorem obj0010Margin_bound :
    smokeScaledMargin SmokeObj.obj0010 <= (176 : Int) + bellmanGainSum obj0010Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 113917
private def obj0011FinalState : State := State.s0141

private def obj0011Edges : List (BellmanEdge State) :=
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

private theorem obj0011Path :
    BellmanPath rootState obj0011FinalState obj0011Edges := by
  unfold obj0011Edges rootState obj0011FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0011Graph :
    forall e, e ∈ obj0011Edges -> GraphEdge e := by
  intro e he
  simp [obj0011Edges] at he
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

private theorem obj0011Final_nonneg :
    0 <= graphPotential obj0011FinalState := by
  decide

private theorem obj0011Margin_bound :
    smokeScaledMargin SmokeObj.obj0011 <= (176 : Int) + bellmanGainSum obj0011Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 124013
private def obj0012FinalState : State := State.s0138

private def obj0012Edges : List (BellmanEdge State) :=
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

private theorem obj0012Path :
    BellmanPath rootState obj0012FinalState obj0012Edges := by
  unfold obj0012Edges rootState obj0012FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0012Graph :
    forall e, e ∈ obj0012Edges -> GraphEdge e := by
  intro e he
  simp [obj0012Edges] at he
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

private theorem obj0012Final_nonneg :
    0 <= graphPotential obj0012FinalState := by
  decide

private theorem obj0012Margin_bound :
    smokeScaledMargin SmokeObj.obj0012 <= (176 : Int) + bellmanGainSum obj0012Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 136597
private def obj0013FinalState : State := State.s0141

private def obj0013Edges : List (BellmanEdge State) :=
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

private theorem obj0013Path :
    BellmanPath rootState obj0013FinalState obj0013Edges := by
  unfold obj0013Edges rootState obj0013FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0013Graph :
    forall e, e ∈ obj0013Edges -> GraphEdge e := by
  intro e he
  simp [obj0013Edges] at he
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

private theorem obj0013Final_nonneg :
    0 <= graphPotential obj0013FinalState := by
  decide

private theorem obj0013Margin_bound :
    smokeScaledMargin SmokeObj.obj0013 <= (176 : Int) + bellmanGainSum obj0013Edges := by
  change (-376 : Int) <= -376
  decide

-- rank: 151567
private def obj0014FinalState : State := State.s0140

private def obj0014Edges : List (BellmanEdge State) :=
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

private theorem obj0014Path :
    BellmanPath rootState obj0014FinalState obj0014Edges := by
  unfold obj0014Edges rootState obj0014FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0014Graph :
    forall e, e ∈ obj0014Edges -> GraphEdge e := by
  intro e he
  simp [obj0014Edges] at he
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

private theorem obj0014Final_nonneg :
    0 <= graphPotential obj0014FinalState := by
  decide

private theorem obj0014Margin_bound :
    smokeScaledMargin SmokeObj.obj0014 <= (176 : Int) + bellmanGainSum obj0014Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: 151569
private def obj0015FinalState : State := State.s0139

private def obj0015Edges : List (BellmanEdge State) :=
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

private theorem obj0015Path :
    BellmanPath rootState obj0015FinalState obj0015Edges := by
  unfold obj0015Edges rootState obj0015FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0015Graph :
    forall e, e ∈ obj0015Edges -> GraphEdge e := by
  intro e he
  simp [obj0015Edges] at he
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

private theorem obj0015Final_nonneg :
    0 <= graphPotential obj0015FinalState := by
  decide

private theorem obj0015Margin_bound :
    smokeScaledMargin SmokeObj.obj0015 <= (176 : Int) + bellmanGainSum obj0015Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: 312761
private def obj0016FinalState : State := State.s0136

private def obj0016Edges : List (BellmanEdge State) :=
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

private theorem obj0016Path :
    BellmanPath rootState obj0016FinalState obj0016Edges := by
  unfold obj0016Edges rootState obj0016FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0016Graph :
    forall e, e ∈ obj0016Edges -> GraphEdge e := by
  intro e he
  simp [obj0016Edges] at he
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

private theorem obj0016Final_nonneg :
    0 <= graphPotential obj0016FinalState := by
  decide

private theorem obj0016Margin_bound :
    smokeScaledMargin SmokeObj.obj0016 <= (176 : Int) + bellmanGainSum obj0016Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: 312772
private def obj0017FinalState : State := State.s0137

private def obj0017Edges : List (BellmanEdge State) :=
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

private theorem obj0017Path :
    BellmanPath rootState obj0017FinalState obj0017Edges := by
  unfold obj0017Edges rootState obj0017FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0017Graph :
    forall e, e ∈ obj0017Edges -> GraphEdge e := by
  intro e he
  simp [obj0017Edges] at he
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

private theorem obj0017Final_nonneg :
    0 <= graphPotential obj0017FinalState := by
  decide

private theorem obj0017Margin_bound :
    smokeScaledMargin SmokeObj.obj0017 <= (176 : Int) + bellmanGainSum obj0017Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: 312773
private def obj0018FinalState : State := State.s0137

private def obj0018Edges : List (BellmanEdge State) :=
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

private theorem obj0018Path :
    BellmanPath rootState obj0018FinalState obj0018Edges := by
  unfold obj0018Edges rootState obj0018FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0018Graph :
    forall e, e ∈ obj0018Edges -> GraphEdge e := by
  intro e he
  simp [obj0018Edges] at he
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

private theorem obj0018Final_nonneg :
    0 <= graphPotential obj0018FinalState := by
  decide

private theorem obj0018Margin_bound :
    smokeScaledMargin SmokeObj.obj0018 <= (176 : Int) + bellmanGainSum obj0018Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: 824407
private def obj0019FinalState : State := State.s0126

private def obj0019Edges : List (BellmanEdge State) :=
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

private theorem obj0019Path :
    BellmanPath rootState obj0019FinalState obj0019Edges := by
  unfold obj0019Edges rootState obj0019FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0019Graph :
    forall e, e ∈ obj0019Edges -> GraphEdge e := by
  intro e he
  simp [obj0019Edges] at he
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

private theorem obj0019Final_nonneg :
    0 <= graphPotential obj0019FinalState := by
  decide

private theorem obj0019Margin_bound :
    smokeScaledMargin SmokeObj.obj0019 <= (176 : Int) + bellmanGainSum obj0019Edges := by
  change (-172 : Int) <= -172
  decide

-- rank: 914497
private def obj0020FinalState : State := State.s0125

private def obj0020Edges : List (BellmanEdge State) :=
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

private theorem obj0020Path :
    BellmanPath rootState obj0020FinalState obj0020Edges := by
  unfold obj0020Edges rootState obj0020FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0020Graph :
    forall e, e ∈ obj0020Edges -> GraphEdge e := by
  intro e he
  simp [obj0020Edges] at he
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

private theorem obj0020Final_nonneg :
    0 <= graphPotential obj0020FinalState := by
  decide

private theorem obj0020Margin_bound :
    smokeScaledMargin SmokeObj.obj0020 <= (176 : Int) + bellmanGainSum obj0020Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: 914499
private def obj0021FinalState : State := State.s0124

private def obj0021Edges : List (BellmanEdge State) :=
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

private theorem obj0021Path :
    BellmanPath rootState obj0021FinalState obj0021Edges := by
  unfold obj0021Edges rootState obj0021FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0021Graph :
    forall e, e ∈ obj0021Edges -> GraphEdge e := by
  intro e he
  simp [obj0021Edges] at he
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

private theorem obj0021Final_nonneg :
    0 <= graphPotential obj0021FinalState := by
  decide

private theorem obj0021Margin_bound :
    smokeScaledMargin SmokeObj.obj0021 <= (176 : Int) + bellmanGainSum obj0021Edges := by
  change (-216 : Int) <= -216
  decide

-- rank: 944197
private def obj0022FinalState : State := State.s0123

private def obj0022Edges : List (BellmanEdge State) :=
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

private theorem obj0022Path :
    BellmanPath rootState obj0022FinalState obj0022Edges := by
  unfold obj0022Edges rootState obj0022FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0022Graph :
    forall e, e ∈ obj0022Edges -> GraphEdge e := by
  intro e he
  simp [obj0022Edges] at he
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

private theorem obj0022Final_nonneg :
    0 <= graphPotential obj0022FinalState := by
  decide

private theorem obj0022Margin_bound :
    smokeScaledMargin SmokeObj.obj0022 <= (176 : Int) + bellmanGainSum obj0022Edges := by
  change (-508 : Int) <= -508
  decide

-- rank: 944199
private def obj0023FinalState : State := State.s0122

private def obj0023Edges : List (BellmanEdge State) :=
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

private theorem obj0023Path :
    BellmanPath rootState obj0023FinalState obj0023Edges := by
  unfold obj0023Edges rootState obj0023FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0023Graph :
    forall e, e ∈ obj0023Edges -> GraphEdge e := by
  intro e he
  simp [obj0023Edges] at he
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

private theorem obj0023Final_nonneg :
    0 <= graphPotential obj0023FinalState := by
  decide

private theorem obj0023Margin_bound :
    smokeScaledMargin SmokeObj.obj0023 <= (176 : Int) + bellmanGainSum obj0023Edges := by
  change (-288 : Int) <= -288
  decide

-- rank: 946777
private def obj0024FinalState : State := State.s0121

private def obj0024Edges : List (BellmanEdge State) :=
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

private theorem obj0024Path :
    BellmanPath rootState obj0024FinalState obj0024Edges := by
  unfold obj0024Edges rootState obj0024FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0024Graph :
    forall e, e ∈ obj0024Edges -> GraphEdge e := by
  intro e he
  simp [obj0024Edges] at he
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

private theorem obj0024Final_nonneg :
    0 <= graphPotential obj0024FinalState := by
  decide

private theorem obj0024Margin_bound :
    smokeScaledMargin SmokeObj.obj0024 <= (176 : Int) + bellmanGainSum obj0024Edges := by
  change (-220 : Int) <= -220
  decide

-- rank: 946779
private def obj0025FinalState : State := State.s0120

private def obj0025Edges : List (BellmanEdge State) :=
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

private theorem obj0025Path :
    BellmanPath rootState obj0025FinalState obj0025Edges := by
  unfold obj0025Edges rootState obj0025FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0025Graph :
    forall e, e ∈ obj0025Edges -> GraphEdge e := by
  intro e he
  simp [obj0025Edges] at he
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

private theorem obj0025Final_nonneg :
    0 <= graphPotential obj0025FinalState := by
  decide

private theorem obj0025Margin_bound :
    smokeScaledMargin SmokeObj.obj0025 <= (176 : Int) + bellmanGainSum obj0025Edges := by
  change (0 : Int) <= 0
  decide

-- rank: 947437
private def obj0026FinalState : State := State.s0119

private def obj0026Edges : List (BellmanEdge State) :=
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

private theorem obj0026Path :
    BellmanPath rootState obj0026FinalState obj0026Edges := by
  unfold obj0026Edges rootState obj0026FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0026Graph :
    forall e, e ∈ obj0026Edges -> GraphEdge e := by
  intro e he
  simp [obj0026Edges] at he
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

private theorem obj0026Final_nonneg :
    0 <= graphPotential obj0026FinalState := by
  decide

private theorem obj0026Margin_bound :
    smokeScaledMargin SmokeObj.obj0026 <= (176 : Int) + bellmanGainSum obj0026Edges := by
  change (-508 : Int) <= -508
  decide

-- rank: 947439
private def obj0027FinalState : State := State.s0118

private def obj0027Edges : List (BellmanEdge State) :=
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

private theorem obj0027Path :
    BellmanPath rootState obj0027FinalState obj0027Edges := by
  unfold obj0027Edges rootState obj0027FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0027Graph :
    forall e, e ∈ obj0027Edges -> GraphEdge e := by
  intro e he
  simp [obj0027Edges] at he
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

private theorem obj0027Final_nonneg :
    0 <= graphPotential obj0027FinalState := by
  decide

private theorem obj0027Margin_bound :
    smokeScaledMargin SmokeObj.obj0027 <= (176 : Int) + bellmanGainSum obj0027Edges := by
  change (-288 : Int) <= -288
  decide

-- rank: 947581
private def obj0028FinalState : State := State.s0114

private def obj0028Edges : List (BellmanEdge State) :=
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

private theorem obj0028Path :
    BellmanPath rootState obj0028FinalState obj0028Edges := by
  unfold obj0028Edges rootState obj0028FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0028Graph :
    forall e, e ∈ obj0028Edges -> GraphEdge e := by
  intro e he
  simp [obj0028Edges] at he
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

private theorem obj0028Final_nonneg :
    0 <= graphPotential obj0028FinalState := by
  decide

private theorem obj0028Margin_bound :
    smokeScaledMargin SmokeObj.obj0028 <= (176 : Int) + bellmanGainSum obj0028Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: 947589
private def obj0029FinalState : State := State.s0117

private def obj0029Edges : List (BellmanEdge State) :=
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

private theorem obj0029Path :
    BellmanPath rootState obj0029FinalState obj0029Edges := by
  unfold obj0029Edges rootState obj0029FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0029Graph :
    forall e, e ∈ obj0029Edges -> GraphEdge e := by
  intro e he
  simp [obj0029Edges] at he
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

private theorem obj0029Final_nonneg :
    0 <= graphPotential obj0029FinalState := by
  decide

private theorem obj0029Margin_bound :
    smokeScaledMargin SmokeObj.obj0029 <= (176 : Int) + bellmanGainSum obj0029Edges := by
  change (-172 : Int) <= -172
  decide

-- rank: 947591
private def obj0030FinalState : State := State.s0116

private def obj0030Edges : List (BellmanEdge State) :=
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

private theorem obj0030Path :
    BellmanPath rootState obj0030FinalState obj0030Edges := by
  unfold obj0030Edges rootState obj0030FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0030Graph :
    forall e, e ∈ obj0030Edges -> GraphEdge e := by
  intro e he
  simp [obj0030Edges] at he
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

private theorem obj0030Final_nonneg :
    0 <= graphPotential obj0030FinalState := by
  decide

private theorem obj0030Margin_bound :
    smokeScaledMargin SmokeObj.obj0030 <= (176 : Int) + bellmanGainSum obj0030Edges := by
  change (-420 : Int) <= -420
  decide

-- rank: 947593
private def obj0031FinalState : State := State.s0114

private def obj0031Edges : List (BellmanEdge State) :=
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

private theorem obj0031Path :
    BellmanPath rootState obj0031FinalState obj0031Edges := by
  unfold obj0031Edges rootState obj0031FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0031Graph :
    forall e, e ∈ obj0031Edges -> GraphEdge e := by
  intro e he
  simp [obj0031Edges] at he
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

private theorem obj0031Final_nonneg :
    0 <= graphPotential obj0031FinalState := by
  decide

private theorem obj0031Margin_bound :
    smokeScaledMargin SmokeObj.obj0031 <= (176 : Int) + bellmanGainSum obj0031Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: 947599
private def obj0032FinalState : State := State.s0114

private def obj0032Edges : List (BellmanEdge State) :=
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

private theorem obj0032Path :
    BellmanPath rootState obj0032FinalState obj0032Edges := by
  unfold obj0032Edges rootState obj0032FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0032Graph :
    forall e, e ∈ obj0032Edges -> GraphEdge e := by
  intro e he
  simp [obj0032Edges] at he
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

private theorem obj0032Final_nonneg :
    0 <= graphPotential obj0032FinalState := by
  decide

private theorem obj0032Margin_bound :
    smokeScaledMargin SmokeObj.obj0032 <= (176 : Int) + bellmanGainSum obj0032Edges := by
  change (-436 : Int) <= -436
  decide

-- rank: 947601
private def obj0033FinalState : State := State.s0113

private def obj0033Edges : List (BellmanEdge State) :=
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

private theorem obj0033Path :
    BellmanPath rootState obj0033FinalState obj0033Edges := by
  unfold obj0033Edges rootState obj0033FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0033Graph :
    forall e, e ∈ obj0033Edges -> GraphEdge e := by
  intro e he
  simp [obj0033Edges] at he
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

private theorem obj0033Final_nonneg :
    0 <= graphPotential obj0033FinalState := by
  decide

private theorem obj0033Margin_bound :
    smokeScaledMargin SmokeObj.obj0033 <= (176 : Int) + bellmanGainSum obj0033Edges := by
  change (-216 : Int) <= -216
  decide

-- rank: 947625
private def obj0034FinalState : State := State.s0115

private def obj0034Edges : List (BellmanEdge State) :=
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

private theorem obj0034Path :
    BellmanPath rootState obj0034FinalState obj0034Edges := by
  unfold obj0034Edges rootState obj0034FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0034Graph :
    forall e, e ∈ obj0034Edges -> GraphEdge e := by
  intro e he
  simp [obj0034Edges] at he
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

private theorem obj0034Final_nonneg :
    0 <= graphPotential obj0034FinalState := by
  decide

private theorem obj0034Margin_bound :
    smokeScaledMargin SmokeObj.obj0034 <= (176 : Int) + bellmanGainSum obj0034Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: 947626
private def obj0035FinalState : State := State.s0115

private def obj0035Edges : List (BellmanEdge State) :=
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

private theorem obj0035Path :
    BellmanPath rootState obj0035FinalState obj0035Edges := by
  unfold obj0035Edges rootState obj0035FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0035Graph :
    forall e, e ∈ obj0035Edges -> GraphEdge e := by
  intro e he
  simp [obj0035Edges] at he
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

private theorem obj0035Final_nonneg :
    0 <= graphPotential obj0035FinalState := by
  decide

private theorem obj0035Margin_bound :
    smokeScaledMargin SmokeObj.obj0035 <= (176 : Int) + bellmanGainSum obj0035Edges := by
  change (-200 : Int) <= -200
  decide

-- rank: 947627
private def obj0036FinalState : State := State.s0115

private def obj0036Edges : List (BellmanEdge State) :=
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

private theorem obj0036Path :
    BellmanPath rootState obj0036FinalState obj0036Edges := by
  unfold obj0036Edges rootState obj0036FinalState
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
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

private theorem obj0036Graph :
    forall e, e ∈ obj0036Edges -> GraphEdge e := by
  intro e he
  simp [obj0036Edges] at he
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

private theorem obj0036Final_nonneg :
    0 <= graphPotential obj0036FinalState := by
  decide

private theorem obj0036Margin_bound :
    smokeScaledMargin SmokeObj.obj0036 <= (176 : Int) + bellmanGainSum obj0036Edges := by
  change (-200 : Int) <= -200
  decide

private theorem smokeTraceBound :
    BellmanTraceBound
      graphPotential GraphEdge rootState
      (176 : Int) smokeScaledMargin := by
  intro obj
  cases obj
  · exact ⟨obj0000FinalState, obj0000Edges, obj0000Path,
      obj0000Graph, obj0000Final_nonneg, obj0000Margin_bound⟩
  · exact ⟨obj0001FinalState, obj0001Edges, obj0001Path,
      obj0001Graph, obj0001Final_nonneg, obj0001Margin_bound⟩
  · exact ⟨obj0002FinalState, obj0002Edges, obj0002Path,
      obj0002Graph, obj0002Final_nonneg, obj0002Margin_bound⟩
  · exact ⟨obj0003FinalState, obj0003Edges, obj0003Path,
      obj0003Graph, obj0003Final_nonneg, obj0003Margin_bound⟩
  · exact ⟨obj0004FinalState, obj0004Edges, obj0004Path,
      obj0004Graph, obj0004Final_nonneg, obj0004Margin_bound⟩
  · exact ⟨obj0005FinalState, obj0005Edges, obj0005Path,
      obj0005Graph, obj0005Final_nonneg, obj0005Margin_bound⟩
  · exact ⟨obj0006FinalState, obj0006Edges, obj0006Path,
      obj0006Graph, obj0006Final_nonneg, obj0006Margin_bound⟩
  · exact ⟨obj0007FinalState, obj0007Edges, obj0007Path,
      obj0007Graph, obj0007Final_nonneg, obj0007Margin_bound⟩
  · exact ⟨obj0008FinalState, obj0008Edges, obj0008Path,
      obj0008Graph, obj0008Final_nonneg, obj0008Margin_bound⟩
  · exact ⟨obj0009FinalState, obj0009Edges, obj0009Path,
      obj0009Graph, obj0009Final_nonneg, obj0009Margin_bound⟩
  · exact ⟨obj0010FinalState, obj0010Edges, obj0010Path,
      obj0010Graph, obj0010Final_nonneg, obj0010Margin_bound⟩
  · exact ⟨obj0011FinalState, obj0011Edges, obj0011Path,
      obj0011Graph, obj0011Final_nonneg, obj0011Margin_bound⟩
  · exact ⟨obj0012FinalState, obj0012Edges, obj0012Path,
      obj0012Graph, obj0012Final_nonneg, obj0012Margin_bound⟩
  · exact ⟨obj0013FinalState, obj0013Edges, obj0013Path,
      obj0013Graph, obj0013Final_nonneg, obj0013Margin_bound⟩
  · exact ⟨obj0014FinalState, obj0014Edges, obj0014Path,
      obj0014Graph, obj0014Final_nonneg, obj0014Margin_bound⟩
  · exact ⟨obj0015FinalState, obj0015Edges, obj0015Path,
      obj0015Graph, obj0015Final_nonneg, obj0015Margin_bound⟩
  · exact ⟨obj0016FinalState, obj0016Edges, obj0016Path,
      obj0016Graph, obj0016Final_nonneg, obj0016Margin_bound⟩
  · exact ⟨obj0017FinalState, obj0017Edges, obj0017Path,
      obj0017Graph, obj0017Final_nonneg, obj0017Margin_bound⟩
  · exact ⟨obj0018FinalState, obj0018Edges, obj0018Path,
      obj0018Graph, obj0018Final_nonneg, obj0018Margin_bound⟩
  · exact ⟨obj0019FinalState, obj0019Edges, obj0019Path,
      obj0019Graph, obj0019Final_nonneg, obj0019Margin_bound⟩
  · exact ⟨obj0020FinalState, obj0020Edges, obj0020Path,
      obj0020Graph, obj0020Final_nonneg, obj0020Margin_bound⟩
  · exact ⟨obj0021FinalState, obj0021Edges, obj0021Path,
      obj0021Graph, obj0021Final_nonneg, obj0021Margin_bound⟩
  · exact ⟨obj0022FinalState, obj0022Edges, obj0022Path,
      obj0022Graph, obj0022Final_nonneg, obj0022Margin_bound⟩
  · exact ⟨obj0023FinalState, obj0023Edges, obj0023Path,
      obj0023Graph, obj0023Final_nonneg, obj0023Margin_bound⟩
  · exact ⟨obj0024FinalState, obj0024Edges, obj0024Path,
      obj0024Graph, obj0024Final_nonneg, obj0024Margin_bound⟩
  · exact ⟨obj0025FinalState, obj0025Edges, obj0025Path,
      obj0025Graph, obj0025Final_nonneg, obj0025Margin_bound⟩
  · exact ⟨obj0026FinalState, obj0026Edges, obj0026Path,
      obj0026Graph, obj0026Final_nonneg, obj0026Margin_bound⟩
  · exact ⟨obj0027FinalState, obj0027Edges, obj0027Path,
      obj0027Graph, obj0027Final_nonneg, obj0027Margin_bound⟩
  · exact ⟨obj0028FinalState, obj0028Edges, obj0028Path,
      obj0028Graph, obj0028Final_nonneg, obj0028Margin_bound⟩
  · exact ⟨obj0029FinalState, obj0029Edges, obj0029Path,
      obj0029Graph, obj0029Final_nonneg, obj0029Margin_bound⟩
  · exact ⟨obj0030FinalState, obj0030Edges, obj0030Path,
      obj0030Graph, obj0030Final_nonneg, obj0030Margin_bound⟩
  · exact ⟨obj0031FinalState, obj0031Edges, obj0031Path,
      obj0031Graph, obj0031Final_nonneg, obj0031Margin_bound⟩
  · exact ⟨obj0032FinalState, obj0032Edges, obj0032Path,
      obj0032Graph, obj0032Final_nonneg, obj0032Margin_bound⟩
  · exact ⟨obj0033FinalState, obj0033Edges, obj0033Path,
      obj0033Graph, obj0033Final_nonneg, obj0033Margin_bound⟩
  · exact ⟨obj0034FinalState, obj0034Edges, obj0034Path,
      obj0034Graph, obj0034Final_nonneg, obj0034Margin_bound⟩
  · exact ⟨obj0035FinalState, obj0035Edges, obj0035Path,
      obj0035Graph, obj0035Final_nonneg, obj0035Margin_bound⟩
  · exact ⟨obj0036FinalState, obj0036Edges, obj0036Path,
      obj0036Graph, obj0036Final_nonneg, obj0036Margin_bound⟩

theorem graphSmoke_observed_objects_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=
  graphSmoke_family_scaled_margin_nonpos smokeTraceBound

theorem graphSmoke_argmax_object_scaled_margin_nonpos :
    forall obj : SmokeObj, smokeScaledMargin obj <= 0 :=
  graphSmoke_observed_objects_scaled_margin_nonpos

theorem bellmanGraphSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke
