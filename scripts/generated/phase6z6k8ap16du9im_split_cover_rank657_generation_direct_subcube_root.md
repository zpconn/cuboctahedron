# Phase 6Z.6K.8AP.16DU.9IM Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `657`
- selected subcubes: `22`
- selected word impacts: `[0, 1, 3, 5, 6, 8, 11]`
- component trace steps: `[12]`
- component trace final: `True`
- component selected impacts: `[6, 8, 11]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IMSplitCoverRank657Smoke`
- targets: `62`
- prerequisite targets: `39`
- split targets: `23`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
