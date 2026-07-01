# Forced-Axis Sign Profile

- Range: `[60,000,000, 60,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `6.401`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,420` |
| `shadow_nonidentity` | `98,580` |
| `exact_identity` | `1,420` |
| `exact_nonidentity` | `98,580` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `3,963` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `73,573` |
| `bad_pair_balance` | `19,573` |
| `forced_balance_survivors` | `1,471` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `19,573` |
| `final_dot_nonpositive` | `102,543` |
| `forced_balance_survivor` | `1,471` |
| `forced_zero_denominator` | `73,573` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `364`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `d11m d111 d11m dm11` | `6,079` |
| `d11m d111` | `5,682` |
| `d11m d111 d11m d111` | `4,720` |
| `d11m d111 d11m d1m1` | `4,618` |
| `d11m d111 dm11 d11m` | `2,022` |
| `d11m d111 d11m d111 dm11 d111` | `1,797` |
| `d11m d111 d11m d1m1 d11m d111` | `1,717` |
| `d11m d111 d1m1 d111` | `1,668` |
| `d11m d111 dm11 d111` | `1,640` |
| `d11m d111 d11m d1m1 d111 d11m` | `1,575` |
| `d11m d111 d1m1 d11m` | `1,542` |
| `d11m dm11` | `1,519` |
| `d11m d111 d11m d111 d11m dm11` | `1,473` |
| `d11m d111 d11m d111 dm11 d11m` | `1,466` |
| `d11m d111 d11m d111 d11m d111` | `1,445` |
| `d11m d111 d11m d111 d1m1 d11m` | `1,435` |
| `<empty>` | `1,420` |
| `d11m d111 d11m d111 d1m1 d111` | `1,333` |
| `d11m d111 d11m dm11 d11m d111` | `1,300` |
| `d11m d111 d11m d1m1 dm11 d111` | `1,283` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `337`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `1,-1,0` | `12,306` |
| `2,3,-1` | `6,192` |
| `3,2,-1` | `4,684` |
| `4,1,-1` | `2,436` |
| `4,-5,11` | `2,016` |
| `1,0,1` | `1,851` |
| `1,4,-1` | `1,846` |
| `2,13,-3` | `1,797` |
| `10,-1,9` | `1,717` |
| `2,1,3` | `1,668` |
| `1,2,3` | `1,640` |
| `5,-4,-11` | `1,588` |
| `5,-6,11` | `1,473` |
| `1,-2,11` | `1,466` |
| `2,-1,-11` | `1,435` |
| `13,2,-3` | `1,333` |
| `1,-10,-9` | `1,300` |
| `5,1,-12` | `1,283` |
| `0,1,1` | `1,270` |
| `13,-3,-2` | `1,251` |

## Rejection Families

- Exact distinct count stored: `True`
- Stored distinct keys: `8,732`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `forcedZero|reduced=d11m d111 d11m dm11|axis=2,3,-1|zeroAt=1|pair=d111|normal=1,1,5` | `6,079` |
| `forcedZero|reduced=d11m d111|axis=1,-1,0|zeroAt=0|pair=d11m|normal=1,1,-1` | `5,682` |
| `forcedZero|reduced=d11m d111 d11m d111|axis=1,-1,0|zeroAt=0|pair=d11m|normal=1,1,-1` | `4,720` |
| `forcedZero|reduced=d11m d111 d11m d1m1|axis=3,2,-1|zeroAt=1|pair=d111|normal=1,1,5` | `4,618` |
| `forcedZero|reduced=d11m d111 dm11 d11m|axis=4,1,-1|zeroAt=1|pair=d111|normal=1,1,5` | `2,022` |
| `forcedZero|reduced=d11m d111 d11m d111 dm11 d111|axis=2,13,-3|zeroAt=1|pair=d111|normal=1,1,5` | `1,797` |
| `forcedZero|reduced=d11m d111 d11m d1m1 d11m d111|axis=10,-1,9|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,717` |
| `forcedZero|reduced=d11m d111 d1m1 d111|axis=2,1,3|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,668` |
| `forcedZero|reduced=d11m d111 dm11 d111|axis=1,2,3|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,640` |
| `forcedZero|reduced=d11m d111 d11m d1m1 d111 d11m|axis=4,-5,11|zeroAt=2|pair=d11m|normal=11,11,1` | `1,575` |
| `forcedZero|reduced=d11m d111 d1m1 d11m|axis=1,4,-1|zeroAt=1|pair=d111|normal=1,1,5` | `1,542` |
| `forcedZero|reduced=d11m dm11|axis=1,0,1|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,519` |
| `forcedZero|reduced=d11m d111 d11m d111 d11m dm11|axis=5,-6,11|zeroAt=2|pair=d11m|normal=11,11,1` | `1,473` |
| `forcedZero|reduced=d11m d111 d11m d111 dm11 d11m|axis=1,-2,11|zeroAt=2|pair=d11m|normal=11,11,1` | `1,466` |
| `forcedZero|reduced=d11m d111 d11m d111 d11m d111|axis=1,-1,0|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,445` |
| `forcedZero|reduced=d11m d111 d11m d111 d1m1 d11m|axis=2,-1,-11|zeroAt=2|pair=d11m|normal=11,11,1` | `1,435` |
| `forcedZero|reduced=d11m d111 d11m d111 d1m1 d111|axis=13,2,-3|zeroAt=1|pair=d111|normal=1,1,5` | `1,333` |
| `forcedZero|reduced=d11m d111 d11m dm11 d11m d111|axis=1,-10,-9|zeroAt=0|pair=d11m|normal=1,1,-1` | `1,300` |
| `forcedZero|reduced=d11m d111 d11m dm11 d11m dm11|axis=13,-3,-2|zeroAt=1|pair=d111|normal=1,1,5` | `1,251` |
| `forcedZero|reduced=d11m d111 d11m dm11 d111 d11m|axis=5,-4,-11|zeroAt=2|pair=d11m|normal=11,11,1` | `1,248` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `672`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+-+-+-+--` | `15` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+-+-+--+-` | `13` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++-+-+-+-+-` | `13` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+-+--+-+-` | `11` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--+-+-+-+-++-` | `11` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+--+-+-+-` | `11` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--+-++-+-+-+-` | `11` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d111|axis=5,1,-12|signs=-++-+-+++----` | `10` |
| `survivor|reduced=d11m d111 d11m d111 d1m1 dm11|axis=5,9,8|signs=--++----++++-` | `10` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--+-+-++-+-+-` | `9` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--+-+-+-++-+-` | `9` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d111 dm11 d11m|axis=4,-35,17|signs=+--+--++-+--+` | `9` |
| `survivor|reduced=d11m d111 d11m d1m1 d11m dm11 d11m d111|axis=35,1,-18|signs=-++---++-+--+` | `8` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++--++-+-+-` | `8` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++--++--++-` | `8` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++--+-++-+-` | `8` |
| `survivor|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++--+-+-++-` | `8` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+--++-+--` | `7` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++--++--+-+-` | `7` |
| `survivor|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++--++-+-+--` | `7` |

## Sample Buckets

- `final_axis_zero`: `5` samples
- `forced_zero_denominator`: `5` samples
- `bad_pair_balance`: `5` samples
- `forced_balance_survivor`: `5` samples
