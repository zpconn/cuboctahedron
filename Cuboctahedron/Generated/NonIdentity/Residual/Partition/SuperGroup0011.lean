import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0176
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0177
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0178
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0179
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0180
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0181
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0182
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0183
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0184
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0185
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0186
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0187
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0188
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0189
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0190
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0191

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0011

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 11
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 104726
def superGroupFirstRank : Nat := 50264805
def superGroupLastRank : Nat := 55659051

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0176.groupCoversRank rank = true then true else
    if Group0177.groupCoversRank rank = true then true else
    if Group0178.groupCoversRank rank = true then true else
    if Group0179.groupCoversRank rank = true then true else
    if Group0180.groupCoversRank rank = true then true else
    if Group0181.groupCoversRank rank = true then true else
    if Group0182.groupCoversRank rank = true then true else
    if Group0183.groupCoversRank rank = true then true else
    if Group0184.groupCoversRank rank = true then true else
    if Group0185.groupCoversRank rank = true then true else
    if Group0186.groupCoversRank rank = true then true else
    if Group0187.groupCoversRank rank = true then true else
    if Group0188.groupCoversRank rank = true then true else
    if Group0189.groupCoversRank rank = true then true else
    if Group0190.groupCoversRank rank = true then true else
    if Group0191.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0176.groupCoversRank rank = true
  · exact Group0176.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0177.groupCoversRank rank = true
    · exact Group0177.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0178.groupCoversRank rank = true
      · exact Group0178.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0179.groupCoversRank rank = true
        · exact Group0179.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0180.groupCoversRank rank = true
          · exact Group0180.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0181.groupCoversRank rank = true
            · exact Group0181.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0182.groupCoversRank rank = true
              · exact Group0182.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0183.groupCoversRank rank = true
                · exact Group0183.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0184.groupCoversRank rank = true
                  · exact Group0184.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0185.groupCoversRank rank = true
                    · exact Group0185.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0186.groupCoversRank rank = true
                      · exact Group0186.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0187.groupCoversRank rank = true
                        · exact Group0187.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0188.groupCoversRank rank = true
                          · exact Group0188.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0189.groupCoversRank rank = true
                            · exact Group0189.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0190.groupCoversRank rank = true
                              · exact Group0190.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0191.groupCoversRank rank = true
                                · exact Group0191.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0176.groupCoversRank rank = true
  · exact Group0176.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0177.groupCoversRank rank = true
    · exact Group0177.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0178.groupCoversRank rank = true
      · exact Group0178.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0179.groupCoversRank rank = true
        · exact Group0179.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0180.groupCoversRank rank = true
          · exact Group0180.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0181.groupCoversRank rank = true
            · exact Group0181.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0182.groupCoversRank rank = true
              · exact Group0182.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0183.groupCoversRank rank = true
                · exact Group0183.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0184.groupCoversRank rank = true
                  · exact Group0184.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0185.groupCoversRank rank = true
                    · exact Group0185.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0186.groupCoversRank rank = true
                      · exact Group0186.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0187.groupCoversRank rank = true
                        · exact Group0187.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0188.groupCoversRank rank = true
                          · exact Group0188.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0189.groupCoversRank rank = true
                            · exact Group0189.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0190.groupCoversRank rank = true
                              · exact Group0190.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0191.groupCoversRank rank = true
                                · exact Group0191.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0011
