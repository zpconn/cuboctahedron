import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0048
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0049
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0050
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0051
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0052
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0053
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0054
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0055
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0056
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0057
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0058
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0059
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0060
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0061
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0062
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0063

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0003

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 3
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106538
def superGroupFirstRank : Nat := 7416636
def superGroupLastRank : Nat := 9977117

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0048.groupCoversRank rank = true then true else
    if Group0049.groupCoversRank rank = true then true else
    if Group0050.groupCoversRank rank = true then true else
    if Group0051.groupCoversRank rank = true then true else
    if Group0052.groupCoversRank rank = true then true else
    if Group0053.groupCoversRank rank = true then true else
    if Group0054.groupCoversRank rank = true then true else
    if Group0055.groupCoversRank rank = true then true else
    if Group0056.groupCoversRank rank = true then true else
    if Group0057.groupCoversRank rank = true then true else
    if Group0058.groupCoversRank rank = true then true else
    if Group0059.groupCoversRank rank = true then true else
    if Group0060.groupCoversRank rank = true then true else
    if Group0061.groupCoversRank rank = true then true else
    if Group0062.groupCoversRank rank = true then true else
    if Group0063.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0048.groupCoversRank rank = true
  · exact Group0048.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0049.groupCoversRank rank = true
    · exact Group0049.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0050.groupCoversRank rank = true
      · exact Group0050.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0051.groupCoversRank rank = true
        · exact Group0051.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0052.groupCoversRank rank = true
          · exact Group0052.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0053.groupCoversRank rank = true
            · exact Group0053.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0054.groupCoversRank rank = true
              · exact Group0054.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0055.groupCoversRank rank = true
                · exact Group0055.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0056.groupCoversRank rank = true
                  · exact Group0056.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0057.groupCoversRank rank = true
                    · exact Group0057.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0058.groupCoversRank rank = true
                      · exact Group0058.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0059.groupCoversRank rank = true
                        · exact Group0059.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0060.groupCoversRank rank = true
                          · exact Group0060.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0061.groupCoversRank rank = true
                            · exact Group0061.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0062.groupCoversRank rank = true
                              · exact Group0062.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0063.groupCoversRank rank = true
                                · exact Group0063.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0048.groupCoversRank rank = true
  · exact Group0048.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0049.groupCoversRank rank = true
    · exact Group0049.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0050.groupCoversRank rank = true
      · exact Group0050.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0051.groupCoversRank rank = true
        · exact Group0051.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0052.groupCoversRank rank = true
          · exact Group0052.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0053.groupCoversRank rank = true
            · exact Group0053.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0054.groupCoversRank rank = true
              · exact Group0054.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0055.groupCoversRank rank = true
                · exact Group0055.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0056.groupCoversRank rank = true
                  · exact Group0056.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0057.groupCoversRank rank = true
                    · exact Group0057.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0058.groupCoversRank rank = true
                      · exact Group0058.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0059.groupCoversRank rank = true
                        · exact Group0059.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0060.groupCoversRank rank = true
                          · exact Group0060.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0061.groupCoversRank rank = true
                            · exact Group0061.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0062.groupCoversRank rank = true
                              · exact Group0062.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0063.groupCoversRank rank = true
                                · exact Group0063.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0003
