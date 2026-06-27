import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

set_option linter.unusedVariables false

/-!
Generated source-position producer smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. Each producer turns semantic source-position
facts plus `SourceChecks` into `SourceIndexStateSourceFacts`.
Phase: 6Z.6K.8Y.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-- Source-position producer for source group `e6036b3771bec884271fd313167d8519f778f5bfa8a367817b10f62a89a8a658`.
Observed bounded GoodDirection cases: 421. -/
private def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_000_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm]

private def source_000_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_000_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_000_firstPosition r mask /\
    source_000_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_000_support r hlt mask

private def source_000_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 23 /\
      key.secondIndex = 0 /\
      key.support = source_000_support /\
      source_000_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩ Face.tmmm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_000_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_000_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_000_support] using hpos.2.2 hlt
    }

theorem source_000_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_000_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_000_producer.sourceFacts h

/-- Source-position producer for source group `769b51797f7673bfeb9398aa368722d1bd240c5dab2544ca613968cd12d1d04f`.
Observed bounded GoodDirection cases: 134. -/
private def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_001_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm]

private def source_001_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_001_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_001_firstPosition r mask /\
    source_001_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_001_support r hlt mask

private def source_001_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 24 /\
      key.secondIndex = 1 /\
      key.support = source_001_support /\
      source_001_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩ Face.tmmp 6 (by decide) hslot
        simpa [hfirst, hsupport, source_001_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_001_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_001_support] using hpos.2.2 hlt
    }

theorem source_001_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_001_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_001_producer.sourceFacts h

/-- Source-position producer for source group `102f94908cffedc720a55cfc27b35406493b72b1e82b3d7c1c24b827dcd70992`.
Observed bounded GoodDirection cases: 128. -/
private def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_002_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_002_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_002_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_002_firstPosition r mask /\
    source_002_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_002_support r hlt mask

private def source_002_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 0 /\
      key.support = source_002_support /\
      source_002_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_002_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_002_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_002_support] using hpos.2.2 hlt
    }

theorem source_002_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_002_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_002_producer.sourceFacts h

/-- Source-position producer for source group `a940ab9f3ad72969cb34647573c21a29f5a495fb263e3600e94bc0c2c4550404`.
Observed bounded GoodDirection cases: 102. -/
private def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_003_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp]

private def source_003_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_003_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_003_firstPosition r mask /\
    source_003_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_003_support r hlt mask

private def source_003_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 25 /\
      key.secondIndex = 2 /\
      key.support = source_003_support /\
      source_003_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpm 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩ Face.tmpm 7 (by decide) hslot
        simpa [hfirst, hsupport, source_003_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_003_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_003_support] using hpos.2.2 hlt
    }

theorem source_003_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_003_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_003_producer.sourceFacts h

/-- Source-position producer for source group `bd6920dd445394fa411d960ee0fa5e224849d9dca848e1d3076a39d3626dfd13`.
Observed bounded GoodDirection cases: 79. -/
private def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_004_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_004_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_004_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_004_firstPosition r mask /\
    source_004_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_004_support r hlt mask

private def source_004_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 7 /\
      key.support = source_004_support /\
      source_004_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_004_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_004_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_004_support] using hpos.2.2 hlt
    }

theorem source_004_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_004_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_004_producer.sourceFacts h

/-- Source-position producer for source group `ad267e9929734fb517e7637e7427ddc6db18b4b7f248a273978142252e902f28`.
Observed bounded GoodDirection cases: 44. -/
private def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_005_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_005_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_005_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_005_firstPosition r mask /\
    source_005_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_005_support r hlt mask

private def source_005_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 1 /\
      key.support = source_005_support /\
      source_005_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_005_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_005_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_005_support] using hpos.2.2 hlt
    }

theorem source_005_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_005_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_005_producer.sourceFacts h

/-- Source-position producer for source group `9accec1e031f7ece790b4aa4210485dc1f22e39bd32249b558d48ffc9b0d7a0b`.
Observed bounded GoodDirection cases: 30. -/
private def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_006_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_006_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_006_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_006_firstPosition r mask /\
    source_006_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_006_support r hlt mask

private def source_006_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 13 /\
      key.support = source_006_support /\
      source_006_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_006_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_006_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_006_support] using hpos.2.2 hlt
    }

theorem source_006_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_006_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_006_producer.sourceFacts h

/-- Source-position producer for source group `ae3bde4a1a4cc1ec75f1cb2bb1a8c46d60dc621e6564547419af063c86107bad`.
Observed bounded GoodDirection cases: 29. -/
private def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_007_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_007_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_007_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_007_firstPosition r mask /\
    source_007_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_007_support r hlt mask

private def source_007_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 15 /\
      key.support = source_007_support /\
      source_007_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_007_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_007_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_007_support] using hpos.2.2 hlt
    }

theorem source_007_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_007_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_007_producer.sourceFacts h

/-- Source-position producer for source group `42b2ca31b66f321779af52fa7d1705bf6225addea038120f1bf009a80458707e`.
Observed bounded GoodDirection cases: 23. -/
private def source_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_008_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_008_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_008_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_008_firstPosition r mask /\
    source_008_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_008_support r hlt mask

