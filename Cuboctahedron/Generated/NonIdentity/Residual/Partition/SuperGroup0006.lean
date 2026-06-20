import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0096
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0097
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0098
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0099
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0100
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0101
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0102
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0103
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0104
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0105
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0106
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0107
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0108
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0109
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0110
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0111

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0006

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 6
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105552
def superGroupFirstRank : Nat := 22477963
def superGroupLastRank : Nat := 26200858

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0096.groupCoversRank rank = true then true else
    if Group0097.groupCoversRank rank = true then true else
    if Group0098.groupCoversRank rank = true then true else
    if Group0099.groupCoversRank rank = true then true else
    if Group0100.groupCoversRank rank = true then true else
    if Group0101.groupCoversRank rank = true then true else
    if Group0102.groupCoversRank rank = true then true else
    if Group0103.groupCoversRank rank = true then true else
    if Group0104.groupCoversRank rank = true then true else
    if Group0105.groupCoversRank rank = true then true else
    if Group0106.groupCoversRank rank = true then true else
    if Group0107.groupCoversRank rank = true then true else
    if Group0108.groupCoversRank rank = true then true else
    if Group0109.groupCoversRank rank = true then true else
    if Group0110.groupCoversRank rank = true then true else
    if Group0111.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0096.groupCoversRank rank = true
  · exact Group0096.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0097.groupCoversRank rank = true
    · exact Group0097.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0098.groupCoversRank rank = true
      · exact Group0098.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0099.groupCoversRank rank = true
        · exact Group0099.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0100.groupCoversRank rank = true
          · exact Group0100.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0101.groupCoversRank rank = true
            · exact Group0101.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0102.groupCoversRank rank = true
              · exact Group0102.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0103.groupCoversRank rank = true
                · exact Group0103.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0104.groupCoversRank rank = true
                  · exact Group0104.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0105.groupCoversRank rank = true
                    · exact Group0105.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0106.groupCoversRank rank = true
                      · exact Group0106.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0107.groupCoversRank rank = true
                        · exact Group0107.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0108.groupCoversRank rank = true
                          · exact Group0108.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0109.groupCoversRank rank = true
                            · exact Group0109.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0110.groupCoversRank rank = true
                              · exact Group0110.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0111.groupCoversRank rank = true
                                · exact Group0111.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0096.groupCoversRank rank = true
  · exact Group0096.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0097.groupCoversRank rank = true
    · exact Group0097.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0098.groupCoversRank rank = true
      · exact Group0098.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0099.groupCoversRank rank = true
        · exact Group0099.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0100.groupCoversRank rank = true
          · exact Group0100.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0101.groupCoversRank rank = true
            · exact Group0101.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0102.groupCoversRank rank = true
              · exact Group0102.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0103.groupCoversRank rank = true
                · exact Group0103.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0104.groupCoversRank rank = true
                  · exact Group0104.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0105.groupCoversRank rank = true
                    · exact Group0105.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0106.groupCoversRank rank = true
                      · exact Group0106.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0107.groupCoversRank rank = true
                        · exact Group0107.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0108.groupCoversRank rank = true
                          · exact Group0108.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0109.groupCoversRank rank = true
                            · exact Group0109.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0110.groupCoversRank rank = true
                              · exact Group0110.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0111.groupCoversRank rank = true
                                · exact Group0111.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0006
