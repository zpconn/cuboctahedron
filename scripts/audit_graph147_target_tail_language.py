#!/usr/bin/env python3
"""Enumerate the semantic graph147 target-completion tail language.

This is an untrusted diagnostic audit.  It mirrors the small Lean definitions
in `TopPairingTargetCompletionTail` for the graph147 target state:

* remaining actual faces;
* top-pairing schedule;
* square-gap schedule;
* square-parity action on triangular letters;
* adjacent triangular cancellation summary.

The output is not Lean evidence.  Its job is to tell the next producer whether
`Graph147TargetCompletionTail` itself is already a tiny finite language or
whether the graph147 margin proof needs an invariant over a larger target-tail
machine.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_JSON = ROOT / "scripts/generated/graph147_target_tail_language.json"
DEFAULT_MD = ROOT / "scripts/generated/graph147_target_tail_language.md"

FACES = (
    "xp",
    "xm",
    "yp",
    "ym",
    "zp",
    "zm",
    "tmmm",
    "tmmp",
    "tmpm",
    "tmpp",
    "tpmm",
    "tpmp",
    "tppm",
    "tppp",
)

PAIR_OF_FACE = {
    "xp": "x",
    "xm": "x",
    "yp": "y",
    "ym": "y",
    "zp": "z",
    "zm": "z",
    "tppp": "d111",
    "tmmm": "d111",
    "tppm": "d11m",
    "tmmp": "d11m",
    "tpmp": "d1m1",
    "tmpm": "d1m1",
    "tmpp": "dm11",
    "tpmm": "dm11",
}

TRI_OF_PAIR = {
    "d111": "d111",
    "d11m": "d11m",
    "d1m1": "d1m1",
    "dm11": "dm11",
}

TRI_SIGNS = {
    "d111": (False, False),
    "d11m": (False, True),
    "d1m1": (True, False),
    "dm11": (True, True),
}

TRI_OF_SIGNS = {value: key for key, value in TRI_SIGNS.items()}

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

ALLOWED_AT_STEP = {
    0: ["xm"],
    1: ["ym"],
    2: ["tmpm", "yp", "zm"],
    3: ["tmmm", "tmpp", "tppm", "yp", "zm", "zp"],
    4: ["tmmp", "tmpm", "tpmm", "tppp", "yp", "zm", "zp"],
    5: ["tmmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    6: ["tmmm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    7: ["tmmp", "tmpm", "tpmm", "tpmp", "tppm", "tppp", "zm", "zp"],
    8: ["tmmm", "tmmp", "tmpp", "tpmm", "tpmp", "tppp", "yp", "zm", "zp"],
    9: ["tmmm", "tmpm", "tmpp", "tpmp", "tppm", "yp", "zm", "zp"],
    10: ["tmmp", "tmpm", "tppp", "yp", "zm"],
    11: ["tmmm", "tmpp", "yp", "zm", "zp"],
    12: ["tmmp", "yp", "zp"],
    13: ["xp"],
}

ALLOWED_SQUARE_AT_GAP = {
    0: ["xm", "ym", "yp", "zm", "zp"],
    1: ["zm", "zp"],
    2: ["zm", "zp"],
    3: ["zm", "zp"],
    4: ["zm", "zp"],
    5: ["zm", "zp"],
    6: ["yp", "zm", "zp"],
    7: ["zm", "zp"],
    8: ["xp", "yp", "zm", "zp"],
}


@dataclass(frozen=True)
class Parity:
    x: bool
    y: bool
    z: bool

    def apply_pair(self, pair: str) -> "Parity":
        if pair == "x":
            return Parity(not self.x, self.y, self.z)
        if pair == "y":
            return Parity(self.x, not self.y, self.z)
        if pair == "z":
            return Parity(self.x, self.y, not self.z)
        return self


@dataclass(frozen=True)
class TriState:
    shadow_len: int
    stack: tuple[tuple[str, int], ...]
    cancellations_rev: tuple[tuple[int, int, str], ...]

    def push(self, tri: str) -> "TriState":
        idx = self.shadow_len
        if self.stack:
            top, top_idx = self.stack[0]
            rest = self.stack[1:]
            if tri == top:
                return TriState(
                    idx + 1,
                    rest,
                    ((top_idx, idx, top),) + self.cancellations_rev,
                )
            return TriState(
                idx + 1,
                ((tri, idx), (top, top_idx)) + rest,
                self.cancellations_rev,
            )
        return TriState(idx + 1, ((tri, idx),), self.cancellations_rev)

    def summary(self) -> dict[str, list[dict[str, int | str]]]:
        return {
            "cancellations": [
                {"left": left, "right": right, "tri": tri}
                for left, right, tri in reversed(self.cancellations_rev)
            ],
            "survivors": [
                {"index": idx, "tri": tri}
                for tri, idx in reversed(self.stack)
            ],
        }


@dataclass(frozen=True)
class State:
    step: int
    gap: int
    parity: Parity
    remaining: tuple[str, ...]
    tri_state: TriState

    def next(self, face: str) -> "State":
        pair = PAIR_OF_FACE[face]
        parity_next = self.parity.apply_pair(pair)
        tri_state_next = self.tri_state
        tri = TRI_OF_PAIR.get(pair)
        if tri is not None:
            tri_state_next = self.tri_state.push(act_tri(self.parity, tri))
        remaining = list(self.remaining)
        remaining.remove(face)
        return State(
            self.step + 1,
            next_gap(self.gap, face),
            parity_next,
            tuple(remaining),
            tri_state_next,
        )


def is_square_pair(pair: str) -> bool:
    return pair in {"x", "y", "z"}


def next_gap(gap: int, face: str) -> int:
    return gap if is_square_pair(PAIR_OF_FACE[face]) else gap + 1


def act_tri(parity: Parity, tri: str) -> str:
    y_neg, z_neg = TRI_SIGNS[tri]
    return TRI_OF_SIGNS[
        (
            y_neg ^ (parity.x ^ parity.y),
            z_neg ^ (parity.x ^ parity.z),
        )
    ]


def square_allowed(state: State, face: str) -> bool:
    if is_square_pair(PAIR_OF_FACE[face]):
        return face in ALLOWED_SQUARE_AT_GAP.get(state.gap, [])
    return True


def head_allowed(state: State, face: str) -> bool:
    return (
        face in state.remaining
        and face in ALLOWED_AT_STEP.get(state.step, [])
        and square_allowed(state, face)
    )


def enumerate_tails(state: State) -> list[list[str]]:
    if not state.remaining:
        return [[]] if state.tri_state.summary() == TARGET_SUMMARY else []
    tails: list[list[str]] = []
    for face in state.remaining:
        if not head_allowed(state, face):
            continue
        for rest in enumerate_tails(state.next(face)):
            tails.append([face] + rest)
    return tails


def graph147_initial_state() -> State:
    return State(
        step=4,
        gap=0,
        parity=Parity(True, False, True),
        remaining=(
            "zp",
            "xp",
            "tmmm",
            "tmmp",
            "tmpm",
            "tmpp",
            "tpmm",
            "tpmp",
            "tppm",
            "tppp",
        ),
        tri_state=TriState(0, (), ()),
    )


def histogram(rows: Iterable[str]) -> dict[str, int]:
    return dict(sorted(Counter(rows).items()))


def audit() -> dict[str, object]:
    tails = enumerate_tails(graph147_initial_state())
    first_faces = [tail[0] for tail in tails if tail]
    suffix_after_first = [" ".join(tail[1:]) for tail in tails if tail]
    return {
        "schema_version": 1,
        "mode": "graph147-target-tail-language-audit",
        "proof_relevance": "diagnostic only; no Lean evidence",
        "tail_count": len(tails),
        "unique_tail_count": len({" ".join(tail) for tail in tails}),
        "tail_length_histogram": histogram(str(len(tail)) for tail in tails),
        "first_face_histogram": histogram(first_faces),
        "suffix_after_first_count": len(set(suffix_after_first)),
        "tails": [" ".join(tail) for tail in tails],
        "interpretation": (
            "If tail_count is small, a semantic target-tail split may be a "
            "good next proof target.  If it is large, prefer a margin "
            "invariant over TopPairingTargetCompletionTail states."
        ),
    }


def write_md(path: Path, payload: dict[str, object]) -> None:
    lines = [
        "# Graph147 Target-Tail Language Audit",
        "",
        "Untrusted diagnostic audit.  This file is not Lean proof evidence.",
        "",
        f"- Tail count: `{payload['tail_count']}`",
        f"- Unique tail count: `{payload['unique_tail_count']}`",
        f"- Tail length histogram: `{payload['tail_length_histogram']}`",
        f"- First face histogram: `{payload['first_face_histogram']}`",
        f"- Unique suffixes after first face: `{payload['suffix_after_first_count']}`",
        "",
        "## Tails",
        "",
    ]
    for idx, tail in enumerate(payload["tails"]):
        lines.append(f"- `{idx}`: `{tail}`")
    lines.extend(["", "## Interpretation", "", str(payload["interpretation"]), ""])
    path.write_text("\n".join(lines))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    payload = audit()
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    write_md(args.markdown, payload)
    print(json.dumps(
        {
            "tail_count": payload["tail_count"],
            "unique_tail_count": payload["unique_tail_count"],
            "first_face_histogram": payload["first_face_histogram"],
            "suffix_after_first_count": payload["suffix_after_first_count"],
        },
        indent=2,
        sort_keys=True,
    ))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