private def source_008_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 11 /\
      key.support = source_008_support /\
      source_008_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_008_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_008_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_008_support] using hpos.2.2 hlt
    }

theorem source_008_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_008_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_008_producer.sourceFacts h

/-- Source-position producer for source group `1d34e50ef50db67906309004624aa6d4e651dbd09c6d043c3d8c09105f94b4a9`.
Observed bounded GoodDirection cases: 22. -/
private def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_009_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_009_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_009_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_009_firstPosition r mask /\
    source_009_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_009_support r hlt mask

private def source_009_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 10 /\
      key.support = source_009_support /\
      source_009_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_009_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_009_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_009_support] using hpos.2.2 hlt
    }

theorem source_009_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_009_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_009_producer.sourceFacts h

/-- Source-position producer for source group `53696c059bbf359ca7a6c7accc921f9fa16dfba896d6532ca0eab7f9821a867c`.
Observed bounded GoodDirection cases: 22. -/
private def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_010_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm]

private def source_010_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_010_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_010_firstPosition r mask /\
    source_010_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_010_support r hlt mask

private def source_010_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 26 /\
      key.secondIndex = 3 /\
      key.support = source_010_support /\
      source_010_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpp 8 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩ Face.tmpp 8 (by decide) hslot
        simpa [hfirst, hsupport, source_010_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_010_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_010_support] using hpos.2.2 hlt
    }

theorem source_010_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_010_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_010_producer.sourceFacts h

/-- Source-position producer for source group `8b9860bf1b03698c2e5b816aa6d65a36f6345895abd06affbaa3b1e84c613982`.
Observed bounded GoodDirection cases: 21. -/
private def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_011_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

private def source_011_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_011_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_011_firstPosition r mask /\
    source_011_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_011_support r hlt mask

private def source_011_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 183 /\
      key.secondIndex = 0 /\
      key.support = source_011_support /\
      source_011_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨13, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_011_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_011_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_011_support] using hpos.2.2 hlt
    }

theorem source_011_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_011_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_011_producer.sourceFacts h

/-- Source-position producer for source group `cea4464df905000142edce9b11281690a008c9d5cd1e771dca605906f1732c50`.
Observed bounded GoodDirection cases: 20. -/
private def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_012_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_012_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_012_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_012_firstPosition r mask /\
    source_012_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_012_support r hlt mask

private def source_012_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 14 /\
      key.support = source_012_support /\
      source_012_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_012_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_012_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_012_support] using hpos.2.2 hlt
    }

theorem source_012_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_012_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_012_producer.sourceFacts h

/-- Source-position producer for source group `06a7f983ec54b3872bb5dd9456861860d39e3e54508d4af2b7d0394448a044b9`.
Observed bounded GoodDirection cases: 19. -/
private def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_013_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_013_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_013_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_013_firstPosition r mask /\
    source_013_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_013_support r hlt mask

private def source_013_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 0 /\
      key.support = source_013_support /\
      source_013_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_013_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_013_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_013_support] using hpos.2.2 hlt
    }

theorem source_013_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_013_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_013_producer.sourceFacts h

/-- Source-position producer for source group `11d11e966a166501fce2240603d022412ecfc147a743e9eeb858fff69d844ebb`.
Observed bounded GoodDirection cases: 19. -/
private def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_014_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_014_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_014_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_014_firstPosition r mask /\
    source_014_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_014_support r hlt mask

private def source_014_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 7 /\
      key.support = source_014_support /\
      source_014_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_014_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_014_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_014_support] using hpos.2.2 hlt
    }

theorem source_014_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_014_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_014_producer.sourceFacts h

/-- Source-position producer for source group `692bbc76b40817b5dcd7452f4db344bdbb5d2b802f23d64eb74e0f2f53b56cd4`.
Observed bounded GoodDirection cases: 19. -/
private def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_015_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_015_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_015_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_015_firstPosition r mask /\
    source_015_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_015_support r hlt mask

private def source_015_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 0 /\
      key.support = source_015_support /\
      source_015_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_015_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_015_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_015_support] using hpos.2.2 hlt
    }

theorem source_015_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_015_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_015_producer.sourceFacts h

/-- Source-position producer for source group `f5d3bc532de79b891d27a058711bfb9349a1f9c646078b419227a9526058c152`.
Observed bounded GoodDirection cases: 19. -/
private def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_016_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_016_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_016_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_016_firstPosition r mask /\
    source_016_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_016_support r hlt mask

private def source_016_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 16 /\
      key.support = source_016_support /\
      source_016_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_016_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_016_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_016_support] using hpos.2.2 hlt
    }

theorem source_016_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_016_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_016_producer.sourceFacts h

/-- Source-position producer for source group `bfaf1e6ce0ce1d61786e4a66aa7cc7fe1274f69ba512fb8d2b3b5615b469ad17`.
Observed bounded GoodDirection cases: 18. -/
private def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_017_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_017_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_017_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_017_firstPosition r mask /\
    source_017_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_017_support r hlt mask

