# Phase 6Z.6K.8AP.16BQ Walsh Cover Bridge

Status: accepted as the Walsh cover bridge surface.

Updated file:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalsh.lean
```

New exported bridge:

```lean
WalshImpactSubcubeCover
WalshImpactSubcubeCover.toImpactSubcubeCover
WalshImpactSubcubeCover.toBadMaskCover
WalshImpactSubcubeCover.goodMaskMember_of_goodDirection
```

This lets generated leaves provide `WalshImpactObstruction` families
(polynomial bound plus an explicit equality bridge to `impactDenomAtRank`) and
erase them into the existing `ImpactSubcubeCover`/`BadMaskCover` APIs.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bq_walsh_bridge_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 240s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshAllSmoke'

passed
elapsed:                20.02s
peak process-tree RSS:  4.140 GiB
minimum available mem:  44.861 GiB
guard kill:             no
```

Decision: accepted as the bridge surface.  The remaining production problem is
not polynomial nonpositivity or cover erasure; it is proving the denominator
equality premise scalably.
