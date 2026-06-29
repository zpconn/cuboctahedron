# Phase 6Z.6K.8AP.16DJ Split-Trace Guarded Batch Retry

Status: `passed`.

This is bounded smoke infrastructure, not final generated coverage.

Command:

```text
python3 scripts/run_ap16dj_serial_guarded.py --emit --json /tmp/ap16dj_split_serial_guarded/summary_emit_retry.json --out-dir /tmp/ap16dj_split_serial_guarded/targets_emit_retry
```

Result:

```text
targets passed: 126 / 126
failed target: None
trace layout: split
RSS cap: 5000 MiB
peak process-tree RSS: 4453.85 MiB
minimum MemAvailable seen: 45484.84 MiB
sum of per-target elapsed times: 739.99s
```

Target count by kind:

- `batch_root`: 1
- `cover`: 5
- `selected_impact`: 35
- `selected_impacts_root`: 5
- `trace`: 5
- `trace_data`: 5
- `trace_final`: 5
- `trace_step_00`: 5
- `trace_step_01`: 5
- `trace_step_02`: 5
- `trace_step_03`: 5
- `trace_step_04`: 5
- `trace_step_05`: 5
- `trace_step_06`: 5
- `trace_step_07`: 5
- `trace_step_08`: 5
- `trace_step_09`: 5
- `trace_step_10`: 5
- `trace_step_11`: 5
- `trace_step_12`: 5

Slowest targets:

| kind | label | elapsed s | peak RSS MiB |
| --- | --- | ---: | ---: |
| `selected_impact` | `rank6000625_impact9` | 21.53 | 4307.38 |
| `selected_impact` | `rank6000745_impact10` | 21.53 | 4313.03 |
| `selected_impact` | `rank6000625_impact10` | 21.53 | 4301.60 |
| `cover` | `None` | 20.54 | 4453.85 |
| `selected_impact` | `rank6000745_impact9` | 20.53 | 4303.14 |

Decision: accepted as the bounded split-trace AP16DJ batch smoke. The same five-signature compact Walsh batch that failed with monolithic traces now builds serially under the 5 GiB guard. This does not by itself provide final generated coverage; it validates the split trace layout and selected-impact simplification route for the next nonempty positive-survivor membership work.
