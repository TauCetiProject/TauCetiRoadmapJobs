import Mathlib
import TauCeti.LinearAlgebra.IntegralLattice.Overlattice.Isotropic

/-!
# EnriquesSurfacesAndIntegralNonexistence: representative target signatures

The roadmap is README.md. This file records definitions and theorem signatures statable
against the pinned APIs and is not exhaustive. It uses Mathlib 082e2d37 and Tau Ceti f7904748.
The concrete objects are rational twist representatives and two integral Gram lattices on
the standard rational coordinate space. Curve intersections have negative root squares;
the native discriminant quadratic map uses half the full norm modulo the integers.
Geometric surfaces, relative Picard spaces and canonical torsors are specified in README.md.
-/

namespace TauCetiRoadmap.EnriquesSurfacesAndIntegralNonexistence

open TauCeti

/-! ## Layer 0: geometric Enriques surfaces and their numerical lattice -/

/-! ## Layer 1: half-fibres, canonical coverings and exceptionality -/

/-! ## Layer 2: families, Picard descent and canonical torsors -/

/-! ## Layer 3: point counts, dyadic twists and integral Picard constancy -/

/-- The eight dyadic square-class representatives, expressed as rational numbers. -/
def dyadicRepresentative (e a b : Fin 2) : ℚ :=
  (-1) ^ e.val * 2 ^ a.val * 5 ^ b.val

/-- The four rational twists that are units of `ℤ[1/2]`; five is absent. -/
def globalTwist (e a : Fin 2) : ℚ := (-1) ^ e.val * 2 ^ a.val

/-- Every dyadic representative is nonzero. -/
theorem dyadicRepresentative_nonzero (e a b : Fin 2) :
    dyadicRepresentative e a b ≠ 0 := by sorry

/-- Separate the globally available factor from the unramified dyadic factor. -/
theorem dyadicRepresentative_decomposition (e a b : Fin 2) :
    dyadicRepresentative e a b = globalTwist e a * 5 ^ b.val := by sorry

/-- The four global twists are nonzero rational numbers. -/
theorem globalTwist_nonzero (e a : Fin 2) : globalTwist e a ≠ 0 := by sorry

/-- The same global twist removes both ramified factors, leaving class one or five. -/
theorem globalTwist_removes_ramified_part (e a b : Fin 2) :
    dyadicRepresentative e a b * globalTwist e a =
      5 ^ b.val * (2 ^ a.val : ℚ) ^ 2 := by sorry

/-- The Q₂ specialization of local-field square-class classification; README 3.6. -/
theorem dyadic_square_classes (x : ℚ_[2]) (hx : x ≠ 0) :
    ∃! t : Fin 2 × Fin 2 × Fin 2,
      IsSquare (x / (dyadicRepresentative t.1 t.2.1 t.2.2 : ℚ_[2])) := by sorry

/-- Independent sign, valuation and unramified factors are retained. -/
example : dyadicRepresentative 1 0 0 = -1 ∧
    dyadicRepresentative 0 1 0 = 2 ∧ dyadicRepresentative 0 0 1 = 5 := by
  norm_num [dyadicRepresentative]

/-- The mixed dyadic class is negative ten. -/
example : dyadicRepresentative 1 1 1 = -10 := by norm_num [dyadicRepresentative]

/-- The unit and sign global twists. -/
example : globalTwist 0 0 = 1 ∧ globalTwist 1 0 = -1 := by norm_num [globalTwist]

/-- The two global twists supported at two. -/
example : globalTwist 0 1 = 2 ∧ globalTwist 1 1 = -2 := by norm_num [globalTwist]

/-! ## Layer 4: Enriques fibrations and their rational Jacobians -/

/-! ## Layer 5: fibre configurations and the first exclusions -/

/-! ## Layer 6: ten-curve lattices and the I₄* exclusion -/

