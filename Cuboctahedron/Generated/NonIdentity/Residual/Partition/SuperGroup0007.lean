import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0112
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0113
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0114
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0115
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0116
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0117
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0118
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0119
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0120
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0121
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0122
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0123
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0124
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0125
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0126
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.Group0127

/-!
Generated non-identity residual proof-partition supergroup.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0007

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def superGroupIndex : Nat := 7
def superGroupCount : Nat := 16
def superGroupChunkCount : Nat := 4096
def superGroupCertCount : Nat := 105813
def superGroupFirstRank : Nat := 26200881
def superGroupLastRank : Nat := 31151004

def superGroupCoversRank (rank : Fin numPairWords) : Bool :=
  if Group0112.groupCoversRank rank = true then true else
    if Group0113.groupCoversRank rank = true then true else
    if Group0114.groupCoversRank rank = true then true else
    if Group0115.groupCoversRank rank = true then true else
    if Group0116.groupCoversRank rank = true then true else
    if Group0117.groupCoversRank rank = true then true else
    if Group0118.groupCoversRank rank = true then true else
    if Group0119.groupCoversRank rank = true then true else
    if Group0120.groupCoversRank rank = true then true else
    if Group0121.groupCoversRank rank = true then true else
    if Group0122.groupCoversRank rank = true then true else
    if Group0123.groupCoversRank rank = true then true else
    if Group0124.groupCoversRank rank = true then true else
    if Group0125.groupCoversRank rank = true then true else
    if Group0126.groupCoversRank rank = true then true else
    if Group0127.groupCoversRank rank = true then true else
    false

theorem superGroupCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : superGroupCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0112.groupCoversRank rank = true
  · exact Group0112.groupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : Group0113.groupCoversRank rank = true
    · exact Group0113.groupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : Group0114.groupCoversRank rank = true
      · exact Group0114.groupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : Group0115.groupCoversRank rank = true
        · exact Group0115.groupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : Group0116.groupCoversRank rank = true
          · exact Group0116.groupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : Group0117.groupCoversRank rank = true
            · exact Group0117.groupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : Group0118.groupCoversRank rank = true
              · exact Group0118.groupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : Group0119.groupCoversRank rank = true
                · exact Group0119.groupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : Group0120.groupCoversRank rank = true
                  · exact Group0120.groupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0121.groupCoversRank rank = true
                    · exact Group0121.groupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0122.groupCoversRank rank = true
                      · exact Group0122.groupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0123.groupCoversRank rank = true
                        · exact Group0123.groupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0124.groupCoversRank rank = true
                          · exact Group0124.groupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0125.groupCoversRank rank = true
                            · exact Group0125.groupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0126.groupCoversRank rank = true
                              · exact Group0126.groupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0127.groupCoversRank rank = true
                                · exact Group0127.groupCoversRank_sound h15
                                · simp [h15] at hcover

theorem superGroupExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : superGroupCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold superGroupCoversRank at hcover
  by_cases h0 : Group0112.groupCoversRank rank = true
  · exact Group0112.groupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : Group0113.groupCoversRank rank = true
    · exact Group0113.groupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : Group0114.groupCoversRank rank = true
      · exact Group0114.groupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : Group0115.groupCoversRank rank = true
        · exact Group0115.groupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : Group0116.groupCoversRank rank = true
          · exact Group0116.groupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : Group0117.groupCoversRank rank = true
            · exact Group0117.groupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : Group0118.groupCoversRank rank = true
              · exact Group0118.groupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : Group0119.groupCoversRank rank = true
                · exact Group0119.groupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : Group0120.groupCoversRank rank = true
                  · exact Group0120.groupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : Group0121.groupCoversRank rank = true
                    · exact Group0121.groupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : Group0122.groupCoversRank rank = true
                      · exact Group0122.groupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : Group0123.groupCoversRank rank = true
                        · exact Group0123.groupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : Group0124.groupCoversRank rank = true
                          · exact Group0124.groupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : Group0125.groupCoversRank rank = true
                            · exact Group0125.groupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : Group0126.groupCoversRank rank = true
                              · exact Group0126.groupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : Group0127.groupCoversRank rank = true
                                · exact Group0127.groupExistsCheckedRank rank h15
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

end Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0007
