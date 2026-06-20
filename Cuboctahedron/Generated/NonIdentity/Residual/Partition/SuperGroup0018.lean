import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0288
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0289
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0290
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0291
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0292
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0293
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0294
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0295
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0296
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0297
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0298
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0299
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0300
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0301
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0302
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0303

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0018

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 18
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105956
def superGroupFirstRank : Nat := 90640881
def superGroupLastRank : Nat := 95941168

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0288.groupCoversRank rank = true then true else
    if Group0289.groupCoversRank rank = true then true else
    if Group0290.groupCoversRank rank = true then true else
    if Group0291.groupCoversRank rank = true then true else
    if Group0292.groupCoversRank rank = true then true else
    if Group0293.groupCoversRank rank = true then true else
    if Group0294.groupCoversRank rank = true then true else
    if Group0295.groupCoversRank rank = true then true else
    if Group0296.groupCoversRank rank = true then true else
    if Group0297.groupCoversRank rank = true then true else
    if Group0298.groupCoversRank rank = true then true else
    if Group0299.groupCoversRank rank = true then true else
    if Group0300.groupCoversRank rank = true then true else
    if Group0301.groupCoversRank rank = true then true else
    if Group0302.groupCoversRank rank = true then true else
    if Group0303.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0288.groupCoversRank rank = true
  · exact Group0288.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0289.groupCoversRank rank = true
    · exact Group0289.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0290.groupCoversRank rank = true
      · exact Group0290.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0291.groupCoversRank rank = true
        · exact Group0291.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0292.groupCoversRank rank = true
          · exact Group0292.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0293.groupCoversRank rank = true
            · exact Group0293.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0294.groupCoversRank rank = true
              · exact Group0294.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0295.groupCoversRank rank = true
                · exact Group0295.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0296.groupCoversRank rank = true
                  · exact Group0296.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0297.groupCoversRank rank = true
                    · exact Group0297.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0298.groupCoversRank rank = true
                      · exact Group0298.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0299.groupCoversRank rank = true
                        · exact Group0299.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0300.groupCoversRank rank = true
                          · exact Group0300.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0301.groupCoversRank rank = true
                            · exact Group0301.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0302.groupCoversRank rank = true
                              · exact Group0302.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0303.groupCoversRank rank = true
                                · exact Group0303.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0288.groupCoversRank rank = true
  · exact Group0288.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0289.groupCoversRank rank = true
    · exact Group0289.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0290.groupCoversRank rank = true
      · exact Group0290.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0291.groupCoversRank rank = true
        · exact Group0291.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0292.groupCoversRank rank = true
          · exact Group0292.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0293.groupCoversRank rank = true
            · exact Group0293.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0294.groupCoversRank rank = true
              · exact Group0294.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0295.groupCoversRank rank = true
                · exact Group0295.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0296.groupCoversRank rank = true
                  · exact Group0296.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0297.groupCoversRank rank = true
                    · exact Group0297.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0298.groupCoversRank rank = true
                      · exact Group0298.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0299.groupCoversRank rank = true
                        · exact Group0299.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0300.groupCoversRank rank = true
                          · exact Group0300.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0301.groupCoversRank rank = true
                            · exact Group0301.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0302.groupCoversRank rank = true
                              · exact Group0302.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0303.groupCoversRank rank = true
                                · exact Group0303.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0018
