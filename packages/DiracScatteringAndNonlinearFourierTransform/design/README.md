# Roadmap: Dirac scattering and the non-linear Fourier transform

**Summary.** Build the theory of one-dimensional Dirac systems on the half-line and of the SU(1,1)
non-linear Fourier transform, from Mathlib's Bochner integration, absolutely continuous functions
and complex analysis and from Tau Ceti's Carathéodory, Grönwall, maximal-function, Phragmén–Lindelöf
and Nevanlinna–Pick modules, up to Poltoratski's non-linear Carleson theorem. The roadmap first
extends Carathéodory's theory of linear differential equations to integrable coefficients
depending holomorphically on a parameter. It then develops the function theory of the upper
half-plane that the scattering theory consumes: Poisson integrals, Fatou's theorem, bounded
holomorphic functions, the Hardy space `H²(ℂ₊)`, Paley–Wiener spaces and outer functions. On this
base it defines the Dirac system `ΩX′ = zX − Q_q X` with a locally integrable complex potential
`q`, its fundamental matrix, its Hermite–Biehler functions `E`, `Ẽ` and its scattering functions
`a`, `b`. It proves the SU(1,1) structure, the half-plane bounds `|a| ≥ 1` and `|b| < |a|`,
outerness of `a` and the non-linear Plancherel identity `∫_ℝ log|a(t,x)| dx = (π/2)∫₀ᵗ |q|²`.
For square-integrable `q` it constructs the scattering limit and the non-linear Fourier transform
`q⌃ = b(∞,·)/a(∞,·)`, with its boundary values, its Plancherel identity at `t = ∞`, the
`L²(ℝ)`-convergence of truncations and the elementary rules it shares with the linear transform.
The spectral side follows: de Branges spaces, Weyl functions, the Neumann and Dirichlet spectral
measures with the isometric embeddings `B(E(t,·)) → L²(μ)`, and the Szegő condition
`log w ∈ L¹(Π)` for square-integrable potentials. The last three layers carry out Poltoratski's
argument for real potentials: meromorphic inner functions and resonances, universality of
reproducing kernels and the approximation of `E` by sines and exponentials near almost every real
point, and the pointwise convergence `q⌃_T(s) → q⌃(s)` for almost every `s ∈ ℝ`.

## Scope and ownership

This roadmap owns, by layer:

- Layer 1: the integral Grönwall inequality with an integrable kernel, the linear Carathéodory
  theorem with an integrable coefficient in a Banach space, the two-parameter propagator, Liouville's
  formula, continuous dependence on the coefficient in `L¹`, holomorphic dependence on a
  parameter, and the nonlinear Carathéodory theorem with an integrable Lipschitz modulus;
- Layer 2: Poisson integrals of Poisson-finite measures on `ℝ` (Tau Ceti's half-space Poisson
  integral takes bounded data only), positive harmonic functions on `ℂ₊`, nontangential maximal
  functions, Fatou's theorem for Poisson integrals, boundary values and uniqueness for bounded
  holomorphic functions on `ℂ₊`, the Hardy space `H²(ℂ₊)`, the Paley–Wiener spaces `PW_t`, and
  outer functions on `ℂ₊`;
- Layer 3: the Dirac system with a locally integrable complex potential, its fundamental matrix,
  its Hermite–Biehler functions and the Hermite–Biehler property;
- Layer 4: the scattering matrix `G`, the scattering functions `a`, `b` on a finite interval,
  their algebraic identities and composition laws, the Dyson bounds, the half-plane bounds,
  outerness and the finite-interval non-linear Plancherel identity, and the Riccati representation;
- Layer 5: the scattering limit for square-integrable potentials, the non-linear Fourier
  transform, its boundary behaviour, its Plancherel identity, convergence of truncations and
  its elementary rules;
- Layer 6: de Branges spaces of Hermite–Biehler functions, the de Branges spaces of a Dirac
  system, the isometric chain, Weyl functions, the Neumann and Dirichlet spectral measures, the
  relative entropy of measures and the Szegő condition for square-integrable potentials;
- Layer 7: meromorphic inner functions, the phase-derivative representation of a Hermite–Biehler
  function of exponential type, Poltoratski's zero-localisation lemma, and the Dirac inner
  functions with their Riccati equation and the motion of resonances;
- Layer 8: universality of reproducing kernels at almost every real point and the
  approximation of the Hermite–Biehler functions near a real point (Poltoratski §§6–8);
- Layer 9: scattering data of subintervals, the resonance lemmas and the non-linear Carleson
  theorem with its strong form and the boundedness of generalised eigenfunctions (Poltoratski
  §9).

It leaves to named owners:

- Picard–Lindelöf with continuous time, `ODE_solution_unique_of_mem_Ioo`, absolutely continuous
  functions, the Lebesgue differentiation theorem, the `L²` Fourier transform, the Poisson kernel
  and the Poisson formula of a disc, and Phragmén–Lindelöf in a half-plane to Mathlib, consumed as
  listed in the supplier contracts;
- the essentially-bounded Carathéodory theorem, the constant-kernel integral Grönwall inequality,
  the Dyson series of a continuous path, Jacobi's formula for the derivative of the determinant,
  the identity `det(exp A) = exp(tr A)`, Young's inequality for an integrable kernel, the duality
  `L^∞(μ) ≃ L¹(μ)*` of a finite measure, the Hardy–Littlewood maximal function with its weak
  and strong type bounds, the Herglotz and Nevanlinna representations, the Cayley transform of
  the half-plane, the half-plane Phragmén–Lindelöf principle for bounded functions, the
  half-space Poisson kernel with its mass, positivity, harmonicity in the pole and kernel
  comparison, the half-space Poisson integral of bounded data with its harmonicity and boundary
  values, the converse mean-value theorem for harmonic functions and the F. and M. Riesz uniqueness
  theorem on discs to Tau Ceti; Layer 1 states the integrable-coefficient generalisations and
  records the pinned essentially-bounded, continuous and constant-coefficient cases as Checks, and
  Layer 2 states the Poisson integral of a Poisson-finite measure and records the pinned
  bounded-data case as a Check;
- finite-order Hadamard factorization to AnalyticNumberTheoryPartI §0.23, consumed in Layer 7
  for entire functions of order at most one;
- the disc Hardy space `H²(𝔻)` and its Toeplitz operators to OperatorTheory (ToeplitzOperators T1);
  harmonic Hardy spaces on Euclidean balls and the circle maximal function of a finite measure to
  StochasticCalculus S6.5; neither is consumed, since Layer 2 works on the half-plane with
  Lebesgue measure and the maximal function of a density;
- the self-adjoint Dirac operator in `L²(ℝ₊; ℂ²)`, its domain and its spectral theorem to a
  later operator-theoretic roadmap: Layer 6 builds the spectral measures from Weyl functions and
  Herglotz representations and needs no unbounded operator;
- inverse scattering, the Riemann–Hilbert approach, the `ℓ^p` and `L^p` theory of Christ and Kiselev,
  the discrete SU(1,1) model, the Schrödinger reduction and integrable systems to later roadmaps
  that consume Layers 3–6.

The headline theorem of Layer 9 is stated, as in the source, for real potentials. Layers 1–6 are
stated for complex potentials `q = f + ig` (the system with `Q_q = [[g, f], [f, −g]]`), and Layers
7–9 for real `f`, where the source's argument is written.

## Conventions

- **Potentials.** A potential is `q : ℝ → ℂ`, integrable on every `[0, t]`; only its values on
  `[0, ∞)` matter. Write `f = Re q`, `g = Im q`; the potential is real when `g = 0`. A
  square-integrable potential is one with `∫₀^∞ |q|² < ∞`; `q_T := q · 1_{(0,T)}` is the truncation.
- **The Dirac system.** `Ω = [[0, 1], [−1, 0]]` and `Q_q(t) = [[g(t), f(t)], [f(t), −g(t)]]`. The
  system is `ΩX′ = zX − Q_q X`, equivalently `X′ = −Ω(z − Q_q)X`, with spectral parameter
  `z ∈ ℂ` (poltoratski2024 line 136–148). This is Romanov's `JX′ + QX = λX` (romanov2014 line 231)
  and Denisov's `D = J d/dr + Q` with `J = Ω` (denisov2006 line 4245–4258) up to the sign of `Q`.
  Sign witness: for the real constant potential `f = c` at `z = 0` the Neumann solution is
  `(e^{ct}, 0)`, so `A(t, 0) = e^{ct}`; the opposite sign `ΩX′ = zX + QX` gives `e^{−ct}`.
- **Fundamental matrix.** `M(t, z) = [[A, B], [C, D]]` with `M(0, z) = 1`; its first column
  `Θ = (A, C)ᵀ` is the Neumann solution and its second column `Φ = (B, D)ᵀ` the Dirichlet solution.
  Free case `q = 0`: `A = D = cos tz`, `C = −B = sin tz` (poltoratski2024 line 192–195).
- **Reflection.** `H#(z) = conj(H(conj z))`. A matrix or function is real entire when it equals its
  reflection.
- **Hermite–Biehler functions.** `E = A − iC` and `Ẽ = B − iD`; free case `E = e^{−itz}`,
  `Ẽ = −i e^{−itz}`.
- **Scattering functions.** `a = e^{itz}(E + iẼ)/2`, `b = e^{itz}(E − iẼ)/2`, so that
  `G = [[a#, b#], [b, a]]` solves `∂ₜG = [[0, e^{−2izt} conj q], [e^{2izt} q, 0]] G`, `G(0) = 1`.
  The potential `q` stands in the lower left entry: this is forced by the Dirac system with
  `Q_q`, as the computed check in §4.1 shows. Tao and Thiele's `a` is the present `a#`
  (poltoratski2024 line 490–491). Witness: for `q = 1` on `[0, 1]`, `|a(1, 5i)| ≈ 1.093` while
  `|a#(1, 5i)| = |a(1, −5i)| ≈ 237.0`; for a constant `q` on `[0, T]` and `z = 0`,
  `a = cosh(|q|T)` and `b = (q/|q|) sinh(|q|T)`.
- **Non-linear Plancherel constant.** In these normalisations
  `∫_ℝ log|a(t, x)| dx = (π/2) ∫₀ᵗ |q|²`. Witness: for `q = 1` on `[0, 1]`,
  `|a(1, x)|² = 1 + sin²(√(x² − 1))/(x² − 1)` and the integral of half its logarithm is
  `π/2 ≈ 1.5708` (numerically `1.5707` on `[−4000, 4000]`); equivalently `y(a(t, iy) − 1) → ½∫₀ᵗ|q|²`
  as `y → ∞` (numerically `0.4987` at `y = 100`). The sources print the constant `1`
  (poltoratski2024 (5.5) line 545–548, mauth2022 (4) line 206–207); Denisov's Krein-system
  identity with constant `π` (denisov2006 (194) line 3250–3255) becomes `π/2` under the
  dictionary `a(r) = 2 Re A(2r)` (denisov2006 line 4230). Only the value `π/2` is used.
- **The half-plane.** `ℂ₊ = {Im z > 0}` is Mathlib's `UpperHalfPlane.upperHalfPlaneSet`; the closed
  half-plane is `{Im z ≥ 0}`. The Poisson kernel is `P(z, x) = Im z / (π |x − z|²)`, Tau Ceti's
  half-space Poisson kernel in dimension `2` (§2.1), the Poisson measure is `dΠ = dx/(1 + x²)` with
  `Π(ℝ) = π` (poltoratski2024 line 250), and a positive Borel measure `ν` on `ℝ` is Poisson-finite
  when `∫ dν/(1 + x²) < ∞`.
- **Fourier transform.** Mathlib's `𝓕 g (w) = ∫ e^{−2πi v w} g(v) dv` (`fourier_real_eq`).
  The Paley–Wiener space is `PW_t = {∫_{−t}^{t} φ(s) e^{isz} ds : φ ∈ L²(−t, t)}`, with
  `‖F‖²_{L²(ℝ)} = 2π ‖φ‖²` and reproducing kernel `sin(t(z − conj λ))/(π(z − conj λ))`.
- **The non-linear Fourier transform.** `q⌃ = b(∞, ·)/a(∞, ·)` on `ℂ₊` and its nontangential
  boundary function on `ℝ`; its first-order term is `∫₀^∞ q(s) e^{2izs} ds`, which at real `x`
  equals `𝓕(q · 1_{[0,∞)})(−x/π)`.
- **de Branges spaces.** `‖F‖²_{B(E)} = ∫ |F(x)/E(x)|² dx` with reproducing kernel
  `K(w, z) = (E(z) conj E(w) − E#(z) conj E#(w)) / (2πi (conj w − z))` (poltoratski2024 line
  213–233); for `E = e^{−itz}` this is the Paley–Wiener kernel.
- **Spectral measures.** The Weyl function is `m = lim_{t→∞} −Ẽ(t, ·)/E(t, ·)` on `ℂ₊`, and the
  Neumann spectral measure `μ` is the Poisson-finite measure with
  `m(z) = c + βz + (1/π)∫ (1/(x − z) − x/(1 + x²)) dμ(x)`, so that `Im m(x + i0) = w(x)` is the
  density of its absolutely continuous part. The Dirichlet spectral measure `μ̃` has Weyl function
  `−1/m`. Free case: `m = i`, `μ = μ̃ = dx`.
- **Boxes.** `Q(s, C) = {z : |Re z − s| ≤ C, |Im z| ≤ C}` (poltoratski2024 line 625), and
  `γ(p) = √2/√(sinh 2p)` (poltoratski2024 (7.4) line 849).
- **Convergence.** "Almost every" refers to Lebesgue measure. Convergence in measure is Mathlib's
  `MeasureTheory.TendstoInMeasure`. Locally uniform convergence is Mathlib's
  `TendstoLocallyUniformlyOn`.
- **Scalars and carriers.** Banach spaces in Layer 1 are over `𝕜 ∈ {ℝ, ℂ}` (`RCLike 𝕜`); `2 × 2`
  matrices are `Matrix (Fin 2) (Fin 2) ℂ`; all types live in `Type`.
- **Norms on `ℂ²`.** The Dirac system and the scattering matrix act on `ℂ² = EuclideanSpace ℂ (Fin 2)`
  with the Euclidean norm `|(u, v)|² = |u|² + |v|²`. A `2 × 2` matrix acts on it through Mathlib's
  `Matrix.toEuclideanCLM`, with the Euclidean operator norm (Mathlib's scoped `Matrix.Norms.L2Operator`).
  Hence `|Θ|² = |A|² + |C|²`, `‖Ω‖ = 1` and `‖Q_q(t)‖ = |q(t)|`, because `Q_q(t)` is real symmetric with
  `Q_q(t)² = |q(t)|² · 1`, so its eigenvalues are `±|q(t)|`. Norm witness: for `q = 1 + i` the Dirac
  coefficient at `z = 0` is `ΩQ_q = [[1, −1], [−1, −1]]`. Its Euclidean operator norm is `√2 = |q|`, while
  its maximum-row-sum norm, which is the operator norm of `Fin 2 → ℂ` with the sup norm, is `2`. The
  bounds on the Dirac coefficient and on `M` in §1.6 and §3.1 hold for the Euclidean norm, not for the
  sup norm.

## Exact supplier contracts

### From Mathlib

All at the pinned Mathlib; paths under `Mathlib/`.

- `AbsolutelyContinuousOnInterval` (`MeasureTheory/Function/AbsolutelyContinuous.lean` line 155),
  defined for maps into any pseudo-metric space through the total-length filter, with
  `AbsolutelyContinuousOnInterval.continuousOn`, `.add`, `.smul`, `.boundedVariationOn`;
  `AbsolutelyContinuousOnInterval.const_of_ae_hasDerivAt_zero`
  (`MeasureTheory/Integral/IntervalIntegral/AbsolutelyContinuousFun.lean` line 171) for maps into a
  normed space; `AbsolutelyContinuousOnInterval.integral_deriv_eq_sub` (line 227) and
  `IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral`
  (`MeasureTheory/Function/AbsolutelyContinuous.lean` line 451) only for real-valued maps. The
  vector-valued fundamental theorem needed in Layer 1 is built from the constancy theorem and the
  Lebesgue differentiation theorem below.
- `IsPicardLindelof` and `ODE.picard` (`Analysis/ODE/PicardLindelof.lean` lines 80, 106), which
  require a field continuous in time; `ODE_solution_unique_of_mem_Ioo`
  (`Analysis/ODE/ExistUnique.lean` line 279). Used only in compatibility Checks.
- `VitaliFamily.ae_tendsto_lintegral_enorm_sub_div` (`MeasureTheory/Covering/Differentiation.lean`
  line 819, Lebesgue points of a locally integrable function), `VitaliFamily.ae_tendsto_rnDeriv`
  (line 658), `VitaliFamily.ae_tendsto_average` (line 856) and
  `Besicovitch.ae_tendsto_rnDeriv` (`MeasureTheory/Covering/Besicovitch.lean` line 1077), applied
  to the Vitali family of closed balls in `ℝ`.
- `MeasureTheory.TendstoInMeasure` (`MeasureTheory/Function/ConvergenceInMeasure.lean` line 57),
  `tendstoInMeasure_of_tendsto_eLpNorm` (line 445), `TendstoInMeasure.exists_seq_tendsto_ae`
  (line 266).
- `fourier_real_eq` (`Analysis/Fourier/FourierTransform.lean` line 483, the kernel
  `e^{−2πi v w}`) and `MeasureTheory.Lp.fourierTransformₗᵢ` (`Analysis/Fourier/LpSpace.lean` line 51,
  the `L²` Fourier transform as a linear isometry equivalence); `Measure.ext_of_charFun`
  (`MeasureTheory/Measure/CharacteristicFunction/Basic.lean` line 257, finite measures with equal
  characteristic functions are equal).
- `PhragmenLindelof.right_half_plane_of_bounded_on_real` (`Analysis/Complex/PhragmenLindelof.lean`
  line 717); `TendstoLocallyUniformlyOn.differentiableOn`
  (`Analysis/Complex/LocallyUniformLimit.lean` line 136); `hasFDerivAt_integral_of_dominated_of_fderiv_le`
  (`Analysis/Calculus/ParametricIntegral.lean` line 222).
- `InnerProductSpace.HarmonicOnNhd`, `HarmonicAt.differentiableAt_complex_partial`
  (`Analysis/Complex/Harmonic/Analytic.lean` line 35: the complex partial `∂u/∂x − i ∂u/∂y` of a
  harmonic function is holomorphic), `InnerProductSpace.HarmonicOnNhd.exists_analyticOnNhd_ball_re_eq`
  (line 74, on balls only) and `InnerProductSpace.bounded_harmonic_on_complex_plane_is_constant`
  (`Analysis/Complex/Harmonic/Liouville.lean` line 52).
- `WeakDual.isCompact_closedBall` (`Analysis/Normed/Module/WeakDual.lean` line 270, Banach–Alaoglu:
  closed balls of the dual of a normed space over a proper field are weak-* compact), in §2.5.
- `ContractingWith` (`Topology/MetricSpace/Contracting.lean` line 42, a Lipschitz self-map with constant
  `K < 1`) for the Picard scheme of §1.2; `MeasureTheory.Measure.rnDeriv` and
  `MeasureTheory.Measure.singularPart` (`MeasureTheory/Measure/Decomposition/Lebesgue.lean` lines 80, 73,
  the Lebesgue decomposition `ν = (dν/dx) dx + ν_s` when `ν` has one with respect to Lebesgue measure) in
  §2.4 and §6.7; `MeasureTheory.measure_limsup_atTop_eq_zero`
  (`MeasureTheory/OuterMeasure/BorelCantelli.lean` line 62: if `Σ μ(sᵢ) < ∞` then `limsup sᵢ` is null) in
  §9.3.
- `Matrix.det_fin_two` (`LinearAlgebra/Matrix/Determinant/Basic.lean` line 815), `NormedSpace.exp`
  for the constant-coefficient Check, `UpperHalfPlane.upperHalfPlaneSet`.
- For Liouville's formula in §1.4: `Matrix.det_apply` (`LinearAlgebra/Matrix/Determinant/Basic.lean`
  line 66, the Leibniz expansion of `det` as a signed sum over permutations of products of entries),
  `Matrix.trace_mul_comm` (`LinearAlgebra/Matrix/Trace.lean` line 156, `tr(AB) = tr(BA)`),
  `Matrix.mul_nonsing_inv` (`LinearAlgebra/Matrix/NonsingularInverse.lean` line 209, `AA⁻¹ = 1` when
  `det A` is a unit), `HasFDerivAt.comp_hasDerivAt` (`Analysis/Calculus/Deriv/Comp.lean` line 375, the
  chain rule along a curve) and `HasFDerivAt.restrictScalars`
  (`Analysis/Calculus/FDeriv/RestrictScalars.lean` line 54). Also
  `LipschitzWith.comp_absolutelyContinuousOnInterval` (`MeasureTheory/Function/AbsolutelyContinuous.lean`
  line 344: a Lipschitz map into a pseudo-metric space composed with an absolutely continuous curve is
  absolutely continuous), applied to the entry maps of the matrix, and `EuclideanSpace.equiv`
  (`Analysis/InnerProductSpace/PiL2.lean` line 296, the continuous linear equivalence
  `EuclideanSpace 𝕜 ι ≃L[𝕜] (ι → 𝕜)` that is the identity on coordinates), for the transport to the
  Euclidean carrier. The derivative of `det` is Tau Ceti's (below).
- For the Euclidean carrier of the Dirac system: `Matrix.toEuclideanCLM` (`Analysis/CStarAlgebra/Matrix.lean`
  line 101, the star-algebra equivalence of `Matrix n n 𝕜` with `EuclideanSpace 𝕜 n →L[𝕜] EuclideanSpace 𝕜 n`
  given by the standard basis, for `RCLike 𝕜`), with the scoped Euclidean operator norm
  `Matrix.Norms.L2Operator` and `Matrix.l2_opNorm_toEuclideanCLM` (line 240, the two norms agree).
- For the Hardy space in §2.6 and §2.8: `ConvexOn.map_integral_le` (`Analysis/Convex/Integral.lean` line
  196, Jensen's inequality for a probability measure, with `f` and `g ∘ f` integrable and `g` continuous
  and convex on a closed convex set), `convexOn_exp` (`Analysis/Convex/SpecificFunctions/Basic.lean` line
  62), `MeasureTheory.lintegral_liminf_le` (`MeasureTheory/Integral/Lebesgue/Add.lean` line 237, Fatou's
  lemma for measurable `ℝ≥0∞`-valued functions) and `MeasureTheory.lintegral_lintegral_swap`
  (`MeasureTheory/Measure/Prod.lean` line 1102, Tonelli for s-finite measures).
- For the half-plane Poisson kernel in §2.1: `Complex.orthonormalBasisOneI`
  (`Analysis/InnerProductSpace/PiL2.lean` line 853, the orthonormal basis `1, i` of `ℂ` over `ℝ`, whose
  coordinate map `ℂ ≃ₗᵢ[ℝ] EuclideanSpace ℝ (Fin 2)` is `z ↦ (Re z, Im z)`),
  `EuclideanSpace.volume_ball_fin_two` (`MeasureTheory/Measure/Lebesgue/VolumeOfBalls.lean` line 395, the
  ball of radius `r` in `EuclideanSpace ℝ (Fin 2)` has volume `πr²`), `LinearIsometryEquiv.measurePreserving`
  (`MeasureTheory/Measure/Haar/InnerProductSpace.lean` line 151, a linear isometry of finite-dimensional
  real inner product spaces preserves volume), `DifferentiableOn.analyticAt` (`Analysis/Complex/CauchyIntegral.lean`
  line 723, a function complex differentiable on a neighbourhood of a point is analytic there) and
  `AnalyticAt.harmonicAt_re` (`Analysis/InnerProductSpace/Harmonic/Constructions.lean` line 55, the real part of
  a complex-analytic function is harmonic).
- The disc Poisson kernel `poissonKernel c w ζ = (|ζ − c|² − |w − c|²)/|ζ − w|²` (`Analysis/Complex/Poisson.lean`
  line 54, in the root namespace and without the factor `1/(2π)`, which Mathlib's `Real.circleAverage`
  carries), so that `poissonKernel 0 w ζ = (1 − |w|²)/|ζ − w|²` for `|ζ| = 1`, in §2.1's Cayley comparison
  and §2.5; and the Poisson formula `InnerProductSpace.HarmonicOnNhd.circleAverage_poissonKernel_smul`
  (`Analysis/Complex/Harmonic/Poisson.lean` line 92: a real function harmonic on a neighbourhood of the
  closed disc `closedBall c R` is, at every `w` of the open disc, the circle average of
  `poissonKernel c w` times it), used in a §2.1 Check.

### From Tau Ceti

All at the pinned Tau Ceti; paths under `TauCeti/`.

- `TauCeti.exists_continuousOn_eq_forall_mem_Icc_eq_picard` and
  `TauCeti.eqOn_of_forall_mem_Icc_eq_picard` (`Analysis/ODE/Caratheodory.lean` lines 196, 219):
  existence and uniqueness for `x′ = M(t)x + F(t)` on `[a, b]` over `ℝ` when `M` is strongly
  measurable and **essentially bounded** and `F` integrable. Layer 1 replaces essential
  boundedness by integrability of `‖M‖` and adds the parameter; the bounded case is a Check.
- `TauCeti.le_mul_exp_of_le_add_mul_integral` (`Analysis/ODE/Gronwall.lean` line 59): Grönwall for
  continuous `φ` with `φ(t) ≤ c + K∫ₐᵗ φ`, `K ≥ 0` constant. Layer 1 states the integrable-kernel
  form; the constant kernel is a Check.
- `TauCeti.dysonSeriesLeft` and `TauCeti.hasDerivAt_dysonSeriesLeft`
  (`Analysis/ODE/DysonSeries.lean` lines 165, 281): the time-ordered exponential of a
  **continuous** path in a Banach algebra; compatibility Check for the propagator.
- `Matrix.hasFDerivAt_det` (`Analysis/Calculus/FDeriv/Det.lean` line 110): Jacobi's formula. Over a
  nontrivially normed field, with Mathlib's `L∞` operator norm on matrices
  (`open scoped Matrix.Norms.Operator`), `det` has Fréchet derivative `H ↦ det A · tr(A⁻¹H)` at
  every square matrix `A` whose determinant is a unit; the same file has the adjugate form
  `tr(adj A · H)` at every matrix (`Matrix.fderiv_det_apply_adjugate`, line 75). §1.4 consumes the
  invertible form. `Matrix.det_exp` (`Analysis/Normed/Algebra/MatrixExponential.lean` line 75):
  `det(exp A) = exp(tr A)` for a square matrix over an `RCLike` field, the constant-coefficient case
  of §1.4 and its compatibility Check.
- `TauCeti.maximalFunction` (`MeasureTheory/Integral/MaximalFunction.lean` line 125, the centred
  maximal function `sup_{r>0} ⨍_{B(x,r)} ‖f‖` with values in `ℝ≥0∞`),
  `TauCeti.mul_measure_lt_maximalFunction_le` (line 353, weak type `(1,1)` with constant `4^{dim}`
  for an additive Haar measure) and `TauCeti.lintegral_rpow_maximalFunction_le` (line 439, strong
  type `(p,p)` for `1 < p`), applied on `ℝ` with Lebesgue measure.
- `TauCeti.norm_convolutionLp_le` and `TauCeti.convolutionLp_ae_eq_convolution`
  (`MeasureTheory/Function/Lp/Convolution.lean` lines 117, 197): Young's inequality. On a
  finite-dimensional real normed space with an additive Haar measure, for `1 ≤ p < ∞` and a real
  integrable kernel `k`, convolution with `k` is a continuous linear operator on `Lᵖ` of norm at most
  `∫ |k|`, represented almost everywhere by the pointwise convolution `∫ k(y) f(x − y) dy` for a
  Banach-space-valued `f`. §5.1 applies it on `ℝ` with `p = 2`.
- `MeasureTheory.Lp.dualOneEquiv` (`MeasureTheory/Function/L1Space/Dual.lean` line 102): for a
  **finite** measure `μ` and `𝕜 = ℝ` or `ℂ`, integration against an essentially bounded function is a
  linear isometric equivalence `L^∞(μ) ≃ L¹(μ)*`. §2.5 applies it to the finite Poisson measure `Π`.
- `TauCeti.exists_isFiniteMeasure_eq_nevanlinnaKernel_add` and `TauCeti.nevanlinnaKernel_im`
  (`Analysis/Complex/Pick/Nevanlinna.lean` lines 436, 332): a function holomorphic on
  `UpperHalfPlane.upperHalfPlaneSet` with nonnegative imaginary part is
  `βz + ∫ (1 + xz)/(x − z) dρ(x) + Re F(i)` with `ρ` finite and `β ≥ 0`, and the kernel has
  imaginary part `Im z (1 + x²)/|x − z|²`. Layer 2 and Layer 6 consume it unchanged.
- `TauCeti.integral_circle_eq_atom_add_integral_cayleyPushforward` and
  `MeasureTheory.Measure.cayleyPushforward` (`Analysis/Complex/Pick/Nevanlinna.lean` lines 188, 176): for a
  finite measure `ν` on Mathlib's `Circle` and a continuous `f` from `Circle` to a real Banach space,
  `∫ f dν = ν({1}) f(1) + ∫_ℝ f((x − i)/(x + i)) dν_C(x)`, where `ν_C` is the Cayley pushforward: the
  restriction of `ν` to the punctured circle carried to `ℝ` by the inverse of the boundary Cayley map
  `TauCeti.boundaryCayley`, `x ↦ (x − i)/(x + i)`. §6.6 uses it to read weak convergence of the Cayley
  images of the measures `μ_T` on the circle as convergence of integrals over `ℝ` plus the atoms at `1`.
- `TauCeti.PhragmenLindelof.upper_half_plane_of_isBounded` (`Analysis/Complex/PhragmenLindelof.lean`
  line 33): a bounded holomorphic function on `ℂ₊`, continuous on the closed half-plane, is bounded
  by its bound on `ℝ`.
- The half-space Poisson kernel, in `Analysis/PDE/GreenFunction/HalfSpace.lean`: for a unit inward
  normal `v` of `EuclideanSpace ℝ (Fin n)`, `TauCeti.halfSpacePoissonKernel n v x y`
  (line 122) is `2⟨v, x⟩/(n ωₙ ‖y − x‖ⁿ)`, with pole `x`, point `y` and `ωₙ` the volume of the unit
  ball. `TauCeti.halfSpacePoissonKernel_pos` (line 147): positive for `0 < ⟨v, x⟩` and `y ≠ x`.
  `TauCeti.harmonicOnNhd_halfSpacePoissonKernel_left` (line 177): for `y` on the hyperplane
  `⟨v, y⟩ = 0`, harmonic in the pole on the open half-space `0 < ⟨v, x⟩`.
  `TauCeti.halfSpacePoissonKernel_le_mul` (line 198): for `y` on the hyperplane, `0 ≤ ⟨v, x⟩`,
  `0 < ⟨v, x₁⟩` and `‖y − x₁‖ ≤ A‖y − x‖`, the bound `K(x, y) ≤ (⟨v, x⟩/⟨v, x₁⟩) Aⁿ K(x₁, y)`.
- The half-space Poisson integral, in `Analysis/PDE/PoissonIntegral/HalfSpace.lean`, against the
  Lebesgue measure of the hyperplane `(ℝ ∙ v)ᗮ`. `TauCeti.integral_halfSpacePoissonKernel` (line 135):
  mass one, `∫ K(x, y) dy = 1`, for `0 < ⟨v, x⟩`. `TauCeti.halfSpacePoissonIntegral` (line 179): the
  Poisson integral `∫ K(x, y) g(y) dy` of real data `g` on the hyperplane.
  `TauCeti.harmonicOnNhd_halfSpacePoissonIntegral` (line 419): harmonic on the open half-space for
  bounded, almost everywhere strongly measurable `g`. `TauCeti.tendsto_halfSpacePoissonIntegral`
  (line 297): for such `g` continuous at a point `ξ` of the hyperplane, `P[g](x) → g(ξ)` as `x → ξ`
  through the open half-space, without restriction on the approach.
- Layer 2 uses these at `n = 2` with `v = (0, 1)`, identifying `ℂ` with `EuclideanSpace ℝ (Fin 2)`
  through `Complex.orthonormalBasisOneI` (Mathlib, above). Then `⟨v, z⟩ = Im z` and `ω₂ = π`, so the kernel
  is `Im z/(π|x − z|²)`. The hyperplane is the real axis, with Lebesgue measure. Complex data are
  treated through their real and imaginary parts.
- `DifferentiableOn.hasDerivAt_wedgeIntegral_upperHalfPlane`
  (`Analysis/Complex/UpperHalfPlane/Primitive.lean` line 118): every holomorphic function on `ℂ₊`
  has a primitive there; with Mathlib's complex partial this gives harmonic conjugates and
  logarithms of zero-free holomorphic functions on `ℂ₊`.
- `TauCeti.harmonicOnNhd_of_setAverage_ball_eq`
  (`Analysis/InnerProductSpace/Harmonic/MeanValue/Converse.lean` line 69): a continuous function with
  the mean-value property on small balls is harmonic (used for reflection of harmonic functions
  across `ℝ`).
- `TauCeti.eqOn_const_ball_of_tendsto_circleMap` and `AnalyticOnNhd.le_circleAverage_log_norm`
  (`Analysis/Complex/RadialUniqueness.lean` lines 198, 76): a bounded holomorphic function on a disc
  with radial limit `a` on a set of angles of positive measure is the constant `a`, and Jensen's
  lower bound for circle averages of `log‖f‖`; transported to `ℂ₊` by the Cayley transform
  `TauCeti.bijOn_sub_I_div_add_I_upperHalfPlaneSet` and `TauCeti.boundaryCayley`
  (`Analysis/Complex/UpperHalfPlane/Cayley.lean`).

### From TauCetiRoadmap.AnalyticNumberTheoryPartI

- §0.23 (finite-order Hadamard factorization): a nonzero entire function of order at most `ρ`, with
  `n = ⌊ρ⌋` and `ρ < n + 1`, is `z^m exp(h(z)) ∏ E_n(z/α)` over its nonzero zeros with
  multiplicity, `h` a polynomial of degree at most `n` and `Σ |α|^{−n−1} < ∞`. Layer 7 uses it with
  `ρ = n = 1` for the Hermite–Biehler functions `E(t, ·)`, which have order at most one by
  §3.1.

## How to read the build

Layer 1 is the analytic engine: integrable-coefficient linear systems, their propagators and their
holomorphic dependence on a parameter. Layer 2 is the function theory of the upper half-plane at
the generality the later layers use. Layer 3 applies Layer 1 to the Dirac system and proves the
algebra and the Hermite–Biehler property of `E` and `Ẽ`. Layer 4 passes to the scattering
functions `a`, `b` and proves, on a finite interval, the SU(1,1) structure, the composition laws, the
half-plane bounds, outerness of `a` and the non-linear Plancherel identity. Layer 5 takes the limit
`t → ∞` for square-integrable potentials, defines the non-linear Fourier transform and proves its
boundary theory. Layer 6 is the spectral theory: de Branges spaces, Weyl functions, spectral measures
and the Szegő condition. Layers 7–9 carry out the proof of the non-linear Carleson theorem for real
potentials: Layer 7 the meromorphic-inner-function tools, Layer 8 the universality and
approximation results, Layer 9 the resonance argument and the conclusion. Every layer uses only
earlier layers and the suppliers above. Layers 3–5 do not use Layer 6, and Layer 6 uses Layer 5
only for the Szegő condition.

## Layer 1: Carathéodory linear systems with a holomorphic parameter

Throughout, `𝕜 ∈ {ℝ, ℂ}`, `E` is a Banach space over `𝕜`, `I ⊆ ℝ` is an interval, and a coefficient
is a map `P : ℝ → (E →L[𝕜] E)` that is almost everywhere strongly measurable on `I` with `‖P‖`
integrable on every compact subinterval of `I`.

### 1.1 The integral Grönwall inequality with an integrable kernel

Let `a ≤ b`, let `β : ℝ → ℝ` be nonnegative and integrable on `[a, b]`, let `α ∈ ℝ`, and let
`u : ℝ → ℝ` be measurable and bounded on `[a, b]` with `u(t) ≤ α + ∫ₐᵗ β u` for every `t ∈ [a, b]`.
Prove that `u(t) ≤ α exp(∫ₐᵗ β)` for every `t ∈ [a, b]`, and the backward form on `[a, b]` with
`∫ₜᵇ`. Route: `v(t) = ∫ₐᵗ β u` is absolutely continuous with `v′ = βu ≤ αβ + βv` almost everywhere,
so `(v e^{−∫ₐᵗβ})′ ≤ αβ e^{−∫ₐᵗβ}` almost everywhere; integrate with the constancy theorem
(coddingtonlevinson1955, Ch. 1, waived; the constant-kernel case is Tau Ceti
`TauCeti.le_mul_exp_of_le_add_mul_integral`).

*Needs:* Mathlib `AbsolutelyContinuousOnInterval.const_of_ae_hasDerivAt_zero`,
`IntervalIntegrable.absolutelyContinuousOnInterval_intervalIntegral`, `VitaliFamily.ae_tendsto_average`.

**Checks.**

- Constant kernel `β = K ≥ 0` on `[a, b]` and continuous `u`: the conclusion is
  `u(t) ≤ α e^{K(t−a)}`, which is Tau Ceti `TauCeti.le_mul_exp_of_le_add_mul_integral`.
- Equality case: `α = 2`, `β = 1_{[0,1]}` on `[0, 2]` and `u(t) = 2e^{min(t,1)}` satisfy the hypothesis
  with equality, and the bound `2e^{min(t,1)}` is attained, so no smaller constant is possible.
- Negative kernels are excluded: `u ≡ 1/2`, `β ≡ −1`, `α = 1` on `[0, 1]` satisfy
  `1/2 ≤ 1 − t/2`, yet `1/2 > e^{−1} ≈ 0.368`; a statement without `β ≥ 0` is false.
- Degenerate kernel `β = 0`: the conclusion is `u ≤ α`.

### 1.2 The linear Carathéodory theorem

Let `a ≤ b`, `t₀ ∈ [a, b]`, `y₀ ∈ E`, let `P` be a coefficient on `[a, b]` and let `F : ℝ → E` be
integrable on `[a, b]`. Prove that there is exactly one `Y : ℝ → E`, continuous on `[a, b]`, with
`Y(t) = y₀ + ∫_{t₀}^{t} (P(s)Y(s) + F(s)) ds` for every `t ∈ [a, b]`. Prove that this `Y` is
absolutely continuous on `[a, b]`, has derivative `P(t)Y(t) + F(t)` at almost every `t ∈ (a, b)`, and
satisfies `‖Y(t)‖ ≤ (‖y₀‖ + |∫_{t₀}^{t} ‖F‖|) exp|∫_{t₀}^{t} ‖P‖|`; conversely an absolutely continuous
`Y` with `Y(t₀) = y₀` and derivative `P Y + F` almost everywhere is this solution. Route: Picard
iteration in `C([a, b], E)`, where the `n`-th iterate moves two curves at time `t` by at most
`(∫_{t₀}^{t}‖P‖)ⁿ/n!` times their distance, so that some iterate is a contraction; uniqueness by 1.1
(coddingtonlevinson1955, Ch. 2 §1, waived; romanov2014 line 212–224 for the canonical-system case).

*Needs:* §1.1; Mathlib Bochner interval integrals, `ContractingWith`,
`AbsolutelyContinuousOnInterval.const_of_ae_hasDerivAt_zero`, `VitaliFamily.ae_tendsto_average`.

**Checks.**

- Zero data `P = 0`, `F = 0`: `Y ≡ y₀`.
- Unbounded integrable coefficient: `E = ℂ`, `P(t) = t^{−1/2}` on `(0, 1]`, `t₀ = 0`, `F = 0` gives
  `Y(t) = y₀ e^{2√t}`; `‖P‖` is integrable but not essentially bounded, so Tau Ceti
  `TauCeti.exists_continuousOn_eq_forall_mem_Icc_eq_picard` does not apply while the theorem does.
- Agreement with Tau Ceti: for `𝕜 = ℝ` and essentially bounded `P`, the solution is the one of
  `TauCeti.exists_continuousOn_eq_forall_mem_Icc_eq_picard`, by `TauCeti.eqOn_of_forall_mem_Icc_eq_picard`.
- Integrability is necessary: `P(t) = 1/t` on `(0, 1]` is not integrable at `0`; from `t₀ = 0` every
  `Y(t) = ct` solves `Y′ = Y/t` with `Y(0) = 0`, so uniqueness fails, and no solution has
  `Y(0) = y₀ ≠ 0`.

### 1.3 The propagator

For a coefficient `P` on `I` and `s, t ∈ I`, define the propagator `N_P(t, s) ∈ E →L[𝕜] E` as the
value at `t` of the solution of 1.2 in the Banach space `E →L[𝕜] E` with coefficient
`X ↦ P(r) ∘ X` and initial value `1` at `s`; equivalently `N_P(t, s) y` is the value at `t` of the
solution with value `y` at `s` (romanov2014 line 213–224 for the chain rule).

- `N_P(t, s) = 1 + ∫_s^t P(r) N_P(r, s) dr`, and `N_P(t, s) y` solves 1.2 with `F = 0`.
- `N_P(t, t) = 1`, `N_P(t, r) N_P(r, s) = N_P(t, s)`, so `N_P(t, s)` is invertible with inverse
  `N_P(s, t)`.
- `‖N_P(t, s)‖ ≤ exp|∫_s^t ‖P‖|` and `‖N_P(t, s) − 1‖ ≤ exp|∫_s^t ‖P‖| − 1`.
- `(t, s) ↦ N_P(t, s)` is continuous in operator norm, and `s ↦ N_P(t, s)` has derivative
  `−N_P(t, s) P(s)` at almost every `s`.
- Variation of constants: the solution of 1.2 is `N_P(t, t₀) y₀ + ∫_{t₀}^{t} N_P(t, s) F(s) ds`.
- Dyson expansion: `N_P(t, s) = Σₙ ∫_{s<r₁<⋯<rₙ<t} P(rₙ)⋯P(r₁)` for `s ≤ t`, norm-convergent,
  the `n`-th term bounded by `(∫_s^t ‖P‖)ⁿ/n!`.
- Locality: `N_P(t, s)` depends only on `P` almost everywhere on the interval between `s` and `t`.

*Needs:* §1.2; Mathlib `ContinuousLinearMap` composition and Bochner integrals in `E →L[𝕜] E`.

**Checks.**

- Constant coefficient `P = A`: `N_P(t, s) = exp((t − s)A)` (Mathlib `NormedSpace.exp`).
- Agreement with Tau Ceti: for continuous `P` on `ℝ`, `N_P(t, 0) = TauCeti.dysonSeriesLeft P t`.
- Time ordering: with `A = [[0,1],[0,0]]` on `[0, 1)` and `B = [[0,0],[1,0]]` on `[1, 2]`,
  `N_P(2, 0) = exp(B) exp(A) = [[1,1],[1,2]]`; the reversed product `exp(A) exp(B) = [[2,1],[1,1]]`
  and the exponential of the integral `exp(A + B) = [[cosh 1, sinh 1],[sinh 1, cosh 1]]` both differ.
- Degenerate coefficient `P = 0`: `N_P ≡ 1`.

### 1.4 Liouville's formula

For `E = Fin n → 𝕜` or `E = EuclideanSpace 𝕜 (Fin n)` and a matrix coefficient `P`, prove
`det N_P(t, s) = exp(∫_s^t tr P)` for `s, t ∈ I`, with `N_P(t, s)` and `P(r)` identified with their
matrices in the standard basis (coddingtonlevinson1955, Ch. 1 §7, waived; romanov2014 line 218–219 for
`det ≡ 1`). Route: fix `s`. At almost every `t` the curve `N_P(·, s)` has derivative `P(t)N` at `t`, where
`N = N_P(t, s)` is invertible (§1.2, §1.3). The chain rule and Jacobi's formula at an invertible matrix
(Tau Ceti `Matrix.hasFDerivAt_det`, restricted to real scalars when `𝕜 = ℂ`) then give
`∂ₜ det N_P(t, s) = det N · tr(N⁻¹P(t)N) = det N · tr P(t)`. Each entry `N ↦ (N e_j)_i` is `1`-Lipschitz
on `E →L[𝕜] E`, since `|(N e_j)_i| ≤ ‖N e_j‖ ≤ ‖N‖`. So the entries of the absolutely continuous curve
`N_P(·, s)` (§1.2) are absolutely continuous (Mathlib
`LipschitzWith.comp_absolutelyContinuousOnInterval`). The function `det N_P(·, s)` is then absolutely
continuous, being a finite sum of products of these entries (the Leibniz expansion). It is therefore an
absolutely continuous solution of the scalar equation `y′ = (tr P) y`, `y(s) = 1`, whose coefficient is
integrable because `|tr P| ≤ n‖P‖`. By the uniqueness clause of §1.2 it equals `exp(∫_s^t tr P)`, which
solves the same equation. The same formula holds for `E = EuclideanSpace 𝕜 (Fin n)`, the carrier of §3.1.
Mathlib's `EuclideanSpace.equiv` is a continuous linear equivalence with `Fin n → 𝕜` that is the identity
on coordinates. Conjugation by it carries a coefficient to a coefficient, and so, by the uniqueness clause
of §1.2, the propagator to the propagator. It changes neither the matrices in the standard basis nor their
determinants and traces.

*Needs:* §1.2 (absolute continuity, the derivative almost everywhere, the uniqueness clause), §1.3
(invertibility); Tau Ceti `Matrix.hasFDerivAt_det`; Mathlib `Matrix.det_apply`,
`Matrix.trace_mul_comm`, `Matrix.mul_nonsing_inv`, `HasFDerivAt.comp_hasDerivAt`,
`HasFDerivAt.restrictScalars`, `LipschitzWith.comp_absolutelyContinuousOnInterval`,
`AbsolutelyContinuousOnInterval.add`, `AbsolutelyContinuousOnInterval.smul`, `EuclideanSpace.equiv`.

**Checks.**

- Diagonal `P = diag(p₁, p₂)`: `N = diag(e^{∫p₁}, e^{∫p₂})` and both sides are `e^{∫(p₁ + p₂)}`.
- The time-ordered example of 1.3: `det [[1,1],[1,2]] = 1 = e^{tr A + tr B}`.
- Trace-free Dirac coefficient: `−Ω(z − Q_q)` has trace `0`, so `det = 1` (used in §3.1).
- Agreement with Tau Ceti: for a constant coefficient `P = A`, `N_P(t, s) = exp((t − s)A)` (§1.3), and
  the formula is Tau Ceti `Matrix.det_exp` at `(t − s)A`. For `A = [[1, 1], [0, 1]]`,
  `exp(tA) = e^t [[1, t], [0, 1]]` has determinant `e^{2t} = e^{t tr A}`; a formula with the sum of
  the entries (`e^{3t}`) or with `det A` (`e^t`) in place of the trace gives the wrong value.

### 1.5 Continuous dependence on the coefficient

For coefficients `P, P′` on `[a, b]` and `s, t ∈ [a, b]`, prove
`‖N_{P′}(t, s) − N_P(t, s)‖ ≤ ‖P′ − P‖_{L¹} exp(‖P′‖_{L¹} + ‖P‖_{L¹})`, all norms over the interval
between `s` and `t`; hence `P_n → P` in `L¹([a, b])` implies `N_{P_n} → N_P` uniformly on
`[a, b]²`. Route: subtract the integral equations and apply 1.1 (coddingtonlevinson1955, Ch. 1 §7,
waived).

*Needs:* §1.1, §1.3.

**Checks.**

- Scalar constants `p = 0`, `p′ = 1` on `[0, 1]`: `|e − 1| ≈ 1.718 ≤ 1 · e¹ ≈ 2.718`.
- `P′ = P`: the bound is `0`.
- Locality: `P′ = P` off a null set gives `N_{P′} = N_P`.

### 1.6 Holomorphic dependence on a parameter

