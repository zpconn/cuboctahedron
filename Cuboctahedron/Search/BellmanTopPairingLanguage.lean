import Cuboctahedron.Search.CancellationPairingLanguage
import Cuboctahedron.Search.FaceLabelLanguage
import Cuboctahedron.Search.NonIdentityCase
import Cuboctahedron.Search.RankFaceLabelLanguage
import Cuboctahedron.Search.ShadowNormalFormCounts

/-!
Semantic language predicates for the current top-pairing Bellman family.

This module collects the Lean-side predicates corresponding to the accepted
Bellman closure diagnostics.  It is deliberately small: these predicates are
the semantic language components that future generated membership theorems
will use before constructing private Bellman objects.
-/

namespace Cuboctahedron

def topPairingAllowedFacesAtStep : Nat -> List Face
  | 0 => [Face.xm]
  | 1 => [Face.ym]
  | 2 => [Face.tmpm, Face.yp, Face.zm]
  | 3 => [Face.tmmm, Face.tmpp, Face.tppm, Face.yp, Face.zm, Face.zp]
  | 4 => [Face.tmmp, Face.tmpm, Face.tpmm, Face.tppp, Face.yp, Face.zm, Face.zp]
  | 5 => [Face.tmmm, Face.tpmp, Face.tppm, Face.tppp, Face.zm, Face.zp]
  | 6 => [Face.tmmm, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp, Face.zm, Face.zp]
  | 7 => [Face.tmmp, Face.tmpm, Face.tpmm, Face.tpmp, Face.tppm, Face.tppp,
      Face.zm, Face.zp]
  | 8 => [Face.tmmm, Face.tmmp, Face.tmpp, Face.tpmm, Face.tpmp, Face.tppp,
      Face.yp, Face.zm, Face.zp]
  | 9 => [Face.tmmm, Face.tmpm, Face.tmpp, Face.tpmp, Face.tppm, Face.yp,
      Face.zm, Face.zp]
  | 10 => [Face.tmmp, Face.tmpm, Face.tppp, Face.yp, Face.zm]
  | 11 => [Face.tmmm, Face.tmpp, Face.yp, Face.zm, Face.zp]
  | 12 => [Face.tmmp, Face.yp, Face.zp]
  | 13 => [Face.xp]
  | _ => []

def TopPairingStepScheduleFrom : Nat -> List Face -> Prop
  | _step, [] => True
  | step, face :: rest =>
      face ∈ topPairingAllowedFacesAtStep step /\
        TopPairingStepScheduleFrom (step + 1) rest

def TopPairingStepScheduleLabels (labels : List Face) : Prop :=
  labels.length = 14 /\ TopPairingStepScheduleFrom 0 labels

def TopPairingStepScheduleSeq (seq : Step14 -> Face) : Prop :=
  TopPairingStepScheduleLabels (faceLabelsInContributionOrder (fun f => f) seq)

theorem topPairingStepScheduleFrom_nil {step : Nat} :
    TopPairingStepScheduleFrom step [] := by
  trivial

theorem topPairingStepScheduleFrom_cons
    {step : Nat} {face : Face} {rest : List Face}
    (hface : face ∈ topPairingAllowedFacesAtStep step)
    (hrest : TopPairingStepScheduleFrom (step + 1) rest) :
    TopPairingStepScheduleFrom step (face :: rest) :=
  And.intro hface hrest

theorem topPairingStepScheduleLabels_ofFrom
    {labels : List Face}
    (hlen : labels.length = 14)
    (hfrom : TopPairingStepScheduleFrom 0 labels) :
    TopPairingStepScheduleLabels labels :=
  And.intro hlen hfrom

theorem topPairingStepScheduleLabels_prefix_xm_ym
    {labels : List Face}
    (h : TopPairingStepScheduleLabels labels) :
    ∃ rest : List Face, labels = Face.xm :: Face.ym :: rest := by
  cases labels with
  | nil =>
      rcases h with ⟨hlen, _hfrom⟩
      norm_num at hlen
  | cons f0 labels =>
      cases labels with
      | nil =>
          rcases h with ⟨hlen, _hfrom⟩
          norm_num at hlen
      | cons f1 rest =>
          rcases h with ⟨_hlen, hfrom⟩
          unfold TopPairingStepScheduleFrom at hfrom
          rcases hfrom with ⟨hf0, hrest0⟩
          simp [topPairingAllowedFacesAtStep] at hf0
          subst f0
          unfold TopPairingStepScheduleFrom at hrest0
          rcases hrest0 with ⟨hf1, _hrest1⟩
          simp [topPairingAllowedFacesAtStep] at hf1
          subst f1
          exact ⟨rest, rfl⟩

