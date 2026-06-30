#!/usr/bin/env python3
"""Emit a thin split compact-Walsh batch root.

This helper composes already-accepted split rank roots.  It does not generate
certificate data and it does not run Lean; it only writes a small root module
that imports rank roots and re-exports their GoodDirection-to-good-mask
adapters.  The generated root still must be checked under the memory guard.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path


BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
BASE_NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"


def split_rank_stem(tag: str, rank: int) -> str:
    return f"ImpactSubcubeWalshSymbolicCompactDenom{tag}SplitCoverRank{rank}Smoke"


def batch_stem(tag: str) -> str:
    return f"ImpactSubcubeWalshSymbolicCompactDenom{tag}SplitCoverBatchSmoke"


def rank_module(tag: str, rank: int) -> str:
    return f"{BASE_NS}.{split_rank_stem(tag, rank)}"


def batch_module(tag: str) -> str:
    return f"{BASE_NS}.{batch_stem(tag)}"


def batch_lean(tag: str) -> Path:
    return BASE_DIR / f"{batch_stem(tag)}.lean"


def rank_adapter(tag: str, rank: int) -> list[str]:
    mod = rank_module(tag, rank)
    return [
        f"theorem rank{rank}_goodMaskMember_of_GoodDirection",
        f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        f"    {mod}.generatedGoodMaskMember mask :=",
        f"  {mod}.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes",
        "    hlt hgood",
        "",
    ]


def emit_batch_root(tag: str, ranks: list[int], note: str) -> str:
    imports = [rank_module(tag, rank) for rank in ranks]
    namespace = batch_module(tag)
    lines: list[str] = [f"import {mod}" for mod in imports]
    lines.extend([
        "",
        "/-!",
        f"Generated {tag} split compact-Walsh cover batch smoke.",
        "",
        "This root intentionally imports only individually guarded split rank",
        "cover roots.  Build it only after those roots have been checked under",
        "the memory guard.",
    ])
    if note:
        lines.extend(["", note])
    lines.extend([
        "-/",
        "",
        f"namespace {namespace}",
        "",
    ])
    for rank in ranks:
        lines.extend(rank_adapter(tag, rank))
    lines.extend([
        "theorem batchSplitCompactWalshCoverSmoke_builds : True := by",
    ])
    for rank in ranks:
        mod = rank_module(tag, rank)
        lines.extend([
            f"  have h{rank} : True :=",
            f"    {mod}.splitCompactWalshCoverSmoke_builds",
        ])
    lines.extend([
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--tag", required=True)
    parser.add_argument("--rank", type=int, action="append", required=True)
    parser.add_argument("--report", type=Path, required=True)
    parser.add_argument("--emit", action="store_true")
    parser.add_argument("--note", default="")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    ranks = sorted(dict.fromkeys(args.rank))
    root_path = batch_lean(args.tag)
    root_module = batch_module(args.tag)
    payload = {
        "schema_version": 1,
        "status": "emitted_pending_guarded_build" if args.emit else "dry_run",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "tag": args.tag,
        "ranks": ranks,
        "root_lean": str(root_path),
        "root_module": root_module,
        "targets": [
            {
                "kind": "split_batch_root",
                "module": root_module,
            }
        ],
    }
    if args.emit:
        root_path.parent.mkdir(parents=True, exist_ok=True)
        root_path.write_text(emit_batch_root(args.tag, ranks, args.note), encoding="utf-8")
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
