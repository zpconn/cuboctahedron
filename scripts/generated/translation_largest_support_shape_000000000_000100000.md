# Phase 6Z Largest Support Shape Profile

This report is diagnostic only; Lean proves the shape theorem.

| Metric | Value |
| --- | ---: |
| pair_words_scanned | 100,000 |
| identity_words | 5,565 |
| good_direction_survivors | 39,710 |
| shape_matches_all_good | 11,589 |
| expected_min_shape_cases | 10,435 |

Decision: **accepted**

- semantic shape count meets or exceeds the known largest-family count for this window
- support digest recomputation was skipped because it requires one sparse Farkas solve per survivor
- the semantic shape may cover extra cases; this is proof-safe because Lean proves the row contradiction
