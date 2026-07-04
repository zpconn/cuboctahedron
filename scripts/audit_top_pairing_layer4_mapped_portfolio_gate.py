#!/usr/bin/env python3
"""Audit the layer-4 mapped portfolio gate for top-pairing Bellman.

This is diagnostic/progress tooling only.  It does not enumerate ranks and it
does not prove coverage.

The current clean Bellman target is the mapped layer-4 portfolio:

    Depth11Layer4SevenBranchMappedPortfolioAllFamily

That structure asks a future generated proof to classify every closed
top-pairing rank, split by the seven Lean-proved semantic first-four branches,
into one of the checked depth-11 suffix classes together with an exact graph
finish margin bound.  This audit records that theorem surface and the latest
guarded build result for the module that consumes it.
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any


ROOT = Path(__file__).resolve().parents[1]

MAPPED_FINISH = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4MappedFinish.lean"
)
LAYER4_SOCKET = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11Layer4ClassifierSocket.lean"
)
SUFFIX_PRODUCERS = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixProducers.lean"
)
SUFFIX_CLASSES = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixClasses.lean"
)
SUFFIX_EVAL = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingDepth11GraphSuffixEvalSmoke.lean"
)

GUARD = ROOT / "scripts/generated/depth11_layer4_mapped_finish_latest_guard.json"
OUT_JSON = ROOT / "scripts/generated/top_pairing_layer4_mapped_portfolio_gate.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_layer4_mapped_portfolio_gate.md"

BRANCH_FIELDS = [
    "tmpm_tppm",
    "tmpm_zm",
    "yp_tmmm",
    "yp_zm",
    "zm_tmpp",
    "zm_yp",
    "zm_zp",
]

CLASS_IDS = ["034", "035", "036", "037", "038", "039"]

FORBIDDEN_CODE_TOKENS = [
    "SampledRankIndex",
    "sampledContainsRank",
    "sampledRankOf",
    "AcceptedTraceId",
    "GraphAcceptedTraceLabels",
]


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8") if path.exists() else ""


def load_json(path: Path) -> dict[str, Any] | None:
    if not path.exists():
        return None
    return json.loads(path.read_text(encoding="utf-8"))


def line_count(text: str) -> int:
    if not text:
        return 0
    return text.count("\n") + (0 if text.endswith("\n") else 1)


def count_symbol(text: str, symbol: str) -> int:
    return len(re.findall(rf"\b{re.escape(symbol)}\b", text))


def forbidden_hits(text: str) -> list[dict[str, Any]]:
    hits: list[dict[str, Any]] = []
    for lineno, line in enumerate(text.splitlines(), 1):
        for token in FORBIDDEN_CODE_TOKENS:
            if token in line:
                hits.append({"line": lineno, "token": token, "text": line.strip()})
    return hits


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Layer-4 Mapped Portfolio Gate",
        "",
        "This audit is diagnostic status evidence, not proof.  It records the",
        "current clean production target for the top-pairing Bellman membership",
        "slice after the graph-suffix pivot.",
        "",
        f"- decision: `{report['decision']}`",
        f"- mapped finish module lines: `{report['files']['mapped_finish']['lines']}`",
        f"- latest guarded check exit: `{report['guard'].get('exit_code') if report['guard'] else 'missing'}`",
        f"- latest guarded peak RSS MiB: `{report['guard'].get('max_tree_rss_mib') if report['guard'] else 'missing'}`",
        "",
        "## Emitter Contract",
        "",
        "The next generated proof should construct:",
        "",
        "```lean",
        "Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin",
        "```",
        "",
        "For each of the seven semantic first-four branches, it must produce a",
        "`Depth11Layer4MappedClassCase scaledMargin rank`, i.e. one of the six",
        "class cases with both:",
        "",
        "- `ClassNNNGraphSuffixProducer rank`",
        "- `ClassNNNExactGraphFinishMarginBound scaledMargin rank`",
        "",
        "## Branch Fields",
        "",
        "| branch | present in portfolio |",
        "| --- | ---: |",
    ]
    for branch in BRANCH_FIELDS:
        lines.append(
            f"| `{branch}` | `{report['branch_fields'].get(branch, 0) > 0}` |"
        )
    lines.extend(["", "## Class Cases", "", "| class | producer | margin bound | adapter |", "| --- | ---: | ---: | ---: |"])
    for class_id in CLASS_IDS:
        row = report["class_cases"][class_id]
        lines.append(
            f"| `{class_id}` | `{row['producer'] > 0}` | `{row['margin_bound'] > 0}` | `{row['adapter'] > 0}` |"
        )
    lines.extend(
        [
            "",
            "## Consuming Theorems",
            "",
        ]
    )
    for theorem in report["consuming_theorems"]:
        lines.append(f"- `{theorem}`")
    lines.extend(["", "## Forbidden Code Hits", ""])
    if report["forbidden_hits"]:
        for hit in report["forbidden_hits"]:
            lines.append(f"- `{hit['token']}` at line `{hit['line']}`: {hit['text']}")
    else:
        lines.append("- none")
    lines.extend(
        [
            "",
            "## Next Step",
            "",
            "Generate a small semantic membership emitter for this portfolio.  If",
            "the proof requires sampled paths, selected-prefix coverage, exact",
            "affine RHS keys, or one branch per rank, reject this route and move",
            "to the cancellation-tree/cocycle quotient fallback.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    mapped_text = read(MAPPED_FINISH)
    files = {
        "mapped_finish": MAPPED_FINISH,
        "layer4_socket": LAYER4_SOCKET,
        "suffix_producers": SUFFIX_PRODUCERS,
        "suffix_classes": SUFFIX_CLASSES,
        "suffix_eval": SUFFIX_EVAL,
    }
    file_report = {
        name: {"path": rel(path), "exists": path.exists(), "lines": line_count(read(path))}
        for name, path in files.items()
    }
    branch_fields = {
        branch: count_symbol(mapped_text, branch) for branch in BRANCH_FIELDS
    }
    class_cases = {
        class_id: {
            "producer": count_symbol(mapped_text, f"Class{class_id}GraphSuffixProducer"),
            "margin_bound": count_symbol(
                mapped_text, f"Class{class_id}ExactGraphFinishMarginBound"
            ),
            "adapter": count_symbol(mapped_text, f"mappedLayer4Result_of_class{class_id}"),
        }
        for class_id in CLASS_IDS
    }
    consuming_theorems = [
        theorem
        for theorem in [
            "mappedSevenBranchClassifier_of_mappedPortfolio",
            "split10MGraphExactEvalAllFamily_of_layer4MappedPortfolio",
            "closedToEvalGate_of_layer4MappedPortfolio",
            "scaledMargin_nonpos_of_layer4MappedPortfolio",
        ]
        if count_symbol(mapped_text, theorem)
    ]
    guard = load_json(GUARD)
    ok = (
        all(count > 0 for count in branch_fields.values())
        and all(
            row["producer"] > 0 and row["margin_bound"] > 0 and row["adapter"] > 0
            for row in class_cases.values()
        )
        and len(consuming_theorems) == 4
        and bool(guard and guard.get("exit_code") == 0)
        and not forbidden_hits(mapped_text)
    )
    report: dict[str, Any] = {
        "mode": "top-pairing-layer4-mapped-portfolio-gate-audit",
        "decision": (
            "mapped-portfolio-gate-ready-next-prove-semantic-classification"
            if ok
            else "mapped-portfolio-gate-needs-review"
        ),
        "files": file_report,
        "branch_fields": branch_fields,
        "class_cases": class_cases,
        "consuming_theorems": consuming_theorems,
        "guard": guard,
        "forbidden_hits": forbidden_hits(mapped_text),
        "next_target": (
            "Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin"
        ),
    }
    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    OUT_MD.write_text(render_markdown(report) + "\n")
    print(f"wrote {rel(OUT_JSON)}")
    print(f"wrote {rel(OUT_MD)}")
    print(f"decision={report['decision']}")
    return 0 if ok else 1


if __name__ == "__main__":
    raise SystemExit(main())
