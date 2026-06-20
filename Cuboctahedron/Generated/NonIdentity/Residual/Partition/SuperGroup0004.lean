import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0064
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0065
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0066
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0067
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0068
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0069
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0070
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0071
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0072
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0073
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0074
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0075
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0076
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0077
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0078
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0079

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0004

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 4
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 104723
def superGroupFirstRank : Nat := 9977178
def superGroupLastRank : Nat := 15876674

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0064.groupCoversRank rank = true then true else
    if Group0065.groupCoversRank rank = true then true else
    if Group0066.groupCoversRank rank = true then true else
    if Group0067.groupCoversRank rank = true then true else
    if Group0068.groupCoversRank rank = true then true else
    if Group0069.groupCoversRank rank = true then true else
    if Group0070.groupCoversRank rank = true then true else
    if Group0071.groupCoversRank rank = true then true else
    if Group0072.groupCoversRank rank = true then true else
    if Group0073.groupCoversRank rank = true then true else
    if Group0074.groupCoversRank rank = true then true else
    if Group0075.groupCoversRank rank = true then true else
    if Group0076.groupCoversRank rank = true then true else
    if Group0077.groupCoversRank rank = true then true else
    if Group0078.groupCoversRank rank = true then true else
    if Group0079.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0064.groupCoversRank rank = true
  · exact Group0064.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0065.groupCoversRank rank = true
    · exact Group0065.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0066.groupCoversRank rank = true
      · exact Group0066.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0067.groupCoversRank rank = true
        · exact Group0067.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0068.groupCoversRank rank = true
          · exact Group0068.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0069.groupCoversRank rank = true
            · exact Group0069.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0070.groupCoversRank rank = true
              · exact Group0070.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0071.groupCoversRank rank = true
                · exact Group0071.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0072.groupCoversRank rank = true
                  · exact Group0072.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0073.groupCoversRank rank = true
                    · exact Group0073.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0074.groupCoversRank rank = true
                      · exact Group0074.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0075.groupCoversRank rank = true
                        · exact Group0075.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0076.groupCoversRank rank = true
                          · exact Group0076.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0077.groupCoversRank rank = true
                            · exact Group0077.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0078.groupCoversRank rank = true
                              · exact Group0078.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0079.groupCoversRank rank = true
                                · exact Group0079.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0064.groupCoversRank rank = true
  · exact Group0064.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0065.groupCoversRank rank = true
    · exact Group0065.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0066.groupCoversRank rank = true
      · exact Group0066.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0067.groupCoversRank rank = true
        · exact Group0067.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0068.groupCoversRank rank = true
          · exact Group0068.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0069.groupCoversRank rank = true
            · exact Group0069.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0070.groupCoversRank rank = true
              · exact Group0070.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0071.groupCoversRank rank = true
                · exact Group0071.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0072.groupCoversRank rank = true
                  · exact Group0072.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0073.groupCoversRank rank = true
                    · exact Group0073.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0074.groupCoversRank rank = true
                      · exact Group0074.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0075.groupCoversRank rank = true
                        · exact Group0075.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0076.groupCoversRank rank = true
                          · exact Group0076.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0077.groupCoversRank rank = true
                            · exact Group0077.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0078.groupCoversRank rank = true
                              · exact Group0078.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0079.groupCoversRank rank = true
                                · exact Group0079.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0004