Let `E` be a complex Banach space, `U ⊆ ℂ` open, and `P : ℝ × ℂ → (E →L[ℂ] E)` such that
`t ↦ P(t, z)` is a coefficient on `I` for each `z ∈ U`, `z ↦ P(t, z)` is holomorphic on `U` for almost
every `t ∈ I`, and for every compact `K ⊆ U` there is `m_K` integrable on compact subintervals of
`I` with `‖P(t, z)‖ ≤ m_K(t)` for `z ∈ K` and almost every `t`. Prove that for `s, t ∈ I` the map
`z ↦ N_{P(·,z)}(t, s)` is holomorphic on `U`, that `(t, s, z) ↦ N_{P(·,z)}(t, s)` is continuous on
`I × I × U`, that `z ↦ N_{P(·,z)}(·, s)` is holomorphic from `U` into `C(J, E →L[ℂ] E)` for every compact
`J ⊆ I`, with `‖N_{P(·,z)}(t, s)‖ ≤ exp|∫_s^t m_K|` for `z ∈ K`, and that
`∂_z N(t, s) = ∫_s^t N(t, r) ∂_z P(r, z) N(r, s) dr`. In particular an entire coefficient (`U = ℂ`)
gives entire propagators (romanov2014 line 220–222; coddingtonlevinson1955, Ch. 1 §7, waived).
Route: each Dyson term is a parametric integral of a holomorphic integrand dominated on compacts,
hence holomorphic, and the series converges locally uniformly.

*Needs:* §1.3; Mathlib `hasFDerivAt_integral_of_dominated_of_fderiv_le`,
`TendstoLocallyUniformlyOn.differentiableOn`.

**Checks.**

- `P(t, z) = zA`: `N(t, s) = exp((t − s)zA)`, entire in `z`.
- The domination hypothesis is needed: `E = ℂ`, `I = [0, 1]`, `P(t, z) = 1/(z − t)`, `N(t, 0) = z/(z − t)`
  is holomorphic on `U = {Re z > 2}` where the bound holds, and has a pole at `z = t` for every
  `t ∈ (0, 1]`, so no statement on a `U` meeting `[0, 1]` holds.
- The Dirac coefficient `P(t, z) = −Ω(z − Q_q(t)) = [[f(t), −z − g(t)], [z − g(t), −f(t)]]` on
  `EuclideanSpace ℂ (Fin 2)` is entire with `m_K(t) = sup_K |z| + |q(t)|` in the Euclidean operator norm.
  In the maximum-row-sum norm of `Fin 2 → ℂ` the coefficient at `z = 0` has norm `|f(t)| + |g(t)|`, which
  exceeds `|q(t)|` whenever `f(t)g(t) ≠ 0`: for `q = 1 + i` it is `2 > √2 = |q|`. At a fixed `z` the conclusion
  is the fixed-parameter existence statement of 1.2.

### 1.7 The nonlinear Carathéodory theorem

Let `t₀ ∈ I`, `x₀ ∈ E` and `F : ℝ × E → E` with `t ↦ F(t, x)` strongly measurable on `I` for each
`x`, `‖F(t, x) − F(t, y)‖ ≤ L(t)‖x − y‖` and `‖F(t, x₀)‖ ≤ m(t)` for almost every `t ∈ I` and all
`x, y`, where `L, m ≥ 0` are integrable on compact subintervals of `I`. Prove that there is exactly
one `Y` continuous on `I` with `Y(t) = x₀ + ∫_{t₀}^{t} F(s, Y(s)) ds` for `t ∈ I`; that it is absolutely
continuous on compact subintervals with `‖Y(t) − x₀‖ ≤ |∫_{t₀}^{t} m| exp|∫_{t₀}^{t} L|`; and that two
initial values give solutions at distance at most `‖x₀ − x₀′‖ exp|∫_{t₀}^{t} L|`. Prove the local form:
if the two bounds hold only for `x, y` in the closed ball of radius `r` about `x₀` and for `t` in
`[t₀, t₀ + δ] ⊆ I`, there is a unique solution on `[t₀, t₀ + τ]` for every `τ ≤ δ` with
`(∫_{t₀}^{t₀+τ} m) exp(∫_{t₀}^{t₀+τ} L) ≤ r`. The composite `s ↦ F(s, Y(s))` is strongly measurable
because `Y` is a uniform limit of step functions and `F` is Lipschitz in `x`
(coddingtonlevinson1955, Ch. 2 §1, waived).

*Needs:* §1.1, §1.2's Picard scheme; Mathlib `StronglyMeasurable` limits.

**Checks.**

- Agreement with Mathlib: a field satisfying `IsPicardLindelof` with constant Lipschitz bound gives the
  same solution, by `ODE_solution_unique_of_mem_Ioo`.
- The linear field `F(t, x) = P(t)x + G(t)` satisfies the hypotheses with `L = ‖P‖`,
  `m = ‖P‖‖x₀‖ + ‖G‖`, and the solution is that of 1.2.
- Lipschitz bound needed: `F(t, x) = 2√|x|` on `ℝ` from `x₀ = 0` has the two solutions `0` and `t²`.
- Global Lipschitz bound needed for the global statement: `F(t, x) = x²`, `x₀ = 1` gives `1/(1 − t)`,
  which leaves every ball before `t = 1`. On the ball of radius `r = 1` the local bounds are
  `L = 2(1 + r) = 4` and `m = 1`, and `τ = 0.1` satisfies `τ e^{4τ} ≈ 0.149 ≤ 1`; the local form
  gives the solution on `[0, 0.1]`, where indeed `1/(1 − t) ≤ 1.12` stays in the ball.

### Examples

- The scalar equation `y′ = p(t) y` with `p ∈ L¹_loc` has propagator `exp(∫_s^t p)`.
- The Dirac fundamental matrix of §3.1 is the propagator on `EuclideanSpace ℂ (Fin 2)` of an entire,
  trace-free coefficient with `m_K(t) = sup_K |z| + |q(t)|` in the Euclidean operator norm.
- The scattering matrix of §4.1 is the propagator of an entire coefficient with
  `m_K(t) = |q(t)| e^{2t sup_K |Im z|}`.

### Dependencies

Mathlib (Bochner integration, absolutely continuous functions, Lebesgue differentiation, parametric
integrals, locally uniform limits of holomorphic functions, determinants and traces of matrices);
Tau Ceti Jacobi's formula (`Analysis/Calculus/FDeriv/Det.lean`) for §1.4, and Tau Ceti
`Analysis/ODE` and `Matrix.det_exp` for the compatibility Checks.

## Layer 2: Function theory of the upper half-plane

### 2.1 Poisson-finite measures, Poisson and Schwarz integrals

Define the Poisson kernel `P(z, x)` for `z ∈ ℂ₊`, `x ∈ ℝ` as Tau Ceti's `TauCeti.halfSpacePoissonKernel 2 v`
with unit inward normal `v = (0, 1)`, pole `z` and boundary point `x`, read through Mathlib's
`Complex.orthonormalBasisOneI`; since `⟨v, z⟩ = Im z` and `2ω₂ = 2π` (Mathlib `EuclideanSpace.volume_ball_fin_two`),
it is `P(z, x) = Im z/(π|x − z|²)`, the notation used below. Define the Poisson measure
`Π = dx/(1 + x²)`; a positive Borel measure `ν` on `ℝ` is Poisson-finite when
`∫ dν/(1 + x²) < ∞`. Define the Poisson integral `P[ν](z) = ∫ P(z, x) dν(x)`, and for a complex
`h ∈ L¹(Π)` write `P[h] = P[h dx]` (componentwise). For a Poisson-finite `ν` (or a real `h ∈ L¹(Π)`)
define the Schwarz integral `S[ν](z) = (1/(πi)) ∫ (1/(x − z) − x/(1 + x²)) dν(x)`, and for
`h ∈ L¹(ℝ)` the integral normalised at infinity `S⁰[h](z) = (1/(πi)) ∫ h(x)/(x − z) dx`
(poltoratski2024 line 250–254 and 610–614; mauth2022 line 378–392).

- `∫ P(z, x) dx = 1` (Tau Ceti `TauCeti.integral_halfSpacePoissonKernel`; the hyperplane carries the
  Lebesgue measure of `ℝ` by Mathlib `LinearIsometryEquiv.measurePreserving`), and `P(z, x) ≤ C(z)/(1 + x²)`
  with `C(z) = 2(1 + (Re z)²) max(Im z, 1/Im z)/π`, so `P[ν]` is finite on `ℂ₊` for Poisson-finite `ν`.
- `P[ν]` is harmonic on `ℂ₊`, nonnegative, and `P[ν] = Re S[ν]`; `S[ν]` is holomorphic on `ℂ₊` and
  real at `z = i`; `S⁰[h] − S[h]` is the imaginary constant `−(i/π) ∫ x h(x)/(1 + x²) dx`. Route: on a
  compact subset of `ℂ₊` the `z`-derivative `(x − z)^{−2}` of the Schwarz integrand is bounded by a
  constant times `1/(1 + x²)`, so `S[ν]` is holomorphic (Mathlib `hasFDerivAt_integral_of_dominated_of_fderiv_le`),
  hence analytic (Mathlib `DifferentiableOn.analyticAt`). Its real part `P[ν]` is then harmonic (Mathlib
  `AnalyticAt.harmonicAt_re`). It is nonnegative because the kernel is positive (Tau Ceti
  `TauCeti.halfSpacePoissonKernel_pos`).
- `P(i, x) = 1/(π(1 + x²))`, so `h ∈ L¹(Π)` exactly when `P[|h|](i) < ∞`.
- Cayley comparison: with `w = (z − i)/(z + i)` and `ζ = (x − i)/(x + i)`,
  `P(z, x) = poissonKernel 0 w ζ · 1/(π(1 + x²))`, where Mathlib's disc Poisson kernel is
  `poissonKernel 0 w ζ = (1 − |w|²)/|ζ − w|²` for `|ζ| = 1`. So `P[ν](z) = ∫ poissonKernel 0 w ζ dσ(ζ)` is the
  disc Poisson integral at `w` of the image `σ` of `dν/(π(1 + x²))` under Tau Ceti `TauCeti.boundaryCayley`.
- Translation and dilation covariance: for the translate `ν_u` of `ν` by `u ∈ ℝ`,
  `P[ν_u](z) = P[ν](z − u)`; for `λ > 0` and the image `ν^λ` of `ν` under `x ↦ x/λ`,
  `P[ν^λ](z) = λ P[ν](λz)`.

*Needs:* Mathlib Bochner integrals, `InnerProductSpace.HarmonicOnNhd`, `Complex.orthonormalBasisOneI`,
`EuclideanSpace.volume_ball_fin_two`, `LinearIsometryEquiv.measurePreserving`,
`hasFDerivAt_integral_of_dominated_of_fderiv_le`, `DifferentiableOn.analyticAt`, `AnalyticAt.harmonicAt_re`,
`poissonKernel`; Tau Ceti `TauCeti.halfSpacePoissonKernel`, `TauCeti.halfSpacePoissonKernel_pos`,
`TauCeti.integral_halfSpacePoissonKernel`, `TauCeti.boundaryCayley`.

**Checks.**

- Identification with the pinned kernel: at `z = 1 + i` and `x = 3`, Tau Ceti's kernel at `n = 2`,
  `v = (0, 1)`, with pole `z` is `2 · 1/(2π · 5) = 1/(5π)`, which is `Im z/(π|x − z|²)`. With the two
  arguments exchanged (pole `x`) it is `0`, because `⟨v, x⟩ = 0` for real `x`.
- Lebesgue measure: `P[dx] ≡ 1`; a kernel without the factor `1/π` would give `π`.
- `ν = δ₀`: `P[δ₀](z) = Im z/(π|z|²) = Im(−1/(πz))`, with value `1/π` at `z = i`. It is harmonic on `ℂ₊`, as
  Tau Ceti's `TauCeti.harmonicOnNhd_halfSpacePoissonKernel_left` states for the kernel in its pole.
- `h = 1/(1 + x²)`: `P[h](z) = Re(i/(z + i))` and `S[h](z) = i/(z + i)`; at `z = 2i`, the direct integral
  `(2/π)∫ dx/((x² + 4)(x² + 1)) = 1/3 = i/(3i)`. This `h` is real, bounded and continuous, so `P[h]` is
  also Tau Ceti's `TauCeti.halfSpacePoissonIntegral` at `n = 2`, harmonic by
  `TauCeti.harmonicOnNhd_halfSpacePoissonIntegral`.
- Cayley comparison at `z = 2i`, `x = 1`: `w = 1/3`, `ζ = −i`, `poissonKernel 0 (1/3) (−i) = (8/9)/(10/9) = 4/5`
  and `(4/5)/(2π) = 2/(5π) = P(2i, 1)`. For `h(x) = (x² − 1)/(x² + 1) = Re ζ`, Mathlib's Poisson formula
  on the unit disc (`InnerProductSpace.HarmonicOnNhd.circleAverage_poissonKernel_smul` for the harmonic
  function `Re`) gives `P[h](z) = Re w`. At `z = 2i` the direct integral is
  `(2/π)∫ (x² − 1)/((x² + 1)(x² + 4)) dx = 1/3 = Re(1/3)`. A kernel that also carried the circle-average
  factor `1/(2π)` would give `1/(6π)`.
- `ν = |x| dx` is not Poisson-finite (`∫ |x|/(1 + x²) = ∞`) and `P[ν] ≡ ∞`.

### 2.2 Positive harmonic functions on the half-plane

Prove that a nonnegative harmonic `u` on `ℂ₊` is `u(z) = c Im z + P[ν](z)` for a unique `c ≥ 0` and a
unique Poisson-finite `ν`, and that `πy u(iy) − πc y² = ∫ y²/(x² + y²) dν(x)` increases to `ν(ℝ)` as
`y → ∞` (mauth2022 Lemma 3 line 390; garnett2007, Ch. I §3, uncertified). Route: `u = Im F` with `F`
holomorphic on `ℂ₊`, `F′` being the conjugate complex partial of `u`, which is holomorphic by
Mathlib's `HarmonicAt.differentiableAt_complex_partial` and has a primitive by Tau Ceti
`DifferentiableOn.hasDerivAt_wedgeIntegral_upperHalfPlane`; then Tau Ceti
`TauCeti.exists_isFiniteMeasure_eq_nevanlinnaKernel_add` and `TauCeti.nevanlinnaKernel_im` give
`u = β Im z + P[ν]` with `ν = π(1 + x²)ρ`. Uniqueness: `ν` is the vague limit of the measures `u(x + iy) dx` as `y → 0`, and `c = lim u(iy)/y` as
`y → ∞`.

*Needs:* §2.1; Mathlib `HarmonicAt.differentiableAt_complex_partial`; Tau Ceti
`DifferentiableOn.hasDerivAt_wedgeIntegral_upperHalfPlane`,
`TauCeti.exists_isFiniteMeasure_eq_nevanlinnaKernel_add`, `TauCeti.nevanlinnaKernel_im`.

**Checks.**

- `u = Im z`: `c = 1`, `ν = 0`.
- `u = P[δ₀]`: `c = 0`, `ν = δ₀`, and `πy u(iy) = 1 = ν(ℝ)` for every `y`.
- `u ≡ 1 = P[dx]`: `ν(ℝ) = ∞` and `πy u(iy) = πy → ∞`.
- `u = Re z` is harmonic but takes the value `−1` at `−1 + i`; positivity is a hypothesis.

### 2.3 Nontangential approach and maximal bounds

For `x ∈ ℝ` and `0 < h ≤ ∞` define the cone `Γ_h(x) = {z ∈ ℂ₊ : |Re z − x| < Im z < h}` and, for
`u : ℂ₊ → ℂ`, the nontangential maximal function `M_h u(x) = sup_{z ∈ Γ_h(x)} |u(z)|` with values in
`[0, ∞]`. A function has nontangential limit `L` at `x` when it tends to `L` along the filter of
`Γ_∞(x)` at `x` (poltoratski2024 line 615–622; mauth2022 line 411–420; garnett2007, Ch. I §§4–5,
pp. 27, 55–56, uncertified). Its API:

- Cone comparison: for `x′ + iy ∈ Γ_∞(x)` and every `s ∈ ℝ`, `P(x′ + iy, s) ≤ 3 P(x + iy, s)`; hence for
  `g` locally integrable with `P[|g|]` finite, `M_∞ P[g](x) ≤ 3 · TauCeti.maximalFunction volume g x`.
  The kernel inequality is Tau Ceti's `TauCeti.halfSpacePoissonKernel_le_mul` at `n = 2` with the poles
  `x′ + iy` and `x + iy` of equal height and `A = √3`, so that `Aⁿ = 3`.
- Aperture independence: cones `|Re z − x| < α Im z`, `α > 0`, give the same nontangential limits, by
  the same comparison with `A² = max(2, 1 + 2α²)`, which is `3` for `α = 1`.
- Localisation: for `h ∈ L¹(Π)` and `R > 0` there is `C_R`, depending only on `R`, with
  `M_1 P[h](x) ≤ 3 · TauCeti.maximalFunction volume (h · 1_{[−R−2, R+2]}) x + C_R ‖h‖_{L¹(Π)}` for `|x| ≤ R`.
- Weak type: `|{x ∈ [−R, R] : M_1 P[h](x) > λ}| ≤ C_R ‖h‖_{L¹(Π)}/λ` for `λ > 0`, so `√(M_1 P[|h|])` is
  integrable on every bounded interval (mauth2022 Lemma 5 and Corollary 1, line 421–427).
- Strong type: `‖M_∞ P[g]‖_{L²} ≤ C‖g‖_{L²}` for `g ∈ L²(ℝ)` with an absolute constant `C` (mauth2022
  Lemma 6 line 430).
- Route: `|s − x| ≤ |s − x′| + y` gives `(s − x)² + y² ≤ 3((s − x′)² + y²)`, which is the distance
  hypothesis `|s − (x + iy)| ≤ √3 |s − (x′ + iy)|` of the pinned comparison. `P(x + iy, ·)` is radially
  decreasing about `x` with integral `1` (§2.1), so its integral against `|g|` is at most the maximal
  function by the layer-cake formula; then Tau Ceti's weak and strong type bounds.

*Needs:* §2.1; Tau Ceti `TauCeti.halfSpacePoissonKernel_le_mul`, `TauCeti.maximalFunction`,
`TauCeti.mul_measure_lt_maximalFunction_le`, `TauCeti.lintegral_rpow_maximalFunction_le`.

**Checks.**

- `h = 1_{[0,1]}` and `x = 2`: `P[h](2 + i) = (arctan 2 − π/4)/π ≈ 0.102`, while the maximal function of
  `h` at `2` is `1/4` (attained at radius `2`), and `0.102 ≤ 3 · 1/4`.
- The constant `3`: at `x = 0`, `z = 0.99 + i ∈ Γ_∞(0)` and `s = 1`, `P(0.99 + i, 1) = 1/(1.0001π)` and
  `3P(i, 1) = 3/(2π)`, so the inequality holds; at `s = 2` the ratio is
  `P(0.99 + i, 2)/P(i, 2) = 5/2.0201 ≈ 2.475`. Over the open cone the ratio `P(x′ + iy, s)/P(iy, s)` has
  supremum `(s² + y²)/((s − y)² + y²)` for `s ≥ y`, largest at `s = y(1 + √5)/2` with value
  `((1 + √5)/2)² ≈ 2.618`, not attained; so no constant below `2.618` works, and `3` is not sharp. The
  point `1 + i` lies on the boundary of `Γ_∞(0)`, not in it.
- `h = 0`: both maximal functions vanish; `h ≡ 1` (in `L¹(Π)`, not in `L¹`): `P[h] ≡ 1` and `M_1 P[h] ≡ 1`.
- The global maximal function of `h ∈ L¹(Π)` can be infinite (for `h ≡ 1` the averages over
  `B(x, r)` stay `1`, but for `h(x) = |x|^{1/2}` they grow like `√r`), which is why the bound is
  localised to `[−R − 2, R + 2]` with a tail term.

### 2.4 Fatou's theorem for Poisson integrals

Let `ν` be Poisson-finite with Lebesgue decomposition `ν = w dx + ν_s`. Prove that for almost every
`x ∈ ℝ`, `P[ν](z) → w(x)` as `z → x` nontangentially; in particular `P[ν_s] → 0` nontangentially
almost everywhere, and `P[h] → h(x)` nontangentially at almost every `x` for complex `h ∈ L¹(Π)`
(mauth2022 Lemmas 4 and 7, line 404–436; garnett2007, Ch. I §§3–5, pp. 16, 30, uncertified). Route:
at a Lebesgue point of `w` where `ν_s(B(x, r))/2r → 0` (Mathlib
`VitaliFamily.ae_tendsto_lintegral_enorm_sub_div` and `VitaliFamily.ae_tendsto_rnDeriv`), split
`ν − w(x)dx` near and far from `x` and use the cone domination of §2.3.

*Needs:* §2.1, §2.3; Mathlib `VitaliFamily.ae_tendsto_lintegral_enorm_sub_div`,
`VitaliFamily.ae_tendsto_rnDeriv`, `Measure.rnDeriv`, `Measure.singularPart`.

**Checks.**

- `ν = δ₀`: the limit is `0` at every `x ≠ 0`, and `w = 0`.
- `h = 1_{[0,1]}`: the limit is `1` on `(0, 1)` and `0` off `[0, 1]`; at the jump `x = 0` there is no
  nontangential limit, since `P[h](iy) → 1/2` while `P[h](−y/2 + iy) → 1/2 − arctan(1/2)/π ≈ 0.352`.
- Continuous bounded `h`: the limit exists at every point and equals `h(x)`, even without restriction
  on the approach; this is Tau Ceti's `TauCeti.tendsto_halfSpacePoissonIntegral` at `n = 2`, applied to
  `Re h` and `Im h`.

### 2.5 Bounded holomorphic functions on the half-plane

For `F` holomorphic and bounded on `ℂ₊` define its boundary function `F* ∈ L^∞(ℝ)` as the
nontangential limit of `F`, which exists almost everywhere (garnett2007, Ch. II §§1–4, pp. 55, 64,
uncertified). Its API:

- `‖F*‖_∞ ≤ sup_{ℂ₊} |F|` and `F = P[F*]` on `ℂ₊`; `F ↦ F*` is linear and multiplicative.
- If `F` extends continuously to the closed half-plane then `F* = F` on `ℝ`.
- Uniqueness: if `F*` vanishes on a set of positive measure then `F ≡ 0`.
- If `F ≢ 0` then `log|F*| ∈ L¹(Π)` and `log|F(z)| ≤ P[log|F*|](z)` on `ℂ₊`.
- Route: the bounded functions `F(· + iε)` are continuous up to `ℝ`. The Poisson integral of their
  restriction to `ℝ` is harmonic and tends to `F(x + iε)` at every `x ∈ ℝ` (Tau Ceti
  `TauCeti.harmonicOnNhd_halfSpacePoissonIntegral` and `TauCeti.tendsto_halfSpacePoissonIntegral`, for the
  real and imaginary parts). So `F(· + iε) − P[F(· + iε)|_ℝ]`, reflected oddly across `ℝ`, is continuous,
  has the mean-value property (Tau Ceti `TauCeti.harmonicOnNhd_of_setAverage_ball_eq`) and is bounded,
  hence constant by `InnerProductSpace.bounded_harmonic_on_complex_plane_is_constant`, hence `0`. A weak-* limit point of
  `F(· + iε)` in `L^∞(Π) = L¹(Π)^*` gives the Poisson representation, because `x ↦ (1 + x²)P(z, x)` is
  bounded and so lies in `L¹(Π)`; as a space of classes `L^∞(Π)` is `L^∞(ℝ)`, since `Π` and Lebesgue
  measure have the same null sets. §2.4 then gives the nontangential limits.
  Uniqueness and the logarithmic bound transport Tau Ceti `TauCeti.eqOn_const_ball_of_tendsto_circleMap`
  and `AnalyticOnNhd.le_circleAverage_log_norm` through the Cayley transform, under which a disc radius
  ending at `ζ ≠ 1` becomes an arc ending at `x` inside every cone at `x`. Jensen's bound is stated at
  the centre of the disc. It gives the logarithmic bound at `z = i`, because the Cayley transform carries
  `P(i, x) dx` to `dθ/(2π)`: this is §2.1's Cayley comparison at `w = 0`, where `poissonKernel 0 0 ζ = 1`.
  §2.1's translation and dilation covariance, applied to `F(Re z + (Im z) ·)`, then give the bound at every
  `z ∈ ℂ₊`.

*Needs:* §2.1, §2.4; Mathlib `InnerProductSpace.bounded_harmonic_on_complex_plane_is_constant`,
`WeakDual.isCompact_closedBall`, `poissonKernel`; Tau Ceti `MeasureTheory.Lp.dualOneEquiv`,
`TauCeti.harmonicOnNhd_halfSpacePoissonIntegral`, `TauCeti.tendsto_halfSpacePoissonIntegral`,
`TauCeti.harmonicOnNhd_of_setAverage_ball_eq`, `TauCeti.eqOn_const_ball_of_tendsto_circleMap`,
`AnalyticOnNhd.le_circleAverage_log_norm`, `TauCeti.bijOn_sub_I_div_add_I_upperHalfPlaneSet`.

**Checks.**

- `F(z) = e^{iz}`: `F* = e^{ix}`, `|F(x + iy)| = e^{−y}`, and `P[F*] = F`.
- `F(z) = e^{−i/z}` is bounded by `1` (`|F| = e^{−Im z/|z|²}`), not continuous at `0`, and
  `F* = e^{−i/x}` still has `P[F*] = F`.
- `F` constant `c`: `F* = c`; `F = (z − i)/(z + i)`: `|F*| = 1`, `log|F*| = 0`, and
  `log|F(i)| = −∞ ≤ 0`.

### 2.6 The Hardy space `H²(ℂ₊)`

Define `H²(ℂ₊)` as the holomorphic `F` on `ℂ₊` with `‖F‖² = sup_{y>0} ∫ |F(x + iy)|² dx < ∞`
(mauth2022 line 337–358). Its API:

- Boundary values: `F(· + iy) → F*` in `L²(ℝ)` as `y → 0`, `‖F*‖_{L²} = ‖F‖`, `y ↦ ‖F(· + iy)‖_{L²}` is
  nonincreasing, `F → F*` nontangentially almost everywhere, and `F = P[F*]` (mauth2022 Lemma 1 line
  359–369, for `H^p(ℂ₊)` with `1 < p < ∞`; garnett2007, Ch. II p. 55, uncertified).
- Paley–Wiener: the boundary map is an isometry of `H²(ℂ₊)` onto
  `{g ∈ L²(ℝ) : 𝓕g = 0 almost everywhere on (−∞, 0)}` (Mathlib's `𝓕`), and
  `F(z) = ∫₀^∞ φ(s) e^{isz} ds` with `φ ∈ L²(0, ∞)`, `‖F‖² = 2π‖φ‖²` (mauth2022 Lemma 9 line 469;
  garnett2007 p. 84, uncertified); in particular `H²(ℂ₊)` is a Hilbert space.
- Cauchy formula: `F(z) = (1/(2πi)) ∫ F*(x)/(x − z) dx` and `∫ F*(x)/(x − conj z) dx = 0` for `z ∈ ℂ₊`;
  hence `|F(z)|² ≤ ‖F‖²/(4π Im z)` (mauth2022 Lemma 2 line 370–377 states a weaker constant).
- Products: `∫ F*(x) G*(x) dx = 0` for `F, G ∈ H²(ℂ₊)`; bounded multipliers: `GF ∈ H²(ℂ₊)` with
  `‖GF‖ ≤ sup|G| ‖F‖` for bounded holomorphic `G`.
- Logarithmic bound: if `F ∈ H²(ℂ₊)` and `F ≢ 0`, then `log|F*| ∈ L¹(Π)`, so `F* ≠ 0` almost everywhere,
  and `log|F(z)| ≤ P[log|F*|](z)` for every `z ∈ ℂ₊` (garnett2007, Ch. II §4, uncertified). Route: for
  `ε > 0` the translate `F(· + iε)` is holomorphic near the closed half-plane and bounded there by
  `‖F‖/√(4πε)` (the point bound above). So §2.5 gives the bound for it, with boundary function
  `F(· + iε)` on `ℝ`. As `ε → 0`, `log⁺|F(· + iε)| → log⁺|F*|` in `L¹(P(z, x) dx)`. This is because
  `|log⁺a − log⁺b| ≤ |a − b|` for `a, b ≥ 0`, `F(· + iε) → F*` in `L²(ℝ)`, and `∫ P(z, x)² dx = 1/(2π Im z)`.
  Take a sequence `εₙ → 0` along which `F(· + iεₙ) → F*` almost everywhere. Fatou's lemma for
  `log⁻|F(· + iεₙ)|` then gives the bound in the limit at every `z` with `F(z) ≠ 0`. At one such `z` it
  also gives the integrability of `log⁻|F*|`, while `log⁺|F*| ≤ |F*|²` is integrable.
- Weak convergence `Fₙ ⇀ F` in `H²(ℂ₊)` implies locally uniform convergence on `ℂ₊`
  (mauth2022 Lemma 11 line 487), and `‖M_∞ F‖_{L²} ≤ C‖F‖` (mauth2022 Lemma 6, via §2.3).
- `H²(ℂ₋)` is defined by reflection, and its boundary values are the complex conjugates of those of
  `H²(ℂ₊)`, orthogonal to them in `L²(ℝ)`.

*Needs:* §2.1–§2.5; Mathlib `MeasureTheory.Lp.fourierTransformₗᵢ`, `fourier_real_eq`,
`MeasureTheory.lintegral_liminf_le`, `tendstoInMeasure_of_tendsto_eLpNorm`,
`TendstoInMeasure.exists_seq_tendsto_ae`.

**Checks.**

- `F(z) = 1/(z + i)`: `F(z) = −i∫₀^∞ e^{−s} e^{isz} ds`, `‖F‖² = π`, and the point bound at `z = i` is
  attained: `|F(i)|² = 1/4 = π/(4π)`.
- `∫ dx/(x + i)² = 0`: the product of `1/(z + i)` with itself, as the product law requires.
- Logarithmic bound, equality and strict cases: for `F = 1/(z + i)`, `log|F*| = −log|x + i|` and
  `P[log|F*|](z) = −log|z + i| = log|F(z)|` (the outer case of §2.8; at `z = i` both sides are
  `−log 2 ≈ −0.693`). For `F = e^{iz}/(z + i)` the boundary modulus is the same, but `log|F(z)|` is smaller
  by `Im z`: at `z = i` it is `−1 − log 2 ≈ −1.693 < −0.693`. For `F ≡ 0` the boundary function `log|F*|` is
  identically `−∞`, so `F ≢ 0` is needed.
- `F ≡ 1` is not in `H²(ℂ₊)` (the integrals are infinite), and `1/(z − i)` is not holomorphic on `ℂ₊`.
- Mathlib-convention witness: for `g(x) = 1/(x + i)`, closing the contour in the lower half-plane
  gives `𝓕g(w) = −2πi e^{−2πw}` for `w > 0`, and `𝓕g(w) = 0` for `w < 0`; the vanishing condition is
  on the negative frequencies, and a statement with `(0, ∞)` describes `H²(ℂ₋)`.

### 2.7 Paley–Wiener spaces

For `t ≥ 0` define `PW_t` as the set of `F : ℂ → ℂ` with `F(z) = ∫_{−t}^{t} φ(s) e^{isz} ds` for some
`φ ∈ L²(−t, t)` (poltoratski2024 line 236–244; mauth2022 Lemma 10 line 472–484). Its API:

- `F` is entire, `|F(z)| ≤ √(2t) ‖φ‖ e^{t|Im z|}`, `‖F‖²_{L²(ℝ)} = 2π‖φ‖²`, `PW_t` is a closed subspace
  of `L²(ℝ)`, `PW_s ⊆ PW_t` for `s ≤ t`, and `F ∈ PW_t` implies `F# ∈ PW_t`.
- `e^{itz}F ∈ H²(ℂ₊)` and `e^{−itz}F ∈ H²(ℂ₋)`; conversely an entire `H` with `e^{itz}H ∈ H²(ℂ₊)` and
  `e^{−itz}H ∈ H²(ℂ₋)` belongs to `PW_t` (mauth2022 Lemma 10).
- Paley–Wiener theorem: an entire `F` of exponential type at most `t` (`|F(z)| ≤ C_ε e^{(t+ε)|z|}` for
  every `ε > 0`) whose restriction to `ℝ` is square-integrable belongs to `PW_t`.
- Reproducing kernel: `F(λ) = ∫ F(x) conj(k_t(λ, x)) dx` with `k_t(λ, z) = sin(t(z − conj λ))/(π(z − conj λ))`,
  and `‖k_t(λ, ·)‖² = k_t(λ, λ) = sinh(2t Im λ)/(2π Im λ)`, equal to `t/π` for real `λ`
  (poltoratski2024 (2.3)–(2.4) line 241–249).
- `zF ∈ PW_t` exactly when `φ` is absolutely continuous on `[−t, t]` with `φ′ ∈ L²` and `φ(±t) = 0`
  (then `zF(z) = i∫ φ′(s) e^{isz} ds`); these `F` are dense in `PW_t`.

*Needs:* §2.6; Mathlib `MeasureTheory.Lp.fourierTransformₗᵢ`,
`PhragmenLindelof.right_half_plane_of_bounded_on_real`.

**Checks.**

- `φ = 1_{[−t,t]}`: `F(z) = 2 sin(tz)/z`, and `‖F‖² = ∫ 4 sin²(tx)/x² dx = 4πt = 2π · 2t`.
- `t = 0`: `PW_0 = {0}`.
- `e^{itz}` is entire of exponential type `t` but not square-integrable on `ℝ`, and `sin(tz)/z` lies in
  `PW_t` but not in `PW_s` for `s < t`.
- Kernel norm: `∫ sin²(t(y − x))/(π²(y − x)²) dy = t/π` (numerically `0.63657` for `t = 2` against
  `2/π ≈ 0.63662`).

### 2.8 Outer functions

For real `h ∈ L¹(Π)` define the outer function `O_h = exp(S[h])`, and for real `h ∈ L¹(ℝ)` the outer
function normalised at infinity `O⁰_h = exp(S⁰[h])`. A holomorphic `F` on `ℂ₊` is outer when
`F = c O_h` with `|c| = 1` and `h ∈ L¹(Π)`; `h` is its boundary log-modulus (mauth2022 line 454–468;
garnett2007, Ch. II §4, p. 64, uncertified). Its API:

- `O_h` is holomorphic and zero-free on `ℂ₊` with `|O_h| = exp P[h]`; by §2.4 its nontangential
  boundary modulus is `e^{h(x)}` for almost every `x` (mauth2022 Lemma 8 line 463).
- `O_{h+k} = O_h O_k`, `O_0 = 1`, `O⁰_h = e^{−(i/π)∫ x h/(1+x²)} O_h`, and `O⁰_h(iy) → 1` as `y → ∞`.
- `O_h` is bounded exactly when `h` is essentially bounded above, with `sup |O_h| = e^{ess sup h}`.
- A zero-free holomorphic `F` on `ℂ₊` with `log|F| = P[h]` is `c O_h` with `|c| = 1`; two outer
  functions with the same boundary modulus differ by a unimodular constant.
- For even `h`, `O_h` is real and positive on the imaginary axis.
- Outer multipliers: let `F ∈ H²(ℂ₊)` and let `G = c O_h` be outer with `|F*| e^h ∈ L²(ℝ)`. Then
  `FG ∈ H²(ℂ₊)`, `|(FG)*| = |F*| e^h` almost everywhere, and `‖FG‖ = ‖F* e^h‖_{L²}` (garnett2007, Ch. II
  §4, uncertified; poltoratski2024 line 685–687 and line 766 and mauth2022 line 945 and line 1137 use it
  without proof). Route: the case `F ≡ 0` is trivial. Otherwise the logarithmic bound of §2.6 and
  `log|G| = P[h]` give `2 log|FG(z)| ≤ P[k](z)` with `k = 2 log|F*| + 2h ∈ L¹(Π)`. Jensen's inequality for
  the probability measure `P(z, x) dx` and the convex function `exp` gives `|FG(z)|² ≤ P[|F*|² e^{2h}](z)`.
  Integrating in `x` at height `y`, with `∫ P(x + iy, u) dx = 1` and Tonelli, gives
  `∫ |FG(x + iy)|² dx ≤ ‖F* e^h‖²`. The boundary modulus follows from the nontangential limits of `F`
  (§2.6) and of `|G| = e^{P[h]}` (§2.4), and the norm identity from `‖FG‖ = ‖(FG)*‖_{L²}` (§2.6).
- Boundary values of outer functions: if the measure `e^{2h} dx` is Poisson-finite (`∫ e^{2h} dΠ < ∞`), then
  `O_h/(z + i) ∈ H²(ℂ₊)` by the previous bullet with `F = 1/(z + i)`. So `O_h` has a nontangential limit at
  almost every `x ∈ ℝ` (§2.6), of modulus `e^{h(x)}`.

*Needs:* §2.1, §2.4, §2.6; Mathlib `ConvexOn.map_integral_le`, `convexOn_exp`,
`MeasureTheory.lintegral_lintegral_swap`.

**Checks.**

- `h(x) = log|x + i|`: `(1/π)∫ log(1 + x²)/(1 + x²) dx = 2 log 2`, so `O_h(i) = 2` and `O_h(z) = −i(z + i)`;
  `h` is even and `O_h(iy) = y + 1 > 0`.
- `e^{iz}` has boundary modulus `1` but is not `c O_0 = c`, and `(z − i)/(z + i)` has a zero; neither is
  outer.
- `h = 0`: `O_0 = 1`, and the outer-multiplier bullet reduces to `FG = cF` with `‖FG‖ = ‖F‖`.
- Outer multipliers: for `F = 1/(z + i)²` and `h = log|x + i|` (`G = −i(z + i)`), `FG = −i/(z + i) ∈ H²(ℂ₊)`
  with `‖FG‖² = π`, and `‖F* e^h‖² = ∫ |x + i|²/|x + i|⁴ dx = ∫ dx/(1 + x²) = π`.
- The boundary condition is needed: `F = 1/(z + i)` with the same `G` has `|F*| e^h = |x + i|/|x + i| = 1`,
  not in `L²(ℝ)`, and indeed `FG = −i` is not in `H²(ℂ₊)`.
- Outerness is needed: `G = e^{−iz}` is zero-free with `|G| = 1` on `ℝ`, but `log|G(z)| = Im z > 0 = P[0](z)`,
  so it is not outer. For `F = 1/(z + i)`, `|F*| · 1 ∈ L²(ℝ)`, while `FG = e^{−iz}/(z + i)` has
  `∫ |FG(x + iy)|² dx = πe^{2y}/(y + 1)`, unbounded in `y`.

### Examples

- `1/(z + i)` lies in `H²(ℂ₊)`, `z + i` is outer, `e^{iz}` and `(z − i)/(z + i)` are bounded and not outer.
- `P[dx/(1 + x²)]` is `Re(i/(z + i))`, a bounded positive harmonic function with boundary values
  `1/(1 + x²)` everywhere (Tau Ceti `TauCeti.tendsto_halfSpacePoissonIntegral` for continuous bounded data).
- `2 sin(tz)/z` spans the kernel direction at `0` of `PW_t`.

### Dependencies

Mathlib (harmonic functions, the disc Poisson kernel and Poisson formula, Lebesgue differentiation,
the `L²` Fourier transform, Phragmén–Lindelöf, Banach–Alaoglu, Jensen's inequality, Fatou's lemma,
Tonelli's theorem); Tau Ceti (the half-space Poisson kernel and Poisson integral, maximal function,
Nevanlinna representation, half-plane primitives, mean-value converse, F. and M. Riesz uniqueness,
Cayley transform, the dual of `L¹` of a finite measure).

## Layer 3: Dirac systems and their Hermite–Biehler functions

Throughout, `q` is a potential (integrable on every `[0, t]`), `f = Re q`, `g = Im q`.

### 3.1 The Dirac system and its fundamental matrix

Define `Q_q(t) = [[g(t), f(t)], [f(t), −g(t)]]` and the fundamental matrix `M_q(t, z)`, `t ≥ 0`,
`z ∈ ℂ`, as the propagator `N(t, 0)` (§1.3) on `E = EuclideanSpace ℂ (Fin 2)` of the coefficient
`−Ω(z − Q_q(t))`, acting through `Matrix.toEuclideanCLM`. The coefficient is entire in `z`, with Euclidean
operator norm `‖−Ω(z − Q_q(t))‖ ≤ ‖Ω‖(|z| + ‖Q_q(t)‖) = |z| + |q(t)|` (§1.6, Conventions). `M` is the matrix
of `N(t, 0)` in the standard basis. Write `M = [[A, B], [C, D]]`, `Θ = (A, C)ᵀ`, `Φ = (B, D)ᵀ`
(poltoratski2024 line 136–166; mauth2022 (5)–(6) line 546–563).

- `ΩM(t, z) = Ω + ∫₀ᵗ (z − Q_q(s)) M(s, z) ds`, `M(0, z) = 1`, and `M(t, ·)` is entire, jointly continuous
  in `(t, z)`.
- `det M(t, z) = 1` (§1.4, the coefficient is trace-free; poltoratski2024 (2.1) line 204; mauth2022
  Lemma 14 line 565).
- `M(t, conj z) = conj M(t, z)`: `A, B, C, D` are real entire, for every complex potential, because
  `Q_q` has real entries.
- Chain rule: `M_q(t, z) = M_{q(s+·)}(t − s, z) M_q(s, z)` for `0 ≤ s ≤ t` (romanov2014 line 223–224),
  and locality: `M_q(t, ·)` depends only on `q` almost everywhere on `[0, t]`.
- In the Euclidean operator norm, `‖M(t, z)‖ ≤ exp(t|z| + ∫₀ᵗ |q|)`, with equality for a constant
  potential at `z = 0`; in particular every entry is entire of order at most one and of exponential
  type at most `t`.
- Christoffel–Darboux identity: `M(t, λ)* Ω M(t, z) − Ω = (z − conj λ) ∫₀ᵗ M(s, λ)* M(s, z) ds`
  (romanov2014 (12) line 758).
- For a real potential, `A(t, −z) = A(t, z)`, `D(t, −z) = D(t, z)`, `B(t, −z) = −B(t, z)`,
  `C(t, −z) = −C(t, z)`, and `M(t, 0) = diag(e^{F(t)}, e^{−F(t)})` with `F(t) = ∫₀ᵗ f`.

*Needs:* §1.3, §1.4, §1.6; Mathlib `Matrix.det_fin_two`, `Matrix.toEuclideanCLM`.

**Checks.**

- Free case `q = 0`: `M(t, z) = [[cos tz, −sin tz], [sin tz, cos tz]]`, `det = 1`.
- Real constant `f = c` at `z = 0`: `M = diag(e^{ct}, e^{−ct})`; the opposite sign convention
  `ΩX′ = zX + QX` gives `diag(e^{−ct}, e^{ct})`.
- Purely imaginary constant `q = ic` at `z = 0`: `Θ = (cosh ct, −sinh ct)`, `Φ = (−sinh ct, cosh ct)`,
  `det = cosh² − sinh² = 1`.
- A smooth complex potential (`f(t) = 0.8 cos 3t + 0.3`, `g(t) = 0.5 sin 2t`, `t = 1.7`,
  `z = 0.6 + 0.25i`) gives `det M = 1` to twelve digits under numerical integration.
- Norm convention: for `q = 1 + i` on `[0, 1]` at `z = 0`,
  `M(1, 0) = exp(ΩQ_q) = cosh(√2) · 1 + (sinh(√2)/√2) ΩQ_q ≈ [[3.5465, −1.3683], [−1.3683, 0.8099]]`.
  Its Euclidean operator norm is `e^{√2} ≈ 4.1133`, so the bound `exp(t|z| + ∫|q|)` is attained. Its
  maximum-row-sum norm is `≈ 4.9148`, so the bound fails for the sup-norm carrier `Fin 2 → ℂ`.

### 3.2 The Hermite–Biehler functions `E` and `Ẽ`

Define `E(t, z) = A(t, z) − iC(t, z)` and `Ẽ(t, z) = B(t, z) − iD(t, z)` (poltoratski2024 line 186–190;
mauth2022 line 182–183).

- `A = (E + E#)/2`, `C = (E# − E)/(2i)`, `B = (Ẽ + Ẽ#)/2`, `D = (Ẽ# − Ẽ)/(2i)`.
- `det [[E, Ẽ], [E#, Ẽ#]] = E Ẽ# − Ẽ E# = 2i` (poltoratski2024 (2.2) line 205–208; mauth2022
  Corollary 2 line 596).
- `E(0, ·) = 1`, `Ẽ(0, ·) = −i`, and `E(t, z) = 1 + ∫₀ᵗ (−izE(s, z) + q(s)E#(s, z)) ds`, and the same
  for `Ẽ` (poltoratski2024 (2.5) line 293; mauth2022 Lemma 15 line 612).
- On `ℝ`: `e^{−∫₀ᵗ|q|} ≤ |E(t, x)|, |Ẽ(t, x)| ≤ e^{∫₀ᵗ|q|}` (poltoratski2024 line 273–275).
- Modulus and argument: with the continuous branch `φ(t, x)` of `arg E(t, x)` in `(t, x)` normalised by
  `φ(0, x) = 0`, `∂ₜ log|E| = f cos 2φ + g sin 2φ` and `∂ₜ φ = −x + g cos 2φ − f sin 2φ` almost
  everywhere; for real potentials these are poltoratski2024 (2.6)–(2.7) (line 295–306) and
  mauth2022 Lemma 17 (line 646), and `φ(t, 0) = 0`.
- Kernel identity: `(A(t, z) conj C(t, w) − C(t, z) conj A(t, w))/(conj w − z) = ∫₀ᵗ Θ(s, w)* Θ(s, z) ds`.

*Needs:* §3.1.

**Checks.**

- Free case: `E = e^{−itz}`, `Ẽ = −i e^{−itz}`, and `E Ẽ# − Ẽ E# = e^{−itz}(i e^{itz}) + i e^{−itz}e^{itz} = 2i`.
- Real constant `f = c` at `z = 0`: `E(t, 0) = e^{ct}`, `Ẽ(t, 0) = −i e^{−ct}`, and the upper bound
  `e^{∫|q|} = e^{ct}` is attained, so the bound is sharp.
- The reflection is needed in the equation: `∂ₜE = −izE + qE` (without `#`) would give
  `E(t, 0) = e^{ict}` for `q = ic`, while the solution of §3.1 gives `cosh ct + i sinh ct`.

### 3.3 The Hermite–Biehler property

Call an entire `H` Hermite–Biehler when `|H#(z)| < |H(z)|` for every `z ∈ ℂ₊` (poltoratski2024 line
175–180; mauth2022 line 491–493). Its API:

- A Hermite–Biehler function has no zeros in `ℂ₊`, and `H#/H` is bounded by `1` on `ℂ₊`.
- For `t > 0`, `E(t, ·)` and `Ẽ(t, ·)` are Hermite–Biehler, with
  `|E(t, z)|² − |E#(t, z)|² = 4 Im z ∫₀ᵗ |Θ(s, z)|² ds` and
  `|Ẽ(t, z)|² − |Ẽ#(t, z)|² = 4 Im z ∫₀ᵗ |Φ(s, z)|² ds` (mauth2022 Lemma 13 line 531; romanov2014
  Proposition 4 line 780, identity (15)).
- `E(t, ·)` and `Ẽ(t, ·)` have no zeros in the closed upper half-plane (on `ℝ` by §3.2), and are entire of
  order at most one and exponential type at most `t` (§3.1).
- Route: the Christoffel–Darboux identity at `λ = z` and `|u − iv|² − |u + iv|² = 4 Im(conj(u) v)`.

*Needs:* §3.1, §3.2.

**Checks.**

- Free case: `|E|² − |E#|² = e^{2ty} − e^{−2ty} = 2 sinh 2ty`, and
  `4y ∫₀ᵗ (|cos sz|² + |sin sz|²) ds = 4y ∫₀ᵗ cosh 2sy ds = 2 sinh 2ty`.
- `t = 0`: `E = 1` has `|E#| = |E|`, so `t > 0` is needed.
- `H(z) = z − i` is not Hermite–Biehler (`|z + i| > |z − i|` on `ℂ₊`), while `z + i` is.
- The smooth complex potential of §3.1 gives `|E(t, z)| ≈ 1.841 > 0.573 ≈ |E#(t, z)|`.

### Examples

- For `q = c · 1_{[0, T]}` with a complex constant `c`, `M(t, z)` for `t ≤ T` is
  `exp(−tΩ(z − Q_c))`, explicit through `cos(t√(z² − |c|²))`.
- For real `f`, `E(t, iy) = A(t, iy) − iC(t, iy)` with `A(t, iy)` real and `C(t, iy)` purely imaginary,
  so `E(t, iy)` is real.

### Dependencies

Layer 1 (§1.3, §1.4, §1.6).

## Layer 4: Scattering data on a finite interval

Throughout, `q` is a potential and `t ≥ 0`.

### 4.1 The scattering matrix and the scattering functions

Define the scattering matrix `G_q(t, z)` as the propagator `N(t, 0)` (§1.3) on `EuclideanSpace ℂ (Fin 2)`
of the coefficient `[[0, e^{−2izt} conj q(t)], [e^{2izt} q(t), 0]]`, entire in `z` with operator norm
`max(|e^{−2izt}|, |e^{2izt}|) |q(t)| = |q(t)| e^{2t|Im z|}` (§1.6), and the scattering functions
`a = (G_q)₂₂`, `b = (G_q)₂₁`
(poltoratski2024 (5.3) line 492–501).

- Structure: `G_q = [[a#, b#], [b, a]]` and `det G_q = a a# − b b# = 1`; on `ℝ`,
  `|a(t, x)|² − |b(t, x)|² = 1`, so `G_q(t, x) ∈ SU(1,1)` (poltoratski2024 line 501–503).
- Dictionary with §3.2: `a = e^{itz}(E + iẼ)/2`, `b = e^{itz}(E − iẼ)/2`, equivalently
  `E = e^{−itz}(a + b)` and `Ẽ = −i e^{−itz}(a − b)` (poltoratski2024 (5.2) line 484–488; mauth2022
  line 187–189).
- Volterra form: `a(t, z) = 1 + ∫₀ᵗ q(s) e^{2izs} b#(s, z) ds` and
  `b(t, z) = ∫₀ᵗ q(s) e^{2izs} a#(s, z) ds` (poltoratski2024 (5.4) line 508–517).
- Locality: `G_q(t, ·)` depends only on `q` almost everywhere on `[0, t]`; if `q = 0` on `(T, t)` then
  `G_q(t, ·) = G_q(T, ·)`.
- Concatenation: for `0 ≤ s ≤ t`, with `(a₁, b₁) = (a_q(s, ·), b_q(s, ·))` and `(a₂, b₂)` the scattering
  functions of `q(s + ·)` at time `t − s`, `b_q(t) = e^{2izs} b₂ a₁# + a₂ b₁` and
  `a_q(t) = e^{2izs} b₂ b₁# + a₂ a₁`.
- Translation of the potential: for `t₀ ≥ 0` and `q^{t₀}(s) = q(s − t₀) 1_{s ≥ t₀}`,
  `a_{q^{t₀}}(t + t₀, z) = a_q(t, z)` and `b_{q^{t₀}}(t + t₀, z) = e^{2izt₀} b_q(t, z)`.
- Modulation of the potential: for `ξ ∈ ℝ`, `G_{q e^{2iξ·}}(t, z) = G_q(t, z + ξ)`.
- Dilation: for `λ > 0`, `G_{λ q(λ·)}(t, z) = G_q(λt, z/λ)`.
- Real potentials: `a(t, −conj z) = conj a(t, z)` and `b(t, −conj z) = conj b(t, z)`; `a(t, iy)` and
  `b(t, iy)` are real, and `a(t, 0) = cosh F(t)`, `b(t, 0) = sinh F(t)` with `F(t) = ∫₀ᵗ f`.

*Needs:* §1.3, §1.6, §3.1, §3.2.

**Checks.**

- Free case: `G = 1`, `a = 1`, `b = 0`.
- Constant `q = c` on `[0, T]` at `z = 0`: `a = cosh(|c|T)`, `b = (c/|c|) sinh(|c|T)`; for `c = 0.7 + 0.4i`,
  `T = 1.3` this is `a ≈ 1.6014`, `b ≈ 1.0860 + 0.6206i`.
- Position of `q`: for the smooth complex potential of §3.1 the dictionary values
  `a ≈ 1.0632 + 0.1443i`, `b ≈ 0.0750 + 0.2463i` agree with the solution of the defining system to
  twelve digits, while the system with `conj q` in the lower left entry gives
  `a ≈ 1.2589 − 0.1142i`, `b ≈ 0.6221 − 0.2396i`; the first-order term of `b` is `∫ q e^{2izs}`, not
  `∫ conj q e^{2izs}`.
- Tao–Thiele convention: for `q = 1` on `[0, 1]`, `|a(1, 5i)| ≈ 1.093 ≤ cosh 1`, while
  `|a(1, −5i)| ≈ 237.0`; the function bounded on `ℂ₊` is the present `a`, whose reflection is Tao and
  Thiele's `a`.
- Translation: for `q(s) = 0.4 cos 5s + 0.3i` on `[0, 1]`, `t₀ = 0.6`, `z = 0.3 + 0.1i`, the translated
  potential gives `a` equal to `a_q(1, z)` and `b` equal to `e^{2izt₀} b_q(1, z)` up to the discretisation
  error.

### 4.2 Dyson bounds and decay

Let `L = ∫₀ᵗ |q|`. Prove that for `z` in the closed upper half-plane `|a(t, z)| ≤ cosh L`,
`|a(t, z) − 1| ≤ cosh L − 1`, `|b(t, z)| ≤ sinh L` and `|b(t, z) − ∫₀ᵗ q(s) e^{2izs} ds| ≤ sinh L − L`; that
`a(t, z) → 1` and `b(t, z) → 0` as `|z| → ∞` in the closed half-plane; and that for `q` integrable on
`[0, ∞)` the functions `a(t, ·)`, `b(t, ·)` converge uniformly on the closed half-plane as `t → ∞`. Route:
the `n`-th Dyson term of `a` or `b` is an integral over the simplex `s₁ < ⋯ < sₙ < t` of
`q(sₙ) conj q(sₙ₋₁) ⋯` times `e^{2izσ}` with an alternating sum `σ ≥ 0`, so it is bounded by `Lⁿ/n!`;
decay is the Riemann–Lebesgue lemma for the image of the simplex integrand under `σ`, uniform over the
compact family `e^{−2σ Im z}`. For the discrete analogue on `ℓ¹`, see taothiele2012 Lecture 1 §3: Lemma 5
(line 430–433) gives the uniform convergence of truncations, and line 460–465 gives the bound
`sup arccosh|a| ≤ Σ arccosh((1 − |F_n|²)^{−1/2})` on the circle.

*Needs:* §1.3 (Dyson expansion), §4.1; Mathlib Riemann–Lebesgue lemma.

**Checks.**

- `q = 1` on `[0, 1]`: `|a(1, 5i)| ≈ 1.093 ≤ cosh 1 ≈ 1.543` and `|b(1, 5i)| ≈ 0.108 ≤ sinh 1`.
- For `q(s) = 0.4 cos 5s + 0.3i` on `[0, 1]` (`L ≈ 0.4006`), at `z = 0.5 + 0.2i`, `−2` and `1.5i` the
  first-order errors of `b` are `0.0059`, `0.0075`, `0.0025`, below `sinh L − L ≈ 0.0108`, and
  `|a − 1|` is `0.044`, `0.057`, `0.030`, below `cosh L − 1 ≈ 0.081`.
- On the open lower half-plane no bound holds: `|a(1, −5i)| ≈ 237`.

### 4.3 The half-plane inequality

Prove that `|a(t, z)|² − |b(t, z)|² ≥ 1` for every `z` in the closed upper half-plane, with equality on
`ℝ`; hence `|a(t, z)| ≥ 1`, `|b(t, z)| < |a(t, z)|`, `a(t, ·)` has no zeros in the closed half-plane,
and `ρ(t, ·) = b(t, ·)/a(t, ·)` is holomorphic on a neighbourhood of the closed half-plane with
`1 − |ρ(t, z)|² ≥ 1/|a(t, z)|²` (poltoratski2024 line 503–507; taothiele2012 Lemma 3 line 296 for the
discrete model). Route: for `X = M(·, z)c`, `h(X) = Im(conj u · v)` satisfies `∂ₜh = Im z |X|² ≥ 2 Im z h`
and `|u − iv|² − |u + iv|² = 4h`. For `c = c₁(1, i) + c₂(1, −i)` one has `h(c) = |c₁|² − |c₂|²`,
`u − iv = 2e^{−itz}(c₁a + c₂b)` and `u + iv = 2e^{itz}(c₁b# + c₂a#)`, so
`|c₁ a + c₂ b|² ≥ |c₁|² − |c₂|²` whenever `|c₂| ≤ |c₁|`; minimising over `c₂` gives `|a|² ≥ 1 + |b|²`.

*Needs:* §3.1 (Christoffel–Darboux identity), §3.3, §4.1.

**Checks.**

- Constant potentials `q ∈ {1, 0.3 + 2i, 3}` on `[0, 1]` and `z` on a grid of the closed half-plane
  give `min(|a|² − |b|²) = 1.0000` (attained on `ℝ`) and `min |a| ≈ 1.006`.
- Real `f` at `z = 0`: `|a|² − |b|² = cosh² F − sinh² F = 1`.
- The inequality fails in the lower half-plane: `q = 1` on `[0, 1]` at `z = −5i` gives
  `|a| ≈ 237 < |b| ≈ 2385`.

### 4.4 Outerness and the finite non-linear Plancherel identity

Let `q` be square-integrable on `[0, t]`. Prove that `log a(t, ·)` (the logarithm vanishing at `i∞`) is a
bounded holomorphic function on `ℂ₊`, that `y(a(t, iy) − 1) → ½∫₀ᵗ |q|²` as `y → ∞`, and the non-linear
Plancherel identity `∫_ℝ log|a(t, x)| dx = (π/2) ∫₀ᵗ |q|²`; hence `log|a(t, ·)| ∈ L¹(ℝ)`,
`a(t, ·) = O⁰_{log|a(t,·)|}` is outer, `log(1 − |ρ(t, x)|²) = −2 log|a(t, x)|` on `ℝ`, and
`∫ −log(1 − |ρ(t, x)|²) dx = π ∫₀ᵗ |q|²`. For real potentials `a(t, iy) > 0` (poltoratski2024 (5.5)
line 545–548 and line 503–507, printed with constant `1`; denisov2006 (194) line 3250–3255;
taothiele2012 Lemma 6 line 680–683 for the discrete model). Route: `log a(t, ·)` is a primitive of
`∂_z a/a` on `ℂ₊` (Tau Ceti `DifferentiableOn.hasDerivAt_wedgeIntegral_upperHalfPlane`), bounded and
continuous to `ℝ` by §4.2–§4.3; §2.5 gives `log|a(t, z)| = P[log|a(t, ·)|](z)`; §2.2 gives
`πy log|a(t, iy)| ↑ ∫ log|a(t, x)| dx`; the Volterra form with the approximate identity
`y e^{−2yu} 1_{u>0}` (mass `1/2`) gives the limit at `i∞`.

*Needs:* §2.2, §2.5, §2.8, §4.1–§4.3; Tau Ceti `DifferentiableOn.hasDerivAt_wedgeIntegral_upperHalfPlane`.

**Checks.**

- `q = 1` on `[0, 1]`: `|a(1, x)|² = 1 + sin²(√(x² − 1))/(x² − 1)`, and `∫ log|a(1, x)| dx ≈ 1.5707`
  numerically against `π/2 ≈ 1.5708`; `y(a(1, iy) − 1) ≈ 0.4853` at `y = 10` and `0.4987` at `y = 100`.
- `q = 0.5 + 1.2i` on `[0, 0.7]`: `1.8580` numerically against `(π/2)(1.69)(0.7) ≈ 1.8583`.
- First order: for small `q`, `log|a| ≈ ½|b|²` and `∫ |∫₀ᵗ q e^{2ixs} ds|² dx = π∫₀ᵗ|q|²`, giving `π/2`
  again; the constant `1` printed in the sources fails this computation.

### 4.5 The Riccati representation

For `z` in the closed upper half-plane define `r(t, z) = e^{2izt} b#(t, z)/a(t, z)`. Prove that
`|r(t, z)| < 1`, that `∂ₜ r = 2iz r + conj q − q r²` with `r(0, z) = 0`, that
`a(t, z) = exp(∫₀ᵗ q(s) r(s, z) ds)`, that `|r(t, z)| ≤ 2∫₀ᵗ e^{−2 Im z (t − s)} |q(s)| ds`, and that
`ρ(t, z) = ∫₀ᵗ q(s) e^{2izs} a(s, z)^{−2} ds`. Route: with `β = e^{2izt} b#`, the pair `(a, β)` solves
`a′ = qβ`, `β′ = 2izβ + conj q a`, so `∂ₜ(|a|² − |β|²) = 4 Im z |β|² ≥ 0`; `∂ₜ ρ = q e^{2izt}/a²` follows from
`det G = 1` (denisov2006 (195) line 3256–3290 for the Krein-system analogue).

*Needs:* §4.1, §4.3.

**Checks.**

- Free case: `r = 0`, `a = 1`, `ρ = 0`.
- For the smooth complex potential of §3.1, `ρ(1.7, 0.6 + 0.25i) ≈ 0.10010 + 0.21808i` both from
  `b/a` and from the integral formula.
- Real `f` at `z = 0`: `r = tanh F`, `a = exp∫ f tanh F = cosh F`.

### Examples

- `q = c · 1_{[0, T]}`: `G = diag(e^{−izt}, e^{izt}) exp(t N)` for `t ≤ T`, with
  `N = [[iz, conj c], [c, −iz]]`, `N² = (|c|² − z²) 1`.
- A delta-like pair of kicks of sizes `c₁` at `0` and `c₂` at `s` (limits of narrow rectangles) gives
  `|a|² − |b|² = cosh² c₂ − |e^{2izs}|² sinh² c₂ ≥ 1` on the closed half-plane.

### Dependencies

Layer 1, Layer 2 (§2.2, §2.5, §2.8), Layer 3.

## Layer 5: The square-integrable scattering limit and the non-linear Fourier transform

Throughout, `q` is square-integrable on `[0, ∞)`, `‖q‖ = (∫₀^∞ |q|²)^{1/2}`, and for `T ≥ 0` the tail
potential is `q_{>T} = q(T + ·)`.

### 5.1 The scattering limit in the half-plane

Prove that for `z ∈ ℂ₊` with `y = Im z`: `log|a(t, z)| ≤ ‖q‖²/y` and
`|ρ(t, z) − ρ(t′, z)| ≤ ‖q‖_{L²(t, ∞)} e^{−2yt}/(2√y)` for `t ≤ t′`; that `a(t, ·)`, `b(t, ·)` and
`ρ(t, ·)` converge, as `t → ∞`, uniformly on every half-plane `{Im z ≥ y₀}`, `y₀ > 0`, to holomorphic
limits `a(∞, ·)`, `b(∞, ·)`, `ρ(∞, ·) = b(∞, ·)/a(∞, ·)`; that `a(∞, z) = exp(∫₀^∞ q(s) r(s, z) ds)`,
`ρ(∞, z) = ∫₀^∞ q(s) e^{2izs} a(s, z)^{−2} ds`, `|a(∞, z)|² − |b(∞, z)|² ≥ 1` and `|ρ(∞, z)| < 1` on `ℂ₊`;
that `y log a(∞, iy) → ½‖q‖²` as `y → ∞`; and that for real potentials `a(∞, iy) ≥ 1`
(denisov2006 Theorem 11.1 line 3246–3255 for Krein systems and §13 (245)–(248) line 4219–4258 for
the dictionary; poltoratski2024 line 518–529). Route: §4.5 gives
`|r(t, z)| ≤ 2(e^{−2y·} * |q|)(t)`, so `‖r(·, z)‖_{L²} ≤ ‖q‖/y` by Young's inequality for the kernel
`e^{−2ys} 1_{s ≥ 0}` of `L¹` norm `1/(2y)`, and
`|log a(t, z)| ≤ ∫|q||r| ≤ ‖q‖²/y`; the tails of `∫ q r` and of `∫ q e^{2izs} a^{−2}` are bounded by
Cauchy–Schwarz.

*Needs:* §4.3, §4.5; Mathlib `TendstoLocallyUniformlyOn.differentiableOn`; Tau Ceti
`TauCeti.norm_convolutionLp_le` and `TauCeti.convolutionLp_ae_eq_convolution` (Young's inequality on
`ℝ` with `p = 2`).

**Checks.**

- `q ∈ L¹ ∩ L²`: the limits agree with the uniform limits of §4.2 on the closed half-plane.
- `q = 1_{[0,1]}`: `a(∞, ·) = a(1, ·)`, and `log a(1, 5i) ≈ 0.0893 ≤ ‖q‖²/5 = 0.2`.
- The bound degenerates as `y → 0`: for `q = 1_{[0,T]}`, `log|a(T, x)|` at `x = 0` is `log cosh T`, which
  is unbounded in `T` although `log|a(T, iy)| ≤ T/y` holds for each `y > 0`.

### 5.2 The non-linear Fourier transform

Define the non-linear Fourier transform of `q` as `q⌃ = ρ(∞, ·)`, a holomorphic function on `ℂ₊` with
`|q⌃| < 1`, together with its boundary function `q⌃*` on `ℝ` given by §2.5 (poltoratski2024 line
550–560; mauth2022 line 190–201). Its API:

- Truncations: `(q_T)⌃ = ρ(T, ·)` on `ℂ₊`; it extends continuously to the closed half-plane and its
  boundary function is `x ↦ b(T, x)/a(T, x)` (poltoratski2024 line 556–560).
- For `q` integrable on `[0, ∞)`, `q⌃` is continuous on the closed half-plane, `q⌃* = lim ρ(T, ·)` uniformly
  on `ℝ`, and `q⌃*(x) → 0` as `|x| → ∞`.

*Needs:* §2.5, §5.1.

**Checks.**

- `q = 0`: `q⌃ = 0`, `a(∞, ·) = 1`.
- `q = c 1_{[0, T]}` with `c` constant: `q⌃*(x) = b(T, x)/a(T, x)` explicitly, with
  `|q⌃*(x)|² = |c|² sin²(κT)/(κ² + |c|² sin²(κT))`, `κ = √(x² − |c|²)`; at `x = 0`, `q⌃*(0) = (c/|c|) tanh(|c|T)`.
- `|q⌃| < 1` is strict on `ℂ₊`: the boundary function of `ρ(T, ·)` for `q = 1_{[0,1]}` has supremum
  `tanh 1 ≈ 0.762`, attained at `x = 0`.

### 5.3 Boundary values, the Plancherel inequality and the concatenation law at the boundary

Prove that `a(∞, ·)` has nontangential boundary values `a(∞, x) ≠ 0` and `b(∞, ·)` has boundary values
`b(∞, x) = q⌃*(x) a(∞, x)` at almost every `x`; the non-linear Plancherel inequality
`∫_ℝ log|a(∞, x)| dx ≤ (π/2)‖q‖²`; that for every `T ≥ 0`, with `(a₁, b₁, ρ₁)` the data of `q` at time `T`,
`ρ₂ = (q_{>T})⌃*` and `u(x) = e^{2ixT} conj(a₁(x))/a₁(x)`, one has for almost every `x`
`q⌃*(x) = (u ρ₂ + ρ₁)/(1 + u ρ₂ conj ρ₁)`, `a(∞, x) = a₂(x) a₁(x)(1 + u ρ₂ conj ρ₁)` and
`|a(∞, x)|² − |b(∞, x)|² = |a₂(x)|² − |b₂(x)|²`, where `(a₂, b₂)` are the boundary values of the
limits for `q_{>T}`; and that `|a(∞, x)|² − |b(∞, x)|² = 1` almost everywhere, so
`−log(1 − |q⌃*(x)|²) = 2 log|a(∞, x)|` (poltoratski2024 line 518–548, 569–577). Route: `1/a(∞, ·)` is
bounded by `1` and not zero, so by §2.5 its boundary values exist and are nonzero almost everywhere.
Plancherel inequality: `log|a(∞, ·)| ≥ 0` is harmonic, so §2.2 gives `c Im z + P[ν]`, and
`πy log|a(∞, iy)| → (π/2)‖q‖²` (§5.1) forces `c = 0` and `ν(ℝ) = (π/2)‖q‖²`, while §2.4 identifies the
absolutely continuous part `ν_ac = log|a(∞, x)| dx`. The concatenation law of §4.1 passes to the limit
in `ℂ₊` and then to the boundary. For the identity, `δ = |a(∞)|² − |b(∞)|² − 1 ≥ 0` equals the
corresponding quantity of the tail, which satisfies `log(1 + δ) ≤ 2 log|a₂|`; integrate and apply the
Plancherel inequality to the tail, whose right side is `π‖q‖²_{L²(T,∞)} → 0`.

*Needs:* §2.2, §2.4, §2.5, §4.1, §4.3, §5.1.

**Checks.**

- `q = q_T` (compact support) and the tail zero: `ρ₂ = 0`, `u` arbitrary, and the formula gives
  `q⌃* = ρ₁`, `a(∞) = a₁`.
- Pseudo-hyperbolic identity: `1 − |q⌃*|² = (1 − |ρ₁|²)(1 − |ρ₂|²)/|1 + uρ₂ conj ρ₁|²`; for
  `ρ₁ = ρ₂ = 1/2`, `u = 1`: `q⌃* = 1/(1 + 1/4) = 4/5`, and both sides equal `9/25`.
- Real `f` with the symmetric data: `q⌃*(−x) = conj q⌃*(x)` is consistent with the formula, since
  `u(−x) = conj u(x)` and `ρ_j(−x) = conj ρ_j(x)`.

### 5.4 The non-linear Plancherel identity at infinity and outerness

Prove that `∫_ℝ log|a(∞, x)| dx = (π/2)‖q‖²` and `∫_ℝ −log(1 − |q⌃*(x)|²) dx = π‖q‖²`; that
`|q⌃*| < 1` almost everywhere; that `a(∞, ·)` is outer, `a(∞, ·) = O⁰_{log|a(∞, ·)|}`, so that
`a(∞, z) = exp(−(1/(2πi)) ∫ log(1 − |q⌃*(x)|²)/(x − z) dx)` and `b(∞, ·) = q⌃ a(∞, ·)`, so that `q⌃` determines
`a(∞, ·)` and `b(∞, ·)`, and `q⌃ = 0` only when `q = 0` almost everywhere; and that for real `q` the value
`a(∞, iy)` is positive (poltoratski2024 (5.5) line 545–548 and line 567–577, printed with
constant `1`; mauth2022 line 206–210; denisov2006 Theorem 11.1 line 3246–3255). Route: the reverse of
§5.3's inequality comes from the pseudo-hyperbolic identity of §5.3,
`∫ −log(1 − |q⌃*|²) ≥ π‖q‖²_{L²(0,T)} − 2∫|log|1 + uρ₂ conj ρ₁||`, where the last integral tends to `0`
because `‖ρ₂‖²_{L²} ≤ π‖q‖²_{L²(T,∞)}` (§5.3 applied to the tail, with `r² ≤ −log(1 − r²)`) and
`‖ρ₁‖²_{L²} ≤ π‖q‖²`; equality with `ν(ℝ)` forces the singular part of the measure of §5.3 to vanish, so
`log|a(∞, ·)| = P[log|a(∞, ·)|]` and §2.8 applies.

*Needs:* §2.2, §2.4, §2.8, §5.1, §5.3.

**Checks.**

- `q = 1_{[0,1]}`: `a(∞, ·) = a(1, ·)` and the identity is §4.4's value `π/2`.
- Scaling: for `q_λ = λ q(λ·)`, `(q_λ)⌃(x) = q⌃(x/λ)` (the dilation rule of §4.1 in the limit), and
  `∫ −log(1 − |q⌃(x/λ)|²) dx = λ π‖q‖² = π‖q_λ‖²`.
- Normalisation: `O⁰` is the right outer function, since `a(∞, iy) → 1`; the outer function `O_h`
  normalised at `i` differs from it by `e^{−(i/π)∫ x h/(1+x²)}`, which is `1` exactly when that integral
  vanishes, as for real `q`, where `log|a(∞, ·)|` is even.

### 5.5 Convergence of truncations

Prove that `‖q⌃* − (q_T)⌃*‖²_{L²(ℝ)} ≤ 4π ‖q‖²_{L²(T,∞)}`; hence `(q_T)⌃*` converges to `q⌃*` in `L²(ℝ)`,
in measure on every bounded interval and in `Π`-measure (`MeasureTheory.TendstoInMeasure` for the
finite measure `Π`); that `log|a(T, ·)| → log|a(∞, ·)|` in `L¹(ℝ)`; and that `a(T, ·) → a(∞, ·)` and
`b(T, ·) → b(∞, ·)` in `Π`-measure on `ℝ` (poltoratski2024 line 518–544 and 577; mauth2022 Lemma 19
line 711 for the measure-convergence pattern). Route: by §5.3, `|q⌃* − ρ₁| ≤ |ρ₂|(1 + |ρ₁|) ≤ 2|ρ₂|`
and `‖ρ₂‖²_{L²} ≤ π‖q‖²_{L²(T,∞)}`; for `a`, the boundary function of `1/a₂` satisfies
`∫ |1 − 1/a₂|² dΠ ≤ 2π Re(1 − 1/a₂(i))`, and `a₂(i) → 1` by §5.1 applied to the tail; the `L¹`
statement follows from convergence in measure and convergence of the integrals (§4.4, §5.4).

*Needs:* §2.5, §4.4, §5.1, §5.3, §5.4; Mathlib `tendstoInMeasure_of_tendsto_eLpNorm`,
`TendstoInMeasure.exists_seq_tendsto_ae`.

**Checks.**

- Compact support `q = q_T₀`: for `T ≥ T₀` the bound is `0` and `(q_T)⌃* = q⌃*`.
- `q(s) = (1 + s)^{−1}` (square-integrable, not integrable): `‖q‖²_{L²(T,∞)} = 1/(1 + T)`, so
  `‖q⌃* − (q_T)⌃*‖²_{L²} ≤ 4π/(1 + T)`.
- Convergence in `L²(ℝ)` does not give convergence at a given point; the pointwise statement is §9.7.

### 5.6 Elementary rules of the non-linear Fourier transform

Prove, for square-integrable `q` and `z ∈ ℂ₊`: translation `(q^{t₀})⌃ = e^{2izt₀} q⌃` for `t₀ ≥ 0`;
modulation `(q e^{2iξ·})⌃(z) = q⌃(z + ξ)` for `ξ ∈ ℝ`; dilation `(λ q(λ·))⌃(z) = q⌃(z/λ)` for `λ > 0`;
for real potentials `q⌃(−conj z) = conj q⌃(z)` and `q⌃*(−x) = conj q⌃*(x)` almost everywhere; and the
first-order approximation: for `q` integrable on `[0, ∞)` with `L = ∫₀^∞ |q|`,
`|q⌃(z) − ∫₀^∞ q(s) e^{2izs} ds| ≤ sinh L − L + L(cosh L − 1)` on the closed half-plane, where at real
`x` the linear term is `𝓕(q · 1_{[0,∞)})(−x/π)` with Mathlib's `𝓕` (poltoratski2024 line 561–567;
taothiele2012 line 687–688 for the discrete model). Route: §4.1's rules pass to the limit; the
first-order bound combines §4.2 with `|1/a − 1| ≤ |a − 1|` from §4.3.

*Needs:* §4.1, §4.2, §4.3, §5.1, §5.2; Mathlib `fourier_real_eq`.

**Checks.**

- For `q(s) = 0.4 cos 5s + 0.3i` on `[0, 1]` (`L ≈ 0.4006`, bound `≈ 0.0434`) the first-order errors at
  `z = 0.5 + 0.2i`, `−2` and `1.5i` are `0.0084`, `0.0096` and `0.0011`.
- Fourier convention: `e^{2ixs} = e^{−2πi s w}` exactly when `w = −x/π`; the frequency `−2x` corresponds to
  the kernel `e^{−ixs}` and is wrong for Mathlib's transform.
- Translation and Plancherel: `|e^{2ixt₀}| = 1` on `ℝ`, so `∫ −log(1 − |q⌃*|²)` is translation invariant,
  matching `‖q^{t₀}‖ = ‖q‖`.
- Real `q = 1_{[0,1]}` at `z = 0`: `q⌃(0) = tanh 1`, real, as the reflection rule requires.

### Examples

- `q = c 1_{[0,T]}`: from §4.1's constant-coefficient solution, `b(T, x) = e^{ixT} c sin(κT)/κ` and
  `a(T, x) = e^{ixT}(cos κT − ix sin(κT)/κ)` with `κ = √(x² − |c|²)`, so
  `q⌃*(x) = c sin κT/(κ cos κT − ix sin κT)`; at `x = 0` this is `(c/|c|) tanh(|c|T)`.
- `q(s) = (1 + s)^{−1}`: square-integrable, not integrable; `q⌃` is defined by §5.2 and its truncations
  converge in `L²(ℝ)` at the rate of §5.5.

### Dependencies

Layer 2 (§2.2, §2.4, §2.5, §2.8), Layer 4.

## Layer 6: de Branges spaces, Weyl functions and spectral measures

### 6.1 The de Branges space of a Hermite–Biehler function

For a Hermite–Biehler `E` define `B(E)` as the set of entire `F` with `F/E` and `F#/E` in `H²(ℂ₊)`, with
`‖F‖²_{B(E)} = ‖F/E‖²_{H²}`, which is `∫ |F(x)/E(x)|² dx` when `E` has no real zeros
(poltoratski2024 line 209–235; mauth2022 line 490–524; debranges1968 §19, waived). Its API:

- `B(E)` is a Hilbert space and `F ↦ F#` is an isometric involution of it.
- Point evaluations are bounded, with reproducing kernel
  `K(w, z) = (E(z) conj E(w) − E#(z) conj E#(w))/(2πi(conj w − z))` (continuous extension at `z = conj w`),
  and for `E = A − iC` with `A, C` real entire,
  `K(w, z) = (A(z) conj C(w) − C(z) conj A(w))/(π(conj w − z))` (mauth2022 Lemma 20 line 735; romanov2014
  Theorem 5 and (18), line 812–821).
- `‖K(w, ·)‖² = K(w, w) = sup{|F(w)|² : ‖F‖_{B(E)} ≤ 1}` (poltoratski2024 (2.4) line 245–249; mauth2022
  Lemma 12 line 509).
- Route for the kernel: the `H²` Cauchy formulas of §2.6 applied to `F/E` at `w` and to `F#/E` at
  `conj w`.

*Needs:* §2.6, §3.3 (definition of Hermite–Biehler).

**Checks.**

- `E = e^{−itz}`: `B(E) = PW_t` with the `L²(ℝ)` norm and `K(w, z) = sin(t(z − conj w))/(π(z − conj w))`.
- `E(z) = z + i`: `B(E)` is the constants, `‖1‖² = ∫ dx/(1 + x²) = π`, and the formula gives
  `K(w, z) = 2i(conj w − z)/(2πi(conj w − z)) = 1/π`, with `‖1/π‖² = 1/π = K(w, w)`.
- `E = 1` is not Hermite–Biehler (`|E#| = |E|`), and the kernel formula degenerates to `0/0`.

### 6.2 The de Branges spaces of a Dirac system

Let `t > 0`. Prove that `B(E(t, ·)) = PW_t` and `B(Ẽ(t, ·)) = PW_t` as sets, with
`e^{−∫₀ᵗ|q|} ‖F‖_{L²} ≤ ‖F‖_{B(E(t,·))} ≤ e^{∫₀ᵗ|q|} ‖F‖_{L²}`, and that the reproducing kernels are
`K_t(w, z) = (1/π) ∫₀ᵗ Θ(s, w)* Θ(s, z) ds` and `K̃_t(w, z) = (1/π) ∫₀ᵗ Φ(s, w)* Φ(s, z) ds`
(poltoratski2024 line 269–285; mauth2022 Lemma 18 line 659–691; romanov2014 Theorem 5 (16) line 812).
Route: `e^{itz}E = a + b` and `|a + b| ≥ |a| − |b| ≥ 1/(|a| + |b|) ≥ 1/(2 cosh ∫₀ᵗ|q|)` on the closed
half-plane (§4.2–§4.3), so `F/E = e^{itz}F/(a + b) ∈ H²(ℂ₊)` for `F ∈ PW_t`; conversely
`e^{itz}F = (a + b)(F/E) ∈ H²(ℂ₊)` and likewise in `ℂ₋`, so §2.7 gives `F ∈ PW_t`; the kernel is §3.2's
identity divided by `π`.

*Needs:* §2.7, §3.2, §3.3, §4.1–§4.3, §6.1.

**Checks.**

- Free case: `B(E(t, ·)) = PW_t` isometrically, `K_t(x, x) = (1/π)∫₀ᵗ (cos² + sin²) = t/π`, the sinc value.
- Real constant `f = c`: at `x = 0`, `|E(t, 0)| = e^{ct}`, so the weight `|E(t, x)|^{−2}` is `e^{−2ct}` there,
  inside the stated bounds `e^{∓2ct}`.
- `t = 0`: `E = 1` is not Hermite–Biehler and `PW_0 = {0}`; the statement is for `t > 0`.

### 6.3 The isometric chain

Prove that for `0 < s ≤ t` and `F ∈ PW_s`, `‖F‖_{B(E(t,·))} = ‖F‖_{B(E(s,·))}`, and the same for `Ẽ`
(poltoratski2024 line 255–262; romanov2014 §8 Theorem 16 line 2283 by an operator-theoretic route).
Route: on `ℝ`, `∂ₜ |E(t, x)|^{−2} = −2 Re(q(t)/E(t, x)²)` almost everywhere (§3.2), so
`∂ₜ ∫ |F|² |E(t, ·)|^{−2} = −2 Re(q(t) ∫ (F/E(t, ·))(F#/E(t, ·)) dx)`, and the integral vanishes by the
product law of §2.6, since `F/E(t, ·)` and `F#/E(t, ·)` lie in `H²(ℂ₊)` for `t ≥ s` (§6.2);
differentiation under the integral is dominated because `|F|²` is integrable and
`|q(t)||E(t, x)|^{−2} ≤ |q(t)| e^{2∫₀ᵗ|q|}`.

*Needs:* §2.6, §3.2, §6.2; Mathlib `hasFDerivAt_integral_of_dominated_of_fderiv_le` (in its
almost-everywhere-in-time absolutely continuous form via §1.2).

**Checks.**

- For real constant `f = c` and `x = 0` the weights differ: `|E(t, 0)|^{−2} = e^{−2ct} ≠ e^{−2cs}`; only the
  integrals against `|F|²`, `F ∈ PW_s`, agree.
- For `q = 0` on `(s, t)` the weights coincide, since `∂ₜ log|E(t, x)| = 0` there.
- The reproducing kernel `K_s(w, ·)` lies in `B(E(t, ·))` with norm `K_s(w, w)^{1/2}`, which is at most
  `K_t(w, w)^{1/2}`, consistent with `K_t(w, w) − K_s(w, w) = (1/π)∫_s^t |Θ(r, w)|² dr ≥ 0`.

### 6.4 The Weyl function

For `z ∈ ℂ₊` and `t ≥ 0` define the Weyl disc
`D_t(z) = {w ∈ ℂ : Im z ∫₀ᵗ |Φ(s, z) + wΘ(s, z)|² ds ≤ Im w}` and the Weyl function `m(z)` as the
point of `⋂_t D_t(z)` (romanov2014 §8 Theorem 15 line 2217–2261, Lemma 23 line 2370; remling2018,
Ch. 2, waived). Its API:

- For `t > 0`, `D_t(z)` is a closed disc of radius `1/(2 Im z ∫₀ᵗ |Θ(s, z)|² ds)`, decreasing in `t`.
  Writing `(u, v) = Φ(t, z) + wΘ(t, z)`, its boundary circle consists of the `w` with `u/v ∈ ℝ ∪ {∞}`,
  among them `−D(t, z)/C(t, z)` and `−B(t, z)/A(t, z)` (`A(t, z)` and `C(t, z)` do not vanish, since
  `Im(conj A(t, z) · C(t, z)) = Im z ∫₀ᵗ |Θ(s, z)|² ds > 0`), while `−Ẽ(t, z)/E(t, z)`, the point where
  `u − iv` vanishes, lies in its interior. Equivalently,
  `D_t(z) = {w : |Ẽ(t, z) + wE(t, z)| ≤ |Ẽ#(t, z) + wE#(t, z)|}`.
- Limit point: `∫₀^∞ |Θ(s, z)|² ds = ∞` for `z ∈ ℂ₊`, so the intersection is a single point.
- `m(z)` is the unique `w` with `Φ(·, z) + wΘ(·, z) ∈ L²(ℝ₊; ℂ²)`.
- `m` is holomorphic on `ℂ₊` with `Im m > 0`, and `−Ẽ(t, ·)/E(t, ·) → m` locally uniformly on `ℂ₊`, with
  error at most twice the radius.
- The Dirichlet Weyl function is `−1/m = lim E(t, ·)/Ẽ(t, ·)`.
- Route: `Im(conj u · v)` of `Φ + wΘ` at time `t` is `−Im w + Im z ∫₀ᵗ|Φ + wΘ|²` by the
  Christoffel–Darboux identity; nesting is monotonicity in `t`; since `A, B, C, D` are real entire (§3.1),
  `(u − iv)(t) = Ẽ(t, z) + wE(t, z)` and `(u + iv)(t) = Ẽ#(t, z) + wE#(t, z)`, and
  `Im(conj u · v) = (|u − iv|² − |u + iv|²)/4` gives the second description, a disc because
  `|E(t, z)| > |E#(t, z)|` (§3.3); `u − iv` vanishes at `w = −Ẽ/E`, where `u + iv ≠ 0` because
  `(u, v) ≠ 0`, so that point lies inside the disc. Limit point: if `Θ(·, z₀) ∈ L²` for some `z₀ ∈ ℂ₊`,
  every solution is square-integrable at `z₀` and then, by variation of constants and §1.1, at every `z`;
  at `z = 0`, `det[Θ, Φ] = 1` gives `1 ≤ |Θ||Φ|`, which is not integrable on `[0, ∞)`.

*Needs:* §1.1, §1.3, §3.1, §3.2, §3.3.

**Checks.**

- Free case: `−Ẽ/E = i` for every `t`, `m = i`, and `Φ + iΘ = (i e^{itz}, e^{itz})` is square-integrable on
  `ℝ₊` for `z ∈ ℂ₊`; the radius is `1/sinh(2t Im z) → 0`.
- `−Ẽ/E` is interior, not a boundary point. Free case, `t = 1.7`, `z = 0.6 + 0.25i`: at `w = −Ẽ/E = i`,
  `Im z ∫₀ᵗ |Φ + iΘ|² = 1 − e^{−2t Im z} = 1 − e^{−0.85} ≈ 0.5726 < 1 = Im i`; the disc is
  `|w − i| ≤ e^{−2t Im z} |w + i|`, with centre `i coth(0.85) ≈ 1.4470i` and radius `1/sinh(0.85) ≈ 1.0459`,
  at distance `0.4470` from `i`, while `−D/C = −cot(tz)`, where `v = 0`, lies on the circle. For the smooth
  complex potential of §3.1 at the same `t` and `z`, `w₀ = −Ẽ/E ≈ 0.3468 + 0.7493i` has
  `Im z ∫₀ᵗ |Φ + w₀Θ|² ≈ 0.4541 < Im w₀`, and the disc `|Ẽ + wE| ≤ |Ẽ# + wE#|` has radius `≈ 0.6538`,
  equal to the stated radius, with `−D/C` and `−B/A` on its circle. A description with `−Ẽ/E` on the
  boundary would force equality in both instances.
- On `ℝ`, `Im(−Ẽ(t, x)/E(t, x)) = 1/|E(t, x)|²` by `det M = 1`; for the smooth complex potential of §3.1
  at `x = 0.7`, both sides are `0.983136`, and `Im(E/Ẽ) = 1/|Ẽ|² = 0.838119`.
- Compact support (`q = 0` on `(T, ∞)`): `m = −Ẽ(T, ·)/E(T, ·)` exactly, since beyond `T` the
  square-integrable free solution has `u − iv = 0`.

### 6.5 Spectral measures

Define the Neumann spectral measure `μ_q` as the Poisson-finite measure of §2.2 for the positive harmonic
function `Im m`, so that `Im m = β Im z + P[μ_q]` with `β ≥ 0`, and the Dirichlet spectral measure `μ̃_q`
likewise for `Im(−1/m)`; write `μ = w dx + μ_s` and `μ̃ = w̃ dx + μ̃_s` (poltoratski2024 line 255–264;
mauth2022 line 692–701; romanov2014 line 2275–2281). Its API:

- `w(x) = Im m(x + i0)` and `w̃(x) = Im(−1/m)(x + i0) = w(x)/|m(x + i0)|²` at almost every `x` where the
  nontangential limit `m(x + i0)` exists and is finite and nonzero (§2.4); hence `w w̃ ≤ 1` almost
  everywhere.
- Compact support: if `q = 0` on `(T, ∞)` then `β = 0`, `μ_q = dx/|E(T, x)|²` and `μ̃_q = dx/|Ẽ(T, x)|²`.
- Free case: `μ = μ̃ = dx`.
- `μ_q` and `μ̃_q` are determined by `m`, which depends only on `q` on `[0, ∞)`.

*Needs:* §2.2, §2.4, §2.5, §6.4; Tau Ceti `TauCeti.exists_isFiniteMeasure_eq_nevanlinnaKernel_add`.

**Checks.**

- Free case: `m = i`, `Im m ≡ 1 = P[dx]`, `μ = dx`, `β = 0`.
- Real constant `f = c` on `[0, T]`, zero afterwards, at `x = 0`: `m(0) = −Ẽ(T, 0)/E(T, 0) = i e^{−2cT}`, so
  `w(0) = e^{−2cT}`, `w̃(0) = e^{2cT}` and `w w̃ = 1` there; the inequality `w w̃ ≤ 1` is strict exactly where
  `Re m(x + i0) ≠ 0`.
- A constant potential on all of `[0, ∞)`, `f ≡ c > 0`, has `w = 0` on `(−c, c)` (exponentially growing and
  decaying real solutions), so `μ` is not equivalent to Lebesgue measure without a decay hypothesis.

### 6.6 The isometric embedding and uniqueness of the spectral measure

Prove that for every `t ≥ 0` and `F ∈ PW_t`, `∫ |F|² dμ_q = ‖F‖²_{B(E(t,·))}` and
`∫ |F|² dμ̃_q = ‖F‖²_{B(Ẽ(t,·))}`, and that `μ_q` is the only Poisson-finite measure with the first property
for all `t` (poltoratski2024 line 255–262; romanov2014 §8 Theorem 16 line 2283–2363;
debranges1968 §§19–23 and remling2018 Ch. 3, waived). Route: the measures `μ_T = dx/|E(T, ·)|²` of the
truncations `q_T` (§6.5) represent `m_T = −Ẽ(T, ·)/E(T, ·)`, and `m_T → m` locally uniformly (§6.4), so the
Cayley images of `μ_T/(π(1 + x²))`, with the atoms `β_T δ₁`, converge weakly on the circle (their
Herglotz transforms converge); for `F ∈ PW_t` with `zF ∈ PW_t`, `(1 + x²)|F(x)|² → 0` at `±∞`, so
`∫|F|² dμ_T → ∫|F|² dμ`, while `∫|F|² dμ_T = ‖F‖²_{B(E(t,·))}` for `T ≥ t` by §6.3; such `F` are dense in
`PW_t` (§2.7), and Cauchy sequences in `B(E(t, ·))` are Cauchy in `L²(μ)`. Uniqueness: two such measures
give equal finite measures `|k_ε|² dμ` for `k_ε(x) = sin(εx)/x`, by Mathlib `Measure.ext_of_charFun`
applied to `e^{iax}k_ε` and `k_ε`.

*Needs:* §2.1, §2.7, §6.3, §6.4, §6.5; Mathlib `Measure.ext_of_charFun`; Tau Ceti
`TauCeti.integral_circle_eq_atom_add_integral_cayleyPushforward`.

**Checks.**

- Free case: Plancherel `∫ |F|² dx = ‖F‖²_{L²}`.
- Compact support `q = q_T`: for `t ≥ T` the identity is the definition of `μ`, and for `t < T` it is §6.3.
- `2 dx` fails the identity in the free case (`∫ |F|² 2dx = 2‖F‖²`), so the normalisation of `μ` is forced.

### 6.7 Relative entropy and its semicontinuity

For finite Borel measures `σ`, `ν` on a compact metric space `X` define the relative entropy
`S(σ | ν) = −∫ log(dσ/dν) dσ` when `σ ≪ ν` and `−∞` otherwise (killipsimon2003 (5.9) line 1812–1819). Its
API:

- `S(σ | ν) ≤ log ν(X)` for a probability measure `σ`, with equality for `σ = ν` (Lemma 5.1 line 1836).
- Variational formula: `S(σ | ν) = inf {∫ F dν − ∫ (1 + log F) dσ : F continuous, min F > 0}` (Theorem 5.2
  line 1864).
- Joint weak upper semicontinuity: `σₙ → σ` and `νₙ → ν` weakly imply `S(σ | ν) ≥ lim sup S(σₙ | νₙ)`
  (Corollary 5.3 line 1960).
- Transport to the line: for a Poisson-finite `μ = w dx + μ_s` on `ℝ`, with `σ` the Cayley image of `Π/π`
  and `ν` the Cayley image of `μ/(π(1 + x²))` together with any atom at `1`, `S(σ | ν) = (1/π) ∫ log w dΠ`.

*Needs:* Mathlib weak convergence of finite measures on a compact space, `Measure.rnDeriv`; Tau Ceti
`TauCeti.boundaryCayley`.

**Checks.**

- Let `σ = dθ/2π` be the Cayley image of `Π/π`: the `σ` of the transport bullet, a non-atomic probability
  measure. Then `ν = σ` gives `S = 0`, and `ν = 2σ` gives `S = log 2 = log ν(X)`. For the point mass
  `ν = δ₁`, the set `X ∖ {1}` has `ν`-measure `0` and `σ`-measure `1`. So `σ` is not absolutely continuous
  with respect to `ν`, and `S = −∞`. Two equal point masses, by contrast, give `S(δ₁ | δ₁) = 0`, so this
  case needs a non-atomic first argument.
- Semicontinuity is not continuity: `νₙ = (1 + sin nθ) dθ/2π → σ` weakly while
  `S(σ | νₙ) = (1/2π)∫₀^{2π} log(1 + sin θ) dθ = −log 2 < 0 = S(σ | σ)`.
- Free spectral measure `μ = dx`: `S(σ | ν) = (1/π)∫ log 1 dΠ = 0`.

### 6.8 The Szegő condition for square-integrable potentials

Let `q` be square-integrable. Prove that `∫ log w dΠ ≥ −2π log 2 − π‖q‖²` and the same for `w̃`; hence
`log w, log w̃ ∈ L¹(Π)` and `w, w̃ > 0` almost everywhere (poltoratski2024 line 263–268; mauth2022
Theorem 3 line 702–707; denisov2006 Theorem 11.1 line 3246 with the dictionary of §13). Route: for the
truncation `q_T`, `w_T = |E(T, ·)|^{−2}` and `|E(T, x)| = |a(T, x) + b(T, x)| ≤ 2|a(T, x)|`, so
`∫ log w_T dΠ ≥ −2π log 2 − 2∫ log|a(T, x)| dx = −2π log 2 − π‖q‖²_{L²(0,T)}` by §4.4; the measures converge
as in §6.6, and §6.7 transfers the bound to `μ`; `log⁺ w ≤ w` is `Π`-integrable because `μ` is
Poisson-finite.

*Needs:* §4.4, §6.5, §6.6, §6.7.

**Checks.**

- Free case: `w = 1` and `0 ≥ −2π log 2`.
- Real constant `f = c` on `[0, T]`: at `x = 0`, `log w(0) = −2cT`, and `|E(T, 0)| = e^{cT} ≤ 2|a(T, 0)| = 2 cosh cT`.
- Square-integrability is needed: `f ≡ c > 0` on `[0, ∞)` gives `w = 0` on `(−c, c)` and
  `∫ log w dΠ = −∞`.

### Examples

- For `q = c 1_{[0,T]}`, `μ = dx/|E(T, x)|²` with `|E(T, x)|² = |a + b|²` explicit from §4.1, and
  `m = −Ẽ(T, ·)/E(T, ·) = i(a − b)/(a + b)` at time `T`.
- The Sinc kernel `sin(t(z − conj w))/(π(z − conj w))` is `K_t` of the free system.

### Dependencies

Layer 2 (§2.1, §2.2, §2.4–§2.7), Layer 3, Layer 4 (§4.1–§4.4), Layer 1 (§1.1, §1.3).

## Layer 7: Meromorphic inner functions and resonances

From here on the potential is real, `q = f`, as in poltoratski2024 §§3–9.

### 7.1 Meromorphic inner functions and the phase of a Hermite–Biehler function

Call a bounded holomorphic `θ` on `ℂ₊` inner when `|θ*| = 1` almost everywhere (§2.5), and meromorphic
inner when it moreover extends to a meromorphic function on `ℂ`; for `λ ∈ ℂ₊` the Blaschke factor is
`b_λ(z) = (z − λ)/(z − conj λ)` (poltoratski2024 line 307–331; mauth2022 line 446–453). Its API, for `E`
Hermite–Biehler, entire of order at most one, with no real zeros:

- `θ_E = E#/E` is meromorphic inner, and products of meromorphic inner functions are meromorphic inner.
- Writing `E(x) = |E(x)| e^{−iψ(x)}` with `ψ` continuous on `ℝ`, so that `ψ = −arg E` (for `E = E(t, ·)`
  one may take `ψ = −φ(t, ·)`, the negative of the branch `φ` of §3.2), `θ_E(x) = e^{2iψ(x)}` and
  `ψ′(x) = π K(x, x)/|E(x)|² > 0`, with `K` the kernel of §6.1.
- If `(ζₙ)` are the zeros of `θ_E` in `ℂ₊` with multiplicity (the conjugates of the zeros of `E`), then
  `Σ Im ζₙ/(1 + |ζₙ|²) < ∞` and there is `c ≥ 0` with `2ψ′(x) = |θ_E′(x)| = c + Σₙ 2 Im ζₙ/|x − ζₙ|²` for every
  `x ∈ ℝ` (poltoratski2024 line 312–321 and the proof of Lemma 1, line 337–346).
- Route: Hadamard factorisation of `E` with genus one (AnalyticNumberTheoryPartI §0.23) gives
  `E′/E = β + Σₙ (1/(z − zₙ) + 1/zₙ)`; on `ℝ`, `θ_E′/θ_E = −2i Im(E′/E)`; the Hermite–Biehler inequality
  `|θ_E| ≤ 1` on `ℂ₊`, evaluated along `iy`, forces the Blaschke condition and `c ≥ 0`.

*Needs:* §2.5, §3.3, §6.1; AnalyticNumberTheoryPartI §0.23.

**Checks.**

- `E = e^{−itz}`: `θ_E = e^{2itz}`, no zeros, `|θ_E′| = 2t = c`, and `ψ(x) = tx`, `ψ′ = t = π(t/π)/1`,
  while the branch of §3.2 is `φ(t, x) = −tx`, with `∂ₜφ = −x`.
- `E(z) = z + i`: `θ_E = (z − i)/(z + i) = b_i`, `|θ_E′(x)| = 2/(1 + x²) = 2 Im i/|x − i|²`, `c = 0`, and
  `ψ′ = 1/(1 + x²) = π(1/π)/(1 + x²)`.
- `e^{−i/z}` is inner but has an essential singularity at `0`, so it is not meromorphic inner; `e^{−iz}`
  is unbounded on `ℂ₊` (`|e^{−iz}| = e^{Im z}`), so the reflected convention `E/E#` is not inner.

### 7.2 Zeros near points where the phase derivative varies

Let `θ` be meromorphic inner with the representation of §7.1, `0 < ε < 1` and `x, y ∈ ℝ` with
`|θ′(x)| > (1 + ε)|θ′(y)|`. Prove that `θ` has a zero in the disc `{ζ : |ζ − x| < 3|y − x|/ε}`
(poltoratski2024 Lemma 1 line 332–360; mauth2022 Lemma 29 line 1624). Route: some summand satisfies the
same inequality, which places `ζₙ` inside an Apollonius circle with foci `x` and `y`.

*Needs:* §7.1.

**Checks.**

- `θ = b_i`, `x = 0`, `y = 1`: `|θ′(0)| = 2`, `|θ′(1)| = 1`, and for every `ε < 1` the disc of radius `3/ε`
  about `0` contains `i`.
- `θ = e^{2itz}`: `|θ′|` is constant, the hypothesis never holds, and `θ` has no zeros.
- `θ = b_{10i}`, `ε = 1/2`: `|θ′(0)| = 0.2`, `|θ′(5)| = 0.16` (ratio `1.25`, hypothesis fails), `|θ′(10)| = 0.1`
  (ratio `2`), and the disc of radius `60` about `0` contains `10i`.

### 7.3 Dirac inner functions and the motion of resonances

For a real potential define the Dirac inner functions `θ(t, ·) = E#(t, ·)/E(t, ·)` and
`θ̃(t, ·) = Ẽ#(t, ·)/Ẽ(t, ·)`; a resonance at time `t` is a zero of `E(t, ·)`, equivalently the conjugate
of a zero of `θ(t, ·)` (poltoratski2024 §4 line 361–468). Its API:

- For `t > 0` both are meromorphic inner (§3.3, §7.1); `θ(0, ·) = 1` and `θ̃(0, ·) = −1`; `|θ(t, x)| = 1` on `ℝ`.
- Riccati equation (4.1): `θ(t, z) = 1 + ∫₀ᵗ (2izθ + f(1 − θ²))(s, z) ds` wherever `E(s, z) ≠ 0` for
  `s ∈ [0, t]`, and likewise for `θ̃` with initial value `−1`.
- Resonance motion (4.3): if `ζ(t)` is a simple zero of `θ(t, ·)` on a time interval, then `ζ` is
  absolutely continuous with `ζ′(t) = −f(t)/∂_zθ(t, ζ(t))` almost everywhere (poltoratski2024 line 425–444).
- Route: (4.1) from §3.2; the zero is `ζ(t) = (1/2πi)∮ w ∂_wθ(t, w)/θ(t, w) dw` over a small fixed circle,
  absolutely continuous in `t`.

*Needs:* §1.6, §3.2, §3.3, §7.1.

**Checks.**

- Free case: `θ = e^{2itz}` solves `∂ₜθ = 2izθ`, with no zeros.
- Constant `f = c` at `z = 0`: `E(t, 0) = e^{ct}` is real, so `θ(t, 0) = 1` and the right side
  `f(1 − 1²) = 0` is consistent; `θ̃(t, 0) = (i e^{−ct})/(−i e^{−ct}) = −1`.
- For complex potentials the equation reads `∂ₜθ = 2izθ + conj q − qθ²`; the real form is its `g = 0` case.

### Examples

- `E(t, ·)` for `f = c 1_{[0,T]}` has infinitely many zeros in `ℂ₋`, which are the resonances of the
  rectangular barrier; `θ(t, ·)` is then a Blaschke product times `e^{iaz}`.
- `θ = b_i b_{2i}` has `|θ′(x)| = 2/(1 + x²) + 4/(4 + x²)`.

### Dependencies

Layer 2 (§2.5), Layer 3, Layer 6 (§6.1); AnalyticNumberTheoryPartI §0.23.

## Layer 8: Universality and the approximation of Hermite–Biehler functions

The potential is real and square-integrable. Write `K(t, λ, z) = K_t(conj λ, z)` for the bilinear
reproducing kernel of `B(E(t, ·))` (§6.2), so that `K(t, λ, z) = D(t, λ, z)/(π(λ − z))` with numerator
`D(t, λ, z) = A(t, z)C(t, λ) − C(t, z)A(t, λ)`; and `Sinc(t, λ, z) = sin(t(λ − z))/(π(λ − z))`, the free
kernel, with numerator `sin(t(λ − z))` (poltoratski2024 (2.3) line 241–244 and (7.1) line 804–813;
mauth2022 line 1200). `w`, `w̃` are the densities of §6.5.

### 8.1 Boxes and resonance sets

Define, for `s ∈ ℝ` and `C > 0` (or a function `C(t) > 0`), the sets of times
`T₀(s, C) = {t > 0 : E(t, ·) has a zero in Q(s, C/t)}` and
`T₁(s, C) = {t > 0 : every zero of E(t, ·) in Q(s, C/t) has imaginary part < −1/t}`, and their analogues
`T̃₀`, `T̃₁` for `Ẽ`; and `γ(p) = √2/√(sinh 2p)` for `p > 0` (poltoratski2024 line 846–849 and
997–1001; mauth2022 line 1245–1257).

- `T₀(s, C)` and `T₁(s, C)` increase and decrease in `C` respectively, and `(0, ∞) ∖ T₀(s, C) ⊆ T₁(s, C)`.
- `γ(p)² sinh 2p = 2`, `γ(p) ~ 2e^{−p}` as `p → ∞`, and for real `a`,
  `|γ(p) sin(a + ip)|² = 2(sin²a + sinh²p)/sinh 2p` lies in `[tanh p, coth p]` and tends to `1` as
  `p → ∞`, uniformly in `a`.

*Needs:* §3.3.

**Checks.**

- Free case: `E(t, ·) = e^{−itz}` has no zeros, so `T₀(s, C) = ∅` and `T₁(s, C) = (0, ∞)`.
- `γ(1) = √2/√(sinh 2) ≈ 1.41421/1.90443 ≈ 0.7426`; and for real `a`,
  `|γ(p) sin(a + ip)|² = 2(sin²a + sinh²p)/sinh 2p`, which tends to `1` as `p → ∞` uniformly in `a`.
- A zero at `s − i/(2t)` puts `t` in `T₀(s, 1)` and outside `T₁(s, 1)`; a zero at `s − 2i/t` puts `t` in
  `T₀(s, 3) ∩ T₁(s, 3)`.

### 8.2 Universality of kernel norms

Prove that for almost every `s ∈ ℝ` and every `C > 0`,
`sup_{λ ∈ Q(s, C/t)} |w(s) K_t(λ, λ)/Sinc_t(λ, λ) − 1| → 0` as `t → ∞`, where
`K_t(λ, λ) = sup{|F(λ)|² : F ∈ PW_t, ∫|F|² dμ ≤ 1}` and
`Sinc_t(λ, λ) = sup{|F(λ)|² : F ∈ PW_t, ∫|F|² dx ≤ 1} = sinh(2t Im λ)/(2π Im λ)` (poltoratski2024 Lemma 2
line 630–727; mauth2022 Lemma 21 line 794). Route (upper bound): let `G = O_{(1/2) log w}` be the outer
function with `|G|² = w` on `ℝ` (§2.8; `log w ∈ L¹(Π)` by §6.8). Take `s` with `w(s) > 0` that is a
Lebesgue point of `√(M_1 P[|log w|])` (§2.3) and at which `G` has a nontangential limit, and multiply `G`
by a unimodular constant so that this limit is `√w(s)`. Almost every `s` qualifies: the limits exist
almost everywhere by the boundary-value bullet of §2.8, because `w dx ≤ μ` is Poisson-finite. Rescale by
`t`: `G_t(z) = G(s + z/t)` is outer with boundary modulus `√w(s + ·/t)`, by the covariance of §2.1 and the
characterisation of §2.8. A counterexample sequence `fₙ ∈ PW_1` with `∫ |fₙ|² w(s + ·/kₙ) dx ≤ 1` has
`e^{iz}fₙ ∈ H²(ℂ₊)` (§2.7). So `e^{iz}fₙ G_{kₙ} ∈ H²(ℂ₊)` with norm at most `1`, by the outer-multiplier
bullet of §2.8. A subsequence converges weakly and normally (§2.6), and §2.7's characterisation produces
an `H ∈ PW_1` violating the extremal value. Lower bound: `|Sinc(t, λ, ·)|²/‖Sinc(t, λ, ·)‖²₂` is an
approximate identity at `s`, so its `μ`-integral tends to `w(s)` at almost every `s` (§2.4), and
`Sinc(t, λ, ·)/‖·‖_μ` is a competitor.

*Needs:* §2.1, §2.3, §2.4, §2.6, §2.7, §2.8, §6.2, §6.6, §6.8.

**Checks.**

- Free case: `μ = dx`, `w ≡ 1`, `K = Sinc`, and the ratio is `1` for every `t`.
- For real `λ`, `Sinc_t(λ, λ) = t/π`, so the statement says `K_t(λ, λ) = (t/π)(1/w(s) + o(1))` uniformly for
  `|λ − s| ≤ C/t`.
- The statement fails at points with `w(s) = 0`: for `f ≡ c` (not square-integrable) and `s ∈ (−c, c)`,
  `w(s) = 0` while `K_t(s, s) > 0`.

### 8.3 `L²` proximity of kernels

Prove that for almost every `s` and every `C > 0`,
`sup_{λ ∈ Q(s, C/t)} ‖K_t(λ, ·) − Sinc_t(λ, ·)/w(s)‖²_{L²(μ)} = o(t)` (poltoratski2024 Lemma 3 line
729–751; mauth2022 Corollary 3 line 1104). Route: expand the square using the reproducing property and
the approximate-identity limit of §8.2, then use §8.2 and `Sinc_t(λ, λ) ≍ t`.

*Needs:* §8.2.

**Checks.**

- Free case: the left side is `0`.
- Scaling: `Sinc_t(λ, λ) = t/π` for real `λ`, so `o(t)` is `o(Sinc_t(λ, λ))`, the natural scale.
- The normalisation `Sinc/w(s)` is forced: with `Sinc/√w(s)` the same expansion gives
  `‖K_t(λ, ·) − Sinc_t(λ, ·)/√w(s)‖²_μ = Sinc_t(λ, λ)(1/√w(s) − 1)² + o(t)`, of order `t` unless `w(s) = 1`.

### 8.4 Uniform proximity of kernels

Prove that for almost every `s` and every `C > 0`,
`sup_{λ, z ∈ Q(s, C/t)} |K(t, λ, z) − Sinc(t, λ, z)/w(s)| = o(t)` (poltoratski2024 Lemma 4 (6.6) line
756–792; mauth2022 Lemma 22 line 1129). Route: `Δ = K(t, λ_t, ·) − Sinc(t, λ_t, ·)/w(s)` lies in `PW_t`
(§6.2, §2.7), so `e^{itz}Δ ∈ H²(ℂ₊)` (§2.7). Since `w dx ≤ μ`, §8.3 gives `∫ |Δ|² w dx ≤ ∫ |Δ|² dμ = o(t)`.
Let `G = O_{(1/2) log w}` be the outer function with `|G|² = w` on `ℝ` (§2.8, §6.8). The outer-multiplier
bullet of §2.8 then gives `F(t, ·) = e^{itz} G Δ ∈ H²(ℂ₊)` with `‖F(t, ·)‖² = ∫ |Δ|² w dx = o(t)`. Hence
`F(t, ·)` has nontangential maximal function `o(√t)` in `L²` (§2.6); choose two real points
on either side of `Q(s, C/t)` where it is `o(t)` and where `√(M_1 P[log w])` is controlled; the difference
of kernels is real entire, so the bound on the boundary of a rhombus symmetric about `ℝ` gives the bound
inside by the maximum principle.

*Needs:* §2.3, §2.6, §2.7, §2.8, §6.2, §6.8, §8.3.

**Checks.**

- Free case: the difference is `0`.
- On the diagonal `z = λ = s`: `K(t, s, s) − (t/π)/w(s) = o(t)`, consistent with §8.2.
- The difference is real entire for real `λ` because `A`, `C` are real entire (§3.1); for a complex
  `λ` the same holds for `K(t, λ, ·) − Sinc(t, λ, ·)/w(s)` and its reflection.

### 8.5 Proximity of the numerators

Prove that for almost every `s` and every `C > 0`,
`sup_{λ, z ∈ Q(s, C/t)} |D(t, λ, z) − sin(t(λ − z))/w(s)| → 0`, and that there is `C(t) → ∞` with the
same conclusion over `Q(s, C(t)/t)` (poltoratski2024 Lemma 5 (7.2) and Corollary 1 (7.3), line 814–842;
mauth2022 Corollaries 4–5 line 1205–1242). Route: multiply §8.4 by `π|λ − z| ≤ 2√2 πC/t`; a diagonal
argument over `C = 1, 2, …` gives `C(t)`.

*Needs:* §8.4.

**Checks.**

- Free case: `D = cos tz sin tλ − sin tz cos tλ = sin(t(λ − z))`, exactly.
- `λ = z`: both numerators vanish.
- Real constant `f = c` at `z = 0`, `λ` real small: `D(t, λ, 0) = A(t, 0)C(t, λ) = e^{ct}C(t, λ)`; the
  statement concerns square-integrable potentials only, and for `f ≡ c` it fails at `s = 0` because
  `w(0) = 0`.

### 8.6 Approximation near a resonance

Prove that for almost every `s` and every `D > 1` with `T₀(s, D)` unbounded there is `C(t) > D`,
`C(t) → ∞`, such that: if `z(t) = x(t) − iy(t)` is a continuous choice of zeros of `E(t, ·)` in
`Q(s, C(t)/t)` for `t ∈ T₀(s, C)`, then there is a continuous unimodular `α(s, t)` with
`sup_{z ∈ Q(s, C(t)/t)} |E(t, z) − α(s, t) γ(t y(t)) sin(t(z − z(t)))/√w(s)| → 0` as `t → ∞` in
`T₀(s, C) ∩ {t y(t) > 1}`, and with error `o(γ(t y(t)))` without the restriction `t y(t) > 1`; and,
equivalently for the Dirac inner function on `Q₊(s, C(t)/t) = Q(s, C(t)/t) ∩ ℂ₊`,
`sup |θ(t, z) − conj(α)² sin(t(z − conj z(t)))/sin(t(z − z(t)))| → 0`, with the derivative relation at the
zero `conj z(t)` of `θ(t, ·)`: `α² ∂_zθ(t, conj z(t)) = (1 + o(1)) t/sin(2it y(t))` (poltoratski2024 Lemma 6
and Corollary 2, line 850–917,
Remark 3 line 863; mauth2022 Lemma 23 line 1258 and Lemma 32 line 1765). Route: `E(t, z(t)) = 0` gives
`A(t, z(t)) = iC(t, z(t)) = β`, so `D(t, z(t), ·) = iβE(t, ·)`, and §8.5 makes `iβE` close to
`sin(t(· − z(t)))/w(s)`; the determinant identity (2.2) at two points fixes `2|β|²w(s) = (1 + o(1)) sinh(2t y(t))`.

*Needs:* §3.2, §7.3, §8.5.

**Checks.**

- The normalisation: `|γ(p) sin(t(x − z(t)))|` with `t(x − x(t)) = a` real equals
  `(2(sin²a + sinh²p)/sinh 2p)^{1/2}` with `p = t y(t)`, between `γ(p) sinh p` and `γ(p) cosh p`, and tends to
  `1` as `p → ∞`, matching `|E(t, x)| ≈ 1/√w(s)` away from resonances.
- Determinant consistency: with `E ≈ αγ(p) sin(t(z − z₀))/√w` and `Ẽ ≈ αγ(p) cos(t(z − z̃₀))/√w̃`, the
  quantity `E Ẽ# − Ẽ E#` equals `2i` exactly when `cos(t(x̃₀ − x₀)) = √(w w̃)` (computed in §9.2).
- Free case: `T₀ = ∅` and the statement is vacuous.

### 8.7 Approximation away from resonances

Prove (poltoratski2024 Corollary 3 line 1002–1012 and the argument of line 918–996; mauth2022
Corollary 6 line 1397–1408): (1) for almost every `s` there are `C(t) → ∞` and `z(t) = x(t) − iy(t) ∈ ℂ₋`
with `sup_{z ∈ Q(s, C(t)/t)} |E(t, z) − α(s, t) γ(t y(t)) sin(t(z − z(t)))/√w(s)| → 0` as `t → ∞` in
`T₁(s, C)`, `|α| = 1`, where `z(t)` is a zero of `E(t, ·)` when `t ∈ T₀(s, C)`; (2) if this holds and
`t ∉ T₀(s, C(t))` for all large `t`, then for every `D > 0`,
`sup_{z ∈ Q(s, D/t)} |E(t, z) + iα(s, t) e^{−itz}/√w(s)| → 0`. Route: §8.5 with two values of the second
argument shows that `(A(t, x), C(t, x))` has modulus bounded below and rotates on `ℝ ∩ Q(s, C/t)`;
choosing its zero crossings gives `E ≈ −cos(t(z − x₂))/(c₂w) − i sin(t(z − x₀))/(c₁w)`; if `t(x₂ − x₀)` were
not `o(1)` modulo `2π`, or `c₁ − c₂` not `o(1)`, the phase derivative of `E` would vary by a factor
`1 + ε` on an interval of length `8π/t`, and §7.2 would give a zero in `Q(s, C/t)`.

*Needs:* §7.2, §8.5, §8.6.

**Checks.**

- Free case: `E = e^{−itz}` and `w = 1`, so (2) holds exactly with `α = i`: `e^{−itz} + i·i·e^{−itz} = 0`.
- With `A = t(z − x)` and `p = t y`, `γ(p) sin(A + ip) = i e^{−iA}(1 + O(e^{2|Im A| − 2p}))`, and
  `|Im A| ≤ D` on `Q(s, D/t)`; so (1) passes into (2), with `α` replaced by a unimodular multiple, when
  `t y(t) → ∞`.
- At a point `s` with `w(s) = 0` the normalisation `1/√w(s)` is undefined; for square-integrable `f` such
  points form a null set (§6.8), which is why the statement holds almost everywhere and not everywhere.

### 8.8 Joint approximation of `E` and `Ẽ`

Prove that for almost every `s` there is `C(t) → ∞` such that for every `t ∈ T₁(s, C) ∩ T̃₁(s, C)` there
are `z(t) = u(t) − ip(t)`, `z̃(t) = ũ(t) − ip(t)` with `p(t) > 0` and a unimodular `α(t)` with
`sup_{Q(s, C(t)/t)} |E(t, z) − α γ(tp) sin(t(z − z(t)))/√w(s)| → 0`,
`sup_{Q(s, C(t)/t)} |Ẽ(t, z) − α γ(tp) cos(t(z − z̃(t)))/√w̃(s)| → 0`, `p(t) > C(t)/t` for `t ∉ T₀(s, C)`,
`p(t) ≤ C(t)/t` for `t ∈ T₀(s, C)`, and `cos(t(ũ(t) − u(t))) = √(w(s) w̃(s))` (poltoratski2024 Lemma 7
line 1028–1097, (8.1); mauth2022 Lemma 43 line 3140). Route: §8.7 for `E` and `Ẽ`; inserting the two
approximants into the determinant identity (2.2) on `ℝ ∩ Q(s, D/t)` forces equal imaginary parts and the
cosine relation. The relation needs `√(w w̃) ≤ 1`, which is §6.5.

*Needs:* §3.2, §6.5, §8.7.

**Checks.**

- `√(w w̃) ≤ 1` (§6.5), so an angle with the required cosine exists; at the point `x = 0` of the
  compactly supported example of §6.5, `w w̃ = 1` and `ũ − u ∈ (2π/t)ℤ`.
- The exact computation of §9.2 shows that the two approximants satisfy `EẼ# − ẼE# = 2i` identically in
  `z ∈ ℝ` under the cosine relation (numerically `2i` for `w = 0.7`, `w̃ = 0.9`).
- The relation is forced: for the two approximants with `t(ũ − u) = Φ`, the determinant on `ℝ` is
  `γ(p)² cos Φ sin(2ip)/√(w w̃) = 2i cos Φ/√(w w̃)`; with `ũ = u` and `w w̃ = 0.63` it is `≈ 2.52i ≠ 2i`.

### 8.9 Matching at the point

Prove that for almost every `s` and every `C > 1` there are `ε₀ > 0` and `D = D(C, s)` such that if for
some `t > 0` the two approximations of §8.8 hold on `Q(s, 3C/t)` with error `ε < ε₀`, with parameters
`x, x̃, y` satisfying `1 < ty < 2C`, `−π/2 < t(x̃ − x) < π/2` and `cos(t(x̃ − x)) = √(w(s) w̃(s))`, then there
are `x′, x̃′, y′` and a unimodular `α′` with `|tx′ − tx| + |tx̃′ − tx̃| + |ty′ − ty| + |α′ − α| < Dε`,
`x̃′ − x′ = x̃ − x`, and exactly `E(t, s) = α′ γ(ty) sin(t(s − (x′ − iy′)))/√w(s)` and
`Ẽ(t, s) = α′ γ(ty) cos(t(s − (x̃′ − iy′)))/√w̃(s)` (poltoratski2024 Lemma 8 line 1116–1172; mauth2022
Lemma 45 line 3251). Route: the quotient `sin(t(z − (x − iy)))/cos(t(z − (x̃ − iy)))` has derivative bounded
below near `s`, so it attains the value `E(t, s)/Ẽ(t, s)` at a point `a` with `|a − s| ≤ D₂ε/t`; translate the
parameters by `a − s` and use (2.2) for the moduli.

*Needs:* §3.2, §8.8; Mathlib inverse function theorem for holomorphic maps.

**Checks.**

- If the approximations are exact at `s`, the conclusion holds with `x′ = x`, `x̃′ = x̃`, `y′ = y`, `α′ = α`.
- The constraint `1 < ty < 2C` keeps the quotient holomorphic near `s` (no zero of the cosine within `1/(2t)`
  of `ℝ ∩ Q(s, 3C/t)`).
- Moduli: the exact forms give `|E(t, s)|²/|Ẽ(t, s)|² = (w̃/w)|sin|²/|cos|²`, and (2.2) at the real point
  `s` fixes the common factor `γ(ty)` once the cosine relation holds.

### Examples

- For `f = c 1_{[0,T]}`, `E(t, ·) = e^{−i(t−T)z} E(T, ·)` for `t ≥ T` (the free equation), so the resonances
  are the fixed zeros of `E(T, ·)`, all at positive distance from `ℝ`; hence `T₀(s, C)` is bounded for every
  `s` and `C`, and §8.7(2) holds with `w = |E(T, ·)|^{−2}`.

### Dependencies

Layer 2 (§2.3, §2.4, §2.6–§2.8), Layer 3, Layer 6, Layer 7.

## Layer 9: Pointwise convergence of the non-linear Fourier transform

The potential is real and square-integrable. The route of this layer is the argument of
poltoratski2024 §9 of arXiv version 14, whose subinterval calculus and resonance lemmas are stated
here as targets.

### 9.1 Scattering data of subintervals

For `0 ≤ t₁ ≤ t₂` define the transfer matrix `M_{t₁→t₂} = M(t₂, ·) M(t₁, ·)^{−1}` and its Hermite–Biehler and
scattering functions `E_{t₁→t₂}`, `Ẽ_{t₁→t₂}`, `a_{t₁→t₂}`, `b_{t₁→t₂}` as those of the potential
`f(t₁ + ·) 1_{[0, t₂ − t₁]}` at time `t₂ − t₁` (poltoratski2024 line 1183–1210). Its API:

- `M_{t₁→t₂}` is the fundamental matrix of `f(t₁ + ·)` at time `t₂ − t₁` (§3.1 chain rule).
- `a_{t₁→t₂} = e^{i(t₂−t₁)z}(E(t₂)Ẽ#(t₁) − Ẽ(t₂)E#(t₁))/(2i)` and
  `b_{t₁→t₂} = e^{i(t₂−t₁)z}(Ẽ(t₂)E(t₁) − E(t₂)Ẽ(t₁))/(2i)` (poltoratski2024 (9.1)–(9.3) line 1228–1319).
- `∫ log|a_{t₁→t₂}(x)| dx = (π/2) ∫_{t₁}^{t₂} f²` (§4.4; poltoratski2024 line 1209–1210).
- The non-linear Fourier transform of `f 1_{(t₁, t₂)}` is `e^{2izt₁} b_{t₁→t₂}/a_{t₁→t₂}` (§5.6 translation).

*Needs:* §3.1, §3.2, §4.1, §4.4, §5.6.

**Checks.**

- `t₁ = 0`: `E(0) = 1`, `Ẽ(0) = −i`, and the formulas reduce to `a = e^{it₂z}(E + iẼ)/2`, `b = e^{it₂z}(E − iẼ)/2`.
- `t₁ = t₂`: `a = (EẼ# − ẼE#)/(2i) = 1` by (2.2) and `b = 0`.
- Free case: `a_{t₁→t₂} = 1`, `b_{t₁→t₂} = 0`.

### 9.2 Trigonometric evaluation of subinterval data

Let `s ∈ ℝ`, `w, w̃ > 0` with `w w̃ ≤ 1`, `Φ ∈ (−π/2, π/2)` with `cos Φ = √(w w̃)`, and for `k = 1, 2` let
`t_k > 0`, `x_k ∈ ℝ`, `y_k > 0`, `|α_k| = 1` with `E(t_k, s) = α_k γ(t_k y_k) sin θ_k/√w` and
`Ẽ(t_k, s) = α_k γ(t_k y_k) cos(θ_k − Φ)/√w̃`, where `θ_k = t_k(s − x_k + iy_k)`. Put
`υ = t₁y₁`, `e = ε₁ + iε₂` with `ε₁ = t₂(s − x₂) − t₁(s − x₁)`, `ε₂ = t₂y₂ − t₁y₁`, and
`N = (sinh 2υ sinh 2(υ + ε₂))^{1/2}`. Prove the exact identities
`a_{t₁→t₂}(s) = e^{i(t₂−t₁)s} α₂ conj(α₁) sin(e + 2iυ)/(iN)`,
`b_{t₁→t₂}(s) = −e^{i(t₂−t₁)s} α₂ α₁ sin(e)/(iN)`, and hence
`(f 1_{(t₁,t₂)})⌃(s) = −e^{2ist₁} α₁² sin e/sin(e + 2iυ)` (poltoratski2024 (9.2), (9.4) and line 1253–1347).
Route: `sin A cos(B − Φ) − cos(A − Φ) sin B = cos Φ sin(A − B)` with `A = θ₂`, `B = conj θ₁` (and the
analogous identity for `b`), and `γ(p)γ(p′) = 2/(sinh 2p sinh 2p′)^{1/2}`.

*Needs:* §8.1, §9.1.

**Checks.**

- `|a|² − |b|² = (sinh²(ε₂ + 2υ) − sinh² ε₂)/N² = 1`, as SU(1,1) requires on `ℝ`; numerically, for
  `w = 0.7`, `w̃ = 0.9`, `s = 0.3`, `(t₁, x₁, y₁) = (50, 0.31, 0.03)`, `(t₂, x₂, y₂) = (60, 0.305, 0.025)`, the
  direct and closed forms agree to `10^{−15}` and `|a|² − |b|² = 1.0000000000`.
- The data at a single time satisfy (2.2): `E Ẽ# − Ẽ E# = 2i` at `s` exactly when `cos Φ = √(w w̃)`.
- `e = 0`: `b = 0` and `|a| = sinh 2υ/N = 1`; no motion of the resonance means no scattering at `s`.

### 9.3 Resonances near a point occupy little time

Prove that for almost every `s` and every `C > 0`, if `Iₙ(s)` is the longest subinterval of `[2ⁿ, 2ⁿ⁺¹]` such
that `Q(s, C/t)` contains a zero of `E(t, ·)` for every `t ∈ Iₙ(s)`, then `|Iₙ(s)|/2ⁿ → 0` (poltoratski2024
Lemma 9 line 1350–1377; mauth2022 §3.3 Corollary 7 line 1525 for the analogous half-line statement).
Route: if the set of `s` with `lim sup |Iₙ(s)|/2ⁿ > 2/m` had positive measure, then for infinitely many `n` a
set `Sₙ` of measure `≳ |Zₙ|/m`, `Zₙ = {s : |Iₙ(s)| > 2ⁿ/m}`, shares a time `t₁` in the middle thirds of the
`Iₙ(s)`; with `t₂ = t₁ + 2ⁿ/(3m)`, §9.2 and §8.8–§8.9 give `log|a_{t₁→t₂}| ≥ c_m > 0` on
`ℝ ∩ Q(s, C/2ⁿ⁺¹)` for `s ∈ Sₙ`; a cover of index two and §9.1's Plancherel identity give
`|Zₙ| ≲_{m,C} ‖f‖²_{L²(2ⁿ, 2ⁿ⁺¹)}`, which is summable, and Borel–Cantelli concludes.

*Needs:* §6.8, §8.8, §8.9, §9.1, §9.2; Mathlib Borel–Cantelli (`MeasureTheory.measure_limsup_atTop_eq_zero`).

**Checks.**

- Compact support: the resonances are fixed (§8 Examples), so `Iₙ(s) = ∅` for large `n`.
- Summability input: `Σₙ ‖f‖²_{L²(2ⁿ, 2ⁿ⁺¹)} = ‖f‖²_{L²(1, ∞)} < ∞`.
- A resonance at fixed distance `δ` from `s` lies in `Q(s, C/t)` only for `t ≤ C/δ`, so it contributes to
  `Iₙ(s)` only for `2ⁿ ≤ C/δ`.

### 9.4 Inserting a zero interval

For `t₁ ≥ 0` and `β ≥ 0` define `f^{t₁,β}` as `f` on `[0, t₁)`, `0` on `[t₁, t₁ + β)` and `f(· − β)` on
`[t₁ + β, ∞)`, and write `*` for its data (poltoratski2024 line 1380–1388). Its API:

- For `t ≥ t₁`, `M*(t + β, z) = M_{t₁→t}(z) M₀(β, z) M(t₁, z)` with `M₀` the free fundamental matrix; in
  particular `E*(t₁ + β, z) = e^{−iβz} E(t₁, z)` and `Ẽ*(t₁ + β, z) = e^{−iβz} Ẽ(t₁, z)`.
- The subinterval data of `f^{t₁,β}` on `(t₁ + β, t₂ + β)` equal those of `f` on `(t₁, t₂)`, and
  `‖f^{t₁,β}‖ = ‖f‖`.
- Exact increment relation: in the setting of §9.2, if `E*(t₂ + β, s)` and `Ẽ*(t₂ + β, s)` have the forms of
  §9.2 with the same `w, w̃, Φ`, then the forms at `t₁ + β` hold with `υ* = υ` and `α₁* = e^{−iβs} α₁`, and
  `sin e*/sin(e* + 2iυ) = e^{2iβs} sin e/sin(e + 2iυ)` (poltoratski2024 (9.5)–(9.8) line 1400–1481).
- Route: the chain rule; `E′ = −izE` on the inserted interval; the translation rule (§5.6) for the segment's
  transform, and §9.2 on both sides.

*Needs:* §3.1, §5.6, §9.1, §9.2.

**Checks.**

- `β = 0`: `f^{t₁,0} = f`, `e* = e`, and the identity is trivial.
- Choice of `β`: as `β` runs over an interval of length `π/|s|` (`s ≠ 0`), `e^{2iβs}` runs once around the unit
  circle, which is how the argument of `e*` is adjusted (poltoratski2024 line 1479–1481, 1518–1520).
- `‖f^{t₁,β}‖_{L²(t₁+β, t₂+β)} = ‖f‖_{L²(t₁, t₂)}`, so §9.1's Plancherel identity is the same for both segments.

### 9.5 An elementary inequality

For `υ > 0` put `F_υ(x) = sinh x/sinh(υ + x)`. Prove that there are `c(υ) > 0` and `Δ₀(υ) > 0` such that for
`0 < Δ < Δ₀` and `Δ₁, Δ₂ ∈ (0, 3Δ)` with
`|F_υ(Δ₁) − sinh Δ/sinh(υ − Δ)| ≤ c(υ)Δ³/8` and `|F_{υ+Δ₁}(Δ₂) − sinh Δ/sinh(υ − 2Δ)| ≤ c(υ)Δ³/8`, one has
`|sinh 2Δ/sinh(υ − 2Δ) − sinh(Δ₁ + Δ₂)/sinh(υ + Δ₁ + Δ₂)| ≥ c(υ)Δ²` (poltoratski2024 Lemma 10 line 1584–1663).
Route: expand `F_υ(x) = x/S − Cx²/S² + O(x³)` with `S = sinh υ`, `C = cosh υ`; then
`Δ₁ = Δ + 2CΔ²/S + O(Δ³)`, `Δ₂ = Δ + 4CΔ²/S + O(Δ³)`, and the difference is `2CΔ²/S² + O(Δ³)`.

*Needs:* Mathlib Taylor expansions of `Real.sinh`.

**Checks.**

- With exact hypotheses, the ratio of the difference to `Δ²` at `υ = 1` is `2.4204`, `2.3250`, `2.2792` for
  `Δ = 0.02, 0.01, 0.005`, tending to `2 cosh 1/sinh² 1 ≈ 2.2346`; at `υ = 0.5` it tends to `8.305`, at `υ = 2`
  to `0.572`.
- `Δ₁ = 0.010270` at `υ = 1`, `Δ = 0.01`, against the expansion `0.010263`.
- The lower bound fails without the quadratic term: the first-order terms cancel (`2Δ/S` on both sides).

### 9.6 Absence of resonances near almost every point

Prove that for almost every `s ∈ ℝ` and every `C > 0` there is `T(s, C)` such that `Q(s, C/t)` contains no
zero of `E(t, ·)` for `t > T(s, C)`; hence there is `C(t) → ∞` with `Q(s, C(t)/t)` free of zeros for large `t`
(poltoratski2024 §9 line 1173–1539: "Special case", "General case" and "Final step"). Route: if not, by
§9.3 a resonance near `s` enters and leaves the box `Q(s, 2C/t)` infinitely often and moves by a hyperbolic
distance comparable to a fixed small `Δ`; for three times `t₁ < t₂ < t₃` with purely vertical increments
`e = τ = iΔ` (the special case), inserting zero intervals (§9.4) makes the modified increments purely
imaginary, `e* = −iΔ₁`, `τ* = −iΔ₂`, and comparing moduli on `(t₁, t₂)`, `(t₂, t₃)` and `(t₁, t₃)` gives the
three relations of §9.5, whose conclusion contradicts the third relation; the general case is reduced to the
special one by two insertions with `β₁`, `β₂` chosen through §9.4 and a continuity argument in `t₂`; the errors
of §8.8–§8.9 are taken `≪ Δ⁴`.

*Needs:* §8.6–§8.9, §9.2–§9.5.

**Checks.**

- Compact support: the resonances are fixed zeros of `E(T, ·)` at positive distance from `ℝ`, so the
  conclusion holds for every `s`.
- Free case: no zeros at all.
- `f ≡ c` (not square-integrable): for `s ∈ (−c, c)`, `|E(t, s)|` grows like `e^{√(c² − s²) t}`, and the
  conclusion of §9.7, which follows from this one, fails there; the almost-everywhere statement needs
  `f ∈ L²`.

### 9.7 Asymptotics at almost every point

Prove that for almost every `s` and every `D > 0` there are unimodular `α(s, t)` and a constant `β(s)` with
`Im β(s) = −√(w(s) w̃(s))`, `|β(s)| = 1`, such that `sup_{Q(s,D/t)} |E(t, z) + iα(s, t) e^{−itz}/√w(s)| → 0` and
`sup_{Q(s,D/t)} |Ẽ(t, z) + iβ(s) α(s, t) e^{−itz}/√w̃(s)| → 0`; consequently `|E(t, s)| → 1/√w(s)`,
`|Ẽ(t, s)| → 1/√w̃(s)`, `|a(t, s)|² → (1/w + 1/w̃ + 2)/4` and `|b(t, s)|² → (1/w + 1/w̃ − 2)/4` at `s`
(poltoratski2024 (9.9)–(9.10) line 1538–1574). Route: §9.6 and §8.7(2) for `E` and for `Ẽ`; (2.2) on `ℝ` gives
`(conj β − β)/√(w w̃) = 2i`.

*Needs:* §3.2, §4.1, §8.7, §9.6.

**Checks.**

- Free case: `w = w̃ = 1`, `α = i`, `β = −i`: `E = e^{−itz}`, `Ẽ = −i e^{−itz}`, `|a|² → 1`, `|b|² → 0`.
- `|b|² ≥ 0` in the limit: `1/w + 1/w̃ ≥ 2/√(w w̃) ≥ 2` by the arithmetic–geometric mean inequality and
  `w w̃ ≤ 1` (§6.5); and `|a|² − |b|² → 1`.
- Compact support at `x = 0` for `f = c 1_{[0,T]}`: `w(0) = e^{−2cT}`, `w̃(0) = e^{2cT}`, and the limit
  `|a|² = (e^{2cT} + e^{−2cT} + 2)/4 = cosh² cT` is the exact value `a(T, 0) = cosh cT`.

### 9.8 The non-linear Carleson theorem

Prove that for every real square-integrable `f`, `b(T, s)/a(T, s) = (f_T)⌃*(s) → f⌃*(s)` as `T → ∞` for almost
every `s ∈ ℝ`; the strong form: for almost every `s` and every `C > 0`,
`sup_{|z − s| < C/T} |(f_T)⌃(z) − f⌃*(s)| → 0`, where `(f_T)⌃ = b(T, ·)/a(T, ·)` is holomorphic on the disc for
large `T`; and the corollaries: `a(T, s)`, `b(T, s)` have convergent moduli, and the generalised
eigenfunctions `t ↦ M(t, s)` are bounded on `[0, ∞)` for almost every `s` (poltoratski2024 Theorem 1
line 578–586 and line 54–57; mauth2022 Theorem 2 line 216 and Theorem 6 line 4121 for the equivalence with
the absence of resonances). Route: §9.7 makes `b/a = (E − iẼ)/(E + iẼ)` uniformly close on `Q(s, D/T)` to the
constant `(1/√w − iβ/√w̃)/(1/√w + iβ/√w̃)`, so the pointwise limit exists almost everywhere; §5.5 gives
`(f_T)⌃* → f⌃*` in `Π`-measure, so along a subsequence almost everywhere, and the two limits agree almost
everywhere.

*Needs:* §5.2, §5.5, §9.7.

**Checks.**

- `f` integrable: the convergence is uniform on `ℝ` (§5.2), with no exceptional set.
- Compact support: `(f_T)⌃* = f⌃*` for `T ≥ T₀`.
- Bounded eigenfunctions fail without square-integrability: `f ≡ c` at `s ∈ (−c, c)` has `M(t, s)` growing like
  `e^{√(c² − s²) t}`.
- Free case: `f⌃ = 0` and `b(T, ·) = 0` for every `T`.

### Examples

- For `f = c 1_{[0,T₀]}` every statement of the layer holds with the exceptional set empty: the resonances
  are fixed, `E(t, ·) = e^{−i(t−T₀)z}E(T₀, ·)` for `t ≥ T₀`, and `(f_T)⌃* = f⌃*` for `T ≥ T₀`.
- For `f(s) = (1 + s)^{−1}` (square-integrable, not integrable) the theorem gives convergence almost
  everywhere, which §5.5 alone (`L²(ℝ)` convergence at rate `(1 + T)^{−1/2}`) does not.

### Dependencies

Layer 3, Layer 4, Layer 5 (§5.2, §5.5, §5.6), Layer 6 (§6.5, §6.8), Layer 7, Layer 8.

## Downstream consumers

- A roadmap on one-dimensional Schrödinger and Dirac operators and their spectral types: Layer 1
  (fundamental matrices entire in the spectral parameter for `L¹_loc` coefficients), §3.3 (Hermite–Biehler
  property), §6.4–§6.6 (Weyl functions and spectral measures) and §6.8 (the Szegő condition, the Dirac form
  of Deift–Killip-type statements).
- Operator-theoretic roadmaps realising `Ju′ + Vu` in `L²` (UnboundedOperators): §1.2 at a
  fixed parameter and §1.6 for the parameter dependence of the solutions used in Weyl's alternative.
- PDE §6.2 (Galerkin systems with coefficients integrable in time) and StochasticCalculus (comparison
  arguments for linear systems): §1.1, §1.2 and §1.7.
- A canonical-systems and de Branges-spaces roadmap (inverse spectral theory, Krein's exponential-type
  theorem, de Branges' ordering theorem): §6.1–§6.6 and Layer 3.
- Half-plane Hardy-space theory beyond this roadmap (Toeplitz and Wiener–Hopf operators on the half-line,
  the Paley–Wiener theorem in several forms): Layer 2.
- Non-linear Fourier analysis (maximal non-linear Carleson operators, the `ℓ²(ℤ)` model, AKNS and
  Zakharov–Shabat scattering) and inverse scattering: Layers 4, 5 and 9.

## References

- **poltoratski2024** — A. Poltoratski, *Pointwise convergence of the non-linear Fourier transform*, Ann.
  of Math. 199 (2024), 741–793; arXiv:2103.13349 version 14, to which the locators refer; §9 of
  version 14 (the subinterval calculus, the insertion of zero intervals and Lemma 10) is the route of
  Layer 9, and replaces the argument through Lemma 11 of the published version, in which mnatsakanyan2022
  (abstract and line 135–137 of its version 4) reports an error.
- **mauth2022** — L. Mauth, *On pointwise convergence of the non-linear Fourier transform*, arXiv:2210.12286
  v1; the detailed account of poltoratski2024's earlier version, used for Layers 2, 3, 6 and 8 (§§2, 3.1–3.2,
  3.7), whose dictionary (line 65–87) matches the numbering.
- **denisov2006** — S. A. Denisov, *Continuous analogs of polynomials orthogonal on the unit circle. Krein
  systems*, IMRS 2006, Art. ID 54517; arXiv:0908.4049 v1 (§11 Theorem 11.1, (194)–(195); §13).
- **romanov2014** — R. Romanov, *Canonical systems and de Branges spaces*, arXiv:1408.6022 v1 (§0, §1 Example
  1, §3 Proposition 4 and Theorem 5, §8 Theorems 15–16).
- **taothiele2012** — T. Tao, C. Thiele, *Nonlinear Fourier analysis*, arXiv:1201.5129 v1 (Lecture 1 Lemma 3,
  Lecture 1 §3 Lemma 5, Lecture 2 Lemma 6), for the discrete SU(1,1) model.
- **killipsimon2003** — R. Killip, B. Simon, *Sum rules for Jacobi matrices and their applications to
  spectral theory*, Ann. of Math. 158 (2003); arXiv:math-ph/0112008 v2 (§5, (5.9), Lemma 5.1, Theorem 5.2,
  Corollary 5.3).
- **mnatsakanyan2022** — G. Mnatsakanyan, *Some quantitative estimates for the nonlinear Fourier transform*,
  arXiv:2210.00309 v4 (abstract and §1).
- **garnett2007** — J. B. Garnett, *Bounded analytic functions*, GTM 236, Springer 2007 (Ch. I §§3–5, Ch. II
  §§1–4; pp. 16, 27, 30, 55, 64, 84 as cited by mauth2022), cited by locator.
- **coddingtonlevinson1955** — E. A. Coddington, N. Levinson, *Theory of ordinary differential equations*
  (Ch. 1 §7, Ch. 2 §1), cited by locator.
- **debranges1968** — L. de Branges, *Hilbert spaces of entire functions* (§§19–23), cited by locator.
- **remling2018** — C. Remling, *Spectral theory of canonical systems* (Ch. 1–3), cited by locator.
- **krein1955** — M. G. Krein, *Continuous analogues of propositions on polynomials orthogonal on the unit
  circle* (pp. 637–640), cited by locator for the continuous Szegő theory behind denisov2006 §8.
