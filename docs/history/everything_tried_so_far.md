# Everything Tried So Far

Last updated: 2026-06-20

This document is a human-readable handoff for someone who has not seen this
repository or the cuboctahedron billiards problem before. It explains the proof
strategy, the trusted/untrusted boundary, what the repo currently contains, and
the practical approaches we tried to make the exhaustive proof build in Lean.

This file is explanatory only. It is not itself part of the formal proof.

## 1. The Mathematical Problem

The object is the cuboctahedron: the Archimedean solid with 14 faces, namely
6 square faces and 8 triangular faces. In this project it is modeled by the
coordinate polyhedron

```text
P = { (x, y, z) :
      |x| <= 1, |y| <= 1, |z| <= 1,
      and +/-x +/-y +/-z <= 2 for all sign choices }
```

The square faces are:

```text
X+ :  x =  1
X- : -x =  1
Y+ :  y =  1
Y- : -y =  1
Z+ :  z =  1
Z- : -z =  1
```

The triangular faces are:

```text
T--- : -x - y - z = 2
T--+ : -x - y + z = 2
T-+- : -x + y - z = 2
T-++ : -x + y + z = 2
T+-- :  x - y - z = 2
T+-+ :  x - y + z = 2
T++- :  x + y - z = 2
T+++ :  x + y + z = 2
```

A billiard orbit inside a polyhedron is a broken line. It travels in a straight
line until it hits a face, then reflects with the usual mirror law: the angle
of incidence equals the angle of reflection. In vector form, reflecting a
velocity `v` in the face with normal `n` gives

```text
v' = v - 2 * (n dot v) / (n dot n) * n.
```

The word `nonsingular` means every impact point is in the relative interior of
one face. So hits on edges or vertices are not allowed.

The word `omnihedral` means the orbit touches every face. Since the cuboctahedron
has 14 faces, an omnihedral period-14 orbit would hit each of the 14 faces
exactly once before repeating.

The theorem we want is:

```text
There is no nonsingular periodic billiard orbit in the cuboctahedron that
touches each of the 14 faces exactly once.
```

In Lean, the final target is intended to be a theorem named
`cuboctahedron_no_omnihedral`.

## 2. Why This Is Not Just a Search Program

There are reference C++ programs in `scripts/old_float_verifiers/`. They perform
floating-point exhaustive searches and provide strong evidence that the orbit
does not exist. They are useful for understanding the case split and expected
counts.

They are not trusted as proof.

The final proof must be checked by Lean. The intended trust boundary is:

- Python and C++ may generate candidate certificates or summaries.
- Python and C++ may be wrong without invalidating the theorem.
- Lean must check every generated certificate.
- Lean proof code must use exact arithmetic, mainly rational numbers.
- The final theorem must not depend on `sorry`, `admit`, custom `axiom`,
  `unsafe`, floating point, epsilon thresholds, or `native_decide`.

The reason for avoiding `native_decide` is not that it is mathematically wrong.
It is that it adds compiler trust through Lean's native-code evaluator. The
project goal is a kernel-checked proof path, so generated computations need to
reduce or be proved in ordinary Lean.

## 3. The Main Proof Strategy

The strategy is a formal version of an exhaustive unfolding argument.

### 3.1 Exact Geometry

Every face is represented by an exact rational normal vector `n` and offset
`c`, meaning the face plane is

```text
n dot x = c.
```

The affine reflection in that face is

```text
r_F(x) = x - 2 * (n dot x - c) / (n dot n) * n.
```

Because all cuboctahedron normals and offsets are integral, all reflection
matrices and translations have rational coefficients. This is the central
reason the finite computation can be exact.

The repo has small fixed-size exact algebra types under:

```text
Cuboctahedron/Basic/
  Vec3.lean
  Mat3.lean
  Aff3.lean
  RationalLemmas.lean
```

The face and reflection layers are under:

```text
Cuboctahedron/Geometry/
```

### 3.2 Unfolding

Instead of reflecting the velocity at each impact, one can reflect the whole
polyhedron across the face and keep the path as one straight line. This is the
standard unfolding trick for billiards.

For a proposed itinerary

```text
F0, F1, ..., F13
```

