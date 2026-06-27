# Phase 6Z.6K.8M Descriptor-Key Membership Profile

This diagnostic is not trusted as proof and emits no Lean. It compares
compact descriptor-key surfaces for routing GoodDirection survivors to
the all-family classifier branches accepted in 8L.

- Status: `accepted-next-lean-smoke`
- Rank window: `[0, 1000)`
- Source-index/state families: `74`
- GoodDirection cases: `1465`
- Largest family: `421`

## Candidate Membership Surfaces

| Candidate | Status | Obligations | Ambiguous groups | Ambiguous cases | Concrete branches | Notes |
| --- | --- | ---: | ---: | ---: | ---: | --- |
| `explicit_member_replay` | `rejected` | 1465 | 0 | 0 | 1465 | this is the bounded replay path rejected by 8I kept only as a baseline |
| `descriptor_key` | `accepted-next-lean-smoke` | 74 | 0 | 0 | 0 | one compact key per descriptor and no concrete member list next Lean smoke should prove key-to-descriptor membership for selected keys |
| `source_index_template` | `rejected` | 72 | 1 | 9 | 0 | key is ambiguous: at least one key maps to multiple descriptors |
| `source_indices_only` | `rejected` | 72 | 1 | 9 | 0 | key is ambiguous: at least one key maps to multiple descriptors |
| `row_property_only` | `rejected` | 11 | 8 | 1456 | 0 | key is ambiguous: at least one key maps to multiple descriptors |
| `template_only` | `rejected` | 9 | 9 | 1465 | 0 | key is ambiguous: at least one key maps to multiple descriptors |

## Descriptor-Key Top Groups

| Cases | Descriptor count | Template/source indices |
| ---: | ---: | --- |
| 421 | 1 | `eq_eq_pos_var_first [23, 0]` |
| 134 | 1 | `opp_1m_var_first [24, 1]` |
| 128 | 1 | `eq_eq_pos_var_first [83, 0]` |
| 102 | 1 | `opp_m1_var_first [25, 2]` |
| 79 | 1 | `eq_eq_pos_var_second [0, 7]` |
| 44 | 1 | `opp_1m_var_first [83, 1]` |
| 30 | 1 | `eq_eq_pos_var_second [0, 13]` |
| 29 | 1 | `eq_eq_pos_var_second [0, 15]` |
| 23 | 1 | `eq_eq_pos_var_second [0, 11]` |
| 22 | 1 | `eq_eq_neg_var_first [26, 3]` |
| 22 | 1 | `eq_eq_pos_var_second [0, 10]` |
| 21 | 1 | `eq_eq_pos_var_first [183, 0]` |
