# Phase 6Z.6K.8AP.16DU.9IH Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `363`
- selected subcubes: `21`
- selected word impacts: `[0, 1, 3, 5, 6, 9, 10]`
- component trace steps: `[12]`
- component trace final: `True`
- component selected impacts: `[11]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IHSplitCoverRank363Smoke`
- targets: `52`
- prerequisite targets: `30`
- split targets: `22`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
