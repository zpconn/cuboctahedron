import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

set_option linter.unusedVariables false

/-!
Generated source-position producer smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. Each producer turns semantic source-position
facts plus `SourceChecks` into `SourceIndexStateSourceFacts`.
Phase: 6Z.6K.8AP.16DU.9IQ source-position producers.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerDU9IQSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-- Source-position producer for source group `e6036b3771bec884271fd313167d8519f778f5bfa8a367817b10f62a89a8a658`.
Observed bounded GoodDirection cases: 20. -/
def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_000_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm]

def source_000_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_000_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_000_firstPosition r mask /\
    source_000_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_000_support r hlt mask

def source_000_producer : SourceIndexStateSourceProducer where
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
Observed bounded GoodDirection cases: 9. -/
def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_001_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm]

def source_001_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_001_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_001_firstPosition r mask /\
    source_001_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_001_support r hlt mask

def source_001_producer : SourceIndexStateSourceProducer where
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

/-- Source-position producer for source group `bd6920dd445394fa411d960ee0fa5e224849d9dca848e1d3076a39d3626dfd13`.
Observed bounded GoodDirection cases: 7. -/
def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_002_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_002_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_002_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_002_firstPosition r mask /\
    source_002_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_002_support r hlt mask

def source_002_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 7 /\
      key.support = source_002_support /\
      source_002_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_002_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_002_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_002_support] using hpos.2.2 hlt
    }

theorem source_002_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_002_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_002_producer.sourceFacts h

/-- Source-position producer for source group `9accec1e031f7ece790b4aa4210485dc1f22e39bd32249b558d48ffc9b0d7a0b`.
Observed bounded GoodDirection cases: 6. -/
def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_003_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_003_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_003_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_003_firstPosition r mask /\
    source_003_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_003_support r hlt mask

def source_003_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 13 /\
      key.support = source_003_support /\
      source_003_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_003_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_003_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_003_support] using hpos.2.2 hlt
    }

theorem source_003_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_003_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_003_producer.sourceFacts h

/-- Source-position producer for source group `3a2924aa5bdbec3a5329bab98173034188d967d93ba7605c96c85f733e8934bc`.
Observed bounded GoodDirection cases: 3. -/
def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_004_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_004_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_004_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_004_firstPosition r mask /\
    source_004_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_004_support r hlt mask

def source_004_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 0 /\
      key.support = source_004_support /\
      source_004_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_004_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_004_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_004_support] using hpos.2.2 hlt
    }

theorem source_004_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_004_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_004_producer.sourceFacts h

/-- Source-position producer for source group `692bbc76b40817b5dcd7452f4db344bdbb5d2b802f23d64eb74e0f2f53b56cd4`.
Observed bounded GoodDirection cases: 3. -/
def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_005_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_005_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_005_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_005_firstPosition r mask /\
    source_005_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_005_support r hlt mask

def source_005_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 0 /\
      key.support = source_005_support /\
      source_005_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_005_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_005_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_005_support] using hpos.2.2 hlt
    }

theorem source_005_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_005_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_005_producer.sourceFacts h

/-- Source-position producer for source group `a940ab9f3ad72969cb34647573c21a29f5a495fb263e3600e94bc0c2c4550404`.
Observed bounded GoodDirection cases: 3. -/
def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_006_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp]

def source_006_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_006_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_006_firstPosition r mask /\
    source_006_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_006_support r hlt mask

def source_006_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 25 /\
      key.secondIndex = 2 /\
      key.support = source_006_support /\
      source_006_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_006_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_006_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_006_support] using hpos.2.2 hlt
    }

theorem source_006_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_006_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_006_producer.sourceFacts h

/-- Source-position producer for source group `ad267e9929734fb517e7637e7427ddc6db18b4b7f248a273978142252e902f28`.
Observed bounded GoodDirection cases: 3. -/
def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_007_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_007_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_007_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_007_firstPosition r mask /\
    source_007_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_007_support r hlt mask

def source_007_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 1 /\
      key.support = source_007_support /\
      source_007_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_007_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_007_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_007_support] using hpos.2.2 hlt
    }

theorem source_007_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_007_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_007_producer.sourceFacts h

/-- Source-position producer for source group `c8554aaf4b73ef54193dc1098080e5fafa5f64822fb2c03410d5082efd63016e`.
Observed bounded GoodDirection cases: 3. -/
def source_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_008_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_008_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_008_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_008_firstPosition r mask /\
    source_008_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_008_support r hlt mask

def source_008_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 2 /\
      key.support = source_008_support /\
      source_008_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_008_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_008_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_008_support] using hpos.2.2 hlt
    }

theorem source_008_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_008_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_008_producer.sourceFacts h

/-- Source-position producer for source group `fc805e5aa43cbf59fd54e11b9b4cc4bf2c46e5b085bcbdba6c2acab8157c72dc`.
Observed bounded GoodDirection cases: 3. -/
def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_009_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_009_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_009_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_009_firstPosition r mask /\
    source_009_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_009_support r hlt mask

