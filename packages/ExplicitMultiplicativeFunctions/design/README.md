# Roadmap: explicit multiplicative functions

**Summary.** This roadmap builds the numerically explicit layer of multiplicative number theory on
Mathlib's `ArithmeticFunction` carrier: inequalities with stated constants and thresholds for the
summatory functions of the Möbius function `M(x) = Σ_{n ≤ x} μ(n)`, `m(x) = Σ_{n ≤ x} μ(n)/n` and
`m̌(x) = Σ_{n ≤ x} μ(n) log(x/n)/n`, with and without coprimality restrictions and character twists;
the general conversion theorems behind those numbers (Meissel's and MacLeod's identities, Balazard's
passage from `M` to `m` and `m̌`, Ramaré's transfer from explicit prime estimates to explicit Möbius
estimates, the comparison theorem of the convolution method, the explicit Levin–Fainleib theorem);
explicit upper bounds for averages of nonnegative multiplicative functions; the explicit averages of
`μ²`, `μ²/φ`, `τ`, `τ_k`, `τ²`, `2^ω`, `φ`; explicit finite Euler products over primes; and
pointwise bounds for `ω(n)`, `τ_k(n)`, `σ(n)` and `σ*(n)`. Every result is proved once in a general
form whose analytic inputs (a Chebyshev bound of a given shape, a Möbius table, a finite
verification) are explicit parameters or named `Prop` hypotheses, and the published constants are
then instances. The end theorems are Tao's bound `|Σ_{n ∈ ⟨S⟩, n ≤ x} μ(n)/n| ≤ 1` for every set `S`
of primes, Balazard's inequality `|m(x)| ≤ |M(x)|/x + x^{−2} ∫_1^x |M(t)| dt + 8/(3x)`, the
Ramaré transfer theorem and its instance `|M(D)| ≤ (0.0130/log D − 0.118/log² D) D` with every
computation it rests on named, the convolution comparison theorem with the Dirichlet-divisor model
`Σ_{n ≤ t} τ(n)/n = ½ log² t + 2γ log t + γ² − 2γ₁ + O*(1.16 t^{−1/3})` for `t ≥ 1` (with `1.641`
in place of `1.16` for every `t > 0`, the form the comparison theorem consumes), the explicit
Mertens product `e^γ log x ∏_{p ≤ x}(1 − 1/p) ∈ [1 − 1/log² x, 1 + 1/(2 log² x)]`, Robin's
`ω(n) ≤ 1.3841 log n/log log n` and the Nicolas–Robin maximum `τ(n) ≤ n^{1.538 log 2/log log n}`.

Suggested home: `TauCeti/NumberTheory/Explicit/MultiplicativeFunctions/`, divided into `Moebius/`,
`Convolution/`, `Averages/`, `EulerProducts/` and `Pointwise/`. `Suggested.lean` states the headline
theorems against the pinned libraries; it is not the roadmap.

## Scope and ownership

### Owned here

- the real-argument summatory carriers of the Möbius function, their semigroup-restricted and
  character-twisted variants, the real-argument harmonic remainder, the squarefree remainder, the
  first Stieltjes constant, and the `Prop` hypotheses that isolate the finite computations the
  sources rely on (Layer 0);
- Meissel's identity, MacLeod's Bernoulli identities, Balazard's identities, the elementary linear
  and logarithmic bounds for `M(x)`, the general linear bound from a Möbius table, Ramaré's transfer
  from explicit Chebyshev estimates to explicit Möbius estimates as a parametric theorem with every
  finite computation named, and the coprime variants (Layer 1);
- Gram's and Tao's bound `|m_S(x)| ≤ 1`, Ramaré's mollified bound, Balazard's conversion theorem,
  the thresholded and decaying bounds for `m(x)`, the coprime variants and the explicit tails of
  `Σ μ(d)/d²` (Layer 2);
- the identities and bounds for `m̌(x)`, with the sign correction of the corrigendum, and the
  coprime positivity theorem (Layer 3);
- the character-twisted logarithmic Möbius sum with a Pólya–Vinogradov bound as a parameter
  (Layer 4);
- the comparison theorem of the convolution method, its weighted variant, the harmonic and
  Dirichlet-divisor models, the second model, the hyperbola refinement of Akhilesh–Ramaré and the
  explicit Levin–Fainleib theorem (Layer 5);
- explicit upper bounds for averages of nonnegative multiplicative functions: the product bound,
  the Daboussi–Rivat tail bound, the Hall–Tenenbaum theorem, Bordellès' monotone-local-factor bound
  and the van Lint–Richert coprimality removal (Layer 6);
- the explicit averages of `μ²`, `μ²/n`, `μ²/φ`, the Riesel–Vaughan sum, `τ_k`, `τ_4`, `τ²`,
  `2^ω`, `φ/n` and `nφ`, Ramaré's logarithmic tail estimates for `Σ μ(d)/d²`, and the square-root
  bounds for the Dirichlet-divisor remainder with the constants `0.961`, `0.482` and `0.397`
  (Layer 7);
- the identification of the Meissel–Mertens constant with Tau Ceti's `mertensConstant ℚ`, the
  explicit Mertens product, Vanlalngaia's tilted products and Bordellès' products over a progression
  (Layer 8);
- the pointwise bounds for `ω(n)`, `τ_k(n)`, `σ(n)` and `σ*(n)` with the superior-highly-composite
  finite checks as hypotheses (Layer 9).

### Consumed, not redefined

- the arithmetic functions `μ`, `σ_k`, `ω`, `Ω`, `Λ`, `ζ`, `IsMultiplicative`, Dirichlet convolution,
  `Chebyshev.psi`, `Chebyshev.theta`, Abel summation, the harmonic bounds, Euler's constant with its
  bounds `1/2 < γ < 2/3`, `ζ(2) = π²/6`, Dirichlet characters with `L(1, χ) ≠ 0`, and the decimal
  bounds for `π`, `e` and `log 2`: Mathlib, as listed in the supplier contracts;
- the summatory Abel formulas of Tau Ceti and its Mertens constant `mertensConstant K`;
- the explicit prime estimates with constants (`ψ`, `θ`, `Σ_{n ≤ x} Λ(n)/n`, `Σ_{p ≤ x} 1/p` with
  explicit remainders beyond the Rosser–Schoenfeld form): the explicit-primes roadmap
  `ExplicitPrimeCounting`, whose contract is stated as gaps below; this roadmap never restates a
  prime estimate, and every theorem that uses one takes it as a hypothesis of the stated shape;
- the Rosser–Schoenfeld reciprocal-prime estimate `|Σ_{p ≤ x} 1/p − log log x − B| < 1/(2 log² x)`
  for `x ≥ 286`, the one-constant estimate `|Σ_{p ≤ x} (log p)/p − log x − E| < 1/(2 log x)` for
  `x ≥ 319`, Mertens' second and third theorems with qualitative remainders, the Dirichlet divisor
  asymptotic, the harmonic remainder `0 < H_N − log N − γ < log(1 + 1/N)` at integers, the divisor
  hyperbola identity, the Dirichlet-divisor remainder `divisorError` (`Δ`) with its bounds
  `divisorRemainder.sqrt_bound` and `divisorRemainder.cubic_bound`, the divisor subpower bound, the
  asymptotic maximal order of `τ`, Rankin's smooth-number bound and the asymptotic coprime Möbius
  sums: AnalyticNumberTheoryPartI §§0.8, 0.19, 0.21, 0.26, 3.1, 3.7, 3.12, 3.22, 3.22a, 3.22b,
  3.23a, 3.35, never restated; Layer 0.3 extends §3.22a to real arguments with the sharper
  `6/(11X)`, and Layer 7.4 sharpens the constant of `divisorRemainder.sqrt_bound` from `1` to
  `0.961`;
- the asymptotic Levin–Fainleib mean value and its uniform dimension-one form, and the logarithmic
  sieve dimension predicate: SieveMethodsAndPrimePatterns §§0.5 and 1.1, cited for the statement
  shape of Layer 5.5, which refines it with explicit constants;
- the Rankin-type bound `Σ_{n ≤ x} f(n) ≤ x exp(Σ_{p ≤ x} (f(p) − 1)/p)` for `f(p^ν) = f(p) ≥ 1`:
  ProbabilisticAndMetricNumberTheory Layer 3, the qualitative predecessor of Layer 6.1;
- the semantics of verified zeros (*AllOnCriticalLine*): ZerosOfLFunctions Layer 9; it enters this
  roadmap only through the explicit-primes contract and is never restated;
- the explicit Pólya–Vinogradov and Burgess inequalities and the explicit sieve bounds: the
  sibling `ExplicitCharacterSumsAndSieves`; Layer 4 takes a Pólya–Vinogradov bound as a parameter so
  that nothing is consumed from it.

### Not owned here

- zero-free regions, the explicit formula, zero counting and decimal zero-free constants
  (ZerosOfLFunctions, `ExplicitZetaBounds`);
- any computational algorithm: sieving `M(x)`, evaluating a constant, verifying a table. A page on
  exact computation contributes a verified value only, as a `Prop` hypothesis that this roadmap
  states and does not discharge (Layer 0.7);
- Vanlalngaia's constant `0.841` for the tilted products (`vanlalngaia2017` Theorem 5, p. 3): its
  input is that paper's Theorem 4, a remainder for `Σ_{p ≤ x} 1/p` in terms of `ψ(x) − x`, which is
  a prime estimate outside the explicit-primes contract below; Layer 8.2 proves the transfer with
  the cubic reciprocal-prime remainder instead;
- the `(log log x)^k/(log x)^k` family of bounds for `M(x)` of El Marraki 1995, Théorème 4, and the
  double-logarithmic sum `Σ_{n ≤ x} μ(n) log²(x/n)/n` of Ramaré 2015, Theorems 1.7–1.8 and 1.16–1.17:
  no consumer needs them; they belong to a Part II in the same direction;
- Nicolas' Théorème 3 (the constant `2.597` for all `n ≥ 3` outside twelve exceptional integers):
  its exceptional set is a table whose entries are not all legible in the certified text, so only
  Théorème 2, whose constant is attained, is planned;
- the class-number, least-nonresidue and large-sieve applications: `ExplicitNumberFields`,
  `ExplicitCharacterSumsAndSieves`, `ExplicitZetaBounds`.

## Conventions

Real arguments throughout. For a real `x`, a sum `Σ_{n ≤ x}` runs over the natural numbers of
`Finset.Icc 1 ⌊x⌋₊`, so it is empty for `x < 1`, and `x ↦ Σ_{n ≤ x} a_n` is a right-continuous step
function on all of `ℝ` (zero for `x < 1`). The statement `f(x) = g(x) + O*(h(x))` means
`|f(x) − g(x)| ≤ h(x)` at every `x` in the stated range; `O*` is never asymptotic. Thresholds are
inclusive (`x ≥ x₀`) unless the source states a strict one, which is then kept.

`log` is the real logarithm; `log x` for `x ≤ 0` and `log log x` for `x ≤ 1` are junk values, so
every statement with a logarithm in a denominator or a double logarithm carries the range that makes
it positive (`x > 1`, respectively `n ≥ 3`). Powers `x^α` with real `α` are `Real.rpow`, used only
for `x > 0`.

`μ` is `ArithmeticFunction.moebius`, `Λ` is `ArithmeticFunction.vonMangoldt`, `ζ` is
`ArithmeticFunction.zeta`, `τ = σ 0` (`ArithmeticFunction.sigma 0`), `τ_k = ζ^{⋆ k}` (the `k`-fold
Dirichlet convolution of `ζ`, so `τ_1 = ζ`, `τ_2 = τ`), `ω` is `cardDistinctFactors`, `φ` is
`Nat.totient`, `σ = σ 1`, and `σ*(n) = Σ_{d ∣ n, (d, n/d) = 1} d` is the unitary divisor sum, defined
here. `ψ` and `θ` are `Chebyshev.psi` and `Chebyshev.theta` (inclusive cutoffs). `γ` is
`Real.eulerMascheroniConstant`. `ψ̃(x) = Σ_{n ≤ x} Λ(n)/n`.

Semigroup restriction. For a set `S` of primes, `⟨S⟩` is the set of positive integers all of whose
prime factors lie in `S` (Mathlib's `Nat.factoredNumbers` when `S` is finite; the predicate
`∀ p ∈ n.primeFactors, p ∈ S` in general); `M_S`, `m_S`, `m̌_S` are the sums restricted to `⟨S⟩`. The
coprime-to-`q` sums `M_q`, `m_q`, `m̌_q` are the instance `S = {p : ¬ p ∣ q}`. The weight
`q/φ(q)` of a coprime bound is read as `∏_{p ∉ S} (1 − 1/p)^{−1}` over the excluded primes; it is
finite exactly when finitely many primes are excluded, and every coprime bound carries the
hypothesis that `S` excludes finitely many primes (the modulus instance excludes `ω(q)` of them).

Character twists use `DirichletCharacter ℂ q` and the Mathlib value `χ n` at a natural number
(zero when `(n, q) > 1`). `L(1, χ)` is `DirichletCharacter.LFunction χ 1`.

Dirichlet series are written `H(s) = Σ_{n ≥ 1} h(n) n^{−s}` with real `s`, `H̄(s) = Σ |h(n)| n^{−s}`,
and are used only where absolute convergence is a hypothesis. `H'(0)` and `H''(0)` are the sums
`−Σ h(n) log n` and `Σ h(n) log² n`, defined by absolute convergence of `H̄` at a negative abscissa.

The first Stieltjes constant is `γ₁ = lim_{N → ∞} (Σ_{n ≤ N} (log n)/n − ½ log² N)`, so that the
Laurent expansion of `ζ` at `1` reads `ζ(1 + s) = 1/s + γ − γ₁ s + …`; its decimal value is a
hypothesis, never a definition. Witness of the sign and normalisation: the constant term of
`Σ_{n ≤ t} τ(n)/n` is `γ² − 2γ₁ = 0.4788…`, not `γ² − γ₁ = 0.4060…` (Layer 5.2, Checks).

Every finite computation a source relies on is a named `Prop` (Layer 0.7), with the range and the
constant as data; a theorem that uses one takes it as an argument. No `Prop` of this roadmap is
proved or discharged here: each stays a hypothesis of the theorems that use it.

Universes and coefficients: every carrier is a function `ℝ → ℝ` or `ℝ → ℂ`; no structure is
polymorphic.

## Exact supplier contracts

### From Mathlib

- `ArithmeticFunction.moebius`, `ArithmeticFunction.vonMangoldt`, `ArithmeticFunction.zeta`,
  `ArithmeticFunction.sigma`, `ArithmeticFunction.cardDistinctFactors`,
  `ArithmeticFunction.IsMultiplicative`, the convolution `*` on `ArithmeticFunction R`,
  `ArithmeticFunction.moebius_mul_coe_zeta` (`μ ⋆ ζ = 1`), `ArithmeticFunction.coe_moebius_mul_coe_zeta`,
  `ArithmeticFunction.isMultiplicative_moebius`, `ArithmeticFunction.isMultiplicative_sigma`,
  `ArithmeticFunction.sigma_zero_apply` (`σ 0 n = #n.divisors`), `ArithmeticFunction.prodPrimeFactors`
  with `prodPrimeFactors_apply`, `ArithmeticFunction.IsMultiplicative.prodPrimeFactors_one_sub`,
  `Nat.card_divisors` (`#n.divisors = ∏_{p} (v_p(n) + 1)` for `n ≠ 0`), `Nat.sum_divisors_filter_squarefree`,
  `Nat.totient`, `Nat.factoredNumbers`, `Nat.smoothNumbers`, `Nat.primesBelow`, `Nat.primesLE`
  (`Mathlib/NumberTheory/PrimeCounting.lean`, the primes `≤ n`);
- `Chebyshev.psi`, `Chebyshev.theta` (sums over `Ioc 0 ⌊x⌋₊`), `Chebyshev.psi_nonneg`,
  `Chebyshev.theta_le_log4_mul_x` (`θ x ≤ log 4 · x` for `x ≥ 0`), `Chebyshev.psi_le_const_mul_self`
  (`ψ x ≤ (log 4 + 4) x` for `x ≥ 0`), `Chebyshev.psi_eq_theta_add_sum_theta`,
  `Chebyshev.abs_psi_sub_theta_le_sqrt_mul_log`;
- `sum_mul_eq_sub_sub_integral_mul` (Abel summation: for `0 ≤ a ≤ b`, `f` differentiable on
  `[a, b]` with integrable derivative, `Σ_{a < k ≤ b} f(k) c(k) = f(b) C(b) − f(a) C(a) −
  ∫_a^b f'(t) C(t) dt` with `C(t) = Σ_{k ≤ t} c(k)`), and its variants
  `sum_mul_eq_sub_integral_mul`, `sum_mul_eq_sub_integral_mul₀`;
- `harmonic`, `harmonic_le_one_add_log` (`H_n ≤ 1 + log n`), `log_add_one_le_harmonic`
  (`log(n + 1) ≤ H_n`), `Real.eulerMascheroniConstant`, `Real.eulerMascheroniSeq`,
  `Real.eulerMascheroniSeq'`, `Real.eulerMascheroniSeq_lt_eulerMascheroniConstant`,
  `Real.eulerMascheroniConstant_lt_eulerMascheroniSeq'`, `Real.one_half_lt_eulerMascheroniConstant`,
  `Real.eulerMascheroniConstant_lt_two_thirds` (no decimal enclosure of `γ` finer than these is
  at the pin; the two `eulerMascheroniSeq` inequalities enclose `γ` in an interval of width
  `log(1 + 1/n)` at every index `n`);
- `hasSum_zeta_two` (`Σ 1/n² = π²/6`), `Real.pi_gt_d6`, `Real.pi_lt_d6`, `Real.exp_one_gt_d9`,
  `Real.exp_one_lt_d9`, `Real.log_two_gt_d9`, `Real.log_two_lt_d9`;
- `DirichletCharacter ℂ N`, `DirichletCharacter.LFunction`, `DirichletCharacter.LFunction_apply_one_ne_zero`
  (`χ ≠ 1 → LFunction χ 1 ≠ 0`), `DirichletCharacter.LFunction_ne_zero_of_one_le_re`;
- `EulerProduct.eulerProduct_hasProd`, `EulerProduct.eulerProduct_completely_multiplicative`
  (the Euler product of an absolutely summable multiplicative `f : ℕ →* F`, as finite products over
  `primesBelow` and their limit), `Real.summable_nat_rpow_inv`;
- `Nat.Coprime`, `Nat.primeFactors`, `Squarefree`, `Nat.factorization`.

What these do not include: no real-argument summatory function of `μ`, no bound on `M(x)` or
`m(x)` of any shape, no explicit remainder for `Σ_{n ≤ x} τ(n)`, no Stieltjes constant, no explicit
Mertens product, no pointwise bound for `ω`, `τ_k` or `σ` beyond `card_divisors_le_self`; the
Chebyshev bounds at the pin are the Chebyshev-type constants `log 4` and `log 4 + 4` only.

### From Tau Ceti

- `TauCeti/NumberTheory/AbelSummation.lean`: `sum_Icc_rpow_mul_eq` (Abel summation against a real
  power on `Icc 1 ⌊x⌋₊`) and `tendsto_rpow_inv_mul_sum_Icc_rpow_mul`;
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/AbelSummation.lean`:
  `summatory_mul_eq_sub_sub_integral_mul`, `summatory_mul_eq_sub_integral_mul_of_le`,
  `summatory_mul_le_of_summatory_le`, `tsum_mul_le_of_summatory_le` (summatory Abel formulas and
  the transfer of a summatory bound to a weighted sum and to a tail);
- `TauCeti/NumberTheory/LFunctions/Mertens.lean`: `mertensConstant K` (the limit of
  `Σ_{N𝔭 ≤ x} 1/N𝔭 − log log x`), `tendsto_primeSummatory_inv_absNorm_sub_log_log`,
  `isBigO_primeSummatory_inv_absNorm_sub_log_log_sub_mertensConstant`; used at `K = ℚ`, where the
  prime ideals of norm `≤ x` are the rational primes `p ≤ x`;
- `TauCeti/NumberTheory/ArithmeticFunction/DivisorBounds.lean`: `sigma_le_rpow_mul_tsum`
  (`σ_k(n) ≤ n^s Σ_d d^{−s}` for `k ≤ s`, `s > 1`, every `n` including `0`); its `k = 0` case is the
  `k = 2` case of Layer 9.2's `τ_k(n) ≤ n^s ζ(s)^{k−1}`;
- `TauCeti/NumberTheory/ArithmeticDirichletSeries/EulerProduct/Basic.lean`: `localArithmeticFactor`,
  `normCoeff_eq_eulerProduct`, `isMultiplicative_eulerProduct`, used only as the comparison point for
  the local factors of Layer 0.6; the Dirichlet series of this roadmap are over `ℕ`, not over ideals;
- `TauCeti/NumberTheory/PrimeCounting.lean`: `primeCounting_nth_prime` (`π(p_{k+1}) = k + 1` for
  Mathlib's `nth Nat.Prime k`), stated with Mathlib's `Nat.primesLE`;
- `TauCeti/NumberTheory/SumPrimeReciprocals.lean`:
  `tendsto_prod_primesLE_filter_notMem_one_sub_inv_inv_atTop` (divergence of the Euler product over
  the primes outside a finite set).

What these do not include: no explicit constant in any prime estimate, no explicit remainder for
`mertensConstant`, no summatory bound for `μ`.

### From TauCetiRoadmap.AnalyticNumberTheoryPartI

- §0.8: there is a real `E` with `log x + E − 1/(2 log x) < Σ_{p ≤ x} (log p)/p < log x + E +
  1/(2 log x)` for every real `x ≥ 319`, one `E` at both endpoints (Rosser–Schoenfeld Theorem 6);
  used in the Checks of Layer 5.5;
- §0.19: there is a real `B` with `|Σ_{p ≤ x} 1/p − log log x − B| < 1/(2 log² x)` for every real
  `x ≥ 286` (Rosser–Schoenfeld Theorem 5), unconditional; Layer 8.1 identifies this `B` with
  `mertensConstant ℚ`;
- §0.21: `Σ_{p ≤ x} 1/p = log log x + B + O(1/log x)` for `x ≥ 2`, and §0.26:
  `∏_{p ≤ x}(1 − 1/p)^{−1} = e^γ log x + O(1)` for `x ≥ 2`; together they give the identity
  `B = γ + Σ_p (log(1 − 1/p) + 1/p)` used in Layer 8.1;
- §0.11: `Σ_{p < X} (log p)/p = log X + O(1)`, cited as the qualitative input of Layer 6.3's
  hypothesis `A`;
- §3.22: `Σ_{n ≤ x} τ(n) = x log x + (2γ − 1) x + O(√x)`; §3.22a: `0 < H_N − log N − γ <
  log(1 + 1/N) ≤ 1/N` for every integer `N ≥ 1`, which Layer 0.3 extends to real arguments;
  §3.22b: the hyperbola identity `Σ_{n ≤ x} τ(n) + M² = 2 Σ_{a ≤ M} ⌊x/a⌋` with `M = ⌊√x⌋` for real
  `x ≥ 1`, used in Layer 7.4;
- §3.23a: `divisorError`, `Δ(x) = Σ_{n ≤ x} τ(n) − x (log x + 2γ − 1)` with the inclusive real
  cutoff, the carrier of Layers 5.2, 7.4 and 7.5; `divisorRemainder.sqrt_bound` (`|Δ(x)| ≤ √x` for
  `x ≥ 1`), whose constant Layer 7.4 sharpens to `0.961`; and `divisorRemainder.cubic_bound`
  (`|Δ(x)| ≤ 0.764 x^{1/3} log x` for `x ≥ 9995`), consumed as stated; both bounds carry that
  section's finite input `BBRFiniteInput`, which is assumed of them and not restated here;
- §3.1 and §3.7: the explicit subpower bound `τ(n) ≤ max(1, (ε log 2)^{−1})^B n^ε` and the asymptotic
  maximal order of `τ`: the predecessors of Layer 9.2;
- §3.12: the asymptotic coprime Möbius sums `Σ_{t ≤ T, (t, q) = 1} μ(t)/t = O_A((log T)^{−A})`: the
  qualitative form of Layer 2.4;
- §3.35 and §3.35a: Rankin's bound `Ψ(x, y) ≤ x^σ ∏_{p ≤ y}(1 − p^{−σ})^{−1}` and the finite-prime
  smooth Dirichlet series: used in Layer 6.1 and 6.2.

### From TauCetiRoadmap.SieveMethodsAndPrimePatterns

- §0.5: the predicate *HasLogSieveDimension* `(P, g, κ, C)`: `Σ_{p ∈ P, p ≤ z} g(p) log p ≤ κ log z + C`
  for every real `z ≥ 2`. Layer 5.5 states its hypothesis in this shape with a two-sided bound;
- §1.1: the asymptotic Selberg denominator `Σ_{d < z} μ²(d) ∏_{p ∣ d} g(p)/(1 − g(p)) ∼ (log z)^κ /
  (Γ(κ + 1) H_g)` and the uniform lower bound `Σ_{d < z, (d, k) = 1} μ²(d)/φ(d) ≥ c (φ(k)/k) log z`:
  the statement shape that Layer 5.5 makes explicit; nothing is restated.

### From TauCetiRoadmap.ProbabilisticAndMetricNumberTheory

- Layer 3, the Rankin-type bound for multiplicative `f` with `f(p^ν) = f(p) ≥ 1`:
  `Σ_{n ≤ x} f(n) ≤ x exp(Σ_{p ≤ x} (f(p) − 1)/p)`. Layer 6.1 is the general product bound of which
  this is the instance; it is cited, not restated.

### From TauCetiRoadmap.ZerosOfLFunctions

- Layer 9, *AllOnCriticalLine*: the meaning of "the zeros of `ζ` up to height `T` lie on the
  critical line". It enters only through the explicit-primes contract below and is not restated.

### Explicit prime estimates (the contract of `ExplicitPrimeCounting`)

The following prerequisites are stated here as hypotheses of the exact shape the proofs use. They
are the explicit prime estimates that the roadmap `ExplicitPrimeCounting` must provide (its Layers 2
and 3); until it does, every theorem below that needs one takes it as a `Prop` argument of this shape,
so that no statement of this roadmap depends on that roadmap's final constants.

- What ExplicitPrimeCounting must provide (gap:psi-ratio-max): `ψ(x) ≤ 1.04 x` for every real
  `x ≥ 0` (its T2.1, Rosser–Schoenfeld 1962 Theorem 12, `ψ(x) < 1.03883 x` with the maximum of
  `ψ(x)/x` at `x = 113`). Needed by Layer 1.5.
- What ExplicitPrimeCounting must provide (gap:psi-initial-range): `|ψ(x) − x| ≤ √x` for every real
  `x` with `8 ≤ x ≤ 10^{10}`, and `|ψ(x) − x| ≤ 0.8 √x` for every real `x` with
  `1500 ≤ x ≤ 10^{10}` (`ramare2013aa` lines 205–207, (4.1)–(4.2), quoting a verification under
  the zeros of `ζ` verified to a height). Needed by Layers 1.2 and 1.5.
- What ExplicitPrimeCounting must provide (gap:psi-dusart-log): `|ψ(x) − x| ≤ 0.0065 x/log x` for
  every real `x ≥ e^{22}` (its T2.2, Dusart's `0.006409` for `x > e^{22}`). Needed by Layers 1.4
  and 1.5.
- What ExplicitPrimeCounting must provide (gap:psi-relative-large): `|ψ(x) − x| ≤ 0.000213 x` for
  every real `x ≥ 10^{10}` (`ramare2013aa` line 220, (4.4)). Needed by Layers 1.2 and 1.5.
- What ExplicitPrimeCounting must provide (gap:psi-tilde-explicit): `|Σ_{n ≤ x} Λ(n)/n − log x +
  γ| ≤ 0.0067/log x` for every real `x ≥ 1 520 000` (its T3.2, Ramaré 2013 with the range
  rectified by Vanlalngaia 2017; the range `x ≥ 23` printed at `ramare2013aa` line 251 is false:
  at `x = 23` the left side is `0.053…` and the right side `0.0021…`). Needed by Layer 1.5.
- What ExplicitPrimeCounting must provide (gap:mertens-reciprocal-cubic): `|Σ_{p ≤ x} 1/p −
  log log x − B| ≤ 1/log³ x` for every real `x ≥ 24 284`, with `B = mertensConstant ℚ` (its T3.3,
  Vanlalngaia 2017 Corollary 1). Needed by Layers 8.1 and 8.2.
- What ExplicitPrimeCounting must provide (gap:mertens-reciprocal-dusart): `|Σ_{p ≤ x} 1/p −
  log log x − B| ≤ 1/(5 log³ x)` for every real `x > 2 278 382`, with `B = mertensConstant ℚ`
  (Dusart 2018, uncertified; its Layer 3). Needed by Layer 8.1 (Dusart's refinement).
- What ExplicitPrimeCounting must provide (gap:theta-progression-explicit): for every natural
  `q ≥ 3` and every `a` coprime to `q`, `|θ(x; q, a) − x/φ(q)| < c_θ(q) x/log x` for every real
  `x ≥ x_θ(q)`, with explicit `c_θ(q) ≤ 1/840` and `x_θ(q) ≤ 8·10^9` for `3 ≤ q ≤ 10^4` (its T5.2).
  Needed by Layer 8.3.
- What ExplicitPrimeCounting must provide (gap:nth-prime-lower): `p_k ≥ k(log k + log log k − 1)`
  for every natural `k ≥ 2`, where `p_k` is the `k`-th prime and `p₁ = 2` (its T4.2). Needed by
  Layers 9.1 and 9.3.
- What ExplicitPrimeCounting must provide (gap:prime-count-lower): `π(x) > x/log x` for every real
  `x ≥ 17` (its T2.1, Rosser–Schoenfeld 1962 Corollary 1; AnalyticNumberTheoryPartI §0.5 gives the
  stronger `π(x) > (x/log x)(1 + 1/(2 log x))` only for `x ≥ 59` and under its finite-range input).
  Needed by Layer 9.3.

The finite extensions of these estimates that Ramaré 2013 computes below their ranges are not part
of the contract: they are fields of `RamareTransferComputations` (Layer 0.7).

The Prop *RiemannZerosVerified* `T` (the zeros of `ζ` of height at most `T` lie on the critical line,
as *AllOnCriticalLine* of ZerosOfLFunctions Layer 9 on `Icc 0 1 ×ℂ Icc 0 T`) is the hypothesis under
which the explicit-primes roadmap proves the estimates above; it is not restated here, and no
theorem of this roadmap mentions it.

## How to read the build

Layer 0 fixes the carriers, the elementary remainders, the Euler-product derivatives and the `Prop`
hypotheses. Layers 1–3 treat the three summatory functions of `μ` in turn: `M` from the identities
and the prime estimates, `m` from `M` through Balazard's identities, `m̌` likewise; Layer 4 twists by
a character. Layer 5 is the convolution method: a comparison theorem that transports an explicit
asymptotic from a model `k` to any `g = h ⋆ k` with a small `h`, with its models, and the explicit
Levin–Fainleib theorem. Layer 6 gives upper bounds for averages of nonnegative multiplicative
functions that need no main term. Layer 7 applies Layers 5–6 to the classical functions. Layer 8 turns
the explicit reciprocal-prime sums into explicit Euler products. Layer 9 proves the pointwise maximal
orders. Within each layer the identities come first, then the parametric theorems, then the numerical
instances; an implementer who proves an instance by another route is not blocked behind a parametric
theorem, since each instance's `*Needs:*` line lists the identity and the hypotheses it uses.

## Layer 0: carriers, elementary remainders and computational hypotheses

### 0.1 Summatory carriers of the Möbius function

Define `moebiusSum x = Σ_{n ≤ x} μ(n)` (written `M(x)`), `moebiusDivSum x = Σ_{n ≤ x} μ(n)/n`
(written `m(x)`) and `moebiusLogSum x = Σ_{n ≤ x} μ(n) log(x/n)/n` (written `m̌(x)`), each a
function `ℝ → ℝ`, the sums over `Finset.Icc 1 ⌊x⌋₊`, so that all three vanish for `x < 1`. Define
`moebiusWeightedSum k f x = Σ_{n ≤ x} f(n) log^k n` for an arithmetic function `f` and `k : ℕ`
(Ramaré's `M_k(f, D)`), so that `M = moebiusWeightedSum 0 μ`.

- `M` is a step function, constant on `[N, N + 1)` for natural `N ≥ 1`, with `M(N) − M(N − 1) = μ(N)`;
  `m(N) − m(N − 1) = μ(N)/N`.
- `m̌` is continuous on `[1, ∞)` and differentiable off the integers with derivative `m(x)/x`:
  `m̌(x) = ∫_1^x m(t) dt/t` for `x ≥ 1` (so `m̌(1) = 0`), and `m̌(x) = m(x) log x − Σ_{n ≤ x} μ(n) log n/n`.
- Abel summation between the three: for `x ≥ 1`, `m(x) = M(x)/x + ∫_1^x M(t) dt/t²`
  (`sum_mul_eq_sub_sub_integral_mul` with `f(t) = 1/t`), and
  `m̌(x) = ∫_1^x M(t) log(x/t) dt/t² + ∫_1^x M(t) dt/t²`.
- Agreement with Mathlib: `M(N) = Σ_{n ∈ Finset.Icc 1 N} μ n` for natural `N`, and `M(x) = M(⌊x⌋₊)`.
- Meissel's identity (Layer 1.1) in the form `Σ_{n ≤ x} μ(n) ⌊x/n⌋ = 1` for `x ≥ 1`.

**Checks.**

- `M(1) = 1`, `M(2) = 0`, `M(3) = M(4) = −1`, `M(5) = −2`, `M(10) = −1`, `M(13) = −3`,
  `M(0.5) = 0`, `M(2.9) = M(2) = 0`; a sum over `Finset.range ⌊x⌋₊` would give `M(1) = μ(0) = 0`.
- `m(1) = 1`, `m(2) = 1/2`, `m(3) = 1/6`, `m(6) = 2/15`, `m(7) = −1/105`; the first negative value is
  at `x = 5`, `m(5) = −1/30`.
- `m̌(1) = 0`, `m̌(2) = log 2/1 = 0.6931…`, `m̌(3) = 0.8959…`, `m̌(30) = 1.00302…` (the maximum of
  `m̌`, Layer 3.3); a definition with `log(n/x)` in place of `log(x/n)` would make `m̌(2) < 0`.
- Non-example: `m̌` is not a step function; `m̌(1.5) = log 1.5 = 0.405… ≠ m̌(1) = 0`.

### 0.2 Semigroup and coprime restrictions

For a set `S` of primes, define `factoredBy S n` to mean `n ≠ 0 ∧ ∀ p ∈ n.primeFactors, p ∈ S`
(for finite `S` this is membership in `Nat.factoredNumbers`), and define `moebiusSumIn S x`,
`moebiusDivSumIn S x`, `moebiusLogSumIn S x` as the sums of Layer 0.1 restricted to `factoredBy S n`
(written `M_S`, `m_S`, `m̌_S`). Define the coprime instances `M_q = M_{S_q}`, `m_q`, `m̌_q` with
`S_q = {p : ¬ p ∣ q}` for a natural `q ≥ 1`, and `excludedWeight S = ∏_{p ∉ S} (1 − 1/p)^{−1}` when
the set of primes outside `S` is finite (so `excludedWeight S_q = q/φ(q)`).

- `factoredBy S 1` holds for every `S`; `factoredBy ∅ n ↔ n = 1`; `factoredBy S n` for `S` the set
  of all primes is `n ≠ 0`.
- `M_S` and `m_S` are `M` and `m` when `S` is the set of all primes; `M_∅(x) = 1` for `x ≥ 1`.
- The modulus instance: `factoredBy S_q n ↔ n ≠ 0 ∧ Nat.Coprime n q`, hence `M_q(x) = Σ_{n ≤ x, (n, q) = 1} μ(n)`,
  and `M_1 = M`.
- The convolution decomposition of the coprime restriction: `1_{(n, q) = 1} μ(n) = Σ_{ab = n} g_q(a) μ(b)`
  with `g_q` multiplicative, `g_q(p^k) = 1` for `p ∣ q` and `g_q(p^k) = 0` for `p ∤ q`, `k ≥ 1`;
  hence `m_q(x) = Σ_{a ≤ x, a ∣ q^∞} m(x/a)/a` and `Σ_{a ∣ q^∞} 1/a = q/φ(q)` (Ramaré 2015,
  `ramare2015mc` lines 224–230 and Lemma 1.9, lines 248–274).
- `excludedWeight` is multiplicative in the excluded set and equals `q/φ(q)` at `S_q`
  (`Nat.totient` and `prodPrimeFactors_one_sub`).

**Checks.**

- `S = {2}`: `⟨S⟩ = {1, 2, 4, 8, …}`, `M_S(x) = 1 − 1 = 0` for `x ≥ 2` and `1` for `1 ≤ x < 2`;
  `m_S(x) = 1/2` for `x ≥ 2`.
- `q = 2`, `x = 10`: `m_2(10) = 1 − 1/3 − 1/5 − 1/7 = 34/105` (the odd `n ≤ 10` with `μ(n) ≠ 0`
  are `1, 3, 5, 7`); the decomposition gives `m(10) + m(5)/2 + m(2.5)/4 + m(1.25)/8 =
  19/210 − 1/60 + 1/8 + 1/8 = 34/105`, both sides equal. The value `31/105` printed at
  `ramare2015mc` line 329 is a misprint: only `34/105` is consistent with the bound `≥ 0.260·2/log 5`
  on the same line.
- `excludedWeight S_6 = 6/φ(6) = 3`; `excludedWeight S_1 = 1`; the weight of the set of all primes
  is the empty product `1`.
- Non-example: with `S` the set of all primes except infinitely many, `excludedWeight` is undefined;
  every coprime bound below excludes finitely many primes.

### 0.3 The harmonic remainder

Define `harmonicRemainder X = Σ_{n ≤ X} 1/n − log X − γ` (written `R₁(X)`) for real `X > 0`.
Prove that `|R₁(X)| ≤ γ/X` for every real `X > 0`, and `|R₁(X)| ≤ 6/(11 X)` for `X ≥ 1`
(`akhileshRamare2017` lines 319–338, Lemma 2.1), and the cube-root form `Σ_{n ≤ t} 1/n = log t + γ +
O*(0.9105 t^{−1/3})` for every real `t > 0` (`ramare1995` lines 356–366, Lemma 3.3, first part, pp.
657–658; the constant is chosen so that the bound also holds on `0 < t < 1`, where the sum is empty
and the least admissible constant is the maximum `3 e^{−1−γ/3} = 0.910471…` of
`(−log t − γ) t^{1/3}`, attained at `t = e^{−3−γ}`). At integers these refine
AnalyticNumberTheoryPartI §3.22a, which is consumed and not restated.

Route: `Real.eulerMascheroniSeq_lt_eulerMascheroniConstant` and
`Real.eulerMascheroniConstant_lt_eulerMascheroniSeq'` give `0 < H_N − log N − γ < log(1 + 1/N)` at
integers; for real `X` write `Σ_{n ≤ X} 1/n = H_{⌊X⌋}` and compare `log X` with `log ⌊X⌋`; the
constant `6/11` needs the finer Euler–Maclaurin remainder `H_N − log N − γ = 1/(2N) − 1/(12 N²) + …`
with the sign of the next term, which is proved by comparing `1/n` with `∫` of a convex function.
*Needs:* `harmonic_le_one_add_log`; `log_add_one_le_harmonic`; the two `eulerMascheroniSeq`
inequalities; `Real.log_le_sub_one_of_pos`; AnalyticNumberTheoryPartI §3.22a.

**Checks.**

- `X = 1`: `R₁(1) = 1 − γ = 0.4227…`, below `6/11 = 0.5454…`, `γ = 0.5772…` and also `1/2`; the
  constant `1/2` fails only as `X → 2⁻`, where `R₁(X) → 1 − log 2 − γ = −0.27036` and
  `X |R₁(X)| → 2(log 2 + γ − 1) = 0.540726…`, below `6/11`: the constant `6/11` is nearly optimal.
- `X = 1/2`: the sum is empty, `R₁(1/2) = −log(1/2) − γ = 0.1159…`, and `γ/X = 1.154…` holds while
  `6/(11X) = 1.09` also holds but `1/(2X) = 1` is not the claimed form; at `X = 0.1`,
  `R₁ = 2.302 − 0.577 = 1.725 ≤ γ/0.1 = 5.77`.
- `t = 1/8`: `|R₁| = log 8 − γ = 1.502…` and `0.9105 t^{−1/3} = 1.821`; at `t = e^{−3−γ} =
  0.02794…` the left side is `3` and `t^{−1/3} = 3.2950…`, so the constant `0.9` fails there
  (`0.9·3.2950 = 2.966 < 3`) while `0.9105` holds (`3.0001 ≥ 3`): `3 e^{−1−γ/3} = 0.910471…` is the
  least admissible constant on `(0, 1)` (`ramare1995` lines 364–366: the minimum of
  `log t + γ + a t^{−1/3}` is at `t = (a/3)³`, and its vanishing gives `a = 3 exp(−1 − γ/3)`).

### 0.4 Sum of the integers up to a real bound

Prove that for every real `X ≥ 0` and every `c ∈ [1, 2]`, `Σ_{q ≤ X} q = X²/2 + O*(X^c/2)`
(`ramare2016mc` lines 540–562, Lemma 4.3). Route: for `Q ≤ X < Q + 1` with `N = Q(Q + 1)/2`, split at
`√(2N)` and use that `X ↦ X^c − X² + 2N` is monotone on each piece.
*Needs:* `Finset.sum_range_id_mul_two`; `Real.rpow` monotonicity.

**Checks.**

- `X = 1`, `c = 1`: `1 = 1/2 + 1/2`, equality; `c = 2`: `1 ≤ 1/2 + 1/2`.
- `X = 0.5`: the sum is `0` and `X²/2 = 1/8 ≤ X^c/2` for every `c ∈ [1, 2]`; with `c = 3` the claim
  fails at `X = 0.5` (`1/8 > 1/16`), so the range of `c` is needed.
- `X = 2.999`, `c = 1`: the sum is `3`, `X²/2 = 4.497`, the difference `1.497 ≤ 1.4995`.

### 0.5 Squarefree and Dirichlet-divisor remainders, the Stieltjes constant

Define `squarefreeRemainder x = Σ_{n ≤ x} μ²(n) − 6x/π²` (written `R(x)`) for real `x > 0`, and
the unitary divisor sum `unitarySigma n = Σ_{d ∣ n, Nat.Coprime d (n/d)} d` (written `σ*(n)`). The
Dirichlet-divisor remainder `Δ(x) = Σ_{n ≤ x} τ(n) − x (log x + 2γ − 1)` is AnalyticNumberTheoryPartI
§3.23a's `divisorError`, used as it is defined there.
Define `stieltjesGammaOne = lim_{N → ∞} (Σ_{n ≤ N} (log n)/n − ½ log² N)` (written `γ₁`) and prove
the limit exists (Abel summation against `log t/t` and the convergence of `∫ ({t} − 1/2) (1 − log t)/t²`).

- `R` is right-continuous and `R(x) = R(⌊x⌋) − 6(x − ⌊x⌋)/π²`, so `R(x)/√x` decreases on each
  `[N, N + 1)` and its extremes over the reals are at the integers and at the left limits
  `x → (N + 1)⁻`; likewise `Δ` decreases on each `[N, N + 1)` (derivative `−(log x + 2γ)`), and so
  does `Δ(x)/√x`, so a real-argument bound of `Δ` is checked at both ends of each unit interval.
- `σ*` is multiplicative with `σ*(p^a) = p^a + 1` for `a ≥ 1`, `σ*(n) ≤ σ(n)` with equality iff `n`
  is squarefree, and `σ*(n) = Σ_{d ∣ n} μ²(d)·…` is not an identity: `σ* = (id·μ²) ⋆ 1_{unitary}` is
  replaced by the multiplicative characterisation.
- `γ₁` satisfies `Σ_{n ≤ N} (log n)/n = ½ log² N + γ₁ + O(log N/N)`, and the constant term of
  `Σ_{n ≤ t} τ(n)/n` is `γ² − 2γ₁` (Layer 5.2).

**Checks.**

- `R(1) = 1 − 6/π² = 0.3920…`, `R(4) = 3 − 24/π² = 0.5682…`, `R(176) = 106 − 1056/π² = −0.9952…`
  (`Q(176) = 106 = (53/88)·176`: Rogers' `Q(x) ≥ (53/88) x` with equality only at `x = 176`,
  `moserMacLeod1966` line 9); `R(0.5) = −3/π²`.
- `Δ(1) = 1 − (2γ − 1) = 2 − 2γ = 0.8456…`, `Δ(4) = 8 − 4(log 4 + 2γ − 1) = 1.8371…` (values of
  AnalyticNumberTheoryPartI's `divisorError`); `Δ(1980) = 22.339 > 0.5 √1980 = 22.249` and
  `Δ(5460) = 31.391 > 0.4 √5460 = 29.557`, the sharpness witnesses of Layer 7.4; the witness
  `x = 5559` printed at `berkaneBordellesRamare2012` line 68 is not one, since `Δ(5559) = −0.705`.
- `σ*(12) = 1 + 3 + 4 + 12 = 20` while `σ(12) = 28`; `σ*(30) = σ(30) = 72`; `σ*(1) = 1`;
  `σ*(p^a) = p^a + 1`, so `σ*(8) = 9 ≠ σ(8) = 15`.
- `γ₁ = −0.0728158…`: the partial sums `Σ_{n ≤ N} (log n)/n − ½ log² N` at `N = 10^6` give
  `−0.07281…`; the sign convention is the one for which `ζ(1 + s) = 1/s + γ − γ₁ s + …`, and the
  Dirichlet-divisor constant `γ² − 2γ₁ = 0.4788…` is matched by `Σ_{n ≤ 10^6} τ(n)/n − ½ log² 10^6 −
  2γ log 10^6 = 0.47890…`, which excludes `γ² − γ₁ = 0.4060…` and `γ² + 2γ₁ = 0.1876…`.

### 0.6 Euler-product derivatives of a Dirichlet series at zero

For a multiplicative `h : ℕ → ℝ` (an `ArithmeticFunction ℝ` with `IsMultiplicative`) such that
`H̄(s) = Σ |h(n)| n^{−s}` converges at some real `s₀ < 0`, define the local factor
`localFactor h p s = Σ_{ν ≥ 0} h(p^ν) p^{−νs}` and prove, for `s ≥ s₀`:

- `H(s) = ∏_p localFactor h p s` (absolutely convergent; Mathlib's `eulerProduct_hasProd` after
  the real-power normalisation), with `localFactor h p s ≠ 0` whenever `H(s) ≠ 0`;
- `H'(s) = H(s) Σ_p (localFactor h p)'(s)/localFactor h p s` and
  `H''(s) = H(s) [ (Σ_p ℓ_p'(s)/ℓ_p(s))² + Σ_p ((ℓ_p''/ℓ_p) − (ℓ_p'/ℓ_p)²)(s) ]` with `ℓ_p = localFactor h p`,
  when `H(s) ≠ 0`, where `H'(s) = −Σ h(n) (log n) n^{−s}` and `H''(s) = Σ h(n) log² n · n^{−s}`
  (termwise differentiation under absolute convergence on `s > s₀`);
- the values at `s = 0`: `H(0) = Σ h(n)`, `H'(0) = −Σ h(n) log n`, `H''(0) = Σ h(n) log² n`, and
  `H̄(−1/3) = Σ |h(n)| n^{1/3}`, the quantities of Layer 5.1.

Route: `ramare1995` lines 367–379, p. 658 (how `h` is read off from a quotient of zeta factors and
why `H̄` converges at `−1/3` when `h` is supported on squarefree integers with `h(p) = O(1/p²)`), and the
termwise differentiation of absolutely convergent Dirichlet series. The comparison with Tau Ceti's
`localArithmeticFactor` is recorded: at `K = ℚ` and a prime ideal `(p)`, Tau Ceti's local factor is
the formal power series with coefficients `h(p^ν)`, and `localFactor h p s` is its evaluation at
`p^{−s}`. *Needs:* `EulerProduct.eulerProduct_hasProd`; `Real.summable_nat_rpow_inv`; termwise
derivative of a uniformly convergent series (`hasDerivAt_tsum`).

**Checks.**

- `h = δ` (the identity of convolution, `h(1) = 1`, `h(n) = 0` otherwise): every local factor is
  `1`, `H ≡ 1`, `H' = H'' = 0`, `H̄(−1/3) = 1`.
- `h(n) = μ(n)/n²` (so `H(s) = 1/ζ(s + 2)`): `H(0) = 6/π²`, `H̄(−1/3) = Σ μ²(n) n^{−5/3} =
  ζ(5/3)/ζ(10/3) = 1.8508…`, and `H'(0) = −Σ μ(n) log n/n² = −ζ'(2)/ζ(2)² = (6/π²)·0.56996… =
  0.34649…`: the sign is pinned by `H'(0) = H(0) Σ_p (log p/p²)/(1 − 1/p²) = (6/π²) Σ_p log p/(p² − 1)
  > 0`; a definition `H'(0) = +Σ h(n) log n` would give `−0.34649`.
- `h(n) = μ(n)/n` has `H̄(s) = Σ μ²(n) n^{−1−s}` divergent at `s = 0`: outside the hypothesis, and
  the formulas are not claimed; with `s₀ = 1/3` in place of `−1/3` the hypothesis is not the one of
  Layer 5.1.

### 0.7 Computational hypotheses

Each of the following is a `Prop` (a definition, not a theorem), with the range and the constant as
explicit data, stating exactly the finite computation a source performs. None is proved or
discharged in this roadmap.

- `MoebiusTableVerified c H`: `∀ x, 33 ≤ x → x ≤ H → |M(x)| ≤ c √x`. Instances used:
  `(0.571, 10^{12})` (`ramare2013aa` line 261, quoting Dress), `(0.571, 10^{14})` (Kotnik–van de
  Lune, uncertified) and `(0.571, 10^{16})` (`hurst2018` lines 420–426: the largest value of
  `|M(n)|/√n` for `n ≤ 10^{16}` is `0.571`, at `n = 7 766 842 813`).
- `MoebiusRangeVerified ε a b`: `∀ x, a ≤ x → x ≤ b → |M(x)| ≤ ε(x)`, for a bound function `ε`;
  the finite verifications "by direct inspection" of a linear or logarithmic bound on an initial
  range. Instances used: `(x ↦ x/80, 1119, 2087)` and `(x ↦ (x + 1)/80 + 11/2, 0, 1119)` (Layer
  1.2); `(x ↦ x/1036, 120 727, 10^8)` (Layer 1.2, `costaPereira1989` lines 797–803);
  `(x ↦ x/2360, 617 973, 1 815 918)` and `(x ↦ x/4345, 2 160 535, 6 155 337)` (Layer 1.3: above
  these ranges `0.571 √x` is below `x/2360`, resp. `x/4345`, since `(2360·0.571)² = 1 815 917.95…`
  and `(4345·0.571)² = 6 155 336.19…`); the initial ranges of Layers 1.4 and 1.6 as named there.
- `MoebiusDivRangeVerified ε a b`: the same for `|m(x)|`; `MoebiusLogRangeVerified ε a b`: the
  same for `|m̌(x) − 1|` (`ramare2015mc` line 554: `619 000 ≤ x ≤ 3·10^7`).
- `MoebiusSquareTailRangeVerified ε a b`: `∀ y, a ≤ y → y ≤ b → |Σ_{d > y} μ(d)/d²| ≤ ε(y)`.
  Instances used: `(y ↦ (0.0195 log y − 0.11)/(y log² y), 142 130, 463 421)` and
  `(y ↦ 1/(50 y log y), 59 600, 96 955)` (Layer 2.5, the ranges below the analytic arguments).
- `MoebiusAbsIntegralLE D₀ I`: `∫_1^{D₀} |M(t)| dt ≤ I`. Instances: `D₀ = 1 078 853`,
  `I = 58 909 800 + 54 647 032 = 113 556 832` and `D₀ = 464 402`, `I = 15 512 101 + 14 504 264 =
  30 016 365` (`ramare2015mc` lines 461–478, Lemmas 2.2–2.3, which compute the positive and negative
  parts separately; their sum bounds the integral of `|M|`).
- `RamareTransferComputations`: the conjunction of the finite computations of Ramaré 2013 that
  Layers 1.5 and 2.3 use, each as a field: (i) `|R₂*(D)| ≤ 1.80 √D log D` for `3 ≤ D ≤ 1.1·10^8`
  and `≤ 1.93 √D log D` for `1.1·10^8 ≤ D ≤ 1.8·10^9` (`ramare2013aa` lines 553–557, Lemma 6.3), where
  `R₂*` is the Selberg remainder of Layer 1.5; (ii) `|R₂*(D)| ≤ 0.0213 D` for `1.8·10^9 ≤ D ≤ 2.31·10^{12}`
  (the range in which the printed proof used the uncorrected `ψ̃` input, see Layer 1.5);
  (iii) `∫_1^{10^8} (ψ(t) − t) dt/t = −129.559 + O*(0.01)` (line 563–565, Lemma 6.4);
  (iv) `Σ_{k ≤ K} |Λ⋆Λ − Λ log + 2γ|(k)/k + |R₂*(K)|/K ≤ 0.03739 × 4345` for `K = 462 848`
  (lines 633–637, Lemma 7.1); (v) `|M(D₀) − M_2(μ, D₀)/log² D₀| ≤ 3.49` for `D₀ = 2 161 205` (lines
  710–724; the value is `−466 + 98 403.05…/212.757… = −3.4852…`, printed `−3.48`); (vi)
  `|Σ_{d ≤ D} μ(d) log² d| ≤ (0.0130 log D − 0.144) D` for `2 161 205 ≤ D ≤ 8 613 000` (lines
  677–678); (vii) `|M(D)| ≤ (0.0130/log D − 0.118/log² D) D` for `1 078 853 ≤ D ≤ 2 161 205` (line
  725); (viii) `|m(D)| ≤ 0.0260/log D − 0.118/log² D` for `60 298 ≤ D ≤ 1 078 853` (line 759);
  (ix) `|ψ(x) − x| ≤ 0.0065 x/log x` for `1 514 928 ≤ x ≤ 3 430 190` (lines 208–214, the
  computation in the proof of Lemma 4.2; above `3 430 190` the bound follows from
  `gap:psi-initial-range`, since `0.8 √x ≤ 0.0065 x/log x` exactly when `√x/log x ≥ 123.08`, and
  from `gap:psi-dusart-log` beyond `e^{22}`); (x) `∫_1^{1 078 853} |M(t)| dt/t ≤ 302` (line 754; the
  integral is `301.904…`). Theorem 1.1 of Layer 1.5 uses (i)–(vii) and (ix); Corollary 1.2 of
  Layer 2.3 uses (viii) and (x). The source's finite extensions of Lemmas 4.3 and 4.4 (lines
  215–249) are not fields: with the corrected `ψ̃` range the analytic argument of Layer 1.5 runs
  only for `D ≥ 2.31·10^{12}`, where `gap:psi-initial-range` and `gap:psi-relative-large` cover the
  arguments `√D` and `D` directly.
- `SquarefreeRangeVerified ε a b`: `∀ x, a ≤ x → x ≤ b → |R(x)| ≤ ε(x)` (real `x`), and its integer
  form `SquarefreeRangeVerifiedNat ε a b`: `∀ n : ℕ, a ≤ n → n ≤ b → |R(n)| ≤ ε(n)`; the finite
  ranges of the squarefree bounds of Layers 7.1 and 7.2 (with `ε(x) = c √x` for the rows of 7.1 and
  `ε(x) = 1.06 √(x/log x)` on `[1.0001, 1664]` for Corollary 3.4), the integer form for the rows
  that hold only at integers.
- `SquarefreeReciprocalRangeVerified c₁ c₂ a b`: `∀ N, a ≤ N → N ≤ b → (6/π²) log N + c₁ ≤
  Σ_{n ≤ N} μ²(n)/n ≤ (6/π²) log N + c₂`. Instances used: `(0.578, 1.166, 1, 14 831)` and
  `(1.040, 1.048, 1000, 4.58·10^8)` (Layer 7.1; `ramare2016mc` lines 462–466).
- `SquarefreeIntegralRangeVerified`: the conjunction of (a) for every real `D` with
  `1665 ≤ D ≤ 10^{11}`, `|Σ_{d ≤ D} μ²(d)/d − (6/π²)(log D + C₂)| ≤ 7/(20 √(D log D))`, and
  `≤ 0.073/√D` when moreover `D ≥ 3475` (the computation of `ramare2019bcp` Lemma 9.2, lines
  905–921, which compares the error with `D^{−3/4}` on `[1, 10^{11}]`, with the direct verifications
  of lines 969–972), and (b) `|Σ_{d ≤ D} μ²(d)/φ(d) − log D − c₀| ≤ 2.2 D^{−3/4}` for every real
  `1 ≤ D ≤ 2·10^9` (lines 981–985, Lemma 9.3), with `C₂`, `c₀` as in Layer 7.2.
- `DivisorRangeVerified c a b`: `∀ x, a ≤ x → x ≤ b → |Δ(x)| ≤ c √x` (real `x`, `Δ` the
  `divisorError` of AnalyticNumberTheoryPartI §3.23a), and its integer form
  `DivisorRangeVerifiedNat c a b`: `∀ n : ℕ, a ≤ n → n ≤ b → |Δ(n)| ≤ c √n`; the finite ranges of
  `berkaneBordellesRamare2012` Theorem 1.1 as restated in Layer 7.4.
- `DivisorPowerRangeVerified X Y`: for every real `x` with `2 ≤ x < Y`, `|Σ_{n ≤ x} τ(n)/n −
  ½ log² x − 2γ log x − γ² + 2γ₁| ≤ 1.001 x^{−1/2}`, and for every real `x` with `2 ≤ x < X`, the two
  error bounds of Cully-Hugill–Trudgian's Theorems 1–2 (Layer 7.5); the source's direct checks
  (`cullyHugillTrudgian2021` lines 197–199 and 240–242) are the instance `Y = 6·10^5` with
  `X = 5560²`, and Layer 7.5 uses `X = 7560²`.
- `PiltzRangeVerified k`: `∀ x, 6 ≤ x → x < x_k → Σ_{m ≤ x} τ_k(m) ≤ 2x (log x)^{k−1}`, with
  `x_k = exp((k − 1)(γ + 1/6)/log 2)` (Layer 7.5).
- `TotientRangeVerified`: `Σ_{n ≤ N} φ(n)/n ≤ (6/π²) N + log N + 1` for every natural `N` with
  `1 ≤ N ≤ 40` (Layer 7.7; implied by the check `Σ_{n ≤ N} φ(n)/n ≤ (6/π²)(N − 1) + log(N − 1) + 1`
  for `2 ≤ N ≤ 41` of `trevino2015ijnt` lines 229–236).
- `StieltjesGammaOneEnclosure`: `|γ₁ + 0.0728158454836767248605863758749013191377| ≤ 10^{−40}`
  (`berkaneBordellesRamare2012` line 189, (2.2), citing `kreminski2003`).
- `EulerGammaEnclosure d`: `|γ − 0.5772156649015328606| ≤ 10^{−d}` for the stated number of digits
  `d ≤ 18`. It follows from Mathlib's `Real.eulerMascheroniSeq_lt_eulerMascheroniConstant` and
  `Real.eulerMascheroniConstant_lt_eulerMascheroniSeq'` at the index `n = 10^d` (they enclose `γ`
  in `(H_n − log(n + 1), H_n − log n)`, of width `log(1 + 10^{−d})`) together with a decimal
  evaluation of `H_n` and `log n`; that evaluation is the finite computation the `Prop` records.
- `MeisselMertensConstantEnclosure`: `|B − 0.2614972128476427837554| ≤ 10^{−20}` for
  `B = mertensConstant ℚ`.
- `ArithmeticalConstantsEnclosure`: `c₀ = γ + Σ_p log p/(p(p − 1)) = 1.332 582 275 733… ± 10^{−12}`,
  `C₂ = γ + 2 Σ_p log p/(p² − 1) = 1.717 137 651 090 62… ± 10^{−14}` (`ramare2019bcp` lines 102–106
  and 124–128), `∏_{p > 2} (p − 1)²/(p(p − 2)) = 1.514 780 128 137… ± 10^{−12}` (the reciprocal of
  the twin-prime constant), and `H̄(−1/3) ≤ 251.08` for the perturbation `h` of Layer 7.3 (its value
  is `251.01…`).
- `SuperiorTableVerified k ε₁ ε₂ λ`: for every `ε ∈ [ε₁, ε₂]` and every superior `k`-highly
  composite number `N` associated to `ε` (Layer 9.2), `f_k(N) ≤ λ`, where
  `f_k(n) = log τ_k(n) · log log n/(log k · log n)`.
- `PrimorialTableVerified K`: for every natural `k` with `3 ≤ k ≤ K`, `k log θ(p_k) ≤ 1.3841 θ(p_k)`,
  where `p_k` is the `k`-th prime and `θ(p_k) = log N_k` is the logarithm of the `k`-th primorial
  `N_k = p₁ ⋯ p_k`; and for every natural `n` with `3 ≤ n < 30`, `ω(n) log log n ≤ 1.3841 log n`
  (Layer 9.1, with `K = 26`; `robin1983aa` lines 462–464 compute these values for `k ≤ 12` and
  check `n < 30` by hand).
- `SuperchampionTableVerified K₁ K₂`: for every `(σ, τ)`-superchampion `N` (an integer for which
  some `ε > 0` gives `σ(n)/(n τ(n)^ε) ≤ σ(N)/(N τ(N)^ε)` for every `n ≥ 1`, `nicolas2008` lines
  232–236), `σ(N)/N ≤ 2.59791 log log(3τ(N))` when `ω(N) < K₁` and `σ(N)/N ≤ e^γ log log(eτ(N)) +
  log log log(e^e τ(N)) + 0.9415` when `ω(N) < K₂` (Layer 9.3; the instance is `K₁ = 15 985`,
  `K₂ = 166 000`, the thresholds of the analytic Lemme 9, lines 437–443).
- `SelbergSmallValuesVerified`: `Σ_{k ≤ K} |Λ⋆Λ − Λ log + 2γ|(k)/k` as in (iv) above, kept as its own
  field of `RamareTransferComputations`.
- `PolyaVinogradovBound χ P`: `∀ N : ℕ, |Σ_{n ≤ N} χ(n)| ≤ P`, for a Dirichlet character `χ` and a
  real `P` (a hypothesis of Layer 4, never proved here).
- `ProgressionProductTableVerified q a C X₀ X₁`: `∀ x, X₀ ≤ x → x ≤ X₁ →
  ∏_{p ≤ x, p ≡ a (mod q)} (1 − 1/p)^{−1} ≤ C (log x)^{1/φ(q)}`, the finite range below the
  analytic range of Layer 8.3 for one modulus `q`, residue `a` and constant `C`.
- `MertensProductInitialRangeVerified`: for every real `x` with `1 < x < 24 284`,
  `1 − 1/log² x ≤ e^γ log x ∏_{p ≤ x}(1 − 1/p) ≤ 1 + 1/(2 log² x)` and
  `1 − 1/(2 log² x) ≤ ∏_{p ≤ x}(1 − 1/p)^{−1}/(e^γ log x) ≤ 1 + 1/log² x` (Layer 8.1).

Each `Prop` is monotone in its range and antitone in its constant, and the instances with the
larger ranges imply those with the smaller ones; these implications are proved (they are the only
theorems about the `Prop`s).

**Checks.**

- `MoebiusTableVerified c H` with `H < 33` is vacuous; with `c = 0.5`, `H = 10^{10}` it is false,
  since `|M(7 766 842 813)|/√(7 766 842 813) = 0.571…` exceeds `0.5` (`hurst2018` line 426); so the
  constant `0.571` is sharp over `[33, 10^{16}]` and the instance `(0.5, 10^{16})` is the
  negative control.
- `MoebiusAbsIntegralLE 1 0` is true (empty integral); `MoebiusAbsIntegralLE 2 0` is false since
  `|M(t)| = 1` on `[1, 2)`.
- `EulerGammaEnclosure 1` is a consequence of Mathlib's `1/2 < γ < 2/3` alone, since both ends lie
  within `0.0895 ≤ 10^{−1}` of `0.57721…`; `EulerGammaEnclosure 2` is not (`2/3 − 0.57721… =
  0.0894 > 10^{−2}`), and at `n = 100` the two `eulerMascheroniSeq` bounds give
  `0.572257 < γ < 0.582207`, within `0.004992 ≤ 10^{−2}` of `0.57721…`.
- Field (v) of `RamareTransferComputations` with the printed `3.48` in place of `3.49` is false:
  `|M(D₀) − M_2(μ, D₀)/log² D₀| = 3.4852… > 3.48`.
- `SquarefreeRangeVerified (x ↦ 0.02767 √x) 438 653 10^6` is false (as `x → 441 353⁻`,
  `R(x)/√x → −0.027772`), while `SquarefreeRangeVerifiedNat (n ↦ 0.02767 √n) 438 653 10^6` holds
  (the last integer `n` with `|R(n)| > 0.02767 √n` is `437 780`): the two forms differ.
- `StieltjesGammaOneEnclosure` with the opposite sign (`γ₁ = +0.0728…`) is excluded by the
  Dirichlet-divisor witness of Layer 0.5.

### Examples

- The three carriers at `x = 30`: `M(30) = −3`, `m(30) = Σ_{n ≤ 30} μ(n)/n = 0.0…` (small),
  `m̌(30) = 1.00302…`.
- The coprime carrier `m_2(10) = 34/105` and its decomposition through `m(10/a)/a` over `a ∣ 2^∞`.
- `h = μ/n²` as the model perturbation of Layer 0.6: `H(0) = 6/π²`, `H'(0) = (6/π²) Σ_p log p/(p² − 1)`.

### Dependencies

Mathlib `ArithmeticFunction`, `Chebyshev`, `AbelSummation`, `Harmonic`, `EulerProduct`; Tau Ceti
`AbelSummation`; AnalyticNumberTheoryPartI §3.22a (the harmonic remainder at integers) and §3.23a
(`divisorError`).

## Layer 1: the Mertens function `M(x)`

### 1.1 Meissel's, MacLeod's and Balazard's identities

Prove Meissel's identity `Σ_{n ≤ x} μ(n) ⌊x/n⌋ = 1` for every real `x ≥ 1` (`balazard2012` lines
81–84, (1)): sum `Σ_{d ∣ n} μ(d) = [n = 1]` (`moebius_mul_coe_zeta`) over `n ≤ x`. Prove Gram's
consequence: `x m(x) = 1 + Σ_{n ≤ x} μ(n) {x/n}` for natural `x`, hence `−1 + 2/x ≤ m(x) ≤ 1` and
`|m(x)| ≤ 1` for `x ≥ 1` (lines 92–109, (2); the general-`S` form is Layer 2.1).

Define the Bernoulli-type functions `bernoulliFun k x = Σ_{j ≤ k} B_j C(k, j) x^{k−j}` (Mathlib's
`Polynomial.bernoulli` evaluated at a real), `periodicBernoulli k x = bernoulliFun k {x}` and
`macleodPhi k x = (bernoulliFun k x − periodicBernoulli k x)/x^{k−1}` for `k ≥ 1`, `x > 0`
(`balazard2012` lines 146–149, (4)), so that `macleodPhi 1 x = ⌊x⌋`, `macleodPhi 2 x = x − 1 −
({x}² − {x})/x`. Prove MacLeod's identity: for every natural `k ≥ 1` and real `x ≥ 1`,
`Σ_{n ≤ x} μ(n) macleodPhi k (x/n) = k (1 − 1/x)^{k−1}` (lines 180–200, Proposition 1), by Möbius
inversion of the telescoping `Σ_{n ≤ x} k(1 − n/x)^{k−1} = x^{1−k}(b_k(x) − b_k({x}))` from
`b_k(X + 1) − b_k(X) = k X^{k−1}`.

Define `epsilonOne t = 1/3 − 1/(3t) + ((4/3){t}³ − (3/2){t}² + (1/2){t})/t² −
((1/3){t}⁴ − 2{t}³ + {t}²)/t³` (written `ε₁(t)`; `ramare2015mc` line 457, (2.3); `balazard2012` line 426), and prove
Balazard's Proposition 6: at every non-integer `t > 0`, `ε₁'(t) = (((2{t} − 1)t + {t} − {t}²)/t²)²`
(`balazard2012` lines 428–440), with `0 ≤ ε₁'(t) ≤ 1/t²` (line 458 of `ramare2015mc`; the upper bound
is Balazard's Proposition 2, lines 321–328: `|(2{t} − 1)t + {t} − {t}²| ≤ t`).

Prove Balazard's identity for `m`: for every real `x ≥ 1`,

    m(x) = M(x)/x + 4(1 − 1/x)²/x − 4(1 − 1/x)³/(3x) + (1/x) ∫_1^x M(x/t) ε₁'(t) dt

(`ramare2015mc` line 450, (2.1); `balazard2012` lines 454–470, from `(4/3)φ₃ − (1/3)φ₄ = x − 1 − ε₁`
and Proposition 1 at `k = 3, 4`), and the `k = 2` identity

    x m(x) − M(x) = 2 − 2/x + ∫_1^x M(x/t) ((2{t} − 1)t + {t} − {t}²) dt/t²

(`balazard2012` lines 318–320, (11), where `m₁(x) = m(x) − M(x)/x = ∫_1^x M(t) dt/t²`, lines 303–314).

Prove El Marraki's identities (`ramare2013aa` lines 736–746): for `D ≥ 1`,
`m(D) = M(D)/D + ∫_1^D M(t) dt/t²` (Abel summation) and `∫_1^D ⌊D/t⌋ M(t) dt/t = log D`
(from Meissel's identity integrated: `Σ_{n ≤ D} μ(n) ∫_n^D ⌊D/t⌋ dt/t` telescopes), hence

    m(D) = M(D)/D + (1/D) ∫_1^D (D/t − ⌊D/t⌋) M(t) dt/t + (log D)/D.

Prove Ramaré's weight passage (`ramare2013aa` lines 696–704, Lemma 8.1): for an arithmetic
function `f`, naturals `k ≥ 0`, and reals `D ≥ D₀ ≥ 1`, with `M_k(f, D) = Σ_{n ≤ D} f(n) log^k n`,

    M₀(f, D) = M_k(f, D)/log^k D + M₀(f, D₀) − M_k(f, D₀)/log^k D₀ − k ∫_{D₀}^D M_k(f, t) dt/(t log^{k+1} t),

by Abel summation against `1/log^k t` on `(D₀, D]`; for `k = 0` both sides are `M₀(f, D)` (the
integral has the factor `k = 0`), and `D₀ > 1` is needed for `k ≥ 1` so that `log D₀ ≠ 0`.

*Needs:* `ArithmeticFunction.moebius_mul_coe_zeta`; `Nat.floor` lemmas; `Polynomial.bernoulli`;
`sum_mul_eq_sub_sub_integral_mul`; Layer 0.1.

**Checks.**

- Meissel at `x = 1`: `μ(1)·1 = 1`; at `x = 2.5`: `1·2 + (−1)·1 = 1`; at `x = 6`:
  `6 − 3 − 2 + 0 − 1 + 1 = 1`.
- `bernoulliFun 2 x = x² − x + 1/6`, so `bernoulliFun 2 1 − bernoulliFun 2 0 = 0 = 2·0`, the
  difference identity `b_k(X + 1) − b_k(X) = k X^{k−1}` at `k = 2`, `X = 0`; with Mathlib's
  `bernoulli'` convention (`B₁ = +1/2`, polynomial `x² + x + 1/6`) the difference would be `2`, so the
  definition uses `Polynomial.bernoulli` (`B₁ = −1/2`).
- `periodicBernoulli 1 x = {x} − 1/2` (so `periodicBernoulli 1 2.5 = 0`) and `macleodPhi 1 x =
  (x − 1/2) − ({x} − 1/2) = ⌊x⌋`; `periodicBernoulli 2` is continuous at the integers (both one-sided
  values `1/6`), while `periodicBernoulli 1` jumps from `1/2` to `−1/2`; a definition with `x` in
  place of `{x}` would make `macleodPhi k` vanish identically.
- MacLeod at `k = 1`: `Σ μ(n) ⌊x/n⌋ = 1 = 1·(1 − 1/x)⁰`, Meissel; at `k = 2`, `x = 2`:
  `macleodPhi 2 2 = 1`, `macleodPhi 2 1 = 0`, left side `1·1 + (−1)·0 = 1`, right side `2(1 − 1/2) = 1`.
- `ε₁'` at `t = 1.5`: `{t} = 1/2`, `(2{t} − 1) t + {t} − {t}² = 1/4`, so `ε₁'(1.5) = (1/9)² = 1/81`,
  between `0` and `1/t² = 4/9`; at an integer `t = 2⁺`, `{t} = 0` gives `ε₁' = (−2/4)² = 1/4 = 1/t²`,
  the upper bound is attained.
- Balazard's identity at `x = 1`: `m(1) = 1`, `M(1)/1 = 1`, the two polynomial terms vanish
  (`1 − 1/x = 0`), the integral is over `[1, 1]`: `1 = 1`. At `x = 2`: `m(2) = 1/2`, `M(2)/2 = 0`,
  `4(1/2)²/2 − 4(1/2)³/6 = 1/2 − 1/12 = 5/12`, so the integral term must be `1/12`:
  `(1/2) ∫_1^2 M(2/t) ε₁'(t) dt` with `M(2/t) = 1` for `t > 1`, and `∫_1^2 ε₁'(t) dt = ε₁(2) − ε₁(1) =
  (1/3 − 1/6) − 0 = 1/6`, giving `1/12`: the identity balances.
- El Marraki's second identity at `D = 3`: `∫_1^{1.5} 2 dt/t + ∫_{1.5}^2 dt/t + ∫_2^3 0 = 2 log 1.5 +
  log(4/3) = log 3`.
- Lemma 8.1 at `f = μ`, `k = 2`, `D₀ = D`: both sides are `M(D)`; at `f = δ` (the convolution
  identity): `M_k(δ, D) = 0` for `k ≥ 1` and `M₀(δ, D) = 1`, so the identity reads
  `1 = 0 + 1 − 0 − 0`.

### 1.2 Elementary linear bounds

Prove MacLeod's bounds: `|M(x)| ≤ x/80` for every real `x ≥ 1119`, and `|M(x)| ≤ (x + 1)/80 + 11/2`
for every real `x ≥ 0` (`macleod1967` lines 24–29, (4)–(5), with the corrected (5) of
`macleod1969errata` lines 14–17; the bound is attained with equality at an integer below `1119`, so
the inequality is stated with `≤`). Route: MacLeod's analytic argument (`macleod1967` §§2–3: the
von Sterneck-type identity `Σ_{d ≤ x} μ(d) f(x/d) = 1` for floor combinations `f`, with the
elementary count `Q(x) ≤ ⌊x⌋ − ⌊x/4⌋ − ⌊x/9⌋ + ⌊x/36⌋` of squarefree integers), which gives
`x/80` beyond the initial range the source verifies
from Neubauer's table (lines 33–37); here the initial range is covered by
`MoebiusRangeVerified (x ↦ x/80) 1119 2087` together with `MoebiusTableVerified 0.571 10^{12}`,
since `0.571 √x ≤ x/80` exactly for `x ≥ (80·0.571)² = 2086.6…`. The all-`x` form is `x/80` beyond
`1119` and `MoebiusRangeVerified (x ↦ (x + 1)/80 + 11/2) 0 1119` below.

Prove Costa Pereira's bound `|M(x)| ≤ x/1036` for every real `x ≥ 120 727` (`costaPereira1989`
lines 793–803, Theorem 5 with Corollary 2 and Table III; the range `120 727 ≤ x < 120 865` and the
table range to `10^8` are checked by computation and are the `Prop` `MoebiusRangeVerified
(x ↦ x/1036) 120 727 10^8`). Route: Costa Pereira's elementary method, whose only analytic inputs are
explicit Chebyshev-type bounds `|ψ(x) − x| ≤ ε x` for `x ≥ x₀` of the shape of `gap:psi-relative-large`
and `gap:psi-initial-range`.

*Needs:* 1.1; `MoebiusRangeVerified`; `MoebiusTableVerified`; `gap:psi-relative-large`;
`gap:psi-initial-range`.

**Checks.**

- Threshold: `|M(1118)| = 14 > 1118/80 = 13.975` and `|M(1109)| = 15 > 13.86`, while `|M(x)| ≤ x/80`
  at every `x ∈ [1119, 1.2·10^6]` (the function `M` is constant on `[N, N + 1)` and `x/80`
  increases, so the integers suffice): `1119` is the least threshold. The maximum of
  `|M(x)| − x/80` over `[1, 1118]` is `5.5125 = 1/80 + 11/2`, at `x = 199` (`|M(199)| = 8`), which is
  exactly the slack of the all-`x` form.
- `x = 0`: `M(0) = 0 ≤ 1/80 + 11/2`; `x = 1`: `1 ≤ 2/80 + 11/2`.
- Non-example: `|M(x)| ≤ x/80 + 5` for all `x ≥ 0` is false, since `|M(x)| − x/80` reaches
  `5.5125 > 5` below `1119`.
- `x = 10^6`: `|M(10^6)| = 212 ≤ 10^6/1036 = 965`, and the sharper bounds of 1.3 give `230`.

### 1.3 Linear bounds from a Möbius table

Prove Dress–El Marraki's `|M(x)| ≤ x/2360` for every real `x ≥ 617 973` (`dressElMarraki1993`,
uncertified; quoted at `ramare2013aa` line 263, (4.6)) and Cohen–Dress–El Marraki's Theorem 1,
`|M(x)| ≤ x/4345` for every real `x ≥ 2 160 535` (`cohenDressElMarraki2007`, uncertified; quoted at
`ramare2013aa` line 265, (4.7); `elMarraki1995` lines 231–244 takes it as the input (1.1) of its
Théorème 1). Route: the elementary von Sterneck–MacLeod method of those papers (cited by locator)
beyond `10^{12}`; on `[617 973, 10^{12}]`, resp. `[2 160 535, 10^{12}]`, the finite inputs
`MoebiusTableVerified 0.571 10^{12}`, `MoebiusRangeVerified (x ↦ x/2360) 617 973 1 815 918` and
`MoebiusRangeVerified (x ↦ x/4345) 2 160 535 6 155 337` (Layer 0.7), the table covering each bound
from `(2360·0.571)² = 1 815 917.95…`, resp. `(4345·0.571)² = 6 155 336.19…`. Nothing from Layers 1.4
or 1.5 enters: both of them consume the `x/4345` bound.

Prove the tail statement: if `|M(x)| ≤ A x/log x` for every real `x ≥ X₁`, with `A, B > 0` and
`X₁ > 1`, then `|M(x)| ≤ x/B` for every real `x ≥ max(X₁, e^{AB})`, since `A x/log x ≤ x/B` exactly
when `log x ≥ AB`.

*Needs:* `MoebiusTableVerified`; `MoebiusRangeVerified`; the uncertified sources by locator.

**Checks.**

- Thresholds: `|M(617 972)| = 262 > 617 972/2360 = 261.85` and `|M(2 160 534)| = 498 > 2 160 534/4345
  = 497.25`, while `|M(617 973)| = 261` and `|M(2 160 535)| = 497` satisfy the bounds: both
  thresholds are exact, and the two finite ranges hold with maximal ratios `|M(x)|·2360/x = 0.99674`
  and `|M(x)|·4345/x = 0.99950`.
- The table alone gives `0.571 √x ≤ x/4345` iff `x ≥ 6 155 336.19…`, so `[2 160 535, 6 155 337]` is
  not covered by the table and is the direct verification.
- Tail statement: with `A = 0.0130` (1.5) and `B = 4345`, `e^{AB} = e^{56.5}`, far beyond `10^{12}`;
  with `A = 0.10917` the threshold is `e^{474}`: neither the table nor the logarithmic bounds cover
  `[10^{12}, e^{56.5}]`, which is why the sources' elementary method carries the range beyond the
  table.
- `x = 10^6`: `10^6/4345 = 230 ≥ |M(10^6)| = 212`.

### 1.4 Logarithmic decay

Prove El Marraki's bounds (`elMarraki1995` Théorème 2, (4.6): `|M(x)| < 0.10917 x/log x` for
`x ≥ 685`; its Corollaire: `|M(x)| ≤ 0.6437752 x/log x` for `x > 1`; Théorème 3:
`|M(x)| ≤ 362.7 x/log² x` for `x > 1`; the three are also quoted at `bordelles2015` lines 64–66),
under the hypotheses the proofs use: the `1/4345` bound of 1.3 for `x > 2 160 535` and an explicit
Chebyshev bound `|ψ(x) − x| ≤ 0.00776291 x/log x` for `x > e^{22}` (`elMarraki1995` lines 233–234,
the inputs (1.1) and (3.2) of the proof of Théorème 1), which `gap:psi-dusart-log` supplies with the
smaller constant `0.0065`. Route: El Marraki's Propositions 5, 7, 8 and 10, which turn a pair
`(|M(x)| ≤ A x/log^α x` on `[X₀, e^T]`, `|ψ(x) − x| ≤ B x/log^β x` on `[e^{22}, ∞))` into a bound
`|M(x)| ≤ A' x/log^{α+1} x` beyond `e^T` with `A'` computed from `(A, α, B, β)`, followed by a
direct verification on the initial range (`MoebiusRangeVerified`).

Prove Schoenfeld's bound `|M(x)| ≤ 2.9 x/log x` for `x > 1` (`schoenfeld1969` lines 52–57) as a
corollary of the Corollaire (`0.6437752 < 2.9`).

*Needs:* 1.3; `gap:psi-dusart-log`; `MoebiusRangeVerified`.

**Checks.**

- The maximum of `log x · |M(x)|/x` over `1 < x ≤ 3000` is `0.6437751…`, attained at `x = 5`
  (`|M(5)| = 2`, `2 log 5/5 = 0.64377516`): the Corollaire's constant is the supremum over `x > 1`
  to seven digits, so no smaller constant works for all `x > 1`.
- `x = 685`: `|M(685)| = 11 < 0.10917·685/log 685 = 11.453`, while `|M(684)| = 12 > 0.10917·684/log 684
  = 11.439`; no violation on `[685, 1.2·10^6]`: the threshold `685` is exact.
- `x = 2`: `362.7·2/log² 2 = 1509 ≥ 0`; `x = e`: `362.7 e ≥ |M(e)| = 0`.
- Non-example: `0.10917 x/log x` fails at `x = 13` (`|M(13)| = 3 > 0.553`), so the threshold is
  needed.

### 1.5 The transfer from explicit prime estimates to `M(x)`

**Identities.** Prove Selberg's identity in the form `μ · log² = μ ⋆ (Λ ⋆ Λ − Λ · log)`
(`ramare2013aa` lines 171–182, (3.3)), from `Λ = μ ⋆ log` (`ArithmeticFunction.vonMangoldt_mul_zeta`
and its Möbius inversion) and the derivation rule `(f ⋆ g)·log = (f·log) ⋆ g + f ⋆ (g·log)`.
Define the Selberg remainder `selbergRemainder D` (written `R₂*(D)`) by
`Σ_{d ≤ D} (Λ ⋆ Λ(d) − Λ(d) log d) = −2γ ⌊D⌋ + R₂*(D)` (lines 471–475, (6.1)), and prove
`Σ_{d ≤ y} (Λ ⋆ Λ − Λ log + 2γ)(d) = R₂*(y)` for `y ≥ 0`. Prove the hyperbola decomposition
(lines 587–598 and 625–632, (7.1)–(7.2)): for `D ≥ 1` and a natural `K ≥ 1`,

    Σ_{d ≤ D} μ(d) log² d = −2γ + Σ_{ℓ ≤ D/(K+1)} μ(ℓ) R₂*(D/ℓ) + Σ_{k ≤ K} (Λ ⋆ Λ − Λ log + 2γ)(k) M(D/k) − R₂*(K) M(D/(K+1)),

from `Σ_{d ≤ D} μ(d) log² d = Σ_{ℓ ≤ D} μ(ℓ) R₂*(D/ℓ) − 2γ` (the identity (3.4) of the source, line
189–197) by splitting at `ℓ ≤ D/(K + 1)` and using `R₂*(y) = Σ_{k ≤ y} (Λ ⋆ Λ − Λ log + 2γ)(k)` for
`y < K + 1`; the source's (7.1)–(7.2) are its rearrangement with the split at `D/K`, and the
boundary term is the one displayed here. Prove the Chebyshev decomposition of
`R₂*` (lines 482–550, Lemma 6.2): with `R(t) = ψ(t) − t`, `r(t) = ψ̃(t) − log t + γ` and
`R₄(D) = Σ_{d ≤ √D} Λ(d) R(D/d)` (line 349, (5.1)), for `D ≥ 1`,

    |R₂*(D)| ≤ 2D |r(√D)| + 2√D |R(√D)| + R(√D)² + |R(D)| log D + 1 + 2γ + 2|R₄(D)| + |∫_1^D R(t) dt/t|,

proved from `Σ_{d ≤ D} Λ(d) log d = ψ(D) log D − ∫_1^D ψ(t) dt/t` and Dirichlet's hyperbola formula
for `Σ_{d₁d₂ ≤ D} Λ(d₁)Λ(d₂)`.

**Parametric estimates.** Prove, with every constant a parameter:

- (Lemma 5.1, lines 357–383) if `ψ(t) ≤ c₁ t` for all `t ≥ 0`, then for real `D > 1` and
  `1 ≤ T ≤ √D`, `Σ_{d ≤ T} Λ(d)/(d log(D/d)) ≤ c₁/log D + c₁ log(log D/log(D/T))` (by Abel
  summation against `f(t) = 1/(t log(D/t))`, lines 364–382; `T ≤ √D` keeps `log(D/t) ≥ ½ log D > 0`).
- (Lemma 5.2's scheme, lines 404–414) if `|R(x)| ≤ a x/log x` for every `x ≥ x₂`, then for every
  real `D ≥ x₂²`, `|R₄(D)| ≤ a D Σ_{d ≤ √D} Λ(d)/(d log(D/d)) ≤ a c₁ (log 2 + 1/log D) D` (Lemma 5.1
  at `T = √D`, since every `D/d` with `d ≤ √D` is at least `√D ≥ x₂`); so `|R₄(D)| ≤ ρ₄ D` with
  `ρ₄ = a c₁ (log 2 + 1/log D₄)` for `D ≥ D₄ ≥ x₂²`. The source's further cases for
  `10^9 ≤ D ≤ x₂²` (lines 415–467) are not needed here: that range lies inside field (ii);
- (Lemma 6.1's scheme, lines 568–583) from Lemma 6.2 and bounds `|r(y)| ≤ ε₄(y)` for `y ≥ x₄`,
  `|R(y)| ≤ η(y) y` for `y ≥ x₂`, `|R₄(D)| ≤ ρ₄ D` for `D ≥ D₄` and `|∫_1^D R(t) dt/t| ≤ I₀ +
  ε₅ (D − 10^8)` for `D ≥ 10^8`: for every real `D ≥ max(x₄², x₂², D₄, 10^8)`, `|R₂*(D)| ≤ ρ(D) D`
  with
  `ρ(D) = 2ε₄(√D) + 2η(√D) + η(√D)² + η(D) log D + (1 + 2γ)/D + 2ρ₄ + (I₀ + ε₅(D − 10^8))/D`,
  term by term from the displayed bound of Lemma 6.2 (`2√D |R(√D)| ≤ 2η(√D) D`,
  `R(√D)² ≤ η(√D)² D`, `|R(D)| log D ≤ η(D) D log D`);
- (Lemma 7.2's scheme, lines 638–646) from `|R₂*(y)| ≤ ρ y` for `y ≥ K`, `|M(x)| ≤ x/A` for
  `x ≥ X_A`, `Σ_{d ≤ y} μ²(d)/d ≤ (6/π²) log y + 1.166` (Layer 7.1), and the small-values sum
  `S_K = Σ_{k ≤ K} |Λ⋆Λ − Λ log + 2γ|(k)/k + |R₂*(K)|/K`: for `D/K ≥ X_A`,
  `|Σ_{d ≤ D} μ(d) log² d|/D ≤ 2γ/D + ρ((6/π²) log(D/K) + 1.166) + S_K/A`;
- (Lemma 8.1 with `k = 2`, lines 696–724) for reals `α, β > 0`, `D₁ > 1` and `C₁ ≥ 0`: if
  `|M₂(μ, t)| ≤ (α log t − β) t` for every real `t ≥ D₁` and `|M(D₁) − M₂(μ, D₁)/log² D₁| ≤ C₁`, then
  for every real `D ≥ D₁`, by Lemma 8.1,
  `|M(D)| ≤ (α/log D − β/log² D) D + C₁ + 2 ∫_{D₁}^D (α log t − β) dt/log³ t`; and since
  `2α ∫_{D₁}^D dt/log² t = 2α D/log² D − 2α D₁/log² D₁ + 4α ∫_{D₁}^D dt/log³ t`, this is
  `(α/log D − (β − 2α)/log² D) D + (C₁ − 2α D₁/log² D₁) + (4α − 2β) ∫_{D₁}^D dt/log³ t`, so
  `|M(D)| ≤ (α/log D − (β − 2α)/log² D) D` for every `D ≥ D₁` under the absorption conditions
  `2β ≥ 4α` and `C₁ ≤ 2α D₁/log² D₁`. The source writes the boundary value with its sign, `−3.48`,
  inside the bound for `|M(D)|` (lines 716–717); the absolute value `+C₁` is the correct term, and
  it is absorbed.

**The instance.** Under `gap:psi-ratio-max` (`c₁ = 1.04`), `gap:psi-initial-range`,
`gap:psi-dusart-log`, `gap:psi-relative-large`, `gap:psi-tilde-explicit`, `MoebiusTableVerified
0.571 10^{12}`, the `1/4345` bound of 1.3 with `K = 462 848` (`462 848 × 2 160 535 ≤ 10^{12}`, line
646), the squarefree bound `Σ_{d ≤ D} μ²(d) = 6D/π² + O*(0.7√D)` of Layer 7.1 (lines 267–276, Lemma
4.6), and `RamareTransferComputations` (Layer 0.7, fields (i)–(vii) and (ix)), prove Ramaré's
Theorem 1.1: `|M(D)| ≤ (0.0130/log D − 0.118/log² D) D` for every real `D ≥ 1 078 853`
(`ramare2013aa` lines 50–51), through Lemma 7.2: `|Σ_{d ≤ D} μ(d) log² d| ≤ (0.0130 log D − 0.144) D`
for `D ≥ 2 161 205` (lines 680–684). The parameters of the schemes are: `η(y) = 0.0065/log y` for
`y ≥ x₂ = 1 514 928` (Lemma 4.2, lines 208–214: `gap:psi-dusart-log` beyond `e^{22}`,
`gap:psi-initial-range`'s `0.8 √y` on `[3 430 190, 10^{10}]`, where `0.8 √y ≤ 0.0065 y/log y`, and
field (ix) on `[1 514 928, 3 430 190]`); `a = 0.0065`, so `ρ₄ = 0.0065·1.04·(log 2 + 1/log D₄) = 0.004923`
for `D ≥ D₄ = 2.31·10^{12} ≥ x₂²`; `ε₄(y) = 0.0067/log y` for `y ≥ x₄ = 1 520 000`
(`gap:psi-tilde-explicit`); `I₀ = 129.569` (field (iii)) and `ε₅ = 0.000213`, valid for `t ≥ 10^8`
(`gap:psi-initial-range` on `[10^8, 10^{10}]`, where `0.8 √t ≤ 0.00008 t`, and
`gap:psi-relative-large` beyond). For every `D ≥ 2.31·10^{12}` the terms of `ρ(D)` are at most
`0.000941`, `0.000913`, `0.0065`, `2ρ₄ = 0.00985` and `0.000213` (their values at `D = 2.31·10^{12}`;
the first two decrease in `D` and the last stays below `ε₅`), the others below `10^{−6}`, with sum
`0.0185 ≤ 0.0213`: `|R₂*(D)| ≤ 0.0213 D` for `D ≥ 2.31·10^{12}`, field (ii)
covers `[1.8·10^9, 2.31·10^{12}]` and field (i) extends the bound down to `D ≥ 1 435 319`, as in the
source (line 583). The printed proof covered `D ≥ 1.3·10^9` analytically by invoking the `ψ̃`
bound at `√D ≥ 36 055` with the uncorrected range `x ≥ 23`, which is false (Checks); with the
corrected range `x ≥ 1 520 000` the analytic argument starts at `D = 2.31·10^{12}`, and the
source's finite extensions of Lemmas 4.3–4.4 are not used, since `η` already bounds `R` at the
arguments `√D ≥ 1 520 000` and `D`. Theorem 1.1 then follows from Lemma 7.2 by the Lemma 8.1
scheme with `α = 0.0130`, `β = 0.144`, `D₁ = 2 161 205` and `C₁ = 3.49` (field (v)): `2β = 0.288 ≥
4α = 0.052` and `C₁ = 3.49 ≤ 2α D₁/log² D₁ = 264.11`, so `β − 2α = 0.118`; field (vii) covers
`[1 078 853, 2 161 205]`.

Prove the weakened form `|M(D)| ≤ 0.013 D/log D` for `D ≥ 1 100 000` as a corollary.

*Needs:* 1.1 (Lemma 8.1); Layer 0.7 (`RamareTransferComputations`, `MoebiusTableVerified`);
1.3; Layer 7.1 (the `0.7√D` squarefree remainder and `(6/π²) log y + 1.166`);
`gap:psi-ratio-max`; `gap:psi-initial-range`; `gap:psi-dusart-log`; `gap:psi-relative-large`;
`gap:psi-tilde-explicit`; `ArithmeticFunction.vonMangoldt_mul_zeta`.

**Checks.**

- Selberg's identity at `n = 1`: left `μ(1) log² 1 = 0`; right `(Λ⋆Λ − Λ log)(1) = 0`. At `n = p`:
  left `−log² p`; right `μ(1)(Λ⋆Λ(p) − Λ(p) log p) + μ(p)(Λ⋆Λ(1) − 0) = (0 − log² p) + 0 = −log² p`.
  At `n = p²`: left `0`; right `(Λ⋆Λ(p²) − Λ(p²) log p²) + μ(p)(Λ⋆Λ(p) − Λ(p) log p) =
  (log² p − 2 log² p) − (−log² p) = 0`. At `n = pq`: left `log²(pq)`; right
  `(2 log p log q − 0) − (−log² p) − (−log² q) + 0 = (log p + log q)²`.
- `R₂*` at small `D`: `Σ_{d ≤ 1} = 0 = −2γ + R₂*(1)`, so `R₂*(1) = 2γ`; `R₂*(0.5) = 0`.
- The uncorrected input is false: at `x = 23`, `ψ̃(23) − log 23 + γ = 2.6113 − 2.5583 = 0.053`,
  while `0.0067/log 23 = 0.0021`; the fluctuation of `ψ̃` near `x ≈ 3.6·10^4` is of size `|ψ(x) − x|/x
  ≈ 10^{−3}`, five times `0.0067/log x`, so `ψ̃` cannot satisfy the printed bound at `√D` for
  `D ≈ 1.3·10^9`; this is why field (ii) exists.
- The final absorption: `0.144 − 2·0.0130 = 0.118`; with `β = 0.144` and no absorption the bound
  would read `0.0130/log D − 0.144/log² D`, which is smaller and not what Lemma 8.1 yields. The
  boundary value is `M(D₁) − M₂(μ, D₁)/log² D₁ = −466 + 98 403.05/212.757 = −3.4852` at
  `D₁ = 2 161 205`, so `C₁ = 3.48` would not be an upper bound for its absolute value, while
  `C₁ = 3.49` is, and is far below the absorption limit `264.11`.
- Lemma 5.1 at `D = e^4`, `T = e^2`, `c₁ = 1.04`: the bound is `1.04/4 + 1.04 log 2 = 0.981`, and the
  sum is `Σ_{d ≤ 7.39} Λ(d)/(d log(e^4/d))`, the terms `d = 2, 3, 4, 5, 7` giving
  `0.1048 + 0.1262 + 0.0663 + 0.1346 + 0.1353 = 0.567 ≤ 0.981`; the misprinted form with `c₁ log D`
  in place of `c₁/log D` would be `4.88`.
- Threshold: `|M(1 078 853)| = 349 ≤ (0.0130/log D − 0.118/log² D) D = 349.915` at `D = 1 078 853`,
  while `|M(1 078 852)| = 350 > 349.915`: the threshold of Theorem 1.1 is exact, and there is no
  violation on `[1 078 853, 2.2·10^6]`.

### 1.6 Coprime and semigroup variants

For a set `S` of primes excluding finitely many primes, with `w_S = excludedWeight S`, prove the
decomposition `M_S(x) = Σ_{a ≤ x, a ∈ ⟨Sᶜ⟩} M(x/a)` (Layer 0.2, from `1_{⟨S⟩} μ = g_S ⋆ μ`), hence
`|M_S(x)| ≤ Σ_{a ≤ x, a ∈ ⟨Sᶜ⟩} |M(x/a)|`, and the uniform bound `(1 + log(x/q)) |M_q(x)|/x ≤ q/φ(q)` for
`1 ≤ q < x` (the first row of Ramaré's Theorem 1.19, `ramare2015mc` lines 420–432).

Under the `Prop`s `MoebiusRangeVerified` of the source's direct verifications (it computes
`M_q(x)` on initial ranges of `x/q`), prove Ramaré's Theorems 1.18–1.19 for a natural `q ≥ 1` and
real `x > q`: `(φ(q)/q) log(x/q) |M_q(x)|/x ≤ 0.997` for `x/q > 1`, `≤ 0.429` for `x/q ≥ 490`,
`≤ 1/5` for `x/q ≥ 4536`, `≤ 0.0918` for `x/q ≥ 48 513` (lines 407–419), and
`(φ(q)/q)(1 + log(x/q)) |M_q(x)|/x ≤ 1`, `1/2` (`x/q ≥ 490`), `1/5` (`x/q ≥ 7100`), `39/400`
(`x/q ≥ 48 645`) (lines 420–432); in each, `φ(q)/q` may be replaced by `∏_{p ∣ q}(1 + 1/p)^{−1}`.
State the same bounds for `⟨S⟩` with `w_S` in place of `q/φ(q)` and `q = ∏_{p ∉ S} p` as the
threshold parameter. Route: the decomposition, the bound of 1.5 for `M` on `[x/a ≥ D₀]` and the
direct verification below.

State de Camargo's constants `0.3131, 0.2663, 0.2335, 0.1738` for `q = 2, 3, 5, 6` and `0.2102` for
`q ≥ 7`, uniformly in `x > q` (`deCamargo2025`, uncertified, cited by locator), as the same theorem
with those constants under its own direct-verification `Prop`.

*Needs:* 0.2; 1.5; `MoebiusRangeVerified`.

**Checks.**

- `q = 1`: `M_1 = M`, `φ(1)/1 = 1`, and the first row reads `log x |M(x)|/x ≤ 0.997` for `x > 1`;
  the maximum of `log x |M(x)|/x` over `1 < x ≤ 3000` is `0.6438 ≤ 0.997`.
- `q = 2`, `x = 3`: `M_2(3) = μ(1) + μ(3) = 0`; `x = 5`: `M_2(5) = 1 − 1 − 1 = −1`,
  `(1/2) log(5/2)·1/5 = 0.092 ≤ 0.997`.
- `S = ∅` (all primes excluded, `q` the product of all primes): `w_S` is infinite and the statement
  carries the hypothesis that finitely many primes are excluded; `S = ` all primes: `w_S = 1`,
  `q = 1`.

### Examples

- `M(10^6) = 212`, `M(10^5) = −48`, `M(10^4) = −23`, `M(1000) = 2`: the values against which every
  bound of this layer is tested at `D = 10^k`.
- The chain of 1.5 at `D = 10^{12}`: `(0.0130/27.63 − 0.118/763.5)·10^{12} = 3.16·10^8`, against
  the table value `|M(10^{12})| ≤ 0.571·10^6`.

### Dependencies

Layer 0; AnalyticNumberTheoryPartI §3.22a (harmonic remainder, qualitative); Layer 7.1 (the
squarefree remainder and the elementary bounds for `Σ μ²(d)/d`, which depend only on Layers 0, 1.2,
1.4, 2.5 and 5.1, none of which uses Layer 1.5); the
`ExplicitPrimeCounting` gaps `gap:psi-ratio-max`, `gap:psi-initial-range`, `gap:psi-dusart-log`,
`gap:psi-relative-large`, `gap:psi-tilde-explicit`.

## Layer 2: the logarithmic sum `m(x)`

### 2.1 The Gram–Tao bound and its mollification

Prove Tao's theorem: for every set `S` of primes and every real `x`,
`|Σ_{n ∈ ⟨S⟩, n ≤ x} μ(n)/n| ≤ 1`, i.e. `|m_S(x)| ≤ 1` (`tao2010` lines 111–116, Theorem 1.1, whose
proof is the Möbius inversion of the indicator of `⟨Sᶜ⟩` summed over `n ≤ x`, lines 117–135;
`granvilleRamare1996` Lemma 8.6 and `davenport1937` Lemma 1, both uncertified, for the modulus
form). Route: for natural `x`, `Σ_{n ≤ x, n ∈ ⟨Sᶜ⟩} 1 = x m_S(x) − Σ_{n ≤ x, n ∈ ⟨S⟩} μ(n){x/n}`,
where the left side lies in `[1, x]`, and Tao's bounds on the fractional-part sum (lines 117–140,
after reducing to the case `Σ_{n ∈ ⟨S⟩, n ≤ x} 1/n > 1`) give `|x m_S(x)| ≤ x`. Prove the sharp lower form
`−1 + 2/x ≤ m(x)` for natural `x ≥ 1` in the case `S = ` all primes (`balazard2012` line 108).

Prove Ramaré's mollified bound: for every natural `r ≥ 1`, real `ε ≥ 0` and real `x`,
`|Σ_{d ≤ x, (d, r) = 1} μ(d)/d^{1+ε}| ≤ 1 + ε` (`ramare2013facm` lines 21–27, Theorem 1.1), and
its lower form `−(11/15)(1 + ε) ≤ Σ_{d ≤ x, (d, r) = 1} μ(d)/d^{1+ε}` (lines 33–38). Route: the
source's Rankin-type modification of Gram's argument with the weight `d^{−ε}`; stated for `⟨S⟩`
with finitely many excluded primes, the modulus form being the instance.

*Needs:* Layer 0.2; `ArithmeticFunction.moebius_mul_coe_zeta`; `Nat.factoredNumbers`.

**Checks.**

- `S = ∅`: `⟨S⟩ = {1}`, `m_S(x) = 1` for `x ≥ 1`, equality in Tao's bound; `x < 1`: the sum is
  empty, `0 ≤ 1`.
- `S = {2}`: `m_S(x) = 1/2` for `x ≥ 2`; `S = {2, 3}`, `x = 6`: `1 − 1/2 − 1/3 + 1/6 = 1/3`.
- `S` all primes: `m(1) = 1` (equality), `m(5) = −1/30`, `m(13) = …`; the lower form at `x = 13`
  gives `m(13) ≥ −1 + 2/13 = −0.846`, far from the true `−0.0…`; the question of the sharp lower
  bound `−2323/30030` (`ramare2013facm` lines 46–51) is recorded as open and not planned.
- Mollified at `ε = 0`, `r = 1`: Tao's bound; at `ε = 1`: `|Σ μ(d)/d²| ≤ 2`, while the true
  supremum is `1` (the term `d = 1`); the bound `1 + ε` is not sharp for large `ε`, which is why the
  roadmap states it only as the source does.
- Non-example: the bound `|m_S(x)| ≤ 1` fails for the sum restricted to `n ≤ x` with `n` in an
  arbitrary set `A` not of the form `⟨S⟩`: `A = {1, 2, 3}` gives `1 − 1/2 − 1/3 = 1/6` fine, but
  `A = {1, 6}` gives `1 + 1/6 > 1`.

### 2.2 Balazard's conversion theorem

Prove Balazard's inequality: for every real `x ≥ 1`,
`|m(x)| ≤ |M(x)|/x + (1/x²) ∫_1^x |M(t)| dt + 8/(3x)` (`ramare2015mc` lines 91–95, Theorem 1.1;
`balazard2012` lines 444–448, Proposition 7, for `m₁ = m − M/x`), from Balazard's identity of 1.1
and `0 ≤ ε₁'(t) ≤ 1/t²`: `|∫_1^x M(x/t) ε₁'(t) dt| ≤ ∫_1^x |M(x/t)| dt/t² = (1/x) ∫_1^x |M(u)| du`,
and `|4(1 − 1/x)²/x − 4(1 − 1/x)³/(3x)| ≤ 8/(3x)`.

Prove El Marraki's inequality: for `D ≥ 1`,
`|m(D)| ≤ |M(D)|/D + (1/D) ∫_1^D |M(t)| dt/t + (log D)/D` (`ramare2013aa` lines 728–747,
Lemma 9.1), from the identities of 1.1.

Prove the derived theorem: if `|M(t)| ≤ ε(t) t` for all `t ∈ [t₀, D]` with `ε` nonincreasing and
`|M(t)| ≤ c√t` on `[33, t₀]`, then
`|m(D)| ≤ ε(D) + (1/D²)(∫_1^{33} |M(t)| dt + (2c/3)(t₀^{3/2} − 33^{3/2}) + ∫_{t₀}^D ε(t) t dt) + 8/(3D)`
(Balazard's route) and `|m(D)| ≤ ε(D) + (1/D)(∫_1^{t₀} |M(t)| dt/t + ∫_{t₀}^D ε(t) dt) + (log D)/D`
(El Marraki's route; `ramare2013aa` lines 750–759, proof of Corollary 1.2). The two routes differ
in the weight of the initial range: `1/D²` against `1/D`.

*Needs:* 1.1; Layer 0.1.

**Checks.**

- `x = 1`: `|m(1)| = 1 ≤ 1 + 0 + 8/3`; `x = 2`: `1/2 ≤ 0 + (1/4)·1 + 4/3`.
- El Marraki at `D = 2`: `1/2 ≤ 0 + (1/2) ∫_1^2 dt/t + (log 2)/2 = log 2 = 0.693`.
- The asymptotic consequence `limsup |m(x)| ≤ 2 limsup |M(x)/x|` (`balazard2012` lines 345–356):
  with `ε ≡ α` constant, Balazard's route gives `|m(D)| ≤ α + α/2 + O(1/D)` (the integral
  `(1/D²) ∫ α t dt = α/2`), so `limsup |m| ≤ 3α/2`; El Marraki's route gives `α + α + 0 = 2α`.
  Balazard's `3/2` is the sharper constant, matching `ramare2015mc` line 100–107.
- Non-example: a bound `|M(t)| ≤ ε(t) t` with `ε` increasing cannot be pulled out of the integral;
  the monotonicity hypothesis is needed for the displayed simplification, not for the identity.

### 2.3 Thresholded and decaying bounds for `m(x)`

Prove, under `MoebiusAbsIntegralLE 1 078 853 113 556 832`, the bound of 1.5
(`|M(D)| ≤ (0.0130/log D − 0.118/log² D) D` for `D ≥ 1 078 853`) and the `Prop`
`MoebiusDivRangeVerified (x ↦ 0.0144/log x − 0.1/log² x) 463 421 3·10^7` (the source checks
`619 000 ≤ x ≤ 3·10^7`, line 554, and the range down to `463 421` by the same computation),
Ramaré's Theorem 1.2:
`|m(x)| ≤ 0.0144/log x − 0.1/log² x` for every real `x ≥ 463 421` (`ramare2015mc` lines 116–119),
through Balazard's identity, Lemma 2.4 (the explicit integral `(log x/3) ∫ (0.0130/log u −
0.118/log² u) u du/(x − u)² + 58 909 800 log x/x²` is increasing to `0.0130(1 − log 2)/3`, lines
479–528) and the chain of lines 529–553.

Prove the simpler rows, each as the conjunction of Theorem 1.2 beyond `463 421` and the finite
verification `MoebiusDivRangeVerified` on `[x₀, 463 421]`:
`(log x)|m(x)| ≤ 1/12` for `x ≥ 687`, `1/20` for `x ≥ 3355`, `1/25` for `x ≥ 3470`, `1/40` for
`x ≥ 24 270`, `1/65` for `x ≥ 96 018`, `1/69` for `x ≥ 96 955`, `0.0144` for `x ≥ 463 421`; and
`|m(x)| ≤ 1` for `x ≥ 1`, `1/10` for `x ≥ 7`, `1/20` for `x ≥ 41`, `1/100` for `x ≥ 1419`
(`ramare2015mc` lines 120–152, Theorem 1.2 and Corollary 1.3, with three thresholds corrected: the
printed rows `1/20` from `1426`, `1/65` from `60 298` and `1/100` from `694` are false, see the
Checks; the printed rows `1/12`, `1/40`, `1/69` are sharp to the unit, and `1/25` holds from `3462`).

Prove Ramaré's 2013 corollary `|m(D)| ≤ 0.0260/log D − 0.118/log² D` for `D ≥ 60 298`
(`ramare2013aa` lines 56–57, Corollary 1.2) through El Marraki's route of 2.2 (lines 750–759): for
`D ≥ D₀ = 1 078 853`, Theorem 1.1 of 1.5 bounds `|M(D)|/D` and `|M(t)|` on `[D₀, D]`, and field (x)
of `RamareTransferComputations` bounds `∫_1^{D₀} |M(t)| dt/t ≤ 302`; field (viii) covers
`[60 298, 1 078 853]`. The `1/4345` bound of 1.3 does not enter, since it starts only at
`2 160 535 > D₀`. Prove its rounded forms
`|m(D)| ≤ 1/(40 log D) − 1/(10 log² D)` for `D ≥ 60 200` (`1/(40 log D)` alone from `24 270`) and
`|m(D)| ≤ 3/(100 log D) − 1/(10 log² D)` for `D ≥ 50 000` (`3/(100 log D)` alone from `11 815`)
(lines 60–65, Corollaries 1.3–1.4).

Prove Bordellès' decaying bounds `|m(x)| < 0.19/log x` for `x ≥ 33` and `|m(x)| < 546/log² x`
for `x > 1` (`bordelles2015` lines 76–77, Theorem 1), from El Marraki's `M`-bounds of 1.4 through
the conversion of 2.2 and a direct verification; and El Marraki's earlier `0.2185/log x` (`x ≥ 33`)
and `726/log² x` (`x > 1`) (`elMarraki1996`, uncertified; quoted at `bordelles2015` line 69) as
corollaries of Bordellès'.

*Needs:* 1.5; 1.4; 2.2; Layer 0.7 (`MoebiusAbsIntegralLE`, `MoebiusDivRangeVerified`,
`RamareTransferComputations` fields (viii) and (x)).

**Checks.**

- Computed thresholds (exact sums of `μ(n)/n`, checked against `M(10^3) = 2`, `M(10^4) = −23`,
  `M(10^5) = −48`, `M(10^6) = 212`): the last `x` with `|m(x)| > 1/100` is `x = 1418`
  (ten integers in `[1106, 1418]` violate it, the largest value `0.011657…` at `x = 1109`); the
  last `x` with `(log x)|m(x)| > 1/20` is `x = 3354` (`166` integers from `1426`, maximum
  `0.0648…` at `x = 2837`); the last with `(log x)|m(x)| > 1/65` is `x = 96 017`. The rows
  `1/12` (last violation `686`), `1/40` (`24 269`), `1/69` (`96 954`) are exact; the row `1/25` has
  its last violation at `3461`, below the printed threshold `3470`, so that threshold is valid and
  not sharp.
- `m(7) = −1/105`, `|m(7)| = 0.0095 ≤ 1/10`; `m(6) = 2/15 = 0.133 > 1/10`: the threshold `7` is
  exact. `m(41) = 0.02609 ≤ 1/20`; `m(40) = 0.0505 > 1/20`: exact.
- Theorem 1.2 at `x = 463 421`: `0.0144/13.046 − 0.1/170.2 = 0.0005162`, against the true
  `|m(463 421)| = 0.0005154`: the bound is nearly attained at its threshold.
- The 2013 corollary is verified without exception on `[60 298, 1.2·10^6]`; at `D = 60 298` its
  bound `0.001388` times `log D` is `0.01528 < 1/65`, but the bound increases with `D` and exceeds
  `1/65` from `D ≈ 66 900`, which is why the printed `1/65`-row could not follow from it.
- `x = 33`: `0.19/log 33 = 0.0543` and `|m(33)| = 0.0…`; at `x = 32`, `0.19/log 32 = 0.0548`:
  the source's threshold `33` is kept as printed.

### 2.4 Coprime and semigroup variants

For `S` excluding finitely many primes, with `w_S = excludedWeight S` and `q_S = ∏_{p ∉ S} p`, prove
the decomposition `m_S(x) = Σ_{a ≤ x, a ∈ ⟨Sᶜ⟩} m(x/a)/a` (Layer 0.2) and Ramaré's Lemma 1.9
`m_q(x) = Σ_{d ∣ q} (μ²(d)/d) Σ_{w ≤ √(x/d), w ∣ q^∞} m(x/(d w²))/w²` (`ramare2015mc` lines 248–274),
hence `|m_S(x)| ≤ w_S sup_{y ≤ x} |m(y)|`.

Prove Ramaré's Theorems 1.12–1.13 for natural `q ≥ 1` and real `x > q`:
`(φ(q)/q) log(x/q) |m_q(x)| ≤ 0.78` for `x/q > 1`, `≤ 5/16` for `x/q ≥ 687`, `≤ 17/125` for
`x/q ≥ 24 233` (lines 297–307), and `(φ(q)/q)(1 + log(x/q)) |m_q(x)| ≤ 1.694`, `1/2` (`x/q ≥ 296`),
`5/38` (`x/q ≥ 882`), `1/7` (`x/q ≥ 11 811`) (lines 314–325), in each `φ(q)/q` replaceable by
`∏_{p ∣ q}(1 + 1/p)^{−1}`; stated for `⟨S⟩` with `w_S` and `q_S`. Route: Lemma 1.9, the bounds of
2.3 on `m`, and the direct verifications on `x/q` as `MoebiusDivRangeVerified`. Prove the earlier
`|m_q(x)| ≤ 2 (q/φ(q))/log(x/q)` for `1 ≤ q < x` (`ramare2014aa` lines 74–81, Theorem 1.1) as a
corollary.

Prove Bordellès' complement: for naturals `k, m ≥ 1` and real `x ≥ k^m`,
`|m_k(x)| < (k/φ(k)) C_m/log²(e x k^{−m})` with `C_m = 1100(1 + 4e^{−1} √ζ(m + 1/2))²`
(`bordelles2015` lines 88–100, Theorem 2; `⌈C₁⌉ = 12 555`, `⌈C₁₀⌉ = 6723`).

State de Camargo's `|m_q(x)| ≤ 0.3055 (q/φ(q))/log(x/q)` (`deCamargo2025`, uncertified) as the
same theorem with that constant under its own direct-verification `Prop`.

*Needs:* 0.2; 2.3; `MoebiusDivRangeVerified`.

**Checks.**

- `q = 1`: Theorem 1.12 reads `(log x)|m(x)| ≤ 0.78` for `x > 1`, and the supremum of
  `(log x)|m(x)|` over `1 < x ≤ 4·10^5` is `log 2 = 0.693147`, approached as `x → 2⁻` (where
  `m = 1`) and not attained; beyond `2` the largest value is `0.5493`: consistent, with slack.
- `q = 2`, `x = 10`: `m_2(10) = 1 − 1/3 − 1/5 − 1/7 = 34/105`, and `(1/2) log 5 · 34/105 = 0.2606`,
  the value `≥ 0.260` recorded at `ramare2015mc` line 329–331; Lemma 1.9 gives
  `m_2(10) = m(10) + m(5)/2 + m(2)/4 + m(1)/8 = 19/210 − 1/60 + 1/8 + 1/8 = 34/105`.
- `C_m`: `1100(1 + (4/e)√ζ(3/2))² = 1100(1 + 1.4715·1.6162)² = 12 554.9`, so `⌈C₁⌉ = 12 555` as
  printed; a formula with `1/100` in place of `1100` would give `0.114`, not an integer part `12 555`.
- Non-example: `q` the product of all primes up to `x` gives `m_q(x) = 1` and `log(x/q) < 0`; the
  hypothesis `x > q` excludes it.

### 2.5 The tail of `Σ μ(d)/d²`

Prove that for every real `D ≥ 1`, `|Σ_{d > D} μ(d)/d²| ≤ 1/D` (`trevino2015jnt`, Claim 3.1,
uncertified), where `Σ_{d > D} μ(d)/d² = 6/π² − Σ_{d ≤ D} μ(d)/d²` (`hasSum_zeta_two` and
`Σ μ(d)/d² = 1/ζ(2)`). Route: Abel summation `Σ_{d > D} μ(d)/d² = −M(D)/D² + 2 ∫_D^∞ M(t) dt/t³`
with MacLeod's `|M(t)| ≤ t/80` for `t ≥ 1119` (1.2), which gives `3/(80 D) ≤ 1/D` for `D ≥ 1119`,
and the `Prop` `MoebiusRangeVerified` instance for `1 ≤ D < 1119`, where the trivial bound
`Σ_{d > D} 1/d²` does not suffice (it exceeds `1/D` whenever `{D}` is close to `1`).

Prove Moser–MacLeod's sharper form: for every real `D ≥ 2`, `|Σ_{d > D} μ(d)/d²| ≤ 1/(3D) +
8/(3D²)` (`moserMacLeod1966` (8), line 76, as restated at `trevino2015ijnt` lines 276–278). Route:
the same Abel summation with MacLeod's all-`x` bound `|M(t)| ≤ (t + 1)/80 + 11/2` of 1.2 gives
`|Σ_{d > D} μ(d)/d²| ≤ 3/(80 D) + 11.025/D²`, which is at most `1/(3D) + 8/(3D²)` exactly when
`D ≥ 28.25…`; on `[2, 29)` the tail is constant on each `[N, N + 1)` and the bound decreases, so the
27 inequalities `|6/π² − Σ_{d ≤ N} μ(d)/d²| ≤ 1/(3(N + 1)) + 8/(3(N + 1)²)`, `2 ≤ N ≤ 28`, finish it;
they are rational inequalities in `π²`, settled by Mathlib's `Real.pi_gt_d6` and `Real.pi_lt_d6`.
This form is the input of Layer 7.7.

*Needs:* 1.2; `hasSum_zeta_two`; `Real.pi_gt_d6`; `Real.pi_lt_d6`; Layer 0.7.

**Checks.**

- `D = 1`: `|6/π² − 1| = 0.392 ≤ 1`; `D = 1.9`: the same tail `0.392 ≤ 1/1.9 = 0.526`, while
  `Σ_{d ≥ 2} 1/d² = 0.645 > 0.526`: cancellation is needed, the trivial bound fails.
- `D = 2.5`: `|6/π² − 1 + 1/4| = 0.142 ≤ 0.4`.
- Checked for every `D ∈ [1, 5000]` at the worst point `D → (N + 1)⁻` of each unit interval:
  no violation; the Moser–MacLeod form likewise has no violation on `[2, 2.2·10^6]`.
- Moser–MacLeod form at `D = 2`: the tail is `6/π² − 1 + 1/4 = −0.14207`, and `1/6 + 8/12 = 0.8333`;
  at `D → 29⁻` the tail is `6/π² − Σ_{d ≤ 28} μ(d)/d²` and the bound `1/87 + 8/2523 = 0.01467`, while
  the Abel-summation bound there is `3/2320 + 11.025/841 = 0.01440`: the two arguments meet near
  `D = 28`.

### Examples

- `m(10^6) = 0.000200…`, against Theorem 1.2's `0.0144/13.8 − 0.1/190.9 = 0.000519` and the
  `1/69 log x` row's `0.00105`.
- `m_2(10) = 34/105` and `m_6(30) = Σ_{n ≤ 30, (n, 6) = 1} μ(n)/n = 1 − 1/5 − 1/7 − 1/11 − 1/13 −
  1/17 − 1/19 − 1/23 − 1/29 = 0.367…`, within `(6/φ(6))·0.78/log 5 = 1.45`.

### Dependencies

Layer 0; Layer 1 (1.1, 1.2, 1.4, 1.5); AnalyticNumberTheoryPartI §3.12 (qualitative coprime sums,
cited only).

## Layer 3: the logarithmically weighted sum `m̌(x)`

### 3.1 The identity and the integral bound

Prove Ramaré's identity (`ramare2015mc` lines 652–689, Lemma 3.2, with the sign of `h'` as
corrected by `ramare2015corr` lines 13–19, and with the middle coefficient as it follows from the
source's own intermediate identity, line 661, substituted into Balazard's identity): for `x ≥ 1`,

    m̌(x) − 1 = (6 − 8γ)/(3x) − (5 − 4γ)/x² + (6 − 4γ)/(3x⁴) + (1/x) ∫_1^x M(x/t) h'(t) dt

