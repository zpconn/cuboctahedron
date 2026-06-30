import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated template-domain union smoke.

This file is diagnostic only.  It is generated from
`scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json`.
It groups a few positive candidate domains and proves a union-domain member
bridge without emitting rank/mask tables.

Selection summary: `selection=top-good-mask-set masks=8,9,13,16,18,22,24,28,29,30,31,45,47,54,55,63 signature_count=30 case_count=480 candidate_union_size=40`.
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
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c014 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c015 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c016 => {
      first := SourcePositionSpec.interior ⟨11, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c017 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c018 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨11, by decide⟩ }
  | .c019 => {
      first := SourcePositionSpec.interior ⟨9, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c020 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c021 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c022 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c023 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c024 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c025 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨3, by decide⟩ }
  | .c026 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨9, by decide⟩ }
  | .c027 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c028 => {
      first := SourcePositionSpec.interior ⟨7, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c029 => {
      first := SourcePositionSpec.xpStart ⟨1, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c030 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmm 6
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c031 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨1, by decide⟩ }
  | .c032 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c033 => {
      first := SourcePositionSpec.interior ⟨6, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c034 => {
      first := SourcePositionSpec.xpStart ⟨2, by decide⟩
      second := SourcePositionSpec.ordering ⟨7, by decide⟩ }
  | .c035 => {
      first := SourcePositionSpec.interior ⟨10, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c036 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xp 0
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c037 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.tppp 12
      second := SourcePositionSpec.xpStart ⟨0, by decide⟩ }
  | .c038 => {
      first := SourcePositionSpec.interior ⟨8, by decide⟩ Face.xm 1
      second := SourcePositionSpec.xpStart ⟨2, by decide⟩ }
  | .c039 => {
      first := SourcePositionSpec.interior ⟨12, by decide⟩ Face.tmmp 7
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
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c014 => {
      firstIndex := (generatedSpec .c014).first.index
      secondIndex := (generatedSpec .c014).second.index
      support := (generatedSpec .c014).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c015 => {
      firstIndex := (generatedSpec .c015).first.index
      secondIndex := (generatedSpec .c015).second.index
      support := (generatedSpec .c015).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c016 => {
      firstIndex := (generatedSpec .c016).first.index
      secondIndex := (generatedSpec .c016).second.index
      support := (generatedSpec .c016).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c017 => {
      firstIndex := (generatedSpec .c017).first.index
      secondIndex := (generatedSpec .c017).second.index
      support := (generatedSpec .c017).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c018 => {
      firstIndex := (generatedSpec .c018).first.index
      secondIndex := (generatedSpec .c018).second.index
      support := (generatedSpec .c018).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c019 => {
      firstIndex := (generatedSpec .c019).first.index
      secondIndex := (generatedSpec .c019).second.index
      support := (generatedSpec .c019).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
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
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c023 => {
      firstIndex := (generatedSpec .c023).first.index
      secondIndex := (generatedSpec .c023).second.index
      support := (generatedSpec .c023).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c024 => {
      firstIndex := (generatedSpec .c024).first.index
      secondIndex := (generatedSpec .c024).second.index
      support := (generatedSpec .c024).support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .c025 => {
      firstIndex := (generatedSpec .c025).first.index
      secondIndex := (generatedSpec .c025).second.index
      support := (generatedSpec .c025).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c026 => {
      firstIndex := (generatedSpec .c026).first.index
      secondIndex := (generatedSpec .c026).second.index
      support := (generatedSpec .c026).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c027 => {
      firstIndex := (generatedSpec .c027).first.index
      secondIndex := (generatedSpec .c027).second.index
      support := (generatedSpec .c027).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c028 => {
      firstIndex := (generatedSpec .c028).first.index
      secondIndex := (generatedSpec .c028).second.index
      support := (generatedSpec .c028).support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
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
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .c032 => {
      firstIndex := (generatedSpec .c032).first.index
      secondIndex := (generatedSpec .c032).second.index
      support := (generatedSpec .c032).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c033 => {
      firstIndex := (generatedSpec .c033).first.index
      secondIndex := (generatedSpec .c033).second.index
      support := (generatedSpec .c033).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c034 => {
      firstIndex := (generatedSpec .c034).first.index
      secondIndex := (generatedSpec .c034).second.index
      support := (generatedSpec .c034).support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .c035 => {
      firstIndex := (generatedSpec .c035).first.index
      secondIndex := (generatedSpec .c035).second.index
      support := (generatedSpec .c035).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .c036 => {
      firstIndex := (generatedSpec .c036).first.index
      secondIndex := (generatedSpec .c036).second.index
      support := (generatedSpec .c036).support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .c037 => {
      firstIndex := (generatedSpec .c037).first.index
      secondIndex := (generatedSpec .c037).second.index
      support := (generatedSpec .c037).support
      template := SourceIndexTemplate.eqEqPosVarFirst }
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

Selection summary: `selection=top-good-mask-set masks=8,9,13,16,18,22,24,28,29,30,31,45,47,54,55,63 signature_count=30 case_count=480 candidate_union_size=40`.

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
- `c013`: `ce27a48d56d26f3187d51f3f91c860bc8962c6e1921a64107832d1e28c09bca2`, cases `78`
- `c014`: `cf9962e55a9e720734cce334c9ee24ea4057e05bbe3dcbf91e1eb8ec04227193`, cases `77`
- `c015`: `975697e2590729f2383df71679b29def3cf45d1023621e6aa429222b5445b28b`, cases `71`
- `c016`: `80ededb7a93030d8e451da53d329282f00aaae96771dd601441bfcb7f493a521`, cases `71`
- `c017`: `d0463464045bcef7789bbcba2debc1a5d639c5971d24975cb91bfadb6001c33e`, cases `61`
- `c018`: `03e232a8aba9a89ba6c508e12b3396c2ef41049cc9611e61f36b53570b697623`, cases `52`
- `c019`: `d67508ec688c7fb39e7f36e05f6c5c9854e04b653e8ea876583166dd05e2952b`, cases `52`
- `c020`: `077d94cb4e03d0b35225eec960d3d57adf4baed04982313840be3ee6c6bb7821`, cases `48`
- `c021`: `e3d40847b9a9d0736476d468eef787c9b0c9a8d6edff9df82b0f579232732a48`, cases `48`
- `c022`: `d046d8dc2716b9d167b3ab367f02e6f225dcfcc049adf22c44e94cd6053adcf0`, cases `48`
- `c023`: `ef690b20275871418eaee6d4fd9b6a2c4ce2d6d6dd6675beb3cc1f594b653eaa`, cases `47`
- `c024`: `ece83320493b96e698f2c3c863aebbbb0710fc908c639b61f060f2d5cf1a6e51`, cases `45`
- `c025`: `6967b55102537fd57b4794517c832a8d888f640d7639d45485b982e2329f62d8`, cases `39`
- `c026`: `94820b46b2ac11a0714e9c555904b3e67b30707f4823e1e6b4ebece323d5e086`, cases `38`
- `c027`: `55eae0d5ae203240fc7ab60e0664aaf2a0dc2558fdbf5d35e844cea2a9a37aaf`, cases `34`
- `c028`: `5e5c0130d5b98662961778aceff46c6ca9d895d69a01188a133b29e720438566`, cases `31`
- `c029`: `476e65bb796599c6e906f78762761ccb558bf1dd214885194e0def1bf9299ff9`, cases `24`
- `c030`: `4b373091ce4334bb0dd17d0560ff33278e86a0ff054edd7465fd705024516384`, cases `24`
- `c031`: `c5d8a0a887f9458304460a8eb6f91bc8e293c898cc2488517104ad39457ad12e`, cases `24`
- `c032`: `ae35ce47550c1a64ed8e6ee9661b6eec254f77e1d6f3aa8843e031e50c845c07`, cases `23`
- `c033`: `bc02c57ff085c135a5004daafe890fb829d68d2dfd03e54de5cc55fd973bd4fe`, cases `22`
- `c034`: `e7bc1874ff442f0585c70f2e84ee475a877eaf50cc8d4086a3bd573b7fb29cd8`, cases `17`
- `c035`: `557f4ea663b296b3401385546e6bb6f66c0e21b195d03b0a9ba568c8b621901a`, cases `14`
- `c036`: `36537ec08283d89c66334e8d01e36a8f88a087e9fd749d53b1d4d1653a0eba63`, cases `13`
- `c037`: `856b794dfa83c2b6b33e4ab2f39cc8e8d23958534ca12d305f3b13914f492220`, cases `11`
- `c038`: `9dc4e8e0014c58c6ed705c1c64fa07ece3c654ea8f81cd97084785fe4a0fb94c`, cases `9`
- `c039`: `12de776a3b4baf59dbeb598e2eda54364bdbd3165ec277d6c03dfd8e5d9089cc`, cases `8`

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
