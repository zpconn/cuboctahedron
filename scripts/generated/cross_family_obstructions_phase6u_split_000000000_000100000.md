# Phase 6U Proof-Usable Split Portfolio Profile

This diagnostic report is not trusted proof and emits no Lean evidence.

- Window: `[0, 100000)`
- Proof-usable portfolio mode: `True`
- Initial leaves: `43975`
- Translation leaves: `39582`
- Nonidentity leaves: `4393`
- Decision: `phase6u_split_window_rejected`

## Greedy Projection

| k | Remaining leaves | Passes gate |
| ---: | ---: | --- |
| 10 | 43,965 | `False` |
| 25 | 43,950 | `False` |
| 50 | 43,925 | `False` |
| 100 | 43,875 | `False` |
| 250 | 43,725 | `False` |
| 500 | 43,475 | `False` |

## Top Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `cross.pairNormal|pair=y|normal=0,1,0` | 39,636 | 85,698 |
| `cross.pairNormal|pair=x|normal=1,0,0` | 39,582 | 39,710 |
| `cross.pairNormal|pair=z|normal=0,0,1` | 20,686 | 44,244 |
| `cross.pairNormal|pair=d1m1|normal=1,1,-1` | 18,620 | 39,989 |
| `cross.pairNormal|pair=d11m|normal=1,-1,1` | 18,483 | 39,633 |
| `cross.pairNormal|pair=d111|normal=1,-1,-1` | 18,157 | 38,971 |
| `cross.pairNormal|pair=dm11|normal=1,1,1` | 14,485 | 30,279 |
| `cross.pairNormal|pair=dm11|normal=1,1,-1` | 5,855 | 11,367 |
| `cross.pairNormal|pair=d1m1|normal=1,1,1` | 5,293 | 10,439 |
| `cross.pairNormal|pair=d11m|normal=1,-1,-1` | 5,250 | 10,225 |
| `cross.pairNormal|pair=d111|normal=1,-1,1` | 5,174 | 10,068 |
| `cross.pairNormal|pair=dm11|normal=1,1,5` | 4,970 | 9,964 |

## Top Proof-Usable Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=d111|normalClass=1,-1,-1|axisClass=1,1,0` | 1 | 1,492 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=d11m|normalClass=1,-1,1|axisClass=1,1,0` | 1 | 1,492 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=d1m1|normalClass=1,1,-1|axisClass=1,-1,0` | 1 | 1,492 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,1` | 1 | 1,269 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=z|normalClass=0,0,1|axisClass=1,-1,0` | 1 | 1,216 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=z|normalClass=0,0,1|axisClass=1,1,0` | 1 | 1,216 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,-1` | 1 | 1,080 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=2,0,-1` | 1 | 843 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=2,0,1` | 1 | 802 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,-2` | 1 | 739 |
| `nonidentity.zeroNormalWitness|zeroAt=3|pair=dm11|normalClass=1,1,1|axisClass=1,-1,0` | 1 | 630 |
| `nonidentity.zeroNormalWitness|zeroAt=1|pair=y|normalClass=0,1,0|axisClass=1,0,2` | 1 | 606 |

## Fanout Diagnostics

| Fanout | Template | Concrete obligations |
| --- | --- | ---: |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-2,0` | 24 |
| `zero_axis_to_zero_normal_witnesses` | `axis=2,-1,0` | 24 |
| `zero_axis_to_zero_normal_witnesses` | `axis=2,1,0` | 23 |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,-1,0` | 22 |
| `zero_axis_to_zero_normal_witnesses` | `axis=1,1,0` | 22 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d11m|remaining=x:0,y:0,z:1,d111:1,d11m:2,d1m1:1,dm11:1` | 62 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d1m1|remaining=x:0,y:0,z:1,d111:1,d11m:1,d1m1:2,dm11:1` | 62 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=dm11|remaining=x:0,y:0,z:1,d111:1,d11m:1,d1m1:1,dm11:2` | 62 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=d111|remaining=x:0,y:0,z:1,d111:2,d11m:1,d1m1:1,dm11:1` | 54 |
| `zero_remaining_counts_to_zero_normal_witnesses` | `pair=y|remaining=x:0,y:2,z:2,d111:2,d11m:2,d1m1:2,dm11:2` | 54 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=x|normal=1,0,0` | 39,582 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=y|normal=0,1,0` | 39,582 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=z|normal=0,0,1` | 20,590 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=d1m1|normal=1,1,-1` | 18,551 |
| `cross_pair_normal_to_translation_farkas_shapes` | `pair=d11m|normal=1,-1,1` | 18,412 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=z|normal=0,0,1` | 96 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d111|normal=1,-1,-1` | 71 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d11m|normal=1,-1,1` | 71 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=dm11|normal=1,1,1` | 71 |
| `cross_pair_normal_to_nonidentity_zero_normal_witnesses` | `pair=d1m1|normal=1,1,-1` | 69 |
