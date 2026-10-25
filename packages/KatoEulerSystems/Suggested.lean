import Mathlib

/-!
# KatoEulerSystems: representative target signatures

`README.md` is normative. This file records the light definitions and the milestones of the
roadmap that can be stated against the pinned Mathlib and Tau Ceti, with proved checks that fix
their conventions; it is not exhaustive.

Design choices made explicit here:

* The finite-level modular zeta classes, their reciprocity law and the cyclotomic bound belong
  to `PadicFamilies` §4.0; Iwasawa cohomology, open modular curves and scheme `K₂` are not
  available at the pins, so the theorems about them are README targets only.
* Torsion indices act on row vectors (`Matrix.vecMul`), which fixes the full-level convention of
  Layer 0.
* The Euler polynomial of Layer 2 is written in the variable `X = σ_ℓ⁻¹`, after evaluation at
  `t = ℓ⁻¹ σ_ℓ⁻¹` of the arithmetic-Frobenius characteristic polynomial.
* Kato's hypothesis 13.4(v) is the predicate `HasOneDimFixedSpace`; a unipotent element is one
  way to satisfy it, a semisimple element with eigenvalues `1, ζ` is another.
* The finite-support statement of Layer 4 is stated for noetherian rings of dimension at most
  two, so that it covers the non-domain `O[{±1}][[T]]` at `p = 2`.
-/

namespace TauCetiRoadmap.KatoEulerSystems

open Polynomial

/-! ## Layer 0: Siegel units beyond the normalized theta function -/

section Siegel

variable {U : Type*} [AddCommGroup U] [Module ℚ U]

/-- The smoothing operation `c²g − g_c` of target 0.1, on a rationalized unit group `U`: the
right-hand side of `[c-g_(α,β)] = c²[g_(α,β)] − [g_(cα,cβ)]`. -/
def rationalSmoothing (c : ℤ) (g gc : U) : U :=
  ((c : ℚ) ^ 2) • g - gc

/-- When multiplication by five fixes the torsion index, smoothing multiplies by `24`. -/
example (g : U) : rationalSmoothing 5 g g = (24 : ℚ) • g := by
  unfold rationalSmoothing
  rw [show ((5 : ℤ) : ℚ) ^ 2 = 24 + 1 by norm_num, add_smul, one_smul, add_sub_cancel_right]

/-- Only the rationalized unit is independent of the auxiliary integer: the integral smoothings
at `c = 5` and `c = 7` differ. -/
example : rationalSmoothing 5 (1 : ℚ) 1 ≠ rationalSmoothing 7 (1 : ℚ) 1 := by
  norm_num [rationalSmoothing]

end Siegel

/-- The action of `σ ∈ GL₂(ℤ/N)` on torsion indices, written on row vectors as in target 0.2:
`(α, β) ↦ (aα + cβ, bα + dβ)` for `σ = [[a, b], [c, d]]`. -/
def torsionIndexAction (σ : Matrix (Fin 2) (Fin 2) ℚ) (v : Fin 2 → ℚ) : Fin 2 → ℚ :=
  Matrix.vecMul v σ

/-- The upper shear moves `(1/5, 0)` to `(1/5, 1/5)`. -/
example : torsionIndexAction !![1, 1; 0, 1] ![1 / 5, 0] = ![1 / 5, 1 / 5] := by
  ext i
  fin_cases i <;> simp [torsionIndexAction, Matrix.vecMul, dotProduct, Fin.sum_univ_two]

/-- The lower shear fixes `(1/5, 0)`: transposing the action changes the previous value. -/
example : torsionIndexAction !![1, 0; 1, 1] ![1 / 5, 0] = ![1 / 5, 0] := by
  ext i
  fin_cases i <;> simp [torsionIndexAction, Matrix.vecMul, dotProduct, Fin.sum_univ_two]

/-- The leading q-exponent `B₂(x)/2` of the Siegel product of target 0.3, with the square on
`x` that Kato's 1.9 omits. -/
def siegelLeadingExponent (x : ℚ) : ℚ :=
  (x ^ 2 - x + 1 / 6) / 2

/-- At `a = 2, N = 5` the exponent is `−11/300`; the formula without the square gives
`−23/300`. -/
example : siegelLeadingExponent (2 / 5) = -11 / 300 := by
  norm_num [siegelLeadingExponent]

/-- The exponent is symmetric under `x ↦ 1 − x`. -/
example (x : ℚ) : siegelLeadingExponent (1 - x) = siegelLeadingExponent x := by
  unfold siegelLeadingExponent
  ring

