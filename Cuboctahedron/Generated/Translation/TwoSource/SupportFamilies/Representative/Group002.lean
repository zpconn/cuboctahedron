import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group002

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `opp_1m_var_second|source=f0ba0180061f59e53faeed2e79d4c15930c29140733cd9e71bf34fae67f35907`.
It covered 31 observed GoodDirection survivors in the bounded scan. -/
private def fam_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩

private abbrev fam_032_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarSecond fam_032_support r mask

private theorem fam_032_checkedOn :
    SupportFamilyCheckedOn fam_032_support fam_032_contains := by
  simpa [fam_032_contains] using oppOneMinusVarSecond_checkedOn fam_032_support

private theorem fam_032_killsOn :
    SupportFamilyKillsOn fam_032_support fam_032_contains :=
  SupportFamilyCheckedOn.kills fam_032_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=34d9a809c0dda8943833f88b4ee7dcef750d7b9a06732dec40addb0872e94209`.
It covered 29 observed GoodDirection survivors in the bounded scan. -/
private def fam_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_033_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_033_support r mask

private theorem fam_033_checkedOn :
    SupportFamilyCheckedOn fam_033_support fam_033_contains := by
  simpa [fam_033_contains] using eqEqPosVarFirst_checkedOn fam_033_support

private theorem fam_033_killsOn :
    SupportFamilyKillsOn fam_033_support fam_033_contains :=
  SupportFamilyCheckedOn.kills fam_033_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=6abd77537cc7aed0d24f35e5ccc711437b08efb58ab8400e3fef89bc4b0762bc`.
It covered 28 observed GoodDirection survivors in the bounded scan. -/
private def fam_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_034_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_034_support r mask

private theorem fam_034_checkedOn :
    SupportFamilyCheckedOn fam_034_support fam_034_contains := by
  simpa [fam_034_contains] using eqEqPosVarFirst_checkedOn fam_034_support

private theorem fam_034_killsOn :
    SupportFamilyKillsOn fam_034_support fam_034_contains :=
  SupportFamilyCheckedOn.kills fam_034_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=081320ea1560bc661bc776897d0f19a4390e809866f79fca68108a2a8eda93e2`.
It covered 27 observed GoodDirection survivors in the bounded scan. -/
private def fam_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_035_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_035_support r mask

private theorem fam_035_checkedOn :
    SupportFamilyCheckedOn fam_035_support fam_035_contains := by
  simpa [fam_035_contains] using eqEqPosVarFirst_checkedOn fam_035_support

private theorem fam_035_killsOn :
    SupportFamilyKillsOn fam_035_support fam_035_contains :=
  SupportFamilyCheckedOn.kills fam_035_checkedOn

/-- Representative family `opp_1m_var_first|source=7ce432e4c4c8ae6c5b059a44929baf1661f7ce3368772941e4f4e2b5f8627de0`.
It covered 26 observed GoodDirection survivors in the bounded scan. -/
private def fam_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_036_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_036_support r mask

private theorem fam_036_checkedOn :
    SupportFamilyCheckedOn fam_036_support fam_036_contains := by
  simpa [fam_036_contains] using oppOneMinusVarFirst_checkedOn fam_036_support

private theorem fam_036_killsOn :
    SupportFamilyKillsOn fam_036_support fam_036_contains :=
  SupportFamilyCheckedOn.kills fam_036_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=a6845b082c2e979ead3480042e51bf028e6914e64ef8c3f7a3d018e6d05d271c`.
It covered 25 observed GoodDirection survivors in the bounded scan. -/
private def fam_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_037_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_037_support r mask

private theorem fam_037_checkedOn :
    SupportFamilyCheckedOn fam_037_support fam_037_contains := by
  simpa [fam_037_contains] using eqEqPosVarFirst_checkedOn fam_037_support

private theorem fam_037_killsOn :
    SupportFamilyKillsOn fam_037_support fam_037_contains :=
  SupportFamilyCheckedOn.kills fam_037_checkedOn

/-- Representative family `opp_m1_var_second|source=ca73ccf925acb77f6dee5977822daecbe5e3fccf2166bc5e88108b06b1d8e669`.
It covered 25 observed GoodDirection survivors in the bounded scan. -/
private def fam_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩

private abbrev fam_038_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarSecond fam_038_support r mask

private theorem fam_038_checkedOn :
    SupportFamilyCheckedOn fam_038_support fam_038_contains := by
  simpa [fam_038_contains] using oppMinusOneVarSecond_checkedOn fam_038_support

private theorem fam_038_killsOn :
    SupportFamilyKillsOn fam_038_support fam_038_contains :=
  SupportFamilyCheckedOn.kills fam_038_checkedOn

