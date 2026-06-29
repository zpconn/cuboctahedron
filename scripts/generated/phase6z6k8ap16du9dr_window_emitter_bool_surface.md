# Phase 6Z.6K.8AP.16DU.9DR: window emitter Boolean surface

DU.9DR updates `scripts/generate_window_survivor_only_descriptor_smoke.py` so
the survivor-only descriptor window emitter now produces the Boolean descriptor
coverage route directly, in addition to the existing semantic descriptor
coverage theorem.

The regenerated default `[0,3)` module now includes:

```lean
theorem windowDescriptorBoolCoverage_of_survivor :
    ... ->
    SourceIndexStateDescriptorBoolCoverageOnRange 0 3

theorem windowSourceRowFactsBridge_of_survivor_via_bool :
    ... ->
    SourceRowFactsGoodBridgeOnRange 0 3

theorem windowAllGoodCoverage_of_survivor_via_bool :
    ... ->
    AllTranslationGoodCoverageOnRange 0 3
```

Generation command:

```bash
python3 scripts/generate_window_survivor_only_descriptor_smoke.py
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dr_window_emitter_bool_surface_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SemanticSurvivorOnlyWindow000000000_000000003Smoke
```

Result:

- Exit: `0`
- Elapsed: `28.57s`
- Peak tree RSS: `6033.04 MiB`
- Minimum available memory observed: `43134.02 MiB`

Decision: accepted.  The manual DU.9DQ smoke is now generator-native for this
window pattern.  This still leaves the production membership theorem as the
main blocker: generated windows must prove the survivor membership premise by
safe semantic family facts, not by compact rank-local denominator roots.
