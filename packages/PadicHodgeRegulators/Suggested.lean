import Mathlib

/-!
# PadicHodgeRegulators: representative target signatures

The roadmap is README.md. This file records definitions and theorem signatures
statable against the pinned APIs and is not exhaustive. It fixes the finite
polylogarithm normalization, the excluded points of the residue function,
evaluation constraints as native submodules, and row matrix conventions.
The nonzero cyclotomic-unit jet fixes the rational arithmetic of the Tate
normalization check.
-/

noncomputable section
open scoped BigOperators
open Polynomial Matrix

namespace TauCetiRoadmap.PadicHodgeRegulators

local instance : Fact (Nat.Prime 5) := ⟨by decide⟩
local instance : Fact (Nat.Prime 3) := ⟨by decide⟩

/-! ## Layer 0: period and integral comparison interfaces -/

/-! ## Layer 1: Bloch–Kato exponential and logarithms -/

/-! ## Layer 2: Iwasawa comparison and choices -/

/-! ## Layer 3: local logarithms and dilogarithms -/

/-! ## Layer 4: Chern classes and syntomic comparisons -/

/-! ## Layer 5: the unramified local K₃ isomorphism -/

/-- Kontsevich's finite polylogarithm, including integral indices. -/
def finitePolylog (p : ℕ) [Fact p.Prime] (n : ℤ) : (ZMod p)[X] :=
  ∑ k ∈ Finset.Ico 1 p, C (((k : ZMod p) ^ n)⁻¹) * X ^ k

example : (finitePolylog 5 2).eval 2 = 1 := by
  norm_num [finitePolylog, Finset.sum_Ico_succ_top]
  have h4 : (4 : ZMod 5)⁻¹ = 4 := inv_eq_of_mul_eq_one_right (by decide +revert)
  have h9 : (9 : ZMod 5)⁻¹ = 4 := inv_eq_of_mul_eq_one_right (by clear h4; decide +revert)
  have h16 : (16 : ZMod 5)⁻¹ = 1 :=
    inv_eq_of_mul_eq_one_right (by clear h4 h9; decide +revert)
  rw [h4, h9, h16]
  clear h4 h9 h16
  decide +revert

example : (finitePolylog 3 2).eval 1 = 2 := by
  norm_num [finitePolylog, Finset.sum_Ico_succ_top]
  have h4 : (4 : ZMod 3)⁻¹ = 1 := inv_eq_of_mul_eq_one_right (by decide +revert)
  rw [h4]
  clear h4
  decide +revert

/-- For p>3 the weight-two polynomial has a double zero at 1. -/
theorem finitePolylog_two_double_zero (p : ℕ) [Fact p.Prime] (hp : 3 < p) :
    (X - 1) ^ 2 ∣ finitePolylog p 2 := by
  sorry

/-- The reduction of p^-2 D(ζ^p); the caller must exclude x=1. -/
def residueDilogValue (p : ℕ) [Fact p.Prime] {F : Type*} [Field F]
    [Algebra (ZMod p) F] (x : F) : F :=
  (finitePolylog p 2).aeval x / (x - 1) ^ p

example (p : ℕ) [Fact p.Prime] {F : Type*} [Field F] [Algebra (ZMod p) F] :
    residueDilogValue p (1 : F) = 0 := by
  simp [residueDilogValue, (Fact.out : p.Prime).ne_zero]

example (p : ℕ) [Fact p.Prime] {F : Type*} [Field F] [Algebra (ZMod p) F] :
    residueDilogValue p (0 : F) = 0 := by
  have h : (finitePolylog p 2).aeval (0 : F) = 0 := by
    simp only [finitePolylog, map_sum, map_mul, aeval_C, aeval_X_pow]
    refine Finset.sum_eq_zero fun k hk => ?_
    have hk1 : k ≠ 0 := by
      have := (Finset.mem_Ico.mp hk).1
      omega
    simp [zero_pow hk1]
  simp [residueDilogValue, h]

/-- For p > 3 the double zero of li_{2,p} at 1 cancels away from x = 1. -/
theorem residueDilogValue_cancel_double_zero (p : ℕ) [Fact p.Prime] (hp : 3 < p)
    {F : Type*} [Field F] [Algebra (ZMod p) F] {x : F} (hx : x ≠ 1) :
    residueDilogValue p x =
      ((finitePolylog p 2) /ₘ (X - 1) ^ 2).aeval x / (x - 1) ^ (p - 2) := by
  sorry

