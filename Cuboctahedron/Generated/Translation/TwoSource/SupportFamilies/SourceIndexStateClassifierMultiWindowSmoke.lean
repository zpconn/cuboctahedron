import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

/-!
Generated GoodDirection-only source-index/state classifier smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof.  It packages selected descriptor states as a
semantic classifier surface for Phase 6Z.6K.8AP.16DU.9EA.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierMultiWindowSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage

set_option linter.unusedVariables false
set_option maxRecDepth 10000

/-- Classifier smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 7024. -/
def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_000_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 3023. -/
def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_001_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `baf26eae8e191cb2a2726b22ed51187143ca62f8947470b5c1fa71a6a5313c1c`.
Observed bounded GoodDirection cases: 2667. -/
def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_002_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 52
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 1573. -/
def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_003_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 25
  secondIndex := 2
  support := fam_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `9f4f7bfe2ac84d1949052e300152b837f4b3538eca7f9eec8220a75bd448ef6a`.
Observed bounded GoodDirection cases: 1182. -/
def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_004_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 51
  secondIndex := 1
  support := fam_004_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `afd6038feda84892c17a4d0954f5559c4cb5396ec87bd64792d38c8a733e0f78`.
Observed bounded GoodDirection cases: 1075. -/
def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_005_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 0
  support := fam_005_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 845. -/
def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_006_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 0
  support := fam_006_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `69a677d29b138362a0f675eaa8c179b8b353ce6abbab1d2f9d604aa09b4e00db`.
Observed bounded GoodDirection cases: 720. -/
def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def fam_007_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 15
  support := fam_007_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `b013663a1b1967d4fc59a926c8eb3f2d4507da5b08254dbe22289393330ce359`.
Observed bounded GoodDirection cases: 668. -/
def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_008_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 50
  secondIndex := 2
  support := fam_008_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `7e4254e8e8a89467666d4f70d090bb4af72f4df73a95a4ab07e2be3aaf5aa1e9`.
Observed bounded GoodDirection cases: 591. -/
def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def fam_009_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 10
  support := fam_009_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `fb009e73e064ec37183f65545575cf3f84cf3e090c82d717d7c5e1e800b62f41`.
Observed bounded GoodDirection cases: 569. -/
def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def fam_010_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 13
  support := fam_010_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `fd9ce00531fecbcf8326b152478e0b00bff3405c9eb247ee8d463229b8d70112`.
Observed bounded GoodDirection cases: 534. -/
def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def fam_011_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 11
  support := fam_011_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 513. -/
def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def fam_012_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 7
  support := fam_012_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `5651cb30a48af7c1f0528abbffbbcf4eb1954a09872946c492757538dfa5516f`.
Observed bounded GoodDirection cases: 490. -/
def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def fam_013_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 12
  support := fam_013_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `16806f7f8e27292c741217ef7a837fcf043172e9fbaeff17cd706c9d4f669c70`.
Observed bounded GoodDirection cases: 489. -/
def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_014_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 0
  support := fam_014_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `b3cef9b2770de6d05c9b1eefe272e6cabbdf7ba5411cb17f52e5f16d0c879231`.
Observed bounded GoodDirection cases: 489. -/
def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_015_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 0
  support := fam_015_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `158dc5c1e36d751952d13ae96d984e2aa1489e8060db73a4fe1355bf35743158`.
Observed bounded GoodDirection cases: 482. -/
def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def fam_016_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 14
  support := fam_016_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `6d2e4128c784627b01fdf6513ed433ec6ab2c1c8a0fcf082c21e14a67526bbd1`.
Observed bounded GoodDirection cases: 468. -/
def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_017_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 161
  secondIndex := 0
  support := fam_017_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bca7e0c225d3475d3fec6a618eb400eebeda2f6fba0b1933b5a00ba928ece1a3`.
Observed bounded GoodDirection cases: 466. -/
def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def fam_018_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 9
  support := fam_018_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `1b2f2002758c280a9b4957a255b1ec03b9e18b94f1bf0534886c497a37096b40`.
Observed bounded GoodDirection cases: 435. -/
def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_019_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 1
  support := fam_019_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `09a0b955cbaf1d58fbed56d6ff63cad1629744eb298c9fcb4a18ba2a45e61494`.
Observed bounded GoodDirection cases: 407. -/
def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_020_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 1
  support := fam_020_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `eafef9e31856b5e1ccfdc5629c05195138270da7d876e45835853904fb264986`.
Observed bounded GoodDirection cases: 400. -/
def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_021_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 26
  secondIndex := 3
  support := fam_021_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `5ce6f9de0fc1f89ea90ae3bd4121a7848296c126f24dc188e8849d653e2cf8e5`.
Observed bounded GoodDirection cases: 377. -/
def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_022_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 0
  support := fam_022_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `543a6aac574fbc8f87f647071bfc51e2f4a1daa9ec1d367591e28ba1e285ed86`.
Observed bounded GoodDirection cases: 374. -/
def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_023_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 58
  secondIndex := 0
  support := fam_023_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `07cbb2ceea4f8ff57a4ac592b07a0a13ffcbc802d180f8be174645bd87902851`.
Observed bounded GoodDirection cases: 372. -/
def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def fam_024_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 15
  support := fam_024_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `dbcf419ae9e07ff307f82ab76c38130544ba6f8432769e038bdb3f3cb3d892f1`.
Observed bounded GoodDirection cases: 354. -/
def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_025_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 0
  support := fam_025_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `d408ca12e5b1e62c0ed7e2950cfaaa0b4af5f29e1ebdca8a0e7d97d1091eecab`.
Observed bounded GoodDirection cases: 318. -/
def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def fam_026_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 10
  support := fam_026_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `9ee6b2e564d663d2a48b04a5f6c09a2f659d7008458c98b9a5c078536ec01da9`.
Observed bounded GoodDirection cases: 303. -/
def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_027_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 0
  support := fam_027_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `49dc29bc5a3a346e57575f61d2b4fdb2f12956835c68063381b703d6ac1f887b`.
Observed bounded GoodDirection cases: 302. -/
def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_028_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 0
  support := fam_028_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `afb6a580ee2a6d0cd0d0a77e1ccb0fd523ff02e15a3aff1701e4e411c260c991`.
Observed bounded GoodDirection cases: 283. -/
def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_029_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 63
  secondIndex := 0
  support := fam_029_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `55dc0b022ed838da98d5af92317f536411fa922dd51317ade78b8c8354b71d73`.
Observed bounded GoodDirection cases: 252. -/
def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_030_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 2
  support := fam_030_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `e470bcfe67776ccff91b9310da8cf2fb8505cf06227f913f178d91f750eac4f1`.
Observed bounded GoodDirection cases: 242. -/
def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_031_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 57
  secondIndex := 0
  support := fam_031_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `cb6f6bc2af727b7b07a1a5f93b6bb4b547714996ae906018ac0e2560d8102162`.
Observed bounded GoodDirection cases: 238. -/
def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_032_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 0
  support := fam_032_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bbbd1b52ffaff83f416f83cf6570a124f64b171786df2a706b8e6f478a7c5e6a`.
Observed bounded GoodDirection cases: 237. -/
def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def fam_033_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 13
  support := fam_033_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `0de4b553cb365d97c53ec9cdcf885e866e1c74c6bf37a6a1ce09dd25e2072981`.
Observed bounded GoodDirection cases: 228. -/
def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_034_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 0
  support := fam_034_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a445f3e2b5975118165424df3ba770aae54b1007aa5a3f120a1a1d8614499c3b`.
Observed bounded GoodDirection cases: 221. -/
def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_035_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 183
  secondIndex := 0
  support := fam_035_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `8a4f0d011c71c3855f0555c3626724c8b000efab7f757f1019e23747d7b7642b`.
Observed bounded GoodDirection cases: 219. -/
def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def fam_036_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 12
  support := fam_036_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `1051d2b13a449cbd9f9812d12bc8463552e4a275d660b1b6ee617c733cf3b31c`.
Observed bounded GoodDirection cases: 196. -/
def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def fam_037_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 14
  support := fam_037_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `173645791fcf6158993df04a06cad8e6c9277a4a5116eeeae8320100bc7ad399`.
Observed bounded GoodDirection cases: 195. -/
def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def fam_038_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 11
  support := fam_038_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `eec6cea09d6d89c03f3c4577319600781c82fe093551478e4074800b6ef59c13`.
Observed bounded GoodDirection cases: 192. -/
def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_039_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 0
  support := fam_039_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `5d9efeb0452e392fa179cd0e334cda41a13e7d69baa6637ee7b719a887e6e56d`.
Observed bounded GoodDirection cases: 191. -/
def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def fam_040_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 15
  support := fam_040_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `4fda77f1bb3ebbed92f40e150884471b84d123e5b2d9d45e0eaff7690fb57cc9`.
Observed bounded GoodDirection cases: 187. -/
def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_041_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 1
  support := fam_041_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `bcaa49bdf67db120feb9ad4dda9a69450799ee1076adb235c86f602b449e273d`.
Observed bounded GoodDirection cases: 184. -/
def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def fam_042_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 16
  support := fam_042_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `f2d8c0c0c4893e42bc01b07592ca364b1399a95bed0c91aeb13cc2c01b1ebad2`.
Observed bounded GoodDirection cases: 181. -/
def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def fam_043_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 10
  support := fam_043_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `f4720b9b7c334ff3bd51b6ed20a9ebe7147a3827ee0d000ff0ef889dbb1da232`.
Observed bounded GoodDirection cases: 174. -/
def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def fam_044_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 13
  support := fam_044_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `35ba1dd429e6eafdc4ad00a9555d646f41cb0893f1aa2e82caa9d7733f48ae96`.
Observed bounded GoodDirection cases: 164. -/
def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_045_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 57
  secondIndex := 3
  support := fam_045_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `4c72072d32d9dd31f185019209d6ca8aa3959da9f2b28659eab68975586f92ef`.
Observed bounded GoodDirection cases: 164. -/
def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_046_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 0
  support := fam_046_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `7a65f29590123bf426961881b2f8d72a554244ebd7db1928e6211cc43dbd193d`.
Observed bounded GoodDirection cases: 163. -/
def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_047_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 2
  support := fam_047_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `c1e85dac279cfc02fb049d4bca261672cd6f4af9ecb2c273ce85c6df2761f361`.
Observed bounded GoodDirection cases: 162. -/
def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_048_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 48
  secondIndex := 0
  support := fam_048_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `001142d72c22dac0fd41e429a47c6f32d0f7456e0dce2c45057120b7f77f0162`.
Observed bounded GoodDirection cases: 159. -/
def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_049_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 1
  support := fam_049_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `533366cd8cfa9b73ace5726cef1f7c9d1d36b5c4454b2b934a260ec9804b968e`.
Observed bounded GoodDirection cases: 148. -/
def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_050_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 49
  secondIndex := 3
  support := fam_050_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `ab516b7ad129e4f1cee4b2c8ec44af498c782ec815a52eb4bd0cc2b1e0c25814`.
Observed bounded GoodDirection cases: 148. -/
def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_051_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 0
  support := fam_051_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `c05b3d59255e1cb9689a33957c160b34cf7f5fb51fa9849d03bfcac29208d36a`.
Observed bounded GoodDirection cases: 142. -/
def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_052_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 1
  support := fam_052_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `3b759ab3163ba9496a7005928678cb5a209032fa5b627ee33ba282b0bdd0155e`.
Observed bounded GoodDirection cases: 137. -/
def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def fam_053_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 12
  support := fam_053_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `e668d65886e9e5a322e49bde53aff82a78282617526ce8979ad65d248a06ba90`.
Observed bounded GoodDirection cases: 134. -/
def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_054_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 71
  secondIndex := 2
  support := fam_054_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `3deda5bfda7dd10dab177ab07d85e4bec5bae07344e932072d7bcd7ef986f363`.
Observed bounded GoodDirection cases: 131. -/
def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_055_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 0
  support := fam_055_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `46754c731c77c053bab64c67da53dcc1b5f174fe3ff8b9895806bf6c39f4d95a`.
Observed bounded GoodDirection cases: 131. -/
def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_056_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 1
  support := fam_056_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `64137fd85d07e72250bd3c13a57ebd6713eb6d8cf66dcee0974b219399f65cd5`.
Observed bounded GoodDirection cases: 130. -/
def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_057_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 71
  secondIndex := 0
  support := fam_057_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `7fe8664000b678c1cae44375641f0292e55e71c867a7c3d094d7f96ecfb3277a`.
Observed bounded GoodDirection cases: 130. -/
def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def fam_058_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 9
  support := fam_058_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `34387ab3bfde9bdfb349636d90cee3997629820bb8557064c077fb0b72f06add`.
Observed bounded GoodDirection cases: 130. -/
def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def fam_059_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 11
  support := fam_059_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `96da7bf37914b164ca484ce81cc9db786995bfe2c87b149569e6b9118f6c2c45`.
Observed bounded GoodDirection cases: 124. -/
def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_060_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 123
  secondIndex := 0
  support := fam_060_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `be3dd4a888d16f51b23fd34ec28e9487d7bfc244316bb453c8d15aed5684bede`.
Observed bounded GoodDirection cases: 120. -/
def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def fam_061_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 7
  support := fam_061_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `1f4f8742fa2970d296e3fbf12e541c66c254d7c7dd433859bf0e6d97828c2309`.
Observed bounded GoodDirection cases: 119. -/
def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_062_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 0
  support := fam_062_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `548ef76c4ca70a698bc32c47af5db80f61529e06e13bb8e3a7091ea372d4cad6`.
Observed bounded GoodDirection cases: 113. -/
def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def fam_063_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 14
  support := fam_063_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `4295d2e8233f5dbac79b0d712f2b60b2c1f9bbb4a65b79e19eb3b7beac461229`.
Observed bounded GoodDirection cases: 108. -/
def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_064_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 161
  secondIndex := 1
  support := fam_064_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `1e08e15088e7db1c3371fea0a75c650ee857b2d52d2b26d85d58092c011ca83b`.
Observed bounded GoodDirection cases: 108. -/
def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_065_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 2
  support := fam_065_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `cb8990495e80e4e83ff3dd6dbc52d2311080437714265957a3e06912a1fb84fc`.
Observed bounded GoodDirection cases: 104. -/
def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_066_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 1
  support := fam_066_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `5b8f1619d9cedeebccbff7692bcab9431eb53ed757cb015fe838ebbaead6de0b`.
Observed bounded GoodDirection cases: 101. -/
def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def fam_067_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 1
  secondIndex := 16
  support := fam_067_support
  template := SourceIndexTemplate.oppOneMinusVarSecond

/-- Classifier smoke family `5d42d8292a7d7142ba67583f3d246cb5b3891e05248fcb95384cdeaf865d0757`.
Observed bounded GoodDirection cases: 100. -/
def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def fam_068_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 7
  support := fam_068_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `29c667e5aa818ea6f1b958dd1d1050e310d4a3d40eb8ec4a842957f47cc4fc73`.
Observed bounded GoodDirection cases: 96. -/
def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_069_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 1
  support := fam_069_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `843502ed659adec3e8be559efd41763a66b8f79a231413413bfc62074b30741b`.
Observed bounded GoodDirection cases: 93. -/
def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_070_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 1
  support := fam_070_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `dfb204b58b12cb629f96ed728c46f085099c4abd09a79b28db61c2fd81435bc2`.
Observed bounded GoodDirection cases: 91. -/
def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def fam_071_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 9
  support := fam_071_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `7a15080fd1fc18351ab493b05ba7ccdff63eef25273e8bd050bd328d075d5e21`.
Observed bounded GoodDirection cases: 89. -/
def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_072_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 1
  support := fam_072_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `528b0624732053da7c91dc90d6c1fed9083253786a9dc7c40d92fc5edb96fbe7`.
Observed bounded GoodDirection cases: 86. -/
def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def fam_073_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 15
  support := fam_073_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `f2123d967d3bca62f1ff837920fc1806de378f16cfc5fa69b53f9039ee8077e4`.
Observed bounded GoodDirection cases: 84. -/
def fam_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_074_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 3
  support := fam_074_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `20b4b594e0f93bbabd757b188e89b67be0876cf1adc21a25d55495b8be4cd92e`.
Observed bounded GoodDirection cases: 84. -/
def fam_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_075_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 93
  secondIndex := 0
  support := fam_075_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `1fbb3ca1bb9f9d06de3fcfe2b546b99940e647fba253b01170c57f26e4cf605e`.
Observed bounded GoodDirection cases: 83. -/
def fam_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_076_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 167
  secondIndex := 0
  support := fam_076_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `20fc82814fcebdb1adf633ddccb969d4d6f323da4756cfd7c23a75b8c199c099`.
Observed bounded GoodDirection cases: 81. -/
def fam_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_077_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 76
  secondIndex := 1
  support := fam_077_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `263257ba21a1e6e04af5639767b991cfc0f48dc3b97de72f91e098802a4844fd`.
Observed bounded GoodDirection cases: 81. -/
def fam_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.zp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_078_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 47
  secondIndex := 1
  support := fam_078_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `47d53ad973ee3257ce12e4c767a004934ccfea4a0a38986e4f22ff0a1aed0ca2`.
Observed bounded GoodDirection cases: 79. -/
def fam_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_079_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 184
  secondIndex := 1
  support := fam_079_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `1d541f124fdc98e8359dbed4c921475f339905d1cad066ae7a7e52d1924c1179`.
Observed bounded GoodDirection cases: 78. -/
def fam_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_080_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 1
  support := fam_080_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `158087fcd37f43ff33edbd05b69db351daf9816e0760425b2eb50ee9216b27c2`.
Observed bounded GoodDirection cases: 76. -/
def fam_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_081_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 77
  secondIndex := 0
  support := fam_081_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `903e53e3f7ca517f328604cd621f97ff82b162882819c100d04a427cf482d21e`.
Observed bounded GoodDirection cases: 76. -/
def fam_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_082_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 69
  secondIndex := 0
  support := fam_082_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `c8b92bcd746e06f1f2b35c1e3dbadef9e7ef6930201f8191f247b057c4d97b93`.
Observed bounded GoodDirection cases: 76. -/
def fam_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_083_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 94
  secondIndex := 0
  support := fam_083_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `d38a5ee77d916f57e0cca04b5d777803404965c3d25cde6923349cf446475122`.
Observed bounded GoodDirection cases: 76. -/
def fam_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_084_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 78
  secondIndex := 0
  support := fam_084_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `5821ff1cad55248e9ee59f757ebac2cd722d5baba34cd6b5f66f5fc37d71d27d`.
Observed bounded GoodDirection cases: 75. -/
def fam_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_085_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 1
  support := fam_085_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `361051690e66824158e97e2c729d59a1207b25b91c241331954e3400c134e0d0`.
Observed bounded GoodDirection cases: 74. -/
def fam_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_086_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 2
  support := fam_086_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `29c29249413755d9d6fbbc65c672e06248f54014ce6ad4eaf1d254591260718a`.
Observed bounded GoodDirection cases: 69. -/
def fam_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def fam_087_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 11
  support := fam_087_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `5d85f2c1f23a39967e3cd089528e1b5251544b747b784d0b34619c531128b92d`.
Observed bounded GoodDirection cases: 67. -/
def fam_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_088_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 71
  secondIndex := 3
  support := fam_088_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `3f4f49151f480469b752cbda4f36d37919288da266b8f02fb0a5c1a9d4bc8e1b`.
Observed bounded GoodDirection cases: 63. -/
def fam_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_089_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 79
  secondIndex := 1
  support := fam_089_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `55594f267ec68a2d7effc051b3a625593136d3a8903b855d06a4886966dbdfc2`.
Observed bounded GoodDirection cases: 63. -/
def fam_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_090_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 71
  secondIndex := 1
  support := fam_090_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `68ca43ad6da1bf21837ad43de8916779d8c9b7674f02fd42c9fb46275e56520c`.
Observed bounded GoodDirection cases: 63. -/
def fam_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_091_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 2
  support := fam_091_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `323821661c9a96d8517395d7e2ed673c7ac9f6e241d41aa3d6f0c54b617725bc`.
Observed bounded GoodDirection cases: 62. -/
def fam_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_092_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 1
  support := fam_092_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `3a68db823e3ef8c4a98812fd192baa9639a65f71318383b97cc6603e5261f0c9`.
Observed bounded GoodDirection cases: 61. -/
def fam_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def fam_093_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 13
  support := fam_093_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `3c44231cc1af8934c73ab9eb42337f5296972af30c98905c6664e173469df457`.
Observed bounded GoodDirection cases: 60. -/
def fam_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_094_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 2
  support := fam_094_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `429f67e86b5e2b117910d87608a2db32b48f40a35c792b4acf398b0947b1195e`.
Observed bounded GoodDirection cases: 60. -/
def fam_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_095_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 2
  support := fam_095_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `96b2befe815713eb1405e2ed5322c7ed566364e61b1db132e586bfe00f5cbe45`.
Observed bounded GoodDirection cases: 59. -/
def fam_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def fam_096_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 10
  support := fam_096_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `1720c5c6897de884a3f69d37a00482f5017602df26b88e99a3a0e35b3b08aa9f`.
Observed bounded GoodDirection cases: 58. -/
def fam_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_097_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 1
  support := fam_097_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `a19e2cdc6a8b74a0cbe3fdf50ce56ab4f893d2b76a3b06911b2a7f594028fb60`.
Observed bounded GoodDirection cases: 58. -/
def fam_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.zm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_098_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 48
  secondIndex := 2
  support := fam_098_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `0c0e4ba6e28fbb5874ffec38e757ce56802f082962201133f6dc0141b060a995`.
Observed bounded GoodDirection cases: 54. -/
def fam_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_099_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 171
  secondIndex := 0
  support := fam_099_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `db68a14c074edb744fab08556d2d2441f01c202e494cbc2220c2912d941ee576`.
Observed bounded GoodDirection cases: 53. -/
def fam_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_100_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 96
  secondIndex := 2
  support := fam_100_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `481c7323fda36e8ef4929813929eecc89d2ea51c29714e570b34eccef32656a1`.
Observed bounded GoodDirection cases: 52. -/
def fam_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_101_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 83
  secondIndex := 3
  support := fam_101_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `4d5bf70423567c2e7433ceccdc7938df76413ba090a96b126de74f17eead2669`.
Observed bounded GoodDirection cases: 52. -/
def fam_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_102_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 131
  secondIndex := 0
  support := fam_102_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `d0af45d9a8435c39b37b0e34a5322ab0c9a6bf6180b8dd0b14e72c8df865579e`.
Observed bounded GoodDirection cases: 52. -/
def fam_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def fam_103_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 9
  support := fam_103_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `2331829ae5f9c9473447cdc0d7e31e8e2c9371e462f2a7f75cdaa02627990bfb`.
Observed bounded GoodDirection cases: 51. -/
def fam_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_104_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 115
  secondIndex := 0
  support := fam_104_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `1afd926769caf85b6cb8fda2a1c4e48332f30dcd4d0662289f18b8a8db4e4b81`.
Observed bounded GoodDirection cases: 50. -/
def fam_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_105_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 2
  support := fam_105_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `147d32d3e6369b719c07fd7542de34216dd48db412037fcc9097fce80947ce1c`.
Observed bounded GoodDirection cases: 48. -/
def fam_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_106_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 95
  secondIndex := 0
  support := fam_106_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `816fb1690bf595f3f53f759dcd2f42cc8ce6594c546823c5f917337a089f58d5`.
Observed bounded GoodDirection cases: 47. -/
def fam_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_107_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 119
  secondIndex := 0
  support := fam_107_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `36774daab8bf1184499c77271b19f7a40035f8aa1467fac74fb482afca1d3ed8`.
Observed bounded GoodDirection cases: 45. -/
def fam_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_108_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 172
  secondIndex := 0
  support := fam_108_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `969bdd36c0ff690c62a0b53d598d08baaaffcf117b705925f574eaf39d9931f0`.
Observed bounded GoodDirection cases: 45. -/
def fam_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_109_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 0
  support := fam_109_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `876b4ebdae3a9f651dbe2fa4e72ad43897e026d08b506e33f27f08de461a7bf7`.
Observed bounded GoodDirection cases: 44. -/
def fam_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def fam_110_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 5
  secondIndex := 8
  support := fam_110_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `62f5ae522c0e7133d5843c313ca60aeae4e0b20c912d1f80286ac540b2b6eb8a`.
Observed bounded GoodDirection cases: 43. -/
def fam_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_111_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 147
  secondIndex := 0
  support := fam_111_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `1d429d67ee13df82ba88a3e685c5f449bb51da67ccfb2381ebb6429b3b02fd2e`.
Observed bounded GoodDirection cases: 41. -/
def fam_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_112_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 106
  secondIndex := 0
  support := fam_112_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `698bc5fc0b761af936d02e66853f313943632c3c9abf425807a742b732b440f1`.
Observed bounded GoodDirection cases: 40. -/
def fam_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_113_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 168
  secondIndex := 1
  support := fam_113_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `895c2baafbaba02fc34253ea987dd1fac572ea9b8a962724c3ba918b83b7b00d`.
Observed bounded GoodDirection cases: 39. -/
def fam_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_114_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 123
  secondIndex := 1
  support := fam_114_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `732724005282d4387337f79bf119043fd74b925fa54d0b31d6bae3d0c4f9294c`.
Observed bounded GoodDirection cases: 39. -/
def fam_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_115_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 2
  support := fam_115_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `533c62403ad2eb955c1259cebc86a5a3d5b25f9f764082c9d2fa9e95e2e6b1dc`.
Observed bounded GoodDirection cases: 38. -/
def fam_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def fam_116_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 12
  support := fam_116_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `4c6ff9165c9b0df23d40bbb5ff34c1a7b846bc771a0a38da6434f7fa604e061a`.
Observed bounded GoodDirection cases: 38. -/
def fam_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_117_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 121
  secondIndex := 0
  support := fam_117_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `79089357fe2a7330c14fe99d945a21a58606b251d89bb36df66626486216add2`.
Observed bounded GoodDirection cases: 38. -/
def fam_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_118_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 107
  secondIndex := 0
  support := fam_118_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `2148e47a5cafb40577af7d8217985a915183086bbd7a7e8d7a1f4b29c1f584ed`.
Observed bounded GoodDirection cases: 38. -/
def fam_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_119_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 76
  secondIndex := 2
  support := fam_119_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `261b107818d73610bf19cd2422ad5a5a15aa2db118565d49f769d88fe7dd9116`.
Observed bounded GoodDirection cases: 37. -/
def fam_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_120_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 162
  secondIndex := 3
  support := fam_120_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `f58e8057dc1ef59724f47203d7b7cee139d6b386b440a531b6e8043e0830769d`.
Observed bounded GoodDirection cases: 37. -/
def fam_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_121_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 141
  secondIndex := 0
  support := fam_121_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `532409d578c514296ef6541d25a6ab0d243fafccca9374ece710a7e0db264366`.
Observed bounded GoodDirection cases: 36. -/
def fam_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_122_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 84
  secondIndex := 3
  support := fam_122_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `8e5b49839275e24bfc22394bfae18eee901fa2b74ea5e8ec55a311c844a24234`.
Observed bounded GoodDirection cases: 36. -/
def fam_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_123_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 120
  secondIndex := 0
  support := fam_123_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `cef979f926b1ef7b5e3a24b79cf5f7690874d0f5a634700e4c34e4d5cbd42d9e`.
Observed bounded GoodDirection cases: 36. -/
def fam_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_124_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 170
  secondIndex := 1
  support := fam_124_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `2aa04a3f1c0161cddde4e21a8863c0aac8e84249606d7a160e9c70dbbf46c954`.
Observed bounded GoodDirection cases: 34. -/
def fam_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_125_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 103
  secondIndex := 0
  support := fam_125_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a8779ef21d07f80a863f92a4d0b3a9e5785baca760e90b9f12ba91df5af57a50`.
Observed bounded GoodDirection cases: 34. -/
def fam_126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_126_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 2
  support := fam_126_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `cf5366200f297cbeca3798128ccc225f8b0f70a7f0dffe7a8a4ceaca806f93f2`.
Observed bounded GoodDirection cases: 33. -/
def fam_127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_127_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 3
  support := fam_127_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `9ba40caf7983058fd327b8f7def34c56f08874b7c9a94e2be8a80117420c21fe`.
Observed bounded GoodDirection cases: 31. -/
def fam_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_128_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 18
  secondIndex := 1
  support := fam_128_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `61aa251701456fbb0bece3b5f02f752aeb17216d8fa047e5114685764c27ddf2`.
Observed bounded GoodDirection cases: 30. -/
def fam_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_129_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 92
  secondIndex := 1
  support := fam_129_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `73391194a66e8c5b4e880d8b90a77046ab6d292e539995c3d002a7b106c57fec`.
Observed bounded GoodDirection cases: 29. -/
def fam_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_130_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 146
  secondIndex := 0
  support := fam_130_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `83c116b44a85395f6e8bb8fc0165b509e6bf845face95355ce26acb6aa1b1fc3`.
Observed bounded GoodDirection cases: 28. -/
def fam_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_131_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_131_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `a02d5c27ca39f94ae9a29d687a9fd7ef4063e2ef040d65d9c9daeaa44c4de680`.
Observed bounded GoodDirection cases: 28. -/
def fam_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_132_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 123
  secondIndex := 2
  support := fam_132_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `ed8397442052302556e623cd5a480d5c9621992433177d7c10154cbb74fad150`.
Observed bounded GoodDirection cases: 27. -/
def fam_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def fam_133_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 14
  support := fam_133_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `87c4038868c025df4ca5e5f6a307d16624bd420c2804fffb8b570cc1c95b14a6`.
