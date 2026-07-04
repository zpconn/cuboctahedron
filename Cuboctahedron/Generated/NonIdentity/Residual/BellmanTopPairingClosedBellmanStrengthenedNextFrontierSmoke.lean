import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

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

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
