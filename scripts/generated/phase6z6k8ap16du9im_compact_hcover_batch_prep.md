# Phase 6Z.6K.8AP.16DU.9IM Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke`
- Ranks: `[641, 647, 654, 657, 659]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 641 | 9 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |
| 647 | 16 | 8 | 16 | `[0, 1, 3, 5, 6, 8, 9]` |
| 654 | 8 | 8 | 17 | `[0, 1, 3, 5, 6, 8, 9]` |
| 657 | 8 | 11 | 22 | `[0, 1, 3, 5, 6, 8, 11]` |
| 659 | 9 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9im_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
