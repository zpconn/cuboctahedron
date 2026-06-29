# Phase 6Z.6K.8AP.16DU.0 candidate-catalog surface smoke

This report is not proof evidence.  It records a generated Lean surface
for the AP16DT candidate-catalog classifier route.

- Status: `surface-smoke-generated`
- Lean output: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorCandidateCatalogSurfaceSmoke.lean`
- Range: `[0, 5000]`
- Candidate groups in chunk: `64`
- Profiled GoodDirection cases represented by chunk: `6454`
- Total candidate groups in AP16I profile: `195`

The generated theorem still takes `hcomplete` as a premise.  The next
phase must prove that premise; this smoke only validates that the
multi-candidate catalog erases to `AllTranslationGoodCoverageOnRange`
without rank-local singleton facts or bad-direction evidence.
