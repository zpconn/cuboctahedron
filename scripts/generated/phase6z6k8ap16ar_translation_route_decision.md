# Phase 6Z.6K.8AP.16AR Translation Route Decision

This report is not proof evidence.  It records the route decision after the
latest AP16 candidate-fact scaling smoke and prevents the plan from drifting
back into the high-RSS path.

- Status: `accepted-route-decision`
- Production-preferred route: pair-sign producer hierarchy
- Diagnostic-only route: AP16 positive-survivor candidate-fact scaling
- Next bridge target: `pairSignProducerCoverage_killedBridge`

## Candidate-Fact Route

Reference:

```text
scripts/generated/phase6z6k8ap16aq_global4_manifest_smoke.md
```

Measured bounded smoke:

```text
represented manifest shards:     4
represented signatures:          6
positive-mask facts:            60
shared candidate groups:        17
total Lean source lines:    12,659
guarded build elapsed:       69.68s
guarded build peak RSS:      8.015 GiB
minimum available memory:   39.79 GiB
```

Decision: keep this path for bounded smoke/regression only.  It still emits one
concrete proof block per positive-mask fact, and the shared candidate-facts
module reached about 8 GiB RSS for only 60 positive-mask facts.

## Pair-Sign Producer Route

Reference:

```text
scripts/generated/phase6z6k8ao_pair_sign_producer_hierarchy_design.md
```

Projected production hierarchy:

```text
descriptor families:             862
source groups:                   722
row groups:                       26
source+row producers:            748
descriptor chunks:                14
projected Lean source lines:  57,827
projected source size:      2,362 KiB
projected CPU check:             58s
projected wall at 4 jobs:       1.2m
projected peak RSS:           3.93 GiB
```

Decision: this is the production-preferred translation route.  It keeps source
and row producers private, exports theorem-valued semantic coverage, and avoids
concrete positive-mask proof replay.

## Next Step

Resume with the pair-sign producer membership bridge:

```text
pairSignProducerCoverage_killedBridge
```

The bridge must derive matching source-position and row-producer predicates
from an arbitrary identity-linear `GoodDirectionAtRank` residual translation
case, then apply the generated producer theorem and
`TranslationGoodCaseKilled.killed`.

All focused builds for this work should use `scripts/run_memory_guarded.py`.
Avoid `ulimit -v` for Lean, since AP16AN showed that it can fail by preventing
Lean from creating worker threads even when RSS is safe.