/-- Embeddings of F_p-algebra fields commute with the residue function. -/
theorem residueDilogValue_map (p : ℕ) [Fact p.Prime] {F F' : Type*} [Field F] [Field F']
    [Algebra (ZMod p) F] [Algebra (ZMod p) F'] (f : F →ₐ[ZMod p] F') (x : F) :
    f (residueDilogValue p x) = residueDilogValue p (f x) := by
  simp [residueDilogValue, map_div₀, Polynomial.aeval_algHom_apply]

/-- The three admissible F₅ values distinguish the residue function from a constant. -/
theorem residueDilogValue_five_values :
    residueDilogValue 5 (2 : ZMod 5) = 1 ∧
    residueDilogValue 5 (3 : ZMod 5) = 4 ∧
    residueDilogValue 5 (4 : ZMod 5) = 0 := by
  sorry

/-- Cardinality statement on the correct domain F_q^× minus {1}, not on F_q. -/
theorem residueDilogValue_spans (p s : ℕ) [Fact p.Prime]
    (hp : 3 < p) (hs : 0 < s) :
    Submodule.span (ZMod p)
      {y : GaloisField p s | ∃ x : GaloisField p s,
        x ≠ 0 ∧ x ≠ 1 ∧ residueDilogValue p x = y} = ⊤ ∧
    Submodule.span (ZMod p)
      {y : GaloisField p s | ∃ x x' : GaloisField p s,
        x ≠ 0 ∧ x ≠ 1 ∧ x' ≠ 0 ∧ x' ≠ 1 ∧
        residueDilogValue p x - residueDilogValue p x' = y} = ⊤ := by
  sorry

/-! ## Layer 6: global K₃ regulators and arithmetic applications -/

/-! ## Layer 7: curve regulators in good and semistable reduction -/

/-! ## Layer 8: Perrin–Riou regulators and interpolation -/

/-- The second (1+π)d/dπ logarithmic jet at zero, on its nonzero-constant domain. -/
def colemanLogSecondJet (f : ℚ[X]) (_h0 : f.eval 0 ≠ 0) : ℚ :=
  (f.derivative.derivative.eval 0 + f.derivative.eval 0) / f.eval 0 -
    (f.derivative.eval 0 / f.eval 0) ^ 2

-- The f₆ unit: derivative, second jet, depleted moment and regulator moment.
example :
    let f : ℚ[X] := 6 + 15 * X + 20 * X ^ 2 + 15 * X ^ 3 + 6 * X ^ 4 + X ^ 5
    ∃ h0 : f.eval 0 ≠ 0,
      f.derivative.eval 0 / f.eval 0 = 5 / 2 ∧
      colemanLogSecondJet f h0 = 35 / 12 ∧
      (1 - 5) * colemanLogSecondJet f h0 = -35 / 3 ∧
      2 * ((1 - 5) * colemanLogSecondJet f h0) = -70 / 3 := by
  dsimp only
  refine ⟨by norm_num, ?_⟩
  norm_num [colemanLogSecondJet]

example : colemanLogSecondJet (1 + X : ℚ[X]) (by norm_num) = 0 := by
  norm_num [colemanLogSecondJet]

/-- An inverse candidate; the quadratic identity is a separate hypothesis. -/
def quadraticFrobeniusInverse {E ι : Type*} [Field E] [Fintype ι] [DecidableEq ι]
    (a b : E) (Φ : Matrix ι ι E) : Matrix ι ι E :=
  (-b⁻¹) • (Φ + a • 1)

example : quadraticFrobeniusInverse (-5 : ℚ) 6
    (fun _ _ : Fin 1 => (2 : ℚ)) = (fun _ _ => (1 / 2 : ℚ)) := by
  ext i j
  fin_cases i
  fin_cases j
  change (-(6 : ℚ)⁻¹) * (2 + (-5 : ℚ) * 1) = 1 / 2
  norm_num

example : quadraticFrobeniusInverse (0 : ℚ) 0
    (0 : Matrix (Fin 1) (Fin 1) ℚ) = 0 := by
  simp [quadraticFrobeniusInverse]

/-- The nonzero constant coefficient and quadratic relation certify both inverse identities. -/
theorem quadraticFrobeniusInverse_spec {E ι : Type*} [Field E] [Fintype ι]
    [DecidableEq ι] (a b : E) (Φ : Matrix ι ι E)
    (hΦ : Φ ^ 2 + a • Φ + b • 1 = 0) (hb : b ≠ 0) :
    Φ * quadraticFrobeniusInverse a b Φ = 1 ∧
      quadraticFrobeniusInverse a b Φ * Φ = 1 := by
  sorry

/-- The inverse candidate for 1-Φ, including its singular specialization. -/
def quadraticEulerInverse {E ι : Type*} [Field E] [Fintype ι] [DecidableEq ι]
    (a b : E) (Φ : Matrix ι ι E) : Matrix ι ι E :=
  (1 + a + b)⁻¹ • (Φ + (1 + a) • 1)

example : quadraticEulerInverse (-5 : ℚ) 6
    (fun _ _ : Fin 1 => (2 : ℚ)) = (fun _ _ => (-1 : ℚ)) := by
  ext i j
  fin_cases i
  fin_cases j
  change (1 + (-5 : ℚ) + 6)⁻¹ * (2 + (1 + (-5 : ℚ)) * 1) = -1
  norm_num

example : quadraticEulerInverse (-3 : ℚ) 2
    (1 : Matrix (Fin 1) (Fin 1) ℚ) = 0 := by
  norm_num [quadraticEulerInverse, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, Matrix.one_apply]

/-- The nonzero value of the quadratic polynomial at 1 certifies the Euler inverse. -/
theorem quadraticEulerInverse_spec {E ι : Type*} [Field E] [Fintype ι]
    [DecidableEq ι] (a b : E) (Φ : Matrix ι ι E)
    (hΦ : Φ ^ 2 + a • Φ + b • 1 = 0) (hs : 1 + a + b ≠ 0) :
    (1 - Φ) * quadraticEulerInverse a b Φ = 1 ∧
      quadraticEulerInverse a b Φ * (1 - Φ) = 1 := by
  sorry

/-- The common Euler product retains every nonzero denominator and the quadratic relation. -/
theorem quadraticEulerInverse_product {E ι : Type*} [Field E] [Fintype ι]
    [DecidableEq ι] (a b p : E) (Φ : Matrix ι ι E)
    (hΦ : Φ ^ 2 + a • Φ + b • 1 = 0) (hp : p ≠ 0) (hb : b ≠ 0)
    (hs : 1 + a + b ≠ 0) :
    quadraticEulerInverse a b Φ * (1 - p⁻¹ • quadraticFrobeniusInverse a b Φ) =
      (p * b * (1 + a + b))⁻¹ •
        ((1 + a + p * b) • Φ + (a * (1 + a + p * b) + b * (p - 1)) • 1) := by
  sorry

/-- Leading Laurent coefficient Γ*(1+j), as a rational number. -/
def gammaLeadingFactor (j : ℤ) : ℚ :=
  if 0 ≤ j then (j.toNat.factorial : ℚ)
  else (-1 : ℚ) ^ (-j - 1).toNat / ((-j - 1).toNat.factorial : ℚ)

example : gammaLeadingFactor (-2) = -1 := by
  change (-1 : ℚ) ^ 1 / (1 : ℚ) = -1
  norm_num

example : gammaLeadingFactor (-3) = 1 / 2 := by
  change (-1 : ℚ) ^ 2 / (2 : ℚ) = 1 / 2
  norm_num

/-- Every leading Laurent Gamma factor is nonzero, including at negative integer arguments. -/
theorem gammaLeadingFactor_ne_zero (j : ℤ) : gammaLeadingFactor j ≠ 0 := by
  sorry

/-! ## Layer 9: Coleman images and de Rham interpolation -/

section Constraints
variable {E R : Type*} [Field E] [CommRing R] [Algebra E R] {d m : ℕ}

/-- Rows whose specializations lie in prescribed E-subspaces. -/
def evaluationConstraints (J : Finset (Fin m)) (ev : Fin m → R →ₐ[E] E)
    (V : Fin m → Submodule E (Fin d → E)) : Submodule R (Fin d → R) where
  carrier := {F | ∀ j ∈ J, (fun k => ev j (F k)) ∈ V j}
  zero_mem' := by
    intro j hj
    convert (V j).zero_mem using 1
    ext k
    simp
  add_mem' := by
    intro F G hF hG j hj
    convert (V j).add_mem (hF j hj) (hG j hj) using 1
    ext k
    simp
  smul_mem' := by
    intro a F hF j hj
    convert (V j).smul_mem (ev j a) (hF j hj) using 1
    ext k
    simp

-- Empty constraints impose no condition, even on the zero-dimensional module.
example (ev : Fin 0 → R →ₐ[E] E) (V : Fin 0 → Submodule E (Fin d → E)) :
    evaluationConstraints Finset.univ ev V = ⊤ := by
  ext F
  simp [evaluationConstraints]

-- A constant fails the zero-at-zero condition whereas X satisfies it.
example :
    (fun _ : Fin 1 => (1 : ℚ[X])) ∉
      evaluationConstraints {0} (fun _ : Fin 1 => Polynomial.aeval (0 : ℚ))
        (fun _ => (⊥ : Submodule ℚ (Fin 1 → ℚ))) ∧
    (fun _ : Fin 1 => (X : ℚ[X])) ∈
      evaluationConstraints {0} (fun _ : Fin 1 => Polynomial.aeval (0 : ℚ))
        (fun _ => (⊥ : Submodule ℚ (Fin 1 → ℚ))) := by
  simp [evaluationConstraints, funext_iff]

/-- Simultaneous constraints admit a basis with the prescribed determinant
ideal (README §§9.7–9.8). The evaluation kernels are explicit hypotheses. -/
theorem constraint_basis_and_determinant [IsDomain R]
    (J : Finset (Fin m)) (t : R) (x : Fin m → E)
    (ev : Fin m → R →ₐ[E] E) (V : Fin m → Submodule E (Fin d → E))
    (hx : Function.Injective x) (hev : ∀ j, ev j t = x j)
    (hq : ∀ j, t - algebraMap E R (x j) ≠ 0)
    (hker : ∀ j f, ev j f = 0 ↔ t - algebraMap E R (x j) ∣ f) :
    ∃ b : Module.Basis (Fin d) R (evaluationConstraints J ev V),
      Associated (Matrix.det (fun i k => (b i : Fin d → R) k))
        (∏ j ∈ J, (t - algebraMap E R (x j)) ^ (d - Module.finrank E (V j))) := by
  sorry

end Constraints

/-- Row-coordinate change under n'=U n, with a possibly different
period basis ν'=B ν. The scalar extension is explicit. -/
theorem coleman_row_covariance {R A : Type*} [CommRing R] [CommRing A]
    (ι : R →+* A) {d : ℕ} (c : Fin d → R)
    (U : (Matrix (Fin d) (Fin d) R)ˣ)
    (M : Matrix (Fin d) (Fin d) A) (B : (Matrix (Fin d) (Fin d) A)ˣ) :
    (fun k => ι ((c ᵥ* (↑U⁻¹ : Matrix (Fin d) (Fin d) R)) k)) ᵥ*
        ((↑U : Matrix (Fin d) (Fin d) R).map ι * M *
          (↑B⁻¹ : Matrix (Fin d) (Fin d) A)) =
      ((fun k => ι (c k)) ᵥ* M) ᵥ* (↑B⁻¹ : Matrix (Fin d) (Fin d) A) := by
  sorry

/-- Integral image changes require a unit determinant. -/
def shearMatrix {R : Type*} [CommRing R] (e₁ e₂ : R) : Matrix (Fin 2) (Fin 2) R :=
  !![1, e₂; e₁, 1]

example : (shearMatrix (2 : ℤ) 3).det = -5 := by
  norm_num [shearMatrix, Matrix.det_fin_two]

-- Nonzero is insufficient over the integral ring.
example : (shearMatrix (1 : ℤ) (-4)).det = 5 ∧ ¬ IsUnit (5 : ℤ) := by
  norm_num [shearMatrix, Matrix.det_fin_two, Int.isUnit_iff]

/-- A unit determinant makes the integral shear invertible over its original coefficient ring. -/
theorem shearMatrix_unit {R : Type*} [CommRing R] (e₁ e₂ : R)
    (h : IsUnit (1 - e₁ * e₂)) : IsUnit (shearMatrix e₁ e₂) := by
  sorry

/-
The period rings, Bloch–Kato conditions, exponential, logarithm, quotient
logarithm, dual exponential, semilocal maps and character specialization remain
README targets, as do etaleDilog, combinedDilog, syntomicChernClass,
rootClassK3, localRegulator, globalPadicRegulator, padicUnitRegulatorRank,
PadicK3RegulatorInjective and StrongPadicK3RegulatorInjective.
The curve targets include curveSyntomicTarget, openCurveSplitting,
curveSyntomicRegulator, relativeCurveSyntomicRegulator and the continuous and
discrete semistable regulators and curveVologodskyPairing. The coefficient and Iwasawa targets include
transportedSpecialization, constraintBasis, projectionGenerator,
projectionWitness, colemanCoordinates, logarithmicMatrix, logarithmic factors,
crystallineRegulator, the big exponential and its obstruction,
meromorphicRegulator, scalarRegulator, rubinColemanMap, noncriticalRefinement,
colemanSpecializationSubspaces, signedColemanLocalCondition,
deRhamCharacterDomain, analyticDifferentialPower and deRhamRegulator.
Their cohomology, K-theory, Wach, Robba and distribution carriers, with the
normalization comparisons and bounded descent, are specified in README.md.
-/

end TauCetiRoadmap.PadicHodgeRegulators
