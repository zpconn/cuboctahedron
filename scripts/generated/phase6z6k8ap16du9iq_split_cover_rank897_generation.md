# Phase 6Z.6K.8AP.16DU.9IQ Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `897`
- selected subcubes: `19`
- selected word impacts: `[0, 1, 3, 5, 7, 9, 10]`
- component trace steps: `[11, 12]`
- component trace final: `True`
- component selected impacts: `[7, 9, 10]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IQSplitCoverRank897Smoke`
- targets: `62`
- prerequisite targets: `42`
- split targets: `20`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
