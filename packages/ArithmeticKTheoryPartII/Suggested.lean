import Mathlib

/-!
# Arithmetic K-theory, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

The following headlines are not statable at the pins:
* The cyclotomic Picard–Bott and Artin–transfer comparisons lack higher algebraic
  K-groups and Bott-localized K-theory.
* Betti–Hodge splitting, height-one comparison and CM generation lack the
  symplectic K-spectrum, its comparison maps and stable homotopy of its sources.
* The coherent arithmetic action and finite-genus detection lack ppav moduli
  realization and the symplectic K-spectrum.
* Groupoid CM reciprocity with stable Bott-linearity lacks those CM groupoids
  and their stable suspension spectra.
* Universal relative extension classification lacks relative group homology
  with its extension category. Absolute groupHomology alone does not supply it.
* Finite, p-adic, locally split and all-integer-twist universal arithmetic
  extensions lack KSp, higher K-groups, their arithmetic action and completed
  relative homology.
* Triviality of the arithmetic action in degree 4k-1 lacks KSp and that action.
* The Vandiver criterion for conjugation-fixed primes lacks the compatible
  p-Hilbert class-field prime torsors at all cyclotomic levels.
* The integral indecomposable product and low-range Hurewicz theorems lack the
  spectral and Pontryagin-homology/Bockstein quotient carriers.
* The stable symplectic and rational Hodge comparisons lack the stable arithmetic
  symplectic realization and its Hodge characteristic classes.
* Bernoulli divisibility of Hodge characteristic numbers lacks principally
  polarized abelian schemes with the required Hodge/cap-product realization.

The cyclotomic split-prime and CM ideal-product realization theorems are statable
on native number fields and fractional ideals. The latter uses native semilinear
conjugation and the trace-dual ideal, without a CM realization functor.
Finite-rank integral symplectic homology stability in README §8.4 is a supporting
target on Matrix.symplecticGroup and groupHomology, rather than an acceptance
headline; the stable KSp comparison above additionally needs the missing spectrum.
No substitute predicates or admitted data are used for the other headlines.
-/

namespace TauCetiRoadmap.ArithmeticKTheoryPartII

/-! ## Layer 2: CM coefficient lines and prescribed signs -/

open NumberField

/-- In an odd prime-power cyclotomic field, every choice of real signatures
on its maximal real subfield is realized by a generator of a prime away from p
that splits into two distinct conjugate primes in the CM field.
FGV, Lemma 4.8, author copy pp. 28–29. -/
theorem exists_split_prime_with_signs
    (p n : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hn : 0 < n)
    (K : Type*) [Field K] [NumberField K]
    [IsCyclotomicExtension ({p ^ n} : Set ℕ) ℚ K] [IsCMField K]
    (ε : (maximalRealSubfield K →+* ℝ) → ℤˣ) :
    ∃ t : 𝓞 (maximalRealSubfield K),
      t ≠ 0 ∧
      (∀ τ : maximalRealSubfield K →+* ℝ,
        0 < ((ε τ : ℤ) : ℝ) * τ (t : maximalRealSubfield K)) ∧
      (Ideal.span ({t} : Set (𝓞 (maximalRealSubfield K)))).IsPrime ∧
      (p : 𝓞 (maximalRealSubfield K)) ∉ Ideal.span {t} ∧
      ∃ P : Ideal (𝓞 K), P ≠ ⊥ ∧ P.IsPrime ∧
        P ≠ P.map (IsCMField.ringOfIntegersComplexConj K).toRingHom ∧
        (Ideal.span ({t} : Set (𝓞 (maximalRealSubfield K)))).map
            (algebraMap (𝓞 (maximalRealSubfield K)) (𝓞 K)) =
          P * P.map (IsCMField.ringOfIntegersComplexConj K).toRingHom := by
  sorry

/-- Complex conjugation of a fractional ideal in a CM field, using the native
semilinear transport of fractional ideals induced by conjugation on its integers. -/
noncomputable def conjugateFractionalIdeal
    (K : Type*) [Field K] [NumberField K] [IsCMField K]
    (B : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) :
    FractionalIdeal (nonZeroDivisors (𝓞 K)) K :=
  FractionalIdeal.ringEquivOfRingEquiv K K
    (IsCMField.ringOfIntegersComplexConj K).toRingEquiv B

/-- A nonzero fractional ideal with scalar skew-Hermitian pairing valued perfectly
in the inverse different and with the specified positive-imaginary CM type.
The inverse different is the trace dual of the unit ideal over ℤ ⊂ ℚ. -/
def IsSkewCMLine
    (K : Type*) [Field K] [NumberField K] [IsCMField K]
    (Φ : Set (K →+* ℂ))
    (B : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) (δ : K) : Prop :=
  B ≠ 0 ∧ δ ≠ 0 ∧ IsCMField.complexConj K δ = -δ ∧
    FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) δ * B *
        conjugateFractionalIdeal K B = FractionalIdeal.dual ℤ ℚ 1 ∧
    ∀ τ : K →+* ℂ, τ ∈ Φ ↔ 0 < (τ δ).im

/-- In an odd prime-power cyclotomic field, every CM type admits two perfect
rank-one skew-Hermitian lines whose ideal-class product is the prescribed
anti-conjugate class. The scalar a records equality modulo principal ideals.
FGV, Proposition 4.7(i)–(ii), author copy pp. 27–29. -/
theorem exists_cm_lines_with_ideal_product
    (p n : ℕ) (hp : p.Prime) (hodd : p ≠ 2) (hn : 0 < n)
    (K : Type*) [Field K] [NumberField K]
    [IsCyclotomicExtension ({p ^ n} : Set ℕ) ℚ K] [IsCMField K]
    (Φ : Set (K →+* ℂ))
    (hΦ : ∀ τ : K →+* ℂ,
      τ ∈ Φ ↔ τ.comp (IsCMField.complexConj K).toRingHom ∉ Φ)
    (L : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) (hL : L ≠ 0) :
    ∃ (B₁ B₂ : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) (δ₁ δ₂ a : K),
      IsSkewCMLine K Φ B₁ δ₁ ∧ IsSkewCMLine K Φ B₂ δ₂ ∧ a ≠ 0 ∧
      B₁ * B₂ = FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) a *
        (L * (conjugateFractionalIdeal K L)⁻¹) := by
  sorry

end TauCetiRoadmap.ArithmeticKTheoryPartII
