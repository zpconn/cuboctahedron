# Scripts

External helper scripts live here. They are not trusted proof.

## Step 12 exact sample

Generate the deterministic exact small sample:

```bash
python3 scripts/generate_exact_certificates.py --small-sample
```

This writes:

- `scripts/generated/small_sample.json`
- `Cuboctahedron/Generated/SmallSample.lean`
- `Cuboctahedron/Generated/NonIdentity/Chunk0000.lean`
- `Cuboctahedron/Generated/Translation/Chunk0000.lean`
- `Cuboctahedron/Generated/CoverageManifest.lean`
- `Cuboctahedron/Generated/AllGenerated.lean`

Then independently re-check the JSON:

```bash
python3 scripts/check_certificates_independently.py --small-sample
```

Both scripts use exact rational arithmetic via Python `fractions.Fraction`.
The generated Lean file is a small smoke sample only; it is not an exhaustive
certificate chunk.

## Step 14 coverage manifest

Generate only the exhaustive rank-coverage manifest:

```bash
python3 scripts/generate_exact_certificates.py --mode coverage-manifest
```

This writes:

- `scripts/generated/coverage_manifest.json`
- `Cuboctahedron/Generated/CoverageManifest.lean`

Then independently re-check the manifest:

```bash
python3 scripts/check_certificates_independently.py --mode coverage-manifest
```

The manifest is trusted only after Lean checks
`Cuboctahedron.Generated.CoverageManifest.generatedCoverageManifest_check`.
It proves the generated coverage chunks are contiguous, nonempty, start at rank
`0`, end at `numPairWords`, and expose all `64` translation sign masks.

## Public generated coverage validation

Run the Phase 8 memory-safe validation workflow:

```bash
python3 scripts/validate_public_coverage_build.py
```

This regenerates and independently checks the public coverage scaffold, runs
focused Lean builds in safe order, records peak RSS when available, and runs the
public-only generated coverage smoke test. Logs are written under:

```text
/tmp/cuboctahedron_public_coverage_validation/
```

The script does not run full `lake build` by default. After focused checks pass,
the broad build can be requested explicitly:

```bash
python3 scripts/validate_public_coverage_build.py --allow-full-lake-build
```

## Trust model

- Lean must check every certificate used by the final theorem.
- The Python generator and checker are convenience tools only.
- The C++ files under `old_float_verifiers/` are reference material only.
  They use floating point and epsilon thresholds, so they are never proof data.
