import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 000 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 32

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (0 : Nat)
  | ⟨1, _⟩ => (1 : Nat)
  | ⟨2, _⟩ => (2 : Nat)
  | ⟨3, _⟩ => (3 : Nat)
  | ⟨4, _⟩ => (4 : Nat)
  | ⟨5, _⟩ => (5 : Nat)
  | ⟨6, _⟩ => (6 : Nat)
  | ⟨7, _⟩ => (7 : Nat)
  | ⟨8, _⟩ => (8 : Nat)
  | ⟨9, _⟩ => (9 : Nat)
  | ⟨10, _⟩ => (10 : Nat)
  | ⟨11, _⟩ => (11 : Nat)
  | ⟨12, _⟩ => (12 : Nat)
  | ⟨13, _⟩ => (12 : Nat)
  | ⟨14, _⟩ => (13 : Nat)
  | ⟨15, _⟩ => (13 : Nat)
  | ⟨16, _⟩ => (14 : Nat)
  | ⟨17, _⟩ => (14 : Nat)
  | ⟨18, _⟩ => (15 : Nat)
  | ⟨19, _⟩ => (15 : Nat)
  | ⟨20, _⟩ => (16 : Nat)
  | ⟨21, _⟩ => (16 : Nat)
  | ⟨22, _⟩ => (17 : Nat)
  | ⟨23, _⟩ => (17 : Nat)
  | ⟨24, _⟩ => (18 : Nat)
  | ⟨25, _⟩ => (18 : Nat)
  | ⟨26, _⟩ => (19 : Nat)
  | ⟨27, _⟩ => (20 : Nat)
  | ⟨28, _⟩ => (20 : Nat)
  | ⟨29, _⟩ => (21 : Nat)
  | ⟨30, _⟩ => (22 : Nat)
  | ⟨31, _⟩ => (22 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (142 : Nat)
  | ⟨1, _⟩ => (29 : Nat)
  | ⟨2, _⟩ => (31 : Nat)
  | ⟨3, _⟩ => (32 : Nat)
  | ⟨4, _⟩ => (33 : Nat)
  | ⟨5, _⟩ => (34 : Nat)
  | ⟨6, _⟩ => (36 : Nat)
  | ⟨7, _⟩ => (23 : Nat)
  | ⟨8, _⟩ => (30 : Nat)
  | ⟨9, _⟩ => (39 : Nat)
  | ⟨10, _⟩ => (40 : Nat)
  | ⟨11, _⟩ => (41 : Nat)
  | ⟨12, _⟩ => (37 : Nat)
  | ⟨13, _⟩ => (43 : Nat)
  | ⟨14, _⟩ => (38 : Nat)
  | ⟨15, _⟩ => (44 : Nat)
  | ⟨16, _⟩ => (23 : Nat)
  | ⟨17, _⟩ => (45 : Nat)
  | ⟨18, _⟩ => (24 : Nat)
  | ⟨19, _⟩ => (46 : Nat)
  | ⟨20, _⟩ => (25 : Nat)
  | ⟨21, _⟩ => (47 : Nat)
  | ⟨22, _⟩ => (26 : Nat)
  | ⟨23, _⟩ => (48 : Nat)
  | ⟨24, _⟩ => (27 : Nat)
  | ⟨25, _⟩ => (49 : Nat)
  | ⟨26, _⟩ => (28 : Nat)
  | ⟨27, _⟩ => (35 : Nat)
  | ⟨28, _⟩ => (50 : Nat)
  | ⟨29, _⟩ => (52 : Nat)
  | ⟨30, _⟩ => (42 : Nat)
  | ⟨31, _⟩ => (51 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (8 : Nat)
  | ⟨1, _⟩ => (7 : Nat)
  | ⟨2, _⟩ => (7 : Nat)
  | ⟨3, _⟩ => (7 : Nat)
  | ⟨4, _⟩ => (7 : Nat)
  | ⟨5, _⟩ => (7 : Nat)
  | ⟨6, _⟩ => (7 : Nat)
  | ⟨7, _⟩ => (12 : Nat)
  | ⟨8, _⟩ => (12 : Nat)
  | ⟨9, _⟩ => (2 : Nat)
  | ⟨10, _⟩ => (2 : Nat)
  | ⟨11, _⟩ => (2 : Nat)
  | ⟨12, _⟩ => (12 : Nat)
  | ⟨13, _⟩ => (1 : Nat)
  | ⟨14, _⟩ => (12 : Nat)
  | ⟨15, _⟩ => (1 : Nat)
  | ⟨16, _⟩ => (11 : Nat)
  | ⟨17, _⟩ => (1 : Nat)
  | ⟨18, _⟩ => (11 : Nat)
  | ⟨19, _⟩ => (1 : Nat)
  | ⟨20, _⟩ => (11 : Nat)
  | ⟨21, _⟩ => (1 : Nat)
  | ⟨22, _⟩ => (11 : Nat)
  | ⟨23, _⟩ => (1 : Nat)
  | ⟨24, _⟩ => (11 : Nat)
  | ⟨25, _⟩ => (1 : Nat)
  | ⟨26, _⟩ => (11 : Nat)
  | ⟨27, _⟩ => (11 : Nat)
  | ⟨28, _⟩ => (1 : Nat)
  | ⟨29, _⟩ => (2 : Nat)
  | ⟨30, _⟩ => (11 : Nat)
  | ⟨31, _⟩ => (12 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (103 : Int)
  | ⟨1, _⟩ => (-36 : Int)
  | ⟨2, _⟩ => (-36 : Int)
  | ⟨3, _⟩ => (-36 : Int)
  | ⟨4, _⟩ => (-36 : Int)
  | ⟨5, _⟩ => (-36 : Int)
  | ⟨6, _⟩ => (-36 : Int)
  | ⟨7, _⟩ => (-18 : Int)
  | ⟨8, _⟩ => (-18 : Int)
  | ⟨9, _⟩ => (96 : Int)
  | ⟨10, _⟩ => (96 : Int)
  | ⟨11, _⟩ => (96 : Int)
  | ⟨12, _⟩ => (114 : Int)
  | ⟨13, _⟩ => (-124 : Int)
  | ⟨14, _⟩ => (114 : Int)
  | ⟨15, _⟩ => (-124 : Int)
  | ⟨16, _⟩ => (-117 : Int)
  | ⟨17, _⟩ => (96 : Int)
  | ⟨18, _⟩ => (-117 : Int)
  | ⟨19, _⟩ => (96 : Int)
  | ⟨20, _⟩ => (-117 : Int)
  | ⟨21, _⟩ => (96 : Int)
  | ⟨22, _⟩ => (-117 : Int)
  | ⟨23, _⟩ => (96 : Int)
  | ⟨24, _⟩ => (-117 : Int)
  | ⟨25, _⟩ => (96 : Int)
  | ⟨26, _⟩ => (-117 : Int)
  | ⟨27, _⟩ => (-117 : Int)
  | ⟨28, _⟩ => (96 : Int)
  | ⟨29, _⟩ => (-124 : Int)
  | ⟨30, _⟩ => (103 : Int)
  | ⟨31, _⟩ => (-10 : Int)
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

theorem graph183QuotientStepShard000
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

theorem graph183SmallStepValidShard000
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + (86 : Int) <= (86 : Int) := by
  rcases hstep with ⟨i, _hs, _hlabel, _ht, hgain⟩
  subst gain
  fin_cases i <;> decide

theorem graph183QuotientEdgeShard000_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard000
