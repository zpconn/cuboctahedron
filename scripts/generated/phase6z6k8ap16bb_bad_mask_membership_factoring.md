# Phase 6Z.6K.8AP.16BB Bad-Mask Membership Factoring Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Signatures scanned: `757`
- Ranks scanned: `796`
- Bad denominator witnesses represented: `43832`
- Unique mask->impact patterns: `784`
- Unique mask->impact/sign patterns: `784`
- Unique mask->impact/exact-denominator patterns: `784`
- Multi-rank signatures: `32`
- Multi-rank signatures sharing one impact pattern: `1`
- Multi-rank signatures sharing one impact/sign pattern: `1`
- Multi-rank signatures sharing one exact pattern: `1`

## Decision

Status: `reject-positive-survivor-signature-bad-mask-factoring`.

The bad-mask exclusion pattern is almost rank-local in this sampled
catalog.  Positive-survivor signatures do not provide enough structure
to share the 56 bad-mask denominator witnesses emitted by AP16BA.
The next factoring attempt should move below positive-survivor
signatures: denominator forms, mask-tree/Farkas cubes, or a direct
GoodDirection survivor bitset theorem.

## Sample Signature Summaries

- `9c8a88567da24f69...`: ranks `3`, good masks `[4, 6, 11, 22, 30, 31, 59, 63]`, impact patterns `3`, impact/sign patterns `3`, exact patterns `3`
- `1a2d3b5d48d95e07...`: ranks `2`, good masks `[9, 13, 18, 22, 24, 29, 30, 31, 39, 45, 54]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `21528d33c6c44be0...`: ranks `2`, good masks `[8, 9, 16, 18, 22, 24, 28, 30, 54, 61, 63]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `2db6d2c109d2e808...`: ranks `2`, good masks `[4, 8, 13, 16, 22, 39, 45, 47, 54, 55, 63]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `51473639dfa5f763...`: ranks `2`, good masks `[0, 7, 8, 9, 13, 16, 18, 22, 24, 47, 55]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `539bc0688455e8ae...`: ranks `2`, good masks `[15, 16, 22, 24, 29, 30, 31, 45, 47, 57, 63]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `5a720dae462d63e2...`: ranks `2`, good masks `[4, 11, 14, 15, 20, 22, 31, 43, 47, 59, 63]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
- `95d7f35dce594b20...`: ranks `2`, good masks `[4, 8, 9, 13, 22, 25, 28, 29, 31, 54, 63]`, impact patterns `2`, impact/sign patterns `2`, exact patterns `2`
