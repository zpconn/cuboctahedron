import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Generated GoodDirection-only source-index/state classifier smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof.  It packages selected descriptor states as a
semantic classifier surface for Phase 6Z.6K.8AP.16DU.9D.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

set_option linter.unusedVariables false

/-- Classifier smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 1237. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 519. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 304. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 25
  secondIndex := 2
  support := fam_002_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 271. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_003_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 152. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 93. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 15
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 81. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 1
  support := fam_006_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 76. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 10
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 75. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 13
  support := fam_008_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 73. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 11
  support := fam_009_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 70. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 26
  secondIndex := 3
  support := fam_010_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 69. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 0
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 62. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_012_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 10
  support := fam_012_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 61. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_013_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 12
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 61. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_014_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 7
  support := fam_014_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 59. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_015_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 0
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 57. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_016_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 14
  support := fam_016_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `1b2f2002758c280a9b4957a255b1ec03b9e18b94f1bf0534886c497a37096b40`.
Observed bounded GoodDirection cases: 55. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_017_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 1
  support := fam_017_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `3deda5bfda7dd10dab177ab07d85e4bec5bae07344e932072d7bcd7ef986f363`.
Observed bounded GoodDirection cases: 48. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_018_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 0
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 48. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_019_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 15
  support := fam_019_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 46. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_020_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 0
  support := fam_020_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 44. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_021_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 0
  support := fam_021_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 40. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_022_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 161
  secondIndex := 0
  support := fam_022_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 39. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_023_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 7
  support := fam_023_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `e668d65886e9e5a322e49bde53aff82a78282617526ce8979ad65d248a06ba90`.
Observed bounded GoodDirection cases: 38. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_024_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 71
  secondIndex := 2
  support := fam_024_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 35. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_025_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 0
  support := fam_025_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 33. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_026_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 0
  support := fam_026_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 32. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_027_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 16
  support := fam_027_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 31. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_028_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 0
  support := fam_028_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 28. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_029_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 183
  secondIndex := 0
  support := fam_029_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 28. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_030_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 0
  support := fam_030_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 28. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_031_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 13
  support := fam_031_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 27. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_032_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 1
  support := fam_032_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 27. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_033_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 15
  support := fam_033_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 26. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_034_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 0
  support := fam_034_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 25. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_035_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_035_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 24. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_036_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 11
  support := fam_036_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 23. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_037_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 12
  support := fam_037_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 23. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_038_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 2
  support := fam_038_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 22. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_039_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 1
  support := fam_039_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 21. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_040_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 16
  support := fam_040_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 20. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_041_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 167
  secondIndex := 0
  support := fam_041_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 20. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_042_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 14
  support := fam_042_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `7a65f29590123bf426961881b2f8d72a554244ebd7db1928e6211cc43dbd193d`.
Observed bounded GoodDirection cases: 20. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_043_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 2
  support := fam_043_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 18. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_044_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 1
  support := fam_044_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 18. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_045_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 184
  secondIndex := 1
  support := fam_045_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `4c72072d32d9dd31f185019209d6ca8aa3959da9f2b28659eab68975586f92ef`.
Observed bounded GoodDirection cases: 17. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_046_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 0
  support := fam_046_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 17. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_047_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 1
  support := fam_047_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 17. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_048_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 11
  support := fam_048_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `147d32d3e6369b719c07fd7542de34216dd48db412037fcc9097fce80947ce1c`.
Observed bounded GoodDirection cases: 16. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_049_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 95
  secondIndex := 0
  support := fam_049_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 16. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_050_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 161
  secondIndex := 1
  support := fam_050_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `1d541f124fdc98e8359dbed4c921475f339905d1cad066ae7a7e52d1924c1179`.
Observed bounded GoodDirection cases: 15. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_051_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 1
  support := fam_051_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `61aa251701456fbb0bece3b5f02f752aeb17216d8fa047e5114685764c27ddf2`.
Observed bounded GoodDirection cases: 15. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_052_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 92
  secondIndex := 1
  support := fam_052_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `1d429d67ee13df82ba88a3e685c5f449bb51da67ccfb2381ebb6429b3b02fd2e`.
Observed bounded GoodDirection cases: 13. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_053_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 106
  secondIndex := 0
  support := fam_053_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 13. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_054_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 115
  secondIndex := 0
  support := fam_054_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `ab516b7ad129e4f1cee4b2c8ec44af498c782ec815a52eb4bd0cc2b1e0c25814`.
Observed bounded GoodDirection cases: 13. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_055_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 0
  support := fam_055_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 13. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_056_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 1
  support := fam_056_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 13. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_057_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 10
  support := fam_057_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 12. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_058_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 12
  support := fam_058_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 11. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_059_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 121
  secondIndex := 0
  support := fam_059_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 11. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_060_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 1
  support := fam_060_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 11. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_061_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 1
  support := fam_061_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 11. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_062_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 1
  support := fam_062_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 10. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_063_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_063_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `481c7323fda36e8ef4929813929eecc89d2ea51c29714e570b34eccef32656a1`.
Observed bounded GoodDirection cases: 10. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_064_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 3
  support := fam_064_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 10. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_065_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 3
  support := fam_065_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 10. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_066_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 147
  secondIndex := 0
  support := fam_066_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `816fb1690bf595f3f53f759dcd2f42cc8ce6594c546823c5f917337a089f58d5`.
Observed bounded GoodDirection cases: 9. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_067_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 119
  secondIndex := 0
  support := fam_067_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `96da7bf37914b164ca484ce81cc9db786995bfe2c87b149569e6b9118f6c2c45`.
Observed bounded GoodDirection cases: 9. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_068_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 123
  secondIndex := 0
  support := fam_068_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 9. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_069_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 141
  secondIndex := 0
  support := fam_069_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 9. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_070_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 2
  support := fam_070_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 9. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def fam_071_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 14
  support := fam_071_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 8. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_072_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_072_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 8. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_073_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 1
  support := fam_073_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `1afd926769caf85b6cb8fda2a1c4e48332f30dcd4d0662289f18b8a8db4e4b81`.
Observed bounded GoodDirection cases: 8. -/
private def fam_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_074_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 2
  support := fam_074_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 8. -/
private def fam_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_075_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 2
  support := fam_075_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 7. -/
private def fam_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_076_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 1
  support := fam_076_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `2aa04a3f1c0161cddde4e21a8863c0aac8e84249606d7a160e9c70dbbf46c954`.
Observed bounded GoodDirection cases: 6. -/
private def fam_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_077_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 103
  secondIndex := 0
  support := fam_077_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 6. -/
private def fam_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_078_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 0
  support := fam_078_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `d4e65bfbc9e67385f31f52e017e32313a9a2ca70d91dc9c9d5f4086405a5ad02`.
Observed bounded GoodDirection cases: 6. -/
private def fam_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_079_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 79
  secondIndex := 2
  support := fam_079_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 5. -/
private def fam_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_080_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_080_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `cef979f926b1ef7b5e3a24b79cf5f7690874d0f5a634700e4c34e4d5cbd42d9e`.
Observed bounded GoodDirection cases: 5. -/
private def fam_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_081_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 170
  secondIndex := 1
  support := fam_081_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `5719f1cb445c3857a4e02a857afbadbdf33a000c7ca5e68c983d5afffb99860d`.
Observed bounded GoodDirection cases: 5. -/
private def fam_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_082_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 2
  support := fam_082_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `faf63347c7518a5cc22aea93ba3de544023b93bec0e0607cf96e2b74be7aa298`.
Observed bounded GoodDirection cases: 4. -/
private def fam_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def fam_083_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_083_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `cf5366200f297cbeca3798128ccc225f8b0f70a7f0dffe7a8a4ceaca806f93f2`.
Observed bounded GoodDirection cases: 4. -/
private def fam_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_084_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 3
  support := fam_084_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 4. -/
private def fam_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def fam_085_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 11
  support := fam_085_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `528b0624732053da7c91dc90d6c1fed9083253786a9dc7c40d92fc5edb96fbe7`.
Observed bounded GoodDirection cases: 4. -/
private def fam_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def fam_086_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 15
  support := fam_086_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `4c80d6d47a288b82736f6b0fc75612d8a4fe3591ce9d2cd2095462fb71689fcd`.
Observed bounded GoodDirection cases: 4. -/
private def fam_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_087_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 129
  secondIndex := 0
  support := fam_087_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `4d5bf70423567c2e7433ceccdc7938df76413ba090a96b126de74f17eead2669`.
Observed bounded GoodDirection cases: 4. -/
private def fam_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_088_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 131
  secondIndex := 0
  support := fam_088_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 4. -/
private def fam_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_089_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 168
  secondIndex := 1
  support := fam_089_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `761dc9499a87ec31338360a64ad84cb878d4d7d480a3adbe57558b7563495a13`.
Observed bounded GoodDirection cases: 4. -/
private def fam_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_090_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 94
  secondIndex := 1
  support := fam_090_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `e6ecc14cf76933734aba08afe610bc685156b5d6e354da396c37a2db9099cd91`.
Observed bounded GoodDirection cases: 4. -/
private def fam_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def fam_091_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 16
  support := fam_091_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 3. -/
private def fam_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_092_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 142
  secondIndex := 1
  support := fam_092_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `8cee0d6d22494cfef07e639f2f8101e1a940b0a83fae4b876952365613b515c5`.
Observed bounded GoodDirection cases: 3. -/
private def fam_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_093_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 156
  secondIndex := 1
  support := fam_093_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 3. -/
private def fam_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_094_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 106
  secondIndex := 1
  support := fam_094_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `e22d34bd0c03bfe6d95d801bcc8f23d799b2437efb4a47ddd1a990cec25e64b5`.
Observed bounded GoodDirection cases: 3. -/
private def fam_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_095_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 116
  secondIndex := 1
  support := fam_095_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `06178f226b91c5dc66569704243eb46e675f6a96a5da266da8b72c225ac18867`.
Observed bounded GoodDirection cases: 3. -/
private def fam_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_096_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 107
  secondIndex := 2
  support := fam_096_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 3. -/
private def fam_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_097_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 2
  support := fam_097_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `ed3ac5ebe0f22e996ccdc49444bcb4d4f654d18f000f93ba9045dde9248c9980`.
Observed bounded GoodDirection cases: 3. -/
private def fam_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_098_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 2
  support := fam_098_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `261b107818d73610bf19cd2422ad5a5a15aa2db118565d49f769d88fe7dd9116`.
Observed bounded GoodDirection cases: 2. -/
private def fam_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_099_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 3
  support := fam_099_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `791bde5f13376c14e6042c151b82330109e8588c0c31a5af92154edcabe5b913`.
Observed bounded GoodDirection cases: 2. -/
private def fam_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_100_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 3
  support := fam_100_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `c86d5f78ead3788d4d966f9088f2e8edd3bf1b8168c045981a10937fb62179b6`.
Observed bounded GoodDirection cases: 2. -/
private def fam_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_101_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 3
  support := fam_101_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 2. -/
private def fam_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def fam_102_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 12
  support := fam_102_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `96b2befe815713eb1405e2ed5322c7ed566364e61b1db132e586bfe00f5cbe45`.
Observed bounded GoodDirection cases: 2. -/
private def fam_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def fam_103_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 10
  support := fam_103_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `0c0e4ba6e28fbb5874ffec38e757ce56802f082962201133f6dc0141b060a995`.
