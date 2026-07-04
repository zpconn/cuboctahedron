import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
import Cuboctahedron.Search.TopPairingUsedFaceTail

set_option linter.unusedSimpArgs false

/-!
Bounded next-frontier smoke for the strengthened closed Bellman transducer.

The first generated local branch-table shard covers graph states `143`, `144`,
`145`, and `146`.  The next frontier contains graph state `147`, reached by two
semantic prefixes:

* `[xm, ym, yp, zm]`
* `[xm, ym, zm, yp]`

This module checks that these two routes are the same semantic eval state.  That
is the key sanity check before graph-state keyed local tables are extended: if
the semantic states diverged, the next shard would need a finer key than graph
state alone.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke

def strengthenedClosedUsedEvalNext :
    TopPairingUsedFaceEvalState Nat -> Face ->
      Option (TopPairingUsedFaceEvalState Nat × Int) :=
  TopPairingUsedFaceEvalState.next? closedBellmanNext (fun face : Face => face)

def strengthenedClosedPrefix4YpZmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3YpTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3YpTransducerState.gap
    Face.zm
  k := strengthenedClosedPrefix3YpTransducerState.k
  parity := strengthenedClosedPrefix3YpTransducerState.parity.applyPair
    (pairOfFace Face.zm)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3YpTransducerState.linear Face.zm

def strengthenedClosedPrefix4YpZmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4YpZmTransducerState
  graph := 147

def strengthenedClosedPrefix4ZmYpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.yp
  k := strengthenedClosedPrefix3ZmTransducerState.k
  parity := strengthenedClosedPrefix3ZmTransducerState.parity.applyPair
    (pairOfFace Face.yp)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.yp

def strengthenedClosedPrefix4ZmYpEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmYpTransducerState
  graph := 147

