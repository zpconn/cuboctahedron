# Top-Pairing State-DAG Prefix Shard Plan

This is exact diagnostic evidence, not Lean proof.  It chooses one
bounded shared-gain prefix bucket and records the semantic state-DAG
target for the next Lean shard.

- source cover: `scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json`
- selected bucket index: `0`
- prefix depth: `9`
- accepted indices: `0, 1, 2`
- Bellman gain: `-376`
- prefix: `xm ym tmpm tppm tpmm tppp tmmm tpmp tmmp`

## State After Prefix

- step: `9`
- square gap: `7`
- remaining pair counts: `{'x': 0, 'y': 1, 'z': 2, 'd111': 0, 'd11m': 0, 'd1m1': 0, 'dm11': 1}`
- square parity: `{'x': True, 'y': True, 'z': False}`
- triangular stack: `{'shadow_len': 7, 'stack': [['d111', 6], ['dm11', 5], ['d1m1', 2], ['d111', 1], ['dm11', 0]], 'cancellations_rev': [['d11m', 3, 4]]}`

## Terminal Paths Below Prefix

- `closed`: `3`

## Lean Target

The next bounded Lean shard should prove a constructor theorem whose
conclusion is:

```lean
StateDAGPrefixClosedMarginFamily
  selectedPrefix selectedGap selectedLinear selectedGain
  scaledMargin rank
```

and then reuse
`evalLanguage_of_stateDAGPrefixFamily`.  It must not introduce
`SampledRankIndex`, sampled paths, exact rank tables, or affine RHS
membership tables.

