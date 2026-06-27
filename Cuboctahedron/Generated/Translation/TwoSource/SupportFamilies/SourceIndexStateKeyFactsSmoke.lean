import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated descriptor-key facts smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof. It proves that source-index/source-check/row facts
imply key matches and route to classifier branches.
Phase: 6Z.6K.8P.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateKeyFactsSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

set_option linter.unusedVariables false

/-- Descriptor-key facts smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 421. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 134. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 128. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 102. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 79. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 44. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_005_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := fam_005_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 30. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_006_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 29. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_007_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 23. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 22. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_009_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Descriptor-key facts smoke family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 22. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 21. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 20. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 14
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 19. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 19. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_014_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := fam_014_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 19. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 19. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_016_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 7
  support := fam_016_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 18. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 12
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Descriptor-key facts smoke family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 17. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 15. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_019_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := fam_019_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 14. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_020_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_020_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 13. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_021_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 7
  support := fam_021_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 12. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_022_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := fam_022_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 11. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_023_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 11. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_024_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_024_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 10. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_025_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 3
  support := fam_025_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Descriptor-key facts smoke family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 10. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_026_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_026_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 10. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_027_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := fam_027_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 9. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_028_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 11
  support := fam_028_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 9. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_029_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 11
  support := fam_029_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 9. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_030_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := fam_030_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 8. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_031_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := fam_031_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 7. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_032_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 7. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_033_key : SourceIndexStateKey where
  firstIndex := 184
  secondIndex := 1
  support := fam_033_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 7. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_034_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := fam_034_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 7. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_035_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := fam_035_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 6. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_036_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := fam_036_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 6. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_037_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 0
  support := fam_037_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_038_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := fam_038_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 6. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_039_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_039_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 6. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_040_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_040_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_041_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := fam_041_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 5. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_042_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := fam_042_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 5. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_043_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := fam_043_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 5. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_044_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_044_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Descriptor-key facts smoke family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 4. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_045_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_045_support
  template := SourceIndexTemplate.axisAOnly

/-- Descriptor-key facts smoke family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_046_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := fam_046_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_047_key : SourceIndexStateKey where
  firstIndex := 147
  secondIndex := 0
  support := fam_047_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 3. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_048_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_048_support
  template := SourceIndexTemplate.axisAOnly

/-- Descriptor-key facts smoke family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 3. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_049_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 0
  support := fam_049_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 3. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_050_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 1
  support := fam_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 3. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_051_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 1
  support := fam_051_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 3. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_052_key : SourceIndexStateKey where
  firstIndex := 106
  secondIndex := 1
  support := fam_052_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 3. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_053_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 2
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 3. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_054_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := fam_054_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 2. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_055_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_055_support
  template := SourceIndexTemplate.axisAOnly

/-- Descriptor-key facts smoke family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 2. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_056_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 11
  support := fam_056_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Descriptor-key facts smoke family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 2. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_057_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 1
  support := fam_057_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `e123e95ce12fb8512a98acdcdc060cc8e1427e5e426c456b02f2df50bb835096`.
Observed bounded GoodDirection cases: 2. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_058_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 2
  support := fam_058_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 2. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_059_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := fam_059_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 2. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_060_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := fam_060_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 2. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_061_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := fam_061_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Descriptor-key facts smoke family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_062_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 12
  support := fam_062_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Descriptor-key facts smoke family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 1. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_063_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := fam_063_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 1. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_064_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 0
  support := fam_064_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key facts smoke family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 1. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_065_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 1
  support := fam_065_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 1. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_066_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := fam_066_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_067_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 1
  support := fam_067_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 1. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_068_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := fam_068_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 1. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_069_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 1
  support := fam_069_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 1. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_070_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 1
  support := fam_070_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 1. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_071_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := fam_071_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key facts smoke family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 1. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_072_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 2
  support := fam_072_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key facts smoke family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 1. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_073_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 2
  support := fam_073_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