theorem strengthenedClosed_prefix4_yp_zm_next_from_prefix3Yp :
    strengthenedClosedEvalNext strengthenedClosedPrefix3YpEvalState Face.zm =
      some (strengthenedClosedPrefix4YpZmEvalState, (-10 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_yp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.yp =
      some (strengthenedClosedPrefix4ZmYpEvalState, (-73 : Int)) := by
  rfl

private theorem strengthenedClosedTransducerState_ext
    {a b : TopPairingTransducerState}
    (hstep : a.step = b.step) (hgap : a.gap = b.gap) (hk : a.k = b.k)
    (hparity : a.parity = b.parity) (hlinear : a.linear = b.linear) :
    a = b := by
  cases a
  cases b
  simp_all

private theorem strengthenedClosedEvalState_ext
    {a b : StrengthenedClosedEvalState}
    (htransducer : a.transducer = b.transducer) (hgraph : a.graph = b.graph) :
    a = b := by
  cases a
  cases b
  simp_all

theorem strengthenedClosedPrefix4YpZm_transducer_eq_zm_yp :
    strengthenedClosedPrefix4YpZmTransducerState =
      strengthenedClosedPrefix4ZmYpTransducerState := by
  apply strengthenedClosedTransducerState_ext
  · rfl
  · rfl
  · rfl
  · simp [strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix4ZmYpTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      pairOfFace, SqParity.applyPair, SqParity.toggleForPair,
      SqParity.toggleX, SqParity.toggleY, SqParity.toggleZ,
      SqParity.xor, SqParity.id]
  · apply Mat3.ext <;> simp [strengthenedClosedPrefix4YpZmTransducerState,
    strengthenedClosedPrefix4ZmYpTransducerState,
    strengthenedClosedPrefix3YpTransducerState,
    strengthenedClosedPrefix3ZmTransducerState,
    strengthenedClosedPrefix2TransducerState,
    topPairingNextGap, pairOfFace, isSquarePair, topPairingNextLinear,
    SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
    SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
    normalQ, matMul, reflM, matSub, scalarMat, outer, dot, matId]

theorem strengthenedClosedPrefix4YpZm_eval_eq_zm_yp :
    strengthenedClosedPrefix4YpZmEvalState =
      strengthenedClosedPrefix4ZmYpEvalState := by
  apply strengthenedClosedEvalState_ext
  · exact strengthenedClosedPrefix4YpZm_transducer_eq_zm_yp
  · rfl

def strengthenedClosedPrefix4YpTmmmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3YpTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3YpTransducerState.gap
    Face.tmmm
  k := strengthenedClosedPrefix3YpTransducerState.k + 1
  parity := strengthenedClosedPrefix3YpTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3YpTransducerState.linear Face.tmmm

def strengthenedClosedPrefix4YpTmmmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4YpTmmmTransducerState
  graph := 148

def strengthenedClosedPrefix4ZmZpTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.zp
  k := strengthenedClosedPrefix3ZmTransducerState.k
  parity := strengthenedClosedPrefix3ZmTransducerState.parity.applyPair
    (pairOfFace Face.zp)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.zp

def strengthenedClosedPrefix4ZmZpEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmZpTransducerState
  graph := 149

def strengthenedClosedPrefix4TmpmZmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3TmpmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3TmpmTransducerState.gap
    Face.zm
  k := strengthenedClosedPrefix3TmpmTransducerState.k
  parity := strengthenedClosedPrefix3TmpmTransducerState.parity.applyPair
    (pairOfFace Face.zm)
  linear := topPairingNextLinear
    strengthenedClosedPrefix3TmpmTransducerState.linear Face.zm

def strengthenedClosedPrefix4TmpmZmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4TmpmZmTransducerState
  graph := 150

def strengthenedClosedPrefix4ZmTmppTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3ZmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3ZmTransducerState.gap
    Face.tmpp
  k := strengthenedClosedPrefix3ZmTransducerState.k + 1
  parity := strengthenedClosedPrefix3ZmTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3ZmTransducerState.linear Face.tmpp

def strengthenedClosedPrefix4ZmTmppEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4ZmTmppTransducerState
  graph := 151

def strengthenedClosedPrefix4TmpmTppmTransducerState :
    TopPairingTransducerState where
  step := strengthenedClosedPrefix3TmpmTransducerState.step + 1
  gap := topPairingNextGap strengthenedClosedPrefix3TmpmTransducerState.gap
    Face.tppm
  k := strengthenedClosedPrefix3TmpmTransducerState.k + 1
  parity := strengthenedClosedPrefix3TmpmTransducerState.parity
  linear := topPairingNextLinear
    strengthenedClosedPrefix3TmpmTransducerState.linear Face.tppm

def strengthenedClosedPrefix4TmpmTppmEvalState : StrengthenedClosedEvalState where
  transducer := strengthenedClosedPrefix4TmpmTppmTransducerState
  graph := 152

theorem strengthenedClosed_prefix4_yp_tmmm_next_from_prefix3Yp :
    strengthenedClosedEvalNext strengthenedClosedPrefix3YpEvalState Face.tmmm =
      some (strengthenedClosedPrefix4YpTmmmEvalState, (-124 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_zp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.zp =
      some (strengthenedClosedPrefix4ZmZpEvalState, (-10 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_tmpm_zm_next_from_prefix3Tmpm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3TmpmEvalState Face.zm =
      some (strengthenedClosedPrefix4TmpmZmEvalState, (114 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_zm_tmpp_next_from_prefix3Zm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3ZmEvalState Face.tmpp =
      some (strengthenedClosedPrefix4ZmTmppEvalState, (-124 : Int)) := by
  rfl

theorem strengthenedClosed_prefix4_tmpm_tppm_next_from_prefix3Tmpm :
    strengthenedClosedEvalNext strengthenedClosedPrefix3TmpmEvalState Face.tppm =
      some (strengthenedClosedPrefix4TmpmTppmEvalState, (96 : Int)) := by
  rfl

inductive StrengthenedPrefix4Graph147Branch where
  | zp | tmmp
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph147Branch

def face : StrengthenedPrefix4Graph147Branch -> Face
  | .zp => Face.zp
  | .tmmp => Face.tmmp

def nextGraph : StrengthenedPrefix4Graph147Branch -> Nat
  | .zp => 153
  | .tmmp => 155

def gain : StrengthenedPrefix4Graph147Branch -> Int
  | .zp => -10
  | .tmmp => -124

theorem step (branch : StrengthenedPrefix4Graph147Branch) :
    ClosedBellmanStep 147 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0135_l13
    | exact ClosedBellmanStep.e0136_l01

end StrengthenedPrefix4Graph147Branch

theorem strengthenedPrefix4Graph147Branch_of_tail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpZmEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph147Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4YpZmTransducerState.step
        strengthenedClosedPrefix4YpZmTransducerState.gap
        strengthenedClosedPrefix4YpZmTransducerState.k
        strengthenedClosedPrefix4YpZmTransducerState.parity
        strengthenedClosedPrefix4YpZmTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4YpZmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph147Branch.zp, rfl⟩
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph147Branch.tmmp, rfl⟩
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpZmEvalState,
      strengthenedClosedPrefix4YpZmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons

def strengthenedPrefix4Graph147LocalBranchTable :
    StrengthenedLocalBranchTable strengthenedClosedPrefix4YpZmEvalState where
  Branch := StrengthenedPrefix4Graph147Branch
  face := StrengthenedPrefix4Graph147Branch.face
  nextGraph := StrengthenedPrefix4Graph147Branch.nextGraph
  gain := StrengthenedPrefix4Graph147Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 147
      (StrengthenedPrefix4Graph147Branch.face branch)
      (StrengthenedPrefix4Graph147Branch.nextGraph branch)
      (StrengthenedPrefix4Graph147Branch.gain branch)
    exact StrengthenedPrefix4Graph147Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph147Branch_of_tail htail

inductive StrengthenedPrefix4Graph149Branch where
  | yp | tmpm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph149Branch

def face : StrengthenedPrefix4Graph149Branch -> Face
  | .yp => Face.yp
  | .tmpm => Face.tmpm

def nextGraph : StrengthenedPrefix4Graph149Branch -> Nat
  | .yp => 153
  | .tmpm => 158

def gain : StrengthenedPrefix4Graph149Branch -> Int
  | .yp => -73
  | .tmpm => -124

theorem step (branch : StrengthenedPrefix4Graph149Branch) :
    ClosedBellmanStep 149 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0139_l11
    | exact ClosedBellmanStep.e0140_l02

end StrengthenedPrefix4Graph149Branch

theorem strengthenedPrefix4Graph149Branch_of_tail_and_zm_used
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpEvalState.Tail (face :: rest))
    (hzmUsed : Face.zm ∉ face :: rest)
    (hzpUsed : Face.zp ∉ face :: rest) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4ZmZpTransducerState.step
        strengthenedClosedPrefix4ZmZpTransducerState.gap
        strengthenedClosedPrefix4ZmZpTransducerState.k
        strengthenedClosedPrefix4ZmZpTransducerState.parity
        strengthenedClosedPrefix4ZmZpTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4ZmZpEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph149Branch.yp, rfl⟩
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact False.elim (hzpUsed (by simp))
  · exact False.elim (hzmUsed (by simp))
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · exact ⟨StrengthenedPrefix4Graph149Branch.tmpm, rfl⟩
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4ZmZpEvalState,
      strengthenedClosedPrefix4ZmZpTransducerState,
      strengthenedClosedPrefix3ZmTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadow] at hcons

inductive StrengthenedPrefix4Graph148Branch where
  | zm | tpmm
  deriving DecidableEq, Repr

namespace StrengthenedPrefix4Graph148Branch

def face : StrengthenedPrefix4Graph148Branch -> Face
  | .zm => Face.zm
  | .tpmm => Face.tpmm

def nextGraph : StrengthenedPrefix4Graph148Branch -> Nat
  | .zm => 154
  | .tpmm => 156

def gain : StrengthenedPrefix4Graph148Branch -> Int
  | .zm => 114
  | .tpmm => 96

theorem step (branch : StrengthenedPrefix4Graph148Branch) :
    ClosedBellmanStep 148 branch.face branch.nextGraph branch.gain := by
  cases branch <;> first
    | exact ClosedBellmanStep.e0137_l12
    | exact ClosedBellmanStep.e0138_l04

end StrengthenedPrefix4Graph148Branch

theorem strengthenedPrefix4Graph148Branch_of_tail_and_yp_used
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmEvalState.Tail (face :: rest))
    (hypUsed : Face.yp ∉ face :: rest) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face := by
  have htailRaw :
      TopPairingTransducerTail
        strengthenedClosedPrefix4YpTmmmTransducerState.step
        strengthenedClosedPrefix4YpTmmmTransducerState.gap
        strengthenedClosedPrefix4YpTmmmTransducerState.k
        strengthenedClosedPrefix4YpTmmmTransducerState.parity
        strengthenedClosedPrefix4YpTmmmTransducerState.linear
        (face :: rest) := by
    simpa [TopPairingTransducerEvalState.Tail,
      TopPairingTransducerState.Tail,
      strengthenedClosedPrefix4YpTmmmEvalState] using htail
  have hcons := TopPairingTransducerTail.cons htailRaw
  cases face
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact False.elim (hypUsed (by simp))
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · exact ⟨StrengthenedPrefix4Graph148Branch.zm, rfl⟩
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons
  · have haxis := hcons.2.1
    simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      TopPairingLocalAxisAllows, topPairingNextLinear,
      topPairingLocalAxis, normalQ, matVec, matMul, reflM, matSub,
      scalarMat, outer, dot, matId] at haxis
    norm_num at haxis
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · exact ⟨StrengthenedPrefix4Graph148Branch.tpmm, rfl⟩
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      topPairingAllowedFacesAtStep] at hcons
  · simp [strengthenedClosedPrefix4YpTmmmEvalState,
      strengthenedClosedPrefix4YpTmmmTransducerState,
      strengthenedClosedPrefix3YpTransducerState,
      strengthenedClosedPrefix2TransducerState,
      triLetterOfFace?, TriLetter.act, TriLetter.ofPairId?,
      TriLetter.ofSigns, TriLetter.yNeg, TriLetter.zNeg,
      SqParity.applyPair, SqParity.toggleForPair, SqParity.toggleX,
      SqParity.toggleY, SqParity.toggleZ, SqParity.xor, SqParity.id,
      pairOfFace, topPairingTargetShadowLength,
      topPairingTargetShadow] at hcons

def strengthenedClosedPrefix4YpTmmmUsedFaces : List Face :=
  [Face.xm, Face.ym, Face.yp, Face.tmmm]

def strengthenedClosedPrefix4YpTmmmUsedEvalState :
    TopPairingUsedFaceEvalState Nat where
  eval := strengthenedClosedPrefix4YpTmmmEvalState
  used := strengthenedClosedPrefix4YpTmmmUsedFaces

theorem strengthenedPrefix4Graph148Branch_of_tail_and_usedFaceTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmEvalState.Tail (face :: rest))
    (hused :
      TopPairingUsedFaceTail strengthenedClosedPrefix4YpTmmmUsedFaces
        (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face := by
  apply strengthenedPrefix4Graph148Branch_of_tail_and_yp_used htail
  intro hyp
  exact hused.disjoint Face.yp hyp (by
    simp [strengthenedClosedPrefix4YpTmmmUsedFaces])

theorem strengthenedPrefix4Graph148Branch_of_usedEvalTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4YpTmmmUsedEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph148Branch,
      branch.face = face :=
  strengthenedPrefix4Graph148Branch_of_tail_and_usedFaceTail
    (TopPairingUsedFaceEvalState.tail_eval htail)
    (TopPairingUsedFaceEvalState.tail_used htail)

def strengthenedClosedPrefix4ZmZpUsedFaces : List Face :=
  [Face.xm, Face.ym, Face.zm, Face.zp]

def strengthenedClosedPrefix4ZmZpUsedEvalState :
    TopPairingUsedFaceEvalState Nat where
  eval := strengthenedClosedPrefix4ZmZpEvalState
  used := strengthenedClosedPrefix4ZmZpUsedFaces

theorem strengthenedPrefix4Graph149Branch_of_tail_and_usedFaceTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpEvalState.Tail (face :: rest))
    (hused :
      TopPairingUsedFaceTail strengthenedClosedPrefix4ZmZpUsedFaces
        (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face := by
  apply strengthenedPrefix4Graph149Branch_of_tail_and_zm_used htail
  · intro hzm
    exact hused.disjoint Face.zm hzm (by
      simp [strengthenedClosedPrefix4ZmZpUsedFaces])
  · intro hzp
    exact hused.disjoint Face.zp hzp (by
      simp [strengthenedClosedPrefix4ZmZpUsedFaces])

theorem strengthenedPrefix4Graph149Branch_of_usedEvalTail
    {face : Face} {rest : List Face}
    (htail :
      strengthenedClosedPrefix4ZmZpUsedEvalState.Tail (face :: rest)) :
    ∃ branch : StrengthenedPrefix4Graph149Branch,
      branch.face = face :=
  strengthenedPrefix4Graph149Branch_of_tail_and_usedFaceTail
    (TopPairingUsedFaceEvalState.tail_eval htail)
    (TopPairingUsedFaceEvalState.tail_used htail)

structure StrengthenedUsedFaceLocalBranchTable
    (state : TopPairingUsedFaceEvalState Nat) where
  Branch : Type
  face : Branch -> Face
  nextGraph : Branch -> Nat
  gain : Branch -> Int
  step :
    ∀ branch,
      ClosedBellmanStep state.eval.graph (face branch)
        (nextGraph branch) (gain branch)
  branch_of_tail :
    ∀ {face0 : Face} {rest : List Face},
      state.Tail (face0 :: rest) ->
        ∃ branch : Branch, face branch = face0

namespace StrengthenedUsedFaceLocalBranchTable

theorem localTransition
    {state : TopPairingUsedFaceEvalState Nat}
    (table : StrengthenedUsedFaceLocalBranchTable state)
    {face0 : Face} {rest : List Face}
    (htail : state.Tail (face0 :: rest)) :
    ∃ branch : table.Branch,
      table.face branch = face0 ∧
        ∃ nextState : TopPairingUsedFaceEvalState Nat,
          strengthenedClosedUsedEvalNext state face0 =
              some (nextState, table.gain branch) ∧
            nextState.Tail rest ∧
              nextState.eval.graph = table.nextGraph branch ∧
                nextState.used = face0 :: state.used := by
  rcases table.branch_of_tail htail with ⟨branch, hface⟩
  subst face0
  have hgraph :
      closedBellmanNext state.eval.graph (table.face branch) =
        some (table.nextGraph branch, table.gain branch) :=
    closedBellmanStep_next (table.step branch)
  rcases TopPairingUsedFaceEvalState.next?_tail
      (next := closedBellmanNext) (labelOfFace := fun face : Face => face)
      htail hgraph with
    ⟨nextState, hnext, htailNext, hgraphNext, husedNext⟩
  exact ⟨branch, rfl, nextState, hnext, htailNext, hgraphNext, husedNext⟩

end StrengthenedUsedFaceLocalBranchTable

def strengthenedPrefix4Graph148UsedFaceLocalBranchTable :
    StrengthenedUsedFaceLocalBranchTable
      strengthenedClosedPrefix4YpTmmmUsedEvalState where
  Branch := StrengthenedPrefix4Graph148Branch
  face := StrengthenedPrefix4Graph148Branch.face
  nextGraph := StrengthenedPrefix4Graph148Branch.nextGraph
  gain := StrengthenedPrefix4Graph148Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 148
      (StrengthenedPrefix4Graph148Branch.face branch)
      (StrengthenedPrefix4Graph148Branch.nextGraph branch)
      (StrengthenedPrefix4Graph148Branch.gain branch)
    exact StrengthenedPrefix4Graph148Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph148Branch_of_usedEvalTail htail

def strengthenedPrefix4Graph149UsedFaceLocalBranchTable :
    StrengthenedUsedFaceLocalBranchTable
      strengthenedClosedPrefix4ZmZpUsedEvalState where
  Branch := StrengthenedPrefix4Graph149Branch
  face := StrengthenedPrefix4Graph149Branch.face
  nextGraph := StrengthenedPrefix4Graph149Branch.nextGraph
  gain := StrengthenedPrefix4Graph149Branch.gain
  step := by
    intro branch
    change ClosedBellmanStep 149
      (StrengthenedPrefix4Graph149Branch.face branch)
      (StrengthenedPrefix4Graph149Branch.nextGraph branch)
      (StrengthenedPrefix4Graph149Branch.gain branch)
    exact StrengthenedPrefix4Graph149Branch.step branch
  branch_of_tail := by
    intro face rest htail
    exact strengthenedPrefix4Graph149Branch_of_usedEvalTail htail

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
