# Phase 6Z.6K.8AP.16BS Walsh Symbolic Equality Profile

This is diagnostic planning data only, not proof evidence.

- rank: `100805`
- selected subcubes: `20`
- selected impacts: `[1, 2, 4, 5, 6, 8, 10]`
- Walsh validation failures: `0`

## Obligation Comparison

| route | obligations | count |
| --- | --- | ---: |
| replay | unique masks needing rank denominator facts | 56 |
| replay | subcube mask/impact equality facts | 82 |
| symbolic | selected-impact equality theorems | 7 |
| symbolic | all-internal-impact equality theorems | 13 |

## Selected Impacts

| impact | subcubes | total masks | terms | max degree | degree histogram |
| ---: | ---: | ---: | ---: | ---: | --- |
| 1 | 2 | 16 | 6 | 1 | 0:1, 1:5 |
| 2 | 4 | 16 | 6 | 2 | 0:1, 2:5 |
| 4 | 1 | 4 | 7 | 2 | 0:1, 1:1, 2:5 |
| 5 | 4 | 12 | 7 | 2 | 0:1, 1:1, 2:5 |
| 6 | 4 | 16 | 7 | 2 | 0:1, 1:1, 2:5 |
| 8 | 3 | 12 | 7 | 2 | 0:1, 1:1, 2:5 |
| 10 | 2 | 6 | 7 | 2 | 0:1, 1:1, 2:5 |

Decision: the production equality bridge should not replay concrete masks.
For this rank, the replay path needs dozens of heavy denominator facts,
while the symbolic route needs one equality theorem per selected impact.