Observed bounded GoodDirection cases: 26. -/
def fam_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_134_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 104
  secondIndex := 0
  support := fam_134_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `a2fbb31fbbeeefd08afff7a3908b400e2e1214a38a3130e20bb6b23ace12b601`.
Observed bounded GoodDirection cases: 26. -/
def fam_135_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_135_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 157
  secondIndex := 0
  support := fam_135_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `306a816070cddb61d5394b667f69658abcdea40b8a3af58f343858e3bb49efab`.
Observed bounded GoodDirection cases: 26. -/
def fam_136_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_136_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 178
  secondIndex := 5
  support := fam_136_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `82aa0d98b7cef15220c3a464ece976f08f51eb905961b89423a834e0af031984`.
Observed bounded GoodDirection cases: 26. -/
def fam_137_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def fam_137_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 16
  secondIndex := 6
  support := fam_137_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `98f34a24fee401abc9d8a05812ca4225642fe808b561eb8ba99ef65310fca610`.
Observed bounded GoodDirection cases: 26. -/
def fam_138_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_138_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 177
  secondIndex := 5
  support := fam_138_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `761dc9499a87ec31338360a64ad84cb878d4d7d480a3adbe57558b7563495a13`.
Observed bounded GoodDirection cases: 26. -/
def fam_139_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_139_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 94
  secondIndex := 1
  support := fam_139_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `2e61f303b2c7a8a819b88eaf1af07b9b746a2bc56f767e5565061626860801be`.
Observed bounded GoodDirection cases: 25. -/
def fam_140_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_140_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 1
  support := fam_140_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `ed3ac5ebe0f22e996ccdc49444bcb4d4f654d18f000f93ba9045dde9248c9980`.
Observed bounded GoodDirection cases: 25. -/
def fam_141_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_141_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 2
  support := fam_141_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `c86d5f78ead3788d4d966f9088f2e8edd3bf1b8168c045981a10937fb62179b6`.
Observed bounded GoodDirection cases: 23. -/
def fam_142_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_142_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 136
  secondIndex := 3
  support := fam_142_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `e6ecc14cf76933734aba08afe610bc685156b5d6e354da396c37a2db9099cd91`.
Observed bounded GoodDirection cases: 23. -/
def fam_143_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def fam_143_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 2
  secondIndex := 16
  support := fam_143_support
  template := SourceIndexTemplate.oppMinusOneVarSecond

/-- Classifier smoke family `491ab65e3856052d89136c84270aec642ba2db00cb1703515fd03cb363c985d6`.
Observed bounded GoodDirection cases: 22. -/
def fam_144_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_144_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 132
  secondIndex := 0
  support := fam_144_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `75e98d2c542afd61a6c6486d1b6b074792edce1fb08c39198f5ce0411f1d9a86`.
Observed bounded GoodDirection cases: 22. -/
def fam_145_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_145_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 133
  secondIndex := 0
  support := fam_145_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `b94b0068fbf0a1a1e792d25a42dc8c3a5df1e29b9ba015d7a9d6674c84fce0cb`.
Observed bounded GoodDirection cases: 22. -/
def fam_146_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_146_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 145
  secondIndex := 0
  support := fam_146_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `5719f1cb445c3857a4e02a857afbadbdf33a000c7ca5e68c983d5afffb99860d`.
Observed bounded GoodDirection cases: 22. -/
def fam_147_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_147_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 175
  secondIndex := 2
  support := fam_147_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `cf9cbe2c15aa09aabf915c541c19cc86ecc196268fd5f52694f99016a8a1de37`.
Observed bounded GoodDirection cases: 21. -/
def fam_148_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_148_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 77
  secondIndex := 3
  support := fam_148_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `e22d34bd0c03bfe6d95d801bcc8f23d799b2437efb4a47ddd1a990cec25e64b5`.
Observed bounded GoodDirection cases: 21. -/
def fam_149_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_149_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 116
  secondIndex := 1
  support := fam_149_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `bb0db39a94e945010710a13b20ce302ef100c2c9d34f71cf3b7a51b2570971f5`.
Observed bounded GoodDirection cases: 20. -/
def fam_150_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_150_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_150_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `fb49a410fd5a886a52e89177722bda08bf8e67a70ce75c4406d38f7950c4e05c`.
Observed bounded GoodDirection cases: 20. -/
def fam_151_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def fam_151_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 5
  secondIndex := 8
  support := fam_151_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `d4e65bfbc9e67385f31f52e017e32313a9a2ca70d91dc9c9d5f4086405a5ad02`.
Observed bounded GoodDirection cases: 20. -/
def fam_152_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_152_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 79
  secondIndex := 2
  support := fam_152_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `d79c8b5563ba0a99551f11e53d3b2ce8569d004d2fca3f3f689f22ef7d9c11b9`.
Observed bounded GoodDirection cases: 20. -/
def fam_153_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_153_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 105
  secondIndex := 2
  support := fam_153_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `0e7dbb3527981a6ab57856a1e2d6cceaddf9ec980e41f31fb1317d472dda98ea`.
Observed bounded GoodDirection cases: 18. -/
def fam_154_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_154_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 110
  secondIndex := 3
  support := fam_154_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `4c80d6d47a288b82736f6b0fc75612d8a4fe3591ce9d2cd2095462fb71689fcd`.
Observed bounded GoodDirection cases: 18. -/
def fam_155_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_155_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 129
  secondIndex := 0
  support := fam_155_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `7659a13ad32f460ad82d3854a24dec02c246f9199e2b5034f1f0eccddebb8b43`.
Observed bounded GoodDirection cases: 17. -/
def fam_156_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_156_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 142
  secondIndex := 1
  support := fam_156_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `6e00befec663a240ed810da0b71168fa5b7db247c7948f1eeca4cc91b07023cc`.
Observed bounded GoodDirection cases: 17. -/
def fam_157_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_157_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 143
  secondIndex := 2
  support := fam_157_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `791bde5f13376c14e6042c151b82330109e8588c0c31a5af92154edcabe5b913`.
Observed bounded GoodDirection cases: 16. -/
def fam_158_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_158_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 135
  secondIndex := 3
  support := fam_158_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `e6e682a4ecd0f5eecaf3c3ac447963401507be28a03636a4bb1cb0c3ee235c21`.
Observed bounded GoodDirection cases: 16. -/
def fam_159_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_159_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 109
  secondIndex := 3
  support := fam_159_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `e961b9316695bc002c28cc16be8a7fea5187ee62bc03f4555161e67856737127`.
Observed bounded GoodDirection cases: 16. -/
def fam_160_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_160_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 58
  secondIndex := 3
  support := fam_160_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `a69cfe6ad1368ef7300e79a82ff9c35f64a4345c54ad6c36b20f507965dee9a6`.
Observed bounded GoodDirection cases: 15. -/
def fam_161_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_161_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 97
  secondIndex := 3
  support := fam_161_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `003e34d9b1c2c0d577abfc83a8752fec4e46ef12171f8e687555919a151ff09d`.
Observed bounded GoodDirection cases: 15. -/
def fam_162_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_162_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 111
  secondIndex := 0
  support := fam_162_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `5b2be228cf08e108185cda86b6474f35baaf1379ed857383d3fb65bb18a83507`.
Observed bounded GoodDirection cases: 15. -/
def fam_163_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.yp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_163_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 98
  secondIndex := 0
  support := fam_163_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `30ec9eaa33b87b60a1df0ed4f0d5ee1a76841a2b9ee6076bae5dbc127f539617`.
Observed bounded GoodDirection cases: 15. -/
def fam_164_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_164_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 2
  support := fam_164_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `3d2a5efe8041f08a7986b4f35985a129d9c4deb28dda006b8d176cea42560ec6`.
Observed bounded GoodDirection cases: 14. -/
def fam_165_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def fam_165_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 4
  support := fam_165_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `754f03a95dbb2ca9bdd6f9531138c4e159060575e5c98909e8a5e5c97b3ebae0`.
Observed bounded GoodDirection cases: 14. -/
def fam_166_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def fam_166_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 70
  secondIndex := 4
  support := fam_166_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `142dae550154b1dfe3967f30398443f72e4fe33fb09f37cee022c5de74a0052f`.
Observed bounded GoodDirection cases: 14. -/
def fam_167_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_167_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 78
  secondIndex := 3
  support := fam_167_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `80a1bd8823e230092ab8df8cf6113d13599779e9e0e325e10ed17eb9fd3989d9`.
Observed bounded GoodDirection cases: 14. -/
def fam_168_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def fam_168_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 3
  secondIndex := 16
  support := fam_168_support
  template := SourceIndexTemplate.eqEqNegVarSecond

/-- Classifier smoke family `08410201c2e202e94055183e75c0171f89dc7eb37514cae29808f8c2b5d3b440`.
Observed bounded GoodDirection cases: 14. -/
def fam_169_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_169_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 82
  secondIndex := 1
  support := fam_169_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `47bf519d7e4aa39bce06cc7eeadf53ab56fab5d3e36067dd57c2cdb04b9f321f`.
Observed bounded GoodDirection cases: 14. -/
def fam_170_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_170_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 173
  secondIndex := 1
  support := fam_170_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `695c9d1590d57d60a46a2ee1ce554fea1c60bf3ca7cedad47243865095c16f2a`.
Observed bounded GoodDirection cases: 14. -/
def fam_171_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_171_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 144
  secondIndex := 1
  support := fam_171_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `9754b2786571c16b6760a195368719e564e4b4548e69645e7c61136efaf434fe`.
Observed bounded GoodDirection cases: 14. -/
def fam_172_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_172_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 169
  secondIndex := 2
  support := fam_172_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `b2c2b4aeb41065c716685a0856f222542bb43aa5316afe386195f7f1197aebb9`.
Observed bounded GoodDirection cases: 13. -/
def fam_173_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_173_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_173_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `d34f450392d37e3ea7b427145ce12d0ba57d7292af860a2b9a35aa056a536569`.
Observed bounded GoodDirection cases: 13. -/
def fam_174_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_174_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 148
  secondIndex := 3
  support := fam_174_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `5a7bc75cc83ab481f567c1fea822ff0f6431fdaadc9c1d966e8fece2b028c2cd`.
Observed bounded GoodDirection cases: 13. -/
def fam_175_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_175_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 0
  secondIndex := 5
  support := fam_175_support
  template := SourceIndexTemplate.eqEqPosVarSecond

/-- Classifier smoke family `a1730915b3d8e4c10bbf1beca4fccc3718ca8c8055d5cab5f63c8f7310e6845f`.
Observed bounded GoodDirection cases: 13. -/
def fam_176_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_176_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 118
  secondIndex := 1
  support := fam_176_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `abbe34a3920de43d61c8db2f02963a669fb66332c2bea41fe331ddc1268ecafe`.
Observed bounded GoodDirection cases: 13. -/
def fam_177_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_177_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 92
  secondIndex := 2
  support := fam_177_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `f7c70fb6d398feb77b041e962d0e3fef58e3384d527a67a84fbf2c6258ad290c`.
Observed bounded GoodDirection cases: 12. -/
def fam_178_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_178_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 57
  secondIndex := 5
  support := fam_178_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `49243da00e500c8af48520a337603e011b83329bf0364d8a89dc7a9fbb3e9ebf`.
Observed bounded GoodDirection cases: 12. -/
def fam_179_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_179_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 66
  secondIndex := 3
  support := fam_179_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `032978664a2fb95408217f5f92fc2ea3d5585c6fe4f91793c9fceda432a6ee97`.
Observed bounded GoodDirection cases: 12. -/
def fam_180_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_180_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 117
  secondIndex := 2
  support := fam_180_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `0dc0115859f63fc8032ef82a9be647feb5a7e7abb42d7fe635ed9e1933ad8229`.
Observed bounded GoodDirection cases: 11. -/
def fam_181_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_181_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 131
  secondIndex := 1
  support := fam_181_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `8cee0d6d22494cfef07e639f2f8101e1a940b0a83fae4b876952365613b515c5`.
Observed bounded GoodDirection cases: 11. -/
def fam_182_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_182_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 156
  secondIndex := 1
  support := fam_182_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `cac8d44e6938ab3b957464e751fed9c7880d0a5093987a2538659e44354dc9e3`.
Observed bounded GoodDirection cases: 11. -/
def fam_183_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_183_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 131
  secondIndex := 2
  support := fam_183_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `d9e96a1a0f5127736d30d3c180075850bbeb215a5d57543ee78e64c8b7268d90`.
Observed bounded GoodDirection cases: 10. -/
def fam_184_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_184_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 51
  secondIndex := 3
  support := fam_184_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `dd193a21ab942c2c9dc699bf18754b7ff8f85bf72f7dacd37e9d51aa49b3f66b`.
Observed bounded GoodDirection cases: 10. -/
def fam_185_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_185_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 143
  secondIndex := 0
  support := fam_185_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `bfbf81b9049e022f1be952dd879722c1ca0a85cf89486afd5ac8b67712c38ea7`.
Observed bounded GoodDirection cases: 10. -/
def fam_186_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_186_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 59
  secondIndex := 5
  support := fam_186_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `ddd60cf4610224ed30e7bc92b5b29cda15854306f0fd5aa7b2b2f03e7ddb15c2`.
Observed bounded GoodDirection cases: 10. -/
def fam_187_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_187_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 60
  secondIndex := 5
  support := fam_187_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `3c8adc1f90f693fb34f7c58b4b7b5392cb77c7b2207f03ace1b9eeeb86273510`.
Observed bounded GoodDirection cases: 10. -/
def fam_188_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_188_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 95
  secondIndex := 1
  support := fam_188_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `c7ecaa84912e11bf981f33a9429149f9aabf3ad114bccc532cfcca21be76d3b9`.
Observed bounded GoodDirection cases: 10. -/
def fam_189_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_189_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 106
  secondIndex := 1
  support := fam_189_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `06178f226b91c5dc66569704243eb46e675f6a96a5da266da8b72c225ac18867`.
Observed bounded GoodDirection cases: 10. -/
def fam_190_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_190_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 107
  secondIndex := 2
  support := fam_190_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `7abcf9034a03a9130f798cb8e2292e61d92d40b407f87773f017676e1f2c0788`.
Observed bounded GoodDirection cases: 10. -/
def fam_191_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_191_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 95
  secondIndex := 2
  support := fam_191_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Classifier smoke family `faf63347c7518a5cc22aea93ba3de544023b93bec0e0607cf96e2b74be7aa298`.
Observed bounded GoodDirection cases: 9. -/
def fam_192_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_192_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 44
  secondIndex := 5
  support := fam_192_support
  template := SourceIndexTemplate.axisAOnly

/-- Classifier smoke family `47176201eb0b3d5d695e4244013e6e3072f3da7cbf82ab9c7d8a5a13674701e1`.
Observed bounded GoodDirection cases: 9. -/
def fam_193_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_193_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 149
  secondIndex := 3
  support := fam_193_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `6ade7828e8d5d72c5ee0c38c52cf8a3823a27f7b579d0f6dc24ce9371fc231fa`.
