#!/usr/bin/env python3
"""Emit sharded Lean checks for graph183 cocycle quotient equations.

This is diagnostic/proof-shape evidence, not production coverage.  It takes
the exact graph183 margin profile and exact `step-par` cocycle quotient
solution and emits small Lean modules checking every local equation

    rawGain = smallGain + gauge(dst) - gauge(src)

for the observed edge-label equations.  The one-file graph183 quotient smoke
timed out under the memory-safe wall-clock guard; these shards keep the same
exact integer checks but split them into small, auditable leaves.
"""

from __future__ import annotations

import argparse
import json
from fractions import Fraction
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
RESIDUAL = ROOT / "Cuboctahedron/Generated/NonIdentity/Residual"
MODULE_PREFIX = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientEdgeShard"
)
NAMESPACE_PREFIX = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientEdgeShard"
)
CORE_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientCore"
)
EDGE_SHARDS_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientEdgeShards"
)
POTENTIAL_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientPotential"
)
CLOSED_BRIDGE_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientClosedBellmanBridge"
)
FINAL_STATE_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183ClosedRunFinalState"
)
CORE_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientCore"
)
EDGE_SHARDS_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientEdgeShards"
)
POTENTIAL_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientPotential"
)
GRAPH_POTENTIAL_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential"
)
GRAPH_POTENTIAL_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential"
)
CLOSED_BRIDGE_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183CocycleQuotientClosedBellmanBridge"
)
FINAL_STATE_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraph183ClosedRunFinalState"
)
CLOSED_BELLMAN_MODULE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.All"
)
CLOSED_BELLMAN_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingClosedBellmanStrengthenedShardedSmoke"
)


def parse_int_fraction(text: str) -> int:
    value = Fraction(text)
    if value.denominator != 1:
        raise ValueError(f"expected integer solution value, got {text}")
    return int(value)


def lean_int(value: int) -> str:
    return f"({value} : Int)"


def lean_nat(value: int) -> str:
    return f"({value} : Nat)"


