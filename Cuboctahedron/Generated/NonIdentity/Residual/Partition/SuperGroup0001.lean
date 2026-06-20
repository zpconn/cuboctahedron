import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0016
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0017
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0018
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0019
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0020
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0021
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0022
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0023
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0024
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0025
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0026
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0027
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0028
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0029
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0030
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0031

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0001

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 1
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 108128
def superGroupFirstRank : Nat := 2522558
def superGroupLastRank : Nat := 4993926

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0016.groupCoversRank rank = true then true else
    if Group0017.groupCoversRank rank = true then true else
    if Group0018.groupCoversRank rank = true then true else
    if Group0019.groupCoversRank rank = true then true else
    if Group0020.groupCoversRank rank = true then true else
    if Group0021.groupCoversRank rank = true then true else
    if Group0022.groupCoversRank rank = true then true else
    if Group0023.groupCoversRank rank = true then true else
    if Group0024.groupCoversRank rank = true then true else
    if Group0025.groupCoversRank rank = true then true else
    if Group0026.groupCoversRank rank = true then true else
    if Group0027.groupCoversRank rank = true then true else
    if Group0028.groupCoversRank rank = true then true else
    if Group0029.groupCoversRank rank = true then true else
    if Group0030.groupCoversRank rank = true then true else
    if Group0031.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0016.groupCoversRank rank = true
  · exact Group0016.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0017.groupCoversRank rank = true
    · exact Group0017.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0018.groupCoversRank rank = true
      · exact Group0018.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0019.groupCoversRank rank = true
        · exact Group0019.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0020.groupCoversRank rank = true
          · exact Group0020.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0021.groupCoversRank rank = true
            · exact Group0021.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0022.groupCoversRank rank = true
              · exact Group0022.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0023.groupCoversRank rank = true
                · exact Group0023.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0024.groupCoversRank rank = true
                  · exact Group0024.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0025.groupCoversRank rank = true
                    · exact Group0025.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0026.groupCoversRank rank = true
                      · exact Group0026.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0027.groupCoversRank rank = true
                        · exact Group0027.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0028.groupCoversRank rank = true
                          · exact Group0028.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0029.groupCoversRank rank = true
                            · exact Group0029.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0030.groupCoversRank rank = true
                              · exact Group0030.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0031.groupCoversRank rank = true
                                · exact Group0031.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0016.groupCoversRank rank = true
  · exact Group0016.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0017.groupCoversRank rank = true
    · exact Group0017.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0018.groupCoversRank rank = true
      · exact Group0018.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0019.groupCoversRank rank = true
        · exact Group0019.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0020.groupCoversRank rank = true
          · exact Group0020.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0021.groupCoversRank rank = true
            · exact Group0021.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0022.groupCoversRank rank = true
              · exact Group0022.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0023.groupCoversRank rank = true
                · exact Group0023.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0024.groupCoversRank rank = true
                  · exact Group0024.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0025.groupCoversRank rank = true
                    · exact Group0025.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0026.groupCoversRank rank = true
                      · exact Group0026.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0027.groupCoversRank rank = true
                        · exact Group0027.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0028.groupCoversRank rank = true
                          · exact Group0028.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0029.groupCoversRank rank = true
                            · exact Group0029.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0030.groupCoversRank rank = true
                              · exact Group0030.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0031.groupCoversRank rank = true
                                · exact Group0031.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0001
