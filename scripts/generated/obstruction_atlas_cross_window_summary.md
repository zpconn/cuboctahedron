# Cross-Window Obstruction Atlas Summary

This diagnostic report is not trusted proof and emits no Lean evidence.

## Decision

- Status: `phase6s_rejected`
- Accepted for Phase 6T: `False`
- Recommended next phase: `None`

- all windows have top-three case share >= 0.800
- the top-three case-family set is not stable across windows
- aggregate largest shape burden is translation.farkas_survivor

## Windows

| Window | Top3 Case Share | Largest Cases | Largest Shapes |
| --- | ---: | --- | --- |
| [0, 100000) | 0.886 | nonidentity.forced_zero_denominator | translation.farkas_survivor |
| [10000000, 10100000) | 0.896 | nonidentity.forced_zero_denominator | translation.farkas_survivor |
| [30000000, 30100000) | 0.990 | nonidentity.forced_zero_denominator | nonidentity.forced_zero_denominator |
| [60000000, 60100000) | 0.977 | nonidentity.forced_zero_denominator | nonidentity.forced_zero_denominator |
| [90000000, 90100000) | 0.969 | nonidentity.forced_zero_denominator | nonidentity.forced_zero_denominator |

## Aggregate Families

| Filter | Case Sum | Shape Sum | Top3 Case Windows | Top3 Shape Windows |
| --- | ---: | ---: | ---: | ---: |
| translation.farkas_survivor | 62,114 | 21,461 | 2 | 4 |
| nonidentity.forced_zero_denominator | 300,837 | 16,657 | 5 | 5 |
| nonidentity.bad_pair_balance | 130,818 | 1,493 | 5 | 1 |
| nonidentity.final_axis_zero | 22,777 | 99 | 3 | 0 |
| nonidentity.terminal_algebra.axis_misses_start_interior | 0 | 0 | 0 | 5 |
