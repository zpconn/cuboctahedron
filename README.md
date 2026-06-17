# Cuboctahedron Omnihedral Billiards

This repo is building a fully formalized proof of the following theorem in Lean 4:

```
It is not possible to construct an omnihedral orbit inside the cuboctahedron.
```

As of June 2026, this appears to be a novel result in mathematics, though of minor curiosity at best. While it is a celebrated mathematical theorem that all five regular Platonic solids admit omnihedral orbits, until now it was not known whether the cuboctahedron also admitted such an orbit.

The `cuboctahedron`, pictured below, is a quasiregular Archimedean polyhedron with 8 triangular faces and 6 square faces. It can be constructed by starting with a regular tetrahedron, cutting off the vertices, and beveling the edges.

<img width="500" height="490" alt="image" src="https://github.com/user-attachments/assets/896ae16c-8587-4926-8cee-da614f5b7c38" />

An `omnihedral orbit` is a periodic nonsingular billiard trajectory inside the polyhedron that touches each face precisely once before repeating.

# Proof Strategy

<img width="6000" height="3390" alt="image" src="https://github.com/user-attachments/assets/ec9af267-344b-4bcd-9684-f469c6827ad4" />


The proof strategy is to turn a geometric existence question into a finite collection of exact algebra checks. Instead of trying to draw every possible billiard path, the repo studies the order in which a hypothetical orbit could hit the 14 faces. Any omnihedral orbit can be cyclically re-indexed so that it starts on a chosen square face, and then the remaining work is to rule out every possible order of the other 13 faces.

For each proposed face order, the billiard reflections are unfolded: rather than making the path bounce inside the cuboctahedron, the faces are reflected into space so the path becomes a straight line. After one full circuit through the 14 faces, the accumulated unfolding is an affine isometry. There are two conceptual cases. If its linear part is not the identity, then any periodic orbit would have to lie on a forced invariant axis, leaving only a small exact check that the resulting candidate actually starts and crosses faces in the required nonsingular way. If the linear part is the identity, the unfolding is a translation, and the possible starting points form a polygonal region cut out by linear inequalities; the itinerary is impossible when those inequalities are infeasible.

The Lean project is intended to make every step of that reduction auditable. The geometry of the cuboctahedron is encoded with rational normals and offsets, the finite enumeration is represented by Lean definitions, and generated certificate files are treated only as data that Lean must verify. External scripts may help produce the certificates, but they are not part of the trusted proof. Once finished, the main theorem should say that no nonsingular period-14 billiard orbit touches every face exactly once, and `lake build` plus the axiom check should confirm that the proof contains no `sorry`, custom axioms, floating point approximations, `unsafe`, or `native_decide`.

# Technical Details

The formalization starts by separating continuous geometry from finite search. The continuous side defines period-14 billiard orbits, face interiors, reflection maps, unfolded copies of faces, and the theorem that a genuine nonsingular billiard orbit gives an `UnfoldedFeasible` straight-line witness. This part is not certificate enumeration: it is ordinary Lean mathematics over `Real`, showing that the physical billiard problem really reduces to a straight line meeting the correct unfolded face interiors in the correct order.

The finite side then compresses possible itineraries by using opposite face-pairs. Opposite faces have the same linear reflection, so after rotating any omnihedral orbit to begin on `Face.xp`, the 13 remaining hits can be represented by a length-13 `PairWord` rather than by all signed face choices at once. Lean proves that any started omnihedral sequence produces a valid pair-word with multiplicities `1, 2, 2, 2, 2, 2, 2`, giving exactly `97,297,200` pair-words. The repository also contains rank/unrank and coverage-manifest machinery so generated chunks can be checked to cover this exact finite set, not merely some externally chosen list.

