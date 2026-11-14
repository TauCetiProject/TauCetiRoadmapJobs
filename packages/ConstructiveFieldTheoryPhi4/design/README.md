# Roadmap: constructive scalar field theory on the lattice — φ⁴, Ising and their scaling limits

**Summary.** This roadmap builds the lattice, probabilistic side of Euclidean scalar field theory in every dimension d ≥ 1, entirely with honest probability measures on finite-dimensional spaces and with families of finite-dimensional laws. It starts from single-site measures on ℝ (the φ⁴ measures `exp(−λφ⁴ + bφ²) dφ`, the Gaussian measures and the Ising measure `½(δ₋₁ + δ₁)`), defines the finite-volume Gibbs measures of ferromagnetic pair interactions, and introduces the Griffiths–Simon class of single-site measures through Ising block spins. It proves the correlation inequalities of the subject in finite volume: Griffiths' first and second inequalities, the FKG inequality, the random current representation and switching lemma of the Ising model, the Lebowitz, Gaussian (Newman) and Simon–Lieb inequalities for the Griffiths–Simon class, and the Messager–Miracle-Solé reflection inequality. On top of these it constructs the free-boundary infinite-volume state and its two-point function, susceptibility and critical point, proves reflection positivity, Gaussian domination and the infrared bound for periodic nearest-neighbour systems with long-range order of the Ising model in d ≥ 3 as an application, and develops random fields indexed by test functions, Schwinger functions, Gaussian random fields and Wick's law. It closes by defining the random fields reachable as scaling limits of lattice systems (Aizenman–Duminil-Copin, Definition 1.1), proving their basic structure and that the massive (and in d ≥ 3 the massless) Gaussian free field is reachable from Gaussian lattice fields. The marginal triviality theorem of Aizenman and Duminil-Copin and its Griffiths–Simon extension are downstream goals owned by ConstructiveFieldTheoryPhi4PartII.

## Scope and ownership

This roadmap owns, at the generality stated in its layers: single-site measures and the Griffiths–Simon class (Layers 0 and 2); finite-volume Gibbs measures of pair interactions on finite sets, including Gaussian lattice fields (Layer 1); the finite-volume correlation inequalities and the random current representation with its switching lemma (Layer 3); the free-boundary infinite-volume state on ℤ^d (Layer 4); reflection positivity, Gaussian domination and the infrared bound on the discrete torus (Layer 5); random fields indexed by compactly supported continuous test functions, Schwinger functions, Gaussian processes with a prescribed covariance kernel and Wick's law (Layer 6); reachable random fields and the reachability of the Gaussian free field (Layer 7). ConstructiveFieldTheoryPhi4PartII owns the marginal-triviality goals below. The continuum analytic kernels used in Layer 7 are imported as specified below. The construction of a Gaussian process with an arbitrary positive semidefinite covariance kernel on an arbitrary index set is general probability rather than field theory; it is planned here because no roadmap plans it and every Gaussian random field of this roadmap needs it.

Material consumed from elsewhere, by section:

- **Kolmogorov extension.** The existence and uniqueness of a probability measure on an arbitrary product of standard Borel spaces with prescribed consistent finite-dimensional marginals is StochasticCalculus §1.1. The countable case is Tau Ceti's `TauCeti.Measure.exists_isProjectiveLimit_of_countable`; ℤ^d is countable, so Layer 4 needs only that, while Layer 6 (index set the uncountable space of test functions) needs StochasticCalculus §1.1.
- **Gaussian moments.** The Wick–Isserlis formula for centred multivariate Gaussian vectors with positive semidefinite covariance (monomial integrability, vanishing odd moments, even moments as sums over pairings) is StandardDistributions §5.3. Moment determinacy under an exponential moment is Tau Ceti's `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`.

Left to other roadmaps:

- The geometry of random currents beyond the switching lemma (current intersection probabilities, the tree diagram and improved tree diagram bounds, the mixing property of random currents), the transfer-matrix spectral representation of the two-point function, the identification below the critical point of the free-boundary, periodic and boundary-condition infinite-volume limits (Aizenman–Duminil-Copin, Proposition 5.2, stated there without proof), the infinite-volume and sliding-scale infrared bounds, the lower bound on the two-point function at criticality, the uniform local integrability of rescaled two-point functions, and the marginal-triviality theorems (downstream goals 8.1 and 8.2), including their statements and proofs, belong to ConstructiveFieldTheoryPhi4PartII, which consumes this roadmap.
- Osterwalder–Schrader reconstruction, Euclidean free Schwinger distributions as tempered functionals and Wightman fields belong to RelativisticQuantumFieldTheory. Its §7.1 supplies the analytic continuum Green kernels of `−Δ + m²`, their Fourier agreement, exterior decay and massless radial formula. This roadmap owns the C_c-indexed probability law, its block normalization and its lattice reachability (7.4).
- The two-dimensional stochastic quantisation equation and its Gibbs measure are a PDE topic (PDE, Scope and ownership: the stochastic programme assigned to PDE, Part II). Quantum spin systems and KMS states are OperatorAlgebraDynamics D9.
- The Lee–Yang theorem, the GHS inequality, the Peierls argument, the DLR formalism of specifications and uniqueness of Gibbs measures are not part of this roadmap; the free-boundary state of Layer 4 is constructed by monotone limits and needs none of them.

## Conventions

**Lattice and boxes.** d ≥ 1 is the dimension. Points of ℤ^d are functions `Fin d → ℤ`, embedded in ℝ^d = `EuclideanSpace ℝ (Fin d)` coordinatewise. For x ∈ ℤ^d, `‖x‖₁ = Σ_j |x_j|`, `‖x‖∞ = max_j |x_j|` and |x| is the Euclidean norm. For R ∈ ℕ the box is `V_R = [−R, R]^d ∩ ℤ^d`, with `(2R + 1)^d` points; the block of side L is `Λ_L = V_L` (Aizenman–Duminil-Copin (1.8) and (1.15)). Q denotes the closed cube `[−1, 1]^d ⊂ ℝ^d` and `1_Q` its indicator. The hyperoctahedral group W_d of signed permutation matrices acts on ℤ^d and on ℝ^d; it preserves every V_R.

**Couplings and the Hamiltonian.** A coupling on a finite set V is a symmetric function `J : V → V → ℝ`; it is ferromagnetic if J ≥ 0. Its diagonal plays no role. The Hamiltonian of a configuration φ ∈ ℝ^V is minus the sum over unordered pairs {x, y} of distinct sites, `H_{V,J}(φ) = −Σ_{{x,y}} J_{xy} φ_x φ_y`, as in Aizenman–Duminil-Copin (1.12) and (1.16); equivalently, it is minus one half of the sum over ordered pairs, `H_{V,J}(φ) = −½ Σ_{x≠y} J_{xy} φ_x φ_y`. The inverse temperature is absorbed into J. Witness: for V = {x, y}, `J_{xy} = J` and the Ising measure, both forms give `H(1, 1) = −J`, `Z = cosh J` and `⟨σ_x σ_y⟩ = tanh J` (for `J = (log 3)/2`: `Z = 2/√3` and `⟨σ_x σ_y⟩ = 1/2`); omitting the factor ½ from the ordered sum doubles the coupling and gives `tanh 2J` (4/5 at `J = (log 3)/2`), and halving the unordered sum gives `tanh(J/2)` (`2 − √3`). The nearest-neighbour coupling of strength J ≥ 0 on a subset of ℤ^d is `J_{xy} = J · 1[‖x − y‖₁ = 1]`, and `|J| = Σ_y J_{0y} = 2dJ`. The row norm of a coupling is `‖J‖ = max_x Σ_y |J_{xy}|`.

**Single-site measures.** Single-site measures are Borel probability measures ρ on ℝ. The φ⁴ measure is `ρ_{λ,b}(dφ) = z⁻¹ exp(−λφ⁴ + bφ²) dφ` for λ > 0 and b ∈ ℝ, the sign of b as in Aizenman–Duminil-Copin (1.12); Simon's Twelve Tales (line 1021) writes `exp(−aφ⁴ − bφ²)` with the opposite sign. For b < 0, `γ_b = ρ_{0,b}` is the centred Gaussian of variance `1/(2|b|)`. Witness: `γ_{−1/2}` is the standard normal law `ProbabilityTheory.gaussianReal 0 1`; under the opposite sign convention it would be b = +½. The Ising measure is `ρ_I = ½(δ₋₁ + δ₁)`.

**Expectations and multi-indices.** `⟨·⟩_{V,J,ρ}` is the expectation under the finite-volume Gibbs measure of Layer 1. A multi-index on V is a function A : V → ℕ, `φ_A = Π_x φ_x^{A(x)}` and `|A| = Σ_x A(x)`; for Ising spins and a set A ⊆ V, `σ_A = Π_{x∈A} σ_x`. Truncated quantities such as `⟨F ; G⟩ = ⟨FG⟩ − ⟨F⟩⟨G⟩` are written with a semicolon.

**Torus and Fourier conventions.** For L ≥ 1 the torus is `T_L = (ℤ/2Lℤ)^d`, with `|T_L| = (2L)^d`. Its periodic nearest-neighbour coupling of strength J counts one bond per vertex and direction: the Hamiltonian is `−J Σ_{x∈T_L} Σ_{j=1}^d φ_x φ_{x+e_j}`. For L ≥ 2 this is the nearest-neighbour coupling of the torus graph; for L = 1, where `x + e_j = x − e_j`, each pair of neighbours carries the coupling 2J. The dual torus is `Λ*_L = (π/L)ℤ^d ∩ (−π, π]^d`, lattice Fourier modes are `e^{ip·x}` (no factor 2π), `E(p) = 2 Σ_j (1 − cos p_j)` is the symbol of the lattice Laplacian `−Δ`, and `Ŝ_L(p) = Σ_{x∈T_L} e^{ip·x} ⟨φ_0 φ_x⟩` (Aizenman–Duminil-Copin (5.7)–(5.8)). The infrared bound of Layer 5 reads `E(p) Ŝ_L(p) ≤ 1/J` for p ≠ 0. Witness: for the Gaussian lattice field on the torus with single-site measure γ_b, |b| > dJ, one computes `Ŝ_L(p) = 1/(2(|b| − dJ) + J E(p))`, so the constant 1/J is attained in the limit |b| ↓ dJ; this agrees with Peled–Spinka (52) (line 1741), while the constant printed in Aizenman–Duminil-Copin (5.9), `1/(2|J|β)` with `|J| = 2dJ`, is smaller by the factor 4d and is violated by this Gaussian field and by the Ising example of 5.4.

**Test functions and the continuum Fourier transform.** Aizenman–Duminil-Copin's `C_0(ℝ^d)` is the space of compactly supported continuous functions; here it is Mathlib's `CompactlySupportedContinuousMap` on `EuclideanSpace ℝ (Fin d)` with values in ℝ, written C_c(ℝ^d) (not Mathlib's space of functions vanishing at infinity). The continuum Fourier transform is Mathlib's `𝓕` with kernel `e^{−2πi⟨x,ξ⟩}` (`Real.fourier_eq`); the symbol of `−Δ + m²` is then `4π²|ξ|² + m²`. The Gaussian free field covariance is `C_m(f, g) = ∫ conj(𝓕f(ξ)) 𝓕g(ξ) / (4π²|ξ|² + m²) dξ`. Witness: for d = 1 this is `∫∫ f(x) e^{−m|x−y|}/(2m) g(y) dx dy`, because the Fourier transform of `e^{−m|x|}/(2m)` is `1/(m² + 4π²ξ²)`.

**Total functions.** The rescaled lattice field divides by the square root of a finite block second moment Σ ≥ 0 (a variance when ρ is even); with Lean's conventions `√0 = 0` and `0⁻¹ = 0` the field is identically zero when Σ = 0, which, for a stable Gibbs law with integrable coordinate squares and a nonempty block, happens exactly for ρ = δ₀. An infinite second moment is excluded from this real normalization, rather than assigned the junk value of a real integral. Monotone limits of nonnegative correlation functions are taken in `[0, ∞]`.

## Exact supplier contracts

### From Mathlib

The pin is 1b1ccf4b088b32fa3f23f2de1127433254a81e1e. The following declarations are consumed, each read at the pin.

- `MeasureTheory.Measure.IsNegInvariant` (Mathlib/MeasureTheory/Group/Measure.lean:310): invariance of a measure under negation, `μ.neg = μ`; it is the evenness of single-site measures and of Gibbs measures throughout.
- `ProbabilityTheory.integrableExpSet` (Mathlib/Probability/Moments/IntegrableExpMul.lean:112): the set of t for which `exp(tX)` is integrable; admissibility of ρ is `integrableExpSet (fun φ ↦ φ²) ρ = Set.univ`.
- `MeasureTheory.Integrable` and `MeasureTheory.Integrable.mono'` (Mathlib/MeasureTheory/Function/L1Space/Integrable.lean:58 and 104): integrability is a.e. strong measurability together with a finite integral of the norm, and an a.e. strongly measurable function dominated almost everywhere by an integrable one is integrable. Domination does not supply measurability; used in the integrability API of 0.1.
- `MeasureTheory.Measure.pi` (Mathlib/MeasureTheory/Constructions/Pi.lean:211), `MeasureTheory.Measure.withDensity` (Mathlib/MeasureTheory/Measure/WithDensity.lean:39) and `MeasureTheory.Measure.map` (Mathlib/MeasureTheory/Measure/Map.lean:96): the Gibbs measure of Layer 1 is `(ρ^{⊗V}).withDensity (e^{−H}/Z)`. `MeasureTheory.Measure.infinitePi` (Mathlib/Probability/ProductMeasure.lean:354) is the J = 0 infinite-volume state.
- `MeasureTheory.IsProjectiveMeasureFamily`, `MeasureTheory.IsProjectiveLimit` and `MeasureTheory.IsProjectiveLimit.unique` (Mathlib/MeasureTheory/Constructions/Projective.lean:45, 115 and 150): the language of the Kolmogorov extension in Layers 4 and 6. Mathlib itself contains no existence theorem for projective limits; its Brownian motion file says so explicitly.
- `ProbabilityTheory.map_eq_iff_forall_finset_map_restrict_eq` (Mathlib/Probability/Process/FiniteDimensionalLaws.lean:61): equality of laws of processes is equality of all finite-dimensional laws; this is equality up to finite-dimensional distributions in Layer 6.
- `ProbabilityTheory.IsGaussianProcess` (Mathlib/Probability/Distributions/Gaussian/IsGaussianProcess/Def.lean:30): a structure whose single field says that every restriction to a finite index set has a Gaussian law (`ProbabilityTheory.HasGaussianLaw`, Mathlib/Probability/Distributions/Gaussian/HasGaussianLaw/Def.lean:33); `ProbabilityTheory.IsGaussian` (Mathlib/Probability/Distributions/Gaussian/Basic.lean:45) says that every continuous linear functional has a real Gaussian law `ProbabilityTheory.gaussianReal`. A generalised Gaussian process of Layer 6 is `ProbabilityTheory.IsGaussianProcess` for a random field; Mathlib's definition does not require centring.
- `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.measurePreserving_restrict₂_multivariateGaussian` and `ProbabilityTheory.charFun_multivariateGaussian` (Mathlib/Probability/Distributions/Gaussian/Multivariate.lean:166, 241 and 233, respectively): finite-dimensional Gaussian laws and their restriction marginals, for the projective family of 6.3; `ProbabilityTheory.BrownianReal.projectiveFamily` (Mathlib/Probability/BrownianMotion/GaussianProjectiveFamily.lean:81) is the pattern for the kernel min(s, t).
- `MeasureTheory.Measure.ext_of_charFun` (Mathlib/MeasureTheory/Measure/CharacteristicFunction/Basic.lean:257), `MeasureTheory.ProbabilityMeasure.tendsto_iff_tendsto_charFun` (Lévy's continuity theorem, Mathlib/MeasureTheory/Measure/LevyConvergence.lean:214) and `ProbabilityTheory.tendstoInDistribution_iff_tendstoInDistribution_inner` (Cramér–Wold, Mathlib/Probability/CramerWold.lean:39): weak convergence and identification of finite-dimensional laws in Layers 1, 4, 6 and 7.
- `MeasureTheory.ProbabilityMeasure` with its topology of weak convergence, `MeasureTheory.ProbabilityMeasure.tendsto_iff_forall_integral_tendsto` (Mathlib/MeasureTheory/Measure/ProbabilityMeasure.lean:367) and `isCompact_closure_of_isTightMeasureSet` (Prokhorov, Mathlib/MeasureTheory/Measure/Prokhorov.lean:530).
- `fkg` (Mathlib/Combinatorics/SetFamily/FourFunctions.lean:370): the FKG inequality for a log-supermodular weight on a finite distributive lattice, used for the discretisation route of 3.3. It says nothing about measures on ℝ^V.
- `CompactlySupportedContinuousMap` (Mathlib/Topology/ContinuousMap/CompactlySupported.lean:41): the index space of random fields.
- `Real.fourier_eq` (Mathlib/Analysis/Fourier/FourierTransform.lean:434): the continuum Fourier transform and its normalisation; `ZMod.dft` (Mathlib/Analysis/Fourier/ZMod.lean:87): the discrete Fourier transform on `ZMod N`, used coordinatewise on the torus.
- `ae_eq_zero_of_integral_contDiff_smul_eq_zero` (Mathlib/Analysis/Distribution/AEEqOfIntegralContDiff.lean:186): a locally integrable function whose integrals against all smooth compactly supported functions vanish is zero almost everywhere; it gives uniqueness of Schwinger functions in 6.2.
- `integral_gaussian` (Mathlib/Analysis/SpecialFunctions/Gaussian/GaussianIntegral.lean:210) and `Real.Gamma` (Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean:402): normalisations and moments of the single-site measures.
- `hasDerivAt_integral_of_dominated_loc_of_deriv_le` (Mathlib/Analysis/Calculus/ParametricIntegral.lean:569): differentiation under the integral sign, for the coupling derivatives of 1.3.

### From Tau Ceti

The pin is 2fd255d997f47c0b5d834ee416c7015d55444ce5.

- `TauCeti.Measure.exists_isProjectiveLimit_of_countable` (TauCeti/MeasureTheory/Measure/ProjectiveLimit/Countable.lean:165): a projective family of probability measures on the finite subproducts of a countable family of standard Borel spaces has a projective limit, which is a probability measure. Used for the infinite-volume law on ℝ^{ℤ^d} in 4.2.
- `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp` (TauCeti/Probability/Moments/Determinacy.lean:246): two finite measures on ℝ, each with `∫ e^{a|x|} < ∞` for some a > 0, and with equal polynomial moments, are equal. Used in 4.2 and 6.4.
- `TauCeti.Probability.centralMoment_id_two_mul_gaussianReal` (TauCeti/Probability/Distributions/Gaussian/Moments.lean:147): the even central moments `(2n − 1)!! vⁿ` of `gaussianReal m v`, used in Checks of Layers 0, 3 and 6.

### From TauCetiRoadmap.StochasticCalculus

§1.1: for an arbitrary index type I, standard Borel spaces X_i and a family of probability measures P_F on `Π_{i∈F} X_i`, F ⊆ I finite, satisfying `MeasureTheory.IsProjectiveMeasureFamily`, there is a probability measure on `Π_i X_i` with the product σ-algebra that is a projective limit of the family, and it is unique (by `MeasureTheory.IsProjectiveLimit.unique`). Used with I = C_c(ℝ^d) and X_i = ℝ in 6.1 and 6.3. Nothing else of that roadmap is assumed.

### From TauCetiRoadmap.StandardDistributions

§5.3 (mixed moments): for a centred random vector Z with law `ProbabilityTheory.multivariateGaussian 0 S`, S positive semidefinite, every monomial in the coordinates is integrable, odd products have mean zero, and `E[Z_{i_1} ⋯ Z_{i_{2n}}] = Σ_π Π_{j=1}^n S_{i_{π(2j−1)} i_{π(2j)}}` with π over the pairings of {1, …, 2n}. Used in 6.4 and in the Gaussian Checks of 3.5. Nothing else of that roadmap is assumed.

### From TauCetiRoadmap.RelativisticQuantumFieldTheory

§7.1: for m > 0 and d ≥ 1, the positive radial locally integrable Green kernel of `−Δ + m²`, given away from zero by its heat integral, has Mathlib-normalized Fourier multiplier `(4π²|ξ|² + m²)⁻¹` and exponential exterior decay with any rate 0 < c < m. For m = 0 and d ≥ 3, use the decaying radial kernel `Γ(d/2 − 1)/(4π^{d/2}|x|^{d−2})` for x ≠ 0 and its Fourier agreement; no arbitrary harmonic-polynomial addition is included. Layer 7 consumes these analytic facts, while its test-function Gaussian probability law, block second-moment normalization and lattice scaling limit are owned here.

## How to read the build

Layer 0 fixes the single-site measures and the admissibility condition that makes every finite-volume measure exist. Layer 1 builds the finite-volume Gibbs measures, their symmetries, their dependence on the couplings and on the single-site measure, and the Gaussian lattice fields. Layer 2 realises lattice systems with Ising-block single-site measures as images of Ising systems and defines the Griffiths–Simon class as their limits; it proves that φ⁴ measures belong to it. Layer 3 proves the finite-volume correlation inequalities: Griffiths and FKG for general single-site measures, the random current representation of the Ising model and, through it and Layer 2, the Lebowitz, Gaussian and Simon–Lieb inequalities for the Griffiths–Simon class, the Messager–Miracle-Solé reflection inequality and uniform moment bounds. Layer 4 takes monotone infinite-volume limits and defines the two-point function, the susceptibility and the critical point. Layer 5 is independent of Layers 2–4: it treats periodic systems on the torus, proves reflection positivity, Gaussian domination and the infrared bound, and derives long-range order of the Ising model in d ≥ 3. Layer 6 is independent of Layers 0–5: it develops random fields indexed by test functions, Schwinger functions, Gaussian random fields and Wick's law. Layer 7 combines Layers 1 and 6 into reachable random fields and proves the reachability of the Gaussian free field. The downstream marginal-triviality goals specify what ConstructiveFieldTheoryPhi4PartII proves from this foundation.

## Layer 0: Single-site measures

### 0.1 Admissible and even single-site measures

Define a single-site measure ρ (a Borel probability measure on ℝ) to be admissible if `∫ exp(cφ²) dρ(φ) < ∞` for every real c. A single-site measure is even if it is invariant under φ ↦ −φ; this is Mathlib's `MeasureTheory.Measure.IsNegInvariant` (the class whose field says `μ.neg = μ`), and no new notion is introduced. Admissibility is the condition under which every finite-volume Gibbs measure of Layer 1 exists for every coupling; it is strictly stronger than the integrability of `exp(cφ²)` for a single c > 0 (which the Gaussian laws have), and strictly weaker than the growth condition `∫ exp(|φ|^α) dρ < ∞` for some α > 2 of Aizenman–Duminil-Copin (2.2) (line 384): the law with density proportional to `exp(−φ² log(1 + φ²))` is admissible but fails (2.2) for every α > 2.

The API consists of the following facts.

- Agreement with the library: ρ is admissible iff `ProbabilityTheory.integrableExpSet (fun φ ↦ φ²) ρ` is all of ℝ.
- An admissible ρ integrates `exp(cφ² + hφ)` for all real c and h, hence every polynomial; and every ρ-a.e. measurable F : ℝ → ℝ with `|F(φ)| ≤ C e^{cφ²}` for ρ-almost every φ, for some C ≥ 0 and real c, is ρ-integrable (domination alone does not give measurability, which Mathlib's `MeasureTheory.Integrable` requires).
- Admissibility is preserved by the images under φ ↦ sφ (s ∈ ℝ), by finite convex combinations, and by tilting: for real a, h the measure `exp(aφ² + hφ) ρ / ∫ exp(aφ² + hφ) dρ` is an admissible probability measure.
- For admissible ρ, every finite set V and every real c, `∫ exp(c Σ_{x∈V} φ_x²) d ρ^{⊗V} = (∫ exp(cφ²) dρ)^{|V|}` is finite.
- A probability measure with bounded support is admissible; so is one with a density bounded by `C exp(−ψ(φ))` where `ψ(φ)/φ² → ∞` as |φ| → ∞.
- If ∫ exp(|φ|^α) dρ < ∞ for some α > 2 then ρ is admissible, because `cφ² ≤ |φ|^α + C_{c,α}`.
- An even measure with a finite n-th absolute moment has vanishing n-th moment for n odd, and ρ is even iff its characteristic function is real.

*Needs:* Mathlib `MeasureTheory.Measure.pi`, `MeasureTheory.Measure.map`, `MeasureTheory.Measure.IsNegInvariant`, `ProbabilityTheory.integrableExpSet`, `MeasureTheory.Integrable.mono'`.

**Checks.**

- The Dirac measure δ_a is admissible, with `∫ e^{cφ²} dδ_a = e^{ca²}`, and it is even exactly for a = 0.
- The standard normal law is not admissible: `∫ e^{φ²/2} dN(0,1) = ∞`. Weakening "every c" to "some c > 0" would admit it, and then for two sites with `J_{xy} = J ≥ 1` the partition function `∫∫ e^{Jφ_xφ_y} dN(0,1)⊗N(0,1)` is infinite (the quadratic form `½(φ_x² + φ_y²) − Jφ_xφ_y` is not positive definite), so no Gibbs measure exists.
- The Cauchy law is not admissible (it has no second moment).
- `(2δ₋₁ + δ₁)/3` is admissible but not even: its mean is −1/3.
- Measurability is needed in the domination statement: for ρ the uniform law on [0, 1] (admissible, bounded support), `F = 1_{[0,1/2]}` satisfies `|F| ≤ 1` (C = 1, c = 0) and has integral ½, while the indicator of a Vitali subset of [0, 1] satisfies the same bound but is not ρ-a.e. measurable (it agrees with no Borel function outside a Lebesgue-null set), so it is not ρ-integrable.

### 0.2 The φ⁴, Gaussian and Ising single-site measures

Define, for λ > 0 and b ∈ ℝ, the φ⁴ measure `ρ_{λ,b}` with density `z_{λ,b}⁻¹ exp(−λφ⁴ + bφ²)` with respect to Lebesgue measure, where `z_{λ,b} = ∫ exp(−λφ⁴ + bφ²) dφ ∈ (0, ∞)` (Aizenman–Duminil-Copin (1.12), line 145). Define, for b < 0, the Gaussian single-site measure `γ_b = ρ_{0,b}` with density proportional to `exp(bφ²)`. Define the Ising measure `ρ_I = ½(δ₋₁ + δ₁)` (Aizenman–Duminil-Copin (1.16)–(1.17), line 222).

The API consists of the following facts.

- Each `ρ_{λ,b}` is an even admissible probability measure with a continuous positive density; ρ_I is even and admissible; `γ_b` is even, equals `ProbabilityTheory.gaussianReal 0 (1/(2|b|))`, and is not admissible.
- Scaling: for s > 0 the image of `ρ_{λ,b}` under φ ↦ sφ is `ρ_{λ s⁻⁴, b s⁻²}`.
- Moments at b = 0: `∫ φ^{2k} dρ_{λ,0} = λ^{−k/2} Γ((2k+1)/4)/Γ(1/4)`, by the substitution u = λφ⁴ and `Real.Gamma`.
- The Ising measure is the hard limit of φ⁴ measures: since `−λφ⁴ + 2λφ² = −λ(φ² − 1)² + λ`, `ρ_{λ,2λ}` is proportional to `exp(−λ(φ² − 1)²) dφ` and converges weakly to ρ_I as λ → ∞, with `sup_{λ≥1} ∫ e^{cφ²} dρ_{λ,2λ} < ∞` for every c (Aizenman–Duminil-Copin (1.20), line 257).

*Needs:* 0.1; Mathlib `ProbabilityTheory.gaussianReal`, `integral_gaussian`, `Real.Gamma`, `MeasureTheory.ProbabilityMeasure`.

**Checks.**

- `γ_{−1/2}` is the standard normal law; the opposite sign convention for b would assign it to b = +½.
- `∫ φ² dρ_{λ,0} = Γ(3/4)/(Γ(1/4)√λ) ≈ 0.338/√λ` and `∫ φ⁴ dρ_{λ,0} = Γ(5/4)/(λΓ(1/4)) = 1/(4λ)`; the second value is recomputed independently by the integration-by-parts identity of 3.7.
- `ρ_{1,2}`, proportional to `exp(−(φ² − 1)²)`, has its density maxima at φ = ±1 and a local minimum at 0: a φ⁴ measure need not be unimodal, and the double-well case b > 0 is part of the family.
- ρ_I has no density with respect to Lebesgue measure, so any statement proved through densities (such as the identity of 3.7) does not apply to it directly.

### Examples

The measures `ρ_{λ,b}`, `γ_b`, ρ_I, the Dirac measures and the uniform measure on {−1, 0, 1} are the running examples; the last is the Ising-block measure of 2.1 obtained by Griffiths' trick.

### Dependencies

Mathlib `MeasureTheory.Measure.pi`, `MeasureTheory.Measure.map`, `MeasureTheory.Measure.IsNegInvariant`, `ProbabilityTheory.gaussianReal`, `integral_gaussian`, `Real.Gamma`, `MeasureTheory.ProbabilityMeasure`. No other roadmap.

## Layer 1: Finite-volume lattice measures

### 1.1 Couplings, partition function and the Gibbs measure

Define, for a finite set V, a coupling J on V and a single-site measure ρ, the partition function `Z_{V,J}(ρ) = ∫ exp(−H_{V,J}(φ)) dρ^{⊗V}(φ) ∈ (0, ∞]`, call the triple stable if it is finite, and define the Gibbs measure `μ_{V,J,ρ} = Z_{V,J}(ρ)⁻¹ exp(−H_{V,J}) · ρ^{⊗V}` on ℝ^V (Aizenman–Duminil-Copin (1.11)–(1.12), lines 139–147; Sokal, Section 2.2, lines 392–400).

The API consists of the following facts.

- Z is positive, and μ is a probability measure whenever the triple is stable.
- If ρ is admissible, every coupling is stable: `−H_{V,J}(φ) ≤ ½‖J‖ Σ_x φ_x²`, so `Z ≤ (∫ e^{‖J‖φ²/2} dρ)^{|V|}`.
- For J = 0, μ is `ρ^{⊗V}`; for V a single point, μ is ρ; for V empty, μ is the Dirac measure at the empty configuration and Z = 1.
- Decoupling: if V = V₁ ⊔ V₂ and J vanishes between V₁ and V₂, then μ is the product of the Gibbs measures on V₁ and V₂ under ℝ^V ≅ ℝ^{V₁} × ℝ^{V₂}, and Z is the product of the partition functions.
- Relabelling: for a bijection e : W → V, the image of `μ_{V,J,ρ}` under φ ↦ φ ∘ e is `μ_{W, J∘(e×e), ρ}`.
- Tilting the single-site measure by `e^{aφ²}` is the same as adding a diagonal term: for admissible ρ the Gibbs measure with single-site measure `e^{aφ²}ρ/∫e^{aφ²}dρ` is `Z'⁻¹ exp(−H_{V,J} + aΣ_xφ_x²) ρ^{⊗V}`.

*Needs:* 0.1; Mathlib `MeasureTheory.Measure.pi`, `MeasureTheory.Measure.withDensity`.

**Checks.**

- Two sites, Ising: `Z = cosh J` and `⟨σ_x σ_y⟩ = tanh J`; omitting the factor ½ from the ordered-pair sum (equivalently, doubling the unordered-pair sum) would give `cosh 2J` and `tanh 2J`.
- Three sites, all pairs coupled with J, Ising: `Z = (e^{3J} + 3e^{−J})/4` and `⟨σ_1σ_2⟩ = (e^{3J} − e^{−J})/(e^{3J} + 3e^{−J})`, which is negative for J < 0 (frustration); the definition does not require J ≥ 0.
- Two sites with single-site measure N(0,1) and `J_{xy} = 1` give Z = ∞: the triple is unstable, so stability cannot be dropped from the probability statement.

### 1.2 Integrability, symmetries and the spin flip

Prove that for admissible ρ, a finite set V and any coupling J, every polynomial in the φ_x and every function `exp(Σ_x h_x φ_x + c Σ_x φ_x²)` (h ∈ ℝ^V, c ∈ ℝ) is integrable for `μ_{V,J,ρ}`. Prove that every bijection g of V with `J_{gx,gy} = J_{xy}` preserves μ under φ ↦ φ ∘ g, and that for even ρ the measure μ is invariant under φ ↦ −φ, so that `⟨φ_A⟩ = 0` whenever |A| is odd (Aizenman–Duminil-Copin (1.17), line 230; Sokal, lines 405–409).

*Needs:* 0.1; 1.1.

**Checks.**

- On the Ising chain {0, 1, 2} with `J_{01} = J_{12} = J`, the reflection 0 ↔ 2 is an automorphism and `⟨σ_0σ_1⟩ = ⟨σ_1σ_2⟩ = tanh J`, `⟨σ_0σ_2⟩ = tanh² J`.
- If `J_{01} ≠ J_{12}` the reflection is not an automorphism and `⟨σ_0σ_1⟩ = tanh J_{01} ≠ tanh J_{12} = ⟨σ_1σ_2⟩`.
- For the non-even measure `(δ₀ + δ₁)/2` on one site, `⟨φ⟩ = ½ ≠ 0`: the spin-flip statement needs evenness.

### 1.3 Dependence on the couplings

Prove that for admissible ρ, a finite set V and a measurable F with `|F(φ)| ≤ C(1 + Σ_x φ_x²)^k`, the map J ↦ ⟨F⟩_{V,J,ρ} on symmetric couplings is continuously differentiable, with `∂⟨F⟩/∂J_{xy} = ⟨F φ_x φ_y⟩ − ⟨F⟩⟨φ_x φ_y⟩` for x ≠ y, the derivative taken along the symmetric direction that changes `J_{xy}` and `J_{yx}` together (Peled–Spinka, lines 519–526).

*Needs:* 1.1; 1.2; Mathlib `hasDerivAt_integral_of_dominated_loc_of_deriv_le`.

**Checks.**

- Two sites, Ising: `d/dJ tanh J = 1 − tanh² J = ⟨(σ_xσ_y)²⟩ − ⟨σ_xσ_y⟩²`.
- At J = 0 and even ρ, `∂⟨φ_xφ_y⟩/∂J_{xy} = (∫ φ² dρ)²`, which is 1 for ρ_I.
- The derivative along a diagonal entry `J_{xx}` is zero, since the diagonal does not enter the Hamiltonian; a convention including the diagonal would give `½⟨F ; φ_x²⟩`.

### 1.4 Continuity in the single-site measure

Prove that if single-site measures ρ_k converge weakly to ρ and `sup_k ∫ e^{cφ²} dρ_k < ∞` for every c, then ρ is admissible and, for every finite V, every coupling J and every continuous F with `|F(φ)| ≤ C(1 + Σ_x φ_x²)^m`, `Z_{V,J}(ρ_k) → Z_{V,J}(ρ)` and `⟨F⟩_{V,J,ρ_k} → ⟨F⟩_{V,J,ρ}`; in particular `μ_{V,J,ρ_k}` converges weakly to `μ_{V,J,ρ}`. This supplies the continuity step when uniform quadratic exponential moments of approximants are available; the full Griffiths–Simon finite-volume transfer, including a suitable approximation under a growth condition on the limit alone, is a separate target in 2.2 (Aizenman–Duminil-Copin, lines 1984–1985 and 2020–2022). A proof route: weak convergence of the finite products `ρ_k^{⊗V}` through characteristic functions and Lévy's continuity theorem, and uniform integrability of `F e^{−H}` from the uniform bound on `∫ exp(c Σ_x φ_x²) dρ_k^{⊗V}`.

*Needs:* 0.1; 1.1; 1.2; Mathlib `MeasureTheory.ProbabilityMeasure.tendsto_iff_tendsto_charFun`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_forall_integral_tendsto`.

**Checks.**

- The uniform bound cannot be dropped: `ρ_k = (1 − e^{−k})δ₀ + ½e^{−k}(δ_k + δ_{−k})` converges weakly to δ₀, but for two sites with `J_{xy} = 1`, `Z(ρ_k) ≥ ¼e^{−2k} e^{k²} → ∞` while `Z(δ₀) = 1`.
- `ρ_{λ,2λ} → ρ_I` (0.2) satisfies the uniform bound, so for two sites `⟨φ_xφ_y⟩_{ρ_{λ,2λ}} → tanh J` as λ → ∞.
- For J = 0 the statement reduces to the weak convergence of products, `ρ_k^{⊗V} → ρ^{⊗V}`.

### 1.5 Gaussian lattice fields

Prove that for b < 0 and a coupling J on a finite set V, the triple (V, J, γ_b) is stable exactly when the matrix `2|b| I − J⁰` is positive definite, J⁰ being J with zero diagonal, and that then `μ_{V,J,γ_b}` is the centred Gaussian law with covariance `(2|b| I − J⁰)⁻¹`, that is `ProbabilityTheory.multivariateGaussian 0 (2|b| I − J⁰)⁻¹` transported to ℝ^V. For the nearest-neighbour coupling of strength 1 on V_R and `b = −(d + μ²/2)` with μ ≥ 0, the triple is stable for every R and the covariance is `G^{(R)}_μ = (μ² − Δ_R)⁻¹`, where `−Δ_R = 2d I − A_R` is the Dirichlet Laplacian of V_R and A_R its adjacency matrix: free boundary conditions of the lattice field are Dirichlet boundary conditions of the Laplacian (Sokal, footnote at lines 394–396). Prove that `G^{(R)}_μ(x, y)` is non-decreasing in R and converges, for μ > 0 in every dimension and for μ = 0 when d ≥ 3, to `G_μ(x − y) = (2π)^{−d} ∫_{[−π,π]^d} e^{ip·(x−y)} / (E(p) + μ²) dp` (Fröhlich, lines 266–269; Simon, Twelve Tales (3.8), lines 960–975). A proof route for the monotonicity: the Neumann series `Σ_k A_R^k/(2d + μ²)^{k+1}`, whose terms increase with R entrywise.

*Needs:* 0.2; 1.1; Mathlib `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.charFun_multivariateGaussian`.

**Checks.**

- One site, J = 0: `μ = N(0, 1/(2|b|)) = γ_b`.
- Two sites with `J_{xy} = J` of either sign: stable iff `|J| < 2|b|` (the determinant of `2|b| I − J⁰` is `4b² − J²`, negative for `J = −3|b|` although `J < 2|b|`), and then `⟨φ_xφ_y⟩ = J/(4b² − J²)`, `⟨φ_x²⟩ = 2|b|/(4b² − J²)`.
- d = 1: `G_μ(0) = (2π)⁻¹ ∫ dp/(2 − 2cos p + μ²) = 1/(μ√(4 + μ²))`, which diverges as μ → 0; for d = 2 the massless Dirichlet Green function at the origin diverges as R → ∞ as well, so the massless limit is restricted to d ≥ 3.

### Examples

The two-site and three-site Ising systems, the open Ising chain (where `⟨σ_0σ_x⟩ = tanh^{|x|} J` on any interval containing 0 and x), and the Gaussian lattice fields of 1.5 are the worked examples of this layer.

### Dependencies

Layer 0; Mathlib `MeasureTheory.Measure.pi`, `MeasureTheory.Measure.withDensity`, `hasDerivAt_integral_of_dominated_loc_of_deriv_le`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_tendsto_charFun`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_forall_integral_tendsto`, `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.charFun_multivariateGaussian`.

## Layer 2: The Griffiths–Simon class

### 2.1 Ising-block measures and the block-spin representation

Define, for N ∈ ℕ, a ferromagnetic coupling K on Fin N and weights q ∈ [0, ∞)^N, the Ising-block measure `ρ_{N,K,q}` as the law of `Σ_n q_n σ_n` under the Gibbs measure `μ_{Fin N, K, ρ_I}` (Aizenman–Duminil-Copin, Definition 2.1(1), lines 363–373, and Figure 1, lines 377–382). Aizenman–Duminil-Copin allow coefficients of any sign; the weights here are nonnegative, which is what their transfer arguments use (line 2031, where `Q_iQ_j⟨σ_{x,i}σ_{y,j}⟩/⟨τ_xτ_y⟩` is a probability) and without which the class contains measures violating the Lebowitz inequality (Checks below and 3.5).

The API consists of the following facts.

- `ρ_{N,K,q}` is even, has finite support contained in `[−Σ_n q_n, Σ_n q_n]`, and is admissible.
- For N = 0 or q = 0 it is δ₀; for N = 1, q = (1) it is ρ_I; for N = 1, q = (s) it is `½(δ_{−s} + δ_s)`.
- Products of blocks: the law of the sum of two independent Ising-block variables is an Ising-block measure (concatenate the blocks with no coupling between them).
- Block-spin representation: for a finite set V, a ferromagnetic coupling J on V and ρ = ρ_{N,K,q}, the Gibbs measure `μ_{V,J,ρ}` is the image of the Ising Gibbs measure `μ_{V×Fin N, J̃, ρ_I}` under σ ↦ (Σ_n q_n σ_{x,n})_x, where `J̃_{(x,n),(y,m)} = K_{nm}` for x = y and `J_{xy} q_n q_m` for x ≠ y; J̃ is ferromagnetic (Aizenman–Duminil-Copin, lines 392–410 and 2023–2027).

*Needs:* 0.2; 1.1; 1.2.

**Checks.**

- Griffiths' trick: N = 2, q = (½, ½), `K_{12} = (ln 2)/2` gives the uniform measure on {−1, 0, 1}, since the unnormalised weights of t = (σ₁ + σ₂)/2 are `¼e^{K}` at t = ±1 and `½e^{−K}` at t = 0 (Simon, Twelve Tales, lines 1011–1018).
- With mixed signs q = (1, −1) and a ferromagnetic coupling K ≥ 0 on the pair, the law of σ₁ − σ₂ is `(1 − ε)δ₀ + ½ε(δ₂ + δ₋₂)` with `ε = 1/(1 + e^{2K}) ∈ (0, ½]`; for K > (ln 2)/2, 0 < ε < 1/3 and `∫φ⁴ = 16ε > 48ε² = 3(∫φ²)²` (at K = (ln 3)/2, ε = ¼ and 4 > 3), violating the single-site Lebowitz inequality of 3.5. This is why the weights are nonnegative.
- A mixed-sign representation alone does not exclude a measure: at K = 0 the same construction gives ε = ½, the law `½δ₀ + ¼(δ₂ + δ₋₂)`, which is also the nonnegative-weight block q = (1, 1), K = 0, and so lies in the class of 2.2; for 0 ≤ K ≤ (ln 2)/2 one has ε ≥ 1/3, and the Lebowitz test excludes nothing.
- For V = {x, y}, `J_{xy} = J`, N = 1, q = (s): the block-spin representation gives `⟨φ_xφ_y⟩ = s² tanh(Js²)`, which is also the direct computation with single-site measure `½(δ_{−s} + δ_s)`.

### 2.2 The Griffiths–Simon class

Define the Griffiths–Simon class to consist of the single-site measures ρ that are weak limits of the nonnegative-weight Ising-block measures of 2.1 and satisfy `∫ exp(|φ|^α) dρ < ∞` for some α > 2. The growth condition is on ρ, not on the approximating sequence (Aizenman–Duminil-Copin, Definition 2.1(2) and (2.2), lines 374–386, with the nonnegative-weight convention of 2.1).

The API consists of the following facts.

- Every Ising-block measure belongs to the class (constant sequence); in particular ρ_I, δ₀ and the uniform measure on {−1, 0, 1} do.
- Every member is even, by weak closure of negation invariance, and admissible, since for each c the function `cφ² − |φ|^α` is bounded above when α > 2.
- The class is closed under φ ↦ sφ for s ∈ ℝ (use nonnegative weights multiplied by |s| and any smaller exponent between 2 and α), and under weak limits ρ_j → ρ with `sup_j ∫ exp(|φ|^α) dρ_j < ∞` for one α > 2 (weak diagonal approximation and lower semicontinuity).
- Finite-volume transfer: for every ρ in the class, finite V and ferromagnetic J, there exists a sequence of Ising-block measures η_k converging weakly to ρ such that `μ_{V,J,η_k} → μ_{V,J,ρ}` weakly and `⟨F⟩_{V,J,η_k} → ⟨F⟩_{V,J,ρ}` for every continuous polynomially bounded F. One sequence must serve any prescribed finite collection of such systems simultaneously, including a system on V and its restrictions to subregions. This is a theorem at the full limit-growth generality, including the choice and tail control of the approximants; it does not follow merely from weak convergence or assume a uniform superquadratic bound on an arbitrary given approximation (Aizenman–Duminil-Copin, lines 1982–1985 and 2019–2022).

*Needs:* 0.1; 1.1; 1.2; 1.4 (continuity when its uniform quadratic-moment hypotheses have been established); 2.1.

**Checks.**

- The standard normal law is a weak limit of Ising-block measures (independent spins, K = 0, q_n = N^{−1/2}, by the central limit theorem) but is not in the class: `∫ exp(|φ|^α) dN(0,1) = ∞` for α > 2. The growth condition is what excludes it.
- `(1 − ε)δ₀ + ½ε(δ₁ + δ₋₁)` with 0 < ε < 1/3 is even and admissible but is not in the class, because it violates the single-site Lebowitz inequality `∫φ⁴ ≤ 3(∫φ²)²`, which every member satisfies by 3.5: both moments equal ε, and `ε > 3ε²` exactly when 0 < ε < 1/3 (at ε = ¼, ¼ > 3/16). The endpoints are not excluded by this test: at ε = 0 the measure is δ₀, a member, and both sides are 0; at ε = 1/3 both sides equal 1/3, and the test decides nothing.
- Every φ⁴ measure is in the class (2.3), while the Gaussian measures γ_b are not.
- Independent blocks `X_N = Σ_{i=1}^N σ_i/(√N log N)`, N ≥ 3, have variance `(log N)⁻² → 0`, hence converge to δ₀, whose exponential α-moment is 1. For every α > 2 their exponential α-moments are at least `2^{1−N} exp(N^{α/2}/(log N)^α) → ∞`. The constant δ₀ block approximation instead has moment 1 at every stage: transfer must allow a suitable choice of approximants.
- Simultaneous transfer on one and two sites gives the one-site second moment s² and `⟨φ_xφ_y⟩ = s² tanh(Js²)` for `ρ = ½(δ_{−s} + δ_s)`; at s = 0 it is 0 and the zeroth moment is 1. For the Curie–Weiss approximation of 2.3, the established uniform tails let 1.4 supply convergence of every finite-volume polynomial moment.

### 2.3 φ⁴ measures as limits of Ising blocks

Prove that for λ > 0 and b ∈ ℝ the φ⁴ measure `ρ_{λ,b}` belongs to the Griffiths–Simon class. Explicitly, with `c = (12λ)^{−1/4}` and `g_N = 1 + 2bc²N^{−1/2}`, let ρ_N be the law of `cN^{−3/4} Σ_{n≤N} σ_n` under the Ising Gibbs measure on Fin N with coupling `K_{nm} = g_N/N` for n ≠ m (the Curie–Weiss model); for N large enough that g_N > 0, ρ_N is an Ising-block measure, ρ_N converges weakly to `ρ_{λ,b}`, and `sup_N ∫ exp(|φ|^α) dρ_N < ∞` for every α ∈ (2, 4) (Griffiths–Simon 1973; Aizenman–Duminil-Copin, lines 392–406; Simon, Twelve Tales, lines 1019–1030). A proof route: the law of `S = Σ_n σ_n` is proportional to `C(N, (N+S)/2) 2^{−N} exp(g_N S²/(2N))`; Stirling's formula and the expansion of the Cramér rate function of a fair ±1 coin, `I(m) = ½(1 + m)log(1 + m) + ½(1 − m)log(1 − m) = Σ_{k≥1} m^{2k}/(2k(2k − 1))`, give, at `m = S/N = φN^{−1/4}/c`, the exponent `bφ² − λφ⁴ + o(1)` locally uniformly in φ (local limit theorem), and the inequality `I(m) ≥ m²/2 + m⁴/12` with the bound `C(N, k)2^{−N} ≤ C N^{−1/2} e^{−N I(m)}` for |m| ≤ ½ gives the uniform quartic tail `ρ_N(|φ| ≥ t) ≤ C e^{|b|t² − λt⁴}`, while |m| > ½ contributes `O(e^{−N/192 + O(√N)})`.

*Needs:* 0.2; 2.1; 2.2.

**Checks.**

- The Taylor coefficients of I are positive: the coefficient of m² is ½ and that of m⁴ is 1/12, which match the quartic coefficient `λ = 1/(12c⁴)` and give the one-sided bound used for the tails.
- The CLT scaling `N^{−1/2}` with a fixed coupling `g < 1` gives the Gaussian limit `N(0, 1/(1 − g))`, which is not in the class; both the scaling `N^{−3/4}` and `g_N → 1` are needed.
- For b > 0 the coupling `g_N > 1` is supercritical for the Curie–Weiss model and the limit is the double well `ρ_{λ,b}`; for b < 0, `g_N < 1` and the condition `g_N > 0` holds for `N > 4b²c⁴`.

### Examples

ρ_I, δ₀ (the case ε = 0 below), the uniform measure on {−1, 0, 1}, `½(δ_{−s} + δ_s)`, the law `½δ₀ + ¼(δ₂ + δ₋₂)` (the mixed-sign block of 2.1 at K = 0, equal to a nonnegative-weight block) and every φ⁴ measure are in the Griffiths–Simon class; γ_b, `(1 − ε)δ₀ + ½ε(δ₁ + δ₋₁)` with 0 < ε < 1/3, and the law of σ₁ − σ₂ under a pair coupling K > (ln 2)/2 (the mixed-sign block q = (1, −1) of 2.1) are not.

### Dependencies

Layers 0 and 1. No other roadmap; Griffiths–Simon 1973 is cited by locator.

## Layer 3: Correlation inequalities in finite volume

### 3.1 Griffiths' first and second inequalities

Prove that for a finite set V, a ferromagnetic coupling J and an even admissible ρ, every multi-index A satisfies `⟨φ_A⟩_{V,J,ρ} ≥ 0` (Griffiths I) and every pair of multi-indices satisfies `⟨φ_A φ_B⟩ ≥ ⟨φ_A⟩⟨φ_B⟩` (Griffiths II) (Peled–Spinka, Theorems 2.1 and 2.3, lines 334 and 515, for Ising spins; Sokal (2.19)–(2.20), p. 327, lines 414–415, for φ⁴; Simon, Twelve Tales, lines 977–984; Glimm–Jaffe, Chapter 4; Friedli–Velenik, Section 3.6). A proof route: for Griffiths I, expand `e^{−H}` as a power series with nonnegative coefficients in the monomials `φ_xφ_y` and use that every moment of an even measure is nonnegative; for Griffiths II, Ginibre's duplication: with an independent copy φ′, put `s = φ + φ′` and `t = φ − φ′`; then `H(φ) + H(φ′)` is `−¼Σ_{x≠y} J_{xy}(s_xs_y + t_xt_y)`, `φ_A − φ′_A` and `φ_B − φ′_B` are polynomials in (s, t) with nonnegative coefficients, and Ginibre's lemma gives the nonnegativity of every monomial.

The API consists of the following facts.

- Ginibre's lemma: for an even admissible ρ and m, n ∈ ℕ, `∫∫ (x + y)^m (x − y)^n dρ(x) dρ(y) ≥ 0`. (For n odd the integrand is odd under x ↔ y; for m + n odd it is odd under (x, y) ↦ (−x, −y); otherwise it is nonnegative.) Its multivariate form for products over sites follows by factorisation (Peled–Spinka, Lemma 2.4, line 535).
- The two inequalities hold for every multi-index, including repeated sites.

*Needs:* 0.1; 1.1; 1.2.

**Checks.**

- Two sites, Ising: `⟨σ_xσ_y⟩ = tanh J ≥ 0` and `⟨σ_xσ_y ; σ_xσ_y⟩ = 1 − tanh² J ≥ 0`.
- Evenness is needed: for `ρ = (2δ₋₁ + δ₁)/3` and J = 0, `⟨φ_x⟩ = −1/3 < 0`.
- Ferromagnetism is needed: two Ising sites with J < 0 give `⟨σ_xσ_y⟩ = tanh J < 0`.

### 3.2 Monotonicity in the couplings and the volume

Prove that for an even admissible ρ and multi-indices A: if J ≤ J′ are ferromagnetic couplings on V then `⟨φ_A⟩_{V,J,ρ} ≤ ⟨φ_A⟩_{V,J′,ρ}`; and if V ⊆ V′ are finite, J′ is a ferromagnetic coupling on V′ restricting to J on V, and A is supported in V, then `⟨φ_A⟩_{V,J,ρ} ≤ ⟨φ_A⟩_{V′,J′,ρ}` (Peled–Spinka, lines 519–532; Sokal, lines 400–405). A proof route: the derivative formula of 1.3 and Griffiths II along the segment from J to J′; for the volume, the system on V′ with the couplings between V and V′ ∖ V switched off decouples (1.1).

*Needs:* 1.1; 1.3; 3.1.

**Checks.**

- On the Ising chain 0 − 1 − 2, `⟨σ_0σ_2⟩ = tanh J_{01} tanh J_{12}` is non-decreasing in both couplings.
- For V = {0, 2} with no coupling, `⟨σ_0σ_2⟩ = 0 ≤ tanh² J`, the value on V′ = {0, 1, 2}.
- Without evenness monotonicity in the volume fails for odd moments: for `ρ = (2δ₋₁ + δ₁)/3`, adding a ferromagnetically coupled site makes `⟨φ_0⟩` more negative.

### 3.3 The FKG inequality

Prove that for a finite set V, a ferromagnetic coupling J, an admissible ρ (not necessarily even) and bounded measurable F, G : ℝ^V → ℝ non-decreasing in each coordinate, `⟨FG⟩_{V,J,ρ} ≥ ⟨F⟩⟨G⟩`; the same holds for measurable non-decreasing F, G bounded by a polynomial, in particular `⟨φ_x φ_y⟩ ≥ ⟨φ_x⟩⟨φ_y⟩` for all x, y ∈ V (Sokal (2.25), line 423; Glimm–Jaffe, Chapter 4; Friedli–Velenik, Section 3.6). A proof route: `e^{−H}` is log-supermodular on ℝ^V because `∂²(−H)/∂φ_x∂φ_y = J_{xy} ≥ 0`; restrict ρ to finite sets of values (finite chains), apply Mathlib's `fkg` on the finite distributive lattice of configurations, and pass to the limit; alternatively, induct on |V| with Chebyshev's inequality on ℝ and Holley's monotone coupling.

*Needs:* 0.1; 1.1; 1.2; Mathlib `fkg`.

**Checks.**

- For the lattice gas `ρ = (δ₀ + δ₁)/2` on two sites, `⟨n_xn_y⟩ − ⟨n_x⟩⟨n_y⟩ = (e^J − 1)/(3 + e^J)²`, nonnegative iff J ≥ 0.
- For F non-decreasing and G non-increasing the inequality reverses: two Ising sites, F = σ_x, G = −σ_y give `−tanh J ≤ 0`.
- For J = 0 the inequality is Harris's inequality for product measures; on one site with F = G = φ it is `Var(φ) ≥ 0`.

### 3.4 Random currents and the switching lemma

Define, for a finite set V and a ferromagnetic coupling J, a current as a function n from unordered pairs of distinct sites to ℕ, its sources `∂n = {x : Σ_y n_{xy} is odd}`, its weight `w_J(n) = Π_{{x,y}} J_{xy}^{n_{xy}}/n_{xy}!`, and, for B ⊆ V, the event `𝓕_B` of currents n admitting a current m ≤ n with ∂m = B (Aizenman–Duminil-Copin, Definitions 3.1–3.2 and (3.2), lines 421–471). Prove the random current representation: for every A ⊆ V, `Z_{V,J}(ρ_I) ⟨σ_A⟩_{V,J,ρ_I} = Σ_{∂n=A} w_J(n)`, in particular `Z = Σ_{∂n=∅} w_J(n)` ((3.3)–(3.5), lines 429–448). Prove the switching lemma: for A, B ⊆ V and every F from currents to `[0, ∞]`, `Σ_{∂n₁=A, ∂n₂=B} F(n₁ + n₂) w(n₁) w(n₂) = Σ_{∂n₁=A∆B, ∂n₂=∅} F(n₁ + n₂) w(n₁) w(n₂) 1[n₁ + n₂ ∈ 𝓕_B]` (Lemma 3.3, line 474), and, when `Z_{A∆B} > 0`, its probability corollary `⟨σ_A⟩⟨σ_B⟩ = ⟨σ_{A∆B}⟩ · P^{A∆B,∅}[n₁ + n₂ ∈ 𝓕_B]` in finite volume, where `Z_D = Σ_{∂n=D} w_J(n)` and the law `P^D(n) = 1[∂n=D] w_J(n)/Z_D` is defined as a probability measure only for `Z_D > 0`; P^{A∆B,∅} is the product `P^{A∆B} ⊗ P^∅`. The empty-source normalizer is at least 1 from the zero current ((3.7)–(3.9), lines 500–507). The unnormalised switching identity holds without positivity of any source normalizer.

The API consists of the following facts.

- The current weights are summable: `Σ_n w_J(n) = Π_{{x,y}} e^{J_{xy}}`.
- Griffiths I for Ising spins and arbitrary sets A is immediate from the representation.
- `Z_D > 0` iff D has even cardinality in each connected component of the graph with edges `J_{xy} > 0`: necessity follows by source parity in each component, and sufficiency by pairing its sources along positive-edge paths.
- Currents with ∂n = A exist only if |A| is even; a current with sources A connects each source to another source by a path of edges with n > 0.

*Needs:* 0.2; 1.1.

**Checks.**

- Two sites: currents are n ∈ ℕ on the single pair, `Σ_{n even} Jⁿ/n! = cosh J = Z` and `Σ_{n odd} Jⁿ/n! = sinh J`, so `⟨σ_xσ_y⟩ = tanh J`.
- Switching lemma on two sites with A = B = {x, y} and F ≡ 1: the left side is `sinh² J`; the right side sums over pairs of even currents with n₁ + n₂ ≥ 1 (so that a unit subcurrent from x to y exists), which is `cosh² J − 1 = sinh² J`.
- Two sites with J = 0 and D = {x, y}: `Z_D = sinh 0 = 0`, so no source-conditioned probability law exists, while switching with A = D, B = ∅ remains `0 = 0`. At J = 1, `Z_D = sinh 1 > 0` and the normalised total mass is 1. A singleton source has normalizer 0 for every J; even total parity also fails for two singleton sources in different positive-coupling components.
- Omitting the factorials in the weight gives `Σ_n Jⁿ = 1/(1 − J)`, which diverges for J ≥ 1 and does not reproduce cosh J.

### 3.5 Lebowitz, Gaussian and Simon–Lieb inequalities

Prove, for a finite set V and a ferromagnetic coupling J, with Ising spins: (i) for n ≥ 1 and distinct x₁, …, x_{2n} ∈ V, `⟨σ_{x₁} ⋯ σ_{x_{2n}}⟩ ≤ Σ_{j=2}^{2n} ⟨σ_{x₁}σ_{x_j}⟩ ⟨Π_{i≠1,j} σ_{x_i}⟩`; (ii) for arbitrary x₁, …, x_{2n} ∈ V, repetitions allowed, the Gaussian inequality `⟨σ_{x₁} ⋯ σ_{x_{2n}}⟩ ≤ Σ_π Π_{j=1}^n ⟨σ_{x_{π(2j−1)}} σ_{x_{π(2j)}}⟩` over pairings π, whose case n = 2 is the Lebowitz inequality `U₄(x, y, z, t) ≤ 0` for the Ursell function (1.21); (iii) the Simon–Lieb inequality: for 0 ∈ Λ ⊆ V and y ∈ V ∖ Λ, `⟨σ_0σ_y⟩_V ≤ Σ_{u∈Λ, v∈V∖Λ} ⟨σ_0σ_u⟩_Λ J_{uv} ⟨σ_vσ_y⟩_V` (Aizenman–Duminil-Copin (3.11), line 520, Lemma 5.7, line 1314, and footnote 5, line 1342; Sokal (2.23)–(2.24), lines 419–422; Fröhlich, line 109; Aizenman 1982; Fernández–Fröhlich–Sokal, Part I). Prove the same three inequalities, with φ in place of σ, for every single-site measure ρ in the Griffiths–Simon class (Aizenman–Duminil-Copin, lines 1996–2002). Prove the corollaries: for ρ in the class and t ∈ [0, ∞)^V, `⟨(Σ_x t_xφ_x)^{2n}⟩ ≤ (2n − 1)!! ⟨(Σ_x t_xφ_x)²⟩ⁿ`, and the single-site inequality `∫ φ^{2n} dρ ≤ (2n − 1)!! (∫ φ² dρ)ⁿ`.

A proof route: use the unnormalised switching identity throughout (or use source-conditioned laws only after verifying their positive normalizers, with zero-normalizer cases treated by the unnormalised identity). For (i), apply the switching lemma with A′ = {x₁, x_j}, B′ the remaining sources and the indicator of `𝓕_{A′}`, and use that in a current with sources {x₁, …, x_{2n}} the source x₁ is joined by a path to some other source x_j; (ii) follows from (i) by induction on n with Griffiths I, reducing repeated sites by σ_x² = 1; (iii) follows from the switching lemma by conditioning a current with sources {0, y} on the cluster of 0 in its restriction to the pairs inside Λ, which a path to y must leave through some pair {u, v} with u ∈ Λ and v ∉ Λ (Aizenman–Duminil-Copin, footnote 5). For the Griffiths–Simon class, an Ising-block single-site measure with nonnegative weights q reduces each inequality to the Ising inequality on V × Fin N through 2.1, by expanding φ_x = Σ_n q_n σ_{x,n} with nonnegative coefficients; the inequalities pass to the full weak-limit class by the finite-volume moment-transfer theorem of 2.2.

*Needs:* 1.1; 1.4; 2.1; 2.2; 3.1; 3.4.

**Checks.**

- Single-site checks of `∫φ⁴ ≤ 3(∫φ²)²`: ρ_I gives 1 ≤ 3; `ρ_{λ,0}` gives `1/(4λ) ≤ 3Γ(3/4)²/(Γ(1/4)²λ) ≈ 0.3427/λ`; the Gaussian law gives equality (by `TauCeti.Probability.centralMoment_id_two_mul_gaussianReal`), the boundary case of the Gaussian inequality.
- The class hypothesis cannot be weakened to evenness and admissibility: `(1 − ε)δ₀ + ½ε(δ₁ + δ₋₁)` with ε = ¼ gives `∫φ⁴ = ¼ > 3/16 = 3(∫φ²)²`.
- Simon–Lieb on the Ising chain 0 − 1 − 2 with Λ = {0}: `⟨σ_0σ_2⟩ = tanh² J ≤ J tanh J = ⟨σ_0σ_0⟩_{{0}} J_{01} ⟨σ_1σ_2⟩`, true since tanh J ≤ J.
- At n = 0 the pairing and Gaussian moment inequalities both give `1 = 1`; the recursion (i), which selects x₁, is stated only for n ≥ 1.
- With repeated sites, two Ising sites and (x, x, y, y): `⟨σ_x²σ_y²⟩ = 1 ≤ 1 + 2tanh² J`.

### 3.6 Reflection monotonicity

Prove the Messager–Miracle-Solé inequality: let V be finite, ρ even and admissible, J a ferromagnetic coupling on V, and R an involution of V with fixed set V₀ and V ∖ V₀ = V₊ ⊔ V₋, R(V₊) = V₋, such that `J_{Rx,Ry} = J_{xy}` for all x, y and `J_{xy} ≥ J_{x,Ry}` for distinct x, y ∈ V₊. Then for multi-indices A and B supported in V₊ ∪ V₀, `⟨φ_A φ_B⟩ ≥ ⟨φ_A φ_{R(B)}⟩`, where R(B) = B ∘ R (Aizenman–Duminil-Copin (5.2), lines 1023–1032; Sokal (2.29)–(2.30), lines 436–444, and the Remark at lines 455–466). A proof route: for x ∈ V₊ put `s_x = φ_x + φ_{Rx}` and `t_x = φ_x − φ_{Rx}`; the pair law of (s_x, t_x) under ρ ⊗ ρ, tilted by the crossing term `J_{x,Rx}φ_xφ_{Rx} = ¼J_{x,Rx}(s_x² − t_x²)`, is invariant under s ↦ −s and under t ↦ −t separately (by evenness of ρ and the symmetry of the product); the remaining Hamiltonian is a quadratic form in (s, t, φ|V₀) with coefficients `½(J_{xy} + J_{x,Ry})` on `s_x s_y`, `½(J_{xy} − J_{x,Ry})` on `t_x t_y` and `J_{xz}` on `s_x φ_z`, all nonnegative; and `φ_A(φ_B − φ_{R(B)})` is a polynomial in (s, t, φ|V₀) with nonnegative coefficients, so expanding the exponential gives a sum of nonnegative moments.

Prove that the hypotheses hold for the nearest-neighbour coupling on every finite R-invariant V ⊂ ℤ^d when R is a reflection of ℤ^d in a coordinate hyperplane `x_i = a` with a ∈ ½ℤ, or in a diagonal hyperplane `x_i ± x_j = a` with a ∈ ℤ.

*Needs:* 0.1; 1.1; 1.2; 3.1 (the expansion technique).

**Checks.**

- Open Ising chain {0, 1, 2, 3} with nearest-neighbour coupling J and R(x) = 3 − x: with A = {0}, `⟨σ_0σ_1⟩ = tanh J ≥ tanh² J = ⟨σ_0σ_2⟩` and `⟨σ_0σ_0⟩ = 1 ≥ tanh³ J = ⟨σ_0σ_3⟩`.
- The inequality `J_{xy} ≥ J_{x,Ry}` is needed: on {0, 1, 2, 3} with R(x) = 3 − x and only `J_{02} = J_{13} = K > 0`, `⟨σ_0σ_1⟩ = 0 < tanh K = ⟨σ_0σ_2⟩`.
- For a site reflection (V = {−1, 0, 1}, R(x) = −x, V₀ = {0}), A = B = {1}: `1 = ⟨σ_1²⟩ ≥ ⟨σ_1σ_{−1}⟩ = tanh² J`.

### 3.7 Uniform moment bounds

Prove the integration-by-parts identity for φ⁴ measures: for λ > 0, b ∈ ℝ, a finite set V, any coupling J and x ∈ V, `4λ⟨φ_x⁴⟩ = 1 + 2b⟨φ_x²⟩ + Σ_{y≠x} J_{xy}⟨φ_xφ_y⟩` under `μ_{V,J,ρ_{λ,b}}`, and more generally `⟨∂_xF⟩ = ⟨F · (4λφ_x³ − 2bφ_x − Σ_{y≠x}J_{xy}φ_y)⟩` for every continuously differentiable F : ℝ^V → ℝ with `|F(φ)| + |∂_xF(φ)| ≤ C(1 + Σ_y φ_y²)^k` for some C and k; the diagonal entry `J_{xx}` enters neither side (Sokal, Section 3.1, lines 846–853). Prove the uniform bound `max_{x∈V} ⟨φ_x²⟩ ≤ M(λ, b, ‖J‖) = [(2b₊ + ‖J‖) + √((2b₊ + ‖J‖)² + 16λ)]/(8λ)`, independent of V, from the identity, Jensen's inequality `⟨φ_x⁴⟩ ≥ ⟨φ_x²⟩²` and the Cauchy–Schwarz inequality, evaluated at a site where `⟨φ_x²⟩` is maximal. Prove Newman's exponential bound: for ρ in the Griffiths–Simon class, a ferromagnetic J and t ∈ [0, ∞)^V, `⟨exp(Σ_x t_xφ_x)⟩ ≤ exp(½⟨(Σ_x t_xφ_x)²⟩)`, hence `⟨e^{a|φ_x|}⟩ ≤ 2e^{a²⟨φ_x²⟩/2}` for real a (Sokal, item (j), lines 434–435), by summing the Gaussian inequality of 3.5 against `1/(2n)!`.

*Needs:* 0.2; 1.1; 1.2; 2.3; 3.5.

**Checks.**

- One site, J = 0, b = 0: the identity gives `⟨φ⁴⟩ = 1/(4λ)`, matching the Gamma-function value of 0.2.
- The diagonal is excluded from the general identity: one site, λ = 1, b = 0, `J_{xx} = 1` and F = φ give `⟨∂F⟩ = 1` and, since the sum over y ≠ x is empty, right side `4⟨φ⁴⟩ = 1`; a sum over all y would give `4⟨φ⁴⟩ − ⟨φ²⟩ = 1 − Γ(3/4)/Γ(1/4) ≈ 0.662`.
- The growth bound on `∂_xF` is needed: one site, λ = 1, b = 0, J = 0 and `F(φ) = φ + sin(exp(φ⁴))`, which is smooth and bounded by 1 + |φ|. The right side is `4⟨φ⁴⟩ + 4⟨φ³ sin(exp(φ⁴))⟩ = 1 + 0` (odd integrand), but `|F′|` times the density has infinite integral (substituting `t = exp(φ⁴)` turns the oscillating part into `∫_1^∞ |cos t|/t dt = ∞`), so `⟨∂F⟩` is not a Lebesgue expectation.
- The bound gives `M(λ, 0, 0) = 1/(2√λ)`, above the exact `Γ(3/4)/(Γ(1/4)√λ) ≈ 0.338/√λ`.
- For ρ_I, Newman's bound reads `cosh a ≤ e^{a²/2}`, true. For the non-member `(1 − ε)δ₀ + ½ε(δ₁ + δ₋₁)` with ε = ¼ it fails for every small a > 0, because the coefficients of a⁴ are ε/24 on the left and ε²/8 on the right and ε/24 > ε²/8 for 0 < ε < 1/3; numerically, at a = 2 the left side is 1.691 and the right side `e^{1/2}` is 1.649.

### Examples

The two-site and chain Ising computations are the running examples; the Ising chain realises equality cases (`⟨σ_0σ_2⟩ = ⟨σ_0σ_1⟩⟨σ_1σ_2⟩` in Griffiths II), and the single-site Lebowitz test separates the Griffiths–Simon class from the even admissible measures.

### Dependencies

Layers 0–2; Mathlib `fkg`; `TauCeti.Probability.centralMoment_id_two_mul_gaussianReal` in a Check.

## Layer 4: The free-boundary infinite-volume state

Throughout, J is a translation-invariant finite-range ferromagnetic coupling on ℤ^d (`J_{xy} = J(y − x)` with J(z) = J(−z) ≥ 0 finitely supported), restricted to finite subsets as needed, and ρ is even and admissible.

### 4.1 Monotone limits of correlation functions

Define, for a multi-index A on ℤ^d with finite support, the free-boundary correlation `⟨φ_A⟩_{J,ρ} = lim_{R→∞} ⟨φ_A⟩_{V_R,J,ρ} ∈ [0, ∞]`, the limit of a non-decreasing sequence by 3.2 (Sokal, lines 400–411; Peled–Spinka, lines 527–532; Aizenman–Duminil-Copin, lines 231–233).

The API consists of the following facts.

- Exhaustion independence: for every increasing sequence of finite sets W_n with union ℤ^d, `⟨φ_A⟩_{W_n,J,ρ} → ⟨φ_A⟩_{J,ρ}`, because each W_n lies in some V_R and each V_R in some W_n (3.2).
- Symmetries: `⟨φ_{A(·−a)}⟩_{J,ρ} = ⟨φ_A⟩_{J,ρ}` for a ∈ ℤ^d; invariance under every g ∈ W_d with J ∘ g = J; vanishing for |A| odd.
- Griffiths I and II and, for ρ in the Griffiths–Simon class, the Lebowitz, Gaussian and Simon–Lieb inequalities hold for the limits (with the Simon–Lieb right side taken in the finite region Λ).
- Monotonicity in J: for ferromagnetic J ≤ J′ (both translation invariant and finite range), `⟨φ_A⟩_{J,ρ} ≤ ⟨φ_A⟩_{J′,ρ}`.
- Finiteness: if `sup_R max_{x∈V_R} ⟨φ_x^{2k}⟩_{V_R,J,ρ} < ∞` for every k, all limits are finite (Hölder).

*Needs:* 1.2; 3.1; 3.2; 3.5.

**Checks.**

- d = 1, nearest-neighbour Ising: `⟨σ_0σ_x⟩_{V_R} = tanh^{|x|} J` for every R ≥ |x| (open chain), so `⟨σ_0σ_x⟩_{J,ρ_I} = tanh^{|x|} J`.
- The exhaustion W_n = {−n, …, 2n} of ℤ gives the same limits as the boxes.
- For ρ = δ₀ correlations of positive total degree vanish and the zeroth correlation is 1 (in particular A = 2δ_x gives 0 and A = 0 gives 1), and for J = 0 they are products of single-site moments.

### 4.2 The infinite-volume law

Prove that if (J, ρ) satisfies the uniform exponential moment condition `sup_R sup_{x∈V_R} ⟨e^{a|φ_x|}⟩_{V_R,J,ρ} < ∞` for some a > 0, then for every finite F ⊂ ℤ^d the laws of (φ_x)_{x∈F} under `μ_{V_R,J,ρ}` converge weakly as R → ∞; that there is a unique probability measure `μ_{J,ρ}` on ℝ^{ℤ^d} with the product σ-algebra having these limits as finite-dimensional marginals; that its moments are the correlations of 4.1; that it is invariant under translations, under the elements of W_d preserving J and under φ ↦ −φ; and that it does not depend on the exhaustion (Sokal (a)–(b), lines 405–409; Duminil-Copin, Corollary 1.9, line 549, for the Ising model). Prove that the uniform exponential moment condition holds for every coupling when ρ has bounded support (in particular for ρ_I and every Ising-block measure) and when ρ is a φ⁴ measure, and that it holds for ρ in the Griffiths–Simon class whenever `sup_R sup_x ⟨φ_x²⟩_{V_R} < ∞` (3.7). A proof route: tightness from the uniform second moments (Prokhorov); every subsequential limit has the limiting moments by uniform integrability; one-dimensional projections with nonnegative and arbitrary coefficients have exponential moments by Hölder, so they are determined by their moments (`TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`), and the marginal law by Cramér–Wold; the projective family on ℤ^d is assembled by `TauCeti.Measure.exists_isProjectiveLimit_of_countable`.

The API consists of the following facts.

- The finite-dimensional marginals of `μ_{J,ρ}` are the weak limits of the finite-volume marginals, and `∫ φ_A dμ_{J,ρ} = ⟨φ_A⟩_{J,ρ}` for every multi-index A.
- `μ_{J,ρ}` is invariant under the translations of ℤ^d, under the elements of W_d preserving J and under φ ↦ −φ.
- Griffiths I and II and the FKG inequality hold for `μ_{J,ρ}` (for continuous, polynomially bounded, coordinatewise non-decreasing functions of finitely many coordinates), and for ρ in the Griffiths–Simon class also the Lebowitz and Gaussian inequalities and Newman's exponential bound.

*Needs:* 3.3 (finite-volume FKG and uniform-integrability passage for continuous polynomially bounded cylinder functions); 3.7; 4.1; Mathlib `isCompact_closure_of_isTightMeasureSet`, `MeasureTheory.Measure.ext_of_charFun`, `ProbabilityTheory.tendstoInDistribution_iff_tendstoInDistribution_inner`, `MeasureTheory.IsProjectiveMeasureFamily`; Tau Ceti `TauCeti.Measure.exists_isProjectiveLimit_of_countable`, `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`.

**Checks.**

- d = 1, nearest-neighbour Ising: `μ_{J,ρ_I}` is the law of the stationary two-state Markov chain on {±1}^ℤ with `P(σ_{x+1} = σ_x) = (1 + tanh J)/2`.
- For J = 0, `μ_{0,ρ}` is `MeasureTheory.Measure.infinitePi` of ρ. The inherited FKG inequality with F = G = φ on one Ising coordinate is `1 ≥ 0`; with F = φ_x, G = φ_y at independent distinct coordinates it is `0 ≥ 0`.
- The exponential moment condition is what identifies limits: without it a sequence of laws with converging moments may have two different limit points with the same moments (the log-normal law and its Stieltjes perturbations have equal moments), so moment convergence alone does not give weak convergence.

### 4.3 Two-point function, susceptibility and critical point

Define the two-point function `S_{ρ,J}(x) = ⟨φ_0φ_x⟩_{J,ρ} ∈ [0, ∞]`, the susceptibility `χ(ρ, J) = Σ_{x∈ℤ^d} S_{ρ,J}(x) ∈ [0, ∞]`, and the critical point `β_c(ρ, J) = sup{β ≥ 0 : χ(ρ, βJ) < ∞} ∈ [0, ∞]`; the sub-critical regime is χ(ρ, βJ) < ∞ (Aizenman–Duminil-Copin (5.1), lines 1017–1020; Sokal, line 470, and Proposition 2.1, line 574).

The API consists of the following facts.

- S ≥ 0, S(−x) = S(x), S(x) ≤ S(0) = ⟨φ_0²⟩_{J,ρ} when finite (Cauchy–Schwarz), and S is positive definite: `Σ_{x,y} c_xc_y S(x − y) ≥ 0` for finitely supported real c.
- S and χ are non-decreasing in β (4.1), so `{β ≥ 0 : χ(ρ, βJ) < ∞}` is an interval containing 0, and `χ(ρ, 0) = ∫φ² dρ`.
- For ρ in the Griffiths–Simon class and Λ ∋ 0 finite, the Simon–Lieb inequality gives `S(y) ≤ Σ_{u∈Λ, v∉Λ} ⟨φ_0φ_u⟩_Λ J_{uv} S(y − v)` for y ∉ Λ.
- The truncated susceptibility `χ_L = Σ_{x∈Λ_L} S(x)` (Aizenman–Duminil-Copin (5.23)) is finite whenever the moments are.

*Needs:* 3.5; 4.1.

**Checks.**

- d = 1, nearest-neighbour Ising with t = tanh J: `χ = (1 + t)/(1 − t) < ∞` for all J, so `β_c = ∞`.
- For ρ = δ₀, S ≡ 0, χ = 0 and β_c = ∞; for J = 0, χ = ∫φ²dρ.
- Ising on ℤ^d with nearest-neighbour coupling J, 0 ≤ 2dJ < 1: Simon–Lieb with Λ = {0}, applied in the boxes V_R to `max_v Σ_{y∈V_R} ⟨σ_vσ_y⟩_{V_R}`, gives `χ(ρ_I, J) ≤ 1/(1 − 2dJ)`; at d = 1, J = ¼ this reads `e^{1/2} ≈ 1.649 ≤ 2`. For J > 0, applying the estimate to βJ with 2dβJ < 1 gives `β_c(ρ_I, J) ≥ 1/(2dJ)`; for J = 0, β_c = ∞.
- The susceptibility estimate is not asserted outside 2dJ < 1: at d = 1, J = 1, `χ(ρ_I, 1) = e² ≈ 7.389` while `1/(1 − 2dJ) = −1`, and at J = ½ the denominator vanishes; the bound `β_c ≥ 1/(2dJ)` still holds there.

### 4.4 Axis monotonicity of the two-point function

Prove, for the nearest-neighbour coupling of strength J ≥ 0 on ℤ^d and even admissible ρ, the infinite-volume reflection inequality `⟨φ_Aφ_B⟩_{J,ρ} ≥ ⟨φ_Aφ_{R(B)}⟩_{J,ρ}` for every coordinate or diagonal reflection R of 3.6 and multi-indices A, B on the closed side of its hyperplane, and its consequences (Aizenman–Duminil-Copin, Proposition 5.1, line 1040, (5.3)–(5.4), lines 1044–1049): S(n e_i) is non-increasing in n ≥ 0 for each axis; `S((‖x‖∞, 0⊥)) ≥ S(x) ≥ S((‖x‖₁, 0⊥))`; and S(x) ≥ S(y) whenever `‖y‖∞ ≥ d‖x‖∞`. A proof route: exhaust ℤ^d by finite R-invariant sets (W ∪ R(W) for boxes W), apply 3.6 in finite volume and use exhaustion independence (4.1); the axis statements follow by composing reflections.

*Needs:* 3.6; 4.1; 4.3.

**Checks.**

- d = 1, Ising: S(n) = tanh^n J is non-increasing in n.
- d = 2, Ising, to leading order in t = tanh J: `S((1,0)) ≈ t`, `S((1,1)) ≈ 2t²` and `S((2,0)) ≈ t²`, consistent with `S((1,0)) ≥ S((1,1)) ≥ S((2,0))` for small t.
- J = 0: S is `⟨φ²⟩` at 0 and 0 elsewhere, trivially monotone; a next-nearest-neighbour coupling stronger across the hyperplane than within it violates the finite-volume hypothesis (3.6, Checks), so the restriction to nearest-neighbour couplings is used.

### Examples

The one-dimensional Ising chain is the complete worked example of this layer: correlations `tanh^{|x|} J`, the Markov-chain law, susceptibility `(1 + t)/(1 − t)` and `β_c = ∞`.

### Dependencies

Layers 1 and 3 (and Layer 2 through 3.5 and 3.7); Mathlib `isCompact_closure_of_isTightMeasureSet`, `MeasureTheory.Measure.ext_of_charFun`, `ProbabilityTheory.tendstoInDistribution_iff_tendstoInDistribution_inner`, `MeasureTheory.IsProjectiveMeasureFamily`, `MeasureTheory.Measure.infinitePi`; Tau Ceti `TauCeti.Measure.exists_isProjectiveLimit_of_countable`, `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`.

## Layer 5: Reflection positivity and the infrared bound on the torus

Throughout, ρ is admissible, J > 0, L ≥ 1, and `μ^{per}_{L,J,ρ}` is the Gibbs measure of 1.1 on the torus T_L with the periodic nearest-neighbour coupling of the Conventions.

### 5.1 Periodic measures on the discrete torus

Define the periodic coupling `J^{per}_{xy} = J · #{(j, ±) : y = x ± e_j}` on T_L, the periodic measure `μ^{per}_{L,J,ρ} = μ_{T_L, J^{per}, ρ}`, and the Fourier transform of its two-point function `Ŝ_L(p) = Σ_{x∈T_L} e^{ip·x}⟨φ_0φ_x⟩^{per}` for p ∈ Λ*_L (Aizenman–Duminil-Copin (5.5)–(5.8), lines 1058–1084; Peled–Spinka, lines 1283–1284).

The API consists of the following facts.

- `μ^{per}` is invariant under the translations of T_L and under W_d, and under φ ↦ −φ for even ρ.
- `Ŝ_L(p) = |T_L|⁻¹ ⟨|Σ_x φ_x e^{−ip·x}|²⟩^{per} ≥ 0`, it is real and even in p, and `Ŝ_L(0) = |T_L|⁻¹⟨(Σ_x φ_x)²⟩^{per}`.
- The Hamiltonian is diagonalised by the discrete Fourier transform (`ZMod.dft` coordinatewise): `Σ_x Σ_j (φ_x − φ_{x+e_j})² = |T_L|⁻¹ Σ_p E(p) |φ̂(p)|²`.

*Needs:* 1.1; 1.2; Mathlib `ZMod.dft`.

**Checks.**

- L = 1, d = 1: T_1 = {0, 1} with coupling 2J, so `⟨σ_0σ_1⟩ = tanh 2J` for Ising spins, `Ŝ_1(0) = 1 + tanh 2J` and `Ŝ_1(π) = 1 − tanh 2J`.
- L = 2, d = 1: the 4-cycle with Ising spins has `⟨σ_0σ_1⟩ = (t + t³)/(1 + t⁴)` with t = tanh J, which differs from the open-chain value t.
- `E(p)` vanishes only at p = 0 on Λ*_L, and `E((π, …, π)) = 4d`.

### 5.2 Reflection positivity and the chessboard estimate

Prove reflection positivity of `μ^{per}` through vertex hyperplanes and through edge hyperplanes: for the reflection R of T_L in a hyperplane orthogonal to a coordinate axis, passing through vertices (respectively bisecting edges), and every bounded measurable complex function f of the spins on one closed half (respectively open half), `⟨f · conj(f ∘ R)⟩^{per} ≥ 0` (Peled–Spinka, Propositions 2.14 and 2.15, lines 1328 and 1385; their proofs use only the domain Markov property and, for edges, the positive-definite representation `e^{Jab} = e^{J(a²+b²)/2} ∫ e^{iτ(a−b)} dν_J(τ)` with ν_J a Gaussian measure, which needs J ≥ 0). Prove the chessboard estimate: for bounded measurable real functions (f_v)_{v∈T_L}, `|⟨Π_v f_v(φ_v)⟩|^{|T_L|} ≤ Π_w ⟨Π_v f_w(φ_v)⟩` (Proposition 2.16, line 1490), and its corollary for the comparison of a configuration event with constant ones (Corollary 2.17; Friedli–Velenik, Chapter 10).

*Needs:* 0.1; 1.1; 5.1.

**Checks.**

- L = 1, d = 1, edge reflection 0 ↔ 1: the form `(f, f) = ⟨f(σ_0)f(σ_1)⟩` has matrix proportional to `[[e^{2J}, e^{−2J}], [e^{−2J}, e^{2J}]]`, positive semidefinite iff J ≥ 0; the antiferromagnet fails.
- With all f_v ≡ 1 the chessboard estimate is an equality.
- For J = 0, `μ^{per}` is a product measure: an edge reflection gives `|E f|² ≥ 0`, while a vertex reflection gives `E[|E(f | spins on the fixed vertices)|²] ≥ 0`. For d = 1, L = 2, R(x) = −x, Ising spins and f = φ₀, the latter form is 1, whereas `|E f|² = 0` (Peled–Spinka, Proposition 2.14, line 1331).

### 5.3 Gaussian domination

Prove that for every h ∈ ℝ^{T_L}, `Z(h) ≤ Z(0)`, where `Z(h) = ∫ exp(−(J/2) Σ_x Σ_j (φ_x + h_x − φ_{x+e_j} − h_{x+e_j})²) Π_x ρ̃(dφ_x)` and `ρ̃(dφ) = e^{dJφ²} ρ(dφ)` is a finite measure because ρ is admissible; equivalently `⟨exp(J(φ, Δh))⟩^{per} ≤ exp(−(J/2)(h, Δh))` with `(Δh)_x = Σ_j (h_{x+e_j} + h_{x−e_j} − 2h_x)` (Peled–Spinka (43)–(48), lines 1563–1632; Simon, Twelve Tales (5.19)–(5.21), lines 1529–1546; Fröhlich–Simon–Spencer 1976). The identity `−(J/2)Σ_xΣ_j(φ_x − φ_{x+e_j})² = JΣ_xΣ_jφ_xφ_{x+e_j} − dJΣ_xφ_x²` identifies Z(0) with the periodic partition function. A proof route: Peled–Spinka's auxiliary spin system of pairs (φ, τ) with the bounded positive-definite interaction `e^{−(J/2)(a + a′ − b − b′)²}`, reflection positivity (5.2) and the chessboard estimate, and continuity of Z.

*Needs:* 0.1; 1.1; 5.1; 5.2.

**Checks.**

- L = 1, d = 1, Ising: with u = h₀ − h₁, `Z(h) ∝ 2e^{−Ju²} + e^{−J(2+u)²} + e^{−J(2−u)²}`, whose second derivative at u = 0 is `−4J + e^{−4J}(32J² − 4J) ≤ 0` (the maximum of `e^{−4J}(8J − 1)` is `2e^{−3/2} ≈ 0.45 < 1`), consistent with a maximum at h = 0.
- As a separate Gaussian-gradient example with Lebesgue measure, pin φ₀ = 0 and integrate over the other coordinates of the connected torus, removing the constant zero mode. Translation by `h − h₀` preserves this pinned space and gives `Z(h) = Z(0) < ∞` for J > 0. For the two-vertex torus with J = 1 this is `Z(u) = ∫ exp(−(x − u)²) dx = √π`; without pinning the common-translation integral is infinite. This example is outside the probability a-priori setting of the theorem (Peled–Spinka, lines 1633–1648).
- For h constant, Z(h) = Z(0) exactly.

### 5.4 The infrared bound and the sum rule

Prove the infrared bound `E(p) Ŝ_L(p) ≤ 1/J` for every p ∈ Λ*_L ∖ {0}, and its quadratic-form version `J⟨(φ, −Δh)²⟩^{per} ≤ (h, −Δh)` for all real h on T_L (Aizenman–Duminil-Copin (5.8)–(5.9), lines 1080–1087, with the constant corrected as in the Conventions; Peled–Spinka (49)–(52), lines 1686–1741; Simon, Twelve Tales (5.17) and (5.22), lines 1518 and 1551–1556; Fröhlich–Simon–Spencer 1976, Theorem 1). The first-order term vanishes by translation invariance, since Σ_x(Δh)_x = 0, so evenness of ρ is not needed. Prove the sum rule `⟨φ_0²⟩^{per} = |T_L|⁻¹ Σ_{p∈Λ*_L} Ŝ_L(p)` (5.10, line 1091), and for d ≥ 3 the Riemann-sum limit `|T_L|⁻¹ Σ_{p∈Λ*_L∖{0}} 1/E(p) → I_d = (2π)^{−d} ∫_{[−π,π]^d} dp/E(p) < ∞`.

*Needs:* 5.1; 5.3.

**Checks.**

- L = 1, d = 1, Ising: `E(π) = 4` and `Ŝ_1(π) = 1 − tanh 2J`, so the bound reads `4J(1 − tanh 2J) ≤ 1`; the left side has maximum ≈ 0.557, attained near 2J ≈ 0.64. The constant `1/(4J)` printed in Aizenman–Duminil-Copin (5.9) would require `4(1 − tanh 2J) ≤ 1/(4J)`, false at J = 0.375 (left 1.46, right 0.67).
- The Gaussian torus field with |b| > dJ has `E(p)Ŝ_L(p) = E(p)/(2(|b| − dJ) + JE(p)) < 1/J`, approaching 1/J as |b| ↓ dJ: the constant is sharp.
- Sum rule at L = 1, d = 1, Ising: `½(Ŝ(0) + Ŝ(π)) = ½((1 + t) + (1 − t)) = 1 = ⟨σ_0²⟩` with t = tanh 2J. The excluded mode p = 0 has E(0) = 0 and carries the long-range order.

### 5.5 Long-range order for the Ising model in d ≥ 3

Prove that for d ≥ 3, ρ = ρ_I and J > 0, `liminf_{L→∞} ⟨(|T_L|⁻¹ Σ_{x∈T_L} σ_x)²⟩^{per}_{L,J,ρ_I} ≥ 1 − I_d/J`, which is positive for J > I_d; more generally, for admissible ρ, `liminf_L (|T_L|⁻¹ Ŝ_L(0) − ⟨φ_0²⟩^{per}_L) ≥ −I_d/J` (Peled–Spinka, Theorem 2.13, lines 1207–1222, and (53), line 1766; Simon, Twelve Tales (5.15)–(5.18), lines 1502–1523; Fröhlich–Simon–Spencer 1976).

*Needs:* 5.4.

**Checks.**

- d = 3: `I_3 = W/2 ≈ 0.2527`, with Watson's integral `W = π^{−3} ∫_{[0,π]³} dp/(3 − Σ_j cos p_j) ≈ 0.5055`; equivalently `I_3 = G(0)/6` with `G(0) ≈ 1.516` the expected number of returns of simple random walk. Peled–Spinka's form `(1/(2J)) ∫_{[0,1]^d} dt/Σ_j(1 − cos πt_j)` gives the same constant.
- d = 1, 2: `∫ dp/E(p)` diverges near p = 0, so the statement gives nothing, as it must for d = 1, where the Ising chain has no long-range order.
- For J ≤ I_d the lower bound is nonpositive and vacuous.

### Examples

The two-site torus (L = 1, d = 1) is the fully computed example of every statement of this layer; the Gaussian torus field shows the sharpness of the infrared constant.

### Dependencies

Layers 0 and 1; Mathlib `ZMod.dft`. Independent of Layers 2–4.

## Layer 6: Random fields, Schwinger functions and Gaussian fields

### 6.1 Random fields indexed by test functions

Define a random field on ℝ^d over a probability space (Ω, P) as a family `T = (T_f)_{f∈C_c(ℝ^d)}` of real random variables such that for all f, g ∈ C_c(ℝ^d) and a, b ∈ ℝ, `T_{af+bg} = aT_f + bT_g` almost surely; its law is the image of P under ω ↦ (f ↦ T_f(ω)) on ℝ^{C_c(ℝ^d)} with the product σ-algebra, and two random fields, possibly on different probability spaces, are equal up to finite-dimensional distributions if their laws agree (Aizenman–Duminil-Copin (1.4), line 56, and footnote 2, lines 183–187; Glimm–Jaffe, Chapter 6; Simon 1974, Chapter I).

The API consists of the following facts.

- Equality up to finite-dimensional distributions holds iff all finite-dimensional laws agree (`ProbabilityTheory.map_eq_iff_forall_finset_map_restrict_eq`), and it is an equivalence relation.
- Realisation: a family of probability measures ν_F on ℝ^F, F ⊆ C_c(ℝ^d) finite, that is projective and linear (each ν_F is carried by the subspace `{v : v_h = av_f + bv_g}` whenever f, g, h = af + bg ∈ F) is the family of finite-dimensional laws of a random field, unique up to finite-dimensional distributions; the canonical field is the coordinate family on ℝ^{C_c(ℝ^d)} under the projective limit given by StochasticCalculus §1.1.
- Transport: for a linear map ℓ of C_c(ℝ^d), `(T_{ℓf})_f` is a random field; in particular for g ∈ W_d, for translations and for dilations of ℝ^d, `f ↦ T_{f∘g}` is a random field. Negatives, scalar multiples and sums of independent random fields are random fields.

*Needs:* StochasticCalculus §1.1; Mathlib `CompactlySupportedContinuousMap`, `ProbabilityTheory.map_eq_iff_forall_finset_map_restrict_eq`, `MeasureTheory.IsProjectiveMeasureFamily`, `MeasureTheory.IsProjectiveLimit.unique`.

**Checks.**

- The zero field T ≡ 0, and the deterministic field `T_f = ∫ f h dx` for locally integrable h, whose finite-dimensional laws are Dirac measures.
- White noise with `E[T_fT_g] = ∫ fg dx` is a random field (6.3).
- `T_f = |∫ f dx|` is not a random field: `T_{−f} = T_f ≠ −T_f` whenever ∫f ≠ 0.

### 6.2 Moment functionals and Schwinger functions

Define, for a random field T with `E|T_f|ⁿ < ∞` for all f and n, the moment functionals `M_n(f_1, …, f_n) = E[T_{f_1} ⋯ T_{f_n}]`, and call a locally integrable function `S_n : (ℝ^d)^n → ℝ` an n-point Schwinger function of T if `M_n(f_1, …, f_n) = ∫ S_n(x_1, …, x_n) Π_i f_i(x_i) dx` for all f_i ∈ C_c(ℝ^d) (Aizenman–Duminil-Copin (1.5)–(1.6), lines 59–76). Define the decay condition (1.10) for a two-point Schwinger function: for every ε > 0 there is r with `|S_2(x, y)| ≤ ε` for almost every (x, y) with |x − y| ≥ r (line 126).

The API consists of the following facts.

- M_n is symmetric and multilinear, and depends only on the law of T.
- Uniqueness: two n-point Schwinger functions of T agree almost everywhere, because linear combinations of products `f_1 ⊗ ⋯ ⊗ f_n` approximate every smooth compactly supported function on `(ℝ^d)^n` and `ae_eq_zero_of_integral_contDiff_smul_eq_zero` applies.
- Schwinger functions are symmetric almost everywhere under permutations of their arguments; if S_2 exists, `∫∫ f(x) S_2(x, y) f(y) dx dy = E[T_f²] ≥ 0`.
- Changing S_2 on a null set preserves (1.10), and (1.10) is equivalent to the existence of a representative with `S_2(x, y) → 0` pointwise as |x − y| → ∞.

*Needs:* 6.1; Mathlib `ae_eq_zero_of_integral_contDiff_smul_eq_zero`.

**Checks.**

- The deterministic field `T_f = ∫ fh` has `S_n(x) = Π_i h(x_i)`; for `h(x) = e^{−|x|²}` the two-point function `e^{−|x|²−|y|²} ≤ e^{−|x−y|²/2}` satisfies (1.10), while for h ≡ 1 it is identically 1 and fails it. Decay of S_2 alone does not force centring.
- White noise has no two-point Schwinger function: such an S_2 would vanish almost everywhere off the diagonal (test with f, g of disjoint supports), hence almost everywhere, contradicting `E[T_f²] = ∫f² > 0`.
- The Gaussian free field of 7.4 has `S_2(x, y) = G_m(x − y)/C_m(1_Q, 1_Q)` with G_m the continuum Green function; in d = 1, `G_m(x) = e^{−m|x|}/(2m)`, which satisfies (1.10).

### 6.3 Gaussian processes with a prescribed covariance

Prove that for any type I and any symmetric positive semidefinite kernel K : I → I → ℝ (`Σ_{i,j} c_ic_j K(i, j) ≥ 0` for finitely supported c) there is a centred process X on a probability space with `ProbabilityTheory.IsGaussianProcess` and `E[X_iX_j] = K(i, j)`, unique in law; that if I is a real vector space and K is bilinear then X is almost surely linear; and, specialising to I = C_c(ℝ^d), that for every positive semidefinite symmetric bilinear form C on C_c(ℝ^d) there is a centred Gaussian random field with covariance C, unique up to finite-dimensional distributions. A generalised Gaussian process is a random field satisfying `ProbabilityTheory.IsGaussianProcess` (Aizenman–Duminil-Copin, lines 77–89; Glimm–Jaffe, Chapter 6; Simon 1974, Chapter I). A proof route: the restrictions `ProbabilityTheory.multivariateGaussian 0 (K|_F)` form a projective family by `ProbabilityTheory.measurePreserving_restrict₂_multivariateGaussian` (as in `ProbabilityTheory.BrownianReal.projectiveFamily`); StochasticCalculus §1.1 gives the process; linearity because `X_{af+bg} − aX_f − bX_g` is a centred Gaussian variable of variance 0.

The API consists of the following facts.

- Two centred generalised Gaussian processes with the same covariance are equal up to finite-dimensional distributions.
- The image of a centred Gaussian random field under a linear map of test functions is a centred Gaussian random field, with the transported covariance.
- A centred Gaussian random field has all moments, and `E[T_f] = 0`.

*Needs:* 6.1; StochasticCalculus §1.1; Mathlib `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.measurePreserving_restrict₂_multivariateGaussian`, `ProbabilityTheory.IsGaussianProcess`, `MeasureTheory.Measure.ext_of_charFun`.

**Checks.**

- I = Fin 2, `K = [[1, r], [r, 1]]` with |r| ≤ 1: the bivariate normal law with correlation r.
- `K = [[1, 2], [2, 1]]` has eigenvalue −1 and no such process exists: `X₁ − X₂` would have variance 1 − 4 + 1 = −2.
- On I = [0, ∞) with K(s, t) = min(s, t) the finite-dimensional laws are Mathlib's `ProbabilityTheory.BrownianReal.projectiveFamily`; on C_c(ℝ^d) the form `∫ fg dx` gives white noise.

### 6.4 Wick's law

Prove that a random field T with all moments and `E[T_f] = 0` for all f is a generalised Gaussian process iff its moment functionals satisfy Wick's law: `M_{2n+1} = 0` and `M_{2n}(f_1, …, f_{2n}) = Σ_π Π_{j=1}^n M_2(f_{π(2j−1)}, f_{π(2j)})` for all n, the sum over pairings (Aizenman–Duminil-Copin (1.7), lines 81–86). Prove that if moreover T has a two-point Schwinger function S_2, then T has 2n-point Schwinger functions `S_{2n} = G_n[S_2]`, with `G_n[S_2](x_1, …, x_{2n}) = Σ_π Π_j S_2(x_{π(2j−1)}, x_{π(2j)})` (locally integrable because each product separates the variables), and vanishing odd Schwinger functions. A proof route: the forward direction is Wick–Isserlis (StandardDistributions §5.3); for the converse, every finite linear combination Y of the T_f has the moments of `N(0, E[Y²])`, hence `E[cosh(aY)] = e^{a²E[Y²]/2} < ∞`, so its law is the Gaussian one by `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`, and the joint law is Gaussian by `ProbabilityTheory.IsGaussian` (one-dimensional projections) and `MeasureTheory.Measure.ext_of_charFun`.

*Needs:* 6.2; 6.3; StandardDistributions §5.3; Tau Ceti `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`; Mathlib `ProbabilityTheory.IsGaussian`, `MeasureTheory.Measure.ext_of_charFun`.

**Checks.**

- n = 2, f_i = f: Wick's law gives `M_4(f, f, f, f) = 3M_2(f, f)²`, the Gaussian fourth moment `3v²` (`TauCeti.Probability.centralMoment_id_two_mul_gaussianReal`).
- The centred non-Gaussian field `T_f = ε∫fh` with ε a fair random sign has `M_4 = (∫fh)⁴ ≠ 3(∫fh)⁴` for ∫fh ≠ 0, and Wick's law fails.
- Centring is needed: the Gaussian field `T_f = ∫fh + W_f` (W white noise, h ≠ 0) is a generalised Gaussian process, but `M_1(f) = ∫fh ≠ 0` violates Wick's law as stated.

### Examples

White noise, the deterministic fields, the random-sign field and the Gaussian free field of 7.4 are the running examples.

### Dependencies

StochasticCalculus §1.1; StandardDistributions §5.3; Mathlib `CompactlySupportedContinuousMap`, `ProbabilityTheory.map_eq_iff_forall_finset_map_restrict_eq`, `MeasureTheory.IsProjectiveMeasureFamily`, `MeasureTheory.IsProjectiveLimit.unique`, `ae_eq_zero_of_integral_contDiff_smul_eq_zero`, `ProbabilityTheory.multivariateGaussian`, `ProbabilityTheory.measurePreserving_restrict₂_multivariateGaussian`, `ProbabilityTheory.IsGaussianProcess`, `ProbabilityTheory.IsGaussian`, `MeasureTheory.Measure.ext_of_charFun`; Tau Ceti `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`. Independent of Layers 0–5.

## Layer 7: Reachable random fields

### 7.1 The rescaled lattice field

Define, for L ≥ 1, a function f : ℝ^d → ℝ, a finite set V ⊂ ℤ^d, Σ ≥ 0 and φ ∈ ℝ^V, the rescaled lattice field `T_{f,L,Σ}(φ) = Σ^{−1/2} Σ_{x∈V} f(x/L) φ_x`, and, for a stable triple with every coordinate square integrable under its Gibbs law, the finite block second moment `Σ^{(R)}_L(ρ, J) = ⟨(Σ_{x∈Λ_L} φ_x)²⟩_{V_R,J,ρ} < ∞` for R ≥ L (a variance for even ρ) (Aizenman–Duminil-Copin (1.14)–(1.15), lines 157–166).

The API consists of the following facts.

- T is linear in f and in φ, and depends on f only through its values on `L⁻¹V`.
- For g ∈ W_d and a g-invariant V, `T_{f∘g,L,Σ}(φ) = T_{f,L,Σ}(φ ∘ g⁻¹)`; equivalently `T_{f,L,Σ}(φ ∘ g) = T_{f∘g⁻¹,L,Σ}(φ)`.
- Second-moment identity, assuming stability and integrable coordinate squares (it is a covariance identity for even ρ): `⟨T_{f,L,Σ} T_{g,L,Σ}⟩_{V,J,ρ} = Σ⁻¹ Σ_{x,y∈V} f(x/L) g(y/L) ⟨φ_xφ_y⟩`.
- Under the same moment hypothesis, for R ≥ L and Σ = Σ^{(R)}_L > 0, the field of the indicator of Q has second moment 1: `⟨T_{1_Q,L,Σ}²⟩_{V_R} = 1`.
- For even admissible ρ and ferromagnetic J, `Σ^{(R)}_L` is non-decreasing in R (3.2) and is zero only for ρ = δ₀.

*Needs:* 1.1; 1.2; 3.2.

**Checks.**

- J = 0, ρ = ρ_I, f ∈ C_c(ℝ^d): `Σ^{(R)}_L = (2L + 1)^d` and `⟨T_{f,L}²⟩_{V_R} = Σ_{x∈V_R} f(x/L)²/(2L + 1)^d`. As L → ∞ with R = R(L) ≥ L chosen so that V_{R(L)} eventually contains every x ∈ ℤ^d with x/L ∈ supp f (for instance R(L)/L → ∞), this tends to `2^{−d} ∫ f²`, the white-noise normalisation; the volume-first limit of 7.2 gives the same value.
- The volume condition is needed: d = 1, R = L and the tent `f(u) = max(0, 1 − |u − 3|)` sample only x/L ∈ [−1, 1], where f vanishes, so the second moment is 0 for every L, whereas `½∫f² = 1/3`. With R = 4L the sampled sum is `(2L² + 1)/(3L)` and the normalised second moment `(2L² + 1)/(3L(2L + 1)) → 1/3`.
- d = 1, L = R = 1, nearest-neighbour Ising with t = tanh J: `Σ^{(1)}_1 = 3 + 4t + 2t²` (open chain of three sites).
- ρ = δ₀: Σ = 0 and T ≡ 0 by the junk convention of the Conventions.
- The direction of the W_d action: d = 2, L = 1, Σ = 1, `V = {0, ±e₁, ±e₂}`, g the rotation `(x₁, x₂) ↦ (−x₂, x₁)` (of order 4, so g ≠ g⁻¹) and `f = 1_{e₁}` on V. Then `T_{f∘g}(φ) = φ_{g⁻¹e₁} = φ_{−e₂}`, which agrees with `T_f(φ ∘ g⁻¹) = φ_{−e₂}`; the identity with g on both sides would give `T_f(φ ∘ g) = φ_{ge₁} = φ_{e₂}`, which differs for `φ = 1_{e₂}`. The two identities cannot be separated when g² = id; the quarter-turn and the selected f and φ separate them. For the half-turn g = −I, f = 1_{e₁} and φ = 1_{−e₁}, both candidate right sides and the left side are 1.

### 7.2 Reachability

Define, for d ≥ 1 and a set 𝒞 of single-site measures, a reachability scheme as sequences ρ_n ∈ 𝒞, J_n ≥ 0, L_n ≥ 1 with L_n → ∞, and R_{n,m} ≥ L_n with R_{n,m} → ∞ as m → ∞ for each n, such that each triple `(V_{R_{n,m}}, J_n · nearest-neighbour, ρ_n)` is stable and every coordinate square is integrable under its Gibbs law; write `μ_{n,m}` for its Gibbs measure, `0 ≤ Σ_{n,m} = Σ^{(R_{n,m})}_{L_n}(ρ_n, J_n) < ∞` and `T^{n,m}_f = T_{f,L_n,Σ_{n,m}}` on `V_{R_{n,m}}`. The scheme converges if for every finite F ⊆ C_c(ℝ^d) the law of (T^{n,m}_f)_{f∈F} under μ_{n,m} converges weakly as m → ∞ to a law ν^n_F, and ν^n_F converges weakly as n → ∞ to a law ν_F. A random field is 𝒞-reachable if its finite-dimensional laws are the ν_F of a convergent scheme (Aizenman–Duminil-Copin, Definition 1.1, lines 167–179, and footnote 2, lines 183–187). The free boundary conditions on V_R and the order of the limits (volume first, then scale) are those of the source; the volumes R_{n,m} may be chosen along subsequences.

The API consists of the following facts.

- Reachability is monotone in 𝒞.
- For admissible members of 𝒞 both stability and coordinate-square integrability are automatic (1.1–1.2); for the Gaussian measures γ_b both follow from the positive-definiteness condition of 1.5, which for `b ≤ −d·J_n` holds on every box.

*Needs:* 1.1; 1.2 (admissible moments); 1.5; 6.1; 7.1; Mathlib `MeasureTheory.ProbabilityMeasure`.

**Checks.**

- ρ_n = ρ_I, J_n = 0: by the central limit theorem and the Riemann sums of 7.1, white noise with covariance `2^{−d} ∫ fg` is {ρ_I}-reachable.
- 𝒞 = {δ₀}: the only reachable field is the zero field.
- At J = 0 with N block sites, Ising has Σ = N, a centred Gaussian of variance v has Σ = Nv, and δ₀ has Σ = 0 and gives the zero field. The standard Cauchy law also has Z = 1, but its N-spin sum is Cauchy of scale N with infinite second moment, so it fails the scheme hypothesis.
- d = 1, ρ_n = ρ_I and `tanh J_n = e^{−c/L_n}`: the rescaled chain converges to the random telegraph process X with `E[X_uX_v] = e^{−c|u−v|}`, and `T_f = κ^{−1/2} ∫ f(u)X_u du` with `κ = ∫∫_{Q²} e^{−c|u−v|}` is {ρ_I}-reachable, bounded and hence not Gaussian.

### 7.3 Structure of reachable fields

Prove that every convergent reachability scheme has a reachable random field, unique up to finite-dimensional distributions: the limit laws ν_F are projective, since restriction is continuous and commutes with weak limits, and linear, since `T^{n,m}_{af+bg} = aT^{n,m}_f + bT^{n,m}_g` exactly and the subspaces are closed (6.1). Prove that if 𝒞 consists of even measures then every 𝒞-reachable field Φ has the same law as −Φ, and every odd moment that exists vanishes; that every 𝒞-reachable field is invariant under W_d, `(T_{f∘g}(Φ))_f` having the same law as Φ for g ∈ W_d; and that `E[T_f(Φ)²] ≤ liminf_n liminf_m ⟨(T^{n,m}_f)²⟩_{μ_{n,m}}` (Aizenman–Duminil-Copin, lines 172–179; Sokal, Lemma 2.2, lines 710–721).

*Needs:* 1.2; 6.1; 7.1; 7.2; Mathlib `MeasureTheory.ProbabilityMeasure.tendsto_iff_forall_integral_tendsto`.

**Checks.**

- d = 1: W_1 = {±1} and the invariance says `T_{f(−·)}(Φ)` has the law of `T_f(Φ)`; for the telegraph field of 7.2 this is reversibility of the stationary chain.
- Evenness is needed: for 𝒞 = {(δ₀ + δ₁)/2} and J_n = 0, `Σ_L ≈ |Λ_L|²/4`, so `E[T_{f,L}] → 2^{−d} ∫ f` and `Var T_{f,L} → 0`; the reachable field is the deterministic field `T_f = 2^{−d} ∫ f`, whose law is not that of −Φ.
- The variance bound can be strict: for 𝒞 the even admissible measures, with J_n = 0 and `ρ_n = (1 − p_n)ρ_I + ½p_n(δ_{a_n} + δ_{−a_n})`, where `p_n = |Λ_{L_n}|^{−2}` and `a_n² = 1/p_n` (bounded support, so admissible and even), the lattice variances of T_f tend to `2^{−d}∫f²` while the reachable field is Gaussian with variance `2^{−d−1}∫f²`, because with probability tending to one no site of the block carries the value ±a_n.

### 7.4 The Gaussian free field as a reachable field

Define, for m ≥ 0, the covariance `C_m(f, g) = ∫ conj(𝓕f(ξ)) 𝓕g(ξ)/(4π²|ξ|² + m²) dξ` on C_c(ℝ^d), finite and positive semidefinite for m > 0 in every dimension and for m = 0 when d ≥ 3, and also evaluate this same Fourier integral at the block indicator `1_Q ∈ L¹ ∩ L²`. Define the Gaussian free field of mass m as the centred Gaussian random field with covariance `C_m(f, g)/C_m(1_Q, 1_Q)` (6.3). The covariance has the following API.

- C_m is symmetric, positive semidefinite and finite on C_c(ℝ^d) in the stated range of (d, m), and is non-increasing in m in quadratic-form order: `C_{m₂}(f, f) ≤ C_{m₁}(f, f)` for m₂ ≥ m₁ in the permitted range.
- Using the analytic Green-kernel facts of RelativisticQuantumFieldTheory §7.1, prove for m > 0 that `C_m(f, g) = ∫∫ f(x) G_m(x − y) g(y) dx dy` with `G_m` the inverse Fourier transform of `1/(4π²|ξ|² + m²)`, a positive, radial, locally integrable function decaying exponentially; for m = 0 and d ≥ 3, `G_0(x) = Γ(d/2 − 1)/(4π^{d/2}|x|^{d−2})` for x ≠ 0. Values at the single point 0 do not affect the integral.
- `0 < C_m(1_Q, 1_Q) < ∞`, and C_m is invariant under the Euclidean motions of ℝ^d acting on test functions.

Prove that for d ≥ 1 and m > 0, and for d ≥ 3 and m = 0, the Gaussian free field of mass m is reachable from the Gaussian class {γ_b : b < 0}, with `J_n = 1`, `b_n = −(d + m²/(2L_n²))`, and arbitrary L_n → ∞ and R_{n,m} → ∞ (Sokal, Section 2.3 and Lemma 2.2, lines 620–721; Fröhlich, lines 266–269; Simon, Twelve Tales, lines 960–975; Glimm–Jaffe, Chapter 6). A proof route: the laws of `(T^{n,m}_f)_f` are centred Gaussian (1.5); as R → ∞ their covariances converge to `Σ_L⁻¹ Σ_{x,y} f(x/L)g(y/L) G_{m/L}(x − y)`, with `G_μ` of 1.5 and `Σ_L = Σ_{x,y∈Λ_L} G_{m/L}(x − y)` the limit of the non-decreasing block variances; after the substitution p = q/L, `L^{−(d+2)} Σ_{x,y} f(x/L) g(y/L) G_{m/L}(x − y) = (2π)^{−d} ∫_{[−πL,πL]^d} conj(F_L(q)) H_L(q) / (L²E(q/L) + m²) dq`, with `F_L(q) = L^{−d}Σ_x f(x/L)e^{−iq·x/L}` and H_L likewise for g, converging to `C_m(f, g)` by dominated convergence (`L²E(q/L) ≥ (4/π²)|q|²` on the domain, Parseval for F_L and H_L); the same holds for `1_Q`, whose transforms are products of Dirichlet kernels; convergence of covariances gives convergence of the Gaussian laws.

*Needs:* 1.5; 6.3; 7.2; 7.3; RelativisticQuantumFieldTheory §7.1 (analytic continuum Green kernels, Fourier agreement and decay); Mathlib `Real.fourier_eq`, `ProbabilityTheory.charFun_multivariateGaussian`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_tendsto_charFun`.

**Checks.**

- The imported Fourier normalization gives multiplier 1 at m = 1, ξ = 0, and `G_1(1) = e⁻¹/2` in d = 1. Here `C_m(f, g) = ∫∫ f(x) e^{−m|x−y|}/(2m) g(y) dx dy` and `C_m(1_Q, 1_Q) = 2/m² − (1 − e^{−2m})/m³`, which is `1 + e⁻²` at m = 1 and tends to infinity like 2/m as m → 0: no massless field in d = 1. Quadratic-form monotonicity gives `C_2(f, f) ≤ C_1(f, f)`; for g = −f the inequality on cross terms reverses, so it is not an order on every pair (f, g).
- The lattice normalisation is exact before the limit: `⟨(T^{n,m}_{1_Q})²⟩ = 1` for every n and m (7.1).
- In d = 4 the Green function `G_m(x)` behaves like `1/(4π²|x|²)` near 0, locally integrable on ℝ⁴, so the field has a two-point Schwinger function satisfying (1.10) (exponential decay for m > 0, `|x|^{−2}` decay for m = 0); it is a non-vacuous instance of the field hypotheses of downstream goal 8.1, reached from Gaussian rather than φ⁴ single-site measures.

### Examples

White noise (from independent spins), the random telegraph field (from the one-dimensional Ising chain near zero temperature) and the Gaussian free field (from Gaussian lattice fields) are the worked examples of reachable fields; the first has no two-point Schwinger function, the second is non-Gaussian in d = 1, and the third is Gaussian in every dimension.

### Dependencies

Layers 1, 3 (through 3.2) and 6; RelativisticQuantumFieldTheory §7.1; Mathlib `MeasureTheory.ProbabilityMeasure`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_forall_integral_tendsto`, `MeasureTheory.ProbabilityMeasure.tendsto_iff_tendsto_charFun`, `Real.fourier_eq`, `ProbabilityTheory.charFun_multivariateGaussian`.

## Downstream consumers

- **ConstructiveFieldTheoryPhi4PartII** owns the two marginal-triviality goals 8.1 and 8.2 below. It consumes the random current representation and switching lemma (3.4), the Lebowitz, Gaussian and Simon–Lieb inequalities for the full Griffiths–Simon class (3.5), the uniform moment bounds (3.7), the free-boundary state, two-point function, susceptibility and critical point (Layer 4), the axis monotonicity (4.4), the torus infrared bound and reflection positivity (Layer 5), Wick's law (6.4) and reachable fields (Layer 7), and owns the additional current intersection estimates, tree diagram and improved tree diagram bounds, spectral representation, identification of boundary conditions below the critical point, infinite-volume and sliding-scale infrared bounds and uniform local integrability of rescaled two-point functions needed for those proofs.
- **ConstructiveFieldTheoryPhi4PartII** also owns the application of reachable-field Schwinger functions to Osterwalder–Schrader reconstruction, consuming the covariance comparison of 7.4 and the reconstruction theorem of RelativisticQuantumFieldTheory.
- **Ising-type statistical mechanics** (phase transitions by the infrared bound and the Peierls argument, Lee–Yang theory, sharpness of the phase transition), which no roadmap owns, would build on Layers 1, 3, 4 and 5.

The base completion ends at Layer 7, including Gaussian-field reachability. The following sourced statements describe the downstream goals and retain identifiers 8.1 and 8.2 for their mathematical content; they are not theorem targets or acceptance statements of this roadmap.

### 8.1 Gaussianity of reachable φ⁴ and Ising fields in d ≥ 4

ConstructiveFieldTheoryPhi4PartII proves: for d ≥ 4, let 𝒞 consist of the φ⁴ measures `ρ_{λ,b}` (λ > 0, b ∈ ℝ) and the Ising measure ρ_I. Every 𝒞-reachable random field that has a two-point Schwinger function S_2 satisfying the decay condition (1.10) is a generalised Gaussian process (Aizenman–Duminil-Copin, Theorem 1.2, line 190, with (1.10), line 126, for d = 4; for d ≥ 5, Aizenman–Duminil-Copin, lines 122–128, citing Aizenman 1982 and Fröhlich 1982, whose main statement is at Fröhlich, lines 112–115). By 7.3 such a field is symmetric, so it is centred, and by 6.4 its Schwinger functions are `G_n[S_2]`.

**Checks.**

- The dimension hypothesis cannot be dropped: in d = 1 the random telegraph field of 7.2 is {ρ_I}-reachable, has `S_2(u, v) = e^{−c|u−v|}/κ` satisfying (1.10), and is bounded, hence not Gaussian.
- The Schwinger-function hypothesis excludes white noise (reachable with J_n = 0, 7.2), which has no two-point Schwinger function (6.2); white noise is Gaussian, so it is not a counterexample, but it shows that "S_2 is a function" is a genuine restriction.
- The Gaussian free field in d = 4 (7.4) satisfies all hypotheses except membership of the single-site measures in 𝒞, and is Gaussian, consistent with the statement.

### 8.2 The Griffiths–Simon extension

ConstructiveFieldTheoryPhi4PartII proves: for d ≥ 4 and 𝒞 the Griffiths–Simon class of 2.2, every 𝒞-reachable random field that has a two-point Schwinger function satisfying (1.10) is a generalised Gaussian process (Aizenman–Duminil-Copin, Section 7, lines 1979–1985, Theorem 7.1, line 2006, and Proposition 7.2, lines 2014–2017, for d = 4; Aizenman 1982 for d ≥ 5). The class of 2.2 uses the limit-growth condition of Aizenman–Duminil-Copin's Definition 2.1 with nonnegative block weights.

**Checks.**

- 8.2 implies 8.1, because ρ_I and every φ⁴ measure lie in the Griffiths–Simon class (2.2, 2.3) and reachability is monotone in 𝒞 (7.2).
- The telegraph counterexample of 8.1 applies here as well, since ρ_I is in the class.
- The Gaussian measures γ_b are not in the class, so the reachability of the Gaussian free field (7.4) is not an instance of 8.2.

## References

- [aizenman-duminilcopin-2021] M. Aizenman and H. Duminil-Copin, *Marginal triviality of the scaling limits of critical 4D Ising and φ⁴₄ models*, Ann. of Math. 194 (2021), read as arXiv:1912.07973v4: Definition 1.1, Theorem 1.2, (1.4)–(1.21), Definition 2.1, Definition 3.1, Lemma 3.3, (3.7), (3.11), Section 5 (Proposition 5.1, (5.2)–(5.10), Lemma 5.7), Section 7.
- [sokal-1982] A. D. Sokal, *An alternate constructive approach to the φ⁴₃ quantum field theory, and a possible destructive approach to φ⁴₄*, Ann. Inst. H. Poincaré A 37 (1982): Section 2.2 (properties (a)–(l)), Proposition 2.1, Section 2.3 and Lemma 2.2, Section 3.1.
- [peled-spinka-2017] R. Peled and Y. Spinka, *Lectures on the spin and loop O(n) models*, arXiv:1708.00058v3: Theorems 2.1, 2.3, 2.13, Lemma 2.4, Section 2.7 (Propositions 2.14–2.16, (43)–(53)).
- [simon-2020-twelve-tales] B. Simon, *Twelve tales in mathematical physics*, arXiv:2011.12335v2: Section 3 (pp. 24–25), Section 5 ((5.14)–(5.22)).
- [frohlich-1982] J. Fröhlich, *On the triviality of λφ⁴_d theories and the approach to the critical point in d ≥ 4 dimensions*, Nucl. Phys. B 200 (1982), read as IHES preprint P/81/41.
- [duminilcopin-2017-lectures] H. Duminil-Copin, *Lectures on the Ising and Potts models on the hypercubic lattice*, arXiv:1707.00520v1: Corollary 1.9.
- [griffiths-simon-1973] R. B. Griffiths and B. Simon, *The (φ⁴)₂ field theory as a classical Ising model*, Comm. Math. Phys. 33 (1973), 145–164 (cited by locator).
- [aizenman-1982] M. Aizenman, *Geometric analysis of φ⁴ fields and Ising models, Parts I and II*, Comm. Math. Phys. 86 (1982), 1–48 (cited by locator).
- [frohlich-simon-spencer-1976] J. Fröhlich, B. Simon and T. Spencer, *Infrared bounds, phase transitions and continuous symmetry breaking*, Comm. Math. Phys. 50 (1976), 79–95, Theorem 1 (cited by locator).
- [glimm-jaffe-1987] J. Glimm and A. Jaffe, *Quantum Physics: A Functional Integral Point of View*, 2nd ed., 1987, Chapters 4 and 6 (cited by locator).
- [fernandez-frohlich-sokal-1992] R. Fernández, J. Fröhlich and A. D. Sokal, *Random Walks, Critical Phenomena, and Triviality in Quantum Field Theory*, 1992, Part I (cited by locator).
- [friedli-velenik-2017] S. Friedli and Y. Velenik, *Statistical Mechanics of Lattice Systems: A Concrete Mathematical Introduction*, 2017, Section 3.6 and Chapter 10 (cited by locator).
- [simon-1974] B. Simon, *The P(φ)₂ Euclidean (Quantum) Field Theory*, 1974, Chapter I (cited by locator).
