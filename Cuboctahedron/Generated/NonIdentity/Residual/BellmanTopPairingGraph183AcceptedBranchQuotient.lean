import Cuboctahedron.Search.BellmanPotential

/-!
Tiny graph183 accepted-branch quotient facts.

This module replaces the quotient-margin socket's dependency on the diagnostic
229-edge quotient smoke.  It checks only the 14 accepted-branch edge gains used
by the graph183 margin carrier.  It is not coverage evidence by itself.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient

open Cuboctahedron

def acceptedEdgeCount : Nat := 14

def acceptedRawGain : Fin acceptedEdgeCount -> Int
  | ⟨0, _⟩ => (103 : Int)
  | ⟨1, _⟩ => (-73 : Int)
  | ⟨2, _⟩ => (-124 : Int)
  | ⟨3, _⟩ => (114 : Int)
  | ⟨4, _⟩ => (114 : Int)
  | ⟨5, _⟩ => (96 : Int)
  | ⟨6, _⟩ => (-36 : Int)
  | ⟨7, _⟩ => (-144 : Int)
  | ⟨8, _⟩ => (-144 : Int)
  | ⟨9, _⟩ => (-36 : Int)
  | ⟨10, _⟩ => (-117 : Int)
  | ⟨11, _⟩ => (96 : Int)
  | ⟨12, _⟩ => (-124 : Int)
  | ⟨13, _⟩ => (-73 : Int)
  | _ => (0 : Int)

def acceptedGaugeSrc : Fin acceptedEdgeCount -> Int
  | ⟨0, _⟩ => (262 : Int)
  | ⟨1, _⟩ => (365 : Int)
  | ⟨2, _⟩ => (292 : Int)
  | ⟨3, _⟩ => (168 : Int)
  | ⟨4, _⟩ => (282 : Int)
  | ⟨5, _⟩ => (396 : Int)
  | ⟨6, _⟩ => (492 : Int)
  | ⟨7, _⟩ => (456 : Int)
  | ⟨8, _⟩ => (312 : Int)
  | ⟨9, _⟩ => (168 : Int)
  | ⟨10, _⟩ => (132 : Int)
  | ⟨11, _⟩ => (15 : Int)
  | ⟨12, _⟩ => (111 : Int)
  | ⟨13, _⟩ => (-13 : Int)
  | _ => (0 : Int)

def acceptedGaugeDst : Fin acceptedEdgeCount -> Int
  | ⟨0, _⟩ => (365 : Int)
  | ⟨1, _⟩ => (292 : Int)
  | ⟨2, _⟩ => (168 : Int)
  | ⟨3, _⟩ => (282 : Int)
  | ⟨4, _⟩ => (396 : Int)
  | ⟨5, _⟩ => (492 : Int)
  | ⟨6, _⟩ => (456 : Int)
  | ⟨7, _⟩ => (312 : Int)
  | ⟨8, _⟩ => (168 : Int)
  | ⟨9, _⟩ => (132 : Int)
  | ⟨10, _⟩ => (15 : Int)
  | ⟨11, _⟩ => (111 : Int)
  | ⟨12, _⟩ => (-13 : Int)
  | ⟨13, _⟩ => (-86 : Int)
  | _ => (0 : Int)

theorem acceptedLocalEquation (i : Fin acceptedEdgeCount) :
    acceptedRawGain i = acceptedGaugeDst i - acceptedGaugeSrc i := by
  fin_cases i <;> decide

def graph183AcceptedBranchRawGain : Int :=
  acceptedRawGain ⟨0, by decide⟩ +
    (acceptedRawGain ⟨1, by decide⟩ +
    (acceptedRawGain ⟨2, by decide⟩ +
    (acceptedRawGain ⟨3, by decide⟩ +
    (acceptedRawGain ⟨4, by decide⟩ +
    (acceptedRawGain ⟨5, by decide⟩ +
    (acceptedRawGain ⟨6, by decide⟩ +
    (acceptedRawGain ⟨7, by decide⟩ +
    (acceptedRawGain ⟨8, by decide⟩ +
    (acceptedRawGain ⟨9, by decide⟩ +
    (acceptedRawGain ⟨10, by decide⟩ +
    (acceptedRawGain ⟨11, by decide⟩ +
    (acceptedRawGain ⟨12, by decide⟩ +
    (acceptedRawGain ⟨13, by decide⟩ + (0 : Int))))))))))))))

theorem graph183AcceptedBranchRawGain_contract :
    graph183AcceptedBranchRawGain = ((194 : Int) + (-542 : Int)) := by
  decide

theorem graph183AcceptedBranchLocalEquationsChecked : True := by
  have h := acceptedLocalEquation ⟨0, by decide⟩
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183AcceptedBranchQuotient