For each pair-word, Lean splits on whether the accumulated linear part is the identity. In the non-identity case, a feasible orbit would force the line direction onto the fixed axis of the linear part. Certificates can then refute a word by exact rational checks such as: there is no nonzero fixed direction, a required forward-crossing sign is zero or wrong, the forced signed face sequence is not omnihedral, the forced starting point misses the `xp` face interior, or a candidate hit violates first-hit/interior conditions. These are optimized to avoid carrying a full continuous family: once the axis and start point are forced, the certificate checker only verifies the relevant algebraic obstruction.

In the identity-linear case, the affine unfolding is a translation. A sign mask records the signed choice inside each opposite face-pair, so each identity pair-word has `64` translation choices rather than an uncontrolled family of face sequences. The starting point on `Face.xp` is written as `(1, y, z)`, and the face-crossing order plus nonsingularity conditions become strict two-variable rational linear inequalities. Infeasibility is checked with sparse Farkas certificates: Lean verifies nonnegative rational multipliers whose weighted sum cancels the `y` and `z` coefficients and leaves an impossible strict inequality. This Farkas checker is a reusable theorem, not an enumeration result.

The generated-data strategy is now deliberately canonical-first. Pair-words avoid duplicating linear calculations across opposite signs, and translation sign masks package six independent sign choices into `Fin 64`. After cyclically starting at `Face.xp`, the finite search quotients by the full eight-element stabilizer of that started face: the symmetries generated by swapping `y` and `z` and independently negating them. Representative generated cases pass through a transport checker that derives the raw certificate result from a canonical certificate plus a Lean-checked checker-agreement condition and explicit shape checks. The independent checker records a canonical-orbit manifest covering all `97,297,200` pair-words and all `157,957,632` translation choices, with checks that the started symmetries are distinct, fix the `x` pair, and are closed under composition.

The next exhaustive phase also treats time reversal, exact-state grouping, prefix pruning, and shared witnesses as mandatory compression layers rather than optional cleanup. Reversal is introduced by reconstructing the exact started face sequence, reversing the itinerary, and re-extracting the pair word or translation mask, so mask transforms are not guessed bit operations. Non-identity cases are grouped by exact rational linear state, forced-axis/sign data, affine-axis data, and normalized failure kind. Translation cases are grouped by normalized strict constraint systems and shared sparse Farkas certificates. Flat one-certificate-per-case output is reserved for diagnostics only; the final generated Lean data should be compact canonical coverage plus Lean-checked transport, family, and shared-witness soundness.

The final proof will therefore not be just "Lean replayed a giant list." The giant list supplies finite obstructions, but other essential components are structural: the billiard-to-unfolding reduction, the pair-word counting and rank coverage, the linear identity/non-identity case split, the rational reflection algebra, the Farkas infeasibility theorem, and the certificate soundness theorems connecting every checked obstruction back to the original geometric claim.

# Background

In 2D mathematical billiards (like bouncing around inside a flat polygon), mathematicians have developed a beautiful, deep global theory over the last 40 years using Teichmüller dynamics and translation surfaces. This allows you to use complex analysis to write sweeping proofs about whole categories of shapes at once. 

None of this works in 3D. The jump from two dimensions to three shatters the elegant complex analysis tools that the field conventionally relies on. 3D mathematical billiards currently lacks any unifying global theory. As a result, studying orbits inside something like the cuboctahedron has generally involved computational simulation. Such simulation strongly suggests that the cuboctahedron does not admit an omnihedral orbit, but converting that into a rigorous proof has remained intractable. 

Now, with the advent of AI formal methods, combined with advances in Lean allowing mathematical proofs to be expressed as verifiable programs, it is possible to undertake the vast task of formalizing a complete, exhaustive proof, and this repo is an example of applying this new technique in mathematics to the problem space of understanding omnihedral orbits inside 3D polyhedra. The primary conceptual takeaway from this project is that AI formal methods and Lean are well-suited for problems whose solutions likely require both strategic technical and conceptual maneuvering through mathematics *and* various types of exhaustive case-by-case analysis.