with `h'(t) = (3/2 − γ) ε₁'(t) − g'(t)`, `g(x) = −1/(12x) + x ε_{6,0}(x)` as defined at line 663
(`g(1) = 1/2 − γ`), and `|t² h'(t)| ≤ 7/4 − γ` (line 657, (3.6), from `0 ≤ t² ε₁' ≤ 1` and
`|t² g'(t)| ≤ 1/4`, line 688; the printed middle coefficient `6 − 4γ` gives the value `−2` at
`x = 1`, where the left side is `−1`, and `5 − 4γ` is the value the derivation yields). Hence
Theorem 1.4: for `x ≥ 1`,

    |m̌(x) − 1| ≤ ((7/4 − γ)/x²) ∫_1^x |M(t)| dt + 2/x

(lines 155–163). Route: Balazard's identity for `m` (1.1), the Euler–Maclaurin expansion of
`Σ_{n ≤ y} log(y/n)/n` with the Bernoulli-periodic remainder `ε_{6,0}` (lines 577–651, Lemma 3.1),
and the bound `|t² h'(t)| ≤ 7/4 − γ` at every non-integer `t > 0`, from `0 ≤ t² ε₁'(t) ≤ 1` (1.1)
and `|t² g'(t)| ≤ |{t}² − {t} + 1/12| + (1/6)/2 ≤ 1/4` (line 688, with `|B₂(v)| ≤ 1/6`). The
positivity `h' ≥ 0` of the source's (3.6), line 657, concerns the uncorrected sign
`(3/2 − γ) ε₁' + g'` and is not used: with the corrected sign only the two-sided bound holds, and
it is all Theorem 1.4 needs.

Prove the derived theorem: if `|M(t)| ≤ ε(t) t` on `[t₀, x]` with `ε` nonincreasing and
`∫_1^{t₀} |M(t)| dt ≤ I`, then `|m̌(x) − 1| ≤ (7/4 − γ)(I/x² + ∫_{t₀}^x ε(t) t dt/x²) + 2/x`.

*Needs:* 1.1; Layer 0.1; `Polynomial.bernoulli` (`B₂`, `B₄`); Layer 0.7 (`MoebiusAbsIntegralLE`).

**Checks.**

- `x = 1`: `m̌(1) − 1 = −1`; the polynomial part is `(6 − 8γ)/3 − (5 − 4γ) + (6 − 4γ)/3 = (2 − 5 + 2)
  + (−8/3 + 4 − 4/3)γ = −1`, and the integral over `[1, 1]` vanishes: the identity balances. With the
  printed `6 − 4γ` in the middle the value would be `−2`.
- `x = 2`: `m̌(2) − 1 = log 2 − 1 = −0.3069`; the polynomial part is `(6 − 8γ)/6 − (5 − 4γ)/4 +
  (6 − 4γ)/48 = 0.2304 − 0.6728 + 0.0769 = −0.3655`, so the integral term `(1/2) ∫_1^2 h'(t) dt`
  (`M(2/t) = 1` on `(1, 2)`) must equal `0.0586`, i.e. `∫_1^2 h' = 0.117`, inside the range
  `[−1/4, 7/4 − γ]·∫_1^2 dt/t² = [−0.125, 0.586]` allowed by the bound on `t² h'`.
- Two-term witness for the inequality: `x = 2`: `m̌(2) = log 2`, `|log 2 − 1| = 0.3069`;
  right side `(7/4 − γ)/4 · ∫_1^2 1 dt + 1 = 0.293 + 1 = 1.293`.
- `x = 30`: `|m̌(30) − 1| = 0.00302`; right side `(1.1728/900)·∫_1^{30} |M| + 2/30 ≥ 0.0667`.
- Non-example: the uncorrected sign of `h'` would give a coefficient `0.321` in the refined
  version instead of `0.310` (corrigendum line 18–19); the inequality with `7/4 − γ` is the same
  in both.

### 3.2 Thresholded bounds for `m̌(x)`

Under `MoebiusAbsIntegralLE 464 402 30 016 365` (Lemma 2.3 of the source) and the bound of 1.5,
prove the corrected Theorem 1.5: `|m̌(x) − 1| ≤ 0.00140/log x` for `x ≥ 9950`, and
`|m̌(x) − 1| log x ≤ 0.213` for `x ≥ 2`, `≤ 0.0203` for `x ≥ 16`, `≤ 1/396` for `x ≥ 3162`,
`≤ 1/714` for `x ≥ 9549` (`ramare2015corr` lines 20–31; the superseded `0.00257/log x` from `3846`
and `1/389` from `3155` of `ramare2015mc` lines 169–178 are not stated), with the first row's range
corrected from the printed `x ≥ 1` (line 28) to `x ≥ 2`: on `[1, 2)` the sum has the single term
`n = 1`, `m̌(x) = log x`, and `(1 − log x) log x` exceeds `0.213` on `(1.3602, 1.9984)` and reaches
`1/4` at `x = √e`; so `|m̌(x) − 1| log x ≤ 1/4` for every `x ≥ 1`, with equality at `√e`. And
Corollary 1.6:
`|m̌(x) − 1| ≤ 1` for `x ≥ 1`, `1/125` for `x ≥ 7`, `1/500` for `x ≥ 44`, `1/1250` for `x ≥ 222`
(`ramare2015mc` lines 179–190, unchanged by the corrigendum, line 32). Each row is the conjunction
of the analytic bound beyond the source's `D₀` and `MoebiusLogRangeVerified` on the initial range.

*Needs:* 3.1; 1.5; Layer 0.7.

**Checks.**

- On `[N, N + 1)`, `m̌(x) − 1 = a u − b` with `u = log x`, `a = m(N)`, `b = 1 + Σ_{n ≤ N} μ(n) log n/n`:
  this is monotone in `u`, so the rows of Corollary 1.6 are checked at `x = N` and `x → (N + 1)⁻`,
  while `|a u − b| u` can peak inside the interval at `u = b/(2a)`. All nine rows were checked up to
  `x = 10^6` at both ends of every unit interval and at that interior point: no violation (the
  last violating intervals start at `6`, `3161` and `9548` for `0.0203`, `1/396` and `1/714`, and at
  `6`, `43` and `221` for `1/125`, `1/500` and `1/1250`).
