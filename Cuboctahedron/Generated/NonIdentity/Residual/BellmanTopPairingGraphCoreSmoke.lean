import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.FaceLabelLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

/-!
Generated-style Bellman graph core smoke.

This file contains only the finite graph, deterministic evaluator, and
next-to-step soundness bridge. It intentionally contains no sampled
rank/object bridge and no terminal geometry data.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphCoreSmoke

open Cuboctahedron

-- state count: 223
inductive State where
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

def graphPotential : State -> Int
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

def rootState : State := State.s0000

def edge0000 : BellmanEdge State :=
  {
    src := State.s0000,
    gain := 103,
    dst := State.s0142
  }

theorem edge0000_valid : edge0000.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0142 <= graphPotential State.s0000
  decide

def edge0001 : BellmanEdge State :=
  {
    src := State.s0001,
    gain := -36,
    dst := State.s0029
  }

theorem edge0001_valid : edge0001.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0029 <= graphPotential State.s0001
  decide

def edge0002 : BellmanEdge State :=
  {
    src := State.s0002,
    gain := -36,
    dst := State.s0031
  }

theorem edge0002_valid : edge0002.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0031 <= graphPotential State.s0002
  decide

def edge0003 : BellmanEdge State :=
  {
    src := State.s0003,
    gain := -36,
    dst := State.s0032
  }

theorem edge0003_valid : edge0003.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0032 <= graphPotential State.s0003
  decide

def edge0004 : BellmanEdge State :=
  {
    src := State.s0004,
    gain := -36,
    dst := State.s0033
  }

theorem edge0004_valid : edge0004.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0033 <= graphPotential State.s0004
  decide

def edge0005 : BellmanEdge State :=
  {
    src := State.s0005,
    gain := -36,
    dst := State.s0034
  }

theorem edge0005_valid : edge0005.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0034 <= graphPotential State.s0005
  decide

def edge0006 : BellmanEdge State :=
  {
    src := State.s0006,
    gain := -36,
    dst := State.s0036
  }

theorem edge0006_valid : edge0006.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0036 <= graphPotential State.s0006
  decide

def edge0007 : BellmanEdge State :=
  {
    src := State.s0007,
    gain := -18,
    dst := State.s0023
  }

theorem edge0007_valid : edge0007.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0023 <= graphPotential State.s0007
  decide

def edge0008 : BellmanEdge State :=
  {
    src := State.s0008,
    gain := -18,
    dst := State.s0030
  }

theorem edge0008_valid : edge0008.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0030 <= graphPotential State.s0008
  decide

def edge0009 : BellmanEdge State :=
  {
    src := State.s0009,
    gain := 96,
    dst := State.s0039
  }

theorem edge0009_valid : edge0009.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0039 <= graphPotential State.s0009
  decide

def edge0010 : BellmanEdge State :=
  {
    src := State.s0010,
    gain := 96,
    dst := State.s0040
  }

theorem edge0010_valid : edge0010.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0040 <= graphPotential State.s0010
  decide

def edge0011 : BellmanEdge State :=
  {
    src := State.s0011,
    gain := 96,
    dst := State.s0041
  }

theorem edge0011_valid : edge0011.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0041 <= graphPotential State.s0011
  decide

def edge0012 : BellmanEdge State :=
  {
    src := State.s0012,
    gain := 114,
    dst := State.s0037
  }

theorem edge0012_valid : edge0012.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0037 <= graphPotential State.s0012
  decide

def edge0013 : BellmanEdge State :=
  {
    src := State.s0012,
    gain := -124,
    dst := State.s0043
  }

theorem edge0013_valid : edge0013.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0043 <= graphPotential State.s0012
  decide

def edge0014 : BellmanEdge State :=
  {
    src := State.s0013,
    gain := 114,
    dst := State.s0038
  }

theorem edge0014_valid : edge0014.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0038 <= graphPotential State.s0013
  decide

def edge0015 : BellmanEdge State :=
  {
    src := State.s0013,
    gain := -124,
    dst := State.s0044
  }

theorem edge0015_valid : edge0015.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0044 <= graphPotential State.s0013
  decide

def edge0016 : BellmanEdge State :=
  {
    src := State.s0014,
    gain := -117,
    dst := State.s0023
  }

theorem edge0016_valid : edge0016.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0023 <= graphPotential State.s0014
  decide

def edge0017 : BellmanEdge State :=
  {
    src := State.s0014,
    gain := 96,
    dst := State.s0045
  }

theorem edge0017_valid : edge0017.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0045 <= graphPotential State.s0014
  decide

def edge0018 : BellmanEdge State :=
  {
    src := State.s0015,
    gain := -117,
    dst := State.s0024
  }

theorem edge0018_valid : edge0018.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0024 <= graphPotential State.s0015
  decide

def edge0019 : BellmanEdge State :=
  {
    src := State.s0015,
    gain := 96,
    dst := State.s0046
  }

theorem edge0019_valid : edge0019.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0046 <= graphPotential State.s0015
  decide

def edge0020 : BellmanEdge State :=
  {
    src := State.s0016,
    gain := -117,
    dst := State.s0025
  }

theorem edge0020_valid : edge0020.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0025 <= graphPotential State.s0016
  decide

def edge0021 : BellmanEdge State :=
  {
    src := State.s0016,
    gain := 96,
    dst := State.s0047
  }

theorem edge0021_valid : edge0021.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0047 <= graphPotential State.s0016
  decide

def edge0022 : BellmanEdge State :=
  {
    src := State.s0017,
    gain := -117,
    dst := State.s0026
  }

theorem edge0022_valid : edge0022.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0026 <= graphPotential State.s0017
  decide

def edge0023 : BellmanEdge State :=
  {
    src := State.s0017,
    gain := 96,
    dst := State.s0048
  }

theorem edge0023_valid : edge0023.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0048 <= graphPotential State.s0017
  decide

def edge0024 : BellmanEdge State :=
  {
    src := State.s0018,
    gain := -117,
    dst := State.s0027
  }

theorem edge0024_valid : edge0024.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0027 <= graphPotential State.s0018
  decide

def edge0025 : BellmanEdge State :=
  {
    src := State.s0018,
    gain := 96,
    dst := State.s0049
  }

theorem edge0025_valid : edge0025.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0049 <= graphPotential State.s0018
  decide

def edge0026 : BellmanEdge State :=
  {
    src := State.s0019,
    gain := -117,
    dst := State.s0028
  }

theorem edge0026_valid : edge0026.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0028 <= graphPotential State.s0019
  decide

def edge0027 : BellmanEdge State :=
  {
    src := State.s0020,
    gain := -117,
    dst := State.s0035
  }

theorem edge0027_valid : edge0027.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0035 <= graphPotential State.s0020
  decide

def edge0028 : BellmanEdge State :=
  {
    src := State.s0020,
    gain := 96,
    dst := State.s0050
  }

theorem edge0028_valid : edge0028.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0050 <= graphPotential State.s0020
  decide

def edge0029 : BellmanEdge State :=
  {
    src := State.s0021,
    gain := -124,
    dst := State.s0052
  }

theorem edge0029_valid : edge0029.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0052 <= graphPotential State.s0021
  decide

def edge0030 : BellmanEdge State :=
  {
    src := State.s0022,
    gain := 103,
    dst := State.s0042
  }

theorem edge0030_valid : edge0030.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0042 <= graphPotential State.s0022
  decide

def edge0031 : BellmanEdge State :=
  {
    src := State.s0022,
    gain := -10,
    dst := State.s0051
  }

theorem edge0031_valid : edge0031.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0051 <= graphPotential State.s0022
  decide

def edge0032 : BellmanEdge State :=
  {
    src := State.s0023,
    gain := 96,
    dst := State.s0053
  }

theorem edge0032_valid : edge0032.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0053 <= graphPotential State.s0023
  decide

def edge0033 : BellmanEdge State :=
  {
    src := State.s0024,
    gain := 96,
    dst := State.s0055
  }

theorem edge0033_valid : edge0033.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0055 <= graphPotential State.s0024
  decide

def edge0034 : BellmanEdge State :=
  {
    src := State.s0025,
    gain := 96,
    dst := State.s0056
  }

theorem edge0034_valid : edge0034.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0056 <= graphPotential State.s0025
  decide

def edge0035 : BellmanEdge State :=
  {
    src := State.s0026,
    gain := 96,
    dst := State.s0057
  }

theorem edge0035_valid : edge0035.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0057 <= graphPotential State.s0026
  decide

def edge0036 : BellmanEdge State :=
  {
    src := State.s0027,
    gain := 96,
    dst := State.s0058
  }

theorem edge0036_valid : edge0036.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0058 <= graphPotential State.s0027
  decide

def edge0037 : BellmanEdge State :=
  {
    src := State.s0028,
    gain := 96,
    dst := State.s0059
  }

theorem edge0037_valid : edge0037.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0059 <= graphPotential State.s0028
  decide

def edge0038 : BellmanEdge State :=
  {
    src := State.s0029,
    gain := 96,
    dst := State.s0060
  }

theorem edge0038_valid : edge0038.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0060 <= graphPotential State.s0029
  decide

def edge0039 : BellmanEdge State :=
  {
    src := State.s0030,
    gain := 96,
    dst := State.s0061
  }

theorem edge0039_valid : edge0039.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0061 <= graphPotential State.s0030
  decide

def edge0040 : BellmanEdge State :=
  {
    src := State.s0031,
    gain := 96,
    dst := State.s0063
  }

theorem edge0040_valid : edge0040.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0063 <= graphPotential State.s0031
  decide

def edge0041 : BellmanEdge State :=
  {
    src := State.s0032,
    gain := 96,
    dst := State.s0064
  }

theorem edge0041_valid : edge0041.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0064 <= graphPotential State.s0032
  decide

def edge0042 : BellmanEdge State :=
  {
    src := State.s0033,
    gain := 96,
    dst := State.s0065
  }

theorem edge0042_valid : edge0042.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0065 <= graphPotential State.s0033
  decide

def edge0043 : BellmanEdge State :=
  {
    src := State.s0034,
    gain := 96,
    dst := State.s0067
  }

theorem edge0043_valid : edge0043.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0067 <= graphPotential State.s0034
  decide

def edge0044 : BellmanEdge State :=
  {
    src := State.s0035,
    gain := 96,
    dst := State.s0068
  }

theorem edge0044_valid : edge0044.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0068 <= graphPotential State.s0035
  decide

def edge0045 : BellmanEdge State :=
  {
    src := State.s0036,
    gain := 96,
    dst := State.s0069
  }

theorem edge0045_valid : edge0045.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0069 <= graphPotential State.s0036
  decide

def edge0046 : BellmanEdge State :=
  {
    src := State.s0037,
    gain := 114,
    dst := State.s0054
  }

theorem edge0046_valid : edge0046.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0054 <= graphPotential State.s0037
  decide

def edge0047 : BellmanEdge State :=
  {
    src := State.s0038,
    gain := 114,
    dst := State.s0062
  }

theorem edge0047_valid : edge0047.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0062 <= graphPotential State.s0038
  decide

def edge0048 : BellmanEdge State :=
  {
    src := State.s0039,
    gain := 114,
    dst := State.s0066
  }

theorem edge0048_valid : edge0048.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0066 <= graphPotential State.s0039
  decide

def edge0049 : BellmanEdge State :=
  {
    src := State.s0040,
    gain := -124,
    dst := State.s0073
  }

theorem edge0049_valid : edge0049.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0073 <= graphPotential State.s0040
  decide

def edge0050 : BellmanEdge State :=
  {
    src := State.s0041,
    gain := -124,
    dst := State.s0075
  }

theorem edge0050_valid : edge0050.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0075 <= graphPotential State.s0041
  decide

def edge0051 : BellmanEdge State :=
  {
    src := State.s0042,
    gain := -10,
    dst := State.s0070
  }

theorem edge0051_valid : edge0051.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0070 <= graphPotential State.s0042
  decide

def edge0052 : BellmanEdge State :=
  {
    src := State.s0043,
    gain := -10,
    dst := State.s0071
  }

theorem edge0052_valid : edge0052.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0071 <= graphPotential State.s0043
  decide

def edge0053 : BellmanEdge State :=
  {
    src := State.s0044,
    gain := -10,
    dst := State.s0072
  }

theorem edge0053_valid : edge0053.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0072 <= graphPotential State.s0044
  decide

def edge0054 : BellmanEdge State :=
  {
    src := State.s0045,
    gain := -124,
    dst := State.s0076
  }

theorem edge0054_valid : edge0054.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0076 <= graphPotential State.s0045
  decide

def edge0055 : BellmanEdge State :=
  {
    src := State.s0046,
    gain := -124,
    dst := State.s0078
  }

theorem edge0055_valid : edge0055.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0078 <= graphPotential State.s0046
  decide

def edge0056 : BellmanEdge State :=
  {
    src := State.s0047,
    gain := -124,
    dst := State.s0079
  }

theorem edge0056_valid : edge0056.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0079 <= graphPotential State.s0047
  decide

def edge0057 : BellmanEdge State :=
  {
    src := State.s0048,
    gain := -124,
    dst := State.s0080
  }

theorem edge0057_valid : edge0057.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0080 <= graphPotential State.s0048
  decide

def edge0058 : BellmanEdge State :=
  {
    src := State.s0049,
    gain := -124,
    dst := State.s0081
  }

theorem edge0058_valid : edge0058.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0081 <= graphPotential State.s0049
  decide

def edge0059 : BellmanEdge State :=
  {
    src := State.s0050,
    gain := -124,
    dst := State.s0083
  }

theorem edge0059_valid : edge0059.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0083 <= graphPotential State.s0050
  decide

def edge0060 : BellmanEdge State :=
  {
    src := State.s0051,
    gain := 103,
    dst := State.s0070
  }

theorem edge0060_valid : edge0060.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0070 <= graphPotential State.s0051
  decide

def edge0061 : BellmanEdge State :=
  {
    src := State.s0051,
    gain := -10,
    dst := State.s0077
  }

theorem edge0061_valid : edge0061.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0077 <= graphPotential State.s0051
  decide

def edge0062 : BellmanEdge State :=
  {
    src := State.s0052,
    gain := 103,
    dst := State.s0074
  }

theorem edge0062_valid : edge0062.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0074 <= graphPotential State.s0052
  decide

def edge0063 : BellmanEdge State :=
  {
    src := State.s0052,
    gain := -10,
    dst := State.s0082
  }

theorem edge0063_valid : edge0063.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0082 <= graphPotential State.s0052
  decide

def edge0064 : BellmanEdge State :=
  {
    src := State.s0053,
    gain := -124,
    dst := State.s0085
  }

theorem edge0064_valid : edge0064.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0085 <= graphPotential State.s0053
  decide

def edge0065 : BellmanEdge State :=
  {
    src := State.s0054,
    gain := -124,
    dst := State.s0088
  }

theorem edge0065_valid : edge0065.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0088 <= graphPotential State.s0054
  decide

def edge0066 : BellmanEdge State :=
  {
    src := State.s0055,
    gain := -124,
    dst := State.s0090
  }

theorem edge0066_valid : edge0066.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0090 <= graphPotential State.s0055
  decide

def edge0067 : BellmanEdge State :=
  {
    src := State.s0056,
    gain := -124,
    dst := State.s0092
  }

theorem edge0067_valid : edge0067.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0092 <= graphPotential State.s0056
  decide

def edge0068 : BellmanEdge State :=
  {
    src := State.s0057,
    gain := -124,
    dst := State.s0094
  }

theorem edge0068_valid : edge0068.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0094 <= graphPotential State.s0057
  decide

def edge0069 : BellmanEdge State :=
  {
    src := State.s0058,
    gain := -124,
    dst := State.s0096
  }

theorem edge0069_valid : edge0069.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0096 <= graphPotential State.s0058
  decide

def edge0070 : BellmanEdge State :=
  {
    src := State.s0059,
    gain := -124,
    dst := State.s0097
  }

theorem edge0070_valid : edge0070.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0097 <= graphPotential State.s0059
  decide

def edge0071 : BellmanEdge State :=
  {
    src := State.s0060,
    gain := -124,
    dst := State.s0098
  }

theorem edge0071_valid : edge0071.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0098 <= graphPotential State.s0060
  decide

def edge0072 : BellmanEdge State :=
  {
    src := State.s0061,
    gain := -124,
    dst := State.s0099
  }

theorem edge0072_valid : edge0072.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0099 <= graphPotential State.s0061
  decide

def edge0073 : BellmanEdge State :=
  {
    src := State.s0062,
    gain := -124,
    dst := State.s0101
  }

theorem edge0073_valid : edge0073.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0101 <= graphPotential State.s0062
  decide

def edge0074 : BellmanEdge State :=
  {
    src := State.s0063,
    gain := -124,
    dst := State.s0102
  }

theorem edge0074_valid : edge0074.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0102 <= graphPotential State.s0063
  decide

def edge0075 : BellmanEdge State :=
  {
    src := State.s0064,
    gain := -124,
    dst := State.s0103
  }

theorem edge0075_valid : edge0075.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0103 <= graphPotential State.s0064
  decide

def edge0076 : BellmanEdge State :=
  {
    src := State.s0065,
    gain := -124,
    dst := State.s0104
  }

theorem edge0076_valid : edge0076.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0104 <= graphPotential State.s0065
  decide

def edge0077 : BellmanEdge State :=
  {
    src := State.s0066,
    gain := -124,
    dst := State.s0105
  }

theorem edge0077_valid : edge0077.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0105 <= graphPotential State.s0066
  decide

def edge0078 : BellmanEdge State :=
  {
    src := State.s0067,
    gain := -124,
    dst := State.s0106
  }

theorem edge0078_valid : edge0078.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0106 <= graphPotential State.s0067
  decide

def edge0079 : BellmanEdge State :=
  {
    src := State.s0068,
    gain := -124,
    dst := State.s0111
  }

