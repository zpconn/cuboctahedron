import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group005

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `opp_m1_var_first|source=4d6e049da75a71f3c04fdadeac16028afb2b900dfa821e3b072b260f1627393f`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_080_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_080_support r mask

private theorem fam_080_checkedOn :
    SupportFamilyCheckedOn fam_080_support fam_080_contains := by
  simpa [fam_080_contains] using oppMinusOneVarFirst_checkedOn fam_080_support

private theorem fam_080_killsOn :
    SupportFamilyKillsOn fam_080_support fam_080_contains :=
  SupportFamilyCheckedOn.kills fam_080_checkedOn

/-- Representative family `opp_1m_var_first|source=338b63960b11452e26f23534af0398f64e6b724e80fe50f779015150e8c2fd3b`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_081_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_081_support r mask

private theorem fam_081_checkedOn :
    SupportFamilyCheckedOn fam_081_support fam_081_contains := by
  simpa [fam_081_contains] using oppOneMinusVarFirst_checkedOn fam_081_support

private theorem fam_081_killsOn :
    SupportFamilyKillsOn fam_081_support fam_081_contains :=
  SupportFamilyCheckedOn.kills fam_081_checkedOn

/-- Representative family `opp_m1_var_first|source=a4976c8bb8d31dfc418e91f103df38074bd61c3582cc75571c6f988e17c6d827`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_082_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_082_support r mask

private theorem fam_082_checkedOn :
    SupportFamilyCheckedOn fam_082_support fam_082_contains := by
  simpa [fam_082_contains] using oppMinusOneVarFirst_checkedOn fam_082_support

private theorem fam_082_killsOn :
    SupportFamilyKillsOn fam_082_support fam_082_contains :=
  SupportFamilyCheckedOn.kills fam_082_checkedOn

/-- Representative family `opp_m1_var_second|source=b18325bfb69383fbb6b0c426d2fa4646c3e17253c22f6311aeb2e8313733daa0`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩

private abbrev fam_083_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarSecond fam_083_support r mask

private theorem fam_083_checkedOn :
    SupportFamilyCheckedOn fam_083_support fam_083_contains := by
  simpa [fam_083_contains] using oppMinusOneVarSecond_checkedOn fam_083_support

private theorem fam_083_killsOn :
    SupportFamilyKillsOn fam_083_support fam_083_contains :=
  SupportFamilyCheckedOn.kills fam_083_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=a293692866d2a0cd3cd0bfb84ae21cae79272d0903c8acc1310e3d29d2cabc47`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_084_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_084_support r mask

private theorem fam_084_checkedOn :
    SupportFamilyCheckedOn fam_084_support fam_084_contains := by
  simpa [fam_084_contains] using eqEqNegVarFirst_checkedOn fam_084_support

private theorem fam_084_killsOn :
    SupportFamilyKillsOn fam_084_support fam_084_contains :=
  SupportFamilyCheckedOn.kills fam_084_checkedOn

/-- Representative family `eq_eq_neg_var_second|source=09181142a0b1fc22fb28e95beca62b0a3c26dfee4b3991601703bffb93866ea3`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩

private abbrev fam_085_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarSecond fam_085_support r mask

private theorem fam_085_checkedOn :
    SupportFamilyCheckedOn fam_085_support fam_085_contains := by
  simpa [fam_085_contains] using eqEqNegVarSecond_checkedOn fam_085_support

private theorem fam_085_killsOn :
    SupportFamilyKillsOn fam_085_support fam_085_contains :=
  SupportFamilyCheckedOn.kills fam_085_checkedOn

/-- Representative family `eq_eq_neg_var_second|source=37831c321f15114c8ece15312f79c8001777f006128c1dbe0314d4e136f4257f`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩

private abbrev fam_086_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarSecond fam_086_support r mask

private theorem fam_086_checkedOn :
    SupportFamilyCheckedOn fam_086_support fam_086_contains := by
  simpa [fam_086_contains] using eqEqNegVarSecond_checkedOn fam_086_support

private theorem fam_086_killsOn :
    SupportFamilyKillsOn fam_086_support fam_086_contains :=
  SupportFamilyCheckedOn.kills fam_086_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=858dd10eb1f325704199aeb83fc5a4c807d07fc7943f2b23636a7591c46b3cb4`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_087_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_087_support r mask