def topPairingAllowedSquareFacesAtGap : Nat -> List Face
  | 0 => [Face.xm, Face.ym, Face.yp, Face.zm, Face.zp]
  | 1 => [Face.zm, Face.zp]
  | 2 => [Face.zm, Face.zp]
  | 3 => [Face.zm, Face.zp]
  | 4 => [Face.zm, Face.zp]
  | 5 => [Face.zm, Face.zp]
  | 6 => [Face.yp, Face.zm, Face.zp]
  | 7 => [Face.zm, Face.zp]
  | 8 => [Face.xp, Face.yp, Face.zm, Face.zp]
  | _ => []

def isSquarePair : PairId -> Bool
  | PairId.x => true
  | PairId.y => true
  | PairId.z => true
  | PairId.d111 => false
  | PairId.d11m => false
  | PairId.d1m1 => false
  | PairId.dm11 => false

def TopPairingSquareGapFrom : Nat -> List Face -> Prop
  | _gap, [] => True
  | gap, face :: rest =>
      if isSquarePair (pairOfFace face) then
        face ∈ topPairingAllowedSquareFacesAtGap gap /\
          TopPairingSquareGapFrom gap rest
      else
        TopPairingSquareGapFrom (gap + 1) rest

def TopPairingSquareGapLabels (labels : List Face) : Prop :=
  TopPairingSquareGapFrom 0 labels

def TopPairingSquareGapSeq (seq : Step14 -> Face) : Prop :=
  TopPairingSquareGapLabels (faceLabelsInContributionOrder (fun f => f) seq)

theorem topPairingSquareGapFrom_nil {gap : Nat} :
    TopPairingSquareGapFrom gap [] := by
  trivial

theorem topPairingSquareGapFrom_cons_square
    {gap : Nat} {face : Face} {rest : List Face}
    (hpair : isSquarePair (pairOfFace face) = true)
    (hface : face ∈ topPairingAllowedSquareFacesAtGap gap)
    (hrest : TopPairingSquareGapFrom gap rest) :
    TopPairingSquareGapFrom gap (face :: rest) := by
  unfold TopPairingSquareGapFrom
  rw [hpair]
  exact And.intro hface hrest

theorem topPairingSquareGapFrom_cons_tri
    {gap : Nat} {face : Face} {rest : List Face}
    (hpair : isSquarePair (pairOfFace face) = false)
    (hrest : TopPairingSquareGapFrom (gap + 1) rest) :
    TopPairingSquareGapFrom gap (face :: rest) := by
  unfold TopPairingSquareGapFrom
  rw [hpair]
  exact hrest

theorem topPairingSquareGapLabels_ofFrom
    {labels : List Face}
    (hfrom : TopPairingSquareGapFrom 0 labels) :
    TopPairingSquareGapLabels labels :=
  hfrom

def topPairingLocalAxis : Vec3 Rat where
  x := -1
  y := -1
  z := -3

def TopPairingLocalAxisAllows (linear : Mat3 Rat) (face : Face) : Prop :=
  0 < dot (matVec linear (normalQ face)) topPairingLocalAxis

def TopPairingLocalAxisFrom : Mat3 Rat -> List Face -> Prop
  | _linear, [] => True
  | linear, face :: rest =>
      TopPairingLocalAxisAllows linear face /\
        TopPairingLocalAxisFrom
          (matMul linear (reflM (normalQ face))) rest

def TopPairingLocalAxisLabels (labels : List Face) : Prop :=
  TopPairingLocalAxisFrom (matId : Mat3 Rat) labels

def TopPairingLocalAxisSeq (seq : Step14 -> Face) : Prop :=
  TopPairingLocalAxisLabels (faceLabelsInContributionOrder (fun f => f) seq)

def topPairingClosedFaceTraceA : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.yp,
    Face.zp, Face.xp]

def topPairingClosedFaceTraceB : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.tmpp, Face.tppp, Face.tpmp,
    Face.tppm, Face.tmmp, Face.tpmm, Face.tmmm, Face.tmpm, Face.zp,
    Face.yp, Face.xp]

def triangularCancellationSummaryOfFaceLabels (labels : List Face) :
    TriCancellationSummary :=
  triangularCancellationSummaryOfShadow
    ((shadowStateOfPairList (labels.map pairOfFace)).shadow)

def TopPairingPairCountsLabels (labels : List Face) : Prop :=
  (labels.map pairOfFace).count PairId.x = 2 /\
    (labels.map pairOfFace).count PairId.y = 2 /\
      (labels.map pairOfFace).count PairId.z = 2 /\
        (labels.map pairOfFace).count PairId.d111 = 2 /\
          (labels.map pairOfFace).count PairId.d11m = 2 /\
            (labels.map pairOfFace).count PairId.d1m1 = 2 /\
              (labels.map pairOfFace).count PairId.dm11 = 2

set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
theorem canonicalContributionPairs_eq_startedPairFactors
    (w : PairWord) :
    faceLabelsInContributionOrder (fun f => pairOfFace f)
        (canonicalSeqOfPairWord w) =
      startedPairFactors w := by
  unfold faceLabelsInContributionOrder contributionOrderSteps
  unfold startedPairFactors
  simp [canonicalSeqOfPairWord, pairAtStartedIndex, List.finRange]
  repeat' constructor
  all_goals
    apply congrArg (fun i : WordIndex => w.get i) <;>
    apply Fin.ext <;>
    decide

theorem map_pairOfFace_faceLabelsInContributionOrder
    (seq : Step14 -> Face) :
    (faceLabelsInContributionOrder (fun f => f) seq).map pairOfFace =
      faceLabelsInContributionOrder (fun f => pairOfFace f) seq := by
  unfold faceLabelsInContributionOrder
  simp

theorem triangularCancellationSummaryOfCanonicalLabels
    (rank : Fin numPairWords) :
    triangularCancellationSummaryOfFaceLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))) =
      triangularCancellationSummaryOfPairWord (unrankPairWord rank) := by
  unfold triangularCancellationSummaryOfFaceLabels
  unfold triangularCancellationSummaryOfPairWord triangularShadowOfPairWord
  unfold shadowStateOfPairWord
  rw [map_pairOfFace_faceLabelsInContributionOrder]
  rw [canonicalContributionPairs_eq_startedPairFactors]

theorem topPairingPairCountsCanonicalLabels
    (rank : Fin numPairWords) :
    TopPairingPairCountsLabels
      (faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))) := by
  unfold TopPairingPairCountsLabels
  rw [map_pairOfFace_faceLabelsInContributionOrder]
  rw [canonicalContributionPairs_eq_startedPairFactors]
  have hvalid := unrankPairWord_valid rank
  constructor
  · exact startedPairFactors_count_x_of_valid hvalid
  constructor
  · exact startedPairFactors_count_y_of_valid hvalid
  constructor
  · exact startedPairFactors_count_z_of_valid hvalid
  constructor
  · have h : (unrankPairWord rank).count PairId.d111 = 2 := by
      simpa [pairCount_eq_vector_count] using hvalid.2.2.2.1
    rw [startedPairFactors_eq_toList_append, List.count_append]
    simp [h]
  constructor
  · have h : (unrankPairWord rank).count PairId.d11m = 2 := by
      simpa [pairCount_eq_vector_count] using hvalid.2.2.2.2.1
    rw [startedPairFactors_eq_toList_append, List.count_append]
    simp [h]
  constructor
  · have h : (unrankPairWord rank).count PairId.d1m1 = 2 := by
      simpa [pairCount_eq_vector_count] using hvalid.2.2.2.2.2.1
    rw [startedPairFactors_eq_toList_append, List.count_append]
    simp [h]
  · have h : (unrankPairWord rank).count PairId.dm11 = 2 := by
      simpa [pairCount_eq_vector_count] using hvalid.2.2.2.2.2.2
    rw [startedPairFactors_eq_toList_append, List.count_append]
    simp [h]

theorem faceLabelsInContributionOrder_eq_of_positive_template
    {rank : Fin numPairWords} {template : Step14 -> Face} {labels : List Face}
    (htemplate : PairWordMatchesSeq (unrankPairWord rank) template)
    (hstart : template 0 = Face.xp)
    (hsign : forall i : Step14, positiveSignOfFace (template i) = true)
    (hlabels :
      faceLabelsInContributionOrder (fun f => f) template = labels) :
    faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank)) = labels := by
  have hsame :
      SameFaceSeq template (canonicalSeqOfPairWord (unrankPairWord rank)) :=
    sameFaceSeq_of_pairWordMatchesSeq_and_sign
      htemplate
      (canonicalSeqOfPairWord_matches (unrankPairWord rank))
      (by simp [hstart])
      (by
        intro i
        rw [hsign i]
        simp [canonicalSeqOfPairWord])
  rw [faceLabelsInContributionOrder_eq_of_same (fun f => f) hsame]
  exact hlabels