Observed bounded GoodDirection cases: 9. -/
def fam_194_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def fam_194_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 122
  secondIndex := 3
  support := fam_194_support
  template := SourceIndexTemplate.eqEqNegVarFirst

/-- Classifier smoke family `c77e11269d6d07fb295c8089c075aea00c7008452aaf613cf50c0662a8aba661`.
Observed bounded GoodDirection cases: 9. -/
def fam_195_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def fam_195_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 130
  secondIndex := 0
  support := fam_195_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Classifier smoke family `fd627295acb922a5146e6fd3bd425d7ce2a2103d5a0db86e339b897f1168188c`.
Observed bounded GoodDirection cases: 9. -/
def fam_196_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def fam_196_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 16
  secondIndex := 5
  support := fam_196_support
  template := SourceIndexTemplate.exactTwoSourceValid

/-- Classifier smoke family `0ecaa87684a0c92fd960150153069bd51d9b48ef31194d140b5a7072c33c704c`.
Observed bounded GoodDirection cases: 9. -/
def fam_197_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_197_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 130
  secondIndex := 1
  support := fam_197_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `fe6dcb0e1d5af6cc7f6e5b61abf78e5a6c655ce793a9a24af1459862db39f388`.
Observed bounded GoodDirection cases: 9. -/
def fam_198_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def fam_198_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 120
  secondIndex := 1
  support := fam_198_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Classifier smoke family `d4e6a10a6c98aa97de3a72a43de3d189f27ffb319d7424cdfd38bbd9d356ffc4`.
