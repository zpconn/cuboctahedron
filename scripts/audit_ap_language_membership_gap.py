#!/usr/bin/env python3
"""Audit the AP source/row language membership gap.

This script is diagnostic only.  It scans the current split source/row producer
modules and descriptor chunks and reports whether they export the implication
facts needed by the AP bridge, and whether they also export a real nonempty
language-completeness theorem of one of the accepted AP target shapes.

The intended distinction is:

* implication facts:
    Source predicate + row predicate -> TranslationGoodCaseKilled
* missing membership coverage:
    hM + GoodDirectionAtRank -> exists source/row language member

Only the second kind can feed the production AP root.
"""

from __future__ import annotations

import argparse
import concurrent.futures
import json
import re
import time
from dataclasses import asdict, dataclass
from pathlib import Path
from typing import Iterable


LANGUAGE_TARGETS = (
    "SourceIndexStateDescriptorGoodLanguageOnRange",
    "SourcePositionRowProducerGoodLanguageOnRange",
    "SourceRowProducerGoodLanguageOnRange",
    "SourceRowPredicateGoodLanguageOnRange",
    "SourceRowFactsGoodLanguageOnRange",
    "AllTranslationGoodCoverageOnRange",
)


@dataclass(frozen=True)
class ChunkAudit:
    path: str
    source_applies_theorems: int
    row_applies_theorems: int
    key_facts_theorems: int
    good_killed_theorems: int
    complete_fields: int
    language_targets: list[str]
    has_nonempty_language_export: bool


def count_pattern(text: str, pattern: str) -> int:
    return len(re.findall(pattern, text))


def audit_chunk(path: Path) -> ChunkAudit:
    text = path.read_text()
    language_targets = [target for target in LANGUAGE_TARGETS if target in text]
    complete_fields = count_pattern(text, r"\bcomplete\s*:=")
    return ChunkAudit(
        path=str(path),
        source_applies_theorems=count_pattern(text, r"\btheorem\s+fam_\d+_sourceApplies_of_sourcePredicate\b"),
        row_applies_theorems=count_pattern(text, r"\btheorem\s+fam_\d+_rowApplies_of_rows\b"),
        key_facts_theorems=count_pattern(text, r"\btheorem\s+fam_\d+_keyFacts_of_sourcePredicate_rows\b"),
        good_killed_theorems=count_pattern(text, r"\btheorem\s+fam_\d+_goodKilled_of_sourcePredicate_rows\b"),
        complete_fields=complete_fields,
        language_targets=language_targets,
        has_nonempty_language_export=bool(language_targets) and complete_fields > 0,
    )


def parallel_map_chunks(paths: list[Path], jobs: int) -> list[ChunkAudit]:
    if jobs <= 1 or len(paths) <= 1:
        return [audit_chunk(path) for path in paths]
    with concurrent.futures.ProcessPoolExecutor(max_workers=jobs) as pool:
        return list(pool.map(audit_chunk, paths))


def count_defs(path: Path, pattern: str) -> int:
    if not path.exists():
        return 0
    return count_pattern(path.read_text(), pattern)


