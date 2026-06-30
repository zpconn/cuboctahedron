import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx46Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx50Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke

/-!
Generated rank-903 bad-mask facts, chunk A.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903BadMaskFactsASmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option linter.unusedSimpArgs false

def rank903 : Nat := 903

theorem mask00_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨0, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.cubex000x0,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask01_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨1, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx48Smoke.cubex000x0,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask02_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨2, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask03_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨3, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask04_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨4, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.cubexx100x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask05_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨5, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.cubexx100x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask06_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨6, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx51Smoke.cubexx100x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask07_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨7, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx49Smoke.cube11x0x0,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask08_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨8, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask09_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨9, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask10_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨10, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask11_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨11, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke.cubex10x0x,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask12_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨12, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask13_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨13, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask14_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨14, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem mask15_notGood (hlt : rank903 < numPairWords) :
    ¬ GoodDirectionAtRank (⟨rank903, hlt⟩ : Fin numPairWords) (⟨15, by decide⟩ : SignMask) :=
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.notGoodDirection hlt
      (by
        intro bit
        cases bit <;> simp [
          Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx47Smoke.cubexxx100,
          MaskSubcube.Member, SignBit.toPairId, maskBitForPair])

theorem rank903BadMaskFactsA_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903BadMaskFactsASmoke
