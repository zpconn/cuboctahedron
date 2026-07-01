# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[10,000,000, 20,000,000)`
- Jobs: `8`
- Elapsed seconds: `310.301`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-step-tri-source`

## Counts

| metric | value |
| --- | ---: |
| `scanned` | `10000000` |
| `nonidentity` | `9733882` |
| `forced_balance_survivors` | `168211` |
| `axis_start_failures` | `162320` |
| `matched` | `100` |
| `offset_sum_mismatches` | `0` |
| `paths` | `100` |
| `root_states` | `1` |
| `states` | `417` |
| `edges` | `457` |
| `final_states` | `51` |
| `margin_families` | `1` |
| `margin_values` | `21` |

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
| `scaled_potential_bit_length` | `10` |

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-38/11`
- Margin bound: `-16/11`
- Is observed path: `True`
- Realizing ranks: `[15543335]`

| step | gain | edge realizing ranks | dst state |
| ---: | ---: | --- | --- |
| `1` | `-73/88` | `[11030321, 11030332, 11030333, 11079400, 11079401, 11079474, 11079475, 11079476, 11079477, 11079478]` | `step=1|rem=2,1,2,2,2,2,2|par=010|stack=<empty>|triSrc=` |
| `2` | `-31/22` | `[15539317, 15539319, 15543321, 15543334, 15543335, 15844072, 15844073, 16563697, 16563699, 16593397]` | `step=2|rem=2,1,2,2,1,2,2|par=010|stack=dm11|triSrc=1:d11m->dm11@010` |
| `3` | `57/44` | `[15539317, 15539319, 15543321, 15543334, 15543335, 15844072, 15844073]` | `step=3|rem=2,1,1,2,1,2,2|par=011|stack=dm11|triSrc=1:d11m->dm11@010` |
| `4` | `57/44` | `[15539317, 15539319, 15543321, 15543334, 15543335]` | `step=4|rem=2,1,0,2,1,2,2|par=010|stack=dm11|triSrc=1:d11m->dm11@010` |
| `5` | `12/11` | `[15539317, 15539319, 15543321, 15543334, 15543335]` | `step=5|rem=2,1,0,2,1,1,2|par=010|stack=dm11 d111|triSrc=1:d11m->dm11@010|4:d1m1->d111@010` |
| `6` | `-9/22` | `[15543321, 15543334, 15543335]` | `step=6|rem=2,1,0,1,1,1,2|par=010|stack=dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010` |
| `7` | `-18/11` | `[15543321, 15543334, 15543335]` | `step=7|rem=2,1,0,1,1,1,1|par=010|stack=dm11 d111 d1m1 d11m|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010` |
| `8` | `-18/11` | `[15543321, 15543334, 15543335]` | `step=8|rem=2,1,0,1,1,1,0|par=010|stack=dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010` |
| `9` | `-9/22` | `[15543321, 15543334, 15543335]` | `step=9|rem=2,1,0,1,0,1,0|par=010|stack=dm11 d111 d1m1 dm11|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@010` |
| `10` | `12/11` | `[15543334, 15543335]` | `step=10|rem=2,1,0,1,0,0,0|par=010|stack=dm11 d111 d1m1 dm11 d111|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@010|9:d...` |
| `11` | `-31/22` | `[15543334, 15543335]` | `step=11|rem=2,1,0,0,0,0,0|par=010|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@01...` |
| `12` | `103/88` | `[15543335]` | `step=12|rem=2,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@01...` |
| `13` | `-73/88` | `[15543335]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@01...` |
| `14` | `-73/88` | `[15543334, 15543335]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|triSrc=1:d11m->dm11@010|4:d1m1->d111@010|5:d111->d1m1@010|6:dm11->d11m@010|7:dm11->d11m@010|8:d11m->dm11@01...` |

## Top Margin Values

| value | count |
| --- | ---: |
| `-47/11` | `26` |
| `-105/22` | `9` |
| `-149/22` | `9` |
| `-49/11` | `6` |
| `-16/11` | `6` |
| `-82/11` | `6` |
| `-69/11` | `4` |
| `-25/11` | `4` |
| `-109/22` | `4` |
| `-153/22` | `4` |
| `-58/11` | `4` |
| `-80/11` | `3` |
| `-43/22` | `2` |
| `-87/22` | `2` |
| `-91/11` | `2` |
| `-127/22` | `2` |
| `-171/22` | `2` |
| `-2` | `2` |
| `-5` | `1` |
| `-5/2` | `1` |
| `-9/2` | `1` |

## Samples

- rank `11030321` value `-80/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11030332` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11030333` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079400` value `-149/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079401` value `-149/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079474` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079475` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079476` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079477` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079478` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `11079479` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10549717` value `-80/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10549719` value `-105/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10553721` value `-149/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10553734` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10553735` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10362773` value `-149/22` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10370848` value `-69/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10370849` value `-69/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
- rank `10433317` value `-47/11` axis `1,1,3` reduced `dm11 d111 d1m1 dm11 d111 d1m1`
