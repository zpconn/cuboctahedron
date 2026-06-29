# Phase 6Z.6K.8AP.16DJ Trace Cap Calibration

Status: passed.

This is focused build telemetry for one generated trace fixture, not proof coverage.

- target: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshVectorTraceRank6000745Smoke`
- exit code: `0`
- elapsed seconds: `14.52`
- peak tree RSS: `5587.83 MiB`
- min available memory seen: `44339.49 MiB`
- guard cap: `6500 MiB`

Decision: the rank-6000745 trace fixture is buildable serially below a 6.5 GiB guard, but it exceeds the current 5 GiB AP16DJ production gate. Do not retry the full five-signature batch at a raised cap without an explicit policy change or trace-size reduction.
