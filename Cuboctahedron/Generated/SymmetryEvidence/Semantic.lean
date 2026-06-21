import Cuboctahedron.Generated.PublicEvidence.BoundedRange

/-!
Semantic bridge for the symmetry evidence architecture.

The generated Phase 7 pilot files prove that the interval composition
architecture builds.  This module records the real semantic shape that Phase 7
must hand to later public coverage assembly, while keeping heavy proof-carrying
certificate leaves outside normal package imports.
-/

namespace Cuboctahedron.Generated.SymmetryEvidence

structure SemanticBoundedEvidence (lo hi : Nat) where
  nonidentityClassifier : Coverage.NonIdComputableClassifier
  translationClassifier : Coverage.TranslationComputableClassifier
  nonidentity :
    Coverage.CoversInterval
      (NonIdentity.Coverage.ResidualRankCertifiedBy
        nonidentityClassifier) lo hi
  translation :
    Coverage.CoversInterval
      (Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) lo hi

namespace SemanticBoundedEvidence

def fromPublic
    {lo hi : Nat}
    (verified :
      Cuboctahedron.Generated.PublicEvidence.VerifiedBoundedRange lo hi) :
    SemanticBoundedEvidence lo hi where
  nonidentityClassifier := verified.nonidentityClassifier
  translationClassifier := verified.translationClassifier
  nonidentity := verified.nonidentity
  translation := verified.translation

def toPublic
    {lo hi : Nat}
    (verified : SemanticBoundedEvidence lo hi) :
    Cuboctahedron.Generated.PublicEvidence.VerifiedBoundedRange lo hi where
  nonidentityClassifier := verified.nonidentityClassifier
  translationClassifier := verified.translationClassifier
  nonidentity := verified.nonidentity
  translation := verified.translation

end SemanticBoundedEvidence

def currentSemanticStartRank : Nat :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedStartRank

def currentSemanticEndRank : Nat :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedEndRank

def currentSemanticRankCount : Nat :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedRankCount

def currentSemanticCompleteForInterval : Bool :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedCompleteForInterval

def currentSemanticVerifiedRootPath : String :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedVerifiedRootPath

def currentSemanticWrapperRootPath : String :=
  "evidence/symmetry_semantic_shards/Shard000000000_000000008/VerifiedRoot.lean"

theorem currentSemanticRange_nonnegative :
    currentSemanticStartRank <= currentSemanticEndRank :=
  Cuboctahedron.Generated.PublicEvidence.currentBoundedRange_nonnegative

end Cuboctahedron.Generated.SymmetryEvidence
