import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

set_option linter.unusedVariables false

/-!
Generated source-position producer smoke.

This module intentionally contains no concrete rank/mask examples and no
bounded member replay. Each producer turns semantic source-position
facts plus `SourceChecks` into `SourceIndexStateSourceFacts`.
Phase: 6Z.6K.8AE.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-- Source-position producer for source group `8b3a3995294856088c7f47aef5c3bd8844c0ac044e09739dc93fc242d0a9ef41`.
Observed bounded GoodDirection cases: 497. -/
def source_000_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_000_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm]

def source_000_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_000_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_000_firstPosition r mask /\
    source_000_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_000_support r hlt mask

def source_000_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 52 /\
      key.secondIndex = 0 /\
      key.support = source_000_support /\
      source_000_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpp 8 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩ Face.tmpp 8 (by decide) hslot
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

/-- Source-position producer for source group `b1984127e635f9866c065edc87a5945b45d8d13d8e9795119e832266819c19d6`.
Observed bounded GoodDirection cases: 185. -/
def source_001_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_001_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp]

def source_001_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_001_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_001_firstPosition r mask /\
    source_001_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_001_support r hlt mask

def source_001_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 51 /\
      key.secondIndex = 1 /\
      key.support = source_001_support /\
      source_001_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpm 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩ Face.tmpm 7 (by decide) hslot
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

/-- Source-position producer for source group `4a0c5e158e345c0d7e7993b928b615657e77494bc31d65cbd2a47305f273afb1`.
Observed bounded GoodDirection cases: 131. -/
def source_002_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_002_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_002_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_002_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_002_firstPosition r mask /\
    source_002_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_002_support r hlt mask

def source_002_producer : SourceIndexStateSourceProducer where
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

/-- Source-position producer for source group `1af4ad5c5a8f2bc9bcb59dd0f6eb1159ddf9a7cf586f392ce0a487e53b070127`.
Observed bounded GoodDirection cases: 107. -/
def source_003_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_003_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm]

def source_003_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_003_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_003_firstPosition r mask /\
    source_003_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_003_support r hlt mask

def source_003_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 50 /\
      key.secondIndex = 2 /\
      key.support = source_003_support /\
      source_003_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩ Face.tmmp 6 (by decide) hslot
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

/-- Source-position producer for source group `506c0900cc34b9aa4c3383cb70825b16f40bee1df73637f7a807dff6f374aec1`.
Observed bounded GoodDirection cases: 83. -/
def source_004_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_004_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_004_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_004_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_004_firstPosition r mask /\
    source_004_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_004_support r hlt mask

def source_004_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 2 /\
      key.support = source_004_support /\
      source_004_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_004_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_004_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_004_support] using hpos.2.2 hlt
    }

theorem source_004_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_004_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_004_producer.sourceFacts h

/-- Source-position producer for source group `caaabb1d2609b42cd99606f249651ae70078c1479a5c8bfd1159d868c1286ebc`.
Observed bounded GoodDirection cases: 50. -/
def source_005_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_005_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_005_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_005_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_005_firstPosition r mask /\
    source_005_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_005_support r hlt mask

def source_005_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 11 /\
      key.support = source_005_support /\
      source_005_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_005_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_005_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_005_support] using hpos.2.2 hlt
    }

theorem source_005_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_005_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_005_producer.sourceFacts h

/-- Source-position producer for source group `607a37bb83cc9151a8eab08524891be9c074c2251738d1c2b916cfc0102d510f`.
Observed bounded GoodDirection cases: 36. -/
def source_006_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_006_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_006_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_006_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_006_firstPosition r mask /\
    source_006_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_006_support r hlt mask

def source_006_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 10 /\
      key.support = source_006_support /\
      source_006_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_006_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_006_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_006_support] using hpos.2.2 hlt
    }

theorem source_006_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_006_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_006_producer.sourceFacts h

/-- Source-position producer for source group `fb4710b24e527e12a705f595b8d1e2f741cba7340de80527dfbad4335015792f`.
Observed bounded GoodDirection cases: 33. -/
def source_007_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_007_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_007_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_007_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_007_firstPosition r mask /\
    source_007_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_007_support r hlt mask

def source_007_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 14 /\
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
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_007_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_007_support] using hpos.2.2 hlt
    }

theorem source_007_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_007_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_007_producer.sourceFacts h

/-- Source-position producer for source group `157d9052bf07c9f7d9b8810ff9124b6ae2373e39b3587da2c6596db3be06ea4f`.
Observed bounded GoodDirection cases: 30. -/
def source_008_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_008_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_008_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_008_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_008_firstPosition r mask /\
    source_008_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_008_support r hlt mask

def source_008_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 15 /\
      key.support = source_008_support /\
      source_008_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_008_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_008_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_008_support] using hpos.2.2 hlt
    }

theorem source_008_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_008_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_008_producer.sourceFacts h

/-- Source-position producer for source group `25874e96d5c17ac0b13ff49508c565c59aa6360accedd314aa7c19cae918b9fd`.
Observed bounded GoodDirection cases: 30. -/
def source_009_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_009_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_009_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_009_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_009_firstPosition r mask /\
    source_009_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_009_support r hlt mask

def source_009_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 12 /\
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
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_009_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_009_support] using hpos.2.2 hlt
    }

theorem source_009_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_009_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_009_producer.sourceFacts h

/-- Source-position producer for source group `3b4ae49a0ee817a62a3d8f5d6d0e3a76b1f5753db5cd8b3f9fd34564dfa3208a`.
Observed bounded GoodDirection cases: 30. -/
def source_010_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_010_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_010_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_010_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_010_firstPosition r mask /\
    source_010_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_010_support r hlt mask

def source_010_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 0 /\
      key.support = source_010_support /\
      source_010_positionPredicate r mask
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

/-- Source-position producer for source group `6659cf4a94e395d4bbacbad166231897f3d44abe9209d543d588346f5f00275c`.
Observed bounded GoodDirection cases: 29. -/
def source_011_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_011_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_011_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_011_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_011_firstPosition r mask /\
    source_011_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_011_support r hlt mask

def source_011_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 1 /\
      key.support = source_011_support /\
      source_011_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_011_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_011_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_011_support] using hpos.2.2 hlt
    }

theorem source_011_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_011_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_011_producer.sourceFacts h

/-- Source-position producer for source group `3fcd2221292f554295322121d811b40eeb21367cfc50ced8f31a6ab53a3e7673`.
Observed bounded GoodDirection cases: 28. -/
def source_012_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
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
    key.firstIndex = 0 /\
      key.secondIndex = 13 /\
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
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_012_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_012_support] using hpos.2.2 hlt
    }

theorem source_012_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_012_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_012_producer.sourceFacts h

/-- Source-position producer for source group `aa145e748362515bb1f5f25abe8e27d2c8fb7da216db879387ea5df98e557f76`.
Observed bounded GoodDirection cases: 28. -/
def source_013_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
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
    key.firstIndex = 0 /\
      key.secondIndex = 15 /\
      key.support = source_013_support /\
      source_013_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_013_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_013_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_013_support] using hpos.2.2 hlt
    }

theorem source_013_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_013_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_013_producer.sourceFacts h

/-- Source-position producer for source group `266777c70f35ad6d3ef78520a0e09a50e0bacae7029cf430d03d34844c1f0171`.
Observed bounded GoodDirection cases: 26. -/
def source_014_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_014_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_014_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_014_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_014_firstPosition r mask /\
    source_014_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_014_support r hlt mask

def source_014_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 183 /\
      key.secondIndex = 0 /\
      key.support = source_014_support /\
      source_014_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_014_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_014_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_014_support] using hpos.2.2 hlt
    }

theorem source_014_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_014_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_014_producer.sourceFacts h

/-- Source-position producer for source group `791b4eeee4a798f89e68774844daa9e21c7cefb14170ceea7ad5a67007c69344`.
Observed bounded GoodDirection cases: 25. -/
def source_015_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_015_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_015_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_015_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_015_firstPosition r mask /\
    source_015_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_015_support r hlt mask

def source_015_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 76 /\
      key.secondIndex = 1 /\
      key.support = source_015_support /\
      source_015_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩ Face.tmmm 6 (by decide) hslot
        simpa [hfirst, hsupport, source_015_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_015_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_015_support] using hpos.2.2 hlt
    }

theorem source_015_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_015_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_015_producer.sourceFacts h

/-- Source-position producer for source group `7bbf32dd808fc8e4d7c24a9cd2c36f96c1669e9fcd51a744171f3b144b40ddfe`.
Observed bounded GoodDirection cases: 25. -/
def source_016_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_016_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_016_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_016_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_016_firstPosition r mask /\
    source_016_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_016_support r hlt mask

def source_016_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 15 /\
      key.support = source_016_support /\
      source_016_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_016_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_016_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_016_support] using hpos.2.2 hlt
    }

theorem source_016_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_016_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_016_producer.sourceFacts h

/-- Source-position producer for source group `caed8a1ff4529c4599cc65f8ac8fad52a8c1d04957d23a6a15ae5697b9a8c6ec`.
Observed bounded GoodDirection cases: 25. -/
def source_017_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_017_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_017_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_017_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_017_firstPosition r mask /\
    source_017_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_017_support r hlt mask

def source_017_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 0 /\
      key.support = source_017_support /\
      source_017_positionPredicate r mask
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

/-- Source-position producer for source group `ebeb430001384dbc677f155ad8891e64682109144f74cd9b44aa0fe6dd059d94`.
Observed bounded GoodDirection cases: 25. -/
def source_018_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_018_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_018_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_018_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_018_firstPosition r mask /\
    source_018_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_018_support r hlt mask

def source_018_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 0 /\
      key.support = source_018_support /\
      source_018_positionPredicate r mask
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

/-- Source-position producer for source group `19c25d8d5cad596fb3ebbfe7e09156d0f5f62a610254ca96d9f0810584bdb693`.
Observed bounded GoodDirection cases: 24. -/
def source_019_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_019_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_019_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_019_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_019_firstPosition r mask /\
    source_019_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_019_support r hlt mask

