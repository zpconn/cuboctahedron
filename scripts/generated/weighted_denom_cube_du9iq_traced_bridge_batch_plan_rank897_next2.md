# DU9IQ Traced Direct Bridge Batch Plan

- rank: `897`
- selected cubes: `2`
- skipped existing bridge leaves: `12`
- unique normal traces: `3`
- bridge modules: `2`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx07Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx07Smoke`
- index `9`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx09Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 9 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx09_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx09Smoke`
- index `10`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 10 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx10_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx10_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx10Smoke`

## Bridges

- summary `26`: pattern `*0*111`, support `[8, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx26Smoke`
  - exists now: `False`
  - normals: `[7, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 26 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx26 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx26.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx26_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx26Smoke`
- summary `27`: pattern `001*10`, support `[11]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx27Smoke`
  - exists now: `False`
  - normals: `[10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 27 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx27 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx27.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx27_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx27Smoke`
