# Roadmap: explicit number fields

**Summary.** This roadmap develops the numerically explicit inequalities about a number field `K`
of degree `n` on Mathlib's carriers: the count `I_K(x)` of integral ideals of norm at most `x`
with explicit error terms (Sunley, Lee, Debaene, Gun–Ramaré–Sivaraman), explicit upper and lower
bounds for the residue `κ_K` of the Dedekind zeta function at `1` (Louboutin, Friedman, Stark,
Garcia–Lee), the class-number, regulator and relative class-number bounds that follow through the
class-number formula (Louboutin, Bordellès, Cully-Hugill–Trudgian), explicit zero-counting
formulae and zero-free regions for `ζ_K` (Trudgian, Hasanalizade–Shen–Wong, Stark, Louboutin,
Kadiri, Lee), and the explicit bounds on the least primitive root modulo `p` and modulo `p²`
(McGown–Trudgian, McGown–Treviño–Trudgian, Kerr–McGown–Trudgian). It is built from Mathlib's
Dedekind zeta function, residue, class number, regulator and CM-field API, from Tau Ceti's ideal
counting and geometry of numbers, from the analytic continuation and zero theory of the L-functions
roadmaps, and from the explicit inequalities for the Riemann zeta function, Dirichlet L-functions,
arithmetic functions and character sums of its four sibling explicit roadmaps. Its end theorems
are the explicit ideal counts, the two-sided residue bounds, the regulator-free class-number
bounds, the lower bounds for relative class numbers of CM-fields, the explicit Riemann–von
Mangoldt formula and zero-free regions for `ζ_K`, and Grosswald's conjecture under the
generalized Riemann hypothesis. The explicit Li-type residue bound of Louboutin (2015) and the
refined exponent `0.74` for the least primitive root modulo `p²` (Chen, 2022) belong to a Part II
of this roadmap, which extends Layer 3 and Layer 6 in their direction.

## Scope and ownership

**Owned here.**

- Layer 0: the Minkowski constant and the real Minkowski bound `b_K`, the local Euler factors
  `Π_K(p)` and their products over finite sets of primes, the coefficient bound
  `a_K(m) ≤ τ_n(m)` and the lemma `h_K ≤ Σ_{m ≤ b_K} τ_n(m)`, the quadratic Hecke character of a
  CM-field, the relative class number `h⁻_K` as a natural number with the divisibility
  `h_{K⁺} ∣ h_K` for every CM-field and the relative class-number formula, the predicates
  `DedekindConjecture`, `CMPositivity`, `GRHMod`, `QuadraticRealZeroGap`,
  `ImaginaryQuadraticRealZeroGap`, `HasNormalTower`, and the least primitive root modulo an
  integer.
- Layer 1: Rademacher's convexity bound for `ζ_K`, as the Dedekind instance of the general bound.
- Layer 2: the explicit Lipschitz lattice-point count with Widmer's constant, and the four explicit
  ideal counts.
- Layer 3: the explicit residue bounds beyond Louboutin's first bound (which is consumed): the
  zero-dependent bound, the bound taking the prime `2` into account, Friedman's unconditional
  lower bound, Louboutin's zero-dependent lower bounds for totally imaginary fields, the explicit
  second Mertens theorem under the Riemann hypothesis from `x ≥ 1.048`, the explicit short-sum
  theorem of Duke on unit-disc Euler-product records, and the conditional two-sided bound.
- Layer 4: the explicit zero-counting formulae for `ζ_K`, Stark's one-zero lemma with its
  constants, the real-zero counting lemmas, Louboutin's Stark-like regions, the explicit
  zero-free regions of Kadiri and Lee, and Stark's explicit lower bound for the residue.
- Layer 5: the `h_K R_K` bounds, Bordellès' regulator-free class-number bounds, the quartic
  bound, and the upper and lower bounds for relative class numbers of CM-fields.
- Layer 6: Vinogradov's sieve identity for generators of a finite cyclic group, the interval
  counts behind Burgess-type arguments, the explicit bounds on the least primitive root modulo
  `p` and `p²`, and Grosswald's conjecture under `GRHMod p`.

**Consumed, not restated** (by section, in *Exact supplier contracts*).

- Louboutin's first residue bound `κ_K ≤ (e log d_K/(2n−2))^{n−1}`: AnalyticNumberTheoryPartI
  §2.15, with its positive Mellin comparison §2.15a; the quadratic factorization
  `ζ_E = ζ_F L(s, η)` and the residue quotient `L(1, η) = κ_E/κ_F`: its §2.7 and §2.17a; the
  Aramata entire quotient `ζ_K/ζ_E` for Galois `K/E`: its §2.39b; `DedekindERH` and
  `DirichletGRH`: its §2.42 and §1.6; normal-closure discriminant bounds: its §2.31d; Stark's
  quadratic-subfield theorem for a simple real zero: its §2.31e.
- The continued Dedekind zeta function, its completion, functional equation and residues:
  LFunctions Layer 3; finite-order Hecke L-functions with their completions and entirety:
  LFunctions Layer 5; the zero count `zeroCount`, `N±(T)`, Hadamard's factorization, the
  shape of the zero-free regions, the argument principle on a rectangle, the certified-zero
  predicates and `GRH`: ZerosOfLFunctions Layers 4, 5, 6, 7 and 9.
- Ideal counting with an existential power saving, ray class groups and their ideal counts: Tau
  Ceti's `isBigO_card_idealsLE_sub`, `rayClassIdealCountingFunction`, `rayClassIdealMainTerm_eq`,
  realizing GlobalNumberFields Layer 3; successive minima and Minkowski's second theorem: Tau
  Ceti's `ZLattice.successiveMin` and
  `ZLattice.prod_successiveMin_mul_measure_le_two_pow_mul_covolume`, realizing SuccessiveMinima
  Layer 1 and GeometryOfNumbersAndQuadraticArithmetic §1.3.
- Piltz divisor sums and the quartic divisor asymptotic: ExplicitMultiplicativeFunctions T7.5;
  Robin's bound for `ω(n)` and the Rosser–Schoenfeld bound for `n/φ(n)`: its Layers 9 and 8.
- Rademacher's general convexity bound, Ramaré's bounds for `|L(1, χ)|`, the complex Stirling
  constants, Backlund's argument lemma, Landau's iterated Perron identity and the nonnegative
  trigonometric polynomials: ExplicitZetaBounds.
- The Burgess moment estimate and the explicit Pólya–Vinogradov inequalities:
  ExplicitCharacterSumsAndSieves Layers 3 and 4.
- Schoenfeld's explicit second Mertens theorem under the Riemann hypothesis and Bach's smoothed
  twisted Chebyshev sums under the generalized Riemann hypothesis: ExplicitPrimeCounting Layers 1
  and 5.
- The class group is generated by the primes of norm at most the Minkowski bound:
  ClassicalArithmeticCompletion §5.1; the global Artin map, its compatibility in towers and its
  agreement with the ideal-theoretic Artin map: ClassFieldTheory Layer 11, with the abstract norm
  diagram `artinMap_groundNorm` of its Layer 4; the Hilbert class field and its Galois group:
  ClassFieldTheory Layer 13; the abelian character group `X(F)` and the Euler product
  `ζ_F = ∏_{χ ∈ X(F)} L(s, χ)`: CyclotomicClassGroupsAndStickelberger §3.4; the
  conductor–discriminant formula: ClassFieldTheory Layer 13.
- Explicit digamma and trigamma remainders: ComputationalNumberTheory §4.17a.

**Already in the library, and how the targets here differ.**

- Tau Ceti's `NumberField.classNumber_le_bound` (`h_K ≤ d_K · 4ⁿ`,
  `TauCeti/NumberTheory/EffectiveBounds/ClassNumber/Basic.lean`) and
  `NumberField.card_ideal_absNorm_le` (at most `X² 2ⁿ` nonzero integral ideals of norm at most
  `X`, for `X ≥ 1`, `TauCeti/NumberTheory/EffectiveBounds/IdealCount/Basic.lean`), realizing
  Completed/EffectiveBounds Layer 1. The bounds of 5.3 replace `d_K 4ⁿ` by
  `√d_K (log d_K)^{n−1}` up to a factor depending on `n`, and 2.2–2.5 replace the upper bound
  `X² 2ⁿ` by the asymptotic `κ_K X` with an explicit error term.
- AnalyticNumberTheoryPartI §2.43(ii), Zaman's one-zero region: for `D_K n^n` beyond an absolute
  threshold, `ζ_K` has at most one zero in `σ ≥ 1 − 0.0875/log(D_K n^n)`, `|t| ≤ 1`. The regions
  of 4.5–4.6 differ in two ways: for `|t| ≥ 1` they are zero-free with explicit coefficients of
  `log d_K` and `n log|t|`, and their one-zero regions near the real axis have denominators in
  `log d_K` alone.

**Not owned here.** Effective Chebotarev and least-prime-ideal bounds; explicit Mertens theorems
for number fields and the explicit Brun–Titchmarsh inequality for number fields; zero-density
estimates for `ζ_K`; subconvexity; every explicit inequality about `ζ` and Dirichlet L-functions,
primes and arithmetic functions (the sibling explicit roadmaps); Brauer–Siegel and every
ineffective residue bound (AnalyticNumberTheoryPartI §§2.31e, 2.32, 2.46); the imaginary quadratic
class-number formula (ImaginaryQuadraticClassNumber H2.2) and the Goldfeld–Oesterlé bounds
(EffectiveClassNumbers); the explicit Burgess inequalities and their tabulated constants
(Treviño, McGown, Booker: ExplicitCharacterSumsAndSieves Layer 4); algorithms and certified
computations (ComputationalNumberTheory).
Louboutin's 2015 explicit Li-type residue bound and Chen's exponent `0.74` for the least primitive
root modulo `p²` are motivation for a Part II.

## Conventions

- **The field.** `K` is a number field, `n = [K:ℚ] = Module.finrank ℚ K`, `r₁ = nrRealPlaces K`,
  `r₂ = nrComplexPlaces K`, so `n = r₁ + 2r₂`; `d_K = |discr K|` as a real number; `h_K =
  classNumber K`, `R_K = Units.regulator K`, `w_K = Units.torsionOrder K`, and
  `κ_K = dedekindZeta_residue K`, which Mathlib defines as `2^{r₁}(2π)^{r₂} R_K h_K/(w_K √d_K)`.
  The root discriminant is `ρ_K = d_K^{1/n}`. Logarithms are natural. For `n ≥ 2`, `d_K ≥ 3`, so
  `log d_K > 0`; `d_ℚ = 1` and `log d_ℚ = 0`, which is why every statement with `log d_K` in a
  denominator assumes `n ≥ 2`.
- **The continued zeta function.** `ζ_K` means `dedekindZetaC K` of LFunctions Layer 3, the
  meromorphic continuation in Mathlib's normal form, which agrees with `NumberField.dedekindZeta K`
  on `Re s > 1` and vanishes at its pole `s = 1` by convention. `Λ_K = completedDedekindZeta K`,
  with `Λ_K(s) = d_K^{s/2} Γ_ℝ(s)^{r₁} Γ_ℂ(s)^{r₂} ζ_K(s)`. A *real zero* `β ∈ (0, 1)` of `ζ_K`
  means `dedekindZetaC K β = 0`; the function is analytic there, so the value is not junk, and
  `ζ_K(β) ≤ 0` means the real value. Zeros are counted with multiplicity through
  `MeromorphicOn.divisor`.
- **Zero counts.** `N_K(T)` is `zeroCount Λ_K univ (Icc 0 1 ×ℂ Icc (−T) T)`, the symmetric
  count `N±(T)` of ZerosOfLFunctions Layer 4 for `dedekindZetaData K`: the zeros `ρ = β + iγ` of
  `ζ_K` with `0 < β < 1` and `|γ| ≤ T`, with multiplicity. The poles of `Λ_K` at `0` and `1` lie
  in the rectangle and count `0`, since `zeroCount` takes the positive part of the divisor.
  Witness: for `K = ℚ` and `T = 15`, `N_ℚ(15) = 2`, the pair `1/2 ± 14.1347…i`; the one-sided
  count of ZerosOfLFunctions gives `1`.
- **`O*`.** `f = g + O*(h)` abbreviates the inequality `|f − g| ≤ h`; every statement here
  writes the inequality itself.
- **Positive part of the logarithm.** `log⁺ y = max(0, log y)` for `y > 0`, so that
  `1 + log⁺ y ≥ 1`.
- **Euler factors.** `Π_K(p) = ∏_{𝔭 ∣ p} (1 − N𝔭⁻¹)⁻¹` over the prime ideals above the rational
  prime `p`, `Π_K(S) = ∏_{p ∈ S} Π_K(p)` for a finite set `S` of primes, and
  `Λ_S = ∏_{p ∈ S} (1 + p^{−1/2})⁴`; both are `1` for `S = ∅`.
- **CM-fields.** `IsCMField K`, `K⁺ = maximalRealSubfield K`, `[K:ℚ] = 2n`, `[K⁺:ℚ] = n`,
  `Q_K = IsCMField.indexRealUnits K ∈ {1, 2}` the Hasse unit index, `η = cmCharacter K` the
  quadratic Hecke character of `K/K⁺`, `d_K/d_{K⁺} = d_{K⁺} N(𝔣_η)` the conductor of the
  completed `L(s, η)`, and `h⁻_K = relativeClassNumber K`. Louboutin's `k` is `K⁺` and his
  `ρ_K = d_K^{1/(2n)}` is the root discriminant above.
- **Primitive roots.** For `m ≥ 2`, `g` is a primitive root modulo `m` when
  `orderOf (g : ZMod m) = Nat.totient m`; `g(p) = leastPrimitiveRoot p`,
  `h(p) = leastPrimitiveRoot (p²)`, `ĝ(p) = leastPrimePrimitiveRoot p`, all junk `0` when no
  primitive root exists.
- **Computations as hypotheses.** Every finite verification a source relies on is a `Prop`
  declared once, in the section that first uses it (3.5 and 6.2–6.5), or imported by name from a
  sibling roadmap, and every theorem that needs it takes it as a hypothesis. Nothing is proved by
  computation.
- **Thresholds.** A theorem a source states "for `d_K` sufficiently large" is stated with an
  absolute threshold `D₀` that exists and does not depend on `K` or `n`; every other threshold is
  the source's numeral.

## Exact supplier contracts

### From Mathlib

- `NumberField.dedekindZeta`, `NumberField.dedekindZeta_residue` (with
  `dedekindZeta_residue_def`, `dedekindZeta_residue_pos`), and the class-number formula
  `NumberField.tendsto_sub_one_mul_dedekindZeta_nhdsGT`.
- `NumberField.classNumber` (`classNumber_pos`), `NumberField.Units.regulator`
  (`regulator_pos`), `NumberField.Units.torsionOrder` (`torsionOrder_pos`), `NumberField.discr`
  (`discr_ne_zero`), `nrRealPlaces`, `nrComplexPlaces`, `card_add_two_mul_card_eq_rank`
  (`r₁ + 2r₂ = n`), `Units.rank` (`= r₁ + r₂ − 1`), `abs_discr_ge'` (the Minkowski discriminant
  bound `n^{2n}/((4/π)^{2r₂} (n!)²) ≤ d_K`) and `abs_discr_ge` (for `n ≥ 2`).
- `NumberField.exists_ideal_in_class_of_norm_le`: every class contains a nonzero integral ideal of
  norm at most `(4/π)^{r₂} (n!/nⁿ) √d_K`; this bound is Mathlib's local notation `M K`, and it is
  not `NumberField.mixedEmbedding.minkowskiBound K 1`, whose value by
  `volume_fundamentalDomain_latticeBasis` is the covolume threshold `2^{r₁+r₂} √d_K`.
  `Ideal.absNorm`, `Ideal.absNorm_dvd_absNorm_of_le`, `ClassGroup.mk0`.
- `NumberField.IsCMField` (totally complex and quadratic over `maximalRealSubfield K`),
  `maximalRealSubfield`, `IsCMField.complexConj`, `IsCMField.indexRealUnits`,
  `indexRealUnits_eq_one_or_two`, `indexRealUnits_eq_two_iff`, and
  `regulator_div_regulator_eq_two_pow_mul_indexRealUnits_inv`:
  `R_K/R_{K⁺} = 2^{rank K}/Q_K` with `rank K = n − 1` for `[K:ℚ] = 2n`;
  `isTotallyReal_maximalRealSubfield`.
- `ZMod.isCyclic_units_prime`, `ZMod.isCyclic_units_of_prime_pow` (odd `p`), `orderOf`,
  `Nat.totient`, `DirichletCharacter`, `ArithmeticFunction.moebius`, `ArithmeticFunction.zeta`
  (so that `τ_n = ζ ^ n` in the Dirichlet ring), `riemannZeta`, `RiemannHypothesis`.
- `Complex.Gammaℝ`, `Complex.Gammaℂ`, `Complex.Gammaℝ_mul_Gammaℝ_add_one`,
  `Complex.digamma`, `MeromorphicOn.divisor`, `IsGalois`, `normalClosure`.

### From Tau Ceti

- `TauCeti.idealsLE K x` (the finset of nonzero integral ideals of norm at most `x`, with
  `idealsLE_eq_empty_of_lt_one`, `idealsLE_one`) and `TauCeti.isBigO_card_idealsLE_sub`
  (`#idealsLE K x = κ_K x + O(x^{1 − 1/n})`, `TauCeti/NumberTheory/NumberField/DedekindZeta.lean`).
- `GlobalNumberFields.Modulus K` (finite part a nonzero ideal, infinite part a finset of real
  places), `RayClassGroup 𝔪`, `integralIdealsPrimeTo 𝔪`, `idealClass 𝔪`,
  `rayClassIdealCountingFunction 𝔪 c x`, `rayClassIdealMainTerm 𝔪` with
  `rayClassIdealMainTerm_eq : rayClassIdealMainTerm 𝔪 = κ_K / #RayClassGroup 𝔪 · ∏_{𝔭 ∣ 𝔪₀} (1 − N𝔭⁻¹)`,
  `rayClassIdealCount` (existential exponent), `rayClassCharacter_partialSums`.
- `ZLattice.successiveMin L K i` (the real-valued successive minima of a `ℤ`-submodule `L`
  with respect to a convex body `K`, indexed from `0`, with junk value `0` when no dilate of `K`
  contains `i + 1` independent vectors of `L`; `TauCeti/Algebra/Module/ZLattice/SuccessiveMinima.lean`),
  `ZLattice.prod_successiveMin_mul_measure_le_two_pow_mul_covolume` (Minkowski's second theorem,
  upper half, for a full lattice and a convex body symmetric about `0`,
  `TauCeti/NumberTheory/GeometryOfNumbers/MinkowskiSecond.lean`),
  `IsLipschitzParametrizable`, `abs_ncard_inter_mul_sub_measureReal_le` (the cell count with the
  boundary term identified) and `exists_abs_ncard_smul_inter_vadd_sub_le` (the Lipschitz count with
  an existential constant, `TauCeti/NumberTheory/GeometryOfNumbers/LatticePointCount.lean`).
- `TauCeti.Contour.argumentPrinciple_nullHomologous` through ZerosOfLFunctions 7.2.
- `TauCeti.LFunctions.mertensConstant K` (the limit of `Σ_{N𝔭 ≤ x} 1/N𝔭 − log log x`,
  `TauCeti/NumberTheory/LFunctions/Mertens.lean`); at `K = ℚ` it is the Meissel–Mertens constant
  `M = 0.2614972…`, the constant of 3.5.

### From TauCetiRoadmap.LFunctions

Layer 3: `dedekindZetaC`, `completedDedekindZeta`, `dedekindZetaData` (degree `n`, conductor
`d_K`, root number `1`), agreement with `dedekindZeta` on `Re s > 1`, `analyticAt_dedekindZetaC`,
`meromorphicOrderAt_dedekindZetaC_one`, `tendsto_sub_one_mul_dedekindZetaC` (residue `κ_K`),
`completedDedekindZeta_one_sub` and the germ functional equation. Layer 4:
`dedekindZetaC_quadratic`, `dedekindZetaC_cyclotomic`, `dirichletData`. Layer 5:
`PrimitiveRayClassCharacter`, `heckeLFunctionC`, `completedHeckeLFunction`,
`differentiable_completedHeckeLFunction`, the functional equation `Λ(χ, s) = W(χ) Λ(χ⁻¹, 1 − s)`,
`heckeData`. Layer 0: `AnalyticLFunctionData`, `ofSeries`, `HasDirichletAgreement`,
`HasMeromorphicContinuation`, `HasFunctionalEquation`. Layer 7:
`heckeLFunction_ne_zero_of_one_le_re`.

### From TauCetiRoadmap.ZerosOfLFunctions

Layer 2 (`arithmeticConductor (dedekindZetaData K) = d_K`, `analyticConductorAt`); Layer 4
(`zeroCount`, `N(T)` and `N±(T)` with their finiteness and additivity, 4.2 the divisor of a
record, 4.3 Jensen's bound); Layer 5 (5.5 Hadamard's theorem at order at most one, 5.6 the
L-function corollaries: the partial-fraction expansion of `Λ'_K/Λ_K` over the zeros); Layer 6
(6.2 the shape of the Dedekind zero-free region, 6.3 `IsExceptionalZero`, 6.4(4d) the
logarithmic-derivative inequality with the pole terms, 6.5 no zeros on `Re s ∈ {0, 1}`); Layer 7
(7.1 `rectBoundary`, 7.2 the argument principle on a rectangle in divisor form, 7.3 the argument
variation, 7.5 the Riemann–von Mangoldt formula with existential constants); Layer 9
(`AllOnCriticalLine`, `GRH` over the two families).

### From TauCetiRoadmap.AnalyticNumberTheoryPartI

§1.6 `DirichletGRH χ` and `GRH`; §2.5 (the complex residue of the continued `ζ_K` is
`dedekindZeta_residue K`); §2.7 (for a quadratic extension `E/F` the canonical primitive quadratic
Hecke character `η` with `ζ_E = ζ_F L(s, η)` including the ramified factors) and §2.17a
(`L(1, η) = κ_E/κ_F > 0`); §2.15 `dedekindZeta_residue_le` (`κ_K ≤ (e log d_K/(2(n−1)))^{n−1}`
for `n ≥ 2`) and §2.15a (the positive Mellin comparison: `F_K(s) = λ/(s(s−1)) + ∫_1^∞ S_K(x)
(x^{s−1} + x^{−s}) dx` with `S_K ≥ 0`, the coefficient bound `0 ≤ a_K(m) ≤ τ_n(m)`, and the
log-convexity of `g`); §2.21 (Rademacher's shape for Hecke L-functions, used only as a Check);
§2.22 (the completion `Q^{s/2} Γ_ℝ(s+1)^g L(s, η)` of the CM character with `Q = d_E/d_F`);
§2.31d (`d_N ≤ d_K^{[N:ℚ]}`, `[N:ℚ] ≤ n!` for the normal closure `N`, and `d_F ≤ d_K` for a
subfield `F`); §2.31e (Stark's theorem: a simple real zero of `ζ_N` of a Galois `N/ℚ` is a zero of
`ζ_F` for a quadratic subfield `F`, and `ζ_E(β) = 0` iff `F ⊆ E`); §2.39b (the Aramata entire
quotient `ζ_K/ζ_E` for finite Galois `K/E`); §2.42 `DedekindERH K`, `DedekindERH.of_abelian`.

### From TauCetiRoadmap.GlobalNumberFields (Completed)

Layer 2 (moduli, ray class groups, `finite_rayClassGroup`), Layer 3 (3A–3F: the shape of the
ray-class ideal count, consumed through the Tau Ceti declarations above), Layer 9 (ray class
characters, conductors, the dictionary with Dirichlet characters over `ℚ`).

### From TauCetiRoadmap.ClassFieldTheory

Layer 4 (the abstract Artin map with its norm diagram `artinMap_groundNorm`), Layer 11 (the
global Artin map `globalArtinMap` of a finite Galois extension, its compatibility in towers, and
its agreement `globalArtinMap_ideal` with the ideal-theoretic Artin map at unramified primes; the
norm compatibility under a change of base field that this roadmap needs is listed as
`gap:artin-norm-compatibility` below) and Layer 13 (`hilbertClassField`,
`gal_hilbertClassField_equiv_classGroup`, the Hilbert class field is unramified at every place
including the real ones, Kronecker–Weber, and the abelian conductor–discriminant formula
`d_F = ∏_{χ ∈ X(F)} f_χ`).

### From TauCetiRoadmap.ClassicalArithmeticCompletion

§5.1 (the classes of the primes of norm at most Mathlib's Minkowski bound generate the class
group), as a Check only; §1.5 (the Legendre character is primitive), for the Burgess tables.

### From TauCetiRoadmap.CyclotomicClassGroupsAndStickelberger

§3.4: the primitive character group `X(F)` of an abelian number field, the Euler-product identity
`ζ_F(s) = ∏_{χ ∈ X(F)} L(s, χ)` on `Re s > 1` and its residue comparison with
`dedekindZeta_residue`; `abelianCharacter_gauss_product`; and, for abelian CM `F`, the rational
ratio `h(F)/h(F⁺)` with `relativeClassNumber_character_product`, with which Layer 0's natural
number agrees.

### From TauCetiRoadmap.SuccessiveMinima and TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

SuccessiveMinima Layer 1 (`successiveMin`, attainment, monotonicity, scaling) and
GeometryOfNumbersAndQuadraticArithmetic §1.3 (positivity, index monotonicity, the upper half of
Minkowski's second theorem) and §4.1 (Henk's bounds), through the Tau Ceti declarations above.

### From TauCetiRoadmap.ComputationalNumberTheory

§4.17a `digamma_series_remainder`, `trigamma_series_remainder`: explicit remainders for the
digamma and trigamma series, used for the explicit gamma terms of Layers 4 and 5.

### From TauCetiRoadmap.ExplicitZetaBounds

The following are consumed by name and must be provided there, at the stated generality:

- `gap:rademacher-general-convexity` (target 5): for a record `d` of LFunctions Layer 0 of degree
  `m` and arithmetic conductor `N` with Dirichlet agreement, continuation, the functional equation
  `Λ(s) = ε Λ̄(1 − s)` with `|ε| = 1`, gamma shifts in `{0, 1}`, coefficients with
  `|a(k)| ≤ τ_m(k)` for every `k ≥ 1` (so that `|L(s)| ≤ ζ(Re s)^m` on `Re s > 1`), and no pole
  except at most a simple pole at `1`: for `0 < η ≤ 1/2` and `−η ≤ σ = Re s ≤ 1 + η`,
  `‖continuedL d s‖ ≤ P(s) (N (|1+s|/(2π))^m)^{(1+η−σ)/2} ζ(1+η)^m` with `P(s) = 3|(1+s)/(1−s)|`
  when `d` has a pole at `1` and `s ≠ 1`, `P = 1` otherwise. A nonnegative coefficient majorant
  without the bound by `τ_m` does not suffice (1.1, Checks).
- `gap:complex-stirling-constants` (target 4): `Γ(s) = √(2π) exp((s − 1/2) log s − s + ξ_s)` with
  `|ξ_s| ≤ 1/(12 sin²(δ/2)|s|)` on `|arg s| ≤ π − δ`, and the two-sided modulus bounds for
  `σ > 0`.
- `gap:backlund-argument-lemma` (Layer 2, targets 8–9): Backlund's lemma, degree-free: for `f`
  analytic on `closedBall c R`, `f c ≠ 0`, `‖f z‖ ≤ M ‖f c‖` on the ball and `0 < r < R`, the
  variation of a continuous argument of `f` along the segment from `c` to `c + r` is at most
  `π (1 + log M/log(R/r))`, together with the count of sign changes of `Re f` it rests on.
- `gap:iterated-perron` (Layer 3, beside target 11): Landau's iterated Perron identity. For
  `F(s) = Σ_{k ≥ 1} a_k k^{−s}` absolutely convergent on `Re s > κ_a`, an integer `j ≥ 1`, a
  real `c > max(κ_a, 0)` and `x > 0`, the integral
  `(1/2πi) ∫_{c−i∞}^{c+i∞} F(s) x^{s+j} ds/(s(s+1)⋯(s+j))` converges absolutely and equals
  `(1/j!) Σ_{k ≤ x} a_k (x − k)^j`, which is the `j`-fold iterated integral
  `∫_0^x ∫_0^{y_j} ⋯ ∫_0^{y_2} Σ_{k ≤ y_1} a_k dy_1 ⋯ dy_j` (the kernel integral is
  `(1 − 1/y)^j/j!` for `y > 1` and `0` for `0 < y ≤ 1`). This is the form 2.2 and 2.3 use with
  `j = n`; Tau Ceti's `truncatedPerron_LSeries` is the unsmoothed truncated form and is not
  needed.
- `gap:ramare-L1-bounds` (target 14): for a primitive Dirichlet character of conductor `q > 1`,
  `|L(1, χ)| ≤ (1/2) log q` if `χ` is even and `≤ (1/2) log q + 5/2 − log 6` if `χ` is odd.
- `gap:nonnegative-trig-polynomials` (Layer 8, C10): the Props stating the nonnegativity of
  Kadiri's degree-four polynomial and of the Mossinghoff–Trudgian degree-sixteen polynomial, with
  their coefficients as literal rationals.

### From TauCetiRoadmap.ExplicitCharacterSumsAndSieves

- `gap:burgess-moment-estimate` (Layer 4): for `χ` non-principal modulo a prime `p` and
  `r, h ≥ 1`, `Σ_{x ∈ 𝔽_p} |Σ_{m=0}^{h−1} χ(x + m)|^{2r} ≤ ((2r)!/(2^r r!)) p h^r + (2r − 1) √p h^{2r}`,
  and for `r = 2` the refinements `(3h² − 2h)p + 2(h⁴ − 3h² + 2h)√p` for `χ` of order `2` and
  `(2h² − h)p + 3(h⁴ − 2h² + h)√p` otherwise (`mcgowntrudgian2020` lines 120–126).
- `gap:polya-vinogradov-lapkova` (Layer 3): for every primitive Dirichlet character `χ` modulo
  `q ≥ q₀ > 1`, even or odd, and every real `M`, `|Σ_{n ≤ M} χ(n)| ≤ A(q₀) √q log q` with
  `A(q₀) = 1/(2π) + 0.8204/√q₀ + 1.0285/(√q₀ log q₀)` (`kerrmcgowntrudgian2020` lines 117–122,
  Lemma 3: the odd case of Lapkova's Lemma 3A, with the even case halved by Pomerance's
  observation, so the odd constant serves both), beside the Frolenkov–Soundararajan bound of its
  target 13. At a prime modulus `q = p` every non-principal character is primitive, which is the
  case 6.5 uses.

### From TauCetiRoadmap.ExplicitMultiplicativeFunctions

- `gap:piltz-divisor-sums` (T7.5): `Σ_{m ≤ x} τ_k(m) ≤ x (log x + γ + 1/x)^{k−1}` for `x ≥ 1`,
  `≤ 2x (log x)^{k−1}` for `x ≥ 6`, `≤ (x/(k−1)!) (log x + k − 2)^{k−1}` for `k ≥ 3`, `x ≥ 13`,
  and `Σ_{m ≤ x} τ_4(m) ≤ (1/3) x log³ x` for `x ≥ 193` under `DivisorRemainderInitialRangeVerified`.
- `gap:omega-pointwise-robin` (T9.1): `ω(m) ≤ 1.3841 log m/log log m` for `m ≥ 3`.
- `gap:totient-quotient-bound` (Layer 8): `m/φ(m) ≤ e^γ log log m + 2.51/log log m` for `m ≥ 3`
  (`rosser-schoenfeld-1962` lines 361–398, Theorem 15, (3.41)–(3.42): the constant is `5/2`
  except at `m = 223092870 = 2·3·5·⋯·23`, where it is `2.50637`).

### From TauCetiRoadmap.ExplicitPrimeCounting

- `gap:explicit-mertens-second` (Layer 1): Schoenfeld's second Mertens theorem under the Riemann
  hypothesis: under `RiemannHypothesis`, for every real `x ≥ 13.5`,
  `|Σ_{p ≤ x} 1/p − log log x − M| < (3 log x + 4)/(8π√x)`, with `M` the Meissel–Mertens constant
  `mertensConstant ℚ` (`schoenfeld-1976` lines 127–136, Corollary 2, (6.21)). Used in 3.5
  (both sides) and 3.6 (the upper side).
- `gap:bach-grh-smoothed-sum` (Layer 5): Bach's lemma: for a non-principal Dirichlet character `χ`
  modulo a prime `p` with `DirichletGRH χ` and real `x ≥ 1`,
  `|Σ_{n < x} Λ(n) χ(n) (1 − n/x)| ≤ c(p, x) √x log p` with
  `c(p, x) = (2/3)(1 + 2/√x + 3/x^{3/2})(1 + 5/(3 log p)) + (log x + 2)/(√x log p)`, and the
  principal case `|Σ_{n < x} Λ(n)(1 − n/x) − x/2| ≤ √x/20 + 3` under `RiemannHypothesis`
  (`mcgowntrevinotrudgian2016` lines 70–76), beside that layer's conditional results for primes
  in progressions.

### From TauCetiRoadmap.ClassFieldTheory, as a gap

- `gap:artin-norm-compatibility` (Layer 11): for an abelian extension `H/F` and a finite extension
  `K/F`, the Artin symbol of a fractional ideal `𝔞` of `K` prime to the conductor, for `HK/K`,
  restricts on `H` to the Artin symbol of `N_{K/F} 𝔞` for `H/F`.

## How to read the build

Layer 0 fixes the invariants and predicates every later statement mentions: the Minkowski
constant, the local Euler factors, the quadratic Hecke character and relative class number of a
CM-field, the conjectural predicates, and the least primitive root. Layer 1 is the one convexity
bound for `ζ_K`, an instance of the general bound. Layer 2 proves the explicit lattice-point
count and the four explicit ideal counts; it needs Layers 0 and 1 only. Layer 3 proves the
residue bounds that need no zero-free region, from the positive Mellin comparison, Friedman's
regulator bound and, for the conditional bound, an explicit Duke theorem on Euler-product
records. Layer 4 proves the explicit zero counts, the real-zero lemmas and the zero-free regions,
and ends with Stark's residue lower bound, which needs the one-zero lemma; Layer 5 needs its
real-zero lemmas for the lower bounds of relative class numbers. Layer 5 turns the residue bounds
into class-number bounds through the
class-number formula and adds Bordellès' elementary bounds. Layer 6 is independent of Layers 1–5
and proves the primitive-root theorems from the sieve identity and the character-sum inputs.

## Layer 0: invariants and predicates

### 0.1 The Minkowski constant and the real Minkowski bound

Define `minkowskiConstant K` as the real number `(4/π)^{r₂} · n!/nⁿ`, and `minkowskiBoundReal K`
(written `b_K` below) as `minkowskiConstant K · √d_K`.

- `0 < minkowskiConstant K ≤ 1`: with `a_n = (4/π)^{n/2} n!/nⁿ`, `minkowskiConstant K ≤ a_n`
  since `2r₂ ≤ n` and `4/π > 1`; `a_2 = 2/π ≈ 0.637`, and the ratio
  `a_{n+1}/a_n = (4/π)^{1/2} (n/(n+1))ⁿ ≤ (4/π)^{1/2}/2 ≈ 0.5642` (the factor `(n/(n+1))ⁿ`
  decreases from `1/2` at `n = 1`), so `a_n ≤ 1` for every `n ≥ 2` by induction; at `n = 1`,
  `r₂ = 0` and the constant is `1` (while `a_1 = (4/π)^{1/2} > 1`).
- Every ideal class contains a nonzero integral ideal of norm at most `b_K`: Mathlib's
  `exists_ideal_in_class_of_norm_le`, whose bound `M K` is `b_K` by definition.
- `1 ≤ b_K`: the ideal the previous item gives for the trivial class has norm at least `1`.
- The Minkowski discriminant bound `d_K ≥ n^{2n}/((4/π)^{2r₂}(n!)²)` reads
  `minkowskiConstant K · √d_K ≥ 1`, that is `b_K ≥ 1` again, from `abs_discr_ge'`.
- `b_K` is not Mathlib's `minkowskiBound K 1`, which equals `2^{r₁+r₂} √d_K` by
  `volume_fundamentalDomain_latticeBasis`.

**Checks.**

- `K = ℚ(i)`: `r₂ = 1`, `n = 2`, `minkowskiConstant = (4/π)(2/4) = 2/π ≈ 0.6366` and
  `b_K = (2/π)·2 = 4/π ≈ 1.273`, so every class contains an ideal of norm `1` and `h_K = 1`; the
  value `minkowskiBound ℚ(i) 1 = 2^1 · 2 = 4` is a different quantity.
- `K = ℚ(√−14)`: `b_K = (2/π)√56 ≈ 4.764`, agreeing with ClassicalArithmeticCompletion §5.1's
  value; `K = ℚ(√5)`: `r₂ = 0`, `minkowskiConstant = 1/2`, `b_K = √5/2 ≈ 1.118`.
- `K = ℚ`: `minkowskiConstant = 1`, `b_K = 1`, and the class group is trivial; a definition with
  the exponent `r₁` instead of `r₂` would give `4/π > 1` here and fail `minkowskiConstant ≤ 1`.

*Needs:* Mathlib `exists_ideal_in_class_of_norm_le`, `abs_discr_ge'`, `Ideal.absNorm`,
`volume_fundamentalDomain_latticeBasis`.

### 0.2 Local Euler factors

Define `localFactor K p`, for a natural number `p`, as the finite product (Mathlib's `finprod`)
`∏ᶠ 𝔭, (1 − (N𝔭)⁻¹)⁻¹` over the height-one primes `𝔭` of `𝓞 K` containing `p`. For a prime `p`
these are the at most `n` primes above `p`; for `p = 1` there are none and the value is `1`; for
`p = 0` every prime contains `p`, the support is infinite and `finprod` takes its junk value `1`;
for composite `p` the product runs over the primes above every prime factor of `p`. Every theorem
of this roadmap evaluates it at a prime. Define
`localFactorProduct K S = ∏_{p ∈ S} localFactor K p` for a finset `S` of primes, with
`lambdaS S = ∏_{p ∈ S} (1 + p^{−1/2})⁴`.

- `1 ≤ localFactor K p` for every `p`, and `1 ≤ localFactorProduct K S`, `1 ≤ lambdaS S`; both
  products are `1` at `S = ∅`.
- For a prime `p`: `localFactor ℚ p = p/(p − 1)`; if `p` is inert in `K`,
  `localFactor K p = (1 − p^{−n})⁻¹`; if `p` splits completely, `(p/(p−1))ⁿ`; and in general
  `localFactor K p ≤ (p/(p−1))ⁿ`, since at most `n` primes lie above `p` and each has norm at
  least `p`.
- `localFactor K p` is the Euler factor of `ζ_K` at `p` evaluated at `s = 1`: the product over
  `𝔭 ∣ p` of the local factors of LFunctions Layer 3's Euler product.
- `localFactor K 2 / 2ⁿ ≤ 1`, with equality iff `2` splits completely, and `= 1/(2ⁿ − 1)` iff
  `2` is inert (`louboutin2005` lines 50–51).

**Checks.**

- `K = ℚ(i)`: `localFactor K 2 = (1 − 1/2)⁻¹ = 2` (one ramified prime of norm `2`),
  `localFactor K 5 = (5/4)² = 1.5625` (two primes of norm `5`), `localFactor K 3 = 9/8`
  (one prime of norm `9`); a definition using `p` in place of `N𝔭` would give `3/2` at `p = 3`.
- `lambdaS {2} = (1 + 2^{−1/2})⁴ ≈ 8.4926`, `lambdaS ∅ = 1`, and for `K = ℚ`,
  `localFactorProduct ℚ {2, 3} = 2 · 3/2 = 3`.
- Off the primes: `localFactor ℚ 6 = 2 · 3/2 = 3`, larger than `(6/5)¹`, so the bound
  `(p/(p−1))ⁿ` is stated for primes only; `localFactor K 1 = 1`, while `p/(p−1)` at `p = 1` is
  `1/0 = 0` in Lean; `localFactor K 0 = 1` is the `finprod` junk value. No theorem evaluates
  these.

*Needs:* Mathlib `IsDedekindDomain.HeightOneSpectrum`, `Ideal.absNorm`, `finprod`; LFunctions
Layer 3 (the Euler product).

### 0.3 The coefficient bound and the class-number lemma

Prove that for `m ≥ 1` the number of integral ideals of `𝓞 K` of norm exactly `m` is at most
`τ_n(m)`, the number of ordered `n`-tuples of positive integers with product `m`
(AnalyticNumberTheoryPartI §2.15a, the injection of the norm fibre at each prime into
compositions; `bordelles2002` lines 72–77). Route: both sides are multiplicative in `m`, and for
`m = p^k` the ideals of norm `p^k` are the products `∏ 𝔭_i^{a_i}` with `Σ f_i a_i = k` over the at
most `n` primes above `p`, which inject into the `n`-tuples `(p^{f_1 a_1}, …, p^{f_g a_g}, 1, …, 1)`.

Prove the class-number lemma: `h_K ≤ Σ_{m ≤ b_K} τ_n(m)` (`bordelles2002` line 79, Lemma 1.1;
`bordelles2006` line 61, Lemma 1.1, with `b_K` any real such that every class contains an
integral ideal of norm at most `b_K`). Route: choose in each class an ideal of norm at most `b_K`
by 0.1; the choice is injective, so `h_K` is at most the number of ideals of norm at most `b_K`,
which is at most `Σ_{m ≤ b_K} τ_n(m)` by the coefficient bound.

**Checks.**

- In `ℚ(i)`, the only ideal of norm `4` is `(1 + i)² = (2)` (the ideal `(4) = (2)²` has norm
  `16`), and `τ_2(4) = 3`; the ideals of norm `5` are the two primes above `5`, and `τ_2(5) = 2`,
  with equality; there is no ideal of norm `3`, and `τ_2(3) = 2`.
- `K = ℚ(i)`, `b_K ≈ 1.273`: `Σ_{m ≤ 1} τ_2(m) = 1`, so the lemma gives `h_K ≤ 1`, exact.
  `K = ℚ(√−14)`, `b_K ≈ 4.764`: `1 + 2 + 2 + 3 = 8 ≥ h_K = 4`.
- `K = ℚ`, `n = 1`: `τ_1 = 1`, `b_ℚ = 1` and the bound is `1 = h_ℚ`. The intermediate count
  `#idealsLE K b_K` is sharper than `Σ τ_n` (in `ℚ(√−14)` it is `1 + 1 + 2 + 1 = 5`, the norms
  `1, 2, 3, 3, 4`, against `8`); the lemma is stated with `Σ τ_n` because the Piltz bounds of
  Layer 5 apply to that sum.

*Needs:* 0.1; Mathlib `ArithmeticFunction.zeta`, `Ideal.absNorm`, the factorization of ideals in a
Dedekind domain; AnalyticNumberTheoryPartI §2.15a.

### 0.4 The quadratic Hecke character and the relative class number of a CM-field

For `IsCMField K`, define `cmCharacter K` as the canonical primitive quadratic Hecke character
`η` of the quadratic extension `K/K⁺` of AnalyticNumberTheoryPartI §2.7, a
`PrimitiveRayClassCharacter` of `K⁺` of LFunctions Layer 5, with `[K⁺:ℚ] = n`.

- `η` has order `2` and is nontrivial; `ζ_K(s) = ζ_{K⁺}(s) L(s, η)` on `Re s > 1` and as germs
  (§2.7); `L(s, η)` is entire (LFunctions Layer 5); `L(1, η) = κ_K/κ_{K⁺} > 0` (§2.17a).
- Its conductor has infinite part every real place of `K⁺`, and `d_K = d_{K⁺}² N(𝔣_η)`
  (the conductor–discriminant formula for `K/K⁺`, ClassFieldTheory Layer 13), so the conductor of
  the completed `Λ(s, η) = (d_K/d_{K⁺})^{s/2} Γ_ℝ(s+1)ⁿ L(s, η)` is `d_K/d_{K⁺}` (§2.22), and its
  root number is `1`, since `Λ_K = Λ_{K⁺} Λ(·, η)` and both zeta completions have root number `1`.
- `L(σ, η)` is real for real `σ`.

**Checks.**

- `K = ℚ(i)`: `η` is `χ₋₄` under the dictionary with Dirichlet characters, of conductor `4·∞`,
  `L(1, η) = π/4 = κ_{ℚ(i)}/κ_ℚ`, `d_K/d_{K⁺} = 4`.
- `K = ℚ(ζ₈)`, `K⁺ = ℚ(√2)`: `L(s, η) = L(s, χ₋₄) L(s, χ₋₈)` by the cyclotomic factorization,
  `d_K/d_{K⁺} = 256/8 = 32`, `L(1, η) = (π/4)(π/√8) ≈ 0.8724`.
- `K = ℚ(√2)` is not CM (it is totally real), so no character is attached; a definition that
  accepted any quadratic extension would produce an even character there, against the odd gamma
  factor `Γ_ℝ(s+1)ⁿ`.

Define `relativeClassNumber K : ℕ` as `h_K / h_{K⁺}` and prove `classNumber_maximalRealSubfield_dvd`:
`h_{K⁺} ∣ h_K`. Route (Washington, *Introduction to Cyclotomic Fields*, Theorem 4.10): let `H` be
the Hilbert class field of `K⁺`; it is totally real, since it is unramified at the real places;
`K` is totally complex, so `K ∩ H = K⁺`; the restriction `Gal(HK/K) → Gal(H/K⁺)` is therefore
surjective, and by the norm compatibility of the Artin map it is the norm map `Cl(K) → Cl(K⁺)`
under `gal_hilbertClassField_equiv_classGroup`; a surjection of finite groups gives the
divisibility.

- `relativeClassNumber K · h_{K⁺} = h_K` and `1 ≤ relativeClassNumber K`.
- The relative class-number formula `relativeClassNumber_eq`: as real numbers,
  `h⁻_K = Q_K w_K √(d_K/d_{K⁺}) L(1, η)/(2π)ⁿ`. Route: divide the two definitions
  `κ_K = (2π)ⁿ R_K h_K/(w_K √d_K)` (`r₁ = 0`, `r₂ = n`) and `κ_{K⁺} = 2ⁿ R_{K⁺} h_{K⁺}/(2 √d_{K⁺})`
  (`r₁ = n`, `r₂ = 0`, `w_{K⁺} = 2` since `K⁺` is totally real), use
  `R_K/R_{K⁺} = 2^{n−1}/Q_K` and `L(1, η) = κ_K/κ_{K⁺}`.
- For abelian CM `K`, the natural number agrees with the rational ratio of
  CyclotomicClassGroupsAndStickelberger §3.4.

**Checks.**

- `K = ℚ(i)`: `Q = 1`, `w = 4`, `√(d_K/d_{K⁺}) = 2`, `L(1, η) = π/4`: `1·4·2·(π/4)/(2π) = 1 = h⁻`.
  `K = ℚ(√−3)`: `w = 6`, `√3`, `L(1, χ₋₃) = π/(3√3)`: `6 √3 π/(3√3 · 2π) = 1`.
- `K = ℚ(√−5)`: `h_K = 2`, `h_{K⁺} = h_ℚ = 1`, `h⁻ = 2`; the formula gives
  `1·2·√20·L(1, χ₋₂₀)/(2π)` with `L(1, χ₋₂₀) = 2π·2/(2√20)`, that is `2`.
- `K = ℚ(ζ₈)`: `h_K = h_{K⁺} = 1`, `Q = 1`, `w = 8`, `√32 · 0.8724 · 8/(4π²) = 1.000`, consistent
  with the Check above; a formula with `R_K/R_{K⁺} = 2ⁿ/Q` (the wrong power) would give `2`.
- The degenerate degree `2n = 2`: `K⁺ = ℚ`, `h⁻_K = h_K`, and the formula is the imaginary
  quadratic class-number formula of ImaginaryQuadraticClassNumber H2.2.

*Needs:* Mathlib `IsCMField`, `maximalRealSubfield`, `indexRealUnits`,
`regulator_div_regulator_eq_two_pow_mul_indexRealUnits_inv`, `dedekindZeta_residue_def`,
`classNumber`; AnalyticNumberTheoryPartI §2.7, §2.17a, §2.22; LFunctions Layer 5; ClassFieldTheory
Layer 13 (`hilbertClassField`, `gal_hilbertClassField_equiv_classGroup`, conductor–discriminant);
`gap:artin-norm-compatibility`; CyclotomicClassGroupsAndStickelberger §3.4 (the abelian
agreement).

### 0.5 Conjectural predicates and the normal-tower predicate

Define `DedekindConjecture K` as: there is an entire function `F : ℂ → ℂ` with
`F s · riemannZeta s = dedekindZetaC K s` for every `s ≠ 1` with `riemannZeta s ≠ 0`.

- `F` is unique: it is determined on the complement of the discrete set `{1} ∪ ζ⁻¹(0)` and is
  continuous; `F(1) = κ_K`; `F` has no zeros where `ζ_K` has none.
- `DedekindConjecture ℚ` holds with `F = 1`.
- `dedekindConjecture_of_isGalois`: for `[IsGalois ℚ K]`, `DedekindConjecture K` holds, by the
  Aramata entire quotient of AnalyticNumberTheoryPartI §2.39b at `E = ℚ`, with
  `dedekindZetaC ℚ = riemannZeta` as germs (LFunctions Layer 3).

**Checks.**

- `K = ℚ(i)`: `F = L(·, χ₋₄)`, entire by Mathlib; `K = ℚ(√2)`: `F = L(·, χ₈)`.
- A definition demanding `F s · ζ(s) = ζ_K(s)` for every `s` is false at `s = 1`, where
  `dedekindZetaC K 1 = 0` by the normal-form convention while `F 1 · ζ(1) = κ_K · ζ(1)`.
- A non-Galois cubic field with Galois closure of group `S₃` satisfies the predicate (its `F`
  is the Artin L-function of the two-dimensional representation, entire since `S₃` is solvable),
  but `dedekindConjecture_of_isGalois` does not apply to it; no theorem here proves that case.

Define `CMPositivity K`, for `IsCMField K`, as `∀ σ ∈ Ioo 0 1, 0 ≤ Re L(σ, η)` with `η = cmCharacter K`
(the value is real by 0.4, so this is `0 ≤ ζ_K(σ)/ζ_{K⁺}(σ)` wherever `ζ_{K⁺}(σ) ≠ 0`).

**Checks.**

- `K = ℚ(√−3)`: `L(σ, χ₋₃) = Σ_k ((3k+1)^{−σ} − (3k+2)^{−σ}) > 0` termwise for `σ > 0`, so the
  predicate holds. `K = ℚ(i)`: the alternating series `Σ (−1)^k (2k+1)^{−σ}` with decreasing
  terms is positive, so it holds.
- Louboutin's examples: dihedral and quaternion CM-fields of degree at least `8` satisfy it
  (`louboutin2003` line 369); nothing here proves this.
- The closed interval would evaluate `L(0, η)` and `L(1, η)`; both are finite and positive for the
  CM character (`L(0, η) ≠ 0` by the functional equation with odd gamma factors), so the open
  interval is a choice of convention, not a correction.

Define `GRHMod q` as `∀ χ : DirichletCharacter ℂ q, DirichletGRH χ` (AnalyticNumberTheoryPartI
§1.6).

- `GRHMod 1 ↔ RiemannHypothesis`; `GRHMod q → RiemannHypothesis` for every `q ≥ 1` through the
  principal character and primitive induction; `GRH → GRHMod q`.

**Checks.**

- `q = 2`: the principal character has `L(s) = (1 − 2^{−s}) ζ(s)` with zeros on `Re s = 0`, which
  `DirichletGRH` does not constrain, so `GRHMod 2 ↔ RiemannHypothesis`.
- `q = 4`: `GRHMod 4` is `RiemannHypothesis ∧ DirichletGRH χ₋₄`, which is `DedekindERH ℚ(i)`
  (§2.42 Checks).
- A definition over primitive characters only would be equivalent, by primitive induction; a
  definition over `Re s ≥ 0` would be false for `q = 2`.

Define `QuadraticRealZeroGap c`, for a real `c > 0`, as: for every quadratic number field `F`
(`finrank ℚ F = 2`) and every real `β ∈ (0, 1)` with `ζ_F(β) = 0`, `β ≤ 1 − 1/(c √d_F)`.

Define `ImaginaryQuadraticRealZeroGap c` in the same way, with `F` ranging over the imaginary
quadratic fields only.

- Monotone in `c`: `QuadraticRealZeroGap c → QuadraticRealZeroGap c'` for `c ≤ c'`, and the
  same for `ImaginaryQuadraticRealZeroGap`; and `QuadraticRealZeroGap c` implies
  `ImaginaryQuadraticRealZeroGap c`.
- For a quadratic `F`, `ζ_F = ζ · L(s, χ_F)` and `ζ` has no zero in `(0, 1)`, so the zeros in
  question are the real zeros of `L(s, χ_F)`.
- `ImaginaryQuadraticRealZeroGap (π/6)` is the statement `L(s, χ_F) ≠ 0` for
  `1 − 6/(π √d_F) ≤ s < 1` that `louboutin2003` lines 359–360 (Lemma 8(5)) quote from an
  unpublished source; `QuadraticRealZeroGap c₈` is Stark's hypothesis in `garcialee2022mertens`
  lines 1239–1243, where Stark's quadratic subfield may be real. Neither is proved here: every
  theorem that needs one carries it as a hypothesis, and 5.6 needs only the imaginary one.

**Checks.**

- `F = ℚ(i)`, `c = π/6`: the imaginary predicate asserts no zero of `L(s, χ₋₄)` in
  `[1 − 3/π, 1) ≈ [0.045, 1)`, true since the alternating series is positive on `(0, 1)`;
  `F = ℚ(√−3)`, `c = π/6`: the interval `[1 − 6/(π√3), 1)` starts at `−0.103`, the predicate
  looks only at `β ∈ (0, 1)`, and `L(σ, χ₋₃) > 0` there termwise.
- For `d_F > 3·10⁸` the imaginary instance at `c = 1/6.035` is ExplicitZetaBounds target 18; at
  `c = π/6 > 1/6.035` it follows there, so `ImaginaryQuadraticRealZeroGap (π/6)` only carries
  weight for `d_F ≤ 3·10⁸`. It says nothing about real quadratic fields: for `F = ℚ(√5)` the
  all-quadratic predicate asks in addition that `L(s, χ₅)` have no zero in `[1 − 1/(c√5), 1)`.
- The predicate at `c` tending to `0` would say `β ≤ 1 − ∞`, impossible if a zero exists; it is a
  hypothesis, not a theorem, and no `c` is asserted.

Define `HasNormalTower K` as: there is a chain `ℚ = K₀ ⊆ K₁ ⊆ … ⊆ K_r = K` of subfields with
each `K_{i+1}/K_i` Galois. A Galois field has a normal tower of length one, and every subfield
chain with quadratic steps is a normal tower; a non-Galois cubic field has no normal tower, since
its only subfields are `ℚ` and itself. Garcia–Lee's `g(n)` is `1` or `n!` according to this
predicate.

**Checks.**

- `ℚ(ζ₈)` has a normal tower (it is Galois); `ℚ(2^{1/4})` has the tower `ℚ ⊂ ℚ(√2) ⊂ ℚ(2^{1/4})`
  of quadratic, hence Galois, steps; a non-Galois cubic field has no normal tower, since its only
  subfields are `ℚ` and itself.
- `ℚ` has the empty tower.
- The quartic field `ℚ(α)`, `α⁴ − α − 1 = 0`, has no normal tower: the polynomial is irreducible
  (it is irreducible modulo `2`), its discriminant `−283` is not a square and its resolvent cubic
  `x³ + 4x − 1` has no rational root, so the Galois group of the normal closure is `S₄`; the
  stabiliser `S₃` of a root is maximal, so there is no intermediate field, and the field is not
  Galois. A definition by "degree a power of `2`" would accept it, and one by "has a quadratic
  subfield" would reject the cyclic cubic field `ℚ(ζ₇)⁺`, which is Galois.

*Needs:* Mathlib `riemannZeta`, `Differentiable`, `DirichletCharacter`, `IsGalois`,
`RiemannHypothesis`; LFunctions Layer 3; AnalyticNumberTheoryPartI §1.6, §2.39b, §2.42; 0.4.

### 0.6 The least primitive root

Define `leastPrimitiveRoot m := sInf {g : ℕ | orderOf (g : ZMod m) = Nat.totient m}` and
`leastPrimePrimitiveRoot m := sInf {g : ℕ | g.Prime ∧ orderOf (g : ZMod m) = Nat.totient m}`.
Write `g(p)`, `h(p)`, `ĝ(p)` as in the conventions.

- For `m ≥ 2` with `(ZMod m)ˣ` cyclic, both sets are nonempty: a generator of `(ZMod m)ˣ` lifts
  to some `g ∈ [1, m−1]`, and Dirichlet's theorem on primes in progressions gives a prime
  representative; so `1 ≤ g(m) < m` and `ĝ(m) ≥ 2`. For a prime `p` the units are cyclic by
  `ZMod.isCyclic_units_prime`, and for `p²` with `p` odd by `ZMod.isCyclic_units_of_prime_pow`.
- `g(m) ≤ ĝ(m)`; `g(p) ≤ h(p)` for odd `p`, since a primitive root modulo `p²` reduces to one
  modulo `p`; and `h(p) ≤ g(p) + p`, since of `g, g + p, …, g + (p−1)p` exactly one fails to be a
  primitive root modulo `p²` (`kerrmcgowntrudgian2020` lines 37–39).
- `orderOf (g : ZMod m) = totient m` iff `g` is coprime to `m` and its unit generates `(ZMod m)ˣ`.

**Checks.**

- `g(2) = 1`, `g(3) = 2`, `g(7) = 3`, `g(409) = 21`, `ĝ(7) = 3`, `ĝ(409) = 29`: the least
  primitive root `21 = 3 · 7` of `409` is composite, and the primes `2, 3, …, 23` are not
  primitive roots modulo `409`, so `ĝ(409) > g(409)`.
- `h(3) = 2` (`2` has order `6` modulo `9`), `h(5) = 2` (`2^{10} ≡ 24 (mod 25)`, `2^4 = 16`), and
  `h(2) = 3`, the least generator of `(ℤ/4)ˣ`, so `h(2) = 3 > 2^{0.99}`: the bound of 6.5 cannot
  hold at `p = 2`.
- `0` never belongs to either set for `m ≥ 2` (its order is `0 ≠ φ(m)`), while for `m = 1` the
  set is `{0, 1, 2, …}` and `g(1) = 0` is junk; no theorem evaluates `m ≤ 1`.

*Needs:* Mathlib `orderOf`, `Nat.totient`, `ZMod.isCyclic_units_prime`,
`ZMod.isCyclic_units_of_prime_pow`, `Nat.infinite_setOfPred_prime_and_eq_mod` (Dirichlet's theorem,
`Mathlib/NumberTheory/LSeries/PrimesInAP.lean`).

### Examples

- `ℚ(i)`: `minkowskiConstant = 2/π`, `b = 4/π`, `localFactor 2 = 2`, `η = χ₋₄`, `h⁻ = 1`,
  `DedekindConjecture` with `F = L(·, χ₋₄)`, `CMPositivity`.
- `ℚ(ζ₈)`: `h⁻ = 1`, `L(1, η) ≈ 0.8724`, `Q = 1`.
- `p = 7`: `g = 3`, `h = 3`, `ĝ = 3`.

### Dependencies

Mathlib number-field, CM-field and `ZMod` API; LFunctions Layers 3 and 5;
AnalyticNumberTheoryPartI §§1.6, 2.7, 2.15a, 2.17a, 2.22, 2.39b, 2.42; ClassFieldTheory Layer 13;
`gap:artin-norm-compatibility`.

## Layer 1: the size of `ζ_K`

### 1.1 Rademacher's convexity bound

Prove `dedekindZeta_rademacher`: for `0 < η ≤ 1/2`, `s = σ + it` with `−η ≤ σ ≤ 1 + η` and
`s ≠ 1`,
`|ζ_K(s)| ≤ 3 |(1+s)/(1−s)| (d_K (|1+s|/(2π))ⁿ)^{(1+η−σ)/2} ζ(1+η)ⁿ`
(`rademacher1959`, Theorem 4; restated at `lee2023ideals` lines 173–179 as Theorem 2.2, and at
`sunley1973` line 105). It is the instance of the general convexity bound at `dedekindZetaData K`,
which has degree `n`, conductor `d_K`, root number `1`, gamma shifts `0` (with multiplicity
`r₁ + r₂`) and `1` (with multiplicity `r₂`), a simple pole at `1`, and coefficients
`0 ≤ a_K(k) ≤ τ_n(k)` by 0.3; nothing of Phragmén–Lindelöf is redone here.

**Checks.**

- `K = ℚ`, `η = 1/2`, `s = 1/2`: the right side is `3 · 3 · (3/(4π))^{1/2} ζ(3/2) ≈ 11.49` and
  `|ζ(1/2)| ≈ 1.460`.
- `K = ℚ`, `s = 1 + η` real: the right side is `3(2+η)/η · ζ(1+η) ≥ ζ(1+η) = |ζ(1+η)|`, with the
  pole factor accounting for the blow-up as `η → 0`.
- `K = ℚ(i)`, `s = 1/2 + 10i`, `η = 1/2`: `(4 (|1.5 + 10i|/(2π))²)^{1/2} ≈ 2 · 1.609 = 3.22`, so
  the bound is `3 · (|1.5+10i|/|0.5−10i|) · 3.22 · ζ(3/2)² ≈ 3 · 1.010 · 3.22 · 6.82 ≈ 66.5`;
  the value `|ζ(1/2+10i) L(1/2+10i, χ₋₄)|` is below `3`. A statement with `d_K |1+s|/(2π)`
  without the `n`-th power on the height would give `(4·1.609)^{1/2} = 2.54` instead of `3.22`
  and is not Rademacher's.
- Negative control for the general bound: the record of `10 ζ` (coefficients `10`, degree `1`,
  conductor `1`, root number `1`, a simple pole at `1`) has a nonnegative coefficient majorant
  but `10 > τ_1 = 1`; at `s = 1/2`, `η = 1/2` its value `|10 ζ(1/2)| = 14.60` exceeds the bound
  `9 (1.5/(2π))^{1/2} ζ(3/2) = 11.49`. The hypothesis `|a(k)| ≤ τ_m(k)` of
  `gap:rademacher-general-convexity` is what excludes it.

*Needs:* `gap:rademacher-general-convexity`; LFunctions Layer 3 `dedekindZetaData`;
ZerosOfLFunctions Layer 2 (`arithmeticConductor (dedekindZetaData K) = d_K`); 0.3.

### Examples

- `K = ℚ` recovers the pole-factor form of Rademacher's Theorem 3 at `q = 1`.

### Dependencies

ExplicitZetaBounds (gap); LFunctions Layer 3; Layer 0.

## Layer 2: counting ideals

### 2.1 The explicit Lipschitz lattice-point count

Prove `lipschitz_lattice_count_explicit` (Widmer, `widmer2010` lines 771–776, Theorem 5.4): let
`Λ` be a full lattice in `ℝ^D` with successive minima `λ₁ ≤ … ≤ λ_D` (Tau Ceti's
`ZLattice.successiveMin Λ B (i − 1)` for the closed unit ball `B`, indexed from `0` there), and
let `S ⊆ ℝ^D` be bounded with `∂S` covered by `M` maps
`[0,1]^{D−1} → ℝ^D` that are Lipschitz with constant `L`. Then `S` is measurable and
`| #(S ∩ Λ) − vol(S)/covol(Λ) | ≤ D^{3D²/2} M max_{0 ≤ i < D} L^i/(λ₁⋯λ_i)`,
the term at `i = 0` being `1`. The same bound holds for every translate `S ∩ (v + Λ)`
(`debaene2019` lines 213–215). Route: Widmer's proof through a basis of minimal orthogonality
defect, Tau Ceti's cell count `abs_ncard_inter_mul_sub_measureReal_le` for the boundary term, and
Minkowski's second theorem for the defect bound `Ω ≤ D^{3D/2}/(2π)^{D/2}`. Tau Ceti's
`exists_abs_ncard_smul_inter_vadd_sub_le` is the same statement with an existential constant.

**Checks.**

- `D = 1`, `Λ = ℤ`, `S = [0, X]`: `∂S` is two points (`M = 2`, `L = 0`), `λ₁ = 1`, and
  `|⌊X⌋ + 1 − X| ≤ 1 ≤ 1 · 2 · 1`.
- `D = 2`, `Λ = ℤ²`, `S` the disc of radius `R` (`M = 1`, `L = 2πR`): the bound is
  `2^6 · max(1, 2πR) = 128πR` for `R ≥ 1`, while the true error is `O(R^{2/3})`; the bound is an
  upper estimate, not an asymptotic.
- `Λ = ℤ × 10⁻³ℤ`, `λ₁ = 10⁻³`: the `i = 1` term is `L/10⁻³`, a thousand times larger than for
  `ℤ²`; a statement without the successive minima (with `max L^i` alone) is false for such thin
  lattices, which is why Debaene's and Gun–Ramaré–Sivaraman's proofs need them.

*Needs:* Tau Ceti `ZLattice.successiveMin`,
`ZLattice.prod_successiveMin_mul_measure_le_two_pow_mul_covolume`,
`abs_ncard_inter_mul_sub_measureReal_le`, `IsLipschitzParametrizable`; Mathlib `ZLattice.covolume`.

### 2.2 Sunley's explicit ideal count

Prove `idealCount_sunley` (`sunley1973` lines 110–112, Theorem 1.1(1); restated at
`lee2023ideals` lines 39–41): for `n ≥ 2` and `x > 0`,
`| #idealsLE K x − κ_K x | ≤ e^{28.2n+5} (n+1)^{5(n+1)/2} d_K^{1/(n+1)} (log d_K)ⁿ x^{(n−1)/(n+1)}`.
Route (Landau's contour method made explicit): the iterated Perron identity of
`gap:iterated-perron` with `j = n` writes the `n`-fold iterated integral of `#idealsLE K` as a
contour integral of `ζ_K(s) x^{s+n}/(s(s+1)⋯(s+n))` on `Re s = c > 1`; the contour is moved to
`Re s = −η` with `0 < η ≤ 1/2`, crossing the poles at `s = 1` (residue `κ_K x^{n+1}/(n+1)!`) and
`s = 0` (residue `ζ_K(0) x^n/n!`, nonzero for `n ≥ 2` only when `K` is imaginary quadratic,
`lee2023ideals` lines 136–171); Rademacher's bound of 1.1 on the new line, the functional equation and the
explicit Stirling bounds for the gamma quotients bound the remaining integral; and the `n`-fold
integration is removed at the end by an `n`-th finite difference of step `y`, with the
monotonicity of `#idealsLE K` and an optimised `y`.

**Checks.**

- `n = 1` is excluded: `#idealsLE ℚ x = ⌊x⌋` and `|⌊x⌋ − x| < 1`, which no term of the right side
  dominates at `x < 1`.
- `K = ℚ(i)`, `x = 10`: the number of ideals of norm `m` is `Σ_{d ∣ m} χ₋₄(d) = r_2(m)/4`, which is
  `1, 1, 0, 1, 2, 0, 0, 1, 1, 2` for `m = 1, …, 10`, so `#idealsLE = 9`, against
  `κ_K x = 10π/4 ≈ 7.854` (error `1.146`); the right side exceeds `e^{61.4}`.
- For `0 < x < 1` the left side is `κ_K x < κ_K ≤ (e log d_K/(2n−2))^{n−1}`, which the right side
  dominates since `x^{(n−1)/(n+1)} ≥ x`.

*Needs:* 1.1; `gap:iterated-perron`; `gap:complex-stirling-constants`; LFunctions Layer 3 (the
functional equation and the residue); Tau Ceti `idealsLE`; AnalyticNumberTheoryPartI §2.15 for the
degenerate Check.

### 2.3 Lee's refinement

Define `leeIdealConstant n` as
`0.54 (3n − 1) λ(n) n^{3/2} n! / ((n − 1)² (log 𝔪(n))^{n−1})` with
`𝔪(n) = (π/4)ⁿ n^{2n}/(n!)²` and
`λ(n) = (n+1)^{1/2 − 1/(2n)} (5/8 + π/2 − 1/n + 3/(8n²))^{1/2} exp(n(2.27 + 4n/(n−1) + 0.01/n² + 1/(500 n⁶)))`
for `n ≤ 13`, and
`λ(n) = (n+1)^{n − 1/2 − 1/(2n)} (5/8 + π/2 + 1/n + 3/(8n²))^{1/2} exp(4.13 n + 0.02/n)` for
`n > 13` (`lee2023ideals` Theorem 1.2, p. 2, lines 57–70). Prove
`idealCount_lee`: for `n ≥ 2` and `x > 0`,
`| #idealsLE K x − κ_K x | ≤ leeIdealConstant n · d_K^{1/(n+1)} (log d_K)^{n−1} x^{1 − 2/(n+1)}`.
Route: Sunley's argument with the parameters optimised and the explicit bounds for the Mellin
kernels `K(w)` and `K^{(n)}(w)` of Lee's Theorems 3.1 and 3.2, which are targets of this
section.

**Checks.**

- `𝔪(2) = (π/4)² · 16/4 ≈ 2.467`, `log 𝔪(2) ≈ 0.9032`, `λ(2) ≈ 1.4735·10⁹`, and
  `leeIdealConstant 2 ≈ 2.49·10¹⁰`, the value `2.49133·10¹⁰` of the paper's Table 1 (line 46);
  `leeIdealConstant 3 ≈ 8.45·10¹¹` (line 47). A reading of the constant as `8.80·10¹¹` at `n = 2`
  is neither.
- The exponent of `log d_K` is `n − 1`, one less than Sunley's `n`; the exponent of `x` is the same
  `(n−1)/(n+1)`.
- `log 𝔪(n) > 0` for `n ≥ 2` (`𝔪(n) ≥ 𝔪(2) > 1`), so the constant is finite and positive; at
  `n = 1`, `𝔪(1) = π/4 < 1` and the formula is not defined, matching the hypothesis `n ≥ 2`.

*Needs:* 2.2's route; 1.1; `gap:iterated-perron`; `gap:complex-stirling-constants`.

### 2.4 Debaene's uniform count

Prove `idealCount_debaene` (`debaene2019` lines 107–115, Corollary 2): for `x ≥ 1`,
`| #idealsLE K x − κ_K x | ≤ n^{10n²} (R_K h_K)^{1/n} (1 + log⁺(R_K h_K))^{(n−1)²/n} x^{1−1/n}`,
and `classIdealCount_debaene` (lines 116–124): for a class `c` of the class group and `x ≥ 1`,
the number `N_c(x)` of nonzero integral ideals of norm at most `x` in `c` satisfies
`| N_c(x) − (κ_K/h_K) x | ≤ n^{10n²} R_K^{1/n} (1 + log⁺ R_K)^{(n−1)²/n} x^{1−1/n}`.
The source prints `1 + log` in place of `1 + log⁺`; its proof (lines 941–954) bounds
`log y ≤ 2r log(2rn) + log Reg_K` for a `y ≤ (2rn)^{2r} Reg_K` (respectively `h_K` times that)
and absorbs this into `2r log(2rn)(1 + log Reg_K)`, which needs `Reg_K ≥ 1`; with `log⁺` the same
step holds for every field, and for `R_K h_K ≥ 1` (respectively `R_K ≥ 1`) the two forms agree.
Route (Debaene's Theorem 11): the ideals of a class of norm at most `x` are the lattice points of
an ideal lattice in a norm-bounded region modulo units; the region is partitioned (Schmidt's
partition trick) into pieces whose boundaries have Lipschitz class independent of the fundamental
units, counted by 2.1 with the successive minima of the ideal lattice bounded through Minkowski's
second theorem and the regulator, and the sum over ideals of `N(𝔟)^{−(n−1)/n}` bounded by
`debaene2019` Lemma 12 (lines 876–899).

**Checks.**

- `K = ℚ(i)`, `R = h = 1`: the error term is `2^{40} x^{1/2}`; for `x = 10` the actual error is
  `|9 − 7.854| = 1.146`.
- The cubic field of discriminant `−23` (`α³ = α + 1`, fundamental unit `α`, `h = 1`):
  `R_K = log 1.324718 = 0.281200`, so `1 + log(R_K h_K) = −0.2687` and the printed form would take
  a real power of a negative base (Mathlib's `Real.rpow` gives `(−0.2687)^{4/3} = −0.087`, making
  the right side negative and the statement false); with `log⁺` the base is `1`.
- The class count summed over the `h_K` classes is the total count, and the error terms add to
  `h_K n^{10n²} R^{1/n}(1 + log⁺ R)^{(n−1)²/n} x^{1−1/n}`; since `(R h)^{1/n} ≤ h R^{1/n}` and
  `log⁺(R h) ≥ log⁺ R`, neither statement implies the other.
- `x < 1` is excluded: at `x = 1/2` the left side is `κ_K/2 > 0` while `x^{1−1/n} < 1`.

*Needs:* 2.1; Tau Ceti `idealsLE`, `rayClassIdealCountingFunction` at the trivial modulus;
GlobalNumberFields Layer 3 (the shape); Mathlib `Units.regulator`, `classNumber`,
`NumberField.mixedEmbedding.idealLattice`.

### 2.5 Counting ideals in narrow ray classes

Define `grsFieldConstant K = 1000 n^{12n²} (R_K/w_K)^{1/n} (log((2n)^{4n} R_K/w_K))ⁿ` and, for a
nonzero integral ideal `𝔮` with `𝔪 = (𝔮, all real places)` the narrow modulus,
`grsModulusConstant K 𝔮 = 2^{r₁} φ(𝔮) h_K / #RayClassGroup 𝔪` (`gunramaresivaraman2023` line 81),
where `φ(𝔮) = #(𝓞 K/𝔮)ˣ`. Prove `rayClassIdealCount_gunRamareSivaraman` (lines 66–80, Theorem 1):
for every class `c` of `RayClassGroup 𝔪` and `x ≥ 1`,
`| rayClassIdealCountingFunction 𝔪 c x − (κ_K φ(𝔮)/(#RayClassGroup 𝔪 · N𝔮)) x |`
`≤ grsFieldConstant K · F^{1/n} (log 3F)ⁿ (x/N𝔮)^{1−1/n} + n^{8n} R_K w_K F`
with `F = grsModulusConstant K 𝔮`. The main term is `rayClassIdealMainTerm 𝔪 · x`, since
`φ(𝔮)/N𝔮 = ∏_{𝔭 ∣ 𝔮}(1 − N𝔭⁻¹)`. Route: a fundamental domain for the congruence units built
from a Korkine–Zolotarev reduced basis, its Lipschitz class, and 2.1.

**Checks.**

- `𝔮 = 𝓞 K`, `K = ℚ`: `RayClassGroup` of `(1, ∞)` is trivial, `φ(𝔮) = 1`, so
  `F = 2^{r₁} φ(𝔮) h/#RayClassGroup = 2`, `n = 1`, `grsFieldConstant ℚ = 1000 · (1/2) · log 8 ≈
  1039.7`, and the statement is `|⌊x⌋ − x| ≤ 1039.7 · 2 · log 6 + 1 · 1 · 2 · 2 ≈ 3730`, true since
  the left side is below `1`; a definition of `F` without the factor `2^{r₁}` would give `F = 1`
  and the bound `1039.7 · log 3 + 2 ≈ 1144`.
- `1 ≤ F` (line 82): `#RayClassGroup 𝔪 ≤ 2^{r₁} φ(𝔮) h_K`, the exact sequence of the ray class
  group (line 1104, Lemma 13).
- At the trivial modulus the main term is `κ_K/h_K^{narrow}`, matching 2.4's main term only when
  the narrow and ordinary class numbers agree (`r₁ = 0`, or every signature is attained by a
  unit); for `K = ℚ(√3)` the narrow class number is `2` while `h = 1`, and the two counts differ.

*Needs:* 2.1; Tau Ceti `RayClassGroup`, `rayClassIdealCountingFunction`, `rayClassIdealMainTerm_eq`;
GlobalNumberFields Layers 2, 3; Mathlib `Units.regulator`, `Units.torsionOrder`.

### Examples

- `ℚ(i)`, `x = 10`: count `9`, main term `7.854`.
- `ℚ(√3)`: narrow class number `2`, class number `1`.
- The cubic field of discriminant `−23`: `R_K h_K = 0.2812 < 1/e`, where Debaene's printed
  `1 + log` turns negative and `1 + log⁺` is `1`.

### Dependencies

Layers 0 and 1; Tau Ceti geometry of numbers and ray-class counting; LFunctions Layer 3;
ExplicitZetaBounds (gaps: iterated Perron, Stirling).

## Layer 3: the residue

Louboutin's first bound `κ_K ≤ (e log d_K/(2n−2))^{n−1}` for `n ≥ 2` is
AnalyticNumberTheoryPartI §2.15 and is consumed; its positive Mellin comparison §2.15a is the route
of 3.1 and 3.2.

### 3.1 The zero-dependent upper bound

Prove `dedekindZeta_residue_le_of_real_zero` (`louboutin2001`, Theorem 1; quoted at
`louboutin2003` lines 297–300): for `n ≥ 2` and a real `β` with `1/2 ≤ β < 1` and `ζ_K(β) = 0`,
`κ_K ≤ (1 − β)(e log d_K/(2n))ⁿ`.
Route: in the split formula `F_K(s) = λ/(s(s−1)) + I(s)`, `I(s) = ∫_1^∞ S_K(x)(x^{s−1} + x^{−s}) dx`
of §2.15a, the kernel `u ↦ x^{u−1} + x^{−u}` is increasing on `u ≥ 1/2` for `x ≥ 1`; so
`F_K(β) = 0` gives `I(β) = λ/(β(1−β))`, and for real `s > 1`, `I(s) ≥ I(β)`, whence
`F_K(s) ≥ λ/(β(1−β)) ≥ λ/(1−β)` and `λ ≤ (1−β) F_K(s)`. The bound `ζ_K(s) ≤ ζ(s)ⁿ` and the
log-convexity of §2.15a at `s = 1 + 2n/log d_K` give the display, with the exponent `n` because no
factor `(s−1)^{−1}` is cancelled.

**Checks.**

- `K = ℚ(√5)`, if `ζ_K(β) = 0` with `β ∈ [1/2, 1)` then `κ_K = 0.4304 ≤ (1−β)(e log 5/4)² =
  (1−β) · 1.197`, so `1 − β ≥ 0.36`: no real zero in `[0.64, 1)`, consistent with the absence of
  real zeros of `L(s, χ₅)` in `(0, 1)`.
- The hypothesis `β ≥ 1/2` is used exactly once, in the monotonicity of the kernel; for
  `β < 1/2` the kernel is decreasing at `u = β` and the argument gives nothing, which is why the
  statement is restricted.
- `n = 1` is vacuous (`ζ` has no real zero in `(0, 1)`), and the formula would have `log 1 = 0`.

*Needs:* AnalyticNumberTheoryPartI §2.15a; LFunctions Layer 3.

### 3.2 The bound taking the prime `2` into account

Prove `dedekindZeta_residue_le_localFactor_two` (`louboutin2005` Theorem 10, inequality (13),
p. 569, line 307): for `n ≥ 3`,
`κ_K ≤ (Π_K(2)/2ⁿ) (e log d_K/(2n−2) · e^{n log 4/log d_K})^{n−1}`.
In the root discriminant `ρ_K = d_K^{1/n}` this is
`κ_K ≤ (Π_K(2)/2ⁿ) v_n ((e/2) log ρ_K · e^{log 4/log ρ_K})^{n−1}` with `v_n = (n/(n−1))^{n−1}`,
and `log ρ · e^{log 4/log ρ} = log ρ + (log 4) E(log 4/log ρ)` for `E(t) = (eᵗ − 1)/t`.
Route: in §2.15a replace `ζ_K(s) ≤ ζ(s)ⁿ` by `ζ_K(s) ≤ (Π_K(2, s)/(1 − 2^{−s})^{−n}) ζ(s)ⁿ`, where
`Π_K(2, s)` is the Euler factor of `ζ_K` at `2`, since the odd coefficients are bounded by `τ_n`
(0.3). At `s = 1 + 2(n−1)/log d_K ∈ (1, 6]` (Minkowski), `Π_K(2, s) ≤ Π_K(2)` and
`(1 − 2^{−s})ⁿ ≤ 2^{−n} 2^{n(s−1)} = 2^{−n} e^{n(n−1) log 4/log d_K}`; the rest is §2.15a, with
`g(6) ≤ 1` for every signature with `r₁ + r₂ ≥ 2`, which `n ≥ 3` guarantees.

**Checks.**

- `2` inert: `Π_K(2)/2ⁿ = 1/(2ⁿ − 1)`, so the bound improves Louboutin's first bound by that factor
  up to the exponential correction; `2` totally split: `Π_K(2)/2ⁿ = 1` and the bound is weaker
  than §2.15 by `e^{n(n−1) log 4/log d_K}`.
- `n = 2`, `K` imaginary quadratic with `2` inert (`d_K = 3`): `s* = 1 + 2/log 3 ≈ 2.82`, and
  `g(6) ≤ 1` fails for the signature `(0, 1)` (§2.15a), so the route needs `n ≥ 3`; the statement
  is not asserted at `n = 2`.
- A cubic field with `2` inert and `d_K = 23` (`ℚ(α)`, `α³ − α − 1 = 0`, irreducible modulo
  `2`, so `2` is inert; `r₁ = r₂ = 1`, `R_K = 0.281200`, `h = 1`, `w = 2`):
  `κ_K = 2 · 2π · 0.281200/(2√23) = 0.3684`; the bound is
  `(1/7)(e log 23/4 · e^{3 log 4/log 23})² = (1/7)(2.131 · 3.767)² ≈ 9.21`, true.

*Needs:* AnalyticNumberTheoryPartI §2.15a; 0.2; 0.3.

### 3.3 Friedman's unconditional lower bound

Prove `dedekindZeta_residue_ge_friedman` (`garcialee2022mertens` lines 1214–1224): for `n ≥ 2`,
`κ_K ≥ 0.36232/√d_K`. Route: `2^{r₁}(2π)^{r₂} ≥ 4` for `n ≥ 2`, `h_K ≥ 1`, and Friedman's bound
`R_K/w_K ≥ 0.09058` (`friedman1989`, Theorem B, cited by its locator; quoted at line 1215). The
lower bound that improves on this for `n ≥ 3`, Stark's, needs the one-zero lemma and is 4.7.

**Checks.**

- `K = ℚ(i)`: `κ = π/4 ≈ 0.785 ≥ 0.36232/2 = 0.181`; `K = ℚ(√5)`: `0.4304 ≥ 0.162`;
  `K = ℚ(ζ₅)`: `κ = 4π² · 0.9620/(10 √125) ≈ 0.3397 ≥ 0.0324`.
- The cubic field of discriminant `−23`: `κ = 0.3684 ≥ 0.36232/√23 = 0.0756`, with
  `R_K/w_K = 0.1406 ≥ 0.09058`.
- `n = 1`: `κ_ℚ = 1 ≥ 0.36232` holds, but the route's factor `2^{r₁}(2π)^{r₂}` is `2 < 4`
  there, which is why the statement is made for `n ≥ 2`.

*Needs:* Mathlib `dedekindZeta_residue_def`, `classNumber_pos`; `friedman1989` (locator).

### 3.4 Louboutin's zero-dependent lower bounds for totally imaginary fields

Define `louboutinRho m`, `louboutinRhoEmpty m` and `louboutinRhoTwo m` as the piecewise constants
of `louboutin2003` lines 78–82, Table 1, indexed by `2m ∈ {2, 4, 6, 8, 10, 12}` and constant
`2π²` (respectively `2π²`, `2π² Λ_{2}`) beyond: `louboutinRho = 270, 41, 26, 22, 21, 2π²`,
`louboutinRhoEmpty = 2600, 50, 25, 20, 2π², 2π²`, `louboutinRhoTwo = 36000, 650, 295, 222, 194, 181`
and `2π² Λ_{2} ≈ 167.63` beyond. Prove `dedekindZeta_residue_ge_louboutin` (lines 65–86,
Theorem 1), for `K` totally imaginary of degree `2n ≥ 2m`, `m ≥ 1`:

- (1) for a finite set `S` of primes, if `ρ_K ≥ louboutinRho m · Λ_S` and `ζ_K(β) ≤ 0` for some
  `β ∈ [1 − 2/log d_K, 1)`, then `κ_K ≥ (1/2)(1 − β) d_K^{(β−1)/2} Π_K(S)`;
- (2) if `S = ∅` and `ρ_K ≥ louboutinRhoEmpty m`, or `S = {2}` and `ρ_K ≥ louboutinRhoTwo m`,
  and `ζ_K(β) ≤ 0` for some `β ∈ [1 − 2/log d_K, 1 − 1/log d_K]`, then
  `κ_K ≥ (1 − β) d_K^{(β−1)/2} Π_K(S)`;
- (4) for `2n > 2` and `ρ_K ≥ 32π² Λ_{2} ≈ 2682.2`, if `ζ_K(β) ≤ 0` for some
  `β ∈ [1 − 2/log d_K, 1)`, then `κ_K ≥ (1 − β) d_K^{(β−1)/2}`.

Route (lines 106–135): for totally imaginary `K` the completion is
`F_K(s) = A^s Γ(s)ⁿ ζ_K(s)`, `A = √d_K/(2π)ⁿ`, with the positive inverse Mellin kernel `H_n` of
`Γ(s)ⁿ`; the split formula `F_K(s) = λ(1/s + 1/(1−s)) + ∫_1^∞ S_K(x)(x^s + x^{1−s}) dx/x` and
`ζ_K(β) ≤ 0` give a lower bound for `λ = A κ_K` by the part of the integral over `x ≥ 1`, whose
first term `H_n(x/A)` is bounded below explicitly; the Euler factors at `S` enter by comparing
`S_K` with the series of the ideals prime to `S`. The thresholds are the numerical conditions under
which the kernel bounds hold.

**Checks.**

- `m = 1`, `S = ∅`, `K` imaginary quadratic with `d_K ≥ 270²`: if `ζ_K(β) ≤ 0` with
  `β ≥ 1 − 2/log d_K` then `κ_K ≥ (1/2)(1−β) e^{−1}`; at `β = 1 − 1/log d_K` this is
  `κ_K ≥ 1/(2e log d_K)`, consistent with the class-number formula `κ_K = 2πh/(w√d_K)` only when
  `h ≥ w√d_K/(4πe log d_K)`, a form of Siegel's bound.
- `Λ_{2} = (1 + 2^{−1/2})⁴ ≈ 8.4926`, so `louboutinRho 1 · Λ_{2} ≈ 2293` while
  `louboutinRhoTwo 1 = 36000`: the table of (2) is not the product form of (1); and
  `2π² Λ_{2} ≈ 167.638`, `32π² Λ_{2} ≈ 2682.21`, the two constants of the statement.
- `β < 1 − 2/log d_K` is outside the statement; at `β = 1/2` and `d_K = 10⁶`, `d_K^{(β−1)/2} =
  10^{−1.5}`, and the right side is below `κ_K` for every field in the range, so the hypothesis
  on `β` is what makes the bound non-trivial.

*Needs:* LFunctions Layer 3 (the completed function and functional equation for totally
imaginary `K`); AnalyticNumberTheoryPartI §2.15a (the Mellin split); 0.2.

### 3.5 The explicit Duke short-sum theorem on Euler-product records

Define `dedekindQuotientData K` as the record of LFunctions Layer 0 with coefficients those of the
Dirichlet series `ζ_K(s)/ζ(s)` (the convolution of `a_K` with `μ`), conductor `d_K`, real gamma
shifts `0` with multiplicity `r₁ + r₂ − 1` and `1` with multiplicity `r₂` (from
`Γ_ℝ(s)^{r₁−1} Γ_ℂ(s)^{r₂}` by duplication), root number `1`, completed function
`Λ_K(s)/Λ_ℚ(s)` and empty polar divisor.

- It has Dirichlet agreement on `Re s > 1`, degree `n − 1`, and an Euler product whose local
  polynomial at `p` is `(1 − p^{−s})⁻¹ ∏_{𝔭 ∣ p}(1 − p^{−f_𝔭 s})` reciprocal, with inverse roots
  roots of unity; its functional equation `Λ(s) = Λ(1 − s)` follows from those of `Λ_K` and
  `Λ_ℚ`.
- Under `DedekindConjecture K` it has `HasMeromorphicContinuation` with no poles and its completed
  function is entire; `GRH` for it (ZerosOfLFunctions Layer 9) is implied by `DedekindERH K`.

**Checks.**

- `K = ℚ(i)`: the record is `dirichletData χ₋₄` field by field (degree `1`, conductor `4`, shift
  `1`).
- `K = ℚ`: degree `0`, coefficients `1, 0, 0, …`, completed function `1`.
- A real cubic field: shifts `{0, 0}`, degree `2`; a record with the shift `1` once (as for a
  complex cubic field) differs in its gamma factor, and the two functional equations are not
  interchangeable.

The prime-reciprocal input is Garcia–Lee's extension of Schoenfeld's bound to `x ≥ 1.048`, the
range that conductors `N ≥ 3` need (`(log 3)^{1/2} = 1.0481`). With `M = mertensConstant ℚ` and
`m(x) = (3 log x + 4)/(8π√x) + 5/x²`, declare `GarciaLeeMertensSmallRange` as the `Prop`: for
every real `x` with `1.048 ≤ x < 13.5`, `|Σ_{p ≤ x} 1/p − log log x − M| < m(x)`
(`garcialee2022artin` lines 129–131, verified there by direct computation, Figure 1). Prove
`primeReciprocalSum_sub_lt_rh` (`garcialee2022artin` lines 121–131, Lemma 3): under
`RiemannHypothesis` and `GarciaLeeMertensSmallRange`, for every real `x ≥ 1.048`,
`|Σ_{p ≤ x} 1/p − log log x − M| < m(x)`. Route: for `x ≥ 13.5`, `gap:explicit-mertens-second`
with `(3 log x + 4)/(8π√x) < m(x)`; below, the `Prop`.

**Checks.**

- `x = 1.048`: the sum is empty, `log log 1.048 = −3.0601` and the left side is `2.7986`, against
  `m(1.048) = 4.7134`; the unconditional error `1/log² x` of the Rosser–Schoenfeld form would be
  `454.9` there, which is why the theorem is the conditional one.
- `x = 13.5`: `Σ_{p ≤ 13} 1/p = 1.344022`, `log log 13.5 = 0.956545`, left side `0.125980`, below
  Schoenfeld's `(3 log 13.5 + 4)/(8π√13.5) = 0.127871` and `m(13.5) = 0.155306`; without the
  term `5/x²` the bound would be Schoenfeld's, which fails below `13.5` (at `x = 2` it is
  `0.171044` against the left side `0.605016`).
- The tightest point of the `Prop` is `x = 7`: `Σ_{p ≤ 7} 1/p = 1.176190`, `log log 7 = 0.665730`,
  left side `0.248963` against `m(7) = 0.249988` (the clearance `0.0010` of
  `garcialee2022artin` lines 145–147); a constant below `4.95` in place of the `5` of `5/x²`
  fails there.
- Just below `x = 2` the left side is `|log log x + M| → 0.105016`; at `x = 2` the sum jumps by
  `1/2` and the left side is `0.605016`, both below `m(2) = 1.421044`, so the sum over `p ≤ x` and
  the sum over `p < x` both satisfy the bound there, while they differ at every prime.

Prove `dukeShortSum_explicit` (`garcialee2022artin` lines 24–29, Theorem 1): for a record `d` of
degree `m ≥ 1` and conductor `N ≥ 3` with Dirichlet agreement, an Euler product with inverse roots
in the closed unit disc, real gamma shifts in `{0, 1}`, no complex shifts, entire completion,
functional equation, `GRH` for `d`, `RiemannHypothesis` and `GarciaLeeMertensSmallRange`,
`| log L(1) − Σ_{p ≤ (log N)^{1/2}} a(p)/p | ≤ 13.53 m`,
where `a(p)` is the sum of the inverse roots at `p`, `L(1)` is the value of the continued function,
and `log L(1)` is the value at `1` of the continuous logarithm of `σ ↦ L(σ)` on `[1, ∞)` that
equals `Σ_p Σ_{k ≥ 1} (α₁(p)^k + ⋯ + α_m(p)^k)/(k p^{kσ})` for `σ > 1` (the `α_i(p)` the inverse
roots). It exists because `L` has no zero on `[1, ∞)`: on `(1, ∞)` by the Euler product, and at
`1` because a zero there would be a zero of the entire completion off `Re s = 1/2`; it agrees at
`1` with the holomorphic logarithm on `Re s > 1/2` that `GRH` provides (`garcialee2022artin`
lines 136, 152–167). `RiemannHypothesis` is a separate hypothesis because the record's `GRH` does
not contain it. Route: the explicit formula for the entire completion with its Hadamard product
(ZerosOfLFunctions 5.5–5.6), `GRH` to place every zero on `Re s = 1/2`, explicit gamma-function
integrals, and `primeReciprocalSum_sub_lt_rh` at `x²` and at `y` (lines 690–718).

**Checks.**

- `d = dirichletData χ₋₄` under `DirichletGRH χ₋₄`: `log(π/4) = −0.2416`, `(log 4)^{1/2} = 1.18`,
  the empty prime sum, and `|−0.2416| ≤ 13.53`.
- `m = 0` is excluded: `L = 1` and the statement would read `0 ≤ 0`, true but not Duke's theorem;
  `N < 3` makes `(log N)^{1/2}` ill-defined or below `2`.
- A record with a pole at `1` (`ζ` itself) is excluded by the entirety hypothesis; the statement
  is false for it since `log L(1)` is not defined.
- The branch: for `d = dedekindQuotientData K` the coefficients are real and `L(σ) > 0` on
  `[1, ∞)` (it has no zero there and tends to `1`), so the continuous logarithm is the real
  logarithm and `log L(1) = log κ_K`; the choice of branch matters only for records with
  non-real coefficients, such as `dirichletData χ` for a cubic character `χ` modulo `7`.

*Needs:* LFunctions Layer 0 (`ofSeries`), Layer 3; Mathlib `Complex.Gammaℝ_mul_Gammaℝ_add_one`,
`RiemannHypothesis`; Tau Ceti `TauCeti.LFunctions.mertensConstant`; ArithmeticDirichletSeries
`EulerProductData` (through AnalyticNumberTheoryPartI §2.18's unit-disc coefficient
construction); ZerosOfLFunctions 5.5, 5.6, Layer 9; `gap:explicit-mertens-second`;
`gap:complex-stirling-constants`; 0.5.

### 3.6 The conditional two-sided bound

Prove `dedekindZeta_residue_two_sided_grh` (`garcialee2022artin` lines 62–71, Corollary 2): for
`n ≥ 2`, under `DedekindERH K`, `DedekindConjecture K` and `GarciaLeeMertensSmallRange`,
`e^{−17.81(n−1)}/log log d_K ≤ κ_K ≤ (e^{17.81} log log d_K)^{n−1}`,
and the sharper pairs `(17.81, 17.81)`, `(17.54, 18.87)`, `(22.52, 24.1)`, `(26.93, 28.2)`,
`(32.24, 33.36)` for `n = 2, …, 6`, in the form `1/(e^{a} log log d_K) ≤ κ_K ≤ e^{b}(log log d_K)^{n−1}`.
Route: 3.5 at `dedekindQuotientData K`, whose value at `1` is `κ_K` and whose `GRH` follows from
`DedekindERH K`; `RiemannHypothesis` follows too, since `ζ_K = F ζ` with `F` entire makes every
zero of `ζ` in the strip a zero of `ζ_K`. The prime coefficients are `a(p) = a_K(p) − 1`, so
`−1 ≤ a(p) ≤ n − 1` (`garcialee2022artin` line 886, (29): `−1` when `p` is inert, `n − 1` when
`p` splits completely); the upper bound for `κ_K` uses `a(p) ≤ n − 1`, the lower bound uses
`a(p) ≥ −1` (with only `|a(p)| ≤ n − 1` it would come out as `(log log d_K)^{−(n−1)}`), and both
use the upper side of `primeReciprocalSum_sub_lt_rh` at `x = (log d_K)^{1/2} ≥ 1.048`, with
`d_K ≥ 3`.

**Checks.**

- `K = ℚ(i)` (`n = 2`, `d_K = 4`, `log log 4 = 0.3266`): `1/(e^{17.81} · 0.3266) ≤ π/4 ≤
  e^{17.81} · 0.3266`, true with much room.
- `log log d_K > 0` needs `d_K > e`, which `n ≥ 2` gives (`d_K ≥ 3`); at `n = 1` the left side
  divides by `log log 1 = log 0`.
- The hypothesis `DedekindConjecture K` holds for Galois `K` by 0.5 and is not needed for
  `n ≤ 4` (line 72–74 says it is known for cubic and quartic fields); the statement keeps it as a
  hypothesis in every degree.

*Needs:* 3.5 (`dukeShortSum_explicit`, `primeReciprocalSum_sub_lt_rh`,
`GarciaLeeMertensSmallRange`); 0.5; AnalyticNumberTheoryPartI §2.42.

### Examples

- `ℚ(√5)`: `κ = 0.4304`; the real-zero-dependent bound shows no real zero in `[0.64, 1)`.
- The cubic field of discriminant `−23` with `2` inert: `κ = 0.3684`.

### Dependencies

Layer 0; AnalyticNumberTheoryPartI §§2.15, 2.15a, 2.18, 2.42; LFunctions Layers 0, 3;
ZerosOfLFunctions Layers 5, 9; Tau Ceti `mertensConstant`; ExplicitPrimeCounting (gap);
`friedman1989` by locator.

## Layer 4: zeros of `ζ_K`

### 4.1 Trudgian's zero count

Define `dedekindZetaZeroCount K T` as `N_K(T)` of the conventions. Prove
`dedekindZeta_zeroCount_trudgian` (`trudgian2015` lines 25–27, Theorem 2): for `T ≥ 1`,
`| N_K(T) − (T/π) log(d_K (T/(2πe))ⁿ) | ≤ 0.317 (log d_K + n log T) + 6.333 n + 3.482`.
Trudgian's own parameter ranges were not verified (`hasanalizadeshenwong2022` lines 37–50, after
Bennett–Martin–O'Bryant–Rechnitzer); the statement is supported by the repaired admissible triple
`(D₁, D₂, D₃) = (0.296, 3.971, 3.969)` for `T ≥ 1` of `hasanalizadeshenwong2022` Table 1
(line 76, Corollary 1.2), which implies it for every `K` and `T ≥ 1`, since the difference of the
two right sides is `0.021 (log d_K + n log T) + 2.362 n − 0.487 > 0` for `n ≥ 1`.
Route (Backlund's method, with Hasanalizade–Shen–Wong's tracking of every parameter range):
apply the argument principle on the rectangle
`Icc (−η') (1+η') ×ℂ Icc (−T) T` to the entire completion
`entireCompletion (dedekindZetaData K)`, in which the poles at `0` and `1` are cleared
(ZerosOfLFunctions 7.2 with 4.2), read the main term off
the gamma factors by the explicit Stirling bounds, bound the argument variation of `ζ_K` on the
horizontal edges by Backlund's lemma with `M` from 1.1 at the base point `c = 1 + η' + iT`, and
pass back to `Λ_K` by 4.2 and 6.5.

**Checks.**

- `K = ℚ`, `T = 15`: `N_ℚ(15) = 2`, main term `(15/π) log(15/(2πe)) = 4.775 · (−0.1298) = −0.620`,
  error bound `0.317 · 2.708 + 6.333 + 3.482 = 10.67`, and `|2 + 0.620| ≤ 10.67`.
- `K = ℚ(i)`, `T = 100`: `ζ_K = ζ · L(s, χ₋₄)`, so `N_K(100) = N_ℚ(100) + N(100, χ₋₄)` with both
  counts symmetric in `γ` (`trudgian2015` line 17, `hasanalizadeshenwong2022` line 27);
  `N_ℚ(100) = 2 · 29 = 58`, and Trudgian's Theorem 1 for `χ₋₄` (`k = 4`) places `N(100, χ₋₄)` within
  `(100/π) log(400/(2πe)) ± (0.317 log 400 + 6.401) = 100.38 ± 8.30`, so `150 ≤ N_K(100) ≤ 166`.
  The main term is `(100/π) log(4 (100/(2πe))²) = 31.83 · 4.921 = 156.64` and the bound is
  `0.317 (1.386 + 2 · 4.605) + 12.666 + 3.482 = 19.51`, which covers the whole range; a one-sided
  count of the zeros of `L(s, χ₋₄)` (about `50`) would give `N_K(100) ≈ 108`, outside it.
- `T < 1` is excluded; at `T → 0⁺` the main term tends to `0` and `N_K(0) = 0`, consistent, but
  the proof's base point needs `T ≥ 1`.

*Needs:* ZerosOfLFunctions 4.1, 4.2, 6.5, 7.1, 7.2, 7.3; 1.1; `gap:backlund-argument-lemma`;
`gap:complex-stirling-constants`; LFunctions Layer 3.

### 4.2 Hasanalizade–Shen–Wong's zero count

Prove `dedekindZeta_zeroCount_hsw` (`hasanalizadeshenwong2022` lines 52–54, Theorem 1.1): for
`T ≥ 1`,
`| N_K(T) − (T/π) log(d_K (T/(2πe))ⁿ) + r₁/4 | ≤ 0.22737 log(d_K (T+2)ⁿ/(2π)ⁿ) + 23.02528 n + 4.51954`,
and `dedekindZeta_zeroCount_hsw_cor` (lines 63–65, Corollary 1.2):
`| N_K(T) − (T/π) log(d_K (T/(2πe))ⁿ) | ≤ 0.228 (log d_K + n log T) + 23.108 n + 4.520`.
Route: 4.1's method with Bennett–Martin–O'Bryant–Rechnitzer's refinement of the argument-count
lemma and the term `r₁/4` kept from the gamma factors; the corollary absorbs `r₁/4 ≤ n/4` and
`log(T+2) − log T ≤ log 3`.

**Checks.**

- `K = ℚ`, `T = 15`: `|2 + 0.620 + 1/4| = 2.87 ≤ 0.22737 · log(17/(2π)) + 23.03 + 4.52 = 27.78`.
- The corollary's constant `0.228 > 0.22737` and `23.108 > 23.02528` absorb `r₁/4` and the shift
  from `T + 2` to `T`; the triple `(0.316, 5.872, 3.655)` of Trudgian's Table 2 is not a target
  (line 39–41: those table rows were repaired by this paper).
- `K` totally complex: `r₁ = 0` and Theorem 1.1 has no shift; for `K = ℚ(√2)`, `r₁ = 2` and the
  shift is `1/2`, consistent with `N_K(T) = N_ℚ(T) + N(T, χ₈)` and the two shifts `1/4`.

*Needs:* 4.1's inputs.

### 4.3 Real zeros

Prove `dedekindZeta_stark_one_zero` (Stark's lemma, `louboutin2017` lines 25–26 and
`louboutin2015ijnt` lines 27–28): for `n ≥ 2`, `ζ_K` has at most one zero `ρ = β + iγ` with
`β > 1 − 1/(4 log d_K)` and `|γ| ≤ 1/(4 log d_K)`, and if it exists it is real and simple.
Route (Stark): for real `σ > 1`, `0 < −ζ'_K/ζ_K(σ)`, while the partial-fraction expansion of
`Λ'_K/Λ_K` (ZerosOfLFunctions 5.6, 6.4(4d)) gives
`−ζ'_K/ζ_K(σ) = 1/(σ−1) + 1/σ + (1/2) log d_K + (gamma terms) − Σ_ρ Re(1/(σ−ρ))`, the gamma
terms being nonpositive on `1 < σ ≤ 2` by the explicit digamma bounds; two zeros (or a double
zero, or a non-real pair) in the region make the zero sum at `σ = 1 + 1/(4 log d_K)` too large.

Prove `dedekindZeta_real_zeros_le` (`louboutin2015ijnt` lines 48–50, Theorem 3): for `m ≥ 1`,
`c_m = 2(√(m+1) − 1)²`, and `log d_K > max(2(√(m+1) − 1), c_m)`, `ζ_K` has at most `m` real zeros,
with multiplicity, in `σ ≥ 1 − c_m/log d_K`; and `dedekindZeta_real_zeros_le'` (lines 84–91,
Theorem 6): with `c'_m = ((5 + √5)/4) c_m` and `d_K > exp((5 + √5)(√(m+1) − 1)²)`, at most `m`
real zeros, with multiplicity, in `σ ≥ 1 − c'_m/log d_K`, and this abscissa exceeds `1/2`.
Route: Stark's inequality with `m + 1` zeros, and for Theorem 6 Stechkin's differencing of the
logarithmic derivative between `σ` and the auxiliary point `σ'` of Stechkin's lemma, with the
weight `λ = 1 − 1/√5`, which turns the pole term `1/(σ − 1)` into `λ/(σ − 1)` at the cost of the
factor `(5 + √5)/4` in the constant.

Prove `dedekindZeta_nonpos_of_odd_galois` (lines 51–59, Corollary 4 and its proof): for `K/ℚ`
Galois of odd degree `n ≥ 3` and `c₂ = 2(√3 − 1)² ≈ 1.0718`, `ζ_K` has no real zero of odd
multiplicity in `[1 − c₂/log d_K, 1)`, and consequently `ζ_K(σ) ≤ 0` for every `σ` in that
interval. Route: a field of odd degree has no quadratic subfield, so by Stark's theorem
(AnalyticNumberTheoryPartI §2.31e: a simple real zero of `ζ_K` for Galois `K` is a zero of
`ζ_F` for a quadratic subfield `F`) no real zero of `ζ_K` is simple; a zero of odd multiplicity
in the interval then has multiplicity at least `3`, against Theorem 3 at `m = 2` (at most two
real zeros with multiplicity in `σ ≥ 1 − c₂/log d_K`, whose hypothesis `log d_K > 1.464` holds
since `d_K ≥ 21` for `n ≥ 3`); with no sign change on the interval and `ζ_K(σ) → −∞` as
`σ → 1⁻`, `ζ_K ≤ 0` there. The source states the stronger "no real zero in `σ ≥ σ₂`", but its
proof excludes only zeros of odd multiplicity: a double real zero is allowed by Theorem 3 at
`m = 2` and does not change sign.

**Checks.**

- `m = 1`: `c₁ = 2(√2 − 1)² ≈ 0.3431 > 1/4`, so Theorem 3 at `m = 1` improves Stark's constant
  `1/4` on the real axis, as `louboutin2017` lines 27–30 note; Theorem 6 at `m = 1` gives
  `c'₁ = ((5+√5)/4) · 0.3431 ≈ 0.6207` for `d_K > e^{1.2416} = 3.46`.
- `K = ℚ(√5)` (`d_K = 5`, `log 5 = 1.609 > max(1.464, 1.072)`, `m = 2`): at most two real zeros
  in `σ ≥ 1 − 0.666`; there are none.
- `K = ℚ(ζ₇)⁺` (Galois cubic, `d_K = 49`): `1 − 1.0718/3.892 = 0.7246`, so `ζ_K ≤ 0` on
  `[0.7246, 1)`. Here `ζ_K = ζ · L(s, χ) L(s, χ̄)` for the cubic character `χ` modulo `7`, and a
  real zero `β` of `L(s, χ)` would also be a zero of `L(s, χ̄)` (the values are conjugate), so a
  double zero of `ζ_K`: the corollary does not exclude it, which is why it is stated for zeros of
  odd multiplicity.
- `K = ℚ(√5)` (degree `2`, not odd): the corollary does not apply, since the quadratic subfield
  `K` itself can carry a simple real zero.
- `K = ℚ`: `log d_K = 0` and every hypothesis fails; `ζ` has no real zero in `(0, 1)` anyway.

*Needs:* ZerosOfLFunctions 5.6, 6.4(4d), 6.5; LFunctions Layer 3; ComputationalNumberTheory
§4.17a; AnalyticNumberTheoryPartI §2.31e (for the corollary); Mathlib `abs_discr_ge`.

### 4.4 Louboutin's Stark-like regions

Define `starkLikeRegion K c d` as `{s | Re s > 1 − c/log d_K ∧ |Im s| ≤ d/log d_K}` for `n ≥ 2`,
and `louboutinS0` as the unique root in `[0, 1]` of `P(S) = S⁴ + 2S³ − 2S² − 4S + 2`
(`louboutin2017` lines 31–34, where the interval is printed as `[0, √2]`, which contains a second
root), with `louboutinD1 = 2(1 − S₀ − S₀²)/(2 + S₀)`, `louboutinC1 = 2(√2 − 1)²`,
`louboutinLambda = 1 − 1/√5`, `louboutinC2 = C1/λ`, `louboutinD2 = D1/λ`.

- `S₀ ≈ 0.45433`, `D1 ≈ 0.27644`, `C1 ≈ 0.34314`, `C2 ≈ 0.62075`, `D2 ≈ 0.50009`, each as a
  two-sided rational enclosure.
- `P(0) = 2 > 0` and `P(1) = −1 < 0`; `P'(S) = 4S³ + 6S² − 4S − 4` is negative on `[0, 0.889)`
  and positive after, so `P` decreases to its minimum `−1.107` at `0.889` and then increases to
  `P(1) = −1`; hence `P` has exactly one sign change on `[0, 1]`, at `0.454334`, and the root is
  simple (`P(0.4543) = 0.00014`, `P(0.4544) = −0.00028`).
- On `[0, √2]` there is a second root `1.221332`, since `P(√2) = 4 + 4√2 − 4 − 4√2 + 2 = 2 > 0`;
  a definition by "the root in `[0, √2]`" does not determine `S₀`, and taking the larger root
  would give `1 − S₀ − S₀² < 0` and `D1 < 0`.

Prove `dedekindZeta_one_zero_starkLike`: Stark's conclusion (at most one zero, real and simple)
holds in `starkLikeRegion K c d` for `(c, d) ∈ {(C1, 0), (D1, D1)}` (lines 31–35, Theorem 2),
`{(C2, 0), (D2, D2), (0.59110, 1/4)}` (lines 47–52, Theorem 3), and `(0.10379, 1)` when
`d_K > 8` (line 53). Route: Stark's inequality as in 4.3 with Stechkin's weight `λ` for Theorem 3,
the quartic equation for `S₀` arising from optimising the comparison point.

**Checks.**

- `(1/4, 1/4)` is Stark's region of 4.3 and is contained in `(C1, 0)`'s real part and in
  `(D1, D1)` since `D1 > 1/4`.
- `(0.59110, 1/4)` contains Kadiri's `(1/1.7, 1/4)` region, since `0.59110 > 1/1.7 = 0.58823`
  (line 52–53), and is unconditional in `d_K` where Kadiri's has a threshold.
- `d_K ≤ 8`: the region `(0.10379, 1)` is not asserted; for `K = ℚ(√5)`, `d_K = 5`, the other
  regions apply.

*Needs:* 4.3's inputs; Mathlib `Polynomial`, intermediate value theorem.

### 4.5 Kadiri's explicit regions

Prove `dedekindZeta_zeroFree_kadiri` (`kadiri2012` lines 79–82, Theorem 1.1): there is an absolute
`D₀` such that for `d_K ≥ D₀`, `ζ_K` has no zero with `|t| ≥ 1` and
`σ ≥ 1 − 1/(12.55 log d_K + 9.69 n log|t| + 3.03 n + 58.63)`, and at most one zero, real and
simple, with `|t| ≤ 1` and `σ ≥ 1 − 1/(12.74 log d_K)`; and `dedekindZeta_one_zero_kadiri_cor`
(lines 87–92, Corollary 1.2): for `d_K ≥ D₀`, at most one zero, real and simple, in each of
`σ ≥ 1 − 1/(2 log d_K)`, `|t| ≤ 1/(2 log d_K)` and `σ ≥ 1 − 1/(1.70 log d_K)`,
`|t| ≤ 1/(4 log d_K)`. Route (de la Vallée Poussin with Stechkin's trick): the nonnegative
degree-four trigonometric polynomial `P₄` of Kadiri applied to `−Re ζ'_K/ζ_K` at `σ + ikt`,
the Hadamard expansion with the explicit gamma terms from the digamma remainders, and the
Stechkin difference `−Re(ζ'_K/ζ_K)(s) + Re(ζ'_K/ζ_K)(s')` between `s` and Stechkin's auxiliary
point `s'` with weight `λ = 1 − 1/√5`; the threshold
`D₀` is where the lower-order terms are absorbed (line 93–94: the theorems can be made explicit
for every `log d_K`, with other constants).

**Checks.**

- `K = ℚ`, `|t| = 14.13`: the region reads `σ ≥ 1 − 1/(9.69 · 2.648 + 3.03 + 58.63) = 0.9885`,
  weaker than the classical `1 − 1/(5.573 log t) = 0.932`, consistent.
- The two Corollary regions are the `(1/2, 1/2)` and `(1/1.7, 1/4)` Stark-like regions, quoted at
  `louboutin2017` lines 36–37; 4.4 gives `(0.59110, 1/4)` without a threshold.
- The constant `1.62`, sometimes attached to these regions, occurs in neither text and is not a
  target.

*Needs:* ZerosOfLFunctions 5.6, 6.1, 6.4(4d), 6.5; `gap:nonnegative-trig-polynomials`;
ComputationalNumberTheory §4.17a; LFunctions Layer 3.

### 4.6 Lee's refinement

Prove `dedekindZeta_zeroFree_lee` (`lee2021zerofree` lines 103–105, Theorem 1, arXiv v3): for every
number field `K` and `|t| ≥ 1`, `ζ_K` has no zero with
`σ ≥ 1 − 1/(12.2411 log d_K + 9.5347 n log|t| + 0.05017 n + 2.2692)`; and
`dedekindZeta_one_zero_lee` (lines 106–109, Theorem 2): there is an absolute `D₁` such that for
`d_K ≥ D₁`, `ζ_K` has at most one zero with `|t| < 1` and `σ ≥ 1 − 1/(12.43436 log d_K)`, real
and simple. Route: Kadiri's argument with the Mossinghoff–Trudgian degree-sixteen polynomial and
the improved constants `S(k)` (lines 110–135).

**Checks.**

- `K = ℚ`, `|t| = 14.13`: `σ ≥ 1 − 1/(9.5347 · 2.648 + 0.05017 + 2.2692) = 0.9637`, consistent.
- Theorem 1 carries no threshold on `d_K` (line 103–105), unlike Kadiri's. It is stated with the
  constant `0.05017` of arXiv v3; the published version prints `0.0501`, which gives a slightly
  wider region, so the target is implied by either version.
- `R = 12.43436 < 12.74`: the one-zero region is wider than Kadiri's, as it must be for an
  improvement; it is not wider than the Stark-like `(0.10379, 1)` of 4.4 in the real direction
  (`1/12.43 = 0.0804 < 0.10379`), while it is unbounded in `|t| < 1` where 4.4 caps at
  `1/log d_K`.

*Needs:* 4.5's inputs.

### 4.7 Stark's explicit lower bound for the residue

Define `starkAlpha K` as `4` if `K/ℚ` is Galois, `16` if `K` is not Galois and
`HasNormalTower K`, and `4 · n!` otherwise, and `starkG K` as `1` if `HasNormalTower K` and `n!`
otherwise (Stark's `α(n_K)` and Garcia–Lee's `g(n_K)`, `garcialee2022mertens` lines 1227–1253).
Let `c₄ = 2 exp(21/8 − ψ(1/2)/(4 log 3)) ≈ 43.162115`, Stark's `2e^{21/8 + c₁/2 − (c₂/8)ψ(1/2)}`
with `c₁ = 0`, `c₂ = 2/log 3` and `ψ = Γ'/Γ` (lines 1270–1277; `ψ(1/2) = −γ − 2 log 2`).

- `starkAlpha K ∈ {4, 16, 4 · n!}` and `starkG K ∈ {1, n!}`; `starkG K = 1` iff
  `HasNormalTower K`.
- `starkAlpha K ≤ 16 · starkG K` in every case (`4 ≤ 16`, `16 ≤ 16`, `4 · n! ≤ 16 · n!`), so
  `1/(c₄ starkAlpha K) ≥ 1/(16 c₄ starkG K) = 0.00144803/starkG K`.
- `starkAlpha K ≤ 4 · n!` for `n ≥ 3`, with equality exactly when `K` has no normal tower.

**Checks.**

- `ℚ(ζ₅)` (Galois quartic): `starkAlpha = 4`, `starkG = 1`; `ℚ(2^{1/4})` (not Galois, normal
  tower `ℚ ⊂ ℚ(√2) ⊂ ℚ(2^{1/4})`): `starkAlpha = 16`, `starkG = 1`; a non-Galois cubic field (no
  normal tower): `starkAlpha = 4 · 3! = 24`, `starkG = 6`.
- A definition with only the two cases "Galois: `4`, otherwise: `4 · n!`" would give
  `ℚ(2^{1/4})` the value `96` in place of `16`, and one with `starkG = 1` for Galois fields only
  would give it `24` in place of `1`.
- The constant: `ψ(1/2) = −1.963510`, so `c₄ = 2 e^{2.625 + 0.446816} = 43.162115`; with the
  rounded `43.2` in its place the normal-tower bound would be `1/(43.2 · 16) = 0.0014468`, below
  the `0.0014480` of the consequences, so the consequences need `c₄` itself.

Prove `dedekindZeta_residue_ge_stark` (`garcialee2022mertens` lines 1226–1305, Stark's theorem
with Garcia–Lee's constants): for `n ≥ 3`,

- if `K` has no quadratic subfield, `κ_K > 1/(c₄ · starkAlpha K · log d_K)` (line 1254), with no
  further hypothesis; consequently `κ_K > 0.0014480/(starkG K · log d_K)` (lines 1292–1302);
- for every `c₈ > 0` with `QuadraticRealZeroGap c₈`,
  `κ_K > (1/c₄) min(1/(starkAlpha K · log d_K), 1/(c₈ d_K^{1/n}))` (lines 1239–1245);
  consequently, under `QuadraticRealZeroGap (π/6)`,
  `κ_K > 0.0014480/(n · starkG K · d_K^{1/n})` (line 150, lines 1255–1291: the minimum is at
  least `(1/(c₈ d_K^{1/n})) min(e c₈/(n · starkAlpha K), 1)` by `d_K^{1/n} ≥ (e/n) log d_K`, for
  every `K`, and `e c₈/(n · starkAlpha K) < 1`).

Route (Stark 1974, Lemmas 2–4 and 8, with the constants of `garcialee2022mertens` §3): integrate
the logarithmic derivative of `Λ_K` from `σ₀ = 1 + 1/(4 log d_K)` to `1`, isolate the possible real
zero with the one-zero lemma of 4.3, and when the zero is close use Stark's quadratic subfield `F`
of the quadratic-subfield theorem (AnalyticNumberTheoryPartI §2.31e, which states that theorem;
its residue bounds allow ineffective constants and are not used here), the normal-closure
discriminant bounds of §2.31d and the gap hypothesis at `F`.

**Checks.**

- For a Galois cubic field with `d_K = 49` (`ℚ(ζ₇)⁺`, no quadratic subfield): `starkAlpha = 4`,
  and the first clause gives `κ > 1/(43.1621 · 4 · 3.892) = 0.001488`, while
  `κ_K = 2³ R_K/(2 · 7) = 0.3003` (`R_K = 0.525455`, `h = 1`).
- The second clause carries `QuadraticRealZeroGap c₈` because the only cited justification of
  `c₈ = π/6` is a remark (`garcialee2022mertens` lines 1277–1279, 1306–1310); Pintz's
  `π/12 + o(1)` is asymptotic. A theorem stating the `d_K^{1/n}` form without the hypothesis would
  assert an unproved claim, while the first clause needs none.
- The normal-tower case of the consequence: `1/(c₄ · 16) = 0.00144803 > 0.0014480`, the margin
  being `3·10⁻⁸`; the Galois and no-tower cases have the larger constants `1/(4c₄) = 0.0057921`
  and `0.0057921/n!`.

*Needs:* Mathlib `dedekindZeta_residue_def`, `Complex.digamma`; 0.5 (`QuadraticRealZeroGap`,
`HasNormalTower`); 4.3 (the one-zero lemma); AnalyticNumberTheoryPartI §2.31d, §2.31e;
ZerosOfLFunctions 5.6.

### Examples

- `N_ℚ(15) = 2`; `150 ≤ N_{ℚ(i)}(100) ≤ 166`.
- `ℚ(ζ₇)⁺`: `ζ_K ≤ 0` on `[0.7246, 1)`, and Stark's bound `κ > 0.001488` against `κ = 0.3003`.

### Dependencies

ZerosOfLFunctions Layers 4–7; LFunctions Layer 3; Layer 0 (0.5); Layer 1; AnalyticNumberTheoryPartI
§§2.31d, 2.31e; ExplicitZetaBounds (gaps: Backlund, Stirling, trigonometric polynomials);
ComputationalNumberTheory §4.17a.

## Layer 5: class numbers

### 5.1 The `h_K R_K` bounds

Each bound of this section is a residue bound of Layer 3 or of AnalyticNumberTheoryPartI §2.15
multiplied by the class-number formula, which is Mathlib's definition
`κ_K = 2^{r₁}(2π)^{r₂} R_K h_K/(w_K √d_K)`, with `2^{r₁}(2π)^{r₂} = 2ⁿ (π/2)^{r₂}`. Prove
`classNumber_mul_regulator_le` (`louboutin2001` Theorem 1, recalled at `louboutin2005` lines
38–39, p. 560): for `n ≥ 2`,
`h_K R_K ≤ (w_K/2)(2/π)^{r₂} (e log d_K/(4n−4))^{n−1} √d_K`;
`classNumber_mul_regulator_le_of_real_zero`: if `ζ_K(β) = 0` for some `β ∈ [1/2, 1)`, then
`h_K R_K ≤ (1 − β) w_K (2/π)^{r₂} (e log d_K/(4n))ⁿ √d_K`;
`classNumber_mul_regulator_le_localFactor_two`: for `n ≥ 3`,
`h_K R_K ≤ (w_K/2)(2/π)^{r₂} (Π_K(2)/2ⁿ)(e log d_K/(4n−4) · e^{n log 4/log d_K})^{n−1} √d_K`.

**Checks.**

- `K = ℚ(√5)`: `h R = log((1+√5)/2) = 0.4812`, `w = 2`, `r₂ = 0`: the bound is
  `(e log 5/4) √5 = 1.0937 · 2.236 = 2.446`.
- `K = ℚ(i)`: `h R = 1`, `w = 4`, `r₂ = 1`: `2 · (2/π) · (e log 4/4) · 2 = 2.40`;
  `K = ℚ(√−3)`: `3 · (2/π) · (e log 3/4) · √3 = 2.47`.
- The identity `κ_K/2ⁿ = (1/2)(e log d_K/(2n−2))^{n−1}/2^{n−1} = (1/2)(e log d_K/(4n−4))^{n−1}`
  is what moves `2ⁿ` into the base; a form with `(e log d_K/(2n−2))^{n−1}` and the factor `w_K/2ⁿ`
  outside is the same number.

*Needs:* Mathlib `dedekindZeta_residue_def`, `card_add_two_mul_card_eq_rank`;
AnalyticNumberTheoryPartI §2.15; 3.1; 3.2.

### 5.2 Abelian fields

Prove `classNumber_mul_regulator_le_abelian` (`louboutin2005` lines 42–43, with Ramaré's bounds):
for `K/ℚ` abelian of degree `n ≥ 2`,
`h_K R_K ≤ (w_K/2)(2/π)^{r₂} (log d_K/(4n−4) + (5 − 2 log 6)/4)^{n−1} √d_K`, and
`classNumber_mul_regulator_le_totallyReal_abelian`: for `K` abelian and totally real,
`h_K R_K ≤ (log d_K/(4n−4))^{n−1} √d_K`. Route: `κ_K = ∏_{1 ≠ χ ∈ X(K)} L(1, χ)` from the Euler
product `ζ_K = ∏_{χ ∈ X(K)} L(s, χ)` and the residue comparison
(CyclotomicClassGroupsAndStickelberger §3.4), the bounds `|L(1, χ)| ≤ (1/2) log f_χ + c_χ` with
`c_χ = 0` for even and `5/2 − log 6` for odd `χ`, `Σ_{χ ≠ 1} log f_χ = log d_K` by the
conductor–discriminant formula (`f_1 = 1`), and the arithmetic–geometric mean inequality over the
`n − 1` nontrivial characters; for totally real `K` every character is even and `w_K = 2`,
`r₂ = 0`.

**Checks.**

- `K` imaginary quadratic: the first bound reads `h ≤ w√d_K ((1/2) log d_K + 5/2 − log 6)/(2π)`,
  which is Ramaré's odd bound in the class-number formula `h = w√d_K L(1, χ)/(2π)`; for
  `d_K = 163`, `h ≤ 2 · 12.77 · (2.547 + 0.708)/(2π) = 13.2`, and `h = 1`.
- `K = ℚ(√5)`: `h R = 0.4812 ≤ (log 5/4)√5 = 0.899`, sharper than 5.1's `2.446` by the factor
  `e^{n−1}`.
- `K = ℚ(ζ₅)` (`n = 4`, `r₂ = 2`, `w = 10`, `d = 125`): the constant is
  `(5 − 2 log 6)/4 = 0.3541`, and `5 · (4/π²) · (log 125/12 + 0.3541)³ · √125 =
  5 · 0.4053 · 0.7565³ · 11.18 = 9.81 ≥ h R = 0.962`. The base is
  `(1/2)(log d_K/(2n−2) + κ)` with `κ = (5 − 2 log 6)/2 = 0.7082` of `louboutin2005` line 43;
  putting `κ` itself in place of `κ/2` next to `log d_K/(4n−4)` would give `31.0`, and
  `(5 − log 36)/4` is the same `0.3541`.

*Needs:* CyclotomicClassGroupsAndStickelberger §3.4; ClassFieldTheory Layer 13
(conductor–discriminant); `gap:ramare-L1-bounds`; AnalyticNumberTheoryPartI §2.5; Mathlib
`Real.geom_mean_le_arith_mean_weighted`.

### 5.3 Bordellès' regulator-free bounds

Prove `classNumber_le_bordelles` (`bordelles2002` lines 185–204, Theorems 5.1–5.3; `bordelles2006`
lines 158–161, Theorem 2.2), with `b = b_K` of 0.1:

- `h_K ≤ b (log b + γ + 1/b)^{n−1}` for every `n ≥ 1`;
- `h_K ≤ 2b (log b)^{n−1}` for `n ≥ 2` and `b ≥ 6`;
- `h_K ≤ (2^{n−1}/(n−1)!) √d_K (log d_K)^{n−1}` for `n ≥ 1`, and more generally
  `h_K ≤ ((a+1)/2)^{n−1} √d_K (log d_K)^{n−1}/(n−1)!` for every `a > 0` with
  `a ≥ 2(n−1)/log d_K` (for `n ≥ 2`);
- `h_K ≤ (b/(n−1)!)(log b + n − 2)^{n−1}` for `n ≥ 3` and `b ≥ 13`, equivalently
  `h_K ≤ (minkowskiConstant K/(n−1)!)(log(minkowskiConstant K² d_K)/2 + n − 2)^{n−1} √d_K` for
  `d_K ≥ 169/minkowskiConstant K²`.

Route: 0.3 and the Piltz divisor-sum bounds; for the third form, `minkowskiConstant K ≤ 1` and
`log b ≤ (1/2) log d_K`, with `(1/2 + (γ + 1/b)/log d_K)^{n−1} n!/nⁿ ≤ 2^{n−1}/(n−1)!`
from `log d_K ≥ 2(n−1)/3` (Minkowski) and the first form.

**Checks.**

- `K = ℚ(√−14)`, `b ≈ 4.764`: `4.764 (1.561 + 0.577 + 0.210) = 11.2 ≥ h = 4`; the second form
  needs `b ≥ 6` and does not apply; the third gives `2 √56 log 56 = 60.2`.
- `K = ℚ`: `b = 1`, `n = 1`: the first form is `1 · (0 + γ + 1)⁰ = 1 = h`, and the third is
  `1 · 1 · 1 = 1`.
- `K = ℚ(√5)`, `n = 2`: the general-`a` form at `a = 2/log 5 = 1.243` gives
  `1.121 · 2.236 · 1.609 = 4.03 ≥ 1`; at `a = 3` it is the `2^{n−1}` form.
- The fourth form at `n = 2`: `bordelles2006` states Theorem 2.1 for `n ≥ 3` only, and no
  statement is made at `n = 2`.

*Needs:* 0.1, 0.3; `gap:piltz-divisor-sums`; Mathlib `abs_discr_ge'`.

### 5.4 Quartic fields

Prove `classNumber_le_quartic` (`cullyhugilltrudgian2021`, Theorem 2 and its corollary, consumed
as the quartic divisor-sum bound of ExplicitMultiplicativeFunctions T7.5): for `n = 4` and
`b_K ≥ 193`, under `DivisorRemainderInitialRangeVerified`, `h_K ≤ (1/3) b_K (log b_K)³`.

**Checks.**

- Compared with 5.3's second form `2b (log b)³`, the constant improves by `6`; at `b = 193` both
  need `Σ_{m ≤ 193} τ_4(m) ≤ (1/3) 193 (log 193)³ = 9420`, and the actual sum is below that.
- `b_K < 193` is excluded; `ℚ(ζ₅)` has `b = (4/π)²(24/256)√125 = 0.152 · 11.18 · 1.62 = 2.76` and
  is outside the statement (its `h = 1`).
- The hypothesis names the finite verification of the divisor remainder, not a verification about
  `K`.

*Needs:* 0.1, 0.3; `gap:piltz-divisor-sums`.

### 5.5 Relative class numbers: the upper bound

Prove `cmCharacter_L_one_le` and `relativeClassNumber_le` (`louboutin2000` Corollary 3, quoted at
`louboutin2003` lines 603–605, where it is cited as [Lou7, Corollary 3]): for `K` CM of degree
`2n`,
`L(1, η) ≤ 2 (e log(d_K/d_{K⁺})/(2n))ⁿ` and equivalently, by 0.4,
`h⁻_K ≤ 2 Q_K w_K √(d_K/d_{K⁺}) (e log(d_K/d_{K⁺})/(4πn))ⁿ`.
Route: the positive Mellin comparison of §2.15a for `Λ_K` and `Λ_{K⁺}` with `Λ_K = Λ_{K⁺} Λ(·, η)`,
the odd completion `Λ(s, η) = Q^{s/2} Γ_ℝ(s+1)ⁿ L(s, η)` of 0.4, optimised at
`s = 1 + 2n/log Q`, `Q = d_K/d_{K⁺}`.

**Checks.**

- `K = ℚ(i)`: `2 · 1 · 4 · 2 · (e log 4/(4π))¹ = 16 · 0.2999 = 4.80 ≥ h⁻ = 1`;
  `K = ℚ(√−3)`: `2 · 6 · √3 · (e log 3/(4π)) = 4.94`; `d_K = 163`: `2 · 2 · 12.77 · 1.102 = 56.3`.
- `K = ℚ(ζ₈)`: `Q = 32`, `n = 2`: `2 · 8 · √32 · (e log 32/(8π))² = 90.5 · 0.1405 = 12.7 ≥ 1`, and
  `L(1, η) = 0.8724 ≤ 2 (e log 32/4)² = 11.1`.
- The exponent is `n`, not `n − 1`: the character is nontrivial and no pole is cancelled, exactly
  as in 3.1.

*Needs:* 0.4; AnalyticNumberTheoryPartI §2.15a, §2.22; LFunctions Layer 5.

### 5.6 Relative class numbers: lower bounds

Define `louboutinV n = (n/(n−1))^{n−1}` for `n ≥ 2` and `louboutinV 1 = 1`, with
`2 ≤ louboutinV n < e` for `n ≥ 2` (`louboutin2003` line 282).

For a totally real abelian field `k` of degree `n`, define
`louboutinB k = ∏_{1 ≠ χ ∈ X(k)} (log f_χ)/2` over the nontrivial primitive characters of `k`
(`louboutin2003` line 310, (9), with `κ₁ = 0`, which line 368 permits by Ramaré's bound); the
empty product gives `louboutinB ℚ = 1`.

- `κ_k ≤ louboutinB k` (`louboutin2003` line 316, (10)): `κ_k = ∏_{1 ≠ χ} L(1, χ)` by the
  Euler product of CyclotomicClassGroupsAndStickelberger §3.4, every `χ` is even, and
  `|L(1, χ)| ≤ (1/2) log f_χ` by `gap:ramare-L1-bounds`.
- `louboutinB k ≤ (louboutinV n/2^{n−1}) (log ρ_k)^{n−1}` for `n ≥ 2` (lines 321–330): the
  arithmetic–geometric mean inequality and `Σ_{χ ≠ 1} log f_χ = log d_k` (conductor–discriminant).
- If `ζ_k(β) = 0` for some `β ∈ [1/2, 1)`, then `κ_k ≤ (1 − β) (log f_k/4) louboutinB k`
  (line 318, (11)), from `|L(1, χ)| ≤ ((1 − β)/8) log² f_χ` for the even primitive `χ` with
  `L(β, χ) = 0` (`louboutin2003` lines 337–339, Lemma 7(2), quoting `louboutin2001` Theorem 7)
  and `f_χ ≤ f_k`.

**Checks.**

- `k = ℚ`: `louboutinB ℚ = 1 = κ_ℚ`; a definition over all of `X(k)`, the trivial character
  included, would contain the factor `(log 1)/2 = 0` and give `louboutinB k = 0 < κ_k` for every
  `k`.
- `k = ℚ(√5)`: `X(k) = {1, χ₅}`, `louboutinB k = (log 5)/2 = 0.8047 ≥ κ_k = 0.4304`.
- `k = ℚ(ζ₇)⁺` (two cubic characters of conductor `7`): `louboutinB k = ((log 7)/2)² = 0.94664
  ≥ κ_k = 0.3003`, and the mean-value bound `(louboutinV 3/4)(log 49^{1/3})² = 0.5625 · 1.68291 =
  0.94664` is attained, since the two conductors are equal; a definition with the conductor
  `f_k` of the field in place of each `f_χ` agrees here but not for `ℚ(√5, √13)`, whose
  characters have conductors `5, 13, 65`.

Define `NoImaginaryQuadraticRealZero K c D` as: for every imaginary quadratic subfield `F ⊆ K`
and every `β ∈ [1 − c/log D, 1)`, `ζ_F(β) ≠ 0`.

- It is vacuous when `K` has no imaginary quadratic subfield; it is antitone in `c`: it holds at
  `c` whenever it holds at some `c' ≥ c` (with the same `D > 1`).
- On `(0, 1)`, `ζ_F(β) = ζ(β) L(β, χ_F)` and `ζ(β) < 0`, so the condition there is
  `L(β, χ_F) ≠ 0`; it is implied on `(0, 1)` by `ImaginaryQuadraticRealZeroGap c₀` whenever
  `c/log D < 1/(c₀ √d_F)` for every imaginary quadratic `F ⊆ K` (the gap leaves the open
  interval `(1 − 1/(c₀ √d_F), 1)` zero-free).

**Checks.**

- `K = ℚ(ζ₅)`: its only quadratic subfield is `ℚ(√5)`, which is real, so the predicate is
  vacuous; a definition over every quadratic subfield would ask about `L(s, χ₅)`.
- `K = ℚ(i)`, `c = 2`, `D = d_K = 4`: the interval is `[1 − 2/log 4, 1) = [−0.443, 1)`; on
  `(0, 1)`, `L(β, χ₋₄) > 0`; `ζ_F(0) = ζ(0) L(0, χ₋₄) = (−1/2)(1/2) = −1/4`; and on
  `[−0.443, 0)`, `ζ < 0` and `L(β, χ₋₄) ≠ 0` by the functional equation, so the predicate holds.
- Direction: the predicate at `c = 2` asks about a longer interval than at `c₂ = 1.0718`
  (`[1 − 2/log D, 1) ⊃ [1 − 1.0718/log D, 1)`), so Theorem 9's hypothesis with `c = 2` for
  abelian `K` implies the one with `c₂`, not conversely.

Prove, with `k = K⁺`, `ρ_k = d_k^{1/n}`, `ρ_K = d_K^{1/(2n)}`, and `(12)`, `(13)` the inequalities

- `(12)`: `h⁻_K ≥ c Q_K w_K √(d_K/d_k) / (2π e^{c/2} louboutinV n (πe log ρ_k)^{n−1} log d_K)`,
- `(13)`: `h⁻_K ≥ c Q_K w_K √(d_K/d_k) / (e^{c/2} (2π)ⁿ louboutinB k log d_K)`:

`relativeClassNumber_ge_cmPositivity` (lines 475–479, Theorem 11): for `K` CM of degree `2n ≥ 2`
with `CMPositivity K` and `ρ_K ≥ max(louboutinRho n, louboutinRhoEmpty n)` (the thresholds of
3.4 at `m = n`: `2600` for `2n = 2`, `50` for `2n = 4`, `26`, `22`, `21` for `2n = 6, 8, 10`,
and `2π²` for `2n ≥ 12`), `(12)` with `c = 2`, and if `k` is abelian, `(13)` with `c = 2`. The
source states Theorem 11 without the root-discriminant threshold, but its proof applies
3.4(1)–(2) with `S = ∅`, which need it, as Theorem 9 does with `ρ_K ≥ 50`;
`relativeClassNumber_ge_normal` (lines 399–427, Theorem 9): for `K` normal CM of degree `2n > 2`,
`ρ_K ≥ 50`, with `c₂ = 2(√3 − 1)²` and `NoImaginaryQuadraticRealZero K c₂ d_K`, `(12)` with
`c = c₂`; and if `k` is abelian and `NoImaginaryQuadraticRealZero K c d_K` with `c = 2` for `K`
abelian and `c = c₂` otherwise, `(13)` with that `c`;
`relativeClassNumber_ge_normalClosure` (lines 481–492, Theorem 12): for `K` CM of degree
`2n > 2`, `ρ_K ≥ 2800`, `N` the normal closure, `m_N = [N:ℚ]`, `c₁ = 2(√2 − 1)²`, and: for every
imaginary quadratic `F ⊆ K` and `β ∈ [1 − c₁/log d_N, 1)`, `ζ_F(β) = 0 → ζ_K(β) ≠ 0`,
`h⁻_K ≥ c₁ Q_K w_K √(d_K/d_k) / (4 n m_N e^{c₁/2} (πe log ρ_K)ⁿ)`;
`relativeClassNumber_ge_of_common_zero` (lines 503–514, Theorem 13): for `K` CM of degree
`2n > 4`, `ρ_K ≥ 2800`, an imaginary quadratic `F ⊆ K` and `β ∈ [1 − 2/log d_K, 1)` with
`ζ_F(β) = ζ_K(β) = 0`, under `ImaginaryQuadraticRealZeroGap (π/6)`,
`h⁻_K ≥ (6/(π²e²)) (d_K/d_k)^{1/2 − 1/n} / (πe log ρ_K)^{n−1}`. Theorem 13 uses the gap only at
the imaginary quadratic `F` (`louboutin2003` lines 359–360, Lemma 8(5)), so the all-quadratic
`QuadraticRealZeroGap (π/6)`, which implies it, is not assumed.

Route: `h⁻_K = Q_K w_K √(d_K/d_k) κ_K/((2π)ⁿ κ_k)` (0.4), the upper bounds `κ_k ≤ louboutinV n
(e log ρ_k/2)^{n−1}` (§2.15 rewritten with `log d_k = n log ρ_k`) and
`κ_k ≤ (1 − β)(e log d_k/(2n))ⁿ` (3.1) for `(12)`, the abelian bounds `κ_k ≤ louboutinB k` and
`κ_k ≤ (1 − β)(log f_k/4) louboutinB k` of the `louboutinB` API for `(13)`, and the lower bounds
of 3.4 for `κ_K` under `ζ_K(β) ≤ 0` (3.4(2) with `S = ∅` at `β = 1 − c/log d_K`, and 3.4(1) with
`S = ∅` at a real zero of `ζ_k`); the case split of Lemma 8 (lines 341–356): either
`ζ_K ≤ 0` on `[1 − c/log d_K, 1)`, or `ζ_k` has a real zero there, or a
common real zero with an imaginary quadratic subfield, which the hypothesis excludes; for normal
`K` the simple real zero comes from a quadratic subfield by Stark's theorem (§2.31e) and the
multiplicity bound of 4.3, and for Theorem 12 the same through the normal closure, Aramata's
theorem (§2.39b) and `d_N ≤ d_K^{m_N}`, `m_N ≤ (2n)!` (§2.31d); for Theorem 13, the gap
hypothesis at `F` gives `1 − β ≥ 6/(π√d_F)`, `√d_F ≤ ρ_K` (since `d_F^n ≤ d_K`), 3.4(4) gives
`κ_K ≥ (1−β) e^{−1}`, and `√(d_K/d_k)/ρ_K ≥ (d_K/d_k)^{1/2 − 1/n}`.

**Checks.**

- `n = 1` in Theorem 11: `K` imaginary quadratic, `k = ℚ`, `louboutinV 1 = 1`, `ρ_k = 1`,
  `log ρ_k = 0` and `(πe log ρ_k)⁰ = 1`: `(12)` reads `h ≥ 2 w √d_K/(2π e log d_K)`, that is
  `L(1, χ) ≥ 2/(e log d_K)`, asserted for `d_K = ρ_K² ≥ 2600² = 6.76·10⁶` under
  `CMPositivity`, which here says `L(σ, χ) ≥ 0` on `(0, 1)`.
- Negative control for the threshold: `K = ℚ(√−3)` satisfies `CMPositivity` (0.5, Checks), with
  `Q = 1`, `w = 6`, `d_K = 3`; `(12)` with `c = 2` would give
  `h ≥ 2 · 6 · √3/(2π e log 3) = 20.785/18.763 = 1.108 > 1 = h`, and `(13)` with `louboutinB ℚ = 1`
  gives the same `1.108`. The threshold excludes it (`ρ_K = √3 < 2600`). At `d_K = 163`
  (`ρ_K = 12.77`, also excluded) the right side of `(12)` is `0.587`.
- The second inequality of `(12)` (line 409–413),
  `h⁻_K ≥ (c/(2n louboutinV n e^{c/2−1})) (√ρ_K/(πe log ρ_K))ⁿ`, follows from `Q w ≥ 2`,
  `√(d_K/d_k) ≥ ρ_K^{n/2}`, `log d_K = 2n log ρ_K` and `ρ_k ≤ ρ_K`; it is a corollary, not a
  separate target.
- Theorem 13's bound has `(πe log ρ_K)^{n−1}` in the denominator: at `n = 3`, `ρ_K = 2800`,
  `d_K/d_k ≥ ρ_K³`, the bound is `0.0823 · 53.0/4597 ≈ 9.5·10⁻⁴`, and it grows with `ρ_K`; the
  same expression with the power in the numerator would force `h⁻ > 20000` for every such field.
- The thresholds are `ρ_K ≥ 2800`, that is `d_K ≥ 2800^{2n}`; a threshold `d_K ≥ 2800ⁿ` is a
  different, weaker hypothesis under which nothing is asserted.

*Needs:* 0.4, 0.5 (`CMPositivity`, `ImaginaryQuadraticRealZeroGap`); 3.1, 3.4; 4.3; 5.2's
route; AnalyticNumberTheoryPartI §2.15, §2.31d, §2.31e, §2.39b; CyclotomicClassGroupsAndStickelberger
§3.4; ClassFieldTheory Layer 13 (conductor–discriminant); `gap:ramare-L1-bounds`; `louboutin2001`
Theorem 7 (by locator, through `louboutin2003` Lemma 7(2)); Mathlib `normalClosure`.

### Examples

- `ℚ(√5)`: `h R = 0.4812`, bounds `2.446` (5.1) and `0.899` (5.2).
- `ℚ(√−14)`: `h = 4`, Bordellès' first bound `11.2`.
- `ℚ(ζ₈)`: `h⁻ = 1`, upper bound `12.7`.

### Dependencies

Layers 0, 3, 4.3; AnalyticNumberTheoryPartI; CyclotomicClassGroupsAndStickelberger §3.4;
ClassFieldTheory Layer 13; ExplicitMultiplicativeFunctions and ExplicitZetaBounds (gaps).

## Layer 6: least primitive roots

### 6.1 Vinogradov's sieve identity

Prove `vinogradov_generator_indicator`: for a finite cyclic group `G` of order `m` and `x ∈ G`,
`1_{⟨x⟩ = G} = (φ(m)/m) Σ_{d ∣ m} (μ(d)/φ(d)) Σ_{χ : G →* ℂˣ, orderOf χ = d} χ(x)`, and its
instances for `(ZMod p)ˣ` and `(ZMod (p²))ˣ` with Dirichlet characters (`mcgowntrevinotrudgian2016`
lines 84–95; `kerrmcgowntrudgian2020` lines 90–113 give the sieved form of 6.3). Route: `x`
generates `G` iff no prime `q ∣ m` has `x ∈ G^q`; the indicator of `G^q` is `(1/q) Σ_{χ^q = 1} χ`,
and inclusion–exclusion over the squarefree divisors with `Σ_{χ^d = 1} χ = Σ_{e ∣ d} Σ_{ord χ = e} χ`
gives the Möbius coefficients.

**Checks.**

- `G` trivial (`m = 1`): the only element generates, and the right side is `1 · 1 · 1 = 1`.
- `G = ℤ/2`: generators `{1}`; at `x = 1`: `(1/2)(1 + (−1)(−1)) = 1`; at `x = 0`:
  `(1/2)(1 + (−1)(1)) = 0`.
- `G = ℤ/6`: `φ(6)/6 = 1/3`; at `x = 1` the sum is `1 + (−1)(−1) + (−1/2)(ω + ω²) + (1/2)(−ω − ω²)
  = 1 + 1 + 1/2 + 1/2 = 3`, giving `1`; at `x = 2` (order `3`): `1 + (−1)(1) + (−1/2)(ω² + ω) +
  (1/2)(ω² + ω) = 0`.
- A non-cyclic group (`ℤ/2 × ℤ/2`, `m = 4`) has no generators and is outside the statement: the
  formula would give `(φ(4)/4)(1 + (μ(2)/φ(2)) Σ_{ord χ = 2} χ(x)) = (1/2)(1 − Σ_{χ ≠ 1} χ(x))`
  (the term `d = 4` has `μ(4) = 0`), which is `(1/2)(1 − 3) = −1` at `x = 0` and `(1/2)(1 + 1) = 1`
  at each `x ≠ 0`, not the indicator `0`.

*Needs:* Mathlib `IsCyclic`, `MonoidHom`, `orderOf`, `ArithmeticFunction.moebius`, `Nat.totient`,
character orthogonality for finite abelian groups.

### 6.2 Interval counts

With `S(X) = X Σ_{q ≤ X} φ(q)/q − Σ_{q ≤ X} φ(q)` and `T(X) = Σ_{q ≤ X} φ(q)`
(`mcgowntrudgian2020` lines 284–297, where `2hS ≤ N(X) ≤ 2hS + 2T`), declare
`McGownTrudgianMoebiusChecks` as the `Prop`: `|S(X) − 3π^{−2}X²| ≤ (2/3) X` for every real `X`
with `1 ≤ X < 38`, and `|T(X) − 3π^{−2}X²| ≤ X log X` for every real `X` with `2 ≤ X < 1000`
(lines 326–327 and 352–353, each a finite computation in the source; the ranges `X ≥ 38` and
`X ≥ 1000` are proved there from the Möbius-sum expansions (6)–(8)).

Prove `mcGownTrudgian_intervalCount` (`mcgowntrudgian2020` lines 201–234, Proposition 3): under
`McGownTrudgianMoebiusChecks`, for a prime `p`, real `H ∈ (0, p)`, an integer `h ≥ 2`,
`X = H/h ≥ 2` with `2HX < p`, the intervals
`I(q, t) = (tp/q, (tp + H)/q − h + 1]` and `J(q, t) = [(tp − H)/q, tp/q − h + 1)` for
`0 ≤ t < q ≤ X`, `gcd(t, q) = 1`, are pairwise disjoint subsets of `[−H, p − H)`; for `0 ≤ m < h`,
`z ∈ I(q, t)` gives `q(z + m) − tp ∈ (0, H]` and `z ∈ J(q, t)` gives `q(z + m) − tp ∈ [−H, 0)`; and
the number `N(X)` of integer points in their union satisfies
`A(X) (6/π²) X² h ≤ N(X) ≤ B(X) (6/π²) X² h` with `A(X) = 1 − 2π²/(9X)` and
`B(X) = 1 + 2π²/(9X) + 1/h + π² log X/(3hX)`. Route: each interval has between `H/q − h` and
`H/q − h + 1` integers, so `2hS(X) ≤ N(X) ≤ 2hS(X) + 2T(X)`, and `S(X)` and `T(X)` are evaluated
with the Möbius-sum estimates `|S − 3π^{−2}X²| ≤ (2/3)X` for `X ≥ 1` and
`|T − 3π^{−2}X²| ≤ X log X` for `X ≥ 2` (lines 300–353), whose initial ranges are
`McGownTrudgianMoebiusChecks`.

**Checks.**

- `X = 2`: the pairs `(t, q)` with `0 ≤ t < q ≤ 2` and `gcd(t, q) = 1` are `(0, 1)` and `(1, 2)`
  (`(0, 2)` has `gcd = 2`); `A(2) = 1 − π²/9 = −0.097 < 0`, so the lower bound is vacuous at the
  threshold, and `B(2) = 1 + 1.097 + 1/h + 1.140/h`.
- `h = 2`, `H = 4`, `p = 101` (`X = 2`, `2HX = 16 < 101`): `I(0,1) = (0, 3]`, `J(0,1) = [−4, −1)`,
  `I(1,2) = (50.5, 51.5]`, `J(1,2) = [48.5, 49.5)`, four disjoint intervals with
  `3 + 3 + 1 + 1 = 8` integers; `B(2) = 3.1667` and `B(2) (6/π²) X² h = 3.1667 · 0.6079 · 8 =
  15.40 ≥ 8`; here `S(2) = 2(1 + 1/2) − 2 = 1` and `T(2) = 2`, and `2hS = 4 ≤ 8 ≤ 2hS + 2T = 8`.
- `2HX ≥ p` is excluded: with `p = 7`, `H = 4`, `h = 2` (`2HX = 16 > 7`), the interval
  `[(p − H)/2, (p + H)/2] = [1.5, 5.5]` of `(1, 2)` meets `[−4, 4]` of `(0, 1)`, so disjointness
  fails.

*Needs:* Mathlib `ArithmeticFunction.moebius`, `Nat.totient`, `Int.floor`;
`McGownTrudgianMoebiusChecks`.

### 6.3 The least primitive root modulo `p`

Declare `McGownTrudgianOmegaChecks` as the `Prop`: the verification that the left side of
inequality (9), `13((2 + (s−1)/δ) 2^{ω−s})⁴`, is below `10^{11}` for `9 ≤ ω ≤ 17` with `s = ω − 3`,
that (9) holds for `18 ≤ ω ≤ 50` with `s = ω − 3` and `p > ∏_{i ≤ ω} q_i`, and for
`50 < ω < 200` with `s = ω − 5` (`mcgowntrudgian2020` lines 630–638, `q_i` the `i`-th prime and
`δ` bounded below through the smallest admissible primes), together with the analogous
verification of `7((2 + (s−1)/δ) 2^{ω−s})⁴ < p^{1/4}` for Corollary 2 (lines 639–644).

Prove `leastPrimitiveRoot_lt_mcGownTrudgian` (lines 421–430, Theorem 3): under
`McGownTrudgianMoebiusChecks` (through 6.2), for an odd prime `p`, an
even divisor `e` of `p − 1`, the primes `p₁, …, p_s` dividing `p − 1` but not `e`,
`δ = 1 − Σ 1/p_i > 0`, integers `r, h ≥ 2` and real `H ≥ 2h` with `2H² < hp`, `X = H/h`: if
`(π²/6) B(X)^{2r−1} A(X)^{−2r} ((2 + (s−1)/δ) 2^{ω(p−1)−s})^{2r} h √p W(p, h, r) < H²`, where
`W(p, h, r)` is the Burgess moment constant (`Σ_x |Σ_{m<h} χ(x+m)|^{2r} ≤ W(p, h, r) √p h^{2r}`,
line 420, from `gap:burgess-moment-estimate`), then `g(p) < H`. Route: if no primitive root lies
in `(0, H]`, the sieved form of 6.1 (lines 358–370, Proposition 4) over the integer points of
6.2's intervals vanishes, the main term is `≥ A(X)(6/π²)X²h · (lower sieve weight)`, and the
character sums over the `2r`-th moment are bounded by Hölder and the Burgess moment estimate.

Prove `leastPrimitiveRoot_lt_of_ge` (lines 59–60, Theorem 1): for `p ≥ 10⁵⁶` and `r ≥ 2`,
`g(p) < 2^r 2^{rω(p−1)} p^{1/4 + 1/(4r)}`; `leastPrimitiveRoot_lt_sieved` (lines 88–93, Theorem 2):
for `p ≥ 10⁵⁶`, `e`, `s`, `δ > 0` as above and `r ≥ 2`,
`g(p) < 2^r ((2 + (s−1)/δ) 2^{ω(p−1)−s})^r p^{1/4 + 1/(4r)}`; `leastPrimitiveRoot_lt_pow`
(line 72, Corollary 1): `g(p) < p^{5/8}` for `p ≥ 10²²`; and `leastPrimitiveRoot_lt_sqrt`
(line 85, Corollary 2): `g(p) < 0.999 √p < √p − 2` for `p ≥ 10⁵⁶`; each under
`McGownTrudgianMoebiusChecks`, and Corollaries 1 and 2 (and Theorem 1 through Corollary 2) also
under `McGownTrudgianOmegaChecks` and Robin's bound `ω(m) ≤ 1.3841 log m/log log m` for the range
`p ≥ 10¹⁰⁰⁰` (line 636). The unconditional clause of `cohenoliveirasilvatrudgian2016` line 35–36
(`g(p) ≤ √p − 2` for `p > 3.67·10⁷¹`) is a Check of Corollary 2.

**Checks.**

- `p = 10⁵⁶ + 81` (a prime near the threshold is not needed; the inequality `0.999√p < √p − 2`
  holds iff `√p > 2000`, that is `p > 4·10⁶`), so the second inequality of Corollary 2 is a
  triviality in the range.
- Corollary 1 at `r = 2`: `2² 2^{2ω} p^{3/8} < p^{5/8}` iff `2^{2ω+2} < p^{1/4}`, which for
  `p ≥ 10²²` needs `ω(p−1) ≤ 8`; larger `ω` is handled by Theorem 2 with `s > 0` (lines 630–638).
- `p = 3`: `g(3) = 2`, outside every range; Theorem 3 at `p = 3` has `h ≥ 2`, `H ≥ 4`, `2H² ≥ 32 >
  hp = 6`, so no admissible parameters exist and nothing is asserted.
- `δ ≤ 0` is excluded: with `e = 2` and `p − 1` divisible by the first ten primes `2, 3, …, 29`
  (by `6469693230`), the primes dividing `p − 1` but not `e` include `3, …, 29` and
  `Σ 1/p_i ≥ 1.0334 > 1`; with only the primes `3, …, 23` the sum is `0.99896` and `δ = 0.00104 > 0`,
  so the first nine primes do not yet force `δ ≤ 0`.

*Needs:* 6.1, 6.2; `McGownTrudgianMoebiusChecks`, `McGownTrudgianOmegaChecks`;
`gap:burgess-moment-estimate`; `gap:omega-pointwise-robin`; Mathlib
`ArithmeticFunction.cardDistinctFactors` (`ω`).

### 6.4 Grosswald's conjecture under GRH

Declare `GrosswaldFiniteRange` as the `Prop`: for every prime `p` with `409 < p < 2.5·10¹⁵`,
`g(p) ≤ √p − 2` (`cohenoliveirasilvatrudgian2016` lines 35–36, Theorem 1, computation at lines
287–290); and `GrosswaldSieveVerification` as the `Prop`: the outcome of the case analysis of
`mcgowntrevinotrudgian2016` lines 211–240 (the exception lists for `ω(p−1) ∈ {12, 13, 14}` are
empty after the recursive sieve, Table 2).

Prove `leastPrimePrimitiveRoot_le_grh` (lines 56–61, Theorem 2): under `GRHMod p` and `p ≥ 10⁹`,
`ĝ(p) ≤ ((8/5)(2^{ω(p−1)} − 1) log p)²`; and `leastPrimePrimitiveRoot_le_grh_sieved` (lines 163–168,
Theorem 3): under `GRHMod p`, with `e`, `s`, `δ > 0` as in 6.3, if `ĝ(p) > x` then
`ĝ(p) ≤ (2 c(p, x)(2 + (s−1)/δ) 2^{ω(p−1)−s} log p)²`, with `c(p, x)` Bach's constant. Route: 6.1
applied to the prime powers `m < x` with the weight `Λ(m)(1 − m/x)`; if no prime below `x` is a
primitive root, the sieved identity vanishes on `m < x`; Bach's lemma under GRH bounds each twisted
sum by `c(p, x) √x log p` and the principal sum from below by `x/2 − √x/20 − 3`.

Prove `grosswald_of_grh` (lines 40–41, Theorem 1): under `GRHMod p`, `GrosswaldFiniteRange` and
`GrosswaldSieveVerification`, `ĝ(p) < √p − 2` for every prime `p > 2791` and `g(p) < √p − 2` for
every prime `p > 409`. Route: Theorem 2 with Robin's bound gives the result for `p ≥ 10⁴⁹`, then
`ω(p−1) ≤ 31` and `p ≤ 10⁴⁷`, iterated to `ω ≤ 28` and `p < 10⁴³` (lines 151–158); the finite range
`p ≤ 2.5·10¹⁵` is the first hypothesis for `g`; Theorem 3 with the choices of `s` (lines 185–210)
closes `7 ≤ ω ≤ 28` except `ω ∈ {12, 13, 14}`, which the second hypothesis closes; the range
`2791 < p ≤ 2.5·10¹⁵` for `ĝ` is the same computation (line 157: the computations of
`cohenoliveirasilvatrudgian2016` §4 cover the least prime primitive root in that range).

**Checks.**

- `p = 409`: `g(409) = 21 > √409 − 2 = 18.22`, so the conjecture starts after `409`;
  `p = 2791`: `ĝ(2791) = 53 > √2791 − 2 = 50.83` (the prime `2791` is Grosswald's last exception
  for `ĝ`), so the second clause starts after `2791`.
- `p = 10⁹ + 7`: `p − 1 = 2 · 500000003` with `500000003` prime, so `ω(p − 1) = 2` and Theorem 2
  gives `ĝ(p) ≤ ((8/5) · 3 · 20.723)² = 9895 < √p − 2 = 31620.8`, Grosswald's bound directly.
  `p = 1000000021`: `p − 1 = 2² · 3 · 5 · 19 · 739 · 1187`, `ω(p − 1) = 6`, and Theorem 2 gives
  `((8/5) · 63 · 20.723)² = 4.36·10⁶`, far above `√p − 2 = 31620.8`; the sieved Theorem 3 is what
  reaches `√p − 2` there.
- `GRHMod p` is the hypothesis for every character modulo `p`, including the principal one
  (Bach's lemma (3) needs `RiemannHypothesis`), and not `DedekindERH ℚ(ζ_p)` by name, although
  the two are equivalent by `DedekindERH.of_abelian` and the cyclotomic factorization.

*Needs:* 6.1; 0.5 (`GRHMod`), 0.6; `gap:bach-grh-smoothed-sum`; `gap:omega-pointwise-robin`;
Mathlib `ArithmeticFunction.vonMangoldt`.

### 6.5 The least primitive root modulo `p²`

Declare `PaszkiewiczTable` as the `Prop`: for every odd prime `p ≤ 10¹²` other than `40487` and
`6692367337`, `h(p) = g(p)` (`kerrmcgowntrudgian2020` lines 41–43), and
`SmallPrimitiveRootsModPSquare` as the `Prop`: `h(p) < p^{0.99}` for every odd prime `p ≤ 409` and
for `p ∈ {40487, 6692367337}`.

Prove `pPowerResidues_le` (line 62, Theorem 2): for an odd prime `p`, `0 < ε < 1`,
`z ≥ 2^{1/ε}` and real `X` with `1 ≤ X < p`, the number of integers `1 ≤ m ≤ X` coprime to
`P_z = ∏_{q ≤ z} q` that are `p`-th powers modulo `p²` is at most `√p X^ε`. The source states it
without `X < p`, but its Lemma 6 (lines 139–185) needs the set in `[1, p)`: there `t₁t₂ ≡ t₃t₄`
modulo `p` forces the congruence modulo `p²` (a `p`-th power modulo `p²` is determined by its
residue modulo `p`), and the congruence becomes the equality `t₁t₂ = t₃t₄` only because the
products are below `p²`; the application takes `X = p^{0.99} < p` (lines 282–287). Route: the
`p`-th powers modulo `p²` form the subgroup of order `p − 1` (index `p`) of `(ℤ/p²)ˣ`;
`|T|⁴/p ≤ #{t₁t₂ = t₃t₄}` (Lemma 6) `≤ |T|² max τ(t₁t₂)` and the divisor bound `τ(m) ≤ m^{ε}` for
`m` free of primes below `z ≥ 2^{1/ε}` (line 191, Lemma 7) give `|T|² ≤ p X^{2ε}`.

Prove `primitiveRoots_coprime_ge` (lines 64–79, Theorem 3): for an odd prime `p`, `X ≥ 1`, `u ≥ 1`,
`e`, `s`, `δ > 0` as in 6.3, and `A` with `|Σ_{m ≤ M} χ(m)| ≤ A √p log p` for every non-principal
`χ` modulo `p` and every `M`, the number `N(X)` of primitive roots modulo `p` below `X` coprime to
`u` satisfies
`N(X) ≥ δ (φ(e)/e) (X Σ_{d ∣ u} μ(d)/d − 2^{ω(u)} (A (2 + (s−1)/δ) 2^{ω(p−1)−s} √p log p + 1))`.
Route: the sieved form of 6.1 and the Pólya–Vinogradov hypothesis.

Prove `leastPrimitiveRoot_sq_lt` (line 50, Theorem 1): for every odd prime `p`, under
`PaszkiewiczTable`, `SmallPrimitiveRootsModPSquare` and `GrosswaldFiniteRange`, `h(p) < p^{0.99}`.
Route (lines 278–297): for `p ≥ 10¹²`, with `z = 16`, `X = p^{0.99}`, `ε = 1/4`, Theorem 3 with
`A = 0.16` (the Lapkova constant at `q₀ = 10¹²`), `pPowerResidues_le` at `X = p^{0.99} < p`, the
totient bound of `gap:totient-quotient-bound` for `e/φ(e)` (its simplification
`m/φ(m) ≤ 1.8 e^γ log log m`, `kerrmcgowntrudgian2020` lines 129–131, holds only for `m ≥ 10¹²`,
so it serves the case `s = 0`, `e = p − 1`, and the general form serves the cases `s > 0`, where
`e` can be small) and Robin's bound give `N₁(X) − N₂(X) > 0`, so some `m ≤ X` is a primitive root
modulo `p` and not a
`p`-th power, hence a primitive root modulo `p²`; for `409 < p < 10¹²` not exceptional,
`h(p) = g(p) ≤ √p − 2 < p^{0.99}`; the rest is the small-range hypothesis.

**Checks.**

- `p = 2`: `h(2) = 3 > 2^{0.99} ≈ 1.99`, so the theorem is false at `2` and is stated for odd `p`
  (line 25); `p = 3`: `h(3) = 2 < 3^{0.99} = 2.97`.
- The exponent cannot go below `log 2/log 3 ≈ 0.6309`, since `h(3) = 2 = 3^{0.6309}` (lines
  51–53); the refinement `h(p) ≤ p^{0.74}` (`chen2022`, Theorem 1.1) is above that barrier and
  belongs to the Part II named in the scope.
- `p = 40487`: `g = 5` is not a primitive root modulo `p²` and `h(p) = 10`; `10 < 40487^{0.99}`,
  which is the second hypothesis at that prime.
- Negative control for `X < p` in `pPowerResidues_le`: `p = 3`, `ε = 1/2`, `z = 4` (`P_z = 6`),
  `X = 1000`: the cubes modulo `9` coprime to `3` are `±1`, and the integers `m ≤ 1000` coprime to
  `6` with `m ≡ ±1 (mod 9)` are those `≡ 1, 17 (mod 18)`, `111` of them, against
  `√3 · 1000^{1/2} = 54.77`. For `X < 3` the count is at most `1` (only `m = 1`), below
  `√3 X^{1/2} ≥ √3`.

*Needs:* 6.1; 0.6; `gap:polya-vinogradov-lapkova`; `gap:totient-quotient-bound`;
`gap:omega-pointwise-robin`; Mathlib `ZMod.isCyclic_units_of_prime_pow`, `Nat.Coprime`.

### Examples

- `g(7) = 3`, `h(7) = 3`; `g(409) = 21`; `h(40487) = 10`.
- `ℤ/6`: the sieve identity evaluated at every element.

### Dependencies

Layer 0.5–0.6; ExplicitCharacterSumsAndSieves, ExplicitZetaBounds, ExplicitMultiplicativeFunctions
(gaps); Mathlib `ZMod`, arithmetic functions.

## Downstream consumers

- EffectiveClassNumbers consumes Layer 5: the explicit class-number, regulator and relative
  class-number bounds for its determinations of fields of small class number.
- Later roadmaps on effective Chebotarev and least-prime-ideal theorems, the explicit
  Brun–Titchmarsh inequality for number fields and explicit Mertens theorems for number fields
  consume Layers 2, 3 and 4 (the ideal counts, the residue bounds and the zero-free regions with
  explicit constants); a later roadmap counting number fields by discriminant with explicit
  constants consumes 2.4's uniform count; and norm-Euclidean and primitive-root problems consume
  Layer 6.

## References

- O. Bordellès, Explicit upper bounds for the average order of `d_n(m)` and application to class
  number, J. Inequal. Pure Appl. Math. 3 (2002), Art. 38 (`bordelles2002`).
- O. Bordellès, An inequality for the class number, J. Inequal. Pure Appl. Math. 7 (2006), Art. 87
  (`bordelles2006`).
- B. Chen, Explicit upper bound on the least primitive root modulo `p²`, Int. J. Number Theory 18
  (2022) (`chen2022`, cited by locator).
- S. D. Cohen, T. Oliveira e Silva, T. Trudgian, On Grosswald's conjecture on primitive roots, Acta
  Arith. 172 (2016) (`cohenoliveirasilvatrudgian2016`).
- M. Cully-Hugill, T. Trudgian, Two explicit divisor sums, Ramanujan J. 56 (2021)
  (`cullyhugilltrudgian2021`, cited by locator).
- K. Debaene, Explicit counting of ideals and a Brun–Titchmarsh inequality for the Chebotarev
  density theorem, Int. J. Number Theory 15 (2019) (`debaene2019`).
- E. Friedman, Analytic formulas for the regulator of a number field, Invent. Math. 98 (1989)
  (`friedman1989`, cited by locator).
- S. R. Garcia, E. S. Lee, Unconditional explicit Mertens' theorems for number fields and Dedekind
  zeta residue bounds, Ramanujan J. 57 (2022) (`garcialee2022mertens`).
- S. R. Garcia, E. S. Lee, Explicit estimates for Artin L-functions: Duke's short-sum theorem and
  Dedekind zeta residues, J. Number Theory 237 (2022) (`garcialee2022artin`).
- S. Gun, O. Ramaré, J. Sivaraman, Counting ideals in ray classes, J. Number Theory 243 (2023)
  (`gunramaresivaraman2023`).
- E. Hasanalizade, Q. Shen, P.-J. Wong, Counting zeros of Dedekind zeta functions, Math. Comp. 91
  (2022) (`hasanalizadeshenwong2022`).
- H. Kadiri, Explicit zero-free regions for Dedekind zeta functions, Int. J. Number Theory 8
  (2012) (`kadiri2012`).
- B. Kerr, K. McGown, T. Trudgian, The least primitive root modulo `p²`, J. Number Theory 215
  (2020) (`kerrmcgowntrudgian2020`).
- E. S. Lee, On an explicit zero-free region for the Dedekind zeta-function, J. Number Theory 224
  (2021) (`lee2021zerofree`).
- E. S. Lee, On the number of integral ideals in a number field, J. Math. Anal. Appl. 517 (2023)
  (`lee2023ideals`).
- S. Louboutin, Explicit bounds for residues of Dedekind zeta functions, values of L-functions at
  `s = 1`, and relative class numbers, J. Number Theory 85 (2000) (`louboutin2000`, cited by
  locator).
- S. Louboutin, Explicit upper bounds for residues of Dedekind zeta functions and values of
  L-functions at `s = 1`, and explicit lower bounds for relative class numbers of CM-fields, Canad.
  J. Math. 53 (2001) (`louboutin2001`, cited by locator).
- S. Louboutin, Explicit lower bounds for residues at `s = 1` of Dedekind zeta functions and
  relative class numbers of CM-fields, Trans. Amer. Math. Soc. 355 (2003) (`louboutin2003`).
- S. Louboutin, On the use of explicit bounds on residues of Dedekind zeta functions taking into
  account the behavior of small primes, J. Théor. Nombres Bordeaux 17 (2005) (`louboutin2005`).
- S. R. Louboutin, Real zeros of Dedekind zeta functions, Int. J. Number Theory 11 (2015)
  (`louboutin2015ijnt`).
- S. R. Louboutin, Explicit upper bounds for residues of Dedekind zeta functions, Mosc. Math. J. 15
  (2015) (`louboutin2015mmj`, motivation only).
- S. R. Louboutin, Simple zeros of Dedekind zeta functions, Funct. Approx. Comment. Math. 56
  (2017) (`louboutin2017`).
- K. J. McGown, T. Trudgian, Explicit upper bounds on the least primitive root, Proc. Amer. Math.
  Soc. 148 (2020) (`mcgowntrudgian2020`).
- K. McGown, E. Treviño, T. Trudgian, Resolving Grosswald's conjecture on GRH, Funct. Approx.
  Comment. Math. 55 (2016) (`mcgowntrevinotrudgian2016`).
- H. Rademacher, On the Phragmén–Lindelöf theorem and some applications, Math. Z. 72 (1959)
  (`rademacher1959`, cited by locator).
- J. S. Sunley, Class numbers of totally imaginary quadratic extensions of totally real fields,
  Trans. Amer. Math. Soc. 175 (1973) (`sunley1973`).
- T. S. Trudgian, An improved upper bound for the error in the zero-counting formulae for Dirichlet
  L-functions and Dedekind zeta-functions, Math. Comp. 84 (2015) (`trudgian2015`).
- M. Widmer, Counting primitive points of bounded height, Trans. Amer. Math. Soc. 362 (2010)
  (`widmer2010`).
- J. B. Rosser, L. Schoenfeld, Approximate formulas for some functions of prime numbers, Illinois
  J. Math. 6 (1962) (`rosser-schoenfeld-1962`), Theorem 15: the contract of
  `gap:totient-quotient-bound`.
- L. Schoenfeld, Sharper bounds for the Chebyshev functions `θ(x)` and `ψ(x)`. II, Math. Comp. 30
  (1976) (`schoenfeld-1976`), Corollary 2: the contract of `gap:explicit-mertens-second`.
- O. Ramaré, Approximate formulae for `L(1, χ)`, Acta Arith. 100 (2001) (`ramare2001`), Corollary 1:
  the contract of `gap:ramare-L1-bounds`.
- E. Treviño, The Burgess inequality and the least `k`-th power non-residue, Funct. Approx.
  Comment. Math. 53 (2015) (`trevino2015`); K. J. McGown, On the constant in Burgess' bound, Acta
  Arith. 156 (2012) (`mcgown2012`); A. R. Booker, Quadratic class numbers and character sums, Math.
  Comp. 75 (2006) (`booker2006`): the explicit Burgess inequalities and their tabulated constants,
  which the scope leaves to ExplicitCharacterSumsAndSieves.
- L. C. Washington, *Introduction to Cyclotomic Fields*, 2nd ed., Springer (`washington1997`,
  cited by locator), Theorem 4.10 (the relative class number is an integer); S. Lang, *Algebraic
  Number Theory*, 2nd ed., Springer (`lang1994`, cited by locator), Ch. XIII (the class-number
  formula and the Hecke integral representation).
