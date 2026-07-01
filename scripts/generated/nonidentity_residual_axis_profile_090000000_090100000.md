# Nonidentity Residual Axis Profile

- Range: `[90,000,000, 90,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `7.934`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,029` |
| `shadow_nonidentity` | `98,971` |
| `exact_identity` | `1,029` |
| `exact_nonidentity` | `98,971` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `8,243` |
| `forced_zero_denominator` | `52,135` |
| `bad_pair_balance` | `36,342` |
| `residual_survivors` | `2,251` |

## Terminal Failures

| Failure | Count |
| --- | ---: |
| `axis_misses_start_interior` | `2,200` |
| `first_hit_mismatch` | `44` |
| `hit_tie` | `7` |

## Terminal Family Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `779`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp|margin=neg:-167/100` | `30` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-437/100` | `28` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-5/4` | `28` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-91/66` | `24` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-23/4` | `20` |

## Residual Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `970`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `residual|reduced=dm11 d111 d11m d1m1 d11m d1m1|axis=8,5,-9|signs=+---+-+-+-+-+|failure=axis_misses_start_interior` | `21` |
| `residual|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++---++-+--|failure=axis_misses_start_interior` | `20` |
| `residual|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++--+-+-+--|failure=axis_misses_start_interior` | `16` |
| `residual|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++---+-++--|failure=axis_misses_start_interior` | `16` |
| `residual|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-++--+-+-+--|failure=axis_misses_start_interior` | `14` |

## Terminal By Reduced Shadow

- Exact distinct count stored: `True`
- Stored distinct keys: `159`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|reduced=dm11 d111 d11m d1m1` | `236` |
| `axis_misses_start_interior|reduced=dm11 d111 d11m d1m1 d11m d1m1` | `208` |
| `axis_misses_start_interior|reduced=dm11 d111 d11m dm11 d111 d1m1` | `200` |
| `axis_misses_start_interior|reduced=dm11 d111 d11m d111 d1m1 d11m` | `117` |
| `axis_misses_start_interior|reduced=dm11 d111 d11m dm11 d1m1 d111` | `104` |

## Terminal By Axis

- Exact distinct count stored: `True`
- Stored distinct keys: `158`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|axis=2,-1,0` | `261` |
| `axis_misses_start_interior|axis=8,5,-9` | `208` |
| `axis_misses_start_interior|axis=4,-5,3` | `200` |
| `axis_misses_start_interior|axis=5,-9,2` | `117` |
| `axis_misses_start_interior|axis=6,-7,-5` | `104` |

## Sample Buckets

- `terminal_axis_misses_start_interior`: `1` samples
- `terminal_first_hit_mismatch`: `1` samples
- `terminal_hit_tie`: `1` samples
