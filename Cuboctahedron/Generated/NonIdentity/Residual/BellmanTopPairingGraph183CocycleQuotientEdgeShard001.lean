import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 001 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 32

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (23 : Nat)
  | ⟨1, _⟩ => (24 : Nat)
  | ⟨2, _⟩ => (25 : Nat)
  | ⟨3, _⟩ => (26 : Nat)
  | ⟨4, _⟩ => (27 : Nat)
  | ⟨5, _⟩ => (28 : Nat)
  | ⟨6, _⟩ => (29 : Nat)
  | ⟨7, _⟩ => (30 : Nat)
  | ⟨8, _⟩ => (31 : Nat)
  | ⟨9, _⟩ => (32 : Nat)
  | ⟨10, _⟩ => (33 : Nat)
  | ⟨11, _⟩ => (34 : Nat)
  | ⟨12, _⟩ => (35 : Nat)
  | ⟨13, _⟩ => (36 : Nat)
  | ⟨14, _⟩ => (37 : Nat)
  | ⟨15, _⟩ => (38 : Nat)
  | ⟨16, _⟩ => (39 : Nat)
  | ⟨17, _⟩ => (40 : Nat)
  | ⟨18, _⟩ => (41 : Nat)
  | ⟨19, _⟩ => (42 : Nat)
  | ⟨20, _⟩ => (43 : Nat)
  | ⟨21, _⟩ => (44 : Nat)
  | ⟨22, _⟩ => (45 : Nat)
  | ⟨23, _⟩ => (46 : Nat)
  | ⟨24, _⟩ => (47 : Nat)
  | ⟨25, _⟩ => (48 : Nat)
  | ⟨26, _⟩ => (49 : Nat)
  | ⟨27, _⟩ => (50 : Nat)
  | ⟨28, _⟩ => (51 : Nat)
  | ⟨29, _⟩ => (51 : Nat)
  | ⟨30, _⟩ => (52 : Nat)
  | ⟨31, _⟩ => (52 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (53 : Nat)
  | ⟨1, _⟩ => (55 : Nat)
  | ⟨2, _⟩ => (56 : Nat)
  | ⟨3, _⟩ => (57 : Nat)
  | ⟨4, _⟩ => (58 : Nat)
  | ⟨5, _⟩ => (59 : Nat)
  | ⟨6, _⟩ => (60 : Nat)
  | ⟨7, _⟩ => (61 : Nat)
  | ⟨8, _⟩ => (63 : Nat)
  | ⟨9, _⟩ => (64 : Nat)
  | ⟨10, _⟩ => (65 : Nat)
  | ⟨11, _⟩ => (67 : Nat)
  | ⟨12, _⟩ => (68 : Nat)
  | ⟨13, _⟩ => (69 : Nat)
  | ⟨14, _⟩ => (54 : Nat)
  | ⟨15, _⟩ => (62 : Nat)
  | ⟨16, _⟩ => (66 : Nat)
  | ⟨17, _⟩ => (73 : Nat)
  | ⟨18, _⟩ => (75 : Nat)
  | ⟨19, _⟩ => (70 : Nat)
  | ⟨20, _⟩ => (71 : Nat)
  | ⟨21, _⟩ => (72 : Nat)
  | ⟨22, _⟩ => (76 : Nat)
  | ⟨23, _⟩ => (78 : Nat)
  | ⟨24, _⟩ => (79 : Nat)
  | ⟨25, _⟩ => (80 : Nat)
  | ⟨26, _⟩ => (81 : Nat)
  | ⟨27, _⟩ => (83 : Nat)
  | ⟨28, _⟩ => (70 : Nat)
  | ⟨29, _⟩ => (77 : Nat)
  | ⟨30, _⟩ => (74 : Nat)
  | ⟨31, _⟩ => (82 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (3 : Nat)
  | ⟨1, _⟩ => (3 : Nat)
  | ⟨2, _⟩ => (3 : Nat)
  | ⟨3, _⟩ => (3 : Nat)
  | ⟨4, _⟩ => (3 : Nat)
  | ⟨5, _⟩ => (3 : Nat)
  | ⟨6, _⟩ => (3 : Nat)
  | ⟨7, _⟩ => (3 : Nat)
  | ⟨8, _⟩ => (3 : Nat)
  | ⟨9, _⟩ => (3 : Nat)
  | ⟨10, _⟩ => (3 : Nat)
  | ⟨11, _⟩ => (3 : Nat)
  | ⟨12, _⟩ => (3 : Nat)
  | ⟨13, _⟩ => (3 : Nat)
  | ⟨14, _⟩ => (13 : Nat)
  | ⟨15, _⟩ => (13 : Nat)
  | ⟨16, _⟩ => (13 : Nat)
  | ⟨17, _⟩ => (0 : Nat)
  | ⟨18, _⟩ => (0 : Nat)
  | ⟨19, _⟩ => (12 : Nat)
  | ⟨20, _⟩ => (12 : Nat)
  | ⟨21, _⟩ => (12 : Nat)
  | ⟨22, _⟩ => (3 : Nat)
  | ⟨23, _⟩ => (3 : Nat)
  | ⟨24, _⟩ => (3 : Nat)
  | ⟨25, _⟩ => (3 : Nat)
  | ⟨26, _⟩ => (3 : Nat)
  | ⟨27, _⟩ => (3 : Nat)
  | ⟨28, _⟩ => (11 : Nat)
  | ⟨29, _⟩ => (13 : Nat)
  | ⟨30, _⟩ => (11 : Nat)
  | ⟨31, _⟩ => (13 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (96 : Int)
  | ⟨1, _⟩ => (96 : Int)
  | ⟨2, _⟩ => (96 : Int)
  | ⟨3, _⟩ => (96 : Int)
  | ⟨4, _⟩ => (96 : Int)
  | ⟨5, _⟩ => (96 : Int)
  | ⟨6, _⟩ => (96 : Int)
  | ⟨7, _⟩ => (96 : Int)
  | ⟨8, _⟩ => (96 : Int)
  | ⟨9, _⟩ => (96 : Int)
  | ⟨10, _⟩ => (96 : Int)
  | ⟨11, _⟩ => (96 : Int)
  | ⟨12, _⟩ => (96 : Int)
  | ⟨13, _⟩ => (96 : Int)
  | ⟨14, _⟩ => (114 : Int)
  | ⟨15, _⟩ => (114 : Int)
  | ⟨16, _⟩ => (114 : Int)
  | ⟨17, _⟩ => (-124 : Int)
  | ⟨18, _⟩ => (-124 : Int)
  | ⟨19, _⟩ => (-10 : Int)
  | ⟨20, _⟩ => (-10 : Int)
  | ⟨21, _⟩ => (-10 : Int)
  | ⟨22, _⟩ => (-124 : Int)
  | ⟨23, _⟩ => (-124 : Int)
  | ⟨24, _⟩ => (-124 : Int)
  | ⟨25, _⟩ => (-124 : Int)
  | ⟨26, _⟩ => (-124 : Int)
  | ⟨27, _⟩ => (-124 : Int)
  | ⟨28, _⟩ => (103 : Int)
  | ⟨29, _⟩ => (-10 : Int)
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

theorem graph183QuotientStepShard001
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

theorem graph183SmallStepValidShard001
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + (86 : Int) <= (86 : Int) := by
  rcases hstep with ⟨i, _hs, _hlabel, _ht, hgain⟩
  subst gain
  fin_cases i <;> decide

theorem graph183QuotientEdgeShard001_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard001