inductive FactClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_000_key r mask) : FactClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_001_key r mask) : FactClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_002_key r mask) : FactClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_003_key r mask) : FactClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_004_key r mask) : FactClassifierApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_005_key r mask) : FactClassifierApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_006_key r mask) : FactClassifierApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_007_key r mask) : FactClassifierApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_008_key r mask) : FactClassifierApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_009_key r mask) : FactClassifierApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_010_key r mask) : FactClassifierApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_011_key r mask) : FactClassifierApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_012_key r mask) : FactClassifierApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_013_key r mask) : FactClassifierApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_014_key r mask) : FactClassifierApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_015_key r mask) : FactClassifierApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_016_key r mask) : FactClassifierApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_017_key r mask) : FactClassifierApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_018_key r mask) : FactClassifierApplies r mask
  | fam019 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_019_key r mask) : FactClassifierApplies r mask
  | fam020 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_020_key r mask) : FactClassifierApplies r mask
  | fam021 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_021_key r mask) : FactClassifierApplies r mask
  | fam022 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_022_key r mask) : FactClassifierApplies r mask
  | fam023 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_023_key r mask) : FactClassifierApplies r mask
  | fam024 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_024_key r mask) : FactClassifierApplies r mask
  | fam025 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_025_key r mask) : FactClassifierApplies r mask
  | fam026 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_026_key r mask) : FactClassifierApplies r mask
  | fam027 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_027_key r mask) : FactClassifierApplies r mask
  | fam028 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_028_key r mask) : FactClassifierApplies r mask
  | fam029 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_029_key r mask) : FactClassifierApplies r mask
  | fam030 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_030_key r mask) : FactClassifierApplies r mask
  | fam031 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_031_key r mask) : FactClassifierApplies r mask
  | fam032 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_032_key r mask) : FactClassifierApplies r mask
  | fam033 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_033_key r mask) : FactClassifierApplies r mask
  | fam034 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_034_key r mask) : FactClassifierApplies r mask
  | fam035 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_035_key r mask) : FactClassifierApplies r mask
  | fam036 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_036_key r mask) : FactClassifierApplies r mask
  | fam037 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_037_key r mask) : FactClassifierApplies r mask
  | fam038 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_038_key r mask) : FactClassifierApplies r mask
  | fam039 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_039_key r mask) : FactClassifierApplies r mask
  | fam040 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_040_key r mask) : FactClassifierApplies r mask
  | fam041 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_041_key r mask) : FactClassifierApplies r mask
  | fam042 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_042_key r mask) : FactClassifierApplies r mask
  | fam043 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_043_key r mask) : FactClassifierApplies r mask
  | fam044 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_044_key r mask) : FactClassifierApplies r mask
  | fam045 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_045_key r mask) : FactClassifierApplies r mask
  | fam046 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_046_key r mask) : FactClassifierApplies r mask
  | fam047 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_047_key r mask) : FactClassifierApplies r mask
  | fam048 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_048_key r mask) : FactClassifierApplies r mask
  | fam049 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_049_key r mask) : FactClassifierApplies r mask
  | fam050 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_050_key r mask) : FactClassifierApplies r mask
  | fam051 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_051_key r mask) : FactClassifierApplies r mask
  | fam052 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_052_key r mask) : FactClassifierApplies r mask
  | fam053 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_053_key r mask) : FactClassifierApplies r mask
  | fam054 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_054_key r mask) : FactClassifierApplies r mask
  | fam055 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_055_key r mask) : FactClassifierApplies r mask
  | fam056 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_056_key r mask) : FactClassifierApplies r mask
  | fam057 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_057_key r mask) : FactClassifierApplies r mask
  | fam058 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_058_key r mask) : FactClassifierApplies r mask
  | fam059 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_059_key r mask) : FactClassifierApplies r mask
  | fam060 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_060_key r mask) : FactClassifierApplies r mask
  | fam061 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_061_key r mask) : FactClassifierApplies r mask
  | fam062 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_062_key r mask) : FactClassifierApplies r mask
  | fam063 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_063_key r mask) : FactClassifierApplies r mask
  | fam064 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_064_key r mask) : FactClassifierApplies r mask
  | fam065 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_065_key r mask) : FactClassifierApplies r mask
  | fam066 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_066_key r mask) : FactClassifierApplies r mask
  | fam067 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_067_key r mask) : FactClassifierApplies r mask
  | fam068 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_068_key r mask) : FactClassifierApplies r mask
  | fam069 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_069_key r mask) : FactClassifierApplies r mask
  | fam070 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_070_key r mask) : FactClassifierApplies r mask
  | fam071 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_071_key r mask) : FactClassifierApplies r mask
  | fam072 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_072_key r mask) : FactClassifierApplies r mask
  | fam073 {r : Nat} {mask : SignMask} (h : SourceIndexStateKeyFacts fam_073_key r mask) : FactClassifierApplies r mask

