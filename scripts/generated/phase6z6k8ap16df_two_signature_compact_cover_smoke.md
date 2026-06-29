# Phase 6Z.6K.8AP.16DF Two-Signature Compact Cover Smoke

Status: rejected by focused guarded Lean build.

- rank 100805 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke`
- rank 101105 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank101105Smoke`
- rank 101105 selected subcubes: `11`
- rank 101105 uncovered count: `0`
- rank 101105 selected word impacts: `[1, 3, 5, 6, 7, 8, 11]`
- root Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke.lean`

This was bounded smoke evidence only.  The generated Lean artifacts were
removed after the guarded build failed, so this report is diagnostic and not
imported by the package.

Guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16df_two_signature_cover_build.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 900s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke'
```

Result:

```text
killed by memory guard
elapsed: 492.42s
peak tree RSS: 7002.96 MiB
minimum available memory: 42898.13 MiB
```

Decision: rejected.  The rank-101105 cover is mathematically covered by the
external exact profiler, but the generated selected-impact normal proof path is
too memory-heavy for scaling.  The next path should avoid generating/importing
full selected-impact compact denominator modules for each new rank, or should
first replace the six-bit normal proof with a cheaper symbolic theorem.
