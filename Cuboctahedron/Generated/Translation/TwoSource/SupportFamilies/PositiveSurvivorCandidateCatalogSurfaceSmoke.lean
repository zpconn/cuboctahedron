import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated AP16DU.9F positive-survivor candidate-catalog facts adapter.

This file is diagnostic only.  It validates the multi-candidate catalog
classifier surface selected by AP16DT and erases it through the finite
source/row-facts catalog API.  The generated theorems still assume the
catalog-completeness premise; they do not prove final coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

set_option linter.unusedVariables false

/-- AP16DU selected candidate catalog: `125` shared candidate groups. -/
inductive GeneratedCandidate
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
deriving DecidableEq, Repr

private def generatedSpec : GeneratedCandidate -> SourcePairPositionSpec
  | .c000 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmm 5
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c001 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmmp 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c002 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpm 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c003 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c004 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c005 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c006 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c007 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c008 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c009 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c010 => {
      first := SourcePositionSpec.interior ⟨1, by decide⟩ Face.tmpp 8
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c011 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c012 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c013 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c014 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c015 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c016 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c017 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c018 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c019 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c020 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c021 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c022 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c023 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c024 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c025 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c026 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c027 => {
      first := SourcePositionSpec.xpStart ⟨0, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c028 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c029 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c030 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c031 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c032 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c033 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c034 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c035 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c036 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c037 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c038 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c039 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c040 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c041 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c042 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c043 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c044 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c045 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c046 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c047 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c048 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c049 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c050 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c051 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c052 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c053 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c054 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c055 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c056 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c057 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c058 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c059 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c060 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c061 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c062 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c063 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c064 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c065 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c066 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c067 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c068 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨10, by decide⟩ }
  | .c069 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c070 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c071 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c072 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c073 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c074 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c075 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c076 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c077 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c078 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c079 => {
      first := SourcePositionSpec.interior ⟨5, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c080 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tpmm 9
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c081 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c082 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c083 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c084 => {
      first := SourcePositionSpec.interior ⟨3, by decide⟩ Face.xp 0
      second := SourcePositionSpec.ordering ⟨1, by decide⟩ }
  | .c085 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c086 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c087 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c088 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨12, by decide⟩ }
  | .c089 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c090 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c091 => {
      first := SourcePositionSpec.interior ⟨13, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c092 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c093 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c094 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c095 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c096 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c097 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c098 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c099 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨6, by decide⟩ }
  | .c100 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c101 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c102 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c103 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c104 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c105 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c106 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c107 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨8, by decide⟩ }
  | .c108 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c109 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmpp 9
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c110 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c111 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c112 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c113 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c114 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c115 => {
      first := SourcePositionSpec.xpStart ⟨3, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c116 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tmpm 8
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c117 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c118 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c119 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c120 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨3, by decide⟩ }
  | .c121 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c122 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tppm 11
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c123 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.tpmp 10
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c124 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.tmmp 7
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }

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
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c003 => {
      firstIndex := (generatedSpec .c003).first.index
      secondIndex := (generatedSpec .c003).second.index
      support := (generatedSpec .c003).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
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
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c010 => {
      firstIndex := (generatedSpec .c010).first.index
      secondIndex := (generatedSpec .c010).second.index
      support := (generatedSpec .c010).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c011 => {
      firstIndex := (generatedSpec .c011).first.index
      secondIndex := (generatedSpec .c011).second.index
      support := (generatedSpec .c011).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c012 => {
      firstIndex := (generatedSpec .c012).first.index
      secondIndex := (generatedSpec .c012).second.index
      support := (generatedSpec .c012).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c013 => {
      firstIndex := (generatedSpec .c013).first.index
      secondIndex := (generatedSpec .c013).second.index
      support := (generatedSpec .c013).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c014 => {
      firstIndex := (generatedSpec .c014).first.index
      secondIndex := (generatedSpec .c014).second.index
      support := (generatedSpec .c014).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c015 => {
      firstIndex := (generatedSpec .c015).first.index
      secondIndex := (generatedSpec .c015).second.index
      support := (generatedSpec .c015).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c016 => {
      firstIndex := (generatedSpec .c016).first.index
      secondIndex := (generatedSpec .c016).second.index
      support := (generatedSpec .c016).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c017 => {
      firstIndex := (generatedSpec .c017).first.index
      secondIndex := (generatedSpec .c017).second.index
      support := (generatedSpec .c017).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c018 => {
      firstIndex := (generatedSpec .c018).first.index
      secondIndex := (generatedSpec .c018).second.index
      support := (generatedSpec .c018).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
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
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c024 => {
      firstIndex := (generatedSpec .c024).first.index
      secondIndex := (generatedSpec .c024).second.index
      support := (generatedSpec .c024).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c025 => {
      firstIndex := (generatedSpec .c025).first.index
      secondIndex := (generatedSpec .c025).second.index
      support := (generatedSpec .c025).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c026 => {
      firstIndex := (generatedSpec .c026).first.index
      secondIndex := (generatedSpec .c026).second.index
      support := (generatedSpec .c026).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c027 => {
      firstIndex := (generatedSpec .c027).first.index
      secondIndex := (generatedSpec .c027).second.index
      support := (generatedSpec .c027).support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .c028 => {
      firstIndex := (generatedSpec .c028).first.index
      secondIndex := (generatedSpec .c028).second.index
      support := (generatedSpec .c028).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c029 => {
      firstIndex := (generatedSpec .c029).first.index
      secondIndex := (generatedSpec .c029).second.index
      support := (generatedSpec .c029).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c030 => {
      firstIndex := (generatedSpec .c030).first.index
      secondIndex := (generatedSpec .c030).second.index
      support := (generatedSpec .c030).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c031 => {
      firstIndex := (generatedSpec .c031).first.index
      secondIndex := (generatedSpec .c031).second.index
      support := (generatedSpec .c031).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c032 => {
      firstIndex := (generatedSpec .c032).first.index
      secondIndex := (generatedSpec .c032).second.index
      support := (generatedSpec .c032).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
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
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c036 => {
      firstIndex := (generatedSpec .c036).first.index
      secondIndex := (generatedSpec .c036).second.index
      support := (generatedSpec .c036).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c037 => {
      firstIndex := (generatedSpec .c037).first.index
      secondIndex := (generatedSpec .c037).second.index
      support := (generatedSpec .c037).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c038 => {
      firstIndex := (generatedSpec .c038).first.index
      secondIndex := (generatedSpec .c038).second.index
      support := (generatedSpec .c038).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c039 => {
      firstIndex := (generatedSpec .c039).first.index
      secondIndex := (generatedSpec .c039).second.index
      support := (generatedSpec .c039).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c040 => {
      firstIndex := (generatedSpec .c040).first.index
      secondIndex := (generatedSpec .c040).second.index
      support := (generatedSpec .c040).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c041 => {
      firstIndex := (generatedSpec .c041).first.index
      secondIndex := (generatedSpec .c041).second.index
      support := (generatedSpec .c041).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c042 => {
      firstIndex := (generatedSpec .c042).first.index
      secondIndex := (generatedSpec .c042).second.index
      support := (generatedSpec .c042).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c043 => {
      firstIndex := (generatedSpec .c043).first.index
      secondIndex := (generatedSpec .c043).second.index
      support := (generatedSpec .c043).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c044 => {
      firstIndex := (generatedSpec .c044).first.index
      secondIndex := (generatedSpec .c044).second.index
      support := (generatedSpec .c044).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
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
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c048 => {
      firstIndex := (generatedSpec .c048).first.index
      secondIndex := (generatedSpec .c048).second.index
      support := (generatedSpec .c048).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c049 => {
      firstIndex := (generatedSpec .c049).first.index
      secondIndex := (generatedSpec .c049).second.index
      support := (generatedSpec .c049).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c050 => {
      firstIndex := (generatedSpec .c050).first.index
      secondIndex := (generatedSpec .c050).second.index
      support := (generatedSpec .c050).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c051 => {
      firstIndex := (generatedSpec .c051).first.index
      secondIndex := (generatedSpec .c051).second.index
      support := (generatedSpec .c051).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c052 => {
      firstIndex := (generatedSpec .c052).first.index
      secondIndex := (generatedSpec .c052).second.index
      support := (generatedSpec .c052).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c053 => {
      firstIndex := (generatedSpec .c053).first.index
      secondIndex := (generatedSpec .c053).second.index
      support := (generatedSpec .c053).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c054 => {
      firstIndex := (generatedSpec .c054).first.index
      secondIndex := (generatedSpec .c054).second.index
      support := (generatedSpec .c054).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c055 => {
      firstIndex := (generatedSpec .c055).first.index
      secondIndex := (generatedSpec .c055).second.index
      support := (generatedSpec .c055).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c056 => {
      firstIndex := (generatedSpec .c056).first.index
      secondIndex := (generatedSpec .c056).second.index
      support := (generatedSpec .c056).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c057 => {
      firstIndex := (generatedSpec .c057).first.index
      secondIndex := (generatedSpec .c057).second.index
      support := (generatedSpec .c057).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c058 => {
      firstIndex := (generatedSpec .c058).first.index
      secondIndex := (generatedSpec .c058).second.index
      support := (generatedSpec .c058).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c059 => {
      firstIndex := (generatedSpec .c059).first.index
      secondIndex := (generatedSpec .c059).second.index
      support := (generatedSpec .c059).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c060 => {
      firstIndex := (generatedSpec .c060).first.index
      secondIndex := (generatedSpec .c060).second.index
      support := (generatedSpec .c060).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c061 => {
      firstIndex := (generatedSpec .c061).first.index
      secondIndex := (generatedSpec .c061).second.index
      support := (generatedSpec .c061).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c062 => {
      firstIndex := (generatedSpec .c062).first.index
      secondIndex := (generatedSpec .c062).second.index
      support := (generatedSpec .c062).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c063 => {
      firstIndex := (generatedSpec .c063).first.index
      secondIndex := (generatedSpec .c063).second.index
      support := (generatedSpec .c063).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c064 => {
      firstIndex := (generatedSpec .c064).first.index
      secondIndex := (generatedSpec .c064).second.index
      support := (generatedSpec .c064).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c065 => {
      firstIndex := (generatedSpec .c065).first.index
      secondIndex := (generatedSpec .c065).second.index
      support := (generatedSpec .c065).support
      template := SourceIndexTemplate.axisAOnly }
  | .c066 => {
      firstIndex := (generatedSpec .c066).first.index
      secondIndex := (generatedSpec .c066).second.index
      support := (generatedSpec .c066).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c067 => {
      firstIndex := (generatedSpec .c067).first.index
      secondIndex := (generatedSpec .c067).second.index
      support := (generatedSpec .c067).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c068 => {
      firstIndex := (generatedSpec .c068).first.index
      secondIndex := (generatedSpec .c068).second.index
      support := (generatedSpec .c068).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c069 => {
      firstIndex := (generatedSpec .c069).first.index
      secondIndex := (generatedSpec .c069).second.index
      support := (generatedSpec .c069).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c070 => {
      firstIndex := (generatedSpec .c070).first.index
      secondIndex := (generatedSpec .c070).second.index
      support := (generatedSpec .c070).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c071 => {
      firstIndex := (generatedSpec .c071).first.index
      secondIndex := (generatedSpec .c071).second.index
      support := (generatedSpec .c071).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c072 => {
      firstIndex := (generatedSpec .c072).first.index
      secondIndex := (generatedSpec .c072).second.index
      support := (generatedSpec .c072).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c073 => {
      firstIndex := (generatedSpec .c073).first.index
      secondIndex := (generatedSpec .c073).second.index
      support := (generatedSpec .c073).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c074 => {
      firstIndex := (generatedSpec .c074).first.index
      secondIndex := (generatedSpec .c074).second.index
      support := (generatedSpec .c074).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c075 => {
      firstIndex := (generatedSpec .c075).first.index
      secondIndex := (generatedSpec .c075).second.index
      support := (generatedSpec .c075).support
      template := SourceIndexTemplate.axisAOnly }
  | .c076 => {
      firstIndex := (generatedSpec .c076).first.index
      secondIndex := (generatedSpec .c076).second.index
      support := (generatedSpec .c076).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c077 => {
      firstIndex := (generatedSpec .c077).first.index
      secondIndex := (generatedSpec .c077).second.index
      support := (generatedSpec .c077).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c078 => {
      firstIndex := (generatedSpec .c078).first.index
      secondIndex := (generatedSpec .c078).second.index
      support := (generatedSpec .c078).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c079 => {
      firstIndex := (generatedSpec .c079).first.index
      secondIndex := (generatedSpec .c079).second.index
      support := (generatedSpec .c079).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c080 => {
      firstIndex := (generatedSpec .c080).first.index
      secondIndex := (generatedSpec .c080).second.index
      support := (generatedSpec .c080).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c081 => {
      firstIndex := (generatedSpec .c081).first.index
      secondIndex := (generatedSpec .c081).second.index
      support := (generatedSpec .c081).support
      template := SourceIndexTemplate.axisAOnly }
  | .c082 => {
      firstIndex := (generatedSpec .c082).first.index
      secondIndex := (generatedSpec .c082).second.index
      support := (generatedSpec .c082).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c083 => {
      firstIndex := (generatedSpec .c083).first.index
      secondIndex := (generatedSpec .c083).second.index
      support := (generatedSpec .c083).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c084 => {
      firstIndex := (generatedSpec .c084).first.index
      secondIndex := (generatedSpec .c084).second.index
      support := (generatedSpec .c084).support
      template := SourceIndexTemplate.axisAOnly }
  | .c085 => {
      firstIndex := (generatedSpec .c085).first.index
      secondIndex := (generatedSpec .c085).second.index
      support := (generatedSpec .c085).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c086 => {
      firstIndex := (generatedSpec .c086).first.index
      secondIndex := (generatedSpec .c086).second.index
      support := (generatedSpec .c086).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c087 => {
      firstIndex := (generatedSpec .c087).first.index
      secondIndex := (generatedSpec .c087).second.index
      support := (generatedSpec .c087).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c088 => {
      firstIndex := (generatedSpec .c088).first.index
      secondIndex := (generatedSpec .c088).second.index
      support := (generatedSpec .c088).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c089 => {
      firstIndex := (generatedSpec .c089).first.index
      secondIndex := (generatedSpec .c089).second.index
      support := (generatedSpec .c089).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c090 => {
      firstIndex := (generatedSpec .c090).first.index
      secondIndex := (generatedSpec .c090).second.index
      support := (generatedSpec .c090).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c091 => {
      firstIndex := (generatedSpec .c091).first.index
      secondIndex := (generatedSpec .c091).second.index
      support := (generatedSpec .c091).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
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
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c095 => {
      firstIndex := (generatedSpec .c095).first.index
      secondIndex := (generatedSpec .c095).second.index
      support := (generatedSpec .c095).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c096 => {
      firstIndex := (generatedSpec .c096).first.index
      secondIndex := (generatedSpec .c096).second.index
      support := (generatedSpec .c096).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c097 => {
      firstIndex := (generatedSpec .c097).first.index
      secondIndex := (generatedSpec .c097).second.index
      support := (generatedSpec .c097).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c098 => {
      firstIndex := (generatedSpec .c098).first.index
      secondIndex := (generatedSpec .c098).second.index
      support := (generatedSpec .c098).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c099 => {
      firstIndex := (generatedSpec .c099).first.index
      secondIndex := (generatedSpec .c099).second.index
      support := (generatedSpec .c099).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c100 => {
      firstIndex := (generatedSpec .c100).first.index
      secondIndex := (generatedSpec .c100).second.index
      support := (generatedSpec .c100).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c101 => {
      firstIndex := (generatedSpec .c101).first.index
      secondIndex := (generatedSpec .c101).second.index
      support := (generatedSpec .c101).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c102 => {
      firstIndex := (generatedSpec .c102).first.index
      secondIndex := (generatedSpec .c102).second.index
      support := (generatedSpec .c102).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c103 => {
      firstIndex := (generatedSpec .c103).first.index
      secondIndex := (generatedSpec .c103).second.index
      support := (generatedSpec .c103).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c104 => {
      firstIndex := (generatedSpec .c104).first.index
      secondIndex := (generatedSpec .c104).second.index
      support := (generatedSpec .c104).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c105 => {
      firstIndex := (generatedSpec .c105).first.index
      secondIndex := (generatedSpec .c105).second.index
      support := (generatedSpec .c105).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c106 => {
      firstIndex := (generatedSpec .c106).first.index
      secondIndex := (generatedSpec .c106).second.index
      support := (generatedSpec .c106).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c107 => {
      firstIndex := (generatedSpec .c107).first.index
      secondIndex := (generatedSpec .c107).second.index
      support := (generatedSpec .c107).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c108 => {
      firstIndex := (generatedSpec .c108).first.index
      secondIndex := (generatedSpec .c108).second.index
      support := (generatedSpec .c108).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c109 => {
      firstIndex := (generatedSpec .c109).first.index
      secondIndex := (generatedSpec .c109).second.index
      support := (generatedSpec .c109).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c110 => {
      firstIndex := (generatedSpec .c110).first.index
      secondIndex := (generatedSpec .c110).second.index
      support := (generatedSpec .c110).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c111 => {
      firstIndex := (generatedSpec .c111).first.index
      secondIndex := (generatedSpec .c111).second.index
      support := (generatedSpec .c111).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c112 => {
      firstIndex := (generatedSpec .c112).first.index
      secondIndex := (generatedSpec .c112).second.index
      support := (generatedSpec .c112).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c113 => {
      firstIndex := (generatedSpec .c113).first.index
      secondIndex := (generatedSpec .c113).second.index
      support := (generatedSpec .c113).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c114 => {
      firstIndex := (generatedSpec .c114).first.index
      secondIndex := (generatedSpec .c114).second.index
      support := (generatedSpec .c114).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c115 => {
      firstIndex := (generatedSpec .c115).first.index
      secondIndex := (generatedSpec .c115).second.index
      support := (generatedSpec .c115).support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .c116 => {
      firstIndex := (generatedSpec .c116).first.index
      secondIndex := (generatedSpec .c116).second.index
      support := (generatedSpec .c116).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c117 => {
      firstIndex := (generatedSpec .c117).first.index
      secondIndex := (generatedSpec .c117).second.index
      support := (generatedSpec .c117).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c118 => {
      firstIndex := (generatedSpec .c118).first.index
      secondIndex := (generatedSpec .c118).second.index
      support := (generatedSpec .c118).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c119 => {
      firstIndex := (generatedSpec .c119).first.index
      secondIndex := (generatedSpec .c119).second.index
      support := (generatedSpec .c119).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c120 => {
      firstIndex := (generatedSpec .c120).first.index
      secondIndex := (generatedSpec .c120).second.index
      support := (generatedSpec .c120).support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .c121 => {
      firstIndex := (generatedSpec .c121).first.index
      secondIndex := (generatedSpec .c121).second.index
      support := (generatedSpec .c121).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c122 => {
      firstIndex := (generatedSpec .c122).first.index
      secondIndex := (generatedSpec .c122).second.index
      support := (generatedSpec .c122).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c123 => {
      firstIndex := (generatedSpec .c123).first.index
      secondIndex := (generatedSpec .c123).second.index
      support := (generatedSpec .c123).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c124 => {
      firstIndex := (generatedSpec .c124).first.index
      secondIndex := (generatedSpec .c124).second.index
      support := (generatedSpec .c124).support
      template := SourceIndexTemplate.eqEqPosVarFirst }

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

private def GeneratedCandidate.toFin : GeneratedCandidate -> Fin 125
  | .c000 => ⟨0, by decide⟩
  | .c001 => ⟨1, by decide⟩
  | .c002 => ⟨2, by decide⟩
  | .c003 => ⟨3, by decide⟩
  | .c004 => ⟨4, by decide⟩
  | .c005 => ⟨5, by decide⟩
  | .c006 => ⟨6, by decide⟩
  | .c007 => ⟨7, by decide⟩
  | .c008 => ⟨8, by decide⟩
  | .c009 => ⟨9, by decide⟩
  | .c010 => ⟨10, by decide⟩
  | .c011 => ⟨11, by decide⟩
  | .c012 => ⟨12, by decide⟩
  | .c013 => ⟨13, by decide⟩
  | .c014 => ⟨14, by decide⟩
  | .c015 => ⟨15, by decide⟩
  | .c016 => ⟨16, by decide⟩
  | .c017 => ⟨17, by decide⟩
  | .c018 => ⟨18, by decide⟩
  | .c019 => ⟨19, by decide⟩
  | .c020 => ⟨20, by decide⟩
  | .c021 => ⟨21, by decide⟩
  | .c022 => ⟨22, by decide⟩
  | .c023 => ⟨23, by decide⟩
  | .c024 => ⟨24, by decide⟩
  | .c025 => ⟨25, by decide⟩
  | .c026 => ⟨26, by decide⟩
  | .c027 => ⟨27, by decide⟩
  | .c028 => ⟨28, by decide⟩
  | .c029 => ⟨29, by decide⟩
  | .c030 => ⟨30, by decide⟩
  | .c031 => ⟨31, by decide⟩
  | .c032 => ⟨32, by decide⟩
  | .c033 => ⟨33, by decide⟩
  | .c034 => ⟨34, by decide⟩
  | .c035 => ⟨35, by decide⟩
  | .c036 => ⟨36, by decide⟩
  | .c037 => ⟨37, by decide⟩
  | .c038 => ⟨38, by decide⟩
  | .c039 => ⟨39, by decide⟩
  | .c040 => ⟨40, by decide⟩
  | .c041 => ⟨41, by decide⟩
  | .c042 => ⟨42, by decide⟩
  | .c043 => ⟨43, by decide⟩
  | .c044 => ⟨44, by decide⟩
  | .c045 => ⟨45, by decide⟩
  | .c046 => ⟨46, by decide⟩
  | .c047 => ⟨47, by decide⟩
  | .c048 => ⟨48, by decide⟩
  | .c049 => ⟨49, by decide⟩
  | .c050 => ⟨50, by decide⟩
  | .c051 => ⟨51, by decide⟩
  | .c052 => ⟨52, by decide⟩
  | .c053 => ⟨53, by decide⟩
  | .c054 => ⟨54, by decide⟩
  | .c055 => ⟨55, by decide⟩
  | .c056 => ⟨56, by decide⟩
  | .c057 => ⟨57, by decide⟩
  | .c058 => ⟨58, by decide⟩
  | .c059 => ⟨59, by decide⟩
  | .c060 => ⟨60, by decide⟩
  | .c061 => ⟨61, by decide⟩
  | .c062 => ⟨62, by decide⟩
  | .c063 => ⟨63, by decide⟩
  | .c064 => ⟨64, by decide⟩
  | .c065 => ⟨65, by decide⟩
  | .c066 => ⟨66, by decide⟩
  | .c067 => ⟨67, by decide⟩
  | .c068 => ⟨68, by decide⟩
  | .c069 => ⟨69, by decide⟩
  | .c070 => ⟨70, by decide⟩
  | .c071 => ⟨71, by decide⟩
  | .c072 => ⟨72, by decide⟩
  | .c073 => ⟨73, by decide⟩
  | .c074 => ⟨74, by decide⟩
  | .c075 => ⟨75, by decide⟩
  | .c076 => ⟨76, by decide⟩
  | .c077 => ⟨77, by decide⟩
  | .c078 => ⟨78, by decide⟩
  | .c079 => ⟨79, by decide⟩
  | .c080 => ⟨80, by decide⟩
  | .c081 => ⟨81, by decide⟩
  | .c082 => ⟨82, by decide⟩
  | .c083 => ⟨83, by decide⟩
  | .c084 => ⟨84, by decide⟩
  | .c085 => ⟨85, by decide⟩
  | .c086 => ⟨86, by decide⟩
  | .c087 => ⟨87, by decide⟩
  | .c088 => ⟨88, by decide⟩
  | .c089 => ⟨89, by decide⟩
  | .c090 => ⟨90, by decide⟩
  | .c091 => ⟨91, by decide⟩
  | .c092 => ⟨92, by decide⟩
  | .c093 => ⟨93, by decide⟩
  | .c094 => ⟨94, by decide⟩
  | .c095 => ⟨95, by decide⟩
  | .c096 => ⟨96, by decide⟩
  | .c097 => ⟨97, by decide⟩
  | .c098 => ⟨98, by decide⟩
  | .c099 => ⟨99, by decide⟩
  | .c100 => ⟨100, by decide⟩
  | .c101 => ⟨101, by decide⟩
  | .c102 => ⟨102, by decide⟩
  | .c103 => ⟨103, by decide⟩
  | .c104 => ⟨104, by decide⟩
  | .c105 => ⟨105, by decide⟩
  | .c106 => ⟨106, by decide⟩
  | .c107 => ⟨107, by decide⟩
  | .c108 => ⟨108, by decide⟩
  | .c109 => ⟨109, by decide⟩
  | .c110 => ⟨110, by decide⟩
  | .c111 => ⟨111, by decide⟩
  | .c112 => ⟨112, by decide⟩
  | .c113 => ⟨113, by decide⟩
  | .c114 => ⟨114, by decide⟩
  | .c115 => ⟨115, by decide⟩
  | .c116 => ⟨116, by decide⟩
  | .c117 => ⟨117, by decide⟩
  | .c118 => ⟨118, by decide⟩
  | .c119 => ⟨119, by decide⟩
  | .c120 => ⟨120, by decide⟩
  | .c121 => ⟨121, by decide⟩
  | .c122 => ⟨122, by decide⟩
  | .c123 => ⟨123, by decide⟩
  | .c124 => ⟨124, by decide⟩

private def generatedCandidateKeyAt (i : Fin 125) : SourceIndexStateKey :=
  if i.val = 0 then generatedKey .c000 else
  if i.val = 1 then generatedKey .c001 else
  if i.val = 2 then generatedKey .c002 else
  if i.val = 3 then generatedKey .c003 else
  if i.val = 4 then generatedKey .c004 else
  if i.val = 5 then generatedKey .c005 else
  if i.val = 6 then generatedKey .c006 else
  if i.val = 7 then generatedKey .c007 else
  if i.val = 8 then generatedKey .c008 else
  if i.val = 9 then generatedKey .c009 else
  if i.val = 10 then generatedKey .c010 else
  if i.val = 11 then generatedKey .c011 else
  if i.val = 12 then generatedKey .c012 else
  if i.val = 13 then generatedKey .c013 else
  if i.val = 14 then generatedKey .c014 else
  if i.val = 15 then generatedKey .c015 else
  if i.val = 16 then generatedKey .c016 else
  if i.val = 17 then generatedKey .c017 else
  if i.val = 18 then generatedKey .c018 else
  if i.val = 19 then generatedKey .c019 else
  if i.val = 20 then generatedKey .c020 else
  if i.val = 21 then generatedKey .c021 else
  if i.val = 22 then generatedKey .c022 else
  if i.val = 23 then generatedKey .c023 else
  if i.val = 24 then generatedKey .c024 else
  if i.val = 25 then generatedKey .c025 else
  if i.val = 26 then generatedKey .c026 else
  if i.val = 27 then generatedKey .c027 else
  if i.val = 28 then generatedKey .c028 else
  if i.val = 29 then generatedKey .c029 else
  if i.val = 30 then generatedKey .c030 else
  if i.val = 31 then generatedKey .c031 else
  if i.val = 32 then generatedKey .c032 else
  if i.val = 33 then generatedKey .c033 else
  if i.val = 34 then generatedKey .c034 else
  if i.val = 35 then generatedKey .c035 else
  if i.val = 36 then generatedKey .c036 else
  if i.val = 37 then generatedKey .c037 else
  if i.val = 38 then generatedKey .c038 else
  if i.val = 39 then generatedKey .c039 else
  if i.val = 40 then generatedKey .c040 else
  if i.val = 41 then generatedKey .c041 else
  if i.val = 42 then generatedKey .c042 else
  if i.val = 43 then generatedKey .c043 else
  if i.val = 44 then generatedKey .c044 else
  if i.val = 45 then generatedKey .c045 else
  if i.val = 46 then generatedKey .c046 else
  if i.val = 47 then generatedKey .c047 else
  if i.val = 48 then generatedKey .c048 else
  if i.val = 49 then generatedKey .c049 else
  if i.val = 50 then generatedKey .c050 else
  if i.val = 51 then generatedKey .c051 else
  if i.val = 52 then generatedKey .c052 else
  if i.val = 53 then generatedKey .c053 else
  if i.val = 54 then generatedKey .c054 else
  if i.val = 55 then generatedKey .c055 else
  if i.val = 56 then generatedKey .c056 else
  if i.val = 57 then generatedKey .c057 else
  if i.val = 58 then generatedKey .c058 else
  if i.val = 59 then generatedKey .c059 else
  if i.val = 60 then generatedKey .c060 else
  if i.val = 61 then generatedKey .c061 else
  if i.val = 62 then generatedKey .c062 else
  if i.val = 63 then generatedKey .c063 else
  if i.val = 64 then generatedKey .c064 else
  if i.val = 65 then generatedKey .c065 else
  if i.val = 66 then generatedKey .c066 else
  if i.val = 67 then generatedKey .c067 else
  if i.val = 68 then generatedKey .c068 else
  if i.val = 69 then generatedKey .c069 else
  if i.val = 70 then generatedKey .c070 else
  if i.val = 71 then generatedKey .c071 else
  if i.val = 72 then generatedKey .c072 else
  if i.val = 73 then generatedKey .c073 else
  if i.val = 74 then generatedKey .c074 else
  if i.val = 75 then generatedKey .c075 else
  if i.val = 76 then generatedKey .c076 else
  if i.val = 77 then generatedKey .c077 else
  if i.val = 78 then generatedKey .c078 else
  if i.val = 79 then generatedKey .c079 else
  if i.val = 80 then generatedKey .c080 else
  if i.val = 81 then generatedKey .c081 else
  if i.val = 82 then generatedKey .c082 else
  if i.val = 83 then generatedKey .c083 else
  if i.val = 84 then generatedKey .c084 else
  if i.val = 85 then generatedKey .c085 else
  if i.val = 86 then generatedKey .c086 else
  if i.val = 87 then generatedKey .c087 else
  if i.val = 88 then generatedKey .c088 else
  if i.val = 89 then generatedKey .c089 else
  if i.val = 90 then generatedKey .c090 else
  if i.val = 91 then generatedKey .c091 else
  if i.val = 92 then generatedKey .c092 else
  if i.val = 93 then generatedKey .c093 else
  if i.val = 94 then generatedKey .c094 else
  if i.val = 95 then generatedKey .c095 else
  if i.val = 96 then generatedKey .c096 else
  if i.val = 97 then generatedKey .c097 else
  if i.val = 98 then generatedKey .c098 else
  if i.val = 99 then generatedKey .c099 else
  if i.val = 100 then generatedKey .c100 else
  if i.val = 101 then generatedKey .c101 else
  if i.val = 102 then generatedKey .c102 else
  if i.val = 103 then generatedKey .c103 else
  if i.val = 104 then generatedKey .c104 else
  if i.val = 105 then generatedKey .c105 else
  if i.val = 106 then generatedKey .c106 else
  if i.val = 107 then generatedKey .c107 else
  if i.val = 108 then generatedKey .c108 else
  if i.val = 109 then generatedKey .c109 else
  if i.val = 110 then generatedKey .c110 else
  if i.val = 111 then generatedKey .c111 else
  if i.val = 112 then generatedKey .c112 else
  if i.val = 113 then generatedKey .c113 else
  if i.val = 114 then generatedKey .c114 else
  if i.val = 115 then generatedKey .c115 else
  if i.val = 116 then generatedKey .c116 else
  if i.val = 117 then generatedKey .c117 else
  if i.val = 118 then generatedKey .c118 else
  if i.val = 119 then generatedKey .c119 else
  if i.val = 120 then generatedKey .c120 else
  if i.val = 121 then generatedKey .c121 else
  if i.val = 122 then generatedKey .c122 else
  if i.val = 123 then generatedKey .c123 else
  if i.val = 124 then generatedKey .c124 else
  generatedKey .c124

private theorem generatedCandidateKeyAt_toFin
    (candidate : GeneratedCandidate) :
    generatedCandidateKeyAt candidate.toFin = generatedKey candidate := by
  cases candidate <;> rfl

private def generatedMember (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

private theorem generatedCandidateSourceFacts
    {candidate : GeneratedCandidate} {rank : Nat} {mask : SignMask}
    (hmember : generatedMember candidate rank mask) :
    SourceIndexStateSourceFacts (generatedKey candidate) rank mask := by
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
  exact (generatedSpec candidate).sourceFacts
    hfirst hsecond hsupport hmember.1

private theorem generatedCandidateRowFacts
    {candidate : GeneratedCandidate} {rank : Nat} {mask : SignMask}
    (hmember : generatedMember candidate rank mask) :
    SourceIndexStateRowFacts (generatedKey candidate) rank mask :=
  (generatedRowProducer candidate).rowFacts hmember.2

private def generatedCatalogClassifier
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    PositiveSurvivorBoolClassifierOnRange 0 5000 where
  Candidate := GeneratedCandidate
  spec := generatedSpec
  rowProducer := generatedRowProducer
  key := generatedKey
  Member := generatedMember
  firstIndex := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  secondIndex := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  support := by
    intro candidate rank mask hmember
    cases candidate <;> rfl
  source := by
    intro candidate rank mask hmember
    exact hmember.1
  rows := by
    intro candidate rank mask hmember
    exact hmember.2
  completeBool := hcomplete

/--
AP16DU.9F surface theorem for the selected candidate catalog.

The selected chunk has `125` candidate groups out of
`195` and accounts for
`4693` profiled GoodDirection cases in the AP16I sample.  The
remaining `hcomplete` premise is the actual AP16DU proof obligation.
-/
theorem generatedCandidateCatalogAllGoodCoverage
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  (generatedCatalogClassifier hcomplete).to_allGoodCoverage

/--
AP16DU.1 catalog-facts adapter for the selected candidate catalog.

This exposes the same candidate-completeness premise as a finite
`SourceRowFactsGoodCatalogOnRange` theorem, which is the current public
source-index coverage API.  The generated candidate data remains private and
is immediately erased to source/row facts.
-/
theorem generatedCandidateSourceRowFactsCatalog
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    SourceRowFactsGoodCatalogOnRange generatedCandidateKeyAt 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood) with
    ⟨candidate, hmember⟩
  refine ⟨candidate.toFin, ?_, ?_⟩
  · have hlookup := generatedCandidateKeyAt_toFin candidate
    have hsource := generatedCandidateSourceFacts hmember
    simpa [hlookup] using hsource
  · have hlookup := generatedCandidateKeyAt_toFin candidate
    have hrows := generatedCandidateRowFacts hmember
    simpa [hlookup] using hrows

theorem generatedCandidateCatalogAllGoodCoverage_viaFactsCatalog
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists candidate : GeneratedCandidate,
                  generatedMember candidate rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage
    (generatedCandidateSourceRowFactsCatalog hcomplete)

theorem candidateCatalogSurfaceSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke
