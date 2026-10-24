import Mathlib
import TauCeti.AlgebraicGeometry.AbelianVariety.Isogeny

/-!
# Heights, rational points and obstructions, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states headline theorems
against the pinned APIs. Intersection-field descent of abelian isogeny classes is
statable on the native abelian-variety and intermediate-field carriers.

The following headline theorems are not statable at the pins.
* The DGH level-case height inequality and its adelic comparison lack canonical
  heights for general polarized abelian schemes and Betti non-degeneracy.
* Family equidistribution lacks the invariant adelic measure and its Betti comparison.
* Uniform Bogomolov and the gap principle lack general abelian canonical heights,
  stable Faltings heights, polarization degrees and Ueno complements.
* Rémond's generalized Vojta and Mumford inequalities and his counting theorem
  lack general abelian canonical heights, cycle heights and difference-map fibres.
* The uniform count off the Ueno locus and uniform Mordell–Lang lack polarization
  degrees and the Ueno/coset interfaces on arbitrary abelian subvarieties.
* Uniform Manin–Mumford, curve Mordell–Lang and the DGH rational-point bound lack
  general Jacobians with their Abel–Jacobi curve embeddings and point groups.
* The Gao–Habegger and Xie–Yuan geometric Bogomolov theorems lack geometric trace,
  special subvarieties and canonical heights over polarized function fields.
* Yamaki's reduction lacks nonarchimedean abelian uniformization, the maximal
  nowhere-degenerate subvariety and the geometric trace quotient.
* Small-point bounds for potentially big families and the integral bound across
  characteristics lack adelic line bundles, potential bigness and restriction.
* Relative Bogomolov for the five curve-family maps lacks invariant adelic heights,
  the relative Jacobian maps and bigness over the field of constants.
* Yuan's uniform Bogomolov theorem over all global fields lacks twice-theta heights,
  stable Faltings heights and the isotrivial-pair interface on general Jacobians.
* Bielliptic uniform Manin–Mumford, uniform Bogomolov and unbounded torsion orders
  lack the genus-two Jacobian Abel embedding and its diagonal-lift polarization.

Euclidean packing and the linear core of subvariety descent are supporting results
in README.md, rather than replacements for these headline statements.
-/

namespace TauCetiRoadmap.HeightsRationalPointsAndObstructionsPartII

universe u

open CategoryTheory TauCeti.AlgebraicGeometry

/-! ## Layer 9: Geometric Bogomolov in all characteristics -/

/-- Two abelian varieties over algebraically closed intermediate fields with
intersection equal to the algebraically closed ground field, isogenous after
extension to a common field of finite transcendence degree, descend up to isogeny
to the ground field. The descended variety is unique up to isogeny.
Xie–Yuan, Proposition 3.2; no independence assumption on the two fields is made. -/
theorem isogenyClass_descends_intersection
    {k K : Type u} [Field k] [Field K] [Algebra k K] [IsAlgClosed k]
    (k₁ k₂ : IntermediateField k K) [IsAlgClosed k₁] [IsAlgClosed k₂]
    (hinter : k₁ ⊓ k₂ = ⊥) (htrdeg : Algebra.trdeg k K < Cardinal.aleph0)
    (A₁ : AbelianVariety k₁) (A₂ : AbelianVariety k₂)
    (hiso : ∃ f : A₁.baseChange K ⟶ A₂.baseChange K,
      AbelianVariety.IsIsogeny f) :
    ∃ A : AbelianVariety k,
      (∃ f : A.baseChange k₁ ⟶ A₁, AbelianVariety.IsIsogeny f) ∧
      (∃ f : A.baseChange k₂ ⟶ A₂, AbelianVariety.IsIsogeny f) ∧
      ∀ B : AbelianVariety k,
        (∃ f : B.baseChange k₁ ⟶ A₁, AbelianVariety.IsIsogeny f) →
        ∃ f : A ⟶ B, AbelianVariety.IsIsogeny f := by
  sorry

end TauCetiRoadmap.HeightsRationalPointsAndObstructionsPartII
