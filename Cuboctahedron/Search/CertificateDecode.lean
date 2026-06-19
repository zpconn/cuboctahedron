import Cuboctahedron.Search.CertificateFormat

/-!
Auditable Base64 and section-table decoder for compact certificate bundles.
-/

namespace Cuboctahedron

def base64Char? (c : Char) : Option Nat :=
  let n := c.toNat
  if 65 <= n && n <= 90 then
    some (n - 65)
  else if 97 <= n && n <= 122 then
    some (26 + (n - 97))
  else if 48 <= n && n <= 57 then
    some (52 + (n - 48))
  else if c = '+' then
    some 62
  else if c = '/' then
    some 63
  else
    none

def decodeBase64Quad
    (a b c d : Char) (rest : List Char) :
    Except DecodeError (List Nat × List Char) := do
  let va ← (base64Char? a).elim (.error DecodeError.invalidBase64) .ok
  let vb ← (base64Char? b).elim (.error DecodeError.invalidBase64) .ok
  let b0 := va * 4 + vb / 16
  if c = '=' then
    if d = '=' && rest = [] then
      .ok ([b0], [])
    else
      .error DecodeError.invalidPadding
  else
    let vc ← (base64Char? c).elim (.error DecodeError.invalidBase64) .ok
    let b1 := (vb % 16) * 16 + vc / 4
    if d = '=' then
      if rest = [] then
        .ok ([b0, b1], [])
      else
        .error DecodeError.invalidPadding
    else
      let vd ← (base64Char? d).elim (.error DecodeError.invalidBase64) .ok
      let b2 := (vc % 4) * 64 + vd
      .ok ([b0, b1, b2], rest)

def decodeBase64Chars : List Char -> Except DecodeError (List Nat)
  | [] => .ok []
  | a :: b :: c :: d :: rest => do
      let va ← (base64Char? a).elim (.error DecodeError.invalidBase64) .ok
      let vb ← (base64Char? b).elim (.error DecodeError.invalidBase64) .ok
      let b0 := va * 4 + vb / 16
      if c = '=' then
        if d = '=' && rest = [] then
          .ok [b0]
        else
          .error DecodeError.invalidPadding
      else
        let vc ← (base64Char? c).elim (.error DecodeError.invalidBase64) .ok
        let b1 := (vb % 16) * 16 + vc / 4
        if d = '=' then
          if rest = [] then
            .ok [b0, b1]
          else
            .error DecodeError.invalidPadding
        else
          let vd ← (base64Char? d).elim (.error DecodeError.invalidBase64) .ok
          let b2 := (vc % 4) * 64 + vd
          let tail ← decodeBase64Chars rest
          .ok ([b0, b1, b2] ++ tail)
  | _ => .error DecodeError.invalidBase64

def decodeBase64 (text : String) : Except DecodeError (List Nat) :=
  decodeBase64Chars text.toList

def readVarintFuel
    (fuel shift acc : Nat) (bytes : List Nat) :
    Except DecodeError (Nat × List Nat) :=
  match fuel, bytes with
  | 0, _ => .error DecodeError.malformedVarint
  | _, [] => .error DecodeError.malformedVarint
  | fuel + 1, b :: rest =>
      if b < 128 then
        .ok (acc + b * (2 ^ shift), rest)
      else if b < 256 then
        readVarintFuel fuel (shift + 7)
          (acc + (b - 128) * (2 ^ shift)) rest
      else
        .error DecodeError.malformedVarint

def readVarint (bytes : List Nat) : Except DecodeError (Nat × List Nat) :=
  readVarintFuel 10 0 0 bytes

def takeBytes : Nat -> List Nat -> Except DecodeError (List Nat × List Nat)
  | 0, bytes => .ok ([], bytes)
  | _ + 1, [] => .error DecodeError.truncatedSection
  | n + 1, b :: bytes => do
      let (chunk, rest) ← takeBytes n bytes
      .ok (b :: chunk, rest)

