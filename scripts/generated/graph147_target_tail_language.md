# Graph147 Target-Tail Language Audit

Untrusted diagnostic audit.  This file is not Lean proof evidence.

- Tail count: `2`
- Unique tail count: `2`
- Tail length histogram: `{'10': 2}`
- First face histogram: `{'tmmp': 1, 'zp': 1}`
- Unique suffixes after first face: `2`

## Tails

- `0`: `zp tmmm tpmm tppm tpmp tmpm tppp tmpp tmmp xp`
- `1`: `tmmp tpmp tppp tpmm tmpp tppm tmpm tmmm zp xp`

## Interpretation

If tail_count is small, a semantic target-tail split may be a good next proof target.  If it is large, prefer a margin invariant over TopPairingTargetCompletionTail states.
