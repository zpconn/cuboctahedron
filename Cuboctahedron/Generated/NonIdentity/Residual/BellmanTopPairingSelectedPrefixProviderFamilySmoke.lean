import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectProviderSurface

/-!
Representative provider-family leaf for the terminal-direct route.

The generic terminal-direct provider surface says that generated leaves should
prove a `TerminalDirectProviderFamily containsRank`.  This bounded smoke
instantiates that surface with the existing selected-prefix cover.  It remains
bounded diagnostic coverage, but it exercises the exact public shape expected
from future production provider leaves.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixProviderFamilySmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTerminalDirectBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectProviderSurface
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

theorem selectedPrefixTerminalDirectProviderFamily
    (scaledMargin : Fin numPairWords -> Int) :
    TerminalDirectProviderFamily
      (SelectedPrefixCoverFamily scaledMargin) where
  closed := by
    intro rank hrank
    exact
      (terminalDirectClosedFamily_of_selectedPrefixCoverFamily hrank).1
  actualFaceOmni := by
    intro rank hrank
    exact
      (terminalDirectClosedFamily_of_selectedPrefixCoverFamily hrank).2.1
  sequenceBadFace := by
    intro rank hrank
    exact
      (terminalDirectClosedFamily_of_selectedPrefixCoverFamily hrank).2.2.1
  terminalTrace := by
    intro rank hrank
    exact
      (terminalDirectClosedFamily_of_selectedPrefixCoverFamily hrank).2.2.2

theorem terminalDirectClosedFamily_of_selectedPrefixProviderFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_providerFamily
    (selectedPrefixTerminalDirectProviderFamily scaledMargin)
    hrank

theorem nonIdentityRankKilled_of_selectedPrefixProviderFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_providerFamily
    (selectedPrefixTerminalDirectProviderFamily scaledMargin)
    hrank

theorem selected_prefix_provider_family_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixProviderFamilySmoke
