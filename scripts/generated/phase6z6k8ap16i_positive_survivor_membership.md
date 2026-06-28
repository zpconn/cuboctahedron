# Phase 6Z.6K.8AP.16I Positive-Survivor Membership Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Status: `accepted-positive-survivor-membership-profile`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- GoodDirection cases: `7112`
- Ranks with GoodDirection survivors: `796`
- Descriptor families: `195`
- Positive candidate groups: `195`
- Positive survivor signatures: `757`
- Source-language groups: `191`
- Row groups: `21`
- Reusable source+row obligations: `212`
- Estimated candidate chunks at 64 candidates/chunk: `4`
- Rough Lean line estimate for this bounded surface: `15098`
- Bad-direction evidence emitted: `0`
- Duplicate rank/mask memberships: `0`
- Ambiguous GoodDirection memberships: `0`

## Mask Histograms

Ranks by number of GoodDirection masks:

- `1`: `18`
- `2`: `40`
- `3`: `19`
- `4`: `30`
- `5`: `25`
- `6`: `41`
- `7`: `140`
- `8`: `112`
- `9`: `32`
- `10`: `1`
- `11`: `114`
- `12`: `12`
- `13`: `166`
- `16`: `46`

GoodDirection masks by number of positive candidates:

- `1`: `7112`

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 125 | 4693 | 487 | 31168 |
| `[100000, 102500]` | 37 | 296 | 66 | 4224 |
| `[1000000, 1002500]` | 12 | 50 | 11 | 704 |
| `[10000000, 10002500]` | 136 | 2069 | 235 | 15040 |
| `[30000000, 30002500]` | 0 | 0 | 127 | 8128 |
| `[60000000, 60002500]` | 0 | 0 | 27 | 1728 |
| `[90000000, 90002500]` | 1 | 4 | 5 | 320 |

## Decision Notes

- the profile groups only GoodDirection survivors
- denominator-nonpositive masks are intentionally not enumerated
- future Lean evidence should consume a GoodDirection premise and prove positive membership

## Next Lean Surface

- Target: `SourcePositionRowProducerGoodCoverageOnRange lo hi`
- Premises:

  - `rank < numPairWords`
  - `lo <= rank`
  - `rank < hi`
  - `totalLinearOfPairWord (unrankPairWord rank) = matId`
  - `GoodDirectionAtRank rank mask`

- Membership goal: produce one SourcePairPositionSpec, one SourceIndexStateRowProducer, and one SourceIndexStateKey
- Forbidden shape: do not prove forall mask by fin_cases over all 64 masks; do not emit denominator-nonpositive witnesses for masks that fail GoodDirection
- Erasure path:

  - `SourcePositionRowProducerGoodCoverageOnRange.of_coverage`
  - `SourcePositionRowProducerGoodLanguageOnRange.to_allGoodCoverage`
  - `semanticGeneratedCoverageOfAllGoodIntervals`

## Interpretation

This profile is the replacement for the AP.16H singleton smoke.  It asks
only whether observed `GoodDirection` survivors have a positive
source-position plus row-producer candidate.  It does not try to prove
anything about masks that fail `GoodDirection`; those must remain the
responsibility of the generic feasibility-to-GoodDirection theorem.

A future Lean emitter should therefore target a theorem with an explicit
`GoodDirectionAtRank r mask` premise and a survivor-signature or
source-language membership lemma, rather than a finite-mask theorem that
branches over all 64 masks at a rank.
