# Bellman Language-Family Generalization Audit

This is diagnostic-only evidence.  It checks whether generated
`BellmanAxisRankLanguageFamily` surfaces are already semantic or still
exact-rank singleton families.

## Summary

- decision: `rank-language-family-exists-but-exact-rank-bound`
- rank-language-family mentions: `13`
- exact-rank dependency mentions: `28`
- closed-language mentions: `12`
- recommended next step: Change the generated family instantiation from singleton `rank = clsNNNNRank` predicates to `ClosedTopPairingContainsRank Face.ym`, and replace `rw [hrank]` field proofs with proofs from closed-language components: canonical sequence, cancellation summary, schedule/square-gap/local-axis traces, kernel check, axis-forces, margin bound, and start-violation certificate.

## Files

### `scripts/emit_bellman_graph_smoke.py`

- exists: `True`
- `rank_language_family`: `2`
  - line `1623`: `"    BellmanAxisRankLanguageFamily",`
  - line `1673`: `"  exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos",`
- `exact_contains_rank_def`: `3`
  - line `1803`: `"private def sampledContainsRank (rank : Fin numPairWords) : Prop :=",`
  - line `1984`: `"def sampledAcceptedContainsRank (rank : Fin numPairWords) : Prop :=",`
  - line `2421`: `"def terminalContainsRank (rank : Fin numPairWords) : Prop :=",`
- `rw_hrank`: `4`
  - line `1601`: `"    rw [hrank]",`
  - line `1605`: `"    rw [hrank]",`
  - line `1660`: `"    rw [hrank]",`
  - line `1664`: `"    rw [hrank]",`
- `kernel_check_field`: `5`
  - line `1599`: `"  kernel_check := by",`
  - line `1658`: `"  kernel_check := by",`
  - line `1912`: `"  kernel_check := by",`
  - line `2159`: `f"          kernel_check := {positive_name}_kernelCheck,",`
  - line `2405`: `f"          kernel_check := {positive_name}_kernelCheck,",`
- `axis_forces_field`: `11`
  - line `1253`: `"positive_axis_forces_theorem": f"{positive_cert_payload['name']}_axisForces",`
  - line `1505`: `f"theorem graphSmoke_{obj_name}_axis_forces_scaled_margin_nonpos",`
  - line `1522`: `f"theorem graphSmoke_{obj_name}_generated_axis_forces_scaled_margin_nonpos",`
  - line `1527`: `f"  graphSmoke_{obj_name}_axis_forces_scaled_margin_nonpos",`
  - line `1531`: `f"theorem graphSmoke_{obj_name}_generated_axis_forces_bridge_scaled_margin_nonpos",`
- `margin_bound_field`: `4`
  - line `157`: `argmax_margin_scaled = int(Fraction(argmax.get("margin_bound", "0")) * scale)`
  - line `1595`: `"  margin_bound := by",`
  - line `1654`: `"  margin_bound := by",`
  - line `1901`: `"  margin_bound := by",`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2GraphSmoke.lean`

- exists: `True`
- `rank_language_family`: `4`
  - line `22868`: `BellmanAxisRankLanguageFamily`
  - line `22918`: `exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos`
  - line `23644`: `BellmanAxisRankLanguageFamily`
  - line `23694`: `exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos`
- `exact_contains_rank_def`: `4`
  - line `22813`: `private def cls0000ContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `23589`: `private def cls0001ContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24103`: `def sampledContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24233`: `def sampledAcceptedContainsRank (rank : Fin numPairWords) : Prop :=`
- `exact_rank_eq`: `4`
  - line `22814`: `rank = cls0000Rank`
  - line `23590`: `rank = cls0001Rank`
  - line `24107`: `if rank = cls0000Rank then smokeScaledMargin SmokeObj.cls0000 else`
  - line `24108`: `if rank = cls0001Rank then smokeScaledMargin SmokeObj.cls0001 else`
- `rw_hrank`: `8`
  - line `22846`: `rw [hrank]`
  - line `22850`: `rw [hrank]`
  - line `22905`: `rw [hrank]`
  - line `22909`: `rw [hrank]`
  - line `23622`: `rw [hrank]`
- `kernel_check_field`: `5`
  - line `22844`: `kernel_check := by`
  - line `22903`: `kernel_check := by`
  - line `23620`: `kernel_check := by`
  - line `23679`: `kernel_check := by`
  - line `24168`: `kernel_check := by`
