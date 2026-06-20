import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0144
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0145
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0146
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0147
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0148
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0149
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0150
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0151
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0152
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0153
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0154
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0155
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0156
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0157
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0158
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0159

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0009

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 9
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 106602
def superGroupFirstRank : Nat := 38047203
def superGroupLastRank : Nat := 44667204

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0144.groupCoversRank rank = true then true else
    if Group0145.groupCoversRank rank = true then true else
    if Group0146.groupCoversRank rank = true then true else
    if Group0147.groupCoversRank rank = true then true else
    if Group0148.groupCoversRank rank = true then true else
    if Group0149.groupCoversRank rank = true then true else
    if Group0150.groupCoversRank rank = true then true else
    if Group0151.groupCoversRank rank = true then true else
    if Group0152.groupCoversRank rank = true then true else
    if Group0153.groupCoversRank rank = true then true else
    if Group0154.groupCoversRank rank = true then true else
    if Group0155.groupCoversRank rank = true then true else
    if Group0156.groupCoversRank rank = true then true else
    if Group0157.groupCoversRank rank = true then true else
    if Group0158.groupCoversRank rank = true then true else
    if Group0159.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0144.groupCoversRank rank = true
  · exact Group0144.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0145.groupCoversRank rank = true
    · exact Group0145.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0146.groupCoversRank rank = true
      · exact Group0146.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0147.groupCoversRank rank = true
        · exact Group0147.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0148.groupCoversRank rank = true
          · exact Group0148.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0149.groupCoversRank rank = true
            · exact Group0149.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0150.groupCoversRank rank = true
              · exact Group0150.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0151.groupCoversRank rank = true
                · exact Group0151.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0152.groupCoversRank rank = true
                  · exact Group0152.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0153.groupCoversRank rank = true
                    · exact Group0153.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0154.groupCoversRank rank = true
                      · exact Group0154.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0155.groupCoversRank rank = true
                        · exact Group0155.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0156.groupCoversRank rank = true
                          · exact Group0156.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0157.groupCoversRank rank = true
                            · exact Group0157.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0158.groupCoversRank rank = true
                              · exact Group0158.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0159.groupCoversRank rank = true
                                · exact Group0159.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0144.groupCoversRank rank = true
  · exact Group0144.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0145.groupCoversRank rank = true
    · exact Group0145.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0146.groupCoversRank rank = true
      · exact Group0146.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0147.groupCoversRank rank = true
        · exact Group0147.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0148.groupCoversRank rank = true
          · exact Group0148.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0149.groupCoversRank rank = true
            · exact Group0149.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0150.groupCoversRank rank = true
              · exact Group0150.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0151.groupCoversRank rank = true
                · exact Group0151.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0152.groupCoversRank rank = true
                  · exact Group0152.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0153.groupCoversRank rank = true
                    · exact Group0153.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0154.groupCoversRank rank = true
                      · exact Group0154.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0155.groupCoversRank rank = true
                        · exact Group0155.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0156.groupCoversRank rank = true
                          · exact Group0156.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0157.groupCoversRank rank = true
                            · exact Group0157.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0158.groupCoversRank rank = true
                              · exact Group0158.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0159.groupCoversRank rank = true
                                · exact Group0159.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0009
