import Mathlib
import TauCeti.Geometry.Hodge.Tate.Basic

/-!
# PeriodsAndSpecialValues: representative target signatures

**This file is not the roadmap and it is not exhaustive.** The definitive specification is
`README.md`. This file records light definitions with real bodies and milestone signatures that
can be stated against the pinned Mathlib and Tau Ceti; proving every item here does not by itself
complete a layer. Motives and their realizations, formal periods, fundamental lines, relative
K-groups, Selmer complexes, Bloch–Kato measures, the resolved quartic family, crystalline
cohomology, mixed Tate motives and Brown's motivic algebra have no carriers at the pins; their
targets are specified in `README.md` only.

Design choices made explicit here:

* integration is `β` and Deligne's comparison is `I = β⁻¹`; the scalar of `I` on `ℚ(n)` is
  `tatePeriod n = (2πi)^n`, supplied separately from the Tau Ceti Hodge structure
  `TauCeti.Hodge.tate`, whose lattice map is the plain inclusion `ℤ → ℂ`;
* period classes in one selected embedding are compared by a unit of the coefficient field;
* Mathlib's `Complex.Gammaℂ` is Deligne's `Γ_ℂ`; BCGP's convention is `gammaComplexBCGP`;
* the total value of Mathlib's `Complex.Gamma` at a pole is `0`, so regularity of `Γ_ℝ` at an
  integer is the statement `Complex.Gammaℝ m ≠ 0`;
* multiple zeta values use strictly decreasing summation indices, and the total sum
  `multipleZeta` has its analytic meaning only on admissible indices;
* quartic matrices act on the marked basis `(h, e, f)`; quintic matrices are in the
  column-input convention; the Hoffman coefficient example has source rows and target columns.
-/

set_option autoImplicit false

noncomputable section

namespace TauCetiRoadmap.PeriodsAndSpecialValues

open scoped BigOperators
open MeasureTheory

/-! ## Layer PS.0: comparison spaces and period lines -/

/-- Two nonzero periods in one selected complex embedding of the coefficient field `E` have the
same class when one unit of `E` relates them. The simultaneous class over all embeddings is a
README target (PS.0.3). -/
def CoordinatePeriodEquivalent (E : Type*) [Field E] [Algebra E ℂ] (α β : ℂˣ) : Prop :=
  ∃ u : Eˣ, (α : ℂ) = algebraMap E ℂ (u : E) * (β : ℂ)

/-- Column-coordinate covariance of the comparison determinant (PS.0.1): changing the Betti
basis by `A` and the de Rham basis by `C` replaces `P` by `C⁻¹ P A`. -/
theorem comparisonMatrix_det_basisChange {n : ℕ} (A C P : Matrix (Fin n) (Fin n) ℂ) :
    (C⁻¹ * P * A).det = (C.det)⁻¹ * P.det * A.det := by
  sorry

/-- `2` and `1` have the same `ℚ`-class in one embedding. -/
example : CoordinatePeriodEquivalent ℚ (Units.mk0 (2 : ℂ) two_ne_zero) 1 :=
  ⟨Units.mk0 2 two_ne_zero, by simp⟩

/-- `i` and `1` do not: no rational number has image `i`. -/
example : ¬ CoordinatePeriodEquivalent ℚ (Units.mk0 Complex.I Complex.I_ne_zero) 1 := by
  rintro ⟨u, hu⟩
  have h := congrArg Complex.im hu
  simp at h

/-- The scalar of Deligne's comparison `I = β⁻¹` on the Tate object `ℚ(n)` for the
counterclockwise loop and `dz/z` (PS.0.5). -/
def tatePeriod (n : ℤ) : ℂ := (2 * (Real.pi : ℂ) * Complex.I) ^ n

/-- The geometric infinity involution acts on `ℚ(n)` by `(-1)^n`. -/
def tateInfinitySign (n : ℤ) : ℤˣ := Int.negOnePow n

/-- Tate periods multiply under tensor products of Tate objects. -/
theorem tatePeriod_add (m n : ℤ) : tatePeriod (m + n) = tatePeriod m * tatePeriod n := by
  sorry

example : tatePeriod 0 = 1 := by
  simp [tatePeriod]

example : tatePeriod (-1) = (2 * (Real.pi : ℂ) * Complex.I)⁻¹ := by
  simp [tatePeriod]

/-- `F∞ = -1` on `ℚ(1)`, although the lattice of `TauCeti.Hodge.tate 1` is fixed by its
conjugation. -/
example : tateInfinitySign 1 = -1 := by
  simp [tateInfinitySign]

/-- The integration matrix of the two Legendre ovals, with cycles as rows and forms as columns
(PS.0.5). Its interpretation as an actual pairing is a README target. -/
def ellipticIntegrationMatrix (K J H : ℂ) : Matrix (Fin 2) (Fin 2) ℂ :=
  !![2 * K, 2 * J; 2 * Complex.I * K, 2 * Complex.I * H]

/-- Nonsingularity follows from the positive integral inequalities `0 < J < K < H` in PS.0.5. -/
theorem ellipticIntegrationMatrix_det (K J H : ℂ) :
    (ellipticIntegrationMatrix K J H).det = 4 * Complex.I * K * (H - J) := by
  norm_num [ellipticIntegrationMatrix, Matrix.det_fin_two]
  ring

/-- A nonsingular two-term witness fixes both the factor four and the imaginary sign. -/
example : (ellipticIntegrationMatrix 1 0 2).det = 8 * Complex.I := by
  rw [ellipticIntegrationMatrix_det]
  ring

/-- Equal second-column parameters collapse the determinant; inversion requires a genuine basis. -/
example : (ellipticIntegrationMatrix 1 1 1).det = 0 := by
  rw [ellipticIntegrationMatrix_det]
  ring

