# Bellman Object-Family Route Profile

Decision: `candidate-next-lean-family-smoke`

Emit the next smoke as a semantic object-family membership theorem. The private Bellman graph, local forced-axis transition filter, and canonical bad-face/start-violation terminal data form a closed sampled language; the remaining Lean obligation is membership compression, not a new terminal contradiction theorem.

## Inputs

- Graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- Closure: `scripts/generated/bellman_target_pairing_observed_step_square_gap_axis_forced_closure_negaxis_1M_step_face_linear_tri_source.json`
- Missing-transition completions: `scripts/generated/bellman_missing_transition_completions_top_pairing_negaxis_closure_1M_step_face_linear_tri_source.json`

## Target

- Pairing: `pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1`
- Forced axis: `-1,-1,-3`
- Canonical bad face: `yp`
- Axis D4 class: `1,-3,-1`

## Graph Size

| Metric | Value |
| --- | ---: |
| States | `223` |
| Edges | `229` |
| Labels | `14` |
| Path classes (diagnostic only) | `37` |
| Path objects (diagnostic only) | `37` |
| Final states | `29` |

## Transition Closure

| Metric | Value |
| --- | ---: |
| Observed transitions | `229` |
| Legal after pairing/schedule/local-axis | `230` |
| Local-axis rejected transitions | `14` |
| Missing before bad-face filter | `1` |
| Illegal before bad-face filter | `0` |
| Missing completions checked | `1` |
| Missing completions matching top family | `0` |
| Truncated missing gaps | `0` |
| Canonical bad-face filter would close | `True` |
| Legal after canonical bad-face | `229` |
| Missing after canonical bad-face | `0` |
| Illegal after canonical bad-face | `0` |
| Closed after canonical bad-face | `True` |

## Accepted Predicate Stack

- target cancellation pairing
- observed schedule / square-gap language
- oriented local forced-axis next-face compatibility
- canonical bad-face compatibility
- object-level start-violation certificate
- private Bellman object-cover trace bound

## Lean Surfaces

- `BellmanAxisRankObjectCover`
- `ObjectStartViolationMarginCert`
- `nonIdentityRankKilled_of_object_cover_start_violation_margin_certs`
- `graphSmoke_sampled_axis_object_cover_rank_killed_of_start_violation`

## Smoke Evidence

| Target | Wall | Max RSS | Status |
| --- | ---: | ---: | --- |
| `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke` | `1:09.07` | `8,583,932 kB` | `passed` |

## Remaining Lean Obligation

Replace the two sampled objects with a semantic object-family membership theorem for the closed transition language.  The theorem should construct accepted objects and start-violation certs without using exact path classes or rank-local certificate replay.
