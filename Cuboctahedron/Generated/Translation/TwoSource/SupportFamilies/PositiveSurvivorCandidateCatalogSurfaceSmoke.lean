import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

/-!
Generated AP16DU.0 positive-survivor candidate-catalog surface smoke.

This file is diagnostic only.  It validates the multi-candidate catalog
classifier surface selected by AP16DT.  The generated theorem still assumes the
catalog-completeness premise; it does not prove final coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier

set_option linter.unusedVariables false

/-- First AP16DT candidate chunk: `64` shared candidate groups. -/
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

private def generatedMember (candidate : GeneratedCandidate) (rank : Nat) (mask : SignMask) : Prop :=
  (generatedSpec candidate).Predicate rank mask /\
    (generatedRowProducer candidate).Applies (generatedKey candidate) rank mask

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
AP16DU.0 surface theorem for the first candidate chunk.

The selected chunk has `64` candidate groups out of
`195` and accounts for
`6454` profiled GoodDirection cases in the AP16I sample.  The
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

theorem candidateCatalogSurfaceSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke
