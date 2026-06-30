# Phase 6Z.6K.8AP.16DU.9GO Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke`
- Ranks: `[29, 30, 32, 40, 42, 44]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 29 | 8 | 11 | 16 | `[0, 1, 3, 5, 7, 8, 10]` |
| 30 | 8 | 13 | 16 | `[0, 1, 3, 5, 7, 8, 11]` |
| 32 | 8 | 11 | 16 | `[0, 1, 3, 5, 7, 8, 10]` |
| 40 | 8 | 7 | 17 | `[0, 1, 3, 5, 7, 8, 9]` |
| 42 | 8 | 16 | 17 | `[0, 1, 3, 5, 7, 9, 11]` |
| 44 | 8 | 13 | 19 | `[0, 1, 3, 5, 7, 9, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9go_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GOBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
