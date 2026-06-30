# DU9IQ Traced Direct Bridge Batch Plan

- rank: `896`
- selected cubes: `2`
- skipped existing bridge leaves: `12`
- unique normal traces: `3`
- bridge modules: `2`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
- index `9`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 9 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx09_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke`
- index `10`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 10 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`

## Bridges

- summary `12`: pattern `*010*0`, support `[6, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx12Smoke`
  - exists now: `False`
  - normals: `[5, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 12 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx12 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx12.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx12_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx12Smoke`
- summary `13`: pattern `10111*`, support `[11]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx13Smoke`
  - exists now: `False`
  - normals: `[10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 13 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx13 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx13.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx13_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx13Smoke`
