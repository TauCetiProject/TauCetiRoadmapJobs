import Mathlib

/-!
# Modular forms, Part II — noncongruence subgroups and unbounded denominators: target signatures

This file is not the roadmap. The roadmap is `README.md`; this file states, against the pinned
Mathlib and Tau Ceti, the headline theorems the finished roadmap proves, each with `sorry`, and
the three definitions those statements need.

Stated here:

* the modular λ function is a covering of `ℂ ∖ {0, 1}` whose fibres are the `Γ(2)`-orbits
  (README §2.2);
* the nonabelian Ihara lemma for a normal finite-index subgroup of geometric level dividing `N`
  (README §4.1);
* the unbounded denominators theorem of Calegari–Dimitrov–Tang (README §6.3) and its form for
  algebraic-integer Fourier coefficients (README §6.6);
* congruence of a component of a vector-valued modular form with an integral Fourier expansion
  (README §7.11) and the effective-span form of Mason's conjecture (README §7.12).

Headline theorems that are not statable at the pins:

* the equality `R₂N = M₂N` of the bounded-denominator and congruence modular-function fields
  (README §6.1), degree doubling (README §5.3) and the holonomy rank bound
  `[R₂N : ℚ(λ)] ≤ C N³ log(2N)` (README §3.8): the pinned libraries have no Laurent
  `q`-expansion of a weakly holomorphic form at a cusp, hence no embedding of weak modular
  functions into `ℚ((q^(1/N)))` over which these `ℚ(λ)`-spans are formed, and no integral
  holonomic ring (supplied by DiophantineApproximationAndTranscendencePartII Layer 4);
* algebraicity and congruence of integral solutions of three-point differential equations with
  finite local monodromy at `0` (README §§7.1–7.2): the pinned libraries have no analytic
  continuation of solutions of a linear differential operator and no local monodromy, nor the
  meromorphic-basis condition at a singular point;
* the arithmetic fundamental-group theorem for the cuspidal smooth model of `X(N)` (README §9.3):
  the pinned libraries have neither the regular model of `X(N)` over `𝓞_K` nor its cusp section.
-/

namespace TauCetiRoadmap.ModularFormsPartII

open UpperHalfPlane CongruenceSubgroup Matrix
open scoped MatrixGroups ModularForm Manifold

noncomputable section

/-! ## Layer 1: Weak forms and geometric levels -/

/-- A weak form of weight `k` for a subgroup `Γ` of `SL₂(ℤ)` (README §1.1): a holomorphic function
on the upper half-plane, invariant under the weight-`k` slash action of `Γ`, whose slash by every
`g ∈ SL₂(ℤ)` has at most exponential growth `O(exp(C·Im τ))` as `Im τ → ∞`. For finite-index `Γ`
this is the weakly holomorphic space of QSeriesPartitionsAndMockModularForms §8.1 (scalar,
trivial multiplier, integral weight); README §1.1 proves it is equivalent to meromorphy of every
cusp germ in its local parameter. -/
def IsWeakForm (Γ : Subgroup SL(2, ℤ)) (k : ℤ) (f : ℍ → ℂ) : Prop :=
  MDifferentiable 𝓘(ℂ) 𝓘(ℂ) f ∧ (∀ γ ∈ Γ, f ∣[k] γ = f) ∧
    ∀ g : SL(2, ℤ), ∃ C : ℝ,
      (f ∣[k] g) =O[atImInfty] fun τ : ℍ => Real.exp (C * τ.im)

/-! ## Layer 2: The modular λ coordinate -/

/-- The modular λ function (README §2.1): `λ(τ) = 16 (η(τ/2) η(2τ)² / η(τ)³)⁸`, built from the
Dedekind η function of Mathlib. With `q = exp(πiτ)` it equals
`16 q ∏_{n≥1} ((1 + q^(2n)) / (1 + q^(2n−1)))⁸ = 16q − 128q² + ⋯`; it takes the value `1/2` at
`τ = i` and the values `0, 1, ∞` at the cusps `∞, 0, 1` of `Γ(2)` (CDT, (1.0.2), p.628). -/
def modularLambda (τ : ℂ) : ℂ :=
  16 * (ModularForm.eta (τ / 2) * ModularForm.eta (2 * τ) ^ 2 / ModularForm.eta τ ^ 3) ^ 8

/-- The λ covering (README §2.2): λ maps the upper half-plane onto `ℂ ∖ {0, 1}`, it is a
covering map there, and two points have the same image exactly when they are in the same
`Γ(2)`-orbit. Hence `Γ(2)/{±I}` is the deck group and `λ` is the universal covering of the
twice-punctured plane. -/
theorem modularLambda_covering :
    Set.range (fun τ : ℍ => modularLambda τ) = {z : ℂ | z ≠ 0 ∧ z ≠ 1} ∧
      IsCoveringMapOn (fun τ : ℍ => modularLambda τ) {z : ℂ | z ≠ 0 ∧ z ≠ 1} ∧
      ∀ τ τ' : ℍ, modularLambda τ = modularLambda τ' ↔ ∃ γ ∈ Gamma 2, γ • τ = τ' := by
  sorry

