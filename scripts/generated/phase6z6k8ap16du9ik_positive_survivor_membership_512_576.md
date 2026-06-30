# Phase 6Z.6K.8AP.16I Positive-Survivor Membership Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Status: `accepted-positive-survivor-membership-profile`
- Jobs: `4`
- Ranges: `[[512, 576]]`
- GoodDirection cases: `14`
- Ranks with GoodDirection survivors: `2`
- Descriptor families: `6`
- Positive candidate groups: `6`
- Positive survivor signatures: `2`
- Source-language groups: `5`
- Row groups: `6`
- Reusable source+row obligations: `11`
- Estimated candidate chunks at 64 candidates/chunk: `1`
- Rough Lean line estimate for this bounded surface: `586`
- Bad-direction evidence emitted: `0`
- Duplicate rank/mask memberships: `0`
- Ambiguous GoodDirection memberships: `0`

## Mask Histograms

Ranks by number of GoodDirection masks:

- `7`: `2`

GoodDirection masks by number of positive candidates:

- `1`: `14`

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[512, 576]` | 6 | 14 | 2 | 128 |

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
