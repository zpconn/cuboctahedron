# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 10,000,000)`
- Jobs: `8`
- Elapsed seconds: `387.938`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-step-tri-source`

## Counts

| metric | value |
| --- | ---: |
| `scanned` | `10000000` |
| `nonidentity` | `9710330` |
| `forced_balance_survivors` | `431905` |
| `axis_start_failures` | `418078` |
| `matched` | `273` |
| `offset_sum_mismatches` | `0` |
| `paths` | `273` |
| `root_states` | `1` |
| `states` | `970` |
| `edges` | `1054` |
| `final_states` | `116` |
| `margin_families` | `1` |
| `margin_values` | `46` |

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

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-2`
- Margin bound: `0`
- Is observed path: `True`
- Realizing ranks: `[946779]`

| step | gain | edge realizing ranks | dst state |
| ---: | ---: | --- | --- |
| `1` | `103/88` | `[312761, 312772, 312773, 1247917, 1817453, 1829873, 1951013, 1965953, 1973273, 1975337]` | `step=1|rem=1,2,2,2,2,2,2|par=100|stack=<empty>|triSrc=` |
| `2` | `-73/88` | `[312761, 312772, 312773, 824407, 914497, 914499, 944197, 944199, 946777, 946779]` | `step=2|rem=1,1,2,2,2,2,2|par=110|stack=<empty>|triSrc=` |
| `3` | `-31/22` | `[824407, 914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 947581]` | `step=3|rem=1,1,2,2,2,1,2|par=110|stack=dm11|triSrc=2:d1m1->dm11@110` |
| `4` | `12/11` | `[914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 947581, 947589]` | `step=4|rem=1,1,2,2,1,1,2|par=110|stack=dm11 d111|triSrc=2:d1m1->dm11@110|3:d11m->d111@110` |
| `5` | `-9/22` | `[944197, 944199, 946777, 946779, 947437, 947439, 947581, 947589, 947591, 947593]` | `step=5|rem=1,1,2,2,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110` |
| `6` | `-18/11` | `[946777, 946779, 947437, 947439, 947581, 947589, 947591, 947593, 947599, 947601]` | `step=6|rem=1,1,2,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `7` | `45/44` | `[946777, 946779, 8431177, 8431179]` | `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `8` | `45/44` | `[946777, 946779, 8431177, 8431179]` | `step=8|rem=1,1,0,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110` |
| `9` | `-18/11` | `[946777, 946779, 8431177, 8431179]` | `step=9|rem=1,1,0,0,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110` |
| `10` | `-9/22` | `[946777, 946779, 8431177, 8431179]` | `step=10|rem=1,1,0,0,1,0,1|par=110|stack=dm11 d111 d1m1 dm11|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110` |
| `11` | `12/11` | `[946779, 8431179]` | `step=11|rem=1,1,0,0,0,0,1|par=110|stack=dm11 d111 d1m1 dm11 d111|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110|10:...` |
| `12` | `-31/22` | `[946779, 8431179]` | `step=12|rem=1,1,0,0,0,0,0|par=110|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `13` | `103/88` | `[946779, 8431179]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `14` | `-73/88` | `[946779, 8431179]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |

## Graph Export

- Path objects: `273`
- Path classes: `273`
- Semantic labels: `14`
- Edge-label relations: `1054`

## Top Margin Values

| value | count |
| --- | ---: |
| `-39/22` | `31` |
| `-47/11` | `24` |
| `-3/11` | `20` |
| `-25/11` | `19` |
| `-21/22` | `14` |
| `-105/22` | `11` |
| `-36/11` | `10` |
| `-58/11` | `9` |
| `-27/11` | `9` |
| `-16/11` | `9` |
| `-109/22` | `8` |
| `-69/11` | `8` |
| `-60/11` | `7` |
| `-17/22` | `6` |
| `-61/22` | `6` |
| `-49/11` | `6` |
| `-83/22` | `5` |
| `-43/22` | `4` |
| `-127/22` | `4` |
| `-27/22` | `4` |
| `-87/22` | `4` |
| `-65/22` | `4` |
| `-153/22` | `4` |
| `-35/22` | `3` |
| `-89/22` | `3` |
| `-34/11` | `3` |
| `0` | `3` |
| `-2` | `3` |
| `-149/22` | `3` |
| `-38/11` | `3` |

## Samples

- rank `312761` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312772` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `312773` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1247917` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1817453` value `-83/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1829873` value `-25/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1951013` value `-35/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1965953` value `-17/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1973273` value `-89/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975337` value `-17/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975565` value `-58/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975576` value `-61/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975577` value `-61/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975609` value `-34/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975617` value `-3/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975618` value `-3/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `1975619` value `-3/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `824407` value `-43/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `914497` value `-109/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `914499` value `-27/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
