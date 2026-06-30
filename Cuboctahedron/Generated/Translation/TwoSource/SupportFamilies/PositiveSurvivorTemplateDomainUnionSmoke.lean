import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated template-domain union smoke.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.
It groups a few positive candidate domains and proves a union-domain member
bridge without emitting rank/mask tables.

Selection summary: `selection=all-candidates candidate_count=195`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke

private inductive GeneratedCandidate
  | c000
  | c001
  | c002
  | c003
  | c004
  | c005
  | c006
  | c007
  | c008
  | c009
  | c010
  | c011
  | c012
  | c013
  | c014
  | c015
  | c016
  | c017
  | c018
  | c019
  | c020
  | c021
  | c022
  | c023
  | c024
  | c025
  | c026
  | c027
  | c028
  | c029
  | c030
  | c031
  | c032
  | c033
  | c034
  | c035
  | c036
  | c037
  | c038
  | c039
  | c040
  | c041
  | c042
  | c043
  | c044
  | c045
  | c046
  | c047
  | c048
  | c049
  | c050
  | c051
  | c052
  | c053
  | c054
  | c055
  | c056
  | c057
  | c058
  | c059
  | c060
  | c061
  | c062
  | c063
  | c064
  | c065
  | c066
  | c067
  | c068
  | c069
  | c070
  | c071
  | c072
  | c073
  | c074
  | c075
  | c076
  | c077
  | c078
  | c079
  | c080
  | c081
  | c082
  | c083
  | c084
  | c085
  | c086
  | c087
  | c088
  | c089
  | c090
  | c091
  | c092
  | c093
  | c094
  | c095
  | c096
  | c097
  | c098
  | c099
  | c100
  | c101
  | c102
  | c103
  | c104
  | c105
  | c106
  | c107
  | c108
  | c109
  | c110
  | c111
  | c112
  | c113
  | c114
  | c115
  | c116
  | c117
  | c118
  | c119
  | c120
  | c121
  | c122
  | c123
  | c124
  | c125
  | c126
  | c127
  | c128
  | c129
  | c130
  | c131
  | c132
  | c133
  | c134
  | c135
  | c136
  | c137
  | c138
  | c139
  | c140
  | c141
  | c142
  | c143
  | c144
  | c145
  | c146
  | c147
  | c148
  | c149
  | c150
  | c151
  | c152
  | c153
  | c154
  | c155
  | c156
  | c157
  | c158
  | c159
  | c160
  | c161
  | c162
  | c163
  | c164
  | c165
  | c166
  | c167
  | c168
  | c169
  | c170
  | c171
  | c172
  | c173
  | c174
  | c175
  | c176
  | c177
  | c178
  | c179
  | c180
  | c181
  | c182
  | c183
  | c184
  | c185
  | c186
  | c187
  | c188
  | c189
  | c190
  | c191
  | c192
  | c193
  | c194
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c006 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c007 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c008 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c009 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c010 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c011 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c012 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c013 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c014 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c015 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c016 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c017 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c018 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c019 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c020 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c021 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c022 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c023 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c024 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c025 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c026 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c027 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c028 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c029 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c030 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c031 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c032 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c033 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c034 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c035 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c036 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c037 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c038 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c039 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c040 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c041 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c042 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c043 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c044 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c045 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c046 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c047 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c048 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c049 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c050 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c051 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c052 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c053 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c054 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c055 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c056 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c057 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c058 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c059 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c060 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c061 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c062 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c063 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c064 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c065 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c066 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c067 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c068 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c069 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c070 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c071 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c072 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c073 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c074 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c075 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c076 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c077 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c078 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c079 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c080 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c081 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c082 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c083 => {
      first := SourcePositionSpec.ordering ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c084 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c085 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c086 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c087 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c088 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c089 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c090 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c091 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c092 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c093 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c094 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c095 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c096 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c097 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c098 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c099 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c100 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨0, by decide⟩ }
  | .c101 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c102 => {
      first := SourcePositionSpec.interior ⟨4, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c103 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c104 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c105 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c106 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c107 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c108 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c109 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c110 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c111 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c112 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c113 => {
      first := SourcePositionSpec.ordering ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c114 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c115 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c116 => {
      first := SourcePositionSpec.ordering ⟨12, by decide⟩
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c117 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c118 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c119 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c120 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c121 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c122 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.zm 5
      second := SourcePositionSpec.ordering ⟨0, by decide⟩ }
  | .c123 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c124 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c125 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c126 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c127 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c128 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c129 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c130 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c131 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c132 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c133 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c134 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c135 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c136 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c137 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.zm 5
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c138 => {
      first := SourcePositionSpec.ordering ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c139 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.ym 3
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c140 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c141 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c142 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c143 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c144 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c145 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.zp 4
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c146 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c147 => {
      first := SourcePositionSpec.ordering ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c148 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.ordering ⟨2, by decide⟩ }
  | .c149 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c150 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c151 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c152 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c153 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c154 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c155 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c156 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.zm 4
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c157 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c158 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c159 => {
      first := SourcePositionSpec.ordering ⟨11, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c160 => {
      first := SourcePositionSpec.ordering ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c161 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c162 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.yp 2
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c163 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.zp 4
      second := SourcePositionSpec.ordering ⟨0, by decide⟩ }
  | .c164 => {
      first := SourcePositionSpec.ordering ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c165 => {
      first := SourcePositionSpec.interior ⟨2, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c166 => {
      first := SourcePositionSpec.ordering ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c167 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.zp 4
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c168 => {
      first := SourcePositionSpec.ordering ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c169 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c170 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.yp 2
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c171 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.zm 5
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c172 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.ym 3
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c173 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c174 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c175 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c176 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c177 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c178 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.ym 3
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c179 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c180 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.zp 4
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c181 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c182 => {
      first := SourcePositionSpec.ordering ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c183 => {
      first := SourcePositionSpec.ordering ⟨10, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c184 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c185 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c186 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c187 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.ym 3
      second := SourcePositionSpec.ordering ⟨4, by decide⟩ }
  | .c188 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c189 => {
      first := SourcePositionSpec.ordering ⟨11, by decide⟩
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c190 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.yp 2
      second := SourcePositionSpec.ordering ⟨5, by decide⟩ }
  | .c191 => {
      first := SourcePositionSpec.ordering ⟨12, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c192 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c193 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c194 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }

private def generatedKey : GeneratedCandidate -> SourceIndexStateKey
  | .c000 => {
      firstIndex := (generatedSpec .c000).first.index
      secondIndex := (generatedSpec .c000).second.index
      support := (generatedSpec .c000).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c001 => {
      firstIndex := (generatedSpec .c001).first.index
      secondIndex := (generatedSpec .c001).second.index
      support := (generatedSpec .c001).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c002 => {
      firstIndex := (generatedSpec .c002).first.index
      secondIndex := (generatedSpec .c002).second.index
      support := (generatedSpec .c002).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c004 => {
      firstIndex := (generatedSpec .c004).first.index
      secondIndex := (generatedSpec .c004).second.index
      support := (generatedSpec .c004).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c005 => {
      firstIndex := (generatedSpec .c005).first.index
      secondIndex := (generatedSpec .c005).second.index
      support := (generatedSpec .c005).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c006 => {
      firstIndex := (generatedSpec .c006).first.index
      secondIndex := (generatedSpec .c006).second.index
      support := (generatedSpec .c006).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c007 => {
      firstIndex := (generatedSpec .c007).first.index
      secondIndex := (generatedSpec .c007).second.index
      support := (generatedSpec .c007).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c008 => {
      firstIndex := (generatedSpec .c008).first.index
      secondIndex := (generatedSpec .c008).second.index
      support := (generatedSpec .c008).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c009 => {
      firstIndex := (generatedSpec .c009).first.index
      secondIndex := (generatedSpec .c009).second.index
      support := (generatedSpec .c009).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c010 => {
      firstIndex := (generatedSpec .c010).first.index
      secondIndex := (generatedSpec .c010).second.index
      support := (generatedSpec .c010).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c011 => {
      firstIndex := (generatedSpec .c011).first.index
      secondIndex := (generatedSpec .c011).second.index
      support := (generatedSpec .c011).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c012 => {
      firstIndex := (generatedSpec .c012).first.index
      secondIndex := (generatedSpec .c012).second.index
      support := (generatedSpec .c012).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c013 => {
      firstIndex := (generatedSpec .c013).first.index
      secondIndex := (generatedSpec .c013).second.index
      support := (generatedSpec .c013).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c014 => {
      firstIndex := (generatedSpec .c014).first.index
      secondIndex := (generatedSpec .c014).second.index
      support := (generatedSpec .c014).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c015 => {
      firstIndex := (generatedSpec .c015).first.index
      secondIndex := (generatedSpec .c015).second.index
      support := (generatedSpec .c015).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c016 => {
      firstIndex := (generatedSpec .c016).first.index
      secondIndex := (generatedSpec .c016).second.index
      support := (generatedSpec .c016).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c017 => {
      firstIndex := (generatedSpec .c017).first.index
      secondIndex := (generatedSpec .c017).second.index
      support := (generatedSpec .c017).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c018 => {
      firstIndex := (generatedSpec .c018).first.index
      secondIndex := (generatedSpec .c018).second.index
      support := (generatedSpec .c018).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c019 => {
      firstIndex := (generatedSpec .c019).first.index
      secondIndex := (generatedSpec .c019).second.index
      support := (generatedSpec .c019).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c020 => {
      firstIndex := (generatedSpec .c020).first.index
      secondIndex := (generatedSpec .c020).second.index
      support := (generatedSpec .c020).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c021 => {
      firstIndex := (generatedSpec .c021).first.index
      secondIndex := (generatedSpec .c021).second.index
      support := (generatedSpec .c021).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c022 => {
      firstIndex := (generatedSpec .c022).first.index
      secondIndex := (generatedSpec .c022).second.index
      support := (generatedSpec .c022).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c023 => {
      firstIndex := (generatedSpec .c023).first.index
      secondIndex := (generatedSpec .c023).second.index
      support := (generatedSpec .c023).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c024 => {
      firstIndex := (generatedSpec .c024).first.index
      secondIndex := (generatedSpec .c024).second.index
      support := (generatedSpec .c024).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c025 => {
      firstIndex := (generatedSpec .c025).first.index
      secondIndex := (generatedSpec .c025).second.index
      support := (generatedSpec .c025).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c026 => {
      firstIndex := (generatedSpec .c026).first.index
      secondIndex := (generatedSpec .c026).second.index
      support := (generatedSpec .c026).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c027 => {
      firstIndex := (generatedSpec .c027).first.index
      secondIndex := (generatedSpec .c027).second.index
      support := (generatedSpec .c027).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c028 => {
      firstIndex := (generatedSpec .c028).first.index
      secondIndex := (generatedSpec .c028).second.index
      support := (generatedSpec .c028).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c029 => {
      firstIndex := (generatedSpec .c029).first.index
      secondIndex := (generatedSpec .c029).second.index
      support := (generatedSpec .c029).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c030 => {
      firstIndex := (generatedSpec .c030).first.index
      secondIndex := (generatedSpec .c030).second.index
      support := (generatedSpec .c030).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c031 => {
      firstIndex := (generatedSpec .c031).first.index
      secondIndex := (generatedSpec .c031).second.index
      support := (generatedSpec .c031).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c032 => {
      firstIndex := (generatedSpec .c032).first.index
      secondIndex := (generatedSpec .c032).second.index
      support := (generatedSpec .c032).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c033 => {
      firstIndex := (generatedSpec .c033).first.index
      secondIndex := (generatedSpec .c033).second.index
      support := (generatedSpec .c033).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c034 => {
      firstIndex := (generatedSpec .c034).first.index
      secondIndex := (generatedSpec .c034).second.index
      support := (generatedSpec .c034).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c035 => {
      firstIndex := (generatedSpec .c035).first.index
      secondIndex := (generatedSpec .c035).second.index
      support := (generatedSpec .c035).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c036 => {
      firstIndex := (generatedSpec .c036).first.index
      secondIndex := (generatedSpec .c036).second.index
      support := (generatedSpec .c036).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c037 => {
      firstIndex := (generatedSpec .c037).first.index
      secondIndex := (generatedSpec .c037).second.index
      support := (generatedSpec .c037).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c038 => {
      firstIndex := (generatedSpec .c038).first.index
      secondIndex := (generatedSpec .c038).second.index
      support := (generatedSpec .c038).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c039 => {
      firstIndex := (generatedSpec .c039).first.index
      secondIndex := (generatedSpec .c039).second.index
      support := (generatedSpec .c039).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c040 => {
      firstIndex := (generatedSpec .c040).first.index
      secondIndex := (generatedSpec .c040).second.index
      support := (generatedSpec .c040).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c041 => {
      firstIndex := (generatedSpec .c041).first.index
      secondIndex := (generatedSpec .c041).second.index
      support := (generatedSpec .c041).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c042 => {
      firstIndex := (generatedSpec .c042).first.index
      secondIndex := (generatedSpec .c042).second.index
      support := (generatedSpec .c042).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c043 => {
      firstIndex := (generatedSpec .c043).first.index
      secondIndex := (generatedSpec .c043).second.index
      support := (generatedSpec .c043).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c044 => {
      firstIndex := (generatedSpec .c044).first.index
      secondIndex := (generatedSpec .c044).second.index
      support := (generatedSpec .c044).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c045 => {
      firstIndex := (generatedSpec .c045).first.index
      secondIndex := (generatedSpec .c045).second.index
      support := (generatedSpec .c045).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c046 => {
      firstIndex := (generatedSpec .c046).first.index
      secondIndex := (generatedSpec .c046).second.index
      support := (generatedSpec .c046).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c047 => {
      firstIndex := (generatedSpec .c047).first.index
      secondIndex := (generatedSpec .c047).second.index
      support := (generatedSpec .c047).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c048 => {
      firstIndex := (generatedSpec .c048).first.index
      secondIndex := (generatedSpec .c048).second.index
      support := (generatedSpec .c048).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c049 => {
      firstIndex := (generatedSpec .c049).first.index
      secondIndex := (generatedSpec .c049).second.index
      support := (generatedSpec .c049).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c050 => {
      firstIndex := (generatedSpec .c050).first.index
      secondIndex := (generatedSpec .c050).second.index
      support := (generatedSpec .c050).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c051 => {
      firstIndex := (generatedSpec .c051).first.index
      secondIndex := (generatedSpec .c051).second.index
      support := (generatedSpec .c051).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c052 => {
      firstIndex := (generatedSpec .c052).first.index
      secondIndex := (generatedSpec .c052).second.index
      support := (generatedSpec .c052).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c053 => {
      firstIndex := (generatedSpec .c053).first.index
      secondIndex := (generatedSpec .c053).second.index
      support := (generatedSpec .c053).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c054 => {
      firstIndex := (generatedSpec .c054).first.index
      secondIndex := (generatedSpec .c054).second.index
      support := (generatedSpec .c054).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c055 => {
      firstIndex := (generatedSpec .c055).first.index
      secondIndex := (generatedSpec .c055).second.index
      support := (generatedSpec .c055).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c056 => {
      firstIndex := (generatedSpec .c056).first.index
      secondIndex := (generatedSpec .c056).second.index
      support := (generatedSpec .c056).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c057 => {
      firstIndex := (generatedSpec .c057).first.index
      secondIndex := (generatedSpec .c057).second.index
      support := (generatedSpec .c057).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c058 => {
      firstIndex := (generatedSpec .c058).first.index
      secondIndex := (generatedSpec .c058).second.index
      support := (generatedSpec .c058).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c059 => {
      firstIndex := (generatedSpec .c059).first.index
      secondIndex := (generatedSpec .c059).second.index
      support := (generatedSpec .c059).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c060 => {
      firstIndex := (generatedSpec .c060).first.index
      secondIndex := (generatedSpec .c060).second.index
      support := (generatedSpec .c060).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c061 => {
      firstIndex := (generatedSpec .c061).first.index
      secondIndex := (generatedSpec .c061).second.index
      support := (generatedSpec .c061).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c062 => {
      firstIndex := (generatedSpec .c062).first.index
      secondIndex := (generatedSpec .c062).second.index
      support := (generatedSpec .c062).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c063 => {
      firstIndex := (generatedSpec .c063).first.index
      secondIndex := (generatedSpec .c063).second.index
      support := (generatedSpec .c063).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c064 => {
      firstIndex := (generatedSpec .c064).first.index
      secondIndex := (generatedSpec .c064).second.index
      support := (generatedSpec .c064).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c065 => {
      firstIndex := (generatedSpec .c065).first.index
      secondIndex := (generatedSpec .c065).second.index
      support := (generatedSpec .c065).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c066 => {
      firstIndex := (generatedSpec .c066).first.index
      secondIndex := (generatedSpec .c066).second.index
      support := (generatedSpec .c066).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c067 => {
      firstIndex := (generatedSpec .c067).first.index
      secondIndex := (generatedSpec .c067).second.index
      support := (generatedSpec .c067).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c068 => {
      firstIndex := (generatedSpec .c068).first.index
      secondIndex := (generatedSpec .c068).second.index
      support := (generatedSpec .c068).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c069 => {
      firstIndex := (generatedSpec .c069).first.index
      secondIndex := (generatedSpec .c069).second.index
      support := (generatedSpec .c069).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c070 => {
      firstIndex := (generatedSpec .c070).first.index
      secondIndex := (generatedSpec .c070).second.index
      support := (generatedSpec .c070).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c071 => {
      firstIndex := (generatedSpec .c071).first.index
      secondIndex := (generatedSpec .c071).second.index
      support := (generatedSpec .c071).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c072 => {
      firstIndex := (generatedSpec .c072).first.index
      secondIndex := (generatedSpec .c072).second.index
      support := (generatedSpec .c072).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c073 => {
      firstIndex := (generatedSpec .c073).first.index
      secondIndex := (generatedSpec .c073).second.index
      support := (generatedSpec .c073).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c074 => {
      firstIndex := (generatedSpec .c074).first.index
      secondIndex := (generatedSpec .c074).second.index
      support := (generatedSpec .c074).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c075 => {
      firstIndex := (generatedSpec .c075).first.index
      secondIndex := (generatedSpec .c075).second.index
      support := (generatedSpec .c075).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c076 => {
      firstIndex := (generatedSpec .c076).first.index
      secondIndex := (generatedSpec .c076).second.index
      support := (generatedSpec .c076).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c077 => {
      firstIndex := (generatedSpec .c077).first.index
      secondIndex := (generatedSpec .c077).second.index
      support := (generatedSpec .c077).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c078 => {
      firstIndex := (generatedSpec .c078).first.index
      secondIndex := (generatedSpec .c078).second.index
      support := (generatedSpec .c078).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c079 => {
      firstIndex := (generatedSpec .c079).first.index
      secondIndex := (generatedSpec .c079).second.index
      support := (generatedSpec .c079).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c080 => {
      firstIndex := (generatedSpec .c080).first.index
      secondIndex := (generatedSpec .c080).second.index
      support := (generatedSpec .c080).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c081 => {
      firstIndex := (generatedSpec .c081).first.index
      secondIndex := (generatedSpec .c081).second.index
      support := (generatedSpec .c081).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c082 => {
      firstIndex := (generatedSpec .c082).first.index
      secondIndex := (generatedSpec .c082).second.index
      support := (generatedSpec .c082).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c083 => {
      firstIndex := (generatedSpec .c083).first.index
      secondIndex := (generatedSpec .c083).second.index
      support := (generatedSpec .c083).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c084 => {
      firstIndex := (generatedSpec .c084).first.index
      secondIndex := (generatedSpec .c084).second.index
      support := (generatedSpec .c084).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c085 => {
      firstIndex := (generatedSpec .c085).first.index
      secondIndex := (generatedSpec .c085).second.index
      support := (generatedSpec .c085).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c086 => {
      firstIndex := (generatedSpec .c086).first.index
      secondIndex := (generatedSpec .c086).second.index
      support := (generatedSpec .c086).support
      template := SourceIndexTemplate.axisAOnly }
  | .c087 => {
      firstIndex := (generatedSpec .c087).first.index
      secondIndex := (generatedSpec .c087).second.index
      support := (generatedSpec .c087).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c088 => {
      firstIndex := (generatedSpec .c088).first.index
      secondIndex := (generatedSpec .c088).second.index
      support := (generatedSpec .c088).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c089 => {
      firstIndex := (generatedSpec .c089).first.index
      secondIndex := (generatedSpec .c089).second.index
      support := (generatedSpec .c089).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c090 => {
      firstIndex := (generatedSpec .c090).first.index
      secondIndex := (generatedSpec .c090).second.index
      support := (generatedSpec .c090).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c091 => {
      firstIndex := (generatedSpec .c091).first.index
      secondIndex := (generatedSpec .c091).second.index
      support := (generatedSpec .c091).support
      template := SourceIndexTemplate.axisAOnly }
  | .c092 => {
      firstIndex := (generatedSpec .c092).first.index
      secondIndex := (generatedSpec .c092).second.index
      support := (generatedSpec .c092).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c093 => {
      firstIndex := (generatedSpec .c093).first.index
      secondIndex := (generatedSpec .c093).second.index
      support := (generatedSpec .c093).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c094 => {
      firstIndex := (generatedSpec .c094).first.index
      secondIndex := (generatedSpec .c094).second.index
      support := (generatedSpec .c094).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c095 => {
      firstIndex := (generatedSpec .c095).first.index
      secondIndex := (generatedSpec .c095).second.index
      support := (generatedSpec .c095).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c096 => {
      firstIndex := (generatedSpec .c096).first.index
      secondIndex := (generatedSpec .c096).second.index
      support := (generatedSpec .c096).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c097 => {
      firstIndex := (generatedSpec .c097).first.index
      secondIndex := (generatedSpec .c097).second.index
      support := (generatedSpec .c097).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c098 => {
      firstIndex := (generatedSpec .c098).first.index
      secondIndex := (generatedSpec .c098).second.index
      support := (generatedSpec .c098).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c099 => {
      firstIndex := (generatedSpec .c099).first.index
      secondIndex := (generatedSpec .c099).second.index
      support := (generatedSpec .c099).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c100 => {
      firstIndex := (generatedSpec .c100).first.index
      secondIndex := (generatedSpec .c100).second.index
      support := (generatedSpec .c100).support
      template := SourceIndexTemplate.axisAOnly }
  | .c101 => {
      firstIndex := (generatedSpec .c101).first.index
      secondIndex := (generatedSpec .c101).second.index
      support := (generatedSpec .c101).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c102 => {
      firstIndex := (generatedSpec .c102).first.index
      secondIndex := (generatedSpec .c102).second.index
      support := (generatedSpec .c102).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c103 => {
      firstIndex := (generatedSpec .c103).first.index
      secondIndex := (generatedSpec .c103).second.index
      support := (generatedSpec .c103).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c104 => {
      firstIndex := (generatedSpec .c104).first.index
      secondIndex := (generatedSpec .c104).second.index
      support := (generatedSpec .c104).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c105 => {
      firstIndex := (generatedSpec .c105).first.index
      secondIndex := (generatedSpec .c105).second.index
      support := (generatedSpec .c105).support
      template := SourceIndexTemplate.axisAOnly }
  | .c106 => {
      firstIndex := (generatedSpec .c106).first.index
      secondIndex := (generatedSpec .c106).second.index
      support := (generatedSpec .c106).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c107 => {
      firstIndex := (generatedSpec .c107).first.index
      secondIndex := (generatedSpec .c107).second.index
      support := (generatedSpec .c107).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c108 => {
      firstIndex := (generatedSpec .c108).first.index
      secondIndex := (generatedSpec .c108).second.index
      support := (generatedSpec .c108).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c109 => {
      firstIndex := (generatedSpec .c109).first.index
      secondIndex := (generatedSpec .c109).second.index
      support := (generatedSpec .c109).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c110 => {
      firstIndex := (generatedSpec .c110).first.index
      secondIndex := (generatedSpec .c110).second.index
      support := (generatedSpec .c110).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c111 => {
      firstIndex := (generatedSpec .c111).first.index
      secondIndex := (generatedSpec .c111).second.index
      support := (generatedSpec .c111).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c112 => {
      firstIndex := (generatedSpec .c112).first.index
      secondIndex := (generatedSpec .c112).second.index
      support := (generatedSpec .c112).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c113 => {
      firstIndex := (generatedSpec .c113).first.index
      secondIndex := (generatedSpec .c113).second.index
      support := (generatedSpec .c113).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c114 => {
      firstIndex := (generatedSpec .c114).first.index
      secondIndex := (generatedSpec .c114).second.index
      support := (generatedSpec .c114).support
      template := SourceIndexTemplate.axisAOnly }
  | .c115 => {
      firstIndex := (generatedSpec .c115).first.index
      secondIndex := (generatedSpec .c115).second.index
      support := (generatedSpec .c115).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c116 => {
      firstIndex := (generatedSpec .c116).first.index
      secondIndex := (generatedSpec .c116).second.index
      support := (generatedSpec .c116).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c117 => {
      firstIndex := (generatedSpec .c117).first.index
      secondIndex := (generatedSpec .c117).second.index
      support := (generatedSpec .c117).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c118 => {
      firstIndex := (generatedSpec .c118).first.index
      secondIndex := (generatedSpec .c118).second.index
      support := (generatedSpec .c118).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c119 => {
      firstIndex := (generatedSpec .c119).first.index
      secondIndex := (generatedSpec .c119).second.index
      support := (generatedSpec .c119).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c120 => {
      firstIndex := (generatedSpec .c120).first.index
      secondIndex := (generatedSpec .c120).second.index
      support := (generatedSpec .c120).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c121 => {
      firstIndex := (generatedSpec .c121).first.index
      secondIndex := (generatedSpec .c121).second.index
      support := (generatedSpec .c121).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c122 => {
      firstIndex := (generatedSpec .c122).first.index
      secondIndex := (generatedSpec .c122).second.index
      support := (generatedSpec .c122).support
      template := SourceIndexTemplate.axisAOnly }
  | .c123 => {
      firstIndex := (generatedSpec .c123).first.index
      secondIndex := (generatedSpec .c123).second.index
      support := (generatedSpec .c123).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c124 => {
      firstIndex := (generatedSpec .c124).first.index
      secondIndex := (generatedSpec .c124).second.index
      support := (generatedSpec .c124).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c125 => {
      firstIndex := (generatedSpec .c125).first.index
      secondIndex := (generatedSpec .c125).second.index
      support := (generatedSpec .c125).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c126 => {
      firstIndex := (generatedSpec .c126).first.index
      secondIndex := (generatedSpec .c126).second.index
      support := (generatedSpec .c126).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c127 => {
      firstIndex := (generatedSpec .c127).first.index
      secondIndex := (generatedSpec .c127).second.index
      support := (generatedSpec .c127).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c128 => {
      firstIndex := (generatedSpec .c128).first.index
      secondIndex := (generatedSpec .c128).second.index
      support := (generatedSpec .c128).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c129 => {
      firstIndex := (generatedSpec .c129).first.index
      secondIndex := (generatedSpec .c129).second.index
      support := (generatedSpec .c129).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c130 => {
      firstIndex := (generatedSpec .c130).first.index
      secondIndex := (generatedSpec .c130).second.index
      support := (generatedSpec .c130).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c131 => {
      firstIndex := (generatedSpec .c131).first.index
      secondIndex := (generatedSpec .c131).second.index
      support := (generatedSpec .c131).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c132 => {
      firstIndex := (generatedSpec .c132).first.index
      secondIndex := (generatedSpec .c132).second.index
      support := (generatedSpec .c132).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c133 => {
      firstIndex := (generatedSpec .c133).first.index
      secondIndex := (generatedSpec .c133).second.index
      support := (generatedSpec .c133).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c134 => {
      firstIndex := (generatedSpec .c134).first.index
      secondIndex := (generatedSpec .c134).second.index
      support := (generatedSpec .c134).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c135 => {
      firstIndex := (generatedSpec .c135).first.index
      secondIndex := (generatedSpec .c135).second.index
      support := (generatedSpec .c135).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c136 => {
      firstIndex := (generatedSpec .c136).first.index
      secondIndex := (generatedSpec .c136).second.index
      support := (generatedSpec .c136).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c137 => {
      firstIndex := (generatedSpec .c137).first.index
      secondIndex := (generatedSpec .c137).second.index
      support := (generatedSpec .c137).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c138 => {
      firstIndex := (generatedSpec .c138).first.index
      secondIndex := (generatedSpec .c138).second.index
      support := (generatedSpec .c138).support
      template := SourceIndexTemplate.axisAOnly }
  | .c139 => {
      firstIndex := (generatedSpec .c139).first.index
      secondIndex := (generatedSpec .c139).second.index
      support := (generatedSpec .c139).support
      template := SourceIndexTemplate.axisBOnly }
  | .c140 => {
      firstIndex := (generatedSpec .c140).first.index
      secondIndex := (generatedSpec .c140).second.index
      support := (generatedSpec .c140).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c141 => {
      firstIndex := (generatedSpec .c141).first.index
      secondIndex := (generatedSpec .c141).second.index
      support := (generatedSpec .c141).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c142 => {
      firstIndex := (generatedSpec .c142).first.index
      secondIndex := (generatedSpec .c142).second.index
      support := (generatedSpec .c142).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c143 => {
      firstIndex := (generatedSpec .c143).first.index
      secondIndex := (generatedSpec .c143).second.index
      support := (generatedSpec .c143).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c144 => {
      firstIndex := (generatedSpec .c144).first.index
      secondIndex := (generatedSpec .c144).second.index
      support := (generatedSpec .c144).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c145 => {
      firstIndex := (generatedSpec .c145).first.index
      secondIndex := (generatedSpec .c145).second.index
      support := (generatedSpec .c145).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c146 => {
      firstIndex := (generatedSpec .c146).first.index
      secondIndex := (generatedSpec .c146).second.index
      support := (generatedSpec .c146).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c147 => {
      firstIndex := (generatedSpec .c147).first.index
      secondIndex := (generatedSpec .c147).second.index
      support := (generatedSpec .c147).support
      template := SourceIndexTemplate.axisAOnly }
  | .c148 => {
      firstIndex := (generatedSpec .c148).first.index
      secondIndex := (generatedSpec .c148).second.index
      support := (generatedSpec .c148).support
      template := SourceIndexTemplate.axisBOnly }
  | .c149 => {
      firstIndex := (generatedSpec .c149).first.index
      secondIndex := (generatedSpec .c149).second.index
      support := (generatedSpec .c149).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c150 => {
      firstIndex := (generatedSpec .c150).first.index
      secondIndex := (generatedSpec .c150).second.index
      support := (generatedSpec .c150).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c151 => {
      firstIndex := (generatedSpec .c151).first.index
      secondIndex := (generatedSpec .c151).second.index
      support := (generatedSpec .c151).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c152 => {
      firstIndex := (generatedSpec .c152).first.index
      secondIndex := (generatedSpec .c152).second.index
      support := (generatedSpec .c152).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c153 => {
      firstIndex := (generatedSpec .c153).first.index
      secondIndex := (generatedSpec .c153).second.index
      support := (generatedSpec .c153).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c154 => {
      firstIndex := (generatedSpec .c154).first.index
      secondIndex := (generatedSpec .c154).second.index
      support := (generatedSpec .c154).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c155 => {
      firstIndex := (generatedSpec .c155).first.index
      secondIndex := (generatedSpec .c155).second.index
      support := (generatedSpec .c155).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c156 => {
      firstIndex := (generatedSpec .c156).first.index
      secondIndex := (generatedSpec .c156).second.index
      support := (generatedSpec .c156).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c157 => {
      firstIndex := (generatedSpec .c157).first.index
      secondIndex := (generatedSpec .c157).second.index
      support := (generatedSpec .c157).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c158 => {
      firstIndex := (generatedSpec .c158).first.index
      secondIndex := (generatedSpec .c158).second.index
      support := (generatedSpec .c158).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c159 => {
      firstIndex := (generatedSpec .c159).first.index
      secondIndex := (generatedSpec .c159).second.index
      support := (generatedSpec .c159).support
      template := SourceIndexTemplate.axisBOnly }
  | .c160 => {
      firstIndex := (generatedSpec .c160).first.index
      secondIndex := (generatedSpec .c160).second.index
      support := (generatedSpec .c160).support
      template := SourceIndexTemplate.axisBOnly }
  | .c161 => {
      firstIndex := (generatedSpec .c161).first.index
      secondIndex := (generatedSpec .c161).second.index
      support := (generatedSpec .c161).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c162 => {
      firstIndex := (generatedSpec .c162).first.index
      secondIndex := (generatedSpec .c162).second.index
      support := (generatedSpec .c162).support
      template := SourceIndexTemplate.axisBOnly }
  | .c163 => {
      firstIndex := (generatedSpec .c163).first.index
      secondIndex := (generatedSpec .c163).second.index
      support := (generatedSpec .c163).support
      template := SourceIndexTemplate.axisAOnly }
  | .c164 => {
      firstIndex := (generatedSpec .c164).first.index
      secondIndex := (generatedSpec .c164).second.index
      support := (generatedSpec .c164).support
      template := SourceIndexTemplate.axisBOnly }
  | .c165 => {
      firstIndex := (generatedSpec .c165).first.index
      secondIndex := (generatedSpec .c165).second.index
      support := (generatedSpec .c165).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c166 => {
      firstIndex := (generatedSpec .c166).first.index
      secondIndex := (generatedSpec .c166).second.index
      support := (generatedSpec .c166).support
      template := SourceIndexTemplate.axisAOnly }
  | .c167 => {
      firstIndex := (generatedSpec .c167).first.index
      secondIndex := (generatedSpec .c167).second.index
      support := (generatedSpec .c167).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c168 => {
      firstIndex := (generatedSpec .c168).first.index
      secondIndex := (generatedSpec .c168).second.index
      support := (generatedSpec .c168).support
      template := SourceIndexTemplate.axisAOnly }
  | .c169 => {
      firstIndex := (generatedSpec .c169).first.index
      secondIndex := (generatedSpec .c169).second.index
      support := (generatedSpec .c169).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c170 => {
      firstIndex := (generatedSpec .c170).first.index
      secondIndex := (generatedSpec .c170).second.index
      support := (generatedSpec .c170).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c171 => {
      firstIndex := (generatedSpec .c171).first.index
      secondIndex := (generatedSpec .c171).second.index
      support := (generatedSpec .c171).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c172 => {
      firstIndex := (generatedSpec .c172).first.index
      secondIndex := (generatedSpec .c172).second.index
      support := (generatedSpec .c172).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c173 => {
      firstIndex := (generatedSpec .c173).first.index
      secondIndex := (generatedSpec .c173).second.index
      support := (generatedSpec .c173).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c174 => {
      firstIndex := (generatedSpec .c174).first.index
      secondIndex := (generatedSpec .c174).second.index
      support := (generatedSpec .c174).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c175 => {
      firstIndex := (generatedSpec .c175).first.index
      secondIndex := (generatedSpec .c175).second.index
      support := (generatedSpec .c175).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c176 => {
      firstIndex := (generatedSpec .c176).first.index
      secondIndex := (generatedSpec .c176).second.index
      support := (generatedSpec .c176).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c177 => {
      firstIndex := (generatedSpec .c177).first.index
      secondIndex := (generatedSpec .c177).second.index
      support := (generatedSpec .c177).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c178 => {
      firstIndex := (generatedSpec .c178).first.index
      secondIndex := (generatedSpec .c178).second.index
      support := (generatedSpec .c178).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c179 => {
      firstIndex := (generatedSpec .c179).first.index
      secondIndex := (generatedSpec .c179).second.index
      support := (generatedSpec .c179).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c180 => {
      firstIndex := (generatedSpec .c180).first.index
      secondIndex := (generatedSpec .c180).second.index
      support := (generatedSpec .c180).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c181 => {
      firstIndex := (generatedSpec .c181).first.index
      secondIndex := (generatedSpec .c181).second.index
      support := (generatedSpec .c181).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c182 => {
      firstIndex := (generatedSpec .c182).first.index
      secondIndex := (generatedSpec .c182).second.index
      support := (generatedSpec .c182).support
      template := SourceIndexTemplate.axisAOnly }
  | .c183 => {
      firstIndex := (generatedSpec .c183).first.index
      secondIndex := (generatedSpec .c183).second.index
      support := (generatedSpec .c183).support
      template := SourceIndexTemplate.axisBOnly }
  | .c184 => {
      firstIndex := (generatedSpec .c184).first.index
      secondIndex := (generatedSpec .c184).second.index
      support := (generatedSpec .c184).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c185 => {
      firstIndex := (generatedSpec .c185).first.index
      secondIndex := (generatedSpec .c185).second.index
      support := (generatedSpec .c185).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c186 => {
      firstIndex := (generatedSpec .c186).first.index
      secondIndex := (generatedSpec .c186).second.index
      support := (generatedSpec .c186).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c187 => {
      firstIndex := (generatedSpec .c187).first.index
      secondIndex := (generatedSpec .c187).second.index
      support := (generatedSpec .c187).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c188 => {
      firstIndex := (generatedSpec .c188).first.index
      secondIndex := (generatedSpec .c188).second.index
      support := (generatedSpec .c188).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c189 => {
      firstIndex := (generatedSpec .c189).first.index
      secondIndex := (generatedSpec .c189).second.index
      support := (generatedSpec .c189).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c190 => {
      firstIndex := (generatedSpec .c190).first.index
      secondIndex := (generatedSpec .c190).second.index
      support := (generatedSpec .c190).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c191 => {
      firstIndex := (generatedSpec .c191).first.index
      secondIndex := (generatedSpec .c191).second.index
      support := (generatedSpec .c191).support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .c192 => {
      firstIndex := (generatedSpec .c192).first.index
      secondIndex := (generatedSpec .c192).second.index
      support := (generatedSpec .c192).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c193 => {
      firstIndex := (generatedSpec .c193).first.index
      secondIndex := (generatedSpec .c193).second.index
      support := (generatedSpec .c193).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c194 => {
      firstIndex := (generatedSpec .c194).first.index
      secondIndex := (generatedSpec .c194).second.index
      support := (generatedSpec .c194).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }

private def generatedRowProducer : GeneratedCandidate -> SourceIndexStateRowProducer
  | .c000 => {
      Applies := fun key rank mask =>
        key = generatedKey .c000 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c001 => {
      Applies := fun key rank mask =>
        key = generatedKey .c001 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c002 => {
      Applies := fun key rank mask =>
        key = generatedKey .c002 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c003 => {
      Applies := fun key rank mask =>
        key = generatedKey .c003 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c004 => {
      Applies := fun key rank mask =>
        key = generatedKey .c004 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c005 => {
      Applies := fun key rank mask =>
        key = generatedKey .c005 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c006 => {
      Applies := fun key rank mask =>
        key = generatedKey .c006 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c007 => {
      Applies := fun key rank mask =>
        key = generatedKey .c007 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c008 => {
      Applies := fun key rank mask =>
        key = generatedKey .c008 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c009 => {
      Applies := fun key rank mask =>
        key = generatedKey .c009 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c010 => {
      Applies := fun key rank mask =>
        key = generatedKey .c010 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c011 => {
      Applies := fun key rank mask =>
        key = generatedKey .c011 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c012 => {
      Applies := fun key rank mask =>
        key = generatedKey .c012 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c013 => {
      Applies := fun key rank mask =>
        key = generatedKey .c013 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c014 => {
      Applies := fun key rank mask =>
        key = generatedKey .c014 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c015 => {
      Applies := fun key rank mask =>
        key = generatedKey .c015 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c016 => {
      Applies := fun key rank mask =>
        key = generatedKey .c016 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c017 => {
      Applies := fun key rank mask =>
        key = generatedKey .c017 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c018 => {
      Applies := fun key rank mask =>
        key = generatedKey .c018 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c019 => {
      Applies := fun key rank mask =>
        key = generatedKey .c019 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c020 => {
      Applies := fun key rank mask =>
        key = generatedKey .c020 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c021 => {
      Applies := fun key rank mask =>
        key = generatedKey .c021 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c022 => {
      Applies := fun key rank mask =>
        key = generatedKey .c022 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c023 => {
      Applies := fun key rank mask =>
        key = generatedKey .c023 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c024 => {
      Applies := fun key rank mask =>
        key = generatedKey .c024 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c025 => {
      Applies := fun key rank mask =>
        key = generatedKey .c025 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c026 => {
      Applies := fun key rank mask =>
        key = generatedKey .c026 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c027 => {
      Applies := fun key rank mask =>
        key = generatedKey .c027 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c028 => {
      Applies := fun key rank mask =>
        key = generatedKey .c028 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c029 => {
      Applies := fun key rank mask =>
        key = generatedKey .c029 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c030 => {
      Applies := fun key rank mask =>
        key = generatedKey .c030 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c031 => {
      Applies := fun key rank mask =>
        key = generatedKey .c031 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c032 => {
      Applies := fun key rank mask =>
        key = generatedKey .c032 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c033 => {
      Applies := fun key rank mask =>
        key = generatedKey .c033 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c034 => {
      Applies := fun key rank mask =>
        key = generatedKey .c034 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c035 => {
      Applies := fun key rank mask =>
        key = generatedKey .c035 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c036 => {
      Applies := fun key rank mask =>
        key = generatedKey .c036 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c037 => {
      Applies := fun key rank mask =>
        key = generatedKey .c037 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c038 => {
      Applies := fun key rank mask =>
        key = generatedKey .c038 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c039 => {
      Applies := fun key rank mask =>
        key = generatedKey .c039 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c040 => {
      Applies := fun key rank mask =>
        key = generatedKey .c040 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c041 => {
      Applies := fun key rank mask =>
        key = generatedKey .c041 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c042 => {
      Applies := fun key rank mask =>
        key = generatedKey .c042 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c043 => {
      Applies := fun key rank mask =>
        key = generatedKey .c043 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c044 => {
      Applies := fun key rank mask =>
        key = generatedKey .c044 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c045 => {
      Applies := fun key rank mask =>
        key = generatedKey .c045 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c046 => {
      Applies := fun key rank mask =>
        key = generatedKey .c046 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c047 => {
      Applies := fun key rank mask =>
        key = generatedKey .c047 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c048 => {
      Applies := fun key rank mask =>
        key = generatedKey .c048 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c049 => {
      Applies := fun key rank mask =>
        key = generatedKey .c049 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c050 => {
      Applies := fun key rank mask =>
        key = generatedKey .c050 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c051 => {
      Applies := fun key rank mask =>
        key = generatedKey .c051 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c052 => {
      Applies := fun key rank mask =>
        key = generatedKey .c052 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c053 => {
      Applies := fun key rank mask =>
        key = generatedKey .c053 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c054 => {
      Applies := fun key rank mask =>
        key = generatedKey .c054 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c055 => {
      Applies := fun key rank mask =>
        key = generatedKey .c055 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c056 => {
      Applies := fun key rank mask =>
        key = generatedKey .c056 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c057 => {
      Applies := fun key rank mask =>
        key = generatedKey .c057 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c058 => {
      Applies := fun key rank mask =>
        key = generatedKey .c058 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c059 => {
      Applies := fun key rank mask =>
        key = generatedKey .c059 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c060 => {
      Applies := fun key rank mask =>
        key = generatedKey .c060 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c061 => {
      Applies := fun key rank mask =>
        key = generatedKey .c061 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c062 => {
      Applies := fun key rank mask =>
        key = generatedKey .c062 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c063 => {
      Applies := fun key rank mask =>
        key = generatedKey .c063 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c064 => {
      Applies := fun key rank mask =>
        key = generatedKey .c064 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c065 => {
      Applies := fun key rank mask =>
        key = generatedKey .c065 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c066 => {
      Applies := fun key rank mask =>
        key = generatedKey .c066 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c067 => {
      Applies := fun key rank mask =>
        key = generatedKey .c067 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c068 => {
      Applies := fun key rank mask =>
        key = generatedKey .c068 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c069 => {
      Applies := fun key rank mask =>
        key = generatedKey .c069 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c070 => {
      Applies := fun key rank mask =>
        key = generatedKey .c070 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c071 => {
      Applies := fun key rank mask =>
        key = generatedKey .c071 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c072 => {
      Applies := fun key rank mask =>
        key = generatedKey .c072 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c073 => {
      Applies := fun key rank mask =>
        key = generatedKey .c073 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c074 => {
      Applies := fun key rank mask =>
        key = generatedKey .c074 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c075 => {
      Applies := fun key rank mask =>
        key = generatedKey .c075 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c076 => {
      Applies := fun key rank mask =>
        key = generatedKey .c076 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c077 => {
      Applies := fun key rank mask =>
        key = generatedKey .c077 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c078 => {
      Applies := fun key rank mask =>
        key = generatedKey .c078 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c079 => {
      Applies := fun key rank mask =>
        key = generatedKey .c079 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c080 => {
      Applies := fun key rank mask =>
        key = generatedKey .c080 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c081 => {
      Applies := fun key rank mask =>
        key = generatedKey .c081 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c082 => {
      Applies := fun key rank mask =>
        key = generatedKey .c082 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c083 => {
      Applies := fun key rank mask =>
        key = generatedKey .c083 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c084 => {
      Applies := fun key rank mask =>
        key = generatedKey .c084 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c085 => {
      Applies := fun key rank mask =>
        key = generatedKey .c085 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c086 => {
      Applies := fun key rank mask =>
        key = generatedKey .c086 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c087 => {
      Applies := fun key rank mask =>
        key = generatedKey .c087 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c088 => {
      Applies := fun key rank mask =>
        key = generatedKey .c088 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c089 => {
      Applies := fun key rank mask =>
        key = generatedKey .c089 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c090 => {
      Applies := fun key rank mask =>
        key = generatedKey .c090 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c091 => {
      Applies := fun key rank mask =>
        key = generatedKey .c091 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c092 => {
      Applies := fun key rank mask =>
        key = generatedKey .c092 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c093 => {
      Applies := fun key rank mask =>
        key = generatedKey .c093 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c094 => {
      Applies := fun key rank mask =>
        key = generatedKey .c094 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c095 => {
      Applies := fun key rank mask =>
        key = generatedKey .c095 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c096 => {
      Applies := fun key rank mask =>
        key = generatedKey .c096 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c097 => {
      Applies := fun key rank mask =>
        key = generatedKey .c097 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c098 => {
      Applies := fun key rank mask =>
        key = generatedKey .c098 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c099 => {
      Applies := fun key rank mask =>
        key = generatedKey .c099 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c100 => {
      Applies := fun key rank mask =>
        key = generatedKey .c100 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c101 => {
      Applies := fun key rank mask =>
        key = generatedKey .c101 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c102 => {
      Applies := fun key rank mask =>
        key = generatedKey .c102 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c103 => {
      Applies := fun key rank mask =>
        key = generatedKey .c103 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c104 => {
      Applies := fun key rank mask =>
        key = generatedKey .c104 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c105 => {
      Applies := fun key rank mask =>
        key = generatedKey .c105 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c106 => {
      Applies := fun key rank mask =>
        key = generatedKey .c106 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c107 => {
      Applies := fun key rank mask =>
        key = generatedKey .c107 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c108 => {
      Applies := fun key rank mask =>
        key = generatedKey .c108 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c109 => {
      Applies := fun key rank mask =>
        key = generatedKey .c109 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c110 => {
      Applies := fun key rank mask =>
        key = generatedKey .c110 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c111 => {
      Applies := fun key rank mask =>
        key = generatedKey .c111 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c112 => {
      Applies := fun key rank mask =>
        key = generatedKey .c112 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c113 => {
      Applies := fun key rank mask =>
        key = generatedKey .c113 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c114 => {
      Applies := fun key rank mask =>
        key = generatedKey .c114 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c115 => {
      Applies := fun key rank mask =>
        key = generatedKey .c115 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c116 => {
      Applies := fun key rank mask =>
        key = generatedKey .c116 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c117 => {
      Applies := fun key rank mask =>
        key = generatedKey .c117 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c118 => {
      Applies := fun key rank mask =>
        key = generatedKey .c118 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c119 => {
      Applies := fun key rank mask =>
        key = generatedKey .c119 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c120 => {
      Applies := fun key rank mask =>
        key = generatedKey .c120 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c121 => {
      Applies := fun key rank mask =>
        key = generatedKey .c121 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c122 => {
      Applies := fun key rank mask =>
        key = generatedKey .c122 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c123 => {
      Applies := fun key rank mask =>
        key = generatedKey .c123 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c124 => {
      Applies := fun key rank mask =>
        key = generatedKey .c124 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c125 => {
      Applies := fun key rank mask =>
        key = generatedKey .c125 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c126 => {
      Applies := fun key rank mask =>
        key = generatedKey .c126 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c127 => {
      Applies := fun key rank mask =>
        key = generatedKey .c127 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c128 => {
      Applies := fun key rank mask =>
        key = generatedKey .c128 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c129 => {
      Applies := fun key rank mask =>
        key = generatedKey .c129 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c130 => {
      Applies := fun key rank mask =>
        key = generatedKey .c130 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c131 => {
      Applies := fun key rank mask =>
        key = generatedKey .c131 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c132 => {
      Applies := fun key rank mask =>
        key = generatedKey .c132 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c133 => {
      Applies := fun key rank mask =>
        key = generatedKey .c133 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c134 => {
      Applies := fun key rank mask =>
        key = generatedKey .c134 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c135 => {
      Applies := fun key rank mask =>
        key = generatedKey .c135 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c136 => {
      Applies := fun key rank mask =>
        key = generatedKey .c136 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c137 => {
      Applies := fun key rank mask =>
        key = generatedKey .c137 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c138 => {
      Applies := fun key rank mask =>
        key = generatedKey .c138 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c139 => {
      Applies := fun key rank mask =>
        key = generatedKey .c139 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c140 => {
      Applies := fun key rank mask =>
        key = generatedKey .c140 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c141 => {
      Applies := fun key rank mask =>
        key = generatedKey .c141 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c142 => {
      Applies := fun key rank mask =>
        key = generatedKey .c142 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c143 => {
      Applies := fun key rank mask =>
        key = generatedKey .c143 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c144 => {
      Applies := fun key rank mask =>
        key = generatedKey .c144 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c145 => {
      Applies := fun key rank mask =>
        key = generatedKey .c145 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c146 => {
      Applies := fun key rank mask =>
        key = generatedKey .c146 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c147 => {
      Applies := fun key rank mask =>
        key = generatedKey .c147 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c148 => {
      Applies := fun key rank mask =>
        key = generatedKey .c148 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c149 => {
      Applies := fun key rank mask =>
        key = generatedKey .c149 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c150 => {
      Applies := fun key rank mask =>
        key = generatedKey .c150 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c151 => {
      Applies := fun key rank mask =>
        key = generatedKey .c151 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c152 => {
      Applies := fun key rank mask =>
        key = generatedKey .c152 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c153 => {
      Applies := fun key rank mask =>
        key = generatedKey .c153 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c154 => {
      Applies := fun key rank mask =>
        key = generatedKey .c154 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c155 => {
      Applies := fun key rank mask =>
        key = generatedKey .c155 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c156 => {
      Applies := fun key rank mask =>
        key = generatedKey .c156 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c157 => {
      Applies := fun key rank mask =>
        key = generatedKey .c157 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c158 => {
      Applies := fun key rank mask =>
        key = generatedKey .c158 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c159 => {
      Applies := fun key rank mask =>
        key = generatedKey .c159 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c160 => {
      Applies := fun key rank mask =>
        key = generatedKey .c160 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c161 => {
      Applies := fun key rank mask =>
        key = generatedKey .c161 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c162 => {
      Applies := fun key rank mask =>
        key = generatedKey .c162 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c163 => {
      Applies := fun key rank mask =>
        key = generatedKey .c163 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c164 => {
      Applies := fun key rank mask =>
        key = generatedKey .c164 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c165 => {
      Applies := fun key rank mask =>
        key = generatedKey .c165 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c166 => {
      Applies := fun key rank mask =>
        key = generatedKey .c166 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c167 => {
      Applies := fun key rank mask =>
        key = generatedKey .c167 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c168 => {
      Applies := fun key rank mask =>
        key = generatedKey .c168 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c169 => {
      Applies := fun key rank mask =>
        key = generatedKey .c169 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c170 => {
      Applies := fun key rank mask =>
        key = generatedKey .c170 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c171 => {
      Applies := fun key rank mask =>
        key = generatedKey .c171 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c172 => {
      Applies := fun key rank mask =>
        key = generatedKey .c172 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c173 => {
      Applies := fun key rank mask =>
        key = generatedKey .c173 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c174 => {
      Applies := fun key rank mask =>
        key = generatedKey .c174 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c175 => {
      Applies := fun key rank mask =>
        key = generatedKey .c175 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c176 => {
      Applies := fun key rank mask =>
        key = generatedKey .c176 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c177 => {
      Applies := fun key rank mask =>
        key = generatedKey .c177 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c178 => {
      Applies := fun key rank mask =>
        key = generatedKey .c178 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c179 => {
      Applies := fun key rank mask =>
        key = generatedKey .c179 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c180 => {
      Applies := fun key rank mask =>
        key = generatedKey .c180 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c181 => {
      Applies := fun key rank mask =>
        key = generatedKey .c181 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c182 => {
      Applies := fun key rank mask =>
        key = generatedKey .c182 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c183 => {
      Applies := fun key rank mask =>
        key = generatedKey .c183 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c184 => {
      Applies := fun key rank mask =>
        key = generatedKey .c184 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c185 => {
      Applies := fun key rank mask =>
        key = generatedKey .c185 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c186 => {
      Applies := fun key rank mask =>
        key = generatedKey .c186 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c187 => {
      Applies := fun key rank mask =>
        key = generatedKey .c187 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c188 => {
      Applies := fun key rank mask =>
        key = generatedKey .c188 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c189 => {
      Applies := fun key rank mask =>
        key = generatedKey .c189 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c190 => {
      Applies := fun key rank mask =>
        key = generatedKey .c190 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c191 => {
      Applies := fun key rank mask =>
        key = generatedKey .c191 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c192 => {
      Applies := fun key rank mask =>
        key = generatedKey .c192 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c193 => {
      Applies := fun key rank mask =>
        key = generatedKey .c193 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }
  | .c194 => {
      Applies := fun key rank mask =>
        key = generatedKey .c194 /\
          key.template.Rows key.support rank mask
      rowFacts := by
        intro key rank mask h
        exact SourceIndexStateRowFacts.of_rows h.2 }


private def generatedCandidateDomain
    (candidate : GeneratedCandidate) : TemplateLanguageDomain :=
  fun rank mask =>
    (generatedSpec candidate).Predicate rank mask /\
      (generatedRowProducer candidate).Applies
        (generatedKey candidate) rank mask

private theorem generatedCandidateDomainMemberBridge
    (candidate : GeneratedCandidate) :
    TemplateLanguageMemberBridgeOnDomain
      (generatedCandidateDomain candidate) := by
  intro rank mask hlt hmem hM hgood
  have hfirst :
      (generatedKey candidate).firstIndex =
        (generatedSpec candidate).first.index := by
    cases candidate <;> rfl
  have hsecond :
      (generatedKey candidate).secondIndex =
        (generatedSpec candidate).second.index := by
    cases candidate <;> rfl
  have hsupport :
      (generatedKey candidate).support =
        (generatedSpec candidate).support := by
    cases candidate <;> rfl
  have hsource :
      SourceIndexStateSourceFacts
        (generatedKey candidate) rank mask :=
    (generatedSpec candidate).sourceFacts
      hfirst hsecond hsupport hmem.1
  have hrows :
      SourceIndexStateRowFacts
        (generatedKey candidate) rank mask :=
    (generatedRowProducer candidate).rowFacts hmem.2
  exact TemplateLanguageMember.of_sourceIndexState_source_row hsource hrows

private def generatedUnionTemplateDomain : TemplateLanguageDomain :=
  fun rank mask =>
    exists candidate : GeneratedCandidate,
      generatedCandidateDomain candidate rank mask

private theorem generatedUnionTemplateDomainMemberBridge :
    TemplateLanguageMemberBridgeOnDomain
      generatedUnionTemplateDomain := by
  intro rank mask hlt hmem hM hgood
  rcases hmem with ⟨candidate, hcandidate⟩
  exact generatedCandidateDomainMemberBridge candidate hlt hcandidate hM hgood

/--
Union-domain smoke over the first bounded profile range `0..5000`.

Selection summary: `selection=all-candidates candidate_count=195`.

Candidate domains:
- `c000`: `ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac`, cases `1316`
- `c001`: `e122fdae7b6cf3e4661bae8897bba294cb9acf17b3cff26996c3567dcaa54568`, cases `547`
- `c002`: `196ef355e130da5d1edd2529a31a15029688e0bba063d7894534bc7256ac484e`, cases `497`
- `c003`: `c17ae884e7cf2fc8dbdede249f6a8af7a2ebaa4bf1838348f135d5ca40146a40`, cases `339`
- `c004`: `6ebb3e2cb5e1c7892b77aa67399310a78090138f1a986c949153351136d28ded`, cases `283`
- `c005`: `a5167846555be435bc1382c392c7134cfc350a0cd170006ddc74c176e5e81f68`, cases `271`
- `c006`: `cc6a7a0d1b815acdfe15378f058a6083929251b2bee19446f9bce4562b4347d1`, cases `185`
- `c007`: `56e7d27d308d8a0dda2c573a668290ba0c4bbba86804ecfdf80e2c5baa7b15fc`, cases `128`
- `c008`: `60df39036b07d6303a57740ada3bea752f4270c9c54ea3a6df9bf3fe6dbb1295`, cases `123`
- `c009`: `ff7045f242cc78a613a2c582dcc29298f8b0f71e5f67969c94c6e1d30f8e7dc2`, cases `110`
- `c010`: `6f7e27670b3b452c12aee1c30d540652d376cc06a0fda8ecece85f865e8b518e`, cases `107`
- `c011`: `f3f0bfb86a4e0f5853ed38ddab73c13252fd297c57dc538be9a3fcf831924f63`, cases `105`
- `c012`: `4b9d96d356fb8fdd07273237d34830adeca6ed55cb1a1af6646832e02d23a86e`, cases `99`
- `c013`: `da3aaad2d275ab461a1534b8153394b1d6e09297bd6d321d341701939ce0f602`, cases `93`
- `c014`: `30101f6dd9e8be38738ef010f7dee32e3e1c170356718aa49c99fcb9a871e38c`, cases `92`
- `c015`: `84b95a4df981db1318e5753c7ee2d4e1662006f90480420b48fdc57f34056dda`, cases `92`
- `c016`: `660d810ea640db50b3fdeff98bf54a04ba52d9f08947b25179ce7fc1fa6cb546`, cases `91`
- `c017`: `347652b83d2447dadfb0840bff9f0f3c38935a0cbb858d933d5bad7154478848`, cases `86`
- `c018`: `2486ba1854a0e7f9109e654332d31b7e863bb549a91cc24b7255db0a670ccfd7`, cases `83`
- `c019`: `ce27a48d56d26f3187d51f3f91c860bc8962c6e1921a64107832d1e28c09bca2`, cases `78`
- `c020`: `cf9962e55a9e720734cce334c9ee24ea4057e05bbe3dcbf91e1eb8ec04227193`, cases `77`
- `c021`: `80ededb7a93030d8e451da53d329282f00aaae96771dd601441bfcb7f493a521`, cases `71`
- `c022`: `975697e2590729f2383df71679b29def3cf45d1023621e6aa429222b5445b28b`, cases `71`
- `c023`: `2ca5a640e7bdbe20db2afd90c69ab1c156a409688a9d63361182b768e64cdcd8`, cases `66`
- `c024`: `0eee4299a8e08c1343ba3d8afe785ebca0582a547ce7e1b265f8f6bef26ef729`, cases `64`
- `c025`: `d0463464045bcef7789bbcba2debc1a5d639c5971d24975cb91bfadb6001c33e`, cases `61`
- `c026`: `df498b0adbe30465a7df8b7414b4612965ffa10faefa6a2bc52727fabf971f6d`, cases `59`
- `c027`: `f606a03cdf23d2cf0864f591d6e78a13f5b5417ff110adf2367a88e19d8b1a9c`, cases `56`
- `c028`: `03e232a8aba9a89ba6c508e12b3396c2ef41049cc9611e61f36b53570b697623`, cases `52`
- `c029`: `d67508ec688c7fb39e7f36e05f6c5c9854e04b653e8ea876583166dd05e2952b`, cases `52`
- `c030`: `8a4787ef4987b977a9b9011236ae2fec4d8c9b09be7bb391c14f95a724681f5f`, cases `49`
- `c031`: `077d94cb4e03d0b35225eec960d3d57adf4baed04982313840be3ee6c6bb7821`, cases `48`
- `c032`: `ab8c66a8a4368db478a9c0a1585613e1294e7a1dd64095b1daf05e55cbd60530`, cases `48`
- `c033`: `d046d8dc2716b9d167b3ab367f02e6f225dcfcc049adf22c44e94cd6053adcf0`, cases `48`
- `c034`: `e3d40847b9a9d0736476d468eef787c9b0c9a8d6edff9df82b0f579232732a48`, cases `48`
- `c035`: `8fd6e1defc26638951bc8bafab4087de239c77e6f4ae46f6988ee248291984f4`, cases `47`
- `c036`: `ef690b20275871418eaee6d4fd9b6a2c4ce2d6d6dd6675beb3cc1f594b653eaa`, cases `47`
- `c037`: `ece83320493b96e698f2c3c863aebbbb0710fc908c639b61f060f2d5cf1a6e51`, cases `45`
- `c038`: `6967b55102537fd57b4794517c832a8d888f640d7639d45485b982e2329f62d8`, cases `39`
- `c039`: `8644eecae24bfeaf41d684c43e55d7fe1ee6e27bdfa92bdf2d29d4120a76167d`, cases `38`
- `c040`: `94820b46b2ac11a0714e9c555904b3e67b30707f4823e1e6b4ebece323d5e086`, cases `38`
- `c041`: `d35fa036268a25a6b023c024653378667af8e277bbd80109f3794329e24ab2c4`, cases `38`
- `c042`: `60a2c714f0e6a4e3d2cec09e32bfd3736da53f58e1e170b33123e72b0c1cea98`, cases `37`
- `c043`: `55eae0d5ae203240fc7ab60e0664aaf2a0dc2558fdbf5d35e844cea2a9a37aaf`, cases `34`
- `c044`: `b5d3c4f3604764f8b140c0bd30b646d65a8eccce5c5dd7e9816a1546f90e8bd2`, cases `33`
- `c045`: `5e5c0130d5b98662961778aceff46c6ca9d895d69a01188a133b29e720438566`, cases `31`
- `c046`: `0368db52356757ec0b17547e5da4f03913a38726f4b519fb6eccfa4939cc96c3`, cases `30`
- `c047`: `2c91fe54b77bd1029a9147c583442ce3faa9315b34c562bf2dc5bd4ad166590b`, cases `28`
- `c048`: `35dd2f7a40c0e62fe928cd23d830f20122ebbd3766e801a66a92cad634e65310`, cases `27`
- `c049`: `c5ac34ebc5afde2ec17ec0f90651bf7554d61419c8a789e4c1bd294ab664ecfc`, cases `27`
- `c050`: `f1efc14a9a4c206cf44f27ae6456a8712b493d2018c5cb545d545e832a651c14`, cases `26`
- `c051`: `ece69480c83e204a9dc687f82195b7b4b07d6632a94d6a9156dd7d6f26b4722b`, cases `25`
- `c052`: `476e65bb796599c6e906f78762761ccb558bf1dd214885194e0def1bf9299ff9`, cases `24`
- `c053`: `4b373091ce4334bb0dd17d0560ff33278e86a0ff054edd7465fd705024516384`, cases `24`
- `c054`: `c5d8a0a887f9458304460a8eb6f91bc8e293c898cc2488517104ad39457ad12e`, cases `24`
- `c055`: `16d92b0fae93df9e94cad3fc3bd37e4c5fcfbd70f394cd32bbc3fd1e0a34adf9`, cases `23`
- `c056`: `52ca8d97749aebaf0bdcf46ca8d83646d51a93193844e7b11dcce6fdaa419831`, cases `23`
- `c057`: `ae35ce47550c1a64ed8e6ee9661b6eec254f77e1d6f3aa8843e031e50c845c07`, cases `23`
- `c058`: `87f7d13bbf7ad58999f6b7e21003be92704b5a5025643786ddd2e248c66c63da`, cases `22`
- `c059`: `bc02c57ff085c135a5004daafe890fb829d68d2dfd03e54de5cc55fd973bd4fe`, cases `22`
- `c060`: `8820f3f8f64c0b0443a3ea0be36bd229e625e7090731a6c1abf2bab27d1e07a3`, cases `21`
- `c061`: `ac92b6b8fd7f472110de30bddecd3b143706f725a062b61266effee7f19252f2`, cases `21`
- `c062`: `dd2875dae829e109f43be24b5de1602209e416dd46fe6fc59f0cff3b5323f332`, cases `21`
- `c063`: `f01869a5e93096b978dd3ec4b88423e2a2ce2d71b1e8c937cf41548815f56d2b`, cases `21`
- `c064`: `6490d6d1e3ea0f58a55df654a509d9a22b5b46e4e413e4f5daab2efd1517db4c`, cases `19`
- `c065`: `faceec86f481e47a529a5e52fcda92fa200769fc3fa6c6e07e229e78c146dc7c`, cases `18`
- `c066`: `85c2f677b82c48b079840c9eed55d8ac13e69d8e75ab16416f757c19e370795f`, cases `17`
- `c067`: `e7bc1874ff442f0585c70f2e84ee475a877eaf50cc8d4086a3bd573b7fb29cd8`, cases `17`
- `c068`: `9ae9965968db60f578bf7b17baa6118f2f214eef26c7b6fb0836aeffd25e3cb2`, cases `16`
- `c069`: `9dbe22381768fd3df65f50f75aec2ef513be651b48b53a75ccaec9db25f2926a`, cases `16`
- `c070`: `14c37606685774b4cb52dfbdc6e770ed2a3ef08d759d48830265c0385880d7d2`, cases `15`
- `c071`: `8543708dd4f8be04537633818d3598f5a3b3133d63b9a34e45d8a335867c815c`, cases `15`
- `c072`: `d26378841a263c9002d011c7b9f152a9a32b5ac2b905e9c84e5a97bcaef4f0b3`, cases `15`
- `c073`: `557f4ea663b296b3401385546e6bb6f66c0e21b195d03b0a9ba568c8b621901a`, cases `14`
- `c074`: `894c5735efdada59e0e320b122364c1823cb9dd1853918bd20f2d4b0a496d207`, cases `14`
- `c075`: `b8148c3fd362172c3e7d5bdda3cd5011ba43f01d7feef17a2f16cd03cd6e06e7`, cases `14`
- `c076`: `bb2b433a80d043c34d5cb80315afe8a6c5349ad6e693d4a671ea15504ce2549f`, cases `14`
- `c077`: `36537ec08283d89c66334e8d01e36a8f88a087e9fd749d53b1d4d1653a0eba63`, cases `13`
- `c078`: `cd7f6d0afc488b51a4b4fb2826eb36e36ed232b1425b303ca08aeae644cfdda1`, cases `13`
- `c079`: `ee81261f0507485da05bd1bf8e8f4c262e0b36cda377a7f286cb13058bbff267`, cases `13`
- `c080`: `0c625db02ab38a75b67c091fc92940b7a1a9d45d34b777cc20b9e810a578f912`, cases `12`
- `c081`: `45cc96440e581d92a984d864c8b68ded693d3132e1a498ea7e71a55b02b3d1cf`, cases `12`
- `c082`: `4b542a4a3f14a16180f0d743e424b2c09aa3fbbbb02aa788fc88d55e3b699f4b`, cases `12`
- `c083`: `75356f5fcc7f7368aa8381037de4a5486cf05f5a92d7a25cc391b9244f43eee4`, cases `11`
- `c084`: `856b794dfa83c2b6b33e4ab2f39cc8e8d23958534ca12d305f3b13914f492220`, cases `11`
- `c085`: `24eab453f300d2e3e12d93b2352695f04d7f0b30b1fbf03b5b2eb9395d2f163c`, cases `10`
- `c086`: `ea2539f6bce58000b2f8ea7649f3b8ebe3f1652168bce6c9df9e6c358d70953e`, cases `10`
- `c087`: `f11ae72737c7e7f0ccd2189d71bf958a371eba14cfcf83f2d78e9d0e709ed777`, cases `10`
- `c088`: `4b4820634182c0153b6c235b9e71ff7dde79181e26fd4ae85aa4c0c323e06659`, cases `9`
- `c089`: `9dc4e8e0014c58c6ed705c1c64fa07ece3c654ea8f81cd97084785fe4a0fb94c`, cases `9`
- `c090`: `ae76cdb7409608f0c960b20b747c307640b55ff22e04858462adf4d8c8cea9e7`, cases `9`
- `c091`: `d76e94ce8a7b2eb0065ba57612f1d5de48255fb089a556ceb7428870bf2114f5`, cases `9`
- `c092`: `12de776a3b4baf59dbeb598e2eda54364bdbd3165ec277d6c03dfd8e5d9089cc`, cases `8`
- `c093`: `21213f9ce9520470982c26bcedddeea27cf95666e6bc841586a8ca1d135d820c`, cases `8`
- `c094`: `2ddb70a003d7b88234fa9589e14626cd5b83e2f14a1dddc6e1b5057fadf25dc4`, cases `8`
- `c095`: `50e9d2a177e9206472994958b96e8c1b80525725b1c23de529f243eabd0a84ee`, cases `8`
- `c096`: `1bba546ca8e3ff72ff41436a4f45531935aceba318d5cfab6e5925c69513eab3`, cases `7`
- `c097`: `66941844d9aa4de765c5e683d9af996bfcf99bb95ba1fe83cefe2349eda448c9`, cases `7`
- `c098`: `7f713624fe0e4212e5732b1642557f043b9efe806de268a80405c4e61e6ce918`, cases `7`
- `c099`: `dbf0a2d00428e41fb5bd22f0775ca2c529af3372341daa0900aacc83ab0393a9`, cases `7`
- `c100`: `e063ac0eab29d3e98116e5d0e86f45598b3a22288064f4ce94eb1bee7ae6ff30`, cases `7`
- `c101`: `0dd4afac48c4e8b144d5045538cb529552c54eee7b15d7a52d300e673ec7cf87`, cases `6`
- `c102`: `1965271687034b602b1b5fa3de24bf12d71c64ff178691104dc75bff58fdcd03`, cases `6`
- `c103`: `22e18fa8d4ed973222470d3c4a468b304c72109cf45f37002384aaa70e9a52d7`, cases `6`
- `c104`: `3c2a3b8e9ec18bb04612f4221986187956d7df33b451416d438610251fce5048`, cases `6`
- `c105`: `3e6f279a7442625d0778d9331861878e9b39552d77e9442be72827f660096e18`, cases `6`
- `c106`: `3fc3343147f7c1998b8def78d521c7bb19640a6ceea0db8f8d27e31ee5ca6627`, cases `6`
- `c107`: `b52b5cc6e7f7715fb36b1f336f6eaae6720968cac52158ed2c6f37aebe042ce8`, cases `6`
- `c108`: `2a61a0abe62d25ccb3632fe91b2f90d0b3e06254bec466ac0f15aece83606fa9`, cases `5`
- `c109`: `71383c0d09dee671e77249c0254e867717e418dd3bcef5d74b0aac7ba0f31094`, cases `5`
- `c110`: `b3e27c4a47a162d201ae843e776f8a3588d67fcf2a597ec08be23c4495853fb8`, cases `5`
- `c111`: `e2f3e84ec6e12320c480ac2a357769bd0e8f121eccf35fc9c6ef9fc513b029a8`, cases `5`
- `c112`: `017237b20938f4e6e633cbb39f34440e83ded073435eceedb939ee60a4f247e1`, cases `4`
- `c113`: `03d114f04211dcfe1af75b7162dbcdd87204bc373dbc6cfc95273f4b78740388`, cases `4`
- `c114`: `248ee18d5717eb1f2ed420dace84d2246b6f6b00e028737266c7a9d0adb64ad7`, cases `4`
- `c115`: `4a0297d0946b794ae674777f3d4e3367dc40798b5b488735cfdb385f089d4dd1`, cases `4`
- `c116`: `4fe8e446610194e1d753d6c5e15f4b1acb6e544cb2559371f50735fe9ac09236`, cases `4`
- `c117`: `662d9a7f3ea77b576fb54ba4a9f528f3f7df9f5449db40ea9fa3fb95a9239390`, cases `4`
- `c118`: `7af45bf917ba29753de1672958cf1a75aabd86f0a98a01e93e165587f2628526`, cases `4`
- `c119`: `a05fb17c81d3894fe4be57fe19181df2bdd7ab9945aae9afb53885642bd2cc1a`, cases `4`
- `c120`: `bdca54a7e0376b241fb0c027adf84b41c275e75f8dc3e8340fff69a6ac866d9e`, cases `4`
- `c121`: `c0598b3592faed645db41c3e5a7ea93cc09e92cc5a2d6000942a768c4780c819`, cases `4`
- `c122`: `d34ce8a303cb9dd41678331a5ba5460018c9bcff0b7c617454693cef877f162f`, cases `4`
- `c123`: `229feac06035d24d5a351619ff4e0aca62fe31368969d1c7db8de2715c5a2562`, cases `3`
- `c124`: `2af20c32eb0f20600fd8bf58aaf93a2de0f766ed042111ff8a428225a3d7f006`, cases `3`
- `c125`: `3912f9b5c8198099f12fdb8f1bb7998b37e61eeef90e076b366fe3e27999c2d5`, cases `3`
- `c126`: `5abe07f56b0518e2911c05ce41b73df2d58c1a9810b49386da9278b8a6792306`, cases `3`
- `c127`: `6383074b92b423ba7542201e78a6ecb67b1752c88837860d57380f2a3632016b`, cases `3`
- `c128`: `833e65bea27a37ac68257a74017869de0f8f9251a6e80ca7fc6cc8f59cefe0ce`, cases `3`
- `c129`: `9807c6662e15b29117459458f0c16177a78013c423b6456de42ff4de4bbaf976`, cases `3`
- `c130`: `ac992d153b7e6bfd9f8f5df5cc01482a1b4675ae559b2f3b7cd437ed3f1d8cde`, cases `3`
- `c131`: `bfbc1aaa5da955d8a0e9212c49d351714be8148fb1f757d805164233dd7da667`, cases `3`
- `c132`: `c855ea3b21efd013d5425304ee81d03a46db34257c18fa61a1b76a0c5ed71d0c`, cases `3`
- `c133`: `e536e24633973869ae32f92819729757744e75c5e58d1702173344cc48802895`, cases `3`
- `c134`: `f222bd7408ad3cb505daa2c57bb18f828486d1efe79facfaf6e9e49133516c57`, cases `3`
- `c135`: `f62b9f6890fe1724a477d6fcc629297fbc902a266063617ec53c2b980c7572bf`, cases `3`
- `c136`: `126b00479ed5d07ecc4e10cf336a0f79e44e09f6c2047c19bf24d2baf8b49794`, cases `2`
- `c137`: `18f147942e55defb27275ff4d05235aadb3a0eda6ebd9e9d911ee0e6e0e64578`, cases `2`
- `c138`: `1936e998662c29215bf526eb9ac1bbce73dbf0bcc29bc14d6e2bdcabf4605f7b`, cases `2`
- `c139`: `19468044fac77ccd0533257f0ea1518cd0b29ca2ca3cd2d5f27c08fca2cbbe1b`, cases `2`
- `c140`: `289c2d31707e5679136d30ed876d2805196b92f50314e1f9ec792c3167496198`, cases `2`
- `c141`: `38f861081b50e156af5fc02d09e93ab4ed21824d8b403c63f6c0b7a12aa69e89`, cases `2`
- `c142`: `3d1b0da0a932a340ebf2e211c1038ace37548a5ed00db0fd3f4fa0f2320fbfa2`, cases `2`
- `c143`: `75444ebdf518871a7a3a9ec0d20d01008372ff1d2f4589d08b7fb94b0551fccf`, cases `2`
- `c144`: `804a865c005965ed4de0de918627ae7f26af19173d7455c35ea79fd3302f2286`, cases `2`
- `c145`: `8a4ef8031f9f6a46db0e5d02e9fbe749c011c1e933d0171ba49461a191e9c5a4`, cases `2`
- `c146`: `9026de42cebb44d0c967ceec77fd4d8763fdcd57952894da17037696ed974bf7`, cases `2`
- `c147`: `c8fc68a3c26c9d3d15e8f324d608223b80d16c3b8358017b8aee37157323eb6f`, cases `2`
- `c148`: `d3a72aaa8f4cf996d6934ef0921451788aa870e5c819c791c74c80308c0c9772`, cases `2`
- `c149`: `d7fd733d097d07750a72a3dd94bcc8d74770c6890791a02ff769b5aaf0faea1f`, cases `2`
- `c150`: `d81ac04ce37fd2feb7cac9efa452ed66881866ca8f4e5dc6a97ac313039c0bd0`, cases `2`
- `c151`: `d95d7468740418e13c66eea42fc63a83b3e090bdc5216da501a26f6ae6bcdc3e`, cases `2`
- `c152`: `d97c12c18919ac1e0b68cefad089a6649ed1d8ae8aa3d530462823d6f489c4f3`, cases `2`
- `c153`: `e6b81f98c99c07bb60eef9a638c8fd5d72cd6225984289fd74bc4b9a001a0b99`, cases `2`
- `c154`: `f1461e82f00320cdb3ccebd992fa517f5851a01012c8679223592ae1ff78208c`, cases `2`
- `c155`: `f475a12f0d852c0dc108abbcbf60a9513fb025d80ddbb7678275833d2d3cb606`, cases `2`
- `c156`: `02de8befdfa95611e5718682b63dd6b713266750263009139f38a5d93809fa63`, cases `1`
- `c157`: `0e6f0b6cbc82cea64043b371b9737f70e81d28c726dc9f697468aac00694783b`, cases `1`
- `c158`: `13cb5b47b909385ae536eb62bec8eb087292c5fe4161bf9f28df2efc4b8b450d`, cases `1`
- `c159`: `237b263501d884c7d662e50cc924ff54cfd469b984f4d146af6a5ec87fd0752d`, cases `1`
- `c160`: `25f9b71629cc82903e4d1baae9d4dde9174f2cabcd0fe726cdb4f46307631447`, cases `1`
- `c161`: `2e648c4616e87fb979865cb50352bed760a3e910c7b0af2dfd02eda19faafcb0`, cases `1`
- `c162`: `2f774e3271fc24d13172a79080cd73c2b286f76eca09dd4ba30d677818e0556e`, cases `1`
- `c163`: `2fecfd1e408768e166c233ad249cb44da7140b35729bca8ea3f92e53f611f3e8`, cases `1`
- `c164`: `38de8d6e54e94c3276a03b4c65a56842538df22ead12bd3d7a552cafe49bb5b8`, cases `1`
- `c165`: `40d830926f29822979aee6684e2cfdfc973115911a61de4c4be85182171f08cb`, cases `1`
- `c166`: `4739f4230f3f4c5a3c8b09f0d3bf1de2868d7973f43e2b8d578f8824cb77720d`, cases `1`
- `c167`: `4819a206933ebf9f71480510a1a622e471b831c43e64537e749dd7f761aab664`, cases `1`
- `c168`: `4a95a562247247a0fefa01e0ff4561f17234e6005f406e49758d8d6f86d600f1`, cases `1`
- `c169`: `4eb5eeb7e1e5dc90498098d415a5c9a1b64bff859834a2f10bd279248dd1204e`, cases `1`
- `c170`: `4eb7699f00510a8bf730790071341b2082908bf223c7c2b252fe3e3aba334e0f`, cases `1`
- `c171`: `62b1f243d697fcb2b141aecd67841094f6b5d65c207f4cf7a1be26d64f07f9bf`, cases `1`
- `c172`: `6645406c144ba99bb66568e8e3619e168ca1d259b6eda24cd46ddce35171ca67`, cases `1`
- `c173`: `6874a1bc349b363e1262f3f4c6c3ffe138e37f457459a06beb2a482b4d1a708c`, cases `1`
- `c174`: `6a05f682259cf75dda95707b2536a393a6203bcceeb7fa309b108ec71bd29743`, cases `1`
- `c175`: `74159ef1a4c88941c2e896412e2f76122a3382f204ef408240b6023faadcd221`, cases `1`
- `c176`: `82615cd6e4bc9b043683dcd0429f07951a2401a1c251a43ee4db13b3933bbf16`, cases `1`
- `c177`: `8476e92a4b369aef77fd04de59351e9477a183f43d6de84b890da8b2695a3391`, cases `1`
- `c178`: `893d3aa3ae6b72ce42a2f7c6708fdf0b583b13ce57142cb6e7440c9361af286b`, cases `1`
- `c179`: `9169d0e2cb17d5ee3486a63d7210eb621f92750d32af82eba9f9f4ab909b1176`, cases `1`
- `c180`: `9355f12628d9f293d22880174726897612809d7050aea43a9bdda3e72e7ba7da`, cases `1`
- `c181`: `9ae7a7f742a3ed892dd012a02e94ea62ec2313998417f7fd18fd0642ea721bd8`, cases `1`
- `c182`: `b7d38cd369f20850796669195b27be68a2470496a94f0f8d8b99a47004c4d132`, cases `1`
- `c183`: `bccd947ec15554f1ce024b320dacdeafe39ab7bd9d45797ef1056a7adeb6730c`, cases `1`
- `c184`: `c365de3815693757bd50954e11e2d9cc02736f52b908a219bdbfe7e03347d672`, cases `1`
- `c185`: `cb507d8d8c7f6452f31bf5a1d235855b241cec299367ff494df1e6a4c27202bf`, cases `1`
- `c186`: `d184d4863c2c0346b1b2558a7ec081bbe949a24b3302d59cbd265b3bdb60f8cc`, cases `1`
- `c187`: `d1b2ce640872515c24c7289f815c5b9a60d5a47bba77e79e7f5322c1dcad0687`, cases `1`
- `c188`: `e03eaf4245e7849a021db282f619274d7bc5bf5b959787178f7a228047e48371`, cases `1`
- `c189`: `ecd69c3f7ed6910661884de55c65d169c733ed53d5de9a6e24889029b02425ab`, cases `1`
- `c190`: `ed69ac5fe1fd509eedaf794a8d65b30a4f27bf68c9343b1d814adfb3067fd350`, cases `1`
- `c191`: `fc3adbe1ad2bd44e67e0a713820ede58ad10036e4133e8aee047a5a6cdddd40e`, cases `1`
- `c192`: `fcb91b3d99d7c2f3a79a2eab12603f8347091afae218b4be10007e56384f561d`, cases `1`
- `c193`: `fd9db9cb07ffa3cc2fc0539f5b6e5c2bd7754c2b51f55dedaba24f78daaf99b6`, cases `1`
- `c194`: `fe38559923a67209b5d2134521dcb566dc3916cc24b5294f4d32d4ebcc28101f`, cases `1`

The `hcover` premise is intentionally the remaining production obligation:
future generated state/signature coverage must route every identity-linear
GoodDirection case into one of these reusable domains or another compressed
domain family.
-/
theorem generatedUnionTemplateDomainCovers
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageDomainCoversIdentityRange
      generatedUnionTemplateDomain 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  exact hcover hlt hlo hhi hM hgood

theorem generatedUnionTemplateMemberBridgeViaDomain
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageMemberBridgeOnRange 0 5000 :=
  TemplateLanguageMemberBridgeOnDomain.to_range
    (generatedUnionTemplateDomainCovers hcover)
    generatedUnionTemplateDomainMemberBridge

theorem generatedUnionTemplateCoverageViaDomain
    (hcover :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                generatedUnionTemplateDomain rank mask) :
    TemplateLanguageCoverageOnIdentityRange 0 5000 :=
  TemplateLanguageMemberBridgeOnRange.to_coverage
    (generatedUnionTemplateMemberBridgeViaDomain hcover)

theorem generatedTemplateDomainUnionSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorTemplateDomainUnionSmoke
