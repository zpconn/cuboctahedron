# DU9IQ Traced Direct Bridge Batch Plan

- rank: `896`
- selected cubes: `6`
- skipped existing bridge leaves: `6`
- unique normal traces: `6`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Smoke`
- index `1`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 1 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx01_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx01Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx03Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx03Smoke`
- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx05Smoke`
- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx07Smoke`
- index `10`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 896 --index 10 --stem WeightedDenomCubeDU9IQNormalTraceRank896 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank896ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank896_idx10_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank896Idx10Smoke`

## Bridges

- summary `6`: pattern `*101*0`, support `[4]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx06Smoke`
  - exists now: `False`
  - normals: `[3]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 6 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx06 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx06.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx06_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx06Smoke`
- summary `7`: pattern `1**00*`, support `[1, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx07Smoke`
  - exists now: `False`
  - normals: `[0, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 7 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx07 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx07.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx07Smoke`
- summary `8`: pattern `0**1*1`, support `[2, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx08Smoke`
  - exists now: `False`
  - normals: `[1, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 8 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx08 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx08.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx08_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx08Smoke`
- summary `9`: pattern `1*0*10`, support `[2]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx09Smoke`
  - exists now: `False`
  - normals: `[1]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 9 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx09 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx09.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx09Smoke`
- summary `10`: pattern `1**111`, support `[11]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx10Smoke`
  - exists now: `False`
  - normals: `[10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 10 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx10 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx10.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx10_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx10Smoke`
- summary `11`: pattern `11**00`, support `[4, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx11Smoke`
  - exists now: `False`
  - normals: `[3, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 11 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx11 --standalone-reduced --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx11.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx11_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx11Smoke`
