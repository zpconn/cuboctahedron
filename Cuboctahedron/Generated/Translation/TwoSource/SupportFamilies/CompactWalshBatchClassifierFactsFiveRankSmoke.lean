import Cuboctahedron.Generated.Coverage.Sparse
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000745Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000625Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000480Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000720Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000662Smoke

/-!
AP16DQ sparse five-rank compact-Walsh classifier-facts root.

The five AP16DJ smoke ranks are not contiguous, so this module exports a sparse
rank-list coverage theorem instead of an interval theorem.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsFiveRankSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

def smokeRanks : List Nat :=
  [6000745, 6000625, 6000480, 6000720, 6000662]

theorem rank6000745AllGoodRankKilled :
    AllTranslationGoodRankKilled 6000745 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000745Smoke.rank6000745AllGoodCoverage
    6000745 (Nat.le_refl 6000745) (Nat.lt_succ_self 6000745)

theorem rank6000625AllGoodRankKilled :
    AllTranslationGoodRankKilled 6000625 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000625Smoke.rank6000625AllGoodCoverage
    6000625 (Nat.le_refl 6000625) (Nat.lt_succ_self 6000625)

theorem rank6000480AllGoodRankKilled :
    AllTranslationGoodRankKilled 6000480 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000480Smoke.rank6000480AllGoodCoverage
    6000480 (Nat.le_refl 6000480) (Nat.lt_succ_self 6000480)

theorem rank6000720AllGoodRankKilled :
    AllTranslationGoodRankKilled 6000720 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000720Smoke.rank6000720AllGoodCoverage
    6000720 (Nat.le_refl 6000720) (Nat.lt_succ_self 6000720)

theorem rank6000662AllGoodRankKilled :
    AllTranslationGoodRankKilled 6000662 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsRank6000662Smoke.rank6000662AllGoodCoverage
    6000662 (Nat.le_refl 6000662) (Nat.lt_succ_self 6000662)

theorem fiveRankAllGoodCoverage :
    CoversRanks AllTranslationGoodRankKilled smokeRanks :=
  CoversRanks.cons rank6000745AllGoodRankKilled
    (CoversRanks.cons rank6000625AllGoodRankKilled
      (CoversRanks.cons rank6000480AllGoodRankKilled
        (CoversRanks.cons rank6000720AllGoodRankKilled
          (CoversRanks.cons rank6000662AllGoodRankKilled
            (CoversRanks.nil AllTranslationGoodRankKilled)))))

theorem compactWalshBatchClassifierFactsFiveRankSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierFactsFiveRankSmoke
