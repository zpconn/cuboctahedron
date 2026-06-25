import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group003

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `opp_1m_var_first|source=8c0ff95aa5c587794c889a9d49335dc9bcf6a4ba5f2e5633bcd63b5d4d4d9625`.
It covered 19 observed GoodDirection survivors in the bounded scan. -/
private def fam_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_048_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_048_support r mask

private theorem fam_048_checkedOn :
    SupportFamilyCheckedOn fam_048_support fam_048_contains := by
  simpa [fam_048_contains] using oppOneMinusVarFirst_checkedOn fam_048_support

private theorem fam_048_killsOn :
    SupportFamilyKillsOn fam_048_support fam_048_contains :=
  SupportFamilyCheckedOn.kills fam_048_checkedOn

/-- Representative family `opp_1m_var_second|source=8edb4430e8bf0e8a81f2012a6d75316b44c5c4ef1c8292610cb9c21089553908`.
It covered 19 observed GoodDirection survivors in the bounded scan. -/
private def fam_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩

private abbrev fam_049_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarSecond fam_049_support r mask

private theorem fam_049_checkedOn :
    SupportFamilyCheckedOn fam_049_support fam_049_contains := by
  simpa [fam_049_contains] using oppOneMinusVarSecond_checkedOn fam_049_support

private theorem fam_049_killsOn :
    SupportFamilyKillsOn fam_049_support fam_049_contains :=
  SupportFamilyCheckedOn.kills fam_049_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=5dfd9ac79c1157283fb324b8755d495676c60e4c33fe928b81991d8b25259cb9`.
It covered 18 observed GoodDirection survivors in the bounded scan. -/
private def fam_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_050_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_050_support r mask

private theorem fam_050_checkedOn :
    SupportFamilyCheckedOn fam_050_support fam_050_contains := by
  simpa [fam_050_contains] using eqEqPosVarFirst_checkedOn fam_050_support

private theorem fam_050_killsOn :
    SupportFamilyKillsOn fam_050_support fam_050_contains :=
  SupportFamilyCheckedOn.kills fam_050_checkedOn

/-- Representative family `opp_m1_var_second|source=fa6e4d538edd5d868330d4cba581bc421ac6c42d669bee81b5a61b6d08157c0a`.
It covered 18 observed GoodDirection survivors in the bounded scan. -/
private def fam_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩

private abbrev fam_051_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarSecond fam_051_support r mask

private theorem fam_051_checkedOn :
    SupportFamilyCheckedOn fam_051_support fam_051_contains := by
  simpa [fam_051_contains] using oppMinusOneVarSecond_checkedOn fam_051_support

private theorem fam_051_killsOn :
    SupportFamilyKillsOn fam_051_support fam_051_contains :=
  SupportFamilyCheckedOn.kills fam_051_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=a7f1414d2006f9a61ddc45e2beac64055d38b4ffc72ba3e09c3e30d31c744771`.
It covered 16 observed GoodDirection survivors in the bounded scan. -/
private def fam_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_052_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_052_support r mask

private theorem fam_052_checkedOn :
    SupportFamilyCheckedOn fam_052_support fam_052_contains := by
  simpa [fam_052_contains] using eqEqPosVarFirst_checkedOn fam_052_support

private theorem fam_052_killsOn :
    SupportFamilyKillsOn fam_052_support fam_052_contains :=
  SupportFamilyCheckedOn.kills fam_052_checkedOn

/-- Representative family `opp_1m_var_first|source=6c2fa0c560cfaf32ab7b67e424c9c3e6dba41c14e7b03e34191cbb7c9e559f1c`.
It covered 16 observed GoodDirection survivors in the bounded scan. -/
private def fam_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_053_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_053_support r mask

private theorem fam_053_checkedOn :
    SupportFamilyCheckedOn fam_053_support fam_053_contains := by
  simpa [fam_053_contains] using oppOneMinusVarFirst_checkedOn fam_053_support

private theorem fam_053_killsOn :
    SupportFamilyKillsOn fam_053_support fam_053_contains :=
  SupportFamilyCheckedOn.kills fam_053_checkedOn

/-- Representative family `opp_1m_var_first|source=7c682b5564fd2ea8cb3db5a20f5238fb6f2736ba1e81d5f62b29f58f9eceef02`.
It covered 15 observed GoodDirection survivors in the bounded scan. -/
private def fam_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_054_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_054_support r mask

private theorem fam_054_checkedOn :
    SupportFamilyCheckedOn fam_054_support fam_054_contains := by
  simpa [fam_054_contains] using oppOneMinusVarFirst_checkedOn fam_054_support

private theorem fam_054_killsOn :
    SupportFamilyKillsOn fam_054_support fam_054_contains :=
  SupportFamilyCheckedOn.kills fam_054_checkedOn

/-- Representative family `opp_m1_var_second|source=99a61a9d8799208b9a333952c7a92d0a56168bcaaf69510f6c6720cd6bb1afc2`.
It covered 15 observed GoodDirection survivors in the bounded scan. -/
private def fam_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩

private abbrev fam_055_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarSecond fam_055_support r mask

private theorem fam_055_checkedOn :
    SupportFamilyCheckedOn fam_055_support fam_055_contains := by
  simpa [fam_055_contains] using oppMinusOneVarSecond_checkedOn fam_055_support

private theorem fam_055_killsOn :
    SupportFamilyKillsOn fam_055_support fam_055_contains :=
  SupportFamilyCheckedOn.kills fam_055_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=7eab3080e823ecafa85864033eafc10759cdc0448534b78f303ef165b5e7a473`.
It covered 13 observed GoodDirection survivors in the bounded scan. -/
private def fam_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_056_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_056_support r mask

private theorem fam_056_checkedOn :
    SupportFamilyCheckedOn fam_056_support fam_056_contains := by
  simpa [fam_056_contains] using eqEqPosVarFirst_checkedOn fam_056_support

private theorem fam_056_killsOn :
    SupportFamilyKillsOn fam_056_support fam_056_contains :=
  SupportFamilyCheckedOn.kills fam_056_checkedOn

/-- Representative family `opp_m1_var_first|source=e22b7615673cc078f6dd2730ee878d6ee55fc0242db3b56f2aed7d230c80ef12`.
It covered 13 observed GoodDirection survivors in the bounded scan. -/
private def fam_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_057_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_057_support r mask

private theorem fam_057_checkedOn :
    SupportFamilyCheckedOn fam_057_support fam_057_contains := by
  simpa [fam_057_contains] using oppMinusOneVarFirst_checkedOn fam_057_support

private theorem fam_057_killsOn :
    SupportFamilyKillsOn fam_057_support fam_057_contains :=
  SupportFamilyCheckedOn.kills fam_057_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=860a192a0880a73fbcd55bf496a1bc67580b9f1f16f8f95a5b3ff960bc61e1ba`.
It covered 12 observed GoodDirection survivors in the bounded scan. -/
private def fam_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_058_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_058_support r mask

private theorem fam_058_checkedOn :
    SupportFamilyCheckedOn fam_058_support fam_058_contains := by
  simpa [fam_058_contains] using eqEqNegVarFirst_checkedOn fam_058_support

private theorem fam_058_killsOn :
    SupportFamilyKillsOn fam_058_support fam_058_contains :=
  SupportFamilyCheckedOn.kills fam_058_checkedOn

/-- Representative family `opp_1m_var_first|source=4a1ec3b8ff99b5f230a6872e5b20534b849a752a124aa0d751f5bf0e3b39ad74`.
It covered 12 observed GoodDirection survivors in the bounded scan. -/
private def fam_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_059_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_059_support r mask

private theorem fam_059_checkedOn :
    SupportFamilyCheckedOn fam_059_support fam_059_contains := by
  simpa [fam_059_contains] using oppOneMinusVarFirst_checkedOn fam_059_support

private theorem fam_059_killsOn :
    SupportFamilyKillsOn fam_059_support fam_059_contains :=
  SupportFamilyCheckedOn.kills fam_059_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=cbfc32bb175d041305dea8c3dfc4d718d77901966cdb395d88a5e390164f2ca3`.
It covered 11 observed GoodDirection survivors in the bounded scan. -/
private def fam_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_060_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_060_support r mask

private theorem fam_060_checkedOn :
    SupportFamilyCheckedOn fam_060_support fam_060_contains := by
  simpa [fam_060_contains] using eqEqPosVarFirst_checkedOn fam_060_support

private theorem fam_060_killsOn :
    SupportFamilyKillsOn fam_060_support fam_060_contains :=
  SupportFamilyCheckedOn.kills fam_060_checkedOn

/-- Representative family `opp_1m_var_first|source=b60ef4dd79479611e827999125353661a24b0b32ac42a3d6c17c520ac487f2a0`.
It covered 11 observed GoodDirection survivors in the bounded scan. -/
private def fam_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_061_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_061_support r mask

private theorem fam_061_checkedOn :
    SupportFamilyCheckedOn fam_061_support fam_061_contains := by
  simpa [fam_061_contains] using oppOneMinusVarFirst_checkedOn fam_061_support

private theorem fam_061_killsOn :
    SupportFamilyKillsOn fam_061_support fam_061_contains :=
  SupportFamilyCheckedOn.kills fam_061_checkedOn

/-- Representative family `opp_m1_var_first|source=81dafb8841a71e814f8adb2db8a0b6300dc26e6d5c09b4f775e92dadfe61b160`.
It covered 11 observed GoodDirection survivors in the bounded scan. -/
private def fam_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_062_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_062_support r mask

private theorem fam_062_checkedOn :
    SupportFamilyCheckedOn fam_062_support fam_062_contains := by
  simpa [fam_062_contains] using oppMinusOneVarFirst_checkedOn fam_062_support

private theorem fam_062_killsOn :
    SupportFamilyKillsOn fam_062_support fam_062_contains :=
  SupportFamilyCheckedOn.kills fam_062_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=89798bfc21e90e6eb1fc851b1ef2d4b54c8dc246d983d111d92c3671497b0c12`.