Observed bounded GoodDirection cases: 9. -/
def fam_199_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def fam_199_desc : SourceIndexStateFamilyDescriptor where
  firstIndex := 91
  secondIndex := 2
  support := fam_199_support
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
  | fam125 {r : Nat} {mask : SignMask} (h : fam_125_desc.Applies r mask) : ClassifierApplies r mask
  | fam126 {r : Nat} {mask : SignMask} (h : fam_126_desc.Applies r mask) : ClassifierApplies r mask
  | fam127 {r : Nat} {mask : SignMask} (h : fam_127_desc.Applies r mask) : ClassifierApplies r mask
  | fam128 {r : Nat} {mask : SignMask} (h : fam_128_desc.Applies r mask) : ClassifierApplies r mask
  | fam129 {r : Nat} {mask : SignMask} (h : fam_129_desc.Applies r mask) : ClassifierApplies r mask
  | fam130 {r : Nat} {mask : SignMask} (h : fam_130_desc.Applies r mask) : ClassifierApplies r mask
  | fam131 {r : Nat} {mask : SignMask} (h : fam_131_desc.Applies r mask) : ClassifierApplies r mask
  | fam132 {r : Nat} {mask : SignMask} (h : fam_132_desc.Applies r mask) : ClassifierApplies r mask
  | fam133 {r : Nat} {mask : SignMask} (h : fam_133_desc.Applies r mask) : ClassifierApplies r mask
  | fam134 {r : Nat} {mask : SignMask} (h : fam_134_desc.Applies r mask) : ClassifierApplies r mask
  | fam135 {r : Nat} {mask : SignMask} (h : fam_135_desc.Applies r mask) : ClassifierApplies r mask
  | fam136 {r : Nat} {mask : SignMask} (h : fam_136_desc.Applies r mask) : ClassifierApplies r mask
  | fam137 {r : Nat} {mask : SignMask} (h : fam_137_desc.Applies r mask) : ClassifierApplies r mask
  | fam138 {r : Nat} {mask : SignMask} (h : fam_138_desc.Applies r mask) : ClassifierApplies r mask
  | fam139 {r : Nat} {mask : SignMask} (h : fam_139_desc.Applies r mask) : ClassifierApplies r mask
  | fam140 {r : Nat} {mask : SignMask} (h : fam_140_desc.Applies r mask) : ClassifierApplies r mask
  | fam141 {r : Nat} {mask : SignMask} (h : fam_141_desc.Applies r mask) : ClassifierApplies r mask
  | fam142 {r : Nat} {mask : SignMask} (h : fam_142_desc.Applies r mask) : ClassifierApplies r mask
  | fam143 {r : Nat} {mask : SignMask} (h : fam_143_desc.Applies r mask) : ClassifierApplies r mask
  | fam144 {r : Nat} {mask : SignMask} (h : fam_144_desc.Applies r mask) : ClassifierApplies r mask
  | fam145 {r : Nat} {mask : SignMask} (h : fam_145_desc.Applies r mask) : ClassifierApplies r mask
  | fam146 {r : Nat} {mask : SignMask} (h : fam_146_desc.Applies r mask) : ClassifierApplies r mask
  | fam147 {r : Nat} {mask : SignMask} (h : fam_147_desc.Applies r mask) : ClassifierApplies r mask
  | fam148 {r : Nat} {mask : SignMask} (h : fam_148_desc.Applies r mask) : ClassifierApplies r mask
  | fam149 {r : Nat} {mask : SignMask} (h : fam_149_desc.Applies r mask) : ClassifierApplies r mask
  | fam150 {r : Nat} {mask : SignMask} (h : fam_150_desc.Applies r mask) : ClassifierApplies r mask
  | fam151 {r : Nat} {mask : SignMask} (h : fam_151_desc.Applies r mask) : ClassifierApplies r mask
  | fam152 {r : Nat} {mask : SignMask} (h : fam_152_desc.Applies r mask) : ClassifierApplies r mask
  | fam153 {r : Nat} {mask : SignMask} (h : fam_153_desc.Applies r mask) : ClassifierApplies r mask
  | fam154 {r : Nat} {mask : SignMask} (h : fam_154_desc.Applies r mask) : ClassifierApplies r mask
  | fam155 {r : Nat} {mask : SignMask} (h : fam_155_desc.Applies r mask) : ClassifierApplies r mask
  | fam156 {r : Nat} {mask : SignMask} (h : fam_156_desc.Applies r mask) : ClassifierApplies r mask
  | fam157 {r : Nat} {mask : SignMask} (h : fam_157_desc.Applies r mask) : ClassifierApplies r mask
  | fam158 {r : Nat} {mask : SignMask} (h : fam_158_desc.Applies r mask) : ClassifierApplies r mask
  | fam159 {r : Nat} {mask : SignMask} (h : fam_159_desc.Applies r mask) : ClassifierApplies r mask
  | fam160 {r : Nat} {mask : SignMask} (h : fam_160_desc.Applies r mask) : ClassifierApplies r mask
  | fam161 {r : Nat} {mask : SignMask} (h : fam_161_desc.Applies r mask) : ClassifierApplies r mask
  | fam162 {r : Nat} {mask : SignMask} (h : fam_162_desc.Applies r mask) : ClassifierApplies r mask
  | fam163 {r : Nat} {mask : SignMask} (h : fam_163_desc.Applies r mask) : ClassifierApplies r mask
  | fam164 {r : Nat} {mask : SignMask} (h : fam_164_desc.Applies r mask) : ClassifierApplies r mask
  | fam165 {r : Nat} {mask : SignMask} (h : fam_165_desc.Applies r mask) : ClassifierApplies r mask
  | fam166 {r : Nat} {mask : SignMask} (h : fam_166_desc.Applies r mask) : ClassifierApplies r mask
  | fam167 {r : Nat} {mask : SignMask} (h : fam_167_desc.Applies r mask) : ClassifierApplies r mask
  | fam168 {r : Nat} {mask : SignMask} (h : fam_168_desc.Applies r mask) : ClassifierApplies r mask
  | fam169 {r : Nat} {mask : SignMask} (h : fam_169_desc.Applies r mask) : ClassifierApplies r mask
  | fam170 {r : Nat} {mask : SignMask} (h : fam_170_desc.Applies r mask) : ClassifierApplies r mask
  | fam171 {r : Nat} {mask : SignMask} (h : fam_171_desc.Applies r mask) : ClassifierApplies r mask
  | fam172 {r : Nat} {mask : SignMask} (h : fam_172_desc.Applies r mask) : ClassifierApplies r mask
  | fam173 {r : Nat} {mask : SignMask} (h : fam_173_desc.Applies r mask) : ClassifierApplies r mask
  | fam174 {r : Nat} {mask : SignMask} (h : fam_174_desc.Applies r mask) : ClassifierApplies r mask
  | fam175 {r : Nat} {mask : SignMask} (h : fam_175_desc.Applies r mask) : ClassifierApplies r mask
  | fam176 {r : Nat} {mask : SignMask} (h : fam_176_desc.Applies r mask) : ClassifierApplies r mask
  | fam177 {r : Nat} {mask : SignMask} (h : fam_177_desc.Applies r mask) : ClassifierApplies r mask
  | fam178 {r : Nat} {mask : SignMask} (h : fam_178_desc.Applies r mask) : ClassifierApplies r mask
  | fam179 {r : Nat} {mask : SignMask} (h : fam_179_desc.Applies r mask) : ClassifierApplies r mask
  | fam180 {r : Nat} {mask : SignMask} (h : fam_180_desc.Applies r mask) : ClassifierApplies r mask
  | fam181 {r : Nat} {mask : SignMask} (h : fam_181_desc.Applies r mask) : ClassifierApplies r mask
  | fam182 {r : Nat} {mask : SignMask} (h : fam_182_desc.Applies r mask) : ClassifierApplies r mask
  | fam183 {r : Nat} {mask : SignMask} (h : fam_183_desc.Applies r mask) : ClassifierApplies r mask
  | fam184 {r : Nat} {mask : SignMask} (h : fam_184_desc.Applies r mask) : ClassifierApplies r mask
  | fam185 {r : Nat} {mask : SignMask} (h : fam_185_desc.Applies r mask) : ClassifierApplies r mask
  | fam186 {r : Nat} {mask : SignMask} (h : fam_186_desc.Applies r mask) : ClassifierApplies r mask
  | fam187 {r : Nat} {mask : SignMask} (h : fam_187_desc.Applies r mask) : ClassifierApplies r mask
  | fam188 {r : Nat} {mask : SignMask} (h : fam_188_desc.Applies r mask) : ClassifierApplies r mask
  | fam189 {r : Nat} {mask : SignMask} (h : fam_189_desc.Applies r mask) : ClassifierApplies r mask
  | fam190 {r : Nat} {mask : SignMask} (h : fam_190_desc.Applies r mask) : ClassifierApplies r mask
  | fam191 {r : Nat} {mask : SignMask} (h : fam_191_desc.Applies r mask) : ClassifierApplies r mask
  | fam192 {r : Nat} {mask : SignMask} (h : fam_192_desc.Applies r mask) : ClassifierApplies r mask
  | fam193 {r : Nat} {mask : SignMask} (h : fam_193_desc.Applies r mask) : ClassifierApplies r mask
  | fam194 {r : Nat} {mask : SignMask} (h : fam_194_desc.Applies r mask) : ClassifierApplies r mask
  | fam195 {r : Nat} {mask : SignMask} (h : fam_195_desc.Applies r mask) : ClassifierApplies r mask
  | fam196 {r : Nat} {mask : SignMask} (h : fam_196_desc.Applies r mask) : ClassifierApplies r mask
  | fam197 {r : Nat} {mask : SignMask} (h : fam_197_desc.Applies r mask) : ClassifierApplies r mask
  | fam198 {r : Nat} {mask : SignMask} (h : fam_198_desc.Applies r mask) : ClassifierApplies r mask
  | fam199 {r : Nat} {mask : SignMask} (h : fam_199_desc.Applies r mask) : ClassifierApplies r mask

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
  | k125
  | k126
  | k127
  | k128
  | k129
  | k130
  | k131
  | k132
  | k133
  | k134
  | k135
  | k136
  | k137
  | k138
  | k139
  | k140
  | k141
  | k142
  | k143
  | k144
  | k145
  | k146
  | k147
  | k148
  | k149
  | k150
  | k151
  | k152
  | k153
  | k154
  | k155
  | k156
  | k157
  | k158
  | k159
  | k160
  | k161
  | k162
  | k163
  | k164
  | k165
  | k166
  | k167
  | k168
  | k169
  | k170
  | k171
  | k172
  | k173
  | k174
  | k175
  | k176
  | k177
  | k178
  | k179
  | k180
  | k181
  | k182
  | k183
  | k184
  | k185
  | k186
  | k187
  | k188
  | k189
  | k190
  | k191
  | k192
  | k193
  | k194
  | k195
  | k196
  | k197
  | k198
  | k199
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
      firstIndex := 52
      secondIndex := 0
      support := fam_002_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k003 => {
      firstIndex := 25
      secondIndex := 2
      support := fam_003_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k004 => {
      firstIndex := 51
      secondIndex := 1
      support := fam_004_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k005 => {
      firstIndex := 70
      secondIndex := 0
      support := fam_005_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k006 => {
      firstIndex := 83
      secondIndex := 0
      support := fam_006_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k007 => {
      firstIndex := 0
      secondIndex := 15
      support := fam_007_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k008 => {
      firstIndex := 50
      secondIndex := 2
      support := fam_008_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k009 => {
      firstIndex := 0
      secondIndex := 10
      support := fam_009_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k010 => {
      firstIndex := 0
      secondIndex := 13
      support := fam_010_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k011 => {
      firstIndex := 0
      secondIndex := 11
      support := fam_011_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k012 => {
      firstIndex := 0
      secondIndex := 7
      support := fam_012_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k013 => {
      firstIndex := 0
      secondIndex := 12
      support := fam_013_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k014 => {
      firstIndex := 109
      secondIndex := 0
      support := fam_014_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k015 => {
      firstIndex := 96
      secondIndex := 0
      support := fam_015_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k016 => {
      firstIndex := 0
      secondIndex := 14
      support := fam_016_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k017 => {
      firstIndex := 161
      secondIndex := 0
      support := fam_017_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k018 => {
      firstIndex := 0
      secondIndex := 9
      support := fam_018_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k019 => {
      firstIndex := 70
      secondIndex := 1
      support := fam_019_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k020 => {
      firstIndex := 83
      secondIndex := 1
      support := fam_020_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k021 => {
      firstIndex := 26
      secondIndex := 3
      support := fam_021_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k022 => {
      firstIndex := 44
      secondIndex := 0
      support := fam_022_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k023 => {
      firstIndex := 58
      secondIndex := 0
      support := fam_023_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k024 => {
      firstIndex := 1
      secondIndex := 15
      support := fam_024_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k025 => {
      firstIndex := 135
      secondIndex := 0
      support := fam_025_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k026 => {
      firstIndex := 1
      secondIndex := 10
      support := fam_026_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k027 => {
      firstIndex := 148
      secondIndex := 0
      support := fam_027_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k028 => {
      firstIndex := 162
      secondIndex := 0
      support := fam_028_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k029 => {
      firstIndex := 63
      secondIndex := 0
      support := fam_029_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k030 => {
      firstIndex := 70
      secondIndex := 2
      support := fam_030_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k031 => {
      firstIndex := 57
      secondIndex := 0
      support := fam_031_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k032 => {
      firstIndex := 175
      secondIndex := 0
      support := fam_032_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k033 => {
      firstIndex := 1
      secondIndex := 13
      support := fam_033_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k034 => {
      firstIndex := 122
      secondIndex := 0
      support := fam_034_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k035 => {
      firstIndex := 183
      secondIndex := 0
      support := fam_035_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k036 => {
      firstIndex := 1
      secondIndex := 12
      support := fam_036_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k037 => {
      firstIndex := 1
      secondIndex := 14
      support := fam_037_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k038 => {
      firstIndex := 1
      secondIndex := 11
      support := fam_038_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k039 => {
      firstIndex := 136
      secondIndex := 0
      support := fam_039_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k040 => {
      firstIndex := 2
      secondIndex := 15
      support := fam_040_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k041 => {
      firstIndex := 109
      secondIndex := 1
      support := fam_041_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k042 => {
      firstIndex := 0
      secondIndex := 16
      support := fam_042_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k043 => {
      firstIndex := 2
      secondIndex := 10
      support := fam_043_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k044 => {
      firstIndex := 2
      secondIndex := 13
      support := fam_044_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k045 => {
      firstIndex := 57
      secondIndex := 3
      support := fam_045_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k046 => {
      firstIndex := 97
      secondIndex := 0
      support := fam_046_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k047 => {
      firstIndex := 83
      secondIndex := 2
      support := fam_047_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k048 => {
      firstIndex := 48
      secondIndex := 0
      support := fam_048_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k049 => {
      firstIndex := 162
      secondIndex := 1
      support := fam_049_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k050 => {
      firstIndex := 49
      secondIndex := 3
      support := fam_050_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k051 => {
      firstIndex := 149
      secondIndex := 0
      support := fam_051_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k052 => {
      firstIndex := 135
      secondIndex := 1
      support := fam_052_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k053 => {
      firstIndex := 2
      secondIndex := 12
      support := fam_053_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k054 => {
      firstIndex := 71
      secondIndex := 2
      support := fam_054_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k055 => {
      firstIndex := 84
      secondIndex := 0
      support := fam_055_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k056 => {
      firstIndex := 96
      secondIndex := 1
      support := fam_056_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k057 => {
      firstIndex := 71
      secondIndex := 0
      support := fam_057_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k058 => {
      firstIndex := 1
      secondIndex := 9
      support := fam_058_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k059 => {
      firstIndex := 2
      secondIndex := 11
      support := fam_059_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k060 => {
      firstIndex := 123
      secondIndex := 0
      support := fam_060_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k061 => {
      firstIndex := 1
      secondIndex := 7
      support := fam_061_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k062 => {
      firstIndex := 110
      secondIndex := 0
      support := fam_062_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k063 => {
      firstIndex := 2
      secondIndex := 14
      support := fam_063_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k064 => {
      firstIndex := 161
      secondIndex := 1
      support := fam_064_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k065 => {
      firstIndex := 162
      secondIndex := 2
      support := fam_065_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k066 => {
      firstIndex := 175
      secondIndex := 1
      support := fam_066_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k067 => {
      firstIndex := 1
      secondIndex := 16
      support := fam_067_support
      template := SourceIndexTemplate.oppOneMinusVarSecond }
  | .k068 => {
      firstIndex := 2
      secondIndex := 7
      support := fam_068_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k069 => {
      firstIndex := 136
      secondIndex := 1
      support := fam_069_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k070 => {
      firstIndex := 148
      secondIndex := 1
      support := fam_070_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k071 => {
      firstIndex := 3
      secondIndex := 9
      support := fam_071_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k072 => {
      firstIndex := 122
      secondIndex := 1
      support := fam_072_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k073 => {
      firstIndex := 3
      secondIndex := 15
      support := fam_073_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k074 => {
      firstIndex := 70
      secondIndex := 3
      support := fam_074_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k075 => {
      firstIndex := 93
      secondIndex := 0
      support := fam_075_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k076 => {
      firstIndex := 167
      secondIndex := 0
      support := fam_076_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k077 => {
      firstIndex := 76
      secondIndex := 1
      support := fam_077_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k078 => {
      firstIndex := 47
      secondIndex := 1
      support := fam_078_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k079 => {
      firstIndex := 184
      secondIndex := 1
      support := fam_079_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k080 => {
      firstIndex := 84
      secondIndex := 1
      support := fam_080_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k081 => {
      firstIndex := 77
      secondIndex := 0
      support := fam_081_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k082 => {
      firstIndex := 69
      secondIndex := 0
      support := fam_082_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k083 => {
      firstIndex := 94
      secondIndex := 0
      support := fam_083_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k084 => {
      firstIndex := 78
      secondIndex := 0
      support := fam_084_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k085 => {
      firstIndex := 97
      secondIndex := 1
      support := fam_085_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k086 => {
      firstIndex := 84
      secondIndex := 2
      support := fam_086_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k087 => {
      firstIndex := 3
      secondIndex := 11
      support := fam_087_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k088 => {
      firstIndex := 71
      secondIndex := 3
      support := fam_088_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k089 => {
      firstIndex := 79
      secondIndex := 1
      support := fam_089_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k090 => {
      firstIndex := 71
      secondIndex := 1
      support := fam_090_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k091 => {
      firstIndex := 136
      secondIndex := 2
      support := fam_091_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k092 => {
      firstIndex := 110
      secondIndex := 1
      support := fam_092_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k093 => {
      firstIndex := 3
      secondIndex := 13
      support := fam_093_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k094 => {
      firstIndex := 149
      secondIndex := 2
      support := fam_094_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k095 => {
      firstIndex := 109
      secondIndex := 2
      support := fam_095_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k096 => {
      firstIndex := 3
      secondIndex := 10
      support := fam_096_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k097 => {
      firstIndex := 149
      secondIndex := 1
      support := fam_097_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k098 => {
      firstIndex := 48
      secondIndex := 2
      support := fam_098_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k099 => {
      firstIndex := 171
      secondIndex := 0
      support := fam_099_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k100 => {
      firstIndex := 96
      secondIndex := 2
      support := fam_100_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k101 => {
      firstIndex := 83
      secondIndex := 3
      support := fam_101_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k102 => {
      firstIndex := 131
      secondIndex := 0
      support := fam_102_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k103 => {
      firstIndex := 2
      secondIndex := 9
      support := fam_103_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k104 => {
      firstIndex := 115
      secondIndex := 0
      support := fam_104_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k105 => {
      firstIndex := 110
      secondIndex := 2
      support := fam_105_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k106 => {
      firstIndex := 95
      secondIndex := 0
      support := fam_106_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k107 => {
      firstIndex := 119
      secondIndex := 0
      support := fam_107_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k108 => {
      firstIndex := 172
      secondIndex := 0
      support := fam_108_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k109 => {
      firstIndex := 105
      secondIndex := 0
      support := fam_109_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k110 => {
      firstIndex := 5
      secondIndex := 8
      support := fam_110_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k111 => {
      firstIndex := 147
      secondIndex := 0
      support := fam_111_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k112 => {
      firstIndex := 106
      secondIndex := 0
      support := fam_112_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k113 => {
      firstIndex := 168
      secondIndex := 1
      support := fam_113_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k114 => {
      firstIndex := 123
      secondIndex := 1
      support := fam_114_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k115 => {
      firstIndex := 97
      secondIndex := 2
      support := fam_115_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k116 => {
      firstIndex := 3
      secondIndex := 12
      support := fam_116_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k117 => {
      firstIndex := 121
      secondIndex := 0
      support := fam_117_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k118 => {
      firstIndex := 107
      secondIndex := 0
      support := fam_118_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k119 => {
      firstIndex := 76
      secondIndex := 2
      support := fam_119_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k120 => {
      firstIndex := 162
      secondIndex := 3
      support := fam_120_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k121 => {
      firstIndex := 141
      secondIndex := 0
      support := fam_121_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k122 => {
      firstIndex := 84
      secondIndex := 3
      support := fam_122_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k123 => {
      firstIndex := 120
      secondIndex := 0
      support := fam_123_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k124 => {
      firstIndex := 170
      secondIndex := 1
      support := fam_124_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k125 => {
      firstIndex := 103
      secondIndex := 0
      support := fam_125_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k126 => {
      firstIndex := 135
      secondIndex := 2
      support := fam_126_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k127 => {
      firstIndex := 175
      secondIndex := 3
      support := fam_127_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k128 => {
      firstIndex := 18
      secondIndex := 1
      support := fam_128_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k129 => {
      firstIndex := 92
      secondIndex := 1
      support := fam_129_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k130 => {
      firstIndex := 146
      secondIndex := 0
      support := fam_130_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k131 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_131_support
      template := SourceIndexTemplate.axisAOnly }
  | .k132 => {
      firstIndex := 123
      secondIndex := 2
      support := fam_132_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k133 => {
      firstIndex := 3
      secondIndex := 14
      support := fam_133_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k134 => {
      firstIndex := 104
      secondIndex := 0
      support := fam_134_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k135 => {
      firstIndex := 157
      secondIndex := 0
      support := fam_135_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k136 => {
      firstIndex := 178
      secondIndex := 5
      support := fam_136_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k137 => {
      firstIndex := 16
      secondIndex := 6
      support := fam_137_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k138 => {
      firstIndex := 177
      secondIndex := 5
      support := fam_138_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k139 => {
      firstIndex := 94
      secondIndex := 1
      support := fam_139_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k140 => {
      firstIndex := 105
      secondIndex := 1
      support := fam_140_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k141 => {
      firstIndex := 122
      secondIndex := 2
      support := fam_141_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k142 => {
      firstIndex := 136
      secondIndex := 3
      support := fam_142_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k143 => {
      firstIndex := 2
      secondIndex := 16
      support := fam_143_support
      template := SourceIndexTemplate.oppMinusOneVarSecond }
  | .k144 => {
      firstIndex := 132
      secondIndex := 0
      support := fam_144_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k145 => {
      firstIndex := 133
      secondIndex := 0
      support := fam_145_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k146 => {
      firstIndex := 145
      secondIndex := 0
      support := fam_146_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k147 => {
      firstIndex := 175
      secondIndex := 2
      support := fam_147_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k148 => {
      firstIndex := 77
      secondIndex := 3
      support := fam_148_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k149 => {
      firstIndex := 116
      secondIndex := 1
      support := fam_149_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k150 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_150_support
      template := SourceIndexTemplate.axisAOnly }
  | .k151 => {
      firstIndex := 5
      secondIndex := 8
      support := fam_151_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k152 => {
      firstIndex := 79
      secondIndex := 2
      support := fam_152_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k153 => {
      firstIndex := 105
      secondIndex := 2
      support := fam_153_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k154 => {
      firstIndex := 110
      secondIndex := 3
      support := fam_154_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k155 => {
      firstIndex := 129
      secondIndex := 0
      support := fam_155_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k156 => {
      firstIndex := 142
      secondIndex := 1
      support := fam_156_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k157 => {
      firstIndex := 143
      secondIndex := 2
      support := fam_157_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k158 => {
      firstIndex := 135
      secondIndex := 3
      support := fam_158_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k159 => {
      firstIndex := 109
      secondIndex := 3
      support := fam_159_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k160 => {
      firstIndex := 58
      secondIndex := 3
      support := fam_160_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k161 => {
      firstIndex := 97
      secondIndex := 3
      support := fam_161_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k162 => {
      firstIndex := 111
      secondIndex := 0
      support := fam_162_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k163 => {
      firstIndex := 98
      secondIndex := 0
      support := fam_163_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k164 => {
      firstIndex := 148
      secondIndex := 2
      support := fam_164_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k165 => {
      firstIndex := 70
      secondIndex := 4
      support := fam_165_support
      template := SourceIndexTemplate.axisAOnly }
  | .k166 => {
      firstIndex := 70
      secondIndex := 4
      support := fam_166_support
      template := SourceIndexTemplate.axisAOnly }
  | .k167 => {
      firstIndex := 78
      secondIndex := 3
      support := fam_167_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k168 => {
      firstIndex := 3
      secondIndex := 16
      support := fam_168_support
      template := SourceIndexTemplate.eqEqNegVarSecond }
  | .k169 => {
      firstIndex := 82
      secondIndex := 1
      support := fam_169_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k170 => {
      firstIndex := 173
      secondIndex := 1
      support := fam_170_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k171 => {
      firstIndex := 144
      secondIndex := 1
      support := fam_171_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k172 => {
      firstIndex := 169
      secondIndex := 2
      support := fam_172_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k173 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_173_support
      template := SourceIndexTemplate.axisAOnly }
  | .k174 => {
      firstIndex := 148
      secondIndex := 3
      support := fam_174_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k175 => {
      firstIndex := 0
      secondIndex := 5
      support := fam_175_support
      template := SourceIndexTemplate.eqEqPosVarSecond }
  | .k176 => {
      firstIndex := 118
      secondIndex := 1
      support := fam_176_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k177 => {
      firstIndex := 92
      secondIndex := 2
      support := fam_177_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k178 => {
      firstIndex := 57
      secondIndex := 5
      support := fam_178_support
      template := SourceIndexTemplate.axisAOnly }
  | .k179 => {
      firstIndex := 66
      secondIndex := 3
      support := fam_179_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k180 => {
      firstIndex := 117
      secondIndex := 2
      support := fam_180_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k181 => {
      firstIndex := 131
      secondIndex := 1
      support := fam_181_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k182 => {
      firstIndex := 156
      secondIndex := 1
      support := fam_182_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k183 => {
      firstIndex := 131
      secondIndex := 2
      support := fam_183_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k184 => {
      firstIndex := 51
      secondIndex := 3
      support := fam_184_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k185 => {
      firstIndex := 143
      secondIndex := 0
      support := fam_185_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k186 => {
      firstIndex := 59
      secondIndex := 5
      support := fam_186_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k187 => {
      firstIndex := 60
      secondIndex := 5
      support := fam_187_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k188 => {
      firstIndex := 95
      secondIndex := 1
      support := fam_188_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k189 => {
      firstIndex := 106
      secondIndex := 1
      support := fam_189_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k190 => {
      firstIndex := 107
      secondIndex := 2
      support := fam_190_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k191 => {
      firstIndex := 95
      secondIndex := 2
      support := fam_191_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }
  | .k192 => {
      firstIndex := 44
      secondIndex := 5
      support := fam_192_support
      template := SourceIndexTemplate.axisAOnly }
  | .k193 => {
      firstIndex := 149
      secondIndex := 3
      support := fam_193_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k194 => {
      firstIndex := 122
      secondIndex := 3
      support := fam_194_support
      template := SourceIndexTemplate.eqEqNegVarFirst }
  | .k195 => {
      firstIndex := 130
      secondIndex := 0
      support := fam_195_support
      template := SourceIndexTemplate.eqEqPosVarFirst }
  | .k196 => {
      firstIndex := 16
      secondIndex := 5
      support := fam_196_support
      template := SourceIndexTemplate.exactTwoSourceValid }
  | .k197 => {
      firstIndex := 130
      secondIndex := 1
      support := fam_197_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k198 => {
      firstIndex := 120
      secondIndex := 1
      support := fam_198_support
      template := SourceIndexTemplate.oppOneMinusVarFirst }
  | .k199 => {
      firstIndex := 91
      secondIndex := 2
      support := fam_199_support
      template := SourceIndexTemplate.oppMinusOneVarFirst }

def ClassifierKey.toFin :
    ClassifierKey -> Fin 200
  | .k000 => ⟨0, by decide⟩
  | .k001 => ⟨1, by decide⟩
  | .k002 => ⟨2, by decide⟩
  | .k003 => ⟨3, by decide⟩
  | .k004 => ⟨4, by decide⟩
  | .k005 => ⟨5, by decide⟩
  | .k006 => ⟨6, by decide⟩
  | .k007 => ⟨7, by decide⟩
  | .k008 => ⟨8, by decide⟩
  | .k009 => ⟨9, by decide⟩
  | .k010 => ⟨10, by decide⟩
  | .k011 => ⟨11, by decide⟩
  | .k012 => ⟨12, by decide⟩
  | .k013 => ⟨13, by decide⟩
  | .k014 => ⟨14, by decide⟩
  | .k015 => ⟨15, by decide⟩
  | .k016 => ⟨16, by decide⟩
  | .k017 => ⟨17, by decide⟩
  | .k018 => ⟨18, by decide⟩
  | .k019 => ⟨19, by decide⟩
  | .k020 => ⟨20, by decide⟩
  | .k021 => ⟨21, by decide⟩
  | .k022 => ⟨22, by decide⟩
  | .k023 => ⟨23, by decide⟩
  | .k024 => ⟨24, by decide⟩
  | .k025 => ⟨25, by decide⟩
  | .k026 => ⟨26, by decide⟩
  | .k027 => ⟨27, by decide⟩
  | .k028 => ⟨28, by decide⟩
  | .k029 => ⟨29, by decide⟩
  | .k030 => ⟨30, by decide⟩
  | .k031 => ⟨31, by decide⟩
  | .k032 => ⟨32, by decide⟩
  | .k033 => ⟨33, by decide⟩
  | .k034 => ⟨34, by decide⟩
  | .k035 => ⟨35, by decide⟩
  | .k036 => ⟨36, by decide⟩
  | .k037 => ⟨37, by decide⟩
  | .k038 => ⟨38, by decide⟩
  | .k039 => ⟨39, by decide⟩
  | .k040 => ⟨40, by decide⟩
  | .k041 => ⟨41, by decide⟩
  | .k042 => ⟨42, by decide⟩
  | .k043 => ⟨43, by decide⟩
  | .k044 => ⟨44, by decide⟩
  | .k045 => ⟨45, by decide⟩
  | .k046 => ⟨46, by decide⟩
  | .k047 => ⟨47, by decide⟩
  | .k048 => ⟨48, by decide⟩
  | .k049 => ⟨49, by decide⟩
  | .k050 => ⟨50, by decide⟩
  | .k051 => ⟨51, by decide⟩
  | .k052 => ⟨52, by decide⟩
  | .k053 => ⟨53, by decide⟩
  | .k054 => ⟨54, by decide⟩
  | .k055 => ⟨55, by decide⟩
  | .k056 => ⟨56, by decide⟩
  | .k057 => ⟨57, by decide⟩
  | .k058 => ⟨58, by decide⟩
  | .k059 => ⟨59, by decide⟩
  | .k060 => ⟨60, by decide⟩
  | .k061 => ⟨61, by decide⟩
  | .k062 => ⟨62, by decide⟩
  | .k063 => ⟨63, by decide⟩
  | .k064 => ⟨64, by decide⟩
  | .k065 => ⟨65, by decide⟩
  | .k066 => ⟨66, by decide⟩
  | .k067 => ⟨67, by decide⟩
  | .k068 => ⟨68, by decide⟩
  | .k069 => ⟨69, by decide⟩
  | .k070 => ⟨70, by decide⟩
  | .k071 => ⟨71, by decide⟩
  | .k072 => ⟨72, by decide⟩
  | .k073 => ⟨73, by decide⟩
  | .k074 => ⟨74, by decide⟩
  | .k075 => ⟨75, by decide⟩
  | .k076 => ⟨76, by decide⟩
  | .k077 => ⟨77, by decide⟩
  | .k078 => ⟨78, by decide⟩
  | .k079 => ⟨79, by decide⟩
  | .k080 => ⟨80, by decide⟩
  | .k081 => ⟨81, by decide⟩
  | .k082 => ⟨82, by decide⟩
  | .k083 => ⟨83, by decide⟩
  | .k084 => ⟨84, by decide⟩
  | .k085 => ⟨85, by decide⟩
  | .k086 => ⟨86, by decide⟩
  | .k087 => ⟨87, by decide⟩
  | .k088 => ⟨88, by decide⟩
  | .k089 => ⟨89, by decide⟩
  | .k090 => ⟨90, by decide⟩
  | .k091 => ⟨91, by decide⟩
  | .k092 => ⟨92, by decide⟩
  | .k093 => ⟨93, by decide⟩
  | .k094 => ⟨94, by decide⟩
  | .k095 => ⟨95, by decide⟩
  | .k096 => ⟨96, by decide⟩
  | .k097 => ⟨97, by decide⟩
  | .k098 => ⟨98, by decide⟩
  | .k099 => ⟨99, by decide⟩
  | .k100 => ⟨100, by decide⟩
  | .k101 => ⟨101, by decide⟩
  | .k102 => ⟨102, by decide⟩
  | .k103 => ⟨103, by decide⟩
  | .k104 => ⟨104, by decide⟩
  | .k105 => ⟨105, by decide⟩
  | .k106 => ⟨106, by decide⟩
  | .k107 => ⟨107, by decide⟩
  | .k108 => ⟨108, by decide⟩
  | .k109 => ⟨109, by decide⟩
  | .k110 => ⟨110, by decide⟩
  | .k111 => ⟨111, by decide⟩
  | .k112 => ⟨112, by decide⟩
  | .k113 => ⟨113, by decide⟩
  | .k114 => ⟨114, by decide⟩
  | .k115 => ⟨115, by decide⟩
  | .k116 => ⟨116, by decide⟩
  | .k117 => ⟨117, by decide⟩
  | .k118 => ⟨118, by decide⟩
  | .k119 => ⟨119, by decide⟩
  | .k120 => ⟨120, by decide⟩
  | .k121 => ⟨121, by decide⟩
  | .k122 => ⟨122, by decide⟩
  | .k123 => ⟨123, by decide⟩
  | .k124 => ⟨124, by decide⟩
  | .k125 => ⟨125, by decide⟩
  | .k126 => ⟨126, by decide⟩
  | .k127 => ⟨127, by decide⟩
  | .k128 => ⟨128, by decide⟩
  | .k129 => ⟨129, by decide⟩
  | .k130 => ⟨130, by decide⟩
  | .k131 => ⟨131, by decide⟩
  | .k132 => ⟨132, by decide⟩
  | .k133 => ⟨133, by decide⟩
  | .k134 => ⟨134, by decide⟩
  | .k135 => ⟨135, by decide⟩
  | .k136 => ⟨136, by decide⟩
  | .k137 => ⟨137, by decide⟩
  | .k138 => ⟨138, by decide⟩
  | .k139 => ⟨139, by decide⟩
  | .k140 => ⟨140, by decide⟩
  | .k141 => ⟨141, by decide⟩
  | .k142 => ⟨142, by decide⟩
  | .k143 => ⟨143, by decide⟩
  | .k144 => ⟨144, by decide⟩
  | .k145 => ⟨145, by decide⟩
  | .k146 => ⟨146, by decide⟩
  | .k147 => ⟨147, by decide⟩
  | .k148 => ⟨148, by decide⟩
  | .k149 => ⟨149, by decide⟩
  | .k150 => ⟨150, by decide⟩
  | .k151 => ⟨151, by decide⟩
  | .k152 => ⟨152, by decide⟩
  | .k153 => ⟨153, by decide⟩
  | .k154 => ⟨154, by decide⟩
  | .k155 => ⟨155, by decide⟩
  | .k156 => ⟨156, by decide⟩
  | .k157 => ⟨157, by decide⟩
  | .k158 => ⟨158, by decide⟩
  | .k159 => ⟨159, by decide⟩
  | .k160 => ⟨160, by decide⟩
  | .k161 => ⟨161, by decide⟩
  | .k162 => ⟨162, by decide⟩
  | .k163 => ⟨163, by decide⟩
  | .k164 => ⟨164, by decide⟩
  | .k165 => ⟨165, by decide⟩
  | .k166 => ⟨166, by decide⟩
  | .k167 => ⟨167, by decide⟩
  | .k168 => ⟨168, by decide⟩
  | .k169 => ⟨169, by decide⟩
  | .k170 => ⟨170, by decide⟩
  | .k171 => ⟨171, by decide⟩
  | .k172 => ⟨172, by decide⟩
  | .k173 => ⟨173, by decide⟩
  | .k174 => ⟨174, by decide⟩
  | .k175 => ⟨175, by decide⟩
  | .k176 => ⟨176, by decide⟩
  | .k177 => ⟨177, by decide⟩
  | .k178 => ⟨178, by decide⟩
  | .k179 => ⟨179, by decide⟩
  | .k180 => ⟨180, by decide⟩
  | .k181 => ⟨181, by decide⟩
  | .k182 => ⟨182, by decide⟩
  | .k183 => ⟨183, by decide⟩
  | .k184 => ⟨184, by decide⟩
  | .k185 => ⟨185, by decide⟩
  | .k186 => ⟨186, by decide⟩
  | .k187 => ⟨187, by decide⟩
  | .k188 => ⟨188, by decide⟩
  | .k189 => ⟨189, by decide⟩
  | .k190 => ⟨190, by decide⟩
  | .k191 => ⟨191, by decide⟩
  | .k192 => ⟨192, by decide⟩
  | .k193 => ⟨193, by decide⟩
  | .k194 => ⟨194, by decide⟩
  | .k195 => ⟨195, by decide⟩
  | .k196 => ⟨196, by decide⟩
  | .k197 => ⟨197, by decide⟩
  | .k198 => ⟨198, by decide⟩
  | .k199 => ⟨199, by decide⟩

/-- Finite catalog view of the generated classifier keys.

This is the preferred input shape for generated source/row membership
chunks: the generated proof can target the generic
`SourceRowFactsGoodCatalogOnRange` or
`SourceRowPredicateGoodCatalogOnRange` APIs, then erase the concrete
catalog immediately through the small theorems below. -/
def classifierSourceIndexKeyAt (i : Fin 200) : SourceIndexStateKey :=
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
  if i.val = 125 then ClassifierKey.k125.toSourceIndexStateKey else
  if i.val = 126 then ClassifierKey.k126.toSourceIndexStateKey else
  if i.val = 127 then ClassifierKey.k127.toSourceIndexStateKey else
  if i.val = 128 then ClassifierKey.k128.toSourceIndexStateKey else
  if i.val = 129 then ClassifierKey.k129.toSourceIndexStateKey else
  if i.val = 130 then ClassifierKey.k130.toSourceIndexStateKey else
  if i.val = 131 then ClassifierKey.k131.toSourceIndexStateKey else
  if i.val = 132 then ClassifierKey.k132.toSourceIndexStateKey else
  if i.val = 133 then ClassifierKey.k133.toSourceIndexStateKey else
  if i.val = 134 then ClassifierKey.k134.toSourceIndexStateKey else
  if i.val = 135 then ClassifierKey.k135.toSourceIndexStateKey else
  if i.val = 136 then ClassifierKey.k136.toSourceIndexStateKey else
  if i.val = 137 then ClassifierKey.k137.toSourceIndexStateKey else
  if i.val = 138 then ClassifierKey.k138.toSourceIndexStateKey else
  if i.val = 139 then ClassifierKey.k139.toSourceIndexStateKey else
  if i.val = 140 then ClassifierKey.k140.toSourceIndexStateKey else
  if i.val = 141 then ClassifierKey.k141.toSourceIndexStateKey else
  if i.val = 142 then ClassifierKey.k142.toSourceIndexStateKey else
  if i.val = 143 then ClassifierKey.k143.toSourceIndexStateKey else
  if i.val = 144 then ClassifierKey.k144.toSourceIndexStateKey else
  if i.val = 145 then ClassifierKey.k145.toSourceIndexStateKey else
  if i.val = 146 then ClassifierKey.k146.toSourceIndexStateKey else
  if i.val = 147 then ClassifierKey.k147.toSourceIndexStateKey else
  if i.val = 148 then ClassifierKey.k148.toSourceIndexStateKey else
  if i.val = 149 then ClassifierKey.k149.toSourceIndexStateKey else
  if i.val = 150 then ClassifierKey.k150.toSourceIndexStateKey else
  if i.val = 151 then ClassifierKey.k151.toSourceIndexStateKey else
  if i.val = 152 then ClassifierKey.k152.toSourceIndexStateKey else
  if i.val = 153 then ClassifierKey.k153.toSourceIndexStateKey else
  if i.val = 154 then ClassifierKey.k154.toSourceIndexStateKey else
  if i.val = 155 then ClassifierKey.k155.toSourceIndexStateKey else
  if i.val = 156 then ClassifierKey.k156.toSourceIndexStateKey else
  if i.val = 157 then ClassifierKey.k157.toSourceIndexStateKey else
  if i.val = 158 then ClassifierKey.k158.toSourceIndexStateKey else
  if i.val = 159 then ClassifierKey.k159.toSourceIndexStateKey else
  if i.val = 160 then ClassifierKey.k160.toSourceIndexStateKey else
  if i.val = 161 then ClassifierKey.k161.toSourceIndexStateKey else
  if i.val = 162 then ClassifierKey.k162.toSourceIndexStateKey else
  if i.val = 163 then ClassifierKey.k163.toSourceIndexStateKey else
  if i.val = 164 then ClassifierKey.k164.toSourceIndexStateKey else
  if i.val = 165 then ClassifierKey.k165.toSourceIndexStateKey else
  if i.val = 166 then ClassifierKey.k166.toSourceIndexStateKey else
  if i.val = 167 then ClassifierKey.k167.toSourceIndexStateKey else
  if i.val = 168 then ClassifierKey.k168.toSourceIndexStateKey else
  if i.val = 169 then ClassifierKey.k169.toSourceIndexStateKey else
  if i.val = 170 then ClassifierKey.k170.toSourceIndexStateKey else
  if i.val = 171 then ClassifierKey.k171.toSourceIndexStateKey else
  if i.val = 172 then ClassifierKey.k172.toSourceIndexStateKey else
  if i.val = 173 then ClassifierKey.k173.toSourceIndexStateKey else
  if i.val = 174 then ClassifierKey.k174.toSourceIndexStateKey else
  if i.val = 175 then ClassifierKey.k175.toSourceIndexStateKey else
  if i.val = 176 then ClassifierKey.k176.toSourceIndexStateKey else
  if i.val = 177 then ClassifierKey.k177.toSourceIndexStateKey else
  if i.val = 178 then ClassifierKey.k178.toSourceIndexStateKey else
  if i.val = 179 then ClassifierKey.k179.toSourceIndexStateKey else
  if i.val = 180 then ClassifierKey.k180.toSourceIndexStateKey else
  if i.val = 181 then ClassifierKey.k181.toSourceIndexStateKey else
  if i.val = 182 then ClassifierKey.k182.toSourceIndexStateKey else
  if i.val = 183 then ClassifierKey.k183.toSourceIndexStateKey else
  if i.val = 184 then ClassifierKey.k184.toSourceIndexStateKey else
  if i.val = 185 then ClassifierKey.k185.toSourceIndexStateKey else
  if i.val = 186 then ClassifierKey.k186.toSourceIndexStateKey else
  if i.val = 187 then ClassifierKey.k187.toSourceIndexStateKey else
  if i.val = 188 then ClassifierKey.k188.toSourceIndexStateKey else
  if i.val = 189 then ClassifierKey.k189.toSourceIndexStateKey else
  if i.val = 190 then ClassifierKey.k190.toSourceIndexStateKey else
  if i.val = 191 then ClassifierKey.k191.toSourceIndexStateKey else
  if i.val = 192 then ClassifierKey.k192.toSourceIndexStateKey else
  if i.val = 193 then ClassifierKey.k193.toSourceIndexStateKey else
  if i.val = 194 then ClassifierKey.k194.toSourceIndexStateKey else
  if i.val = 195 then ClassifierKey.k195.toSourceIndexStateKey else
  if i.val = 196 then ClassifierKey.k196.toSourceIndexStateKey else
  if i.val = 197 then ClassifierKey.k197.toSourceIndexStateKey else
  if i.val = 198 then ClassifierKey.k198.toSourceIndexStateKey else
  if i.val = 199 then ClassifierKey.k199.toSourceIndexStateKey else
  ClassifierKey.k000.toSourceIndexStateKey

theorem classifierSourceIndexKeyAt_toFin (key : ClassifierKey) :
    classifierSourceIndexKeyAt key.toFin = key.toSourceIndexStateKey := by
  cases key <;> rfl

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
  | k125 =>
      exact ClassifierApplies.fam125 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_125_desc] using h)
  | k126 =>
      exact ClassifierApplies.fam126 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_126_desc] using h)
  | k127 =>
      exact ClassifierApplies.fam127 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_127_desc] using h)
  | k128 =>
      exact ClassifierApplies.fam128 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_128_desc] using h)
  | k129 =>
      exact ClassifierApplies.fam129 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_129_desc] using h)
  | k130 =>
      exact ClassifierApplies.fam130 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_130_desc] using h)
  | k131 =>
      exact ClassifierApplies.fam131 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_131_desc] using h)
  | k132 =>
      exact ClassifierApplies.fam132 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_132_desc] using h)
  | k133 =>
      exact ClassifierApplies.fam133 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_133_desc] using h)
  | k134 =>
      exact ClassifierApplies.fam134 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_134_desc] using h)
  | k135 =>
      exact ClassifierApplies.fam135 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_135_desc] using h)
  | k136 =>
      exact ClassifierApplies.fam136 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_136_desc] using h)
  | k137 =>
      exact ClassifierApplies.fam137 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_137_desc] using h)
  | k138 =>
      exact ClassifierApplies.fam138 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_138_desc] using h)
  | k139 =>
      exact ClassifierApplies.fam139 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_139_desc] using h)
  | k140 =>
      exact ClassifierApplies.fam140 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_140_desc] using h)
  | k141 =>
      exact ClassifierApplies.fam141 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_141_desc] using h)
  | k142 =>
      exact ClassifierApplies.fam142 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_142_desc] using h)
  | k143 =>
      exact ClassifierApplies.fam143 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_143_desc] using h)
  | k144 =>
      exact ClassifierApplies.fam144 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_144_desc] using h)
  | k145 =>
      exact ClassifierApplies.fam145 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_145_desc] using h)
  | k146 =>
      exact ClassifierApplies.fam146 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_146_desc] using h)
  | k147 =>
      exact ClassifierApplies.fam147 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_147_desc] using h)
  | k148 =>
      exact ClassifierApplies.fam148 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_148_desc] using h)
  | k149 =>
      exact ClassifierApplies.fam149 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_149_desc] using h)
  | k150 =>
      exact ClassifierApplies.fam150 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_150_desc] using h)
  | k151 =>
      exact ClassifierApplies.fam151 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_151_desc] using h)
  | k152 =>
      exact ClassifierApplies.fam152 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_152_desc] using h)
  | k153 =>
      exact ClassifierApplies.fam153 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_153_desc] using h)
  | k154 =>
      exact ClassifierApplies.fam154 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_154_desc] using h)
  | k155 =>
      exact ClassifierApplies.fam155 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_155_desc] using h)
  | k156 =>
      exact ClassifierApplies.fam156 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_156_desc] using h)
  | k157 =>
      exact ClassifierApplies.fam157 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_157_desc] using h)
  | k158 =>
      exact ClassifierApplies.fam158 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_158_desc] using h)
  | k159 =>
      exact ClassifierApplies.fam159 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_159_desc] using h)
  | k160 =>
      exact ClassifierApplies.fam160 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_160_desc] using h)
  | k161 =>
      exact ClassifierApplies.fam161 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_161_desc] using h)
  | k162 =>
      exact ClassifierApplies.fam162 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_162_desc] using h)
  | k163 =>
      exact ClassifierApplies.fam163 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_163_desc] using h)
  | k164 =>
      exact ClassifierApplies.fam164 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_164_desc] using h)
  | k165 =>
      exact ClassifierApplies.fam165 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_165_desc] using h)
  | k166 =>
      exact ClassifierApplies.fam166 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_166_desc] using h)
  | k167 =>
      exact ClassifierApplies.fam167 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_167_desc] using h)
  | k168 =>
      exact ClassifierApplies.fam168 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_168_desc] using h)
  | k169 =>
      exact ClassifierApplies.fam169 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_169_desc] using h)
  | k170 =>
      exact ClassifierApplies.fam170 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_170_desc] using h)
  | k171 =>
      exact ClassifierApplies.fam171 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_171_desc] using h)
  | k172 =>
      exact ClassifierApplies.fam172 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_172_desc] using h)
  | k173 =>
      exact ClassifierApplies.fam173 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_173_desc] using h)
  | k174 =>
      exact ClassifierApplies.fam174 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_174_desc] using h)
  | k175 =>
      exact ClassifierApplies.fam175 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_175_desc] using h)
  | k176 =>
      exact ClassifierApplies.fam176 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_176_desc] using h)
  | k177 =>
      exact ClassifierApplies.fam177 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_177_desc] using h)
  | k178 =>
      exact ClassifierApplies.fam178 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_178_desc] using h)
  | k179 =>
      exact ClassifierApplies.fam179 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_179_desc] using h)
  | k180 =>
      exact ClassifierApplies.fam180 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_180_desc] using h)
  | k181 =>
      exact ClassifierApplies.fam181 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_181_desc] using h)
  | k182 =>
      exact ClassifierApplies.fam182 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_182_desc] using h)
  | k183 =>
      exact ClassifierApplies.fam183 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_183_desc] using h)
  | k184 =>
      exact ClassifierApplies.fam184 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_184_desc] using h)
  | k185 =>
      exact ClassifierApplies.fam185 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_185_desc] using h)
  | k186 =>
      exact ClassifierApplies.fam186 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_186_desc] using h)
  | k187 =>
      exact ClassifierApplies.fam187 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_187_desc] using h)
  | k188 =>
      exact ClassifierApplies.fam188 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_188_desc] using h)
  | k189 =>
      exact ClassifierApplies.fam189 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_189_desc] using h)
  | k190 =>
      exact ClassifierApplies.fam190 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_190_desc] using h)
  | k191 =>
      exact ClassifierApplies.fam191 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_191_desc] using h)
  | k192 =>
      exact ClassifierApplies.fam192 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_192_desc] using h)
  | k193 =>
      exact ClassifierApplies.fam193 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_193_desc] using h)
  | k194 =>
      exact ClassifierApplies.fam194 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_194_desc] using h)
  | k195 =>
      exact ClassifierApplies.fam195 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_195_desc] using h)
  | k196 =>
      exact ClassifierApplies.fam196 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_196_desc] using h)
  | k197 =>
      exact ClassifierApplies.fam197 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_197_desc] using h)
  | k198 =>
      exact ClassifierApplies.fam198 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_198_desc] using h)
  | k199 =>
      exact ClassifierApplies.fam199 (by
        simpa [ClassifierKey.Matches, ClassifierKey.toSourceIndexStateKey,
          SourceIndexStateKey.Matches, SourceIndexStateKey.toDescriptor,
          fam_199_desc] using h)

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
    | fam125 h =>
        exact fam_125_desc.covered_of_applies h
    | fam126 h =>
        exact fam_126_desc.covered_of_applies h
    | fam127 h =>
        exact fam_127_desc.covered_of_applies h
    | fam128 h =>
        exact fam_128_desc.covered_of_applies h
    | fam129 h =>
        exact fam_129_desc.covered_of_applies h
    | fam130 h =>
        exact fam_130_desc.covered_of_applies h
    | fam131 h =>
        exact fam_131_desc.covered_of_applies h
    | fam132 h =>
        exact fam_132_desc.covered_of_applies h
    | fam133 h =>
        exact fam_133_desc.covered_of_applies h
    | fam134 h =>
        exact fam_134_desc.covered_of_applies h
    | fam135 h =>
        exact fam_135_desc.covered_of_applies h
    | fam136 h =>
        exact fam_136_desc.covered_of_applies h
    | fam137 h =>
        exact fam_137_desc.covered_of_applies h
    | fam138 h =>
        exact fam_138_desc.covered_of_applies h
    | fam139 h =>
        exact fam_139_desc.covered_of_applies h
    | fam140 h =>
        exact fam_140_desc.covered_of_applies h
    | fam141 h =>
        exact fam_141_desc.covered_of_applies h
    | fam142 h =>
        exact fam_142_desc.covered_of_applies h
    | fam143 h =>
        exact fam_143_desc.covered_of_applies h
    | fam144 h =>
        exact fam_144_desc.covered_of_applies h
    | fam145 h =>
        exact fam_145_desc.covered_of_applies h
    | fam146 h =>
        exact fam_146_desc.covered_of_applies h
    | fam147 h =>
        exact fam_147_desc.covered_of_applies h
    | fam148 h =>
        exact fam_148_desc.covered_of_applies h
    | fam149 h =>
        exact fam_149_desc.covered_of_applies h
    | fam150 h =>
        exact fam_150_desc.covered_of_applies h
    | fam151 h =>
        exact fam_151_desc.covered_of_applies h
    | fam152 h =>
        exact fam_152_desc.covered_of_applies h
    | fam153 h =>
        exact fam_153_desc.covered_of_applies h
    | fam154 h =>
        exact fam_154_desc.covered_of_applies h
    | fam155 h =>
        exact fam_155_desc.covered_of_applies h
    | fam156 h =>
        exact fam_156_desc.covered_of_applies h
    | fam157 h =>
        exact fam_157_desc.covered_of_applies h
    | fam158 h =>
        exact fam_158_desc.covered_of_applies h
    | fam159 h =>
        exact fam_159_desc.covered_of_applies h
    | fam160 h =>
        exact fam_160_desc.covered_of_applies h
    | fam161 h =>
        exact fam_161_desc.covered_of_applies h
    | fam162 h =>
        exact fam_162_desc.covered_of_applies h
    | fam163 h =>
        exact fam_163_desc.covered_of_applies h
    | fam164 h =>
        exact fam_164_desc.covered_of_applies h
    | fam165 h =>
        exact fam_165_desc.covered_of_applies h
    | fam166 h =>
        exact fam_166_desc.covered_of_applies h
    | fam167 h =>
        exact fam_167_desc.covered_of_applies h
    | fam168 h =>
        exact fam_168_desc.covered_of_applies h
    | fam169 h =>
        exact fam_169_desc.covered_of_applies h
    | fam170 h =>
        exact fam_170_desc.covered_of_applies h
    | fam171 h =>
        exact fam_171_desc.covered_of_applies h
    | fam172 h =>
        exact fam_172_desc.covered_of_applies h
    | fam173 h =>
        exact fam_173_desc.covered_of_applies h
    | fam174 h =>
        exact fam_174_desc.covered_of_applies h
    | fam175 h =>
        exact fam_175_desc.covered_of_applies h
    | fam176 h =>
        exact fam_176_desc.covered_of_applies h
    | fam177 h =>
        exact fam_177_desc.covered_of_applies h
    | fam178 h =>
        exact fam_178_desc.covered_of_applies h
    | fam179 h =>
        exact fam_179_desc.covered_of_applies h
    | fam180 h =>
        exact fam_180_desc.covered_of_applies h
    | fam181 h =>
        exact fam_181_desc.covered_of_applies h
    | fam182 h =>
        exact fam_182_desc.covered_of_applies h
    | fam183 h =>
        exact fam_183_desc.covered_of_applies h
    | fam184 h =>
        exact fam_184_desc.covered_of_applies h
    | fam185 h =>
        exact fam_185_desc.covered_of_applies h
    | fam186 h =>
        exact fam_186_desc.covered_of_applies h
    | fam187 h =>
        exact fam_187_desc.covered_of_applies h
    | fam188 h =>
        exact fam_188_desc.covered_of_applies h
    | fam189 h =>
        exact fam_189_desc.covered_of_applies h
    | fam190 h =>
        exact fam_190_desc.covered_of_applies h
    | fam191 h =>
        exact fam_191_desc.covered_of_applies h
    | fam192 h =>
        exact fam_192_desc.covered_of_applies h
    | fam193 h =>
        exact fam_193_desc.covered_of_applies h
    | fam194 h =>
        exact fam_194_desc.covered_of_applies h
    | fam195 h =>
        exact fam_195_desc.covered_of_applies h
    | fam196 h =>
        exact fam_196_desc.covered_of_applies h
    | fam197 h =>
        exact fam_197_desc.covered_of_applies h
    | fam198 h =>
        exact fam_198_desc.covered_of_applies h
    | fam199 h =>
        exact fam_199_desc.covered_of_applies h

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
  by_cases h125 : fam_125_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam125 h125)
  by_cases h126 : fam_126_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam126 h126)
  by_cases h127 : fam_127_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam127 h127)
  by_cases h128 : fam_128_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam128 h128)
  by_cases h129 : fam_129_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam129 h129)
  by_cases h130 : fam_130_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam130 h130)
  by_cases h131 : fam_131_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam131 h131)
  by_cases h132 : fam_132_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam132 h132)
  by_cases h133 : fam_133_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam133 h133)
  by_cases h134 : fam_134_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam134 h134)
  by_cases h135 : fam_135_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam135 h135)
  by_cases h136 : fam_136_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam136 h136)
  by_cases h137 : fam_137_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam137 h137)
  by_cases h138 : fam_138_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam138 h138)
  by_cases h139 : fam_139_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam139 h139)
  by_cases h140 : fam_140_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam140 h140)
  by_cases h141 : fam_141_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam141 h141)
  by_cases h142 : fam_142_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam142 h142)
  by_cases h143 : fam_143_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam143 h143)
  by_cases h144 : fam_144_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam144 h144)
  by_cases h145 : fam_145_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam145 h145)
  by_cases h146 : fam_146_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam146 h146)
  by_cases h147 : fam_147_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam147 h147)
  by_cases h148 : fam_148_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam148 h148)
  by_cases h149 : fam_149_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam149 h149)
  by_cases h150 : fam_150_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam150 h150)
  by_cases h151 : fam_151_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam151 h151)
  by_cases h152 : fam_152_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam152 h152)
  by_cases h153 : fam_153_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam153 h153)
  by_cases h154 : fam_154_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam154 h154)
  by_cases h155 : fam_155_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam155 h155)
  by_cases h156 : fam_156_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam156 h156)
  by_cases h157 : fam_157_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam157 h157)
  by_cases h158 : fam_158_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam158 h158)
  by_cases h159 : fam_159_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam159 h159)
  by_cases h160 : fam_160_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam160 h160)
  by_cases h161 : fam_161_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam161 h161)
  by_cases h162 : fam_162_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam162 h162)
  by_cases h163 : fam_163_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam163 h163)
  by_cases h164 : fam_164_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam164 h164)
  by_cases h165 : fam_165_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam165 h165)
  by_cases h166 : fam_166_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam166 h166)
  by_cases h167 : fam_167_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam167 h167)
  by_cases h168 : fam_168_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam168 h168)
  by_cases h169 : fam_169_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam169 h169)
  by_cases h170 : fam_170_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam170 h170)
  by_cases h171 : fam_171_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam171 h171)
  by_cases h172 : fam_172_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam172 h172)
  by_cases h173 : fam_173_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam173 h173)
  by_cases h174 : fam_174_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam174 h174)
  by_cases h175 : fam_175_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam175 h175)
  by_cases h176 : fam_176_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam176 h176)
  by_cases h177 : fam_177_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam177 h177)
  by_cases h178 : fam_178_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam178 h178)
  by_cases h179 : fam_179_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam179 h179)
  by_cases h180 : fam_180_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam180 h180)
  by_cases h181 : fam_181_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam181 h181)
  by_cases h182 : fam_182_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam182 h182)
  by_cases h183 : fam_183_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam183 h183)
  by_cases h184 : fam_184_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam184 h184)
  by_cases h185 : fam_185_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam185 h185)
  by_cases h186 : fam_186_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam186 h186)
  by_cases h187 : fam_187_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam187 h187)
  by_cases h188 : fam_188_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam188 h188)
  by_cases h189 : fam_189_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam189 h189)
  by_cases h190 : fam_190_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam190 h190)
  by_cases h191 : fam_191_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam191 h191)
  by_cases h192 : fam_192_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam192 h192)
  by_cases h193 : fam_193_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam193 h193)
  by_cases h194 : fam_194_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam194 h194)
  by_cases h195 : fam_195_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam195 h195)
  by_cases h196 : fam_196_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam196 h196)
  by_cases h197 : fam_197_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam197 h197)
  by_cases h198 : fam_198_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam198 h198)
  by_cases h199 : fam_199_desc.Applies r mask
  · exact isTrue (ClassifierApplies.fam199 h199)
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
      | fam125 h => exact h125 h
      | fam126 h => exact h126 h
      | fam127 h => exact h127 h
      | fam128 h => exact h128 h
      | fam129 h => exact h129 h
      | fam130 h => exact h130 h
      | fam131 h => exact h131 h
      | fam132 h => exact h132 h
      | fam133 h => exact h133 h
      | fam134 h => exact h134 h
      | fam135 h => exact h135 h
      | fam136 h => exact h136 h
      | fam137 h => exact h137 h
      | fam138 h => exact h138 h
      | fam139 h => exact h139 h
      | fam140 h => exact h140 h
      | fam141 h => exact h141 h
      | fam142 h => exact h142 h
      | fam143 h => exact h143 h
      | fam144 h => exact h144 h
      | fam145 h => exact h145 h
      | fam146 h => exact h146 h
      | fam147 h => exact h147 h
      | fam148 h => exact h148 h
      | fam149 h => exact h149 h
      | fam150 h => exact h150 h
      | fam151 h => exact h151 h
      | fam152 h => exact h152 h
      | fam153 h => exact h153 h
      | fam154 h => exact h154 h
      | fam155 h => exact h155 h
      | fam156 h => exact h156 h
      | fam157 h => exact h157 h
      | fam158 h => exact h158 h
      | fam159 h => exact h159 h
      | fam160 h => exact h160 h
      | fam161 h => exact h161 h
      | fam162 h => exact h162 h
      | fam163 h => exact h163 h
      | fam164 h => exact h164 h
      | fam165 h => exact h165 h
      | fam166 h => exact h166 h
      | fam167 h => exact h167 h
      | fam168 h => exact h168 h
      | fam169 h => exact h169 h
      | fam170 h => exact h170 h
      | fam171 h => exact h171 h
      | fam172 h => exact h172 h
      | fam173 h => exact h173 h
      | fam174 h => exact h174 h
      | fam175 h => exact h175 h
      | fam176 h => exact h176 h
      | fam177 h => exact h177 h
      | fam178 h => exact h178 h
      | fam179 h => exact h179 h
      | fam180 h => exact h180 h
      | fam181 h => exact h181 h
      | fam182 h => exact h182 h
      | fam183 h => exact h183 h
      | fam184 h => exact h184 h
      | fam185 h => exact h185 h
      | fam186 h => exact h186 h
      | fam187 h => exact h187 h
      | fam188 h => exact h188 h
      | fam189 h => exact h189 h
      | fam190 h => exact h190 h
      | fam191 h => exact h191 h
      | fam192 h => exact h192 h
      | fam193 h => exact h193 h
      | fam194 h => exact h194 h
      | fam195 h => exact h195 h
      | fam196 h => exact h196 h
      | fam197 h => exact h197 h
      | fam198 h => exact h198 h
      | fam199 h => exact h199 h
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

