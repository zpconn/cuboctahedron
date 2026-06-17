import Cuboctahedron.Generated.CanonicalSample

/-!
Generated representative prefix-state coverage trees for Step 14E.3.

These small trees exercise both direct real-certificate leaves and
canonical-transport leaves.  They are intentionally representative data, not
the exhaustive search tree.
-/

namespace Cuboctahedron.Generated.CoverageTreeSample

set_option maxHeartbeats 1600000
set_option maxRecDepth 10000
set_option linter.unusedSimpArgs false

def rankInterval (rank : Nat) : RankInterval where
  startRank := rank
  endRank := rank + 1

def caseBox (rank mask : Nat) : TranslationCaseBox where
  startRank := rank
  endRank := rank + 1
  startMask := mask
  endMask := mask + 1

def nonIdRawCoverage : CanonicalPairCoverage :=
  { rawRank := 1, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩, canonical := { rank := 1, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

def nonIdTransportCoverage : CanonicalPairCoverage :=
  { rawRank := 814, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.d1m1, PairId.dm11, PairId.d1m1], by decide⟩, canonical := { rank := 1, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.dm11, PairId.d1m1, PairId.dm11], by decide⟩ }, rawToCanonicalTransformId := 1, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := true }, canonicalToRawTransformId := 1, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := true } }

def translationRawCoverage : CanonicalTranslationCoverage :=
  { rawRank := 0, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, rawMask := ⟨0, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨0, by decide⟩ }, rawToCanonicalTransformId := 0, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := false }, canonicalToRawTransformId := 0, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := false } }

def translationTransportCoverage :
    CanonicalTranslationCoverage :=
  { rawRank := 815, rawWord := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d1m1], by decide⟩, rawMask := ⟨50, by decide⟩, canonical := { rank := 0, word := ⟨#[PairId.x, PairId.y, PairId.y, PairId.z, PairId.z, PairId.d111, PairId.d111, PairId.d11m, PairId.d11m, PairId.d1m1, PairId.d1m1, PairId.dm11, PairId.dm11], by decide⟩, mask := ⟨0, by decide⟩ }, rawToCanonicalTransformId := 1, rawToCanonicalTransform := { swapYZ := false, negY := false, negZ := true }, canonicalToRawTransformId := 1, canonicalToRawTransform := { swapYZ := false, negY := false, negZ := true } }

theorem nonIdRawCoverage_check :
    checkCanonicalPairCoverage nonIdRawCoverage = true := by
  decide

theorem nonIdTransportCoverage_check :
    checkCanonicalPairCoverage nonIdTransportCoverage = true := by
  decide

theorem translationRawCoverage_check :
    checkCanonicalTranslationCoverage translationRawCoverage = true := by
  decide

theorem translationTransportCoverage_check :
    checkCanonicalTranslationCoverage translationTransportCoverage = true := by
  decide

theorem nonIdRawCoveredRank :
    checkNonIdCoveredRank 1
      Cuboctahedron.Generated.SmallSample.nonIdBadDirection000 = true := by
  decide

theorem nonIdTransportCoveredRank :
    checkNonIdCoveredRank 814
      Cuboctahedron.Generated.CanonicalSample.nonidentityTransport.raw = true := by
  decide

def nonIdRawTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch (rankInterval 1)
    [NonIdCoverageTree.leaf (rankInterval 1)
      (NonIdCoverageLeaf.raw
        nonIdRawCoverage
        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000)]

def nonIdTransportTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch (rankInterval 1)
    [NonIdCoverageTree.leaf (rankInterval 1)
      (NonIdCoverageLeaf.transported
        nonIdTransportCoverage
        Cuboctahedron.Generated.CanonicalSample.nonidentityTransport)]

theorem nonIdRawLeaf_check :
    checkNonIdCoverageLeaf (rankInterval 1)
      (NonIdCoverageLeaf.raw
        nonIdRawCoverage
        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000) = true := by
  simp only [checkNonIdCoverageLeaf, checkNonIdCoverageLeafPayload]
  rw [nonIdRawCoverage_check]
  simp [rankInterval, checkRankInterval,
    checkRankIntervalContainsCanonicalPairCoverage,
    nonIdRawCoverage, nonIdRawCoveredRank,
    Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check]
  norm_num [numPairWords]

theorem nonIdTransportLeaf_check :
    checkNonIdCoverageLeaf (rankInterval 1)
      (NonIdCoverageLeaf.transported
        nonIdTransportCoverage
        Cuboctahedron.Generated.CanonicalSample.nonidentityTransport) = true := by
  simp only [checkNonIdCoverageLeaf, checkNonIdCoverageLeafPayload]
  rw [nonIdTransportCoverage_check]
  simp [rankInterval, checkRankInterval,
    checkRankIntervalContainsCanonicalPairCoverage,
    nonIdTransportCoverage, nonIdTransportCoveredRank,
    Cuboctahedron.Generated.CanonicalSample.nonidentity_transport_check]
  norm_num [numPairWords]

theorem nonIdRawTree_check :
    checkNonIdCoverageTree nonIdRawTree = true := by
  unfold checkNonIdCoverageTree nonIdRawTree coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel,
    checkNonIdCoverageChildrenWith, nonIdRawLeaf_check,
    checkRankInterval, NonIdCoverageTree.interval]
  norm_num [rankInterval, numPairWords]

