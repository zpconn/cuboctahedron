# Phase 6Z.6K.8AP.16DU.0 candidate-catalog surface guard

Focused guarded build for the generated AP16DU.0 candidate-catalog surface
smoke.

- Target: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke`
- Command:

```text
python3 scripts/run_memory_guarded.py --max-tree-rss-mib 6500 --poll-seconds 1 --json scripts/generated/phase6z6k8ap16du_candidate_catalog_surface_guard.json -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke'
```

- Exit code: `0`
- Elapsed seconds: `17.02`
- Peak process-tree RSS: `4022.93 MiB`
- Minimum available memory observed: `46079.54 MiB`
- RSS cap: `6500 MiB`

This validates the generated multi-candidate catalog surface and erasure path.
It does not prove the remaining catalog-completeness premise `hcomplete`.