the corresponding unfolded affine map is a composition of face reflections.
The precise convention in the plan is that `F0` is applied first, then the
remaining reflections are composed in order.

If a periodic billiard orbit exists with that itinerary, then in the unfolded
picture a straight line must be compatible with the total affine map

```text
A(x) = Mx + b.
```

This creates two cases:

1. `M` is not the identity.
2. `M` is the identity.

### 3.3 Starting at `X+`

If an orbit touches every face exactly once, its period can be cyclically
reindexed. Therefore we may assume the first face is `X+`. That reduces the
remaining search to the other 13 faces.

The formal proof still has to justify this reindexing. This is one of the
bridges between the real billiard statement and the finite search statement.

### 3.4 Pair Words

Opposite faces have the same linear reflection. For example, `X+` and `X-`
have different affine offsets but the same linear part. So the finite search
first works with seven opposite face-pairs:

```text
x, y, z, d111, d11m, d1m1, dm11
```

After fixing the first face as `X+`, the remaining 13 positions must contain:

```text
x     once
y     twice
z     twice
d111  twice
d11m  twice
d1m1  twice
dm11  twice
```

The number of such pair-words is

```text
13! / 2^6 = 97,297,200.
```

The finite proof needs a rank/unrank scheme for those words, so that Lean can
state coverage over all ranks `0 <= r < 97,297,200` rather than trusting an
external list.

### 3.5 Non-Identity Linear Case

If the total linear part `M` is not the identity, then a periodic unfolded line
must lie on the invariant axis of the affine isometry. In practice, this forces
the direction and then forces the signs of the actual faces within each
opposite pair.

The non-identity case can fail in several ways:

- the forced direction/sign test fails;
- the forced signs do not use one face from each opposite pair;
- the affine axis misses the interior of the starting `X+` face;
- the unique candidate path hits the wrong face first;
- the candidate hit lies on an edge/vertex or outside the intended face
  interior.

In Lean this is represented by `NonIdCert` data plus the checker
`checkNonIdCert`. The important theorem is that if `checkNonIdCert cert = true`,
then the represented case has no feasible unfolded orbit.

### 3.6 Translation Case

If `M` is the identity, the total affine map is a translation

```text
A(x) = x + b.
```

The unfolded line direction is determined by `b`. The starting point lies on
`X+`, so it has the form

```text
(1, y, z).
```

All the required crossing and interior conditions become strict linear
inequalities in the two variables `y` and `z`.

The desired conclusion is that this strict linear system has no solution. The
project uses exact Farkas-style certificates: a nonnegative rational combination
of inequalities that would imply an impossible inequality such as `0 < c` with
`c <= 0`.

The reusable Lean theorem here is the soundness of the Farkas checker. Once
Lean verifies a Farkas certificate, there is no real `(y, z)` satisfying all
the corresponding strict constraints.

## 4. Raw Exhaustive Counts

The reference exhaustive search and later exact profilers use these headline
counts:

```text
pair-words checked:                       97,297,200
non-identity linear words:                94,829,112
identity linear words:                     2,468,088
translation sign assignments:            157,957,632

non-identity residual cases:               2,038,656
  axisMissesStartInterior:                 1,974,752
  badFirstHit:                                63,728
  badHitInterior:                                176
  candidatePassed:                                 0

translation normalized Farkas shapes:         20,298
unresolved Farkas cases:                           0
```

The counts are useful sanity checks. They cannot be used as axioms. The Lean
proof must derive coverage from rank/unrank, generated partitions, and checked
certificates.

## 5. What Is Already in the Repo

The repo has several layers of formal infrastructure:

- Exact vector, matrix, affine, and rational support.
- Exact face definitions and reflection formulas.
- Billiard/unfolding definitions and bridge lemmas.
- Pair-word ranking/unranking and valid pair-word machinery.
- Non-identity certificate types and Boolean checkers.
- Translation certificate types, linear constraints, and Farkas checkers.
- Generated coverage manifests and family/partition samples.
- Old floating-point C++ reference files under `scripts/old_float_verifiers/`.
- Generator and independent checker scripts under `scripts/`.
- Generated Lean evidence under `Cuboctahedron/Generated/`.
- Generated metadata under `scripts/generated/`.
- Certificate/staging data under `certs/`.

