# Phase 6Z.6K.8AP.16AW Signature Source-Position Coverage

This is hand-written bridge infrastructure plus a bounded generated smoke, not
full proof evidence.

- Status: `accepted-signature-source-position-coverage`
- Updated generic classifier file:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorClassifier.lean`
- Updated emitter:
  `scripts/generate_ap16l_signature_membership_smoke.py`
- Regenerated smoke:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorSignatureMembershipGeneratedSmoke.lean`

## Generic Adapters Added

```lean
PositiveSurvivorClassifierOnRange.to_killedBridge_of_fullRange
PositiveSurvivorBoolClassifierOnRange.to_coverage
PositiveSurvivorBoolClassifierOnRange.to_killedBridge_of_fullRange
PositiveSurvivorBoolSignatureClassifierOnRange.to_coverage
PositiveSurvivorBoolSignatureClassifierOnRange.to_killedBridge_of_fullRange
```

## Generated Smoke Shape

The singleton signature smoke now exposes source-position coverage first:

```lean
generatedSingletonSignatureSourcePositionCoverage :
  SourcePositionRowProducerGoodCoverageOnRange 100805 100806

generatedSingletonSignatureAllGoodCoverage :
  AllTranslationGoodCoverageOnRange 100805 100806
```

## Focused Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16aw_signature_coverage_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke'
```

Result:

```text
status: passed
elapsed: 7.51s
peak tree RSS: 4,036 MiB
minimum available memory: 46,144 MiB
```

## Decision

Accepted.  Signature classifiers can now erase to source-position coverage and
then to `Translation.KilledBridge`.  The remaining hard proof obligation is the
full-range positive-survivor signature membership theorem.
