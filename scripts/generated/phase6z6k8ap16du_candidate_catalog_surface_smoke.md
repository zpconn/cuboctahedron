# Phase 6Z.6K.8AP.16DU.9F candidate-catalog facts adapter

This report is not proof evidence.  It records a generated Lean surface
for the AP16DT candidate-catalog classifier route and the DU.9F
facts-catalog erasure adapter.

- Status: `surface-smoke-generated`
- Lean output: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorCandidateCatalogSurfaceSmoke.lean`
- Range: `[0, 5000]`
- Candidate groups in chunk: `125`
- Selection: `range-audit`
- Profiled GoodDirection cases represented by chunk: `4693`
- Total candidate groups in AP16I profile: `195`

The generated theorems still take `hcomplete` as a premise.  The next
phase must prove that premise; this smoke validates that the
multi-candidate catalog erases both directly to
`AllTranslationGoodCoverageOnRange` and through
`SourceRowFactsGoodCatalogOnRange`, without rank-local singleton facts
or bad-direction evidence.
