import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0256
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0257
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0258
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0259
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0260
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0261
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0262
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0263
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0264
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0265
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0266
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0267
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0268
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0269
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0270
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0271

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0016

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 16
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106359
def superGroupFirstRank : Nat := 78530557
def superGroupLastRank : Nat := 84820607

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0256.groupCoversRank rank = true then true else
    if Group0257.groupCoversRank rank = true then true else
    if Group0258.groupCoversRank rank = true then true else
    if Group0259.groupCoversRank rank = true then true else
    if Group0260.groupCoversRank rank = true then true else
    if Group0261.groupCoversRank rank = true then true else
    if Group0262.groupCoversRank rank = true then true else
    if Group0263.groupCoversRank rank = true then true else
    if Group0264.groupCoversRank rank = true then true else
    if Group0265.groupCoversRank rank = true then true else
    if Group0266.groupCoversRank rank = true then true else
    if Group0267.groupCoversRank rank = true then true else
    if Group0268.groupCoversRank rank = true then true else
    if Group0269.groupCoversRank rank = true then true else
    if Group0270.groupCoversRank rank = true then true else
    if Group0271.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0256.groupCoversRank rank = true
  · exact Group0256.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0257.groupCoversRank rank = true
    · exact Group0257.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0258.groupCoversRank rank = true
      · exact Group0258.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0259.groupCoversRank rank = true
        · exact Group0259.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0260.groupCoversRank rank = true
          · exact Group0260.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0261.groupCoversRank rank = true
            · exact Group0261.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0262.groupCoversRank rank = true
              · exact Group0262.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0263.groupCoversRank rank = true
                · exact Group0263.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0264.groupCoversRank rank = true
                  · exact Group0264.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0265.groupCoversRank rank = true
                    · exact Group0265.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0266.groupCoversRank rank = true
                      · exact Group0266.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0267.groupCoversRank rank = true
                        · exact Group0267.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0268.groupCoversRank rank = true
                          · exact Group0268.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0269.groupCoversRank rank = true
                            · exact Group0269.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0270.groupCoversRank rank = true
                              · exact Group0270.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0271.groupCoversRank rank = true
                                · exact Group0271.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0256.groupCoversRank rank = true
  · exact Group0256.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0257.groupCoversRank rank = true
    · exact Group0257.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0258.groupCoversRank rank = true
      · exact Group0258.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0259.groupCoversRank rank = true
        · exact Group0259.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0260.groupCoversRank rank = true
          · exact Group0260.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0261.groupCoversRank rank = true
            · exact Group0261.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0262.groupCoversRank rank = true
              · exact Group0262.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0263.groupCoversRank rank = true
                · exact Group0263.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0264.groupCoversRank rank = true
                  · exact Group0264.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0265.groupCoversRank rank = true
                    · exact Group0265.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0266.groupCoversRank rank = true
                      · exact Group0266.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0267.groupCoversRank rank = true
                        · exact Group0267.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0268.groupCoversRank rank = true
                          · exact Group0268.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0269.groupCoversRank rank = true
                            · exact Group0269.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0270.groupCoversRank rank = true
                              · exact Group0270.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0271.groupCoversRank rank = true
                                · exact Group0271.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0016
