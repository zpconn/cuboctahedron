import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Generated bounded representative semantic row-family group.

This module exports a family-union predicate and theorem.  It contains no
ordinary translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group007

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Representative family `eq_eq_neg_var_first|source=32c85a4b86c88f50d59343ab25f1626e2a28784edf83ca014457ed0cb9ace305`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_112_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_112_support r mask

private theorem fam_112_checkedOn :
    SupportFamilyCheckedOn fam_112_support fam_112_contains := by
  simpa [fam_112_contains] using eqEqNegVarFirst_checkedOn fam_112_support

private theorem fam_112_killsOn :
    SupportFamilyKillsOn fam_112_support fam_112_contains :=
  SupportFamilyCheckedOn.kills fam_112_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=cd1238a0446f01e430ae4d5c58bb25f2a0327a0b19692ea0d19a3218090f79eb`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_113_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_113_support r mask

private theorem fam_113_checkedOn :
    SupportFamilyCheckedOn fam_113_support fam_113_contains := by
  simpa [fam_113_contains] using eqEqNegVarFirst_checkedOn fam_113_support

private theorem fam_113_killsOn :
    SupportFamilyKillsOn fam_113_support fam_113_contains :=
  SupportFamilyCheckedOn.kills fam_113_checkedOn

/-- Representative family `eq_eq_neg_var_first|source=e58583817e4c894b76047896869adf8b9421a6c3ed3be30fdb227ea8c58bc1a7`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩

private abbrev fam_114_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarFirst fam_114_support r mask

private theorem fam_114_checkedOn :
    SupportFamilyCheckedOn fam_114_support fam_114_contains := by
  simpa [fam_114_contains] using eqEqNegVarFirst_checkedOn fam_114_support

private theorem fam_114_killsOn :
    SupportFamilyKillsOn fam_114_support fam_114_contains :=
  SupportFamilyCheckedOn.kills fam_114_checkedOn

/-- Representative family `eq_eq_neg_var_second|source=10f55e679b46433e8ac90156ceef17f7721a9fc512aeebfd0978fe0bc6df440c`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩

private abbrev fam_115_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqNegVarSecond fam_115_support r mask

private theorem fam_115_checkedOn :
    SupportFamilyCheckedOn fam_115_support fam_115_contains := by
  simpa [fam_115_contains] using eqEqNegVarSecond_checkedOn fam_115_support

private theorem fam_115_killsOn :
    SupportFamilyKillsOn fam_115_support fam_115_contains :=
  SupportFamilyCheckedOn.kills fam_115_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=1902b48f12fe5c4c505fa6a875762d22165c84439e631febb8148ebce2de327e`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_116_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_116_support r mask

private theorem fam_116_checkedOn :
    SupportFamilyCheckedOn fam_116_support fam_116_contains := by
  simpa [fam_116_contains] using eqEqPosVarFirst_checkedOn fam_116_support

private theorem fam_116_killsOn :
    SupportFamilyKillsOn fam_116_support fam_116_contains :=
  SupportFamilyCheckedOn.kills fam_116_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=6ff8f3b95cc70300cc87260de0357c28b9a5d766f0a9be577bd2cfc630139dbc`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_117_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_117_support r mask

private theorem fam_117_checkedOn :
    SupportFamilyCheckedOn fam_117_support fam_117_contains := by
  simpa [fam_117_contains] using eqEqPosVarFirst_checkedOn fam_117_support

private theorem fam_117_killsOn :
    SupportFamilyKillsOn fam_117_support fam_117_contains :=
  SupportFamilyCheckedOn.kills fam_117_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=d107056ed5aeff21b6693bb9ff5ddc161053a3b7850a2b7f1f61aa9293a1b5b8`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_118_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_118_support r mask

private theorem fam_118_checkedOn :
    SupportFamilyCheckedOn fam_118_support fam_118_contains := by
  simpa [fam_118_contains] using eqEqPosVarFirst_checkedOn fam_118_support

private theorem fam_118_killsOn :
    SupportFamilyKillsOn fam_118_support fam_118_contains :=
  SupportFamilyCheckedOn.kills fam_118_checkedOn

/-- Representative family `eq_eq_pos_var_first|source=d7e065a4c286f46127c287eb631d6b33c9195c69c24f09213862a2e8848da6ec`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_119_contains (r : Nat) (mask : SignMask) : Prop :=
  EqEqPosVarFirst fam_119_support r mask

private theorem fam_119_checkedOn :
    SupportFamilyCheckedOn fam_119_support fam_119_contains := by
  simpa [fam_119_contains] using eqEqPosVarFirst_checkedOn fam_119_support

private theorem fam_119_killsOn :
    SupportFamilyKillsOn fam_119_support fam_119_contains :=
  SupportFamilyCheckedOn.kills fam_119_checkedOn

/-- Representative family `opp_1m_var_first|source=69888a550d083ada0060f967cebb65cd02e631461a30625a2d7a4199498721d8`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_120_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_120_support r mask

private theorem fam_120_checkedOn :
    SupportFamilyCheckedOn fam_120_support fam_120_contains := by
  simpa [fam_120_contains] using oppOneMinusVarFirst_checkedOn fam_120_support

private theorem fam_120_killsOn :
    SupportFamilyKillsOn fam_120_support fam_120_contains :=
  SupportFamilyCheckedOn.kills fam_120_checkedOn

/-- Representative family `opp_1m_var_first|source=6bb5295405e440d65df3057c181ad1519da069779ffb5e3891847e2ca6c1c4ad`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_121_contains (r : Nat) (mask : SignMask) : Prop :=
  OppOneMinusVarFirst fam_121_support r mask

private theorem fam_121_checkedOn :
    SupportFamilyCheckedOn fam_121_support fam_121_contains := by
  simpa [fam_121_contains] using oppOneMinusVarFirst_checkedOn fam_121_support

private theorem fam_121_killsOn :
    SupportFamilyKillsOn fam_121_support fam_121_contains :=
  SupportFamilyCheckedOn.kills fam_121_checkedOn

/-- Representative family `opp_m1_var_first|source=baeec08c25d8d71425ba9ce04d08c470c714b8adc5ce0d42357637a5024655e1`.
It covered 1 observed GoodDirection survivors in the bounded scan. -/
private def fam_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_122_contains (r : Nat) (mask : SignMask) : Prop :=
  OppMinusOneVarFirst fam_122_support r mask

private theorem fam_122_checkedOn :
    SupportFamilyCheckedOn fam_122_support fam_122_contains := by
  simpa [fam_122_contains] using oppMinusOneVarFirst_checkedOn fam_122_support

private theorem fam_122_killsOn :
    SupportFamilyKillsOn fam_122_support fam_122_contains :=
  SupportFamilyCheckedOn.kills fam_122_checkedOn

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

theorem Group007_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group007
