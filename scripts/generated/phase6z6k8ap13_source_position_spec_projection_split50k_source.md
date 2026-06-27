# Phase 6Z.6K.8AP.13 Source-Position Spec Projection Audit

This diagnostic is not proof. It parses an already emitted Lean source
producer module and checks whether every source producer has a valid
`SourcePairPositionSpec` projection.

- Status: `accepted-lean-source-position-spec-projection`
- Lean source module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Source.lean`
- Source producers: `298`
- Represented bounded cases: `6734`
- Source spec pair signatures: `298`
- Individual source spec signatures: `149`
- Invalid source producers: `0`

Decision notes:

- diagnostic only: parsed Lean source producers are not coverage proof
- all emitted source producers have valid SourcePairPositionSpec projections
- next step can emit an AP language pilot from source-position specs

Top source producers:

- `source_000`: 1024 cases, spec `interior:1:tmmm:slot5|xpStart:0`
- `source_001`: 497 cases, spec `interior:3:tmpp:slot8|xpStart:0`
- `source_002`: 399 cases, spec `interior:1:tmmp:slot6|xpStart:1`
- `source_003`: 278 cases, spec `interior:6:xp:slot0|xpStart:0`
- `source_004`: 226 cases, spec `xpStart:0|ordering:3`
- `source_005`: 222 cases, spec `interior:1:tmpm:slot7|xpStart:2`
- `source_006`: 185 cases, spec `interior:3:tmpm:slot7|xpStart:1`
- `source_007`: 156 cases, spec `interior:6:xp:slot0|xpStart:1`
- `source_008`: 117 cases, spec `xpStart:0|ordering:11`
- `source_009`: 115 cases, spec `xpStart:0|ordering:7`