def source_019_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 10 /\
      key.support = source_019_support /\
      source_019_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_019_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_019_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_019_support] using hpos.2.2 hlt
    }

theorem source_019_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_019_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_019_producer.sourceFacts h

/-- Source-position producer for source group `1cdefcf5c3f24bb7c82a2c012b4f5e23d4e7044298ddd26ae133718ae6f03c7a`.
Observed bounded GoodDirection cases: 24. -/
def source_020_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_020_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_020_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_020_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_020_firstPosition r mask /\
    source_020_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_020_support r hlt mask

def source_020_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 12 /\
      key.support = source_020_support /\
      source_020_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_020_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_020_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_020_support] using hpos.2.2 hlt
    }

theorem source_020_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_020_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_020_producer.sourceFacts h

/-- Source-position producer for source group `30fca16c2c09502e2ef1769568eab1750bda44ac5d71222fa2851d7861e5179f`.
Observed bounded GoodDirection cases: 23. -/
def source_021_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨3, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_021_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm]

def source_021_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_021_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_021_firstPosition r mask /\
    source_021_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_021_support r hlt mask

def source_021_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 49 /\
      key.secondIndex = 3 /\
      key.support = source_021_support /\
      source_021_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨3, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩ Face.tmmm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_021_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
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

/-- Source-position producer for source group `412d930f1e53b8b886b50a50acf9076484b79a3db3df62a6158fdf70a9a55ec0`.
Observed bounded GoodDirection cases: 21. -/
def source_022_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_022_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_022_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_022_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_022_firstPosition r mask /\
    source_022_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_022_support r hlt mask

def source_022_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 12 /\
      key.support = source_022_support /\
      source_022_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_022_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_022_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_022_support] using hpos.2.2 hlt
    }

theorem source_022_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_022_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_022_producer.sourceFacts h

/-- Source-position producer for source group `b84f66bec6e900b90371c30f5aa97737ddbfbb8a8b707e8057f22ebced44f61c`.
Observed bounded GoodDirection cases: 21. -/
def source_023_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_023_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_023_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_023_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_023_firstPosition r mask /\
    source_023_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_023_support r hlt mask

def source_023_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 1 /\
      key.support = source_023_support /\
      source_023_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_023_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_023_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_023_support] using hpos.2.2 hlt
    }

theorem source_023_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_023_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_023_producer.sourceFacts h

/-- Source-position producer for source group `8f3ab978cf31e8d646964dff7216ffcd06554448794092a50756be7c6f96583b`.
Observed bounded GoodDirection cases: 19. -/
def source_024_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_024_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_024_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_024_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_024_firstPosition r mask /\
    source_024_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_024_support r hlt mask

def source_024_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 0 /\
      key.support = source_024_support /\
      source_024_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_024_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_024_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_024_support] using hpos.2.2 hlt
    }

theorem source_024_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_024_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_024_producer.sourceFacts h

/-- Source-position producer for source group `7139c41ee110af735bc230d04cab530a729c4a50730c2386433eb64489bde03a`.
Observed bounded GoodDirection cases: 18. -/
def source_025_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_025_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_025_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_025_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_025_firstPosition r mask /\
    source_025_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_025_support r hlt mask

def source_025_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 0 /\
      key.support = source_025_support /\
      source_025_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_025_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_025_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_025_support] using hpos.2.2 hlt
    }

theorem source_025_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_025_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_025_producer.sourceFacts h

/-- Source-position producer for source group `cc7beab48b13ee69e9029ca4d87bc27ba9f5e49411f31394e8717aaef644455d`.
Observed bounded GoodDirection cases: 18. -/
def source_026_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_026_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_026_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_026_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_026_firstPosition r mask /\
    source_026_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_026_support r hlt mask

def source_026_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 1 /\
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
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_026_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_026_support] using hpos.2.2 hlt
    }

theorem source_026_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_026_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_026_producer.sourceFacts h

/-- Source-position producer for source group `ef6db69fe0ceda566b30598423e47dcbdb896d8a2a7f959d42ef03b384b36f4c`.
Observed bounded GoodDirection cases: 18. -/
def source_027_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_027_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_027_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_027_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_027_firstPosition r mask /\
    source_027_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_027_support r hlt mask

def source_027_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
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
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.xp 0 (by decide) hslot
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

/-- Source-position producer for source group `7b7587516409f2addbfcb846f946a091b8bd0415bc5ebc8ea57f62f23728878f`.
Observed bounded GoodDirection cases: 17. -/
def source_028_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_028_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_028_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_028_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_028_firstPosition r mask /\
    source_028_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_028_support r hlt mask

def source_028_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 13 /\
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
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_028_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_028_support] using hpos.2.2 hlt
    }

theorem source_028_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_028_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_028_producer.sourceFacts h

/-- Source-position producer for source group `900c14b8e6f48d464dc8a824d993889afdade320b8ebb778ffc8d1440584ad1f`.
Observed bounded GoodDirection cases: 17. -/
def source_029_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_029_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_029_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_029_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_029_firstPosition r mask /\
    source_029_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_029_support r hlt mask

def source_029_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 14 /\
      key.support = source_029_support /\
      source_029_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_029_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_029_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_029_support] using hpos.2.2 hlt
    }

theorem source_029_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_029_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_029_producer.sourceFacts h

/-- Source-position producer for source group `ac3c7747201b2e14616607bd43d09d5baedd0724eb8851674552d2c0ec340650`.
Observed bounded GoodDirection cases: 17. -/
def source_030_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_030_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_030_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_030_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_030_firstPosition r mask /\
    source_030_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_030_support r hlt mask

def source_030_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 0 /\
      key.support = source_030_support /\
      source_030_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_030_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_030_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_030_support] using hpos.2.2 hlt
    }

theorem source_030_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_030_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_030_producer.sourceFacts h

/-- Source-position producer for source group `3c06e402bff7a3920e0c13a9febbceede49ed758336b959adb510e05e728efe4`.
Observed bounded GoodDirection cases: 16. -/
def source_031_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_031_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_031_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_031_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_031_firstPosition r mask /\
    source_031_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_031_support r hlt mask

def source_031_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 10 /\
      key.support = source_031_support /\
      source_031_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_031_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_031_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_031_support] using hpos.2.2 hlt
    }

theorem source_031_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_031_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_031_producer.sourceFacts h

/-- Source-position producer for source group `4668f52358de0c70bea9517053e631311b0d5dc4d33cbbc5b0a3abfdeefe73cc`.
Observed bounded GoodDirection cases: 15. -/
def source_032_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_032_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_032_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_032_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_032_firstPosition r mask /\
    source_032_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_032_support r hlt mask

def source_032_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 84 /\
      key.secondIndex = 1 /\
      key.support = source_032_support /\
      source_032_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_032_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_032_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_032_support] using hpos.2.2 hlt
    }

theorem source_032_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_032_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_032_producer.sourceFacts h

/-- Source-position producer for source group `e007cc7d5707c39dac5100ab4c4aed34a678e072dcd71708dd9497d52088e8ea`.
Observed bounded GoodDirection cases: 15. -/
def source_033_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_033_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_033_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_033_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_033_firstPosition r mask /\
    source_033_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_033_support r hlt mask

def source_033_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 5 /\
      key.secondIndex = 8 /\
      key.support = source_033_support /\
      source_033_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_033_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨4, by decide⟩
        simpa [hsecond, hsupport, source_033_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_033_support] using hpos.2.2 hlt
    }

theorem source_033_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_033_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_033_producer.sourceFacts h

/-- Source-position producer for source group `52fb184559e7dbf5e0bc4dfa7217285fb77fdacb2afaeb5f3ccf6ba99cef9139`.
Observed bounded GoodDirection cases: 14. -/
def source_034_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_034_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_034_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_034_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_034_firstPosition r mask /\
    source_034_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_034_support r hlt mask

def source_034_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 14 /\
      key.support = source_034_support /\
      source_034_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_034_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_034_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_034_support] using hpos.2.2 hlt
    }

theorem source_034_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_034_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_034_producer.sourceFacts h

/-- Source-position producer for source group `81dc1c7aebd7326c3a98610a4135411af7a59e1fcbb3f871b18b353fe9852047`.
Observed bounded GoodDirection cases: 14. -/
def source_035_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_035_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_035_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_035_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_035_firstPosition r mask /\
    source_035_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_035_support r hlt mask

def source_035_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 0 /\
      key.secondIndex = 16 /\
      key.support = source_035_support /\
      source_035_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_035_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_035_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_035_support] using hpos.2.2 hlt
    }

theorem source_035_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_035_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_035_producer.sourceFacts h

/-- Source-position producer for source group `89b594d4793d832a8f55f709e7fdc70f5da4e1cbaa417b6e5a9ffa81cf2f03fd`.
Observed bounded GoodDirection cases: 14. -/
def source_036_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_036_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_036_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_036_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_036_firstPosition r mask /\
    source_036_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_036_support r hlt mask

def source_036_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 1 /\
      key.support = source_036_support /\
      source_036_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_036_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_036_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_036_support] using hpos.2.2 hlt
    }

theorem source_036_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_036_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_036_producer.sourceFacts h

/-- Source-position producer for source group `5ae274bcdccf59adc04b43720e6c5e0cc94efdc9d90b8b6f735252b7f8700ff2`.
Observed bounded GoodDirection cases: 13. -/
def source_037_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_037_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_037_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_037_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_037_firstPosition r mask /\
    source_037_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_037_support r hlt mask

def source_037_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 13 /\
      key.support = source_037_support /\
      source_037_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_037_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_037_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_037_support] using hpos.2.2 hlt
    }

theorem source_037_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_037_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_037_producer.sourceFacts h

/-- Source-position producer for source group `c6abba4e0f45c65831771cefc0279839188afb76820e7a3782641898fe4c6368`.
Observed bounded GoodDirection cases: 13. -/
def source_038_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_038_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_038_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_038_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_038_firstPosition r mask /\
    source_038_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_038_support r hlt mask

