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

The proof strategy is to turn a geometric existence question into a finite collection of exact algebra checks. Instead of trying to draw every possible billiard path, the repo studies the order in which a hypothetical orbit could hit the 14 faces. Any omnihedral orbit can be cyclically re-indexed so that it starts on a chosen square face, and then the remaining work is to rule out every possible order of the other 13 faces.

For each proposed face order, the billiard reflections are unfolded: rather than making the path bounce inside the cuboctahedron, the faces are reflected into space so the path becomes a straight line. After one full circuit through the 14 faces, the accumulated unfolding is an affine isometry. There are two conceptual cases. If its linear part is not the identity, then any periodic orbit would have to lie on a forced invariant axis, leaving only a small exact check that the resulting candidate actually starts and crosses faces in the required nonsingular way. If the linear part is the identity, the unfolding is a translation, and the possible starting points form a polygonal region cut out by linear inequalities; the itinerary is impossible when those inequalities are infeasible.

The Lean project is intended to make every step of that reduction auditable. The geometry of the cuboctahedron is encoded with rational normals and offsets, the finite enumeration is represented by Lean definitions, and generated certificate files are treated only as data that Lean must verify. External scripts may help produce the certificates, but they are not part of the trusted proof. Once finished, the main theorem should say that no nonsingular period-14 billiard orbit touches every face exactly once, and `lake build` plus the axiom check should confirm that the proof contains no `sorry`, custom axioms, floating point approximations, `unsafe`, or `native_decide`.

# Background

In 2D mathematical billiards (like bouncing around inside a flat polygon), mathematicians have developed a beautiful, deep global theory over the last 40 years using Teichmüller dynamics and translation surfaces. This allows you to use complex analysis to write sweeping proofs about whole categories of shapes at once. 

None of this works in 3D. The jump from two dimensions to three shatters the elegant complex analysis tools that the field conventionally relies on. 3D mathematical billiards currently lacks any unifying global theory. As a result, studying orbits inside something like the cuboctahedron has generally involved computational simulation. Such simulation strongly suggests that the cuboctahedron does not admit an omnihedral orbit, but converting that into a rigorous proof has remained intractable. 

Now, with the advent of AI formal methods, combined with advances in Lean allowing mathematical proofs to be expressed as verifiable programs, it is possible to undertake the vast task of formalizing a complete, exhaustive proof, and this repo is an example of applying this new technique in mathematics to the problem space of understanding omnihedral orbits inside 3D polyhedra. The primary conceptual takeaway from this project is that AI formal methods and Lean are well-suited for problems whose solutions likely require both strategic technical and conceptual maneuvering through mathematics *and* various types of exhaustive case-by-case analysis.