theorem topPairingLocalAxisFrom_nil {linear : Mat3 Rat} :
    TopPairingLocalAxisFrom linear [] := by
  trivial

theorem topPairingLocalAxisFrom_cons
    {linear : Mat3 Rat} {face : Face} {rest : List Face}
    (hface : TopPairingLocalAxisAllows linear face)
    (hrest :
      TopPairingLocalAxisFrom
        (matMul linear (reflM (normalQ face))) rest) :
    TopPairingLocalAxisFrom linear (face :: rest) :=
  And.intro hface hrest

theorem topPairingLocalAxisAllows_of_dot_eq
    {linear : Mat3 Rat} {face : Face} {value : Rat}
    (hdot :
      dot (matVec linear (normalQ face)) topPairingLocalAxis = value)
    (hpos : 0 < value) :
    TopPairingLocalAxisAllows linear face := by
  unfold TopPairingLocalAxisAllows
  rw [hdot]
  exact hpos

theorem topPairingLocalAxisFrom_cons_next
    {linear next : Mat3 Rat} {face : Face} {rest : List Face}
    (hface : TopPairingLocalAxisAllows linear face)
    (hnext : next = matMul linear (reflM (normalQ face)))
    (hrest : TopPairingLocalAxisFrom next rest) :
    TopPairingLocalAxisFrom linear (face :: rest) :=
  And.intro hface (by
    simpa [hnext] using hrest)

theorem topPairingLocalAxisLabels_ofFrom
    {labels : List Face}
    (hfrom : TopPairingLocalAxisFrom (matId : Mat3 Rat) labels) :
    TopPairingLocalAxisLabels labels :=
  hfrom

def startedCanonicalSingleFace : Face -> Face
  | Face.xp => Face.xp
  | Face.xm => Face.xm
  | Face.yp => Face.yp
  | Face.ym => Face.yp
  | Face.zp => Face.yp
  | Face.zm => Face.yp
  | Face.tmmm => Face.tmmm
  | Face.tmmp => Face.tmmm
  | Face.tmpm => Face.tmmm
  | Face.tmpp => Face.tmmm
  | Face.tpmm => Face.tpmm
  | Face.tpmp => Face.tpmm
  | Face.tppm => Face.tpmm
  | Face.tppp => Face.tpmm

def topPairingCanonicalBadFace : Face :=
  Face.yp

def TopPairingCanonicalBadFaceCompatible (badFace : Face) : Prop :=
  startedCanonicalSingleFace badFace = topPairingCanonicalBadFace

theorem topPairingCanonicalBadFaceCompatible_ym :
    TopPairingCanonicalBadFaceCompatible Face.ym := by
  rfl

theorem not_topPairingCanonicalBadFaceCompatible_tpmm :
    ¬ TopPairingCanonicalBadFaceCompatible Face.tpmm := by
  intro h
  cases h

structure TopPairingScheduleLanguageAtRank (rank : Fin numPairWords) : Prop where
  cancellation :
    Cuboctahedron.TopPairingLanguageAtRank rank
  schedule :
    TopPairingStepScheduleLabels
      (faceLabelsInContributionOrder (fun f => f) (canonicalSeqOfPairWord (unrankPairWord rank)))
  squareGap :
    TopPairingSquareGapLabels
      (faceLabelsInContributionOrder (fun f => f) (canonicalSeqOfPairWord (unrankPairWord rank)))
  localAxis :
    TopPairingLocalAxisLabels
      (faceLabelsInContributionOrder (fun f => f) (canonicalSeqOfPairWord (unrankPairWord rank)))

structure TopPairingClosedLanguageAtRank
    (rank : Fin numPairWords) (badFace : Face) : Prop extends
    TopPairingScheduleLanguageAtRank rank where
  canonicalBadFace :
    TopPairingCanonicalBadFaceCompatible badFace

structure TopPairingScheduleLanguageForSeq
    (rank : Fin numPairWords) (seq : Step14 -> Face) : Prop where
  cancellation :
    Cuboctahedron.TopPairingLanguageAtRank rank
  schedule :
    TopPairingStepScheduleLabels
      (faceLabelsInContributionOrder (fun f => f) seq)
  squareGap :
    TopPairingSquareGapLabels
      (faceLabelsInContributionOrder (fun f => f) seq)
  localAxis :
    TopPairingLocalAxisLabels
      (faceLabelsInContributionOrder (fun f => f) seq)