Observed bounded GoodDirection cases: 2. -/
private def fam_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_104_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 171
  secondIndex := 0
  support := fam_104_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a2fbb31fbbeeefd08afff7a3908b400e2e1214a38a3130e20bb6b23ace12b601`.
Observed bounded GoodDirection cases: 2. -/
private def fam_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_105_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 157
  secondIndex := 0
  support := fam_105_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `0ecaa87684a0c92fd960150153069bd51d9b48ef31194d140b5a7072c33c704c`.
Observed bounded GoodDirection cases: 2. -/
private def fam_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_106_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 130
  secondIndex := 1
  support := fam_106_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 2. -/
private def fam_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_107_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 120
  secondIndex := 1
  support := fam_107_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 2. -/
private def fam_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_108_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 2
  support := fam_108_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `429f67e86b5e2b117910d87608a2db32b48f40a35c792b4acf398b0947b1195e`.
Observed bounded GoodDirection cases: 2. -/
private def fam_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_109_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 2
  support := fam_109_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `e123e95ce12fb8512a98acdcdc060cc8e1427e5e426c456b02f2df50bb835096`.
Observed bounded GoodDirection cases: 2. -/
private def fam_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_110_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 129
  secondIndex := 2
  support := fam_110_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `47176201eb0b3d5d695e4244013e6e3072f3da7cbf82ab9c7d8a5a13674701e1`.
Observed bounded GoodDirection cases: 1. -/
private def fam_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_111_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 3
  support := fam_111_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `a69cfe6ad1368ef7300e79a82ff9c35f64a4345c54ad6c36b20f507965dee9a6`.
Observed bounded GoodDirection cases: 1. -/
private def fam_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def fam_112_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 3
  support := fam_112_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `3a68db823e3ef8c4a98812fd192baa9639a65f71318383b97cc6603e5261f0c9`.
Observed bounded GoodDirection cases: 1. -/
private def fam_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def fam_113_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 13
  support := fam_113_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `f41d89c94570751027877deb81edfce2542f9ef7a6ecf672d9de6b9c2f1825ed`.
Observed bounded GoodDirection cases: 1. -/
private def fam_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_114_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 7
  support := fam_114_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `001a251e22ea75e84d02a831e58f6d59397e6d628cc1d425ea350e5f5ec6c67e`.
Observed bounded GoodDirection cases: 1. -/
private def fam_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_115_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 155
  secondIndex := 0
  support := fam_115_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `491ab65e3856052d89136c84270aec642ba2db00cb1703515fd03cb363c985d6`.
Observed bounded GoodDirection cases: 1. -/
private def fam_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_116_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 132
  secondIndex := 0
  support := fam_116_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `75e98d2c542afd61a6c6486d1b6b074792edce1fb08c39198f5ce0411f1d9a86`.
Observed bounded GoodDirection cases: 1. -/
private def fam_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_117_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 133
  secondIndex := 0
  support := fam_117_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `79089357fe2a7330c14fe99d945a21a58606b251d89bb36df66626486216add2`.
Observed bounded GoodDirection cases: 1. -/
private def fam_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_118_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 107
  secondIndex := 0
  support := fam_118_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `b94b0068fbf0a1a1e792d25a42dc8c3a5df1e29b9ba015d7a9d6674c84fce0cb`.
Observed bounded GoodDirection cases: 1. -/
private def fam_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_119_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 145
  secondIndex := 0
  support := fam_119_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `dd193a21ab942c2c9dc699bf18754b7ff8f85bf72f7dacd37e9d51aa49b3f66b`.
Observed bounded GoodDirection cases: 1. -/
private def fam_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_120_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 143
  secondIndex := 0
  support := fam_120_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bafce296cc2cf71ac2c9cdac79f931bb5af2e44854ca7b0febd280fb49b804b6`.
Observed bounded GoodDirection cases: 1. -/
private def fam_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_121_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 128
  secondIndex := 1
  support := fam_121_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `30ec9eaa33b87b60a1df0ed4f0d5ee1a76841a2b9ee6076bae5dbc127f539617`.
Observed bounded GoodDirection cases: 1. -/
private def fam_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_122_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 2
  support := fam_122_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `6e00befec663a240ed810da0b71168fa5b7db247c7948f1eeca4cc91b07023cc`.
Observed bounded GoodDirection cases: 1. -/
private def fam_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_123_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 143
  secondIndex := 2
  support := fam_123_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `db68a14c074edb744fab08556d2d2441f01c202e494cbc2220c2912d941ee576`.
Observed bounded GoodDirection cases: 1. -/
private def fam_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_124_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 2
  support := fam_124_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

inductive ClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (h : fam_000_desc.Applies r mask) : ClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (h : fam_001_desc.Applies r mask) : ClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (h : fam_002_desc.Applies r mask) : ClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (h : fam_003_desc.Applies r mask) : ClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (h : fam_004_desc.Applies r mask) : ClassifierApplies r mask
  | fam005 {r : Nat} {mask : SignMask} (h : fam_005_desc.Applies r mask) : ClassifierApplies r mask
  | fam006 {r : Nat} {mask : SignMask} (h : fam_006_desc.Applies r mask) : ClassifierApplies r mask
  | fam007 {r : Nat} {mask : SignMask} (h : fam_007_desc.Applies r mask) : ClassifierApplies r mask
  | fam008 {r : Nat} {mask : SignMask} (h : fam_008_desc.Applies r mask) : ClassifierApplies r mask
  | fam009 {r : Nat} {mask : SignMask} (h : fam_009_desc.Applies r mask) : ClassifierApplies r mask
  | fam010 {r : Nat} {mask : SignMask} (h : fam_010_desc.Applies r mask) : ClassifierApplies r mask
  | fam011 {r : Nat} {mask : SignMask} (h : fam_011_desc.Applies r mask) : ClassifierApplies r mask
  | fam012 {r : Nat} {mask : SignMask} (h : fam_012_desc.Applies r mask) : ClassifierApplies r mask
  | fam013 {r : Nat} {mask : SignMask} (h : fam_013_desc.Applies r mask) : ClassifierApplies r mask
  | fam014 {r : Nat} {mask : SignMask} (h : fam_014_desc.Applies r mask) : ClassifierApplies r mask
  | fam015 {r : Nat} {mask : SignMask} (h : fam_015_desc.Applies r mask) : ClassifierApplies r mask
  | fam016 {r : Nat} {mask : SignMask} (h : fam_016_desc.Applies r mask) : ClassifierApplies r mask
  | fam017 {r : Nat} {mask : SignMask} (h : fam_017_desc.Applies r mask) : ClassifierApplies r mask
  | fam018 {r : Nat} {mask : SignMask} (h : fam_018_desc.Applies r mask) : ClassifierApplies r mask
  | fam019 {r : Nat} {mask : SignMask} (h : fam_019_desc.Applies r mask) : ClassifierApplies r mask
  | fam020 {r : Nat} {mask : SignMask} (h : fam_020_desc.Applies r mask) : ClassifierApplies r mask
  | fam021 {r : Nat} {mask : SignMask} (h : fam_021_desc.Applies r mask) : ClassifierApplies r mask
  | fam022 {r : Nat} {mask : SignMask} (h : fam_022_desc.Applies r mask) : ClassifierApplies r mask
  | fam023 {r : Nat} {mask : SignMask} (h : fam_023_desc.Applies r mask) : ClassifierApplies r mask
  | fam024 {r : Nat} {mask : SignMask} (h : fam_024_desc.Applies r mask) : ClassifierApplies r mask
  | fam025 {r : Nat} {mask : SignMask} (h : fam_025_desc.Applies r mask) : ClassifierApplies r mask
  | fam026 {r : Nat} {mask : SignMask} (h : fam_026_desc.Applies r mask) : ClassifierApplies r mask
  | fam027 {r : Nat} {mask : SignMask} (h : fam_027_desc.Applies r mask) : ClassifierApplies r mask
  | fam028 {r : Nat} {mask : SignMask} (h : fam_028_desc.Applies r mask) : ClassifierApplies r mask
  | fam029 {r : Nat} {mask : SignMask} (h : fam_029_desc.Applies r mask) : ClassifierApplies r mask
  | fam030 {r : Nat} {mask : SignMask} (h : fam_030_desc.Applies r mask) : ClassifierApplies r mask
  | fam031 {r : Nat} {mask : SignMask} (h : fam_031_desc.Applies r mask) : ClassifierApplies r mask
  | fam032 {r : Nat} {mask : SignMask} (h : fam_032_desc.Applies r mask) : ClassifierApplies r mask
  | fam033 {r : Nat} {mask : SignMask} (h : fam_033_desc.Applies r mask) : ClassifierApplies r mask
  | fam034 {r : Nat} {mask : SignMask} (h : fam_034_desc.Applies r mask) : ClassifierApplies r mask
  | fam035 {r : Nat} {mask : SignMask} (h : fam_035_desc.Applies r mask) : ClassifierApplies r mask
  | fam036 {r : Nat} {mask : SignMask} (h : fam_036_desc.Applies r mask) : ClassifierApplies r mask
  | fam037 {r : Nat} {mask : SignMask} (h : fam_037_desc.Applies r mask) : ClassifierApplies r mask
  | fam038 {r : Nat} {mask : SignMask} (h : fam_038_desc.Applies r mask) : ClassifierApplies r mask
  | fam039 {r : Nat} {mask : SignMask} (h : fam_039_desc.Applies r mask) : ClassifierApplies r mask
  | fam040 {r : Nat} {mask : SignMask} (h : fam_040_desc.Applies r mask) : ClassifierApplies r mask
  | fam041 {r : Nat} {mask : SignMask} (h : fam_041_desc.Applies r mask) : ClassifierApplies r mask
  | fam042 {r : Nat} {mask : SignMask} (h : fam_042_desc.Applies r mask) : ClassifierApplies r mask
  | fam043 {r : Nat} {mask : SignMask} (h : fam_043_desc.Applies r mask) : ClassifierApplies r mask
  | fam044 {r : Nat} {mask : SignMask} (h : fam_044_desc.Applies r mask) : ClassifierApplies r mask
  | fam045 {r : Nat} {mask : SignMask} (h : fam_045_desc.Applies r mask) : ClassifierApplies r mask
  | fam046 {r : Nat} {mask : SignMask} (h : fam_046_desc.Applies r mask) : ClassifierApplies r mask
  | fam047 {r : Nat} {mask : SignMask} (h : fam_047_desc.Applies r mask) : ClassifierApplies r mask
  | fam048 {r : Nat} {mask : SignMask} (h : fam_048_desc.Applies r mask) : ClassifierApplies r mask
  | fam049 {r : Nat} {mask : SignMask} (h : fam_049_desc.Applies r mask) : ClassifierApplies r mask
  | fam050 {r : Nat} {mask : SignMask} (h : fam_050_desc.Applies r mask) : ClassifierApplies r mask
  | fam051 {r : Nat} {mask : SignMask} (h : fam_051_desc.Applies r mask) : ClassifierApplies r mask
  | fam052 {r : Nat} {mask : SignMask} (h : fam_052_desc.Applies r mask) : ClassifierApplies r mask
  | fam053 {r : Nat} {mask : SignMask} (h : fam_053_desc.Applies r mask) : ClassifierApplies r mask
  | fam054 {r : Nat} {mask : SignMask} (h : fam_054_desc.Applies r mask) : ClassifierApplies r mask
  | fam055 {r : Nat} {mask : SignMask} (h : fam_055_desc.Applies r mask) : ClassifierApplies r mask
  | fam056 {r : Nat} {mask : SignMask} (h : fam_056_desc.Applies r mask) : ClassifierApplies r mask
  | fam057 {r : Nat} {mask : SignMask} (h : fam_057_desc.Applies r mask) : ClassifierApplies r mask
  | fam058 {r : Nat} {mask : SignMask} (h : fam_058_desc.Applies r mask) : ClassifierApplies r mask
  | fam059 {r : Nat} {mask : SignMask} (h : fam_059_desc.Applies r mask) : ClassifierApplies r mask
  | fam060 {r : Nat} {mask : SignMask} (h : fam_060_desc.Applies r mask) : ClassifierApplies r mask
  | fam061 {r : Nat} {mask : SignMask} (h : fam_061_desc.Applies r mask) : ClassifierApplies r mask
  | fam062 {r : Nat} {mask : SignMask} (h : fam_062_desc.Applies r mask) : ClassifierApplies r mask
  | fam063 {r : Nat} {mask : SignMask} (h : fam_063_desc.Applies r mask) : ClassifierApplies r mask
  | fam064 {r : Nat} {mask : SignMask} (h : fam_064_desc.Applies r mask) : ClassifierApplies r mask
  | fam065 {r : Nat} {mask : SignMask} (h : fam_065_desc.Applies r mask) : ClassifierApplies r mask
  | fam066 {r : Nat} {mask : SignMask} (h : fam_066_desc.Applies r mask) : ClassifierApplies r mask
  | fam067 {r : Nat} {mask : SignMask} (h : fam_067_desc.Applies r mask) : ClassifierApplies r mask
  | fam068 {r : Nat} {mask : SignMask} (h : fam_068_desc.Applies r mask) : ClassifierApplies r mask
  | fam069 {r : Nat} {mask : SignMask} (h : fam_069_desc.Applies r mask) : ClassifierApplies r mask
  | fam070 {r : Nat} {mask : SignMask} (h : fam_070_desc.Applies r mask) : ClassifierApplies r mask
  | fam071 {r : Nat} {mask : SignMask} (h : fam_071_desc.Applies r mask) : ClassifierApplies r mask
  | fam072 {r : Nat} {mask : SignMask} (h : fam_072_desc.Applies r mask) : ClassifierApplies r mask
  | fam073 {r : Nat} {mask : SignMask} (h : fam_073_desc.Applies r mask) : ClassifierApplies r mask
  | fam074 {r : Nat} {mask : SignMask} (h : fam_074_desc.Applies r mask) : ClassifierApplies r mask
  | fam075 {r : Nat} {mask : SignMask} (h : fam_075_desc.Applies r mask) : ClassifierApplies r mask
  | fam076 {r : Nat} {mask : SignMask} (h : fam_076_desc.Applies r mask) : ClassifierApplies r mask
  | fam077 {r : Nat} {mask : SignMask} (h : fam_077_desc.Applies r mask) : ClassifierApplies r mask
  | fam078 {r : Nat} {mask : SignMask} (h : fam_078_desc.Applies r mask) : ClassifierApplies r mask
  | fam079 {r : Nat} {mask : SignMask} (h : fam_079_desc.Applies r mask) : ClassifierApplies r mask
  | fam080 {r : Nat} {mask : SignMask} (h : fam_080_desc.Applies r mask) : ClassifierApplies r mask
  | fam081 {r : Nat} {mask : SignMask} (h : fam_081_desc.Applies r mask) : ClassifierApplies r mask
  | fam082 {r : Nat} {mask : SignMask} (h : fam_082_desc.Applies r mask) : ClassifierApplies r mask
  | fam083 {r : Nat} {mask : SignMask} (h : fam_083_desc.Applies r mask) : ClassifierApplies r mask
  | fam084 {r : Nat} {mask : SignMask} (h : fam_084_desc.Applies r mask) : ClassifierApplies r mask
  | fam085 {r : Nat} {mask : SignMask} (h : fam_085_desc.Applies r mask) : ClassifierApplies r mask
  | fam086 {r : Nat} {mask : SignMask} (h : fam_086_desc.Applies r mask) : ClassifierApplies r mask
  | fam087 {r : Nat} {mask : SignMask} (h : fam_087_desc.Applies r mask) : ClassifierApplies r mask
  | fam088 {r : Nat} {mask : SignMask} (h : fam_088_desc.Applies r mask) : ClassifierApplies r mask
  | fam089 {r : Nat} {mask : SignMask} (h : fam_089_desc.Applies r mask) : ClassifierApplies r mask
  | fam090 {r : Nat} {mask : SignMask} (h : fam_090_desc.Applies r mask) : ClassifierApplies r mask
  | fam091 {r : Nat} {mask : SignMask} (h : fam_091_desc.Applies r mask) : ClassifierApplies r mask
  | fam092 {r : Nat} {mask : SignMask} (h : fam_092_desc.Applies r mask) : ClassifierApplies r mask
  | fam093 {r : Nat} {mask : SignMask} (h : fam_093_desc.Applies r mask) : ClassifierApplies r mask
  | fam094 {r : Nat} {mask : SignMask} (h : fam_094_desc.Applies r mask) : ClassifierApplies r mask
  | fam095 {r : Nat} {mask : SignMask} (h : fam_095_desc.Applies r mask) : ClassifierApplies r mask
  | fam096 {r : Nat} {mask : SignMask} (h : fam_096_desc.Applies r mask) : ClassifierApplies r mask
  | fam097 {r : Nat} {mask : SignMask} (h : fam_097_desc.Applies r mask) : ClassifierApplies r mask
  | fam098 {r : Nat} {mask : SignMask} (h : fam_098_desc.Applies r mask) : ClassifierApplies r mask
  | fam099 {r : Nat} {mask : SignMask} (h : fam_099_desc.Applies r mask) : ClassifierApplies r mask
  | fam100 {r : Nat} {mask : SignMask} (h : fam_100_desc.Applies r mask) : ClassifierApplies r mask
  | fam101 {r : Nat} {mask : SignMask} (h : fam_101_desc.Applies r mask) : ClassifierApplies r mask
  | fam102 {r : Nat} {mask : SignMask} (h : fam_102_desc.Applies r mask) : ClassifierApplies r mask
  | fam103 {r : Nat} {mask : SignMask} (h : fam_103_desc.Applies r mask) : ClassifierApplies r mask
  | fam104 {r : Nat} {mask : SignMask} (h : fam_104_desc.Applies r mask) : ClassifierApplies r mask
  | fam105 {r : Nat} {mask : SignMask} (h : fam_105_desc.Applies r mask) : ClassifierApplies r mask
  | fam106 {r : Nat} {mask : SignMask} (h : fam_106_desc.Applies r mask) : ClassifierApplies r mask
  | fam107 {r : Nat} {mask : SignMask} (h : fam_107_desc.Applies r mask) : ClassifierApplies r mask
  | fam108 {r : Nat} {mask : SignMask} (h : fam_108_desc.Applies r mask) : ClassifierApplies r mask
  | fam109 {r : Nat} {mask : SignMask} (h : fam_109_desc.Applies r mask) : ClassifierApplies r mask
  | fam110 {r : Nat} {mask : SignMask} (h : fam_110_desc.Applies r mask) : ClassifierApplies r mask
  | fam111 {r : Nat} {mask : SignMask} (h : fam_111_desc.Applies r mask) : ClassifierApplies r mask
  | fam112 {r : Nat} {mask : SignMask} (h : fam_112_desc.Applies r mask) : ClassifierApplies r mask
  | fam113 {r : Nat} {mask : SignMask} (h : fam_113_desc.Applies r mask) : ClassifierApplies r mask
  | fam114 {r : Nat} {mask : SignMask} (h : fam_114_desc.Applies r mask) : ClassifierApplies r mask
  | fam115 {r : Nat} {mask : SignMask} (h : fam_115_desc.Applies r mask) : ClassifierApplies r mask
  | fam116 {r : Nat} {mask : SignMask} (h : fam_116_desc.Applies r mask) : ClassifierApplies r mask
  | fam117 {r : Nat} {mask : SignMask} (h : fam_117_desc.Applies r mask) : ClassifierApplies r mask
  | fam118 {r : Nat} {mask : SignMask} (h : fam_118_desc.Applies r mask) : ClassifierApplies r mask
  | fam119 {r : Nat} {mask : SignMask} (h : fam_119_desc.Applies r mask) : ClassifierApplies r mask
  | fam120 {r : Nat} {mask : SignMask} (h : fam_120_desc.Applies r mask) : ClassifierApplies r mask
  | fam121 {r : Nat} {mask : SignMask} (h : fam_121_desc.Applies r mask) : ClassifierApplies r mask
  | fam122 {r : Nat} {mask : SignMask} (h : fam_122_desc.Applies r mask) : ClassifierApplies r mask
  | fam123 {r : Nat} {mask : SignMask} (h : fam_123_desc.Applies r mask) : ClassifierApplies r mask
  | fam124 {r : Nat} {mask : SignMask} (h : fam_124_desc.Applies r mask) : ClassifierApplies r mask

