import Mathlib

/-!
# Arithmetic K-theory, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs.

The following headlines are not statable at the pins:
* The cyclotomic Picard–Bott and Artin–transfer comparisons lack higher algebraic
  K-groups and Bott-localized K-theory.
* Realization of CM types with prescribed ideal differences lacks the polarized
  coefficient-line groupoids and their CM realization functor.
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

The cyclotomic split-prime theorem is statable on native number fields and ideals.
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

end TauCetiRoadmap.ArithmeticKTheoryPartII
