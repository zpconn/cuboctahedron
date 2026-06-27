# Phase 6Z.6K.8AP.16E Direct Coverage Combinators

Status: `accepted-direct-coverage-combinators`

This is bridge infrastructure only.  It does not prove nonempty generated
membership coverage.

AP.16D made `SourcePositionRowProducerGoodCoverageOnRange lo hi` the smallest
preferred target for generated source-position plus row-producer membership.
AP.16E adds the generic combinators an actual emitter needs:

```lean
SourcePositionRowProducerGoodCoverageOnRange.empty
SourcePositionRowProducerGoodCoverageOnRange.concat
SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate
```

The single-candidate constructor packages:

- one `SourcePairPositionSpec`;
- one `SourceIndexStateRowProducer`;
- one `SourceIndexStateKey`;
- the key/source-position equalities;
- a proof of `spec.Predicate rank mask`; and
- a proof that the row producer applies to the key/rank/mask.

This removes repeated existential packaging from generated chunks and lets a
future emitter build balanced direct-coverage interval roots without exposing
private source/row producers in public theorem statements.

Focused validation:

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionProducerLanguageSmoke
```

passed in 9.22s with 3,241,388 KiB peak RSS.

```text
/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguageSmoke
```

passed in 10.35s with 3,327,952 KiB peak RSS.

The smoke validates the empty-range, concat, single-candidate, all-Good erasure,
and descriptor erasure paths.  The AP.16 production gap remains: generate or
prove a nonempty `SourcePositionRowProducerGoodCoverageOnRange lo hi` theorem
over meaningful rank ranges from arbitrary identity-linear `GoodDirectionAtRank`
cases, without `interval_cases r` plus `fin_cases mask` replay.
