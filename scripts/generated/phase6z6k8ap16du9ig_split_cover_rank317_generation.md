# Phase 6Z.6K.8AP.16DU.9IG Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `317`
- selected subcubes: `14`
- selected word impacts: `[0, 1, 3, 5, 6, 7, 10]`
- component trace steps: `[12]`
- component trace final: `True`
- component selected impacts: `[]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IGSplitCoverRank317Smoke`
- targets: `45`
- prerequisite targets: `30`
- split targets: `15`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
