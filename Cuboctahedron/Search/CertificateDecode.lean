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

@[reducible] def bindExcept
    (value : Except DecodeError α)
    (next : α -> Except DecodeError β) :
    Except DecodeError β :=
  match value with
  | .ok value => next value
  | .error err => .error err

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
  | n + 1, b :: bytes =>
      bindExcept (takeBytes n bytes) fun (chunk, rest) =>
        .ok (b :: chunk, rest)

def readSectionHeaders :
    Nat -> List Nat -> Except DecodeError (List SectionHeader × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes =>
      bindExcept (readVarint bytes) fun (id, bytes) =>
        bindExcept (readVarint bytes) fun (length, bytes) =>
          bindExcept (readSectionHeaders n bytes) fun (headers, bytes) =>
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
  | header :: headers, bytes =>
      bindExcept (takeBytes header.length bytes) fun (payload, bytes) =>
        bindExcept (readSectionPayloads headers bytes) fun rest =>
          .ok ((header.id, payload) :: rest)

def lookupSection (id : Nat) : List (Nat × List Nat) -> Except DecodeError (List Nat)
  | [] => .error DecodeError.missingSection
  | (sectionId, payload) :: rest =>
      if sectionId = id then .ok payload else lookupSection id rest

def parseSingleNatSection (bytes : List Nat) : Except DecodeError Nat :=
  bindExcept (readVarint bytes) fun (value, rest) =>
    if rest = [] then .ok value else .error DecodeError.trailingInput

def readNatValues :
    Nat -> List Nat -> Except DecodeError (List Nat × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes =>
      bindExcept (readVarint bytes) fun (value, bytes) =>
        bindExcept (readNatValues n bytes) fun (values, bytes) =>
          .ok (value :: values, bytes)

def parseNatArraySection (bytes : List Nat) : Except DecodeError (Array Nat) :=
  bindExcept (readVarint bytes) fun (count, bytes) =>
    bindExcept (readNatValues count bytes) fun (values, rest) =>
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

def readSignedInt (bytes : List Nat) : Except DecodeError (Int × List Nat) :=
  bindExcept (readVarint bytes) fun (value, rest) =>
    .ok (decodeZigZag value, rest)

def readRatValue (bytes : List Nat) : Except DecodeError (Rat × List Nat) :=
  bindExcept (readSignedInt bytes) fun (num, bytes) =>
    bindExcept (readVarint bytes) fun (den, bytes) =>
      if h : den = 0 then
        .error DecodeError.zeroDenominator
      else
        .ok (Rat.normalize num den h, bytes)

def readPairId (bytes : List Nat) :
    Except DecodeError (PairId × List Nat) :=
  bindExcept (readVarint bytes) fun (tag, bytes) =>
    bindExcept (parsePairIdTag tag) fun pair =>
      .ok (pair, bytes)

def readFace (bytes : List Nat) :
    Except DecodeError (Face × List Nat) :=
  bindExcept (readVarint bytes) fun (tag, bytes) =>
    bindExcept (parseFaceTag tag) fun face =>
      .ok (face, bytes)

def readPairWord (bytes : List Nat) :
    Except DecodeError (PairWord × List Nat) :=
  bindExcept (readPairId bytes) fun (p0, bytes) =>
    bindExcept (readPairId bytes) fun (p1, bytes) =>
      bindExcept (readPairId bytes) fun (p2, bytes) =>
        bindExcept (readPairId bytes) fun (p3, bytes) =>
          bindExcept (readPairId bytes) fun (p4, bytes) =>
            bindExcept (readPairId bytes) fun (p5, bytes) =>
              bindExcept (readPairId bytes) fun (p6, bytes) =>
                bindExcept (readPairId bytes) fun (p7, bytes) =>
                  bindExcept (readPairId bytes) fun (p8, bytes) =>
                    bindExcept (readPairId bytes) fun (p9, bytes) =>
                      bindExcept (readPairId bytes) fun (p10, bytes) =>
                        bindExcept (readPairId bytes) fun (p11, bytes) =>
                          bindExcept (readPairId bytes) fun (p12, bytes) =>
                            .ok
                              (⟨#[p0, p1, p2, p3, p4, p5, p6, p7, p8,
                                  p9, p10, p11, p12], by simp⟩,
                                bytes)

def readFaceVector14 (bytes : List Nat) :
    Except DecodeError (Vector Face 14 × List Nat) :=
  bindExcept (readFace bytes) fun (f0, bytes) =>
    bindExcept (readFace bytes) fun (f1, bytes) =>
      bindExcept (readFace bytes) fun (f2, bytes) =>
        bindExcept (readFace bytes) fun (f3, bytes) =>
          bindExcept (readFace bytes) fun (f4, bytes) =>
            bindExcept (readFace bytes) fun (f5, bytes) =>
              bindExcept (readFace bytes) fun (f6, bytes) =>
                bindExcept (readFace bytes) fun (f7, bytes) =>
                  bindExcept (readFace bytes) fun (f8, bytes) =>
                    bindExcept (readFace bytes) fun (f9, bytes) =>
                      bindExcept (readFace bytes) fun (f10, bytes) =>
                        bindExcept (readFace bytes) fun (f11, bytes) =>
                          bindExcept (readFace bytes) fun (f12, bytes) =>
                            bindExcept (readFace bytes) fun (f13, bytes) =>
                              .ok
                                (⟨#[f0, f1, f2, f3, f4, f5, f6, f7,
                                    f8, f9, f10, f11, f12, f13],
                                  by simp⟩,
                                  bytes)

