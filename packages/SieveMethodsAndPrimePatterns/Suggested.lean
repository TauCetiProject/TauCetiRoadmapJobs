import Mathlib

/-!
# SieveMethodsAndPrimePatterns: representative target signatures

README.md is the authoritative roadmap. This file records light definitions and
representative theorem signatures statable against the pinned APIs; it is not exhaustive.
It reuses Mathlib's weighted sieve, arithmetic functions, characters and integration
carriers. Cutoffs are strict where stated; remainders include the term at one.
Inner products are conjugate-linear in the first variable. Prime indices start at zero,
and almost-primality counts factors with multiplicity. Conjectures remain hypotheses.
The ordinary binary-density analytic requirement and the ideal-spin constructions
are specified in README.md.
-/

noncomputable section
open scoped BigOperators ArithmeticFunction.Moebius
namespace TauCetiRoadmap.SieveMethodsAndPrimePatterns
attribute [local instance] Classical.propDecidable

/-! ## Layer 0: finite weighted sieves and local data -/

namespace BoundingSieve

/-- The Euler-product error includes the divisor one; the total mass is an approximation. -/

theorem abs_siftedSum_sub_eulerProduct_le (s : BoundingSieve) :
    |s.siftedSum - s.totalMass * (∏ p ∈ s.prodPrimes.primeFactors, (1 - s.nu p))| ≤
      ∑ d ∈ s.prodPrimes.divisors, |s.rem d| := by
  sorry

/-- A lower divisor bracket gives a lower bound with absolute remainder error. -/

theorem mainSum_sub_errSum_le_siftedSum (s : BoundingSieve) (c : ℕ → ℝ)
    (hc : ∀ r, r ∣ s.prodPrimes → (∑ d ∈ r.divisors, c d) ≤
      if r = 1 then (1 : ℝ) else 0) :
    s.totalMass * s.mainSum c - s.errSum c ≤ s.siftedSum := by
  sorry

/-- Zero is removed when the prime product is six. -/
example (s : BoundingSieve) (hA : s.support = {0, 1, 2, 3, 6})
    (hP : s.prodPrimes = 6) (hw : ∀ n ∈ s.support, s.weights n = 1) :
    s.siftedSum = 1 := by sorry

/-- The term at one cannot be discarded by treating the mass as exact. -/
example (s : BoundingSieve) (hX : s.totalMass = 7) (hA : s.multSum 1 = 10) :
    s.rem 1 = 3 := by sorry
end BoundingSieve

namespace SieveGram
open scoped InnerProductSpace
variable {𝕜 E ι : Type*} [RCLike 𝕜] [NormedAddCommGroup E]
  [InnerProductSpace 𝕜 E] [Fintype ι]

/-- Selberg’s weighted finite Gram inequality, allowing zero rows and dependent vectors. -/

theorem selberg_weighted_inner (y : ι → E) (x : E) :
    (∑ i, ‖⟪x, y i⟫_𝕜‖ ^ 2 / (∑ j, ‖⟪y i, y j⟫_𝕜‖)) ≤ ‖x‖ ^ 2 := by sorry

/-- The diagonal/off-diagonal Gram bound uses the cardinality minus one. -/

theorem bombieri_diagonal_offDiagonal (y : ι → E) (x : E) (D C : ℝ)
    (hD : 0 ≤ D) (hC : 0 ≤ C) (hdiag : ∀ i, ‖y i‖ ^ 2 ≤ D)
    (hoff : ∀ i j, i ≠ j → ‖⟪y i, y j⟫_𝕜‖ ≤ C) :
    (∑ i, ‖⟪x, y i⟫_𝕜‖ ^ 2) ≤
      ‖x‖ ^ 2 * (D + ((Fintype.card ι - 1 : ℕ) : ℝ) * C) := by sorry

/-- Totalized division gives zero for a zero Gram row. -/
example (x : E) :
    (∑ i : Fin 1, ‖⟪x, (0 : E)⟫_𝕜‖ ^ 2 /
      (∑ j : Fin 1, ‖⟪(0 : E), (0 : E)⟫_𝕜‖)) = 0 := by sorry

/-- The first argument is conjugated; the minus Fourier phase yields a plus phase. -/
example : ⟪(Complex.I : ℂ), (1 : ℂ)⟫_ℂ = -Complex.I := by sorry
end SieveGram

namespace SieveQuantitative
attribute [local instance] Classical.propDecidable

/-- A logarithmically weighted prime-density bound, inclusive at z. -/

def HasLogSieveDimension (P : Set ℕ) (g : ℕ → ℝ) (κ C : ℝ) : Prop := by
  classical
  exact ∀ z : ℝ, 2 ≤ z →
    (∑ p ∈ (Finset.range (Nat.floor z + 1)).filter (fun p => p.Prime ∧ p ∈ P),
      g p * Real.log p) ≤ κ * Real.log z + C

/-- A reciprocal Euler-product bound on the half-open prime interval [w,z). -/

def HasProductSieveDimension (P : Set ℕ) (g : ℕ → ℝ) (κ K : ℝ) : Prop := by
  classical
  exact ∀ w z : ℝ, 2 ≤ w → w ≤ z →
    (∏ p ∈ (Finset.range (Nat.ceil z)).filter
      (fun p => p.Prime ∧ p ∈ P ∧ w ≤ (p : ℝ)), (1 - g p)⁻¹) ≤
        K * (Real.log z / Real.log w) ^ κ

/-- The absolute remainder mass on divisors strictly below D. -/

def remainderMass (s : BoundingSieve) (D : ℝ) : ℝ :=
  ∑ d ∈ s.prodPrimes.divisors.filter (fun d : ℕ => (d : ℝ) < D), |s.rem d|

/-- A positive level with nonnegative approximate mass and every logarithmic saving. -/

