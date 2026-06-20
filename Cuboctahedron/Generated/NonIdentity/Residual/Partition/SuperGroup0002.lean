import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0032
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0033
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0034
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0035
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0036
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0037
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0038
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0039
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0040
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0041
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0042
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0043
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0044
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0045
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0046
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0047

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0002

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 2
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 108056
def superGroupFirstRank : Nat := 4993938
def superGroupLastRank : Nat := 7416617

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0032.groupCoversRank rank = true then true else
    if Group0033.groupCoversRank rank = true then true else
    if Group0034.groupCoversRank rank = true then true else
    if Group0035.groupCoversRank rank = true then true else
    if Group0036.groupCoversRank rank = true then true else
    if Group0037.groupCoversRank rank = true then true else
    if Group0038.groupCoversRank rank = true then true else
    if Group0039.groupCoversRank rank = true then true else
    if Group0040.groupCoversRank rank = true then true else
    if Group0041.groupCoversRank rank = true then true else
    if Group0042.groupCoversRank rank = true then true else
    if Group0043.groupCoversRank rank = true then true else
    if Group0044.groupCoversRank rank = true then true else
    if Group0045.groupCoversRank rank = true then true else
    if Group0046.groupCoversRank rank = true then true else
    if Group0047.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0032.groupCoversRank rank = true
  · exact Group0032.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0033.groupCoversRank rank = true
    · exact Group0033.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0034.groupCoversRank rank = true
      · exact Group0034.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0035.groupCoversRank rank = true
        · exact Group0035.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0036.groupCoversRank rank = true
          · exact Group0036.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0037.groupCoversRank rank = true
            · exact Group0037.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0038.groupCoversRank rank = true
              · exact Group0038.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0039.groupCoversRank rank = true
                · exact Group0039.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0040.groupCoversRank rank = true
                  · exact Group0040.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0041.groupCoversRank rank = true
                    · exact Group0041.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0042.groupCoversRank rank = true
                      · exact Group0042.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0043.groupCoversRank rank = true
                        · exact Group0043.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0044.groupCoversRank rank = true
                          · exact Group0044.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0045.groupCoversRank rank = true
                            · exact Group0045.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0046.groupCoversRank rank = true
                              · exact Group0046.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0047.groupCoversRank rank = true
                                · exact Group0047.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0032.groupCoversRank rank = true
  · exact Group0032.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0033.groupCoversRank rank = true
    · exact Group0033.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0034.groupCoversRank rank = true
      · exact Group0034.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0035.groupCoversRank rank = true
        · exact Group0035.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0036.groupCoversRank rank = true
          · exact Group0036.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0037.groupCoversRank rank = true
            · exact Group0037.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0038.groupCoversRank rank = true
              · exact Group0038.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0039.groupCoversRank rank = true
                · exact Group0039.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0040.groupCoversRank rank = true
                  · exact Group0040.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0041.groupCoversRank rank = true
                    · exact Group0041.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0042.groupCoversRank rank = true
                      · exact Group0042.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0043.groupCoversRank rank = true
                        · exact Group0043.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0044.groupCoversRank rank = true
                          · exact Group0044.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0045.groupCoversRank rank = true
                            · exact Group0045.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0046.groupCoversRank rank = true
                              · exact Group0046.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0047.groupCoversRank rank = true
                                · exact Group0047.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0002
