import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.FaceLabelLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

open Cuboctahedron

/-!
Generated numeric Bellman evaluator base.

This base contains only compact state/label identifiers, the potential,
and the deterministic evaluator. Validity is checked in bounded shards.
-/

abbrev stateCount : Nat := 223
abbrev State : Type := Nat

def graphPotential : State -> Int
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
  | 159 => -376
  | 160 => -368
  | 161 => -142
  | 162 => -365
  | 163 => -365
  | 164 => -479
  | 165 => -347
  | 166 => -471
  | 167 => -197
  | 168 => -358
  | 169 => -578
  | 170 => -358
  | 171 => -376
  | 172 => -332
  | 173 => 2
  | 174 => -461
  | 175 => -461
  | 176 => -461
  | 177 => -479
  | 178 => -311
  | 179 => -435
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
  | 192 => -191
  | 193 => -167
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
  | 209 => -191
  | 210 => -23
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

def rootState : State := (0 : State)

abbrev labelCount : Nat := 14
abbrev SmokeLabel : Type := Nat
-- label 0000: face=tmmm|pair=d111
-- label 0001: face=tmmp|pair=d11m
-- label 0002: face=tmpm|pair=d1m1
-- label 0003: face=tmpp|pair=dm11
-- label 0004: face=tpmm|pair=dm11
-- label 0005: face=tpmp|pair=d1m1
-- label 0006: face=tppm|pair=d11m
-- label 0007: face=tppp|pair=d111
-- label 0008: face=xm|pair=x
-- label 0009: face=xp|pair=x
-- label 0010: face=ym|pair=y
-- label 0011: face=yp|pair=y
-- label 0012: face=zm|pair=z
-- label 0013: face=zp|pair=z

def smokeLabelOfFace : Face -> SmokeLabel
  | Face.xp => (9 : SmokeLabel)
  | Face.xm => (8 : SmokeLabel)
  | Face.yp => (11 : SmokeLabel)
  | Face.ym => (10 : SmokeLabel)
  | Face.zp => (13 : SmokeLabel)
  | Face.zm => (12 : SmokeLabel)
  | Face.tppp => (7 : SmokeLabel)
  | Face.tppm => (6 : SmokeLabel)
  | Face.tpmp => (5 : SmokeLabel)
  | Face.tmpp => (3 : SmokeLabel)
  | Face.tpmm => (4 : SmokeLabel)
  | Face.tmpm => (2 : SmokeLabel)
  | Face.tmmp => (1 : SmokeLabel)
  | Face.tmmm => (0 : SmokeLabel)

def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=
  faceLabelsInContributionOrder smokeLabelOfFace seq

