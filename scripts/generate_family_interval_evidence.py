#!/usr/bin/env python3
"""Emit bounded family-interval evidence shards.

This is the replacement target for the archived singleton interval-shard path.
It emits roots whose public surface is `FamilyIntervalEvidence lo hi`, not
per-rank `NonIdCert` singleton leaves.

The implementation is descriptor-driven: every nonempty emitted interval must
match a known checked family template.  Unsupported intervals fail closed rather
than falling back to singleton rank leaves.
"""

from __future__ import annotations

import argparse
import json
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[0]
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact


OUTPUT_DIR = REPO_ROOT / "evidence" / "family_interval_shards"
DEFAULT_DRY_RUN = REPO_ROOT / "scripts" / "generated" / "family_interval_evidence_dry_run.json"
FORBIDDEN_ACTIVE_PATTERNS = [
    "append_nonid_cert",
    "append_translation_cert",
    "CheckedNonIdRank",
    "CheckedTranslationCase",
    "def nonIdCert",
    "def translationCert",
    "/NonIdentity/Rank",
]


@dataclass(frozen=True)
class NonIdFamilyTemplate:
    key: str
    label: str
    start_rank: int
    end_rank: int
    failure_lean: str
    certs: tuple[tuple[int, str], ...]
    source: str

    @property
    def rank_count(self) -> int:
        return self.end_rank - self.start_rank


SUPPORTED_TEMPLATES: tuple[NonIdFamilyTemplate, ...] = (
    NonIdFamilyTemplate(
        key="bad_direction_sample",
        label="BadDirection",
        start_rank=13,
        end_rank=16,
        failure_lean="NonIdFamilyFailure.badDirectionSign",
        certs=(
            (13, "nonIdFamilyBadDirection000"),
            (14, "nonIdFamilyBadDirection001"),
            (15, "nonIdFamilyBadDirection002"),
        ),
        source="Generated.NonIdentity.FamilySample.sampleBadDirectionFamilyCert",
    ),
    NonIdFamilyTemplate(
        key="bad_pair_balance_sample",
        label="BadPairBalance",
        start_rank=102,
        end_rank=103,
        failure_lean="NonIdFamilyFailure.badPairBalance",
        certs=((102, "nonIdFamilyBadPairBalance000"),),
        source="Generated.NonIdentity.FamilySample.sampleBadPairBalanceFamilyCert",
    ),
    NonIdFamilyTemplate(
        key="axis_miss_sample",
        label="AxisMiss",
        start_rank=104,
        end_rank=106,
        failure_lean="NonIdFamilyFailure.axisMissesStartInterior",
        certs=(
            (104, "nonIdFamilyAxisMiss000"),
            (105, "nonIdFamilyAxisMiss001"),
        ),
        source="Generated.NonIdentity.FamilySample.sampleAxisMissFamilyCert",
    ),
    NonIdFamilyTemplate(
        key="bad_first_hit_sample",
        label="BadFirstHit",
        start_rank=159,
        end_rank=160,
        failure_lean="NonIdFamilyFailure.badFirstHit",
        certs=((159, "nonIdFamilyBadFirstHit000"),),
        source="Generated.NonIdentity.FamilySample.sampleBadFirstHitFamilyCert",
    ),
)


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


def shard_name(lo: int, hi: int) -> str:
    return f"Shard{lo:09d}_{hi:09d}"


def ns_part(raw: str) -> str:
    cleaned = [ch if ch.isalnum() else "_" for ch in raw]
    return "".join(cleaned).strip("_") or "Shard"


def namespace_for(name: str) -> str:
    return (
        "Cuboctahedron.Generated.FamilyIntervalShard."
        f"{ns_part(name)}"
    )


def template_for_interval(lo: int, hi: int) -> NonIdFamilyTemplate | None:
    for template in SUPPORTED_TEMPLATES:
        if template.start_rank == lo and template.end_rank == hi:
            return template
    return None


def supported_ranges() -> list[list[int]]:
    return [[template.start_rank, template.end_rank] for template in SUPPORTED_TEMPLATES]


def cert_match_cases(template: NonIdFamilyTemplate) -> str:
    arms = [
        f"  | {rank} => Cuboctahedron.Generated.NonIdentity.{cert}"
        for rank, cert in template.certs
    ]
    default_cert = template.certs[0][1]
    arms.append(f"  | _ => Cuboctahedron.Generated.NonIdentity.{default_cert}")
    return "\n".join(arms)


def cert_sound_cases(template: NonIdFamilyTemplate) -> str:
    ranks = [rank for rank, _cert in template.certs]
    if len(ranks) == 1:
        rank, cert = template.certs[0]
        return f"""    have hRank : rank = {rank} := by omega
    subst rank
    simpa [certForRank, checkNonIdParametricFailureMatches] using
      And.intro Cuboctahedron.Generated.NonIdentity.{cert}_coveredRank
        (And.intro Cuboctahedron.Generated.NonIdentity.{cert}_check
          Cuboctahedron.Generated.NonIdentity.{cert}_familyFailure)"""

    disjunction = " ∨ ".join(f"rank = {rank}" for rank in ranks)
    branches = []
    for _rank, cert in template.certs:
        branches.append(f"""    · simpa [certForRank, checkNonIdParametricFailureMatches] using
        And.intro Cuboctahedron.Generated.NonIdentity.{cert}_coveredRank
          (And.intro Cuboctahedron.Generated.NonIdentity.{cert}_check
            Cuboctahedron.Generated.NonIdentity.{cert}_familyFailure)""")
    return f"""    have hRank : {disjunction} := by omega
    rcases hRank with {" | ".join("rfl" for _ in ranks)}
{chr(10).join(branches)}"""


def family_root(template: NonIdFamilyTemplate, name: str) -> str:
    lo = template.start_rank
    hi = template.end_rank
    ns = namespace_for(name)
    return f"""import Cuboctahedron.Generated.NonIdentity.FamilySample
import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval
import Cuboctahedron.Search.NonIdentityFamilies

/-!
Generated family-interval evidence.

This root is intentionally not a singleton public interval shard. It exposes a
bounded `FamilyIntervalEvidence` value for ranks [{lo},{hi}) using the checked
non-identity family template `{template.key}`.
-/

namespace {ns}

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

private def familyInterval : RankInterval where
  startRank := {lo}
  endRank := {hi}

private def certForRank : Nat -> NonIdCert
{cert_match_cases(template)}

private def family : NonIdParametricFamily where
  name := "{template.key}"
  failure := {template.failure_lean}
  interval := familyInterval
  certForRank := certForRank
  certForRank_sound := by
    intro r hcontains
    rcases r with ⟨rank, hrank⟩
    simp [RankInterval.ContainsPairRank, familyInterval] at hcontains
{cert_sound_cases(template)}

private theorem family_check :
    checkNonIdParametricFamily family = true := by
  norm_num [checkNonIdParametricFamily, family, familyInterval,
    checkRankInterval, numPairWords]

private theorem family_contains
    {{r : Nat}} {{hlt : r < numPairWords}}
    (hlo : {lo} <= r) (hhi : r < {hi}) :
    family.ContainsPairRank (⟨r, hlt⟩ : Fin numPairWords) := by
  simpa [NonIdParametricFamily.ContainsPairRank, family, familyInterval,
    RankInterval.ContainsPairRank] using And.intro hlo hhi

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) {lo} {hi} := by
  intro r hlo hhi hlt _hclass _hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  rcases checkNonIdParametricFamily_sound family_check hcontains with
    ⟨cert, hcovered, hcert⟩
  exact ⟨cert, checkNonIdCoveredRank_word hcovered, hcert⟩

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) {lo} {hi} := by
  intro r hlo hhi hlt _mask _hclass hM
  have hcontains := family_contains (r := r) (hlt := hlt) hlo hhi
  exact False.elim
    ((checkNonIdParametricFamily_nonIdentity family_check hcontains) hM)

def nonidentityWitness :
    Cuboctahedron.Generated.SymmetryEvidence.NonIdentityWitnessInterval
      nonIdentityClassifier {lo} {hi} where
  residual := nonidentity_residual_interval

def translationWitness :
    Cuboctahedron.Generated.SymmetryEvidence.TranslationWitnessInterval
      translationClassifier {lo} {hi} where
  farkas := translation_farkas_interval

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence {lo} {hi} where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := nonidentityWitness
  translation := translationWitness

theorem nonidentity_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.Coverage.NonIdentityRankKilledNat {lo} {hi} :=
  coverage.nonidentity_killed

theorem translation_killed :
    Cuboctahedron.Generated.Coverage.CoversInterval
      Cuboctahedron.Generated.SymmetryEvidence.TranslationRankKilledNat {lo} {hi} :=
  coverage.translation_killed

end {ns}
"""


