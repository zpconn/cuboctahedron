import Cuboctahedron.Search.BellmanPotential

/-!
Shard 007 of the graph183 cocycle quotient local-equation smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007

open Cuboctahedron

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

private def q : Nat -> Nat
  | 7 => (2 : Nat)
  | 10 => (2 : Nat)
  | 14 => (3 : Nat)
  | 21 => (4 : Nat)
  | 22 => (3 : Nat)
  | 220 => (42 : Nat)
  | 221 => (42 : Nat)
  | 222 => (41 : Nat)
  | _ => (0 : Nat)

private def gauge : Nat -> Int
  | 7 => (-231 : Int)
  | 10 => (-223 : Int)
  | 14 => (-132 : Int)
  | 21 => (-10 : Int)
  | 22 => (-124 : Int)
  | 220 => (-114 : Int)
  | 221 => (-106 : Int)
  | 222 => (0 : Int)
  | _ => (0 : Int)

private theorem localEquation (i : Fin edgeCount) :
    rawGain i = smallGain i + gauge (fullDst i) - gauge (fullSrc i) := by
  fin_cases i <;> decide

theorem graph183QuotientEdgeShard007_checked : True := by
  have h := localEquation
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShard007
