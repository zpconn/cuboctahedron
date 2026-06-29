import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

/-!
Generated GoodDirection-only source-index/state classifier smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof.  It packages selected descriptor states as a
semantic classifier surface for Phase 6Z.6K.8AP.16DU.3.
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

/--
AP16DU.4 bridge target for this bounded classifier surface.

The remaining proof-producing obligation is exactly the `hcomplete` premise:
every identity-linear GoodDirection survivor in `[0,5000)` must satisfy one of
the 125 source-index/state descriptor families in `classifierFamily`.  Once a
future generated/computable classifier proves that membership fact, this theorem
erases it directly to the public all-GoodDirection coverage surface.
-/
abbrev classifierCompletenessOnIdentityRange : Prop :=
  RowPropertyMembershipCoverageOnIdentityRange classifierFamily 0 5000

theorem classifierAllGoodCoverage
    (hcomplete : classifierCompletenessOnIdentityRange) :
    AllTranslationGoodCoverageOnRange 0 5000 := by
  intro rank hlo hhi hlt mask hM
  exact classifierFamily.identityRangeKills
    hcomplete rank hlt mask hlo hhi hM

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
