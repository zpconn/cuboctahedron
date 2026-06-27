import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated split source/row facts smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof. It proves that separately supplied source facts and
row facts imply key facts and route to classifier branches.
Phase: 6Z.6K.8Q.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSplitFactsSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

set_option linter.unusedVariables false

/-- Split-facts smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 421. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 134. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 128. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 102. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 79. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 44. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_005_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 1
  support := fam_005_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 30. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_006_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 13
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 29. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_007_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 15
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 23. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_008_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 11
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 22. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_009_key : SourceIndexStateKey where
  firstIndex := 26
  secondIndex := 3
  support := fam_009_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Split-facts smoke family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 22. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_010_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 10
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 21. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_key : SourceIndexStateKey where
  firstIndex := 183
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 20. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_012_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 14
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 19. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_013_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 0
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 19. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_014_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 0
  support := fam_014_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 19. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_015_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 16
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 19. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_016_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 7
  support := fam_016_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 18. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_017_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 12
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Split-facts smoke family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 17. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_018_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 0
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 15. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_019_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 0
  support := fam_019_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 14. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_020_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 2
  support := fam_020_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 13. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_021_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 7
  support := fam_021_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 12. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_022_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 15
  support := fam_022_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 11. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_023_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 11. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_024_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 14
  support := fam_024_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 10. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_025_key : SourceIndexStateKey where
  firstIndex := 84
  secondIndex := 3
  support := fam_025_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Split-facts smoke family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 10. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_026_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 0
  support := fam_026_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 10. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_027_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 0
  support := fam_027_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 9. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_028_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 11
  support := fam_028_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 9. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_029_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 11
  support := fam_029_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 9. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_030_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 15
  support := fam_030_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 8. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_031_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 0
  support := fam_031_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 7. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_032_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 7. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_033_key : SourceIndexStateKey where
  firstIndex := 184
  secondIndex := 1
  support := fam_033_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 7. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_034_key : SourceIndexStateKey where
  firstIndex := 175
  secondIndex := 1
  support := fam_034_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 7. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_035_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 13
  support := fam_035_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 6. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_036_key : SourceIndexStateKey where
  firstIndex := 167
  secondIndex := 0
  support := fam_036_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 6. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_037_key : SourceIndexStateKey where
  firstIndex := 105
  secondIndex := 0
  support := fam_037_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_038_key : SourceIndexStateKey where
  firstIndex := 96
  secondIndex := 1
  support := fam_038_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 6. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_039_key : SourceIndexStateKey where
  firstIndex := 109
  secondIndex := 1
  support := fam_039_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 6. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_040_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 16
  support := fam_040_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 6. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_041_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 13
  support := fam_041_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 5. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_042_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 1
  support := fam_042_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 5. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_043_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 12
  support := fam_043_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 5. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_044_key : SourceIndexStateKey where
  firstIndex := 1
  secondIndex := 10
  support := fam_044_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Split-facts smoke family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 4. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_045_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_045_support
  template := SourceIndexTemplate.axisAOnly

/-- Split-facts smoke family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_046_key : SourceIndexStateKey where
  firstIndex := 121
  secondIndex := 0
  support := fam_046_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_047_key : SourceIndexStateKey where
  firstIndex := 147
  secondIndex := 0
  support := fam_047_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 3. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_048_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_048_support
  template := SourceIndexTemplate.axisAOnly

/-- Split-facts smoke family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 3. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_049_key : SourceIndexStateKey where
  firstIndex := 115
  secondIndex := 0
  support := fam_049_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 3. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_050_key : SourceIndexStateKey where
  firstIndex := 168
  secondIndex := 1
  support := fam_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 3. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_051_key : SourceIndexStateKey where
  firstIndex := 122
  secondIndex := 1
  support := fam_051_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 3. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_052_key : SourceIndexStateKey where
  firstIndex := 106
  secondIndex := 1
  support := fam_052_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 3. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_053_key : SourceIndexStateKey where
  firstIndex := 162
  secondIndex := 2
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 3. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_054_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 2
  support := fam_054_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 2. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_055_key : SourceIndexStateKey where
  firstIndex := 44
  secondIndex := 5
  support := fam_055_support
  template := SourceIndexTemplate.axisAOnly

/-- Split-facts smoke family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 2. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_056_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 11
  support := fam_056_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Split-facts smoke family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 2. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_057_key : SourceIndexStateKey where
  firstIndex := 148
  secondIndex := 1
  support := fam_057_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `e123e95ce12fb8512a98acdcdc060cc8e1427e5e426c456b02f2df50bb835096`.
Observed bounded GoodDirection cases: 2. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_058_key : SourceIndexStateKey where
  firstIndex := 129
  secondIndex := 2
  support := fam_058_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 2. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_059_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 12
  support := fam_059_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 2. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_060_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 14
  support := fam_060_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 2. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_061_key : SourceIndexStateKey where
  firstIndex := 2
  secondIndex := 10
  support := fam_061_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Split-facts smoke family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_062_key : SourceIndexStateKey where
  firstIndex := 3
  secondIndex := 12
  support := fam_062_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Split-facts smoke family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 1. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_063_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 0
  support := fam_063_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 1. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_064_key : SourceIndexStateKey where
  firstIndex := 141
  secondIndex := 0
  support := fam_064_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Split-facts smoke family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 1. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_065_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 1
  support := fam_065_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 1. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_066_key : SourceIndexStateKey where
  firstIndex := 136
  secondIndex := 1
  support := fam_066_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_067_key : SourceIndexStateKey where
  firstIndex := 110
  secondIndex := 1
  support := fam_067_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 1. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_068_key : SourceIndexStateKey where
  firstIndex := 161
  secondIndex := 1
  support := fam_068_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 1. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_069_key : SourceIndexStateKey where
  firstIndex := 142
  secondIndex := 1
  support := fam_069_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 1. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_070_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 1
  support := fam_070_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 1. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_071_key : SourceIndexStateKey where
  firstIndex := 120
  secondIndex := 1
  support := fam_071_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Split-facts smoke family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 1. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_072_key : SourceIndexStateKey where
  firstIndex := 149
  secondIndex := 2
  support := fam_072_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Split-facts smoke family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 1. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_073_key : SourceIndexStateKey where
  firstIndex := 135
  secondIndex := 2
  support := fam_073_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

