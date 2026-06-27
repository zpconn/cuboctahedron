# Phase 6Z.6K.8AL Split Pair-Sign Producer-Coverage Smoke

This generated smoke is not global coverage. It checks the same bounded
producer surface as 8AK, but in a source/row/chunk/root import layout.

- Status: `split-pair-sign-producer-coverage-smoke-emitted`
- Jobs: `4`
- Ranges: `[[0, 2500], [10000000, 10002500], [20000000, 20002500], [30000000, 30002500], [40000000, 40002500], [50000000, 50002500], [60000000, 60002500], [70000000, 70002500], [80000000, 80002500], [90000000, 90002500]]`
- Descriptor families: `232`
- Source groups: `225`
- Row groups: `22`
- Chunk count: `4`
- Chunk size: `64`
- Represented GoodDirection cases: `6048`
- Root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit.All`

## Generated Files

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Source.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Row.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Chunks/Chunk000.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Chunks/Chunk001.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Chunks/Chunk002.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/Chunks/Chunk003.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit/All.lean`

## Notes

- source and row producers are emitted once in shared modules
- descriptor keys are split into bounded chunk modules
- root imports only chunks and contains no raw rank/mask replay