def cases_def(name: str, values: list[int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Fin edgeCount -> {codomain}"]
    for idx, value in enumerate(values):
        rendered = lean_int(value) if codomain == "Int" else lean_nat(value)
        lines.append(f"  | ⟨{idx}, _⟩ => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def nat_cases_def(
    name: str,
    values: dict[int, int],
    codomain: str,
    *,
    private: bool = True,
) -> list[str]:
    prefix = "private " if private else ""
    lines = [f"{prefix}def {name} : Nat -> {codomain}"]
    for key in sorted(values):
        rendered = lean_int(values[key]) if codomain == "Int" else lean_nat(values[key])
        lines.append(f"  | {key} => {rendered}")
    lines.append("  | _ => " + (lean_int(0) if codomain == "Int" else lean_nat(0)))
    lines.append("")
    return lines


def quotient_solution(best: dict) -> tuple[dict[int, int], dict[int, int], dict[tuple[str, int, str], int], dict[int, str]]:
    quotient_keys = sorted({row["quotient_state"] for row in best["solution"]["gauge"]})
    quotient_id = {key: idx for idx, key in enumerate(quotient_keys)}
    q_by_state: dict[int, int] = {}
    quotient_key_by_state: dict[int, str] = {}
    gauge: dict[int, int] = {}
    for row in best["solution"]["gauge"]:
        state = int(row["state"])
        quotient_state = row["quotient_state"]
        q_by_state[state] = quotient_id[quotient_state]
        quotient_key_by_state[state] = quotient_state
        gauge[state] = parse_int_fraction(row["value"])
    small_gain_by_key = {
        (row["src"], int(row["label"]), row["dst"]): parse_int_fraction(row["value"])
        for row in best["solution"]["small_gains"]
    }
    return q_by_state, gauge, small_gain_by_key, quotient_key_by_state


def expanded_edges(profile: dict, quotient: dict) -> list[dict]:
    graph = profile["graph"]
    best = quotient["best_consistent"]
    if not best.get("consistent"):
        raise ValueError("best graph183 quotient is not consistent")
    if best.get("mode") != "step-par":
        raise ValueError(f"unexpected graph183 quotient mode: {best.get('mode')}")

    q_by_state, gauge, small_gain_by_key, quotient_key_by_state = quotient_solution(best)
    labels = {int(row["index"]): row["key"] for row in graph["labels"]}

    out: list[dict] = []
    for edge_index, edge in enumerate(graph["edges"]):
        src = int(edge["src"])
        dst = int(edge["dst"])
        raw_gain = int(edge["gain_scaled"])
        for label in edge.get("label_indices", []):
            label = int(label)
            key = (quotient_key_by_state[src], label, quotient_key_by_state[dst])
            if key not in small_gain_by_key:
                raise ValueError(f"missing small gain for edge {edge_index}: {key}")
            small_gain = small_gain_by_key[key]
            if raw_gain != small_gain + gauge[dst] - gauge[src]:
                raise ValueError(f"local equation failed for edge {edge_index}")
            out.append(
                {
                    "edge_index": edge_index,
                    "src": src,
                    "dst": dst,
                    "label": label,
                    "label_key": labels[label],
                    "raw_gain": raw_gain,
                    "small_gain": small_gain,
                }
            )
    return out


def render_shard_with_state_maps(
    shard_index: int,
    rows: list[dict],
    q_by_state: dict[int, int],
    gauge: dict[int, int],
) -> str:
    suffix = f"{shard_index:03d}"
    namespace = f"{NAMESPACE_PREFIX}{suffix}"
    full_src = [int(row["src"]) for row in rows]
    full_dst = [int(row["dst"]) for row in rows]
    edge_label = [int(row["label"]) for row in rows]
    raw_gain = [int(row["raw_gain"]) for row in rows]
    small_gain = [int(row["small_gain"]) for row in rows]

    lines: list[str] = [
        f"import {CORE_MODULE}",
        "",
        "/-!",
        f"Shard {suffix} of the graph183 cocycle quotient local-equation smoke.",
        "",
        "Diagnostic/proof-shape evidence only.  The generated edge data is",
        "private, and the public theorem surface is intentionally tiny.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        f"open {CORE_NAMESPACE}",
        "",
        f"private def edgeCount : Nat := {len(rows)}",
        "",
    ]
    lines.extend(cases_def("fullSrc", full_src, "Nat"))
    lines.extend(cases_def("fullDst", full_dst, "Nat"))
    lines.extend(cases_def("edgeLabel", edge_label, "Nat"))
    lines.extend(cases_def("rawGain", raw_gain, "Int"))
    lines.extend(cases_def("smallGain", small_gain, "Int"))
    lines.extend(
        [
            "def FullStep (s label t : Nat) (gain : Int) : Prop :=",
            "  exists i : Fin edgeCount,",
            "    fullSrc i = s /\\ edgeLabel i = label /\\",
            "      fullDst i = t /\\ rawGain i = gain",
            "",
            "def SmallStep (s label t : Nat) (gain : Int) : Prop :=",
            "  exists i : Fin edgeCount,",
            "    graph183QuotientQ (fullSrc i) = s /\\ edgeLabel i = label /\\",
            "      graph183QuotientQ (fullDst i) = t /\\ smallGain i = gain",
            "",
            "private theorem localEquation (i : Fin edgeCount) :",
            "    rawGain i = smallGain i + graph183QuotientGauge (fullDst i) -",
            "      graph183QuotientGauge (fullSrc i) := by",
            "  fin_cases i <;> decide",
            "",
            f"theorem graph183QuotientStepShard{suffix}",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : FullStep s label t gain) :",
            "    exists smallGainValue,",
            "      SmallStep (graph183QuotientQ s) label (graph183QuotientQ t)",
            "          smallGainValue /\\",
            "        gain = smallGainValue + graph183QuotientGauge t -",
            "          graph183QuotientGauge s := by",
            "  rcases hstep with ⟨i, hs, hlabel, ht, hgain⟩",
            "  subst s",
            "  subst label",
            "  subst t",
            "  subst gain",
            "  refine ⟨smallGain i, ?_, ?_⟩",
            "  · exact ⟨i, rfl, rfl, rfl, rfl⟩",
            "  · exact localEquation i",
            "",
            f"theorem graph183SmallStepValidShard{suffix}",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : SmallStep s label t gain) :",
            "    gain + (86 : Int) <= (86 : Int) := by",
            "  rcases hstep with ⟨i, _hs, _hlabel, _ht, hgain⟩",
            "  subst gain",
            "  fin_cases i <;> decide",
            "",
            f"theorem graph183QuotientEdgeShard{suffix}_checked : True := by",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def render_core(q_by_state: dict[int, int], gauge: dict[int, int]) -> str:
    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
        "",
        "/-!",
        "Shared `q` and `gauge` maps for the sharded graph183 cocycle quotient.",
        "",
        "Diagnostic/proof-shape evidence only.  The functions are public so the",
        "edge shards can expose a composable quotient-step theorem, but they are",
        "small finite maps, not generated coverage.",
        "-/",
        "",
        f"namespace {CORE_NAMESPACE}",
        "",
        "open Cuboctahedron",
        "",
    ]
    lines.extend(nat_cases_def("graph183QuotientQ", q_by_state, "Nat", private=False))
    lines.extend(nat_cases_def("graph183QuotientGauge", gauge, "Int", private=False))
    lines.extend(
        [
            "theorem graph183QuotientCore_builds : True := by",
            "  exact True.intro",
            "",
            f"end {CORE_NAMESPACE}",
            "",
        ]
    )
    return "\n".join(lines)


def render_all(shard_count: int) -> str:
    imports = [f"import {MODULE_PREFIX}{idx:03d}" for idx in range(shard_count)]
    imports.insert(0, f"import {CORE_MODULE}")
    theorem_refs = [
        f"  have h{idx:03d} := {NAMESPACE_PREFIX}{idx:03d}.graph183QuotientEdgeShard{idx:03d}_checked"
        for idx in range(shard_count)
    ]
    full_step_alts = [
        f"{NAMESPACE_PREFIX}{idx:03d}.FullStep s label t gain"
        for idx in range(shard_count)
    ]
    small_step_alts = [
        f"{NAMESPACE_PREFIX}{idx:03d}.SmallStep s label t gain"
        for idx in range(shard_count)
    ]
    def or_chain(terms: list[str]) -> str:
        out = terms[-1]
        for term in reversed(terms[:-1]):
            out = f"{term} \\/ ({out})"
        return out
    full_step_body = or_chain(full_step_alts)
    small_step_body = or_chain(small_step_alts)
    # Recursive proof over the right-nested disjunction used by `or_chain`.
    proof_lines: list[str] = []
    for idx in range(shard_count):
        if idx < shard_count - 1:
            proof_lines.append("  rcases hstep with hstep | hstep")
            proof_lines.append(f"  · rcases {NAMESPACE_PREFIX}{idx:03d}.graph183QuotientStepShard{idx:03d} hstep with ⟨smallGainValue, hsmall, heq⟩")
            proof_lines.append("    refine ⟨smallGainValue, ?_, heq⟩")
            proof_lines.append("    " + ("exact Or.inl hsmall" if idx == 0 else "exact " + "Or.inr (" * idx + "Or.inl hsmall" + ")" * idx))
        else:
            proof_lines.append(f"  rcases {NAMESPACE_PREFIX}{idx:03d}.graph183QuotientStepShard{idx:03d} hstep with ⟨smallGainValue, hsmall, heq⟩")
            proof_lines.append("  refine ⟨smallGainValue, ?_, heq⟩")
            proof_lines.append("  exact " + "Or.inr (" * idx + "hsmall" + ")" * idx)
    small_valid_lines: list[str] = []
    for idx in range(shard_count):
        if idx < shard_count - 1:
            small_valid_lines.append("  rcases hstep with hstep | hstep")
            small_valid_lines.append(
                f"  · exact {NAMESPACE_PREFIX}{idx:03d}.graph183SmallStepValidShard{idx:03d} hstep"
            )
        else:
            small_valid_lines.append(
                f"  exact {NAMESPACE_PREFIX}{idx:03d}.graph183SmallStepValidShard{idx:03d} hstep"
            )
    return "\n".join(
        [
            *imports,
            "",
            "/-!",
            "Aggregate import for the graph183 cocycle quotient edge-equation",
            "smoke shards.  This is diagnostic/proof-shape evidence, not",
            "production coverage.",
            "-/",
            "",
            "namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards",
            "",
            "open Cuboctahedron",
            f"open {CORE_NAMESPACE}",
            "",
            "def FullStep (s label t : Nat) (gain : Int) : Prop :=",
            f"  {full_step_body}",
            "",
            "def SmallStep (s label t : Nat) (gain : Int) : Prop :=",
            f"  {small_step_body}",
            "",
            "theorem graph183QuotientStep",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : FullStep s label t gain) :",
            "    exists smallGainValue,",
            "      SmallStep (graph183QuotientQ s) label (graph183QuotientQ t)",
            "          smallGainValue /\\",
            "        gain = smallGainValue + graph183QuotientGauge t -",
            "          graph183QuotientGauge s := by",
            *proof_lines,
            "",
            "theorem graph183QuotientRun",
            "    {s t : Nat} {labels : List Nat} {rawGain : Int}",
            "    (hrun : BellmanLabelStepRun FullStep s t labels rawGain) :",
            "    exists smallGainValue,",
            "      BellmanLabelStepRun SmallStep",
            "          (graph183QuotientQ s) (graph183QuotientQ t)",
            "          labels smallGainValue /\\",
            "        rawGain = smallGainValue + graph183QuotientGauge t -",
            "          graph183QuotientGauge s :=",
            "  BellmanLabelStepRun.quotient_of_step_gain_eq",
            "    graph183QuotientStep hrun",
            "",
            "theorem graph183SmallStep_valid",
            "    {s label t : Nat} {gain : Int}",
            "    (hstep : SmallStep s label t gain) :",
            "    gain + (86 : Int) <= (86 : Int) := by",
            *small_valid_lines,
            "",
            "theorem graph183QuotientEdgeShards_checked : True := by",
            *theorem_refs,
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards",
            "",
        ]
    )