def write_json(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")


def write_md(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    lines = [
        "# Phase 6Z.6K.8AP.14 Language Membership Gap Audit",
        "",
        f"Status: `{payload['status']}`",
        "",
        "## Inputs",
        "",
        f"- Source module: `{payload['inputs']['source_file']}`",
        f"- Row module: `{payload['inputs']['row_file']}`",
        f"- Chunk directory: `{payload['inputs']['chunks_dir']}`",
        f"- Parallel jobs: `{payload['inputs']['jobs']}`",
        "",
        "## Counts",
        "",
        f"- Source producers: `{payload['counts']['source_producers']}`",
        f"- Row producers: `{payload['counts']['row_producers']}`",
        f"- Chunk files: `{payload['counts']['chunk_files']}`",
        f"- Source-apply implication theorems: `{payload['counts']['source_applies_theorems']}`",
        f"- Row-apply implication theorems: `{payload['counts']['row_applies_theorems']}`",
        f"- Key-facts implication theorems: `{payload['counts']['key_facts_theorems']}`",
        f"- Good-killed implication theorems: `{payload['counts']['good_killed_theorems']}`",
        f"- Chunks exporting accepted language targets: `{payload['counts']['chunks_with_language_targets']}`",
        f"- Chunks exporting nonempty language `complete` fields: `{payload['counts']['chunks_with_nonempty_language_export']}`",
        "",
        "## Interpretation",
        "",
        payload["interpretation"],
        "",
        "## Next Required Proof Surface",
        "",
        "A production AP chunk must prove one of these theorem surfaces over a",
        "meaningful rank range without `interval_cases r` plus `fin_cases mask` replay:",
        "",
        "```lean",
        "SourceIndexStateDescriptorGoodLanguageOnRange lo hi",
        "SourcePositionRowProducerGoodLanguageOnRange lo hi",
        "SourceRowProducerGoodLanguageOnRange lo hi",
        "SourceRowPredicateGoodLanguageOnRange lo hi",
        "SourceRowFactsGoodLanguageOnRange lo hi",
        "```",
        "",
        "The critical field is the membership theorem:",
        "",
        "```lean",
        "complete :",
        "  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),",
        "    lo <= rank -> rank < hi ->",
        "    totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) ->",
        "    GoodDirectionAtRank ⟨rank, hlt⟩ mask ->",
        "    exists ..., Language ... rank mask",
        "```",
        "",
        "The current split chunks provide the implication side after source/row",
        "membership has been supplied; they do not supply this `complete` field.",
        "",
        "## Timing",
        "",
        f"- Wall seconds: `{payload['timing']['wall_seconds']:.3f}`",
    ]
    path.write_text("\n".join(lines) + "\n")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    base = Path("Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairSignProducerCoverageScalingSplit50k")
    parser.add_argument("--source-file", type=Path, default=base / "Source.lean")
    parser.add_argument("--row-file", type=Path, default=base / "Row.lean")
    parser.add_argument("--chunks-dir", type=Path, default=base / "Chunks")
    parser.add_argument("--jobs", type=int, default=1, help="memory-light chunk scan workers")
    parser.add_argument("--json", type=Path, default=Path("scripts/generated/phase6z6k8ap14_language_membership_gap_audit.json"))
    parser.add_argument("--md", type=Path, default=Path("scripts/generated/phase6z6k8ap14_language_membership_gap_audit.md"))
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    start = time.perf_counter()
    chunks = sorted(args.chunks_dir.glob("Chunk*.lean"))
    audits = parallel_map_chunks(chunks, max(1, args.jobs))

    counts = {
        "source_producers": count_defs(args.source_file, r"\bdef\s+source_\d+_producer\b"),
        "row_producers": count_defs(args.row_file, r"\bdef\s+row_\d+_producer\b"),
        "chunk_files": len(chunks),
        "source_applies_theorems": sum(a.source_applies_theorems for a in audits),
        "row_applies_theorems": sum(a.row_applies_theorems for a in audits),
        "key_facts_theorems": sum(a.key_facts_theorems for a in audits),
        "good_killed_theorems": sum(a.good_killed_theorems for a in audits),
        "chunks_with_language_targets": sum(1 for a in audits if a.language_targets),
        "chunks_with_nonempty_language_export": sum(1 for a in audits if a.has_nonempty_language_export),
    }

    has_implication_surface = counts["good_killed_theorems"] > 0
    has_language_complete = counts["chunks_with_nonempty_language_export"] > 0
    if has_implication_surface and not has_language_complete:
        status = "membership-gap-confirmed"
        interpretation = (
            "The split producer chunks contain source/row implication theorems, "
            "including `fam_*_goodKilled_of_sourcePredicate_rows`, but no chunk "
            "exports an accepted nonempty language-completeness theorem. This "
            "confirms that AP.13 projection is only preflight: the next emitter "
            "must prove language membership from arbitrary identity-linear "
            "`GoodDirectionAtRank` cases."
        )
    elif has_language_complete:
        status = "language-complete-surface-found"
        interpretation = (
            "At least one chunk mentions an accepted language target and a "
            "`complete :=` field. Inspect the reported chunks before deciding "
            "whether this is a genuine nonempty coverage theorem or an empty "
            "smoke."
        )
    else:
        status = "no-implication-surface-found"
        interpretation = (
            "The audit did not find the expected source/row implication theorems. "
            "The input paths may not point at the split producer hierarchy."
        )

    payload = {
        "phase": "6Z.6K.8AP.14",
        "status": status,
        "inputs": {
            "source_file": str(args.source_file),
            "row_file": str(args.row_file),
            "chunks_dir": str(args.chunks_dir),
            "jobs": max(1, args.jobs),
        },
        "counts": counts,
        "chunks": [asdict(a) for a in audits],
        "interpretation": interpretation,
        "timing": {"wall_seconds": time.perf_counter() - start},
    }
    write_json(args.json, payload)
    write_md(args.md, payload)
    print(json.dumps({k: payload[k] for k in ("phase", "status", "counts", "timing")}, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