private theorem fam_087_checkedOn :
    SupportFamilyCheckedOn fam_087_support fam_087_contains := by
  simpa [fam_087_contains] using eqEqPosVarFirst_checkedOn fam_087_support

private theorem fam_087_killsOn :
    SupportFamilyKillsOn fam_087_support fam_087_contains :=
  SupportFamilyCheckedOn.kills fam_087_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=bcfa0529e761de4b525227e2cb6d5138e9e4f44d37cd445857ff581365236e72`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_088_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_088_support r mask

private theorem fam_088_checkedOn :
    SupportFamilyCheckedOn fam_088_support fam_088_contains := by
  simpa [fam_088_contains] using eqEqPosVarFirst_checkedOn fam_088_support

private theorem fam_088_killsOn :
    SupportFamilyKillsOn fam_088_support fam_088_contains :=
  SupportFamilyCheckedOn.kills fam_088_checkedOn

/-- Representative family `opp_1m_var_first|source=6eb2ca7ee870afc8fb8d36967d28637a34a23cd6ed785bcf97c659adaa8b1bb5`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_089_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_089_support r mask

private theorem fam_089_checkedOn :
    SupportFamilyCheckedOn fam_089_support fam_089_contains := by
  simpa [fam_089_contains] using oppOneMinusVarFirst_checkedOn fam_089_support

private theorem fam_089_killsOn :
    SupportFamilyKillsOn fam_089_support fam_089_contains :=
  SupportFamilyCheckedOn.kills fam_089_checkedOn

/-- Representative family `opp_1m_var_first|source=ea6c4342ed6b82a312db6a36dd6ea22efd3e649d5ce58a64c8994292ab1e8b88`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_090_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_090_support r mask

private theorem fam_090_checkedOn :
    SupportFamilyCheckedOn fam_090_support fam_090_contains := by
  simpa [fam_090_contains] using oppOneMinusVarFirst_checkedOn fam_090_support

private theorem fam_090_killsOn :
    SupportFamilyKillsOn fam_090_support fam_090_contains :=
  SupportFamilyCheckedOn.kills fam_090_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=c1fc80d5a61df02eb7f20811738a444afc3861956c880b1c2223abadad5767ef`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_091_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_091_support r mask

private theorem fam_091_checkedOn :
    SupportFamilyCheckedOn fam_091_support fam_091_contains := by
  simpa [fam_091_contains] using eqEqNegVarFirst_checkedOn fam_091_support

