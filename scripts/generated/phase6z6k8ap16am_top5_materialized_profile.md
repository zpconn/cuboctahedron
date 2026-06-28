# Phase 6Z.6K.8AP.16AM AP.16 Materialized Positive-Survivor Profile

This diagnostic profile is not trusted as proof.

- Status: `materialized-profile-complete`
- Checkpoint dir: `/tmp/cuboctahedron_ap16al_top5_manifest_extraction`
- Windows: `5`
- Sampled ranks: `5000`
- GoodDirection cases: `4342`
- Candidate groups: `191`
- Survivor signatures: `494`
- Max window RSS: `27308` KiB

## Windows

| Range | GoodDirection | Candidate groups | Signatures | Ranks w/Good | Seconds | RSS KiB |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 1000]` | 1465 | 74 | 131 | 138 | 19.00 | 26348 |
| `[3000000, 3001000]` | 582 | 51 | 97 | 110 | 11.49 | 25200 |
| `[6000000, 6001000]` | 863 | 53 | 71 | 137 | 15.25 | 24432 |
| `[44000000, 44001000]` | 711 | 63 | 79 | 96 | 11.18 | 27308 |
| `[54000000, 54001000]` | 721 | 83 | 116 | 132 | 13.66 | 24816 |

## Top Signatures

- `e378237f035fcae538ecad3cc2d5941db625afefe9429d3bf3e387b9fab5595b`: cases=52, ranks=4, masks=[8, 13, 16, 22, 28, 29, 30, 31, 45, 47, 54, 55, 63]
- `7640df3ffbdd5cb8abd2cc411e36800321a232d79d0e1fdd322db7ba84d65463`: cases=44, ranks=4, masks=[8, 9, 13, 20, 22, 29, 31, 45, 47, 55, 63]
- `14931975d9969f8baedfb61cd70a614da7ff1aca4c62cbf1d52e38a65a42ae93`: cases=36, ranks=6, masks=[14, 17, 23, 31, 46, 62]
- `98a1a30835c91bc602d3d34204b1af71497ee3b77231d944c7815f74e780a7ba`: cases=36, ranks=6, masks=[8, 16, 30, 47, 55, 63]
- `9ab594e6d07945124cb858792883096aecc8e47eae7402cd7254e2adce8df4b1`: cases=36, ranks=3, masks=[5, 13, 16, 18, 20, 28, 29, 30, 31, 45, 62, 63]
- `e3a9416cd1a6e8af6c14bde4b9d4430e941be7eab3e0f2446c3497278c605f0f`: cases=36, ranks=3, masks=[5, 13, 16, 18, 20, 28, 29, 30, 31, 45, 62, 63]
- `614bfca6a8851f3a5ac4df46194cf253aa24e9bf7279b8f03d7d787551fb85a2`: cases=32, ranks=2, masks=[10, 14, 15, 17, 21, 23, 24, 25, 26, 27, 31, 40, 42, 48, 49, 56]
- `6ba934c1e2865967caf9c4d7c827002c374f2b9c7bd56971c4d8dd2cdaf081f2`: cases=32, ranks=2, masks=[10, 14, 15, 17, 21, 23, 24, 25, 26, 27, 31, 40, 42, 48, 49, 56]
- `2bb70085814571dae9583451b10738158dab6c2fcb9fccfa7f9dd500f59ec670`: cases=30, ranks=6, masks=[9, 13, 23, 31, 45]
- `fd3c7d45a9515d9684bf183eaec42f943091d701caa2a62e7967bee98313c328`: cases=30, ranks=6, masks=[13, 22, 31, 45, 54]
- `80d957e8e3efa1c4c6493d2c3db69d8e05ae69d2087facb31ad1ccc5513315fb`: cases=28, ranks=4, masks=[4, 5, 28, 30, 37, 39, 63]
- `0f65e835da8847d002c12e7a2148cb3b475f7cd82f808e4343402c7d4f1a9e8c`: cases=27, ranks=3, masks=[8, 9, 13, 28, 30, 37, 39, 54, 55]
- `b26537f4e6cfb87199472433f46f62e36fc7c3bac402866116e9298e1ca232c7`: cases=27, ranks=3, masks=[8, 9, 13, 28, 30, 37, 39, 54, 55]
- `63a847ec76734fbe63d33170824ccc3391e36565fa963982a4eeeb51759d61f4`: cases=26, ranks=2, masks=[10, 14, 15, 17, 21, 23, 24, 25, 27, 42, 48, 49, 56]
- `7f92c8f1416c2f2813b355d5b7ba156bb53b473730767d9b55c973cd0c6f8461`: cases=26, ranks=2, masks=[10, 14, 15, 21, 23, 25, 26, 27, 31, 40, 48, 49, 56]
- `d93633e539d65737a992d3e15e57c6f94186e89ffc8a3468a7c3525627e74a53`: cases=26, ranks=2, masks=[8, 13, 16, 22, 28, 29, 30, 31, 45, 47, 54, 55, 63]
- `e31488b8c39574e08069e1e4d364dfc2b6b61f373bcfa0f0765f367f4b5cbfa6`: cases=26, ranks=2, masks=[8, 13, 16, 22, 28, 29, 30, 31, 45, 47, 54, 55, 63]
- `208b25ba5555d70d730bc0841f834f927ca1c53cd2d860f4dc2edba6c7f1cb55`: cases=24, ranks=6, masks=[1, 23, 45, 62]
- `f1aa9f57aa6b507df42f32a5f8e149148cb66b6231827732cb8546aaae0ee00e`: cases=24, ranks=4, masks=[0, 1, 24, 26, 62, 63]
- `1a2d3b5d48d95e0791284c07c5185ae55ed3b1c2b5174f09ce6d028dffe7faa2`: cases=22, ranks=2, masks=[9, 13, 18, 22, 24, 29, 30, 31, 39, 45, 54]

## Decision Notes

- diagnostic profile only: not Lean proof evidence
- merged from detailed checkpoints outside the repo
- compatible with AP.16 shared-candidate smoke emitters
