import Mathlib

/-!
# GrossZagierAndArithmeticHeights: representative target signatures

The roadmap is `README.md`: it specifies the arithmetic objects, hypotheses, comparisons and
source locators. This file records the light algebraic interfaces and the milestone signatures
whose carriers already exist in Mathlib and Tau Ceti; it is not exhaustive. Design choices made
explicit here: the CM unit index is half the number of roots of unity (`unitIndex`), characters
act through the inverse-character eigenspace (`chiIsotypic`), finite CM sums are weighted by the
character (`heegnerFinite`) and averaged with the inverse group order (`heegnerAverage`), the
central-value function is a normalization unit times the square of a supplied linear root
(`bdpLFunction`), and the terminating Gross–Zagier polynomials keep their source normalization
with binomial coefficients and shifted factorials (`rankinPolynomial`, `rankinKernelPolynomial`).
A finite representation does not construct a CM orbit, and a power series does not construct its
CM moment measure. The geometric height and kernel milestones stay in the README, because their
carriers (arithmetic models, metrized lines, automorphic kernels) are not at the pins.
-/

noncomputable section
open scoped BigOperators
open Filter Topology

namespace TauCetiRoadmap.GrossZagierAndArithmeticHeights

/-! ## Layer 0: normalization and character conventions -/

/-- The CM unit index `u = #(O_K^×/{±1})`, as half the number of roots of unity of `K`. It is
the effective stabilizer of a Heegner point; the arithmetic reading needs `K` imaginary
quadratic (README 0.4). -/
def unitIndex (K : Type*) [Field K] [NumberField K] : ℚ :=
  (NumberField.Units.torsionOrder K : ℚ) / 2

/-- The stabilizer normalization: `2u = w`, so the index is not the full root-of-unity count. -/
example (K : Type*) [Field K] [NumberField K] :
    2 * unitIndex K = (NumberField.Units.torsionOrder K : ℚ) := by
  unfold unitIndex
  ring

/-- The Eisenstein field: six roots of unity give `u = 3`. -/
example (K : Type*) [Field K] [NumberField K]
    (h : NumberField.Units.torsionOrder K = 6) : unitIndex K = 3 := by
  rw [unitIndex, h]
  norm_num

/-- The unit index of an imaginary quadratic field (README 0.4): `u = 3` for discriminant `-3`,
`u = 2` for `-4`, and `u = 1` otherwise. It halves the unit count of TauCetiRoadmap's
ImaginaryQuadraticClassNumber, H1.2. -/
theorem unitIndex_of_imaginaryQuadratic (K : Type*) [Field K] [NumberField K]
    [NumberField.IsTotallyComplex K] (hK : Module.finrank ℚ K = 2) :
    unitIndex K =
      if NumberField.discr K = -3 then 3 else if NumberField.discr K = -4 then 2 else 1 := by
  sorry

/-- Differentiating the completed weight-two function at a central zero (README 0.3), with
Mathlib's `Γ_ℂ(s) = 2(2π)^{-s}Γ(s)`: the completion factor contributes `√N/π` and nothing else. -/
theorem completed_derivative_at_central_zero (N : ℝ) (hN : 0 < N)
    (L : ℂ → ℂ) (d : ℂ) (hL : HasDerivAt L d 1) (hzero : L 1 = 0) :
    HasDerivAt (fun s : ℂ => (N : ℂ) ^ (s / 2) * Complex.Gammaℂ s * L s)
      ((Real.sqrt N / Real.pi : ℝ) * d) 1 := by sorry

/-! ## Layer 6: the terminating classical Rankin polynomials -/

/-- The source normalization of `pₙ`, with its binomial coefficient and `j!`; it is the Laguerre
polynomial `Lₙ` (README 6.2). -/
def rankinPolynomial (n : ℕ) (t : ℚ) : ℚ :=
  ∑ j ∈ Finset.range (n + 1), (Nat.choose n j : ℚ) * (-t) ^ j / (Nat.factorial j : ℚ)

/-- The factorial normalization: without `1/j!` the `t²` coefficient would be `1`, not `1/2`. -/
example (t : ℚ) : rankinPolynomial 2 t = 1 - 2 * t + t ^ 2 / 2 := by
  simp [rankinPolynomial, Finset.sum_range_succ, Nat.factorial]
  ring

/-- The Gross–Zagier polynomial `p_{k,r}` for `0 ≤ r ≤ k - 1`: the factor `(t/2)^(2k-2-2r)` times
a binomial sum with the shifted factorials `(2k-2r-2+j)!`. At `r = k - 1` it is `rankinPolynomial
(k - 1)`. Outside `r ≤ k - 1` the truncated subtraction makes the value meaningless. -/
def rankinKernelPolynomial (k r : ℕ) (t : ℚ) : ℚ :=
  (t / 2) ^ (2 * k - 2 - 2 * r) *
    ∑ j ∈ Finset.range (r + 1),
      (Nat.choose r j : ℚ) * (-t) ^ j / (Nat.factorial (2 * k - 2 * r - 2 + j) : ℚ)

