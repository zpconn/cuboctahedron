#!/usr/bin/env python3
"""Audit import fan-in for the top-pairing Bellman semantic-gate frontier.

This is diagnostic status evidence, not proof.  It recursively follows Lean
`import` lines for a small set of candidate modules and reports how much
generated infrastructure each target pulls into its import closure.
"""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]

TARGETS = {
    "search_semantic_gate":
        "Cuboctahedron.Search.TopPairingBellmanSemanticGate",
    "terminal_accepted_gate":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingTerminalAcceptedBridge",
    "terminal_direct_socket":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingTerminalDirectSequenceSocket",
    "selected_prefix_residual_bridge":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingSelectedPrefixResidualBridge",
    "state_dag_prefix_socket":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingStateDAGPrefixSmoke",
    "state_dag_selected_prefix_group":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingStateDAGSelectedPrefixGroup",
    "state_dag_selected_prefix_cover":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingStateDAGSelectedPrefixCover.All",
    "root_trace_margin_bridge":
        "Cuboctahedron.Generated.NonIdentity.Residual."
        "BellmanTopPairingRootTraceMarginSelectedPrefixBridge",
}


def module_to_path(module: str) -> Path:
    return ROOT / (module.replace(".", "/") + ".lean")


def path_to_module(path: Path) -> str:
    rel = path.relative_to(ROOT).with_suffix("")
    return ".".join(rel.parts)


def parse_imports(path: Path) -> list[str]:
    if not path.exists():
        return []
    imports: list[str] = []
    for line in path.read_text().splitlines():
        stripped = line.strip()
        if not stripped.startswith("import "):
            continue
        parts = stripped.split()
        if len(parts) >= 2:
            imports.append(parts[1])
    return imports


def closure(module: str) -> tuple[set[str], list[str]]:
    seen: set[str] = set()
    missing: list[str] = []

    def visit(mod: str) -> None:
        if mod in seen:
            return
        seen.add(mod)
        path = module_to_path(mod)
        if not path.exists():
            missing.append(mod)
            return
        for imported in parse_imports(path):
            visit(imported)

    visit(module)
    return seen, sorted(set(missing))


def classify(modules: set[str]) -> dict[str, object]:
    generated = sorted(
        m for m in modules if m.startswith("Cuboctahedron.Generated.")
    )
    generated_residual = sorted(
        m for m in generated
        if m.startswith("Cuboctahedron.Generated.NonIdentity.Residual.")
    )
    split_graph = sorted(
        m for m in generated_residual
        if ".BellmanTopPairingGraphEvalSplit10MSmoke." in m
    )
    terminal_trace = sorted(
        m for m in generated_residual
        if ".TopPairingTraceClassifier.Terminal." in m
    )
    selected_prefix = sorted(
        m for m in generated_residual
        if "SelectedPrefix" in m or "StateDAGSelectedPrefix" in m
    )
    root_trace_margin = sorted(
        m for m in generated_residual
        if "RootTraceMargin" in m
    )
    sampled = sorted(
        m for m in modules
        if any(tok in m for tok in ("Sampled", "Smoke"))
    )
    return {
        "module_count": len(modules),
        "generated_count": len(generated),
        "generated_residual_count": len(generated_residual),
        "split_graph_smoke_count": len(split_graph),
        "terminal_trace_shard_count": len(terminal_trace),
        "selected_prefix_count": len(selected_prefix),
        "root_trace_margin_count": len(root_trace_margin),
        "sampled_or_smoke_name_count": len(sampled),
        "generated_residual_modules": generated_residual,
        "split_graph_smoke_modules": split_graph,
        "terminal_trace_modules": terminal_trace,
        "root_trace_margin_modules": root_trace_margin,
    }