It covered 10 observed GoodDirection survivors in the bounded scan. -/
private def fam_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_063_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_063_support r mask

private theorem fam_063_checkedOn :
    SupportFamilyCheckedOn fam_063_support fam_063_contains := by
  simpa [fam_063_contains] using eqEqNegVarFirst_checkedOn fam_063_support

private theorem fam_063_killsOn :
    SupportFamilyKillsOn fam_063_support fam_063_contains :=
  SupportFamilyCheckedOn.kills fam_063_checkedOn

inductive Group003Covered : Nat -> SignMask -> Prop
  | fam_048 {r : Nat} {mask : SignMask} (h : fam_048_contains r mask) : Group003Covered r mask
  | fam_049 {r : Nat} {mask : SignMask} (h : fam_049_contains r mask) : Group003Covered r mask
  | fam_050 {r : Nat} {mask : SignMask} (h : fam_050_contains r mask) : Group003Covered r mask
  | fam_051 {r : Nat} {mask : SignMask} (h : fam_051_contains r mask) : Group003Covered r mask
  | fam_052 {r : Nat} {mask : SignMask} (h : fam_052_contains r mask) : Group003Covered r mask
  | fam_053 {r : Nat} {mask : SignMask} (h : fam_053_contains r mask) : Group003Covered r mask
  | fam_054 {r : Nat} {mask : SignMask} (h : fam_054_contains r mask) : Group003Covered r mask
  | fam_055 {r : Nat} {mask : SignMask} (h : fam_055_contains r mask) : Group003Covered r mask
  | fam_056 {r : Nat} {mask : SignMask} (h : fam_056_contains r mask) : Group003Covered r mask
  | fam_057 {r : Nat} {mask : SignMask} (h : fam_057_contains r mask) : Group003Covered r mask
  | fam_058 {r : Nat} {mask : SignMask} (h : fam_058_contains r mask) : Group003Covered r mask
  | fam_059 {r : Nat} {mask : SignMask} (h : fam_059_contains r mask) : Group003Covered r mask
  | fam_060 {r : Nat} {mask : SignMask} (h : fam_060_contains r mask) : Group003Covered r mask
  | fam_061 {r : Nat} {mask : SignMask} (h : fam_061_contains r mask) : Group003Covered r mask
  | fam_062 {r : Nat} {mask : SignMask} (h : fam_062_contains r mask) : Group003Covered r mask
  | fam_063 {r : Nat} {mask : SignMask} (h : fam_063_contains r mask) : Group003Covered r mask

theorem Group003GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group003Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_048 h =>
      exact fam_048_killsOn r hlt mask h
  | fam_049 h =>
      exact fam_049_killsOn r hlt mask h
  | fam_050 h =>
      exact fam_050_killsOn r hlt mask h
  | fam_051 h =>
      exact fam_051_killsOn r hlt mask h
  | fam_052 h =>
      exact fam_052_killsOn r hlt mask h
  | fam_053 h =>
      exact fam_053_killsOn r hlt mask h
  | fam_054 h =>
      exact fam_054_killsOn r hlt mask h
  | fam_055 h =>
      exact fam_055_killsOn r hlt mask h
  | fam_056 h =>
      exact fam_056_killsOn r hlt mask h
  | fam_057 h =>
      exact fam_057_killsOn r hlt mask h
  | fam_058 h =>
      exact fam_058_killsOn r hlt mask h
  | fam_059 h =>
      exact fam_059_killsOn r hlt mask h
  | fam_060 h =>
      exact fam_060_killsOn r hlt mask h
  | fam_061 h =>
      exact fam_061_killsOn r hlt mask h
  | fam_062 h =>
      exact fam_062_killsOn r hlt mask h
  | fam_063 h =>
      exact fam_063_killsOn r hlt mask h

theorem Group003_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group003