def final_state_prop(finals: list[int]) -> str:
    return " \\/ ".join([f"finish = {state}" for state in finals] + ["False"])


def final_gauge_bound_proof(finals: list[int]) -> list[str]:
    lines = ["  dsimp [Graph183ProfileFinalState] at hfinal"]
    for _state in finals:
        lines.append("  rcases hfinal with rfl | hfinal")
        lines.append("  · decide")
    lines.append("  cases hfinal")
    return lines


def render_potential(profile: dict, quotient: dict) -> tuple[str, dict[str, int]]:
    graph = profile["graph"]
    best = quotient["best_consistent"]
    q_by_state, gauge, _small_gain_by_key, _quotient_key_by_state = quotient_solution(best)
    rows = expanded_edges(profile, quotient)
    small_gains = sorted({int(row["small_gain"]) for row in rows})
    if small_gains != [0]:
        raise ValueError(f"expected all graph183 small gains to be zero, got {small_gains}")
    root = int(graph["root_indices"][0])
    const = int(graph["const_scaled"])
    finals = sorted({int(state) for state in graph["final_indices"]})
    quotient_potential = max(gauge[state] for state in finals)
    root_lhs = const + quotient_potential - gauge[root]
    if root_lhs > 0:
        raise ValueError("gauge-corrected quotient root bound fails")
    if any(gauge[state] > quotient_potential for state in finals):
        raise ValueError("gauge-corrected quotient final bound fails")
    lines: list[str] = [
        f"import {EDGE_SHARDS_MODULE}",
        f"import {GRAPH_POTENTIAL_MODULE}",
        "",
        "/-!",
        "Gauge-corrected small potential for the sharded graph183 quotient.",
        "",
        "This is diagnostic/proof-shape support, not generated coverage.  It",
        "proves the local quotient graph has a tiny Bellman potential after",
        "accounting for the full-state gauge.  A production theorem must still",
        "prove the semantic closed-language run and the real margin-to-gain",
        "inequality.",
        "-/",
        "",
        f"namespace {POTENTIAL_NAMESPACE}",
        "",
        "open Cuboctahedron",
        f"open {EDGE_SHARDS_NAMESPACE}",
        f"open {CORE_NAMESPACE}",
        f"open {GRAPH_POTENTIAL_NAMESPACE}",
        "",
        f"def graph183QuotientPotential (_state : Nat) : Int := {quotient_potential}",
        "",
        "def Graph183ProfileFinalState (finish : Nat) : Prop :=",
        f"  {final_state_prop(finals)}",
        "",
        "theorem graph183SmallStep_valid",
        "    {s label t : Nat} {gain : Int}",
        "    (hstep : SmallStep s label t gain) :",
        "    gain + graph183QuotientPotential t <=",
        "      graph183QuotientPotential s := by",
        "  simpa [graph183QuotientPotential] using",
        "    BellmanTopPairingGraph183CocycleQuotientEdgeShards.graph183SmallStep_valid hstep",
        "",
        "theorem graph183QuotientRootBound :",
        "    graphConst + graph183QuotientPotential (graph183QuotientQ graphRoot) -",
        "      graph183QuotientGauge graphRoot <= 0 := by",
        "  decide",
        "",
        "theorem graph183ProfileFinalGaugeBound",
        "    {finish : Nat}",
        "    (hfinal : Graph183ProfileFinalState finish) :",
        "    graph183QuotientGauge finish <=",
        "      graph183QuotientPotential (graph183QuotientQ finish) := by",
        *final_gauge_bound_proof(finals),
        "",
        "theorem graph183QuotientPotential_checked : True := by",
        "  exact True.intro",
        "",
        f"end {POTENTIAL_NAMESPACE}",
        "",
    ]
    metrics = {
        "quotient_potential": quotient_potential,
        "root_gauge": gauge[root],
        "root_lhs": root_lhs,
        "final_count": len(finals),
        "max_final_gauge": quotient_potential,
    }
    return "\n".join(lines), metrics


