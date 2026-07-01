# Bellman Membership Mode Audit

This is diagnostic-only evidence.  It records whether the current
Bellman generator/generated smoke surface is still sample-indexed or
has moved to the semantic closed-language object-cover contract.

## Summary

- decision: `sample-bound-emitter-with-closed-bridge-available`
- sampled membership mentions: `113`
- closed-language mentions: `6`
- object-cover mentions: `32`
- recommended next step: Replace generated SampledRankIndex/sampledContainsRank covers with a BellmanAxisRankObjectCover whose ContainsRank is ClosedTopPairingContainsRank Face.ym, and prove the covers field from TopPairingClosedLanguageAtRank rather than Classical.choose over sampled ranks.

## Files

### `scripts/emit_bellman_graph_smoke.py`

- exists: `True`
- `sampled_rank_index`: `18`
  - line `1789`: `"private inductive SampledRankIndex where",`
  - line `1795`: `"private def sampledRankOf : SampledRankIndex -> Fin numPairWords",`
  - line `1799`: `f"  | SampledRankIndex.i{idx:04d} => {info['rank_name']}"`
  - line `1804`: `"  exists idx : SampledRankIndex, sampledRankOf idx = rank",`
  - line `1833`: `"      SampledRankIndex State SmokeLabel graphPotential SmokeStep smokeLabelOfFace",`
- `sampled_contains_rank`: `16`
  - line `1803`: `"private def sampledContainsRank (rank : Fin numPairWords) : Prop :=",`
  - line `1951`: `"      rootState (" + str(const_scaled) + " : Int) sampledRankOf sampledContainsRank",`
  - line `1959`: `"    {rank : Fin numPairWords} (hrank : sampledContainsRank rank)",`
  - line `1989`: `"      sampledObjectAccepts sampledContainsRank where",`
  - line `2022`: `"      sampledContainsRank sampledScaledMarginAtRank :=",`
- `sampled_object_membership`: `3`
  - line `1987`: `"private noncomputable def sampledObjectMembership :",`
  - line `2050`: `"    sampledObjectMembership",`
  - line `2100`: `"    sampledObjectMembership",`
- `classical_choose`: `3`
  - line `1990`: `"  objectOf := fun _rank hrank => Classical.choose hrank",`
  - line `1993`: `"    let idx := Classical.choose hrank",`
  - line `2016`: `"    exact Classical.choose_spec hrank",`
- `terminal_contains_rank`: `7`
  - line `2421`: `"def terminalContainsRank (rank : Fin numPairWords) : Prop :=",`
  - line `2424`: `"private theorem terminalContainsRank_of_sampledAccepted",`
  - line `2426`: `"    terminalContainsRank rank := by",`
  - line `2439`: `"    {rank : Fin numPairWords} (hrank : terminalContainsRank rank) :",`
  - line `2445`: `"      sampledScaledMarginAtRank terminalContainsRank :=",`
- `bellman_rank_object_membership`: `1`
  - line `1988`: `"    BellmanRankObjectMembership SampledRankIndex sampledRankOf",`
- `bellman_axis_rank_object_cover`: `10`
  - line `2019`: `"    BellmanAxisRankObjectCover",`
  - line `2023`: `"  BellmanAxisRankObjectCover.ofMembership",`
  - line `2055`: `"  BellmanAxisRankObjectCover.scaledMargin_nonpos",`
  - line `2059`: `"    BellmanAxisRankObjectCover",`
  - line `2063`: `"  BellmanAxisRankObjectCover.ofMembership",`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean`

- exists: `True`
- `sampled_rank_index`: `19`
  - line `24775`: `private inductive SampledRankIndex where`
  - line `24779`: `private def sampledRankOf : SampledRankIndex -> Fin numPairWords`
  - line `24780`: `| SampledRankIndex.i0000 => cls0000Rank`
  - line `24781`: `| SampledRankIndex.i0001 => cls0001Rank`
  - line `24784`: `exists idx : SampledRankIndex, sampledRankOf idx = rank`
- `sampled_contains_rank`: `15`
  - line `24783`: `private def sampledContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24902`: `rootState (176 : Int) sampledRankOf sampledContainsRank`
  - line `24910`: `{rank : Fin numPairWords} (hrank : sampledContainsRank rank)`
  - line `24936`: `sampledObjectAccepts sampledContainsRank where`
  - line `24977`: `sampledContainsRank sampledScaledMarginAtRank :=`
- `sampled_object_membership`: `3`
  - line `24934`: `private noncomputable def sampledObjectMembership :`
  - line `25008`: `sampledObjectMembership`
  - line `25073`: `sampledObjectMembership`
- `classical_choose`: `3`
  - line `24937`: `objectOf := fun _rank hrank => Classical.choose hrank`
  - line `24940`: `let idx := Classical.choose hrank`
  - line `24971`: `exact Classical.choose_spec hrank`
- `bellman_rank_object_membership`: `1`
  - line `24935`: `BellmanRankObjectMembership SampledRankIndex sampledRankOf`
- `bellman_axis_rank_object_cover`: `10`
  - line `24974`: `BellmanAxisRankObjectCover`
  - line `24978`: `BellmanAxisRankObjectCover.ofMembership`
  - line `25013`: `BellmanAxisRankObjectCover.scaledMargin_nonpos`
  - line `25017`: `BellmanAxisRankObjectCover`
  - line `25021`: `BellmanAxisRankObjectCover.ofMembership`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2GraphSmoke.lean`

