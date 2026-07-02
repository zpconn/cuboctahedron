# Top-Pairing Branch-Table Membership Frontier

This is diagnostic-only evidence.  It records the current semantic
Bellman table frontier without enumerating ranks, paths, or prefixes.

- decision: `local-branch-table-progress-accepted-membership-open`
- required symbols present: `True`
- forbidden hits: `0`

## Lean Surface

| symbol | role | files |
| --- | --- | --- |
| `topPairingTargetShadow_of_summary` | target-shadow inverse | `target_cursor` |
| `topPairingTriCursor_of_closed` | closed language to target cursor | `target_cursor`, `transducer_tail` |
| `TopPairingTransducerTail.ofClosedRank` | closed language to combined semantic tail | `eval_bridge` |
| `evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix` | generic suffix evaluator | `eval_bridge`, `branch_table_suffix`, `strengthened_local` |
| `StrengthenedBranchTable` | finite graph/socket branch relation | `branch_table`, `branch_table_progress`, `branch_table_suffix` |
| `strengthenedBranchKind?` | finite graph/socket branch classifier | `branch_table` |
| `branchKind?_of_branchTable` | branch-table entry computes to classifier | `branch_table` |
| `graph_next_of_graphBranch` | branch-table graph transition extractor | `branch_table`, `branch_table_progress` |
| `faceEvalNext_of_graphBranchTable` | graph branch local evaluator progress | `branch_table_progress`, `branch_table_suffix` |
| `socket19TmmpBranch_impossible` | state19/tmmp semantic socket | `branch_table_progress`, `branch_table_suffix` |
| `socket150TpppBranch_impossible` | state150/tppp semantic socket | `branch_table_progress`, `branch_table_suffix` |
| `BranchTableSuffixOk` | suffix predicate storing branch-table evidence | `branch_table_suffix` |
| `branchTableSuffixOk_local` | local progress from branch-table suffix | `branch_table_suffix` |
| `eval_exists_of_branchTableSuffixOk` | whole-suffix evaluator from branch-table suffix | `branch_table_suffix` |
| `branchTableSuffixOk_root_of_closedPrefix2` | semantic root-prefix lift into branch-table suffix | `branch_table_suffix` |
| `branchTableSuffixOk_root_of_closedPrefix2_forall` | closed-rank root-prefix lift into branch-table suffix | `branch_table_suffix` |

## Guards

| guard | exit | elapsed | peak RSS | killed |
| --- | ---: | ---: | ---: | --- |
| `branch_table_lake` | `0` | `6.01s` | `4296 MiB` | `None` |
| `branch_table_progress_direct` | `0` | `2.00s` | `3544 MiB` | `None` |
| `branch_table_progress_lake` | `0` | `4.01s` | `4067 MiB` | `None` |
| `branch_table_suffix_direct` | `0` | `6.01s` | `3515 MiB` | `None` |
| `branch_table_suffix_lake` | `0` | `8.01s` | `4267 MiB` | `None` |

## Accepted Local Surface

The current Lean surface proves that a supplied finite branch-table
entry is usable:

```lean
faceEvalNext_of_graphBranchTable
strengthenedBranchKind?
branchKind?_of_branchTable
socket19TmmpBranch_impossible
socket150TpppBranch_impossible
BranchTableSuffixOk
branchTableSuffixOk_local
eval_exists_of_branchTableSuffixOk
branchTableSuffixOk_root_of_closedPrefix2
branchTableSuffixOk_root_of_closedPrefix2_forall
```

## Remaining Production Theorem

The open theorem is the semantic membership classifier.  In words:

```text
For every closed top-pairing semantic tail and local head face,
the state/face pair is either one of the finite graph branches
or one of the two semantic socket branches.
```

A future Lean/generated theorem should have the shape:

```lean
theorem topPairingClosed_head_branchTable
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)
    {state : FaceEvalState} {face : Face} {rest : List Face}
    (hinv : Inv state)
    (htail : state.Tail (face :: rest))
    (hsem : TopPairingClosedStateAt rank state (face :: rest)) :
    (StrengthenedBranchTable state.graph face BranchKind.graph) ∨
    (state = missingState19TmmpSemanticEvalState ∧
      face = Face.tmmp ∧
      StrengthenedBranchTable state.graph face BranchKind.socket19Tmmp) ∨
    (state = missingState150TpppSemanticEvalState ∧
      face = Face.tppp ∧
      StrengthenedBranchTable state.graph face BranchKind.socket150Tppp)
```

`TopPairingClosedStateAt` is schematic here: the next emitter should
use the existing semantic transducer state fields, not a sampled
rank/path object or exact affine RHS key.

The generated `strengthenedBranchKind?` classifier is available as
the small finite state/face target for that emitter.  Current Lean
proves only the cheap direction
`branchKind?_of_branchTable`; a generic classifier-to-table converse
should be emitted in shards or avoided in the hot path if it causes
heartbeat blowups.

