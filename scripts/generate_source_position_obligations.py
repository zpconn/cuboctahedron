#!/usr/bin/env python3
"""Emit Lean smoke theorems for profiled source-position obligations.

This generator consumes the diagnostic output from
`profile_source_index_state_language.py`.  The profile is not trusted as proof;
the generated Lean file is only a compact smoke module proving that each
profiled source-position obligation reduces to the reusable lookup lemmas in
`SourcePositionLanguage`.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path
from typing import Any


DEFAULT_PROFILE = Path(
    "scripts/generated/phase6z6k8ap16du9fc_source_language_profile.json"
)
DEFAULT_OUTPUT = Path(
    "Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/"
    "SourcePositionObligations.lean"
)


def face_term(face: str) -> str:
    return f"Face.{face}"


def list_literal(faces: list[str], indent: str) -> str:
    terms = [face_term(face) for face in faces]
    if len(terms) <= 6:
        return "[" + ", ".join(terms) + "]"
    lines = ["[" + ", ".join(terms[:6]) + ","]
    rest = terms[6:]
    while len(rest) > 6:
        lines.append(indent + "  " + ", ".join(rest[:6]) + ",")
        rest = rest[6:]
    lines.append(indent + "  " + ", ".join(rest) + "]")
    return "\n".join(lines)


def safe_name(text: str) -> str:
    text = text.replace(",", "_")
    text = text.replace(":", "_")
    text = text.replace("=", "_")
    text = text.replace("-", "_")
    text = text.replace("__", "_")
    return re.sub(r"[^A-Za-z0-9_]", "_", text).strip("_")


def emit_static(language: dict[str, Any]) -> list[str]:
    kind = language["kind"]
    index = int(language["index"])
    if kind == "xpStart":
        expected = int(language["expectedIndex"])
        return [
            f"theorem obligation_xpStart_{expected}",
            "    (seq : Step14 -> Face) :",
            f"    listGet? (translationConstraintSources seq) {index} =",
            f"      some (TranslationConstraintSource.xpStart ⟨{expected}, by decide⟩) := by",
            f"  simpa using lookup_xpStart seq ⟨{expected}, by decide⟩",
            "",
        ]
    if kind == "ordering":
        step = int(language["step"])
        return [
            f"theorem obligation_ordering_{step}",
            "    (seq : Step14 -> Face) :",
            f"    listGet? (translationConstraintSources seq) {index} =",
            f"      some (TranslationConstraintSource.ordering ⟨{step}, by decide⟩) := by",
            f"  simpa using lookup_ordering seq ⟨{step}, by decide⟩",
            "",
        ]
    raise ValueError(f"unsupported static source kind {kind!r}")


def emit_dynamic(language: dict[str, Any]) -> list[str]:
    impact = int(language["impact"])
    face = str(language["face"])
    slot = int(language["slot"])
    index = int(language["index"])
    excluded_faces = [str(face) for face in language["excludedFaceSet"]]
    excluded = list_literal(excluded_faces, "        ")
    name = f"obligation_{safe_name(language['obligation'])}"
    return [
        f"theorem {name}",
        "    (seq : Step14 -> Face)",
        "    (himpact :",
        f"      impactFace seq ⟨{impact}, by decide⟩ ∈",
        f"        {excluded}) :",
        f"    listGet? (translationConstraintSources seq) {index} =",
        f"      some (TranslationConstraintSource.interior ⟨{impact}, by decide⟩ {face_term(face)}) := by",
        "  have hslot :",
        f"      impactFace seq ⟨{impact}, by decide⟩ ∈",
        f"        interiorExcludedFacesForSlot {face_term(face)} {slot} := by",
        "    simpa [interiorExcludedFacesForSlot, interiorSlot?, faceIndex,",
        "      allFacesList] using himpact",
        "  simpa [interiorSourceIndex] using",
        f"    lookup_interior_of_excluded_slot seq ⟨{impact}, by decide⟩ {face_term(face)} {slot}",
        "      (by decide) hslot",
        "",
    ]


def emit(profile: dict[str, Any]) -> str:
    rows = profile["top_obligations"]
    expected_count = int(profile["source_language_obligation_count"])
    if len(rows) != expected_count:
        raise ValueError(
            "profile does not contain all obligations: "
            f"got {len(rows)}, expected {expected_count}; rerun with a larger --sample-limit"
        )

    seen: set[str] = set()
    body: list[str] = [
        "import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "",
        "/-!",
        "Generated Lean smoke for all source-position obligations profiled in",
        "Phase 6Z.6K.8V / AP16DU9FC.",
        "",
        "The profile is diagnostic only. This module is the Lean-checked part:",
        "each theorem proves that a profiled source-list position follows from",
        "the generic `SourcePositionLanguage` lookup lemmas, without bounded",
        "rank/mask replay.",
        "-/",
        "",
        "namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations",
        "",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState",
        "open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionLanguage",
        "",
    ]

    for row in rows:
        language = row["sample"][0]["language"]
        name = (
            f"obligation_xpStart_{language['expectedIndex']}"
            if language["kind"] == "xpStart"
            else f"obligation_ordering_{language['step']}"
            if language["kind"] == "ordering"
            else f"obligation_{safe_name(language['obligation'])}"
        )
        if name in seen:
            raise ValueError(f"duplicate theorem name {name}")
        seen.add(name)
        if language["dynamic"]:
            body.extend(emit_dynamic(language))
        else:
            body.extend(emit_static(language))

    body.extend(
        [
            "theorem sourcePositionObligations_builds : True := by",
            "  trivial",
            "",
            "end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourcePositionObligations",
            "",
        ]
    )
    return "\n".join(body)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    profile = json.loads(args.profile.read_text())
    text = emit(profile)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(text)
    print(
        json.dumps(
            {
                "profile": str(args.profile),
                "output": str(args.output),
                "obligations": profile["source_language_obligation_count"],
                "static": profile["static_obligation_count"],
                "dynamic": profile["dynamic_obligation_count"],
            },
            indent=2,
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
