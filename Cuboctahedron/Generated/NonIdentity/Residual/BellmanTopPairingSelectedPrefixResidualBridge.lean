import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Generated.NonIdentity.Complete
import Cuboctahedron.Generated.NonIdentity.Coverage.All
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge

/-!
Residual-bridge target for the selected-prefix top-pairing route.

The current public non-identity assembly already accepts a semantic
`KilledResidualBridge`.  This file makes the next generated obligation precise:
for every rank classified as residual by the early non-identity partition, prove
membership in the selected-prefix cover.  The checked direct bridge then turns
that membership into `NonIdentityRankKilled`.

This module intentionally contains no generated rank table, no sampled object
type, and no Bellman evaluator replay.  It is just the small adapter from a
future semantic coverage theorem to the public residual bridge.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixResidualBridge

open Cuboctahedron
open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge

def TerminalDirectResidualRankCovered
    (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ =
        NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        TerminalDirectClosedFamily ⟨r, hlt⟩

theorem killedResidualBridge_of_terminalDirectInterval
    (h :
      CoversInterval TerminalDirectResidualRankCovered 0 numPairWords) :
    Cuboctahedron.Generated.NonIdentity.KilledResidualBridge := by
  intro r hclass hM
  exact
    nonIdentityRankKilled_of_terminalDirectClosedFamily
      ((h r.val (Nat.zero_le r.val) r.isLt) r.isLt hclass hM)

theorem residualRankKilled_of_terminalDirectResidualRankCovered
    {r : Nat}
    (h : TerminalDirectResidualRankCovered r) :
    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankKilled r := by
  intro hlt hclass hM
  exact
    nonIdentityRankKilled_of_terminalDirectClosedFamily
      (h hlt hclass hM)

def SelectedPrefixResidualRankCovered
    (scaledMargin : Fin numPairWords -> Int)
    (r : Nat) : Prop :=
  forall hlt : r < numPairWords,
    nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ =
        NonIdFamilyClass.residual ->
      totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠
          (matId : Mat3 Rat) ->
        SelectedPrefixCoverFamily scaledMargin ⟨r, hlt⟩

theorem killedResidualBridge_of_selectedPrefixInterval
    {scaledMargin : Fin numPairWords -> Int}
    (h :
      CoversInterval
        (SelectedPrefixResidualRankCovered scaledMargin) 0 numPairWords) :
    Cuboctahedron.Generated.NonIdentity.KilledResidualBridge := by
  intro r hclass hM
  exact
    nonIdentityRankKilled_of_selectedPrefixCoverFamily
      ((h r.val (Nat.zero_le r.val) r.isLt) r.isLt hclass hM)

theorem residualRankKilled_of_selectedPrefixResidualRankCovered
    {scaledMargin : Fin numPairWords -> Int}
    {r : Nat}
    (h : SelectedPrefixResidualRankCovered scaledMargin r) :
    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankKilled r := by
  intro hlt hclass hM
  exact
    nonIdentityRankKilled_of_selectedPrefixCoverFamily
      (h hlt hclass hM)

theorem selected_prefix_residual_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixResidualBridge
