# Forced-Axis Sign Profile

- Range: `[30,000,000, 30,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `6.910`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,928` |
| `shadow_nonidentity` | `98,072` |
| `exact_identity` | `1,928` |
| `exact_nonidentity` | `98,072` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `10,571` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `62,683` |
| `bad_pair_balance` | `23,857` |
| `forced_balance_survivors` | `961` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `23,857` |
| `final_dot_nonpositive` | `108,643` |
| `forced_balance_survivor` | `961` |
| `forced_zero_denominator` | `62,683` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `2,558`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `d111 dm11` | `3,286` |
| `d111 d1m1` | `2,337` |
| `<empty>` | `1,928` |
| `d111 d11m` | `1,653` |
| `d111 d1m1 dm11 d1m1` | `1,165` |
| `d111 d1m1 d11m d111` | `1,110` |
| `d111 d1m1 d111 d11m` | `1,098` |
| `d1m1 d11m` | `1,048` |
| `d1m1 d111` | `941` |
| `d111 d1m1 dm11 d111` | `936` |
| `d111 dm11 d111 d11m` | `915` |
| `d111 d1m1 d111 dm11` | `907` |
| `d111 dm11 d11m d111` | `884` |
| `dm11 d111` | `869` |
| `d111 d1m1 d11m d1m1` | `869` |
| `d1m1 dm11` | `791` |
| `d111 d1m1 d11m dm11` | `784` |
| `d111 d1m1 dm11 d11m` | `779` |
| `d111 dm11 d1m1 d111` | `772` |
| `d111 dm11 d1m1 dm11` | `769` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `1,866`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `0,1,-1` | `5,090` |
| `1,0,-1` | `4,273` |
| `1,-1,0` | `2,729` |
| `0,1,1` | `2,044` |
| `1,1,4` | `1,921` |
| `4,1,1` | `1,669` |
| `1,1,0` | `1,645` |
| `1,0,1` | `1,456` |
| `2,-3,1` | `1,397` |
| `1,4,1` | `1,332` |
| `2,1,3` | `1,273` |
| `1,-3,2` | `1,056` |
| `3,1,2` | `1,038` |
| `1,2,3` | `1,027` |
| `0,2,1` | `924` |
| `3,-2,-1` | `920` |
| `1,2,0` | `918` |
| `3,-1,-2` | `878` |
| `2,1,0` | `822` |
| `1,3,2` | `808` |

## Rejection Families

- Exact distinct count stored: `False`
- Stored distinct keys: `20,000`
- Overflow cases: `468`

| Key | Count |
| --- | ---: |
| `finalAxisZero|axis=0,1,-1|finalNormal=7,4,4` | `3,286` |
| `forcedZero|reduced=d111 d1m1|axis=1,0,-1|zeroAt=1|pair=d11m|normal=1,1,1` | `2,337` |
| `forcedZero|reduced=d111 d11m|axis=1,-1,0|zeroAt=0|pair=z|normal=0,0,1` | `1,653` |
| `forcedZero|reduced=d111 d1m1 dm11 d1m1|axis=2,-3,1|zeroAt=1|pair=d11m|normal=1,1,1` | `1,165` |
| `forcedZero|reduced=d111 d1m1 d11m d111|axis=4,1,1|zeroAt=2|pair=x|normal=1,-2,-2` | `1,110` |
| `finalAxisZero|axis=0,1,1|finalNormal=7,-4,4` | `1,048` |
| `forcedZero|reduced=d1m1 d111|axis=1,0,-1|zeroAt=1|pair=d11m|normal=1,1,1` | `941` |
| `forcedZero|reduced=d111 d1m1 d111 d11m|axis=2,1,3|zeroAt=3|pair=d111|normal=1,-5,1` | `918` |
| `finalAxisZero|axis=0,1,-1|finalNormal=7,-4,-4` | `869` |
| `forcedZero|reduced=d111 d1m1 d11m d1m1|axis=1,-3,2|zeroAt=1|pair=d11m|normal=1,1,1` | `869` |
| `forcedZero|reduced=d1m1 dm11|axis=1,1,0|zeroAt=0|pair=z|normal=0,0,1` | `791` |
| `finalAxisZero|axis=0,2,1|finalNormal=79,-8,16` | `784` |
| `forcedZero|reduced=d111 d1m1 d111 dm11|axis=3,1,2|zeroAt=3|pair=d111|normal=1,-5,1` | `780` |
| `forcedZero|reduced=d111 d1m1 dm11 d111|axis=1,1,4|zeroAt=3|pair=d111|normal=1,-5,1` | `780` |
| `forcedZero|reduced=d111 d1m1 dm11 d11m|axis=1,2,0|zeroAt=0|pair=z|normal=0,0,1` | `779` |
| `forcedZero|reduced=d111 dm11 d1m1 dm11|axis=3,-2,-1|zeroAt=1|pair=d11m|normal=1,1,1` | `769` |
| `finalAxisZero|axis=0,1,1|finalNormal=7,4,-4` | `767` |
| `forcedZero|reduced=d111 dm11 d11m dm11|axis=3,-1,-2|zeroAt=1|pair=d11m|normal=1,1,1` | `750` |
| `forcedZero|reduced=d111 dm11 d1m1 d11m|axis=2,1,0|zeroAt=0|pair=z|normal=0,0,1` | `699` |
| `forcedZero|reduced=d111 d1m1 d111 d1m1|axis=1,0,-1|zeroAt=1|pair=d11m|normal=1,1,1` | `688` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `637`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-+-+-+-+-` | `20` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+++---+-+-` | `7` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-++--+-+-` | `7` |
| `survivor|reduced=d111 dm11 d111 dm11 d1m1 d11m|axis=8,-5,-9|signs=++-++--++----` | `6` |
| `survivor|reduced=d111 dm11 d111 dm11 d11m d1m1|axis=8,-9,-5|signs=++-++--++----` | `6` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+++--+-+--` | `6` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 d11m|axis=5,7,-6|signs=+----++-+++--` | `6` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-++-+-+--` | `6` |
| `survivor|reduced=d111 d1m1 d111 d11m d111 dm11|axis=3,-5,-1|signs=++-+-----+++-` | `5` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 d11m|axis=5,7,-6|signs=+----++++-+--` | `5` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+--++-+-+-` | `5` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-+--++-+-` | `5` |
| `survivor|reduced=d111 d1m1 d11m d111 d11m dm11|axis=9,-5,2|signs=---+---+++++-` | `5` |
| `survivor|reduced=d111 d1m1 d11m d111 d11m d111 dm11 d1m1|axis=8,-39,-5|signs=++-+--++--+--` | `5` |
| `survivor|reduced=d111 dm11 d111 dm11 d11m d1m1|axis=8,-9,-5|signs=++-+-++-+----` | `4` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+-----++++-+-` | `4` |
| `survivor|reduced=d111 d1m1 d11m d1m1 d111 dm11 d111 d11m|axis=26,-23,-15|signs=++-+-+-+-+---` | `4` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--++--+-+-+-` | `4` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+++--+--+-` | `4` |
| `survivor|reduced=d111 d1m1 d11m dm11 d111 d11m|axis=5,7,-6|signs=+----+++-++--` | `4` |

## Sample Buckets

- `final_axis_zero`: `5` samples
- `forced_zero_denominator`: `5` samples
- `bad_pair_balance`: `5` samples
- `forced_balance_survivor`: `5` samples
