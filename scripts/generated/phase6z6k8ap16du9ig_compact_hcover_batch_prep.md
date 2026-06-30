# Phase 6Z.6K.8AP.16DU.9IG Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke`
- Ranks: `[261, 263, 269, 315, 317]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 261 | 13 | 7 | 19 | `[0, 1, 3, 5, 6, 7, 11]` |
| 263 | 7 | 8 | 16 | `[0, 1, 3, 5, 6, 7, 10]` |
| 269 | 7 | 11 | 16 | `[0, 1, 3, 5, 6, 7, 9]` |
| 315 | 9 | 7 | 21 | `[0, 1, 3, 5, 6, 7, 11]` |
| 317 | 7 | 8 | 14 | `[0, 1, 3, 5, 6, 7, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ig_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
