# Phase 6Z.6K.8AP.16DU.3 Source-Index/State Classifier Guard

Guarded focused build for:

```text
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
```

Command:

```text
python3 scripts/run_memory_guarded.py --max-tree-rss-mib 6500 --poll-seconds 1 --json scripts/generated/phase6z6k8ap16du3_source_index_state_classifier_guard.json -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke'
```

Result:

```text
exit code: 0
elapsed: 15.04s
peak process-tree RSS: 4038.43 MiB
minimum available memory observed: 46077.05 MiB
RSS cap: 6500.00 MiB
killed reason: none
```

This was a focused serial build only. It did not run a broad generated import
or package build.
