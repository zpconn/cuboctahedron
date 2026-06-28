# Phase 6Z.6K.8AP.16BR Bounded Walsh Cover Smoke

Status: bounded generated smoke; focused Lean build optional.

- rank: `100805`
- positive masks: `[4, 6, 11, 22, 30, 31, 59, 63]`
- interface member masks: `[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63]`
- covered bad masks: `[0, 1, 16, 17, 32, 33, 48, 49]`
- selected subcubes: `1`
- denominator masks: `8`
- denominator facts: `8`
- Walsh terms: `6`

This smoke validates `WalshImpactSubcubeCover` on a bounded subcover
but uses bounded mask replay for denominator equality.  It is
diagnostic, not production compression.  The all-subcube replay route
is intentionally not the default because it risks recreating the
known OOM-prone proof shape.