theorem edge0079_valid : edge0079.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0111 <= graphPotential State.s0068
  decide

def edge0080 : BellmanEdge State :=
  {
    src := State.s0069,
    gain := -124,
    dst := State.s0112
  }

theorem edge0080_valid : edge0080.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0112 <= graphPotential State.s0069
  decide

def edge0081 : BellmanEdge State :=
  {
    src := State.s0070,
    gain := -10,
    dst := State.s0086
  }

theorem edge0081_valid : edge0081.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0086 <= graphPotential State.s0070
  decide

def edge0082 : BellmanEdge State :=
  {
    src := State.s0071,
    gain := -10,
    dst := State.s0087
  }

theorem edge0082_valid : edge0082.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0087 <= graphPotential State.s0071
  decide

def edge0083 : BellmanEdge State :=
  {
    src := State.s0072,
    gain := -10,
    dst := State.s0100
  }

theorem edge0083_valid : edge0083.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0100 <= graphPotential State.s0072
  decide

def edge0084 : BellmanEdge State :=
  {
    src := State.s0073,
    gain := -10,
    dst := State.s0107
  }

theorem edge0084_valid : edge0084.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0107 <= graphPotential State.s0073
  decide

def edge0085 : BellmanEdge State :=
  {
    src := State.s0074,
    gain := -10,
    dst := State.s0108
  }

theorem edge0085_valid : edge0085.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0108 <= graphPotential State.s0074
  decide

def edge0086 : BellmanEdge State :=
  {
    src := State.s0075,
    gain := -10,
    dst := State.s0109
  }

theorem edge0086_valid : edge0086.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0109 <= graphPotential State.s0075
  decide

def edge0087 : BellmanEdge State :=
  {
    src := State.s0076,
    gain := 103,
    dst := State.s0084
  }

theorem edge0087_valid : edge0087.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0084 <= graphPotential State.s0076
  decide

def edge0088 : BellmanEdge State :=
  {
    src := State.s0077,
    gain := 103,
    dst := State.s0086
  }

theorem edge0088_valid : edge0088.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0086 <= graphPotential State.s0077
  decide

def edge0089 : BellmanEdge State :=
  {
    src := State.s0078,
    gain := 103,
    dst := State.s0089
  }

theorem edge0089_valid : edge0089.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0089 <= graphPotential State.s0078
  decide

def edge0090 : BellmanEdge State :=
  {
    src := State.s0079,
    gain := 103,
    dst := State.s0091
  }

theorem edge0090_valid : edge0090.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0091 <= graphPotential State.s0079
  decide

def edge0091 : BellmanEdge State :=
  {
    src := State.s0080,
    gain := 103,
    dst := State.s0093
  }

theorem edge0091_valid : edge0091.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0093 <= graphPotential State.s0080
  decide

def edge0092 : BellmanEdge State :=
  {
    src := State.s0081,
    gain := 103,
    dst := State.s0095
  }

theorem edge0092_valid : edge0092.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0095 <= graphPotential State.s0081
  decide

def edge0093 : BellmanEdge State :=
  {
    src := State.s0082,
    gain := 103,
    dst := State.s0108
  }

theorem edge0093_valid : edge0093.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0108 <= graphPotential State.s0082
  decide

def edge0094 : BellmanEdge State :=
  {
    src := State.s0083,
    gain := 103,
    dst := State.s0110
  }

theorem edge0094_valid : edge0094.Valid graphPotential := by
  change (103 : Int) + graphPotential State.s0110 <= graphPotential State.s0083
  decide

def edge0095 : BellmanEdge State :=
  {
    src := State.s0084,
    gain := -73,
    dst := State.s0113
  }

theorem edge0095_valid : edge0095.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0113 <= graphPotential State.s0084
  decide

def edge0096 : BellmanEdge State :=
  {
    src := State.s0085,
    gain := -73,
    dst := State.s0114
  }

theorem edge0096_valid : edge0096.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0114 <= graphPotential State.s0085
  decide

def edge0097 : BellmanEdge State :=
  {
    src := State.s0086,
    gain := -73,
    dst := State.s0115
  }

theorem edge0097_valid : edge0097.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0115 <= graphPotential State.s0086
  decide

def edge0098 : BellmanEdge State :=
  {
    src := State.s0087,
    gain := -73,
    dst := State.s0116
  }

theorem edge0098_valid : edge0098.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0116 <= graphPotential State.s0087
  decide

def edge0099 : BellmanEdge State :=
  {
    src := State.s0088,
    gain := -73,
    dst := State.s0117
  }

theorem edge0099_valid : edge0099.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0117 <= graphPotential State.s0088
  decide

def edge0100 : BellmanEdge State :=
  {
    src := State.s0089,
    gain := -73,
    dst := State.s0118
  }

theorem edge0100_valid : edge0100.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0118 <= graphPotential State.s0089
  decide

def edge0101 : BellmanEdge State :=
  {
    src := State.s0090,
    gain := -73,
    dst := State.s0119
  }

theorem edge0101_valid : edge0101.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0119 <= graphPotential State.s0090
  decide

def edge0102 : BellmanEdge State :=
  {
    src := State.s0091,
    gain := -73,
    dst := State.s0120
  }

theorem edge0102_valid : edge0102.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0120 <= graphPotential State.s0091
  decide

def edge0103 : BellmanEdge State :=
  {
    src := State.s0092,
    gain := -73,
    dst := State.s0121
  }

theorem edge0103_valid : edge0103.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0121 <= graphPotential State.s0092
  decide

def edge0104 : BellmanEdge State :=
  {
    src := State.s0093,
    gain := -73,
    dst := State.s0122
  }

theorem edge0104_valid : edge0104.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0122 <= graphPotential State.s0093
  decide

def edge0105 : BellmanEdge State :=
  {
    src := State.s0094,
    gain := -73,
    dst := State.s0123
  }

theorem edge0105_valid : edge0105.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0123 <= graphPotential State.s0094
  decide

def edge0106 : BellmanEdge State :=
  {
    src := State.s0095,
    gain := -73,
    dst := State.s0124
  }

theorem edge0106_valid : edge0106.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0124 <= graphPotential State.s0095
  decide

def edge0107 : BellmanEdge State :=
  {
    src := State.s0096,
    gain := -73,
    dst := State.s0125
  }

theorem edge0107_valid : edge0107.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0125 <= graphPotential State.s0096
  decide

def edge0108 : BellmanEdge State :=
  {
    src := State.s0097,
    gain := -73,
    dst := State.s0126
  }

theorem edge0108_valid : edge0108.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0126 <= graphPotential State.s0097
  decide

def edge0109 : BellmanEdge State :=
  {
    src := State.s0098,
    gain := -73,
    dst := State.s0127
  }

theorem edge0109_valid : edge0109.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0127 <= graphPotential State.s0098
  decide

def edge0110 : BellmanEdge State :=
  {
    src := State.s0099,
    gain := -73,
    dst := State.s0128
  }

theorem edge0110_valid : edge0110.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0128 <= graphPotential State.s0099
  decide

def edge0111 : BellmanEdge State :=
  {
    src := State.s0100,
    gain := -73,
    dst := State.s0129
  }

theorem edge0111_valid : edge0111.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0129 <= graphPotential State.s0100
  decide

def edge0112 : BellmanEdge State :=
  {
    src := State.s0101,
    gain := -73,
    dst := State.s0130
  }

theorem edge0112_valid : edge0112.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0130 <= graphPotential State.s0101
  decide

def edge0113 : BellmanEdge State :=
  {
    src := State.s0102,
    gain := -73,
    dst := State.s0131
  }

theorem edge0113_valid : edge0113.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0131 <= graphPotential State.s0102
  decide

def edge0114 : BellmanEdge State :=
  {
    src := State.s0103,
    gain := -73,
    dst := State.s0132
  }

theorem edge0114_valid : edge0114.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0132 <= graphPotential State.s0103
  decide

def edge0115 : BellmanEdge State :=
  {
    src := State.s0104,
    gain := -73,
    dst := State.s0133
  }

theorem edge0115_valid : edge0115.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0133 <= graphPotential State.s0104
  decide

def edge0116 : BellmanEdge State :=
  {
    src := State.s0105,
    gain := -73,
    dst := State.s0134
  }

theorem edge0116_valid : edge0116.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0134 <= graphPotential State.s0105
  decide

def edge0117 : BellmanEdge State :=
  {
    src := State.s0106,
    gain := -73,
    dst := State.s0135
  }

theorem edge0117_valid : edge0117.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0135 <= graphPotential State.s0106
  decide

def edge0118 : BellmanEdge State :=
  {
    src := State.s0107,
    gain := -73,
    dst := State.s0136
  }

theorem edge0118_valid : edge0118.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0136 <= graphPotential State.s0107
  decide

def edge0119 : BellmanEdge State :=
  {
    src := State.s0108,
    gain := -73,
    dst := State.s0137
  }

theorem edge0119_valid : edge0119.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0137 <= graphPotential State.s0108
  decide

def edge0120 : BellmanEdge State :=
  {
    src := State.s0109,
    gain := -73,
    dst := State.s0138
  }

theorem edge0120_valid : edge0120.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0138 <= graphPotential State.s0109
  decide

def edge0121 : BellmanEdge State :=
  {
    src := State.s0110,
    gain := -73,
    dst := State.s0139
  }

theorem edge0121_valid : edge0121.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0139 <= graphPotential State.s0110
  decide

def edge0122 : BellmanEdge State :=
  {
    src := State.s0111,
    gain := -73,
    dst := State.s0140
  }

theorem edge0122_valid : edge0122.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0140 <= graphPotential State.s0111
  decide

def edge0123 : BellmanEdge State :=
  {
    src := State.s0112,
    gain := -73,
    dst := State.s0141
  }

theorem edge0123_valid : edge0123.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0141 <= graphPotential State.s0112
  decide

def edge0124 : BellmanEdge State :=
  {
    src := State.s0142,
    gain := -73,
    dst := State.s0143
  }

theorem edge0124_valid : edge0124.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0143 <= graphPotential State.s0142
  decide

def edge0125 : BellmanEdge State :=
  {
    src := State.s0143,
    gain := -73,
    dst := State.s0144
  }

theorem edge0125_valid : edge0125.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0144 <= graphPotential State.s0143
  decide

def edge0126 : BellmanEdge State :=
  {
    src := State.s0143,
    gain := -10,
    dst := State.s0145
  }

theorem edge0126_valid : edge0126.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0145 <= graphPotential State.s0143
  decide

def edge0127 : BellmanEdge State :=
  {
    src := State.s0143,
    gain := -124,
    dst := State.s0146
  }

theorem edge0127_valid : edge0127.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0146 <= graphPotential State.s0143
  decide

def edge0128 : BellmanEdge State :=
  {
    src := State.s0144,
    gain := -10,
    dst := State.s0147
  }

theorem edge0128_valid : edge0128.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0147 <= graphPotential State.s0144
  decide

def edge0129 : BellmanEdge State :=
  {
    src := State.s0144,
    gain := -124,
    dst := State.s0148
  }

theorem edge0129_valid : edge0129.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0148 <= graphPotential State.s0144
  decide

def edge0130 : BellmanEdge State :=
  {
    src := State.s0145,
    gain := -73,
    dst := State.s0147
  }

theorem edge0130_valid : edge0130.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0147 <= graphPotential State.s0145
  decide

def edge0131 : BellmanEdge State :=
  {
    src := State.s0145,
    gain := -10,
    dst := State.s0149
  }

theorem edge0131_valid : edge0131.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0149 <= graphPotential State.s0145
  decide

def edge0132 : BellmanEdge State :=
  {
    src := State.s0145,
    gain := -124,
    dst := State.s0151
  }

theorem edge0132_valid : edge0132.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0151 <= graphPotential State.s0145
  decide

def edge0133 : BellmanEdge State :=
  {
    src := State.s0146,
    gain := 114,
    dst := State.s0150
  }

theorem edge0133_valid : edge0133.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0150 <= graphPotential State.s0146
  decide

def edge0134 : BellmanEdge State :=
  {
    src := State.s0146,
    gain := 96,
    dst := State.s0152
  }

theorem edge0134_valid : edge0134.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0152 <= graphPotential State.s0146
  decide

def edge0135 : BellmanEdge State :=
  {
    src := State.s0147,
    gain := -10,
    dst := State.s0153
  }

theorem edge0135_valid : edge0135.Valid graphPotential := by
  change (-10 : Int) + graphPotential State.s0153 <= graphPotential State.s0147
  decide

def edge0136 : BellmanEdge State :=
  {
    src := State.s0147,
    gain := -124,
    dst := State.s0155
  }

theorem edge0136_valid : edge0136.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0155 <= graphPotential State.s0147
  decide

def edge0137 : BellmanEdge State :=
  {
    src := State.s0148,
    gain := 114,
    dst := State.s0154
  }

theorem edge0137_valid : edge0137.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0154 <= graphPotential State.s0148
  decide

def edge0138 : BellmanEdge State :=
  {
    src := State.s0148,
    gain := 96,
    dst := State.s0156
  }

theorem edge0138_valid : edge0138.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0156 <= graphPotential State.s0148
  decide

def edge0139 : BellmanEdge State :=
  {
    src := State.s0149,
    gain := -73,
    dst := State.s0153
  }

theorem edge0139_valid : edge0139.Valid graphPotential := by
  change (-73 : Int) + graphPotential State.s0153 <= graphPotential State.s0149
  decide

def edge0140 : BellmanEdge State :=
  {
    src := State.s0149,
    gain := -124,
    dst := State.s0158
  }

theorem edge0140_valid : edge0140.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0158 <= graphPotential State.s0149
  decide

def edge0141 : BellmanEdge State :=
  {
    src := State.s0150,
    gain := 114,
    dst := State.s0157
  }

theorem edge0141_valid : edge0141.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0157 <= graphPotential State.s0150
  decide

def edge0142 : BellmanEdge State :=
  {
    src := State.s0151,
    gain := 96,
    dst := State.s0160
  }

theorem edge0142_valid : edge0142.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0160 <= graphPotential State.s0151
  decide

def edge0143 : BellmanEdge State :=
  {
    src := State.s0152,
    gain := -18,
    dst := State.s0159
  }

theorem edge0143_valid : edge0143.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0159 <= graphPotential State.s0152
  decide

def edge0144 : BellmanEdge State :=
  {
    src := State.s0152,
    gain := -36,
    dst := State.s0161
  }

theorem edge0144_valid : edge0144.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0161 <= graphPotential State.s0152
  decide

def edge0145 : BellmanEdge State :=
  {
    src := State.s0153,
    gain := -124,
    dst := State.s0163
  }

theorem edge0145_valid : edge0145.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0163 <= graphPotential State.s0153
  decide

def edge0146 : BellmanEdge State :=
  {
    src := State.s0154,
    gain := 114,
    dst := State.s0162
  }

theorem edge0146_valid : edge0146.Valid graphPotential := by
  change (114 : Int) + graphPotential State.s0162 <= graphPotential State.s0154
  decide

def edge0147 : BellmanEdge State :=
  {
    src := State.s0154,
    gain := 96,
    dst := State.s0165
  }

theorem edge0147_valid : edge0147.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0165 <= graphPotential State.s0154
  decide

def edge0148 : BellmanEdge State :=
  {
    src := State.s0155,
    gain := 96,
    dst := State.s0166
  }

theorem edge0148_valid : edge0148.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0166 <= graphPotential State.s0155
  decide

def edge0149 : BellmanEdge State :=
  {
    src := State.s0156,
    gain := -18,
    dst := State.s0164
  }

theorem edge0149_valid : edge0149.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0164 <= graphPotential State.s0156
  decide

def edge0150 : BellmanEdge State :=
  {
    src := State.s0156,
    gain := -36,
    dst := State.s0167
  }

theorem edge0150_valid : edge0150.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0167 <= graphPotential State.s0156
  decide

def edge0151 : BellmanEdge State :=
  {
    src := State.s0157,
    gain := 96,
    dst := State.s0169
  }

theorem edge0151_valid : edge0151.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0169 <= graphPotential State.s0157
  decide

def edge0152 : BellmanEdge State :=
  {
    src := State.s0158,
    gain := 96,
    dst := State.s0170
  }

theorem edge0152_valid : edge0152.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0170 <= graphPotential State.s0158
  decide

def edge0153 : BellmanEdge State :=
  {
    src := State.s0159,
    gain := -18,
    dst := State.s0168
  }

theorem edge0153_valid : edge0153.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0168 <= graphPotential State.s0159
  decide

def edge0154 : BellmanEdge State :=
  {
    src := State.s0160,
    gain := -36,
    dst := State.s0172
  }

theorem edge0154_valid : edge0154.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0172 <= graphPotential State.s0160
  decide

def edge0155 : BellmanEdge State :=
  {
    src := State.s0161,
    gain := -54,
    dst := State.s0171
  }

theorem edge0155_valid : edge0155.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0171 <= graphPotential State.s0161
  decide

def edge0156 : BellmanEdge State :=
  {
    src := State.s0161,
    gain := -144,
    dst := State.s0173
  }

theorem edge0156_valid : edge0156.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0173 <= graphPotential State.s0161
  decide

def edge0157 : BellmanEdge State :=
  {
    src := State.s0162,
    gain := 96,
    dst := State.s0175
  }

theorem edge0157_valid : edge0157.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0175 <= graphPotential State.s0162
  decide

def edge0158 : BellmanEdge State :=
  {
    src := State.s0163,
    gain := 96,
    dst := State.s0176
  }

theorem edge0158_valid : edge0158.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0176 <= graphPotential State.s0163
  decide

def edge0159 : BellmanEdge State :=
  {
    src := State.s0164,
    gain := -18,
    dst := State.s0174
  }

