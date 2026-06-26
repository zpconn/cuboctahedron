import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

/-!
Generated bounded symbolic representative row-family group.

This module exports a family-union predicate and theorem using the
source-agreement/row-property split.  It contains no ordinary
translation certificates and no per-rank certificate replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group001

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts

set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

/-- Symbolic representative family `opp_m1_var_first|source=87c7a65690db6bcc87f93049b69a1014322e0bf385998d3f1fe6e9c452eda3ba|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 63 observed GoodDirection survivors in the bounded scan. -/
private def fam_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_016_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_016_support r mask /\
    OppMinusOneVarFirstRows fam_016_support r mask

private theorem fam_016_checkedOn :
    SupportFamilyCheckedOn fam_016_support fam_016_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_016_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_016_killsOn :
    SupportFamilyKillsOn fam_016_support fam_016_contains :=
  SupportFamilyCheckedOn.kills fam_016_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=f56d8c7c165a6c58a5673ea342474d21c4240a55b9892b63393fa7408652b7ce|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 54 observed GoodDirection survivors in the bounded scan. -/
private def fam_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_017_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_017_support r mask /\
    EqEqPosVarFirstRows fam_017_support r mask

private theorem fam_017_checkedOn :
    SupportFamilyCheckedOn fam_017_support fam_017_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_017_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_017_killsOn :
    SupportFamilyKillsOn fam_017_support fam_017_contains :=
  SupportFamilyCheckedOn.kills fam_017_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=7360ea999a5754c1cfe664453f5df1487c1114a2ff9ac3e5f4cbe3acd8fe8a28|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 48 observed GoodDirection survivors in the bounded scan. -/
private def fam_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_018_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_018_support r mask /\
    EqEqPosVarFirstRows fam_018_support r mask

private theorem fam_018_checkedOn :
    SupportFamilyCheckedOn fam_018_support fam_018_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_018_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_018_killsOn :
    SupportFamilyKillsOn fam_018_support fam_018_contains :=
  SupportFamilyCheckedOn.kills fam_018_checkedOn

/-- Symbolic representative family `opp_1m_var_second|source=2ff03e5a6064fae3d4f1d07e54e292a1575efe23955fe0d08665c7e6f281ae33|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`.
It covered 48 observed GoodDirection survivors in the bounded scan. -/
private def fam_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩

private abbrev fam_019_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_019_support r mask /\
    OppOneMinusVarSecondRows fam_019_support r mask

private theorem fam_019_checkedOn :
    SupportFamilyCheckedOn fam_019_support fam_019_contains := by
  intro r hlt mask h
  exact oppOneMinusVarSecond_checkedOn fam_019_support r hlt mask
    (oppOneMinusVarSecond_of_symbolic h.1 h.2)

private theorem fam_019_killsOn :
    SupportFamilyKillsOn fam_019_support fam_019_contains :=
  SupportFamilyCheckedOn.kills fam_019_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=bdd6ae8abddb8a187048c67c58ff66a67d49842cb4cf1f7e57055893351b594f|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 47 observed GoodDirection survivors in the bounded scan. -/
private def fam_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_020_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_020_support r mask /\
    EqEqPosVarFirstRows fam_020_support r mask

private theorem fam_020_checkedOn :
    SupportFamilyCheckedOn fam_020_support fam_020_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_020_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_020_killsOn :
    SupportFamilyKillsOn fam_020_support fam_020_contains :=
  SupportFamilyCheckedOn.kills fam_020_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=1acdb4a1fe8548ab4040cd8bcb9404c787bbf99afa29f05268253b2fefdaa4f4|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 42 observed GoodDirection survivors in the bounded scan. -/
private def fam_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_021_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_021_support r mask /\
    EqEqPosVarFirstRows fam_021_support r mask

private theorem fam_021_checkedOn :
    SupportFamilyCheckedOn fam_021_support fam_021_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_021_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_021_killsOn :
    SupportFamilyKillsOn fam_021_support fam_021_contains :=
  SupportFamilyCheckedOn.kills fam_021_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=ac511c5d05ada275de7b3ad6ae6965d5763f322166cf3d35883813419c9799a2|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 40 observed GoodDirection survivors in the bounded scan. -/
private def fam_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_022_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_022_support r mask /\
    EqEqPosVarFirstRows fam_022_support r mask

private theorem fam_022_checkedOn :
    SupportFamilyCheckedOn fam_022_support fam_022_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_022_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_022_killsOn :
    SupportFamilyKillsOn fam_022_support fam_022_contains :=
  SupportFamilyCheckedOn.kills fam_022_checkedOn

/-- Symbolic representative family `opp_m1_var_second|source=8af698b6859a00ba828b63e36430c4f64a3caf0ad66415a34e3af5b4242c4a98|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`.
It covered 40 observed GoodDirection survivors in the bounded scan. -/
private def fam_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩

private abbrev fam_023_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_023_support r mask /\
    OppMinusOneVarSecondRows fam_023_support r mask

private theorem fam_023_checkedOn :
    SupportFamilyCheckedOn fam_023_support fam_023_contains := by
  intro r hlt mask h
  exact oppMinusOneVarSecond_checkedOn fam_023_support r hlt mask
    (oppMinusOneVarSecond_of_symbolic h.1 h.2)

private theorem fam_023_killsOn :
    SupportFamilyKillsOn fam_023_support fam_023_contains :=
  SupportFamilyCheckedOn.kills fam_023_checkedOn

/-- Symbolic representative family `opp_m1_var_first|source=579f0de79872f6ec351e4d6eb3ef929a6d8db384f364e27c0394a4be95e70b66|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`.
It covered 38 observed GoodDirection survivors in the bounded scan. -/
private def fam_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩

private abbrev fam_024_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_024_support r mask /\
    OppMinusOneVarFirstRows fam_024_support r mask

private theorem fam_024_checkedOn :
    SupportFamilyCheckedOn fam_024_support fam_024_contains := by
  intro r hlt mask h
  exact oppMinusOneVarFirst_checkedOn fam_024_support r hlt mask
    (oppMinusOneVarFirst_of_symbolic h.1 h.2)

private theorem fam_024_killsOn :
    SupportFamilyKillsOn fam_024_support fam_024_contains :=
  SupportFamilyCheckedOn.kills fam_024_checkedOn

/-- Symbolic representative family `opp_1m_var_second|source=d54a2c889fcef309a0ac57baed60019f5ac403474816c214742668137ff16d26|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`.
It covered 35 observed GoodDirection survivors in the bounded scan. -/
private def fam_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩

private abbrev fam_025_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_025_support r mask /\
    OppOneMinusVarSecondRows fam_025_support r mask

private theorem fam_025_checkedOn :
    SupportFamilyCheckedOn fam_025_support fam_025_contains := by
  intro r hlt mask h
  exact oppOneMinusVarSecond_checkedOn fam_025_support r hlt mask
    (oppOneMinusVarSecond_of_symbolic h.1 h.2)

private theorem fam_025_killsOn :
    SupportFamilyKillsOn fam_025_support fam_025_contains :=
  SupportFamilyCheckedOn.kills fam_025_checkedOn

/-- Symbolic representative family `opp_m1_var_second|source=f6e07e76b2998324712d885a7137f176cfe062aba6228d33dfcb73dbc74dee74|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`.
It covered 34 observed GoodDirection survivors in the bounded scan. -/
private def fam_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩

private abbrev fam_026_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_026_support r mask /\
    OppMinusOneVarSecondRows fam_026_support r mask

private theorem fam_026_checkedOn :
    SupportFamilyCheckedOn fam_026_support fam_026_contains := by
  intro r hlt mask h
  exact oppMinusOneVarSecond_checkedOn fam_026_support r hlt mask
    (oppMinusOneVarSecond_of_symbolic h.1 h.2)

private theorem fam_026_killsOn :
    SupportFamilyKillsOn fam_026_support fam_026_contains :=
  SupportFamilyCheckedOn.kills fam_026_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=3c5c45bebff1cf6eb21df0ca45ee1920d1a0fa521d9eb01627bbffd3b86889a4|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 33 observed GoodDirection survivors in the bounded scan. -/
private def fam_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_027_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_027_support r mask /\
    EqEqPosVarFirstRows fam_027_support r mask

private theorem fam_027_checkedOn :
    SupportFamilyCheckedOn fam_027_support fam_027_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_027_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_027_killsOn :
    SupportFamilyKillsOn fam_027_support fam_027_contains :=
  SupportFamilyCheckedOn.kills fam_027_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_first|source=fca4f0e528b4b540c00288af18d713166d9c385b8dd93ebae9db50bc1d5a7bd7|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`.