/-- Public key index for the generated classifier families. -/
inductive ClassifierKey
  | k000
  | k001
  | k002
  | k003
  | k004
  | k005
  | k006
  | k007
  | k008
  | k009
  | k010
  | k011
  | k012
  | k013
  | k014
  | k015
  | k016
  | k017
  | k018
  | k019
  | k020
  | k021
  | k022
  | k023
  | k024
  | k025
  | k026
  | k027
  | k028
  | k029
  | k030
  | k031
  | k032
  | k033
  | k034
  | k035
  | k036
  | k037
  | k038
  | k039
  | k040
  | k041
  | k042
  | k043
  | k044
  | k045
  | k046
  | k047
  | k048
  | k049
  | k050
  | k051
  | k052
  | k053
  | k054
  | k055
  | k056
  | k057
  | k058
  | k059
  | k060
  | k061
  | k062
  | k063
  | k064
  | k065
  | k066
  | k067
  | k068
  | k069
  | k070
  | k071
  | k072
  | k073
  | k074
  | k075
  | k076
  | k077
  | k078
  | k079
  | k080
  | k081
  | k082
  | k083
  | k084
  | k085
  | k086
  | k087
  | k088
  | k089
  | k090
  | k091
  | k092
  | k093
  | k094
  | k095
  | k096
  | k097
  | k098
  | k099
  | k100
  | k101
  | k102
  | k103
  | k104
  | k105
  | k106
  | k107
  | k108
  | k109
  | k110
  | k111
  | k112
  | k113
  | k114
  | k115
  | k116
  | k117
  | k118
  | k119
  | k120
  | k121
  | k122
  | k123
  | k124
deriving DecidableEq, Repr

