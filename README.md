# Cuboctahedron Omnihedral Billiards

This repository is a Lean 4/mathlib formalization project for the theorem:

```text
The cuboctahedron has no nonsingular periodic billiard orbit that touches
each of its 14 faces exactly once before repeating.
```

As of June 2026, this appears to be a novel result in pure mathematics (though of minor curiosity at best). It is a celebrated result of geometry that all five Platonic solids do admit such an orbit, but the question of whether the cuboctahedron -- a quasiregular Archimedean polyhedron -- also admits this type of orbit has remained open.

A billiard orbit is a broken line inside a polyhedron: it moves straight until
it hits a face, then reflects by the mirror law. It is nonsingular when every
hit is in the relative interior of a face, not on an edge or vertex. It is
omnihedral for the cuboctahedron when one period hits all 6 square faces and
all 8 triangular faces exactly once.

The project is not a floating-point simulation. The trusted proof path uses
exact rational arithmetic in Lean. External scripts may discover certificates
and generate Lean files, but Lean must check the certificates and the coverage.

<img width="500" height="490" alt="cuboctahedron" src="https://github.com/user-attachments/assets/896ae16c-8587-4926-8cee-da614f5b7c38" />

## The Shape

The cuboctahedron is modeled as the exact polyhedron

```text
P = { (x, y, z) :
      |x| <= 1, |y| <= 1, |z| <= 1,
      and +/-x +/-y +/-z <= 2 for all sign choices }.
```

Its square faces are `x = +/-1`, `y = +/-1`, and `z = +/-1`. Its triangular
faces are the eight planes `+/-x +/-y +/-z = 2`. In Lean, each face has an
integer normal vector `n` and rational offset `c`, so the reflection in that
face is the exact affine map

```text
r_F(p) = p - 2 * (n dot p - c) / (n dot n) * n.
```

This is the first simplifying miracle: every reflection matrix and translation
vector has rational coefficients.

## The Idea

The proof straightens billiards.

<img width="6000" height="3390" alt="image" src="https://github.com/user-attachments/assets/65584316-fbbc-4fb5-94c3-c5c4436a7a6c" />

Instead of reflecting the velocity at each impact, reflect the next copy of the
polyhedron across the impact face. The broken billiard path becomes one
straight line through reflected copies. For a proposed face itinerary

```text
F0, F1, ..., F13
```

the unfolded return map is an affine isometry

```text
A(p) = M p + b,
```

obtained by composing the corresponding face reflections. A periodic orbit
with that itinerary can exist only if a straight line is compatible with this
single affine map.

Because an omnihedral orbit hits every face once, we may cyclically reindex it
so that it starts on the square face `Face.xp`. The problem becomes finite:
rule out all possible orders of the remaining 13 faces.

## Pair Words

Opposite faces have the same linear reflection. So the finite search first
records only the opposite face-pair at each of the 13 remaining impacts. After
starting at `xp`, a valid pair word must contain

```text
x once, and y, z, d111, d11m, d1m1, dm11 twice each.
```

There are exactly

```text
13! / 2^6 = 97,297,200
```

such pair words. Lean contains the rank/unrank machinery for this finite set,
so coverage is stated over `Fin numPairWords`, not over an externally trusted
list.

For each pair word, the proof splits according to the linear part `M` of the
unfolded return map.

## Non-Identity Case

If `M` is not the identity, any periodic unfolded line must lie on the invariant
axis of the affine isometry. This makes the geometry rigid: the direction, the
signed face choices, and often the starting point are forced.

Lean checks exact non-identity obstructions such as:

- there is no nonzero fixed direction;
- a required crossing direction has the wrong sign;
- the forced signed itinerary is not omnihedral;
- the forced axis misses the interior of `xp`;
- the unique candidate line hits the wrong face first;
- a candidate hit is not in the intended face interior.

The checker lives around `NonIdCert` and `checkNonIdCert`, with soundness
theorems connecting a checked certificate back to nonexistence of an unfolded
orbit. Current generated work also exposes semantic non-identity coverage
predicates, so future generated roots can prove that a rank is killed without
exporting giant certificate objects.

## Translation Case

If `M` is the identity, the return map is a translation. A signed choice inside
each opposite face-pair is recorded by a `SignMask`, so each identity-linear
pair word has 64 signed translation choices.

The starting point on `xp` is written

```text
(1, y, z).
```

