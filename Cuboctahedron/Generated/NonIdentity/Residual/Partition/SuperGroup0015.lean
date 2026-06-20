import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0240
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0241
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0242
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0243
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0244
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0245
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0246
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0247
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0248
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0249
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0250
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0251
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0252
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0253
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0254
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0255

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0015

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 15
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106014
def superGroupFirstRank : Nat := 73600349
def superGroupLastRank : Nat := 78530556

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0240.groupCoversRank rank = true then true else
    if Group0241.groupCoversRank rank = true then true else
    if Group0242.groupCoversRank rank = true then true else
    if Group0243.groupCoversRank rank = true then true else
    if Group0244.groupCoversRank rank = true then true else
    if Group0245.groupCoversRank rank = true then true else
    if Group0246.groupCoversRank rank = true then true else
    if Group0247.groupCoversRank rank = true then true else
    if Group0248.groupCoversRank rank = true then true else
    if Group0249.groupCoversRank rank = true then true else
    if Group0250.groupCoversRank rank = true then true else
    if Group0251.groupCoversRank rank = true then true else
    if Group0252.groupCoversRank rank = true then true else
    if Group0253.groupCoversRank rank = true then true else
    if Group0254.groupCoversRank rank = true then true else
    if Group0255.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0240.groupCoversRank rank = true
  · exact Group0240.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0241.groupCoversRank rank = true
    · exact Group0241.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0242.groupCoversRank rank = true
      · exact Group0242.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0243.groupCoversRank rank = true
        · exact Group0243.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0244.groupCoversRank rank = true
          · exact Group0244.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0245.groupCoversRank rank = true
            · exact Group0245.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0246.groupCoversRank rank = true
              · exact Group0246.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0247.groupCoversRank rank = true
                · exact Group0247.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0248.groupCoversRank rank = true
                  · exact Group0248.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0249.groupCoversRank rank = true
                    · exact Group0249.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0250.groupCoversRank rank = true
                      · exact Group0250.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0251.groupCoversRank rank = true
                        · exact Group0251.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0252.groupCoversRank rank = true
                          · exact Group0252.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0253.groupCoversRank rank = true
                            · exact Group0253.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0254.groupCoversRank rank = true
                              · exact Group0254.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0255.groupCoversRank rank = true
                                · exact Group0255.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0240.groupCoversRank rank = true
  · exact Group0240.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0241.groupCoversRank rank = true
    · exact Group0241.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0242.groupCoversRank rank = true
      · exact Group0242.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0243.groupCoversRank rank = true
        · exact Group0243.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0244.groupCoversRank rank = true
          · exact Group0244.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0245.groupCoversRank rank = true
            · exact Group0245.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0246.groupCoversRank rank = true
              · exact Group0246.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0247.groupCoversRank rank = true
                · exact Group0247.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0248.groupCoversRank rank = true
                  · exact Group0248.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0249.groupCoversRank rank = true
                    · exact Group0249.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0250.groupCoversRank rank = true
                      · exact Group0250.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0251.groupCoversRank rank = true
                        · exact Group0251.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0252.groupCoversRank rank = true
                          · exact Group0252.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0253.groupCoversRank rank = true
                            · exact Group0253.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0254.groupCoversRank rank = true
                              · exact Group0254.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0255.groupCoversRank rank = true
                                · exact Group0255.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0015
