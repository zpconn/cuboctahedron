# Cross-Family Obstruction Profile

This diagnostic report is not trusted proof and emits no Lean evidence.

- Window: `[30000000, 30100000)`
- Initial leaves: `4058`
- Translation leaves: `0`
- Nonidentity leaves: `4058`
- Decision: `phase6t_window_passes`

## Greedy Projection

| k | Remaining leaves | Passes gate |
| ---: | ---: | --- |
| 10 | 2,976 | `False` |
| 25 | 2,082 | `False` |
| 50 | 1,352 | `True` |
| 100 | 527 | `True` |
| 250 | 0 | `True` |
| 500 | 0 | `True` |

## Top Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `nonidentity.zeroNormal|normal=1,-1,-1` | 144 | 1,454 |
| `nonidentity.zeroNormal|normal=1,-1,1` | 130 | 1,737 |
| `nonidentity.zeroNormal|normal=5,-1,-1` | 129 | 5,165 |
| `nonidentity.zeroNormal|normal=1,1,-1` | 117 | 1,112 |
| `nonidentity.zeroNormal|normal=1,-5,1` | 106 | 5,653 |
| `nonidentity.zeroNormal|normal=11,-1,11` | 97 | 1,664 |
| `nonidentity.zeroNormal|normal=5,-7,-13` | 94 | 1,389 |
| `nonidentity.zeroNormal|normal=13,7,-5` | 94 | 1,166 |
| `nonidentity.zeroNormal|normal=1,1,-5` | 90 | 1,033 |
| `cross.pairNormal|pair=d11m|normal=1,1,1` | 81 | 12,959 |
| `nonidentity.zeroNormal|normal=1,1,1` | 81 | 12,959 |
| `nonidentity.zeroPairNormal|pair=d11m|normal=1,1,1` | 81 | 12,959 |
