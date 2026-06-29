# Phase 6Z.6K.8AP.16DO five-rank classifier-facts guard

Status: accepted as bounded singleton smoke evidence; combined root deferred.

AP16DO generalizes the AP16DN compact-Walsh classifier-facts bridge from rank
`6000480` to the five AP16DJ smoke ranks:

```text
6000745
6000625
6000480
6000720
6000662
```

The generated singleton modules are:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/
  CompactWalshBatchClassifierFactsRank6000745Smoke.lean
  CompactWalshBatchClassifierFactsRank6000625Smoke.lean
  CompactWalshBatchClassifierFactsRank6000480Smoke.lean
  CompactWalshBatchClassifierFactsRank6000720Smoke.lean
  CompactWalshBatchClassifierFactsRank6000662Smoke.lean
```

Each module imports only its rank-local source/row candidate facts and proves a
singleton theorem:

```lean
theorem rankNNNNNNNAllGoodCoverage :
    AllTranslationGoodCoverageOnRange NNNNNNN (NNNNNNN + 1)
```

The shared helper module
`CompactWalshBatchClassifierSmoke.lean` now exposes reusable classifier/facts
combinators plus five rank-specific `GoodMaskMember` and
`AllGoodCoverageOfFacts` wrappers.

## Guarded builds

All Lean commands were run serially:

```text
export LEAN_NUM_THREADS=1
export LAKE_JOBS=1
```

The classifier helper module stayed under the earlier 4.8 GiB guard:

| Target | Guard | Elapsed | Peak RSS | Min MemAvailable |
| --- | ---: | ---: | ---: | ---: |
| `CompactWalshBatchClassifierSmoke` | 4800 MiB | 6.01s | 4043.54 MiB | 46128.89 MiB |

The five singleton classifier-facts targets required a 5.6 GiB guard:

| Rank | Guard | Elapsed | Peak RSS | Min MemAvailable |
| ---: | ---: | ---: | ---: | ---: |
| 6000745 | 5600 MiB | 2.50s | 4094.50 MiB | 46115.87 MiB |
| 6000625 | 5600 MiB | 15.02s | 5127.29 MiB | 44664.04 MiB |
| 6000480 | 5600 MiB | 2.50s | 3773.48 MiB | 46242.50 MiB |
| 6000720 | 5600 MiB | 10.51s | 4681.70 MiB | 45394.66 MiB |
| 6000662 | 5600 MiB | 16.03s | 5175.27 MiB | 44570.56 MiB |

Raw guard JSON:

```text
scripts/generated/phase6z6k8ap16do_compact_walsh_batch_classifier_guard.json
scripts/generated/phase6z6k8ap16do_rank6000745_classifier_facts_guard.json
scripts/generated/phase6z6k8ap16do_rank6000625_classifier_facts_guard.json
scripts/generated/phase6z6k8ap16do_rank6000480_classifier_facts_guard.json
scripts/generated/phase6z6k8ap16do_rank6000720_classifier_facts_guard.json
scripts/generated/phase6z6k8ap16do_rank6000662_classifier_facts_guard.json
```

## Decision

AP16DO is accepted as bounded singleton evidence that the AP16DN proof pattern
can be generated for all five AP16DJ ranks without importing the unsafe global
source/row fact bundle.

The result also moves the memory boundary: ranks `6000625` and `6000662` exceed
the previous 5 GiB smoke cap and need a 5.6 GiB serial guard.  The next step
must not import all five heavy singleton modules into an ordinary root until we
have either a thinner erased export layer or a measured root build under an
explicitly raised guard.  Do not run a broad package build for this route.
