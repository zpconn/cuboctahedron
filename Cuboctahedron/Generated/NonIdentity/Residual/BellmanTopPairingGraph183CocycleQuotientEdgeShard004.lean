import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 004 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 32

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (144 : Nat)
  | ⟨1, _⟩ => (144 : Nat)
  | ⟨2, _⟩ => (145 : Nat)
  | ⟨3, _⟩ => (145 : Nat)
  | ⟨4, _⟩ => (145 : Nat)
  | ⟨5, _⟩ => (146 : Nat)
  | ⟨6, _⟩ => (146 : Nat)
  | ⟨7, _⟩ => (147 : Nat)
  | ⟨8, _⟩ => (147 : Nat)
  | ⟨9, _⟩ => (148 : Nat)
  | ⟨10, _⟩ => (148 : Nat)
  | ⟨11, _⟩ => (149 : Nat)
  | ⟨12, _⟩ => (149 : Nat)
  | ⟨13, _⟩ => (150 : Nat)
  | ⟨14, _⟩ => (151 : Nat)
  | ⟨15, _⟩ => (152 : Nat)
  | ⟨16, _⟩ => (152 : Nat)
  | ⟨17, _⟩ => (153 : Nat)
  | ⟨18, _⟩ => (154 : Nat)
  | ⟨19, _⟩ => (154 : Nat)
  | ⟨20, _⟩ => (155 : Nat)
  | ⟨21, _⟩ => (156 : Nat)
  | ⟨22, _⟩ => (156 : Nat)
  | ⟨23, _⟩ => (157 : Nat)
  | ⟨24, _⟩ => (158 : Nat)
  | ⟨25, _⟩ => (159 : Nat)
  | ⟨26, _⟩ => (160 : Nat)
  | ⟨27, _⟩ => (161 : Nat)
  | ⟨28, _⟩ => (161 : Nat)
  | ⟨29, _⟩ => (162 : Nat)
  | ⟨30, _⟩ => (163 : Nat)
  | ⟨31, _⟩ => (164 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (147 : Nat)
  | ⟨1, _⟩ => (148 : Nat)
  | ⟨2, _⟩ => (147 : Nat)
  | ⟨3, _⟩ => (149 : Nat)
  | ⟨4, _⟩ => (151 : Nat)
  | ⟨5, _⟩ => (150 : Nat)
  | ⟨6, _⟩ => (152 : Nat)
  | ⟨7, _⟩ => (153 : Nat)
  | ⟨8, _⟩ => (155 : Nat)
  | ⟨9, _⟩ => (154 : Nat)
  | ⟨10, _⟩ => (156 : Nat)
  | ⟨11, _⟩ => (153 : Nat)
  | ⟨12, _⟩ => (158 : Nat)
  | ⟨13, _⟩ => (157 : Nat)
  | ⟨14, _⟩ => (159 : Nat)
  | ⟨15, _⟩ => (160 : Nat)
  | ⟨16, _⟩ => (161 : Nat)
  | ⟨17, _⟩ => (163 : Nat)
  | ⟨18, _⟩ => (162 : Nat)
  | ⟨19, _⟩ => (164 : Nat)
  | ⟨20, _⟩ => (166 : Nat)
  | ⟨21, _⟩ => (165 : Nat)
  | ⟨22, _⟩ => (167 : Nat)
  | ⟨23, _⟩ => (169 : Nat)
  | ⟨24, _⟩ => (170 : Nat)
  | ⟨25, _⟩ => (171 : Nat)
  | ⟨26, _⟩ => (168 : Nat)
  | ⟨27, _⟩ => (172 : Nat)
  | ⟨28, _⟩ => (173 : Nat)
  | ⟨29, _⟩ => (175 : Nat)
  | ⟨30, _⟩ => (176 : Nat)
  | ⟨31, _⟩ => (177 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (12 : Nat)
  | ⟨1, _⟩ => (0 : Nat)
  | ⟨2, _⟩ => (11 : Nat)
  | ⟨3, _⟩ => (13 : Nat)
  | ⟨4, _⟩ => (3 : Nat)
  | ⟨5, _⟩ => (12 : Nat)
  | ⟨6, _⟩ => (6 : Nat)
  | ⟨7, _⟩ => (13 : Nat)
  | ⟨8, _⟩ => (1 : Nat)
  | ⟨9, _⟩ => (12 : Nat)
  | ⟨10, _⟩ => (4 : Nat)
  | ⟨11, _⟩ => (11 : Nat)
  | ⟨12, _⟩ => (2 : Nat)
  | ⟨13, _⟩ => (13 : Nat)
  | ⟨14, _⟩ => (7 : Nat)
  | ⟨15, _⟩ => (13 : Nat)
  | ⟨16, _⟩ => (4 : Nat)
  | ⟨17, _⟩ => (0 : Nat)
  | ⟨18, _⟩ => (13 : Nat)
  | ⟨19, _⟩ => (5 : Nat)
  | ⟨20, _⟩ => (5 : Nat)
  | ⟨21, _⟩ => (13 : Nat)
  | ⟨22, _⟩ => (6 : Nat)
  | ⟨23, _⟩ => (6 : Nat)
  | ⟨24, _⟩ => (6 : Nat)
  | ⟨25, _⟩ => (5 : Nat)
  | ⟨26, _⟩ => (12 : Nat)
  | ⟨27, _⟩ => (13 : Nat)
  | ⟨28, _⟩ => (7 : Nat)
  | ⟨29, _⟩ => (4 : Nat)
  | ⟨30, _⟩ => (4 : Nat)
  | ⟨31, _⟩ => (7 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (-10 : Int)
  | ⟨1, _⟩ => (-124 : Int)
  | ⟨2, _⟩ => (-73 : Int)
  | ⟨3, _⟩ => (-10 : Int)
  | ⟨4, _⟩ => (-124 : Int)
  | ⟨5, _⟩ => (114 : Int)
  | ⟨6, _⟩ => (96 : Int)
  | ⟨7, _⟩ => (-10 : Int)
  | ⟨8, _⟩ => (-124 : Int)
  | ⟨9, _⟩ => (114 : Int)
  | ⟨10, _⟩ => (96 : Int)
  | ⟨11, _⟩ => (-73 : Int)
  | ⟨12, _⟩ => (-124 : Int)
  | ⟨13, _⟩ => (114 : Int)
  | ⟨14, _⟩ => (96 : Int)
  | ⟨15, _⟩ => (-18 : Int)
  | ⟨16, _⟩ => (-36 : Int)
  | ⟨17, _⟩ => (-124 : Int)
  | ⟨18, _⟩ => (114 : Int)
  | ⟨19, _⟩ => (96 : Int)
  | ⟨20, _⟩ => (96 : Int)
  | ⟨21, _⟩ => (-18 : Int)
  | ⟨22, _⟩ => (-36 : Int)
  | ⟨23, _⟩ => (96 : Int)
  | ⟨24, _⟩ => (96 : Int)
  | ⟨25, _⟩ => (-36 : Int)
  | ⟨26, _⟩ => (-18 : Int)
  | ⟨27, _⟩ => (-54 : Int)
  | ⟨28, _⟩ => (-144 : Int)
  | ⟨29, _⟩ => (96 : Int)
  | ⟨30, _⟩ => (96 : Int)
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

theorem graph183QuotientStepShard004
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

theorem graph183SmallStepValidShard004
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + (86 : Int) <= (86 : Int) := by
  rcases hstep with ⟨i, _hs, _hlabel, _ht, hgain⟩
  subst gain
  fin_cases i <;> decide

theorem graph183QuotientEdgeShard004_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard004