inductive SplitFactClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_000_key r mask) (hrows : SourceIndexStateRowFacts fam_000_key r mask) : SplitFactClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_001_key r mask) (hrows : SourceIndexStateRowFacts fam_001_key r mask) : SplitFactClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_002_key r mask) (hrows : SourceIndexStateRowFacts fam_002_key r mask) : SplitFactClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_003_key r mask) (hrows : SourceIndexStateRowFacts fam_003_key r mask) : SplitFactClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_004_key r mask) (hrows : SourceIndexStateRowFacts fam_004_key r mask) : SplitFactClassifierApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_005_key r mask) (hrows : SourceIndexStateRowFacts fam_005_key r mask) : SplitFactClassifierApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_006_key r mask) (hrows : SourceIndexStateRowFacts fam_006_key r mask) : SplitFactClassifierApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_007_key r mask) (hrows : SourceIndexStateRowFacts fam_007_key r mask) : SplitFactClassifierApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_008_key r mask) (hrows : SourceIndexStateRowFacts fam_008_key r mask) : SplitFactClassifierApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_009_key r mask) (hrows : SourceIndexStateRowFacts fam_009_key r mask) : SplitFactClassifierApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_010_key r mask) (hrows : SourceIndexStateRowFacts fam_010_key r mask) : SplitFactClassifierApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_011_key r mask) (hrows : SourceIndexStateRowFacts fam_011_key r mask) : SplitFactClassifierApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_012_key r mask) (hrows : SourceIndexStateRowFacts fam_012_key r mask) : SplitFactClassifierApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_013_key r mask) (hrows : SourceIndexStateRowFacts fam_013_key r mask) : SplitFactClassifierApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_014_key r mask) (hrows : SourceIndexStateRowFacts fam_014_key r mask) : SplitFactClassifierApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_015_key r mask) (hrows : SourceIndexStateRowFacts fam_015_key r mask) : SplitFactClassifierApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_016_key r mask) (hrows : SourceIndexStateRowFacts fam_016_key r mask) : SplitFactClassifierApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_017_key r mask) (hrows : SourceIndexStateRowFacts fam_017_key r mask) : SplitFactClassifierApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_018_key r mask) (hrows : SourceIndexStateRowFacts fam_018_key r mask) : SplitFactClassifierApplies r mask
  | fam019 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_019_key r mask) (hrows : SourceIndexStateRowFacts fam_019_key r mask) : SplitFactClassifierApplies r mask
  | fam020 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_020_key r mask) (hrows : SourceIndexStateRowFacts fam_020_key r mask) : SplitFactClassifierApplies r mask
  | fam021 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_021_key r mask) (hrows : SourceIndexStateRowFacts fam_021_key r mask) : SplitFactClassifierApplies r mask
  | fam022 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_022_key r mask) (hrows : SourceIndexStateRowFacts fam_022_key r mask) : SplitFactClassifierApplies r mask
  | fam023 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_023_key r mask) (hrows : SourceIndexStateRowFacts fam_023_key r mask) : SplitFactClassifierApplies r mask
  | fam024 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_024_key r mask) (hrows : SourceIndexStateRowFacts fam_024_key r mask) : SplitFactClassifierApplies r mask
  | fam025 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_025_key r mask) (hrows : SourceIndexStateRowFacts fam_025_key r mask) : SplitFactClassifierApplies r mask
  | fam026 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_026_key r mask) (hrows : SourceIndexStateRowFacts fam_026_key r mask) : SplitFactClassifierApplies r mask
  | fam027 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_027_key r mask) (hrows : SourceIndexStateRowFacts fam_027_key r mask) : SplitFactClassifierApplies r mask
  | fam028 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_028_key r mask) (hrows : SourceIndexStateRowFacts fam_028_key r mask) : SplitFactClassifierApplies r mask
  | fam029 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_029_key r mask) (hrows : SourceIndexStateRowFacts fam_029_key r mask) : SplitFactClassifierApplies r mask
  | fam030 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_030_key r mask) (hrows : SourceIndexStateRowFacts fam_030_key r mask) : SplitFactClassifierApplies r mask
  | fam031 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_031_key r mask) (hrows : SourceIndexStateRowFacts fam_031_key r mask) : SplitFactClassifierApplies r mask
  | fam032 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_032_key r mask) (hrows : SourceIndexStateRowFacts fam_032_key r mask) : SplitFactClassifierApplies r mask
  | fam033 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_033_key r mask) (hrows : SourceIndexStateRowFacts fam_033_key r mask) : SplitFactClassifierApplies r mask
  | fam034 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_034_key r mask) (hrows : SourceIndexStateRowFacts fam_034_key r mask) : SplitFactClassifierApplies r mask
  | fam035 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_035_key r mask) (hrows : SourceIndexStateRowFacts fam_035_key r mask) : SplitFactClassifierApplies r mask
  | fam036 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_036_key r mask) (hrows : SourceIndexStateRowFacts fam_036_key r mask) : SplitFactClassifierApplies r mask
  | fam037 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_037_key r mask) (hrows : SourceIndexStateRowFacts fam_037_key r mask) : SplitFactClassifierApplies r mask
  | fam038 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_038_key r mask) (hrows : SourceIndexStateRowFacts fam_038_key r mask) : SplitFactClassifierApplies r mask
  | fam039 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_039_key r mask) (hrows : SourceIndexStateRowFacts fam_039_key r mask) : SplitFactClassifierApplies r mask
  | fam040 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_040_key r mask) (hrows : SourceIndexStateRowFacts fam_040_key r mask) : SplitFactClassifierApplies r mask
  | fam041 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_041_key r mask) (hrows : SourceIndexStateRowFacts fam_041_key r mask) : SplitFactClassifierApplies r mask
  | fam042 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_042_key r mask) (hrows : SourceIndexStateRowFacts fam_042_key r mask) : SplitFactClassifierApplies r mask
  | fam043 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_043_key r mask) (hrows : SourceIndexStateRowFacts fam_043_key r mask) : SplitFactClassifierApplies r mask
  | fam044 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_044_key r mask) (hrows : SourceIndexStateRowFacts fam_044_key r mask) : SplitFactClassifierApplies r mask
  | fam045 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_045_key r mask) (hrows : SourceIndexStateRowFacts fam_045_key r mask) : SplitFactClassifierApplies r mask
  | fam046 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_046_key r mask) (hrows : SourceIndexStateRowFacts fam_046_key r mask) : SplitFactClassifierApplies r mask
  | fam047 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_047_key r mask) (hrows : SourceIndexStateRowFacts fam_047_key r mask) : SplitFactClassifierApplies r mask
  | fam048 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_048_key r mask) (hrows : SourceIndexStateRowFacts fam_048_key r mask) : SplitFactClassifierApplies r mask
  | fam049 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_049_key r mask) (hrows : SourceIndexStateRowFacts fam_049_key r mask) : SplitFactClassifierApplies r mask
  | fam050 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_050_key r mask) (hrows : SourceIndexStateRowFacts fam_050_key r mask) : SplitFactClassifierApplies r mask
  | fam051 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_051_key r mask) (hrows : SourceIndexStateRowFacts fam_051_key r mask) : SplitFactClassifierApplies r mask
  | fam052 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_052_key r mask) (hrows : SourceIndexStateRowFacts fam_052_key r mask) : SplitFactClassifierApplies r mask
  | fam053 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_053_key r mask) (hrows : SourceIndexStateRowFacts fam_053_key r mask) : SplitFactClassifierApplies r mask
  | fam054 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_054_key r mask) (hrows : SourceIndexStateRowFacts fam_054_key r mask) : SplitFactClassifierApplies r mask
  | fam055 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_055_key r mask) (hrows : SourceIndexStateRowFacts fam_055_key r mask) : SplitFactClassifierApplies r mask
  | fam056 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_056_key r mask) (hrows : SourceIndexStateRowFacts fam_056_key r mask) : SplitFactClassifierApplies r mask
  | fam057 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_057_key r mask) (hrows : SourceIndexStateRowFacts fam_057_key r mask) : SplitFactClassifierApplies r mask
  | fam058 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_058_key r mask) (hrows : SourceIndexStateRowFacts fam_058_key r mask) : SplitFactClassifierApplies r mask
  | fam059 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_059_key r mask) (hrows : SourceIndexStateRowFacts fam_059_key r mask) : SplitFactClassifierApplies r mask
  | fam060 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_060_key r mask) (hrows : SourceIndexStateRowFacts fam_060_key r mask) : SplitFactClassifierApplies r mask
  | fam061 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_061_key r mask) (hrows : SourceIndexStateRowFacts fam_061_key r mask) : SplitFactClassifierApplies r mask
  | fam062 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_062_key r mask) (hrows : SourceIndexStateRowFacts fam_062_key r mask) : SplitFactClassifierApplies r mask
  | fam063 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_063_key r mask) (hrows : SourceIndexStateRowFacts fam_063_key r mask) : SplitFactClassifierApplies r mask
  | fam064 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_064_key r mask) (hrows : SourceIndexStateRowFacts fam_064_key r mask) : SplitFactClassifierApplies r mask
  | fam065 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_065_key r mask) (hrows : SourceIndexStateRowFacts fam_065_key r mask) : SplitFactClassifierApplies r mask
  | fam066 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_066_key r mask) (hrows : SourceIndexStateRowFacts fam_066_key r mask) : SplitFactClassifierApplies r mask
  | fam067 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_067_key r mask) (hrows : SourceIndexStateRowFacts fam_067_key r mask) : SplitFactClassifierApplies r mask
  | fam068 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_068_key r mask) (hrows : SourceIndexStateRowFacts fam_068_key r mask) : SplitFactClassifierApplies r mask
  | fam069 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_069_key r mask) (hrows : SourceIndexStateRowFacts fam_069_key r mask) : SplitFactClassifierApplies r mask
  | fam070 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_070_key r mask) (hrows : SourceIndexStateRowFacts fam_070_key r mask) : SplitFactClassifierApplies r mask
  | fam071 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_071_key r mask) (hrows : SourceIndexStateRowFacts fam_071_key r mask) : SplitFactClassifierApplies r mask
  | fam072 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_072_key r mask) (hrows : SourceIndexStateRowFacts fam_072_key r mask) : SplitFactClassifierApplies r mask
  | fam073 {r : Nat} {mask : SignMask} (hsource : SourceIndexStateSourceFacts fam_073_key r mask) (hrows : SourceIndexStateRowFacts fam_073_key r mask) : SplitFactClassifierApplies r mask

def splitFactClassifierFamily : RowPropertyMembershipFamily where
  Applies := SplitFactClassifierApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 hsource hrows =>
        exact fam_000_key.covered_of_source_row hsource hrows
    | fam001 hsource hrows =>
        exact fam_001_key.covered_of_source_row hsource hrows
    | fam002 hsource hrows =>
        exact fam_002_key.covered_of_source_row hsource hrows
    | fam003 hsource hrows =>
        exact fam_003_key.covered_of_source_row hsource hrows
    | fam004 hsource hrows =>
        exact fam_004_key.covered_of_source_row hsource hrows
    | fam005 hsource hrows =>
        exact fam_005_key.covered_of_source_row hsource hrows
    | fam006 hsource hrows =>
        exact fam_006_key.covered_of_source_row hsource hrows
    | fam007 hsource hrows =>
        exact fam_007_key.covered_of_source_row hsource hrows
    | fam008 hsource hrows =>
        exact fam_008_key.covered_of_source_row hsource hrows
    | fam009 hsource hrows =>
        exact fam_009_key.covered_of_source_row hsource hrows
    | fam010 hsource hrows =>
        exact fam_010_key.covered_of_source_row hsource hrows
    | fam011 hsource hrows =>
        exact fam_011_key.covered_of_source_row hsource hrows
    | fam012 hsource hrows =>
        exact fam_012_key.covered_of_source_row hsource hrows
    | fam013 hsource hrows =>
        exact fam_013_key.covered_of_source_row hsource hrows
    | fam014 hsource hrows =>
        exact fam_014_key.covered_of_source_row hsource hrows
    | fam015 hsource hrows =>
        exact fam_015_key.covered_of_source_row hsource hrows
    | fam016 hsource hrows =>
        exact fam_016_key.covered_of_source_row hsource hrows
    | fam017 hsource hrows =>
        exact fam_017_key.covered_of_source_row hsource hrows
    | fam018 hsource hrows =>
        exact fam_018_key.covered_of_source_row hsource hrows
    | fam019 hsource hrows =>
        exact fam_019_key.covered_of_source_row hsource hrows
    | fam020 hsource hrows =>
        exact fam_020_key.covered_of_source_row hsource hrows
    | fam021 hsource hrows =>
        exact fam_021_key.covered_of_source_row hsource hrows
    | fam022 hsource hrows =>
        exact fam_022_key.covered_of_source_row hsource hrows
    | fam023 hsource hrows =>
        exact fam_023_key.covered_of_source_row hsource hrows
    | fam024 hsource hrows =>
        exact fam_024_key.covered_of_source_row hsource hrows
    | fam025 hsource hrows =>
        exact fam_025_key.covered_of_source_row hsource hrows
    | fam026 hsource hrows =>
        exact fam_026_key.covered_of_source_row hsource hrows
    | fam027 hsource hrows =>
        exact fam_027_key.covered_of_source_row hsource hrows
    | fam028 hsource hrows =>
        exact fam_028_key.covered_of_source_row hsource hrows
    | fam029 hsource hrows =>
        exact fam_029_key.covered_of_source_row hsource hrows
    | fam030 hsource hrows =>
        exact fam_030_key.covered_of_source_row hsource hrows
    | fam031 hsource hrows =>
        exact fam_031_key.covered_of_source_row hsource hrows
    | fam032 hsource hrows =>
        exact fam_032_key.covered_of_source_row hsource hrows
    | fam033 hsource hrows =>
        exact fam_033_key.covered_of_source_row hsource hrows
    | fam034 hsource hrows =>
        exact fam_034_key.covered_of_source_row hsource hrows
    | fam035 hsource hrows =>
        exact fam_035_key.covered_of_source_row hsource hrows
    | fam036 hsource hrows =>
        exact fam_036_key.covered_of_source_row hsource hrows
    | fam037 hsource hrows =>
        exact fam_037_key.covered_of_source_row hsource hrows
    | fam038 hsource hrows =>
        exact fam_038_key.covered_of_source_row hsource hrows
    | fam039 hsource hrows =>
        exact fam_039_key.covered_of_source_row hsource hrows
    | fam040 hsource hrows =>
        exact fam_040_key.covered_of_source_row hsource hrows
    | fam041 hsource hrows =>
        exact fam_041_key.covered_of_source_row hsource hrows
    | fam042 hsource hrows =>
        exact fam_042_key.covered_of_source_row hsource hrows
    | fam043 hsource hrows =>
        exact fam_043_key.covered_of_source_row hsource hrows
    | fam044 hsource hrows =>
        exact fam_044_key.covered_of_source_row hsource hrows
    | fam045 hsource hrows =>
        exact fam_045_key.covered_of_source_row hsource hrows
    | fam046 hsource hrows =>
        exact fam_046_key.covered_of_source_row hsource hrows
    | fam047 hsource hrows =>
        exact fam_047_key.covered_of_source_row hsource hrows
    | fam048 hsource hrows =>
        exact fam_048_key.covered_of_source_row hsource hrows
    | fam049 hsource hrows =>
        exact fam_049_key.covered_of_source_row hsource hrows
    | fam050 hsource hrows =>
        exact fam_050_key.covered_of_source_row hsource hrows
    | fam051 hsource hrows =>
        exact fam_051_key.covered_of_source_row hsource hrows
    | fam052 hsource hrows =>
        exact fam_052_key.covered_of_source_row hsource hrows
    | fam053 hsource hrows =>
        exact fam_053_key.covered_of_source_row hsource hrows
    | fam054 hsource hrows =>
        exact fam_054_key.covered_of_source_row hsource hrows
    | fam055 hsource hrows =>
        exact fam_055_key.covered_of_source_row hsource hrows
    | fam056 hsource hrows =>
        exact fam_056_key.covered_of_source_row hsource hrows
    | fam057 hsource hrows =>
        exact fam_057_key.covered_of_source_row hsource hrows
    | fam058 hsource hrows =>
        exact fam_058_key.covered_of_source_row hsource hrows
    | fam059 hsource hrows =>
        exact fam_059_key.covered_of_source_row hsource hrows
    | fam060 hsource hrows =>
        exact fam_060_key.covered_of_source_row hsource hrows
    | fam061 hsource hrows =>
        exact fam_061_key.covered_of_source_row hsource hrows
    | fam062 hsource hrows =>
        exact fam_062_key.covered_of_source_row hsource hrows
    | fam063 hsource hrows =>
        exact fam_063_key.covered_of_source_row hsource hrows
    | fam064 hsource hrows =>
        exact fam_064_key.covered_of_source_row hsource hrows
    | fam065 hsource hrows =>
        exact fam_065_key.covered_of_source_row hsource hrows
    | fam066 hsource hrows =>
        exact fam_066_key.covered_of_source_row hsource hrows
    | fam067 hsource hrows =>
        exact fam_067_key.covered_of_source_row hsource hrows
    | fam068 hsource hrows =>
        exact fam_068_key.covered_of_source_row hsource hrows
    | fam069 hsource hrows =>
        exact fam_069_key.covered_of_source_row hsource hrows
    | fam070 hsource hrows =>
        exact fam_070_key.covered_of_source_row hsource hrows
    | fam071 hsource hrows =>
        exact fam_071_key.covered_of_source_row hsource hrows
    | fam072 hsource hrows =>
        exact fam_072_key.covered_of_source_row hsource hrows
    | fam073 hsource hrows =>
        exact fam_073_key.covered_of_source_row hsource hrows

