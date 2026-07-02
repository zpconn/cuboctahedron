# Top-Pairing Closed-Language Graph-Acceptance Audit

This is exact diagnostic evidence, not proof.  It enumerates the
current visible closed-language components and checks whether the
generated deterministic Bellman graph accepts every such label word.

- decision: `closed-components-too-weak`
- graph base: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean`

## Counts

- `dfs_nodes`: `11318`
- `closed_candidates`: `47`
- `accepted`: `37`
- `rejected`: `10`
- `prefix_graph_rejects`: `197`

## First Accepted

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
  ],
  "final_state": 558,
  "gain": -376
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
  ],
  "final_state": 558,
  "gain": -376
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
  ],
  "final_state": 558,
  "gain": -376
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
  ],
  "final_state": 559,
  "gain": -596
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
    "zm",
    "zp",
    "tmmp",
    "xp"
  ],
  "final_state": 560,
  "gain": -348
}
```

## First Rejections

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
    "zp",
    "tpmm",
    "yp",
    "tmpm",
    "zp",
    "tmmp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 8,
    "state": 851,
    "face": "tpmm",
    "label": 4,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "tmmm",
      "zp",
      "tpmm"
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
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
    "yp",
    "zp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
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
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
    "zp",
    "yp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
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
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "yp",
    "tmpm",
    "tmmm",
    "zp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
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
    "zm",
    "zp",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "yp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 10,
    "state": 81,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "zm",
      "zp",
      "tppm",
      "tpmm",
      "tppp",
      "tmmm",
      "tpmp",
      "tmmp"
    ]
  }
}
```