theorem edge0159_valid : edge0159.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0174 <= graphPotential State.s0164
  decide

def edge0160 : BellmanEdge State :=
  {
    src := State.s0165,
    gain := -36,
    dst := State.s0178
  }

theorem edge0160_valid : edge0160.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0178 <= graphPotential State.s0165
  decide

def edge0161 : BellmanEdge State :=
  {
    src := State.s0166,
    gain := -36,
    dst := State.s0179
  }

theorem edge0161_valid : edge0161.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0179 <= graphPotential State.s0166
  decide

def edge0162 : BellmanEdge State :=
  {
    src := State.s0167,
    gain := -54,
    dst := State.s0177
  }

theorem edge0162_valid : edge0162.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0177 <= graphPotential State.s0167
  decide

def edge0163 : BellmanEdge State :=
  {
    src := State.s0167,
    gain := -144,
    dst := State.s0180
  }

theorem edge0163_valid : edge0163.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0180 <= graphPotential State.s0167
  decide

def edge0164 : BellmanEdge State :=
  {
    src := State.s0168,
    gain := -36,
    dst := State.s0182
  }

theorem edge0164_valid : edge0164.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0182 <= graphPotential State.s0168
  decide

def edge0165 : BellmanEdge State :=
  {
    src := State.s0169,
    gain := -36,
    dst := State.s0183
  }

theorem edge0165_valid : edge0165.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0183 <= graphPotential State.s0169
  decide

def edge0166 : BellmanEdge State :=
  {
    src := State.s0170,
    gain := -36,
    dst := State.s0184
  }

theorem edge0166_valid : edge0166.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0184 <= graphPotential State.s0170
  decide

def edge0167 : BellmanEdge State :=
  {
    src := State.s0171,
    gain := -54,
    dst := State.s0181
  }

theorem edge0167_valid : edge0167.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0181 <= graphPotential State.s0171
  decide

def edge0168 : BellmanEdge State :=
  {
    src := State.s0172,
    gain := -144,
    dst := State.s0186
  }

theorem edge0168_valid : edge0168.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0186 <= graphPotential State.s0172
  decide

def edge0169 : BellmanEdge State :=
  {
    src := State.s0173,
    gain := 90,
    dst := State.s0185
  }

theorem edge0169_valid : edge0169.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0185 <= graphPotential State.s0173
  decide

def edge0170 : BellmanEdge State :=
  {
    src := State.s0173,
    gain := -144,
    dst := State.s0187
  }

theorem edge0170_valid : edge0170.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0187 <= graphPotential State.s0173
  decide

def edge0171 : BellmanEdge State :=
  {
    src := State.s0174,
    gain := -36,
    dst := State.s0189
  }

theorem edge0171_valid : edge0171.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0189 <= graphPotential State.s0174
  decide

def edge0172 : BellmanEdge State :=
  {
    src := State.s0175,
    gain := -36,
    dst := State.s0190
  }

theorem edge0172_valid : edge0172.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0190 <= graphPotential State.s0175
  decide

def edge0173 : BellmanEdge State :=
  {
    src := State.s0176,
    gain := -36,
    dst := State.s0191
  }

theorem edge0173_valid : edge0173.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0191 <= graphPotential State.s0176
  decide

def edge0174 : BellmanEdge State :=
  {
    src := State.s0177,
    gain := -54,
    dst := State.s0188
  }

theorem edge0174_valid : edge0174.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0188 <= graphPotential State.s0177
  decide

def edge0175 : BellmanEdge State :=
  {
    src := State.s0178,
    gain := -144,
    dst := State.s0193
  }

theorem edge0175_valid : edge0175.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0193 <= graphPotential State.s0178
  decide

def edge0176 : BellmanEdge State :=
  {
    src := State.s0179,
    gain := -144,
    dst := State.s0194
  }

theorem edge0176_valid : edge0176.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0194 <= graphPotential State.s0179
  decide

def edge0177 : BellmanEdge State :=
  {
    src := State.s0180,
    gain := 90,
    dst := State.s0192
  }

theorem edge0177_valid : edge0177.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0192 <= graphPotential State.s0180
  decide

def edge0178 : BellmanEdge State :=
  {
    src := State.s0180,
    gain := -144,
    dst := State.s0195
  }

theorem edge0178_valid : edge0178.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0195 <= graphPotential State.s0180
  decide

def edge0179 : BellmanEdge State :=
  {
    src := State.s0181,
    gain := -144,
    dst := State.s0197
  }

theorem edge0179_valid : edge0179.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0197 <= graphPotential State.s0181
  decide

def edge0180 : BellmanEdge State :=
  {
    src := State.s0182,
    gain := -144,
    dst := State.s0198
  }

theorem edge0180_valid : edge0180.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0198 <= graphPotential State.s0182
  decide

def edge0181 : BellmanEdge State :=
  {
    src := State.s0183,
    gain := -144,
    dst := State.s0199
  }

theorem edge0181_valid : edge0181.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0199 <= graphPotential State.s0183
  decide

def edge0182 : BellmanEdge State :=
  {
    src := State.s0184,
    gain := -144,
    dst := State.s0200
  }

theorem edge0182_valid : edge0182.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0200 <= graphPotential State.s0184
  decide

def edge0183 : BellmanEdge State :=
  {
    src := State.s0185,
    gain := 90,
    dst := State.s0196
  }

theorem edge0183_valid : edge0183.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0196 <= graphPotential State.s0185
  decide

def edge0184 : BellmanEdge State :=
  {
    src := State.s0186,
    gain := -144,
    dst := State.s0202
  }

theorem edge0184_valid : edge0184.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0202 <= graphPotential State.s0186
  decide

def edge0185 : BellmanEdge State :=
  {
    src := State.s0187,
    gain := -54,
    dst := State.s0201
  }

theorem edge0185_valid : edge0185.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0201 <= graphPotential State.s0187
  decide

def edge0186 : BellmanEdge State :=
  {
    src := State.s0187,
    gain := -36,
    dst := State.s0203
  }

theorem edge0186_valid : edge0186.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0203 <= graphPotential State.s0187
  decide

def edge0187 : BellmanEdge State :=
  {
    src := State.s0188,
    gain := -144,
    dst := State.s0205
  }

theorem edge0187_valid : edge0187.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0205 <= graphPotential State.s0188
  decide

def edge0188 : BellmanEdge State :=
  {
    src := State.s0189,
    gain := -144,
    dst := State.s0206
  }

theorem edge0188_valid : edge0188.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0206 <= graphPotential State.s0189
  decide

def edge0189 : BellmanEdge State :=
  {
    src := State.s0190,
    gain := -144,
    dst := State.s0207
  }

theorem edge0189_valid : edge0189.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0207 <= graphPotential State.s0190
  decide

def edge0190 : BellmanEdge State :=
  {
    src := State.s0191,
    gain := -144,
    dst := State.s0208
  }

theorem edge0190_valid : edge0190.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0208 <= graphPotential State.s0191
  decide

def edge0191 : BellmanEdge State :=
  {
    src := State.s0192,
    gain := 90,
    dst := State.s0204
  }

theorem edge0191_valid : edge0191.Valid graphPotential := by
  change (90 : Int) + graphPotential State.s0204 <= graphPotential State.s0192
  decide

def edge0192 : BellmanEdge State :=
  {
    src := State.s0193,
    gain := -144,
    dst := State.s0210
  }

theorem edge0192_valid : edge0192.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0210 <= graphPotential State.s0193
  decide

def edge0193 : BellmanEdge State :=
  {
    src := State.s0194,
    gain := -144,
    dst := State.s0211
  }

theorem edge0193_valid : edge0193.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0211 <= graphPotential State.s0194
  decide

def edge0194 : BellmanEdge State :=
  {
    src := State.s0195,
    gain := -54,
    dst := State.s0209
  }

theorem edge0194_valid : edge0194.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0209 <= graphPotential State.s0195
  decide

def edge0195 : BellmanEdge State :=
  {
    src := State.s0195,
    gain := -36,
    dst := State.s0213
  }

theorem edge0195_valid : edge0195.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0213 <= graphPotential State.s0195
  decide

def edge0196 : BellmanEdge State :=
  {
    src := State.s0196,
    gain := -144,
    dst := State.s0215
  }

theorem edge0196_valid : edge0196.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0215 <= graphPotential State.s0196
  decide

def edge0197 : BellmanEdge State :=
  {
    src := State.s0197,
    gain := -144,
    dst := State.s0216
  }

theorem edge0197_valid : edge0197.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0216 <= graphPotential State.s0197
  decide

def edge0198 : BellmanEdge State :=
  {
    src := State.s0198,
    gain := -144,
    dst := State.s0217
  }

theorem edge0198_valid : edge0198.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0217 <= graphPotential State.s0198
  decide

def edge0199 : BellmanEdge State :=
  {
    src := State.s0199,
    gain := -144,
    dst := State.s0218
  }

theorem edge0199_valid : edge0199.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0218 <= graphPotential State.s0199
  decide

def edge0200 : BellmanEdge State :=
  {
    src := State.s0200,
    gain := -144,
    dst := State.s0219
  }

theorem edge0200_valid : edge0200.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0219 <= graphPotential State.s0200
  decide

def edge0201 : BellmanEdge State :=
  {
    src := State.s0201,
    gain := -54,
    dst := State.s0214
  }

theorem edge0201_valid : edge0201.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0214 <= graphPotential State.s0201
  decide

def edge0202 : BellmanEdge State :=
  {
    src := State.s0202,
    gain := -36,
    dst := State.s0221
  }

theorem edge0202_valid : edge0202.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0221 <= graphPotential State.s0202
  decide

def edge0203 : BellmanEdge State :=
  {
    src := State.s0203,
    gain := -117,
    dst := State.s0212
  }

theorem edge0203_valid : edge0203.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0212 <= graphPotential State.s0203
  decide

def edge0204 : BellmanEdge State :=
  {
    src := State.s0203,
    gain := -18,
    dst := State.s0220
  }

theorem edge0204_valid : edge0204.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0220 <= graphPotential State.s0203
  decide

def edge0205 : BellmanEdge State :=
  {
    src := State.s0203,
    gain := 96,
    dst := State.s0222
  }

theorem edge0205_valid : edge0205.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0222 <= graphPotential State.s0203
  decide

def edge0206 : BellmanEdge State :=
  {
    src := State.s0204,
    gain := -144,
    dst := State.s0002
  }

theorem edge0206_valid : edge0206.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0002 <= graphPotential State.s0204
  decide

def edge0207 : BellmanEdge State :=
  {
    src := State.s0205,
    gain := -144,
    dst := State.s0003
  }

theorem edge0207_valid : edge0207.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0003 <= graphPotential State.s0205
  decide

def edge0208 : BellmanEdge State :=
  {
    src := State.s0206,
    gain := -144,
    dst := State.s0004
  }

theorem edge0208_valid : edge0208.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0004 <= graphPotential State.s0206
  decide

def edge0209 : BellmanEdge State :=
  {
    src := State.s0207,
    gain := -144,
    dst := State.s0005
  }

theorem edge0209_valid : edge0209.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0005 <= graphPotential State.s0207
  decide

def edge0210 : BellmanEdge State :=
  {
    src := State.s0208,
    gain := -144,
    dst := State.s0006
  }

theorem edge0210_valid : edge0210.Valid graphPotential := by
  change (-144 : Int) + graphPotential State.s0006 <= graphPotential State.s0208
  decide

def edge0211 : BellmanEdge State :=
  {
    src := State.s0209,
    gain := -54,
    dst := State.s0001
  }

theorem edge0211_valid : edge0211.Valid graphPotential := by
  change (-54 : Int) + graphPotential State.s0001 <= graphPotential State.s0209
  decide

def edge0212 : BellmanEdge State :=
  {
    src := State.s0210,
    gain := -36,
    dst := State.s0009
  }

theorem edge0212_valid : edge0212.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0009 <= graphPotential State.s0210
  decide

def edge0213 : BellmanEdge State :=
  {
    src := State.s0211,
    gain := -36,
    dst := State.s0011
  }

theorem edge0213_valid : edge0213.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0011 <= graphPotential State.s0211
  decide

def edge0214 : BellmanEdge State :=
  {
    src := State.s0212,
    gain := -18,
    dst := State.s0007
  }

theorem edge0214_valid : edge0214.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0007 <= graphPotential State.s0212
  decide

def edge0215 : BellmanEdge State :=
  {
    src := State.s0212,
    gain := 96,
    dst := State.s0012
  }

theorem edge0215_valid : edge0215.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0012 <= graphPotential State.s0212
  decide

def edge0216 : BellmanEdge State :=
  {
    src := State.s0213,
    gain := -18,
    dst := State.s0008
  }

theorem edge0216_valid : edge0216.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0008 <= graphPotential State.s0213
  decide

def edge0217 : BellmanEdge State :=
  {
    src := State.s0213,
    gain := 96,
    dst := State.s0013
  }

theorem edge0217_valid : edge0217.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0013 <= graphPotential State.s0213
  decide

def edge0218 : BellmanEdge State :=
  {
    src := State.s0214,
    gain := -36,
    dst := State.s0015
  }

theorem edge0218_valid : edge0218.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0015 <= graphPotential State.s0214
  decide

def edge0219 : BellmanEdge State :=
  {
    src := State.s0215,
    gain := -36,
    dst := State.s0016
  }

theorem edge0219_valid : edge0219.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0016 <= graphPotential State.s0215
  decide

def edge0220 : BellmanEdge State :=
  {
    src := State.s0216,
    gain := -36,
    dst := State.s0017
  }

theorem edge0220_valid : edge0220.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0017 <= graphPotential State.s0216
  decide

def edge0221 : BellmanEdge State :=
  {
    src := State.s0217,
    gain := -36,
    dst := State.s0018
  }

theorem edge0221_valid : edge0221.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0018 <= graphPotential State.s0217
  decide

def edge0222 : BellmanEdge State :=
  {
    src := State.s0218,
    gain := -36,
    dst := State.s0019
  }

theorem edge0222_valid : edge0222.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0019 <= graphPotential State.s0218
  decide

def edge0223 : BellmanEdge State :=
  {
    src := State.s0219,
    gain := -36,
    dst := State.s0020
  }

theorem edge0223_valid : edge0223.Valid graphPotential := by
  change (-36 : Int) + graphPotential State.s0020 <= graphPotential State.s0219
  decide

def edge0224 : BellmanEdge State :=
  {
    src := State.s0220,
    gain := -117,
    dst := State.s0007
  }

theorem edge0224_valid : edge0224.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0007 <= graphPotential State.s0220
  decide

def edge0225 : BellmanEdge State :=
  {
    src := State.s0220,
    gain := -18,
    dst := State.s0014
  }

theorem edge0225_valid : edge0225.Valid graphPotential := by
  change (-18 : Int) + graphPotential State.s0014 <= graphPotential State.s0220
  decide

def edge0226 : BellmanEdge State :=
  {
    src := State.s0221,
    gain := -117,
    dst := State.s0010
  }

theorem edge0226_valid : edge0226.Valid graphPotential := by
  change (-117 : Int) + graphPotential State.s0010 <= graphPotential State.s0221
  decide

def edge0227 : BellmanEdge State :=
  {
    src := State.s0221,
    gain := 96,
    dst := State.s0021
  }

theorem edge0227_valid : edge0227.Valid graphPotential := by
  change (96 : Int) + graphPotential State.s0021 <= graphPotential State.s0221
  decide

def edge0228 : BellmanEdge State :=
  {
    src := State.s0222,
    gain := -124,
    dst := State.s0022
  }

theorem edge0228_valid : edge0228.Valid graphPotential := by
  change (-124 : Int) + graphPotential State.s0022 <= graphPotential State.s0222
  decide

inductive GraphEdge : BellmanEdge State -> Prop where
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

theorem GraphEdge.valid {e : BellmanEdge State} :
    GraphEdge e -> BellmanEdge.Valid graphPotential e := by
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

theorem root_bound :
    (176 : Int) + graphPotential rootState <= 0 := by
  decide

-- label count: 14
inductive SmokeLabel where
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

def smokeLabelOfFace : Face -> SmokeLabel
  | Face.xp => SmokeLabel.l0009
  | Face.xm => SmokeLabel.l0008
  | Face.yp => SmokeLabel.l0011
  | Face.ym => SmokeLabel.l0010
  | Face.zp => SmokeLabel.l0013
  | Face.zm => SmokeLabel.l0012
  | Face.tppp => SmokeLabel.l0007
  | Face.tppm => SmokeLabel.l0006
  | Face.tpmp => SmokeLabel.l0005
  | Face.tmpp => SmokeLabel.l0003
  | Face.tpmm => SmokeLabel.l0004
  | Face.tmpm => SmokeLabel.l0002
  | Face.tmmp => SmokeLabel.l0001
  | Face.tmmm => SmokeLabel.l0000

def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=
  faceLabelsInContributionOrder smokeLabelOfFace seq

inductive SmokeStep : State -> SmokeLabel -> State -> Int -> Prop where
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

theorem SmokeStep.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
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

-- graph-global deterministic eval transitions: 229
def graphSmokeNext_s0000 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0008 => some (State.s0142, (103 : Int))
  | _ => none

def graphSmokeNext_s0001 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0029, (-36 : Int))
  | _ => none

def graphSmokeNext_s0002 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0031, (-36 : Int))
  | _ => none

def graphSmokeNext_s0003 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0032, (-36 : Int))
  | _ => none

def graphSmokeNext_s0004 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0033, (-36 : Int))
  | _ => none

def graphSmokeNext_s0005 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0034, (-36 : Int))
  | _ => none

def graphSmokeNext_s0006 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0036, (-36 : Int))
  | _ => none

def graphSmokeNext_s0007 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0023, (-18 : Int))
  | _ => none

def graphSmokeNext_s0008 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0030, (-18 : Int))
  | _ => none

