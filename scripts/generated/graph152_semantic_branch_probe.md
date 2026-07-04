# Graph 152 Semantic Branch Probe

Diagnostic-only result.  This was a bounded Lean probe to test whether the
existing strengthened transducer tail can classify graph state `152` without an
additional semantic field.

## Command

```bash
python3 scripts/run_memory_guarded.py \
  --timeout-seconds 180 \
  --max-tree-rss-mib 9000 \
  --min-available-mib 30000 \
  --json scripts/generated/graph152_semantic_branch_smoke_guard.json \
  --verbose -- lake env lean -M 8500 -j1 -s 4096 \
    Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph152SemanticBranchSmoke.lean
```

## Result

```text
exit_code = 1
elapsed_seconds = 5.00
peak_tree_rss_mib = 3944
killed_reason = None
```

The failing proof attempted to derive:

```lean
strengthenedClosedPrefix4TmpmTppmEvalState.Tail (face :: rest) ->
  exists branch : StrengthenedPrefix4Graph152Branch, branch.face = face
```

The real graph-152 branches are:

```text
zp   -> graph 160, gain -18
tpmm -> graph 161, gain -36
```

But the current tail predicate leaves additional heads open:

```text
yp, zm, tmpm, tmpp, tppp
```

## Interpretation

This confirms the current pivot: graph 152 must not be forced through a
graph-only or target-completion-only local table.  The next production slice
should use the strengthened semantic suffix/socket route, carrying a compact
field such as `sequenceBadFace`/canonical-bad-face or the profiler's
`with-step-tri-source` state.

The temporary probe module was removed after the diagnostic; this report and
the guard JSON preserve the result.
