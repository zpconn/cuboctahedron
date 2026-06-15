# Cuboctahedron Omnihedral Billiards

This repo contains a fully formalized proof of the following theorem in Lean 4:

```
It is not possible to construct an omnihedral orbit inside the cuboctahedron.
```

As of June 2026, this appears to be a novel result in mathematics, though of minor curiosity at best. While it is a celebrated mathematical theorem that all five regular Platonic solids admit omnihedral orbits, until now it was not known whether the cuboctahedron also admitted such an orbit.

The `cuboctahedron`, pictured below, is a quasiregular Archimedean polyhedron with 8 triangular faces and 6 square faces. It can be constructed by starting with a regular tetrahedron, cutting off the vertices, and beveling the edges.

<img width="500" height="490" alt="image" src="https://github.com/user-attachments/assets/896ae16c-8587-4926-8cee-da614f5b7c38" />

An `omnihedral orbit` is a periodic nonsingular billiard trajectory inside the polyhedron that touches each face precisely once before repeating.

# Background

In 2D mathematical billiards (like bouncing around inside a flat polygon), mathematicians have developed a beautiful, deep global theory over the last 40 years using Teichmüller dynamics and translation surfaces. This allows you to use complex analysis to make sweeping, absolute proofs about whole categories of shapes at once. None of this works in 3D. The jump from two dimensions to three completely shatters the elegant complex-analysis tools we rely on. 3D mathematical billiards currently lacks any unifying global theory. As a result, studying orbits inside something like the cuboctahedron has generally involved computational simulation. Such simulation strongly suggests that the cuboctahedron does not admit an omnihedral orbit, but converting that into a rigorous proof has remained intractable. Now, with the advent of AI formal methods, it is possible to undertake the vast task of formalizing a complete, exhaustive proof.