def graphSmokeNext_s0009 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0039, (96 : Int))
  | _ => none

def graphSmokeNext_s0010 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0040, (96 : Int))
  | _ => none

def graphSmokeNext_s0011 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0041, (96 : Int))
  | _ => none

def graphSmokeNext_s0012 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0043, (-124 : Int))
  | SmokeLabel.l0012 => some (State.s0037, (114 : Int))
  | _ => none

def graphSmokeNext_s0013 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0044, (-124 : Int))
  | SmokeLabel.l0012 => some (State.s0038, (114 : Int))
  | _ => none

def graphSmokeNext_s0014 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0045, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0023, (-117 : Int))
  | _ => none

def graphSmokeNext_s0015 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0046, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0024, (-117 : Int))
  | _ => none

def graphSmokeNext_s0016 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0047, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0025, (-117 : Int))
  | _ => none

def graphSmokeNext_s0017 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0048, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0026, (-117 : Int))
  | _ => none

def graphSmokeNext_s0018 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0049, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0027, (-117 : Int))
  | _ => none

def graphSmokeNext_s0019 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0028, (-117 : Int))
  | _ => none

def graphSmokeNext_s0020 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0050, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0035, (-117 : Int))
  | _ => none

def graphSmokeNext_s0021 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0052, (-124 : Int))
  | _ => none

def graphSmokeNext_s0022 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0042, (103 : Int))
  | SmokeLabel.l0012 => some (State.s0051, (-10 : Int))
  | _ => none

def graphSmokeNext_s0023 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0053, (96 : Int))
  | _ => none

def graphSmokeNext_s0024 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0055, (96 : Int))
  | _ => none

def graphSmokeNext_s0025 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0056, (96 : Int))
  | _ => none

def graphSmokeNext_s0026 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0057, (96 : Int))
  | _ => none

def graphSmokeNext_s0027 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0058, (96 : Int))
  | _ => none

def graphSmokeNext_s0028 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0059, (96 : Int))
  | _ => none

def graphSmokeNext_s0029 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0060, (96 : Int))
  | _ => none

def graphSmokeNext_s0030 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0061, (96 : Int))
  | _ => none

def graphSmokeNext_s0031 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0063, (96 : Int))
  | _ => none

def graphSmokeNext_s0032 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0064, (96 : Int))
  | _ => none

def graphSmokeNext_s0033 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0065, (96 : Int))
  | _ => none

def graphSmokeNext_s0034 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0067, (96 : Int))
  | _ => none

def graphSmokeNext_s0035 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0068, (96 : Int))
  | _ => none

def graphSmokeNext_s0036 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0069, (96 : Int))
  | _ => none

def graphSmokeNext_s0037 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0054, (114 : Int))
  | _ => none

def graphSmokeNext_s0038 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0062, (114 : Int))
  | _ => none

def graphSmokeNext_s0039 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0066, (114 : Int))
  | _ => none

def graphSmokeNext_s0040 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0073, (-124 : Int))
  | _ => none

def graphSmokeNext_s0041 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0075, (-124 : Int))
  | _ => none

def graphSmokeNext_s0042 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0070, (-10 : Int))
  | _ => none

def graphSmokeNext_s0043 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0071, (-10 : Int))
  | _ => none

def graphSmokeNext_s0044 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0072, (-10 : Int))
  | _ => none

def graphSmokeNext_s0045 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0076, (-124 : Int))
  | _ => none

def graphSmokeNext_s0046 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0078, (-124 : Int))
  | _ => none

def graphSmokeNext_s0047 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0079, (-124 : Int))
  | _ => none

def graphSmokeNext_s0048 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0080, (-124 : Int))
  | _ => none

def graphSmokeNext_s0049 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0081, (-124 : Int))
  | _ => none

def graphSmokeNext_s0050 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0083, (-124 : Int))
  | _ => none

def graphSmokeNext_s0051 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0070, (103 : Int))
  | SmokeLabel.l0013 => some (State.s0077, (-10 : Int))
  | _ => none

def graphSmokeNext_s0052 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0074, (103 : Int))
  | SmokeLabel.l0013 => some (State.s0082, (-10 : Int))
  | _ => none

def graphSmokeNext_s0053 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0085, (-124 : Int))
  | _ => none

def graphSmokeNext_s0054 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0088, (-124 : Int))
  | _ => none

def graphSmokeNext_s0055 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0090, (-124 : Int))
  | _ => none

def graphSmokeNext_s0056 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0092, (-124 : Int))
  | _ => none

def graphSmokeNext_s0057 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0094, (-124 : Int))
  | _ => none

def graphSmokeNext_s0058 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0096, (-124 : Int))
  | _ => none

def graphSmokeNext_s0059 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0097, (-124 : Int))
  | _ => none

def graphSmokeNext_s0060 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0098, (-124 : Int))
  | _ => none

def graphSmokeNext_s0061 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0099, (-124 : Int))
  | _ => none

def graphSmokeNext_s0062 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0101, (-124 : Int))
  | _ => none

def graphSmokeNext_s0063 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0102, (-124 : Int))
  | _ => none

def graphSmokeNext_s0064 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0103, (-124 : Int))
  | _ => none

def graphSmokeNext_s0065 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0104, (-124 : Int))
  | _ => none

def graphSmokeNext_s0066 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0105, (-124 : Int))
  | _ => none

def graphSmokeNext_s0067 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0106, (-124 : Int))
  | _ => none

def graphSmokeNext_s0068 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0111, (-124 : Int))
  | _ => none

def graphSmokeNext_s0069 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0112, (-124 : Int))
  | _ => none

def graphSmokeNext_s0070 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0086, (-10 : Int))
  | _ => none

def graphSmokeNext_s0071 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0087, (-10 : Int))
  | _ => none

def graphSmokeNext_s0072 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0100, (-10 : Int))
  | _ => none

def graphSmokeNext_s0073 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0107, (-10 : Int))
  | _ => none

def graphSmokeNext_s0074 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0108, (-10 : Int))
  | _ => none

def graphSmokeNext_s0075 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0109, (-10 : Int))
  | _ => none

def graphSmokeNext_s0076 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0084, (103 : Int))
  | _ => none

def graphSmokeNext_s0077 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0086, (103 : Int))
  | _ => none

def graphSmokeNext_s0078 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0089, (103 : Int))
  | _ => none

def graphSmokeNext_s0079 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0091, (103 : Int))
  | _ => none

def graphSmokeNext_s0080 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0093, (103 : Int))
  | _ => none

def graphSmokeNext_s0081 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0095, (103 : Int))
  | _ => none

def graphSmokeNext_s0082 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0108, (103 : Int))
  | _ => none

def graphSmokeNext_s0083 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0110, (103 : Int))
  | _ => none

def graphSmokeNext_s0084 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0113, (-73 : Int))
  | _ => none

def graphSmokeNext_s0085 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0114, (-73 : Int))
  | _ => none

def graphSmokeNext_s0086 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0115, (-73 : Int))
  | _ => none

def graphSmokeNext_s0087 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0116, (-73 : Int))
  | _ => none

def graphSmokeNext_s0088 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0117, (-73 : Int))
  | _ => none

def graphSmokeNext_s0089 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0118, (-73 : Int))
  | _ => none

def graphSmokeNext_s0090 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0119, (-73 : Int))
  | _ => none

def graphSmokeNext_s0091 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0120, (-73 : Int))
  | _ => none

def graphSmokeNext_s0092 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0121, (-73 : Int))
  | _ => none

def graphSmokeNext_s0093 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0122, (-73 : Int))
  | _ => none

def graphSmokeNext_s0094 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0123, (-73 : Int))
  | _ => none

def graphSmokeNext_s0095 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0124, (-73 : Int))
  | _ => none

def graphSmokeNext_s0096 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0125, (-73 : Int))
  | _ => none

def graphSmokeNext_s0097 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0126, (-73 : Int))
  | _ => none

def graphSmokeNext_s0098 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0127, (-73 : Int))
  | _ => none

def graphSmokeNext_s0099 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0128, (-73 : Int))
  | _ => none

def graphSmokeNext_s0100 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0129, (-73 : Int))
  | _ => none

def graphSmokeNext_s0101 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0130, (-73 : Int))
  | _ => none

def graphSmokeNext_s0102 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0131, (-73 : Int))
  | _ => none

def graphSmokeNext_s0103 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0132, (-73 : Int))
  | _ => none

def graphSmokeNext_s0104 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0133, (-73 : Int))
  | _ => none

def graphSmokeNext_s0105 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0134, (-73 : Int))
  | _ => none

def graphSmokeNext_s0106 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0135, (-73 : Int))
  | _ => none

def graphSmokeNext_s0107 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0136, (-73 : Int))
  | _ => none

def graphSmokeNext_s0108 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0137, (-73 : Int))
  | _ => none

def graphSmokeNext_s0109 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0138, (-73 : Int))
  | _ => none

def graphSmokeNext_s0110 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0139, (-73 : Int))
  | _ => none

def graphSmokeNext_s0111 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0140, (-73 : Int))
  | _ => none

def graphSmokeNext_s0112 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0009 => some (State.s0141, (-73 : Int))
  | _ => none

def graphSmokeNext_s0113 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0114 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0115 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0116 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0117 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0118 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0119 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0120 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0121 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0122 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0123 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0124 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0125 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0126 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0127 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0128 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0129 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0130 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0131 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0132 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0133 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0134 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0135 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0136 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0137 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0138 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0139 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0140 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0141 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0142 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0010 => some (State.s0143, (-73 : Int))
  | _ => none

def graphSmokeNext_s0143 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0146, (-124 : Int))
  | SmokeLabel.l0011 => some (State.s0144, (-73 : Int))
  | SmokeLabel.l0012 => some (State.s0145, (-10 : Int))
  | _ => none

def graphSmokeNext_s0144 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0148, (-124 : Int))
  | SmokeLabel.l0012 => some (State.s0147, (-10 : Int))
  | _ => none

def graphSmokeNext_s0145 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0151, (-124 : Int))
  | SmokeLabel.l0011 => some (State.s0147, (-73 : Int))
  | SmokeLabel.l0013 => some (State.s0149, (-10 : Int))
  | _ => none

def graphSmokeNext_s0146 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0152, (96 : Int))
  | SmokeLabel.l0012 => some (State.s0150, (114 : Int))
  | _ => none

def graphSmokeNext_s0147 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0155, (-124 : Int))
  | SmokeLabel.l0013 => some (State.s0153, (-10 : Int))
  | _ => none

def graphSmokeNext_s0148 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0156, (96 : Int))
  | SmokeLabel.l0012 => some (State.s0154, (114 : Int))
  | _ => none

def graphSmokeNext_s0149 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0158, (-124 : Int))
  | SmokeLabel.l0011 => some (State.s0153, (-73 : Int))
  | _ => none

def graphSmokeNext_s0150 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0013 => some (State.s0157, (114 : Int))
  | _ => none

def graphSmokeNext_s0151 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0160, (96 : Int))
  | _ => none

def graphSmokeNext_s0152 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0161, (-36 : Int))
  | SmokeLabel.l0013 => some (State.s0159, (-18 : Int))
  | _ => none

def graphSmokeNext_s0153 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0163, (-124 : Int))
  | _ => none

def graphSmokeNext_s0154 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0165, (96 : Int))
  | SmokeLabel.l0013 => some (State.s0162, (114 : Int))
  | _ => none

def graphSmokeNext_s0155 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0166, (96 : Int))
  | _ => none

def graphSmokeNext_s0156 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0167, (-36 : Int))
  | SmokeLabel.l0013 => some (State.s0164, (-18 : Int))
  | _ => none

def graphSmokeNext_s0157 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0169, (96 : Int))
  | _ => none

def graphSmokeNext_s0158 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0170, (96 : Int))
  | _ => none

def graphSmokeNext_s0159 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0168, (-18 : Int))
  | _ => none

def graphSmokeNext_s0160 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0172, (-36 : Int))
  | _ => none

def graphSmokeNext_s0161 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0173, (-144 : Int))
  | SmokeLabel.l0013 => some (State.s0171, (-54 : Int))
  | _ => none

def graphSmokeNext_s0162 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0175, (96 : Int))
  | _ => none

def graphSmokeNext_s0163 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0176, (96 : Int))
  | _ => none

def graphSmokeNext_s0164 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0174, (-18 : Int))
  | _ => none

def graphSmokeNext_s0165 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0178, (-36 : Int))
  | _ => none

def graphSmokeNext_s0166 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0179, (-36 : Int))
  | _ => none

def graphSmokeNext_s0167 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0180, (-144 : Int))
  | SmokeLabel.l0013 => some (State.s0177, (-54 : Int))
  | _ => none

def graphSmokeNext_s0168 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0182, (-36 : Int))
  | _ => none

def graphSmokeNext_s0169 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0183, (-36 : Int))
  | _ => none

def graphSmokeNext_s0170 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0184, (-36 : Int))
  | _ => none

def graphSmokeNext_s0171 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0181, (-54 : Int))
  | _ => none

def graphSmokeNext_s0172 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0186, (-144 : Int))
  | _ => none

def graphSmokeNext_s0173 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0187, (-144 : Int))
  | SmokeLabel.l0013 => some (State.s0185, (90 : Int))
  | _ => none

def graphSmokeNext_s0174 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0189, (-36 : Int))
  | _ => none

def graphSmokeNext_s0175 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0190, (-36 : Int))
  | _ => none

def graphSmokeNext_s0176 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0191, (-36 : Int))
  | _ => none

def graphSmokeNext_s0177 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0188, (-54 : Int))
  | _ => none

def graphSmokeNext_s0178 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0193, (-144 : Int))
  | _ => none

def graphSmokeNext_s0179 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0194, (-144 : Int))
  | _ => none

def graphSmokeNext_s0180 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0195, (-144 : Int))
  | SmokeLabel.l0013 => some (State.s0192, (90 : Int))
  | _ => none

def graphSmokeNext_s0181 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0197, (-144 : Int))
  | _ => none

def graphSmokeNext_s0182 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0198, (-144 : Int))
  | _ => none

def graphSmokeNext_s0183 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0199, (-144 : Int))
  | _ => none

def graphSmokeNext_s0184 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0200, (-144 : Int))
  | _ => none

def graphSmokeNext_s0185 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0196, (90 : Int))
  | _ => none

def graphSmokeNext_s0186 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0202, (-144 : Int))
  | _ => none

def graphSmokeNext_s0187 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0203, (-36 : Int))
  | SmokeLabel.l0013 => some (State.s0201, (-54 : Int))
  | _ => none

def graphSmokeNext_s0188 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0205, (-144 : Int))
  | _ => none

def graphSmokeNext_s0189 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0206, (-144 : Int))
  | _ => none

def graphSmokeNext_s0190 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0207, (-144 : Int))
  | _ => none

def graphSmokeNext_s0191 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0208, (-144 : Int))
  | _ => none

def graphSmokeNext_s0192 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0204, (90 : Int))
  | _ => none

def graphSmokeNext_s0193 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0210, (-144 : Int))
  | _ => none

def graphSmokeNext_s0194 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0211, (-144 : Int))
  | _ => none

def graphSmokeNext_s0195 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0007 => some (State.s0213, (-36 : Int))
  | SmokeLabel.l0013 => some (State.s0209, (-54 : Int))
  | _ => none

def graphSmokeNext_s0196 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0215, (-144 : Int))
  | _ => none

def graphSmokeNext_s0197 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0216, (-144 : Int))
  | _ => none

def graphSmokeNext_s0198 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0217, (-144 : Int))
  | _ => none

def graphSmokeNext_s0199 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0218, (-144 : Int))
  | _ => none

def graphSmokeNext_s0200 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0219, (-144 : Int))
  | _ => none

def graphSmokeNext_s0201 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0214, (-54 : Int))
  | _ => none

def graphSmokeNext_s0202 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0004 => some (State.s0221, (-36 : Int))
  | _ => none

def graphSmokeNext_s0203 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0001 => some (State.s0222, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0212, (-117 : Int))
  | SmokeLabel.l0013 => some (State.s0220, (-18 : Int))
  | _ => none

def graphSmokeNext_s0204 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0002, (-144 : Int))
  | _ => none

def graphSmokeNext_s0205 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0003, (-144 : Int))
  | _ => none

def graphSmokeNext_s0206 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0004, (-144 : Int))
  | _ => none

def graphSmokeNext_s0207 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0005, (-144 : Int))
  | _ => none

def graphSmokeNext_s0208 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0002 => some (State.s0006, (-144 : Int))
  | _ => none

def graphSmokeNext_s0209 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0012 => some (State.s0001, (-54 : Int))
  | _ => none

def graphSmokeNext_s0210 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0009, (-36 : Int))
  | _ => none

def graphSmokeNext_s0211 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0006 => some (State.s0011, (-36 : Int))
  | _ => none

def graphSmokeNext_s0212 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0012, (96 : Int))
  | SmokeLabel.l0013 => some (State.s0007, (-18 : Int))
  | _ => none

def graphSmokeNext_s0213 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0013, (96 : Int))
  | SmokeLabel.l0013 => some (State.s0008, (-18 : Int))
  | _ => none

def graphSmokeNext_s0214 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0015, (-36 : Int))
  | _ => none

def graphSmokeNext_s0215 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0016, (-36 : Int))
  | _ => none

def graphSmokeNext_s0216 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0017, (-36 : Int))
  | _ => none

def graphSmokeNext_s0217 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0018, (-36 : Int))
  | _ => none

def graphSmokeNext_s0218 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0019, (-36 : Int))
  | _ => none

def graphSmokeNext_s0219 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0005 => some (State.s0020, (-36 : Int))
  | _ => none

def graphSmokeNext_s0220 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0011 => some (State.s0007, (-117 : Int))
  | SmokeLabel.l0012 => some (State.s0014, (-18 : Int))
  | _ => none

