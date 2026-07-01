# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 100,000)`
- Jobs: `4`
- Elapsed seconds: `9.825`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-prefix`

## Counts

| metric | value |
| --- | ---: |
| `scanned` | `100000` |
| `nonidentity` | `94435` |
| `forced_balance_survivors` | `9036` |
| `axis_start_failures` | `8775` |
| `matched` | `11` |
| `offset_sum_mismatches` | `0` |
| `paths` | `11` |
| `root_states` | `1` |
| `states` | `94` |
| `edges` | `93` |
| `final_states` | `11` |
| `margin_families` | `1` |
| `margin_values` | `5` |

## Bellman

| metric | value |
| --- | ---: |
| `bounded_fixed_point` | `True` |
| `root_bound` | `-38/11` |
| `max_const` | `2` |
| `max_margin_bound` | `-16/11` |
| `proves_observed_nonpositive` | `True` |
| `scale` | `88` |
| `gain_fraction_bit_length` | `7` |
| `potential_fraction_bit_length` | `9` |
| `scaled_potential_bit_length` | `9` |

## Top Margin Values

| value | count |
| --- | ---: |
| `-47/11` | `3` |
| `-16/11` | `3` |
| `-49/11` | `2` |
| `-58/11` | `2` |
| `-2` | `1` |

## Samples

- rank `517` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10613` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `23197` value `-16/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `25555` value `-16/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `40387` value `-49/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `42247` value `-58/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `42943` value `-2` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `43171` value `-58/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `43195` value `-49/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `43203` value `-16/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `43205` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
