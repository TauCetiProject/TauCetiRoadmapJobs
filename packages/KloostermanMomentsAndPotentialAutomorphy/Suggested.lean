import Mathlib

/-!
# Kloosterman moments and potential automorphy: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib, each with `sorry`, together with the few elementary
definitions (finite Kloosterman sums, symmetric-power traces, moments, their generating series and
the explicit Euler factors, conductors and gamma factors of Fresán–Sabbah–Yu) that these statements
need. Every one of these definitions has a real body built from finite sums over finite fields and
formal power series.

Stated here:

* integrality, polynomiality and the degree of the moment generating series `Z_k(p;T)`
  (Fresán–Sabbah–Yu (1.5), (5.1)–(5.4), after Fu–Wan and Yun);
* the weights of the reciprocal roots of `Z_k(p;T)`: one trivial root, the middle roots of weight
  `k + 1`, and, for even `k`, boundary roots of weight `k` (Fresán–Sabbah–Yu §1.1 and §5.1.1);
* the meromorphic continuation and functional equation of the completed odd moment `L`-function
  (Fresán–Sabbah–Yu, Theorem 1.2);
* the meromorphic continuation and functional equation of the completed even moment `L`-function,
  with an unknown conductor exponent, Euler factor and sign at `2` (Fresán–Sabbah–Yu, Theorem 1.3).

Not statable at the pins, and therefore not stated:

* the Hodge numbers of `H¹(𝔾_m, Sym^k Kl₂)` and of its middle part (Fresán–Sabbah–Yu,
  Theorem 1.8): Mathlib and Tau Ceti have no algebraic de Rham cohomology of a connection on a
  curve, no exponential mixed Hodge structures and no irregular Hodge filtration;
* the geometric and arithmetic monodromy groups of the normalized Kloosterman sheaves and the
  differential Galois groups of the Kloosterman connections (Katz, as recorded by Xu–Zhu §1.1.2 and
  Fresán–Sabbah–Yu Proposition 2.7): there are no `ℓ`-adic sheaves on curves over finite fields, no
  monodromy groups of lisse sheaves and no differential Galois groups;
* the classicality and hypersurface comparison of the moment cohomology, and the Nori motive `M_k`
  (Fresán–Sabbah–Yu, Theorems 3.2 and 3.8): there are no Nori motives and no cohomology of
  exponential pairs;
* the local structure of the `ℓ`-adic realizations at bad primes, their regularity, polarization and
  weak compatibility, and their potential automorphy (Fresán–Sabbah–Yu, Theorems 5.8, 5.17 and
  5.38): there is no étale cohomology of varieties over number fields with its Galois action and no
  notion of a regular algebraic cuspidal automorphic representation.
-/

namespace TauCetiRoadmap.KloostermanMomentsAndPotentialAutomorphy

open PowerSeries

/-! ## Layer 0: finite sums and symmetric-power moments -/

/-- The rank-two Kloosterman sum `Kl₂(a; ψ) = Σ_{x ∈ Fˣ} ψ(x + a/x)` over a finite field `F`,
with no prefactor (Fresán–Sabbah–Yu, (1.1)). It is the rank-two case of the product-fibre
hyper-Kloosterman sum, by elimination of the last variable. -/
noncomputable def kloostermanSum (F : Type*) [Field F] [Fintype F] [DecidableEq F]
    (ψ : AddChar F ℂ) (a : F) : ℂ :=
  ∑ x : Fˣ, ψ ((x : F) + a * (x : F)⁻¹)

/-- The additive character `x ↦ exp(2πi Tr_{𝔽_{p^m}/𝔽_p}(x)/p)` of `𝔽_{p^m}`: the standard
character of `ZMod p` composed with the field trace. These characters are compatible in towers of
finite fields, as the moment generating series requires. -/
noncomputable def traceChar (p : ℕ) [Fact p.Prime] (m : ℕ) : AddChar (GaloisField p m) ℂ :=
  (ZMod.stdAddChar (N := p)).compAddMonoidHom
    (Algebra.trace (ZMod p) (GaloisField p m)).toAddMonoidHom

/-- The symmetric-power trace `h_k(t, d)`: `h₀ = 1`, `h₁ = t` and
`h_{k+2} = t·h_{k+1} − d·h_k`. For `t = α + β` and `d = αβ` it is `Σ_{i=0}^k αⁱβ^{k−i}`, the trace
of `Sym^k` of a rank-two endomorphism with trace `t` and determinant `d`. -/
def symmetricTrace {R : Type*} [CommRing R] (t d : R) : ℕ → R
  | 0 => 1
  | 1 => t
  | k + 2 => t * symmetricTrace t d (k + 1) - d * symmetricTrace t d k

/-- The `k`-th symmetric-power moment `m₂ᵏ(p^m) = Σ_{a ∈ 𝔽_{p^m}ˣ} h_k(−Kl₂(a), p^m)`
(Fresán–Sabbah–Yu, §1.1). The minus sign makes `−Kl₂(a)` the sum of the two Frobenius
eigenvalues, whose product is `p^m`. -/
noncomputable def moment (p : ℕ) [Fact p.Prime] (k m : ℕ) : ℂ :=
  letI : Fintype (GaloisField p m) := Fintype.ofFinite _
  letI : DecidableEq (GaloisField p m) := Classical.decEq _
  ∑ a : (GaloisField p m)ˣ,
    symmetricTrace (-kloostermanSum (GaloisField p m) (traceChar p m) (a : GaloisField p m))
      ((p : ℂ) ^ m) k

/-- The moment generating series `Z_k(p; T) = exp(Σ_{m ≥ 1} m₂ᵏ(p^m) T^m / m)` in `ℂ⟦T⟧`
(Fresán–Sabbah–Yu, §1.1). The exponent has zero constant coefficient. -/
noncomputable def momentSeries (p : ℕ) [Fact p.Prime] (k : ℕ) : PowerSeries ℂ :=
  (PowerSeries.exp ℂ).subst
    (PowerSeries.mk fun m => if m = 0 then 0 else moment p k m / (m : ℂ))

/-! ## Layer 8: local factors and conductors -/

/-- For `k ≥ 1`, `Z_k(p; T) = (1 − T)·Q(T)` where every complex root of `Q` has absolute value
`p^{−(k+1)/2}` (the middle part, of weight `k + 1`) or, only for even `k`, `p^{−k/2}` (the boundary
part at infinity, of weight `k`) (Fresán–Sabbah–Yu, §1.1 and (5.2)–(5.4)). -/
theorem momentSeries_weights (p : ℕ) [Fact p.Prime] (k : ℕ) (hk : 0 < k) :
    ∃ Q : Polynomial ℂ, (((1 - Polynomial.X) * Q : Polynomial ℂ) : PowerSeries ℂ) = momentSeries p k ∧
      ∀ z ∈ Q.roots, ‖z‖ = (p : ℝ) ^ (-((k : ℝ) + 1) / 2) ∨
        (Even k ∧ ‖z‖ = (p : ℝ) ^ (-(k : ℝ) / 2)) := by
  sorry

/-- The degree of `Z_k(p; T)` for `k ≥ 1` (Fu–Wan for odd `p`, Yun for `p = 2`, as recorded by
Fresán–Sabbah–Yu (5.1)–(5.4)): `(k + 1)/2 − ⌊k/(2p) + 1/2⌋` for odd `k` and odd `p`, `(k + 1)/2`
for odd `k` and `p = 2`, `k/2 − ⌊k/(2p)⌋` for even `k` and odd `p`, and `⌊(k + 2)/4⌋` for even `k`
and `p = 2`. Here `⌊k/(2p) + 1/2⌋ = ⌊(k + p)/(2p)⌋`. -/
def momentDegree (p k : ℕ) : ℕ :=
  if Odd k then
    if p = 2 then (k + 1) / 2 else (k + 1) / 2 - (k + p) / (2 * p)
  else
    if p = 2 then (k + 2) / 4 else k / 2 - k / (2 * p)

/-- For `k ≥ 1`, the moment generating series `Z_k(p; T)` is a polynomial with integer
coefficients, constant term `1` and degree `momentDegree p k` (Fresán–Sabbah–Yu, (1.5) and
(5.1)–(5.4); the degree is the Swan conductor at infinity of `Sym^k Kl₂`). -/
theorem momentSeries_eq_intPolynomial (p : ℕ) [Fact p.Prime] (k : ℕ) (hk : 0 < k) :
    ∃ P : Polynomial ℤ, P.coeff 0 = 1 ∧ P.natDegree = momentDegree p k ∧
      ((P.map (Int.castRingHom ℂ) : Polynomial ℂ) : PowerSeries ℂ) = momentSeries p k := by
  sorry

