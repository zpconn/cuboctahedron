# Top-Pairing Trace State-DAG Profile

This is exact diagnostic evidence, not proof.  It sizes the semantic
state DAG for the future closed-language two-trace classifier.

- decision: `unexpected-closed-terminal-count`
- states: `5347`
- edges: `6089`

## State Key

- `step`
- `remaining_pair_counts`
- `square_gap`
- `local_axis_linear_matrix`
- `square_parity`
- `triangular_cancellation_stack`

## Terminal Histogram

- `cancellation_reject`: `97`
- `closed`: `1`

## Terminal Path Histogram

- `cancellation_reject`: `395`
- `closed`: `47`

## Depth States

- depth `0`: `1`
- depth `1`: `1`
- depth `2`: `1`
- depth `3`: `3`
- depth `4`: `7`
- depth `5`: `19`
- depth `6`: `50`
- depth `7`: `139`
- depth `8`: `367`
- depth `9`: `877`
- depth `10`: `1613`
- depth `11`: `1426`
- depth `12`: `630`
- depth `13`: `115`
- depth `14`: `98`

## Terminal Examples

### closed

```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "yp",
    "zm",
    "zp",
    "xp"
  ]
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "zm",
    "yp",
    "zp",
    "xp"
  ]
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "zm",
    "zp",
    "yp",
    "xp"
  ]
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "yp",
    "tmpp",
    "tmmp",
    "zm",
    "zp",
    "xp"
  ]
}
```
### cancellation_reject

```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tmmp",
    "tpmp",
    "tmmm",
    "tppp",
    "tpmm",
    "tmpp",
    "yp",
    "zm",
    "zp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d1m1",
        6,
        7
      ],
      [
        "d11m",
        4,
        5
      ],
      [
        "dm11",
        0,
        3
      ],
      [
        "d111",
        1,
        2
      ]
    ]
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tmmp",
    "tpmp",
    "tmmm",
    "tppp",
    "tpmm",
    "tmpp",
    "zm",
    "yp",
    "zp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d1m1",
        6,
        7
      ],
      [
        "d11m",
        4,
        5
      ],
      [
        "dm11",
        0,
        3
      ],
      [
        "d111",
        1,
        2
      ]
    ]
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tmmp",
    "tpmp",
    "tmmm",
    "tppp",
    "tpmm",
    "tmpp",
    "zm",
    "zp",
    "yp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d1m1",
        6,
        7
      ],
      [
        "d11m",
        4,
        5
      ],
      [
        "dm11",
        0,
        3
      ],
      [
        "d111",
        1,
        2
      ]
    ]
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tmmp",
    "tpmp",
    "tpmm",
    "tppp",
    "tmmm",
    "tmpp",
    "yp",
    "zm",
    "zp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d1m1",
        4,
        7
      ],
      [
        "d11m",
        5,
        6
      ],
      [
        "dm11",
        0,
        3
      ],
      [
        "d111",
        1,
        2
      ]
    ]
  }
}
```
