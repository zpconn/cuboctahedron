import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0080
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0081
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0082
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0083
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0084
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0085
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0086
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0087
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0088
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0089
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0090
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0091
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0092
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0093
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0094
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0095

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0005

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 5
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105474
def superGroupFirstRank : Nat := 15876682
def superGroupLastRank : Nat := 22477957

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0080.groupCoversRank rank = true then true else
    if Group0081.groupCoversRank rank = true then true else
    if Group0082.groupCoversRank rank = true then true else
    if Group0083.groupCoversRank rank = true then true else
    if Group0084.groupCoversRank rank = true then true else
    if Group0085.groupCoversRank rank = true then true else
    if Group0086.groupCoversRank rank = true then true else
    if Group0087.groupCoversRank rank = true then true else
    if Group0088.groupCoversRank rank = true then true else
    if Group0089.groupCoversRank rank = true then true else
    if Group0090.groupCoversRank rank = true then true else
    if Group0091.groupCoversRank rank = true then true else
    if Group0092.groupCoversRank rank = true then true else
    if Group0093.groupCoversRank rank = true then true else
    if Group0094.groupCoversRank rank = true then true else
    if Group0095.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0080.groupCoversRank rank = true
  · exact Group0080.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0081.groupCoversRank rank = true
    · exact Group0081.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0082.groupCoversRank rank = true
      · exact Group0082.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0083.groupCoversRank rank = true
        · exact Group0083.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0084.groupCoversRank rank = true
          · exact Group0084.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0085.groupCoversRank rank = true
            · exact Group0085.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0086.groupCoversRank rank = true
              · exact Group0086.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0087.groupCoversRank rank = true
                · exact Group0087.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0088.groupCoversRank rank = true
                  · exact Group0088.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0089.groupCoversRank rank = true
                    · exact Group0089.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0090.groupCoversRank rank = true
                      · exact Group0090.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0091.groupCoversRank rank = true
                        · exact Group0091.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0092.groupCoversRank rank = true
                          · exact Group0092.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0093.groupCoversRank rank = true
                            · exact Group0093.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0094.groupCoversRank rank = true
                              · exact Group0094.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0095.groupCoversRank rank = true
                                · exact Group0095.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0080.groupCoversRank rank = true
  · exact Group0080.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0081.groupCoversRank rank = true
    · exact Group0081.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0082.groupCoversRank rank = true
      · exact Group0082.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0083.groupCoversRank rank = true
        · exact Group0083.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0084.groupCoversRank rank = true
          · exact Group0084.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0085.groupCoversRank rank = true
            · exact Group0085.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0086.groupCoversRank rank = true
              · exact Group0086.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0087.groupCoversRank rank = true
                · exact Group0087.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0088.groupCoversRank rank = true
                  · exact Group0088.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0089.groupCoversRank rank = true
                    · exact Group0089.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0090.groupCoversRank rank = true
                      · exact Group0090.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0091.groupCoversRank rank = true
                        · exact Group0091.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0092.groupCoversRank rank = true
                          · exact Group0092.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0093.groupCoversRank rank = true
                            · exact Group0093.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0094.groupCoversRank rank = true
                              · exact Group0094.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0095.groupCoversRank rank = true
                                · exact Group0095.groupExistsCheckedRank rank h15
                                · simp [h15] at hcover

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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0005
