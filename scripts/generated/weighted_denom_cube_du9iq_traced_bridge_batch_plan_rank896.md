# DU9IQ Traced Direct Bridge Batch Plan

- rank: `896`
- selected cubes: `6`
- unique normal traces: `7`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Smoke`
- index `1`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 1 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx01_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx03Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx03Smoke`
- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke`
- index `9`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 9 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx09_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx09Smoke`
- index `10`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 10 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`

## Bridges

- summary `0`: pattern `**00*1`, support `[1]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke`
  - exists now: `False`
  - normals: `[0]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 0 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx00.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx00Smoke`
- summary `1`: pattern `1**0*0`, support `[2, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke`
  - exists now: `False`
  - normals: `[1, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 1 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx01.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx01Smoke`
- summary `2`: pattern `0*1*0*`, support `[2, 11]`, weights `['2', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke`
  - exists now: `True`
  - normals: `[1, 10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 2 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx02.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx02_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx02Smoke`
- summary `3`: pattern `**01*1`, support `[8, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke`
  - exists now: `False`
  - normals: `[7, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 3 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx03.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx03Smoke`
- summary `4`: pattern `*0**11`, support `[4, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke`
  - exists now: `False`
  - normals: `[3, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 4 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx04.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx04_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx04Smoke`
- summary `5`: pattern `0*0*00`, support `[11]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke`
  - exists now: `False`
  - normals: `[10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 5 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx05.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx05Smoke`
