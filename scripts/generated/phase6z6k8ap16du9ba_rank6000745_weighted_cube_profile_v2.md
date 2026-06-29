# Phase 6Z.6K.8AP.16DU.9BA Weighted Cube Rank Profile

This is exact external telemetry, not proof evidence.

- rank: `6000745`
- word: `x d1m1 d1m1 dm11 d111 d111 dm11 d11m d11m y z y z`
- GoodDirection masks: `13`
- non-GoodDirection masks: `51`
- Boolean cubes: `11`
- bad-mask cubes: `11`
- cubes with sparse weighted witness: `9`
- uncovered cubes: `2`
- max support: `4`
- max weight: `12`
- seconds per cube: `2.0`
- seconds per witnessable-candidate search: `0.2`
- elapsed seconds: `13.282`

## Greedy Cover By Witnessable Cubes

- witnessable candidate cubes: `303`
- selected cubes: `11`
- uncovered masks: `0`

| selected cube | masks | sparse witness |
| ---: | ---: | --- |
| ***00* | 16 | `1:2, 2:1, 8:1` (max `0`) |
| **0**1 | 16 | `1:6, 4:1, 5:3` (max `0`) |
| **011* | 8 | `5:1` (max `-20/9`) |
| *0**11 | 8 | `2:1, 4:1, 11:2` (max `0`) |
| 0*1*0* | 8 | `2:1, 10:1` (max `0`) |
| 1**010 | 4 | `10:1` (max `-28/9`) |
| *1*100 | 4 | `11:1` (max `-28/9`) |
| *010** | 8 | `8:1, 11:1` (max `0`) |
| *10*10 | 4 | `5:1` (max `-4/3`) |
| 0**111 | 4 | `4:1, 8:1` (max `-8/9`) |
| 1*01*0 | 4 | `5:1` (max `-4/3`) |

## Greedy Cover First, Witness Later

| cube | masks | common impacts | sparse witness |
| ---: | ---: | --- | --- |
| 1**0** | 16 |  | `1:6, 4:1, 5:3` (max `0`) |
| *00*** | 16 |  | `1:2, 2:1, 8:1` (max `0`) |
| ***01* | 16 |  |  |
| 11**0* | 8 |  | `2:1, 4:1, 11:2` (max `0`) |
| *0*1*0 | 8 |  | `2:1, 10:1` (max `0`) |
| ***0*1 | 16 |  |  |
| 0*0**1 | 8 |  | `4:1, 8:1, 10:2` (max `0`) |
| 1*1**0 | 8 |  | `4:1, 8:1, 10:2` (max `0`) |
| 00**1* | 8 |  | `2:1, 4:1, 11:2` (max `0`) |
| *110** | 8 | 5, 6 | `5:1` (max `-20/9`) |
| **010* | 8 |  | `8:1, 11:1` (max `0`) |

Uncovered cube labels:

- `***01*`
- `***0*1`