def graphSmokeNext_s0221 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0000 => some (State.s0021, (96 : Int))
  | SmokeLabel.l0011 => some (State.s0010, (-117 : Int))
  | _ => none

def graphSmokeNext_s0222 : SmokeLabel -> Option (State × Int)
  | SmokeLabel.l0003 => some (State.s0022, (-124 : Int))
  | _ => none

def graphSmokeNext : State -> SmokeLabel -> Option (State × Int)
  | State.s0000 => graphSmokeNext_s0000
  | State.s0001 => graphSmokeNext_s0001
  | State.s0002 => graphSmokeNext_s0002
  | State.s0003 => graphSmokeNext_s0003
  | State.s0004 => graphSmokeNext_s0004
  | State.s0005 => graphSmokeNext_s0005
  | State.s0006 => graphSmokeNext_s0006
  | State.s0007 => graphSmokeNext_s0007
  | State.s0008 => graphSmokeNext_s0008
  | State.s0009 => graphSmokeNext_s0009
  | State.s0010 => graphSmokeNext_s0010
  | State.s0011 => graphSmokeNext_s0011
  | State.s0012 => graphSmokeNext_s0012
  | State.s0013 => graphSmokeNext_s0013
  | State.s0014 => graphSmokeNext_s0014
  | State.s0015 => graphSmokeNext_s0015
  | State.s0016 => graphSmokeNext_s0016
  | State.s0017 => graphSmokeNext_s0017
  | State.s0018 => graphSmokeNext_s0018
  | State.s0019 => graphSmokeNext_s0019
  | State.s0020 => graphSmokeNext_s0020
  | State.s0021 => graphSmokeNext_s0021
  | State.s0022 => graphSmokeNext_s0022
  | State.s0023 => graphSmokeNext_s0023
  | State.s0024 => graphSmokeNext_s0024
  | State.s0025 => graphSmokeNext_s0025
  | State.s0026 => graphSmokeNext_s0026
  | State.s0027 => graphSmokeNext_s0027
  | State.s0028 => graphSmokeNext_s0028
  | State.s0029 => graphSmokeNext_s0029
  | State.s0030 => graphSmokeNext_s0030
  | State.s0031 => graphSmokeNext_s0031
  | State.s0032 => graphSmokeNext_s0032
  | State.s0033 => graphSmokeNext_s0033
  | State.s0034 => graphSmokeNext_s0034
  | State.s0035 => graphSmokeNext_s0035
  | State.s0036 => graphSmokeNext_s0036
  | State.s0037 => graphSmokeNext_s0037
  | State.s0038 => graphSmokeNext_s0038
  | State.s0039 => graphSmokeNext_s0039
  | State.s0040 => graphSmokeNext_s0040
  | State.s0041 => graphSmokeNext_s0041
  | State.s0042 => graphSmokeNext_s0042
  | State.s0043 => graphSmokeNext_s0043
  | State.s0044 => graphSmokeNext_s0044
  | State.s0045 => graphSmokeNext_s0045
  | State.s0046 => graphSmokeNext_s0046
  | State.s0047 => graphSmokeNext_s0047
  | State.s0048 => graphSmokeNext_s0048
  | State.s0049 => graphSmokeNext_s0049
  | State.s0050 => graphSmokeNext_s0050
  | State.s0051 => graphSmokeNext_s0051
  | State.s0052 => graphSmokeNext_s0052
  | State.s0053 => graphSmokeNext_s0053
  | State.s0054 => graphSmokeNext_s0054
  | State.s0055 => graphSmokeNext_s0055
  | State.s0056 => graphSmokeNext_s0056
  | State.s0057 => graphSmokeNext_s0057
  | State.s0058 => graphSmokeNext_s0058
  | State.s0059 => graphSmokeNext_s0059
  | State.s0060 => graphSmokeNext_s0060
  | State.s0061 => graphSmokeNext_s0061
  | State.s0062 => graphSmokeNext_s0062
  | State.s0063 => graphSmokeNext_s0063
  | State.s0064 => graphSmokeNext_s0064
  | State.s0065 => graphSmokeNext_s0065
  | State.s0066 => graphSmokeNext_s0066
  | State.s0067 => graphSmokeNext_s0067
  | State.s0068 => graphSmokeNext_s0068
  | State.s0069 => graphSmokeNext_s0069
  | State.s0070 => graphSmokeNext_s0070
  | State.s0071 => graphSmokeNext_s0071
  | State.s0072 => graphSmokeNext_s0072
  | State.s0073 => graphSmokeNext_s0073
  | State.s0074 => graphSmokeNext_s0074
  | State.s0075 => graphSmokeNext_s0075
  | State.s0076 => graphSmokeNext_s0076
  | State.s0077 => graphSmokeNext_s0077
  | State.s0078 => graphSmokeNext_s0078
  | State.s0079 => graphSmokeNext_s0079
  | State.s0080 => graphSmokeNext_s0080
  | State.s0081 => graphSmokeNext_s0081
  | State.s0082 => graphSmokeNext_s0082
  | State.s0083 => graphSmokeNext_s0083
  | State.s0084 => graphSmokeNext_s0084
  | State.s0085 => graphSmokeNext_s0085
  | State.s0086 => graphSmokeNext_s0086
  | State.s0087 => graphSmokeNext_s0087
  | State.s0088 => graphSmokeNext_s0088
  | State.s0089 => graphSmokeNext_s0089
  | State.s0090 => graphSmokeNext_s0090
  | State.s0091 => graphSmokeNext_s0091
  | State.s0092 => graphSmokeNext_s0092
  | State.s0093 => graphSmokeNext_s0093
  | State.s0094 => graphSmokeNext_s0094
  | State.s0095 => graphSmokeNext_s0095
  | State.s0096 => graphSmokeNext_s0096
  | State.s0097 => graphSmokeNext_s0097
  | State.s0098 => graphSmokeNext_s0098
  | State.s0099 => graphSmokeNext_s0099
  | State.s0100 => graphSmokeNext_s0100
  | State.s0101 => graphSmokeNext_s0101
  | State.s0102 => graphSmokeNext_s0102
  | State.s0103 => graphSmokeNext_s0103
  | State.s0104 => graphSmokeNext_s0104
  | State.s0105 => graphSmokeNext_s0105
  | State.s0106 => graphSmokeNext_s0106
  | State.s0107 => graphSmokeNext_s0107
  | State.s0108 => graphSmokeNext_s0108
  | State.s0109 => graphSmokeNext_s0109
  | State.s0110 => graphSmokeNext_s0110
  | State.s0111 => graphSmokeNext_s0111
  | State.s0112 => graphSmokeNext_s0112
  | State.s0113 => graphSmokeNext_s0113
  | State.s0114 => graphSmokeNext_s0114
  | State.s0115 => graphSmokeNext_s0115
  | State.s0116 => graphSmokeNext_s0116
  | State.s0117 => graphSmokeNext_s0117
  | State.s0118 => graphSmokeNext_s0118
  | State.s0119 => graphSmokeNext_s0119
  | State.s0120 => graphSmokeNext_s0120
  | State.s0121 => graphSmokeNext_s0121
  | State.s0122 => graphSmokeNext_s0122
  | State.s0123 => graphSmokeNext_s0123
  | State.s0124 => graphSmokeNext_s0124
  | State.s0125 => graphSmokeNext_s0125
  | State.s0126 => graphSmokeNext_s0126
  | State.s0127 => graphSmokeNext_s0127
  | State.s0128 => graphSmokeNext_s0128
  | State.s0129 => graphSmokeNext_s0129
  | State.s0130 => graphSmokeNext_s0130
  | State.s0131 => graphSmokeNext_s0131
  | State.s0132 => graphSmokeNext_s0132
  | State.s0133 => graphSmokeNext_s0133
  | State.s0134 => graphSmokeNext_s0134
  | State.s0135 => graphSmokeNext_s0135
  | State.s0136 => graphSmokeNext_s0136
  | State.s0137 => graphSmokeNext_s0137
  | State.s0138 => graphSmokeNext_s0138
  | State.s0139 => graphSmokeNext_s0139
  | State.s0140 => graphSmokeNext_s0140
  | State.s0141 => graphSmokeNext_s0141
  | State.s0142 => graphSmokeNext_s0142
  | State.s0143 => graphSmokeNext_s0143
  | State.s0144 => graphSmokeNext_s0144
  | State.s0145 => graphSmokeNext_s0145
  | State.s0146 => graphSmokeNext_s0146
  | State.s0147 => graphSmokeNext_s0147
  | State.s0148 => graphSmokeNext_s0148
  | State.s0149 => graphSmokeNext_s0149
  | State.s0150 => graphSmokeNext_s0150
  | State.s0151 => graphSmokeNext_s0151
  | State.s0152 => graphSmokeNext_s0152
  | State.s0153 => graphSmokeNext_s0153
  | State.s0154 => graphSmokeNext_s0154
  | State.s0155 => graphSmokeNext_s0155
  | State.s0156 => graphSmokeNext_s0156
  | State.s0157 => graphSmokeNext_s0157
  | State.s0158 => graphSmokeNext_s0158
  | State.s0159 => graphSmokeNext_s0159
  | State.s0160 => graphSmokeNext_s0160
  | State.s0161 => graphSmokeNext_s0161
  | State.s0162 => graphSmokeNext_s0162
  | State.s0163 => graphSmokeNext_s0163
  | State.s0164 => graphSmokeNext_s0164
  | State.s0165 => graphSmokeNext_s0165
  | State.s0166 => graphSmokeNext_s0166
  | State.s0167 => graphSmokeNext_s0167
  | State.s0168 => graphSmokeNext_s0168
  | State.s0169 => graphSmokeNext_s0169
  | State.s0170 => graphSmokeNext_s0170
  | State.s0171 => graphSmokeNext_s0171
  | State.s0172 => graphSmokeNext_s0172
  | State.s0173 => graphSmokeNext_s0173
  | State.s0174 => graphSmokeNext_s0174
  | State.s0175 => graphSmokeNext_s0175
  | State.s0176 => graphSmokeNext_s0176
  | State.s0177 => graphSmokeNext_s0177
  | State.s0178 => graphSmokeNext_s0178
  | State.s0179 => graphSmokeNext_s0179
  | State.s0180 => graphSmokeNext_s0180
  | State.s0181 => graphSmokeNext_s0181
  | State.s0182 => graphSmokeNext_s0182
  | State.s0183 => graphSmokeNext_s0183
  | State.s0184 => graphSmokeNext_s0184
  | State.s0185 => graphSmokeNext_s0185
  | State.s0186 => graphSmokeNext_s0186
  | State.s0187 => graphSmokeNext_s0187
  | State.s0188 => graphSmokeNext_s0188
  | State.s0189 => graphSmokeNext_s0189
  | State.s0190 => graphSmokeNext_s0190
  | State.s0191 => graphSmokeNext_s0191
  | State.s0192 => graphSmokeNext_s0192
  | State.s0193 => graphSmokeNext_s0193
  | State.s0194 => graphSmokeNext_s0194
  | State.s0195 => graphSmokeNext_s0195
  | State.s0196 => graphSmokeNext_s0196
  | State.s0197 => graphSmokeNext_s0197
  | State.s0198 => graphSmokeNext_s0198
  | State.s0199 => graphSmokeNext_s0199
  | State.s0200 => graphSmokeNext_s0200
  | State.s0201 => graphSmokeNext_s0201
  | State.s0202 => graphSmokeNext_s0202
  | State.s0203 => graphSmokeNext_s0203
  | State.s0204 => graphSmokeNext_s0204
  | State.s0205 => graphSmokeNext_s0205
  | State.s0206 => graphSmokeNext_s0206
  | State.s0207 => graphSmokeNext_s0207
  | State.s0208 => graphSmokeNext_s0208
  | State.s0209 => graphSmokeNext_s0209
  | State.s0210 => graphSmokeNext_s0210
  | State.s0211 => graphSmokeNext_s0211
  | State.s0212 => graphSmokeNext_s0212
  | State.s0213 => graphSmokeNext_s0213
  | State.s0214 => graphSmokeNext_s0214
  | State.s0215 => graphSmokeNext_s0215
  | State.s0216 => graphSmokeNext_s0216
  | State.s0217 => graphSmokeNext_s0217
  | State.s0218 => graphSmokeNext_s0218
  | State.s0219 => graphSmokeNext_s0219
  | State.s0220 => graphSmokeNext_s0220
  | State.s0221 => graphSmokeNext_s0221
  | State.s0222 => graphSmokeNext_s0222

theorem graphSmokeNext_sound_s0000 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0000 label = some (t, gain) ->
      SmokeStep State.s0000 label t gain := by
  intro h
  change graphSmokeNext_s0000 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0000] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0000

theorem graphSmokeNext_sound_s0001 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0001 label = some (t, gain) ->
      SmokeStep State.s0001 label t gain := by
  intro h
  change graphSmokeNext_s0001 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0001] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0001

theorem graphSmokeNext_sound_s0002 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0002 label = some (t, gain) ->
      SmokeStep State.s0002 label t gain := by
  intro h
  change graphSmokeNext_s0002 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0002] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0002

theorem graphSmokeNext_sound_s0003 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0003 label = some (t, gain) ->
      SmokeStep State.s0003 label t gain := by
  intro h
  change graphSmokeNext_s0003 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0003] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0003

theorem graphSmokeNext_sound_s0004 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0004 label = some (t, gain) ->
      SmokeStep State.s0004 label t gain := by
  intro h
  change graphSmokeNext_s0004 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0004] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0004

theorem graphSmokeNext_sound_s0005 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0005 label = some (t, gain) ->
      SmokeStep State.s0005 label t gain := by
  intro h
  change graphSmokeNext_s0005 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0005] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0005

theorem graphSmokeNext_sound_s0006 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0006 label = some (t, gain) ->
      SmokeStep State.s0006 label t gain := by
  intro h
  change graphSmokeNext_s0006 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0006] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0006

theorem graphSmokeNext_sound_s0007 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0007 label = some (t, gain) ->
      SmokeStep State.s0007 label t gain := by
  intro h
  change graphSmokeNext_s0007 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0007] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0007

theorem graphSmokeNext_sound_s0008 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0008 label = some (t, gain) ->
      SmokeStep State.s0008 label t gain := by
  intro h
  change graphSmokeNext_s0008 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0008] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0008

theorem graphSmokeNext_sound_s0009 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0009 label = some (t, gain) ->
      SmokeStep State.s0009 label t gain := by
  intro h
  change graphSmokeNext_s0009 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0009] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0009

theorem graphSmokeNext_sound_s0010 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0010 label = some (t, gain) ->
      SmokeStep State.s0010 label t gain := by
  intro h
  change graphSmokeNext_s0010 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0010] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0010

theorem graphSmokeNext_sound_s0011 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0011 label = some (t, gain) ->
      SmokeStep State.s0011 label t gain := by
  intro h
  change graphSmokeNext_s0011 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0011] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0011

theorem graphSmokeNext_sound_s0012 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0012 label = some (t, gain) ->
      SmokeStep State.s0012 label t gain := by
  intro h
  change graphSmokeNext_s0012 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0012] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0013
    | exact SmokeStep.e0012

theorem graphSmokeNext_sound_s0013 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0013 label = some (t, gain) ->
      SmokeStep State.s0013 label t gain := by
  intro h
  change graphSmokeNext_s0013 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0013] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0015
    | exact SmokeStep.e0014

theorem graphSmokeNext_sound_s0014 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0014 label = some (t, gain) ->
      SmokeStep State.s0014 label t gain := by
  intro h
  change graphSmokeNext_s0014 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0014] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0017
    | exact SmokeStep.e0016

theorem graphSmokeNext_sound_s0015 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0015 label = some (t, gain) ->
      SmokeStep State.s0015 label t gain := by
  intro h
  change graphSmokeNext_s0015 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0015] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0019
    | exact SmokeStep.e0018

theorem graphSmokeNext_sound_s0016 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0016 label = some (t, gain) ->
      SmokeStep State.s0016 label t gain := by
  intro h
  change graphSmokeNext_s0016 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0016] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0021
    | exact SmokeStep.e0020

theorem graphSmokeNext_sound_s0017 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0017 label = some (t, gain) ->
      SmokeStep State.s0017 label t gain := by
  intro h
  change graphSmokeNext_s0017 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0017] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0023
    | exact SmokeStep.e0022

theorem graphSmokeNext_sound_s0018 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0018 label = some (t, gain) ->
      SmokeStep State.s0018 label t gain := by
  intro h
  change graphSmokeNext_s0018 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0018] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0025
    | exact SmokeStep.e0024

theorem graphSmokeNext_sound_s0019 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0019 label = some (t, gain) ->
      SmokeStep State.s0019 label t gain := by
  intro h
  change graphSmokeNext_s0019 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0019] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0026

theorem graphSmokeNext_sound_s0020 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0020 label = some (t, gain) ->
      SmokeStep State.s0020 label t gain := by
  intro h
  change graphSmokeNext_s0020 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0020] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0028
    | exact SmokeStep.e0027

theorem graphSmokeNext_sound_s0021 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0021 label = some (t, gain) ->
      SmokeStep State.s0021 label t gain := by
  intro h
  change graphSmokeNext_s0021 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0021] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0029

theorem graphSmokeNext_sound_s0022 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0022 label = some (t, gain) ->
      SmokeStep State.s0022 label t gain := by
  intro h
  change graphSmokeNext_s0022 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0022] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0030
    | exact SmokeStep.e0031

theorem graphSmokeNext_sound_s0023 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0023 label = some (t, gain) ->
      SmokeStep State.s0023 label t gain := by
  intro h
  change graphSmokeNext_s0023 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0023] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0032

theorem graphSmokeNext_sound_s0024 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0024 label = some (t, gain) ->
      SmokeStep State.s0024 label t gain := by
  intro h
  change graphSmokeNext_s0024 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0024] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0033