def empty_root(lo: int, hi: int, name: str) -> str:
    ns = namespace_for(name)
    return f"""import Cuboctahedron.Generated.SymmetryEvidence.FamilyInterval

namespace {ns}

def nonIdentityClassifier :
    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where
  badDirectionFamilies := []
  badPairBalanceFamilies := []

def translationClassifier :
    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where
  badDirectionFamilies := []
  badVectorFamilies := []

theorem nonidentity_residual_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy
        nonIdentityClassifier) {lo} {hi} :=
  Cuboctahedron.Generated.Coverage.CoversInterval.empty _ (Nat.le_refl {lo})

theorem translation_farkas_interval :
    Cuboctahedron.Generated.Coverage.CoversInterval
      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy
        translationClassifier) {lo} {hi} :=
  Cuboctahedron.Generated.Coverage.CoversInterval.empty _ (Nat.le_refl {lo})

def coverage :
    Cuboctahedron.Generated.SymmetryEvidence.FamilyIntervalEvidence {lo} {hi} where
  nonidentityClassifier := nonIdentityClassifier
  translationClassifier := translationClassifier
  nonidentity := ⟨nonidentity_residual_interval⟩
  translation := ⟨translation_farkas_interval⟩

end {ns}
"""


def classify_request(lo: int, hi: int) -> dict[str, Any]:
    if lo < 0 or hi < lo or hi > exact.EXPECTED_PAIR_WORDS:
        return {
            "can_emit": False,
            "reason": "rank interval is outside valid bounds",
        }
    if lo == hi:
        return {
            "can_emit": True,
            "kind": "empty",
            "family_count": 0,
            "proof_source": "CoversInterval.empty",
        }
    template = template_for_interval(lo, hi)
    if template is not None:
        return {
            "can_emit": True,
            "kind": "nonidentity_family_template",
            "template": template.key,
            "family_count": 1,
            "proof_source": template.source,
            "rank_count": hi - lo,
            "no_singleton_leaves": True,
        }
    return {
        "can_emit": False,
        "reason": (
            "no true family-level template is implemented for this nonempty "
            "range; refusing singleton fallback"
        ),
        "supported_nonempty_ranges": supported_ranges(),
    }


def build_manifest(
    lo: int,
    hi: int,
    root: Path | None,
    decision: dict[str, Any],
) -> dict[str, Any]:
    return {
        "schema_version": 2,
        "mode": "family-interval-evidence",
        "trusted_as_final_proof": False,
        "start_rank": lo,
        "end_rank": hi,
        "rank_count": hi - lo,
        "decision": decision,
        "no_singleton_leaves": True,
        "forbidden_active_patterns": FORBIDDEN_ACTIVE_PATTERNS,
        "paths": {
            "verified_root": file_record(root) if root is not None else {"exists": False},
        },
    }


def build_suite_manifest(records: list[dict[str, Any]]) -> dict[str, Any]:
    return {
        "schema_version": 2,
        "mode": "family-interval-evidence-suite",
        "trusted_as_final_proof": False,
        "template_count": len(records),
        "rank_count": sum(record["rank_count"] for record in records),
        "templates": records,
        "no_singleton_leaves": True,
        "forbidden_active_patterns": FORBIDDEN_ACTIVE_PATTERNS,
        "paths": {
            "verified_roots": [record["verified_root"] for record in records],
        },
    }


