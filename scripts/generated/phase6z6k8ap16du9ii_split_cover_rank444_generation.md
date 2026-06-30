# Phase 6Z.6K.8AP.16DU.9II Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `444`
- selected subcubes: `17`
- selected word impacts: `[0, 1, 3, 5, 6, 7, 9]`
- component trace steps: `[12]`
- component trace final: `True`
- component selected impacts: `[6, 7, 9]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IISplitCoverRank444Smoke`
- targets: `57`
- prerequisite targets: `39`
- split targets: `18`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