def readVec3Rat (bytes : List Nat) :
    Except DecodeError (Vec3 Rat × List Nat) :=
  bindExcept (readRatValue bytes) fun (x, bytes) =>
    bindExcept (readRatValue bytes) fun (y, bytes) =>
      bindExcept (readRatValue bytes) fun (z, bytes) =>
        .ok ({ x := x, y := y, z := z }, bytes)

def readMat3Rat (bytes : List Nat) :
    Except DecodeError (Mat3 Rat × List Nat) :=
  bindExcept (readRatValue bytes) fun (m00, bytes) =>
    bindExcept (readRatValue bytes) fun (m01, bytes) =>
      bindExcept (readRatValue bytes) fun (m02, bytes) =>
        bindExcept (readRatValue bytes) fun (m10, bytes) =>
          bindExcept (readRatValue bytes) fun (m11, bytes) =>
            bindExcept (readRatValue bytes) fun (m12, bytes) =>
              bindExcept (readRatValue bytes) fun (m20, bytes) =>
                bindExcept (readRatValue bytes) fun (m21, bytes) =>
                  bindExcept (readRatValue bytes) fun (m22, bytes) =>
                    .ok ({
                      m00 := m00, m01 := m01, m02 := m02
                      m10 := m10, m11 := m11, m12 := m12
                      m20 := m20, m21 := m21, m22 := m22
                    }, bytes)

def readMat4Rat (bytes : List Nat) :
    Except DecodeError (Mat4 × List Nat) :=
  bindExcept (readRatValue bytes) fun (m00, bytes) =>
    bindExcept (readRatValue bytes) fun (m01, bytes) =>
      bindExcept (readRatValue bytes) fun (m02, bytes) =>
        bindExcept (readRatValue bytes) fun (m03, bytes) =>
          bindExcept (readRatValue bytes) fun (m10, bytes) =>
            bindExcept (readRatValue bytes) fun (m11, bytes) =>
              bindExcept (readRatValue bytes) fun (m12, bytes) =>
                bindExcept (readRatValue bytes) fun (m13, bytes) =>
                  bindExcept (readRatValue bytes) fun (m20, bytes) =>
                    bindExcept (readRatValue bytes) fun (m21, bytes) =>
                      bindExcept (readRatValue bytes) fun (m22, bytes) =>
                        bindExcept (readRatValue bytes) fun (m23, bytes) =>
                          bindExcept (readRatValue bytes) fun (m30, bytes) =>
                            bindExcept (readRatValue bytes) fun (m31, bytes) =>
                              bindExcept (readRatValue bytes) fun (m32, bytes) =>
                                bindExcept (readRatValue bytes) fun (m33, bytes) =>
                                  .ok ({
                                    m00 := m00, m01 := m01, m02 := m02,
                                    m03 := m03
                                    m10 := m10, m11 := m11, m12 := m12,
                                    m13 := m13
                                    m20 := m20, m21 := m21, m22 := m22,
                                    m23 := m23
                                    m30 := m30, m31 := m31, m32 := m32,
                                    m33 := m33
                                  }, bytes)

