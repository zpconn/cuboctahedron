import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group000

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `eq_eq_pos_var_first|source=5adcd045a97319ca2c507f2a2729e7e4b44586b0af09727c0f6dd12e5bb3580b`.
It covered 1260 observed GoodDirection survivors in the bounded scan. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_000_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_000_support r mask

private theorem fam_000_checkedOn :
    SupportFamilyCheckedOn fam_000_support fam_000_contains := by
  simpa [fam_000_contains] using eqEqPosVarFirst_checkedOn fam_000_support

private theorem fam_000_killsOn :
    SupportFamilyKillsOn fam_000_support fam_000_contains :=
  SupportFamilyCheckedOn.kills fam_000_checkedOn

/-- Representative family `opp_1m_var_first|source=5803f35d677ae04166a321d8243e2278ba6a40142643333ae17cbcb910b4f201`.
It covered 555 observed GoodDirection survivors in the bounded scan. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_001_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_001_support r mask

private theorem fam_001_checkedOn :
    SupportFamilyCheckedOn fam_001_support fam_001_contains := by
  simpa [fam_001_contains] using oppOneMinusVarFirst_checkedOn fam_001_support

private theorem fam_001_killsOn :
    SupportFamilyKillsOn fam_001_support fam_001_contains :=
  SupportFamilyCheckedOn.kills fam_001_checkedOn

/-- Representative family `opp_m1_var_first|source=7689ca8f4559480b5882866950c23005b8844177f2c8efd7fdc4ab7fef075198`.
It covered 271 observed GoodDirection survivors in the bounded scan. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_002_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_002_support r mask

private theorem fam_002_checkedOn :
    SupportFamilyCheckedOn fam_002_support fam_002_contains := by
  simpa [fam_002_contains] using oppMinusOneVarFirst_checkedOn fam_002_support

private theorem fam_002_killsOn :
    SupportFamilyKillsOn fam_002_support fam_002_contains :=
  SupportFamilyCheckedOn.kills fam_002_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=d4bee78b63fa6bcebd58ce23dce690fc537b368d0b8afd26b4c969ef509d6bb4`.
It covered 178 observed GoodDirection survivors in the bounded scan. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_003_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_003_support r mask

private theorem fam_003_checkedOn :
    SupportFamilyCheckedOn fam_003_support fam_003_contains := by
  simpa [fam_003_contains] using eqEqPosVarFirst_checkedOn fam_003_support

private theorem fam_003_killsOn :
    SupportFamilyKillsOn fam_003_support fam_003_contains :=
  SupportFamilyCheckedOn.kills fam_003_checkedOn

/-- Representative family `opp_1m_var_first|source=6a1169c86301f17f88c4ba207f016625742fcfc52d759287e0387c29177eb972`.
It covered 126 observed GoodDirection survivors in the bounded scan. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_004_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_004_support r mask

private theorem fam_004_checkedOn :
    SupportFamilyCheckedOn fam_004_support fam_004_contains := by
  simpa [fam_004_contains] using oppOneMinusVarFirst_checkedOn fam_004_support

private theorem fam_004_killsOn :
    SupportFamilyKillsOn fam_004_support fam_004_contains :=
  SupportFamilyCheckedOn.kills fam_004_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=e077434d25cd2b8256b2c045b2f2c39e2e407562a418eb83b7432401c75cb23e`.
It covered 105 observed GoodDirection survivors in the bounded scan. -/
private def fam_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_005_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_005_support r mask

private theorem fam_005_checkedOn :
    SupportFamilyCheckedOn fam_005_support fam_005_contains := by
  simpa [fam_005_contains] using eqEqPosVarFirst_checkedOn fam_005_support

private theorem fam_005_killsOn :
    SupportFamilyKillsOn fam_005_support fam_005_contains :=
  SupportFamilyCheckedOn.kills fam_005_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=ca2b14f915ca83a1a12d8dffbbe80a668272f570172001789f97a34e7649e451`.
It covered 103 observed GoodDirection survivors in the bounded scan. -/
private def fam_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩

private abbrev fam_006_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_006_support r mask

private theorem fam_006_checkedOn :
    SupportFamilyCheckedOn fam_006_support fam_006_contains := by
  simpa [fam_006_contains] using eqEqPosVarSecond_checkedOn fam_006_support

private theorem fam_006_killsOn :
    SupportFamilyKillsOn fam_006_support fam_006_contains :=
  SupportFamilyCheckedOn.kills fam_006_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=513f51128e8b6d356d5f0059d792b6ee98b4d6a8f8e6deb429fb6b769a3bafea`.