/-- `Θ⁺_p`: the odd integers `a ≥ 1` with `ap ≤ k` and `v_p(a)` odd (Fresán–Sabbah–Yu, §5.1.2). For
`p = 2` it is empty. -/
def thetaPlus (k p : ℕ) : Finset ℕ :=
  (Finset.range (k + 1)).filter fun a => Odd a ∧ a * p ≤ k ∧ Odd (padicValNat p a)

/-- `Θ⁻_p`: the odd integers `a ≥ 1` with `ap ≤ k` and `v_p(a)` even (Fresán–Sabbah–Yu, §5.1.2). -/
def thetaMinus (k p : ℕ) : Finset ℕ :=
  (Finset.range (k + 1)).filter fun a => Odd a ∧ a * p ≤ k ∧ Even (padicValNat p a)

/-- The inverse Euler factor `L_k(p; T)⁻¹` of the odd moment motive (Fresán–Sabbah–Yu, (5.13)):
`M_k(p; T) = Z_k(p; T)/(1 − T)` times `1 − ((−1)^{(1+ap)/2}·2a′ / p)·p^{(k+1)/2}·T` for each
`a ∈ Θ⁺_p`, where `a′ = a/p^{v_p(a)}` and the symbol is Legendre's. For `p = 2` the product is
empty. -/
noncomputable def oddEulerFactorInv (k p : ℕ) [Fact p.Prime] : PowerSeries ℂ :=
  momentSeries p k * (1 - X)⁻¹ *
    ∏ a ∈ thetaPlus k p,
      (1 - C ((legendreSym p ((-1) ^ ((1 + a * p) / 2) * 2 * ((a / p ^ padicValNat p a : ℕ) : ℤ))
        : ℂ) * (p : ℂ) ^ ((k + 1) / 2)) * X)

/-- The Euler factor `L_k(p; T)` of the odd moment motive at every prime, and `1` at non-primes. -/
noncomputable def oddEulerFactor (k p : ℕ) : PowerSeries ℂ :=
  if hp : p.Prime then
    haveI := Fact.mk hp
    (oddEulerFactorInv k p)⁻¹
  else 1

/-- The conductor `N_k = Π_{p odd} p^{|Θ⁻_p|}` of the odd moment motive, equal to the product of
the square-free parts of `1, 3, …, k` (Fresán–Sabbah–Yu, (5.14)). -/
def oddConductor (k : ℕ) : ℕ :=
  ∏ p ∈ (Finset.range (k + 1)).filter (fun p => p.Prime ∧ p ≠ 2), p ^ (thetaMinus k p).card

/-- The inverse Euler factor `L_k(p; T)⁻¹` of the even moment motive at an odd prime
(Fresán–Sabbah–Yu, (5.3) and (5.22)): `Z_k(p; T)` divided by `1 − T` and, when `4 ∣ k`, by
`1 − p^{k/2}T`. -/
noncomputable def evenEulerFactorInv (k p : ℕ) [Fact p.Prime] : PowerSeries ℂ :=
  momentSeries p k * (1 - X)⁻¹ * ((1 - C ((p : ℂ) ^ (k / 2)) * X)⁻¹) ^ (if 4 ∣ k then 1 else 0)

/-- The Euler factor `L_k(p; T)` of the even moment motive at every odd prime; it is `1` at `p = 2`
and at non-primes, so that the attached Dirichlet series is the Euler product over odd primes. -/
noncomputable def evenEulerFactor (k p : ℕ) : PowerSeries ℂ :=
  if hp : p.Prime ∧ p ≠ 2 then
    haveI := Fact.mk hp.1
    (evenEulerFactorInv k p)⁻¹
  else 1

/-- The odd part `N′_k = Π_{p odd} p^{⌊k/(2p)⌋}` of the conductor of the even moment motive
(Fresán–Sabbah–Yu, §5.1.4). -/
def evenConductor (k : ℕ) : ℕ :=
  ∏ p ∈ (Finset.range (k + 1)).filter (fun p => p.Prime ∧ p ≠ 2), p ^ (k / (2 * p))

/-- The dimension `d_k = ⌊(k − 1)/2⌋ − δ_{4 ∣ k}` of the moment motive for `k ≥ 1`
(Fresán–Sabbah–Yu, (4.13)). -/
def middleDim (k : ℕ) : ℕ :=
  (k - 1) / 2 - if 4 ∣ k then 1 else 0

/-! ## Layer 10: determinants, gamma factors and completion -/

/-- The gamma factor `G(s) = π^{−ds/2} Π_{j=1}^d Γ((s − j)/2)` used by Fresán–Sabbah–Yu in their
completed functions (§1.1). It differs from the product of the standard factors
`Γ_ℝ(s − j) = π^{−(s−j)/2}Γ((s − j)/2)` by the nonzero constant `π^{d(d+1)/4}`. -/
noncomputable def paperGamma (d : ℕ) (s : ℂ) : ℂ :=
  (Real.pi : ℂ) ^ (-(d : ℂ) * s / 2) * ∏ j ∈ Finset.Icc 1 d, Complex.Gamma ((s - j) / 2)

/-- The Dirichlet coefficients of the Euler product `Π_p L(p; p^{−s})` attached to a family of
Euler factors: `n ↦ Π_{p^j ∥ n} [T^j] L(p; T)`. -/
noncomputable def eulerCoeff (L : ℕ → PowerSeries ℂ) (n : ℕ) : ℂ :=
  n.factorization.prod fun p j => coeff j (L p)

/-! ## Layer 11: potential automorphy and functional equations -/

/-- **Odd moment functional equation** (Fresán–Sabbah–Yu, Theorem 1.2). For odd `k`, the Euler
product `L_k(s) = Π_p L_k(p; p^{−s})` converges absolutely for `Re s > (k + 3)/2`, and the completed
function `Λ_k(s) = N_k^{s/2} π^{−ds/2} Π_{j=1}^d Γ((s − j)/2) L_k(s)`, `d = (k − 1)/2`, extends to a
meromorphic function on `ℂ` with `Λ_k(k + 2 − s) = Λ_k(s)`. The continuation is taken in normal form,
so the functional equation holds at every point. -/
theorem oddMoment_functionalEquation (k : ℕ) (hk : Odd k) :
    ∃ Λ : ℂ → ℂ, MeromorphicNFOn Λ Set.univ ∧
      (∀ s : ℂ, ((k : ℝ) + 3) / 2 < s.re →
        LSeriesSummable (eulerCoeff (oddEulerFactor k)) s ∧
        Λ s = (oddConductor k : ℂ) ^ (s / 2) * paperGamma ((k - 1) / 2) s *
          LSeries (eulerCoeff (oddEulerFactor k)) s) ∧
      ∀ s : ℂ, Λ (k + 2 - s) = Λ s := by
  sorry

/-- **Even moment functional equation** (Fresán–Sabbah–Yu, Theorem 1.3). For even `k ≥ 2`, the
Euler product over odd primes converges absolutely for `Re s > (k + 3)/2`, and there are an
integer `r ≥ 0`, a polynomial `P ∈ ℚ[T]` with `P(0) = 1` and a sign `ε` such that
`Λ_k(s) = 2^{rs/2} P(2^{−s})⁻¹ (N′_k)^{s/2} π^{−ds/2} Π_{j=1}^d Γ((s − j)/2) Π_{p odd} L_k(p; p^{−s})`,
`d = ⌊(k − 1)/2⌋ − δ_{4∣k}`, extends to a meromorphic function on `ℂ` with
`Λ_k(k + 2 − s) = ε Λ_k(s)`. -/
theorem evenMoment_functionalEquation (k : ℕ) (hk : Even k) (hk0 : 0 < k) :
    ∃ r : ℕ, ∃ P : Polynomial ℚ, P.coeff 0 = 1 ∧ ∃ ε : ℂ, (ε = 1 ∨ ε = -1) ∧
      ∃ Λ : ℂ → ℂ, MeromorphicNFOn Λ Set.univ ∧
        (∀ s : ℂ, ((k : ℝ) + 3) / 2 < s.re →
          LSeriesSummable (eulerCoeff (evenEulerFactor k)) s ∧
          Λ s = (2 : ℂ) ^ ((r : ℂ) * s / 2) * (Polynomial.aeval ((2 : ℂ) ^ (-s)) P)⁻¹ *
            (evenConductor k : ℂ) ^ (s / 2) * paperGamma (middleDim k) s *
            LSeries (eulerCoeff (evenEulerFactor k)) s) ∧
        ∀ s : ℂ, Λ (k + 2 - s) = ε * Λ s := by
  sorry

end TauCetiRoadmap.KloostermanMomentsAndPotentialAutomorphy