private def source_017_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 12 /\
      key.support = source_017_support /\
      source_017_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_017_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_017_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_017_support] using hpos.2.2 hlt
    }

theorem source_017_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_017_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_017_producer.sourceFacts h

/-- Source-position producer for source group `3a2924aa5bdbec3a5329bab98173034188d967d93ba7605c96c85f733e8934bc`.
Observed bounded GoodDirection cases: 17. -/
private def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_018_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_018_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_018_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_018_firstPosition r mask /\
    source_018_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_018_support r hlt mask

private def source_018_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 0 /\
      key.support = source_018_support /\
      source_018_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_018_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_018_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_018_support] using hpos.2.2 hlt
    }

theorem source_018_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_018_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_018_producer.sourceFacts h

/-- Source-position producer for source group `3ec14ceb9b28b37bfe12fc6a8c3e6defb306f79d63b69d9cae8059ab8e87ed95`.
Observed bounded GoodDirection cases: 15. -/
private def source_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_019_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_019_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_019_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_019_firstPosition r mask /\
    source_019_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_019_support r hlt mask

private def source_019_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 0 /\
      key.support = source_019_support /\
      source_019_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_019_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_019_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_019_support] using hpos.2.2 hlt
    }

theorem source_019_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_019_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_019_producer.sourceFacts h

/-- Source-position producer for source group `c8554aaf4b73ef54193dc1098080e5fafa5f64822fb2c03410d5082efd63016e`.
Observed bounded GoodDirection cases: 14. -/
private def source_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_020_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_020_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_020_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_020_firstPosition r mask /\
    source_020_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_020_support r hlt mask

private def source_020_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 2 /\
      key.support = source_020_support /\
      source_020_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_020_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_020_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_020_support] using hpos.2.2 hlt
    }

theorem source_020_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_020_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_020_producer.sourceFacts h

/-- Source-position producer for source group `3940e6d91b3a2977beb1d4942a19557c49dabb0e49e65b72e3227a510d4b67d7`.
Observed bounded GoodDirection cases: 13. -/
private def source_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
private def source_021_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_021_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_021_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_021_firstPosition r mask /\
    source_021_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_021_support r hlt mask

private def source_021_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 7 /\
      key.support = source_021_support /\
      source_021_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_021_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_021_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_021_support] using hpos.2.2 hlt
    }

theorem source_021_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_021_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_021_producer.sourceFacts h

/-- Source-position producer for source group `5ce1ee1f662aea79fe8c212d24c3e68d99cff33e5b7b11e2d6750a5472d0dc92`.
Observed bounded GoodDirection cases: 12. -/
private def source_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_022_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_022_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_022_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_022_firstPosition r mask /\
    source_022_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_022_support r hlt mask

private def source_022_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 15 /\
      key.support = source_022_support /\
      source_022_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_022_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_022_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_022_support] using hpos.2.2 hlt
    }

theorem source_022_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_022_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_022_producer.sourceFacts h

/-- Source-position producer for source group `66c02cba404c532f1e9ea96ebfda39fd2349706278e115bea1674477e05dd3b2`.
Observed bounded GoodDirection cases: 11. -/
private def source_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_023_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_023_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_023_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_023_firstPosition r mask /\
    source_023_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_023_support r hlt mask

private def source_023_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 0 /\
      key.support = source_023_support /\
      source_023_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_023_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_023_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_023_support] using hpos.2.2 hlt
    }

theorem source_023_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_023_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_023_producer.sourceFacts h

/-- Source-position producer for source group `96db83cdd7dfbc306ef127f08ef94f5c3d71c27df72ac9f8545d0cd54e7b6dcb`.
Observed bounded GoodDirection cases: 11. -/
private def source_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_024_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_024_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_024_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_024_firstPosition r mask /\
    source_024_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_024_support r hlt mask

private def source_024_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 14 /\
      key.support = source_024_support /\
      source_024_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_024_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_024_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_024_support] using hpos.2.2 hlt
    }

theorem source_024_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_024_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_024_producer.sourceFacts h

/-- Source-position producer for source group `91680d53032fa2b164ce79bff664fd9b3c2668cecd33138eaecccb17f8b26b08`.
Observed bounded GoodDirection cases: 10. -/
private def source_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
private def source_025_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_025_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_025_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_025_firstPosition r mask /\
    source_025_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_025_support r hlt mask

private def source_025_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 3 /\
      key.support = source_025_support /\
      source_025_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_025_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_025_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_025_support] using hpos.2.2 hlt
    }

theorem source_025_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_025_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_025_producer.sourceFacts h

/-- Source-position producer for source group `b7ca266b8fa988d73c3b864dff16753f69846cf84ad358a64417c436bdeb8f8b`.
Observed bounded GoodDirection cases: 10. -/
private def source_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_026_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_026_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_026_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_026_firstPosition r mask /\
    source_026_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_026_support r hlt mask

private def source_026_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 0 /\
      key.support = source_026_support /\
      source_026_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_026_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_026_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_026_support] using hpos.2.2 hlt
    }

theorem source_026_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_026_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_026_producer.sourceFacts h