def face_name_from_label_key(label_key: str) -> str:
    fields = dict(part.split("=", 1) for part in label_key.split("|"))
    return fields["face"]


def face_label_map(profile: dict) -> dict[str, int]:
    return {
        face_name_from_label_key(row["key"]): int(row["index"])
        for row in profile["graph"]["labels"]
    }


def or_intro_for_shard(shard_index: int, shard_count: int, term: str) -> str:
    if shard_index == shard_count - 1:
        return "Or.inr (" * shard_index + term + ")" * shard_index
    return "Or.inr (" * shard_index + f"Or.inl {term}" + ")" * shard_index


def render_closed_bellman_bridge(
    rows: list[dict],
    profile: dict,
    shard_size: int,
    shard_count: int,
) -> str:
    fmap = face_label_map(profile)
    face_cases = [
        (name, fmap[name])
        for name in [
            "tmmm", "tmmp", "tmpm", "tmpp", "tpmm", "tpmp", "tppm",
            "tppp", "xm", "xp", "ym", "yp", "zm", "zp",
        ]
    ]
    proof_lines: list[str] = []
    for row_index, row in enumerate(rows):
        shard_index = int(row["edge_index"]) // shard_size
        local_index = row_index % shard_size
        shard_namespace = f"{NAMESPACE_PREFIX}{shard_index:03d}"
        term = (
            f"(by exact (⟨⟨{local_index}, by decide⟩, rfl, rfl, rfl, rfl⟩ : "
            f"{shard_namespace}.FullStep "
            f"{lean_nat(int(row['src']))} {lean_nat(int(row['label']))} "
            f"{lean_nat(int(row['dst']))} {lean_int(int(row['raw_gain']))}))"
        )
        proof_lines.extend(
            [
                f"  · change FullStep {lean_nat(int(row['src']))} "
                f"{lean_nat(int(row['label']))} {lean_nat(int(row['dst']))} "
                f"{lean_int(int(row['raw_gain']))}",
                f"    exact {or_intro_for_shard(shard_index, shard_count, term)}",
            ]
        )
    return "\n".join(
        [
            f"import {EDGE_SHARDS_MODULE}",
            f"import {CLOSED_BELLMAN_MODULE}",
            "",
            "/-!",
            "Bridge from the strengthened closed Bellman graph to the sharded",
            "graph183 cocycle quotient edge relation.",
            "",
            "This is graph-local proof-shape support, not rank coverage.  It",
            "does not introduce sampled paths, selected prefixes, accepted trace",
            "ids, exact affine RHS keys, or one-rank objects.  It only proves that",
            "the deterministic `ClosedBellmanStep` relation uses the same local",
            "edge-label equations as the sharded graph183 quotient relation after",
            "the fixed Face-to-label encoding below.",
            "-/",
            "",
            f"namespace {CLOSED_BRIDGE_NAMESPACE}",
            "",
            "open Cuboctahedron",
            f"open {EDGE_SHARDS_NAMESPACE}",
            f"open {CORE_NAMESPACE}",
            f"open {CLOSED_BELLMAN_NAMESPACE}",
            "",
            "def graph183FaceLabel : Face -> Nat",
            *[
                f"  | Face.{face} => {lean_nat(label)}"
                for face, label in face_cases
            ],
            "",
            "theorem graph183FullStep_of_closedBellmanStep",
            "    {state nextState : Nat} {face : Face} {gain : Int}",
            "    (hstep : ClosedBellmanStep state face nextState gain) :",
            "    FullStep state (graph183FaceLabel face) nextState gain := by",
            "  cases hstep",
            *proof_lines,
            "",
            "theorem graph183FullRun_of_closedBellmanRun",
            "    {state finish : Nat} {labels : List Face} {rawGain : Int}",
            "    (hrun : BellmanLabelStepRun ClosedBellmanStep state finish",
            "        labels rawGain) :",
            "    BellmanLabelStepRun FullStep state finish",
            "        (labels.map graph183FaceLabel) rawGain := by",
            "  induction hrun with",
            "  | nil state =>",
            "      simpa using",
            "        (BellmanLabelStepRun.nil (Step := FullStep) state)",
            "  | cons hstep _htail ih =>",
            "      simpa [List.map_cons] using",
            "        (BellmanLabelStepRun.cons",
            "          (graph183FullStep_of_closedBellmanStep hstep) ih)",
            "",
            "theorem graph183QuotientRun_of_closedBellmanRun",
            "    {state finish : Nat} {labels : List Face} {rawGain : Int}",
            "    (hrun : BellmanLabelStepRun ClosedBellmanStep state finish",
            "        labels rawGain) :",
            "    exists smallGainValue,",
            "      BellmanLabelStepRun SmallStep",
            "          (graph183QuotientQ state) (graph183QuotientQ finish)",
            "          (labels.map graph183FaceLabel) smallGainValue /\\",
            "        rawGain = smallGainValue + graph183QuotientGauge finish -",
            "          graph183QuotientGauge state :=",
            "  graph183QuotientRun",
            "    (graph183FullRun_of_closedBellmanRun hrun)",
            "",
            "theorem graph183ClosedBellmanBridge_checked : True := by",
            "  exact True.intro",
            "",
            f"end {CLOSED_BRIDGE_NAMESPACE}",
            "",
        ]
    )


def graph_depth_by_state(profile: dict) -> dict[int, int]:
    graph = profile["graph"]
    label_by_index = {int(row["index"]): row["key"] for row in graph["labels"]}
    adj: dict[int, list[int]] = {}
    for edge in graph["edges"]:
        src = int(edge["src"])
        dst = int(edge["dst"])
        for label in edge.get("label_indices", []):
            # Keep one transition per edge-label equation; the label key lookup
            # validates that the label index is present in the profile.
            _ = label_by_index[int(label)]
            adj.setdefault(src, []).append(dst)
    roots = [int(root) for root in graph["root_indices"]]
    if roots != [0]:
        raise ValueError(f"expected graph183 root [0], got {roots}")
    by_state = {0: 0}
    frontier = {0}
    for depth in range(1, 15):
        next_frontier: set[int] = set()
        for state in frontier:
            next_frontier.update(adj.get(state, []))
        if not next_frontier:
            raise ValueError(f"empty graph183 frontier at depth {depth}")
        for state in next_frontier:
            old = by_state.setdefault(state, depth)
            if old != depth:
                raise ValueError(
                    f"state {state} appears at depths {old} and {depth}"
                )
        frontier = next_frontier
    finals = sorted(int(state) for state in graph["final_indices"])
    if sorted(frontier) != finals:
        raise ValueError("depth-14 frontier does not match profile finals")
    return by_state


def final_state_intro_expr(state: int, finals: list[int]) -> str:
    idx = finals.index(state)
    if idx == 0:
        return "Or.inl rfl"
    return "Or.inr (" * idx + "Or.inl rfl" + ")" * idx


def or_intro_for_value(value: int, values: list[int], term: str = "rfl") -> str:
    idx = values.index(value)
    if idx == 0:
        return f"Or.inl {term}"
    return "Or.inr (" * idx + f"Or.inl {term}" + ")" * idx


def or_prop_for_values(var: str, values: list[int]) -> str:
    out = "False"
    for value in reversed(values):
        out = f"{var} = {value} \\/ ({out})"
    return out


def render_final_state_module(profile: dict) -> str:
    depth_by_state = graph_depth_by_state(profile)
    known_states = sorted(depth_by_state)
    finals = sorted(int(state) for state in profile["graph"]["final_indices"])
    lines: list[str] = [
        f"import {CLOSED_BELLMAN_MODULE}",
        f"import {POTENTIAL_MODULE}",
        "",
        "set_option maxHeartbeats 2000000",
        "set_option maxRecDepth 2048",
        "",
        "/-!",
        "Graph-local final-state facts for graph183 closed Bellman runs.",
        "",
        "This module is proof-shape support, not rank coverage.  It proves that",
        "any 14-label deterministic closed-Bellman run from `graphRoot` finishes",
        "in one of the profile final states used by the quotient gauge bound.",
        "-/",
        "",
        f"namespace {FINAL_STATE_NAMESPACE}",
        "",
        "open Cuboctahedron",
        f"open {CLOSED_BELLMAN_NAMESPACE}",
        f"open {GRAPH_POTENTIAL_NAMESPACE}",
        f"open {POTENTIAL_NAMESPACE}",
        "",
        "def graph183StateDepth : Nat -> Nat",
    ]
    for state in sorted(depth_by_state):
        lines.append(f"  | {state} => {depth_by_state[state]}")
    lines.extend(
        [
            "  | _ => 0",
            "",
            "def Graph183KnownState (state : Nat) : Prop :=",
            f"  {or_prop_for_values('state', known_states)}",
            "",
            "theorem graph183KnownState_root :",
            "    Graph183KnownState graphRoot := by",
            "  dsimp [Graph183KnownState, graphRoot]",
            f"  exact {or_intro_for_value(0, known_states)}",
            "",
            "theorem graph183KnownState_of_closedBellmanStep",
            "    {state nextState : Nat} {face : Face} {gain : Int}",
            "    (hstep : ClosedBellmanStep state face nextState gain) :",
            "    Graph183KnownState nextState := by",
            "  cases hstep <;> dsimp [Graph183KnownState]",
        ]
    )
    for edge in profile["graph"]["edges"]:
        dst = int(edge["dst"])
        for _label in edge.get("label_indices", []):
            lines.append(f"  · exact {or_intro_for_value(dst, known_states)}")
    lines.extend(
        [
            "",
            "theorem graph183ClosedBellmanStep_depth",
            "    {state nextState : Nat} {face : Face} {gain : Int}",
            "    (hstep : ClosedBellmanStep state face nextState gain) :",
            "    graph183StateDepth nextState = graph183StateDepth state + 1 := by",
            "  cases hstep <;> decide",
            "",
            "theorem graph183StateDepth_of_closedBellmanRun",
            "    {state finish : Nat} {labels : List Face} {gain : Int}",
            "    (hrun : BellmanLabelStepRun ClosedBellmanStep state finish",
            "        labels gain) :",
            "    graph183StateDepth finish =",
            "      graph183StateDepth state + labels.length := by",
            "  induction hrun with",
            "  | nil state =>",
            "      simp",
            "  | cons hstep _htail ih =>",
            "      have hdepth := graph183ClosedBellmanStep_depth hstep",
            "      rw [ih, hdepth]",
            "      simp [Nat.add_assoc, Nat.add_comm]",
            "",
            "theorem graph183KnownState_of_closedBellmanRun",
            "    {state finish : Nat} {labels : List Face} {gain : Int}",
            "    (hrun : BellmanLabelStepRun ClosedBellmanStep state finish",
            "        labels gain)",
            "    (hstate : Graph183KnownState state) :",
            "    Graph183KnownState finish := by",
            "  induction hrun with",
            "  | nil state =>",
            "      exact hstate",
            "  | cons hstep _htail ih =>",
            "      exact ih (graph183KnownState_of_closedBellmanStep hstep)",
            "",
            "theorem graph183ProfileFinalState_of_known_depth14",
            "    {finish : Nat}",
            "    (hknown : Graph183KnownState finish)",
            "    (hdepth : graph183StateDepth finish = 14) :",
            "    Graph183ProfileFinalState finish := by",
            "  dsimp [Graph183KnownState] at hknown",
        ]
    )
    for state in known_states:
        lines.append("  rcases hknown with rfl | hknown")
        if state in finals:
            lines.append("  · dsimp [Graph183ProfileFinalState]")
            lines.append(f"    exact {final_state_intro_expr(state, finals)}")
        else:
            lines.append(f"  · change {depth_by_state[state]} = 14 at hdepth")
            lines.append("    omega")
    lines.extend(
        [
            "  cases hknown",
            "",
            "theorem graph183ProfileFinalState_of_closedBellmanRun_length14",
            "    {finish : Nat} {labels : List Face} {gain : Int}",
            "    (hrun : BellmanLabelStepRun ClosedBellmanStep graphRoot finish",
            "        labels gain)",
            "    (hlen : labels.length = 14) :",
            "    Graph183ProfileFinalState finish := by",
            "  have hdepth := graph183StateDepth_of_closedBellmanRun hrun",
            "  have hroot : graph183StateDepth graphRoot = 0 := by decide",
            "  have hfinishDepth : graph183StateDepth finish = 14 := by",
            "    omega",
            "  have hknown := graph183KnownState_of_closedBellmanRun",
            "    hrun graph183KnownState_root",
            "  exact graph183ProfileFinalState_of_known_depth14 hknown hfinishDepth",
            "",
            "theorem graph183ClosedRunFinalState_checked : True := by",
            "  exact True.intro",
            "",
            f"end {FINAL_STATE_NAMESPACE}",
            "",
        ]
    )
    return "\n".join(lines)


