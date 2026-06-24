# Phase 6Z.2 Translation Source-Pair Parametric Profile

This report is diagnostic only; Lean must still check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Pair words scanned | 100,000 |
| Identity-linear words | 5,565 |
| GoodDirection survivors | 39,710 |
| Source-pair cases | 39,710 |
| Unique source pairs | 235 |
| Exact row shapes behind those pairs | 8,970 |
| Max row shapes per source pair | 273 |
| Source pairs with >100 row shapes | 32 |
| Max multiplier variants per source pair | 273 |
| Max weighted-c values per source pair | 868 |

Decision: **accepted**

- source pairs cover every GoodDirection survivor in the window; next step is a Lean pilot for a high-variation source pair
- several source pairs have high exact-row variation, so generated proofs must be parametric rather than exact row-shape enumerations

## Top Source Pairs By Exact-Row Variation

1. `278db1f49b17f0333e2d33788b892e0b8624c42f213541e9a7d9f02f7c961482`: 1,016 cases; 273 row shapes; 273 multiplier variants; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
2. `ca2b14f915ca83a1a12d8dffbbe80a668272f570172001789f97a34e7649e451`: 615 cases; 224 row shapes; 224 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 11}]
3. `d9a9149109137126e078543a943bf9eacb1c6d08bc8e5dbfb7717476ce9492e4`: 696 cases; 220 row shapes; 220 multiplier variants; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xp'}, {'kind': 'xpStart', 'index': 1}]
4. `d611693e904457a75b4b118a7390fd88fd0ef30213e479ab00229c7656f94ead`: 467 cases; 212 row shapes; 212 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 9}]
5. `351b04128f3f1901e5ffdc54430fe02cdaf1bcc1903ee1fbc5c5707bb7bc9b00`: 416 cases; 192 row shapes; 192 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 6}]
6. `513f51128e8b6d356d5f0059d792b6ee98b4d6a8f8e6deb429fb6b769a3bafea`: 451 cases; 191 row shapes; 191 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 7}]
7. `289a040cfc62d87874689d1842c82135d2f567389eb7d9c5b1434b23ce14b045`: 419 cases; 186 row shapes; 186 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 4}]
8. `b7efa03a1d5cfa8e557fd9bad2c2784fe7e03cb5e7e3edda6993009238812716`: 407 cases; 176 row shapes; 176 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 10}]
9. `4e2a427051647da36fd524fb73b2b9545c4cee9881d034db785c9c2923875dc2`: 321 cases; 173 row shapes; 173 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 5}]
10. `be1d86fc02853d1d39373263c2f17581b9583505624ecd876e5bfc13be1e2baa`: 451 cases; 169 row shapes; 169 multiplier variants; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xp'}, {'kind': 'xpStart', 'index': 2}]
11. `2ff03e5a6064fae3d4f1d07e54e292a1575efe23955fe0d08665c7e6f281ae33`: 323 cases; 162 row shapes; 162 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 11}]
12. `d4bee78b63fa6bcebd58ce23dce690fc537b368d0b8afd26b4c969ef509d6bb4`: 510 cases; 160 row shapes; 160 multiplier variants; sources=[{'kind': 'interior', 'impact': 6, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
13. `f0ba0180061f59e53faeed2e79d4c15930c29140733cd9e71bf34fae67f35907`: 233 cases; 156 row shapes; 156 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 7}]
14. `d54a2c889fcef309a0ac57baed60019f5ac403474816c214742668137ff16d26`: 213 cases; 151 row shapes; 151 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 9}]
15. `8ab3c7c4f0f88189caa520eab759236c56e0326258e5bc0c6f96566241551ca4`: 348 cases; 150 row shapes; 150 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 5}]
16. `c3bd4b1792fb6641b2d34dc3d1b1bbbe2acae60e44094a53cd135a473d7fbcde`: 485 cases; 148 row shapes; 148 multiplier variants; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xm'}, {'kind': 'xpStart', 'index': 1}]
17. `5c64d4cb48f5c7b902456fd0d508ac726746f2d6514ca46677c69b3c6a9546a5`: 387 cases; 148 row shapes; 148 multiplier variants; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 8}]
18. `5a898293a2b13e7c50e26dd21eee89abef68d2d730bafe3aadbe46e809a623dc`: 428 cases; 147 row shapes; 147 multiplier variants; sources=[{'kind': 'interior', 'impact': 5, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
19. `7360ea999a5754c1cfe664453f5df1487c1114a2ff9ac3e5f4cbe3acd8fe8a28`: 381 cases; 146 row shapes; 146 multiplier variants; sources=[{'kind': 'interior', 'impact': 11, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
20. `e077434d25cd2b8256b2c045b2f2c39e2e407562a418eb83b7432401c75cb23e`: 389 cases; 139 row shapes; 139 multiplier variants; sources=[{'kind': 'interior', 'impact': 7, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
21. `c70492ed8faca293187643380dc66b322798ec21b32c913857d1aa10559c5aec`: 192 cases; 138 row shapes; 138 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 10}]
22. `12991f3b49678508b2653768e9af7aa9432dc73482a0dcc569e07875e3f1dfb6`: 222 cases; 128 row shapes; 128 multiplier variants; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 4}]
23. `be545f38cd79ff84fc12e32e2aad4d6ab524ec73af55f6643c76c1b22af7bb92`: 308 cases; 126 row shapes; 126 multiplier variants; sources=[{'kind': 'interior', 'impact': 8, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]
24. `bdd6ae8abddb8a187048c67c58ff66a67d49842cb4cf1f7e57055893351b594f`: 291 cases; 122 row shapes; 122 multiplier variants; sources=[{'kind': 'interior', 'impact': 12, 'face': 'xm'}, {'kind': 'xpStart', 'index': 0}]
