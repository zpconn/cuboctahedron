# Cuboctahedron Omnihedral Billiards

This repository is for a Lean 4/mathlib formalization of the claim that the
cuboctahedron has no nonsingular periodic billiard orbit touching each of its
14 faces exactly once.

The implementation plan is split across:

- `RAW_PLAN.md`: detailed source handoff.
- `PROOF_SKETCH.md`: informal exhaustive-search proof sketch.
- `CODEX_EXECUTION_STEPS.md`: ordered execution plan for Codex.

## Current Status

Step 0 bootstrap is implemented: the repository has a Lake project shell,
project rules in `AGENTS.md`, and a placeholder root module. No mathematical
definitions or proof code have been added yet.

## Validation

Early milestones should run:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

Later milestones will add `Cuboctahedron/PrintAxioms.lean` and run:

```bash
lean Cuboctahedron/PrintAxioms.lean
```

## Trust Boundary

The existing C++ verifier outputs are search evidence only. The final proof
must use exact rational arithmetic and Lean-checked certificates.