def readStep14 (bytes : List Nat) :
    Except DecodeError (Step14 × List Nat) :=
  bindExcept (readVarint bytes) fun (value, bytes) =>
    if h : value < 14 then
      .ok (⟨value, h⟩, bytes)
    else
      .error DecodeError.invalidEnumTag

def readImpact15 (bytes : List Nat) :
    Except DecodeError (Impact15 × List Nat) :=
  bindExcept (readVarint bytes) fun (value, bytes) =>
    if h : value < 15 then
      .ok (⟨value, h⟩, bytes)
    else
      .error DecodeError.invalidEnumTag

def readFin4 (bytes : List Nat) :
    Except DecodeError (Fin 4 × List Nat) :=
  bindExcept (readVarint bytes) fun (value, bytes) =>
    if h : value < 4 then
      .ok (⟨value, h⟩, bytes)
    else
      .error DecodeError.invalidEnumTag

def readSignMask (bytes : List Nat) :
    Except DecodeError (SignMask × List Nat) :=
  bindExcept (readVarint bytes) fun (value, bytes) =>
    if h : value < numSignMasks then
      .ok (⟨value, h⟩, bytes)
    else
      .error DecodeError.invalidEnumTag

def readCompactResidualFailure (bytes : List Nat) :
    Except DecodeError (CompactNonIdResidualFailure × List Nat) :=
  bindExcept (readVarint bytes) fun (tag, bytes) =>
    match tag with
    | 0 => .ok (CompactNonIdResidualFailure.axisMissesStartInterior, bytes)
    | 1 =>
        bindExcept (readStep14 bytes) fun (step, bytes) =>
          .ok (CompactNonIdResidualFailure.badFirstHit step, bytes)
    | 2 =>
        bindExcept (readImpact15 bytes) fun (impact, bytes) =>
          bindExcept (readFace bytes) fun (badFace, bytes) =>
            .ok
              (CompactNonIdResidualFailure.badHitInterior impact badFace,
                bytes)
    | _ => .error DecodeError.invalidEnumTag

def readCompactResidualCert (bytes : List Nat) :
    Except DecodeError (CompactNonIdResidualCert × List Nat) :=
  bindExcept (readVarint bytes) fun (rank, bytes) =>
    bindExcept
      (if h : rank < numPairWords then
        .ok (⟨rank, h⟩ : Fin numPairWords)
      else
        .error DecodeError.rankOutOfBounds)
      fun rank =>
        bindExcept (readPairWord bytes) fun (word, bytes) =>
          bindExcept (readVec3Rat bytes) fun (axis, bytes) =>
            bindExcept (readMat3Rat bytes) fun (kernel, bytes) =>
              bindExcept (readFaceVector14 bytes) fun (forcedSeq, bytes) =>
                bindExcept (readVec3Rat bytes) fun (p0, bytes) =>
                  bindExcept (readRatValue bytes) fun (lambda, bytes) =>
                    bindExcept (readMat4Rat bytes) fun (solve, bytes) =>
                      bindExcept (readCompactResidualFailure bytes)
                        fun (failure, bytes) =>
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
  | n + 1, bytes =>
      bindExcept (readCompactResidualCert bytes) fun (cert, bytes) =>
        bindExcept (readCompactResidualCerts n bytes) fun (certs, bytes) =>
          .ok (cert :: certs, bytes)

def parseCompactResidualCertsSection
    (bytes : List Nat) : Except DecodeError (Array CompactNonIdResidualCert) :=
  bindExcept (readVarint bytes) fun (count, bytes) =>
    bindExcept (readCompactResidualCerts count bytes) fun (certs, rest) =>
      if rest = [] then .ok certs.toArray else .error DecodeError.trailingInput

def parsePackedResidualBytes
    (bytes : List Nat) :
    Except DecodeError (Array CompactNonIdResidualCert) :=
  match bytes with
  | 67 :: 79 :: 82 :: 67 :: version :: rest =>
      if version = 1 then
        bindExcept (readVarint rest) fun (sectionCount, rest) =>
          bindExcept (readSectionHeaders sectionCount rest) fun (headers, rest) =>
            if sectionIdsUnique headers then
              bindExcept (readSectionPayloads headers rest) fun sections =>
                bindExcept (lookupSection 1 sections) fun metadataBytes =>
                  bindExcept (parseNatArraySection metadataBytes) fun metadata =>
                    bindExcept (lookupSection 2 sections) fun certBytes =>
                      bindExcept (parseCompactResidualCertsSection certBytes)
                        fun certs =>
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
    (text : String) : Except DecodeError (Array CompactNonIdResidualCert) :=
  bindExcept (decodeBase64 text) parsePackedResidualBytes

def readTranslationConstraintSource (bytes : List Nat) :
    Except DecodeError (TranslationConstraintSource × List Nat) :=
  bindExcept (readVarint bytes) fun (tag, bytes) =>
    match tag with
    | 0 =>
        bindExcept (readFin4 bytes) fun (i, bytes) =>
          .ok (TranslationConstraintSource.xpStart i, bytes)
    | 1 =>
        bindExcept (readStep14 bytes) fun (i, bytes) =>
          .ok (TranslationConstraintSource.ordering i, bytes)
    | 2 =>
        bindExcept (readImpact15 bytes) fun (i, bytes) =>
          bindExcept (readFace bytes) fun (g, bytes) =>
            .ok (TranslationConstraintSource.interior i g, bytes)
    | _ => .error DecodeError.invalidEnumTag

def readSourceFarkasTerm (bytes : List Nat) :
    Except DecodeError (SourceFarkasTerm × List Nat) :=
  bindExcept (readTranslationConstraintSource bytes) fun (source, bytes) =>
    bindExcept (readRatValue bytes) fun (multiplier, bytes) =>
      .ok ({ source := source, multiplier := multiplier }, bytes)

