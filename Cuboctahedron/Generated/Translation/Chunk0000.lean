import Cuboctahedron.Generated.SmallSample

/-!
Generated translation-choice sample chunk for Step 13.

This is a small exact chunk scaffold, not the exhaustive final search.
-/

namespace Cuboctahedron.Generated.Translation.Chunk0000

set_option maxHeartbeats 800000
set_option maxRecDepth 10000

open Cuboctahedron.Generated.SmallSample

def chunkMeta : GeneratedChunkMeta where
  name := "Translation.Chunk0000"
  startRank := 0
  endRank := 256
  expectedItems := 256

def choiceSeq000 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨0, by decide⟩)

def choiceCert000 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨0, by decide⟩
  seq := choiceSeq000
  b := translationVectorOfChoice word000 ⟨0, by decide⟩

theorem choiceCert000_check :
    checkTranslationChoiceCert choiceCert000 = true := by
  simp [checkTranslationChoiceCert, choiceCert000, choiceSeq000,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq001 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨1, by decide⟩)

def choiceCert001 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨1, by decide⟩
  seq := choiceSeq001
  b := translationVectorOfChoice word000 ⟨1, by decide⟩

theorem choiceCert001_check :
    checkTranslationChoiceCert choiceCert001 = true := by
  simp [checkTranslationChoiceCert, choiceCert001, choiceSeq001,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq002 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨2, by decide⟩)

def choiceCert002 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨2, by decide⟩
  seq := choiceSeq002
  b := translationVectorOfChoice word000 ⟨2, by decide⟩

theorem choiceCert002_check :
    checkTranslationChoiceCert choiceCert002 = true := by
  simp [checkTranslationChoiceCert, choiceCert002, choiceSeq002,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq003 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨3, by decide⟩)

def choiceCert003 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨3, by decide⟩
  seq := choiceSeq003
  b := translationVectorOfChoice word000 ⟨3, by decide⟩

theorem choiceCert003_check :
    checkTranslationChoiceCert choiceCert003 = true := by
  simp [checkTranslationChoiceCert, choiceCert003, choiceSeq003,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq004 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨4, by decide⟩)

def choiceCert004 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨4, by decide⟩
  seq := choiceSeq004
  b := translationVectorOfChoice word000 ⟨4, by decide⟩

theorem choiceCert004_check :
    checkTranslationChoiceCert choiceCert004 = true := by
  simp [checkTranslationChoiceCert, choiceCert004, choiceSeq004,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq005 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨5, by decide⟩)

def choiceCert005 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨5, by decide⟩
  seq := choiceSeq005
  b := translationVectorOfChoice word000 ⟨5, by decide⟩

theorem choiceCert005_check :
    checkTranslationChoiceCert choiceCert005 = true := by
  simp [checkTranslationChoiceCert, choiceCert005, choiceSeq005,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq006 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨6, by decide⟩)

def choiceCert006 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨6, by decide⟩
  seq := choiceSeq006
  b := translationVectorOfChoice word000 ⟨6, by decide⟩

theorem choiceCert006_check :
    checkTranslationChoiceCert choiceCert006 = true := by
  simp [checkTranslationChoiceCert, choiceCert006, choiceSeq006,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq007 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨7, by decide⟩)

def choiceCert007 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨7, by decide⟩
  seq := choiceSeq007
  b := translationVectorOfChoice word000 ⟨7, by decide⟩

theorem choiceCert007_check :
    checkTranslationChoiceCert choiceCert007 = true := by
  simp [checkTranslationChoiceCert, choiceCert007, choiceSeq007,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq008 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨8, by decide⟩)

def choiceCert008 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨8, by decide⟩
  seq := choiceSeq008
  b := translationVectorOfChoice word000 ⟨8, by decide⟩

theorem choiceCert008_check :
    checkTranslationChoiceCert choiceCert008 = true := by
  simp [checkTranslationChoiceCert, choiceCert008, choiceSeq008,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq009 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨9, by decide⟩)

def choiceCert009 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨9, by decide⟩
  seq := choiceSeq009
  b := translationVectorOfChoice word000 ⟨9, by decide⟩

theorem choiceCert009_check :
    checkTranslationChoiceCert choiceCert009 = true := by
  simp [checkTranslationChoiceCert, choiceCert009, choiceSeq009,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq010 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨10, by decide⟩)

def choiceCert010 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨10, by decide⟩
  seq := choiceSeq010
  b := translationVectorOfChoice word000 ⟨10, by decide⟩

theorem choiceCert010_check :
    checkTranslationChoiceCert choiceCert010 = true := by
  simp [checkTranslationChoiceCert, choiceCert010, choiceSeq010,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq011 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨11, by decide⟩)

def choiceCert011 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨11, by decide⟩
  seq := choiceSeq011
  b := translationVectorOfChoice word000 ⟨11, by decide⟩

theorem choiceCert011_check :
    checkTranslationChoiceCert choiceCert011 = true := by
  simp [checkTranslationChoiceCert, choiceCert011, choiceSeq011,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq012 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨12, by decide⟩)

def choiceCert012 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨12, by decide⟩
  seq := choiceSeq012
  b := translationVectorOfChoice word000 ⟨12, by decide⟩

theorem choiceCert012_check :
    checkTranslationChoiceCert choiceCert012 = true := by
  simp [checkTranslationChoiceCert, choiceCert012, choiceSeq012,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq013 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨13, by decide⟩)

def choiceCert013 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨13, by decide⟩
  seq := choiceSeq013
  b := translationVectorOfChoice word000 ⟨13, by decide⟩

theorem choiceCert013_check :
    checkTranslationChoiceCert choiceCert013 = true := by
  simp [checkTranslationChoiceCert, choiceCert013, choiceSeq013,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq014 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨14, by decide⟩)

def choiceCert014 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨14, by decide⟩
  seq := choiceSeq014
  b := translationVectorOfChoice word000 ⟨14, by decide⟩

theorem choiceCert014_check :
    checkTranslationChoiceCert choiceCert014 = true := by
  simp [checkTranslationChoiceCert, choiceCert014, choiceSeq014,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq015 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨15, by decide⟩)

def choiceCert015 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨15, by decide⟩
  seq := choiceSeq015
  b := translationVectorOfChoice word000 ⟨15, by decide⟩

theorem choiceCert015_check :
    checkTranslationChoiceCert choiceCert015 = true := by
  simp [checkTranslationChoiceCert, choiceCert015, choiceSeq015,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq016 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨16, by decide⟩)

def choiceCert016 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨16, by decide⟩
  seq := choiceSeq016
  b := translationVectorOfChoice word000 ⟨16, by decide⟩

theorem choiceCert016_check :
    checkTranslationChoiceCert choiceCert016 = true := by
  simp [checkTranslationChoiceCert, choiceCert016, choiceSeq016,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq017 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨17, by decide⟩)

def choiceCert017 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨17, by decide⟩
  seq := choiceSeq017
  b := translationVectorOfChoice word000 ⟨17, by decide⟩

theorem choiceCert017_check :
    checkTranslationChoiceCert choiceCert017 = true := by
  simp [checkTranslationChoiceCert, choiceCert017, choiceSeq017,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq018 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨18, by decide⟩)

def choiceCert018 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨18, by decide⟩
  seq := choiceSeq018
  b := translationVectorOfChoice word000 ⟨18, by decide⟩

theorem choiceCert018_check :
    checkTranslationChoiceCert choiceCert018 = true := by
  simp [checkTranslationChoiceCert, choiceCert018, choiceSeq018,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq019 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨19, by decide⟩)

def choiceCert019 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨19, by decide⟩
  seq := choiceSeq019
  b := translationVectorOfChoice word000 ⟨19, by decide⟩

theorem choiceCert019_check :
    checkTranslationChoiceCert choiceCert019 = true := by
  simp [checkTranslationChoiceCert, choiceCert019, choiceSeq019,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq020 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨20, by decide⟩)

def choiceCert020 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨20, by decide⟩
  seq := choiceSeq020
  b := translationVectorOfChoice word000 ⟨20, by decide⟩

theorem choiceCert020_check :
    checkTranslationChoiceCert choiceCert020 = true := by
  simp [checkTranslationChoiceCert, choiceCert020, choiceSeq020,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq021 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨21, by decide⟩)

def choiceCert021 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨21, by decide⟩
  seq := choiceSeq021
  b := translationVectorOfChoice word000 ⟨21, by decide⟩

theorem choiceCert021_check :
    checkTranslationChoiceCert choiceCert021 = true := by
  simp [checkTranslationChoiceCert, choiceCert021, choiceSeq021,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq022 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨22, by decide⟩)

def choiceCert022 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨22, by decide⟩
  seq := choiceSeq022
  b := translationVectorOfChoice word000 ⟨22, by decide⟩

theorem choiceCert022_check :
    checkTranslationChoiceCert choiceCert022 = true := by
  simp [checkTranslationChoiceCert, choiceCert022, choiceSeq022,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq023 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨23, by decide⟩)

def choiceCert023 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨23, by decide⟩
  seq := choiceSeq023
  b := translationVectorOfChoice word000 ⟨23, by decide⟩

theorem choiceCert023_check :
    checkTranslationChoiceCert choiceCert023 = true := by
  simp [checkTranslationChoiceCert, choiceCert023, choiceSeq023,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq024 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨24, by decide⟩)

def choiceCert024 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨24, by decide⟩
  seq := choiceSeq024
  b := translationVectorOfChoice word000 ⟨24, by decide⟩

theorem choiceCert024_check :
    checkTranslationChoiceCert choiceCert024 = true := by
  simp [checkTranslationChoiceCert, choiceCert024, choiceSeq024,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq025 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨25, by decide⟩)

def choiceCert025 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨25, by decide⟩
  seq := choiceSeq025
  b := translationVectorOfChoice word000 ⟨25, by decide⟩

theorem choiceCert025_check :
    checkTranslationChoiceCert choiceCert025 = true := by
  simp [checkTranslationChoiceCert, choiceCert025, choiceSeq025,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq026 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨26, by decide⟩)

def choiceCert026 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨26, by decide⟩
  seq := choiceSeq026
  b := translationVectorOfChoice word000 ⟨26, by decide⟩

theorem choiceCert026_check :
    checkTranslationChoiceCert choiceCert026 = true := by
  simp [checkTranslationChoiceCert, choiceCert026, choiceSeq026,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq027 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨27, by decide⟩)

def choiceCert027 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨27, by decide⟩
  seq := choiceSeq027
  b := translationVectorOfChoice word000 ⟨27, by decide⟩

theorem choiceCert027_check :
    checkTranslationChoiceCert choiceCert027 = true := by
  simp [checkTranslationChoiceCert, choiceCert027, choiceSeq027,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq028 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨28, by decide⟩)

def choiceCert028 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨28, by decide⟩
  seq := choiceSeq028
  b := translationVectorOfChoice word000 ⟨28, by decide⟩

theorem choiceCert028_check :
    checkTranslationChoiceCert choiceCert028 = true := by
  simp [checkTranslationChoiceCert, choiceCert028, choiceSeq028,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq029 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨29, by decide⟩)

def choiceCert029 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨29, by decide⟩
  seq := choiceSeq029
  b := translationVectorOfChoice word000 ⟨29, by decide⟩

theorem choiceCert029_check :
    checkTranslationChoiceCert choiceCert029 = true := by
  simp [checkTranslationChoiceCert, choiceCert029, choiceSeq029,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq030 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨30, by decide⟩)

def choiceCert030 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨30, by decide⟩
  seq := choiceSeq030
  b := translationVectorOfChoice word000 ⟨30, by decide⟩

theorem choiceCert030_check :
    checkTranslationChoiceCert choiceCert030 = true := by
  simp [checkTranslationChoiceCert, choiceCert030, choiceSeq030,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq031 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨31, by decide⟩)

def choiceCert031 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨31, by decide⟩
  seq := choiceSeq031
  b := translationVectorOfChoice word000 ⟨31, by decide⟩

theorem choiceCert031_check :
    checkTranslationChoiceCert choiceCert031 = true := by
  simp [checkTranslationChoiceCert, choiceCert031, choiceSeq031,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq032 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨32, by decide⟩)

def choiceCert032 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨32, by decide⟩
  seq := choiceSeq032
  b := translationVectorOfChoice word000 ⟨32, by decide⟩

theorem choiceCert032_check :
    checkTranslationChoiceCert choiceCert032 = true := by
  simp [checkTranslationChoiceCert, choiceCert032, choiceSeq032,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq033 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨33, by decide⟩)

def choiceCert033 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨33, by decide⟩
  seq := choiceSeq033
  b := translationVectorOfChoice word000 ⟨33, by decide⟩

theorem choiceCert033_check :
    checkTranslationChoiceCert choiceCert033 = true := by
  simp [checkTranslationChoiceCert, choiceCert033, choiceSeq033,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq034 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨34, by decide⟩)

def choiceCert034 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨34, by decide⟩
  seq := choiceSeq034
  b := translationVectorOfChoice word000 ⟨34, by decide⟩

theorem choiceCert034_check :
    checkTranslationChoiceCert choiceCert034 = true := by
  simp [checkTranslationChoiceCert, choiceCert034, choiceSeq034,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq035 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨35, by decide⟩)

def choiceCert035 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨35, by decide⟩
  seq := choiceSeq035
  b := translationVectorOfChoice word000 ⟨35, by decide⟩

theorem choiceCert035_check :
    checkTranslationChoiceCert choiceCert035 = true := by
  simp [checkTranslationChoiceCert, choiceCert035, choiceSeq035,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq036 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨36, by decide⟩)

def choiceCert036 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨36, by decide⟩
  seq := choiceSeq036
  b := translationVectorOfChoice word000 ⟨36, by decide⟩

theorem choiceCert036_check :
    checkTranslationChoiceCert choiceCert036 = true := by
  simp [checkTranslationChoiceCert, choiceCert036, choiceSeq036,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq037 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨37, by decide⟩)

def choiceCert037 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨37, by decide⟩
  seq := choiceSeq037
  b := translationVectorOfChoice word000 ⟨37, by decide⟩

theorem choiceCert037_check :
    checkTranslationChoiceCert choiceCert037 = true := by
  simp [checkTranslationChoiceCert, choiceCert037, choiceSeq037,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq038 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨38, by decide⟩)

def choiceCert038 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨38, by decide⟩
  seq := choiceSeq038
  b := translationVectorOfChoice word000 ⟨38, by decide⟩

theorem choiceCert038_check :
    checkTranslationChoiceCert choiceCert038 = true := by
  simp [checkTranslationChoiceCert, choiceCert038, choiceSeq038,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq039 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨39, by decide⟩)

def choiceCert039 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨39, by decide⟩
  seq := choiceSeq039
  b := translationVectorOfChoice word000 ⟨39, by decide⟩

theorem choiceCert039_check :
    checkTranslationChoiceCert choiceCert039 = true := by
  simp [checkTranslationChoiceCert, choiceCert039, choiceSeq039,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq040 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨40, by decide⟩)

def choiceCert040 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨40, by decide⟩
  seq := choiceSeq040
  b := translationVectorOfChoice word000 ⟨40, by decide⟩

theorem choiceCert040_check :
    checkTranslationChoiceCert choiceCert040 = true := by
  simp [checkTranslationChoiceCert, choiceCert040, choiceSeq040,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq041 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨41, by decide⟩)

def choiceCert041 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨41, by decide⟩
  seq := choiceSeq041
  b := translationVectorOfChoice word000 ⟨41, by decide⟩

theorem choiceCert041_check :
    checkTranslationChoiceCert choiceCert041 = true := by
  simp [checkTranslationChoiceCert, choiceCert041, choiceSeq041,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq042 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨42, by decide⟩)

def choiceCert042 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨42, by decide⟩
  seq := choiceSeq042
  b := translationVectorOfChoice word000 ⟨42, by decide⟩

theorem choiceCert042_check :
    checkTranslationChoiceCert choiceCert042 = true := by
  simp [checkTranslationChoiceCert, choiceCert042, choiceSeq042,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq043 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨43, by decide⟩)

def choiceCert043 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨43, by decide⟩
  seq := choiceSeq043
  b := translationVectorOfChoice word000 ⟨43, by decide⟩

theorem choiceCert043_check :
    checkTranslationChoiceCert choiceCert043 = true := by
  simp [checkTranslationChoiceCert, choiceCert043, choiceSeq043,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq044 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨44, by decide⟩)

def choiceCert044 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨44, by decide⟩
  seq := choiceSeq044
  b := translationVectorOfChoice word000 ⟨44, by decide⟩

theorem choiceCert044_check :
    checkTranslationChoiceCert choiceCert044 = true := by
  simp [checkTranslationChoiceCert, choiceCert044, choiceSeq044,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq045 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨45, by decide⟩)

def choiceCert045 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨45, by decide⟩
  seq := choiceSeq045
  b := translationVectorOfChoice word000 ⟨45, by decide⟩

theorem choiceCert045_check :
    checkTranslationChoiceCert choiceCert045 = true := by
  simp [checkTranslationChoiceCert, choiceCert045, choiceSeq045,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq046 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨46, by decide⟩)

def choiceCert046 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨46, by decide⟩
  seq := choiceSeq046
  b := translationVectorOfChoice word000 ⟨46, by decide⟩

theorem choiceCert046_check :
    checkTranslationChoiceCert choiceCert046 = true := by
  simp [checkTranslationChoiceCert, choiceCert046, choiceSeq046,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq047 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨47, by decide⟩)

def choiceCert047 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨47, by decide⟩
  seq := choiceSeq047
  b := translationVectorOfChoice word000 ⟨47, by decide⟩

theorem choiceCert047_check :
    checkTranslationChoiceCert choiceCert047 = true := by
  simp [checkTranslationChoiceCert, choiceCert047, choiceSeq047,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq048 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨48, by decide⟩)

def choiceCert048 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨48, by decide⟩
  seq := choiceSeq048
  b := translationVectorOfChoice word000 ⟨48, by decide⟩

theorem choiceCert048_check :
    checkTranslationChoiceCert choiceCert048 = true := by
  simp [checkTranslationChoiceCert, choiceCert048, choiceSeq048,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq049 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨49, by decide⟩)

def choiceCert049 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨49, by decide⟩
  seq := choiceSeq049
  b := translationVectorOfChoice word000 ⟨49, by decide⟩

theorem choiceCert049_check :
    checkTranslationChoiceCert choiceCert049 = true := by
  simp [checkTranslationChoiceCert, choiceCert049, choiceSeq049,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq050 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨50, by decide⟩)

def choiceCert050 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨50, by decide⟩
  seq := choiceSeq050
  b := translationVectorOfChoice word000 ⟨50, by decide⟩

theorem choiceCert050_check :
    checkTranslationChoiceCert choiceCert050 = true := by
  simp [checkTranslationChoiceCert, choiceCert050, choiceSeq050,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq051 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨51, by decide⟩)

def choiceCert051 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨51, by decide⟩
  seq := choiceSeq051
  b := translationVectorOfChoice word000 ⟨51, by decide⟩

theorem choiceCert051_check :
    checkTranslationChoiceCert choiceCert051 = true := by
  simp [checkTranslationChoiceCert, choiceCert051, choiceSeq051,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq052 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨52, by decide⟩)

def choiceCert052 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨52, by decide⟩
  seq := choiceSeq052
  b := translationVectorOfChoice word000 ⟨52, by decide⟩

theorem choiceCert052_check :
    checkTranslationChoiceCert choiceCert052 = true := by
  simp [checkTranslationChoiceCert, choiceCert052, choiceSeq052,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq053 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨53, by decide⟩)

def choiceCert053 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨53, by decide⟩
  seq := choiceSeq053
  b := translationVectorOfChoice word000 ⟨53, by decide⟩

theorem choiceCert053_check :
    checkTranslationChoiceCert choiceCert053 = true := by
  simp [checkTranslationChoiceCert, choiceCert053, choiceSeq053,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq054 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨54, by decide⟩)

def choiceCert054 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨54, by decide⟩
  seq := choiceSeq054
  b := translationVectorOfChoice word000 ⟨54, by decide⟩

theorem choiceCert054_check :
    checkTranslationChoiceCert choiceCert054 = true := by
  simp [checkTranslationChoiceCert, choiceCert054, choiceSeq054,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq055 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨55, by decide⟩)

def choiceCert055 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨55, by decide⟩
  seq := choiceSeq055
  b := translationVectorOfChoice word000 ⟨55, by decide⟩

theorem choiceCert055_check :
    checkTranslationChoiceCert choiceCert055 = true := by
  simp [checkTranslationChoiceCert, choiceCert055, choiceSeq055,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq056 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨56, by decide⟩)

def choiceCert056 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨56, by decide⟩
  seq := choiceSeq056
  b := translationVectorOfChoice word000 ⟨56, by decide⟩

theorem choiceCert056_check :
    checkTranslationChoiceCert choiceCert056 = true := by
  simp [checkTranslationChoiceCert, choiceCert056, choiceSeq056,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq057 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨57, by decide⟩)

def choiceCert057 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨57, by decide⟩
  seq := choiceSeq057
  b := translationVectorOfChoice word000 ⟨57, by decide⟩

theorem choiceCert057_check :
    checkTranslationChoiceCert choiceCert057 = true := by
  simp [checkTranslationChoiceCert, choiceCert057, choiceSeq057,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq058 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨58, by decide⟩)

def choiceCert058 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨58, by decide⟩
  seq := choiceSeq058
  b := translationVectorOfChoice word000 ⟨58, by decide⟩

theorem choiceCert058_check :
    checkTranslationChoiceCert choiceCert058 = true := by
  simp [checkTranslationChoiceCert, choiceCert058, choiceSeq058,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq059 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨59, by decide⟩)

def choiceCert059 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨59, by decide⟩
  seq := choiceSeq059
  b := translationVectorOfChoice word000 ⟨59, by decide⟩

theorem choiceCert059_check :
    checkTranslationChoiceCert choiceCert059 = true := by
  simp [checkTranslationChoiceCert, choiceCert059, choiceSeq059,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq060 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨60, by decide⟩)

def choiceCert060 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨60, by decide⟩
  seq := choiceSeq060
  b := translationVectorOfChoice word000 ⟨60, by decide⟩

theorem choiceCert060_check :
    checkTranslationChoiceCert choiceCert060 = true := by
  simp [checkTranslationChoiceCert, choiceCert060, choiceSeq060,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq061 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨61, by decide⟩)

def choiceCert061 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨61, by decide⟩
  seq := choiceSeq061
  b := translationVectorOfChoice word000 ⟨61, by decide⟩

theorem choiceCert061_check :
    checkTranslationChoiceCert choiceCert061 = true := by
  simp [checkTranslationChoiceCert, choiceCert061, choiceSeq061,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq062 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨62, by decide⟩)

def choiceCert062 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨62, by decide⟩
  seq := choiceSeq062
  b := translationVectorOfChoice word000 ⟨62, by decide⟩

theorem choiceCert062_check :
    checkTranslationChoiceCert choiceCert062 = true := by
  simp [checkTranslationChoiceCert, choiceCert062, choiceSeq062,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq063 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word000 ⟨63, by decide⟩)

def choiceCert063 : TranslationChoiceCert where
  rank := 0
  word := word000
  signMask := ⟨63, by decide⟩
  seq := choiceSeq063
  b := translationVectorOfChoice word000 ⟨63, by decide⟩

theorem choiceCert063_check :
    checkTranslationChoiceCert choiceCert063 = true := by
  simp [checkTranslationChoiceCert, choiceCert063, choiceSeq063,
    word000_valid,
    word000_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq064 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨0, by decide⟩)

def choiceCert064 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨0, by decide⟩
  seq := choiceSeq064
  b := translationVectorOfChoice word002 ⟨0, by decide⟩

theorem choiceCert064_check :
    checkTranslationChoiceCert choiceCert064 = true := by
  simp [checkTranslationChoiceCert, choiceCert064, choiceSeq064,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq065 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨1, by decide⟩)

def choiceCert065 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨1, by decide⟩
  seq := choiceSeq065
  b := translationVectorOfChoice word002 ⟨1, by decide⟩

theorem choiceCert065_check :
    checkTranslationChoiceCert choiceCert065 = true := by
  simp [checkTranslationChoiceCert, choiceCert065, choiceSeq065,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq066 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨2, by decide⟩)

def choiceCert066 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨2, by decide⟩
  seq := choiceSeq066
  b := translationVectorOfChoice word002 ⟨2, by decide⟩

theorem choiceCert066_check :
    checkTranslationChoiceCert choiceCert066 = true := by
  simp [checkTranslationChoiceCert, choiceCert066, choiceSeq066,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq067 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨3, by decide⟩)

def choiceCert067 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨3, by decide⟩
  seq := choiceSeq067
  b := translationVectorOfChoice word002 ⟨3, by decide⟩

theorem choiceCert067_check :
    checkTranslationChoiceCert choiceCert067 = true := by
  simp [checkTranslationChoiceCert, choiceCert067, choiceSeq067,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq068 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨4, by decide⟩)

def choiceCert068 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨4, by decide⟩
  seq := choiceSeq068
  b := translationVectorOfChoice word002 ⟨4, by decide⟩

theorem choiceCert068_check :
    checkTranslationChoiceCert choiceCert068 = true := by
  simp [checkTranslationChoiceCert, choiceCert068, choiceSeq068,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq069 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨5, by decide⟩)

def choiceCert069 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨5, by decide⟩
  seq := choiceSeq069
  b := translationVectorOfChoice word002 ⟨5, by decide⟩

theorem choiceCert069_check :
    checkTranslationChoiceCert choiceCert069 = true := by
  simp [checkTranslationChoiceCert, choiceCert069, choiceSeq069,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq070 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨6, by decide⟩)