def source_038_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 103 /\
      key.secondIndex = 0 /\
      key.support = source_038_support /\
      source_038_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmp 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.tmmp 7 (by decide) hslot
        simpa [hfirst, hsupport, source_038_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_038_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_038_support] using hpos.2.2 hlt
    }

theorem source_038_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_038_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_038_producer.sourceFacts h

/-- Source-position producer for source group `55a888de18f4c38f5d23d8f6e64cffcc4c08ef301aaa0936c0e30268ed680d0e`.
Observed bounded GoodDirection cases: 11. -/
def source_039_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_039_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_039_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_039_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_039_firstPosition r mask /\
    source_039_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_039_support r hlt mask

def source_039_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 0 /\
      key.support = source_039_support /\
      source_039_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_039_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_039_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_039_support] using hpos.2.2 hlt
    }

theorem source_039_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_039_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_039_producer.sourceFacts h

/-- Source-position producer for source group `957ddbdae273683bac5f73c10ff7969833af0b1bb8181151b30dd50d36dca408`.
Observed bounded GoodDirection cases: 11. -/
def source_040_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_040_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_040_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_040_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_040_firstPosition r mask /\
    source_040_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_040_support r hlt mask

def source_040_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 2 /\
      key.support = source_040_support /\
      source_040_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_040_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_040_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_040_support] using hpos.2.2 hlt
    }

theorem source_040_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_040_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_040_producer.sourceFacts h

/-- Source-position producer for source group `f148a09a6f424d2231d7238809529fe1178d3ed5be075e4b5aa2a5821cd23bfe`.
Observed bounded GoodDirection cases: 11. -/
def source_041_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_041_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_041_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_041_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_041_firstPosition r mask /\
    source_041_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_041_support r hlt mask

def source_041_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 109 /\
      key.secondIndex = 2 /\
      key.support = source_041_support /\
      source_041_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_041_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_041_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_041_support] using hpos.2.2 hlt
    }

theorem source_041_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_041_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_041_producer.sourceFacts h

/-- Source-position producer for source group `91fb3b55cd371101adcb7e41072a525a4ec5336335dfba118dff7ce4f5c37a18`.
Observed bounded GoodDirection cases: 9. -/
def source_042_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_042_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_042_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_042_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_042_firstPosition r mask /\
    source_042_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_042_support r hlt mask

def source_042_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 0 /\
      key.support = source_042_support /\
      source_042_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_042_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_042_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_042_support] using hpos.2.2 hlt
    }

theorem source_042_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_042_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_042_producer.sourceFacts h

/-- Source-position producer for source group `d41e5cee657c9603412af272cbaa8bf438733bbde01ec33e088a67b428790aa6`.
Observed bounded GoodDirection cases: 9. -/
def source_043_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_043_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_043_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_043_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_043_firstPosition r mask /\
    source_043_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_043_support r hlt mask

def source_043_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 1 /\
      key.support = source_043_support /\
      source_043_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_043_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_043_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_043_support] using hpos.2.2 hlt
    }

theorem source_043_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_043_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_043_producer.sourceFacts h

/-- Source-position producer for source group `f5f1000fd24bc8cecf92024019f98c71f35106f5522d8698d8703efcb69b5413`.
Observed bounded GoodDirection cases: 9. -/
def source_044_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_044_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_044_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_044_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_044_firstPosition r mask /\
    source_044_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_044_support r hlt mask

def source_044_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 0 /\
      key.support = source_044_support /\
      source_044_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_044_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_044_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_044_support] using hpos.2.2 hlt
    }

theorem source_044_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_044_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_044_producer.sourceFacts h

/-- Source-position producer for source group `01c200caf6319ce9d903868c638f3658171095b56526c72829ee3975952712bc`.
Observed bounded GoodDirection cases: 8. -/
def source_045_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_045_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_045_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_045_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_045_firstPosition r mask /\
    source_045_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_045_support r hlt mask

def source_045_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 0 /\
      key.support = source_045_support /\
      source_045_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_045_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_045_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_045_support] using hpos.2.2 hlt
    }

theorem source_045_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_045_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_045_producer.sourceFacts h

/-- Source-position producer for source group `430703853483dbd8b98be8e95e1399aa30dfbd61e2cc9b0d763e3590c516be07`.
Observed bounded GoodDirection cases: 8. -/
def source_046_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_046_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_046_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_046_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_046_firstPosition r mask /\
    source_046_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_046_support r hlt mask

def source_046_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 1 /\
      key.support = source_046_support /\
      source_046_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_046_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_046_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_046_support] using hpos.2.2 hlt
    }

theorem source_046_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_046_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_046_producer.sourceFacts h

/-- Source-position producer for source group `576e1c5f3fee8120fc2f4c7c4d1f9d784c5b78e8d5253f18a7f49d1783b4e400`.
Observed bounded GoodDirection cases: 8. -/
def source_047_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_047_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

def source_047_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_047_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_047_firstPosition r mask /\
    source_047_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_047_support r hlt mask

def source_047_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 95 /\
      key.secondIndex = 2 /\
      key.support = source_047_support /\
      source_047_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppp 12 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.tppp 12 (by decide) hslot
        simpa [hfirst, hsupport, source_047_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_047_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_047_support] using hpos.2.2 hlt
    }

theorem source_047_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_047_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_047_producer.sourceFacts h

/-- Source-position producer for source group `82882d01effd03e71c78d134696634043e7fed4dfc4d94314dad745f334e3e60`.
Observed bounded GoodDirection cases: 8. -/
def source_048_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_048_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]

def source_048_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_048_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_048_firstPosition r mask /\
    source_048_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_048_support r hlt mask

def source_048_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 107 /\
      key.secondIndex = 0 /\
      key.support = source_048_support /\
      source_048_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppm 11 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.tppm 11 (by decide) hslot
        simpa [hfirst, hsupport, source_048_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_048_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_048_support] using hpos.2.2 hlt
    }

theorem source_048_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_048_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_048_producer.sourceFacts h

/-- Source-position producer for source group `4d3acd675c9fc3ac1512bb74ef8424a552b4dcd48fdda6e8499bcf4e57c6093d`.
Observed bounded GoodDirection cases: 7. -/
def source_049_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_049_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_049_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_049_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_049_firstPosition r mask /\
    source_049_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_049_support r hlt mask

def source_049_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 1 /\
      key.support = source_049_support /\
      source_049_positionPredicate r mask
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

/-- Source-position producer for source group `7a927787d027c5d33e783a46f85797607a07aa2cd3f41de8e49165df23dec2e5`.
Observed bounded GoodDirection cases: 7. -/
def source_050_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_050_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_050_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_050_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_050_firstPosition r mask /\
    source_050_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_050_support r hlt mask

def source_050_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 149 /\
      key.secondIndex = 1 /\
      key.support = source_050_support /\
      source_050_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_050_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_050_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_050_support] using hpos.2.2 hlt
    }

theorem source_050_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_050_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_050_producer.sourceFacts h

/-- Source-position producer for source group `a4ae583894001bae87ac9806efb93472e73c967ea735f9e6470a3e0dbbcefde3`.
Observed bounded GoodDirection cases: 7. -/
def source_051_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨1, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_051_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_051_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_051_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_051_firstPosition r mask /\
    source_051_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_051_support r hlt mask

def source_051_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 1 /\
      key.secondIndex = 16 /\
      key.support = source_051_support /\
      source_051_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hfirst, hsupport, source_051_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_051_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_051_support] using hpos.2.2 hlt
    }

theorem source_051_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_051_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_051_producer.sourceFacts h

/-- Source-position producer for source group `e68ce8f0b0b746095166ee7b0deee8f5a4033a2fc9c88db7c201b321f90f1af0`.
Observed bounded GoodDirection cases: 7. -/
def source_052_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_052_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_052_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_052_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_052_firstPosition r mask /\
    source_052_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_052_support r hlt mask

def source_052_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 70 /\
      key.secondIndex = 4 /\
      key.support = source_052_support /\
      source_052_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xp 0 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩ Face.xp 0 (by decide) hslot
        simpa [hfirst, hsupport, source_052_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_052_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_052_support] using hpos.2.2 hlt
    }

theorem source_052_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_052_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_052_producer.sourceFacts h

/-- Source-position producer for source group `20cf6dccf38ba19b42607479582a95f18c74470d2604dae1e40ae5c038900b23`.
Observed bounded GoodDirection cases: 6. -/
def source_053_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_053_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_053_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_053_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_053_firstPosition r mask /\
    source_053_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_053_support r hlt mask

def source_053_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 0 /\
      key.support = source_053_support /\
      source_053_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_053_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_053_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_053_support] using hpos.2.2 hlt
    }

theorem source_053_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_053_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_053_producer.sourceFacts h

/-- Source-position producer for source group `45c3e859e03cf68169e6f32c7d21bf7c4fd64a467c100145a7a0248cb4d2167b`.
Observed bounded GoodDirection cases: 6. -/
def source_054_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_054_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_054_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_054_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_054_firstPosition r mask /\
    source_054_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_054_support r hlt mask

def source_054_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 0 /\
      key.support = source_054_support /\
      source_054_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_054_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_054_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_054_support] using hpos.2.2 hlt
    }

theorem source_054_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_054_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_054_producer.sourceFacts h

/-- Source-position producer for source group `7b69ca62207e8007c1443e19305628382ec2258ff7fe7a06123b78884cf2ebf3`.
Observed bounded GoodDirection cases: 6. -/
def source_055_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_055_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_055_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_055_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_055_firstPosition r mask /\
    source_055_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_055_support r hlt mask

def source_055_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 2 /\
      key.support = source_055_support /\
      source_055_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_055_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_055_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_055_support] using hpos.2.2 hlt
    }

theorem source_055_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_055_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_055_producer.sourceFacts h

/-- Source-position producer for source group `c27b891891d4f0362acbbb32b58039ccbf55fd49078b3e038380c0fa9ddcf099`.
Observed bounded GoodDirection cases: 6. -/
def source_056_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_056_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_056_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_056_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_056_firstPosition r mask /\
    source_056_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_056_support r hlt mask