It covered 32 observed GoodDirection survivors in the bounded scan. -/
private def fam_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

private abbrev fam_028_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_028_support r mask /\
    EqEqPosVarFirstRows fam_028_support r mask

private theorem fam_028_checkedOn :
    SupportFamilyCheckedOn fam_028_support fam_028_contains := by
  intro r hlt mask h
  exact eqEqPosVarFirst_checkedOn fam_028_support r hlt mask
    (eqEqPosVarFirst_of_symbolic h.1 h.2)

private theorem fam_028_killsOn :
    SupportFamilyKillsOn fam_028_support fam_028_contains :=
  SupportFamilyCheckedOn.kills fam_028_checkedOn

/-- Symbolic representative family `eq_eq_pos_var_second|source=d44e0f54769b96479ac8af87903afa3c4e016cf6948f41c229290909e5823d59|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`.
It covered 32 observed GoodDirection survivors in the bounded scan. -/
private def fam_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩

private abbrev fam_029_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_029_support r mask /\
    EqEqPosVarSecondRows fam_029_support r mask

private theorem fam_029_checkedOn :
    SupportFamilyCheckedOn fam_029_support fam_029_contains := by
  intro r hlt mask h
  exact eqEqPosVarSecond_checkedOn fam_029_support r hlt mask
    (eqEqPosVarSecond_of_symbolic h.1 h.2)

private theorem fam_029_killsOn :
    SupportFamilyKillsOn fam_029_support fam_029_contains :=
  SupportFamilyCheckedOn.kills fam_029_checkedOn

