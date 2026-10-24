import Mathlib

/-!
# Global shtukas and function-field Langlands, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs. Property A is stated on finite weight
arrays, the actual multiplicity arrays used in the global argument.

The following headlines are not statable at the pins:
* intrinsic geometricity and uniqueness of essentially tempered completions lack
  reductive L-parameters and their Weil–Deligne completions;
* absolute constant-twist decomposition, geometric boundary propagation,
  Sawin–Templier purity and local purity lack lisse adic and Weil sheaves on curves;
* Li-Huerta uniformization and comparison lack global/local shtuka stacks,
  their cohomology and the Fargues–Scholze parametrization;
* geometricity and coefficient transport of local representations, irreducible
  globalization, discrete-series pure completion and embedding independence lack
  reductive local groups with their parameter and temperedness interfaces;
* integral weights from an anchor, generic Ramanujan and genericity propagation,
  and elliptic-parameter temperedness lack cuspidal excursion blocks and their
  lisse realizations;
* Lafforgue–Zhu decomposition, conditional stack realization and integer-weight
  Ramanujan lack shtuka cohomology and adic direct images of algebraic stacks;
* conditional discrete rationality and Xue quotient parametrization with ramified
  compatibility lack discrete automorphic modules and global excursion actions;
* place-independent weights, complementary-series propagation, exceptional weight
  comparisons and extraneous-point elimination lack the automorphic, nilpotent-orbit
  and Satake carriers tying these assertions to actual parameters.

Global Arthur homomorphisms, their Satake matching and the full Arthur decomposition
are conjectural interfaces of the README, not theorem assertions in this file.
-/

namespace TauCetiRoadmap.GlobalShtukasAndFunctionFieldLanglandsPartII

/-! ## Layer 8: Global weight patterns and elimination of extraneous points -/

/-- A finite array of nonnegative multiplicities indexed by global and local integer weights. -/
abbrev WeightArray := (ℤ × ℤ) →₀ ℕ

/-- The rank of the global weight piece with index `i`, obtained by summing its local weights. -/
def rowSum (a : WeightArray) (i : ℤ) : ℕ :=
  a.sum fun ik n => if ik.1 = i then n else 0

/-- The multiplicity of local weight `k`, obtained by summing over global weight pieces. -/
def colSum (a : WeightArray) (k : ℤ) : ℕ :=
  a.sum fun ik n => if ik.2 = k then n else 0

/-- Property A: a finite array symmetric in each row about its row index is diagonal,
with equal margins, or its column margin exceeds its row margin at the greatest
index where they differ. Ciubotaru–Harris, arXiv:2311.15300v1, §10.2, p. 34. -/
theorem propertyA (a : WeightArray)
    (hsym : ∀ i j : ℤ, a (i, i + j) = a (i, i - j)) :
    ((∀ i k : ℤ, i ≠ k → a (i, k) = 0) ∧ ∀ i : ℤ, rowSum a i = colSum a i) ∨
      ∃ i : ℤ, rowSum a i < colSum a i ∧
        ∀ j : ℤ, i < j → rowSum a j = colSum a j := by
  sorry

end TauCetiRoadmap.GlobalShtukasAndFunctionFieldLanglandsPartII
