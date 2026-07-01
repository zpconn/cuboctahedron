#!/usr/bin/env python3
"""Audit Bellman graph closure under a target cancellation-pairing language.

This is untrusted diagnostic infrastructure.  Unlike the naive transition
audit, this script only treats a next signed face as legal when the resulting
prefix can still be completed to the target triangular cancellation pairing.
If this closes the observed graph, the target pairing language becomes a
candidate for a Lean transition-closure theorem.
"""

from __future__ import annotations

import argparse
from functools import lru_cache
from fractions import Fraction
import json
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
import sys

if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from exact_profile import (  # noqa: E402
    FACE_NORMALS,
    FACE_ORDER,
    FACE_TO_PAIR_SIGN,
    dot,
    mat_vec,
)
from shadow_normal_form_profile import SQUARE_TOGGLES, act_tri, xor_parity  # noqa: E402
from nonidentity_margin_bellman_profile import TOP_PAIRING, parity_key  # noqa: E402


def parse_part(key: str, name: str) -> str | None:
    prefix = name + "="
    if name == "triSrc":
        marker = "|" + prefix
        if marker in key:
            return key.split(marker, 1)[1]
        if key.startswith(prefix):
            return key[len(prefix) :]
        return None
    for part in key.split("|"):
        if part.startswith(prefix):
            return part[len(prefix) :]
    return None


def parse_face_counts(state_key: str) -> tuple[int, ...] | None:
    raw = parse_part(state_key, "faces")
    if raw is None:
        return None
    values = tuple(int(piece) for piece in raw.split(",") if piece != "")
    if len(values) != len(FACE_ORDER):
        raise ValueError(f"bad face count length in state: {state_key}")
    return values


def parse_step(state_key: str) -> int:
    raw = parse_part(state_key, "step")
    if raw is None:
        raise ValueError(f"state has no step component: {state_key}")
    return int(raw)


def parse_parity(state_key: str) -> tuple[bool, bool, bool]:
    raw = parse_part(state_key, "par")
    if raw is None or len(raw) != 3:
        raise ValueError(f"state has no parity component: {state_key}")
    return tuple(bit == "1" for bit in raw)  # type: ignore[return-value]


def parse_lin(state_key: str) -> tuple[tuple[Fraction, Fraction, Fraction], ...] | None:
    raw = parse_part(state_key, "lin")
    if raw is None:
        return None
    rows = []
    for row_raw in raw.split(";"):
        entries = tuple(Fraction(piece) for piece in row_raw.split(","))
        if len(entries) != 3:
            raise ValueError(f"bad matrix row in state: {state_key}")
        rows.append(entries)
    if len(rows) != 3:
        raise ValueError(f"bad matrix length in state: {state_key}")
    return tuple(rows)  # type: ignore[return-value]


def parse_tri_sources(state_key: str) -> list[tuple[int, str, str, str]]:
    raw = parse_part(state_key, "triSrc")
    if raw is None or raw == "":
        return []
    out = []
    for item in raw.split("|"):
        source_raw, rest = item.split(":", 1)
        pair_raw, rest = rest.split("->", 1)
        tri_raw, parity_raw = rest.split("@", 1)
        out.append((int(source_raw), pair_raw, tri_raw, parity_raw))
    return out


def face_from_label(label_key: str) -> str:
    raw = parse_part(label_key, "face")
    if raw is None:
        raise ValueError(f"label has no face component: {label_key}")
    return raw


def parse_axis(raw: str) -> tuple[Fraction, Fraction, Fraction]:
    parts = tuple(Fraction(piece) for piece in raw.split(","))
    if len(parts) != 3:
        raise ValueError(f"axis must have three comma-separated entries: {raw}")
    return parts  # type: ignore[return-value]


def sample_axis_from_payload(data: dict[str, Any]) -> tuple[Fraction, Fraction, Fraction]:
    for sample in data.get("samples", []):
        axis = sample.get("axis")
        if axis:
            return parse_axis(str(axis))
    target_axis = data.get("target", {}).get("axis_d4")
    if target_axis:
        return parse_axis(str(target_axis))
    raise ValueError("cannot infer local forced-axis filter axis from payload")


def local_axis_forces_face(
    linear: tuple[tuple[Fraction, Fraction, Fraction], ...],
    axis: tuple[Fraction, Fraction, Fraction],
    face: str,
) -> bool:
    transformed = mat_vec(linear, tuple(Fraction(x) for x in FACE_NORMALS[face]))
    return dot(transformed, axis) > 0


def target_pairing_from_key(target: str) -> str:
    marker = "pairs="
    idx = target.find(marker)
    if idx < 0:
        raise ValueError(f"target has no cancellation pairing: {target}")
    return target[idx:]


def parse_target_pairing(
    target_pairing: str,
) -> tuple[tuple[tuple[int, int, str], ...], tuple[tuple[str, int], ...]]:
    pairs_raw, survivors_raw = target_pairing.split(";survivors=", 1)
    pairs_raw = pairs_raw.removeprefix("pairs=")
    pairs: list[tuple[int, int, str]] = []
    if pairs_raw:
        for item in pairs_raw.split("|"):
            bounds, tri = item.split(":", 1)
            left, right = bounds.split("-", 1)
            pairs.append((int(left), int(right), tri))
    survivors: list[tuple[str, int]] = []
    if survivors_raw:
        for item in survivors_raw.split("|"):
            idx, tri = item.split(":", 1)
            survivors.append((tri, int(idx)))
    return tuple(pairs), tuple(survivors)


def cancellation_key(
    cancellations: tuple[tuple[int, int, str], ...],
    stack: tuple[tuple[str, int], ...],
) -> str:
    pair_key = "|".join(f"{left}-{right}:{tri}" for left, right, tri in cancellations)
    survivor_key = "|".join(f"{idx}:{tri}" for tri, idx in stack)
    return f"pairs={pair_key};survivors={survivor_key}"


def partial_compatible(
    *,
    cancellations: tuple[tuple[int, int, str], ...],
    stack: tuple[tuple[str, int], ...],
    shadow_len: int,
    target_cancellations: tuple[tuple[int, int, str], ...],
    target_stack: tuple[tuple[str, int], ...],
) -> bool:
    if shadow_len > len(target_stack) + 2 * len(target_cancellations):
        return False
    if len(cancellations) > len(target_cancellations):
        return False
    if cancellations != target_cancellations[: len(cancellations)]:
        return False
    target_survivor_indices = {idx for _tri, idx in target_stack}
    canceled_indices = {
        idx for left, right, _tri in cancellations for idx in (left, right)
    }
    if canceled_indices & target_survivor_indices:
        return False
    if target_cancellations:
        next_target_idx = len(cancellations)
        if next_target_idx < len(target_cancellations):
            left, right, _tri = target_cancellations[next_target_idx]
            if shadow_len > right:
                return False
    return True


def replay_tri_sources(
    tri_sources: list[tuple[int, str, str, str]],
) -> tuple[
    tuple[tuple[str, int], ...],
    tuple[tuple[int, int, str], ...],
    int,
]:
    stack: list[tuple[str, int]] = []
    cancellations: list[tuple[int, int, str]] = []
    shadow_len = 0
    for _source_index, _pair, tri, _par in tri_sources:
        shadow_index = shadow_len
        shadow_len += 1
        if stack and stack[-1][0] == tri:
            prev_tri, prev_idx = stack.pop()
            cancellations.append((prev_idx, shadow_index, prev_tri))
        else:
            stack.append((tri, shadow_index))
    return tuple(stack), tuple(cancellations), shadow_len


def decrement(values: tuple[int, ...], index: int) -> tuple[int, ...]:
    if values[index] <= 0:
        raise ValueError("cannot decrement exhausted face count")
    as_list = list(values)
    as_list[index] -= 1
    return tuple(as_list)


def advance(
    *,
    counts: tuple[int, ...],
    step: int,
    parity: tuple[bool, bool, bool],
    stack: tuple[tuple[str, int], ...],
    cancellations: tuple[tuple[int, int, str], ...],
    shadow_len: int,
    face: str,
) -> tuple[
    tuple[int, ...],
    int,
    tuple[bool, bool, bool],
    tuple[tuple[str, int], ...],
    tuple[tuple[int, int, str], ...],
    int,
]:
    face_index = FACE_ORDER.index(face)
    pair_id, _positive = FACE_TO_PAIR_SIGN[face]
    counts2 = decrement(counts, face_index)
    step2 = step + 1
    parity2 = parity
    stack2 = list(stack)
    cancellations2 = list(cancellations)
    shadow_len2 = shadow_len
    if pair_id in SQUARE_TOGGLES:
        parity2 = xor_parity(parity2, SQUARE_TOGGLES[pair_id])
    else:
        tri = act_tri(parity2, pair_id)
        shadow_idx = shadow_len2
        shadow_len2 += 1
        if stack2 and stack2[-1][0] == tri:
            prev_tri, prev_idx = stack2.pop()
            cancellations2.append((prev_idx, shadow_idx, prev_tri))
        else:
            stack2.append((tri, shadow_idx))
    return counts2, step2, parity2, tuple(stack2), tuple(cancellations2), shadow_len2


def legal_next_faces_for_target(
    *,
    counts: tuple[int, ...],
    step: int,
    parity: tuple[bool, bool, bool],
    stack: tuple[tuple[str, int], ...],
    cancellations: tuple[tuple[int, int, str], ...],
    shadow_len: int,
    target_pairing: str,
    allowed_faces_by_step: tuple[frozenset[str], ...] | None = None,
    allowed_square_faces_by_gap: tuple[frozenset[str], ...] | None = None,
) -> set[str]:
    target_cancellations, target_stack = parse_target_pairing(target_pairing)

    @lru_cache(maxsize=None)
    def can_complete(
        counts0: tuple[int, ...],
        step0: int,
        parity0: tuple[bool, bool, bool],
        stack0: tuple[tuple[str, int], ...],
        cancellations0: tuple[tuple[int, int, str], ...],
        shadow_len0: int,
    ) -> bool:
        if not partial_compatible(
            cancellations=cancellations0,
            stack=stack0,
            shadow_len=shadow_len0,
            target_cancellations=target_cancellations,
            target_stack=target_stack,
        ):
            return False
        if sum(counts0) == 0:
            return cancellation_key(cancellations0, stack0) == target_pairing
        for idx, count in enumerate(counts0):
            if count <= 0:
                continue
            face = FACE_ORDER[idx]
            if allowed_faces_by_step is not None and face not in allowed_faces_by_step[step0]:
                continue
            pair_id, _positive = FACE_TO_PAIR_SIGN[face]
            if (
                allowed_square_faces_by_gap is not None
                and pair_id in SQUARE_TOGGLES
                and face not in allowed_square_faces_by_gap[shadow_len0]
            ):
                continue
            nxt = advance(
                counts=counts0,
                step=step0,
                parity=parity0,
                stack=stack0,
                cancellations=cancellations0,
                shadow_len=shadow_len0,
                face=face,
            )
            if can_complete(*nxt):
                return True
        return False

    out: set[str] = set()
    for idx, count in enumerate(counts):
        if count <= 0:
            continue
        face = FACE_ORDER[idx]
        if allowed_faces_by_step is not None and face not in allowed_faces_by_step[step]:
            continue
        pair_id, _positive = FACE_TO_PAIR_SIGN[face]
        if (
            allowed_square_faces_by_gap is not None
            and pair_id in SQUARE_TOGGLES
            and face not in allowed_square_faces_by_gap[shadow_len]
        ):
            continue
        nxt = advance(
            counts=counts,
            step=step,
            parity=parity,
            stack=stack,
            cancellations=cancellations,
            shadow_len=shadow_len,
            face=face,
        )
        if can_complete(*nxt):
            out.add(face)
    return out


def observed_allowed_faces_by_step(graph: dict[str, Any]) -> tuple[frozenset[str], ...]:
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    buckets: list[set[str]] = [set() for _ in range(14)]
    for obj in graph.get("path_objects", []):
        for step, label_idx in enumerate(obj.get("label_indices", [])):
            if step < len(buckets):
                buckets[step].add(face_from_label(labels[int(label_idx)]))
    return tuple(frozenset(bucket) for bucket in buckets)


def observed_allowed_square_faces_by_gap(graph: dict[str, Any]) -> tuple[frozenset[str], ...]:
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    buckets: list[set[str]] = [set() for _ in range(9)]
    for obj in graph.get("path_objects", []):
        tri_count = 0
        for label_idx in obj.get("label_indices", []):
            face = face_from_label(labels[int(label_idx)])
            pair_id, _positive = FACE_TO_PAIR_SIGN[face]
            if pair_id in SQUARE_TOGGLES:
                buckets[tri_count].add(face)
            else:
                tri_count += 1
    return tuple(frozenset(bucket) for bucket in buckets)


