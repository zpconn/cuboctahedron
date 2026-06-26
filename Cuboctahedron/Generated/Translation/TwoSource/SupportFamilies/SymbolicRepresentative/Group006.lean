import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-!
Generated bounded symbolic representative row-family group.

This module exports a family-union predicate and theorem using the
source-agreement/row-property split.  It contains no ordinary
translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group006

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Symbolic representative family `opp_1m_var_first|source=4b4073027c97d33dfe4756dd743558374013c1047edb99e44bf00da2b7d77ad9|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_096_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_096_support r mask /\
    OppOneMinusVarFirstRows fam_096_support r mask

private theorem fam_096_checkedOn :
    SupportFamilyCheckedOn fam_096_support fam_096_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_096_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_096_killsOn :
    SupportFamilyKillsOn fam_096_support fam_096_contains :=
  SupportFamilyCheckedOn.kills fam_096_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=bc5e545b5b64368da87311d78124b9705e97336843ae7537a15c65e3223dabb5|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_097_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_097_support r mask /\
    OppOneMinusVarFirstRows fam_097_support r mask

private theorem fam_097_checkedOn :
    SupportFamilyCheckedOn fam_097_support fam_097_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_097_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_097_killsOn :
    SupportFamilyKillsOn fam_097_support fam_097_contains :=
  SupportFamilyCheckedOn.kills fam_097_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=e50ac61c2402e57c52766b81a7c87caadf6ffb400e7c30fb8d740303283e480b|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_098_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_098_support r mask /\
    OppMinusOneVarFirstRows fam_098_support r mask

private theorem fam_098_checkedOn :
    SupportFamilyCheckedOn fam_098_support fam_098_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_098_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_098_killsOn :
    SupportFamilyKillsOn fam_098_support fam_098_contains :=
  SupportFamilyCheckedOn.kills fam_098_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=e930f073b1ee5dab0c8350367446c6d7be4b845f585949021eb524d25de3113c|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 3 observed GoodDirection survivors in the bounded scan. -/
private def fam_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_099_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_099_support r mask /\
    OppMinusOneVarFirstRows fam_099_support r mask

private theorem fam_099_checkedOn :
    SupportFamilyCheckedOn fam_099_support fam_099_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_099_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_099_killsOn :
    SupportFamilyKillsOn fam_099_support fam_099_contains :=
  SupportFamilyCheckedOn.kills fam_099_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=b2a22e380955fd3b4754ff71dc7ae521860783048c09f4e231e6b9ac04c8f276|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_100_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_100_support r mask /\
    EqEqNegVarFirstRows fam_100_support r mask

private theorem fam_100_checkedOn :
    SupportFamilyCheckedOn fam_100_support fam_100_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_100_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_100_killsOn :
    SupportFamilyKillsOn fam_100_support fam_100_contains :=
  SupportFamilyCheckedOn.kills fam_100_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=fca67ede40153fb30a5780941b10faed75bc0f8fdca574ec1c9220cc14fb5a88|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_101_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_101_support r mask /\
    EqEqNegVarFirstRows fam_101_support r mask

private theorem fam_101_checkedOn :
    SupportFamilyCheckedOn fam_101_support fam_101_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_101_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_101_killsOn :
    SupportFamilyKillsOn fam_101_support fam_101_contains :=
  SupportFamilyCheckedOn.kills fam_101_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_second|source=1bdd186ff857e5cdfebd10b7372d4a1c8238dd6d3a4ac609fb83cbd37ea77c2c|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩

private abbrev fam_102_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_102_support r mask /\
    EqEqNegVarSecondRows fam_102_support r mask

private theorem fam_102_checkedOn :
    SupportFamilyCheckedOn fam_102_support fam_102_contains := by
  intro r hlt mask h
  exact eqEqNegVarSecond_checkedOn fam_102_support r hlt mask
    (eqEqNegVarSecond_of_symbolic h.1 h.2)

private theorem fam_102_killsOn :
    SupportFamilyKillsOn fam_102_support fam_102_contains :=
  SupportFamilyCheckedOn.kills fam_102_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_second|source=d62239e6a6ca222e02dce798d9eb940267f0d7f1ccf5da6d6a2d58a397654611|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩

private abbrev fam_103_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_103_support r mask /\
    EqEqNegVarSecondRows fam_103_support r mask

private theorem fam_103_checkedOn :
    SupportFamilyCheckedOn fam_103_support fam_103_contains := by
  intro r hlt mask h
  exact eqEqNegVarSecond_checkedOn fam_103_support r hlt mask
    (eqEqNegVarSecond_of_symbolic h.1 h.2)

private theorem fam_103_killsOn :
    SupportFamilyKillsOn fam_103_support fam_103_contains :=
  SupportFamilyCheckedOn.kills fam_103_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=2c3f19981d61ef277ba91f41ba48c6139c575e2a6631be0e9ae57e5b78fec915|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_104_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_104_support r mask /\
    EqEqPosVarFirstRows fam_104_support r mask

private theorem fam_104_checkedOn :
    SupportFamilyCheckedOn fam_104_support fam_104_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_104_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_104_killsOn :
    SupportFamilyKillsOn fam_104_support fam_104_contains :=
  SupportFamilyCheckedOn.kills fam_104_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=7b91d9d321f81b7149e26bf8771be385d39e01b159c34a329eb0826afe5b0092|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_105_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_105_support r mask /\
    EqEqPosVarFirstRows fam_105_support r mask

private theorem fam_105_checkedOn :
    SupportFamilyCheckedOn fam_105_support fam_105_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_105_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_105_killsOn :
    SupportFamilyKillsOn fam_105_support fam_105_contains :=
  SupportFamilyCheckedOn.kills fam_105_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=20b5bc2daa53595d45290a31bbd57a1e99d1d433cde28c39d61e3a59dc7ec37b|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_106_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_106_support r mask /\
    OppOneMinusVarFirstRows fam_106_support r mask

private theorem fam_106_checkedOn :
    SupportFamilyCheckedOn fam_106_support fam_106_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_106_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_106_killsOn :
    SupportFamilyKillsOn fam_106_support fam_106_contains :=
  SupportFamilyCheckedOn.kills fam_106_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=5400426f8054254b886174ba31b4deb27f22feac8e2e083f2c50279fdecf9fd9|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_107_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_107_support r mask /\
    OppOneMinusVarFirstRows fam_107_support r mask

private theorem fam_107_checkedOn :
    SupportFamilyCheckedOn fam_107_support fam_107_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_107_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_107_killsOn :
    SupportFamilyKillsOn fam_107_support fam_107_contains :=
  SupportFamilyCheckedOn.kills fam_107_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=5ae2ba07f68dcd40f4d4d7941c4b5bc8faa902c305b8c73ed971a511840cc004|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_108_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_108_support r mask /\
    OppOneMinusVarFirstRows fam_108_support r mask

private theorem fam_108_checkedOn :
    SupportFamilyCheckedOn fam_108_support fam_108_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_108_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_108_killsOn :
    SupportFamilyKillsOn fam_108_support fam_108_contains :=
  SupportFamilyCheckedOn.kills fam_108_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=6e047e336bda8646f18f71f17742d4af48862a5b918246db6f96043b5f4c554a|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_109_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_109_support r mask /\
    OppOneMinusVarFirstRows fam_109_support r mask

private theorem fam_109_checkedOn :
    SupportFamilyCheckedOn fam_109_support fam_109_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_109_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_109_killsOn :
    SupportFamilyKillsOn fam_109_support fam_109_contains :=
  SupportFamilyCheckedOn.kills fam_109_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=fa235f6690ce301230dd7bb9a9133de22f78b6f50eadece2e03c541c2a7b4fda|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_110_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_110_support r mask /\
    OppOneMinusVarFirstRows fam_110_support r mask

private theorem fam_110_checkedOn :
    SupportFamilyCheckedOn fam_110_support fam_110_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_110_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_110_killsOn :
    SupportFamilyKillsOn fam_110_support fam_110_contains :=
  SupportFamilyCheckedOn.kills fam_110_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=1ce69f03d3f2694da46129b32c343e63dd4ae49eb414458eff48a077005b4ccc|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_111_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_111_support r mask /\
    OppMinusOneVarFirstRows fam_111_support r mask

private theorem fam_111_checkedOn :
    SupportFamilyCheckedOn fam_111_support fam_111_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_111_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_111_killsOn :
    SupportFamilyKillsOn fam_111_support fam_111_contains :=
  SupportFamilyCheckedOn.kills fam_111_checkedOn

inductive Group006Covered : Nat -> SignMask -> Prop
  | fam_096 {r : Nat} {mask : SignMask} (h : fam_096_contains r mask) : Group006Covered r mask
  | fam_097 {r : Nat} {mask : SignMask} (h : fam_097_contains r mask) : Group006Covered r mask
  | fam_098 {r : Nat} {mask : SignMask} (h : fam_098_contains r mask) : Group006Covered r mask
  | fam_099 {r : Nat} {mask : SignMask} (h : fam_099_contains r mask) : Group006Covered r mask
  | fam_100 {r : Nat} {mask : SignMask} (h : fam_100_contains r mask) : Group006Covered r mask
  | fam_101 {r : Nat} {mask : SignMask} (h : fam_101_contains r mask) : Group006Covered r mask
  | fam_102 {r : Nat} {mask : SignMask} (h : fam_102_contains r mask) : Group006Covered r mask
  | fam_103 {r : Nat} {mask : SignMask} (h : fam_103_contains r mask) : Group006Covered r mask
  | fam_104 {r : Nat} {mask : SignMask} (h : fam_104_contains r mask) : Group006Covered r mask
  | fam_105 {r : Nat} {mask : SignMask} (h : fam_105_contains r mask) : Group006Covered r mask
  | fam_106 {r : Nat} {mask : SignMask} (h : fam_106_contains r mask) : Group006Covered r mask
  | fam_107 {r : Nat} {mask : SignMask} (h : fam_107_contains r mask) : Group006Covered r mask
  | fam_108 {r : Nat} {mask : SignMask} (h : fam_108_contains r mask) : Group006Covered r mask
  | fam_109 {r : Nat} {mask : SignMask} (h : fam_109_contains r mask) : Group006Covered r mask
  | fam_110 {r : Nat} {mask : SignMask} (h : fam_110_contains r mask) : Group006Covered r mask
  | fam_111 {r : Nat} {mask : SignMask} (h : fam_111_contains r mask) : Group006Covered r mask

theorem Group006GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group006Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_096 h =>
      exact fam_096_killsOn r hlt mask h
  | fam_097 h =>
      exact fam_097_killsOn r hlt mask h
  | fam_098 h =>
      exact fam_098_killsOn r hlt mask h
  | fam_099 h =>
      exact fam_099_killsOn r hlt mask h
  | fam_100 h =>
      exact fam_100_killsOn r hlt mask h
  | fam_101 h =>
      exact fam_101_killsOn r hlt mask h
  | fam_102 h =>
      exact fam_102_killsOn r hlt mask h
  | fam_103 h =>
      exact fam_103_killsOn r hlt mask h
  | fam_104 h =>
      exact fam_104_killsOn r hlt mask h
  | fam_105 h =>
      exact fam_105_killsOn r hlt mask h
  | fam_106 h =>
      exact fam_106_killsOn r hlt mask h
  | fam_107 h =>
      exact fam_107_killsOn r hlt mask h
  | fam_108 h =>
      exact fam_108_killsOn r hlt mask h
  | fam_109 h =>
      exact fam_109_killsOn r hlt mask h
  | fam_110 h =>
      exact fam_110_killsOn r hlt mask h
  | fam_111 h =>
      exact fam_111_killsOn r hlt mask h

theorem Group006_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group006
