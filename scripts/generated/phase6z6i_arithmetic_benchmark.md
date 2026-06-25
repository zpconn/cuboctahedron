# Phase 6Z.6I Arithmetic Benchmark

This is an untrusted diagnostic report. It emits no production Lean evidence.

## Decision

- Status: `accepted`
- Accepted for production arithmetic: True
- Speedup using min elapsed time: 3.468x
- Scaled/Rat max RSS ratio: 0.962

## Module Results

| Module | Min elapsed (s) | Mean elapsed (s) | Max RSS (KiB) | Passed |
| --- | ---: | ---: | ---: | --- |
| `rat_baseline` | 5.903 | 5.923 | 3,451,304 | True |
| `scaled_candidate` | 1.702 | 1.721 | 3,321,704 | True |
| `agreement_smoke` | 1.543 | 1.569 | 3,308,844 | True |

## Notes

- scaled arithmetic clears the Phase 6Z.6I gate