def audit(
    input_path: Path,
    target: str,
    schedule_mode: str,
    *,
    require_local_axis_forced: bool,
    axis_raw: str | None,
) -> dict[str, Any]:
    data = json.loads(input_path.read_text())
    graph = data["graph"]
    target_pairing = target_pairing_from_key(target)
    forced_axis = (
        parse_axis(axis_raw) if axis_raw is not None
        else sample_axis_from_payload(data)
    ) if require_local_axis_forced else None
    labels = {int(row["index"]): str(row["key"]) for row in graph["labels"]}
    states = {int(row["index"]): str(row["key"]) for row in graph["states"]}
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

    outgoing_faces: dict[int, set[str]] = {}
    for edge in graph["edges"]:
        src = int(edge["src"])
        bucket = outgoing_faces.setdefault(src, set())
        for label_idx in edge.get("label_indices", []):
            bucket.add(face_from_label(labels[int(label_idx)]))

    rows: list[dict[str, Any]] = []
    total_missing = 0
    total_illegal = 0
    total_legal = 0
    total_observed = 0
    total_axis_rejected = 0
    states_with_missing = 0
    states_with_illegal = 0
    states_with_face_counts = 0
    states_with_axis_rejections = 0
    for state_idx, state_key in sorted(states.items()):
        counts = parse_face_counts(state_key)
        if counts is None:
            continue
        states_with_face_counts += 1
        step = parse_step(state_key)
        parity = parse_parity(state_key)
        tri_sources = parse_tri_sources(state_key)
        stack, cancellations, shadow_len = replay_tri_sources(tri_sources)
        legal_faces = legal_next_faces_for_target(
            counts=counts,
            step=step,
            parity=parity,
            stack=stack,
            cancellations=cancellations,
            shadow_len=shadow_len,
            target_pairing=target_pairing,
            allowed_faces_by_step=allowed_faces_by_step,
            allowed_square_faces_by_gap=allowed_square_faces_by_gap,
        )
        axis_rejected: list[str] = []
        if forced_axis is not None:
            linear = parse_lin(state_key)
            if linear is None:
                raise ValueError(
                    "--require-local-axis-forced requires state keys with a lin= component"
                )
            axis_rejected = sorted(
                face for face in legal_faces
                if not local_axis_forces_face(linear, forced_axis, face)
            )
            if axis_rejected:
                legal_faces = legal_faces - set(axis_rejected)
                states_with_axis_rejections += 1
                total_axis_rejected += len(axis_rejected)
        observed = outgoing_faces.get(state_idx, set())
        missing = sorted(legal_faces - observed)
        illegal = sorted(observed - legal_faces)
        total_missing += len(missing)
        total_illegal += len(illegal)
        total_legal += len(legal_faces)
        total_observed += len(observed)
        if missing:
            states_with_missing += 1
        if illegal:
            states_with_illegal += 1
        if missing or illegal:
            rows.append(
                {
                    "state": state_idx,
                    "state_key": state_key,
                    "legal_count": len(legal_faces),
                    "observed_count": len(observed),
                    "missing_count": len(missing),
                    "illegal_count": len(illegal),
                    "axis_rejected_count": len(axis_rejected),
                    "missing_faces": missing[:20],
                    "illegal_faces": illegal[:20],
                    "axis_rejected_faces": axis_rejected[:20],
                }
            )
    rows.sort(key=lambda row: (-row["missing_count"], -row["illegal_count"], int(row["state"])))
    decision = (
        "no-face-count-state-keys"
        if states_with_face_counts == 0
        else "target-pairing-language-closed"
        if total_missing == 0 and total_illegal == 0
        else "target-pairing-language-not-closed"
    )
    return {
        "input": str(input_path),
        "target_pairing": target_pairing,
        "schedule_mode": schedule_mode,
        "require_local_axis_forced": require_local_axis_forced,
        "forced_axis": ",".join(str(x) for x in forced_axis)
            if forced_axis is not None else None,
        "allowed_faces_by_step": [
            sorted(bucket) for bucket in allowed_faces_by_step
        ] if allowed_faces_by_step is not None else None,
        "allowed_square_faces_by_gap": [
            sorted(bucket) for bucket in allowed_square_faces_by_gap
        ] if allowed_square_faces_by_gap is not None else None,
        "state_count": len(states),
        "edge_count": len(graph["edges"]),
        "states_with_face_counts": states_with_face_counts,
        "total_target_legal_transitions": total_legal,
        "total_observed_face_transitions": total_observed,
        "total_local_axis_rejected_transitions": total_axis_rejected,
        "total_missing_transitions": total_missing,
        "total_illegal_transitions": total_illegal,
        "states_with_missing_transitions": states_with_missing,
        "states_with_illegal_transitions": states_with_illegal,
        "states_with_local_axis_rejections": states_with_axis_rejections,
        "top_problem_states": rows[:25],
        "decision": decision,
        "recommendation": (
            "The observed graph is closed under the target cancellation-pairing "
            "next-step language.  This is a candidate for a Lean transition "
            "closure theorem."
            if decision == "target-pairing-language-closed"
            else "The target pairing alone is still not enough; inspect missing "
            "and illegal transitions to identify the next state component."
            if decision == "target-pairing-language-not-closed"
            else "State keys do not expose signed-face counts, so this audit is "
            "not applicable."
        ),
    }


def write_markdown(payload: dict[str, Any], output_path: Path) -> None:
    lines: list[str] = []
    lines.append("# Bellman Target-Pairing Transition-Closure Audit")
    lines.append("")
    lines.append(f"Input: `{payload['input']}`")
    lines.append("")
    lines.append(f"Schedule mode: `{payload['schedule_mode']}`")
    if payload.get("require_local_axis_forced"):
        lines.append("")
        lines.append(f"Local forced-axis filter: `{payload['forced_axis']}`")
    lines.append("")
    lines.append(f"Decision: `{payload['decision']}`")
    lines.append("")
    lines.append(payload["recommendation"])
    lines.append("")
    lines.append("| Metric | Value |")
    lines.append("| --- | ---: |")
    for key in [
        "state_count",
        "edge_count",
        "states_with_face_counts",
        "total_target_legal_transitions",
        "total_observed_face_transitions",
        "total_local_axis_rejected_transitions",
        "total_missing_transitions",
        "total_illegal_transitions",
        "states_with_local_axis_rejections",
        "states_with_missing_transitions",
        "states_with_illegal_transitions",
    ]:
        lines.append(f"| `{key}` | `{payload[key]}` |")
    if payload["top_problem_states"]:
        lines.append("")
        lines.append("## Top Problem States")
        lines.append("")
        lines.append("| State | Legal | Observed | Axis rejected | Missing | Illegal |")
        lines.append("| ---: | ---: | ---: | --- | --- | --- |")
        for row in payload["top_problem_states"][:10]:
            lines.append(
                f"| `{row['state']}` | `{row['legal_count']}` | "
                f"`{row['observed_count']}` | `{row.get('axis_rejected_faces', [])[:8]}` | "
                f"`{row['missing_faces'][:8]}` | "
                f"`{row['illegal_faces'][:8]}` |"
            )
    if payload["allowed_faces_by_step"] is not None:
        lines.append("")
        lines.append("## Allowed Faces By Step")
        lines.append("")
        lines.append("| Step | Faces |")
        lines.append("| ---: | --- |")
        for idx, faces in enumerate(payload["allowed_faces_by_step"]):
            lines.append(f"| `{idx}` | `{faces}` |")
    if payload["allowed_square_faces_by_gap"] is not None:
        lines.append("")
        lines.append("## Allowed Square Faces By Triangular Gap")
        lines.append("")
        lines.append("| Gap | Faces |")
        lines.append("| ---: | --- |")
        for idx, faces in enumerate(payload["allowed_square_faces_by_gap"]):
            lines.append(f"| `{idx}` | `{faces}` |")
    lines.append("")
    output_path.write_text("\n".join(lines))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--target", default=TOP_PAIRING)
    parser.add_argument(
        "--schedule-mode",
        choices=["none", "observed", "observed-square-gap", "observed+square-gap"],
        default="none",
        help="Optional source-position schedule restriction for diagnostic closure.",
    )
    parser.add_argument("--json", type=Path)
    parser.add_argument("--markdown", "--md", type=Path)
    parser.add_argument(
        "--require-local-axis-forced",
        action="store_true",
        help=(
            "Filter legal next faces by the local forced-axis sign using the lin= "
            "component in each state key. This is diagnostic only; it tests whether "
            "forced-sequence compatibility is the missing membership invariant."
        ),
    )
    parser.add_argument(
        "--axis",
        help=(
            "Axis for --require-local-axis-forced, as 'x,y,z'. Defaults to the "
            "first sample axis in the profile JSON."
        ),
    )
    args = parser.parse_args()

    payload = audit(
        args.input,
        args.target,
        args.schedule_mode,
        require_local_axis_forced=args.require_local_axis_forced,
        axis_raw=args.axis,
    )
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
