# Phase 6Z.6K.8AP.16BL Impact-Subcube Smoke

Status: bounded Lean smoke accepted; not accepted as production compression.

- rank: `100805`
- positive masks: `[4, 6, 11, 22, 30, 31, 59, 63]`
- selected impact subcubes: `20`
- masks with denominator facts: `56`
- mask/impact denominator facts: `60`

This smoke is proof-carrying Lean, but it is not yet production
compression: each subcube nonpositivity proof still splits over the masks
inside that subcube.  The next step is to replace those splits with a
generic Walsh/subcube bound theorem.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bl_impact_subcube_smoke_guard_retry2.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 600s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeSmoke'

passed
elapsed:                56.14s
peak process-tree RSS:  7.562 GiB
minimum available mem:  40.101 GiB
guard kill:             no
```

Decision: this validates the `ImpactSubcubeCover` theorem surface and the
selected-subcube membership flow on the rank-`100805` singleton.  It should
not be scaled directly: the generated proof still replays mask-local
denominator facts inside each subcube.  Production must first add a generic
Walsh/subcube bound theorem proving subcube denominator nonpositivity from
polynomial coefficients and fixed-bit constraints.
