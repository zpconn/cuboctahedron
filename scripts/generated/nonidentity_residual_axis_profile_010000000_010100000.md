# Nonidentity Residual Axis Profile

- Range: `[10,000,000, 10,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `8.937`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `3,278` |
| `shadow_nonidentity` | `96,722` |
| `exact_identity` | `3,278` |
| `exact_nonidentity` | `96,722` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `8,245` |
| `forced_zero_denominator` | `57,652` |
| `bad_pair_balance` | `26,682` |
| `residual_survivors` | `4,143` |

## Terminal Failures

| Failure | Count |
| --- | ---: |
| `axis_misses_start_interior` | `3,952` |
| `first_hit_mismatch` | `187` |
| `hit_tie` | `4` |

## Terminal Family Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `972`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp|margin=neg:-3/11` | `34` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-35/22` | `33` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-7/33` | `32` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-25/11` | `31` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-53/22` | `30` |

## Residual Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `3,258`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `residual|reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|signs=---+++--+--++|failure=axis_misses_start_interior` | `10` |
| `residual|reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|signs=++---++-++---|failure=axis_misses_start_interior` | `10` |
| `residual|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=+--+--+-+-+-+|failure=axis_misses_start_interior` | `9` |
| `residual|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=+--+--+-+-+-+|failure=axis_misses_start_interior` | `8` |
| `residual|reduced=dm11 d111 d1m1 dm11 d111 d1m1|axis=1,1,3|signs=---+-+-+-+-++|failure=axis_misses_start_interior` | `8` |

## Terminal By Reduced Shadow

- Exact distinct count stored: `True`
- Stored distinct keys: `1,225`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|reduced=d11m d111 d1m1 d11m d111 d1m1` | `75` |
| `axis_misses_start_interior|reduced=d111 d11m dm11 d111 d11m dm11` | `70` |
| `axis_misses_start_interior|reduced=d111 d1m1 dm11 d111 d1m1 dm11` | `69` |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m d111 d1m1 d11m` | `53` |
| `axis_misses_start_interior|reduced=d11m d111 dm11 d11m d111 dm11` | `53` |

## Terminal By Axis

- Exact distinct count stored: `True`
- Stored distinct keys: `757`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|axis=3,1,1` | `103` |
| `axis_misses_start_interior|axis=3,-1,1` | `101` |
| `axis_misses_start_interior|axis=3,1,-1` | `98` |
| `axis_misses_start_interior|axis=1,-1,3` | `97` |
| `axis_misses_start_interior|axis=1,-1,-3` | `83` |

## Sample Buckets

- `terminal_axis_misses_start_interior`: `1` samples
- `terminal_first_hit_mismatch`: `1` samples
- `terminal_hit_tie`: `1` samples
