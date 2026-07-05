import Cuboctahedron.Search.BellmanPotential

/-!
Lean smoke for the graph221 object cocycle quotient.

This file is diagnostic, not generated coverage.  It checks the
`step-stack` quotient solution selected by
`profile_graph221_object_cocycle_quotient.py` and exercises
`BellmanLabelStepRun.quotient_of_step_gain_eq` on the three observed
graph221 suffix branches.  Production still needs semantic
`Graph221ZmTmppSplit10MRootMarginObj` membership.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221ObjectCocycleQuotientSmoke

open Cuboctahedron

private def edgeCount : Nat := 21
private def stateCount : Nat := 21
private def quotientStateCount : Nat := 17

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (0 : Nat)
  | ⟨1, _⟩ => (608 : Nat)
  | ⟨2, _⟩ => (610 : Nat)
  | ⟨3, _⟩ => (616 : Nat)
  | ⟨4, _⟩ => (632 : Nat)
  | ⟨5, _⟩ => (662 : Nat)
  | ⟨6, _⟩ => (713 : Nat)
  | ⟨7, _⟩ => (778 : Nat)
  | ⟨8, _⟩ => (852 : Nat)
  | ⟨9, _⟩ => (945 : Nat)
  | ⟨10, _⟩ => (57 : Nat)
  | ⟨11, _⟩ => (185 : Nat)
  | ⟨12, _⟩ => (339 : Nat)
  | ⟨13, _⟩ => (484 : Nat)
  | ⟨14, _⟩ => (945 : Nat)
  | ⟨15, _⟩ => (85 : Nat)
  | ⟨16, _⟩ => (228 : Nat)
  | ⟨17, _⟩ => (340 : Nat)
  | ⟨18, _⟩ => (485 : Nat)
  | ⟨19, _⟩ => (228 : Nat)
  | ⟨20, _⟩ => (363 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (608 : Nat)
  | ⟨1, _⟩ => (610 : Nat)
  | ⟨2, _⟩ => (616 : Nat)
  | ⟨3, _⟩ => (632 : Nat)
  | ⟨4, _⟩ => (662 : Nat)
  | ⟨5, _⟩ => (713 : Nat)
  | ⟨6, _⟩ => (778 : Nat)
  | ⟨7, _⟩ => (852 : Nat)
  | ⟨8, _⟩ => (945 : Nat)
  | ⟨9, _⟩ => (57 : Nat)
  | ⟨10, _⟩ => (185 : Nat)
  | ⟨11, _⟩ => (339 : Nat)
  | ⟨12, _⟩ => (484 : Nat)
  | ⟨13, _⟩ => (600 : Nat)
  | ⟨14, _⟩ => (85 : Nat)
  | ⟨15, _⟩ => (228 : Nat)
  | ⟨16, _⟩ => (340 : Nat)
  | ⟨17, _⟩ => (485 : Nat)
  | ⟨18, _⟩ => (601 : Nat)
  | ⟨19, _⟩ => (363 : Nat)
  | ⟨20, _⟩ => (485 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (8 : Nat)
  | ⟨1, _⟩ => (10 : Nat)
  | ⟨2, _⟩ => (12 : Nat)
  | ⟨3, _⟩ => (3 : Nat)
  | ⟨4, _⟩ => (7 : Nat)
  | ⟨5, _⟩ => (5 : Nat)
  | ⟨6, _⟩ => (6 : Nat)
  | ⟨7, _⟩ => (1 : Nat)
  | ⟨8, _⟩ => (4 : Nat)
  | ⟨9, _⟩ => (11 : Nat)
  | ⟨10, _⟩ => (2 : Nat)
  | ⟨11, _⟩ => (0 : Nat)
  | ⟨12, _⟩ => (13 : Nat)
  | ⟨13, _⟩ => (9 : Nat)
  | ⟨14, _⟩ => (0 : Nat)
  | ⟨15, _⟩ => (2 : Nat)
  | ⟨16, _⟩ => (11 : Nat)
  | ⟨17, _⟩ => (13 : Nat)
  | ⟨18, _⟩ => (9 : Nat)
  | ⟨19, _⟩ => (13 : Nat)
  | ⟨20, _⟩ => (11 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (103 : Int)
  | ⟨1, _⟩ => (-73 : Int)
  | ⟨2, _⟩ => (-10 : Int)
  | ⟨3, _⟩ => (-124 : Int)
  | ⟨4, _⟩ => (96 : Int)
  | ⟨5, _⟩ => (-36 : Int)
  | ⟨6, _⟩ => (-144 : Int)
  | ⟨7, _⟩ => (-144 : Int)
  | ⟨8, _⟩ => (-36 : Int)
  | ⟨9, _⟩ => (-117 : Int)
  | ⟨10, _⟩ => (96 : Int)
  | ⟨11, _⟩ => (-124 : Int)
  | ⟨12, _⟩ => (-10 : Int)
  | ⟨13, _⟩ => (-73 : Int)
  | ⟨14, _⟩ => (96 : Int)
  | ⟨15, _⟩ => (-124 : Int)
  | ⟨16, _⟩ => (103 : Int)
  | ⟨17, _⟩ => (-10 : Int)
  | ⟨18, _⟩ => (-73 : Int)
  | ⟨19, _⟩ => (-10 : Int)
  | ⟨20, _⟩ => (103 : Int)
  | _ => (0 : Int)

private def smallGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (0 : Int)
  | ⟨1, _⟩ => (0 : Int)
  | ⟨2, _⟩ => (0 : Int)
  | ⟨3, _⟩ => (0 : Int)
  | ⟨4, _⟩ => (0 : Int)
  | ⟨5, _⟩ => (0 : Int)
  | ⟨6, _⟩ => (0 : Int)
  | ⟨7, _⟩ => (0 : Int)
  | ⟨8, _⟩ => (0 : Int)
  | ⟨9, _⟩ => (0 : Int)
  | ⟨10, _⟩ => (0 : Int)
  | ⟨11, _⟩ => (0 : Int)
  | ⟨12, _⟩ => (0 : Int)
  | ⟨13, _⟩ => (0 : Int)
  | ⟨14, _⟩ => (0 : Int)
  | ⟨15, _⟩ => (0 : Int)
  | ⟨16, _⟩ => (0 : Int)
  | ⟨17, _⟩ => (0 : Int)
  | ⟨18, _⟩ => (0 : Int)
  | ⟨19, _⟩ => (0 : Int)
  | ⟨20, _⟩ => (0 : Int)
  | _ => (0 : Int)

private def q : Nat -> Nat
  | 0 => (0 : Nat)
  | 57 => (1 : Nat)
  | 85 => (2 : Nat)
  | 185 => (3 : Nat)
  | 228 => (4 : Nat)
  | 339 => (5 : Nat)
  | 340 => (5 : Nat)
  | 363 => (5 : Nat)
  | 484 => (6 : Nat)
  | 485 => (6 : Nat)
  | 600 => (7 : Nat)
  | 601 => (7 : Nat)
  | 608 => (8 : Nat)
  | 610 => (9 : Nat)
  | 616 => (10 : Nat)
  | 632 => (11 : Nat)
  | 662 => (12 : Nat)
  | 713 => (13 : Nat)
  | 778 => (14 : Nat)
  | 852 => (15 : Nat)
  | 945 => (16 : Nat)
  | _ => (0 : Nat)

private def gauge : Nat -> Int
  | 0 => (368 : Int)
  | 57 => (-117 : Int)
  | 85 => (96 : Int)
  | 185 => (-21 : Int)
  | 228 => (-28 : Int)
  | 339 => (-145 : Int)
  | 340 => (75 : Int)
  | 363 => (-38 : Int)
  | 484 => (-155 : Int)
  | 485 => (65 : Int)
  | 600 => (-228 : Int)
  | 601 => (-8 : Int)
  | 608 => (471 : Int)
  | 610 => (398 : Int)
  | 616 => (388 : Int)
  | 632 => (264 : Int)
  | 662 => (360 : Int)
  | 713 => (324 : Int)
  | 778 => (180 : Int)
  | 852 => (36 : Int)
  | 945 => (0 : Int)
  | _ => (0 : Int)

private def FullStep (s label t : Nat) (gain : Int) : Prop :=
  exists i : Fin edgeCount,
    fullSrc i = s /\ edgeLabel i = label /\
      fullDst i = t /\ rawGain i = gain

private def SmallStep (s label t : Nat) (gain : Int) : Prop :=
  exists i : Fin edgeCount,
    q (fullSrc i) = s /\ edgeLabel i = label /\
      q (fullDst i) = t /\ smallGain i = gain

private theorem localEquation (i : Fin edgeCount) :
    rawGain i = smallGain i + gauge (fullDst i) - gauge (fullSrc i) := by
  fin_cases i <;> decide

theorem graph221QuotientStep
    {s label t : Nat} {gain : Int}
    (hstep : FullStep s label t gain) :
    exists smallGainValue,
      SmallStep (q s) label (q t) smallGainValue /\
        gain = smallGainValue + gauge t - gauge s := by
  rcases hstep with ⟨i, hs, hlabel, ht, hgain⟩
  subst s
  subst label
  subst t
  subst gain
  refine ⟨smallGain i, ?_, ?_⟩
  · exact ⟨i, rfl, rfl, rfl, rfl⟩
  · exact localEquation i

private def branch029Edge0 : Fin edgeCount := ⟨0, by decide⟩
private def branch029Edge1 : Fin edgeCount := ⟨1, by decide⟩
private def branch029Edge2 : Fin edgeCount := ⟨2, by decide⟩
private def branch029Edge3 : Fin edgeCount := ⟨3, by decide⟩
private def branch029Edge4 : Fin edgeCount := ⟨4, by decide⟩
private def branch029Edge5 : Fin edgeCount := ⟨5, by decide⟩
private def branch029Edge6 : Fin edgeCount := ⟨6, by decide⟩
private def branch029Edge7 : Fin edgeCount := ⟨7, by decide⟩
private def branch029Edge8 : Fin edgeCount := ⟨8, by decide⟩
private def branch029Edge9 : Fin edgeCount := ⟨14, by decide⟩
private def branch029Edge10 : Fin edgeCount := ⟨15, by decide⟩
private def branch029Edge11 : Fin edgeCount := ⟨16, by decide⟩
private def branch029Edge12 : Fin edgeCount := ⟨17, by decide⟩
private def branch029Edge13 : Fin edgeCount := ⟨18, by decide⟩

private def branch029Labels : List Nat := [edgeLabel branch029Edge0, edgeLabel branch029Edge1, edgeLabel branch029Edge2, edgeLabel branch029Edge3, edgeLabel branch029Edge4, edgeLabel branch029Edge5, edgeLabel branch029Edge6, edgeLabel branch029Edge7, edgeLabel branch029Edge8, edgeLabel branch029Edge9, edgeLabel branch029Edge10, edgeLabel branch029Edge11, edgeLabel branch029Edge12, edgeLabel branch029Edge13]
def graph221Branch029RawGain : Int :=
  rawGain branch029Edge0 + (rawGain branch029Edge1 + (rawGain branch029Edge2 + (rawGain branch029Edge3 + (rawGain branch029Edge4 + (rawGain branch029Edge5 + (rawGain branch029Edge6 + (rawGain branch029Edge7 + (rawGain branch029Edge8 + (rawGain branch029Edge9 + (rawGain branch029Edge10 + (rawGain branch029Edge11 + (rawGain branch029Edge12 + (rawGain branch029Edge13 + ((0 : Int)))))))))))))))

private theorem branch029Step0 :
    FullStep (fullSrc branch029Edge0) (edgeLabel branch029Edge0)
      (fullDst branch029Edge0) (rawGain branch029Edge0) :=
  ⟨branch029Edge0, rfl, rfl, rfl, rfl⟩

private theorem branch029Step1 :
    FullStep (fullSrc branch029Edge1) (edgeLabel branch029Edge1)
      (fullDst branch029Edge1) (rawGain branch029Edge1) :=
  ⟨branch029Edge1, rfl, rfl, rfl, rfl⟩

private theorem branch029Step2 :
    FullStep (fullSrc branch029Edge2) (edgeLabel branch029Edge2)
      (fullDst branch029Edge2) (rawGain branch029Edge2) :=
  ⟨branch029Edge2, rfl, rfl, rfl, rfl⟩

private theorem branch029Step3 :
    FullStep (fullSrc branch029Edge3) (edgeLabel branch029Edge3)
      (fullDst branch029Edge3) (rawGain branch029Edge3) :=
  ⟨branch029Edge3, rfl, rfl, rfl, rfl⟩

private theorem branch029Step4 :
    FullStep (fullSrc branch029Edge4) (edgeLabel branch029Edge4)
      (fullDst branch029Edge4) (rawGain branch029Edge4) :=
  ⟨branch029Edge4, rfl, rfl, rfl, rfl⟩

private theorem branch029Step5 :
    FullStep (fullSrc branch029Edge5) (edgeLabel branch029Edge5)
      (fullDst branch029Edge5) (rawGain branch029Edge5) :=
  ⟨branch029Edge5, rfl, rfl, rfl, rfl⟩

private theorem branch029Step6 :
    FullStep (fullSrc branch029Edge6) (edgeLabel branch029Edge6)
      (fullDst branch029Edge6) (rawGain branch029Edge6) :=
  ⟨branch029Edge6, rfl, rfl, rfl, rfl⟩

private theorem branch029Step7 :
    FullStep (fullSrc branch029Edge7) (edgeLabel branch029Edge7)
      (fullDst branch029Edge7) (rawGain branch029Edge7) :=
  ⟨branch029Edge7, rfl, rfl, rfl, rfl⟩

private theorem branch029Step8 :
    FullStep (fullSrc branch029Edge8) (edgeLabel branch029Edge8)
      (fullDst branch029Edge8) (rawGain branch029Edge8) :=
  ⟨branch029Edge8, rfl, rfl, rfl, rfl⟩

private theorem branch029Step9 :
    FullStep (fullSrc branch029Edge9) (edgeLabel branch029Edge9)
      (fullDst branch029Edge9) (rawGain branch029Edge9) :=
  ⟨branch029Edge9, rfl, rfl, rfl, rfl⟩

private theorem branch029Step10 :
    FullStep (fullSrc branch029Edge10) (edgeLabel branch029Edge10)
      (fullDst branch029Edge10) (rawGain branch029Edge10) :=
  ⟨branch029Edge10, rfl, rfl, rfl, rfl⟩

private theorem branch029Step11 :
    FullStep (fullSrc branch029Edge11) (edgeLabel branch029Edge11)
      (fullDst branch029Edge11) (rawGain branch029Edge11) :=
  ⟨branch029Edge11, rfl, rfl, rfl, rfl⟩

private theorem branch029Step12 :
    FullStep (fullSrc branch029Edge12) (edgeLabel branch029Edge12)
      (fullDst branch029Edge12) (rawGain branch029Edge12) :=
  ⟨branch029Edge12, rfl, rfl, rfl, rfl⟩

private theorem branch029Step13 :
    FullStep (fullSrc branch029Edge13) (edgeLabel branch029Edge13)
      (fullDst branch029Edge13) (rawGain branch029Edge13) :=
  ⟨branch029Edge13, rfl, rfl, rfl, rfl⟩

private theorem branch029FullRun :
    BellmanLabelStepRun FullStep
      (fullSrc branch029Edge0) (fullDst branch029Edge13)
      branch029Labels graph221Branch029RawGain := by
  unfold branch029Labels graph221Branch029RawGain
  exact BellmanLabelStepRun.cons branch029Step0 (BellmanLabelStepRun.cons branch029Step1 (BellmanLabelStepRun.cons branch029Step2 (BellmanLabelStepRun.cons branch029Step3 (BellmanLabelStepRun.cons branch029Step4 (BellmanLabelStepRun.cons branch029Step5 (BellmanLabelStepRun.cons branch029Step6 (BellmanLabelStepRun.cons branch029Step7 (BellmanLabelStepRun.cons branch029Step8 (BellmanLabelStepRun.cons branch029Step9 (BellmanLabelStepRun.cons branch029Step10 (BellmanLabelStepRun.cons branch029Step11 (BellmanLabelStepRun.cons branch029Step12 (BellmanLabelStepRun.cons branch029Step13 (BellmanLabelStepRun.nil (fullDst branch029Edge13)))))))))))))))

theorem graph221Branch029RawGain_contract :
    graph221Branch029RawGain = (-376 : Int) := by
  decide

theorem graph221Branch029MarginBound_contract :
    (176 : Int) + graph221Branch029RawGain = (-200 : Int) := by
  decide

theorem graph221QuotientBranch029Smoke :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
        (q (fullSrc branch029Edge0))
        (q (fullDst branch029Edge13))
        branch029Labels smallGainValue /\
      graph221Branch029RawGain =
        smallGainValue + gauge (fullDst branch029Edge13) -
          gauge (fullSrc branch029Edge0) :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph221QuotientStep branch029FullRun

private def branch030Edge0 : Fin edgeCount := ⟨0, by decide⟩
private def branch030Edge1 : Fin edgeCount := ⟨1, by decide⟩
private def branch030Edge2 : Fin edgeCount := ⟨2, by decide⟩
private def branch030Edge3 : Fin edgeCount := ⟨3, by decide⟩
private def branch030Edge4 : Fin edgeCount := ⟨4, by decide⟩
private def branch030Edge5 : Fin edgeCount := ⟨5, by decide⟩
private def branch030Edge6 : Fin edgeCount := ⟨6, by decide⟩
private def branch030Edge7 : Fin edgeCount := ⟨7, by decide⟩
private def branch030Edge8 : Fin edgeCount := ⟨8, by decide⟩
private def branch030Edge9 : Fin edgeCount := ⟨14, by decide⟩
private def branch030Edge10 : Fin edgeCount := ⟨15, by decide⟩
private def branch030Edge11 : Fin edgeCount := ⟨19, by decide⟩
private def branch030Edge12 : Fin edgeCount := ⟨20, by decide⟩
private def branch030Edge13 : Fin edgeCount := ⟨18, by decide⟩

private def branch030Labels : List Nat := [edgeLabel branch030Edge0, edgeLabel branch030Edge1, edgeLabel branch030Edge2, edgeLabel branch030Edge3, edgeLabel branch030Edge4, edgeLabel branch030Edge5, edgeLabel branch030Edge6, edgeLabel branch030Edge7, edgeLabel branch030Edge8, edgeLabel branch030Edge9, edgeLabel branch030Edge10, edgeLabel branch030Edge11, edgeLabel branch030Edge12, edgeLabel branch030Edge13]
def graph221Branch030RawGain : Int :=
  rawGain branch030Edge0 + (rawGain branch030Edge1 + (rawGain branch030Edge2 + (rawGain branch030Edge3 + (rawGain branch030Edge4 + (rawGain branch030Edge5 + (rawGain branch030Edge6 + (rawGain branch030Edge7 + (rawGain branch030Edge8 + (rawGain branch030Edge9 + (rawGain branch030Edge10 + (rawGain branch030Edge11 + (rawGain branch030Edge12 + (rawGain branch030Edge13 + ((0 : Int)))))))))))))))

private theorem branch030Step0 :
    FullStep (fullSrc branch030Edge0) (edgeLabel branch030Edge0)
      (fullDst branch030Edge0) (rawGain branch030Edge0) :=
  ⟨branch030Edge0, rfl, rfl, rfl, rfl⟩

private theorem branch030Step1 :
    FullStep (fullSrc branch030Edge1) (edgeLabel branch030Edge1)
      (fullDst branch030Edge1) (rawGain branch030Edge1) :=
  ⟨branch030Edge1, rfl, rfl, rfl, rfl⟩

private theorem branch030Step2 :
    FullStep (fullSrc branch030Edge2) (edgeLabel branch030Edge2)
      (fullDst branch030Edge2) (rawGain branch030Edge2) :=
  ⟨branch030Edge2, rfl, rfl, rfl, rfl⟩

private theorem branch030Step3 :
    FullStep (fullSrc branch030Edge3) (edgeLabel branch030Edge3)
      (fullDst branch030Edge3) (rawGain branch030Edge3) :=
  ⟨branch030Edge3, rfl, rfl, rfl, rfl⟩

private theorem branch030Step4 :
    FullStep (fullSrc branch030Edge4) (edgeLabel branch030Edge4)
      (fullDst branch030Edge4) (rawGain branch030Edge4) :=
  ⟨branch030Edge4, rfl, rfl, rfl, rfl⟩

private theorem branch030Step5 :
    FullStep (fullSrc branch030Edge5) (edgeLabel branch030Edge5)
      (fullDst branch030Edge5) (rawGain branch030Edge5) :=
  ⟨branch030Edge5, rfl, rfl, rfl, rfl⟩

private theorem branch030Step6 :
    FullStep (fullSrc branch030Edge6) (edgeLabel branch030Edge6)
      (fullDst branch030Edge6) (rawGain branch030Edge6) :=
  ⟨branch030Edge6, rfl, rfl, rfl, rfl⟩

private theorem branch030Step7 :
    FullStep (fullSrc branch030Edge7) (edgeLabel branch030Edge7)
      (fullDst branch030Edge7) (rawGain branch030Edge7) :=
  ⟨branch030Edge7, rfl, rfl, rfl, rfl⟩

private theorem branch030Step8 :
    FullStep (fullSrc branch030Edge8) (edgeLabel branch030Edge8)
      (fullDst branch030Edge8) (rawGain branch030Edge8) :=
  ⟨branch030Edge8, rfl, rfl, rfl, rfl⟩

private theorem branch030Step9 :
    FullStep (fullSrc branch030Edge9) (edgeLabel branch030Edge9)
      (fullDst branch030Edge9) (rawGain branch030Edge9) :=
  ⟨branch030Edge9, rfl, rfl, rfl, rfl⟩

private theorem branch030Step10 :
    FullStep (fullSrc branch030Edge10) (edgeLabel branch030Edge10)
      (fullDst branch030Edge10) (rawGain branch030Edge10) :=
  ⟨branch030Edge10, rfl, rfl, rfl, rfl⟩

private theorem branch030Step11 :
    FullStep (fullSrc branch030Edge11) (edgeLabel branch030Edge11)
      (fullDst branch030Edge11) (rawGain branch030Edge11) :=
  ⟨branch030Edge11, rfl, rfl, rfl, rfl⟩

private theorem branch030Step12 :
    FullStep (fullSrc branch030Edge12) (edgeLabel branch030Edge12)
      (fullDst branch030Edge12) (rawGain branch030Edge12) :=
  ⟨branch030Edge12, rfl, rfl, rfl, rfl⟩

private theorem branch030Step13 :
    FullStep (fullSrc branch030Edge13) (edgeLabel branch030Edge13)
      (fullDst branch030Edge13) (rawGain branch030Edge13) :=
  ⟨branch030Edge13, rfl, rfl, rfl, rfl⟩

private theorem branch030FullRun :
    BellmanLabelStepRun FullStep
      (fullSrc branch030Edge0) (fullDst branch030Edge13)
      branch030Labels graph221Branch030RawGain := by
  unfold branch030Labels graph221Branch030RawGain
  exact BellmanLabelStepRun.cons branch030Step0 (BellmanLabelStepRun.cons branch030Step1 (BellmanLabelStepRun.cons branch030Step2 (BellmanLabelStepRun.cons branch030Step3 (BellmanLabelStepRun.cons branch030Step4 (BellmanLabelStepRun.cons branch030Step5 (BellmanLabelStepRun.cons branch030Step6 (BellmanLabelStepRun.cons branch030Step7 (BellmanLabelStepRun.cons branch030Step8 (BellmanLabelStepRun.cons branch030Step9 (BellmanLabelStepRun.cons branch030Step10 (BellmanLabelStepRun.cons branch030Step11 (BellmanLabelStepRun.cons branch030Step12 (BellmanLabelStepRun.cons branch030Step13 (BellmanLabelStepRun.nil (fullDst branch030Edge13)))))))))))))))

theorem graph221Branch030RawGain_contract :
    graph221Branch030RawGain = (-376 : Int) := by
  decide

theorem graph221Branch030MarginBound_contract :
    (176 : Int) + graph221Branch030RawGain = (-200 : Int) := by
  decide

theorem graph221QuotientBranch030Smoke :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
        (q (fullSrc branch030Edge0))
        (q (fullDst branch030Edge13))
        branch030Labels smallGainValue /\
      graph221Branch030RawGain =
        smallGainValue + gauge (fullDst branch030Edge13) -
          gauge (fullSrc branch030Edge0) :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph221QuotientStep branch030FullRun

private def branch031Edge0 : Fin edgeCount := ⟨0, by decide⟩
private def branch031Edge1 : Fin edgeCount := ⟨1, by decide⟩
private def branch031Edge2 : Fin edgeCount := ⟨2, by decide⟩
private def branch031Edge3 : Fin edgeCount := ⟨3, by decide⟩
private def branch031Edge4 : Fin edgeCount := ⟨4, by decide⟩
private def branch031Edge5 : Fin edgeCount := ⟨5, by decide⟩
private def branch031Edge6 : Fin edgeCount := ⟨6, by decide⟩
private def branch031Edge7 : Fin edgeCount := ⟨7, by decide⟩
private def branch031Edge8 : Fin edgeCount := ⟨8, by decide⟩
private def branch031Edge9 : Fin edgeCount := ⟨9, by decide⟩
private def branch031Edge10 : Fin edgeCount := ⟨10, by decide⟩
private def branch031Edge11 : Fin edgeCount := ⟨11, by decide⟩
private def branch031Edge12 : Fin edgeCount := ⟨12, by decide⟩
private def branch031Edge13 : Fin edgeCount := ⟨13, by decide⟩

private def branch031Labels : List Nat := [edgeLabel branch031Edge0, edgeLabel branch031Edge1, edgeLabel branch031Edge2, edgeLabel branch031Edge3, edgeLabel branch031Edge4, edgeLabel branch031Edge5, edgeLabel branch031Edge6, edgeLabel branch031Edge7, edgeLabel branch031Edge8, edgeLabel branch031Edge9, edgeLabel branch031Edge10, edgeLabel branch031Edge11, edgeLabel branch031Edge12, edgeLabel branch031Edge13]
def graph221Branch031RawGain : Int :=
  rawGain branch031Edge0 + (rawGain branch031Edge1 + (rawGain branch031Edge2 + (rawGain branch031Edge3 + (rawGain branch031Edge4 + (rawGain branch031Edge5 + (rawGain branch031Edge6 + (rawGain branch031Edge7 + (rawGain branch031Edge8 + (rawGain branch031Edge9 + (rawGain branch031Edge10 + (rawGain branch031Edge11 + (rawGain branch031Edge12 + (rawGain branch031Edge13 + ((0 : Int)))))))))))))))

private theorem branch031Step0 :
    FullStep (fullSrc branch031Edge0) (edgeLabel branch031Edge0)
      (fullDst branch031Edge0) (rawGain branch031Edge0) :=
  ⟨branch031Edge0, rfl, rfl, rfl, rfl⟩

private theorem branch031Step1 :
    FullStep (fullSrc branch031Edge1) (edgeLabel branch031Edge1)
      (fullDst branch031Edge1) (rawGain branch031Edge1) :=
  ⟨branch031Edge1, rfl, rfl, rfl, rfl⟩

private theorem branch031Step2 :
    FullStep (fullSrc branch031Edge2) (edgeLabel branch031Edge2)
      (fullDst branch031Edge2) (rawGain branch031Edge2) :=
  ⟨branch031Edge2, rfl, rfl, rfl, rfl⟩

private theorem branch031Step3 :
    FullStep (fullSrc branch031Edge3) (edgeLabel branch031Edge3)
      (fullDst branch031Edge3) (rawGain branch031Edge3) :=
  ⟨branch031Edge3, rfl, rfl, rfl, rfl⟩

private theorem branch031Step4 :
    FullStep (fullSrc branch031Edge4) (edgeLabel branch031Edge4)
      (fullDst branch031Edge4) (rawGain branch031Edge4) :=
  ⟨branch031Edge4, rfl, rfl, rfl, rfl⟩

private theorem branch031Step5 :
    FullStep (fullSrc branch031Edge5) (edgeLabel branch031Edge5)
      (fullDst branch031Edge5) (rawGain branch031Edge5) :=
  ⟨branch031Edge5, rfl, rfl, rfl, rfl⟩

private theorem branch031Step6 :
    FullStep (fullSrc branch031Edge6) (edgeLabel branch031Edge6)
      (fullDst branch031Edge6) (rawGain branch031Edge6) :=
  ⟨branch031Edge6, rfl, rfl, rfl, rfl⟩

private theorem branch031Step7 :
    FullStep (fullSrc branch031Edge7) (edgeLabel branch031Edge7)
      (fullDst branch031Edge7) (rawGain branch031Edge7) :=
  ⟨branch031Edge7, rfl, rfl, rfl, rfl⟩

private theorem branch031Step8 :
    FullStep (fullSrc branch031Edge8) (edgeLabel branch031Edge8)
      (fullDst branch031Edge8) (rawGain branch031Edge8) :=
  ⟨branch031Edge8, rfl, rfl, rfl, rfl⟩

private theorem branch031Step9 :
    FullStep (fullSrc branch031Edge9) (edgeLabel branch031Edge9)
      (fullDst branch031Edge9) (rawGain branch031Edge9) :=
  ⟨branch031Edge9, rfl, rfl, rfl, rfl⟩

private theorem branch031Step10 :
    FullStep (fullSrc branch031Edge10) (edgeLabel branch031Edge10)
      (fullDst branch031Edge10) (rawGain branch031Edge10) :=
  ⟨branch031Edge10, rfl, rfl, rfl, rfl⟩

private theorem branch031Step11 :
    FullStep (fullSrc branch031Edge11) (edgeLabel branch031Edge11)
      (fullDst branch031Edge11) (rawGain branch031Edge11) :=
  ⟨branch031Edge11, rfl, rfl, rfl, rfl⟩

private theorem branch031Step12 :
    FullStep (fullSrc branch031Edge12) (edgeLabel branch031Edge12)
      (fullDst branch031Edge12) (rawGain branch031Edge12) :=
  ⟨branch031Edge12, rfl, rfl, rfl, rfl⟩

private theorem branch031Step13 :
    FullStep (fullSrc branch031Edge13) (edgeLabel branch031Edge13)
      (fullDst branch031Edge13) (rawGain branch031Edge13) :=
  ⟨branch031Edge13, rfl, rfl, rfl, rfl⟩

private theorem branch031FullRun :
    BellmanLabelStepRun FullStep
      (fullSrc branch031Edge0) (fullDst branch031Edge13)
      branch031Labels graph221Branch031RawGain := by
  unfold branch031Labels graph221Branch031RawGain
  exact BellmanLabelStepRun.cons branch031Step0 (BellmanLabelStepRun.cons branch031Step1 (BellmanLabelStepRun.cons branch031Step2 (BellmanLabelStepRun.cons branch031Step3 (BellmanLabelStepRun.cons branch031Step4 (BellmanLabelStepRun.cons branch031Step5 (BellmanLabelStepRun.cons branch031Step6 (BellmanLabelStepRun.cons branch031Step7 (BellmanLabelStepRun.cons branch031Step8 (BellmanLabelStepRun.cons branch031Step9 (BellmanLabelStepRun.cons branch031Step10 (BellmanLabelStepRun.cons branch031Step11 (BellmanLabelStepRun.cons branch031Step12 (BellmanLabelStepRun.cons branch031Step13 (BellmanLabelStepRun.nil (fullDst branch031Edge13)))))))))))))))

theorem graph221Branch031RawGain_contract :
    graph221Branch031RawGain = (-596 : Int) := by
  decide

theorem graph221Branch031MarginBound_contract :
    (176 : Int) + graph221Branch031RawGain = (-420 : Int) := by
  decide

theorem graph221QuotientBranch031Smoke :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
        (q (fullSrc branch031Edge0))
        (q (fullDst branch031Edge13))
        branch031Labels smallGainValue /\
      graph221Branch031RawGain =
        smallGainValue + gauge (fullDst branch031Edge13) -
          gauge (fullSrc branch031Edge0) :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph221QuotientStep branch031FullRun

theorem graph221LocalEquationsChecked : True := by
  have h : rawGain ⟨0, by decide⟩ =
      smallGain ⟨0, by decide⟩ + gauge (fullDst ⟨0, by decide⟩) -
        gauge (fullSrc ⟨0, by decide⟩) := localEquation ⟨0, by decide⟩
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221ObjectCocycleQuotientSmoke
