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

partial def readVarintFuel
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

end Cuboctahedron