def factClassifierFamily : RowPropertyMembershipFamily where
  Applies := FactClassifierApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 h =>
        exact fam_000_key.covered_of_facts h
    | fam001 h =>
        exact fam_001_key.covered_of_facts h
    | fam002 h =>
        exact fam_002_key.covered_of_facts h
    | fam003 h =>
        exact fam_003_key.covered_of_facts h
    | fam004 h =>
        exact fam_004_key.covered_of_facts h
    | fam005 h =>
        exact fam_005_key.covered_of_facts h
    | fam006 h =>
        exact fam_006_key.covered_of_facts h
    | fam007 h =>
        exact fam_007_key.covered_of_facts h
    | fam008 h =>
        exact fam_008_key.covered_of_facts h
    | fam009 h =>
        exact fam_009_key.covered_of_facts h
    | fam010 h =>
        exact fam_010_key.covered_of_facts h
    | fam011 h =>
        exact fam_011_key.covered_of_facts h
    | fam012 h =>
        exact fam_012_key.covered_of_facts h
    | fam013 h =>
        exact fam_013_key.covered_of_facts h
    | fam014 h =>
        exact fam_014_key.covered_of_facts h
    | fam015 h =>
        exact fam_015_key.covered_of_facts h
    | fam016 h =>
        exact fam_016_key.covered_of_facts h
    | fam017 h =>
        exact fam_017_key.covered_of_facts h
    | fam018 h =>
        exact fam_018_key.covered_of_facts h
    | fam019 h =>
        exact fam_019_key.covered_of_facts h
    | fam020 h =>
        exact fam_020_key.covered_of_facts h
    | fam021 h =>
        exact fam_021_key.covered_of_facts h
    | fam022 h =>
        exact fam_022_key.covered_of_facts h
    | fam023 h =>
        exact fam_023_key.covered_of_facts h
    | fam024 h =>
        exact fam_024_key.covered_of_facts h
    | fam025 h =>
        exact fam_025_key.covered_of_facts h
    | fam026 h =>
        exact fam_026_key.covered_of_facts h
    | fam027 h =>
        exact fam_027_key.covered_of_facts h
    | fam028 h =>
        exact fam_028_key.covered_of_facts h
    | fam029 h =>
        exact fam_029_key.covered_of_facts h
    | fam030 h =>
        exact fam_030_key.covered_of_facts h
    | fam031 h =>
        exact fam_031_key.covered_of_facts h
    | fam032 h =>
        exact fam_032_key.covered_of_facts h
    | fam033 h =>
        exact fam_033_key.covered_of_facts h
    | fam034 h =>
        exact fam_034_key.covered_of_facts h
    | fam035 h =>
        exact fam_035_key.covered_of_facts h
    | fam036 h =>
        exact fam_036_key.covered_of_facts h
    | fam037 h =>
        exact fam_037_key.covered_of_facts h
    | fam038 h =>
        exact fam_038_key.covered_of_facts h
    | fam039 h =>
        exact fam_039_key.covered_of_facts h
    | fam040 h =>
        exact fam_040_key.covered_of_facts h
    | fam041 h =>
        exact fam_041_key.covered_of_facts h
    | fam042 h =>
        exact fam_042_key.covered_of_facts h
    | fam043 h =>
        exact fam_043_key.covered_of_facts h
    | fam044 h =>
        exact fam_044_key.covered_of_facts h
    | fam045 h =>
        exact fam_045_key.covered_of_facts h
    | fam046 h =>
        exact fam_046_key.covered_of_facts h
    | fam047 h =>
        exact fam_047_key.covered_of_facts h
    | fam048 h =>
        exact fam_048_key.covered_of_facts h
    | fam049 h =>
        exact fam_049_key.covered_of_facts h
    | fam050 h =>
        exact fam_050_key.covered_of_facts h
    | fam051 h =>
        exact fam_051_key.covered_of_facts h
    | fam052 h =>
        exact fam_052_key.covered_of_facts h
    | fam053 h =>
        exact fam_053_key.covered_of_facts h
    | fam054 h =>
        exact fam_054_key.covered_of_facts h
    | fam055 h =>
        exact fam_055_key.covered_of_facts h
    | fam056 h =>
        exact fam_056_key.covered_of_facts h
    | fam057 h =>
        exact fam_057_key.covered_of_facts h
    | fam058 h =>
        exact fam_058_key.covered_of_facts h
    | fam059 h =>
        exact fam_059_key.covered_of_facts h
    | fam060 h =>
        exact fam_060_key.covered_of_facts h
    | fam061 h =>
        exact fam_061_key.covered_of_facts h
    | fam062 h =>
        exact fam_062_key.covered_of_facts h
    | fam063 h =>
        exact fam_063_key.covered_of_facts h
    | fam064 h =>
        exact fam_064_key.covered_of_facts h
    | fam065 h =>
        exact fam_065_key.covered_of_facts h
    | fam066 h =>
        exact fam_066_key.covered_of_facts h
    | fam067 h =>
        exact fam_067_key.covered_of_facts h
    | fam068 h =>
        exact fam_068_key.covered_of_facts h
    | fam069 h =>
        exact fam_069_key.covered_of_facts h
    | fam070 h =>
        exact fam_070_key.covered_of_facts h
    | fam071 h =>
        exact fam_071_key.covered_of_facts h
    | fam072 h =>
        exact fam_072_key.covered_of_facts h
    | fam073 h =>
        exact fam_073_key.covered_of_facts h

theorem factClassifierKillsOn : factClassifierFamily.KillsOn :=
  factClassifierFamily.killsOn

theorem fam_000_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_000_key r mask) :
    fam_000_key.Matches r mask :=
  fam_000_key.matches_of_facts h

theorem fam_000_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_000_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam000 h

theorem fam_000_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_000_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_000_factsImplyClassifier h)

theorem fam_001_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_001_key r mask) :
    fam_001_key.Matches r mask :=
  fam_001_key.matches_of_facts h

theorem fam_001_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_001_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam001 h

theorem fam_001_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_001_factsImplyClassifier h)

theorem fam_002_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_002_key r mask) :
    fam_002_key.Matches r mask :=
  fam_002_key.matches_of_facts h

theorem fam_002_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_002_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam002 h

theorem fam_002_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_002_factsImplyClassifier h)

theorem fam_003_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_003_key r mask) :
    fam_003_key.Matches r mask :=
  fam_003_key.matches_of_facts h

theorem fam_003_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_003_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam003 h

theorem fam_003_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_003_factsImplyClassifier h)

theorem fam_004_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_004_key r mask) :
    fam_004_key.Matches r mask :=
  fam_004_key.matches_of_facts h

theorem fam_004_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_004_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam004 h

theorem fam_004_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_004_factsImplyClassifier h)

theorem fam_005_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_005_key r mask) :
    fam_005_key.Matches r mask :=
  fam_005_key.matches_of_facts h

theorem fam_005_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_005_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam005 h

theorem fam_005_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_005_factsImplyClassifier h)

theorem fam_006_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_006_key r mask) :
    fam_006_key.Matches r mask :=
  fam_006_key.matches_of_facts h

theorem fam_006_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_006_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam006 h

theorem fam_006_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_006_factsImplyClassifier h)

theorem fam_007_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_007_key r mask) :
    fam_007_key.Matches r mask :=
  fam_007_key.matches_of_facts h

theorem fam_007_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_007_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam007 h

theorem fam_007_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_007_factsImplyClassifier h)

theorem fam_008_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_008_key r mask) :
    fam_008_key.Matches r mask :=
  fam_008_key.matches_of_facts h

theorem fam_008_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_008_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam008 h

theorem fam_008_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_008_factsImplyClassifier h)

theorem fam_009_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_009_key r mask) :
    fam_009_key.Matches r mask :=
  fam_009_key.matches_of_facts h

theorem fam_009_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_009_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam009 h

theorem fam_009_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_009_factsImplyClassifier h)

theorem fam_010_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_010_key r mask) :
    fam_010_key.Matches r mask :=
  fam_010_key.matches_of_facts h

theorem fam_010_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_010_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam010 h

theorem fam_010_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_010_factsImplyClassifier h)

theorem fam_011_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_011_key r mask) :
    fam_011_key.Matches r mask :=
  fam_011_key.matches_of_facts h

theorem fam_011_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_011_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam011 h

theorem fam_011_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_011_factsImplyClassifier h)

theorem fam_012_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_012_key r mask) :
    fam_012_key.Matches r mask :=
  fam_012_key.matches_of_facts h

theorem fam_012_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_012_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam012 h

theorem fam_012_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_012_factsImplyClassifier h)

theorem fam_013_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_013_key r mask) :
    fam_013_key.Matches r mask :=
  fam_013_key.matches_of_facts h

theorem fam_013_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_013_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam013 h

theorem fam_013_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_013_factsImplyClassifier h)

theorem fam_014_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_014_key r mask) :
    fam_014_key.Matches r mask :=
  fam_014_key.matches_of_facts h

theorem fam_014_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_014_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam014 h

theorem fam_014_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_014_factsImplyClassifier h)

theorem fam_015_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_015_key r mask) :
    fam_015_key.Matches r mask :=
  fam_015_key.matches_of_facts h

theorem fam_015_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_015_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam015 h

theorem fam_015_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_015_factsImplyClassifier h)

theorem fam_016_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_016_key r mask) :
    fam_016_key.Matches r mask :=
  fam_016_key.matches_of_facts h

theorem fam_016_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_016_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam016 h

theorem fam_016_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_016_factsImplyClassifier h)

theorem fam_017_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_017_key r mask) :
    fam_017_key.Matches r mask :=
  fam_017_key.matches_of_facts h

theorem fam_017_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_017_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam017 h

theorem fam_017_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_017_factsImplyClassifier h)

theorem fam_018_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_018_key r mask) :
    fam_018_key.Matches r mask :=
  fam_018_key.matches_of_facts h

theorem fam_018_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_018_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam018 h

theorem fam_018_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_018_factsImplyClassifier h)

theorem fam_019_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_019_key r mask) :
    fam_019_key.Matches r mask :=
  fam_019_key.matches_of_facts h

theorem fam_019_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_019_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam019 h

theorem fam_019_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_019_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_019_factsImplyClassifier h)

theorem fam_020_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_020_key r mask) :
    fam_020_key.Matches r mask :=
  fam_020_key.matches_of_facts h

theorem fam_020_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_020_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam020 h

theorem fam_020_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_020_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_020_factsImplyClassifier h)

theorem fam_021_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_021_key r mask) :
    fam_021_key.Matches r mask :=
  fam_021_key.matches_of_facts h

theorem fam_021_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_021_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam021 h

theorem fam_021_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_021_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_021_factsImplyClassifier h)

theorem fam_022_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_022_key r mask) :
    fam_022_key.Matches r mask :=
  fam_022_key.matches_of_facts h

theorem fam_022_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_022_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam022 h

theorem fam_022_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_022_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_022_factsImplyClassifier h)

theorem fam_023_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_023_key r mask) :
    fam_023_key.Matches r mask :=
  fam_023_key.matches_of_facts h

theorem fam_023_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_023_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam023 h

theorem fam_023_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_023_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_023_factsImplyClassifier h)

theorem fam_024_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_024_key r mask) :
    fam_024_key.Matches r mask :=
  fam_024_key.matches_of_facts h

theorem fam_024_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_024_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam024 h

theorem fam_024_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_024_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_024_factsImplyClassifier h)

theorem fam_025_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_025_key r mask) :
    fam_025_key.Matches r mask :=
  fam_025_key.matches_of_facts h