def ClassifierKey.toSourceIndexStateKey :
    ClassifierKey -> SourceIndexStateKey
  | .k000 => {
      firstIndex := 23
      secondIndex := 0
      support := fam_000_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k001 => {
      firstIndex := 24
      secondIndex := 1
      support := fam_001_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k002 => {
      firstIndex := 25
      secondIndex := 2
      support := fam_002_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k003 => {
      firstIndex := 0
      secondIndex := 7
      support := fam_003_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k004 => {
      firstIndex := 83
      secondIndex := 0
      support := fam_004_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k005 => {
      firstIndex := 0
      secondIndex := 15
      support := fam_005_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k006 => {
      firstIndex := 83
      secondIndex := 1
      support := fam_006_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k007 => {
      firstIndex := 0
      secondIndex := 10
      support := fam_007_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k008 => {
      firstIndex := 0
      secondIndex := 13
      support := fam_008_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k009 => {
      firstIndex := 0
      secondIndex := 11
      support := fam_009_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k010 => {
      firstIndex := 26
      secondIndex := 3
      support := fam_010_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k011 => {
      firstIndex := 96
      secondIndex := 0
      support := fam_011_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k012 => {
      firstIndex := 1
      secondIndex := 10
      support := fam_012_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k013 => {
      firstIndex := 0
      secondIndex := 12
      support := fam_013_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k014 => {
      firstIndex := 1
      secondIndex := 7
      support := fam_014_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k015 => {
      firstIndex := 109
      secondIndex := 0
      support := fam_015_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k016 => {
      firstIndex := 0
      secondIndex := 14
      support := fam_016_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k017 => {
      firstIndex := 70
      secondIndex := 1
      support := fam_017_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k018 => {
      firstIndex := 84
      secondIndex := 0
      support := fam_018_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k019 => {
      firstIndex := 1
      secondIndex := 15
      support := fam_019_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k020 => {
      firstIndex := 162
      secondIndex := 0
      support := fam_020_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k021 => {
      firstIndex := 148
      secondIndex := 0
      support := fam_021_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k022 => {
      firstIndex := 161
      secondIndex := 0
      support := fam_022_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k023 => {
      firstIndex := 2
      secondIndex := 7
      support := fam_023_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k024 => {
      firstIndex := 71
      secondIndex := 2
      support := fam_024_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k025 => {
      firstIndex := 136
      secondIndex := 0
      support := fam_025_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k026 => {
      firstIndex := 122
      secondIndex := 0
      support := fam_026_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k027 => {
      firstIndex := 0
      secondIndex := 16
      support := fam_027_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k028 => {
      firstIndex := 175
      secondIndex := 0
      support := fam_028_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k029 => {
      firstIndex := 183
      secondIndex := 0
      support := fam_029_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k030 => {
      firstIndex := 135
      secondIndex := 0
      support := fam_030_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k031 => {
      firstIndex := 1
      secondIndex := 13
      support := fam_031_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k032 => {
      firstIndex := 109
      secondIndex := 1
      support := fam_032_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k033 => {
      firstIndex := 2
      secondIndex := 15
      support := fam_033_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k034 => {
      firstIndex := 110
      secondIndex := 0
      support := fam_034_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k035 => {
      firstIndex := 2
      secondIndex := 13
      support := fam_035_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k036 => {
      firstIndex := 1
      secondIndex := 11
      support := fam_036_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k037 => {
      firstIndex := 1
      secondIndex := 12
      support := fam_037_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k038 => {
      firstIndex := 84
      secondIndex := 2
      support := fam_038_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k039 => {
      firstIndex := 175
      secondIndex := 1
      support := fam_039_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k040 => {
      firstIndex := 1
      secondIndex := 16
      support := fam_040_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k041 => {
      firstIndex := 167
      secondIndex := 0
      support := fam_041_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k042 => {
      firstIndex := 1
      secondIndex := 14
      support := fam_042_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k043 => {
      firstIndex := 83
      secondIndex := 2
      support := fam_043_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k044 => {
      firstIndex := 162
      secondIndex := 1
      support := fam_044_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k045 => {
      firstIndex := 184
      secondIndex := 1
      support := fam_045_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k046 => {
      firstIndex := 97
      secondIndex := 0
      support := fam_046_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k047 => {
      firstIndex := 96
      secondIndex := 1
      support := fam_047_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k048 => {
      firstIndex := 2
      secondIndex := 11
      support := fam_048_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k049 => {
      firstIndex := 95
      secondIndex := 0
      support := fam_049_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k050 => {
      firstIndex := 161
      secondIndex := 1
      support := fam_050_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k051 => {
      firstIndex := 84
      secondIndex := 1
      support := fam_051_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k052 => {
      firstIndex := 92
      secondIndex := 1
      support := fam_052_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k053 => {
      firstIndex := 106
      secondIndex := 0
      support := fam_053_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k054 => {
      firstIndex := 115
      secondIndex := 0
      support := fam_054_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k055 => {
      firstIndex := 149
      secondIndex := 0
      support := fam_055_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k056 => {
      firstIndex := 122
      secondIndex := 1
      support := fam_056_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k057 => {
      firstIndex := 2
      secondIndex := 10
      support := fam_057_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k058 => {
      firstIndex := 2
      secondIndex := 12
      support := fam_058_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k059 => {
      firstIndex := 121
      secondIndex := 0
      support := fam_059_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k060 => {
      firstIndex := 136
      secondIndex := 1
      support := fam_060_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k061 => {
      firstIndex := 148
      secondIndex := 1
      support := fam_061_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k062 => {
      firstIndex := 135
      secondIndex := 1
      support := fam_062_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k063 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_063_support
      template := SourceIndexTemplate.axisAOnly }
  | .k064 => {
      firstIndex := 83
      secondIndex := 3
      support := fam_064_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k065 => {
      firstIndex := 84
      secondIndex := 3
      support := fam_065_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k066 => {
      firstIndex := 147
      secondIndex := 0
      support := fam_066_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k067 => {
      firstIndex := 119
      secondIndex := 0
      support := fam_067_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k068 => {
      firstIndex := 123
      secondIndex := 0
      support := fam_068_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k069 => {
      firstIndex := 141
      secondIndex := 0
      support := fam_069_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k070 => {
      firstIndex := 162
      secondIndex := 2
      support := fam_070_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k071 => {
      firstIndex := 2
      secondIndex := 14
      support := fam_071_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k072 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_072_support
      template := SourceIndexTemplate.axisAOnly }
  | .k073 => {
      firstIndex := 110
      secondIndex := 1
      support := fam_073_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k074 => {
      firstIndex := 110
      secondIndex := 2
      support := fam_074_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k075 => {
      firstIndex := 136
      secondIndex := 2
      support := fam_075_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k076 => {
      firstIndex := 149
      secondIndex := 1
      support := fam_076_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k077 => {
      firstIndex := 103
      secondIndex := 0
      support := fam_077_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k078 => {
      firstIndex := 105
      secondIndex := 0
      support := fam_078_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k079 => {
      firstIndex := 79
      secondIndex := 2
      support := fam_079_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k080 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_080_support
      template := SourceIndexTemplate.axisAOnly }
  | .k081 => {
      firstIndex := 170
      secondIndex := 1
      support := fam_081_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k082 => {
      firstIndex := 175
      secondIndex := 2
      support := fam_082_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k083 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_083_support
      template := SourceIndexTemplate.axisAOnly }
  | .k084 => {
      firstIndex := 175
      secondIndex := 3
      support := fam_084_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k085 => {
      firstIndex := 3
      secondIndex := 11
      support := fam_085_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k086 => {
      firstIndex := 3
      secondIndex := 15
      support := fam_086_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k087 => {
      firstIndex := 129
      secondIndex := 0
      support := fam_087_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k088 => {
      firstIndex := 131
      secondIndex := 0
      support := fam_088_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k089 => {
      firstIndex := 168
      secondIndex := 1
      support := fam_089_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k090 => {
      firstIndex := 94
      secondIndex := 1
      support := fam_090_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k091 => {
      firstIndex := 2
      secondIndex := 16
      support := fam_091_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k092 => {
      firstIndex := 142
      secondIndex := 1
      support := fam_092_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k093 => {
      firstIndex := 156
      secondIndex := 1
      support := fam_093_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k094 => {
      firstIndex := 106
      secondIndex := 1
      support := fam_094_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k095 => {
      firstIndex := 116
      secondIndex := 1
      support := fam_095_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k096 => {
      firstIndex := 107
      secondIndex := 2
      support := fam_096_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k097 => {
      firstIndex := 135
      secondIndex := 2
      support := fam_097_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k098 => {
      firstIndex := 122
      secondIndex := 2
      support := fam_098_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k099 => {
      firstIndex := 162
      secondIndex := 3
      support := fam_099_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k100 => {
      firstIndex := 135
      secondIndex := 3
      support := fam_100_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k101 => {
      firstIndex := 136
      secondIndex := 3
      support := fam_101_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k102 => {
      firstIndex := 3
      secondIndex := 12
      support := fam_102_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k103 => {
      firstIndex := 3
      secondIndex := 10
      support := fam_103_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k104 => {
      firstIndex := 171
      secondIndex := 0
      support := fam_104_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k105 => {
      firstIndex := 157
      secondIndex := 0
      support := fam_105_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k106 => {
      firstIndex := 130
      secondIndex := 1
      support := fam_106_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k107 => {
      firstIndex := 120
      secondIndex := 1
      support := fam_107_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k108 => {
      firstIndex := 149
      secondIndex := 2
      support := fam_108_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k109 => {
      firstIndex := 109
      secondIndex := 2
      support := fam_109_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k110 => {
      firstIndex := 129
      secondIndex := 2
      support := fam_110_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k111 => {
      firstIndex := 149
      secondIndex := 3
      support := fam_111_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k112 => {
      firstIndex := 97
      secondIndex := 3
      support := fam_112_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k113 => {
      firstIndex := 3
      secondIndex := 13
      support := fam_113_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k114 => {
      firstIndex := 3
      secondIndex := 7
      support := fam_114_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k115 => {
      firstIndex := 155
      secondIndex := 0
      support := fam_115_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k116 => {
      firstIndex := 132
      secondIndex := 0
      support := fam_116_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k117 => {
      firstIndex := 133
      secondIndex := 0
      support := fam_117_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k118 => {
      firstIndex := 107
      secondIndex := 0
      support := fam_118_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k119 => {
      firstIndex := 145
      secondIndex := 0
      support := fam_119_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k120 => {
      firstIndex := 143
      secondIndex := 0
      support := fam_120_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k121 => {
      firstIndex := 128
      secondIndex := 1
      support := fam_121_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k122 => {
      firstIndex := 148
      secondIndex := 2
      support := fam_122_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k123 => {
      firstIndex := 143
      secondIndex := 2
      support := fam_123_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k124 => {
      firstIndex := 96
      secondIndex := 2
      support := fam_124_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }

/-- Finite catalog view of the generated classifier keys.

This is the preferred input shape for generated source/row membership
chunks: the generated proof can target the generic
`SourceRowFactsGoodCatalogOnRange` or
`SourceRowPredicateGoodCatalogOnRange` APIs, then erase the concrete
catalog immediately through the small theorems below. -/
def classifierSourceIndexKeyAt (i : Fin 125) : SourceIndexStateKey :=
  if i.val = 0 then ClassifierKey.k000.toSourceIndexStateKey else
  if i.val = 1 then ClassifierKey.k001.toSourceIndexStateKey else
  if i.val = 2 then ClassifierKey.k002.toSourceIndexStateKey else
  if i.val = 3 then ClassifierKey.k003.toSourceIndexStateKey else
  if i.val = 4 then ClassifierKey.k004.toSourceIndexStateKey else
  if i.val = 5 then ClassifierKey.k005.toSourceIndexStateKey else
  if i.val = 6 then ClassifierKey.k006.toSourceIndexStateKey else
  if i.val = 7 then ClassifierKey.k007.toSourceIndexStateKey else
  if i.val = 8 then ClassifierKey.k008.toSourceIndexStateKey else
  if i.val = 9 then ClassifierKey.k009.toSourceIndexStateKey else
  if i.val = 10 then ClassifierKey.k010.toSourceIndexStateKey else
  if i.val = 11 then ClassifierKey.k011.toSourceIndexStateKey else
  if i.val = 12 then ClassifierKey.k012.toSourceIndexStateKey else
  if i.val = 13 then ClassifierKey.k013.toSourceIndexStateKey else
  if i.val = 14 then ClassifierKey.k014.toSourceIndexStateKey else
  if i.val = 15 then ClassifierKey.k015.toSourceIndexStateKey else
  if i.val = 16 then ClassifierKey.k016.toSourceIndexStateKey else
  if i.val = 17 then ClassifierKey.k017.toSourceIndexStateKey else
  if i.val = 18 then ClassifierKey.k018.toSourceIndexStateKey else
  if i.val = 19 then ClassifierKey.k019.toSourceIndexStateKey else
  if i.val = 20 then ClassifierKey.k020.toSourceIndexStateKey else
  if i.val = 21 then ClassifierKey.k021.toSourceIndexStateKey else
  if i.val = 22 then ClassifierKey.k022.toSourceIndexStateKey else
  if i.val = 23 then ClassifierKey.k023.toSourceIndexStateKey else
  if i.val = 24 then ClassifierKey.k024.toSourceIndexStateKey else
  if i.val = 25 then ClassifierKey.k025.toSourceIndexStateKey else
  if i.val = 26 then ClassifierKey.k026.toSourceIndexStateKey else
  if i.val = 27 then ClassifierKey.k027.toSourceIndexStateKey else
  if i.val = 28 then ClassifierKey.k028.toSourceIndexStateKey else
  if i.val = 29 then ClassifierKey.k029.toSourceIndexStateKey else
  if i.val = 30 then ClassifierKey.k030.toSourceIndexStateKey else
  if i.val = 31 then ClassifierKey.k031.toSourceIndexStateKey else
  if i.val = 32 then ClassifierKey.k032.toSourceIndexStateKey else
  if i.val = 33 then ClassifierKey.k033.toSourceIndexStateKey else
  if i.val = 34 then ClassifierKey.k034.toSourceIndexStateKey else
  if i.val = 35 then ClassifierKey.k035.toSourceIndexStateKey else
  if i.val = 36 then ClassifierKey.k036.toSourceIndexStateKey else
  if i.val = 37 then ClassifierKey.k037.toSourceIndexStateKey else
  if i.val = 38 then ClassifierKey.k038.toSourceIndexStateKey else
  if i.val = 39 then ClassifierKey.k039.toSourceIndexStateKey else
  if i.val = 40 then ClassifierKey.k040.toSourceIndexStateKey else
  if i.val = 41 then ClassifierKey.k041.toSourceIndexStateKey else
  if i.val = 42 then ClassifierKey.k042.toSourceIndexStateKey else
  if i.val = 43 then ClassifierKey.k043.toSourceIndexStateKey else
  if i.val = 44 then ClassifierKey.k044.toSourceIndexStateKey else
  if i.val = 45 then ClassifierKey.k045.toSourceIndexStateKey else
  if i.val = 46 then ClassifierKey.k046.toSourceIndexStateKey else
  if i.val = 47 then ClassifierKey.k047.toSourceIndexStateKey else
  if i.val = 48 then ClassifierKey.k048.toSourceIndexStateKey else
  if i.val = 49 then ClassifierKey.k049.toSourceIndexStateKey else
  if i.val = 50 then ClassifierKey.k050.toSourceIndexStateKey else
  if i.val = 51 then ClassifierKey.k051.toSourceIndexStateKey else
  if i.val = 52 then ClassifierKey.k052.toSourceIndexStateKey else
  if i.val = 53 then ClassifierKey.k053.toSourceIndexStateKey else
  if i.val = 54 then ClassifierKey.k054.toSourceIndexStateKey else
  if i.val = 55 then ClassifierKey.k055.toSourceIndexStateKey else
  if i.val = 56 then ClassifierKey.k056.toSourceIndexStateKey else
  if i.val = 57 then ClassifierKey.k057.toSourceIndexStateKey else
  if i.val = 58 then ClassifierKey.k058.toSourceIndexStateKey else
  if i.val = 59 then ClassifierKey.k059.toSourceIndexStateKey else
  if i.val = 60 then ClassifierKey.k060.toSourceIndexStateKey else
  if i.val = 61 then ClassifierKey.k061.toSourceIndexStateKey else
  if i.val = 62 then ClassifierKey.k062.toSourceIndexStateKey else
  if i.val = 63 then ClassifierKey.k063.toSourceIndexStateKey else
  if i.val = 64 then ClassifierKey.k064.toSourceIndexStateKey else
  if i.val = 65 then ClassifierKey.k065.toSourceIndexStateKey else
  if i.val = 66 then ClassifierKey.k066.toSourceIndexStateKey else
  if i.val = 67 then ClassifierKey.k067.toSourceIndexStateKey else
  if i.val = 68 then ClassifierKey.k068.toSourceIndexStateKey else
  if i.val = 69 then ClassifierKey.k069.toSourceIndexStateKey else
  if i.val = 70 then ClassifierKey.k070.toSourceIndexStateKey else
  if i.val = 71 then ClassifierKey.k071.toSourceIndexStateKey else
  if i.val = 72 then ClassifierKey.k072.toSourceIndexStateKey else
  if i.val = 73 then ClassifierKey.k073.toSourceIndexStateKey else
  if i.val = 74 then ClassifierKey.k074.toSourceIndexStateKey else
  if i.val = 75 then ClassifierKey.k075.toSourceIndexStateKey else
  if i.val = 76 then ClassifierKey.k076.toSourceIndexStateKey else
  if i.val = 77 then ClassifierKey.k077.toSourceIndexStateKey else
  if i.val = 78 then ClassifierKey.k078.toSourceIndexStateKey else
  if i.val = 79 then ClassifierKey.k079.toSourceIndexStateKey else
  if i.val = 80 then ClassifierKey.k080.toSourceIndexStateKey else
  if i.val = 81 then ClassifierKey.k081.toSourceIndexStateKey else
  if i.val = 82 then ClassifierKey.k082.toSourceIndexStateKey else
  if i.val = 83 then ClassifierKey.k083.toSourceIndexStateKey else
  if i.val = 84 then ClassifierKey.k084.toSourceIndexStateKey else
  if i.val = 85 then ClassifierKey.k085.toSourceIndexStateKey else
  if i.val = 86 then ClassifierKey.k086.toSourceIndexStateKey else
  if i.val = 87 then ClassifierKey.k087.toSourceIndexStateKey else
  if i.val = 88 then ClassifierKey.k088.toSourceIndexStateKey else
  if i.val = 89 then ClassifierKey.k089.toSourceIndexStateKey else
  if i.val = 90 then ClassifierKey.k090.toSourceIndexStateKey else
  if i.val = 91 then ClassifierKey.k091.toSourceIndexStateKey else
  if i.val = 92 then ClassifierKey.k092.toSourceIndexStateKey else
  if i.val = 93 then ClassifierKey.k093.toSourceIndexStateKey else
  if i.val = 94 then ClassifierKey.k094.toSourceIndexStateKey else
  if i.val = 95 then ClassifierKey.k095.toSourceIndexStateKey else
  if i.val = 96 then ClassifierKey.k096.toSourceIndexStateKey else
  if i.val = 97 then ClassifierKey.k097.toSourceIndexStateKey else
  if i.val = 98 then ClassifierKey.k098.toSourceIndexStateKey else
  if i.val = 99 then ClassifierKey.k099.toSourceIndexStateKey else
  if i.val = 100 then ClassifierKey.k100.toSourceIndexStateKey else
  if i.val = 101 then ClassifierKey.k101.toSourceIndexStateKey else
  if i.val = 102 then ClassifierKey.k102.toSourceIndexStateKey else
  if i.val = 103 then ClassifierKey.k103.toSourceIndexStateKey else
  if i.val = 104 then ClassifierKey.k104.toSourceIndexStateKey else
  if i.val = 105 then ClassifierKey.k105.toSourceIndexStateKey else
  if i.val = 106 then ClassifierKey.k106.toSourceIndexStateKey else
  if i.val = 107 then ClassifierKey.k107.toSourceIndexStateKey else
  if i.val = 108 then ClassifierKey.k108.toSourceIndexStateKey else
  if i.val = 109 then ClassifierKey.k109.toSourceIndexStateKey else
  if i.val = 110 then ClassifierKey.k110.toSourceIndexStateKey else
  if i.val = 111 then ClassifierKey.k111.toSourceIndexStateKey else
  if i.val = 112 then ClassifierKey.k112.toSourceIndexStateKey else
  if i.val = 113 then ClassifierKey.k113.toSourceIndexStateKey else
  if i.val = 114 then ClassifierKey.k114.toSourceIndexStateKey else
  if i.val = 115 then ClassifierKey.k115.toSourceIndexStateKey else
  if i.val = 116 then ClassifierKey.k116.toSourceIndexStateKey else
  if i.val = 117 then ClassifierKey.k117.toSourceIndexStateKey else
  if i.val = 118 then ClassifierKey.k118.toSourceIndexStateKey else
  if i.val = 119 then ClassifierKey.k119.toSourceIndexStateKey else
  if i.val = 120 then ClassifierKey.k120.toSourceIndexStateKey else
  if i.val = 121 then ClassifierKey.k121.toSourceIndexStateKey else
  if i.val = 122 then ClassifierKey.k122.toSourceIndexStateKey else
  if i.val = 123 then ClassifierKey.k123.toSourceIndexStateKey else
  if i.val = 124 then ClassifierKey.k124.toSourceIndexStateKey else
  ClassifierKey.k000.toSourceIndexStateKey

def ClassifierKey.Matches
    (key : ClassifierKey) (r : Nat) (mask : SignMask) : Prop :=
  key.toSourceIndexStateKey.Matches r mask

theorem classifierApplies_of_key_matches
    {key : ClassifierKey} {r : Nat} {mask : SignMask}
    (h : key.Matches r mask) :
    ClassifierApplies r mask := by
  cases key with
  | k000 =>
      exact ClassifierApplies.fam000 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_000_desc] using h)
  | k001 =>
      exact ClassifierApplies.fam001 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_001_desc] using h)
  | k002 =>
      exact ClassifierApplies.fam002 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_002_desc] using h)
  | k003 =>
      exact ClassifierApplies.fam003 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_003_desc] using h)
  | k004 =>
      exact ClassifierApplies.fam004 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_004_desc] using h)
  | k005 =>
      exact ClassifierApplies.fam005 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_005_desc] using h)
  | k006 =>
      exact ClassifierApplies.fam006 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_006_desc] using h)
  | k007 =>
      exact ClassifierApplies.fam007 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_007_desc] using h)
  | k008 =>
      exact ClassifierApplies.fam008 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_008_desc] using h)
  | k009 =>
      exact ClassifierApplies.fam009 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_009_desc] using h)
  | k010 =>
      exact ClassifierApplies.fam010 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_010_desc] using h)
  | k011 =>
      exact ClassifierApplies.fam011 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_011_desc] using h)
  | k012 =>
      exact ClassifierApplies.fam012 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_012_desc] using h)
  | k013 =>
      exact ClassifierApplies.fam013 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_013_desc] using h)
  | k014 =>
      exact ClassifierApplies.fam014 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_014_desc] using h)
  | k015 =>
      exact ClassifierApplies.fam015 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_015_desc] using h)
  | k016 =>
      exact ClassifierApplies.fam016 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_016_desc] using h)
  | k017 =>
      exact ClassifierApplies.fam017 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_017_desc] using h)
  | k018 =>
      exact ClassifierApplies.fam018 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_018_desc] using h)
  | k019 =>
      exact ClassifierApplies.fam019 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_019_desc] using h)
  | k020 =>
      exact ClassifierApplies.fam020 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_020_desc] using h)
  | k021 =>
      exact ClassifierApplies.fam021 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_021_desc] using h)
  | k022 =>
      exact ClassifierApplies.fam022 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_022_desc] using h)
  | k023 =>
      exact ClassifierApplies.fam023 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_023_desc] using h)
  | k024 =>
      exact ClassifierApplies.fam024 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_024_desc] using h)
  | k025 =>
      exact ClassifierApplies.fam025 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_025_desc] using h)
  | k026 =>
      exact ClassifierApplies.fam026 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_026_desc] using h)
  | k027 =>
      exact ClassifierApplies.fam027 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_027_desc] using h)
  | k028 =>
      exact ClassifierApplies.fam028 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_028_desc] using h)
  | k029 =>
      exact ClassifierApplies.fam029 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_029_desc] using h)
  | k030 =>
      exact ClassifierApplies.fam030 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_030_desc] using h)
  | k031 =>
      exact ClassifierApplies.fam031 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_031_desc] using h)
  | k032 =>
      exact ClassifierApplies.fam032 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_032_desc] using h)
  | k033 =>
      exact ClassifierApplies.fam033 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_033_desc] using h)
  | k034 =>
      exact ClassifierApplies.fam034 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_034_desc] using h)
  | k035 =>
      exact ClassifierApplies.fam035 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_035_desc] using h)
  | k036 =>
      exact ClassifierApplies.fam036 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_036_desc] using h)
  | k037 =>
      exact ClassifierApplies.fam037 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_037_desc] using h)
  | k038 =>
      exact ClassifierApplies.fam038 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_038_desc] using h)
  | k039 =>
      exact ClassifierApplies.fam039 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_039_desc] using h)
  | k040 =>
      exact ClassifierApplies.fam040 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_040_desc] using h)
  | k041 =>
      exact ClassifierApplies.fam041 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_041_desc] using h)
  | k042 =>
      exact ClassifierApplies.fam042 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_042_desc] using h)
  | k043 =>
      exact ClassifierApplies.fam043 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_043_desc] using h)
  | k044 =>
      exact ClassifierApplies.fam044 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_044_desc] using h)
  | k045 =>
      exact ClassifierApplies.fam045 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_045_desc] using h)
  | k046 =>
      exact ClassifierApplies.fam046 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_046_desc] using h)
  | k047 =>
      exact ClassifierApplies.fam047 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_047_desc] using h)
  | k048 =>
      exact ClassifierApplies.fam048 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_048_desc] using h)
  | k049 =>
      exact ClassifierApplies.fam049 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_049_desc] using h)
  | k050 =>
      exact ClassifierApplies.fam050 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_050_desc] using h)
  | k051 =>
      exact ClassifierApplies.fam051 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_051_desc] using h)
  | k052 =>
      exact ClassifierApplies.fam052 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_052_desc] using h)
  | k053 =>
      exact ClassifierApplies.fam053 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_053_desc] using h)
  | k054 =>
      exact ClassifierApplies.fam054 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_054_desc] using h)
  | k055 =>
      exact ClassifierApplies.fam055 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_055_desc] using h)
  | k056 =>
      exact ClassifierApplies.fam056 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_056_desc] using h)
  | k057 =>
      exact ClassifierApplies.fam057 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_057_desc] using h)
  | k058 =>
      exact ClassifierApplies.fam058 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_058_desc] using h)
  | k059 =>
      exact ClassifierApplies.fam059 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_059_desc] using h)
  | k060 =>
      exact ClassifierApplies.fam060 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_060_desc] using h)
  | k061 =>
      exact ClassifierApplies.fam061 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_061_desc] using h)
  | k062 =>
      exact ClassifierApplies.fam062 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_062_desc] using h)
  | k063 =>
      exact ClassifierApplies.fam063 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_063_desc] using h)
  | k064 =>
      exact ClassifierApplies.fam064 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_064_desc] using h)
  | k065 =>
      exact ClassifierApplies.fam065 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_065_desc] using h)
  | k066 =>
      exact ClassifierApplies.fam066 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_066_desc] using h)
  | k067 =>
      exact ClassifierApplies.fam067 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_067_desc] using h)
  | k068 =>
      exact ClassifierApplies.fam068 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_068_desc] using h)
  | k069 =>
      exact ClassifierApplies.fam069 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_069_desc] using h)
  | k070 =>
      exact ClassifierApplies.fam070 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_070_desc] using h)
  | k071 =>
      exact ClassifierApplies.fam071 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_071_desc] using h)
  | k072 =>
      exact ClassifierApplies.fam072 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_072_desc] using h)
  | k073 =>
      exact ClassifierApplies.fam073 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_073_desc] using h)
  | k074 =>
      exact ClassifierApplies.fam074 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_074_desc] using h)
  | k075 =>
      exact ClassifierApplies.fam075 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_075_desc] using h)
  | k076 =>
      exact ClassifierApplies.fam076 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_076_desc] using h)
  | k077 =>
      exact ClassifierApplies.fam077 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_077_desc] using h)
  | k078 =>
      exact ClassifierApplies.fam078 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_078_desc] using h)
  | k079 =>
      exact ClassifierApplies.fam079 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_079_desc] using h)
  | k080 =>
      exact ClassifierApplies.fam080 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_080_desc] using h)
  | k081 =>
      exact ClassifierApplies.fam081 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_081_desc] using h)
  | k082 =>
      exact ClassifierApplies.fam082 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_082_desc] using h)
  | k083 =>
      exact ClassifierApplies.fam083 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_083_desc] using h)
  | k084 =>
      exact ClassifierApplies.fam084 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_084_desc] using h)
  | k085 =>
      exact ClassifierApplies.fam085 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_085_desc] using h)
  | k086 =>
      exact ClassifierApplies.fam086 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_086_desc] using h)
  | k087 =>
      exact ClassifierApplies.fam087 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_087_desc] using h)
  | k088 =>
      exact ClassifierApplies.fam088 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_088_desc] using h)
  | k089 =>
      exact ClassifierApplies.fam089 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_089_desc] using h)
  | k090 =>
      exact ClassifierApplies.fam090 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_090_desc] using h)
  | k091 =>
      exact ClassifierApplies.fam091 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_091_desc] using h)
  | k092 =>
      exact ClassifierApplies.fam092 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_092_desc] using h)
  | k093 =>
      exact ClassifierApplies.fam093 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_093_desc] using h)
  | k094 =>
      exact ClassifierApplies.fam094 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_094_desc] using h)
  | k095 =>
      exact ClassifierApplies.fam095 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_095_desc] using h)
  | k096 =>
      exact ClassifierApplies.fam096 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_096_desc] using h)
  | k097 =>
      exact ClassifierApplies.fam097 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_097_desc] using h)
  | k098 =>
      exact ClassifierApplies.fam098 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_098_desc] using h)
  | k099 =>
      exact ClassifierApplies.fam099 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_099_desc] using h)
  | k100 =>
      exact ClassifierApplies.fam100 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_100_desc] using h)
  | k101 =>
      exact ClassifierApplies.fam101 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_101_desc] using h)
  | k102 =>
      exact ClassifierApplies.fam102 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_102_desc] using h)
  | k103 =>
      exact ClassifierApplies.fam103 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_103_desc] using h)
  | k104 =>
      exact ClassifierApplies.fam104 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_104_desc] using h)
  | k105 =>
      exact ClassifierApplies.fam105 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_105_desc] using h)
  | k106 =>
      exact ClassifierApplies.fam106 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_106_desc] using h)
  | k107 =>
      exact ClassifierApplies.fam107 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_107_desc] using h)
  | k108 =>
      exact ClassifierApplies.fam108 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_108_desc] using h)
  | k109 =>
      exact ClassifierApplies.fam109 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_109_desc] using h)
  | k110 =>
      exact ClassifierApplies.fam110 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_110_desc] using h)
  | k111 =>
      exact ClassifierApplies.fam111 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_111_desc] using h)
  | k112 =>
      exact ClassifierApplies.fam112 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_112_desc] using h)
  | k113 =>
      exact ClassifierApplies.fam113 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_113_desc] using h)
  | k114 =>
      exact ClassifierApplies.fam114 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_114_desc] using h)
  | k115 =>
      exact ClassifierApplies.fam115 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_115_desc] using h)
  | k116 =>
      exact ClassifierApplies.fam116 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_116_desc] using h)
  | k117 =>
      exact ClassifierApplies.fam117 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_117_desc] using h)
  | k118 =>
      exact ClassifierApplies.fam118 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_118_desc] using h)
  | k119 =>
      exact ClassifierApplies.fam119 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_119_desc] using h)
  | k120 =>
      exact ClassifierApplies.fam120 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_120_desc] using h)
  | k121 =>
      exact ClassifierApplies.fam121 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_121_desc] using h)
  | k122 =>
      exact ClassifierApplies.fam122 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_122_desc] using h)
  | k123 =>
      exact ClassifierApplies.fam123 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_123_desc] using h)
  | k124 =>
      exact ClassifierApplies.fam124 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_124_desc] using h)