/-- Target 0.3: the leading exponent is half the second Bernoulli polynomial, which is the
constant term `−ζ(x, −1)` of Kato's 3.10. -/
theorem siegelLeadingExponent_eq_bernoulli (x : ℚ) :
    siegelLeadingExponent x = (Polynomial.bernoulli 2).eval x / 2 := by
  sorry

/-! ## Layer 2: the Euler system of a newform and full-level classes -/

/-- The evaluated Euler factor of target 2.1 in the variable `X = σ_ℓ⁻¹`:
`1 − a ℓ^(−r) X + ε ℓ^(k−1−2r) X²`, for coefficients `a = conj(a_ℓ)` and `ε = conj(ε(ℓ))` in a
coefficient field `K` (the Hecke field or its completion). -/
noncomputable def katoEulerPolynomial {K : Type*} [Field K] (ell : ℕ) (a eps : K) (k r : ℤ) :
    K[X] :=
  1 - C (a * (ell : K) ^ (-r)) * X + C (eps * (ell : K) ^ (k - 1 - 2 * r)) * X ^ 2

/-- At `k = 2, r = 1, ℓ = 3, a = 2` the linear coefficient is `−2/3`. -/
example : (katoEulerPolynomial (K := ℚ) 3 2 1 2 1).coeff 1 = -2 / 3 := by
  simp [katoEulerPolynomial, coeff_one, coeff_C]
  norm_num

/-- Target 2.1: every Euler factor has constant term one. -/
theorem katoEulerPolynomial_eval_zero {K : Type*} [Field K] (ell : ℕ) (a eps : K) (k r : ℤ) :
    (katoEulerPolynomial ell a eps k r).eval 0 = 1 := by
  sorry

section FullLevel

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]

/-- The full-level Euler operator `1 − T′σ + ℓ S′σ²` of target 2.3, on a module with the dual
Hecke operators `T′`, `S′` and the inverse Frobenius `σ` as endomorphisms. -/
def fullLevelEulerOperator (ell : R) (T S σ : Module.End R M) : Module.End R M :=
  1 - T * σ + ell • (S * σ ^ 2)

/-- With all three operators the identity, the operator is multiplication by `ℓ`. -/
example (ell : R) : fullLevelEulerOperator ell (1 : Module.End R M) 1 1 = ell • 1 := by
  simp [fullLevelEulerOperator]

/-- With `σ = 0` both nonconstant terms vanish. -/
example (ell : R) (T S : Module.End R M) : fullLevelEulerOperator ell T S 0 = 1 := by
  simp [fullLevelEulerOperator]

end FullLevel

/-! ## Layer 3: modular filtration, Eisenstein series, periods and the real regulator -/

section Filtration

variable {F D : Type*} [Field F] [AddCommGroup D] [Module F D]

/-- The Hodge filtration of target 3.1: everything in degrees `≤ 0`, the modular-form step `M`
in degrees `1, …, k − 1`, and zero from degree `k` on. -/
def modularFiltration (k : ℤ) (M : Submodule F D) (i : ℤ) : Submodule F D :=
  if i ≤ 0 then ⊤ else if i ≤ k - 1 then M else ⊥

/-- At weight four the interior steps are the modular-form step, although `gr¹ = 0`. -/
example (M : Submodule F D) : modularFiltration 4 M 2 = M := by
  simp [modularFiltration]

/-- At weight four the step in degree four is zero. -/
example (M : Submodule F D) : modularFiltration 4 M 4 = ⊥ := by
  simp [modularFiltration]

/-- Target 3.1: in degrees `≤ 0` the filtration is everything. -/
theorem modularFiltration_nonpositive (k : ℤ) (M : Submodule F D) (i : ℤ) (hi : i ≤ 0) :
    modularFiltration k M i = ⊤ := by
  simp [modularFiltration, hi]

/-- Target 3.1: in the critical degrees `1, …, k − 1` the filtration is the modular-form step. -/
theorem modularFiltration_critical (k : ℤ) (M : Submodule F D) (i : ℤ) (h1 : 1 ≤ i)
    (h2 : i ≤ k - 1) : modularFiltration k M i = M := by
  unfold modularFiltration
  split_ifs <;> first | rfl | (exfalso; omega)

/-- Target 3.1: from degree `k` on the filtration is zero. -/
theorem modularFiltration_endpoint (k : ℤ) (M : Submodule F D) (i : ℤ) (hk : 1 ≤ k)
    (hi : k ≤ i) : modularFiltration k M i = ⊥ := by
  unfold modularFiltration
  split_ifs <;> first | rfl | (exfalso; omega)

/-- Target 3.1: the filtration is decreasing. -/
theorem modularFiltration_antitone (k : ℤ) (hk : 2 ≤ k) (M : Submodule F D) :
    Antitone (modularFiltration k M) := by
  sorry

end Filtration

/-- The sign `(−1)^(k−r−1) χ(−1)` selecting the period component in targets 3.3 and 5.3. -/
def criticalSign (k r : ℤ) (parity : ℤ) : ℤ :=
  (-1) ^ (k - r - 1).natAbs * parity

/-- At `k = 2, r = 1` an even character selects plus. -/
example : criticalSign 2 1 1 = 1 := by decide

/-- At `k = 4, r = 2` an even character selects minus. -/
example : criticalSign 4 2 1 = -1 := by decide

/-! ## Layer 4: image, nonvanishing and Iwasawa inputs before the canonical map -/

section Image

variable {K : Type*} [Field K]

/-- The upper unipotent `(v₀, v₁) ↦ (v₀ + x v₁, v₁)` of target 4.1. -/
def upperUnipotent {R : Type*} [CommRing R] (x : R) : (Fin 2 → R) →ₗ[R] (Fin 2 → R) :=
  Matrix.mulVecLin !![1, x; 0, 1]

/-- `upperUnipotent 2` sends `e₂` to `e₂ + 2e₁`. -/
example : upperUnipotent (2 : ℚ) ![0, 1] = ![2, 1] := by
  ext i
  fin_cases i <;> simp [upperUnipotent, Matrix.mulVec, dotProduct, Fin.sum_univ_two]

/-- Kato's hypothesis 13.4(v): the fixed space of `σ` is one-dimensional. -/
def HasOneDimFixedSpace {V : Type*} [AddCommGroup V] [Module K V] (σ : V →ₗ[K] V) : Prop :=
  Module.finrank K (LinearMap.ker (σ - LinearMap.id)) = 1

/-- The identity has a two-dimensional fixed space, so it does not satisfy the hypothesis. -/
example : ¬ HasOneDimFixedSpace (LinearMap.id : (Fin 2 → ℚ) →ₗ[ℚ] (Fin 2 → ℚ)) := by
  unfold HasOneDimFixedSpace
  rw [sub_self, LinearMap.ker_zero, finrank_top, Module.finrank_fin_fun]
  norm_num

/-- Target 4.1: over a field, `upperUnipotent x` satisfies Kato's hypothesis exactly when
`x ≠ 0`. -/
theorem upperUnipotent_hasOneDimFixedSpace_iff (x : K) :
    HasOneDimFixedSpace (upperUnipotent x) ↔ x ≠ 0 := by
  sorry

/-- Target 4.1: a semisimple element with eigenvalues `1` and `ζ ≠ 1` also satisfies Kato's
hypothesis, so admissibility does not require a unipotent element. -/
theorem diag_hasOneDimFixedSpace (ζ : K) (hζ : ζ ≠ 1) :
    HasOneDimFixedSpace (Matrix.mulVecLin !![(1 : K), 0; 0, ζ]) := by
  sorry

/-- Target 4.1, the obstruction at a quaternion-division coefficient place: if the image lies
in the units of a division algebra `B` acting on `V`, no element other than `1` fixes a nonzero
vector. -/
theorem ker_sub_one_eq_bot_of_division {B V : Type*} [DivisionRing B] [Algebra K B]
    [AddCommGroup V] [Module K V] (ι : B →ₐ[K] Module.End K V) (d : B) (hd : d ≠ 1) :
    LinearMap.ker (ι d - 1) = ⊥ := by
  sorry

end Image

section FiniteSupport

variable {R : Type*} [CommRing R] [IsNoetherianRing R]

/-- Target 4.5: over a noetherian ring of dimension at most two with finite residue fields, a
finitely generated module vanishing at every prime of height at most one is finite. -/
theorem finite_of_pseudoNull (hdim : ringKrullDim R ≤ 2)
    (hres : ∀ m : Ideal R, m.IsMaximal → Finite (R ⧸ m))
    (M : Type*) [AddCommGroup M] [Module R M] [Module.Finite R M]
    (h : ∀ (P : Ideal R) [P.IsPrime], P.height ≤ 1 →
      Subsingleton (LocalizedModule P.primeCompl M)) :
    Finite M := by
  sorry

