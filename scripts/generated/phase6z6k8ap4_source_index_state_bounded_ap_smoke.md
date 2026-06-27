# Phase 6Z.6K.8AP.4 Source-Index/State Bounded AP Coverage

This diagnostic is not trusted as proof. It emits bounded Lean coverage
shards for the source-index/state descriptor surface.

- Status: `bounded-ap-smoke-built-production-rejected`
- Rank window: `[0, 16)`
- Shard size: `4`
- Shards: `4`
- Pair words scanned: `16`
- Identity words: `6`
- GoodDirection survivors: `82`
- Covered two-source cases: `82`
- Source-index/state families: `16`
- Covered case proofs emitted: `82`
- Not-GoodDirection contradictions emitted: `302`

## Focused Build

- Command:
  `/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateBoundedAPSmoke.All`
- Exit status: `0`
- Wall time: `288.66s`
- Max RSS: `14,041,472 KiB`

The generated root proves both:

- `AllTranslationGoodCoverageOnRange 0 16`
- `CoversInterval Cuboctahedron.Generated.Translation.Coverage.AllGoodRankKilled 0 16`

This validates the AP public theorem surface, but it rejects the finite
rank/mask dispatcher as a production strategy.  A 16-rank bounded slice took
4:48.66 wall time and 14.0 GiB RSS.  Full AP still needs non-enumerative
source/row membership evidence, not this finite dispatcher.

## Top Families

| Cases | Template | Source indices | Samples |
| ---: | --- | --- | --- |
| 28 | `eq_eq_pos_var_first` | `[23, 0]` | r0/m8, r0/m9, r0/m16, r0/m18, r0/m24 |
| 19 | `eq_eq_pos_var_first` | `[83, 0]` | r0/m22, r0/m30, r0/m31, r0/m63, r2/m30 |
| 7 | `eq_eq_pos_var_second` | `[0, 7]` | r0/m13, r0/m29, r2/m13, r2/m29, r5/m13 |
| 7 | `opp_1m_var_first` | `[24, 1]` | r0/m54, r0/m55, r2/m54, r2/m55, r3/m54 |
| 4 | `opp_1m_var_first` | `[109, 1]` | r3/m28, r5/m28, r11/m28, r11/m61 |
| 3 | `opp_m1_var_first` | `[25, 2]` | r3/m45, r5/m45, r5/m47 |
| 3 | `opp_m1_var_second` | `[2, 13]` | r0/m45, r0/m47, r2/m47 |
| 2 | `eq_eq_pos_var_first` | `[167, 0]` | r0/m28, r9/m28 |
| 2 | `opp_1m_var_second` | `[1, 14]` | r9/m54, r9/m55 |
| 1 | `eq_eq_pos_var_first` | `[147, 0]` | r5/m55 |
| 1 | `eq_eq_pos_var_first` | `[105, 0]` | r3/m30 |
| 1 | `eq_eq_pos_var_first` | `[148, 0]` | r5/m54 |