def HasSieveLevel (F : ℝ → BoundingSieve) (θ : ℝ) : Prop :=
  0 < θ ∧ (∀ x : ℝ, 2 ≤ x → 0 ≤ (F x).totalMass) ∧
    ∀ A : ℝ, 0 < A → ∃ B C x₀ : ℝ,
      0 < B ∧ 0 < C ∧ 2 ≤ x₀ ∧ ∀ x : ℝ, x₀ ≤ x →
        remainderMass (F x) (x ^ θ / (Real.log x) ^ B) ≤
          C * (F x).totalMass / (Real.log x) ^ A

/-- The empty prime set has zero logarithmic mass. -/
example : HasLogSieveDimension ∅ (fun _ => 1) 0 0 := by sorry
/-- A negative constant fails even for an empty prime set. -/
example : ¬ HasLogSieveDimension ∅ (fun _ => 0) 0 (-1) := by sorry
/-- Empty products equal one. -/
example : HasProductSieveDimension ∅ (fun _ => 0) 0 1 := by sorry
/-- The interval w=z forces the multiplicative constant to be at least one. -/
example : ¬ HasProductSieveDimension ∅ (fun _ => 0) 0 (1/2) := by sorry
/-- The strict cutoff D=1 excludes every divisor. -/
example (s : BoundingSieve) : remainderMass s 1 = 0 := by sorry
/-- A cutoff just above one includes its possibly nonzero remainder. -/
example (s : BoundingSieve) (hP : s.prodPrimes = 1) :
    remainderMass s 2 = |s.rem 1| := by sorry
/-- Zero is excluded as a level by definition. -/
example (F : ℝ → BoundingSieve) : ¬ HasSieveLevel F 0 := by sorry
/-- Exact remainders supply any positive level, provided the mass is nonnegative. -/
example (F : ℝ → BoundingSieve) (θ : ℝ) (hθ : 0 < θ)
    (hm : ∀ x : ℝ, 2 ≤ x → 0 ≤ (F x).totalMass)
    (hr : ∀ x d, (F x).rem d = 0) : HasSieveLevel F θ := by sorry
end SieveQuantitative

namespace SieveBinary

/-- Binary polynomials over the native integral multivariate-polynomial carrier. -/

abbrev BinaryPolynomial := MvPolynomial (Fin 2) ℤ

/-- The number of residue zeros; zero modulus is explicitly assigned zero. -/

