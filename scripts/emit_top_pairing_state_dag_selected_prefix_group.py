#!/usr/bin/env python3
"""Emit a bounded semantic state-DAG prefix group for top-pairing Bellman.

This is generated proof scaffolding, not proof by external data.  The emitted
Lean file still asks Lean to check each prefix/gain theorem and the semantic
bridge into `StateDAGPrefixClosedMarginFamily`.  The script only keeps the
boring repetition honest while we profile whether the shard proof cost scales
with semantic prefix buckets rather than sampled paths/ranks.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

import plan_top_pairing_state_dag_prefix_shard as shard_plan


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_COVER = ROOT / "scripts/generated/top_pairing_shared_gain_prefix_cover_plan.json"
DEFAULT_LEAN = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingStateDAGSelectedPrefixGroup.lean"
)
DEFAULT_JSON = ROOT / "scripts/generated/top_pairing_state_dag_selected_prefix_group.json"
DEFAULT_MD = ROOT / "scripts/generated/top_pairing_state_dag_selected_prefix_group.md"
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingStateDAGSelectedPrefixGroup"
)


FACE = {
    "xp": "Face.xp",
    "xm": "Face.xm",
    "yp": "Face.yp",
    "ym": "Face.ym",
    "zp": "Face.zp",
    "zm": "Face.zm",
    "tppp": "Face.tppp",
    "tppm": "Face.tppm",
    "tpmp": "Face.tpmp",
    "tpmm": "Face.tpmm",
    "tmpp": "Face.tmpp",
    "tmpm": "Face.tmpm",
    "tmmp": "Face.tmmp",
    "tmmm": "Face.tmmm",
}


def ctor(idx: int) -> str:
    return f"AcceptedTraceId.t{idx:03d}"


def face_expr(prefix: list[str]) -> str:
    return "[" + ", ".join(FACE[name] for name in prefix) + "]"


def nested_call(fn: str, start: str, prefix: list[str]) -> str:
    expr = start
    for face in prefix:
        expr = f"({fn} {expr} {FACE[face]})"
    return expr


def or_prop(var: str, ids: list[int]) -> str:
    terms = [f"{var} = {ctor(i)}" for i in ids]
    if len(terms) == 1:
        return terms[0]
    return " \\/\n    ".join(terms)


def or_proof(pos: int, count: int) -> str:
    if count == 1:
        return "rfl"
    if pos == 0:
        return "Or.inl rfl"
    return f"Or.inr ({or_proof(pos - 1, count - 1)})"


def emit_gain_theorem(name: str, ids: list[int], gain: int) -> list[str]:
    allowed_positions = {idx: pos for pos, idx in enumerate(ids)}
    lines = [
        f"theorem {name}Prefix_gain",
        "    (traceId : AcceptedTraceId)",
        "    (hprefix :",
        f"      (acceptedTraceOfId traceId).take {name}Prefix.length =",
        f"        {name}Prefix) :",
        f"    {name}Allowed traceId /\\",
        f"      acceptedTraceGain traceId = ({gain} : Int) := by",
        "  cases traceId",
    ]
    for idx in range(37):
        if idx in allowed_positions:
            lines.append(
                f"  · exact ⟨{or_proof(allowed_positions[idx], len(ids))}, rfl⟩"
            )
        else:
            lines.extend(
                [
                    "  · exfalso",
                    "    revert hprefix",
                    "    decide",
                ]
            )
    return lines


def emit_tail_theorem(name: str, prefix: list[str]) -> list[str]:
    lines = [
        f"theorem {name}_tail_of_closed_labels",
        "    {rank : Fin numPairWords}",
        "    {rest : List Face}",
        "    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym)",
        "    (hlabels :",
        "      topPairingRankFaceLabels rank =",
        f"        {name}Prefix ++ rest) :",
        f"    TopPairingTraceTail {name}Prefix.length",
        f"      {name}Gap {name}Linear rest := by",
        "  have htail0 :",
        "      TopPairingTraceTail 0 0 (matId : Mat3 Rat)",
        f"        ({name}Prefix ++ rest) := by",
        "    simpa [hlabels] using",
        "      TopPairingTraceTail.ofClosedRank hclosed",
    ]
    prev = "htail0"
    for i in range(1, len(prefix) + 1):
        lines.append(f"  have htail{i} := TopPairingTraceTail.cons_tail {prev}")
        prev = f"htail{i}"
    lines.extend(
        [
            f"  simpa [{name}Prefix, {name}Gap, {name}Linear] using",
            f"    {prev}",
        ]
    )
    return lines


def emit_bucket(index: int, bucket: dict[str, Any]) -> list[str]:
    name = f"Prefix{index:03d}"
    prefix = list(bucket["prefix"])
    ids = list(bucket["accepted_indices"])
    gain = int(bucket["gain"])
    gap_expr = nested_call("topPairingNextGap", "0", prefix)
    linear_expr = nested_call(
        "topPairingNextLinear", "(matId : Mat3 Rat)", prefix
    )
    lines: list[str] = [
        f"def {name}Allowed (traceId : AcceptedTraceId) : Prop :=",
        "  " + or_prop("traceId", ids),
        "",
        f"def {name}Prefix : List Face :=",
        "  " + face_expr(prefix),
        "",
        f"def {name}Gap : Nat :=",
        "  " + gap_expr,
        "",
        f"def {name}Linear : Mat3 Rat :=",
        "  " + linear_expr,
        "",
        *emit_gain_theorem(name, ids, gain),
        "",
        *emit_tail_theorem(name, prefix),
        "",
        f"def {name}ShardFamily",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (rank : Fin numPairWords) : Prop :=",
        "  TopPairingClosedLanguageAtRank rank Face.ym /\\",
        "    TopPairingActualFaceOmniAtRank rank /\\",
        "      Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank",
        "        rank Face.ym /\\",
        "        TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels",
        "          (topPairingRankFaceLabels rank) /\\",
        "          (∃ rest : List Face,",
        f"            topPairingRankFaceLabels rank = {name}Prefix ++ rest) /\\",
        f"            scaledMargin rank <= (176 : Int) + ({gain} : Int)",
        "",
        f"theorem stateDAGPrefixFamily_of_{name}ShardFamily",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        f"    (hrank : {name}ShardFamily scaledMargin rank) :",
        "    StateDAGPrefixClosedMarginFamily",
        f"      {name}Prefix {name}Gap {name}Linear",
        f"      ({gain}) scaledMargin rank := by",
        "  rcases hrank with",
        "    ⟨hclosed, hactual, hbad, hterminal, hprefix, hmargin⟩",
        "  rcases hprefix with ⟨rest, hlabels⟩",
        "  refine ⟨hclosed, hactual, hbad, hterminal, ?_, hmargin⟩",
        "  exact",
        f"    ⟨rest, hlabels, {name}_tail_of_closed_labels hclosed hlabels⟩",
        "",
        f"theorem {name}Shard_evalLanguage",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        f"    (hrank : {name}ShardFamily scaledMargin rank) :",
        "    TopPairingBellmanEvalLanguageAtRank",
        "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
        "      scaledMargin rank Face.ym :=",
        "  evalLanguage_of_stateDAGPrefixFamily",
        f"    (allowedTraceId := {name}Allowed)",
        f"    (pfx := {name}Prefix)",
        f"    (gap := {name}Gap)",
        f"    (linear := {name}Linear)",
        f"    (gain := ({gain} : Int))",
        f"    {name}Prefix_gain",
        f"    (stateDAGPrefixFamily_of_{name}ShardFamily hrank)",
        "",
        f"theorem {name}Shard_scaledMargin_nonpos",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        f"    (hrank : {name}ShardFamily scaledMargin rank) :",
        "    scaledMargin rank <= 0 :=",
        "  stateDAGPrefixFamily_scaledMargin_nonpos",
        f"    (allowedTraceId := {name}Allowed)",
        f"    (pfx := {name}Prefix)",
        f"    (gap := {name}Gap)",
        f"    (linear := {name}Linear)",
        f"    (gain := ({gain} : Int))",
        f"    {name}Prefix_gain",
        f"    (stateDAGPrefixFamily_of_{name}ShardFamily hrank)",
        "",
    ]
    return lines


def nested_or_type(names: list[str], scaled: str, rank: str) -> str:
    terms = [f"{name}ShardFamily {scaled} {rank}" for name in names]
    if len(terms) == 1:
        return terms[0]
    return " \\/\n    ".join(terms)


def emit_or_cases(names: list[str], theorem_suffix: str) -> list[str]:
    if len(names) == 1:
        return [f"  exact {names[0]}Shard_{theorem_suffix} hrank"]
    lines = ["  " + f"rcases hrank with " + " | ".join(f"h{i}" for i in range(len(names))) ]
    # The single `rcases` line above is intentionally only used for small groups.
    # For nested Ors Lean's parser accepts this flat pattern.
    for i, name in enumerate(names):
        lines.append(f"  · exact {name}Shard_{theorem_suffix} h{i}")
    return lines


def emit_group(names: list[str]) -> list[str]:
    return [
        "def SelectedPrefixGroupFamily",
        "    (scaledMargin : Fin numPairWords -> Int)",
        "    (rank : Fin numPairWords) : Prop :=",
        "  " + nested_or_type(names, "scaledMargin", "rank"),
        "",
        "theorem selectedPrefixGroup_evalLanguage",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hrank : SelectedPrefixGroupFamily scaledMargin rank) :",
        "    TopPairingBellmanEvalLanguageAtRank",
        "      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)",
        "      scaledMargin rank Face.ym := by",
        *emit_or_cases(names, "evalLanguage"),
        "",
        "theorem selectedPrefixGroup_scaledMargin_nonpos",
        "    {scaledMargin : Fin numPairWords -> Int}",
        "    {rank : Fin numPairWords}",
        "    (hrank : SelectedPrefixGroupFamily scaledMargin rank) :",
        "    scaledMargin rank <= 0 := by",
        *emit_or_cases(names, "scaledMargin_nonpos"),
        "",
        "theorem selected_prefix_group_builds : True := by",
        "  exact True.intro",
        "",
    ]


def render_lean(buckets: list[dict[str, Any]], namespace: str = DEFAULT_NAMESPACE) -> str:
    names = [f"Prefix{i:03d}" for i in range(len(buckets))]
    lines = [
        "import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke",
        "",
        "/-!",
        "Bounded selected-prefix group for the top-pairing Bellman route.",
        "",
        "This file is generated by",
        "`scripts/emit_top_pairing_state_dag_selected_prefix_group.py`.",
        "It remains a bounded smoke: every family object is semantic, built from",
        "closed-language membership, terminal filters, a prefix/tail constructor,",
        "and a shared margin bound.  There are no sampled rank/path objects.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "open Cuboctahedron",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge",
        "open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGPrefixSmoke",
        "",
    ]
    for idx, bucket in enumerate(buckets):
        lines.extend(emit_bucket(idx, bucket))
    lines.extend(emit_group(names))
    lines.append(
        f"end {namespace}"
    )
    lines.append("")
    return "\n".join(lines)


def render_markdown(report: dict[str, Any]) -> str:
    lines = [
        "# Top-Pairing Selected Prefix Group",
        "",
        "This is generated scaffolding plus exact diagnostic planning data, not",
        "standalone proof.  The corresponding Lean file checks the semantic",
        "prefix/tail bridge for the selected buckets.",
        "",
        f"- source cover: `{report['source_cover']}`",
        f"- emitted buckets: `{report['bucket_count']}`",
        f"- accepted traces covered by these buckets: `{report['accepted_trace_count']}`",
        f"- Lean file: `{report['lean_file']}`",
        "",
        "## Buckets",
        "",
        "| # | depth | gain | accepted indices | terminal closed below prefix | prefix |",
        "| ---: | ---: | ---: | --- | ---: | --- |",
    ]
    for bucket in report["buckets"]:
        lines.append(
            "| `{index}` | `{depth}` | `{gain}` | `{accepted}` | `{closed}` | `{prefix}` |".format(
                index=bucket.get("cover_index", bucket["index"]),
                depth=bucket["depth"],
                gain=bucket["gain"],
                accepted=", ".join(str(i) for i in bucket["accepted_indices"]),
                closed=bucket["terminal_path_histogram_below_prefix"].get("closed", 0),
                prefix=" ".join(bucket["prefix"]),
            )
        )
    lines.extend(
        [
            "",
            "## Gate",
            "",
            "Accept this group only if the generated Lean file builds under a",
            "guarded focused check and forbidden-token scans show no sampled",
            "membership or forbidden proof shortcuts.",
            "",
        ]
    )
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--cover-json", type=Path, default=DEFAULT_COVER)
    parser.add_argument("--start", type=int, default=0)
    parser.add_argument("--count", type=int, default=5)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--lean", type=Path, default=DEFAULT_LEAN)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--markdown", type=Path, default=DEFAULT_MD)
    args = parser.parse_args()

    cover = json.loads(args.cover_json.read_text())
    buckets = cover["cover"][args.start : args.start + args.count]
    if not buckets:
        raise SystemExit("no buckets selected")

    args.lean.parent.mkdir(parents=True, exist_ok=True)
    args.lean.write_text(render_lean(buckets, namespace=args.namespace))

    report_buckets = []
    accepted = set()
    for idx, bucket in enumerate(buckets):
        state = shard_plan.advance_prefix(list(bucket["prefix"]))
        terminal = shard_plan.terminal_counts_from_prefix(list(bucket["prefix"]), state)
        clean_state = {k: v for k, v in state.items() if not k.startswith("_")}
        accepted.update(bucket["accepted_indices"])
        report_buckets.append(
            {
                "index": idx,
                "cover_index": args.start + idx,
                "depth": bucket["depth"],
                "gain": bucket["gain"],
                "prefix": bucket["prefix"],
                "accepted_indices": bucket["accepted_indices"],
                "state_after_prefix": clean_state,
                **terminal,
            }
        )

    report = {
        "source_cover": args.cover_json.relative_to(ROOT).as_posix(),
        "bucket_count": len(buckets),
        "accepted_trace_count": len(accepted),
        "lean_file": args.lean.relative_to(ROOT).as_posix(),
        "buckets": report_buckets,
    }
    args.json.parent.mkdir(parents=True, exist_ok=True)
    args.markdown.parent.mkdir(parents=True, exist_ok=True)
    args.json.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    args.markdown.write_text(render_markdown(report))


if __name__ == "__main__":
    main()
