# Forced-Axis Sign Profile

- Range: `[0, 100)`
- Scanned pair words: `100`
- Jobs: `1`
- Elapsed seconds: `0.017`
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
| `final_axis_zero` | `12` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `52` |
| `bad_pair_balance` | `0` |
| `forced_balance_survivors` | `6` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `final_dot_nonpositive` | `82` |
| `forced_balance_survivor` | `6` |
| `forced_zero_denominator` | `52` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `42`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `<empty>` | `30` |
| `d11m d111 d11m d111` | `5` |
| `d111 d11m d111 d11m` | `5` |
| `d1m1 d11m d1m1 d11m` | `5` |
| `d1m1 d111 d1m1 d111` | `5` |
| `d11m d1m1 d11m d1m1` | `5` |
| `d111 d1m1 d111 d1m1` | `5` |
| `dm11 d1m1 dm11 d1m1` | `5` |
| `dm11 d1m1 dm11 d11m d1m1 d11m` | `2` |
| `d1m1 d11m d1m1 d111 d11m d111` | `1` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `23`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `1,-1,0` | `10` |
| `0,1,1` | `10` |
| `1,0,-1` | `10` |
| `1,1,0` | `5` |
| `1,-6,-1` | `2` |
| `1,3,-1` | `2` |
| `3,5,2` | `2` |
| `2,3,-5` | `2` |
| `1,-1,4` | `2` |
| `6,-1,-1` | `2` |

## Rejection Families

- Exact distinct count stored: `True`
- Stored distinct keys: `35`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `forcedZero|reduced=d11m d111 d11m d111|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `5` |
| `forcedZero|reduced=d111 d11m d111 d11m|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `5` |
| `finalAxisZero|axis=0,1,1|finalNormal=17,-56,56` | `5` |
| `forcedZero|reduced=d1m1 d111 d1m1 d111|axis=1,0,-1|zeroAt=1|pair=y|normal=0,1,0` | `5` |
| `finalAxisZero|axis=0,1,1|finalNormal=17,56,-56` | `5` |
| `forcedZero|reduced=d111 d1m1 d111 d1m1|axis=1,0,-1|zeroAt=1|pair=y|normal=0,1,0` | `5` |
| `forcedZero|reduced=dm11 d1m1 dm11 d1m1|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `5` |
| `forcedZero|reduced=dm11 d1m1 dm11 d11m d1m1 d11m|axis=1,6,1|zeroAt=6|pair=d11m|normal=1,-1,5` | `2` |
| `forcedZero|reduced=d1m1 d11m d1m1 d111 d11m d111|axis=1,-6,-1|zeroAt=8|pair=d1m1|normal=5,1,-1` | `1` |
| `forcedZero|reduced=d1m1 d11m d111 d1m1 d111 d11m|axis=3,5,2|zeroAt=7|pair=d11m|normal=1,-1,1` | `1` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `6`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|signs=--++--+-+-+-+` | `1` |
| `survivor|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=--+-++-+-+-+-` | `1` |
| `survivor|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=-+--+-+-+-+-+` | `1` |
| `survivor|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=--+-++-+-+-+-` | `1` |
| `survivor|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=-+--+-+-+-+-+` | `1` |
| `survivor|reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|signs=--++--+-+-+-+` | `1` |

## Sample Buckets

- `forced_zero_denominator`: `5` samples
- `final_axis_zero`: `5` samples
- `forced_balance_survivor`: `5` samples
