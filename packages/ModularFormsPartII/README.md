# Roadmap: modular forms, Part II — noncongruence subgroups and the unbounded denominators theorem

**Summary.** This roadmap continues [ModularForms](https://github.com/TauCetiProject/TauCetiRoadmap/tree/main/TauCetiRoadmap/ModularForms) from congruence subgroups to arbitrary finite-index subgroups of `SL₂(ℤ)`. ModularForms stops at forms with character on `Γ₁(N)`, their Hecke theory, newforms, L-functions and the complex modular curve; it never leaves the congruence world. Here weakly holomorphic forms on an arbitrary finite-index subgroup are described by their cusp germs. Their signed cusp widths give a geometric level, controlled by Wohlfahrt's theorem. The modular λ function is built from the Dedekind η function as the universal covering of `ℂ ∖ {0, 1}`. From it come the fields `M₂N` and `R₂N`: the `ℚ(λ)`-spans of congruence modular functions and of modular functions with bounded denominators. An arithmetic holonomy rank bound gives `[R₂N : ℚ(λ)] ≤ C N³ log(2N)`. The nonabelian Ihara lemma and p-scaling give degree doubling, and together the two prove `R₂N = M₂N`. The end theorems are the unbounded denominators theorem of Calegari, Dimitrov and Tang and its algebraic-integer form: a weakly holomorphic form of integral weight on a finite-index subgroup with an integral Fourier expansion at `∞` is modular for a congruence subgroup. The application layers prove algebraicity of integral solutions of three-point differential equations with finite local monodromy, congruence of integral components of vector-valued modular forms (Mason's conjecture in its effective-span form), the quasimodular differential closure of weak forms, deficient places, and the arithmetic fundamental group of the cuspidal smooth model of `X(N)`.

## Scope and ownership

This roadmap owns: the cusp-germ characterization of weak forms on finite-index subgroups (Layer 1), bounded denominators of a Laurent germ, signed cusp widths and the geometric level, Wohlfahrt's theorem with its sign hypothesis; the modular λ function, its covering theorem, the level-two function ring, the integral λ reparametrization and Kummer coordinate, and Jacobi's hypergeometric identity with its character (Layer 2); the fields `M₂N` and `R₂N`, their holonomy embedding and rank bounds (Layer 3); the nonabelian Ihara lemma, triple surjectivity and the generation identity (Layer 4); leveraging and degree doubling (Layer 5); the unbounded denominators theorem, its rational and algebraic-integer forms, Galois conjugation of weak forms with algebraic coefficients, and the root tests (Layer 6); the vector-valued and differential-equation applications (Layer 7); weakly holomorphic quasimodular forms and deficient places (Layer 8); and the cuspidal smooth model of `X(N)` with its finite-cover criterion and fundamental group (Layer 9). The modular λ covering `ℍ/Γ(2) ≅ ℂ ∖ {0, 1}` is assigned to the ModularForms family by ConformalMapping's relationship specification and by BelyiMaps' boundary section; ModularForms itself does not build it, and it is built here, in Layer 2.

The following are imported and are not planned again.

- ModularForms (main): characters and parity (Layer 0), eigenforms, newforms and oldform decomposition (Layer 4), the η transformation (Worked examples, `η²⁴ = Δ`) and the complex modular curve (Layer 10).
- QSeriesPartitionsAndMockModularForms §8.1 owns the general carrier: the spaces `A_k(Γ, ρ)` of functions with at most exponential cusp growth, for a finite-index `Γ ≤ Mp₂(ℤ)` and a finite-dimensional representation `ρ`, with their weakly holomorphic subspaces. Section 1.1 here proves that for integral weight and trivial multiplier this space equals the native predicate `IsWeakForm` of [Suggested.lean](Suggested.lean). Section 7.3's vector-valued forms are the elements of the exponential-growth holomorphic part of `A_k(Mp₂(ℤ), ρ)` for `ρ` factoring through `PSL₂(ℤ)` with `ρ(T)` semisimple; they differ from the §8.1 carrier only by that semisimplicity and the projective representation. QSeries §5.2 supplies the η multiplier.
- ModularCurvesPartII Layer 15 owns the principal-level `SL₂` amalgam (§15.2), the congruence subgroup property of `SL₂(ℤ[1/p])` (§15.3), congruence classes in ordinary `H¹` (§15.5), principal-level Ihara modulo congruence classes (§15.6), congruence invariance of ordinary characters with the whole cohomological calculation of CDT §4.5 (§15.9), and the enhanced principal-level kernel bound (§15.10). Its §5.14 (twisted curves `X(ρ)`), §§6.3–6.5 (cusp fields, twisted analytic comparison, geometric irreducibility), §8.1 (descent of sections from a split rational cusp) and Layer 11 (regular models of modular fibres) are the arithmetic models used in Layers 5 and 9.
- DiophantineApproximationAndTranscendencePartII Layer 4 owns integral holonomic germs `H(U, χ, ℤ)` with meromorphic local bases (§4.1), their ring structure (§4.2), the two scalar spans `V` and `W` (§4.3), pole clearing (§4.4), the holonomic rank bound for `W` (§4.5) and its finiteness corollaries (§§4.6–4.7).
- ConformalMappingPartII owns the continuation of linear ODE solutions and meromorphic local bases (§§0.3, 0.5), the extremality of the pointed cover (§1.4), the normalized covering `F_N : 𝔻 → ℂ ∖ μ_N` (§1.8), the Gamma radius `γ_N`, the conformal radius `|F_N′(0)| = γ_N` with the values at `N = 2, 3` (§§5.1, 5.5), its positive expansion (§5.8) and the uniform mean growth of `F_N^N` (§9.19).
- AlgebraicModularFormsAndSerreWeights Layer R15.2 (All-prime bounded denominators) owns bounded denominators of rational-coefficient congruence forms and of congruence modular functions holomorphic on `Y(2N)`; Layer R15.1 (All-weight analytic comparison) owns the algebraic–analytic comparison of congruence forms.
- AutomorphicGaloisRepresentations §4.2 owns the Ramanujan–Petersson bound for Hilbert, hence classical, cuspidal newforms.
- EtaleCohomologyFoundations §F.0.2 owns finite étale Galois categories and the étale fundamental group.
- DiophantineApproximationAndTranscendence §§5.2–5.3 owns G-functions, Galochkin's condition and Chudnovsky's theorem.
- FuchsianOrbifolds owns the presentation of `PSL₂(ℤ)` (Layer 2), cusps and `q`-coordinates (Layer 3), compactified quotients (Layer 4), degree theory (Layer 5) and the level-one quotient with `j` (Layer 6). BelyiMaps owns finite covers of the thrice-punctured sphere (Layer 6) and their algebraization (Layer 9). UniversalCovers (Completed) owns lifting and the Galois correspondence (Stage 2). ConformalMapping owns Schwarz reflection and the monodromy theorem (L4).
- GeometryOfNumbersAndQuadraticArithmetic §4.3 owns the analytic `q`-Pochhammer product and the Jacobi triple product.

The cohomological content of CDT §4.5 (and Lemma 4.5.12, whose statement the leveraging argument does not use) belongs to ModularCurvesPartII §15.9. The questions of CDT §7.4 on logarithmic vector-valued forms, archimedean deficient places and finiteness of deficient-place sets are not theorems and are not stated.

## Conventions

- `E = {±I}`, `T = [[1, 1], [0, 1]]`, `S = [[0, −1], [1, 0]]`, `Γ(N) = ker(SL₂(ℤ) → SL₂(ℤ/N))` (Mathlib `CongruenceSubgroup.Gamma`), `Γ₀(p)` the lower-left entry divisible by p, `Γ₁(p)` additionally the diagonal entries `≡ 1 mod p`. For a subgroup G, `±G = ⟨G, E⟩`. A subgroup is congruence when it contains some `Γ(N)` with `N ≥ 1` (Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`); it need not contain `E`.
- The slash action is Mathlib's: for `γ = [[a, b], [c, d]] ∈ SL₂(ℤ)`, `(f ∣[k] γ)(τ) = (cτ + d)^(−k) f(γτ)`. Witness: `f ∣[k] (−I) = (−1)^k f`, so a nonzero form of odd weight is never invariant under `−I`.
- `q = exp(πiτ)` as in CDT, `Q = q² = exp(2πiτ)`, and for `N ≥ 1`, `t = q^(1/N) = exp(2πiτ/(2N))`. Mathlib's `UpperHalfPlane.qExpansion h f` uses `exp(2πiτ/h)`; the parameter `t` is the case `h = 2N`. The Lean statements quantify over every period `h ≥ 1`.
- `x = λ/16`. Then `λ = 16q − 128q² + ⋯`, `x = q − 8q² + 44q³ − ⋯` and `Δ = Q + ⋯ = q² + ⋯`.
- Derivatives: `θ_q = q d/dq = (1/πi) d/dτ` and `D = Q d/dQ = (1/2πi) d/dτ` (Mathlib `Derivative.normalizedDerivOfComplex`), so `θ_q = 2D`; `DΔ = E₂Δ` and `θ_qΔ = 2E₂Δ`.
- Bounded denominators means one nonzero scalar clears every coefficient; it is stronger than coefficients in a ring with finitely many primes inverted.
- Matrices act on `ℍ` on the left. The rational matrix `A = diag(p, 1)` acts by conjugation `g ↦ AgA⁻¹` in `GL₂(ℚ)`; witness: `[[1, 0], [Np, 1]] ↦ [[1, 0], [N, 1]]` and `[[1, 1], [0, 1]] ↦ [[1, p], [0, 1]]`.
- The Cayley coordinate is ConformalMappingPartII's `C(z) = i(1 + z)/(1 − z)`, with `C(0) = i`, `C(1/2) = 3i`, and `z → 1` corresponding to the cusp `∞`.
- Vector-valued forms use CDT's convention `F ∣_k γ = ρ(γ) F`, that is `F(γτ) = (cτ + d)^k ρ(γ) F(τ)`, with `ρ` a homomorphism `SL₂(ℤ) → GL_n(ℂ)` trivial on `−I`.
- Locators cite the published article CDT (J. Amer. Math. Soc. 38 (2025)) by journal page; Mathlib and Tau Ceti declarations are those at the pins of this repository.

## Exact supplier contracts

### From Mathlib

- `ModularForm Γ k`, `CuspForm Γ k`, `SlashInvariantForm Γ k` (`Mathlib/NumberTheory/ModularForms/Basic.lean`, `SlashInvariantForms.lean`): holomorphic slash-invariant functions bounded, respectively zero, at every cusp of `Γ ≤ GL₂(ℝ)`; the pole-free comparison objects of §1.1.
- `ModularForm.SL_slash`, `OnePoint.IsBoundedAt`, `UpperHalfPlane.IsBoundedAtImInfty`, `UpperHalfPlane.atImInfty` (`SlashActions.lean`, `BoundedAtCusp.lean`, `FunctionsBoundedAtInfty.lean`): the slash by `SL₂(ℤ)` through `GL₂(ℝ)`, boundedness at a cusp, and the filter `Im τ → ∞`.
- `CongruenceSubgroup.Gamma`, `CongruenceSubgroup.Gamma0`, `CongruenceSubgroup.Gamma1`, `CongruenceSubgroup.IsCongruenceSubgroup`, `CongruenceSubgroup.Gamma_normal` (`CongruenceSubgroups.lean`); `Subgroup.IsArithmetic` and `Subgroup.isArithmetic_iff_finiteIndex` (`ArithmeticSubgroups.lean`). `CongruenceSubgroup.IsCongruenceSubgroup Γ` asks for `Γ(N) ≤ Γ` with `N ≥ 1`; it does not include `−I`.
- `UpperHalfPlane.cuspFunction h f` and `UpperHalfPlane.qExpansion h f` (`QExpansion.lean`): the function of `exp(2πiτ/h)` with an arbitrary value at `0`, and its Taylor coefficients at `0`. These are the actual Fourier coefficients only for an `h`-periodic function bounded at `∞`; for a function with a pole at `∞` they are not its Laurent coefficients.
- `ModularForm.eta`, `ModularForm.eta_ne_zero`, `ModularForm.logDeriv_eta_eq_E2` (`DedekindEta.lean`): `η(z) = exp(2πiz/24) ∏(1 − exp(2πinz))` on `ℂ`, nonzero on `ℍ`, with `η′/η = (πi/12)E₂`.
- `ModularForm.discriminant`, `ModularForm.discriminant_ne_zero`, `CuspForm.discriminant`, `ModularForm.discriminant_qExpansion_coeff_one` (`Discriminant.lean`): `Δ = η²⁴`, nowhere zero on `ℍ`, the weight-12 cusp form with first coefficient 1.
- `jacobiTheta`, `jacobiTheta_S_smul`, `jacobiTheta_T_sq_smul` (`JacobiTheta/OneVariable.lean`) and `jacobiTheta₂`, `jacobiTheta₂_functional_equation` (`JacobiTheta/TwoVariable.lean`): `θ₃(τ) = Σ exp(πin²τ)`, its `S` law with the principal square root, and `θ₃(τ + 2) = θ₃(τ)`.
- `EisensteinSeries.E2` (`EisensteinSeries/E2/Defs.lean`), `Derivative.normalizedDerivOfComplex`, `Derivative.serreDerivative`, `Derivative.serreDerivativeMF` (`Derivative.lean`), `Derivative.normalizedDerivOfComplex_E₂` (`RamanujanFormula.lean`): `D E₂ = (E₂² − E₄)/12`, and the Serre derivative maps `ModularForm Γ k` to weight `k + 2`.
- `Subgroup.normalCore` (`Algebra/Group/Subgroup/Basic.lean`); `Subgroup.goursat_surjective` (`GroupTheory/Goursat.lean`).
- `Chebyshev.theta_ge`, `Chebyshev.theta_le_log4_mul_x`, `Chebyshev.pi_ge` (`NumberTheory/Chebyshev.lean`): `θ(n) ≥ n log 2 − log(n + 1) − 2√n log n`, `θ(x) ≤ x log 4`.
- `IsCoveringMapOn` (`Topology/Covering/Basic.lean`), `MeromorphicAt` (`Analysis/Meromorphic/Basic.lean`), `Module.End.IsSemisimple` (`LinearAlgebra/Semisimple.lean`), `IsIntegral`, `NumberField.RingOfIntegers`.

### From Tau Ceti

- `TauCeti.Subgroup.integerCuspWidth` and `TauCeti.Subgroup.integerCuspWidth_pos` (`TauCeti/NumberTheory/ModularForms/Cusps/Basic.lean`): the least `n > 0` with `T^n` in the group, a strict width at `∞`; §1.3 distinguishes it from the signed width.
- `CongruenceSubgroup.Gamma_le_Gamma_of_dvd` (`TauCeti/NumberTheory/ModularForms/CongruenceSubgroups/Basic.lean`): `M ∣ N` gives `Γ(N) ≤ Γ(M)`.
- `TauCeti.char_neg_one_of_modFormCharSpace_ne_bot` (`TauCeti/NumberTheory/ModularForms/Parity.lean`): a nonzero character space forces `χ(−1) = (−1)^k`.

### From TauCetiRoadmap.ModularForms

Layer 0 (character spaces, parity `χ(−I) = (−1)^k`, the graded ring of integral-weight forms), Layer 4 (eigenform and newform bases, oldform reindexing), Worked examples (`η²⁴ = Δ` with the `SL₂(ℤ)` transformation of η) and Layer 10 (the complex modular curve `Γ \ ℍ`). Assumed: these are stated for `Γ₁(N)` with character and for every integral weight.

### From TauCetiRoadmap.FuchsianOrbifolds, BelyiMaps, UniversalCovers and ConformalMapping

FuchsianOrbifolds Layer 2 item 6 (the presentation `PSL₂(ℤ) = ⟨S, R | S² = R³ = 1⟩`), Layer 3 items 1–5 (cusp orbits, normalized cusp data with primitive width, `q`-coordinates, the Laurent criterion), Layer 4 (the compactification `X(Γ)` and the cusp ramification `w_{Γ′}/w_Γ` of a finite-index inclusion), Layer 5 (degree of finite holomorphic maps, the degree-one biholomorphism theorem, descent of invariant meromorphic functions) and Layer 6 (`X(1)` and `j = E₄³/Δ`). These are projective statements; the sign bookkeeping is §1.3. BelyiMaps Layer 6 (finite covers of `ℙ¹ ∖ {0, 1, ∞}` by permutation triples, deck transformations) and Layer 9 (algebraization of finite analytic three-point covers with their function fields). UniversalCovers Stage 2 (lifting criterion, covers and subgroups, deck groups). ConformalMapping L4 (Schwarz reflection, monodromy theorem).

### From TauCetiRoadmap.QSeriesPartitionsAndMockModularForms

§8.1: for a finite-index `Γ ≤ Mp₂(ℤ)`, a finite-dimensional `ρ` and `k ∈ ½ℤ`, the space `A_k(Γ, ρ)` with exponential cusp growth and its weakly holomorphic subspace (holomorphy and finite principal parts at every cusp). Assumed: integral weight is the case where the metaplectic factor is `(cτ + d)^k`, and trivial `ρ` gives scalar forms. §5.2: the η multiplier `ν_η`, with `η(τ + 1) = exp(πi/12)η(τ)` and `η(−1/τ) = √(−iτ) η(τ)`.

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

§4.3: the analytic `q`-Pochhammer product, the Jacobi triple product and its specialization `Σ (−1)^z q^(z²) = ∏ (1 − q^j)/(1 + q^j)`, valid for `|q| < 1`.

### From TauCetiRoadmap.ModularCurvesPartII

§15.2: for `N ≥ 3` and a prime `p ∤ N`, `Γ_N(ℤ[1/p]) = Γ(N) ⋆_{Γ(N) ∩ Γ₀(p)} A⁻¹Γ(N)A`. §15.3: every finite-index subgroup of `SL₂(ℤ[1/p])`, and of `Γ_N(ℤ[1/p])`, contains a principal congruence kernel of level prime to p. §15.5: the congruence classes `H¹_cong(Γ(N), 𝔽_q)`. §15.10: for `N ≥ 3`, primes `p ∤ N` and q, the kernel of the restriction difference into `H¹(Γ(N) ∩ Γ₁(p), 𝔽_q)` lies in `H¹_cong(Γ(N), 𝔽_q)²`. §5.14: the smooth proper twisted curve `X(ρ)/ℚ` for a rank-two `ℤ/m`-module scheme with perfect alternating pairing to `μ_m`, `m ≥ 3`, with `X(ρ)_L ≅ X(m, ζ)_L` over a symplectic splitting field. §6.3: cusp fields of fixed-pairing curves. §§6.4–6.5: the analytic comparison and geometric irreducibility of `Y(ρ)`. §8.1: a section over `ℂ` descends to K when its `q`-expansion at a K-rational split cusp has coefficients in K. Layer 11 (§11.4): minimal regular resolutions of modular fibres at `p > 3` for the listed levels.

What ModularCurvesPartII must provide (gap:udc-rational-cusp-of-twisted-full-level): for `V = ℤ/m ⊕ μ_m` with its standard pairing and `m ≥ 3`, the cusp `∞` of the twisted curve `X(V)` of §5.14 is `ℚ`-rational and split with Tate parameter `exp(2πiτ/m)` compatibly with the analytic comparison of §6.4, so that the rational functions on `X(V)` are exactly the meromorphic functions on `X(m)` whose expansion at `∞` in `exp(2πiτ/m)` has rational coefficients.

What ModularCurvesPartII must provide (gap:udc-all-prime-cuspidal-model-of-full-level): for `N ≥ 1` and a number field `K ⊇ ℚ(μ_N)`, a regular proper model of `X(N)_K` over `𝓞_K` at every prime, including the primes dividing `N`, with the cusp `∞` extending to a section through the smooth locus, the fibre component through that section, and compatibility with finite extensions of K.

### From TauCetiRoadmap.DiophantineApproximationAndTranscendencePartII

§4.1: for an open `U ⊆ ℂ` containing `0`, a formal coordinate `χ ∈ t + t²ℚ[[t]]` and the ring `H(U, χ, ℤ)` of integral germs annihilated by an operator over `ℚ̄(x)` with a full meromorphic local basis at every singular point in `U`. §4.2: `H` is a ring, closed under multiplication by every `p ∈ ℚ(x)` regular at `0` with `p ∘ χ` integral. §4.3: the `ℚ(x)`-span `V` and the `ℚ(p)`-span `W` of `H`. §4.5: if `p ∈ ℚ(x)` is nonconstant without poles on U with `p ∘ χ` integral, and `φ` is holomorphic near the closed unit disc, maps it into U, and has `φ(0) = 0` and `|φ′(0)| > 1`, then `W` is finite-dimensional over `ℚ(p)` and `dim_{ℚ(p)} W ≤ e·J(p ∘ φ)/log|φ′(0)|`, where `J(g)` is the mean of `log⁺|g|` on the unit circle. §4.6: `W` and `V` are fields, `dim_{ℚ(x)} V ≤ dim_{ℚ(p)} W`, and `W = V` when `χ` is integral. §4.8: the bound for `dim_{ℚ(p)} V` printed in CDT Corollary 2.0.5 fails for a nonintegral `χ`.

### From TauCetiRoadmap.ConformalMappingPartII

§0.3: continuation of local solutions of analytic linear equations along paths. §0.5: the meromorphic-basis condition at an isolated singular point. §1.4: `|φ′(0)| ≤ R(Ω, a)` for holomorphic `φ : 𝔻 → Ω` with `φ(0) = a`, with equality exactly for coverings. §1.8: for `N ≥ 2` the covering `F_N : 𝔻 → ℂ ∖ μ_N` with `F_N(0) = 0`, `F_N′(0) > 0`, cusp limit `1` at `z → 1`. §5.1: `γ_N = 16^(1/N) Γ(1 + 1/(2N))² Γ(1 − 1/N) / (Γ(1 − 1/(2N))² Γ(1 + 1/N))`. §5.5: `|F_N′(0)| = γ_N`; `γ₂ = Γ(1/4)⁴/(4π²)`, `γ₃ = Γ(1/6)³/(12π^(3/2))`. §5.8: `γ_N = 16^(1/N)(1 + ζ(3)/(2N³) + 3ζ(5)/(8N⁵) + E_N)` with `0 < E_N ≤ C/N⁶`. §9.19: an absolute C with `∫_{|z|=r} log⁺|F_N(z)^N| dμ ≤ C log(N/(1 − r))` for all `N ≥ 2` and `0 < r < 1`.

### From TauCetiRoadmap.AlgebraicModularFormsAndSerreWeights

Layer R15.2, All-prime bounded denominators: a holomorphic congruence form with rational coefficients has one integer `D ≥ 1` clearing every coefficient, at every prime including those dividing the level; the same holds for a rational congruence modular function holomorphic on `Y(2N)`, as a Laurent series. Layer R15.1, All-weight analytic comparison. Assumed for every subgroup containing `Γ(N)` and every integral weight.

### From TauCetiRoadmap.AutomorphicGaloisRepresentations

§4.2, Hilbert Ramanujan–Petersson, specialized to `ℚ`: a cuspidal newform of weight `k ≥ 2` has `|a_p| ≤ 2p^((k−1)/2)` at good primes and the tempered bound at bad primes, at every complex embedding.

### From TauCetiRoadmap.DiophantineApproximationAndTranscendence

§5.2: G-functions (`IsGFunction`, closed under sums and products, positive radius). §5.3: Galochkin's condition and Chudnovsky's theorem that a `ℚ̄(z)`-independent G-function solution of `y′ = Gy` satisfies it; the regularity at `0` of the minimal operator of a G-function.

What DiophantineApproximationAndTranscendence must provide (gap:udc-bombieri-andre-katz): the Bombieri–André theorem that a system satisfying Galochkin's condition is globally nilpotent, and Katz's theorem that a globally nilpotent operator over `ℚ̄(x)` is regular singular with quasi-unipotent local monodromy at every point of `ℙ¹`.

### From TauCetiRoadmap.EtaleCohomologyFoundations

§F.0.2: finite étale Galois categories and the étale fundamental group of a connected locally Noetherian scheme, functorial for pointed morphisms.

## How to read the build

Layer 1 fixes weak forms, bounded denominators and the geometric level, and proves Wohlfahrt's theorem. Layer 2 builds λ, its covering theorem and its arithmetic. Layer 3 defines `M₂N` and `R₂N` and proves the holonomy rank bound from DiophantineApproximationAndTranscendencePartII and ConformalMappingPartII. Layer 4 proves the nonabelian Ihara lemma from ModularCurvesPartII Layer 15, and Layer 5 turns it into degree doubling and the Chebyshev contradiction. Layer 6 assembles `R₂N = M₂N` and the unbounded denominators theorem with its variants and tests. Layers 7, 8 and 9 are applications: differential equations and vector-valued forms; quasimodular forms and deficient places; and the arithmetic fundamental group. Layers 7–9 depend on Layer 6; Layer 8 also uses the vector-valued forms and the component theorem of Layer 7 (§§7.3, 7.11, 7.13), and Layer 9 depends on neither.

## Layer 1: Weak forms and geometric levels

This layer describes weak forms on an arbitrary finite-index subgroup by their cusp germs, fixes the arithmetic meaning of bounded denominators, and develops the geometric (Wohlfahrt) level with its sign conventions: intersections, normal cores, p-scaling and Wohlfahrt's theorem.

### 1.1 Weak forms on finite-index subgroups

Define `IsWeakForm Γ k f`, for a subgroup `Γ ≤ SL₂(ℤ)`, an integer k and `f : ℍ → ℂ`, to hold when f is holomorphic, `f ∣[k] γ = f` for every `γ ∈ Γ`, and for every `g ∈ SL₂(ℤ)` there is a real C with `(f ∣[k] g)(τ) = O(exp(C · Im τ))` as `Im τ → ∞`. A weak form of weight k on Γ is a function with this property for a finite-index Γ; a weak modular function is the case `k = 0`.

Prove that for finite-index Γ the following are equivalent (CDT, Theorem 1.0.1, p.627, and Definition 7.4.3, p.692, use the second description):

1. `IsWeakForm Γ k f`;
2. f is holomorphic, Γ-invariant in weight k, and for every `g ∈ SL₂(ℤ)` the function `f ∣[k] g` has some period `h ≥ 1` and its cusp function in `exp(2πiτ/h)` is meromorphic at `0`, so its Laurent series at `∞` has finite principal part;
3. f lies in the weakly holomorphic subspace of QSeriesPartitionsAndMockModularForms §8.1 for the preimage of Γ in `Mp₂(ℤ)`, weight k and trivial multiplier.

The elements with no negative Laurent exponent at any cusp are exactly the functions underlying `ModularForm Γ k`. Restriction to a finite-index subgroup preserves the predicate, and products add weights.

*Proof sketch.* For `g ∈ SL₂(ℤ)` the slash `f ∣[k] g` is invariant under the finite-index conjugate `g⁻¹Γg`, which contains a power `±T^h`, so `f ∣[k] g` is h- or 2h-periodic. Apply FuchsianOrbifolds Layer 3, item 5: on the punctured disc, exponential growth is a pole of finite order and boundedness a removable singularity. Every rational cusp is `g∞`, which gives the equivalence of (1) and (2); changing g in its coset of the cusp stabilizer or replacing h by a multiple changes the Laurent variable by a root of unity or a power. The comparison with (3) is the definition of §8.1 at integral weight, where the metaplectic factor is `(cτ + d)^k`.

*Needs:* Mathlib `ModularForm`, `ModularForm.SL_slash`, `UpperHalfPlane.cuspFunction`, `MeromorphicAt`; FuchsianOrbifolds Layer 3; QSeriesPartitionsAndMockModularForms §8.1.

API:

- A weak form on Γ is a weak form on every subgroup of Γ, in the same weight.
- If f and g are weak forms on Γ of weights k and l, then fg is a weak form of weight `k + l` and `f + g` one of weight k when `k = l`.
- If f is a weak form on Γ, then `f ∣[k] g` is a weak form on `g⁻¹Γg` for every `g ∈ SL₂(ℤ)`.
- The function underlying an element of `ModularForm Γ k`, for Γ of finite index, is a weak form of weight k on Γ.
- A weak form on a finite-index Γ that is bounded at every cusp is the function of a unique element of `ModularForm Γ k`.
- For finite-index Γ, the predicate is equivalent to meromorphy of every cusp germ (statement (2)) and to membership in the QSeriesPartitionsAndMockModularForms §8.1 weakly holomorphic space (statement (3)).

**Checks.**

- The constant `1` is a weak form of weight 0 on `SL₂(ℤ)`; `Δ⁻¹` is a weak form of weight −12 on `SL₂(ℤ)` whose expansion begins with `Q⁻¹`, and it is not a modular form. A definition requiring boundedness at the cusps would reject it.
- For `a ∈ ℂ`, `(j − a)⁻¹` is not a weak form, since `j − a` has a zero on `ℍ`; weak forms have no interior poles, only poles at cusps.
- `exp(j)` is holomorphic and `SL₂(ℤ)`-invariant but grows like `exp(exp(2π Im τ))`; it fails the growth clause, which a definition using only holomorphy and invariance would accept.
- `f = exp(2πiτ/7)` is a weak form on `Γ(7)` in weight 0 only if it is `Γ(7)`-invariant; it is not (it is not invariant under `[[1, 0], [7, 1]]`), so checking periodicity at `∞` alone does not suffice.
- In odd weight, `IsWeakForm Γ k f` with `−I ∈ Γ` forces `f = 0`, because `f ∣[k] (−I) = −f`.

### 1.2 Bounded denominators of a Laurent germ

For a number field `K ⊆ ℂ` and a Laurent series `a(t) = Σ_{n≥n₀} a_n tⁿ ∈ K((t))`, say that a has bounded denominators when there is a nonzero `d ∈ 𝓞_K` with `d·a_n ∈ 𝓞_K` for every n, including the finitely many negative n. For `K = ℚ` take an integer `D ≥ 1`. A periodic function `f : ℍ → ℂ` with period `h ≥ 1` and a finite principal part at `∞` has bounded denominators at `∞` when its Laurent expansion in `exp(2πiτ/h)` does; for f bounded at `∞` that expansion is `UpperHalfPlane.qExpansion h f` (CDT, Theorem 1.0.1, p.627; Definition 4.2.1(2), p.655; Remarks 6.3.1–6.3.2, pp.685–686).

*Needs:* Mathlib `UpperHalfPlane.qExpansion`, `NumberField.RingOfIntegers`; §1.1.

API:

- A Laurent series has bounded denominators exactly when some nonzero scalar of `𝓞_K` maps all its coefficients into `𝓞_K`.
- Sums and products of series with bounded denominators have bounded denominators, cleared by the product of the two scalars.
- The substitution `t ↦ t^m`, `m ≥ 1`, preserves and reflects bounded denominators.
- For an h-periodic function bounded at `∞`, the coefficients are those of Mathlib's `UpperHalfPlane.qExpansion h`, and replacing h by a multiple `mh` inserts zeros (`a_n` becomes the coefficient of `t^(mn)`).
- If `a ∈ 1 + tℚ[[t]]` has bounded denominators and `aⁿ ∈ ℤ[[t]]` for some `n ≥ 1`, then `a ∈ ℤ[[t]]`.
- An integral power series with constant term `±1` has an integral inverse.

*Proof sketch* of the root property: let ℓ be prime and c minimal with `ℓ^c a ∈ ℤ_(ℓ)[[t]]`; if `c ≥ 1`, the reduction of `ℓ^c a` modulo ℓ is nonzero while that of its n-th power `ℓ^(cn) aⁿ` is zero, impossible in the domain `𝔽_ℓ[[t]]`.

**Checks.**

- The constant `1/2` has bounded denominators with `D = 2` and is not integral.
- `Σ_{n≥0} tⁿ/2ⁿ` has every coefficient in `ℤ[1/2]` but unbounded denominators; membership in `𝓞_K[1/S]((t))` is not bounded denominators.
- `Σ tⁿ/n!` has unbounded denominators at every prime.
- `(1 − 16t)^(1/16)` has `t²`-coefficient `−15/2`; its 16th power is integral, so by the root property it has unbounded denominators.
- The period must be stated separately: `exp(2πiτ)` has expansion `t` for `h = 1` and `t²` for `h = 2`; Taylor coefficients alone do not identify a Fourier germ.

### 1.3 Signed cusp widths and the geometric level

For a finite-index `Γ ≤ SL₂(ℤ)` and `g ∈ SL₂(ℤ)`, define the signed width `w_g(Γ)` as the least `m > 0` with `gT^m g⁻¹ ∈ ±Γ`. It depends only on the cusp `g∞` modulo Γ. Define the geometric (Wohlfahrt) level `L(Γ)` as the least common multiple of the signed widths over the finitely many cusps of `±Γ`. Then `L(Γ) = L(±Γ)`, and `T`-conjugates control it: `L(Γ)` divides N exactly when `gT^N g⁻¹ ∈ ±Γ` for every `g ∈ SL₂(ℤ)` (CDT, Definition 4.1.2 and Lemmas 4.1.3–4.1.4, p.653).

*Needs:* Mathlib `CongruenceSubgroup.Gamma`; Tau Ceti `TauCeti.Subgroup.integerCuspWidth`; FuchsianOrbifolds Layer 3.

API:

- `L(Γ)` is the lcm of the signed widths of any complete family of cusp representatives.
- Every signed width divides `L(Γ)`.
- Adjoining `−I` leaves every signed width and `L(Γ)` unchanged; for `−I ∈ Γ` the signed width at `g∞` is Tau Ceti's `TauCeti.Subgroup.integerCuspWidth` of `g⁻¹Γg`.
- Conjugation by any `g ∈ SL₂(ℤ)` preserves `L`.
- `L(Γ)` divides N if and only if every `SL₂(ℤ)`-conjugate of `T^N` lies in `±Γ`.

**Checks.**

- `L(SL₂(ℤ)) = 1`.
- The three cusps `∞, 0, 1` of `Γ(2)` all have width 2, so `L(Γ(2)) = 2`.
- Let `H′ = {γ ∈ Γ(2) : a_γ ≡ 1 mod 4}`; on `Γ(2)` the condition is equivalent to `d_γ ≡ 1 mod 4`, because `ad ≡ 1 mod 4` there. `H′` excludes `−I`, contains `Γ(4)`, and `L(H′) = 2`. At the cusp `1 = g∞`, `g = [[1, 0], [1, 1]]`, the matrix `gT²g⁻¹ = [[−1, 2], [−2, 3]]` is not in `H′` but its negative is; the strict width there is 4 and the signed width 2. Using strict widths in the lcm would give 4.
- The geometric level is not a congruence property: a noncongruence subgroup has a finite geometric level as well.

### 1.4 Clearing cusp poles with Δ

For a weak form f of weight k on a finite-index Γ there is `m ≥ 0` such that `fΔ^m` is the function of an element of `ModularForm Γ (k + 12m)`. Multiplication by `Δ^m` is injective, because Δ has no zero on `ℍ`; Δ has positive order at every cusp. Irregular cusps and subgroups without `−I` are included (CDT, Lemma 4.2.2, p.655; Lemma 7.4.4, pp.692–693).

*Proof sketch.* There are finitely many cusps; at each the principal part has finite order and Δ has positive order in the local parameter, so a common m clears all of them. Compare boundedness with Mathlib's `OnePoint.IsBoundedAt` cusp by cusp, retaining the sign of the local parameter at an irregular cusp.

*Needs:* §1.1; Mathlib `ModularForm.discriminant_ne_zero`, `CuspForm.discriminant`, `OnePoint.IsBoundedAt`; FuchsianOrbifolds Layer 3.

### 1.5 Level of an intersection

If `−I ∈ G` and `−I ∈ H`, both of finite index, then at every cusp the signed width of `G ∩ H` is `lcm(w(G), w(H))`; hence `L(G ∩ H) = lcm(L(G), L(H))`, and `L(G), L(H) ∣ N` gives `L(G ∩ H) ∣ N` (CDT, Lemma 4.1.3, p.653).

*Proof sketch.* With `−I` in both groups, the translation subgroups of the two stabilizers are `w(G)ℤ` and `w(H)ℤ`, and the stabilizer of the intersection meets them in `lcm(w(G), w(H))ℤ`.

*Needs:* §1.3.

### 1.6 Level of the normal core

For finite-index `G ≤ SL₂(ℤ)` containing `−I`, the normal core `Subgroup.normalCore G` has finite index, contains `−I`, and has the same level `L(G)` (CDT, Lemma 4.1.4, p.653).

*Proof sketch.* The coset action has finite image, so the core is the intersection of finitely many conjugates; each has level `L(G)` by §1.3, and §1.5 gives the lcm. The core lies in G, so its level is a multiple of `L(G)`.

*Needs:* §1.5; Mathlib `Subgroup.normalCore`.

### 1.7 Level after p-scaling

Let H have finite index, contain `−I`, and have `L(H) = N`. For a prime p and `A = diag(p, 1)`, put `H_A = A⁻¹HA ∩ SL₂(ℤ)`, the conjugation taken in `GL₂(ℚ)`. Then `H_A` has finite index, contains `−I`, and `L(H_A)` divides `Np` (CDT, Notation 4.1.5 and Lemma 4.1.7, pp.653–655).

*Proof sketch.* Represent a cusp by a primitive integral column `(a, c)` and split according to whether p divides c. Compute the conjugated parabolic in each case. In the second case CDT p.654 prints the correcting diagonal as `diag(p, 1/p)`, for which the displayed matrix does not have determinant 1; the correct factor is `diag(1/p, p)`, giving `(a/p, b; c, pd)` and translation exponent `Np`.

*Needs:* §1.3.

### 1.8 Wohlfahrt's theorem with signs

If G is a congruence subgroup containing `−I`, then `Γ(L(G)) ≤ G`. For an arbitrary congruence subgroup G, `Γ(L(G)) ≤ ±G`. Hence a congruence subgroup containing `−I` and every `SL₂(ℤ)`-conjugate of `T^N` contains `Γ(N)` (Wohlfahrt's Theorem 2, as used in CDT, proof of Lemma 4.4.1, p.659; KSV10, §3, Lemma 7, Proposition 3 and Remark 8, pp.4–6, for the proof with signs).

*Proof sketch.* Let G contain `Γ(ν)` and let `N = L(G)`. Given `γ ∈ Γ(N)`, multiply by elementary transvections `gT^N g⁻¹ ∈ G` to make the lower-right entry prime to ν; the Chinese remainder theorem, avoiding one residue for each prime dividing ν, replaces Dirichlet's theorem. Clear the off-diagonal entries modulo ν with KSV10 equation (1), `M = (T^(1−d))ᵗ L T^(d−1)` with `L = [[a, a − 1], [1 − a, 2 − a]]`. Its factorization is `L = (Tᵗ)⁻¹ T^(a−1) Tᵗ`; the line after equation (1) on KSV10 p.6 prints the two conjugating factors in the opposite order, which fails already at `a = 2` (the printed product is `[[0, 1], [−1, 2]]`, the intended L is `[[2, 1], [−1, 0]]`). What remains lies in `Γ(ν) ≤ G`.

*Needs:* §1.3; Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`, `CongruenceSubgroup.Gamma`; Tau Ceti `CongruenceSubgroup.Gamma_le_Gamma_of_dvd`.

### Examples

- `H′ = {γ ∈ Γ(2) : d_γ ≡ 1 mod 4}` has `L(H′) = 2`, excludes `−I` and contains `Γ(4)`. It satisfies the signed conclusion `Γ(2) ≤ ±H′ = Γ(2)` and refutes the unsigned one `Γ(2) ≤ H′`, since `−I ∈ Γ(2)`.
- `L(Γ₀(p) ∩ Γ(2))` for an odd prime p is `2p`: the cusp `∞` has width 2 and the cusp `0` width `2p`.
- `Δ⁻¹ · Δ = 1` clears the pole of `Δ⁻¹` with `m = 1`.

### Dependencies

QSeriesPartitionsAndMockModularForms §8.1; FuchsianOrbifolds Layer 3; Mathlib's modular-form, `q`-expansion and congruence-subgroup API; Tau Ceti cusp widths; KSV10 for §1.8.

## Layer 2: The modular λ coordinate

This layer builds λ from the Dedekind η function, proves that it is the universal covering of `ℂ ∖ {0, 1}` with deck group `Γ(2)/±I`, identifies the level-two function ring, and proves the arithmetic of the coordinate `x = λ/16`: its integral inverse, the normalized Kummer roots, and Jacobi's hypergeometric identity with its character.

### 2.1 The modular λ function

Define `modularLambda τ = 16 (η(τ/2) η(2τ)² / η(τ)³)⁸` from Mathlib's `ModularForm.eta` (CDT, (1.0.2), p.628; §1.1.3, p.631; §7.4.2, p.693). On `ℍ` the denominator does not vanish (`ModularForm.eta_ne_zero`). Prove the product formula `x = λ/16 = q ∏_{n≥1} ((1 + q^(2n))/(1 + q^(2n−1)))⁸`, by separating even and odd factors of the η products, and the theta formulas `λ = (θ₂/θ₃)⁴` and `1 − λ = (θ₄/θ₃)⁴`, where `θ₃(τ) = Σ q^(n²)`, `θ₄(τ) = θ₃(τ + 1)` and `θ₂(τ) = Σ q^((n+1/2)²)`, from the triple product and Jacobi's identity `θ₃⁴ = θ₂⁴ + θ₄⁴`. Prove `λ(τ + 1) = λ(τ)/(λ(τ) − 1)`, `λ(−1/τ) = 1 − λ(τ)`, invariance under `Γ(2)`, and that λ omits `0` and `1` on `ℍ`; the cusps `∞, 0, 1` of `Γ(2)` go to `0, 1, ∞`.

*Needs:* Mathlib `ModularForm.eta`, `ModularForm.eta_ne_zero`, `jacobiTheta`, `jacobiTheta₂`, `jacobiTheta₂_functional_equation`; GeometryOfNumbersAndQuadraticArithmetic §4.3 (triple product); ModularForms, Worked examples (η transformation); QSeriesPartitionsAndMockModularForms §5.2.

API:

- `modularLambda` is 16 times the eighth power of the displayed η quotient, and it is holomorphic on `ℍ`.
- On `ℍ`, `λ = (θ₂/θ₃)⁴` and `1 − λ = (θ₄/θ₃)⁴`.
- `λ(γτ) = λ(τ)` for `γ ∈ Γ(2)`; `λ(τ + 1) = λ(τ)/(λ(τ) − 1)` and `λ(−1/τ) = 1 − λ(τ)`.
- λ takes no value in `{0, 1}` on `ℍ`.
- The expansion of `x = λ/16` in `q = exp(πiτ)` is the integral product above, and `UpperHalfPlane.qExpansion 2 x` is that product's coefficient sequence.

**Checks.**

- `λ(i) = 1/2`, from `λ(−1/τ) = 1 − λ(τ)` at the fixed point `τ = i`.
- `x = q − 8q² + 44q³ − 192q⁴ + 718q⁵ + O(q⁶)`; a normalization by `16q` would have linear coefficient 16, which `x` does not.
- `λ(τ + 1) = λ/(λ − 1)`, not `λ`: λ is not `SL₂(ℤ)`-invariant, so it is not a function of j alone. To second order, `λ(τ + 1) = −16q − 128q² + ⋯`, matching `λ/(λ − 1) = −λ − λ² + ⋯`.
- `UpperHalfPlane.qExpansion 2` of x has coefficient 1 at `n = 1`; that of λ has 16.

### 2.2 The λ covering and its cusp values

`modularLambda_covering`: λ maps `ℍ` onto `ℂ ∖ {0, 1}`, it is a covering map onto that set, and `λ(τ) = λ(τ′)` exactly when `τ′ = γτ` for some `γ ∈ Γ(2)`. Hence λ is a holomorphic universal covering with deck group `Γ(2)/±I`, and it extends to a biholomorphism `X(2) ≅ ℙ¹` sending the cusps `∞, 0, 1` to `0, 1, ∞`. For every finite-index `H ≤ Γ(2)` containing `−I`, the map `Y(H) → Y(2) ≅ ℂ ∖ {0, 1}` is finite étale and the compactified map is branched only above `0, 1, ∞` (CDT, p.628, and proof of Proposition 3.0.1, p.650).

*Proof sketch.* Show that λ maps the standard fundamental domain of `Γ(2)` bijectively onto `ℂ ∖ {0, 1}`, using the theta transformations, the cusp values and Schwarz reflection on the boundary arcs. The induced map `X(2) → ℙ¹` has degree one, hence is biholomorphic (FuchsianOrbifolds Layer 5). `Γ(2)/±I` acts freely on `ℍ` because `Γ(2)` has no elliptic elements, so `ℍ → Y(2)` is a covering, and `ℍ` is simply connected (UniversalCovers Stage 2). Finite covers of `ℂ ∖ {0, 1}` correspond to finite-index subgroups (BelyiMaps Layer 6).

*Needs:* §2.1; ConformalMapping L4; UniversalCovers Stage 2; FuchsianOrbifolds Layers 4–5; BelyiMaps Layer 6; Mathlib `IsCoveringMapOn`.

### 2.3 The level-two function ring

The ring of weight-zero weak forms on `Γ(2)` is `ℂ[λ, λ⁻¹, (1 − λ)⁻¹]`. Its subring of functions with rational expansion at `∞` is `ℚ[λ, λ⁻¹, (1 − λ)⁻¹]`, with fraction field `ℚ(λ)` (CDT, §4.2, p.655; (1.0.2), p.628).

*Proof sketch.* By §2.2 a weight-zero weak form on `Γ(2)` is a meromorphic function on `ℙ¹` with poles only at `0, 1, ∞` in the coordinate λ. If its expansion is rational, write it as a reduced rational function of λ and use the integral inverse of §2.4 to read its coefficients from the expansion; uniqueness of the reduced form forces them into `ℚ`.

*Needs:* §§1.1, 2.2, 2.4.

### 2.4 Integral λ reparametrization

The formal series `x(q) = λ/16 ∈ q + q²ℤ[[q]]` has a unique compositional inverse `q(x) ∈ x + x²ℤ[[x]]`; substitution gives mutually inverse ring isomorphisms `ℤ[[q]] ≅ ℤ[[x]]`, and the same over every coefficient ring. Its first terms are `q = x + 8x² + 84x³ + 992x⁴ + 12514x⁵ + O(x⁶)` (CDT, §1.1.3, p.631; (3.0.2), p.650).

*Proof sketch.* The linear coefficient is the unit 1, so each inverse coefficient is solved for without division. The formal identities give equalities of analytic germs on a small disc.

*Needs:* §2.1.

### 2.5 The normalized Kummer coordinate

For `N ≥ 1` and `t = q^(1/N)` there is a unique `x_N(t) ∈ t + t²ℚ[[t]]` with `x_N(t)^N = x(t^N)`. It lies in `t + t²ℤ[1/N][[t]]`, and `x_N^N` is integral; `x_N` itself need not be. Pulling back `x` along `u ↦ u^N` leaves possible singularities only at `16^(−1/N)μ_N` and `∞` (CDT, (3.0.2) and proof of Proposition 3.0.1, p.650).

*Proof sketch.* `x(t^N) = t^N · v(t)` with `v ∈ 1 + tℤ[[t]]`; the binomial series for `v^(1/N)` has coefficients in `ℤ[1/N]`. The singular fibre `x = 1/16` of the hypergeometric equation pulls back to `16^(−1/N)μ_N`.

*Needs:* §§1.3, 2.4.

### 2.6 Jacobi's hypergeometric identity with its character

Let `K₀(x) = Σ_{n≥0} C(2n, n)² xⁿ = ₂F₁(1/2, 1/2; 1; 16x)`. Then `K₀(x(τ)) = θ₃(τ)²`. The function `θ₃²` has weight 1 on `Γ(2)` with the character `χ(γ) = χ₋₄(d_γ)` and is a trivial-character form on `H′ = {γ ∈ Γ(2) : d_γ ≡ 1 mod 4}`. The series `K₀` is integral, is transcendental over `ℚ(x)`, and solves `x(1 − 16x)y″ + (1 − 32x)y′ − 4y = 0`, whose local monodromy at `0` is unipotent and nontrivial (CDT, (1.1.4)–(1.1.5), p.631; Remark 7.2.3 and (7.2.4), p.688). CDT treats `θ₃²` as a weight-one form with trivial character on `Γ(2)`; since `−I ∈ Γ(2)`, no nonzero odd-weight form has trivial character there, and the character `χ₋₄(d)` is required.

*Proof sketch.* Both sides solve the hypergeometric equation in x with constant term 1. Square the `S` and `T²` laws of `θ₃` (Mathlib `jacobiTheta_S_smul`, `jacobiTheta_T_sq_smul`), keeping `χ₋₄(d)`. The second solution has a logarithmic term at `0`, which gives infinite monodromy.

*Needs:* §§2.1–2.2; Mathlib `jacobiTheta`, `jacobiTheta_S_smul`, `jacobiTheta_T_sq_smul`; Tau Ceti `TauCeti.char_neg_one_of_modFormCharSpace_ne_bot`.

### 2.7 Two modular uniformizations

With ConformalMappingPartII's Cayley coordinate C, the function `F₂(z) = 1 − 2λ(C(z))` is a pointed universal covering `𝔻 → ℂ ∖ {±1}` with `F₂(0) = 0`, `F₂′(0) > 0` and cusp limit 1 at `z → 1`; hence it is the normalized covering `F_2` of ConformalMappingPartII §1.8, and `|F₂′(0)| = γ₂ = Γ(1/4)⁴/(4π²)` by ConformalMappingPartII §5.5. The η quotient of CDT Example 5.1.22 at `N = 3` agrees with the normalized covering `F_3` after a rotation of the disc. Among `N ≥ 2`, `ℂ ∖ μ_N` is biholomorphic to `Y(N)` only for `N = 2, 3` (CDT, Example 5.1.22, p.673; Theorem 5.1.4, pp.667–668).

*Proof sketch.* Compose λ with C and the affine map `u ↦ 1 − 2u`. On the imaginary axis λ is real and decreases from 1 to 0, so `λ′(i) = ic` with `c > 0`, and `F₂′(0) = −2λ′(i)C′(0) = −2(ic)(2i) = 4c > 0`. For the last assertion compare punctures and genus: `ℂ ∖ μ_N` is a sphere minus `N + 1` points, `Y(2)` and `Y(3)` are spheres minus 3 and 4 points with matching cross-ratio, `Y(4)` and `Y(5)` have 6 and 12 cusps, and `Y(N)` has positive genus for `N ≥ 6`.

*Needs:* §§2.1–2.2; ConformalMappingPartII §§1.8, 5.5; FuchsianOrbifolds Layer 5.

### Examples

- `F₂(0) = 0`, and `F₂` omits exactly `±1`. Numerically `|F₂′(0)| ≈ 4.37688` and `|F₃′(0)| ≈ 2.58106`, both larger than `16^(1/2) = 4` and `16^(1/3) ≈ 2.51984`.
- CDT writes the same covering as `2λ(i(1 − z)/(1 + z)) − 1`, which is `−F₂(−z)`: a rotation of the disc by π, with the same `|F′(0)|`.
- `x₃ = t − (8/3)t⁴ + (68/9)t⁷ + ⋯`: the cube is integral, the root is not.
- `K₀(x(τ)) − θ₃(τ)²` vanishes through `q¹⁵`; the coefficients of K₀ satisfy `(n + 1)² a_{n+1} = 4(2n + 1)² a_n`, which is the hypergeometric equation coefficientwise.
- `−I` acts on `θ₃²` by `χ₋₄(−1) = −1`, as parity requires in weight 1.

### Dependencies

Layer 1; Mathlib η, θ and covering-map API; GeometryOfNumbersAndQuadraticArithmetic §4.3; QSeriesPartitionsAndMockModularForms §5.2; ModularForms, Worked examples; ConformalMapping L4; UniversalCovers Stage 2; FuchsianOrbifolds Layers 4–5; BelyiMaps Layer 6; ConformalMappingPartII §§1.8, 5.5.

## Layer 3: Bounded-denominator fields and holonomy rank

This layer defines the two `ℚ(λ)`-spans `M₂N ⊆ R₂N` inside one Laurent field, proves that both are fields of finite degree over `ℚ(λ)`, constructs a normal stabilizer of exact level `2N`, and bounds `[R₂N : ℚ(λ)]` by `C N³ log(2N)` through the holonomic rank bound of DiophantineApproximationAndTranscendencePartII.

Throughout, `N ≥ 1`, `t = q^(1/N) = exp(2πiτ/(2N))`, and every span lies in the Laurent field `ℚ((t))`, with `ℚ(λ)` embedded through the integral series `λ(t^N) = 16t^N − 128t^(2N) + ⋯`. A weak modular function whose stabilizer contains `±T^(2N)` and whose expansion at `∞` in t is rational is identified with that expansion; the expansion map is injective on such functions.

### 3.1 The field M₂N

Define `M₂N` as the `ℚ(λ)`-linear span in `ℚ((t))` of the expansions at `∞` of weight-zero weak forms on `Γ(2N)` with rational expansion coefficients (CDT, Definition 4.2.1(1), p.655). Each generator is holomorphic on `Y(2N)`; poles at cusps are allowed. The field structure is a theorem (§3.6), not part of the definition.

*Needs:* §§1.1, 2.3, 2.4; Mathlib `CongruenceSubgroup.Gamma`.

API:

- A weight-zero weak form on `Γ(2N)` with rational expansion at `∞` lies in `M₂N`.
- `M₂ = ℚ(λ)`, by §2.3.
- If `N ∣ M`, the substitution `t_N ↦ t_M^(M/N)` embeds `M₂N` into `M₂M`.
- The expansion map from weight-zero weak forms on `Γ(2N)` with rational coefficients to `ℚ((t))` is injective and, after multiplying by a power of λ that clears the pole at `∞`, agrees with Mathlib's `UpperHalfPlane.qExpansion (2N)`.

**Checks.**

- `λ`, `λ⁻¹` and `(1 − λ)⁻¹` lie in `M₂` and generate it as a field.
- `√2` is not in `M₂`: its constant expansion is not rational. A definition with complex coefficients would admit it.
- `[M₄ : M₂] = 4` (§5.4 at `N = 2`), using the projective index `[Γ(2) : ±Γ(4)] = 4`; the unsigned index `[Γ(2) : Γ(4)] = 8` would give the wrong degree.
- `λ⁻¹` has a pole at `∞` and is a generator; a definition restricted to functions holomorphic at the cusps would lose it.

### 3.2 The field R₂N

Define `R₂N` as the `ℚ(λ)`-linear span in `ℚ((t))` of the expansions at `∞` of weight-zero weak forms f with rational coefficients and bounded denominators that are invariant under some finite-index subgroup H containing `−I` with `L(H) ∣ 2N` (CDT, Definition 4.2.1(2), p.655; Proposition 3.0.1, p.650). The subgroup H may depend on f. A generator has finitely many negative exponents; multiplying it by a power of λ makes it holomorphic at `∞` without changing the span. General elements of the span can have interior poles, coming from rational functions of λ.

*Needs:* §§1.1–1.3, 2.3.

API:

- A rational weak modular function with bounded denominators, invariant under some finite-index H containing `−I` with `L(H) ∣ 2N`, lies in `R₂N`.
- If `N ∣ M`, the substitution of §3.1 embeds `R₂N` into `R₂M`.
- The product of two generators is a generator, for the intersection of their subgroups and the product of their denominators (§1.5).
- Multiplying a generator by `λ^m` clears its pole at `∞` for m large and does not change its span.

**Checks.**

- Every rational constant lies in `R₂`, including `1/2`; bounded denominators do not mean integral.
- A series is not admitted merely because it lies in `ℤ[1/2]((t))`; one denominator for all coefficients is required.
- Every rational weak modular function on `Γ(4)` lies in `R₄`, by the all-prime bounded denominators of AlgebraicModularFormsAndSerreWeights Layer R15.2.
- An element of the span such as `(λ − 1/2)⁻¹` has an interior pole at `τ = i`; requiring every span element to be holomorphic on `ℍ` would change the definition.

### 3.3 Congruence functions have bounded denominators

For every `N ≥ 1`, `M₂N ⊆ R₂N` (CDT, Lemma 4.2.2, p.655).

*Proof sketch.* A generator of `M₂N` is a rational weight-zero weak form on `±Γ(2N)`, whose level is `2N`. AlgebraicModularFormsAndSerreWeights Layer R15.2 (All-prime bounded denominators) gives it one denominator at every prime, including the primes dividing `2N`, by clearing its cusp poles with `Δ^m` (§1.4) and dividing by the integral Laurent series `Δ^(−m) = q^(−2m) ∏ (1 − q^(2n))^(−24m)`.

*Needs:* §§1.4, 3.1, 3.2; AlgebraicModularFormsAndSerreWeights Layer R15.2.

### 3.4 The modular holonomy embedding

Let `U_N = ℂ ∖ 16^(−1/N)μ_N`, let `χ = x_N(t)` be the Kummer coordinate of §2.5, and let `p(u) = u^N`, so that `p(χ(t)) = x(t^N) = λ/16` is integral and `ℚ(p) = ℚ(λ)`. Read through the formal inverse of χ, every element of `R₂N` lies in the `ℚ(p)`-span `W(U_N, χ, p)` of the integral holonomic ring `H(U_N, χ, ℤ)` of DiophantineApproximationAndTranscendencePartII §§4.1, 4.3. Each generator enters H after multiplication by a nonzero integer clearing its denominators and a power of p clearing its pole at `∞`; both multipliers lie in `ℚ(p)^×` (CDT, proof of Proposition 3.0.1, pp.650–651; Definition 2.0.4, pp.635–636). CDT (3.0.5) places `R₂N` in the larger `ℚ(u)`-span `V` and bounds `dim_{ℚ(p)} V`; for the nonintegral coordinate χ that bound can fail by the factor `[ℚ(u) : ℚ(p)] = N` (DiophantineApproximationAndTranscendencePartII §4.8), which would spoil the bound of §3.8, so the containment is stated for W.

*Proof sketch.* A generator f of `R₂N` is invariant under a finite-index H containing `−I` with `L(H) ∣ 2N`, so it is a rational function on the algebraic curve `Y(H)`, finite étale over `Y(2)` (§2.2; BelyiMaps Layer 9). Its continuations along paths in `ℂ ∖ {0, 1}` are the finitely many conjugate functions on `Y(H)`, so its minimal operator over `ℚ̄(λ)` has a full meromorphic local basis at every point of `ℂ ∖ {0, 1}` in the sense of ConformalMappingPartII §0.5. Pull back along `u ↦ 16u^N`: since every signed width of H divides `2N`, a local coordinate at each cusp above `λ = 0` is a power of u, so the pulled-back operator has a full meromorphic local basis at `u = 0` as well; its remaining finite singularities lie in `16^(−1/N)μ_N`, outside `U_N`. Clearing denominators and the pole gives an element of `H(U_N, χ, ℤ)`.

*Needs:* §§2.2, 2.5, 3.2; BelyiMaps Layer 9; DiophantineApproximationAndTranscendencePartII §§4.1–4.3; ConformalMappingPartII §0.5.

### 3.5 Finiteness of the bounded-denominator field

For every `N ≥ 1`, `R₂N` is finite-dimensional over `ℚ(λ)` (CDT, Lemma 4.2.2, p.655; §1.1.6, p.632).

*Proof sketch.* For `N ≥ 2` let `F_N` be the normalized covering of ConformalMappingPartII §1.8. By §5.5 of that roadmap `|F_N′(0)| = γ_N`, and by its §5.8 `γ_N > 16^(1/N)`. Choose `r < 1` with `rγ_N 16^(−1/N) > 1` and set `φ(z) = 16^(−1/N)F_N(rz)`; φ is holomorphic near the closed disc, maps it into `U_N`, and `|φ′(0)| > 1`. DiophantineApproximationAndTranscendencePartII §4.5 with `p(u) = u^N` and `χ = x_N` makes `W(U_N, χ, p)` finite-dimensional over `ℚ(λ)`, and §3.4 places `R₂N` inside it. For `N = 1`, `R₂ ⊆ R₄` by §3.2. The strict inequality is needed: the disc map `u = x_N(t)` has derivative one at `0`, and ConformalMappingPartII §1.4 shows that equality occurs only for coverings.

*Needs:* §3.4; ConformalMappingPartII §§1.4, 1.8, 5.5, 5.8; DiophantineApproximationAndTranscendencePartII §4.5.

### 3.6 The two spans are fields

`M₂N` and `R₂N` are `ℚ(λ)`-subalgebras of the field `ℚ((t))` of finite dimension, hence fields, with `ℚ(λ) ⊆ M₂N ⊆ R₂N` (CDT, Lemma 4.2.3, pp.655–656).

*Proof sketch.* Products of generators are generators (§§3.1–3.2, with §1.5 for the intersection subgroup). Multiplication by a nonzero element is an injective `ℚ(λ)`-linear endomorphism of a finite-dimensional space inside a field, hence surjective, which produces inverses. `M₂N` is finite-dimensional as a subspace of `R₂N` (§3.3).

*Needs:* §§1.5, 3.3, 3.5.

### 3.7 A normal stabilizer of exact level 2N

There is a normal finite-index subgroup `G₂N` of `SL₂(ℤ)` with `−I ∈ G₂N ≤ ±Γ(2N)`, `L(G₂N) = 2N`, under which every element of `R₂N` is invariant (CDT, Lemma 4.2.3, pp.655–656). For `N = 1` the upper group is `Γ(2)`, of level 2.

*Proof sketch.* Choose finitely many generators spanning `R₂N` (§3.6) with subgroups `H_i`. Intersect the `H_i` with `±Γ(2N)` and take the normal core. Each `H_i` has level dividing `2N`, so the intersection does too (§1.5); it lies in `±Γ(2N)`, whose level is `2N`, so its level is exactly `2N`, and the core keeps it (§1.6). Rational combinations of invariant functions are invariant. CDT takes the core of the generator stabilizers alone, without the factor `±Γ(2N)`; for `R₂ = M₂ = ℚ(λ)` with the basis `{1}` that core is `SL₂(ℤ)`, of level 1, and it does not fix λ.

*Needs:* §§1.5, 1.6, 3.3, 3.6.

### 3.8 The holonomy rank bound

Let `F_N : 𝔻 → ℂ ∖ μ_N` be the normalized coverings of ConformalMappingPartII §1.8. Suppose that for some `A > 0` and all sufficiently large N, `|F_N′(0)| ≥ 16^(1/N)(1 + A/N³)`, and that for each `B > 0` there is `C_B` with `∫ log⁺|F_N(re^(iθ))| dθ/2π ≤ C_B (log N)/N` at `r = 1 − B/N³` for all large N. Then there is C with `[R₂N : ℚ(λ)] ≤ C N³ log(2N)` for every `N ≥ 1` (CDT, Proposition 3.0.1, pp.649–651; Corollary 2.0.5, p.636; §6.3, p.685). CDT writes `C N³ log N`, which is `0` at `N = 1` although `[R₂ : ℚ(λ)] = 1`; `log(2N)` is the uniform form.

*Proof sketch.* Take `φ(z) = 16^(−1/N)F_N(rz)` with `r = 1 − A/(2N³)`. For large N, `log|φ′(0)| ≥ log(1 + A/N³) + log(1 − A/(2N³)) ≥ A/(3N³)`. With `p(u) = u^N`, DiophantineApproximationAndTranscendencePartII §4.5 bounds `dim_{ℚ(p)} W` by `e·J(p ∘ φ)/log|φ′(0)|`, and `log⁺|F^N/16| ≤ N log⁺|F|` with the second hypothesis at `B = A/2` makes `J(p ∘ φ) = O(log N)`. Hence `dim W = O(N³ log N)`, and §3.4 bounds `R₂N`. Absorb the finitely many small N using §3.5.

*Needs:* §§2.5, 3.4, 3.5; ConformalMappingPartII §1.8; DiophantineApproximationAndTranscendencePartII §4.5.

### Examples

- `M₂ = R₂ = ℚ(λ)` once Layer 6 is complete; the basis `{1}` shows why §3.7 must intersect with `Γ(2)`.
- For `N = 3`, `χ = x₃ = t − (8/3)t⁴ + ⋯` is not integral while `p(χ) = x(t³)` is; the rank bound runs on W and not on V.
- At `N = 2`, `γ₂ ≈ 4.37688 > 4`, so §3.5 applies with `r` slightly below 1, for instance `r = 0.95` gives `|φ′(0)| ≈ 1.0395`.
- A function with a single analytic branch but an essential singularity, such as `exp(1/x)` at `x = 0`, has trivial topological monodromy but no meromorphic basis; the meromorphic-basis condition of ConformalMappingPartII §0.5 excludes it from H.

### Dependencies

Layers 1–2; AlgebraicModularFormsAndSerreWeights Layer R15.2; BelyiMaps Layer 9; DiophantineApproximationAndTranscendencePartII §§4.1–4.5, 4.8; ConformalMappingPartII §§0.5, 1.4, 1.8, 5.5, 5.8.

## Layer 4: The nonabelian Ihara lemma and the generation identity

This layer proves the group theory behind leveraging: the nonabelian Ihara lemma, its enhancement by the Borel reduction modulo p, and the generation identity, from the amalgam, the congruence subgroup property and the enhanced Ihara kernel bound of ModularCurvesPartII Layer 15.

Throughout, `N ≥ 3`, p is a prime not dividing N, `A = diag(p, 1)`, `D = Γ(N) ∩ Γ₀(p)`, and `c(g) = AgA⁻¹` for `g ∈ D`, which lies in `Γ(N)` and has upper-right entry divisible by p.

### 4.1 Nonabelian Ihara surjectivity

`nonabelian_ihara`: let G be a normal finite-index subgroup of `SL₂(ℤ)` containing every `SL₂(ℤ)`-conjugate of `T^N` (so the geometric level of G divides N), and put `S = Γ(N)/(G ∩ Γ(N))`. Then the map `D → S × S`, `g ↦ (g, c(g))` modulo G, is surjective: for all `a, b ∈ Γ(N)` there is `g ∈ D` with `ga⁻¹ ∈ G` and `c(g)b⁻¹ ∈ G` (CDT, Lemma 4.4.1, pp.658–659). When `−I ∈ G ≤ ±Γ(N)`, S is CDT's `±Γ(N)/G`, and surjectivity from the unsigned domain D gives CDT's surjectivity from `±Γ(N) ∩ Γ₀(p)`. CDT p.658 says conjugation by A preserves `±Γ(N) ∩ Γ₀(p)`; it does not: `[[1, 0], [Np, 1]] ↦ [[1, 0], [N, 1]] ∉ Γ₀(p)`, and the image of `D` under c is the subgroup of `Γ(N)` with upper-right entry divisible by p.

*Proof sketch.* Both projections `D → S` are surjective: `G ∩ Γ(N)` contains `T^N` and `[[1, 0], [N, 1]]`, whose reductions generate `SL₂(𝔽_p)`, and D is the preimage of the Borel subgroup. If the image were proper, Goursat (Mathlib `Subgroup.goursat_surjective`) would give a nontrivial common quotient Δ of S and homomorphisms `g₁ : Γ(N) → Δ`, `g₂ : A⁻¹Γ(N)A → Δ` agreeing on D. By ModularCurvesPartII §15.2, `Γ_N(ℤ[1/p])` is the amalgam of these two groups over D, so `g₁, g₂` extend to `Γ_N(ℤ[1/p]) → Δ`; by ModularCurvesPartII §15.3 its kernel contains a principal congruence kernel of level prime to p, so `K = ker g₁` is a congruence subgroup of `SL₂(ℤ)`. K contains every conjugate of `T^N`, so `±K` is congruence, contains `−I`, and has level dividing N; Wohlfahrt (§1.8) gives `Γ(N) ≤ ±K`, and since `−I ∉ Γ(N)` for `N ≥ 3` and `K ≤ Γ(N)`, `Γ(N) = K`. Then Δ is trivial, a contradiction.

*Needs:* §§1.3, 1.8; ModularCurvesPartII §§15.2–15.3; Mathlib `Subgroup.goursat_surjective`, `CongruenceSubgroup.Gamma0`, `CongruenceSubgroup.Gamma_normal`.

### 4.2 Triple surjectivity with the reduction kernel

Let G be normal of finite index with `−I ∈ G ≤ ±Γ(N)` and `L(G) = N`, `S = ±Γ(N)/G ≅ Γ(N)/(G ∩ Γ(N))`, and let `B ⊆ SL₂(𝔽_p)` be the upper triangular subgroup. The map `D → S × S × B`, given by the two maps of §4.1 and reduction modulo p, is surjective, and the reduction kernel on D is `Γ(Np)` (CDT, Lemma 4.4.4, pp.659–660). On the signed domain `±Γ(N) ∩ Γ₀(p)` CDT identifies the reduction kernel with `Γ(Np)`; that kernel is larger, since a matrix congruent to `−I` modulo N and to `I` modulo p lies in it but not in `Γ(Np)`, which is why the computation is made on D.

*Proof sketch.* The image in `S × S` is everything by §4.1. The level-N unipotent `T^N` lies in both quotient kernels and reduces onto the unipotent radical U of B. A proper image then comes, by Goursat, from a common quotient of `S × S` and the torus `B/U`, hence from a character of prime order. Restricted to `Γ(N) ∩ Γ₁(p)` it gives a pair of characters of `Γ(N)` in the kernel of the enhanced Ihara map, which are congruence classes by ModularCurvesPartII §15.10. A congruence class factoring through S kills `G ∩ Γ(N)` and some `Γ(M)`; the signed closure of its kernel is congruence of level dividing N, so §1.8 and `N ≥ 3` force it to vanish. The reduction kernel on D is `Γ(Np)` by the Chinese remainder theorem.

*Needs:* §4.1; §1.8; ModularCurvesPartII §§15.5, 15.10; Mathlib `Subgroup.goursat_surjective`, `CongruenceSubgroup.Gamma0`, `CongruenceSubgroup.Gamma1`.

### 4.3 The generation identity

With G, p, A as in §4.2, the subgroup generated by `−I`, `G ∩ Γ(Np)` and `A⁻¹GA ∩ Γ₀(p)` is `±Γ(N) ∩ Γ₀(p)` (CDT, (4.4.9), p.660). Here `A⁻¹GA ∩ SL₂(ℤ)` already lies in `Γ₀(p)`.

*Proof sketch.* In the triple product of §4.2 the images of `ker(f₁, π)` and `ker f₂` generate, and both contain the triple kernel; their preimages generate D. On D these kernels are `G ∩ Γ(Np)` and `A⁻¹GA ∩ D`. Adjoining `−I` recovers the signed domain. The statement does not use the signed reduction kernel, so it is unaffected by its being larger than `Γ(Np)`.

*Needs:* §4.2; Mathlib `CongruenceSubgroup.Gamma0`.

### Examples

- If `G ⊇ Γ(N)`, then S is trivial and §4.1 is the statement that D is nonempty.
- At `N = 3`, `p = 2`: reduction of `Γ(3)` modulo 2 is `SL₂(𝔽₂)`, and `D = Γ(3) ∩ Γ₀(2)` has index 3 in `Γ(3)`, the number of neighbours of a vertex of the tree of `SL₂(ℚ₂)`.
- `c([[1, 0], [6, 1]]) = [[1, 0], [3, 1]]` for `N = 3`, `p = 2`: the conjugate lies in `Γ(3)` but not in `Γ₀(2)`.
- For `N ≤ 2` the amalgam of ModularCurvesPartII §15.2 is not available; leveraging uses only levels `2N ≥ 4` (§5.2).

### Dependencies

Layer 1 (§§1.3, 1.8); ModularCurvesPartII §§15.2, 15.3, 15.5, 15.10; Mathlib Goursat and congruence-subgroup API.

## Layer 5: Leveraging and degree doubling

This layer proves that p-scaling a noncongruence element of `R₂N` produces an element outside the compositum of `R₂N` and `M₂Np`, so that `[R₂N : M₂N]` at least doubles at each new prime, and that this contradicts the cubic-logarithmic bound of §3.8.

### 5.1 Intersection and degree-preserving base change

For a prime `p ∤ 2N`, `R₂N ∩ M₂Np = M₂N` and `[R₂N M₂Np : M₂Np] = [R₂N : M₂N]`, all fields embedded in `ℚ((q^(1/(Np))))` (CDT, proof of Theorem 4.3.2, pp.656–657; Lemma 4.2.3, p.656). The second statement is a linear-disjointness assertion and does not follow from the first for arbitrary extensions.

*Proof sketch.* An element of `R₂N ∩ M₂Np` is invariant under `G₂N` (§3.7) and under `Γ(2Np)`; its stabilizer is congruence, contains `−I` and has level dividing `2N`, so §1.8 gives invariance under `Γ(2N)`. Over `ℂ`, ModularCurvesPartII §5.14 and §6.4, with the rational cusp below, identify `ℂM₂m` with the function field of `X(m)`. `ℚ((t))` and `ℂ` are linearly disjoint over `ℚ` inside `ℂ((t))` (compare coefficients), so for finite extensions `K ⊆ L` of subfields of `ℚ((t))`, `[ℂL : ℂK] = [L : K]`. `ℂM₂Np` is Galois over `ℂM₂N` with group a quotient of `±Γ(2N)/±Γ(2Np)`, and `ℂR₂N ∩ ℂM₂Np = ℂM₂N` by the first step over `ℂ`; a Galois extension is linearly disjoint from any extension meeting it only in the base.

*Needs:* §§1.8, 3.6, 3.7; ModularCurvesPartII §§5.14, 6.4, 6.5, 8.1 and gap:udc-rational-cusp-of-twisted-full-level; FuchsianOrbifolds Layer 5.

### 5.2 p-scaling separates a noncongruence function

Let `N ≥ 1` and `p ∤ 2N` prime. If a weight-zero `f ∈ R₂N` is not invariant under any congruence subgroup, then `f(pτ)` is not in the `M₂Np`-algebra generated by `R₂N`; and `f(pτ) ∈ R₂Np` (CDT, Theorem 4.3.1, p.656, with (4.4.6)–(4.4.10), p.660).

*Proof sketch.* `f(pτ)` is invariant under `A⁻¹G₂N A ∩ SL₂(ℤ)`, of level dividing `2Np` (§1.7), and its expansion in `q^(1/(Np))` is obtained from that of f by `q^(1/N) ↦ (q^(1/(Np)))^(p²)`, so it lies in `R₂Np`. Every element of the compositum is fixed by `Γ(2Np) ∩ G₂N`; if `f(pτ)` were one, it would be fixed by the group generated by `−I`, `G₂N ∩ Γ(2Np)` and `A⁻¹G₂NA ∩ Γ₀(p)`, which is `±Γ(2N) ∩ Γ₀(p)` by §4.3 at the level `2N ≥ 4`. Unwinding the conjugation, f would be invariant under a congruence subgroup. At `N = 1` pass first to level 4: `R₂ ⊆ R₄` and `M₂p ⊆ M₄p`, and f stays noncongruence.

*Needs:* §§1.7, 3.7, 4.3, 5.1; Mathlib `CongruenceSubgroup.Gamma0`.

### 5.3 Degree doubling

If `[R₂N : M₂N] > 1` and `p ∤ 2N` is prime, then `[R₂Np : M₂Np] ≥ 2[R₂N : M₂N]` (CDT, Theorem 4.3.2, pp.656–657). CDT's proof chooses the noncongruence element in `R₂Np`, while Theorem 4.3.1 is applied to an element of `R₂N`; the element is chosen at the old level.

*Proof sketch.* Choose a generator of `R₂N` outside `M₂N`; by §1.8 it is not invariant under any congruence subgroup. By §5.2 its p-scaling lies in `R₂Np` outside the compositum `R₂N M₂Np`, so `[R₂Np : R₂N M₂Np] ≥ 2`. By §5.1, `[R₂N M₂Np : M₂Np] = [R₂N : M₂N]`; the tower law concludes.

*Needs:* §§3.6, 5.1, 5.2.

### 5.4 The congruence degree

For `N > 1`, `[M₂N : ℚ(λ)] = ((2N)³/12) ∏_{p∣2N} (1 − p⁻²) > 4N³/π²`; for `N = 1` the degree is 1 (CDT, (4.3.3), p.657). The formula is the projective index `[Γ(2) : ±Γ(2N)]`, using `−I ∈ Γ(2)` and `−I ∉ Γ(2N)` for `N > 1`.

*Proof sketch.* By ModularCurvesPartII §5.14 with the rational cusp below, `ℂM₂N` is the function field of `X(2N)`, so `[M₂N : ℚ(λ)]` is the degree of `X(2N) → X(2)` (§2.2; FuchsianOrbifolds Layer 5), transferred from `ℂ` to `ℚ` by linear disjointness. Count `|SL₂(ℤ/m)| = m³ ∏_{p∣m}(1 − p⁻²)` by the Chinese remainder theorem and prime-power reduction, divide by `|SL₂(ℤ/2)| = 6` and by 2 for the sign. The finite Euler product exceeds `1/ζ(2) = 6/π²`.

*Needs:* §§2.2, 3.1; ModularCurvesPartII §§5.14, 8.1 and gap:udc-rational-cusp-of-twisted-full-level; FuchsianOrbifolds Layer 5.

### 5.5 Leveraging contradicts the cubic-logarithmic bound

If there is a constant C with `[R₂N : ℚ(λ)] ≤ C N³ log(2N)` for every `N ≥ 1`, then `R₂N = M₂N` for every N (CDT, Proposition 4.3.5 and (4.3.6)–(4.3.7), pp.657–658).

*Proof sketch.* Suppose `R₂N₀ ≠ M₂N₀`. For X large let `p₁, …, p_k` be the primes up to X not dividing `2N₀` and `N = N₀p₁⋯p_k`. By §5.3, `[R₂N : M₂N] ≥ 2^k`, and by §5.4, `[R₂N : ℚ(λ)] ≥ 2^k · 4N³/π²`. The hypothesis gives `2^k ≤ (Cπ²/4) log(2N)`. Chebyshev's bounds (Mathlib `Chebyshev.pi_ge`, `Chebyshev.theta_le_log4_mul_x`) give `k ≥ cX/log X` and `log(2N) ≤ log(2N₀) + X log 4`, a contradiction for large X. CDT uses the prime number theorem, which is stronger than needed.

*Needs:* §§5.3, 5.4; Mathlib `Chebyshev.pi_ge`, `Chebyshev.theta_ge`, `Chebyshev.theta_le_log4_mul_x`.

### Examples

- `N = 2`: `[M₄ : ℚ(λ)] = (64/12)(3/4) = 4 > 32/π² ≈ 3.24`. Substituting `N = 1` in the formula gives `(8/12)(3/4) = 1/2`, not a degree; `N = 1` is split off.
- `N = 3`: `[M₆ : ℚ(λ)] = (216/12)(3/4)(8/9) = 12`.
- The constant C must be independent of N: for each fixed N the bound holds with some constant by §3.5, which gives nothing.

### Dependencies

Layers 1, 3 and 4; ModularCurvesPartII §§5.14, 6.4, 6.5, 8.1; FuchsianOrbifolds Layer 5; Mathlib Chebyshev bounds.

## Layer 6: The unbounded denominators theorem

This layer assembles `R₂N = M₂N`, reduces arbitrary integral weight to weight zero, and proves the unbounded denominators theorem with its rational and algebraic-integer forms. Galois conjugation of weak forms with algebraic coefficients, the bridge from algebraic to rational coefficients, is proved here. The layer ends with three tests: the cube root of j, the roots of `λ(1 − λ)/16`, and the Fermat covers.

### 6.1 Equality of the bounded and congruence fields

For every `N ≥ 1`, `R₂N = M₂N` as subfields of `ℚ((t))` (CDT, §6.3, pp.685–686, assembling Proposition 3.0.1 with Theorems 5.1.4 and 6.0.1).

*Proof sketch.* ConformalMappingPartII §§5.5 and 5.8 give `|F_N′(0)| = γ_N ≥ 16^(1/N)(1 + ζ(3)/(2N³))` for every `N ≥ 2`, since the remaining terms of the expansion are positive; this is the first hypothesis of §3.8 with `A = ζ(3)/2`. ConformalMappingPartII §9.19 with `p(x) = x^N` and `r = 1 − B/N³` bounds `∫ log⁺|F_N^N|` by `C log(N⁴/B)`; dividing by N gives the second hypothesis. Then §3.8 gives `[R₂N : ℚ(λ)] ≤ C N³ log(2N)` for all N, and §5.5 gives `R₂N = M₂N`.

*Needs:* §§3.8, 5.5; ConformalMappingPartII §§5.5, 5.8, 9.19.

### 6.2 Integral reduction to weight zero

Let `h₀(τ) = λ(τ)/(16 η(τ/2)²)`. It is holomorphic and nowhere zero on `ℍ`, has weight `−1` for a congruence subgroup with a multiplier of finite order, and its expansion is `q^(11/12)` times an integral power series with constant term 1; its inverse is `q^(−11/12)` times an integral power series with constant term 1. For every integer k, `f ↦ f h₀^k` takes weak forms of weight k on a finite-index Γ to weak forms of weight 0 on a finite-index subgroup of Γ, and preserves bounded denominators after the period is enlarged to a common multiple of h and 24, because `q^(11/12) = exp(2πi · 11τ/24)` (CDT, reduction following (1.0.2), p.628).

*Proof sketch.* `η(τ/2)² = q^(1/12) ∏ (1 − qⁿ)²` and `λ/16 = q ∏ ((1 + q^(2n))/(1 + q^(2n−1)))⁸`, so the quotient is `q^(11/12)` times an integral unit. The multiplier of `η(τ/2)²` (QSeries §5.2) has finite order, so `h₀` is a form of weight −1 on its kernel, a congruence subgroup. Negative k uses the inverse unit.

*Needs:* §§1.1, 1.2, 2.1; Mathlib `ModularForm.eta`, `ModularForm.eta_ne_zero`; QSeriesPartitionsAndMockModularForms §5.2; ModularForms, Worked examples.

### 6.3 The unbounded denominators theorem

`unbounded_denominators`: let `Γ ≤ SL₂(ℤ)` have finite index, k be an integer and f a weak form of weight k on Γ. If f has a period `h ≥ 1`, is bounded as `Im τ → ∞`, and every coefficient of its expansion `UpperHalfPlane.qExpansion h f` in `exp(2πiτ/h)` is an integer, then f is a weak form of weight k on some congruence subgroup `Γ′` (CDT, Theorem 1.0.1, p.627; reduction of weight, p.628; §6.3, pp.685–686). CDT states it for `h = 2N` in the parameter `q^(1/N) = exp(πiτ/N)`; an odd period h becomes the even period 2h by inserting zeros. Poles at the other cusps are allowed. The theorem does not say that Γ is congruence.

*Proof sketch.* Multiply by `h₀^k` (§6.2) to reach weight 0 with an integral expansion after a monomial shift, and enlarge the level to a common multiple `2M` of all signed cusp widths, h and 24. The resulting rational, integral germ lies in `R₂M = M₂M` (§6.1), so it is a congruence modular function. Divide by `h₀^k`, which is congruence, and undo the shift.

*Needs:* §§1.3, 3.2, 6.1, 6.2; Mathlib `UpperHalfPlane.qExpansion`, `UpperHalfPlane.IsBoundedAtImInfty`, `CongruenceSubgroup.IsCongruenceSubgroup`.

API:

- The congruence subgroup of the conclusion can be taken to be a principal congruence subgroup `Γ(M)`, since every congruence subgroup contains one and the weak-form property passes to subgroups.
- The same conclusion holds when the integral expansion is taken at another cusp `g∞`, for `f ∣[k] g` with its own period, because `f ∣[k] g` is a weak form on `g⁻¹Γg`.

### 6.4 Rational bounded denominators force congruence

Let f be a weak form of weight k on a finite-index Γ with period `h ≥ 1` whose Laurent expansion at `∞` in `exp(2πiτ/h)` has rational coefficients with bounded denominators. Then f is a weak form on a congruence subgroup. Equivalently, a weak form with rational expansion at a cusp that is not invariant under any congruence subgroup has unbounded denominators there (CDT, Theorem 1.0.1 and the paragraph after it, pp.627–628).

*Proof sketch.* Clear the principal part by `Δ^m` (§1.4) and the denominators by one integer D; apply §6.3 to `DΔ^m f` and divide by `DΔ^m`, a congruence form. For another cusp `g∞` apply this to `f ∣[k] g`, keeping its strict width.

*Needs:* §§1.2, 1.4, 6.3.

### 6.5 Galois conjugates of weak forms with algebraic coefficients

Let f be a weak form of weight k on a finite-index Γ with period `h ≥ 1` whose Laurent expansion at `∞` in `exp(2πiτ/h)` has algebraic coefficients. Then all its coefficients lie in one number field K, and for every `σ ∈ Aut(ℂ/ℚ)` the coefficientwise conjugate series `f^σ` is the expansion at `∞`, with the same period h, of a weak form of weight k on a finite-index subgroup `Γ^σ` (CDT, Remark 6.3.2, p.686, where this fact is used). A power series with algebraic coefficients that is not the germ of a weak form need not have its coefficients in a number field; the modular hypothesis is essential.

*Proof sketch.* By §6.2 reduce to weight 0; `h₀` has rational coefficients and is fixed by σ. A weight-zero weak form on Γ is algebraic over `ℂ(j)`, of degree at most `[PSL₂(ℤ) : ±Γ]`, and integral over `ℂ[j]` because it has no poles on `ℍ`. Since `ℚ̄((t))` and `ℂ` are linearly disjoint over `ℚ̄`, its minimal polynomial P can be taken monic with coefficients in `K₀[j]` for a number field `K₀`. The automorphisms in `Aut(ℂ/K₀)` permute the finitely many Puiseux roots of P at `j = ∞`, so the coefficients of f lie in a finite extension K of `K₀`. For any σ, `f^σ` is a convergent Puiseux root of the monic polynomial `P^σ`; the branch locus of `P^σ` over the j-line lies in `{0, 1728, ∞}`, which σ fixes, with the same ramification indices (dividing 2 over 1728 and 3 over 0). So the cover defined by `P^σ` corresponds to a finite-index subgroup `Γ^σ` of `PSL₂(ℤ) = ⟨S, R | S² = R³ = 1⟩` (FuchsianOrbifolds Layer 2; BelyiMaps Layers 6 and 9), the branch `f^σ` lifts to a holomorphic `Γ^σ`-invariant function on `ℍ`, integral over `ℂ[j]` and hence without poles on `ℍ`, and algebraic, hence meromorphic, at the cusps.

*Needs:* §§1.1, 6.2; FuchsianOrbifolds Layers 2, 5; BelyiMaps Layers 6, 9.

### 6.6 Algebraic-integer Fourier coefficients

`algebraicInteger_unbounded_denominators`: under the hypotheses of §6.3 with every coefficient of `UpperHalfPlane.qExpansion h f` an algebraic integer instead of a rational integer, f is a weak form of weight k on some congruence subgroup (CDT, Remarks 6.3.1–6.3.2, pp.685–686).

*Proof sketch.* By §6.5 the coefficients lie in a number field, which may be enlarged to a Galois number field K with integral basis `α₁, …, α_d`. Each `f_i = Σ_{σ ∈ Gal(K/ℚ)} σ(α_i) f^σ` has coefficients `Tr_{K/ℚ}(α_i a_n) ∈ ℤ` and is a weak form on `⋂_σ Γ^σ` (§6.5). By §6.3 each `f_i` is congruence; inverting the nondegenerate trace matrix writes f as a K-linear combination of the `f_i`, a weak form on the intersection of their congruence subgroups. CDT Remark 6.3.1 sketches a second route, rerunning Layers 3–5 over `K(λ)`.

*Needs:* §§6.3, 6.5; AlgebraicModularFormsAndSerreWeights Layer R15.1.

API:

- A weak form with expansion at `∞` in `𝓞_K((exp(2πiτ/h)))` after multiplication by one nonzero element of `𝓞_K`, for a number field `K ⊆ ℂ`, with finitely many negative exponents, is congruence (clear the principal part by `Δ^m` as in §6.4).

### 6.7 The integral cube root of j

In the parameter Q, the branch `j^(1/3) = E₄/η⁸ = Q^(−1/3)(1 + 248Q + 4124Q² + 34752Q³ + ⋯)` has integral coefficients and is a weak modular function on a congruence subgroup of level 3; `j^(1/3)·Δ` satisfies the hypotheses of §6.3 (CDT, (1.0.3) and the following discussion, pp.628–629).

*Proof sketch.* Use `j = E₄³/Δ` (FuchsianOrbifolds Layer 6) and the integral product `η⁻⁸ = Q^(−1/3) ∏ (1 − Qⁿ)^(−8)`; the branch is fixed by its leading term. The multiplier of `η⁸` is a character of order 3 trivial on `Γ(3)`, by the η multiplier.

*Needs:* §§1.4, 6.3; Mathlib `ModularForm.eta`, `ModularForm.discriminant`; FuchsianOrbifolds Layer 6; QSeriesPartitionsAndMockModularForms §5.2; ModularForms, Worked examples.

### 6.8 The root test for λ(1 − λ)/16

Set `h = λ(1 − λ)/16 = q ∏_{n≥1} ((1 + q^(2n))/(1 + qⁿ))²⁴ = q ∏_{m odd} (1 + q^m)^(−24)`. It is a nowhere-vanishing weak modular function for the theta group `⟨Γ(2), S⟩`, the conjugate of `Γ₀(2)` containing S. For `n ≥ 1`, the branch `h^(1/n)` with leading term `q^(1/n)` has bounded denominators if and only if `n ∣ 24`, and it is a weak modular function on a congruence subgroup if and only if `n ∣ 24` (CDT, (1.0.4) and the following discussion, p.629). CDT describes h as having level `Γ₀(2)`; with `q = exp(πiτ)`, `T ∈ Γ₀(2)` sends `q` to `−q` and changes the sign of `h = q + ⋯`, so the invariance group is the theta group (the abelianization statements are conjugation-invariant and are unaffected).

*Proof sketch.* Write `h = q·u` with `u = ∏_{m odd}(1 + q^m)^(−24) ∈ 1 + qℤ[[q]]`, from `λ = (θ₂/θ₃)⁴` and `1 − λ = (θ₄/θ₃)⁴` (§2.1). If `n ∣ 24`, every factor of `u^(1/n)` has an integral exponent. Conversely, if `u^(1/n)` has bounded denominators, the root property of §1.2 makes it integral, so its `q`-coefficient `−24/n` is an integer. S maps λ to `1 − λ` and fixes h; h has no zeros on `ℍ`, so `h^(1/n)` is a weak modular function on the kernel of a character of the theta group of order dividing n. Bounded denominators give congruence by §6.4, and congruence gives bounded denominators by AlgebraicModularFormsAndSerreWeights Layer R15.2.

*Needs:* §§1.1, 1.2, 2.1, 6.4; AlgebraicModularFormsAndSerreWeights Layer R15.2.

### 6.9 The Fermat-cover test

For `n ≥ 1`, the Fermat cover `uⁿ + vⁿ = 1` over the λ-line with `λ = uⁿ` corresponds to a congruence subgroup exactly for `n ∈ {1, 2, 4, 8}`, and the normalized branch `v = (1 − 16x)^(1/n)` with `x = λ/16` has bounded denominators exactly for these n (CDT, p.628; §1.1.3, p.631).

*Proof sketch.* For an odd prime p dividing n, the p-adic valuations of the coefficients of `(1 − 16x)^(1/n)` tend to `−∞`. For `n = 2^a` with `a ≥ 1`, the coefficient of `x^m` has 2-adic valuation `(4 − a)m − v₂(m!)`, bounded below exactly when `a ≤ 3`. For `n ∣ 8`, `u = λ^(1/n) = 16^(1/n) q^(1/n) ∏ ((1 + q^(2n))/(1 + q^(2n−1)))^(8/n)` is a scalar times an integral series, and both u and v are congruence by §6.4. For other n, v has unbounded denominators, so it is not congruence (AlgebraicModularFormsAndSerreWeights Layer R15.2), and neither is the cover.

*Needs:* §§2.2, 2.4, 6.4; AlgebraicModularFormsAndSerreWeights Layer R15.2.

### Examples

- `u^(1/5) = 1 − (24/5)q + (348/25)q² − (4544/125)q³ + (52854/625)q⁴ − ⋯`: denominators `5, 25, 125, 625`. `u^(1/24) = ∏_{m odd}(1 + q^m)^(−1) = 1 − q + q² − 2q³ + 2q⁴ − 3q⁵ + ⋯` is integral.
- 2-adic valuations of the first coefficients of `(1 − 16x)^(1/n)`: for `n = 8`, `1, 1, 2, 1, 2, 2, 3, 1, 2` (bounded); for `n = 16`, `0, −1, −1, −3, −3, −4, −4, −7, −7` (unbounded). For `n = 3` the 3-adic valuations are `−1, −2, −4, −5, −6, −8, …`.
- `j^(1/3)` has `Q`-exponent `−1/3`, not `q`-exponent; in `q = Q^(1/2)` the leading term is `q^(−2/3)`.
- A noncongruence subgroup carries congruence forms (any congruence form restricted to it); §6.4 concerns the form, not the group.

### Dependencies

Layers 1–5; ConformalMappingPartII §§5.5, 5.8, 9.19; QSeriesPartitionsAndMockModularForms §5.2; AlgebraicModularFormsAndSerreWeights Layers R15.1–R15.2; FuchsianOrbifolds Layers 2, 5, 6; BelyiMaps Layers 6, 9; ModularForms, Worked examples.

## Layer 7: Differential equations and vector-valued forms

This layer applies the holonomic rank bound to integral solutions of three-point differential equations with finite monodromy at `0`, defines vector-valued forms and the continuation space of one component, builds the minimal operator of a component by Wronskians, descends it to `ℚ(x)`, and proves congruence of integral components and the effective-span form of Mason's conjecture.

### 7.1 Algebraicity of integral three-point solutions

Let `f ∈ ℤ[[x]]` be annihilated by a nonzero linear differential operator L over `ℚ̄(x)` with no singularities on `ℙ¹ ∖ {0, 1/16, ∞}` other than points at which L has a full meromorphic local basis (ConformalMappingPartII §0.5), and suppose the local monodromy of L at `0` is finite in the sense that L has a full meromorphic local basis after the substitution `x = u^N` for some `N ≥ 1`. Then f is algebraic over `ℚ(x)` (CDT, Theorem 7.2.1 and footnote 4, pp.687–688; Definition 2.0.4, p.635).

*Proof sketch.* Let N be the order of the local monodromy at `0`, replaced by `2N` if `N = 1`. Then `g(u) = f(u^N) ∈ ℤ[[u]]` is annihilated by the pulled-back operator, which has a full meromorphic local basis at `u = 0` and at every apparent singularity, and its genuine finite singularities lie in `16^(−1/N)μ_N`; so `g ∈ H(U_N, u, ℤ)` (DiophantineApproximationAndTranscendencePartII §4.1). With φ as in §3.5, all powers `g^k` lie in the ring H (§4.2 there), so they span a subspace of `W(U_N, u, u)` of finite dimension over `ℚ(u)` (§4.5 there). Hence g is algebraic over `ℚ(u)` and `f(x) = g(x^(1/N))` over `ℚ(x)`. Single-valuedness alone does not suffice: an essential singularity has trivial topological monodromy.

*Needs:* §3.5; DiophantineApproximationAndTranscendencePartII §§4.1, 4.2, 4.5; ConformalMappingPartII §§0.5, 1.8, 5.8.

### 7.2 Congruence of integral three-point solutions

Under §7.1, the function `f(λ(τ)/16)` on `ℍ` is invariant under `Γ(M)` for some `M ≥ 1`. If f has apparent poles on `ℍ`, it is a meromorphic congruence modular function; otherwise it is a weak modular function (CDT, Theorem 7.2.1, pp.687–688).

*Proof sketch.* The algebraic germ has finitely many branches, so its stabilizer in `Γ(2)` has finite index (§2.2). Multiply by an integral polynomial in λ clearing the apparent interior poles and by a power of λ clearing the principal part; the expansion stays integral by §2.4. Apply §6.3 and divide back.

*Needs:* §§2.2, 2.4, 6.3, 7.1.

### 7.3 Vector-valued modular forms

Define `IsVectorValuedForm k ρ F`, for an integer k, a representation `ρ : SL₂(ℤ) → GL_n(ℂ)` and `F : ℍ → ℂⁿ`, to hold when `ρ(−I) = 1`, `ρ(T)` is semisimple (Mathlib `Module.End.IsSemisimple`), each component `F_j` is holomorphic, `F(γτ) = (cτ + d)^k ρ(γ) F(τ)` for every `γ = [[a, b], [c, d]] ∈ SL₂(ℤ)`, and for all real `a < b` and `C > 0` there are A, B with `|F_j(τ)| ≤ A exp(B Im τ)` whenever `a ≤ Re τ ≤ b` and `Im τ ≥ C` (CDT, Definition 7.3.1, pp.688–689). Zero forms and forms whose values do not span `ℂⁿ` are allowed. This is the holomorphic exponential-growth part of QSeriesPartitionsAndMockModularForms §8.1 for `Γ = Mp₂(ℤ)` and ρ factoring through `PSL₂(ℤ)`, with the additional requirement that `ρ(T)` be semisimple.

*Needs:* §1.1; Mathlib `Module.End.IsSemisimple`; ModularForms Layer 0; QSeriesPartitionsAndMockModularForms §8.1; Tau Ceti `TauCeti.char_neg_one_of_modFormCharSpace_ne_bot`.

API:

- Every component of a vector-valued form is holomorphic on `ℍ`.
- Conjugating ρ by `P ∈ GL_n(ℂ)` and replacing F by `PF` gives a vector-valued form.
- For a finite-index subgroup `Γ′` and `M ≥ 1`, the function `τ ↦ F(Mτ)` is a vector-valued form for `SL₂(ℤ) ∩ diag(M, 1)⁻¹SL₂(ℤ)diag(M, 1)` with the conjugated representation; inducing to `SL₂(ℤ)` gives a vector-valued form for `SL₂(ℤ)` whose `ρ(T)` is semisimple, because every parabolic of `SL₂(ℤ)` is conjugate to `±T^m`.
- The span of the values `F(τ)` is ρ-stable.
- For odd k, every vector-valued form is zero, because `F(τ) = F((−I)τ) = (−1)^k F(τ)`.

**Checks.**

- `F = 1`, `ρ = 1`, `k = 0`, `n = 1` is a vector-valued form.
- A scalar weak form of even weight on a finite-index Γ containing `−I` induces a vector-valued form with a finite permutation representation, whose identity component is the original form (§7.5).
- `ρ(T) = [[1, 1], [0, 1]]` is not semisimple; the corresponding expansions carry `log q` terms, and the definition excludes them even when the growth is moderate.
- `F = (1, 0, 0)` with `ρ = 1 ⊕ σ` (§7.13) is a vector-valued form although its values span a line.
- For `n = 1` and ρ a character of finite order, the definition gives the classical forms on `SL₂(ℤ)` with that character.

### 7.4 Generalized expansions without logarithms

In a basis diagonalizing `ρ(T)`, each component has a convergent expansion `Q^μ Σ_{m ≥ m₀} a_m Q^m` with `exp(2πiμ)` its eigenvalue and μ complex; conversely such expansions with finite lower support have moderate growth in vertical strips. There are no logarithmic terms; rationality of μ and finiteness of the order of `ρ(T)` are not asserted (CDT, Remark 7.3.2, p.689).

*Proof sketch.* Twist an eigencomponent by `exp(−2πiμτ)` to make it 1-periodic, descend to a punctured disc and bound its pole order by the growth; conversely a finite principal part and a convergent remainder give the growth.

*Needs:* §7.3; Mathlib `UpperHalfPlane.cuspFunction`.

### 7.5 Inducing a scalar weak form

For a finite-index Γ containing `−I` and even k, a scalar weak form f on Γ gives a vector-valued form whose components are `f ∣[k] γ_i` for coset representatives `γ_i`, with the finite coset permutation representation, and whose identity component is f. Groups without `−I` and odd weights use the central-character convention of ModularForms Layer 0 (CDT, Remark 7.3.2, p.689).

*Proof sketch.* The induced representation with the right-action convention fixed by `(f ∣ γ) ∣ δ = f ∣ (γδ)`; cusp Laurent expansions give the growth, and a permutation matrix of finite order is semisimple.

*Needs:* §§1.1, 7.3; ModularForms Layer 0.

### 7.6 The complex local system of ρ

For a weight-zero vector-valued form, let `L_ρ` be the rank-n complex local system on `Y(2) = ℙ¹ ∖ {0, 1/16, ∞}` (coordinate x) with monodromy ρ restricted to `Γ(2)/±I`, built by descending the trivial flat bundle on `ℍ` (CDT, passage before Theorem 7.3.3, pp.689–690). Its rank is n whatever the linear relations among the components. CDT describes a free integral bundle of rank 6n spanned by the translates `F_j ∣ γ`; those translates are constant linear combinations of the components, and neither the rank 6n, the integral structure nor irreducibility follows.

*Needs:* §§2.2, 7.3; UniversalCovers Stage 2.

API:

- The fibre of `L_ρ` has dimension n.
- Its monodromy representation is ρ on `Γ(2)/±I`, with the left/right convention of the slash law.
- Direct sums of representations give direct sums of local systems.
- Passing to a finite cover `Y(H) → Y(2)` restricts the monodromy to H.

**Checks.**

- For `ρ = 1` the rank is 1, not 6.
- For the zero-dimensional representation the local system is zero.
- For `ρ = 1 ⊕ σ` the rank is 3 although `F = (1, 0, 0)` detects only rank 1.
- For a finite permutation representation, `L_ρ` is the pushforward of the constant sheaf along the corresponding finite cover of `Y(2)`.

### 7.7 The continuation space of a component

For a weight-zero component `f = F_j`, let `W_j` be the complex span of the analytic continuations of the germ of f at a fixed ordinary point of `Y(2)`. Each continuation is a constant linear combination of `F₁, …, F_n`, so `dim W_j ≤ n`; continuation acts linearly on `W_j`, which is a subquotient of `L_ρ`, namely the quotient of the cyclic dual representation generated by the j-th coordinate functional. It need not be irreducible (CDT, proof of Theorem 7.3.3, pp.690–691).

*Needs:* §7.6.

API:

- `dim W_j ≤ n`.
- The germ of f is a distinguished element of `W_j`.
- Continuation along loops acts linearly on `W_j` and realizes all branches of f.
- Linear relations among the components are quotiented out before the dimension is taken.

**Checks.**

- For `f = 1`, `W` has dimension 1 and the scalar equation is `f′ = 0`.
- For `f = 0`, `W = 0`.
- For `F = (1, 0, 0)` and `ρ = 1 ⊕ σ`, `W₁` has dimension 1, not the ambient 3 nor CDT's 6n = 18.
- The sum of two components transforming by independent characters generates a reducible two-dimensional continuation space: cyclic does not imply irreducible.

### 7.8 The minimal operator of a component germ

With `x = λ/16`, `W_j` is the full solution space near an ordinary point of a unique monic operator `L_j ∈ ℂ(x)[∂]` of order `dim W_j`, the minimal operator of the germ f. `L_j` is regular singular, has no genuine singularities outside `{0, 1/16, ∞}`, and its apparent singularities lie at points of `ℍ` where all local solutions are holomorphic; its local monodromies are those of `W_j`, hence semisimple (CDT, proof of Theorem 7.3.3, pp.690–691).

*Proof sketch.* For a basis `w₁, …, w_m` of `W_j` put `L_j(y) = Wr(y, w₁, …, w_m)/Wr(w₁, …, w_m)`. Continuation multiplies both Wronskians by the same determinant, so the coefficients are single-valued on `Y(2)` and meromorphic on `ℍ`, where x is a local coordinate (§2.2). The `w_i` have moderate growth at the cusps (§7.4), so the coefficients extend meromorphically to `X(2) ≅ ℙ¹`, lie in `ℂ(x)`, and Fuchs' criterion gives regular singularities. Every operator killing f kills all its continuations, so `L_j` right-divides it. Zeros of the Wronskian on `ℍ` are apparent singularities.

*Needs:* §§2.2, 7.4, 7.7; ConformalMappingPartII §0.3.

### 7.9 Arithmetic descent and finite component monodromy

If the weight-zero component has an integral x-expansion `f ∈ ℤ[[x]]`, then `L_j` has coefficients in `ℚ(x)`, f is a G-function, the companion system of `L_j` satisfies Galochkin's condition, `L_j` is globally nilpotent, and its local monodromies are quasi-unipotent; being also semisimple, they have finite order (CDT, proof of Theorem 7.3.3, pp.690–691).

*Proof sketch.* For `σ ∈ Aut(ℂ/ℚ)`, applying σ to the coefficients of `L_j` gives a monic operator of the same order annihilating the rational series f; by minimality it is `L_j`, so the coefficients lie in `ℚ(x)`. The series f converges near `0` and has integer coefficients, so it is a G-function (DiophantineApproximationAndTranscendence §5.2), and so are its derivatives. By minimality `f, f′, …, f^(m−1)` are `ℚ̄(x)`-independent solutions of the companion system, which therefore satisfies Galochkin's condition (§5.3 there). The Bombieri–André and Katz theorems (gap:udc-bombieri-andre-katz) give global nilpotence and quasi-unipotent local monodromy.

*Needs:* §§2.4, 7.8; DiophantineApproximationAndTranscendence §§5.2–5.3 and gap:udc-bombieri-andre-katz.

### 7.10 Weight normalization of a vector-valued component

For a nonzero vector-valued form of even weight k, choose a nonzero scalar congruence form g with integral expansion of weight `k′ ≥ 0` with `12 ∣ k + k′`, and multiply F by `g · (λ/(16Δ(τ/2)))^((k+k′)/12)`. The result has weight zero after restriction to a congruence subgroup, keeps an integral selected expansion, and has only finite-order additional monodromy; dividing back recovers the original component (CDT, first reduction in the proof of Theorem 7.3.3, p.690).

*Proof sketch.* `Δ(τ/2) = q ∏ (1 − qⁿ)²⁴`, so `λ/(16Δ(τ/2))` is an integral unit with constant term 1 and weight −12; choose k′ from the weights of `E₄^a E₆^b` (k′ large when k is negative). The multiplier is trivial on a congruence subgroup. Zeros of g are allowed: the original quotient is known to be holomorphic.

*Needs:* §§1.2, 2.1, 7.3; Mathlib `ModularForm.discriminant`, `ModularForm.discriminant_ne_zero`; QSeriesPartitionsAndMockModularForms §5.2.

### 7.11 Congruence of an integral vector-valued component

`vectorValued_component_congruence`: let F be a vector-valued form of weight k for ρ, let j be an index and `c ≠ 0` a complex number such that `cF_j` has a period `h ≥ 1`, is bounded as `Im τ → ∞`, and has integer coefficients in `UpperHalfPlane.qExpansion h (cF_j)`. Then `F_j` is a weak form of weight k on `Γ(M)` for some `M ≥ 1`. Nothing is asserted about the other components or about ρ (CDT, Theorem 7.3.3, pp.690–691, stated there for `c = 1` and `h = 2`).

*Proof sketch.* Replace F by `cF(hτ/2)` when h is even, or by `cF(hτ)`, induced back to `SL₂(ℤ)` (§7.3), to reach an integral expansion in `q = exp(πiτ)`. Normalize the weight (§7.10) and use §2.4 to get an integral x-series. §7.9 gives finite local monodromy at `0`, §7.2 gives congruence, and dividing by the normalizing factor recovers `F_j`.

*Needs:* §§2.4, 6.6, 7.1, 7.2, 7.3, 7.9, 7.10.

API:

- The same conclusion holds when `cF_j` has coefficients in `𝓞_K` for a number field `K ⊆ ℂ`. For `σ ∈ Aut(ℂ/ℚ)` the conjugate operator `L_j^σ` kills the conjugate series and has the same singular points and the same finite local monodromy at `0`, so for an integral basis `α_i` the traces `Σ_σ σ(α_i) f^σ` fall under §7.1; the algebraic germ is then congruence by §6.6 in place of §6.3.

### 7.12 Mason's corollary on the span of the values

`vectorValued_effective_mason`: if every component `F_j` has, after multiplication by a nonzero scalar, a period `h_j ≥ 1`, boundedness as `Im τ → ∞` and an integral expansion in `exp(2πiτ/h_j)`, then there is `M ≥ 1` such that `ρ(γ)F(τ) = F(τ)` for every `γ ∈ Γ(M)` and every τ. Hence `Γ(M)` acts trivially on the span `V_F` of the values of F, and if `V_F = ℂⁿ` then `Γ(M) ≤ ker ρ` and ρ has finite image (CDT, Corollary 7.3.4, p.691). CDT concludes `ker ρ ⊇ Γ(N)` without the spanning hypothesis; §7.13 is a counterexample.

*Proof sketch.* By §7.11 each `F_j` is a weak form on some `Γ(M_j)`; let M be a common multiple. For `γ ∈ Γ(M)`, `F(γτ) = (cτ + d)^k F(τ)` componentwise and also `= (cτ + d)^k ρ(γ)F(τ)`.

*Needs:* §§7.3, 7.11.

API:

- If every component has an expansion with a finite principal part and bounded denominators after a scalar, then multiplying F by `Δ^m` reduces to the statement above, with the same conclusion.

### 7.13 An invisible summand of infinite image

Let σ be the representation of `PSL₂(ℤ) = ⟨S, R | S² = R³ = 1⟩` with `σ(S) = diag(1, −1)` and `σ(R) = [[2, 1], [−7, −3]]`, where `T = SR`. Then `σ(T) = [[2, 1], [7, 3]]` is semisimple of infinite order, and `ρ = 1 ⊕ σ`, `F = (1, 0, 0)`, `k = 0` is a vector-valued form with integral coefficients for which ρ has infinite image (counterexample to the unrestricted reading of CDT, Corollary 7.3.4, p.691).

*Proof sketch.* `σ(S)² = I`, `σ(R)² = [[−3, −1], [7, 2]]` and `σ(R)³ = I`. The characteristic polynomial of `σ(T)` is `X² − 5X − 1`, with distinct roots `(5 ± √29)/2`, one of modulus greater than one. The first coordinate is constant and transforms trivially; the others vanish.

*Needs:* §7.3; FuchsianOrbifolds Layer 2.

### 7.14 Positive-weight forms and infinite monodromy

Let h be a nonzero congruence form of weight `k ≥ 1` on `Γ′`, viewed as a germ in `x = λ/16` on the finite étale cover `Y(Γ′ ∩ Γ(2)) → Y(2)`. Its continuation space is spanned by `τ^i h` for `0 ≤ i ≤ k`, so its minimal operator has order `k + 1`; the monodromy is `Sym^k` of the standard representation, of infinite image, unipotent and nontrivial at every cusp, and the apparent singularities on `ℍ` are exactly the zeros of h. If h has an integral expansion in q, §2.4 gives an integral x-series; for a fractional expansion only the Puiseux germ is retained (CDT, Remark 7.2.3, p.688, citing Stiller and Zagier).

*Proof sketch.* Continuation along a loop representing `γ = [[a, b], [c, d]] ∈ Γ′` replaces h by `(cτ + d)^k h`; Zariski density of `Γ′` in `SL₂` makes these span `{P(τ)h : deg P ≤ k}`. The Wronskian of `h, τh, …, τ^k h` in x is a nonzero constant times `h^(k+1)(dτ/dx)^(k(k+1)/2)`, and `dτ/dx` has no zeros or poles on `ℍ`. Parabolic elements act unipotently and nontrivially for `k ≥ 1`.

*Needs:* §§2.2, 2.4, 7.7.

### Examples

- The series `K₀` of §2.6 is integral and transcendental; its full local solution space has infinite unipotent monodromy at `0`, so §7.1 does not apply. This is the case `k = 1` of §7.14 for `θ₃²` with its character.
- For Δ (`k = 12`) the minimal operator on `Y(2)` has order 13 and no apparent singularities on `ℍ`.
- For `F = 1` the minimal operator is `∂`, of order one; the proof of §7.11 never forces the ambient system to be irreducible.
- In §7.13 the effective representation on `V_F` is trivial while `σ` has infinite image; §7.12 applies to `V_F` and says nothing about σ.
- The normalization of §7.10 starts with `1` in q. With `Δ(τ) = q² + ⋯` in place of `Δ(τ/2) = q + ⋯`, the ratio `λ/(16Δ(τ))` would begin with `q⁻¹`, and its fractional powers would introduce fractional leading exponents.

### Dependencies

Layers 1–3 and 6; DiophantineApproximationAndTranscendencePartII §§4.1, 4.2, 4.5; DiophantineApproximationAndTranscendence §§5.2–5.3; ConformalMappingPartII §§0.3, 0.5, 1.8, 5.8; QSeriesPartitionsAndMockModularForms §§5.2, 8.1; ModularForms Layer 0; UniversalCovers Stage 2; FuchsianOrbifolds Layer 2.

## Layer 8: Quasimodular forms and arithmetic growth

This layer defines weakly holomorphic quasimodular forms by adjoining `E₂` and inverting Δ, proves that they are the differential closure of weak forms with the factor 2 of the parameter `q = exp(πiτ)` fixed, verifies the elliptic-integral and Catalan identities, and defines deficient places with their congruence and noncongruence consequences.

### 8.1 Weakly holomorphic quasimodular forms

For a finite-index `Γ ≤ SL₂(ℤ)`, let `M(Γ)` be the graded ring of integral-weight modular forms of ModularForms Layer 0, with its central-character convention (if `−I ∈ Γ`, only even weights occur). Define `M̃(Γ) = M(Γ)[E₂]` and `M̃^!(Γ) = M̃(Γ)[Δ⁻¹]`, subrings of the holomorphic functions on `ℍ`, graded by weight and filtered by depth (the degree in `E₂`); equivalently `M̃^!(Γ) = M^!(Γ)[E₂]` with `M^!(Γ)` the weak forms of §1.1 (CDT, Definition 7.4.3, p.692; Lemma 7.4.4, pp.692–693). `E₂` is Mathlib's `EisensteinSeries.E2`.

*Needs:* §§1.1, 1.4; Mathlib `ModularForm.discriminant`, `ModularForm.logDeriv_eta_eq_E2`, `EisensteinSeries.E2`; ModularForms Layer 0.

API:

- Every weak form on Γ lies in `M̃^!(Γ)` with depth zero, in its own weight.
- `E₂` lies in `M̃^!(Γ)` with weight 2 and depth 1.
- Every element is `Δ^(−m)` times a polynomial in `E₂` with coefficients in `M(Γ)`, for some `m ≥ 0`.
- Restriction to a finite-index subgroup preserves weight, depth and the underlying function.

**Checks.**

- `Δ⁻¹` lies in `M̃^!(SL₂(ℤ))` with weight −12 and depth 0; the holomorphic quasimodular ring `M̃(SL₂(ℤ))` does not contain it.
- `E₂` has depth 1 and is not a weight-2 modular form for `SL₂(ℤ)` (`M₂(SL₂(ℤ)) = 0`).
- The constant 1 has weight 0 and depth 0.
- An element of depth zero bounded at every cusp is a modular form, in `M(Γ)`.

### 8.2 The differential ring generated by weak forms

With `θ_q = q d/dq = (1/πi) d/dτ`, `M̃^!(Γ)` is the smallest `ℂ`-subalgebra of the holomorphic functions on `ℍ` that contains `M^!(Γ)` and is closed under `θ_q`. In this normalization `θ_qΔ = 2E₂Δ`, so `E₂ = θ_qΔ/(2Δ)`; for `D = (1/2πi) d/dτ`, `DΔ = E₂Δ` (CDT, Lemma 7.4.4, pp.692–693). CDT combines `θ = (1/πi)d/dτ` with `θΔ = E₂Δ`; with `q = exp(πiτ)` the factor 2 is required, and the lemma's conclusion is unaffected.

*Proof sketch.* Mathlib's `Derivative.serreDerivativeMF` and `Derivative.normalizedDerivOfComplex_E₂` give closure of `M(Γ)[E₂]` under D, and the quotient rule extends it to `Δ^(−m)h`. Conversely closure under `θ_q` and `Δ⁻¹ ∈ M^!(Γ)` give `E₂ = θ_qΔ/(2Δ)`.

*Needs:* §§1.4, 8.1; Mathlib `ModularForm.logDeriv_eta_eq_E2`, `ModularForm.discriminant_ne_zero`, `Derivative.serreDerivativeMF`, `Derivative.normalizedDerivOfComplex_E₂`, `EisensteinSeries.E2`.

### 8.3 The elliptic integral of the second kind

Let `K₀(x) = Σ C(2n, n)² xⁿ` and `E₀(x) = ₂F₁(−1/2, 1/2; 1; 16x)`. Then `E₀ = (1 − 16x)K₀ + 8∫₀^x K₀(t) dt`. At `x = λ/16`, `E₀ = (θ₃θ₄⁴ + 4θ_qθ₃)/θ₃³ = 1 − 4q + 20q² − 64q³ + 164q⁴ − 392q⁵ + ⋯`, an element of weight 1 of `M̃^!(Γ(4))`, hence of `M̃^!(Γ(12))` (CDT, §7.4.2, p.693). CDT prints the relation with the opposite sign, whose constant term is −1, while both sides of the relation have constant term 1.

*Proof sketch.* Compare coefficients using the hypergeometric recurrences. On `Γ(2)`, `θ₄⁴/θ₃²` and `θ_qθ₃/θ₃³ = (θ_qθ₃/θ₃)·θ₃⁻²` have weight 1 with the character `χ₋₄(d)` of `θ₃²` (§2.6), trivial on `H′ ⊇ Γ(4)`, and `θ_qθ₃/θ₃ = (1/2)θ_q(θ₃²)/θ₃²` lies in `M^!(H′)[E₂]` by the Serre derivative.

*Needs:* §§2.6, 8.2; Mathlib `Derivative.normalizedDerivOfComplex_E₂`, `Derivative.serreDerivativeMF`, `jacobiTheta`; GeometryOfNumbersAndQuadraticArithmetic §4.3.

### 8.4 The Catalan integrals and theta quotient

The series `I₁(x) = Σ C(2n, n)² x^(n+1)/(n + 1)` and `I₂(x) = Σ C_n² x^(n+1)`, with `C_n = C(2n, n)/(n + 1)`, are integral, and `I₁′ = K₀`, `x I₂′ = I₁`. Moreover `Σ C_n² (λ/16)ⁿ = (4/θ₂⁴)(4θ₃² θ_qθ₂/θ₂ + 4θ₃ θ_qθ₃ − θ₃⁴)`, an element of `M̃^!(Γ(4))` (CDT, §7.4.2, pp.693–694). These examples support CDT Question 7.4.5 and do not prove it.

*Proof sketch.* `C(2n, n)²/(n + 1) = C(2n, n)·C_n` and `C_n²(n + 1) = C(2n, n)²/(n + 1)` give integrality and the two derivative identities. The theta quotient follows from the elliptic differential equation and the theta identities; the apparent pole from `θ₂⁴ = 16q + ⋯` cancels. Each term has weight 1 and character `χ₋₄(d)` on `Γ(2)`; `θ_qθ₂/θ₂` is a logarithmic derivative, in which the character of `θ₂` cancels.

*Needs:* §§2.1, 8.1, 8.2; Mathlib `Derivative.normalizedDerivOfComplex_E₂`, `Derivative.serreDerivativeMF`.

### 8.5 Deficient places

Fix a number field `K ⊆ ℂ` and a representation ρ as in §7.3. Let `S_k(ρ; K)` be the K-space of vector-valued forms of weight k for ρ whose components all have expansions in `tK[[t]]` with `t = q^(1/N)` for a common N. A place v of K is deficient for ρ if for some k some component `Σ_{m≥1} a_m t^m` of an element of `S_k(ρ; K)` has `|a_m|_v` unbounded (v finite), or `|a_m|_v/m^((k−1)/2+ε)` unbounded for some `ε > 0` (v archimedean, with the usual modulus, not its square) (CDT, §7.4.8, pp.694–695). CDT takes `K = ℚ`.

*Needs:* §§1.2, 7.3, 7.4.

API:

- v is deficient exactly when some weight, some element of `S_k(ρ; K)`, some component and the stated unbounded sequence witness it.
- Replacing t by `t^r` (inserting zeros) preserves boundedness and the exponent threshold, changing only constants.
- Multiplying a component by a nonzero element of K preserves boundedness and unboundedness at every place.
- A witness for v transports to a finite extension `K′/K` and a place `v′` above v, with the normalized modulus.

**Checks.**

- If every `S_k(ρ; K)` is zero, no place is deficient, whatever summands ρ has.
- One scalar denominator bounds the coefficients at every finite place and creates no finite witness.
- The sequence `a_m = p^(−m)` is unbounded at p although all terms lie in `K[1/p]`; this tests the predicate, not modularity.
- Zero insertion `t ↦ t²` preserves both the finite test and the archimedean exponent `(k − 1)/2`.

### 8.6 Congruence kernels have no deficient places

If `ker ρ` contains a principal congruence subgroup, then ρ has no deficient place over any K. At finite places one denominator bounds the coefficients; at archimedean places the coefficients of a weight-k cuspidal component satisfy `|a_m| ≪_ε m^((k−1)/2+ε)` for every `ε > 0` (CDT, §7.4.8, p.695).

*Proof sketch.* Each component is a cusp form on a common `Γ(M)`. Its K-coefficient space is the scalar extension of the rational structure, so AlgebraicModularFormsAndSerreWeights Layer R15.2 gives one denominator. For the archimedean bound decompose into newforms and oldforms (ModularForms Layer 4), apply Deligne's bound in the form of AutomorphicGaloisRepresentations §4.2, including the tempered bound at bad primes, and the divisor bound. Nonzero cusp forms here have even weight at least 2.

*Needs:* §8.5; AlgebraicModularFormsAndSerreWeights Layer R15.2; AutomorphicGaloisRepresentations §4.2; ModularForms Layers 0 and 4.

### 8.7 A finite deficient place from an arithmetic witness

Let f be a component of an element of `S_k(ρ; K)` that is not a weak form on any congruence subgroup. If the denominators of its coefficients are supported on a finite set S of finite places of K, then some `v ∈ S` is deficient (CDT, §7.4.8, p.695). Noncongruence of ρ alone gives no witness: for `ρ = 1 ⊕ σ` of §7.13, every element of `S_k(ρ; K)` has zero σ-part, because its σ-part g satisfies `(σ(T)^(2N) − 1)g = 0` and `σ(T)` has no root of unity as eigenvalue; so no place is deficient although `ker ρ` is not congruence. The converse printed on CDT p.695, a finite deficient place from noncongruence of ρ alone, is therefore false.

*Proof sketch.* If every `v ∈ S` were bounded, one element of `𝓞_K` would clear the finitely many local bounds, and the places outside S are already integral, so f would have integral coefficients after a scalar. The `𝓞_K` form of §7.11 then makes f congruence, a contradiction.

*Needs:* §§7.11, 7.13, 8.5; §6.6.

### Examples

- Leading terms: `Δ = q² − 24q⁴ + ⋯`, `θ_qΔ = 2q² − 96q⁴ + ⋯`, `E₂Δ = q² + ⋯`.
- `E₀` and `(1 − 16x)K₀ + 8∫₀^x K₀` agree through `x¹³`; both have constant term 1.
- `θ₂(τ + 12) = −θ₂(τ)` while `θ₃(τ + 12) = θ₃(τ)`, so `θ₂θ₃` is not invariant under `T¹² ∈ Γ(12)`: there is no common level `Γ(12)` for all even-degree theta monomials, and each quotient needs its own multiplier check, as in §§8.3–8.4.
- `Σ C_n²(λ/16)ⁿ = 1 + q − 4q² + 5q³ + 12q⁴ − 42q⁵ + ⋯`, equal to the theta quotient of §8.4 through `q⁵`.

### Dependencies

Layers 1, 2, 6 and 7; ModularForms Layers 0 and 4; AlgebraicModularFormsAndSerreWeights Layer R15.2; AutomorphicGaloisRepresentations §4.2; GeometryOfNumbersAndQuadraticArithmetic §4.3; Mathlib derivative and Eisenstein API.

## Layer 9: The arithmetic fundamental group of the cuspidal model

This layer forms the cuspidal smooth model of `X(N)` over `𝓞_K`, proves that its finite étale covers all come from the base, and deduces that its fundamental group is that of `Spec 𝓞_K`.

### 9.1 The cuspidal smooth model

For `N ≥ 1` and a number field `K ⊇ ℚ(μ_N)`, start from a regular proper model of the fixed-pairing curve `X(N)_K` over `𝓞_K` and the extension ε of its rational cusp `∞` to a section. Let `𝒳_cusp(N)` be the smooth open subscheme obtained by keeping, in each fibre over a finite place, the connected component of the smooth locus through ε; its generic fibre is `X(N)_K` (CDT, Theorem 7.4.10, p.696). The selection is fibrewise; it is not the global connected component of the regular model, which is connected. No Néron mapping property is claimed for this curve.

*Needs:* ModularCurvesPartII §§5.13, 6.3, Layer 11 and gap:udc-all-prime-cuspidal-model-of-full-level; EtaleCohomologyFoundations §F.0.2.

API:

- The generic fibre of `𝒳_cusp(N)` is `X(N)_K`.
- `𝒳_cusp(N) → Spec 𝓞_K` is smooth with geometrically connected fibres.
- ε is a section of `𝒳_cusp(N) → Spec 𝓞_K` through the cuspidal component.
- For every geometric point η of `Spec 𝓞_K`, `ε(η)` is a geometric point of `𝒳_cusp(N)` and `π ∘ ε = id`.

**Checks.**

- For `N = 1`, `X(1) = ℙ¹` with its smooth model, and `𝒳_cusp(1) = ℙ¹_{𝓞_K}`.
- The maps induced by `π ∘ ε = id` compose to the identity on `π₁(Spec 𝓞_K, η)`.
- In a bad fibre with several components, a component not meeting ε is discarded although the regular model is globally connected.
- The section ε is not descended to a field that does not contain `ℚ(μ_N)`: over `ℚ` the cusp `∞` of the fixed-pairing component is not defined.

### 9.2 The arithmetic finite-cover criterion

Every finite étale cover of `𝒳_cusp(N)` is the pullback of a finite étale cover of `Spec 𝓞_K`, and morphisms of covers descend uniquely; the primes dividing N are included (CDT, sketch of Theorem 7.4.10, p.696, citing Ihara 1994, Theorem 1, pp.248–249, and §4, p.252).

*Proof sketch.* Follow Ihara's formal-rationality argument with its model hypotheses. A connected finite étale cover gives, along the section ε, a formal germ with algebraic-integer coefficients of a modular function on a finite-index subgroup; §§6.5–6.6 make it congruence. Étaleness over the cuspidal model at every finite place then forces the congruence cover to be arithmetically constant, and it descends to `𝓞_K`. The parameter `λ(τ/N)/16` begins with `exp(πiτ/N)`, while the width-N parameter of `X(N)` is `exp(2πiτ/N)`; use it only after the corresponding level doubling.

*Needs:* §§6.5, 6.6, 9.1; ModularCurvesPartII §6.3 and gap:udc-all-prime-cuspidal-model-of-full-level; EtaleCohomologyFoundations §F.0.2; BelyiMaps Layer 6.

### 9.3 The fundamental group of the cuspidal model

For `N ≥ 1`, a number field `K ⊇ ℚ(μ_N)` and every geometric point η of `Spec 𝓞_K`, the maps `π_* : π₁(𝒳_cusp(N), ε(η)) → π₁(Spec 𝓞_K, η)` and `ε_*` are mutually inverse isomorphisms (CDT, Theorem 7.4.10, p.696).

*Proof sketch.* §9.2 identifies the two pointed Galois categories of finite étale covers (EtaleCohomologyFoundations §F.0.2), so `π_*` is an isomorphism; `π ∘ ε = id` gives `π_* ε_* = id` and fixes the base point.

*Needs:* §§9.1, 9.2; EtaleCohomologyFoundations §F.0.2.

### Examples

- The theorem is stated at every geometric point, including points over finite primes. The analogue for the generic fibre fails for `N ≥ 6`: `X(N)_K` has genus at least 1 and connected finite étale covers that do not come from K; such covers do not extend to finite étale covers of `𝒳_cusp(N)`.
- The existence of a rational cusp does not by itself give §9.2; the input is the unbounded denominators theorem along ε.

### Dependencies

Layer 6; ModularCurvesPartII §§5.13, 6.3 and Layer 11; EtaleCohomologyFoundations §F.0.2; BelyiMaps Layer 6.

## Worked examples

These cases fix normalizations used across the layers.

1. `x = q − 8q² + 44q³ − 192q⁴ + 718q⁵ + O(q⁶)` and `q = x + 8x² + 84x³ + 992x⁴ + 12514x⁵ + O(x⁶)`; both compositions are the identity through degree five. The normalized cube root in `t = q^(1/3)` is `t − (8/3)t⁴ + (68/9)t⁷ + ⋯`: its cube is integral, the root is not.
2. For `H′ = {γ ∈ Γ(2) : d_γ ≡ 1 mod 4}`, `−I` is absent, `Γ(4) ≤ H′` and `L(H′) = 2`. This tests `Γ(L(G)) ≤ ±G` and refutes `Γ(L(G)) ≤ G` without the sign hypothesis. The character of `θ₃²` becomes trivial on `H′`.
3. At level `2N = 4` the degree of `M₄` over `ℚ(λ)` is 4; at `2N = 2` it is 1, while the generic formula would give `1/2`.
4. For `n = 2^a > 1`, the coefficient of `x^m` in `(1 − 16x)^(1/n)` has 2-adic valuation `(4 − a)m − v₂(m!)`; `a = 1, 2, 3` give bounded denominators and `a = 4` does not. An odd prime dividing n gives unbounded valuations. This separates the Fermat exponents `1, 2, 4, 8` from all others.
5. For `F = (1, 0, 0)` and `ρ = 1 ⊕ σ` with `σ(S) = diag(1, −1)`, `σ(R) = [[2, 1], [−7, −3]]`, `σ(T) = σ(S)σ(R) = [[2, 1], [7, 3]]`: `σ(S)² = σ(R)³ = I`, the characteristic polynomial of `σ(T)` is `X² − 5X − 1`, the image is infinite and the value span is a trivial line.
6. `Δ = q² + ⋯`, `θ_qΔ = 2q² + ⋯`, `E₂Δ = q² + ⋯`. `E₀` and `(1 − 16x)K₀ + 8∫₀^x K₀` have constant term 1; the negated expression fails at the constant term.
7. With `u = ∏_{m odd}(1 + q^m)^(−24)`, the coefficients of `u^(1/5)` have denominators `5, 25, 125, 625`, while `u^(1/24) = ∏_{m odd}(1 + q^m)^(−1)` is integral; a root of u with bounded denominators is integral, so `−24/n ∈ ℤ`.
8. With `q = exp(πiτ)`, T sends `h = λ(1 − λ)/16 = q + ⋯` to `−q + ⋯`, so h is not `Γ₀(2)`-invariant; S sends λ to `1 − λ` and fixes h. The invariance group is the theta group `⟨Γ(2), S⟩`.

## Downstream consumers

The exports of this roadmap are the unbounded denominators theorem and its algebraic-integer form (§§6.3, 6.6), Galois conjugation of weak forms with algebraic coefficients (§6.5), congruence of integral components of vector-valued forms and Mason's corollary (§§7.11–7.12), and the modular λ covering (§2.2), for roadmaps on noncongruence modular forms, vertex-operator-algebra characters, Belyi covers of modular curves and arithmetic fundamental groups.

## References

- [CDT] Frank Calegari, Vesselin Dimitrov and Yunqing Tang, *The unbounded denominators conjecture*, J. Amer. Math. Soc. 38 (2025), 627–702, [doi:10.1090/jams/1053](https://doi.org/10.1090/jams/1053); [author's copy](https://www.math.uchicago.edu/~fcale/papers/UDC.pdf); arXiv:2109.09040. Cited by journal page.
- [KSV10] Ian Kiming, Matthias Schütt and Helena A. Verrill, *Lifts of projective congruence groups*, J. London Math. Soc., [doi:10.1112/jlms/jdq062](https://doi.org/10.1112/jlms/jdq062); [arXiv:0905.4798v4](https://arxiv.org/abs/0905.4798v4), cited by its arXiv pages.
- [Ihara 1994] Yasutaka Ihara, *Horizontal divisors on arithmetic surfaces associated with Belyi uniformizations*, in *The Grothendieck Theory of Dessins d'Enfants*, London Math. Soc. Lecture Note Ser. 200, Cambridge Univ. Press (1994), 245–254, [doi:10.1017/CBO9780511569302.011](https://doi.org/10.1017/CBO9780511569302.011); cited by locator.
