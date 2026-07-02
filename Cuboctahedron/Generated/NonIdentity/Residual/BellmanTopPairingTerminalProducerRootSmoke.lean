import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke

/-!
Tiny root smoke for terminal producer shards.

This root currently imports the all-accepted-prefix shard and re-exports the
semantic killed theorem.  It is intentionally small: future generated roots
should compose shard/group theorem surfaces like this, without importing raw
rank/path data.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalDirectSequenceSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerAllAcceptedShardSmoke

def TerminalProducerRootFamily (rank : Fin numPairWords) : Prop :=
  AllAcceptedProducerShardFamily rank

theorem allAcceptedShardFamily_of_rootFamily
    {rank : Fin numPairWords}
    (hroot : TerminalProducerRootFamily rank) :
    AllAcceptedProducerShardFamily rank :=
  hroot

theorem terminalDirectClosedFamily_of_rootFamily
    {rank : Fin numPairWords}
    (hroot : TerminalProducerRootFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    TerminalDirectClosedFamily rank :=
  terminalDirectClosedFamily_of_allAcceptedShardFamily
    (allAcceptedShardFamily_of_rootFamily hroot)
    hactual hbad

theorem nonIdentityRankKilled_of_rootFamily
    {rank : Fin numPairWords}
    (hroot : TerminalProducerRootFamily rank)
    (hactual : TopPairingActualFaceOmniAtRank rank)
    (hbad :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank
        rank Face.ym) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_allAcceptedShardFamily
    (allAcceptedShardFamily_of_rootFamily hroot)
    hactual hbad

theorem terminal_producer_root_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalProducerRootSmoke
