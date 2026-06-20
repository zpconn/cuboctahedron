import Cuboctahedron.Generated.Coverage.ComputableClassifiers
import Cuboctahedron.Generated.PublicEvidence.All

/-!
Safe generated aggregate import.

This module intentionally does not import the legacy generated-data aggregate
path.  The old path pulled in packed/compact pilot data, generated samples, and
residual/Farkas aggregate modules; broad builds of that path have caused OOM on
the development machine.

The default generated surface is now the small computable-classifier bridge plus
the public interval evidence namespace. Future generated public coverage should
add memory-safe semantic API modules here only after they build independently.
-/

namespace Cuboctahedron.Generated

def legacyGeneratedAggregateDisabled : True :=
  trivial

#check Cuboctahedron.Generated.Coverage.NonIdComputableClassifier
#check Cuboctahedron.Generated.Coverage.TranslationComputableClassifier

end Cuboctahedron.Generated