/-- The first Gram matrix, in the order `(C₁,…,C₈,R,F)` of README 6.1. -/
def firstGram : Matrix (Fin 10) (Fin 10) ℤ := !![
  -2,1,0,0,0,0,0,0,0,0;
  1,-2,1,0,0,0,0,0,0,0;
  0,1,-2,1,0,0,0,0,0,0;
  0,0,1,-2,1,0,0,0,1,0;
  0,0,0,1,-2,1,0,0,0,0;
  0,0,0,0,1,-2,1,1,0,0;
  0,0,0,0,0,1,-2,0,0,0;
  0,0,0,0,0,1,0,-2,0,0;
  0,0,0,1,0,0,0,0,-2,1;
  0,0,0,0,0,0,0,0,1,0]

/-- The second Gram matrix, the orthogonal sum `D₈(−1) ⊕ U`, in README 6.1. -/
def secondGram : Matrix (Fin 10) (Fin 10) ℤ := !![
  -2,1,0,0,0,0,0,0,0,0;
  1,-2,1,0,0,0,0,0,0,0;
  0,1,-2,1,0,0,0,0,0,0;
  0,0,1,-2,1,0,0,0,0,0;
  0,0,0,1,-2,1,0,0,0,0;
  0,0,0,0,1,-2,1,1,0,0;
  0,0,0,0,0,1,-2,0,0,0;
  0,0,0,0,0,1,0,-2,0,0;
  0,0,0,0,0,0,0,0,0,1;
  0,0,0,0,0,0,0,0,1,0]

/-- The first Gram matrix is symmetric. -/
theorem firstGram_symmetric : firstGram.IsSymm := by
  apply Matrix.IsSymm.ext
  intro i j
  fin_cases i <;> fin_cases j <;> decide

/-- The second Gram matrix is symmetric. -/
theorem secondGram_symmetric : secondGram.IsSymm := by
  apply Matrix.IsSymm.ext
  intro i j
  fin_cases i <;> fin_cases j <;> decide

/-- Specialize the native Gram-lattice constructor to the first integer matrix. -/
noncomputable def firstLattice : IntegralLattice (Fin 10 → ℚ) :=
  IntegralLattice.ofGramMatrix (Pi.basisFun ℚ (Fin 10)) firstGram firstGram_symmetric

/-- Specialize the native Gram-lattice constructor to the second integer matrix. -/
noncomputable def secondLattice : IntegralLattice (Fin 10 → ℚ) :=
  IntegralLattice.ofGramMatrix (Pi.basisFun ℚ (Fin 10)) secondGram secondGram_symmetric

/-- The signed determinant of the first intersection matrix is negative four. -/
theorem firstGram_determinant : firstGram.det = -4 := by sorry

/-- The signed determinant of the second intersection matrix is negative four. -/
theorem secondGram_determinant : secondGram.det = -4 := by sorry

/-- The first native integral lattice is even. -/
theorem firstLattice_even : firstLattice.IsEven := by sorry

/-- The second native integral lattice is even. -/
theorem secondLattice_even : secondLattice.IsEven := by sorry

/-- Native integral basis pairings recover every entry of the first matrix. -/
theorem firstLattice_basis_pairing (i j : Fin 10) :
    firstLattice.integralForm
      (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
        firstGram firstGram_symmetric i)
      (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
        firstGram firstGram_symmetric j) = firstGram i j := by sorry

/-- Native integral basis pairings recover every entry of the second matrix. -/
theorem secondLattice_basis_pairing (i j : Fin 10) :
    secondLattice.integralForm
      (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
        secondGram secondGram_symmetric i)
      (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
        secondGram secondGram_symmetric j) = secondGram i j := by sorry

/-- The first matrix retains its extra curve edge and two-section degree. -/
example : firstGram 8 3 = 1 ∧ firstGram 8 9 = 1 ∧ firstGram 9 9 = 0 := by decide

/-- The second matrix has a U block and lacks the first matrix's extra edge. -/
example : secondGram 8 8 = 0 ∧ secondGram 8 9 = 1 ∧ secondGram 8 3 = 0 := by decide

/-- Both ends of the D₈ fork meet the same chain vertex. -/
example : secondGram 5 6 = 1 ∧ secondGram 5 7 = 1 := by decide

/-- The first native lattice has the integral carrier generated by the standard basis. -/
example : firstLattice.carrier =
    Submodule.span ℤ (Set.range (Pi.basisFun ℚ (Fin 10))) := by
  exact IntegralLattice.ofGramMatrix_carrier _ _ _

/-- The second native lattice has the same integral carrier, with its different form. -/
example : secondLattice.carrier =
    Submodule.span ℤ (Set.range (Pi.basisFun ℚ (Fin 10))) := by
  exact IntegralLattice.ofGramMatrix_carrier _ _ _

/-- The first pairing distinguishes the extra R-to-C₄ edge on the actual carrier. -/
example : firstLattice.integralForm
    (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
      firstGram firstGram_symmetric 8)
    (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
      firstGram firstGram_symmetric 3) = 1 := by
  exact IntegralLattice.integralForm_ofGramMatrix_apply _ _ _ _ _

/-- The second pairing has no F′-to-C₄ edge on the actual carrier. -/
example : secondLattice.integralForm
    (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
      secondGram secondGram_symmetric 8)
    (IntegralLattice.ofGramMatrix.basis (Pi.basisFun ℚ (Fin 10))
      secondGram secondGram_symmetric 3) = 0 := by
  exact IntegralLattice.integralForm_ofGramMatrix_apply _ _ _ _ _

/-- The existing discriminant map uses the ambient half-norm on a dual representative. -/
example (x : firstLattice.dualCarrier) :
    firstLattice.discriminantQuadraticMap firstLattice_even (Submodule.Quotient.mk x) =
      ((firstLattice.form x x / 2 : ℚ) : AddCircle (1 : ℚ)) := by
  exact IntegralLattice.discriminantQuadraticMap_mk _ _ _

/-- A spinor full norm minus two has native quadratic value zero. -/
example : ((-2 / 2 : ℚ) : AddCircle (1 : ℚ)) = 0 := by
  rw [AddCircle.coe_eq_zero_iff]
  exact ⟨-1, by norm_num⟩

/-- A vector full norm minus one is not isotropic in the native convention. -/
example : ((-1 / 2 : ℚ) : AddCircle (1 : ℚ)) ≠ 0 := by
  rw [Ne, AddCircle.coe_eq_zero_iff]
  rintro ⟨n, hn⟩
  have h : (2 * n + 1 : ℚ) = 0 := by
    rw [zsmul_eq_mul, mul_one] at hn
    linarith
  have h' : (2 * n + 1 : ℤ) = 0 := by exact_mod_cast h
  omega

/-- The weighted-degree-two incidence equation for I₄* has fifteen solutions; README 6.11. -/
theorem i4Star_incidence_count :
    (Finset.univ.filter (fun a : Fin 9 → Fin 3 =>
      ∑ i : Fin 9, (![1, 1, 2, 2, 2, 2, 2, 1, 1] i : ℕ) * (a i).val = 2)).card =
      15 := by sorry

/-! ## Layer 7: III* exclusions and restricted fibrations -/

/-- The weighted-degree-two incidence equation for III* has six solutions; README 7.2. -/
theorem iiiStar_incidence_count :
    (Finset.univ.filter (fun a : Fin 8 → Fin 3 =>
      ∑ i : Fin 8, (![1, 2, 2, 3, 4, 3, 2, 1] i : ℕ) * (a i).val = 2)).card =
      6 := by sorry

/-! ## Layer 8: lifting and the two nonexistence theorems -/

/-
The following geometric definitions and their interfaces remain in README.md:
IsEnriques, HalfFibre, IsMinusTwoCurve, IsTwoSection, OrdinaryType, ClassicalType,
SupersingularType, K3LikeCover, Conductrix, Biconductrix, IsExceptional,
IsExtraSpecialE8, EnriquesFamily, CanonicalCoverFamily, ConstantNum, ConstantPicard,
SplitPicard, fourGlobalCanonicalTwists and enriquesJacobian.

The geometric milestones also remain there: numerical lattice isometry; primitive-nef
linear systems and partners; relative Picard representability and descent; integral full
Picard constancy; rational Jacobian comparison; the fourteen-case completeness theorem
and three additional exclusions; the two ten-curve exclusions and I₄*/III* eliminations;
the arbitrary-characteristic restricted-configuration theorem; W₂ lifting and miniversal
deformation; and finite-field and integral nonexistence.
-/

end TauCetiRoadmap.EnriquesSurfacesAndIntegralNonexistence
