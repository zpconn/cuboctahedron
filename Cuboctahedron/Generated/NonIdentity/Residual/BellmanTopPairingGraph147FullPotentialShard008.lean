import Cuboctahedron.Search.BellmanPotential

/-!
Shard 008 of the graph147 full-potential edge-validity smoke.

Diagnostic/proof-shape evidence only.  The generated edge data is
private, and the public theorem surface is intentionally tiny.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147FullPotentialShard008

open Cuboctahedron

private def edgeCount : Nat := 30

private def gain : Fin edgeCount -> Int
  | ⟨0, _⟩ => (96 : Int)
  | ⟨1, _⟩ => (-117 : Int)
  | ⟨2, _⟩ => (96 : Int)
  | ⟨3, _⟩ => (-117 : Int)
  | ⟨4, _⟩ => (96 : Int)
  | ⟨5, _⟩ => (-117 : Int)
  | ⟨6, _⟩ => (96 : Int)
  | ⟨7, _⟩ => (-117 : Int)
  | ⟨8, _⟩ => (96 : Int)
  | ⟨9, _⟩ => (-117 : Int)
  | ⟨10, _⟩ => (96 : Int)
  | ⟨11, _⟩ => (-21 : Int)
  | ⟨12, _⟩ => (114 : Int)
  | ⟨13, _⟩ => (-21 : Int)
  | ⟨14, _⟩ => (114 : Int)
  | ⟨15, _⟩ => (-21 : Int)
  | ⟨16, _⟩ => (-124 : Int)
  | ⟨17, _⟩ => (103 : Int)
  | ⟨18, _⟩ => (-10 : Int)
  | ⟨19, _⟩ => (-36 : Int)
  | ⟨20, _⟩ => (-36 : Int)
  | ⟨21, _⟩ => (-36 : Int)
  | ⟨22, _⟩ => (-36 : Int)
  | ⟨23, _⟩ => (-36 : Int)
  | ⟨24, _⟩ => (-36 : Int)
  | ⟨25, _⟩ => (96 : Int)
  | ⟨26, _⟩ => (96 : Int)
  | ⟨27, _⟩ => (-18 : Int)
  | ⟨28, _⟩ => (114 : Int)
  | ⟨29, _⟩ => (-124 : Int)
  | _ => (0 : Int)

private def srcPotential : Fin edgeCount -> Int
  | ⟨0, _⟩ => (105 : Int)
  | ⟨1, _⟩ => (-115 : Int)
  | ⟨2, _⟩ => (-115 : Int)
  | ⟨3, _⟩ => (105 : Int)
  | ⟨4, _⟩ => (105 : Int)
  | ⟨5, _⟩ => (105 : Int)
  | ⟨6, _⟩ => (105 : Int)
  | ⟨7, _⟩ => (-143 : Int)
  | ⟨8, _⟩ => (-143 : Int)
  | ⟨9, _⟩ => (105 : Int)
  | ⟨10, _⟩ => (105 : Int)
  | ⟨11, _⟩ => (-125 : Int)
  | ⟨12, _⟩ => (-125 : Int)
  | ⟨13, _⟩ => (-125 : Int)
  | ⟨14, _⟩ => (-125 : Int)
  | ⟨15, _⟩ => (-1 : Int)
  | ⟨16, _⟩ => (-1 : Int)
  | ⟨17, _⟩ => (113 : Int)
  | ⟨18, _⟩ => (113 : Int)
  | ⟨19, _⟩ => (-210 : Int)
  | ⟨20, _⟩ => (-210 : Int)
  | ⟨21, _⟩ => (-210 : Int)
  | ⟨22, _⟩ => (-210 : Int)
  | ⟨23, _⟩ => (-210 : Int)
  | ⟨24, _⟩ => (-210 : Int)
  | ⟨25, _⟩ => (-184 : Int)
  | ⟨26, _⟩ => (-60 : Int)
  | ⟨27, _⟩ => (-192 : Int)
  | ⟨28, _⟩ => (-42 : Int)
  | ⟨29, _⟩ => (-42 : Int)
  | _ => (0 : Int)

private def dstPotential : Fin edgeCount -> Int
  | ⟨0, _⟩ => (9 : Int)
  | ⟨1, _⟩ => (2 : Int)
  | ⟨2, _⟩ => (-239 : Int)
  | ⟨3, _⟩ => (2 : Int)
  | ⟨4, _⟩ => (9 : Int)
  | ⟨5, _⟩ => (2 : Int)
  | ⟨6, _⟩ => (9 : Int)
  | ⟨7, _⟩ => (-218 : Int)
  | ⟨8, _⟩ => (-239 : Int)
  | ⟨9, _⟩ => (2 : Int)
  | ⟨10, _⟩ => (9 : Int)
  | ⟨11, _⟩ => (-104 : Int)
  | ⟨12, _⟩ => (-239 : Int)
  | ⟨13, _⟩ => (-104 : Int)
  | ⟨14, _⟩ => (-239 : Int)
  | ⟨15, _⟩ => (-228 : Int)
  | ⟨16, _⟩ => (123 : Int)
  | ⟨17, _⟩ => (10 : Int)
  | ⟨18, _⟩ => (123 : Int)
  | ⟨19, _⟩ => (-174 : Int)
  | ⟨20, _⟩ => (-174 : Int)
  | ⟨21, _⟩ => (-174 : Int)
  | ⟨22, _⟩ => (-174 : Int)
  | ⟨23, _⟩ => (-174 : Int)
  | ⟨24, _⟩ => (-174 : Int)
  | ⟨25, _⟩ => (-280 : Int)
  | ⟨26, _⟩ => (-156 : Int)
  | ⟨27, _⟩ => (-174 : Int)
  | ⟨28, _⟩ => (-156 : Int)
  | ⟨29, _⟩ => (-166 : Int)
  | _ => (0 : Int)

private theorem edgeValid (i : Fin edgeCount) :
    gain i + dstPotential i <= srcPotential i := by
  fin_cases i <;> decide

theorem graph147FullPotentialShard008_checked : True := by
  have h := edgeValid
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph147FullPotentialShard008
