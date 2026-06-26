import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-!
Generated bounded symbolic representative row-family group.

This module exports a family-union predicate and theorem using the
source-agreement/row-property split.  It contains no ordinary
translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group007

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Symbolic representative family `opp_m1_var_first|source=8863cd6d0c2ef821f2c27b14c2d0722138949ad795f45ce46cb0015b3a0a7c19|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_112_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_112_support r mask /\
    OppMinusOneVarFirstRows fam_112_support r mask

private theorem fam_112_checkedOn :
    SupportFamilyCheckedOn fam_112_support fam_112_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_112_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_112_killsOn :
    SupportFamilyKillsOn fam_112_support fam_112_contains :=
  SupportFamilyCheckedOn.kills fam_112_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=99074a3c15c786eec86d9bd1f45d53479e440fc40eee77eb0a74285a87f23b42|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 2 observed GoodDirection survivors in the bounded scan. -/
private def fam_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_113_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_113_support r mask /\
    OppMinusOneVarFirstRows fam_113_support r mask

private theorem fam_113_checkedOn :
    SupportFamilyCheckedOn fam_113_support fam_113_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_113_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_113_killsOn :
    SupportFamilyKillsOn fam_113_support fam_113_contains :=
  SupportFamilyCheckedOn.kills fam_113_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=247a93752d163201f38fb65c547a9cfe9eaa1ad51a0a6e3bf06407f562c82bdb|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_114_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_114_support r mask /\
    EqEqNegVarFirstRows fam_114_support r mask

private theorem fam_114_checkedOn :
    SupportFamilyCheckedOn fam_114_support fam_114_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_114_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_114_killsOn :
    SupportFamilyKillsOn fam_114_support fam_114_contains :=
  SupportFamilyCheckedOn.kills fam_114_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=32c85a4b86c88f50d59343ab25f1626e2a28784edf83ca014457ed0cb9ace305|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_115_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_115_support r mask /\
    EqEqNegVarFirstRows fam_115_support r mask

private theorem fam_115_checkedOn :
    SupportFamilyCheckedOn fam_115_support fam_115_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_115_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_115_killsOn :
    SupportFamilyKillsOn fam_115_support fam_115_contains :=
  SupportFamilyCheckedOn.kills fam_115_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=cd1238a0446f01e430ae4d5c58bb25f2a0327a0b19692ea0d19a3218090f79eb|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_116_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_116_support r mask /\
    EqEqNegVarFirstRows fam_116_support r mask

private theorem fam_116_checkedOn :
    SupportFamilyCheckedOn fam_116_support fam_116_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_116_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_116_killsOn :
    SupportFamilyKillsOn fam_116_support fam_116_contains :=
  SupportFamilyCheckedOn.kills fam_116_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_first|source=e58583817e4c894b76047896869adf8b9421a6c3ed3be30fdb227ea8c58bc1a7|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_117_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_117_support r mask /\
    EqEqNegVarFirstRows fam_117_support r mask

private theorem fam_117_checkedOn :
    SupportFamilyCheckedOn fam_117_support fam_117_contains := by
  intro r hlt mask h
  exact eqEqNegVarFirst_checkedOn fam_117_support r hlt mask
    (eqEqNegVarFirst_of_symbolic h.1 h.2)

private theorem fam_117_killsOn :
    SupportFamilyKillsOn fam_117_support fam_117_contains :=
  SupportFamilyCheckedOn.kills fam_117_checkedOn

/-- Symbolic representative family `eq_eq_neg_var_second|source=10f55e679b46433e8ac90156ceef17f7721a9fc512aeebfd0978fe0bc6df440c|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩

private abbrev fam_118_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_118_support r mask /\
    EqEqNegVarSecondRows fam_118_support r mask

private theorem fam_118_checkedOn :
    SupportFamilyCheckedOn fam_118_support fam_118_contains := by
  intro r hlt mask h
  exact eqEqNegVarSecond_checkedOn fam_118_support r hlt mask
    (eqEqNegVarSecond_of_symbolic h.1 h.2)

private theorem fam_118_killsOn :
    SupportFamilyKillsOn fam_118_support fam_118_contains :=
  SupportFamilyCheckedOn.kills fam_118_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=1902b48f12fe5c4c505fa6a875762d22165c84439e631febb8148ebce2de327e|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_119_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_119_support r mask /\
    EqEqPosVarFirstRows fam_119_support r mask

private theorem fam_119_checkedOn :
    SupportFamilyCheckedOn fam_119_support fam_119_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_119_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_119_killsOn :
    SupportFamilyKillsOn fam_119_support fam_119_contains :=
  SupportFamilyCheckedOn.kills fam_119_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=6ff8f3b95cc70300cc87260de0357c28b9a5d766f0a9be577bd2cfc630139dbc|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_120_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_120_support r mask /\
    EqEqPosVarFirstRows fam_120_support r mask

private theorem fam_120_checkedOn :
    SupportFamilyCheckedOn fam_120_support fam_120_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_120_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_120_killsOn :
    SupportFamilyKillsOn fam_120_support fam_120_contains :=
  SupportFamilyCheckedOn.kills fam_120_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=d107056ed5aeff21b6693bb9ff5ddc161053a3b7850a2b7f1f61aa9293a1b5b8|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_121_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_121_support r mask /\
    EqEqPosVarFirstRows fam_121_support r mask

