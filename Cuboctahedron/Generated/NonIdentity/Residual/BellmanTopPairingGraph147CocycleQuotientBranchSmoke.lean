import Cuboctahedron.Search.BellmanPotential

/-!
Bounded Lean smoke for the graph147 cocycle quotient.

This file is diagnostic, not generated coverage.  It checks the
`step-stack` cocycle quotient on the two representative graph147
branches observed in the 10M top-pairing profile.  The production
proof still needs a semantic `StrengthenedGraph147RootMarginBundle`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147CocycleQuotientBranchSmoke

open Cuboctahedron

private def edgeCount : Nat := 28

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (0 : Nat)
  | ⟨1, _⟩ => (608 : Nat)
  | ⟨2, _⟩ => (610 : Nat)
  | ⟨3, _⟩ => (615 : Nat)
  | ⟨4, _⟩ => (625 : Nat)
  | ⟨5, _⟩ => (646 : Nat)
  | ⟨6, _⟩ => (683 : Nat)
  | ⟨7, _⟩ => (740 : Nat)
  | ⟨8, _⟩ => (814 : Nat)
  | ⟨9, _⟩ => (901 : Nat)
  | ⟨10, _⟩ => (34 : Nat)
  | ⟨11, _⟩ => (163 : Nat)
  | ⟨12, _⟩ => (311 : Nat)
  | ⟨13, _⟩ => (491 : Nat)
  | ⟨14, _⟩ => (0 : Nat)
  | ⟨15, _⟩ => (608 : Nat)
  | ⟨16, _⟩ => (610 : Nat)
  | ⟨17, _⟩ => (616 : Nat)
  | ⟨18, _⟩ => (625 : Nat)
  | ⟨19, _⟩ => (646 : Nat)
  | ⟨20, _⟩ => (683 : Nat)
  | ⟨21, _⟩ => (740 : Nat)
  | ⟨22, _⟩ => (814 : Nat)
  | ⟨23, _⟩ => (901 : Nat)
  | ⟨24, _⟩ => (34 : Nat)
  | ⟨25, _⟩ => (163 : Nat)
  | ⟨26, _⟩ => (311 : Nat)
  | ⟨27, _⟩ => (491 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (608 : Nat)
  | ⟨1, _⟩ => (610 : Nat)
  | ⟨2, _⟩ => (615 : Nat)
  | ⟨3, _⟩ => (625 : Nat)
  | ⟨4, _⟩ => (646 : Nat)
  | ⟨5, _⟩ => (683 : Nat)
  | ⟨6, _⟩ => (740 : Nat)
  | ⟨7, _⟩ => (814 : Nat)
  | ⟨8, _⟩ => (901 : Nat)
  | ⟨9, _⟩ => (34 : Nat)
  | ⟨10, _⟩ => (163 : Nat)
  | ⟨11, _⟩ => (311 : Nat)
  | ⟨12, _⟩ => (491 : Nat)
  | ⟨13, _⟩ => (607 : Nat)
  | ⟨14, _⟩ => (608 : Nat)
  | ⟨15, _⟩ => (610 : Nat)
  | ⟨16, _⟩ => (616 : Nat)
  | ⟨17, _⟩ => (625 : Nat)
  | ⟨18, _⟩ => (646 : Nat)
  | ⟨19, _⟩ => (683 : Nat)
  | ⟨20, _⟩ => (740 : Nat)
  | ⟨21, _⟩ => (814 : Nat)
  | ⟨22, _⟩ => (901 : Nat)
  | ⟨23, _⟩ => (34 : Nat)
  | ⟨24, _⟩ => (163 : Nat)
  | ⟨25, _⟩ => (311 : Nat)
  | ⟨26, _⟩ => (491 : Nat)
  | ⟨27, _⟩ => (607 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (8 : Nat)
  | ⟨1, _⟩ => (10 : Nat)
  | ⟨2, _⟩ => (11 : Nat)
  | ⟨3, _⟩ => (12 : Nat)
  | ⟨4, _⟩ => (13 : Nat)
  | ⟨5, _⟩ => (0 : Nat)
  | ⟨6, _⟩ => (4 : Nat)
  | ⟨7, _⟩ => (6 : Nat)
  | ⟨8, _⟩ => (5 : Nat)
  | ⟨9, _⟩ => (2 : Nat)
  | ⟨10, _⟩ => (7 : Nat)
  | ⟨11, _⟩ => (3 : Nat)
  | ⟨12, _⟩ => (1 : Nat)
  | ⟨13, _⟩ => (9 : Nat)
  | ⟨14, _⟩ => (8 : Nat)
  | ⟨15, _⟩ => (10 : Nat)
  | ⟨16, _⟩ => (12 : Nat)
  | ⟨17, _⟩ => (11 : Nat)
  | ⟨18, _⟩ => (13 : Nat)
  | ⟨19, _⟩ => (0 : Nat)
  | ⟨20, _⟩ => (4 : Nat)
  | ⟨21, _⟩ => (6 : Nat)
  | ⟨22, _⟩ => (5 : Nat)
  | ⟨23, _⟩ => (2 : Nat)
  | ⟨24, _⟩ => (7 : Nat)
  | ⟨25, _⟩ => (3 : Nat)
  | ⟨26, _⟩ => (1 : Nat)
  | ⟨27, _⟩ => (9 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (103 : Int)
  | ⟨1, _⟩ => (-73 : Int)
  | ⟨2, _⟩ => (-73 : Int)
  | ⟨3, _⟩ => (-10 : Int)
  | ⟨4, _⟩ => (-10 : Int)
  | ⟨5, _⟩ => (-124 : Int)
  | ⟨6, _⟩ => (96 : Int)
  | ⟨7, _⟩ => (-36 : Int)
  | ⟨8, _⟩ => (-144 : Int)
  | ⟨9, _⟩ => (-144 : Int)
  | ⟨10, _⟩ => (-36 : Int)
  | ⟨11, _⟩ => (96 : Int)
  | ⟨12, _⟩ => (-124 : Int)
  | ⟨13, _⟩ => (-73 : Int)
  | ⟨14, _⟩ => (103 : Int)
  | ⟨15, _⟩ => (-73 : Int)
  | ⟨16, _⟩ => (-10 : Int)
  | ⟨17, _⟩ => (-73 : Int)
  | ⟨18, _⟩ => (-10 : Int)
  | ⟨19, _⟩ => (-124 : Int)
  | ⟨20, _⟩ => (96 : Int)
  | ⟨21, _⟩ => (-36 : Int)
  | ⟨22, _⟩ => (-144 : Int)
  | ⟨23, _⟩ => (-144 : Int)
  | ⟨24, _⟩ => (-36 : Int)
  | ⟨25, _⟩ => (96 : Int)
  | ⟨26, _⟩ => (-124 : Int)
  | ⟨27, _⟩ => (-73 : Int)
  | _ => (0 : Int)

private def smallGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (0 : Int)
  | ⟨1, _⟩ => (0 : Int)
  | ⟨2, _⟩ => (0 : Int)
  | ⟨3, _⟩ => (-144 : Int)
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
  | ⟨16, _⟩ => (-144 : Int)
  | ⟨17, _⟩ => (0 : Int)
  | ⟨18, _⟩ => (0 : Int)
  | ⟨19, _⟩ => (0 : Int)
  | ⟨20, _⟩ => (0 : Int)
  | ⟨21, _⟩ => (0 : Int)
  | ⟨22, _⟩ => (0 : Int)
  | ⟨23, _⟩ => (0 : Int)
  | ⟨24, _⟩ => (0 : Int)
  | ⟨25, _⟩ => (0 : Int)
  | ⟨26, _⟩ => (0 : Int)
  | ⟨27, _⟩ => (0 : Int)
  | _ => (0 : Int)

private def q : Nat -> Nat
  | 0 => (0 : Nat)
  | 34 => (1 : Nat)
  | 163 => (5 : Nat)
  | 311 => (8 : Nat)
  | 491 => (10 : Nat)
  | 607 => (11 : Nat)
  | 608 => (12 : Nat)
  | 610 => (13 : Nat)
  | 615 => (15 : Nat)
  | 616 => (15 : Nat)
  | 625 => (18 : Nat)
  | 646 => (22 : Nat)
  | 683 => (27 : Nat)
  | 740 => (31 : Nat)
  | 814 => (35 : Nat)
  | 901 => (40 : Nat)
  | _ => (0 : Nat)

private def gauge : Nat -> Int
  | 0 => (438 : Int)
  | 34 => (167 : Int)
  | 163 => (131 : Int)
  | 311 => (227 : Int)
  | 491 => (103 : Int)
  | 607 => (30 : Int)
  | 608 => (541 : Int)
  | 610 => (468 : Int)
  | 615 => (395 : Int)
  | 616 => (602 : Int)
  | 625 => (529 : Int)
  | 646 => (519 : Int)
  | 683 => (395 : Int)
  | 740 => (491 : Int)
  | 814 => (455 : Int)
  | 901 => (311 : Int)
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

theorem graph147QuotientStep
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

private def YpZmEdge0 : Fin edgeCount := ⟨0, by decide⟩
private def YpZmEdge1 : Fin edgeCount := ⟨1, by decide⟩
private def YpZmEdge2 : Fin edgeCount := ⟨2, by decide⟩
private def YpZmEdge3 : Fin edgeCount := ⟨3, by decide⟩
private def YpZmEdge4 : Fin edgeCount := ⟨4, by decide⟩
private def YpZmEdge5 : Fin edgeCount := ⟨5, by decide⟩
private def YpZmEdge6 : Fin edgeCount := ⟨6, by decide⟩
private def YpZmEdge7 : Fin edgeCount := ⟨7, by decide⟩
private def YpZmEdge8 : Fin edgeCount := ⟨8, by decide⟩
private def YpZmEdge9 : Fin edgeCount := ⟨9, by decide⟩
private def YpZmEdge10 : Fin edgeCount := ⟨10, by decide⟩
private def YpZmEdge11 : Fin edgeCount := ⟨11, by decide⟩
private def YpZmEdge12 : Fin edgeCount := ⟨12, by decide⟩
private def YpZmEdge13 : Fin edgeCount := ⟨13, by decide⟩

private def YpZmBranchLabels : List Nat := [edgeLabel YpZmEdge0, edgeLabel YpZmEdge1, edgeLabel YpZmEdge2, edgeLabel YpZmEdge3, edgeLabel YpZmEdge4, edgeLabel YpZmEdge5, edgeLabel YpZmEdge6, edgeLabel YpZmEdge7, edgeLabel YpZmEdge8, edgeLabel YpZmEdge9, edgeLabel YpZmEdge10, edgeLabel YpZmEdge11, edgeLabel YpZmEdge12, edgeLabel YpZmEdge13]
def graph147YpZmBranchRawGain : Int :=
  rawGain YpZmEdge0 + (rawGain YpZmEdge1 + (rawGain YpZmEdge2 + (rawGain YpZmEdge3 + (rawGain YpZmEdge4 + (rawGain YpZmEdge5 + (rawGain YpZmEdge6 + (rawGain YpZmEdge7 + (rawGain YpZmEdge8 + (rawGain YpZmEdge9 + (rawGain YpZmEdge10 + (rawGain YpZmEdge11 + (rawGain YpZmEdge12 + (rawGain YpZmEdge13 + ((0 : Int)))))))))))))))

private theorem YpZmStep0 :
    FullStep (fullSrc YpZmEdge0) (edgeLabel YpZmEdge0)
      (fullDst YpZmEdge0) (rawGain YpZmEdge0) :=
  ⟨YpZmEdge0, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep1 :
    FullStep (fullSrc YpZmEdge1) (edgeLabel YpZmEdge1)
      (fullDst YpZmEdge1) (rawGain YpZmEdge1) :=
  ⟨YpZmEdge1, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep2 :
    FullStep (fullSrc YpZmEdge2) (edgeLabel YpZmEdge2)
      (fullDst YpZmEdge2) (rawGain YpZmEdge2) :=
  ⟨YpZmEdge2, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep3 :
    FullStep (fullSrc YpZmEdge3) (edgeLabel YpZmEdge3)
      (fullDst YpZmEdge3) (rawGain YpZmEdge3) :=
  ⟨YpZmEdge3, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep4 :
    FullStep (fullSrc YpZmEdge4) (edgeLabel YpZmEdge4)
      (fullDst YpZmEdge4) (rawGain YpZmEdge4) :=
  ⟨YpZmEdge4, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep5 :
    FullStep (fullSrc YpZmEdge5) (edgeLabel YpZmEdge5)
      (fullDst YpZmEdge5) (rawGain YpZmEdge5) :=
  ⟨YpZmEdge5, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep6 :
    FullStep (fullSrc YpZmEdge6) (edgeLabel YpZmEdge6)
      (fullDst YpZmEdge6) (rawGain YpZmEdge6) :=
  ⟨YpZmEdge6, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep7 :
    FullStep (fullSrc YpZmEdge7) (edgeLabel YpZmEdge7)
      (fullDst YpZmEdge7) (rawGain YpZmEdge7) :=
  ⟨YpZmEdge7, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep8 :
    FullStep (fullSrc YpZmEdge8) (edgeLabel YpZmEdge8)
      (fullDst YpZmEdge8) (rawGain YpZmEdge8) :=
  ⟨YpZmEdge8, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep9 :
    FullStep (fullSrc YpZmEdge9) (edgeLabel YpZmEdge9)
      (fullDst YpZmEdge9) (rawGain YpZmEdge9) :=
  ⟨YpZmEdge9, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep10 :
    FullStep (fullSrc YpZmEdge10) (edgeLabel YpZmEdge10)
      (fullDst YpZmEdge10) (rawGain YpZmEdge10) :=
  ⟨YpZmEdge10, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep11 :
    FullStep (fullSrc YpZmEdge11) (edgeLabel YpZmEdge11)
      (fullDst YpZmEdge11) (rawGain YpZmEdge11) :=
  ⟨YpZmEdge11, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep12 :
    FullStep (fullSrc YpZmEdge12) (edgeLabel YpZmEdge12)
      (fullDst YpZmEdge12) (rawGain YpZmEdge12) :=
  ⟨YpZmEdge12, rfl, rfl, rfl, rfl⟩

private theorem YpZmStep13 :
    FullStep (fullSrc YpZmEdge13) (edgeLabel YpZmEdge13)
      (fullDst YpZmEdge13) (rawGain YpZmEdge13) :=
  ⟨YpZmEdge13, rfl, rfl, rfl, rfl⟩

private theorem YpZmBranchFullRun :
    BellmanLabelStepRun FullStep
      (fullSrc YpZmEdge0) (fullDst YpZmEdge13)
      YpZmBranchLabels graph147YpZmBranchRawGain := by
  unfold YpZmBranchLabels graph147YpZmBranchRawGain
  exact BellmanLabelStepRun.cons YpZmStep0 (BellmanLabelStepRun.cons YpZmStep1 (BellmanLabelStepRun.cons YpZmStep2 (BellmanLabelStepRun.cons YpZmStep3 (BellmanLabelStepRun.cons YpZmStep4 (BellmanLabelStepRun.cons YpZmStep5 (BellmanLabelStepRun.cons YpZmStep6 (BellmanLabelStepRun.cons YpZmStep7 (BellmanLabelStepRun.cons YpZmStep8 (BellmanLabelStepRun.cons YpZmStep9 (BellmanLabelStepRun.cons YpZmStep10 (BellmanLabelStepRun.cons YpZmStep11 (BellmanLabelStepRun.cons YpZmStep12 (BellmanLabelStepRun.cons YpZmStep13 (BellmanLabelStepRun.nil (fullDst YpZmEdge13)))))))))))))))

theorem graph147YpZmBranchRawGain_contract :
    graph147YpZmBranchRawGain = (-552 : Int) := by
  decide

theorem graph147YpZmBranchMargin_contract :
    (176 : Int) + graph147YpZmBranchRawGain =
      (-376 : Int) := by
  decide

theorem graph147YpZmQuotientBranchSmoke :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
        (q (fullSrc YpZmEdge0))
        (q (fullDst YpZmEdge13))
        YpZmBranchLabels smallGainValue /\
      graph147YpZmBranchRawGain =
        smallGainValue + gauge (fullDst YpZmEdge13) -
          gauge (fullSrc YpZmEdge0) :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph147QuotientStep YpZmBranchFullRun

private def ZmYpEdge0 : Fin edgeCount := ⟨14, by decide⟩
private def ZmYpEdge1 : Fin edgeCount := ⟨15, by decide⟩
private def ZmYpEdge2 : Fin edgeCount := ⟨16, by decide⟩
private def ZmYpEdge3 : Fin edgeCount := ⟨17, by decide⟩
private def ZmYpEdge4 : Fin edgeCount := ⟨18, by decide⟩
private def ZmYpEdge5 : Fin edgeCount := ⟨19, by decide⟩
private def ZmYpEdge6 : Fin edgeCount := ⟨20, by decide⟩
private def ZmYpEdge7 : Fin edgeCount := ⟨21, by decide⟩
private def ZmYpEdge8 : Fin edgeCount := ⟨22, by decide⟩
private def ZmYpEdge9 : Fin edgeCount := ⟨23, by decide⟩
private def ZmYpEdge10 : Fin edgeCount := ⟨24, by decide⟩
private def ZmYpEdge11 : Fin edgeCount := ⟨25, by decide⟩
private def ZmYpEdge12 : Fin edgeCount := ⟨26, by decide⟩
private def ZmYpEdge13 : Fin edgeCount := ⟨27, by decide⟩

private def ZmYpBranchLabels : List Nat := [edgeLabel ZmYpEdge0, edgeLabel ZmYpEdge1, edgeLabel ZmYpEdge2, edgeLabel ZmYpEdge3, edgeLabel ZmYpEdge4, edgeLabel ZmYpEdge5, edgeLabel ZmYpEdge6, edgeLabel ZmYpEdge7, edgeLabel ZmYpEdge8, edgeLabel ZmYpEdge9, edgeLabel ZmYpEdge10, edgeLabel ZmYpEdge11, edgeLabel ZmYpEdge12, edgeLabel ZmYpEdge13]
def graph147ZmYpBranchRawGain : Int :=
  rawGain ZmYpEdge0 + (rawGain ZmYpEdge1 + (rawGain ZmYpEdge2 + (rawGain ZmYpEdge3 + (rawGain ZmYpEdge4 + (rawGain ZmYpEdge5 + (rawGain ZmYpEdge6 + (rawGain ZmYpEdge7 + (rawGain ZmYpEdge8 + (rawGain ZmYpEdge9 + (rawGain ZmYpEdge10 + (rawGain ZmYpEdge11 + (rawGain ZmYpEdge12 + (rawGain ZmYpEdge13 + ((0 : Int)))))))))))))))

private theorem ZmYpStep0 :
    FullStep (fullSrc ZmYpEdge0) (edgeLabel ZmYpEdge0)
      (fullDst ZmYpEdge0) (rawGain ZmYpEdge0) :=
  ⟨ZmYpEdge0, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep1 :
    FullStep (fullSrc ZmYpEdge1) (edgeLabel ZmYpEdge1)
      (fullDst ZmYpEdge1) (rawGain ZmYpEdge1) :=
  ⟨ZmYpEdge1, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep2 :
    FullStep (fullSrc ZmYpEdge2) (edgeLabel ZmYpEdge2)
      (fullDst ZmYpEdge2) (rawGain ZmYpEdge2) :=
  ⟨ZmYpEdge2, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep3 :
    FullStep (fullSrc ZmYpEdge3) (edgeLabel ZmYpEdge3)
      (fullDst ZmYpEdge3) (rawGain ZmYpEdge3) :=
  ⟨ZmYpEdge3, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep4 :
    FullStep (fullSrc ZmYpEdge4) (edgeLabel ZmYpEdge4)
      (fullDst ZmYpEdge4) (rawGain ZmYpEdge4) :=
  ⟨ZmYpEdge4, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep5 :
    FullStep (fullSrc ZmYpEdge5) (edgeLabel ZmYpEdge5)
      (fullDst ZmYpEdge5) (rawGain ZmYpEdge5) :=
  ⟨ZmYpEdge5, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep6 :
    FullStep (fullSrc ZmYpEdge6) (edgeLabel ZmYpEdge6)
      (fullDst ZmYpEdge6) (rawGain ZmYpEdge6) :=
  ⟨ZmYpEdge6, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep7 :
    FullStep (fullSrc ZmYpEdge7) (edgeLabel ZmYpEdge7)
      (fullDst ZmYpEdge7) (rawGain ZmYpEdge7) :=
  ⟨ZmYpEdge7, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep8 :
    FullStep (fullSrc ZmYpEdge8) (edgeLabel ZmYpEdge8)
      (fullDst ZmYpEdge8) (rawGain ZmYpEdge8) :=
  ⟨ZmYpEdge8, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep9 :
    FullStep (fullSrc ZmYpEdge9) (edgeLabel ZmYpEdge9)
      (fullDst ZmYpEdge9) (rawGain ZmYpEdge9) :=
  ⟨ZmYpEdge9, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep10 :
    FullStep (fullSrc ZmYpEdge10) (edgeLabel ZmYpEdge10)
      (fullDst ZmYpEdge10) (rawGain ZmYpEdge10) :=
  ⟨ZmYpEdge10, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep11 :
    FullStep (fullSrc ZmYpEdge11) (edgeLabel ZmYpEdge11)
      (fullDst ZmYpEdge11) (rawGain ZmYpEdge11) :=
  ⟨ZmYpEdge11, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep12 :
    FullStep (fullSrc ZmYpEdge12) (edgeLabel ZmYpEdge12)
      (fullDst ZmYpEdge12) (rawGain ZmYpEdge12) :=
  ⟨ZmYpEdge12, rfl, rfl, rfl, rfl⟩

private theorem ZmYpStep13 :
    FullStep (fullSrc ZmYpEdge13) (edgeLabel ZmYpEdge13)
      (fullDst ZmYpEdge13) (rawGain ZmYpEdge13) :=
  ⟨ZmYpEdge13, rfl, rfl, rfl, rfl⟩

private theorem ZmYpBranchFullRun :
    BellmanLabelStepRun FullStep
      (fullSrc ZmYpEdge0) (fullDst ZmYpEdge13)
      ZmYpBranchLabels graph147ZmYpBranchRawGain := by
  unfold ZmYpBranchLabels graph147ZmYpBranchRawGain
  exact BellmanLabelStepRun.cons ZmYpStep0 (BellmanLabelStepRun.cons ZmYpStep1 (BellmanLabelStepRun.cons ZmYpStep2 (BellmanLabelStepRun.cons ZmYpStep3 (BellmanLabelStepRun.cons ZmYpStep4 (BellmanLabelStepRun.cons ZmYpStep5 (BellmanLabelStepRun.cons ZmYpStep6 (BellmanLabelStepRun.cons ZmYpStep7 (BellmanLabelStepRun.cons ZmYpStep8 (BellmanLabelStepRun.cons ZmYpStep9 (BellmanLabelStepRun.cons ZmYpStep10 (BellmanLabelStepRun.cons ZmYpStep11 (BellmanLabelStepRun.cons ZmYpStep12 (BellmanLabelStepRun.cons ZmYpStep13 (BellmanLabelStepRun.nil (fullDst ZmYpEdge13)))))))))))))))

theorem graph147ZmYpBranchRawGain_contract :
    graph147ZmYpBranchRawGain = (-552 : Int) := by
  decide

theorem graph147ZmYpBranchMargin_contract :
    (176 : Int) + graph147ZmYpBranchRawGain =
      (-376 : Int) := by
  decide

theorem graph147ZmYpQuotientBranchSmoke :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
        (q (fullSrc ZmYpEdge0))
        (q (fullDst ZmYpEdge13))
        ZmYpBranchLabels smallGainValue /\
      graph147ZmYpBranchRawGain =
        smallGainValue + gauge (fullDst ZmYpEdge13) -
          gauge (fullSrc ZmYpEdge0) :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph147QuotientStep ZmYpBranchFullRun

theorem graph147CocycleQuotientBranchSmoke_builds : True := by
  have h0 := graph147YpZmBranchMargin_contract
  have h1 := graph147ZmYpBranchMargin_contract
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147CocycleQuotientBranchSmoke