/-- Representative family `axis_b_only|source=4e7bbe2b2a3fe8a7bebe4a810f32b04fb4c1965cd675cc919449c05dc64bd067`.
It covered 24 observed GoodDirection survivors in the bounded scan. -/
private def fam_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩

private abbrev fam_039_contains (r : Nat) (mask : SignMask) : Prop :=
  AxisBOnly fam_039_support r mask

private theorem fam_039_checkedOn :
    SupportFamilyCheckedOn fam_039_support fam_039_contains := by
  simpa [fam_039_contains] using axisBOnly_checkedOn fam_039_support

private theorem fam_039_killsOn :
    SupportFamilyKillsOn fam_039_support fam_039_contains :=
  SupportFamilyCheckedOn.kills fam_039_checkedOn

/-- Representative family `opp_1m_var_second|source=c70492ed8faca293187643380dc66b322798ec21b32c913857d1aa10559c5aec`.
It covered 24 observed GoodDirection survivors in the bounded scan. -/
private def fam_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩

private abbrev fam_040_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarSecond fam_040_support r mask

private theorem fam_040_checkedOn :
    SupportFamilyCheckedOn fam_040_support fam_040_contains := by
  simpa [fam_040_contains] using oppOneMinusVarSecond_checkedOn fam_040_support

private theorem fam_040_killsOn :
    SupportFamilyKillsOn fam_040_support fam_040_contains :=
  SupportFamilyCheckedOn.kills fam_040_checkedOn

/-- Representative family `opp_m1_var_first|source=a87df3761588149ec70ae72e9d80affcb1c73828616207d10a9ef2692fb1ff92`.
It covered 23 observed GoodDirection survivors in the bounded scan. -/
private def fam_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_041_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_041_support r mask

private theorem fam_041_checkedOn :
    SupportFamilyCheckedOn fam_041_support fam_041_contains := by
  simpa [fam_041_contains] using oppMinusOneVarFirst_checkedOn fam_041_support

private theorem fam_041_killsOn :
    SupportFamilyKillsOn fam_041_support fam_041_contains :=
  SupportFamilyCheckedOn.kills fam_041_checkedOn

/-- Representative family `opp_m1_var_second|source=b818a6007c627d6ece7c98642cf613f115e43cd9d7ab57e6dbfa01c2deeef121`.
It covered 23 observed GoodDirection survivors in the bounded scan. -/
private def fam_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩

private abbrev fam_042_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarSecond fam_042_support r mask

private theorem fam_042_checkedOn :
    SupportFamilyCheckedOn fam_042_support fam_042_contains := by
  simpa [fam_042_contains] using oppMinusOneVarSecond_checkedOn fam_042_support

private theorem fam_042_killsOn :
    SupportFamilyKillsOn fam_042_support fam_042_contains :=
  SupportFamilyCheckedOn.kills fam_042_checkedOn

/-- Representative family `opp_1m_var_first|source=9b67d5de1b10f76dd82d4d212296c5cc298220220954c1c00f40b7103f1a491f`.
It covered 22 observed GoodDirection survivors in the bounded scan. -/
private def fam_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_043_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_043_support r mask

private theorem fam_043_checkedOn :
    SupportFamilyCheckedOn fam_043_support fam_043_contains := by
  simpa [fam_043_contains] using oppOneMinusVarFirst_checkedOn fam_043_support

private theorem fam_043_killsOn :
    SupportFamilyKillsOn fam_043_support fam_043_contains :=
  SupportFamilyCheckedOn.kills fam_043_checkedOn

/-- Representative family `opp_1m_var_first|source=7e9d11d50581a2e4bcb3c9dfbeb3f41c7bbcc9772f0d9b742a85f6db7e3ad4c5`.
It covered 21 observed GoodDirection survivors in the bounded scan. -/
private def fam_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_044_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_044_support r mask

private theorem fam_044_checkedOn :
    SupportFamilyCheckedOn fam_044_support fam_044_contains := by
  simpa [fam_044_contains] using oppOneMinusVarFirst_checkedOn fam_044_support

private theorem fam_044_killsOn :
    SupportFamilyKillsOn fam_044_support fam_044_contains :=
  SupportFamilyCheckedOn.kills fam_044_checkedOn

/-- Representative family `opp_1m_var_first|source=bb5d97033cee0e90009c237d0fb92dcdcbd022701bcbe89dbc3eb85619bfd21c`.
It covered 21 observed GoodDirection survivors in the bounded scan. -/
private def fam_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_045_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_045_support r mask

private theorem fam_045_checkedOn :
    SupportFamilyCheckedOn fam_045_support fam_045_contains := by
  simpa [fam_045_contains] using oppOneMinusVarFirst_checkedOn fam_045_support

