#!/usr/bin/env python3
"""Emit bounded semantic symmetry evidence batches.

PHASE_6L_HISTORICAL_RANK_BOUNDARY: this orchestration layer wraps the old
rank-interval public shard emitters. It is retained for historical smoke
ranges only and is not a forward Phase 6L backend.

This is a thin orchestration layer over the public interval shard emitter.  It
does not invent a new certificate format: public shards still contain the
proof-carrying exact certificates, and the symmetry layer only wraps their
verified roots into `SemanticBoundedEvidence` values.

The legacy public interval shard emitter currently writes singleton
certificate leaves.  That shape is useful for tiny checked smoke ranges, but it
is not a scalable path: rank 8 already exhausts available memory when Lean
elaborates the generated non-identity leaf.  Therefore this script now refuses
to create missing singleton shards unless `--allow-legacy-singleton-leaves` is
passed explicitly.  The path forward is the family-interval emitter described
in `SYMMETRY_PLAN.md`.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Any


SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[0]
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_public_interval_evidence as public


OUTPUT_DIR = REPO_ROOT / "evidence" / "symmetry_semantic_shards"
MANIFEST_PATH = OUTPUT_DIR / "manifest.json"
LEGACY_REUSE_ALLOWLIST = {
    (0, 8, "Shard000000000_000000008"),
}


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def generated_file_record(path: Path) -> dict[str, Any]:
    if not path.exists():
        return {"path": str(path.relative_to(REPO_ROOT)), "exists": False}
    data = path.read_bytes()
    return {
        "path": str(path.relative_to(REPO_ROOT)),
        "exists": True,
        "bytes": len(data),
    }


def lean_namespace_part(raw: str) -> str:
    cleaned = [ch if ch.isalnum() else "_" for ch in raw]
    part = "".join(cleaned).strip("_")
    return part or "Shard"


def shard_name(lo: int, hi: int) -> str:
    return f"Shard{lo:09d}_{hi:09d}"


def public_root_module(name: str) -> str:
    return f"evidence.public_interval_shards.{name}.VerifiedRoot"


def public_root_namespace(name: str) -> str:
    return (
        "Cuboctahedron.Generated.PublicEvidence.IntervalShard."
        f"{lean_namespace_part(name)}.VerifiedRoot"
    )


def wrapper_namespace(name: str) -> str:
    return (
        "Cuboctahedron.Generated.SymmetryEvidence.IntervalShard."
        f"{lean_namespace_part(name)}"
    )


def group_namespace(group_name: str) -> str:
    return (
        "Cuboctahedron.Generated.SymmetryEvidence.IntervalGroup."
        f"{lean_namespace_part(group_name)}"
    )


def write_wrapper(*, lo: int, hi: int, name: str) -> Path:
    module = public_root_module(name)
    pub_ns = public_root_namespace(name)
    ns = wrapper_namespace(name)
    path = OUTPUT_DIR / name / "VerifiedRoot.lean"
    text = "\n".join([
        "import Cuboctahedron.Generated.SymmetryEvidence.Semantic",
        f"import {module}",
        "",
        "/-!",
        "Generated semantic symmetry wrapper for one checked public interval shard.",
        "",
        "This file is outside the default Lake package source tree. It imports",
        "a public proof-carrying shard root and repackages the checked interval",
        "coverage in the symmetry namespace.",
        "-/",
        "",
        f"namespace {ns}",
        "",
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
        "theorem nonidentity_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        nonIdentityClassifier) {lo} {hi} := by",
        "  simpa [nonIdentityClassifier,",
        f"    {pub_ns}.nonIdentityClassifier] using",
        f"    {pub_ns}.nonidentity_interval",
        "",
        "theorem translation_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        translationClassifier) {lo} {hi} := by",
        "  simpa [translationClassifier,",
        f"    {pub_ns}.translationClassifier] using",
        f"    {pub_ns}.translation_interval",
        "",
        "def coverage :",
        f"    Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence {lo} {hi} where",
        "  nonidentityClassifier := nonIdentityClassifier",
        "  translationClassifier := translationClassifier",
        "  nonidentity := nonidentity_interval",
        "  translation := translation_interval",
        "",
        f"end {ns}",
        "",
    ])
    write_text(path, text)
    return path


def balanced_concat(items: list[str], *, indent: str = "  ") -> list[str]:
    if not items:
        raise ValueError("cannot concatenate an empty theorem list")
    if len(items) == 1:
        return [indent + items[0]]
    mid = len(items) // 2
    return [
        indent + "(Cuboctahedron.Generated.Coverage.CoversInterval.concat",
        *balanced_concat(items[:mid], indent=indent + "  "),
        *balanced_concat(items[mid:], indent=indent + "  "),
        indent + ")",
    ]


def write_group_root(
    *,
    group_name: str,
    lo: int,
    hi: int,
    shards: list[dict[str, Any]],
) -> Path:
    imports = [
        f"import evidence.symmetry_semantic_shards.{record['shard_name']}.VerifiedRoot"
        for record in shards
    ]
    ns = group_namespace(group_name)
    path = OUTPUT_DIR / group_name / "VerifiedRoot.lean"
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Generated semantic symmetry group root.",
        "",
        "This file stitches checked symmetry shard wrappers with balanced",
        "`CoversInterval.concat` applications. It remains outside the default",
        "Lake package source tree.",
        "-/",
        "",
        f"namespace {ns}",
        "",
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
        f"def startRank : Nat := {lo}",
        f"def endRank : Nat := {hi}",
        "",
    ]
    nonid_terms: list[str] = []
    translation_terms: list[str] = []
    for record in shards:
        name = record["shard_name"]
        shard_lo = int(record["start_rank"])
        shard_hi = int(record["end_rank"])
        shard_ns = wrapper_namespace(name)
        local = f"shard_{shard_lo:09d}_{shard_hi:09d}"
        nonid_name = f"{local}_nonidentity"
        translation_name = f"{local}_translation"
        nonid_terms.append(nonid_name)
        translation_terms.append(translation_name)
        lines.extend([
            f"theorem {nonid_name} :",
            "    Cuboctahedron.Generated.Coverage.CoversInterval",
            "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
            f"        nonIdentityClassifier) {shard_lo} {shard_hi} := by",
            "  simpa [nonIdentityClassifier,",
            f"    {shard_ns}.nonIdentityClassifier] using",
            f"    {shard_ns}.nonidentity_interval",
            "",
            f"theorem {translation_name} :",
            "    Cuboctahedron.Generated.Coverage.CoversInterval",
            "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
            f"        translationClassifier) {shard_lo} {shard_hi} := by",
            "  simpa [translationClassifier,",
            f"    {shard_ns}.translationClassifier] using",
            f"    {shard_ns}.translation_interval",
            "",
        ])
    lines.extend([
        "theorem nonidentity_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        nonIdentityClassifier) {lo} {hi} :=",
        *balanced_concat(nonid_terms),
        "",
        "theorem translation_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        translationClassifier) {lo} {hi} :=",
        *balanced_concat(translation_terms),
        "",
        "def coverage :",
        f"    Cuboctahedron.Generated.SymmetryEvidence.SemanticBoundedEvidence {lo} {hi} where",
        "  nonidentityClassifier := nonIdentityClassifier",
        "  translationClassifier := translationClassifier",
        "  nonidentity := nonidentity_interval",
        "  translation := translation_interval",
        "",
        f"end {ns}",
        "",
    ])
    write_text(path, "\n".join(lines))
    return path


def load_public_manifest(name: str) -> dict[str, Any]:
    path = REPO_ROOT / "evidence" / "public_interval_shards" / name / "manifest.json"
    with path.open(encoding="utf-8") as handle:
        return json.load(handle)


def ensure_public_shard(
    *,
    lo: int,
    hi: int,
    name: str,
    max_heavy_leaves: int,
    reuse_existing: bool,
    allow_legacy_singleton_leaves: bool,
) -> dict[str, Any]:
    manifest_path = REPO_ROOT / "evidence" / "public_interval_shards" / name / "manifest.json"
    if reuse_existing and manifest_path.exists():
        summary = load_public_manifest(name)
        if int(summary["start_rank"]) == lo and int(summary["end_rank"]) == hi:
            if allow_legacy_singleton_leaves or (lo, hi, name) in LEGACY_REUSE_ALLOWLIST:
                return summary
            raise ValueError(
                "refusing to reuse legacy singleton public shard "
                f"{name} for [{lo}, {hi}) without "
                "--allow-legacy-singleton-leaves. Only the checked [0,8) "
                "smoke shard is allowlisted for default reuse."
            )
    if not allow_legacy_singleton_leaves:
        raise ValueError(
            "refusing to generate missing legacy singleton public shard "
            f"{name} for [{lo}, {hi}). Re-run with --reuse-existing if it "
            "already exists, or pass --allow-legacy-singleton-leaves only for "
            "tiny diagnostic smoke checks. Full evidence must use the "
            "family-interval emitter."
        )
    _index, summary = public.write_interval_shard(
        lo=lo,
        hi=hi,
        shard_name=name,
        translation_masks=list(range(64)),
        max_heavy_leaves=max_heavy_leaves,
        approve_large_shard=False,
    )
    return summary


def build_batch(
    *,
    start_rank: int,
    end_rank: int,
    shard_size: int,
    max_heavy_leaves: int,
    reuse_existing: bool,
    allow_legacy_singleton_leaves: bool,
    group_name: str,
) -> dict[str, Any]:
    if not (0 <= start_rank < end_rank <= public.exact.EXPECTED_PAIR_WORDS):
        raise ValueError("rank interval is outside the valid pair-word range")
    if shard_size <= 0:
        raise ValueError("--shard-size must be positive")
    if (end_rank - start_rank) % shard_size != 0:
        raise ValueError("Phase 8A requires the range length to be a multiple of shard size")

    public.write_all_module()

    shards: list[dict[str, Any]] = []
    for lo in range(start_rank, end_rank, shard_size):
        hi = lo + shard_size
        name = shard_name(lo, hi)
        public_summary = ensure_public_shard(
            lo=lo,
            hi=hi,
            name=name,
            max_heavy_leaves=max_heavy_leaves,
            reuse_existing=reuse_existing,
            allow_legacy_singleton_leaves=allow_legacy_singleton_leaves,
        )
        wrapper = write_wrapper(lo=lo, hi=hi, name=name)
        shards.append({
            "shard_name": name,
            "start_rank": lo,
            "end_rank": hi,
            "public_manifest": public_summary["paths"]["manifest"]["path"],
            "public_verified_root": public_summary["paths"]["verified_root"]["path"],
            "symmetry_wrapper_root": str(wrapper.relative_to(REPO_ROOT)),
            "heavy_leaf_count": public_summary["heavy_leaf_count"],
            "identity_rank_count": public_summary["identity_rank_count"],
            "nonidentity_rank_count": public_summary["nonidentity_rank_count"],
            "translation_case_count": public_summary["translation_case_count"],
        })
    group_root = write_group_root(
        group_name=group_name,
        lo=start_rank,
        hi=end_rank,
        shards=shards,
    )
    manifest = {
        "schema_version": 1,
        "mode": "symmetry-semantic-batch",
        "trusted_as_proof": False,
        "complete_for_interval": True,
        "start_rank": start_rank,
        "end_rank": end_rank,
        "rank_count": end_rank - start_rank,
        "shard_size": shard_size,
        "group_name": group_name,
        "group_root": str(group_root.relative_to(REPO_ROOT)),
        "shards": shards,
        "memory_rule": {
            "safe_ram_gib": 45,
            "public_shard_checker": "scripts/check_public_interval_shard.py",
            "external_olean_cache": "evidence/.external_olean_cache",
            "legacy_singleton_generation_enabled": allow_legacy_singleton_leaves,
        },
        "forward_path": "family_interval_evidence",
    }
    write_text(MANIFEST_PATH, json.dumps(manifest, indent=2, sort_keys=True) + "\n")
    return manifest


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--start-rank", type=int, default=0)
    parser.add_argument("--end-rank", type=int, default=64)
    parser.add_argument("--shard-size", type=int, default=8)
    parser.add_argument("--max-heavy-leaves", type=int, default=384)
    parser.add_argument("--group-name", default="Group000")
    parser.add_argument("--reuse-existing", action="store_true")
    parser.add_argument(
        "--allow-legacy-singleton-leaves",
        action="store_true",
        help=(
            "Allow generation of missing singleton public shard leaves. "
            "This is diagnostic-only and must not be used for full evidence."
        ),
    )
    args = parser.parse_args()
    try:
        manifest = build_batch(
            start_rank=args.start_rank,
            end_rank=args.end_rank,
            shard_size=args.shard_size,
            max_heavy_leaves=args.max_heavy_leaves,
            reuse_existing=args.reuse_existing,
            allow_legacy_singleton_leaves=args.allow_legacy_singleton_leaves,
            group_name=args.group_name,
        )
    except ValueError as err:
        parser.error(str(err))
    print("generated symmetry semantic batch")
    print(f"ranks: [{manifest['start_rank']}, {manifest['end_rank']})")
    print(f"shards: {len(manifest['shards'])}")
    print(f"group root: {manifest['group_root']}")
    print(f"manifest: {MANIFEST_PATH.relative_to(REPO_ROOT)}")


if __name__ == "__main__":
    main()