-- graph-global deterministic eval transitions: 229
def graphSmokeNext_s0000 : SmokeLabel -> Option (State × Int)
  | 8 => some ((142 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0001 : SmokeLabel -> Option (State × Int)
  | 7 => some ((29 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0002 : SmokeLabel -> Option (State × Int)
  | 7 => some ((31 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0003 : SmokeLabel -> Option (State × Int)
  | 7 => some ((32 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0004 : SmokeLabel -> Option (State × Int)
  | 7 => some ((33 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0005 : SmokeLabel -> Option (State × Int)
  | 7 => some ((34 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0006 : SmokeLabel -> Option (State × Int)
  | 7 => some ((36 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0007 : SmokeLabel -> Option (State × Int)
  | 12 => some ((23 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0008 : SmokeLabel -> Option (State × Int)
  | 12 => some ((30 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0009 : SmokeLabel -> Option (State × Int)
  | 2 => some ((39 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0010 : SmokeLabel -> Option (State × Int)
  | 2 => some ((40 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0011 : SmokeLabel -> Option (State × Int)
  | 2 => some ((41 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0012 : SmokeLabel -> Option (State × Int)
  | 1 => some ((43 : State), (-124 : Int))
  | 12 => some ((37 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0013 : SmokeLabel -> Option (State × Int)
  | 1 => some ((44 : State), (-124 : Int))
  | 12 => some ((38 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0014 : SmokeLabel -> Option (State × Int)
  | 1 => some ((45 : State), (96 : Int))
  | 11 => some ((23 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0015 : SmokeLabel -> Option (State × Int)
  | 1 => some ((46 : State), (96 : Int))
  | 11 => some ((24 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0016 : SmokeLabel -> Option (State × Int)
  | 1 => some ((47 : State), (96 : Int))
  | 11 => some ((25 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0017 : SmokeLabel -> Option (State × Int)
  | 1 => some ((48 : State), (96 : Int))
  | 11 => some ((26 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0018 : SmokeLabel -> Option (State × Int)
  | 1 => some ((49 : State), (96 : Int))
  | 11 => some ((27 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0019 : SmokeLabel -> Option (State × Int)
  | 11 => some ((28 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0020 : SmokeLabel -> Option (State × Int)
  | 1 => some ((50 : State), (96 : Int))
  | 11 => some ((35 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0021 : SmokeLabel -> Option (State × Int)
  | 2 => some ((52 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0022 : SmokeLabel -> Option (State × Int)
  | 11 => some ((42 : State), (103 : Int))
  | 12 => some ((51 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0023 : SmokeLabel -> Option (State × Int)
  | 3 => some ((53 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0024 : SmokeLabel -> Option (State × Int)
  | 3 => some ((55 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0025 : SmokeLabel -> Option (State × Int)
  | 3 => some ((56 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0026 : SmokeLabel -> Option (State × Int)
  | 3 => some ((57 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0027 : SmokeLabel -> Option (State × Int)
  | 3 => some ((58 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0028 : SmokeLabel -> Option (State × Int)
  | 3 => some ((59 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0029 : SmokeLabel -> Option (State × Int)
  | 3 => some ((60 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0030 : SmokeLabel -> Option (State × Int)
  | 3 => some ((61 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0031 : SmokeLabel -> Option (State × Int)
  | 3 => some ((63 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0032 : SmokeLabel -> Option (State × Int)
  | 3 => some ((64 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0033 : SmokeLabel -> Option (State × Int)
  | 3 => some ((65 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0034 : SmokeLabel -> Option (State × Int)
  | 3 => some ((67 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0035 : SmokeLabel -> Option (State × Int)
  | 3 => some ((68 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0036 : SmokeLabel -> Option (State × Int)
  | 3 => some ((69 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0037 : SmokeLabel -> Option (State × Int)
  | 13 => some ((54 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0038 : SmokeLabel -> Option (State × Int)
  | 13 => some ((62 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0039 : SmokeLabel -> Option (State × Int)
  | 13 => some ((66 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0040 : SmokeLabel -> Option (State × Int)
  | 0 => some ((73 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0041 : SmokeLabel -> Option (State × Int)
  | 0 => some ((75 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0042 : SmokeLabel -> Option (State × Int)
  | 12 => some ((70 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0043 : SmokeLabel -> Option (State × Int)
  | 12 => some ((71 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0044 : SmokeLabel -> Option (State × Int)
  | 12 => some ((72 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0045 : SmokeLabel -> Option (State × Int)
  | 3 => some ((76 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0046 : SmokeLabel -> Option (State × Int)
  | 3 => some ((78 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0047 : SmokeLabel -> Option (State × Int)
  | 3 => some ((79 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0048 : SmokeLabel -> Option (State × Int)
  | 3 => some ((80 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0049 : SmokeLabel -> Option (State × Int)
  | 3 => some ((81 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0050 : SmokeLabel -> Option (State × Int)
  | 3 => some ((83 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0051 : SmokeLabel -> Option (State × Int)
  | 11 => some ((70 : State), (103 : Int))
  | 13 => some ((77 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0052 : SmokeLabel -> Option (State × Int)
  | 11 => some ((74 : State), (103 : Int))
  | 13 => some ((82 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0053 : SmokeLabel -> Option (State × Int)
  | 1 => some ((85 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0054 : SmokeLabel -> Option (State × Int)
  | 1 => some ((88 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0055 : SmokeLabel -> Option (State × Int)
  | 1 => some ((90 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0056 : SmokeLabel -> Option (State × Int)
  | 1 => some ((92 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0057 : SmokeLabel -> Option (State × Int)
  | 1 => some ((94 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0058 : SmokeLabel -> Option (State × Int)
  | 1 => some ((96 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0059 : SmokeLabel -> Option (State × Int)
  | 1 => some ((97 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0060 : SmokeLabel -> Option (State × Int)
  | 1 => some ((98 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0061 : SmokeLabel -> Option (State × Int)
  | 1 => some ((99 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0062 : SmokeLabel -> Option (State × Int)
  | 1 => some ((101 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0063 : SmokeLabel -> Option (State × Int)
  | 1 => some ((102 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0064 : SmokeLabel -> Option (State × Int)
  | 1 => some ((103 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0065 : SmokeLabel -> Option (State × Int)
  | 1 => some ((104 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0066 : SmokeLabel -> Option (State × Int)
  | 1 => some ((105 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0067 : SmokeLabel -> Option (State × Int)
  | 1 => some ((106 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0068 : SmokeLabel -> Option (State × Int)
  | 1 => some ((111 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0069 : SmokeLabel -> Option (State × Int)
  | 1 => some ((112 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0070 : SmokeLabel -> Option (State × Int)
  | 13 => some ((86 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0071 : SmokeLabel -> Option (State × Int)
  | 13 => some ((87 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0072 : SmokeLabel -> Option (State × Int)
  | 13 => some ((100 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0073 : SmokeLabel -> Option (State × Int)
  | 13 => some ((107 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0074 : SmokeLabel -> Option (State × Int)
  | 13 => some ((108 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0075 : SmokeLabel -> Option (State × Int)
  | 13 => some ((109 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0076 : SmokeLabel -> Option (State × Int)
  | 11 => some ((84 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0077 : SmokeLabel -> Option (State × Int)
  | 11 => some ((86 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0078 : SmokeLabel -> Option (State × Int)
  | 11 => some ((89 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0079 : SmokeLabel -> Option (State × Int)
  | 11 => some ((91 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0080 : SmokeLabel -> Option (State × Int)
  | 11 => some ((93 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0081 : SmokeLabel -> Option (State × Int)
  | 11 => some ((95 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0082 : SmokeLabel -> Option (State × Int)
  | 11 => some ((108 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0083 : SmokeLabel -> Option (State × Int)
  | 11 => some ((110 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0084 : SmokeLabel -> Option (State × Int)
  | 9 => some ((113 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0085 : SmokeLabel -> Option (State × Int)
  | 9 => some ((114 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0086 : SmokeLabel -> Option (State × Int)
  | 9 => some ((115 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0087 : SmokeLabel -> Option (State × Int)
  | 9 => some ((116 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0088 : SmokeLabel -> Option (State × Int)
  | 9 => some ((117 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0089 : SmokeLabel -> Option (State × Int)
  | 9 => some ((118 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0090 : SmokeLabel -> Option (State × Int)
  | 9 => some ((119 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0091 : SmokeLabel -> Option (State × Int)
  | 9 => some ((120 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0092 : SmokeLabel -> Option (State × Int)
  | 9 => some ((121 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0093 : SmokeLabel -> Option (State × Int)
  | 9 => some ((122 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0094 : SmokeLabel -> Option (State × Int)
  | 9 => some ((123 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0095 : SmokeLabel -> Option (State × Int)
  | 9 => some ((124 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0096 : SmokeLabel -> Option (State × Int)
  | 9 => some ((125 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0097 : SmokeLabel -> Option (State × Int)
  | 9 => some ((126 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0098 : SmokeLabel -> Option (State × Int)
  | 9 => some ((127 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0099 : SmokeLabel -> Option (State × Int)
  | 9 => some ((128 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0100 : SmokeLabel -> Option (State × Int)
  | 9 => some ((129 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0101 : SmokeLabel -> Option (State × Int)
  | 9 => some ((130 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0102 : SmokeLabel -> Option (State × Int)
  | 9 => some ((131 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0103 : SmokeLabel -> Option (State × Int)
  | 9 => some ((132 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0104 : SmokeLabel -> Option (State × Int)
  | 9 => some ((133 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0105 : SmokeLabel -> Option (State × Int)
  | 9 => some ((134 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0106 : SmokeLabel -> Option (State × Int)
  | 9 => some ((135 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0107 : SmokeLabel -> Option (State × Int)
  | 9 => some ((136 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0108 : SmokeLabel -> Option (State × Int)
  | 9 => some ((137 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0109 : SmokeLabel -> Option (State × Int)
  | 9 => some ((138 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0110 : SmokeLabel -> Option (State × Int)
  | 9 => some ((139 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0111 : SmokeLabel -> Option (State × Int)
  | 9 => some ((140 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0112 : SmokeLabel -> Option (State × Int)
  | 9 => some ((141 : State), (-73 : Int))
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
  | 10 => some ((143 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0143 : SmokeLabel -> Option (State × Int)
  | 2 => some ((146 : State), (-124 : Int))
  | 11 => some ((144 : State), (-73 : Int))
  | 12 => some ((145 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0144 : SmokeLabel -> Option (State × Int)
  | 0 => some ((148 : State), (-124 : Int))
  | 12 => some ((147 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0145 : SmokeLabel -> Option (State × Int)
  | 3 => some ((151 : State), (-124 : Int))
  | 11 => some ((147 : State), (-73 : Int))
  | 13 => some ((149 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0146 : SmokeLabel -> Option (State × Int)
  | 6 => some ((152 : State), (96 : Int))
  | 12 => some ((150 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0147 : SmokeLabel -> Option (State × Int)
  | 1 => some ((155 : State), (-124 : Int))
  | 13 => some ((153 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0148 : SmokeLabel -> Option (State × Int)
  | 4 => some ((156 : State), (96 : Int))
  | 12 => some ((154 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0149 : SmokeLabel -> Option (State × Int)
  | 2 => some ((158 : State), (-124 : Int))
  | 11 => some ((153 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0150 : SmokeLabel -> Option (State × Int)
  | 13 => some ((157 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0151 : SmokeLabel -> Option (State × Int)
  | 7 => some ((160 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0152 : SmokeLabel -> Option (State × Int)
  | 4 => some ((161 : State), (-36 : Int))
  | 13 => some ((159 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0153 : SmokeLabel -> Option (State × Int)
  | 0 => some ((163 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0154 : SmokeLabel -> Option (State × Int)
  | 5 => some ((165 : State), (96 : Int))
  | 13 => some ((162 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0155 : SmokeLabel -> Option (State × Int)
  | 5 => some ((166 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0156 : SmokeLabel -> Option (State × Int)
  | 6 => some ((167 : State), (-36 : Int))
  | 13 => some ((164 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0157 : SmokeLabel -> Option (State × Int)
  | 6 => some ((169 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0158 : SmokeLabel -> Option (State × Int)
  | 6 => some ((170 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0159 : SmokeLabel -> Option (State × Int)
  | 12 => some ((168 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0160 : SmokeLabel -> Option (State × Int)
  | 5 => some ((172 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0161 : SmokeLabel -> Option (State × Int)
  | 7 => some ((173 : State), (-144 : Int))
  | 13 => some ((171 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0162 : SmokeLabel -> Option (State × Int)
  | 4 => some ((175 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0163 : SmokeLabel -> Option (State × Int)
  | 4 => some ((176 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0164 : SmokeLabel -> Option (State × Int)
  | 12 => some ((174 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0165 : SmokeLabel -> Option (State × Int)
  | 7 => some ((178 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0166 : SmokeLabel -> Option (State × Int)
  | 7 => some ((179 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0167 : SmokeLabel -> Option (State × Int)
  | 5 => some ((180 : State), (-144 : Int))
  | 13 => some ((177 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0168 : SmokeLabel -> Option (State × Int)
  | 4 => some ((182 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0169 : SmokeLabel -> Option (State × Int)
  | 4 => some ((183 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0170 : SmokeLabel -> Option (State × Int)
  | 4 => some ((184 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0171 : SmokeLabel -> Option (State × Int)
  | 12 => some ((181 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0172 : SmokeLabel -> Option (State × Int)
  | 6 => some ((186 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0173 : SmokeLabel -> Option (State × Int)
  | 0 => some ((187 : State), (-144 : Int))
  | 13 => some ((185 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0174 : SmokeLabel -> Option (State × Int)
  | 6 => some ((189 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0175 : SmokeLabel -> Option (State × Int)
  | 6 => some ((190 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0176 : SmokeLabel -> Option (State × Int)
  | 6 => some ((191 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0177 : SmokeLabel -> Option (State × Int)
  | 12 => some ((188 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0178 : SmokeLabel -> Option (State × Int)
  | 4 => some ((193 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0179 : SmokeLabel -> Option (State × Int)
  | 4 => some ((194 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0180 : SmokeLabel -> Option (State × Int)
  | 2 => some ((195 : State), (-144 : Int))
  | 13 => some ((192 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0181 : SmokeLabel -> Option (State × Int)
  | 7 => some ((197 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0182 : SmokeLabel -> Option (State × Int)
  | 7 => some ((198 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0183 : SmokeLabel -> Option (State × Int)
  | 7 => some ((199 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0184 : SmokeLabel -> Option (State × Int)
  | 7 => some ((200 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0185 : SmokeLabel -> Option (State × Int)
  | 12 => some ((196 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0186 : SmokeLabel -> Option (State × Int)
  | 1 => some ((202 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0187 : SmokeLabel -> Option (State × Int)
  | 5 => some ((203 : State), (-36 : Int))
  | 13 => some ((201 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0188 : SmokeLabel -> Option (State × Int)
  | 5 => some ((205 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0189 : SmokeLabel -> Option (State × Int)
  | 5 => some ((206 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0190 : SmokeLabel -> Option (State × Int)
  | 5 => some ((207 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0191 : SmokeLabel -> Option (State × Int)
  | 5 => some ((208 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0192 : SmokeLabel -> Option (State × Int)
  | 12 => some ((204 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0193 : SmokeLabel -> Option (State × Int)
  | 3 => some ((210 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0194 : SmokeLabel -> Option (State × Int)
  | 3 => some ((211 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0195 : SmokeLabel -> Option (State × Int)
  | 7 => some ((213 : State), (-36 : Int))
  | 13 => some ((209 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0196 : SmokeLabel -> Option (State × Int)
  | 0 => some ((215 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0197 : SmokeLabel -> Option (State × Int)
  | 0 => some ((216 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0198 : SmokeLabel -> Option (State × Int)
  | 0 => some ((217 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0199 : SmokeLabel -> Option (State × Int)
  | 0 => some ((218 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0200 : SmokeLabel -> Option (State × Int)
  | 0 => some ((219 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0201 : SmokeLabel -> Option (State × Int)
  | 12 => some ((214 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0202 : SmokeLabel -> Option (State × Int)
  | 4 => some ((221 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0203 : SmokeLabel -> Option (State × Int)
  | 1 => some ((222 : State), (96 : Int))
  | 11 => some ((212 : State), (-117 : Int))
  | 13 => some ((220 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0204 : SmokeLabel -> Option (State × Int)
  | 2 => some ((2 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0205 : SmokeLabel -> Option (State × Int)
  | 2 => some ((3 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0206 : SmokeLabel -> Option (State × Int)
  | 2 => some ((4 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0207 : SmokeLabel -> Option (State × Int)
  | 2 => some ((5 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0208 : SmokeLabel -> Option (State × Int)
  | 2 => some ((6 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0209 : SmokeLabel -> Option (State × Int)
  | 12 => some ((1 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0210 : SmokeLabel -> Option (State × Int)
  | 6 => some ((9 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0211 : SmokeLabel -> Option (State × Int)
  | 6 => some ((11 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0212 : SmokeLabel -> Option (State × Int)
  | 3 => some ((12 : State), (96 : Int))
  | 13 => some ((7 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0213 : SmokeLabel -> Option (State × Int)
  | 3 => some ((13 : State), (96 : Int))
  | 13 => some ((8 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0214 : SmokeLabel -> Option (State × Int)
  | 5 => some ((15 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0215 : SmokeLabel -> Option (State × Int)
  | 5 => some ((16 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0216 : SmokeLabel -> Option (State × Int)
  | 5 => some ((17 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0217 : SmokeLabel -> Option (State × Int)
  | 5 => some ((18 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0218 : SmokeLabel -> Option (State × Int)
  | 5 => some ((19 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0219 : SmokeLabel -> Option (State × Int)
  | 5 => some ((20 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0220 : SmokeLabel -> Option (State × Int)
  | 11 => some ((7 : State), (-117 : Int))
  | 12 => some ((14 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0221 : SmokeLabel -> Option (State × Int)
  | 0 => some ((21 : State), (96 : Int))
  | 11 => some ((10 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0222 : SmokeLabel -> Option (State × Int)
  | 3 => some ((22 : State), (-124 : Int))
  | _ => none

def graphSmokeNext : State -> SmokeLabel -> Option (State × Int)
  | 0 => graphSmokeNext_s0000
  | 1 => graphSmokeNext_s0001
  | 2 => graphSmokeNext_s0002
  | 3 => graphSmokeNext_s0003
  | 4 => graphSmokeNext_s0004
  | 5 => graphSmokeNext_s0005
  | 6 => graphSmokeNext_s0006
  | 7 => graphSmokeNext_s0007
  | 8 => graphSmokeNext_s0008
  | 9 => graphSmokeNext_s0009
  | 10 => graphSmokeNext_s0010
  | 11 => graphSmokeNext_s0011
  | 12 => graphSmokeNext_s0012
  | 13 => graphSmokeNext_s0013
  | 14 => graphSmokeNext_s0014
  | 15 => graphSmokeNext_s0015
  | 16 => graphSmokeNext_s0016
  | 17 => graphSmokeNext_s0017
  | 18 => graphSmokeNext_s0018
  | 19 => graphSmokeNext_s0019
  | 20 => graphSmokeNext_s0020
  | 21 => graphSmokeNext_s0021
  | 22 => graphSmokeNext_s0022
  | 23 => graphSmokeNext_s0023
  | 24 => graphSmokeNext_s0024
  | 25 => graphSmokeNext_s0025
  | 26 => graphSmokeNext_s0026
  | 27 => graphSmokeNext_s0027
  | 28 => graphSmokeNext_s0028
  | 29 => graphSmokeNext_s0029
  | 30 => graphSmokeNext_s0030
  | 31 => graphSmokeNext_s0031
  | 32 => graphSmokeNext_s0032
  | 33 => graphSmokeNext_s0033
  | 34 => graphSmokeNext_s0034
  | 35 => graphSmokeNext_s0035
  | 36 => graphSmokeNext_s0036
  | 37 => graphSmokeNext_s0037
  | 38 => graphSmokeNext_s0038
  | 39 => graphSmokeNext_s0039
  | 40 => graphSmokeNext_s0040
  | 41 => graphSmokeNext_s0041
  | 42 => graphSmokeNext_s0042
  | 43 => graphSmokeNext_s0043
  | 44 => graphSmokeNext_s0044
  | 45 => graphSmokeNext_s0045
  | 46 => graphSmokeNext_s0046
  | 47 => graphSmokeNext_s0047
  | 48 => graphSmokeNext_s0048
  | 49 => graphSmokeNext_s0049
  | 50 => graphSmokeNext_s0050
  | 51 => graphSmokeNext_s0051
  | 52 => graphSmokeNext_s0052
  | 53 => graphSmokeNext_s0053
  | 54 => graphSmokeNext_s0054
  | 55 => graphSmokeNext_s0055
  | 56 => graphSmokeNext_s0056
  | 57 => graphSmokeNext_s0057
  | 58 => graphSmokeNext_s0058
  | 59 => graphSmokeNext_s0059
  | 60 => graphSmokeNext_s0060
  | 61 => graphSmokeNext_s0061
  | 62 => graphSmokeNext_s0062
  | 63 => graphSmokeNext_s0063
  | 64 => graphSmokeNext_s0064
  | 65 => graphSmokeNext_s0065
  | 66 => graphSmokeNext_s0066
  | 67 => graphSmokeNext_s0067
  | 68 => graphSmokeNext_s0068
  | 69 => graphSmokeNext_s0069
  | 70 => graphSmokeNext_s0070
  | 71 => graphSmokeNext_s0071
  | 72 => graphSmokeNext_s0072
  | 73 => graphSmokeNext_s0073
  | 74 => graphSmokeNext_s0074
  | 75 => graphSmokeNext_s0075
  | 76 => graphSmokeNext_s0076
  | 77 => graphSmokeNext_s0077
  | 78 => graphSmokeNext_s0078
  | 79 => graphSmokeNext_s0079
  | 80 => graphSmokeNext_s0080
  | 81 => graphSmokeNext_s0081
  | 82 => graphSmokeNext_s0082
  | 83 => graphSmokeNext_s0083
  | 84 => graphSmokeNext_s0084
  | 85 => graphSmokeNext_s0085
  | 86 => graphSmokeNext_s0086
  | 87 => graphSmokeNext_s0087
  | 88 => graphSmokeNext_s0088
  | 89 => graphSmokeNext_s0089
  | 90 => graphSmokeNext_s0090
  | 91 => graphSmokeNext_s0091
  | 92 => graphSmokeNext_s0092
  | 93 => graphSmokeNext_s0093
  | 94 => graphSmokeNext_s0094
  | 95 => graphSmokeNext_s0095
  | 96 => graphSmokeNext_s0096
  | 97 => graphSmokeNext_s0097
  | 98 => graphSmokeNext_s0098
  | 99 => graphSmokeNext_s0099
  | 100 => graphSmokeNext_s0100
  | 101 => graphSmokeNext_s0101
  | 102 => graphSmokeNext_s0102
  | 103 => graphSmokeNext_s0103
  | 104 => graphSmokeNext_s0104
  | 105 => graphSmokeNext_s0105
  | 106 => graphSmokeNext_s0106
  | 107 => graphSmokeNext_s0107
  | 108 => graphSmokeNext_s0108
  | 109 => graphSmokeNext_s0109
  | 110 => graphSmokeNext_s0110
  | 111 => graphSmokeNext_s0111
  | 112 => graphSmokeNext_s0112
  | 113 => graphSmokeNext_s0113
  | 114 => graphSmokeNext_s0114
  | 115 => graphSmokeNext_s0115
  | 116 => graphSmokeNext_s0116
  | 117 => graphSmokeNext_s0117
  | 118 => graphSmokeNext_s0118
  | 119 => graphSmokeNext_s0119
  | 120 => graphSmokeNext_s0120
  | 121 => graphSmokeNext_s0121
  | 122 => graphSmokeNext_s0122
  | 123 => graphSmokeNext_s0123
  | 124 => graphSmokeNext_s0124
  | 125 => graphSmokeNext_s0125
  | 126 => graphSmokeNext_s0126
  | 127 => graphSmokeNext_s0127
  | 128 => graphSmokeNext_s0128
  | 129 => graphSmokeNext_s0129
  | 130 => graphSmokeNext_s0130
  | 131 => graphSmokeNext_s0131
  | 132 => graphSmokeNext_s0132
  | 133 => graphSmokeNext_s0133
  | 134 => graphSmokeNext_s0134
  | 135 => graphSmokeNext_s0135
  | 136 => graphSmokeNext_s0136
  | 137 => graphSmokeNext_s0137
  | 138 => graphSmokeNext_s0138
  | 139 => graphSmokeNext_s0139
  | 140 => graphSmokeNext_s0140
  | 141 => graphSmokeNext_s0141
  | 142 => graphSmokeNext_s0142
  | 143 => graphSmokeNext_s0143
  | 144 => graphSmokeNext_s0144
  | 145 => graphSmokeNext_s0145
  | 146 => graphSmokeNext_s0146
  | 147 => graphSmokeNext_s0147
  | 148 => graphSmokeNext_s0148
  | 149 => graphSmokeNext_s0149
  | 150 => graphSmokeNext_s0150
  | 151 => graphSmokeNext_s0151
  | 152 => graphSmokeNext_s0152
  | 153 => graphSmokeNext_s0153
  | 154 => graphSmokeNext_s0154
  | 155 => graphSmokeNext_s0155
  | 156 => graphSmokeNext_s0156
  | 157 => graphSmokeNext_s0157
  | 158 => graphSmokeNext_s0158
  | 159 => graphSmokeNext_s0159
  | 160 => graphSmokeNext_s0160
  | 161 => graphSmokeNext_s0161
  | 162 => graphSmokeNext_s0162
  | 163 => graphSmokeNext_s0163
  | 164 => graphSmokeNext_s0164
  | 165 => graphSmokeNext_s0165
  | 166 => graphSmokeNext_s0166
  | 167 => graphSmokeNext_s0167
  | 168 => graphSmokeNext_s0168
  | 169 => graphSmokeNext_s0169
  | 170 => graphSmokeNext_s0170
  | 171 => graphSmokeNext_s0171
  | 172 => graphSmokeNext_s0172
  | 173 => graphSmokeNext_s0173
  | 174 => graphSmokeNext_s0174
  | 175 => graphSmokeNext_s0175
  | 176 => graphSmokeNext_s0176
  | 177 => graphSmokeNext_s0177
  | 178 => graphSmokeNext_s0178
  | 179 => graphSmokeNext_s0179
  | 180 => graphSmokeNext_s0180
  | 181 => graphSmokeNext_s0181
  | 182 => graphSmokeNext_s0182
  | 183 => graphSmokeNext_s0183
  | 184 => graphSmokeNext_s0184
  | 185 => graphSmokeNext_s0185
  | 186 => graphSmokeNext_s0186
  | 187 => graphSmokeNext_s0187
  | 188 => graphSmokeNext_s0188
  | 189 => graphSmokeNext_s0189
  | 190 => graphSmokeNext_s0190
  | 191 => graphSmokeNext_s0191
  | 192 => graphSmokeNext_s0192
  | 193 => graphSmokeNext_s0193
  | 194 => graphSmokeNext_s0194
  | 195 => graphSmokeNext_s0195
  | 196 => graphSmokeNext_s0196
  | 197 => graphSmokeNext_s0197
  | 198 => graphSmokeNext_s0198
  | 199 => graphSmokeNext_s0199
  | 200 => graphSmokeNext_s0200
  | 201 => graphSmokeNext_s0201
  | 202 => graphSmokeNext_s0202
  | 203 => graphSmokeNext_s0203
  | 204 => graphSmokeNext_s0204
  | 205 => graphSmokeNext_s0205
  | 206 => graphSmokeNext_s0206
  | 207 => graphSmokeNext_s0207
  | 208 => graphSmokeNext_s0208
  | 209 => graphSmokeNext_s0209
  | 210 => graphSmokeNext_s0210
  | 211 => graphSmokeNext_s0211
  | 212 => graphSmokeNext_s0212
  | 213 => graphSmokeNext_s0213
  | 214 => graphSmokeNext_s0214
  | 215 => graphSmokeNext_s0215
  | 216 => graphSmokeNext_s0216
  | 217 => graphSmokeNext_s0217
  | 218 => graphSmokeNext_s0218
  | 219 => graphSmokeNext_s0219
  | 220 => graphSmokeNext_s0220
  | 221 => graphSmokeNext_s0221
  | 222 => graphSmokeNext_s0222
  | _ => fun _ => none

def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=
  s < stateCount /\ graphSmokeNext s label = some (t, gain)

theorem bellmanGraphEvalBase_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