theorem graphSmokeNext_sound_s0025 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0025 label = some (t, gain) ->
      SmokeStep State.s0025 label t gain := by
  intro h
  change graphSmokeNext_s0025 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0025] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0034

theorem graphSmokeNext_sound_s0026 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0026 label = some (t, gain) ->
      SmokeStep State.s0026 label t gain := by
  intro h
  change graphSmokeNext_s0026 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0026] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0035

theorem graphSmokeNext_sound_s0027 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0027 label = some (t, gain) ->
      SmokeStep State.s0027 label t gain := by
  intro h
  change graphSmokeNext_s0027 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0027] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0036

theorem graphSmokeNext_sound_s0028 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0028 label = some (t, gain) ->
      SmokeStep State.s0028 label t gain := by
  intro h
  change graphSmokeNext_s0028 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0028] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0037

theorem graphSmokeNext_sound_s0029 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0029 label = some (t, gain) ->
      SmokeStep State.s0029 label t gain := by
  intro h
  change graphSmokeNext_s0029 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0029] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0038

theorem graphSmokeNext_sound_s0030 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0030 label = some (t, gain) ->
      SmokeStep State.s0030 label t gain := by
  intro h
  change graphSmokeNext_s0030 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0030] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0039

theorem graphSmokeNext_sound_s0031 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0031 label = some (t, gain) ->
      SmokeStep State.s0031 label t gain := by
  intro h
  change graphSmokeNext_s0031 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0031] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0040

theorem graphSmokeNext_sound_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0032 label = some (t, gain) ->
      SmokeStep State.s0032 label t gain := by
  intro h
  change graphSmokeNext_s0032 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0032] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0041

theorem graphSmokeNext_sound_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0033 label = some (t, gain) ->
      SmokeStep State.s0033 label t gain := by
  intro h
  change graphSmokeNext_s0033 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0033] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0042

theorem graphSmokeNext_sound_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0034 label = some (t, gain) ->
      SmokeStep State.s0034 label t gain := by
  intro h
  change graphSmokeNext_s0034 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0034] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0043

theorem graphSmokeNext_sound_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0035 label = some (t, gain) ->
      SmokeStep State.s0035 label t gain := by
  intro h
  change graphSmokeNext_s0035 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0035] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0044

theorem graphSmokeNext_sound_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0036 label = some (t, gain) ->
      SmokeStep State.s0036 label t gain := by
  intro h
  change graphSmokeNext_s0036 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0036] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0045

theorem graphSmokeNext_sound_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0037 label = some (t, gain) ->
      SmokeStep State.s0037 label t gain := by
  intro h
  change graphSmokeNext_s0037 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0037] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0046

theorem graphSmokeNext_sound_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0038 label = some (t, gain) ->
      SmokeStep State.s0038 label t gain := by
  intro h
  change graphSmokeNext_s0038 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0038] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0047

theorem graphSmokeNext_sound_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0039 label = some (t, gain) ->
      SmokeStep State.s0039 label t gain := by
  intro h
  change graphSmokeNext_s0039 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0039] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0048

theorem graphSmokeNext_sound_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0040 label = some (t, gain) ->
      SmokeStep State.s0040 label t gain := by
  intro h
  change graphSmokeNext_s0040 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0040] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0049

theorem graphSmokeNext_sound_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0041 label = some (t, gain) ->
      SmokeStep State.s0041 label t gain := by
  intro h
  change graphSmokeNext_s0041 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0041] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0050

theorem graphSmokeNext_sound_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0042 label = some (t, gain) ->
      SmokeStep State.s0042 label t gain := by
  intro h
  change graphSmokeNext_s0042 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0042] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0051

theorem graphSmokeNext_sound_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0043 label = some (t, gain) ->
      SmokeStep State.s0043 label t gain := by
  intro h
  change graphSmokeNext_s0043 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0043] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0052

theorem graphSmokeNext_sound_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0044 label = some (t, gain) ->
      SmokeStep State.s0044 label t gain := by
  intro h
  change graphSmokeNext_s0044 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0044] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0053

theorem graphSmokeNext_sound_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0045 label = some (t, gain) ->
      SmokeStep State.s0045 label t gain := by
  intro h
  change graphSmokeNext_s0045 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0045] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0054

theorem graphSmokeNext_sound_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0046 label = some (t, gain) ->
      SmokeStep State.s0046 label t gain := by
  intro h
  change graphSmokeNext_s0046 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0046] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0055

theorem graphSmokeNext_sound_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0047 label = some (t, gain) ->
      SmokeStep State.s0047 label t gain := by
  intro h
  change graphSmokeNext_s0047 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0047] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0056

theorem graphSmokeNext_sound_s0048 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0048 label = some (t, gain) ->
      SmokeStep State.s0048 label t gain := by
  intro h
  change graphSmokeNext_s0048 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0048] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0057

theorem graphSmokeNext_sound_s0049 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0049 label = some (t, gain) ->
      SmokeStep State.s0049 label t gain := by
  intro h
  change graphSmokeNext_s0049 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0049] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0058

theorem graphSmokeNext_sound_s0050 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0050 label = some (t, gain) ->
      SmokeStep State.s0050 label t gain := by
  intro h
  change graphSmokeNext_s0050 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0050] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0059

theorem graphSmokeNext_sound_s0051 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0051 label = some (t, gain) ->
      SmokeStep State.s0051 label t gain := by
  intro h
  change graphSmokeNext_s0051 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0051] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0060
    | exact SmokeStep.e0061

theorem graphSmokeNext_sound_s0052 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0052 label = some (t, gain) ->
      SmokeStep State.s0052 label t gain := by
  intro h
  change graphSmokeNext_s0052 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0052] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0062
    | exact SmokeStep.e0063

theorem graphSmokeNext_sound_s0053 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0053 label = some (t, gain) ->
      SmokeStep State.s0053 label t gain := by
  intro h
  change graphSmokeNext_s0053 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0053] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0064

theorem graphSmokeNext_sound_s0054 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0054 label = some (t, gain) ->
      SmokeStep State.s0054 label t gain := by
  intro h
  change graphSmokeNext_s0054 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0054] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0065

theorem graphSmokeNext_sound_s0055 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0055 label = some (t, gain) ->
      SmokeStep State.s0055 label t gain := by
  intro h
  change graphSmokeNext_s0055 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0055] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0066

theorem graphSmokeNext_sound_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0056 label = some (t, gain) ->
      SmokeStep State.s0056 label t gain := by
  intro h
  change graphSmokeNext_s0056 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0056] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0067

theorem graphSmokeNext_sound_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0057 label = some (t, gain) ->
      SmokeStep State.s0057 label t gain := by
  intro h
  change graphSmokeNext_s0057 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0057] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0068

theorem graphSmokeNext_sound_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0058 label = some (t, gain) ->
      SmokeStep State.s0058 label t gain := by
  intro h
  change graphSmokeNext_s0058 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0058] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0069

theorem graphSmokeNext_sound_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0059 label = some (t, gain) ->
      SmokeStep State.s0059 label t gain := by
  intro h
  change graphSmokeNext_s0059 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0059] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0070

theorem graphSmokeNext_sound_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0060 label = some (t, gain) ->
      SmokeStep State.s0060 label t gain := by
  intro h
  change graphSmokeNext_s0060 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0060] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0071

theorem graphSmokeNext_sound_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0061 label = some (t, gain) ->
      SmokeStep State.s0061 label t gain := by
  intro h
  change graphSmokeNext_s0061 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0061] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0072

theorem graphSmokeNext_sound_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0062 label = some (t, gain) ->
      SmokeStep State.s0062 label t gain := by
  intro h
  change graphSmokeNext_s0062 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0062] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0073

theorem graphSmokeNext_sound_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0063 label = some (t, gain) ->
      SmokeStep State.s0063 label t gain := by
  intro h
  change graphSmokeNext_s0063 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0063] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0074

theorem graphSmokeNext_sound_s0064 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0064 label = some (t, gain) ->
      SmokeStep State.s0064 label t gain := by
  intro h
  change graphSmokeNext_s0064 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0064] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0075

theorem graphSmokeNext_sound_s0065 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0065 label = some (t, gain) ->
      SmokeStep State.s0065 label t gain := by
  intro h
  change graphSmokeNext_s0065 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0065] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0076

theorem graphSmokeNext_sound_s0066 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0066 label = some (t, gain) ->
      SmokeStep State.s0066 label t gain := by
  intro h
  change graphSmokeNext_s0066 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0066] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0077

theorem graphSmokeNext_sound_s0067 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0067 label = some (t, gain) ->
      SmokeStep State.s0067 label t gain := by
  intro h
  change graphSmokeNext_s0067 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0067] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0078

theorem graphSmokeNext_sound_s0068 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0068 label = some (t, gain) ->
      SmokeStep State.s0068 label t gain := by
  intro h
  change graphSmokeNext_s0068 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0068] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0079

theorem graphSmokeNext_sound_s0069 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0069 label = some (t, gain) ->
      SmokeStep State.s0069 label t gain := by
  intro h
  change graphSmokeNext_s0069 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0069] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0080

theorem graphSmokeNext_sound_s0070 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0070 label = some (t, gain) ->
      SmokeStep State.s0070 label t gain := by
  intro h
  change graphSmokeNext_s0070 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0070] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0081

theorem graphSmokeNext_sound_s0071 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0071 label = some (t, gain) ->
      SmokeStep State.s0071 label t gain := by
  intro h
  change graphSmokeNext_s0071 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0071] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0082

theorem graphSmokeNext_sound_s0072 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0072 label = some (t, gain) ->
      SmokeStep State.s0072 label t gain := by
  intro h
  change graphSmokeNext_s0072 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0072] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0083

theorem graphSmokeNext_sound_s0073 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0073 label = some (t, gain) ->
      SmokeStep State.s0073 label t gain := by
  intro h
  change graphSmokeNext_s0073 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0073] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0084

theorem graphSmokeNext_sound_s0074 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0074 label = some (t, gain) ->
      SmokeStep State.s0074 label t gain := by
  intro h
  change graphSmokeNext_s0074 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0074] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0085

theorem graphSmokeNext_sound_s0075 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0075 label = some (t, gain) ->
      SmokeStep State.s0075 label t gain := by
  intro h
  change graphSmokeNext_s0075 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0075] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0086

theorem graphSmokeNext_sound_s0076 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0076 label = some (t, gain) ->
      SmokeStep State.s0076 label t gain := by
  intro h
  change graphSmokeNext_s0076 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0076] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0087

theorem graphSmokeNext_sound_s0077 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0077 label = some (t, gain) ->
      SmokeStep State.s0077 label t gain := by
  intro h
  change graphSmokeNext_s0077 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0077] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0088

theorem graphSmokeNext_sound_s0078 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0078 label = some (t, gain) ->
      SmokeStep State.s0078 label t gain := by
  intro h
  change graphSmokeNext_s0078 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0078] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0089

theorem graphSmokeNext_sound_s0079 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0079 label = some (t, gain) ->
      SmokeStep State.s0079 label t gain := by
  intro h
  change graphSmokeNext_s0079 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0079] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0090

theorem graphSmokeNext_sound_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0080 label = some (t, gain) ->
      SmokeStep State.s0080 label t gain := by
  intro h
  change graphSmokeNext_s0080 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0080] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0091

theorem graphSmokeNext_sound_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0081 label = some (t, gain) ->
      SmokeStep State.s0081 label t gain := by
  intro h
  change graphSmokeNext_s0081 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0081] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0092

theorem graphSmokeNext_sound_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0082 label = some (t, gain) ->
      SmokeStep State.s0082 label t gain := by
  intro h
  change graphSmokeNext_s0082 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0082] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0093

theorem graphSmokeNext_sound_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0083 label = some (t, gain) ->
      SmokeStep State.s0083 label t gain := by
  intro h
  change graphSmokeNext_s0083 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0083] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0094

theorem graphSmokeNext_sound_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0084 label = some (t, gain) ->
      SmokeStep State.s0084 label t gain := by
  intro h
  change graphSmokeNext_s0084 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0084] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0095

theorem graphSmokeNext_sound_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0085 label = some (t, gain) ->
      SmokeStep State.s0085 label t gain := by
  intro h
  change graphSmokeNext_s0085 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0085] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0096

theorem graphSmokeNext_sound_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0086 label = some (t, gain) ->
      SmokeStep State.s0086 label t gain := by
  intro h
  change graphSmokeNext_s0086 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0086] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0097

theorem graphSmokeNext_sound_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0087 label = some (t, gain) ->
      SmokeStep State.s0087 label t gain := by
  intro h
  change graphSmokeNext_s0087 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0087] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0098

theorem graphSmokeNext_sound_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0088 label = some (t, gain) ->
      SmokeStep State.s0088 label t gain := by
  intro h
  change graphSmokeNext_s0088 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0088] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0099

theorem graphSmokeNext_sound_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0089 label = some (t, gain) ->
      SmokeStep State.s0089 label t gain := by
  intro h
  change graphSmokeNext_s0089 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0089] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0100

theorem graphSmokeNext_sound_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0090 label = some (t, gain) ->
      SmokeStep State.s0090 label t gain := by
  intro h
  change graphSmokeNext_s0090 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0090] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0101

theorem graphSmokeNext_sound_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0091 label = some (t, gain) ->
      SmokeStep State.s0091 label t gain := by
  intro h
  change graphSmokeNext_s0091 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0091] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0102

theorem graphSmokeNext_sound_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0092 label = some (t, gain) ->
      SmokeStep State.s0092 label t gain := by
  intro h
  change graphSmokeNext_s0092 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0092] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0103

theorem graphSmokeNext_sound_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0093 label = some (t, gain) ->
      SmokeStep State.s0093 label t gain := by
  intro h
  change graphSmokeNext_s0093 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0093] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0104

theorem graphSmokeNext_sound_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0094 label = some (t, gain) ->
      SmokeStep State.s0094 label t gain := by
  intro h
  change graphSmokeNext_s0094 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0094] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0105

theorem graphSmokeNext_sound_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0095 label = some (t, gain) ->
      SmokeStep State.s0095 label t gain := by
  intro h
  change graphSmokeNext_s0095 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0095] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0106

theorem graphSmokeNext_sound_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0096 label = some (t, gain) ->
      SmokeStep State.s0096 label t gain := by
  intro h
  change graphSmokeNext_s0096 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0096] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0107

theorem graphSmokeNext_sound_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0097 label = some (t, gain) ->
      SmokeStep State.s0097 label t gain := by
  intro h
  change graphSmokeNext_s0097 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0097] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0108

theorem graphSmokeNext_sound_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0098 label = some (t, gain) ->
      SmokeStep State.s0098 label t gain := by
  intro h
  change graphSmokeNext_s0098 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0098] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0109

theorem graphSmokeNext_sound_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0099 label = some (t, gain) ->
      SmokeStep State.s0099 label t gain := by
  intro h
  change graphSmokeNext_s0099 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0099] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0110

theorem graphSmokeNext_sound_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0100 label = some (t, gain) ->
      SmokeStep State.s0100 label t gain := by
  intro h
  change graphSmokeNext_s0100 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0100] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0111

theorem graphSmokeNext_sound_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0101 label = some (t, gain) ->
      SmokeStep State.s0101 label t gain := by
  intro h
  change graphSmokeNext_s0101 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0101] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0112

theorem graphSmokeNext_sound_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0102 label = some (t, gain) ->
      SmokeStep State.s0102 label t gain := by
  intro h
  change graphSmokeNext_s0102 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0102] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0113

theorem graphSmokeNext_sound_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0103 label = some (t, gain) ->
      SmokeStep State.s0103 label t gain := by
  intro h
  change graphSmokeNext_s0103 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0103] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0114

theorem graphSmokeNext_sound_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0104 label = some (t, gain) ->
      SmokeStep State.s0104 label t gain := by
  intro h
  change graphSmokeNext_s0104 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0104] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0115

theorem graphSmokeNext_sound_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0105 label = some (t, gain) ->
      SmokeStep State.s0105 label t gain := by
  intro h
  change graphSmokeNext_s0105 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0105] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0116

theorem graphSmokeNext_sound_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0106 label = some (t, gain) ->
      SmokeStep State.s0106 label t gain := by
  intro h
  change graphSmokeNext_s0106 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0106] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0117

theorem graphSmokeNext_sound_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0107 label = some (t, gain) ->
      SmokeStep State.s0107 label t gain := by
  intro h
  change graphSmokeNext_s0107 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0107] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0118

theorem graphSmokeNext_sound_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0108 label = some (t, gain) ->
      SmokeStep State.s0108 label t gain := by
  intro h
  change graphSmokeNext_s0108 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0108] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0119

theorem graphSmokeNext_sound_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0109 label = some (t, gain) ->
      SmokeStep State.s0109 label t gain := by
  intro h
  change graphSmokeNext_s0109 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0109] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0120

theorem graphSmokeNext_sound_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0110 label = some (t, gain) ->
      SmokeStep State.s0110 label t gain := by
  intro h
  change graphSmokeNext_s0110 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0110] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0121

theorem graphSmokeNext_sound_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0111 label = some (t, gain) ->
      SmokeStep State.s0111 label t gain := by
  intro h
  change graphSmokeNext_s0111 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0111] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0122

theorem graphSmokeNext_sound_s0112 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0112 label = some (t, gain) ->
      SmokeStep State.s0112 label t gain := by
  intro h
  change graphSmokeNext_s0112 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0112] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0123

theorem graphSmokeNext_sound_s0113 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0113 label = some (t, gain) ->
      SmokeStep State.s0113 label t gain := by
  intro h
  change graphSmokeNext_s0113 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0113] at h <;> try contradiction

