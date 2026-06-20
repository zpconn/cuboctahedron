import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0208
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0209
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0210
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0211
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0212
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0213
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0214
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0215
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0216
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0217
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0218
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0219
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0220
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0221
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0222
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0223

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0013

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 13
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106299
def superGroupFirstRank : Nat := 62001092
def superGroupLastRank : Nat := 67013644

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0208.groupCoversRank rank = true then true else
    if Group0209.groupCoversRank rank = true then true else
    if Group0210.groupCoversRank rank = true then true else
    if Group0211.groupCoversRank rank = true then true else
    if Group0212.groupCoversRank rank = true then true else
    if Group0213.groupCoversRank rank = true then true else
    if Group0214.groupCoversRank rank = true then true else
    if Group0215.groupCoversRank rank = true then true else
    if Group0216.groupCoversRank rank = true then true else
    if Group0217.groupCoversRank rank = true then true else
    if Group0218.groupCoversRank rank = true then true else
    if Group0219.groupCoversRank rank = true then true else
    if Group0220.groupCoversRank rank = true then true else
    if Group0221.groupCoversRank rank = true then true else
    if Group0222.groupCoversRank rank = true then true else
    if Group0223.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0208.groupCoversRank rank = true
  · exact Group0208.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0209.groupCoversRank rank = true
    · exact Group0209.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0210.groupCoversRank rank = true
      · exact Group0210.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0211.groupCoversRank rank = true
        · exact Group0211.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0212.groupCoversRank rank = true
          · exact Group0212.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0213.groupCoversRank rank = true
            · exact Group0213.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0214.groupCoversRank rank = true
              · exact Group0214.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0215.groupCoversRank rank = true
                · exact Group0215.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0216.groupCoversRank rank = true
                  · exact Group0216.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0217.groupCoversRank rank = true
                    · exact Group0217.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0218.groupCoversRank rank = true
                      · exact Group0218.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0219.groupCoversRank rank = true
                        · exact Group0219.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0220.groupCoversRank rank = true
                          · exact Group0220.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0221.groupCoversRank rank = true
                            · exact Group0221.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0222.groupCoversRank rank = true
                              · exact Group0222.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0223.groupCoversRank rank = true
                                · exact Group0223.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0208.groupCoversRank rank = true
  · exact Group0208.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0209.groupCoversRank rank = true
    · exact Group0209.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0210.groupCoversRank rank = true
      · exact Group0210.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0211.groupCoversRank rank = true
        · exact Group0211.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0212.groupCoversRank rank = true
          · exact Group0212.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0213.groupCoversRank rank = true
            · exact Group0213.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0214.groupCoversRank rank = true
              · exact Group0214.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0215.groupCoversRank rank = true
                · exact Group0215.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0216.groupCoversRank rank = true
                  · exact Group0216.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0217.groupCoversRank rank = true
                    · exact Group0217.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0218.groupCoversRank rank = true
                      · exact Group0218.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0219.groupCoversRank rank = true
                        · exact Group0219.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0220.groupCoversRank rank = true
                          · exact Group0220.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0221.groupCoversRank rank = true
                            · exact Group0221.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0222.groupCoversRank rank = true
                              · exact Group0222.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0223.groupCoversRank rank = true
                                · exact Group0223.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0013
