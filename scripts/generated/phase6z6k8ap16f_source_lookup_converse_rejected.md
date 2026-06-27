# Phase 6Z.6K.8AP.16F Source Lookup Converse Rejected

Status: `rejected-generic-source-lookup-converse`

This attempted to add a generic theorem:

```lean
SourcePositionSpec.holds_of_lookup
SourcePairPositionSpec.predicate_of_sourcePredicate
```

The intended purpose was good: let existing `SourceIndexStateSourcePredicate`
evidence feed the AP.16D source-position coverage target by deriving
`SourcePairPositionSpec.Predicate`.

The implementation route was bad.  The proof tried to simplify the full
`translationConstraintSources` list for arbitrary interior sources.  Focused
build:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
```

failed after 25.97s with 4,494,220 KiB peak RSS.  Lean reported unsolved
interior impact-zero cases and a `simp` timeout at 200,000 heartbeats while
expanding the full source list.

The theorem was reverted.  Rebuilding the module after the revert:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage
```

passed in 11.18s with 3,621,628 KiB peak RSS.

Do not pursue a brute-force generic full-list lookup converse.  The next
membership emitter should either:

- generate `SourcePairPositionSpec.Predicate` obligations directly from the
  `source_language_full` records selected by AP.16B; or
- add narrow per-source-position lemmas that avoid expanding the entire
  `translationConstraintSources` list at once.

This report is diagnostic only and is not trusted as proof.
