# Cross-Family Obstruction Profile

This diagnostic report is not trusted proof and emits no Lean evidence.

- Window: `[0, 100000)`
- Initial leaves: `43975`
- Translation leaves: `39582`
- Nonidentity leaves: `4393`
- Decision: `phase6t_window_passes`

## Greedy Projection

| k | Remaining leaves | Passes gate |
| ---: | ---: | --- |
| 10 | 3,640 | `False` |
| 25 | 2,732 | `False` |
| 50 | 1,804 | `True` |
| 100 | 646 | `True` |
| 250 | 0 | `True` |
| 500 | 0 | `True` |

## Top Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `cross.pairNormal|pair=z|normal=0,0,1` | 9,167 | 13,652 |
| `translation.normalSupport|support=39de7ef75239a3821981f8c73d06fa5d1a51b3b276bc84d59416b51a2823d717` | 9,071 | 9,151 |
| `cross.pairNormal|pair=d1m1|normal=1,1,-1` | 7,916 | 11,588 |
| `translation.normalSupport|support=62742591cb56730a5278c18f330a879907a6fdf4d9541f45a080a97a9171164d` | 7,847 | 7,853 |
| `cross.pairNormal|pair=d11m|normal=1,-1,1` | 7,754 | 11,244 |
| `translation.normalSupport|support=1d7d3057036f4f00621f83cad6a042c9a71d273eea5a77a0ac7d0633ca4adbd8` | 7,683 | 7,689 |
| `cross.pairNormal|pair=dm11|normal=1,1,1` | 7,607 | 9,656 |
| `cross.pairNormal|pair=d111|normal=1,-1,-1` | 7,540 | 11,022 |
| `translation.normalSupport|support=2af1b26191d6f525d0a019c9d9d5941b076abffee0c6963cfc546f98c95b75af` | 7,536 | 7,542 |
| `translation.normalSupport|support=00b0550f275f2914c689503c972dce556fb3f9776c175a6b80c03f180394eba1` | 7,469 | 7,475 |
| `translation.survivorBitset|bits=80c0a000f1452300` | 1,500 | 1,536 |
| `translation.survivorBitset|bits=2030a000f4158c00` | 360 | 384 |
