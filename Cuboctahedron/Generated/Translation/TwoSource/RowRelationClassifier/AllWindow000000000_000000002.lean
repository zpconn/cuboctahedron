import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000000_000000001
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002

/-!
Generated root for bounded row-relation classifier shards.

This module composes small Prop-level interval theorems.  It contains no
certificate literals and performs no Boolean search.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000002

open Cuboctahedron.Generated.Coverage

theorem rowRelationClassifierGoodCoverage :
    TranslationGoodCoverageOnRange 0 2 :=
  (CoversInterval.concat
    _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000000_000000001.rowRelationClassifierGoodCoverage
    _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage)

end Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000002
