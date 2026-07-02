#!/usr/bin/env python3
"""Audit the top-pairing branch-table membership frontier.

This is diagnostic/progress tooling only.  It does not prove coverage.

The strengthened Bellman branch table is useful only if the semantic closed
language can supply the table branch for each local head step.  This audit
records the current Lean theorem surface:

* target-shadow and semantic transducer-tail front doors exist;
* the generated finite branch table exists;
* the generated finite branch classifier exists;
* graph branches now drive local evaluator progress;
* socket branches are semantic contradictions;
* the remaining open theorem is closed-language-to-branch-table membership.

The audit deliberately does not enumerate ranks, accepted traces, prefixes, or
paths.
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

OUT_JSON = ROOT / "scripts/generated/top_pairing_branch_table_membership_frontier.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_branch_table_membership_frontier.md"

LEAN_FILES = {
    "target_cursor": ROOT / "Cuboctahedron/Search/TopPairingTargetCursor.lean",
    "transducer_tail": ROOT / "Cuboctahedron/Search/TopPairingTransducerTail.lean",
    "eval_bridge": ROOT / "Cuboctahedron/Search/TopPairingTransducerEvalBridge.lean",
    "branch_table": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTable1MSmoke.lean",
    "branch_table_progress": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedBranchTableProgress1MSmoke.lean",
    "branch_table_suffix": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSuffix1MSmoke.lean",
    "strengthened_local": ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStrengthenedLocal1MSmoke.lean",
}

GUARDS = {
    "branch_table_lake": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_1m_smoke_lake_guard.json",
    "branch_table_progress_direct": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_progress_1m_smoke_guard.json",
    "branch_table_progress_lake": ROOT
    / "scripts/generated/bellman_strengthened_branch_table_progress_1m_smoke_lake_guard.json",
    "branch_table_suffix_direct": ROOT
    / "scripts/generated/bellman_branch_table_suffix_1m_smoke_guard.json",
    "branch_table_suffix_lake": ROOT
    / "scripts/generated/bellman_branch_table_suffix_1m_smoke_lake_guard.json",
}

REQUIRED_SYMBOLS = {
    "topPairingTargetShadow_of_summary": "target-shadow inverse",
    "topPairingTriCursor_of_closed": "closed language to target cursor",
    "TopPairingTransducerTail.ofClosedRank": "closed language to combined semantic tail",
    "evalLabelStepFn_exists_of_tail_and_invariantLocalWithSuffix": "generic suffix evaluator",
    "StrengthenedBranchTable": "finite graph/socket branch relation",
    "strengthenedBranchKind?": "finite graph/socket branch classifier",
    "branchKind?_of_branchTable": "branch-table entry computes to classifier",
    "graph_next_of_graphBranch": "branch-table graph transition extractor",
    "faceEvalNext_of_graphBranchTable": "graph branch local evaluator progress",
    "socket19TmmpBranch_impossible": "state19/tmmp semantic socket",
    "socket150TpppBranch_impossible": "state150/tppp semantic socket",
    "BranchTableSuffixOk": "suffix predicate storing branch-table evidence",
    "branchTableSuffixOk_local": "local progress from branch-table suffix",
    "eval_exists_of_branchTableSuffixOk": "whole-suffix evaluator from branch-table suffix",
    "branchTableSuffixOk_root_of_closedPrefix2": "semantic root-prefix lift into branch-table suffix",
    "branchTableSuffixOk_root_of_closedPrefix2_forall": "closed-rank root-prefix lift into branch-table suffix",
}

FORBIDDEN_TOKENS = [
    "sorry",
    "admit",
    "axiom",
    "native_decide",
    "unsafe",
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "SelectedPrefix",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def scan_file(path: Path) -> dict[str, Any]:
    text = read(path)
    symbol_hits = {
        symbol: text.count(symbol)
        for symbol in REQUIRED_SYMBOLS
        if symbol in text
    }
    forbidden_hits = {
        token: text.count(token)
        for token in FORBIDDEN_TOKENS
        if token in text
    }
    return {
        "path": rel(path),
        "exists": path.exists(),
        "lines": text.count("\n") + (0 if text.endswith("\n") else 1),
        "symbol_hits": symbol_hits,
        "forbidden_hits": forbidden_hits,
    }


def load_guard(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"exists": False, "path": rel(path)}
    payload = json.loads(path.read_text(encoding="utf-8"))
    return {
        "exists": True,
        "path": rel(path),
        "exit_code": payload.get("exit_code"),
        "elapsed_seconds": payload.get("elapsed_seconds"),
        "max_tree_rss_mib": payload.get("max_tree_rss_mib"),
        "killed_reason": payload.get("killed_reason"),
    }


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Branch-Table Membership Frontier",
        "",
        "This is diagnostic-only evidence.  It records the current semantic",
        "Bellman table frontier without enumerating ranks, paths, or prefixes.",
        "",
        f"- decision: `{report['decision']}`",
        f"- required symbols present: `{report['required_symbols_present']}`",
        f"- forbidden hits: `{report['forbidden_hit_count']}`",
        "",
        "## Lean Surface",
        "",
        "| symbol | role | files |",
        "| --- | --- | --- |",
    ]
    for symbol, role in REQUIRED_SYMBOLS.items():
        files = report["symbol_locations"].get(symbol, [])
        files_text = ", ".join(f"`{name}`" for name in files) or "missing"
        lines.append(f"| `{symbol}` | {role} | {files_text} |")

    lines.extend(
        [
            "",
            "## Guards",
            "",
            "| guard | exit | elapsed | peak RSS | killed |",
            "| --- | ---: | ---: | ---: | --- |",
        ]
    )
    for name, guard in report["guards"].items():
        lines.append(
            "| `{}` | `{}` | `{:.2f}s` | `{:.0f} MiB` | `{}` |".format(
                name,
                guard.get("exit_code"),
                guard.get("elapsed_seconds") or 0.0,
                guard.get("max_tree_rss_mib") or 0.0,
                guard.get("killed_reason"),
            )
        )

    lines.extend(
        [
            "",
            "## Accepted Local Surface",
            "",
            "The current Lean surface proves that a supplied finite branch-table",
            "entry is usable:",
            "",
            "```lean",
            "faceEvalNext_of_graphBranchTable",
            "strengthenedBranchKind?",
            "branchKind?_of_branchTable",
            "socket19TmmpBranch_impossible",
            "socket150TpppBranch_impossible",
            "BranchTableSuffixOk",
            "branchTableSuffixOk_local",
            "eval_exists_of_branchTableSuffixOk",
            "branchTableSuffixOk_root_of_closedPrefix2",
            "branchTableSuffixOk_root_of_closedPrefix2_forall",
            "```",
            "",
            "## Remaining Production Theorem",
            "",
            "The open theorem is the semantic membership classifier.  In words:",
            "",
            "```text",
            "For every closed top-pairing semantic tail and local head face,",
            "the state/face pair is either one of the finite graph branches",
            "or one of the two semantic socket branches.",
            "```",
            "",
            "A future Lean/generated theorem should have the shape:",
            "",
            "```lean",
            "theorem topPairingClosed_head_branchTable",
            "    {rank : Fin numPairWords}",
            "    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)",
            "    {state : FaceEvalState} {face : Face} {rest : List Face}",
            "    (hinv : Inv state)",
            "    (htail : state.Tail (face :: rest))",
            "    (hsem : TopPairingClosedStateAt rank state (face :: rest)) :",
            "    (StrengthenedBranchTable state.graph face BranchKind.graph) ∨",
            "    (state = missingState19TmmpSemanticEvalState ∧",
            "      face = Face.tmmp ∧",
            "      StrengthenedBranchTable state.graph face BranchKind.socket19Tmmp) ∨",
            "    (state = missingState150TpppSemanticEvalState ∧",
            "      face = Face.tppp ∧",
            "      StrengthenedBranchTable state.graph face BranchKind.socket150Tppp)",
            "```",
            "",
            "`TopPairingClosedStateAt` is schematic here: the next emitter should",
            "use the existing semantic transducer state fields, not a sampled",
            "rank/path object or exact affine RHS key.",
            "",
            "The generated `strengthenedBranchKind?` classifier is available as",
            "the small finite state/face target for that emitter.  Current Lean",
            "proves only the cheap direction",
            "`branchKind?_of_branchTable`; a generic classifier-to-table converse",
            "should be emitted in shards or avoided in the hot path if it causes",
            "heartbeat blowups.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    file_scans = {name: scan_file(path) for name, path in LEAN_FILES.items()}
    guards = {name: load_guard(path) for name, path in GUARDS.items()}

    symbol_locations: dict[str, list[str]] = {symbol: [] for symbol in REQUIRED_SYMBOLS}
    for name, scan in file_scans.items():
        for symbol in scan["symbol_hits"]:
            symbol_locations[symbol].append(name)
    symbol_locations = {k: v for k, v in symbol_locations.items() if v}

    required_symbols_present = all(symbol in symbol_locations for symbol in REQUIRED_SYMBOLS)
    forbidden_hit_count = sum(
        sum(scan["forbidden_hits"].values()) for scan in file_scans.values()
    )
    guards_pass = all(guard.get("exit_code") == 0 for guard in guards.values())

    decision = (
        "local-branch-table-progress-accepted-membership-open"
        if required_symbols_present and guards_pass and forbidden_hit_count == 0
        else "branch-table-membership-frontier-needs-review"
    )

    report = {
        "mode": "top-pairing-branch-table-membership-frontier",
        "decision": decision,
        "required_symbols_present": required_symbols_present,
        "forbidden_hit_count": forbidden_hit_count,
        "files": file_scans,
        "guards": guards,
        "symbol_locations": symbol_locations,
        "next_theorem": "topPairingClosed_head_branchTable",
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    OUT_MD.write_text(render_markdown(report) + "\n", encoding="utf-8")

    print(f"decision={decision}")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
