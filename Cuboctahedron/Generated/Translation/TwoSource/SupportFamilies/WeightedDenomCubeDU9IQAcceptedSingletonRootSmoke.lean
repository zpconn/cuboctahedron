import Cuboctahedron.Generated.Coverage.Sparse
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896ClosedSemanticSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897ClosedSemanticSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903ClosedSemanticSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905ClosedSemanticSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911ClosedSemanticSmoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955ClosedSemanticSmoke

/-!
Sparse root for the accepted DU9IQ singleton closed-semantic smokes.

The accepted singleton ranks are intentionally collected through their small
closed-semantic wrappers.  This file does not import the generator internals
directly and exports only a Prop-level sparse coverage theorem.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge

def acceptedSingletonRanks : List Nat :=
  [896, 897, 903, 905, 911, 955]

theorem rank896AllGoodRankKilled :
    AllTranslationGoodRankKilled 896 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896ClosedSemanticSmoke.rank896AllGoodRankKilled

theorem rank897AllGoodRankKilled :
    AllTranslationGoodRankKilled 897 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897ClosedSemanticSmoke.rank897AllGoodRankKilled

theorem rank903AllGoodRankKilled :
    AllTranslationGoodRankKilled 903 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903ClosedSemanticSmoke.rank903AllGoodRankKilled

theorem rank905AllGoodRankKilled :
    AllTranslationGoodRankKilled 905 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905ClosedSemanticSmoke.rank905AllGoodRankKilled

theorem rank911AllGoodRankKilled :
    AllTranslationGoodRankKilled 911 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911ClosedSemanticSmoke.rank911AllGoodRankKilled

theorem rank955AllGoodRankKilled :
    AllTranslationGoodRankKilled 955 :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955ClosedSemanticSmoke.rank955AllGoodRankKilled

theorem acceptedSingletonAllGoodCoverage :
    CoversRanks AllTranslationGoodRankKilled acceptedSingletonRanks :=
  CoversRanks.cons rank896AllGoodRankKilled
    (CoversRanks.cons rank897AllGoodRankKilled
      (CoversRanks.cons rank903AllGoodRankKilled
        (CoversRanks.cons rank905AllGoodRankKilled
          (CoversRanks.cons rank911AllGoodRankKilled
            (CoversRanks.cons rank955AllGoodRankKilled
              (CoversRanks.nil AllTranslationGoodRankKilled))))))

theorem weightedDenomCubeDU9IQAcceptedSingletonRootSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke
