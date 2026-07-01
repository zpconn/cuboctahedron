#!/usr/bin/env python3
"""Exact profiler for the square-parity / triangular-shadow normal form.

This script is deliberately untrusted.  It performs exact integer/rational
classification outside Lean to decide whether the proposed holonomy
normal-form theorem is worth formalizing.  It does not emit proof evidence.
"""

from __future__ import annotations

import argparse
from collections import Counter
import json
import random
import sys
import time
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from exact_profile import (  # noqa: E402
    EXPECTED_IDENTITY_WORDS,
    EXPECTED_PAIR_WORDS,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    mat_mul,
    multinomial_count,
    total_linear,
)

SquareParity = tuple[bool, bool, bool]
Tri = str

TRI_NORMALS: dict[Tri, tuple[int, int, int]] = {
    "d111": (1, 1, 1),
    "d11m": (1, 1, -1),
    "d1m1": (1, -1, 1),
    "dm11": (1, -1, -1),
}

NORMAL_TO_TRI = {normal: tri for tri, normal in TRI_NORMALS.items()}
SQUARE_TOGGLES: dict[str, SquareParity] = {
    "x": (True, False, False),
    "y": (False, True, False),
    "z": (False, False, True),
}


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_markdown(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    confusion = payload["confusion"]
    lines = [
        "# Shadow Normal-Form Profile",
        "",
        f"- Range: `[{payload['start']}, {payload['end']})`",
        f"- Scanned words: `{payload['scanned']:,}`",
        f"- Elapsed seconds: `{payload['elapsed_seconds']:.3f}`",
        f"- Empty reduced shadow: `{payload['empty_shadow_count']:,}`",
        f"- Identity linear words: `{payload['identity_count']:,}`",
        f"- Mismatches: `{payload['mismatch_count']:,}`",
        "",
        "## Confusion Matrix",
        "",
        "| shadow / linear | identity | nonidentity |",
        "| --- | ---: | ---: |",
        (
            f"| empty | `{confusion['empty_and_identity']:,}` | "
            f"`{confusion['empty_and_nonidentity']:,}` |"
        ),
        (
            f"| nonempty | `{confusion['nonempty_and_identity']:,}` | "
            f"`{confusion['nonempty_and_nonidentity']:,}` |"
        ),
        "",
        "## Reduced-Length Distribution",
        "",
        "| length | count |",
        "| ---: | ---: |",
    ]
    for length, count in payload["reduced_length_distribution"]:
        lines.append(f"| `{length}` | `{count:,}` |")
    lines.extend([
        "",
        "## Top Reduced Shadows",
        "",
        "| reduced shadow | count |",
        "| --- | ---: |",
    ])
    for shadow, count in payload["top_reduced_shadows"]:
        lines.append(f"| `{shadow}` | `{count:,}` |")
    if payload["mismatch_examples"]:
        lines.extend(["", "## Mismatch Examples", ""])
        for item in payload["mismatch_examples"]:
            lines.append(f"- rank `{item['rank']}` word `{item['word']}`")
    path.write_text("\n".join(lines) + "\n")


def unrank_pair_word(rank: int) -> list[str]:
    if rank < 0 or rank >= EXPECTED_PAIR_WORDS:
        raise ValueError(f"rank out of range: {rank}")
    remaining = dict(PAIR_COUNTS)
    word: list[str] = []
    rest = rank
    for _ in range(13):
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            trial = dict(remaining)
            trial[pair_id] -= 1
            block = multinomial_count(trial)
            if rest < block:
                word.append(pair_id)
                remaining[pair_id] -= 1
                break
            rest -= block
        else:
            raise RuntimeError(f"failed to unrank {rank}")
    return word


def xor_parity(a: SquareParity, b: SquareParity) -> SquareParity:
    return (a[0] ^ b[0], a[1] ^ b[1], a[2] ^ b[2])


def act_tri(parity: SquareParity, tri: Tri) -> Tri:
    sx = -1 if parity[0] else 1
    sy = -1 if parity[1] else 1
    sz = -1 if parity[2] else 1
    x, y, z = TRI_NORMALS[tri]
    acted = (sx * x, sy * y, sz * z)
    if acted[0] < 0:
        acted = (-acted[0], -acted[1], -acted[2])
    return NORMAL_TO_TRI[acted]


def shadow_scan(word: list[str]) -> tuple[SquareParity, list[Tri], list[Tri]]:
    parity: SquareParity = (False, False, False)
    shadow: list[Tri] = []
    reduced: list[Tri] = []
    for pair_id in [*word, "x"]:
        if pair_id in SQUARE_TOGGLES:
            parity = xor_parity(parity, SQUARE_TOGGLES[pair_id])
            continue
        tri = act_tri(parity, pair_id)
        shadow.append(tri)
        if reduced and reduced[-1] == tri:
            reduced.pop()
        else:
            reduced.append(tri)
    return parity, shadow, reduced


def total_linear_incremental(word: list[str]):
    result = IDENTITY
    for pair_id in word:
        result = mat_mul(result, RPAIR[pair_id])
    return mat_mul(result, RPAIR["x"])


def classify_rank(rank: int) -> dict[str, Any]:
    word = unrank_pair_word(rank)
    parity, shadow, reduced = shadow_scan(word)
    matrix = total_linear_incremental(word)
    identity = matrix == IDENTITY
    return {
        "rank": rank,
        "word": word,
        "final_parity": parity,
        "shadow": shadow,
        "reduced": reduced,
        "shadow_empty": len(reduced) == 0,
        "identity": identity,
    }


def profile_range(start: int, end: int, *, top: int, mismatch_limit: int,
                  progress: int | None) -> dict[str, Any]:
    if not (0 <= start <= end <= EXPECTED_PAIR_WORDS):
        raise ValueError("expected 0 <= start <= end <= numPairWords")
    began = time.time()
    confusion = Counter()
    length_counts: Counter[int] = Counter()
    reduced_counts: Counter[str] = Counter()
    mismatch_examples: list[dict[str, Any]] = []
    final_parity_counts: Counter[str] = Counter()

    for offset, rank in enumerate(range(start, end), start=1):
        item = classify_rank(rank)
        shadow_empty = bool(item["shadow_empty"])
        identity = bool(item["identity"])
        if shadow_empty and identity:
            confusion["empty_and_identity"] += 1
        elif shadow_empty and not identity:
            confusion["empty_and_nonidentity"] += 1
        elif not shadow_empty and identity:
            confusion["nonempty_and_identity"] += 1
        else:
            confusion["nonempty_and_nonidentity"] += 1
        reduced = item["reduced"]
        length_counts[len(reduced)] += 1
        reduced_counts[" ".join(reduced) if reduced else "<empty>"] += 1
        final_parity_counts["".join("1" if bit else "0" for bit in item["final_parity"])] += 1
        if shadow_empty != identity and len(mismatch_examples) < mismatch_limit:
            mismatch_examples.append({
                "rank": rank,
                "word": " ".join(item["word"]),
                "reduced": " ".join(reduced),
                "identity": identity,
            })
        if progress and offset % progress == 0:
            elapsed = time.time() - began
            print(
                f"shadow-profile scanned {offset:,}/{end-start:,} "
                f"rank={rank:,} elapsed={elapsed:.1f}s",
                file=sys.stderr,
                flush=True,
            )

    elapsed = time.time() - began
    scanned = end - start
    empty_shadow_count = (
        confusion["empty_and_identity"] + confusion["empty_and_nonidentity"]
    )
    identity_count = (
        confusion["empty_and_identity"] + confusion["nonempty_and_identity"]
    )
    mismatch_count = (
        confusion["empty_and_nonidentity"] + confusion["nonempty_and_identity"]
    )
    return {
        "schema_version": 1,
        "mode": "shadow-normal-form-profile",
        "product_order": "R(w[0]) * ... * R(w[12]) * R(x)",
        "start": start,
        "end": end,
        "scanned": scanned,
        "elapsed_seconds": elapsed,
        "empty_shadow_count": empty_shadow_count,
        "identity_count": identity_count,
        "expected_full_identity_count": EXPECTED_IDENTITY_WORDS,
        "mismatch_count": mismatch_count,
        "confusion": {
            "empty_and_identity": confusion["empty_and_identity"],
            "empty_and_nonidentity": confusion["empty_and_nonidentity"],
            "nonempty_and_identity": confusion["nonempty_and_identity"],
            "nonempty_and_nonidentity": confusion["nonempty_and_nonidentity"],
        },
        "final_parity_distribution": sorted(final_parity_counts.items()),
        "reduced_length_distribution": sorted(length_counts.items()),
        "distinct_reduced_shadows": len(reduced_counts),
        "top_reduced_shadows": reduced_counts.most_common(top),
        "mismatch_examples": mismatch_examples,
    }


def profile_random_samples(count: int, seed: int, *, mismatch_limit: int) -> dict[str, Any]:
    rng = random.Random(seed)
    ranks = sorted(rng.randrange(EXPECTED_PAIR_WORDS) for _ in range(count))
    items = [classify_rank(rank) for rank in ranks]
    mismatches = [
        {
            "rank": item["rank"],
            "word": " ".join(item["word"]),
            "reduced": " ".join(item["reduced"]),
            "identity": item["identity"],
        }
        for item in items
        if item["shadow_empty"] != item["identity"]
    ]
    return {
        "schema_version": 1,
        "mode": "shadow-normal-form-random-samples",
        "seed": seed,
        "sample_count": count,
        "mismatch_count": len(mismatches),
        "mismatch_examples": mismatches[:mismatch_limit],
        "samples": [
            {
                "rank": item["rank"],
                "word": " ".join(item["word"]),
                "reduced": " ".join(item["reduced"]) if item["reduced"] else "<empty>",
                "identity": item["identity"],
            }
            for item in items[: min(count, 25)]
        ],
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--end", type=int)
    parser.add_argument("--limit", type=int, default=10_000)
    parser.add_argument("--top", type=int, default=20)
    parser.add_argument("--mismatch-limit", type=int, default=20)
    parser.add_argument("--progress", type=int)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", type=Path)
    parser.add_argument("--random-samples", type=int, default=0)
    parser.add_argument("--seed", type=int, default=1)
    parser.add_argument("--random-json", type=Path)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    end = args.end if args.end is not None else min(EXPECTED_PAIR_WORDS, args.start + args.limit)
    payload = profile_range(
        args.start,
        end,
        top=args.top,
        mismatch_limit=args.mismatch_limit,
        progress=args.progress,
    )
    if args.json:
        write_json(args.json, payload)
    if args.markdown:
        write_markdown(args.markdown, payload)
    print(json.dumps(payload, indent=2, sort_keys=True))

    if args.random_samples:
        random_payload = profile_random_samples(
            args.random_samples,
            args.seed,
            mismatch_limit=args.mismatch_limit,
        )
        if args.random_json:
            write_json(args.random_json, random_payload)
        print(json.dumps(random_payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