- exists: `True`
- `sampled_rank_index`: `18`
  - line `24095`: `inductive SampledRankIndex where`
  - line `24099`: `def sampledRankOf : SampledRankIndex -> Fin numPairWords`
  - line `24100`: `| SampledRankIndex.i0000 => cls0000Rank`
  - line `24101`: `| SampledRankIndex.i0001 => cls0001Rank`
  - line `24104`: `exists idx : SampledRankIndex, sampledRankOf idx = rank`
- `sampled_contains_rank`: `9`
  - line `24103`: `def sampledContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24204`: `rootState (176 : Int) sampledRankOf sampledContainsRank`
  - line `24212`: `{rank : Fin numPairWords} (hrank : sampledContainsRank rank)`
  - line `24238`: `sampledObjectAccepts sampledContainsRank where`
  - line `24279`: `sampledContainsRank sampledScaledMarginAtRank :=`
- `sampled_object_membership`: `3`
  - line `24236`: `private noncomputable def sampledObjectMembership :`
  - line `24310`: `sampledObjectMembership`
  - line `24375`: `sampledObjectMembership`
- `classical_choose`: `3`
  - line `24239`: `objectOf := fun _rank hrank => Classical.choose hrank`
  - line `24242`: `let idx := Classical.choose hrank`
  - line `24273`: `exact Classical.choose_spec hrank`
- `bellman_rank_object_membership`: `1`
  - line `24237`: `BellmanRankObjectMembership SampledRankIndex sampledRankOf`
- `bellman_axis_rank_object_cover`: `10`
  - line `24276`: `BellmanAxisRankObjectCover`
  - line `24280`: `BellmanAxisRankObjectCover.ofMembership`
  - line `24315`: `BellmanAxisRankObjectCover.scaledMargin_nonpos`
  - line `24319`: `BellmanAxisRankObjectCover`
  - line `24323`: `BellmanAxisRankObjectCover.ofMembership`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2TerminalSmoke.lean`

- exists: `True`
- `terminal_contains_rank`: `6`
  - line `733`: `def terminalContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `736`: `private theorem terminalContainsRank_of_sampledAccepted`
  - line `738`: `terminalContainsRank rank := by`
  - line `751`: `{rank : Fin numPairWords} (hrank : terminalContainsRank rank) :`
  - line `757`: `sampledScaledMarginAtRank terminalContainsRank :=`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageBridge.lean`

- exists: `True`
- `bellman_axis_rank_object_cover`: `2`
  - line `33`: `_root_.Cuboctahedron.BellmanAxisRankObjectCover`
  - line `58`: `_root_.Cuboctahedron.BellmanAxisRankObjectCover`
- `closed_top_pairing_contains_rank`: `3`
  - line `16`: `abbrev ClosedTopPairingContainsRank (badFace : Face) :`
  - line `35`: `Accepts (ClosedTopPairingContainsRank badFace) scaledMargin)`
  - line `60`: `Accepts (ClosedTopPairingContainsRank Face.ym) scaledMargin)`
- `top_pairing_closed_language`: `3`
  - line `19`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace`
  - line `42`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :`
  - line `67`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym) :`
