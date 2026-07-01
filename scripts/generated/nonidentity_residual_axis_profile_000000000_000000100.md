# Nonidentity Residual Axis Profile

- Range: `[0, 100)`
- Scanned pair words: `100`
- Jobs: `1`
- Elapsed seconds: `0.023`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `30` |
| `shadow_nonidentity` | `70` |
| `exact_identity` | `30` |
| `exact_nonidentity` | `70` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `12` |
| `forced_zero_denominator` | `52` |
| `bad_pair_balance` | `0` |
| `residual_survivors` | `6` |

## Terminal Failures

| Failure | Count |
| --- | ---: |
| `axis_misses_start_interior` | `6` |

## Local Certificate Kinds

| Certificate Kind | Count |
| --- | ---: |
| `AxisStartViolationCert` | `6` |

## Terminal Family Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `4`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=tpmm|margin=neg:-20/33` | `2` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-61/66` | `2` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-379/66` | `1` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-53/33` | `1` |

## Terminal Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `2`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp` | `4` |
| `axisMissesStartInterior|badFace=tpmm` | `2` |

## Certificate Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `2`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=yp` | `4` |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=tpmm` | `2` |

## Residual Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `6`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `residual|reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|signs=--++--+-+-+-+|failure=axis_misses_start_interior` | `1` |
| `residual|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=--+-++-+-+-+-|failure=axis_misses_start_interior` | `1` |
| `residual|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=-+--+-+-+-+-+|failure=axis_misses_start_interior` | `1` |
| `residual|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=--+-++-+-+-+-|failure=axis_misses_start_interior` | `1` |
| `residual|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=-+--+-+-+-+-+|failure=axis_misses_start_interior` | `1` |
| `residual|reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|signs=--++--+-+-+-+|failure=axis_misses_start_interior` | `1` |

## Terminal By Reduced Shadow

- Exact distinct count stored: `True`
- Stored distinct keys: `6`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|reduced=d1m1 d11m d111 d1m1 d11m d111` | `1` |
| `axis_misses_start_interior|reduced=d1m1 d111 d11m d1m1 d111 d11m` | `1` |
| `axis_misses_start_interior|reduced=d11m d1m1 d111 d11m d1m1 d111` | `1` |
| `axis_misses_start_interior|reduced=d11m d111 d1m1 d11m d111 d1m1` | `1` |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m d111 d1m1 d11m` | `1` |
| `axis_misses_start_interior|reduced=d111 d11m d1m1 d111 d11m d1m1` | `1` |

## Terminal By Axis

- Exact distinct count stored: `True`
- Stored distinct keys: `3`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|axis=1,3,-1` | `2` |
| `axis_misses_start_interior|axis=3,1,1` | `2` |
| `axis_misses_start_interior|axis=1,-1,3` | `2` |

## Sample Buckets

- `terminal_axis_misses_start_interior`: `3` samples
