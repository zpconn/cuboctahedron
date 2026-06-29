#!/usr/bin/env python3
"""Emit the full DU.9BW cube chain with traced impact-normal Data.

DU.9CH proved that replacing direct generated-normal proofs in the shared Data
module with `ImpactNormalWalshVectorTrace` is faster for the one-cube smoke.
This DU.9CI emitter scales the same Data style to the full bounded DU.9BW cube
chain for rank 6000745.  It is still telemetry, not final generated coverage.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from emit_ap16du9bs_trace_cert_one_cube_smoke import (  # noqa: E402
    BASE_DIR,
    BASE_MODULE,
    DEFAULT_PROFILE,
    DEFAULT_RANK,
    DEFAULT_TRACE_MODULE,
)
from emit_ap16du9bw_trace_cert_dotdata_chain_smoke import (  # noqa: E402
    build_cube_module,
    build_root_module,
)
from emit_ap16du9ch_trace_cert_normaltrace_one_cube_smoke import (  # noqa: E402
    build_data_module,
)


BASE_NAME = "WeightedDenomCubeRank6000745TraceCertNormalTraceDataChain"
DEFAULT_REPORT = Path(
    "scripts/generated/phase6z6k8ap16du9ci_trace_cert_normaltrace_chain_smoke.json"
)


def module_name(suffix: str) -> str:
    return f"{BASE_MODULE}.{BASE_NAME}{suffix}Smoke"


def lean_path(suffix: str) -> Path:
    return BASE_DIR / f"{BASE_NAME}{suffix}Smoke.lean"


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rank", type=int, default=DEFAULT_RANK)
    parser.add_argument("--profile", type=Path, default=DEFAULT_PROFILE)
    parser.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    parser.add_argument("--trace-module", default=DEFAULT_TRACE_MODULE)
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    profile = json.loads(args.profile.read_text(encoding="utf-8"))
    if profile["rank"] != args.rank:
        raise SystemExit(f"unexpected profile rank {profile['rank']}")
    cubes = list(profile["cubes"])

    data_suffix = "Data"
    data_module = module_name(data_suffix)
    lean_path(data_suffix).write_text(
        build_data_module(
            rank=args.rank,
            trace_module=args.trace_module,
            namespace=data_module,
        ),
        encoding="utf-8",
    )

    previous_module = data_module
    cube_modules: list[str] = []
    for index, cube in enumerate(cubes):
        suffix = f"Cube{index:02d}"
        cube_module = module_name(suffix)
        lean_path(suffix).write_text(
            build_cube_module(
                cube=cube,
                index=index,
                import_module=previous_module,
                data_module=data_module,
                trace_module=args.trace_module,
                namespace=cube_module,
            ),
            encoding="utf-8",
        )
        cube_modules.append(cube_module)
        previous_module = cube_module

    root_module = module_name("")
    lean_path("").write_text(
        build_root_module(import_module=previous_module, namespace=root_module),
        encoding="utf-8",
    )

    payload = {
        "phase": "Phase 6Z.6K.8AP.16DU.9CI",
        "trusted_as_proof": False,
        "trusted_as_final_generated_coverage": False,
        "rank": args.rank,
        "cube_count": len(cubes),
        "trace_module": args.trace_module,
        "data_module": data_module,
        "cube_modules": cube_modules,
        "root_module": root_module,
        "root_path": str(lean_path("")),
    }
    args.report.parent.mkdir(parents=True, exist_ok=True)
    args.report.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    args.report.with_suffix(".md").write_text(
        "\n".join([
            "# Phase 6Z.6K.8AP.16DU.9CI Normal-Trace Data Chain Smoke",
            "",
            f"- rank: `{args.rank}`",
            f"- cube count: `{len(cubes)}`",
            f"- data module: `{data_module}`",
            f"- root module: `{root_module}`",
            f"- root path: `{lean_path('')}`",
            "",
        ]),
        encoding="utf-8",
    )
    print(f"wrote {lean_path('')} via traced-normal Data and {len(cubes)} cube modules")


if __name__ == "__main__":
    main()
