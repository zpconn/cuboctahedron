import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

/-!
Lean smoke for all source-position obligations profiled in Phase 6Z.6K.8V.

This module proves one small lookup theorem for each of the 44 static or
dynamic source-language obligations from the `[0,1000)` profiler.  The
dynamic obligations all use the reusable `lookup_interior_of_excluded_slot`
theorem rather than replaying rank/mask cases.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

theorem obligation_xpStart_0
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 0 =
      some (TranslationConstraintSource.xpStart ⟨0, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨0, by decide⟩

theorem obligation_interior_1_tmmm_slot5
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm]) :
    listGet? (translationConstraintSources seq) 23 =
      some (TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm) := by
  have hslot :
      impactFace seq ⟨1, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmm 5 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨1, by decide⟩ Face.tmmm 5
      (by decide) hslot

theorem obligation_xpStart_1
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 1 =
      some (TranslationConstraintSource.xpStart ⟨1, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨1, by decide⟩

theorem obligation_interior_6_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 83 =
      some (TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨6, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨6, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_xpStart_2
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 2 =
      some (TranslationConstraintSource.xpStart ⟨2, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨2, by decide⟩

theorem obligation_interior_1_tmmp_slot6
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm]) :
    listGet? (translationConstraintSources seq) 24 =
      some (TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨1, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 6 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨1, by decide⟩ Face.tmmp 6
      (by decide) hslot

theorem obligation_ordering_3
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 7 =
      some (TranslationConstraintSource.ordering ⟨3, by decide⟩) := by
  simpa using lookup_ordering seq ⟨3, by decide⟩

theorem obligation_interior_1_tmpm_slot7
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp]) :
    listGet? (translationConstraintSources seq) 25 =
      some (TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpm) := by
  have hslot :
      impactFace seq ⟨1, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpm 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨1, by decide⟩ Face.tmpm 7
      (by decide) hslot

theorem obligation_ordering_11
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 15 =
      some (TranslationConstraintSource.ordering ⟨11, by decide⟩) := by
  simpa using lookup_ordering seq ⟨11, by decide⟩

theorem obligation_ordering_7
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 11 =
      some (TranslationConstraintSource.ordering ⟨7, by decide⟩) := by
  simpa using lookup_ordering seq ⟨7, by decide⟩

theorem obligation_ordering_9
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 13 =
      some (TranslationConstraintSource.ordering ⟨9, by decide⟩) := by
  simpa using lookup_ordering seq ⟨9, by decide⟩

theorem obligation_xpStart_3
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 3 =
      some (TranslationConstraintSource.xpStart ⟨3, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨3, by decide⟩

theorem obligation_ordering_10
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 14 =
      some (TranslationConstraintSource.ordering ⟨10, by decide⟩) := by
  simpa using lookup_ordering seq ⟨10, by decide⟩

theorem obligation_ordering_6
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 10 =
      some (TranslationConstraintSource.ordering ⟨6, by decide⟩) := by
  simpa using lookup_ordering seq ⟨6, by decide⟩

theorem obligation_ordering_8
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 12 =
      some (TranslationConstraintSource.ordering ⟨8, by decide⟩) := by
  simpa using lookup_ordering seq ⟨8, by decide⟩

theorem obligation_ordering_12
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 16 =
      some (TranslationConstraintSource.ordering ⟨12, by decide⟩) := by
  simpa using lookup_ordering seq ⟨12, by decide⟩

theorem obligation_interior_6_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 84 =
      some (TranslationConstraintSource.interior ⟨6, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨6, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨6, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_8_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 109 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_1_tmpp_slot8
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm]) :
    listGet? (translationConstraintSources seq) 26 =
      some (TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmpp) := by
  have hslot :
      impactFace seq ⟨1, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpp 8 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨1, by decide⟩ Face.tmpp 8
      (by decide) hslot

theorem obligation_interior_9_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 122 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_11_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 148 =
      some (TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨11, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨11, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_13_tpmm_slot9
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp]) :
    listGet? (translationConstraintSources seq) 183 =
      some (TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmm) := by
  have hslot :
      impactFace seq ⟨13, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmm 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨13, by decide⟩ Face.tpmm 9
      (by decide) hslot

theorem obligation_interior_7_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 96 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_12_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 162 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_10_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 136 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_13_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 175 =
      some (TranslationConstraintSource.interior ⟨13, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨13, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨13, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_8_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 110 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_3_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨3, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 44 =
      some (TranslationConstraintSource.interior ⟨3, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨3, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨3, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_ordering_1
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 5 =
      some (TranslationConstraintSource.ordering ⟨1, by decide⟩) := by
  simpa using lookup_ordering seq ⟨1, by decide⟩

theorem obligation_interior_12_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 161 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_13_tpmp_slot10
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 184 =
      some (TranslationConstraintSource.interior ⟨13, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨13, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨13, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_12_tmmm_slot6
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
    listGet? (translationConstraintSources seq) 167 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmm) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmm 6 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.tmmm 6
      (by decide) hslot

theorem obligation_interior_7_tpmm_slot9
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp]) :
    listGet? (translationConstraintSources seq) 105 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmm) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmm 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.tpmm 9
      (by decide) hslot

theorem obligation_interior_10_tppp_slot12
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]) :
    listGet? (translationConstraintSources seq) 147 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tppp) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppp 12 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.tppp 12
      (by decide) hslot

theorem obligation_interior_8_tppp_slot12
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm]) :
    listGet? (translationConstraintSources seq) 121 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppp) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppp 12 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.tppp 12
      (by decide) hslot

theorem obligation_interior_10_xp_slot0
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 135 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_12_tmmp_slot7
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 168 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_7_tpmp_slot10
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 106 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_8_tmmm_slot6
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
    listGet? (translationConstraintSources seq) 115 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmm) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmm 6 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.tmmm 6
      (by decide) hslot

theorem obligation_interior_11_xm_slot1
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp, Face.tmpm,
          Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 149 =
      some (TranslationConstraintSource.interior ⟨11, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨11, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨11, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_9_tmmp_slot7
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 129 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_10_tmmm_slot6
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
    listGet? (translationConstraintSources seq) 141 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmm) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmm 6 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.tmmm 6
      (by decide) hslot

theorem obligation_interior_10_tmmp_slot7
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 142 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_8_tppm_slot11
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]) :
    listGet? (translationConstraintSources seq) 120 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tppm) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppm 11 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.tppm 11
      (by decide) hslot

theorem sourcePositionObligations_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations
