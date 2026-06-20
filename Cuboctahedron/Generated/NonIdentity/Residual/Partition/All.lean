import Cuboctahedron.Search.CertificateChecker
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0000
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0001
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0002
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0003
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0004
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0005
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0006
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0007
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0008
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0009
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0010
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0011
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0012
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0013
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0014
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0015
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0016
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0017
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0018
import Cuboctahedron.Generated.NonIdentity.Residual.Partition.SuperGroup0019

/-!
Generated non-identity residual proof partition.

This module exposes a Boolean rank accessor.  A rank covered by the
accessor is backed by a decoded packed residual blob whose certificates
are checked by Lean.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.Partition

set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def residualPartitionGroupCount : Nat := 307
def residualPartitionSuperGroupCount : Nat := 20
def residualPartitionChunkCount : Nat := 78558
def residualPartitionCertCount : Nat := 2038656

def residualPartitionCoversRank (rank : Fin numPairWords) : Bool :=
  if SuperGroup0000.superGroupCoversRank rank = true then true else
    if SuperGroup0001.superGroupCoversRank rank = true then true else
    if SuperGroup0002.superGroupCoversRank rank = true then true else
    if SuperGroup0003.superGroupCoversRank rank = true then true else
    if SuperGroup0004.superGroupCoversRank rank = true then true else
    if SuperGroup0005.superGroupCoversRank rank = true then true else
    if SuperGroup0006.superGroupCoversRank rank = true then true else
    if SuperGroup0007.superGroupCoversRank rank = true then true else
    if SuperGroup0008.superGroupCoversRank rank = true then true else
    if SuperGroup0009.superGroupCoversRank rank = true then true else
    if SuperGroup0010.superGroupCoversRank rank = true then true else
    if SuperGroup0011.superGroupCoversRank rank = true then true else
    if SuperGroup0012.superGroupCoversRank rank = true then true else
    if SuperGroup0013.superGroupCoversRank rank = true then true else
    if SuperGroup0014.superGroupCoversRank rank = true then true else
    if SuperGroup0015.superGroupCoversRank rank = true then true else
    if SuperGroup0016.superGroupCoversRank rank = true then true else
    if SuperGroup0017.superGroupCoversRank rank = true then true else
    if SuperGroup0018.superGroupCoversRank rank = true then true else
    if SuperGroup0019.superGroupCoversRank rank = true then true else
    false

theorem residualPartitionCoversRank_sound
    {rank : Fin numPairWords}
    (hcover : residualPartitionCoversRank rank = true) :
    exists ordinary : NonIdCert,
      ordinary.word = unrankPairWord rank /\
        checkNonIdCert ordinary = true := by
  unfold residualPartitionCoversRank at hcover
  by_cases h0 : SuperGroup0000.superGroupCoversRank rank = true
  · exact SuperGroup0000.superGroupCoversRank_sound h0
  · simp [h0] at hcover
    by_cases h1 : SuperGroup0001.superGroupCoversRank rank = true
    · exact SuperGroup0001.superGroupCoversRank_sound h1
    · simp [h1] at hcover
      by_cases h2 : SuperGroup0002.superGroupCoversRank rank = true
      · exact SuperGroup0002.superGroupCoversRank_sound h2
      · simp [h2] at hcover
        by_cases h3 : SuperGroup0003.superGroupCoversRank rank = true
        · exact SuperGroup0003.superGroupCoversRank_sound h3
        · simp [h3] at hcover
          by_cases h4 : SuperGroup0004.superGroupCoversRank rank = true
          · exact SuperGroup0004.superGroupCoversRank_sound h4
          · simp [h4] at hcover
            by_cases h5 : SuperGroup0005.superGroupCoversRank rank = true
            · exact SuperGroup0005.superGroupCoversRank_sound h5
            · simp [h5] at hcover
              by_cases h6 : SuperGroup0006.superGroupCoversRank rank = true
              · exact SuperGroup0006.superGroupCoversRank_sound h6
              · simp [h6] at hcover
                by_cases h7 : SuperGroup0007.superGroupCoversRank rank = true
                · exact SuperGroup0007.superGroupCoversRank_sound h7
                · simp [h7] at hcover
                  by_cases h8 : SuperGroup0008.superGroupCoversRank rank = true
                  · exact SuperGroup0008.superGroupCoversRank_sound h8
                  · simp [h8] at hcover
                    by_cases h9 : SuperGroup0009.superGroupCoversRank rank = true
                    · exact SuperGroup0009.superGroupCoversRank_sound h9
                    · simp [h9] at hcover
                      by_cases h10 : SuperGroup0010.superGroupCoversRank rank = true
                      · exact SuperGroup0010.superGroupCoversRank_sound h10
                      · simp [h10] at hcover
                        by_cases h11 : SuperGroup0011.superGroupCoversRank rank = true
                        · exact SuperGroup0011.superGroupCoversRank_sound h11
                        · simp [h11] at hcover
                          by_cases h12 : SuperGroup0012.superGroupCoversRank rank = true
                          · exact SuperGroup0012.superGroupCoversRank_sound h12
                          · simp [h12] at hcover
                            by_cases h13 : SuperGroup0013.superGroupCoversRank rank = true
                            · exact SuperGroup0013.superGroupCoversRank_sound h13
                            · simp [h13] at hcover
                              by_cases h14 : SuperGroup0014.superGroupCoversRank rank = true
                              · exact SuperGroup0014.superGroupCoversRank_sound h14
                              · simp [h14] at hcover
                                by_cases h15 : SuperGroup0015.superGroupCoversRank rank = true
                                · exact SuperGroup0015.superGroupCoversRank_sound h15
                                · simp [h15] at hcover
                                  by_cases h16 : SuperGroup0016.superGroupCoversRank rank = true
                                  · exact SuperGroup0016.superGroupCoversRank_sound h16
                                  · simp [h16] at hcover
                                    by_cases h17 : SuperGroup0017.superGroupCoversRank rank = true
                                    · exact SuperGroup0017.superGroupCoversRank_sound h17
                                    · simp [h17] at hcover
                                      by_cases h18 : SuperGroup0018.superGroupCoversRank rank = true
                                      · exact SuperGroup0018.superGroupCoversRank_sound h18
                                      · simp [h18] at hcover
                                        by_cases h19 : SuperGroup0019.superGroupCoversRank rank = true
                                        · exact SuperGroup0019.superGroupCoversRank_sound h19
                                        · simp [h19] at hcover

