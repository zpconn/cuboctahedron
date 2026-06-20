#!/usr/bin/env python3
"""Check whether Phase 9 may create concrete Step 15 theorem aliases.

This script is intentionally conservative.  Phase 9 must not wire the
`*_of_coverage` theorems to a sample, pilot, or conditional generated coverage
value.  It may proceed only once the public generated coverage hierarchy is
complete and `Cuboctahedron.Generated.AllGenerated` exports a concrete
`exhaustiveGeneratedCoverage` definition.
"""

from __future__ import annotations

import json
import re
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
PUBLIC_COVERAGE_JSON = (
    REPO_ROOT / "scripts" / "generated" / "public_coverage_hierarchy.json"
)
ALL_GENERATED = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "AllGenerated.lean"
)


def fail(reasons: list[str]) -> int:
    print("Phase 9 is not ready.")
    for reason in reasons:
        print(f"- {reason}")
    return 1


def exported_exhaustive_generated_coverage(text: str) -> bool:
    pattern = re.compile(
        r"(?m)^(?:noncomputable\s+)?def\s+exhaustiveGeneratedCoverage\s*:"
    )
    return bool(pattern.search(text))


def main() -> int:
    reasons: list[str] = []
    if not PUBLIC_COVERAGE_JSON.exists():
        reasons.append(
            f"missing {PUBLIC_COVERAGE_JSON.relative_to(REPO_ROOT)}"
        )
        return fail(reasons)

    payload = json.loads(PUBLIC_COVERAGE_JSON.read_text(encoding="utf-8"))
    if payload.get("mode") != "public-coverage-hierarchy":
        reasons.append(
            "public coverage manifest has unexpected mode "
            f"{payload.get('mode')!r}"
        )
    if payload.get("complete") is not True:
        reasons.append(
            "public coverage hierarchy is not complete "
            f"(status={payload.get('status')!r})"
        )

    hierarchy = payload.get("hierarchy", {})
    if hierarchy.get("has_interval_shards") is not True:
        nonid_chunks = len(hierarchy.get("nonidentity_chunks", []))
        translation_chunks = len(hierarchy.get("translation_chunks", []))
        reasons.append(
            "missing generated interval shard coverage "
            f"(nonidentity_chunks={nonid_chunks}, "
            f"translation_chunks={translation_chunks})"
        )

    if not ALL_GENERATED.exists():
        reasons.append(f"missing {ALL_GENERATED.relative_to(REPO_ROOT)}")
    else:
        all_generated_text = ALL_GENERATED.read_text(encoding="utf-8")
        if not exported_exhaustive_generated_coverage(all_generated_text):
            reasons.append(
                "Cuboctahedron.Generated.AllGenerated does not export "
                "`def exhaustiveGeneratedCoverage : ExhaustiveGeneratedCoverage`"
            )

    if reasons:
        return fail(reasons)

    print("Phase 9 is ready.")
    print("- public coverage hierarchy is complete")
    print("- interval shard coverage is present")
    print("- Generated.exhaustiveGeneratedCoverage is exported")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
