import Mathlib

/-!
# Complex multiplication and explicit reciprocity, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs, using native mathematical carriers.

The following headlines are not statable at the pins:
* CM height linearity on the overlap span: CM types, the component-period functional
  and stable Faltings heights of CM abelian varieties are missing.
* All-prime integral CM realizations and different-torsion graph comparison:
  integral CM families and tensor-compatible Breuil–Kisin realization carriers are missing.
* Total reflex metrized determinant and height identity: the total reflex family,
  filtered integral Hodge bundles and arithmetic Picard degrees are missing.
* Orthogonal big-CM arithmetic intersection and prime elimination: integral GSpin
  special divisors, their metrized Hodge line and CM arithmetic intersections are missing.
* Corrected nearby-type identity and quaternionic CM height by arithmetic adjunction:
  component Hodge heights, quaternionic integral curves and the modified intersection
  pairing are missing.
* Averaged Colmez, including its imaginary quadratic case: CM types and stable heights
  on actual CM abelian varieties are missing.
* Distant ideal isogenies and subpolynomial individual CM heights: CM abelian
  varieties with their isogenies and heights are missing.
* Primitive and general center-order polarized CM orbit bounds: polarized CM coarse
  moduli points, their endomorphism center orders and Galois action are missing.
* Polynomial CM lift heights and bounded moduli-degree finiteness: the Siegel CM
  locus and its algebraic uniformization and period-coordinate interface are missing.

No numerical implication or finite type-cube calculation replaces these headlines.
-/

namespace TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocityPartII

universe u

/-! ## Layer 10: Individual height bounds and distant isogenies -/

/-- For every positive half-degree and every positive real epsilon, the ratio of
maximal-order class numbers of a CM field and its maximal real subfield is bounded
below by a positive dimension-uniform multiple of its absolute discriminant to
`1/4 - epsilon`. The constant is allowed to be ineffective.
Source: Tsimerman, The André–Oort conjecture for A_g, §2.2, p. 382, with the native
CM regulator ratio retained. -/
theorem relative_class_number_growth (g : ℕ) (hg : 0 < g)
    (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧
      ∀ (E : Type u) [Field E] [NumberField E] [NumberField.IsCMField E],
        Module.finrank ℚ E = 2 * g →
        C * (|(NumberField.discr E : ℝ)|) ^ ((1 : ℝ) / 4 - ε) ≤
          (NumberField.classNumber E : ℝ) /
            (NumberField.classNumber (NumberField.maximalRealSubfield E) : ℝ) := by
  sorry

end TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocityPartII
