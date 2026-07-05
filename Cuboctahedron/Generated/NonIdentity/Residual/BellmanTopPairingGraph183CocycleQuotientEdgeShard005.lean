import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

/-!
Shard 005 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore

private def edgeCount : Nat := 32

private def fullSrc : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (165 : Nat)
  | ⟨1, _⟩ => (166 : Nat)
  | ⟨2, _⟩ => (167 : Nat)
  | ⟨3, _⟩ => (167 : Nat)
  | ⟨4, _⟩ => (168 : Nat)
  | ⟨5, _⟩ => (169 : Nat)
  | ⟨6, _⟩ => (170 : Nat)
  | ⟨7, _⟩ => (171 : Nat)
  | ⟨8, _⟩ => (172 : Nat)
  | ⟨9, _⟩ => (173 : Nat)
  | ⟨10, _⟩ => (173 : Nat)
  | ⟨11, _⟩ => (174 : Nat)
  | ⟨12, _⟩ => (175 : Nat)
  | ⟨13, _⟩ => (176 : Nat)
  | ⟨14, _⟩ => (177 : Nat)
  | ⟨15, _⟩ => (178 : Nat)
  | ⟨16, _⟩ => (179 : Nat)
  | ⟨17, _⟩ => (180 : Nat)
  | ⟨18, _⟩ => (180 : Nat)
  | ⟨19, _⟩ => (181 : Nat)
  | ⟨20, _⟩ => (182 : Nat)
  | ⟨21, _⟩ => (183 : Nat)
  | ⟨22, _⟩ => (184 : Nat)
  | ⟨23, _⟩ => (185 : Nat)
  | ⟨24, _⟩ => (186 : Nat)
  | ⟨25, _⟩ => (187 : Nat)
  | ⟨26, _⟩ => (187 : Nat)
  | ⟨27, _⟩ => (188 : Nat)
  | ⟨28, _⟩ => (189 : Nat)
  | ⟨29, _⟩ => (190 : Nat)
  | ⟨30, _⟩ => (191 : Nat)
  | ⟨31, _⟩ => (192 : Nat)
  | _ => (0 : Nat)

private def fullDst : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (174 : Nat)
  | ⟨1, _⟩ => (178 : Nat)
  | ⟨2, _⟩ => (179 : Nat)
  | ⟨3, _⟩ => (180 : Nat)
  | ⟨4, _⟩ => (182 : Nat)
  | ⟨5, _⟩ => (183 : Nat)
  | ⟨6, _⟩ => (184 : Nat)
  | ⟨7, _⟩ => (186 : Nat)
  | ⟨8, _⟩ => (181 : Nat)
  | ⟨9, _⟩ => (185 : Nat)
  | ⟨10, _⟩ => (187 : Nat)
  | ⟨11, _⟩ => (189 : Nat)
  | ⟨12, _⟩ => (190 : Nat)
  | ⟨13, _⟩ => (191 : Nat)
  | ⟨14, _⟩ => (192 : Nat)
  | ⟨15, _⟩ => (194 : Nat)
  | ⟨16, _⟩ => (188 : Nat)
  | ⟨17, _⟩ => (193 : Nat)
  | ⟨18, _⟩ => (195 : Nat)
  | ⟨19, _⟩ => (197 : Nat)
  | ⟨20, _⟩ => (198 : Nat)
  | ⟨21, _⟩ => (199 : Nat)
  | ⟨22, _⟩ => (200 : Nat)
  | ⟨23, _⟩ => (196 : Nat)
  | ⟨24, _⟩ => (202 : Nat)
  | ⟨25, _⟩ => (201 : Nat)
  | ⟨26, _⟩ => (203 : Nat)
  | ⟨27, _⟩ => (205 : Nat)
  | ⟨28, _⟩ => (206 : Nat)
  | ⟨29, _⟩ => (207 : Nat)
  | ⟨30, _⟩ => (208 : Nat)
  | ⟨31, _⟩ => (209 : Nat)
  | _ => (0 : Nat)

