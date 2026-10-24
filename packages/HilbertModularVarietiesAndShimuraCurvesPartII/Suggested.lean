import Mathlib

/-!
# Hilbert modular varieties and Shimura curves, part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems that can be expressed against the pinned APIs, with only the
simple definitions needed to state them.

The following headline theorems are not statable at the pins:
* The quaternionic Gee–Kisin weight theorem needs the BDJ extension-class weight
  set and the quaternionic coefficient-cohomology multiplicity spaces.
* Functorial Shimura-curve patching and the big patched-module theorem need the
  global deformation datum, compatible tower coefficients and the patched module.
* Grade comparison with central variables, Cohen–Macaulay transfer and Iwasawa
  miracle flatness need the uniform analytic-group structure and its canonical
  dimension/depth interface on the native completed group algebra.
* Common-rank freeness for weights, tame types and projective lifts, and the
  locally algebraic support theorem, need the patching functor and tame K-types.
* Adjoint and glued-lattice freeness and first-order patched multiplicity need
  those functors, the projective-cover lattices and their Galois-type quotients.
* The weighted and unweighted Gelfand–Kirillov dimension theorems need the actual
  infinite-level quaternionic representation and its canonical dimension.
* The second-congruence structure theorem needs this representation and its
  first-order injective-envelope summands.
* Patched faithful flatness needs the actual big patched module and patched ring.
* Nonzero Banach lifts need these modules and the admissible unitary Banach
  category with integral Schikhof duality.
* Inert-prime big R = big T, faithful flatness of the completed-cohomology dual
  and the complete-intersection conclusion need the actual global deformation
  ring, completed Hecke image, quaternionic completed cohomology and its actions.

These constructions are targets of README.md, not additional axioms or ad hoc
encodings in this file. Numerical consequences are not substitutes for them.
-/

namespace TauCetiRoadmap.HilbertModularVarietiesAndShimuraCurvesPartII

universe u v w z

/-! ## Layer 1: Patching functors and the big patched module -/

/-- Hamann's power-invariance theorem for commutative local rings: an abstract
ring isomorphism between their one-variable power-series rings implies a ring
isomorphism between the coefficient rings (Hamann, Theorem 4, p. 155). -/
theorem powerSeries_cancellation
    (A : Type u) (B : Type v) [CommRing A] [CommRing B]
    [IsLocalRing A] [IsLocalRing B]
    (h : Nonempty (PowerSeries A ≃+* PowerSeries B)) :
    Nonempty (A ≃+* B) := by
  sorry

/-! ## Layer 2: Freeness over supports and noncommutative miracle flatness -/

/-- A module is free of rank r over its scheme-theoretic support when it is
A-linearly isomorphic to r copies of A modulo its annihilator. -/
def FreeRankOnSupport
    (A : Type u) [CommRing A] (M : Type v) [AddCommGroup M] [Module A M]
    (r : ℕ) : Prop :=
  Nonempty (M ≃ₗ[A] (Fin r → A ⧸ Module.annihilator A M))

/-- The fibre product of two linear maps to a common module, as the kernel of
their difference on the product. -/
def modulePullback
    {A : Type u} [CommRing A]
    {M₁ : Type v} [AddCommGroup M₁] [Module A M₁]
    {M₂ : Type w} [AddCommGroup M₂] [Module A M₂]
    {M : Type z} [AddCommGroup M] [Module A M]
    (f : M₁ →ₗ[A] M) (g : M₂ →ₗ[A] M) : Submodule A (M₁ × M₂) :=
  LinearMap.ker (f.comp (LinearMap.fst A M₁ M₂) -
    g.comp (LinearMap.snd A M₁ M₂))

/-- BHHMS Lemma 8.2.1: generation by r elements and the specified annihilator
quotient, together with rank-r freeness of a submodule and quotient over their
supports, imply rank-r freeness of the extension over its support. No local or
Noetherian assumption is imposed. -/
theorem freeRankOnSupport_of_extension
    (A : Type u) [CommRing A]
    (M : Type v) [AddCommGroup M] [Module A M]
    (N : Submodule A M) (r : ℕ) (hr : 1 ≤ r)
    (hN : FreeRankOnSupport A N r)
    (hQ : FreeRankOnSupport A (M ⧸ N) r)
    (hgen : ∃ f : (Fin r → A) →ₗ[A] M, Function.Surjective f)
    (hann : Nonempty
      (((Module.annihilator A (M ⧸ N)) ⧸
          Submodule.comap (Submodule.subtype (Module.annihilator A (M ⧸ N)))
            (Module.annihilator A M))
        ≃ₗ[A] (A ⧸ Module.annihilator A N))) :
    FreeRankOnSupport A M r := by
  sorry

/-- BHHMS Lemma 8.3.8: for two surjections between nonzero modules of a common
support rank over a Noetherian local ring, the pullback annihilator is the
intersection. Freeness of that rank is equivalent to the sum-ideal condition. -/
theorem modulePullback_freeRankOnSupport_iff
    (A : Type u) [CommRing A] [IsNoetherianRing A] [IsLocalRing A]
    (M₁ : Type v) [AddCommGroup M₁] [Module A M₁] [Nontrivial M₁]
    (M₂ : Type w) [AddCommGroup M₂] [Module A M₂] [Nontrivial M₂]
    (M : Type z) [AddCommGroup M] [Module A M] [Nontrivial M]
    (r : ℕ) (hr : 1 ≤ r)
    (h₁ : FreeRankOnSupport A M₁ r) (h₂ : FreeRankOnSupport A M₂ r)
    (h : FreeRankOnSupport A M r)
    (f : M₁ →ₗ[A] M) (g : M₂ →ₗ[A] M)
    (hf : Function.Surjective f) (hg : Function.Surjective g) :
    Module.annihilator A (modulePullback f g) =
        Module.annihilator A M₁ ⊓ Module.annihilator A M₂ ∧
      (FreeRankOnSupport A (modulePullback f g) r ↔
        Module.annihilator A M =
          Module.annihilator A M₁ ⊔ Module.annihilator A M₂) := by
  sorry

end TauCetiRoadmap.HilbertModularVarietiesAndShimuraCurvesPartII
