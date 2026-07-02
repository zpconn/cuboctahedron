import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

/-!
Generic provider surface for the terminal-direct top-pairing route.

Generated producer leaves should prove small semantic fields for their family:
closed top-pairing language, actual omnihedral face usage, accepted bad-face
labels, and terminal trace labels.  This module packages those fields in a
single theorem surface and routes them to the already-checked terminal-direct
consumer.

The surface is deliberately independent of Bellman margin data.  It is intended
for the direct terminal/start-violation route, where `TerminalDirectClosedFamily`
is the semantic target.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectProviderSurface

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket

structure TerminalDirectProviderFamily
    (containsRank : Fin numPairWords -> Prop) : Prop where
  closed :
    forall rank, containsRank rank ->
      TopPairingClosedLanguageAtRank rank Face.ym
  actualFaceOmni :
    forall rank, containsRank rank ->
      TopPairingActualFaceOmniAtRank rank
  sequenceBadFace :
    forall rank, containsRank rank ->
      AcceptedSequenceBadFaceAtRank rank Face.ym
  terminalTrace :
    forall rank, containsRank rank ->
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)

theorem terminalDirectClosedFamily_of_providerFamily
    {containsRank : Fin numPairWords -> Prop}
    (family : TerminalDirectProviderFamily containsRank)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TerminalDirectClosedFamily rank :=
  ⟨family.closed rank hrank,
    family.actualFaceOmni rank hrank,
    family.sequenceBadFace rank hrank,
    family.terminalTrace rank hrank⟩

theorem strengthenedTerminalDirect_of_providerFamily
    {containsRank : Fin numPairWords -> Prop}
    (family : TerminalDirectProviderFamily containsRank)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    TopPairingStrengthenedClosedLanguageAtRank
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectStartViolationKilledBridge.TerminalDirectSequenceBadFace
      rank Face.ym :=
  strengthenedTerminalDirect_of_terminalDirectClosedFamily
    (terminalDirectClosedFamily_of_providerFamily family hrank)

theorem nonIdentityRankKilled_of_providerFamily
    {containsRank : Fin numPairWords -> Prop}
    (family : TerminalDirectProviderFamily containsRank)
    {rank : Fin numPairWords}
    (hrank : containsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalDirectClosedFamily
    (terminalDirectClosedFamily_of_providerFamily family hrank)

theorem terminal_direct_provider_surface_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectProviderSurface
