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


def nat_cases_def(name: str, values: dict[int, int], codomain: str) -> list[str]:
    lines = [f"private def {name} : Nat -> {codomain}"]
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
    used_states = sorted(set(full_src + full_dst))
    q_used = {state: q_by_state[state] for state in used_states}
    gauge_used = {state: gauge[state] for state in used_states}

    lines: list[str] = [
        "import Cuboctahedron.Search.BellmanPotential",
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
        "",
        f"private def edgeCount : Nat := {len(rows)}",
        "",
    ]
    lines.extend(cases_def("fullSrc", full_src, "Nat"))
    lines.extend(cases_def("fullDst", full_dst, "Nat"))
    lines.extend(cases_def("edgeLabel", edge_label, "Nat"))
    lines.extend(cases_def("rawGain", raw_gain, "Int"))
    lines.extend(cases_def("smallGain", small_gain, "Int"))
    lines.extend(nat_cases_def("q", q_used, "Nat"))
    lines.extend(nat_cases_def("gauge", gauge_used, "Int"))
    lines.extend(
        [
            "private theorem localEquation (i : Fin edgeCount) :",
            "    rawGain i = smallGain i + gauge (fullDst i) - gauge (fullSrc i) := by",
            "  fin_cases i <;> decide",
            "",
            f"theorem graph183QuotientEdgeShard{suffix}_checked : True := by",
            "  have h := localEquation",
            "  exact True.intro",
            "",
            f"end {namespace}",
            "",
        ]
    )
    return "\n".join(lines)


def render_all(shard_count: int) -> str:
    imports = [f"import {MODULE_PREFIX}{idx:03d}" for idx in range(shard_count)]
    theorem_refs = [
        f"  have h{idx:03d} := {NAMESPACE_PREFIX}{idx:03d}.graph183QuotientEdgeShard{idx:03d}_checked"
        for idx in range(shard_count)
    ]
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
            "",
            "theorem graph183QuotientEdgeShards_checked : True := by",
            *theorem_refs,
            "  exact True.intro",
            "",
            "end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards",
            "",
        ]
    )


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
            "",
            "The aggregate module is:",
            "",
            "```text",
            "Cuboctahedron.Generated.NonIdentity.Residual.",
            "  BellmanTopPairingGraph183CocycleQuotientEdgeShards",
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

    all_path = RESIDUAL / "BellmanTopPairingGraph183CocycleQuotientEdgeShards.lean"
    all_path.write_text(render_all(len(chunks)))

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