/-! ## Layer 4: The nonabelian Ihara lemma -/

/-- The nonabelian Ihara lemma (README §4.1; CDT Lemma 4.4.1). Let `N ≥ 3`, let `p ∤ N` be prime,
and let `G` be a normal finite-index subgroup of `SL₂(ℤ)` containing every `SL₂(ℤ)`-conjugate
of `T^N`, that is, of geometric level dividing `N`. Write `c(g) = A g A⁻¹` for `A = diag(p, 1)` and
`g ∈ Γ(N) ∩ Γ₀(p)`. Then every pair of classes of `Γ(N)` modulo `G` is attained as the pair of
classes of `g` and `c(g)` for one `g ∈ Γ(N) ∩ Γ₀(p)`: the map
`Γ(N) ∩ Γ₀(p) → S × S`, `S = Γ(N)/(G ∩ Γ(N))`, is surjective. -/
theorem nonabelian_ihara (N p : ℕ) (hN : 3 ≤ N) (hp : p.Prime) (hpN : ¬ p ∣ N)
    (G : Subgroup SL(2, ℤ)) [G.Normal] [G.FiniteIndex]
    (hlevel : ∀ g : SL(2, ℤ), g * ModularGroup.T ^ N * g⁻¹ ∈ G)
    (c : ↥(Gamma N ⊓ Gamma0 p) →* ↥(Gamma N))
    (hc : ∀ g, ((c g : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ).map (Int.castRingHom ℚ) =
      Matrix.diagonal ![(p : ℚ), 1] *
        ((g : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ).map (Int.castRingHom ℚ) *
          Matrix.diagonal ![(p : ℚ)⁻¹, 1])
    (a b : ↥(Gamma N)) :
    ∃ g : ↥(Gamma N ⊓ Gamma0 p),
      (g : SL(2, ℤ)) * (a : SL(2, ℤ))⁻¹ ∈ G ∧ (c g : SL(2, ℤ)) * (b : SL(2, ℤ))⁻¹ ∈ G := by
  sorry

/-! ## Layer 6: The unbounded denominators theorem -/

/-- The unbounded denominators theorem (README §6.3; CDT Theorem 1.0.1). Let `Γ ≤ SL₂(ℤ)` have
finite index and let `f` be a weak form of integral weight `k` for `Γ`. If `f` has period `h ≥ 1`,
is bounded as `Im τ → ∞`, and every coefficient of its expansion in `exp(2πiτ/h)` is an integer,
then `f` is a weak form of weight `k` for some congruence subgroup. -/
theorem unbounded_denominators (Γ : Subgroup SL(2, ℤ)) [Γ.FiniteIndex] (k : ℤ) (f : ℍ → ℂ)
    (hf : IsWeakForm Γ k f) (h : ℕ) (hh : 0 < h)
    (hper : Function.Periodic (f ∘ UpperHalfPlane.ofComplex) h)
    (hbdd : UpperHalfPlane.IsBoundedAtImInfty f)
    (hint : ∀ n : ℕ, ∃ a : ℤ, (UpperHalfPlane.qExpansion h f).coeff n = a) :
    ∃ Γ' : Subgroup SL(2, ℤ), IsCongruenceSubgroup Γ' ∧ IsWeakForm Γ' k f := by
  sorry

/-- Unbounded denominators with algebraic-integer coefficients (README §6.6; CDT
Remarks 6.3.1–6.3.2). Under the hypotheses of `unbounded_denominators`, with every coefficient of
the expansion an algebraic integer instead of a rational integer, `f` is a weak form of weight `k`
for some congruence subgroup. -/
theorem algebraicInteger_unbounded_denominators (Γ : Subgroup SL(2, ℤ)) [Γ.FiniteIndex] (k : ℤ)
    (f : ℍ → ℂ) (hf : IsWeakForm Γ k f) (h : ℕ) (hh : 0 < h)
    (hper : Function.Periodic (f ∘ UpperHalfPlane.ofComplex) h)
    (hbdd : UpperHalfPlane.IsBoundedAtImInfty f)
    (hint : ∀ n : ℕ, IsIntegral ℤ ((UpperHalfPlane.qExpansion h f).coeff n)) :
    ∃ Γ' : Subgroup SL(2, ℤ), IsCongruenceSubgroup Γ' ∧ IsWeakForm Γ' k f := by
  sorry

/-! ## Layer 7: Differential equations and vector-valued forms -/

/-- A vector-valued modular form of weight `k` and dimension `n` for `PSL₂(ℤ)` (README §7.3; CDT
Definition 7.3.1): a representation `ρ` of `SL₂(ℤ)` trivial on `−I` with `ρ(T)` semisimple, and a
holomorphic `F : ℍ → ℂⁿ` with `F(γτ) = (cτ + d)^k ρ(γ) F(τ)` for every `γ = [[a, b], [c, d]]`, whose
components have moderate growth in vertical strips. -/
def IsVectorValuedForm {n : ℕ} (k : ℤ) (ρ : SL(2, ℤ) →* GL (Fin n) ℂ) (F : ℍ → Fin n → ℂ) :
    Prop :=
  ρ (-1) = 1 ∧
    Module.End.IsSemisimple
      (Matrix.toLin' ((ρ ModularGroup.T : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)) ∧
    (∀ j, MDifferentiable 𝓘(ℂ) 𝓘(ℂ) fun τ => F τ j) ∧
    (∀ (γ : SL(2, ℤ)) (τ : ℍ),
      F (γ • τ) = ((((γ : Matrix (Fin 2) (Fin 2) ℤ) 1 0 : ℂ) * τ +
          ((γ : Matrix (Fin 2) (Fin 2) ℤ) 1 1 : ℂ)) ^ k) •
        ((ρ γ : Matrix (Fin n) (Fin n) ℂ) *ᵥ F τ)) ∧
    ∀ j, ∀ a b C : ℝ, 0 < C → ∃ A B : ℝ, ∀ τ : ℍ,
      a ≤ τ.re → τ.re ≤ b → C ≤ τ.im → ‖F τ j‖ ≤ A * Real.exp (B * τ.im)

/-- Congruence of an integral component of a vector-valued modular form (README §7.11; CDT
Theorem 7.3.3). If some nonzero multiple of a component `F_j` has period `h ≥ 1`, is bounded as
`Im τ → ∞` and has integral expansion in `exp(2πiτ/h)`, then `F_j` is a weak form of weight `k`
for some principal congruence subgroup `Γ(M)`. Nothing is asserted about the other components. -/
theorem vectorValued_component_congruence {n : ℕ} (k : ℤ) (ρ : SL(2, ℤ) →* GL (Fin n) ℂ)
    (F : ℍ → Fin n → ℂ) (hF : IsVectorValuedForm k ρ F) (j : Fin n) (c : ℂ) (hc : c ≠ 0)
    (h : ℕ) (hh : 0 < h)
    (hper : Function.Periodic ((fun τ : ℍ => c * F τ j) ∘ UpperHalfPlane.ofComplex) h)
    (hbdd : UpperHalfPlane.IsBoundedAtImInfty fun τ : ℍ => c * F τ j)
    (hint : ∀ m : ℕ, ∃ a : ℤ,
      (UpperHalfPlane.qExpansion h fun τ : ℍ => c * F τ j).coeff m = a) :
    ∃ M : ℕ, 0 < M ∧ IsWeakForm (Gamma M) k fun τ => F τ j := by
  sorry

/-- Mason's conjecture in its effective-span form (README §7.12; CDT Corollary 7.3.4, corrected).
If every component of `F` has, after multiplication by a nonzero scalar, an integral expansion
in `exp(2πiτ/h_j)` for some period `h_j ≥ 1` and is bounded as `Im τ → ∞`, then some principal
congruence subgroup `Γ(M)` fixes every value `F(τ)`. The kernel of `ρ` itself contains `Γ(M)` only
when the values of `F` span `ℂⁿ`. -/
theorem vectorValued_effective_mason {n : ℕ} (k : ℤ) (ρ : SL(2, ℤ) →* GL (Fin n) ℂ)
    (F : ℍ → Fin n → ℂ) (hF : IsVectorValuedForm k ρ F)
    (hint : ∀ j : Fin n, ∃ c : ℂ, c ≠ 0 ∧ ∃ h : ℕ, 0 < h ∧
      Function.Periodic ((fun τ : ℍ => c * F τ j) ∘ UpperHalfPlane.ofComplex) h ∧
      UpperHalfPlane.IsBoundedAtImInfty (fun τ : ℍ => c * F τ j) ∧
      ∀ m : ℕ, ∃ a : ℤ, (UpperHalfPlane.qExpansion h fun τ : ℍ => c * F τ j).coeff m = a) :
    ∃ M : ℕ, 0 < M ∧ ∀ γ ∈ Gamma M, ∀ τ : ℍ, (ρ γ : Matrix (Fin n) (Fin n) ℂ) *ᵥ F τ = F τ := by
  sorry

end

end TauCetiRoadmap.ModularFormsPartII
