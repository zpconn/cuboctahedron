#!/usr/bin/env python3
"""Audit Bellman closure-gap completions against the exact top-family filter.

This is untrusted diagnostic infrastructure.  It reads a Bellman graph and a
target-pairing closure audit, enumerates completions for each reported missing
transition under the same target/schedule over-approximation, and then runs the
exact nonidentity top-family classifier on each full contribution-order word.

The purpose is to determine whether a missing transition is a real production
language obligation or only an over-approximation artifact.  Lean must still
check any final family theorem.
"""

from __future__ import annotations

import argparse
from collections import Counter, defaultdict
from fractions import Fraction
import json
from pathlib import Path
import sys
from typing import Any, Iterable

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from audit_bellman_target_pairing_closure import (  # noqa: E402
    advance,
    cancellation_key,
    face_from_label,
    legal_next_faces_for_target,
    observed_allowed_faces_by_step,
    observed_allowed_square_faces_by_gap,
    parse_face_counts,
    parse_parity,
    parse_step,
    parse_target_pairing,
    parse_tri_sources,
    replay_tri_sources,
    target_pairing_from_key,
)
from direct_start_linear_profile import (  # noqa: E402
    direct_system_for_aff,
    margin_linear_form,
    margin_linear_form_key,
)
from direct_start_offset_family_profile import (  # noqa: E402
    offset_contributions,
    shadow_cancellation_keys,
)
from exact_profile import (  # noqa: E402
    FACE_ORDER,
    FACE_TO_PAIR_SIGN,
    IDENTITY,
    PAIR_COUNTS,
    RPAIR,
    lex_rank_pair_word,
    mat_mul,
    one_dimensional_fixed_axis,
    prefix_matrices,
    total_aff,
)
from forced_axis_sign_profile import (  # noqa: E402
    neg_vec,
    normalized_axis_key,
    orientation_stage,
    reduced_shadow_key,
    write_json,
    write_text,
)
from nonidentity_margin_bellman_profile import (  # noqa: E402
    TOP_PAIRING,
    contribution_state_path,
)
from nonidentity_residual_axis_profile import d4_projective_axis_key  # noqa: E402
from profile_symmetry_compression import terminal_axis_candidate_algebra_failure  # noqa: E402
from shadow_normal_form_profile import shadow_scan  # noqa: E402


def contribution_to_seq(contribution_faces: list[str]) -> list[str] | None:
    if len(contribution_faces) != 14:
        return None
    seq = [contribution_faces[-1], *contribution_faces[:-1]]
    if seq[0] != "xp":
        return None
    if sorted(seq) != sorted(FACE_ORDER):
        return None
    return seq


def seq_to_pair_word(seq: list[str]) -> tuple[str, ...] | None:
    if len(seq) != 14 or seq[0] != "xp":
        return None
    word = tuple(FACE_TO_PAIR_SIGN[seq[index]][0] for index in range(1, 14))
    counts = {pair_id: 0 for pair_id in PAIR_COUNTS}
    for pair_id in word:
        counts[pair_id] += 1
    if counts != PAIR_COUNTS:
        return None
    return word


