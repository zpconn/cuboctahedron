import Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000000_000000001
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000002_000000003
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000003_000000004
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000004_000000005
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000005_000000006
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000006_000000007
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000007_000000008
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000008_000000009
import Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000009_000000010

/-!
Generated root for bounded row-relation classifier shards.

This module composes small Prop-level interval theorems.  It contains no
certificate literals and performs no Boolean search.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000010

open Cuboctahedron.Generated.Coverage

theorem rowRelationClassifierGoodCoverage :
    TranslationGoodCoverageOnRange 0 10 :=
  (CoversInterval.concat
    (CoversInterval.concat
          (CoversInterval.concat
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000000_000000001.rowRelationClassifierGoodCoverage
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002.rowRelationClassifierGoodCoverage)
          (CoversInterval.concat
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000002_000000003.rowRelationClassifierGoodCoverage
                  (CoversInterval.concat
                            _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000003_000000004.rowRelationClassifierGoodCoverage
                            _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000004_000000005.rowRelationClassifierGoodCoverage)))
    (CoversInterval.concat
          (CoversInterval.concat
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000005_000000006.rowRelationClassifierGoodCoverage
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000006_000000007.rowRelationClassifierGoodCoverage)
          (CoversInterval.concat
                  _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000007_000000008.rowRelationClassifierGoodCoverage
                  (CoversInterval.concat
                            _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000008_000000009.rowRelationClassifierGoodCoverage
                            _root_.Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000009_000000010.rowRelationClassifierGoodCoverage))))

end Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000010