theorem fam_025_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_025_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam025 h

theorem fam_025_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_025_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_025_factsImplyClassifier h)

theorem fam_026_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_026_key r mask) :
    fam_026_key.Matches r mask :=
  fam_026_key.matches_of_facts h

theorem fam_026_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_026_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam026 h

theorem fam_026_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_026_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_026_factsImplyClassifier h)

theorem fam_027_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_027_key r mask) :
    fam_027_key.Matches r mask :=
  fam_027_key.matches_of_facts h

theorem fam_027_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_027_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam027 h

theorem fam_027_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_027_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_027_factsImplyClassifier h)

theorem fam_028_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_028_key r mask) :
    fam_028_key.Matches r mask :=
  fam_028_key.matches_of_facts h

theorem fam_028_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_028_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam028 h

theorem fam_028_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_028_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_028_factsImplyClassifier h)

theorem fam_029_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_029_key r mask) :
    fam_029_key.Matches r mask :=
  fam_029_key.matches_of_facts h

theorem fam_029_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_029_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam029 h

theorem fam_029_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_029_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_029_factsImplyClassifier h)

theorem fam_030_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_030_key r mask) :
    fam_030_key.Matches r mask :=
  fam_030_key.matches_of_facts h

theorem fam_030_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_030_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam030 h

theorem fam_030_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_030_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_030_factsImplyClassifier h)

theorem fam_031_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_031_key r mask) :
    fam_031_key.Matches r mask :=
  fam_031_key.matches_of_facts h

theorem fam_031_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_031_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam031 h

theorem fam_031_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_031_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_031_factsImplyClassifier h)

theorem fam_032_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_032_key r mask) :
    fam_032_key.Matches r mask :=
  fam_032_key.matches_of_facts h

theorem fam_032_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_032_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam032 h

theorem fam_032_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_032_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_032_factsImplyClassifier h)

theorem fam_033_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_033_key r mask) :
    fam_033_key.Matches r mask :=
  fam_033_key.matches_of_facts h

theorem fam_033_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_033_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam033 h

theorem fam_033_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_033_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_033_factsImplyClassifier h)

theorem fam_034_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_034_key r mask) :
    fam_034_key.Matches r mask :=
  fam_034_key.matches_of_facts h

theorem fam_034_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_034_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam034 h

theorem fam_034_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_034_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_034_factsImplyClassifier h)

theorem fam_035_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_035_key r mask) :
    fam_035_key.Matches r mask :=
  fam_035_key.matches_of_facts h

theorem fam_035_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_035_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam035 h

theorem fam_035_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_035_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_035_factsImplyClassifier h)

theorem fam_036_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_036_key r mask) :
    fam_036_key.Matches r mask :=
  fam_036_key.matches_of_facts h

theorem fam_036_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_036_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam036 h

theorem fam_036_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_036_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_036_factsImplyClassifier h)

theorem fam_037_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_037_key r mask) :
    fam_037_key.Matches r mask :=
  fam_037_key.matches_of_facts h

theorem fam_037_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_037_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam037 h

theorem fam_037_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_037_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_037_factsImplyClassifier h)

theorem fam_038_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_038_key r mask) :
    fam_038_key.Matches r mask :=
  fam_038_key.matches_of_facts h

theorem fam_038_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_038_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam038 h

theorem fam_038_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_038_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_038_factsImplyClassifier h)

theorem fam_039_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_039_key r mask) :
    fam_039_key.Matches r mask :=
  fam_039_key.matches_of_facts h

theorem fam_039_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_039_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam039 h

theorem fam_039_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_039_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_039_factsImplyClassifier h)

theorem fam_040_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_040_key r mask) :
    fam_040_key.Matches r mask :=
  fam_040_key.matches_of_facts h

theorem fam_040_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_040_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam040 h

theorem fam_040_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_040_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_040_factsImplyClassifier h)

theorem fam_041_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_041_key r mask) :
    fam_041_key.Matches r mask :=
  fam_041_key.matches_of_facts h

theorem fam_041_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_041_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam041 h

theorem fam_041_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_041_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_041_factsImplyClassifier h)