/-- Deligne's comparison in the Betti cohomology basis dual to the row cycles of the
integration matrix. Its interpretation as a comparison requires a nonsingular matrix (PS.0.5). -/
def ellipticComparisonMatrix (B : Matrix (Fin 2) (Fin 2) ℂ) : Matrix (Fin 2) (Fin 2) ℂ := B⁻¹

/-- A nonsymmetric matrix distinguishes the inverse from the inverse transpose. -/
example : ellipticComparisonMatrix !![1, 2; 0, 1] = !![1, -2; 0, 1] := by
  apply Matrix.inv_eq_left_inv
  ext i j
  fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]

/-- The dual-cycle basis sends the identity integration matrix to the identity comparison. -/
example : ellipticComparisonMatrix 1 = 1 := by
  simp [ellipticComparisonMatrix]

/-! ## Layer PS.1: critical values and algebraicity statements -/

/-- `Γ_ℝ` is regular at the integer `m`: `m ∉ {0, -2, -4, …}` (PS.1.3). -/
def RealGammaRegular (m : ℤ) : Prop := ∀ k : ℕ, m ≠ -2 * (k : ℤ)

/-- With Mathlib's convention that `Γ` takes the value `0` at its poles, regularity of `Γ_ℝ`
at an integer is nonvanishing of `Complex.Gammaℝ` there. -/
theorem realGammaRegular_iff (m : ℤ) : RealGammaRegular m ↔ Complex.Gammaℝ (m : ℂ) ≠ 0 := by
  sorry

/-- Criticality for the unit motive `ℚ(0)`: both `Γ_ℝ(s)` and its dual `Γ_ℝ(1 - s)` regular. -/
def UnitCritical (m : ℤ) : Prop := RealGammaRegular m ∧ RealGammaRegular (1 - m)

/-- The critical integers of one real Hodge pair `p < q`. -/
def OffDiagonalCritical (p q m : ℤ) : Prop := p < m ∧ m ≤ q

/-- The critical integers of `ℚ(0)` are the positive even and the negative odd integers. -/
theorem unitCritical_iff (m : ℤ) :
    UnitCritical m ↔ (∃ k : ℕ, m = 2 * ((k : ℤ) + 1)) ∨ (∃ k : ℕ, m = -(2 * (k : ℤ) + 1)) := by
  sorry

/-- `2` and `-1` are critical for `ℚ(0)`. -/
example : UnitCritical 2 ∧ UnitCritical (-1) := by
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩ <;> intro k <;> omega

/-- `0` is not critical, and `1` passes the first test but fails the dual one. -/
example : ¬ UnitCritical 0 ∧ RealGammaRegular 1 ∧ ¬ UnitCritical 1 :=
  ⟨fun h => h.1 0 (by simp), fun k => by omega, fun h => h.2 0 (by simp)⟩

/-- An elliptic curve (Hodge pair `(0, 1)`) has the single critical integer `1`. -/
example : ∀ m : ℤ, OffDiagonalCritical 0 1 m ↔ m = 1 := by
  intro m
  simp only [OffDiagonalCritical]
  omega

/-- BCGP's complex Gamma factor `(2π)^{-s} Γ(s)`, without Deligne's factor `2`. -/
def gammaComplexBCGP (s : ℂ) : ℂ := (2 * (Real.pi : ℂ)) ^ (-s) * Complex.Gamma s

/-- The two complex Gamma conventions differ by `2` per block (PS.1.2). -/
theorem gammaℂ_eq_two_mul_gammaComplexBCGP (s : ℂ) :
    Complex.Gammaℂ s = 2 * gammaComplexBCGP s := by
  sorry

/-- BCGP's factor at `s = 1`, half of Deligne's `Γ_ℂ(1) = 1/π`. -/
theorem gammaComplexBCGP_one : gammaComplexBCGP 1 = 1 / (2 * (Real.pi : ℂ)) := by
  sorry

/-- Membership of a finite value in the coefficient field times a fixed nonzero period; a zero
value is allowed (PS.1.4). -/
def FixedPeriodAlgebraic (E : Type*) [Field E] [Algebra E ℂ] (L c : ℂ) : Prop :=
  c ≠ 0 ∧ ∃ a : E, L = algebraMap E ℂ a * c

/-- The unit refinement: the coefficient is a nonzero element of `E`. -/
def FixedPeriodUnitAlgebraic (E : Type*) [Field E] [Algebra E ℂ] (L c : ℂ) : Prop :=
  c ≠ 0 ∧ ∃ a : Eˣ, L = algebraMap E ℂ (a : E) * c

/-- Rescaling the chosen period by a unit of `E` does not change membership. -/
theorem fixedPeriodAlgebraic_rescale (E : Type*) [Field E] [Algebra E ℂ] (L c : ℂ) (u : Eˣ) :
    FixedPeriodAlgebraic E L (algebraMap E ℂ (u : E) * c) ↔ FixedPeriodAlgebraic E L c := by
  sorry

/-- Deligne's normalization of `ζ(2)`: the finite value divided by the `ℚ(2)` period. -/
theorem riemannZeta_two_div_tatePeriod : riemannZeta 2 / tatePeriod 2 = -1 / 24 := by
  sorry

theorem fixedPeriodAlgebraic_riemannZeta_two :
    FixedPeriodAlgebraic ℚ (riemannZeta 2) (tatePeriod 2) := by
  sorry

/-- A zero value is algebraic but not a unit multiple of the period. -/
example : FixedPeriodAlgebraic ℚ 0 1 ∧ ¬ FixedPeriodUnitAlgebraic ℚ 0 1 := by
  refine ⟨⟨one_ne_zero, 0, by simp⟩, ?_⟩
  rintro ⟨-, a, ha⟩
  rw [mul_one] at ha
  exact a.ne_zero ((map_eq_zero_iff _ (algebraMap ℚ ℂ).injective).mp ha.symm)

