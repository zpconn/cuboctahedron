import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0192
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0193
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0194
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0195
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0196
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0197
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0198
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0199
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0200
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0201
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0202
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0203
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0204
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0205
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0206
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0207

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0012

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 12
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 107458
def superGroupFirstRank : Nat := 55659052
def superGroupLastRank : Nat := 62000853

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0192.groupCoversRank rank = true then true else
    if Group0193.groupCoversRank rank = true then true else
    if Group0194.groupCoversRank rank = true then true else
    if Group0195.groupCoversRank rank = true then true else
    if Group0196.groupCoversRank rank = true then true else
    if Group0197.groupCoversRank rank = true then true else
    if Group0198.groupCoversRank rank = true then true else
    if Group0199.groupCoversRank rank = true then true else
    if Group0200.groupCoversRank rank = true then true else
    if Group0201.groupCoversRank rank = true then true else
    if Group0202.groupCoversRank rank = true then true else
    if Group0203.groupCoversRank rank = true then true else
    if Group0204.groupCoversRank rank = true then true else
    if Group0205.groupCoversRank rank = true then true else
    if Group0206.groupCoversRank rank = true then true else
    if Group0207.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0192.groupCoversRank rank = true
  · exact Group0192.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0193.groupCoversRank rank = true
    · exact Group0193.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0194.groupCoversRank rank = true
      · exact Group0194.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0195.groupCoversRank rank = true
        · exact Group0195.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0196.groupCoversRank rank = true
          · exact Group0196.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0197.groupCoversRank rank = true
            · exact Group0197.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0198.groupCoversRank rank = true
              · exact Group0198.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0199.groupCoversRank rank = true
                · exact Group0199.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0200.groupCoversRank rank = true
                  · exact Group0200.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0201.groupCoversRank rank = true
                    · exact Group0201.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0202.groupCoversRank rank = true
                      · exact Group0202.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0203.groupCoversRank rank = true
                        · exact Group0203.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0204.groupCoversRank rank = true
                          · exact Group0204.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0205.groupCoversRank rank = true
                            · exact Group0205.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0206.groupCoversRank rank = true
                              · exact Group0206.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0207.groupCoversRank rank = true
                                · exact Group0207.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0192.groupCoversRank rank = true
  · exact Group0192.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0193.groupCoversRank rank = true
    · exact Group0193.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0194.groupCoversRank rank = true
      · exact Group0194.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0195.groupCoversRank rank = true
        · exact Group0195.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0196.groupCoversRank rank = true
          · exact Group0196.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0197.groupCoversRank rank = true
            · exact Group0197.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0198.groupCoversRank rank = true
              · exact Group0198.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0199.groupCoversRank rank = true
                · exact Group0199.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0200.groupCoversRank rank = true
                  · exact Group0200.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0201.groupCoversRank rank = true
                    · exact Group0201.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0202.groupCoversRank rank = true
                      · exact Group0202.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0203.groupCoversRank rank = true
                        · exact Group0203.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0204.groupCoversRank rank = true
                          · exact Group0204.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0205.groupCoversRank rank = true
                            · exact Group0205.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0206.groupCoversRank rank = true
                              · exact Group0206.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0207.groupCoversRank rank = true
                                · exact Group0207.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0012
