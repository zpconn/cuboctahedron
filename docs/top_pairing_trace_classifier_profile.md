# Top-Pairing Trace Classifier Prefix Profile

This is exact diagnostic evidence, not proof.  It sizes an explicit
prefix certificate for the list-level top-pairing trace classifier.

- decision: `two-terminal-prefix-certificate`
- estimated generated rejection leaves: `141387`

## Stats

- `prefix_nodes`: `11318`
- `schedule_rejects`: `95143`
- `count_rejects`: `33527`
- `square_gap_rejects`: `1804`
- `local_axis_rejects`: `10473`
- `shadow_length_rejects`: `0`
- `terminal_count_rejects`: `0`
- `terminal_cancellation_rejects`: `440`
- `closed_terminals`: `2`

## Depth Nodes

- depth `0`: `1`
- depth `1`: `1`
- depth `2`: `1`
- depth `3`: `3`
- depth `4`: `8`
- depth `5`: `24`
- depth `6`: `68`
- depth `7`: `209`
- depth `8`: `595`
- depth `9`: `1585`
- depth `10`: `3186`
- depth `11`: `3082`
- depth `12`: `1631`
- depth `13`: `482`
- depth `14`: `442`

## First Examples

### count_rejects

```json
{
  "step": 3,
  "prefix": [
    "xm",
    "ym",
    "yp"
  ],
  "face": "yp",
  "pair": "y",
  "remaining_counts": {
    "x": 0,
    "y": 0,
    "z": 2,
    "d111": 2,
    "d11m": 2,
    "d1m1": 2,
    "dm11": 2
  }
}
```
```json
{
  "step": 4,
  "prefix": [
    "xm",
    "ym",
    "yp",
    "zm"
  ],
  "face": "yp",
  "pair": "y",
  "remaining_counts": {
    "x": 0,
    "y": 0,
    "z": 1,
    "d111": 2,
    "d11m": 2,
    "d1m1": 2,
    "dm11": 2
  }
}
```
```json
{
  "step": 5,
  "prefix": [
    "xm",
    "ym",
    "yp",
    "zm",
    "zp"
  ],
  "face": "zp",
  "pair": "z",
  "remaining_counts": {
    "x": 0,
    "y": 0,
    "z": 0,
    "d111": 2,
    "d11m": 2,
    "d1m1": 2,
    "dm11": 2
  }
}
```
### square_gap_rejects

```json
{
  "step": 8,
  "prefix": [
    "xm",
    "ym",
    "zm",
    "zp",
    "tpmm",
    "tppp",
    "tppm",
    "tmpm"
  ],
  "face": "yp",
  "square_gap": 4
}
```
```json
{
  "step": 9,
  "prefix": [
    "xm",
    "ym",
    "zm",
    "zp",
    "tpmm",
    "tppp",
    "tppm",
    "tmpm",
    "tppp"
  ],
  "face": "yp",
  "square_gap": 5
}
```
```json
{
  "step": 11,
  "prefix": [
    "xm",
    "ym",
    "zm",
    "zp",
    "tpmm",
    "tppp",
    "tppm",
    "tmpm",
    "tppp",
    "tpmp",
    "tmmp"
  ],
  "face": "yp",
  "square_gap": 7
}
```
### local_axis_rejects

```json
{
  "step": 3,
  "prefix": [
    "xm",
    "ym",
    "yp"
  ],
  "face": "zp"
}
```
```json
{
  "step": 5,
  "prefix": [
    "xm",
    "ym",
    "yp",
    "zm",
    "zp"
  ],
  "face": "tppp"
}
```
```json
{
  "step": 6,
  "prefix": [
    "xm",
    "ym",
    "yp",
    "zm",
    "zp",
    "tppm"
  ],
  "face": "tppp"
}
```
### terminal_cancellation_rejects

```json
{
  "labels": [
    "xm",
    "ym",
    "yp",
    "zm",
    "zp",
    "tppm",
    "tpmp",
    "tmpm",
    "tpmm",
    "tmmm",
    "tppp",
    "tmpp",
    "tmmp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d11m",
        0,
        7
      ],
      [
        "dm11",
        3,
        6
      ],
      [
        "d111",
        4,
        5
      ],
      [
        "d1m1",
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
    "yp",
    "zm",
    "zp",
    "tppm",
    "tpmm",
    "tmpm",
    "tpmp",
    "tmmm",
    "tppp",
    "tmpp",
    "tmmp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [],
    "cancellations_rev": [
      [
        "d11m",
        0,
        7
      ],
      [
        "dm11",
        1,
        6
      ],
      [
        "d111",
        4,
        5
      ],
      [
        "d1m1",
        2,
        3
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
    "yp",
    "zm",
    "zp",
    "tmmm",
    "tpmp",
    "tppp",
    "tpmm",
    "tppm",
    "tmpm",
    "tmpp",
    "tmmp",
    "xp"
  ],
  "stack": {
    "shadow_len": 8,
    "stack": [
      [
        "d11m",
        7
      ],
      [
        "dm11",
        6
      ],
      [
        "d1m1",
        5
      ],
      [
        "d11m",
        4
      ],
      [
        "dm11",
        3
      ],
      [
        "d111",
        2
      ],
      [
        "d1m1",
        1
      ],
      [
        "d111",
        0
      ]
    ],
    "cancellations_rev": []
  }
}
```
### closed_terminals

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