Important Lean files include:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Search/CertificateFormat.lean
Cuboctahedron/Search/CertificateDecode.lean
Cuboctahedron/Search/CertificateChecker.lean
Cuboctahedron/Generated/AllGenerated.lean
Cuboctahedron/Generated/NonIdentity/Residual/Partition/All.lean
```

The current proof-carrying interfaces include:

```text
CheckedNonIdRank
CheckedTranslationCase
ProofCarryingNonIdFamily
ProofCarryingNonIdResidualFamily
ProofCarryingTranslationFarkasFamily
```

These are designed to avoid trusting an external generator. A generated module
can expose checked rank/case witnesses through these structures, and the trusted
soundness theorems reduce them back to ordinary `NonIdCert` and
`TranslationCert` checker facts.

## 6. The Execution Plan Evolution

The initial execution plan had straightforward milestones:

1. Build exact arithmetic and geometry.
2. Define billiards and unfolding.
3. Reduce to pair-word enumeration.
4. Add non-identity and translation certificate checkers.
5. Generate exhaustive certificate data.
6. Assemble finite impossibility theorems.
7. Prove the final billiard theorem and print its axioms.

The early parts were realistic. The hard part became the generated exhaustive
evidence. The project then added many intermediate Step 14E substeps to avoid
producing an unbuildably large Lean source tree.

The major intermediate ideas were:

- symmetry reduction;
- reversal/canonicalization;
- prefix families;
- parametric families;
- compact residual certificates;
- packed binary certificate blobs;
- predecoded byte-list chunks;
- proof-carrying structured literals;
- proof-carrying shared families;
- residual subtype census;
- residual proof partition emission.

The current execution plan records those as Step 14E.1 through Step 14E.7B12.

## 7. Compression and Build Attempts

This section is the practical history: what we tried, why, and what happened.

### 7.1 Naive Per-Case Generated Lean

The simplest possible approach is to emit one Lean certificate per rank/case.
This is trustworthy in principle: each certificate can be checked by Lean.

It is not practical. There are tens or hundreds of millions of cases depending
on the layer, and even compact per-case evidence would create enormous source
files. It would be slow to generate, slow or impossible to build, and difficult
to push to GitHub.

### 7.2 Prefix and Parametric Families

We then grouped cases that fail for the same structural reason. Many
non-identity cases fail early because the forced direction has the wrong sign
or the pair balance is impossible. Many translation cases fail through shared
translation-vector or direction-sign conditions.

The goal was to prove a whole family impossible with one Lean witness, then use
rank/prefix membership to cover many words.

This helped substantially, but it did not cover every hard residual case.

### 7.3 Symmetry and Reversal

The cuboctahedron has many symmetries. If two cases are equivalent by a
symmetry that preserves the started-at-`X+` setup, then they should not need
separate mathematical proofs. Reversal also identifies itineraries that are the
same orbit read backward, when the formal conditions line up.

The strategy was updated to canonicalize cases using:

- cuboctahedron face symmetries;
- started symmetries preserving the chosen first face;
- reversal where it is sound;
- normalized constraint and Farkas shapes.

This was essential for reducing translation Farkas data. It also helped define
cleaner coverage manifests. It did not by itself eliminate the non-identity
residual tail.

### 7.4 Compact Certificate Pilot

The next idea was to store compact semantic certificate data instead of verbose
generated proof scripts.

This produced a `compact-cert-pilot` and related metadata. It confirmed that
the data could be represented more compactly, but it did not solve the core
Lean build issue: Lean still had to reduce/check a large Boolean expression for
each chunk.

### 7.5 Packed Residual Certificate Backend

To reduce source size further, we tried a packed binary representation. The
external generator wrote compact blobs, and Lean had pure decoders/checkers:

```text
checkPackedResidualCerts
checkPackedTranslationFarkasCerts
```

This was attractive because it kept source size low and the external encoding
was still untrusted: Lean would decode and check it.

The problem was kernel reduction cost. Base64/string decoding plus certificate
checking was too expensive for Lean to reduce on large chunks, and even tiny
chunks started exposing trouble.

### 7.6 Predecoded Byte-List Backend

To remove Base64/string decoding as a possible bottleneck, we tried generated
Lean files containing already decoded byte lists:

```text
checkPackedResidualBytes
checkPackedTranslationFarkasBytes
```

This proved that Base64 was not the real issue.

Observed failures included:

- a one-certificate translation byte-list chunk failed to reduce the checker
  with trusted `decide`;
- a nonidentity byte-list chunk hit a stack overflow;
- reducing the largest original packed translation chunk caused an out-of-memory
  failure around several GiB of resident memory.

The important lesson is that smaller chunks are not enough. If a one-certificate
chunk does not reduce, the backend is wrong for trusted final proof checking.

### 7.7 Structured Literal Smoke

We then tested structured Lean literals instead of packed bytes. This avoids
the parser entirely: Lean receives the certificate records directly.

This also failed for bare Boolean reduction. The issue was no longer storage or
parsing. The issue was asking Lean to compute a large checker expression as a
single opaque Boolean fact.

### 7.8 Proof-Carrying Structured Literals

The next successful smoke direction was proof-carrying evidence. Instead of
asking Lean to reduce

```text
checkHugeThing data = true
```

the generated file supplies smaller local theorem facts that establish the
specific subchecks. These are assembled through trusted soundness theorems.

This produced working smoke modules:

```text
Cuboctahedron.Generated.NonIdentity.Residual.ProofCarryingSmoke
Cuboctahedron.Generated.Translation.Farkas.ProofCarryingSmoke
```

The proof-carrying smoke builds passed. This is the strongest evidence so far
for the right direction.

The naive full projection was still too large, about 162 GiB of Lean source,
so proof-carrying evidence needed family sharing.

### 7.9 Shared Proof-Carrying Families

The next step grouped proof-carrying evidence into families. The manifest
`scripts/generated/proof_carrying_family_backend.json` currently reports:

```text
selected_backend: proof_carrying_family_backend
status: ready
full_backend_complete: true
projected_total_source_gib: about 0.437 GiB
size_safe: true
```

This is the best current direction. It says the proof-carrying family backend
is projected to be size-safe.

However, projection and readiness metadata are not the same thing as the final
public exhaustive Lean witness. The Step 14E.7 public API still needs to be
assembled from the completed family evidence.

### 7.10 Exhaustive Residual Subtype Census

The non-identity residual cases were the major stubborn tail. We added a full
sharded exact residual census to classify every pair-word:

```text
pair-words checked:       97,297,200
residual cases:            2,038,656
shards:                           98
wall time:                about 792 s
```

The exact residual subtype counts were:

```text
axisMissesStartInterior:  1,974,752
badFirstHit:                63,728
badHitInterior:                176
candidatePassed:                 0
```

This removed the "we have not fully classified the residual tail" blocker.

### 7.11 Residual Proof Partition Emission

After the census, Step 14E.7B12 emitted a Lean proof partition:

```text
Cuboctahedron/Generated/NonIdentity/Residual/Partition/All.lean
```

That partition exposes:

```text
residualPartitionCoversRank
residualPartitionCoversRank_sound
residualPartitionCheckedRank
residualPartitionCheckedRank_rank
```

The corresponding metadata now reports:

```text
full_residual_compression_complete: true
```

Focused Lean smoke builds passed for the residual partition. This was a real
step forward: the non-identity residual tail is no longer only a count.

### 7.12 Full `lake build` Attempts

Broad full-build attempts against the packed/generated fallback path were not
successful. The machine crashed during one `lake build`, likely due to memory
pressure. Earlier smoke attempts also showed high memory consumption and
out-of-memory behavior.

The lesson is that we should not use full `lake build` as the first test for a
new generated backend. We should use focused largest-chunk smoke tests first,
then build the generated subtrees, and only then run the full build.

## 8. Current Repo State

At the time this document was written, the working tree was clean before this
file was added, and `main` matched `origin/main`.

Approximate local sizes were:

```text
Cuboctahedron/Generated   445 MiB
certs                     592 MiB
scripts/generated          99 MiB
.lake                     8.9 GiB
```

The `.lake` directory is large because Lean/mathlib compiled artifacts are
stored per project. That is normal for Lean projects, especially mathlib-based
ones. It should not be committed.

Some ignored/untracked generated shard directories from failed attempts were
deleted earlier. Those deletions were not committable because the files were
ignored staging artifacts, not tracked Git files.

The latest committed head at the time of inspection was:

```text
e655b21a4 Add residual proof partition emission
```

## 9. What Is Not Finished Yet

The project is not yet at the final theorem.

The key missing piece is the public exhaustive coverage witness expected by
Step 15. Step 15 needs something like:

```text
Cuboctahedron.Generated.NonIdentity.complete
Cuboctahedron.Generated.Translation.complete
Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

