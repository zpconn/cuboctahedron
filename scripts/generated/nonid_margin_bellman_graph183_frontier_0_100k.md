# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 100,000)`
- Jobs: `1`
- Elapsed seconds: `36.148`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-step-tri-source`

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

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-38/11`
- Margin bound: `-16/11`
- Is observed path: `True`
- Realizing ranks: `[23197]`

| step | gain | edge realizing ranks | dst state |
| ---: | ---: | --- | --- |
| `1` | `103/88` | `[517, 10613, 23197, 25555, 40387, 42247, 42943, 43171, 43195, 43203]` | `step=1|rem=1,2,2,2,2,2,2|par=100|stack=<empty>|triSrc=` |
| `2` | `-73/88` | `[517, 10613, 23197, 25555, 40387, 42247, 42943, 43171, 43195, 43203]` | `step=2|rem=1,1,2,2,2,2,2|par=110|stack=<empty>|triSrc=` |
| `3` | `-73/88` | `[517, 10613, 23197, 25555, 40387, 42247, 42943, 43171, 43195, 43203]` | `step=3|rem=1,0,2,2,2,2,2|par=100|stack=<empty>|triSrc=` |
| `4` | `-31/22` | `[23197, 25555, 40387, 42247, 42943, 43171, 43195, 43203, 43205]` | `step=4|rem=1,0,2,1,2,2,2|par=100|stack=dm11|triSrc=3:d111->dm11@100` |
| `5` | `57/44` | `[23197, 25555]` | `step=5|rem=1,0,1,1,2,2,2|par=101|stack=dm11|triSrc=3:d111->dm11@100` |
| `6` | `57/44` | `[23197]` | `step=6|rem=1,0,0,1,2,2,2|par=100|stack=dm11|triSrc=3:d111->dm11@100` |
| `7` | `12/11` | `[23197]` | `step=7|rem=1,0,0,1,2,2,1|par=100|stack=dm11 d111|triSrc=3:d111->dm11@100|6:dm11->d111@100` |
| `8` | `-9/22` | `[23197]` | `step=8|rem=1,0,0,1,1,2,1|par=100|stack=dm11 d111 d1m1|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100` |
| `9` | `-18/11` | `[23197]` | `step=9|rem=1,0,0,1,1,1,1|par=100|stack=dm11 d111 d1m1 d11m|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100` |
| `10` | `-18/11` | `[23197]` | `step=10|rem=1,0,0,1,1,0,1|par=100|stack=dm11 d111 d1m1|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100|9:d1m1->d11m@100` |
| `11` | `-9/22` | `[23197]` | `step=11|rem=1,0,0,0,1,0,1|par=100|stack=dm11 d111 d1m1 dm11|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100|9:d1m1->d11m@100|10:d111->dm11@100` |
| `12` | `12/11` | `[23197]` | `step=12|rem=1,0,0,0,1,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100|9:d1m1->d11m@100|10:d111->dm11@100|11...` |
| `13` | `-31/22` | `[23197]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100|9:d1m1->d11m@100|10:d111->dm11@1...` |
| `14` | `-73/88` | `[23197]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=3:d111->dm11@100|6:dm11->d111@100|7:d11m->d1m1@100|8:d1m1->d11m@100|9:d1m1->d11m@100|10:d111->dm11@1...` |

## Graph Export

- Path objects: `11`
- Path classes: `11`
- Semantic labels: `14`
- Edge-label relations: `93`

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