/-- Source-position producer for source group `fc805e5aa43cbf59fd54e11b9b4cc4bf2c46e5b085bcbdba6c2acab8157c72dc`.
Observed bounded GoodDirection cases: 10. -/
private def source_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_027_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_027_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_027_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_027_firstPosition r mask /\
    source_027_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_027_support r hlt mask

private def source_027_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 0 /\
      key.support = source_027_support /\
      source_027_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_027_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_027_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_027_support] using hpos.2.2 hlt
    }

theorem source_027_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_027_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_027_producer.sourceFacts h

/-- Source-position producer for source group `2cc68c3b6a2dde0b5894b80d15ebc02445fe20739f015077a5ff51c7ae15634c`.
Observed bounded GoodDirection cases: 9. -/
private def source_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_028_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_028_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_028_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_028_firstPosition r mask /\
    source_028_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_028_support r hlt mask

private def source_028_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 11 /\
      key.support = source_028_support /\
      source_028_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_028_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_028_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_028_support] using hpos.2.2 hlt
    }

theorem source_028_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_028_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_028_producer.sourceFacts h

/-- Source-position producer for source group `3290d20984474e3909c8a8dbc359f8163dd1eb7d94bb9866a2af2d916807585d`.
Observed bounded GoodDirection cases: 9. -/
private def source_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_029_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_029_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_029_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_029_firstPosition r mask /\
    source_029_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_029_support r hlt mask

private def source_029_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 11 /\
      key.support = source_029_support /\
      source_029_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_029_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_029_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_029_support] using hpos.2.2 hlt
    }

theorem source_029_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_029_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_029_producer.sourceFacts h

/-- Source-position producer for source group `46b74a54a57a25ed51e207d17428b8f88e3a57422f9046833bc6157d56270cb6`.
Observed bounded GoodDirection cases: 9. -/
private def source_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
private def source_030_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_030_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_030_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_030_firstPosition r mask /\
    source_030_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_030_support r hlt mask

private def source_030_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 44 /\
      key.secondIndex = 5 /\
      key.support = source_030_support /\
      source_030_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_030_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_030_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_030_support] using hpos.2.2 hlt
    }

theorem source_030_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_030_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_030_producer.sourceFacts h

/-- Source-position producer for source group `f6d33b37efe11ca04d4d63e6211fac6edae2c5f8c55bcd8093d7d8eab574be5b`.
Observed bounded GoodDirection cases: 9. -/
private def source_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
private def source_031_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_031_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_031_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_031_firstPosition r mask /\
    source_031_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_031_support r hlt mask

private def source_031_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 15 /\
      key.support = source_031_support /\
      source_031_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_031_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_031_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_031_support] using hpos.2.2 hlt
    }

theorem source_031_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_031_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_031_producer.sourceFacts h

/-- Source-position producer for source group `714cbfa66a98642d64c09ac23728c29c4968d8efd1b91af74d04f05c45dbf096`.
Observed bounded GoodDirection cases: 8. -/
private def source_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_032_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_032_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_032_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_032_firstPosition r mask /\
    source_032_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_032_support r hlt mask

private def source_032_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 0 /\
      key.support = source_032_support /\
      source_032_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨13, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_032_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_032_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_032_support] using hpos.2.2 hlt
    }

theorem source_032_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_032_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_032_producer.sourceFacts h

/-- Source-position producer for source group `5235f96701952b933dac7760828ad3a186c53ea499c754a3eef721e2d1a4f450`.
Observed bounded GoodDirection cases: 7. -/
private def source_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_033_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_033_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_033_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_033_firstPosition r mask /\
    source_033_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_033_support r hlt mask

private def source_033_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 13 /\
      key.support = source_033_support /\
      source_033_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_033_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_033_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_033_support] using hpos.2.2 hlt
    }

theorem source_033_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_033_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_033_producer.sourceFacts h

/-- Source-position producer for source group `a7877ce1c46d485047a80b1eccd5d4d7989cdb821193b5dc7ca680eae2097744`.
Observed bounded GoodDirection cases: 7. -/
private def source_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_034_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

private def source_034_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_034_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_034_firstPosition r mask /\
    source_034_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_034_support r hlt mask

private def source_034_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 184 /\
      key.secondIndex = 1 /\
      key.support = source_034_support /\
      source_034_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨13, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_034_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_034_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_034_support] using hpos.2.2 hlt
    }

theorem source_034_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_034_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_034_producer.sourceFacts h

/-- Source-position producer for source group `b7f13f08666187ae2ff10842e7f35bf0bdf9c969d7d944b20a0473f3707df6fe`.
Observed bounded GoodDirection cases: 7. -/
private def source_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_035_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_035_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_035_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_035_firstPosition r mask /\
    source_035_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_035_support r hlt mask

private def source_035_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 1 /\
      key.support = source_035_support /\
      source_035_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨13, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_035_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_035_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_035_support] using hpos.2.2 hlt
    }

theorem source_035_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_035_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_035_producer.sourceFacts h

/-- Source-position producer for source group `c5ec5e493c6af976a1b03f30aeb9d26ee4dd468f968a4361500947da83fa8093`.
Observed bounded GoodDirection cases: 7. -/
private def source_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_036_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_036_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_036_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_036_firstPosition r mask /\
    source_036_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_036_support r hlt mask

