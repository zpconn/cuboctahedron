# Top-Pairing Selected Prefix Group

This is generated scaffolding plus exact diagnostic planning data, not
standalone proof.  The corresponding Lean file checks the semantic
prefix/tail bridge for the selected buckets.

- source cover: `scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json`
- emitted buckets: `5`
- accepted traces covered by these buckets: `11`
- Lean file: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingStateDAGSelectedPrefixGroup.lean`

## Buckets

| # | depth | gain | accepted indices | terminal closed below prefix | prefix |
| ---: | ---: | ---: | --- | ---: | --- |
| `0` | `9` | `-376` | `0, 1, 2` | `3` | `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp` |
| `1` | `4` | `-552` | `27, 28` | `3` | `xm ym yp zm` |
| `2` | `4` | `-552` | `32, 33` | `3` | `xm ym zm yp` |
| `3` | `5` | `-304` | `25, 26` | `2` | `xm ym yp tmmm zm` |
| `4` | `10` | `-376` | `29, 30` | `2` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm` |

## Gate

Accept this group only if the generated Lean file builds under a
guarded focused check and forbidden-token scans show no sampled
membership or forbidden proof shortcuts.
