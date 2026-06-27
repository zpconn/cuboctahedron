# Phase 6Z.6K.8AM Split Pair-Sign Producer-Coverage Smoke

This generated smoke is not global coverage. It checks the same bounded
producer surface as 8AK, but in a source/row/chunk/root import layout.

- Status: `split-pair-sign-producer-coverage-smoke-emitted`
- Jobs: `4`
- Ranges: `[[0, 2500], [5000000, 5002500], [10000000, 10002500], [15000000, 15002500], [20000000, 20002500], [25000000, 25002500], [30000000, 30002500], [35000000, 35002500], [40000000, 40002500], [45000000, 45002500], [50000000, 50002500], [55000000, 55002500], [60000000, 60002500], [65000000, 65002500], [70000000, 70002500], [75000000, 75002500], [80000000, 80002500], [85000000, 85002500], [90000000, 90002500], [95000000, 95002500]]`
- Descriptor families: `315`
- Source groups: `298`
- Row groups: `22`
- Chunk count: `5`
- Chunk size: `64`
- Represented GoodDirection cases: `6734`
- Root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerCoverageScalingSplit50k.All`

## Generated Files

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Source.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Row.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks/Chunk000.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks/Chunk001.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks/Chunk002.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks/Chunk003.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/Chunks/Chunk004.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k/All.lean`

## Notes

- source and row producers are emitted once in shared modules
- descriptor keys are split into bounded chunk modules
- root imports only chunks and contains no raw rank/mask replay
