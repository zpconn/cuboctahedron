import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-!
Generated bounded symbolic representative row-family group.

This module exports a family-union predicate and theorem using the
source-agreement/row-property split.  It contains no ordinary
translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group005

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Symbolic representative family `opp_1m_var_first|source=d2315eb98fc4350a76f1996fc3072dc286709067e395bf5ac90b1ca01815fb2f|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_080_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_080_support r mask /\
    OppOneMinusVarFirstRows fam_080_support r mask

private theorem fam_080_checkedOn :
    SupportFamilyCheckedOn fam_080_support fam_080_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_080_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_080_killsOn :
    SupportFamilyKillsOn fam_080_support fam_080_contains :=
  SupportFamilyCheckedOn.kills fam_080_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=4d6e049da75a71f3c04fdadeac16028afb2b900dfa821e3b072b260f1627393f|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 6 observed GoodDirection survivors in the bounded scan. -/
private def fam_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_081_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_081_support r mask /\
    OppMinusOneVarFirstRows fam_081_support r mask

private theorem fam_081_checkedOn :
    SupportFamilyCheckedOn fam_081_support fam_081_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_081_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_081_killsOn :
    SupportFamilyKillsOn fam_081_support fam_081_contains :=
  SupportFamilyCheckedOn.kills fam_081_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=338b63960b11452e26f23534af0398f64e6b724e80fe50f779015150e8c2fd3b|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_082_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_082_support r mask /\
    OppOneMinusVarFirstRows fam_082_support r mask

private theorem fam_082_checkedOn :
    SupportFamilyCheckedOn fam_082_support fam_082_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_082_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_082_killsOn :
    SupportFamilyKillsOn fam_082_support fam_082_contains :=
  SupportFamilyCheckedOn.kills fam_082_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=a4976c8bb8d31dfc418e91f103df38074bd61c3582cc75571c6f988e17c6d827|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_083_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_083_support r mask /\
    OppMinusOneVarFirstRows fam_083_support r mask

private theorem fam_083_checkedOn :
    SupportFamilyCheckedOn fam_083_support fam_083_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_083_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_083_killsOn :
    SupportFamilyKillsOn fam_083_support fam_083_contains :=
  SupportFamilyCheckedOn.kills fam_083_checkedOn

/-- Symbolic representative family `opp_m1_var_second|source=b18325bfb69383fbb6b0c426d2fa4646c3e17253c22f6311aeb2e8313733daa0|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`.
It covered 5 observed GoodDirection survivors in the bounded scan. -/
private def fam_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩

private abbrev fam_084_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_084_support r mask /\
    OppMinusOneVarSecondRows fam_084_support r mask

private theorem fam_084_checkedOn :
    SupportFamilyCheckedOn fam_084_support fam_084_contains := by
  intro r hlt mask h
  exact oppMinusOneVarSecond_checkedOn fam_084_support r hlt mask
    (oppMinusOneVarSecond_of_symbolic h.1 h.2)

private theorem fam_084_killsOn :
    SupportFamilyKillsOn fam_084_support fam_084_contains :=
  SupportFamilyCheckedOn.kills fam_084_checkedOn

/-- Symbolic representative family `axis_b_only|source=4e7bbe2b2a3fe8a7bebe4a810f32b04fb4c1965cd675cc919449c05dc64bd067|rowProperty=8b4dd94d20d08f377387b9783af3183fb37c7ca9d2f4c5cc27551e8c6f50591e`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩

private abbrev fam_085_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_085_support r mask /\
    AxisBOnlyRows fam_085_support r mask

private theorem fam_085_checkedOn :
    SupportFamilyCheckedOn fam_085_support fam_085_contains := by
  intro r hlt mask h
  exact axisBOnly_checkedOn fam_085_support r hlt mask
    (axisBOnly_of_symbolic h.1 h.2)

private theorem fam_085_killsOn :
    SupportFamilyKillsOn fam_085_support fam_085_contains :=
  SupportFamilyCheckedOn.kills fam_085_checkedOn

/-- Symbolic representative family `axis_b_only|source=4e7bbe2b2a3fe8a7bebe4a810f32b04fb4c1965cd675cc919449c05dc64bd067|rowProperty=abdd7574b7e475663326ccfa26c8ffe65837d915356d0bac48b01e96bba3c77b`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨4, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩

private abbrev fam_086_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_086_support r mask /\
    AxisBOnlyRows fam_086_support r mask

private theorem fam_086_checkedOn :
    SupportFamilyCheckedOn fam_086_support fam_086_contains := by
  intro r hlt mask h
  exact axisBOnly_checkedOn fam_086_support r hlt mask
    (axisBOnly_of_symbolic h.1 h.2)

private theorem fam_086_killsOn :
    SupportFamilyKillsOn fam_086_support fam_086_contains :=
  SupportFamilyCheckedOn.kills fam_086_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=a293692866d2a0cd3cd0bfb84ae21cae79272d0903c8acc1310e3d29d2cabc47|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_087_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_087_support r mask /\
    EqEqNegVarFirstRows fam_087_support r mask

private theorem fam_087_checkedOn :
    SupportFamilyCheckedOn fam_087_support fam_087_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_087_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_087_killsOn :
    SupportFamilyKillsOn fam_087_support fam_087_contains :=
  SupportFamilyCheckedOn.kills fam_087_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_second|source=09181142a0b1fc22fb28e95beca62b0a3c26dfee4b3991601703bffb93866ea3|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩

private abbrev fam_088_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_088_support r mask /\
    EqEqNegVarSecondRows fam_088_support r mask

private theorem fam_088_checkedOn :
    SupportFamilyCheckedOn fam_088_support fam_088_contains := by
  intro r hlt mask h
  exact eqEqNegVarSecond_checkedOn fam_088_support r hlt mask
    (eqEqNegVarSecond_of_symbolic h.1 h.2)

private theorem fam_088_killsOn :
    SupportFamilyKillsOn fam_088_support fam_088_contains :=
  SupportFamilyCheckedOn.kills fam_088_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_second|source=37831c321f15114c8ece15312f79c8001777f006128c1dbe0314d4e136f4257f|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩

private abbrev fam_089_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_089_support r mask /\
    EqEqNegVarSecondRows fam_089_support r mask

private theorem fam_089_checkedOn :
    SupportFamilyCheckedOn fam_089_support fam_089_contains := by
  intro r hlt mask h
  exact eqEqNegVarSecond_checkedOn fam_089_support r hlt mask
    (eqEqNegVarSecond_of_symbolic h.1 h.2)

private theorem fam_089_killsOn :
    SupportFamilyKillsOn fam_089_support fam_089_contains :=
  SupportFamilyCheckedOn.kills fam_089_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=858dd10eb1f325704199aeb83fc5a4c807d07fc7943f2b23636a7591c46b3cb4|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_090_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_090_support r mask /\
    EqEqPosVarFirstRows fam_090_support r mask

private theorem fam_090_checkedOn :
    SupportFamilyCheckedOn fam_090_support fam_090_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_090_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_090_killsOn :
    SupportFamilyKillsOn fam_090_support fam_090_contains :=
  SupportFamilyCheckedOn.kills fam_090_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=bcfa0529e761de4b525227e2cb6d5138e9e4f44d37cd445857ff581365236e72|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_091_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_091_support r mask /\
    EqEqPosVarFirstRows fam_091_support r mask

private theorem fam_091_checkedOn :
    SupportFamilyCheckedOn fam_091_support fam_091_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_091_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_091_killsOn :
    SupportFamilyKillsOn fam_091_support fam_091_contains :=
  SupportFamilyCheckedOn.kills fam_091_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=6eb2ca7ee870afc8fb8d36967d28637a34a23cd6ed785bcf97c659adaa8b1bb5|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_092_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_092_support r mask /\
    OppOneMinusVarFirstRows fam_092_support r mask

private theorem fam_092_checkedOn :
    SupportFamilyCheckedOn fam_092_support fam_092_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_092_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_092_killsOn :
    SupportFamilyKillsOn fam_092_support fam_092_contains :=
  SupportFamilyCheckedOn.kills fam_092_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=ea6c4342ed6b82a312db6a36dd6ea22efd3e649d5ce58a64c8994292ab1e8b88|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 4 observed GoodDirection survivors in the bounded scan. -/
private def fam_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_093_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_093_support r mask /\
    OppOneMinusVarFirstRows fam_093_support r mask

private theorem fam_093_checkedOn :
    SupportFamilyCheckedOn fam_093_support fam_093_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_093_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_093_killsOn :
    SupportFamilyKillsOn fam_093_support fam_093_contains :=
  SupportFamilyCheckedOn.kills fam_093_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=c1fc80d5a61df02eb7f20811738a444afc3861956c880b1c2223abadad5767ef|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_094_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_094_support r mask /\
    EqEqNegVarFirstRows fam_094_support r mask

private theorem fam_094_checkedOn :
    SupportFamilyCheckedOn fam_094_support fam_094_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_094_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_094_killsOn :
    SupportFamilyKillsOn fam_094_support fam_094_contains :=
  SupportFamilyCheckedOn.kills fam_094_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=3d9e6a2266af643a601fc4cfa53f354ac77ea1706c01eae1430ecf3fdfb57b3a|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_095_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_095_support r mask /\
    EqEqPosVarFirstRows fam_095_support r mask

private theorem fam_095_checkedOn :
    SupportFamilyCheckedOn fam_095_support fam_095_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_095_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

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

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group005
