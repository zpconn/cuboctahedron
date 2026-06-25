# Phase 6Z.6D.4 Adaptive Row-Template Census Plan

This report is diagnostic only; Lean must check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Checkpoint files | 593 |
| Checkpointed rank mass | 3,250,000 |
| Checkpointed fraction | 3.3403% |
| Contiguous coverage end | 2,945,000 |
| GoodDirection survivors observed | 429,636 |
| Covered cases observed | 429,636 |
| Uncovered cases observed | 0 |
| Median window seconds | 30.22 |
| P95 window seconds | 158.11 |
| Max window seconds | 307.64 |
| Max window RSS KiB | 71,720 |
| Mean projected wall hours | 20.54 |
| P95 projected wall hours | 64.57 |

Decision: **skip_to_semantic_family_profiling**

- Observed dense-window cost projects beyond the configured wall-time budget; prefer semantic family/state-space profiling over a full fixed-rank census.
- The p95 observed throughput projection also exceeds the wall-time budget.
- Contiguous checkpoint coverage stops at rank 2,945,000; later sampled windows are non-contiguous calibration evidence.

## Dense Window Recommendations

- `[110,000,115,000)`: 307.64s, good=5,804, recommended window=5,000
- `[135,000,140,000)`: 273.82s, good=5,406, recommended window=5,000
- `[30,000,000,30,100,000)`: 261.22s, good=0, recommended window=100,000
- `[1,245,000,1,250,000)`: 257.82s, good=4,913, recommended window=5,000
- `[680,000,685,000)`: 253.17s, good=4,159, recommended window=5,000
- `[0,5,000)`: 244.71s, good=4,693, recommended window=5,000
- `[60,000,000,60,100,000)`: 243.01s, good=797, recommended window=100,000
- `[1,270,000,1,275,000)`: 238.09s, good=4,779, recommended window=5,000
- `[1,225,000,1,230,000)`: 236.11s, good=4,025, recommended window=5,000
- `[1,555,000,1,560,000)`: 230.54s, good=4,116, recommended window=5,000

## Sparse Window Recommendations

- `[1,340,000,1,345,000)`: 1.54s, good=0, recommended window=100,000
- `[795,000,800,000)`: 1.57s, good=0, recommended window=100,000
- `[1,430,000,1,435,000)`: 1.58s, good=0, recommended window=100,000
- `[360,000,365,000)`: 1.59s, good=0, recommended window=100,000
- `[800,000,805,000)`: 1.59s, good=0, recommended window=100,000
- `[205,000,210,000)`: 1.60s, good=0, recommended window=100,000
- `[575,000,580,000)`: 1.60s, good=0, recommended window=100,000
- `[585,000,590,000)`: 1.60s, good=0, recommended window=100,000
- `[815,000,820,000)`: 1.61s, good=0, recommended window=100,000
- `[2,100,000,2,105,000)`: 1.61s, good=0, recommended window=100,000
