# Phase 6Z.6K.8AP.16DU.6 Classifier Boolean Bridge Guard

Guarded focused build for the source-index/state classifier module after adding
the computable Boolean membership bridge:

```text
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
```

Command:

```text
python3 scripts/run_memory_guarded.py --max-tree-rss-mib 6500 --poll-seconds 1 --json scripts/generated/phase6z6k8ap16du6_classifier_bool_bridge_guard.json -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke'
```

Result:

```text
exit code: 0
elapsed: 6.02s
peak process-tree RSS: 4041.16 MiB
minimum available memory observed: 46111.91 MiB
RSS cap: 6500.00 MiB
killed reason: none
```

This remained a focused serial build. It did not run a broad generated import
or package build.
