# Phase 6Z.6K.8AP.7 AP Membership Surface Audit

Status: `rejected-as-production-membership-route`.

This diagnostic is not proof evidence.  It checks whether the current
repository contains a compact reusable theorem surface deriving source/row
membership from `GoodDirectionAtRank`, or whether AP membership still
depends on finite rank/mask replay.

- Files scanned: `772`
- Adapter hits: `65`
- Replay hits: `107`

## Finite Replay Files

- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateBoundedAPSmoke/All.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateBoundedAPSmoke/Shard000.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateBoundedAPSmoke/Shard001.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateBoundedAPSmoke/Shard002.lean`
- `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateBoundedAPSmoke/Shard003.lean`
- `scripts/generate_source_index_state_bounded_coverage.py`

## Decision Notes

- AP catalog adapters are present and useful as export erasure
- current nonempty AP membership evidence still appears only in finite replay surfaces
- no compact reusable GoodDirection-to-source/row implication was detected
- next step should be a source/row language theorem, not a larger catalog dispatcher

## Same-Line GoodDirection/Source Hits

- None.

## Same-Line GoodDirection/Row Hits

- None.
