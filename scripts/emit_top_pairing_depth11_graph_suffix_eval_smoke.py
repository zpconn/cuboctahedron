#!/usr/bin/env python3
"""Emit graph-eval finish facts for depth-11 Bellman suffix classes.

The generated Lean module proves that each semantic depth-11 suffix class
determines the Bellman graph evaluator result for that suffix.  The script uses
only exact generated Lean tables as input:

* `Depth11ClassNNNStateSSSSSuffix` constructors provide the suffix face lists;
* `graphSmokeNext_sSSSS` definitions provide deterministic graph transitions.
"""

from __future__ import annotations

import argparse
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path


DEFAULT_SUFFIX_INPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphStateSuffixSmoke.lean"
)
DEFAULT_GRAPH_INPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/NonIdentity/Residual/"
    "BellmanTopPairingDepth11GraphSuffixEvalSmoke.lean"
)

INDUCTIVE_RE = re.compile(
    r"^inductive Depth11Class(?P<class>\d{3})State(?P<state>\d{4})Suffix\b"
)
CTOR_RE = re.compile(
    r"^\s*\|\s+(?P<ctor>\w+)\s*:\s*"
    r"Depth11Class(?P<class>\d{3})State(?P<state>\d{4})Suffix\s*"
    r"\[(?P<faces>.*)\]\s*$"
)
LABEL_RE = re.compile(r"^\s*\|\s+Face\.(?P<face>\w+)\s*=>\s*\((?P<label>\d+)\s*:")
NEXT_DEF_RE = re.compile(r"^def graphSmokeNext_s(?P<state>\d{4})\b")
NEXT_CASE_RE = re.compile(
    r"^\s*\|\s+(?P<label>\d+)\s*=>\s*some\s*"
    r"\(\((?P<next>\d+)\s*:\s*State\),\s*"
    r"\((?P<gain>-?\d+)\s*:\s*Int\)\)"
)


@dataclass(frozen=True)
class SuffixCtor:
    class_id: str
    state: str
    ctor: str
    faces: tuple[str, ...]
    final_state: int
    gain: int


def parse_face_labels(path: Path) -> dict[str, int]:
    labels: dict[str, int] = {}
    for line in path.read_text(encoding="utf-8").splitlines():
        match = LABEL_RE.match(line)
        if match:
            labels[match.group("face")] = int(match.group("label"))
    if not labels:
        raise ValueError(f"no smokeLabelOfFace cases found in {path}")
    return labels


def parse_graph_next(path: Path) -> dict[int, dict[int, tuple[int, int]]]:
    transitions: dict[int, dict[int, tuple[int, int]]] = defaultdict(dict)
    current_state: int | None = None
    for line in path.read_text(encoding="utf-8").splitlines():
        if match := NEXT_DEF_RE.match(line):
            current_state = int(match.group("state"))
            continue
        if line.startswith("def ") and current_state is not None:
            current_state = None
        if current_state is None:
            continue
        if match := NEXT_CASE_RE.match(line):
            transitions[current_state][int(match.group("label"))] = (
                int(match.group("next")),
                int(match.group("gain")),
            )
    if not transitions:
        raise ValueError(f"no graphSmokeNext_sNNNN transitions found in {path}")
    return transitions


def parse_suffix_constructors(path: Path) -> dict[str, dict[str, list[tuple[str, tuple[str, ...]]]]]:
    classes: dict[str, dict[str, list[tuple[str, tuple[str, ...]]]]] = defaultdict(
        lambda: defaultdict(list)
    )
    seen_inductives: set[tuple[str, str]] = set()
    for line in path.read_text(encoding="utf-8").splitlines():
        if match := INDUCTIVE_RE.match(line):
            seen_inductives.add((match.group("class"), match.group("state")))
            continue
        if match := CTOR_RE.match(line):
            class_id = match.group("class")
            state = match.group("state")
            faces = tuple(re.findall(r"Face\.(\w+)", match.group("faces")))
            classes[class_id][state].append((match.group("ctor"), faces))
    missing = sorted(
        (class_id, state)
        for class_id, state in seen_inductives
        if not classes[class_id][state]
    )
    if missing:
        formatted = ", ".join(f"class {c} state {s}" for c, s in missing)
        raise ValueError(f"suffix inductive(s) without constructors: {formatted}")
    return {
        class_id: dict(sorted(states.items(), key=lambda item: int(item[0])))
        for class_id, states in sorted(classes.items(), key=lambda item: int(item[0]))
    }


def compute_finish(
    state: str,
    faces: tuple[str, ...],
    labels: dict[str, int],
    transitions: dict[int, dict[int, tuple[int, int]]],
) -> tuple[int, int]:
    current = int(state)
    total_gain = 0
    for face in faces:
        if face not in labels:
            raise ValueError(f"unknown face in suffix: {face}")
        label = labels[face]
        try:
            next_state, gain = transitions[current][label]
        except KeyError as exc:
            raise ValueError(
                f"missing graph transition from state {current} on face {face} "
                f"(label {label})"
            ) from exc
        current = next_state
        total_gain += gain
    return current, total_gain


def lean_face_list(faces: tuple[str, ...]) -> str:
    return "[" + ", ".join(f"Face.{face}" for face in faces) + "]"


def state_nat(state: str | int) -> str:
    return str(int(state))


def int_lit(value: int) -> str:
    return f"({value} : Int)"


def branch_term(index: int, total: int, body: str) -> str:
    if total <= 1:
        return body
    if index == 0:
        return f"Or.inl {body}"
    return f"Or.inr ({branch_term(index - 1, total - 1, body)})"


def indent_lines(lines: list[str], indent: str) -> list[str]:
    return [f"{indent}{line}" if line else "" for line in lines]


def bullet_lines(lines: list[str], indent: str) -> list[str]:
    if not lines:
        return [f"{indent}· skip"]
    out = [f"{indent}· {lines[0]}"]
    out.extend(f"{indent}  {line}" if line else "" for line in lines[1:])
    return out


def emit_right_assoc_or_cases(
    current: str,
    names: list[str],
    branch_body,
    indent: str = "  ",
) -> list[str]:
    if len(names) == 1:
        return [f"{indent}have {names[0]} := {current}"] + indent_lines(
            branch_body(names[0]), indent
        )
    lines: list[str] = []
    cur = current
    for index, name in enumerate(names[:-1]):
        rest_name = names[-1] if index + 2 == len(names) else f"hrest_{name}"
        lines.append(f"{indent}rcases {cur} with {name} | {rest_name}")
        lines.extend(bullet_lines(branch_body(name), indent))
        cur = rest_name
    lines.extend(bullet_lines(branch_body(names[-1]), indent))
    return lines


def emit_class_finish_def(class_id: str, ctors: list[SuffixCtor]) -> list[str]:
    lines = [
        f"/-- Exact graph finishes for class {class_id} depth-11 suffixes. -/",
        f"def Class{class_id}Depth11GraphFinish",
        "    (graph : State) (rest : List Face)",
        "    (finalGraph : State) (suffixGain : Int) : Prop :=",
    ]
    for index, ctor in enumerate(ctors):
        prefix = "  " if index == 0 else "  "
        suffix = " ∨" if index + 1 < len(ctors) else ""
        lines.extend(
            [
                f"{prefix}(graph = ({state_nat(ctor.state)} : State) ∧",
                f"    rest = {lean_face_list(ctor.faces)} ∧",
                f"    finalGraph = ({ctor.final_state} : State) ∧",
                f"    suffixGain = {int_lit(ctor.gain)}){suffix}",
            ]
        )
    return lines


def emit_graph_eval_theorem(class_id: str, ctors: list[SuffixCtor]) -> list[str]:
    names = [f"hfinish_{i:03d}" for i in range(len(ctors))]
    def branch(name: str) -> list[str]:
        return [
            f"rcases {name} with ⟨hgraph, hrest, hfinal, hgain⟩",
            "subst graph",
            "subst rest",
            "subst finalGraph",
            "subst suffixGain",
            "rfl",
        ]

    lines = [
        f"theorem graphEval_of_class{class_id}Depth11GraphFinish",
        "    {graph : State} {rest : List Face}",
        "    {finalGraph : State} {suffixGain : Int}",
        "    (hfinish :",
        f"      Class{class_id}Depth11GraphFinish graph rest finalGraph suffixGain) :",
        "    evalLabelStepFn graphSmokeNext graph (rest.map smokeLabelOfFace) =",
        "      some (finalGraph, suffixGain) := by",
    ]
    lines.extend(emit_right_assoc_or_cases("hfinish", names, branch))
    return lines


def emit_final_nonneg_theorem(class_id: str, ctors: list[SuffixCtor]) -> list[str]:
    names = [f"hfinish_{i:03d}" for i in range(len(ctors))]

    def branch(name: str) -> list[str]:
        return [
            f"rcases {name} with ⟨_hgraph, _hrest, hfinal, _hgain⟩",
            "subst finalGraph",
            "decide",
        ]

    lines = [
        f"theorem finalPotential_nonneg_of_class{class_id}Depth11GraphFinish",
        "    {graph : State} {rest : List Face}",
        "    {finalGraph : State} {suffixGain : Int}",
        "    (hfinish :",
        f"      Class{class_id}Depth11GraphFinish graph rest finalGraph suffixGain) :",
        "    0 <= graphPotential finalGraph := by",
    ]
    lines.extend(emit_right_assoc_or_cases("hfinish", names, branch))
    return lines


