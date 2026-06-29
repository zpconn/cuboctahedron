# Phase 6Z.6K.8AP.16DF Two-Signature Compact Cover Smoke

Status: accepted by AP16DI guarded serial build.

- rank 100805 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverSmoke`
- rank 101105 cover namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank101105Smoke`
- rank 101105 selected subcubes: `11`
- rank 101105 uncovered count: `0`
- rank 101105 selected word impacts: `[1, 3, 5, 6, 7, 8, 11]`
- root Lean file: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomTwoSignatureCoverSmoke.lean`

This is bounded smoke evidence only.  It validates namespace-safe composition
of two AP16DC-style cover modules after selected-impact modules are built
serially under a memory guard.

Accepted guarded serial build:

```text
python3 scripts/run_ap16df_serial_guarded.py \
  --generate \
  --json /tmp/ap16df_serial_guarded/summary_pass.json \
  --rss-cap-mib 5000 \
  --available-floor-mib 12000 \
  --timeout-seconds 600
```

Representative focused checks:

```text
rank101105 cover:
  elapsed: 12.52s
  peak tree RSS: 4309.70 MiB

two-signature root after cached leaves:
  elapsed: 2.50s
  peak tree RSS: 4031.95 MiB
```

The generated Lean artifacts are not committed as production coverage; they
are regenerated on demand by
`scripts/generate_ap16df_two_signature_compact_cover_smoke.py` and checked by
`scripts/run_ap16df_serial_guarded.py`.
