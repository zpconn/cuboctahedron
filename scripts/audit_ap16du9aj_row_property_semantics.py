#!/usr/bin/env python3
"""Audit the semantic content hidden behind DU.9 row-property digests.

The DU.9 selector coordinate currently uses an opaque generated
`RowPropertyDigest`.  That is useful for profiling, but it is not the theorem
surface we want Lean to prove.  This audit reconstructs the actual row-property
payload behind each digest from the two source rows:

* row roles such as `eq_eq_pos`, `opp_neg`, or `fixed(1,-1)`;
* the weighted-zero facts for the `a` and `b` coefficients;
* the weighted non-positive `c` fact; and
* any diamond obstruction rows recorded by the classifier.

The output is planning telemetry only, not proof evidence.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

from generate_source_index_state_nonenum_smoke import collect_families
from profile_symbolic_row_extraction_families import (
    diamond_obstructions,
    digest_payload,
    row_property_payload,
)


DEFAULT_PROFILE = Path("scripts/generated/phase6z6k8ap16du2_source_index_state_classifier_profile.json")
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16du9aj_row_property_semantics_audit.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def payload_for_member(member: Any) -> dict[str, Any]:
    symbolic = member.symbolic
    case = symbolic.case
    return row_property_payload(
        template_id=symbolic.template_id,
        first_line=case.first_line,
        second_line=case.second_line,
        multipliers=case.multipliers,
        diamond_matches=diamond_obstructions(case.first_line, case.second_line),
    )


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--top", type=int, default=12)
    args = parser.parse_args()

    profile = read_json(args.profile)
    rank_start = int(profile["rank_start"])
    rank_end = int(profile["rank_end"])
    families, counts = collect_families(rank_start=rank_start, limit=rank_end - rank_start)

    digest_counts: Counter[str] = Counter()
    role_counts: Counter[tuple[str, str, str]] = Counter()
    digest_payloads: dict[str, dict[str, Any]] = {}
    digest_mismatches: list[dict[str, Any]] = []
    nonsemantic_payloads: list[dict[str, Any]] = []
    by_template: dict[str, Counter[str]] = defaultdict(Counter)

    for family in families:
        for member in family.members:
            payload = payload_for_member(member)
            digest = digest_payload(payload)
            digest_counts[digest] += 1
            digest_payloads.setdefault(digest, payload)
            by_template[str(payload["template_id"])][digest] += 1
            role_counts[
                (
                    str(payload["template_id"]),
                    str(payload["first_role"]),
                    str(payload["second_role"]),
                )
            ] += 1

            if digest != family.row_property_key:
                digest_mismatches.append(
                    {
                        "rank": member.symbolic.case.rank,
                        "mask": member.symbolic.case.mask,
                        "family_key": family.key,
                        "family_row_property_key": family.row_property_key,
                        "recomputed_digest": digest,
                        "payload": payload,
                    }
                )

            if (
                payload["weighted_zero"] != [True, True]
                or payload["weighted_c_nonpos"] is not True
            ):
                nonsemantic_payloads.append(
                    {
                        "rank": member.symbolic.case.rank,
                        "mask": member.symbolic.case.mask,
                        "digest": digest,
                        "payload": payload,
                    }
                )

    top_digests = [
        {
            "digest": digest,
            "case_count": count,
            "payload": digest_payloads[digest],
        }
        for digest, count in digest_counts.most_common(args.top)
    ]
    top_roles = [
        {
            "template": key[0],
            "first_role": key[1],
            "second_role": key[2],
            "case_count": count,
        }
        for key, count in role_counts.most_common(args.top)
    ]

    payload = {
        "schema_version": 1,
        "phase": "6Z.6K.8AP.16DU.9AJ",
        "mode": "row_property_semantics_audit",
        "trusted_as_proof": False,
        "range": [rank_start, rank_end],
        "counts": counts,
        "family_count": len(families),
        "row_property_digest_count": len(digest_counts),
        "digest_mismatch_count": len(digest_mismatches),
        "nonsemantic_payload_count": len(nonsemantic_payloads),
        "template_digest_counts": {
            template: len(counter)
            for template, counter in sorted(by_template.items())
        },
        "top_digests": top_digests,
        "top_role_shapes": top_roles,
        "digest_mismatches": digest_mismatches[: args.top],
        "nonsemantic_payloads": nonsemantic_payloads[: args.top],
        "decision": {
            "status": (
                "row-property-digests-match-semantic-payloads"
                if not digest_mismatches and not nonsemantic_payloads
                else "row-property-digest-semantic-gap"
            ),
            "notes": [
                "This is not proof evidence.",
                "The audit shows whether the opaque RowPropertyDigest can be replaced by a small semantic row-property descriptor.",
                "The next Lean-producing step should expose/prove semantic row-property predicates, not compare hashes.",
            ],
        },
    }
    write_json(args.json, payload)

    md = [
        "# Phase 6Z.6K.8AP.16DU.9AJ row-property semantics audit",
        "",
        "This report is not proof evidence. It reconstructs the semantic row",
        "payload behind each bounded DU.9 `RowPropertyDigest`.",
        "",
        f"- Status: `{payload['decision']['status']}`",
        f"- Range: `[{rank_start}, {rank_end})`",
        f"- Source-index/state families: `{len(families)}`",
        f"- Row-property digests: `{len(digest_counts)}`",
        f"- Digest mismatches: `{len(digest_mismatches)}`",
        f"- Nonsemantic payloads: `{len(nonsemantic_payloads)}`",
        "",
        "## Template Digest Counts",
        "",
        "| Template | Digest count |",
        "| --- | ---: |",
    ]
    for template, count in payload["template_digest_counts"].items():
        md.append(f"| `{template}` | `{count}` |")

    md.extend([
        "",
        "## Top Role Shapes",
        "",
        "| Template | First role | Second role | Cases |",
        "| --- | --- | --- | ---: |",
    ])
    for row in top_roles:
        md.append(
            f"| `{row['template']}` | `{row['first_role']}` | "
            f"`{row['second_role']}` | `{row['case_count']}` |"
        )

    md.extend([
        "",
        "## Decision",
        "",
        "The digest is a profiling label for a small row-property payload: row",
        "roles plus the weighted Farkas facts. The next theorem surface should",
        "make those row-property predicates explicit in Lean and use them to",
        "produce `SourceIndexStateRowFacts` or `SourceIndexTemplate.Rows`.",
        "",
    ])
    args.md.write_text("\n".join(md), encoding="utf-8")

    print(json.dumps({
        "status": payload["decision"]["status"],
        "row_property_digest_count": len(digest_counts),
        "digest_mismatch_count": len(digest_mismatches),
        "nonsemantic_payload_count": len(nonsemantic_payloads),
        "json": str(args.json),
        "md": str(args.md),
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
