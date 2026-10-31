import Mathlib

/-!
# Function field arithmetic, Part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned APIs, using affine root-chart and tensor-product carriers.

The following headline theorems are not statable at the pins with a few simple definitions:
* Relative regular root geometry lacks the finite-root stack and its morphism properties.
* The coherent infinite root stack, its fpqc quotient and arbitrary base change lack the
  coherent root pseudofunctor and the represented band-action quotient.
* Infinite affine coinvariants lack the coherent root-colimit coaction and its rational-character
  grading; constructing that coaction is a substantial roadmap target.
* The infinite DVR zero-section gerbe, fpqc Kummer classification and non-fppf torsor lack the
  relative infinite gerbe and fpqc torsor groupoid carriers.
* The root Picard square quotient and signed adelic equivalence lack the root Picard stack,
  its degree components and the completed-lattice gluing functor.
* Rational DM perverse descent and proper quasi-finite intermediate-extension comparison lack
  the native DM constructible derived category and its perverse heart.
* Symmetric lisse lines across collisions and their multiplication lack the root symmetric-power
  stack and its adic lisse coefficient category.
* Exterior-power cohomology of root symmetric powers lacks stack étale cohomology with these
  coefficients and its Frobenius action.
* High-degree Abel–Jacobi descent lacks the root Abel–Jacobi morphism and stack lisse descent.
* The normalized character sheaf in every integer degree lacks the graded root Picard stack
  and its lisse category with Frobenius.
* The ramified norm complex and its torsor obstructions lack the root multiplicative sheaf,
  its norm and their compatible torsor groupoids.
* Quadratic Frobenius trace comparison lacks the root Picard character sheaf and its trace.
-/

namespace TauCetiRoadmap.FunctionFieldArithmeticPartII

open scoped TensorProduct Polynomial

universe u

/-! ## Layer 1: Root coordinates and affine comparison -/

/-- The affine root-chart algebra, including nonunit and nilpotent parameters. -/
abbrev rootChart (A : Type u) [CommRing A] (f : A) (n : ℕ) :=
  AdjoinRoot ((Polynomial.X : A[X]) ^ n - Polynomial.C f)

/-- The quotient-algebra map sends the chart root to the product of the unit-root
coordinate and the chart root, and fixes coefficients. For positive n, A[X]/(Xⁿ−1)
is the character Hopf algebra and this map is the left coaction. -/
noncomputable def rootChartCoaction (A : Type u) [CommRing A] (f : A) (n : ℕ) :
    rootChart A f n →ₐ[A] (rootChart A 1 n) ⊗[A] (rootChart A f n) := by
  let h := AdjoinRoot.root ((Polynomial.X : A[X]) ^ n - Polynomial.C (1 : A))
  let t := AdjoinRoot.root ((Polynomial.X : A[X]) ^ n - Polynomial.C f)
  have hh : h ^ n = 1 := by
    have e := AdjoinRoot.eval₂_root ((Polynomial.X : A[X]) ^ n - Polynomial.C (1 : A))
    simpa only [Polynomial.eval₂_sub, Polynomial.eval₂_pow, Polynomial.eval₂_X,
      Polynomial.eval₂_C, Polynomial.eval₂_one, map_one, sub_eq_zero] using e
  have ht : t ^ n = algebraMap A (rootChart A f n) f := by
    have e := AdjoinRoot.eval₂_root ((Polynomial.X : A[X]) ^ n - Polynomial.C f)
    simpa only [Polynomial.eval₂_sub, Polynomial.eval₂_pow, Polynomial.eval₂_X,
      Polynomial.eval₂_C, AdjoinRoot.algebraMap_eq, sub_eq_zero] using e
  refine AdjoinRoot.liftAlgHom _ (Algebra.ofId A _) (h ⊗ₜ[A] t) ?_
  simp only [Polynomial.eval₂_sub, Polynomial.eval₂_pow, Polynomial.eval₂_X,
    Polynomial.eval₂_C]
  rw [Algebra.TensorProduct.tmul_pow, hh, ht]
  change 1 ⊗ₜ[A] algebraMap A (rootChart A f n) f -
    algebraMap A (rootChart A 1 n ⊗[A] rootChart A f n) f = 0
  rw [Algebra.TensorProduct.algebraMap_apply']
  exact sub_self _

/-- This quotient-algebra map sends a pure tensor to the image of its first factor under
rootChartCoaction multiplied by the right inclusion of its second factor. For positive n
it is the root-chart action comparison. -/
noncomputable def rootChartComparison (A : Type u) [CommRing A] (f : A) (n : ℕ) :
    (rootChart A f n) ⊗[A] (rootChart A f n) →ₐ[A]
      (rootChart A 1 n) ⊗[A] (rootChart A f n) :=
  Algebra.TensorProduct.lift (rootChartCoaction A f n)
    Algebra.TensorProduct.includeRight (fun _ _ => Commute.all _ _)

/-- The root-chart comparison is injective exactly at exponent one or at a regular parameter. -/
theorem rootChartComparison_injective_iff (A : Type u) [CommRing A] (f : A)
    (n : ℕ) (hn : 0 < n) :
    Function.Injective (rootChartComparison A f n) ↔
      n = 1 ∨ Function.Injective (fun a : A => f * a) := by
  sorry

/-- The root-chart comparison is surjective exactly at exponent one or at a unit parameter. -/
theorem rootChartComparison_surjective_iff (A : Type u) [CommRing A] (f : A)
    (n : ℕ) (hn : 0 < n) :
    Function.Surjective (rootChartComparison A f n) ↔ n = 1 ∨ IsUnit f := by
  sorry

/-! ## Layer 2: Relative finite-root geometry -/

/-- Invariants of the affine root chart: for every commutative ring A, every f ∈ A and every
positive n, including n divisible by the residue characteristic, an element of A[t]/(tⁿ − f) is
fixed by the universal root-chart coaction exactly when it is a coefficient. -/
theorem rootChartCoaction_eq_includeRight_iff (A : Type u) [CommRing A] (f : A) (n : ℕ)
    (hn : 0 < n) (b : rootChart A f n) :
    rootChartCoaction A f n b = Algebra.TensorProduct.includeRight b ↔
      b ∈ (algebraMap A (rootChart A f n)).range := by
  sorry

end TauCetiRoadmap.FunctionFieldArithmeticPartII