theorem ClassifierKey.matches_of_source_row
    {key : ClassifierKey} {r : Nat} {mask : SignMask}
    (hsource :
      SourceIndexStateSourceFacts key.toSourceIndexStateKey r mask)
    (hrows : SourceIndexStateRowFacts key.toSourceIndexStateKey r mask) :
    key.Matches r mask :=
  SourceIndexStateKey.matches_of_source_row hsource hrows


def classifierFamily : RowPropertyMembershipFamily where
  Applies := ClassifierApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 h =>
        exact fam_000_desc.covered_of_applies h
    | fam001 h =>
        exact fam_001_desc.covered_of_applies h
    | fam002 h =>
        exact fam_002_desc.covered_of_applies h
    | fam003 h =>
        exact fam_003_desc.covered_of_applies h
    | fam004 h =>
        exact fam_004_desc.covered_of_applies h
    | fam005 h =>
        exact fam_005_desc.covered_of_applies h
    | fam006 h =>
        exact fam_006_desc.covered_of_applies h
    | fam007 h =>
        exact fam_007_desc.covered_of_applies h
    | fam008 h =>
        exact fam_008_desc.covered_of_applies h
    | fam009 h =>
        exact fam_009_desc.covered_of_applies h
    | fam010 h =>
        exact fam_010_desc.covered_of_applies h
    | fam011 h =>
        exact fam_011_desc.covered_of_applies h
    | fam012 h =>
        exact fam_012_desc.covered_of_applies h
    | fam013 h =>
        exact fam_013_desc.covered_of_applies h
    | fam014 h =>
        exact fam_014_desc.covered_of_applies h
    | fam015 h =>
        exact fam_015_desc.covered_of_applies h
    | fam016 h =>
        exact fam_016_desc.covered_of_applies h
    | fam017 h =>
        exact fam_017_desc.covered_of_applies h
    | fam018 h =>
        exact fam_018_desc.covered_of_applies h
    | fam019 h =>
        exact fam_019_desc.covered_of_applies h
    | fam020 h =>
        exact fam_020_desc.covered_of_applies h
    | fam021 h =>
        exact fam_021_desc.covered_of_applies h
    | fam022 h =>
        exact fam_022_desc.covered_of_applies h
    | fam023 h =>
        exact fam_023_desc.covered_of_applies h
    | fam024 h =>
        exact fam_024_desc.covered_of_applies h
    | fam025 h =>
        exact fam_025_desc.covered_of_applies h
    | fam026 h =>
        exact fam_026_desc.covered_of_applies h
    | fam027 h =>
        exact fam_027_desc.covered_of_applies h
    | fam028 h =>
        exact fam_028_desc.covered_of_applies h
    | fam029 h =>
        exact fam_029_desc.covered_of_applies h
    | fam030 h =>
        exact fam_030_desc.covered_of_applies h
    | fam031 h =>
        exact fam_031_desc.covered_of_applies h
    | fam032 h =>
        exact fam_032_desc.covered_of_applies h
    | fam033 h =>
        exact fam_033_desc.covered_of_applies h
    | fam034 h =>
        exact fam_034_desc.covered_of_applies h
    | fam035 h =>
        exact fam_035_desc.covered_of_applies h
    | fam036 h =>
        exact fam_036_desc.covered_of_applies h
    | fam037 h =>
        exact fam_037_desc.covered_of_applies h
    | fam038 h =>
        exact fam_038_desc.covered_of_applies h
    | fam039 h =>
        exact fam_039_desc.covered_of_applies h
    | fam040 h =>
        exact fam_040_desc.covered_of_applies h
    | fam041 h =>
        exact fam_041_desc.covered_of_applies h
    | fam042 h =>
        exact fam_042_desc.covered_of_applies h
    | fam043 h =>
        exact fam_043_desc.covered_of_applies h
    | fam044 h =>
        exact fam_044_desc.covered_of_applies h
    | fam045 h =>
        exact fam_045_desc.covered_of_applies h
    | fam046 h =>
        exact fam_046_desc.covered_of_applies h
    | fam047 h =>
        exact fam_047_desc.covered_of_applies h
    | fam048 h =>
        exact fam_048_desc.covered_of_applies h
    | fam049 h =>
        exact fam_049_desc.covered_of_applies h
    | fam050 h =>
        exact fam_050_desc.covered_of_applies h
    | fam051 h =>
        exact fam_051_desc.covered_of_applies h
    | fam052 h =>
        exact fam_052_desc.covered_of_applies h
    | fam053 h =>
        exact fam_053_desc.covered_of_applies h
    | fam054 h =>
        exact fam_054_desc.covered_of_applies h
    | fam055 h =>
        exact fam_055_desc.covered_of_applies h
    | fam056 h =>
        exact fam_056_desc.covered_of_applies h
    | fam057 h =>
        exact fam_057_desc.covered_of_applies h
    | fam058 h =>
        exact fam_058_desc.covered_of_applies h
    | fam059 h =>
        exact fam_059_desc.covered_of_applies h
    | fam060 h =>
        exact fam_060_desc.covered_of_applies h
    | fam061 h =>
        exact fam_061_desc.covered_of_applies h
    | fam062 h =>
        exact fam_062_desc.covered_of_applies h
    | fam063 h =>
        exact fam_063_desc.covered_of_applies h
    | fam064 h =>
        exact fam_064_desc.covered_of_applies h
    | fam065 h =>
        exact fam_065_desc.covered_of_applies h
    | fam066 h =>
        exact fam_066_desc.covered_of_applies h
    | fam067 h =>
        exact fam_067_desc.covered_of_applies h
    | fam068 h =>
        exact fam_068_desc.covered_of_applies h
    | fam069 h =>
        exact fam_069_desc.covered_of_applies h
    | fam070 h =>
        exact fam_070_desc.covered_of_applies h
    | fam071 h =>
        exact fam_071_desc.covered_of_applies h
    | fam072 h =>
        exact fam_072_desc.covered_of_applies h
    | fam073 h =>
        exact fam_073_desc.covered_of_applies h
    | fam074 h =>
        exact fam_074_desc.covered_of_applies h
    | fam075 h =>
        exact fam_075_desc.covered_of_applies h
    | fam076 h =>
        exact fam_076_desc.covered_of_applies h
    | fam077 h =>
        exact fam_077_desc.covered_of_applies h
    | fam078 h =>
        exact fam_078_desc.covered_of_applies h
    | fam079 h =>
        exact fam_079_desc.covered_of_applies h
    | fam080 h =>
        exact fam_080_desc.covered_of_applies h
    | fam081 h =>
        exact fam_081_desc.covered_of_applies h
    | fam082 h =>
        exact fam_082_desc.covered_of_applies h
    | fam083 h =>
        exact fam_083_desc.covered_of_applies h
    | fam084 h =>
        exact fam_084_desc.covered_of_applies h
    | fam085 h =>
        exact fam_085_desc.covered_of_applies h
    | fam086 h =>
        exact fam_086_desc.covered_of_applies h
    | fam087 h =>
        exact fam_087_desc.covered_of_applies h
    | fam088 h =>
        exact fam_088_desc.covered_of_applies h
    | fam089 h =>
        exact fam_089_desc.covered_of_applies h
    | fam090 h =>
        exact fam_090_desc.covered_of_applies h
    | fam091 h =>
        exact fam_091_desc.covered_of_applies h
    | fam092 h =>
        exact fam_092_desc.covered_of_applies h
    | fam093 h =>
        exact fam_093_desc.covered_of_applies h
    | fam094 h =>
        exact fam_094_desc.covered_of_applies h
    | fam095 h =>
        exact fam_095_desc.covered_of_applies h
    | fam096 h =>
        exact fam_096_desc.covered_of_applies h
    | fam097 h =>
        exact fam_097_desc.covered_of_applies h
    | fam098 h =>
        exact fam_098_desc.covered_of_applies h
    | fam099 h =>
        exact fam_099_desc.covered_of_applies h
    | fam100 h =>
        exact fam_100_desc.covered_of_applies h
    | fam101 h =>
        exact fam_101_desc.covered_of_applies h
    | fam102 h =>
        exact fam_102_desc.covered_of_applies h
    | fam103 h =>
        exact fam_103_desc.covered_of_applies h
    | fam104 h =>
        exact fam_104_desc.covered_of_applies h
    | fam105 h =>
        exact fam_105_desc.covered_of_applies h
    | fam106 h =>
        exact fam_106_desc.covered_of_applies h
    | fam107 h =>
        exact fam_107_desc.covered_of_applies h
    | fam108 h =>
        exact fam_108_desc.covered_of_applies h
    | fam109 h =>
        exact fam_109_desc.covered_of_applies h
    | fam110 h =>
        exact fam_110_desc.covered_of_applies h
    | fam111 h =>
        exact fam_111_desc.covered_of_applies h
    | fam112 h =>
        exact fam_112_desc.covered_of_applies h
    | fam113 h =>
        exact fam_113_desc.covered_of_applies h
    | fam114 h =>
        exact fam_114_desc.covered_of_applies h
    | fam115 h =>
        exact fam_115_desc.covered_of_applies h
    | fam116 h =>
        exact fam_116_desc.covered_of_applies h
    | fam117 h =>
        exact fam_117_desc.covered_of_applies h
    | fam118 h =>
        exact fam_118_desc.covered_of_applies h
    | fam119 h =>
        exact fam_119_desc.covered_of_applies h
    | fam120 h =>
        exact fam_120_desc.covered_of_applies h
    | fam121 h =>
        exact fam_121_desc.covered_of_applies h
    | fam122 h =>
        exact fam_122_desc.covered_of_applies h
    | fam123 h =>
        exact fam_123_desc.covered_of_applies h
    | fam124 h =>
        exact fam_124_desc.covered_of_applies h