def source_009_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 0 /\
      key.support = source_009_support /\
      source_009_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_009_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_009_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_009_support] using hpos.2.2 hlt
    }

theorem source_009_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_009_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_009_producer.sourceFacts h

/-- Source-position producer for source group `27a3084b923bb5236f8cc839b571250cffc7405f7417c98d5743dcc8c7d753d4`.
Observed bounded GoodDirection cases: 2. -/
def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_010_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

def source_010_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_010_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_010_firstPosition r mask /\
    source_010_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_010_support r hlt mask

def source_010_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 121 /\
      key.secondIndex = 0 /\
      key.support = source_010_support /\
      source_010_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_010_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_010_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_010_support] using hpos.2.2 hlt
    }

theorem source_010_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_010_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_010_producer.sourceFacts h

/-- Source-position producer for source group `53696c059bbf359ca7a6c7accc921f9fa16dfba896d6532ca0eab7f9821a867c`.
Observed bounded GoodDirection cases: 2. -/
def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_011_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨1, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm]

def source_011_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_011_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_011_firstPosition r mask /\
    source_011_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_011_support r hlt mask

def source_011_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 26 /\
      key.secondIndex = 3 /\
      key.support = source_011_support /\
      source_011_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_011_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_011_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_011_support] using hpos.2.2 hlt
    }

theorem source_011_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_011_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_011_producer.sourceFacts h

/-- Source-position producer for source group `96db83cdd7dfbc306ef127f08ef94f5c3d71c27df72ac9f8545d0cd54e7b6dcb`.
Observed bounded GoodDirection cases: 2. -/
def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_012_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_012_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_012_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_012_firstPosition r mask /\
    source_012_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_012_support r hlt mask

def source_012_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
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
          ⟨1, by decide⟩
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

/-- Source-position producer for source group `b2680d819fee8747dcca856d2980d906bdf5e5ef0fb1042fb131650341dacbc1`.
Observed bounded GoodDirection cases: 2. -/
def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_013_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_013_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_013_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_013_firstPosition r mask /\
    source_013_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_013_support r hlt mask

def source_013_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 10 /\
      key.support = source_013_support /\
      source_013_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_013_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_013_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_013_support] using hpos.2.2 hlt
    }

theorem source_013_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_013_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_013_producer.sourceFacts h

/-- Source-position producer for source group `bc3c3f42aacb1d847258109c055cea04afc822f2739a74efdebc85827b65df42`.
Observed bounded GoodDirection cases: 2. -/
def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_014_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_014_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_014_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_014_firstPosition r mask /\
    source_014_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_014_support r hlt mask

def source_014_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 2 /\
      key.support = source_014_support /\
      source_014_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_014_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_014_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_014_support] using hpos.2.2 hlt
    }

theorem source_014_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_014_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_014_producer.sourceFacts h

/-- Source-position producer for source group `c5ec5e493c6af976a1b03f30aeb9d26ee4dd468f968a4361500947da83fa8093`.
Observed bounded GoodDirection cases: 2. -/
def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_015_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_015_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_015_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_015_firstPosition r mask /\
    source_015_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_015_support r hlt mask

def source_015_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 0 /\
      key.support = source_015_support /\
      source_015_positionPredicate r mask
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

/-- Source-position producer for source group `46b74a54a57a25ed51e207d17428b8f88e3a57422f9046833bc6157d56270cb6`.
Observed bounded GoodDirection cases: 1. -/
def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨1, by decide⟩
def source_016_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_016_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_016_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_016_firstPosition r mask /\
    source_016_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_016_support r hlt mask

def source_016_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 44 /\
      key.secondIndex = 5 /\
      key.support = source_016_support /\
      source_016_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_016_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_016_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_016_support] using hpos.2.2 hlt
    }

theorem source_016_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_016_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_016_producer.sourceFacts h

/-- Source-position producer for source group `8b9860bf1b03698c2e5b816aa6d65a36f6345895abd06affbaa3b1e84c613982`.
Observed bounded GoodDirection cases: 1. -/
def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_017_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_017_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_017_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_017_firstPosition r mask /\
    source_017_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_017_support r hlt mask

def source_017_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 183 /\
      key.secondIndex = 0 /\
      key.support = source_017_support /\
      source_017_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_017_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_017_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_017_support] using hpos.2.2 hlt
    }

theorem source_017_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_017_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_017_producer.sourceFacts h

/-- Source-position producer for source group `df66f4d09d995af9598edddf3f11fdf3faae819a11a4cf6f534a2a37f31d7c48`.
Observed bounded GoodDirection cases: 1. -/
def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_018_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_018_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_018_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_018_firstPosition r mask /\
    source_018_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_018_support r hlt mask

def source_018_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 16 /\
      key.support = source_018_support /\
      source_018_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_018_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_018_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_018_support] using hpos.2.2 hlt
    }

theorem source_018_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_018_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_018_producer.sourceFacts h

theorem sourcePositionProducerSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerDU9IQSmoke
