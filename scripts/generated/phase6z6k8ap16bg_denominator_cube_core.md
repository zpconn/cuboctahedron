# Phase 6Z.6K.8AP.16BG Denominator-Cube Core

Status: accepted as a core interface.

This checkpoint adds:

```lean
InternalImpactWeights
weightedDenomAtRank
WeightedDenomCubeObstruction
WeightedDenomCubeObstruction.notGood
```

The central theorem is intentionally small: if generated evidence proves that a
weighted sum of the 13 internal impact denominators is nonpositive on a bad
mask family, and also proves that `GoodDirectionAtRank` would make that
weighted sum positive, then the family contradicts `GoodDirectionAtRank`.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 8192 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bg_denominator_cube_core_guard_final.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.DenominatorCube 2>&1 | tee /tmp/cuboctahedron_ap16bg_denominator_cube_core_build_final.log'
```

Result:

```text
passed
elapsed:                3.00s
peak process-tree RSS:  3.874 GiB
minimum available mem:  45.22 GiB
guard kill:             no
```

Important caveat: a direct singleton impact constructor was tried and rejected
because it forced Lean to unfold and normalize the full 13-term weighted
denominator expression.  The accepted design keeps `positive_of_good` and
`nonpos` as generated proof fields, so the next smoke should provide those
facts locally for one Boolean cube without global reduction.
