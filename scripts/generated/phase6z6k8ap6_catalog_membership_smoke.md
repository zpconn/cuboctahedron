# Phase 6Z.6K.8AP.6 Catalog-Membership Smoke

Status: `accepted-api-smoke`.

This phase adds a tiny Lean module checking the AP.5 catalog-erasure theorem
surface end to end.  The module keeps a singleton key catalog private, proves a
catalog membership theorem over the empty interval `[0,0)`, and exports only
the erased semantic AP theorems:

- `CatalogMembershipSmoke.smokePredicateBridge`
- `CatalogMembershipSmoke.smokeAllGoodCoverage`

Focused validation:

```bash
/usr/bin/time -v lake build \
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.CatalogMembershipSmoke
```

Result:

- Exit status: `0`
- Wall time: `5.29s`
- Peak RSS: `3,275,708 KiB`

This smoke is intentionally not evidence of nonempty generated coverage.  It
only proves the private-catalog-to-erased-AP-export path compiles without
exposing catalog data in public theorem statements.

Next step: attempt a nonempty catalog membership family that does not replay
ranks or masks.  If nonempty catalog membership requires finite dispatch, this
route should be rejected as production coverage and replaced by a stronger
source/row language theorem.
