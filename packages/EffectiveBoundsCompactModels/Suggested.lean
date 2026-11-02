import Mathlib

/-!
# Effective bounds and compact models: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

Both headline theorems of this numerical continuation are statable at the pins.
The general short-integer, interpolation, indexed-Gram and explicit-model results
are supplied by EffectiveBoundsPartII and are not targets of this file.

The compact-model predicate below uses native polynomials and a generating integral
tuple. Its nonzero Jacobian together with generation expresses the field-component
condition for the specified integral tuple in the Jacobian-open quotient. The field count is the ordinary cardinal of a quotient by
rational algebra isomorphism, without embedding or automorphism weights.
-/

namespace TauCetiRoadmap.EffectiveBoundsCompactModels

open scoped BigOperators
open NumberField

/-! ## Layer 1: Explicit uniform compact models -/

/-- An integral generating tuple lies on the equations with invertible Jacobian.
Equivalently it gives a surjection from their rational Jacobian-open algebra to K
sending every variable to the specified integral coordinate. -/
def IsCompactModel (K : Type*) [Field K] [NumberField K] (r : ℕ)
    (E : Fin r → MvPolynomial (Fin r) ℤ) (κ : Fin r → 𝓞 K) : Prop :=
  (∀ i, MvPolynomial.aeval (fun j ↦ (κ j : K)) (E i) = 0) ∧
  Matrix.det (fun i j ↦ MvPolynomial.aeval (fun t ↦ (κ t : K))
    (MvPolynomial.pderiv j (E i))) ≠ 0 ∧
  Algebra.adjoin ℚ (Set.range (fun j ↦ (κ j : K))) = ⊤

/-- Every sufficiently large degree admits the least central-binomial
parameter and a compact model with height exponent 40 log n. -/
theorem uniformModel (K : Type*) [Field K] [NumberField K]
    (hn : 65536 ≤ Module.finrank ℚ K) :
    let n := Module.finrank ℚ K
    ∃ (r : ℕ) (E : Fin r → MvPolynomial (Fin r) ℤ) (κ : Fin r → 𝓞 K),
      5 ≤ r ∧
      n * (r + 1) ≤ Nat.choose (2 * r) r ∧
      (∀ s : ℕ, 0 < s → s < r → Nat.choose (2 * s) s < n * (s + 1)) ∧
      (r : ℝ) ≤ 3 * Real.log n ∧
      (Nat.choose (2 * r) r : ℝ) ≤ 16 * n * Real.log n ∧
      IsCompactModel K r E κ ∧
      (∀ i, (E i).totalDegree ≤ r) ∧
      ∀ i a, |((E i).coeff a : ℝ)| ≤
        Real.rpow ((n : ℝ) * NumberField.rootDiscr K) (40 * Real.log n) := by
  sorry

/-! ## Layer 2: Explicit degree-sensitive field counts -/

/-- Finite extensions represented inside a fixed algebraic closure of the rationals. -/
abbrev EmbeddedField :=
  {F : IntermediateField ℚ (AlgebraicClosure ℚ) // FiniteDimensional ℚ F}

/-- A represented finite extension carries its native number-field structure. -/
instance embeddedFieldNumberField (F : EmbeddedField) : NumberField F.val :=
  @NumberField.mk F.val inferInstance inferInstance F.property

/-- Exact degree and inclusive absolute-discriminant cutoff on embedded fields. -/
def BoundedFields (n : ℕ) (H : ℝ) :=
  {F : EmbeddedField // Module.finrank ℚ F.val = n ∧
    |(NumberField.discr F.val : ℝ)| ≤ H}

/-- Two bounded representatives define the same class precisely when they are
isomorphic as rational algebras. -/
def fieldIsoSetoid (n : ℕ) (H : ℝ) : Setoid (BoundedFields n H) where
  r F G := Nonempty (F.val.val ≃ₐ[ℚ] G.val.val)
  iseqv := ⟨fun _F ↦ ⟨AlgEquiv.refl⟩,
    fun ⟨e⟩ ↦ ⟨e.symm⟩, fun ⟨e⟩ ⟨f⟩ ↦ ⟨e.trans f⟩⟩

/-- The number of rational isomorphism classes of fields of exact degree n
and absolute discriminant at most H; its finiteness follows from Hermite. -/
noncomputable def numberFieldCount (n : ℕ) (H : ℝ) : ℕ :=
  Nat.card (Quotient (fieldIsoSetoid n H))

/-- Couveignes's degree-sensitive field bound, with an explicit sufficient
absolute constant, real inclusive cutoff, and ordinary unweighted classes. -/
theorem fieldCount (n : ℕ) (H : ℝ) (hn : 65536 ≤ n) (hH : 1 ≤ H) :
    (numberFieldCount n H : ℝ) ≤
      Real.rpow (n : ℝ) (65536 * n * (Real.log n) ^ 3) *
      Real.rpow H (65536 * (Real.log n) ^ 3) := by
  sorry

end TauCetiRoadmap.EffectiveBoundsCompactModels