/-- A zero period is never admitted. -/
example : ¬ FixedPeriodAlgebraic ℚ 0 0 := fun h => h.1 rfl

/-! ## Layer PS.2: formal periods and the evaluation map -/

/-- Evaluation of the coordinate algebra `ℚ[t, t⁻¹]` of the rank-one Tate torsor at the
comparison point, `t ↦ 2πi` (PS.2.3). The effective algebra `ℚ[t]` is not enough. -/
def tateTorsorEvaluation : LaurentPolynomial ℚ →+* ℂ :=
  LaurentPolynomial.eval₂ (algebraMap ℚ ℂ) (Units.mk0 _ Complex.two_pi_I_ne_zero)

theorem tateTorsorEvaluation_T (n : ℤ) :
    tateTorsorEvaluation (LaurentPolynomial.T n) = tatePeriod n := by
  sorry

/-- The inverse Tate period evaluates to the inverse of `2πi`. -/
example : tateTorsorEvaluation (LaurentPolynomial.T 1 * LaurentPolynomial.T (-1)) = 1 := by
  rw [← LaurentPolynomial.T_add]
  simp

/-! ## Layers PS.3–PS.6

Fundamental lines and their regulator trivializations, integral fundamental lattices, the equivariant Tamagawa obstruction, Bloch–Kato points and
measures, and the elliptic and Rankin–Selberg comparisons need determinant lines of perfect
complexes, relative K-groups and Selmer complexes that are not at the pins. Their targets are in
`README.md`. -/

/-! ## Layer PS.7: certified computations and the research boundary -/

/-- The partial sum `Σ_{k ≤ N} (-1)^k/(2k+1)` of the arctangent series at `1`. -/
def arctanPartial (N : ℕ) : ℚ :=
  ∑ k ∈ Finset.range (N + 1), (-1 : ℚ) ^ k / (2 * (k : ℚ) + 1)

/-- The signed remainder bound, giving rational endpoints for `π/4` (PS.7.1). -/
theorem arctan_period_bounds (N : ℕ) :
    0 ≤ (-1 : ℝ) ^ (N + 1) * (Real.pi / 4 - (arctanPartial N : ℝ)) ∧
      (-1 : ℝ) ^ (N + 1) * (Real.pi / 4 - (arctanPartial N : ℝ)) ≤ 1 / (2 * (N : ℝ) + 3) := by
  sorry

/-- The sum includes the term indexed by `N`: with `N = 1` it is `1 - 1/3`. -/
example : arctanPartial 1 = 2 / 3 := by
  norm_num [arctanPartial, Finset.sum_range_succ]

/-- The radicand `(1 + u²)² - 4λu²` after the substitution `t = 2u/(1 + u²)`. -/
def legendreRadicand (lam u : ℝ) : ℝ := (1 + u ^ 2) ^ 2 - 4 * lam * u ^ 2

/-- The nonsingular integrand `2/√D_λ(u)`, on the positive branch. -/
def legendreIntegrand (lam u : ℝ) : ℝ := 2 / Real.sqrt (legendreRadicand lam u)

/-- `K_λ = ∫₀¹ dt/√((1 - t²)(1 - λt²))`, an improper integral at `t = 1`. -/
def legendreK (lam : ℝ) : ℝ :=
  ∫ t in (0 : ℝ)..1, 1 / Real.sqrt ((1 - t ^ 2) * (1 - lam * t ^ 2))

/-- The equal-panel midpoint sum with `N` panels. -/
def legendreMidpoint (lam : ℝ) (N : ℕ) : ℝ :=
  (N : ℝ)⁻¹ * ∑ j ∈ Finset.range N, legendreIntegrand lam (((j : ℝ) + 1 / 2) / (N : ℝ))

theorem legendre_radicand_lower (lam u : ℝ) (hlam : 0 < lam ∧ lam < 1)
    (hu : u ∈ Set.Icc (0 : ℝ) 1) :
    (1 - lam) * (1 + u ^ 2) ^ 2 ≤ legendreRadicand lam u := by
  sorry

theorem legendre_endpoint_integrable (lam : ℝ) (hlam : 0 < lam ∧ lam < 1) :
    IntervalIntegrable (fun t : ℝ => 1 / Real.sqrt ((1 - t ^ 2) * (1 - lam * t ^ 2)))
      volume 0 1 := by
  sorry

theorem legendre_substitution (lam : ℝ) (hlam : 0 < lam ∧ lam < 1) :
    legendreK lam = ∫ u in (0 : ℝ)..1, legendreIntegrand lam u := by
  sorry

theorem legendre_midpoint_error (lam : ℝ) (hlam : 0 < lam ∧ lam < 1) (N : ℕ) (hN : 0 < N) :
    |legendreK lam - legendreMidpoint lam N| ≤
      2 / ((N : ℝ) * (1 - lam) * Real.sqrt (1 - lam)) := by
  sorry

example (u : ℝ) : legendreRadicand (1 / 2) u = 1 + u ^ 4 := by
  simp only [legendreRadicand]
  ring

/-- `λ = 1` is excluded: the radicand vanishes at `u = 1`. -/
example : legendreRadicand 1 1 = 0 := by
  norm_num [legendreRadicand]

/-! ## Layer PS.8: arithmetic mirror symmetry and period differential equations -/

section Quartic

/-- The Dwork quartic `Σ X_i⁴ - 4t ∏ X_i`; the resolved quotient family is a README target. -/
def quarticPolynomial (t : ℂ) (x : Fin 4 → ℂ) : ℂ := (∑ i, x i ^ 4) - 4 * t * ∏ i, x i

