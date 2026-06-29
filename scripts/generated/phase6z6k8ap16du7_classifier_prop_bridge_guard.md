# Phase 6Z.6K.8AP.16DU.7 classifier Prop/Bool bridge guard

This focused guarded build checks the AP16DU.7 classifier bridge smoke.
It is not proof evidence for global coverage; it confirms that the generated
Prop/Bool classifier bridge stays within the current memory budget.

Command:

```bash
python3 scripts/run_memory_guarded.py --max-tree-rss-mib 6500 --poll-seconds 1 \
  --json scripts/generated/phase6z6k8ap16du7_classifier_prop_bridge_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke'
```

Result:

- Exit code: `0`
- Elapsed seconds: `8.004349039001681`
- Peak tree RSS MiB: `4038.29296875`
- Minimum available MiB observed: `46086.6015625`
- Killed reason: `null`

The build completed successfully.
