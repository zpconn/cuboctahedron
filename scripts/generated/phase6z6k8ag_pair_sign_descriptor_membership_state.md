# Phase 6Z.6K.8AG Pair-Sign Descriptor Membership State Profile

This diagnostic is not trusted as proof and emits no Lean. It profiles
whether pair-sign GoodDirection survivors can be routed to descriptor,
source, and row semantic families without concrete rank/mask replay.

- Status: `accepted-producer-membership-candidate`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- Total GoodDirection cases: `7112`
- Source-language validation failures: `0`
- Obligation gate: `2000`

## Projected Obligation Choices

| Choice | Candidate | Obligations |
| --- | --- | ---: |
| best descriptor | `descriptor_source_language_row_exact` | 195 |
| best independent source+row | `source_language_full + row_scaled_lines` | 2735 |
| best producer source+row | `source_language_full + row_exact` | 212 |

## Candidate Surfaces

| Target | Candidate | Status | Direct target | Candidate keys | Target keys | Ambiguous groups | Ambiguous cases | Largest |
| --- | --- | --- | --- | ---: | ---: | ---: | ---: | ---: |
| `descriptor` | `descriptor_exact_source_row` | `accepted-unambiguous` | `True` | 195 | 195 | 0 | 0 | 1316 |
| `descriptor` | `descriptor_without_indices` | `rejected-ambiguous` | `False` | 159 | 195 | 8 | 1677 | 1316 |
| `descriptor` | `descriptor_without_sources` | `rejected-ambiguous` | `False` | 193 | 195 | 2 | 10 | 1316 |
| `descriptor` | `descriptor_source_language_row_exact` | `accepted-unambiguous` | `False` | 195 | 195 | 0 | 0 | 1316 |
| `descriptor` | `descriptor_pair_sign_row_template` | `rejected-ambiguous` | `False` | 191 | 195 | 2 | 44 | 1316 |
| `source` | `source_exact_pair_sign` | `accepted-unambiguous` | `True` | 191 | 191 | 0 | 0 | 1316 |
| `source` | `source_language_obligation` | `accepted-unambiguous` | `False` | 191 | 191 | 0 | 0 | 1316 |
| `source` | `source_language_full` | `accepted-unambiguous` | `False` | 191 | 191 | 0 | 0 | 1316 |
| `source` | `source_pair_sign_no_indices` | `rejected-ambiguous` | `False` | 149 | 191 | 6 | 1684 | 1316 |
| `source` | `source_kind_impact_with_indices` | `rejected-ambiguous` | `False` | 189 | 191 | 2 | 10 | 1316 |
| `source` | `source_indices_only` | `rejected-ambiguous` | `False` | 189 | 191 | 2 | 10 | 1316 |
| `row` | `row_exact` | `accepted-unambiguous` | `True` | 21 | 21 | 0 | 0 | 3148 |
| `row` | `row_template` | `rejected-ambiguous` | `False` | 11 | 21 | 3 | 95 | 3148 |
| `row` | `row_template_roles` | `rejected-ambiguous` | `False` | 13 | 21 | 4 | 94 | 3148 |
| `row` | `row_scaled_lines` | `accepted-unambiguous` | `False` | 2544 | 21 | 0 | 0 | 183 |

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 125 | 4693 | 487 | 31168 |
| `[100000, 102500]` | 37 | 296 | 66 | 4224 |
| `[1000000, 1002500]` | 12 | 50 | 11 | 704 |
| `[10000000, 10002500]` | 136 | 2069 | 235 | 15040 |
| `[30000000, 30002500]` | 0 | 0 | 127 | 8128 |
| `[60000000, 60002500]` | 0 | 0 | 27 | 1728 |
| `[90000000, 90002500]` | 1 | 4 | 5 | 320 |

## Decision Notes

- exact source and row producer keys are bounded; this relies on producer predicates rather than raw rank/mask replay
- next step should test the producer-coverage root over the same representative windows
