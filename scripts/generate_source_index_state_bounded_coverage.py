#!/usr/bin/env python3
"""Emit bounded source-index/state coverage shards.

This is Phase 6Z.6K.8I.  Phase 6Z.6K.8H proved that a source-index/state
descriptor can kill selected sample cases without putting a rank/mask member
list inside `Applies`.  This generator tests the next gate: bounded coverage
for every GoodDirection two-source survivor in a rank window.

The generated `Applies` predicates remain descriptor based.  The shard coverage
proof may still case-split concrete bounded ranks/masks; this is intentionally
measured and may be rejected if it is too expensive or too close to the old
per-case path.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from dataclasses import dataclass, field
from pathlib import Path
from typing import Any

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

import generate_exact_certificates as exact  # noqa: E402
from generate_source_index_state_nonenum_smoke import (  # noqa: E402
    Family,
    Member,
    TEMPLATE_TO_SOURCE_INDEX,
    collect_families,
    family_summary,
    source_match_lines,
    write_json,
    write_text,
)
from generate_symbolic_row_family_smoke import (  # noqa: E402
    case_header_lines_for_family,
    lean_case_name,
    rows_lines,
)
from generate_translation_row_relation_classifier import (  # noqa: E402
    BadDirectionCase,
    ClassifiedCase,
    NonIdentityRank,
    bad_direction_lines,
    find_nonidentity_witness,
    lean_bad_name,
    lean_nonidentity_name,
    nonidentity_lines as row_relation_nonidentity_lines,
)
from generate_translation_two_source_evidence import (  # noqa: E402
    support_lines,
    validate_module_namespace,
)
from profile_symbolic_row_extraction_families import (  # noqa: E402
    classify_choice as profile_classify_choice,
)


DEFAULT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourceIndexStateBoundedCoverage"
)
DEFAULT_JSON = Path(
    "scripts/generated/phase6z6k8i_source_index_state_bounded_coverage.json"
)
DEFAULT_MD = DEFAULT_JSON.with_suffix(".md")
DEFAULT_NAMESPACE = (
    "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies."
    "SourceIndexStateBoundedCoverage"
)


@dataclass(frozen=True)
class RankMask:
    rank: int
    mask: int


@dataclass
class WindowData:
    rank_start: int
    limit: int
    families: list[Family]
    counts: dict[str, int]
    identity_ranks: set[int] = field(default_factory=set)
    covered: dict[RankMask, tuple[int, Member]] = field(default_factory=dict)
    bad_masks: dict[RankMask, BadDirectionCase] = field(default_factory=dict)
    nonidentity: dict[int, NonIdentityRank] = field(default_factory=dict)


def constructor_name(index: int) -> str:
    return f"fam{index:03d}"


def family_def_name(index: int) -> str:
    return f"fam_{index:03d}"


def shard_name(index: int) -> str:
    return f"Shard{index:03d}"


def lean_rank(rank: int) -> str:
    return f"(⟨{rank}, by decide⟩ : Fin numPairWords)"


def lean_mask(mask: int) -> str:
    return f"(⟨{mask}, by decide⟩ : SignMask)"


def collect_window(*, rank_start: int, limit: int) -> WindowData:
    families, counts = collect_families(rank_start=rank_start, limit=limit)
    member_by_pair: dict[RankMask, tuple[int, Member]] = {}
    for family_index, family in enumerate(families):
        for member in family.members:
            key = RankMask(member.symbolic.case.rank, member.symbolic.case.mask)
            member_by_pair[key] = (family_index, member)

    identity_ranks: set[int] = set()
    nonidentity: dict[int, NonIdentityRank] = {}
    bad_masks: dict[RankMask, BadDirectionCase] = {}
    for rank in range(rank_start, rank_start + limit):
        word = exact.pair_word_at_rank(rank)
        if exact.total_linear(word) != exact.mat_id():
            nonidentity[rank] = find_nonidentity_witness(rank, list(word))
            continue
        identity_ranks.add(rank)
        for mask in range(64):
            result = profile_classify_choice(rank, mask)
            if result is None:
                raise RuntimeError(f"rank {rank} changed identity classification")
            status = result["status"]
            key = RankMask(rank, mask)
            if status == "not_good_direction":
                b, seq = exact.translation_vector(list(word), mask)
                impact = exact.first_bad_translation_impact(seq, b)
                bad_masks[key] = BadDirectionCase(
                    rank=rank,
                    mask=mask,
                    word=list(word),
                    seq=seq,
                    b=b,
                    impact=impact,
                    denom=exact.impact_denom(seq, b, impact),
                )
            elif status == "covered":
                if key not in member_by_pair:
                    raise RuntimeError(f"missing covered member for r{rank}/m{mask}")
            else:
                raise RuntimeError(
                    f"unsupported GoodDirection status {status!r} for r{rank}/m{mask}"
                )

    return WindowData(
        rank_start=rank_start,
        limit=limit,
        families=families,
        counts=counts,
        identity_ranks=identity_ranks,
        covered=member_by_pair,
        bad_masks=bad_masks,
        nonidentity=nonidentity,
    )


def descriptor_lines(index: int, family: Family) -> list[str]:
    name = family_def_name(index)
    template_ctor = TEMPLATE_TO_SOURCE_INDEX[family.template_id]
    first = family.members[0].symbolic
    return [
        f"/-- Source-index/state bounded coverage descriptor `{family.key}`.",
        f"Observed bounded cases: {family.count}. -/",
        *support_lines(name, first.case.first_source, first.case.second_source),
        f"private def {name}_desc : SourceIndexStateFamilyDescriptor where",
        f"  firstIndex := {family.source_indices[0]}",
        f"  secondIndex := {family.source_indices[1]}",
        f"  support := {name}_support",
        f"  template := SourceIndexTemplate.{template_ctor}",
        "",
    ]


def bounded_covered_lines(families: list[Family]) -> list[str]:
    lines = ["inductive BoundedCovered : Nat -> SignMask -> Prop"]
    for index, _family in enumerate(families):
        name = family_def_name(index)
        ctor = constructor_name(index)
        lines.append(
            f"  | {ctor} {{r : Nat}} {{mask : SignMask}} "
            f"(h : {name}_desc.Applies r mask) : BoundedCovered r mask"
        )
    lines.extend([
        "",
        "def boundedFamily : RowPropertyMembershipFamily where",
        "  Applies := BoundedCovered",
        "  covered := by",
        "    intro r mask h",
        "    cases h with",
    ])
    for index, _family in enumerate(families):
        name = family_def_name(index)
        ctor = constructor_name(index)
        lines.extend([
            f"    | {ctor} h =>",
            f"        exact {name}_desc.covered_of_applies h",
        ])
    lines.append("")
    return lines


def applies_lines(family_index: int, member: Member) -> list[str]:
    cc = member.symbolic
    name = lean_case_name(cc.index)
    fam = family_def_name(family_index)
    ctor = constructor_name(family_index)
    return [
        *case_header_lines_for_family(
            ClassifiedCase(cc.index, cc.case, cc.template_id),
            f"{name}_boundedSupport",
        ),
        *rows_lines(cc),
        *source_match_lines(family_index, member),
        f"private theorem {name}_applies :",
        f"    {fam}_desc.Applies {name}_rank.val {name}_mask := by",
        "  exact ⟨",
        f"    {name}_sourceMatches,",
        f"    by simpa [SourceIndexTemplate.Rows, {fam}_desc, {fam}_support, {name}_support] using {name}_rows",
        "  ⟩",
        "",
        f"private theorem {name}_covered :",
        f"    BoundedCovered {name}_rank.val {name}_mask :=",
        f"  BoundedCovered.{ctor} {name}_applies",
        "",
    ]


def rank_coverage_lines(data: WindowData, rank: int) -> list[str]:
    lines = [
        f"private theorem rank_{rank:09d}_coverage",
        f"    (hlt : {rank} < numPairWords) (mask : SignMask)",
        f"    (hM : totalLinearOfPairWord (unrankPairWord (⟨{rank}, hlt⟩ : Fin numPairWords)) =",
        "      (matId : Mat3 Rat))",
        f"    (hgood : GoodDirectionAtRank (⟨{rank}, hlt⟩ : Fin numPairWords) mask) :",
        f"    BoundedCovered {rank} mask := by",
    ]
    if rank in data.nonidentity:
        name = lean_nonidentity_name(rank)
        lines.extend([
            f"  exact False.elim (({name}_linear_ne_atRank hlt) hM)",
            "",
        ])
        return lines

    lines.append("  fin_cases mask")
    for mask in range(64):
        key = RankMask(rank, mask)
        if key in data.covered:
            _family_index, member = data.covered[key]
            case_name = lean_case_name(member.symbolic.index)
            lines.append(f"  · exact {case_name}_covered")
        elif key in data.bad_masks:
            bad_name = lean_bad_name(rank, mask)
            lines.append(
                f"  · exact False.elim (({bad_name}_notGood hlt) hgood)"
            )
        else:
            raise RuntimeError(f"rank {rank} mask {mask} has no coverage status")
    lines.append("")
    return lines


def shard_lines(
    *,
    namespace: str,
    shard_index: int,
    data: WindowData,
    shard_start: int,
    shard_end: int,
) -> list[str]:
    lines = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "",
        "/-!",
        "Generated bounded source-index/state coverage shard for Phase 6Z.6K.8I.",
        "",
        "The descriptor `Applies` predicates are source-index/state predicates.",
        "This shard is a bounded gate, not final global coverage.",
        "-/",
        "",
        f"namespace {namespace}.{shard_name(shard_index)}",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertyQuotient",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicFacts",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates",
        "",
        "set_option maxRecDepth 10000",
        "set_option linter.unusedSimpArgs false",
        "set_option linter.unusedTactic false",
        "set_option linter.unreachableTactic false",
        "set_option linter.unnecessarySeqFocus false",
        "",
    ]
    for index, family in enumerate(data.families):
        lines.extend(descriptor_lines(index, family))
    lines.extend(bounded_covered_lines(data.families))

    shard_ranks = range(shard_start, shard_end)
    for rank in shard_ranks:
        if rank in data.nonidentity:
            lines.extend(row_relation_nonidentity_lines(data.nonidentity[rank]))
    for rank in shard_ranks:
        if rank in data.identity_ranks:
            for mask in range(64):
                key = RankMask(rank, mask)
                if key in data.bad_masks:
                    lines.extend(bad_direction_lines(data.bad_masks[key]))
    for rank in shard_ranks:
        for mask in range(64):
            key = RankMask(rank, mask)
            if key in data.covered:
                family_index, member = data.covered[key]
                lines.extend(applies_lines(family_index, member))

    for rank in shard_ranks:
        lines.extend(rank_coverage_lines(data, rank))

    lines.extend([
        "set_option maxHeartbeats 4000000 in",
        "theorem shardCoverage :",
        f"    RowPropertyMembershipCoverageOnIdentityRange boundedFamily {shard_start} {shard_end} := by",
        "  intro r hlt mask hlo hhi hM hgood",
        "  interval_cases r",
    ])
    for rank in shard_ranks:
        lines.append(f"  · exact rank_{rank:09d}_coverage hlt mask hM hgood")
    lines.extend([
        "",
        "theorem shardGoodCasesKilled",
        "    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        f"    (hlo : {shard_start} <= r) (hhi : r < {shard_end})",
        "    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =",
        "      (matId : Mat3 Rat)) :",
        "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask :=",
        "  boundedFamily.identityRangeKills shardCoverage r hlt mask hlo hhi hM",
        "",
        "theorem shard_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}.{shard_name(shard_index)}",
        "",
    ])
    return lines


def all_lines(
    *,
    namespace: str,
    shard_count: int,
    rank_start: int,
    rank_end: int,
    shard_size: int,
) -> list[str]:
    imports = [
        f"import {namespace}.{shard_name(index)}"
        for index in range(shard_count)
    ]
    lines = [
        *imports,
        "",
        "/-!",
        "Bounded source-index/state coverage root for Phase 6Z.6K.8I.",
        "-/",
        "",
        f"namespace {namespace}.All",
        "",
        "open Cuboctahedron.Generated.Coverage",
        "",
        "set_option maxRecDepth 10000",
        "",
        "set_option maxHeartbeats 4000000 in",
        "theorem boundedGoodCasesKilled",
        "    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)",
        f"    (hlo : {rank_start} <= r) (hhi : r < {rank_end})",
        "    (hM : totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) =",
        "      (matId : Mat3 Rat)) :",
        "    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by",
        "  interval_cases r",
    ]
    for rank in range(rank_start, rank_end):
        shard_index = (rank - rank_start) // shard_size
        shard_start = rank_start + shard_index * shard_size
        shard_end = min(rank_start + (shard_index + 1) * shard_size, rank_end)
        sname = shard_name(shard_index)
        lines.append(
            f"  · exact {namespace}.{sname}.shardGoodCasesKilled "
            f"{rank} hlt mask (by decide) (by decide) hM"
        )
    lines.extend([
        "",
        "theorem boundedCoverage_builds : True := by",
        "  trivial",
        "",
        f"end {namespace}.All",
        "",
    ])
    return lines


def chunks(rank_start: int, rank_end: int, shard_size: int) -> list[tuple[int, int]]:
    return [
        (start, min(start + shard_size, rank_end))
        for start in range(rank_start, rank_end, shard_size)
    ]


def emit_modules(
    *,
    out_dir: Path,
    namespace: str,
    data: WindowData,
    shard_size: int,
) -> list[Path]:
    out_dir.mkdir(parents=True, exist_ok=True)
    rank_end = data.rank_start + data.limit
    written: list[Path] = []
    shard_ranges = chunks(data.rank_start, rank_end, shard_size)
    for index, (start, end) in enumerate(shard_ranges):
        path = out_dir / f"{shard_name(index)}.lean"
        write_text(
            path,
            "\n".join(
                shard_lines(
                    namespace=namespace,
                    shard_index=index,
                    data=data,
                    shard_start=start,
                    shard_end=end,
                )
            ),
        )
        written.append(path)
    all_path = out_dir / "All.lean"
    write_text(
        all_path,
        "\n".join(
            all_lines(
                namespace=namespace,
                shard_count=len(shard_ranges),
                rank_start=data.rank_start,
                rank_end=rank_end,
                shard_size=shard_size,
            )
        ),
    )
    written.append(all_path)
    return written


def payload(
    *,
    data: WindowData,
    shard_size: int,
    emitted: bool,
    written: list[Path],
    namespace: str,
) -> dict[str, Any]:
    rank_end = data.rank_start + data.limit
    return {
        "schema_version": 1,
        "phase": "6Z.6K.8I",
        "mode": "source_index_state_bounded_coverage",
        "trusted_as_proof": False,
        "rank_start": data.rank_start,
        "rank_end": rank_end,
        "limit": data.limit,
        "shard_size": shard_size,
        "shard_count": len(chunks(data.rank_start, rank_end, shard_size)),
        "namespace": namespace,
        "counts": data.counts,
        "family_count": len(data.families),
        "largest_family_cases": data.families[0].count if data.families else 0,
        "covered_case_count": len(data.covered),
        "not_good_case_count": len(data.bad_masks),
        "identity_rank_count": len(data.identity_ranks),
        "nonidentity_rank_count": len(data.nonidentity),
        "emitted": emitted,
        "written": [str(path) for path in written],
        "decision": {
            "status": "bounded-coverage-emitted" if emitted else "dry-run-only",
            "notes": [
                "descriptor Applies predicates are source-index/state based",
                "coverage proof is bounded and may still be rejected if it behaves like per-case replay",
                "this is not final global coverage",
            ],
        },
        "top_families": [family_summary(family) for family in data.families[:12]],
    }


def markdown(report: dict[str, Any]) -> str:
    counts = report["counts"]
    lines = [
        "# Phase 6Z.6K.8I Source-Index/State Bounded Coverage",
        "",
        "This diagnostic is not trusted as proof. It emits bounded Lean coverage",
        "shards for the source-index/state descriptor surface.",
        "",
        f"- Status: `{report['decision']['status']}`",
        f"- Rank window: `[{report['rank_start']}, {report['rank_end']})`",
        f"- Shard size: `{report['shard_size']}`",
        f"- Shards: `{report['shard_count']}`",
        f"- Pair words scanned: `{counts['pair_words_scanned']}`",
        f"- Identity words: `{counts['identity_words']}`",
        f"- GoodDirection survivors: `{counts['good_direction_survivors']}`",
        f"- Covered two-source cases: `{counts['covered_cases']}`",
        f"- Source-index/state families: `{report['family_count']}`",
        f"- Covered case proofs emitted: `{report['covered_case_count']}`",
        f"- Not-GoodDirection contradictions emitted: `{report['not_good_case_count']}`",
        "",
        "## Top Families",
        "",
        "| Cases | Template | Source indices | Samples |",
        "| ---: | --- | --- | --- |",
    ]
    for family in report["top_families"]:
        samples = ", ".join(
            f"r{sample['rank']}/m{sample['mask']}"
            for sample in family["sample_members"][:5]
        )
        lines.append(
            f"| {family['cases']} | `{family['template_id']}` | "
            f"`{family['source_indices']}` | {samples} |"
        )
    lines.append("")
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank-start", type=int, default=0)
    parser.add_argument("--limit", type=int, default=1000)
    parser.add_argument("--shard-size", type=int, default=25)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_DIR)
    parser.add_argument("--json", type=Path, default=DEFAULT_JSON)
    parser.add_argument("--md", type=Path, default=DEFAULT_MD)
    parser.add_argument("--namespace", default=DEFAULT_NAMESPACE)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--emit", action="store_true")
    args = parser.parse_args()

    if args.limit <= 0:
        raise SystemExit("--limit must be positive")
    if args.shard_size <= 0:
        raise SystemExit("--shard-size must be positive")
    validate_module_namespace(args.namespace)

    data = collect_window(rank_start=args.rank_start, limit=args.limit)
    emitted = bool(args.emit and not args.dry_run)
    written: list[Path] = []
    if emitted:
        written = emit_modules(
            out_dir=args.out_dir,
            namespace=args.namespace,
            data=data,
            shard_size=args.shard_size,
        )
    report = payload(
        data=data,
        shard_size=args.shard_size,
        emitted=emitted,
        written=written,
        namespace=args.namespace,
    )
    write_json(args.json, report)
    write_text(args.md, markdown(report))
    print(f"wrote {args.json}")
    print(f"wrote {args.md}")
    for path in written:
        print(f"wrote {path}")


if __name__ == "__main__":
    main()
