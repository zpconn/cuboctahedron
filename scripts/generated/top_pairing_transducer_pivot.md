# Top-Pairing Bellman Transducer Pivot Audit

This is diagnostic-only evidence. It records the strategy pivot from
selected-prefix/root-trace membership to a deterministic semantic
closed-language transducer theorem.

- decision: `semantic-transducer-pivot-accepted-next-emit-closed-language-state-dag-evaluator`
- target-shadow surface mentions: `120`
- closed-language field mentions: `226`
- eval-core mentions: `94`
- semantic eval-gate mentions: `136`
- target-cursor core mentions: `46`
- semantic-tail core mentions: `20`
- suffix-eval core mentions: `244`
- ranked semantic-gate core mentions: `8`
- branch-table semantic-gate socket mentions: `30`
- branch-table graph-exact socket mentions: `14`
- full transition support mentions: `3242`
- semantic-socket core mentions: `26`
- selected-prefix production-risk mentions: `12`
- forbidden sampled-surface mentions: `0`

## Current Semantic Branch Checkpoint

- 1M graph states: `223`
- 1M graph edges: `229`
- semantic sockets accepted: `2`
- closure after sequence-bad-face filter: `True`
- strengthened local Lake smoke passed: `True`
- closed graph-acceptance decision: `closed-components-too-weak`
- trace state-DAG decision: `semantic-state-dag-candidate`
- trace state-DAG states: `5347`
- trace state-DAG edges: `6089`
- trace state-DAG closed paths: `47`

Known semantic sockets:

- `state19/tmmp`: canonical-bad-face mismatch.
- `state150/tppp`: target-pairing completion impossibility.

Next checkpoint: emit/prove a closed-language state-DAG evaluator.
The old 10M graph is now diagnostic evidence only: the exact visible
closed-language audit found candidates that it rejects.  The current
small semantic state DAG is the next proof object to target, with
`GraphBranchTableSuffixOk` or a successor evaluator theorem produced
from closed-language state transitions rather than from sampled paths.

## Guard Evidence

- `frontier_direct_check`: exit `1`, elapsed `1.01s`, peak RSS `0 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_hard_as`: exit `-6`, elapsed `33.05s`, peak RSS `777 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_rss_cap`: exit `-15`, elapsed `7.02s`, peak RSS `10334 MiB`, hard AS `None`, killed `process-tree RSS 10334 MiB exceeded 7000 MiB cap`
- `state150_socket_direct`: exit `0`, elapsed `8.01s`, peak RSS `4172 MiB`, hard AS `None`, killed `None`
- `strengthened_local_lake`: exit `0`, elapsed `14.01s`, peak RSS `4338 MiB`, hard AS `None`, killed `None`
- `strengthened_local_direct`: exit `0`, elapsed `6.00s`, peak RSS `4221 MiB`, hard AS `None`, killed `None`
- `target_cursor_latest_direct`: exit `0`, elapsed `6.00s`, peak RSS `3907 MiB`, hard AS `8192.0`, killed `None`
- `transducer_tail_latest_direct`: exit `0`, elapsed `2.00s`, peak RSS `3560 MiB`, hard AS `8192.0`, killed `None`
- `transducer_semantic_gate_latest_direct`: exit `0`, elapsed `2.00s`, peak RSS `3552 MiB`, hard AS `8192.0`, killed `None`
- `branch_table_semantic_gate_socket_direct`: exit `0`, elapsed `9.01s`, peak RSS `4009 MiB`, hard AS `8192.0`, killed `None`
- `semantic_tail_branch_emitter_smoke_direct`: exit `0`, elapsed `8.00s`, peak RSS `3960 MiB`, hard AS `8192.0`, killed `None`
- `semantic_state_transitions_full_direct`: exit `0`, elapsed `40.03s`, peak RSS `4063 MiB`, hard AS `8192.0`, killed `None`

Interpretation: the selected-prefix/root-trace bridge is useful as
diagnostic or downstream comparison evidence, but the recent guarded
attempts show it is not the next production membership surface. The
RSS-capped bridge build exceeded `7 GiB` and was terminated at about
`10.3 GiB` peak RSS.

The current accepted route is therefore: target cursor + semantic
tail + graph-only branch suffix evidence + finite transition facts
+ terminal margin facts. This keeps rank as an address, not as the
compression coordinate.

## Next Theorem Targets

```lean
theorem topPairingTargetShadow_of_summary
    {shadow : List TriLetter}
    (h : triangularCancellationSummaryOfShadow shadow =
      topPairingTargetSummary) :
    shadow = topPairingTargetShadow

theorem topPairingTriShadow_eq_target
    {rank : Fin numPairWords}
    (h : TopPairingLanguageAtRank rank) :
    triangularShadowOfPairWord (unrankPairWord rank) =
      topPairingTargetShadow

theorem TopPairingTransducerTail.ofClosedRank
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    TopPairingTransducerTail 0 0 0 SqParity.id
      (matId : Mat3 Rat) (topPairingRankFaceLabels rank)

theorem closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix
    ...

structure GraphBranchTableSuffixAllFamily
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  suffix :
    ∀ rank,
      TopPairingClosedLanguageAtRank rank Face.ym ->
        GraphBranchTableSuffixOk rank rootState
          (topPairingRankFaceLabels rank)
  finish : ...

theorem topPairingClosed_to_eval_gate
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    ∃ result,
      evalLabelStepFn graphNext rootState
        (topPairingBellmanLabelsAtRank rank) = some result ∧
      0 <= graphPotential result.1 ∧
      scaledMargin rank <= (176 : Int) + result.2
```

## No-Go Rules

- no sampled rank/path object
- no one constructor per rank/path
- no exact affine RHS or solved start-point key
- no root selected-prefix producer import as production membership
- no broad generated Lean build without hard address-space and RSS guard
- no hand-growing depth cut after this checkpoint without a generated branch-table report
- no selected-prefix cover scaling as a production proof surface

## Required Experiments

- closed-language state-DAG evaluator emitter
- closed-language-to-state transition proof over the 5347-state DAG
- cocycle quotient profiler before adding exact affine state
- translation GoodDirection row-template/3-row circuit profiler
