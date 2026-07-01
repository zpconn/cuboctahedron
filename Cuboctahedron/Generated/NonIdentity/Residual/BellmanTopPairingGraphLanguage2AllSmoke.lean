import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke

theorem graphLanguage2AllSmoke_rank_killed
    {rank : Fin numPairWords}
    (hrank :
      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke.terminalContainsRank
        rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke.graphSmoke_sampled_axis_rank_killed
    hrank

theorem bellmanGraphLanguage2AllSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke
