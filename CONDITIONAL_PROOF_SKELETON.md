# Conditional Proof Skeleton

This note records the current trusted Lean proof skeleton after the Phase 6Q
and Phase 6R downshift.

## What Is Proved

The module `Cuboctahedron/ConditionalTheorem.lean` exposes:

```lean
theorem Cuboctahedron.conditional_no_unfolded_omni_starting_xp
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      ¬ UnfoldedFeasible seq
```

In words: if an exhaustive generated coverage witness exists, then Lean proves
there is no unfolded feasible omnihedral itinerary that starts on `xp`.

It also exposes the conditional full billiard-orbit theorem:

```lean
theorem Cuboctahedron.conditional_cuboctahedron_no_omnihedral
    (coverage : ExhaustiveGeneratedCoverage) :
    ¬ exists o : BilliardOrbit14,
      o.Nonsingular /\ o.Periodic /\ o.TouchesEachFaceExactlyOnce
```

In words: if an exhaustive generated coverage witness exists, then Lean proves
there is no nonsingular periodic billiard orbit touching each cuboctahedron
face exactly once.

The same module also exposes conditional nonidentity and translation branch
theorems.

## Remaining Assumption

The theorem is conditional on:

```lean
coverage : ExhaustiveGeneratedCoverage
```

That assumption packages the still-open generated evidence problem:

- every nonidentity pair-word rank has a checked `NonIdCert`;
- every identity-linear translation rank and sign mask has a checked
  `TranslationCert`;
- rank and sign-mask coverage are exhaustive.

Phase 6N, Phase 6O, and Phase 6P showed that the current generated-evidence
compression strategy does not yet produce this witness within the low-thousands
Lean-leaf target.

## Why This Is Not The Final Theorem

This is not the final cuboctahedron billiards theorem.  It proves the intended
billiard-orbit shape only under the unconstructed assumption
`ExhaustiveGeneratedCoverage`.

Its purpose is narrower and useful: it validates the trusted Lean bridge from
complete exact generated coverage through the started unfolded nonexistence
theorem and onward to the full billiard-orbit statement.

## Validation

Commands run:

```bash
lake build Cuboctahedron.ConditionalTheorem
lake env lean Cuboctahedron/PrintConditionalAxioms.lean
```

The direct command `lean Cuboctahedron/PrintConditionalAxioms.lean` did not see
Lake's package search path in this environment, so the project-aware
`lake env lean` invocation was used for the axiom print.

Output:

```text
'Cuboctahedron.conditional_no_unfolded_omni_starting_xp' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cuboctahedron.conditional_cuboctahedron_no_omnihedral' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The output contains no `sorryAx`, no `Lean.trustCompiler`, and no
project-specific custom axioms.

The forbidden-text scan:

```bash
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

reported only the intentional validation commands:

```text
Cuboctahedron/PrintConditionalAxioms.lean:#print axioms Cuboctahedron.conditional_no_unfolded_omni_starting_xp
Cuboctahedron/PrintConditionalAxioms.lean:#print axioms Cuboctahedron.conditional_cuboctahedron_no_omnihedral
```
