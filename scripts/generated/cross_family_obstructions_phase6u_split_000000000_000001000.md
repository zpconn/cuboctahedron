# Phase 6U Proof-Usable Split Portfolio Profile

This diagnostic report is not trusted proof and emits no Lean evidence.

- Window: `[0, 1000)`
- Proof-usable portfolio mode: `True`
- Initial leaves: `1671`
- Translation leaves: `1452`
- Nonidentity leaves: `219`
- Decision: `phase6u_split_window_passes`

## Greedy Projection

| k | Remaining leaves | Passes gate |
| ---: | ---: | --- |
| 10 | 1,661 | `True` |
| 25 | 1,646 | `True` |
| 50 | 1,621 | `True` |
| 100 | 1,571 | `True` |
| 250 | 1,421 | `True` |
| 500 | 1,171 | `True` |

## Top Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `cross.pairNormal|pair=y|normal=0,1,0` | 1,478 | 3,011 |
| `cross.pairNormal|pair=z|normal=0,0,1` | 1,468 | 3,022 |
| `cross.pairNormal|pair=x|normal=1,0,0` | 1,452 | 1,465 |
| `cross.pairNormal|pair=d111|normal=1,-1,-1` | 1,116 | 2,268 |
| `cross.pairNormal|pair=d11m|normal=1,-1,1` | 932 | 1,881 |
| `cross.pairNormal|pair=dm11|normal=1,1,1` | 646 | 1,296 |
| `cross.pairNormal|pair=d1m1|normal=1,1,-1` | 628 | 1,260 |
| `cross.pairNormal|pair=d1m1|normal=1,5,-1` | 345 | 696 |
| `cross.pairNormal|pair=dm11|normal=5,1,1` | 345 | 696 |
| `cross.pairNormal|pair=d11m|normal=1,-1,5` | 290 | 584 |
| `cross.pairNormal|pair=d111|normal=1,-1,-5` | 206 | 418 |
| `translation.survivorBitset|bits=80c0a000f1452300` | 188 | 192 |

## Top Proof-Usable Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=z|normalClass=0,0,1|axisClass=1,1,0` | 1 | 48 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,1` | 1 | 38 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=z|normalClass=0,0,1|axisClass=1,-1,0` | 1 | 24 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,-1` | 1 | 19 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=2,-3,5` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=2,5,-3` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=3,-2,5` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=3,5,-2` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=5,2,3` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d111|normalClass=1,-1,-1|axisClass=5,3,2` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d11m|normalClass=1,-1,1|axisClass=2,5,3` | 1 | 6 |
| `nonidentity.zeroNormalWitness|zeroAt=5|pair=d11m|normalClass=1,-1,1|axisClass=5,2,-3` | 1 | 5 |

## Fanout Diagnostics

| Fanout | Template | Concrete obligations |
| --- | --- | ---: |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-1,-4` | 4 |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-4,-1` | 4 |
| `zero_axis_to_zero_normal_witnesses` | `axis=4,-1,-1` | 4 |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-1,4` | 3 |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-6,-1` | 3 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=y|remaining=x:0,y:2,z:2,d111:2,d11m:2,d1m1:2,dm11:2` | 26 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=z|remaining=x:0,y:0,z:2,d111:2,d11m:2,d1m1:2,dm11:2` | 16 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d111|remaining=x:0,y:0,z:0,d111:2,d11m:2,d1m1:2,dm11:2` | 12 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d111|remaining=x:0,y:0,z:0,d111:2,d11m:1,d1m1:2,dm11:2` | 8 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d11m|remaining=x:0,y:0,z:0,d111:1,d11m:2,d1m1:2,dm11:2` | 8 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=x|normal=1,0,0` | 1,452 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=y|normal=0,1,0` | 1,452 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=z|normal=0,0,1` | 1,452 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=d111|normal=1,-1,-1` | 1,102 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=d11m|normal=1,-1,1` | 922 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=y|normal=0,1,0` | 26 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=z|normal=0,0,1` | 16 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d111|normal=1,-1,-1` | 14 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d11m|normal=1,-1,5` | 12 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d1m1|normal=1,5,-1` | 12 |
