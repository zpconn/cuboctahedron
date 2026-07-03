#!/usr/bin/env python3
"""Emit a generated semantic-tail branch-table smoke module.

This is a bounded emitter smoke for the current Bellman transducer pivot.  It
mechanically re-emits the checked tail-facing local branch theorems from the
semantic gate socket under fresh `emitted_*` names, so the generated artifact
proves the same local shape without importing the socket itself.

The emitter is intentionally small: it does not enumerate ranks, accepted
traces, selected prefixes, or affine keys.
"""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

SOURCE = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingBranchTableSemanticGateSocket.lean"
)
OUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingSemanticTailBranchEmitterSmoke.lean"
)

SOURCE_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingBranchTableSemanticGateSocket"
)
OUT_NS = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingSemanticTailBranchEmitterSmoke"
)

THEOREMS = [
    "branchTable_of_closedPrefix2_tail",
    "branchTableSuffixOk_closedPrefix2_branch_of_tail",
    "branchTable_of_closedPrefix3_tmpm_tail",
    "branchTable_of_closedPrefix3_yp_tail",
    "branchTable_of_closedPrefix3_zm_tail",
    "branchTableSuffixOk_closedPrefix3_tmpm_branch_of_tail",
    "branchTableSuffixOk_closedPrefix3_yp_branch_of_tail",
    "branchTableSuffixOk_closedPrefix3_zm_branch_of_tail",
]


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def theorem_block(text: str, name: str) -> str:
    match = re.search(
        rf"^theorem\s+{re.escape(name)}\b(?P<body>.*?)(?=^/\--|^theorem\s+|^structure\s+|\Z)",
        text,
        re.M | re.S,
    )
    if not match:
        raise RuntimeError(f"could not find theorem block: {name}")
    return f"theorem emitted_{name}{match.group('body').rstrip()}\n"


def rewrite_block(block: str) -> str:
    for name in THEOREMS:
        block = re.sub(rf"\b{re.escape(name)}\b", f"emitted_{name}", block)
    return block


def emit() -> str:
    source = read(SOURCE)
    blocks = [rewrite_block(theorem_block(source, name)) for name in THEOREMS]
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke",
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket",
        "",
        "/-!",
        "Generated semantic-tail branch-table emitter smoke.",
        "",
        "This bounded generated module re-emits the current tail-facing local",
        "branch-table theorem shape under fresh names.  It is an emitter smoke for",
        "the deterministic semantic-transducer route: no sampled rank/path object,",
        "selected-prefix cover, accepted trace id, or affine key appears in the",
        "theorem surface.",
        "-/",
        "",
        f"namespace {OUT_NS}",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEvalSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableProgressSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket",
        "",
    ]
    for block in blocks:
        lines.append(block)
        lines.append("")
    lines.extend(
        [
            "theorem semanticTailBranchEmitterSmoke_builds : True := by",
            "  exact True.intro",
            "",
            f"end {OUT_NS}",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> int:
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text(emit(), encoding="utf-8")
    print(f"wrote {OUT.relative_to(ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