theorem residualPartitionExistsCheckedRank
    (rank : Fin numPairWords)
    (hcover : residualPartitionCoversRank rank = true) :
    exists checked : CheckedNonIdRank, checked.rank = rank := by
  unfold residualPartitionCoversRank at hcover
  by_cases h0 : SuperGroup0000.superGroupCoversRank rank = true
  · exact SuperGroup0000.superGroupExistsCheckedRank rank h0
  · simp [h0] at hcover
    by_cases h1 : SuperGroup0001.superGroupCoversRank rank = true
    · exact SuperGroup0001.superGroupExistsCheckedRank rank h1
    · simp [h1] at hcover
      by_cases h2 : SuperGroup0002.superGroupCoversRank rank = true
      · exact SuperGroup0002.superGroupExistsCheckedRank rank h2
      · simp [h2] at hcover
        by_cases h3 : SuperGroup0003.superGroupCoversRank rank = true
        · exact SuperGroup0003.superGroupExistsCheckedRank rank h3
        · simp [h3] at hcover
          by_cases h4 : SuperGroup0004.superGroupCoversRank rank = true
          · exact SuperGroup0004.superGroupExistsCheckedRank rank h4
          · simp [h4] at hcover
            by_cases h5 : SuperGroup0005.superGroupCoversRank rank = true
            · exact SuperGroup0005.superGroupExistsCheckedRank rank h5
            · simp [h5] at hcover
              by_cases h6 : SuperGroup0006.superGroupCoversRank rank = true
              · exact SuperGroup0006.superGroupExistsCheckedRank rank h6
              · simp [h6] at hcover
                by_cases h7 : SuperGroup0007.superGroupCoversRank rank = true
                · exact SuperGroup0007.superGroupExistsCheckedRank rank h7
                · simp [h7] at hcover
                  by_cases h8 : SuperGroup0008.superGroupCoversRank rank = true
                  · exact SuperGroup0008.superGroupExistsCheckedRank rank h8
                  · simp [h8] at hcover
                    by_cases h9 : SuperGroup0009.superGroupCoversRank rank = true
                    · exact SuperGroup0009.superGroupExistsCheckedRank rank h9
                    · simp [h9] at hcover
                      by_cases h10 : SuperGroup0010.superGroupCoversRank rank = true
                      · exact SuperGroup0010.superGroupExistsCheckedRank rank h10
                      · simp [h10] at hcover
                        by_cases h11 : SuperGroup0011.superGroupCoversRank rank = true
                        · exact SuperGroup0011.superGroupExistsCheckedRank rank h11
                        · simp [h11] at hcover
                          by_cases h12 : SuperGroup0012.superGroupCoversRank rank = true
                          · exact SuperGroup0012.superGroupExistsCheckedRank rank h12
                          · simp [h12] at hcover
                            by_cases h13 : SuperGroup0013.superGroupCoversRank rank = true
                            · exact SuperGroup0013.superGroupExistsCheckedRank rank h13
                            · simp [h13] at hcover
                              by_cases h14 : SuperGroup0014.superGroupCoversRank rank = true
                              · exact SuperGroup0014.superGroupExistsCheckedRank rank h14
                              · simp [h14] at hcover
                                by_cases h15 : SuperGroup0015.superGroupCoversRank rank = true
                                · exact SuperGroup0015.superGroupExistsCheckedRank rank h15
                                · simp [h15] at hcover
                                  by_cases h16 : SuperGroup0016.superGroupCoversRank rank = true
                                  · exact SuperGroup0016.superGroupExistsCheckedRank rank h16
                                  · simp [h16] at hcover
                                    by_cases h17 : SuperGroup0017.superGroupCoversRank rank = true
                                    · exact SuperGroup0017.superGroupExistsCheckedRank rank h17
                                    · simp [h17] at hcover
                                      by_cases h18 : SuperGroup0018.superGroupCoversRank rank = true
                                      · exact SuperGroup0018.superGroupExistsCheckedRank rank h18
                                      · simp [h18] at hcover
                                        by_cases h19 : SuperGroup0019.superGroupCoversRank rank = true
                                        · exact SuperGroup0019.superGroupExistsCheckedRank rank h19
                                        · simp [h19] at hcover

noncomputable def residualPartitionCheckedRank
    (rank : Fin numPairWords)
    (hcover : residualPartitionCoversRank rank = true) :
    CheckedNonIdRank :=
  Classical.choose (residualPartitionExistsCheckedRank rank hcover)

theorem residualPartitionCheckedRank_rank
    (rank : Fin numPairWords)
    (hcover : residualPartitionCoversRank rank = true) :
    (residualPartitionCheckedRank rank hcover).rank = rank :=
  Classical.choose_spec
    (residualPartitionExistsCheckedRank rank hcover)

end Cuboctahedron.Generated.NonIdentity.Residual.Partition
