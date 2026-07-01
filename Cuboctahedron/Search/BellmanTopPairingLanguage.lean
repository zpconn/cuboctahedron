import Cuboctahedron.Search.CancellationPairingLanguage
import Cuboctahedron.Search.FaceLabelLanguage
import Cuboctahedron.Search.NonIdentityCase

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

end TopPairingClosedLanguageAtRank

end Cuboctahedron