theorem sourceIndexFactsCatalog_of_classifierKey_source_row
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : ClassifierKey,
                  SourceIndexStateSourceFacts
                    key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  have hlookup := classifierSourceIndexKeyAt_toFin key
  exact ⟨key.toFin, by simpa [hlookup] using hsource,
    by simpa [hlookup] using hrows⟩

theorem sourceIndexFactsCatalog_of_classifierKey_source_row_bool
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
    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 :=
  sourceIndexFactsCatalog_of_classifierKey_source_row
    (fun hlt hlo hhi hM hgood =>
      hcomplete hlt hlo hhi hM
        (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))

theorem classifierDescriptorCoverage_of_sourceIndexFactsCatalog
    (hcomplete :
      SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=
  SourceRowFactsGoodBridgeOnRange.to_descriptorCoverage
    (SourceRowFactsGoodCatalogOnRange.to_bridge hcomplete)

theorem classifierDescriptorCoverage_of_key_source_row
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : ClassifierKey,
                  SourceIndexStateSourceFacts
                    key.toSourceIndexStateKey rank mask /\
                    SourceIndexStateRowFacts
                      key.toSourceIndexStateKey rank mask) :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=
  classifierDescriptorCoverage_of_sourceIndexFactsCatalog
    (sourceIndexFactsCatalog_of_classifierKey_source_row hcomplete)

theorem classifierDescriptorBoolCoverage_of_key_source_row_bool
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
    SourceIndexStateDescriptorBoolCoverageOnRange 0 5000 := by
  apply SourceIndexStateDescriptorBoolCoverageOnRange.of_sourceRowFacts
  intro rank mask hlt hlo hhi hM hgoodBool
  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩
  exact ⟨key.toSourceIndexStateKey, hsource, hrows⟩

theorem classifierSourceRowFactsBridge_of_key_source_row_bool
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
    SourceRowFactsGoodBridgeOnRange 0 5000 :=
  SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge
    (classifierDescriptorBoolCoverage_of_key_source_row_bool hcomplete)

theorem classifierAllGoodCoverage_of_key_source_row_bool
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
  SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage
    (classifierDescriptorBoolCoverage_of_key_source_row_bool hcomplete)

theorem sourceIndexPredicateCatalog_of_classifierKey_source_row
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  rcases hcomplete hlt hlo hhi hM hgood with ⟨key, hsource, hrows⟩
  have hlookup := classifierSourceIndexKeyAt_toFin key
  exact ⟨key.toFin, by simpa [hlookup] using hsource,
    by simpa [hlookup] using hrows⟩

theorem sourceIndexPredicateCatalog_of_classifierKey_source_row_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 :=
  sourceIndexPredicateCatalog_of_classifierKey_source_row
    (fun hlt hlo hhi hM hgood =>
      hcomplete hlt hlo hhi hM
        (goodDirectionAtRankBool_eq_true_of_goodDirection hgood))