private def source_036_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 0 /\
      key.support = source_036_support /\
      source_036_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_036_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_036_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_036_support] using hpos.2.2 hlt
    }

theorem source_036_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_036_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_036_producer.sourceFacts h

/-- Source-position producer for source group `021f47f86b4b3fb33307baa849562c0b227409fe01f9975b8d574ee8cb4ddb01`.
Observed bounded GoodDirection cases: 6. -/
private def source_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_037_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_037_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_037_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_037_firstPosition r mask /\
    source_037_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_037_support r hlt mask

private def source_037_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 1 /\
      key.support = source_037_support /\
      source_037_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_037_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_037_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_037_support] using hpos.2.2 hlt
    }

theorem source_037_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_037_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_037_producer.sourceFacts h

/-- Source-position producer for source group `16a3d3e54d8e16a85fc508bb0843f087f24dfabc9831756d44d4a8431a94f258`.
Observed bounded GoodDirection cases: 6. -/
private def source_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_038_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_038_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_038_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_038_firstPosition r mask /\
    source_038_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_038_support r hlt mask

private def source_038_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 1 /\
      key.support = source_038_support /\
      source_038_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_038_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_038_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_038_support] using hpos.2.2 hlt
    }

theorem source_038_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_038_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_038_producer.sourceFacts h

/-- Source-position producer for source group `3ce052d543893c1cede10f0b9b363c6ff783fb2298e6854feb62cc31de50d4c5`.
Observed bounded GoodDirection cases: 6. -/
private def source_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
private def source_039_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_039_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_039_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_039_firstPosition r mask /\
    source_039_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_039_support r hlt mask

private def source_039_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 13 /\
      key.support = source_039_support /\
      source_039_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_039_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_039_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_039_support] using hpos.2.2 hlt
    }

theorem source_039_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_039_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_039_producer.sourceFacts h

/-- Source-position producer for source group `5092ca106263554f5b683c65f4f879203379892190c8cabe8cbd9b7e6d6f0091`.
Observed bounded GoodDirection cases: 6. -/
private def source_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_040_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

private def source_040_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_040_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_040_firstPosition r mask /\
    source_040_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_040_support r hlt mask

private def source_040_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 105 /\
      key.secondIndex = 0 /\
      key.support = source_040_support /\
      source_040_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_040_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_040_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_040_support] using hpos.2.2 hlt
    }

theorem source_040_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_040_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_040_producer.sourceFacts h

/-- Source-position producer for source group `514e679fb2cb513fea8452df5c6d54611177a5cf9b1976b20c0bc342cc7ee6d4`.
Observed bounded GoodDirection cases: 6. -/
private def source_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_041_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_041_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_041_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_041_firstPosition r mask /\
    source_041_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_041_support r hlt mask

private def source_041_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 0 /\
      key.support = source_041_support /\
      source_041_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.tmmm 6 (by decide) hslot
        simpa [hfirst, hsupport, source_041_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_041_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_041_support] using hpos.2.2 hlt
    }

theorem source_041_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_041_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_041_producer.sourceFacts h

/-- Source-position producer for source group `df66f4d09d995af9598edddf3f11fdf3faae819a11a4cf6f534a2a37f31d7c48`.
Observed bounded GoodDirection cases: 6. -/
private def source_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
private def source_042_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_042_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_042_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_042_firstPosition r mask /\
    source_042_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_042_support r hlt mask

private def source_042_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 16 /\
      key.support = source_042_support /\
      source_042_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_042_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_042_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_042_support] using hpos.2.2 hlt
    }

theorem source_042_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_042_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_042_producer.sourceFacts h

/-- Source-position producer for source group `3b2ecd7f1f860d940180e8edc9161ad12e089bf87d9755a00a9270c5672ca99b`.
Observed bounded GoodDirection cases: 5. -/
private def source_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_043_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_043_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_043_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_043_firstPosition r mask /\
    source_043_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_043_support r hlt mask

private def source_043_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 12 /\
      key.support = source_043_support /\
      source_043_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_043_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_043_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_043_support] using hpos.2.2 hlt
    }

theorem source_043_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_043_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_043_producer.sourceFacts h

/-- Source-position producer for source group `b262bda8a9b2bc998f6f5a46f6e8b1e9759df004acf04940922c2f40be3027c7`.
Observed bounded GoodDirection cases: 5. -/
private def source_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_044_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_044_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_044_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_044_firstPosition r mask /\
    source_044_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_044_support r hlt mask

private def source_044_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 1 /\
      key.support = source_044_support /\
      source_044_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_044_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_044_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_044_support] using hpos.2.2 hlt
    }

theorem source_044_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_044_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_044_producer.sourceFacts h

/-- Source-position producer for source group `b2680d819fee8747dcca856d2980d906bdf5e5ef0fb1042fb131650341dacbc1`.
Observed bounded GoodDirection cases: 5. -/
private def source_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_045_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_045_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_045_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_045_firstPosition r mask /\
    source_045_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_045_support r hlt mask

