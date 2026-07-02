import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace000StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace001StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace002StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace003StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace004StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace005StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace006StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace007StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace008StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace009StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace010StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace011StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace012StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace013StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace014StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace015StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace016StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace017StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace018StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace019StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace020StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace021StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace022StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace023StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace024StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace025StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace026StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace027StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace028StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace029StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace030StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace031StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace032StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace033StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace034StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace035StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace036StartViolationProvider

/-!
Generated dispatcher for all graph-accepted top-pairing trace-level
start-violation providers.

The public entry point is semantic in the accepted trace id.  It does
not introduce sampled rank/path objects or expose the private
trace-level `NonIdCert` payloads from the leaf provider modules.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

def objectStartViolationMarginCert_of_acceptedTraceId
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (traceId : AcceptedTraceId)
    (htrace : topPairingRankFaceLabels rank = acceptedTraceOfId traceId) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) := by
  cases traceId with
  | t000 =>
      exact BellmanTopPairingTrace000StartViolationProvider.objectStartViolationMarginCert_of_trace000
        htrace
  | t001 =>
      exact BellmanTopPairingTrace001StartViolationProvider.objectStartViolationMarginCert_of_trace001
        htrace
  | t002 =>
      exact BellmanTopPairingTrace002StartViolationProvider.objectStartViolationMarginCert_of_trace002
        htrace
  | t003 =>
      exact BellmanTopPairingTrace003StartViolationProvider.objectStartViolationMarginCert_of_trace003
        htrace
  | t004 =>
      exact BellmanTopPairingTrace004StartViolationProvider.objectStartViolationMarginCert_of_trace004
        htrace
  | t005 =>
      exact BellmanTopPairingTrace005StartViolationProvider.objectStartViolationMarginCert_of_trace005
        htrace
  | t006 =>
      exact BellmanTopPairingTrace006StartViolationProvider.objectStartViolationMarginCert_of_trace006
        htrace
  | t007 =>
      exact BellmanTopPairingTrace007StartViolationProvider.objectStartViolationMarginCert_of_trace007
        htrace
  | t008 =>
      exact BellmanTopPairingTrace008StartViolationProvider.objectStartViolationMarginCert_of_trace008
        htrace
  | t009 =>
      exact BellmanTopPairingTrace009StartViolationProvider.objectStartViolationMarginCert_of_trace009
        htrace
  | t010 =>
      exact BellmanTopPairingTrace010StartViolationProvider.objectStartViolationMarginCert_of_trace010
        htrace
  | t011 =>
      exact BellmanTopPairingTrace011StartViolationProvider.objectStartViolationMarginCert_of_trace011
        htrace
  | t012 =>
      exact BellmanTopPairingTrace012StartViolationProvider.objectStartViolationMarginCert_of_trace012
        htrace
  | t013 =>
      exact BellmanTopPairingTrace013StartViolationProvider.objectStartViolationMarginCert_of_trace013
        htrace
  | t014 =>
      exact BellmanTopPairingTrace014StartViolationProvider.objectStartViolationMarginCert_of_trace014
        htrace
  | t015 =>
      exact BellmanTopPairingTrace015StartViolationProvider.objectStartViolationMarginCert_of_trace015
        htrace
  | t016 =>
      exact BellmanTopPairingTrace016StartViolationProvider.objectStartViolationMarginCert_of_trace016
        htrace
  | t017 =>
      exact BellmanTopPairingTrace017StartViolationProvider.objectStartViolationMarginCert_of_trace017
        htrace
  | t018 =>
      exact BellmanTopPairingTrace018StartViolationProvider.objectStartViolationMarginCert_of_trace018
        htrace
  | t019 =>
      exact BellmanTopPairingTrace019StartViolationProvider.objectStartViolationMarginCert_of_trace019
        htrace
  | t020 =>
      exact BellmanTopPairingTrace020StartViolationProvider.objectStartViolationMarginCert_of_trace020
        htrace
  | t021 =>
      exact BellmanTopPairingTrace021StartViolationProvider.objectStartViolationMarginCert_of_trace021
        htrace
  | t022 =>
      exact BellmanTopPairingTrace022StartViolationProvider.objectStartViolationMarginCert_of_trace022
        htrace
  | t023 =>
      exact BellmanTopPairingTrace023StartViolationProvider.objectStartViolationMarginCert_of_trace023
        htrace
  | t024 =>
      exact BellmanTopPairingTrace024StartViolationProvider.objectStartViolationMarginCert_of_trace024
        htrace
  | t025 =>
      exact BellmanTopPairingTrace025StartViolationProvider.objectStartViolationMarginCert_of_trace025
        htrace
  | t026 =>
      exact BellmanTopPairingTrace026StartViolationProvider.objectStartViolationMarginCert_of_trace026
        htrace
  | t027 =>
      exact BellmanTopPairingTrace027StartViolationProvider.objectStartViolationMarginCert_of_trace027
        htrace
  | t028 =>
      exact BellmanTopPairingTrace028StartViolationProvider.objectStartViolationMarginCert_of_trace028
        htrace
  | t029 =>
      exact BellmanTopPairingTrace029StartViolationProvider.objectStartViolationMarginCert_of_trace029
        htrace
  | t030 =>
      exact BellmanTopPairingTrace030StartViolationProvider.objectStartViolationMarginCert_of_trace030
        htrace
  | t031 =>
      exact BellmanTopPairingTrace031StartViolationProvider.objectStartViolationMarginCert_of_trace031
        htrace
  | t032 =>
      exact BellmanTopPairingTrace032StartViolationProvider.objectStartViolationMarginCert_of_trace032
        htrace
  | t033 =>
      exact BellmanTopPairingTrace033StartViolationProvider.objectStartViolationMarginCert_of_trace033
        htrace
  | t034 =>
      exact BellmanTopPairingTrace034StartViolationProvider.objectStartViolationMarginCert_of_trace034
        htrace
  | t035 =>
      exact BellmanTopPairingTrace035StartViolationProvider.objectStartViolationMarginCert_of_trace035
        htrace
  | t036 =>
      exact BellmanTopPairingTrace036StartViolationProvider.objectStartViolationMarginCert_of_trace036
        htrace

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationProviders
