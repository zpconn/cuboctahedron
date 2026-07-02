# Top-Pairing Terminal Provider Scaling Audit

This is diagnostic evidence, not proof.  It records the current
scaling boundary for the terminal-direct provider route after the
selected-prefix provider bridge was Lean-checked.

- decision: `bounded-provider-surface-accepted-full-provider-not-yet-proved`
- current provider source: `SelectedPrefixCoverFamily scaledMargin rank`
- selected-prefix buckets: `31`
- selected-prefix groups: `7`
- accepted trace ids covered by selected-prefix source: `37`
- closed-language candidates in exact graph audit: `47`
- graph accepted in exact graph audit: `37`
- graph rejected in exact graph audit: `10`

## Checked Bounded Provider

The selected-prefix source now feeds the terminal-direct provider:

```lean
theorem terminalDirectClosedFamily_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    TerminalDirectClosedFamily rank

theorem nonIdentityRankKilled_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
```

Guarded check:

- exit: `0`
- elapsed seconds: `12.015479765002965`
- peak RSS MiB: `3613.453125`
- hard address-space MiB: `12288.0`
- killed reason: `None`

## Source Size

| file | lines | bytes |
| --- | ---: | ---: |
| `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSelectedPrefixTerminalDirectBridge.lean` | `163` | `6619` |
| `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingTerminalDirectSequenceSocket.lean` | `46` | `2108` |
| `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingStateDAGSelectedPrefixCover/All.lean` | `66` | `3386` |

## Forbidden Token Scan

- scanned files: `3`
- forbidden hits: `0`

No forbidden tokens were found in the scanned files.

## Scaling Boundary

The current selected-prefix source is accepted as a theorem-surface
smoke, but it is not full generated coverage.  Its source is the
37 graph-accepted trace-id cover; it should not be treated as a
rank-exhaustive residual provider.

A production provider must prove a semantic family predicate that
supplies these four fields for every rank in the intended
top-pairing residual family:

```lean
TopPairingClosedLanguageAtRank rank Face.ym
TopPairingActualFaceOmniAtRank rank
AcceptedSequenceBadFaceAtRank rank Face.ym
TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
  (topPairingRankFaceLabels rank)
```

It does not need to expose Bellman margin data for the direct
terminal route.  It must also avoid sampled rank/path objects,
exact affine-RHS keys, and branch-per-rank generated proofs.

## Next Gate

- Implement a profiler/generator that groups the intended residual
  ranks by semantic terminal/provider state, not by selected trace id
  alone.
- Emit a bounded representative provider leaf whose public theorem is
  `TerminalDirectClosedFamily rank` for a semantic family predicate.
- Guard-check that representative leaf and record RSS/time/source size.
- Continue only if projected full provider families stay in the
  low-thousands range and representative checks remain within the
  hardware budget.  Otherwise pivot to the cancellation-tree summary
  automaton described in `SYMMETRY_PLAN.md`.
