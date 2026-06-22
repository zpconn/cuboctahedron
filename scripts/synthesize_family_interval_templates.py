#!/usr/bin/env python3
"""Synthesize bounded non-identity family interval templates.

PHASE_6L_HISTORICAL_RANK_BOUNDARY: this synthesis tool groups ranks into old
family-interval templates. It is retained only as an untrusted diagnostic for
why that path failed, not as a forward generated-evidence backend.

This is a development/profiling tool for moving beyond the hand-written sample
family templates.  It scans a rank interval with exact arithmetic, groups
contiguous non-identity ranks that share the same failure kind, and can emit
proof-carrying `FamilyIntervalEvidence` roots for a capped subset of those
groups.

The generated roots still contain ordinary checked `NonIdCert` data internally,
but they export one bounded family interval theorem per run and do not create
or import singleton rank-leaf modules.  This is intentionally not the final
prefix-pruning backend: if the discovered runs stay small, the next step is to
add semantic prefix templates rather than scaling this emitter.
"""

from __future__ import annotations

import argparse
import json
import sys
import time
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[0]
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact


OUTPUT_DIR = REPO_ROOT / "evidence" / "synthesized_family_intervals"
DEFAULT_DRY_RUN = REPO_ROOT / "scripts" / "generated" / "family_template_synthesis_dry_run.json"
FORBIDDEN_ACTIVE_PATTERNS = [
    "append_nonid_cert",
    "append_translation_cert",
    "CheckedNonIdRank",
    "CheckedTranslationCase",
    "def nonIdCert",
    "def translationCert",
    "/NonIdentity/Rank",
]


@dataclass
class ScanRun:
    start_rank: int
    end_rank: int
    kind: str
    certs: list[dict[str, Any]] = field(default_factory=list)
    error: str | None = None

    @property
    def rank_count(self) -> int:
        return self.end_rank - self.start_rank

    @property
    def emittable(self) -> bool:
        return self.kind not in {"identity"} and not self.kind.startswith("error:")

    def summary(self) -> dict[str, Any]:
        payload = {
            "start_rank": self.start_rank,
            "end_rank": self.end_rank,
            "rank_count": self.rank_count,
            "kind": self.kind,
            "emittable": self.emittable,
        }
        if self.error is not None:
            payload["error"] = self.error
        return payload


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def file_record(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"path": str(path.relative_to(REPO_ROOT)), "exists": False}
    return {
        "path": str(path.relative_to(REPO_ROOT)),
        "exists": True,
        "bytes": path.stat().st_size,
    }


def ns_part(raw: str) -> str:
    cleaned = [ch if ch.isalnum() else "_" for ch in raw]
    return "".join(cleaned).strip("_") or "Shard"


def namespace_for(name: str) -> str:
    return f"Cuboctahedron.Generated.SynthFamilyInterval.{ns_part(name)}"


def shard_name(run: ScanRun) -> str:
    return f"Run{run.start_rank:09d}_{run.end_rank:09d}_{ns_part(run.kind)}"


def classify_rank(rank: int) -> tuple[str, dict[str, Any] | None, str | None]:
    word = exact.pair_word_at_rank(rank)
    if exact.total_linear(word) == exact.mat_id():
        return "identity", None, None
    try:
        cert = exact.build_nonid_cert_for_rank(rank, f"synthNonIdCert{rank:09d}")
    except Exception as err:  # noqa: BLE001 - recorded in dry-run report
        return f"error:{type(err).__name__}", None, str(err)
    return str(cert.failure["kind"]), cert.to_json(), None


def scan_interval(start: int, end: int) -> list[ScanRun]:
    if start < 0 or end < start or end > exact.EXPECTED_PAIR_WORDS:
        raise ValueError(f"invalid scan interval [{start}, {end})")
    runs: list[ScanRun] = []
    current: ScanRun | None = None
    for rank in range(start, end):
        kind, cert, error = classify_rank(rank)
        if current is not None and current.kind == kind:
            current.end_rank = rank + 1
            if cert is not None:
                current.certs.append(cert)
            if error is not None:
                current.error = error
            continue
        current = ScanRun(
            start_rank=rank,
            end_rank=rank + 1,
            kind=kind,
            certs=[cert] if cert is not None else [],
            error=error,
        )
        runs.append(current)
    return runs


