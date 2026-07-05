import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 006 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 32

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (193 : Nat)
  | ⟨1, _⟩ => (194 : Nat)
  | ⟨2, _⟩ => (195 : Nat)
  | ⟨3, _⟩ => (195 : Nat)
  | ⟨4, _⟩ => (196 : Nat)
  | ⟨5, _⟩ => (197 : Nat)
  | ⟨6, _⟩ => (198 : Nat)
  | ⟨7, _⟩ => (199 : Nat)
  | ⟨8, _⟩ => (200 : Nat)
  | ⟨9, _⟩ => (201 : Nat)
  | ⟨10, _⟩ => (202 : Nat)
  | ⟨11, _⟩ => (203 : Nat)
  | ⟨12, _⟩ => (203 : Nat)
  | ⟨13, _⟩ => (203 : Nat)
  | ⟨14, _⟩ => (204 : Nat)
  | ⟨15, _⟩ => (205 : Nat)
  | ⟨16, _⟩ => (206 : Nat)
  | ⟨17, _⟩ => (207 : Nat)
  | ⟨18, _⟩ => (208 : Nat)
  | ⟨19, _⟩ => (209 : Nat)
  | ⟨20, _⟩ => (210 : Nat)
  | ⟨21, _⟩ => (211 : Nat)
  | ⟨22, _⟩ => (212 : Nat)
  | ⟨23, _⟩ => (212 : Nat)
  | ⟨24, _⟩ => (213 : Nat)
  | ⟨25, _⟩ => (213 : Nat)
  | ⟨26, _⟩ => (214 : Nat)
  | ⟨27, _⟩ => (215 : Nat)
  | ⟨28, _⟩ => (216 : Nat)
  | ⟨29, _⟩ => (217 : Nat)
  | ⟨30, _⟩ => (218 : Nat)
  | ⟨31, _⟩ => (219 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (204 : Nat)
  | ⟨1, _⟩ => (211 : Nat)
  | ⟨2, _⟩ => (210 : Nat)
  | ⟨3, _⟩ => (213 : Nat)
  | ⟨4, _⟩ => (215 : Nat)
  | ⟨5, _⟩ => (216 : Nat)
  | ⟨6, _⟩ => (217 : Nat)
  | ⟨7, _⟩ => (218 : Nat)
  | ⟨8, _⟩ => (219 : Nat)
  | ⟨9, _⟩ => (214 : Nat)
  | ⟨10, _⟩ => (221 : Nat)
  | ⟨11, _⟩ => (212 : Nat)
  | ⟨12, _⟩ => (220 : Nat)
  | ⟨13, _⟩ => (222 : Nat)
  | ⟨14, _⟩ => (2 : Nat)
  | ⟨15, _⟩ => (3 : Nat)
  | ⟨16, _⟩ => (4 : Nat)
  | ⟨17, _⟩ => (5 : Nat)
  | ⟨18, _⟩ => (6 : Nat)
  | ⟨19, _⟩ => (9 : Nat)
  | ⟨20, _⟩ => (1 : Nat)
  | ⟨21, _⟩ => (11 : Nat)
  | ⟨22, _⟩ => (7 : Nat)
  | ⟨23, _⟩ => (12 : Nat)
  | ⟨24, _⟩ => (8 : Nat)
  | ⟨25, _⟩ => (13 : Nat)
  | ⟨26, _⟩ => (15 : Nat)
  | ⟨27, _⟩ => (16 : Nat)
  | ⟨28, _⟩ => (17 : Nat)
  | ⟨29, _⟩ => (18 : Nat)
  | ⟨30, _⟩ => (19 : Nat)
  | ⟨31, _⟩ => (20 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (12 : Nat)
  | ⟨1, _⟩ => (3 : Nat)
  | ⟨2, _⟩ => (13 : Nat)
  | ⟨3, _⟩ => (7 : Nat)
  | ⟨4, _⟩ => (0 : Nat)
  | ⟨5, _⟩ => (0 : Nat)
  | ⟨6, _⟩ => (0 : Nat)
  | ⟨7, _⟩ => (0 : Nat)
  | ⟨8, _⟩ => (0 : Nat)
  | ⟨9, _⟩ => (12 : Nat)
  | ⟨10, _⟩ => (4 : Nat)
  | ⟨11, _⟩ => (11 : Nat)
  | ⟨12, _⟩ => (13 : Nat)
  | ⟨13, _⟩ => (1 : Nat)
  | ⟨14, _⟩ => (2 : Nat)
  | ⟨15, _⟩ => (2 : Nat)
  | ⟨16, _⟩ => (2 : Nat)
  | ⟨17, _⟩ => (2 : Nat)
  | ⟨18, _⟩ => (2 : Nat)
  | ⟨19, _⟩ => (6 : Nat)
  | ⟨20, _⟩ => (12 : Nat)
  | ⟨21, _⟩ => (6 : Nat)
  | ⟨22, _⟩ => (13 : Nat)
  | ⟨23, _⟩ => (3 : Nat)
  | ⟨24, _⟩ => (13 : Nat)
  | ⟨25, _⟩ => (3 : Nat)
  | ⟨26, _⟩ => (5 : Nat)
  | ⟨27, _⟩ => (5 : Nat)
  | ⟨28, _⟩ => (5 : Nat)
  | ⟨29, _⟩ => (5 : Nat)
  | ⟨30, _⟩ => (5 : Nat)
  | ⟨31, _⟩ => (5 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (90 : Int)
  | ⟨1, _⟩ => (-144 : Int)
  | ⟨2, _⟩ => (-54 : Int)
  | ⟨3, _⟩ => (-36 : Int)
  | ⟨4, _⟩ => (-144 : Int)
  | ⟨5, _⟩ => (-144 : Int)
  | ⟨6, _⟩ => (-144 : Int)
  | ⟨7, _⟩ => (-144 : Int)
  | ⟨8, _⟩ => (-144 : Int)
  | ⟨9, _⟩ => (-54 : Int)
  | ⟨10, _⟩ => (-36 : Int)
  | ⟨11, _⟩ => (-117 : Int)
  | ⟨12, _⟩ => (-18 : Int)
  | ⟨13, _⟩ => (96 : Int)
  | ⟨14, _⟩ => (-144 : Int)
  | ⟨15, _⟩ => (-144 : Int)
  | ⟨16, _⟩ => (-144 : Int)
  | ⟨17, _⟩ => (-144 : Int)
  | ⟨18, _⟩ => (-144 : Int)
  | ⟨19, _⟩ => (-36 : Int)
  | ⟨20, _⟩ => (-54 : Int)
  | ⟨21, _⟩ => (-36 : Int)
  | ⟨22, _⟩ => (-18 : Int)
  | ⟨23, _⟩ => (96 : Int)
  | ⟨24, _⟩ => (-18 : Int)
  | ⟨25, _⟩ => (96 : Int)
  | ⟨26, _⟩ => (-36 : Int)
  | ⟨27, _⟩ => (-36 : Int)
  | ⟨28, _⟩ => (-36 : Int)
  | ⟨29, _⟩ => (-36 : Int)
  | ⟨30, _⟩ => (-36 : Int)
  | ⟨31, _⟩ => (-36 : Int)
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
  | ⟨21, _⟩ => (0 : Int)
  | ⟨22, _⟩ => (0 : Int)
  | ⟨23, _⟩ => (0 : Int)
  | ⟨24, _⟩ => (0 : Int)
  | ⟨25, _⟩ => (0 : Int)
  | ⟨26, _⟩ => (0 : Int)
  | ⟨27, _⟩ => (0 : Int)
  | ⟨28, _⟩ => (0 : Int)
  | ⟨29, _⟩ => (0 : Int)
  | ⟨30, _⟩ => (0 : Int)
  | ⟨31, _⟩ => (0 : Int)
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

theorem graph183QuotientStepShard006
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

theorem graph183QuotientEdgeShard006_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard006