theorem splitFactClassifierKillsOn : splitFactClassifierFamily.KillsOn :=
  splitFactClassifierFamily.killsOn

theorem fam_000_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    SourceIndexStateKeyFacts fam_000_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_000_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam000 hsource hrows

theorem fam_000_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_000_key r mask)
    (hrows : SourceIndexStateRowFacts fam_000_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_000_splitFactsImplyClassifier hsource hrows)

theorem fam_001_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    SourceIndexStateKeyFacts fam_001_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_001_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam001 hsource hrows

theorem fam_001_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_001_key r mask)
    (hrows : SourceIndexStateRowFacts fam_001_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_001_splitFactsImplyClassifier hsource hrows)

theorem fam_002_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    SourceIndexStateKeyFacts fam_002_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_002_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam002 hsource hrows

theorem fam_002_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_002_key r mask)
    (hrows : SourceIndexStateRowFacts fam_002_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_002_splitFactsImplyClassifier hsource hrows)

theorem fam_003_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    SourceIndexStateKeyFacts fam_003_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_003_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam003 hsource hrows

theorem fam_003_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_003_key r mask)
    (hrows : SourceIndexStateRowFacts fam_003_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_003_splitFactsImplyClassifier hsource hrows)

theorem fam_004_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    SourceIndexStateKeyFacts fam_004_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_004_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam004 hsource hrows

theorem fam_004_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_004_key r mask)
    (hrows : SourceIndexStateRowFacts fam_004_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_004_splitFactsImplyClassifier hsource hrows)

theorem fam_005_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    SourceIndexStateKeyFacts fam_005_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_005_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam005 hsource hrows

theorem fam_005_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_005_key r mask)
    (hrows : SourceIndexStateRowFacts fam_005_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_005_splitFactsImplyClassifier hsource hrows)

theorem fam_006_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    SourceIndexStateKeyFacts fam_006_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_006_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam006 hsource hrows

theorem fam_006_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_006_key r mask)
    (hrows : SourceIndexStateRowFacts fam_006_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_006_splitFactsImplyClassifier hsource hrows)

theorem fam_007_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    SourceIndexStateKeyFacts fam_007_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_007_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam007 hsource hrows

theorem fam_007_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_007_key r mask)
    (hrows : SourceIndexStateRowFacts fam_007_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_007_splitFactsImplyClassifier hsource hrows)

theorem fam_008_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    SourceIndexStateKeyFacts fam_008_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_008_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam008 hsource hrows

theorem fam_008_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_008_key r mask)
    (hrows : SourceIndexStateRowFacts fam_008_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_008_splitFactsImplyClassifier hsource hrows)

theorem fam_009_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    SourceIndexStateKeyFacts fam_009_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_009_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam009 hsource hrows

theorem fam_009_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_009_key r mask)
    (hrows : SourceIndexStateRowFacts fam_009_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_009_splitFactsImplyClassifier hsource hrows)

theorem fam_010_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    SourceIndexStateKeyFacts fam_010_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_010_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam010 hsource hrows

theorem fam_010_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_010_key r mask)
    (hrows : SourceIndexStateRowFacts fam_010_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_010_splitFactsImplyClassifier hsource hrows)

theorem fam_011_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    SourceIndexStateKeyFacts fam_011_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_011_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam011 hsource hrows

theorem fam_011_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_011_key r mask)
    (hrows : SourceIndexStateRowFacts fam_011_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_011_splitFactsImplyClassifier hsource hrows)

