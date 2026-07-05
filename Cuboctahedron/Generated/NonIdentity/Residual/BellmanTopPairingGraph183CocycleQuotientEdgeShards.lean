import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007

/-!
Aggregate import for the graph183 cocycle quotient edge-equation
smoke shards.  This is diagnostic/proof-shape evidence, not
production coverage.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

def FullStep (s label t : Nat) (gain : Int) : Prop :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006.FullStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007.FullStep s label t gain)))))))

def SmallStep (s label t : Nat) (gain : Int) : Prop :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006.SmallStep s label t gain \/ (Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007.SmallStep s label t gain)))))))

theorem graph183QuotientStep
    {s label t : Nat} {gain : Int}
    (hstep : FullStep s label t gain) :
    exists smallGainValue,
      SmallStep (graph183QuotientQ s) label (graph183QuotientQ t)
          smallGainValue /\
        gain = smallGainValue + graph183QuotientGauge t -
          graph183QuotientGauge s := by
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000.graph183QuotientStepShard000 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inl hsmall
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001.graph183QuotientStepShard001 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inl hsmall)
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002.graph183QuotientStepShard002 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inr (Or.inl hsmall))
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003.graph183QuotientStepShard003 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inr (Or.inr (Or.inl hsmall)))
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004.graph183QuotientStepShard004 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hsmall))))
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005.graph183QuotientStepShard005 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hsmall)))))
  rcases hstep with hstep | hstep
  · rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006.graph183QuotientStepShard006 hstep with ⟨smallGainValue, hsmall, heq⟩
    refine ⟨smallGainValue, ?_, heq⟩
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hsmall))))))
  rcases Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007.graph183QuotientStepShard007 hstep with ⟨smallGainValue, hsmall, heq⟩
  refine ⟨smallGainValue, ?_, heq⟩
  exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (hsmall)))))))

theorem graph183QuotientRun
    {s t : Nat} {labels : List Nat} {rawGain : Int}
    (hrun : BellmanLabelStepRun FullStep s t labels rawGain) :
    exists smallGainValue,
      BellmanLabelStepRun SmallStep
          (graph183QuotientQ s) (graph183QuotientQ t)
          labels smallGainValue /\
        rawGain = smallGainValue + graph183QuotientGauge t -
          graph183QuotientGauge s :=
  BellmanLabelStepRun.quotient_of_step_gain_eq
    graph183QuotientStep hrun

theorem graph183SmallStep_valid
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + (86 : Int) <= (86 : Int) := by
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000.graph183SmallStepValidShard000 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001.graph183SmallStepValidShard001 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002.graph183SmallStepValidShard002 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003.graph183SmallStepValidShard003 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004.graph183SmallStepValidShard004 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005.graph183SmallStepValidShard005 hstep
  rcases hstep with hstep | hstep
  · exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006.graph183SmallStepValidShard006 hstep
  exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007.graph183SmallStepValidShard007 hstep

theorem graph183QuotientEdgeShards_checked : True := by
  have h000 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000.graph183QuotientEdgeShard000_checked
  have h001 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001.graph183QuotientEdgeShard001_checked
  have h002 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard002.graph183QuotientEdgeShard002_checked
  have h003 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard003.graph183QuotientEdgeShard003_checked
  have h004 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004.graph183QuotientEdgeShard004_checked
  have h005 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005.graph183QuotientEdgeShard005_checked
  have h006 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006.graph183QuotientEdgeShard006_checked
  have h007 := Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007.graph183QuotientEdgeShard007_checked
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards
