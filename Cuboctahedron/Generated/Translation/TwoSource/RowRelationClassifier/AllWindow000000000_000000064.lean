import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000000_000000016
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000016_000000032
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000032_000000048
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000048_000000064

/-!
Generated root for bounded row-relation classifier shards.

This module composes small Prop-level interval theorems.  It contains no
certificate literals and performs no Boolean search.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000064

open Cuboctahedron.Generated.Coverage

theorem rowRelationClassifierGoodCoverage :
    TranslationGoodCoverageOnRange 0 64 :=
  (CoversInterval.concat
    (CoversInterval.concat
          _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000000_000000016.rowRelationClassifierGoodCoverage
          _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000016_000000032.rowRelationClassifierGoodCoverage)
    (CoversInterval.concat
          _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000032_000000048.rowRelationClassifierGoodCoverage
          _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Group000000048_000000064.rowRelationClassifierGoodCoverage))

end Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000064
