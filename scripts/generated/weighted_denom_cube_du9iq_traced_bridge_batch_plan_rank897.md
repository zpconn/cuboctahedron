# DU9IQ Traced Direct Bridge Batch Plan

- rank: `897`
- selected cubes: `6`
- skipped existing bridge leaves: `0`
- unique normal traces: `7`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Smoke`
- index `1`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx01Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 1 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx01_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx01Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx03Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx03Smoke`
- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx05Smoke`
  - exists now: `True`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 897 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank897 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank897_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank897Idx05Smoke`
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

- summary `14`: pattern `***001`, support `[1]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx14Smoke`
  - exists now: `True`
  - normals: `[0]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 14 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx14 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx14.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx14_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx14Smoke`
- summary `15`: pattern `1*0*1*`, support `[2, 11]`, weights `['2', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx15Smoke`
  - exists now: `True`
  - normals: `[1, 10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 15 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx15 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx15.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx15_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx15Smoke`
- summary `16`: pattern `0**1*1`, support `[2, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx16Smoke`
  - exists now: `True`
  - normals: `[1, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 16 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx16 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx16.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx16_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx16Smoke`
- summary `17`: pattern `***000`, support `[6, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx17Smoke`
  - exists now: `True`
  - normals: `[5, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 17 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx17 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx17.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx17_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx17Smoke`
- summary `18`: pattern `*010**`, support `[4, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx18Smoke`
  - exists now: `True`
  - normals: `[3, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 18 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx18 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx18.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx18_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx18Smoke`
- summary `19`: pattern `1*010*`, support `[11]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx19Smoke`
  - exists now: `True`
  - normals: `[10]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 19 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx19 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank897ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank897 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx19.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx19_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx19Smoke`
