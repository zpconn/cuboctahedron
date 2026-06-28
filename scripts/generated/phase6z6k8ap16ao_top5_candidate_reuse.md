# AP.16V Candidate Reuse Profile

This report is diagnostic only. It measures whether the AP.16 positive
survivor route should emit per-signature fact bundles or shared candidate
modules. It is not proof evidence.

## Counts

- positive candidate groups: 191
- positive survivor signatures: 494
- total signature-rank cases: 613
- total signature good-mask cases: 4342
- total candidate good-mask cases: 4342
- unique good-mask sets: 307
- unique candidate sets ignoring masks: 465

## Reuse

- mean signatures per candidate occurrence: 12.497
- candidate groups / signatures ratio: 0.387
- projected shared-candidate module count: 191
- projected per-signature module count: 494
- projected signature-to-candidate reduction: 2.586x

## Histograms

### candidates per signature

- 1: 27
- 2: 34
- 3: 67
- 4: 84
- 5: 111
- 6: 66
- 7: 59
- 8: 29
- 9: 11
- 10: 6

### signatures per candidate

- 1: 52
- 2: 22
- 3: 12
- 4: 13
- 5: 11
- 6: 6
- 7: 3
- 8: 1
- 9: 6
- 10: 5
- 11: 2
- 12: 1
- 13: 4
- 14: 4
- 15: 6
- 16: 2
- 17: 1
- 18: 3
- 20: 2
- 21: 2
- 22: 3
- 23: 1
- 24: 2
- 25: 1
- 26: 1
- 27: 2
- 28: 3
- 32: 3
- 35: 1
- 36: 1
- 38: 2
- 43: 2
- 44: 1
- 47: 1
- 54: 2
- 60: 1
- 74: 1
- 75: 1
- 90: 1
- 91: 1
- 158: 1
- 160: 1

## Top Candidates By Signature Reuse

- `e122fdae7b6c...`: signatures=160, cases=241, masks=11, templates=opp_1m_var_first
- `ed8a3dc60ca2...`: signatures=158, cases=492, masks=17, templates=eq_eq_pos_var_first
- `c17ae884e7cf...`: signatures=91, cases=128, masks=11, templates=opp_m1_var_first
- `73bb1eff54e9...`: signatures=90, cases=231, masks=14, templates=eq_eq_pos_var_second
- `84b95a4df981...`: signatures=75, cases=152, masks=22, templates=eq_eq_pos_var_second
- `1354c8293bf1...`: signatures=74, cases=124, masks=18, templates=eq_eq_pos_var_first
- `865aecf1b299...`: signatures=60, cases=189, masks=16, templates=eq_eq_pos_var_first
- `6ebb3e2cb5e1...`: signatures=54, cases=128, masks=11, templates=eq_eq_pos_var_first
- `831254e85a21...`: signatures=54, cases=98, masks=11, templates=eq_eq_pos_var_first
- `f475a12f0d85...`: signatures=47, cases=162, masks=9, templates=eq_eq_pos_var_second
- `a5167846555b...`: signatures=44, cases=79, masks=4, templates=eq_eq_pos_var_second
- `3270b7c2c578...`: signatures=43, cases=85, masks=6, templates=opp_1m_var_first
- `e7fdbdba04e0...`: signatures=43, cases=67, masks=9, templates=opp_m1_var_first
- `2d5ccb111c52...`: signatures=38, cases=73, masks=10, templates=eq_eq_pos_var_first
- `e7e739d37bce...`: signatures=38, cases=50, masks=10, templates=opp_m1_var_first
- `51e2e361588d...`: signatures=36, cases=57, masks=4, templates=opp_1m_var_first
- `f26db553bb01...`: signatures=35, cases=43, masks=4, templates=eq_eq_pos_var_first
- `077d94cb4e03...`: signatures=32, cases=69, masks=10, templates=eq_eq_pos_var_first
- `8d219a6bfb9c...`: signatures=32, cases=58, masks=6, templates=opp_1m_var_first
- `e10a42e3c881...`: signatures=32, cases=37, masks=5, templates=opp_m1_var_first

## Decision

Candidate reuse is strong enough to reject further per-signature micro-factoring: the next Lean emitter should factor source/row candidate facts into shared modules and leave only compact signature-to-candidate routing in signature chunks.
