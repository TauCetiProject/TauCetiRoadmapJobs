import Mathlib

/-!
# Markoff dynamics over finite fields: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems against the pinned APIs. Polynomial predicates and finite-word
relations specialize native tuples and relations: these are signature notation
for ClassicalArithmeticCompletion's surfaces and moves.

Geometric connectedness of the absolute trace-minus-two level stack and the general
coarse-degree congruence are not statable at the pins: the elliptic G-level stack,
its rigidified compactification and its coarse forgetful degree are missing.
Finite primitive-group structure is developed in README.md; its quantitative
order and section bounds are stated below on native permutation subgroups. The all-prime connectivity conjecture is not asserted.
-/

open Classical

namespace TauCetiRoadmap.ArithmeticDynamicsPartII

/-! ## Layer 0: actions and move graphs -/

/-- The coefficient-c Markoff equation on ordered triples. -/
def markoffEquation {R : Type*} [CommRing R] (c : R) (x : Fin 3 → R) : Prop :=
  x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 = c * x 0 * x 1 * x 2

/-- The coefficient-c Vieta move at the cyclic index i. -/
def vietaMove {R : Type*} [CommRing R] (c : R) (i : Fin 3)
    (x : Fin 3 → R) : Fin 3 → R :=
  Function.update x i (c * x (i + 1) * x (i + 2) - x i)

/-- One labelled Vieta step, retaining fixed steps. -/
def moveStep {R : Type*} [CommRing R] (c : R) (x y : Fin 3 → R) : Prop :=
  ∃ i, y = vietaMove c i x

/-- One reversing generator: a Vieta move or a coordinate transposition. -/
def gammaStep {R : Type*} [CommRing R] (c : R) (x y : Fin 3 → R) : Prop :=
  moveStep c x y ∨ ∃ i j : Fin 3, i ≠ j ∧ y = x ∘ Equiv.swap i j

/-! ## Layer 1: Penner weights and divisibility -/

/-- Every finite nonzero Vieta-stable subset has p-divisible size for prime p != 3. -/
theorem stable_card_dvd (p : ℕ) [Fact p.Prime] (hp : p ≠ 3)
    (S : Finset (Fin 3 → ZMod p))
    (hS : ∀ x ∈ S, markoffEquation 3 x ∧ x ≠ 0)
    (hstable : ∀ x ∈ S, ∀ i, vietaMove 3 i x ∈ S) : p ∣ S.card := by
  sorry

/-! ## Layer 2: conic sections and rotations -/

/-- Phi(n) is the rational sum of phi(d)/d over positive divisors. -/
def divisorPhi (n : ℕ) : ℚ := ∑ d ∈ n.divisors, (Nat.totient d : ℚ) / d

/-- Rotation fixing coordinate zero on the coefficient-one surface. -/
def rotation {R : Type*} [CommRing R] (x : Fin 3 → R) : Fin 3 → R :=
  ![x 0, x 2, x 0 * x 2 - x 1]

