#!/usr/bin/env python3
"""Profile AP.16V candidate reuse across positive-survivor signatures.

AP.16T/AP.16U show that a per-signature precomputed fact bundle is
Lean-checkable for one singleton signature, but AP.16U only saves 44 lines by
sharing rank facts inside that signature.  This profiler asks the next scaling
question before emitting more Lean:

* how many positive-survivor signatures reuse the same source/row candidates?
* how many signature modules would a per-signature route create?
* how many shared candidate facts would a candidate-module route need?

The output is diagnostic only and not trusted as proof.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16i_positive_survivor_membership.json"
)
DEFAULT_JSON = Path("scripts/generated/phase6z6k8ap16v_candidate_reuse.json")
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_md(path: Path, report: dict[str, Any]) -> None:
    counts = report["counts"]
    projections = report["projections"]
    lines = [
        "# AP.16V Candidate Reuse Profile",
        "",
        "This report is diagnostic only. It measures whether the AP.16 positive",
        "survivor route should emit per-signature fact bundles or shared candidate",
        "modules. It is not proof evidence.",
        "",
        "## Counts",
        "",
        f"- positive candidate groups: {counts['positive_candidate_groups']}",
        f"- positive survivor signatures: {counts['positive_survivor_signatures']}",
        f"- total signature-rank cases: {counts['signature_rank_cases']}",
        f"- total signature good-mask cases: {counts['signature_good_mask_cases']}",
        f"- total candidate good-mask cases: {counts['candidate_good_mask_cases']}",
        f"- unique good-mask sets: {counts['unique_good_mask_sets']}",
        f"- unique candidate sets ignoring masks: {counts['unique_candidate_sets']}",
        "",
        "## Reuse",
        "",
        f"- mean signatures per candidate occurrence: {projections['mean_signatures_per_candidate']:.3f}",
        f"- candidate groups / signatures ratio: {projections['candidate_to_signature_ratio']:.3f}",
        f"- projected shared-candidate module count: {projections['shared_candidate_modules']}",
        f"- projected per-signature module count: {projections['per_signature_modules']}",
        f"- projected signature-to-candidate reduction: {projections['signature_to_candidate_reduction']:.3f}x",
        "",
        "## Histograms",
        "",
        "### candidates per signature",
        "",
    ]
    for key, value in report["histograms"]["candidates_per_signature"].items():
        lines.append(f"- {key}: {value}")
    lines.extend(["", "### signatures per candidate", ""])
    for key, value in report["histograms"]["signatures_per_candidate"].items():
        lines.append(f"- {key}: {value}")
    lines.extend(["", "## Top Candidates By Signature Reuse", ""])
    for item in report["top_candidates_by_signature_count"]:
        lines.append(
            f"- `{item['key'][:12]}...`: signatures={item['signature_count']}, "
            f"cases={item['case_count']}, masks={item['mask_count']}, "
            f"templates={','.join(item['template_ids'])}"
        )
    lines.extend(["", "## Decision", "", report["decision"], ""])
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(lines), encoding="utf-8")


def signature_candidate_keys(signature: dict[str, Any]) -> list[str]:
    keys: set[str] = set()
    for candidates in signature["mask_candidates"].values():
        keys.update(str(candidate) for candidate in candidates)
    return sorted(keys)


def profile(data: dict[str, Any]) -> dict[str, Any]:
    candidates = data.get("positive_candidate_catalog", [])
    signatures = data.get("positive_survivor_signature_catalog", [])
    candidate_by_key = {str(candidate["key"]): candidate for candidate in candidates}

    candidate_to_signatures: dict[str, set[str]] = defaultdict(set)
    candidate_to_masks: dict[str, set[int]] = defaultdict(set)
    candidate_occurrences: Counter[str] = Counter()
    candidates_per_signature: Counter[str] = Counter()
    good_mask_sets: Counter[str] = Counter()
    candidate_sets: Counter[str] = Counter()

    signature_rank_cases = 0
    signature_good_mask_cases = 0
    for signature in signatures:
        sig_key = str(signature["key"])
        rank_count = int(signature["rank_count"])
        good_masks = [int(mask) for mask in signature["good_masks"]]
        signature_rank_cases += rank_count
        signature_good_mask_cases += int(signature["case_count"])
        good_mask_sets[",".join(str(mask) for mask in good_masks)] += 1

        candidate_keys = signature_candidate_keys(signature)
        candidate_sets[",".join(candidate_keys)] += 1
        candidates_per_signature[str(len(candidate_keys))] += 1
        for mask_text, keys in signature["mask_candidates"].items():
            mask = int(mask_text)
            for key in keys:
                key = str(key)
                if key not in candidate_by_key:
                    raise SystemExit(f"signature {sig_key} references unknown candidate {key}")
                candidate_to_signatures[key].add(sig_key)
                candidate_to_masks[key].add(mask)
                candidate_occurrences[key] += 1

    signatures_per_candidate_hist = Counter(
        str(len(candidate_to_signatures[str(candidate["key"])]))
        for candidate in candidates
    )
    candidate_good_mask_cases = sum(int(candidate["case_count"]) for candidate in candidates)
    top_candidates = []
    for candidate in candidates:
        key = str(candidate["key"])
        top_candidates.append({
            "key": key,
            "signature_count": len(candidate_to_signatures[key]),
            "mask_count": len(candidate_to_masks[key]),
            "case_count": int(candidate["case_count"]),
            "template_ids": list(candidate.get("template_ids", [])),
            "source_positions": candidate.get("source_positions", []),
        })
    top_candidates.sort(
        key=lambda item: (-int(item["signature_count"]), -int(item["case_count"]), item["key"])
    )

    signature_count = len(signatures)
    candidate_count = len(candidates)
    mean_signatures_per_candidate = (
        sum(len(candidate_to_signatures[str(candidate["key"])]) for candidate in candidates)
        / candidate_count
        if candidate_count
        else 0.0
    )
    reduction = signature_count / candidate_count if candidate_count else 0.0
    decision = (
        "Candidate reuse is strong enough to reject further per-signature "
        "micro-factoring: the next Lean emitter should factor source/row "
        "candidate facts into shared modules and leave only compact "
        "signature-to-candidate routing in signature chunks."
        if reduction >= 2.0
        else
        "Candidate reuse is weak in this profile; shared candidate modules are "
        "not yet justified without another compression coordinate."
    )

    return {
        "phase": "6Z.6K.8AP.16V",
        "trusted_as_proof": False,
        "input_profile": str(DEFAULT_PROFILE),
        "counts": {
            "positive_candidate_groups": candidate_count,
            "positive_survivor_signatures": signature_count,
            "signature_rank_cases": signature_rank_cases,
            "signature_good_mask_cases": signature_good_mask_cases,
            "candidate_good_mask_cases": candidate_good_mask_cases,
            "unique_good_mask_sets": len(good_mask_sets),
            "unique_candidate_sets": len(candidate_sets),
        },
        "histograms": {
            "candidates_per_signature": dict(sorted(candidates_per_signature.items(), key=lambda kv: int(kv[0]))),
            "signatures_per_candidate": dict(sorted(signatures_per_candidate_hist.items(), key=lambda kv: int(kv[0]))),
            "good_mask_sets": dict(good_mask_sets.most_common(20)),
            "candidate_sets": dict(candidate_sets.most_common(20)),
        },
        "projections": {
            "per_signature_modules": signature_count,
            "shared_candidate_modules": candidate_count,
            "mean_signatures_per_candidate": mean_signatures_per_candidate,
            "candidate_to_signature_ratio": candidate_count / signature_count if signature_count else 0.0,
            "signature_to_candidate_reduction": reduction,
        },
        "top_candidates_by_signature_count": top_candidates[:20],
        "decision": decision,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    data = json.loads(args.profile.read_text(encoding="utf-8"))
    report = profile(data)
    report["input_profile"] = str(args.profile)
    write_json(args.json, report)
    write_md(args.md, report)
    print(json.dumps({
        "positive_candidate_groups": report["counts"]["positive_candidate_groups"],
        "positive_survivor_signatures": report["counts"]["positive_survivor_signatures"],
        "signature_to_candidate_reduction": report["projections"]["signature_to_candidate_reduction"],
        "mean_signatures_per_candidate": report["projections"]["mean_signatures_per_candidate"],
        "decision": report["decision"],
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