theorem fam_012_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    SourceIndexStateKeyFacts fam_012_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_012_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam012 hsource hrows

theorem fam_012_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_012_key r mask)
    (hrows : SourceIndexStateRowFacts fam_012_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_012_splitFactsImplyClassifier hsource hrows)

theorem fam_013_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    SourceIndexStateKeyFacts fam_013_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_013_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam013 hsource hrows

theorem fam_013_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_013_key r mask)
    (hrows : SourceIndexStateRowFacts fam_013_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_013_splitFactsImplyClassifier hsource hrows)

theorem fam_014_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    SourceIndexStateKeyFacts fam_014_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_014_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam014 hsource hrows

theorem fam_014_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_014_key r mask)
    (hrows : SourceIndexStateRowFacts fam_014_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_014_splitFactsImplyClassifier hsource hrows)

theorem fam_015_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    SourceIndexStateKeyFacts fam_015_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_015_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam015 hsource hrows

theorem fam_015_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_015_key r mask)
    (hrows : SourceIndexStateRowFacts fam_015_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_015_splitFactsImplyClassifier hsource hrows)

theorem fam_016_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    SourceIndexStateKeyFacts fam_016_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_016_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam016 hsource hrows

theorem fam_016_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_016_key r mask)
    (hrows : SourceIndexStateRowFacts fam_016_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_016_splitFactsImplyClassifier hsource hrows)

theorem fam_017_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    SourceIndexStateKeyFacts fam_017_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_017_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam017 hsource hrows

theorem fam_017_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_017_key r mask)
    (hrows : SourceIndexStateRowFacts fam_017_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_017_splitFactsImplyClassifier hsource hrows)

theorem fam_018_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    SourceIndexStateKeyFacts fam_018_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_018_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam018 hsource hrows

theorem fam_018_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_018_key r mask)
    (hrows : SourceIndexStateRowFacts fam_018_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_018_splitFactsImplyClassifier hsource hrows)

theorem fam_019_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_019_key r mask)
    (hrows : SourceIndexStateRowFacts fam_019_key r mask) :
    SourceIndexStateKeyFacts fam_019_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_019_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_019_key r mask)
    (hrows : SourceIndexStateRowFacts fam_019_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam019 hsource hrows

theorem fam_019_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_019_key r mask)
    (hrows : SourceIndexStateRowFacts fam_019_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_019_splitFactsImplyClassifier hsource hrows)

theorem fam_020_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_020_key r mask)
    (hrows : SourceIndexStateRowFacts fam_020_key r mask) :
    SourceIndexStateKeyFacts fam_020_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_020_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_020_key r mask)
    (hrows : SourceIndexStateRowFacts fam_020_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam020 hsource hrows

theorem fam_020_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_020_key r mask)
    (hrows : SourceIndexStateRowFacts fam_020_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_020_splitFactsImplyClassifier hsource hrows)

theorem fam_021_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_021_key r mask)
    (hrows : SourceIndexStateRowFacts fam_021_key r mask) :
    SourceIndexStateKeyFacts fam_021_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_021_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_021_key r mask)
    (hrows : SourceIndexStateRowFacts fam_021_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam021 hsource hrows

theorem fam_021_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_021_key r mask)
    (hrows : SourceIndexStateRowFacts fam_021_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_021_splitFactsImplyClassifier hsource hrows)

theorem fam_022_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_022_key r mask)
    (hrows : SourceIndexStateRowFacts fam_022_key r mask) :
    SourceIndexStateKeyFacts fam_022_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_022_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_022_key r mask)
    (hrows : SourceIndexStateRowFacts fam_022_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam022 hsource hrows

theorem fam_022_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_022_key r mask)
    (hrows : SourceIndexStateRowFacts fam_022_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_022_splitFactsImplyClassifier hsource hrows)

theorem fam_023_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_023_key r mask)
    (hrows : SourceIndexStateRowFacts fam_023_key r mask) :
    SourceIndexStateKeyFacts fam_023_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_023_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_023_key r mask)
    (hrows : SourceIndexStateRowFacts fam_023_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam023 hsource hrows

theorem fam_023_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_023_key r mask)
    (hrows : SourceIndexStateRowFacts fam_023_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_023_splitFactsImplyClassifier hsource hrows)

theorem fam_024_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_024_key r mask)
    (hrows : SourceIndexStateRowFacts fam_024_key r mask) :
    SourceIndexStateKeyFacts fam_024_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_024_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_024_key r mask)
    (hrows : SourceIndexStateRowFacts fam_024_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam024 hsource hrows

theorem fam_024_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_024_key r mask)
    (hrows : SourceIndexStateRowFacts fam_024_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_024_splitFactsImplyClassifier hsource hrows)

theorem fam_025_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_025_key r mask)
    (hrows : SourceIndexStateRowFacts fam_025_key r mask) :
    SourceIndexStateKeyFacts fam_025_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_025_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_025_key r mask)
    (hrows : SourceIndexStateRowFacts fam_025_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam025 hsource hrows

theorem fam_025_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_025_key r mask)
    (hrows : SourceIndexStateRowFacts fam_025_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_025_splitFactsImplyClassifier hsource hrows)

theorem fam_026_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_026_key r mask)
    (hrows : SourceIndexStateRowFacts fam_026_key r mask) :
    SourceIndexStateKeyFacts fam_026_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_026_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_026_key r mask)
    (hrows : SourceIndexStateRowFacts fam_026_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam026 hsource hrows

theorem fam_026_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_026_key r mask)
    (hrows : SourceIndexStateRowFacts fam_026_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_026_splitFactsImplyClassifier hsource hrows)

theorem fam_027_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_027_key r mask)
    (hrows : SourceIndexStateRowFacts fam_027_key r mask) :
    SourceIndexStateKeyFacts fam_027_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_027_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_027_key r mask)
    (hrows : SourceIndexStateRowFacts fam_027_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam027 hsource hrows

theorem fam_027_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_027_key r mask)
    (hrows : SourceIndexStateRowFacts fam_027_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_027_splitFactsImplyClassifier hsource hrows)

theorem fam_028_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_028_key r mask)
    (hrows : SourceIndexStateRowFacts fam_028_key r mask) :
    SourceIndexStateKeyFacts fam_028_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_028_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_028_key r mask)
    (hrows : SourceIndexStateRowFacts fam_028_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam028 hsource hrows

theorem fam_028_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_028_key r mask)
    (hrows : SourceIndexStateRowFacts fam_028_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_028_splitFactsImplyClassifier hsource hrows)

theorem fam_029_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_029_key r mask)
    (hrows : SourceIndexStateRowFacts fam_029_key r mask) :
    SourceIndexStateKeyFacts fam_029_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_029_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_029_key r mask)
    (hrows : SourceIndexStateRowFacts fam_029_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam029 hsource hrows

theorem fam_029_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_029_key r mask)
    (hrows : SourceIndexStateRowFacts fam_029_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_029_splitFactsImplyClassifier hsource hrows)