- `axis_forces_field`: `13`
  - line `22750`: `theorem graphSmoke_cls0000_axis_forces_scaled_margin_nonpos`
  - line `22767`: `theorem graphSmoke_cls0000_generated_axis_forces_scaled_margin_nonpos`
  - line `22772`: `graphSmoke_cls0000_axis_forces_scaled_margin_nonpos`
  - line `22776`: `theorem graphSmoke_cls0000_generated_axis_forces_bridge_scaled_margin_nonpos`
  - line `22848`: `axis_forces := by`
- `margin_bound_field`: `5`
  - line `22840`: `margin_bound := by`
  - line `22899`: `margin_bound := by`
  - line `23616`: `margin_bound := by`
  - line `23675`: `margin_bound := by`
  - line `24159`: `margin_bound := by`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean`

- exists: `True`
- `rank_language_family`: `4`
  - line `23208`: `BellmanAxisRankLanguageFamily`
  - line `23258`: `exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos`
  - line `24324`: `BellmanAxisRankLanguageFamily`
  - line `24374`: `exact BellmanAxisRankLanguageFamily.scaledMargin_nonpos`
- `exact_contains_rank_def`: `4`
  - line `23153`: `private def cls0000ContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24269`: `private def cls0001ContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24783`: `private def sampledContainsRank (rank : Fin numPairWords) : Prop :=`
  - line `24931`: `def sampledAcceptedContainsRank (rank : Fin numPairWords) : Prop :=`
- `exact_rank_eq`: `4`
  - line `23154`: `rank = cls0000Rank`
  - line `24270`: `rank = cls0001Rank`
  - line `24787`: `if rank = cls0000Rank then smokeScaledMargin SmokeObj.cls0000 else`
  - line `24788`: `if rank = cls0001Rank then smokeScaledMargin SmokeObj.cls0001 else`
- `rw_hrank`: `8`
  - line `23186`: `rw [hrank]`
  - line `23190`: `rw [hrank]`
  - line `23245`: `rw [hrank]`
  - line `23249`: `rw [hrank]`
  - line `24302`: `rw [hrank]`
- `kernel_check_field`: `7`
  - line `23184`: `kernel_check := by`
  - line `23243`: `kernel_check := by`
  - line `24300`: `kernel_check := by`
  - line `24359`: `kernel_check := by`
  - line `24866`: `kernel_check := by`
- `axis_forces_field`: `17`
  - line `23090`: `theorem graphSmoke_cls0000_axis_forces_scaled_margin_nonpos`
  - line `23107`: `theorem graphSmoke_cls0000_generated_axis_forces_scaled_margin_nonpos`
  - line `23112`: `graphSmoke_cls0000_axis_forces_scaled_margin_nonpos`
  - line `23116`: `theorem graphSmoke_cls0000_generated_axis_forces_bridge_scaled_margin_nonpos`
  - line `23188`: `axis_forces := by`
- `margin_bound_field`: `5`
  - line `23180`: `margin_bound := by`
  - line `23239`: `margin_bound := by`
  - line `24296`: `margin_bound := by`
  - line `24355`: `margin_bound := by`
  - line `24857`: `margin_bound := by`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageBridge.lean`

- exists: `True`
- `rank_language_family`: `3`
  - line `31`: `_root_.Cuboctahedron.BellmanAxisRankLanguageFamily`
  - line `112`: `_root_.Cuboctahedron.BellmanAxisRankLanguageFamily`
  - line `142`: `_root_.Cuboctahedron.BellmanAxisRankLanguageFamily`
- `margin_bound_field`: `1`
  - line `44`: `family.margin_bound obj.1 obj.2⟩`
- `closed_contains_rank`: `5`
  - line `16`: `abbrev ClosedTopPairingContainsRank (badFace : Face) :`
  - line `65`: `Accepts (ClosedTopPairingContainsRank badFace) scaledMargin)`
  - line `90`: `Accepts (ClosedTopPairingContainsRank Face.ym) scaledMargin)`
  - line `114`: `(ClosedTopPairingContainsRank badFace) scaledMargin)`
  - line `144`: `(ClosedTopPairingContainsRank Face.ym) scaledMargin)`
- `closed_language_predicate`: `7`
  - line `19`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace`
  - line `72`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :`
  - line `97`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym) :`
  - line `117`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace ->`
  - line `122`: `_root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :`
