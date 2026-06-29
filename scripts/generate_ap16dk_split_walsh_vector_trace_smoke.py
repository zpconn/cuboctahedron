#!/usr/bin/env python3
"""Generate a split AP16 Walsh-vector trace smoke.

The AP16CM trace fixture checks all 13 local prefix-step equalities in one Lean
file.  AP16DJ showed that a new trace fixture can peak above the 5 GiB
production gate.  This AP16DK emitter keeps the same theorem surface but splits
the work into:

* a data module containing the generated word, prefix vectors, and final vector;
* one module per local prefix-step proof;
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


def emit_step(rank: int, namespace: str, stem: str, index: int) -> Path:
    _ = rank
    path = path_for(f"{stem}Step{index:02d}Smoke")
    data_module = f"{BASE_MODULE}.{stem}DataSmoke"
    step_defs = trace_norm_defs([index, index + 1], include_step=True, include_final=False)
    lines = [
        f"import {data_module}",
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


def emit_final(namespace: str, stem: str) -> Path:
    path = path_for(f"{stem}FinalSmoke")
    data_module = f"{BASE_MODULE}.{stem}DataSmoke"
    final_defs = trace_norm_defs([13], include_step=False, include_final=True)
    lines = [
        f"import {data_module}",
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


def emit_root(namespace: str, stem: str) -> Path:
    path = path_for(f"{stem}Smoke")
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
        "def generatedTrace :",
        "    TranslationWalshVectorTrace generatedWord generatedVector where",
        "  pref := generatedPrefix",
        "  zero_eq := by",
        "    norm_num [generatedPrefix, WalshAffineVec3.add, WalshAffineVec3.const,",
        "      WalshAffineVec3.smulConst, WalshAffine.add, WalshAffine.const,",
        "      WalshAffine.scale, WalshAffine.bit, WalshAffine.neg, WalshAffine.zero,",
        "      pairPrefixLinearNat, pairReflectionDeltaQ, reflD, canonicalOffsetQ,",
        "      matVec, matMul, matId, reflM, matSub, scalarMat, outer, dot,",
        "      scalarMul, canonicalNormalQ, generatedPref00, generatedPref00_x,",
        "      generatedPref00_y, generatedPref00_z, WalshAffineVec3.zero]",
        "  step_eq := by",
        "    intro i",
        "    fin_cases i",
    ]
    for index in range(13):
        lines.append(f"    · exact generatedTrace_step_{index:02d}")
    lines.extend([
        "  final_eq := generatedTrace_final",
        "",
        "theorem generatedVector_eq_translationVectorWalsh :",
        "    generatedVector = translationVectorWalshOfChoice generatedWord :=",
        "  TranslationWalshVectorTrace.final_eq_translationVectorWalsh generatedTrace",
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
        "targets": [
            {
                "kind": (
                    "data" if "DataSmoke" in path.name else
                    "final" if "FinalSmoke" in path.name else
                    "root" if path.name == f"{stem}Smoke.lean" else
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
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    stem = args.stem or f"ImpactSubcubeWalshVectorTraceRank{args.rank}Split"
    namespace = args.namespace or f"{BASE_MODULE}.{stem}Smoke"
    paths = [emit_data(args.rank, namespace, stem)]
    paths.extend(emit_step(args.rank, namespace, stem, index) for index in range(13))
    paths.append(emit_final(namespace, stem))
    paths.append(emit_root(namespace, stem))
    write_report(rank=args.rank, namespace=namespace, stem=stem, paths=paths, report=args.report)
    print(f"wrote {len(paths)} files; root={BASE_MODULE}.{stem}Smoke")


if __name__ == "__main__":
    main()
