import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group004

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `opp_1m_var_first|source=e5c2b7d717ebbb6aa19cf30dbcf015c44b507b3094de93889a6ac6867129bff3`.
It covered 10 observed GoodDirection survivors in the bounded scan. -/
private def fam_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_064_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_064_support r mask

private theorem fam_064_checkedOn :
    SupportFamilyCheckedOn fam_064_support fam_064_contains := by
  simpa [fam_064_contains] using oppOneMinusVarFirst_checkedOn fam_064_support

private theorem fam_064_killsOn :
    SupportFamilyKillsOn fam_064_support fam_064_contains :=
  SupportFamilyCheckedOn.kills fam_064_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=b0705c1f0d0edd8511e9b2a0d5fa085abe1d86af3ad5145080a17772d5252301`.
It covered 9 observed GoodDirection survivors in the bounded scan. -/
private def fam_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_065_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_065_support r mask

private theorem fam_065_checkedOn :
    SupportFamilyCheckedOn fam_065_support fam_065_contains := by
  simpa [fam_065_contains] using eqEqPosVarFirst_checkedOn fam_065_support

private theorem fam_065_killsOn :
    SupportFamilyKillsOn fam_065_support fam_065_contains :=
  SupportFamilyCheckedOn.kills fam_065_checkedOn

/-- Representative family `opp_1m_var_first|source=359483e6c3bd63d0b861dedb099869137d791e25ce45480719d0c01cc40cdfa6`.
It covered 9 observed GoodDirection survivors in the bounded scan. -/
private def fam_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_066_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_066_support r mask

private theorem fam_066_checkedOn :
    SupportFamilyCheckedOn fam_066_support fam_066_contains := by
  simpa [fam_066_contains] using oppOneMinusVarFirst_checkedOn fam_066_support

private theorem fam_066_killsOn :
    SupportFamilyKillsOn fam_066_support fam_066_contains :=
  SupportFamilyCheckedOn.kills fam_066_checkedOn

/-- Representative family `opp_m1_var_first|source=52347f9e1d0e9538511d3e69a711a1dcf3f9ffb6cd4e74d1b0555c2ad0ccec6c`.
It covered 9 observed GoodDirection survivors in the bounded scan. -/
private def fam_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_067_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_067_support r mask

private theorem fam_067_checkedOn :
    SupportFamilyCheckedOn fam_067_support fam_067_contains := by
  simpa [fam_067_contains] using oppMinusOneVarFirst_checkedOn fam_067_support

private theorem fam_067_killsOn :
    SupportFamilyKillsOn fam_067_support fam_067_contains :=
  SupportFamilyCheckedOn.kills fam_067_checkedOn

/-- Representative family `opp_m1_var_first|source=90c3ddba2f792845f85ceb80857d1906e1d60a27e6d3800f5e5c48b3f6cd9e19`.
It covered 9 observed GoodDirection survivors in the bounded scan. -/
private def fam_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_068_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_068_support r mask

private theorem fam_068_checkedOn :
    SupportFamilyCheckedOn fam_068_support fam_068_contains := by
  simpa [fam_068_contains] using oppMinusOneVarFirst_checkedOn fam_068_support

private theorem fam_068_killsOn :
    SupportFamilyKillsOn fam_068_support fam_068_contains :=
  SupportFamilyCheckedOn.kills fam_068_checkedOn

/-- Representative family `opp_m1_var_first|source=c42462dbe08940ee3cd9ada21d2e236dda274a34365955b1acbbcf969fc48760`.
It covered 9 observed GoodDirection survivors in the bounded scan. -/
private def fam_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_069_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_069_support r mask

private theorem fam_069_checkedOn :
    SupportFamilyCheckedOn fam_069_support fam_069_contains := by
  simpa [fam_069_contains] using oppMinusOneVarFirst_checkedOn fam_069_support

private theorem fam_069_killsOn :
    SupportFamilyKillsOn fam_069_support fam_069_contains :=
  SupportFamilyCheckedOn.kills fam_069_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=277e3534422c8508f9110c5fc6fc9b696ce000d5ec5c6f9c168db72d8b5f2d80`.
It covered 8 observed GoodDirection survivors in the bounded scan. -/
private def fam_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_070_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_070_support r mask

private theorem fam_070_checkedOn :
    SupportFamilyCheckedOn fam_070_support fam_070_contains := by
  simpa [fam_070_contains] using eqEqPosVarFirst_checkedOn fam_070_support

private theorem fam_070_killsOn :
    SupportFamilyKillsOn fam_070_support fam_070_contains :=
  SupportFamilyCheckedOn.kills fam_070_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=57151907a708c4fc036b9e4fdc4b80756b207e3e6601b11f1fe985f958a0ec87`.
It covered 8 observed GoodDirection survivors in the bounded scan. -/
private def fam_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_071_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_071_support r mask

private theorem fam_071_checkedOn :
    SupportFamilyCheckedOn fam_071_support fam_071_contains := by
  simpa [fam_071_contains] using eqEqPosVarFirst_checkedOn fam_071_support

private theorem fam_071_killsOn :
    SupportFamilyKillsOn fam_071_support fam_071_contains :=
  SupportFamilyCheckedOn.kills fam_071_checkedOn

/-- Representative family `opp_m1_var_first|source=e30c06cf78148faf3c055df080a603b087cc0558424abacaa1f842ee7ca57b88`.
It covered 8 observed GoodDirection survivors in the bounded scan. -/
private def fam_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_072_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_072_support r mask

private theorem fam_072_checkedOn :
    SupportFamilyCheckedOn fam_072_support fam_072_contains := by
  simpa [fam_072_contains] using oppMinusOneVarFirst_checkedOn fam_072_support

private theorem fam_072_killsOn :
    SupportFamilyKillsOn fam_072_support fam_072_contains :=
  SupportFamilyCheckedOn.kills fam_072_checkedOn

/-- Representative family `opp_1m_var_first|source=552f8e720cd35d210517fe374663bbfe1e890e7b1e7d4981309d68cb82c985f5`.
It covered 7 observed GoodDirection survivors in the bounded scan. -/
private def fam_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_073_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_073_support r mask

private theorem fam_073_checkedOn :
    SupportFamilyCheckedOn fam_073_support fam_073_contains := by
  simpa [fam_073_contains] using oppOneMinusVarFirst_checkedOn fam_073_support

private theorem fam_073_killsOn :
    SupportFamilyKillsOn fam_073_support fam_073_contains :=
  SupportFamilyCheckedOn.kills fam_073_checkedOn

/-- Representative family `opp_m1_var_first|source=45bf04c1296460bab9064a95107f079b6bba75eb6882abbad90c79696210b40e`.
It covered 7 observed GoodDirection survivors in the bounded scan. -/
private def fam_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_074_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_074_support r mask

private theorem fam_074_checkedOn :
    SupportFamilyCheckedOn fam_074_support fam_074_contains := by
  simpa [fam_074_contains] using oppMinusOneVarFirst_checkedOn fam_074_support

private theorem fam_074_killsOn :
    SupportFamilyKillsOn fam_074_support fam_074_contains :=
  SupportFamilyCheckedOn.kills fam_074_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=292982063d6cd1ec16bd057fe5dc1504269a158617068bd58903336f74501b17`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_075_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_075_support r mask

private theorem fam_075_checkedOn :
    SupportFamilyCheckedOn fam_075_support fam_075_contains := by
  simpa [fam_075_contains] using eqEqPosVarFirst_checkedOn fam_075_support

private theorem fam_075_killsOn :
    SupportFamilyKillsOn fam_075_support fam_075_contains :=
  SupportFamilyCheckedOn.kills fam_075_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=77b8e8260cfce9cc7e0c6ebcf93954f5e7d9a23cbb97c350b919b0cf67d15f6d`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_076_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_076_support r mask

private theorem fam_076_checkedOn :
    SupportFamilyCheckedOn fam_076_support fam_076_contains := by
  simpa [fam_076_contains] using eqEqPosVarFirst_checkedOn fam_076_support

private theorem fam_076_killsOn :
    SupportFamilyKillsOn fam_076_support fam_076_contains :=
  SupportFamilyCheckedOn.kills fam_076_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=86abc4102073a6374c5c33875ab703acbbc5e4be795712c75dedab1c0ed39655`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_077_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_077_support r mask

private theorem fam_077_checkedOn :
    SupportFamilyCheckedOn fam_077_support fam_077_contains := by
  simpa [fam_077_contains] using eqEqPosVarFirst_checkedOn fam_077_support

private theorem fam_077_killsOn :
    SupportFamilyKillsOn fam_077_support fam_077_contains :=
  SupportFamilyCheckedOn.kills fam_077_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=dec5fcc03db46a56e424bdf0d8ce702b528d9517cab37da5ede0f9fb7f498537`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_078_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_078_support r mask

private theorem fam_078_checkedOn :
    SupportFamilyCheckedOn fam_078_support fam_078_contains := by
  simpa [fam_078_contains] using eqEqPosVarFirst_checkedOn fam_078_support

private theorem fam_078_killsOn :
    SupportFamilyKillsOn fam_078_support fam_078_contains :=
  SupportFamilyCheckedOn.kills fam_078_checkedOn

/-- Representative family `opp_1m_var_first|source=d2315eb98fc4350a76f1996fc3072dc286709067e395bf5ac90b1ca01815fb2f`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_079_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_079_support r mask

private theorem fam_079_checkedOn :
    SupportFamilyCheckedOn fam_079_support fam_079_contains := by
  simpa [fam_079_contains] using oppOneMinusVarFirst_checkedOn fam_079_support

private theorem fam_079_killsOn :
    SupportFamilyKillsOn fam_079_support fam_079_contains :=
  SupportFamilyCheckedOn.kills fam_079_checkedOn

inductive Group004Covered : Nat -> SignMask -> Prop
  | fam_064 {r : Nat} {mask : SignMask} (h : fam_064_contains r mask) : Group004Covered r mask
  | fam_065 {r : Nat} {mask : SignMask} (h : fam_065_contains r mask) : Group004Covered r mask
  | fam_066 {r : Nat} {mask : SignMask} (h : fam_066_contains r mask) : Group004Covered r mask
  | fam_067 {r : Nat} {mask : SignMask} (h : fam_067_contains r mask) : Group004Covered r mask
  | fam_068 {r : Nat} {mask : SignMask} (h : fam_068_contains r mask) : Group004Covered r mask
  | fam_069 {r : Nat} {mask : SignMask} (h : fam_069_contains r mask) : Group004Covered r mask
  | fam_070 {r : Nat} {mask : SignMask} (h : fam_070_contains r mask) : Group004Covered r mask
  | fam_071 {r : Nat} {mask : SignMask} (h : fam_071_contains r mask) : Group004Covered r mask
  | fam_072 {r : Nat} {mask : SignMask} (h : fam_072_contains r mask) : Group004Covered r mask
  | fam_073 {r : Nat} {mask : SignMask} (h : fam_073_contains r mask) : Group004Covered r mask
  | fam_074 {r : Nat} {mask : SignMask} (h : fam_074_contains r mask) : Group004Covered r mask
  | fam_075 {r : Nat} {mask : SignMask} (h : fam_075_contains r mask) : Group004Covered r mask
  | fam_076 {r : Nat} {mask : SignMask} (h : fam_076_contains r mask) : Group004Covered r mask
  | fam_077 {r : Nat} {mask : SignMask} (h : fam_077_contains r mask) : Group004Covered r mask
  | fam_078 {r : Nat} {mask : SignMask} (h : fam_078_contains r mask) : Group004Covered r mask
  | fam_079 {r : Nat} {mask : SignMask} (h : fam_079_contains r mask) : Group004Covered r mask

theorem Group004GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group004Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_064 h =>
      exact fam_064_killsOn r hlt mask h
  | fam_065 h =>
      exact fam_065_killsOn r hlt mask h
  | fam_066 h =>
      exact fam_066_killsOn r hlt mask h
  | fam_067 h =>
      exact fam_067_killsOn r hlt mask h
  | fam_068 h =>
      exact fam_068_killsOn r hlt mask h
  | fam_069 h =>
      exact fam_069_killsOn r hlt mask h
  | fam_070 h =>
      exact fam_070_killsOn r hlt mask h
  | fam_071 h =>
      exact fam_071_killsOn r hlt mask h
  | fam_072 h =>
      exact fam_072_killsOn r hlt mask h
  | fam_073 h =>
      exact fam_073_killsOn r hlt mask h
  | fam_074 h =>
      exact fam_074_killsOn r hlt mask h
  | fam_075 h =>
      exact fam_075_killsOn r hlt mask h
  | fam_076 h =>
      exact fam_076_killsOn r hlt mask h
  | fam_077 h =>
      exact fam_077_killsOn r hlt mask h
  | fam_078 h =>
      exact fam_078_killsOn r hlt mask h
  | fam_079 h =>
      exact fam_079_killsOn r hlt mask h

theorem Group004_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group004