theorem graphSmokeNext_sound_s0114 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0114 label = some (t, gain) ->
      SmokeStep State.s0114 label t gain := by
  intro h
  change graphSmokeNext_s0114 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0114] at h <;> try contradiction

theorem graphSmokeNext_sound_s0115 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0115 label = some (t, gain) ->
      SmokeStep State.s0115 label t gain := by
  intro h
  change graphSmokeNext_s0115 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0115] at h <;> try contradiction

theorem graphSmokeNext_sound_s0116 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0116 label = some (t, gain) ->
      SmokeStep State.s0116 label t gain := by
  intro h
  change graphSmokeNext_s0116 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0116] at h <;> try contradiction

theorem graphSmokeNext_sound_s0117 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0117 label = some (t, gain) ->
      SmokeStep State.s0117 label t gain := by
  intro h
  change graphSmokeNext_s0117 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0117] at h <;> try contradiction

theorem graphSmokeNext_sound_s0118 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0118 label = some (t, gain) ->
      SmokeStep State.s0118 label t gain := by
  intro h
  change graphSmokeNext_s0118 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0118] at h <;> try contradiction

theorem graphSmokeNext_sound_s0119 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0119 label = some (t, gain) ->
      SmokeStep State.s0119 label t gain := by
  intro h
  change graphSmokeNext_s0119 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0119] at h <;> try contradiction

theorem graphSmokeNext_sound_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0120 label = some (t, gain) ->
      SmokeStep State.s0120 label t gain := by
  intro h
  change graphSmokeNext_s0120 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0120] at h <;> try contradiction

theorem graphSmokeNext_sound_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0121 label = some (t, gain) ->
      SmokeStep State.s0121 label t gain := by
  intro h
  change graphSmokeNext_s0121 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0121] at h <;> try contradiction

theorem graphSmokeNext_sound_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0122 label = some (t, gain) ->
      SmokeStep State.s0122 label t gain := by
  intro h
  change graphSmokeNext_s0122 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0122] at h <;> try contradiction

theorem graphSmokeNext_sound_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0123 label = some (t, gain) ->
      SmokeStep State.s0123 label t gain := by
  intro h
  change graphSmokeNext_s0123 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0123] at h <;> try contradiction

theorem graphSmokeNext_sound_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0124 label = some (t, gain) ->
      SmokeStep State.s0124 label t gain := by
  intro h
  change graphSmokeNext_s0124 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0124] at h <;> try contradiction

theorem graphSmokeNext_sound_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0125 label = some (t, gain) ->
      SmokeStep State.s0125 label t gain := by
  intro h
  change graphSmokeNext_s0125 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0125] at h <;> try contradiction

theorem graphSmokeNext_sound_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0126 label = some (t, gain) ->
      SmokeStep State.s0126 label t gain := by
  intro h
  change graphSmokeNext_s0126 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0126] at h <;> try contradiction

theorem graphSmokeNext_sound_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0127 label = some (t, gain) ->
      SmokeStep State.s0127 label t gain := by
  intro h
  change graphSmokeNext_s0127 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0127] at h <;> try contradiction

theorem graphSmokeNext_sound_s0128 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0128 label = some (t, gain) ->
      SmokeStep State.s0128 label t gain := by
  intro h
  change graphSmokeNext_s0128 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0128] at h <;> try contradiction

theorem graphSmokeNext_sound_s0129 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0129 label = some (t, gain) ->
      SmokeStep State.s0129 label t gain := by
  intro h
  change graphSmokeNext_s0129 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0129] at h <;> try contradiction

theorem graphSmokeNext_sound_s0130 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0130 label = some (t, gain) ->
      SmokeStep State.s0130 label t gain := by
  intro h
  change graphSmokeNext_s0130 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0130] at h <;> try contradiction

theorem graphSmokeNext_sound_s0131 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0131 label = some (t, gain) ->
      SmokeStep State.s0131 label t gain := by
  intro h
  change graphSmokeNext_s0131 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0131] at h <;> try contradiction

theorem graphSmokeNext_sound_s0132 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0132 label = some (t, gain) ->
      SmokeStep State.s0132 label t gain := by
  intro h
  change graphSmokeNext_s0132 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0132] at h <;> try contradiction

theorem graphSmokeNext_sound_s0133 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0133 label = some (t, gain) ->
      SmokeStep State.s0133 label t gain := by
  intro h
  change graphSmokeNext_s0133 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0133] at h <;> try contradiction

theorem graphSmokeNext_sound_s0134 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0134 label = some (t, gain) ->
      SmokeStep State.s0134 label t gain := by
  intro h
  change graphSmokeNext_s0134 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0134] at h <;> try contradiction

theorem graphSmokeNext_sound_s0135 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0135 label = some (t, gain) ->
      SmokeStep State.s0135 label t gain := by
  intro h
  change graphSmokeNext_s0135 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0135] at h <;> try contradiction

theorem graphSmokeNext_sound_s0136 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0136 label = some (t, gain) ->
      SmokeStep State.s0136 label t gain := by
  intro h
  change graphSmokeNext_s0136 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0136] at h <;> try contradiction

theorem graphSmokeNext_sound_s0137 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0137 label = some (t, gain) ->
      SmokeStep State.s0137 label t gain := by
  intro h
  change graphSmokeNext_s0137 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0137] at h <;> try contradiction

theorem graphSmokeNext_sound_s0138 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0138 label = some (t, gain) ->
      SmokeStep State.s0138 label t gain := by
  intro h
  change graphSmokeNext_s0138 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0138] at h <;> try contradiction

theorem graphSmokeNext_sound_s0139 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0139 label = some (t, gain) ->
      SmokeStep State.s0139 label t gain := by
  intro h
  change graphSmokeNext_s0139 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0139] at h <;> try contradiction

theorem graphSmokeNext_sound_s0140 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0140 label = some (t, gain) ->
      SmokeStep State.s0140 label t gain := by
  intro h
  change graphSmokeNext_s0140 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0140] at h <;> try contradiction

theorem graphSmokeNext_sound_s0141 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0141 label = some (t, gain) ->
      SmokeStep State.s0141 label t gain := by
  intro h
  change graphSmokeNext_s0141 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0141] at h <;> try contradiction

theorem graphSmokeNext_sound_s0142 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0142 label = some (t, gain) ->
      SmokeStep State.s0142 label t gain := by
  intro h
  change graphSmokeNext_s0142 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0142] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0124

theorem graphSmokeNext_sound_s0143 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0143 label = some (t, gain) ->
      SmokeStep State.s0143 label t gain := by
  intro h
  change graphSmokeNext_s0143 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0143] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0127
    | exact SmokeStep.e0125
    | exact SmokeStep.e0126

theorem graphSmokeNext_sound_s0144 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0144 label = some (t, gain) ->
      SmokeStep State.s0144 label t gain := by
  intro h
  change graphSmokeNext_s0144 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0144] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0129
    | exact SmokeStep.e0128

theorem graphSmokeNext_sound_s0145 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0145 label = some (t, gain) ->
      SmokeStep State.s0145 label t gain := by
  intro h
  change graphSmokeNext_s0145 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0145] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0132
    | exact SmokeStep.e0130
    | exact SmokeStep.e0131

theorem graphSmokeNext_sound_s0146 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0146 label = some (t, gain) ->
      SmokeStep State.s0146 label t gain := by
  intro h
  change graphSmokeNext_s0146 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0146] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0134
    | exact SmokeStep.e0133

theorem graphSmokeNext_sound_s0147 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0147 label = some (t, gain) ->
      SmokeStep State.s0147 label t gain := by
  intro h
  change graphSmokeNext_s0147 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0147] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0136
    | exact SmokeStep.e0135

theorem graphSmokeNext_sound_s0148 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0148 label = some (t, gain) ->
      SmokeStep State.s0148 label t gain := by
  intro h
  change graphSmokeNext_s0148 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0148] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0138
    | exact SmokeStep.e0137

theorem graphSmokeNext_sound_s0149 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0149 label = some (t, gain) ->
      SmokeStep State.s0149 label t gain := by
  intro h
  change graphSmokeNext_s0149 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0149] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0140
    | exact SmokeStep.e0139

theorem graphSmokeNext_sound_s0150 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0150 label = some (t, gain) ->
      SmokeStep State.s0150 label t gain := by
  intro h
  change graphSmokeNext_s0150 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0150] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0141

theorem graphSmokeNext_sound_s0151 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0151 label = some (t, gain) ->
      SmokeStep State.s0151 label t gain := by
  intro h
  change graphSmokeNext_s0151 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0151] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0142

theorem graphSmokeNext_sound_s0152 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0152 label = some (t, gain) ->
      SmokeStep State.s0152 label t gain := by
  intro h
  change graphSmokeNext_s0152 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0152] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0144
    | exact SmokeStep.e0143

theorem graphSmokeNext_sound_s0153 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0153 label = some (t, gain) ->
      SmokeStep State.s0153 label t gain := by
  intro h
  change graphSmokeNext_s0153 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0153] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0145

theorem graphSmokeNext_sound_s0154 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0154 label = some (t, gain) ->
      SmokeStep State.s0154 label t gain := by
  intro h
  change graphSmokeNext_s0154 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0154] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0147
    | exact SmokeStep.e0146

theorem graphSmokeNext_sound_s0155 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0155 label = some (t, gain) ->
      SmokeStep State.s0155 label t gain := by
  intro h
  change graphSmokeNext_s0155 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0155] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0148

theorem graphSmokeNext_sound_s0156 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0156 label = some (t, gain) ->
      SmokeStep State.s0156 label t gain := by
  intro h
  change graphSmokeNext_s0156 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0156] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0150
    | exact SmokeStep.e0149

theorem graphSmokeNext_sound_s0157 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0157 label = some (t, gain) ->
      SmokeStep State.s0157 label t gain := by
  intro h
  change graphSmokeNext_s0157 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0157] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0151

theorem graphSmokeNext_sound_s0158 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0158 label = some (t, gain) ->
      SmokeStep State.s0158 label t gain := by
  intro h
  change graphSmokeNext_s0158 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0158] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0152

theorem graphSmokeNext_sound_s0159 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0159 label = some (t, gain) ->
      SmokeStep State.s0159 label t gain := by
  intro h
  change graphSmokeNext_s0159 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0159] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0153

theorem graphSmokeNext_sound_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0160 label = some (t, gain) ->
      SmokeStep State.s0160 label t gain := by
  intro h
  change graphSmokeNext_s0160 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0160] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0154

theorem graphSmokeNext_sound_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0161 label = some (t, gain) ->
      SmokeStep State.s0161 label t gain := by
  intro h
  change graphSmokeNext_s0161 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0161] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0156
    | exact SmokeStep.e0155

theorem graphSmokeNext_sound_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0162 label = some (t, gain) ->
      SmokeStep State.s0162 label t gain := by
  intro h
  change graphSmokeNext_s0162 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0162] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0157

theorem graphSmokeNext_sound_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0163 label = some (t, gain) ->
      SmokeStep State.s0163 label t gain := by
  intro h
  change graphSmokeNext_s0163 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0163] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0158

theorem graphSmokeNext_sound_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0164 label = some (t, gain) ->
      SmokeStep State.s0164 label t gain := by
  intro h
  change graphSmokeNext_s0164 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0164] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0159

theorem graphSmokeNext_sound_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0165 label = some (t, gain) ->
      SmokeStep State.s0165 label t gain := by
  intro h
  change graphSmokeNext_s0165 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0165] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0160

theorem graphSmokeNext_sound_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0166 label = some (t, gain) ->
      SmokeStep State.s0166 label t gain := by
  intro h
  change graphSmokeNext_s0166 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0166] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0161

theorem graphSmokeNext_sound_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0167 label = some (t, gain) ->
      SmokeStep State.s0167 label t gain := by
  intro h
  change graphSmokeNext_s0167 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0167] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0163
    | exact SmokeStep.e0162

theorem graphSmokeNext_sound_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0168 label = some (t, gain) ->
      SmokeStep State.s0168 label t gain := by
  intro h
  change graphSmokeNext_s0168 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0168] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0164

theorem graphSmokeNext_sound_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0169 label = some (t, gain) ->
      SmokeStep State.s0169 label t gain := by
  intro h
  change graphSmokeNext_s0169 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0169] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0165

theorem graphSmokeNext_sound_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0170 label = some (t, gain) ->
      SmokeStep State.s0170 label t gain := by
  intro h
  change graphSmokeNext_s0170 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0170] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0166

theorem graphSmokeNext_sound_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0171 label = some (t, gain) ->
      SmokeStep State.s0171 label t gain := by
  intro h
  change graphSmokeNext_s0171 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0171] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0167

theorem graphSmokeNext_sound_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0172 label = some (t, gain) ->
      SmokeStep State.s0172 label t gain := by
  intro h
  change graphSmokeNext_s0172 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0172] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0168

theorem graphSmokeNext_sound_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0173 label = some (t, gain) ->
      SmokeStep State.s0173 label t gain := by
  intro h
  change graphSmokeNext_s0173 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0173] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0170
    | exact SmokeStep.e0169

theorem graphSmokeNext_sound_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0174 label = some (t, gain) ->
      SmokeStep State.s0174 label t gain := by
  intro h
  change graphSmokeNext_s0174 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0174] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0171

theorem graphSmokeNext_sound_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0175 label = some (t, gain) ->
      SmokeStep State.s0175 label t gain := by
  intro h
  change graphSmokeNext_s0175 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0175] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0172

theorem graphSmokeNext_sound_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0176 label = some (t, gain) ->
      SmokeStep State.s0176 label t gain := by
  intro h
  change graphSmokeNext_s0176 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0176] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0173

theorem graphSmokeNext_sound_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0177 label = some (t, gain) ->
      SmokeStep State.s0177 label t gain := by
  intro h
  change graphSmokeNext_s0177 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0177] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0174

theorem graphSmokeNext_sound_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0178 label = some (t, gain) ->
      SmokeStep State.s0178 label t gain := by
  intro h
  change graphSmokeNext_s0178 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0178] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0175

theorem graphSmokeNext_sound_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0179 label = some (t, gain) ->
      SmokeStep State.s0179 label t gain := by
  intro h
  change graphSmokeNext_s0179 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0179] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0176

theorem graphSmokeNext_sound_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0180 label = some (t, gain) ->
      SmokeStep State.s0180 label t gain := by
  intro h
  change graphSmokeNext_s0180 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0180] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0178
    | exact SmokeStep.e0177

theorem graphSmokeNext_sound_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0181 label = some (t, gain) ->
      SmokeStep State.s0181 label t gain := by
  intro h
  change graphSmokeNext_s0181 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0181] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0179

theorem graphSmokeNext_sound_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0182 label = some (t, gain) ->
      SmokeStep State.s0182 label t gain := by
  intro h
  change graphSmokeNext_s0182 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0182] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0180

theorem graphSmokeNext_sound_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0183 label = some (t, gain) ->
      SmokeStep State.s0183 label t gain := by
  intro h
  change graphSmokeNext_s0183 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0183] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0181

theorem graphSmokeNext_sound_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0184 label = some (t, gain) ->
      SmokeStep State.s0184 label t gain := by
  intro h
  change graphSmokeNext_s0184 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0184] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0182

theorem graphSmokeNext_sound_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0185 label = some (t, gain) ->
      SmokeStep State.s0185 label t gain := by
  intro h
  change graphSmokeNext_s0185 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0185] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0183

theorem graphSmokeNext_sound_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0186 label = some (t, gain) ->
      SmokeStep State.s0186 label t gain := by
  intro h
  change graphSmokeNext_s0186 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0186] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0184

theorem graphSmokeNext_sound_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0187 label = some (t, gain) ->
      SmokeStep State.s0187 label t gain := by
  intro h
  change graphSmokeNext_s0187 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0187] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0186
    | exact SmokeStep.e0185

theorem graphSmokeNext_sound_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0188 label = some (t, gain) ->
      SmokeStep State.s0188 label t gain := by
  intro h
  change graphSmokeNext_s0188 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0188] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0187

theorem graphSmokeNext_sound_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0189 label = some (t, gain) ->
      SmokeStep State.s0189 label t gain := by
  intro h
  change graphSmokeNext_s0189 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0189] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0188

theorem graphSmokeNext_sound_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0190 label = some (t, gain) ->
      SmokeStep State.s0190 label t gain := by
  intro h
  change graphSmokeNext_s0190 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0190] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0189

theorem graphSmokeNext_sound_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0191 label = some (t, gain) ->
      SmokeStep State.s0191 label t gain := by
  intro h
  change graphSmokeNext_s0191 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0191] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0190

theorem graphSmokeNext_sound_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0192 label = some (t, gain) ->
      SmokeStep State.s0192 label t gain := by
  intro h
  change graphSmokeNext_s0192 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0192] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0191

theorem graphSmokeNext_sound_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0193 label = some (t, gain) ->
      SmokeStep State.s0193 label t gain := by
  intro h
  change graphSmokeNext_s0193 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0193] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0192

theorem graphSmokeNext_sound_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0194 label = some (t, gain) ->
      SmokeStep State.s0194 label t gain := by
  intro h
  change graphSmokeNext_s0194 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0194] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0193

theorem graphSmokeNext_sound_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0195 label = some (t, gain) ->
      SmokeStep State.s0195 label t gain := by
  intro h
  change graphSmokeNext_s0195 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0195] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0195
    | exact SmokeStep.e0194

theorem graphSmokeNext_sound_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0196 label = some (t, gain) ->
      SmokeStep State.s0196 label t gain := by
  intro h
  change graphSmokeNext_s0196 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0196] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0196

theorem graphSmokeNext_sound_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0197 label = some (t, gain) ->
      SmokeStep State.s0197 label t gain := by
  intro h
  change graphSmokeNext_s0197 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0197] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0197

theorem graphSmokeNext_sound_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0198 label = some (t, gain) ->
      SmokeStep State.s0198 label t gain := by
  intro h
  change graphSmokeNext_s0198 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0198] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0198

