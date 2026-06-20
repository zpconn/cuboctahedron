import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0272
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0273
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0274
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0275
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0276
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0277
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0278
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0279
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0280
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0281
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0282
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0283
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0284
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0285
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0286
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0287

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0017

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 17
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106455
def superGroupFirstRank : Nat := 84820614
def superGroupLastRank : Nat := 90640789

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0272.groupCoversRank rank = true then true else
    if Group0273.groupCoversRank rank = true then true else
    if Group0274.groupCoversRank rank = true then true else
    if Group0275.groupCoversRank rank = true then true else
    if Group0276.groupCoversRank rank = true then true else
    if Group0277.groupCoversRank rank = true then true else
    if Group0278.groupCoversRank rank = true then true else
    if Group0279.groupCoversRank rank = true then true else
    if Group0280.groupCoversRank rank = true then true else
    if Group0281.groupCoversRank rank = true then true else
    if Group0282.groupCoversRank rank = true then true else
    if Group0283.groupCoversRank rank = true then true else
    if Group0284.groupCoversRank rank = true then true else
    if Group0285.groupCoversRank rank = true then true else
    if Group0286.groupCoversRank rank = true then true else
    if Group0287.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0272.groupCoversRank rank = true
  · exact Group0272.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0273.groupCoversRank rank = true
    · exact Group0273.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0274.groupCoversRank rank = true
      · exact Group0274.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0275.groupCoversRank rank = true
        · exact Group0275.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0276.groupCoversRank rank = true
          · exact Group0276.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0277.groupCoversRank rank = true
            · exact Group0277.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0278.groupCoversRank rank = true
              · exact Group0278.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0279.groupCoversRank rank = true
                · exact Group0279.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0280.groupCoversRank rank = true
                  · exact Group0280.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0281.groupCoversRank rank = true
                    · exact Group0281.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0282.groupCoversRank rank = true
                      · exact Group0282.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0283.groupCoversRank rank = true
                        · exact Group0283.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0284.groupCoversRank rank = true
                          · exact Group0284.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0285.groupCoversRank rank = true
                            · exact Group0285.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0286.groupCoversRank rank = true
                              · exact Group0286.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0287.groupCoversRank rank = true
                                · exact Group0287.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0272.groupCoversRank rank = true
  · exact Group0272.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0273.groupCoversRank rank = true
    · exact Group0273.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0274.groupCoversRank rank = true
      · exact Group0274.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0275.groupCoversRank rank = true
        · exact Group0275.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0276.groupCoversRank rank = true
          · exact Group0276.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0277.groupCoversRank rank = true
            · exact Group0277.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0278.groupCoversRank rank = true
              · exact Group0278.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0279.groupCoversRank rank = true
                · exact Group0279.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0280.groupCoversRank rank = true
                  · exact Group0280.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0281.groupCoversRank rank = true
                    · exact Group0281.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0282.groupCoversRank rank = true
                      · exact Group0282.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0283.groupCoversRank rank = true
                        · exact Group0283.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0284.groupCoversRank rank = true
                          · exact Group0284.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0285.groupCoversRank rank = true
                            · exact Group0285.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0286.groupCoversRank rank = true
                              · exact Group0286.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0287.groupCoversRank rank = true
                                · exact Group0287.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0017
