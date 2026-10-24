import Mathlib

/-!
# Geometric Frey–Mazur: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

The following headline theorems are not statable at the pins:
* The compact and filling-sensitive cusped systole asymptotics and surviving witness
  lack the scalar-level modular curve, its marked triangle quotient and compact metric.
* Signed reconstruction, Heegner and three-bicusp repulsion lack framed modular
  points, CM/cusp strata and ordinary/conjugate Hecke loci.
* The overlap dichotomy and big-diagonal multiplicity bound lack the modular
  fourfold, graph strata, tube geometry and weighted projection cycles.
* The Heegner, anti-Heegner and p-weighted bicusp multiplicity bounds lack
  modular analytic cycles, their stratum multiplicities and canonical degrees.
* Wreath-pullback ramification decay and complex bounded-gonality rigidity lack
  the quotient surface, scheme symmetric powers, gonality and normalized pencil pullback.
* Abramovich's gonality bound lacks the compact algebraic congruence curve and gonality.
* Full actual torsion monodromy over the complex numbers and all algebraically
  closed characteristic-zero fields lacks relative nonisotrivial elliptic schemes,
  their finite frame torsors and the gonality carrier.
* The geometric Hom lattice and scalar-compatible isogeny descent lack relative
  nonisotriviality and compatible geometric Hom/torsion comparison carriers.
* Uniform geometric rigidity lacks the algebraic modular surface, Hecke loci and gonality.
* Geometric Frey–Mazur over the original open base lacks the relative elliptic-scheme,
  finite étale torsion-isomorphism and gonality carriers. Its function-field form
  also lacks intrinsic gonality of the proper model and the compatible geometric
  torsion/isogeny interface.
* Bounded-genus rigidity, the rational/elliptic-curve classification and the
  known-curve minimal-model theorem lack the quotient surface, cyclic quotient
  resolution, strict-transform curve classes and contraction carrier.
-/

namespace TauCetiRoadmap.GeometricFreyMazur

open scoped MatrixGroups

/-! ## Layer 8: Modular gonality and full linear monodromy -/

/-- Every proper subgroup of SL₂ over the prime field of order p ≥ 5 has index at least p. -/
theorem sl2_proper_subgroup_index (p : ℕ) [Fact p.Prime] (hp : 5 ≤ p)
    (H : Subgroup (Matrix.SpecialLinearGroup (Fin 2) (ZMod p))) (hH : H ≠ ⊤) :
    p ≤ H.index := by
  sorry

/-- Every proper subgroup of PSL₂ over the prime field of order p ≥ 5 has index at least p. -/
theorem psl2_proper_subgroup_index (p : ℕ) [Fact p.Prime] (hp : 5 ≤ p)
    (H : Subgroup (Matrix.ProjectiveSpecialLinearGroup (Fin 2) (ZMod p))) (hH : H ≠ ⊤) :
    p ≤ H.index := by
  sorry

/-- A surjective actual SL₂(𝔽_p) representation, p > 3, has no quadratic scalar
self-twist with an invertible intertwiner. The acting group may be arbitrary. -/
theorem no_quadratic_self_twist (p : ℕ) [Fact p.Prime] (hp : 3 < p)
    (Γ : Type*) [Group Γ]
    (ρ : Γ →* Matrix.SpecialLinearGroup (Fin 2) (ZMod p))
    (hρ : Function.Surjective ρ) (χ : Γ →* (ZMod p)ˣ)
    (hχ : ∀ γ : Γ, χ γ ^ 2 = 1)
    (A : Matrix.GeneralLinearGroup (Fin 2) (ZMod p))
    (hA : ∀ γ : Γ,
      (A : Matrix (Fin 2) (Fin 2) (ZMod p)) * (ρ γ : Matrix (Fin 2) (Fin 2) (ZMod p)) =
        (χ γ : ZMod p) •
          ((ρ γ : Matrix (Fin 2) (Fin 2) (ZMod p)) *
            (A : Matrix (Fin 2) (Fin 2) (ZMod p)))) :
    χ = 1 := by
  sorry

end TauCetiRoadmap.GeometricFreyMazur
