#!/usr/bin/env python3
"""Memory-capped Lean smoke test for the largest generated fallback chunk.

This is a guardrail for the generated Lean fallback: before running a full
`lake build`, elaborate the largest generated chunk wrapper by itself with one
Lean thread and a hard address-space limit. A passing smoke test does not prove
the whole project, but it catches the oversized-chunk failure mode that can
exhaust the machine during Lake's parallel build.
"""

from __future__ import annotations

import argparse
import resource
import subprocess
import sys
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
NONIDENTITY_BLOB_DIR = REPO_ROOT / "certs" / "nonidentity_residual"
TRANSLATION_BLOB_DIR = REPO_ROOT / "certs" / "translation_farkas"
NONIDENTITY_LEAN_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Residual"
)
TRANSLATION_LEAN_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Farkas"
)
NONIDENTITY_COVERAGE_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "NonIdentity" / "Coverage"
)
TRANSLATION_COVERAGE_DIR = (
    REPO_ROOT / "Cuboctahedron" / "Generated" / "Translation" / "Coverage"
)


def relative(path: Path) -> str:
    return str(path.relative_to(REPO_ROOT))


def chunk_priority_size(blob_path: Path | None, lean_path: Path) -> int:
    lean_size = lean_path.stat().st_size
    if blob_path is None:
        return lean_size
    if lean_size > 8192:
        try:
            if "def chunkBytes : List Nat" in lean_path.read_text(
                encoding="utf-8", errors="ignore"
            ):
                return lean_size
        except OSError:
            return lean_size
    return blob_path.stat().st_size


def public_coverage_candidates() -> list[tuple[int, str, Path | None, Path]]:
    candidates: list[tuple[int, str, Path | None, Path]] = []
    for lean_path in NONIDENTITY_COVERAGE_DIR.glob("*.lean"):
        candidates.append((lean_path.stat().st_size, "nonidentity-coverage", None, lean_path))
    for lean_path in TRANSLATION_COVERAGE_DIR.glob("*.lean"):
        candidates.append((lean_path.stat().st_size, "translation-coverage", None, lean_path))
    return candidates


def generated_chunk_candidates(
    public_coverage_only: bool = False,
) -> list[tuple[int, str, Path | None, Path]]:
    if public_coverage_only:
        return public_coverage_candidates()
    candidates: list[tuple[int, str, Path | None, Path]] = []
    for blob_path in NONIDENTITY_BLOB_DIR.glob("Chunk*.b64"):
        lean_path = NONIDENTITY_LEAN_DIR / f"{blob_path.stem}.lean"
        if lean_path.exists():
            candidates.append(
                (chunk_priority_size(blob_path, lean_path), "nonidentity", blob_path, lean_path)
            )
    for blob_path in TRANSLATION_BLOB_DIR.glob("Chunk*.b64"):
        lean_path = TRANSLATION_LEAN_DIR / f"{blob_path.stem}.lean"
        if lean_path.exists():
            candidates.append(
                (chunk_priority_size(blob_path, lean_path), "translation", blob_path, lean_path)
            )
    if not candidates:
        for lean_path in NONIDENTITY_LEAN_DIR.glob("Chunk*.lean"):
            candidates.append((lean_path.stat().st_size, "nonidentity", None, lean_path))
        for lean_path in TRANSLATION_LEAN_DIR.glob("Chunk*.lean"):
            candidates.append((lean_path.stat().st_size, "translation", None, lean_path))
    candidates.extend(public_coverage_candidates())
    return candidates


def set_memory_limit(limit_bytes: int) -> None:
    resource.setrlimit(resource.RLIMIT_AS, (limit_bytes, limit_bytes))


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--memory-limit-gib",
        type=float,
        default=8.0,
        help="address-space limit for the Lean process",
    )
    parser.add_argument(
        "--timeout-seconds",
        type=int,
        default=900,
        help="wall-clock timeout for the single-chunk Lean smoke test",
    )
    parser.add_argument(
        "--public-coverage-only",
        action="store_true",
        help="smoke only the public generated coverage hierarchy modules",
    )
    args = parser.parse_args()
    if args.memory_limit_gib <= 0:
        parser.error("--memory-limit-gib must be positive")
    if args.timeout_seconds <= 0:
        parser.error("--timeout-seconds must be positive")

    candidates = generated_chunk_candidates(
        public_coverage_only=args.public_coverage_only
    )
    if not candidates:
        raise SystemExit("no generated chunk wrappers found")
    size, kind, blob_path, lean_path = max(candidates, key=lambda item: item[0])
    if not lean_path.exists():
        if blob_path is None:
            raise SystemExit("missing Lean wrapper")
        raise SystemExit(f"missing Lean wrapper for {relative(blob_path)}")

    limit_bytes = int(args.memory_limit_gib * 1024 ** 3)
    command = ["lake", "env", "lean", "-j1", str(lean_path.relative_to(REPO_ROOT))]
    print("largest generated chunk smoke test")
    print(f"kind: {kind}")
    if blob_path is not None:
        print(f"staging blob: {relative(blob_path)}")
        print(f"staging blob bytes: {blob_path.stat().st_size}")
    print(f"lean: {relative(lean_path)}")
    print(f"lean bytes: {lean_path.stat().st_size}")
    print(f"selection bytes: {size}")
    print(f"memory limit: {args.memory_limit_gib:g} GiB")
    sys.stdout.flush()

    try:
        completed = subprocess.run(
            command,
            cwd=REPO_ROOT,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=args.timeout_seconds,
            preexec_fn=lambda: set_memory_limit(limit_bytes),
        )
    except subprocess.TimeoutExpired as exc:
        print(f"timed out after {args.timeout_seconds} seconds")
        if exc.stdout:
            print(exc.stdout)
        if exc.stderr:
            print(exc.stderr, file=sys.stderr)
        return 124

    if completed.stdout:
        print(completed.stdout)
    if completed.stderr:
        print(completed.stderr, file=sys.stderr)
    usage = resource.getrusage(resource.RUSAGE_CHILDREN)
    print(f"max rss: {usage.ru_maxrss} KiB")
    if completed.returncode != 0:
        print(f"smoke test failed with exit code {completed.returncode}")
        return completed.returncode
    print("smoke test passed")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