private def source_045_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 10 /\
      key.support = source_045_support /\
      source_045_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_045_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_045_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_045_support] using hpos.2.2 hlt
    }

theorem source_045_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_045_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_045_producer.sourceFacts h

/-- Source-position producer for source group `27a3084b923bb5236f8cc839b571250cffc7405f7417c98d5743dcc8c7d753d4`.
Observed bounded GoodDirection cases: 4. -/
private def source_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_046_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

private def source_046_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_046_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_046_firstPosition r mask /\
    source_046_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_046_support r hlt mask

private def source_046_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 121 /\
      key.secondIndex = 0 /\
      key.support = source_046_support /\
      source_046_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppp 12 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tppp 12 (by decide) hslot
        simpa [hfirst, hsupport, source_046_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_046_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_046_support] using hpos.2.2 hlt
    }

theorem source_046_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_046_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_046_producer.sourceFacts h

/-- Source-position producer for source group `eac8a8e11f7390ffd6117f5dcd089fe4d3a520218555c0ff166e5d1b2d304535`.
Observed bounded GoodDirection cases: 4. -/
private def source_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_047_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

private def source_047_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_047_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_047_firstPosition r mask /\
    source_047_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_047_support r hlt mask

private def source_047_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 147 /\
      key.secondIndex = 0 /\
      key.support = source_047_support /\
      source_047_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppp 12 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tppp 12 (by decide) hslot
        simpa [hfirst, hsupport, source_047_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_047_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_047_support] using hpos.2.2 hlt
    }

theorem source_047_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_047_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_047_producer.sourceFacts h

/-- Source-position producer for source group `0080d2169e5f320234753654ba1bd847fa2619afc8b075a94c578ca4f8f3b9ee`.
Observed bounded GoodDirection cases: 3. -/
private def source_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_048_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

private def source_048_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_048_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_048_firstPosition r mask /\
    source_048_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_048_support r hlt mask

private def source_048_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 106 /\
      key.secondIndex = 1 /\
      key.support = source_048_support /\
      source_048_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_048_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_048_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_048_support] using hpos.2.2 hlt
    }

theorem source_048_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_048_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_048_producer.sourceFacts h

/-- Source-position producer for source group `10fb7297a02c68cf49596ccac2193db7a7b2e20c6b165046ae872e25aaccfc86`.
Observed bounded GoodDirection cases: 3. -/
private def source_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_049_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_049_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_049_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_049_firstPosition r mask /\
    source_049_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_049_support r hlt mask

private def source_049_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 1 /\
      key.support = source_049_support /\
      source_049_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_049_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_049_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_049_support] using hpos.2.2 hlt
    }

theorem source_049_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_049_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_049_producer.sourceFacts h

/-- Source-position producer for source group `64fe078a0a250d964f3008d90e897412404e0cc786f6faf5a4783eaea38449b4`.
Observed bounded GoodDirection cases: 3. -/
private def source_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_050_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_050_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_050_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_050_firstPosition r mask /\
    source_050_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_050_support r hlt mask

private def source_050_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 2 /\
      key.support = source_050_support /\
      source_050_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_050_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_050_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_050_support] using hpos.2.2 hlt
    }

theorem source_050_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_050_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_050_producer.sourceFacts h

/-- Source-position producer for source group `7368049780bbf43add9863c6101eb0d4cd3834ff6d00889c4be0799b78a4996a`.
Observed bounded GoodDirection cases: 3. -/
private def source_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_051_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_051_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_051_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_051_firstPosition r mask /\
    source_051_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_051_support r hlt mask

private def source_051_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 115 /\
      key.secondIndex = 0 /\
      key.support = source_051_support /\
      source_051_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tmmm 6 (by decide) hslot
        simpa [hfirst, hsupport, source_051_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_051_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_051_support] using hpos.2.2 hlt
    }

theorem source_051_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_051_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_051_producer.sourceFacts h

/-- Source-position producer for source group `bc3c3f42aacb1d847258109c055cea04afc822f2739a74efdebc85827b65df42`.
Observed bounded GoodDirection cases: 3. -/
private def source_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_052_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_052_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_052_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_052_firstPosition r mask /\
    source_052_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_052_support r hlt mask

private def source_052_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 2 /\
      key.support = source_052_support /\
      source_052_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_052_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_052_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_052_support] using hpos.2.2 hlt
    }

theorem source_052_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_052_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_052_producer.sourceFacts h

/-- Source-position producer for source group `ce3322b8aaa21875ba5bbc49db950dd63e754b3498e8ca29d562f1d36e8297d9`.
Observed bounded GoodDirection cases: 3. -/
private def source_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_053_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_053_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_053_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_053_firstPosition r mask /\
    source_053_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_053_support r hlt mask

private def source_053_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 168 /\
      key.secondIndex = 1 /\
      key.support = source_053_support /\
      source_053_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.tmmp 7 (by decide) hslot
        simpa [hfirst, hsupport, source_053_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_053_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_053_support] using hpos.2.2 hlt
    }

theorem source_053_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_053_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_053_producer.sourceFacts h

