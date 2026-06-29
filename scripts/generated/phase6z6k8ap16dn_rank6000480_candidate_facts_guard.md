# Phase 6Z.6K.8AP.16DN Rank-6000480 Candidate Facts Guard

This guarded build checks the slim rank-local candidate-facts shard used by
the compact Walsh classifier facts smoke.

Command:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 4800 \
  --min-available-mib 20000 \
  --poll-seconds 0.5 \
  --json /tmp/ap16dn_rank6000480_candidate_facts_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 300s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSharedRank6000480CandidateFactsSmoke'
```

Result:

```text
status: passed
elapsed: 10.52s
peak process-tree RSS: 4634 MiB
minimum MemAvailable seen: 45409 MiB
RSS cap: 4800 MiB
```

The shard replaces the previous import of the 11,411-line top-5 global shared
candidate-facts module for this one-rank bridge.

