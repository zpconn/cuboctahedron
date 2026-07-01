# Top-Pairing Closed-Language Graph-Acceptance Audit

This is exact diagnostic evidence, not proof.  It enumerates the
current visible closed-language components and checks whether the
generated deterministic Bellman graph accepts every such label word.

- decision: `closed-components-all-accepted`
- graph base: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean`

## Counts

- `dfs_nodes`: `11318`
- `closed_candidates`: `2`
- `accepted`: `2`
- `rejected`: `0`
- `prefix_graph_rejects`: `197`

## First Accepted

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
  ],
  "final_state": 601,
  "gain": -376
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
  ],
  "final_state": 601,
  "gain": -376
}
```
