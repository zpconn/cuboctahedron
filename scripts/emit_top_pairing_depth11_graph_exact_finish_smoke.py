#!/usr/bin/env python3
"""Emit graph-exact finish composition facts for depth-11 Bellman classes."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


DEFAULT_SUFFIX_EVAL_INPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphSuffixEvalSmoke.lean"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphExactFinishSmoke.lean"
)

CLASS_RE = re.compile(r"^theorem graphEval_exists_of_class(?P<class>\d{3})Depth11Suffix\b")


PREFIX_HELPERS = r"""
private theorem graphEval_prefix_tmpm_tppm
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (635 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.tmpm :: Face.tppm :: rest).map smokeLabelOfFace) =
        some (finalGraph, (2 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.tmpm, smokeLabelOfFace Face.tppm] =
          some ((635 : State), (2 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_tmpm_zm
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (631 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.tmpm :: Face.zm :: rest).map smokeLabelOfFace) =
        some (finalGraph, (20 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.tmpm, smokeLabelOfFace Face.zm] =
          some ((631 : State), (20 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_yp_tmmm
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (627 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.yp :: Face.tmmm :: rest).map smokeLabelOfFace) =
        some (finalGraph, (-167 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.yp, smokeLabelOfFace Face.tmmm] =
          some ((627 : State), (-167 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_yp_zm
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (625 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.yp :: Face.zm :: rest).map smokeLabelOfFace) =
        some (finalGraph, (-53 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.yp, smokeLabelOfFace Face.zm] =
          some ((625 : State), (-53 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_zm_tmpp
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (632 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.zm :: Face.tmpp :: rest).map smokeLabelOfFace) =
        some (finalGraph, (-104 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.zm, smokeLabelOfFace Face.tmpp] =
          some ((632 : State), (-104 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_zm_yp
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (625 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.zm :: Face.yp :: rest).map smokeLabelOfFace) =
        some (finalGraph, (-53 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.zm, smokeLabelOfFace Face.yp] =
          some ((625 : State), (-53 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix

private theorem graphEval_prefix_zm_zp
    {rest : List Face} {finalGraph : State} {suffixGain : Int}
    (hsuffix :
      evalLabelStepFn graphSmokeNext (628 : State)
        (rest.map smokeLabelOfFace) = some (finalGraph, suffixGain)) :
    evalLabelStepFn graphSmokeNext rootState
      ((Face.xm :: Face.ym :: Face.zm :: Face.zp :: rest).map smokeLabelOfFace) =
        some (finalGraph, (10 : Int) + suffixGain) := by
  have hprefix :
      evalLabelStepFn graphSmokeNext rootState
        [smokeLabelOfFace Face.xm, smokeLabelOfFace Face.ym,
          smokeLabelOfFace Face.zm, smokeLabelOfFace Face.zp] =
          some ((628 : State), (10 : Int)) := by
    rfl
  simpa [List.map, Int.add_assoc] using
    evalLabelStepFn_append hprefix hsuffix
"""


def parse_classes(path: Path) -> list[str]:
    classes: list[str] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if match := CLASS_RE.match(line):
            classes.append(match.group("class"))
    if not classes:
        raise ValueError(f"no graphEval_exists_of_classNNNDepth11Suffix theorem found in {path}")
    return sorted(set(classes), key=int)


def emit_class(class_id: str) -> str:
    return f"""
private theorem graphEval_exists_of_class{class_id}_prefix4
    {{rank : Fin numPairWords}}
    (hclass : Class{class_id}GraphSuffixProducer rank)
    {{face₀ face₁ : Face}} {{rest : List Face}}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier : Split10MPrefix4FrontierCons2 face₀ face₁) :
    ∃ finalGraph totalGain,
      evalLabelStepFn graphSmokeNext rootState
        ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
          some (finalGraph, totalGain) := by
  rcases hfrontier with htmpm | hyp | hzm
  · rcases htmpm with ⟨rfl, htppm | hface₁⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (635 : State) rest :=
        hclass Face.tmpm Face.tppm rest hlabels
          (Or.inl ⟨rfl, Or.inl rfl⟩)
          (618 : State) (-124 : Int) (635 : State) (96 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (2 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_tmpm_tppm hsuffixEval
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (631 : State) rest :=
        hclass Face.tmpm Face.zm rest hlabels
          (Or.inl ⟨rfl, Or.inr rfl⟩)
          (618 : State) (-124 : Int) (631 : State) (114 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (20 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_tmpm_zm hsuffixEval
  · rcases hyp with ⟨rfl, htmmm | hface₁⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (627 : State) rest :=
        hclass Face.yp Face.tmmm rest hlabels
          (Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩))
          (615 : State) (-73 : Int) (627 : State) (-124 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (-167 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_yp_tmmm hsuffixEval
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (625 : State) rest :=
        hclass Face.yp Face.zm rest hlabels
          (Or.inr (Or.inl ⟨rfl, Or.inr rfl⟩))
          (615 : State) (-73 : Int) (625 : State) (-10 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (-53 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_yp_zm hsuffixEval
  · rcases hzm with ⟨rfl, htmpp | hyp | hzp⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (632 : State) rest :=
        hclass Face.zm Face.tmpp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩))
          (616 : State) (-10 : Int) (632 : State) (-124 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (-104 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_zm_tmpp hsuffixEval
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (625 : State) rest :=
        hclass Face.zm Face.yp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inl rfl)⟩))
          (616 : State) (-10 : Int) (625 : State) (-73 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (-53 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_zm_yp hsuffixEval
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (628 : State) rest :=
        hclass Face.zm Face.zp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩))
          (616 : State) (-10 : Int) (628 : State) (-10 : Int)
          (by rfl) (by rfl)
      rcases graphEval_exists_of_class{class_id}Depth11Suffix hsuffixClass with
        ⟨finalGraph, suffixGain, hsuffixEval⟩
      refine ⟨finalGraph, (10 : Int) + suffixGain, ?_⟩
      rw [hlabels]
      exact graphEval_prefix_zm_zp hsuffixEval

theorem graphEval_exists_of_class{class_id}GraphSuffixProducer
    {{rank : Fin numPairWords}}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class{class_id}GraphSuffixProducer rank) :
    ∃ finalGraph totalGain,
      evalLabelStepFn graphSmokeNext rootState
        ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
          some (finalGraph, totalGain) := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.tmpm :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact graphEval_exists_of_class{class_id}_prefix4 hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)
  · rcases hyp with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.yp :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact graphEval_exists_of_class{class_id}_prefix4 hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)
  · rcases hzm with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.zm :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact graphEval_exists_of_class{class_id}_prefix4 hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)

private theorem finalPotential_nonneg_of_class{class_id}_prefix4
    {{rank : Fin numPairWords}}
    (hclass : Class{class_id}GraphSuffixProducer rank)
    {{face₀ face₁ : Face}} {{rest : List Face}}
    (hlabels :
      topPairingRankFaceLabels rank =
        Face.xm :: Face.ym :: face₀ :: face₁ :: rest)
    (hfrontier : Split10MPrefix4FrontierCons2 face₀ face₁)
    {{finalGraph : State}} {{totalGain : Int}}
    (heval :
      evalLabelStepFn graphSmokeNext rootState
        ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
          some (finalGraph, totalGain)) :
    0 <= graphPotential finalGraph := by
  rcases hfrontier with htmpm | hyp | hzm
  · rcases htmpm with ⟨rfl, htppm | hface₁⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (635 : State) rest :=
        hclass Face.tmpm Face.tppm rest hlabels
          (Or.inl ⟨rfl, Or.inl rfl⟩)
          (618 : State) (-124 : Int) (635 : State) (96 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (2 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_tmpm_tppm hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (631 : State) rest :=
        hclass Face.tmpm Face.zm rest hlabels
          (Or.inl ⟨rfl, Or.inr rfl⟩)
          (618 : State) (-124 : Int) (631 : State) (114 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (20 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_tmpm_zm hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
  · rcases hyp with ⟨rfl, htmmm | hface₁⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (627 : State) rest :=
        hclass Face.yp Face.tmmm rest hlabels
          (Or.inr (Or.inl ⟨rfl, Or.inl rfl⟩))
          (615 : State) (-73 : Int) (627 : State) (-124 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (-167 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_yp_tmmm hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (625 : State) rest :=
        hclass Face.yp Face.zm rest hlabels
          (Or.inr (Or.inl ⟨rfl, Or.inr rfl⟩))
          (615 : State) (-73 : Int) (625 : State) (-10 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (-53 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_yp_zm hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
  · rcases hzm with ⟨rfl, htmpp | hyp | hzp⟩
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (632 : State) rest :=
        hclass Face.zm Face.tmpp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inl rfl⟩))
          (616 : State) (-10 : Int) (632 : State) (-124 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (-104 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_zm_tmpp hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (625 : State) rest :=
        hclass Face.zm Face.yp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inl rfl)⟩))
          (616 : State) (-10 : Int) (625 : State) (-73 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (-53 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_zm_yp hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish
    · subst face₁
      have hsuffixClass :
          Class{class_id}Depth11Suffix (628 : State) rest :=
        hclass Face.zm Face.zp rest hlabels
          (Or.inr (Or.inr ⟨rfl, Or.inr (Or.inr rfl)⟩))
          (616 : State) (-10 : Int) (628 : State) (-10 : Int)
          (by rfl) (by rfl)
      rcases class{class_id}Depth11GraphFinish_of_suffix hsuffixClass with
        ⟨finishGraph, suffixGain, hfinish⟩
      have hsuffixEval := graphEval_of_class{class_id}Depth11GraphFinish hfinish
      have hfull :
          evalLabelStepFn graphSmokeNext rootState
            ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
              some (finishGraph, (10 : Int) + suffixGain) := by
        rw [hlabels]
        exact graphEval_prefix_zm_zp hsuffixEval
      rw [hfull] at heval
      cases heval
      exact finalPotential_nonneg_of_class{class_id}Depth11GraphFinish hfinish

theorem finalPotential_nonneg_of_class{class_id}GraphSuffixProducer
    {{rank : Fin numPairWords}}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class{class_id}GraphSuffixProducer rank)
    {{finalGraph : State}} {{totalGain : Int}}
    (heval :
      evalLabelStepFn graphSmokeNext rootState
        ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
          some (finalGraph, totalGain)) :
    0 <= graphPotential finalGraph := by
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.tmpm :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact finalPotential_nonneg_of_class{class_id}_prefix4
          hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)
          heval
  · rcases hyp with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.yp :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact finalPotential_nonneg_of_class{class_id}_prefix4
          hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)
          heval
  · rcases hzm with ⟨rest3, hlabels3⟩
    cases rest3 with
    | nil =>
        have hlenRank :
            (faceLabelsInContributionOrder (fun f => f)
              (canonicalSeqOfPairWord (unrankPairWord rank))).length = 14 := by
          simpa [topPairingRankFaceLabels] using hclosed.schedule.1
        rw [hlabels3] at hlenRank
        norm_num at hlenRank
    | cons face₁ rest =>
        have hlabels :
            topPairingRankFaceLabels rank =
              Face.xm :: Face.ym :: Face.zm :: face₁ :: rest := by
          simpa [topPairingRankFaceLabels] using hlabels3
        exact finalPotential_nonneg_of_class{class_id}_prefix4
          hclass hlabels
          (layer4Prefix4FrontierCons2_of_closed_prefix4 hclosed hlabels)
          heval

def Class{class_id}ExactGraphFinishMarginBound
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) : Prop :=
  ∀ finalGraph totalGain,
    evalLabelStepFn graphSmokeNext rootState
      ((topPairingRankFaceLabels rank).map smokeLabelOfFace) =
        some (finalGraph, totalGain) ->
      scaledMargin rank <= (176 : Int) + totalGain

theorem closedClass{class_id}ExactGraphFinishSuffixMarginFamily_of_marginBound
    {{scaledMargin : Fin numPairWords -> Int}}
    {{rank : Fin numPairWords}}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class{class_id}GraphSuffixProducer rank)
    (hmargin :
      Class{class_id}ExactGraphFinishMarginBound scaledMargin rank) :
    ∃ finalGraph totalGain,
      ClosedClass{class_id}ExactGraphFinishSuffixMarginFamily
        scaledMargin rank finalGraph totalGain := by
  rcases graphEval_exists_of_class{class_id}GraphSuffixProducer
      hclosed hclass with
    ⟨finalGraph, totalGain, heval⟩
  refine ⟨finalGraph, totalGain, ?_⟩
  exact
    ⟨hclosed, hclass,
      {{ graph_eval_eq := heval
        final_nonneg :=
          finalPotential_nonneg_of_class{class_id}GraphSuffixProducer
            hclosed hclass heval
        margin_bound := hmargin finalGraph totalGain heval }}⟩

theorem scaledMargin_nonpos_of_class{class_id}ExactGraphFinishMarginBound
    {{scaledMargin : Fin numPairWords -> Int}}
    {{rank : Fin numPairWords}}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    (hclass : Class{class_id}GraphSuffixProducer rank)
    (hmargin :
      Class{class_id}ExactGraphFinishMarginBound scaledMargin rank) :
    scaledMargin rank <= 0 := by
  rcases
      closedClass{class_id}ExactGraphFinishSuffixMarginFamily_of_marginBound
        hclosed hclass hmargin with
    ⟨finalGraph, totalGain, hfamily⟩
  exact
    scaledMargin_nonpos_of_closedClass{class_id}ExactGraphFinishFamily
      hfamily
"""


def emit_module(classes: list[str]) -> str:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
        "",
        "/-!",
        "Generated graph-exact finish composition facts for depth-11 top-pairing",
        "Bellman suffix classes.",
        "",
        "This module is generated by",
        "`scripts/emit_top_pairing_depth11_graph_exact_finish_smoke.py`.  It",
        "composes the fixed closed prefix, split-10M frontier graph steps, and",
        "generated suffix-eval facts.  It does not introduce sampled ranks,",
        "selected prefixes, accepted trace ids, exact affine keys, or raw graph",
        "path tables.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactFinishSmoke",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStateFrontierSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGDepth11ClosedProvidersSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
        "",
        PREFIX_HELPERS.strip(),
        "",
    ]
    for class_id in classes:
        lines.append(emit_class(class_id).strip())
        lines.append("")
    lines.extend(
        [
            "theorem depth11GraphExactFinishSmoke_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphExactFinishSmoke",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--suffix-eval-input", type=Path, default=DEFAULT_SUFFIX_EVAL_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    classes = parse_classes(args.suffix_eval_input)
    args.output.write_text(emit_module(classes), encoding="utf-8")
    print(f"wrote {args.output} with {len(classes)} classes: {', '.join(classes)}")


if __name__ == "__main__":
    main()
