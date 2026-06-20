import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0304
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0305
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0306

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0019

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 19
def superGroupCount : Nat := 3
def superGroupChunkCount : Nat := 734
def superGroupCertCount : Nat := 20271
def superGroupFirstRank : Nat := 95941169
def superGroupLastRank : Nat := 97296039

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0304.groupCoversRank rank = true then true else
    if Group0305.groupCoversRank rank = true then true else
    if Group0306.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0304.groupCoversRank rank = true
  · exact Group0304.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0305.groupCoversRank rank = true
    · exact Group0305.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0306.groupCoversRank rank = true
      · exact Group0306.groupCoversRank_sound h2
      · simp [h2] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0304.groupCoversRank rank = true
  · exact Group0304.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0305.groupCoversRank rank = true
    · exact Group0305.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0306.groupCoversRank rank = true
      · exact Group0306.groupExistsCheckedRank rank h2
      · simp [h2] at hcover

noncomputable def superGroupCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    CheckedNonIdRank :=
  Classical.choose (superGroupExistsCheckedRank rank hcover)

theorem superGroupCheckedRank_rank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    (superGroupCheckedRank rank hcover).rank = rank :=
  Classical.choose_spec (superGroupExistsCheckedRank rank hcover)

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0019