private theorem fam_121_checkedOn :
    SupportFamilyCheckedOn fam_121_support fam_121_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_121_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_121_killsOn :
    SupportFamilyKillsOn fam_121_support fam_121_contains :=
  SupportFamilyCheckedOn.kills fam_121_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=d7e065a4c286f46127c287eb631d6b33c9195c69c24f09213862a2e8848da6ec|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_122_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_122_support r mask /\
    EqEqPosVarFirstRows fam_122_support r mask

private theorem fam_122_checkedOn :
    SupportFamilyCheckedOn fam_122_support fam_122_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_122_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_122_killsOn :
    SupportFamilyKillsOn fam_122_support fam_122_contains :=
  SupportFamilyCheckedOn.kills fam_122_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=69888a550d083ada0060f967cebb65cd02e631461a30625a2d7a4199498721d8|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_123_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_123_support r mask /\
    OppOneMinusVarFirstRows fam_123_support r mask

private theorem fam_123_checkedOn :
    SupportFamilyCheckedOn fam_123_support fam_123_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_123_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_123_killsOn :
    SupportFamilyKillsOn fam_123_support fam_123_contains :=
  SupportFamilyCheckedOn.kills fam_123_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=6bb5295405e440d65df3057c181ad1519da069779ffb5e3891847e2ca6c1c4ad|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_124_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_124_support r mask /\
    OppOneMinusVarFirstRows fam_124_support r mask

private theorem fam_124_checkedOn :
    SupportFamilyCheckedOn fam_124_support fam_124_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_124_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_124_killsOn :
    SupportFamilyKillsOn fam_124_support fam_124_contains :=
  SupportFamilyCheckedOn.kills fam_124_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=baeec08c25d8d71425ba9ce04d08c470c714b8adc5ce0d42357637a5024655e1|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_125_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_125_support r mask /\
    OppMinusOneVarFirstRows fam_125_support r mask

private theorem fam_125_checkedOn :
    SupportFamilyCheckedOn fam_125_support fam_125_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_125_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_125_killsOn :
    SupportFamilyKillsOn fam_125_support fam_125_contains :=
  SupportFamilyCheckedOn.kills fam_125_checkedOn

inductive Group007Covered : Nat -> SignMask -> Prop
  | fam_112 {r : Nat} {mask : SignMask} (h : fam_112_contains r mask) : Group007Covered r mask
  | fam_113 {r : Nat} {mask : SignMask} (h : fam_113_contains r mask) : Group007Covered r mask
  | fam_114 {r : Nat} {mask : SignMask} (h : fam_114_contains r mask) : Group007Covered r mask
  | fam_115 {r : Nat} {mask : SignMask} (h : fam_115_contains r mask) : Group007Covered r mask
  | fam_116 {r : Nat} {mask : SignMask} (h : fam_116_contains r mask) : Group007Covered r mask
  | fam_117 {r : Nat} {mask : SignMask} (h : fam_117_contains r mask) : Group007Covered r mask
  | fam_118 {r : Nat} {mask : SignMask} (h : fam_118_contains r mask) : Group007Covered r mask
  | fam_119 {r : Nat} {mask : SignMask} (h : fam_119_contains r mask) : Group007Covered r mask
  | fam_120 {r : Nat} {mask : SignMask} (h : fam_120_contains r mask) : Group007Covered r mask
  | fam_121 {r : Nat} {mask : SignMask} (h : fam_121_contains r mask) : Group007Covered r mask
  | fam_122 {r : Nat} {mask : SignMask} (h : fam_122_contains r mask) : Group007Covered r mask
  | fam_123 {r : Nat} {mask : SignMask} (h : fam_123_contains r mask) : Group007Covered r mask
  | fam_124 {r : Nat} {mask : SignMask} (h : fam_124_contains r mask) : Group007Covered r mask
  | fam_125 {r : Nat} {mask : SignMask} (h : fam_125_contains r mask) : Group007Covered r mask

theorem Group007GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group007Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_112 h =>
      exact fam_112_killsOn r hlt mask h
  | fam_113 h =>
      exact fam_113_killsOn r hlt mask h
  | fam_114 h =>
      exact fam_114_killsOn r hlt mask h
  | fam_115 h =>
      exact fam_115_killsOn r hlt mask h
  | fam_116 h =>
      exact fam_116_killsOn r hlt mask h
  | fam_117 h =>
      exact fam_117_killsOn r hlt mask h
  | fam_118 h =>
      exact fam_118_killsOn r hlt mask h
  | fam_119 h =>
      exact fam_119_killsOn r hlt mask h
  | fam_120 h =>
      exact fam_120_killsOn r hlt mask h
  | fam_121 h =>
      exact fam_121_killsOn r hlt mask h
  | fam_122 h =>
      exact fam_122_killsOn r hlt mask h
  | fam_123 h =>
      exact fam_123_killsOn r hlt mask h
  | fam_124 h =>
      exact fam_124_killsOn r hlt mask h
  | fam_125 h =>
      exact fam_125_killsOn r hlt mask h

theorem Group007_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group007