theorem classifierDescriptorCoverage_of_sourceIndexPredicateCatalog
    (hcomplete :
      SourceRowPredicateGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000) :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=
  SourceRowPredicateGoodBridgeOnRange.to_descriptorCoverage
    (SourceRowPredicateGoodCatalogOnRange.to_bridge hcomplete)

theorem classifierDescriptorCoverage_of_key_source_predicate
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    SourceIndexStateDescriptorGoodCoverageOnRange 0 5000 :=
  classifierDescriptorCoverage_of_sourceIndexPredicateCatalog
    (sourceIndexPredicateCatalog_of_classifierKey_source_row hcomplete)

theorem classifierDescriptorBoolCoverage_of_key_source_predicate_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    SourceIndexStateDescriptorBoolCoverageOnRange 0 5000 := by
  apply SourceIndexStateDescriptorBoolCoverageOnRange.of_sourcePredicateRows
  intro rank mask hlt hlo hhi hM hgoodBool
  rcases hcomplete hlt hlo hhi hM hgoodBool with ⟨key, hsource, hrows⟩
  exact ⟨key.toSourceIndexStateKey, hsource, hrows⟩

theorem classifierSourceRowFactsBridge_of_key_source_predicate_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    SourceRowFactsGoodBridgeOnRange 0 5000 :=
  SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge
    (classifierDescriptorBoolCoverage_of_key_source_predicate_bool hcomplete)

theorem classifierAllGoodCoverage_of_key_source_predicate_bool
    (hcomplete :
      forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
        0 <= rank ->
          rank < 5000 ->
            totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
                (matId : Mat3 Rat) ->
              goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true ->
                exists key : ClassifierKey,
                  SourceIndexStateSourcePredicate
                    key.toSourceIndexStateKey.firstIndex
                    key.toSourceIndexStateKey.secondIndex
                    key.toSourceIndexStateKey.support rank mask /\
                    key.toSourceIndexStateKey.template.Rows
                      key.toSourceIndexStateKey.support rank mask) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourceIndexStateDescriptorBoolCoverageOnRange.to_allGoodCoverage
    (classifierDescriptorBoolCoverage_of_key_source_predicate_bool hcomplete)

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

theorem fam_125_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_125_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam125 h)

theorem fam_126_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_126_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam126 h)

theorem fam_127_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_127_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam127 h)

theorem fam_128_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_128_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam128 h)

theorem fam_129_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_129_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam129 h)

theorem fam_130_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_130_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam130 h)

theorem fam_131_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_131_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam131 h)

theorem fam_132_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_132_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam132 h)

theorem fam_133_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_133_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam133 h)

theorem fam_134_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_134_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam134 h)

theorem fam_135_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_135_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam135 h)

theorem fam_136_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_136_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam136 h)

theorem fam_137_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_137_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam137 h)

theorem fam_138_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_138_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam138 h)

theorem fam_139_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_139_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam139 h)

theorem fam_140_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_140_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam140 h)

theorem fam_141_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_141_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam141 h)

theorem fam_142_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_142_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam142 h)

theorem fam_143_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_143_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam143 h)

theorem fam_144_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_144_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam144 h)

theorem fam_145_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_145_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam145 h)

theorem fam_146_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_146_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam146 h)

theorem fam_147_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_147_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam147 h)

theorem fam_148_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_148_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam148 h)

theorem fam_149_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_149_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam149 h)

theorem fam_150_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_150_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam150 h)

theorem fam_151_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_151_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam151 h)

theorem fam_152_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_152_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam152 h)

theorem fam_153_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_153_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam153 h)

theorem fam_154_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_154_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam154 h)

theorem fam_155_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_155_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam155 h)

theorem fam_156_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_156_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam156 h)

theorem fam_157_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_157_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam157 h)

theorem fam_158_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_158_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam158 h)

theorem fam_159_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_159_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam159 h)

theorem fam_160_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_160_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam160 h)

theorem fam_161_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_161_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam161 h)

theorem fam_162_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_162_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam162 h)

theorem fam_163_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_163_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam163 h)

theorem fam_164_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_164_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam164 h)

theorem fam_165_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_165_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam165 h)

theorem fam_166_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_166_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam166 h)

theorem fam_167_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_167_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam167 h)

theorem fam_168_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_168_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam168 h)

theorem fam_169_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_169_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam169 h)

theorem fam_170_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_170_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam170 h)

theorem fam_171_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_171_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam171 h)

theorem fam_172_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_172_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam172 h)

theorem fam_173_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_173_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam173 h)

theorem fam_174_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_174_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam174 h)

theorem fam_175_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_175_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam175 h)

theorem fam_176_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_176_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam176 h)

theorem fam_177_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_177_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam177 h)

theorem fam_178_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_178_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam178 h)

theorem fam_179_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_179_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam179 h)

theorem fam_180_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_180_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam180 h)

theorem fam_181_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_181_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam181 h)

theorem fam_182_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_182_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam182 h)

theorem fam_183_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_183_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam183 h)

theorem fam_184_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_184_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam184 h)

theorem fam_185_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_185_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam185 h)

theorem fam_186_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_186_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam186 h)

theorem fam_187_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_187_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam187 h)

theorem fam_188_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_188_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam188 h)

theorem fam_189_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_189_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam189 h)

theorem fam_190_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_190_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam190 h)

theorem fam_191_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_191_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam191 h)

theorem fam_192_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_192_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam192 h)

theorem fam_193_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_193_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam193 h)

theorem fam_194_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_194_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam194 h)

theorem fam_195_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_195_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam195 h)

theorem fam_196_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_196_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam196 h)

theorem fam_197_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_197_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam197 h)

theorem fam_198_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_198_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam198 h)

theorem fam_199_goodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_199_desc.Applies r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  classifierKillsOn r hlt mask (ClassifierApplies.fam199 h)

theorem sourceIndexStateClassifierSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierMultiWindowSmoke
