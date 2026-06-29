# Phase 6Z.6K.8AP.16DU.9DB Boolean Smoke

This bounded diagnostic tried a compact-free singleton Boolean membership
surface:

```lean
goodDirectionAtRankBool rank mask = true ->
  classifierAppliesBool rank mask = true
```

The test module intentionally did not import the compact-Walsh
GoodDirection membership modules.  It used only the DU3 classifier surface
and one concrete rank (`0`).

## Command

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9db_bool_smoke_guard.json \
  -- lake build \
     Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU9DBBoolSmoke
```

## Result

```text
exit_code:          1
killed_reason:      null
elapsed_seconds:    13.021558284002822
max_tree_rss_mib:   4029.44140625
min_available_mib:  46117.5234375
```

The failure was not an OOM and was not caused by the guard.  Lean failed at
the singleton proof:

```lean
fin_cases mask <;> decide
```

For every mask case, `decide` got stuck at the reducible Boolean comparison:

```lean
match goodDirectionAtRankBool rank mask, true with
| false, false => ...
| false, true => ...
| true, false => ...
| true, true => ...
```

## Decision

Rejected as a production route.  The route is memory-safe for one rank, but
it does not provide the semantic membership theorem needed by the production
source-index/state family surface.  Scaling it would return to rank-local
Boolean reduction rather than proving reusable source-position/source-row
membership facts.