def decision_for(name: str, stats: dict[str, object]) -> str:
    split_graph = int(stats["split_graph_smoke_count"])
    terminal = int(stats["terminal_trace_shard_count"])
    root_trace = int(stats["root_trace_margin_count"])
    generated_residual = int(stats["generated_residual_count"])

    if name == "root_trace_margin_bridge":
        return "heavy-producer-root-keep-downstream"
    if name == "state_dag_selected_prefix_cover":
        return "semantic-producer-root-serial-build-required"
    if name == "state_dag_selected_prefix_group":
        return "bounded-semantic-producer-group"
    if name == "state_dag_prefix_socket":
        return "semantic-socket-ok"
    if split_graph or terminal > 10:
        return "reject-as-lightweight-public-bridge"
    if root_trace:
        return "producer-adapter-only-do-not-import-from-residual-root"
    if generated_residual <= 8:
        return "lightweight-boundary-ok"
    return "needs-manual-review"


def main() -> None:
    target_reports: dict[str, dict[str, object]] = {}
    for name, module in TARGETS.items():
        modules, missing = closure(module)
        stats = classify(modules)
        stats["module"] = module
        stats["missing_imports"] = missing
        stats["decision"] = decision_for(name, stats)
        target_reports[name] = stats

    summary = {
        "targets": target_reports,
        "overall_decision": (
            "keep-semantic-gate-lightweight-and-producer-roots-downstream"
        ),
    }

    out_json = ROOT / "scripts/generated/top_pairing_semantic_gate_imports.json"
    out_md = ROOT / "scripts/generated/top_pairing_semantic_gate_imports.md"
    out_json.parent.mkdir(parents=True, exist_ok=True)
    out_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")

    lines = [
        "# Top-Pairing Bellman Semantic Gate Import Audit",
        "",
        "This audit is diagnostic status evidence, not proof.  It follows Lean",
        "`import` lines for key Bellman semantic-gate modules and reports whether",
        "a target is lightweight enough to sit on a public/residual bridge path.",
        "",
        f"- overall decision: `{summary['overall_decision']}`",
        "",
        "| target | decision | modules | generated residual | split graph smoke | terminal trace shards | root trace-margin |",
        "| --- | --- | ---: | ---: | ---: | ---: | ---: |",
    ]
    for name, stats in target_reports.items():
        lines.append(
            "| `{}` | `{}` | `{}` | `{}` | `{}` | `{}` | `{}` |".format(
                name,
                stats["decision"],
                stats["module_count"],
                stats["generated_residual_count"],
                stats["split_graph_smoke_count"],
                stats["terminal_trace_shard_count"],
                stats["root_trace_margin_count"],
            )
        )

    lines.extend([
        "",
        "## Interpretation",
        "",
        "- `search_semantic_gate` should remain the preferred public theorem",
        "  surface for Bellman membership plumbing.",
        "- `terminal_accepted_gate` is acceptable as a generated leaf/socket",
        "  consumer when its imports remain already-built and bounded.",
        "- `root_trace_margin_bridge` is a producer-root adapter, not a module to",
        "  import from the public residual bridge.",
        "- `state_dag_prefix_socket` is the accepted semantic Bellman terminal",
        "  socket.  It is theorem-facing and small enough for focused checks.",
        "- `state_dag_selected_prefix_cover` is the accepted bounded semantic",
        "  producer root for the current top-pairing selected-prefix subproblem,",
        "  but it must be compiled with serial group scheduling before the root.",
        "- Any future public/residual bridge target with split graph smoke shards",
        "  or many terminal shards in its closure should be rejected or moved",
        "  behind a separate measured producer root.",
        "",
    ])

    for name, stats in target_reports.items():
        lines.extend([
            f"## `{name}`",
            "",
            f"- module: `{stats['module']}`",
            f"- decision: `{stats['decision']}`",
            f"- missing imports: `{len(stats['missing_imports'])}`",
            f"- generated residual modules: `{stats['generated_residual_count']}`",
            f"- split graph smoke modules: `{stats['split_graph_smoke_count']}`",
            f"- terminal trace modules: `{stats['terminal_trace_shard_count']}`",
            "",
        ])

    out_md.write_text("\n".join(lines) + "\n")
    print(f"wrote {out_json.relative_to(ROOT)}")
    print(f"wrote {out_md.relative_to(ROOT)}")
    print(f"overall decision: {summary['overall_decision']}")


if __name__ == "__main__":
    main()