theorem nonIdTransportTree_check :
    checkNonIdCoverageTree nonIdTransportTree = true := by
  unfold checkNonIdCoverageTree nonIdTransportTree coverageTreeFuel
  simp [checkNonIdCoverageTreeFuel,
    checkNonIdCoverageChildrenWith, nonIdTransportLeaf_check,
    checkRankInterval, NonIdCoverageTree.interval]
  norm_num [rankInterval, numPairWords]

theorem nonIdRawTree_containsCoverage :
    nonIdRawTree.ContainsPairCoverage nonIdRawCoverage := by
  unfold NonIdCoverageTree.ContainsPairCoverage nonIdRawTree
  simp [coverageTreeFuel, NonIdCoverageTree.ContainsPairCoverageFuel,
    NonIdCoverageLeaf.ContainsPairCoverage, rankInterval,
    RankInterval.ContainsCanonicalPairCoverage, nonIdRawCoverage]

theorem nonIdTransportTree_containsCoverage :
    nonIdTransportTree.ContainsPairCoverage nonIdTransportCoverage := by
  unfold NonIdCoverageTree.ContainsPairCoverage nonIdTransportTree
  simp [coverageTreeFuel, NonIdCoverageTree.ContainsPairCoverageFuel,
    NonIdCoverageLeaf.ContainsPairCoverage, rankInterval,
    RankInterval.ContainsCanonicalPairCoverage, nonIdTransportCoverage]

theorem nonIdRawTree_sound :
    exists cert : NonIdCert,
      checkNonIdCoveredRank nonIdRawCoverage.rawRank cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound nonIdRawTree_check
    nonIdRawTree_containsCoverage

theorem nonIdTransportTree_sound :
    exists cert : NonIdCert,
      checkNonIdCoveredRank nonIdTransportCoverage.rawRank cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound nonIdTransportTree_check
    nonIdTransportTree_containsCoverage

theorem nonIdTransportTree_canonical_sound :
    exists cert : NonIdCert,
      checkNonIdCoveredRank nonIdTransportCoverage.rawRank cert = true /\
        checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound nonIdTransportTree_check
    nonIdTransportTree_containsCoverage

def translationRawCase : GeneratedTranslationCase where
  pairRank := 0
  signMask := 0

def translationTransportCase : GeneratedTranslationCase where
  pairRank := 815
  signMask := 50

theorem translationRawCoveredCase :
    checkTranslationCoveredCase { pairRank := 0, signMask := 0 }
      Cuboctahedron.Generated.SmallSample.translationBadDirection000 = true := by
  decide

theorem translationTransportCoveredCase :
    checkTranslationCoveredCase { pairRank := 815, signMask := 50 }
      Cuboctahedron.Generated.CanonicalSample.translationTransport.raw = true := by
  decide

def translationRawTree : TranslationCoverageTree :=
  TranslationCoverageTree.rankBranch (caseBox 0 0)
    [TranslationCoverageTree.maskBranch (caseBox 0 0)
      [TranslationCoverageTree.leaf (caseBox 0 0)
        (TranslationCoverageLeaf.raw
          translationRawCoverage
          Cuboctahedron.Generated.SmallSample.translationBadDirection000)]]

def translationTransportTree : TranslationCoverageTree :=
  TranslationCoverageTree.rankBranch (caseBox 0 0)
    [TranslationCoverageTree.maskBranch (caseBox 0 0)
      [TranslationCoverageTree.leaf (caseBox 0 0)
        (TranslationCoverageLeaf.transported
          translationTransportCoverage
          Cuboctahedron.Generated.CanonicalSample.translationTransport)]]

theorem translationRawLeaf_check :
    checkTranslationCoverageLeaf (caseBox 0 0)
      (TranslationCoverageLeaf.raw
        translationRawCoverage
        Cuboctahedron.Generated.SmallSample.translationBadDirection000) = true := by
  simp only [checkTranslationCoverageLeaf,
    checkTranslationCoverageLeafPayload]
  rw [translationRawCoverage_check]
  simp [caseBox, checkTranslationCaseBox,
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    translationRawCoverage, translationRawCoveredCase,
    Cuboctahedron.Generated.SmallSample.translationBadDirection000_check]
  norm_num [numPairWords, numSignMasks]

theorem translationTransportLeaf_check :
    checkTranslationCoverageLeaf (caseBox 0 0)
      (TranslationCoverageLeaf.transported
        translationTransportCoverage
        Cuboctahedron.Generated.CanonicalSample.translationTransport) = true := by
  simp only [checkTranslationCoverageLeaf,
    checkTranslationCoverageLeafPayload]
  rw [translationTransportCoverage_check]
  simp [caseBox, checkTranslationCaseBox,
    checkTranslationCaseBoxContainsCanonicalTranslationCoverage,
    translationTransportCoverage, translationTransportCoveredCase,
    Cuboctahedron.Generated.CanonicalSample.translation_transport_check]
  norm_num [numPairWords, numSignMasks]

theorem translationRawTree_check :
    checkTranslationCoverageTree translationRawTree = true := by
  unfold checkTranslationCoverageTree translationRawTree coverageTreeFuel
  simp [checkTranslationCoverageTreeFuel,
    checkTranslationRankChildrenWith,
    checkTranslationMaskChildrenWith, translationRawLeaf_check,
    checkTranslationCaseBox, TranslationCoverageTree.box]
  norm_num [caseBox, numPairWords, numSignMasks]

theorem translationTransportTree_check :
    checkTranslationCoverageTree translationTransportTree = true := by
  unfold checkTranslationCoverageTree translationTransportTree coverageTreeFuel
  simp [checkTranslationCoverageTreeFuel,
    checkTranslationRankChildrenWith,
    checkTranslationMaskChildrenWith, translationTransportLeaf_check,
    checkTranslationCaseBox, TranslationCoverageTree.box]
  norm_num [caseBox, numPairWords, numSignMasks]

theorem translationRawTree_containsCoverage :
    translationRawTree.ContainsTranslationCoverage translationRawCoverage := by
  unfold TranslationCoverageTree.ContainsTranslationCoverage
    translationRawTree
  simp [coverageTreeFuel,
    TranslationCoverageTree.ContainsTranslationCoverageFuel,
    TranslationCoverageLeaf.ContainsTranslationCoverage, caseBox,
    TranslationCaseBox.ContainsCanonicalTranslationCoverage,
    translationRawCoverage]

theorem translationTransportTree_containsCoverage :
    translationTransportTree.ContainsTranslationCoverage
      translationTransportCoverage := by
  unfold TranslationCoverageTree.ContainsTranslationCoverage
    translationTransportTree
  simp [coverageTreeFuel,
    TranslationCoverageTree.ContainsTranslationCoverageFuel,
    TranslationCoverageLeaf.ContainsTranslationCoverage, caseBox,
    TranslationCaseBox.ContainsCanonicalTranslationCoverage,
    translationTransportCoverage]

theorem translationRawTree_sound :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := translationRawCoverage.rawRank,
            signMask := translationRawCoverage.rawMask.val } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTree_sound translationRawTree_check
    translationRawTree_containsCoverage

theorem translationTransportTree_sound :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := translationTransportCoverage.rawRank,
            signMask := translationTransportCoverage.rawMask.val } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTree_sound translationTransportTree_check
    translationTransportTree_containsCoverage

theorem translationTransportTree_canonical_sound :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := translationTransportCoverage.rawRank,
            signMask := translationTransportCoverage.rawMask.val }
          cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTree_sound translationTransportTree_check
    translationTransportTree_containsCoverage

#check checkNonIdCoverageTree_sound
#check checkTranslationCoverageTree_sound
#check nonIdTransportTree_sound
#check nonIdTransportTree_canonical_sound
#check translationTransportTree_sound
#check translationTransportTree_canonical_sound

end Cuboctahedron.Generated.CoverageTreeSample
