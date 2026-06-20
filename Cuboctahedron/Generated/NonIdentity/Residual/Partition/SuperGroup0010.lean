import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0160
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0161
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0162
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0163
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0164
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0165
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0166
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0167
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0168
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0169
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0170
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0171
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0172
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0173
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0174
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0175

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0010

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 10
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106363
def superGroupFirstRank : Nat := 44667206
def superGroupLastRank : Nat := 50264795

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0160.groupCoversRank rank = true then true else
    if Group0161.groupCoversRank rank = true then true else
    if Group0162.groupCoversRank rank = true then true else
    if Group0163.groupCoversRank rank = true then true else
    if Group0164.groupCoversRank rank = true then true else
    if Group0165.groupCoversRank rank = true then true else
    if Group0166.groupCoversRank rank = true then true else
    if Group0167.groupCoversRank rank = true then true else
    if Group0168.groupCoversRank rank = true then true else
    if Group0169.groupCoversRank rank = true then true else
    if Group0170.groupCoversRank rank = true then true else
    if Group0171.groupCoversRank rank = true then true else
    if Group0172.groupCoversRank rank = true then true else
    if Group0173.groupCoversRank rank = true then true else
    if Group0174.groupCoversRank rank = true then true else
    if Group0175.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0160.groupCoversRank rank = true
  · exact Group0160.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0161.groupCoversRank rank = true
    · exact Group0161.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0162.groupCoversRank rank = true
      · exact Group0162.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0163.groupCoversRank rank = true
        · exact Group0163.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0164.groupCoversRank rank = true
          · exact Group0164.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0165.groupCoversRank rank = true
            · exact Group0165.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0166.groupCoversRank rank = true
              · exact Group0166.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0167.groupCoversRank rank = true
                · exact Group0167.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0168.groupCoversRank rank = true
                  · exact Group0168.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0169.groupCoversRank rank = true
                    · exact Group0169.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0170.groupCoversRank rank = true
                      · exact Group0170.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0171.groupCoversRank rank = true
                        · exact Group0171.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0172.groupCoversRank rank = true
                          · exact Group0172.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0173.groupCoversRank rank = true
                            · exact Group0173.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0174.groupCoversRank rank = true
                              · exact Group0174.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0175.groupCoversRank rank = true
                                · exact Group0175.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0160.groupCoversRank rank = true
  · exact Group0160.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0161.groupCoversRank rank = true
    · exact Group0161.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0162.groupCoversRank rank = true
      · exact Group0162.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0163.groupCoversRank rank = true
        · exact Group0163.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0164.groupCoversRank rank = true
          · exact Group0164.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0165.groupCoversRank rank = true
            · exact Group0165.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0166.groupCoversRank rank = true
              · exact Group0166.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0167.groupCoversRank rank = true
                · exact Group0167.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0168.groupCoversRank rank = true
                  · exact Group0168.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0169.groupCoversRank rank = true
                    · exact Group0169.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0170.groupCoversRank rank = true
                      · exact Group0170.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0171.groupCoversRank rank = true
                        · exact Group0171.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0172.groupCoversRank rank = true
                          · exact Group0172.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0173.groupCoversRank rank = true
                            · exact Group0173.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0174.groupCoversRank rank = true
                              · exact Group0174.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0175.groupCoversRank rank = true
                                · exact Group0175.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0010