def source_056_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 105 /\
      key.secondIndex = 0 /\
      key.support = source_056_support /\
      source_056_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_056_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_056_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_056_support] using hpos.2.2 hlt
    }

theorem source_056_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_056_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_056_producer.sourceFacts h

/-- Source-position producer for source group `afc832b45ee758ab342f6c9e3b6be617b709c7b4ccbef2328af43cab9ef16db8`.
Observed bounded GoodDirection cases: 5. -/
def source_057_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_057_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_057_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_057_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_057_firstPosition r mask /\
    source_057_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_057_support r hlt mask

def source_057_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 119 /\
      key.secondIndex = 0 /\
      key.support = source_057_support /\
      source_057_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_057_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_057_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_057_support] using hpos.2.2 hlt
    }

theorem source_057_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_057_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_057_producer.sourceFacts h

/-- Source-position producer for source group `b2a3a80c9f5d5173f289dc32b3d2f512032c2de5907e881bc96aecf2285cd2fd`.
Observed bounded GoodDirection cases: 5. -/
def source_058_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_058_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_058_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_058_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_058_firstPosition r mask /\
    source_058_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_058_support r hlt mask

def source_058_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 1 /\
      key.support = source_058_support /\
      source_058_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_058_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_058_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_058_support] using hpos.2.2 hlt
    }

theorem source_058_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_058_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_058_producer.sourceFacts h

/-- Source-position producer for source group `dfb0ecbfd101bdd540ddf084f72f71a1dca4833da3130285ede2e0c8ea2f5f15`.
Observed bounded GoodDirection cases: 5. -/
def source_059_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_059_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_059_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_059_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_059_firstPosition r mask /\
    source_059_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_059_support r hlt mask

def source_059_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 1 /\
      key.support = source_059_support /\
      source_059_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_059_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_059_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_059_support] using hpos.2.2 hlt
    }

theorem source_059_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_059_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_059_producer.sourceFacts h

/-- Source-position producer for source group `1d697b2768e95e8b9c8568d5b69189432a63d193010a095da97b195b80b44bd1`.
Observed bounded GoodDirection cases: 4. -/
def source_060_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_060_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_060_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_060_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_060_firstPosition r mask /\
    source_060_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_060_support r hlt mask

def source_060_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 0 /\
      key.support = source_060_support /\
      source_060_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_060_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_060_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_060_support] using hpos.2.2 hlt
    }

theorem source_060_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_060_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_060_producer.sourceFacts h

/-- Source-position producer for source group `22f6110f90d493658ba9202d80b4e4212946c9961b5d3092f3c9f85aaab1fe93`.
Observed bounded GoodDirection cases: 4. -/
def source_061_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_061_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

def source_061_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_061_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_061_firstPosition r mask /\
    source_061_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_061_support r hlt mask

def source_061_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 147 /\
      key.secondIndex = 0 /\
      key.support = source_061_support /\
      source_061_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_061_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_061_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_061_support] using hpos.2.2 hlt
    }

theorem source_061_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_061_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_061_producer.sourceFacts h

/-- Source-position producer for source group `6ec2cc92527d6d9ae1894ab228a9e4a58e8fa015ca0a9c95015fe0554bdcd18d`.
Observed bounded GoodDirection cases: 4. -/
def source_062_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_062_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_062_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_062_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_062_firstPosition r mask /\
    source_062_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_062_support r hlt mask

def source_062_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 1 /\
      key.support = source_062_support /\
      source_062_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_062_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_062_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_062_support] using hpos.2.2 hlt
    }

theorem source_062_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_062_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_062_producer.sourceFacts h

/-- Source-position producer for source group `7069835aeba8f59320947c6f2504cfd677666850107605fb8b5d2ddbb2f6cf09`.
Observed bounded GoodDirection cases: 4. -/
def source_063_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_063_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_063_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_063_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_063_firstPosition r mask /\
    source_063_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_063_support r hlt mask

def source_063_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 3 /\
      key.support = source_063_support /\
      source_063_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_063_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_063_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_063_support] using hpos.2.2 hlt
    }

theorem source_063_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_063_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_063_producer.sourceFacts h

/-- Source-position producer for source group `85c63ad75b4dcae07150a72b98d868660a0829fd0024b3a6ae8acbb65788c044`.
Observed bounded GoodDirection cases: 4. -/
def source_064_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_064_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_064_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_064_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_064_firstPosition r mask /\
    source_064_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_064_support r hlt mask

def source_064_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 168 /\
      key.secondIndex = 1 /\
      key.support = source_064_support /\
      source_064_positionPredicate r mask
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

/-- Source-position producer for source group `b1cfd1a100ea953e65bd579b2b53df83331aa03651b8b8b658da43e4c979453b`.
Observed bounded GoodDirection cases: 4. -/
def source_065_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_065_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_065_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_065_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_065_firstPosition r mask /\
    source_065_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_065_support r hlt mask

def source_065_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 11 /\
      key.support = source_065_support /\
      source_065_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_065_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_065_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_065_support] using hpos.2.2 hlt
    }

theorem source_065_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_065_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_065_producer.sourceFacts h

/-- Source-position producer for source group `c5978cd8fab956c63cbb542b3c5851d248e9e0068c7d47b5008630428bc25977`.
Observed bounded GoodDirection cases: 4. -/
def source_066_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_066_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_066_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_066_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_066_firstPosition r mask /\
    source_066_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_066_support r hlt mask

def source_066_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 92 /\
      key.secondIndex = 3 /\
      key.support = source_066_support /\
      source_066_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_066_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_066_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_066_support] using hpos.2.2 hlt
    }

theorem source_066_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_066_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_066_producer.sourceFacts h

/-- Source-position producer for source group `cd2df694951a072f893d4a7e1ddb19d7d834d0530001ebf5e1442b4a5705a183`.
Observed bounded GoodDirection cases: 4. -/
def source_067_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_067_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_067_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_067_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_067_firstPosition r mask /\
    source_067_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_067_support r hlt mask

def source_067_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 101 /\
      key.secondIndex = 4 /\
      key.support = source_067_support /\
      source_067_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.zm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_067_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
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

/-- Source-position producer for source group `e39fa1336fb1e67003bec891819f5f73aefec9e592573bc9cec2f9f73f3ec9dc`.
Observed bounded GoodDirection cases: 4. -/
def source_068_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_068_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_068_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_068_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_068_firstPosition r mask /\
    source_068_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_068_support r hlt mask

def source_068_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 10 /\
      key.support = source_068_support /\
      source_068_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_068_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_068_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_068_support] using hpos.2.2 hlt
    }

theorem source_068_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_068_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_068_producer.sourceFacts h

/-- Source-position producer for source group `f2af8a183bdb1ce0ddc3bc0cf074369e1fa39d9fe79120afdc51c4ab8334bca0`.
Observed bounded GoodDirection cases: 4. -/
def source_069_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_069_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_069_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_069_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_069_firstPosition r mask /\
    source_069_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_069_support r hlt mask

def source_069_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 128 /\
      key.secondIndex = 3 /\
      key.support = source_069_support /\
      source_069_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmmm 6 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tmmm 6 (by decide) hslot
        simpa [hfirst, hsupport, source_069_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_069_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_069_support] using hpos.2.2 hlt
    }

theorem source_069_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_069_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_069_producer.sourceFacts h

/-- Source-position producer for source group `1508810e8251cefe2fd644f9e433e572b1a24845d4e8e34ad42aa4c54ef1b7b5`.
Observed bounded GoodDirection cases: 3. -/
def source_070_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_070_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_070_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_070_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_070_firstPosition r mask /\
    source_070_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_070_support r hlt mask

def source_070_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 184 /\
      key.secondIndex = 1 /\
      key.support = source_070_support /\
      source_070_positionPredicate r mask
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

/-- Source-position producer for source group `2d1637cf0d068ebbdf9d2762c89f2517eedfad03d985e50030989ac1c85449ed`.
Observed bounded GoodDirection cases: 3. -/
def source_071_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_071_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_071_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_071_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_071_firstPosition r mask /\
    source_071_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_071_support r hlt mask

def source_071_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 144 /\
      key.secondIndex = 1 /\
      key.support = source_071_support /\
      source_071_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpp 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tmpp 9 (by decide) hslot
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

/-- Source-position producer for source group `84a7843e3335905ebbe60bbe0e3350f786df79683ee7b7eeb5c0c4802e569c93`.
Observed bounded GoodDirection cases: 3. -/
def source_072_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_072_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_072_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_072_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_072_firstPosition r mask /\
    source_072_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_072_support r hlt mask

def source_072_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 3 /\
      key.support = source_072_support /\
      source_072_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_072_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_072_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_072_support] using hpos.2.2 hlt
    }

theorem source_072_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_072_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_072_producer.sourceFacts h

/-- Source-position producer for source group `9c57b47e9a127dda3b6f00f44d91a878885434dbc620ee4320ad2c973920eda3`.
Observed bounded GoodDirection cases: 3. -/
def source_073_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_073_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_073_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_073_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_073_firstPosition r mask /\
    source_073_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_073_support r hlt mask

def source_073_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 3 /\
      key.support = source_073_support /\
      source_073_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_073_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_073_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_073_support] using hpos.2.2 hlt
    }

theorem source_073_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_073_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_073_producer.sourceFacts h

/-- Source-position producer for source group `a33c12c03a411562b7344ae2ac73f3341c851994b2068e47adf27d2ecd771f9e`.
Observed bounded GoodDirection cases: 3. -/
def source_074_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_074_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_074_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_074_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_074_firstPosition r mask /\
    source_074_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_074_support r hlt mask

def source_074_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 2 /\
      key.support = source_074_support /\
      source_074_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_074_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_074_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_074_support] using hpos.2.2 hlt
    }

theorem source_074_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_074_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_074_producer.sourceFacts h

