# Phase 6Z.6K.8AP.16DR translation production route audit

This report is not proof evidence.  It reconciles the latest bounded
Lean smoke results with the current production hierarchy projection.

- Status: `accepted-production-route-audit`
- Producer hierarchy within configured budget: `True`
- Projected descriptor families: `862`
- Projected source+row producers: `748`
- Projected chunks: `14`
- Projected source: `57827` lines / `2362` KiB
- Projected checking: `1.17m` wall / `58.00s` CPU
- Projected peak RSS: `3.93` GiB
- Max AP16DO/AP16DQ guarded RSS: `5175.27` MiB
- Max AP16DO singleton classifier-facts RSS: `5175.27` MiB
- Singleton route exceeds old smoke cap: `True`

## Decision

The split source/row producer hierarchy remains the accepted production
route.  The AP16DO/AP16DQ singleton classifier-facts path is accepted
only as bounded smoke evidence: it proves real semantic coverage for five
ranks, but it is not the production compression coordinate.

The next proof-producing slice must target producer-hierarchy membership
over a range/state language, not more rank-local singleton roots.

## Guarded Smoke Inputs

| Guard JSON | Exit | Elapsed | Peak RSS MiB | Cap MiB |
| --- | ---: | ---: | ---: | ---: |
| `scripts/generated/phase6z6k8ap16do_compact_walsh_batch_classifier_guard.json` | 0 | 6.01s | 4043.54 | 4800 |
| `scripts/generated/phase6z6k8ap16do_rank6000745_classifier_facts_guard.json` | 0 | 2.50s | 4094.50 | 5600 |
| `scripts/generated/phase6z6k8ap16do_rank6000625_classifier_facts_guard.json` | 0 | 15.02s | 5127.29 | 5600 |
| `scripts/generated/phase6z6k8ap16do_rank6000480_classifier_facts_guard.json` | 0 | 2.50s | 3773.48 | 5600 |
| `scripts/generated/phase6z6k8ap16do_rank6000720_classifier_facts_guard.json` | 0 | 10.51s | 4681.70 | 5600 |
| `scripts/generated/phase6z6k8ap16do_rank6000662_classifier_facts_guard.json` | 0 | 16.03s | 5175.27 | 5600 |
| `scripts/generated/phase6z6k8ap16dq_five_rank_sparse_root_guard.json` | 0 | 3.00s | 4103.28 | 6500 |

## Next Required Slice

- Phase: `6Z.6K.8AP.16DS`
- Target: `SourcePositionRowProducerGoodCoverageOnRange lo hi`
- Range kind: bounded sampled production-style range with multiple ranks

Must import:
- shared source producer module
- shared row producer module
- bounded membership chunk(s)

Must not use:
- one theorem per raw rank
- one theorem per raw mask
- rank-local candidate-facts shards as the production coordinate
- packed blobs or large Boolean reductions
- native_decide, unsafe, sorry, admit, custom axioms

Acceptance gate:
- nonempty GoodDirection coverage over a meaningful bounded range
- exports semantic all-Good coverage or source-position row-producer coverage
- focused guarded Lean build below 6500 MiB RSS
- updated projection still under 5-6 wall hours / 24 CPU-hours

## Notes

- split source/row producer hierarchy remains the only accepted production route
- rank-local singleton classifier-facts route is accepted only as bounded smoke
- next Lean proof target is range/state membership over the producer hierarchy