It covered 93 observed GoodDirection survivors in the bounded scan. -/
private def fam_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩

private abbrev fam_007_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_007_support r mask

private theorem fam_007_checkedOn :
    SupportFamilyCheckedOn fam_007_support fam_007_contains := by
  simpa [fam_007_contains] using eqEqPosVarSecond_checkedOn fam_007_support

private theorem fam_007_killsOn :
    SupportFamilyKillsOn fam_007_support fam_007_contains :=
  SupportFamilyCheckedOn.kills fam_007_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=5c64d4cb48f5c7b902456fd0d508ac726746f2d6514ca46677c69b3c6a9546a5`.
It covered 85 observed GoodDirection survivors in the bounded scan. -/
private def fam_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩

private abbrev fam_008_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_008_support r mask

private theorem fam_008_checkedOn :
    SupportFamilyCheckedOn fam_008_support fam_008_contains := by
  simpa [fam_008_contains] using eqEqPosVarSecond_checkedOn fam_008_support

private theorem fam_008_killsOn :
    SupportFamilyKillsOn fam_008_support fam_008_contains :=
  SupportFamilyCheckedOn.kills fam_008_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=d611693e904457a75b4b118a7390fd88fd0ef30213e479ab00229c7656f94ead`.
It covered 85 observed GoodDirection survivors in the bounded scan. -/
private def fam_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩

private abbrev fam_009_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_009_support r mask

private theorem fam_009_checkedOn :
    SupportFamilyCheckedOn fam_009_support fam_009_contains := by
  simpa [fam_009_contains] using eqEqPosVarSecond_checkedOn fam_009_support

private theorem fam_009_killsOn :
    SupportFamilyKillsOn fam_009_support fam_009_contains :=
  SupportFamilyCheckedOn.kills fam_009_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=be545f38cd79ff84fc12e32e2aad4d6ab524ec73af55f6643c76c1b22af7bb92`.
It covered 79 observed GoodDirection survivors in the bounded scan. -/
private def fam_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_010_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_010_support r mask

private theorem fam_010_checkedOn :
    SupportFamilyCheckedOn fam_010_support fam_010_contains := by
  simpa [fam_010_contains] using eqEqPosVarFirst_checkedOn fam_010_support

private theorem fam_010_killsOn :
    SupportFamilyKillsOn fam_010_support fam_010_contains :=
  SupportFamilyCheckedOn.kills fam_010_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=351b04128f3f1901e5ffdc54430fe02cdaf1bcc1903ee1fbc5c5707bb7bc9b00`.
It covered 76 observed GoodDirection survivors in the bounded scan. -/
private def fam_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩

private abbrev fam_011_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_011_support r mask

private theorem fam_011_checkedOn :
    SupportFamilyCheckedOn fam_011_support fam_011_contains := by
  simpa [fam_011_contains] using eqEqPosVarSecond_checkedOn fam_011_support

