# Top-Pairing Bellman Transducer Pivot Audit

This is diagnostic-only evidence. It records the strategy pivot from
selected-prefix/root-trace membership to a deterministic semantic
closed-language transducer theorem.

- decision: `semantic-transducer-pivot-accepted-next-emit-finite-branch-table`
- target-shadow surface mentions: `112`
- closed-language field mentions: `177`
- eval-core mentions: `75`
- semantic eval-gate mentions: `119`
- target-cursor core mentions: `43`
- suffix-eval core mentions: `117`
- semantic-socket core mentions: `26`
- selected-prefix production-risk mentions: `12`
- forbidden sampled-surface mentions: `0`

## Current Semantic Branch Checkpoint

- 1M graph states: `223`
- 1M graph edges: `229`
- semantic sockets accepted: `2`
- closure after sequence-bad-face filter: `True`
- strengthened local Lake smoke passed: `True`

Known semantic sockets:

- `state19/tmmp`: canonical-bad-face mismatch.
- `state150/tppp`: target-pairing completion impossibility.

Next checkpoint: emit/report a finite strengthened state-face branch
table.  It must count real graph-transition branches, semantic socket
branches, and remaining uncovered branches.  Do not keep extending
the local theorem by hand depth cuts.

## Guard Evidence

- `frontier_direct_check`: exit `1`, elapsed `1.01s`, peak RSS `0 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_hard_as`: exit `-6`, elapsed `33.05s`, peak RSS `777 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_rss_cap`: exit `-15`, elapsed `7.02s`, peak RSS `10334 MiB`, hard AS `None`, killed `process-tree RSS 10334 MiB exceeded 7000 MiB cap`
- `state150_socket_direct`: exit `0`, elapsed `8.01s`, peak RSS `4172 MiB`, hard AS `None`, killed `None`
- `strengthened_local_lake`: exit `0`, elapsed `14.01s`, peak RSS `4338 MiB`, hard AS `None`, killed `None`
- `strengthened_local_direct`: exit `0`, elapsed `6.00s`, peak RSS `4221 MiB`, hard AS `None`, killed `None`

Interpretation: the selected-prefix/root-trace bridge is useful as
diagnostic or downstream comparison evidence, but the recent guarded
attempts show it is not the next production membership surface. The
RSS-capped bridge build exceeded `7 GiB` and was terminated at about
`10.3 GiB` peak RSS.

The current accepted route is therefore: target cursor + suffix-carrying
semantic evaluator + finite branch table + sockets for proven
impossible semantic branches.  This keeps rank as an address, not as
the compression coordinate.

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

## Required Experiments

- finite strengthened state/face branch-table emitter
- closed-language-to-state transition profiler across disjoint windows
- cocycle quotient profiler before adding exact affine state
- translation GoodDirection row-template/3-row circuit profiler
