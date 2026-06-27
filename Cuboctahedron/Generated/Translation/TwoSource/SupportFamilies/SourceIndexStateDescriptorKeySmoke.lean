import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

/-!
Generated descriptor-key membership smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded replay proof. It proves that selected descriptor-key matches route
to classifier branches for Phase 6Z.6K.8N.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorKeySmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

set_option linter.unusedVariables false

/-- Descriptor-key smoke family `07df79ba535ad420c5b600b5315e79c9af7b32caa4c46b14074a0a6f51780199`.
Observed bounded GoodDirection cases: 421. -/
private def fam_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_000_key : SourceIndexStateKey where
  firstIndex := 23
  secondIndex := 0
  support := fam_000_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key smoke family `eb4c456fc66410a7b8aa45c64cb8e7e30799ef477fdc1b2697e1e1f95417a217`.
Observed bounded GoodDirection cases: 134. -/
private def fam_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def fam_001_key : SourceIndexStateKey where
  firstIndex := 24
  secondIndex := 1
  support := fam_001_support
  template := SourceIndexTemplate.oppOneMinusVarFirst

/-- Descriptor-key smoke family `54d0c8c40e9b0d9f9519cb7c7408f01fbde155d55fa47406050bae66230fa261`.
Observed bounded GoodDirection cases: 128. -/
private def fam_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def fam_002_key : SourceIndexStateKey where
  firstIndex := 83
  secondIndex := 0
  support := fam_002_support
  template := SourceIndexTemplate.eqEqPosVarFirst

/-- Descriptor-key smoke family `a781759219e5c92e7bf68c6cb4c21987fb5a17290c17eb050d2c16c071373e07`.
Observed bounded GoodDirection cases: 102. -/
private def fam_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def fam_003_key : SourceIndexStateKey where
  firstIndex := 25
  secondIndex := 2
  support := fam_003_support
  template := SourceIndexTemplate.oppMinusOneVarFirst

/-- Descriptor-key smoke family `976bc3a2ee25ce8a02c2dddf48cec166060bf46e866b86a4ef0107b559468085`.
Observed bounded GoodDirection cases: 79. -/
private def fam_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def fam_004_key : SourceIndexStateKey where
  firstIndex := 0
  secondIndex := 7
  support := fam_004_support
  template := SourceIndexTemplate.eqEqPosVarSecond

inductive KeyClassifierApplies : Nat -> SignMask -> Prop
  | fam000 {r : Nat} {mask : SignMask} (h : fam_000_key.Matches r mask) : KeyClassifierApplies r mask
  | fam001 {r : Nat} {mask : SignMask} (h : fam_001_key.Matches r mask) : KeyClassifierApplies r mask
  | fam002 {r : Nat} {mask : SignMask} (h : fam_002_key.Matches r mask) : KeyClassifierApplies r mask
  | fam003 {r : Nat} {mask : SignMask} (h : fam_003_key.Matches r mask) : KeyClassifierApplies r mask
  | fam004 {r : Nat} {mask : SignMask} (h : fam_004_key.Matches r mask) : KeyClassifierApplies r mask

def keyClassifierFamily : RowPropertyMembershipFamily where
  Applies := KeyClassifierApplies
  covered := by
    intro r mask h
    cases h with
    | fam000 h =>
        exact fam_000_key.covered_of_matches h
    | fam001 h =>
        exact fam_001_key.covered_of_matches h
    | fam002 h =>
        exact fam_002_key.covered_of_matches h
    | fam003 h =>
        exact fam_003_key.covered_of_matches h
    | fam004 h =>
        exact fam_004_key.covered_of_matches h

theorem keyClassifierKillsOn : keyClassifierFamily.KillsOn :=
  keyClassifierFamily.killsOn

theorem fam_000_keyImpliesClassifier
    {r : Nat} {mask : SignMask}
    (h : fam_000_key.Matches r mask) :
    KeyClassifierApplies r mask :=
  KeyClassifierApplies.fam000 h

theorem fam_000_keyGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_000_key.Matches r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  keyClassifierKillsOn r hlt mask (fam_000_keyImpliesClassifier h)

theorem fam_001_keyImpliesClassifier
    {r : Nat} {mask : SignMask}
    (h : fam_001_key.Matches r mask) :
    KeyClassifierApplies r mask :=
  KeyClassifierApplies.fam001 h

theorem fam_001_keyGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_001_key.Matches r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  keyClassifierKillsOn r hlt mask (fam_001_keyImpliesClassifier h)

theorem fam_002_keyImpliesClassifier
    {r : Nat} {mask : SignMask}
    (h : fam_002_key.Matches r mask) :
    KeyClassifierApplies r mask :=
  KeyClassifierApplies.fam002 h

theorem fam_002_keyGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_002_key.Matches r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  keyClassifierKillsOn r hlt mask (fam_002_keyImpliesClassifier h)

theorem fam_003_keyImpliesClassifier
    {r : Nat} {mask : SignMask}
    (h : fam_003_key.Matches r mask) :
    KeyClassifierApplies r mask :=
  KeyClassifierApplies.fam003 h

theorem fam_003_keyGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_003_key.Matches r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  keyClassifierKillsOn r hlt mask (fam_003_keyImpliesClassifier h)

theorem fam_004_keyImpliesClassifier
    {r : Nat} {mask : SignMask}
    (h : fam_004_key.Matches r mask) :
    KeyClassifierApplies r mask :=
  KeyClassifierApplies.fam004 h

theorem fam_004_keyGoodKilled
    {r : Nat} {hlt : r < numPairWords} {mask : SignMask}
    (h : fam_004_key.Matches r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=
  keyClassifierKillsOn r hlt mask (fam_004_keyImpliesClassifier h)

theorem sourceIndexStateDescriptorKeySmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorKeySmoke
