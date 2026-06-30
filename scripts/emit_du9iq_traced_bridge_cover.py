#!/usr/bin/env python3
"""Emit a theorem-valued DU9IQ traced-bridge weighted-cover root.

The direct-bridge leaves prove `weightedDenom_nonpos` for individual weighted
denominator cubes.  This script emits a shallow cover module that packages a
bounded list of those leaves into a `WeightedDenomCubeCover`.

The generated root intentionally performs no trace arithmetic.  It imports the
leaf theorem surfaces, proves only nonnegative/positive weight boilerplate and
the finite cover-completeness split over the selected cubes.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


SUPPORT_DIR = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies"
)
NS = "Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies"


def parse_range(text: str) -> list[int]:
    result: list[int] = []
    for part in text.split(","):
        part = part.strip()
        if not part:
            continue
        if "-" in part:
            lo_s, hi_s = part.split("-", 1)
            lo = int(lo_s)
            hi = int(hi_s)
            if hi < lo:
                raise SystemExit(f"bad descending range: {part}")
            result.extend(range(lo, hi + 1))
        else:
            result.append(int(part))
    seen: set[int] = set()
    deduped: list[int] = []
    for index in result:
        if index not in seen:
            seen.add(index)
            deduped.append(index)
    return deduped


def module_stem(index: int) -> str:
    return f"WeightedDenomCubeDU9IQDirectBridgeGeneratedIdx{index:02d}Smoke"


def leaf_path(index: int) -> Path:
    return SUPPORT_DIR / f"{module_stem(index)}.lean"


def parse_leaf(index: int) -> dict[str, str]:
    path = leaf_path(index)
    if not path.exists():
        raise SystemExit(f"missing direct-bridge leaf: {path}")
    text = path.read_text()
    cube_match = re.search(r"^def (cube\w+) : MaskSubcube where", text, re.M)
    weights_match = re.search(
        r"^def (weights\w*) : InternalImpactWeights where", text, re.M
    )
    if cube_match is None:
        raise SystemExit(f"could not find cube definition in {path}")
    if weights_match is None:
        raise SystemExit(f"could not find weights definition in {path}")
    return {
        "index": f"{index:02d}",
        "module": module_stem(index),
        "cube": cube_match.group(1),
        "weights": weights_match.group(1),
        "path": str(path),
    }


def nested_conjunction(items: list[str]) -> str:
    if not items:
        return "True"
    lines: list[str] = []
    for i, item in enumerate(items):
        indent = "  " * i
        if i == 0:
            lines.append(f"{item} ∧")
        elif i == len(items) - 1:
            lines.append(f"{indent}{item}")
        else:
            lines.append(f"{indent}{item} ∧")
    return "\n".join(lines)


def emit(args: argparse.Namespace) -> dict[str, object]:
    indices = parse_range(args.indices)
    if not indices:
        raise SystemExit("no indices selected")
    leaves = [parse_leaf(index) for index in indices]

    stem = args.stem
    module_path = SUPPORT_DIR / f"{stem}.lean"
    report_path = Path(args.report)
    report_path.parent.mkdir(parents=True, exist_ok=True)

    imports = [
        f"import {NS}.{leaf['module']}"
        for leaf in leaves
    ]
    lines: list[str] = []
    lines.extend(imports)
    lines.extend(
        [
            "",
            "/-!",
            f"DU9IQ traced direct bridge weighted-cover root `{stem}`.",
            "",
            "This generated module packages checked direct-bridge nonpositivity",
            "theorems into a theorem-valued `WeightedDenomCubeCover`.",
            "-/",
            "",
            f"namespace {NS}",
            f"namespace {stem}",
            "",
            "open PositiveSurvivorClassifier",
            "open PositiveSurvivorClassifier.ImpactSubcube",
            "open DenominatorCube",
            "",
            "set_option maxHeartbeats 0",
            "",
            f"def rank{args.rank} : Nat := {args.rank}",
            "",
        ]
    )

    for leaf in leaves:
        idx = leaf["index"]
        mod = leaf["module"]
        lines.extend(
            [
                f"abbrev cube{idx} : MaskSubcube :=",
                f"  {mod}.{leaf['cube']}",
                "",
                f"abbrev weights{idx} : InternalImpactWeights :=",
                f"  {mod}.{leaf['weights']}",
                "",
            ]
        )

    lines.append("inductive BatchFamily where")
    for leaf in leaves:
        lines.append(f"  | idx{leaf['index']}")
    lines.extend(["deriving DecidableEq", ""])

    lines.append("def Member : BatchFamily -> SignMask -> Prop")
    for leaf in leaves:
        idx = leaf["index"]
        lines.append(f"  | BatchFamily.idx{idx}, mask => cube{idx}.Member mask")
    lines.append("")

    good_items = [f"¬ cube{leaf['index']}.Member mask" for leaf in leaves]
    lines.extend(
        [
            "def OutsideBatchGoodMaskMember (mask : SignMask) : Prop :=",
            "  " + nested_conjunction(good_items).replace("\n", "\n  "),
            "",
        ]
    )

    for leaf in leaves:
        idx = leaf["index"]
        mod = leaf["module"]
        weights_name = leaf["weights"]
        lines.extend(
            [
                f"private theorem weights{idx}_nonnegative : weights{idx}.Nonnegative := by",
                f"  norm_num [weights{idx}, {mod}.{weights_name},",
                "    InternalImpactWeights.Nonnegative]",
                "",
                f"private theorem weights{idx}_positive : weights{idx}.PositiveSome := by",
                f"  norm_num [weights{idx}, {mod}.{weights_name},",
                "    InternalImpactWeights.PositiveSome]",
                "",
            ]
        )

    lines.extend(
        [
            "private def obstruction : (family : BatchFamily) ->",
            f"    WeightedDenomCubeObstruction rank{args.rank} (Member family)",
        ]
    )
    for leaf in leaves:
        idx = leaf["index"]
        mod = leaf["module"]
        branch = "  |" if leaf == leaves[0] else "  |"
        lines.extend(
            [
                f"{branch} BatchFamily.idx{idx} =>",
                "      WeightedDenomCubeObstruction.ofNonnegative",
                f"        weights{idx} weights{idx}_nonnegative weights{idx}_positive",
                "        (by",
                "          intro mask hlt hmember",
                "          exact",
                f"            {mod}.weightedDenom_nonpos",
                "              hlt hmember)",
            ]
        )
    lines.append("")

    lines.extend(
        [
            "def weightedBatchCover :",
            f"    WeightedDenomCubeCover rank{args.rank} OutsideBatchGoodMaskMember where",
            "  Family := BatchFamily",
            "  Member := Member",
            "  obstruction := obstruction",
            "  complete := by",
            "    intro mask hnot",
        ]
    )
    for leaf in leaves:
        idx = leaf["index"]
        lines.extend(
            [
                f"    by_cases h{idx} : cube{idx}.Member mask",
                f"    · exact ⟨BatchFamily.idx{idx}, h{idx}⟩",
            ]
        )
    tuple_args = ", ".join(f"h{leaf['index']}" for leaf in leaves)
    lines.extend(
        [
            f"    exact False.elim (hnot ⟨{tuple_args}⟩)",
            "",
            "theorem goodDirection_outside_weighted_batch",
            f"    {{mask : SignMask}} (hlt : rank{args.rank} < numPairWords)",
            f"    (hgood : GoodDirectionAtRank (⟨rank{args.rank}, hlt⟩ : Fin numPairWords) mask) :",
            "    OutsideBatchGoodMaskMember mask :=",
            "  weightedBatchCover.goodMaskMember_of_goodDirection hlt hgood",
            "",
            f"theorem {stem[0].lower() + stem[1:]}_builds : True := by",
            "  trivial",
            "",
            f"end {stem}",
            f"end {NS}",
            "",
        ]
    )

    module_path.write_text("\n".join(lines))
    report = {
        "rank": args.rank,
        "stem": stem,
        "module": f"{NS}.{stem}",
        "path": str(module_path),
        "indices": indices,
        "leaf_count": len(leaves),
        "leaves": leaves,
    }
    report_path.write_text(json.dumps(report, indent=2, sort_keys=True) + "\n")
    return report


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--rank", type=int, required=True)
    parser.add_argument("--indices", required=True, help="comma/range list, e.g. 0-13")
    parser.add_argument("--stem", required=True)
    parser.add_argument("--report", required=True)
    args = parser.parse_args()
    report = emit(args)
    print(json.dumps(report, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
