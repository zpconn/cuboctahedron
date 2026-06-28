# Phase 6Z.6K.8AP.16BK Impact-Subcube Core

Status: accepted as a core interface.

AP16BJ found that the rank-`100805` bad masks are covered by 20 Boolean
subcubes, each killed by one internal impact denominator.  This checkpoint adds
the Lean theorem surface for that certificate shape:

```lean
ImpactSubcubeObstruction
ImpactSubcubeObstruction.notGood
ImpactSubcubeCover
ImpactSubcubeCover.toBadMaskCover
ImpactSubcubeCover.goodMaskMember_of_goodDirection
```

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 8192 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bk_impact_subcube_core_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcube 2>&1 | tee /tmp/cuboctahedron_ap16bk_impact_subcube_core_build.log'
```

Result:

```text
passed
elapsed:                13.01s
peak process-tree RSS:  3.842 GiB
minimum available mem:  45.15 GiB
guard kill:             no
```

The core intentionally does not trust AP16BJ's JSON.  Generated proof leaves
must still prove the exact denominator nonpositivity theorem for each selected
subcube, and must prove that the selected subcubes cover the complement of the
positive-survivor predicate.  The point of this file is to make that generated
target semantic and small enough to erase to `BadMaskCover`.