/-- Symbolic representative family `opp_1m_var_second|source=8ddcdceac923c274dfa75aa9a04e638162605f4d7f26962e09785dd81fc51391|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`.
It covered 32 observed GoodDirection survivors in the bounded scan. -/
private def fam_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩

private abbrev fam_030_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_030_support r mask /\
    OppOneMinusVarSecondRows fam_030_support r mask

private theorem fam_030_checkedOn :
    SupportFamilyCheckedOn fam_030_support fam_030_contains := by
  intro r hlt mask h
  exact oppOneMinusVarSecond_checkedOn fam_030_support r hlt mask
    (oppOneMinusVarSecond_of_symbolic h.1 h.2)

private theorem fam_030_killsOn :
    SupportFamilyKillsOn fam_030_support fam_030_contains :=
  SupportFamilyCheckedOn.kills fam_030_checkedOn

/-- Symbolic representative family `opp_1m_var_first|source=a2fbeafee9559eb340d6d09c521de51f8a5acab7c710d6875570fdc0c9c738cc|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`.
It covered 31 observed GoodDirection survivors in the bounded scan. -/
private def fam_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩

private abbrev fam_031_contains (r : Nat) (mask : SignMask) : Prop :=
  SourceAgrees fam_031_support r mask /\
    OppOneMinusVarFirstRows fam_031_support r mask

private theorem fam_031_checkedOn :
    SupportFamilyCheckedOn fam_031_support fam_031_contains := by
  intro r hlt mask h
  exact oppOneMinusVarFirst_checkedOn fam_031_support r hlt mask
    (oppOneMinusVarFirst_of_symbolic h.1 h.2)

private theorem fam_031_killsOn :
    SupportFamilyKillsOn fam_031_support fam_031_contains :=
  SupportFamilyCheckedOn.kills fam_031_checkedOn

inductive Group001Covered : Nat -> SignMask -> Prop
  | fam_016 {r : Nat} {mask : SignMask} (h : fam_016_contains r mask) : Group001Covered r mask
  | fam_017 {r : Nat} {mask : SignMask} (h : fam_017_contains r mask) : Group001Covered r mask
  | fam_018 {r : Nat} {mask : SignMask} (h : fam_018_contains r mask) : Group001Covered r mask
  | fam_019 {r : Nat} {mask : SignMask} (h : fam_019_contains r mask) : Group001Covered r mask
  | fam_020 {r : Nat} {mask : SignMask} (h : fam_020_contains r mask) : Group001Covered r mask
  | fam_021 {r : Nat} {mask : SignMask} (h : fam_021_contains r mask) : Group001Covered r mask
  | fam_022 {r : Nat} {mask : SignMask} (h : fam_022_contains r mask) : Group001Covered r mask
  | fam_023 {r : Nat} {mask : SignMask} (h : fam_023_contains r mask) : Group001Covered r mask
  | fam_024 {r : Nat} {mask : SignMask} (h : fam_024_contains r mask) : Group001Covered r mask
  | fam_025 {r : Nat} {mask : SignMask} (h : fam_025_contains r mask) : Group001Covered r mask
  | fam_026 {r : Nat} {mask : SignMask} (h : fam_026_contains r mask) : Group001Covered r mask
  | fam_027 {r : Nat} {mask : SignMask} (h : fam_027_contains r mask) : Group001Covered r mask
  | fam_028 {r : Nat} {mask : SignMask} (h : fam_028_contains r mask) : Group001Covered r mask
  | fam_029 {r : Nat} {mask : SignMask} (h : fam_029_contains r mask) : Group001Covered r mask
  | fam_030 {r : Nat} {mask : SignMask} (h : fam_030_contains r mask) : Group001Covered r mask
  | fam_031 {r : Nat} {mask : SignMask} (h : fam_031_contains r mask) : Group001Covered r mask

theorem Group001GoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : Group001Covered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | fam_016 h =>
      exact fam_016_killsOn r hlt mask h
  | fam_017 h =>
      exact fam_017_killsOn r hlt mask h
  | fam_018 h =>
      exact fam_018_killsOn r hlt mask h
  | fam_019 h =>
      exact fam_019_killsOn r hlt mask h
  | fam_020 h =>
      exact fam_020_killsOn r hlt mask h
  | fam_021 h =>
      exact fam_021_killsOn r hlt mask h
  | fam_022 h =>
      exact fam_022_killsOn r hlt mask h
  | fam_023 h =>
      exact fam_023_killsOn r hlt mask h
  | fam_024 h =>
      exact fam_024_killsOn r hlt mask h
  | fam_025 h =>
      exact fam_025_killsOn r hlt mask h
  | fam_026 h =>
      exact fam_026_killsOn r hlt mask h
  | fam_027 h =>
      exact fam_027_killsOn r hlt mask h
  | fam_028 h =>
      exact fam_028_killsOn r hlt mask h
  | fam_029 h =>
      exact fam_029_killsOn r hlt mask h
  | fam_030 h =>
      exact fam_030_killsOn r hlt mask h
  | fam_031 h =>
      exact fam_031_killsOn r hlt mask h

theorem Group001_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group001