def choiceCert070 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨6, by decide⟩
  seq := choiceSeq070
  b := translationVectorOfChoice word002 ⟨6, by decide⟩

theorem choiceCert070_check :
    checkTranslationChoiceCert choiceCert070 = true := by
  simp [checkTranslationChoiceCert, choiceCert070, choiceSeq070,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq071 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨7, by decide⟩)

def choiceCert071 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨7, by decide⟩
  seq := choiceSeq071
  b := translationVectorOfChoice word002 ⟨7, by decide⟩

theorem choiceCert071_check :
    checkTranslationChoiceCert choiceCert071 = true := by
  simp [checkTranslationChoiceCert, choiceCert071, choiceSeq071,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq072 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨8, by decide⟩)

def choiceCert072 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨8, by decide⟩
  seq := choiceSeq072
  b := translationVectorOfChoice word002 ⟨8, by decide⟩

theorem choiceCert072_check :
    checkTranslationChoiceCert choiceCert072 = true := by
  simp [checkTranslationChoiceCert, choiceCert072, choiceSeq072,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq073 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨9, by decide⟩)

def choiceCert073 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨9, by decide⟩
  seq := choiceSeq073
  b := translationVectorOfChoice word002 ⟨9, by decide⟩

theorem choiceCert073_check :
    checkTranslationChoiceCert choiceCert073 = true := by
  simp [checkTranslationChoiceCert, choiceCert073, choiceSeq073,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq074 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨10, by decide⟩)

def choiceCert074 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨10, by decide⟩
  seq := choiceSeq074
  b := translationVectorOfChoice word002 ⟨10, by decide⟩

theorem choiceCert074_check :
    checkTranslationChoiceCert choiceCert074 = true := by
  simp [checkTranslationChoiceCert, choiceCert074, choiceSeq074,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq075 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨11, by decide⟩)

def choiceCert075 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨11, by decide⟩
  seq := choiceSeq075
  b := translationVectorOfChoice word002 ⟨11, by decide⟩

theorem choiceCert075_check :
    checkTranslationChoiceCert choiceCert075 = true := by
  simp [checkTranslationChoiceCert, choiceCert075, choiceSeq075,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq076 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨12, by decide⟩)

def choiceCert076 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨12, by decide⟩
  seq := choiceSeq076
  b := translationVectorOfChoice word002 ⟨12, by decide⟩

theorem choiceCert076_check :
    checkTranslationChoiceCert choiceCert076 = true := by
  simp [checkTranslationChoiceCert, choiceCert076, choiceSeq076,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq077 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨13, by decide⟩)

def choiceCert077 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨13, by decide⟩
  seq := choiceSeq077
  b := translationVectorOfChoice word002 ⟨13, by decide⟩

theorem choiceCert077_check :
    checkTranslationChoiceCert choiceCert077 = true := by
  simp [checkTranslationChoiceCert, choiceCert077, choiceSeq077,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq078 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨14, by decide⟩)

def choiceCert078 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨14, by decide⟩
  seq := choiceSeq078
  b := translationVectorOfChoice word002 ⟨14, by decide⟩

theorem choiceCert078_check :
    checkTranslationChoiceCert choiceCert078 = true := by
  simp [checkTranslationChoiceCert, choiceCert078, choiceSeq078,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq079 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨15, by decide⟩)

def choiceCert079 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨15, by decide⟩
  seq := choiceSeq079
  b := translationVectorOfChoice word002 ⟨15, by decide⟩

theorem choiceCert079_check :
    checkTranslationChoiceCert choiceCert079 = true := by
  simp [checkTranslationChoiceCert, choiceCert079, choiceSeq079,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq080 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨16, by decide⟩)

def choiceCert080 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨16, by decide⟩
  seq := choiceSeq080
  b := translationVectorOfChoice word002 ⟨16, by decide⟩

theorem choiceCert080_check :
    checkTranslationChoiceCert choiceCert080 = true := by
  simp [checkTranslationChoiceCert, choiceCert080, choiceSeq080,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq081 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨17, by decide⟩)

def choiceCert081 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨17, by decide⟩
  seq := choiceSeq081
  b := translationVectorOfChoice word002 ⟨17, by decide⟩

theorem choiceCert081_check :
    checkTranslationChoiceCert choiceCert081 = true := by
  simp [checkTranslationChoiceCert, choiceCert081, choiceSeq081,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq082 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨18, by decide⟩)

def choiceCert082 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨18, by decide⟩
  seq := choiceSeq082
  b := translationVectorOfChoice word002 ⟨18, by decide⟩

theorem choiceCert082_check :
    checkTranslationChoiceCert choiceCert082 = true := by
  simp [checkTranslationChoiceCert, choiceCert082, choiceSeq082,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq083 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨19, by decide⟩)

def choiceCert083 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨19, by decide⟩
  seq := choiceSeq083
  b := translationVectorOfChoice word002 ⟨19, by decide⟩

theorem choiceCert083_check :
    checkTranslationChoiceCert choiceCert083 = true := by
  simp [checkTranslationChoiceCert, choiceCert083, choiceSeq083,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq084 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨20, by decide⟩)

def choiceCert084 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨20, by decide⟩
  seq := choiceSeq084
  b := translationVectorOfChoice word002 ⟨20, by decide⟩

theorem choiceCert084_check :
    checkTranslationChoiceCert choiceCert084 = true := by
  simp [checkTranslationChoiceCert, choiceCert084, choiceSeq084,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq085 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨21, by decide⟩)

def choiceCert085 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨21, by decide⟩
  seq := choiceSeq085
  b := translationVectorOfChoice word002 ⟨21, by decide⟩

theorem choiceCert085_check :
    checkTranslationChoiceCert choiceCert085 = true := by
  simp [checkTranslationChoiceCert, choiceCert085, choiceSeq085,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq086 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨22, by decide⟩)

def choiceCert086 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨22, by decide⟩
  seq := choiceSeq086
  b := translationVectorOfChoice word002 ⟨22, by decide⟩

theorem choiceCert086_check :
    checkTranslationChoiceCert choiceCert086 = true := by
  simp [checkTranslationChoiceCert, choiceCert086, choiceSeq086,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq087 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨23, by decide⟩)

def choiceCert087 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨23, by decide⟩
  seq := choiceSeq087
  b := translationVectorOfChoice word002 ⟨23, by decide⟩

theorem choiceCert087_check :
    checkTranslationChoiceCert choiceCert087 = true := by
  simp [checkTranslationChoiceCert, choiceCert087, choiceSeq087,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq088 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨24, by decide⟩)

def choiceCert088 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨24, by decide⟩
  seq := choiceSeq088
  b := translationVectorOfChoice word002 ⟨24, by decide⟩

theorem choiceCert088_check :
    checkTranslationChoiceCert choiceCert088 = true := by
  simp [checkTranslationChoiceCert, choiceCert088, choiceSeq088,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq089 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨25, by decide⟩)

def choiceCert089 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨25, by decide⟩
  seq := choiceSeq089
  b := translationVectorOfChoice word002 ⟨25, by decide⟩

theorem choiceCert089_check :
    checkTranslationChoiceCert choiceCert089 = true := by
  simp [checkTranslationChoiceCert, choiceCert089, choiceSeq089,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq090 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨26, by decide⟩)

def choiceCert090 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨26, by decide⟩
  seq := choiceSeq090
  b := translationVectorOfChoice word002 ⟨26, by decide⟩

theorem choiceCert090_check :
    checkTranslationChoiceCert choiceCert090 = true := by
  simp [checkTranslationChoiceCert, choiceCert090, choiceSeq090,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq091 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨27, by decide⟩)

def choiceCert091 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨27, by decide⟩
  seq := choiceSeq091
  b := translationVectorOfChoice word002 ⟨27, by decide⟩

theorem choiceCert091_check :
    checkTranslationChoiceCert choiceCert091 = true := by
  simp [checkTranslationChoiceCert, choiceCert091, choiceSeq091,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq092 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨28, by decide⟩)

def choiceCert092 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨28, by decide⟩
  seq := choiceSeq092
  b := translationVectorOfChoice word002 ⟨28, by decide⟩

theorem choiceCert092_check :
    checkTranslationChoiceCert choiceCert092 = true := by
  simp [checkTranslationChoiceCert, choiceCert092, choiceSeq092,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq093 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨29, by decide⟩)

def choiceCert093 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨29, by decide⟩
  seq := choiceSeq093
  b := translationVectorOfChoice word002 ⟨29, by decide⟩

theorem choiceCert093_check :
    checkTranslationChoiceCert choiceCert093 = true := by
  simp [checkTranslationChoiceCert, choiceCert093, choiceSeq093,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq094 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨30, by decide⟩)

def choiceCert094 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨30, by decide⟩
  seq := choiceSeq094
  b := translationVectorOfChoice word002 ⟨30, by decide⟩

theorem choiceCert094_check :
    checkTranslationChoiceCert choiceCert094 = true := by
  simp [checkTranslationChoiceCert, choiceCert094, choiceSeq094,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq095 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨31, by decide⟩)

def choiceCert095 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨31, by decide⟩
  seq := choiceSeq095
  b := translationVectorOfChoice word002 ⟨31, by decide⟩

theorem choiceCert095_check :
    checkTranslationChoiceCert choiceCert095 = true := by
  simp [checkTranslationChoiceCert, choiceCert095, choiceSeq095,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq096 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨32, by decide⟩)

def choiceCert096 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨32, by decide⟩
  seq := choiceSeq096
  b := translationVectorOfChoice word002 ⟨32, by decide⟩

theorem choiceCert096_check :
    checkTranslationChoiceCert choiceCert096 = true := by
  simp [checkTranslationChoiceCert, choiceCert096, choiceSeq096,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq097 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨33, by decide⟩)

def choiceCert097 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨33, by decide⟩
  seq := choiceSeq097
  b := translationVectorOfChoice word002 ⟨33, by decide⟩

theorem choiceCert097_check :
    checkTranslationChoiceCert choiceCert097 = true := by
  simp [checkTranslationChoiceCert, choiceCert097, choiceSeq097,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq098 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨34, by decide⟩)

def choiceCert098 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨34, by decide⟩
  seq := choiceSeq098
  b := translationVectorOfChoice word002 ⟨34, by decide⟩

theorem choiceCert098_check :
    checkTranslationChoiceCert choiceCert098 = true := by
  simp [checkTranslationChoiceCert, choiceCert098, choiceSeq098,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq099 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨35, by decide⟩)

def choiceCert099 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨35, by decide⟩
  seq := choiceSeq099
  b := translationVectorOfChoice word002 ⟨35, by decide⟩

theorem choiceCert099_check :
    checkTranslationChoiceCert choiceCert099 = true := by
  simp [checkTranslationChoiceCert, choiceCert099, choiceSeq099,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq100 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨36, by decide⟩)

def choiceCert100 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨36, by decide⟩
  seq := choiceSeq100
  b := translationVectorOfChoice word002 ⟨36, by decide⟩

theorem choiceCert100_check :
    checkTranslationChoiceCert choiceCert100 = true := by
  simp [checkTranslationChoiceCert, choiceCert100, choiceSeq100,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq101 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨37, by decide⟩)

def choiceCert101 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨37, by decide⟩
  seq := choiceSeq101
  b := translationVectorOfChoice word002 ⟨37, by decide⟩

theorem choiceCert101_check :
    checkTranslationChoiceCert choiceCert101 = true := by
  simp [checkTranslationChoiceCert, choiceCert101, choiceSeq101,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq102 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨38, by decide⟩)

def choiceCert102 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨38, by decide⟩
  seq := choiceSeq102
  b := translationVectorOfChoice word002 ⟨38, by decide⟩

theorem choiceCert102_check :
    checkTranslationChoiceCert choiceCert102 = true := by
  simp [checkTranslationChoiceCert, choiceCert102, choiceSeq102,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq103 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨39, by decide⟩)

def choiceCert103 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨39, by decide⟩
  seq := choiceSeq103
  b := translationVectorOfChoice word002 ⟨39, by decide⟩

theorem choiceCert103_check :
    checkTranslationChoiceCert choiceCert103 = true := by
  simp [checkTranslationChoiceCert, choiceCert103, choiceSeq103,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq104 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨40, by decide⟩)

def choiceCert104 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨40, by decide⟩
  seq := choiceSeq104
  b := translationVectorOfChoice word002 ⟨40, by decide⟩

theorem choiceCert104_check :
    checkTranslationChoiceCert choiceCert104 = true := by
  simp [checkTranslationChoiceCert, choiceCert104, choiceSeq104,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq105 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨41, by decide⟩)

def choiceCert105 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨41, by decide⟩
  seq := choiceSeq105
  b := translationVectorOfChoice word002 ⟨41, by decide⟩

theorem choiceCert105_check :
    checkTranslationChoiceCert choiceCert105 = true := by
  simp [checkTranslationChoiceCert, choiceCert105, choiceSeq105,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq106 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨42, by decide⟩)