private theorem fam_091_killsOn :
    SupportFamilyKillsOn fam_091_support fam_091_contains :=
  SupportFamilyCheckedOn.kills fam_091_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=3d9e6a2266af643a601fc4cfa53f354ac77ea1706c01eae1430ecf3fdfb57b3a`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_092_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_092_support r mask

private theorem fam_092_checkedOn :
    SupportFamilyCheckedOn fam_092_support fam_092_contains := by
  simpa [fam_092_contains] using eqEqPosVarFirst_checkedOn fam_092_support

private theorem fam_092_killsOn :
    SupportFamilyKillsOn fam_092_support fam_092_contains :=
  SupportFamilyCheckedOn.kills fam_092_checkedOn

/-- Representative family `opp_1m_var_first|source=4b4073027c97d33dfe4756dd743558374013c1047edb99e44bf00da2b7d77ad9`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_093_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_093_support r mask

private theorem fam_093_checkedOn :
    SupportFamilyCheckedOn fam_093_support fam_093_contains := by
  simpa [fam_093_contains] using oppOneMinusVarFirst_checkedOn fam_093_support

private theorem fam_093_killsOn :
    SupportFamilyKillsOn fam_093_support fam_093_contains :=
  SupportFamilyCheckedOn.kills fam_093_checkedOn

/-- Representative family `opp_1m_var_first|source=bc5e545b5b64368da87311d78124b9705e97336843ae7537a15c65e3223dabb5`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_094_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_094_support r mask

private theorem fam_094_checkedOn :
    SupportFamilyCheckedOn fam_094_support fam_094_contains := by
  simpa [fam_094_contains] using oppOneMinusVarFirst_checkedOn fam_094_support

private theorem fam_094_killsOn :
    SupportFamilyKillsOn fam_094_support fam_094_contains :=
  SupportFamilyCheckedOn.kills fam_094_checkedOn

/-- Representative family `opp_m1_var_first|source=e50ac61c2402e57c52766b81a7c87caadf6ffb400e7c30fb8d740303283e480b`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_095_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_095_support r mask

private theorem fam_095_checkedOn :
    SupportFamilyCheckedOn fam_095_support fam_095_contains := by
  simpa [fam_095_contains] using oppMinusOneVarFirst_checkedOn fam_095_support

private theorem fam_095_killsOn :
    SupportFamilyKillsOn fam_095_support fam_095_contains :=
  SupportFamilyCheckedOn.kills fam_095_checkedOn

inductive Group005Covered : Nat -> SignMask -> Prop
  | fam_080 {r : Nat} {mask : SignMask} (h : fam_080_contains r mask) : Group005Covered r mask
  | fam_081 {r : Nat} {mask : SignMask} (h : fam_081_contains r mask) : Group005Covered r mask
  | fam_082 {r : Nat} {mask : SignMask} (h : fam_082_contains r mask) : Group005Covered r mask
  | fam_083 {r : Nat} {mask : SignMask} (h : fam_083_contains r mask) : Group005Covered r mask
  | fam_084 {r : Nat} {mask : SignMask} (h : fam_084_contains r mask) : Group005Covered r mask
  | fam_085 {r : Nat} {mask : SignMask} (h : fam_085_contains r mask) : Group005Covered r mask
  | fam_086 {r : Nat} {mask : SignMask} (h : fam_086_contains r mask) : Group005Covered r mask
  | fam_087 {r : Nat} {mask : SignMask} (h : fam_087_contains r mask) : Group005Covered r mask
  | fam_088 {r : Nat} {mask : SignMask} (h : fam_088_contains r mask) : Group005Covered r mask
  | fam_089 {r : Nat} {mask : SignMask} (h : fam_089_contains r mask) : Group005Covered r mask
  | fam_090 {r : Nat} {mask : SignMask} (h : fam_090_contains r mask) : Group005Covered r mask
  | fam_091 {r : Nat} {mask : SignMask} (h : fam_091_contains r mask) : Group005Covered r mask
  | fam_092 {r : Nat} {mask : SignMask} (h : fam_092_contains r mask) : Group005Covered r mask
  | fam_093 {r : Nat} {mask : SignMask} (h : fam_093_contains r mask) : Group005Covered r mask
  | fam_094 {r : Nat} {mask : SignMask} (h : fam_094_contains r mask) : Group005Covered r mask
  | fam_095 {r : Nat} {mask : SignMask} (h : fam_095_contains r mask) : Group005Covered r mask

theorem Group005GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group005Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_080 h =>
      exact fam_080_killsOn r hlt mask h
  | fam_081 h =>
      exact fam_081_killsOn r hlt mask h
  | fam_082 h =>
      exact fam_082_killsOn r hlt mask h
  | fam_083 h =>
      exact fam_083_killsOn r hlt mask h
  | fam_084 h =>
      exact fam_084_killsOn r hlt mask h
  | fam_085 h =>
      exact fam_085_killsOn r hlt mask h
  | fam_086 h =>
      exact fam_086_killsOn r hlt mask h
  | fam_087 h =>
      exact fam_087_killsOn r hlt mask h
  | fam_088 h =>
      exact fam_088_killsOn r hlt mask h
  | fam_089 h =>
      exact fam_089_killsOn r hlt mask h
  | fam_090 h =>
      exact fam_090_killsOn r hlt mask h
  | fam_091 h =>
      exact fam_091_killsOn r hlt mask h
  | fam_092 h =>
      exact fam_092_killsOn r hlt mask h
  | fam_093 h =>
      exact fam_093_killsOn r hlt mask h
  | fam_094 h =>
      exact fam_094_killsOn r hlt mask h
  | fam_095 h =>
      exact fam_095_killsOn r hlt mask h

theorem Group005_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group005
