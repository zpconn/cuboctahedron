# Phase 6Z.6K.8AP.16DF Two-Signature Compact Cover Smoke

Status: rejected by focused guarded Lean build.

- rank 100805 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke`
- rank 101105 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank101105Smoke`
- rank 101105 selected subcubes: `11`
- rank 101105 uncovered count: `0`
- rank 101105 selected word impacts: `[1, 3, 5, 6, 7, 8, 11]`
- root Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke.lean`

This was bounded smoke evidence only.  The generated Lean artifacts were
removed after the guarded build failed or was interrupted, so this report is
diagnostic and not imported by the package.

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

Follow-up: the normal proof bottleneck was narrowed and replaced with the
generic theorem `impactNormalWalshAt_eval`.  Focused guarded builds passed for:

```text
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector
elapsed: 6.09s
peak tree RSS: 4062.42 MiB

Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomRank101105Impact11FastSmoke
elapsed: 14.54s
peak tree RSS: 4171.68 MiB
```

Decision: the AP16DF two-signature root remains rejected.  The reusable
normal bridge is accepted as a prerequisite, but composing multiple generated
selected-impact modules in one root is still not memory-safe enough for the
path forward.
