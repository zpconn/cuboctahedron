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
        Cuboctahedron.Generated.SmallSample.nonIdBadDirection000)]

def nonIdTransportTree : NonIdCoverageTree :=
  NonIdCoverageTree.branch (rankInterval 814)
    [NonIdCoverageTree.leaf (rankInterval 814)
      (NonIdCoverageLeaf.transported
        Cuboctahedron.Generated.CanonicalSample.nonidentityTransport)]

theorem nonIdRawTree_check :
    checkNonIdCoverageTree nonIdRawTree = true := by
  unfold checkNonIdCoverageTree checkNonIdCoverageTreeFuel nonIdRawTree
    coverageTreeFuel rankInterval
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    checkNonIdCoverageLeaf,
    checkNonIdCoverageLeafPayload, checkRankInterval,
    nonIdRawCoveredRank,
    Cuboctahedron.Generated.SmallSample.nonIdBadDirection000_check]
  norm_num [numPairWords, NonIdCoverageTree.interval]

theorem nonIdTransportTree_check :
    checkNonIdCoverageTree nonIdTransportTree = true := by
  unfold checkNonIdCoverageTree checkNonIdCoverageTreeFuel
    nonIdTransportTree coverageTreeFuel rankInterval
  simp [checkNonIdCoverageTreeFuel, checkNonIdCoverageChildrenWith,
    checkNonIdCoverageLeaf,
    checkNonIdCoverageLeafPayload, checkRankInterval,
    nonIdTransportCoveredRank,
    Cuboctahedron.Generated.CanonicalSample.nonidentity_transport_check]
  norm_num [numPairWords, NonIdCoverageTree.interval]

theorem nonIdRawTree_sound :
    exists cert : NonIdCert,
      checkNonIdCoveredRank 1 cert = true /\ checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound nonIdRawTree_check
    (r := ⟨1, by decide⟩) (by
      simp [NonIdCoverageTree.interval, RankInterval.ContainsPairRank,
        nonIdRawTree, rankInterval])

theorem nonIdTransportTree_sound :
    exists cert : NonIdCert,
      checkNonIdCoveredRank 814 cert = true /\ checkNonIdCert cert = true :=
  checkNonIdCoverageTree_sound nonIdTransportTree_check
    (r := ⟨814, by decide⟩) (by
      simp [NonIdCoverageTree.interval, RankInterval.ContainsPairRank,
        nonIdTransportTree, rankInterval])

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
          Cuboctahedron.Generated.SmallSample.translationBadDirection000)]]

def translationTransportTree : TranslationCoverageTree :=
  TranslationCoverageTree.rankBranch (caseBox 815 50)
    [TranslationCoverageTree.maskBranch (caseBox 815 50)
      [TranslationCoverageTree.leaf (caseBox 815 50)
        (TranslationCoverageLeaf.transported
          Cuboctahedron.Generated.CanonicalSample.translationTransport)]]

theorem translationRawTree_check :
    checkTranslationCoverageTree translationRawTree = true := by
  unfold checkTranslationCoverageTree checkTranslationCoverageTreeFuel
    translationRawTree coverageTreeFuel caseBox
  simp [checkTranslationCoverageTreeFuel,
    checkTranslationRankChildrenWith, checkTranslationMaskChildrenWith,
    checkTranslationCoverageLeaf, checkTranslationCoverageLeafPayload,
    checkTranslationCaseBox, translationRawCase,
    translationRawCoveredCase,
    Cuboctahedron.Generated.SmallSample.translationBadDirection000_check]
  norm_num [numPairWords, numSignMasks, TranslationCoverageTree.box]

theorem translationTransportTree_check :
    checkTranslationCoverageTree translationTransportTree = true := by
  unfold checkTranslationCoverageTree checkTranslationCoverageTreeFuel
    translationTransportTree coverageTreeFuel caseBox
  simp [checkTranslationCoverageTreeFuel,
    checkTranslationRankChildrenWith, checkTranslationMaskChildrenWith,
    checkTranslationCoverageLeaf, checkTranslationCoverageLeafPayload,
    checkTranslationCaseBox, translationTransportCase,
    translationTransportCoveredCase,
    Cuboctahedron.Generated.CanonicalSample.translation_transport_check]
  norm_num [numPairWords, numSignMasks, TranslationCoverageTree.box]

theorem translationRawTree_sound :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := 0, signMask := 0 } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTree_sound translationRawTree_check
    (r := ⟨0, by decide⟩) (mask := ⟨0, by decide⟩) (by
      simp [TranslationCoverageTree.box, TranslationCaseBox.Contains,
        translationRawTree, caseBox])

theorem translationTransportTree_sound :
    exists cert : TranslationCert,
      checkTranslationCoveredCase
          { pairRank := 815, signMask := 50 } cert = true /\
        checkTranslationCert cert = true :=
  checkTranslationCoverageTree_sound translationTransportTree_check
    (r := ⟨815, by decide⟩) (mask := ⟨50, by decide⟩) (by
      simp [TranslationCoverageTree.box, TranslationCaseBox.Contains,
        translationTransportTree, caseBox])

#check checkNonIdCoverageTree_sound
#check checkTranslationCoverageTree_sound
#check nonIdTransportTree_sound
#check translationTransportTree_sound

end Cuboctahedron.Generated.CoverageTreeSample
