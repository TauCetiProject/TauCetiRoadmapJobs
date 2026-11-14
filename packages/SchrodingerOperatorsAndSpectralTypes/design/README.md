# Roadmap: Schrödinger operators and spectral types

**Summary.** Build the measure-theoretic spectral types of an arbitrary self-adjoint operator on a
complex Hilbert space, the self-adjoint Laplace–Beltrami operator of a complete Riemannian
manifold, and the Schrödinger operators `−Δ + V` with bounded real potentials on `L²(ℝ^d)`, where
`Δ = Σⱼ ∂ⱼ²` is Mathlib's Euclidean Laplacian, so that `−Δ ≥ 0`. The
first layer identifies the absolutely continuous, singular continuous and pure point spectral
projections with the Lebesgue decomposition of every vector spectral measure, defines
`σ_ac`, `σ_sc`, `σ_pp`, characterises `σ_ac` by local absolutely continuous mass (hence closed
with no isolated points), proves the interval criterion for `[a, b] ⊆ σ_ac`, the min–max
principle below the essential spectrum, the abstract wave operators, Pearson's theorem and the
Kato–Rosenblum theorem on trace-class perturbations. The second layer gives the lower bounds and cores that
bounded and Kato–Rellich perturbations preserve. The third layer constructs, on every smooth
Riemannian manifold without boundary, the initial operator `Δ₀ = −div grad` on `C_c^∞` (whose
closure is the minimal operator), its adjoint the maximal operator, the energy form and the
Friedrichs Laplacian, and proves the
theorem of Gaffney, Chernoff and Strichartz: on a complete manifold `Δ₀` is essentially
self-adjoint, its closure `Δ_X` is the maximal operator and the operator of the energy form on
`H¹(X) = H¹₀(X)`. It then gives `Δ_X` its spectral vocabulary (kernel, bottom of the spectrum,
ordered eigenvalues below the essential spectrum, the compact case, bounded potentials, and the
threshold `[1/4, ∞) ⊆ σ_ess` forced by a hyperbolic cusp end). The fourth layer describes
`H²(ℝ^d)` four ways, takes the free Laplacian `H₀ = −Δ` on `H²(ℝ^d)` from QuantumFoundations,
identifies its form domain `H¹(ℝ^d)` and essential spectrum `[0, ∞)` in every dimension `d ≥ 1`,
and proves that `−Δ + V` with real
`V ∈ L^∞(ℝ^d)` is self-adjoint on `H²`, bounded below by `ess inf V`, essentially self-adjoint on
`C_c^∞` and on Schwartz space, with `σ_ess = [0, ∞)` when `V` vanishes at infinity; quasi-periodic
trigonometric potentials are the model example.

## Scope and ownership

This roadmap owns the measure side of spectral types, the abstract wave operators, Pearson's
theorem and the Kato–Rosenblum theorem, the general min–max principle below the essential
spectrum, the lower bound and core clauses of the bounded and Kato–Rellich perturbation theorems,
the complete `L²` theory of the scalar Laplace–Beltrami operator on noncompact Riemannian
manifolds, the form domain and essential spectrum of the free Laplacian on `L²(ℝ^d)`, and
Schrödinger operators with bounded real potentials on `ℝ^d`. The following are owned elsewhere and consumed by section.

- **Already in the library.** Projection-valued measures with their diagonal measures
  (`TauCeti.ProjValMeasure`, its field `TauCeti.ProjValMeasure.diag`); the Kato–Rellich
  self-adjointness theorem (`IsSelfAdjoint.add_of_isRelativelyBounded`) and the relative-bound
  predicate `LinearPMap.IsRelativelyBounded`; partial-operator adjoints, closures and cores
  (`LinearPMap.adjoint`, `LinearPMap.closure`, `LinearPMap.HasCore`); Mathlib's Lebesgue
  decomposition (`MeasureTheory.Measure.singularPart`, `MeasureTheory.Measure.rnDeriv`,
  `MeasureTheory.Measure.singularPart_add_rnDeriv`); the Bessel-potential Sobolev scale
  (`TemperedDistribution.MemSobolev`) and the Fourier transform on `L²`
  (`MeasureTheory.Lp.fourierTransformₗᵢ`); the Riemannian volume (`TauCeti.riemannianVolume`), the
  scalar Laplace–Beltrami operator (`TauCeti.Manifold.laplaceBeltrami`, sign `div ∘ grad`) and its
  Green identity (`TauCeti.Manifold.integral_mul_laplaceBeltrami`); trace-class and
  Hilbert–Schmidt gauges (`ContinuousLinearMap.nuclearENorm`, `ContinuousLinearMap.hilbertSchmidtEnergy`).
- **Stated by TauCetiRoadmap.OperatorTheory/SelfAdjointSpectralTheory.** The spectral
  projection-valued measure `P_A` of a self-adjoint operator (SA-E01), its resolvent formula and
  uniqueness (SA-E05, SA-E44), reduced restrictions (SA-C12–SA-C19, SA-E09), unitary conjugation
  (SA-C25–SA-C28), the bounded Kato–Rellich theorem (SA-C54), the spectrum of a partial operator
  (SA-D02, SA-D12, SA-D18, SA-D22), form bounds from spectral support (SA-E11–SA-E13), the
  generated unitary group `t ↦ e^{itA}` and its commutation with the spectral projections
  (SA-E26–SA-E30), the spectral decomposition of compact normal operators (SA-C86) and cyclic
  decompositions (SA-B85).
- **Stated by TauCetiRoadmap.OperatorTheory/UnboundedOperators.** The unbounded spectral integral and multiplier
  model (UO-A01, UO-A02, UO-A07), spectral support (UO-A06), approximate eigenvectors (UO-C01),
  the essential spectrum with its Fredholm and finite-rank-window characterisations (UO-C02; its
  Weyl criterion is gap:weyl-criterion below), the decomposition `ℋ = ℋ_pp ⊕ ℋ_ac ⊕ ℋ_sc` into
  reducing subspaces with commuting projections preserving `dom A`, the restrictions `A_pp`,
  `A_ac`, `A_sc`, `σ(A) = σ(A_pp) ∪ σ(A_ac) ∪ σ(A_sc)` and `σ(A_pp) = closure σ_p(A)`, together
  with the scalar atomic/continuous split of a σ-finite Borel measure (UO-C03), closed forms and
  the Friedrichs extension (UO-D06), graph cores (UO-E01), relatively compact perturbations and
  the invariance of the essential spectrum (UO-E04), worked cores (UO-E05), and the free Laplacian
  on `H²(ℝ³)` with real potentials in `L²(ℝ³) + L^∞(ℝ³)` (UO-E06). Layer 1 identifies these
  subspaces with the Lebesgue decomposition; it does not construct them again. UO-C03 states the
  self-adjointness of the restrictions when a finite scalar control measure exists; for arbitrary
  `ℋ` it is 1.3 (a closed subspace whose projection commutes with every `P_A(B)` reduces `A`, with
  self-adjoint restriction by SA-C19, Tau Ceti `LinearPMap.IsReducing.isSelfAdjoint_restrict`).
- **Stated by TauCetiRoadmap.VariationalMethods.** Courant–Fischer for compact form pairs (4.4)
  and the represented operator of a compact form pair (5.1–5.2); the compact case of Layer 3
  consumes them through ComplexKahlerGeometry K5a.
- **Stated by TauCetiRoadmap.ComplexKahlerGeometry K5a.** Distributions on a manifold
  (`BundleDistribution`), the distributional action of differential operators, `H^s_loc` on a
  noncompact manifold, interior elliptic regularity `Pu ∈ H^s_loc ⇒ u ∈ H^{s+2}_loc` for
  Laplace-type operators, and on a compact manifold the `H²` realisation of the scalar Hodge
  Laplacian with compact resolvent and a complete smooth eigenbasis.
- **Stated by TauCetiRoadmap.DifferentialGeometry Layer 12, TauCetiRoadmap.RiemannianGeometry
  R7.8 and Completed/HopfRinow.** Gradient, divergence, Green identities; smooth approximation of
  Lipschitz functions with gradient control; compactness of closed bounded sets in a complete
  component.
- **Stated by TauCetiRoadmap.PDE.** Weak-derivative Sobolev spaces and their agreement with the
  Bessel scale (§1.3, A3); the heat generator on `L^p(ℝ^n)` (§6.3, F26) is compared with the free
  Laplacian as a Check.
- **Stated by TauCetiRoadmap.QuantumFoundations §8.2.** The free Hamiltonian `−Δ/(2m)` on
  `H²(ℝⁿ)` for every `n ≥ 1`: self-adjointness, the Schwartz and `C_c^∞` cores, the Fourier
  intertwining, the spectral measure of a state, `σ = σ_ac = [0, ∞)` and `σ_sc = σ_pp = ∅`.
  Layer 4 uses it at `m = 1/2`, where it is `−Δ`, and adds only its form domain and essential
  spectrum (4.2); UnboundedOperators UO-E06 is its `n = 3` case, recorded as a Check.
- **Unbounded potentials.** UnboundedOperators UO-E06 owns real `V = V₂ + V_∞` with
  `V₂ ∈ L²(ℝ³)`, `V_∞ ∈ L^∞(ℝ³)` in dimension three: self-adjointness on `H²(ℝ³)`, the
  `C_c^∞(ℝ³)` core, and relative compactness when `V_∞` vanishes at infinity. QuantumFoundations
  §9.5 owns the Coulomb potential and the hydrogen atom, through UO-E06. In dimension three the
  self-adjointness and `C_c^∞`-core clauses of 4.4 are the case `V₂ = 0`, `V_∞ = V` of UO-E06, and
  so is the relative compactness behind its essential-spectrum clause; 4.4 extends these to
  bounded real potentials in every dimension `d ≥ 1` and adds the lower bound and the Schwartz
  core.
- **Laplacians of congruence quotients.** CongruenceSpectralGap §0.2 proves, on a torsion-free
  principal congruence cover `Γ(N′)\ℍ` (`N′ ≥ 3`), that `−y²(∂ₓ² + ∂ᵧ²)` is essentially
  self-adjoint on compactly supported smooth functions with the maximal operator as closure, and
  that the kernel of the resulting operator is the line of constants; it builds from this the
  self-adjoint Laplacian of every congruence quotient. AutomorphicSpectralTheory §1.16a owns the
  `Γ₀(N)` orbifold realisation, and CongruenceSpectralGap §0.6 the spectral description of every
  congruence quotient. None of these is restated here. Sections 3.6 and 3.7 are the statements
  for every complete Riemannian manifold, and on `Γ(N′)\ℍ` they give the same operator and the
  same kernel (Layer 3, Examples).
- **Not in this roadmap.** Magnetic and bundle-valued Laplacians, potentials in `L^p` or in the
  Kato class outside the three-dimensional `L² + L^∞` case of UO-E06, heat kernels, scattering
  theory beyond the abstract wave operators and
  Kato–Rosenblum, and the complete spectral description of finite-area hyperbolic surfaces (the
  closing section explains what that future roadmap needs).

## Conventions

- **Hilbert spaces.** `ℋ` is a complete complex inner-product space, inner product conjugate-linear
  in the first slot (Mathlib's `inner`). No separability is assumed unless a statement says so.
  Operators are Mathlib `LinearPMap`s `ℋ →ₗ.[ℂ] ℋ` with their actual domains; `IsSelfAdjoint A`
  is Mathlib's `A† = A`.
- **Spectral measures.** `P_A` is the spectral projection-valued measure of a self-adjoint `A`
  (SelfAdjointSpectralTheory SA-E01), a `TauCeti.ProjValMeasure ℝ ℋ`. For a vector `f` the vector
  spectral measure is `μ_f := P_A.diag f`, so `μ_f(B) = ⟪f, P_A(B) f⟫` is real and
  `μ_f(ℝ) = ‖f‖²`. Every Layer 1 statement depends on `A` only through `P_A`; for a bare
  normalized real projection-valued measure `P` it applies to the self-adjoint
  `A_P := ∫ λ dP(λ)` (UO-A01–UO-A02), whose spectral measure is `P`: for `Im z ≠ 0` the bounded
  integral `∫ (z − s)⁻¹ dP(s)` maps `ℋ` into `dom A_P` and is a two-sided inverse of `z − A_P`
  (UnboundedOperators UO-A02, gap:spectral-integral-resolvent), so `A_P` satisfies the resolvent
  formula of SA-E05 with `P`, and SA-E44 gives `P_{A_P} = P`. Witness: for the Dirac measure at
  `2` on `ℂ`, `A_P = 2` and `∫ (i − s)⁻¹ dP = (i − 2)⁻¹`, which inverts `i − 2`; for the
  coordinate measure on `ℓ²(ℕ)`, `A_P = diag(n)` on `{x : Σ n²|x_n|² < ∞}` and
  `∫ (i − s)⁻¹ dP = diag((i − n)⁻¹)` maps into that domain because `n²/(1 + n²) ≤ 1`.
- **Lebesgue decomposition orientation.** `Leb` is Mathlib's `volume` on `ℝ`. The absolutely
  continuous part of a finite measure `μ` is `Leb.withDensity (μ.rnDeriv Leb)` and the singular
  part is `μ.singularPart Leb` (`MeasureTheory.Measure.singularPart_add_rnDeriv`). Witness: for
  `μ = 2·Leb|[0,1]`, `μ.rnDeriv Leb = 2` a.e. on `[0,1]`, so `Leb.withDensity (μ.rnDeriv Leb) = μ`,
  whereas the reversed `μ.withDensity (μ.rnDeriv Leb) = 4·Leb|[0,1] ≠ μ`. The atomic part is
  `μ.restrict {x | μ{x} > 0}` (UnboundedOperators UO-C03).
- **Resolvents.** `R_A(z) := (z − A)⁻¹` for `z ∈ ρ(A)`, SelfAdjointSpectralTheory's convention
  (SA-E05), so `(A − z)⁻¹ = −R_A(z)`; inverses of shifted operators are written out as
  `(A − z)⁻¹` wherever that form is meant. Witness: for `A = 2` on `ℂ`, `R_A(0) = −1/2` while
  `(A − 0)⁻¹ = 1/2`.
- **Unitary groups and wave operators.** `e^{itA}` is the generated unitary group of SA-E26 with
  the convention `U(t) = exp(itA)`. Wave operators are limits of `e^{itH₂} e^{−itH₁}` as
  `t → ±∞` (teschl line 10595–10609; kato57 line 25–26). Witness: for `H₁ = 0`, `H₂ = c` on `ℂ`,
  `e^{itH₂}e^{−itH₁} = e^{itc}`, which converges only when `c = 0`.
- **Relative bounds.** `‖Vx‖ ≤ a‖x‖ + b‖Ax‖` on `dom A`, `a` the ambient and `b` the relative
  coefficient, as in Tau Ceti's `LinearPMap.IsRelativelyBounded V A a b` and SA-C44. Sources that
  write `‖Vx‖ ≤ a‖Ax‖ + b‖x‖` (teschl line 5683–5711, rs2 Theorem X.12) swap the letters.
  Witness: for `A = 2` and `V = 3` on `ℂ`, `‖Vx‖ = 3|x| ≤ a|x| + b‖Ax‖` holds for
  `(a, b) = (3, 0)` (relative coefficient `0 < 1`) and for `(a, b) = (0, 3/2)` (relative
  coefficient `3/2 ≥ 1`); reading the pair `(0, 3/2)` in the source lettering would wrongly report
  relative coefficient `0`.
- **Laplacian sign.** `Δ = −div grad` is nonnegative; it is the negative of Tau Ceti's
  `TauCeti.Manifold.laplaceBeltrami` (DifferentialGeometry 12.3) and of Mathlib's
  `InnerProductSpace.instLaplacian`. Witnesses: on flat `ℝ^d`, `Δ‖x‖² = −2d` (the library operator
  gives `2d`); on the upper half-plane `ℍ` with metric `(dx² + dy²)/y²`,
  `Δ = −y²(∂ₓ² + ∂ᵧ²)` and `Δ yˢ = s(1 − s) yˢ`, so `s = 1/2 + it` gives `1/4 + t²`. This is the
  convention of Layer 3, of AutomorphicSpectralTheory §1.16a, CongruenceSpectralGap §0.2 and
  MaassForms §0.1. The Euclidean Schrödinger operators keep the other sign: in the Summary, in the
  QuantumFoundations entries of the scope and the supplier contracts, in the Fourier-transform
  bullet below and throughout Layer 4, `Δ` on `ℝ^d` is Mathlib's `Σⱼ ∂ⱼ²`, so that `H₀ = −Δ ≥ 0`
  there is Layer 3's `Δ_X` for `X = ℝ^d`. Witness: for `u = e^{−π‖x‖²}`, `Σⱼ ∂ⱼ² u = (4π²‖x‖² − 2πd)u`,
  which is `−2πd` at `x = 0`, while Layer 3's nonnegative `Δ` gives `+2πd` there.
- **Fourier transform.** Mathlib's `𝓕f(ξ) = ∫ e^{−2πi⟨x, ξ⟩} f(x) dx`, unitary on `L²`. Under it
  `−Δ = −Σⱼ ∂ⱼ²` is multiplication by `4π²‖ξ‖²` and the Bessel multiplier of `H²` is `1 + ‖ξ‖²`. Witness:
  `ψ(x) = e^{−πx²}` on `ℝ` has `𝓕ψ = ψ` and `−ψ'' = (2π − 4π²x²)ψ`, whose transform is
  `4π²ξ² e^{−πξ²}`.
- **Riemannian manifolds.** `(X, g)` is a finite-dimensional real smooth manifold, Hausdorff,
  second countable, without boundary, with a smooth Riemannian metric; it need not be connected,
  orientable or compact, and dimension `0` is allowed. `vol_g = TauCeti.riemannianVolume`, and
  `L²(X) := L²(X, vol_g; ℂ)` (Mathlib `MeasureTheory.Lp ℂ 2`). `X` is **complete** when every
  connected component is complete for its Riemannian distance; by Completed/HopfRinow (b) this
  means closed bounded subsets of each component are compact.
- **Extended values.** Min–max values and `λ₁⁺` take values in `ℝ ∪ {+∞}`, so that an empty
  admissible family gives `+∞` rather than a junk real number. The bottom of the spectrum is
  stated only for nonzero Hilbert spaces and semibounded operators, since `sInf ∅ = 0` in `ℝ`.

## Exact supplier contracts

### From Mathlib

- `LinearPMap`, `LinearPMap.adjoint`, `LinearPMap.IsFormalAdjoint`,
  `LinearPMap.IsFormalAdjoint.le_adjoint`, `LinearPMap.adjoint_isClosed`,
  `LinearPMap.mem_adjoint_domain_of_exists` in `Mathlib/Analysis/InnerProductSpace/LinearPMap.lean`;
  `LinearPMap.IsClosable`, `LinearPMap.closure`, `LinearPMap.HasCore`,
  `LinearPMap.isClosable_iff_exists_closed_extension` in
  `Mathlib/Topology/Algebra/Module/LinearPMap.lean`. The adjoint pairing is used only for dense
  domains: for a nondense domain the native adjoint acts by `0` (`LinearPMap.adjoint_apply_of_not_dense`).
- `MeasureTheory.Measure.HaveLebesgueDecomposition`, `MeasureTheory.Measure.singularPart`,
  `MeasureTheory.Measure.rnDeriv`, `MeasureTheory.Measure.singularPart_add_rnDeriv`,
  `MeasureTheory.Measure.eq_singularPart`, `MeasureTheory.Measure.eq_withDensity_rnDeriv`,
  `MeasureTheory.Measure.mutuallySingular_singularPart` in
  `Mathlib/MeasureTheory/Measure/Decomposition/Lebesgue.lean`; the uniqueness theorems require
  the singular piece to be mutually singular with the reference and the density measurable.
- `TemperedDistribution.MemSobolev`, `TemperedDistribution.memSobolev_iff_exists_smulLeftCLM_fourier`,
  `TemperedDistribution.MemSobolev.laplacian` in `Mathlib/Analysis/Distribution/Sobolev.lean`;
  `TemperedDistribution.laplacian_eq_fourierMultiplierCLM` and
  `SchwartzMap.laplacian_eq_fourierMultiplierCLM` in
  `Mathlib/Analysis/Distribution/FourierMultiplier.lean` (multiplier `−4π²‖ξ‖²`);
  `MeasureTheory.Lp.fourierTransformₗᵢ` in `Mathlib/Analysis/Fourier/LpSpace.lean`, a linear
  isometric equivalence of `L²`.
- `IsCompactOperator`, `IsCompactOperator.comp_clm`, `isCompactOperator_of_tendsto` in
  `Mathlib/Analysis/Normed/Operator/Compact/Basic.lean`.
- `InnerProductSpace.instLaplacian` (sign `Σ ∂ᵢ²`), `UpperHalfPlane`, `MeasureTheory.Lp`,
  `MeasureTheory.MemLp`, Haar and Lebesgue measure on `EuclideanSpace ℝ (Fin d)`.

### From Tau Ceti

- `TauCeti.ProjValMeasure` with fields `proj`, `diag`, `inner_proj` and the lemmas
  `TauCeti.ProjValMeasure.diag_univ`, `TauCeti.ProjValMeasure.proj_mul_comm`,
  `TauCeti.ProjValMeasure.norm_sq_proj_apply` in
  `TauCeti/Analysis/InnerProductSpace/ProjValMeasure/Basic.lean`, and its bounded integral
  `TauCeti.ProjValMeasure.integral` in `.../ProjValMeasure/Integral.lean`. The diagonal measures
  are finite and carried as data tied to the projections by `inner_proj`.
- `LinearPMap.IsRelativelyBounded` (`‖Vx‖ ≤ a‖x‖ + b‖Ax‖`, with `dom A ≤ dom V`) in
  `TauCeti/Analysis/Normed/Operator/LinearPMap/RelativeBound.lean`;
  `IsSelfAdjoint.add_of_isRelativelyBounded` (self-adjoint `A`, symmetric `V`, `b < 1`) in
  `TauCeti/Analysis/InnerProductSpace/LinearPMap/KatoRellich.lean`; `IsSelfAdjoint.isFormalAdjoint`
  in `.../LinearPMap/SelfAdjoint.lean`.
- `TauCeti.riemannianVolume` (`TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean`,
  for a continuous metric on a Lindelöf Borel manifold) with the instances
  `TauCeti.isLocallyFiniteMeasure_riemannianVolume` and its open-positivity instance in
  `.../VolumeDensity/Support.lean`; `TauCeti.Manifold.laplaceBeltrami`,
  `TauCeti.Manifold.divergence` in `TauCeti/Geometry/Manifold/Riemannian/Laplacian.lean` (real
  functions, sign `div ∘ grad`); `TauCeti.Manifold.integral_mul_laplaceBeltrami` in
  `.../Riemannian/DivergenceTheorem.lean` (`f` of class `C¹` with compact support, `g` of class
  `C²`, boundaryless); `TauCeti.HyperbolicMetric` in `.../Riemannian/Hyperbolic.lean` (smooth,
  complete, constant curvature `−1`), used in Checks.
- `TauCeti.Wkp` and `TauCeti.W1p` in `TauCeti/Analysis/Sobolev/` (real-valued weak-derivative
  spaces on an additive Haar measure).
- `LinearPMap.IsReducing.isSelfAdjoint_restrict` in
  `TauCeti/Analysis/InnerProductSpace/LinearPMap/Reducing.lean` (the reduced part of a self-adjoint
  map along a reducing closed subspace of a complete space is self-adjoint).
- `LinearPMap.resolvent` (`(λI − A)⁻¹` on the resolvent set, a junk value off it) and the resolvent
  identity `LinearPMap.resolvent_sub_resolvent`, `R(λ) − R(μ) = (μ − λ) R(λ) R(μ)` for `λ, μ` in
  the resolvent set, in `TauCeti/Topology/Algebra/Module/LinearPMap/Resolvent/Basic.lean`;
  `IsSelfAdjoint.hasCompactResolvent_iff_isCompactOperator_resolvent` (compact resolvent iff
  `(z − A)⁻¹` is compact at one nonreal `z`) in
  `TauCeti/Analysis/InnerProductSpace/LinearPMap/CompactResolvent.lean`; and
  `IsSelfAdjoint.exists_hilbertBasis_forall_apply_eq_smul_of_hasCompactResolvent` (a self-adjoint
  operator with compact resolvent has a Hilbert basis of eigenvectors in its domain with real
  eigenvalues) in `TauCeti/Analysis/InnerProductSpace/LinearPMap/Eigenbasis.lean`.
- `ContinuousLinearMap.nuclearENorm` and `ContinuousLinearMap.isCompactOperator_of_nuclearENorm_ne_top`
  in `TauCeti/Analysis/OperatorIdeal/Nuclear/Basic.lean`: trace class means finite nuclear gauge;
  `ContinuousLinearMap.hilbertSchmidtEnergy` (the energy `Σᵢ ‖T bᵢ‖²` in `ℝ≥0∞` of `T` relative to
  a Hilbert basis `b` of its source, an explicit argument) and
  `ContinuousLinearMap.hilbertSchmidtEnergy_indep` (any two Hilbert bases give the same energy) in
  `TauCeti/Analysis/InnerProductSpace/HilbertSchmidt/Basic.lean`;
  `ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top` (for a complete target space,
  finite energy relative to some Hilbert basis gives a compact operator; OperatorIdeals OI-C14) in
  `TauCeti/Analysis/InnerProductSpace/HilbertSchmidt/Columns.lean`.

### From TauCetiRoadmap.OperatorTheory/SelfAdjointSpectralTheory

SA-B44–SA-B45 (bounded PVM integral and its matrix elements), SA-B85 (orthogonal cyclic
decomposition; countable in a separable space), SA-C12–SA-C19 (reducing subspaces and reduced
restrictions; SA-C19 is the self-adjointness of a reduced restriction), SA-C25–SA-C28 (unitary
conjugation preserves self-adjointness), SA-C39 (graph cores), SA-C52–SA-C54 (domain
perturbation and bounded Kato–Rellich), SA-C86 (compact normal spectral decomposition: for a
compact normal `T`, `ℋ = ker T ⊕ closure(⊕_{λ≠0} ker(T − λ))` with finite-dimensional nonzero
eigenspaces, used in 1.8 for a compact self-adjoint `V` and in 3.9 for a compact normal
resolvent), SA-D02, SA-D12, SA-D18,
SA-D22 (spectrum, closedness, reality, real resolvent points from lower bounds), SA-E01–SA-E13
(spectral PVM, resolvent formula, domain preservation, spectral support, restriction, form bounds
from spectral support), SA-E26–SA-E29 (generated unitary group and Stone uniqueness), SA-E30
(spectral projections commute with the generated group, used in 1.7), SA-E44
(uniqueness of the spectral measure from the resolvent formula), SA-E47 (spectral projections of
multiplication operators). Assumed: `P_A` is the unique real PVM with
`⟪f, (z − A)⁻¹ f⟫ = ∫ (z − s)⁻¹ dμ_f(s)` for `Im z ≠ 0`.

### From TauCetiRoadmap.OperatorTheory/UnboundedOperators

UO-A01–UO-A02 (unbounded spectral integral; real symbols give self-adjoint operators; every
self-adjoint `A` is `id[P_A]`), UO-A06 (`supp P_A = σ(A)`), UO-A07 (maximal multiplication
operators, self-adjoint for real symbols), UO-C01 (`λ ∈ σ(A)` iff every neighbourhood has
nonzero spectral projection), UO-C02 (essential spectrum: its isolated-eigenvalue and Fredholm
definitions and their equivalence for self-adjoint `A`, unitary invariance, and `λ ∉ σ_ess(A)` iff
`P_A((λ − ε, λ + ε))` has finite rank for some `ε > 0`), UO-C03 (the reducing subspaces `ℋ_pp`,
`ℋ_ac`, `ℋ_sc` defined by the types of all vector spectral measures, their projections commuting
with every `P_A(B)` and preserving `dom A`, the restrictions `A_pp`, `A_ac`, `A_sc`, the union
formula, `σ(A_pp) = closure σ_p(A)`, and the scalar atomic/continuous split; the restrictions are
self-adjoint by 1.3 and SA-C19 for arbitrary `ℋ`), UO-D06 (closed semibounded forms, the
represented self-adjoint operator by its graph characterisation, the real-shift self-adjointness
criterion, the Friedrichs extension and the square-root domain identification), UO-E01 (graph
cores), UO-E04 (Weyl's theorem on compact resolvent differences; `V` is `A`-compact when
`dom A ⊆ dom V` and `V(A − i)⁻¹` is compact, and a symmetric `A`-compact `V` leaves the essential
spectrum unchanged), UO-E05 (cores of `−d²/dx²` and of the free Laplacian on `ℝ³`), UO-E06 (the
free Laplacian on `H²(ℝ³)` and real `V₂ + V_∞` with `V₂ ∈ L²(ℝ³)`, `V_∞ ∈ L^∞(ℝ³)`:
self-adjointness on `H²(ℝ³)`, the `C_c^∞(ℝ³)` core, relative compactness when `V_∞` vanishes at
infinity; the three-dimensional case of 4.4 and a Check of 4.2).

What OperatorTheory/UnboundedOperators must provide (gap:weyl-criterion): in §3.2 (UO-C02), Weyl's criterion
as a stated item: for self-adjoint `A` on a complex Hilbert space and real `λ`, `λ ∈ σ_ess(A)` iff
there are `u_n ∈ dom A` with `‖u_n‖ = 1`, `u_n → 0` weakly and `‖(A − λ)u_n‖ → 0`, and the
sequence may then be chosen orthonormal (teschl line 6277–6281, Lemma 6.17, p. 145, which UO-C02
already uses in its proof of the Fredholm characterisation). 3.10 uses the direction from an
orthonormal sequence to `λ ∈ σ_ess(A)`.

What OperatorTheory/UnboundedOperators must provide (gap:spectral-integral-resolvent): in §1.2 (UO-A02), for
every normalized projection-valued measure `P` on `ℝ` (`TauCeti.ProjValMeasure ℝ ℋ`) and every
`z` with `Im z ≠ 0`, the bounded integral `∫ (z − s)⁻¹ dP(s)` maps `ℋ` into `dom id[P]` and is a
two-sided inverse of `z − id[P]` on the actual domains (domain inclusion from
`|s/(z − s)| ≤ 1 + |z|/|Im z|`), so that SA-E44 identifies the spectral measure of `id[P]` with
`P`. The Conventions use it to apply Layer 1 to a bare projection-valued measure.

### From TauCetiRoadmap.QuantumFoundations

§8.2, used at mass `m = 1/2` and ℏ = 1: for every `n ≥ 1` the free Hamiltonian `H₀ = −Δ/(2m)` on
`L²(ℝⁿ)` with domain `{f : |ξ|²𝓕f ∈ L²} = H²(ℝⁿ)`, self-adjoint, with `𝒮(ℝⁿ)` and `C_c^∞(ℝⁿ)` as
cores, the intertwining `𝓕H₀𝓕⁻¹ = M_{4π²|ξ|²/(2m)}` for Mathlib's transform, the spectral
measure of a state, and `σ(H₀) = σ_ac(H₀) = [0, ∞)`, `σ_sc(H₀) = σ_pp(H₀) = ∅` for UnboundedOperators
UO-C03's spectral subspaces. Assumed: at `m = 1/2` this is `−Δ` with Mathlib's sign of `Δ`, and its
spectral parts are those of 1.4 (both roadmaps take the reduced restrictions of UO-C03).

### From TauCetiRoadmap.HilbertModules

H6, scalar Hilbert-space specialisation: for a densely defined `T` with densely defined adjoint,
`T` is closable and `(closure T)* = T*`; graph inclusion and cores; the deficiency decomposition
`dom S* = dom S ⊕ ker(S* − i) ⊕ ker(S* + i)` of a closed densely defined symmetric `S`. These are
not at the pins: Mathlib's `LinearPMap` file has the adjoint and closure but no comparison of the
adjoint of the closure with the adjoint.

### From TauCetiRoadmap.VariationalMethods

4.4 (Courant–Fischer on the form domain of a compact form pair) and 5.1–5.2 (the represented
operator of a compact form pair, its eigen-expansion).

### From TauCetiRoadmap.ComplexKahlerGeometry

K5a: `BundleTest` and `BundleDistribution` on a finite-dimensional second-countable Hausdorff
manifold, the distributional action of a differential operator by transpose, `H^s_loc` on a
noncompact manifold, the interior estimate and regularity `Pu ∈ H^s_loc ⇒ u ∈ H^{s+2}_loc` for
smooth Laplace-type operators (including the `L²_loc → H¹_loc` starting step), and on a compact
boundaryless manifold the `H²` self-adjoint realisation of the nonnegative scalar Hodge Laplacian
(the negative of `laplaceBeltrami` on functions) with compact resolvent, finite-dimensional
kernel and complete smooth eigenbasis, including K5a.ComponentwiseCompact for finitely many
components.

### From TauCetiRoadmap.PseudodifferentialOperators

P1.0: scalar differential operators on manifolds, their formal adjoints with respect to a smooth
density and the density transpose used by K5a's distributional action.

### From TauCetiRoadmap.SmoothBundlesConnections

B2.2: the Hilbert space `L²(E, h, μ)` of square-integrable sections of a finite-rank bundle with a
continuous fibre metric, density of compactly supported smooth sections for a locally finite
measure, injectivity of the smooth-section map for an open-positive measure, separability.

### From TauCetiRoadmap.DifferentialGeometry, TauCetiRoadmap.RiemannianGeometry and Completed/HopfRinow

DifferentialGeometry 12.2–12.5 (gradient, divergence, `laplaceBeltrami = div ∘ grad`, full support
of the volume, Green identities on boundaryless manifolds). RiemannianGeometry R7.8 item 8 (on a
connected Riemannian manifold, a bounded Lipschitz `f` and continuous `η > 0`, `ε > 0` give a
smooth `g` with `|g − f| ≤ η` and `sup |dg| ≤ Lip(f) + ε`). HopfRinow Layers 0–4 (Riemannian
distance, the equivalence of completeness with compactness of closed bounded sets on a connected
manifold).

### From TauCetiRoadmap.PDE

§1.2 (A2): density of `C_c^∞` in the zero-boundary spaces `W^{1,2}_0(Ω)` on Euclidean open sets.
§1.3 (A3): `W^{k,2}(ℝⁿ) = H^{k,2}(ℝⁿ)` with equivalent norms for real functions. §6.3 (F26): the
heat generator on `L²(ℝⁿ)` with domain `{u : Δu ∈ L²}` and core `C_c^∞` (a Check of Layer 4.2).

### From TauCetiRoadmap.OperatorTheory/OperatorIdeals and TauCetiRoadmap.FuchsianOrbifolds

OperatorIdeals OI-B29–OI-B36 (nuclear gauge, trace-class family, Hilbert–Schmidt energy, its
basis independence OI-B35, and norm) and OI-C14 (Hilbert–Schmidt operators are compact, pinned as
Tau Ceti `ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top`), used in 4.3.
FuchsianOrbifolds Layer 3 (cusp coordinates
of a Fuchsian group with a parabolic element), used in Checks of Layer 3.10.

## How to read the build

Layer 1 is abstract spectral theory: it turns UnboundedOperators' type decomposition into
statements about the Lebesgue decomposition of vector measures, defines and characterises the
three spectral parts, proves the min–max principle, and ends with wave operators, Pearson's
theorem and Kato–Rosenblum. Layer 2 collects the semibounded perturbation statements that Layers 3 and 4
both use. Layer 3 builds the Laplace–Beltrami operator of a Riemannian manifold from `C_c^∞` to
its self-adjoint closure on complete manifolds and equips it with Layer 1's vocabulary. Layer 4
takes the free Laplacian on `ℝ^d` from QuantumFoundations, adds its form domain and essential
spectrum, and builds the Schrödinger operators with bounded potentials. Layers
3 and 4 are independent of each other; both need Layers 1 and 2. The closing section records the
finite-area hyperbolic spectral theorem as motivation for a future roadmap.

## Layer 1: Spectral measures and spectral types

### 1.1 Vector spectral measures

For a self-adjoint `A` on `ℋ` and `f ∈ ℋ`, the vector spectral measure is `μ_f = P_A.diag f`
(SA-E01, Tau Ceti `TauCeti.ProjValMeasure.diag`). Prove the following laws (teschl line
4399–4411; rs1 §VII.2).

- **Restriction.** For every Borel `B`, `μ_{P_A(B) f} = μ_f.restrict B`.
- **Bounded calculus.** For every bounded Borel `g : ℝ → ℂ`, `μ_{g(A) f} = μ_f.withDensity |g|²`,
  where `g(A)` is the bounded integral of SA-B44.
- **Spectral orthogonality.** If `⟪f, P_A(B) h⟫ = 0` for every Borel `B`, then
  `μ_{f+h} = μ_f + μ_h`. In particular this holds when `f` and `h` lie in orthogonal closed
  subspaces whose projections commute with every `P_A(B)`.
- **Unitary transport.** If `U : ℋ → ℋ'` is unitary and `A' = U A U⁻¹` (SA-C25), then
  `P_{A'}(B) = U P_A(B) U⁻¹` and `μ^{A'}_{Uf} = μ^A_f`.

The proof of the transport law checks the resolvent formula SA-E05 for `B ↦ U P_A(B) U⁻¹` and
applies SA-E44. *Needs:* SelfAdjointSpectralTheory SA-B44–SA-B45, SA-C25–SA-C28, SA-E01, SA-E05,
SA-E44; Tau Ceti `TauCeti.ProjValMeasure.inner_proj`, `TauCeti.ProjValMeasure.proj_mul_comm`.

**Checks.**

- For `A = diag(1, 2)` on `ℂ²` and `f = (1, i)`: `μ_f = δ₁ + δ₂`, `μ_{P_A({1})f} = δ₁`; for
  `g = 3·1_{{2}}`, `g(A)f = (0, 3i)` and `μ_{g(A)f} = 9δ₂ = μ_f.withDensity |g|²`. A model with
  `|g|` in place of `|g|²` gives `3δ₂`.
- Spectral orthogonality is needed: for `A = 0` on `ℂ²`, `f = (1, 0)`, `h = (1, 0)`,
  `μ_{f+h} = 4δ₀ ≠ 2δ₀ = μ_f + μ_h`, and `⟪f, P_A(ℝ) h⟫ = 1 ≠ 0`.
- On the zero Hilbert space every `μ_f` is the zero measure, and `μ_f(ℝ) = ‖f‖² = 0`.

### 1.2 The type projections realise the Lebesgue decomposition

Let `P_pp`, `P_ac`, `P_sc` be the orthogonal projections onto UnboundedOperators UO-C03's
subspaces `ℋ_pp(A)`, `ℋ_ac(A)`, `ℋ_sc(A)` (vectors whose spectral measure is pure point,
absolutely continuous, respectively continuous and singular with respect to `Leb`). Prove that
for every `f ∈ ℋ`

    μ_f = μ_{P_ac f} + μ_{P_sc f} + μ_{P_pp f},
    μ_{P_ac f} = Leb.withDensity (μ_f.rnDeriv Leb),
    μ_{P_sc f} + μ_{P_pp f} = μ_f.singularPart Leb,
    μ_{P_pp f} = μ_f.restrict {x | μ_f {x} > 0},

and `μ_{P_sc f}` is the restriction of `μ_f.singularPart Leb` to the complement of the atoms of
`μ_f` (teschl line 4388–4419). Route: the projections commute with every `P_A(B)` (UO-C03) and
are mutually orthogonal, so 1.1's spectral orthogonality gives the first identity; the three
summands are absolutely continuous, singular continuous and pure point by definition of the
subspaces; uniqueness of the Lebesgue decomposition (`MeasureTheory.Measure.eq_singularPart`,
`MeasureTheory.Measure.eq_withDensity_rnDeriv`) and of the atomic split (UO-C03) identifies them.

The statement that each `P_xx` is a Borel value `P_A(M_xx)` is UnboundedOperators UO-C03's and
holds when a finite scalar control measure exists (for instance on a separable `ℋ`); it is false
in general, by UO-C03's example on `ℓ²(ℝ) ⊕ L²(ℝ)`, and is not restated here.
*Needs:* 1.1; UnboundedOperators UO-C03; Mathlib `MeasureTheory.Measure.singularPart_add_rnDeriv`,
`MeasureTheory.Measure.eq_singularPart`, `MeasureTheory.Measure.eq_withDensity_rnDeriv`.

**Checks.**

- For `A = M_x ⊕ diag(1/2)` on `L²[0,1] ⊕ ℂ` and `f = (1_{[0,1]}, 1)`:
  `μ_f = Leb|[0,1] + δ_{1/2}`, `P_ac f = (1_{[0,1]}, 0)`, `P_pp f = (0, 1)`, and the atomic part
  `δ_{1/2}` sits inside a Lebesgue-dense interval without being absorbed.
- The orientation of the absolutely continuous part: for `A = M_x` on `L²[0,1]` and
  `f = √2·1_{[0,1]}`, `μ_f = 2·Leb|[0,1] = μ_{P_ac f}`, while `μ_f.withDensity (μ_f.rnDeriv Leb)`
  is `4·Leb|[0,1]`.
- For `A` multiplication by `x` on `L²([0,1], c)` with `c` the Cantor measure: `ℋ_sc = ℋ`, and for
  `f = 1` the singular part is `c` itself, atomless, with `μ_{P_pp f} = 0`.

### 1.3 Spectral measure of a reduced restriction

Let `U ≤ ℋ` be a closed subspace whose orthogonal projection `Q` commutes with every `P_A(B)`.
Prove that `U` reduces `A`, that the reduced restriction `A|_U` (SA-C12–SA-C19) is self-adjoint,
and that its spectral measure is the compression `B ↦ P_A(B)|_U`; consequently
`μ^{A|_U}_u = μ^A_u` for `u ∈ U` and `σ(A|_U) = {λ : P_A((λ − ε, λ + ε)) Q ≠ 0 for every ε > 0}`.
Reduction by a commuting projection is teschl line 3282–3304 (Lemma 2.24, p. 80) and line
4945–4946 (Corollary 4.6, p. 116); the identification of the compression with the spectral measure
of `A|_U` is deduced here. Route: `Q` commutes with every bounded integral `∫ g dP_A` (SA-B44,
from its commutation with every `P_A(B)`), in particular with `R_A(z) = ∫ (z − s)⁻¹ dP_A(s)` for
`Im z ≠ 0` (SA-E05 polarised), so `Q` maps `dom A = ran R_A(z)` into itself and `U` reduces `A`
(SA-C12); for `u ∈ U`, `R_A(z) u` lies in `U ∩ dom A`, the domain of `A|_U` (SA-C14–SA-C15), and
`(z − A|_U) R_A(z) u = u`, so `R_{A|_U}(z) = R_A(z)|_U`. The restriction is self-adjoint by
SA-C19 (Tau Ceti `LinearPMap.IsReducing.isSelfAdjoint_restrict`, `U` being complete as a closed
subspace). The compression is a real PVM on `U`
satisfying the resolvent formula of `A|_U`, and SA-E44 identifies it; the spectrum statement is
UO-C01 applied to `A|_U`. Applied to UO-C03's three type subspaces, this gives the
self-adjointness of `A_pp`, `A_ac`, `A_sc` for arbitrary `ℋ`. *Needs:* 1.1;
SelfAdjointSpectralTheory SA-B44, SA-C12–SA-C19, SA-E05, SA-E44; UnboundedOperators UO-C01; Tau
Ceti `LinearPMap.IsReducing.isSelfAdjoint_restrict`.

**Checks.**

- `A = diag(1, 2, 3)` on `ℂ³`, `U = span(e₁, e₃)`: the compression gives `δ₁, δ₃` and
  `σ(A|_U) = {1, 3}`; a model using `P_A` unrestricted would give `{1, 2, 3}`.
- `U = 0`: `A|_U` acts on the zero space, every projection is zero and `σ(A|_U) = ∅`.
- `U = ℋ`: the compression is `P_A` and `σ(A|_U) = σ(A)`.

### 1.4 The spectral parts and their characterisation

Define `σ_ac(A) := σ(A_ac)`, `σ_sc(A) := σ(A_sc)`, `σ_pp(A) := σ(A_pp)`, the spectra of the reduced
restrictions of UO-C03, self-adjoint by 1.3 (teschl line 4420–4425). Define the **essential closure** of a Borel set
`N ⊆ ℝ` as `N^ess := {λ : Leb((λ − ε, λ + ε) ∩ N) > 0 for every ε > 0}` (teschl line 4315–4325),
and call `ψ ∈ ℋ` a **maximal spectral vector** of `A` when `μ_f ≪ μ_ψ` for every `f ∈ ℋ` (teschl
line 4350–4353).

- The spectral parts are closed subsets of `σ(A)`, empty exactly when the corresponding subspace
  is zero, and invariant under unitary equivalence (by 1.1's transport law and UO-C03).
- `N^ess` is closed, `N^ess ⊆ closure N`, and `N^ess` depends only on the Lebesgue class of `N`.
- If `ψ` is a maximal spectral vector then `μ_{P_xx ψ}` is a maximal spectral measure for `A_xx`
  for each type.

Prove the following characterisations (teschl line 4315–4332 and 4420–4427).

1. **Local absolutely continuous mass.** For every `λ ∈ ℝ` the following are equivalent:
   `λ ∈ σ_ac(A)`; for every `ε > 0` there is `f ∈ ℋ` with
   `(Leb.withDensity (μ_f.rnDeriv Leb))((λ − ε, λ + ε)) > 0`; there is one `f ∈ ℋ` with this
   property for every `ε > 0`. The same holds for `σ_sc` with the continuous singular part and
   for `σ_pp` with the atomic part.
2. **No isolated points.** `σ_ac(A)` has no isolated points.
3. **Essential closure.** If `ψ` is a maximal spectral vector and `h` is a Borel version of
   `μ_ψ.rnDeriv Leb`, then `σ_ac(A) = {h > 0}^ess`.
4. **Existence on separable spaces.** If `ℋ` is separable, `A` has a maximal spectral vector.

Route: (1) by 1.3, `λ ∈ σ(A_ac)` iff `P_A(I_ε) P_ac ≠ 0` for every interval `I_ε` around `λ`, iff
some `f` has `μ_{P_ac f}(I_ε) > 0`, and 1.2 rewrites `μ_{P_ac f}`; a single `f` is obtained by
choosing, for `ε = 1/n`, vectors `P_A(J_m) f_n` supported on disjoint annuli
`J_m = I_{1/m} ∖ I_{1/(m+1)}` (absolute continuity gives `μ_{f_n}({λ}) = 0`, so some annulus is
charged) and summing them with nonzero square-summable weights, using spectral orthogonality.
(2) an isolated `λ` would force `P_A(I_ε) P_ac = P_A({λ}) P_ac`, and `μ_{P_ac f}({λ}) = 0` for all
`f`. (3) from (1) and `μ_{P_ac f} ≪ μ_{P_ac ψ}`. (4) from the countable orthogonal cyclic
decomposition of SA-B85 (its nondegenerate `C₀(ℝ)` case, applied to the bounded calculus
`f ↦ ∫ f dP_A` of SA-B44) with weights `ε_j ≠ 0`, `Σ |ε_j|² = 1` (teschl line 4354–4366). *Needs:*
1.1–1.3; SelfAdjointSpectralTheory SA-B85, SA-D12; UnboundedOperators UO-C01, UO-C03.

**Checks.**

- `A = M_x` on `L²[0,1]`: `σ_ac = [0,1]`, `σ_sc = σ_pp = ∅`. For `A = diag(q_n)` with `(q_n)` an
  enumeration of `ℚ ∩ [0,1]`: `σ_pp = [0,1]` and `σ_ac = ∅`; the plausible wrong model
  `σ_ac := σ(A) ∖ σ_p(A)` gives `[0,1] ∖ ℚ ≠ ∅`.
- The parts may overlap: `A = M_x ⊕ diag(q_n)` on `L²[0,1] ⊕ ℓ²` has `σ_ac = σ_pp = [0,1]`, so the
  union formula of UO-C03 is not a disjoint union.
- Essential closure: `([0,1] ∪ {2})^ess = [0,1]`, `ℚ^ess = ∅` while `closure ℚ = ℝ`, and
  `(0,1)^ess = [0,1]`, so endpoints are kept although they are not interior points.
- Maximal spectral vectors: for `A = diag(1, 2)`, `(1,1)` is maximal and `(1,0)` is not
  (`μ_{(0,1)} = δ₂` is not `≪ δ₁`); for `A = 0` on `ℂ²` every nonzero vector is maximal without
  being cyclic; the coordinate operator on `ℓ²(ℝ)` has none, since `μ_ψ` has countably many atoms
  and `e_t` with `t` not an atom has `μ_{e_t} = δ_t`. Hence (3) needs a maximal spectral vector
  and (4) needs separability.
- On the zero Hilbert space all three parts are empty, and (1) holds vacuously on both sides.

### 1.5 The interval criterion

For real `a < b` prove (teschl line 4326–4332):

- `[a, b] ⊆ σ_ac(A)` iff for every nonempty open `J ⊆ (a, b)` there is `f` with
  `(Leb.withDensity (μ_f.rnDeriv Leb))(J) > 0`;
- in particular `[a, b] ⊆ σ_ac(A)` whenever some `f` has `μ_f.rnDeriv Leb > 0` Lebesgue-almost
  everywhere on `[a, b]`;
- `σ_ac(A) ∩ (a, b) = ∅` iff `(Leb.withDensity (μ_f.rnDeriv Leb))((a, b)) = 0` for every `f`.

Route: 1.4(1) for each point of `(a, b)` and closedness of `σ_ac` for the endpoints; for the last
item, a measure charging `(a, b)` has support meeting `(a, b)`, and the support of `μ_{P_ac f}` lies
in `σ_ac(A)` by 1.3 and UO-A06. *Needs:* 1.4; UnboundedOperators UO-A06.

**Checks.**

- `a = b` is excluded: with `(a, a) = ∅` the right side is vacuous while `{a} ⊆ σ_ac(A)` fails
  for `A = 0`.
- `A = M_x` on `L²([0,1] ∪ [2,3])`: `[0,1] ⊆ σ_ac` and `σ_ac ∩ (1, 2) = ∅`, computed from
  `f = 1`, whose density is `1_{[0,1] ∪ [2,3]}`.
- Positive density on a fat Cantor set `K ⊆ [0,1]` alone (`A = M_x` on `L²(K)`) gives
  `σ_ac(A) = K^ess`, which contains no interval; the density hypothesis must hold almost
  everywhere on all of `[a, b]`.

### 1.6 The min–max principle below the essential spectrum

For a self-adjoint `A` bounded below and `n ≥ 1`, define the min–max value

    μ_n(A) := sup over φ₁, …, φ_{n−1} ∈ ℋ of inf {⟪ψ, Aψ⟫ : ψ ∈ dom A, ‖ψ‖ = 1, ψ ⊥ φ₁, …, φ_{n−1}}

in `ℝ ∪ {+∞}`. Prove (teschl line 5044–5055): the sequence `μ_n(A)` is nondecreasing; if `A` has
at least `n` eigenvalues below `inf σ_ess(A)` counted with multiplicity, `μ_n(A)` is the `n`-th of
them; otherwise `μ_n(A) = inf σ_ess(A)` (`+∞` when `σ_ess(A) = ∅`). The same values arise with
`dom A` replaced by any core of `A`, or by the form domain `dom (A − γ)^{1/2}` with the form of
UO-D06. As corollaries: if `A ≤ B` in the **form order**, meaning that the form domains of
UO-D06 satisfy `Q(B) ⊆ Q(A)` and `q_A(ψ) ≤ q_B(ψ)` for every `ψ ∈ Q(B)`, then `μ_n(A) ≤ μ_n(B)`
for every `n` (for each obstacle family the infimum of `q_A` over the larger domain `Q(A)` is at
most the infimum of `q_A ≤ q_B` over `Q(B)`; teschl line 5056–5057 states the common-domain case
`B − A ≥ 0`); and for every
`λ < inf σ_ess(A)`, `dim ran P_A((−∞, λ)) = #{n : μ_n(A) < λ}` (teschl line 5063–5069). Route:
Glazman's lemma, the spectral projections `P_A((−∞, λ))` (finite rank below `inf σ_ess` by UO-C02)
and SA-E11–SA-E13. *Needs:* 1.3; SelfAdjointSpectralTheory SA-E11–SA-E13, SA-C39; UnboundedOperators
UO-C02, UO-D06.

**Checks.**

- `A = diag(1, 3, 5)` on `ℂ³`: `μ₁ = 1`, `μ₂ = 3`, `μ₃ = 5`, `μ₄ = +∞` (three obstacles span `ℂ³`,
  the admissible set is empty); a real-valued junk convention would report `0`.
- `A = M_x` on `L²[0,1]`: no eigenvalues below `inf σ_ess = 0`, and `μ_n = 0` for every `n`.
- `A = −1 ⊕ H₀` on `ℂ ⊕ L²(ℝ)` with `H₀` of Layer 4.2: `μ₁ = −1` and `μ_n = 0` for `n ≥ 2`.
- Form order: `A = diag(1, 3) ≤ B = diag(2, 4)` on `ℂ²` gives `μ₁ = 1 ≤ 2` and `μ₂ = 3 ≤ 4`. The
  domain inclusion matters: on `(0, 1)` the Neumann Laplacian `N` (form `∫ |u'|²` on `H¹`) and the
  Dirichlet Laplacian `D` (the same form on `H¹₀ ⊊ H¹`, Layer 3.4) satisfy `N ≤ D` in the form
  order, with `μ_n(N) = (n − 1)²π² ≤ n²π² = μ_n(D)`; a model that compares the forms on the
  common domain alone would also conclude `D ≤ N`, yet `μ₁(D) = π² > 0 = μ₁(N)`.

### 1.7 Abstract wave operators

For self-adjoint `H₁, H₂` on `ℋ` and a sign `±`, let `D_±(H₂, H₁)` be the set of `ψ` for which
`e^{itH₂} e^{−itH₁} ψ` converges as `t → ±∞`, and `Ω_±ψ` the limit (teschl line 10595–10609).
Prove (teschl Lemma 12.1 and Theorem 12.2, line 10600–10620):

- `D_±` and `Ω_±(D_±)` are closed subspaces and `Ω_± : D_± → Ω_±(D_±)` is unitary;
- `D_±` reduces `H₁`, `Ω_±(D_±)` reduces `H₂`, `Ω_± e^{−isH₁} = e^{−isH₂} Ω_±` on `D_±` and
  `Ω_± H₁ ψ = H₂ Ω_± ψ` for `ψ ∈ D_± ∩ dom H₁`;
- the chain rule: if `ψ ∈ D_±(H₂, H₁)` and `Ω_±(H₂,H₁)ψ ∈ D_±(H₃, H₂)` then
  `ψ ∈ D_±(H₃, H₁)` with `Ω_±(H₃,H₁)ψ = Ω_±(H₃,H₂)Ω_±(H₂,H₁)ψ`.

Say the wave operators **exist on `ℋ_ac(H₁)`** when `ℋ_ac(H₁) ⊆ D_±`, and are **complete** when
moreover `Ω_±(ℋ_ac(H₁)) = ℋ_ac(H₂)`. If they exist on `ℋ_ac(H₁)`, then
`Ω_±(ℋ_ac(H₁)) ⊆ ℋ_ac(H₂)` (the intertwined part of `H₂` is unitarily equivalent to the
absolutely continuous part of `H₁`, by 1.1's transport law). *Needs:* 1.1; SelfAdjointSpectralTheory SA-E26–SA-E30;
UnboundedOperators UO-C03.

**Checks.**

- `H₁ = H₂`: `D_± = ℋ` and `Ω_± = 1`.
- `H₁ = 0`, `H₂ = 1` on `ℂ`: `e^{it}ψ` converges only for `ψ = 0`, so `D_± = 0`.
- `H₁ = M_x` on `L²(ℝ)` and `H₂ = H₁ + c` with `c ≠ 0` constant: `e^{itH₂}e^{−itH₁} = e^{itc}` has no
  limit, so `D_± = 0` although `ℋ_ac(H₁) = ℋ` and `σ_ac(H₁) = σ_ac(H₂) = ℝ`; the perturbation `c`
  is bounded but not trace class (negative control for 1.9).

### 1.8 Rosenblum's lemma and trace-class square roots

For a self-adjoint `H` and a real number `m`, call `x ∈ ℋ` **density-bounded with constant `m`**
when `x ∈ ℋ_ac(H)` and `μ_x.rnDeriv Leb ≤ m²` Lebesgue-almost everywhere (kato57 line 92–96,
(2.7)); only `m²` enters.

- **Monotonicity.** If `x` is density-bounded with constant `m` and `m² ≤ m'²`, it is
  density-bounded with constant `m'`; in particular this holds for `0 ≤ m ≤ m'`. Monotonicity in
  `m` itself fails for negative constants.
- **Scalars and zero.** `0` is density-bounded with every constant; if `x` is density-bounded with
  constant `m` and `c ∈ ℂ`, then `cx` is density-bounded with constant `|c|·m`, since
  `μ_{cx} = |c|² μ_x`.
- **Truncation and density.** For `x ∈ ℋ_ac(H)`, `h` a Borel version of `μ_x.rnDeriv Leb` and
  `m ≥ 0`, the vector `P_H({h ≤ m²}) x` is density-bounded with constant `m` (its measure is
  `μ_x.restrict {h ≤ m²}` by 1.1, of density `h·1_{h ≤ m²}`, and `ℋ_ac(H)` is invariant under
  `P_H`, UO-C03), and `‖x − P_H({h ≤ m²}) x‖² = ∫_{h > m²} h dLeb → 0` as `m → +∞`; so the
  density-bounded vectors are dense in `ℋ_ac(H)`.

Prove (kato57 line 92–111, Lemma 2.1; rosenblum57 §§3–4):

- for `x` density-bounded with constant `m`, every Hilbert–Schmidt `C` and every Hilbert basis `b`
  of `ℋ`, `∫_ℝ ‖C e^{−itH} x‖² dt ≤ 2π m² · hilbertSchmidtEnergy C b`, the inequality read in
  `ℝ≥0∞` (Tau Ceti `ContinuousLinearMap.hilbertSchmidtEnergy`); the right side does not depend on
  `b` (Tau Ceti `ContinuousLinearMap.hilbertSchmidtEnergy_indep`, OperatorIdeals OI-B35), and
  `‖C‖²_HS` below denotes this common value;
- for a bounded self-adjoint trace-class `V` (`ContinuousLinearMap.nuclearENorm V ≠ ⊤`), the
  operator `|V|^{1/2}` is Hilbert–Schmidt with `hilbertSchmidtEnergy |V|^{1/2} b = nuclearENorm V`
  for every Hilbert basis `b` of `ℋ`.

Route: Parseval for the Fourier transform of `d⟪E(λ)x, C*φ_n⟫/dλ` summed over an orthonormal basis
of the range of `C` (kato57 line 97–111); the square root through the compact self-adjoint
eigenbasis of `V` (SA-C86) and OperatorIdeals OI-B29–OI-B36. *Needs:* 1.1, 1.2;
SelfAdjointSpectralTheory SA-C86, SA-E26; UnboundedOperators UO-C03;
OperatorTheory/OperatorIdeals OI-B29–OI-B36; Tau Ceti `ContinuousLinearMap.hilbertSchmidtEnergy`,
`ContinuousLinearMap.hilbertSchmidtEnergy_indep`; Mathlib Plancherel.

**Checks.**

- Multiplier model: for `H = M_λ` on `L²(ℝ)`, `μ_x = |x|²·Leb`, so `x` is density-bounded with
  constant `m` iff `|x| ≤ |m|` almost everywhere.
- The sign of the constant: for `H = M_λ` and `x = 1_{[0,1]}` (density `1_{[0,1]}`), the constants
  `m = −1` and `m = 1` work and `m = 0` does not; so `−1 ≤ 0` does not transport the property,
  while `m² = 1 ≤ 4 = m'²` for `m = 1`, `m' = 2` does.
- Membership in `ℋ_ac(H)` is part of the definition: for `H = 0` on `ℂ`, `ℋ_ac(H) = 0`, so only `0`
  is density-bounded, although every `μ_x = |x|²δ₀` has `μ_x.rnDeriv Leb = 0` almost everywhere.
  Without the membership clause `x = 1` would have constant `0`, and the estimate below would fail:
  for `C = 1` on `ℂ`, `∫_ℝ ‖C e^{−it·0} x‖² dt = ∞ > 0 = 2π·0²·‖C‖²_HS`.
- `x(λ) = |λ|^{−1/4} 1_{[−1,1]}` lies in `ℋ_ac(M_λ)` with unbounded density `|λ|^{−1/2}`, so it is
  not density-bounded for any constant; its truncations `x·1_{|λ| ≥ m^{−4}}` (for `m ≥ 1`) are
  density-bounded with constant `m` and `‖x − x·1_{|λ| ≥ m^{−4}}‖² = 4/m² → 0`.
- `H = M_λ` on `L²(ℝ)`, `x = m·1_{[0,1]}`, `C = ⟨φ, ·⟩φ` with `‖φ‖ = 1` supported in `[0,1]`:
  `∫ |⟨φ, e^{−itλ}x⟩|² dt = 2π ∫ |φ x|² = 2π m²`, equality in the bound; a convention without
  the factor `2π` fails here.
- `V = diag(1, −1/4, 1/9, …)` with entries `(−1)^{n+1}/n²`: `|V|^{1/2} = diag(1/n)`, whose
  Hilbert–Schmidt energy `π²/6` equals the nuclear gauge `Σ 1/n² = π²/6`.

### 1.9 Pearson's theorem and the Kato–Rosenblum theorem

**Pearson's theorem.** Let `H₁`, `H₂` be self-adjoint on `ℋ` and `J` a bounded operator on `ℋ`,
and suppose there is a trace-class `C` (`ContinuousLinearMap.nuclearENorm C ≠ ⊤`) with
`⟪H₂ψ, Jφ⟫ − ⟪ψ, J H₁φ⟫ = ⟪ψ, Cφ⟫` for all `ψ ∈ dom H₂` and `φ ∈ dom H₁`, the form sense of
`C = H₂J − JH₁`. Prove that the strong limits

    W_±(H₂, H₁; J) := s-lim_{t → ±∞} e^{itH₂} J e^{−itH₁} P_ac(H₁)

exist and satisfy `e^{isH₂} W_±(H₂, H₁; J) = W_±(H₂, H₁; J) e^{isH₁}` for every real `s`
(yafaev04 line 116–122, Definition 1.3, and line 191–198, Theorem 1.8; pearson78; rs3 Theorem
XI.7). No isometry is asserted. Route: with `W(t) := e^{itH₂} J e^{−itH₁}`, Duhamel's formula in
the form sense, `⟪ψ, (W(t) − W(s)) φ⟫ = i ∫_s^t ⟪e^{−iuH₂}ψ, C e^{−iuH₁}φ⟫ du` for `ψ ∈ dom H₂`,
`φ ∈ dom H₁`, comes from differentiating `u ↦ ⟪e^{−iuH₂}ψ, J e^{−iuH₁}φ⟫` (SA-E26–SA-E29).
Pearson's argument (pearson78; rs3 Theorem XI.7) combines it with the Schmidt expansion of `C` and
Rosenblum's lemma 1.8, its only spectral input (yafaev04 line 195–206), to obtain the limit for
density-bounded `φ`; since `‖W(t)‖ ≤ ‖J‖` and density-bounded vectors are dense in `ℋ_ac(H₁)`
(1.8), the limit then exists on all of `ℋ_ac(H₁)`. The intertwining relation is the limit of
`e^{isH₂} W(t) = W(t + s) e^{isH₁}`, as `e^{isH₁}` commutes with `P_ac(H₁)` (UO-C03).
*Needs:* 1.2, 1.8; SelfAdjointSpectralTheory SA-E26–SA-E29; UnboundedOperators UO-C03; Tau Ceti
`ContinuousLinearMap.nuclearENorm`.

**The Kato–Rosenblum theorem.** Let `H₁` be self-adjoint, `V` bounded self-adjoint and trace
class, and `H₂ = H₁ + V` on `dom H₁` (self-adjoint by SA-C54). When the wave operators of 1.7
exist on `ℋ_ac(H₁)`, write `W_±(H₂, H₁) := Ω_±(H₂, H₁) P_ac(H₁)` for the **compressed wave
operator**: a bounded operator defined on all of `ℋ`, vanishing on `ℋ_ac(H₁)^⊥` and isometric on
`ℋ_ac(H₁)` (1.7), the strong limit of `e^{itH₂} e^{−itH₁} P_ac(H₁)` (kato57 line 25–28, (1.1)),
that is, Pearson's `W_±(H₂, H₁; 1)`; `Ω_±` of 1.7 is the unrestricted limit on `D_±` and need not
vanish off `ℋ_ac(H₁)`. Prove that the wave operators `Ω_±(H₂, H₁)` and `Ω_±(H₁, H₂)` exist on
the absolutely continuous subspaces and are complete, so that `W_±(H₂,H₁)` is a partial isometry
with initial space `ℋ_ac(H₁)` and final space `ℋ_ac(H₂)`, `W_±(H₂,H₁)* = W_±(H₁,H₂)` (kato57
line 29–30, (1.2)), and `H₂ P_ac(H₂) = W_±(H₂,H₁) H₁ P_ac(H₁) W_±(H₂,H₁)*` (kato57 line 32–35,
(1.3)). In particular the absolutely continuous parts `(H₁)_ac` and `(H₂)_ac` are unitarily
equivalent and `σ_ac(H₁) = σ_ac(H₂)` (kato57 line 21–35, Theorem 1; yafaev04 line 136–140,
Theorem 1.4; rs3 §XI.3, Theorem XI.8; kato76 Ch. X §4.4). The purely absolutely continuous case
is rosenblum57 Theorem 1.6 (line 70–72).

Route. (a) `J = 1` and `C = V` satisfy Pearson's hypothesis: `dom H₂ = dom H₁` and
`⟪(H₁ + V)ψ, φ⟫ − ⟪ψ, H₁φ⟫ = ⟪ψ, Vφ⟫` by the symmetry of `H₁` and `V`; so `ℋ_ac(H₁) ⊆ D_±(H₂, H₁)`,
and with `(H₁, H₂, V)` replaced by `(H₂, H₁, −V)` also `ℋ_ac(H₂) ⊆ D_±(H₁, H₂)`. (b) Each
`e^{itH₂} e^{−itH₁}` is unitary, so the strong limit `W_±(H₂, H₁)` is isometric on `ℋ_ac(H₁)`, and
1.7 maps `ℋ_ac(H₁)` into `ℋ_ac(H₂)`. (c) Completeness: for `y ∈ ℋ_ac(H₂)` put
`x := Ω_±(H₁, H₂) y`, which lies in `ℋ_ac(H₁)` by (b) with the roles exchanged; then
`‖e^{itH₂} e^{−itH₁} x − y‖ = ‖x − e^{itH₁} e^{−itH₂} y‖ → 0`, so `W_±(H₂, H₁) x = y`. (d) The adjoint
formula: as `W_±(H₂,H₁) x ∈ ℋ_ac(H₂)` and `W_±(H₁,H₂) y ∈ ℋ_ac(H₁)`,
`⟪W_±(H₂,H₁) x, y⟫ = lim ⟪e^{itH₂} e^{−itH₁} P_ac(H₁) x, P_ac(H₂) y⟫
= lim ⟪P_ac(H₁) x, e^{itH₁} e^{−itH₂} P_ac(H₂) y⟫ = ⟪x, W_±(H₁,H₂) y⟫`; the conjugacy formula is
1.7's intertwining on `dom H₁`. A weak limit of the unitaries `e^{itH₂} e^{−itH₁}` together with
`‖e^{itH₂} e^{−itH₁} x‖ = ‖x‖` does not give strong convergence: the limit vector must itself have
norm `‖x‖`, which rosenblum57 line 80–95 proves in the purely absolutely continuous case and which
the strong limit of (a) provides here. *Needs:* 1.1, 1.2, 1.4, 1.7, 1.8, Pearson's
theorem above; SelfAdjointSpectralTheory SA-C54, SA-E26–SA-E29; UnboundedOperators UO-C03.

**Checks.**

- `V = 0`: `W_± = P_ac(H₁)` while `Ω_± = 1` on `D_± = ℋ` (1.7). For `H₁ = diag(1, 2)` on `ℂ²`
  this gives `W_± = 0`, the partial isometry with initial and final space `0`, although `Ω_± = 1`;
  a statement of the theorem for `Ω_±` itself would be false here. For `H₁ = M_x` on `L²(ℝ)`,
  `W_± = Ω_± = 1`.
- `H₁ = M_x` on `L²(ℝ)`, `V = c·⟨φ, ·⟩φ` rank one: the theorem gives `σ_ac(H₂) = ℝ`; the bounded
  non-trace-class `V = c·1` of 1.7 shows the trace-class hypothesis cannot be weakened to
  boundedness for existence of `Ω_±` on `ℋ_ac(H₁)`.
- `H₁ = diag(1/n²)` on `ℓ²` (no absolutely continuous part) with any trace-class `V`:
  `ℋ_ac(H₁) = 0`, so `ℋ_ac(H₂) = 0` and `W_± = 0`; for instance the trace-class `V = −diag(1/n²)`
  gives `H₂ = 0`, where `D_± = 0` because no coordinate `e^{−it/n²} c_n` with `c_n ≠ 0` converges.
  The non-trace-class `V = −diag(1/n)` is excluded although it is compact.
- Pearson's limit need not be isometric: `J = 0` satisfies the hypothesis with `C = 0`, and
  `W_±(H₂, H₁; 0) = 0` on the nonzero `ℋ_ac(H₁)` of `H₁ = M_x` on `L²(ℝ)`; isometry in the
  Kato–Rosenblum theorem comes from `J = 1`.
- Weak convergence with preserved norms is not convergence: for `H₁ = M_x`, `H₂ = 2M_x` on `L²(ℝ)`
  and `x = 1_{[0,1]}`, `e^{itH₂} e^{−itH₁} x = e^{itx} 1_{[0,1]}` has norm `1`, tends weakly to `0`
  (`⟪x, e^{itx} x⟫ = (e^{it} − 1)/(it) → 0`) and stays at distance `1` from `0`; here `H₂ − H₁ = M_x`
  is unbounded and not trace class, so neither theorem applies.

### Examples

The multiplication operator `M_x ⊕ (M_x on L²([0,1], c)) ⊕ diag(5)` on
`L²[0,1] ⊕ L²([0,1], c) ⊕ ℂ`, with `c` the Cantor measure, has `σ_ac = [0,1]`, `σ_sc` the Cantor
set, `σ_pp = {5}`; the vector `(1, 1, 1)` is maximal and its measure decomposes as
`Leb|[0,1] + c + δ₅` in the order ac, sc, pp. The free Laplacian of Layer 4.2 is purely
absolutely continuous and is the reference operator for Kato–Rosenblum; a nonzero multiplication
operator on `L²(ℝ^d)` is never compact, so 1.9 applies to Schrödinger operators only through
trace-class conditions on resolvent differences, which are outside this roadmap.

### Dependencies

SelfAdjointSpectralTheory Parts B, C, D, E; UnboundedOperators Layers 1, 3 and 4.7; Tau Ceti
projection-valued measures, Hilbert–Schmidt and nuclear gauges; Mathlib Lebesgue decomposition;
OperatorIdeals OI-B29–OI-B36.

## Layer 2: Semibounded operators and perturbations

### 2.1 The bottom of the spectrum

For every self-adjoint `A` on `ℋ` and every `γ ∈ ℝ`, prove that the following are equivalent:
`γ‖x‖² ≤ ⟪x, Ax⟫` for every `x ∈ dom A`; `σ(A) ⊆ [γ, ∞)`; `P_A((−∞, γ)) = 0`. No lower bound on
`A` and no nonzero `ℋ` is assumed (on `ℋ = 0` all three hold), so the equivalence also proves
semiboundedness. For `A` bounded below on a nonzero `ℋ`, define `λ₀(A) := inf σ(A)` (the spectrum
is then nonempty, closed and bounded below) and prove
`λ₀(A) = inf {⟪x, Ax⟫ : x ∈ dom A, ‖x‖ = 1}`, where the infimum may be taken over any core of `A`
or over the form domain with the closed form of UO-D06 (teschl line 5044–5052 with `n = 1`).
Route: form bound to spectrum by SA-D22 (for `z < γ`, `(γ − z)‖x‖ ≤ ‖(A − z)x‖`); spectrum to
spectral support by SA-E08; spectral support to form bound by SA-E11. *Needs:*
SelfAdjointSpectralTheory SA-D18, SA-D22, SA-E08, SA-E11, SA-C39; UnboundedOperators UO-D06.

- `λ₀(A + c) = λ₀(A) + c` for real `c`, and `λ₀(UAU⁻¹) = λ₀(A)` for unitary `U`.
- `λ₀(A) ∈ σ(A)`.

**Checks.**

- `A = H₀ + c` (Layer 4.2): `λ₀ = c`, attained by no eigenvector.
- `A = 0` on the zero space: `σ(A) = ∅` and `inf ∅` is a junk value in `ℝ`, so the definition of
  `λ₀` requires `ℋ ≠ 0`; the three-way equivalence holds there for every `γ` (all three conditions
  are true).
- `A = M_x` on `L²(ℝ)` is not bounded below; `σ(A) = ℝ` and the definition does not apply, while
  the equivalence holds with all three conditions false for every `γ`.
- `A = 2` on `ℂ`: the three conditions hold exactly for `γ ≤ 2`, and `λ₀(A) = 2`.

### 2.2 Bounded self-adjoint perturbations

Let `A` be self-adjoint and `V` bounded self-adjoint; `A + V` is self-adjoint on `dom A`
(SA-C54). Prove: every core of `A` is a core of `A + V`, because the graph norms of `A` and
`A + V` are equivalent on `dom A` with constants `1 + ‖V‖`; and if `A` is bounded below on a
nonzero `ℋ` then `λ₀(A) − ‖V‖ ≤ λ₀(A + V) ≤ λ₀(A) + ‖V‖`, and more precisely
`λ₀(A) + inf σ(V) ≤ λ₀(A + V) ≤ λ₀(A) + sup σ(V)` (teschl line 5704–5711 with relative bound `0`).
*Needs:* 2.1; SelfAdjointSpectralTheory SA-C39, SA-C52–SA-C54.

**Checks.**

- `A = diag(0, 1)`, `V = diag(1, −1)`: `A + V = diag(1, 0)`, `λ₀` stays `0`, inside
  `[0 − 1, 0 + 1]`.
- `V = c·1`: `λ₀(A + V) = λ₀(A) + c`, equality in both bounds.
- Core transfer: for `A = H₀` on `L²(ℝ)` and `V` multiplication by `cos x`, `C_c^∞(ℝ)` is a core of
  `H₀` (Layer 4.2) and hence of `H₀ + V`.

### 2.3 Kato–Rellich: lower bound and cores

Let `A` be self-adjoint with `γ‖x‖² ≤ ⟪x, Ax⟫`, and `V` symmetric with `dom A ≤ dom V` and
`‖Vx‖ ≤ a‖x‖ + b‖Ax‖` on `dom A`, `a ≥ 0`, `0 ≤ b < 1`. Then `A + V` is self-adjoint on `dom A`
(`IsSelfAdjoint.add_of_isRelativelyBounded`). Prove:

- every core of `A` is a core of `A + V`, since
  `(1 − b)‖Ax‖ ≤ ‖(A + V)x‖ + a‖x‖` and `‖(A + V)x‖ ≤ a‖x‖ + (1 + b)‖Ax‖`;
- `A + V` is bounded below by `γ − max(a/(1 − b), a + b|γ|)`.

Route for the bound: for `μ < γ` and `d = γ − μ`, the operator `(A − μ)⁻¹ = −R_A(μ)` (Conventions)
satisfies `‖(A − μ)⁻¹‖ ≤ 1/d` and `‖A (A − μ)⁻¹‖ ≤ max(1, |γ|/d)`, so
`‖V R_A(μ)‖ ≤ a/d + b·max(1, |γ|/d)`, which is `< 1` once `d > max(a/(1 − b), a + b|γ|)`; then
`A + V − μ = (1 − V R_A(μ))(A − μ)` is invertible. Hence every `μ < γ − max(a/(1 − b), a + b|γ|)`
is a resolvent point of `A + V`, SA-E08 gives `P_{A+V}((−∞, γ − max(a/(1 − b), a + b|γ|))) = 0`,
and SA-E11 (equivalently 2.1, whose equivalence assumes no lower bound on `A + V`) turns this into
the form bound (teschl line 5683–5720, Lemma 6.3 and Theorem 6.4; kato76 Ch. V §4.1; rs2 Theorem
X.12). Teschl writes `R_A(z) = (A − z)⁻¹` (line 3043–3046), the opposite sign, so his factor
`I + B R_A(·)` is this roadmap's `1 − V R_A(·)`. Teschl's printed bound (line
5709–5711) has the denominator `b/(a − 1)` in his lettering, which makes the maximum always
`a|γ| + b`; the resolvent argument gives the maximum with `a/(1 − b)` in this roadmap's
lettering, the form Kato states. *Needs:* 2.1; Tau Ceti `IsSelfAdjoint.add_of_isRelativelyBounded`,
`LinearPMap.IsRelativelyBounded`; SelfAdjointSpectralTheory SA-C39, SA-D22, SA-E05, SA-E08, SA-E11.

**Checks.**

- Resolvent sign: on `ℂ` take `A = 2`, `V = 1`, `γ = 2`, `a = 1`, `b = 0`, `μ = 0`, so `d = 2 > 1`.
  Then `R_A(0) = (0 − 2)⁻¹ = −1/2`, `‖V R_A(0)‖ = 1/2 < 1`, and `(1 − V R_A(0))(A − 0) = (3/2)·2 = 3 =
  A + V − 0`, whereas the factor with a plus sign gives `(1/2)·2 = 1`.

- Lettering witness: ambient `a = 1`, relative `b = 1/2`, `γ = 0` give the bound
  `−max(1/(1 − 1/2), 1 + 0) = −2`; reading the same numbers with the letters swapped (relative
  `1`, ambient `1/2`) violates the hypothesis that the relative coefficient is `< 1`, so the
  theorem does not apply to that reading.
- Scalar test of the bound: `A = λ ≥ γ` on `ℂ` and `V = −(a + b|λ|)` give
  `A + V ≥ γ − (a + b|γ|) ≥ γ − max(a/(1 − b), a + b|γ|)`.
- `b = 1` is excluded: `A = H₀` and `V = −H₀` (relative bound `1`) give `A + V = 0` on `H²`, which
  is not closed in `L²` and so not self-adjoint.

### Examples

For `A = H₀` on `L²(ℝ³)` and `V = V₂ + V_∞` with `V₂ ∈ L²`, `V_∞ ∈ L^∞` real, UnboundedOperators UO-E06
supplies `‖Vu‖ ≤ a_ε‖u‖ + ε‖H₀u‖` for every `ε > 0`, so 2.3 gives the cores `C_c^∞(ℝ³)` and the lower
bound `−a_ε/(1 − ε)` for every `ε ∈ (0, 1)`. Bounded potentials are the case `b = 0` of 2.3 and
coincide with 2.2.

### Dependencies

Layer 1 (for `σ`, `P_A` and 1.3); SelfAdjointSpectralTheory Parts C, D, E; Tau Ceti Kato–Rellich.

## Layer 3: The Laplace–Beltrami operator on a Riemannian manifold

Throughout, `(X, g)` is as in the Conventions; completeness is assumed only where stated.

### 3.1 The Laplacian on complex smooth functions

For `u ∈ C^∞(X; ℂ)` define `Δu := −(laplaceBeltrami (Re u) + i·laplaceBeltrami (Im u))`, with
`laplaceBeltrami` Tau Ceti's `div ∘ grad` (DifferentialGeometry 12.3), and the pointwise Hermitian
pairing `⟨dv, du⟩_g := g(grad Re v, grad Re u) + g(grad Im v, grad Im u) +
i(g(grad Re v, grad Im u) − g(grad Im v, grad Re u))`, conjugate-linear in `v`. Prove Green's
formula: if `u` is `C²`, `v` is `C¹` and one of them has compact support, then
`∫ conj(v)·Δu dvol_g = ∫ ⟨dv, du⟩_g dvol_g`; hence `∫ conj(v)·Δu = ∫ conj(Δv)·u` when both are `C²`
and one has compact support (DifferentialGeometry 12.5; grigoryan09 Ch. 4).

- `Δ` is complex-linear, commutes with complex conjugation, and kills locally constant functions.
- `⟨du, du⟩_g = |grad Re u|² + |grad Im u|² ≥ 0`.
- `Δ` is natural under isometries: `Δ(u ∘ φ) = (Δu) ∘ φ` for a Riemannian isometry `φ`.

*Needs:* Tau Ceti `TauCeti.Manifold.laplaceBeltrami`, `TauCeti.Manifold.integral_mul_laplaceBeltrami`;
DifferentialGeometry 12.2–12.5.

**Checks.**

- Flat `ℝ^d`: `Δ‖x‖² = −2d`, and `Δ e^{i⟨k,x⟩} = ‖k‖² e^{i⟨k,x⟩}`; Tau Ceti's `laplaceBeltrami`
  gives `2d` on `‖x‖²`, the sign gate.
- Upper half-plane `(dx² + dy²)/y²`: `Δ yˢ = s(1 − s) yˢ`, so `Δ y = 0` and `Δ y² = −2y²`.
- Circle of length `2π`: `Δ e^{inθ} = n² e^{inθ}`, and Green's formula with `u = v = e^{inθ}` gives
  `2πn² = 2πn²`; dropping the conjugation would give `∫ v·Δu = n² ∫ e^{2inθ} dθ = 0` for `n ≠ 0`.

### 3.2 The initial operator on test functions

Let `D₀ ⊆ L²(X)` be the image of `C_c^∞(X; ℂ)`; the map is injective because `vol_g` has full
support. Define the **initial operator** `Δ₀` (the Laplacian on `C_c^∞(X; ℂ)`) as the partial
operator with domain `D₀` and action `[u] ↦ [Δu]`; its closure `closure Δ₀` is the **minimal
operator** of bms02 line 151–157, which defines the minimal operator as the closure from `C_c^∞`
and the maximal operator as its adjoint, so that `Δ₀† = (closure Δ₀)†` (HilbertModules H6).
Prove: `Δ₀` is densely defined (SmoothBundlesConnections B2.2
with `TauCeti.isLocallyFiniteMeasure_riemannianVolume`), symmetric
(`LinearPMap.IsFormalAdjoint Δ₀ Δ₀`), nonnegative with `⟪u, Δ₀u⟫ = ∫ ⟨du, du⟩_g dvol_g`, and closable
(`Δ₀ ≤ Δ₀†`, `LinearPMap.adjoint_isClosed`).

- The quadratic form `⟪u, Δ₀v⟫ = ∫ ⟨du, dv⟩_g` on `D₀` is Hermitian and nonnegative.
- `Δ₀` commutes with complex conjugation and with isometries of `X`.
- For an open `Y ⊆ X` with the restricted metric, extension by zero maps the initial operator of `Y`
  into that of `X`.

*Needs:* 3.1; SmoothBundlesConnections B2.2; Tau Ceti `TauCeti.riemannianVolume` and its
open-positivity instance; Mathlib `LinearPMap.IsFormalAdjoint.le_adjoint`, `LinearPMap.adjoint_isClosed`,
`LinearPMap.isClosable_iff_exists_closed_extension`.

**Checks.**

- `X = ℝ`: `Δ₀ = −d²/dx²` on `C_c^∞(ℝ)` and `⟪u, Δ₀u⟫ = ∫ |u'|²`.
- `X = (0, 1)` with the flat metric (incomplete): `ker(Δ₀† + 1)` contains `eˣ` and `e^{−x}`, both
  in `L²(0,1)`, so `Δ₀` is not essentially self-adjoint (its deficiency indices are `(2, 2)` in
  HilbertModules H6's decomposition); its closure has domain `H²₀(0,1)` (UnboundedOperators UO-E05).
- `X` zero-dimensional (a countable discrete set, `vol_g` counting measure): `Δ₀ = 0` on finitely
  supported functions, with closure `0` on `ℓ²(X)`.

### 3.3 The maximal operator

For `u ∈ L²(X)` let `Δu` be the distribution of ComplexKahlerGeometry K5a obtained by the transpose
action of the scalar operator `Δ` on test densities, `⟨Δu, φ dvol_g⟩ = ∫ u·Δφ dvol_g`. Define the
**maximal operator** `Δ_max` with domain `{u ∈ L²(X) : Δu ∈ L²(X)}` and action `u ↦ Δu` (bms02
line 151–157). Prove:

- `Δ₀† = Δ_max` (bms02 line 152–155);
- `dom Δ_max ⊆ H²_loc(X)` (K5a interior regularity with `s = 0`; bms02 line 179–182, Theorem 2.3
  for the scalar case);
- on `C²` functions `u ∈ L²(X)` with `Δu ∈ L²(X)`, `Δ_max u` is the classical `Δu`.

*Needs:* 3.2; ComplexKahlerGeometry K5a (`BundleDistribution`, distributional action, `H^s_loc`,
interior regularity); PseudodifferentialOperators P1.0; Mathlib
`LinearPMap.mem_adjoint_domain_of_exists`.

**Checks.**

- `X = ℝ`: `u = e^{−|x|}` has `Δu = −u + 2δ₀` in distributions, so `u ∉ dom Δ_max` although
  `u ∈ H¹(ℝ)`.
- `X = ℝ³`: `u = χ(x)/|x|` with `χ` a cutoff equal to `1` near `0` has `Δu = 4πδ₀` plus a smooth
  function, so `u ∉ dom Δ_max`; Mathlib's sign would give `−4πδ₀`.
- `X = (0, 1)`: `1 ∈ dom Δ_max` with `Δ_max 1 = 0`, and `eˣ ∈ ker(Δ_max + 1)`.

### 3.4 Sobolev spaces, the energy form and the Friedrichs Laplacian

Define `H¹(X) := {u ∈ L²(X) : du ∈ L²(T*X ⊗ ℂ)}`, with `du` the distributional differential
(K5a) and `L²(T*X ⊗ ℂ)` the space of SmoothBundlesConnections B2.2 for the metric dual to `g`, normed
by `‖u‖²_{H¹} = ‖u‖² + ‖du‖²`; let `H¹₀(X)` be the closure of `C_c^∞(X; ℂ)` in `H¹(X)`, and
`𝔞(u, v) := ⟪du, dv⟫` (grigoryan09 Ch. 4). Prove:

- `H¹(X)` is a Hilbert space and `H¹₀(X)` a closed subspace; both embed injectively and densely in
  `L²(X)`;
- `𝔞` on `H¹₀(X)` and on `H¹(X)` is a closed nonnegative Hermitian form in the sense of UO-D06;
- the operator of `𝔞` on `H¹₀(X)` is the Friedrichs extension `Δ_F` of `Δ₀` (UO-D06; teschl line
  2914–2917 and 2960–2966), with `dom Δ_F = H¹₀(X) ∩ dom Δ_max`;
- `Δ₀ ⊆ Δ_F ⊆ Δ_max`, and `Δ_F ≥ 0`.

*Needs:* 3.2, 3.3; SmoothBundlesConnections B2.2; ComplexKahlerGeometry K5a; HilbertModules H6;
UnboundedOperators UO-D06.

**Checks.**

- `X = ℝ`: `H¹ = H¹₀ = W^{1,2}(ℝ)`, `𝔞(u, u) = ∫ |u'|²`, `Δ_F = H₀` (Layer 4.2 with `d = 1`).
- `X = (0, 1)`: `1 ∈ H¹ ∖ H¹₀` (the Poincaré inequality `‖u‖ ≤ π⁻¹‖u'‖` holds on `H¹₀` and fails
  for `1`); `Δ_F` is the Dirichlet Laplacian with eigenvalues `n²π²`, `n ≥ 1`, while the operator of
  `𝔞` on `H¹` is the Neumann Laplacian with eigenvalues `n²π²`, `n ≥ 0`.
- `𝔞(iu, iu) = 𝔞(u, u)` and `𝔞(u, iv) = i𝔞(u, v)`: the form is conjugate-linear in the first slot.

### 3.5 Gaffney cutoff functions

Prove: if `X` is complete, there are `χ_k ∈ C_c^∞(X; ℝ)`, `k ≥ 1`, with `0 ≤ χ_k ≤ 1`, every compact
set eventually contained in `{χ_k = 1}`, and `sup_X |grad χ_k| ≤ 4/k` (gaffney54; grigoryan09
Ch. 11). Route: enumerate the components `X_j` (countably many by second countability) with base
points `p_j`; on `X_j` for `j ≤ k` smooth the bounded `1/k`-Lipschitz function
`clamp(2 − d(p_j, ·)/k, 0, 1)` to a smooth `g` within `1/8` and with gradient at most `1/k + 1/k`
(RiemannianGeometry R7.8 item 8), compose with a fixed smooth step `φ` equal to `0` on
`(−∞, 1/8]`, to `1` on `[7/8, ∞)` and with `|φ'| ≤ 2` (a rise of `1` over length `3/4` has average
slope `4/3 < 2`, so such a step exists), and set `χ_k = 0` on the other components. Then
`χ_k = φ ∘ g` is `1` where the clamp is `1` (there `g ≥ 7/8`), `0` where the clamp is `0` (there
`g ≤ 1/8`), and `|grad χ_k| ≤ 2·(2/k) = 4/k`; compact support comes from compactness of closed
balls (HopfRinow (b)). *Needs:* RiemannianGeometry R7.8; Completed/HopfRinow Layers 0–4.

**Checks.**

- Flat `ℝ^d`: `χ_k(x) = φ(2 − |x|/k)` up to smoothing, gradient `≤ 2/k`.
- On the incomplete `(0, 1)` no such sequence exists: `χ_k(1/2) = 1` for large `k` and `χ_k = 0`
  near `0` give `1 ≤ (4/k)·(1/2)`, false once `k > 2`.
- A countable disjoint union of circles `X = ⊔ S¹_j`: `χ_k = 1` on `S¹_1, …, S¹_k` and `0`
  elsewhere, gradient `0`.
- The step thresholds: a smooth `φ` equal to `0` on `(−∞, 1/4]` and to `1` on `[3/4, ∞)` cannot have
  `|φ'| ≤ 2`, since `1 = ∫_{1/4}^{3/4} φ' ≤ (1/2) sup |φ'|` with equality only for `φ' ≡ 2` on
  `(1/4, 3/4)`, which contradicts `φ'(1/4) = 0`; with thresholds `1/8` and `7/8` the average slope
  `4/3` leaves room below `2`.

### 3.6 Essential self-adjointness on complete manifolds

**Theorem (Gaffney, Chernoff, Strichartz).** If `X` is complete, then `Δ₀` is essentially
self-adjoint and `closure Δ₀ = Δ_F = Δ_max`; write `Δ_X` for this operator. Moreover
`H¹₀(X) = H¹(X)`, `dom Δ_X = {u ∈ H¹(X) : Δu ∈ L²(X)}`, `Δ_X ≥ 0`, `σ(Δ_X) ⊆ [0, ∞)`, the form domain
of `Δ_X` is `H¹(X)` with `‖Δ_X^{1/2} u‖² = ‖du‖²`, and `C_c^∞(X; ℂ)` is an operator core and a form
core (bms02 line 245–246, Corollary 2.10 with `D = d` on the trivial line bundle, and line 252–256;
strichartz83 Theorem 2.4; chernoff73; gaffney54; grigoryan09 Ch. 11). bms02 assumes `M` connected
(line 128–129); the disconnected case follows componentwise, since `L²(X) = ⊕_j L²(X_j)` over the
countably many components, `Δ₀` preserves the summands, and so do `Δ₀† = Δ_max` and `Δ_F`.

Route. (a) For `u ∈ dom Δ_max`, `u ∈ H²_loc` (3.3); integrating `Δ_max u` against `χ_k² u` gives
`∫ χ_k² |du|² ≤ 2‖Δ_max u‖‖u‖ + 4 sup|grad χ_k|² ‖u‖²`, so `du ∈ L²` and `dom Δ_max ⊆ H¹(X)`. (b) If
`Δ_max u + u = 0`, the same computation gives `∫ χ_k² |u|² ≤ 2 sup |grad χ_k|² ‖u‖² → 0`, so
`ker(Δ₀† + 1) = 0`; as `closure Δ₀ + 1` has closed range by nonnegativity, it is surjective and
UO-D06's real-shift criterion makes `closure Δ₀` self-adjoint. (c) For `u ∈ H¹(X)`, `χ_k u → u` in
`H¹`, and compactly supported elements of `H¹` lie in `H¹₀` by mollification in charts with a
partition of unity (PDE §1.2), so `H¹ = H¹₀`. Steps (a) and (b) use Green's formula of 3.1 extended
by density to `u ∈ H²_loc` paired with compactly supported elements of `H¹`.
(d) `closure Δ₀ ⊆ Δ_F ⊆ Δ_max = (closure Δ₀)† = closure Δ₀`. (e) The square-root and form
identifications are UO-D06's for the form `𝔞` on `H¹₀ = H¹`. *Needs:* 3.2–3.5; HilbertModules H6
(`(closure T)* = T*`); UnboundedOperators UO-D06; ComplexKahlerGeometry K5a; PDE §1.2 (density of
`C_c^∞` in the zero-boundary space `W^{1,2}_0` on Euclidean open sets).

**Checks.**

- Flat `ℝ^d`: `Δ_X = H₀` of Layer 4.2, with `dom = H²(ℝ^d)`.
- Incomplete but essentially self-adjoint: on `ℝ⁴ ∖ {0}` the initial operator `Δ₀` is essentially
  self-adjoint (rs2 §X.1): solutions of `(Δ_max + 1)u = 0` singular at `0` behave like `|x|^{−2}`,
  and `∫_{|x|<1} |x|^{−4} dx = ∞` in dimension `4`. Completeness is sufficient, not necessary.
- `(0, 1)` is incomplete and `Δ₀` is not essentially self-adjoint (3.2), and `Δ_F ≠ Δ_max`
  (`1 ∈ dom Δ_max ∖ dom Δ_F`).
- Compact `X`: complete, and 3.8 identifies `Δ_X` with K5a's realisation.

### 3.7 Spectral vocabulary of the Laplacian

Let `X` be complete. Prove:

- `ker Δ_X = {u ∈ L²(X) : u is locally constant almost everywhere}`; its dimension (a cardinal) is
  the number of connected components of finite volume; on a connected `X`, `0` is an eigenvalue iff
  `vol_g(X) < ∞`, and then it is simple with eigenvector the constant `1` (hm23 line 41–43 states
  the finite-area hyperbolic surface case; the general case is the kernel route below).
- With `λ₀(X) := λ₀(Δ_X)` (2.1, for `X ≠ ∅`):
  `λ₀(X) = inf {∫ ⟨du, du⟩_g / ∫ |u|² : u ∈ C_c^∞(X; ℂ), u ≠ 0} ≥ 0`.
- The ordered eigenvalues `λ_k(X) := μ_{k+1}(Δ_X)`, `k ≥ 0`, of 1.6, computed on `C_c^∞(X; ℂ)` or on
  `H¹(X)`, are the eigenvalues below `inf σ_ess(Δ_X)` with multiplicity, then `inf σ_ess(Δ_X)`
  (`+∞` if `σ_ess = ∅`).
- `λ₁⁺(X) := inf (σ(Δ_X) ∖ {0})` in `[0, ∞]`, the first spectral value above `0` (the spectral-gap
  vocabulary of hm23 line 41–47, 104–105, there for finite-area hyperbolic surfaces); if `X` is
  connected with `vol_g(X) < ∞` and `0 ∉ closure(σ(Δ_X) ∖ {0})`, then `λ₁⁺(X) = λ₁(X)`.

The eigenvalues, the discrete spectrum and the essential spectrum of `Δ_X` are those of
UnboundedOperators UO-C02 applied to `Δ_X`. Route for the
kernel: `u ∈ ker Δ_X` gives `‖du‖² = ⟪u, Δ_X u⟫ = 0`, and a distribution with zero differential on a
connected manifold is constant. *Needs:* 1.6, 2.1, 3.6; UnboundedOperators UO-C02; K5a.

**Checks.**

- Circle of length `2π`: `λ₀ = 0` simple, `λ₁ = λ₂ = 1`, `λ₃ = λ₄ = 4` (eigenfunctions `e^{±inθ}`).
- `X = ℝ`: `λ₀ = 0` is not an eigenvalue (`vol = ∞`), `σ = [0, ∞)`, and `λ₁⁺(X) = inf (0, ∞) = 0 =
  λ₁(X)`: the first spectral value above `0` need not be an eigenvalue or positive.
- `X` a point: `L² = ℂ`, `σ = {0}`, `λ₁⁺(X) = λ₁(X) = +∞` by the extended convention; the flat torus
  `ℝ²/ℤ²` has `λ₁ = ⋯ = λ₄ = 4π²`.

### 3.8 Compact manifolds

Let `X` be compact. Prove: `X` is complete; `Δ_X` is ComplexKahlerGeometry K5a's `H²` realisation of
the nonnegative scalar Hodge Laplacian on complex functions (K5a.ComponentwiseCompact for several
components), so `dom Δ_X = H²(X)` and `Δ_X` has compact resolvent; `σ(Δ_X) = σ_disc(Δ_X)`, every
spectral value is an eigenvalue of finite multiplicity, and `L²(X)` has an orthonormal basis of
smooth eigenfunctions; the multiplicity of `0` is the number of components. If `X ≠ ∅`, the
eigenvalues listed with multiplicity are `0 = λ₀ ≤ λ₁ ≤ ⋯` with `λ_k = λ_k(X)` of 3.7, and for every
`k < dim L²(X)` (every `k`, when `dim X ≥ 1`: `L²(X)` is then infinite-dimensional) `λ_k` is the
Courant–Fischer value `rayleighMinMax ⊤ k` of VariationalMethods 4.4 for the compact form pair
`(H¹(X) ↪ L²(X), 𝔞)` of 3.4, whose embedding is compact because it factors through the compact
operator `(Δ_X + 1)^{−1/2}` (3.6's form identification). If `dim X ≥ 1` and `X ≠ ∅`, every `λ_k` is
finite and `λ_k → ∞` (chavel84 Ch. I). *Needs:* 3.6, 3.7; ComplexKahlerGeometry K5a;
VariationalMethods 4.4, 5.1–5.2;
Tau Ceti `IsSelfAdjoint.hasCompactResolvent_iff_isCompactOperator_resolvent`.

**Checks.**

- Round `S²`: eigenvalues `l(l + 1)` with multiplicity `2l + 1`; `λ₁ = λ₂ = λ₃ = 2`.
- `dim X = 0`: a finite set of `N ≥ 1` points has `L² = ℂ^N`, `Δ_X = 0` and only `N` eigenvalues,
  all `0`: `λ₀ = ⋯ = λ_{N−1} = 0` and `λ_k = +∞` for `k ≥ N` (empty admissible family, 1.6), whereas
  `rayleighMinMax ⊤ k = 0` for `k ≥ N` is VariationalMethods' junk value; so the Courant–Fischer
  identification is asserted only for `k < N`, and the unboundedness clause fails because every
  finite eigenvalue is `0`, which is why it needs `dim X ≥ 1`.
- `X = ∅` is compact with `L²(X) = 0` and `σ(Δ_X) = ∅`: there is no eigenvalue `λ₀ = 0`, and
  `λ₀(X) = μ₁(Δ_X) = +∞`; the eigenvalue clause is stated for `X ≠ ∅` only.
- Two disjoint circles: `0` has multiplicity `2`, one constant per component.

### 3.9 Bounded potentials

Let `X` be complete and `V ∈ L^∞(X)` real. Prove: `Δ_X + V` is self-adjoint on `dom Δ_X` (SA-C54),
`Δ₀ + V` is essentially self-adjoint on `C_c^∞(X; ℂ)` with closure `Δ_X + V`, and
`Δ_X + V ≥ ess inf V` (teschl line 5704–5711, Theorem 6.4, with relative bound `0`; 2.2). If
moreover `X` is compact, prove:

- `Δ_X + V` has compact resolvent; its spectrum is discrete, every spectral value is an eigenvalue
  of finite multiplicity, and `L²(X)` has an orthonormal basis of eigenfunctions of `Δ_X + V`, each
  in `dom Δ_X = H²(X)` (3.8);
- the eigenvalues listed with multiplicity are the min–max values `μ_n(Δ_X + V)`, `n ≥ 1`, of 1.6
  (`+∞` once `n > dim L²(X)`), and for `X ≠ ∅`
  `λ_{n−1}(X) + ess inf V ≤ μ_n(Δ_X + V) ≤ λ_{n−1}(X) + ess sup V` with `λ_k(X)` of 3.7;
- if `X ≠ ∅` and `dim X ≥ 1`, every `μ_n(Δ_X + V)` is finite and `μ_n(Δ_X + V) → ∞`;
- if `V` is moreover smooth, every eigenfunction is smooth (ComplexKahlerGeometry K5a interior
  regularity for the Laplace-type operator `Δ + V`).

For discontinuous `V` the eigenfunctions are asserted to lie in `H²(X)` only, and the lowest
eigenvalue is `μ₁(Δ_X + V) ≥ ess inf V`, not `0`. Route: for `s > ess sup |V|`,
`‖V (Δ_X − is)⁻¹‖ ≤ ess sup |V| / s < 1` because `Δ_X` is self-adjoint, so
`Δ_X + V − is = (1 + V (Δ_X − is)⁻¹)(Δ_X − is)` is invertible and
`(Δ_X + V − is)⁻¹ = (Δ_X − is)⁻¹ (1 + V (Δ_X − is)⁻¹)⁻¹` is compact, a compact operator composed
with a bounded one (teschl line 6358–6360 for relatively compact bounded perturbations; Mathlib
`IsCompactOperator.comp_clm`; Tau Ceti
`IsSelfAdjoint.hasCompactResolvent_iff_isCompactOperator_resolvent`). The eigenbasis is Tau Ceti
`IsSelfAdjoint.exists_hilbertBasis_forall_apply_eq_smul_of_hasCompactResolvent` applied to the
self-adjoint `Δ_X + V`; equivalently it comes from SA-C86 applied to the compact **normal**
operator `T := (Δ_X + V − is)⁻¹`, whose adjoint `T* = (Δ_X + V + is)⁻¹` commutes with `T` by the
resolvent identity (`LinearPMap.resolvent_sub_resolvent`). For `X ≠ ∅`, `T` is not self-adjoint:
`T − T* = 2is·T T*` is injective on `L²(X) ≠ 0`. Since `ker T = 0`, every eigenvector of `T` has an
eigenvalue `ν ≠ 0` and is an eigenvector of `Δ_X + V` for `is + ν⁻¹`. The two-sided bound is 1.6's form-order corollary applied
to `Δ_X + ess inf V ≤ Δ_X + V ≤ Δ_X + ess sup V` (common form domain `H¹(X)`, 3.6), with
`μ_n(Δ_X + c) = λ_{n−1}(X) + c`; finiteness and divergence follow from 3.8. *Needs:* 1.6, 2.2, 3.6,
3.7, 3.8; SelfAdjointSpectralTheory SA-C54, SA-C86; ComplexKahlerGeometry K5a; Mathlib
`IsCompactOperator.comp_clm`; Tau Ceti `IsSelfAdjoint.hasCompactResolvent_iff_isCompactOperator_resolvent`,
`IsSelfAdjoint.exists_hilbertBasis_forall_apply_eq_smul_of_hasCompactResolvent`,
`LinearPMap.resolvent_sub_resolvent`.

**Checks.**

- `V = c` constant: `σ(Δ_X + c) = σ(Δ_X) + c`.
- Circle of length `2π`, `V = 1`: the eigenvalues are `1, 2, 2, 5, 5, …` (`n² + 1`), so the list starts
  at `ess inf V = 1`, not at `0`, and both sides of the min–max sandwich are equalities.
- Circle of length `2π`, `V = 1_{[0,π)}`: `ess inf V = 0`, and the Rayleigh quotient of `1` is
  `π/(2π) = 1/2`, so `0 ≤ λ₀(Δ_X + V) ≤ 1/2`. No eigenfunction is smooth: a smooth `u` with
  `−u'' + Vu = λu` makes `Vu = λu + u''` continuous, so the jump of `V` at `0` forces `u(0) = 0`;
  comparing `u''' = ((V − λ)u)'` from both sides gives `(1 − λ)u'(0) = −λu'(0)`, so `u'(0) = 0`, and
  uniqueness for the ODE on `[0, π]` and on `[π, 2π]` gives `u = 0`. The eigenfunctions lie in `H²`.
- The resolvent used in the route is normal, not self-adjoint: on a one-point `X` with `V = 0` and
  `s = 1`, `T = (0 − i)⁻¹ = i` and `T* = −i ≠ T`, while `T T* = T* T = 1` and
  `T − T* = 2i = 2i·T T*`; the eigenvector `1` of `T` for `ν = i` is the eigenvector of
  `Δ_X + V = 0` for `i + i⁻¹ = 0`. A model that feeds `T` to a self-adjoint eigenbasis theorem
  would need `i = −i`.
- A finite set of `N` points: `L² = ℂ^N`, `Δ_X + V` is multiplication by `V`, the eigenvalues are the
  `N` values of `V` and `μ_n = +∞` for `n > N`, so divergence to `+∞` through finite values needs
  `dim X ≥ 1`.
- `V` unbounded is outside this section: `V = −x⁴` on `ℝ` makes `−d²/dx² + V` not essentially
  self-adjoint on `C_c^∞(ℝ)` (limit circle at `±∞`, rs2 §X.1), so boundedness is used.

### 3.10 Cusp ends and the threshold one quarter

A **standard cusp end** of a Riemannian surface `X` is an open set `C ⊆ X` with an isometry
`C ≅ (ℝ/wℤ) × (a, ∞)` for the metric `(dx² + dy²)/y²`, `w > 0`, `a > 0` (width `w`, height `a`).

- **Area.** `vol_g(C) = ∫_0^w ∫_a^∞ dy dx / y² = w/a`.
- **Truncation.** For every `a' > a` the part `{y > a'}` of a standard cusp end of width `w` and
  height `a` is a standard cusp end of width `w` and height `a'`, of area `w/a'`; so a surface with
  one standard cusp end contains standard cusp ends of arbitrarily small area.
- **Isometry invariance.** The image of a standard cusp end under an isometry of Riemannian
  surfaces is a standard cusp end with the same width and height.

Prove: if
`X` is complete and contains a standard cusp end, then `[1/4, ∞) ⊆ σ_ess(Δ_X)` (lp80 line 251–256,
equations (2.8)–(2.10), for the `x`-independent reduction `s = log y`, `v = u/√y`, and line 279–290
for the zero Fourier mode on a cusp; iwaniec02 Ch. 7). Route: fix `t ∈ ℝ` and a **nonzero**
`ψ ∈ C_c^∞((1, 2))`, and put `u_n = y^{1/2 + it} ψ((log y − n)/n)`, independent of `x` and extended
by `0`. It is supported in `{e^{2n} ≤ y ≤ e^{3n}}`, inside the cusp once `e^{2n} > a`, so
`u_n ∈ C_c^∞(X; ℂ) ⊆ dom Δ_X`. In `r = log y` the measure is `w e^{−r} dr` and
`Δ (y^{1/2} f(log y)) = y^{1/2}(1/4 − ∂_r²) f`, so `‖u_n‖² = w n ‖ψ‖²₂ > 0` and
`(Δ − 1/4 − t²) u_n = −y^{1/2 + it} (2it ψ'(·)/n + ψ''(·)/n²)` evaluated at `(log y − n)/n`, whence
`‖(Δ_X − 1/4 − t²) u_n‖ / ‖u_n‖ ≤ (2|t| ‖ψ'‖₂ / n + ‖ψ''‖₂ / n²) / ‖ψ‖₂ → 0`. The normalised vectors
`v_j := u_{2^j} / ‖u_{2^j}‖` have disjoint supports (`log y ∈ [2^{j+1}, 3·2^j]` and
`3·2^j < 2^{j+2}`), so they are orthonormal, lie in `dom Δ_X` and satisfy
`‖(Δ_X − 1/4 − t²) v_j‖ → 0`. Weyl's criterion in the direction "an orthonormal sequence in `dom A`
with `‖(A − λ) v_j‖ → 0` forces `λ ∈ σ_ess(A)`" (UnboundedOperators UO-C02, gap:weyl-criterion;
teschl line 6277–6281, Lemma 6.17, p. 145) then gives `1/4 + t² ∈ σ_ess(Δ_X)`. *Needs:* 3.1, 3.6;
UnboundedOperators UO-C02 with gap:weyl-criterion.

**Checks.**

- `ψ = 0` is excluded: then `u_n = 0`, `‖u_n‖ = 0` and no vector of the sequence can be normalised
  (the junk quotient `0/0 = 0` is not a unit vector), so Weyl's criterion receives no input.
- Orthonormality (weak convergence to `0`) is what the criterion needs, not small residuals alone:
  for `A = 0` on `ℂ` the constant unit sequence `u_n = 1` has `‖A u_n‖ = 0` but tends weakly to
  `1 ≠ 0`, and `σ_ess(A) = ∅` (`0` is an isolated eigenvalue of multiplicity `1`); for `A = 0` on
  `ℓ²` the orthonormal `u_n = e_n` have residual `0` and `σ_ess(A) = {0}`. The disjointly supported
  `v_j` of the route follow the second pattern.
- Truncation: the width-`1` cusp end of height `1` has area `1`; truncating at height `2` gives a
  standard cusp end of area `1/2`, and a model with area `w·a` would instead double it.
- `Δ y^{1/2+it} = (1/4 + t²) y^{1/2+it}`, and `∫_a^∞ |y^{1/2+it}|² w dy/y² = ∞`, so `y^{1/2+it}` is a
  generalised eigenfunction and not an `L²` eigenvector; `yˢ` is in `L²` of the cusp iff `Re s < 1/2`.
- The parabolic cylinder `⟨z ↦ z + 1⟩\ℍ` (FuchsianOrbifolds Layer 3 cusp coordinates) contains the
  standard cusp end `y > 1` with `w = 1` and area `1`, so `[1/4, ∞) ⊆ σ_ess`.
- The hyperbolic cylinder `⟨z ↦ 2z⟩\ℍ` has two funnel ends of infinite area and no standard cusp
  end; the theorem says nothing there.

### Examples

For a torsion-free congruence subgroup `Γ` (for instance `Γ(N)`, `N ≥ 3`), `X = Γ\ℍ` is a connected
complete hyperbolic surface of finite area with standard cusp ends. On it `Δ_X` of 3.6 is the
operator that CongruenceSpectralGap §0.2 constructs: both are the closure of the same operator
`−y²(∂ₓ² + ∂ᵧ²)` on `C_c^∞(X; ℂ)`. The kernel `ker Δ_X = ℂ·1` given by 3.7 (one component, of finite
area) is the kernel statement of that section, and 3.10 adds `[1/4, ∞) ⊆ σ_ess(Δ_X)`. Quotients by
groups with torsion are orbifolds, outside 3.6; CongruenceSpectralGap §0.2 (every congruence
group) and AutomorphicSpectralTheory §1.16a (`Γ₀(N)`) treat them by passing to a torsion-free
normal subgroup of finite index and taking invariants under the finite deck group.

### Dependencies

Layers 1 and 2; DifferentialGeometry Layer 12; RiemannianGeometry R7.8; Completed/HopfRinow;
HilbertModules H6;
ComplexKahlerGeometry K5a; PseudodifferentialOperators P1.0; SmoothBundlesConnections B2.2;
UnboundedOperators UO-C02 (with gap:weyl-criterion), UO-D06; VariationalMethods 4.4, 5.1–5.2;
SelfAdjointSpectralTheory SA-C54, SA-C86; Tau Ceti Riemannian volume, Laplace–Beltrami and Green
identity, compact resolvents and their eigenbases.

## Layer 4: Schrödinger operators on `L²(ℝ^d)`

Throughout `d ≥ 1`, `ℝ^d = EuclideanSpace ℝ (Fin d)` with Lebesgue measure,
`L²(ℝ^d) := L²(ℝ^d; ℂ)`, and `Δ = Σⱼ ∂ⱼ²` is Mathlib's Laplacian (`InnerProductSpace.instLaplacian`,
extended to distributions), so that `H₀ = −Δ ≥ 0` below is Layer 3's nonnegative `Δ_X` for
`X = ℝ^d` (Conventions, Laplacian sign).

### 4.1 Four descriptions of `H²(ℝ^d)`

For `u ∈ L²(ℝ^d)` prove that the following are equivalent (teschl line 7086–7092; rs2 Ch. IX):

1. `TemperedDistribution.MemSobolev 2 2` holds for the tempered distribution of `u`;
2. `Re u` and `Im u` have weak derivatives of order `≤ 2` in `L²` (Tau Ceti `TauCeti.Wkp` with
   `k = 2`, `p = 2`; PDE §1.3);
3. `(1 + ‖ξ‖²)·𝓕u ∈ L²` (`TemperedDistribution.memSobolev_iff_exists_smulLeftCLM_fourier` at `s = 2`);
4. the distributional Laplacian of `u` lies in `L²`.

With `N(u) := ‖(1 + ‖ξ‖²)𝓕u‖₂`, prove `N(u) ≤ ‖u‖₂ + (4π²)⁻¹‖Δu‖₂` and
`‖u‖₂ + ‖Δu‖₂ ≤ (1 + 4π²) N(u)`. Items 1 ⇔ 2 ⇔ 3 are the cited library and PDE statements; item 4
and the norm comparison are owned here, through `TemperedDistribution.laplacian_eq_fourierMultiplierCLM`
(multiplier `−4π²‖ξ‖²`). *Needs:* Mathlib `TemperedDistribution.MemSobolev`,
`TemperedDistribution.memSobolev_iff_exists_smulLeftCLM_fourier`,
`TemperedDistribution.laplacian_eq_fourierMultiplierCLM`; PDE §1.3; Tau Ceti `TauCeti.Wkp`.

**Checks.**

- `u = e^{−π‖x‖²}`: `𝓕u = u`, `Δu = (4π²‖x‖² − 2πd)u`, and all four conditions hold.
- `d = 1`, `u = 1_{[−1,1]}`: `𝓕u(ξ) = sin(2πξ)/(πξ)` decays like `1/|ξ|`, so `ξ²𝓕u ∉ L²`; none of the
  conditions holds (the distributional second derivative is `δ_{−1}' − δ_1'`).
- The `2π` witness: for `u = e^{−πx²}` on `ℝ`, `‖u‖² = 2^{−1/2}`, `‖u''‖² = 3π²·2^{−1/2}` while
  `‖ξ²𝓕u‖² = 3·2^{−1/2}/(16π²)`, so `‖Δu‖ = 4π²‖ξ²𝓕u‖`; a model with multiplier `‖ξ‖²` is off by `4π²`.

### 4.2 The free Laplacian

Let `H₀` be QuantumFoundations §8.2's free Hamiltonian `−Δ/(2m)` at `m = 1/2`, that is `−Δ` on
`L²(ℝ^d)` with domain `H²(ℝ^d)` (4.1): it is self-adjoint with cores `𝒮(ℝ^d)` and `C_c^∞(ℝ^d)`,
`𝓕H₀𝓕⁻¹ = M_{4π²‖ξ‖²}`, `σ(H₀) = σ_ac(H₀) = [0, ∞)` and `σ_sc(H₀) = σ_pp(H₀) = ∅`. By 1.1's
transport law and SA-E47, `P_{H₀}(B) = 𝓕⁻¹ M_{1_B(4π²‖ξ‖²)} 𝓕` and
`μ_ψ(B) = ∫ 1_B(4π²‖ξ‖²) |𝓕ψ(ξ)|² dξ`. Prove (teschl line 7137–7143, (7.26), p. 168):

- `H₀ ≥ 0`, and its form domain in the sense of UO-D06 is
  `H¹(ℝ^d) = {u ∈ L² : (1 + ‖ξ‖²)^{1/2} 𝓕u ∈ L²}` (`TemperedDistribution.MemSobolev 1 2`), with form
  `q(u) = ‖H₀^{1/2} u‖² = 4π² ∫ ‖ξ‖² |𝓕u(ξ)|² dξ = Σⱼ ‖∂ⱼu‖²`;
- `σ_ess(H₀) = [0, ∞)`: `[0, ∞)` has no isolated points, so `H₀` has no discrete spectrum (UO-C02).

Route: `H₀^{1/2} = 𝓕⁻¹ M_{2π‖ξ‖} 𝓕` by the unbounded calculus of the multiplier (UO-A07, UO-D06's
square-root domain), `𝓕(∂ⱼu)(ξ) = 2πi ξⱼ 𝓕u(ξ)` and Plancherel. UnboundedOperators UO-E06 is the case
`d = 3`. *Needs:* QuantumFoundations §8.2; 1.1, 4.1; UnboundedOperators UO-A07, UO-C02, UO-D06;
SelfAdjointSpectralTheory SA-E47; Mathlib `TemperedDistribution.MemSobolev`,
`MeasureTheory.Lp.fourierTransformₗᵢ`.

**Checks.**

- `d = 1`, `ψ = e^{−πx²}`: `dμ_ψ/dλ = e^{−λ/(2π)}/(2π√λ)` on `(0, ∞)`, of total mass
  `(2π)^{−1}·Γ(1/2)·(2π)^{1/2} = 2^{−1/2} = ‖ψ‖²`, the `n = 1` case of QuantumFoundations §8.2's
  density `½(2π)^{−n} λ^{n/2−1} ∫_{S^{n−1}} |𝓕ψ(√λ ω/(2π))|² dω`.
- Form normalisation: for `u = e^{−πx²}` on `ℝ`, `q(u) = ‖u'‖² = 4π² ∫ x² e^{−2πx²} dx = π/√2` and
  `‖u‖² = 1/√2`, Rayleigh quotient `π ≥ 0 = inf σ(H₀)`; a form `∫ ‖ξ‖² |𝓕u|²` without the factor
  `4π²` would give `1/(4π√2)`.
- `d = 0` is excluded: `ℝ⁰` is a point, `L² = ℂ` and `−Δ = 0`, so `σ = σ_pp = {0}`, `σ_ac = ∅` and
  `σ_ess = ∅` (`0` is an isolated eigenvalue of multiplicity `1`), so the essential-spectrum clause fails.
- Agreement with PDE §6.3 (F26): on real functions, `−H₀` is the generator of the heat semigroup
  on `L²(ℝ^d)` (domain `{u : Δu ∈ L²} = H²`), and at `d = 3` `H₀` is UO-E06's operator with the same
  `C_c^∞` core.

### 4.3 Local compactness

Say a measurable `V : ℝ^d → ℂ` **vanishes at infinity** when for every `ε > 0` there is `R` with
`|V| ≤ ε` almost everywhere outside the ball `B_R` (teschl line 7213–7215).

- **Linear structure.** If `V` and `W` vanish at infinity and `c ∈ ℂ`, then `V + W` and `cV`
  vanish at infinity: for `ε > 0` take the radii of `V` and `W` for `ε/2` and their maximum.
- **Bounded support.** An essentially bounded `V` vanishing almost everywhere outside a bounded set
  vanishes at infinity.
- **Bounded multipliers.** If `V` vanishes at infinity and `W` is essentially bounded, `VW`
  vanishes at infinity (radius of `V` for `ε/(1 + ess sup |W|)`).

Prove: if `V ∈ L^∞` vanishes at infinity then
`M_V (H₀ + 1)⁻¹` and `(H₀ + 1)⁻¹ M_V` are compact (teschl line 7213–7228, Lemma 7.11, p. 170). Route: with
`V_R = V·1_{B_R}` and `f_R(ξ) = (4π²‖ξ‖² + 1)⁻¹ 1_{‖ξ‖ ≤ R}`, `M_{V_R} 𝓕⁻¹M_{f_R}𝓕` is the integral
operator with kernel `V_R(x) (𝓕⁻¹f_R)(x − y)`, whose Hilbert–Schmidt energy in any Hilbert basis is
`‖V_R‖₂² ‖f_R‖₂² < ∞` (Parseval in the second variable and Plancherel), so it is compact (OperatorIdeals
OI-C14, Tau Ceti `ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top`), and it
converges in norm (Mathlib `isCompactOperator_of_tendsto`); the second product is the adjoint of
the first for `conj V`.

Consequently `M_V` is `H₀`-compact in the sense of UnboundedOperators UO-E04, whose definition
uses the point `i`: `dom H₀ ⊆ L²(ℝ^d) = dom M_V` since `M_V` is bounded, and

    M_V (H₀ − i)⁻¹ = M_V (H₀ + 1)⁻¹ [I + (1 + i)(H₀ − i)⁻¹]

is a compact operator composed with a bounded one (Mathlib `IsCompactOperator.comp_clm`). The
identity is the resolvent identity of Tau Ceti `LinearPMap.resolvent_sub_resolvent` at
`λ = −1`, `μ = i`, where `R(λ) = (λ − H₀)⁻¹`, so `R(−1) = −(H₀ + 1)⁻¹` and `R(i) = −(H₀ − i)⁻¹`;
both points lie in the resolvent set because `H₀ ≥ 0` is self-adjoint. *Needs:* 4.2;
QuantumFoundations §8.2; OperatorIdeals OI-C14; UnboundedOperators UO-E04; Tau Ceti
`ContinuousLinearMap.hilbertSchmidtEnergy`,
`ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top`,
`LinearPMap.resolvent_sub_resolvent`; Mathlib
`isCompactOperator_of_tendsto`, `IsCompactOperator.comp_clm`.

**Checks.**

- `V = 1_{B_1}` and `V = (1 + ‖x‖²)^{−1/2}` vanish at infinity; `V = cos x₁` does not.
- Sums: outside `B_R` with `R ≥ 1`, `|1_{B_1} + (1 + ‖x‖²)^{−1/2}| ≤ (1 + R²)^{−1/2}`, so the sum
  vanishes at infinity with radius `max(1, √(ε^{−2} − 1))` for `0 < ε < 1`; the converse fails, since
  `cos x₁ + (−cos x₁) = 0` vanishes at infinity while neither summand does.
- `V = 1_{⋃ₙ [n, n + n^{−2}]}` on `ℝ` is in `L¹ ∩ L^∞` but does not vanish at infinity
  (`|V| = 1` on sets of positive measure arbitrarily far out).
- `V = 1` (not vanishing): `(H₀ + 1)⁻¹` is not compact, since its spectrum is `[0, 1]`, uncountable,
  whereas a compact self-adjoint operator has countable spectrum accumulating only at `0`.
- Change of resolvent point, computed on a spectral value `s ≥ 0` of `H₀`: at `s = 0` the left
  side `(0 − i)⁻¹` and the right side `1·(1 + (1 + i)/(−i))` both equal `i`; at `s = 1` both equal
  `(1 + i)/2`. The bracket has modulus `(s + 1)/(s² + 1)^{1/2} ≤ √2`. The sign slip
  `I − (1 + i)(H₀ − i)⁻¹` would give `2 − i` at `s = 0`.

### 4.4 Schrödinger operators with bounded potentials

For measurable real `V` with `ess sup |V| < ∞`, define `H_V := H₀ + M_V` on `dom H₀ = H²(ℝ^d)`. Prove:

- `H_V` is self-adjoint (SA-C54), `H_V ≥ ess inf V` and `σ(H_V) ⊆ [ess inf V, ∞)` (2.2, 2.1;
  teschl line 5704–5711, Theorem 6.4, p. 135, with relative bound `0`);
- `C_c^∞(ℝ^d)` and `𝒮(ℝ^d)` are cores of `H_V`; equivalently `−Δ + V` is essentially self-adjoint
  on each (2.2 with the cores of `H₀` from QuantumFoundations §8.2; teschl line 7095–7136,
  Theorem 7.8 and Lemma 7.9, p. 168, for those cores; rs2 §X.2);
- `σ_ac(H_V)`, `σ_sc(H_V)`, `σ_pp(H_V)` are defined by 1.4 and satisfy the union formula of UO-C03;
- if `V` vanishes at infinity, `M_V` is `H₀`-compact in the sense of UO-E04 (4.3, after its change
  of resolvent point) and `σ_ess(H_V) = [0, ∞)` (UO-E04, 4.2; teschl line 9578–9589, Theorem 10.2,
  p. 222, whose hypothesis `V ∈ L^∞_∞` is this clause's decay; cfks87 Ch. 1).

Every clause but the last holds for every bounded real `V`; Theorem 10.2 of teschl covers only the
decaying case. In dimension `d = 3` the self-adjointness on `H²(ℝ³)` and the `C_c^∞(ℝ³)` core are
the case `V₂ = 0`, `V_∞ = V` of UnboundedOperators UO-E06, which also gives the relative
compactness of the last clause when `V` vanishes at infinity; this section extends those clauses
to every `d ≥ 1` and adds the lower bound and the Schwartz core. *Needs:* 2.1, 2.2, 4.2, 4.3;
QuantumFoundations §8.2; SelfAdjointSpectralTheory SA-C54; UnboundedOperators UO-C03, UO-E04,
UO-E06 (for the three-dimensional comparison).

**Checks.**

- `V = c`: `H_V = H₀ + c`, `σ = [c, ∞)`, the lower bound `ess inf V = c` is attained as `inf σ`.
  For `c = 1` the potential does not vanish at infinity and `σ_ess(H_V) = [1, ∞) ≠ [0, ∞)`: the
  first three clauses hold (bounded perturbation), the decaying clause does not apply.
- `d = 1`, `V = −1_{[−1,1]}` (vanishes at infinity): `σ_ess = [0, ∞)` and there is an eigenvalue
  `E = −κ²` with `k tan k = κ`, `k² + κ² = 1`, numerically `k ≈ 0.739`, `κ ≈ 0.674`, `E ≈ −0.454`,
  inside `[ess inf V, 0) = [−1, 0)`.
- `V = 1_{B_1}` in `d = 3`: `V ≥ 0` gives `σ ⊆ [0, ∞)`, and `σ_ess = [0, ∞)` gives `σ = [0, ∞)`.
- The ownership boundary with UO-E06: for `d = 3` and `V = cos x₁`, the decomposition `V₂ = 0`,
  `V_∞ = V` puts `V` in UO-E06, which gives the same domain `H²(ℝ³)` and the same `C_c^∞` core as
  this section; for `d = 4` and the same `V`, UO-E06 does not apply (it is stated on `ℝ³` only)
  while this section does, with `σ(H_V) ⊆ [−1, ∞)`.

### 4.5 Quasi-periodic trigonometric potentials

Fix `l ≥ 1`, basic frequencies `ω₁, …, ω_l ∈ ℝ^d`, `Q ∈ ℕ`, and coefficients `V_n ∈ ℂ` for
`n ∈ ℤ^l` with `max |n_j| ≤ Q` and `V_{−n} = conj(V_n)`. With `θ_n := Σ n_j ω_j` (so
`θ_{−n} = −θ_n`), put `V(x) := Σ_n V_n e^{i⟨θ_n, x⟩}` (kps26 line 26–39). Prove: `V` is real, smooth
and bounded with `‖V‖_∞ ≤ Σ |V_n|`, so 4.4 applies: `−Δ + V` is self-adjoint on `H²(ℝ^d)`, essentially
self-adjoint on `C_c^∞` and `𝒮`, and `σ(−Δ + V) ⊆ [−Σ |V_n|, ∞)`. *Needs:* 4.4.

**Checks.**

- `d = 1`, `l = 2`, `ω = (1, √2)`, `V_{±e₁} = V_{±e₂} = 1/2`: `V(x) = cos x + cos(√2 x)`, real,
  `|V| ≤ 2`, `ess inf V = −2` (approached, never attained), so `σ ⊆ [−2, ∞)`.
- Without conjugate symmetry: `V_{e₁} = V_{−e₁} = i` gives `V = 2i cos x`, not real.
- Without `θ_{−n} = −θ_n` (arbitrary frequencies per index): `θ_{e₁} = 1`, `θ_{−e₁} = 2`,
  `V_{±e₁} = 1/2` give `(e^{ix} + e^{2ix})/2`, not real; the linear frequency map is what makes the
  conjugate-symmetry hypothesis sufficient.

### Examples

The conclusion of Karpeshina–Parnovski–Shterenberg's theorem, `[λ*, ∞) ⊆ σ_ac(−Δ + V)` for a
quasi-periodic `V` of 4.5 with `d ≥ 2`, `l > d` and frequencies in a full-measure set (kps26 line
47–50, Theorem 1.1), is the statement `Set.Ici λ* ⊆ σ_ac(H_V)` in this roadmap's vocabulary, and the
interval criterion 1.5 reduces it to positivity of absolutely continuous mass on every open
subinterval. That theorem is not a target.

### Dependencies

Layers 1 and 2; QuantumFoundations §8.2; Mathlib Sobolev, Fourier and compact-operator APIs; PDE
§1.3; UnboundedOperators UO-A07, UO-C02, UO-C03, UO-D06, UO-E04, UO-E06; SelfAdjointSpectralTheory
SA-C54, SA-E47; OperatorIdeals OI-C14; Tau Ceti resolvent identity and Hilbert–Schmidt compactness.

## Downstream consumers

- **RelativisticQuantumFieldTheory**: spectral types and Kato–Rosenblum.
- **SpectralManifolds**, **PositiveMass**, **RicciFlow**: the Laplacian of a complete noncompact
  manifold (3.6, 3.7, 3.9).
- Future roadmaps on multidimensional quasi-periodic operators and the Bethe–Sommerfeld property
  (kps26), random covers and spectral gaps of hyperbolic surfaces (hm23), scattering theory of
  Schrödinger operators, heat kernels on complete manifolds, and finite-area hyperbolic surfaces.

## Worked examples

- **Hide and Magee.** For a finite-area noncompact hyperbolic surface `X` and its degree-`n` covers
  `X_n`, the conclusion of hm23 Theorem 1.1 (line 60–66), equality of
  `σ(Δ_{X_n}) ∩ [0, 1/4 − ε)` with `σ(Δ_X) ∩ [0, 1/4 − ε)` with multiplicities, is statable with
  3.6 and 1.4: the multiplicity of an eigenvalue `λ` is `dim ran P_{Δ_X}({λ})`. Corollary 1.3
  (line 104–105), closed surfaces with `λ₁(X_i) → 1/4`, uses 3.7's `λ₁`, equal to `λ₁⁺` and to the
  first positive eigenvalue on a closed connected surface by 3.8.
- **The parabolic cylinder.** For `X = ⟨z ↦ z + 1⟩\ℍ`, 3.6, 3.7 and 3.10 give a self-adjoint
  `Δ_X ≥ 0` with `0 ∉ σ_p` (infinite area: the funnel `y < 1` has infinite area) and
  `[1/4, ∞) ⊆ σ_ess(Δ_X)`.

## Motivation for a future roadmap: finite-area hyperbolic surfaces

For a connected complete hyperbolic surface `X` of finite area, noncompact, the expected
description is `σ_ess(Δ_X) = [1/4, ∞)`, finitely many eigenvalues of finite multiplicity in
`[0, 1/4)` with `0` simple, `ℋ_sc(Δ_X) = 0`, and `Δ_X` purely absolutely continuous with spectrum
`[1/4, ∞)` on the orthogonal complement of its eigenfunctions (lp80 Theorem 2.1 and Corollary 2.2,
line 297–301, and §§4–7; lp76 Ch. 1 and 8; iwaniec02 Ch. 4, 7 and 11). It needs the thick–thin
decomposition of a finite-area surface into a compact core and finitely many standard cusp ends
(through RiemannianGeometry R4's Killing–Hopf classification and FuchsianOrbifolds), the
decomposition principle for the essential spectrum, separation of variables in each cusp, and the
Eisenstein series with their meromorphic continuation; CongruenceSpectralGap §0.6 proves the
congruence case, from AutomorphicSpectralTheory §§4.1–4.4. Layers 1 and 3 supply its vocabulary
and 3.10 its lower inclusion.

## References

- `teschl`: G. Teschl, *Mathematical Methods in Quantum Mechanics, with Applications to Schrödinger
  Operators*, GSM 99, AMS (2009), author's online edition: §2.3 (Theorems 2.12–2.13), §3.3 (Lemmas
  3.14–3.16, 3.19, (3.83)–(3.85)), Lemma 2.24, Corollary 4.6, Theorem 4.10, Lemma 6.3, Theorem 6.4,
  Lemma 6.17, Theorem 7.8, Lemmas 7.9 and 7.11, (7.26), Theorem 10.2, §12.1.
- `bms02`: M. Braverman, O. Milatovic, M. Shubin, *Essential self-adjointness of Schrödinger type
  operators on manifolds*, Russian Math. Surveys 57 (2002), arXiv math/0201231v3: §2, Theorem 2.3,
  Corollary 2.10, Remark 2.12.
- `kato57`: T. Kato, *Perturbation of continuous spectra by trace class operators*, Proc. Japan
  Acad. 33 (1957): Theorem 1, Lemma 2.1.
- `yafaev04`: D. Yafaev, *Lectures on scattering theory*, arXiv math/0403213v1 (2004): Definitions
  1.1–1.3, Theorem 1.4 (Kato–Rosenblum), Theorem 1.8 (Pearson) and Lemma 1.9 (Rosenblum).
- `rosenblum57`: M. Rosenblum, *Perturbation of the continuous spectrum and unitary equivalence*,
  Pacific J. Math. 7 (1957): Theorem 1.6.
- `hm23`: W. Hide, M. Magee, *Near optimal spectral gaps for hyperbolic surfaces*, Ann. of Math. 198
  (2023), arXiv 2107.05292v3: Introduction, Theorem 1.1, Corollary 1.3.
- `kps26`: Yu. Karpeshina, L. Parnovski, R. Shterenberg, *Bethe–Sommerfeld conjecture and absolutely
  continuous spectrum of multi-dimensional quasi-periodic Schrödinger operators*, Ann. of Math. 203
  (2026), arXiv 2010.05881v3: (1.1)–(1.6), Theorem 1.1.
- `lp80`: P. D. Lax, R. S. Phillips, *Scattering theory for automorphic functions*, Bull. AMS 2
  (1980): §2, Theorem 2.1, Corollary 2.2.
- Cited by locator: `pearson78` (D. B. Pearson, *A generalization of the Birman trace theorem*,
  J. Funct. Anal. 28 (1978), 182–186), `rs1` (§VII.2), `rs2` (Ch. IX, §X.2, Theorem X.12), `rs3`
  (§XI.3, Theorems XI.7–XI.8), `kato76` (Ch. V §4.1, Ch. X §4.4), `grigoryan09` (Ch. 4, 11), `gaffney54`,
  `chernoff73`, `strichartz83` (Theorem 2.4), `chavel84` (Ch. I), `iwaniec02` (Ch. 4, 7, 11),
  `lp76` (Ch. 1, 8), `cfks87` (Ch. 1).
