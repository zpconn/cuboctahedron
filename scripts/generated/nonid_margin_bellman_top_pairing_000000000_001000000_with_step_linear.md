# Nonidentity Margin Bellman Profile

Untrusted exact diagnostic profile.  It emits no Lean evidence.

- Range: `[0, 1,000,000)`
- Jobs: `4`
- Elapsed seconds: `80.224`
- Target bad face: `yp`
- Target D4 axis: `1,-3,-1`
- Target margin+cancellation pairing: `ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- State key mode: `with-step-linear`

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
| `states` | `73` |
| `edges` | `101` |
| `final_states` | `1` |
| `margin_families` | `1` |
| `margin_values` | `14` |

## Bellman

| metric | value |
| --- | ---: |
| `bounded_fixed_point` | `True` |
| `root_bound` | `-16/11` |
| `max_const` | `2` |
| `max_margin_bound` | `6/11` |
| `proves_observed_nonpositive` | `False` |
| `scale` | `88` |
| `gain_fraction_bit_length` | `7` |
| `potential_fraction_bit_length` | `9` |
| `scaled_potential_bit_length` | `9` |

## Bellman Argmax Path

- Edge count: `14`
- Total gain: `-16/11`
- Margin bound: `6/11`
- Is observed path: `False`
- Realizing ranks: `[]`

| step | gain | edge realizing ranks | dst state |
| ---: | ---: | --- | --- |
| `1` | `103/88` | `[312761, 312772, 312773, 824407, 914497, 914499, 944197, 944199, 946777, 946779]` | `step=1|rem=1,2,2,2,2,2,2|par=100|stack=<empty>|lin=-1,0,0;0,1,0;0,0,1` |
| `2` | `-73/88` | `[312761, 312772, 312773, 824407, 914497, 914499, 944197, 944199, 946777, 946779]` | `step=2|rem=1,1,2,2,2,2,2|par=110|stack=<empty>|lin=-1,0,0;0,-1,0;0,0,1` |
| `3` | `-31/22` | `[824407, 914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 947581]` | `step=3|rem=1,1,2,2,2,1,2|par=110|stack=dm11|lin=-1/3,-2/3,2/3;-2/3,-1/3,-2/3;-2/3,2/3,1/3` |
| `4` | `57/44` | `[824407]` | `step=4|rem=1,1,1,2,2,1,2|par=111|stack=dm11|lin=-1/3,-2/3,-2/3;-2/3,-1/3,2/3;-2/3,2/3,-1/3` |
| `5` | `57/44` | `[824407]` | `step=5|rem=1,1,0,2,2,1,2|par=110|stack=dm11|lin=-1/3,-2/3,2/3;-2/3,-1/3,-2/3;-2/3,2/3,1/3` |
| `6` | `12/11` | `[824407, 151567, 151569]` | `step=6|rem=1,1,0,2,1,1,2|par=110|stack=dm11 d111|lin=7/9,4/9,-4/9;-4/9,-1/9,-8/9;-4/9,8/9,1/9` |
| `7` | `-9/22` | `[824407, 914497, 914499, 151567, 151569]` | `step=7|rem=1,1,0,2,1,1,1|par=110|stack=dm11 d111 d1m1|lin=7/27,26/27,2/27;-22/27,7/27,-14/27;14/27,-2/27,-23/27` |
| `8` | `-18/11` | `[824407, 914497, 914499, 944197, 944199, 151567, 151569]` | `step=8|rem=1,1,0,1,1,1,1|par=110|stack=dm11 d111 d1m1 d11m|lin=-49/81,8/81,-64/81;-8/81,79/81,16/81;64/81,16/81,-47/81` |
| `9` | `-18/11` | `[824407, 914497, 914499, 944197, 944199, 946777, 946779, 151567, 151569]` | `step=9|rem=1,1,0,0,1,1,1|par=110|stack=dm11 d111 d1m1|lin=7/27,26/27,2/27;-22/27,7/27,-14/27;14/27,-2/27,-23/27` |
| `10` | `-9/22` | `[824407, 914497, 914499, 944197, 944199, 946777, 946779, 947437, 947439, 151567]` | `step=10|rem=1,1,0,0,1,0,1|par=110|stack=dm11 d111 d1m1 dm11|lin=55/81,44/81,40/81;20/81,-65/81,44/81;56/81,-20/81,-55/81` |
| `11` | `12/11` | `[914499, 944199, 946779, 947439, 947601, 151569]` | `step=11|rem=1,1,0,0,0,0,1|par=110|stack=dm11 d111 d1m1 dm11 d111|lin=47/243,14/243,238/243;238/243,-17/243,-46/243;-14/243,-242/243,17/243` |
| `12` | `-31/22` | `[914499, 944199, 946779, 947439, 947601, 151569]` | `step=12|rem=1,1,0,0,0,0,0|par=110|stack=dm11 d111 d1m1 dm11 d111 d1m1|lin=551/729,-368/729,304/729;112/729,551/729,464/729;-464/729,-304/729,473/729` |
| `13` | `103/88` | `[312773, 914499, 944199, 946779, 947439, 947601, 947627, 151569]` | `step=13|rem=1,0,0,0,0,0,0|par=100|stack=dm11 d111 d1m1 dm11 d111 d1m1|lin=551/729,368/729,304/729;112/729,-551/729,464/729;-464/729,304/729,473/729` |
| `14` | `-73/88` | `[312761, 312772, 312773, 824407, 914497, 914499, 944197, 944199, 946777, 946779]` | `step=14|rem=0,0,0,0,0,0,0|par=000|stack=dm11 d111 d1m1 dm11 d111 d1m1|lin=-551/729,368/729,304/729;-112/729,-551/729,464/729;464/729,304/729,473/729` |

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