/-- Target 4.5, Kato's finite-support step in 13.12: a finitely generated module killed by a
non-zero-divisor `μ` with `R/μR` free of `p`-torsion, and vanishing at every height-one prime not
containing `p`, is finite. -/
theorem finite_of_regular_annihilator (p : ℕ) (hdim : ringKrullDim R ≤ 2)
    (hres : ∀ m : Ideal R, m.IsMaximal → Finite (R ⧸ m))
    (M : Type*) [AddCommGroup M] [Module R M] [Module.Finite R M]
    (μ : R) (hμ : μ ∈ nonZeroDivisors R) (hμM : ∀ m : M, μ • m = 0)
    (hp : IsSMulRegular (R ⧸ Ideal.span {μ}) (p : R))
    (h : ∀ (P : Ideal R) [P.IsPrime], P.height = 1 → (p : R) ∉ P →
      Subsingleton (LocalizedModule P.primeCompl M)) :
    Finite M := by
  sorry

end FiniteSupport

/-! ## Layer 6: scalar regulators and elliptic periods -/

/-- The two unramified Euler factors `(1 − p^(r−1)α⁻¹)(1 − ε p^(k−r−1)α⁻¹)` of target 6.4, for a
root `α ≠ 0` and the value `ε = ε(p)` in a coefficient field `K`. At `α = 0`, where target 6.2 has
no scalar projection, the convention `x / 0 = 0` gives the value `1`, which the roadmap never
uses. -/
def ordinaryEulerFactor {K : Type*} [Field K] (p : ℕ) (k r : ℤ) (α eps : K) : K :=
  (1 - (p : K) ^ (r - 1) / α) * (1 - eps * (p : K) ^ (k - r - 1) / α)

/-- A split multiplicative refinement `α = 1` at weight two has a trivial zero. -/
example (p : ℕ) : ordinaryEulerFactor (K := ℚ) p 2 1 1 0 = 0 := by
  norm_num [ordinaryEulerFactor]

/-- A nonsplit refinement `α = −1` at weight two gives `2`, a nonunit at `p = 2`. -/
example (p : ℕ) : ordinaryEulerFactor (K := ℚ) p 2 1 (-1) 0 = 2 := by
  norm_num [ordinaryEulerFactor]

/-!
## Targets without carriers at the pins

The following targets of the README are not stated here, because their carriers (open modular
curves and their étale cohomology, scheme `K₂`, Iwasawa cohomology, `D_dR`, Kato's Eisenstein
series, the analytic p-adic L-function and Bloch–Kato Selmer groups) are not available at the
pins:
`rationalSiegelUnit` (with `rationalSiegelUnit_auxiliary` and `rationalSiegelUnit_smoothing`),
`siegelGaloisDistribution`, `siegelAnalyticProduct`,
`siegelDegeneracyProduct`, `k2NormProjection`, `k2ProjectionFormulaNorm`,
`k2AuxiliaryEulerFactor`, `katoEulerAdapter`, `heckeDualTwistDictionary`, `fullLevelZeta`,
`modularFiltration_identify`, `modularDualExp`, `katoEisensteinE`, `katoEisensteinF`,
`siegelUnit_dlog`, `periodMap`, `archimedeanEisensteinZeta`, `archimedeanCriticalValues`,
`operatorZeta`, `realRegulatorUnits`, `beilinsonArchimedeanRegulator`, `admissible_of_split`,
`integralImage_almostAll`, `irreducible_cyclotomic`, `analyticTwistNonvanishing`,
`katoHypotheses_to_rubin`, `modularEulerSystemBound`, `rationalIwasawaStructure`,
`twist_loc_comm`, `twist_specialize`, `serre_openImage`, `strictKernel_eq_dualSelmer`,
`katoZetaMap`, `katoZetaSubmodule`, `integralZetaFiniteIndex`, `zetaCriticalInterpolation`,
`twistedKatoZeta`, `parabolicIwasawa_torsionFree`, `parabolicExpStar_injective`,
`parabolicFullLevelCharacterisation`, `perrinRiouMap`, `katoScalarRegulator`,
`katoPeriodDictionary`, `noncriticalAnalyticArithmeticComparison`,
`criticalBadReductionComparison`, `ellipticLocalLattice`, `katoZeta_nonTorsion`,
`katoCohomologicalBound`, `ellipticCyclotomicFiniteGeneration`, `formalGroupUniversalNorms`,
`ellipticOrdinaryControl`, `blochKatoSelmer_finite`, `abelianBlochKatoComparison`,
`modularAbelianVariety_selmer_finite`, `modularAbelianVariety_cyclotomicFG`, `katoTamagawaBound`.
-/

end TauCetiRoadmap.KatoEulerSystems