/-- The bottom case `r = 0` in weight four: `(t/2)²/2!`, with both the power of `t/2` and the
shifted factorial present. -/
example (t : ℚ) : rankinKernelPolynomial 2 0 t = t ^ 2 / 8 := by
  simp [rankinKernelPolynomial, Nat.factorial]
  ring

/-- The top case `r = k - 1` recovers `pₖ₋₁`. -/
example (t : ℚ) : rankinKernelPolynomial 3 2 t = rankinPolynomial 2 t := by
  simp [rankinKernelPolynomial, rankinPolynomial, Finset.sum_range_succ, Nat.factorial]

/-! ## Layer 8: global Gross–Zagier formulas -/

section Characters
variable {L G V : Type*} [Field L] [CommGroup G] [Fintype G]
  [AddCommGroup V] [Module L V]

/-- The inverse-character eigenspace of a finite representation. -/
def chiIsotypic (ρ : Representation L G V) (χ : G →* Lˣ) : Submodule L V :=
  ⨅ g : G, LinearMap.ker (ρ g - (χ g : L)⁻¹ • LinearMap.id)

/-- Membership is the inverse-character eigencondition. -/
example (ρ : Representation L G V) (χ : G →* Lˣ) (x : V) :
    x ∈ chiIsotypic ρ χ ↔ ∀ g, ρ g x = (χ g : L)⁻¹ • x := by
  simp [chiIsotypic, sub_eq_zero]

/-- A nonzero fixed vector is not `χ`-isotypic when `χ` is nontrivial at a fixing element. -/
example (ρ : Representation L G V) (χ : G →* Lˣ) (g : G) (x : V)
    (hx : x ≠ 0) (hfix : ρ g x = x) (hχ : χ g ≠ 1) :
    x ∉ chiIsotypic ρ χ := by
  intro hmem
  have h : ρ g x = (χ g : L)⁻¹ • x := by
    simp only [chiIsotypic, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply,
      LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero] at hmem
    exact hmem g
  rw [hfix] at h
  have h1 : ((χ g : L)⁻¹ - 1) • x = 0 := by
    rw [sub_smul, one_smul, ← h, sub_self]
  rcases smul_eq_zero.mp h1 with h2 | h2
  · apply hχ
    have h3 : (χ g : L)⁻¹ = 1 := sub_eq_zero.mp h2
    exact Units.ext (inv_eq_one.mp h3)
  · exact hx h2

/-- The character-weighted finite orbit sum, in the inverse-character convention. -/
def heegnerFinite (ρ : Representation L G V) (χ : G →* Lˣ) (x : V) : V :=
  ∑ g : G, (χ g : L) • ρ g x

/-- For the trivial character the finite sum is the plain orbit sum. -/
example (ρ : Representation L G V) (x : V) :
    heegnerFinite ρ 1 x = ∑ g : G, ρ g x := by
  simp [heegnerFinite]

/-- A nontrivial character kills a fixed vector: character orthogonality. -/
example (ρ : Representation L G V) (χ : G →* Lˣ) (x : V)
    (hfix : ∀ g, ρ g x = x) (hχ : χ ≠ 1) : heegnerFinite ρ χ x = 0 := by
  have hne : (Units.coeHom L).comp χ ≠ 1 := by
    intro h
    apply hχ
    ext g
    simpa using DFunLike.congr_fun h g
  have hsum : ∑ g : G, (χ g : L) = 0 := sum_hom_units_eq_zero _ hne
  simp only [heegnerFinite, hfix, ← Finset.sum_smul, hsum, zero_smul]

/-- The probability average of the finite character sum. -/
def heegnerAverage (ρ : Representation L G V) (χ : G →* Lˣ) (x : V) : V :=
  (Fintype.card G : L)⁻¹ • heegnerFinite ρ χ x

/-- On a fixed vector, with invertible group order, the trivial-character average returns it. -/
example (ρ : Representation L G V) (x : V)
    (hcard : (Fintype.card G : L) ≠ 0) (hfix : ∀ g, ρ g x = x) :
    heegnerAverage ρ 1 x = x := by
  simp only [heegnerAverage, heegnerFinite, hfix, MonoidHom.one_apply, Units.val_one, one_smul,
    Finset.sum_const, Finset.card_univ]
  rw [← Nat.cast_smul_eq_nsmul L, smul_smul, inv_mul_cancel₀ hcard, one_smul]

/-- When the characteristic divides the group order the average is zero, not a projector. -/
example (x : ZMod 3) :
    heegnerAverage
      (Representation.trivial (ZMod 3) (Multiplicative (ZMod 3)) (ZMod 3)) 1 x = 0 := by
  have h : (Fintype.card (Multiplicative (ZMod 3)) : ZMod 3) = 0 := by
    rw [Fintype.card_multiplicative, ZMod.card]
    rfl
  simp only [heegnerAverage]
  rw [h, inv_zero, zero_smul]

/-- The probability average lies in the inverse-character eigenspace, including characteristic
dividing the group order, where it is zero. -/
theorem heegnerAverage_isotypic (ρ : Representation L G V) (χ : G →* Lˣ) (x : V) :
    heegnerAverage ρ χ x ∈ chiIsotypic ρ χ := by sorry

/-- A bilinear pairing of probability averages scales by the inverse square of the orbit
cardinality. -/
theorem heegnerAverage_pairing {W : Type*} [AddCommGroup W] [Module L W]
    (ρ : Representation L G V) (ρ' : Representation L G W)
    (χ : G →* Lˣ) (x : V) (y : W) (B : V →ₗ[L] W →ₗ[L] L)
    (hcard : (Fintype.card G : L) ≠ 0) :
    B (heegnerAverage ρ χ x) (heegnerAverage ρ' χ⁻¹ y) =
      ((Fintype.card G : L) ^ 2)⁻¹ * B (heegnerFinite ρ χ x) (heegnerFinite ρ' χ⁻¹ y) := by
  sorry
end Characters

/-! ## Layer 9: weight-two anticyclotomic functions and logarithms -/

section CentralValue
variable {R : Type*} [CommRing R]

/-- The central-value square adapter for an already supplied bounded linear root and a specified
normalization unit. -/
def bdpLFunction (root : PowerSeries R) (normalization : (PowerSeries R)ˣ) :
    PowerSeries R := (normalization : PowerSeries R) * root ^ 2

/-- Evaluation at the trivial character is the unit's value times the square of the root's. -/
example (root : PowerSeries R) (normalization : (PowerSeries R)ˣ) :
    PowerSeries.constantCoeff (bdpLFunction root normalization) =
      PowerSeries.constantCoeff (normalization : PowerSeries R) *
        (PowerSeries.constantCoeff root) ^ 2 := by
  simp [bdpLFunction]

/-- The function is quadratic in the root: doubling the root multiplies it by four. -/
example (root : PowerSeries R) (normalization : (PowerSeries R)ˣ) :
    bdpLFunction (2 * root) normalization = 4 * bdpLFunction root normalization := by
  simp only [bdpLFunction]
  ring

/-- The imprimitive series obtained by multiplying finitely many supplied local factors. -/
def bdpIncomplete (centralValue : PowerSeries R) {ι : Type*}
    (S : Finset ι) (localFactor : ι → PowerSeries R) : PowerSeries R :=
  centralValue * ∏ w ∈ S, localFactor w

/-- Removing no Euler factor changes nothing. -/
example (centralValue : PowerSeries R) {ι : Type*} (localFactor : ι → PowerSeries R) :
    bdpIncomplete centralValue (∅ : Finset ι) localFactor = centralValue := by
  simp [bdpIncomplete]

/-- A vanishing local factor kills the imprimitive series. -/
example (centralValue : PowerSeries R) {ι : Type*} [DecidableEq ι]
    (w : ι) (localFactor : ι → PowerSeries R) (hzero : localFactor w = 0) :
    bdpIncomplete centralValue {w} localFactor = 0 := by
  simp [bdpIncomplete, hzero]

/-- A character-evaluation ring map preserves the normalized square. -/
theorem bdpLFunction_evaluation {S : Type*} [CommRing S]
    (ev : PowerSeries R →+* S) (root : PowerSeries R)
    (normalization : (PowerSeries R)ˣ) :
    ev (bdpLFunction root normalization) =
      ev (normalization : PowerSeries R) * ev root ^ 2 := by sorry
end CentralValue

/-- The rational good-prime weight-two Euler factor `(1 + p - a)/p`. -/
def bdpEulerFactor (p a : ℚ) : ℚ := (1 + p - a) / p

/-- The boundary witness for `bdpEulerFactor_ne_zero`: at `p = 1, a = 2` the factor vanishes,
although `|a| ≤ 2√p`, so the hypothesis `1 < p` cannot be dropped. -/
example : bdpEulerFactor 1 2 = 0 := by
  norm_num [bdpEulerFactor]

/-- Under the Hasse bound `|a| ≤ 2√p` the good-prime Euler factor is nonzero for `p > 1`,
since `1 + p - a ≥ (√p - 1)² > 0`. -/
theorem bdpEulerFactor_ne_zero (p a : ℚ) (hp : 1 < p)
    (ha : |(a : ℝ)| ≤ 2 * Real.sqrt (p : ℝ)) : bdpEulerFactor p a ≠ 0 := by sorry

end TauCetiRoadmap.GrossZagierAndArithmeticHeights
