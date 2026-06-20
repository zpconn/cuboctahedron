import Cuboctahedron.Generated.ExhaustiveCoverage

/-!
Public interval evidence namespace.

This is the active generated-evidence namespace for the reset
backend.  Full evidence modules should export small semantic
interval theorems, not packed byte blobs or global data tables.

Heavy proof-carrying shard leaves are emitted outside this Lake
package source tree under `evidence/public_interval_shards/` and
checked serially by file path.
-/

namespace Cuboctahedron.Generated.PublicEvidence

def activeBackendName : String :=
  "public_interval_evidence"

end Cuboctahedron.Generated.PublicEvidence
