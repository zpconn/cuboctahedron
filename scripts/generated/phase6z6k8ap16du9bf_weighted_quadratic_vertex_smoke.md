# Phase 6Z.6K.8AP.16DU.9BF Weighted Quadratic Vertex Smoke

This is a generated smoke file report. The Lean file proves compact
polynomial nonpositivity on one cube, but does not yet connect the
polynomial to `weightedDenomAtRank`.

- rank: `6000745`
- selected cube: `0`
- label: `***00*`
- support: `1, 2, 8`
- weights: `2, 1, 1`
- nonzero terms: `14`
- Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeRank6000745QuadraticVertexSmoke.lean`

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 8192 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9bf_weighted_quadratic_vertex_guard_retry1.json \
  -- lake build \
    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745QuadraticVertexSmoke
```

Result:

```text
exit = 0
elapsed = 4.01s
peak tree RSS = 4066 MiB
minimum MemAvailable = 46146 MiB
```