def choiceCert106 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨42, by decide⟩
  seq := choiceSeq106
  b := translationVectorOfChoice word002 ⟨42, by decide⟩

theorem choiceCert106_check :
    checkTranslationChoiceCert choiceCert106 = true := by
  simp [checkTranslationChoiceCert, choiceCert106, choiceSeq106,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq107 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨43, by decide⟩)

def choiceCert107 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨43, by decide⟩
  seq := choiceSeq107
  b := translationVectorOfChoice word002 ⟨43, by decide⟩

theorem choiceCert107_check :
    checkTranslationChoiceCert choiceCert107 = true := by
  simp [checkTranslationChoiceCert, choiceCert107, choiceSeq107,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq108 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨44, by decide⟩)

def choiceCert108 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨44, by decide⟩
  seq := choiceSeq108
  b := translationVectorOfChoice word002 ⟨44, by decide⟩

theorem choiceCert108_check :
    checkTranslationChoiceCert choiceCert108 = true := by
  simp [checkTranslationChoiceCert, choiceCert108, choiceSeq108,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq109 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨45, by decide⟩)

def choiceCert109 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨45, by decide⟩
  seq := choiceSeq109
  b := translationVectorOfChoice word002 ⟨45, by decide⟩

theorem choiceCert109_check :
    checkTranslationChoiceCert choiceCert109 = true := by
  simp [checkTranslationChoiceCert, choiceCert109, choiceSeq109,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq110 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨46, by decide⟩)

def choiceCert110 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨46, by decide⟩
  seq := choiceSeq110
  b := translationVectorOfChoice word002 ⟨46, by decide⟩

theorem choiceCert110_check :
    checkTranslationChoiceCert choiceCert110 = true := by
  simp [checkTranslationChoiceCert, choiceCert110, choiceSeq110,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq111 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨47, by decide⟩)

def choiceCert111 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨47, by decide⟩
  seq := choiceSeq111
  b := translationVectorOfChoice word002 ⟨47, by decide⟩

theorem choiceCert111_check :
    checkTranslationChoiceCert choiceCert111 = true := by
  simp [checkTranslationChoiceCert, choiceCert111, choiceSeq111,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq112 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨48, by decide⟩)

def choiceCert112 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨48, by decide⟩
  seq := choiceSeq112
  b := translationVectorOfChoice word002 ⟨48, by decide⟩

theorem choiceCert112_check :
    checkTranslationChoiceCert choiceCert112 = true := by
  simp [checkTranslationChoiceCert, choiceCert112, choiceSeq112,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq113 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨49, by decide⟩)

def choiceCert113 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨49, by decide⟩
  seq := choiceSeq113
  b := translationVectorOfChoice word002 ⟨49, by decide⟩

theorem choiceCert113_check :
    checkTranslationChoiceCert choiceCert113 = true := by
  simp [checkTranslationChoiceCert, choiceCert113, choiceSeq113,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq114 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨50, by decide⟩)

def choiceCert114 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨50, by decide⟩
  seq := choiceSeq114
  b := translationVectorOfChoice word002 ⟨50, by decide⟩

theorem choiceCert114_check :
    checkTranslationChoiceCert choiceCert114 = true := by
  simp [checkTranslationChoiceCert, choiceCert114, choiceSeq114,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq115 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨51, by decide⟩)

def choiceCert115 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨51, by decide⟩
  seq := choiceSeq115
  b := translationVectorOfChoice word002 ⟨51, by decide⟩

theorem choiceCert115_check :
    checkTranslationChoiceCert choiceCert115 = true := by
  simp [checkTranslationChoiceCert, choiceCert115, choiceSeq115,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq116 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨52, by decide⟩)

def choiceCert116 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨52, by decide⟩
  seq := choiceSeq116
  b := translationVectorOfChoice word002 ⟨52, by decide⟩

theorem choiceCert116_check :
    checkTranslationChoiceCert choiceCert116 = true := by
  simp [checkTranslationChoiceCert, choiceCert116, choiceSeq116,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq117 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨53, by decide⟩)

def choiceCert117 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨53, by decide⟩
  seq := choiceSeq117
  b := translationVectorOfChoice word002 ⟨53, by decide⟩

theorem choiceCert117_check :
    checkTranslationChoiceCert choiceCert117 = true := by
  simp [checkTranslationChoiceCert, choiceCert117, choiceSeq117,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq118 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨54, by decide⟩)

def choiceCert118 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨54, by decide⟩
  seq := choiceSeq118
  b := translationVectorOfChoice word002 ⟨54, by decide⟩

theorem choiceCert118_check :
    checkTranslationChoiceCert choiceCert118 = true := by
  simp [checkTranslationChoiceCert, choiceCert118, choiceSeq118,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq119 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨55, by decide⟩)

def choiceCert119 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨55, by decide⟩
  seq := choiceSeq119
  b := translationVectorOfChoice word002 ⟨55, by decide⟩

theorem choiceCert119_check :
    checkTranslationChoiceCert choiceCert119 = true := by
  simp [checkTranslationChoiceCert, choiceCert119, choiceSeq119,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq120 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨56, by decide⟩)

def choiceCert120 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨56, by decide⟩
  seq := choiceSeq120
  b := translationVectorOfChoice word002 ⟨56, by decide⟩

theorem choiceCert120_check :
    checkTranslationChoiceCert choiceCert120 = true := by
  simp [checkTranslationChoiceCert, choiceCert120, choiceSeq120,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq121 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨57, by decide⟩)

def choiceCert121 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨57, by decide⟩
  seq := choiceSeq121
  b := translationVectorOfChoice word002 ⟨57, by decide⟩

theorem choiceCert121_check :
    checkTranslationChoiceCert choiceCert121 = true := by
  simp [checkTranslationChoiceCert, choiceCert121, choiceSeq121,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq122 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨58, by decide⟩)

def choiceCert122 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨58, by decide⟩
  seq := choiceSeq122
  b := translationVectorOfChoice word002 ⟨58, by decide⟩

theorem choiceCert122_check :
    checkTranslationChoiceCert choiceCert122 = true := by
  simp [checkTranslationChoiceCert, choiceCert122, choiceSeq122,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq123 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨59, by decide⟩)

def choiceCert123 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨59, by decide⟩
  seq := choiceSeq123
  b := translationVectorOfChoice word002 ⟨59, by decide⟩

theorem choiceCert123_check :
    checkTranslationChoiceCert choiceCert123 = true := by
  simp [checkTranslationChoiceCert, choiceCert123, choiceSeq123,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq124 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨60, by decide⟩)

def choiceCert124 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨60, by decide⟩
  seq := choiceSeq124
  b := translationVectorOfChoice word002 ⟨60, by decide⟩

theorem choiceCert124_check :
    checkTranslationChoiceCert choiceCert124 = true := by
  simp [checkTranslationChoiceCert, choiceCert124, choiceSeq124,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq125 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨61, by decide⟩)

def choiceCert125 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨61, by decide⟩
  seq := choiceSeq125
  b := translationVectorOfChoice word002 ⟨61, by decide⟩

theorem choiceCert125_check :
    checkTranslationChoiceCert choiceCert125 = true := by
  simp [checkTranslationChoiceCert, choiceCert125, choiceSeq125,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq126 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨62, by decide⟩)

def choiceCert126 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨62, by decide⟩
  seq := choiceSeq126
  b := translationVectorOfChoice word002 ⟨62, by decide⟩

theorem choiceCert126_check :
    checkTranslationChoiceCert choiceCert126 = true := by
  simp [checkTranslationChoiceCert, choiceCert126, choiceSeq126,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq127 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word002 ⟨63, by decide⟩)

def choiceCert127 : TranslationChoiceCert where
  rank := 2
  word := word002
  signMask := ⟨63, by decide⟩
  seq := choiceSeq127
  b := translationVectorOfChoice word002 ⟨63, by decide⟩

theorem choiceCert127_check :
    checkTranslationChoiceCert choiceCert127 = true := by
  simp [checkTranslationChoiceCert, choiceCert127, choiceSeq127,
    word002_valid,
    word002_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq128 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨0, by decide⟩)

def choiceCert128 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨0, by decide⟩
  seq := choiceSeq128
  b := translationVectorOfChoice word003 ⟨0, by decide⟩

theorem choiceCert128_check :
    checkTranslationChoiceCert choiceCert128 = true := by
  simp [checkTranslationChoiceCert, choiceCert128, choiceSeq128,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq129 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨1, by decide⟩)

def choiceCert129 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨1, by decide⟩
  seq := choiceSeq129
  b := translationVectorOfChoice word003 ⟨1, by decide⟩

theorem choiceCert129_check :
    checkTranslationChoiceCert choiceCert129 = true := by
  simp [checkTranslationChoiceCert, choiceCert129, choiceSeq129,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq130 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨2, by decide⟩)

def choiceCert130 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨2, by decide⟩
  seq := choiceSeq130
  b := translationVectorOfChoice word003 ⟨2, by decide⟩

theorem choiceCert130_check :
    checkTranslationChoiceCert choiceCert130 = true := by
  simp [checkTranslationChoiceCert, choiceCert130, choiceSeq130,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq131 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨3, by decide⟩)

def choiceCert131 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨3, by decide⟩
  seq := choiceSeq131
  b := translationVectorOfChoice word003 ⟨3, by decide⟩

theorem choiceCert131_check :
    checkTranslationChoiceCert choiceCert131 = true := by
  simp [checkTranslationChoiceCert, choiceCert131, choiceSeq131,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq132 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨4, by decide⟩)

def choiceCert132 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨4, by decide⟩
  seq := choiceSeq132
  b := translationVectorOfChoice word003 ⟨4, by decide⟩

theorem choiceCert132_check :
    checkTranslationChoiceCert choiceCert132 = true := by
  simp [checkTranslationChoiceCert, choiceCert132, choiceSeq132,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq133 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨5, by decide⟩)

def choiceCert133 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨5, by decide⟩
  seq := choiceSeq133
  b := translationVectorOfChoice word003 ⟨5, by decide⟩

theorem choiceCert133_check :
    checkTranslationChoiceCert choiceCert133 = true := by
  simp [checkTranslationChoiceCert, choiceCert133, choiceSeq133,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq134 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨6, by decide⟩)

def choiceCert134 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨6, by decide⟩
  seq := choiceSeq134
  b := translationVectorOfChoice word003 ⟨6, by decide⟩

theorem choiceCert134_check :
    checkTranslationChoiceCert choiceCert134 = true := by
  simp [checkTranslationChoiceCert, choiceCert134, choiceSeq134,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq135 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨7, by decide⟩)

def choiceCert135 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨7, by decide⟩
  seq := choiceSeq135
  b := translationVectorOfChoice word003 ⟨7, by decide⟩

theorem choiceCert135_check :
    checkTranslationChoiceCert choiceCert135 = true := by
  simp [checkTranslationChoiceCert, choiceCert135, choiceSeq135,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq136 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨8, by decide⟩)

def choiceCert136 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨8, by decide⟩
  seq := choiceSeq136
  b := translationVectorOfChoice word003 ⟨8, by decide⟩

theorem choiceCert136_check :
    checkTranslationChoiceCert choiceCert136 = true := by
  simp [checkTranslationChoiceCert, choiceCert136, choiceSeq136,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq137 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨9, by decide⟩)

def choiceCert137 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨9, by decide⟩
  seq := choiceSeq137
  b := translationVectorOfChoice word003 ⟨9, by decide⟩

theorem choiceCert137_check :
    checkTranslationChoiceCert choiceCert137 = true := by
  simp [checkTranslationChoiceCert, choiceCert137, choiceSeq137,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq138 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨10, by decide⟩)

def choiceCert138 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨10, by decide⟩
  seq := choiceSeq138
  b := translationVectorOfChoice word003 ⟨10, by decide⟩

theorem choiceCert138_check :
    checkTranslationChoiceCert choiceCert138 = true := by
  simp [checkTranslationChoiceCert, choiceCert138, choiceSeq138,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq139 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨11, by decide⟩)

def choiceCert139 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨11, by decide⟩
  seq := choiceSeq139
  b := translationVectorOfChoice word003 ⟨11, by decide⟩

theorem choiceCert139_check :
    checkTranslationChoiceCert choiceCert139 = true := by
  simp [checkTranslationChoiceCert, choiceCert139, choiceSeq139,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq140 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨12, by decide⟩)

def choiceCert140 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨12, by decide⟩
  seq := choiceSeq140
  b := translationVectorOfChoice word003 ⟨12, by decide⟩

theorem choiceCert140_check :
    checkTranslationChoiceCert choiceCert140 = true := by
  simp [checkTranslationChoiceCert, choiceCert140, choiceSeq140,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq141 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨13, by decide⟩)

def choiceCert141 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨13, by decide⟩
  seq := choiceSeq141
  b := translationVectorOfChoice word003 ⟨13, by decide⟩

theorem choiceCert141_check :
    checkTranslationChoiceCert choiceCert141 = true := by
  simp [checkTranslationChoiceCert, choiceCert141, choiceSeq141,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq142 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨14, by decide⟩)

