# AP.16V Candidate Reuse Profile

This report is diagnostic only. It measures whether the AP.16 positive
survivor route should emit per-signature fact bundles or shared candidate
modules. It is not proof evidence.

## Counts

- positive candidate groups: 195
- positive survivor signatures: 757
- total signature-rank cases: 796
- total signature good-mask cases: 7112
- total candidate good-mask cases: 7112
- unique good-mask sets: 362
- unique candidate sets ignoring masks: 717

## Reuse

- mean signatures per candidate occurrence: 21.703
- candidate groups / signatures ratio: 0.258
- projected shared-candidate module count: 195
- projected per-signature module count: 757
- projected signature-to-candidate reduction: 3.882x

## Histograms

### candidates per signature

- 1: 22
- 2: 32
- 3: 36
- 4: 84
- 5: 162
- 6: 187
- 7: 135
- 8: 73
- 9: 20
- 10: 5
- 11: 1

### signatures per candidate

- 1: 42
- 2: 22
- 3: 15
- 4: 8
- 5: 3
- 6: 9
- 7: 2
- 8: 7
- 9: 5
- 10: 4
- 11: 3
- 12: 3
- 13: 5
- 14: 3
- 15: 2
- 16: 2
- 17: 3
- 18: 2
- 19: 3
- 21: 1
- 23: 3
- 24: 2
- 25: 1
- 26: 1
- 27: 1
- 28: 1
- 29: 2
- 30: 2
- 32: 1
- 33: 1
- 34: 1
- 35: 3
- 36: 3
- 37: 1
- 38: 1
- 39: 2
- 42: 1
- 43: 2
- 44: 2
- 45: 1
- 46: 1
- 48: 1
- 49: 1
- 50: 2
- 58: 1
- 59: 1
- 61: 1
- 63: 1
- 77: 1
- 81: 1
- 85: 1
- 122: 1
- 133: 1
- 153: 1
- 197: 1
- 235: 1
- 347: 1
- 461: 1

## Top Candidates By Signature Reuse

- `ed8a3dc60ca2...`: signatures=461, cases=1316, masks=32, templates=eq_eq_pos_var_first
- `e122fdae7b6c...`: signatures=347, cases=547, masks=23, templates=opp_1m_var_first
- `c17ae884e7cf...`: signatures=235, cases=339, masks=17, templates=opp_m1_var_first
- `196ef355e130...`: signatures=197, cases=497, masks=18, templates=eq_eq_pos_var_first
- `a5167846555b...`: signatures=153, cases=271, masks=8, templates=eq_eq_pos_var_second
- `6ebb3e2cb5e1...`: signatures=133, cases=283, masks=13, templates=eq_eq_pos_var_first
- `cc6a7a0d1b81...`: signatures=122, cases=185, masks=20, templates=opp_1m_var_first
- `6f7e27670b3b...`: signatures=85, cases=107, masks=11, templates=opp_m1_var_first
- `ff7045f242cc...`: signatures=81, cases=110, masks=14, templates=opp_1m_var_first
- `da3aaad2d275...`: signatures=77, cases=93, masks=9, templates=eq_eq_neg_var_first
- `2486ba1854a0...`: signatures=63, cases=83, masks=7, templates=opp_m1_var_first
- `4b9d96d356fb...`: signatures=61, cases=99, masks=13, templates=eq_eq_pos_var_first
- `347652b83d24...`: signatures=59, cases=86, masks=20, templates=opp_1m_var_second
- `d0463464045b...`: signatures=58, cases=61, masks=4, templates=opp_1m_var_second
- `cf9962e55a9e...`: signatures=50, cases=77, masks=15, templates=eq_eq_pos_var_first
- `0eee4299a8e0...`: signatures=50, cases=64, masks=8, templates=opp_1m_var_first
- `2ca5a640e7bd...`: signatures=49, cases=66, masks=15, templates=eq_eq_pos_var_first
- `80ededb7a930...`: signatures=48, cases=71, masks=14, templates=eq_eq_pos_var_first
- `975697e25907...`: signatures=46, cases=71, masks=9, templates=eq_eq_pos_var_first
- `84b95a4df981...`: signatures=45, cases=92, masks=15, templates=eq_eq_pos_var_second

## Decision

Candidate reuse is strong enough to reject further per-signature micro-factoring: the next Lean emitter should factor source/row candidate facts into shared modules and leave only compact signature-to-candidate routing in signature chunks.
