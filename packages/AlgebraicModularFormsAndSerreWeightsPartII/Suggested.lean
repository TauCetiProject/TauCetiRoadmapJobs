import Mathlib
import TauCeti.RepresentationTheory.SymmetricPower

/-!
# Algebraic modular forms and Serre weights, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned Mathlib and Tau Ceti APIs.

The small symmetric-power irreducibility theorem is statable on the native
symmetric power. The matrix representation below is the only definition needed
for that headline. Its coefficient field is in `Type`, matching the pinned
symmetric-power representation API, and need not be algebraically closed.

The following headline theorems are not statable at the pins:

* The all-component integral genus-two expansion principle and saturation lack
  the integral Siegel model, automorphic coefficient sheaves and cusp charts.
* Genus-two rank geometry and simple primary Hasse zeros lack the polarized
  integral Siegel models and their rank strata and crystalline deformation maps.
* Global secondary Hasse extension on spherical and paramodular levels and the
  spherical Cartier square root lack the BT1 crystal, determinant sheaves and
  nonordinary surface carriers.
* Equivariant torsion Hasse weight shifts and the two-affine minimal cover lack
  the Siegel section modules, Hasse sections and minimal formal model.
* Integral residual Hecke coefficients and the corrected Q2 theorem lack the
  covariant all-component binary-index series with level transports and the
  rational GSp4 double-coset coefficient action. A scalar operator identity on
  arbitrary endomorphisms would not state this theorem.
* Oriented neighbor reciprocity at tame level lacks the marked binary-index
  orbit/coset correspondence with its coefficient and cusp transports.
* Integral geometric T and Q2 actions with finite and K/O coefficients and
  formal Hartogs lack the integral coherent isogeny correspondences, the
  associated bundle cohomology and the open formal-model comparison.
* Geometric scalar and vector theta, and superspecial nonvanishing, lack the
  genus-two logarithmic de Rham bundle, connection, strata and section modules.
* Negative-weight vanishing and scalar/vector low-weight theta injectivity lack
  those geometric section modules and the normalized geometric theta maps.
* Saturated ordinary expansions, the injective integral classical comparison
  and the normalized Klingen comparison lack the full genus-two Igusa tower
  and its function module and geometric correspondence.

No formal-series substitute or proposition-valued proxy is asserted for these
geometric theorems.
-/

namespace TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII

/-! ## Layer 8: Theta operators and low-weight injectivity -/

/-- The standard two-dimensional representation of the finite special linear group,
with its matrix entries extended to the coefficient field. -/
def standardSL2 (p : ℕ) [Fact p.Prime] (k : Type) [Field k] [CharP k p] :
    Representation k (Matrix.SpecialLinearGroup (Fin 2) (ZMod p)) (Fin 2 → k) :=
  LinearEquiv.automorphismGroup.toLinearMapMonoidHom.comp
    (Matrix.SpecialLinearGroup.toLin'.comp
      (Matrix.SpecialLinearGroup.map (ZMod.castHom (dvd_refl p) k)))

/-- Symmetric powers through degree p-1 of the natural SL2(Fp) representation
are absolutely irreducible in characteristic p. -/
theorem smallSymmetricPower_irreducible (p : ℕ) [Fact p.Prime]
    (k : Type) [Field k] [CharP k p] (d : ℕ) (hd : d ≤ p - 1) :
    Representation.IsIrreducible ((standardSL2 p k).symmetricPower d) := by
  sorry

end TauCetiRoadmap.AlgebraicModularFormsAndSerreWeightsPartII
