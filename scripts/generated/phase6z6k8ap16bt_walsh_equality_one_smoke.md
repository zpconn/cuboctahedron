# Phase 6Z.6K.8AP.16BT Walsh Equality One-Impact Smoke

Status: rejected by memory guard.

- rank: `100805`
- impact: `1`
- terms: `6`
- max degree: `1`
- mask split style: semantic `maskBitForPair` cases, not `fin_cases mask`

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bt_walsh_equality_one_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEqualityOneSmoke'
```

Result:

```text
exit code: -15
elapsed: 10.51s
peak tree RSS: 8056 MiB
minimum available memory: 42011 MiB
killed reason: process-tree RSS 8056 MiB exceeded 8000 MiB cap
```

The generated Lean file was intentionally removed from `Cuboctahedron/` after
the failed guarded build so normal `lake build` runs do not pick up a rejected
module.

Decision: semantic six-bit splitting is still too close to the old replay
shape.  The next equality bridge should be a hand-written symbolic denominator
evaluator or integer/scaled evaluator, not a generated tactic proof over the
six mask bits.