example (x : Fin 4 → ℂ) : quarticPolynomial 0 x = ∑ i, x i ^ 4 := by
  simp [quarticPolynomial]

/-- The coefficient of the normalized residue form on the chart `X₀ = 1`, where
`4z₃³ - 4t z₁z₂ ≠ 0`. -/
def quarticResidueChart (t : ℂ) (z : Fin 3 → ℂ) : ℂ :=
  2 * (Real.pi : ℂ) * Complex.I / (4 * z 2 ^ 3 - 4 * t * z 0 * z 1)

/-- Coefficients, in ascending derivative order, of `(1 - t⁴)/64 · D_t ∘ (· / t)`, which equals
the hypergeometric operator `L_z` written in `t` (PS.8.3). -/
def quarticPulledOperatorCoefficients (t : ℂ) : Fin 4 → ℂ :=
  ![-3 / (32 * t ^ 4), (6 / t ^ 3 - t) / 64, -3 * (t ^ 4 + 1) / (64 * t ^ 2),
    (1 - t ^ 4) / (64 * t)]

example : quarticPulledOperatorCoefficients 1 0 = (-3 / 32 : ℂ) := by
  norm_num [quarticPulledOperatorCoefficients]

/-- The Gram matrix of the marked lattice `⟨4⟩ ⊕ U` in the basis `(h, e, f)`. -/
def quarticGram : Matrix (Fin 3) (Fin 3) ℤ := !![4, 0, 0; 0, 0, 1; 0, 1, 0]

/-- The period line `p ↦ (p, -1, 2p²)`. -/
def quarticPeriodLine (p : ℂ) : Fin 3 → ℂ := ![p, -1, 2 * p ^ 2]

example : quarticGram.det = -4 := by
  decide

/-- The period line is isotropic for the Gram form. -/
theorem quarticPeriodLine_isotropic (p : ℂ) :
    dotProduct (quarticPeriodLine p)
      ((quarticGram.map (Int.cast : ℤ → ℂ)).mulVec (quarticPeriodLine p)) = 0 := by
  sorry

/-- The monodromy matrices of `γ₁, γ₂, γ₃, γ₄, γ_∞` at the base point `i/√2`, in the convention
`PT_γ(h, e, f) = (h, e, f) M_γ` (PS.8.5). -/
def quarticMonodromy (i : Fin 5) : Matrix (Fin 3) (Fin 3) ℤ :=
  ![!![1, 0, 0; 0, 0, 1; 0, 1, 0], !![5, 1, -3; -12, -2, 9; 4, 1, -2],
    !![17, 6, -6; -24, -8, 9; 24, 9, -8], !![5, 3, -1; -4, -2, 1; 12, 9, -2],
    !![1, 4, 0; 0, 1, 0; -16, -32, 1]] i

theorem quarticMonodromy_isometry (i : Fin 5) :
    (quarticMonodromy i).transpose * quarticGram * quarticMonodromy i = quarticGram := by
  sorry

theorem quarticMonodromy_product :
    quarticMonodromy 4 * quarticMonodromy 3 * quarticMonodromy 2 * quarticMonodromy 1 *
      quarticMonodromy 0 = 1 := by
  sorry

/-- Maximal unipotent monodromy at infinity. -/
theorem quarticMonodromy_infinity_unipotent :
    (quarticMonodromy 4 - 1) ^ 3 = 0 ∧ (quarticMonodromy 4 - 1) ^ 2 ≠ 0 := by
  sorry

/-- `H_n^{(r)} = Σ_{j=1}^{n} j^{-r}`. -/
def harmonic (n r : ℕ) : ℚ := ∑ j ∈ Finset.range n, 1 / (((j + 1 : ℕ) : ℚ) ^ r)

/-- `A_n = (4n)!/(n!)⁴`. -/
def quarticA (n : ℕ) : ℚ := ((4 * n).factorial : ℚ) / ((n.factorial : ℚ) ^ 4)

/-- `g_n = 4 A_n (H_{4n} - H_n)`. -/
def quarticG (n : ℕ) : ℚ := 4 * quarticA n * (harmonic (4 * n) 1 - harmonic n 1)

/-- `h_n = A_n (16 (H_{4n} - H_n)² - 16 H_{4n}^{(2)} + 4 H_n^{(2)})`. -/
def quarticH (n : ℕ) : ℚ :=
  quarticA n * (16 * (harmonic (4 * n) 1 - harmonic n 1) ^ 2 - 16 * harmonic (4 * n) 2 +
    4 * harmonic n 2)

/-- The Frobenius series `w₀`, `g`, `h` in the variable `z = (4t)⁻⁴`. -/
def quarticFrobeniusSeries : Fin 3 → PowerSeries ℚ :=
  ![PowerSeries.mk quarticA, PowerSeries.mk quarticG, PowerSeries.mk quarticH]

theorem quarticA_recurrence (n : ℕ) :
    ((n + 1 : ℕ) : ℚ) ^ 3 * quarticA (n + 1) =
      4 * (4 * n + 1) * (4 * n + 2) * (4 * n + 3) * quarticA n := by
  sorry

example : quarticA 1 = 24 ∧ quarticA 2 = 2520 ∧ quarticG 1 = 104 := by
  norm_num [quarticA, quarticG, harmonic, Nat.factorial, Finset.sum_range_succ]

/-- The holomorphic period `w₀(z) = Σ A_n zⁿ`. -/
def quarticW0 (z : ℂ) : ℂ := ∑' n : ℕ, (quarticA n : ℂ) * z ^ n