def classify_completion(
    contribution_faces: list[str],
    *,
    target_bad_face: str,
    target_axis_d4: str,
    target_margin_cancellation_pairing: str,
    state_key_mode: str,
) -> tuple[str, dict[str, Any]]:
    seq = contribution_to_seq(contribution_faces)
    if seq is None:
        return "not_omni_contribution_sequence", {}
    word = seq_to_pair_word(seq)
    if word is None:
        return "invalid_pair_word_counts", {"seq": " ".join(seq)}

    _parity, _shadow, reduced = shadow_scan(list(word))
    if not reduced:
        return "translation_empty_shadow", {"word": ",".join(word)}

    pref = prefix_matrices(list(word))
    matrix = mat_mul(pref[-1], RPAIR["x"])
    if matrix == IDENTITY:
        return "translation_total_linear_identity", {"word": ",".join(word)}

    try:
        raw_axis = one_dimensional_fixed_axis(matrix)
    except ValueError:
        return "no_one_dimensional_fixed_axis", {"word": ",".join(word)}

    positive_results = []
    stages = Counter()
    for oriented_axis in (raw_axis, neg_vec(raw_axis)):
        stage, details = orientation_stage(word, pref, oriented_axis)
        stages[stage] += 1
        if stage != "final_dot_nonpositive":
            positive_results.append((oriented_axis, stage, details))
    if not positive_results:
        return "both_orientations_final_dot_nonpositive", {"stages": dict(stages)}

    oriented_axis, stage, details = positive_results[0]
    if stage != "forced_balance_survivor":
        return f"orientation_{stage}", {"stages": dict(stages)}

    forced_seq = list(details["forced_seq"])
    forced_contribution_faces = [forced_seq[i] for i in list(range(1, 14)) + [0]]
    if forced_contribution_faces != contribution_faces:
        return "forced_sequence_mismatch", {
            "candidate_contribution_faces": " ".join(contribution_faces),
            "forced_contribution_faces": " ".join(forced_contribution_faces),
        }

    failure, failure_details, _family_key = terminal_axis_candidate_algebra_failure(
        forced_seq,
        oriented_axis,
    )
    if failure != "axis_misses_start_interior":
        return f"terminal_{failure}", {"failure_details": failure_details}

    canonical_bad_face = failure_details.get(
        "canonical_bad_face",
        failure_details.get("bad_face", "?"),
    )
    oriented_axis_key = normalized_axis_key(oriented_axis)
    axis_d4 = d4_projective_axis_key(oriented_axis_key)
    if canonical_bad_face != target_bad_face:
        return "canonical_bad_face_mismatch", {
            "canonical_bad_face": canonical_bad_face,
            "target_bad_face": target_bad_face,
            "axis_d4": axis_d4,
        }
    if axis_d4 != target_axis_d4:
        return "axis_d4_mismatch", {
            "axis_d4": axis_d4,
            "target_axis_d4": target_axis_d4,
            "canonical_bad_face": canonical_bad_face,
        }

    aff = total_aff(forced_seq)
    rows, _rhs = direct_system_for_aff(aff)
    actual_bad_face = failure_details.get("bad_face", "?")
    form = margin_linear_form(aff, actual_bad_face, rows)
    if form is None:
        return "margin_linear_form_none", {
            "bad_face": actual_bad_face,
            "axis": oriented_axis_key,
        }
    margin_key = margin_linear_form_key(aff, actual_bad_face, rows)
    const, coeff_b = form
    _aff_matrix, aff_offset = aff
    contributions = offset_contributions(forced_seq, coeff_b)
    contrib_sum = sum((item["value"] for item in contributions), Fraction(0))
    expected_sum = sum(coeff_b[i] * aff_offset[i] for i in range(3))
    if contrib_sum != expected_sum:
        return "offset_sum_mismatch", {
            "contrib_sum": str(contrib_sum),
            "expected_sum": str(expected_sum),
        }
    margin_value = const + contrib_sum

    cancel_keys = shadow_cancellation_keys(word)
    margin_cancellation_pairing_key = f"{margin_key}|{cancel_keys['cancellation_pairing']}"
    if margin_cancellation_pairing_key != target_margin_cancellation_pairing:
        return "margin_cancellation_pairing_mismatch", {
            "margin_cancellation_pairing": margin_cancellation_pairing_key,
            "target": target_margin_cancellation_pairing,
        }

    gains = [item["value"] for item in contributions]
    states, edges, edge_labels = contribution_state_path(
        forced_seq,
        gains,
        state_key_mode=state_key_mode,
    )
    rank = lex_rank_pair_word(list(word))
    return "matched_top_family", {
        "rank": rank,
        "word": ",".join(word),
        "seq": " ".join(forced_seq),
        "axis": oriented_axis_key,
        "axis_d4": axis_d4,
        "reduced": reduced_shadow_key(reduced),
        "bad_face": actual_bad_face,
        "margin_value": str(margin_value),
        "states": len(states),
        "edges": len(edges),
        "edge_labels": edge_labels,
    }


def labels_by_index(graph: dict[str, Any]) -> dict[int, str]:
    return {int(row["index"]): str(row["key"]) for row in graph["labels"]}


def prefixes_by_state(graph: dict[str, Any]) -> dict[int, set[tuple[str, ...]]]:
    labels = labels_by_index(graph)
    out: dict[int, set[tuple[str, ...]]] = defaultdict(set)
    out[0].add(tuple())
    for obj in graph.get("path_objects", []):
        state = 0
        prefix: list[str] = []
        for edge_idx, label_idx in zip(obj.get("edge_indices", []), obj.get("label_indices", [])):
            edge = graph["edges"][int(edge_idx)]
            if int(edge["src"]) != state:
                break
            prefix.append(face_from_label(labels[int(label_idx)]))
            state = int(edge["dst"])
            out[state].add(tuple(prefix))
    return out


def enumerate_completions(
    *,
    graph: dict[str, Any],
    target_pairing: str,
    prefix_faces: list[str],
    state_key: str,
    first_face: str,
    schedule_mode: str,
    max_completions: int,
) -> tuple[list[list[str]], bool]:
    allowed_faces_by_step = (
        observed_allowed_faces_by_step(graph)
        if schedule_mode in ("observed", "observed+square-gap")
        else None
    )
    allowed_square_faces_by_gap = (
        observed_allowed_square_faces_by_gap(graph)
        if schedule_mode in ("observed-square-gap", "observed+square-gap")
        else None
    )

    counts = parse_face_counts(state_key)
    if counts is None:
        return [], False
    step = parse_step(state_key)
    parity = parse_parity(state_key)
    tri_sources = parse_tri_sources(state_key)
    stack, cancellations, shadow_len = replay_tri_sources(tri_sources)

    counts, step, parity, stack, cancellations, shadow_len = advance(
        counts=counts,
        step=step,
        parity=parity,
        stack=stack,
        cancellations=cancellations,
        shadow_len=shadow_len,
        face=first_face,
    )

    completions: list[list[str]] = []
    truncated = False

    def rec(
        counts0: tuple[int, ...],
        step0: int,
        parity0: tuple[bool, bool, bool],
        stack0: tuple[tuple[str, int], ...],
        cancellations0: tuple[tuple[int, int, str], ...],
        shadow_len0: int,
        faces0: list[str],
    ) -> None:
        nonlocal truncated
        if len(completions) >= max_completions:
            truncated = True
            return
        if sum(counts0) == 0:
            if cancellation_key(cancellations0, stack0) == target_pairing:
                completions.append(faces0.copy())
            return
        legal = legal_next_faces_for_target(
            counts=counts0,
            step=step0,
            parity=parity0,
            stack=stack0,
            cancellations=cancellations0,
            shadow_len=shadow_len0,
            target_pairing=target_pairing,
            allowed_faces_by_step=allowed_faces_by_step,
            allowed_square_faces_by_gap=allowed_square_faces_by_gap,
        )
        for face in sorted(legal):
            nxt = advance(
                counts=counts0,
                step=step0,
                parity=parity0,
                stack=stack0,
                cancellations=cancellations0,
                shadow_len=shadow_len0,
                face=face,
            )
            rec(*nxt, [*faces0, face])
            if truncated:
                return

    rec(counts, step, parity, stack, cancellations, shadow_len, [*prefix_faces, first_face])
    return completions, truncated