def emit_class_finish_theorem(
    class_id: str,
    states: dict[str, list[SuffixCtor]],
    ctors: list[SuffixCtor],
) -> list[str]:
    state_ids = list(states.keys())
    state_names = [f"hstate{state}" for state in state_ids]
    branch_index = {ctor: index for index, ctor in enumerate(ctors)}
    lines = [
        f"theorem class{class_id}Depth11GraphFinish_of_suffix",
        "    {graph : State} {rest : List Face}",
        f"    (hclass : Class{class_id}Depth11Suffix graph rest) :",
        "    ∃ finalGraph suffixGain,",
        f"      Class{class_id}Depth11GraphFinish graph rest finalGraph suffixGain := by",
    ]

    def state_branch(name: str) -> list[str]:
        state_index = state_names.index(name)
        state = state_ids[state_index]
        state_ctors = states[state]
        branch_lines = [
            f"rcases {name} with ⟨hgraph, hsuffix⟩",
            "cases hsuffix with",
        ]
        for ctor in state_ctors:
            body = "⟨hgraph, rfl, rfl, rfl⟩"
            term = branch_term(branch_index[ctor], len(ctors), body)
            branch_lines.extend(
                [
                    f"| {ctor.ctor} =>",
                    f"    exact ⟨({ctor.final_state} : State), {int_lit(ctor.gain)}, {term}⟩",
                ]
            )
        return branch_lines

    lines.extend(emit_right_assoc_or_cases("hclass", state_names, state_branch))
    return lines


def emit_eval_exists_theorem(class_id: str) -> list[str]:
    return [
        f"theorem graphEval_exists_of_class{class_id}Depth11Suffix",
        "    {graph : State} {rest : List Face}",
        f"    (hclass : Class{class_id}Depth11Suffix graph rest) :",
        "    ∃ finalGraph suffixGain,",
        "      evalLabelStepFn graphSmokeNext graph (rest.map smokeLabelOfFace) =",
        "        some (finalGraph, suffixGain) := by",
        f"  rcases class{class_id}Depth11GraphFinish_of_suffix hclass with",
        "    ⟨finalGraph, suffixGain, hfinish⟩",
        "  exact ⟨finalGraph, suffixGain,",
        f"    graphEval_of_class{class_id}Depth11GraphFinish hfinish⟩",
        "",
    ]


def emit_class(class_id: str, states: dict[str, list[SuffixCtor]]) -> list[str]:
    ctors = [ctor for state in states.values() for ctor in state]
    lines: list[str] = []
    lines.extend(emit_class_finish_def(class_id, ctors))
    lines.append("")
    lines.extend(emit_class_finish_theorem(class_id, states, ctors))
    lines.append("")
    lines.extend(emit_graph_eval_theorem(class_id, ctors))
    lines.append("")
    lines.extend(emit_final_nonneg_theorem(class_id, ctors))
    lines.append("")
    lines.extend(emit_eval_exists_theorem(class_id))
    return lines


def emit_module(classes: dict[str, dict[str, list[SuffixCtor]]]) -> str:
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixClasses",
        "",
        "/-!",
        "Generated graph-eval finish facts for depth-11 top-pairing Bellman suffixes.",
        "",
        "This module is generated by",
        "`scripts/emit_top_pairing_depth11_graph_suffix_eval_smoke.py`.  It turns",
        "semantic depth-11 suffix classes into exact Bellman graph evaluator",
        "finishes.  It does not introduce sampled ranks, selected prefixes,",
        "accepted trace ids, exact affine keys, or raw rank tables.",
        "-/",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 4096",
        "",
        "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSmoke",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixClasses",
        "",
    ]
    for class_id, states in classes.items():
        lines.extend(emit_class(class_id, states))
    lines.extend(
        [
            "theorem depth11GraphSuffixEvalSmoke_builds : True := by",
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphSuffixEvalSmoke",
            "",
        ]
    )
    return "\n".join(lines)


def build_classes(
    suffix_path: Path,
    graph_path: Path,
) -> dict[str, dict[str, list[SuffixCtor]]]:
    labels = parse_face_labels(graph_path)
    transitions = parse_graph_next(graph_path)
    raw = parse_suffix_constructors(suffix_path)
    classes: dict[str, dict[str, list[SuffixCtor]]] = {}
    for class_id, states in raw.items():
        classes[class_id] = {}
        for state, entries in states.items():
            ctors: list[SuffixCtor] = []
            for ctor, faces in entries:
                final_state, gain = compute_finish(state, faces, labels, transitions)
                ctors.append(
                    SuffixCtor(
                        class_id=class_id,
                        state=state,
                        ctor=ctor,
                        faces=faces,
                        final_state=final_state,
                        gain=gain,
                    )
                )
            classes[class_id][state] = ctors
    return classes


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--suffix-input", type=Path, default=DEFAULT_SUFFIX_INPUT)
    parser.add_argument("--graph-input", type=Path, default=DEFAULT_GRAPH_INPUT)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    classes = build_classes(args.suffix_input, args.graph_input)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(emit_module(classes), encoding="utf-8")

    class_count = len(classes)
    state_count = sum(len(states) for states in classes.values())
    ctor_count = sum(len(ctors) for states in classes.values() for ctors in states.values())
    print(
        f"wrote {args.output} with {class_count} classes, "
        f"{state_count} graph states, and {ctor_count} suffix constructors"
    )


if __name__ == "__main__":
    main()
