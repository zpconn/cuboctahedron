# Phase 6Z.3 High-Variation Source-Pair Profile

This report is diagnostic only; Lean checks the theorem separately.

| Metric | Value |
| --- | ---: |
| Pair words scanned | 100,000 |
| Identity-linear words | 5,565 |
| GoodDirection survivors | 39,710 |
| Target source-pair cases | 1,016 |
| Target shape matches | 1,016 |
| Target shape misses | 0 |
| Shape matches among all GoodDirection survivors | 1,770 |
| Shape extra cases | 754 |

Decision: **accepted**

- the high-variation shape covers every target source-pair case in the window
- the semantic shape also matches non-target source pairs; this is safe but should be handled deliberately by future classifier code
