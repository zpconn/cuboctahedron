# Bellman Membership Mode Audit

This is diagnostic-only evidence.  It records whether the current
Bellman generator/generated smoke surface is still sample-indexed or
has moved to the semantic closed-language object-cover contract.

## Summary

- decision: `closed-language-surface-present`
- sampled membership mentions: `0`
- closed-language mentions: `32`
- object-cover mentions: `9`
- recommended next step: Replace generated SampledRankIndex/sampledContainsRank covers with a BellmanAxisRankObjectCover whose ContainsRank is ClosedTopPairingContainsRank Face.ym, and prove the covers field from TopPairingClosedLanguageAtRank rather than Classical.choose over sampled ranks.

## Files

### `Cuboctahedron/Search/TopPairingBellmanObject.lean`

- exists: `True`
- `bellman_rank_object_membership`: `3`
  - line `71`: `BellmanRankObjectMembership`
  - line `154`: `BellmanRankObjectMembership`
  - line `362`: `BellmanRankObjectMembership`
- `bellman_axis_rank_object_cover`: `9`
  - line `137`: `BellmanAxisRankObjectCover`
  - line `144`: `BellmanAxisRankObjectCover.ofMembership`
  - line `211`: `BellmanAxisRankObjectCover`
  - line `397`: `BellmanAxisRankObjectCover`
  - line `410`: `BellmanAxisRankObjectCover.ofMembership`
- `closed_top_pairing_contains_rank`: `3`
  - line `20`: `abbrev ClosedTopPairingContainsRank (badFace : Face) :`
  - line `158`: `(ClosedTopPairingContainsRank badFace) :=`
  - line `216`: `(ClosedTopPairingContainsRank badFace)`
- `top_pairing_closed_language`: `6`
  - line `18`: `fun rank => TopPairingClosedLanguageAtRank rank badFace`
  - line `33`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `68`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `231`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `326`: `TopPairingClosedLanguageAtRank obj.rank badFace :=`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean`

- exists: `True`
- `top_pairing_closed_language`: `5`
  - line `8`: ``TopPairingClosedLanguageAtRank`, not from sampled rank/path objects.  This file`
  - line `65`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`
  - line `118`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`
  - line `129`: `TopPairingClosedLanguageAtRank rank Face.ym ->`
  - line `134`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTraceMarginBoundsSocket.lean`

- exists: `True`
- `top_pairing_closed_language`: `16`
  - line `31`: `∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,`
  - line `42`: `∃ closed : TopPairingClosedLanguageAtRank rank Face.ym,`
  - line `111`: `(closed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `239`: `(closed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `254`: `(closed : TopPairingClosedLanguageAtRank rank Face.ym)`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTraceBucketComponentFamilySmoke.lean`

- exists: `True`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSharedGainPrefixBucketSmoke.lean`

- exists: `True`
- `top_pairing_closed_language`: `2`
  - line `10`: ``rank + TopPairingClosedLanguageAtRank`; there are no sampled ranks or path`
  - line `48`: `TopPairingClosedLanguageAtRank rank Face.ym /\`