def rho (Q : BinaryPolynomial) (a : ℕ) : ℕ := by
  classical
  exact if h : a = 0 then 0 else
    letI : NeZero a := ⟨h⟩
    Fintype.card {x : Fin 2 → ZMod a // Q.eval₂ (Int.castRingHom (ZMod a)) x = 0}

/-- Modulus one has exactly one residue point. -/
example (Q : BinaryPolynomial) : rho Q 1 = 1 := by sorry
/-- Ordinary densities need not satisfy a degree-times-p² prime-square bound. -/
example (p : ℕ) (hp : p.Prime) :
    rho ((MvPolynomial.X 0 : BinaryPolynomial) ^ 2) (p ^ 2) = p ^ 3 := by sorry
end SieveBinary

namespace SieveQuadratic

/-- The discriminant character on naturals, with explicit dyadic factor and zero convention. -/

def discriminantCharacter (D : ℤ) (n : ℕ) : ℤ :=
  if n = 0 then 0 else
    (if D % 8 = 1 ∨ D % 8 = 7 then (1 : ℤ)
      else if D % 8 = 3 ∨ D % 8 = 5 then -1 else 0) ^ n.factorization 2 *
      jacobiSym D (n / 2 ^ n.factorization 2)

/-- The dyadic factor distinguishes discriminants five and eight. -/
example : discriminantCharacter 5 2 = -1 ∧ discriminantCharacter 8 2 = 0 := by sorry
/-- For discriminant eight, the odd value at three is negative. -/
example : discriminantCharacter 8 3 = -1 := by sorry
/-- The zero convention excludes discriminant one from periodicity modulo one. -/
example : discriminantCharacter 1 0 = 0 ∧ discriminantCharacter 1 1 = 1 := by sorry
/-- Periodicity at a genuine nontrivial integral discriminant. -/
theorem discriminantCharacter_periodic (D : ℤ) (hD : 1 < D.natAbs)
    (hdisc : D % 4 = 0 ∨ D % 4 = 1) :
    Function.Periodic (discriminantCharacter D) D.natAbs := by sorry
end SieveQuadratic

/-! ## Layer 1: Brun and Selberg sieves and polynomial values -/

namespace SieveSelberg

/-- The Selberg denominator sums native diagonal terms on d<z. -/

def diagonalMass (s : BoundingSieve) (z : ℝ) : ℝ :=
  ∑ d ∈ s.prodPrimes.divisors.filter (fun d : ℕ => (d : ℝ) < z), s.selbergTerms d

/-- The strict cutoff at one gives zero. -/
example (s : BoundingSieve) : diagonalMass s 1 = 0 := by sorry
/-- The d=1 contribution persists when no primes are sifted. -/
example (s : BoundingSieve) (hP : s.prodPrimes = 1) (z : ℝ) (hz : 1 < z) :
    diagonalMass s z = 1 := by sorry

/-- The optimized upper bound with strict z² remainder cutoff and lcm multiplicity 3^ω(d). -/

theorem selberg_upper_bound (s : BoundingSieve) (z : ℝ) (hz : 1 < z) :
    s.siftedSum ≤ s.totalMass / diagonalMass s z +
      ∑ d ∈ s.prodPrimes.divisors.filter (fun d : ℕ => (d : ℝ) < z ^ 2),
        (3 : ℝ) ^ ArithmeticFunction.cardDistinctFactors d * |s.rem d| := by sorry

end SieveSelberg
namespace SieveApplications
attribute [local instance] Classical.propDecidable

/-- Liouville parity weights: true selects odd Ω, with zero removed. -/

def parityWeight (odd : Bool) (n : ℕ) : ℝ :=
  if n = 0 then 0 else (1 + (if odd then -1 else 1) * (ArithmeticFunction.liouville n : ℝ)) / 2

/-- A square has even Ω; twelve has odd Ω despite two distinct prime factors. -/
example : parityWeight false 4 = 1 ∧ parityWeight true 12 = 1 := by sorry
/-- Zero belongs to neither parity population. -/
example : parityWeight true 0 = 0 ∧ parityWeight false 0 = 0 := by sorry

/-- A uniform Selberg bound on primes in an interval of length y≥2. -/

theorem prime_interval_upper : ∃ C : ℝ, 0 < C ∧ ∀ x y : ℝ, 2 ≤ x → 2 ≤ y →
    (Nat.primeCounting (Nat.floor (x+y)) : ℝ) - Nat.primeCounting (Nat.floor x) ≤
      2*y/Real.log y + C*y*Real.log (Real.log (3*y))/(Real.log y)^2 := by sorry

/-- Twin-prime and even Goldbach upper bounds, retaining the local product. -/

theorem twin_goldbach_upper : ∃ C : ℝ, 0 < C ∧
    (∀ x : ℕ, 3 ≤ x → (((Finset.Icc 1 x).filter (fun p => p.Prime ∧ (p+2).Prime)).card : ℝ) ≤ C*x/(Real.log x)^2) ∧
    (∀ N : ℕ, 4 ≤ N → Even N →
      (((Finset.Icc 2 (N-2)).filter (fun p => p.Prime ∧ (N-p).Prime)).card : ℝ) ≤
        C*N/(Real.log N)^2 * ∏ p ∈ N.primeFactors.filter (fun p => p ≠ 2), (p-1 : ℕ)/(p-2 : ℝ)) := by sorry

/-- Brun’s convergence of the two twin-prime reciprocal sums. -/

theorem brun_reciprocals : Summable (fun p : {p : ℕ // p.Prime ∧ (p+2).Prime} => (p.val : ℝ)⁻¹) ∧
    Summable (fun p : {p : ℕ // p.Prime ∧ (p+2).Prime} => (p.val+2 : ℝ)⁻¹) := by sorry

end SieveApplications

/-! ## Layer 2: large sieves and Vaughan decomposition -/

namespace SieveTaper
local notation "phase" => (fun x : ℝ => (Real.fourierChar x : ℂ))
local notation "dist₁" => (fun t : ℝ => ‖(t : UnitAddCircle)‖)

/-- The separated additive large sieve on an arbitrary integer interval, including H=0. -/

theorem additive_largeSieve {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : ℤ) (H : ℕ) (a : Fin H → ℂ) (x : ι → ℝ) (δ : ℝ) (hδ : 0 < δ)
    (hsep : ∀ i j, i ≠ j → δ ≤ dist₁ (x i-x j)) :
    (∑ i, ‖∑ j, a j * phase (((M : ℝ)+(j.val : ℝ)+1)*x i)‖^2) ≤
      ((H : ℝ)+2/δ) * ∑ j, ‖a j‖^2 := by sorry

/-- The sharp additive bound for H≥1 and 0<δ≤1/2. -/

theorem sharp_additive_largeSieve {ι : Type*} [Fintype ι] [DecidableEq ι]
    (M : ℤ) (H : ℕ) (hH : 1 ≤ H) (a : Fin H → ℂ) (x : ι → ℝ)
    (δ : ℝ) (hδ : 0 < δ) (hδ' : δ ≤ 1/2)
    (hsep : ∀ i j, i ≠ j → δ ≤ dist₁ (x i - x j)) :
    (∑ i, ‖∑ j, a j * phase (((M : ℝ) + (j.val : ℝ) + 1) * x i)‖ ^ 2) ≤
      ((H : ℝ) - 1 + 1/δ) * ∑ j, ‖a j‖ ^ 2 := by sorry

/-- At integral phase the geometric sum has squared norm M². -/
example (M : ℕ) : ‖∑ j : Fin M, phase (j.val : ℝ)‖ ^ 2 = (M : ℝ) ^ 2 := by sorry
end SieveTaper
namespace SieveCharacters

/-- The primitive character large sieve includes modulus one. -/

theorem primitive_largeSieve (Q H : ℕ) (M : ℤ) (a : Fin H → ℂ) :
    (∑ q : Fin Q, (((q.val+1 : ℕ) : ℝ)/(q.val+1).totient) *
      ∑ χ ∈ (Finset.univ : Finset (DirichletCharacter ℂ (q.val+1))).filter
        DirichletCharacter.IsPrimitive,
        ‖∑ j, a j * χ ((M+j.val+1 : ℤ) : ZMod (q.val+1))‖^2) ≤
      ((H : ℝ)+2*(Q : ℝ)^2) * ∑ j, ‖a j‖^2 := by sorry

/-- The trivial character modulo one is primitive and its Gauss sum is one. -/
example : (1 : DirichletCharacter ℂ 1).IsPrimitive ∧
    gaussSum (1 : DirichletCharacter ℂ 1) ZMod.stdAddChar = 1 := by sorry
/-- The principal character modulo four is imprimitive, so the primitive Gauss formula fails. -/
example : ¬ (1 : DirichletCharacter ℂ 4).IsPrimitive ∧
    gaussSum (1 : DirichletCharacter ℂ 4) ZMod.stdAddChar = 0 := by sorry
end SieveCharacters
namespace SieveApplications

/-- The sharp primitive bound, with positive modulus and interval cutoffs. -/

theorem sharp_primitive_largeSieve (Q H : ℕ) (hQ : 1 ≤ Q) (hH : 1 ≤ H) (M : ℤ) (a : Fin H → ℂ) :
    (∑ q : Fin Q, (((q.val+1 : ℕ) : ℝ)/(q.val+1).totient) *
      ∑ χ ∈ (Finset.univ : Finset (DirichletCharacter ℂ (q.val+1))).filter DirichletCharacter.IsPrimitive,
        ‖∑ j, a j * χ ((M+j.val+1 : ℤ) : ZMod (q.val+1))‖^2) ≤
      ((H : ℝ)-1+(Q : ℝ)^2) * ∑ j, ‖a j‖^2 := by sorry

attribute [local instance] Classical.propDecidable

/-- The least positive quadratic nonresidue at an odd prime; invalid denominators return zero. -/

def leastNonresidue (p : ℕ) : ℕ :=
  if p.Prime ∧ p ≠ 2 then
    if h : ∃ n : ℕ, 0 < n ∧ jacobiSym (n : ℤ) p = -1 then Nat.find h else 0
  else 0

/-- Small odd primes give different least nonresidues. -/
example : leastNonresidue 3 = 2 ∧ leastNonresidue 7 = 3 := by sorry
/-- The denominator two is outside the stated domain. -/
example : leastNonresidue 2 = 0 := by sorry

/-- For fixed ε>0, the number of primes up to N with least nonresidue>N^ε is bounded uniformly in N. -/

theorem linnik_exceptional (ε : ℝ) (hε : 0 < ε) : ∃ C : ℝ, 0 < C ∧ ∀ N : ℕ, 2 ≤ N →
    (((Finset.Icc 1 N).filter (fun p => p.Prime ∧ p ≠ 2 ∧ (N : ℝ)^ε < leastNonresidue p)).card : ℝ) ≤ C := by sorry

end SieveApplications
namespace SieveQuadratic
open Finset

/-- The prime-denominator convention at two is one on odd numerators, rather than Kronecker. -/

def primeDenominatorSymbol (a : ℤ) (p : ℕ) : ℤ :=
  if p = 2 then if Even a then 0 else 1 else jacobiSym a p

/-- The dyadic convention and odd-prime zero value are distinct. -/
example : primeDenominatorSymbol 3 2 = 1 ∧ primeDenominatorSymbol 6 2 = 0 := by sorry
/-- At an odd prime the symbol detects nonresidues and divisibility. -/
example : primeDenominatorSymbol 2 3 = -1 ∧ primeDenominatorSymbol 9 3 = 0 := by sorry

/-- Heath-Brown’s quadratic large sieve restricts both variables to odd squarefree integers. -/

theorem quadratic_largeSieve (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ M N : ℕ, 1 ≤ M → 1 ≤ N → ∀ a : ℕ → ℂ,
      (∑ m ∈ (Icc 1 M).filter (fun m => Odd m ∧ Squarefree m),
        ‖∑ n ∈ (Icc 1 N).filter (fun n => Odd n ∧ Squarefree n),
          a n * (jacobiSym (n : ℤ) m : ℂ)‖ ^ 2) ≤
        C * Real.rpow ((M : ℝ) * N) ε * (M + N) *
          ∑ n ∈ (Icc 1 N).filter (fun n => Odd n ∧ Squarefree n), ‖a n‖ ^ 2 := by
  sorry

/-- The prime quadratic estimate permits arbitrary numerators and any nonnegative coefficient bounds A,B. -/

theorem prime_quadratic_bilinear (ε : ℝ) (hε : 0 < ε) :
    ∃ C : ℝ, 0 < C ∧ ∀ K L : ℕ, 1 ≤ K → 1 ≤ L → ∀ a b : ℕ → ℂ,
      ∀ A B : ℝ, 0 ≤ A → 0 ≤ B →
      (∀ k ∈ Icc 1 K, ‖a k‖ ≤ A) →
      (∀ p ∈ Icc 1 L, p.Prime → ‖b p‖ ≤ B) →
      ‖∑ k ∈ Icc 1 K, ∑ p ∈ (Icc 1 L).filter Nat.Prime,
        a k * b p * (primeDenominatorSymbol (k : ℤ) p : ℂ)‖ ≤
        C * A * B * (Real.rpow ((K : ℝ) * L) (1+ε) /
          Real.sqrt (min (K : ℝ) L) + K) := by sorry

/-- The real-discriminant mean retains the square-product diagonal and eighth moment. -/

theorem jutila_real_character_mean :
    ∃ C : ℝ, 0 < C ∧ ∀ X N : ℕ, 3 ≤ X → 2 ≤ N → ∀ a : ℕ → ℂ,
      (∑ D ∈ (Icc (-(X : ℤ)) (X : ℤ)).filter
        (fun D => (D % 4 = 0 ∨ D % 4 = 1) ∧ ¬ IsSquare D),
        ‖∑ n ∈ Icc 1 N, a n * (discriminantCharacter D n : ℂ)‖ ^ 2) ≤
      C * ((X : ℝ) *
        (∑ m ∈ Icc 1 N, ∑ n ∈ (Icc 1 N).filter (fun n => IsSquare (m*n)),
          ‖a m * a n‖) +
        Real.sqrt X * Real.rpow N (7/4) *
          Real.rpow (∑ n ∈ Icc 1 N, ‖a n‖ ^ 8) (1/4) * Real.log N ^ 5) := by sorry

end SieveQuadratic
namespace SieveVaughan
open Finset
open scoped ArithmeticFunction

/-- The incomplete logarithm is a finite von Mangoldt divisor sum with d>V. -/
def incompleteLog (V : ℕ) : ArithmeticFunction ℝ where
  toFun n := ∑ d ∈ n.divisors.filter (fun d => V < d), ArithmeticFunction.vonMangoldt d
  map_zero' := by simp
/-- An empty divisor range contributes zero. -/
example : incompleteLog 3 2 = 0 := by sorry
/-- Cutoff zero recovers the logarithm, including the value at zero. -/
example : incompleteLog 0 = ArithmeticFunction.log := by sorry

/-- Vaughan’s identity keeps the Λ≤V term and allows zero cutoffs. -/

theorem vaughan_identity (U V n : ℕ) :
    Λ n = (if n ≤ V then Λ n else 0) +
      (∑ b ∈ n.divisors with b ≤ U, (μ b : ℝ) * Real.log (n / b : ℕ)) -
      (∑ b ∈ n.divisors with b ≤ U,
        (μ b : ℝ) * ∑ c ∈ (n / b).divisors with c ≤ V, Λ c) +
      (∑ b ∈ n.divisors with U < b,
        (μ b : ℝ) * ∑ c ∈ (n / b).divisors with V < c, Λ c) := by
  sorry

end SieveVaughan

/-! ## Layer 3: maximal prime distribution -/

namespace SieveDistribution
open Filter Asymptotics
attribute [local instance] Classical.propDecidable

/-- Inclusive prime count in a natural residue class. -/

def primeCountAP (x : ℝ) (q a : ℕ) : ℕ :=
  ((Finset.range (⌊x⌋₊ + 1)).filter (fun p => p.Prime ∧ p ≡ a [MOD q])).card

/-- The maximum reduced-residue prime-count discrepancy, centred at π(x)/φ(q). -/

def discrepancy (x : ℝ) (q : ℕ) : ℝ :=
  ⨆ a : {a : Fin q // Nat.Coprime a q},
    |(primeCountAP x q a.1 : ℝ) - (Nat.primeCounting ⌊x⌋₊ : ℝ) / (q.totient : ℝ)|

/-- Maynard’s level predicate, with all logarithmic savings and no positivity imposed on θ. -/

def PrimesHaveLevel (θ : ℝ) : Prop :=
  ∀ A : ℝ, 0 < A →
    (fun x : ℝ => ∑ q ∈ Finset.Icc 1 ⌊x ^ θ⌋₊, discrepancy x q) =O[atTop]
      fun x : ℝ => x / Real.log x ^ A

/-- A named conjecture requiring every level θ<1; it is never assumed implicitly. -/

def ElliottHalberstam : Prop :=
  ∀ θ : ℝ, θ < 1 → PrimesHaveLevel θ

/-- One plus the reduced-residue discrepancy on [N,2N). -/

def windowError (N q : ℕ) : ℝ :=
  1 + ⨆ a : {a : Fin q // Nat.Coprime a q},
    |(((Finset.Ico N (2 * N)).filter (fun n => n.Prime ∧ n ≡ a.1 [MOD q])).card : ℝ) -
      (((Finset.Ico N (2 * N)).filter Nat.Prime).card : ℝ) / (q.totient : ℝ)|

/-- The upper endpoint prime is included. -/
example : primeCountAP 5 1 0 = 3 := by sorry
/-- A non-unit residue is still a valid counting class. -/
example : primeCountAP 10 2 0 = 1 := by sorry
/-- Modulus one has zero prime-count discrepancy. -/
example (x : ℝ) : discrepancy x 1 = 0 := by sorry
/-- At x=10 the reduced classes modulo three hold one prime (7) and two primes (2, 5),
against the mean π(10)/φ(3) = 2, so the maximal deviation is one. -/
example : discrepancy 10 3 = 1 := by sorry
/-- Every nonpositive level has only the trivial modulus eventually. -/
example : PrimesHaveLevel 0 := by sorry
/-- A level above one fails; fixed coprime primes obstruct the too-large modulus range. -/
example : ¬ PrimesHaveLevel 2 := by sorry
/-- The conjecture supplies any prescribed level below one. -/
example (h : ElliottHalberstam) : PrimesHaveLevel (3/4) := by sorry
/-- In particular it includes θ=1/2 rather than only strictly smaller levels. -/
example (h : ElliottHalberstam) : PrimesHaveLevel (1/2) := by sorry
/-- The added one persists even when the discrepancy vanishes. -/
example (N : ℕ) : windowError N 1 = 1 := by sorry
/-- The empty window at N=0 still has error one. -/
example (q : ℕ) : windowError 0 q = 1 := by sorry

/-- Bombieri–Vinogradov gives every θ<1/2 in Maynard’s normalization. -/

theorem primesHaveLevel_of_lt_half {θ : ℝ} (hθ : θ < 1 / 2) : PrimesHaveLevel θ := by
  sorry

end SieveDistribution
namespace SieveArithmeticDistribution
open Finset
attribute [local instance] Classical.propDecidable

/-- An arbitrary-function discrepancy averages only integers coprime to q. -/

def discrepancy (f : ℕ → ℂ) (x : ℝ) (q : ℕ) (a : ℤ) : ℂ :=
  if q = 0 then 0 else
    (∑ n ∈ (Icc 1 ⌊x⌋₊).filter (fun (n : ℕ) => (n : ℤ) % q = a % q), f n) -
      (∑ n ∈ (Icc 1 ⌊x⌋₊).filter (fun n => n.Coprime q), f n) / (Nat.totient q : ℂ)

/-- Modulus one gives exact cancellation. -/
example (f : ℕ → ℂ) (x : ℝ) : discrepancy f x 1 0 = 0 := by sorry
/-- The coprime mean is divided by the totient, giving an unbalanced class. -/
example : discrepancy (fun n => if n = 2 then (1 : ℂ) else 0) 3 3 1 = -1/2 := by sorry
/-- A non-unit contribution is omitted from the reduced-residue mean. -/
example : discrepancy (fun n => if n = 2 then (1 : ℂ) else 0) 3 2 1 = 0 := by sorry

/-- Maximal von Mangoldt distribution: the supremum includes both residue and cutoff.
The centre y/φ(q) includes prime powers. -/
theorem bombieri_vinogradov_maximal (A : ℝ) (hA : 0 < A) :
    ∃ B C x₀ : ℝ, 0 < B ∧ 0 < C ∧ 3 ≤ x₀ ∧ ∀ x Q : ℝ,
      x₀ ≤ x → 1 ≤ Q → Q ≤ Real.sqrt x / Real.log x ^ B →
      (∑ q ∈ Icc 1 ⌊Q⌋₊,
        sSup {v : ℝ | ∃ a : ℕ, a < q ∧ a.Coprime q ∧
          ∃ y : ℝ, 0 ≤ y ∧ y ≤ x ∧ v =
            |(∑ n ∈ (Icc 1 ⌊y⌋₊).filter (fun n => n ≡ a [MOD q]),
              ArithmeticFunction.vonMangoldt n) - y / (q.totient : ℝ)|}) ≤
        C * x / Real.log x ^ A := by sorry

/-- The second moment sums all reduced residues, with its own logarithmic modulus cutoff. -/
theorem barban_davenport_halberstam (A : ℝ) (hA : 0 < A) :
    ∃ B C x₀ : ℝ, 0 < B ∧ 0 < C ∧ 3 ≤ x₀ ∧ ∀ x Q : ℝ,
      x₀ ≤ x → 1 ≤ Q → Q ≤ x / Real.log x ^ B →
      (∑ q ∈ Icc 1 ⌊Q⌋₊, ∑ a ∈ (range q).filter (fun a => a.Coprime q),
        ((∑ n ∈ (Icc 1 ⌊x⌋₊).filter (fun n => n ≡ a [MOD q]),
          ArithmeticFunction.vonMangoldt n) - x / (q.totient : ℝ)) ^ 2) ≤
        C * x ^ 2 / Real.log x ^ A := by sorry
end SieveArithmeticDistribution

/-! ## Layer 4: prime tuples and Maynard clusters -/

namespace SieveMaynard
open Filter Topology MeasureTheory SieveDistribution
attribute [local instance] Classical.propDecidable

/-- A finite tuple misses a residue class modulo every prime. -/

def IsAdmissible (H : Finset ℕ) : Prop :=
  ∀ p : ℕ, p.Prime → ∃ a : ℕ, ∀ h ∈ H, ¬ h ≡ a [MOD p]

/-- The natural shifts making every entry prime. -/

def primeTranslates (H : Finset ℕ) : Set ℕ :=
  {n | ∀ h ∈ H, (n + h).Prime}

/-- The prime-tuple conjecture is a proposition separate from Maynard’s proven clusters. -/

def PrimeTuplesConjecture : Prop :=
  ∀ H : Finset ℕ, IsAdmissible H → (primeTranslates H).Infinite

/-- The nonnegative simplex with sum at most one. -/

def maynardSimplex (k : ℕ) : Set (Fin k → ℝ) :=
  {t | (∀ i, 0 ≤ t i) ∧ ∑ i, t i ≤ 1}

/-- The squared L² integral on the unit cube. -/

def maynardI (k : ℕ) (F : (Fin k → ℝ) → ℝ) : ℝ :=
  ∫ t in Set.univ.pi (fun _ : Fin k => Set.Icc (0 : ℝ) 1), F t ^ 2

/-- The squared coordinate-fibre integral, integrated on the remaining cube. -/

def maynardJ (k : ℕ) (m : Fin k) (F : (Fin k → ℝ) → ℝ) : ℝ :=
  ∫ t in Set.univ.pi (fun _ : Fin k => Set.Icc (0 : ℝ) 1),
    (∫ s in (0 : ℝ)..1, F (Function.update t m s)) ^ 2

/-- Simplex support, square integrability and nonzero I and every J. -/

def IsMaynardAdmissible (k : ℕ) (F : (Fin k → ℝ) → ℝ) : Prop :=
  (∀ t, t ∉ maynardSimplex k → F t = 0) ∧
    MemLp F 2 (volume.restrict (Set.univ.pi fun _ : Fin k => Set.Icc (0 : ℝ) 1)) ∧
    maynardI k F ≠ 0 ∧ ∀ m, maynardJ k m F ≠ 0

/-- The sum of coordinate functionals divided by I, using totalized real division. -/

def maynardRatio (k : ℕ) (F : (Fin k → ℝ) → ℝ) : ℝ :=
  (∑ m, maynardJ k m F) / maynardI k F

/-- The supremum of the variational ratio over admissible functions. -/

def maynardM (k : ℕ) : ℝ :=
  sSup {r | ∃ F, IsMaynardAdmissible k F ∧ r = maynardRatio k F}

/-- The standard two-element tuple is admissible; consecutive shifts are not. -/
example : IsAdmissible {0, 2} := by sorry
example : ¬ IsAdmissible {0, 1} := by sorry
/-- An empty tuple imposes no primality conditions. -/
example : primeTranslates ∅ = Set.univ := by sorry
/-- At shift three, {0,2} gives the pair three and five. -/
example : 3 ∈ primeTranslates {0, 2} ∧ 2 ∉ primeTranslates {0, 2} := by sorry
/-- The tuple conjecture implies infinitely many twin shifts. -/
example (h : PrimeTuplesConjecture) : (primeTranslates {0, 2}).Infinite := by sorry
/-- An obstructed consecutive tuple cannot have infinitely many prime shifts. -/
example : ¬ (primeTranslates {0, 1}).Infinite := by sorry
/-- The simplex includes its boundary and excludes points above it. -/
example : (![1/2, 1/2] : Fin 2 → ℝ) ∈ maynardSimplex 2 := by sorry
example : (![1, 1] : Fin 2 → ℝ) ∉ maynardSimplex 2 := by sorry
/-- The one-dimensional constant has unit I and J. -/
example : maynardI 1 (fun _ => 1) = 1 := by sorry
example : maynardJ 1 0 (fun _ => 1) = 1 := by sorry
/-- Squaring is inside the integral; a zero function has zero I and J. -/
example : maynardI 2 (fun _ => 0) = 0 ∧ maynardJ 2 0 (fun _ => 0) = 0 := by sorry
/-- The simplex indicator has nonzero square and fibre integrals. -/
example : IsMaynardAdmissible 2 ((maynardSimplex 2).indicator (fun _ => 1)) := by sorry
/-- A zero function is excluded by the nonvanishing conditions. -/
example : ¬ IsMaynardAdmissible 2 (fun _ => 0) := by sorry
/-- Totalized division assigns the zero function ratio zero. -/
example : maynardRatio 2 (fun _ => 0) = 0 := by sorry
/-- The triangular indicator has ratio 4/3. -/
example : maynardRatio 2 ((maynardSimplex 2).indicator (fun _ => 1)) = 4/3 := by sorry
/-- In dimension one Cauchy–Schwarz and the interval indicator give M₁=1. -/
example : maynardM 1 = 1 := by sorry
/-- In dimension zero the empty sum of J is zero. -/
example : maynardM 0 = 0 := by sorry

/-- A positive level θ≤1 gives infinitely many shifts with at least ceil(θM_k/2) primes. -/

theorem infinite_many_primes_of_level (θ : ℝ) (hθ : 0 < θ) (hθ1 : θ ≤ 1)
    (hlevel : PrimesHaveLevel θ) (k : ℕ) (h : Fin k → ℕ) (hinj : Function.Injective h)
    (hH : IsAdmissible (Finset.univ.image h)) :
    {n : ℕ | ⌈θ * maynardM k / 2⌉ ≤
      ((Finset.univ.filter fun i => (n + h i).Prime).card : ℤ)}.Infinite := by
  sorry

/-- Maynard’s large-k lower bound, with k tending to infinity. -/

theorem eventually_log_sub_lt_maynardM :
    ∀ᶠ k : ℕ in atTop,
      Real.log k - 2 * Real.log (Real.log k) - 2 < maynardM k := by
  sorry

/-- The exact rational polynomial witness gives M₅≥1417255/708216>2. -/

theorem maynardM_five_ge : (1417255 / 708216 : ℝ) ≤ maynardM 5 := by
  sorry

/-- The exact rational 42-coefficient witness gives M₁₀₅>4. -/

theorem four_lt_maynardM_105 : 4 < maynardM 105 := by
  sorry

/-- Infinitely many consecutive prime gaps are at most six hundred. -/

theorem frequently_nth_prime_succ_sub_le_600 :
    ∃ᶠ n in atTop, Nat.nth Nat.Prime (n + 1) - Nat.nth Nat.Prime n ≤ 600 := by
  sorry

/-- Assuming Elliott–Halberstam, the consecutive and three-prime diameters are bounded. -/

theorem elliottHalberstam_gaps (hEH : ElliottHalberstam) :
    (∃ᶠ n in atTop, Nat.nth Nat.Prime (n + 1) - Nat.nth Nat.Prime n ≤ 12) ∧
      ∃ᶠ n in atTop, Nat.nth Nat.Prime (n + 2) - Nat.nth Nat.Prime n ≤ 600 := by
  sorry

/-- The m+1-prime diameter is uniformly bounded by C m³ exp(4m), for m≥1. -/

theorem exists_frequently_nth_prime_sub_le :
    ∃ C : ℝ, ∀ m : ℕ, 1 ≤ m →
      ∃ᶠ n in atTop, ((Nat.nth Nat.Prime (n + m) - Nat.nth Nat.Prime n : ℕ) : ℝ) ≤
        C * m ^ 3 * Real.exp (4 * m) := by
  sorry

/-- A positive proportion of m-subsets of a sufficiently large finite set have infinitely many prime shifts. -/

theorem positive_proportion_prime_tuples (m : ℕ) (hm : 1 ≤ m) :
    ∃ (r₀ : ℕ) (c : ℝ), 0 < c ∧ ∀ A : Finset ℕ, r₀ ≤ A.card →
      c * (A.card.choose m : ℝ) ≤
        (({B | B ∈ A.powersetCard m ∧ (primeTranslates B).Infinite} : Set (Finset ℕ)).ncard : ℝ) := by
  sorry

/-- A nonzero simplex-supported function can have every fibre integral zero.
It is excluded from IsMaynardAdmissible, although its square integral is positive. -/
example :
    let F : (Fin 2 → ℝ) → ℝ := (maynardSimplex 2).indicator fun t =>
      4*t 0*t 1 + 8*t 0^3*t 1 + 8*t 0*t 1^3 - 12*t 0^2*t 1 -
        12*t 0*t 1^2 + 18*t 0^2*t 1^2
    maynardI 2 F > 0 ∧ (∀ m : Fin 2, maynardJ 2 m F = 0) := by sorry
end SieveMaynard

/-! ## Layer 5: weighted almost primes, joint spins and affine saturation -/

namespace SieveAlmostPrime

/-- A nonzero rough integer below z^(k+1) has at most k prime factors with multiplicity. -/

theorem rough_to_at_most_almost_prime {z n k : ℕ} (hz : 2 ≤ z) (hn : n ≠ 0)
    (hsmall : n < z^(k+1)) (hrough : ∀ p : ℕ, p.Prime → p ∣ n → z ≤ p) :
    Nat.IsAtMostAlmostPrime k n := by sorry

/-- Eight has three prime factors with multiplicity; twenty-five has two. -/
example : ¬ Nat.IsAtMostAlmostPrime 2 8 ∧ Nat.IsAtMostAlmostPrime 2 25 := by sorry
/-- Units are allowed by the auxiliary locus, but zero is never almost prime. -/
example : Nat.IsAtMostAlmostPrime 0 1 ∧ ¬ Nat.IsAtMostAlmostPrime 100 0 := by sorry
end SieveAlmostPrime
namespace SieveWeighted
attribute [local instance] Classical.propDecidable

/-- Every sufficiently large even integer has quantitatively many prime-plus-P₂ representations; the P₂ factor is not a unit. -/

theorem chen_goldbach : ∃ c : ℝ, 0 < c ∧ ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N → Even N →
    c*N/(Real.log N)^2 ≤ (((Finset.Icc 2 (N-2)).filter
      (fun p => p.Prime ∧ 1 ≤ ArithmeticFunction.cardFactors (N-p) ∧ ArithmeticFunction.cardFactors (N-p) ≤ 2)).card : ℝ) := by sorry

/-- For a fixed positive even shift, quantitatively many primes have a nonunit P₂ translate. -/

theorem chen_prime_shift (h : ℕ) (hh : 0 < h) (hh2 : Even h) : ∃ c : ℝ, 0 < c ∧ ∃ x₀ : ℕ,
    ∀ x : ℕ, x₀ ≤ x → c*x/(Real.log x)^2 ≤ (((Finset.Icc 1 x).filter
      (fun p => p.Prime ∧ 1 ≤ ArithmeticFunction.cardFactors (p+h) ∧ ArithmeticFunction.cardFactors (p+h) ≤ 2)).card : ℝ) := by sorry

end SieveWeighted
namespace SieveAffine
attribute [local instance] Classical.propDecidable
variable {d : ℕ}
/-- Simultaneous primitivity requires a value coprime to each entire modulus. -/
def IsPrimitivePair (O : Set (Fin d → ℤ)) (f : MvPolynomial (Fin d) ℤ) : Prop :=
  ∀ q : ℕ, 2 ≤ q → ∃ x ∈ O, (f.eval x).natAbs.Coprime q
/-- The coordinate function on all integral points has the value one. -/
example : IsPrimitivePair (Set.univ : Set (Fin 1 → ℤ)) (MvPolynomial.X 0) := by sorry
/-- Values two and three miss each separate prime obstruction but fail at modulus six. -/
example : ¬ IsPrimitivePair {x : Fin 1 → ℤ | x 0 = 2 ∨ x 0 = 3}
    (MvPolynomial.X 0) := by sorry
/-- An empty orbit is not primitive. -/
example (f : MvPolynomial (Fin d) ℤ) : ¬ IsPrimitivePair ∅ f := by sorry

/-- The at-most-almost-prime locus uses absolute value and multiplicity. -/
def almostPrimeLocus (O : Set (Fin d → ℤ)) (f : MvPolynomial (Fin d) ℤ) (r : ℕ) :
    Set (Fin d → ℤ) :=
  {x | x ∈ O ∧ Nat.IsAtMostAlmostPrime r (f.eval x).natAbs}
/-- Signed values are tested by their positive absolute value. -/
example : (fun _ : Fin 1 => (-6 : ℤ)) ∈
    almostPrimeLocus Set.univ (MvPolynomial.X 0) 2 := by sorry
/-- Three repeated prime factors fail a P₂ condition. -/
example : (fun _ : Fin 1 => (8 : ℤ)) ∉
    almostPrimeLocus Set.univ (MvPolynomial.X 0) 2 := by sorry

/-- An absolute k^(dim−1) mixing error sums to D^dim; τ<1 is the decay hypothesis. -/

theorem affine_expansion_level (X τ dim D C : ℝ) (hX : 1 ≤ X) (hτ : 0 ≤ τ) (hτ1 : τ < 1)
    (hdim : 1 ≤ dim) (hD : 1 ≤ D) (hC : 0 ≤ C) (R : ℕ → ℝ)
    (hR : ∀ k : ℕ, 1 ≤ k → (k : ℝ) ≤ D → |R k| ≤ C*X^τ*(k : ℝ)^(dim-1)) :
    (∑ k ∈ Finset.Icc 1 (Nat.floor D), |R k|) ≤ C*X^τ*D^dim := by sorry

end SieveAffine

/-!
The following definition and construction targets, together with their APIs and checks,
are specified in README.md. Their full constructions are outside these representative
signatures:
BoundingSieve.ofFiniteFamily, BoundingSieve.ofResidueClasses, SieveTaper.taperedCharacter.
SieveTaper.intervalVector, SieveMaynard.wResidue, SieveMaynard.maynardLambda.
SieveBrun.brunCoefficients, SieveSelberg.optimalWeight, SievePolynomial.BouniakowskyAdmissible.
SieveBinary.HasMultiplicativeGrowth, SieveBinary.thetaDensity, SievePolynomialVector.vectorNorm.
SievePolynomialVector.fareyCoefficient, SieveWeighted.linearUpper, SieveWeighted.rosserWeight.
SieveWeighted.richertPrimeWeight, SieveWeighted.chenWeight, SieveJointSpin.JointSpinData.
SieveJointSpin.jointSpin, SieveJointSpin.spinKernel, SieveAffine.walkSieve.
SieveWeighted.goldbachLocalFactor, SieveJointSpin.idealQuadraticSymbol.
Additional operations attached to those definitions also remain README targets:
SieveBinary.rhoCorrectedPower, rhoSingularPower, rhoCorrected, lambdaDensity;
SievePolynomial.IsBouniakowskyPolynomial, IsSchinzelTuple, SchinzelAdmissible,
BouniakowskyConjecture, SchinzelHypothesisH;
SievePolynomialVector.divisibilityProbability, roughDivisibilityProbability,
probability_defect;
SieveMaynard.wModulus, IsMaynardSupport, maynardY, maynardLambdaOfY,
maynardWeight, sieveSumS1, sieveSumS2, maynardG, maynardYm, simplexG;
SieveWeighted.linearLower, richertSum, chenTriple;
SieveAffine.PolynomiallyDenseOn, IsSaturated, saturationNumber.

-/
end TauCetiRoadmap.SieveMethodsAndPrimePatterns