theorem classifierKillsOn : classifierFamily.KillsOn :=
  classifierFamily.killsOn

/-- Decidable classifier membership for the generated descriptor family. -/
instance instDecidableClassifierApplies (r : Nat) (mask : SignMask) :
    Decidable (ClassifierApplies r mask) := by
  by_cases h000 : fam_000_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam000 h000)
  by_cases h001 : fam_001_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam001 h001)
  by_cases h002 : fam_002_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam002 h002)
  by_cases h003 : fam_003_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam003 h003)
  by_cases h004 : fam_004_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam004 h004)
  by_cases h005 : fam_005_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam005 h005)
  by_cases h006 : fam_006_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam006 h006)
  by_cases h007 : fam_007_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam007 h007)
  by_cases h008 : fam_008_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam008 h008)
  by_cases h009 : fam_009_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam009 h009)
  by_cases h010 : fam_010_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam010 h010)
  by_cases h011 : fam_011_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam011 h011)
  by_cases h012 : fam_012_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam012 h012)
  by_cases h013 : fam_013_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam013 h013)
  by_cases h014 : fam_014_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam014 h014)
  by_cases h015 : fam_015_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam015 h015)
  by_cases h016 : fam_016_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam016 h016)
  by_cases h017 : fam_017_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam017 h017)
  by_cases h018 : fam_018_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam018 h018)
  by_cases h019 : fam_019_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam019 h019)
  by_cases h020 : fam_020_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam020 h020)
  by_cases h021 : fam_021_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam021 h021)
  by_cases h022 : fam_022_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam022 h022)
  by_cases h023 : fam_023_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam023 h023)
  by_cases h024 : fam_024_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam024 h024)
  by_cases h025 : fam_025_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam025 h025)
  by_cases h026 : fam_026_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam026 h026)
  by_cases h027 : fam_027_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam027 h027)
  by_cases h028 : fam_028_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam028 h028)
  by_cases h029 : fam_029_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam029 h029)
  by_cases h030 : fam_030_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam030 h030)
  by_cases h031 : fam_031_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam031 h031)
  by_cases h032 : fam_032_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam032 h032)
  by_cases h033 : fam_033_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam033 h033)
  by_cases h034 : fam_034_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam034 h034)
  by_cases h035 : fam_035_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam035 h035)
  by_cases h036 : fam_036_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam036 h036)
  by_cases h037 : fam_037_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam037 h037)
  by_cases h038 : fam_038_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam038 h038)
  by_cases h039 : fam_039_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam039 h039)
  by_cases h040 : fam_040_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam040 h040)
  by_cases h041 : fam_041_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam041 h041)
  by_cases h042 : fam_042_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam042 h042)
  by_cases h043 : fam_043_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam043 h043)
  by_cases h044 : fam_044_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam044 h044)
  by_cases h045 : fam_045_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam045 h045)
  by_cases h046 : fam_046_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam046 h046)
  by_cases h047 : fam_047_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam047 h047)
  by_cases h048 : fam_048_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam048 h048)
  by_cases h049 : fam_049_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam049 h049)
  by_cases h050 : fam_050_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam050 h050)
  by_cases h051 : fam_051_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam051 h051)
  by_cases h052 : fam_052_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam052 h052)
  by_cases h053 : fam_053_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam053 h053)
  by_cases h054 : fam_054_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam054 h054)
  by_cases h055 : fam_055_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam055 h055)
  by_cases h056 : fam_056_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam056 h056)
  by_cases h057 : fam_057_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam057 h057)
  by_cases h058 : fam_058_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam058 h058)
  by_cases h059 : fam_059_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam059 h059)
  by_cases h060 : fam_060_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam060 h060)
  by_cases h061 : fam_061_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam061 h061)
  by_cases h062 : fam_062_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam062 h062)
  by_cases h063 : fam_063_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam063 h063)
  by_cases h064 : fam_064_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam064 h064)
  by_cases h065 : fam_065_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam065 h065)
  by_cases h066 : fam_066_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam066 h066)
  by_cases h067 : fam_067_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam067 h067)
  by_cases h068 : fam_068_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam068 h068)
  by_cases h069 : fam_069_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam069 h069)
  by_cases h070 : fam_070_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam070 h070)
  by_cases h071 : fam_071_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam071 h071)
  by_cases h072 : fam_072_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam072 h072)
  by_cases h073 : fam_073_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam073 h073)
  by_cases h074 : fam_074_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam074 h074)
  by_cases h075 : fam_075_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam075 h075)
  by_cases h076 : fam_076_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam076 h076)
  by_cases h077 : fam_077_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam077 h077)
  by_cases h078 : fam_078_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam078 h078)
  by_cases h079 : fam_079_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam079 h079)
  by_cases h080 : fam_080_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam080 h080)
  by_cases h081 : fam_081_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam081 h081)
  by_cases h082 : fam_082_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam082 h082)
  by_cases h083 : fam_083_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam083 h083)
  by_cases h084 : fam_084_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam084 h084)
  by_cases h085 : fam_085_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam085 h085)
  by_cases h086 : fam_086_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam086 h086)
  by_cases h087 : fam_087_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam087 h087)
  by_cases h088 : fam_088_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam088 h088)
  by_cases h089 : fam_089_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam089 h089)
  by_cases h090 : fam_090_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam090 h090)
  by_cases h091 : fam_091_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam091 h091)
  by_cases h092 : fam_092_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam092 h092)
  by_cases h093 : fam_093_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam093 h093)
  by_cases h094 : fam_094_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam094 h094)
  by_cases h095 : fam_095_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam095 h095)
  by_cases h096 : fam_096_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam096 h096)
  by_cases h097 : fam_097_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam097 h097)
  by_cases h098 : fam_098_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam098 h098)
  by_cases h099 : fam_099_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam099 h099)
  by_cases h100 : fam_100_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam100 h100)
  by_cases h101 : fam_101_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam101 h101)
  by_cases h102 : fam_102_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam102 h102)
  by_cases h103 : fam_103_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam103 h103)
  by_cases h104 : fam_104_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam104 h104)
  by_cases h105 : fam_105_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam105 h105)
  by_cases h106 : fam_106_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam106 h106)
  by_cases h107 : fam_107_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam107 h107)
  by_cases h108 : fam_108_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam108 h108)
  by_cases h109 : fam_109_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam109 h109)
  by_cases h110 : fam_110_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam110 h110)
  by_cases h111 : fam_111_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam111 h111)
  by_cases h112 : fam_112_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam112 h112)
  by_cases h113 : fam_113_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam113 h113)
  by_cases h114 : fam_114_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam114 h114)
  by_cases h115 : fam_115_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam115 h115)
  by_cases h116 : fam_116_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam116 h116)
  by_cases h117 : fam_117_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam117 h117)
  by_cases h118 : fam_118_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam118 h118)
  by_cases h119 : fam_119_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam119 h119)
  by_cases h120 : fam_120_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam120 h120)
  by_cases h121 : fam_121_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam121 h121)
  by_cases h122 : fam_122_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam122 h122)
  by_cases h123 : fam_123_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam123 h123)
  by_cases h124 : fam_124_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam124 h124)
  · exact isFalse (by
      intro h
      cases h with
      | fam000 h => exact h000 h
      | fam001 h => exact h001 h
      | fam002 h => exact h002 h
      | fam003 h => exact h003 h
      | fam004 h => exact h004 h
      | fam005 h => exact h005 h
      | fam006 h => exact h006 h
      | fam007 h => exact h007 h
      | fam008 h => exact h008 h
      | fam009 h => exact h009 h
      | fam010 h => exact h010 h
      | fam011 h => exact h011 h
      | fam012 h => exact h012 h
      | fam013 h => exact h013 h
      | fam014 h => exact h014 h
      | fam015 h => exact h015 h
      | fam016 h => exact h016 h
      | fam017 h => exact h017 h
      | fam018 h => exact h018 h
      | fam019 h => exact h019 h
      | fam020 h => exact h020 h
      | fam021 h => exact h021 h
      | fam022 h => exact h022 h
      | fam023 h => exact h023 h
      | fam024 h => exact h024 h
      | fam025 h => exact h025 h
      | fam026 h => exact h026 h
      | fam027 h => exact h027 h
      | fam028 h => exact h028 h
      | fam029 h => exact h029 h
      | fam030 h => exact h030 h
      | fam031 h => exact h031 h
      | fam032 h => exact h032 h
      | fam033 h => exact h033 h
      | fam034 h => exact h034 h
      | fam035 h => exact h035 h
      | fam036 h => exact h036 h
      | fam037 h => exact h037 h
      | fam038 h => exact h038 h
      | fam039 h => exact h039 h
      | fam040 h => exact h040 h
      | fam041 h => exact h041 h
      | fam042 h => exact h042 h
      | fam043 h => exact h043 h
      | fam044 h => exact h044 h
      | fam045 h => exact h045 h
      | fam046 h => exact h046 h
      | fam047 h => exact h047 h
      | fam048 h => exact h048 h
      | fam049 h => exact h049 h
      | fam050 h => exact h050 h
      | fam051 h => exact h051 h
      | fam052 h => exact h052 h
      | fam053 h => exact h053 h
      | fam054 h => exact h054 h
      | fam055 h => exact h055 h
      | fam056 h => exact h056 h
      | fam057 h => exact h057 h
      | fam058 h => exact h058 h
      | fam059 h => exact h059 h
      | fam060 h => exact h060 h
      | fam061 h => exact h061 h
      | fam062 h => exact h062 h
      | fam063 h => exact h063 h
      | fam064 h => exact h064 h
      | fam065 h => exact h065 h
      | fam066 h => exact h066 h
      | fam067 h => exact h067 h
      | fam068 h => exact h068 h
      | fam069 h => exact h069 h
      | fam070 h => exact h070 h
      | fam071 h => exact h071 h
      | fam072 h => exact h072 h
      | fam073 h => exact h073 h
      | fam074 h => exact h074 h
      | fam075 h => exact h075 h
      | fam076 h => exact h076 h
      | fam077 h => exact h077 h
      | fam078 h => exact h078 h
      | fam079 h => exact h079 h
      | fam080 h => exact h080 h
      | fam081 h => exact h081 h
      | fam082 h => exact h082 h
      | fam083 h => exact h083 h
      | fam084 h => exact h084 h
      | fam085 h => exact h085 h
      | fam086 h => exact h086 h
      | fam087 h => exact h087 h
      | fam088 h => exact h088 h
      | fam089 h => exact h089 h
      | fam090 h => exact h090 h
      | fam091 h => exact h091 h
      | fam092 h => exact h092 h
      | fam093 h => exact h093 h
      | fam094 h => exact h094 h
      | fam095 h => exact h095 h
      | fam096 h => exact h096 h
      | fam097 h => exact h097 h
      | fam098 h => exact h098 h
      | fam099 h => exact h099 h
      | fam100 h => exact h100 h
      | fam101 h => exact h101 h
      | fam102 h => exact h102 h
      | fam103 h => exact h103 h
      | fam104 h => exact h104 h
      | fam105 h => exact h105 h
      | fam106 h => exact h106 h
      | fam107 h => exact h107 h
      | fam108 h => exact h108 h
      | fam109 h => exact h109 h
      | fam110 h => exact h110 h
      | fam111 h => exact h111 h
      | fam112 h => exact h112 h
      | fam113 h => exact h113 h
      | fam114 h => exact h114 h
      | fam115 h => exact h115 h
      | fam116 h => exact h116 h
      | fam117 h => exact h117 h
      | fam118 h => exact h118 h
      | fam119 h => exact h119 h
      | fam120 h => exact h120 h
      | fam121 h => exact h121 h
      | fam122 h => exact h122 h
      | fam123 h => exact h123 h
      | fam124 h => exact h124 h
    )