- `x = 7`: `|m̌(7) − 1| = 0.0045 ≤ 1/125 = 0.008`; `x = 6`: `|m̌(6) − 1| = 0.0251 > 1/125`: the
  threshold `7` is exact. `x = 16`: `(log 16)|m̌(16) − 1| ≤ 0.0203`.
- Non-example for the printed range: at `x = √e = 1.6487`, `m̌(x) = 1/2` and `|m̌(x) − 1| log x =
  (1/2)(1/2) = 0.25 > 0.213`, so the first row fails for `x ≥ 1`; at `x = 2`, `(1 − log 2) log 2 =
  0.21269 ≤ 0.213`, and on `[2, 3)`, where `m̌(x) − 1 = (u + log 2)/2 − 1` with `u = log x`, the
  function `(1 − (u + log 2)/2) u` has derivative `1 − (log 2)/2 − u < 0` for `u ≥ log 2`: the
  corrected row is nearly sharp at its threshold `x = 2`.
- Non-example: the superseded `0.00257/log x` for `x ≥ 3846` is weaker than the corrected
  `0.00140/log x` for `x ≥ 9950` beyond `9950`, but the corrected text does not assert the old
  range; stating the old row would claim a bound the author withdrew.

### 3.3 Coprime positivity and the mollified logarithmic sum

Prove Ramaré's Corollary 1.10 for every natural `q ≥ 1` and real `x ≥ 1`:
`0 ≤ m̌_q(x) ≤ 1.00303 q/φ(q)` (`ramare2015mc` lines 278–285), from Lemma 1.9 for `m̌` (lines
264–265: the same decomposition with `m̌` in place of `m`), the positivity `m̌(y) ≥ 0` for `y ≥ 1`
(Balazard's theorem `0 ≤ m̌(x) ≤ m̌(30)` for `x ≥ 1`, cited at lines 284–285 and proved here from
Theorem 1.4 beyond the source's `D₀` and `MoebiusLogRangeVerified` below), and `Σ_{a ∣ q^∞} 1/a = q/φ(q)`. Stated for
`⟨S⟩` with `w_S`. The optimal constant is `m̌(30) = 1.00302…`.

Prove Ramaré's mollified log-weighted bound: for `r ≥ 1` and `0 ≤ ε ≤ 1.38`,
`|Σ_{d ≤ x, (d, r) = 1} μ(d) log(x/d)/d^{1+ε}| ≤ 1.4 + 4.7ε + 3.3ε² + (1 + ε)(r^{1+ε}/φ_{1+ε}(r)) x^ε`
(`ramare2013facm` lines 54–62, Theorem 1.2), with `r^{1+ε}/φ_{1+ε}(r) = ∏_{p ∣ r}(1 − p^{−1−ε})^{−1}`.

*Needs:* 0.2; 2.1; 3.1 (`0 ≤ m̌(y) ≤ m̌(30)` for `y ≥ 1`, which is proved here from Theorem 1.4
beyond `x₀` and `MoebiusLogRangeVerified` below).

**Checks.**

- `q = 1`, `x = 30`: `m̌(30) = 1.00302… ≤ 1.00303`; `x = 1`: `m̌(1) = 0 ≥ 0`.
- `q = 2`, `x = 4`: `m̌_2(4) = log 4 − log(4/3)/3 = 1.386 − 0.096 = 1.290 ≤ 1.00303·2 = 2.006`.
- Mollified at `ε = 0`, `r = 1`: `|m̌(x)| ≤ 1.4 + 1 = 2.4`, weaker than `1.00303`; the theorem is
  stated for its uniformity in `ε`, not for its constant at `ε = 0`.

### Examples

- `m̌(x) − 1` at `x = 2, 3, 4, 5`: `−0.307, −0.104, −0.056, −0.019`.
- `m̌_2(10) = Σ_{n ≤ 10 odd} μ(n) log(10/n)/n = log 10 − log(10/3)/3 − log 2/5 − log(10/7)/7 =
  2.30259 − 0.40132 − 0.13863 − 0.05095 = 1.7117`, within `[0, 2.006]`.

### Dependencies

Layer 0; Layer 1 (1.1, 1.5); Layer 2 (2.1, 2.3).

## Layer 4: character twists

### 4.1 The logarithmic Möbius sum twisted by a Dirichlet character

Prove: for a natural `q ≥ 1`, a Dirichlet character `χ : DirichletCharacter ℂ q` with `χ ≠ 1`, a
real `P ≥ 0` with `PolyaVinogradovBound χ P` (`|Σ_{n ≤ N} χ(n)| ≤ P` for every natural `N`), and
every real `x ≥ 1`,

    |Σ_{n ≤ x} μ(n) χ(n)/n| ≤ (1 + 2P)/|L(1, χ)|,

and for every natural `k ≥ 1`,

    |Σ_{n ≤ x, (n, k) = 1} μ(n) χ(n)/n| ≤ (k/φ(k)) (1 + 2P)/|L(1, χ)|.

Route: `L(1, χ) = Σ_m χ(m)/m` (convergent, `DirichletCharacter.LFunction` at `1` for `χ ≠ 1`), the
convolution identity `Σ_{n ≤ x} (μχ)(n)/n · Σ_{m ≤ x/n} χ(m)/m = Σ_{N ≤ x} ((μχ) ⋆ χ)(N)/N = 1` (since
`(μχ) ⋆ χ = δ` for completely multiplicative `χ`), so that
`L(1, χ) Σ_{n ≤ x} μ(n)χ(n)/n = 1 + Σ_{n ≤ x} (μ(n)χ(n)/n) Σ_{m > x/n} χ(m)/m`, and the tail bound
`|Σ_{m > y} χ(m)/m| ≤ 2P/y` for `y > 0` by Abel summation from `PolyaVinogradovBound`; the sum over
`n ≤ x` of `(1/n)(2P n/x)` is `2P ⌊x⌋/x ≤ 2P`. The coprime form is the decomposition of Layer 0.2
(`bordelles2015` lines 606–625, proof of Proposition 3, Lemma 5: `Σ_{n ≤ x, (n,k)=1} μχ/n =
Σ_{a ≤ x, a ∣ k^∞} (χ(a)/a) Σ_{m ≤ x/a} μ(m)χ(m)/m`), with `|Σ_{a ∣ k^∞} χ(a)/a| ≤ k/φ(k)`. Prove
Bordellès' Proposition 3 as the instance: for `q ≥ 37` and a Pólya–Vinogradov bound with
`P ≤ √q log q − 1/2`, `|Σ_{n ≤ x, (n,k)=1} μ(n)χ(n)/n| ≤ (k/φ(k)) 2√q log q/|L(1, χ)|`
(`bordelles2015` lines 105–107; the underlying inequality is `bordelles2005`, page 4, uncertified).
No Pólya–Vinogradov inequality is proved here: `P` is a parameter, discharged by the character-sums
roadmap.

*Needs:* `DirichletCharacter.LFunction_apply_one_ne_zero`; `DirichletCharacter.LFunction`;
`sum_mul_eq_sub_sub_integral_mul`; Layer 0.2; `PolyaVinogradovBound`.

**Checks.**

- The trivial character is excluded: for `χ = 1` modulo `1`, `L(1, χ)` is the pole of `ζ` and the
  statement is not made; the hypothesis `χ ≠ 1` is used exactly to have `L(1, χ) ≠ 0` and the
  convergence of `Σ χ(m)/m`.
- `q = 3`, `χ` the nontrivial character, `P = 1` (the partial sums are `1, 0, 0, 1, 0, 0, …`):
  `L(1, χ) = π/(3√3) = 0.6046`, the bound is `3/0.6046 = 4.96`; the true values
  `Σ_{n ≤ x} μ(n)χ(n)/n` for `x = 1, 2, 5`: `1`, `1 + 1/2 = 3/2`, `3/2 + 1/5 = 1.7`, all below `4.96`.
- `q = 4`, `χ` the nontrivial character, `P = 1`, `L(1, χ) = π/4`: bound `3/(π/4) = 3.82`; the
  partial sums `1`, `1 + 1/3 = 4/3`, `4/3 − 1/5·… `: `μ(5)χ(5)/5 = −1/5`, giving `1.133`.
- Non-example: with `P` replaced by a bound valid only for `N ≤ x` the tail estimate fails; the
  hypothesis quantifies over all `N`.
- `k = 1`: `k/φ(k) = 1` and the coprime form is the plain one; `k = 6`: the factor is `3`.

### Examples

- `q = 5`, `χ` the quartic character with `χ(2) = i`: the partial sums are `1, 1 + i, 1, 0, 0, …`
  (period `5`), so `P = √2` is the least admissible value, and `|L(1, χ)| = |0.86481 + 0.20415 i| =
  0.88858`; the bound is `(1 + 2√2)/0.88858 = 4.309`.

### Dependencies

Layer 0.2; Mathlib `DirichletCharacter.LFunction`, `LFunction_apply_one_ne_zero`.

## Layer 5: the convolution method

### 5.1 The comparison theorem

Prove Ramaré's comparison lemma (`ramare1995` lines 339–354, Lemma 3.2, pp. 656–657): let
`g, h, k : ℕ → ℂ` with `g = h ⋆ k` (Dirichlet convolution), let `H(s) = Σ h(n) n^{−s}` and
`H̄(s) = Σ |h(n)| n^{−s}`, and assume `H̄(−1/3) < ∞` (so `H̄` converges on `s ≥ −1/3`) and that there
are constants `A, B, C, D` with `Σ_{n ≤ t} k(n) = A log² t + B log t + C + O*(D t^{−1/3})` for every
real `t > 0`. Then for every real `t > 0`,

    Σ_{n ≤ t} g(n) = u log² t + v log t + w + O*(D t^{−1/3} H̄(−1/3)),
    u = A H(0),  v = 2A H'(0) + B H(0),  w = A H''(0) + B H'(0) + C H(0),

with `H(0) = Σ h(n)`, `H'(0) = −Σ h(n) log n`, `H''(0) = Σ h(n) log² n` (Layer 0.6). Route:
`Σ_{n ≤ t} g(n) = Σ_m h(m) Σ_{n ≤ t/m} k(n)`, valid for all `m` because the hypothesis on `k` holds
for every `t/m > 0` (no truncation at `m ≤ t` is needed), then `log²(t/m) = log² t − 2 log t log m +
log² m` and `|h(m)| (t/m)^{−1/3}` summed is `t^{−1/3} H̄(−1/3)`.

Prove the weighted variant: under the same hypotheses, for `t > 0`,

    Σ_{n ≤ t} n g(n) = U t log t + V t + O*(2.5 D t^{2/3} H̄(−1/3)),
    U = 2A H(0),  V = 2A H'(0) + B H(0) − 2A H(0),

by Abel summation `Σ_{n ≤ t} n g(n) = t S(t) − ∫_0^t S(u) du` with `S(u) = Σ_{n ≤ u} g(n)`
(`S = 0` on `(0, 1)`, and the asymptotic for `S` holds on all of `(0, ∞)`): the polynomial part
integrates to `u(t log² t − 2t log t + 2t) + v(t log t − t) + wt`, which cancels against
`t(u log² t + v log t + w)` except for `2u t log t + (v − 2u) t`, and the remainder is
`t · D t^{−1/3} + ∫_0^t D u^{−1/3} du = 2.5 D t^{2/3}`, each times `H̄(−1/3)`. The constant term
`W` of the source's display is not asserted: it is below the error term.

*Needs:* Layer 0.6; `sum_mul_eq_sub_integral_mul₀`; absolute convergence of `Σ h(m) (t/m)^{−1/3}`.

**Checks.**

- `h = δ`: `g = k`, `H ≡ 1`, `H' = H'' = 0`, the conclusion is the hypothesis.
- Model witness for the weighted variant: `h = δ`, `k(n) = τ(n)/n` with `A = 1/2`, `B = 2γ`,
  `C = γ² − 2γ₁` (5.2): `Σ_{n ≤ t} n·τ(n)/n = Σ_{n ≤ t} τ(n) = t log t + (2γ − 1) t + O(t^{2/3})`,
  and the formula gives `U = 2·(1/2) = 1`, `V = 2γ − 1`: correct. With `U = A H(0) = 1/2` the
  leading term would be `(1/2) t log t`, which is false:
  `Σ_{n ≤ 10^6} τ(n) = 13 970 034 ≈ 10^6(13.8 + 0.15)`.
- Degenerate: `t ∈ (0, 1)`: both sides' sums are empty, and the hypothesis forces
  `|A log² t + B log t + C| ≤ D t^{−1/3}` there. The harmonic model satisfies it with `0.9105`
  (Layer 0.3), but the Dirichlet-divisor model needs `D = 1.641` there, not `1.16`: at `t = 0.01`,
  `|½ log² t + 2γ log t + γ² − 2γ₁| = 5.766 > 1.16·0.01^{−1/3} = 5.384`, and the supremum of
  `|½ log² t + 2γ log t + γ² − 2γ₁| t^{1/3}` over `(0, 1)` is `1.64082`, at `t = e^{−7.216} = 0.000735`
  (Layer 5.2).
- Non-example: if `H̄` converges only at `s = 0` (e.g. `h(n) = μ(n)/n`), the error term
  `t^{−1/3} H̄(−1/3)` is infinite and the theorem says nothing; the hypothesis at `−1/3` is what
  makes the remainder decay.

### 5.2 The models: the harmonic sum and the Dirichlet-divisor sum

Prove the harmonic model: `Σ_{n ≤ t} 1/n = log t + γ + O*(0.9105 t^{−1/3})` for every `t > 0`
(Layer 0.3; the model `k = 1/n` with `A = 0`, `B = 1`, `C = γ`, `D = 0.9105`).

Prove the Dirichlet-divisor model in three forms, with `P(t) = ½ log² t + 2γ log t + γ² − 2γ₁`:
for every real `t ≥ 1`,

    Σ_{n ≤ t} τ(n)/n = P(t) + O*(1.16 t^{−1/3});

for every real `t > 0`, `Σ_{n ≤ t} τ(n)/n = P(t) + O*(1.641 t^{−1/3})`, the form the comparison
theorem 5.1 consumes; and for every real `t ≥ 2`, `Σ_{n ≤ t} τ(n)/n = P(t) + O*(1.001 t^{−1/2})`,
the form Layer 7.5 consumes. The first is `berkaneBordellesRamare2012` Corollary 2.2 (lines
182–189), with two corrections: its printed constant term `γ² − γ₁` is a misprint for `γ² − 2γ₁`
(the Laurent expansion `ζ(1 + s)² = 1/s² + 2γ/s + (γ² − 2γ₁) + …` and the computed witness below
settle it; `trudgian2015` lines 426–432, Lemma 14, quotes the corollary with `γ² − 2γ₁`), and its
printed range "for all `t > 0`" holds only for `t ≥ 1`: on `(0, 1)` the sum is empty and `|P(t)|`
exceeds `1.16 t^{−1/3}` (Checks). The second follows from the first on `[1, ∞)` and from the
computation `sup_{0 < t < 1} |P(t)| t^{1/3} = 1.64082…` (at `t = e^{−7.216}`); the constant `1.641` is
Riesel–Vaughan's (`rieselVaughan1983` Lemma 1, uncertified; `cullyHugillTrudgian2021` lines 193–195
records that `1.16` must be replaced by it on `t > 0`, and `ramare1995` lines 356–360, Lemma 3.3
second part, cites the same lemma). The third is `cullyHugillTrudgian2021` (14), lines 197–199, by
Riesel–Vaughan's method (`rieselVaughan1983` pp. 48–50, uncertified) for `t ≥ 6·10^5` and the direct
check `DivisorPowerRangeVerified` (Layer 0.7) on `[2, 6·10^5)`. Route of the first: Abel summation
of `Σ_{n ≤ t} τ(n) = t log t + (2γ − 1)t + Δ(t)` against `1/n`, with
the explicit `|Δ(t)| ≤ 0.961 √t` (Layer 7.4) and the fine structure of `Δ` through Dirichlet's
hyperbola form `Δ(x) = −2 Σ_{n ≤ √x} ψ_B(x/n) + O*(1/2)` with `ψ_B(u) = {u} − 1/2`
(`berkaneBordellesRamare2012` lines 192–197, Lemma 3.1), which the source integrates to reach
`1.16 t^{−1/3}`; the constant term is identified as the limit `lim (Σ_{n ≤ t} τ(n)/n − ½ log² t −
2γ log t)`, computed from `Σ_{n ≤ t} τ(n)/n = Σ_{d ≤ t} (1/d) Σ_{m ≤ t/d} 1/m` and the harmonic
remainder twice, giving `γ² − 2γ₁` by the definition of `γ₁` in Layer 0.5.

When the constant is used numerically, `StieltjesGammaOneEnclosure` is the hypothesis
(`γ₁ = −0.0728158454836767248605863758749013191377 + O*(10^{−40})`, line 189, (2.2), citing
`kreminski2003`).

*Needs:* Layer 0.3; Layer 0.5 (`γ₁`); AnalyticNumberTheoryPartI §3.23a (`divisorError`); Layer 7.4
(`|Δ(t)| ≤ 0.961 √t` and the hyperbola form, which depend only on Layer 0 and that section);
`sum_mul_eq_sub_sub_integral_mul`; Layer 0.7 (`DivisorPowerRangeVerified`, for the third form).

**Checks.**

- `t = 10^6`, exact rational sum: `Σ_{n ≤ 10^6} τ(n)/n − ½ log² 10^6 − 2γ log 10^6 = 0.47890…`,
  against `γ² − 2γ₁ = 0.47881…` (difference `9·10^{−5}`, within `1.16·10^{−2}`) and against
  `γ² − γ₁ = 0.40599…` (difference `0.073`, outside); so the constant is `γ² − 2γ₁`.
- `t = 1`: left `1`, right `0 + 0 + 0.4788 + O*(1.16)`: `|1 − 0.4788| = 0.521 ≤ 1.16`.
- `t = 1/2`: left `0`, right `½ log² 2 − 2γ log 2 + 0.4788 = 0.240 − 0.800 + 0.479 = −0.081`,
  `|0.081| ≤ 1.641 · 2^{1/3} = 2.07`.
- Range of the first form: at `t = 0.01` the sum is empty and `|P(0.01)| = 10.604 − 5.316 + 0.479 =
  5.766`, above `1.16·0.01^{−1/3} = 5.384` and below `1.641·0.01^{−1/3} = 7.617`; on `[1, 6·10^5]` the
  largest value of `|Σ_{n ≤ t} τ(n)/n − P(t)| t^{1/3}` is `0.6542`, as `t → 2⁻`.
- Third form: the largest value of `|Σ_{n ≤ t} τ(n)/n − P(t)| √t` over `[2, 6·10^5]` is `0.8781`, as
  `t → 24⁻`, below `1.001`; the form is stated from `t = 2`, the range the source checks.
- `t = 2`: left `1 + 1 = 2`; right `0.240 + 0.800 + 0.479 = 1.519`, `|2 − 1.519| = 0.481 ≤ 1.16/1.26 = 0.92`.

### 5.3 The second model

Prove: for `h : ℕ → ℂ` and `c ∈ [1, 2]` with `H̄(c) < ∞`, and every real `t > 0`,

    Σ_{n ≤ t} Σ_{d ∣ n} (n/d) h(d) = (t²/2) H(2) + O*(t^c H̄(c)/2)

(`ramare2016mc` lines 539–543, Lemma 4.3 together with the scheme of Lemma 3.2 of `ramare1995`).
Route: the left side is `Σ_{d ≤ t} h(d) Σ_{q ≤ t/d} q`, Layer 0.4 gives `Σ_{q ≤ y} q = y²/2 +
O*(y^c/2)`, the main terms sum to `(t²/2)(H(2) − Σ_{d > t} h(d)/d²)`, and `|Σ_{d > t} h(d)/d²| ≤
t^{c−2} Σ_{d > t} |h(d)|/d^c` because `d^{c−2} ≤ t^{c−2}` for `d > t` and `c ≤ 2`; the two error
terms add to `(t^c/2) H̄(c)`.

*Needs:* Layer 0.4; absolute convergence.

**Checks.**

- `h = δ`: `Σ_{n ≤ t} n = t²/2 + O*(t^c/2)`, Layer 0.4 itself (`H(2) = 1 = H̄(c)`).
- `h(d) = μ(d)` (so `Σ_{d ∣ n} (n/d) μ(d) = φ(n)`), `c = 1`: `H̄(1) = Σ μ²(d)/d = ∞`, the theorem
  gives nothing; at `c = 2` the error `t² ζ(2)/(2ζ(4))` is not smaller than the main term
  `(3/π²) t²`: the model is useful only with `h` small (the sieve weights of the source,
  `h(d) = O(1/d²)`).
- `t = 1/2`: both sides `0` versus `H(2)/8 + O*(H̄(c)/2^{c+1})`, and `|H(2)|/8 ≤ H̄(2)/8 ≤ H̄(c)/2^{c+1}`
  holds for `c ≤ 2`.
- Non-example: `c = 3` is excluded by Layer 0.4's range and by `d^{c−2} ≤ t^{c−2}` failing.

### 5.4 Beyond the main term: the hyperbola refinement

Prove Akhilesh–Ramaré's Theorem 1.3: let `g : ℕ → ℂ` with `Σ g(m)/m` and `Σ g(m) (log m)/m`
convergent, `G♯(x) = Σ_{m > x} g(m)/m`, and `∫_1^∞ |G♯(t)| dt/t < ∞`; let `A₀ ≥ 1`. Then for
`D ≥ 1`,

    Σ_{n ≤ D} (g ⋆ 1)(n)/n = Σ_{m ≥ 1} (g(m)/m)(log(D/m) + γ) + ∫_{D/A₀}^∞ G♯(t) dt/t + O*(ℛ),
    ℛ = |Σ_{1 ≤ a ≤ A₀} G♯(D/a)/a + G♯(D/A₀)(log(A₀/⌊A₀⌋) − R₁(⌊A₀⌋))| + (6/(11D)) Σ_{m ≤ D/A₀} |g(m)|,

with `R₁` the harmonic remainder of Layer 0.3 (`akhileshRamare2017` lines 135–171, Theorem 1.3 and
Lemma 2.1), and Theorem 1.4: for every real `η ≥ 1`,

    Σ_{n ≤ D} (g ⋆ 1)(n)/n = Σ_{m ≥ 1} (g(m)/m)(log(D/m) + γ) + ∫_{ηD}^∞ G♯(t) dt/t
                              − (γ − log η) G♯(ηD) + O*((γ/D) Σ_{m ≤ ηD} |g(m)|),

with `6/11` in place of `γ` when `η = 1` (lines 202–224). Route: `Σ_{n ≤ D} (g ⋆ 1)(n)/n =
Σ_{m ≤ D} (g(m)/m) Σ_{k ≤ D/m} 1/k`, the harmonic remainder `R₁(D/m)` of Layer 0.3 with its two
constants, and the finite hyperbola splitting at `D/A₀` with Abel summation of `Σ_{m > D/A₀}
(g(m)/m) R₁(D/m)` through `G♯`.

*Needs:* Layer 0.3; Abel summation; Layer 0.1.

**Checks.**

- `g = δ`: `G♯ ≡ 0` for `x ≥ 1`, the main term is `log D + γ`, the integral vanishes, `ℛ = 6/(11D)`
  at `A₀ = 1`: the harmonic remainder of Layer 0.3 again.
- `g(m) = μ(m)` so that `g ⋆ 1 = δ`: left side `1`; `Σ μ(m)/m = 0` and `Σ μ(m) log m/m = −1`
  (convergent by the prime number theorem; qualitatively AnalyticNumberTheoryPartI §3.12 at
  `q = 1` and §3.9), so the main term is `(log D + γ)·0 + 1 = 1`, and the integral
  `∫_{D/A₀}^∞ G♯(t) dt/t = −∫_{D/A₀}^∞ m(t) dt/t` tends to `0`: the identity `1 = 1 + o(1) + O*(ℛ)`
  is consistent and shows the theorem creates no cancellation it is not given.
- `D < 1` is excluded by `D ≥ 1`; at `D = 1`, `A₀ = 1`: left `g(1)`, right
  `Σ (g(m)/m)(γ − log m) + ∫_1^∞ G♯ dt/t + O*(ℛ)`.
- Non-example: without `∫ |G♯(t)| dt/t < ∞` the integral term is undefined; `g(m) = 1` is excluded
  by the convergence hypothesis.

### 5.5 The explicit Levin–Fainleib theorem

Prove (Ramaré 2009, Theorem 21.1, `ramare2009`, uncertified): let `g ≥ 0` be multiplicative, and
suppose there are `κ ≥ 0`, `L ≥ 0`, `A ≥ 0` with

    |Σ_{p^ν ≤ Q} g(p^ν) log p^ν − κ log Q| ≤ L  for every real Q ≥ 1,
    Σ_p Σ_{ν ≥ 1, k ≥ 1} g(p^k) g(p^ν) log p^ν ≤ A.

Then for every real `D ≥ exp(2(L + A))`,

    Σ_{d ≤ D} g(d) = C (log D)^κ (1 + O*(B/log D)),
    B = 2(L + A)(1 + 2(κ + 1) e^{κ + 1}),  C = Γ(κ + 1)^{−1} ∏_p (Σ_{ν ≥ 0} g(p^ν)) (1 − 1/p)^κ,