theorem fam_030_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_030_key r mask)
    (hrows : SourceIndexStateRowFacts fam_030_key r mask) :
    SourceIndexStateKeyFacts fam_030_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_030_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_030_key r mask)
    (hrows : SourceIndexStateRowFacts fam_030_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam030 hsource hrows

theorem fam_030_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_030_key r mask)
    (hrows : SourceIndexStateRowFacts fam_030_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_030_splitFactsImplyClassifier hsource hrows)

theorem fam_031_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_031_key r mask)
    (hrows : SourceIndexStateRowFacts fam_031_key r mask) :
    SourceIndexStateKeyFacts fam_031_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_031_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_031_key r mask)
    (hrows : SourceIndexStateRowFacts fam_031_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam031 hsource hrows

theorem fam_031_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_031_key r mask)
    (hrows : SourceIndexStateRowFacts fam_031_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_031_splitFactsImplyClassifier hsource hrows)

theorem fam_032_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_032_key r mask)
    (hrows : SourceIndexStateRowFacts fam_032_key r mask) :
    SourceIndexStateKeyFacts fam_032_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_032_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_032_key r mask)
    (hrows : SourceIndexStateRowFacts fam_032_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam032 hsource hrows

theorem fam_032_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_032_key r mask)
    (hrows : SourceIndexStateRowFacts fam_032_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_032_splitFactsImplyClassifier hsource hrows)

theorem fam_033_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_033_key r mask)
    (hrows : SourceIndexStateRowFacts fam_033_key r mask) :
    SourceIndexStateKeyFacts fam_033_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_033_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_033_key r mask)
    (hrows : SourceIndexStateRowFacts fam_033_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam033 hsource hrows

theorem fam_033_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_033_key r mask)
    (hrows : SourceIndexStateRowFacts fam_033_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_033_splitFactsImplyClassifier hsource hrows)

theorem fam_034_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_034_key r mask)
    (hrows : SourceIndexStateRowFacts fam_034_key r mask) :
    SourceIndexStateKeyFacts fam_034_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_034_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_034_key r mask)
    (hrows : SourceIndexStateRowFacts fam_034_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam034 hsource hrows

theorem fam_034_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_034_key r mask)
    (hrows : SourceIndexStateRowFacts fam_034_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_034_splitFactsImplyClassifier hsource hrows)

theorem fam_035_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_035_key r mask)
    (hrows : SourceIndexStateRowFacts fam_035_key r mask) :
    SourceIndexStateKeyFacts fam_035_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_035_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_035_key r mask)
    (hrows : SourceIndexStateRowFacts fam_035_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam035 hsource hrows

theorem fam_035_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_035_key r mask)
    (hrows : SourceIndexStateRowFacts fam_035_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_035_splitFactsImplyClassifier hsource hrows)

theorem fam_036_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_036_key r mask)
    (hrows : SourceIndexStateRowFacts fam_036_key r mask) :
    SourceIndexStateKeyFacts fam_036_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_036_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_036_key r mask)
    (hrows : SourceIndexStateRowFacts fam_036_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam036 hsource hrows

theorem fam_036_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_036_key r mask)
    (hrows : SourceIndexStateRowFacts fam_036_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_036_splitFactsImplyClassifier hsource hrows)

theorem fam_037_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_037_key r mask)
    (hrows : SourceIndexStateRowFacts fam_037_key r mask) :
    SourceIndexStateKeyFacts fam_037_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_037_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_037_key r mask)
    (hrows : SourceIndexStateRowFacts fam_037_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam037 hsource hrows

theorem fam_037_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_037_key r mask)
    (hrows : SourceIndexStateRowFacts fam_037_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_037_splitFactsImplyClassifier hsource hrows)

theorem fam_038_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_038_key r mask)
    (hrows : SourceIndexStateRowFacts fam_038_key r mask) :
    SourceIndexStateKeyFacts fam_038_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_038_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_038_key r mask)
    (hrows : SourceIndexStateRowFacts fam_038_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam038 hsource hrows

theorem fam_038_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_038_key r mask)
    (hrows : SourceIndexStateRowFacts fam_038_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_038_splitFactsImplyClassifier hsource hrows)

theorem fam_039_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_039_key r mask)
    (hrows : SourceIndexStateRowFacts fam_039_key r mask) :
    SourceIndexStateKeyFacts fam_039_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_039_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_039_key r mask)
    (hrows : SourceIndexStateRowFacts fam_039_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam039 hsource hrows

theorem fam_039_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_039_key r mask)
    (hrows : SourceIndexStateRowFacts fam_039_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_039_splitFactsImplyClassifier hsource hrows)

theorem fam_040_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_040_key r mask)
    (hrows : SourceIndexStateRowFacts fam_040_key r mask) :
    SourceIndexStateKeyFacts fam_040_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_040_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_040_key r mask)
    (hrows : SourceIndexStateRowFacts fam_040_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam040 hsource hrows

theorem fam_040_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_040_key r mask)
    (hrows : SourceIndexStateRowFacts fam_040_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_040_splitFactsImplyClassifier hsource hrows)

theorem fam_041_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_041_key r mask)
    (hrows : SourceIndexStateRowFacts fam_041_key r mask) :
    SourceIndexStateKeyFacts fam_041_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_041_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_041_key r mask)
    (hrows : SourceIndexStateRowFacts fam_041_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam041 hsource hrows

theorem fam_041_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_041_key r mask)
    (hrows : SourceIndexStateRowFacts fam_041_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_041_splitFactsImplyClassifier hsource hrows)

theorem fam_042_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_042_key r mask)
    (hrows : SourceIndexStateRowFacts fam_042_key r mask) :
    SourceIndexStateKeyFacts fam_042_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_042_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_042_key r mask)
    (hrows : SourceIndexStateRowFacts fam_042_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam042 hsource hrows

theorem fam_042_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_042_key r mask)
    (hrows : SourceIndexStateRowFacts fam_042_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_042_splitFactsImplyClassifier hsource hrows)

theorem fam_043_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_043_key r mask)
    (hrows : SourceIndexStateRowFacts fam_043_key r mask) :
    SourceIndexStateKeyFacts fam_043_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_043_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_043_key r mask)
    (hrows : SourceIndexStateRowFacts fam_043_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam043 hsource hrows

theorem fam_043_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_043_key r mask)
    (hrows : SourceIndexStateRowFacts fam_043_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_043_splitFactsImplyClassifier hsource hrows)

theorem fam_044_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_044_key r mask)
    (hrows : SourceIndexStateRowFacts fam_044_key r mask) :
    SourceIndexStateKeyFacts fam_044_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_044_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_044_key r mask)
    (hrows : SourceIndexStateRowFacts fam_044_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam044 hsource hrows

theorem fam_044_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_044_key r mask)
    (hrows : SourceIndexStateRowFacts fam_044_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_044_splitFactsImplyClassifier hsource hrows)