theorem graphSmokeNext_sound_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0199 label = some (t, gain) ->
      SmokeStep State.s0199 label t gain := by
  intro h
  change graphSmokeNext_s0199 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0199] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0199

theorem graphSmokeNext_sound_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0200 label = some (t, gain) ->
      SmokeStep State.s0200 label t gain := by
  intro h
  change graphSmokeNext_s0200 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0200] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0200

theorem graphSmokeNext_sound_s0201 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0201 label = some (t, gain) ->
      SmokeStep State.s0201 label t gain := by
  intro h
  change graphSmokeNext_s0201 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0201] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0201

theorem graphSmokeNext_sound_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0202 label = some (t, gain) ->
      SmokeStep State.s0202 label t gain := by
  intro h
  change graphSmokeNext_s0202 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0202] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0202

theorem graphSmokeNext_sound_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0203 label = some (t, gain) ->
      SmokeStep State.s0203 label t gain := by
  intro h
  change graphSmokeNext_s0203 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0203] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0205
    | exact SmokeStep.e0203
    | exact SmokeStep.e0204

theorem graphSmokeNext_sound_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0204 label = some (t, gain) ->
      SmokeStep State.s0204 label t gain := by
  intro h
  change graphSmokeNext_s0204 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0204] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0206

theorem graphSmokeNext_sound_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0205 label = some (t, gain) ->
      SmokeStep State.s0205 label t gain := by
  intro h
  change graphSmokeNext_s0205 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0205] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0207

theorem graphSmokeNext_sound_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0206 label = some (t, gain) ->
      SmokeStep State.s0206 label t gain := by
  intro h
  change graphSmokeNext_s0206 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0206] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0208

theorem graphSmokeNext_sound_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0207 label = some (t, gain) ->
      SmokeStep State.s0207 label t gain := by
  intro h
  change graphSmokeNext_s0207 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0207] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0209

theorem graphSmokeNext_sound_s0208 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0208 label = some (t, gain) ->
      SmokeStep State.s0208 label t gain := by
  intro h
  change graphSmokeNext_s0208 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0208] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0210

theorem graphSmokeNext_sound_s0209 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0209 label = some (t, gain) ->
      SmokeStep State.s0209 label t gain := by
  intro h
  change graphSmokeNext_s0209 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0209] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0211

theorem graphSmokeNext_sound_s0210 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0210 label = some (t, gain) ->
      SmokeStep State.s0210 label t gain := by
  intro h
  change graphSmokeNext_s0210 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0210] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0212

theorem graphSmokeNext_sound_s0211 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0211 label = some (t, gain) ->
      SmokeStep State.s0211 label t gain := by
  intro h
  change graphSmokeNext_s0211 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0211] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0213

theorem graphSmokeNext_sound_s0212 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0212 label = some (t, gain) ->
      SmokeStep State.s0212 label t gain := by
  intro h
  change graphSmokeNext_s0212 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0212] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0215
    | exact SmokeStep.e0214

theorem graphSmokeNext_sound_s0213 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0213 label = some (t, gain) ->
      SmokeStep State.s0213 label t gain := by
  intro h
  change graphSmokeNext_s0213 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0213] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0217
    | exact SmokeStep.e0216

theorem graphSmokeNext_sound_s0214 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0214 label = some (t, gain) ->
      SmokeStep State.s0214 label t gain := by
  intro h
  change graphSmokeNext_s0214 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0214] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0218

theorem graphSmokeNext_sound_s0215 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0215 label = some (t, gain) ->
      SmokeStep State.s0215 label t gain := by
  intro h
  change graphSmokeNext_s0215 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0215] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0219

theorem graphSmokeNext_sound_s0216 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0216 label = some (t, gain) ->
      SmokeStep State.s0216 label t gain := by
  intro h
  change graphSmokeNext_s0216 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0216] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0220

theorem graphSmokeNext_sound_s0217 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0217 label = some (t, gain) ->
      SmokeStep State.s0217 label t gain := by
  intro h
  change graphSmokeNext_s0217 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0217] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0221

theorem graphSmokeNext_sound_s0218 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0218 label = some (t, gain) ->
      SmokeStep State.s0218 label t gain := by
  intro h
  change graphSmokeNext_s0218 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0218] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0222

theorem graphSmokeNext_sound_s0219 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0219 label = some (t, gain) ->
      SmokeStep State.s0219 label t gain := by
  intro h
  change graphSmokeNext_s0219 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0219] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0223

theorem graphSmokeNext_sound_s0220 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0220 label = some (t, gain) ->
      SmokeStep State.s0220 label t gain := by
  intro h
  change graphSmokeNext_s0220 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0220] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0224
    | exact SmokeStep.e0225

theorem graphSmokeNext_sound_s0221 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0221 label = some (t, gain) ->
      SmokeStep State.s0221 label t gain := by
  intro h
  change graphSmokeNext_s0221 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0221] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0227
    | exact SmokeStep.e0226

theorem graphSmokeNext_sound_s0222 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext State.s0222 label = some (t, gain) ->
      SmokeStep State.s0222 label t gain := by
  intro h
  change graphSmokeNext_s0222 label = some (t, gain) at h
  cases label <;> simp [graphSmokeNext_s0222] at h <;> try contradiction
  all_goals
    rcases h with ⟨rfl, rfl⟩
    first
    | exact SmokeStep.e0228

theorem graphSmokeNext_sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext s label = some (t, gain) -> SmokeStep s label t gain := by
  cases s <;> intro h
  · exact graphSmokeNext_sound_s0000 h
  · exact graphSmokeNext_sound_s0001 h
  · exact graphSmokeNext_sound_s0002 h
  · exact graphSmokeNext_sound_s0003 h
  · exact graphSmokeNext_sound_s0004 h
  · exact graphSmokeNext_sound_s0005 h
  · exact graphSmokeNext_sound_s0006 h
  · exact graphSmokeNext_sound_s0007 h
  · exact graphSmokeNext_sound_s0008 h
  · exact graphSmokeNext_sound_s0009 h
  · exact graphSmokeNext_sound_s0010 h
  · exact graphSmokeNext_sound_s0011 h
  · exact graphSmokeNext_sound_s0012 h
  · exact graphSmokeNext_sound_s0013 h
  · exact graphSmokeNext_sound_s0014 h
  · exact graphSmokeNext_sound_s0015 h
  · exact graphSmokeNext_sound_s0016 h
  · exact graphSmokeNext_sound_s0017 h
  · exact graphSmokeNext_sound_s0018 h
  · exact graphSmokeNext_sound_s0019 h
  · exact graphSmokeNext_sound_s0020 h
  · exact graphSmokeNext_sound_s0021 h
  · exact graphSmokeNext_sound_s0022 h
  · exact graphSmokeNext_sound_s0023 h
  · exact graphSmokeNext_sound_s0024 h
  · exact graphSmokeNext_sound_s0025 h
  · exact graphSmokeNext_sound_s0026 h
  · exact graphSmokeNext_sound_s0027 h
  · exact graphSmokeNext_sound_s0028 h
  · exact graphSmokeNext_sound_s0029 h
  · exact graphSmokeNext_sound_s0030 h
  · exact graphSmokeNext_sound_s0031 h
  · exact graphSmokeNext_sound_s0032 h
  · exact graphSmokeNext_sound_s0033 h
  · exact graphSmokeNext_sound_s0034 h
  · exact graphSmokeNext_sound_s0035 h
  · exact graphSmokeNext_sound_s0036 h
  · exact graphSmokeNext_sound_s0037 h
  · exact graphSmokeNext_sound_s0038 h
  · exact graphSmokeNext_sound_s0039 h
  · exact graphSmokeNext_sound_s0040 h
  · exact graphSmokeNext_sound_s0041 h
  · exact graphSmokeNext_sound_s0042 h
  · exact graphSmokeNext_sound_s0043 h
  · exact graphSmokeNext_sound_s0044 h
  · exact graphSmokeNext_sound_s0045 h
  · exact graphSmokeNext_sound_s0046 h
  · exact graphSmokeNext_sound_s0047 h
  · exact graphSmokeNext_sound_s0048 h
  · exact graphSmokeNext_sound_s0049 h
  · exact graphSmokeNext_sound_s0050 h
  · exact graphSmokeNext_sound_s0051 h
  · exact graphSmokeNext_sound_s0052 h
  · exact graphSmokeNext_sound_s0053 h
  · exact graphSmokeNext_sound_s0054 h
  · exact graphSmokeNext_sound_s0055 h
  · exact graphSmokeNext_sound_s0056 h
  · exact graphSmokeNext_sound_s0057 h
  · exact graphSmokeNext_sound_s0058 h
  · exact graphSmokeNext_sound_s0059 h
  · exact graphSmokeNext_sound_s0060 h
  · exact graphSmokeNext_sound_s0061 h
  · exact graphSmokeNext_sound_s0062 h
  · exact graphSmokeNext_sound_s0063 h
  · exact graphSmokeNext_sound_s0064 h
  · exact graphSmokeNext_sound_s0065 h
  · exact graphSmokeNext_sound_s0066 h
  · exact graphSmokeNext_sound_s0067 h
  · exact graphSmokeNext_sound_s0068 h
  · exact graphSmokeNext_sound_s0069 h
  · exact graphSmokeNext_sound_s0070 h
  · exact graphSmokeNext_sound_s0071 h
  · exact graphSmokeNext_sound_s0072 h
  · exact graphSmokeNext_sound_s0073 h
  · exact graphSmokeNext_sound_s0074 h
  · exact graphSmokeNext_sound_s0075 h
  · exact graphSmokeNext_sound_s0076 h
  · exact graphSmokeNext_sound_s0077 h
  · exact graphSmokeNext_sound_s0078 h
  · exact graphSmokeNext_sound_s0079 h
  · exact graphSmokeNext_sound_s0080 h
  · exact graphSmokeNext_sound_s0081 h
  · exact graphSmokeNext_sound_s0082 h
  · exact graphSmokeNext_sound_s0083 h
  · exact graphSmokeNext_sound_s0084 h
  · exact graphSmokeNext_sound_s0085 h
  · exact graphSmokeNext_sound_s0086 h
  · exact graphSmokeNext_sound_s0087 h
  · exact graphSmokeNext_sound_s0088 h
  · exact graphSmokeNext_sound_s0089 h
  · exact graphSmokeNext_sound_s0090 h
  · exact graphSmokeNext_sound_s0091 h
  · exact graphSmokeNext_sound_s0092 h
  · exact graphSmokeNext_sound_s0093 h
  · exact graphSmokeNext_sound_s0094 h
  · exact graphSmokeNext_sound_s0095 h
  · exact graphSmokeNext_sound_s0096 h
  · exact graphSmokeNext_sound_s0097 h
  · exact graphSmokeNext_sound_s0098 h
  · exact graphSmokeNext_sound_s0099 h
  · exact graphSmokeNext_sound_s0100 h
  · exact graphSmokeNext_sound_s0101 h
  · exact graphSmokeNext_sound_s0102 h
  · exact graphSmokeNext_sound_s0103 h
  · exact graphSmokeNext_sound_s0104 h
  · exact graphSmokeNext_sound_s0105 h
  · exact graphSmokeNext_sound_s0106 h
  · exact graphSmokeNext_sound_s0107 h
  · exact graphSmokeNext_sound_s0108 h
  · exact graphSmokeNext_sound_s0109 h
  · exact graphSmokeNext_sound_s0110 h
  · exact graphSmokeNext_sound_s0111 h
  · exact graphSmokeNext_sound_s0112 h
  · exact graphSmokeNext_sound_s0113 h
  · exact graphSmokeNext_sound_s0114 h
  · exact graphSmokeNext_sound_s0115 h
  · exact graphSmokeNext_sound_s0116 h
  · exact graphSmokeNext_sound_s0117 h
  · exact graphSmokeNext_sound_s0118 h
  · exact graphSmokeNext_sound_s0119 h
  · exact graphSmokeNext_sound_s0120 h
  · exact graphSmokeNext_sound_s0121 h
  · exact graphSmokeNext_sound_s0122 h
  · exact graphSmokeNext_sound_s0123 h
  · exact graphSmokeNext_sound_s0124 h
  · exact graphSmokeNext_sound_s0125 h
  · exact graphSmokeNext_sound_s0126 h
  · exact graphSmokeNext_sound_s0127 h
  · exact graphSmokeNext_sound_s0128 h
  · exact graphSmokeNext_sound_s0129 h
  · exact graphSmokeNext_sound_s0130 h
  · exact graphSmokeNext_sound_s0131 h
  · exact graphSmokeNext_sound_s0132 h
  · exact graphSmokeNext_sound_s0133 h
  · exact graphSmokeNext_sound_s0134 h
  · exact graphSmokeNext_sound_s0135 h
  · exact graphSmokeNext_sound_s0136 h
  · exact graphSmokeNext_sound_s0137 h
  · exact graphSmokeNext_sound_s0138 h
  · exact graphSmokeNext_sound_s0139 h
  · exact graphSmokeNext_sound_s0140 h
  · exact graphSmokeNext_sound_s0141 h
  · exact graphSmokeNext_sound_s0142 h
  · exact graphSmokeNext_sound_s0143 h
  · exact graphSmokeNext_sound_s0144 h
  · exact graphSmokeNext_sound_s0145 h
  · exact graphSmokeNext_sound_s0146 h
  · exact graphSmokeNext_sound_s0147 h
  · exact graphSmokeNext_sound_s0148 h
  · exact graphSmokeNext_sound_s0149 h
  · exact graphSmokeNext_sound_s0150 h
  · exact graphSmokeNext_sound_s0151 h
  · exact graphSmokeNext_sound_s0152 h
  · exact graphSmokeNext_sound_s0153 h
  · exact graphSmokeNext_sound_s0154 h
  · exact graphSmokeNext_sound_s0155 h
  · exact graphSmokeNext_sound_s0156 h
  · exact graphSmokeNext_sound_s0157 h
  · exact graphSmokeNext_sound_s0158 h
  · exact graphSmokeNext_sound_s0159 h
  · exact graphSmokeNext_sound_s0160 h
  · exact graphSmokeNext_sound_s0161 h
  · exact graphSmokeNext_sound_s0162 h
  · exact graphSmokeNext_sound_s0163 h
  · exact graphSmokeNext_sound_s0164 h
  · exact graphSmokeNext_sound_s0165 h
  · exact graphSmokeNext_sound_s0166 h
  · exact graphSmokeNext_sound_s0167 h
  · exact graphSmokeNext_sound_s0168 h
  · exact graphSmokeNext_sound_s0169 h
  · exact graphSmokeNext_sound_s0170 h
  · exact graphSmokeNext_sound_s0171 h
  · exact graphSmokeNext_sound_s0172 h
  · exact graphSmokeNext_sound_s0173 h
  · exact graphSmokeNext_sound_s0174 h
  · exact graphSmokeNext_sound_s0175 h
  · exact graphSmokeNext_sound_s0176 h
  · exact graphSmokeNext_sound_s0177 h
  · exact graphSmokeNext_sound_s0178 h
  · exact graphSmokeNext_sound_s0179 h
  · exact graphSmokeNext_sound_s0180 h
  · exact graphSmokeNext_sound_s0181 h
  · exact graphSmokeNext_sound_s0182 h
  · exact graphSmokeNext_sound_s0183 h
  · exact graphSmokeNext_sound_s0184 h
  · exact graphSmokeNext_sound_s0185 h
  · exact graphSmokeNext_sound_s0186 h
  · exact graphSmokeNext_sound_s0187 h
  · exact graphSmokeNext_sound_s0188 h
  · exact graphSmokeNext_sound_s0189 h
  · exact graphSmokeNext_sound_s0190 h
  · exact graphSmokeNext_sound_s0191 h
  · exact graphSmokeNext_sound_s0192 h
  · exact graphSmokeNext_sound_s0193 h
  · exact graphSmokeNext_sound_s0194 h
  · exact graphSmokeNext_sound_s0195 h
  · exact graphSmokeNext_sound_s0196 h
  · exact graphSmokeNext_sound_s0197 h
  · exact graphSmokeNext_sound_s0198 h
  · exact graphSmokeNext_sound_s0199 h
  · exact graphSmokeNext_sound_s0200 h
  · exact graphSmokeNext_sound_s0201 h
  · exact graphSmokeNext_sound_s0202 h
  · exact graphSmokeNext_sound_s0203 h
  · exact graphSmokeNext_sound_s0204 h
  · exact graphSmokeNext_sound_s0205 h
  · exact graphSmokeNext_sound_s0206 h
  · exact graphSmokeNext_sound_s0207 h
  · exact graphSmokeNext_sound_s0208 h
  · exact graphSmokeNext_sound_s0209 h
  · exact graphSmokeNext_sound_s0210 h
  · exact graphSmokeNext_sound_s0211 h
  · exact graphSmokeNext_sound_s0212 h
  · exact graphSmokeNext_sound_s0213 h
  · exact graphSmokeNext_sound_s0214 h
  · exact graphSmokeNext_sound_s0215 h
  · exact graphSmokeNext_sound_s0216 h
  · exact graphSmokeNext_sound_s0217 h
  · exact graphSmokeNext_sound_s0218 h
  · exact graphSmokeNext_sound_s0219 h
  · exact graphSmokeNext_sound_s0220 h
  · exact graphSmokeNext_sound_s0221 h
  · exact graphSmokeNext_sound_s0222 h

def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=
  graphSmokeNext s label = some (t, gain)

theorem GraphSmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext s label = some (t, gain) -> SmokeStep s label t gain :=
  graphSmokeNext_sound

theorem GraphSmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by
  intro h
  exact SmokeStep.valid (graphSmokeNext_sound h)

theorem bellmanGraphCoreSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphCoreSmoke
