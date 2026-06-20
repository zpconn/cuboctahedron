#!/usr/bin/env python3
"""Emit memory-safe public interval evidence modules.

This is the replacement for the archived packed/blob generated-data path.  The
emitted Lean files expose semantic interval theorems over the public coverage
API; they do not ask Lean to decode large blobs or reduce a global checker.

The full corpus emitter will be grown from this script.  The current smoke mode
is deliberately small and proof-carrying: it emits ordinary certificate
literals, local checker theorems, and interval wrappers.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Iterable

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[0]
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact

OUTPUT_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "PublicEvidence"
)
BOUNDED_RANGE_PATH = OUTPUT_DIR / "BoundedRange.lean"
SMOKE_OUTPUT_DIR = REPO_ROOT / "evidence" / "public_interval_smoke"
SHARDS_OUTPUT_DIR = REPO_ROOT / "evidence" / "public_interval_shards"
MANIFEST_PATH = (
    REPO_ROOT / "scripts" / "generated" / "public_interval_evidence.json"
)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def generated_file_record(path: Path) -> dict:
    if not path.exists():
        return {
            "path": str(path.relative_to(REPO_ROOT)),
            "exists": False,
        }
    data = path.read_bytes()
    return {
        "path": str(path.relative_to(REPO_ROOT)),
        "exists": True,
        "bytes": len(data),
    }


def lean_module_name(path: Path) -> str:
    rel = path.relative_to(REPO_ROOT).with_suffix("")
    return ".".join(rel.parts)


def write_manifest(payload: dict) -> None:
    MANIFEST_PATH.parent.mkdir(parents=True, exist_ok=True)
    MANIFEST_PATH.write_text(
        json.dumps(payload, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )


def clear_dir(path: Path) -> None:
    if not path.exists():
        return
    for child in path.iterdir():
        if child.is_dir():
            clear_dir(child)
            child.rmdir()
        else:
            child.unlink()


def cert_name(prefix: str, rank: int, mask: int | None = None) -> str:
    if mask is None:
        return f"{prefix}{rank:09d}"
    return f"{prefix}{rank:09d}Mask{mask:02d}"


def translation_cert_for_case(rank: int, mask: int, name: str) -> dict:
    word = exact.pair_word_at_rank(rank)
    b, seq = exact.translation_vector(word, mask)
    if b == exact.vec((0, 0, 0)):
        return exact.build_translation_family_cert(
            rank, mask, name, "badTranslationVector"
        ).to_json()
    try:
        exact.first_bad_translation_impact(seq, b)
        return exact.build_translation_family_cert(
            rank, mask, name, "badDirectionSign"
        ).to_json()
    except ValueError:
        return exact.build_translation_family_cert(
            rank, mask, name, "farkas"
        ).to_json()


def unique_pair_word_records(certs: Iterable[dict]) -> list[dict]:
    records: dict[int, list[str]] = {}
    for cert in certs:
        records[int(cert["rank"])] = list(cert["word"])
    return [
        {"rank": rank, "word": word}
        for rank, word in sorted(records.items())
    ]


def write_all_module() -> Path:
    path = OUTPUT_DIR / "All.lean"
    write_text(
        path,
        "\n".join([
            "import Cuboctahedron.Generated.PublicEvidence.BoundedRange",
            "",
            "/-!",
            "Public interval evidence namespace.",
            "",
            "This is the active generated-evidence namespace for the reset",
            "backend.  Full evidence modules should export small semantic",
            "interval theorems, not packed byte blobs or global data tables.",
            "",
            "Heavy proof-carrying shard leaves are emitted outside this Lake",
            "package source tree under `evidence/public_interval_shards/` and",
            "checked serially by file path.",
            "-/",
            "",
            "namespace Cuboctahedron.Generated.PublicEvidence",
            "",
            "def activeBackendName : String :=",
            "  \"public_interval_evidence\"",
            "",
            "end Cuboctahedron.Generated.PublicEvidence",
            "",
        ]),
    )
    return path


def write_bounded_range_module(
    *,
    lo: int = 0,
    hi: int = 0,
    root_path: Path | None = None,
    complete_for_interval: bool = False,
) -> Path:
    root_text = (
        str(root_path.relative_to(REPO_ROOT))
        if root_path is not None
        else ""
    )
    write_text(
        BOUNDED_RANGE_PATH,
        "\n".join([
            "import Cuboctahedron.Generated.ExhaustiveCoverage",
            "",
            "/-!",
            "Lightweight public marker for the currently emitted bounded",
            "interval evidence root.",
            "",
            "The actual proof-carrying root is emitted outside the default",
            "Lake package source tree. This module records the exact range and",
            "provides the small structure that the external root inhabits.",
            "-/",
            "",
            "namespace Cuboctahedron.Generated.PublicEvidence",
            "",
            "structure VerifiedBoundedRange (lo hi : Nat) where",
            "  nonidentityClassifier : Coverage.NonIdComputableClassifier",
            "  translationClassifier : Coverage.TranslationComputableClassifier",
            "  nonidentity :",
            "    Coverage.CoversInterval",
            "      (NonIdentity.Coverage.ResidualRankCertifiedBy",
            "        nonidentityClassifier) lo hi",
            "  translation :",
            "    Coverage.CoversInterval",
            "      (Translation.Coverage.FarkasRankCertifiedBy",
            "        translationClassifier) lo hi",
            "",
            f"def currentBoundedStartRank : Nat := {lo}",
            f"def currentBoundedEndRank : Nat := {hi}",
            f"def currentBoundedRankCount : Nat := {hi - lo}",
            f"def currentBoundedCompleteForInterval : Bool := {str(complete_for_interval).lower()}",
            f"def currentBoundedVerifiedRootPath : String := \"{root_text}\"",
            "",
            "theorem currentBoundedRange_nonnegative :",
            "    currentBoundedStartRank <= currentBoundedEndRank := by",
            "  norm_num [currentBoundedStartRank, currentBoundedEndRank]",
            "",
            "end Cuboctahedron.Generated.PublicEvidence",
            "",
        ]),
    )
    return BOUNDED_RANGE_PATH


def lean_namespace_part(raw: str) -> str:
    cleaned = []
    for ch in raw:
        if ch.isalnum():
            cleaned.append(ch)
        else:
            cleaned.append("_")
    part = "".join(cleaned).strip("_")
    return part or "Shard"


def shard_name_for_interval(lo: int, hi: int) -> str:
    return f"Shard{lo:09d}_{hi:09d}"


def interval_shard_namespace(shard_name: str) -> str:
    return (
        "Cuboctahedron.Generated.PublicEvidence.IntervalShard."
        f"{lean_namespace_part(shard_name)}"
    )


def write_nonidentity_leaf(
    *,
    path: Path,
    namespace: str,
    rank: int,
    cert_prefix: str,
    classifier_name: str,
    theorem_name: str = "rank_certified",
) -> dict:
    nonid_cert = exact.build_nonid_cert_for_rank(
        rank, cert_name(cert_prefix, rank)
    ).to_json()
    if exact.total_linear(nonid_cert["word"]) == exact.mat_id():
        raise ValueError(f"nonidentity rank {rank} is identity-linear")

    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated non-identity public interval shard leaf.",
        "",
        "This file is intentionally checked by path and is not imported by",
        "the default Lake package build.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedTactic false",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        f"def {classifier_name} :",
        "    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where",
        "  badDirectionFamilies := []",
        "  badPairBalanceFamilies := []",
        "",
        f"def {classifier_name}Translation :",
        "    Cuboctahedron.Generated.Coverage.TranslationComputableClassifier where",
        "  badDirectionFamilies := []",
        "  badVectorFamilies := []",
        "",
    ]
    exact.append_word_definitions(lines, {
        "pair_words": [{"rank": rank, "word": nonid_cert["word"]}],
    })
    exact.append_nonid_cert(lines, nonid_cert)
    exact.append_nonid_check_theorem_full(lines, nonid_cert)

    name = nonid_cert["name"]
    lines.extend([
        f"theorem {theorem_name} :",
        "    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"      {classifier_name} {rank} := by",
        "  intro hlt _hclass _hM",
        f"  have hrank : (⟨{rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  exact ⟨{name}, by rw [hrank]; decide, {name}_check⟩",
        "",
        f"theorem interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        {classifier_name}) {rank} {rank + 1} :=",
        f"  Cuboctahedron.Generated.Coverage.CoversInterval.single {theorem_name}",
        "",
        f"theorem nonidentity_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        {classifier_name}) {rank} {rank + 1} :=",
        "  interval",
        "",
        "theorem translation_rank_certified :",
        "    Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"      {classifier_name}Translation {rank} := by",
        "  intro hlt _mask _hclass hM",
        f"  have hrank : (⟨{rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  have hword : {exact.word_name(rank)} = unrankPairWord ⟨{rank}, hlt⟩ := by",
        "    rw [hrank]",
        "    decide",
        f"  exact False.elim ({name}_nonIdentity (by simpa [← hword] using hM))",
        "",
        "theorem translation_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        {classifier_name}Translation) {rank} {rank + 1} :=",
        "  Cuboctahedron.Generated.Coverage.CoversInterval.single",
        "    translation_rank_certified",
        "",
        f"end {namespace}",
        "",
    ])

    write_text(path, "\n".join(lines))
    return {
        "rank": rank,
        "identity_linear": False,
        "failure": nonid_cert["failure"]["kind"],
        "path": generated_file_record(path),
    }


def write_translation_case_leaf(
    *,
    path: Path,
    namespace: str,
    rank: int,
    mask: int,
    cert_prefix: str,
    theorem_name: str = "case_certified",
) -> dict:
    cert = translation_cert_for_case(
        rank,
        mask,
        cert_name(cert_prefix, rank, mask),
    )
    if exact.total_linear(cert["word"]) != exact.mat_id():
        raise ValueError(f"translation rank {rank} is not identity-linear")
    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated translation public interval shard leaf.",
        "",
        "This file is intentionally checked by path and is not imported by",
        "the default Lake package build.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedTactic false",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    exact.append_word_definitions(lines, {
        "pair_words": [{"rank": rank, "word": cert["word"]}],
    })
    exact.append_translation_cert(lines, cert)
    exact.append_translation_check_theorem(lines, cert)
    name = cert["name"]
    lines.extend([
        f"theorem {theorem_name}",
        f"    (hlt : {rank} < numPairWords) :",
        "    exists cert : TranslationCert,",
        f"      cert.word = unrankPairWord ⟨{rank}, hlt⟩ /\\",
        f"        cert.signMask = ({exact.lean_sign_mask(mask)} : SignMask) /\\",
        "          checkTranslationCert cert = true := by",
        f"  have hrank : (⟨{rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  exact ⟨{name}, by rw [hrank]; decide, by decide, {name}_check⟩",
        "",
        f"end {namespace}",
        "",
    ])
    write_text(path, "\n".join(lines))
    return {
        "rank": rank,
        "mask": mask,
        "failure": cert["failure"]["kind"],
        "path": generated_file_record(path),
    }


def write_translation_rank_root(
    *,
    path: Path,
    namespace: str,
    rank: int,
    mask_paths: list[Path],
) -> dict:
    imports = [f"import {lean_module_name(mask_path)}" for mask_path in mask_paths]
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Generated translation rank aggregator for a public interval shard.",
        "",
        "This file imports exactly the 64 mask leaves for one identity-linear",
        "rank, proves the all-mask Farkas bridge predicate for that singleton",
        "rank, and also proves the non-identity branch vacuously.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedTactic false",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
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
    ]
    word = exact.pair_word_at_rank(rank)
    exact.append_word_definitions(lines, {
        "pair_words": [{"rank": rank, "word": word}],
    })
    lines.extend([
        f"theorem wordRank{rank:09d}_totalLinear_identity :",
        f"    totalLinearOfPairWord {exact.word_name(rank)} = (matId : Mat3 Rat) := by",
        "  rw [totalLinearOfPairWord_eq_pairLinearProductRight]",
        "  simp [pairLinearProductRight, pairLinearSuffixNat, reflM,",
        "    canonicalNormalQ, matSub, matId, scalarMat, outer, dot, matMul]",
        "  norm_num",
        "",
        "theorem nonidentity_rank_certified :",
        "    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"      nonIdentityClassifier {rank} := by",
        "  intro hlt _hclass hM",
        f"  have hrank : (⟨{rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  have hword : {exact.word_name(rank)} = unrankPairWord ⟨{rank}, hlt⟩ := by",
        "    rw [hrank]",
        "    decide",
        "  exact False.elim (hM (by",
        f"    simpa [← hword] using wordRank{rank:09d}_totalLinear_identity))",
        "",
        "theorem nonidentity_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        nonIdentityClassifier) {rank} {rank + 1} :=",
        "  Cuboctahedron.Generated.Coverage.CoversInterval.single",
        "    nonidentity_rank_certified",
        "",
        "theorem translation_rank_certified :",
        "    Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"      translationClassifier {rank} := by",
        "  intro hlt mask _hclass _hM",
        "  fin_cases mask",
    ])
    for mask in range(64):
        lines.append(f"  · exact Mask{mask:02d}.case_certified hlt")
    lines.extend([
        "",
        "theorem translation_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        translationClassifier) {rank} {rank + 1} :=",
        "  Cuboctahedron.Generated.Coverage.CoversInterval.single",
        "    translation_rank_certified",
        "",
        f"end {namespace}",
        "",
    ])
    write_text(path, "\n".join(lines))
    return {
        "rank": rank,
        "path": generated_file_record(path),
    }


def write_nonidentity_smoke_leaf(nonid_rank: int) -> tuple[Path, dict]:
    nonid_cert = exact.build_nonid_cert_for_rank(
        nonid_rank, cert_name("publicSmokeNonId", nonid_rank)
    ).to_json()
    if exact.total_linear(nonid_cert["word"]) == exact.mat_id():
        raise ValueError(f"nonidentity smoke rank {nonid_rank} is identity-linear")

    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated non-identity public interval smoke leaf.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.PublicEvidence.Smoke.NonIdentity",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedTactic false",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
        "def smokeNonIdentityClassifier :",
        "    Cuboctahedron.Generated.Coverage.NonIdComputableClassifier where",
        "  badDirectionFamilies := []",
        "  badPairBalanceFamilies := []",
        "",
    ]
    exact.append_word_definitions(lines, {
        "pair_words": [{"rank": nonid_rank, "word": nonid_cert["word"]}],
    })
    exact.append_nonid_cert(lines, nonid_cert)
    exact.append_nonid_check_theorem_full(lines, nonid_cert)

    name = nonid_cert["name"]
    lines.extend([
        f"theorem {name}_rank_certified :",
        "    Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"      smokeNonIdentityClassifier {nonid_rank} := by",
        "  intro hlt _hclass _hM",
        f"  have hrank : (⟨{nonid_rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{nonid_rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  exact ⟨{name}, by rw [hrank]; decide, {name}_check⟩",
        "",
        "theorem interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        smokeNonIdentityClassifier) {nonid_rank} {nonid_rank + 1} :=",
        f"  Cuboctahedron.Generated.Coverage.CoversInterval.single {name}_rank_certified",
        "",
        "end Cuboctahedron.Generated.PublicEvidence.Smoke.NonIdentity",
        "",
    ])

    path = SMOKE_OUTPUT_DIR / "NonIdentity.lean"
    write_text(path, "\n".join(lines))
    return path, {
        "rank": nonid_rank,
        "failure": nonid_cert["failure"]["kind"],
    }


def write_translation_mask_leaf(
    *, translation_rank: int, mask: int
) -> tuple[Path, dict]:
    cert = translation_cert_for_case(
        translation_rank,
        mask,
        cert_name("publicSmokeTranslation", translation_rank, mask),
    )
    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated translation public interval smoke mask leaf.",
        "-/",
        "",
        f"namespace Cuboctahedron.Generated.PublicEvidence.Smoke.Translation.Mask{mask:02d}",
        "",
        "set_option maxHeartbeats 4000000",
        "set_option maxRecDepth 100000",
        "set_option linter.unusedTactic false",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    exact.append_word_definitions(lines, {
        "pair_words": [{"rank": translation_rank, "word": cert["word"]}],
    })
    exact.append_translation_cert(lines, cert)
    exact.append_translation_check_theorem(lines, cert)
    name = cert["name"]
    lines.extend([
        "theorem case_certified",
        f"    (hlt : {translation_rank} < numPairWords) :",
        "    exists cert : TranslationCert,",
        f"      cert.word = unrankPairWord ⟨{translation_rank}, hlt⟩ /\\",
        f"        cert.signMask = ({exact.lean_sign_mask(mask)} : SignMask) /\\",
        "          checkTranslationCert cert = true := by",
        f"  have hrank : (⟨{translation_rank}, hlt⟩ : Fin numPairWords) =",
        f"      (⟨{translation_rank}, by decide⟩ : Fin numPairWords) := by",
        "    ext",
        "    rfl",
        f"  exact ⟨{name}, by rw [hrank]; decide, by decide, {name}_check⟩",
        "",
        f"end Cuboctahedron.Generated.PublicEvidence.Smoke.Translation.Mask{mask:02d}",
        "",
    ])
    path = SMOKE_OUTPUT_DIR / "Translation" / f"Mask{mask:02d}.lean"
    write_text(path, "\n".join(lines))
    return path, {
        "mask": mask,
        "failure": cert["failure"]["kind"],
    }


def write_translation_smoke_root(
    *, translation_rank: int, mask_records: list[dict]
) -> Path:
    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
    ]
    lines.extend([
        "",
        "/-!",
        "Generated translation public interval smoke index.",
        "",
        "The proof-carrying mask leaves for this smoke run live outside the",
        "Lake package source tree under `evidence/public_interval_smoke/`.",
        "Build them by file path with `lake env lean ...` so broad package",
        "builds do not accidentally compile many exact certificate leaves in",
        "parallel.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.PublicEvidence.Smoke.Translation",
        "",
        f"def smokeTranslationRank : Nat := {translation_rank}",
        f"def smokeTranslationMaskCount : Nat := {len(mask_records)}",
        "",
    ])
    for record in mask_records:
        mask = int(record["mask"])
        lines.append(f"def mask{mask:02d}Failure : String := \"{record['failure']}\"")
    lines.extend([
        "",
        "end Cuboctahedron.Generated.PublicEvidence.Smoke.Translation",
        "",
    ])
    path = SMOKE_OUTPUT_DIR / "TranslationIndex.lean"
    write_text(path, "\n".join(lines))
    return path


def write_smoke_readme(
    *, nonid_path: Path, translation_paths: list[Path], index_path: Path
) -> Path:
    lines = [
        "# Public Interval Smoke Evidence",
        "",
        "These generated Lean files are intentionally outside the Lake package",
        "source tree. Check them one at a time by file path so a broad",
        "`lake build` cannot accidentally compile many exact certificate leaves",
        "in parallel.",
        "",
        "Suggested checks:",
        "",
        "```bash",
        f"lake env lean {nonid_path.relative_to(REPO_ROOT)}",
    ]
    for path in translation_paths:
        lines.append(f"lake env lean {path.relative_to(REPO_ROOT)}")
    lines.extend([
        f"lake env lean {index_path.relative_to(REPO_ROOT)}",
        "```",
        "",
    ])
    path = SMOKE_OUTPUT_DIR / "README.md"
    write_text(path, "\n".join(lines))
    return path


def write_smoke_module(
    *, nonid_rank: int, translation_rank: int, translation_masks: list[int]
) -> tuple[Path, dict]:
    clear_dir(SMOKE_OUTPUT_DIR)
    translation_word = exact.pair_word_at_rank(translation_rank)
    if exact.total_linear(translation_word) != exact.mat_id():
        raise ValueError(
            f"translation smoke rank {translation_rank} is not identity-linear"
        )

    nonid_path, nonid_summary = write_nonidentity_smoke_leaf(nonid_rank)
    mask_paths: list[Path] = []
    mask_records: list[dict] = []
    for mask in translation_masks:
        path, record = write_translation_mask_leaf(
            translation_rank=translation_rank,
            mask=mask,
        )
        mask_paths.append(path)
        mask_records.append(record)
    translation_root = write_translation_smoke_root(
        translation_rank=translation_rank,
        mask_records=mask_records,
    )
    readme_path = write_smoke_readme(
        nonid_path=nonid_path,
        translation_paths=mask_paths,
        index_path=translation_root,
    )

    lines: list[str] = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated public interval evidence smoke index.",
        "",
        "Proof-carrying smoke leaves are generated outside the Lake package",
        "source tree. See `evidence/public_interval_smoke/README.md`.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.PublicEvidence.Smoke",
        "",
        f"def smokeNonIdentityRank : Nat := {nonid_rank}",
        f"def smokeTranslationRank : Nat := {translation_rank}",
        f"def smokeTranslationMaskCount : Nat := {len(mask_records)}",
        "",
        "end Cuboctahedron.Generated.PublicEvidence.Smoke",
        "",
    ]

    path = SMOKE_OUTPUT_DIR / "Index.lean"
    write_text(path, "\n".join(lines))

    summary = {
        "nonidentity_rank": nonid_rank,
        "nonidentity_failure": nonid_summary["failure"],
        "translation_rank": translation_rank,
        "translation_case_count": len(mask_records),
        "translation_failures": {
            failure: sum(1 for record in mask_records if record["failure"] == failure)
            for failure in sorted({record["failure"] for record in mask_records})
        },
        "leaf_modules": {
            "nonidentity": generated_file_record(nonid_path),
            "translation_root": generated_file_record(translation_root),
            "translation_masks": [generated_file_record(p) for p in mask_paths],
            "readme": generated_file_record(readme_path),
        },
    }
    return path, summary


def parse_masks(raw: str) -> list[int]:
    masks: list[int] = []
    for part in raw.split(","):
        item = part.strip()
        if not item:
            continue
        mask = int(item)
        if not 0 <= mask < 64:
            raise ValueError(f"translation mask out of range: {mask}")
        if mask not in masks:
            masks.append(mask)
    if not masks:
        raise ValueError("at least one translation smoke mask is required")
    return masks


def parse_mask_selector(raw: str) -> list[int]:
    item = raw.strip().lower()
    if item == "all":
        return list(range(64))
    return parse_masks(raw)


def rank_is_identity_linear(rank: int) -> bool:
    return exact.total_linear(exact.pair_word_at_rank(rank)) == exact.mat_id()


def write_interval_shard_readme(
    *,
    shard_dir: Path,
    leaf_paths: list[Path],
    index_path: Path,
    manifest_path: Path,
    lo: int,
    hi: int,
) -> Path:
    lines = [
        f"# Public Interval Shard [{lo}, {hi})",
        "",
        "This directory contains proof-carrying Lean leaves for one bounded",
        "rank interval. The leaves are outside the default Lake package source",
        "tree so `lake build` will not compile them in parallel.",
        "",
        "Memory rule:",
        "",
        "- Check heavy leaves serially.",
        "- Do not run a broad parallel build over this directory.",
        "- The current VM has 47 GB RAM; treat 45 GB as the safe ceiling.",
        "",
        "Suggested serial check commands:",
        "",
        "```bash",
    ]
    for path in leaf_paths:
        lines.append(f"lake env lean {path.relative_to(REPO_ROOT)}")
    lines.extend([
        f"lake env lean {index_path.relative_to(REPO_ROOT)}",
        "",
        "# Or use the helper to compile external modules serially and then",
        "# check the composable verified root:",
        f"python3 scripts/check_public_interval_shard.py {manifest_path.relative_to(REPO_ROOT)} --compile-external --include-rank-roots --include-verified-root",
        "```",
        "",
        "Machine-readable manifest:",
        "",
        f"- `{manifest_path.relative_to(REPO_ROOT)}`",
        "",
    ])
    path = shard_dir / "README.md"
    write_text(path, "\n".join(lines))
    return path


def write_interval_shard_index(
    *,
    shard_dir: Path,
    shard_name: str,
    lo: int,
    hi: int,
    nonidentity_count: int,
    identity_count: int,
    translation_case_count: int,
) -> Path:
    namespace = interval_shard_namespace(shard_name)
    lines = [
        "import Cuboctahedron.Generated.PublicEvidence.All",
        "",
        "/-!",
        "Generated public interval shard index.",
        "",
        "This index intentionally imports no heavy proof-carrying leaves.",
        "The leaf files are checked serially by file path; see this shard's",
        "README and manifest for the exact commands.",
        "-/",
        "",
        f"namespace {namespace}",
        "",
        f"def startRank : Nat := {lo}",
        f"def endRank : Nat := {hi}",
        f"def rankCount : Nat := {hi - lo}",
        f"def nonidentityRankCount : Nat := {nonidentity_count}",
        f"def identityRankCount : Nat := {identity_count}",
        f"def translationCaseCount : Nat := {translation_case_count}",
        "",
        f"end {namespace}",
        "",
    ]
    path = shard_dir / "Index.lean"
    write_text(path, "\n".join(lines))
    return path


def balanced_concat_term(items: list[str], *, indent: str = "  ") -> list[str]:
    if not items:
        raise ValueError("cannot concatenate an empty interval theorem list")
    if len(items) == 1:
        return [indent + items[0]]
    mid = len(items) // 2
    left = balanced_concat_term(items[:mid], indent=indent + "  ")
    right = balanced_concat_term(items[mid:], indent=indent + "  ")
    return [
        indent + "(Cuboctahedron.Generated.Coverage.CoversInterval.concat",
        *left,
        *right,
        indent + ")",
    ]


def write_interval_shard_verified_root(
    *,
    shard_dir: Path,
    shard_name: str,
    lo: int,
    hi: int,
    rank_modules: list[dict],
) -> Path:
    namespace = interval_shard_namespace(shard_name) + ".VerifiedRoot"
    imports = [f"import {record['module']}" for record in rank_modules]
    nonid_theorems: list[str] = []
    translation_theorems: list[str] = []
    lines: list[str] = [
        *imports,
        "",
        "/-!",
        "Generated verified root for one bounded public interval shard.",
        "",
        "This file is outside the default Lake package source tree. Checking",
        "it proves coverage for exactly the interval named below, provided",
        "the imported external proof modules have been compiled serially.",
        "-/",
        "",
        f"namespace {namespace}",
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
    for record in rank_modules:
        rank = int(record["rank"])
        ns = record["namespace"]
        nonid_name = f"nonidentity_rank_{rank:09d}"
        translation_name = f"translation_rank_{rank:09d}"
        nonid_theorems.append(nonid_name)
        translation_theorems.append(translation_name)
        lines.extend([
            f"theorem {nonid_name} :",
            "    Cuboctahedron.Generated.Coverage.CoversInterval",
            "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
            f"        nonIdentityClassifier) {rank} {rank + 1} := by",
            "  simpa [nonIdentityClassifier,",
            f"    {ns}.nonIdentityClassifier] using",
            f"    {ns}.nonidentity_interval",
            "",
            f"theorem {translation_name} :",
            "    Cuboctahedron.Generated.Coverage.CoversInterval",
            "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
            f"        translationClassifier) {rank} {rank + 1} := by",
            "  simpa [translationClassifier,",
            f"    {ns}.translationClassifier] using",
            f"    {ns}.translation_interval",
            "",
        ])
    lines.extend([
        "theorem nonidentity_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.NonIdentity.Coverage.ResidualRankCertifiedBy",
        f"        nonIdentityClassifier) {lo} {hi} :=",
        *balanced_concat_term(nonid_theorems),
        "",
        "theorem translation_interval :",
        "    Cuboctahedron.Generated.Coverage.CoversInterval",
        "      (Cuboctahedron.Generated.Translation.Coverage.FarkasRankCertifiedBy",
        f"        translationClassifier) {lo} {hi} :=",
        *balanced_concat_term(translation_theorems),
        "",
        "theorem coverage :",
        f"    Cuboctahedron.Generated.PublicEvidence.VerifiedBoundedRange {lo} {hi} := {{",
        "  nonidentityClassifier := nonIdentityClassifier",
        "  translationClassifier := translationClassifier",
        "  nonidentity := nonidentity_interval",
        "  translation := translation_interval",
        "}",
        "",
        f"end {namespace}",
        "",
    ])
    path = shard_dir / "VerifiedRoot.lean"
    write_text(path, "\n".join(lines))
    return path


def write_interval_shard(
    *,
    lo: int,
    hi: int,
    shard_name: str,
    translation_masks: list[int],
    max_heavy_leaves: int,
    approve_large_shard: bool,
) -> tuple[Path, dict]:
    if not 0 <= lo <= hi <= exact.EXPECTED_PAIR_WORDS:
        raise ValueError(
            f"rank interval [{lo}, {hi}) is outside [0, {exact.EXPECTED_PAIR_WORDS})"
        )
    if lo == hi:
        raise ValueError("empty interval shard would contain no evidence")

    rank_records: list[dict] = []
    heavy_leaf_count = 0
    for rank in range(lo, hi):
        identity = rank_is_identity_linear(rank)
        if identity:
            count = len(translation_masks)
        else:
            count = 1
        heavy_leaf_count += count
        rank_records.append({
            "rank": rank,
            "identity_linear": identity,
            "heavy_leaf_count": count,
        })

    if heavy_leaf_count > max_heavy_leaves and not approve_large_shard:
        raise ValueError(
            f"planned shard has {heavy_leaf_count} heavy leaves, above "
            f"--max-heavy-leaves={max_heavy_leaves}; shrink the interval or "
            "pass --approve-large-shard"
        )

    shard_dir = SHARDS_OUTPUT_DIR / shard_name
    clear_dir(shard_dir)
    namespace = interval_shard_namespace(shard_name)

    nonidentity_records: list[dict] = []
    translation_records: list[dict] = []
    translation_rank_roots: list[dict] = []
    rank_modules: list[dict] = []
    leaf_paths: list[Path] = []
    for record in rank_records:
        rank = int(record["rank"])
        if record["identity_linear"]:
            rank_mask_paths: list[Path] = []
            for mask in translation_masks:
                path = (
                    shard_dir / "Translation" / f"Rank{rank:09d}" /
                    f"Mask{mask:02d}.lean"
                )
                leaf_namespace = (
                    f"{namespace}.Translation.Rank{rank:09d}.Mask{mask:02d}"
                )
                translation_record = write_translation_case_leaf(
                    path=path,
                    namespace=leaf_namespace,
                    rank=rank,
                    mask=mask,
                    cert_prefix="intervalShardTranslation",
                )
                translation_records.append(translation_record)
                leaf_paths.append(path)
                rank_mask_paths.append(path)
            if len(translation_masks) == 64:
                rank_root_path = (
                    shard_dir / "Translation" / f"Rank{rank:09d}" /
                    "AllMasks.lean"
                )
                rank_root_namespace = f"{namespace}.Translation.Rank{rank:09d}"
                rank_root_record = write_translation_rank_root(
                    path=rank_root_path,
                    namespace=rank_root_namespace,
                    rank=rank,
                    mask_paths=rank_mask_paths,
                )
                translation_rank_roots.append(rank_root_record)
                rank_modules.append({
                    "rank": rank,
                    "identity_linear": True,
                    "path": generated_file_record(rank_root_path),
                    "module": lean_module_name(rank_root_path),
                    "namespace": rank_root_namespace,
                })
        else:
            path = shard_dir / "NonIdentity" / f"Rank{rank:09d}.lean"
            leaf_namespace = f"{namespace}.NonIdentity.Rank{rank:09d}"
            nonidentity_record = write_nonidentity_leaf(
                path=path,
                namespace=leaf_namespace,
                rank=rank,
                cert_prefix="intervalShardNonId",
                classifier_name="nonIdentityClassifier",
            )
            nonidentity_records.append(nonidentity_record)
            leaf_paths.append(path)
            rank_modules.append({
                "rank": rank,
                "identity_linear": False,
                "path": generated_file_record(path),
                "module": lean_module_name(path),
                "namespace": leaf_namespace,
            })

    index_path = write_interval_shard_index(
        shard_dir=shard_dir,
        shard_name=shard_name,
        lo=lo,
        hi=hi,
        nonidentity_count=len(nonidentity_records),
        identity_count=sum(1 for record in rank_records if record["identity_linear"]),
        translation_case_count=len(translation_records),
    )
    verified_root_path = None
    if len(translation_masks) == 64:
        verified_root_path = write_interval_shard_verified_root(
            shard_dir=shard_dir,
            shard_name=shard_name,
            lo=lo,
            hi=hi,
            rank_modules=rank_modules,
        )
    manifest_path = shard_dir / "manifest.json"
    readme_path = write_interval_shard_readme(
        shard_dir=shard_dir,
        leaf_paths=leaf_paths,
        index_path=index_path,
        manifest_path=manifest_path,
        lo=lo,
        hi=hi,
    )

    payload = {
        "schema_version": 1,
        "kind": "public_interval_shard",
        "complete_for_interval": len(translation_masks) == 64,
        "shard_name": shard_name,
        "start_rank": lo,
        "end_rank": hi,
        "rank_count": hi - lo,
        "heavy_leaf_count": heavy_leaf_count,
        "translation_masks": translation_masks,
        "identity_rank_count": sum(
            1 for record in rank_records if record["identity_linear"]
        ),
        "nonidentity_rank_count": len(nonidentity_records),
        "translation_case_count": len(translation_records),
        "memory_rule": {
            "safe_ram_gib": 45,
            "check_strategy": "serial_leaf_by_file_path",
            "do_not_parallel_build_leaf_tree": True,
        },
        "paths": {
            "shard_dir": str(shard_dir.relative_to(REPO_ROOT)),
            "index": generated_file_record(index_path),
            "readme": generated_file_record(readme_path),
            "verified_root": (
                generated_file_record(verified_root_path)
                if verified_root_path is not None
                else {"exists": False}
            ),
        },
        "ranks": rank_records,
        "rank_modules": rank_modules,
        "nonidentity": nonidentity_records,
        "translation_rank_roots": translation_rank_roots,
        "translation": translation_records,
    }
    write_text(manifest_path, json.dumps(payload, indent=2, sort_keys=True) + "\n")
    payload["paths"]["manifest"] = generated_file_record(manifest_path)
    write_text(manifest_path, json.dumps(payload, indent=2, sort_keys=True) + "\n")
    return index_path, payload


def preflight_payload() -> dict:
    return {
        "schema_version": 1,
        "mode": "preflight",
        "complete": False,
        "status": "new_public_interval_emitter_ready_for_smoke",
        "legacy_backend": {
            "archived": True,
            "archive_dir": "archive/legacy_oom_backend",
        },
        "design": {
            "active_namespace": "Cuboctahedron.Generated.PublicEvidence",
            "heavy_smoke_evidence_dir": "evidence/public_interval_smoke",
            "heavy_interval_shards_dir": "evidence/public_interval_shards",
            "lean_reduction_strategy": "small_local_certificate_theorems",
            "uses_packed_blobs": False,
            "uses_global_boolean_reduction": False,
        },
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--mode",
        choices=["preflight", "smoke", "interval-shard"],
        default="preflight",
        help="generation mode",
    )
    parser.add_argument(
        "--nonidentity-smoke-rank",
        type=int,
        default=1,
        help="non-identity rank used by smoke evidence",
    )
    parser.add_argument(
        "--translation-smoke-rank",
        type=int,
        default=0,
        help="identity-linear rank used by translation smoke evidence",
    )
    parser.add_argument(
        "--translation-smoke-masks",
        default="0,8",
        help=(
            "comma-separated translation masks to emit for smoke evidence; "
            "the default exercises a bad-direction case and a Farkas case"
        ),
    )
    parser.add_argument(
        "--all-translation-smoke-masks",
        action="store_true",
        help=(
            "emit all 64 translation smoke mask leaves; use with care and "
            "check leaves serially by file path"
        ),
    )
    parser.add_argument(
        "--start-rank",
        type=int,
        default=0,
        help="inclusive start rank for --mode interval-shard",
    )
    parser.add_argument(
        "--end-rank",
        type=int,
        default=2,
        help="exclusive end rank for --mode interval-shard",
    )
    parser.add_argument(
        "--shard-name",
        help="output directory name for --mode interval-shard",
    )
    parser.add_argument(
        "--translation-shard-masks",
        default="all",
        help=(
            "translation masks emitted for identity-linear ranks in an "
            "interval shard; use 'all' for complete interval evidence"
        ),
    )
    parser.add_argument(
        "--max-heavy-leaves",
        type=int,
        default=128,
        help=(
            "maximum heavy proof-carrying leaves an interval shard may emit "
            "without --approve-large-shard"
        ),
    )
    parser.add_argument(
        "--approve-large-shard",
        action="store_true",
        help="allow an interval shard above --max-heavy-leaves",
    )
    args = parser.parse_args()

    bounded_range_module = write_bounded_range_module()
    all_module = write_all_module()

    if args.mode == "preflight":
        payload = preflight_payload()
        payload["generated"] = {
            "all": generated_file_record(all_module),
            "bounded_range": generated_file_record(bounded_range_module),
        }
        write_manifest(payload)
        print("prepared public interval evidence namespace")
        print(f"manifest: {MANIFEST_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {all_module.relative_to(REPO_ROOT)}")
        return

    if args.mode == "smoke":
        try:
            translation_masks = (
                list(range(64))
                if args.all_translation_smoke_masks
                else parse_masks(args.translation_smoke_masks)
            )
            smoke_module, summary = write_smoke_module(
                nonid_rank=args.nonidentity_smoke_rank,
                translation_rank=args.translation_smoke_rank,
                translation_masks=translation_masks,
            )
        except ValueError as err:
            parser.error(str(err))
        payload = preflight_payload()
        payload.update({
            "mode": "smoke",
            "status": "smoke_evidence_emitted",
            "smoke": summary,
            "generated": {
                "all": generated_file_record(all_module),
                "bounded_range": generated_file_record(bounded_range_module),
                "smoke": generated_file_record(smoke_module),
            },
        })
        write_manifest(payload)
        print("generated public interval smoke evidence")
        print(f"nonidentity rank: {summary['nonidentity_rank']}")
        print(f"translation rank: {summary['translation_rank']}")
        print(f"translation cases: {summary['translation_case_count']}")
        print(f"manifest: {MANIFEST_PATH.relative_to(REPO_ROOT)}")
        print(f"lean: {smoke_module.relative_to(REPO_ROOT)}")
        return

    if args.mode == "interval-shard":
        try:
            shard_name = args.shard_name or shard_name_for_interval(
                args.start_rank, args.end_rank
            )
            translation_masks = parse_mask_selector(args.translation_shard_masks)
            index_path, summary = write_interval_shard(
                lo=args.start_rank,
                hi=args.end_rank,
                shard_name=shard_name,
                translation_masks=translation_masks,
                max_heavy_leaves=args.max_heavy_leaves,
                approve_large_shard=args.approve_large_shard,
            )
            bounded_range_module = write_bounded_range_module(
                lo=args.start_rank,
                hi=args.end_rank,
                root_path=(
                    REPO_ROOT / summary["paths"]["verified_root"]["path"]
                    if summary["paths"]["verified_root"].get("exists")
                    else None
                ),
                complete_for_interval=summary["complete_for_interval"],
            )
            all_module = write_all_module()
        except ValueError as err:
            parser.error(str(err))
        payload = preflight_payload()
        payload.update({
            "mode": "interval-shard",
            "status": "interval_shard_emitted",
            "interval_shard": summary,
            "generated": {
                "all": generated_file_record(all_module),
                "bounded_range": generated_file_record(bounded_range_module),
                "shard_index": generated_file_record(index_path),
                "verified_root": summary["paths"]["verified_root"],
            },
        })
        write_manifest(payload)
        print("generated public interval shard")
        print(f"shard: {summary['shard_name']}")
        print(f"ranks: [{summary['start_rank']}, {summary['end_rank']})")
        print(f"heavy leaves: {summary['heavy_leaf_count']}")
        print(f"complete for interval: {summary['complete_for_interval']}")
        print(f"manifest: {MANIFEST_PATH.relative_to(REPO_ROOT)}")
        print(f"shard manifest: {summary['paths']['manifest']['path']}")
        print(f"index: {index_path.relative_to(REPO_ROOT)}")
        return


if __name__ == "__main__":
    main()