def readSourceFarkasTerms :
    Nat -> List Nat ->
      Except DecodeError (List SourceFarkasTerm × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes =>
      bindExcept (readSourceFarkasTerm bytes) fun (term, bytes) =>
        bindExcept (readSourceFarkasTerms n bytes) fun (terms, bytes) =>
          .ok (term :: terms, bytes)

def readSourceFarkasCert (bytes : List Nat) :
    Except DecodeError (SourceFarkasCert × List Nat) :=
  bindExcept (readVarint bytes) fun (count, bytes) =>
    bindExcept (readSourceFarkasTerms count bytes) fun (terms, bytes) =>
      .ok ({ terms := terms }, bytes)

def readCompactTranslationFarkasCert (bytes : List Nat) :
    Except DecodeError (CompactTranslationFarkasCert × List Nat) :=
  bindExcept (readVarint bytes) fun (rank, bytes) =>
    bindExcept
      (if h : rank < numPairWords then
        .ok (⟨rank, h⟩ : Fin numPairWords)
      else
        .error DecodeError.rankOutOfBounds)
      fun rank =>
        bindExcept (readSignMask bytes) fun (mask, bytes) =>
          bindExcept (readSourceFarkasCert bytes) fun (sourceFarkas, bytes) =>
            .ok ({
              rank := rank
              mask := mask
              sourceFarkas := sourceFarkas
            }, bytes)

def readCompactTranslationFarkasCerts :
    Nat -> List Nat ->
      Except DecodeError (List CompactTranslationFarkasCert × List Nat)
  | 0, bytes => .ok ([], bytes)
  | n + 1, bytes =>
      bindExcept (readCompactTranslationFarkasCert bytes)
        fun (cert, bytes) =>
          bindExcept (readCompactTranslationFarkasCerts n bytes)
            fun (certs, bytes) =>
              .ok (cert :: certs, bytes)

def parseCompactTranslationFarkasCertsSection
    (bytes : List Nat) :
    Except DecodeError (Array CompactTranslationFarkasCert) :=
  bindExcept (readVarint bytes) fun (count, bytes) =>
    bindExcept (readCompactTranslationFarkasCerts count bytes)
      fun (certs, rest) =>
        if rest = [] then .ok certs.toArray else .error DecodeError.trailingInput

def parsePackedTranslationFarkasBytes
    (bytes : List Nat) :
    Except DecodeError (Array CompactTranslationFarkasCert) :=
  match bytes with
  | 67 :: 79 :: 84 :: 70 :: version :: rest =>
      if version = 1 then
        bindExcept (readVarint rest) fun (sectionCount, rest) =>
          bindExcept (readSectionHeaders sectionCount rest) fun (headers, rest) =>
            if sectionIdsUnique headers then
              bindExcept (readSectionPayloads headers rest) fun sections =>
                bindExcept (lookupSection 1 sections) fun metadataBytes =>
                  bindExcept (parseNatArraySection metadataBytes) fun metadata =>
                    bindExcept (lookupSection 2 sections) fun certBytes =>
                      bindExcept
                        (parseCompactTranslationFarkasCertsSection certBytes)
                        fun certs =>
                          if metadata.size = 2 ∧ metadata[0]! = certs.size then
                            .ok certs
                          else
                            .error DecodeError.countMismatch
            else
              .error DecodeError.duplicateSection
      else
        .error DecodeError.badVersion
  | _ => .error DecodeError.badMagic

def decodePackedTranslationFarkasCerts
    (text : String) :
    Except DecodeError (Array CompactTranslationFarkasCert) :=
  bindExcept (decodeBase64 text) parsePackedTranslationFarkasBytes

attribute [reducible]
  base64Char?
  decodeBase64Chars
  decodeBase64
  readVarintFuel
  readVarint
  takeBytes
  readSectionHeaders
  sectionIdsUnique
  readSectionPayloads
  lookupSection
  parseSingleNatSection
  readNatValues
  parseNatArraySection
  parsePairIdTag
  parseFaceTag
  decodeZigZag
  readSignedInt
  readRatValue
  readPairId
  readFace
  readPairWord
  readFaceVector14
  readVec3Rat
  readMat3Rat
  readMat4Rat
  readStep14
  readImpact15
  readFin4
  readSignMask
  readCompactResidualFailure
  readCompactResidualCert
  readCompactResidualCerts
  parseCompactResidualCertsSection
  parsePackedResidualBytes
  decodePackedResidualCerts
  readTranslationConstraintSource
  readSourceFarkasTerm
  readSourceFarkasTerms
  readSourceFarkasCert
  readCompactTranslationFarkasCert
  readCompactTranslationFarkasCerts
  parseCompactTranslationFarkasCertsSection
  parsePackedTranslationFarkasBytes
  decodePackedTranslationFarkasCerts

def decodedPackedResidualCerts
    (text : String) : Array CompactNonIdResidualCert :=
  match decodePackedResidualCerts text with
  | .ok certs => certs
  | .error _ => #[]

def decodedPackedTranslationFarkasCerts
    (text : String) : Array CompactTranslationFarkasCert :=
  match decodePackedTranslationFarkasCerts text with
  | .ok certs => certs
  | .error _ => #[]

end Cuboctahedron
