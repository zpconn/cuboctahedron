# Phase 6Z.6K.8AP.16DT positive-survivor classifier slice plan

This report is not proof evidence.  It chooses the next theorem surface
for the production-style GoodDirection membership emitter.

- Status: `accepted-candidate-catalog-classifier-plan`
- GoodDirection cases profiled: `7112`
- Positive candidate groups: `195`
- Positive survivor signatures: `757`
- Duplicate rank/mask memberships: `0`
- Ambiguous GoodDirection memberships: `0`
- Bad-direction evidence emitted: `0`

## Signature Route

- Status: `rejected-rank-local-signature-anchor`
- Singleton signatures: `725`
- Singleton cases: `6602`
- Multi-rank signatures: `32`
- Multi-rank cases: `510`
- Max rank count per signature: `4`
- Rank-count histogram: `{'1': 725, '2': 27, '3': 3, '4': 2}`

Most positive survivor signatures are single-rank in the AP16I sample; using them directly as production leaves would recreate rank-local coverage.

## Candidate Catalog Route

- Status: `accepted-next-emitter-coordinate`
- Chunk size: `64`
- Chunk count: `4`

Case concentration:

| Top groups | Cases | Rank-count sum | Mask-count sum |
| ---: | ---: | ---: | ---: |
| 8 | 3566 | 1769 | 155 |
| 16 | 4387 | 2265 | 295 |
| 32 | 5451 | 3016 | 476 |
| 64 | 6454 | 3831 | 734 |
| 128 | 7009 | 4322 | 962 |
| 195 | 7112 | 4421 | 1049 |

First chunks:

| Chunk | Candidates | Observed cases | Top candidate cases |
| ---: | ---: | ---: | ---: |
| 0 | 64 | 6454 | 1316 |
| 1 | 64 | 555 | 19 |
| 2 | 64 | 100 | 3 |
| 3 | 3 | 3 | 1 |

Positive candidate groups are shared across many ranks/masks and already carry the source-position plus row-producer target data.

## Next Emitter

- Script: `generate_ap16dt_positive_survivor_candidate_catalog_slice.py`
- Preferred theorem: `PositiveSurvivorBoolClassifierOnRange lo hi`
- Candidate type: private finite candidate catalog chunk, not raw ranks
- Complete field: `forall rank mask, hM -> goodDirectionAtRankBool = true -> exists candidate, CandidateMember candidate rank mask`
- Source/row fields:
  - `CandidateMember candidate rank mask -> spec.Predicate rank mask`
  - `CandidateMember candidate rank mask -> rowProducer.Applies key rank mask`
- Erasure path:
  - `PositiveSurvivorBoolClassifierOnRange.to_coverage`
  - `SourcePositionRowProducerGoodCoverageOnRange.to_allGoodCoverage`
- First slice range: `[0, 5000]`
- First slice candidate chunk: `0`
- First slice candidates: `64`
- First slice observed cases: `6454`
- Must not use:
  - signature-anchor singleton leaves as the production coordinate
  - rank-local candidate-facts shards
  - finite replay over all masks
  - generated bad-direction witnesses

## Decision Notes

- AP16DS correctly blocked on the missing production classifier.
- Direct signature anchoring is rejected by the singleton-heavy histogram.
- The next bounded emitter should target shared positive candidate groups.
