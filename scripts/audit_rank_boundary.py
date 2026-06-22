#!/usr/bin/env python3
"""Audit remaining rank-interval-facing proof surfaces.

This script is deliberately untrusted.  It does not prove anything in Lean and
does not emit generated evidence.  It is a planning/architecture guard for
Phase 6L.0 of SYMMETRY_PLAN.md: rank intervals should be final enumeration
adapters, not the primary compression domain for new proof families.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from dataclasses import dataclass
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "scripts" / "generated" / "rank_boundary_audit.json"

SYMBOLS = (
    "CoversInterval",
    "RankInterval",
    "FamilyIntervalEvidence",
    "NonIdentityWitnessInterval",
    "TranslationWitnessInterval",
    "PublicCoverageIntervals",
    "PublicComputableCoverageIntervals",
    "exhaustiveGeneratedCoverageOfIntervals",
    "exhaustiveGeneratedCoverageOfComputableIntervals",
    "currentBoundedCompleteForInterval",
)

SCAN_ROOTS = (
    REPO_ROOT / "Cuboctahedron",
    REPO_ROOT / "scripts",
    REPO_ROOT / "evidence",
)

SCAN_SUFFIXES = {".lean", ".py"}

HISTORICAL_MARKER = "PHASE_6L_HISTORICAL_RANK_BOUNDARY"

LEGACY_GENERATORS = {
    "scripts/generate_exact_certificates.py",
    "scripts/generate_family_interval_evidence.py",
    "scripts/generate_public_interval_evidence.py",
    "scripts/generate_symmetry_evidence.py",
    "scripts/generate_symmetry_semantic_batch.py",
    "scripts/synthesize_family_interval_templates.py",
}

FINAL_ADAPTER_PREFIXES = (
    "Cuboctahedron/Generated/Coverage/",
)

FINAL_ADAPTER_FILES = {
    "Cuboctahedron/Generated/ExhaustiveCoverage.lean",
    "Cuboctahedron/Generated/NonIdentity/Complete.lean",
    "Cuboctahedron/Generated/NonIdentity/Coverage/All.lean",
    "Cuboctahedron/Generated/NonIdentity/Families.lean",
    "Cuboctahedron/Generated/Translation/Complete.lean",
    "Cuboctahedron/Generated/Translation/Coverage/All.lean",
}

HISTORICAL_PREFIXES = (
    "evidence/",
    "Cuboctahedron/Generated/PublicEvidence/",
    "Cuboctahedron/Generated/SymmetryEvidence/",
)

HISTORICAL_FILES = {
    "Cuboctahedron/Generated/AllGenerated.lean",
    "Cuboctahedron/Generated/NonIdentity/FamilySample.lean",
    "Cuboctahedron/Generated/NonIdentity/ParametricSample.lean",
}

LEGACY_FILES = {
    "Cuboctahedron/Search/NonIdentityFamilies.lean",
}


@dataclass(frozen=True)
class Occurrence:
    line: int
    symbol: str
    text: str

    def payload(self) -> dict:
        return {
            "line": self.line,
            "symbol": self.symbol,
            "text": self.text,
        }


def repo_path(path: Path) -> str:
    return path.relative_to(REPO_ROOT).as_posix()


def iter_source_files() -> list[Path]:
    files: list[Path] = []
    self_path = Path(__file__).resolve()
    for root in SCAN_ROOTS:
        if not root.exists():
            continue
        for path in root.rglob("*"):
            if path == self_path:
                continue
            if path.is_file() and path.suffix in SCAN_SUFFIXES:
                files.append(path)
    return sorted(files, key=repo_path)


def find_occurrences(path: Path) -> list[Occurrence]:
    occurrences: list[Occurrence] = []
    text = path.read_text(encoding="utf-8")
    for line_number, line in enumerate(text.splitlines(), start=1):
        matched = [symbol for symbol in SYMBOLS if symbol in line]
        for symbol in matched:
            occurrences.append(
                Occurrence(
                    line=line_number,
                    symbol=symbol,
                    text=line.strip(),
                )
            )
    return occurrences


def classify(path: Path, occurrences: list[Occurrence]) -> tuple[str, str]:
    rel = repo_path(path)
    text_symbols = {occ.symbol for occ in occurrences}
    text = path.read_text(encoding="utf-8")

    if HISTORICAL_MARKER in text:
        return (
            "historical_diagnostic",
            "explicit Phase 6L historical rank-boundary marker; retained for compatibility or diagnostics only",
        )

    if rel in LEGACY_GENERATORS:
        return (
            "legacy_compression",
            "generator still emits rank/interval proof objects and is not the Phase 6L path",
        )
    if rel in LEGACY_FILES:
        return (
            "legacy_compression",
            "search/checker API still packages family coverage around RankInterval",
        )
    if rel in HISTORICAL_FILES or rel.startswith(HISTORICAL_PREFIXES):
        return (
            "historical_diagnostic",
            "bounded smoke/diagnostic evidence retained for reference, not a forward compression path",
        )
    if rel in FINAL_ADAPTER_FILES or rel.startswith(FINAL_ADAPTER_PREFIXES):
        return (
            "final_adapter",
            "small rank-facing bridge or reusable coverage primitive, not generated heavy evidence",
        )
    if rel.startswith("scripts/"):
        return (
            "historical_diagnostic",
            "script-side diagnostic/checking utility; not trusted proof evidence",
        )
    if "RankInterval" in text_symbols or "FamilyIntervalEvidence" in text_symbols:
        return (
            "legacy_compression",
            "unclassified Lean source uses rank intervals as proof data",
        )
    return (
        "unknown_requires_review",
        "rank/interval-facing use needs manual classification before Phase 6L proceeds",
    )


def build_report() -> dict:
    entries: list[dict] = []
    files_scanned = iter_source_files()
    total_occurrences = 0
    symbol_counts: Counter[str] = Counter()
    category_counts: Counter[str] = Counter()

    for path in files_scanned:
        occurrences = find_occurrences(path)
        if not occurrences:
            continue
        category, rationale = classify(path, occurrences)
        category_counts[category] += 1
        total_occurrences += len(occurrences)
        symbol_counts.update(occ.symbol for occ in occurrences)
        entries.append({
            "path": repo_path(path),
            "category": category,
            "rationale": rationale,
            "symbols": sorted({occ.symbol for occ in occurrences}),
            "occurrence_count": len(occurrences),
            "occurrences": [occ.payload() for occ in occurrences],
        })

    legacy_count = category_counts["legacy_compression"]
    unknown_count = category_counts["unknown_requires_review"]
    if legacy_count or unknown_count:
        status = "blocked"
        notes = [
            "Phase 6L.1 should not proceed until legacy_compression entries are retired, archived, or reclassified.",
            "unknown_requires_review entries must be classified explicitly.",
            "Ranks remain allowed only as final enumeration adapters.",
        ]
    else:
        status = "pass"
        notes = [
            "No legacy or unknown rank-boundary entries remain.",
            "Proceed to Phase 6L.1 integer/homogeneous arithmetic core.",
        ]

    return {
        "schema_version": 1,
        "mode": "rank-boundary-audit",
        "trusted_as_proof": False,
        "scan_roots": [repo_path(root) for root in SCAN_ROOTS if root.exists()],
        "symbols": list(SYMBOLS),
        "counts": {
            "files_scanned": len(files_scanned),
            "files_with_rank_boundary_occurrences": len(entries),
            "total_occurrences": total_occurrences,
            "categories": dict(sorted(category_counts.items())),
            "symbols": dict(sorted(symbol_counts.items())),
            "legacy_compression_files": legacy_count,
            "unknown_requires_review_files": unknown_count,
        },
        "decision": {
            "status": status,
            "strict_pass": status == "pass",
            "notes": notes,
        },
        "entries": entries,
    }


def write_report(report: dict, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_summary(report: dict) -> None:
    counts = report["counts"]
    decision = report["decision"]
    print("rank-boundary audit")
    print(f"files scanned: {counts['files_scanned']}")
    print(
        "files with rank-boundary occurrences: "
        f"{counts['files_with_rank_boundary_occurrences']}"
    )
    print(f"total occurrences: {counts['total_occurrences']}")
    print(f"categories: {counts['categories']}")
    print(f"decision: {decision['status']}")
    for note in decision["notes"]:
        print(f"- {note}")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Audit rank-interval-facing proof surfaces for Phase 6L.0."
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument(
        "--allow-legacy",
        action="store_true",
        help="do not fail when legacy_compression entries are present",
    )
    parser.add_argument(
        "--allow-unknown",
        action="store_true",
        help="do not fail when unknown_requires_review entries are present",
    )
    args = parser.parse_args()

    report = build_report()
    write_report(report, args.output)
    print_summary(report)

    counts = report["counts"]
    if counts["legacy_compression_files"] and not args.allow_legacy:
        raise SystemExit(1)
    if counts["unknown_requires_review_files"] and not args.allow_unknown:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