def readSectionHeaders :
    Nat -> List Nat -> Except DecodeError (List SectionHeader × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes => do
      let (id, bytes) ← readVarint bytes
      let (length, bytes) ← readVarint bytes
      let (headers, bytes) ← readSectionHeaders n bytes
      .ok ({ id, length } :: headers, bytes)

def sectionIdsUnique : List SectionHeader -> Bool
  | [] => true
  | header :: rest =>
      !(rest.any fun other => other.id == header.id) && sectionIdsUnique rest

def readSectionPayloads :
    List SectionHeader -> List Nat ->
      Except DecodeError (List (Nat × List Nat))
  | [], [] => .ok []
  | [], _ => .error DecodeError.trailingInput
  | header :: headers, bytes => do
      let (payload, bytes) ← takeBytes header.length bytes
      let rest ← readSectionPayloads headers bytes
      .ok ((header.id, payload) :: rest)

def lookupSection (id : Nat) : List (Nat × List Nat) -> Except DecodeError (List Nat)
  | [] => .error DecodeError.missingSection
  | (sectionId, payload) :: rest =>
      if sectionId = id then .ok payload else lookupSection id rest

def parseSingleNatSection (bytes : List Nat) : Except DecodeError Nat := do
  let (value, rest) ← readVarint bytes
  if rest = [] then .ok value else .error DecodeError.trailingInput

def readNatValues :
    Nat -> List Nat -> Except DecodeError (List Nat × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes => do
      let (value, bytes) ← readVarint bytes
      let (values, bytes) ← readNatValues n bytes
      .ok (value :: values, bytes)

def parseNatArraySection (bytes : List Nat) : Except DecodeError (Array Nat) := do
  let (count, bytes) ← readVarint bytes
  let (values, rest) ← readNatValues count bytes
  if rest = [] then .ok values.toArray else .error DecodeError.trailingInput

def readTranslationCases :
    Nat -> List Nat ->
      Except DecodeError (List GeneratedTranslationCase × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes => do
      let (rank, bytes) ← readVarint bytes
      let (mask, bytes) ← readVarint bytes
      let (cases, bytes) ← readTranslationCases n bytes
      .ok ({ pairRank := rank, signMask := mask } :: cases, bytes)

def parseTranslationCasesSection
    (bytes : List Nat) : Except DecodeError (Array GeneratedTranslationCase) := do
  let (count, bytes) ← readVarint bytes
  let (cases, rest) ← readTranslationCases count bytes
  if rest = [] then .ok cases.toArray else .error DecodeError.trailingInput

def parseBundleKind (code : Nat) : Except DecodeError BundleKind :=
  if code = 1 then
    .ok BundleKind.pilot
  else if code = 2 then
    .ok BundleKind.full
  else
    .error DecodeError.badBundleKind

def parseCertBundleBytes (bytes : List Nat) : Except DecodeError CertBundle := do
  match bytes with
  | 67 :: 79 :: 67 :: 66 :: version :: kindCode :: rest =>
      if version = 1 then
        let kind ← parseBundleKind kindCode
        let (sectionCount, rest) ← readVarint rest
        let (headers, rest) ← readSectionHeaders sectionCount rest
        if sectionIdsUnique headers then
          let sections ← readSectionPayloads headers rest
          let pilotLimit ← parseSingleNatSection (← lookupSection 1 sections)
          let nonidentityRanks ← parseNatArraySection (← lookupSection 2 sections)
          let translationCases ←
            parseTranslationCasesSection (← lookupSection 3 sections)
          .ok {
            kind := kind
            schemaVersion := version
            pilotLimit := pilotLimit
            nonidentityRanks := nonidentityRanks
            translationCases := translationCases
          }
        else
          .error DecodeError.duplicateSection
      else
        .error DecodeError.badVersion
  | _ => .error DecodeError.badMagic

def decodeCertBlob (text : String) : Except DecodeError CertBundle := do
  parseCertBundleBytes (← decodeBase64 text)

def parsePairIdTag (tag : Nat) : Except DecodeError PairId :=
  match tag with
  | 0 => .ok PairId.x
  | 1 => .ok PairId.y
  | 2 => .ok PairId.z
  | 3 => .ok PairId.d111
  | 4 => .ok PairId.d11m
  | 5 => .ok PairId.d1m1
  | 6 => .ok PairId.dm11
  | _ => .error DecodeError.invalidEnumTag

def parseFaceTag (tag : Nat) : Except DecodeError Face :=
  match tag with
  | 0 => .ok Face.xp
  | 1 => .ok Face.xm
  | 2 => .ok Face.yp
  | 3 => .ok Face.ym
  | 4 => .ok Face.zp
  | 5 => .ok Face.zm
  | 6 => .ok Face.tmmm
  | 7 => .ok Face.tmmp
  | 8 => .ok Face.tmpm
  | 9 => .ok Face.tmpp
  | 10 => .ok Face.tpmm
  | 11 => .ok Face.tpmp
  | 12 => .ok Face.tppm
  | 13 => .ok Face.tppp
  | _ => .error DecodeError.invalidEnumTag

def decodeZigZag (value : Nat) : Int :=
  if value % 2 = 0 then
    Int.ofNat (value / 2)
  else
    Int.negSucc (value / 2)

def readSignedInt (bytes : List Nat) : Except DecodeError (Int × List Nat) := do
  let (value, rest) ← readVarint bytes
  .ok (decodeZigZag value, rest)

def readRatValue (bytes : List Nat) : Except DecodeError (Rat × List Nat) := do
  let (num, bytes) ← readSignedInt bytes
  let (den, bytes) ← readVarint bytes
  if h : den = 0 then
    .error DecodeError.zeroDenominator
  else
    .ok (Rat.normalize num den h, bytes)

def readPairId (bytes : List Nat) :
    Except DecodeError (PairId × List Nat) := do
  let (tag, bytes) ← readVarint bytes
  let pair ← parsePairIdTag tag
  .ok (pair, bytes)

def readFace (bytes : List Nat) :
    Except DecodeError (Face × List Nat) := do
  let (tag, bytes) ← readVarint bytes
  let face ← parseFaceTag tag
  .ok (face, bytes)

def readPairWord (bytes : List Nat) :
    Except DecodeError (PairWord × List Nat) := do
  let (p0, bytes) ← readPairId bytes
  let (p1, bytes) ← readPairId bytes
  let (p2, bytes) ← readPairId bytes
  let (p3, bytes) ← readPairId bytes
  let (p4, bytes) ← readPairId bytes
  let (p5, bytes) ← readPairId bytes
  let (p6, bytes) ← readPairId bytes
  let (p7, bytes) ← readPairId bytes
  let (p8, bytes) ← readPairId bytes
  let (p9, bytes) ← readPairId bytes
  let (p10, bytes) ← readPairId bytes
  let (p11, bytes) ← readPairId bytes
  let (p12, bytes) ← readPairId bytes
  .ok (⟨#[p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12],
    by simp⟩, bytes)

def readFaceVector14 (bytes : List Nat) :
    Except DecodeError (Vector Face 14 × List Nat) := do
  let (f0, bytes) ← readFace bytes
  let (f1, bytes) ← readFace bytes
  let (f2, bytes) ← readFace bytes
  let (f3, bytes) ← readFace bytes
  let (f4, bytes) ← readFace bytes
  let (f5, bytes) ← readFace bytes
  let (f6, bytes) ← readFace bytes
  let (f7, bytes) ← readFace bytes
  let (f8, bytes) ← readFace bytes
  let (f9, bytes) ← readFace bytes
  let (f10, bytes) ← readFace bytes
  let (f11, bytes) ← readFace bytes
  let (f12, bytes) ← readFace bytes
  let (f13, bytes) ← readFace bytes
  .ok (⟨#[f0, f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13],
    by simp⟩, bytes)

def readVec3Rat (bytes : List Nat) :
    Except DecodeError (Vec3 Rat × List Nat) := do
  let (x, bytes) ← readRatValue bytes
  let (y, bytes) ← readRatValue bytes
  let (z, bytes) ← readRatValue bytes
  .ok ({ x := x, y := y, z := z }, bytes)

def readMat3Rat (bytes : List Nat) :
    Except DecodeError (Mat3 Rat × List Nat) := do
  let (m00, bytes) ← readRatValue bytes
  let (m01, bytes) ← readRatValue bytes
  let (m02, bytes) ← readRatValue bytes
  let (m10, bytes) ← readRatValue bytes
  let (m11, bytes) ← readRatValue bytes
  let (m12, bytes) ← readRatValue bytes
  let (m20, bytes) ← readRatValue bytes
  let (m21, bytes) ← readRatValue bytes
  let (m22, bytes) ← readRatValue bytes
  .ok ({
    m00 := m00, m01 := m01, m02 := m02
    m10 := m10, m11 := m11, m12 := m12
    m20 := m20, m21 := m21, m22 := m22
  }, bytes)

def readMat4Rat (bytes : List Nat) :
    Except DecodeError (Mat4 × List Nat) := do
  let (m00, bytes) ← readRatValue bytes
  let (m01, bytes) ← readRatValue bytes
  let (m02, bytes) ← readRatValue bytes
  let (m03, bytes) ← readRatValue bytes
  let (m10, bytes) ← readRatValue bytes
  let (m11, bytes) ← readRatValue bytes
  let (m12, bytes) ← readRatValue bytes
  let (m13, bytes) ← readRatValue bytes
  let (m20, bytes) ← readRatValue bytes
  let (m21, bytes) ← readRatValue bytes
  let (m22, bytes) ← readRatValue bytes
  let (m23, bytes) ← readRatValue bytes
  let (m30, bytes) ← readRatValue bytes
  let (m31, bytes) ← readRatValue bytes
  let (m32, bytes) ← readRatValue bytes
  let (m33, bytes) ← readRatValue bytes
  .ok ({
    m00 := m00, m01 := m01, m02 := m02, m03 := m03
    m10 := m10, m11 := m11, m12 := m12, m13 := m13
    m20 := m20, m21 := m21, m22 := m22, m23 := m23
    m30 := m30, m31 := m31, m32 := m32, m33 := m33
  }, bytes)

def readStep14 (bytes : List Nat) :
    Except DecodeError (Step14 × List Nat) := do
  let (value, bytes) ← readVarint bytes
  if h : value < 14 then
    .ok (⟨value, h⟩, bytes)
  else
    .error DecodeError.invalidEnumTag

def readImpact15 (bytes : List Nat) :
    Except DecodeError (Impact15 × List Nat) := do
  let (value, bytes) ← readVarint bytes
  if h : value < 15 then
    .ok (⟨value, h⟩, bytes)
  else
    .error DecodeError.invalidEnumTag

def readCompactResidualFailure (bytes : List Nat) :
    Except DecodeError (CompactNonIdResidualFailure × List Nat) := do
  let (tag, bytes) ← readVarint bytes
  match tag with
  | 0 => .ok (CompactNonIdResidualFailure.axisMissesStartInterior, bytes)
  | 1 =>
      let (step, bytes) ← readStep14 bytes
      .ok (CompactNonIdResidualFailure.badFirstHit step, bytes)
  | 2 =>
      let (impact, bytes) ← readImpact15 bytes
      let (badFace, bytes) ← readFace bytes
      .ok (CompactNonIdResidualFailure.badHitInterior impact badFace, bytes)
  | _ => .error DecodeError.invalidEnumTag

def readCompactResidualCert (bytes : List Nat) :
    Except DecodeError (CompactNonIdResidualCert × List Nat) := do
  let (rank, bytes) ← readVarint bytes
  let rank ←
    if h : rank < numPairWords then
      .ok (⟨rank, h⟩ : Fin numPairWords)
    else
      .error DecodeError.rankOutOfBounds
  let (word, bytes) ← readPairWord bytes
  let (axis, bytes) ← readVec3Rat bytes
  let (kernel, bytes) ← readMat3Rat bytes
  let (forcedSeq, bytes) ← readFaceVector14 bytes
  let (p0, bytes) ← readVec3Rat bytes
  let (lambda, bytes) ← readRatValue bytes
  let (solve, bytes) ← readMat4Rat bytes
  let (failure, bytes) ← readCompactResidualFailure bytes
  .ok ({
    rank := rank
    word := word
    axis := axis
    kernel := { crossFactor := kernel }
    forcedSeq := forcedSeq
    p0 := p0
    lambda := lambda
    solve := { leftInverse := solve }
    failure := failure
  }, bytes)

def readCompactResidualCerts :
    Nat -> List Nat ->
      Except DecodeError (List CompactNonIdResidualCert × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes => do
      let (cert, bytes) ← readCompactResidualCert bytes
      let (certs, bytes) ← readCompactResidualCerts n bytes
      .ok (cert :: certs, bytes)

def parseCompactResidualCertsSection
    (bytes : List Nat) : Except DecodeError (Array CompactNonIdResidualCert) := do
  let (count, bytes) ← readVarint bytes
  let (certs, rest) ← readCompactResidualCerts count bytes
  if rest = [] then .ok certs.toArray else .error DecodeError.trailingInput

def parsePackedResidualBytes
    (bytes : List Nat) :
    Except DecodeError (Array CompactNonIdResidualCert) := do
  match bytes with
  | 67 :: 79 :: 82 :: 67 :: version :: rest =>
      if version = 1 then
        let (sectionCount, rest) ← readVarint rest
        let (headers, rest) ← readSectionHeaders sectionCount rest
        if sectionIdsUnique headers then
          let sections ← readSectionPayloads headers rest
          let metadata ← parseNatArraySection (← lookupSection 1 sections)
          let certs ← parseCompactResidualCertsSection (← lookupSection 2 sections)
          if metadata.size = 2 ∧ metadata[0]! = certs.size then
            .ok certs
          else
            .error DecodeError.countMismatch
        else
          .error DecodeError.duplicateSection
      else
        .error DecodeError.badVersion
  | _ => .error DecodeError.badMagic

def decodePackedResidualCerts
    (text : String) : Except DecodeError (Array CompactNonIdResidualCert) := do
  parsePackedResidualBytes (← decodeBase64 text)

noncomputable def decodedPackedResidualCerts
    (text : String) : Array CompactNonIdResidualCert :=
  match decodePackedResidualCerts text with
  | .ok certs => certs
  | .error _ => #[]

end Cuboctahedron
