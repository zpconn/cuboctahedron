# Phase 6Z.6K.8AP.16DM Compact Walsh Batch Classifier Adapter

Status: `passed`.

This checkpoint adds a small Lean adapter smoke:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/
  CompactWalshBatchClassifierSmoke.lean
```

The smoke consumes the AP16DL public theorem
`rank6000480_goodMaskMember_of_GoodDirection` and plugs it into the existing
AP16J semantic signature classifier constructor
`PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit`.

The source-position and row-producer facts remain explicit downstream
obligations.  The point of this smoke is only to prove that compact Walsh
good-mask evidence can discharge the positive-survivor membership premise
without finite replay over masks that fail `GoodDirectionAtRank`.

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 5000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dm_compact_walsh_batch_classifier_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 300s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CompactWalshBatchClassifierSmoke'
```

Result:

```text
exit code: 0
elapsed: 3.00s
peak process-tree RSS: 4036 MiB
minimum MemAvailable seen: 46123 MiB
guard kill: no
```

Tracked guard JSON:

```text
scripts/generated/phase6z6k8ap16dm_compact_walsh_batch_classifier_guard.json
```