/-- Source-position producer for source group `ca9644595fe4dce968b0c84455c13c4730002d1db173c62bdaba10c96f3e5342`.
Observed bounded GoodDirection cases: 3. -/
def source_075_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_075_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_075_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_075_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_075_firstPosition r mask /\
    source_075_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_075_support r hlt mask

def source_075_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 148 /\
      key.secondIndex = 2 /\
      key.support = source_075_support /\
      source_075_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_075_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_075_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_075_support] using hpos.2.2 hlt
    }

theorem source_075_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_075_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_075_producer.sourceFacts h

/-- Source-position producer for source group `dba6d5fbcd9000b57b97f1ae0e00a7cb70517e463f7aa797ad0f7d123fb17826`.
Observed bounded GoodDirection cases: 3. -/
def source_076_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨12, by decide⟩
def source_076_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_076_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_076_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_076_firstPosition r mask /\
    source_076_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_076_support r hlt mask

def source_076_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 2 /\
      key.secondIndex = 16 /\
      key.support = source_076_support /\
      source_076_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_076_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hsecond, hsupport, source_076_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_076_support] using hpos.2.2 hlt
    }

theorem source_076_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_076_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_076_producer.sourceFacts h

/-- Source-position producer for source group `0109e1111871de920ac77ab256021be97d28c210a88b22735631824da73af4e3`.
Observed bounded GoodDirection cases: 2. -/
def source_077_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_077_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_077_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_077_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_077_firstPosition r mask /\
    source_077_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_077_support r hlt mask

def source_077_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 83 /\
      key.secondIndex = 2 /\
      key.support = source_077_support /\
      source_077_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_077_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_077_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_077_support] using hpos.2.2 hlt
    }

theorem source_077_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_077_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_077_producer.sourceFacts h

/-- Source-position producer for source group `4048c6cdd90cdfc6908b4a1d9312773d5bdcbe825e0c2e0199744dddd320f157`.
Observed bounded GoodDirection cases: 2. -/
def source_078_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_078_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_078_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_078_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_078_firstPosition r mask /\
    source_078_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_078_support r hlt mask

def source_078_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 136 /\
      key.secondIndex = 2 /\
      key.support = source_078_support /\
      source_078_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_078_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_078_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_078_support] using hpos.2.2 hlt
    }

theorem source_078_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_078_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_078_producer.sourceFacts h

/-- Source-position producer for source group `4de69e9f418418a228be3bad24d66db8274e35219d4100aa6ad36f81482df03e`.
Observed bounded GoodDirection cases: 2. -/
def source_079_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_079_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_079_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_079_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_079_firstPosition r mask /\
    source_079_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_079_support r hlt mask

def source_079_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 161 /\
      key.secondIndex = 2 /\
      key.support = source_079_support /\
      source_079_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_079_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_079_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_079_support] using hpos.2.2 hlt
    }

theorem source_079_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_079_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_079_producer.sourceFacts h

/-- Source-position producer for source group `4ff7d1cb1c9c0983b8e7079af5b10bad51399b02762973c8c96494042d3522f7`.
Observed bounded GoodDirection cases: 2. -/
def source_080_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_080_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_080_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_080_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_080_firstPosition r mask /\
    source_080_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_080_support r hlt mask

def source_080_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 167 /\
      key.secondIndex = 2 /\
      key.support = source_080_support /\
      source_080_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_080_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_080_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_080_support] using hpos.2.2 hlt
    }

theorem source_080_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_080_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_080_producer.sourceFacts h

/-- Source-position producer for source group `61bd8e5ffcd3632b1383b22e06d7a341d12ab9555f757fee4f1f3506760ac3ba`.
Observed bounded GoodDirection cases: 2. -/
def source_081_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_081_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_081_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_081_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_081_firstPosition r mask /\
    source_081_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_081_support r hlt mask

def source_081_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 97 /\
      key.secondIndex = 3 /\
      key.support = source_081_support /\
      source_081_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_081_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_081_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_081_support] using hpos.2.2 hlt
    }

theorem source_081_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_081_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_081_producer.sourceFacts h

/-- Source-position producer for source group `76372db79833512eeff14437c8d8b12a94e743a246a891eaa3499cbf0e8ce204`.
Observed bounded GoodDirection cases: 2. -/
def source_082_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_082_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_082_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_082_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_082_firstPosition r mask /\
    source_082_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_082_support r hlt mask

def source_082_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 170 /\
      key.secondIndex = 1 /\
      key.support = source_082_support /\
      source_082_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_082_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_082_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_082_support] using hpos.2.2 hlt
    }

theorem source_082_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_082_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_082_producer.sourceFacts h

/-- Source-position producer for source group `79c18162a2ee6e84181bd85c8fdbd492c838edb3d2417f5a256019180b317093`.
Observed bounded GoodDirection cases: 2. -/
def source_083_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_083_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_083_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_083_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_083_firstPosition r mask /\
    source_083_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_083_support r hlt mask

def source_083_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 12 /\
      key.support = source_083_support /\
      source_083_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_083_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_083_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_083_support] using hpos.2.2 hlt
    }

theorem source_083_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_083_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_083_producer.sourceFacts h

/-- Source-position producer for source group `7af805eddd224a144c728043d5af9e592a7d2316b03476644ce010f9f3dfa1f2`.
Observed bounded GoodDirection cases: 2. -/
def source_084_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_084_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_084_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_084_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_084_firstPosition r mask /\
    source_084_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_084_support r hlt mask

def source_084_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 166 /\
      key.secondIndex = 10 /\
      key.support = source_084_support /\
      source_084_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.zm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_084_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_084_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_084_support] using hpos.2.2 hlt
    }

theorem source_084_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_084_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_084_producer.sourceFacts h

/-- Source-position producer for source group `7d359bfa449a860cde4f4b129df89d75868094b6a99e84ab972800f16a8e4d80`.
Observed bounded GoodDirection cases: 2. -/
def source_085_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_085_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_085_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_085_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_085_firstPosition r mask /\
    source_085_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_085_support r hlt mask

def source_085_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 132 /\
      key.secondIndex = 0 /\
      key.support = source_085_support /\
      source_085_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_085_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_085_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_085_support] using hpos.2.2 hlt
    }

theorem source_085_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_085_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_085_producer.sourceFacts h

/-- Source-position producer for source group `8d01ffb1214b5db411996120696b80f74da7f9d53f6e96db67f6774dd1eb5ef6`.
Observed bounded GoodDirection cases: 2. -/
def source_086_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_086_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_086_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_086_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_086_firstPosition r mask /\
    source_086_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_086_support r hlt mask

def source_086_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 152 /\
      key.secondIndex = 9 /\
      key.support = source_086_support /\
      source_086_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zp 4 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.zp 4 (by decide) hslot
        simpa [hfirst, hsupport, source_086_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_086_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_086_support] using hpos.2.2 hlt
    }

theorem source_086_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_086_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_086_producer.sourceFacts h

/-- Source-position producer for source group `931e02d27d2ae682f321421a2f36a7de30d2a55deccfa2da7ec733d2a044865a`.
Observed bounded GoodDirection cases: 2. -/
def source_087_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_087_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_087_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_087_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_087_firstPosition r mask /\
    source_087_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_087_support r hlt mask

def source_087_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 118 /\
      key.secondIndex = 1 /\
      key.support = source_087_support /\
      source_087_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpp 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tmpp 9 (by decide) hslot
        simpa [hfirst, hsupport, source_087_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_087_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_087_support] using hpos.2.2 hlt
    }

theorem source_087_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_087_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_087_producer.sourceFacts h

/-- Source-position producer for source group `be57b73d48efebe1d5e1a99b5d11961545d2d2850a72072aa6ce176e7931a72d`.
Observed bounded GoodDirection cases: 2. -/
def source_088_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tppp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_088_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

def source_088_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_088_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_088_firstPosition r mask /\
    source_088_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_088_support r hlt mask

def source_088_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 160 /\
      key.secondIndex = 9 /\
      key.support = source_088_support /\
      source_088_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppp 12 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.tppp 12 (by decide) hslot
        simpa [hfirst, hsupport, source_088_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_088_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_088_support] using hpos.2.2 hlt
    }

theorem source_088_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_088_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_088_producer.sourceFacts h

/-- Source-position producer for source group `d754266476573990aee606df2dc53152a30af4071e344286490ddaac6f4687a5`.
Observed bounded GoodDirection cases: 2. -/
def source_089_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_089_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_089_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_089_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_089_firstPosition r mask /\
    source_089_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_089_support r hlt mask

def source_089_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 162 /\
      key.secondIndex = 3 /\
      key.support = source_089_support /\
      source_089_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_089_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_089_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_089_support] using hpos.2.2 hlt
    }

theorem source_089_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_089_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_089_producer.sourceFacts h

/-- Source-position producer for source group `dfe287361bc22ac35e8bd46e60fe58fcbdb6731901aed5081bf46431793a3f0c`.
Observed bounded GoodDirection cases: 2. -/
def source_090_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm
  second := TranslationConstraintSource.ordering ⟨2, by decide⟩
def source_090_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_090_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_090_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_090_firstPosition r mask /\
    source_090_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_090_support r hlt mask

def source_090_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 175 /\
      key.secondIndex = 6 /\
      key.support = source_090_support /\
      source_090_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_090_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_090_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_090_support] using hpos.2.2 hlt
    }

theorem source_090_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_090_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_090_producer.sourceFacts h

/-- Source-position producer for source group `efb38cbfc23a8d420396479bdb26367029a9dfebcfdce6f750ad98a4c5d767b2`.
Observed bounded GoodDirection cases: 2. -/
def source_091_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_091_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_091_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_091_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_091_firstPosition r mask /\
    source_091_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_091_support r hlt mask

def source_091_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 123 /\
      key.secondIndex = 1 /\
      key.support = source_091_support /\
      source_091_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.xm 1 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.xm 1 (by decide) hslot
        simpa [hfirst, hsupport, source_091_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_091_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_091_support] using hpos.2.2 hlt
    }

theorem source_091_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_091_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_091_producer.sourceFacts h