For a fixed word and mask, the crossing order and interior conditions become a
finite strict linear system in the two real variables `y` and `z`. The proof
uses exact Farkas certificates: Lean verifies nonnegative rational multipliers
whose weighted sum cancels the `y` and `z` terms and leaves an impossible
strict inequality.

The latest strategy does not generate evidence for every mask that has an
obviously wrong crossing direction. Instead, Lean proves the structural lemma:

```text
translation feasible -> GoodDirection
```

where `GoodDirection` means every internal impact denominator has the required
positive sign. Bad-direction masks are therefore eliminated by mathematics, not
by a huge generated list.

Generated translation evidence now targets only the `GoodDirection` survivors.
The active backend proves survivor infeasibility by small two-source Farkas
supports and row-relation families: often two selected constraints already
combine to a contradiction. The public generated surface is semantic, using
predicates such as `TranslationGoodCaseKilled`, rather than raw per-case
certificate arrays.

## Trusted Boundary

The intended final proof has three layers.

1. Geometry: exact faces, exact reflections, billiard orbits, unfolding, and
   the theorem that a genuine nonsingular billiard orbit gives an unfolded
   feasible straight-line witness.
2. Enumeration: exact pair-word rank/unrank, the identity/non-identity split,
   sign masks, and coverage over all `97,297,200` pair-word ranks.
3. Certificates: Lean-checked non-identity obstructions and translation Farkas
   obstructions, assembled through small semantic coverage theorems.

Python and C++ may help find the witnesses. They are not trusted. Counts and
JSON summaries are diagnostics only. The Lean code must not use floating point,
epsilon thresholds, `sorry`, `admit`, custom axioms, `unsafe`, or
`native_decide`.

## Current Status

The unconditional final theorem is not yet present. The current trusted bridge
is conditional on complete generated coverage:

```lean
theorem Cuboctahedron.conditional_cuboctahedron_no_omnihedral
    (coverage : ExhaustiveGeneratedCoverage) :
    ¬ exists o : BilliardOrbit14,
      o.Nonsingular /\ o.Periodic /\ o.TouchesEachFaceExactlyOnce
```

In words: once Lean has an exhaustive generated coverage witness, Lean already
proves the full billiard-orbit theorem shape.

The newer generated API also defines `SemanticExhaustiveGeneratedCoverage` and
semantic Step-15 adapters. This is the current completion path: emit compact
semantic family coverage, not millions of raw certificates. The main remaining
work is to produce full generated semantic evidence, especially the global
translation survivor families and remaining non-identity coverage, and then
assemble an unconditional `Generated.rank_complete` or equivalent coverage
witness.

Recent diagnostics support the current translation direction:

- the first `100,000` pair-word ranks contain `39,710` GoodDirection survivors,
  all covered by row-relation templates in the diagnostic census;
- calibration windows cover `63,725` GoodDirection survivors with zero
  uncovered cases after the expanded row-template catalog;
- a representative symbolic row-family root covers `4,779` survivors using
  `126` symbolic families, but broader sampling is still needed before full
  emission.

Those diagnostics are encouraging, not proof. Lean must check the emitted
family theorems and final coverage.

## Important Files

- `Cuboctahedron/Basic/*`: fixed-size exact vector, matrix, and affine algebra.
- `Cuboctahedron/Geometry/*`: faces, polyhedron interiors, reflections,
  billiard orbits, and unfolding.
- `Cuboctahedron/Search/Enumeration.lean`: pair-word rank/unrank and finite
  coverage infrastructure.
- `Cuboctahedron/Search/Certificates.lean`: non-identity and translation
  certificate checkers and soundness.
- `Cuboctahedron/Search/Farkas2D.lean`: strict two-variable Farkas soundness.
- `Cuboctahedron/Search/TranslationGoodDirection.lean`: the theorem that
  feasible translation cases satisfy `GoodDirection`.
- `Cuboctahedron/Generated/ExhaustiveCoverage.lean`: public coverage assembly
  types, including semantic generated coverage.
- `Cuboctahedron/Generated/Translation/TwoSource/*`: current two-source Farkas
  and support-family translation backend.
- `Cuboctahedron/ConditionalTheorem.lean`: the conditional bridge from complete
  generated coverage to the billiard theorem.

## Validation

For the current conditional proof surface:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lake env lean Cuboctahedron/PrintConditionalAxioms.lean
```

When the unconditional final theorem is added, the final axiom check should be
the project target recorded in `AGENTS.md`:

```bash
lean Cuboctahedron/PrintAxioms.lean
```