theorem fam_045_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_045_key r mask)
    (hrows : SourceIndexStateRowFacts fam_045_key r mask) :
    SourceIndexStateKeyFacts fam_045_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_045_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_045_key r mask)
    (hrows : SourceIndexStateRowFacts fam_045_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam045 hsource hrows

theorem fam_045_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_045_key r mask)
    (hrows : SourceIndexStateRowFacts fam_045_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_045_splitFactsImplyClassifier hsource hrows)

theorem fam_046_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_046_key r mask)
    (hrows : SourceIndexStateRowFacts fam_046_key r mask) :
    SourceIndexStateKeyFacts fam_046_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_046_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_046_key r mask)
    (hrows : SourceIndexStateRowFacts fam_046_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam046 hsource hrows

theorem fam_046_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_046_key r mask)
    (hrows : SourceIndexStateRowFacts fam_046_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_046_splitFactsImplyClassifier hsource hrows)

theorem fam_047_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_047_key r mask)
    (hrows : SourceIndexStateRowFacts fam_047_key r mask) :
    SourceIndexStateKeyFacts fam_047_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_047_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_047_key r mask)
    (hrows : SourceIndexStateRowFacts fam_047_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam047 hsource hrows

theorem fam_047_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_047_key r mask)
    (hrows : SourceIndexStateRowFacts fam_047_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_047_splitFactsImplyClassifier hsource hrows)

theorem fam_048_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_048_key r mask)
    (hrows : SourceIndexStateRowFacts fam_048_key r mask) :
    SourceIndexStateKeyFacts fam_048_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_048_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_048_key r mask)
    (hrows : SourceIndexStateRowFacts fam_048_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam048 hsource hrows

theorem fam_048_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_048_key r mask)
    (hrows : SourceIndexStateRowFacts fam_048_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_048_splitFactsImplyClassifier hsource hrows)

theorem fam_049_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_049_key r mask)
    (hrows : SourceIndexStateRowFacts fam_049_key r mask) :
    SourceIndexStateKeyFacts fam_049_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_049_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_049_key r mask)
    (hrows : SourceIndexStateRowFacts fam_049_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam049 hsource hrows

theorem fam_049_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_049_key r mask)
    (hrows : SourceIndexStateRowFacts fam_049_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_049_splitFactsImplyClassifier hsource hrows)

theorem fam_050_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_050_key r mask)
    (hrows : SourceIndexStateRowFacts fam_050_key r mask) :
    SourceIndexStateKeyFacts fam_050_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_050_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_050_key r mask)
    (hrows : SourceIndexStateRowFacts fam_050_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam050 hsource hrows

theorem fam_050_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_050_key r mask)
    (hrows : SourceIndexStateRowFacts fam_050_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_050_splitFactsImplyClassifier hsource hrows)

theorem fam_051_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_051_key r mask)
    (hrows : SourceIndexStateRowFacts fam_051_key r mask) :
    SourceIndexStateKeyFacts fam_051_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_051_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_051_key r mask)
    (hrows : SourceIndexStateRowFacts fam_051_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam051 hsource hrows

theorem fam_051_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_051_key r mask)
    (hrows : SourceIndexStateRowFacts fam_051_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_051_splitFactsImplyClassifier hsource hrows)

theorem fam_052_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_052_key r mask)
    (hrows : SourceIndexStateRowFacts fam_052_key r mask) :
    SourceIndexStateKeyFacts fam_052_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_052_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_052_key r mask)
    (hrows : SourceIndexStateRowFacts fam_052_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam052 hsource hrows

theorem fam_052_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_052_key r mask)
    (hrows : SourceIndexStateRowFacts fam_052_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_052_splitFactsImplyClassifier hsource hrows)

theorem fam_053_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_053_key r mask)
    (hrows : SourceIndexStateRowFacts fam_053_key r mask) :
    SourceIndexStateKeyFacts fam_053_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_053_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_053_key r mask)
    (hrows : SourceIndexStateRowFacts fam_053_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam053 hsource hrows

theorem fam_053_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_053_key r mask)
    (hrows : SourceIndexStateRowFacts fam_053_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_053_splitFactsImplyClassifier hsource hrows)

theorem fam_054_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_054_key r mask)
    (hrows : SourceIndexStateRowFacts fam_054_key r mask) :
    SourceIndexStateKeyFacts fam_054_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_054_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_054_key r mask)
    (hrows : SourceIndexStateRowFacts fam_054_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam054 hsource hrows

theorem fam_054_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_054_key r mask)
    (hrows : SourceIndexStateRowFacts fam_054_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_054_splitFactsImplyClassifier hsource hrows)

theorem fam_055_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_055_key r mask)
    (hrows : SourceIndexStateRowFacts fam_055_key r mask) :
    SourceIndexStateKeyFacts fam_055_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_055_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_055_key r mask)
    (hrows : SourceIndexStateRowFacts fam_055_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam055 hsource hrows

theorem fam_055_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_055_key r mask)
    (hrows : SourceIndexStateRowFacts fam_055_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_055_splitFactsImplyClassifier hsource hrows)

theorem fam_056_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_056_key r mask)
    (hrows : SourceIndexStateRowFacts fam_056_key r mask) :
    SourceIndexStateKeyFacts fam_056_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_056_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_056_key r mask)
    (hrows : SourceIndexStateRowFacts fam_056_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam056 hsource hrows

theorem fam_056_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_056_key r mask)
    (hrows : SourceIndexStateRowFacts fam_056_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_056_splitFactsImplyClassifier hsource hrows)

theorem fam_057_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_057_key r mask)
    (hrows : SourceIndexStateRowFacts fam_057_key r mask) :
    SourceIndexStateKeyFacts fam_057_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_057_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_057_key r mask)
    (hrows : SourceIndexStateRowFacts fam_057_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam057 hsource hrows

theorem fam_057_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_057_key r mask)
    (hrows : SourceIndexStateRowFacts fam_057_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_057_splitFactsImplyClassifier hsource hrows)

theorem fam_058_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_058_key r mask)
    (hrows : SourceIndexStateRowFacts fam_058_key r mask) :
    SourceIndexStateKeyFacts fam_058_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_058_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_058_key r mask)
    (hrows : SourceIndexStateRowFacts fam_058_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam058 hsource hrows

theorem fam_058_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_058_key r mask)
    (hrows : SourceIndexStateRowFacts fam_058_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_058_splitFactsImplyClassifier hsource hrows)

theorem fam_059_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_059_key r mask)
    (hrows : SourceIndexStateRowFacts fam_059_key r mask) :
    SourceIndexStateKeyFacts fam_059_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_059_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_059_key r mask)
    (hrows : SourceIndexStateRowFacts fam_059_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam059 hsource hrows

theorem fam_059_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_059_key r mask)
    (hrows : SourceIndexStateRowFacts fam_059_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_059_splitFactsImplyClassifier hsource hrows)

