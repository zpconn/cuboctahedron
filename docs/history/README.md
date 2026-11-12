# Development History

These documents record how the project got where it is: the original
computational claim, the planning documents that guided the formalization, and
the long-running working logs. They are kept unedited for the record, so some
statements in them are superseded, and file paths inside them may refer to the
repository root where the files used to live.

None of these files is part of the formal proof.

| Document | Description |
| --- | --- |
| [`PROOF_SKETCH.md`](PROOF_SKETCH.md) | The original claim and its supporting exhaustive search. That search used floating-point C++, preserved in [`scripts/old_float_verifiers/`](../../scripts/old_float_verifiers) and **not** trusted by the proof. It also contains the case counts that motivated the formal case split. |
| [`RAW_PLAN.md`](RAW_PLAN.md) | The initial plan for a fully verified Lean proof, including the non-negotiable constraints later codified in [`AGENTS.md`](../../AGENTS.md). |
| [`CODEX_EXECUTION_STEPS.md`](CODEX_EXECUTION_STEPS.md) | The step-by-step implementation playbook derived from the raw plan, covering the exact model, unfolding, enumeration, and certificate checkers. |
| [`PUBLIC_GENERATED_COVERAGE_EXECUTION_PLAN.md`](PUBLIC_GENERATED_COVERAGE_EXECUTION_PLAN.md) | The plan for a memory-safe public coverage API over generated evidence. |
| [`CONDITIONAL_PROOF_SKELETON.md`](CONDITIONAL_PROOF_SKELETON.md) | A note on the first conditional theorem: what it proves, what it assumes, and how it was validated. |
| [`everything_tried_so_far.md`](everything_tried_so_far.md) | A handoff document (June 2026) explaining the problem, the trust boundary, and the engineering approaches tried for building exhaustive evidence in Lean. |
| [`SYMMETRY_PLAN.md`](SYMMETRY_PLAN.md) | The main working log, about 120,000 lines, covering the symmetry-compression backend, the holonomy-normal-form pivot, and the Bellman certificate route. Some scripts read it, and some Lean comments refer to it by name. |

For the current proof architecture, see the [top-level README](../../README.md) and
the [paper](../../paper/cuboctahedron_no_omnihedral.tex).