the product converging absolutely under the two hypotheses. Route: the Levin–Fainleib differential
inequality `Σ_{d ≤ D} g(d) log d = Σ_{m ≤ D} g(m) Σ_{p^ν ≤ D/m, p ∤ m} g(p^ν) log p^ν`, the two
hypotheses bounding the inner sum by `κ log(D/m) + O*(L + A)`, and the resulting integral inequality
for `G(D) = Σ_{d ≤ D} g(d)` solved explicitly (the source's proof); the identification of `C`
through the Dirichlet series `Σ g(d) d^{−s} = ζ(s)^κ · (holomorphic at 1)` and `Γ(κ + 1)` as the
residue normalisation. This refines SieveMethodsAndPrimePatterns §1.1 (the asymptotic
`∼ (log z)^κ/(Γ(κ + 1) H_g)`) with explicit constants; the hypothesis on the prime sums is the
two-sided form of *HasLogSieveDimension* `(P, g, κ, L)` of its §0.5 extended to prime powers.

*Needs:* Layer 0.6 (the Euler product of `C`); Abel summation; `Real.Gamma`; the uncertified source
by locator.

**Checks.**

- `g(d) = μ²(d)/d`: `Σ_{p ≤ Q} (log p)/p = log Q + O(1)` (AnalyticNumberTheoryPartI §0.11), so
  `κ = 1`, `L` from AnalyticNumberTheoryPartI §0.8 (`E ± 1/(2 log x)` on `x ≥ 319`, one `E`) and a
  finite check below `319`, `A ≤ Σ_p (log p)/p² = 0.49309`; the conclusion is `Σ_{d ≤ D} μ²(d)/d =
  C log D (1 + O*(B/log D))` with `C = ∏_p (1 + 1/p)(1 − 1/p) = 6/π²`, consistent with Layer 7.1's
  `(6/π²) log D + O*(1.166)`.
- `κ = 0`, `g = δ`: `L = 0`, `A = 0`, `D ≥ 1`, `B = 0`, `C = 1`: `Σ_{d ≤ D} δ(d) = 1 = 1·(log D)⁰`.
- `g = μ²` (weights `1` on primes) is outside the hypotheses: `Σ_{p ≤ Q} log p − log Q = θ(Q) − log Q`
  is unbounded; the theorem is about `g(p)` of size `κ/p`.
- Non-example for the constant: `g(p) = 2/p` on squarefree `d` (`κ = 2`): `C = (1/2) ∏_p (1 + 2/p)(1 − 1/p)²`
  and the conclusion `Σ_{d ≤ D} g(d) ∼ C log² D` matches the leading term `(3/π²) log² D` of
  `Σ_{n ≤ D} 2^{ω(n)}/n` (Layer 7.6) only after the non-squarefree terms are added; the `Γ(3) = 2`
  is what makes the two consistent.

### Examples

- The model `g = h ⋆ (τ/n)` for `g = 2^ω/n`: the Dirichlet series of `2^ω/n` is
  `ζ(s + 1)²/ζ(2s + 2)`, so `h` is the coefficient sequence of `1/ζ(2s + 2)`: `h(n) = μ(√n)/n` on
  squares, `0` otherwise; `H(0) = 6/π²`, `u = (1/2)(6/π²) = 3/π²`, as in Layer 7.6.

### Dependencies

Layer 0 (0.3–0.6); Layer 7.4 (for 5.2, with no circularity: 7.4 depends on Layer 0 only);
AnalyticNumberTheoryPartI §§0.8, 0.11, 3.9, 3.12 (inputs of the Checks) and §3.23a (`divisorError`);
Layer 0.7 (`DivisorPowerRangeVerified`, for the third form of 5.2);
SieveMethodsAndPrimePatterns §§0.5, 1.1 (cited).

## Layer 6: upper bounds for nonnegative multiplicative functions

### 6.1 The product bound

Prove: for a nonnegative multiplicative `f` and real `y ≥ 1`,

    Σ_{n ≤ y} f(n)/n ≤ ∏_{p ≤ y} (1 + Σ_{1 ≤ m ≤ log y/log p} f(p^m)/p^m)
                    ≤ ∏_{p ≤ y} Σ_{m ≥ 0} f(p^m)/p^m   (when each local series converges),

and `Σ_{n ≤ y} f(n) ≤ y Σ_{n ≤ y} f(n)/n`. Route: every `n ≤ y` is `y`-smooth with each prime power
`p^m ∥ n` satisfying `p^m ≤ y`, so `f(n)/n` is a term of the expanded finite product
(`Nat.equivProdNatFactoredNumbers`, AnalyticNumberTheoryPartI §3.35a's indexing). The Rankin-type
bound `Σ_{n ≤ x} f(n) ≤ x exp(Σ_{p ≤ x} (f(p) − 1)/p)` for `f(p^ν) = f(p) ≥ 1` of
ProbabilisticAndMetricNumberTheory Layer 3 is the instance with `f = 1 ⋆ h`, `h(p) = f(p) − 1`.

*Needs:* `Nat.equivProdNatFactoredNumbers`; `Finset.prod_le_prod`; multiplicativity.

**Checks.**

- `f = 1`: `Σ_{n ≤ y} 1/n ≤ ∏_{p ≤ y} (1 + 1/p + … + p^{−⌊log y/log p⌋})`; at `y = 2`: `3/2 ≤ 3/2`,
  equality; at `y = 3`: `11/6 ≤ (3/2)(4/3) = 2`.
- `f = δ`: left `1`, right `1`.
- `f = τ`: `Σ_{n ≤ y} τ(n)/n ≤ ∏_{p ≤ y} (1 + 2/p + 3/p² + …) = ∏ (1 − 1/p)^{−2}`, which is
  `≈ e^{2γ} log² y = 3.17 log² y` against the true `½ log² y`: the bound is lossy by the factor
  `2 e^{2γ} ≈ 6.3`, which is why Layers 5 and 7 exist.
- Non-example: `f(n) = n`: `Σ_{n ≤ y} 1 = ⌊y⌋ ≤ ∏_{p ≤ y} (1 + ⌊log y/log p⌋)` holds (`y = 4`:
  `4 ≤ 3·2`), but the second product diverges: the first inequality always holds, the second needs
  convergence.

### 6.2 The Daboussi–Rivat tail bound

Prove (`daboussiRivat2001` lines 302–360, Lemma 4): let `z ≥ 2`, `f ≥ 0` multiplicative, `v_z` the
indicator of the `z`-smooth integers (`Nat.smoothNumbers`), `S = Σ_{p ≤ z} f(p) log p/(1 + f(p))`,
assume `S > 0`, and put `K(t) = log t − 1 + 1/t` for `t ≥ 1` (line 308). Then for every `y` with
`log y ≥ S`,

    Σ_{n > y} v_z(n) μ²(n) f(n) ≤ (∏_{p ≤ z} (1 + f(p))) exp(−(log y/log z) K(log y/S)),
    Σ_{n ≤ y} v_z(n) μ²(n) f(n) ≥ (∏_{p ≤ z} (1 + f(p))) (1 − exp(−(log y/log z) K(log y/S))),

and for `log y ≥ 7S` the simplified forms with `K` replaced by `K(7) = log 7 − 1 + 1/7` (lines
336–360). Route: Rankin's trick with the weight `(n/y)^α`, `Σ_n v_z(n) μ²(n) f(n) n^α =
∏_{p ≤ z} (1 + f(p) p^α)`, the convexity bound `log(1 + f(p) p^α) − log(1 + f(p)) ≤ α log p ·
f(p) p^α/(1 + f(p) p^α)`, and the optimisation in `α = (1/log z) log(log y/S)` that produces `K`.

*Needs:* `Nat.smoothNumbers`; 6.1; `Real.add_one_le_exp`; `Finset.prod` over `primesBelow`.

**Checks.**

- `f ≡ 0`: `S = 0`, excluded; the hypothesis `S > 0` is what makes `log(log y/S)` defined.
- `f ≡ 1`, `z = 2`: `S = log 2/2 = 0.3466`, `∏ = 2`; `y = 2` (`log y = 0.693 ≥ S`):
  `K(2) = log 2 − 1 + 1/2 = 0.193`, bound `2 exp(−1·0.193) = 1.65` for `Σ_{n > 2} v_2(n) μ²(n) = 0`
  (the `2`-smooth squarefree integers are `1, 2`): `0 ≤ 1.65`; the lower bound gives
  `Σ_{n ≤ 2} = 2 ≥ 2(1 − 0.825) = 0.35`.
- `K(1) = 0`: at `log y = S` the bound is `∏ (1 + f(p))`, the trivial bound.
- Non-example: `K(t) = log t − 1 − 1/t` would be negative on `[1, 3.6]` and make the "bound" exceed
  the trivial one; `K(t) = log t − 1 + 1/t ≥ 0` for `t ≥ 1` with `K(1) = 0` is the correct kernel.

### 6.3 The Hall–Tenenbaum theorem

Prove (`hallTenenbaum1988`, Theorem 01, uncertified): let `f ≥ 0` be multiplicative with
`Σ_{p ≤ y} f(p) log p ≤ A y` for every real `y ≥ 0` and `Σ_p Σ_{ν ≥ 2} f(p^ν) log p^ν/p^ν ≤ B`.
Then for every real `x > 1`,

    Σ_{n ≤ x} f(n) ≤ (A + B + 1) (x/log x) Σ_{n ≤ x} f(n)/n.

Route: `Σ_{n ≤ x} f(n) log n = Σ_{n ≤ x} f(n) Σ_{p^ν ∥ n} log p^ν = Σ_{m ≤ x} f(m) Σ_{p^ν ≤ x/m, p ∤ m}
f(p^ν) log p^ν ≤ Σ_{m ≤ x} f(m) (A x/m + B x/m)`, and `Σ_{n ≤ x} f(n) log(x/n) ≤ x Σ_{n ≤ x} f(n)/n`
from `log t ≤ t`; add. Mathlib's `θ(y) ≤ log 4 · y` gives `A = log 4` for `f = 1` on primes.

*Needs:* multiplicativity on coprime factors (`Nat.factorization`); `Real.log_le_sub_one_of_pos`;
`Chebyshev.theta_le_log4_mul_x` (for the instances).

**Checks.**

- `f = 1`: `A = log 4 = 1.386` (Mathlib), `B = Σ_p Σ_{ν ≥ 2} ν log p/p^ν = Σ_p log p (2p − 1)/(p(p − 1)²)
  = 1.98233` (the terms `p = 2, 3, 5, 7` already give `1.0397 + 0.4578 + 0.1811 + 0.1004 = 1.779`),
  so `A + B + 1 = 4.3686`; the conclusion `⌊x⌋ ≤ 4.3686 (x/log x) H_{⌊x⌋}` holds with room, since
  `H_{⌊x⌋} ≥ log x`.
- `x = 2`: `f(1) + f(2) ≤ (A + B + 1)(2/log 2)(1 + f(2)/2)`, and `A ≥ f(2) log 2/2` by the
  hypothesis at `y = 2`, so the right side is at least `(f(2) log 2/2 + 1)(2.885)(1 + f(2)/2) ≥ 1 + f(2)`.
- `x = 1` is excluded (`log 1 = 0`); as `x → 1⁺` the right side tends to `+∞`, the left is `f(1) = 1`.
- Non-example: `f(p) = p` violates `Σ_{p ≤ y} f(p) log p ≤ A y` for every fixed `A`; the theorem is
  about functions of mean growth at most constant on primes.

### 6.4 Bordellès' monotone-local-factor bound

Prove (`bordelles2012`, Theorem 4.28, uncertified): let `f ≥ 0` be multiplicative with
`f(p^{a+1}) ≥ f(p^a)` for every prime `p` and `a ≥ 0` (so `f(p) ≥ 1`), and `Σ_{a ≥ 1} f(p^a)/p^a < ∞`
for every `p`. Then for every real `x ≥ 1`,

    Σ_{n ≤ x} f(n) ≤ x ∏_{p ≤ x} (1 − 1/p)(1 + Σ_{a ≥ 1} f(p^a)/p^a).

Route: `g = f ⋆ μ` has `g(p^a) = f(p^a) − f(p^{a−1}) ≥ 0`, so `g ≥ 0` and
`Σ_{n ≤ x} f(n) = Σ_{d ≤ x} g(d) ⌊x/d⌋ ≤ x Σ_{d ≤ x} g(d)/d ≤ x ∏_{p ≤ x} (1 + Σ_{a ≥ 1} g(p^a)/p^a)`
(6.1), and `1 + Σ_{a ≥ 1} (f(p^a) − f(p^{a−1}))/p^a = (1 − 1/p)(1 + Σ_{a ≥ 1} f(p^a)/p^a)`.

*Needs:* 6.1; `ArithmeticFunction.coe_moebius_mul_coe_zeta`; `Nat.floor_le`.

**Checks.**

- `f = 1`: `Σ_{n ≤ x} 1 = ⌊x⌋ ≤ x ∏_{p ≤ x} (1 − 1/p)(1 + 1/(p − 1)) = x`.
- `f = τ`: the product is `∏_{p ≤ x} (1 − 1/p)^{−1} ≈ e^γ log x`, so the bound is `≈ 1.78 x log x`
  against the true `x log x + (2γ − 1)x`; at `x = 2`: `3 ≤ 2·(1/2)(1 + 2/2 + 3/4 + …) = 2·(1/2)·4 = 4`.
- `f = μ²` is excluded: `f(p²) = 0 < f(p) = 1`; and indeed the bound would read `Σ_{n ≤ x} μ²(n) ≤
  x ∏_{p ≤ x} (1 − 1/p)(1 + 1/p) = x ∏_{p ≤ x} (1 − 1/p²)`, which holds at `x = 1` (empty product,
  `1 ≤ 1`) but fails at `x = 2` (`2 > 2·(3/4) = 1.5`) and `x = 3` (`3 > 3·(3/4)(8/9) = 2`): the
  monotonicity hypothesis is needed.
- `x < 1`: excluded; `x = 1`: `1 ≤ 1`.

### 6.5 Coprimality removal (van Lint–Richert)

Prove: for a nonnegative multiplicative `f`, a natural `d ≥ 1` and real `x ≥ 1`,

    Σ_{n ≤ x} μ²(n) f(n) ≤ (∏_{p ∣ d} (1 + f(p))) Σ_{n ≤ x, (n, d) = 1} μ²(n) f(n) ≤ Σ_{n ≤ x·rad(d)} μ²(n) f(n),

where `rad(d) = ∏_{p ∣ d} p` (`vanLintRichert1965` lines 60–90, the inequality of its §1 between
`H(x)` and the coprime sum; the statement is the one the sieve literature attributes to that
paper). Route: write each squarefree `n ≤ x` uniquely as `n = a·m` with `a = gcd(n, d)` (a
squarefree divisor of `d`) and `(m, d) = 1`, `m ≤ x`; then `Σ_{n ≤ x} μ²(n) f(n) ≤ Σ_{a ∣ rad(d)} f(a)
Σ_{m ≤ x, (m, d) = 1} μ²(m) f(m)` and `Σ_{a ∣ rad(d)} f(a) = ∏_{p ∣ d} (1 + f(p))`; conversely every
product `a·m` with `a ∣ rad(d)` and `m ≤ x` coprime to `d` is a squarefree integer `≤ x·rad(d)`,
counted once.

*Needs:* `Nat.sum_divisors_filter_squarefree`; `Nat.Coprime`; multiplicativity.

**Checks.**

- `d = 1`: both inequalities are equalities (`rad(1) = 1`, the product is empty).
- `f = 1`, `d = 2`, `x = 4`: left `3` (`1, 2, 3`), middle `2·#{1, 3} = 4`, right `#{squarefree ≤ 8} = 6`:
  `3 ≤ 4 ≤ 6`.
- `d = 4`: `rad(4) = 2`, the same numbers as `d = 2`; with `x·d = 16` in place of `x·rad(d)` the
  right side would be `11`, still valid but weaker: the roadmap states the sharper `rad(d)`.
- Non-example: without `μ²` the first inequality fails: `f(2) = 1`, `f(4) = 5`, `f = 1` elsewhere,
  `d = 2`, `x = 4`: left `1 + 1 + 1 + 5 = 8`, middle `(1 + 1)·2 = 4`.

### Examples

- 6.5 at `d = 6` with `f = 1/φ`: `Σ_{n ≤ x} μ²(n)/φ(n) ≤ 3 Σ_{n ≤ x, (n, 6) = 1} μ²(n)/φ(n)`, the
  factor `∏_{p ∣ 6}(1 + 1/(p − 1)) = 2·(3/2) = 3`.
- 6.3 at `f = 2^ω`: `A = 2 log 4 = 2.7726`, `B = 2 Σ_p Σ_{ν ≥ 2} ν log p/p^ν = 3.9647`, so
  `A + B + 1 = 7.737`, and the conclusion compared with Layer 7.6: `(6/π²) x log x` against
  `(A + B + 1)(x/log x)((3/π²) log² x) = (3(A + B + 1)/π²) x log x`, lossy by the factor
  `(A + B + 1)/2 = 3.87`.

### Dependencies

Layer 0; AnalyticNumberTheoryPartI §3.35a; ProbabilisticAndMetricNumberTheory Layer 3 (cited);
Mathlib `Chebyshev.theta_le_log4_mul_x`, `Nat.smoothNumbers`.

## Layer 7: explicit averages of the classical functions

### 7.1 The squarefree remainder and the elementary bounds for `Σ μ²(n)/n`

Prove the elementary bounds `|R(x)| ≤ √x` for every real `x ≥ 1` and `|R(x)| < √x/2` for `x ≥ 8`
(`moserMacLeod1966` lines 12–14 and 81, (9): `|R(x)| < √x` for `x > 263` with the finite check
below), and Cohen–Dress' local bounds `|R(x + y) − R(x)| ≤ 1.6749 √y + 0.6212 x/y` and
`|R(x + y) − R(x)| ≤ 0.7343 y x^{−1/3} + 1.4327 x^{1/3}` for `x, y ≥ 1` (`cohenDress1988`,
uncertified). Route for the first: `Σ_{n ≤ x} μ²(n) = Σ_{d ≤ √x} μ(d) ⌊x/d²⌋`
(`Nat.sum_divisors_filter_squarefree`), so `R(x) = −x Σ_{d > √x} μ(d)/d² − Σ_{d ≤ √x} μ(d){x/d²}`,
bounded by `x · |Σ_{d > √x} μ(d)/d²| + √x ≤ 2√x` with the tail bound of Layer 2.5 at `D = √x`; the
constant `1` needs the fractional-part sum and the tail together, as in the source (Moser–MacLeod's
argument plus the finite check on `[1, 263]`), and the constant `1/2` for `x ≥ 8` likewise.

Under the `Prop`s `SquarefreeRangeVerified` and `SquarefreeRangeVerifiedNat` of the sources' finite
ranges (Layer 0.7), prove: `|R(x)| ≤ 0.1333 √x` for every real `x ≥ 1664` (Cohen–Dress, quoted at
`ramare2013aa` lines 272–275 and `cipu2015` line 624, Lemma 4.2(b)); `|R(n)| ≤ 0.02767 √n` for every
natural `n ≥ 438 653` (`cohenDressElMarraki2007`, uncertified; `cipu2015` line 626, Lemma 4.2(d)),
hence `|R(x)| ≤ 0.02767 √x + 6/π²` for every real `x ≥ 438 653`, since `R(x) = R(⌊x⌋) − 6{x}/π²`;
`−0.103229 √n ≤ R(n) ≤ 0.679091 √n` for every natural `n ≥ 1`, and `−0.15264 √x ≤ R(x) ≤ 0.679091 √x`
for every real `x ≥ 1` (`cipu2015` line 623, Lemma 4.2(a), printed for real `x ≥ 1`, which holds
only for the upper constant: the real infimum of `R(x)/√x` is `(1 − 12/π²)/√2 = −0.152632…`, approached
as `x → 2⁻`, and the integer minimum is `−0.1032287…` at `n = 380`); and `|R(x)| ≤ 0.7 √x` for
every real `x ≥ 1`, `0.5 √x` for every real `x ≥ 10` (`ramare2013aa` lines 267–276, Lemma 4.6).
The bound `|R(x)| ≤ 0.036438 √x` for `x ≥ 82 005` printed at `cipu2015` line 625, Lemma 4.2(c), and
at `ramare2019bcp` lines 87–88 is not stated: it fails at the integer `x = 351 115`. Route: the
identity above with the Möbius bounds of Layer 1 on the tail `Σ_{d > √x} μ(d)/d²` through `M`, and
the finite verifications.

Prove: for every real `N ≥ 1`, `(6/π²) log N + 0.578 ≤ Σ_{n ≤ N} μ²(n)/n ≤ (6/π²) log N + 1.166`,
and for `N ≥ 1000` the pair `(1.040, 1.048)` (`ramare2016mc` lines 450–466, Lemma 3.4), through
the identity `Σ_{n ≤ N} μ²(n)/n = (6/π²)(log N + 2 Σ_p log p/(p² − 1) + γ) + O*(3/N^{1/3})` for every
real `N > 0` (its proof, line 461), which is the comparison theorem of Layer 5.1 with the harmonic
model `k = 1/n` (`A = 0`, `B = 1`, `C = γ`, `D = 0.9105`) and `h(d²) = μ(d)/d²`, `h = 0` off squares
(the coefficients of `1/ζ(2s + 2)`): `H(0) = 6/π²`, `H'(0) = (12/π²) Σ_p log p/(p² − 1)`,
`H̄(−1/3) = Σ_d μ²(d) d^{−4/3} = ζ(4/3)/ζ(8/3) = 2.80405…`, so `v = H(0)`, `w = H'(0) + γ H(0) =
(6/π²) C₂ = 1.04389…` and the error is `0.9105·2.80405 = 2.553 ≤ 3`. The identity gives the first
pair for `N ≥ 14 831` and the second for `N ≥ 4.58·10^8`; the ranges below are the finite
verification `SquarefreeReciprocalRangeVerified` (Layer 0.7; the source's computation on
`[1000, 3·10^7]` is at lines 462–466).

*Needs:* `Nat.sum_divisors_filter_squarefree`; 2.5; Layer 1.4; 5.1; Layer 0.3; Layer 0.6; Layer 0.7
(`SquarefreeRangeVerified`, `SquarefreeRangeVerifiedNat`, `SquarefreeReciprocalRangeVerified`);
`hasSum_zeta_two`.

**Checks.**

- `R(1) = 0.392 ≤ 1`, `R(4) = 0.568 ≤ 2`, `R(176) = −0.995` with `√176 = 13.3`;
  `|R(x)| < √x/2` at `x = 8`: `R(8) = 6 − 4.863 = 1.137 ≤ 1.414`; at `x = 7`: `Q(7) = 6` (the
  squarefree `n ≤ 7` are `1, 2, 3, 5, 6, 7`) and `R(7) = 6 − 4.255 = 1.745 > √7/2 = 1.323`, which is why
  the threshold is `8`.
- Non-example for the real lower constant: at `x = 1.9`, `R(1.9) = 1 − 11.4/π² = −0.15506`, below
  `−0.103229 √1.9 = −0.14229` and above `−0.15264 √1.9 = −0.21040`: Cipu's lower constant holds
  only at integers.
- Non-example for the deleted row: `Q(351 115) = 213 474` (also by `Σ_{d ≤ √x} μ(d) ⌊x/d²⌋`), so
  `R(351 115) = 21.676 > 0.036438 √351 115 = 21.591`.
- Integer versus real `0.02767`: the last integer `n ≥ 438 653` with `|R(n)| > 0.02767 √n` would be
  `437 780`, below the threshold, so the integer row holds on `[438 653, 1.1·10^6]`; but
  `R(x)/√x → −0.027772` as `x → 441 353⁻`, so the real form needs the jump term `6/π²`.
- Non-example: `|R(x)| ≤ √x/2` fails at `x = 3` (`R(3) = 3 − 1.82 = 1.18 > 0.866`), so the
  threshold `8` is needed.
- `Σ μ²(n)/n`: `N = 1`: `1 ∈ [0.578, 1.166]`; `N = 2`: `3/2 ∈ [0.421 + 0.578, 0.421 + 1.166] =
  [0.999, 1.587]`; `N = 3`: `11/6 = 1.833 ∈ [0.668 + 0.578, 0.668 + 1.166] = [1.246, 1.834]`: the
  upper constant `1.166` is attained to three decimals at `N = 3` (`1.16546`); over `[1, 1.1·10^6]`
  the difference `Σ_{n ≤ N} μ²(n)/n − (6/π²) log N` ranges over `[0.57862, 1.16546]`, and over
  `[1.04049, 1.04708]` for `N ≥ 1000`.

### 7.2 The reciprocal squarefree sums `Σ μ²(n)/n` and `Σ μ²(n)/φ(n)`

Prove Ramaré's tail estimates (`ramare2019bcp` lines 769–779, Theorem 8.1): for every real
`y ≥ 142 130`, `|Σ_{d > y} μ(d)/d²| ≤ (0.0195 log y − 0.11)/(y log² y)`, and for every real
`y ≥ 59 600`, `|Σ_{d > y} μ(d)/d²| ≤ 1/(50 y log y)`. Route: the identity (Lemma 8.2, lines 781–810,
at `a(d) = μ(d)/d`) `Σ_{d > y} μ(d)/d² = ∫_y^∞ (m̌(t) − 1) dt/t² − (m̌(y) − 1)/y − m(y)/y`, then for the
first form the corrected `|m̌(t) − 1| ≤ 0.00140/log t` (`t ≥ 9950`, Layer 3.2) and Theorem 1.2's
`|m(y)| ≤ 0.0144/log y − 0.1/log² y` (`y ≥ 463 421`, Layer 2.3), which give
`(0.0172 log y − 0.1)/(y log² y)` for `y ≥ 463 421`; for the second, the rows `|m̌(t) − 1| log t ≤
1/714` (`t ≥ 9549`) and `(log y)|m(y)| ≤ 1/69` (`y ≥ 96 955`), which give `0.0173/(y log y)` for
`y ≥ 96 955`; and `MoebiusSquareTailRangeVerified` (Layer 0.7) below those ranges. The source's
proof (lines 836–846) uses the uncorrected `0.00252/log t − 0.0077/log² t` form of Ramaré 2015's
Theorem 1.5; the corrected form gives the same statement.

Prove Ramaré's Theorem 3.2 and Corollary 3.3: with `C₂ = γ + 2 Σ_p log p/(p² − 1)`
(`= 1.717 137 651 090 62…` under `ArithmeticalConstantsEnclosure`), for every real `D ≥ 1665`,
`Σ_{d ≤ D} μ²(d)/d = (6/π²)(log D + C₂) + O*(7/(20 √(D log D)))` (`ramare2019bcp` lines 200–206,
with `7/20` replaceable by `3/5`, and by `0.56`, for `D > 1`); and for every real `D ≥ 3475`,
`Σ_{d ≤ D} μ²(d)/d = (6/π²)(log D + C₂) + O*(0.073/√D)` (lines 210–214). Route: the hyperbola
refinement of Layer 5.4 (the source's Theorem 4.1, lines 233–250) with `g(k²) = μ(k)` and `g = 0` off
squares, so that `g ⋆ 1 = μ²`, `Σ g(m)/m = 6/π²`, the main term is `(6/π²)(log D + C₂)` and
`G♯(x) = Σ_{k > √x} μ(k)/k²`, which the tail estimate above bounds by `1/(25 √x log x)` for
`x ≥ 59 600²` (lines 921–970); the first conjunct of `SquarefreeIntegralRangeVerified` covers
`D ≤ 10^{11}` (Lemma 9.2 and the direct verifications, lines 905–921 and 969–972), and Corollary
3.3 follows from Theorem 3.2 for `D ≥ 10^{10}` (line 971).

Prove Ramaré's `|R(x)| ≤ 1.06 √(x/log x)` for every real `x > 1` (`ramare2019bcp` lines 219–225,
Corollary 3.4), by Abel summation from Theorem 3.2 for `x ≥ 10^{32}` (lines 1185–1236, with the
computed `∫_0^{1665} (Σ_{d ≤ t} μ²(d)/d − (6/π²)(log t + C₂)) dt = −0.7248…`, line 1227), by the rows
of 7.1 on `[1664, 10^{32}]` (`0.1333 √x ≤ 1.06 √(x/log x)` while `log x ≤ 63.2`, which covers
`[1664, 438 653]`, and `0.02767 √x + 6/π² ≤ 1.06 √(x/log x)` on `[438 653, 10^{32}]`), and by
`SquarefreeRangeVerified (x ↦ 1.06 √(x/log x)) 1.0001 1664` with the trivial bound on
`(1, 1.0001)`, where `x/log x ≥ 10^4`. The source covers `[82 005, 10^{32}]` with the deleted
`0.036438` row (lines 1237–1238); the two rows used here replace it.

Prove Ramaré's Theorem 3.1: with `c₀ = γ + Σ_p log p/(p(p − 1))` (`= 1.332 582 275 733…` under
`ArithmeticalConstantsEnclosure`), `Σ_{d ≤ D} μ²(d)/φ(d) = log D + c₀ + O*(11/(√D log D))` for
`D > 1` and `= log D + c₀ + O*(2.44/√D)` for `D ≥ 1` (lines 179–193; `61/25 = 2.44`), and
Akhilesh–Ramaré's Theorem 1.1 (`akhileshRamare2017` lines 78–104): for every natural `q ≥ 1` and
every real `D ≥ 1`,
`G_q(D) = Σ_{d ≤ D, (d, q) = 1} μ²(d)/φ(d) = (φ(q)/q)(log D + c(q)) + O*(5.9 j(q)/√D)` with
`c(q) = c₀ + Σ_{p ∣ q} (log p)/p` and `j(q) = ∏_{p ∣ q, p ≠ 2} (p^{3/2} + p − √p − 1)/(p^{3/2} − √p + 1)`
times `21/25` when `q` is even, together with its Theorem 1.2, `G₁(D) = log D + c₀ + O*(3.95/√D)`
for `D ≥ 1` and `O*(18.4/(√D log D))` for `D > 1` (lines 124–125). Route: for squarefree `d`,
`d/φ(d) = ∏_{p ∣ d} (1 + 1/(p − 1)) = Σ_{e ∣ d} μ²(e)/φ(e)`, so
`G_q(D) = Σ_{e ≤ D, (e, q) = 1} (μ²(e)/(e φ(e))) Σ_{m ≤ D/e, (m, qe) = 1} μ²(m)/m`; the inner sum is
Theorem 3.2 with coprimality (Layer 5.4's hyperbola refinement applied to `μ²(m)/m` restricted to
`(m, qe) = 1`, whose `G♯` is controlled by the Möbius bounds of Layer 2), the outer weight
`μ²(e)/(e φ(e))` has a tail `O(1/E)`, and the finite computation is the second conjunct of `SquarefreeIntegralRangeVerified` (Lemma 9.3 of
`ramare2019bcp`: the range `[1, 2·10^9]`, lines 981–985 and 1140–1145).

*Needs:* 5.1; 5.4; 7.1; Layer 2.3; Layer 3.2; Layer 0.7 (`MoebiusSquareTailRangeVerified`,
`SquarefreeIntegralRangeVerified`, `SquarefreeRangeVerified`); `Nat.totient`; `hasSum_zeta_two`.

**Checks.**

- `C₂ = γ + 2·0.56996 = 1.7171`, consistent with the Euler-product derivative of Layer 0.6
  (`H'(0)/H(0) = 2Σ_p log p/(p² − 1)` for `1/ζ(2s + 2)`); `c₀ = γ + 0.75537 = 1.3326`.
- `G₁(1) = 1`, `log 1 + c₀ = 1.3326`, `|1 − 1.3326| = 0.333 ≤ 2.44`; `G₁(2) = 2`, `log 2 + c₀ =
  2.026`, `|2 − 2.026| = 0.026 ≤ 1.725`.
- `j(1) = 1` (empty products); `j(2) = 21/25 = 0.84`; `j(6) = 0.84·(3^{1.5} + 3 − √3 − 1)/(3^{1.5}
  − √3 + 1) = 0.84·5.4641/4.4641 = 1.0282`; the table of `j⋆` (`akhileshRamare2017` lines 103–104)
  gives `5.2` for `q = 6` against `5.9·1.0282 = 6.07`: the table is sharper, as the source says.
- Non-example: the main term of `G_q` without the factor `φ(q)/q` fails at `q = 2`, `D = 2`:
  `G_2(2) = 1` versus `log 2 + c₀ + log 2/2 = 2.37`, while `(1/2)(2.37) = 1.19` is within `5.9·0.84/√2 = 3.5`.
- The error term of Theorem 3.2 is `7/(20 √(D log D))`: at `D = 1671`,
  `|Σ_{d ≤ D} μ²(d)/d − (6/π²)(log D + C₂)| = 0.002658`, below `0.35/√(1671 log 1671) = 0.003143` but
  above `0.35/(√1671 log 1671) = 0.001154`; the second reading fails at integers from `1665` to
  `441 389`, the first has no violation on `[1665, 1.1·10^6]`, nor do `3/5` and `0.56` on
  `(1, 1.1·10^6]`, nor Corollary 3.3 on `[3475, 1.1·10^6]`.
- Tail estimates: the last unit interval violating the first form starts at `142 126` and the last
  violating the second at `59 586`, so both thresholds are within a few units of sharp; at
  `y = 500 000` the first bound is `(0.0195·13.122 − 0.11)/(500 000·172.19) = 1.69·10^{−9}`.
- Corollary 3.4: no violation of `|R(x)| ≤ 1.06 √(x/log x)` on `(1, 1.1·10^6]`; at `x = 1664` the
  bound is `1.06 √(1664/7.417) = 15.88`, against `0.1333 √1664 = 5.44`, so the row `0.1333` implies it
  there, as used on `[1664, 438 653]`.

### 7.3 The Riesel–Vaughan sum

Prove (`rieselVaughan1983`, Lemma 2, uncertified): for every real `y ≥ 1`,

    Σ_{q ≤ y} μ²(q) ∏_{p ∣ q, p ≠ 2} 2/(p − 2) = (1/4) ∏_{p > 2} (p − 1)²/(p(p − 2)) · (log² y − A₃ log y − A₄ + O*(1088 y^{−1/3})),

where, with `H`, `H'`, `H''` the values at `0` of Layer 0.6 for the perturbation `h` below,
`u = H(0)/2`, `A₃ = −2H'(0)/H(0) − 4γ` and `A₄ = −H''(0)/H(0) − 4γ H'(0)/H(0) − 2(γ² − 2γ₁)` (that is,
`A₃ = −v/u` and `A₄ = −w/u` with `v`, `w` the coefficients of Layer 5.1); these formulas define the
two constants, and the decimals the source prints for them are not used.
Route: Layer 5.1 with the summand `g(q) = μ²(q) ∏_{p ∣ q, p ≠ 2} 2/(p − 2)`, the model
`k(n) = τ(n)/n` of 5.2 in its form for every `t > 0` (`A = 1/2`, `B = 2γ`, `C = γ² − 2γ₁`,
`D = 1.641`) and `h` the multiplicative function
with `Σ h(n) n^{−s} = Σ_q g(q) q^{−s} / ζ(s + 1)²`, whose local factors are
`(1 + 2/((p − 2) p^s))(1 − p^{−s−1})²` for `p > 2` and `(1 + 2^{−s})(1 − 2^{−s−1})²` at `p = 2`, so that
`h(p) = O(1/p²)` and `H̄(−1/3) < ∞` (Layer 0.6); then `u = H(0)/2 = (1/4) ∏_{p > 2} (p − 1)²/(p(p − 2))`
(`H(0) = (1/2) ∏_{p > 2} (p − 1)²/(p(p − 2))`). The error of 5.1 is `D H̄(−1/3) y^{−1/3}` and sits
inside the prefactor `u`, so the constant in the display is `D H̄(−1/3)/u`: with `D = 1.641`,
`H̄(−1/3) = ∏_p (1 + |h(p)| p^{1/3} + |h(p²)| p^{2/3} + |h(p³)| p) = 251.01…` (`h(p) = 4/(p(p − 2))`,
`h(p²) = 1/p² − 4/(p(p − 2))`, `h(p³) = 2/(p²(p − 2))` for `p > 2`, and `h(2) = 0`, `h(4) = −3/4`,
`h(8) = 1/4`) and `u = 0.378695…`, it is `1087.7…`, which the enclosure `H̄(−1/3) ≤ 251.07` of
`ArithmeticalConstantsEnclosure` rounds to `1088`, the source's constant. With the `t ≥ 1` constant
`1.16`, which the comparison theorem cannot use, it would be `768.9`.

*Needs:* 5.1; 5.2 (the form for `t > 0`); Layer 0.6; `ArithmeticalConstantsEnclosure`.

**Checks.**

- `y = 1`: left `g(1) = 1`; right `(1/4) ∏(…) (0 − 0 − A₄ + O*(1088))`: with `∏_{p > 2}
  (p − 1)²/(p(p − 2)) = ∏_{p > 2} (1 − 1/(p − 1)²)^{−1} = 1/0.6602 = 1.5147…` (the reciprocal of the
  twin-prime constant), the right side is `0.379(−A₄ + O*(1088))`, which contains `1` iff
  `|1/0.379 + A₄| ≤ 1088`: a sanity constraint on `A₄`, satisfied for `|A₄| ≤ 1085`.
- `y = 2`: left `1 + g(2) = 1 + 1 = 2` (the factor at `p = 2` is excluded, so `g(2) = 1`).
- Local factor at `p = 3`: `(1 + 2X)(1 − X/3)² = 1 + (4/3)X − (11/9)X² + (2/9)X³` in `X = 3^{−s}`, so
  `h(3) = 4/3 = 4/(3·1)`, `h(9) = 1/9 − 4/3`, `h(27) = 2/9`, matching the general formulas; the
  factor contributes `1 + (4/3)·3^{1/3} + (11/9)·3^{2/3} + (2/9)·3 = 6.132` to `H̄(−1/3)`.
- `y = 3`: left `2 + g(3) = 2 + 2 = 4` (`2/(3 − 2) = 2`).
- Non-example: with the factor `2/(p − 2)` at `p = 2` included the summand is undefined
  (division by zero); the product over `p ∣ q, p ≠ 2` is part of the definition.

### 7.4 The Dirichlet divisor remainder

Here `Δ` is AnalyticNumberTheoryPartI §3.23a's `divisorError`. Prove Dirichlet's hyperbola form
`|Δ(x) + 2 Σ_{n ≤ √x} ψ_B(x/n)| ≤ 1/2` for every real `x ≥ 1`, with `ψ_B(u) = {u} − 1/2`
(`berkaneBordellesRamare2012` lines 192–197, Lemma 3.1), from the hyperbola identity
`Σ_{n ≤ x} τ(n) = 2 Σ_{n ≤ √x} ⌊x/n⌋ − ⌊√x⌋²` of AnalyticNumberTheoryPartI §3.22b and the harmonic
remainder of Layer 0.3; it is the fractional-part form of that identity.

Under `DivisorRangeVerified` and `DivisorRangeVerifiedNat` for the source's finite ranges, prove
`|Δ(x)| ≤ 0.961 √x` for every real `x ≥ 1`, `|Δ(x)| ≤ 0.482 √x` for every real `x ≥ 1981`,
`|Δ(n)| ≤ 0.397 √n` for every natural `n ≥ 5560`, and `|Δ(x)| ≤ 0.397 √x` for every real `x ≥ 7560`
(`berkaneBordellesRamare2012` lines 64–68, Theorem 1.1, which prints the last row for `x ≥ 5560`
without distinguishing: for real `x` it fails just below `5760`, `6720` and `7560`, where `Δ`
drops by `τ(n)` at the integer, see the Checks). Each row sharpens the constant `1` of
§3.23a's `divisorRemainder.sqrt_bound`. The cubic bound `|Δ(x)| ≤ 0.764 x^{1/3} log x` for
`x ≥ 9995` (Theorem 1.2) is §3.23a's `divisorRemainder.cubic_bound` and is consumed as stated
there. Route: the hyperbola form, the Vinogradov-type bound of `Σ_{n ≤ √x} ψ_B(x/n)` by the Fourier
expansion of `ψ_B` and the exponential-sum estimate of the source (its §4, elementary van der
Corput on a short range), and the finite verification.

*Needs:* AnalyticNumberTheoryPartI §§3.22b and 3.23a; Layer 0.3; Layer 0.7 (`DivisorRangeVerified`,
`DivisorRangeVerifiedNat`); `Nat.card_divisors`; `Real.fract` lemmas; the source's exponential-sum
lemma (its Lemma 4.1), stated and proved here as part of this target.

**Checks.**

- `Δ(1) = 0.8456 ≤ 0.961`; `Δ(4) = 1.837 ≤ 1.922`; `Δ(2) = 3 − 2(0.693 + 0.154) = 1.305 ≤ 1.359`;
  the largest value of `|Δ(x)|/√x` over the reals of `[1, 2·10^5]` is `0.96069`, at `x = 12`
  (`Δ(12) = 3.3279`): the constant `0.961` is sharp to three decimals.
- The hyperbola form at `x = 4`: `Σ_{n ≤ 2} ψ_B(4/n) = ψ_B(4) + ψ_B(2) = −1/2 − 1/2 = −1`, so
  `Δ(4) + 2(−1) = −0.163`, `|−0.163| ≤ 1/2`.
- Sharpness: `Δ(1980) = 22.339 > 0.5 √1980 = 22.249`, and the last violation of `0.482` on
  `[1, 2·10^5]` is at `1980`, so `1981` is the exact threshold of the second row;
  `Δ(5460) = 31.391 > 0.4 √5460 = 29.557`, and the last integer violating `0.397` is `5460`. The
  printed witness `x = 5559` is not one: `Δ(5559) = −0.705`.
- Non-example for the real form of the last row: as `x → 7560⁻`, `Δ(x) → Σ_{n ≤ 7559} τ(n) −
  7560(log 7560 + 2γ − 1) = −35.037`, while `0.397 √7560 = 34.518`; likewise `−30.595` against
  `30.130` below `5760` and `−33.086` against `32.544` below `6720`; there is no real violation on
  `[7560, 2·10^5]`.
- The cubic bound of §3.23a holds at every real `x ∈ [5, 2·10^5]`, so its threshold `9995` is not
  sharp; the source's sharpness claim `|Δ(9994)| > 0.80·9994^{1/3} log 9994 = 158.7` (line 75) is
  false, since `Δ(9994) = −2.530` and `Δ(x) → −12.894` as `x → 9995⁻`.

### 7.5 Piltz divisor sums

Prove Bordellès' bound: for every natural `k ≥ 1` and real `x ≥ 1`,
`Σ_{m ≤ x} τ_k(m) ≤ x (log x + γ + 1/x)^{k−1}` (`bordelles2002`, Theorem 1, uncertified), by
induction on `k` from `τ_k = τ_{k−1} ⋆ 1`: `Σ_{m ≤ x} τ_k(m) = Σ_{d ≤ x} Σ_{m ≤ x/d} τ_{k−1}(m) ≤
Σ_{d ≤ x} (x/d)(log(x/d) + γ + d/x)^{k−2}`, and `log(x/d) + γ + d/x ≤ log x + γ + 1/x` for
`1 ≤ d ≤ x` (since `(d − 1)/x ≤ (d − 1)/d ≤ log d`), with `Σ_{d ≤ x} 1/d ≤ log x + γ + 1/x`
(Layer 0.3 in the form `H_{⌊x⌋} ≤ log ⌊x⌋ + γ + 1/(2⌊x⌋) ≤ log x + γ + 1/x`). Prove the second
form `Σ_{m ≤ x} τ_k(m) ≤ 2x (log x)^{k−1}` for every natural `k ≥ 1` and real `x ≥ 6`, under
`PiltzRangeVerified k` (`bordelles2002`, Theorem 2, uncertified; checked below for `k ≤ 7`,
`x ≤ 2000`): the first bound gives it once
`(1 + (γ + 1/x)/log x)^{k−1} ≤ 2`, which holds for `x ≥ x_k = exp((k − 1)(γ + 1/6)/log 2)`, and
the range `6 ≤ x < x_k` is the finite verification `PiltzRangeVerified k` (for `k ≤ 2` nothing
remains to check; for `k = 3` only `x` close to `6`, where the ratio is `2.003`).

Under the real-argument row `|Δ(t)| ≤ 0.397 √t` for every real `t ≥ 7560` of 7.4, the third form
`Σ_{n ≤ t} τ(n)/n = P(t) + O*(1.001 t^{−1/2})` (`t ≥ 2`) of 5.2, and the direct check
`DivisorPowerRangeVerified 7560² 6·10^5` (Layer 0.7), prove Cully-Hugill–Trudgian's Theorem 1: for
`x ≥ 2`,

    Σ_{n ≤ x} τ₄(n) = (1/6) x log³ x + (2γ − 1/2) x log² x + (6γ² − 4γ − 4γ₁ + 1) x log x
                     + (4γ³ − 6γ² + 4γ − 12γγ₁ + 4γ₁ + 2γ₂ − 1) x + O*(4.48 x^{3/4} log x)

(lines 62–71 and 230–242, (18); the coefficients `C₃`, `C₄` involve the first two Stieltjes
constants `γ₁`, `γ₂`, the latter defined as `γ₁` is, with `Σ_{n ≤ N} log² n/n − (1/3) log³ N`),
hence `Σ_{n ≤ x} τ₄(n) ≤ (1/3) x log³ x` for `x ≥ 193`; and Theorem 2: for `x ≥ 2`,

    Σ_{n ≤ x} τ(n)² = π^{−2} x log³ x + D₂ x log² x + D₃ x log x + D₄ x + O*(9.73 x^{3/4} log x + 0.73 √x),

with `D₂ = 0.745…`, `D₃ = 0.824…`, `D₄ = 0.461…` the Laurent coefficients of `ζ(s)⁴/ζ(2s)` at `1`
given by the source's (19) (lines 125–135), hence `Σ_{n ≤ x} τ(n)² ≤ (1/4) x log³ x` for `x ≥ 433`
and `≤ x log³ x` for `x ≥ 7`. Route: `τ₄ = τ ⋆ τ` through the hyperbola method with `Δ` on both
factors (the source's (13)–(17), lines 140–226), where `Δ` is evaluated at real arguments
`t ≥ x₀` in the partial summations for `S₂` and `S₃`; the error constant is
`F₁ = 2c + 6α + 2α/log x₀` (line 239) with `c = 1.001` from the third form of 5.2 and `α = 0.397`.
The source takes `x₀ = 5560`, where the real-argument bound fails just below `5760`, `6720` and
`7560` (7.4); with `x₀ = 7560` the analytic argument covers `x ≥ 7560²`, `F₁ = 2.002 + 2.382 +
0.794/8.931 = 4.473 ≤ 4.48`, and the direct check runs over `2 ≤ x < 7560²` in place of the
source's `2 ≤ x < 5560²` (lines 240–242). Theorem 2 follows from Theorem 1 through `τ² = τ₄ ⋆ h`
with `Σ h(n) n^{−s} = 1/ζ(2s)` (lines 249–292): the error is `F₁ H*(3/4) x^{3/4} log x +
(1 − C₄) x^{1/2}` with `H*(3/4) = ζ(3/2)/ζ(3) = 2.1732`, and `4.48·2.1732 = 9.736`, `4.473·2.1732 =
9.721 ≤ 9.73`, `1 − C₄ = 0.7272 ≤ 0.73`.

*Needs:* Layer 0.3; 5.2 (third form); 7.4 (the real-argument `0.397` row);
AnalyticNumberTheoryPartI §3.23a (`divisorError`); Layer 0.5 (`γ₁`, `γ₂`); Layer 0.7
(`DivisorPowerRangeVerified`, `PiltzRangeVerified`); `ArithmeticFunction.sigma_zero_apply`;
`Nat.card_divisors`.

**Checks.**

- `k = 1`: `⌊x⌋ ≤ x`; `k = 2`, `x = 2`: `3 ≤ 2(0.693 + 0.577 + 0.5) = 3.54`; `x = 1`: `1 ≤ 1`.
- The second form at `x = 6`: `k = 2`: `14 ≤ 2·6·1.79 = 21.5`; `k = 3`: `25 ≤ 38.5`; `k = 4`:
  `39 ≤ 69`; at `x = 2`, `k = 2`: `3 > 2·2·0.693 = 2.77`: the threshold is needed. Checked for
  `2 ≤ k ≤ 7` and `6 ≤ x ≤ 2000`: no violation.
- `Σ_{n ≤ x} τ₄(n) ≤ (1/3) x log³ x`: the last `x` where it fails is `192`; `Σ τ(n)² ≤ (1/4) x log³ x`
  fails last at `432`, and `≤ x log³ x` last at `6`: the three thresholds `193`, `433`, `7` are
  exact.
- `k = 2`: `τ₂ = τ = σ 0`, so `Σ_{m ≤ x} τ(m) = Σ_{m ≤ x} #m.divisors` (`sigma_zero_apply`), and the
  first bound reads `Σ_{m ≤ x} τ(m) ≤ x(log x + γ + 1/x)`, consistent with Layer 7.4's
  `x log x + (2γ − 1)x + 0.961√x` since `(2γ − 1) = 0.154 < γ`.
- `C₂ = 2γ − 1/2 = 0.654…` as printed; `C₃ = 6γ² − 4γ − 4γ₁ + 1 = 1.999 − 2.309 + 0.291 + 1 = 0.981…`
  as printed, with `γ₁ = −0.0728`: the sign of `γ₁` in `C₃` is pinned (`+0.291`, not `−0.291`).

### 7.6 Sums of `2^ω`

Prove: for every real `x ≥ 1`,

    Σ_{n ≤ x} 2^{ω(n)}/n ≤ (3/π²) log² x + 1.3949 log x + 0.4107 + 4.61 x^{−1/3},
    Σ_{n ≤ x} 2^{ω(n)}/n ≥ (3/π²) log² x + 0.578 log x − 0.0666,
    Σ_{n ≤ x} 2^{ω(n)} ≤ (6/π²) x log x + 0.787 x + 11.51 x^{2/3},
    (6/π²) x log x + 0.0456 x − 0.3317 ≤ Σ_{n ≤ x} 2^{ω(n)} ≤ (6/π²) x log x + 1.7091 x + 0.3317,

and hence Cipu's bounds (`cipu2015` lines 633–654, Lemma 4.3): for every real `x ≥ 1`,
`Σ_{n ≤ x} 2^{ω(n)}/n > (3/π²) log² x + 0.0895 log x − 0.916` and
`(6/π²) x log x − 0.518398 x < Σ_{n ≤ x} 2^{ω(n)} < (6/π²) x log x + 2.04864 x`.

Route for the first and third: `2^ω/n = h ⋆ (τ/n)` with `h(d²) = μ(d)/d²`, `h = 0` off squares (the
series `ζ(s + 1)²/ζ(2s + 2)`), the comparison theorem 5.1 with the model 5.2 in its form for every
`t > 0` (`A = 1/2`, `B = 2γ`, `C = γ² − 2γ₁`, `D = 1.641`): `u = 3/π²`, `v = 2A H'(0) + B H(0)` with
`H'(0) = −Σ_d μ(d) (2 log d)/d² = (12/π²) Σ_p log p/(p² − 1) = (12/π²)·0.56996 = 0.69299`, so
`v = 0.69299 + 2γ·6/π² = 0.69299 + 0.70181 = 1.39480 ≤ 1.3949`, `w = A H''(0) + B H'(0) + C H(0) =
0.41066 ≤ 0.4107`, and the error `1.641 H̄(−1/3) = 1.641 Σ_d μ²(d) d^{−4/3} = 1.641 ζ(4/3)/ζ(8/3) =
1.641·2.80405 = 4.6015 ≤ 4.61`; the unweighted sum by the weighted variant of 5.1 with
`U = 2u = 6/π²`, `V = v − 2u = 0.78687 ≤ 0.787` and error `2.5·4.6015 = 11.504 ≤ 11.51`.
`trudgian2015` Lemma 13 (lines 415–423) prints the constants `3.253` and `8.14`, with a term
`−0.3762` in the unweighted bound: they are `1.16 H̄(−1/3)` and `2.5·1.16 H̄(−1/3)`, obtained by
applying the comparison lemma with Berkane–Bordellès–Ramaré's `1.16` on all `t > 0` (its Lemma 14,
lines 426–432), which holds only for `t ≥ 1` (Layer 5.2); the comparison theorem needs the model
on `(0, 1)` as well, and the route here gives `4.61` and `11.51`. Route for the second and fourth:
the identity `Σ_{n ≤ x} 2^{ω(n)} = Σ_{m ≤ x} Q(x/m)` (since `2^{ω(n)} = Σ_{d ∣ n} μ²(d)`), the
real-argument bounds `−0.15264 √y ≤ R(y) ≤ 0.679091 √y` (`y ≥ 1`) of 7.1, `H_{⌊x⌋} = log x + γ +
O*(6/(11x))` (Layer 0.3) and `Σ_{m ≤ x} m^{−1/2} ≤ 2√x − 1`; and `Σ_{n ≤ x} 2^{ω(n)}/n =
Σ_{m ≤ x} (1/m) Σ_{d ≤ x/m} μ²(d)/d` with the lower bound `(6/π²) log y + 0.578` of 7.1,
`H_{⌊x⌋} ≥ log x` (`log_add_one_le_harmonic`) and `Σ_{m ≤ x} (log m)/m ≤ ½ log² x + 0.1094`
(the terms `m = 2, 3` and `∫_3^x (log t) dt/t`, since `log t/t` decreases on `[e, ∞)`). Cipu's own
derivation uses the lower constant `−0.103229` of his Lemma 4.2(a) at the real arguments `x/m`,
where it does not hold (7.1); the route here uses the real constant.

*Needs:* 5.1; 5.2 (the form for `t > 0`); 7.1; Layer 0.3; Layer 0.6; `hasSum_zeta_two`;
`log_add_one_le_harmonic`; `StieltjesGammaOneEnclosure` (for the constant `0.4107`).

**Checks.**

- `x = 1`: left `1`; first upper bound `0.4107 + 4.61 = 5.02`; Cipu's lower `−0.916`; the
  unweighted bounds give `−0.286 ≤ 1 ≤ 2.041`.
- `x = 10`: `Σ 2^ω/n = 5.3913 ∈ [2.876, 7.374]`; `Σ 2^ω = 23 ∈ [14.12, 31.42]`, inside Cipu's
  `(8.81, 34.48)`, and `≤ 75.29`.
- `x = 10^5`: `Σ 2^ω/n = 56.7584 ≤ 56.8590` (the upper bound is tight to `0.2%`), and
  `Σ 2^ω = 778 581 ∈ [704 462, 870 812]`.
- Witness of the coefficient `1.3949`: `(12/π²)·Σ_p log p/(p² − 1) + (12/π²)γ = 0.69299 + 0.70181 =
  1.39480`; a formula with `Σ_p log p/p²` instead of `Σ_p log p/(p² − 1)` would give
  `(12/π²)·0.49309 = 0.59953` and the wrong `1.30134`.
- The constants of `trudgian2015` Lemma 13 are numerically true at every `x ≤ 10^6` (no violation of
  either bound, at both ends of every unit interval), but `1.16 H̄(−1/3) = 3.2527` rests on the model
  outside its range: at `t = 0.01` the model's error is `5.766 > 1.16·0.01^{−1/3} = 5.384` (Layer 5.2).

### 7.7 Totient sums

Prove (`trevino2015ijnt` lines 223–228 and 285–289, Lemmas 2–3): for every real `x ≥ 1`,
`Σ_{n ≤ x} φ(n)/n ≤ (6/π²) x + log x + 1` and `Σ_{n ≤ x} n φ(n) ≤ (2/π²) x³ + (1/2) x² log x + x²`.
Route for the first: `φ(n)/n = Σ_{d ∣ n} μ(d)/d`, so `Σ_{n ≤ x} φ(n)/n = Σ_{d ≤ x} (μ(d)/d) ⌊x/d⌋ =
x Σ_{d ≤ x} μ(d)/d² − Σ_{d ≤ x} μ(d){x/d}/d`, with `Σ_{d ≤ x} μ(d)/d² = 6/π² − Σ_{d > x} μ(d)/d²`;
the tail is bounded by Moser–MacLeod's `1/(3x) + 8/(3x²)` of 2.5 (`x ≥ 2`), and
`|Σ_{d ≤ x} μ(d){x/d}/d| ≤ H_{⌊x⌋} < log x + γ + 1/x` (Layer 0.3), so the sum is at most
`(6/π²) x + log x + γ + 1/3 + 1/x + 8/(3x)`, and `γ + 1/3 + 1/x + 8/(3x) ≤ 0.99998 ≤ 1` for `x ≥ 41`
(`trevino2015ijnt` lines 237–283); the range `1 ≤ x < 41` is `TotientRangeVerified` (Layer 0.7;
the source's check, lines 229–236). The cruder tail `1/x` of 2.5 would leave
`(6/π²) x + log x + 1 + γ + 1/x`, too large by `γ + 1/x`. Route for the second (lines 290–369):
`n φ(n) = Σ_{dm = n} μ(d) d m²`, so `Σ_{n ≤ x} n φ(n) = Σ_{d ≤ x} μ(d) d Σ_{m ≤ x/d} m²` with
`Σ_{m ≤ y} m² = ⌊y⌋(⌊y⌋ + 1)(2⌊y⌋ + 1)/6`; writing `⌊x/d⌋ = x/d − θ_d` and using
`|3 − 6θ| ≤ 3`, `|6θ² − 6θ + 1| ≤ 1`, `|θ(1 − θ)(1 − 2θ)| ≤ 1/10` on `0 ≤ θ < 1`, the harmonic bound
of Layer 0.3 and the Moser–MacLeod tail of 2.5 for `x ≥ 3`, and a direct check for `1 ≤ x < 3`.

*Needs:* 2.5 (Moser–MacLeod form); Layer 0.3; Layer 0.7 (`TotientRangeVerified`); `Nat.totient`;
`ArithmeticFunction.coe_moebius_mul_coe_zeta` (`φ/n = μ/n ⋆ 1`).

**Checks.**

- `x = 1`: `1 ≤ 0.608 + 0 + 1`; `x = 2`: `1.5 ≤ 1.216 + 0.693 + 1`; `x = 10`: `6.2238 ≤ 9.3819`;
  `x = 100`: `60.83 ≤ 66.40`.
- Second bound: `x = 1`: `1 ≤ 0.203 + 0 + 1`; `x = 3`: `9 ≤ 5.47 + 4.94 + 9 = 19.4`; `x = 41`:
  `14 751 ≤ 18 769`; `x = 42`: `15 255 ≤ 20 074`.
- The step at `x = 41`: `γ + 1/3 + 1/41 + 8/123 = 0.99998`, so the analytic range starts exactly
  where the check `TotientRangeVerified` stops; with the tail `1/x` of 2.5 in place of Moser–MacLeod's
  the constant would be `1 + γ + 1/41 = 1.6016 > 1`.
- Non-example: the first bound without the constant `1` fails at `x = 1`: `1 > 6/π² + 0 = 0.608`;
  the second without `x²` fails at `x = 1`: `1 > 2/π²`.

### Examples

- `Σ_{n ≤ 100} μ²(n) = 61`, `R(100) = 61 − 60.79 = 0.21`; `Σ_{n ≤ 100} μ²(n)/n = 3.39`, between
  `0.608·4.605 + 0.578 = 3.38` and `3.97`.
- `Σ_{n ≤ 100} τ(n) = 482`, `Δ(100) = 482 − 100(4.605 + 0.154) = 6.1 ≤ 0.961·10`.

### Dependencies

Layer 0; Layers 1.2 and 1.4 (through 2.5 and the tails); Layer 2.3 and 2.5; Layer 3.2 (for the
tail estimates of 7.2); Layer 5 (5.1, 5.2, 5.4); AnalyticNumberTheoryPartI §3.22 (cited) and
§§3.22b, 3.23a (the hyperbola identity, `divisorError` and its cubic bound). Within the layer, 7.1
uses no other subsection of Layer 7, so Layer 1.5, which consumes 7.1, is not downstream of
anything that consumes it.

## Layer 8: explicit Euler products over primes

### 8.1 The Meissel–Mertens constant and the explicit Mertens product

Prove the identification: the real `B` of AnalyticNumberTheoryPartI §0.19 (the constant with
`|Σ_{p ≤ x} 1/p − log log x − B| < 1/(2 log² x)` for `x ≥ 286`) equals Tau Ceti's
`mertensConstant ℚ`, because any `B'` with `Σ_{p ≤ x} 1/p − log log x − B' → 0` is the limit, and
Tau Ceti's `tendsto_primeSummatory_inv_absNorm_sub_log_log` at `K = ℚ` gives that limit for the
sum over prime ideals, which is the sum over primes once the prime ideals of `ℤ` of norm `≤ x` are
matched with the primes `p ≤ x` (`Ideal.absNorm (span {p}) = p`). Prove the product identity
`B = γ + Σ_p (log(1 − 1/p) + 1/p)` from §0.21 and §0.26: `log ∏_{p ≤ x} (1 − 1/p)^{−1} = Σ_{p ≤ x} 1/p
− Σ_{p ≤ x} (log(1 − 1/p) + 1/p)`, and §0.26 says the left side is `log log x + γ + o(1)`.

Prove the explicit Mertens product (`rosserSchoenfeld1962`, Theorems 7–8, (3.26)–(3.30),
uncertified): for every real `x > 1`,

    1 − 1/log² x ≤ e^γ (log x) ∏_{p ≤ x} (1 − 1/p) ≤ 1 + 1/(2 log² x),
    1 − 1/(2 log² x) ≤ ∏_{p ≤ x} (1 − 1/p)^{−1}/(e^γ log x) ≤ 1 + 1/log² x,

as the conjunction of the analytic range `x ≥ 24 284` and `MertensProductInitialRangeVerified`
(both pairs on `1 < x < 24 284`). The transfer: put `E(x) = Σ_{p ≤ x} 1/p − log log x − B` and
`c_p = log(1 − 1/p)^{−1} − 1/p ∈ (0, 1/(p(p − 1)))`, so that `B − γ = −Σ_p c_p` and

    log(e^γ (log x) ∏_{p ≤ x} (1 − 1/p)) = −E(x) + Σ_{p > x} c_p,

the tail entering with a plus sign and lying in `(0, Σ_{n > x} 1/(n(n − 1))) ⊆ (0, 1/(x − 1))` for
`x ≥ 2`; hence, from `|E(x)| ≤ ε(x)` for `x ≥ x₀`, the logarithm of the first quotient lies in
`(−ε(x), ε(x) + 1/(x − 1))` and that of the second in `(−ε(x) − 1/(x − 1), ε(x))`, for `x ≥ x₀`.
Route for `x ≥ 24 284`: `gap:mertens-reciprocal-cubic` gives `ε(x) = 1/log³ x`, and at
`x = 24 284` the bound `ε(x) + 1/(x − 1) = 9.713·10^{−4} + 4.12·10^{−5} = 1.0125·10^{−3}` is below
`log(1 + 1/(2 log² x)) = 4.892·10^{−3}`, `−log(1 − 1/(2 log² x)) = 4.916·10^{−3}` and the two
corresponding quantities with `log² x` in place of `2 log² x`; since `(1/log³ x)/(1/(2 log² x)) =
2/log x` and `log³ x/(x − 1)` decrease, the four inequalities hold for every `x ≥ 24 284`. With
§0.19's `ε(x) = 1/(2 log² x)` the same computation gives only `1 + 1/log² x` for the upper bound of
the first pair and `1 − 1/log² x` for the lower bound of the second: at `x = 286`,
`1/(2 log² x) + 1/285 = 0.019139 > log(1 + 1/(2 log² x)) = 0.015509`. So §0.19 is used only for the
identification of `B`.

Prove Dusart's refinement (`dusart2018`, uncertified) as the instance of the transfer with
`gap:mertens-reciprocal-dusart`'s `ε(x) = 1/(5 log³ x)` for `x > 2 278 382`: there
`1/(x − 1) ≤ 0.0014/log³ x` (at `x = 2 278 382`, `log³ x/(x − 1) = 0.001377`, and the ratio
decreases), so both logarithms lie in `[−0.2014/log³ x, 0.2014/log³ x]` and both quotients within
`1 ± 1/(4 log³ x)`; Dusart's own `1 ± 1/(5 log³ x)` needs his sharper tail handling and is stated by
its locator under the same hypothesis.

*Needs:* AnalyticNumberTheoryPartI §§0.19, 0.21, 0.26; Tau Ceti `mertensConstant`,
`tendsto_primeSummatory_inv_absNorm_sub_log_log`; `Real.add_one_le_exp`;
`MertensProductInitialRangeVerified`; `gap:mertens-reciprocal-cubic`; `gap:mertens-reciprocal-dusart`
(for Dusart's refinement); `MeisselMertensConstantEnclosure` only when `B` is replaced by its
decimal.

**Checks.**

- `x = 2`: `e^γ log 2 · (1/2) = 0.6173`; the bounds `1 − 1/log² 2 = −1.08` and `1 + 1/(2 log² 2) =
  2.04` hold trivially; `x = 3`: `0.6522 ∈ [0.171, 1.414]`; `x = 11`: `0.8874 ∈ [0.826, 1.087]`;
  `x = 283`: `0.9833 ∈ [0.9686, 1.0157]`; `x = 293`: `0.9860 ∈ [0.9690, 1.0155]`.
- `x → 1⁺`: `log x → 0`, the product is the empty product `1`, `e^γ log x → 0`, and the lower bound
  `1 − 1/log² x → −∞`: the statement is true and empty near `1`, which is why `x > 1` (not `x ≥ 2`)
  is the hypothesis.
- The pairs are not inversions of each other in both directions: with `L = log x`, the first
  pair's upper bound gives the second pair's lower bound, since `1/(1 + 1/(2L²)) ≥ 1 − 1/(2L²)`;
  but the first pair's lower bound gives only `∏_{p ≤ x}(1 − 1/p)^{−1}/(e^γ L) ≤ 1/(1 − 1/L²)`, which
  is larger than `1 + 1/L²` for every `L > 1` (`1/(1 − b) > 1 + b` for `0 < b < 1`), so the second
  pair's upper bound is a separate statement, proved by the same transfer.
- Sign of the tail: at `x = 2`, `Σ_{p ≤ 2} 1/p − log log 2 − B = 0.5 + 0.3665 − 0.2615 = 0.6050` and
  `log(e^γ log 2 · (1/2)) = −0.4824`, so `Σ_{p > 2} c_p = −0.4824 + 0.6050 = 0.1226 > 0`; the opposite
  sign would require the tail to be `−0.1226`.
- The whole statement holds at both ends of every interval between consecutive primes on
  `(1, 4·10^5)`, in both pairs.
- `B = 0.2614972128…`: `γ + Σ_p (log(1 − 1/p) + 1/p) = 0.5772 − 0.3157 = 0.2615` (the sum to
  `p ≤ 2·10^5` gives `−0.31572`).

### 8.2 Tilted products

Prove the transfer to tilted products: for complex `ε` with `|ε| < 2`, put
`γ(ε) = Σ_p Σ_{n ≥ 2} (−1)^{n+1} ε^n/(n p^n)` (absolutely convergent since `|ε|/p < 1`) and
`B = mertensConstant ℚ`; if `|Σ_{p ≤ x} 1/p − log log x − B| ≤ η(x)` for every real `x ≥ x₀ ≥ 2`,
then for every real `x ≥ x₀`,

    ∏_{p ≤ x} (1 + ε/p) = exp(γ(ε) + εB) (log x)^ε (1 + O*(z e^z)),   z = |ε| η(x) + |ε|²/((2 − |ε|)(x − 1)).

Route: `log ∏_{p ≤ x} (1 + ε/p) = ε Σ_{p ≤ x} 1/p + γ(ε) − T_ε(x)` (principal branch, `|ε/p| < 1`)
with `T_ε(x) = Σ_{p > x} Σ_{n ≥ 2} (−1)^{n+1} ε^n/(n p^n)`, `|T_ε(x)| ≤ Σ_{p > x} (|ε|/p)²/(2(1 − |ε|/p))
≤ |ε|²/((2 − |ε|)(x − 1))`, and `|e^w − 1| ≤ |w| e^{|w|}`. Prove the instance under
`gap:mertens-reciprocal-cubic` (`η(x) = 1/log³ x` for `x ≥ 24 284`): for complex `ε` with `|ε| ≤ 1`
and real `x ≥ e^{22}`, `∏_{p ≤ x} (1 + ε/p) = exp(γ(ε) + εB) (log x)^ε (1 + O*(1.0001 |ε|/log³ x))`,
since there `1/(x − 1) ≤ 3·10^{−6}/log³ x` and `z ≤ 1/10 648`. Vanlalngaia's sharper constant
`0.841` for `|ε| < 2` (`vanlalngaia2017` Theorem 5, p. 3) rests on that paper's Theorem 4, which is
not part of the explicit-primes contract, and is not stated here (Scope). The cases `ε = ±1` are
the Mertens product of 8.1 and `∏_{p ≤ x} (1 + 1/p) = (6/π²) e^γ log x (1 + O*(…))`.

*Needs:* 8.1 (`B`); `gap:mertens-reciprocal-cubic`; `Complex.cpow`; `Real.add_one_le_exp`;
Layer 0.6 (absolute convergence of `γ(ε)`).

**Checks.**

- `ε = 0`: both sides `1` (`γ(0) = 0`, `(log x)⁰ = 1`, `z = 0`).
- `ε = −1`: `γ(−1) = −Σ_p Σ_{n ≥ 2} 1/(n p^n) = Σ_p (log(1 − 1/p) + 1/p) = B − γ`, so
  `e^{γ(−1) − B} = e^{−γ}` and the instance reads `∏_{p ≤ x} (1 − 1/p) = e^{−γ}/log x ·
  (1 + O*(1.0001/log³ x))`, consistent with 8.1 and sharper for `x ≥ e^{22}` (`1.0001/log³ x ≤
  1.0001/10 648` against `1/(2 log² x) = 1/968`).
- `ε = 1`: `γ(1) = Σ_p (log(1 + 1/p) − 1/p) = −0.182…`, and `γ(1) + γ(−1) = Σ_p log(1 − 1/p²) =
  −log ζ(2) = −0.4977`, so `γ(1) = −0.4977 − (B − γ) = −0.4977 − 0.2615 + 0.5772 = −0.1820`; then
  `e^{γ(1) + B} = e^{0.0795} = 1.083 = (6/π²) e^γ`, the constant of `∏_{p ≤ x}(1 + 1/p) ∼ (6/π²) e^γ log x`:
  the sign conventions of `γ(ε)` and of `εB` are pinned by this witness.
- `x = e^{22}`: `log³ x = 10 648`, the relative error of the instance is at most `1.0001/10 648 =
  9.39·10^{−5}`, against `7.9·10^{−5}` for the constant `0.841`.
- Non-example: `ε = 2` is outside the transfer: at `p = 2` the local factor is `1 + 2/2 = 2`, but
  `γ(2)` contains `Σ_n (−1)^{n+1} 2^n/(n 2^n) = Σ_n (−1)^{n+1}/n`, which converges only
  conditionally, and the bound on `T_ε` has the factor `1/(2 − |ε|)`.

### 8.3 Products over a progression

Prove the transfer to a progression: let `q ≥ 1` be natural, `a` an integer coprime to `q`,
`θ(x; q, a) = Σ_{p ≤ x, p ≡ a (mod q)} log p`, and suppose `|θ(t; q, a) − t/φ(q)| ≤ c t/log t` for
every real `t ≥ x₁ ≥ 2`, with `c > 0`. Then there is a real `B(q, a)` with
`|Σ_{p ≤ x, p ≡ a (mod q)} 1/p − (log log x)/φ(q) − B(q, a)| ≤ η(x) = c/log x + 3c/(2 log² x)` for
every real `x ≥ x₁` (Abel summation against `1/(t log t)`; the integrals `∫_x^∞ dt/(t log² t) =
1/log x` and `∫_x^∞ dt/(t log³ t) = 1/(2 log² x)` converge), and, with
`K(q, a) = Σ_{p ≡ a (mod q)} (log(1 − 1/p)^{−1} − 1/p)`, for every real `x ≥ x₁`,

    ∏_{p ≤ x, p ≡ a (mod q)} (1 − 1/p)^{−1} = exp(B(q, a) + K(q, a)) (log x)^{1/φ(q)} (1 + O*(z e^z)),   z = η(x) + 1/(x − 1),

by the transfer of 8.1 restricted to the progression. Its input for `q ≥ 3` is
`gap:theta-progression-explicit`; for `q = 1` the product statement is 8.1 itself. Bordellès' tabulated bounds
`∏_{p ≤ x, p ≡ a (mod q)} (1 − 1/p)^{−1} ≤ C(q, a) (log x)^{1/φ(q)}` for `x ≥ x₀(q)` (`bordelles2005`,
Theorem 1, uncertified) are instances with the table values as explicit parameters: for a modulus
`q`, a residue `a`, and reals `C`, `X₀ ≤ X₁` with `X₁ ≥ x₁`, the two hypotheses
`exp(B(q, a) + K(q, a)) (1 + z(X₁) e^{z(X₁)}) ≤ C` (an enclosure of the constant, since `z`
decreases) and `ProgressionProductTableVerified q a C X₀ X₁` (Layer 0.7) give the bound for every
real `x ≥ X₀`; no value of `C(q, a)` or `x₀(q)` is asserted without its hypotheses.

*Needs:* 8.1's transfer; `gap:theta-progression-explicit`; `ProgressionProductTableVerified`;
`Nat.totient`; `ZMod` residue classes (`Nat.ModEq`).

**Checks.**

- `q = 1`: `φ(1) = 1`, `B(1, 0) + K(1, 0) = B + (γ − B) = γ`, and the transfer is 8.1's; the
  second pair of 8.1 gives the bound with the constant `C = e^γ (1 + 1/log² X₀)` for every
  `x ≥ X₀ > 1`, since `1 + 1/log² x` decreases (for `X₀ = 286`: `C = 1.7811·1.03126 = 1.8368`); a
  constant depending on `x` is not one.
- `q = 2`, `a = 1`: the odd primes; `∏_{p ≤ x, p odd} (1 − 1/p)^{−1} = (1/2) ∏_{p ≤ x} (1 − 1/p)^{−1}
  ≈ (e^γ/2) log x`, so `exp(B(2, 1) + K(2, 1)) = e^γ/2 = 0.8906` and no `C < 0.8906` can work at
  large `x`.
- `q = 4`, `a = 1`, `x = 5`: the product is `(1 − 1/5)^{−1} = 1.25`, `(log 5)^{1/2} = 1.2686`, so
  a constant `C` with `C·1.2686 ≥ 1.25` needs `C ≥ 0.9853` at this `x`.
- The remainder shape: a constant relative bound `|θ(t; q, a) − t/φ(q)| ≤ c t` would give the
  divergent `∫ dt/(t log t)`, so no decaying `η`; the `t/log t` shape of the hypothesis is what
  makes `B(q, a)` exist and `η(x) → 0`.
- Non-example: `a` not coprime to `q`: at most one prime is `≡ a`, the product is bounded and the
  statement with `(log x)^{1/φ(q)}` is true but not the source's; the hypothesis `(a, q) = 1` is
  kept.

### Examples

- `∏_{p ≤ 100} (1 − 1/p) = 0.12033…`, `e^γ log 100 · 0.12033 = 0.9869`, within `[1 − 1/21.2, 1 + 1/42.4]
  = [0.953, 1.024]`.
- `ε = 2` is excluded in 8.2 (`|ε| < 2`): at `p = 2` the local factor `1 + 2/2 = 2` is fine, but
  `γ(2)` has the term `Σ_n (−1)^{n+1} 2^n/(n 2^n) = Σ (−1)^{n+1}/n`, conditionally convergent only.

### Dependencies

AnalyticNumberTheoryPartI §§0.19, 0.21, 0.26; Tau Ceti `mertensConstant`; Layer 0.6, 0.7; the
`ExplicitPrimeCounting` gaps `gap:mertens-reciprocal-cubic`, `gap:mertens-reciprocal-dusart` and
`gap:theta-progression-explicit`.

## Layer 9: pointwise bounds

### 9.1 The number of distinct prime factors

Prove Robin's bound: for every natural `n ≥ 3`, `ω(n) ≤ 1.3841 log n/log log n` (`robin1983aa`
lines 42–48 and 445–464, Théorème 11), under `PrimorialTableVerified 26`. Route: `ω(n) = k` forces
`n ≥ p₁ ⋯ p_k = N_k` (the `k`-th primorial), and `log n/log log n` is increasing for `n ≥ 16`, so for
`n ≥ 30` it suffices to prove `k log θ(p_k) ≤ 1.3841 θ(p_k)` for every `k ≥ 3` (`log N_k = θ(p_k)`),
and the integers `3 ≤ n < 30` are checked directly. The step is its own target: for every `k ≥ 27`,
`θ(p_k) ≥ k(log k + log log k − 1.25)`, derived by summation from the explicit lower bound
`p_k ≥ k(log k + log log k − 1)` for `k ≥ 2` (`gap:nth-prime-lower`; the summed bound
`Σ_{i ≤ k} log p_i` falls short of `k(log k + log log k)` by at most `1.2475 k` for `k ≥ 17`, the
maximum at `k = 23`); since `y ↦ y/log y` increases for `y ≥ e`, it gives `k log θ(p_k) ≤ 1.3841 θ(p_k)`
as soon as `log(kℓ) ≤ 1.3841 ℓ` with `ℓ = log k + log log k − 1.25`, which holds for every `k ≥ 27`
(the last failure is at `k = 26`). The finite input `PrimorialTableVerified 26` (Layer 0.7) covers
`3 ≤ k ≤ 26` and `3 ≤ n < 30`; with the sharper `c = 1.0769` of Robin's Théorème 6 (line 29) the
analytic step would start at `k = 17`. Robin's Théorème 8
(line 43, the upper bound `θ(p_k) ≤ k(log k + log log k − 0.9465)` for `k ≥ 14`) is the companion
bound and is not needed for the direction stated here.

*Needs:* `ArithmeticFunction.cardDistinctFactors`; `Nat.nth Nat.Prime`; `Chebyshev.theta`;
`PrimorialTableVerified` (Layer 0.7); the explicit lower bound on `p_k` (`gap:nth-prime-lower`, see
the supplier contracts: `p_k ≥ k(log k + log log k − 1)` for `k ≥ 2`).

**Checks.**

- `n = 3`: `ω = 1 ≤ 1.3841·1.0986/0.0940 = 16.2`; `n = 6`: `2 ≤ 4.25`; `n = 30`: `3 ≤ 3.85`;
  `n = 510 510`: `7 ≤ 7.06`; `n = 9 699 690`: `8 ≤ 8.01`; `n = 223 092 870`: `9 ≤ 9.0004`:
  the constant is sharp at the ninth primorial to four decimals.
- `n = 2`: `log log 2 < 0`, excluded by `n ≥ 3`; `n = 1`: `ω = 0`, `log log 1` is junk, excluded.
- Non-example: `1.38` in place of `1.3841` fails at `n = 223 092 870` (`1.38·19.223/2.956 = 8.97 < 9`).
- Witness for the step: `θ(p₉) = log 223 092 870 = 19.22 ≥ 9(log 9 + log log 9 − 1.0769) = 17.16`,
  and `θ(p₁₄) = 37.11 ≤ 14(log 14 + log log 14 − 0.9465) = 37.28` (Robin's upper bound at its
  threshold `k = 14`); at the start of the analytic range, `θ(p₂₇) = θ(103) = 92.98 ≥
  27(log 27 + log log 27 − 1.25) = 87.44`.
- The table and the threshold: `k log θ(p_k)/θ(p_k)` is `1.0797` at `k = 3`, rises to `1.384013` at
  `k = 9` and then decreases (`1.3550` at `k = 16`, `1.3189` at `k = 26`), so
  `PrimorialTableVerified 26` holds; the analytic bound `log(kℓ)/ℓ` with `c = 1.25` is still
  `1.38525 > 1.3841` at `k = 26`, which is why the table runs to `26`.

### 9.2 Divisor functions

Prove the Nicolas–Robin theorem: for every natural `n ≥ 3`, `τ(n) ≤ n^{1.538 log 2/log log n}`,
with the maximum `max_{n ≥ 3} log τ(n) log log n/(log 2 log n) = 1.5379…` attained at
`n = 6 983 776 800` (`nicolasRobin1983` lines 10–15 and 159–170, Théorème 1 and Lemme 5; `teo2026`
lines 1795–1823, Table 12). Prove Teo's values for `k = 3, 4, 5`: `τ₃(n) ≤ n^{1.5915 log 3/log log n}`
(`λ(3) = 1.5914…`, attained at `43 243 200`, Table 13, lines 1824–1850; `durasNicolasRobin1999`
and `robin1983thesis` p. 51 state `1.59141`, which Teo notes does not appear in the thesis, line
105), `τ₄(n) ≤ n^{1.6338 log 4/log log n}` (`λ(4) = 1.6337…` at `259 459 200`, Table 14, lines
1853–1880), `τ₅(n) ≤ n^{1.6715 log 5/log log n}` (`λ(5) = 1.6714…` at `259 459 200`, Table 15, lines
1883–1913), and for every `2 ≤ k ≤ 100` the bound with the exponent `λ(k) + 10^{−4}` of Tables
16–18 (lines 1916–1990 and following), all for `n ≥ 3` and under `SuperiorTableVerified k ε₁(k)
ε₂(k) λ(k)`. Define `superiorHighlyComposite k ε N` to mean `τ_k(n)/n^ε ≤ τ_k(N)/N^ε` for every
natural `n ≥ 1` (`teo2026` lines 113–116), and prove the reduction: the maximiser of
`f_k(n) = log τ_k(n) log log n/(log k log n)` over `n ≥ 3` is a superior `k`-highly composite number
associated to some `ε` in an explicit interval `[ε₁(k), ε₂(k)]` (Teo's §§3–5, with `ε₁(k)`,
`ε₂(k)` as in Table 16; `durasNicolasRobin1999` for the existence of the maximiser), so that
`λ(k)` is the maximum of `f_k` over the finitely many `N_{k,ε}` with `ε` in that interval, which
is the content of `SuperiorTableVerified`.

Prove the uniform bound `τ_k(n) ≤ n^s ζ(s)^{k−1}` for every natural `n ≥ 1`, real `s > 1` and
natural `k ≥ 1` (`durasNicolasRobin1999`, uncertified), by induction on `k` from
`τ_k = τ_{k−1} ⋆ 1`: `τ_k(n) = Σ_{d ∣ n} τ_{k−1}(d) ≤ ζ(s)^{k−2} Σ_{d ∣ n} d^s = ζ(s)^{k−2} σ_s(n) ≤
ζ(s)^{k−1} n^s`, the last by `σ_s(n)/n^s = Σ_{d ∣ n} d^{−s} ≤ ζ(s)`; the `k = 2` case is Tau Ceti's
`sigma_le_rpow_mul_tsum` at `k = 0` (`τ(n) ≤ n^s Σ_d d^{−s}`).

*Needs:* `Nat.card_divisors`; `ArithmeticFunction.sigma_zero_apply`; Tau Ceti
`sigma_le_rpow_mul_tsum`; `Real.summable_nat_rpow_inv`; `SuperiorTableVerified`;
AnalyticNumberTheoryPartI §3.7 (cited as the asymptotic form).

**Checks.**

- `n = 6 983 776 800 = 2⁵·3³·5²·7·11·13·17·19`: `τ(n) = 6·4·3·2⁵ = 2304`, `log n = 22.667`,
  `log log n = 3.1208`, `f₂(n) = 7.7424·3.1208/(0.6931·22.667) = 1.53794`: the constant `1.538` is
  above the maximum and `1.5379` is below it (`1.53794 > 1.5379`), so the exponent must be `1.538`
  (or `1.53795`), not the four-digit `1.5379`.
- `k = 3`, `n = 43 243 200 = 2⁶·3³·5²·7·11·13`: `τ₃(n) = 28·10·6·3³ = 45 360`, `f₃(n) = 1.59141`,
  so the exponent `1.59141` is at the maximum to five digits and `1.5915` is safely above it.
- `k = 4`, `n = 259 459 200 = 2⁷·3⁴·5²·7·11·13`: `τ₄(n) = 120·35·10·4³ = 2 688 000`, `f₄(n) = 1.63373 ≤ 1.6338`;
  `k = 5` at the same `n`: `τ₅(n) = 330·70·15·5³ = 43 312 500`, `f₅(n) = 1.67144 ≤ 1.6715`.
- `n = 3`: `τ(3) = 2 ≤ 3^{1.538·0.693/0.094} = 3^{11.3}`; `n = 2` is excluded (`log log 2 < 0` would
  make the exponent negative and the claim `τ(2) = 2 ≤ 2^{negative}` false).
- `τ_k(n) ≤ n^s ζ(s)^{k−1}` at `k = 1`: `1 ≤ n^s`; at `n = 1`: `1 ≤ ζ(s)^{k−1}`; at `k = 2`, `s = 2`,
  `n = 6`: `4 ≤ 36·1.645 = 59`; the exponent `k` in place of `k − 1` would also hold but is weaker.
- `superiorHighlyComposite 2 0.3 5040` holds and `superiorHighlyComposite 2 0.3 2520` fails:
  `τ(5040)/5040^{0.3} = 60/12.904 = 4.6497`, the largest value of `τ(n)/n^{0.3}`, against
  `τ(2520)/2520^{0.3} = 48/10.482 = 4.5795` and `τ(55 440)/55 440^{0.3} = 4.5293`; at `ε = 0.3` the
  maximiser has `p`-exponent `⌊1/(p^{0.3} − 1)⌋`, that is `4, 2, 1, 1` at `p = 2, 3, 5, 7` and `0`
  beyond, so it is `2⁴·3²·5·7 = 5040` (`teo2026` Table 12).
- Non-example for the definition: with `≥` in place of `≤` (a minimiser of `τ_k(n)/n^ε`) the only
  candidates are `n → ∞`, where the ratio tends to `0`; no natural `N` qualifies, so that reading
  defines nothing.

### 9.3 Sums of divisors

Prove Nicolas' Théorème 2: for every natural `n ≥ 2`, `σ(n)/n ≤ 2.59791 log log(3τ(n))`
(`nicolas2008` lines 56–62: the constant `2.59790…` is attained at `n = M₁ = 2⁸·3⁵·5³·7²·11²·13²·
∏_{17 ≤ p ≤ 113} p`, so `2.59791` is a strict upper bound), and
`σ(n)/n ≤ e^γ log log(eτ(n)) + log log log(e^e τ(n)) + 0.9415` (lines 63–68: equality at the
displayed `n = M₂`, with `0.941444079…`, so `0.9415` is strict), under
`SuperchampionTableVerified 15 985 166 000` (Layer 0.7: the checks on the `(σ, τ)`-superchampions
of Nicolas' §3 below the thresholds `ω(n) ≥ 15 985` and `ω(n) ≥ 166 000` of his analytic Lemme 9,
lines 437–443, to which his Lemme 7, lines 399–426, reduces every other `n`). Route: Nicolas' benefit method,
reducing to the superchampions and the explicit prime bounds `p_k`, `θ(p_k)` (as in 9.1).

Prove Ivić's bounds: `σ(n) < 2.59 n log log n` for `n ≥ 7` and `σ*(n) < (28/15) n log log n` for
`n ≥ 31` (`ivic1977` lines 19–24, Theorems 1–2), from `σ(n)/n ≤ ∏_{p ∣ n} p/(p − 1) ≤ ∏_{p ≤ p_{ω(n)}}
p/(p − 1)`, the Mertens product of 8.1 (Ivić uses Rosser–Schoenfeld's `∏_{p ≤ x} p/(p − 1) <
e^γ log x (1 + 1/log² x)`, line 52) and `π(x) > x/log x` for `x ≥ 17` (`gap:prime-count-lower`, see
the supplier contracts), with `σ*(n)/n ≤ ∏_{p ∣ n} (1 + 1/p)`.

State Eum–Koo's `σ(n) ≤ (3/4) e^γ n log log n` for odd `n > 21` (`eumKoo2015`, Theorem 1.1,
uncertified; oddness required: `σ(2) = 3`), by the same route with the odd primes; at `n = 21` the
inequality fails (Checks), and there is no odd violation in `(21, 1.1·10^6)`.

*Needs:* `ArithmeticFunction.sigma`; Layer 0.5 (`σ*`); 8.1; 9.1's step on `θ(p_k)`;
`gap:prime-count-lower` (`π(x) > x/log x` for `x ≥ 17`, Rosser–Schoenfeld; the explicit-primes
roadmap's Layer 2); `SuperchampionTableVerified`.

**Checks.**

- Ivić: `n = 7`: `8 < 12.07`; `n = 12`: `28 < 28.29` (tight to `1%`); `n = 6`: `12 > 9.06`: the
  threshold `7` is needed. `σ*`: `n = 31`: `32 < 71.4`; `n = 30`: `σ*(30) = 72 > 68.5`: the
  threshold `31` is needed.
- Nicolas at `n = 2`: `σ(2)/2 = 3/2`, `τ(2) = 2`, `2.59791·log log 6 = 2.59791·0.583 = 1.515 ≥ 1.5`:
  holds, barely; at `n = 1` (`τ = 1`, `log log 3 = 0.094`): `1 ≤ 0.244` fails, which is why `n ≥ 2`.
- `n = 5040`: `σ = 19 344`, `σ/n = 3.838`, `τ = 60`, `2.59791·log log 180 = 2.59791·1.648 = 4.28 ≥ 3.838`;
  Ivić: `19 344 < 2.59·5040·log log 5040 = 27 974`.
- Non-example for the threshold: `σ(21) = 1 + 3 + 7 + 21 = 32 > (3/4)·1.781072·21·log log 21 =
  31.2314`, so Eum–Koo's bound is stated for odd `n > 21`; the odd integers below `1.1·10^6` where it
  fails are exactly `3, 5, 7, 9, 15, 21`.
- Non-example: Eum–Koo for even `n`: `n = 12`: `28 ≤ (3/4)·1.781·12·0.910 = 14.6` fails, so the
  oddness hypothesis is necessary.

### Examples

- `n = 2⁸·3⁵·5³·7²·11²·13²·∏_{17 ≤ p ≤ 113} p`: Nicolas' extremal integer for `σ(n)/n` against
  `log log(3τ(n))`.
- `n = 223 092 870 = p₁ ⋯ p₉`: Robin's near-extremal primorial.

### Dependencies

Layer 8.1; Mathlib `Nat.nth`, `Chebyshev.theta`, `card_divisors`; Tau Ceti `sigma_le_rpow_mul_tsum`;
AnalyticNumberTheoryPartI §§3.1, 3.7 (cited); the `ExplicitPrimeCounting` gaps `gap:nth-prime-lower`
and `gap:prime-count-lower`.

## Downstream consumers

- `ExplicitCharacterSumsAndSieves`: the pointwise bounds on `τ(q)`, `2^{ω(q)}` and `q/φ(q)`
  (Layer 9 and the product bound 6.1) for the Burgess constants; `Σ μ²(n)/φ(n)` with coprimality
  (7.2) and the coprimality removal (6.5) for Selberg's density sum.
- `ExplicitNumberFields`: the Piltz divisor bounds and the `τ₄` asymptotic with
  `DivisorPowerRangeVerified` (7.5) for regulator-free class-number bounds; the divisor pointwise
  bounds (9.2) for discriminant estimates.
- `ExplicitZetaBounds`: the divisor sums of 7.5 for mean-value and large-sieve constants.
- `ExplicitPrimeCounting` Part II: the coprime Möbius bounds (1.6, 2.4) for explicit prime estimates
  in progressions; the direction of supply from `ExplicitPrimeCounting` to this roadmap is fixed by
  its contract above, so that use belongs to a Part II of that roadmap.
- `SieveMethodsAndPrimePatterns` Part II: the explicit Levin–Fainleib theorem (5.5) and
  `Σ μ²(d)/φ(d)` (7.2) as explicit Selberg main terms; the effective divisor bounds (9.2).

## References

- `akhileshRamare2017`: P. Akhilesh, O. Ramaré, Explicit averages of non-negative multiplicative
  functions: going beyond the main term, Colloq. Math. 147 (2017). Theorems 1.1–1.4, Lemma 2.1.
- `balazard2012`: M. Balazard, Elementary remarks on Möbius' function, Proc. Steklov Inst. 276
  (2012). Propositions 1–3, 6–7, identities (8)–(11).
- `berkaneBordellesRamare2012`: D. Berkane, O. Bordellès, O. Ramaré, Explicit upper bounds for
  the remainder term in the divisor problem, Math. Comp. 81 (2012). Theorems 1.1–1.2, Corollary
  2.2, Lemma 3.1.
- `bermentRamare2012`: P. Berment, O. Ramaré, Ordre moyen d'une fonction arithmétique par la
  méthode de convolution, Rev. Math. Spéciales (2012). §§4–5, the pedagogical account of the
  convolution method.
- `bordelles2002`: O. Bordellès, Explicit upper bounds for the average order of `d_n(m)` and
  application to class number, JIPAM 3 (2002). Theorems 1–2 (uncertified).
- `bordelles2005`: O. Bordellès, An explicit Mertens' type inequality for arithmetic
  progressions, JIPAM 6 (2005). Theorem 1 and page 4 (uncertified).
- `bordelles2012`: O. Bordellès, Arithmetic Tales, Springer (2012). Theorem 4.28 (uncertified).
- `bordelles2015`: O. Bordellès, Some explicit estimates for the Möbius function, J. Integer Seq.
  18 (2015). Theorems 1–2, Proposition 3.
- `cipu2015`: M. Cipu, Further remarks on Diophantine quintuples, Acta Arith. 168 (2015). Lemmas
  4.2(a)–(d), 4.3.
- `cohenDress1988`: H. Cohen, F. Dress, Estimations numériques du reste de la fonction sommatoire
  relative aux entiers sans facteur carré (1988) (uncertified).
- `cohenDressElMarraki2007`: H. Cohen, F. Dress, M. El Marraki, Explicit estimates for summatory
  functions linked to the Möbius `μ`-function, Funct. Approx. 37 (2007). Theorem 1 (uncertified).
- `costaPereira1989`: N. Costa Pereira, Elementary estimates for the Chebyshev function `ψ(X)`
  and for the Möbius function `M(X)`, Acta Arith. 52 (1989). Theorem 5, Corollary 2, Table III.
- `cullyHugillTrudgian2021`: M. Cully-Hugill, T. Trudgian, Two explicit divisor sums, Ramanujan J.
  56 (2021). Theorems 1–2, (14), (18)–(19).
- `daboussiRivat2001`: H. Daboussi, J. Rivat, Explicit upper bounds for exponential sums over
  primes, Math. Comp. 70 (2001). Lemma 4.
- `davenport1937`: H. Davenport, On some infinite series involving arithmetical functions, Quart.
  J. Math. 8 (1937). Lemma 1 (uncertified).
- `deCamargo2025`: A. P. de Camargo, Sharp estimates for the Möbius function with coprimality
  restrictions, Math. Comp. (2025) (uncertified).
- `dressElMarraki1993`: F. Dress, M. El Marraki, Fonction sommatoire de la fonction de Möbius 2,
  Experiment. Math. 2 (1993) (uncertified).
- `durasNicolasRobin1999`: J.-L. Duras, J.-L. Nicolas, G. Robin, Grandes valeurs de la fonction
  `d_k`, in Number Theory in Progress (1999) (uncertified).
- `dusart2018`: P. Dusart, Explicit estimates of some functions over primes, Ramanujan J. 45
  (2018) (uncertified).
- `elMarraki1995`: M. El Marraki, Fonction sommatoire de la fonction de Möbius 3. Majorations
  asymptotiques effectives fortes, J. Théor. Nombres Bordeaux 7 (1995). Théorèmes 1–3 and the
  Corollaire of Théorème 2.
- `elMarraki1996`: M. El Marraki, Majorations de la fonction sommatoire de la fonction `μ(n)/n`
  (1996), preprint (uncertified).
- `eumKoo2015`: I. S. Eum, J. K. Koo, The Riemann hypothesis and an upper bound of the divisor
  function for odd integers, J. Math. Anal. Appl. 421 (2015). Theorem 1.1 (uncertified).
- `granvilleRamare1996`: A. Granville, O. Ramaré, Explicit bounds on exponential sums and the
  scarcity of squarefree binomial coefficients, Mathematika 43 (1996). Lemma 8.6 (uncertified).
- `hallTenenbaum1988`: R. R. Hall, G. Tenenbaum, Divisors, Cambridge (1988). Theorem 01
  (uncertified).
- `hurst2018`: G. Hurst, Computations of the Mertens function and improved bounds on the Mertens
  conjecture, Math. Comp. 87 (2018). §6.1.
- `ivic1977`: A. Ivić, Two inequalities for the sum of divisors functions, Zb. Rad. Prirod.-Mat.
  Fak. Univ. Novi Sad 7 (1977). Theorems 1–2.
- `kotnikVanDeLune2004`: T. Kotnik, J. van de Lune, On the order of the Mertens function,
  Experiment. Math. 13 (2004) (uncertified).
- `kreminski2003`: R. Kreminski, Newton–Cotes integration for approximating Stieltjes
  (generalized Euler) constants, Math. Comp. 72 (2003). The value of `γ₁`.
- `macleod1967`, `macleod1969errata`: R. A. MacLeod, A new estimate for the sum `M(x)`, Acta
  Arith. 13 (1967), with the errata, Acta Arith. 16 (1969). (4)–(5), §§2–3.
- `moserMacLeod1966`: L. Moser, R. A. MacLeod, The error term for the squarefree integers, Canad.
  Math. Bull. 9 (1966). (4), (8), (9).
- `nicolas2008`: J.-L. Nicolas, Quelques inégalités effectives entre des fonctions arithmétiques
  usuelles, Funct. Approx. 39 (2008). Théorèmes 2–3, Définition 1, Lemmes 7 and 9.
- `nicolasRobin1983`: J.-L. Nicolas, G. Robin, Majorations explicites pour le nombre de diviseurs
  de `n`, Canad. Math. Bull. 26 (1983). Théorème 1, Lemme 5.
- `ramare1995`: O. Ramaré, On Šnirel'man's constant, Ann. Scuola Norm. Sup. Pisa 22 (1995).
  Lemmas 3.2–3.3.
- `ramare2009`: O. Ramaré, Arithmetical aspects of the large sieve inequality, Hindustan Book
  Agency (2009). Theorem 21.1 (uncertified).
- `ramare2013aa`: O. Ramaré, From explicit estimates for the primes to explicit estimates for the
  Möbius function, Acta Arith. 157 (2013). Theorem 1.1, Corollaries 1.2–1.4, Lemmas 4.1–9.1.
- `ramare2013facm`: O. Ramaré, Some elementary explicit bounds for two mollifications of the
  Moebius function, Funct. Approx. 49 (2013). Theorems 1.1–1.2.
- `ramare2014aa`: O. Ramaré, Explicit estimates on the summatory functions of the Moebius function
  with coprimality restrictions, Acta Arith. 165 (2014). Theorem 1.1.
- `ramare2015mc`, `ramare2015corr`: O. Ramaré, Explicit estimates on several summatory functions
  involving the Moebius function, Math. Comp. 84 (2015), and the corrigendum, Math. Comp. 88
  (2019). Theorems 1.1–1.19, Lemmas 1.9, 2.2–2.4, 3.2.
- `ramare2016mc`: O. Ramaré, An explicit density estimate for Dirichlet L-series, Math. Comp. 85
  (2016). Lemmas 3.3–3.4, 4.3.
- `ramare2019bcp`: O. Ramaré, Explicit average orders: news and problems, in Number Theory Week
  2017, Banach Center Publ. 118 (2019). Theorems 1.1, 3.1–3.2, 4.1, 8.1, Corollaries 3.3–3.4,
  Lemmas 8.2, 9.2–9.3.
- `rieselVaughan1983`: H. Riesel, R. C. Vaughan, On sums of primes, Ark. Mat. 21 (1983). Lemmas 1–2,
  pp. 48–50 (uncertified).
- `robin1983aa`: G. Robin, Estimation de la fonction de Tchebychef `θ` sur le `k`-ième nombre
  premier et grandes valeurs de la fonction `ω(n)`, Acta Arith. 42 (1983). Théorèmes 6, 8, 11.
- `robin1983thesis`: G. Robin, Grandes valeurs de fonctions arithmétiques et problèmes
  d'optimisation en nombres entiers, thèse, Limoges (1983) (uncertified).
- `rosserSchoenfeld1962`: J. B. Rosser, L. Schoenfeld, Approximate formulas for some functions of
  prime numbers, Illinois J. Math. 6 (1962). Theorems 5–8, 12 (uncertified).
- `schoenfeld1969`: L. Schoenfeld, An improved estimate for the summatory function of the Möbius
  function, Acta Arith. 15 (1969). The main inequality.
- `tao2010`: T. Tao, A remark on partial sums involving the Möbius function, Bull. Aust. Math.
  Soc. 81 (2010). Theorem 1.1.
- `teo2026`: L.-P. Teo, Superior highly composite numbers and the explicit upper bound of
  generalized divisor functions (2025), arXiv v2. §6, Tables 12–18.
- `trevino2015ijnt`: E. Treviño, The Burgess inequality and the least `k`-th power non-residue,
  Int. J. Number Theory 11 (2015). Lemmas 2–3.
- `trevino2015jnt`: E. Treviño, The least `k`-th power non-residue, J. Number Theory 149 (2015).
  Claim 3.1 (uncertified).
- `trudgian2015`: T. Trudgian, Bounds on the number of Diophantine quintuples, J. Number Theory
  157 (2015). Lemmas 13–14.
- `vanLintRichert1965`: J. H. van Lint, H.-E. Richert, On primes in arithmetic progressions, Acta
  Arith. 11 (1965). §1.
- `vanlalngaia2017`: R. Vanlalngaia, Explicit Mertens sums, Integers 17 (2017). Corollary 1,
  Theorems 4, 5 (p. 3), 9.
