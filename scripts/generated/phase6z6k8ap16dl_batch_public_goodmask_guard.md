# Phase 6Z.6K.8AP.16DL Batch Public Good-Mask Surface

Status: `passed`.

This checkpoint turns the bounded AP16DJ compact Walsh batch from a pure
`True` smoke root into a small public semantic surface.  Each generated cover
leaf now exposes its rank-local positive-survivor predicate:

```lean
def generatedGoodMaskMember (mask : SignMask) : Prop
```

and the AP16DJ batch root re-exports one theorem per rank:

```lean
rank*_goodMaskMember_of_GoodDirection
```

These theorems prove that `GoodDirectionAtRank` implies the rank-local
positive-survivor predicate for the five AP16DJ smoke signatures.  This remains
bounded smoke infrastructure, not final generated coverage.

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 5000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dl_batch_public_goodmask_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 600s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke'
```

Result:

```text
exit code: 0
elapsed: 83.11s
peak process-tree RSS: 4430.14 MiB
minimum MemAvailable seen: 45526.16 MiB
guard kill: no
```

Tracked guard JSON:

```text
scripts/generated/phase6z6k8ap16dl_batch_public_goodmask_guard.json
```
