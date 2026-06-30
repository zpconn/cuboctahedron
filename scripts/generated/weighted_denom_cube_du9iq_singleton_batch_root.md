# DU9IQ Singleton Batch Root

- profile: `scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke`
- root output: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke.lean`
- singleton ranks: `896, 897, 899, 903, 905, 911, 955`
- wrapper count: `7`

## Selected Signatures

| rank | good masks | candidate groups | positive leaf exists | wrapper output |
| ---: | ---: | ---: | :---: | --- |
| `896` | `13` | `8` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank896ClosedSemanticSmoke.lean` |
| `897` | `13` | `7` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank897ClosedSemanticSmoke.lean` |
| `899` | `16` | `10` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank899ClosedSemanticSmoke.lean` |
| `903` | `7` | `5` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank903ClosedSemanticSmoke.lean` |
| `905` | `8` | `5` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank905ClosedSemanticSmoke.lean` |
| `911` | `11` | `6` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank911ClosedSemanticSmoke.lean` |
| `955` | `7` | `5` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank955ClosedSemanticSmoke.lean` |

## Guarded Build Order

Generate any missing positive leaves first, then build each heavy leaf
serially under the guard.  Build the root only after the heavy leaves are
warm.

- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 896 --mask 9 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 897 --mask 8 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank897PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 899 --mask 8 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank899PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 903 --mask 18 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank903PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 905 --mask 18 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank905PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 911 --mask 9 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank911PositivePrecomputedSignatureSmoke.lean`
- generation: `python3 scripts/generate_ap16t_precomputed_signature_smoke.py --profile scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json --rank 955 --mask 16 --output Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/WeightedDenomCubeDU9IQRank955PositivePrecomputedSignatureSmoke.lean`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank896_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank896PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank897_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank897PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank899_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank899PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank903_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank903PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank905_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank905PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank911_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank911PositivePrecomputedSignatureSmoke`
- heavy leaf build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_rank955_positive_precomputed_signature_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQRank955PositivePrecomputedSignatureSmoke`
- root build: `env LAKE_JOBS=1 python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_singleton_batch_root_root_guard.json -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke`
