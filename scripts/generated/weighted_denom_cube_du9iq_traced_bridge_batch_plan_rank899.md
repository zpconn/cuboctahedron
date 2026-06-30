# DU9IQ Traced Direct Bridge Batch Plan

- rank: `899`
- selected cubes: `6`
- skipped existing bridge leaves: `0`
- unique normal traces: `7`
- bridge modules: `6`
- memory policy: serial Lean builds only; do not run this batch through a cold broad lake build

## Normal Traces

- index `0`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 0 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx00_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx00_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Smoke`
- index `1`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 1 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx01_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx01_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx01Smoke`
- index `3`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 3 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx03_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx03_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx03Smoke`
- index `5`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 5 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx05_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx05_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx05Smoke`
- index `7`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx07Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 7 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx07_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx07_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx07Smoke`
- index `9`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 9 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx09_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx09_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx09Smoke`
- index `11`: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke`
  - exists now: `False`
  - emit: `python3 scripts/emit_ap16du9ce_trace_cert_normal_trace_micro_smoke.py --rank 899 --index 11 --stem WeightedDenomCubeDU9IQNormalTraceRank899 --trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --report scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx11_generation.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_normal_trace_rank899_idx11_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQNormalTraceRank899Idx11Smoke`

## Bridges

- summary `28`: pattern `**000*`, support `[1]`, weights `['1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke`
  - exists now: `False`
  - normals: `[0]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 28 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx28.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx28_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx28Smoke`
- summary `29`: pattern `1*0*1*`, support `[2, 12]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke`
  - exists now: `False`
  - normals: `[1, 11]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 29 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx29.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx29_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx29Smoke`
- summary `30`: pattern `0*1*0*`, support `[2, 10]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke`
  - exists now: `False`
  - normals: `[1, 9]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 30 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx30.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx30_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx30Smoke`
- summary `31`: pattern `0*0**1`, support `[1, 8]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke`
  - exists now: `False`
  - normals: `[0, 7]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 31 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx31.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx31_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx31Smoke`
- summary `32`: pattern `*010**`, support `[4, 6]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke`
  - exists now: `False`
  - normals: `[3, 5]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 32 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx32.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx32_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx32Smoke`
- summary `33`: pattern `*101**`, support `[4, 12]`, weights `['1', '1']`
  - module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke`
  - exists now: `False`
  - normals: `[3, 11]`
  - emit: `python3 scripts/emit_du9iq_traced_direct_bridge.py --summary-index 33 --stem WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33 --standalone-reduced --vector-trace-module Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQVectorTraceRank899ChainSmoke --normal-trace-stem WeightedDenomCubeDU9IQNormalTraceRank899 --report scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx33.json`
  - build: `python3 scripts/run_memory_guarded.py --max-tree-rss-mib 12000 --min-available-mib 35000 --poll-seconds 0.5 --json scripts/generated/weighted_denom_cube_du9iq_direct_bridge_generated_idx33_guard.json -- env LAKE_JOBS=1 lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx33Smoke`
