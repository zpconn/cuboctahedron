# Nonidentity Forced-Axis Empty-Cone Profile

- Range: `[0, 100,000)`
- Scanned: `100,000`
- Jobs: `4`
- Elapsed seconds: `173.768`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| metric | count |
| --- | ---: |
| `shadow_identity` | `5,565` |
| `shadow_nonidentity` | `94,435` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `6,241` |
| `forced_zero_denominator` | `54,794` |
| `bad_pair_balance` | `24,364` |
| `forced_balance_survivors` | `9,036` |
| `cone_killed` | `0` |
| `cone_survivors` | `9,036` |

## Cone Depths

| depth | count |
| ---: | ---: |

## Cone Support Sizes

| size | count |
| ---: | ---: |

## Top Cone Certificate Keys

| key | count |
| --- | ---: |

## Terminal Failures After Cone Survivors

| failure | count |
| --- | ---: |
| `axis_misses_start_interior` | `8,775` |
| `first_hit_mismatch` | `251` |
| `hit_tie` | `10` |

## Top Survivor Signatures

| signature | count |
| --- | ---: |
| `reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|failure=axis_misses_start_interior` | `107` |
| `reduced=dm11 d111 d11m dm11 d111 d11m|axis=1,3,1|failure=axis_misses_start_interior` | `107` |
| `reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|failure=axis_misses_start_interior` | `107` |
| `reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|failure=axis_misses_start_interior` | `105` |
| `reduced=dm11 d11m d111 dm11 d11m d111|axis=3,1,-1|failure=axis_misses_start_interior` | `105` |
| `reduced=d1m1 dm11 d111 d1m1 dm11 d111|axis=1,-3,-1|failure=axis_misses_start_interior` | `105` |
| `reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|failure=axis_misses_start_interior` | `102` |
| `reduced=dm11 d1m1 d111 dm11 d1m1 d111|axis=3,-1,1|failure=axis_misses_start_interior` | `101` |
| `reduced=dm11 d1m1 d11m dm11 d1m1 d11m|axis=1,-3,1|failure=axis_misses_start_interior` | `98` |
| `reduced=d11m d1m1 dm11 d11m d1m1 dm11|axis=1,-3,1|failure=axis_misses_start_interior` | `98` |
| `reduced=d11m dm11 d111 d11m dm11 d111|axis=1,-1,-3|failure=axis_misses_start_interior` | `96` |
| `reduced=d11m dm11 d1m1 d11m dm11 d1m1|axis=3,-1,-1|failure=axis_misses_start_interior` | `96` |
| `reduced=d111 dm11 d1m1 d111 dm11 d1m1|axis=1,-3,-1|failure=axis_misses_start_interior` | `96` |
| `reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|failure=axis_misses_start_interior` | `95` |
| `reduced=d1m1 d111 dm11 d1m1 d111 dm11|axis=1,1,3|failure=axis_misses_start_interior` | `94` |
| `reduced=dm11 d111 d1m1 dm11 d111 d1m1|axis=1,1,3|failure=axis_misses_start_interior` | `93` |
| `reduced=d1m1 dm11 d11m d1m1 dm11 d11m|axis=3,-1,-1|failure=axis_misses_start_interior` | `93` |
| `reduced=dm11 d11m d1m1 dm11 d11m d1m1|axis=1,1,-3|failure=axis_misses_start_interior` | `88` |
| `reduced=d1m1 d11m dm11 d1m1 d11m dm11|axis=1,1,-3|failure=axis_misses_start_interior` | `87` |
| `reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|failure=axis_misses_start_interior` | `74` |
| `reduced=dm11 d11m d111 d1m1|axis=1,-2,0|failure=axis_misses_start_interior` | `61` |
| `reduced=dm11 d111 d11m d1m1|axis=2,-1,0|failure=axis_misses_start_interior` | `60` |
| `reduced=d1m1 d111 d11m dm11|axis=1,-2,0|failure=axis_misses_start_interior` | `60` |
| `reduced=d11m dm11 d1m1 d111|axis=1,2,0|failure=axis_misses_start_interior` | `60` |
| `reduced=d11m d1m1 dm11 d111|axis=2,1,0|failure=axis_misses_start_interior` | `59` |
| `reduced=d1m1 d11m d111 dm11|axis=2,-1,0|failure=axis_misses_start_interior` | `59` |
| `reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|failure=axis_misses_start_interior` | `52` |
| `reduced=d111 d1m1 dm11 d111 d1m1 dm11|axis=3,-1,1|failure=axis_misses_start_interior` | `49` |
| `reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|failure=axis_misses_start_interior` | `48` |
| `reduced=d111 dm11 d1m1 d11m|axis=2,1,0|failure=axis_misses_start_interior` | `47` |

## Decision Hint

If cone_killed substantially reduces forced_balance_survivors and cone_survivors cluster tightly by reduced shadow / axis / terminal failure, combine cone pruning with the residual axis template layer. If not, use cone only as a cheap front-end.