/-- Source-position producer for source group `36eec823d5ba41c4a9e4265ec047b661da07f7adb499c0084faa69539f6df833`.
Observed bounded GoodDirection cases: 2. -/
private def source_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
private def source_054_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_054_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_054_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_054_firstPosition r mask /\
    source_054_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_054_support r hlt mask

private def source_054_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 10 /\
      key.support = source_054_support /\
      source_054_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_054_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_054_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_054_support] using hpos.2.2 hlt
    }

theorem source_054_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_054_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_054_producer.sourceFacts h

/-- Source-position producer for source group `63e7915585768679d25965847ecdf6cd5bac64d95a7ab04272f2741e2a36943a`.
Observed bounded GoodDirection cases: 2. -/
private def source_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_055_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_055_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_055_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_055_firstPosition r mask /\
    source_055_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_055_support r hlt mask

private def source_055_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 1 /\
      key.support = source_055_support /\
      source_055_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_055_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_055_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_055_support] using hpos.2.2 hlt
    }

theorem source_055_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_055_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_055_producer.sourceFacts h

/-- Source-position producer for source group `6f6d6a6023a5e161019f94f7a55b0822f48f5f64997f9ca7acae7509c8af8e65`.
Observed bounded GoodDirection cases: 2. -/
private def source_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_056_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_056_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_056_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_056_firstPosition r mask /\
    source_056_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_056_support r hlt mask

private def source_056_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 129 /\
      key.secondIndex = 2 /\
      key.support = source_056_support /\
      source_056_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tmmp 7 (by decide) hslot
        simpa [hfirst, hsupport, source_056_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_056_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_056_support] using hpos.2.2 hlt
    }

theorem source_056_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_056_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_056_producer.sourceFacts h

/-- Source-position producer for source group `a5857231036a8e1c27fa075ebed81e3a025d7ef170cef21a55a1520d311e11c1`.
Observed bounded GoodDirection cases: 2. -/
private def source_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
private def source_057_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_057_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_057_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_057_firstPosition r mask /\
    source_057_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_057_support r hlt mask

private def source_057_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 11 /\
      key.support = source_057_support /\
      source_057_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_057_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_057_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_057_support] using hpos.2.2 hlt
    }

theorem source_057_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_057_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_057_producer.sourceFacts h

/-- Source-position producer for source group `c7adc305f537d2b6caee36a1174826e86bf4307f0781368733fabc1121201665`.
Observed bounded GoodDirection cases: 2. -/
private def source_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
private def source_058_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_058_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_058_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_058_firstPosition r mask /\
    source_058_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_058_support r hlt mask

private def source_058_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 14 /\
      key.support = source_058_support /\
      source_058_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_058_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_058_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_058_support] using hpos.2.2 hlt
    }

theorem source_058_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_058_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_058_producer.sourceFacts h

/-- Source-position producer for source group `d7eceb9816d10bd7d38bd3b8bb132a7efa99fc38fde8edbb34f84d1cd377e09e`.
Observed bounded GoodDirection cases: 2. -/
private def source_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_059_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_059_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_059_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_059_firstPosition r mask /\
    source_059_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_059_support r hlt mask

private def source_059_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 12 /\
      key.support = source_059_support /\
      source_059_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_059_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_059_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_059_support] using hpos.2.2 hlt
    }

theorem source_059_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_059_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_059_producer.sourceFacts h

/-- Source-position producer for source group `16cacb415ed7eabd7b27729cd9bcd96dea765583f13e6b06e1297ba22fc94528`.
Observed bounded GoodDirection cases: 1. -/
private def source_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_060_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_060_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_060_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_060_firstPosition r mask /\
    source_060_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_060_support r hlt mask

private def source_060_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 142 /\
      key.secondIndex = 1 /\
      key.support = source_060_support /\
      source_060_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tmmp 7 (by decide) hslot
        simpa [hfirst, hsupport, source_060_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_060_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_060_support] using hpos.2.2 hlt
    }

theorem source_060_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_060_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_060_producer.sourceFacts h

/-- Source-position producer for source group `3acf75b0368568ac92f7f30f1945e86dcf9f597b55082f79a406da198e07b216`.
Observed bounded GoodDirection cases: 1. -/
private def source_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
private def source_061_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_061_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_061_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_061_firstPosition r mask /\
    source_061_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_061_support r hlt mask

private def source_061_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 12 /\
      key.support = source_061_support /\
      source_061_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_061_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_061_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_061_support] using hpos.2.2 hlt
    }

theorem source_061_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_061_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_061_producer.sourceFacts h

/-- Source-position producer for source group `3ef4896247432b1a2431f95273664fa7fb8d37522534e387ab5f8b385c90a0cf`.
Observed bounded GoodDirection cases: 1. -/
private def source_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_062_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_062_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_062_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_062_firstPosition r mask /\
    source_062_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_062_support r hlt mask

private def source_062_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 2 /\
      key.support = source_062_support /\
      source_062_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_062_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_062_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_062_support] using hpos.2.2 hlt
    }

theorem source_062_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_062_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_062_producer.sourceFacts h