def choiceCert142 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨14, by decide⟩
  seq := choiceSeq142
  b := translationVectorOfChoice word003 ⟨14, by decide⟩

theorem choiceCert142_check :
    checkTranslationChoiceCert choiceCert142 = true := by
  simp [checkTranslationChoiceCert, choiceCert142, choiceSeq142,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq143 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨15, by decide⟩)

def choiceCert143 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨15, by decide⟩
  seq := choiceSeq143
  b := translationVectorOfChoice word003 ⟨15, by decide⟩

theorem choiceCert143_check :
    checkTranslationChoiceCert choiceCert143 = true := by
  simp [checkTranslationChoiceCert, choiceCert143, choiceSeq143,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq144 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨16, by decide⟩)

def choiceCert144 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨16, by decide⟩
  seq := choiceSeq144
  b := translationVectorOfChoice word003 ⟨16, by decide⟩

theorem choiceCert144_check :
    checkTranslationChoiceCert choiceCert144 = true := by
  simp [checkTranslationChoiceCert, choiceCert144, choiceSeq144,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq145 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨17, by decide⟩)

def choiceCert145 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨17, by decide⟩
  seq := choiceSeq145
  b := translationVectorOfChoice word003 ⟨17, by decide⟩

theorem choiceCert145_check :
    checkTranslationChoiceCert choiceCert145 = true := by
  simp [checkTranslationChoiceCert, choiceCert145, choiceSeq145,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq146 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨18, by decide⟩)

def choiceCert146 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨18, by decide⟩
  seq := choiceSeq146
  b := translationVectorOfChoice word003 ⟨18, by decide⟩

theorem choiceCert146_check :
    checkTranslationChoiceCert choiceCert146 = true := by
  simp [checkTranslationChoiceCert, choiceCert146, choiceSeq146,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq147 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨19, by decide⟩)

def choiceCert147 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨19, by decide⟩
  seq := choiceSeq147
  b := translationVectorOfChoice word003 ⟨19, by decide⟩

theorem choiceCert147_check :
    checkTranslationChoiceCert choiceCert147 = true := by
  simp [checkTranslationChoiceCert, choiceCert147, choiceSeq147,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq148 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨20, by decide⟩)

def choiceCert148 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨20, by decide⟩
  seq := choiceSeq148
  b := translationVectorOfChoice word003 ⟨20, by decide⟩

theorem choiceCert148_check :
    checkTranslationChoiceCert choiceCert148 = true := by
  simp [checkTranslationChoiceCert, choiceCert148, choiceSeq148,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq149 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨21, by decide⟩)

def choiceCert149 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨21, by decide⟩
  seq := choiceSeq149
  b := translationVectorOfChoice word003 ⟨21, by decide⟩

theorem choiceCert149_check :
    checkTranslationChoiceCert choiceCert149 = true := by
  simp [checkTranslationChoiceCert, choiceCert149, choiceSeq149,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq150 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨22, by decide⟩)

def choiceCert150 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨22, by decide⟩
  seq := choiceSeq150
  b := translationVectorOfChoice word003 ⟨22, by decide⟩

theorem choiceCert150_check :
    checkTranslationChoiceCert choiceCert150 = true := by
  simp [checkTranslationChoiceCert, choiceCert150, choiceSeq150,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq151 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨23, by decide⟩)

def choiceCert151 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨23, by decide⟩
  seq := choiceSeq151
  b := translationVectorOfChoice word003 ⟨23, by decide⟩

theorem choiceCert151_check :
    checkTranslationChoiceCert choiceCert151 = true := by
  simp [checkTranslationChoiceCert, choiceCert151, choiceSeq151,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq152 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨24, by decide⟩)

def choiceCert152 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨24, by decide⟩
  seq := choiceSeq152
  b := translationVectorOfChoice word003 ⟨24, by decide⟩

theorem choiceCert152_check :
    checkTranslationChoiceCert choiceCert152 = true := by
  simp [checkTranslationChoiceCert, choiceCert152, choiceSeq152,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq153 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨25, by decide⟩)

def choiceCert153 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨25, by decide⟩
  seq := choiceSeq153
  b := translationVectorOfChoice word003 ⟨25, by decide⟩

theorem choiceCert153_check :
    checkTranslationChoiceCert choiceCert153 = true := by
  simp [checkTranslationChoiceCert, choiceCert153, choiceSeq153,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq154 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨26, by decide⟩)

def choiceCert154 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨26, by decide⟩
  seq := choiceSeq154
  b := translationVectorOfChoice word003 ⟨26, by decide⟩

theorem choiceCert154_check :
    checkTranslationChoiceCert choiceCert154 = true := by
  simp [checkTranslationChoiceCert, choiceCert154, choiceSeq154,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq155 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨27, by decide⟩)

def choiceCert155 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨27, by decide⟩
  seq := choiceSeq155
  b := translationVectorOfChoice word003 ⟨27, by decide⟩

theorem choiceCert155_check :
    checkTranslationChoiceCert choiceCert155 = true := by
  simp [checkTranslationChoiceCert, choiceCert155, choiceSeq155,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq156 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨28, by decide⟩)

def choiceCert156 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨28, by decide⟩
  seq := choiceSeq156
  b := translationVectorOfChoice word003 ⟨28, by decide⟩

theorem choiceCert156_check :
    checkTranslationChoiceCert choiceCert156 = true := by
  simp [checkTranslationChoiceCert, choiceCert156, choiceSeq156,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq157 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨29, by decide⟩)

def choiceCert157 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨29, by decide⟩
  seq := choiceSeq157
  b := translationVectorOfChoice word003 ⟨29, by decide⟩

theorem choiceCert157_check :
    checkTranslationChoiceCert choiceCert157 = true := by
  simp [checkTranslationChoiceCert, choiceCert157, choiceSeq157,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq158 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨30, by decide⟩)

def choiceCert158 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨30, by decide⟩
  seq := choiceSeq158
  b := translationVectorOfChoice word003 ⟨30, by decide⟩

theorem choiceCert158_check :
    checkTranslationChoiceCert choiceCert158 = true := by
  simp [checkTranslationChoiceCert, choiceCert158, choiceSeq158,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq159 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨31, by decide⟩)

def choiceCert159 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨31, by decide⟩
  seq := choiceSeq159
  b := translationVectorOfChoice word003 ⟨31, by decide⟩

theorem choiceCert159_check :
    checkTranslationChoiceCert choiceCert159 = true := by
  simp [checkTranslationChoiceCert, choiceCert159, choiceSeq159,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq160 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨32, by decide⟩)

def choiceCert160 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨32, by decide⟩
  seq := choiceSeq160
  b := translationVectorOfChoice word003 ⟨32, by decide⟩

theorem choiceCert160_check :
    checkTranslationChoiceCert choiceCert160 = true := by
  simp [checkTranslationChoiceCert, choiceCert160, choiceSeq160,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq161 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨33, by decide⟩)

def choiceCert161 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨33, by decide⟩
  seq := choiceSeq161
  b := translationVectorOfChoice word003 ⟨33, by decide⟩

theorem choiceCert161_check :
    checkTranslationChoiceCert choiceCert161 = true := by
  simp [checkTranslationChoiceCert, choiceCert161, choiceSeq161,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq162 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨34, by decide⟩)

def choiceCert162 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨34, by decide⟩
  seq := choiceSeq162
  b := translationVectorOfChoice word003 ⟨34, by decide⟩

theorem choiceCert162_check :
    checkTranslationChoiceCert choiceCert162 = true := by
  simp [checkTranslationChoiceCert, choiceCert162, choiceSeq162,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq163 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨35, by decide⟩)

def choiceCert163 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨35, by decide⟩
  seq := choiceSeq163
  b := translationVectorOfChoice word003 ⟨35, by decide⟩

theorem choiceCert163_check :
    checkTranslationChoiceCert choiceCert163 = true := by
  simp [checkTranslationChoiceCert, choiceCert163, choiceSeq163,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq164 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨36, by decide⟩)

def choiceCert164 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨36, by decide⟩
  seq := choiceSeq164
  b := translationVectorOfChoice word003 ⟨36, by decide⟩

theorem choiceCert164_check :
    checkTranslationChoiceCert choiceCert164 = true := by
  simp [checkTranslationChoiceCert, choiceCert164, choiceSeq164,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq165 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨37, by decide⟩)

def choiceCert165 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨37, by decide⟩
  seq := choiceSeq165
  b := translationVectorOfChoice word003 ⟨37, by decide⟩

theorem choiceCert165_check :
    checkTranslationChoiceCert choiceCert165 = true := by
  simp [checkTranslationChoiceCert, choiceCert165, choiceSeq165,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq166 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨38, by decide⟩)

def choiceCert166 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨38, by decide⟩
  seq := choiceSeq166
  b := translationVectorOfChoice word003 ⟨38, by decide⟩

theorem choiceCert166_check :
    checkTranslationChoiceCert choiceCert166 = true := by
  simp [checkTranslationChoiceCert, choiceCert166, choiceSeq166,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq167 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨39, by decide⟩)

def choiceCert167 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨39, by decide⟩
  seq := choiceSeq167
  b := translationVectorOfChoice word003 ⟨39, by decide⟩

theorem choiceCert167_check :
    checkTranslationChoiceCert choiceCert167 = true := by
  simp [checkTranslationChoiceCert, choiceCert167, choiceSeq167,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq168 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨40, by decide⟩)

def choiceCert168 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨40, by decide⟩
  seq := choiceSeq168
  b := translationVectorOfChoice word003 ⟨40, by decide⟩

theorem choiceCert168_check :
    checkTranslationChoiceCert choiceCert168 = true := by
  simp [checkTranslationChoiceCert, choiceCert168, choiceSeq168,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq169 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨41, by decide⟩)

def choiceCert169 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨41, by decide⟩
  seq := choiceSeq169
  b := translationVectorOfChoice word003 ⟨41, by decide⟩

theorem choiceCert169_check :
    checkTranslationChoiceCert choiceCert169 = true := by
  simp [checkTranslationChoiceCert, choiceCert169, choiceSeq169,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq170 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨42, by decide⟩)

def choiceCert170 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨42, by decide⟩
  seq := choiceSeq170
  b := translationVectorOfChoice word003 ⟨42, by decide⟩

theorem choiceCert170_check :
    checkTranslationChoiceCert choiceCert170 = true := by
  simp [checkTranslationChoiceCert, choiceCert170, choiceSeq170,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq171 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨43, by decide⟩)

def choiceCert171 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨43, by decide⟩
  seq := choiceSeq171
  b := translationVectorOfChoice word003 ⟨43, by decide⟩

theorem choiceCert171_check :
    checkTranslationChoiceCert choiceCert171 = true := by
  simp [checkTranslationChoiceCert, choiceCert171, choiceSeq171,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq172 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨44, by decide⟩)

def choiceCert172 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨44, by decide⟩
  seq := choiceSeq172
  b := translationVectorOfChoice word003 ⟨44, by decide⟩

theorem choiceCert172_check :
    checkTranslationChoiceCert choiceCert172 = true := by
  simp [checkTranslationChoiceCert, choiceCert172, choiceSeq172,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq173 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨45, by decide⟩)

def choiceCert173 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨45, by decide⟩
  seq := choiceSeq173
  b := translationVectorOfChoice word003 ⟨45, by decide⟩

theorem choiceCert173_check :
    checkTranslationChoiceCert choiceCert173 = true := by
  simp [checkTranslationChoiceCert, choiceCert173, choiceSeq173,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq174 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨46, by decide⟩)

def choiceCert174 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨46, by decide⟩
  seq := choiceSeq174
  b := translationVectorOfChoice word003 ⟨46, by decide⟩

theorem choiceCert174_check :
    checkTranslationChoiceCert choiceCert174 = true := by
  simp [checkTranslationChoiceCert, choiceCert174, choiceSeq174,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq175 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨47, by decide⟩)

def choiceCert175 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨47, by decide⟩
  seq := choiceSeq175
  b := translationVectorOfChoice word003 ⟨47, by decide⟩

theorem choiceCert175_check :
    checkTranslationChoiceCert choiceCert175 = true := by
  simp [checkTranslationChoiceCert, choiceCert175, choiceSeq175,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq176 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨48, by decide⟩)

def choiceCert176 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨48, by decide⟩
  seq := choiceSeq176
  b := translationVectorOfChoice word003 ⟨48, by decide⟩

theorem choiceCert176_check :
    checkTranslationChoiceCert choiceCert176 = true := by
  simp [checkTranslationChoiceCert, choiceCert176, choiceSeq176,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq177 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨49, by decide⟩)

def choiceCert177 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨49, by decide⟩
  seq := choiceSeq177
  b := translationVectorOfChoice word003 ⟨49, by decide⟩

theorem choiceCert177_check :
    checkTranslationChoiceCert choiceCert177 = true := by
  simp [checkTranslationChoiceCert, choiceCert177, choiceSeq177,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq178 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨50, by decide⟩)

def choiceCert178 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨50, by decide⟩
  seq := choiceSeq178
  b := translationVectorOfChoice word003 ⟨50, by decide⟩

theorem choiceCert178_check :
    checkTranslationChoiceCert choiceCert178 = true := by
  simp [checkTranslationChoiceCert, choiceCert178, choiceSeq178,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq179 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨51, by decide⟩)

def choiceCert179 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨51, by decide⟩
  seq := choiceSeq179
  b := translationVectorOfChoice word003 ⟨51, by decide⟩

theorem choiceCert179_check :
    checkTranslationChoiceCert choiceCert179 = true := by
  simp [checkTranslationChoiceCert, choiceCert179, choiceSeq179,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq180 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨52, by decide⟩)

def choiceCert180 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨52, by decide⟩
  seq := choiceSeq180
  b := translationVectorOfChoice word003 ⟨52, by decide⟩

theorem choiceCert180_check :
    checkTranslationChoiceCert choiceCert180 = true := by
  simp [checkTranslationChoiceCert, choiceCert180, choiceSeq180,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq181 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨53, by decide⟩)

def choiceCert181 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨53, by decide⟩
  seq := choiceSeq181
  b := translationVectorOfChoice word003 ⟨53, by decide⟩

theorem choiceCert181_check :
    checkTranslationChoiceCert choiceCert181 = true := by
  simp [checkTranslationChoiceCert, choiceCert181, choiceSeq181,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq182 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨54, by decide⟩)

def choiceCert182 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨54, by decide⟩
  seq := choiceSeq182
  b := translationVectorOfChoice word003 ⟨54, by decide⟩

theorem choiceCert182_check :
    checkTranslationChoiceCert choiceCert182 = true := by
  simp [checkTranslationChoiceCert, choiceCert182, choiceSeq182,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq183 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨55, by decide⟩)

def choiceCert183 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨55, by decide⟩
  seq := choiceSeq183
  b := translationVectorOfChoice word003 ⟨55, by decide⟩

theorem choiceCert183_check :
    checkTranslationChoiceCert choiceCert183 = true := by
  simp [checkTranslationChoiceCert, choiceCert183, choiceSeq183,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq184 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨56, by decide⟩)

def choiceCert184 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨56, by decide⟩
  seq := choiceSeq184
  b := translationVectorOfChoice word003 ⟨56, by decide⟩

theorem choiceCert184_check :
    checkTranslationChoiceCert choiceCert184 = true := by
  simp [checkTranslationChoiceCert, choiceCert184, choiceSeq184,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq185 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨57, by decide⟩)

def choiceCert185 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨57, by decide⟩
  seq := choiceSeq185
  b := translationVectorOfChoice word003 ⟨57, by decide⟩

theorem choiceCert185_check :
    checkTranslationChoiceCert choiceCert185 = true := by
  simp [checkTranslationChoiceCert, choiceCert185, choiceSeq185,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq186 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨58, by decide⟩)

def choiceCert186 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨58, by decide⟩
  seq := choiceSeq186
  b := translationVectorOfChoice word003 ⟨58, by decide⟩

theorem choiceCert186_check :
    checkTranslationChoiceCert choiceCert186 = true := by
  simp [checkTranslationChoiceCert, choiceCert186, choiceSeq186,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq187 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨59, by decide⟩)

def choiceCert187 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨59, by decide⟩
  seq := choiceSeq187
  b := translationVectorOfChoice word003 ⟨59, by decide⟩

theorem choiceCert187_check :
    checkTranslationChoiceCert choiceCert187 = true := by
  simp [checkTranslationChoiceCert, choiceCert187, choiceSeq187,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq188 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨60, by decide⟩)

def choiceCert188 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨60, by decide⟩
  seq := choiceSeq188
  b := translationVectorOfChoice word003 ⟨60, by decide⟩

theorem choiceCert188_check :
    checkTranslationChoiceCert choiceCert188 = true := by
  simp [checkTranslationChoiceCert, choiceCert188, choiceSeq188,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq189 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨61, by decide⟩)

def choiceCert189 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨61, by decide⟩
  seq := choiceSeq189
  b := translationVectorOfChoice word003 ⟨61, by decide⟩

theorem choiceCert189_check :
    checkTranslationChoiceCert choiceCert189 = true := by
  simp [checkTranslationChoiceCert, choiceCert189, choiceSeq189,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq190 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨62, by decide⟩)

def choiceCert190 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨62, by decide⟩
  seq := choiceSeq190
  b := translationVectorOfChoice word003 ⟨62, by decide⟩

theorem choiceCert190_check :
    checkTranslationChoiceCert choiceCert190 = true := by
  simp [checkTranslationChoiceCert, choiceCert190, choiceSeq190,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq191 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word003 ⟨63, by decide⟩)

def choiceCert191 : TranslationChoiceCert where
  rank := 3
  word := word003
  signMask := ⟨63, by decide⟩
  seq := choiceSeq191
  b := translationVectorOfChoice word003 ⟨63, by decide⟩

theorem choiceCert191_check :
    checkTranslationChoiceCert choiceCert191 = true := by
  simp [checkTranslationChoiceCert, choiceCert191, choiceSeq191,
    word003_valid,
    word003_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq192 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨0, by decide⟩)

def choiceCert192 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨0, by decide⟩
  seq := choiceSeq192
  b := translationVectorOfChoice word005 ⟨0, by decide⟩

theorem choiceCert192_check :
    checkTranslationChoiceCert choiceCert192 = true := by
  simp [checkTranslationChoiceCert, choiceCert192, choiceSeq192,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq193 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨1, by decide⟩)

def choiceCert193 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨1, by decide⟩
  seq := choiceSeq193
  b := translationVectorOfChoice word005 ⟨1, by decide⟩

theorem choiceCert193_check :
    checkTranslationChoiceCert choiceCert193 = true := by
  simp [checkTranslationChoiceCert, choiceCert193, choiceSeq193,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq194 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨2, by decide⟩)

def choiceCert194 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨2, by decide⟩
  seq := choiceSeq194
  b := translationVectorOfChoice word005 ⟨2, by decide⟩

theorem choiceCert194_check :
    checkTranslationChoiceCert choiceCert194 = true := by
  simp [checkTranslationChoiceCert, choiceCert194, choiceSeq194,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq195 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨3, by decide⟩)

def choiceCert195 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨3, by decide⟩
  seq := choiceSeq195
  b := translationVectorOfChoice word005 ⟨3, by decide⟩

theorem choiceCert195_check :
    checkTranslationChoiceCert choiceCert195 = true := by
  simp [checkTranslationChoiceCert, choiceCert195, choiceSeq195,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq196 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨4, by decide⟩)

def choiceCert196 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨4, by decide⟩
  seq := choiceSeq196
  b := translationVectorOfChoice word005 ⟨4, by decide⟩

theorem choiceCert196_check :
    checkTranslationChoiceCert choiceCert196 = true := by
  simp [checkTranslationChoiceCert, choiceCert196, choiceSeq196,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq197 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨5, by decide⟩)

def choiceCert197 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨5, by decide⟩
  seq := choiceSeq197
  b := translationVectorOfChoice word005 ⟨5, by decide⟩

theorem choiceCert197_check :
    checkTranslationChoiceCert choiceCert197 = true := by
  simp [checkTranslationChoiceCert, choiceCert197, choiceSeq197,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq198 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨6, by decide⟩)

def choiceCert198 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨6, by decide⟩
  seq := choiceSeq198
  b := translationVectorOfChoice word005 ⟨6, by decide⟩

theorem choiceCert198_check :
    checkTranslationChoiceCert choiceCert198 = true := by
  simp [checkTranslationChoiceCert, choiceCert198, choiceSeq198,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq199 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨7, by decide⟩)

def choiceCert199 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨7, by decide⟩
  seq := choiceSeq199
  b := translationVectorOfChoice word005 ⟨7, by decide⟩

theorem choiceCert199_check :
    checkTranslationChoiceCert choiceCert199 = true := by
  simp [checkTranslationChoiceCert, choiceCert199, choiceSeq199,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq200 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨8, by decide⟩)

def choiceCert200 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨8, by decide⟩
  seq := choiceSeq200
  b := translationVectorOfChoice word005 ⟨8, by decide⟩

theorem choiceCert200_check :
    checkTranslationChoiceCert choiceCert200 = true := by
  simp [checkTranslationChoiceCert, choiceCert200, choiceSeq200,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq201 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨9, by decide⟩)

def choiceCert201 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨9, by decide⟩
  seq := choiceSeq201
  b := translationVectorOfChoice word005 ⟨9, by decide⟩

theorem choiceCert201_check :
    checkTranslationChoiceCert choiceCert201 = true := by
  simp [checkTranslationChoiceCert, choiceCert201, choiceSeq201,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq202 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨10, by decide⟩)

def choiceCert202 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨10, by decide⟩
  seq := choiceSeq202
  b := translationVectorOfChoice word005 ⟨10, by decide⟩

theorem choiceCert202_check :
    checkTranslationChoiceCert choiceCert202 = true := by
  simp [checkTranslationChoiceCert, choiceCert202, choiceSeq202,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq203 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨11, by decide⟩)

def choiceCert203 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨11, by decide⟩
  seq := choiceSeq203
  b := translationVectorOfChoice word005 ⟨11, by decide⟩

theorem choiceCert203_check :
    checkTranslationChoiceCert choiceCert203 = true := by
  simp [checkTranslationChoiceCert, choiceCert203, choiceSeq203,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq204 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨12, by decide⟩)

def choiceCert204 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨12, by decide⟩
  seq := choiceSeq204
  b := translationVectorOfChoice word005 ⟨12, by decide⟩

theorem choiceCert204_check :
    checkTranslationChoiceCert choiceCert204 = true := by
  simp [checkTranslationChoiceCert, choiceCert204, choiceSeq204,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq205 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨13, by decide⟩)

def choiceCert205 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨13, by decide⟩
  seq := choiceSeq205
  b := translationVectorOfChoice word005 ⟨13, by decide⟩

theorem choiceCert205_check :
    checkTranslationChoiceCert choiceCert205 = true := by
  simp [checkTranslationChoiceCert, choiceCert205, choiceSeq205,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq206 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨14, by decide⟩)

def choiceCert206 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨14, by decide⟩
  seq := choiceSeq206
  b := translationVectorOfChoice word005 ⟨14, by decide⟩

theorem choiceCert206_check :
    checkTranslationChoiceCert choiceCert206 = true := by
  simp [checkTranslationChoiceCert, choiceCert206, choiceSeq206,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq207 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨15, by decide⟩)

def choiceCert207 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨15, by decide⟩
  seq := choiceSeq207
  b := translationVectorOfChoice word005 ⟨15, by decide⟩

theorem choiceCert207_check :
    checkTranslationChoiceCert choiceCert207 = true := by
  simp [checkTranslationChoiceCert, choiceCert207, choiceSeq207,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq208 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨16, by decide⟩)

def choiceCert208 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨16, by decide⟩
  seq := choiceSeq208
  b := translationVectorOfChoice word005 ⟨16, by decide⟩

theorem choiceCert208_check :
    checkTranslationChoiceCert choiceCert208 = true := by
  simp [checkTranslationChoiceCert, choiceCert208, choiceSeq208,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq209 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨17, by decide⟩)

def choiceCert209 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨17, by decide⟩
  seq := choiceSeq209
  b := translationVectorOfChoice word005 ⟨17, by decide⟩

theorem choiceCert209_check :
    checkTranslationChoiceCert choiceCert209 = true := by
  simp [checkTranslationChoiceCert, choiceCert209, choiceSeq209,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq210 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨18, by decide⟩)

def choiceCert210 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨18, by decide⟩
  seq := choiceSeq210
  b := translationVectorOfChoice word005 ⟨18, by decide⟩

theorem choiceCert210_check :
    checkTranslationChoiceCert choiceCert210 = true := by
  simp [checkTranslationChoiceCert, choiceCert210, choiceSeq210,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq211 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨19, by decide⟩)

def choiceCert211 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨19, by decide⟩
  seq := choiceSeq211
  b := translationVectorOfChoice word005 ⟨19, by decide⟩

theorem choiceCert211_check :
    checkTranslationChoiceCert choiceCert211 = true := by
  simp [checkTranslationChoiceCert, choiceCert211, choiceSeq211,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq212 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨20, by decide⟩)

def choiceCert212 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨20, by decide⟩
  seq := choiceSeq212
  b := translationVectorOfChoice word005 ⟨20, by decide⟩

theorem choiceCert212_check :
    checkTranslationChoiceCert choiceCert212 = true := by
  simp [checkTranslationChoiceCert, choiceCert212, choiceSeq212,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq213 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨21, by decide⟩)

def choiceCert213 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨21, by decide⟩
  seq := choiceSeq213
  b := translationVectorOfChoice word005 ⟨21, by decide⟩

theorem choiceCert213_check :
    checkTranslationChoiceCert choiceCert213 = true := by
  simp [checkTranslationChoiceCert, choiceCert213, choiceSeq213,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq214 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨22, by decide⟩)

def choiceCert214 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨22, by decide⟩
  seq := choiceSeq214
  b := translationVectorOfChoice word005 ⟨22, by decide⟩

theorem choiceCert214_check :
    checkTranslationChoiceCert choiceCert214 = true := by
  simp [checkTranslationChoiceCert, choiceCert214, choiceSeq214,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq215 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨23, by decide⟩)

def choiceCert215 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨23, by decide⟩
  seq := choiceSeq215
  b := translationVectorOfChoice word005 ⟨23, by decide⟩

theorem choiceCert215_check :
    checkTranslationChoiceCert choiceCert215 = true := by
  simp [checkTranslationChoiceCert, choiceCert215, choiceSeq215,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq216 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨24, by decide⟩)

def choiceCert216 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨24, by decide⟩
  seq := choiceSeq216
  b := translationVectorOfChoice word005 ⟨24, by decide⟩

theorem choiceCert216_check :
    checkTranslationChoiceCert choiceCert216 = true := by
  simp [checkTranslationChoiceCert, choiceCert216, choiceSeq216,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq217 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨25, by decide⟩)

def choiceCert217 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨25, by decide⟩
  seq := choiceSeq217
  b := translationVectorOfChoice word005 ⟨25, by decide⟩

theorem choiceCert217_check :
    checkTranslationChoiceCert choiceCert217 = true := by
  simp [checkTranslationChoiceCert, choiceCert217, choiceSeq217,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq218 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨26, by decide⟩)

def choiceCert218 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨26, by decide⟩
  seq := choiceSeq218
  b := translationVectorOfChoice word005 ⟨26, by decide⟩

theorem choiceCert218_check :
    checkTranslationChoiceCert choiceCert218 = true := by
  simp [checkTranslationChoiceCert, choiceCert218, choiceSeq218,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq219 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨27, by decide⟩)

def choiceCert219 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨27, by decide⟩
  seq := choiceSeq219
  b := translationVectorOfChoice word005 ⟨27, by decide⟩

theorem choiceCert219_check :
    checkTranslationChoiceCert choiceCert219 = true := by
  simp [checkTranslationChoiceCert, choiceCert219, choiceSeq219,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq220 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨28, by decide⟩)

def choiceCert220 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨28, by decide⟩
  seq := choiceSeq220
  b := translationVectorOfChoice word005 ⟨28, by decide⟩

theorem choiceCert220_check :
    checkTranslationChoiceCert choiceCert220 = true := by
  simp [checkTranslationChoiceCert, choiceCert220, choiceSeq220,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq221 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨29, by decide⟩)

def choiceCert221 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨29, by decide⟩
  seq := choiceSeq221
  b := translationVectorOfChoice word005 ⟨29, by decide⟩

theorem choiceCert221_check :
    checkTranslationChoiceCert choiceCert221 = true := by
  simp [checkTranslationChoiceCert, choiceCert221, choiceSeq221,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq222 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨30, by decide⟩)

def choiceCert222 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨30, by decide⟩
  seq := choiceSeq222
  b := translationVectorOfChoice word005 ⟨30, by decide⟩

theorem choiceCert222_check :
    checkTranslationChoiceCert choiceCert222 = true := by
  simp [checkTranslationChoiceCert, choiceCert222, choiceSeq222,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq223 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨31, by decide⟩)

def choiceCert223 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨31, by decide⟩
  seq := choiceSeq223
  b := translationVectorOfChoice word005 ⟨31, by decide⟩

theorem choiceCert223_check :
    checkTranslationChoiceCert choiceCert223 = true := by
  simp [checkTranslationChoiceCert, choiceCert223, choiceSeq223,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq224 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨32, by decide⟩)

def choiceCert224 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨32, by decide⟩
  seq := choiceSeq224
  b := translationVectorOfChoice word005 ⟨32, by decide⟩

theorem choiceCert224_check :
    checkTranslationChoiceCert choiceCert224 = true := by
  simp [checkTranslationChoiceCert, choiceCert224, choiceSeq224,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq225 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨33, by decide⟩)

def choiceCert225 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨33, by decide⟩
  seq := choiceSeq225
  b := translationVectorOfChoice word005 ⟨33, by decide⟩

theorem choiceCert225_check :
    checkTranslationChoiceCert choiceCert225 = true := by
  simp [checkTranslationChoiceCert, choiceCert225, choiceSeq225,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq226 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨34, by decide⟩)

def choiceCert226 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨34, by decide⟩
  seq := choiceSeq226
  b := translationVectorOfChoice word005 ⟨34, by decide⟩

theorem choiceCert226_check :
    checkTranslationChoiceCert choiceCert226 = true := by
  simp [checkTranslationChoiceCert, choiceCert226, choiceSeq226,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq227 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨35, by decide⟩)

def choiceCert227 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨35, by decide⟩
  seq := choiceSeq227
  b := translationVectorOfChoice word005 ⟨35, by decide⟩

theorem choiceCert227_check :
    checkTranslationChoiceCert choiceCert227 = true := by
  simp [checkTranslationChoiceCert, choiceCert227, choiceSeq227,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq228 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨36, by decide⟩)

def choiceCert228 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨36, by decide⟩
  seq := choiceSeq228
  b := translationVectorOfChoice word005 ⟨36, by decide⟩

theorem choiceCert228_check :
    checkTranslationChoiceCert choiceCert228 = true := by
  simp [checkTranslationChoiceCert, choiceCert228, choiceSeq228,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq229 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨37, by decide⟩)

def choiceCert229 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨37, by decide⟩
  seq := choiceSeq229
  b := translationVectorOfChoice word005 ⟨37, by decide⟩

theorem choiceCert229_check :
    checkTranslationChoiceCert choiceCert229 = true := by
  simp [checkTranslationChoiceCert, choiceCert229, choiceSeq229,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq230 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨38, by decide⟩)

def choiceCert230 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨38, by decide⟩
  seq := choiceSeq230
  b := translationVectorOfChoice word005 ⟨38, by decide⟩

theorem choiceCert230_check :
    checkTranslationChoiceCert choiceCert230 = true := by
  simp [checkTranslationChoiceCert, choiceCert230, choiceSeq230,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq231 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨39, by decide⟩)

def choiceCert231 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨39, by decide⟩
  seq := choiceSeq231
  b := translationVectorOfChoice word005 ⟨39, by decide⟩

theorem choiceCert231_check :
    checkTranslationChoiceCert choiceCert231 = true := by
  simp [checkTranslationChoiceCert, choiceCert231, choiceSeq231,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq232 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨40, by decide⟩)

def choiceCert232 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨40, by decide⟩
  seq := choiceSeq232
  b := translationVectorOfChoice word005 ⟨40, by decide⟩

theorem choiceCert232_check :
    checkTranslationChoiceCert choiceCert232 = true := by
  simp [checkTranslationChoiceCert, choiceCert232, choiceSeq232,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq233 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨41, by decide⟩)

def choiceCert233 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨41, by decide⟩
  seq := choiceSeq233
  b := translationVectorOfChoice word005 ⟨41, by decide⟩

theorem choiceCert233_check :
    checkTranslationChoiceCert choiceCert233 = true := by
  simp [checkTranslationChoiceCert, choiceCert233, choiceSeq233,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq234 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨42, by decide⟩)

def choiceCert234 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨42, by decide⟩
  seq := choiceSeq234
  b := translationVectorOfChoice word005 ⟨42, by decide⟩

theorem choiceCert234_check :
    checkTranslationChoiceCert choiceCert234 = true := by
  simp [checkTranslationChoiceCert, choiceCert234, choiceSeq234,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq235 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨43, by decide⟩)

def choiceCert235 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨43, by decide⟩
  seq := choiceSeq235
  b := translationVectorOfChoice word005 ⟨43, by decide⟩

theorem choiceCert235_check :
    checkTranslationChoiceCert choiceCert235 = true := by
  simp [checkTranslationChoiceCert, choiceCert235, choiceSeq235,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq236 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨44, by decide⟩)

def choiceCert236 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨44, by decide⟩
  seq := choiceSeq236
  b := translationVectorOfChoice word005 ⟨44, by decide⟩

theorem choiceCert236_check :
    checkTranslationChoiceCert choiceCert236 = true := by
  simp [checkTranslationChoiceCert, choiceCert236, choiceSeq236,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq237 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨45, by decide⟩)

def choiceCert237 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨45, by decide⟩
  seq := choiceSeq237
  b := translationVectorOfChoice word005 ⟨45, by decide⟩

theorem choiceCert237_check :
    checkTranslationChoiceCert choiceCert237 = true := by
  simp [checkTranslationChoiceCert, choiceCert237, choiceSeq237,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq238 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨46, by decide⟩)

def choiceCert238 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨46, by decide⟩
  seq := choiceSeq238
  b := translationVectorOfChoice word005 ⟨46, by decide⟩

theorem choiceCert238_check :
    checkTranslationChoiceCert choiceCert238 = true := by
  simp [checkTranslationChoiceCert, choiceCert238, choiceSeq238,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq239 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨47, by decide⟩)

def choiceCert239 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨47, by decide⟩
  seq := choiceSeq239
  b := translationVectorOfChoice word005 ⟨47, by decide⟩

theorem choiceCert239_check :
    checkTranslationChoiceCert choiceCert239 = true := by
  simp [checkTranslationChoiceCert, choiceCert239, choiceSeq239,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq240 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨48, by decide⟩)

def choiceCert240 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨48, by decide⟩
  seq := choiceSeq240
  b := translationVectorOfChoice word005 ⟨48, by decide⟩

theorem choiceCert240_check :
    checkTranslationChoiceCert choiceCert240 = true := by
  simp [checkTranslationChoiceCert, choiceCert240, choiceSeq240,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq241 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨49, by decide⟩)

def choiceCert241 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨49, by decide⟩
  seq := choiceSeq241
  b := translationVectorOfChoice word005 ⟨49, by decide⟩

theorem choiceCert241_check :
    checkTranslationChoiceCert choiceCert241 = true := by
  simp [checkTranslationChoiceCert, choiceCert241, choiceSeq241,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq242 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨50, by decide⟩)

def choiceCert242 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨50, by decide⟩
  seq := choiceSeq242
  b := translationVectorOfChoice word005 ⟨50, by decide⟩

theorem choiceCert242_check :
    checkTranslationChoiceCert choiceCert242 = true := by
  simp [checkTranslationChoiceCert, choiceCert242, choiceSeq242,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq243 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨51, by decide⟩)

def choiceCert243 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨51, by decide⟩
  seq := choiceSeq243
  b := translationVectorOfChoice word005 ⟨51, by decide⟩

theorem choiceCert243_check :
    checkTranslationChoiceCert choiceCert243 = true := by
  simp [checkTranslationChoiceCert, choiceCert243, choiceSeq243,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq244 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨52, by decide⟩)

def choiceCert244 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨52, by decide⟩
  seq := choiceSeq244
  b := translationVectorOfChoice word005 ⟨52, by decide⟩

theorem choiceCert244_check :
    checkTranslationChoiceCert choiceCert244 = true := by
  simp [checkTranslationChoiceCert, choiceCert244, choiceSeq244,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq245 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨53, by decide⟩)

def choiceCert245 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨53, by decide⟩
  seq := choiceSeq245
  b := translationVectorOfChoice word005 ⟨53, by decide⟩

theorem choiceCert245_check :
    checkTranslationChoiceCert choiceCert245 = true := by
  simp [checkTranslationChoiceCert, choiceCert245, choiceSeq245,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq246 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨54, by decide⟩)

def choiceCert246 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨54, by decide⟩
  seq := choiceSeq246
  b := translationVectorOfChoice word005 ⟨54, by decide⟩

theorem choiceCert246_check :
    checkTranslationChoiceCert choiceCert246 = true := by
  simp [checkTranslationChoiceCert, choiceCert246, choiceSeq246,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq247 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨55, by decide⟩)

def choiceCert247 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨55, by decide⟩
  seq := choiceSeq247
  b := translationVectorOfChoice word005 ⟨55, by decide⟩

theorem choiceCert247_check :
    checkTranslationChoiceCert choiceCert247 = true := by
  simp [checkTranslationChoiceCert, choiceCert247, choiceSeq247,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq248 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨56, by decide⟩)

def choiceCert248 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨56, by decide⟩
  seq := choiceSeq248
  b := translationVectorOfChoice word005 ⟨56, by decide⟩

theorem choiceCert248_check :
    checkTranslationChoiceCert choiceCert248 = true := by
  simp [checkTranslationChoiceCert, choiceCert248, choiceSeq248,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq249 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨57, by decide⟩)

def choiceCert249 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨57, by decide⟩
  seq := choiceSeq249
  b := translationVectorOfChoice word005 ⟨57, by decide⟩

