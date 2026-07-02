import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginRootProducerBridge

/-!
Selected-prefix cover families as root trace-margin producers.

This small adapter makes the current bounded selected-prefix surface reusable
from either direction: if a future producer proves the selected-prefix cover
directly, it can still feed the preferred `RootTraceMarginProducer` socket.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverRootProducerBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingAcceptedPrefixEvalRoot
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginCoverBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixTraceMarginRootProducerBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover

theorem rootTraceMarginProducer_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    RootTraceMarginProducer scaledMargin rank :=
  rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily
    (selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily hrank)

theorem selected_prefix_cover_root_producer_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverRootProducerBridge
