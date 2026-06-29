#!/usr/bin/env python3
"""Generate or dry-run an AP16DJ compact Walsh-cover batch.

AP16DJ is the guarded successor to the AP16DF two-signature smoke.  This script
consumes the AP16DJ batch plan and can emit per-signature trace fixtures,
selected-impact compact denominator consumers, cover modules, and a shallow
root.  By default it runs in dry-run mode and writes only a report/manifest.

Use `--emit` only for a bounded guarded smoke.  Do not run a broad package build
after emission; use the AP16DI-style serial guard target list in the report.
"""

from __future__ import annotations

import argparse
import json
import sys
from fractions import Fraction
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from generate_ap16cq_compact_denom_consumer_smoke import write_manifest_batch  # noqa: E402
from generate_ap16dc_compact_walsh_cover_smoke import (  # noqa: E402
    emit_lean as emit_cover_lean,
    write_report as write_cover_report,
)
from generate_ap16dk_split_walsh_vector_trace_smoke import (  # noqa: E402
    emit_data as emit_trace_data,
    emit_final as emit_trace_final,
    emit_root as emit_trace_root,
    emit_step as emit_trace_step,
)
from generate_ap16bl_impact_subcube_smoke import selected_subcubes  # noqa: E402
from generate_ap16bo_walsh_bound_smoke import term_bound  # noqa: E402
from generate_ap16t_precomputed_signature_smoke import (  # noqa: E402
    classified_cases_and_bad_masks_for_signature,
)
from profile_ap16bj_walsh_subcube_cover import compute_walsh_forms  # noqa: E402


BASE_NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"
BASE_DIR = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies")

DEFAULT_PLAN = Path(
    "scripts/generated/phase6z6k8ap16dj_compact_walsh_batch_plan.json"
)
DEFAULT_SOURCE = Path(
    "scripts/generated/phase6z6k8ap16dd_compact_walsh_cover_scaling.json"
)
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16dj_compact_walsh_batch_generation.json"
)

ROOT_LEAN = BASE_DIR / "ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke.lean"
ROOT_NS = f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomBatchSmoke"


def module_from_path(path: Path) -> str:
    return str(path).removesuffix(".lean").replace("/", ".")


def rank_suffix(rank: int) -> str:
    return f"Rank{rank}"


def trace_stem(rank: int) -> str:
    return f"ImpactSubcubeWalshVectorTrace{rank_suffix(rank)}Split"


def trace_namespace(rank: int) -> str:
    return f"{BASE_NS}.{trace_stem(rank)}Smoke"


def trace_lean(rank: int) -> Path:
    return BASE_DIR / f"{trace_stem(rank)}Smoke.lean"


def trace_data_lean(rank: int) -> Path:
    return BASE_DIR / f"{trace_stem(rank)}DataSmoke.lean"


def trace_step_lean(rank: int, index: int) -> Path:
    return BASE_DIR / f"{trace_stem(rank)}Step{index:02d}Smoke.lean"


def trace_final_lean(rank: int) -> Path:
    return BASE_DIR / f"{trace_stem(rank)}FinalSmoke.lean"


def trace_target_paths(rank: int) -> list[tuple[str, Path]]:
    return [
        ("trace_data", trace_data_lean(rank)),
        *[
            (f"trace_step_{index:02d}", trace_step_lean(rank, index))
            for index in range(13)
        ],
        ("trace_final", trace_final_lean(rank)),
        ("trace", trace_lean(rank)),
    ]


def emit_split_trace(rank: int) -> list[Path]:
    stem = trace_stem(rank)
    namespace = trace_namespace(rank)
    paths = [emit_trace_data(rank, namespace, stem)]
    paths.extend(emit_trace_step(rank, namespace, stem, index) for index in range(13))
    paths.append(emit_trace_final(namespace, stem))
    paths.append(emit_trace_root(namespace, stem))
    return paths


def impact_namespace(rank: int, impact: int) -> str:
    return (
        f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenom"
        f"{rank_suffix(rank)}Impact{impact:02d}Smoke"
    )


def impact_lean(rank: int, impact: int) -> Path:
    return (
        BASE_DIR
        / f"ImpactSubcubeWalshSymbolicCompactDenom{rank_suffix(rank)}Impact{impact:02d}Smoke.lean"
    )


def selected_root_namespace(rank: int) -> str:
    return (
        f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenom"
        f"{rank_suffix(rank)}SelectedImpactsSmoke"
    )


def selected_root_lean(rank: int) -> Path:
    return (
        BASE_DIR
        / f"ImpactSubcubeWalshSymbolicCompactDenom{rank_suffix(rank)}SelectedImpactsSmoke.lean"
    )


def cover_namespace(rank: int) -> str:
    return (
        f"{BASE_NS}.ImpactSubcubeWalshSymbolicCompactDenomCover"
        f"{rank_suffix(rank)}Smoke"
    )


def cover_lean(rank: int) -> Path:
    return (
        BASE_DIR
        / f"ImpactSubcubeWalshSymbolicCompactDenomCover{rank_suffix(rank)}Smoke.lean"
    )


def cover_json(rank: int) -> Path:
    return Path(
        f"scripts/generated/phase6z6k8ap16dj_rank{rank}_walsh_subcube_cover.json"
    )


def selected_manifest_json(rank: int) -> Path:
    return Path(
        f"scripts/generated/phase6z6k8ap16dj_rank{rank}_selected_impacts_manifest.json"
    )


def cover_report_json(rank: int) -> Path:
    return Path(
        f"scripts/generated/phase6z6k8ap16dj_rank{rank}_compact_walsh_cover_smoke.json"
    )


def load_source_by_rank(path: Path) -> dict[int, dict[str, Any]]:
    data = json.loads(path.read_text(encoding="utf-8"))
    result: dict[int, dict[str, Any]] = {}
    for item in data.get("results", []):
        result[int(item["rank"])] = item
    return result


def manifest_for_entry(entry: dict[str, Any]) -> dict[str, Any]:
    rank = int(entry["rank"])
    entries = []
    for impact in entry["selected_word_impacts"]:
        entries.append({
            "label": f"rank{rank}_mask{entry['anchor_mask']}_impact{impact}",
            "rank": rank,
            "mask": int(entry["anchor_mask"]),
            "impact_index": int(impact),
            "trace_namespace": trace_namespace(rank),
            "lean": str(impact_lean(rank, int(impact))),
            "namespace": impact_namespace(rank, int(impact)),
        })
    return {
        "root_lean": str(selected_root_lean(rank)),
        "root_namespace": selected_root_namespace(rank),
        "entries": entries,
    }


def write_cover_profile(source_by_rank: dict[int, dict[str, Any]], rank: int) -> dict[str, Any]:
    if rank not in source_by_rank:
        raise SystemExit(f"rank {rank} is not present in AP16DD source profile")
    payload = dict(source_by_rank[rank])
    payload["phase"] = "Phase 6Z.6K.8AP.16DJ"
    payload["trusted_as_proof"] = False
    path = cover_json(rank)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    return payload


def selected_data_from_forms(
    *,
    cover_path: Path,
    rank: int,
    selected_index: int,
    forms: dict[int, dict[tuple[int, ...], Fraction]],
) -> dict[str, Any]:
    selected_profile = json.loads(cover_path.read_text(encoding="utf-8"))
    selected = selected_profile["selected"][selected_index]
    coeffs = forms[int(selected["impact"]) - 1]
    terms = [
        (subset, coeff)
        for subset, coeff in sorted(coeffs.items(), key=lambda item: (len(item[0]), item[0]))
        if coeff
    ]
    bounds = [term_bound(selected["label"], subset, coeff) for subset, coeff in terms]
    return {
        "rank": rank,
        "selected_index": selected_index,
        "selected": selected,
        "terms": terms,
        "bounds": bounds,
        "bound_sum": sum(bounds, Fraction(0)),
    }


def emit_signature(entry: dict[str, Any], source_by_rank: dict[int, dict[str, Any]]) -> dict[str, Any]:
    rank = int(entry["rank"])
    anchor_mask = int(entry["anchor_mask"])
    trace_paths = emit_split_trace(rank)

    cover_payload = write_cover_profile(source_by_rank, rank)
    manifest = manifest_for_entry(entry)
    manifest_path = selected_manifest_json(rank)
    manifest_path.parent.mkdir(parents=True, exist_ok=True)
    manifest_path.write_text(json.dumps(manifest, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_manifest_batch(manifest_path)

    good_masks = [int(mask) for mask in cover_payload["good_masks"]]
    _cases, bad_masks, _stats = classified_cases_and_bad_masks_for_signature(rank, good_masks)
    forms, failures = compute_walsh_forms(rank, good_masks, bad_masks)
    if failures:
        raise RuntimeError(f"Walsh validation failed for rank {rank}: {failures[:3]}")
    subcubes = selected_subcubes(cover_json(rank))
    all_data = [
        selected_data_from_forms(
            cover_path=cover_json(rank),
            rank=rank,
            selected_index=index,
            forms=forms,
        )
        for index in range(len(subcubes))
    ]
    covered_bad_masks = {
        int(mask)
        for subcube in subcubes
        for mask in subcube["masks"]
    }
    missing = sorted(set(range(64)) - set(good_masks) - covered_bad_masks)
    if missing:
        raise SystemExit(f"rank {rank} selected subcubes do not cover bad masks: {missing}")

    cover_path = cover_lean(rank)
    cover_path.write_text(
        emit_cover_lean(
            rank=rank,
            namespace=cover_namespace(rank),
            good_masks=good_masks,
            subcubes=subcubes,
            all_data=all_data,
            manifest=manifest,
        ),
        encoding="utf-8",
    )
    write_cover_report(
        report_path=cover_report_json(rank),
        lean_path=cover_path,
        rank=rank,
        good_masks=good_masks,
        subcubes=subcubes,
        all_data=all_data,
        manifest=manifest,
    )
    cover_payload["emitted_trace_lean"] = [str(path) for path in trace_paths]
    cover_payload["emitted_lean"] = str(cover_path)
    return cover_payload


def write_root(entries: list[dict[str, Any]]) -> None:
    imports = [f"import {module_from_path(cover_lean(int(entry['rank'])))}" for entry in entries]
    lines = [
        *imports,
        "",
        "/-!",
        "Generated AP16DJ compact Walsh-cover batch root smoke.",
        "",
        "This root is intentionally shallow.  It should be built only after every",
        "per-signature selected-impact target has been prebuilt serially under the",
        "AP16DI memory guard.",
        "-/",
        "",
        f"namespace {ROOT_NS}",
        "",
    ]
    for entry in entries:
        rank = int(entry["rank"])
        ns = cover_namespace(rank)
        lines.extend([
            f"theorem rank{rank}_goodMaskMember_of_GoodDirection",
            f"    {{mask : SignMask}} (hlt : {rank} < numPairWords)",
            f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
            f"    {ns}.generatedGoodMaskMember mask :=",
            f"  {ns}.generatedGoodMaskMember_of_GoodDirection_viaCompactWalshImpactSubcubes",
            "    hlt hgood",
            "",
        ])
    lines.extend([
        "theorem batchCompactWalshCoverSmoke_builds : True := by",
    ])
    for entry in entries:
        rank = int(entry["rank"])
        lines.append(
            f"  have h{rank} : True := {cover_namespace(rank)}.compactWalshCoverSmoke_builds"
        )
    lines.extend([
        "  trivial",
        "",
        f"end {ROOT_NS}",
        "",
    ])
    ROOT_LEAN.parent.mkdir(parents=True, exist_ok=True)
    ROOT_LEAN.write_text("\n".join(lines), encoding="utf-8")


def planned_targets(entries: list[dict[str, Any]]) -> list[dict[str, str]]:
    targets: list[dict[str, str]] = []
    for entry in entries:
        rank = int(entry["rank"])
        for kind, path in trace_target_paths(rank):
            targets.append({"kind": kind, "module": module_from_path(path)})
        for impact in entry["selected_word_impacts"]:
            targets.append({
                "kind": "selected_impact",
                "label": f"rank{rank}_impact{impact}",
                "module": module_from_path(impact_lean(rank, int(impact))),
            })
        targets.append({
            "kind": "selected_impacts_root",
            "module": module_from_path(selected_root_lean(rank)),
        })
        targets.append({"kind": "cover", "module": module_from_path(cover_lean(rank))})
    targets.append({"kind": "batch_root", "module": module_from_path(ROOT_LEAN)})
    return targets


def write_markdown(payload: dict[str, Any], path: Path) -> None:
    lines = [
        "# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation",
        "",
        f"Status: `{payload['status']}`.",
        "",
        "This is bounded smoke infrastructure, not final generated coverage.",
        "",
        f"- emitted Lean: `{payload['emitted_lean']}`",
        f"- signatures: `{len(payload['entries'])}`",
        f"- planned guarded targets: `{len(payload['targets'])}`",
        f"- root module: `{payload['root_module']}`",
        "",
        "| rank | anchor mask | selected impacts | selected subcubes | cover module |",
        "| ---: | ---: | --- | ---: | --- |",
    ]
    for entry in payload["entries"]:
        lines.append(
            f"| {entry['rank']} | {entry['anchor_mask']} | "
            f"`{entry['selected_word_impacts']}` | {entry['selected_subcube_count']} | "
            f"`{module_from_path(cover_lean(int(entry['rank'])))}` |"
        )
    lines.extend([
        "",
        "Required build policy:",
        "",
        "```text",
        "build targets serially",
        "LEAN_NUM_THREADS=1",
        "LAKE_JOBS=1",
        "process-tree RSS cap: 5000 MiB",
        "minimum MemAvailable floor: 12000 MiB",
        "stop on first failure",
        "```",
        "",
    ])
    path.write_text("\n".join(lines), encoding="utf-8")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--plan", type=Path, default=DEFAULT_PLAN)
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument(
        "--emit",
        action="store_true",
        help="Actually emit Lean files and per-signature reports.",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    plan = json.loads(args.plan.read_text(encoding="utf-8"))
    entries = list(plan["entries"])
    source_by_rank = load_source_by_rank(args.source)

    emitted_payloads = []
    if args.emit:
        for entry in entries:
            emitted_payloads.append(emit_signature(entry, source_by_rank))
        write_root(entries)

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DJ",
        "schema_version": 1,
        "status": "emitted_pending_guarded_build" if args.emit else "dry_run",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "trace_layout": "split",
        "plan": str(args.plan),
        "source": str(args.source),
        "emitted_lean": bool(args.emit),
        "entries": entries,
        "emitted_signature_reports": emitted_payloads,
        "root_lean": str(ROOT_LEAN),
        "root_module": module_from_path(ROOT_LEAN),
        "targets": planned_targets(entries),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_markdown(payload, args.report.with_suffix(".md"))
    print(
        f"wrote {args.report}; status={payload['status']} "
        f"signatures={len(entries)} targets={len(payload['targets'])}"
    )


if __name__ == "__main__":
    main()
