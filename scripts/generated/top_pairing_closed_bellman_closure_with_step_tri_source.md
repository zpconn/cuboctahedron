# Top-Pairing Closed Bellman Closure Audit

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Decision: `closed-bellman-bound-positive`
- State key mode: `with-step-tri-source`
- Elapsed seconds: `0.510`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`

## Counts

| metric | value |
| --- | ---: |
| `dfs_nodes` | `11318` |
| `closed_candidates` | `47` |
| `max_nodes_hit` | `False` |
| `usable_candidates` | `47` |
| `root_states` | `1` |
| `states` | `269` |
| `edges` | `276` |
| `final_states` | `37` |
| `margin_keys` | `1` |
| `margin_values` | `19` |
| `existing_graph_accepted` | `37` |
| `existing_graph_rejected` | `10` |

## Bellman

| metric | value |
| --- | ---: |
| `bounded_fixed_point` | `True` |
| `root_bound` | `-16/11` |
| `max_const` | `2` |
| `max_margin_bound` | `6/11` |
| `proves_closed_nonpositive` | `False` |
| `scale` | `88` |
| `gain_fraction_bit_length` | `7` |
| `potential_fraction_bit_length` | `9` |
| `scaled_potential_bit_length` | `9` |

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-16/11`
- Margin bound: `6/11`
- Is observed path: `True`
- Realizing candidates: `[21]`

| step | gain | edge candidates | dst state |
| ---: | ---: | --- | --- |
| `1` | `103/88` | `[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]` | `step=1|rem=1,2,2,2,2,2,2|par=100|stack=<empty>|triSrc=` |
| `2` | `-73/88` | `[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]` | `step=2|rem=1,1,2,2,2,2,2|par=110|stack=<empty>|triSrc=` |
| `3` | `-31/22` | `[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]` | `step=3|rem=1,1,2,2,2,1,2|par=110|stack=dm11|triSrc=2:d1m1->dm11@110` |
| `4` | `57/44` | `[21, 22]` | `step=4|rem=1,1,1,2,2,1,2|par=111|stack=dm11|triSrc=2:d1m1->dm11@110` |
| `5` | `57/44` | `[21, 22]` | `step=5|rem=1,1,0,2,2,1,2|par=110|stack=dm11|triSrc=2:d1m1->dm11@110` |
| `6` | `12/11` | `[21, 22]` | `step=6|rem=1,1,0,2,1,1,2|par=110|stack=dm11 d111|triSrc=2:d1m1->dm11@110|5:d11m->d111@110` |
| `7` | `-9/22` | `[21, 22]` | `step=7|rem=1,1,0,2,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110` |
| `8` | `-18/11` | `[21, 22]` | `step=8|rem=1,1,0,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110` |
| `9` | `-18/11` | `[21, 22]` | `step=9|rem=1,1,0,0,1,1,1|par=110|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110` |
| `10` | `-9/22` | `[21, 22]` | `step=10|rem=1,1,0,0,1,0,1|par=110|stack=dm11 d111 d1m1 dm11|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110` |
| `11` | `12/11` | `[21]` | `step=11|rem=1,1,0,0,0,0,1|par=110|stack=dm11 d111 d1m1 dm11 d111|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110|10:...` |
| `12` | `-31/22` | `[21]` | `step=12|rem=1,1,0,0,0,0,0|par=110|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `13` | `103/88` | `[21]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |
| `14` | `-73/88` | `[21]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@11...` |

## Existing Split Graph Rejects

| step | state | face | count |
| ---: | ---: | --- | ---: |
| `7` | `777` | `Face.tmmp` | `3` |
| `8` | `831` | `Face.zm` | `2` |
| `7` | `778` | `Face.zm` | `2` |
| `8` | `851` | `Face.tpmm` | `1` |
| `10` | `81` | `Face.tmmp` | `1` |
| `8` | `829` | `Face.tmpp` | `1` |

## Margin Values

| value | count |
| --- | ---: |
| `-25/11` | `6` |
| `-47/11` | `6` |
| `-109/22` | `4` |
| `-105/22` | `3` |
| `-25/22` | `3` |
| `-16/11` | `3` |
| `-69/22` | `3` |
| `-43/22` | `2` |
| `-27/11` | `2` |
| `-36/11` | `2` |
| `-127/22` | `2` |
| `-40/11` | `2` |
| `-49/11` | `2` |
| `-58/11` | `2` |
| `-85/22` | `1` |
| `0` | `1` |
| `-5/2` | `1` |
| `6/11` | `1` |
| `-2` | `1` |
