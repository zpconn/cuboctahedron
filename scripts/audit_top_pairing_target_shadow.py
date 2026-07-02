#!/usr/bin/env python3
"""Exact audit for the top-pairing target shadow inversion.

The production Lean theorem should prove that the current top-pairing
cancellation summary determines the target triangular shadow.  This script is
diagnostic-only: it enumerates all possible length-8 triangular shadows using
the same adjacent-cancellation stack convention as
`Cuboctahedron.Search.CancellationPairingLanguage`.

Length 8 is not guessed: in the started omnihedral pair-word each of the four
triangular opposite-pair letters occurs twice, so the triangular shadow has
exactly eight letters.
"""

from __future__ import annotations

import itertools
import json
from pathlib import Path
from typing import Iterable, NamedTuple


ROOT = Path(__file__).resolve().parents[1]
OUT_JSON = ROOT / "scripts/generated/top_pairing_target_shadow_audit.json"
OUT_MD = ROOT / "scripts/generated/top_pairing_target_shadow_audit.md"

TRI_LETTERS = ("dm11", "d111", "d1m1", "d11m")
TARGET_SHADOW = ("dm11", "d111", "d1m1", "d11m", "d11m", "dm11", "d111", "d1m1")
TARGET_SUMMARY = {
    "cancellations": [{"left": 3, "right": 4, "tri": "d11m"}],
    "survivors": [
        {"index": 0, "tri": "dm11"},
        {"index": 1, "tri": "d111"},
        {"index": 2, "tri": "d1m1"},
        {"index": 5, "tri": "dm11"},
        {"index": 6, "tri": "d111"},
        {"index": 7, "tri": "d1m1"},
    ],
}


class CancellationState(NamedTuple):
    shadow_len: int
    stack: tuple[tuple[str, int], ...]
    cancellations_rev: tuple[dict[str, object], ...]


def push(state: CancellationState, tri: str) -> CancellationState:
    idx = state.shadow_len
    if state.stack:
        top, top_idx = state.stack[0]
        rest = state.stack[1:]
        if tri == top:
            return CancellationState(
                idx + 1,
                rest,
                ({"left": top_idx, "right": idx, "tri": top},) + state.cancellations_rev,
            )
        return CancellationState(
            idx + 1,
            ((tri, idx), (top, top_idx)) + rest,
            state.cancellations_rev,
        )
    return CancellationState(
        idx + 1,
        ((tri, idx),),
        state.cancellations_rev,
    )


def summary(shadow: Iterable[str]) -> dict[str, object]:
    state = CancellationState(0, (), ())
    for tri in shadow:
        state = push(state, tri)
    return {
        "cancellations": list(reversed(state.cancellations_rev)),
        "survivors": [
            {"index": index, "tri": tri}
            for tri, index in reversed(state.stack)
        ],
    }


def main() -> None:
    matches: list[tuple[str, ...]] = []
    summary_histogram: dict[str, int] = {}
    for shadow in itertools.product(TRI_LETTERS, repeat=8):
        sig = json.dumps(summary(shadow), sort_keys=True, separators=(",", ":"))
        summary_histogram[sig] = summary_histogram.get(sig, 0) + 1
        if summary(shadow) == TARGET_SUMMARY:
            matches.append(shadow)

    report = {
        "shadow_length": 8,
        "alphabet_size": len(TRI_LETTERS),
        "total_shadows": len(TRI_LETTERS) ** 8,
        "target_shadow": list(TARGET_SHADOW),
        "target_summary": TARGET_SUMMARY,
        "target_summary_matches": [list(shadow) for shadow in matches],
        "target_summary_unique": matches == [TARGET_SHADOW],
        "distinct_summaries": len(summary_histogram),
        "max_preimages_per_summary": max(summary_histogram.values()),
    }

    OUT_JSON.parent.mkdir(parents=True, exist_ok=True)
    OUT_MD.parent.mkdir(parents=True, exist_ok=True)
    OUT_JSON.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Top-Pairing Target-Shadow Audit",
        "",
        "This is diagnostic-only evidence for the specialized Lean theorem",
        "`topPairingTargetShadow_of_summary`.",
        "",
        f"- shadow length: `{report['shadow_length']}`",
        f"- total shadows enumerated: `{report['total_shadows']}`",
        f"- distinct summaries: `{report['distinct_summaries']}`",
        f"- max preimages per summary: `{report['max_preimages_per_summary']}`",
        f"- target summary unique: `{report['target_summary_unique']}`",
        f"- target matches: `{len(matches)}`",
        "",
        "Target shadow:",
        "",
        "```text",
        " ".join(TARGET_SHADOW),
        "```",
        "",
    ]
    OUT_MD.write_text("\n".join(lines))

    print(f"wrote {OUT_JSON.relative_to(ROOT)}")
    print(f"wrote {OUT_MD.relative_to(ROOT)}")
    print(f"target_summary_unique={report['target_summary_unique']}")


if __name__ == "__main__":
    main()