/-- Source-position producer for source group `f7e0ae8bf6c31b41ebdd185b6a945916a51df58eb6488096643f50c2bc5c864f`.
Observed bounded GoodDirection cases: 2. -/
def source_092_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_092_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_092_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_092_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_092_firstPosition r mask /\
    source_092_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_092_support r hlt mask

def source_092_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 13 /\
      key.support = source_092_support /\
      source_092_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_092_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_092_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_092_support] using hpos.2.2 hlt
    }

theorem source_092_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_092_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_092_producer.sourceFacts h

/-- Source-position producer for source group `fd8087fd5e8a465ecba0f227af56206de438fb9a9c9010c17e50ec1757079960`.
Observed bounded GoodDirection cases: 2. -/
def source_093_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_093_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_093_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_093_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_093_firstPosition r mask /\
    source_093_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_093_support r hlt mask

def source_093_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 99 /\
      key.secondIndex = 7 /\
      key.support = source_093_support /\
      source_093_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.ym 3 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.ym 3 (by decide) hslot
        simpa [hfirst, hsupport, source_093_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_093_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_093_support] using hpos.2.2 hlt
    }

theorem source_093_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_093_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_093_producer.sourceFacts h

/-- Source-position producer for source group `078a4143221331a25a3bd84b77a80f01cbe816f0f6c06321a838fa7ba9ff4d91`.
Observed bounded GoodDirection cases: 1. -/
def source_094_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_094_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_094_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_094_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_094_firstPosition r mask /\
    source_094_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_094_support r hlt mask

def source_094_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 100 /\
      key.secondIndex = 9 /\
      key.support = source_094_support /\
      source_094_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zp 4 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩ Face.zp 4 (by decide) hslot
        simpa [hfirst, hsupport, source_094_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_094_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_094_support] using hpos.2.2 hlt
    }

theorem source_094_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_094_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_094_producer.sourceFacts h

/-- Source-position producer for source group `083583658331af406fd39ee8ee1166ef14b20485d1fcb92bf7d37f2ba1bab8dd`.
Observed bounded GoodDirection cases: 1. -/
def source_095_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_095_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨7, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_095_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_095_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_095_firstPosition r mask /\
    source_095_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_095_support r hlt mask

def source_095_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 96 /\
      key.secondIndex = 3 /\
      key.support = source_095_support /\
      source_095_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_095_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_095_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_095_support] using hpos.2.2 hlt
    }

theorem source_095_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_095_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_095_producer.sourceFacts h

/-- Source-position producer for source group `0cbdf040446a657cf691067225069c0d9b959a15b222004c311445dc3387baee`.
Observed bounded GoodDirection cases: 1. -/
def source_096_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tmpp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_096_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm]

def source_096_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_096_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_096_firstPosition r mask /\
    source_096_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_096_support r hlt mask

def source_096_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 182 /\
      key.secondIndex = 9 /\
      key.support = source_096_support /\
      source_096_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨13, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpp 8 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨13, by decide⟩ Face.tmpp 8 (by decide) hslot
        simpa [hfirst, hsupport, source_096_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_096_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_096_support] using hpos.2.2 hlt
    }

theorem source_096_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_096_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_096_producer.sourceFacts h

/-- Source-position producer for source group `1edcb023ddde23db52c39ae28a0a3a90b0204801f2c872f795ac32dd7463ed1d`.
Observed bounded GoodDirection cases: 1. -/
def source_097_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨12, by decide⟩
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_097_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_097_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_097_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_097_firstPosition r mask /\
    source_097_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_097_support r hlt mask

def source_097_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 16 /\
      key.secondIndex = 10 /\
      key.support = source_097_support /\
      source_097_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩
        simpa [hfirst, hsupport, source_097_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_097_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_097_support] using hpos.2.2 hlt
    }

theorem source_097_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_097_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_097_producer.sourceFacts h

/-- Source-position producer for source group `217c36e019ed6f7d0a32c479537f66b1f187ce6954790576e1d0cf8d54033e79`.
Observed bounded GoodDirection cases: 1. -/
def source_098_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_098_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_098_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_098_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_098_firstPosition r mask /\
    source_098_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_098_support r hlt mask

def source_098_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 156 /\
      key.secondIndex = 1 /\
      key.support = source_098_support /\
      source_098_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpm 8 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.tmpm 8 (by decide) hslot
        simpa [hfirst, hsupport, source_098_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_098_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_098_support] using hpos.2.2 hlt
    }

theorem source_098_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_098_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_098_producer.sourceFacts h

/-- Source-position producer for source group `247a0efb54e2bfe0301ab8f436270bd311ce5973f8dd47bebbc28ee388c7cdb9`.
Observed bounded GoodDirection cases: 1. -/
def source_099_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨10, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_099_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_099_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_099_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_099_firstPosition r mask /\
    source_099_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_099_support r hlt mask

def source_099_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 14 /\
      key.secondIndex = 7 /\
      key.support = source_099_support /\
      source_099_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hfirst, hsupport, source_099_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_099_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_099_support] using hpos.2.2 hlt
    }

theorem source_099_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_099_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_099_producer.sourceFacts h

/-- Source-position producer for source group `28e94bbc656b4bf785074e42ed51d5448c7350a6c00b18d3d1cfbf567505af31`.
Observed bounded GoodDirection cases: 1. -/
def source_100_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_100_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_100_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_100_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_100_firstPosition r mask /\
    source_100_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_100_support r hlt mask

def source_100_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 150 /\
      key.secondIndex = 9 /\
      key.support = source_100_support /\
      source_100_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.yp 2 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.yp 2 (by decide) hslot
        simpa [hfirst, hsupport, source_100_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_100_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_100_support] using hpos.2.2 hlt
    }

theorem source_100_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_100_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_100_producer.sourceFacts h

/-- Source-position producer for source group `2b6388ede33291ea96602d9c9e2a9fc270db0867cb59444b39bcb314c1c9014f`.
Observed bounded GoodDirection cases: 1. -/
def source_101_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨2, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_101_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨2, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp]

def source_101_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_101_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_101_firstPosition r mask /\
    source_101_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_101_support r hlt mask

def source_101_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 38 /\
      key.secondIndex = 9 /\
      key.support = source_101_support /\
      source_101_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨2, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpm 7 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩ Face.tmpm 7 (by decide) hslot
        simpa [hfirst, hsupport, source_101_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_101_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_101_support] using hpos.2.2 hlt
    }

theorem source_101_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_101_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_101_producer.sourceFacts h

/-- Source-position producer for source group `2b800b862b14b126db7da5de8ecb366b3046899e5bf665d7b4f7caa4263121e3`.
Observed bounded GoodDirection cases: 1. -/
def source_102_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_102_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_102_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_102_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_102_firstPosition r mask /\
    source_102_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_102_support r hlt mask

def source_102_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 15 /\
      key.secondIndex = 9 /\
      key.support = source_102_support /\
      source_102_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hfirst, hsupport, source_102_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_102_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_102_support] using hpos.2.2 hlt
    }

theorem source_102_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_102_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_102_producer.sourceFacts h

/-- Source-position producer for source group `36df3c847772960257057fa920cd6c397925f51fe352ce39d335e3fc633825f3`.
Observed bounded GoodDirection cases: 1. -/
def source_103_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tppp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_103_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]

def source_103_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_103_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_103_firstPosition r mask /\
    source_103_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_103_support r hlt mask

def source_103_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 82 /\
      key.secondIndex = 1 /\
      key.support = source_103_support /\
      source_103_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨5, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppp 12 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩ Face.tppp 12 (by decide) hslot
        simpa [hfirst, hsupport, source_103_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_103_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_103_support] using hpos.2.2 hlt
    }

theorem source_103_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_103_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_103_producer.sourceFacts h

/-- Source-position producer for source group `5cd2b8d249b8440a0fd569c0fd03684b4d78dde764124d44387d52f12bdc90a7`.
Observed bounded GoodDirection cases: 1. -/
def source_104_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_104_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_104_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_104_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_104_firstPosition r mask /\
    source_104_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_104_support r hlt mask

def source_104_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 138 /\
      key.secondIndex = 8 /\
      key.support = source_104_support /\
      source_104_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.ym 3 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.ym 3 (by decide) hslot
        simpa [hfirst, hsupport, source_104_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨4, by decide⟩
        simpa [hsecond, hsupport, source_104_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_104_support] using hpos.2.2 hlt
    }

theorem source_104_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_104_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_104_producer.sourceFacts h

/-- Source-position producer for source group `5cffa1f9d10d457647e00df7b6dda649f10ed5980c09083fb2b3783d019dfe42`.
Observed bounded GoodDirection cases: 1. -/
def source_105_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨0, by decide⟩
def source_105_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_105_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_105_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_105_firstPosition r mask /\
    source_105_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_105_support r hlt mask

def source_105_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 165 /\
      key.secondIndex = 4 /\
      key.support = source_105_support /\
      source_105_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zp 4 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.zp 4 (by decide) hslot
        simpa [hfirst, hsupport, source_105_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_105_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_105_support] using hpos.2.2 hlt
    }

theorem source_105_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_105_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_105_producer.sourceFacts h

/-- Source-position producer for source group `66c62bb80c8b920c2bf4bdba22fa74ee15747f7b1543bde9836f91383a70d540`.
Observed bounded GoodDirection cases: 1. -/
def source_106_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_106_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_106_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_106_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_106_firstPosition r mask /\
    source_106_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_106_support r hlt mask

def source_106_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 144 /\
      key.secondIndex = 1 /\
      key.support = source_106_support /\
      source_106_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_106_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_106_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_106_support] using hpos.2.2 hlt
    }

theorem source_106_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_106_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_106_producer.sourceFacts h

/-- Source-position producer for source group `69513940d46cde472b4471017c0bfa61111c9c3ee24ea1373d7766e706437d1d`.
Observed bounded GoodDirection cases: 1. -/
def source_107_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_107_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_107_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_107_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_107_firstPosition r mask /\
    source_107_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_107_support r hlt mask