private def edgeLabel : Fin edgeCount -> Nat
  | ⟨0, _⟩ => (12 : Nat)
  | ⟨1, _⟩ => (7 : Nat)
  | ⟨2, _⟩ => (13 : Nat)
  | ⟨3, _⟩ => (5 : Nat)
  | ⟨4, _⟩ => (4 : Nat)
  | ⟨5, _⟩ => (4 : Nat)
  | ⟨6, _⟩ => (4 : Nat)
  | ⟨7, _⟩ => (6 : Nat)
  | ⟨8, _⟩ => (12 : Nat)
  | ⟨9, _⟩ => (13 : Nat)
  | ⟨10, _⟩ => (0 : Nat)
  | ⟨11, _⟩ => (6 : Nat)
  | ⟨12, _⟩ => (6 : Nat)
  | ⟨13, _⟩ => (6 : Nat)
  | ⟨14, _⟩ => (4 : Nat)
  | ⟨15, _⟩ => (4 : Nat)
  | ⟨16, _⟩ => (12 : Nat)
  | ⟨17, _⟩ => (13 : Nat)
  | ⟨18, _⟩ => (2 : Nat)
  | ⟨19, _⟩ => (7 : Nat)
  | ⟨20, _⟩ => (7 : Nat)
  | ⟨21, _⟩ => (7 : Nat)
  | ⟨22, _⟩ => (7 : Nat)
  | ⟨23, _⟩ => (12 : Nat)
  | ⟨24, _⟩ => (1 : Nat)
  | ⟨25, _⟩ => (13 : Nat)
  | ⟨26, _⟩ => (5 : Nat)
  | ⟨27, _⟩ => (5 : Nat)
  | ⟨28, _⟩ => (5 : Nat)
  | ⟨29, _⟩ => (5 : Nat)
  | ⟨30, _⟩ => (5 : Nat)
  | ⟨31, _⟩ => (3 : Nat)
  | _ => (0 : Nat)

private def rawGain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (-18 : Int)
  | ⟨1, _⟩ => (-36 : Int)
  | ⟨2, _⟩ => (-54 : Int)
  | ⟨3, _⟩ => (-144 : Int)
  | ⟨4, _⟩ => (-36 : Int)
  | ⟨5, _⟩ => (-36 : Int)
  | ⟨6, _⟩ => (-36 : Int)
  | ⟨7, _⟩ => (-144 : Int)
  | ⟨8, _⟩ => (-54 : Int)
  | ⟨9, _⟩ => (90 : Int)
  | ⟨10, _⟩ => (-144 : Int)
  | ⟨11, _⟩ => (-36 : Int)
  | ⟨12, _⟩ => (-36 : Int)
  | ⟨13, _⟩ => (-36 : Int)
  | ⟨14, _⟩ => (-144 : Int)
  | ⟨15, _⟩ => (-144 : Int)
  | ⟨16, _⟩ => (-54 : Int)
  | ⟨17, _⟩ => (90 : Int)
  | ⟨18, _⟩ => (-144 : Int)
  | ⟨19, _⟩ => (-144 : Int)
  | ⟨20, _⟩ => (-144 : Int)
  | ⟨21, _⟩ => (-144 : Int)
  | ⟨22, _⟩ => (-144 : Int)
  | ⟨23, _⟩ => (90 : Int)
  | ⟨24, _⟩ => (-144 : Int)
  | ⟨25, _⟩ => (-54 : Int)
  | ⟨26, _⟩ => (-36 : Int)
  | ⟨27, _⟩ => (-144 : Int)
  | ⟨28, _⟩ => (-144 : Int)
  | ⟨29, _⟩ => (-144 : Int)
  | ⟨30, _⟩ => (-144 : Int)
  | ⟨31, _⟩ => (-144 : Int)
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

theorem graph183QuotientStepShard005
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

theorem graph183SmallStepValidShard005
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + (86 : Int) <= (86 : Int) := by
  rcases hstep with ⟨i, _hs, _hlabel, _ht, hgain⟩
  subst gain
  fin_cases i <;> decide

theorem graph183QuotientEdgeShard005_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard005
