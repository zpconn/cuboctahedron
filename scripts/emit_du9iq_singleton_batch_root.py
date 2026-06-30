#!/usr/bin/env python3
"""Emit DU9IQ singleton closed wrappers and a sparse aggregate root.

This is a small orchestration emitter for the AP.16T singleton-signature route.
It intentionally does not generate or build the heavy positive precomputed
signature leaves.  Instead it:

* reads a positive-survivor membership profile;
* selects singleton survivor signatures (`rank_count = 1`);
* emits thin closed-semantic wrappers for those rank-local positive leaves;
* emits a Prop-level sparse root over the selected ranks; and
* writes JSON/Markdown reports with the guarded per-leaf build order.

Heavy leaves should still be generated with
`generate_ap16t_precomputed_signature_smoke.py` and checked serially under
`run_memory_guarded.py` before building the root.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9iq_positive_survivor_membership_896_960.json"
)
BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
DEFAULT_ROOT_STEM = "WeightedDenomCubeDU9IQAcceptedSingletonRootSmoke"
DEFAULT_REPORT = Path("scripts/generated/weighted_denom_cube_du9iq_singleton_batch_root.json")


def module_for(stem: str) -> str:
    return f"{BASE_MODULE}.{stem}"


def positive_stem(rank: int) -> str:
    return f"WeightedDenomCubeDU9IQRank{rank}PositivePrecomputedSignatureSmoke"


def wrapper_stem(rank: int) -> str:
    return f"WeightedDenomCubeDU9IQRank{rank}ClosedSemanticSmoke"


def lean_path_for(stem: str) -> Path:
    return BASE_DIR / f"{stem}.lean"


def theorem_prefix(rank: int) -> str:
    return f"rank{rank}"


def selected_signatures(
    profile: dict[str, Any],
    *,
    ranks: set[int] | None,
    limit: int | None,
) -> list[dict[str, Any]]:
    signatures = [
        sig for sig in profile["positive_survivor_signature_catalog"]
        if int(sig.get("rank_count", 0)) == 1
    ]
    if ranks is not None:
        signatures = [
            sig for sig in signatures
            if int(sig["ranks"][0]) in ranks
        ]
    signatures.sort(key=lambda sig: int(sig["ranks"][0]))
    if limit is not None:
        signatures = signatures[:limit]
    return signatures


def unique_candidate_count(signature: dict[str, Any]) -> int:
    keys: set[str] = set()
    for candidates in signature["mask_candidates"].values():
        keys.update(str(candidate) for candidate in candidates)
    return len(keys)


def wrapper_lines(rank: int, *, survivor_count: int, candidate_count: int) -> list[str]:
    pos_stem = positive_stem(rank)
    wrap_stem = wrapper_stem(rank)
    return [
        f"import {module_for(pos_stem)}",
        "",
        "/-!",
        f"Stable wrapper for the rank-{rank} DU9IQ closed semantic coverage smoke.",
        "",
        "The imported precomputed-signature module carries the local source-position",
        f"facts for the {survivor_count} GoodDirection survivor masks and local",
        "bad-direction witnesses for the remaining masks.  This file exposes only",
        "the small semantic coverage theorem needed by aggregate roots.",
        "",
        f"Candidate source-position groups: `{candidate_count}`.",
        "-/",
        "",
        f"namespace {module_for(wrap_stem)}",
        "",
        f"theorem rank{rank}AllGoodCoverage :",
        "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge."
        f"AllTranslationGoodCoverageOnRange {rank} {rank + 1} :=",
        f"  {module_for(pos_stem)}.generatedSingletonSignatureClosedSemanticAllGoodCoverage",
        "",
        f"theorem rank{rank}AllGoodRankKilled :",
        "    Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge."
        f"AllTranslationGoodRankKilled {rank} := by",
        f"  exact rank{rank}AllGoodCoverage {rank} (Nat.le_refl {rank}) (by decide)",
        "",
        f"end {module_for(wrap_stem)}",
        "",
    ]


def root_lines(ranks: list[int], *, root_stem: str) -> list[str]:
    imports = [
        "import Cuboctahedron.Generated.Coverage.Sparse",
        *[f"import {module_for(wrapper_stem(rank))}" for rank in ranks],
    ]
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Sparse root for DU9IQ singleton closed-semantic smokes.",
        "",
        "The selected singleton ranks are intentionally collected through their",
        "small closed-semantic wrappers.  This file does not import generator",
        "internals directly and exports only a Prop-level sparse coverage theorem.",
        "-/",
        "",
        f"namespace {module_for(root_stem)}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge",
        "",
        "def acceptedSingletonRanks : List Nat :=",
        f"  [{', '.join(str(rank) for rank in ranks)}]",
        "",
    ]
    for rank in ranks:
        lines.extend([
            f"theorem {theorem_prefix(rank)}AllGoodRankKilled :",
            f"    AllTranslationGoodRankKilled {rank} :=",
            f"  {module_for(wrapper_stem(rank))}.rank{rank}AllGoodRankKilled",
            "",
        ])

    expr = "(CoversRanks.nil AllTranslationGoodRankKilled)"
    for rank in reversed(ranks):
        expr = f"(CoversRanks.cons {theorem_prefix(rank)}AllGoodRankKilled\n      {expr})"
    lines.extend([
        "theorem acceptedSingletonAllGoodCoverage :",
        "    CoversRanks AllTranslationGoodRankKilled acceptedSingletonRanks :=",
        f"  {expr}",
        "",
        f"theorem {root_stem[0].lower() + root_stem[1:]}_builds : True := by",
        "  trivial",
        "",
        f"end {module_for(root_stem)}",
        "",
    ])
    return lines


def shell_words(parts: list[str]) -> str:
    return " ".join(parts)


def generation_command(profile: Path, rank: int, mask: int) -> str:
    output = lean_path_for(positive_stem(rank))
    return shell_words([
        "python3",
        "scripts/generate_ap16t_precomputed_signature_smoke.py",
        "--profile",
        str(profile),
        "--rank",
        str(rank),
        "--mask",
        str(mask),
        "--output",
        str(output),
    ])


def guarded_build_command(module: str, report: Path) -> str:
    return shell_words([
        "env",
        "LAKE_JOBS=1",
        "python3",
        "scripts/run_memory_guarded.py",
        "--max-tree-rss-mib",
        "12000",
        "--min-available-mib",
        "35000",
        "--poll-seconds",
        "0.5",
        "--json",
        str(report),
        "--",
        "lake",
        "build",
        module,
    ])


def write_markdown(report: dict[str, Any], path: Path) -> None:
    lines = [
        "# DU9IQ Singleton Batch Root",
        "",
        f"- profile: `{report['profile']}`",
        f"- root module: `{report['root_module']}`",
        f"- root output: `{report['root_output']}`",
        f"- singleton ranks: `{', '.join(str(rank) for rank in report['ranks'])}`",
        f"- wrapper count: `{len(report['wrappers'])}`",
        "",
        "## Selected Signatures",
        "",
        "| rank | good masks | candidate groups | positive leaf exists | wrapper output |",
        "| ---: | ---: | ---: | :---: | --- |",
    ]
    for item in report["wrappers"]:
        lines.append(
            f"| `{item['rank']}` | `{item['good_mask_count']}` | "
            f"`{item['candidate_group_count']}` | "
            f"`{str(item['positive_leaf_exists']).lower()}` | `{item['output']}` |"
        )
    lines.extend([
        "",
        "## Guarded Build Order",
        "",
        "Generate any missing positive leaves first, then build each heavy leaf",
        "serially under the guard.  Build the root only after the heavy leaves are",
        "warm.",
        "",
    ])
    for command in report["positive_generation_commands"]:
        lines.append(f"- generation: `{command}`")
    for command in report["positive_guarded_build_commands"]:
        lines.append(f"- heavy leaf build: `{command}`")
    lines.append(f"- root build: `{report['root_guarded_build_command']}`")
    path.write_text("\n".join(lines) + "\n", encoding="utf-8")


def parse_rank_list(raw: str | None) -> set[int] | None:
    if not raw:
        return None
    return {int(part.strip()) for part in raw.split(",") if part.strip()}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--root-stem", default=DEFAULT_ROOT_STEM)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--ranks", default=None, help="Comma-separated rank subset.")
    parser.add_argument("--limit", type=int, default=None)
    parser.add_argument("--no-write-wrappers", action="store_true")
    parser.add_argument("--no-write-root", action="store_true")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    signatures = selected_signatures(
        profile,
        ranks=parse_rank_list(args.ranks),
        limit=args.limit,
    )
    if not signatures:
        raise SystemExit("no singleton positive-survivor signatures selected")

    ranks = [int(sig["ranks"][0]) for sig in signatures]
    wrappers: list[dict[str, Any]] = []
    for sig in signatures:
        rank = int(sig["ranks"][0])
        output = lean_path_for(wrapper_stem(rank))
        positive_output = lean_path_for(positive_stem(rank))
        item = {
            "rank": rank,
            "signature_key": sig["key"],
            "good_masks": [int(mask) for mask in sig["good_masks"]],
            "good_mask_count": len(sig["good_masks"]),
            "candidate_group_count": unique_candidate_count(sig),
            "positive_leaf": str(positive_output),
            "positive_leaf_module": module_for(positive_stem(rank)),
            "positive_leaf_exists": positive_output.exists(),
            "output": str(output),
            "module": module_for(wrapper_stem(rank)),
        }
        wrappers.append(item)
        if not args.no_write_wrappers:
            output.parent.mkdir(parents=True, exist_ok=True)
            output.write_text(
                "\n".join(
                    wrapper_lines(
                        rank,
                        survivor_count=item["good_mask_count"],
                        candidate_count=item["candidate_group_count"],
                    )
                ),
                encoding="utf-8",
            )

    root_output = lean_path_for(args.root_stem)
    if not args.no_write_root:
        root_output.parent.mkdir(parents=True, exist_ok=True)
        root_output.write_text(
            "\n".join(root_lines(ranks, root_stem=args.root_stem)),
            encoding="utf-8",
        )

    positive_generation_commands = [
        generation_command(args.profile, int(sig["ranks"][0]), int(sig["good_masks"][0]))
        for sig in signatures
    ]
    positive_guarded_build_commands = [
        guarded_build_command(
            module_for(positive_stem(rank)),
            Path(
                "scripts/generated/"
                f"weighted_denom_cube_du9iq_rank{rank}_positive_precomputed_signature_guard.json"
            ),
        )
        for rank in ranks
    ]
    root_module = module_for(args.root_stem)
    report = {
        "phase": "Phase 6Z6K8AP16DU9IQ singleton batch root emitter",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "profile": str(args.profile),
        "root_output": str(root_output),
        "root_module": root_module,
        "ranks": ranks,
        "wrappers": wrappers,
        "positive_generation_commands": positive_generation_commands,
        "positive_guarded_build_commands": positive_guarded_build_commands,
        "root_guarded_build_command": guarded_build_command(
            root_module,
            args.report.with_name(args.report.stem + "_root_guard.json"),
        ),
        "build_discipline": [
            "Do not invoke a broad lake build from this emitter.",
            "Generate missing positive leaves first.",
            "Build invalidated positive leaves serially under run_memory_guarded.py.",
            "Build the sparse root only after heavy leaves are warm.",
        ],
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(report, args.report.with_suffix(".md"))
    print(
        f"wrote {len(wrappers)} singleton wrappers and root {root_output} "
        f"for ranks {ranks}"
    )


if __name__ == "__main__":
    main()