Those names are the intended interface. The generated evidence must prove that
every valid started-at-`X+` non-identity case and every valid translation case
has a checked failure certificate.

The repo has a lot of the ingredients:

- sound certificate checkers;
- rank/unrank infrastructure;
- exact residual partition evidence;
- proof-carrying family interfaces;
- successful proof-carrying smoke modules;
- metadata saying the proof-carrying family backend is size-safe.

But the final `Generated.exhaustiveGeneratedCoverage` API is not yet assembled
from those ingredients in a way that Step 15 can consume.

Also, `Cuboctahedron/MainTheorem.lean` and `Cuboctahedron/PrintAxioms.lean` are
part of later steps and are not the current active completion point.

## 10. What Not To Try Again

Based on the failures above, these paths are probably not worth repeating:

- Do not try to make the packed blob backend work by only lowering chunk size.
  One-certificate chunks already exposed reduction failures.
- Do not replace exact Lean checking with `native_decide`.
- Do not trust the C++ outputs or Python summaries as proof.
- Do not run a full `lake build` immediately after regenerating massive chunks.
  Run focused smoke targets first.
- Do not emit one proof body per residual case. The source-size projection is
  far too large.
- Do not treat subtype counts as proof coverage. Counts are only diagnostics
  unless Lean can obtain a checked certificate for every covered rank.