def source_107_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 11 /\
      key.support = source_107_support /\
      source_107_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_107_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_107_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_107_support] using hpos.2.2 hlt
    }

theorem source_107_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_107_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_107_producer.sourceFacts h

/-- Source-position producer for source group `6ea38ac48148067a3b98668b48735d359bd3e05ad35cfd6d0b3a68b6ecdfaa91`.
Observed bounded GoodDirection cases: 1. -/
def source_108_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨11, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_108_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
      [Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_108_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_108_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_108_firstPosition r mask /\
    source_108_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_108_support r hlt mask

def source_108_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 151 /\
      key.secondIndex = 8 /\
      key.support = source_108_support /\
      source_108_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨11, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.ym 3 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩ Face.ym 3 (by decide) hslot
        simpa [hfirst, hsupport, source_108_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨4, by decide⟩
        simpa [hsecond, hsupport, source_108_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_108_support] using hpos.2.2 hlt
    }

theorem source_108_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_108_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_108_producer.sourceFacts h

/-- Source-position producer for source group `6f5fb047b666007a06f1ce9377f21b8da117bad4208df549a69be8296a5b9778`.
Observed bounded GoodDirection cases: 1. -/
def source_109_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_109_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_109_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_109_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_109_firstPosition r mask /\
    source_109_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_109_support r hlt mask

def source_109_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 131 /\
      key.secondIndex = 2 /\
      key.support = source_109_support /\
      source_109_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_109_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_109_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_109_support] using hpos.2.2 hlt
    }

theorem source_109_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_109_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_109_producer.sourceFacts h

/-- Source-position producer for source group `71bed1c91550624ac161fb5f95be4a0e23db6d7cf0d4771b0f808c232f5d5279`.
Observed bounded GoodDirection cases: 1. -/
def source_110_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.zm
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_110_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_110_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_110_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_110_firstPosition r mask /\
    source_110_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_110_support r hlt mask

def source_110_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 166 /\
      key.secondIndex = 12 /\
      key.support = source_110_support /\
      source_110_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zm 5 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.zm 5 (by decide) hslot
        simpa [hfirst, hsupport, source_110_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_110_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_110_support] using hpos.2.2 hlt
    }

theorem source_110_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_110_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_110_producer.sourceFacts h

/-- Source-position producer for source group `79ef97fb6d666e7a87dc049783bccbe5ea137ec584e5d69661d2643c96df42f5`.
Observed bounded GoodDirection cases: 1. -/
def source_111_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmpm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_111_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_111_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_111_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_111_firstPosition r mask /\
    source_111_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_111_support r hlt mask

def source_111_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 169 /\
      key.secondIndex = 2 /\
      key.support = source_111_support /\
      source_111_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tmpm 8 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.tmpm 8 (by decide) hslot
        simpa [hfirst, hsupport, source_111_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_111_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_111_support] using hpos.2.2 hlt
    }

theorem source_111_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_111_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_111_producer.sourceFacts h

/-- Source-position producer for source group `8003656c4f93c2bf284524f13125a5356394196a9110257757bca7c1606e6ded`.
Observed bounded GoodDirection cases: 1. -/
def source_112_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_112_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_112_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_112_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_112_firstPosition r mask /\
    source_112_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_112_support r hlt mask

def source_112_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 122 /\
      key.secondIndex = 2 /\
      key.support = source_112_support /\
      source_112_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_112_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_112_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_112_support] using hpos.2.2 hlt
    }

theorem source_112_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_112_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_112_producer.sourceFacts h

/-- Source-position producer for source group `82b4c903b618d8f6af6604c611115dc1afabbd41d7fadc71f5af86b33a1296a8`.
Observed bounded GoodDirection cases: 1. -/
def source_113_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_113_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_113_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_113_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_113_firstPosition r mask /\
    source_113_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_113_support r hlt mask

def source_113_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 129 /\
      key.secondIndex = 0 /\
      key.support = source_113_support /\
      source_113_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_113_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_113_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_113_support] using hpos.2.2 hlt
    }

theorem source_113_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_113_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_113_producer.sourceFacts h

/-- Source-position producer for source group `82ca02b3269cf86014fb2c57845f17d7ed0112922ae596f337641c4a7abb871f`.
Observed bounded GoodDirection cases: 1. -/
def source_114_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.zp
  second := TranslationConstraintSource.ordering ⟨5, by decide⟩
def source_114_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_114_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_114_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_114_firstPosition r mask /\
    source_114_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_114_support r hlt mask

def source_114_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 126 /\
      key.secondIndex = 9 /\
      key.support = source_114_support /\
      source_114_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.zp 4 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.zp 4 (by decide) hslot
        simpa [hfirst, hsupport, source_114_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨5, by decide⟩
        simpa [hsecond, hsupport, source_114_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_114_support] using hpos.2.2 hlt
    }

theorem source_114_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_114_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_114_producer.sourceFacts h

/-- Source-position producer for source group `86109a16e6ccaeddc3fec2f8c927f4a8525fc491c31d003987171de3c4be4f44`.
Observed bounded GoodDirection cases: 1. -/
def source_115_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_115_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]

def source_115_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_115_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_115_firstPosition r mask /\
    source_115_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_115_support r hlt mask

def source_115_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 133 /\
      key.secondIndex = 0 /\
      key.support = source_115_support /\
      source_115_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tppm 11 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tppm 11 (by decide) hslot
        simpa [hfirst, hsupport, source_115_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_115_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_115_support] using hpos.2.2 hlt
    }

theorem source_115_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_115_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_115_producer.sourceFacts h

/-- Source-position producer for source group `908c45896579038152393b0266e124f043f87d2ef611acdcdacf099605c0c975`.
Observed bounded GoodDirection cases: 1. -/
def source_116_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_116_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_116_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_116_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_116_firstPosition r mask /\
    source_116_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_116_support r hlt mask

def source_116_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 14 /\
      key.support = source_116_support /\
      source_116_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_116_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_116_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_116_support] using hpos.2.2 hlt
    }

theorem source_116_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_116_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_116_producer.sourceFacts h

/-- Source-position producer for source group `9a5af27213404aae93989cc5e515d89bef1185f12232a3b562a262b66a24a66b`.
Observed bounded GoodDirection cases: 1. -/
def source_117_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨9, by decide⟩
def source_117_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_117_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_117_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_117_firstPosition r mask /\
    source_117_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_117_support r hlt mask

def source_117_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 13 /\
      key.support = source_117_support /\
      source_117_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_117_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩
        simpa [hsecond, hsupport, source_117_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_117_support] using hpos.2.2 hlt
    }

theorem source_117_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_117_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_117_producer.sourceFacts h

/-- Source-position producer for source group `a37f8101dcae03099f78cfc4669c4f609149b66822b47473087e6f3be7fab299`.
Observed bounded GoodDirection cases: 1. -/
def source_118_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_118_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]

def source_118_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_118_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_118_firstPosition r mask /\
    source_118_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_118_support r hlt mask

def source_118_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 120 /\
      key.secondIndex = 1 /\
      key.support = source_118_support /\
      source_118_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_118_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_118_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_118_support] using hpos.2.2 hlt
    }

theorem source_118_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_118_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_118_producer.sourceFacts h

/-- Source-position producer for source group `a3893c9add25395d9886c58f871a616d784ea86728718c2cb9f85f2f70e7e9f2`.
Observed bounded GoodDirection cases: 1. -/
def source_119_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp
  second := TranslationConstraintSource.xpStart ⟨3, by decide⟩
def source_119_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_119_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_119_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_119_firstPosition r mask /\
    source_119_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_119_support r hlt mask

def source_119_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 135 /\
      key.secondIndex = 3 /\
      key.support = source_119_support /\
      source_119_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_119_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_119_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_119_support] using hpos.2.2 hlt
    }

theorem source_119_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_119_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_119_producer.sourceFacts h

/-- Source-position producer for source group `a742dfdf7f812d9324a28b43415964c0399f8f1b646b65cefdc509855e8d2a22`.
Observed bounded GoodDirection cases: 1. -/
def source_120_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_120_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]

def source_120_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_120_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_120_firstPosition r mask /\
    source_120_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_120_support r hlt mask

def source_120_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 131 /\
      key.secondIndex = 0 /\
      key.support = source_120_support /\
      source_120_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmm 9 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tpmm 9 (by decide) hslot
        simpa [hfirst, hsupport, source_120_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_120_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_120_support] using hpos.2.2 hlt
    }

theorem source_120_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_120_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_120_producer.sourceFacts h

/-- Source-position producer for source group `aecb5b8169d3418ca3e0c8722a6ef8424a85aa067cf993b94afabb5b92a7fa74`.
Observed bounded GoodDirection cases: 1. -/
def source_121_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.ym
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_121_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_121_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_121_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_121_firstPosition r mask /\
    source_121_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_121_support r hlt mask

def source_121_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 125 /\
      key.secondIndex = 8 /\
      key.support = source_121_support /\
      source_121_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.ym 3 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.ym 3 (by decide) hslot
        simpa [hfirst, hsupport, source_121_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨4, by decide⟩
        simpa [hsecond, hsupport, source_121_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_121_support] using hpos.2.2 hlt
    }

theorem source_121_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_121_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_121_producer.sourceFacts h

/-- Source-position producer for source group `bfe796d966fc10b168b1e9497975105f533ecf88108b0b72a97181d3b9a8b538`.
Observed bounded GoodDirection cases: 1. -/
def source_122_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨6, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨4, by decide⟩
def source_122_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
      [Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_122_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_122_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_122_firstPosition r mask /\
    source_122_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_122_support r hlt mask

def source_122_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 85 /\
      key.secondIndex = 8 /\
      key.support = source_122_support /\
      source_122_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨6, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.yp 2 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩ Face.yp 2 (by decide) hslot
        simpa [hfirst, hsupport, source_122_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨4, by decide⟩
        simpa [hsecond, hsupport, source_122_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_122_support] using hpos.2.2 hlt
    }

theorem source_122_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_122_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_122_producer.sourceFacts h

/-- Source-position producer for source group `c7d3b5b0b469a713c5ef760075fad7072ef47d94d0ba72707a2b8fe7c9456790`.
Observed bounded GoodDirection cases: 1. -/
def source_123_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨2, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_123_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_123_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_123_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_123_firstPosition r mask /\
    source_123_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_123_support r hlt mask

def source_123_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 6 /\
      key.secondIndex = 12 /\
      key.support = source_123_support /\
      source_123_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hfirst, hsupport, source_123_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_123_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_123_support] using hpos.2.2 hlt
    }

