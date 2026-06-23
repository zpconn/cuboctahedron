# Cross-Family Obstruction Profile

This diagnostic report is not trusted proof and emits no Lean evidence.

- Window: `[10000000, 10100000)`
- Initial leaves: `28612`
- Translation leaves: `22198`
- Nonidentity leaves: `6414`
- Decision: `phase6t_window_passes`

## Greedy Projection

| k | Remaining leaves | Passes gate |
| ---: | ---: | --- |
| 10 | 5,363 | `False` |
| 25 | 3,649 | `False` |
| 50 | 2,217 | `False` |
| 100 | 1,042 | `True` |
| 250 | 33 | `True` |
| 500 | 0 | `True` |

## Top Templates

| Template | Leaves | Cases |
| --- | ---: | ---: |
| `cross.pairNormal|pair=y|normal=0,1,0` | 6,570 | 16,635 |
| `translation.normalSupport|support=dd61cae68c288e82eab78c185582fbc53af2f1013d809fce8f93ac76fdbbe7fc` | 6,506 | 6,566 |
| `cross.pairNormal|pair=z|normal=0,0,1` | 3,548 | 11,618 |
| `translation.normalSupport|support=39de7ef75239a3821981f8c73d06fa5d1a51b3b276bc84d59416b51a2823d717` | 3,481 | 3,495 |
| `cross.pairNormal|pair=d1m1|normal=1,1,-1` | 3,460 | 3,543 |
| `translation.normalSupport|support=62742591cb56730a5278c18f330a879907a6fdf4d9541f45a080a97a9171164d` | 3,434 | 3,440 |
| `cross.pairNormal|pair=dm11|normal=1,1,1` | 3,407 | 3,487 |
| `translation.normalSupport|support=2af1b26191d6f525d0a019c9d9d5941b076abffee0c6963cfc546f98c95b75af` | 3,381 | 3,387 |
| `cross.pairNormal|pair=d11m|normal=1,-1,1` | 2,924 | 3,069 |
| `translation.normalSupport|support=1d7d3057036f4f00621f83cad6a042c9a71d273eea5a77a0ac7d0633ca4adbd8` | 2,888 | 2,894 |
| `cross.pairNormal|pair=d111|normal=1,-1,-1` | 2,652 | 2,800 |
| `translation.normalSupport|support=00b0550f275f2914c689503c972dce556fb3f9776c175a6b80c03f180394eba1` | 2,616 | 2,622 |