theorem fam_060_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_060_key r mask)
    (hrows : SourceIndexStateRowFacts fam_060_key r mask) :
    SourceIndexStateKeyFacts fam_060_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_060_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_060_key r mask)
    (hrows : SourceIndexStateRowFacts fam_060_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam060 hsource hrows

theorem fam_060_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_060_key r mask)
    (hrows : SourceIndexStateRowFacts fam_060_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_060_splitFactsImplyClassifier hsource hrows)

theorem fam_061_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_061_key r mask)
    (hrows : SourceIndexStateRowFacts fam_061_key r mask) :
    SourceIndexStateKeyFacts fam_061_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_061_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_061_key r mask)
    (hrows : SourceIndexStateRowFacts fam_061_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam061 hsource hrows

theorem fam_061_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_061_key r mask)
    (hrows : SourceIndexStateRowFacts fam_061_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_061_splitFactsImplyClassifier hsource hrows)

theorem fam_062_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_062_key r mask)
    (hrows : SourceIndexStateRowFacts fam_062_key r mask) :
    SourceIndexStateKeyFacts fam_062_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_062_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_062_key r mask)
    (hrows : SourceIndexStateRowFacts fam_062_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam062 hsource hrows

theorem fam_062_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_062_key r mask)
    (hrows : SourceIndexStateRowFacts fam_062_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_062_splitFactsImplyClassifier hsource hrows)

theorem fam_063_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_063_key r mask)
    (hrows : SourceIndexStateRowFacts fam_063_key r mask) :
    SourceIndexStateKeyFacts fam_063_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_063_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_063_key r mask)
    (hrows : SourceIndexStateRowFacts fam_063_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam063 hsource hrows

theorem fam_063_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_063_key r mask)
    (hrows : SourceIndexStateRowFacts fam_063_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_063_splitFactsImplyClassifier hsource hrows)

theorem fam_064_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_064_key r mask)
    (hrows : SourceIndexStateRowFacts fam_064_key r mask) :
    SourceIndexStateKeyFacts fam_064_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_064_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_064_key r mask)
    (hrows : SourceIndexStateRowFacts fam_064_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam064 hsource hrows

theorem fam_064_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_064_key r mask)
    (hrows : SourceIndexStateRowFacts fam_064_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_064_splitFactsImplyClassifier hsource hrows)

theorem fam_065_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_065_key r mask)
    (hrows : SourceIndexStateRowFacts fam_065_key r mask) :
    SourceIndexStateKeyFacts fam_065_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_065_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_065_key r mask)
    (hrows : SourceIndexStateRowFacts fam_065_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam065 hsource hrows

theorem fam_065_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_065_key r mask)
    (hrows : SourceIndexStateRowFacts fam_065_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_065_splitFactsImplyClassifier hsource hrows)

theorem fam_066_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_066_key r mask)
    (hrows : SourceIndexStateRowFacts fam_066_key r mask) :
    SourceIndexStateKeyFacts fam_066_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_066_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_066_key r mask)
    (hrows : SourceIndexStateRowFacts fam_066_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam066 hsource hrows

theorem fam_066_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_066_key r mask)
    (hrows : SourceIndexStateRowFacts fam_066_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_066_splitFactsImplyClassifier hsource hrows)

theorem fam_067_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_067_key r mask)
    (hrows : SourceIndexStateRowFacts fam_067_key r mask) :
    SourceIndexStateKeyFacts fam_067_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_067_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_067_key r mask)
    (hrows : SourceIndexStateRowFacts fam_067_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam067 hsource hrows

theorem fam_067_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_067_key r mask)
    (hrows : SourceIndexStateRowFacts fam_067_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_067_splitFactsImplyClassifier hsource hrows)

theorem fam_068_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_068_key r mask)
    (hrows : SourceIndexStateRowFacts fam_068_key r mask) :
    SourceIndexStateKeyFacts fam_068_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_068_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_068_key r mask)
    (hrows : SourceIndexStateRowFacts fam_068_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam068 hsource hrows

theorem fam_068_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_068_key r mask)
    (hrows : SourceIndexStateRowFacts fam_068_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_068_splitFactsImplyClassifier hsource hrows)

theorem fam_069_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_069_key r mask)
    (hrows : SourceIndexStateRowFacts fam_069_key r mask) :
    SourceIndexStateKeyFacts fam_069_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_069_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_069_key r mask)
    (hrows : SourceIndexStateRowFacts fam_069_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam069 hsource hrows

theorem fam_069_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_069_key r mask)
    (hrows : SourceIndexStateRowFacts fam_069_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_069_splitFactsImplyClassifier hsource hrows)

theorem fam_070_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_070_key r mask)
    (hrows : SourceIndexStateRowFacts fam_070_key r mask) :
    SourceIndexStateKeyFacts fam_070_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_070_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_070_key r mask)
    (hrows : SourceIndexStateRowFacts fam_070_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam070 hsource hrows

theorem fam_070_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_070_key r mask)
    (hrows : SourceIndexStateRowFacts fam_070_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_070_splitFactsImplyClassifier hsource hrows)

theorem fam_071_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_071_key r mask)
    (hrows : SourceIndexStateRowFacts fam_071_key r mask) :
    SourceIndexStateKeyFacts fam_071_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_071_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_071_key r mask)
    (hrows : SourceIndexStateRowFacts fam_071_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam071 hsource hrows

theorem fam_071_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_071_key r mask)
    (hrows : SourceIndexStateRowFacts fam_071_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_071_splitFactsImplyClassifier hsource hrows)

theorem fam_072_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_072_key r mask)
    (hrows : SourceIndexStateRowFacts fam_072_key r mask) :
    SourceIndexStateKeyFacts fam_072_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_072_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_072_key r mask)
    (hrows : SourceIndexStateRowFacts fam_072_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam072 hsource hrows

theorem fam_072_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_072_key r mask)
    (hrows : SourceIndexStateRowFacts fam_072_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_072_splitFactsImplyClassifier hsource hrows)

theorem fam_073_splitFactsImplyKeyFacts
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_073_key r mask)
    (hrows : SourceIndexStateRowFacts fam_073_key r mask) :
    SourceIndexStateKeyFacts fam_073_key r mask :=
  SourceIndexStateKeyFacts.of_source_row hsource hrows

theorem fam_073_splitFactsImplyClassifier
    {r : Nat} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_073_key r mask)
    (hrows : SourceIndexStateRowFacts fam_073_key r mask) :
    SplitFactClassifierApplies r mask :=
  SplitFactClassifierApplies.fam073 hsource hrows

theorem fam_073_splitFactsGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (hsource : SourceIndexStateSourceFacts fam_073_key r mask)
    (hrows : SourceIndexStateRowFacts fam_073_key r mask) :
    TranslationGoodCaseKilled (Fin.mk r hlt) mask :=
  splitFactClassifierKillsOn r hlt mask (fam_073_splitFactsImplyClassifier hsource hrows)

theorem sourceIndexStateSplitFactsSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSplitFactsSmoke
