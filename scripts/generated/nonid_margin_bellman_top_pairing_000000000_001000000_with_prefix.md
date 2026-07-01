# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 1,000,000)`
- Jobs: `4`
- Elapsed seconds: `80.357`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-prefix`

## Counts

| metric | value |
| --- | ---: |
| `scanned` | `1000000` |
| `nonidentity` | `970133` |
| `forced_balance_survivors` | `43235` |
| `axis_start_failures` | `41639` |
| `matched` | `37` |
| `offset_sum_mismatches` | `0` |
| `paths` | `37` |
| `root_states` | `1` |
| `states` | `270` |
| `edges` | `269` |
| `final_states` | `37` |
| `margin_families` | `1` |
| `margin_values` | `14` |

## Bellman

| metric | value |
| --- | ---: |
| `bounded_fixed_point` | `True` |
| `root_bound` | `-2` |
| `max_const` | `2` |
| `max_margin_bound` | `0` |
| `proves_observed_nonpositive` | `True` |
| `scale` | `88` |
| `gain_fraction_bit_length` | `7` |
| `potential_fraction_bit_length` | `9` |
| `scaled_potential_bit_length` | `10` |

## Top Margin Values

| value | count |
| --- | ---: |
| `-25/11` | `6` |
| `-47/11` | `6` |
| `-109/22` | `4` |
| `-105/22` | `3` |
| `-16/11` | `3` |
| `-43/22` | `2` |
| `-27/11` | `2` |
| `-127/22` | `2` |
| `-36/11` | `2` |
| `-49/11` | `2` |
| `-58/11` | `2` |
| `-5/2` | `1` |
| `0` | `1` |
| `-2` | `1` |

## Samples

- rank `312761` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312772` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312773` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `824407` value `-43/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `914497` value `-109/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `914499` value `-27/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `944197` value `-127/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `944199` value `-36/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `946777` value `-5/2` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `946779` value `0` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947437` value `-127/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947439` value `-36/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947581` value `-109/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947589` value `-43/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947591` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947593` value `-109/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947599` value `-109/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947601` value `-27/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947625` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `947626` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