/-- Boolean classifier surface for AP16DU membership-completeness emitters. -/
def classifierAppliesBool (r : Nat) (mask : SignMask) : Bool :=
  decide (ClassifierApplies r mask)

theorem classifierApplies_of_bool
    {r : Nat} {mask : SignMask}
    (h : classifierAppliesBool r mask = true) :
    ClassifierApplies r mask := by
  simpa [classifierAppliesBool] using of_decide_eq_true h

theorem classifierAppliesBool_eq_true_of_applies
    {r : Nat} {mask : SignMask}
    (h : ClassifierApplies r mask) :
    classifierAppliesBool r mask = true := by
  simpa [classifierAppliesBool] using decide_eq_true h

/-- AP16DU bridge target for this bounded classifier surface. -/
abbrev classifierCompletenessOnIdentityRange : Prop :=
  RowPropertyMembershipCoverageOnIdentityRange classifierFamily 0 5000

theorem classifierCompletenessOnIdentityRange_of_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                classifierAppliesBool rank mask = true) :
    classifierCompletenessOnIdentityRange := by
  intro rank hlt mask hlo hhi hM hgood
  exact classifierApplies_of_bool
    (hcomplete hlt hlo hhi hM
      (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))

theorem classifierCompletenessOnIdentityRange_of_prop
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                ClassifierApplies rank mask) :
    classifierCompletenessOnIdentityRange :=
  classifierCompletenessOnIdentityRange_of_bool (fun hlt hlo hhi hM hgood =>
    classifierAppliesBool_eq_true_of_applies
      (hcomplete hlt hlo hhi hM hgood))

