import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0000
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0001
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0002
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0003
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0004
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0005
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0006
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0007
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0008
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0009
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0010
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0011
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0012
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0013
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0014
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0015

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0000

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 0
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 107320
def superGroupFirstRank : Nat := 12
def superGroupLastRank : Nat := 2522542

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0000.groupCoversRank rank = true then true else
    if Group0001.groupCoversRank rank = true then true else
    if Group0002.groupCoversRank rank = true then true else
    if Group0003.groupCoversRank rank = true then true else
    if Group0004.groupCoversRank rank = true then true else
    if Group0005.groupCoversRank rank = true then true else
    if Group0006.groupCoversRank rank = true then true else
    if Group0007.groupCoversRank rank = true then true else
    if Group0008.groupCoversRank rank = true then true else
    if Group0009.groupCoversRank rank = true then true else
    if Group0010.groupCoversRank rank = true then true else
    if Group0011.groupCoversRank rank = true then true else
    if Group0012.groupCoversRank rank = true then true else
    if Group0013.groupCoversRank rank = true then true else
    if Group0014.groupCoversRank rank = true then true else
    if Group0015.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0000.groupCoversRank rank = true
  · exact Group0000.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0001.groupCoversRank rank = true
    · exact Group0001.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0002.groupCoversRank rank = true
      · exact Group0002.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0003.groupCoversRank rank = true
        · exact Group0003.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0004.groupCoversRank rank = true
          · exact Group0004.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0005.groupCoversRank rank = true
            · exact Group0005.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0006.groupCoversRank rank = true
              · exact Group0006.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0007.groupCoversRank rank = true
                · exact Group0007.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0008.groupCoversRank rank = true
                  · exact Group0008.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0009.groupCoversRank rank = true
                    · exact Group0009.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0010.groupCoversRank rank = true
                      · exact Group0010.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0011.groupCoversRank rank = true
                        · exact Group0011.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0012.groupCoversRank rank = true
                          · exact Group0012.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0013.groupCoversRank rank = true
                            · exact Group0013.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0014.groupCoversRank rank = true
                              · exact Group0014.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0015.groupCoversRank rank = true
                                · exact Group0015.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0000.groupCoversRank rank = true
  · exact Group0000.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0001.groupCoversRank rank = true
    · exact Group0001.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0002.groupCoversRank rank = true
      · exact Group0002.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0003.groupCoversRank rank = true
        · exact Group0003.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0004.groupCoversRank rank = true
          · exact Group0004.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0005.groupCoversRank rank = true
            · exact Group0005.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0006.groupCoversRank rank = true
              · exact Group0006.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0007.groupCoversRank rank = true
                · exact Group0007.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0008.groupCoversRank rank = true
                  · exact Group0008.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0009.groupCoversRank rank = true
                    · exact Group0009.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0010.groupCoversRank rank = true
                      · exact Group0010.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0011.groupCoversRank rank = true
                        · exact Group0011.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0012.groupCoversRank rank = true
                          · exact Group0012.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0013.groupCoversRank rank = true
                            · exact Group0013.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0014.groupCoversRank rank = true
                              · exact Group0014.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0015.groupCoversRank rank = true
                                · exact Group0015.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0000