## 11. Recommended Next Direction

The next useful work should not be another packed-parser attempt. The more
promising direction is:

1. Treat the proof-carrying family backend as the selected backend.
2. Assemble the completed residual partition, nonidentity family evidence, and
   translation shared-Farkas evidence into the public generated coverage API.
3. Add the exact theorems:

```text
Cuboctahedron.Generated.NonIdentity.complete
Cuboctahedron.Generated.Translation.complete
Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

4. Smoke-build those modules specifically.
5. Only after the generated coverage API checks, proceed to Step 15.

Step 15 should assemble:

```text
generated_nonidentity_complete
generated_translation_complete
no_unfolded_omni_starting_xp
```

from the generated coverage witness and the existing certificate soundness
theorems.

After that, the final steps are:

- prove or finish the bridge from real billiard orbit to unfolded feasibility;
- prove the final `cuboctahedron_no_omnihedral` theorem;
- add `PrintAxioms.lean`;
- run the final validation commands.

## 12. Short Glossary

`Face`
: One of the 14 cuboctahedron faces.

`PairWord`
: A length-13 word over the seven opposite face-pairs after fixing the first
face as `X+`.

`rank` / `unrankPairWord`
: A deterministic enumeration of all valid pair-words.

`NonIdCert`
: A certificate that rules out one non-identity linear case.

`TranslationCert`
: A certificate that rules out one translation case.

`FarkasCert`
: A rational certificate proving a finite strict linear system has no solution.

`GeneratedCoverage`
: Earlier generated coverage structure.

`ExhaustiveGeneratedCoverage`
: The stronger structure Step 15 needs: it must return checked failure
certificates, not just classify cases.

`packed blob`
: A compact byte/string representation of certificate data. It is not trusted
unless Lean successfully decodes and checks it.

`proof-carrying evidence`
: Generated Lean data that includes local proof facts, so Lean does not have
to reduce one huge Boolean checker expression.

## 13. Bottom Line

The mathematical strategy is sound in shape: unfold the billiard, split by the
linear part of the total reflection product, and use exact finite certificates
to eliminate every itinerary.

The hard part is engineering the exhaustive evidence so Lean can check it
without running out of memory or relying on untrusted computation.

The packed-data approach reduced source size but failed as a Lean reduction
strategy. The proof-carrying family approach is the first approach that both
matches the trust model and appears size-safe. The next step is to wire that
backend into the final generated exhaustive coverage API, then continue to the
finite impossibility and final billiard theorem assembly.