theorem choiceCert249_check :
    checkTranslationChoiceCert choiceCert249 = true := by
  simp [checkTranslationChoiceCert, choiceCert249, choiceSeq249,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq250 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨58, by decide⟩)

def choiceCert250 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨58, by decide⟩
  seq := choiceSeq250
  b := translationVectorOfChoice word005 ⟨58, by decide⟩

theorem choiceCert250_check :
    checkTranslationChoiceCert choiceCert250 = true := by
  simp [checkTranslationChoiceCert, choiceCert250, choiceSeq250,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq251 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨59, by decide⟩)

def choiceCert251 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨59, by decide⟩
  seq := choiceSeq251
  b := translationVectorOfChoice word005 ⟨59, by decide⟩

theorem choiceCert251_check :
    checkTranslationChoiceCert choiceCert251 = true := by
  simp [checkTranslationChoiceCert, choiceCert251, choiceSeq251,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq252 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨60, by decide⟩)

def choiceCert252 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨60, by decide⟩
  seq := choiceSeq252
  b := translationVectorOfChoice word005 ⟨60, by decide⟩

theorem choiceCert252_check :
    checkTranslationChoiceCert choiceCert252 = true := by
  simp [checkTranslationChoiceCert, choiceCert252, choiceSeq252,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq253 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨61, by decide⟩)

def choiceCert253 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨61, by decide⟩
  seq := choiceSeq253
  b := translationVectorOfChoice word005 ⟨61, by decide⟩

theorem choiceCert253_check :
    checkTranslationChoiceCert choiceCert253 = true := by
  simp [checkTranslationChoiceCert, choiceCert253, choiceSeq253,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq254 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨62, by decide⟩)

def choiceCert254 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨62, by decide⟩
  seq := choiceSeq254
  b := translationVectorOfChoice word005 ⟨62, by decide⟩

theorem choiceCert254_check :
    checkTranslationChoiceCert choiceCert254 = true := by
  simp [checkTranslationChoiceCert, choiceCert254, choiceSeq254,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def choiceSeq255 : Vector Face 14 :=
  Vector.ofFn (translationChoiceSeq word005 ⟨63, by decide⟩)

def choiceCert255 : TranslationChoiceCert where
  rank := 5
  word := word005
  signMask := ⟨63, by decide⟩
  seq := choiceSeq255
  b := translationVectorOfChoice word005 ⟨63, by decide⟩

theorem choiceCert255_check :
    checkTranslationChoiceCert choiceCert255 = true := by
  simp [checkTranslationChoiceCert, choiceCert255, choiceSeq255,
    word005_valid,
    word005_totalLinear_id,
    TranslationSeqMatches]

def certs : Array TranslationChoiceCert :=
  #[choiceCert000, choiceCert001, choiceCert002, choiceCert003, choiceCert004, choiceCert005, choiceCert006, choiceCert007, choiceCert008, choiceCert009, choiceCert010, choiceCert011, choiceCert012, choiceCert013, choiceCert014, choiceCert015, choiceCert016, choiceCert017, choiceCert018, choiceCert019, choiceCert020, choiceCert021, choiceCert022, choiceCert023, choiceCert024, choiceCert025, choiceCert026, choiceCert027, choiceCert028, choiceCert029, choiceCert030, choiceCert031, choiceCert032, choiceCert033, choiceCert034, choiceCert035, choiceCert036, choiceCert037, choiceCert038, choiceCert039, choiceCert040, choiceCert041, choiceCert042, choiceCert043, choiceCert044, choiceCert045, choiceCert046, choiceCert047, choiceCert048, choiceCert049, choiceCert050, choiceCert051, choiceCert052, choiceCert053, choiceCert054, choiceCert055, choiceCert056, choiceCert057, choiceCert058, choiceCert059, choiceCert060, choiceCert061, choiceCert062, choiceCert063, choiceCert064, choiceCert065, choiceCert066, choiceCert067, choiceCert068, choiceCert069, choiceCert070, choiceCert071, choiceCert072, choiceCert073, choiceCert074, choiceCert075, choiceCert076, choiceCert077, choiceCert078, choiceCert079, choiceCert080, choiceCert081, choiceCert082, choiceCert083, choiceCert084, choiceCert085, choiceCert086, choiceCert087, choiceCert088, choiceCert089, choiceCert090, choiceCert091, choiceCert092, choiceCert093, choiceCert094, choiceCert095, choiceCert096, choiceCert097, choiceCert098, choiceCert099, choiceCert100, choiceCert101, choiceCert102, choiceCert103, choiceCert104, choiceCert105, choiceCert106, choiceCert107, choiceCert108, choiceCert109, choiceCert110, choiceCert111, choiceCert112, choiceCert113, choiceCert114, choiceCert115, choiceCert116, choiceCert117, choiceCert118, choiceCert119, choiceCert120, choiceCert121, choiceCert122, choiceCert123, choiceCert124, choiceCert125, choiceCert126, choiceCert127, choiceCert128, choiceCert129, choiceCert130, choiceCert131, choiceCert132, choiceCert133, choiceCert134, choiceCert135, choiceCert136, choiceCert137, choiceCert138, choiceCert139, choiceCert140, choiceCert141, choiceCert142, choiceCert143, choiceCert144, choiceCert145, choiceCert146, choiceCert147, choiceCert148, choiceCert149, choiceCert150, choiceCert151, choiceCert152, choiceCert153, choiceCert154, choiceCert155, choiceCert156, choiceCert157, choiceCert158, choiceCert159, choiceCert160, choiceCert161, choiceCert162, choiceCert163, choiceCert164, choiceCert165, choiceCert166, choiceCert167, choiceCert168, choiceCert169, choiceCert170, choiceCert171, choiceCert172, choiceCert173, choiceCert174, choiceCert175, choiceCert176, choiceCert177, choiceCert178, choiceCert179, choiceCert180, choiceCert181, choiceCert182, choiceCert183, choiceCert184, choiceCert185, choiceCert186, choiceCert187, choiceCert188, choiceCert189, choiceCert190, choiceCert191, choiceCert192, choiceCert193, choiceCert194, choiceCert195, choiceCert196, choiceCert197, choiceCert198, choiceCert199, choiceCert200, choiceCert201, choiceCert202, choiceCert203, choiceCert204, choiceCert205, choiceCert206, choiceCert207, choiceCert208, choiceCert209, choiceCert210, choiceCert211, choiceCert212, choiceCert213, choiceCert214, choiceCert215, choiceCert216, choiceCert217, choiceCert218, choiceCert219, choiceCert220, choiceCert221, choiceCert222, choiceCert223, choiceCert224, choiceCert225, choiceCert226, choiceCert227, choiceCert228, choiceCert229, choiceCert230, choiceCert231, choiceCert232, choiceCert233, choiceCert234, choiceCert235, choiceCert236, choiceCert237, choiceCert238, choiceCert239, choiceCert240, choiceCert241, choiceCert242, choiceCert243, choiceCert244, choiceCert245, choiceCert246, choiceCert247, choiceCert248, choiceCert249, choiceCert250, choiceCert251, choiceCert252, choiceCert253, choiceCert254, choiceCert255]

theorem certs_check : checkTranslationChunk chunkMeta certs = true := by
  simp [checkTranslationChunk, checkChunkMeta, chunkMeta,
    checkTranslationChoiceCerts, certs,
    choiceCert000_check, choiceCert001_check, choiceCert002_check, choiceCert003_check, choiceCert004_check, choiceCert005_check, choiceCert006_check, choiceCert007_check, choiceCert008_check, choiceCert009_check, choiceCert010_check, choiceCert011_check, choiceCert012_check, choiceCert013_check, choiceCert014_check, choiceCert015_check, choiceCert016_check, choiceCert017_check, choiceCert018_check, choiceCert019_check, choiceCert020_check, choiceCert021_check, choiceCert022_check, choiceCert023_check, choiceCert024_check, choiceCert025_check, choiceCert026_check, choiceCert027_check, choiceCert028_check, choiceCert029_check, choiceCert030_check, choiceCert031_check, choiceCert032_check, choiceCert033_check, choiceCert034_check, choiceCert035_check, choiceCert036_check, choiceCert037_check, choiceCert038_check, choiceCert039_check, choiceCert040_check, choiceCert041_check, choiceCert042_check, choiceCert043_check, choiceCert044_check, choiceCert045_check, choiceCert046_check, choiceCert047_check, choiceCert048_check, choiceCert049_check, choiceCert050_check, choiceCert051_check, choiceCert052_check, choiceCert053_check, choiceCert054_check, choiceCert055_check, choiceCert056_check, choiceCert057_check, choiceCert058_check, choiceCert059_check, choiceCert060_check, choiceCert061_check, choiceCert062_check, choiceCert063_check, choiceCert064_check, choiceCert065_check, choiceCert066_check, choiceCert067_check, choiceCert068_check, choiceCert069_check, choiceCert070_check, choiceCert071_check, choiceCert072_check, choiceCert073_check, choiceCert074_check, choiceCert075_check, choiceCert076_check, choiceCert077_check, choiceCert078_check, choiceCert079_check, choiceCert080_check, choiceCert081_check, choiceCert082_check, choiceCert083_check, choiceCert084_check, choiceCert085_check, choiceCert086_check, choiceCert087_check, choiceCert088_check, choiceCert089_check, choiceCert090_check, choiceCert091_check, choiceCert092_check, choiceCert093_check, choiceCert094_check, choiceCert095_check, choiceCert096_check, choiceCert097_check, choiceCert098_check, choiceCert099_check, choiceCert100_check, choiceCert101_check, choiceCert102_check, choiceCert103_check, choiceCert104_check, choiceCert105_check, choiceCert106_check, choiceCert107_check, choiceCert108_check, choiceCert109_check, choiceCert110_check, choiceCert111_check, choiceCert112_check, choiceCert113_check, choiceCert114_check, choiceCert115_check, choiceCert116_check, choiceCert117_check, choiceCert118_check, choiceCert119_check, choiceCert120_check, choiceCert121_check, choiceCert122_check, choiceCert123_check, choiceCert124_check, choiceCert125_check, choiceCert126_check, choiceCert127_check, choiceCert128_check, choiceCert129_check, choiceCert130_check, choiceCert131_check, choiceCert132_check, choiceCert133_check, choiceCert134_check, choiceCert135_check, choiceCert136_check, choiceCert137_check, choiceCert138_check, choiceCert139_check, choiceCert140_check, choiceCert141_check, choiceCert142_check, choiceCert143_check, choiceCert144_check, choiceCert145_check, choiceCert146_check, choiceCert147_check, choiceCert148_check, choiceCert149_check, choiceCert150_check, choiceCert151_check, choiceCert152_check, choiceCert153_check, choiceCert154_check, choiceCert155_check, choiceCert156_check, choiceCert157_check, choiceCert158_check, choiceCert159_check, choiceCert160_check, choiceCert161_check, choiceCert162_check, choiceCert163_check, choiceCert164_check, choiceCert165_check, choiceCert166_check, choiceCert167_check, choiceCert168_check, choiceCert169_check, choiceCert170_check, choiceCert171_check, choiceCert172_check, choiceCert173_check, choiceCert174_check, choiceCert175_check, choiceCert176_check, choiceCert177_check, choiceCert178_check, choiceCert179_check, choiceCert180_check, choiceCert181_check, choiceCert182_check, choiceCert183_check, choiceCert184_check, choiceCert185_check, choiceCert186_check, choiceCert187_check, choiceCert188_check, choiceCert189_check, choiceCert190_check, choiceCert191_check, choiceCert192_check, choiceCert193_check, choiceCert194_check, choiceCert195_check, choiceCert196_check, choiceCert197_check, choiceCert198_check, choiceCert199_check, choiceCert200_check, choiceCert201_check, choiceCert202_check, choiceCert203_check, choiceCert204_check, choiceCert205_check, choiceCert206_check, choiceCert207_check, choiceCert208_check, choiceCert209_check, choiceCert210_check, choiceCert211_check, choiceCert212_check, choiceCert213_check, choiceCert214_check, choiceCert215_check, choiceCert216_check, choiceCert217_check, choiceCert218_check, choiceCert219_check, choiceCert220_check, choiceCert221_check, choiceCert222_check, choiceCert223_check, choiceCert224_check, choiceCert225_check, choiceCert226_check, choiceCert227_check, choiceCert228_check, choiceCert229_check, choiceCert230_check, choiceCert231_check, choiceCert232_check, choiceCert233_check, choiceCert234_check, choiceCert235_check, choiceCert236_check, choiceCert237_check, choiceCert238_check, choiceCert239_check, choiceCert240_check, choiceCert241_check, choiceCert242_check, choiceCert243_check, choiceCert244_check, choiceCert245_check, choiceCert246_check, choiceCert247_check, choiceCert248_check, choiceCert249_check, choiceCert250_check, choiceCert251_check, choiceCert252_check, choiceCert253_check, choiceCert254_check, choiceCert255_check]

end Cuboctahedron.Generated.Translation.Chunk0000
