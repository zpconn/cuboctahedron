# Phase 6Z.6K.8AP.16AV Source-Position Smoke Emitter

This is a bounded generated smoke, not full proof evidence.

- Status: `accepted-source-position-smoke-emitter`
- Updated emitter: `scripts/generate_ap16i_positive_membership_smoke.py`
- Regenerated module:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorMembershipGeneratedSmoke.lean`

## Generated Theorem Shape

The smoke now exposes the production-preferred source-position coverage theorem
before deriving all-Good coverage:

```lean
theorem generatedGroupSourcePositionCoverage :
    SourcePositionRowProducerGoodCoverageOnRange 0 5000

theorem generatedGroupAllGoodCoverage :
    AllTranslationGoodCoverageOnRange 0 5000
```

Both theorems are still conditional on the bounded `hclass` classifier premise.
The point of this phase is to align the generated theorem surface with the
AP16AU production bridge.

## Regeneration

```text
python3 scripts/generate_ap16i_positive_membership_smoke.py
```

Result:

```text
group: ed8a3dc60ca2ef6e342de9f3ca8e833be4d6ae5d40a18e68e1010a636f0a8bac
observed bounded cases: 1,316
```

## Focused Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16av_generated_source_position_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorMembershipGeneratedSmoke'
```

Result:

```text
status: passed
elapsed: 6.01s
peak tree RSS: 3,997 MiB
minimum available memory: 46,150 MiB
```

## Decision

Accepted as the new tiny generated smoke shape.  This does not solve global
membership, but it proves the generator can target
`SourcePositionRowProducerGoodCoverageOnRange` rather than emitting concrete
positive-mask candidate facts.
