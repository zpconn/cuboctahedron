# Phase 6Z.6K.8AP.16DU.9IP Split Compact Cover

Status: `emitted_pending_guarded_build`.

- rank: `834`
- selected subcubes: `16`
- selected word impacts: `[0, 1, 3, 5, 7, 8, 9]`
- component trace steps: `[12]`
- component trace final: `True`
- component selected impacts: `[7, 8, 9]`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IPSplitCoverRank834Smoke`
- targets: `56`
- prerequisite targets: `39`
- split targets: `17`

This topology replaces one large rank cover root with one subcube
obstruction module per selected subcube plus a thin rank root.
The target list also includes trace and selected-impact prerequisites
so guarded builds can prebuild dependencies without reviving the old
monolithic cover root.