private theorem fam_045_killsOn :
    SupportFamilyKillsOn fam_045_support fam_045_contains :=
  SupportFamilyCheckedOn.kills fam_045_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=33ebfb8a90a44e7e558621f80550567f9d1f6c00873590b8826ed0544b435d22`.
It covered 20 observed GoodDirection survivors in the bounded scan. -/
private def fam_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_046_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_046_support r mask

private theorem fam_046_checkedOn :
    SupportFamilyCheckedOn fam_046_support fam_046_contains := by
  simpa [fam_046_contains] using eqEqPosVarFirst_checkedOn fam_046_support

private theorem fam_046_killsOn :
    SupportFamilyKillsOn fam_046_support fam_046_contains :=
  SupportFamilyCheckedOn.kills fam_046_checkedOn

/-- Representative family `opp_1m_var_first|source=160ed64f70e22c88b3b23f65f9738b27610b5175ae0a67db20b386df75426624`.
It covered 19 observed GoodDirection survivors in the bounded scan. -/
private def fam_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_047_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_047_support r mask

private theorem fam_047_checkedOn :
    SupportFamilyCheckedOn fam_047_support fam_047_contains := by
  simpa [fam_047_contains] using oppOneMinusVarFirst_checkedOn fam_047_support

private theorem fam_047_killsOn :
    SupportFamilyKillsOn fam_047_support fam_047_contains :=
  SupportFamilyCheckedOn.kills fam_047_checkedOn

inductive Group002Covered : Nat -> SignMask -> Prop
  | fam_032 {r : Nat} {mask : SignMask} (h : fam_032_contains r mask) : Group002Covered r mask
  | fam_033 {r : Nat} {mask : SignMask} (h : fam_033_contains r mask) : Group002Covered r mask
  | fam_034 {r : Nat} {mask : SignMask} (h : fam_034_contains r mask) : Group002Covered r mask
  | fam_035 {r : Nat} {mask : SignMask} (h : fam_035_contains r mask) : Group002Covered r mask
  | fam_036 {r : Nat} {mask : SignMask} (h : fam_036_contains r mask) : Group002Covered r mask
  | fam_037 {r : Nat} {mask : SignMask} (h : fam_037_contains r mask) : Group002Covered r mask
  | fam_038 {r : Nat} {mask : SignMask} (h : fam_038_contains r mask) : Group002Covered r mask
  | fam_039 {r : Nat} {mask : SignMask} (h : fam_039_contains r mask) : Group002Covered r mask
  | fam_040 {r : Nat} {mask : SignMask} (h : fam_040_contains r mask) : Group002Covered r mask
  | fam_041 {r : Nat} {mask : SignMask} (h : fam_041_contains r mask) : Group002Covered r mask
  | fam_042 {r : Nat} {mask : SignMask} (h : fam_042_contains r mask) : Group002Covered r mask
  | fam_043 {r : Nat} {mask : SignMask} (h : fam_043_contains r mask) : Group002Covered r mask
  | fam_044 {r : Nat} {mask : SignMask} (h : fam_044_contains r mask) : Group002Covered r mask
  | fam_045 {r : Nat} {mask : SignMask} (h : fam_045_contains r mask) : Group002Covered r mask
  | fam_046 {r : Nat} {mask : SignMask} (h : fam_046_contains r mask) : Group002Covered r mask
  | fam_047 {r : Nat} {mask : SignMask} (h : fam_047_contains r mask) : Group002Covered r mask

theorem Group002GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group002Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_032 h =>
      exact fam_032_killsOn r hlt mask h
  | fam_033 h =>
      exact fam_033_killsOn r hlt mask h
  | fam_034 h =>
      exact fam_034_killsOn r hlt mask h
  | fam_035 h =>
      exact fam_035_killsOn r hlt mask h
  | fam_036 h =>
      exact fam_036_killsOn r hlt mask h
  | fam_037 h =>
      exact fam_037_killsOn r hlt mask h
  | fam_038 h =>
      exact fam_038_killsOn r hlt mask h
  | fam_039 h =>
      exact fam_039_killsOn r hlt mask h
  | fam_040 h =>
      exact fam_040_killsOn r hlt mask h
  | fam_041 h =>
      exact fam_041_killsOn r hlt mask h
  | fam_042 h =>
      exact fam_042_killsOn r hlt mask h
  | fam_043 h =>
      exact fam_043_killsOn r hlt mask h
  | fam_044 h =>
      exact fam_044_killsOn r hlt mask h
  | fam_045 h =>
      exact fam_045_killsOn r hlt mask h
  | fam_046 h =>
      exact fam_046_killsOn r hlt mask h
  | fam_047 h =>
      exact fam_047_killsOn r hlt mask h

theorem Group002_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group002
