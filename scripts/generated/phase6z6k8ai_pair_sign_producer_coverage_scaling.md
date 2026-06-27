# Phase 6Z.6K.8AI Pair-Sign Producer-Coverage Scaling Profile

This diagnostic is not trusted as proof and emits no Lean. It measures
whether the Phase 8AH pair-sign producer-coverage surface remains
bounded across broader disjoint rank windows.

- Status: `accepted-scaling-candidate`
- Jobs: `4`
- Ranges: `[[0, 10000], [100000, 105000], [250000, 255000], [1000000, 1005000], [5000000, 5005000], [10000000, 10005000], [20000000, 20005000], [30000000, 30005000], [45000000, 45005000], [60000000, 60005000], [75000000, 75005000], [90000000, 90005000]]`
- Sampled ranks: `65000`
- GoodDirection cases: `13899`
- Descriptor families: `328`
- Source groups: `294`
- Row groups: `24`
- Source-row edges: `328`
- Source+row producer obligations: `318`
- Source-language validation failures: `0`
- Producer gate: `2000`
- Descriptor gate: `5000`

## Window Growth

| Range | GoodDirection | Descriptor | Source | Row | Edge | Cum descriptor | Cum source | Cum row | Cum source+row |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 10000]` | 6389 | 146 | 143 | 12 | 146 | 146 | 143 | 12 | 155 |
| `[100000, 105000]` | 1280 | 72 | 71 | 10 | 72 | 167 | 164 | 12 | 176 |
| `[250000, 255000]` | 0 | 0 | 0 | 0 | 0 | 167 | 164 | 12 | 176 |
| `[1000000, 1005000]` | 79 | 15 | 15 | 6 | 15 | 172 | 169 | 13 | 182 |
| `[5000000, 5005000]` | 1253 | 102 | 100 | 11 | 102 | 212 | 207 | 15 | 222 |
| `[10000000, 10005000]` | 4729 | 200 | 180 | 20 | 200 | 300 | 273 | 22 | 295 |
| `[20000000, 20005000]` | 0 | 0 | 0 | 0 | 0 | 300 | 273 | 22 | 295 |
| `[30000000, 30005000]` | 0 | 0 | 0 | 0 | 0 | 300 | 273 | 22 | 295 |
| `[45000000, 45005000]` | 158 | 39 | 32 | 9 | 39 | 325 | 291 | 24 | 315 |
| `[60000000, 60005000]` | 0 | 0 | 0 | 0 | 0 | 325 | 291 | 24 | 315 |
| `[75000000, 75005000]` | 0 | 0 | 0 | 0 | 0 | 325 | 291 | 24 | 315 |
| `[90000000, 90005000]` | 11 | 4 | 4 | 3 | 4 | 328 | 294 | 24 | 318 |

## Decision Notes

- source+row producer obligations stayed within the scaling gate
- descriptor keys stayed within the scaling gate
- next step should test a larger/resumable census or emit a bounded scaling Lean smoke
