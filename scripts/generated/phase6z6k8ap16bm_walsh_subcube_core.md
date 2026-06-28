# Phase 6Z.6K.8AP.16BM Walsh/Subcube Core

Status: accepted as a generic theorem surface.

Files:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalsh.lean
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSmoke.lean
```

The core exports a reusable Walsh-polynomial/subcube bound interface:

```lean
SignBit
MaskSubcube
MaskSubcube.Member
WalshMonomial
WalshTerm
WalshPoly
WalshSubcubeUpperBound
WalshSubcubeUpperBound.eval_nonpos
WalshImpactObstruction
WalshImpactObstruction.toImpactSubcubeObstruction
```

Focused guarded builds:

```text
lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalsh

passed
elapsed:                2.50s
peak process-tree RSS:  3.940 GiB
minimum available mem:  45.013 GiB
guard kill:             no
```

```text
lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSmoke

passed
elapsed:                2.50s
peak process-tree RSS:  3.895 GiB
minimum available mem:  45.084 GiB
guard kill:             no
```

Decision: this replaces AP16BL's mask-by-mask nonpositivity replay with a
small generic summation theorem.  It is not yet full generated evidence for
rank `100805`, because the scalable bridge from `impactDenomAtRank` to the
Walsh polynomial still needs a generated or symbolic equality theorem.  The
next target is an AP16BN generated subcube smoke that uses
`WalshSubcubeUpperBound` for the polynomial bound and isolates denominator
equality as the remaining production issue.
