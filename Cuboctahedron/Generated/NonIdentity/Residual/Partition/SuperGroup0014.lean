import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0224
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0225
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0226
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0227
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0228
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0229
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0230
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0231
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0232
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0233
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0234
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0235
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0236
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0237
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0238
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0239

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0014

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 14
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105322
def superGroupFirstRank : Nat := 67013645
def superGroupLastRank : Nat := 73600347

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0224.groupCoversRank rank = true then true else
    if Group0225.groupCoversRank rank = true then true else
    if Group0226.groupCoversRank rank = true then true else
    if Group0227.groupCoversRank rank = true then true else
    if Group0228.groupCoversRank rank = true then true else
    if Group0229.groupCoversRank rank = true then true else
    if Group0230.groupCoversRank rank = true then true else
    if Group0231.groupCoversRank rank = true then true else
    if Group0232.groupCoversRank rank = true then true else
    if Group0233.groupCoversRank rank = true then true else
    if Group0234.groupCoversRank rank = true then true else
    if Group0235.groupCoversRank rank = true then true else
    if Group0236.groupCoversRank rank = true then true else
    if Group0237.groupCoversRank rank = true then true else
    if Group0238.groupCoversRank rank = true then true else
    if Group0239.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0224.groupCoversRank rank = true
  · exact Group0224.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0225.groupCoversRank rank = true
    · exact Group0225.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0226.groupCoversRank rank = true
      · exact Group0226.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0227.groupCoversRank rank = true
        · exact Group0227.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0228.groupCoversRank rank = true
          · exact Group0228.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0229.groupCoversRank rank = true
            · exact Group0229.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0230.groupCoversRank rank = true
              · exact Group0230.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0231.groupCoversRank rank = true
                · exact Group0231.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0232.groupCoversRank rank = true
                  · exact Group0232.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0233.groupCoversRank rank = true
                    · exact Group0233.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0234.groupCoversRank rank = true
                      · exact Group0234.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0235.groupCoversRank rank = true
                        · exact Group0235.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0236.groupCoversRank rank = true
                          · exact Group0236.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0237.groupCoversRank rank = true
                            · exact Group0237.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0238.groupCoversRank rank = true
                              · exact Group0238.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0239.groupCoversRank rank = true
                                · exact Group0239.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0224.groupCoversRank rank = true
  · exact Group0224.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0225.groupCoversRank rank = true
    · exact Group0225.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0226.groupCoversRank rank = true
      · exact Group0226.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0227.groupCoversRank rank = true
        · exact Group0227.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0228.groupCoversRank rank = true
          · exact Group0228.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0229.groupCoversRank rank = true
            · exact Group0229.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0230.groupCoversRank rank = true
              · exact Group0230.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0231.groupCoversRank rank = true
                · exact Group0231.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0232.groupCoversRank rank = true
                  · exact Group0232.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0233.groupCoversRank rank = true
                    · exact Group0233.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0234.groupCoversRank rank = true
                      · exact Group0234.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0235.groupCoversRank rank = true
                        · exact Group0235.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0236.groupCoversRank rank = true
                          · exact Group0236.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0237.groupCoversRank rank = true
                            · exact Group0237.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0238.groupCoversRank rank = true
                              · exact Group0238.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0239.groupCoversRank rank = true
                                · exact Group0239.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0014
