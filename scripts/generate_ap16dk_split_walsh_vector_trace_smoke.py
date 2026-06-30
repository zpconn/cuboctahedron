#!/usr/bin/env python3
"""Generate a split AP16 Walsh-vector trace smoke.

The AP16CM trace fixture checks all 13 local prefix-step equalities in one Lean
file.  AP16DJ showed that a new trace fixture can peak above the 5 GiB
production gate.  This AP16DK emitter keeps the same theorem surface but splits
the work into:

* a data module containing the generated word, prefix vectors, and final vector;
* one module per local prefix-step proof, optionally split into one theorem per
  vector component for high-memory tail steps;
* one final-vector proof module;
* a tiny root module that assembles `TranslationWalshVectorTrace`.

This is still smoke infrastructure, not final generated coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import check_certificates_independently as exact  # noqa: E402
from generate_ap16cm_walsh_vector_trace_smoke import (  # noqa: E402
    emit_pair_word,
    emit_prefix_dispatch,
    emit_word_get_simp,
    symbolic_translation_final,
    symbolic_translation_prefixes,
    trace_norm_defs,
)
from generate_ap16by_walsh_symbolic_all_smoke import emit_walsh_vec  # noqa: E402


BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")
BASE_MODULE = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16dk_split_trace_smoke.json"
)
DEFAULT_SPLIT_RANK = 6000745
TRACE_COMPONENTS = ("x", "y", "z")


def module_from_path(path: Path) -> str:
    return str(path).removesuffix(".lean").replace("/", ".")


def path_for(stem: str) -> Path:
    return BASE_DIR / f"{stem}.lean"


def prelude(namespace: str) -> list[str]:
    return [
        f"namespace {namespace}",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube",
        "",
        "set_option maxHeartbeats 0",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]


def emit_data(rank: int, namespace: str, stem: str) -> Path:
    word = exact.pair_word_at_rank(rank)
    prefixes = symbolic_translation_prefixes(word)
    final = symbolic_translation_final(word, prefixes)
    path = path_for(f"{stem}DataSmoke")
    lines: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TranslationWalshVector",
        "",
        "/-!",
        f"Generated AP16DK split Walsh-vector trace data for rank `{rank}`.",
        "-/",
        "",
        *prelude(namespace),
        f"def generatedRank : Fin numPairWords := ⟨{rank}, by decide⟩",
        "",
        "def generatedWord : PairWord :=",
        f"  {emit_pair_word(word)}",
        "",
        "theorem generatedRankWord :",
        "    rankPairWord? generatedWord = some generatedRank := by",
        "  decide",
        "",
        "theorem generatedUnrank :",
        "    unrankPairWord generatedRank = generatedWord := by",
        "  exact (rankPairWord?_eq_some_iff_unrank generatedWord generatedRank).1",
        "    generatedRankWord |>.symm",
        "",
    ]
    lines.extend(
        line.replace("@[simp] private theorem", "@[simp] theorem")
        for line in emit_word_get_simp(word)
    )
    for index, prefix in enumerate(prefixes):
        lines.extend(emit_walsh_vec(f"generatedPref{index:02d}", prefix, visibility=""))
        lines.append("")
    vector_lines = emit_walsh_vec("generatedVector", final, visibility="")
    lines.extend(vector_lines)
    lines.append("")
    lines.extend(
        line.replace("private def generatedPrefix", "def generatedPrefix")
        for line in emit_prefix_dispatch(len(prefixes))
    )
    lines.extend([
        "",
        "theorem splitTraceData_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def emit_step(
    rank: int,
    namespace: str,
    stem: str,
    index: int,
    *,
    chain_imports: bool = False,
) -> Path:
    _ = rank
    path = path_for(f"{stem}Step{index:02d}Smoke")
    import_module = (
        f"{BASE_MODULE}.{stem}DataSmoke"
        if not chain_imports or index == 0
        else f"{BASE_MODULE}.{stem}Step{index - 1:02d}Smoke"
    )
    step_defs = trace_norm_defs([index, index + 1], include_step=True, include_final=False)
    lines = [
        f"import {import_module}",
        "",
        "/-!",
        f"Generated AP16DK split Walsh-vector trace step `{index}`.",
        "-/",
        "",
        *prelude(namespace),
        f"theorem generatedTrace_step_{index:02d} :",
        f"    generatedPrefix ({index} + 1) =",
        f"      translationPrefixWalshStepAt generatedWord ({index} : WordIndex)",
        f"        (generatedPrefix {index}) := by",
        f"  simp [{step_defs}] <;> norm_num [{step_defs}]",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def trace_step_component_norm_defs(index: int, component: str) -> str:
    """Normalization set for a single component of a local trace step.

    The previous prefix vector may contribute through matrix multiplication, so
    keep all of `generatedPref index`.  The next prefix appears only on the
    left-hand side, so unfold only the target coordinate.  This keeps the
    component proof smaller than the generic all-coordinate trace normalizer.
    """
    names = trace_norm_defs([index], include_step=True, include_final=False)
    names += f", generatedPref{index + 1:02d}, generatedPref{index + 1:02d}_{component}"
    return names


def emit_step_component(
    rank: int,
    namespace: str,
    stem: str,
    index: int,
    component: str,
) -> Path:
    _ = rank
    if component not in TRACE_COMPONENTS:
        raise ValueError(f"unknown trace component: {component}")
    path = path_for(f"{stem}Step{index:02d}{component.upper()}Smoke")
    step_defs = trace_step_component_norm_defs(index, component)
    lines = [
        f"import {BASE_MODULE}.{stem}DataSmoke",
        "",
        "/-!",
        f"Generated AP16DK split Walsh-vector trace step `{index}` component `{component}`.",
        "-/",
        "",
        *prelude(namespace),
        f"theorem generatedTrace_step_{index:02d}_{component} :",
        f"    (generatedPrefix ({index} + 1)).{component} =",
        f"      (translationPrefixWalshStepAt generatedWord ({index} : WordIndex)",
        f"        (generatedPrefix {index})).{component} := by",
        f"  simp [{step_defs}] <;> norm_num [{step_defs}]",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def emit_step_from_components(
    namespace: str,
    stem: str,
    index: int,
    *,
    chain_imports: bool = False,
) -> Path:
    path = path_for(f"{stem}Step{index:02d}Smoke")
    imports = [
        f"import {BASE_MODULE}.{stem}Step{index:02d}{component.upper()}Smoke"
        for component in TRACE_COMPONENTS
    ]
    if chain_imports and index > 0:
        imports.insert(0, f"import {BASE_MODULE}.{stem}Step{index - 1:02d}Smoke")
    lines = [
        *imports,
        "",
        "/-!",
        f"Generated AP16DK split Walsh-vector trace step `{index}` from component proofs.",
        "-/",
        "",
        *prelude(namespace),
        f"theorem generatedTrace_step_{index:02d} :",
        f"    generatedPrefix ({index} + 1) =",
        f"      translationPrefixWalshStepAt generatedWord ({index} : WordIndex)",
        f"        (generatedPrefix {index}) :=",
        "  WalshAffineVec3.ext",
        f"    generatedTrace_step_{index:02d}_x",
        f"    generatedTrace_step_{index:02d}_y",
        f"    generatedTrace_step_{index:02d}_z",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def trace_final_component_norm_defs(component: str) -> str:
    """Normalization set for a single component of the final-vector proof."""
    names = trace_norm_defs([13], include_step=False, include_final=False)
    names += f", generatedVector, generatedVector_{component}"
    return names


def emit_final(namespace: str, stem: str, *, chain_imports: bool = False) -> Path:
    path = path_for(f"{stem}FinalSmoke")
    import_module = (
        f"{BASE_MODULE}.{stem}Step12Smoke"
        if chain_imports
        else f"{BASE_MODULE}.{stem}DataSmoke"
    )
    final_defs = trace_norm_defs([13], include_step=False, include_final=True)
    lines = [
        f"import {import_module}",
        "",
        "/-!",
        "Generated AP16DK split Walsh-vector trace final-vector proof.",
        "-/",
        "",
        *prelude(namespace),
        "theorem generatedTrace_final :",
        "    generatedVector =",
        "      WalshAffineVec3.add (generatedPrefix 13)",
        "        (WalshAffineVec3.const",
        "          (matVec (pairPrefixLinearNat generatedWord 13)",
        "            (pairReflectionDeltaQ PairId.x))) := by",
        f"  simp [{final_defs}] <;> norm_num [{final_defs}]",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def emit_final_component(
    namespace: str,
    stem: str,
    component: str,
) -> Path:
    if component not in TRACE_COMPONENTS:
        raise ValueError(f"unknown trace component: {component}")
    path = path_for(f"{stem}Final{component.upper()}Smoke")
    final_defs = trace_final_component_norm_defs(component)
    lines = [
        f"import {BASE_MODULE}.{stem}DataSmoke",
        "",
        "/-!",
        f"Generated AP16DK split Walsh-vector trace final-vector component `{component}`.",
        "-/",
        "",
        *prelude(namespace),
        f"theorem generatedTrace_final_{component} :",
        f"    generatedVector.{component} =",
        f"      (WalshAffineVec3.add (generatedPrefix 13)",
        f"        (WalshAffineVec3.const",
        f"          (matVec (pairPrefixLinearNat generatedWord 13)",
        f"            (pairReflectionDeltaQ PairId.x)))).{component} := by",
        f"  simp [{final_defs}] <;> norm_num [{final_defs}]",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def emit_final_from_components(namespace: str, stem: str) -> Path:
    path = path_for(f"{stem}FinalSmoke")
    imports = [
        f"import {BASE_MODULE}.{stem}Final{component.upper()}Smoke"
        for component in TRACE_COMPONENTS
    ]
    lines = [
        *imports,
        "",
        "/-!",
        "Generated AP16DK split Walsh-vector trace final-vector proof from components.",
        "-/",
        "",
        *prelude(namespace),
        "theorem generatedTrace_final :",
        "    generatedVector =",
        "      WalshAffineVec3.add (generatedPrefix 13)",
        "        (WalshAffineVec3.const",
        "          (matVec (pairPrefixLinearNat generatedWord 13)",
        "            (pairReflectionDeltaQ PairId.x))) :=",
        "  WalshAffineVec3.ext",
        "    generatedTrace_final_x",
        "    generatedTrace_final_y",
        "    generatedTrace_final_z",
        "",
        f"end {namespace}",
        "",
    ]
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def emit_root(namespace: str, stem: str, *, chain_imports: bool = False) -> Path:
    path = path_for(f"{stem}Smoke")
    if chain_imports:
        imports = [
            f"import {BASE_MODULE}.{stem}Step12Smoke",
            f"import {BASE_MODULE}.{stem}FinalSmoke",
        ]
    else:
        imports = [
            f"import {BASE_MODULE}.{stem}DataSmoke",
            *[
                f"import {BASE_MODULE}.{stem}Step{index:02d}Smoke"
                for index in range(13)
            ],
            f"import {BASE_MODULE}.{stem}FinalSmoke",
        ]
    lines = [
        *imports,
        "",
        "/-!",
        "Generated AP16DK split Walsh-vector trace root.",
        "-/",
        "",
        *prelude(namespace),
        "theorem generatedVector_eq_translationVectorWalsh :",
        "    generatedVector = translationVectorWalshOfChoice generatedWord :=",
        "  TranslationWalshVectorTrace.final_eq_translationVectorWalsh {",
        "    pref := generatedPrefix",
        "    zero_eq := by",
        "      norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const,",
        "        WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const,",
        "        WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero,",
        "        pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ,",
        "        matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot,",
        "        scalarMul, canonicalNormalQ, generatedPref00, generatedPref00_x,",
        "        generatedPref00_y, generatedPref00_z, WalshAffineVec3.zero]",
        "    step_eq := by",
        "      intro i",
        "      fin_cases i",
    ]
    for index in range(13):
        lines.append(f"      · exact generatedTrace_step_{index:02d}")
    lines.extend([
        "    final_eq := generatedTrace_final",
        "  }",
        "",
        "theorem generatedVector_eval_eq_translationVector (mask : SignMask) :",
        "    generatedVector.eval mask = translationVectorOfChoice generatedWord mask := by",
        "  rw [generatedVector_eq_translationVectorWalsh,",
        "    translationVectorWalshOfChoice_eval]",
        "",
        "theorem generatedUnrank_builds :",
        "    unrankPairWord generatedRank = generatedWord :=",
        "  generatedUnrank",
        "",
        "theorem walshVectorTraceSmoke_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")
    return path


def write_report(
    *,
    rank: int,
    namespace: str,
    stem: str,
    dependency_mode: str,
    component_steps: list[int],
    component_final: bool,
    paths: list[Path],
    report: Path,
) -> None:
    payload = {
        "phase": "Phase 6Z.6K.8AP.16DK",
        "schema_version": 1,
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": rank,
        "namespace": namespace,
        "root_module": f"{BASE_MODULE}.{stem}Smoke",
        "dependency_mode": dependency_mode,
        "component_steps": component_steps,
        "component_final": component_final,
        "targets": [
            {
                "kind": (
                    "data" if "DataSmoke" in path.name else
                    "final_component" if (
                        component_final
                        and any(
                            f"Final{component.upper()}Smoke" in path.name
                            for component in TRACE_COMPONENTS
                        )
                    ) else
                    "final" if "FinalSmoke" in path.name else
                    "root" if path.name == f"{stem}Smoke.lean" else
                    "step_component" if (
                        any(
                            f"Step{index:02d}{component.upper()}Smoke" in path.name
                            for index in component_steps
                            for component in TRACE_COMPONENTS
                        )
                    ) else
                    "step"
                ),
                "module": module_from_path(path),
                "path": str(path),
            }
            for path in paths
        ],
    }
    report.parent.mkdir(parents=True, exist_ok=True)
    report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DK Split Trace Smoke",
            "",
            "Generated split Walsh-vector trace smoke. This is not final coverage.",
            "",
            f"- rank: `{rank}`",
            f"- root module: `{payload['root_module']}`",
            f"- dependency mode: `{dependency_mode}`",
            f"- component steps: `{component_steps}`",
            f"- component final: `{component_final}`",
            f"- targets: `{len(paths)}`",
            "",
            "| kind | module |",
            "| --- | --- |",
            *[
                f"| {target['kind']} | `{target['module']}` |"
                for target in payload["targets"]
            ],
            "",
        ]),
        encoding="utf-8",
    )


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_SPLIT_RANK)
    parser.add_argument(
        "--stem",
        default=None,
        help="Lean module stem under SupportFamilies. Defaults to rank-specific AP16DK stem.",
    )
    parser.add_argument(
        "--namespace",
        default=None,
        help="Fully-qualified Lean namespace. Defaults to the generated root module name.",
    )
    parser.add_argument(
        "--dependency-mode",
        choices=("sibling", "chain"),
        default="sibling",
        help=(
            "Import topology for the split step modules. `sibling` preserves "
            "the original AP16DK layout; `chain` imports Step(n-1) from Step(n) "
            "so Lake cannot build all step proofs in parallel from a cold root."
        ),
    )
    parser.add_argument(
        "--component-step",
        action="append",
        type=int,
        default=[],
        help=(
            "Split this local step proof into x/y/z component theorem files. "
            "May be repeated. Intended for isolated high-memory tail steps."
        ),
    )
    parser.add_argument(
        "--component-final",
        action="store_true",
        help="Split the final-vector proof into x/y/z component theorem files.",
    )
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    stem = args.stem or f"ImpactSubcubeWalshVectorTraceRank{args.rank}Split"
    namespace = args.namespace or f"{BASE_MODULE}.{stem}Smoke"
    chain_imports = args.dependency_mode == "chain"
    component_steps = sorted(set(args.component_step))
    invalid_steps = [index for index in component_steps if index < 0 or index >= 13]
    if invalid_steps:
        raise SystemExit(f"component steps must be in [0, 13): {invalid_steps}")
    paths = [emit_data(args.rank, namespace, stem)]
    for index in range(13):
        if index in component_steps:
            for component in TRACE_COMPONENTS:
                paths.append(emit_step_component(args.rank, namespace, stem, index, component))
            paths.append(emit_step_from_components(namespace, stem, index, chain_imports=chain_imports))
        else:
            paths.append(
                emit_step(
                    args.rank,
                    namespace,
                    stem,
                    index,
                    chain_imports=chain_imports,
                )
            )
    if args.component_final:
        for component in TRACE_COMPONENTS:
            paths.append(emit_final_component(namespace, stem, component))
        paths.append(emit_final_from_components(namespace, stem))
    else:
        paths.append(emit_final(namespace, stem, chain_imports=chain_imports))
    paths.append(emit_root(namespace, stem, chain_imports=chain_imports))
    write_report(
        rank=args.rank,
        namespace=namespace,
        stem=stem,
        dependency_mode=args.dependency_mode,
        component_steps=component_steps,
        component_final=bool(args.component_final),
        paths=paths,
        report=args.report,
    )
    print(f"wrote {len(paths)} files; root={BASE_MODULE}.{stem}Smoke")


if __name__ == "__main__":
    main()