/-- The hypergeometric symmetric square (PS.8.7). -/
theorem quartic_symmetric_square (z : ℂ) (hz : ‖256 * z‖ < 1) :
    quarticW0 z = (ordinaryHypergeometric (𝕂 := ℂ) (𝔸 := ℂ) (1 / 8 : ℂ) (3 / 8) 1 (256 * z)) ^ 2 := by
  sorry

/-- The mirror coordinate `q = z exp(g/w₀)` in `ℚ⟦z⟧` (PS.8.9). -/
def quarticMirrorCoordinate : PowerSeries ℚ :=
  PowerSeries.X * (PowerSeries.exp ℚ).subst
    (quarticFrobeniusSeries 1 * (quarticFrobeniusSeries 0)⁻¹)

/-- Integrality of the mirror coordinate and of its compositional inverse (PS.8.11). -/
theorem quarticMirror_integral :
    (∀ n : ℕ, ∃ a : ℤ, PowerSeries.coeff n quarticMirrorCoordinate = a) ∧
      ∃ g : PowerSeries ℚ, quarticMirrorCoordinate.subst g = PowerSeries.X ∧
        g.subst quarticMirrorCoordinate = PowerSeries.X ∧
        ∀ n : ℕ, ∃ a : ℤ, PowerSeries.coeff n g = a := by
  sorry

theorem quarticMirrorCoordinate_coeff : PowerSeries.coeff 1 quarticMirrorCoordinate = 1 ∧
    PowerSeries.coeff 2 quarticMirrorCoordinate = 104 ∧
    PowerSeries.coeff 3 quarticMirrorCoordinate = 15188 := by
  sorry