structure TopPairingClosedLanguageForSeq
    (rank : Fin numPairWords) (seq : Step14 -> Face) (badFace : Face) : Prop
    extends TopPairingScheduleLanguageForSeq rank seq where
  canonicalBadFace :
    TopPairingCanonicalBadFaceCompatible badFace

namespace TopPairingScheduleLanguageAtRank

theorem ofComponents
    {rank : Fin numPairWords}
    (cancellation :
      Cuboctahedron.TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)))) :
    TopPairingScheduleLanguageAtRank rank where
  cancellation := cancellation
  schedule := schedule
  squareGap := squareGap
  localAxis := localAxis

end TopPairingScheduleLanguageAtRank

namespace TopPairingClosedLanguageAtRank

theorem pairCounts
    {rank : Fin numPairWords} {badFace : Face}
    (_h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingPairCountsLabels
      (faceLabelsInContributionOrder (fun f => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))) :=
  topPairingPairCountsCanonicalLabels rank

theorem cancellationLabels
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    triangularCancellationSummaryOfFaceLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))) =
      topPairingTargetSummary := by
  rw [triangularCancellationSummaryOfCanonicalLabels]
  exact h.cancellation

theorem ofComponents
    {rank : Fin numPairWords} {badFace : Face}
    (cancellation :
      Cuboctahedron.TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f)
          (canonicalSeqOfPairWord (unrankPairWord rank))))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageAtRank rank badFace where
  cancellation := cancellation
  schedule := schedule
  squareGap := squareGap
  localAxis := localAxis
  canonicalBadFace := canonicalBadFace

theorem forCanonicalSeq
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingClosedLanguageForSeq
      rank (canonicalSeqOfPairWord (unrankPairWord rank)) badFace where
  cancellation := h.cancellation
  schedule := h.schedule
  squareGap := h.squareGap
  localAxis := h.localAxis
  canonicalBadFace := h.canonicalBadFace

end TopPairingClosedLanguageAtRank

namespace TopPairingScheduleLanguageForSeq

theorem ofComponents
    {rank : Fin numPairWords} {seq : Step14 -> Face}
    (cancellation :
      Cuboctahedron.TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f) seq))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f) seq))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f) seq)) :
    TopPairingScheduleLanguageForSeq rank seq where
  cancellation := cancellation
  schedule := schedule
  squareGap := squareGap
  localAxis := localAxis

end TopPairingScheduleLanguageForSeq

namespace TopPairingClosedLanguageForSeq

theorem ofComponents
    {rank : Fin numPairWords} {seq : Step14 -> Face} {badFace : Face}
    (cancellation :
      Cuboctahedron.TopPairingLanguageAtRank rank)
    (schedule :
      TopPairingStepScheduleLabels
        (faceLabelsInContributionOrder (fun f => f) seq))
    (squareGap :
      TopPairingSquareGapLabels
        (faceLabelsInContributionOrder (fun f => f) seq))
    (localAxis :
      TopPairingLocalAxisLabels
        (faceLabelsInContributionOrder (fun f => f) seq))
    (canonicalBadFace :
      TopPairingCanonicalBadFaceCompatible badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace where
  cancellation := cancellation
  schedule := schedule
  squareGap := squareGap
  localAxis := localAxis
  canonicalBadFace := canonicalBadFace

theorem transportLabels
    {rank : Fin numPairWords} {seq template : Step14 -> Face}
    {badFace : Face}
    (hlabels :
      faceLabelsInContributionOrder (fun f => f) seq =
        faceLabelsInContributionOrder (fun f => f) template)
    (h : TopPairingClosedLanguageForSeq rank template badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  ofComponents
    h.cancellation
    (by
      rw [hlabels]
      exact h.schedule)
    (by
      rw [hlabels]
      exact h.squareGap)
    (by
      rw [hlabels]
      exact h.localAxis)
    h.canonicalBadFace

theorem transportPairSignLanguage
    {rank : Fin numPairWords} {seq template : Step14 -> Face}
    {badFace : Face}
    (htemplate : PairWordMatchesSeq (unrankPairWord rank) template)
    (hseq : PairSignLanguageAtRank rank template seq)
    (h : TopPairingClosedLanguageForSeq rank template badFace) :
    TopPairingClosedLanguageForSeq rank seq badFace :=
  transportLabels
    (faceLabelsInContributionOrder_eq_of_pairSignLanguageAtRank
      (fun f => f) htemplate hseq)
    h

end TopPairingClosedLanguageForSeq

end Cuboctahedron
