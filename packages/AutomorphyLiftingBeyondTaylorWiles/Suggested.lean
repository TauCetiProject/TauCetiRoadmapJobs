import Mathlib

/-!
# Automorphy lifting beyond the Taylor–Wiles method: target signatures

The roadmap is README.md; this file is not the roadmap. It records the status of
its headline theorems against the pinned Mathlib and Tau Ceti APIs.

None of the following headline theorems is statable on the pinned carriers:

* The corrected local-ring comparison (CG18 Lemma 8.2) lacks the literal
  character-polynomial arithmetic deformation rings and their completed tensor
  objects.
* The numerical coincidence and auxiliary sets (CG18 Proposition 8.5) lack the
  local deformation conditions, relative adjoint Selmer groups, big-image
  detector and global representing rings. A numerical identity alone does not
  state that arithmetic theorem.
* The rank-two Taylor–Wiles level comparison (CG18 Lemma 9.6) lacks arithmetic
  quotient cohomology, its component-indexed level maps and coefficient
  transports, local systems and selected Hecke ideals.
* The GL_n distinct-root global comparison lacks the arithmetic tower, its
  localized smooth block module and the derived hyperspecial/parahoric
  comparison.
* The conditional PGL_n distinct-root comparison, with its principal-series
  block hypothesis at every successive base level, lacks central-character
  descent and the arithmetic tower and derived-cohomology carriers.
* The two arithmetic patched complexes and their maximal-depth top modules lack
  the finite-cutoff arithmetic patching data, deformation actions and paired
  coefficient comparisons.
* Near faithfulness (CG18 Theorem 9.19) lacks the minimal global deformation ring
  and the lowest arithmetic cohomology dual with its actual ring action.
* Minimal R = T with freeness lacks the arithmetic deformation and simultaneous
  Hecke image rings and their geometric module.
* Arbitrary-number-field cuspidal recognition lacks the locally symmetric
  quotient eigenspace and the automorphic representation carrier.
* The support-to-eigenclass deduction lacks the deformation point and the
  arithmetic cohomology action.
* The imaginary-quadratic and defect-zero applications lack those same
  arithmetic cohomology and automorphic carriers.

The support-to-eigenclass deduction (README Section 5.8) is a variant, under
the Res PGL_n hypothesis package of README Layer 2, of the conditional
weight-zero lifting endpoint (CG18 Theorem 5.16) stated by
ModularityAndLanglandsExtensions Section 2.8 for its GL_n form of Conjecture B;
it is not a copy of that endpoint.

No simple definitions suffice to supply these missing carriers. In particular,
an arbitrary complex, a bare polynomial identity or an unspecified automorphy
predicate would not be an acceptance signature for any of these results.
-/

namespace TauCetiRoadmap.AutomorphyLiftingBeyondTaylorWiles

end TauCetiRoadmap.AutomorphyLiftingBeyondTaylorWiles
