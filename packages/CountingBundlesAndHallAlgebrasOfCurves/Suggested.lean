import Mathlib

/-!
# Counting bundles and Hall algebras of curves: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs. Finite-field nilpotent matrix enumeration,
the structural counting input of Layer 1, is statable on Mathlib matrices.

The other headlines are not statable at the pins:
* The nilpotent-pair exponential identity and Jordan fibre masses lack the coherent
  rank-degree and Harder–Narasimhan groupoids of an actual curve.
* Green's bialgebra theorem and spherical HN membership lack the curve Hall algebra
  and its support completion.
* The generic spherical form and universal counting theorem lack that Hall carrier,
  reciprocal-invariant specialization and absolute bundle counts.
* Schiffmann's partition generating and residue formulas lack the compatible complete
  Adams-series calculus, ordered residue kernels and universal counts.
* The origin constant formula lacks the universal count and its regular extension to
  the paired affine cone.
* Stable canonical Higgs geometry and the central deformation comparison lack the
  coarse Higgs scheme, two-line Quot moment chart, character quotient and affine strata.
* The all-characteristic coprime Higgs count lacks canonical stable coarse moduli and
  rank-degree absolute bundle counts.
* Higgs purity and the compact Poincare formula lack the actual Higgs carrier and its
  Frobenius compact cohomology and complex comparison.
* The nilpotent-cone reciprocal trace and component formula lack the stable Hitchin
  zero fibre, its cohomology and the universal count.
* Mellit's Laurent integrality and degree independence lack the modified Macdonald
  admissible kernel and universal curve specialization.
* Positivity in every degree lacks the universal bundle-count invariant.
* Parabolic and slope-cut universality lack their curve-count carriers and specialization.
* The constructible spherical Hall Hopf and primitive Lie algebra theorem lacks
  constructible Euler pushforward on coherent moduli correspondences and the Hall carrier.

Layer 11 also formulates four conjectures; it does not assert their proofs.
-/

namespace TauCetiRoadmap.CountingBundlesAndHallAlgebrasOfCurves

/-! ## Layer 1: coherent decomposition and finite-field enumeration -/

/-- Over every finite field K and for every n, the number of nilpotent n by n
matrices is |K| raised to n(n - 1), including the empty matrix when n = 0.
This is the nilpotent enumeration used in the coherent endomorphism mass formula
(Schiffmann, Corollary 2.5 and its Fine–Herstein input, p. 309). -/
theorem nilpotent_matrix_count (K : Type*) [Field K] [Finite K] (n : ℕ) :
    Nat.card { M : Matrix (Fin n) (Fin n) K // IsNilpotent M } =
      Nat.card K ^ (n * (n - 1)) := by
  sorry

end TauCetiRoadmap.CountingBundlesAndHallAlgebrasOfCurves
