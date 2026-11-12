# AGENTS.md

## Goal
Create a Lean 4/mathlib proof that the cuboctahedron has no nonsingular omnihedral periodic billiard orbit.

## Build commands
- lake build
- grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
- lean Cuboctahedron/PrintAxioms.lean

## Hard constraints
- No Float, Float32, Float64, Double, approximations, epsilon thresholds, or numerical tolerances in proof code.
- Use exact rational arithmetic for all finite computations.
- The final theorem must not use `sorry`, `admit`, custom `axiom`, `unsafe`, or `native_decide`.
- External scripts may generate certificate data, but Lean must check every certificate.
- Existing C++ outputs are not trusted as proof.
- Any generated data file must be covered by a Lean checker proving it corresponds to a complete finite enumeration.
- Prefer small, auditable definitions over clever metaprogramming.
- Do not weaken the theorem statement to an unfolded-only or computational-only claim unless that is explicitly marked as an intermediate theorem.

## Repository conventions
- Keep the repository root limited to build files, `README.md`, and `AGENTS.md`.
- Technical reports go in `docs/`; planning documents and long-running working logs (including `SYMMETRY_PLAN.md`) live in `docs/history/`.
- Keep `README.md` accurate about what is proved unconditionally and what is still conditional.
