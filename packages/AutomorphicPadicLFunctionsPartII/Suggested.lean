import Mathlib

/-!
# Automorphic p-adic L-functions, part II: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs, with only the simple definitions needed
for those statements.

The following headline theorems are not statable at the pins:
* The unique equivariant coherent Eisenstein–Kronecker residue class: the completed
  Poincaré coefficient and equivariant support-cohomology carriers are missing.
* Refined integral critical evaluation and its de Rham polylogarithm comparison:
  the completed universal-extension, moment and Hodge comparison carriers are missing.
* The residue-normalized current comparison and explicit critical class formula:
  bundle-valued relative currents and the Eisenstein–Kronecker class are missing.
* Regularized critical Hecke-value integrality, for nontrivial and unit conductors:
  compatible CM period data and the algebraic-Hecke analytic L-value interface are missing.
* Generalized Shimura algebraicity: the Serre-tensor CM period and L-value interface
  is missing; an abstract Hecke character alone does not specify these periods.
* The weak Deligne period relation: Hecke motives and determinant periods are missing.
* The integral CM Eisenstein measure and its critical moments: ordinary theta data,
  integral multivariate Amice and Eisenstein–Kronecker coordinates are missing.
* Bounded ray-class interpolation, uniqueness and the CM-field Katz comparison:
  compatible arithmetic avatars, CM periods, the smoothed arithmetic family and
  the Katz measure interface are missing.

The analytic continuation headline below uses the actual lattice series in Layer 3.
The series is used through HasSum in its convergence half-plane; the total tsum
outside that half-plane is not claimed to be its analytic continuation.
-/

namespace TauCetiRoadmap.AutomorphicPadicLFunctionsPartII

/-! ## Layer 3: Analytic representatives and current normalization -/

open scoped BigOperators

/-- The diagonal Hermitian form, linear in its first variable. Its imaginary part
is the alternating pairing used for the lattice characters. -/
noncomputable def hermitianPairing {d : ℕ} (h : Fin d → ℝ)
    (z w : Fin d → ℂ) : ℂ :=
  ∑ i, (h i : ℂ) * z i * star (w i)

/-- A Kronecker summand with antiholomorphic multi-index numerator. The singular
zero vector is omitted before taking the real logarithm of the squared norm. -/
noncomputable def kroneckerTerm {d : ℕ} (h : Fin d → ℝ) (ν : Fin d → ℕ)
    (z w : Fin d → ℂ) (s : ℂ) (l : Fin d → ℂ) : ℂ :=
  if l = -z then 0 else
    (∏ i, star (z i + l i) ^ ν i) *
      Complex.exp ((2 * Real.pi * Complex.I) * (hermitianPairing h l w).im) /
      Complex.exp (s * (Real.log (hermitianPairing h (z + l) (z + l)).re : ℂ))

/-- The generalized Eisenstein–Kronecker lattice series. In its convergence
half-plane this is the sum of the terms in Kings–Sprang v4, Definition 3.11. -/
noncomputable def kroneckerSeries {d : ℕ} (Λ : Submodule ℤ (Fin d → ℂ))
    (h : Fin d → ℝ) (ν : Fin d → ℕ) (z w : Fin d → ℂ) (s : ℂ) : ℂ :=
  ∑' l : Λ, kroneckerTerm h ν z w s l

/-- For every positive diagonal Hermitian form and full real lattice in ℂᵈ,
the generalized Kronecker series has meromorphic continuation, is analytic away
from d (in particular at zero), and has at most a simple pole at d. For nonzero
multi-index it is also analytic at d. The auxiliary analytic function G expresses
the removable extension of (s-d)F(s) without assigning a false value at a pole.
Kings–Sprang v4, Proposition 3.13 and its Mellin proof, with completed and
uncompleted residues distinguished as in README.md §3.4. -/
theorem kronecker_meromorphic_continuation
    (d : ℕ) (hd : 0 < d) (Λ : Submodule ℤ (Fin d → ℂ))
    [DiscreteTopology Λ] [IsZLattice ℝ Λ]
    (h : Fin d → ℝ) (hh : ∀ i, 0 < h i)
    (ν : Fin d → ℕ) (z w : Fin d → ℂ) :
    ∃ F : ℂ → ℂ,
      MeromorphicOn F Set.univ ∧
      (∀ s : ℂ, (d : ℝ) + (∑ i, (ν i : ℝ)) / 2 < s.re →
        HasSum (fun l : Λ => kroneckerTerm h ν z w s l) (F s) ∧
        F s = kroneckerSeries Λ h ν z w s) ∧
      (∀ s : ℂ, s ≠ (d : ℂ) → AnalyticAt ℂ F s) ∧
      (ν ≠ 0 → AnalyticAt ℂ F (d : ℂ)) ∧
      (∃ G : ℂ → ℂ, AnalyticAt ℂ G (d : ℂ) ∧
        ∀ s : ℂ, s ≠ (d : ℂ) → G s = (s - (d : ℂ)) * F s) := by
  sorry

end TauCetiRoadmap.AutomorphicPadicLFunctionsPartII
