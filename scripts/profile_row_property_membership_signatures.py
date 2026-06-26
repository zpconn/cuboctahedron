#!/usr/bin/env python3
"""Profile candidate signatures for row-property membership.

Phase 6Z.6K.7 showed that the public row-property theorem surface is already
small; the slow proof obligation is membership in `RowPropertyParametricCovered`.
This script searches for candidate coordinates that may prove that membership
from shared state/signature facts instead of concrete per-rank row
reconstruction.

The output is diagnostic only and is not trusted as proof.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice,
    digest_payload,
)


DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8a_row_property_membership_signatures.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")

FACE_PAIR: dict[str, str] = {
    "xp": "x",
    "xm": "x",
    "yp": "y",
    "ym": "y",
    "zp": "z",
    "zm": "z",
    "tmmm": "d111",
    "tppp": "d111",
    "tmmp": "d11m",
    "tppm": "d11m",
    "tmpm": "d1m1",
    "tpmp": "d1m1",
    "tmpp": "dm11",
    "tpmm": "dm11",
}

FACE_SIGN: dict[str, str] = {
    "xp": "+",
    "yp": "+",
    "zp": "+",
    "tppp": "+",
    "tppm": "+",
    "tpmp": "+",
    "tmpp": "+",
    "xm": "-",
    "ym": "-",
    "zm": "-",
    "tmmm": "-",
    "tmmp": "-",
    "tmpm": "-",
    "tpmm": "-",
}

PAIR_ORDER = ["y", "z", "d111", "d11m", "d1m1", "dm11"]

COUNT_KEYS = [
    "pair_words_scanned",
    "nonidentity_words_skipped",
    "identity_words",
    "translation_sign_assignments",
    "not_good_direction_masks",
    "good_direction_survivors",
    "covered_cases",
    "non_two_source_cases",
    "uncovered_cases",
]

BASELINE_COORDINATES = {
    "theorem_constructor",
    "row_property_parametric",
    "source_agreement",
    "source_row_property",
    "exact_row_shape",
}

PILOT_COORDINATES = [
    "source_kind_row_property",
    "source_index_row_property",
    "source_kind_impact_row_property",
    "source_pair_skeleton_row_property",
    "source_pair_sign_skeleton_row_property",
    "local_word_window_row_property",
    "prefix_count_state_row_property",
]


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def top(counter: Counter[str], limit: int) -> list[dict[str, Any]]:
    return [
        {"key": key, "cases": count}
        for key, count in counter.most_common(limit)
    ]


def mask_bits(mask: int) -> dict[str, int]:
    return {
        pair: (mask >> index) & 1
        for index, pair in enumerate(PAIR_ORDER)
    }


def source_kind(source: dict[str, Any]) -> str:
    return str(source.get("kind", "unknown"))


def source_impact(source: dict[str, Any]) -> str:
    if "impact" in source:
        return str(source["impact"])
    if "index" in source:
        return f"index:{source['index']}"
    return "none"


def source_pair(source: dict[str, Any]) -> str:
    face = source.get("face")
    if isinstance(face, str):
        return FACE_PAIR.get(face, f"face:{face}")
    return "none"


def source_pair_sign(source: dict[str, Any]) -> str:
    face = source.get("face")
    if isinstance(face, str):
        return f"{FACE_PAIR.get(face, f'face:{face}')}:{FACE_SIGN.get(face, '?')}"
    return "none"


def source_kind_skeleton(source: dict[str, Any]) -> dict[str, Any]:
    return {"kind": source_kind(source)}


def source_kind_impact_skeleton(source: dict[str, Any]) -> dict[str, Any]:
    return {
        "kind": source_kind(source),
        "impact": source_impact(source),
    }


def source_pair_skeleton(source: dict[str, Any]) -> dict[str, Any]:
    return {
        "kind": source_kind(source),
        "impact": source_impact(source),
        "pair": source_pair(source),
    }


def source_pair_sign_skeleton(source: dict[str, Any]) -> dict[str, Any]:
    return {
        "kind": source_kind(source),
        "impact": source_impact(source),
        "pairSign": source_pair_sign(source),
    }


def pair_at_impact(word: list[str], impact: int) -> str:
    if impact == 0 or impact == 14:
        return "x"
    if 1 <= impact <= 13:
        return word[impact - 1]
    return "unknown"


def local_word_window(source: dict[str, Any], word: list[str], mask: int) -> dict[str, Any]:
    if "impact" not in source:
        return {"kind": source_kind(source)}
    impact = int(source["impact"])
    bits = mask_bits(mask)
    pairs = {
        "prev": pair_at_impact(word, impact - 1),
        "at": pair_at_impact(word, impact),
        "next": pair_at_impact(word, impact + 1),
    }
    return {
        "kind": source_kind(source),
        "impact": impact,
        "pairs": pairs,
        "maskBits": {
            key: bits[key]
            for key in sorted(set(pairs.values()) & set(bits))
        },
    }


def prefix_counts_state(source: dict[str, Any], word: list[str], mask: int) -> dict[str, Any]:
    if "impact" not in source:
        return {"kind": source_kind(source)}
    impact = int(source["impact"])
    prefix = word[: max(0, min(impact - 1, len(word)))]
    counts = {pair: prefix.count(pair) for pair in ["x", *PAIR_ORDER]}
    at_pair = pair_at_impact(word, impact)
    bits = mask_bits(mask)
    return {
        "kind": source_kind(source),
        "impact": impact,
        "atPair": at_pair,
        "prefixCounts": counts,
        "atMaskBit": bits.get(at_pair, 0),
    }


def key_payload(
    *,
    template_id: str,
    row_property_key: str,
    source_agreement: dict[str, Any],
    word: list[str],
    mask: int,
) -> dict[str, str]:
    sources = source_agreement["sources"]
    indices = source_agreement["indices"]
    payloads: dict[str, Any] = {
        "theorem_constructor": {"template": template_id},
        "row_property_parametric": {
            "template": template_id,
            "rowProperty": row_property_key,
        },
        "source_agreement": {
            "template": template_id,
            "sourceAgreement": source_agreement,
        },
        "source_row_property": {
            "template": template_id,
            "sourceAgreement": source_agreement,
            "rowProperty": row_property_key,
        },
        "source_kind_row_property": {
            "template": template_id,
            "sources": [source_kind_skeleton(source) for source in sources],
            "rowProperty": row_property_key,
        },
        "source_index_row_property": {
            "template": template_id,
            "indices": indices,
            "rowProperty": row_property_key,
        },
        "source_kind_impact_row_property": {
            "template": template_id,
            "sources": [source_kind_impact_skeleton(source) for source in sources],
            "rowProperty": row_property_key,
        },
        "source_pair_skeleton_row_property": {
            "template": template_id,
            "sources": [source_pair_skeleton(source) for source in sources],
            "rowProperty": row_property_key,
        },
        "source_pair_sign_skeleton_row_property": {
            "template": template_id,
            "sources": [source_pair_sign_skeleton(source) for source in sources],
            "rowProperty": row_property_key,
        },
        "local_word_window_row_property": {
            "template": template_id,
            "sources": [
                local_word_window(source, word, mask)
                for source in sources
            ],
            "rowProperty": row_property_key,
        },
        "prefix_count_state_row_property": {
            "template": template_id,
            "sources": [
                prefix_counts_state(source, word, mask)
                for source in sources
            ],
            "rowProperty": row_property_key,
        },
    }
    return {name: digest_payload(payload) for name, payload in payloads.items()}


def scan(rank_start: int, limit: int, family_gate: int) -> dict[str, Any]:
    counts: Counter[str] = Counter({key: 0 for key in COUNT_KEYS})
    coordinate_counts: dict[str, Counter[str]] = defaultdict(Counter)
    samples: dict[str, dict[str, Any]] = {}

    for rank in range(rank_start, rank_start + limit):
        counts["pair_words_scanned"] += 1
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            counts["nonidentity_words_skipped"] += 1
            continue
        counts["identity_words"] += 1
        for mask in range(64):
            counts["translation_sign_assignments"] += 1
            result = classify_choice(rank, mask)
            if result is None:
                raise RuntimeError("identity word unexpectedly classified as nonidentity")
            status = result["status"]
            if status == "not_good_direction":
                counts["not_good_direction_masks"] += 1
                continue
            counts["good_direction_survivors"] += 1
            if status == "non_two_source":
                counts["non_two_source_cases"] += 1
                continue
            if status == "uncovered":
                counts["uncovered_cases"] += 1
                continue
            if status != "covered":
                raise RuntimeError(f"unknown classification status {status!r}")

            counts["covered_cases"] += 1
            sample = result["sample"]
            keys = key_payload(
                template_id=str(result["template_id"]),
                row_property_key=str(result["row_property_key"]),
                source_agreement=sample["source_agreement"],
                word=list(word),
                mask=mask,
            )
            keys["exact_row_shape"] = str(result["candidate_keys"]["exact_row_shape"])
            for name, key in keys.items():
                coordinate_counts[name][key] += 1
                samples.setdefault(f"{name}:{key}", sample)

    coordinate_summary = []
    for name, counter in sorted(coordinate_counts.items()):
        count = len(counter)
        coordinate_summary.append(
            {
                "coordinate": name,
                "families": count,
                "largest_family_cases": counter.most_common(1)[0][1] if counter else 0,
                "mean_cases_per_family": (
                    counts["covered_cases"] / count if count else None
                ),
                "baseline": name in BASELINE_COORDINATES,
                "pilot_candidate": name in PILOT_COORDINATES,
                "top_families": top(counter, 12),
            }
        )

    pilot_summaries = [
        row for row in coordinate_summary if row["pilot_candidate"]
    ]
    best_pilot = min(
        pilot_summaries,
        key=lambda row: (int(row["families"]), str(row["coordinate"])),
        default=None,
    )
    if counts["non_two_source_cases"] or counts["uncovered_cases"]:
        status = "reject-uncovered-good-direction-survivors"
        notes = ["some GoodDirection survivors are not covered by two-source templates"]
    elif best_pilot is not None and int(best_pilot["families"]) <= family_gate:
        status = "needs-targeted-lean-pilot"
        notes = [
            "a non-exact membership coordinate is below the configured family gate",
            "next step should prove a small Lean smoke for that coordinate before scaling",
        ]
    else:
        status = "reject-signature-coordinates"
        notes = [
            "all profiled non-exact membership coordinates exceed the configured family gate",
            "promote a stronger word/state or denominator-signature membership theorem",
        ]

    return {
        "schema_version": 1,
        "mode": "phase6z6k8a_row_property_membership_signatures",
        "trusted_as_proof": False,
        "rank_start": rank_start,
        "rank_end": rank_start + limit,
        "limit": limit,
        "family_gate": family_gate,
        "counts": dict(counts),
        "coordinate_summary": coordinate_summary,
        "best_pilot_coordinate": best_pilot,
        "decision": {
            "status": status,
            "notes": notes,
        },
    }


def markdown(payload: dict[str, Any]) -> str:
    counts = payload["counts"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6K.8A Row-Property Membership Signatures",
        "",
        "This diagnostic is not trusted as proof. It profiles candidate",
        "state/signature coordinates for proving `RowPropertyParametricCovered`",
        "without per-rank row reconstruction.",
        "",
        f"- Rank window: `[{payload['rank_start']}, {payload['rank_end']})`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Uncovered/non-two-source cases: `{counts['uncovered_cases'] + counts['non_two_source_cases']}`",
        f"- Family gate: `{payload['family_gate']}`",
        "",
        "## Decision",
        "",
        f"- Status: `{decision['status']}`",
    ]
    best = payload.get("best_pilot_coordinate")
    if best:
        lines.append(
            f"- Best pilot coordinate: `{best['coordinate']}` "
            f"with `{best['families']}` families"
        )
    for note in decision["notes"]:
        lines.append(f"- {note}")

    lines.extend([
        "",
        "## Coordinate Counts",
        "",
        "| Coordinate | Families | Largest | Mean cases/family | Role |",
        "| --- | ---: | ---: | ---: | --- |",
    ])
    for row in sorted(
        payload["coordinate_summary"],
        key=lambda item: (int(item["families"]), str(item["coordinate"])),
    ):
        role = "pilot" if row["pilot_candidate"] else "baseline"
        mean = row["mean_cases_per_family"]
        lines.append(
            f"| `{row['coordinate']}` | {row['families']} | "
            f"{row['largest_family_cases']} | "
            f"{mean:.2f} | {role} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--family-gate", type=int, default=200)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    if args.rank_start < 0:
        parser.error("--rank-start must be nonnegative")
    if args.limit <= 0:
        parser.error("--limit must be positive")
    if args.family_gate <= 0:
        parser.error("--family-gate must be positive")

    payload = scan(args.rank_start, args.limit, args.family_gate)
    write_json(args.json, payload)
    write_text(args.md, markdown(payload))
    best = payload.get("best_pilot_coordinate")
    best_text = "none"
    if best:
        best_text = f"{best['coordinate']} ({best['families']} families)"
    print(
        "row-property membership signatures: "
        f"{payload['decision']['status']} over "
        f"[{payload['rank_start']}, {payload['rank_end']}); "
        f"best={best_text}"
    )


if __name__ == "__main__":
    main()
