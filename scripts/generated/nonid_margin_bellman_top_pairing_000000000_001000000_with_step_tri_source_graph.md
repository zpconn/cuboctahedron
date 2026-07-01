# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 1,000,000)`
- Jobs: `8`
- Elapsed seconds: `46.967`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-step-tri-source`

## Counts

| metric | value |
| --- | ---: |
| `axis_start_failures` | `41639` |
| `edges` | `229` |
| `final_states` | `29` |
| `forced_balance_survivors` | `43235` |
| `margin_families` | `1` |
| `margin_values` | `14` |
| `matched` | `37` |
| `nonidentity` | `970133` |
| `offset_sum_mismatches` | `0` |
| `paths` | `37` |
| `root_states` | `1` |
| `scanned` | `1000000` |
| `states` | `223` |

## Bellman

| metric | value |
| --- | ---: |
| `bounded_fixed_point` | `True` |
| `gain_fraction_bit_length` | `7` |
| `max_const` | `2` |
| `max_margin_bound` | `0` |
| `potential_fraction_bit_length` | `9` |
| `proves_observed_nonpositive` | `True` |
| `root_bound` | `-2` |
| `scale` | `88` |
| `scaled_potential_bit_length` | `10` |

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-2`
- Margin bound: `0`
- Is observed path: `True`
- Realizing ranks: `[946779]`

| step | gain | edge realizing ranks | dst state |
| ---: | ---: | --- | --- |
| `1` | `103/88` | `[312761, 312772, 312773, 914497, 914499, 944197, 944199, 946777, 946779, 947437]` | `step=1|rem=1,2,2,2,2,2,2|par=100|stack=<empty>|triSrc=` |
| `2` | `-73/88` | `[312761, 312772, 312773, 914497, 914499, 944197, 944199, 946777, 946779, 947437]` | `step=2|rem=1,1,2,2,2,2,2|par=110|stack=<empty>|triSrc=` |
| `3` | `-31/22` | `[914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 947581, 947589]` | `step=3|rem=1,1,2,2,2,1,2|par=110|stack=dm11|triSrc=2:d1m1->dm11@110` |
| `4` | `12/11` | `[914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 947581, 947589]` | `step=4|rem=1,1,2,2,1,1,2|par=110|stack=dm11 d111|triSrc=2:d1m1->dm11@110|3:d11m->d111@110` |
| `5` | `-9/22` | `[944197, 944199, 946777, 946779, 947437, 947439, 947581, 947589, 947591, 947593]` | `step=5|rem=1,1,2,2,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110` |
| `6` | `-18/11` | `[946777, 946779, 947437, 947439, 947581, 947589, 947591, 947593, 947599, 947601]` | `step=6|rem=1,1,2,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `7` | `45/44` | `[946777, 946779]` | `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `8` | `45/44` | `[946777, 946779]` | `step=8|rem=1,1,0,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `9` | `-18/11` | `[946777, 946779]` | `step=9|rem=1,1,0,0,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110` |
| `10` | `-9/22` | `[946777, 946779]` | `step=10|rem=1,1,0,0,1,0,1|par=110|stack=dm11 d111 d1m1 dm11|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110` |
| `11` | `12/11` | `[946779]` | `step=11|rem=1,1,0,0,0,0,1|par=110|stack=dm11 d111 d1m1 dm11 d111|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110|10:...` |
| `12` | `-31/22` | `[946779]` | `step=12|rem=1,1,0,0,0,0,0|par=110|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `13` | `103/88` | `[946779]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `14` | `-73/88` | `[946779]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |

## Graph Export

- Path objects: `37`
- Path classes: `37`
- Semantic labels: `14`
- Edge-label relations: `229`

## Top Margin Values

| value | count |
| --- | ---: |
| `-25/11` | `6` |
| `-47/11` | `6` |
| `-109/22` | `4` |
| `-105/22` | `3` |
| `-16/11` | `3` |
| `-27/11` | `2` |
| `-127/22` | `2` |
| `-36/11` | `2` |
| `-43/22` | `2` |
| `-49/11` | `2` |
| `-58/11` | `2` |
| `-5/2` | `1` |
| `0` | `1` |
| `-2` | `1` |

## Samples

- rank `312761` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312772` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312773` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
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
- rank `947627` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
