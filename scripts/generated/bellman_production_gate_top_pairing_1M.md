# Bellman Production Gate Audit

Input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json`

Decision: `candidate-needs-coarser-membership`

The numerical Bellman gates pass, but exact path classes are too close to singleton coverage.  Do not emit exact-path families; prove a coarser holonomy/cancellation-language membership theorem or add gauge/summary coordinates first.

## Gates

| Gate | Value |
| --- | ---: |
| `max_states` | `10000` |
| `max_edges` | `100000` |
| `max_scaled_bits` | `256` |
| `max_fraction_bits` | `256` |
| `max_exact_path_class_ratio` | `0.25` |

## Metrics

| Metric | Value |
| --- | ---: |
| `matched` | `37` |
| `paths` | `37` |
| `states` | `223` |
| `edges` | `229` |
| `root_states` | `1` |
| `final_states` | `29` |
| `path_class_count` | `37` |
| `exact_path_class_ratio` | `1.0` |
| `scale_bit_length` | `7` |
| `scaled_bit_length` | `10` |
| `fraction_bit_length` | `9` |
| `proves_observed_nonpositive` | `True` |
| `bounded_fixed_point` | `True` |
| `max_margin_bound` | `0` |
| `root_bound` | `-2` |
| `max_const` | `2` |

## Checks

| Check | Passed | Detail |
| --- | --- | --- |
| `observed_margin_bound` | `yes` | Bellman max_const + root_bound is nonpositive on the observed artifact. |
| `acyclic_or_bounded_fixed_point` | `yes` | The profile solver did not detect a cycle in the chosen state abstraction. |
| `state_count_gate` | `yes` | states=223, gate=10000 |
| `edge_count_gate` | `yes` | edges=229, gate=100000 |
| `scaled_integer_bit_gate` | `yes` | scaled_bits=10, gate=256 |
| `fraction_bit_gate` | `yes` | fraction_bits=9, gate=256 |
| `exact_path_classes_not_family_coordinate` | `no` | path_classes=37, paths=37, ratio=1.0000, warning_gate=0.2500 |
