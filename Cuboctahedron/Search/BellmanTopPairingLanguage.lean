import Cuboctahedron.Search.CancellationPairingLanguage
import Cuboctahedron.Search.FaceLabelLanguage
import Cuboctahedron.Search.NonIdentityCase

/-!
Semantic language predicates for the current top-pairing Bellman family.

This module starts collecting the Lean-side predicates corresponding to the
accepted Bellman closure diagnostics.  It is deliberately small: the first
component is the cancellation-pairing language, and the second is the observed
contribution-order face schedule.  Later slices should add the square-gap,
local forced-axis, and canonical-bad-face components.
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

end Cuboctahedron