private theorem fam_011_killsOn :
    SupportFamilyKillsOn fam_011_support fam_011_contains :=
  SupportFamilyCheckedOn.kills fam_011_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=55f26045ff81f56765c35562394306053ec02060435e216f54f928a6f6cda39b`.
It covered 70 observed GoodDirection survivors in the bounded scan. -/
private def fam_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_012_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_012_support r mask

private theorem fam_012_checkedOn :
    SupportFamilyCheckedOn fam_012_support fam_012_contains := by
  simpa [fam_012_contains] using eqEqNegVarFirst_checkedOn fam_012_support

private theorem fam_012_killsOn :
    SupportFamilyKillsOn fam_012_support fam_012_contains :=
  SupportFamilyCheckedOn.kills fam_012_checkedOn

/-- Representative family `eq_eq_pos_var_second|source=b7efa03a1d5cfa8e557fd9bad2c2784fe7e03cb5e7e3edda6993009238812716`.
It covered 67 observed GoodDirection survivors in the bounded scan. -/
private def fam_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩

private abbrev fam_013_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarSecond fam_013_support r mask

private theorem fam_013_checkedOn :
    SupportFamilyCheckedOn fam_013_support fam_013_contains := by
  simpa [fam_013_contains] using eqEqPosVarSecond_checkedOn fam_013_support

private theorem fam_013_killsOn :
    SupportFamilyKillsOn fam_013_support fam_013_contains :=
  SupportFamilyCheckedOn.kills fam_013_checkedOn

/-- Representative family `opp_1m_var_second|source=9b167f29cbdda7204b0b18f50069946c17d6178ac44bc418b261ef92694693b1`.
It covered 67 observed GoodDirection survivors in the bounded scan. -/
private def fam_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩

private abbrev fam_014_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarSecond fam_014_support r mask

private theorem fam_014_checkedOn :
    SupportFamilyCheckedOn fam_014_support fam_014_contains := by
  simpa [fam_014_contains] using oppOneMinusVarSecond_checkedOn fam_014_support

private theorem fam_014_killsOn :
    SupportFamilyKillsOn fam_014_support fam_014_contains :=
  SupportFamilyCheckedOn.kills fam_014_checkedOn

/-- Representative family `opp_1m_var_first|source=e077001d13bb9a1adcd799b5036d214536d800012dab38e348c995f8a8dbbf72`.
It covered 63 observed GoodDirection survivors in the bounded scan. -/
private def fam_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_015_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_015_support r mask

private theorem fam_015_checkedOn :
    SupportFamilyCheckedOn fam_015_support fam_015_contains := by
  simpa [fam_015_contains] using oppOneMinusVarFirst_checkedOn fam_015_support

private theorem fam_015_killsOn :
    SupportFamilyKillsOn fam_015_support fam_015_contains :=
  SupportFamilyCheckedOn.kills fam_015_checkedOn

inductive Group000Covered : Nat -> SignMask -> Prop
  | fam_000 {r : Nat} {mask : SignMask} (h : fam_000_contains r mask) : Group000Covered r mask
  | fam_001 {r : Nat} {mask : SignMask} (h : fam_001_contains r mask) : Group000Covered r mask
  | fam_002 {r : Nat} {mask : SignMask} (h : fam_002_contains r mask) : Group000Covered r mask
  | fam_003 {r : Nat} {mask : SignMask} (h : fam_003_contains r mask) : Group000Covered r mask
  | fam_004 {r : Nat} {mask : SignMask} (h : fam_004_contains r mask) : Group000Covered r mask
  | fam_005 {r : Nat} {mask : SignMask} (h : fam_005_contains r mask) : Group000Covered r mask
  | fam_006 {r : Nat} {mask : SignMask} (h : fam_006_contains r mask) : Group000Covered r mask
  | fam_007 {r : Nat} {mask : SignMask} (h : fam_007_contains r mask) : Group000Covered r mask
  | fam_008 {r : Nat} {mask : SignMask} (h : fam_008_contains r mask) : Group000Covered r mask
  | fam_009 {r : Nat} {mask : SignMask} (h : fam_009_contains r mask) : Group000Covered r mask
  | fam_010 {r : Nat} {mask : SignMask} (h : fam_010_contains r mask) : Group000Covered r mask
  | fam_011 {r : Nat} {mask : SignMask} (h : fam_011_contains r mask) : Group000Covered r mask
  | fam_012 {r : Nat} {mask : SignMask} (h : fam_012_contains r mask) : Group000Covered r mask
  | fam_013 {r : Nat} {mask : SignMask} (h : fam_013_contains r mask) : Group000Covered r mask
  | fam_014 {r : Nat} {mask : SignMask} (h : fam_014_contains r mask) : Group000Covered r mask
  | fam_015 {r : Nat} {mask : SignMask} (h : fam_015_contains r mask) : Group000Covered r mask

theorem Group000GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group000Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_000 h =>
      exact fam_000_killsOn r hlt mask h
  | fam_001 h =>
      exact fam_001_killsOn r hlt mask h
  | fam_002 h =>
      exact fam_002_killsOn r hlt mask h
  | fam_003 h =>
      exact fam_003_killsOn r hlt mask h
  | fam_004 h =>
      exact fam_004_killsOn r hlt mask h
  | fam_005 h =>
      exact fam_005_killsOn r hlt mask h
  | fam_006 h =>
      exact fam_006_killsOn r hlt mask h
  | fam_007 h =>
      exact fam_007_killsOn r hlt mask h
  | fam_008 h =>
      exact fam_008_killsOn r hlt mask h
  | fam_009 h =>
      exact fam_009_killsOn r hlt mask h
  | fam_010 h =>
      exact fam_010_killsOn r hlt mask h
  | fam_011 h =>
      exact fam_011_killsOn r hlt mask h
  | fam_012 h =>
      exact fam_012_killsOn r hlt mask h
  | fam_013 h =>
      exact fam_013_killsOn r hlt mask h
  | fam_014 h =>
      exact fam_014_killsOn r hlt mask h
  | fam_015 h =>
      exact fam_015_killsOn r hlt mask h

theorem Group000_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group000