def choose_runs(
    runs: list[ScanRun],
    *,
    min_run_length: int,
    max_templates: int,
    max_ranks: int,
) -> list[ScanRun]:
    candidates = [
        run for run in runs
        if run.emittable and run.rank_count >= min_run_length
    ]
    candidates.sort(key=lambda run: (-run.rank_count, run.start_rank))
    selected: list[ScanRun] = []
    rank_total = 0
    for run in candidates:
        if max_templates > 0 and len(selected) >= max_templates:
            break
        if max_ranks > 0 and rank_total + run.rank_count > max_ranks:
            continue
        selected.append(run)
        rank_total += run.rank_count
    selected.sort(key=lambda run: run.start_rank)
    return selected


def nonid_family_failure_lean(kind: str) -> str:
    return exact.nonid_family_failure_lean(kind)


def emit_cert_definitions(lines: list[str], certs: list[dict[str, Any]]) -> None:
    exact.append_word_definitions(
        lines,
        {
            "pair_words": [
                {"rank": cert["rank"], "word": cert["word"]}
                for cert in certs
            ]
        },
    )
    for cert in certs:
        exact.append_nonid_cert(lines, cert)
        exact.append_nonid_check_theorem_full(lines, cert)
        name = cert["name"]
        lines.extend([
            f"theorem {name}_coveredRank :",
            f"    checkNonIdCoveredRank {cert['rank']} {name} = true := by",
            "  decide",
            "",
            f"theorem {name}_familyFailure :",
            "    checkNonIdFamilyFailureMatches",
            f"      {nonid_family_failure_lean(cert['failure']['kind'])}",
            f"      {name} = true := by",
            "  rfl",
            "",
        ])


def cert_for_rank_definition(certs: list[dict[str, Any]]) -> str:
    arms = [
        f"  | {cert['rank']} => {cert['name']}"
        for cert in certs
    ]
    arms.append(f"  | _ => {certs[0]['name']}")
    return "\n".join(arms)


def cert_sound_cases(certs: list[dict[str, Any]]) -> str:
    if len(certs) == 1:
        cert = certs[0]
        return f"""    have hRank : rank = {cert['rank']} := by omega
    subst rank
    simpa [certForRank, checkNonIdParametricFailureMatches] using
      And.intro {cert['name']}_coveredRank
        (And.intro {cert['name']}_check
          {cert['name']}_familyFailure)"""

    disjunction = " ∨ ".join(f"rank = {cert['rank']}" for cert in certs)
    branches = []
    for cert in certs:
        branches.append(f"""    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro {cert['name']}_coveredRank
          (And.intro {cert['name']}_check
            {cert['name']}_familyFailure)""")
    return f"""    have hRank : {disjunction} := by omega
    rcases hRank with {" | ".join("rfl" for _ in certs)}
{chr(10).join(branches)}"""


def family_root(run: ScanRun) -> str:
    if not run.certs:
        raise ValueError(f"run [{run.start_rank},{run.end_rank}) has no certs")
    name = shard_name(run)
    ns = namespace_for(name)
    lines: list[str] = [
        "import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval",
        "import Cuboctahedron.Search.NonIdentityFamilies",
        "",
        "/-!",
        "Generated synthesized family-interval evidence.",
        "",
        "This root groups a contiguous run of exact non-identity certificates",
        "with the same failure kind into one `NonIdParametricFamily` interval.",
        "-/",
        "",
        f"namespace {ns}",
        "",
        "set_option maxHeartbeats 2400000",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    emit_cert_definitions(lines, run.certs)
    lines.extend([
        "def nonIdentityClassifier :",
        "    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where",
        "  badDirectionFamilies := []",
        "  badPairBalanceFamilies := []",
        "",
        "def translationClassifier :",
        "    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where",
        "  badDirectionFamilies := []",
        "  badVectorFamilies := []",
        "",
        "private def familyInterval : RankInterval where",
        f"  startRank := {run.start_rank}",
        f"  endRank := {run.end_rank}",
        "",
        "private def certForRank : Nat -> NonIdCert",
        cert_for_rank_definition(run.certs),
        "",
        "private def family : NonIdParametricFamily where",
        f"  name := \"synth-{run.kind}-{run.start_rank}-{run.end_rank}\"",
        f"  failure := {nonid_family_failure_lean(run.kind)}",
        "  interval := familyInterval",
        "  certForRank := certForRank",
        "  certForRank_sound := by",
        "    intro r hcontains",
        "    rcases r with ⟨rank, hrank⟩",
        "    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains",
        cert_sound_cases(run.certs),
        "",
        "private theorem family_check :",
        "    checkNonIdParametricFamily family = true := by",
        "  norm_num [checkNonIdParametricFamily, family, familyInterval,",
        "    checkRankInterval, numPairWords]",
        "",
        "private theorem family_contains",
        "    {r : Nat} {hlt : r < numPairWords}",
        f"    (hlo : {run.start_rank} <= r) (hhi : r < {run.end_rank}) :",
        "    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by",
        "  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,",
        "    RankInterval.ContainsPairRank] using And.intro hlo hhi",
        "",
        "theorem nonidentity_residual_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        nonIdentityClassifier) {run.start_rank} {run.end_rank} := by",
        "  intro r hlo hhi hlt _hclass _hM",
        "  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi",
        "  rcases checkNonIdParametricFamily_sound family_check hcontains with",
        "    ⟨cert, hcovered, hcert⟩",
        "  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩",
        "",
        "theorem translation_farkas_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        translationClassifier) {run.start_rank} {run.end_rank} := by",
        "  intro r hlo hhi hlt _mask _hclass hM",
        "  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi",
        "  exact False.elim",
        "    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)",
        "",
        "def nonidentityWitness :",
        "    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval",
        f"      nonIdentityClassifier {run.start_rank} {run.end_rank} where",
        "  residual := nonidentity_residual_interval",
        "",
        "def translationWitness :",
        "    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval",
        f"      translationClassifier {run.start_rank} {run.end_rank} where",
        "  farkas := translation_farkas_interval",
        "",
        "def coverage :",
        "    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence",
        f"      {run.start_rank} {run.end_rank} where",
        "  nonidentityClassifier := nonIdentityClassifier",
        "  translationClassifier := translationClassifier",
        "  nonidentity := nonidentityWitness",
        "  translation := translationWitness",
        "",
        "theorem nonidentity_killed :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat",
        f"      {run.start_rank} {run.end_rank} :=",
        "  coverage.nonidentity_killed",
        "",
        "theorem translation_killed :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat",
        f"      {run.start_rank} {run.end_rank} :=",
        "  coverage.translation_killed",
        "",
        f"end {ns}",
        "",
    ])
    return "\n".join(lines)


def run_summary(runs: list[ScanRun], selected: list[ScanRun]) -> dict[str, Any]:
    counts: dict[str, int] = {}
    run_counts: dict[str, int] = {}
    for run in runs:
        counts[run.kind] = counts.get(run.kind, 0) + run.rank_count
        run_counts[run.kind] = run_counts.get(run.kind, 0) + 1
    emittable = [run for run in runs if run.emittable]
    return {
        "rank_counts_by_kind": dict(sorted(counts.items())),
        "run_counts_by_kind": dict(sorted(run_counts.items())),
        "total_runs": len(runs),
        "emittable_runs": len(emittable),
        "emittable_ranks": sum(run.rank_count for run in emittable),
        "largest_emittable_runs": [
            run.summary()
            for run in sorted(emittable, key=lambda item: (-item.rank_count, item.start_rank))[:20]
        ],
        "selected_runs": [run.summary() for run in selected],
        "selected_rank_count": sum(run.rank_count for run in selected),
    }


def build_manifest(
    *,
    start: int,
    end: int,
    elapsed_seconds: float,
    runs: list[ScanRun],
    selected: list[ScanRun],
    root_records: list[dict[str, Any]],
) -> dict[str, Any]:
    return {
        "schema_version": 1,
        "mode": "synthesized-family-interval-templates",
        "trusted_as_final_proof": False,
        "template_count": len(selected),
        "contains_local_rank_certificate_literals": bool(selected),
        "scaling_status": "bounded-smoke-only; not a prefix-pruning backend",
        "start_rank": start,
        "end_rank": end,
        "rank_count": end - start,
        "elapsed_seconds": elapsed_seconds,
        "summary": run_summary(runs, selected),
        "forbidden_active_patterns": FORBIDDEN_ACTIVE_PATTERNS,
        "no_singleton_leaves": True,
        "paths": {
            "verified_roots": root_records,
        },
    }


def emit_selected(output_dir: Path, selected: list[ScanRun]) -> list[dict[str, Any]]:
    records: list[dict[str, Any]] = []
    for run in selected:
        root = output_dir / shard_name(run) / "VerifiedRoot.lean"
        write_text(root, family_root(run))
        records.append({
            "start_rank": run.start_rank,
            "end_rank": run.end_rank,
            "rank_count": run.rank_count,
            "kind": run.kind,
            "verified_root": file_record(root),
        })
    return records


def main() -> int:
    parser = argparse.ArgumentParser()
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--dry-run", action="store_true")
    mode.add_argument("--emit-lean", action="store_true")
    parser.add_argument("--start-rank", type=int, required=True)
    parser.add_argument("--end-rank", type=int, required=True)
    parser.add_argument("--min-run-length", type=int, default=4)
    parser.add_argument("--max-templates", type=int, default=8)
    parser.add_argument(
        "--max-ranks-to-emit",
        type=int,
        default=64,
        help="0 means no cap; keep small until generated roots are profiled",
    )
    parser.add_argument("--output-dir", type=Path, default=OUTPUT_DIR)
    parser.add_argument("--dry-run-output", type=Path, default=DEFAULT_DRY_RUN)
    args = parser.parse_args()

    output_dir = args.output_dir
    if not output_dir.is_absolute():
        output_dir = REPO_ROOT / output_dir
    dry_run_output = args.dry_run_output
    if not dry_run_output.is_absolute():
        dry_run_output = REPO_ROOT / dry_run_output

    started = time.monotonic()
    runs = scan_interval(args.start_rank, args.end_rank)
    selected = choose_runs(
        runs,
        min_run_length=args.min_run_length,
        max_templates=args.max_templates,
        max_ranks=args.max_ranks_to_emit,
    )
    elapsed_seconds = time.monotonic() - started

    if args.dry_run:
        manifest = build_manifest(
            start=args.start_rank,
            end=args.end_rank,
            elapsed_seconds=elapsed_seconds,
            runs=runs,
            selected=selected,
            root_records=[],
        )
        write_text(dry_run_output, json.dumps(manifest, indent=2, sort_keys=True) + "\n")
        print(json.dumps(manifest["summary"], indent=2, sort_keys=True))
        print(f"wrote dry-run: {dry_run_output.relative_to(REPO_ROOT)}")
        return 0

    root_records = emit_selected(output_dir, selected)
    manifest = build_manifest(
        start=args.start_rank,
        end=args.end_rank,
        elapsed_seconds=elapsed_seconds,
        runs=runs,
        selected=selected,
        root_records=root_records,
    )
    write_text(output_dir / "manifest.json", json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    print("generated synthesized family interval templates")
    print(f"scan: [{args.start_rank}, {args.end_rank})")
    print(f"selected templates: {len(selected)}")
    print(f"selected ranks: {manifest['summary']['selected_rank_count']}")
    print(f"manifest: {(output_dir / 'manifest.json').relative_to(REPO_ROOT)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