/-- The square-root sign change at the conifold is `p ↦ -1/(2p)` on the local ratio. The branch
and the based chart at `t = i` are README targets (PS.8.8). -/
theorem quarticLocalRatio_reflection (u v : ℂ) (huv : u + v ≠ 0) (huv' : u - v ≠ 0) :
    Complex.I / (Real.sqrt 2 : ℂ) * (u - v) / (u + v) =
      -1 / (2 * (Complex.I / (Real.sqrt 2 : ℂ) * (u + v) / (u - v))) := by
  sorry

/-- The `γ₄` action in the chart at `t = 1` is the translate of the `γ₁` reflection:
`T R T⁻¹ (p) = 1 - 1/(2(p - 1)) = (3 - 2p)/(2 - 2p)`. -/
theorem quarticGamma4_conjugate (p : ℂ) (hp : p ≠ 1) :
    1 - 1 / (2 * (p - 1)) = (3 - 2 * p) / (2 - 2 * p) := by
  have h : (2 : ℂ) - 2 * p ≠ 0 := by
    intro h; apply hp; linear_combination (-1 / 2 : ℂ) * h
  have h' : (p : ℂ) - 1 ≠ 0 := sub_ne_zero.mpr hp
  field_simp
  ring

end Quartic

section Quintic

/-- The Dwork quintic `λ Σ x_i⁵ + ∏ x_i`. -/
def quinticPolynomial {K : Type*} [CommRing K] (l : K) (x : Fin 5 → K) : K :=
  l * ∑ i, x i ^ 5 + ∏ i, x i

/-- At the log boundary the equation is the coordinate-hyperplane union (PS.8.17). -/
example {K : Type*} [CommRing K] (x : Fin 5 → K) :
    quinticPolynomial 0 x = ∏ i, x i := by
  simp [quinticPolynomial]

/-- The opposite signs of the two parameters distinguish the adapter `U = -5` to the DM.8 model. -/
example : quinticPolynomial (-1 / 5 : ℚ) (fun _ => 1) = 0 ∧
    quinticPolynomial (1 / 5 : ℚ) (fun _ => 1) = 2 := by
  norm_num [quinticPolynomial]

/-- Columns of `e_i = δ^i ω` in `u_s = π^s (t ∏ x_i)^s ω` (PS.8.13).
This is a change of rational bases, with no claim that either basis is geometric integral data. -/
def quinticDerivativeMonomialMatrix : Matrix (Fin 4) (Fin 4) ℤ :=
  !![1, -1, 1, -1; 0, -1, 3, -7; 0, 0, 1, -6; 0, 0, 0, -1]

theorem quinticDerivativeMonomialMatrix_det : quinticDerivativeMonomialMatrix.det = 1 := by
  decide

example : (fun i => quinticDerivativeMonomialMatrix i 3) = ![-1, -7, -6, -1] := by
  decide

example : (quinticDerivativeMonomialMatrix.map (Int.castRingHom (ZMod 3))).det = 1 ∧
    (quinticDerivativeMonomialMatrix.map (Int.castRingHom (ZMod 7))).det = 1 := by
  decide

/-- Columns of the derivative classes after the normalized projective residue map (PS.8.17).
The row factors `(1,-1,2,-6)` record Park's signed factorials. This is not the integral lattice
matrix `C` of the predicate `QuinticBoundaryLatticeIntegral` (PS.8.17). -/
def quinticDerivativeResidueMatrix : Matrix (Fin 4) (Fin 4) ℤ :=
  !![1, -1, 1, -1; 0, 1, -3, 7; 0, 0, 2, -12; 0, 0, 0, 6]

theorem quinticDerivativeResidueMatrix_det : quinticDerivativeResidueMatrix.det = 12 := by
  decide

example : (fun i => quinticDerivativeResidueMatrix i 3) = ![-1, 7, -12, 6] := by
  decide

example : (quinticDerivativeResidueMatrix.map (Int.castRingHom (ZMod 3))).det = 0 ∧
    (quinticDerivativeResidueMatrix.map (Int.castRingHom (ZMod 7))).det = 5 := by
  decide

/-- The logarithmic connection matrix of `δ` on the basis `e_i = δ^i ω`, column-input convention,
with `g = 5⁵λ⁵/(1 + 5⁵λ⁵)` (PS.8.13). -/
def quinticConnectionMatrix (l : ℚ) : Matrix (Fin 4) (Fin 4) ℚ :=
  let g := 5 ^ 5 * l ^ 5 / (1 + 5 ^ 5 * l ^ 5)
  !![0, 0, 0, -24 * g; 1, 0, 0, -50 * g; 0, 1, 0, -35 * g; 0, 0, 1, -10 * g]

/-- The boundary alternating pairing with `J₀₃ = Y`, `J₁₂ = -Y`. -/
def quinticBoundaryPairing {K : Type*} [CommRing K] (Y : K) : Matrix (Fin 4) (Fin 4) K :=
  !![0, 0, 0, Y; 0, 0, -Y, 0; 0, Y, 0, 0; -Y, 0, 0, 0]

/-- Shapiro's boundary Frobenius matrix with `δ` standing for `Δ₃` (PS.8.16). -/
def quinticBoundaryMatrix {K : Type*} [Field K] (p : ℕ) (δ : K) : Matrix (Fin 4) (Fin 4) K :=
  let pK := (p : K)
  !![pK ^ 3, 0, 0, 0; 0, pK ^ 2, 0, 0; 0, 0, pK, 0; pK ^ 3 * 24 / 25 * δ, 0, 0, 1]

/-- A normalization error by one power of `p` changes the first boundary eigenvalue (PS.8.17). -/
example : (quinticBoundaryMatrix 3 (0 : ℚ)) 0 0 = 27 ∧
    ((3 : ℚ) • quinticBoundaryMatrix 3 (0 : ℚ)) 0 0 = 81 := by
  norm_num [quinticBoundaryMatrix]

/-- With `C = diag(3,1,1,1)` the bottom-left entry changes from `1` to `3`, so the rational
matrix alone does not specify an integral lattice (PS.8.17). -/
example : (quinticBoundaryMatrix 3 (25 / 648 : ℚ)) 3 0 = 1 ∧
    ((Matrix.diagonal (![1 / 3, 1, 1, 1] : Fin 4 → ℚ)) *
      quinticBoundaryMatrix 3 (25 / 648 : ℚ) *
      Matrix.diagonal (![3, 1, 1, 1] : Fin 4 → ℚ)) 3 0 = 3 := by
  constructor
  · change (3 : ℚ) ^ 3 * 24 / 25 * (25 / 648) = 1
    norm_num
  · rw [Matrix.mul_diagonal, Matrix.diagonal_mul]
    change (1 : ℚ) * (3 ^ 3 * 24 / 25 * (25 / 648)) * 3 = 3
    norm_num

/-- `N F = p F N` with the residue `N` at `λ = 0`. -/
theorem quinticBoundary_horizontal {K : Type*} [Field K] [Algebra ℚ K] (p : ℕ) (δ : K) :
    (quinticConnectionMatrix 0).map (algebraMap ℚ K) * quinticBoundaryMatrix p δ =
      (p : K) • (quinticBoundaryMatrix p δ * (quinticConnectionMatrix 0).map (algebraMap ℚ K)) := by
  sorry

/-- `Fᵀ J F = p³ J`. -/
theorem quinticBoundary_pairing {K : Type*} [Field K] (p : ℕ) (δ Y : K) :
    (quinticBoundaryMatrix p δ).transpose * quinticBoundaryPairing Y * quinticBoundaryMatrix p δ =
      (p : K) ^ 3 • quinticBoundaryPairing Y := by
  sorry

/-- The residue at `λ = 0` is nilpotent of order exactly four. -/
theorem quinticResidue_nilpotent :
    (quinticConnectionMatrix 0) ^ 4 = 0 ∧ (quinticConnectionMatrix 0) ^ 3 ≠ 0 := by
  sorry

/-- `exp(z + z^p/p)` in `ℚ⟦z⟧` (PS.8.15). -/
def dworkSeries (p : ℕ) : PowerSeries ℚ :=
  (PowerSeries.exp ℚ).subst (PowerSeries.X + ((p : ℚ)⁻¹ • PowerSeries.X ^ p : PowerSeries ℚ))

/-- `B_n`, the coefficients of `exp(z + z^p/p)`. -/
def dworkCoeff (p n : ℕ) : ℚ := PowerSeries.coeff n (dworkSeries p)

/-- The harmonic weight `Σ_{1 ≤ j < i ≤ n - 1} 1/(ij)` of `σ₂`. -/
def dworkPairWeight (n : ℕ) : ℚ :=
  ∑ i ∈ Finset.Ico 1 n, ∑ j ∈ Finset.Ico 1 i, 1 / ((i : ℚ) * j)

theorem dworkCoeff_recurrence (p : ℕ) (hp : 2 ≤ p) (n : ℕ) :
    ((n + 1 : ℕ) : ℚ) * dworkCoeff p (n + 1) =
      dworkCoeff p n + if p ≤ n + 1 then dworkCoeff p (n + 1 - p) else 0 := by
  sorry

theorem dworkCoeff_two (p : ℕ) (hp : 3 ≤ p) : dworkCoeff p 2 = 1 / 2 := by
  sorry

/-- Convergence of `σ₀ = Σ_{n ≥ 1} B_n (n-1)!` in `ℚ_p` for odd `p` (PS.8.15). -/
theorem dworkSigma0_summable (p : ℕ) [Fact p.Prime] (hp : p ≠ 2) :
    Summable (fun n : ℕ => ((dworkCoeff p (n + 1) * (n.factorial : ℚ) : ℚ) : ℚ_[p])) := by
  sorry

/-- Convergence of `σ₂` in `ℚ_p` for odd `p`. -/
theorem dworkSigma2_summable (p : ℕ) [Fact p.Prime] (hp : p ≠ 2) :
    Summable (fun n : ℕ =>
      ((dworkCoeff p (n + 1) * (n.factorial : ℚ) * dworkPairWeight (n + 1) : ℚ) : ℚ_[p])) := by
  sorry

end Quintic

/-! ## Layer PS.9: multiple zeta values and mixed Tate periods -/

section MZV

/-- An index of positive integers. -/
def PositiveIndex (k : List ℕ) : Prop := ∀ n ∈ k, 0 < n

/-- Admissible: positive, and empty or with first (largest-variable) entry at least `2`. -/
def Admissible (k : List ℕ) : Prop := PositiveIndex k ∧ ∀ n ∈ k.head?, 2 ≤ n

/-- Strictly decreasing positive summation tuples for the index `k`. -/
def DescendingTuple (k : List ℕ) :=
  {n : Fin k.length → ℕ // (∀ i, 0 < n i) ∧ ∀ i j, i < j → n j < n i}

/-- The term `∏ n_i^{-k_i}`. -/
def mzvTerm (k : List ℕ) (n : DescendingTuple k) : ℝ :=
  ∏ i : Fin k.length, 1 / (n.val i : ℝ) ^ k.get i

/-- The multiple zeta value as a total sum; its analytic meaning needs admissibility. -/
def multipleZeta (k : List ℕ) : ℝ := ∑' n : DescendingTuple k, mzvTerm k n

theorem mzv_summable_iff (k : List ℕ) (hk : PositiveIndex k) :
    Summable (mzvTerm k) ↔ Admissible k := by
  sorry

theorem mzv_depth_one (n : ℕ) (hn : 2 ≤ n) : multipleZeta [n] = (riemannZeta (n : ℂ)).re := by
  sorry

theorem multipleZeta_nil : multipleZeta [] = 1 := by
  sorry

theorem multipleZeta_two : multipleZeta [2] = Real.pi ^ 2 / 6 := by
  sorry

/-- The harmonic series: the index `[1]` is not admissible. -/
theorem mzvTerm_one_not_summable : ¬ Summable (mzvTerm [1]) := by
  sorry

/-- `[2, 1]` is admissible although its last entry is `1`; `[1]` is not. -/
example : Admissible [2, 1] ∧ ¬ Admissible [1] := by
  refine ⟨⟨by simp [PositiveIndex], by simp⟩, fun h => ?_⟩
  have := h.2 1 rfl
  omega

/-- The encoding `k ↦ 0^{k₁-1} 1 ⋯ 0^{k_r-1} 1`, with `false = 0` and `true = 1`. -/
def mzvEncode : List ℕ → List Bool
  | [] => []
  | k :: ks => List.replicate (k - 1) false ++ true :: mzvEncode ks

/-- Decoding a word into the index, counting the letters `0` before each `1`. -/
def mzvDecodeAux : ℕ → List Bool → List ℕ
  | _, [] => []
  | c, false :: w => mzvDecodeAux (c + 1) w
  | c, true :: w => (c + 1) :: mzvDecodeAux 0 w

def mzvDecode (w : List Bool) : List ℕ := mzvDecodeAux 0 w

/-- All interleavings of two words, with multiplicity. -/
def shuffles {α : Type*} : List α → List α → List (List α)
  | [], l => [l]
  | a :: u, [] => [a :: u]
  | a :: u, b :: v =>
      (shuffles u (b :: v)).map (a :: ·) ++ (shuffles (a :: u) v).map (b :: ·)

/-- The stuffle (quasi-shuffle) of two indices, with the merge term `(a + b) :: (u * v)`. -/
def stuffles : List ℕ → List ℕ → List (List ℕ)
  | [], l => [l]
  | a :: u, [] => [a :: u]
  | a :: u, b :: v =>
      (stuffles u (b :: v)).map (a :: ·) ++ (stuffles (a :: u) v).map (b :: ·) ++
        (stuffles u v).map ((a + b) :: ·)

example : mzvEncode [2, 1] = [false, true, true] := rfl

example : mzvDecode (mzvEncode [3, 1, 2]) = [3, 1, 2] := rfl

example : stuffles [2] [2] = [[2, 2], [2, 2], [4]] := by
  simp [stuffles]

/-- `01 ⧢ 01 = 4·0011 + 2·0101`. -/
example : ((shuffles [false, true] [false, true]).count [false, false, true, true] = 4) ∧
    ((shuffles [false, true] [false, true]).count [false, true, false, true] = 2) := by
  simp [shuffles]

/-- Stuffle multiplicativity of convergent multiple zeta values (PS.9.4). -/
theorem mzv_stuffle (k l : List ℕ) (hk : Admissible k) (hl : Admissible l) :
    multipleZeta k * multipleZeta l = ((stuffles k l).map multipleZeta).sum := by
  sorry

/-- Shuffle multiplicativity, through the 0/1 encoding (PS.9.4). -/
theorem mzv_shuffle (k l : List ℕ) (hk : Admissible k) (hl : Admissible l) :
    multipleZeta k * multipleZeta l =
      ((shuffles (mzvEncode k) (mzvEncode l)).map (fun w => multipleZeta (mzvDecode w))).sum := by
  sorry

theorem convergent_double_shuffle :
    multipleZeta [2] ^ 2 = 4 * multipleZeta [3, 1] + 2 * multipleZeta [2, 2] ∧
      multipleZeta [2] ^ 2 = 2 * multipleZeta [2, 2] + multipleZeta [4] := by
  sorry

/-- Euler's relation, from regularized double shuffle (PS.9.7). -/
theorem mzv_two_one : multipleZeta [2, 1] = multipleZeta [3] := by
  sorry

/-- Zagier's coefficients in descending notation (PS.9.16). -/
def zagierCoeff (a b r : ℕ) : ℚ :=
  2 * (-1 : ℚ) ^ r * ((Nat.choose (2 * r) (2 * b + 2) : ℚ) -
    (1 - 1 / (2 : ℚ) ^ (2 * r)) * (Nat.choose (2 * r) (2 * a + 1) : ℚ))

/-- The index `{2}^a, 3, {2}^b`. -/
def oneThree (a b : ℕ) : List ℕ := List.replicate a 2 ++ [3] ++ List.replicate b 2

example : zagierCoeff 0 0 1 = 1 ∧ zagierCoeff 1 0 1 = -2 ∧ zagierCoeff 1 0 2 = 9 / 2 := by
  norm_num [zagierCoeff, Nat.choose]

/-- Zagier's evaluation (PS.9.17). -/
theorem zagier_evaluation (a b : ℕ) :
    multipleZeta (oneThree a b) =
      ∑ r ∈ Finset.range (a + b + 1), (zagierCoeff a b (r + 1) : ℝ) *
        multipleZeta [2 * (r + 1) + 1] * multipleZeta (List.replicate (a + b - r) 2) := by
  sorry

/-- The weight-five Hoffman cut matrix, source rows `[3,2], [2,3]` and target columns
`(3, [2]), (5, [])`, has determinant `5/2`. -/
example : (!![zagierCoeff 0 1 1, zagierCoeff 0 1 2; zagierCoeff 1 0 1, zagierCoeff 1 0 2] :
    Matrix (Fin 2) (Fin 2) ℚ).det = 5 / 2 := by
  norm_num [zagierCoeff, Matrix.det_fin_two, Nat.choose]

/-- A Hoffman word: every entry is `2` or `3`. -/
def IsHoffman (k : List ℕ) : Prop := ∀ n ∈ k, n = 2 ∨ n = 3

/-- `d_N`, with generating function `1/(1 - t² - t³)` (PS.9.13). -/
def hoffmanDim : ℕ → ℕ
  | 0 => 1
  | 1 => 0
  | 2 => 1
  | n + 3 => hoffmanDim (n + 1) + hoffmanDim n

example : [0, 1, 2, 3, 4, 5, 6, 7, 8].map hoffmanDim = [1, 0, 1, 1, 1, 2, 2, 3, 4] := by
  decide

/-- The number of Hoffman words of weight `N` is `d_N` (PS.9.19). -/
theorem hoffman_count (N : ℕ) : {w : List ℕ | IsHoffman w ∧ w.sum = N}.ncard = hoffmanDim N := by
  sorry

/-- Numerical spanning by Hoffman values (PS.9.23); no independence is asserted. -/
theorem numerical_spanning (k : List ℕ) (hk : Admissible k) :
    multipleZeta k ∈ Submodule.span ℚ
      {x : ℝ | ∃ w : List ℕ, IsHoffman w ∧ w.sum = k.sum ∧ x = multipleZeta w} := by
  sorry

/-- Finite dimensionality and the numerical dimension bound in each weight. The finiteness
assertion is essential: `finrank` alone also takes value zero in infinite dimension. -/
theorem mzv_span_finrank_le (N : ℕ) :
    Module.Finite ℚ (Submodule.span ℚ
      {x : ℝ | ∃ k : List ℕ, Admissible k ∧ k.sum = N ∧ x = multipleZeta k}) ∧
    Module.finrank ℚ (Submodule.span ℚ
      {x : ℝ | ∃ k : List ℕ, Admissible k ∧ k.sum = N ∧ x = multipleZeta k}) ≤ hoffmanDim N := by
  sorry

end MZV

/-!
Targets of `README.md` without a declaration here, because their carriers are not at the pins:
the comparison determinant line, period classes over all embeddings and Deligne's periods
(PS.0.1–PS.0.4), `ellipticSecondKindClass`, `ellipticOvalBasis` and `ellipticIntegrationPairing`
(PS.0.5); motivic Euler products, completions, `DeligneAlgebraic`, the Dirichlet and
modular adapters, `SerreSystem` and the Hasse–Weil predicates (PS.1); formal-period evaluation and
the torsor comparison (PS.2.1–PS.2.2); fundamental lines, `realTrivialization`,
`LeadingTermRational` (PS.3); integral lattices and
local corrections (PS.4); `finiteBoundaryGluing`, `cohomologicalObstruction`, `extendedBoundary`,
`tamagawaObstruction`, `ETNC`, the zeta-isomorphism comparisons and `abelianTate_ETNC` (PS.5);
Bloch–Kato pairs, measures, Sha and `BlochKatoTamagawa`, the elliptic adapter, `BBKRankZeroOne`
and the imported Rankin–Selberg statements `bbk_rankZero_of_admissible`,
`bbk_rankOne_of_classNeZero` and `bbk_rankOne_of_derivative` (PS.6); certified boxes and `PeriodConjecture`
(PS.7.2–PS.7.4); the resolved quartic family, its
residue form, Picard–Fuchs equation, marking and local continuation,
`modularInvariant_schwarzian`, the quintic cohomology
and its full flat pairing `quinticPairing`,
Frobenius, `quinticSemistableParameter`, `quinticCrystalline`, `quinticDworkComparison`,
`quinticProjectiveResidue`, `quinticProjectiveResidue_frobenius`, `quinticLogComparison`,
`QuinticBoundaryLatticeIntegral` and `quinticBoundary_integral_of_lattice` (PS.8); word algebras, iterated integrals, regularizations,
`rho`, mixed Tate motives over `ℤ`, the motivic path torsor, Brown's algebra and coaction, the
f-alphabet, the cut matrices and the motivic Hoffman basis (PS.9).
-/

end TauCetiRoadmap.PeriodsAndSpecialValues
