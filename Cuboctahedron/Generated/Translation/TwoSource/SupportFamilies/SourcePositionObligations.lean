import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

/-!
Generated Lean smoke for all source-position obligations profiled in
Phase 6Z.6K.8V / AP16DU9FC.

The profile is diagnostic only. This module is the Lean-checked part:
each theorem proves that a profiled source-list position follows from
the generic `SourcePositionLanguage` lookup lemmas, without bounded
rank/mask replay.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage

theorem obligation_xpStart_0
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 0 =
      some (TranslationConstraintSource.xpStart ⟨0, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨0, by decide⟩

theorem obligation_interior_1_tmmm_slot5_excluded_xp_xm_yp_ym_zp_zm
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

theorem obligation_xpStart_2
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 2 =
      some (TranslationConstraintSource.xpStart ⟨2, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨2, by decide⟩

theorem obligation_interior_1_tmmp_slot6_excluded_xp_xm_yp_ym_zp_zm_tmmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm]) :
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

theorem obligation_interior_1_tmpm_slot7_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp]) :
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

theorem obligation_interior_6_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_ordering_11
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 15 =
      some (TranslationConstraintSource.ordering ⟨11, by decide⟩) := by
  simpa using lookup_ordering seq ⟨11, by decide⟩

theorem obligation_ordering_6
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 10 =
      some (TranslationConstraintSource.ordering ⟨6, by decide⟩) := by
  simpa using lookup_ordering seq ⟨6, by decide⟩

theorem obligation_ordering_9
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 13 =
      some (TranslationConstraintSource.ordering ⟨9, by decide⟩) := by
  simpa using lookup_ordering seq ⟨9, by decide⟩

theorem obligation_ordering_7
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 11 =
      some (TranslationConstraintSource.ordering ⟨7, by decide⟩) := by
  simpa using lookup_ordering seq ⟨7, by decide⟩

theorem obligation_xpStart_3
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 3 =
      some (TranslationConstraintSource.xpStart ⟨3, by decide⟩) := by
  simpa using lookup_xpStart seq ⟨3, by decide⟩

theorem obligation_ordering_8
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 12 =
      some (TranslationConstraintSource.ordering ⟨8, by decide⟩) := by
  simpa using lookup_ordering seq ⟨8, by decide⟩

theorem obligation_interior_6_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_interior_8_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_7_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_ordering_10
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 14 =
      some (TranslationConstraintSource.ordering ⟨10, by decide⟩) := by
  simpa using lookup_ordering seq ⟨10, by decide⟩

theorem obligation_interior_12_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_interior_1_tmpp_slot8_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨1, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm]) :
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

theorem obligation_interior_13_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_ordering_12
    (seq : Step14 -> Face) :
    listGet? (translationConstraintSources seq) 16 =
      some (TranslationConstraintSource.ordering ⟨12, by decide⟩) := by
  simpa using lookup_ordering seq ⟨12, by decide⟩

theorem obligation_interior_10_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_interior_11_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_12_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_5_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨5, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
    listGet? (translationConstraintSources seq) 70 =
      some (TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xp) := by
  have hslot :
      impactFace seq ⟨5, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xp 0 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨5, by decide⟩ Face.xp 0
      (by decide) hslot

theorem obligation_interior_9_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_10_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_8_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_interior_5_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨5, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 71 =
      some (TranslationConstraintSource.interior ⟨5, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨5, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨5, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_13_tpmm_slot9_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]) :
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

theorem obligation_interior_3_xp_slot0_excluded_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨3, by decide⟩ ∈
        [Face.xm, Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm,
          Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
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

theorem obligation_interior_11_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
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

theorem obligation_interior_12_tmmm_slot6_excluded_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_13_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨13, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
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

theorem obligation_interior_7_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 97 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_6_tppp_slot12_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp,
          Face.tppm]) :
    listGet? (translationConstraintSources seq) 95 =
      some (TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppp) := by
  have hslot :
      impactFace seq ⟨6, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppp 12 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨6, by decide⟩ Face.tppp 12
      (by decide) hslot

theorem obligation_interior_7_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
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

theorem obligation_interior_6_tpmm_slot9_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]) :
    listGet? (translationConstraintSources seq) 92 =
      some (TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tpmm) := by
  have hslot :
      impactFace seq ⟨6, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmm 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨6, by decide⟩ Face.tpmm 9
      (by decide) hslot

theorem obligation_interior_8_tmmm_slot6_excluded_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_8_tppp_slot12_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp,
          Face.tppm]) :
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

theorem obligation_interior_10_tppp_slot12_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp,
          Face.tppm]) :
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

theorem obligation_interior_10_tmmm_slot6_excluded_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_8_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 119 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_9_xm_slot1_excluded_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.yp, Face.ym, Face.zp, Face.zm, Face.tmmm, Face.tmmp,
          Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 123 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.xm) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.xm 1 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.xm 1
      (by decide) hslot

theorem obligation_interior_5_tmpp_slot9_excluded_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨5, by decide⟩ ∈
        [Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 79 =
      some (TranslationConstraintSource.interior ⟨5, by decide⟩ Face.tmpp) := by
  have hslot :
      impactFace seq ⟨5, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpp 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨5, by decide⟩ Face.tmpp 9
      (by decide) hslot

theorem obligation_interior_7_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 103 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_7_tpmm_slot9_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]) :
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

theorem obligation_interior_9_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_12_tpmm_slot9_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp]) :
    listGet? (translationConstraintSources seq) 170 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmm) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmm 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.tpmm 9
      (by decide) hslot

theorem obligation_interior_12_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_6_tppm_slot11_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨6, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]) :
    listGet? (translationConstraintSources seq) 94 =
      some (TranslationConstraintSource.interior ⟨6, by decide⟩ Face.tppm) := by
  have hslot :
      impactFace seq ⟨6, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppm 11 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨6, by decide⟩ Face.tppm 11
      (by decide) hslot

theorem obligation_interior_7_tppm_slot11_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨7, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]) :
    listGet? (translationConstraintSources seq) 107 =
      some (TranslationConstraintSource.interior ⟨7, by decide⟩ Face.tppm) := by
  have hslot :
      impactFace seq ⟨7, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppm 11 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨7, by decide⟩ Face.tppm 11
      (by decide) hslot

theorem obligation_interior_9_tmpp_slot9_excluded_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 131 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpp) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpp 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tmpp 9
      (by decide) hslot

theorem obligation_interior_10_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
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

theorem obligation_interior_11_tmpm_slot8_excluded_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 156 =
      some (TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpm) := by
  have hslot :
      impactFace seq ⟨11, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpm 8 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨11, by decide⟩ Face.tmpm 8
      (by decide) hslot

theorem obligation_interior_8_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 116 =
      some (TranslationConstraintSource.interior ⟨8, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨8, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨8, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_10_tmpm_slot8_excluded_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 143 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tmpm) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpm 8 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.tmpm 8
      (by decide) hslot

theorem obligation_interior_11_tmpp_slot9_excluded_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 157 =
      some (TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmpp) := by
  have hslot :
      impactFace seq ⟨11, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpp 9 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨11, by decide⟩ Face.tmpp 9
      (by decide) hslot

theorem obligation_interior_12_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨12, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 171 =
      some (TranslationConstraintSource.interior ⟨12, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨12, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨12, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_8_tppm_slot11_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨8, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]) :
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

theorem obligation_interior_9_tmpm_slot8_excluded_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 130 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmpm) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmpm 8 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tmpm 8
      (by decide) hslot

theorem obligation_interior_10_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨10, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 145 =
      some (TranslationConstraintSource.interior ⟨10, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨10, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨10, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_11_tmmp_slot7_excluded_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨11, by decide⟩ ∈
        [Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]) :
    listGet? (translationConstraintSources seq) 155 =
      some (TranslationConstraintSource.interior ⟨11, by decide⟩ Face.tmmp) := by
  have hslot :
      impactFace seq ⟨11, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmp 7 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨11, by decide⟩ Face.tmmp 7
      (by decide) hslot

theorem obligation_interior_9_tmmm_slot6_excluded_tmmp_tmpm_tmpp_tpmm_tpmp_tppm_tppp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppm,
          Face.tppp]) :
    listGet? (translationConstraintSources seq) 128 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tmmm) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tmmm 6 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tmmm 6
      (by decide) hslot

theorem obligation_interior_9_tpmp_slot10_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm]) :
    listGet? (translationConstraintSources seq) 132 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tpmp) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tpmp 10 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tpmp 10
      (by decide) hslot

theorem obligation_interior_9_tppm_slot11_excluded_xp_xm_yp_ym_zp_zm_tmmm_tmmp_tmpm_tmpp_tpmm_tpmp
    (seq : Step14 -> Face)
    (himpact :
      impactFace seq ⟨9, by decide⟩ ∈
        [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
          Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp, Face.tpmm, Face.tpmp]) :
    listGet? (translationConstraintSources seq) 133 =
      some (TranslationConstraintSource.interior ⟨9, by decide⟩ Face.tppm) := by
  have hslot :
      impactFace seq ⟨9, by decide⟩ ∈
        interiorExcludedFacesForSlot Face.tppm 11 := by
    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,
      allFacesList] using himpact
  simpa [interiorSourceIndex] using
    lookup_interior_of_excluded_slot seq ⟨9, by decide⟩ Face.tppm 11
      (by decide) hslot

theorem sourcePositionObligations_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations
