# Top-Pairing Trace State-DAG Profile

This is exact diagnostic evidence, not proof.  It sizes the semantic
state DAG for the future closed-language two-trace classifier.

- decision: `semantic-state-dag-candidate`
- states: `7387`
- edges: `7661`

## State Key

- `step`
- `remaining_pair_counts`
- `square_gap`
- `local_axis_linear_matrix`
- `triangular_cancellation_stack`

## Terminal Histogram

- `cancellation_reject`: `248`
- `closed`: `1`

## Terminal Path Histogram

- `cancellation_reject`: `440`
- `closed`: `2`

## Depth States

- depth `0`: `1`
- depth `1`: `1`
- depth `2`: `1`
- depth `3`: `3`
- depth `4`: `7`
- depth `5`: `19`
- depth `6`: `49`
- depth `7`: `143`
- depth `8`: `402`
- depth `9`: `1038`
- depth `10`: `2090`
- depth `11`: `2049`
- depth `12`: `1061`
- depth `13`: `274`
- depth `14`: `249`

## Terminal Examples

### closed

```json
{
  "labels": [
    "xm",
    "ym",
    "zm",
    "tmpp",
    "tppp",
    "tpmp",
    "tppm",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
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
    "zm",
    "tmpp",
    "tppp",
    "tpmp",
    "tppm",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
    "zp",
    "yp",
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
        "dm11",
        6,
        7
      ],
      [
        "d111",
        4,
        5
      ],
      [
        "d1m1",
        0,
        3
      ],
      [
        "d11m",
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
        "dm11",
        6,
        7
      ],
      [
        "d111",
        4,
        5
      ],
      [
        "d1m1",
        0,
        3
      ],
      [
        "d11m",
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
        "dm11",
        6,
        7
      ],
      [
        "d111",
        4,
        5
      ],
      [
        "d1m1",
        0,
        3
      ],
      [
        "d11m",
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
        "dm11",
        4,
        7
      ],
      [
        "d111",
        5,
        6
      ],
      [
        "d1m1",
        0,
        3
      ],
      [
        "d11m",
        1,
        2
      ]
    ]
  }
}
```
