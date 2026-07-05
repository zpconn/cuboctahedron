import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 007 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 5

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (220 : Nat)
  | ⟨1, _⟩ => (220 : Nat)
  | ⟨2, _⟩ => (221 : Nat)
  | ⟨3, _⟩ => (221 : Nat)
  | ⟨4, _⟩ => (222 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (7 : Nat)
  | ⟨1, _⟩ => (14 : Nat)
  | ⟨2, _⟩ => (10 : Nat)
  | ⟨3, _⟩ => (21 : Nat)
  | ⟨4, _⟩ => (22 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (11 : Nat)
  | ⟨1, _⟩ => (12 : Nat)
  | ⟨2, _⟩ => (11 : Nat)
  | ⟨3, _⟩ => (0 : Nat)
  | ⟨4, _⟩ => (3 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (-117 : Int)
  | ⟨1, _⟩ => (-18 : Int)
  | ⟨2, _⟩ => (-117 : Int)
  | ⟨3, _⟩ => (96 : Int)
  | ⟨4, _⟩ => (-124 : Int)
  | _ => (0 : Int)

private def smallGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (0 : Int)
  | ⟨1, _⟩ => (0 : Int)
  | ⟨2, _⟩ => (0 : Int)
  | ⟨3, _⟩ => (0 : Int)
  | ⟨4, _⟩ => (0 : Int)
  | _ => (0 : Int)

def FullStep (s label t : Nat) (gain : Int) : Prop :=
  exists i : Fin edgeCount,
    fullSrc i = s /\ edgeLabel i = label /\
      fullDst i = t /\ rawGain i = gain

def SmallStep (s label t : Nat) (gain : Int) : Prop :=
  exists i : Fin edgeCount,
    graph183QuotientQ (fullSrc i) = s /\ edgeLabel i = label /\
      graph183QuotientQ (fullDst i) = t /\ smallGain i = gain

private theorem localEquation (i : Fin edgeCount) :
    rawGain i = smallGain i + graph183QuotientGauge (fullDst i) -
      graph183QuotientGauge (fullSrc i) := by
  fin_cases i <;> decide

theorem graph183QuotientStepShard007
    {s label t : Nat} {gain : Int}
    (hstep : FullStep s label t gain) :
    exists smallGainValue,
      SmallStep (graph183QuotientQ s) label (graph183QuotientQ t)
          smallGainValue /\
        gain = smallGainValue + graph183QuotientGauge t -
          graph183QuotientGauge s := by
  rcases hstep with ⟨i, hs, hlabel, ht, hgain⟩
  subst s
  subst label
  subst t
  subst gain
  refine ⟨smallGain i, ?_, ?_⟩
  · exact ⟨i, rfl, rfl, rfl, rfl⟩
  · exact localEquation i

theorem graph183QuotientEdgeShard007_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007
