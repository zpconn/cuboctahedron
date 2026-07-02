#!/usr/bin/env python3
"""Compose Bellman closure and bad-face completion audits.

This is untrusted diagnostic infrastructure.  The raw target-pairing closure
audit intentionally over-approximates the semantic language.  The missing
transition completion audit can show that every remaining over-approximate
transition is excluded by the generated sequence bad-face predicate.  This
script turns those two artifacts into an explicit adjusted closure gate for the
next Lean/generator step.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any


def read_json(path: Path) -> dict[str, Any]:
    return json.loads(path.read_text())


def fmt_int(value: Any) -> str:
    return f"{int(value):,}"


def build_payload(*, closure_path: Path, missing_path: Path) -> dict[str, Any]:
    closure = read_json(closure_path)
    missing = read_json(missing_path)

    missing_before = int(closure["total_missing_transitions"])
    illegal_before = int(closure["total_illegal_transitions"])
    legal_before = int(closure["total_target_legal_transitions"])
    observed = int(closure["total_observed_face_transitions"])
    matched = int(missing.get("total_matched_top_family", 0))
    truncated = int(missing.get("truncated_gaps", 0))
    completions = int(missing.get("total_completions", 0))
    bad_face_closes = bool(missing.get("canonical_bad_face_filter_would_close"))

    sequence_bad_face_filter_sound_for_gaps = (
        bad_face_closes and matched == 0 and truncated == 0 and completions > 0
    )
    missing_after = 0 if sequence_bad_face_filter_sound_for_gaps else missing_before
    legal_after = (
        legal_before - missing_before
        if sequence_bad_face_filter_sound_for_gaps
        else legal_before
    )
    illegal_after = illegal_before
    closed_after = (
        missing_after == 0
        and illegal_after == 0
        and legal_after == observed
    )

    decision = (
        "closed-after-sequence-bad-face"
        if closed_after
        else "not-closed-after-sequence-bad-face"
    )
    recommendation = (
        "The target-pairing/schedule/local-axis language becomes closed after "
        "filtering the sole remaining over-approximate transitions by the "
        "generated sequence bad-face predicate.  The next Lean step can emit a "
        "finite invariant table for the face evaluator with this strengthened "
        "semantic premise."
        if closed_after
        else "Do not emit the finite invariant table yet.  Either the missing "
        "transition audit found top-family matches, truncation, or remaining "
        "illegal/missing transitions after the bad-face filter."
    )

    return {
        "mode": "bellman-target-pairing-closure-with-sequence-bad-face",
        "closure_input": str(closure_path),
        "missing_completion_input": str(missing_path),
        "target_pairing": closure.get("target_pairing"),
        "schedule_mode": closure.get("schedule_mode"),
        "forced_axis": closure.get("forced_axis"),
        "state_count": int(closure["state_count"]),
        "edge_count": int(closure["edge_count"]),
        "observed_transitions": observed,
        "legal_before_sequence_bad_face": legal_before,
        "missing_before_sequence_bad_face": missing_before,
        "illegal_before_sequence_bad_face": illegal_before,
        "missing_completion_count": completions,
        "missing_completion_matches_top_family": matched,
        "missing_completion_truncated_gaps": truncated,
        "sequence_bad_face_filter_sound_for_gaps": sequence_bad_face_filter_sound_for_gaps,
        "legal_after_sequence_bad_face": legal_after,
        "missing_after_sequence_bad_face": missing_after,
        "illegal_after_sequence_bad_face": illegal_after,
        "closed_after_sequence_bad_face": closed_after,
        "decision": decision,
        "recommendation": recommendation,
    }


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Bellman Target-Pairing Closure With Sequence Bad-Face Filter",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Inputs",
        "",
        f"- Closure: `{payload['closure_input']}`",
        f"- Missing-transition completions: `{payload['missing_completion_input']}`",
        "",
        "## Target",
        "",
        f"- Pairing: `{payload['target_pairing']}`",
        f"- Schedule mode: `{payload['schedule_mode']}`",
        f"- Forced axis: `{payload['forced_axis']}`",
        "",
        "## Adjusted Closure Metrics",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ]
    for key in [
        "state_count",
        "edge_count",
        "observed_transitions",
        "legal_before_sequence_bad_face",
        "missing_before_sequence_bad_face",
        "illegal_before_sequence_bad_face",
        "missing_completion_count",
        "missing_completion_matches_top_family",
        "missing_completion_truncated_gaps",
        "sequence_bad_face_filter_sound_for_gaps",
        "legal_after_sequence_bad_face",
        "missing_after_sequence_bad_face",
        "illegal_after_sequence_bad_face",
        "closed_after_sequence_bad_face",
    ]:
        value = payload[key]
        rendered = value if isinstance(value, bool) else fmt_int(value)
        lines.append(f"| `{key}` | `{rendered}` |")
    lines.append("")
    path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--closure", type=Path, required=True)
    parser.add_argument("--missing", type=Path, required=True)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = build_payload(closure_path=args.closure, missing_path=args.missing)
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        args.json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_markdown(payload, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