theorem fam_042_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_042_key r mask) :
    fam_042_key.Matches r mask :=
  fam_042_key.matches_of_facts h

theorem fam_042_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_042_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam042 h

theorem fam_042_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_042_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_042_factsImplyClassifier h)

theorem fam_043_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_043_key r mask) :
    fam_043_key.Matches r mask :=
  fam_043_key.matches_of_facts h

theorem fam_043_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_043_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam043 h

theorem fam_043_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_043_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_043_factsImplyClassifier h)

theorem fam_044_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_044_key r mask) :
    fam_044_key.Matches r mask :=
  fam_044_key.matches_of_facts h

theorem fam_044_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_044_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam044 h

theorem fam_044_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_044_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_044_factsImplyClassifier h)

theorem fam_045_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_045_key r mask) :
    fam_045_key.Matches r mask :=
  fam_045_key.matches_of_facts h

theorem fam_045_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_045_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam045 h

theorem fam_045_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_045_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_045_factsImplyClassifier h)

theorem fam_046_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_046_key r mask) :
    fam_046_key.Matches r mask :=
  fam_046_key.matches_of_facts h

theorem fam_046_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_046_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam046 h

theorem fam_046_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_046_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_046_factsImplyClassifier h)

theorem fam_047_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_047_key r mask) :
    fam_047_key.Matches r mask :=
  fam_047_key.matches_of_facts h

theorem fam_047_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_047_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam047 h

theorem fam_047_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_047_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_047_factsImplyClassifier h)

theorem fam_048_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_048_key r mask) :
    fam_048_key.Matches r mask :=
  fam_048_key.matches_of_facts h

theorem fam_048_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_048_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam048 h

theorem fam_048_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_048_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_048_factsImplyClassifier h)

theorem fam_049_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_049_key r mask) :
    fam_049_key.Matches r mask :=
  fam_049_key.matches_of_facts h

theorem fam_049_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_049_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam049 h

theorem fam_049_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_049_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_049_factsImplyClassifier h)

theorem fam_050_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_050_key r mask) :
    fam_050_key.Matches r mask :=
  fam_050_key.matches_of_facts h

theorem fam_050_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_050_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam050 h

theorem fam_050_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_050_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_050_factsImplyClassifier h)

theorem fam_051_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_051_key r mask) :
    fam_051_key.Matches r mask :=
  fam_051_key.matches_of_facts h

theorem fam_051_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_051_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam051 h

theorem fam_051_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_051_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_051_factsImplyClassifier h)

theorem fam_052_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_052_key r mask) :
    fam_052_key.Matches r mask :=
  fam_052_key.matches_of_facts h

theorem fam_052_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_052_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam052 h

theorem fam_052_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_052_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_052_factsImplyClassifier h)

theorem fam_053_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_053_key r mask) :
    fam_053_key.Matches r mask :=
  fam_053_key.matches_of_facts h

theorem fam_053_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_053_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam053 h

theorem fam_053_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_053_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_053_factsImplyClassifier h)

theorem fam_054_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_054_key r mask) :
    fam_054_key.Matches r mask :=
  fam_054_key.matches_of_facts h

theorem fam_054_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_054_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam054 h

theorem fam_054_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_054_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_054_factsImplyClassifier h)

theorem fam_055_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_055_key r mask) :
    fam_055_key.Matches r mask :=
  fam_055_key.matches_of_facts h

theorem fam_055_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_055_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam055 h

theorem fam_055_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_055_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_055_factsImplyClassifier h)

theorem fam_056_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_056_key r mask) :
    fam_056_key.Matches r mask :=
  fam_056_key.matches_of_facts h

theorem fam_056_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_056_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam056 h

theorem fam_056_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_056_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_056_factsImplyClassifier h)

theorem fam_057_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_057_key r mask) :
    fam_057_key.Matches r mask :=
  fam_057_key.matches_of_facts h

theorem fam_057_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_057_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam057 h

theorem fam_057_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_057_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_057_factsImplyClassifier h)

theorem fam_058_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_058_key r mask) :
    fam_058_key.Matches r mask :=
  fam_058_key.matches_of_facts h

theorem fam_058_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_058_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam058 h