def emit_one(lo: int, hi: int, output_dir: Path) -> dict[str, Any]:
    decision = classify_request(lo, hi)
    if not decision["can_emit"]:
        raise ValueError(decision["reason"])
    name = shard_name(lo, hi)
    root = output_dir / name / "VerifiedRoot.lean"
    if decision["kind"] == "empty":
        text = empty_root(lo, hi, name)
    else:
        template = template_for_interval(lo, hi)
        if template is None:
            raise ValueError("internal error: missing template for accepted interval")
        text = family_root(template, name)
    write_text(root, text)
    manifest = build_manifest(lo, hi, root, decision)
    write_text(output_dir / "manifest.json", json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    return manifest


def emit_all_supported(output_dir: Path) -> dict[str, Any]:
    records: list[dict[str, Any]] = []
    for template in SUPPORTED_TEMPLATES:
        name = shard_name(template.start_rank, template.end_rank)
        root = output_dir / name / "VerifiedRoot.lean"
        write_text(root, family_root(template, name))
        records.append({
            "template": template.key,
            "source": template.source,
            "start_rank": template.start_rank,
            "end_rank": template.end_rank,
            "rank_count": template.rank_count,
            "verified_root": file_record(root),
        })
    manifest = build_suite_manifest(records)
    write_text(output_dir / "manifest.json", json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    return manifest


def dry_run(lo: int, hi: int, path: Path) -> dict[str, Any]:
    decision = classify_request(lo, hi)
    payload = build_manifest(lo, hi, None, decision)
    write_text(path, json.dumps(payload, indent=2, sort_keys=True) + "\n")
    return payload


def main() -> int:
    parser = argparse.ArgumentParser()
    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument("--dry-run", action="store_true")
    mode.add_argument("--emit-lean", action="store_true")
    mode.add_argument("--emit-all-supported", action="store_true")
    mode.add_argument("--list-supported", action="store_true")
    parser.add_argument("--start-rank", type=int)
    parser.add_argument("--end-rank", type=int)
    parser.add_argument("--output-dir", type=Path, default=OUTPUT_DIR)
    parser.add_argument("--dry-run-output", type=Path, default=DEFAULT_DRY_RUN)
    args = parser.parse_args()

    output_dir = args.output_dir
    if not output_dir.is_absolute():
        output_dir = REPO_ROOT / output_dir
    dry_path = args.dry_run_output
    if not dry_path.is_absolute():
        dry_path = REPO_ROOT / dry_path

    if args.list_supported:
        print(json.dumps({
            "supported_templates": [
                {
                    "template": template.key,
                    "start_rank": template.start_rank,
                    "end_rank": template.end_rank,
                    "rank_count": template.rank_count,
                    "source": template.source,
                }
                for template in SUPPORTED_TEMPLATES
            ],
        }, indent=2, sort_keys=True))
        return 0

    if args.emit_all_supported:
        manifest = emit_all_supported(output_dir)
        print("generated all supported family interval evidence")
        print(f"templates: {manifest['template_count']}")
        print(f"rank_count: {manifest['rank_count']}")
        print(f"manifest: {(output_dir / 'manifest.json').relative_to(REPO_ROOT)}")
        return 0

    if args.start_rank is None or args.end_rank is None:
        parser.error("--start-rank and --end-rank are required for --dry-run and --emit-lean")

    try:
        if args.dry_run:
            payload = dry_run(args.start_rank, args.end_rank, dry_path)
            print(json.dumps(payload["decision"], sort_keys=True))
            print(f"wrote dry-run: {dry_path.relative_to(REPO_ROOT)}")
        else:
            manifest = emit_one(args.start_rank, args.end_rank, output_dir)
            print("generated family interval evidence")
            print(f"ranks: [{manifest['start_rank']}, {manifest['end_rank']})")
            print(f"root: {manifest['paths']['verified_root']['path']}")
            print(f"manifest: {(output_dir / 'manifest.json').relative_to(REPO_ROOT)}")
    except ValueError as err:
        parser.error(str(err))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