/-- The exact rational formula for the number of cyclic rotation orbits. -/
theorem rotation_orbit_count (p : ℕ) [Fact p.Prime] (hp : 2 < p) :
    (Nat.card (Quotient (Relation.EqvGen.setoid
      (fun x y : {x : Fin 3 → ZMod p // markoffEquation 1 x ∧ x ≠ 0} =>
        y.val = rotation x.val))) : ℚ) =
      ((p : ℚ) - 1) / 2 * divisorPhi (p - 1) +
      ((p : ℚ) + 1) / 2 * divisorPhi (p + 1) +
      (if p % 4 = 1 then (-5 * (p : ℚ) + 11) / 4 else (-7 * (p : ℚ) - 1) / 4) := by
  sorry

/-! ## Layer 3: the giant orbit and sparse exceptions -/

/-- No nonempty finite nonzero Markoff subset over Qbar is stable under Gamma. -/
theorem no_finite_orbit (S : Finset (Fin 3 → AlgebraicClosure ℚ))
    (hS : ∀ x ∈ S, markoffEquation 1 x ∧ x ≠ 0)
    (hstable : ∀ x ∈ S, ∀ y, gammaStep 1 x y → y ∈ S) : S = ∅ := by
  sorry

/-- Every prime-field nonzero Gamma-orbit satisfies a uniform logarithmic lower bound. -/
theorem orbit_log_lower_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ P : ℕ, ∀ (p : ℕ) [Fact p.Prime], P < p →
      ∀ x : Fin 3 → ZMod p, markoffEquation 1 x → x ≠ 0 →
      c * (Real.log p) ^ (1 / 3 : ℝ) ≤
        Nat.card {y : Fin 3 → ZMod p // Relation.ReflTransGen (gammaStep 1) x y} := by
  sorry

/-- For each epsilon > 0 a single Gamma-orbit has subpower complement. -/
theorem giant_orbit (ε : ℝ) (hε : 0 < ε) :
    ∃ P : ℕ, ∀ (p : ℕ) [Fact p.Prime], P < p →
      ∃ x : Fin 3 → ZMod p, markoffEquation 1 x ∧ x ≠ 0 ∧
        (Nat.card {y : Fin 3 → ZMod p // markoffEquation 1 y ∧ y ≠ 0 ∧
          ¬ Relation.ReflTransGen (gammaStep 1) x y} : ℝ) ≤ (p : ℝ) ^ ε := by
  sorry

/-- Disconnected coefficient-three primes have a subpower counting function. -/
theorem sparse_exceptional_primes (ε : ℝ) (hε : 0 < ε) :
    ∃ T : ℕ, ∀ t : ℕ, T ≤ t →
      (Nat.card {p : ℕ // p ≤ t ∧ p.Prime ∧ ∃ x : Fin 3 → ZMod p,
        markoffEquation 3 x ∧ x ≠ 0 ∧
        ¬ Relation.ReflTransGen (moveStep 3) (fun _ => 1) x} : ℝ) ≤ (t : ℝ) ^ ε := by
  sorry

/-! ## Layer 4: prime approximation and the root orbit -/

/-- Every sufficiently large prime has a connected ordered Vieta graph. -/
theorem eventual_connectivity :
    ∃ P : ℕ, ∀ (p : ℕ) [Fact p.Prime], P < p → ∀ x : Fin 3 → ZMod p,
      markoffEquation 3 x → x ≠ 0 →
      Relation.ReflTransGen (moveStep 3) (fun _ => 1) x := by
  sorry

/-- Nonzero solutions at sufficiently large primes lift to positive integer triples. -/
theorem eventual_positive_lifting :
    ∃ P : ℕ, ∀ (p : ℕ) [Fact p.Prime], P < p → ∀ x : Fin 3 → ZMod p,
      markoffEquation 3 x → x ≠ 0 → ∃ a : Fin 3 → ℤ,
      markoffEquation 3 a ∧ (∀ i, 0 < a i) ∧ ∀ i, (a i : ZMod p) = x i := by
  sorry

/-- Connectivity implies full affine integral lifting in both coefficient conventions. -/
theorem prime_affine_lifting (p : ℕ) [Fact p.Prime]
    (hconn : ∀ x : Fin 3 → ZMod p, markoffEquation 3 x → x ≠ 0 →
      Relation.ReflTransGen (moveStep 3) (fun _ => 1) x) :
    ∀ c : ℕ, c = 1 ∨ c = 3 → ∀ x : Fin 3 → ZMod p, markoffEquation (c : ZMod p) x →
      ∃ a : Fin 3 → ℤ, markoffEquation (c : ℤ) a ∧ ∀ i, (a i : ZMod p) = x i := by
  sorry

/-! ## Layer 5: maximal divisors and effective bounds -/

/-- Divisibility-maximal positive divisors below a real cutoff. -/
noncomputable def maximalDivisors (n : ℕ) (x : ℝ) : Finset ℕ := by
  classical
  exact n.divisors.filter fun d => (d : ℝ) ≤ x ∧
    ∀ e ∈ n.divisors, d ∣ e → (e : ℝ) ≤ x → e = d

/-- The number of prime factors counted with multiplicity. -/
def bigOmega (n : ℕ) : ℕ := n.factorization.sum fun _ a => a

/-- The rank-k size of the positive-divisor lattice. -/
def divisorRank (n k : ℕ) : ℕ := (n.divisors.filter fun d => bigOmega d = k).card

/-- Reduced positive integers, with integer-power inequalities at all odd primes. -/
def IsReduced (n : ℕ) : Prop :=
  0 < n ∧ (∀ p q : ℕ, p.Prime → q.Prime → 2 < p → 2 < q →
    p ^ ((n.factorization p + 1) / (n.factorization q + 2)) < q) ∧
  ∀ q : ℕ, q.Prime → 2 < q → n.factorization q = 0 →
    2 ^ n.factorization 2 < 8 * q ^ 2

/-- Every n >= 2 is uniformly dominated by a reduced integer between n and 4n-6. -/
theorem reduced_domination (n : ℕ) (hn : 2 ≤ n) :
    ∃ m : ℕ, IsReduced m ∧ n ≤ m ∧ m ≤ 4 * n - 6 ∧
      ∀ x : ℝ, (maximalDivisors n x).card ≤ (maximalDivisors m x).card := by
  sorry

/-- The central-rank antichain bound and the normalized central binomial comparison. -/
theorem central_rank_bound (n : ℕ) (hn : 0 < n) (x : ℝ) :
    (maximalDivisors n x).card ≤ divisorRank n (bigOmega n / 2) ∧
    divisorRank n (bigOmega n / 2) * 2 ^ bigOmega n ≤
      n.divisors.card * (bigOmega n).choose (bigOmega n / 2) := by
  sorry

/-- Connectivity above the exact rational-decimal threshold quoted by Martin. -/
theorem effective_connectivity (p : ℕ) [Fact p.Prime] (hp : 3489 * 10 ^ 389 < p)
    (x : Fin 3 → ZMod p) (hx : markoffEquation 3 x) (hzero : x ≠ 0) :
    Relation.ReflTransGen (moveStep 3) (fun _ => 1) x := by
  sorry

/-! ## Layer 6: oriented traces and level structures -/

/-- An even word step is a pair of reversing generators. -/
def orientedStep {R : Type*} [CommRing R] (x y : Fin 3 → R) : Prop :=
  ∃ z, gammaStep 1 x z ∧ gammaStep 1 z y

/-- The order of the noncentral determinant-one companion matrix of trace t. -/
noncomputable def traceOrder {K : Type*} [Field K] (t : K) : ℕ :=
  orderOf (!![0, 1; -1, t] : Matrix (Fin 2) (Fin 2) K)

/-- Semisimple oriented orbit congruences over all finite fields, using splitting
of the characteristic polynomial in characteristic two as well. -/
theorem semisimple_orbit_congruence (K : Type*) [Field K] [Fintype K]
    (hq : 3 ≤ Fintype.card K) (t : K) (ht : t ≠ 2) (ht' : t ≠ -2) (x : Fin 3 → K)
    (hx : x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 - x 0 * x 1 * x 2 = t + 2)
    (hcoords : ∃ i j, i ≠ j ∧ x i ≠ 0 ∧ x j ≠ 0) :
    let q := Fintype.card K
    let m := if ∃ u : K, u ^ 2 - t * u + 1 = 0 then q - 1 else q + 1
    let n := traceOrder t
    n / Nat.gcd n ((if ringChar K = 2 then m else 4 * m) / n) ∣
      Nat.card {y : Fin 3 → K // Relation.ReflTransGen orientedStep x y} := by
  sorry

/-- The valuation congruence uses q^3-q and an odd coefficient prime. -/
theorem valuation_orbit_congruence (K : Type*) [Field K] [Fintype K]
    (hq : 3 ≤ Fintype.card K) (t : K) (ht : t ≠ 2) (ht' : t ≠ -2) (x : Fin 3 → K)
    (hx : x 0 ^ 2 + x 1 ^ 2 + x 2 ^ 2 - x 0 * x 1 * x 2 = t + 2)
    (hcoords : ∃ i j, i ≠ j ∧ x i ≠ 0 ∧ x j ≠ 0)
    (ℓ : ℕ) (hℓ : ℓ.Prime) (hodd : ℓ ≠ 2) :
    let q := Fintype.card K
    let r := (traceOrder t).factorization ℓ
    let s := (q ^ 3 - q).factorization ℓ - r
    ℓ ^ (r - s) ∣ Nat.card {y : Fin 3 → K // Relation.ReflTransGen orientedStep x y} := by
  sorry

/-- Every oriented nonzero prime-field Markoff orbit has p-divisible size. -/
theorem oriented_card_dvd (p : ℕ) [Fact p.Prime]
    (x : Fin 3 → ZMod p) (hx : markoffEquation 1 x) (hzero : x ≠ 0) :
    p ∣ Nat.card {y : Fin 3 → ZMod p // Relation.ReflTransGen orientedStep x y} := by
  sorry

/-- For p >= 5, full Markoff transitivity implies oriented transitivity. -/
theorem oriented_transitivity (p : ℕ) [Fact p.Prime] (hp : 5 ≤ p)
    (htrans : ∀ x y : Fin 3 → ZMod p, markoffEquation 1 x → x ≠ 0 →
      markoffEquation 1 y → y ≠ 0 → Relation.ReflTransGen (gammaStep 1) x y) :
    ∀ x y : Fin 3 → ZMod p, markoffEquation 1 x → x ≠ 0 →
      markoffEquation 1 y → y ≠ 0 → Relation.ReflTransGen orientedStep x y := by
  sorry

/-! ## Layer 7: squarefree diagonal orbits -/

/-- The Meiri-Puder order condition, independent of the inverse-paired choice of root. -/
def mpCondition (p : ℕ) [Fact p.Prime] : Prop :=
  p % 4 = 1 ∨ p % 4 = 3 ∧ ∀ u : (AlgebraicClosure (ZMod p))ˣ,
    (u : AlgebraicClosure (ZMod p)) + ↑(u⁻¹) = 3 →
    1024 * (p + 1) ≤ orderOf u ^ 2

/-- A composite-modulus point is primitive when every prime reduction is nonzero. -/
def primitivePoint (n : ℕ) (x : Fin 3 → ZMod n) : Prop :=
  ∀ p : ℕ, p.Prime → ∀ h : p ∣ n, ∃ i, ZMod.castHom h (ZMod p) (x i) ≠ 0

/-- A proper primitive permutation group other than the alternating group has
subexponential order when it is not two-transitive (Dixon-Mortimer, Theorem 5.3A). -/
theorem primitive_order_bound (n : ℕ) (hn : 2 ≤ n)
    (G : Subgroup (Equiv.Perm (Fin n))) [MulAction.IsPreprimitive G (Fin n)]
    (hproper : G ≠ ⊤) (halt : G ≠ alternatingGroup (Fin n))
    (htrans : ¬ MulAction.IsMultiplyPretransitive G (Fin n) 2) :
    (Nat.card G : ℝ) < Real.exp (4 * Real.sqrt n * (Real.log n) ^ 2) := by
  sorry

/-- Alternating sections in a proper two-transitive group have logarithmically
bounded degree (Dixon-Mortimer, Theorem 5.5B). -/
theorem primitive_section_bound (n k : ℕ) (hn : 2 ^ 16 ≤ n)
    (G : Subgroup (Equiv.Perm (Fin n))) [MulAction.IsPreprimitive G (Fin n)]
    [MulAction.IsMultiplyPretransitive G (Fin n) 2]
    (hproper : G ≠ ⊤) (halt : G ≠ alternatingGroup (Fin n))
    (H : Subgroup G) (f : H →* alternatingGroup (Fin k))
    (hf : Function.Surjective f) : (k : ℝ) < 6 * Real.log n := by
  sorry

/-- Local transitivity and MP imply one global Vieta word reaches every primitive point. -/
theorem squarefree_transitivity (n : ℕ) (hn : 1 < n) (hsq : Squarefree n)
    (hlocal : ∀ (p : ℕ) [Fact p.Prime], p ∣ n → 5 ≤ p ∧ mpCondition p ∧
      ∀ x : Fin 3 → ZMod p, markoffEquation 3 x → x ≠ 0 →
        Relation.ReflTransGen (moveStep 3) (fun _ => 1) x)
    (x : Fin 3 → ZMod n) (hx : markoffEquation 3 x) (hprim : primitivePoint n x) :
    Relation.ReflTransGen (moveStep 3) (fun _ => 1) x := by
  sorry

/-- Every primitive squarefree point lifts positively in either coefficient convention. -/
theorem squarefree_positive_lifting (n : ℕ) (hn : 1 < n) (hsq : Squarefree n)
    (hlocal : ∀ (p : ℕ) [Fact p.Prime], p ∣ n → 5 ≤ p ∧ mpCondition p ∧
      ∀ x : Fin 3 → ZMod p, markoffEquation 3 x → x ≠ 0 →
        Relation.ReflTransGen (moveStep 3) (fun _ => 1) x)
    (c : ℕ) (hc : c = 1 ∨ c = 3) (x : Fin 3 → ZMod n)
    (hx : markoffEquation (c : ZMod n) x) (hprim : primitivePoint n x) :
    ∃ a : Fin 3 → ℤ, markoffEquation (c : ℤ) a ∧ (∀ i, 0 < a i) ∧
      ∀ i, (a i : ZMod n) = x i := by
  sorry

/-- The squarefree integral image is the origin together with the primitive locus. -/
theorem squarefree_integral_image (n : ℕ) (hn : 1 < n) (hsq : Squarefree n)
    (hlocal : ∀ (p : ℕ) [Fact p.Prime], p ∣ n → 5 ≤ p ∧ mpCondition p ∧
      ∀ x : Fin 3 → ZMod p, markoffEquation 3 x → x ≠ 0 →
        Relation.ReflTransGen (moveStep 3) (fun _ => 1) x)
    (c : ℕ) (hc : c = 1 ∨ c = 3) (x : Fin 3 → ZMod n)
    (hx : markoffEquation (c : ZMod n) x) :
    (∃ a : Fin 3 → ℤ, markoffEquation (c : ℤ) a ∧ ∀ i, (a i : ZMod n) = x i) ↔
      x = 0 ∨ primitivePoint n x := by
  sorry

end TauCetiRoadmap.ArithmeticDynamicsPartII