def audit(
    *,
    graph_path: Path,
    closure_path: Path,
    target: str,
    schedule_mode: str,
    state_key_mode: str,
    max_completions_per_gap: int,
    sample_limit: int,
) -> dict[str, Any]:
    graph_payload = json.loads(graph_path.read_text())
    closure_payload = json.loads(closure_path.read_text())
    graph = graph_payload["graph"]
    prefixes = prefixes_by_state(graph)
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}
    target_pairing = target_pairing_from_key(target)
    # Validate target parsing early; the recursion uses the raw target string.
    parse_target_pairing(target_pairing)

    rows: list[dict[str, Any]] = []
    aggregate_reasons: Counter[str] = Counter()
    total_completions = 0
    total_matches = 0
    truncated_gaps = 0
    for problem in closure_payload.get("top_problem_states", []):
        state_idx = int(problem["state"])
        state_key = states[state_idx]
        prefix_options = sorted(prefixes.get(state_idx, set()))
        for missing_face in problem.get("missing_faces", []):
            row_reasons: Counter[str] = Counter()
            samples: list[dict[str, Any]] = []
            match_samples: list[dict[str, Any]] = []
            row_completions = 0
            row_matches = 0
            row_truncated = False
            for prefix in prefix_options:
                completions, truncated = enumerate_completions(
                    graph=graph,
                    target_pairing=target_pairing,
                    prefix_faces=list(prefix),
                    state_key=state_key,
                    first_face=str(missing_face),
                    schedule_mode=schedule_mode,
                    max_completions=max_completions_per_gap,
                )
                row_truncated = row_truncated or truncated
                for contribution_faces in completions:
                    reason, details = classify_completion(
                        contribution_faces,
                        target_bad_face="yp",
                        target_axis_d4="1,-3,-1",
                        target_margin_cancellation_pairing=target,
                        state_key_mode=state_key_mode,
                    )
                    row_reasons[reason] += 1
                    aggregate_reasons[reason] += 1
                    row_completions += 1
                    if reason == "matched_top_family":
                        row_matches += 1
                        if len(match_samples) < sample_limit:
                            match_samples.append(details)
                    elif len(samples) < sample_limit:
                        samples.append({
                            "reason": reason,
                            "contribution_faces": " ".join(contribution_faces),
                            "details": details,
                        })
                if row_truncated:
                    break
            total_completions += row_completions
            total_matches += row_matches
            if row_truncated:
                truncated_gaps += 1
            rows.append(
                {
                    "state": state_idx,
                    "missing_face": missing_face,
                    "prefix_count": len(prefix_options),
                    "completion_count": row_completions,
                    "matched_top_family": row_matches,
                    "truncated": row_truncated,
                    "reason_histogram": dict(row_reasons.most_common()),
                    "sample_nonmatches": samples,
                    "sample_matches": match_samples,
                    "state_key": state_key,
                    "prefix_samples": [" ".join(prefix) for prefix in prefix_options[:sample_limit]],
                }
            )

    reason_set = set(aggregate_reasons)
    canonical_bad_face_only = (
        bool(total_completions)
        and not total_matches
        and not truncated_gaps
        and reason_set == {"canonical_bad_face_mismatch"}
    )
    decision = (
        "missing_transitions_include_top_family_matches"
        if total_matches
        else "canonical_bad_face_filter_would_close"
        if canonical_bad_face_only
        else "missing_transitions_are_overapproximation"
        if total_completions and not truncated_gaps
        else "missing_transition_audit_incomplete"
    )
    recommendation = (
        "The closure language is too broad and admits completions that are in the exact top family; "
        "the Bellman graph needs more observed states or a stronger transition theorem."
        if total_matches
        else "Every remaining completion is excluded solely by canonical bad-face mismatch.  "
        "A canonical-bad-face compatibility predicate is the next Bellman membership invariant "
        "to test/formalize."
        if decision == "canonical_bad_face_filter_would_close"
        else "The sampled missing transitions do not produce exact top-family completions.  Use the "
        "reason histogram to identify the next invariant to add to the membership theorem."
        if decision == "missing_transitions_are_overapproximation"
        else "Increase the completion cap or split the audit before drawing a production conclusion."
    )
    return {
        "mode": "bellman-missing-transition-completion-audit",
        "graph_input": str(graph_path),
        "closure_input": str(closure_path),
        "target_pairing": target_pairing,
        "schedule_mode": schedule_mode,
        "state_key_mode": state_key_mode,
        "max_completions_per_gap": max_completions_per_gap,
        "gap_count": len(rows),
        "total_completions": total_completions,
        "total_matched_top_family": total_matches,
        "truncated_gaps": truncated_gaps,
        "aggregate_reason_histogram": dict(aggregate_reasons.most_common()),
        "canonical_bad_face_filter_would_close": canonical_bad_face_only,
        "rows": rows,
        "decision": decision,
        "recommendation": recommendation,
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = [
        "# Bellman Missing-Transition Completion Audit",
        "",
        f"Graph input: `{payload['graph_input']}`",
        f"Closure input: `{payload['closure_input']}`",
        "",
        f"Decision: `{payload['decision']}`",
        "",
        payload["recommendation"],
        "",
        "## Summary",
        "",
        "| Metric | Value |",
        "| --- | ---: |",
    ]
    for key in [
        "gap_count",
        "total_completions",
        "total_matched_top_family",
        "truncated_gaps",
        "canonical_bad_face_filter_would_close",
        "max_completions_per_gap",
    ]:
        lines.append(f"| `{key}` | `{payload[key]}` |")
    lines.extend([
        "",
        "## Aggregate Reasons",
        "",
        "| Reason | Count |",
        "| --- | ---: |",
    ])
    for reason, count in payload["aggregate_reason_histogram"].items():
        lines.append(f"| `{reason}` | `{count}` |")
    lines.extend([
        "",
        "## Missing Transition Rows",
        "",
        "| State | Missing face | Completions | Matched top family | Truncated | Top reasons |",
        "| ---: | --- | ---: | ---: | --- | --- |",
    ])
    for row in payload["rows"]:
        top_reasons = list(row["reason_histogram"].items())[:4]
        lines.append(
            f"| `{row['state']}` | `{row['missing_face']}` | "
            f"`{row['completion_count']}` | `{row['matched_top_family']}` | "
            f"`{row['truncated']}` | `{top_reasons}` |"
        )
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--graph", type=Path, required=True)
    parser.add_argument("--closure", type=Path, required=True)
    parser.add_argument("--target", default=TOP_PAIRING)
    parser.add_argument(
        "--schedule-mode",
        choices=["none", "observed", "observed-square-gap", "observed+square-gap"],
        default="observed+square-gap",
    )
    parser.add_argument("--state-key-mode", default="with-step-face-linear-tri-source")
    parser.add_argument("--max-completions-per-gap", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=3)
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    args = parser.parse_args()

    payload = audit(
        graph_path=args.graph,
        closure_path=args.closure,
        target=args.target,
        schedule_mode=args.schedule_mode,
        state_key_mode=args.state_key_mode,
        max_completions_per_gap=args.max_completions_per_gap,
        sample_limit=args.sample_limit,
    )
    if args.json:
        args.json.parent.mkdir(parents=True, exist_ok=True)
        write_json(args.json, payload)
    if args.markdown:
        args.markdown.parent.mkdir(parents=True, exist_ok=True)
        write_text(args.markdown, "")
        write_markdown(payload, args.markdown)
    if not args.json and not args.markdown:
        print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