/-- Source-position producer for source group `4d8e6947f2ddc6a3618ab93fdf1006ff3b36f8549c5748fd7576f7888e2bc7ff`.
Observed bounded GoodDirection cases: 1. -/
private def source_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_063_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_063_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_063_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_063_firstPosition r mask /\
    source_063_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_063_support r hlt mask

private def source_063_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 1 /\
      key.support = source_063_support /\
      source_063_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_063_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_063_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_063_support] using hpos.2.2 hlt
    }

theorem source_063_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_063_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_063_producer.sourceFacts h

/-- Source-position producer for source group `5d6014683304aed3e28830656ee73df7b399bbd023093abecc598c2b5ff207d7`.
Observed bounded GoodDirection cases: 1. -/
private def source_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_064_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_064_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_064_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_064_firstPosition r mask /\
    source_064_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_064_support r hlt mask

private def source_064_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 1 /\
      key.support = source_064_support /\
      source_064_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_064_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_064_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_064_support] using hpos.2.2 hlt
    }

theorem source_064_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_064_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_064_producer.sourceFacts h

/-- Source-position producer for source group `6d38fb5e536e38a81b47077b24c2e0182b86ffd406d33e3acb537bf44b5aecd2`.
Observed bounded GoodDirection cases: 1. -/
private def source_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_065_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_065_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_065_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_065_firstPosition r mask /\
    source_065_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_065_support r hlt mask

private def source_065_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 1 /\
      key.support = source_065_support /\
      source_065_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_065_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_065_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_065_support] using hpos.2.2 hlt
    }

theorem source_065_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_065_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_065_producer.sourceFacts h

/-- Source-position producer for source group `7dc53a82bb503c32e7263f3e9d693f015ab6858f0100452b7570f1aa77a4133c`.
Observed bounded GoodDirection cases: 1. -/
private def source_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
private def source_066_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_066_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_066_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_066_firstPosition r mask /\
    source_066_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_066_support r hlt mask

private def source_066_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 2 /\
      key.support = source_066_support /\
      source_066_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_066_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_066_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_066_support] using hpos.2.2 hlt
    }

theorem source_066_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_066_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_066_producer.sourceFacts h

/-- Source-position producer for source group `a8e6642b8ec7292baf6d65c2cd38554be67fd5f8d772c20a8a26dbad0797ae2d`.
Observed bounded GoodDirection cases: 1. -/
private def source_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_067_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_067_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_067_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_067_firstPosition r mask /\
    source_067_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_067_support r hlt mask

private def source_067_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 141 /\
      key.secondIndex = 0 /\
      key.support = source_067_support /\
      source_067_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tmmm 6 (by decide) hslot
        simpa [hfirst, hsupport, source_067_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_067_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_067_support] using hpos.2.2 hlt
    }

theorem source_067_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_067_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_067_producer.sourceFacts h

/-- Source-position producer for source group `c741f9357cb8d22c7fc023467f89b2c238226094138641ff1b529c8bec947c5c`.
Observed bounded GoodDirection cases: 1. -/
private def source_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
private def source_068_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_068_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_068_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_068_firstPosition r mask /\
    source_068_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_068_support r hlt mask

private def source_068_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 0 /\
      key.support = source_068_support /\
      source_068_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_068_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_068_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_068_support] using hpos.2.2 hlt
    }

theorem source_068_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_068_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_068_producer.sourceFacts h

/-- Source-position producer for source group `e11276c9d62904761e5dd669b875363481744d1a8b42c14892f823c9770cc9f4`.
Observed bounded GoodDirection cases: 1. -/
private def source_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_069_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_069_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_069_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_069_firstPosition r mask /\
    source_069_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_069_support r hlt mask

private def source_069_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 1 /\
      key.support = source_069_support /\
      source_069_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_069_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_069_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_069_support] using hpos.2.2 hlt
    }

theorem source_069_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_069_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_069_producer.sourceFacts h

/-- Source-position producer for source group `e31d66d4944bc99b32bb4f5ef1d42f2000ed437ea61790d150c0d92c6d0ab2be`.
Observed bounded GoodDirection cases: 1. -/
private def source_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_070_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

private def source_070_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_070_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_070_firstPosition r mask /\
    source_070_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_070_support r hlt mask

private def source_070_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 1 /\
      key.support = source_070_support /\
      source_070_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_070_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_070_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_070_support] using hpos.2.2 hlt
    }

theorem source_070_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_070_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_070_producer.sourceFacts h

/-- Source-position producer for source group `f3eb21134ab24754c014506e4209bf469d3cd76890b9bf4b275b751a7e056544`.
Observed bounded GoodDirection cases: 1. -/
private def source_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
private def source_071_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]

private def source_071_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

private def source_071_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_071_firstPosition r mask /\
    source_071_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_071_support r hlt mask

private def source_071_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 120 /\
      key.secondIndex = 1 /\
      key.support = source_071_support /\
      source_071_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppm 11 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tppm 11 (by decide) hslot
        simpa [hfirst, hsupport, source_071_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_071_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_071_support] using hpos.2.2 hlt
    }

theorem source_071_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_071_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_071_producer.sourceFacts h

theorem sourcePositionProducerSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke
