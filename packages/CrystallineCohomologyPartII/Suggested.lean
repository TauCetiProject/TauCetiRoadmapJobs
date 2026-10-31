import Mathlib
import TauCeti.AlgebraicGeometry.Cohomology.Basic

/-!
# Crystalline cohomology, Part II (Witt vector cohomology of singular varieties): target signatures

The roadmap is `README.md`; this file is not the roadmap. It states, against the pinned Mathlib
and Tau Ceti, the headline theorems of the roadmap that are statable there, each with `sorry`.
Every target, API list and Check lives in the README.

Statable at the pins, and stated below:

* the Ax–Katz congruence modulo `q` for complete intersections of small degree in projective
  space (README §6.6), as `card_projectiveZeroLocus_modEq_one`, and its affine form,
  `card_dvd_card_solutions_of_sum_lt`, which strengthens Mathlib's Chevalley–Warning theorem
  `char_dvd_card_solutions_of_sum_lt` from `p` to `q`;
* the absolute form of the point-count consequence of Berthelot–Bloch–Esnault (README §6.4
  (iv)): a proper scheme over a finite field whose global functions are the constants and whose
  structure sheaf has no higher cohomology has a number of rational points congruent to `1`
  modulo `q`, as `card_rationalPoints_modEq_one_of_cohomology_vanishing`. Its cohomology is
  Tau Ceti's sheaf cohomology `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` of the
  structure sheaf `SheafOfModules.unit`.

Not statable at the pins (each is a README target):

* Berthelot–Bloch–Esnault's comparison of compactly supported Witt vector cohomology with the
  slope `< 1` part of rigid cohomology with compact supports (§3.6), and the identity
  `ζ^{<1}(X, t) = ζ^W(X, t)` (§6.2): Mathlib and Tau Ceti have neither rigid cohomology nor
  the Witt vector sheaves `W_n 𝒪_X`, `W 𝒪_X` of a scheme and their cohomology.
* Bhatt–Scholze's h-descent for Frobenius-inverted Witt vector cohomology (§§1.5–1.6):
  no h-topology and no Witt vector sheaves of schemes.
* The relative point-count congruence `|X(F_q)| ≡ |Y(F_q)| mod q` for a morphism `f : X → Y` of
  proper `F_q`-schemes inducing isomorphisms `H^i(Y, 𝒪_Y) ≅ H^i(X, 𝒪_X)` (§6.4 (ii)): the
  pinned sheaf cohomology of schemes is functorial in the coefficient sheaf only, with no
  pullback along a morphism of schemes.
* Serre's congruence `|Θ(F_q)| ≡ |Θ'(F_q)| mod q` for theta divisors (§6.9): Tau Ceti has
  abelian varieties but no ample line bundles or principal polarizations on them.
* The theorems on Witt-rational singularities (§§5.4, 5.6, 5.12): no Witt vector
  sheaves, no Witt canonical sheaves, no isogeny category of sheaves on schemes.
* Esnault's vanishing and point count for universally `CH_0`-trivial varieties and their
  WO-rational degenerations (§§6.13–6.14): no Chow groups of zero-cycles and no Witt
  vector cohomology.
-/

universe u

open AlgebraicGeometry CategoryTheory MvPolynomial

namespace TauCetiRoadmap.CrystallineCohomologyPartII

/-! ## Layer 6: Point counts modulo q and Esnault's theorem -/

/-- **Ax–Katz modulo `q`** (Berthelot–Bloch–Esnault, Corollary 1.5, from Proposition 6.8 and
Corollary 1.3). Let `K` be a finite field and `F₀, …, F_{r-1}` homogeneous polynomials in
`n + 1` variables over `K` of degrees `d_j ≥ 1` with `∑ d_j ≤ n`. Then the number of points of
`ℙⁿ(K)` at which all `F_j` vanish is congruent to `1` modulo `|K|`. A point of the
projectivization is tested on its chosen representative; homogeneity makes the condition
independent of that choice. -/
theorem card_projectiveZeroLocus_modEq_one {K : Type*} [Field K] [Fintype K] {n r : ℕ}
    (F : Fin r → MvPolynomial (Fin (n + 1)) K) (d : Fin r → ℕ)
    (hF : ∀ j, (F j).IsHomogeneous (d j)) (hd : ∀ j, 1 ≤ d j) (hsum : ∑ j, d j ≤ n) :
    Nat.card {x : Projectivization K (Fin (n + 1) → K) // ∀ j, eval x.rep (F j) = 0} ≡ 1
      [MOD Fintype.card K] := by
  sorry

/-- **Ax's theorem modulo `q`**, the affine form of `card_projectiveZeroLocus_modEq_one`.
For polynomials `f_i` (`i ∈ s`) in finitely many variables over a finite field `K` whose total
degrees add up to less than the number of variables, the number of common zeros in `K^σ` is
divisible by `|K|`. Mathlib's `char_dvd_card_solutions_of_sum_lt` gives divisibility by the
characteristic only. -/
theorem card_dvd_card_solutions_of_sum_lt {K σ ι : Type*} [Field K] [Fintype K] [Fintype σ]
    {s : Finset ι} {f : ι → MvPolynomial σ K}
    (h : ∑ i ∈ s, (f i).totalDegree < Fintype.card σ) :
    Fintype.card K ∣ Nat.card {x : σ → K // ∀ i ∈ s, eval x (f i) = 0} := by
  sorry

/-- **Point counts of proper schemes without higher structure-sheaf cohomology**
(Berthelot–Bloch–Esnault, Corollary 1.6 for the structure morphism `X → Spec F_q`). Let `K` be a
finite field and `π : X → Spec K` proper, such that `π` identifies `K` with the global functions
`Γ(X, 𝒪_X)` and `H^i(X, 𝒪_X) = 0` for every `i ≥ 1`. Then the number of `K`-rational points of
`X`, the sections of `π`, is congruent to `1` modulo `|K|`. -/
theorem card_rationalPoints_modEq_one_of_cohomology_vanishing {K : Type u} [Field K] [Fintype K]
    {X : Scheme.{u}} (π : X ⟶ Spec (.of K)) [IsProper π]
    (hΓ : Function.Bijective π.appTop)
    (hH : ∀ i, 0 < i →
      Subsingleton (TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology
        (SheafOfModules.unit X.ringCatSheaf) i)) :
    Nat.card {s : Spec (.of K) ⟶ X // s ≫ π = 𝟙 _} ≡ 1 [MOD Fintype.card K] := by
  sorry

end TauCetiRoadmap.CrystallineCohomologyPartII
