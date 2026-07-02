# Top-Pairing Bellman Transducer Pivot Audit

This is diagnostic-only evidence. It records the strategy pivot from
selected-prefix/root-trace membership to a deterministic semantic
closed-language transducer theorem.

- decision: `pivot-to-deterministic-closed-language-transducer`
- target-shadow surface mentions: `19`
- closed-language field mentions: `135`
- eval-core mentions: `41`
- semantic eval-gate mentions: `112`
- selected-prefix production-risk mentions: `12`
- forbidden sampled-surface mentions: `0`

## Guard Evidence

- `frontier_direct_check`: exit `1`, elapsed `1.01s`, peak RSS `0 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_hard_as`: exit `-6`, elapsed `33.05s`, peak RSS `777 MiB`, hard AS `12288.0`, killed `None`
- `root_bridge_rss_cap`: exit `-15`, elapsed `7.02s`, peak RSS `10334 MiB`, hard AS `None`, killed `process-tree RSS 10334 MiB exceeded 7000 MiB cap`

Interpretation: the selected-prefix/root-trace bridge is useful as
diagnostic or downstream comparison evidence, but the recent guarded
attempts show it is not the next production membership surface. The
RSS-capped bridge build exceeded `7 GiB` and was terminated at about
`10.3 GiB` peak RSS.

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

## Required Experiments

- target-shadow invertibility audit
- closed-language-to-state transition profiler
- cocycle quotient profiler before adding exact affine state
- translation GoodDirection row-template/3-row circuit profiler