theorem classifierCompletenessOnIdentityRange_of_key
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey, key.Matches rank mask) :
    classifierCompletenessOnIdentityRange :=
  classifierCompletenessOnIdentityRange_of_prop (fun hlt hlo hhi hM hgood =>
    let ⟨key, hkey⟩ := hcomplete hlt hlo hhi hM hgood
    classifierApplies_of_key_matches hkey)

theorem classifierCompletenessOnIdentityRange_of_key_source_row
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourceFacts
                    key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    classifierCompletenessOnIdentityRange :=
  classifierCompletenessOnIdentityRange_of_key (fun hlt hlo hhi hM hgood =>
    let ⟨key, hsource, hrows⟩ := hcomplete hlt hlo hhi hM hgood
    ⟨key, key.matches_of_source_row hsource hrows⟩)

theorem classifierAllGoodCoverage
    (hcomplete : classifierCompletenessOnIdentityRange) :
    AllTranslationGoodCoverageOnRange 0 5000 := by
  intro rank hlo hhi hlt mask hM
  exact classifierFamily.identityRangeKills
    hcomplete rank hlt mask hlo hhi hM

theorem classifierAllGoodCoverage_of_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                classifierAppliesBool rank mask = true) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  classifierAllGoodCoverage
    (classifierCompletenessOnIdentityRange_of_bool hcomplete)

theorem classifierAllGoodCoverage_of_key
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey, key.Matches rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  classifierAllGoodCoverage
    (classifierCompletenessOnIdentityRange_of_key hcomplete)

theorem classifierAllGoodCoverage_of_key_source_row
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourceFacts
                    key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  classifierAllGoodCoverage
    (classifierCompletenessOnIdentityRange_of_key_source_row hcomplete)

theorem classifierAllGoodCoverage_of_sourceIndexFactsCatalog
    (hcomplete :
      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage hcomplete

theorem classifierAllGoodCoverage_of_sourceIndexPredicateCatalog
    (hcomplete :
      SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourceRowPredicateGoodCatalogOnRange.to_allGoodCoverage hcomplete

theorem fam_000_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_000_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam000 h)

theorem fam_001_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_001_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam001 h)

theorem fam_002_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_002_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam002 h)

theorem fam_003_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_003_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam003 h)

theorem fam_004_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_004_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam004 h)

theorem fam_005_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_005_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam005 h)

theorem fam_006_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_006_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam006 h)

theorem fam_007_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_007_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam007 h)

theorem fam_008_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_008_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam008 h)

theorem fam_009_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_009_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam009 h)

theorem fam_010_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_010_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam010 h)

theorem fam_011_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_011_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam011 h)

theorem fam_012_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_012_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam012 h)

theorem fam_013_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_013_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam013 h)

theorem fam_014_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_014_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam014 h)

theorem fam_015_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_015_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam015 h)

theorem fam_016_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_016_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam016 h)

theorem fam_017_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_017_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam017 h)

theorem fam_018_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_018_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam018 h)

theorem fam_019_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_019_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam019 h)

theorem fam_020_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_020_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam020 h)

theorem fam_021_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_021_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam021 h)

theorem fam_022_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_022_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam022 h)

theorem fam_023_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_023_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam023 h)

theorem fam_024_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_024_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam024 h)

theorem fam_025_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_025_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam025 h)

theorem fam_026_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_026_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam026 h)

theorem fam_027_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_027_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam027 h)

theorem fam_028_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_028_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam028 h)

theorem fam_029_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_029_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam029 h)

theorem fam_030_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_030_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam030 h)

theorem fam_031_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_031_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam031 h)

theorem fam_032_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_032_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam032 h)

theorem fam_033_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_033_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam033 h)

theorem fam_034_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_034_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam034 h)

theorem fam_035_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_035_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam035 h)

theorem fam_036_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_036_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam036 h)

theorem fam_037_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_037_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam037 h)

theorem fam_038_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_038_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam038 h)

theorem fam_039_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_039_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam039 h)

theorem fam_040_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_040_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam040 h)

theorem fam_041_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_041_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam041 h)

theorem fam_042_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_042_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam042 h)

theorem fam_043_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_043_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam043 h)

theorem fam_044_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_044_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam044 h)

theorem fam_045_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_045_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam045 h)

theorem fam_046_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_046_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam046 h)

theorem fam_047_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_047_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam047 h)

theorem fam_048_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_048_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam048 h)

theorem fam_049_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_049_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam049 h)

theorem fam_050_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_050_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam050 h)

theorem fam_051_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_051_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam051 h)

theorem fam_052_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_052_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam052 h)

theorem fam_053_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_053_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam053 h)

theorem fam_054_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_054_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam054 h)

theorem fam_055_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_055_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam055 h)

theorem fam_056_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_056_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam056 h)

theorem fam_057_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_057_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam057 h)

theorem fam_058_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_058_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam058 h)

theorem fam_059_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_059_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam059 h)

theorem fam_060_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_060_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam060 h)

theorem fam_061_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_061_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam061 h)

theorem fam_062_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_062_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam062 h)

theorem fam_063_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_063_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam063 h)

theorem fam_064_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_064_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam064 h)

theorem fam_065_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_065_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam065 h)

theorem fam_066_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_066_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam066 h)

theorem fam_067_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_067_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam067 h)

theorem fam_068_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_068_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam068 h)

theorem fam_069_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_069_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam069 h)

theorem fam_070_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_070_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam070 h)

theorem fam_071_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_071_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam071 h)

theorem fam_072_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_072_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam072 h)

theorem fam_073_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_073_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam073 h)

theorem fam_074_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_074_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam074 h)

theorem fam_075_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_075_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam075 h)

theorem fam_076_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_076_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam076 h)

theorem fam_077_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_077_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam077 h)

theorem fam_078_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_078_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam078 h)

theorem fam_079_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_079_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam079 h)

theorem fam_080_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_080_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam080 h)

theorem fam_081_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_081_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam081 h)

theorem fam_082_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_082_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam082 h)

theorem fam_083_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_083_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam083 h)

theorem fam_084_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_084_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam084 h)

theorem fam_085_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_085_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam085 h)

theorem fam_086_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_086_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam086 h)

theorem fam_087_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_087_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam087 h)

theorem fam_088_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_088_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam088 h)

theorem fam_089_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_089_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam089 h)

theorem fam_090_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_090_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam090 h)

theorem fam_091_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_091_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam091 h)

theorem fam_092_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_092_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam092 h)

theorem fam_093_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_093_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam093 h)

theorem fam_094_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_094_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam094 h)

theorem fam_095_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_095_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam095 h)

theorem fam_096_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_096_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam096 h)

theorem fam_097_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_097_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam097 h)

theorem fam_098_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_098_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam098 h)

theorem fam_099_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_099_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam099 h)

theorem fam_100_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_100_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam100 h)

theorem fam_101_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_101_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam101 h)

theorem fam_102_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_102_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam102 h)

theorem fam_103_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_103_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam103 h)

theorem fam_104_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_104_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam104 h)

theorem fam_105_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_105_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam105 h)

theorem fam_106_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_106_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam106 h)

theorem fam_107_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_107_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam107 h)

theorem fam_108_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_108_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam108 h)

theorem fam_109_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_109_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam109 h)

theorem fam_110_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_110_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam110 h)

theorem fam_111_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_111_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam111 h)

theorem fam_112_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_112_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam112 h)

theorem fam_113_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_113_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam113 h)

theorem fam_114_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_114_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam114 h)

theorem fam_115_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_115_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam115 h)

theorem fam_116_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_116_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam116 h)

theorem fam_117_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_117_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam117 h)

theorem fam_118_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_118_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam118 h)

theorem fam_119_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_119_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam119 h)

theorem fam_120_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_120_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam120 h)

theorem fam_121_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_121_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam121 h)

theorem fam_122_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_122_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam122 h)

theorem fam_123_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_123_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam123 h)

theorem fam_124_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_124_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam124 h)

theorem sourceIndexStateClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