def render_markdown(payload: dict) -> str:
    return "\n".join(
        [
            "# Graph183 Cocycle Quotient Edge Shards",
            "",
            "Untrusted generation manifest.  The emitted Lean shards are the proof",
            "evidence for the local quotient equations; this manifest is diagnostic.",
            "",
            f"- profile: `{payload['profile']}`",
            f"- quotient: `{payload['quotient']}`",
            f"- quotient mode: `{payload['quotient_mode']}`",
            f"- total edge-label equations: `{payload['edge_equations']}`",
            f"- shard size: `{payload['shard_size']}`",
            f"- shard count: `{payload['shard_count']}`",
            f"- max shard size: `{payload['max_shard_size']}`",
            f"- max solution bit length: `{payload['max_solution_bit_length']}`",
            f"- quotient potential: `{payload['quotient_potential']}`",
            f"- root gauge: `{payload['root_gauge']}`",
            f"- root bound lhs: `{payload['root_bound_lhs']}`",
            f"- final states checked: `{payload['final_state_count']}`",
            f"- max final gauge: `{payload['max_final_gauge']}`",
            "",
            "The aggregate module is:",
            "",
            "```text",
            "Cuboctahedron.Generated.NonIdentity.Residual.",
            "  BellmanTopPairingGraph183CocycleQuotientEdgeShards",
            "```",
            "",
            "The gauge-corrected small-potential module is:",
            "",
            "```text",
            "Cuboctahedron.Generated.NonIdentity.Residual.",
            "  BellmanTopPairingGraph183CocycleQuotientPotential",
            "```",
            "",
            "The closed-Bellman-to-quotient bridge module is:",
            "",
            "```text",
            "Cuboctahedron.Generated.NonIdentity.Residual.",
            "  BellmanTopPairingGraph183CocycleQuotientClosedBellmanBridge",
            "```",
            "",
            "The closed-run final-state support module is:",
            "",
            "```text",
            "Cuboctahedron.Generated.NonIdentity.Residual.",
            "  BellmanTopPairingGraph183ClosedRunFinalState",
            "```",
            "",
        ]
    )


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--profile",
        type=Path,
        default=ROOT / "scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json",
    )
    parser.add_argument(
        "--quotient",
        type=Path,
        default=ROOT / "scripts/generated/graph183_cocycle_quotients_0_1M.json",
    )
    parser.add_argument("--shard-size", type=int, default=32)
    parser.add_argument(
        "--manifest-json",
        type=Path,
        default=ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shards.json",
    )
    parser.add_argument(
        "--manifest-md",
        type=Path,
        default=ROOT / "scripts/generated/graph183_cocycle_quotient_edge_shards.md",
    )
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    quotient = json.loads(args.quotient.read_text())
    best = quotient["best_consistent"]
    q_by_state, gauge, _small_gain_by_key, _quotient_key_by_state = quotient_solution(best)
    rows = expanded_edges(profile, quotient)
    chunks = [
        rows[start : start + args.shard_size]
        for start in range(0, len(rows), args.shard_size)
    ]

    for idx, chunk in enumerate(chunks):
        path = RESIDUAL / f"BellmanTopPairingGraph183CocycleQuotientEdgeShard{idx:03d}.lean"
        path.write_text(render_shard_with_state_maps(idx, chunk, q_by_state, gauge))

    core_path = RESIDUAL / "BellmanTopPairingGraph183CocycleQuotientCore.lean"
    core_path.write_text(render_core(q_by_state, gauge))

    all_path = RESIDUAL / "BellmanTopPairingGraph183CocycleQuotientEdgeShards.lean"
    all_path.write_text(render_all(len(chunks)))

    potential_text, potential_metrics = render_potential(profile, quotient)
    potential_path = RESIDUAL / "BellmanTopPairingGraph183CocycleQuotientPotential.lean"
    potential_path.write_text(potential_text)

    closed_bridge_path = (
        RESIDUAL / "BellmanTopPairingGraph183CocycleQuotientClosedBellmanBridge.lean"
    )
    closed_bridge_path.write_text(
        render_closed_bellman_bridge(rows, profile, args.shard_size, len(chunks))
    )

    final_state_path = RESIDUAL / "BellmanTopPairingGraph183ClosedRunFinalState.lean"
    final_state_path.write_text(render_final_state_module(profile))

    payload = {
        "mode": "graph183-cocycle-quotient-edge-shards",
        "profile": args.profile.as_posix(),
        "quotient": args.quotient.as_posix(),
        "quotient_mode": best["mode"],
        "edge_equations": len(rows),
        "shard_size": args.shard_size,
        "shard_count": len(chunks),
        "max_shard_size": max((len(chunk) for chunk in chunks), default=0),
        "max_solution_bit_length": best["solution"]["max_bit_length"],
        "aggregate_module": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingGraph183CocycleQuotientEdgeShards"
        ),
        "core_module": (
            "Cuboctahedron.Generated.NonIdentity.Residual."
            "BellmanTopPairingGraph183CocycleQuotientCore"
        ),
        "potential_module": POTENTIAL_MODULE,
        "closed_bridge_module": CLOSED_BRIDGE_MODULE,
        "final_state_module": FINAL_STATE_MODULE,
        "quotient_potential": potential_metrics["quotient_potential"],
        "root_gauge": potential_metrics["root_gauge"],
        "root_bound_lhs": potential_metrics["root_lhs"],
        "final_state_count": potential_metrics["final_count"],
        "max_final_gauge": potential_metrics["max_final_gauge"],
        "arithmetic": "exact integer Lean equations generated from exact rational diagnostic solution",
    }
    args.manifest_json.parent.mkdir(parents=True, exist_ok=True)
    args.manifest_json.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    args.manifest_md.write_text(render_markdown(payload) + "\n")
    print(f"wrote {len(chunks)} shards and aggregate module")
    print(f"edge_equations={len(rows)} shard_size={args.shard_size}")
    print(f"wrote {args.manifest_json}")
    print(f"wrote {args.manifest_md}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
