# Phase 6Z.6K.8AP.16BO Walsh Bound Emitter Smoke

Status: generated smoke accepted.

- rank: `100805`
- selected subcube index: `0`
- label: `*000**`
- impact: `1`
- term count: `6`
- bound sum: `-4/27`

This generated smoke proves polynomial nonpositivity through
`WalshSubcubeUpperBound`; it does not yet prove equality with
`impactDenomAtRank`.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bo_walsh_emitter_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshEmitterSmoke'

passed
elapsed:                3.00s
peak process-tree RSS:  3.935 GiB
minimum available mem:  45.153 GiB
guard kill:             no
```

Decision: accepted as the first scripted Walsh-bound emitter.  The next step
is to scale emission to all selected subcubes for the rank-`100805` cover,
then add the remaining denominator-equality bridge to `impactDenomAtRank`.
