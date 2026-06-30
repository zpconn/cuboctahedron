# DU9IQ Traced Direct Bridge Batch Plan

- rank: `899`
- selected cubes: `6`
- skipped existing bridge leaves: `6`
- unique normal traces: `6`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke`
- index `1`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 1 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx01_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke`
- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke`
- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx07Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx07Smoke`
- index `9`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 9 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx09_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke`

## Bridges

- summary `34`: pattern `1**00*`, support `[1, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke`
  - exists now: `False`
  - normals: `[0, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 34 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx34.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx34_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx34Smoke`
- summary `35`: pattern `0**1*1`, support `[2, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke`
  - exists now: `False`
  - normals: `[1, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 35 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx35.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx35_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx35Smoke`
- summary `36`: pattern `**0*01`, support `[1]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke`
  - exists now: `False`
  - normals: `[0]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 36 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx36.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx36_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx36Smoke`
- summary `37`: pattern `1**0*0`, support `[2, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke`
  - exists now: `False`
  - normals: `[1, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 37 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx37.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx37_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx37Smoke`
- summary `38`: pattern `*1**00`, support `[4, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke`
  - exists now: `False`
  - normals: `[3, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 38 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx38.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx38_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx38Smoke`
- summary `39`: pattern `*0**11`, support `[4, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke`
  - exists now: `False`
  - normals: `[3, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 39 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx39.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx39_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx39Smoke`
