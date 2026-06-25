#!/usr/bin/env python3
"""Run Phase 6Z.6I arithmetic microbenchmarks.

This script is deliberately diagnostic.  It emits small Lean benchmark modules,
checks them with `lake env lean`, and records wall-clock/RSS data.  The generated
Lean files are not production proof evidence.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import time
from dataclasses import dataclass
from pathlib import Path
from statistics import geometric_mean


REPO_ROOT = Path(__file__).resolve().parents[1]
BENCH_DIR = (
    REPO_ROOT
    / "Cuboctahedron"
    / "Generated"
    / "Benchmarks"
    / "Phase6Z6I"
)
REPORT_JSON = REPO_ROOT / "scripts" / "generated" / "phase6z6i_arithmetic_benchmark.json"
REPORT_MD = REPORT_JSON.with_suffix(".md")


RAT_BASELINE = r'''import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Phase 6Z.6I rational baseline benchmark.

This file mirrors one representative generated semantic row-family proof.  It
uses the current rational definitions and `norm_num`-style generated checks.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option maxHeartbeats 1200000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

def benchSupport : TwoSourceFarkasSupport where
  first := TranslationConstraintSource.interior ⟨1, by decide⟩ Face.tmmm
  second := TranslationConstraintSource.xpStart ⟨0, by decide⟩

def benchRank : Fin numPairWords := ⟨1270032, by decide⟩
def benchMask : SignMask := ⟨24, by decide⟩
def benchWord : PairWord := ⟨#[PairId.x, PairId.z, PairId.y, PairId.y, PairId.dm11, PairId.dm11, PairId.d1m1, PairId.d11m, PairId.d11m, PairId.d111, PairId.d111, PairId.d1m1, PairId.z], by decide⟩

def benchSeq : Step14 -> Face
  | ⟨0, _⟩ => Face.xp
  | ⟨1, _⟩ => Face.xm
  | ⟨2, _⟩ => Face.zm
  | ⟨3, _⟩ => Face.ym
  | ⟨4, _⟩ => Face.yp
  | ⟨5, _⟩ => Face.tpmm
  | ⟨6, _⟩ => Face.tmpp
  | ⟨7, _⟩ => Face.tpmp
  | ⟨8, _⟩ => Face.tppm
  | ⟨9, _⟩ => Face.tmmp
  | ⟨10, _⟩ => Face.tmmm
  | ⟨11, _⟩ => Face.tppp
  | ⟨12, _⟩ => Face.tmpm
  | ⟨13, _⟩ => Face.zp

def benchB : Vec3 Rat := { x := (-116/9), y := (-116/9), z := (-20/9) }
def benchFirstLine : StrictLin2 := { a := -1, b := -1, c := (-39/29) }
def benchSecondLine : StrictLin2 := { a := 1, b := 1, c := 1 }

theorem benchRankWord :
    rankPairWord? benchWord = some benchRank := by
  decide

theorem benchUnrank :
    unrankPairWord benchRank = benchWord := by
  exact (rankPairWord?_eq_some_iff_unrank benchWord benchRank).1
    benchRankWord |>.symm

theorem benchSeqChoice :
    translationChoiceSeq benchWord benchMask = benchSeq := by
  funext i
  fin_cases i <;> rfl

theorem benchSeqAtRank :
    translationSeqAtRankMask benchRank benchMask = benchSeq := by
  rw [translationSeqAtRankMask, benchUnrank]
  exact benchSeqChoice

theorem benchBAtRank :
    translationBAtRankMask benchRank benchMask = benchB := by
  rw [translationBAtRankMask, benchSeqAtRank]
  apply Vec3.ext <;>
    norm_num [benchB, benchSeq,
      totalAff, totalOrder, composeFaceList, affCompose, faceReflectionQ,
      reflM, reflD, normalQ, offsetQ, matSub, matId, affId, scalarMat, outer,
      dot, matMul, matVec, vecAdd, scalarMul
    ]

theorem benchFirstLine_eq :
    benchSupport.firstLine benchSeq benchB = benchFirstLine := by
  norm_num [benchFirstLine, benchSupport, benchSeq, benchB,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

theorem benchSecondLine_eq :
    benchSupport.secondLine benchSeq benchB = benchSecondLine := by
  norm_num [benchSecondLine, benchSupport, benchSeq, benchB,
      TwoSourceFarkasSupport.firstLine, TwoSourceFarkasSupport.secondLine,
      translationConstraintSourceLine, xpStartConstraintAt, orderingConstraint,
      impactInteriorConstraint, nextImpact, impactTimeLin,
      translationLinePointLin, linDotVec3, Lin2.ltConstraint, Lin2.add,
      Lin2.scale, Lin2.constOnly, Lin2.y, Lin2.z, impactDenom,
      impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ, copiedOffsetQ,
      preImpactCopyAff, pathPrefixAff, pathPrefixAffNat, impactFace,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      affCompose, scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul,
      lastImpact
    ]

theorem benchShape :
    EqEqPosVarFirst benchSupport benchRank.val benchMask := by
  intro hlt
  have hrank : (⟨benchRank.val, hlt⟩ : Fin numPairWords) = benchRank := by
    ext
    rfl
  have hseq :
      translationSeqAtRankMask ⟨benchRank.val, hlt⟩ benchMask = benchSeq := by
    simpa [hrank] using benchSeqAtRank
  have hb :
      translationBAtRankMask ⟨benchRank.val, hlt⟩ benchMask = benchB := by
    simpa [hrank] using benchBAtRank
  have hfirst :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt benchSupport benchRank.val hlt
          benchMask = benchFirstLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.firstLineAt, hseq, hb, benchFirstLine_eq]
  have hsecond :
      Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt benchSupport benchRank.val hlt
          benchMask = benchSecondLine := by
    simp [Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.secondLineAt, hseq, hb, benchSecondLine_eq]
  have hsource :
      SourceChecks benchSupport benchRank.val hlt benchMask := by
    simp [SourceChecks, hseq, benchSupport, checkTranslationConstraintSource,
      benchSeq, impactFace]
  have hfirstRow :
      EqEqPosRow (FirstLineAt benchSupport benchRank.val hlt benchMask) := by
    rw [FirstLineAt, hfirst]
    norm_num [benchFirstLine, EqEqPosRow]
  have hsecondRow :
      FixedRow (SecondLineAt benchSupport benchRank.val hlt benchMask) 1 1 := by
    rw [SecondLineAt, hsecond]
    norm_num [benchSecondLine, FixedRow]
  exact ⟨hsource, hfirstRow, hsecondRow⟩

theorem benchKilled :
    TranslationGoodCaseKilled benchRank benchMask :=
  (SupportFamilyCheckedOn.kills
      (eqEqPosVarFirst_checkedOn benchSupport))
    benchRank.val benchRank.isLt benchMask benchShape

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
'''


SCALED_CANDIDATE = r'''import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Phase 6Z.6I scaled/integer candidate benchmark.

This file keeps all proof-critical benchmark arithmetic in integer numerators
with explicit positive denominators.  It is intentionally benchmark-local.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

set_option maxRecDepth 10000
set_option maxHeartbeats 1200000

structure IVec3 where
  x : Int
  y : Int
  z : Int
deriving Repr, DecidableEq

structure IMat3 where
  m00 : Int
  m01 : Int
  m02 : Int
  m10 : Int
  m11 : Int
  m12 : Int
  m20 : Int
  m21 : Int
  m22 : Int
deriving Repr, DecidableEq

structure SMat3 where
  den : Int
  M : IMat3
deriving Repr, DecidableEq

structure SLine where
  den : Int
  a : Int
  b : Int
  c : Int
deriving Repr, DecidableEq

def imatMul (A B : IMat3) : IMat3 where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22

def isIdentityScaled (A : SMat3) : Bool :=
  A.M.m00 == A.den && A.M.m01 == 0 && A.M.m02 == 0 &&
  A.M.m10 == 0 && A.M.m11 == A.den && A.M.m12 == 0 &&
  A.M.m20 == 0 && A.M.m21 == 0 && A.M.m22 == A.den

def smatMul (A B : SMat3) : SMat3 where
  den := A.den * B.den
  M := imatMul A.M B.M

def rx : SMat3 where
  den := 1
  M := { m00 := -1, m01 := 0, m02 := 0,
         m10 := 0, m11 := 1, m12 := 0,
         m20 := 0, m21 := 0, m22 := 1 }

def ry : SMat3 where
  den := 1
  M := { m00 := 1, m01 := 0, m02 := 0,
         m10 := 0, m11 := -1, m12 := 0,
         m20 := 0, m21 := 0, m22 := 1 }

def rz : SMat3 where
  den := 1
  M := { m00 := 1, m01 := 0, m02 := 0,
         m10 := 0, m11 := 1, m12 := 0,
         m20 := 0, m21 := 0, m22 := -1 }

def rd111 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := -2, m02 := -2,
         m10 := -2, m11 := 1, m12 := -2,
         m20 := -2, m21 := -2, m22 := 1 }

def rd11m : SMat3 where
  den := 3
  M := { m00 := 1, m01 := -2, m02 := 2,
         m10 := -2, m11 := 1, m12 := 2,
         m20 := 2, m21 := 2, m22 := 1 }

def rd1m1 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := 2, m02 := -2,
         m10 := 2, m11 := 1, m12 := 2,
         m20 := -2, m21 := 2, m22 := 1 }

def rdm11 : SMat3 where
  den := 3
  M := { m00 := 1, m01 := 2, m02 := 2,
         m10 := 2, m11 := 1, m12 := -2,
         m20 := 2, m21 := -2, m22 := 1 }

def benchProduct : SMat3 :=
  smatMul
    (smatMul
      (smatMul
        (smatMul
          (smatMul
            (smatMul
              (smatMul
                (smatMul
                  (smatMul
                    (smatMul
                      (smatMul
                        (smatMul
                          (smatMul rx rz)
                          ry)
                        ry)
                      rdm11)
                    rdm11)
                  rd1m1)
                rd11m)
              rd11m)
            rd111)
          rd111)
        rd1m1)
      rz)
    rx

def benchFirstLineScaled : SLine :=
  { den := 29, a := -29, b := -29, c := -39 }

def benchSecondLineScaled : SLine :=
  { den := 1, a := 1, b := 1, c := 1 }

def lineEqEqPos (L : SLine) : Bool :=
  L.a == L.b && L.a < 0 && L.c <= L.a

def lineFixed (L : SLine) (a b : Int) : Bool :=
  L.a == a * L.den && L.b == b * L.den && L.c == L.den

def denomPositive (num den : Int) : Bool :=
  0 < den && 0 < num

def weightedA (L M : SLine) : Int :=
  L.a * M.den + M.a * L.den

def weightedB (L M : SLine) : Int :=
  L.b * M.den + M.b * L.den

def weightedC (L M : SLine) : Int :=
  L.c * M.den + M.c * L.den

theorem benchProduct_classified :
    isIdentityScaled benchProduct = true \/ isIdentityScaled benchProduct = false := by
  decide

theorem benchFirst_shape :
    lineEqEqPos benchFirstLineScaled = true := by
  rfl

theorem benchSecond_shape :
    lineFixed benchSecondLineScaled 1 1 = true := by
  rfl

theorem benchDenominator_pos :
    denomPositive 116 9 = true := by
  rfl

theorem benchWeightedA :
    weightedA benchFirstLineScaled benchSecondLineScaled = 0 := by
  rfl

theorem benchWeightedB :
    weightedB benchFirstLineScaled benchSecondLineScaled = 0 := by
  rfl

theorem benchWeightedC_nonpos :
    weightedC benchFirstLineScaled benchSecondLineScaled <= 0 := by
  decide

def toStrictLin2 (L : SLine) : StrictLin2 :=
  { a := (L.a : Rat) / L.den
    b := (L.b : Rat) / L.den
    c := (L.c : Rat) / L.den }

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate
'''


AGREEMENT_SMOKE = r'''import Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
import Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

/-!
Agreement smoke for Phase 6Z.6I.

The scaled benchmark is not a replacement model.  These small checks show that
the benchmark integer rows agree with the current rational benchmark rows.
-/

namespace Cuboctahedron.Generated.Benchmarks.Phase6Z6I.AgreementSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Benchmarks.Phase6Z6I.RatBaseline
open Cuboctahedron.Generated.Benchmarks.Phase6Z6I.ScaledCandidate

theorem firstLine_agrees :
    toStrictLin2 benchFirstLineScaled = benchFirstLine := by
  norm_num [toStrictLin2, benchFirstLineScaled, benchFirstLine]

theorem secondLine_agrees :
    toStrictLin2 benchSecondLineScaled = benchSecondLine := by
  norm_num [toStrictLin2, benchSecondLineScaled, benchSecondLine]

theorem scaled_rows_preserve_template :
    lineEqEqPos benchFirstLineScaled = true /\
      lineFixed benchSecondLineScaled 1 1 = true := by
  exact ⟨benchFirst_shape, benchSecond_shape⟩

theorem rational_baseline_still_kills :
    TranslationGoodCaseKilled benchRank benchMask :=
  benchKilled

end Cuboctahedron.Generated.Benchmarks.Phase6Z6I.AgreementSmoke
'''


@dataclass
class RunResult:
    label: str
    path: str
    elapsed_seconds: float
    max_rss_kb: int | None
    exit_code: int
    stdout: str
    stderr: str


def write_files() -> list[tuple[str, Path]]:
    BENCH_DIR.mkdir(parents=True, exist_ok=True)
    modules = [
        ("rat_baseline", BENCH_DIR / "RatBaseline.lean", RAT_BASELINE),
        ("scaled_candidate", BENCH_DIR / "ScaledCandidate.lean", SCALED_CANDIDATE),
        ("agreement_smoke", BENCH_DIR / "AgreementSmoke.lean", AGREEMENT_SMOKE),
    ]
    for _label, path, text in modules:
        path.write_text(text, encoding="utf-8")
    return [(label, path) for label, path, _text in modules]


def parse_max_rss(text: str) -> int | None:
    for line in text.splitlines():
        stripped = line.strip()
        if stripped.startswith("Maximum resident set size"):
            try:
                return int(stripped.rsplit(":", 1)[1].strip())
            except ValueError:
                return None
    return None


def run_lean(label: str, path: Path, *, time_bin: str | None) -> RunResult:
    rel = path.relative_to(REPO_ROOT)
    olean = (
        REPO_ROOT
        / ".lake"
        / "build"
        / "lib"
        / "lean"
        / rel.with_suffix(".olean")
    )
    olean.parent.mkdir(parents=True, exist_ok=True)
    lean_args = ["lake", "env", "lean", "-R", ".", "-o", str(olean), str(rel)]
    if time_bin is not None:
        command = [time_bin, "-v", *lean_args]
    else:
        command = lean_args
    started = time.monotonic()
    proc = subprocess.run(
        command,
        cwd=REPO_ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    elapsed = time.monotonic() - started
    max_rss = parse_max_rss(proc.stderr) if time_bin is not None else None
    return RunResult(
        label=label,
        path=str(rel),
        elapsed_seconds=elapsed,
        max_rss_kb=max_rss,
        exit_code=proc.returncode,
        stdout=proc.stdout,
        stderr=proc.stderr,
    )


def summarize(results: list[RunResult], repeat: int) -> dict:
    by_label: dict[str, list[RunResult]] = {}
    for result in results:
        by_label.setdefault(result.label, []).append(result)
    summary = {}
    for label, runs in by_label.items():
        elapsed = [run.elapsed_seconds for run in runs]
        rss_values = [run.max_rss_kb for run in runs if run.max_rss_kb is not None]
        summary[label] = {
            "runs": [run.__dict__ for run in runs],
            "min_elapsed_seconds": min(elapsed),
            "mean_elapsed_seconds": sum(elapsed) / len(elapsed),
            "max_rss_kb": max(rss_values) if rss_values else None,
            "all_passed": all(run.exit_code == 0 for run in runs),
        }
    rat = summary.get("rat_baseline")
    scaled = summary.get("scaled_candidate")
    agreement = summary.get("agreement_smoke")
    speedup = None
    rss_ratio = None
    if rat is not None and scaled is not None:
        speedup = rat["min_elapsed_seconds"] / scaled["min_elapsed_seconds"]
        rat_rss = rat["max_rss_kb"]
        scaled_rss = scaled["max_rss_kb"]
        if rat_rss and scaled_rss:
            rss_ratio = scaled_rss / rat_rss
    passed = all(item["all_passed"] for item in summary.values())
    accepted = (
        passed
        and speedup is not None
        and speedup >= 2.0
        and (rss_ratio is None or rss_ratio <= 1.25)
        and agreement is not None
        and agreement["all_passed"]
    )
    targeted_accept = (
        passed
        and speedup is not None
        and speedup >= 2.0
        and agreement is not None
        and agreement["all_passed"]
    )
    notes = []
    if not passed:
        notes.append("one or more benchmark modules failed")
    if speedup is None:
        notes.append("missing baseline or scaled benchmark")
    elif speedup < 2.0:
        notes.append(f"speedup {speedup:.3f} is below the 2x acceptance gate")
    if rss_ratio is not None and rss_ratio > 1.25:
        notes.append(f"RSS ratio {rss_ratio:.3f} exceeds the 1.25x gate")
    if not notes:
        notes.append("scaled arithmetic clears the Phase 6Z.6I gate")
    return {
        "schema_version": 1,
        "phase": "6Z.6I",
        "trusted_as_proof": False,
        "repeat": repeat,
        "modules": summary,
        "comparison": {
            "speedup_min_elapsed": speedup,
            "scaled_to_rat_rss_ratio": rss_ratio,
        },
        "decision": {
            "status": "accepted" if accepted else ("targeted_accept" if targeted_accept else "rejected"),
            "accepted_for_production_arithmetic": accepted,
            "targeted_accept": targeted_accept and not accepted,
            "notes": notes,
        },
    }


def write_json(path: Path, payload: dict) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def write_markdown(path: Path, payload: dict) -> None:
    comparison = payload["comparison"]
    decision = payload["decision"]
    lines = [
        "# Phase 6Z.6I Arithmetic Benchmark",
        "",
        "This is an untrusted diagnostic report. It emits no production Lean evidence.",
        "",
        "## Decision",
        "",
        f"- Status: `{decision['status']}`",
        f"- Accepted for production arithmetic: {decision['accepted_for_production_arithmetic']}",
        "- Speedup using min elapsed time: "
        f"{comparison['speedup_min_elapsed']:.3f}x"
        if comparison["speedup_min_elapsed"] is not None
        else "- Speedup using min elapsed time: unavailable",
        "- Scaled/Rat max RSS ratio: "
        f"{comparison['scaled_to_rat_rss_ratio']:.3f}"
        if comparison["scaled_to_rat_rss_ratio"] is not None
        else "- Scaled/Rat max RSS ratio: unavailable",
        "",
        "## Module Results",
        "",
        "| Module | Min elapsed (s) | Mean elapsed (s) | Max RSS (KiB) | Passed |",
        "| --- | ---: | ---: | ---: | --- |",
    ]
    for label, summary in payload["modules"].items():
        rss = summary["max_rss_kb"]
        rss_text = f"{rss:,}" if rss is not None else "n/a"
        lines.append(
            f"| `{label}` | {summary['min_elapsed_seconds']:.3f} | "
            f"{summary['mean_elapsed_seconds']:.3f} | {rss_text} | "
            f"{summary['all_passed']} |"
        )
    lines.extend(["", "## Notes", ""])
    for note in decision["notes"]:
        lines.append(f"- {note}")
    lines.append("")
    path.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    parser = argparse.ArgumentParser(description="Run Phase 6Z.6I arithmetic benchmarks")
    parser.add_argument("--repeat", type=int, default=2)
    parser.add_argument("--output", type=Path, default=REPORT_JSON)
    args = parser.parse_args()
    if args.repeat <= 0:
        parser.error("--repeat must be positive")

    modules = write_files()
    time_bin = shutil.which("time")
    if time_bin != "/usr/bin/time" and Path("/usr/bin/time").exists():
        time_bin = "/usr/bin/time"

    results: list[RunResult] = []
    for _ in range(args.repeat):
        for label, path in modules:
            result = run_lean(label, path, time_bin=time_bin)
            results.append(result)
            status = "ok" if result.exit_code == 0 else "failed"
            print(
                f"{status} {label} {result.elapsed_seconds:.3f}s"
                + (
                    f" rss={result.max_rss_kb}KiB"
                    if result.max_rss_kb is not None
                    else ""
                ),
                flush=True,
            )

    payload = summarize(results, args.repeat)
    write_json(args.output, payload)
    write_markdown(args.output.with_suffix(".md"), payload)
    print(f"decision: {payload['decision']['status']}")
    if not all(item["all_passed"] for item in payload["modules"].values()):
        raise SystemExit(1)


if __name__ == "__main__":
    main()