theorem fam_058_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_058_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_058_factsImplyClassifier h)

theorem fam_059_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_059_key r mask) :
    fam_059_key.Matches r mask :=
  fam_059_key.matches_of_facts h

theorem fam_059_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_059_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam059 h

theorem fam_059_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_059_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_059_factsImplyClassifier h)

theorem fam_060_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_060_key r mask) :
    fam_060_key.Matches r mask :=
  fam_060_key.matches_of_facts h

theorem fam_060_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_060_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam060 h

theorem fam_060_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_060_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_060_factsImplyClassifier h)

theorem fam_061_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_061_key r mask) :
    fam_061_key.Matches r mask :=
  fam_061_key.matches_of_facts h

theorem fam_061_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_061_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam061 h

theorem fam_061_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_061_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_061_factsImplyClassifier h)

theorem fam_062_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_062_key r mask) :
    fam_062_key.Matches r mask :=
  fam_062_key.matches_of_facts h

theorem fam_062_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_062_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam062 h

theorem fam_062_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_062_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_062_factsImplyClassifier h)

theorem fam_063_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_063_key r mask) :
    fam_063_key.Matches r mask :=
  fam_063_key.matches_of_facts h

theorem fam_063_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_063_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam063 h

theorem fam_063_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_063_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_063_factsImplyClassifier h)

theorem fam_064_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_064_key r mask) :
    fam_064_key.Matches r mask :=
  fam_064_key.matches_of_facts h

theorem fam_064_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_064_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam064 h

theorem fam_064_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_064_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_064_factsImplyClassifier h)

theorem fam_065_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_065_key r mask) :
    fam_065_key.Matches r mask :=
  fam_065_key.matches_of_facts h

theorem fam_065_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_065_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam065 h

theorem fam_065_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_065_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_065_factsImplyClassifier h)

theorem fam_066_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_066_key r mask) :
    fam_066_key.Matches r mask :=
  fam_066_key.matches_of_facts h

theorem fam_066_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_066_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam066 h

theorem fam_066_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_066_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_066_factsImplyClassifier h)

theorem fam_067_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_067_key r mask) :
    fam_067_key.Matches r mask :=
  fam_067_key.matches_of_facts h

theorem fam_067_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_067_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam067 h

theorem fam_067_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_067_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_067_factsImplyClassifier h)

theorem fam_068_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_068_key r mask) :
    fam_068_key.Matches r mask :=
  fam_068_key.matches_of_facts h

theorem fam_068_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_068_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam068 h

theorem fam_068_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_068_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_068_factsImplyClassifier h)

theorem fam_069_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_069_key r mask) :
    fam_069_key.Matches r mask :=
  fam_069_key.matches_of_facts h

theorem fam_069_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_069_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam069 h

theorem fam_069_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_069_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_069_factsImplyClassifier h)

theorem fam_070_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_070_key r mask) :
    fam_070_key.Matches r mask :=
  fam_070_key.matches_of_facts h

theorem fam_070_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_070_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam070 h

theorem fam_070_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_070_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_070_factsImplyClassifier h)

theorem fam_071_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_071_key r mask) :
    fam_071_key.Matches r mask :=
  fam_071_key.matches_of_facts h

theorem fam_071_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_071_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam071 h

theorem fam_071_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_071_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_071_factsImplyClassifier h)

theorem fam_072_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_072_key r mask) :
    fam_072_key.Matches r mask :=
  fam_072_key.matches_of_facts h

theorem fam_072_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_072_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam072 h

theorem fam_072_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_072_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_072_factsImplyClassifier h)

theorem fam_073_factsImplyKey
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_073_key r mask) :
    fam_073_key.Matches r mask :=
  fam_073_key.matches_of_facts h

theorem fam_073_factsImplyClassifier
    {r : Nat} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_073_key r mask) :
    FactClassifierApplies r mask :=
  FactClassifierApplies.fam073 h

theorem fam_073_factsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : SourceIndexStateKeyFacts fam_073_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  factClassifierKillsOn r hlt mask (fam_073_factsImplyClassifier h)

theorem sourceIndexStateKeyFactsSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateKeyFactsSmoke
