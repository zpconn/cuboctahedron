import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0128
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0129
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0130
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0131
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0132
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0133
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0134
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0135
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0136
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0137
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0138
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0139
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0140
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0141
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0142
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0143

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0008

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 8
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105227
def superGroupFirstRank : Nat := 31151006
def superGroupLastRank : Nat := 38047137

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0128.groupCoversRank rank = true then true else
    if Group0129.groupCoversRank rank = true then true else
    if Group0130.groupCoversRank rank = true then true else
    if Group0131.groupCoversRank rank = true then true else
    if Group0132.groupCoversRank rank = true then true else
    if Group0133.groupCoversRank rank = true then true else
    if Group0134.groupCoversRank rank = true then true else
    if Group0135.groupCoversRank rank = true then true else
    if Group0136.groupCoversRank rank = true then true else
    if Group0137.groupCoversRank rank = true then true else
    if Group0138.groupCoversRank rank = true then true else
    if Group0139.groupCoversRank rank = true then true else
    if Group0140.groupCoversRank rank = true then true else
    if Group0141.groupCoversRank rank = true then true else
    if Group0142.groupCoversRank rank = true then true else
    if Group0143.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0128.groupCoversRank rank = true
  · exact Group0128.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0129.groupCoversRank rank = true
    · exact Group0129.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0130.groupCoversRank rank = true
      · exact Group0130.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0131.groupCoversRank rank = true
        · exact Group0131.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0132.groupCoversRank rank = true
          · exact Group0132.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0133.groupCoversRank rank = true
            · exact Group0133.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0134.groupCoversRank rank = true
              · exact Group0134.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0135.groupCoversRank rank = true
                · exact Group0135.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0136.groupCoversRank rank = true
                  · exact Group0136.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0137.groupCoversRank rank = true
                    · exact Group0137.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0138.groupCoversRank rank = true
                      · exact Group0138.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0139.groupCoversRank rank = true
                        · exact Group0139.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0140.groupCoversRank rank = true
                          · exact Group0140.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0141.groupCoversRank rank = true
                            · exact Group0141.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0142.groupCoversRank rank = true
                              · exact Group0142.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0143.groupCoversRank rank = true
                                · exact Group0143.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0128.groupCoversRank rank = true
  · exact Group0128.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0129.groupCoversRank rank = true
    · exact Group0129.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0130.groupCoversRank rank = true
      · exact Group0130.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0131.groupCoversRank rank = true
        · exact Group0131.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0132.groupCoversRank rank = true
          · exact Group0132.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0133.groupCoversRank rank = true
            · exact Group0133.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0134.groupCoversRank rank = true
              · exact Group0134.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0135.groupCoversRank rank = true
                · exact Group0135.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0136.groupCoversRank rank = true
                  · exact Group0136.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0137.groupCoversRank rank = true
                    · exact Group0137.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0138.groupCoversRank rank = true
                      · exact Group0138.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0139.groupCoversRank rank = true
                        · exact Group0139.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0140.groupCoversRank rank = true
                          · exact Group0140.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0141.groupCoversRank rank = true
                            · exact Group0141.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0142.groupCoversRank rank = true
                              · exact Group0142.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0143.groupCoversRank rank = true
                                · exact Group0143.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0008
