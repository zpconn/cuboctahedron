# DU9IQ Traced Direct Bridge Batch Plan

- rank: `903`
- selected cubes: `6`
- skipped existing bridge leaves: `0`
- unique normal traces: `5`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 903 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank903 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 903 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank903 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx03Smoke`
- index `6`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 903 --index 6 --stem WeightedDenomCubeDU9IQNormalTraceRank903 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx06_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx06_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx06Smoke`
- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 903 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank903 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx07Smoke`
- index `11`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 903 --index 11 --stem WeightedDenomCubeDU9IQNormalTraceRank903 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx11_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank903_idx11_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank903Idx11Smoke`

## Bridges

- summary `40`: pattern `**1110`, support `[8]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke`
  - exists now: `False`
  - normals: `[7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 40 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx40.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx40_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx40Smoke`
- summary `41`: pattern `*00**1`, support `[1, 12]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke`
  - exists now: `False`
  - normals: `[0, 11]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 41 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx41.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx41_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx41Smoke`
- summary `42`: pattern `*10*0*`, support `[7, 8]`, weights `['5', '3']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke`
  - exists now: `False`
  - normals: `[6, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 42 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx42.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx42_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx42Smoke`
- summary `43`: pattern `**1*01`, support `[1]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke`
  - exists now: `False`
  - normals: `[0]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 43 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx43.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx43_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx43Smoke`
- summary `44`: pattern `**0*11`, support `[8, 12]`, weights `['1', '2']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke`
  - exists now: `False`
  - normals: `[7, 11]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 44 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx44.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx44_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx44Smoke`
- summary `45`: pattern `*01*1*`, support `[4, 8]`, weights `['5', '2']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke`
  - exists now: `False`
  - normals: `[3, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 45 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank903ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank903 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx45.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx45_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx45Smoke`