theorem source_123_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_123_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_123_producer.sourceFacts h

/-- Source-position producer for source group `cc88066bdc34aec44c0a7edfa18a9ca47f8a324019dae922eeb0e429aa68a20c`.
Observed bounded GoodDirection cases: 1. -/
def source_124_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_124_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_124_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_124_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_124_firstPosition r mask /\
    source_124_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_124_support r hlt mask

def source_124_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 119 /\
      key.secondIndex = 2 /\
      key.support = source_124_support /\
      source_124_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_124_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_124_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_124_support] using hpos.2.2 hlt
    }

theorem source_124_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_124_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_124_producer.sourceFacts h

/-- Source-position producer for source group `d0464ace03d89ae4ae17473c7653bde5dc9482cd9b144f4030e1e06c5c22f10a`.
Observed bounded GoodDirection cases: 1. -/
def source_125_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨0, by decide⟩
  second := TranslationConstraintSource.ordering ⟨11, by decide⟩
def source_125_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_125_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_125_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_125_firstPosition r mask /\
    source_125_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_125_support r hlt mask

def source_125_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 4 /\
      key.secondIndex = 15 /\
      key.support = source_125_support /\
      source_125_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hfirst, hsupport, source_125_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hsecond, hsupport, source_125_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_125_support] using hpos.2.2 hlt
    }

theorem source_125_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_125_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_125_producer.sourceFacts h

/-- Source-position producer for source group `d25ecdc8196d879effc10eb3c004a55338671165328bec4a06e84a5ef0f16e0c`.
Observed bounded GoodDirection cases: 1. -/
def source_126_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨8, by decide⟩
def source_126_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_126_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_126_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_126_firstPosition r mask /\
    source_126_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_126_support r hlt mask

def source_126_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 12 /\
      key.support = source_126_support /\
      source_126_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_126_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨8, by decide⟩
        simpa [hsecond, hsupport, source_126_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_126_support] using hpos.2.2 hlt
    }

theorem source_126_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_126_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_126_producer.sourceFacts h

/-- Source-position producer for source group `d2c9da6ae3df0300b66c883e492054ad007db1c7555ac4fa81be774115911624`.
Observed bounded GoodDirection cases: 1. -/
def source_127_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨11, by decide⟩
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_127_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_127_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_127_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_127_firstPosition r mask /\
    source_127_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_127_support r hlt mask

def source_127_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 15 /\
      key.secondIndex = 7 /\
      key.support = source_127_support /\
      source_127_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨11, by decide⟩
        simpa [hfirst, hsupport, source_127_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_127_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_127_support] using hpos.2.2 hlt
    }

theorem source_127_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_127_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_127_producer.sourceFacts h

/-- Source-position producer for source group `d326e342382dccd7971de54f908dc8f0ff3bb1439143b447c7951d7367caf629`.
Observed bounded GoodDirection cases: 1. -/
def source_128_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.ordering ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨7, by decide⟩
def source_128_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_128_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_128_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_128_firstPosition r mask /\
    source_128_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_128_support r hlt mask

def source_128_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 7 /\
      key.secondIndex = 11 /\
      key.support = source_128_support /\
      source_128_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_128_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨7, by decide⟩
        simpa [hsecond, hsupport, source_128_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_128_support] using hpos.2.2 hlt
    }

theorem source_128_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_128_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_128_producer.sourceFacts h

/-- Source-position producer for source group `da12e353ea23ed00f9c7704e333b04ffe57255a2a604b1778975dd6d929e4d4d`.
Observed bounded GoodDirection cases: 1. -/
def source_129_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm
  second := TranslationConstraintSource.xpStart ⟨2, by decide⟩
def source_129_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_129_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_129_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_129_firstPosition r mask /\
    source_129_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_129_support r hlt mask

def source_129_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 110 /\
      key.secondIndex = 2 /\
      key.support = source_129_support /\
      source_129_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_129_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨2, by decide⟩
        simpa [hsecond, hsupport, source_129_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_129_support] using hpos.2.2 hlt
    }

theorem source_129_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_129_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_129_producer.sourceFacts h

/-- Source-position producer for source group `e66b5ad9ee8bc9f491283f9a8eb955eb20483c08b360fff5072ee88e0f1e5a60`.
Observed bounded GoodDirection cases: 1. -/
def source_130_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.xpStart ⟨3, by decide⟩
  second := TranslationConstraintSource.ordering ⟨10, by decide⟩
def source_130_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_130_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_130_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_130_firstPosition r mask /\
    source_130_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_130_support r hlt mask

def source_130_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 3 /\
      key.secondIndex = 14 /\
      key.support = source_130_support /\
      source_130_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hfirst, hsupport, source_130_support] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩
        simpa [hsecond, hsupport, source_130_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_130_support] using hpos.2.2 hlt
    }

theorem source_130_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_130_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_130_producer.sourceFacts h

/-- Source-position producer for source group `ea57b8df7c9c79fe346d21c843aff07ca506853234a886386b8ed6bd67ff84be`.
Observed bounded GoodDirection cases: 1. -/
def source_131_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.ordering ⟨6, by decide⟩
def source_131_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨8, by decide⟩ ∈
      [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_131_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_131_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_131_firstPosition r mask /\
    source_131_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_131_support r hlt mask

def source_131_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 115 /\
      key.secondIndex = 10 /\
      key.support = source_131_support /\
      source_131_positionPredicate r mask
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
        simpa [hfirst, hsupport, source_131_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨6, by decide⟩
        simpa [hsecond, hsupport, source_131_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_131_support] using hpos.2.2 hlt
    }

theorem source_131_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_131_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_131_producer.sourceFacts h

/-- Source-position producer for source group `ecb47b35ad273124ccc8bec1c670d919f5225ba2002b63f76b9c404814ab9b83`.
Observed bounded GoodDirection cases: 1. -/
def source_132_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨1, by decide⟩
def source_132_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_132_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_132_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_132_firstPosition r mask /\
    source_132_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_132_support r hlt mask

def source_132_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 132 /\
      key.secondIndex = 1 /\
      key.support = source_132_support /\
      source_132_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨9, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨9, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_132_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨1, by decide⟩
        simpa [hsecond, hsupport, source_132_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_132_support] using hpos.2.2 hlt
    }

theorem source_132_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_132_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_132_producer.sourceFacts h

/-- Source-position producer for source group `fb73ecf45c502e1e0bb73e03d74be50626881d28dd1aaec07a912e61c88e3ee0`.
Observed bounded GoodDirection cases: 1. -/
def source_133_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨12, by decide⟩ Face.yp
  second := TranslationConstraintSource.ordering ⟨3, by decide⟩
def source_133_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
      [Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def source_133_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_133_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_133_firstPosition r mask /\
    source_133_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_133_support r hlt mask

def source_133_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 163 /\
      key.secondIndex = 7 /\
      key.support = source_133_support /\
      source_133_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨12, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.yp 2 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨12, by decide⟩ Face.yp 2 (by decide) hslot
        simpa [hfirst, hsupport, source_133_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_ordering
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨3, by decide⟩
        simpa [hsecond, hsupport, source_133_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_133_support] using hpos.2.2 hlt
    }

theorem source_133_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_133_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_133_producer.sourceFacts h

/-- Source-position producer for source group `fc99020369b8383293235d56c1f64563f91705c0495987921fa1675f6247a8c3`.
Observed bounded GoodDirection cases: 1. -/
def source_134_support : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩
def source_134_firstPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ hlt : r < numPairWords,
    impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
      [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]

def source_134_secondPosition (r : Nat) (mask : SignMask) : Prop :=
  ∀ _hlt : r < numPairWords, True

def source_134_positionPredicate (r : Nat) (mask : SignMask) : Prop :=
  source_134_firstPosition r mask /\
    source_134_secondPosition r mask /\
      ∀ hlt : r < numPairWords, SourceChecks source_134_support r hlt mask

def source_134_producer : SourceIndexStateSourceProducer where
  Applies := fun key r mask =>
    key.firstIndex = 145 /\
      key.secondIndex = 0 /\
      key.support = source_134_support /\
      source_134_positionPredicate r mask
  sourceFacts := by
    intro key r mask h
    rcases h with ⟨hfirst, hsecond, hsupport, hpos⟩
    exact {
      firstSource := fun hlt => by
        have hslot :
            impactFace (translationSeqAtRankMask ⟨r, hlt⟩ mask) ⟨10, by decide⟩ ∈
              interiorExcludedFacesForSlot Face.tpmp 10 := by
          simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
            allFacesList] using (hpos.1 hlt)
        have hlookup := lookup_interior_of_excluded_slot
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨10, by decide⟩ Face.tpmp 10 (by decide) hslot
        simpa [hfirst, hsupport, source_134_support, interiorSourceIndex] using hlookup
      secondSource := fun hlt => by
        have hlookup := lookup_xpStart
          (translationSeqAtRankMask ⟨r, hlt⟩ mask)
          ⟨0, by decide⟩
        simpa [hsecond, hsupport, source_134_support] using hlookup
      sourceChecks := fun hlt => by
        simpa [hsupport, source_134_support] using hpos.2.2 hlt
    }

theorem source_134_sourceFacts
    {key : SourceIndexStateKey} {r : Nat} {mask : SignMask}
    (h : source_134_producer.Applies key r mask) :
    SourceIndexStateSourceFacts key r mask :=
  source_134_producer.sourceFacts h

theorem sourcePositionProducerSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerSmoke
