# Public Interval Smoke Evidence

These generated Lean files are intentionally outside the Lake package
source tree. Check them one at a time by file path so a broad
`lake build` cannot accidentally compile many exact certificate leaves
in parallel.

Suggested checks:

```bash
lake env lean evidence/public_interval_smoke/NonIdentity.lean
lake env lean evidence/public_interval_smoke/Translation/Mask00.lean
lake env lean evidence/public_interval_smoke/Translation/Mask08.lean
lake env lean evidence/public_interval_smoke/TranslationIndex.lean
```
