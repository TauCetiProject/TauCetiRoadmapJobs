# Roadmap: complex hessian equations

**Summary.** Build the theory of fully nonlinear elliptic equations of complex Hessian type on compact complex manifolds, in the eigenvalue form used by the modern a priori estimates. A real (1,1)-form `α` has an eigenvalue vector `λ[α] ∈ ℝⁿ` relative to a Hermitian metric `ω_X`, and the equation reads `f(λ[χ + i∂∂̄φ]) = c·e^F` for a symmetric, elliptic, positively homogeneous function `f` on an admissible cone `Γ`. The roadmap develops four things. First, the pointwise calculus: spectral functions of self-adjoint operators over `ℝ` or `ℂ`, with Lewis's derivative formula and Spruck's concavity theorem, built on the eigenvalue inequalities of Tau Ceti. Second, Gårding's theory of hyperbolic polynomials and the cones `Γ_k`, with admissible pairs, the Guo–Phong–Tong structural condition and its examples. Third, the equation on a compact Hermitian manifold and the comparison principle, giving uniqueness. Fourth, the global theory on compact Kähler manifolds: Yau's solution of the complex Monge–Ampère equation by the continuity method (Moser iteration, the Aubin–Yau second-order estimate and Calabi's third-order estimate), the uniform exponential integrability of quasi-plurisubharmonic functions, and the sharp `L^∞` estimates of Guo, Phong and Tong for every admissible pair satisfying the structural condition, on fixed and on degenerating backgrounds.

## Scope and ownership

This roadmap owns:

- eigenvalues of a Hermitian form relative to an inner product, the differentiability of Ky Fan sums at a spectral gap, spectral functions of self-adjoint operators over `RCLike 𝕜` with their first derivative and its continuity, the convexity of spectral domains, the concavity and ellipticity of spectral functions, and the determinant and Euler identities for their derivatives (Layer 1). The real symmetric case is the same statement at `𝕜 = ℝ` and is the Caffarelli–Nirenberg–Spruck setting.
- elementary symmetric functions with the Newton and Maclaurin inequalities, hyperbolic polynomials and Gårding's theorem, the cones `Γ_k`, the concavity of `σ_k^{1/k}` and of Hessian quotients, admissible cones and admissible pairs, the structural condition, and the standard examples with explicit structural constants (Layer 2).
- the eigenvalue function of a continuous real (1,1)-form on a complex manifold with a Hermitian metric, `i∂∂̄` of a `C²` function, the complex Laplacian, the form and integration identities, admissible functions, the equation with its normalizations, degenerating backgrounds, the energy and the entropy (Layer 3).
- the comparison principle and the uniqueness theorem on compact connected Hermitian manifolds (Layer 4).
- the linear analysis on compact Kähler manifolds that the continuity method and the estimates consume (Layer 5), Yau's theorem (Layer 6), the uniform exponential integrability of quasi-plurisubharmonic functions (Layer 7), and the Guo–Phong–Tong `L^∞` estimates (Layer 8).

No roadmap on the content repository and no board package owns any of these objects. The eigenvalue inequalities that Layer 1 rests on are already in Tau Ceti, where the OperatorTheory targets PolarDecomposition PD-A51–A53 (Courant–Fischer min–max, Loewner monotonicity and Weyl's bound for sorted eigenvalues), PrincipalAngles PA-B32 (von Neumann's trace inequality) and Majorization MAJ-A27 (Ky Fan's maximum principle) are implemented; so are the sub-mean-value inequality for `C²` functions with nonnegative Laplacian and the Sobolev inequality for `C¹` functions on a compact boundaryless Riemannian manifold. They are consumed as the pinned declarations of the Tau Ceti supplier contract, and nothing of them is re-proved here. K3Surfaces §2.1 states and proves, for a complex K3 surface, the equation `(ω + i∂∂̄φ)² = c·V` with `V` a positive volume form, by its own continuity method and estimates. That is the case `n = 2`, `F = log(V/ω²)` of §6.6, where `e^b = c`, after the normalization `sup φ = 0` is replaced by `∫ φ ω² = 0`. Section 6.6 differs in holding in every dimension `n ≥ 1` on every compact connected Kähler manifold, which Layer 8 needs; it does not import K3Surfaces. ComplexComparisonPartII Layer C5.4 owns positive currents and the regularization of plurisubharmonic functions, which are pluripotential objects this roadmap does not build. OptimalTransport Layer 6 owns the real Monge–Ampère equation of transport.

NumberFieldEnumeration §1.1 proves, for nonnegative reals, the case `S_k ≤ S_1^k` of Maclaurin's inequality, by smoothing pairs of coordinates towards their average on a simplex of fixed sum. Section 2.1 differs in comparing every pair `1 ≤ k ≤ l` on the cone `Γ_l`, which contains vectors with negative entries, and on its closure, which contains the closed orthant, and in its Newton and generalized Newton–Maclaurin forms; it does not import NumberFieldEnumeration.

This roadmap leaves:

- to ComplexHessianEquations Part II, two theorems. The first is the existence theorem for the complex Monge–Ampère equation on compact Hermitian manifolds (Tosatti–Weinkove). Its proof uses Cherrier's second- and third-order estimates with torsion, Gauduchon's theorem and the Tosatti–Weinkove `L^∞` argument, none of which the Kähler theory uses. The second is the `L^∞` estimate on compact Hermitian manifolds (Guo–Phong), which compares with the local Dirichlet problem of Caffarelli, Kohn, Nirenberg and Spruck. That Part II also owns the higher differentiability of spectral functions, which no target here uses, and the complex Evans–Krylov estimate. Its introduction states that this roadmap stops at Yau's theorem and the Kähler `L^∞` estimates.
- to PDE, as named supplier contracts below: the interior Schauder estimate for non-divergence equations, the strong maximum principle with variable coefficients, the weak Harnack inequality for supersolutions and the Aleksandrov–Bakelman–Pucci maximum principle.
- to ComplexKahlerGeometry, PseudodifferentialOperators and DifferentialGeometry: the type calculus, Chern connections, Kähler identities, `L²` and Hölder elliptic theory and integration, consumed as stated in the supplier contracts.

Pluripotential theory (Bedford–Taylor products, capacities, weak solutions), viscosity solutions, subsolution theory, Kähler–Einstein metrics and the Kähler–Ricci flow are outside this roadmap.

## Conventions

- `X` is a compact connected complex manifold of complex dimension `n ≥ 1` without boundary, Hausdorff and second countable, with the complex structure `J` and its canonical complex orientation (ComplexManifolds Milestone 2). Connectedness is a standing hypothesis of every global theorem. On two components uniqueness fails, and existence fails for a single constant (see the Checks of Layers 4 and 6).
- A real (1,1)-form is a real two-form `α` with `α(Ju, Jv) = α(u, v)`. A Hermitian metric is a smooth real (1,1)-form `ω` with `ω(v, Jv) > 0` for `v ≠ 0`, that is, `TauCeti.SmoothTwoForm.Compatible`. Its Riemannian metric is `g(u, v) = ω(u, Jv)` and its Hermitian inner product is `h(u, v) = g(u, v) + i·ω(u, v)` on `(TX, J)`, conjugate-linear in the first slot (the ComplexKahlerGeometry conventions). On `ℂⁿ` the standard metric is `ω = Σ dx_j ∧ dy_j = (i/2) Σ dz_j ∧ dz̄_j`. A Hermitian metric is Kähler when `dω = 0`.
- For a real (1,1)-form `α` put `H_α(u, v) = α(u, Jv) + i·α(u, v)`, a Hermitian form on `(T_xX, J)`. The relative eigenvalue vector `λ[α] = λ_ω[α] ∈ ℝⁿ` is the decreasingly ordered eigenvalue vector of the `h`-self-adjoint operator representing `H_α`, equivalently of the `g`-self-adjoint endomorphism `A` with `α(u, Jv) = g(Au, v)`, viewed as a complex-linear map. In a holomorphic frame with `ω = i Σ g_{k̄j} dz^j ∧ dz̄^k` and `α = i Σ a_{k̄j} dz^j ∧ dz̄^k`, the vector `λ[α]` is the spectrum of `g⁻¹a`. **Witness:** on `ℂⁿ` with the standard `ω`, `i∂∂̄|z|² = 2ω`, so `λ[i∂∂̄|z|²] = (2, …, 2)`. Relative to the metric `ω' = i Σ dz_j ∧ dz̄_j = 2ω`, which is how the sources normalize the Euclidean metric, the same form has `λ' = (1, …, 1)`. Every theorem depends only on the pair `(α, ω)`.
- For a `C²` function `u`, `i∂∂̄u` is the continuous real (1,1)-form given in holomorphic coordinates by `(i∂∂̄u)(v, w) = (1/2)(D²u(Jv, w) − D²u(v, Jw))`, that is, `i Σ u_{jk̄} dz^j ∧ dz̄^k`. **Witness:** `i∂∂̄(x₁²) = dx₁ ∧ dy₁`. The complex Laplacian is `Δ_ω u = tr_ω(i∂∂̄u) = Σ_j λ_j[i∂∂̄u]`. On a Kähler manifold `2Δ_ω u` is DifferentialGeometry's `laplaceBeltrami` `div grad` of `g`, and `Δ_d u = −2Δ_ω u` for ComplexKahlerGeometry's nonnegative Hodge Laplacian. **Witness:** on `ℂⁿ`, `Δ_ω|z|² = 2n` and the Euclidean `Δ|z|² = 4n`.
- Top forms: `ω^n = n!·dvol_g`, and `V = ∫_X ω_X^n`. For a real (1,1)-form `α`, `α^k ∧ ω^{n−k} = (k!(n−k)!/n!)·σ_k(λ[α])·ω^n`. **Witness:** for `n = 2` and `λ[α] = (λ₁, λ₂)`, `α ∧ ω = ((λ₁ + λ₂)/2)·ω²` and `α² = λ₁λ₂·ω²`.
- `σ_k` is the `k`-th elementary symmetric polynomial (`σ_0 = 1`, `σ_k = 0` for `k > n`), `σ_{k;i}(λ) = σ_k(λ)|_{λ_i = 0}`, and `S_k = σ_k / binom(n, k)`. Then `Γ_k = {λ : σ_1(λ) > 0, …, σ_k(λ) > 0}`, so `Γ_n` is the open positive orthant and `Γ_1` the half-space `σ_1 > 0`; `e = (1, …, 1)`.
- `χ_φ = χ + i∂∂̄φ`, and `ω_{t,φ} = ω_t + i∂∂̄φ` with `ω_t = χ + t·ω_X`. The entropy is `Ent_p(F) = V⁻¹ ∫_X e^{nF}|F|^p ω_X^n` for `p > 0`. Guo–Phong–Tong's `‖e^{nF}‖_{L¹(log L)^p}` equals `n^p·V·Ent_p(F)` (gpt2023 line 82–83).
- Dictionaries. pss2012 writes `ω_0 + (i/2)∂∂̄φ` and `Δ = g^{pq̄}∂_p∂_q̄` with `ω_0 = (i/2) Σ g_{k̄j} dz^j ∧ dz̄^k`. Its `φ` is twice ours and its `Δ` is half of `Δ_ω`. Its `tr h = n + Δφ` equals our `tr_ω ω_φ = n + Δ_ω φ`. Its Ricci form `Ricci(ω) = −(i/2)∂∂̄ log ω^n` is half of ours for the same form `ω`, `Ric_PSS = (1/2)·Ric`, consistently with its `(i/2)` normalization of coefficients, so a Kähler–Einstein constant doubles in the dictionary: `Ric_PSS = λ·ω` there is `Ric = 2λ·ω` here. **Witness:** for `ω = i∂∂̄ log(1 + |z|²)` on `ℂP¹`, `Ric = 2ω` (§6.1) while `Ric_PSS = ω`, since `ω = (i/2)·2(1 + |z|²)^{−2} dz ∧ dz̄` and `−(i/2)∂∂̄ log(2(1 + |z|²)^{−2}) = i∂∂̄ log(1 + |z|²)`. dinew-kolodziej2014 writes `dd^c = 2i∂∂̄`. gpt2023 (5.4) writes the Hessian equation without the factor `binom(n, k)`, so its constant `c` is ours divided by `binom(n, k)^{1/k}`.
- Spaces: `C^{k,α}(X)` is PseudodifferentialOperators §5.4's Hölder space of the trivial real line bundle (`k ≥ 0`, `0 < α < 1`). Solutions are `C²` unless stated, and "smooth" means `C^∞`. Coefficients are real; operators act on `RCLike 𝕜` inner product spaces.

## Exact supplier contracts

### From Mathlib

Read at commit `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`.

- `LinearMap.IsSymmetric.eigenvalues`, `LinearMap.IsSymmetric.eigenvalues_antitone`, `LinearMap.IsSymmetric.eigenvectorBasis`, `LinearMap.IsSymmetric.hasEigenvalue_eigenvalues` and `LinearMap.IsSymmetric.det_eq_prod_eigenvalues` (`Mathlib/Analysis/InnerProductSpace/Spectrum.lean`). These give the eigenvalues of a self-adjoint operator on a finite-dimensional inner product space over `RCLike 𝕜`, sorted decreasingly as `Fin n → ℝ` under `Module.finrank 𝕜 E = n`, with an orthonormal eigenbasis and `det = ∏ λ_i`. No perturbation theory is included.
- `Matrix.IsHermitian.eigenvalues`, `Matrix.IsHermitian.spectral_theorem`, `Matrix.IsHermitian.det_eq_prod_eigenvalues` and `Matrix.IsHermitian.trace_eq_sum_eigenvalues` (`Mathlib/Analysis/Matrix/Spectrum.lean`), the matrix form of the same.
- `MvPolynomial.esymm` and `Multiset.esymm` (`Mathlib/RingTheory/MvPolynomial/Symmetric/Defs.lean`) for `σ_k`; `Polynomial.card_roots_le_derivative` (`Mathlib/Analysis/Calculus/LocalExtr/Polynomial.lean`), Rolle's theorem for real polynomials; `Real.geom_mean_le_arith_mean_weighted` (`Mathlib/Analysis/MeanInequalities.lean`), the weighted AM–GM inequality.
- `HasStrictFDerivAt.toOpenPartialHomeomorph` (`Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean`): the inverse function theorem in Banach spaces, for a map with an invertible strict derivative between complete normed spaces, used for openness in the continuity method. The implicit function theorem is not consumed; Mathlib's `HasStrictFDerivAt.implicitFunction` requires a finite-dimensional target and does not apply to Hölder spaces.
- `ConvexOn.map_integral_le` (`Mathlib/Analysis/Convex/Integral.lean`): Jensen's inequality for a convex continuous function on a closed convex set and a probability measure, used in §7.1 for the exponential of a logarithmic potential and in §8.5 for the exponential of `c(−φ)^N − nF` against `V⁻¹e^{nF} ω_X^n`.
- `ArzelaAscoli.isCompact_closure_of_isClosedEmbedding` (`Mathlib/Topology/UniformSpace/Ascoli.lean`), for closedness in the continuity method.
- `ConcaveOn`, `HasFDerivAt`, `ContDiffOn`, `IsLocalMax`, and complex manifolds as `IsManifold` over `ℂ`.

### From Tau Ceti

Read at commit `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

- `TauCeti.SmoothTwoForm` (`TauCeti/Geometry/Manifold/TwoForm/Basic.lean`): the abbreviation `SmoothForm I M ℝ 2` of the generic smooth differential-form carrier `TauCeti.SmoothForm` (`TauCeti/Geometry/Manifold/DifferentialForm/Smooth.lean`), a smooth section of continuous alternating real two-forms on the tangent fibres, with its bilinear view.
- `TauCeti.SmoothTwoForm.Invariant`, `TauCeti.SmoothTwoForm.Tames` and `TauCeti.SmoothTwoForm.Compatible` (`TauCeti/Geometry/Symplectic/Manifold/TwoForm.lean`). They state `J`-invariance `form x (J v) (J w) = form x v w`, tameness `0 < form x v (J v)` for `v ≠ 0`, and their conjunction. Real (1,1)-forms are the invariant two-forms and Hermitian metrics are the compatible ones. Closedness and integrability are not part of these predicates.
- `TauCeti.riemannianVolume` (`TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean`), the orientation-free Riemannian measure, compared with `ω^n/n!` in Layer 3.
- The variational inequalities for sorted eigenvalues, stated for a symmetric `T : E →ₗ[𝕜] E` on a finite-dimensional inner product space over `RCLike 𝕜` with `finrank 𝕜 E = n`, eigenvalues `λ_0(T) ≥ … ≥ λ_{n−1}(T)` in Mathlib's decreasing order (indexed from `0`; the text below indexes from `1`). `LinearMap.IsSymmetric.eigenvalues_eq_iSup_iInf_re_inner` (`TauCeti/Analysis/InnerProductSpace/CourantFischer.lean`) is the Courant–Fischer formula: `λ_k(T)` is the supremum, over subspaces of dimension `k + 1`, of the infimum of `Re⟨T x, x⟩` over their unit vectors. `LinearMap.IsSymmetric.eigenvalue_mono` (same file) is Loewner monotonicity: if `Re⟨T x, x⟩ ≤ Re⟨S x, x⟩` for every `x`, then `λ_k(T) ≤ λ_k(S)` for every `k`. `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le` and its operator-norm form `LinearMap.IsSymmetric.abs_eigenvalues_sub_le_opNorm` (same file) are Weyl's bound: if `‖(T − S)x‖ ≤ ε‖x‖` for every `x`, then `|λ_k(T) − λ_k(S)| ≤ ε` for every `k`, so `λ` is Lipschitz with constant `1` for the operator norm. These are consumed for the operators `A_a` of Layer 1 and the eigenvalue functions of Layer 3.
- `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues` (`TauCeti/Analysis/InnerProductSpace/HoffmanWielandt/Basic.lean`), von Neumann's trace inequality: `Re tr(T ∘ S) ≤ Σ_i λ_i(T)λ_i(S)` for symmetric `T, S`, both lists decreasing. It is consumed in both directions: applied to `T` and `−S`, whose decreasing list is `−λ_{n+1−i}(S)`, it gives the lower bound `Re tr(TS) ≥ Σ_i λ_i(T)λ_{n+1−i}(S)`, the pairing of the largest eigenvalues of `T` with the smallest of `S`.
- `LinearMap.IsSymmetric.sum_re_inner_apply_self_le_sum_eigenvalues` (`TauCeti/Analysis/InnerProductSpace/KyFan.lean`), Ky Fan's maximum principle: for a symmetric `T` and an orthonormal family `w_1, …, w_m`, `Σ_i Re⟨T w_i, w_i⟩` is at most the sum of the `m` largest eigenvalues of `T`. Evaluated on the top `m` eigenvectors it is an equality, so the sum of the `m` largest eigenvalues is the maximum of `Re tr(PT)` over orthogonal projections `P` of rank `m`, the form used in §1.2. The singular-value Ky Fan sums of the same file (`LinearMap.kyFanSum`) are a different function and are not used.
- `TauCeti.le_setAverage_ball_of_laplacian_nonneg` (`TauCeti/Analysis/InnerProductSpace/Harmonic/MeanValue/Basic.lean`), the sub-mean-value inequality: a function `C²` on a ball of a finite-dimensional real inner product space, continuous on its closure, with nonnegative Laplacian on the ball, is at most its ball average at the centre.
- `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add` (`TauCeti/Geometry/Manifold/Riemannian/Sobolev.lean`), the Sobolev inequality on a closed manifold: on a compact manifold without boundary, modelled on a finite-dimensional real space of dimension `m > 2`, with a continuous Riemannian metric, there is `C` with `‖u‖_{L^{2m/(m−2)}} ≤ C(‖∇u‖_{L²} + ‖u‖_{L²})` for every `C¹` function `u`, the norms taken for `TauCeti.riemannianVolume`. It is applied to the real manifold underlying `X` (ComplexManifolds Milestone 1) with the metric `g` of `ω`, at `m = 2n` for `n ≥ 2`, where the exponent is `2n/(n − 1)`, and only to `C¹` functions; its extension to `H¹` is not used.

### From TauCetiRoadmap.ComplexManifolds

Milestones 1 and 2: real restriction of scalars, atlas transport and the canonical orientation of a complex manifold, used for integration of top forms.

### From TauCetiRoadmap.ComplexKahlerGeometry

- K1: the type decomposition, conjugation and the complex scalar action on the generic form carrier, and the metric conventions above.
- K2: `∂`, `∂̄` on smooth forms with `∂̄² = 0` and the Leibniz rules; this roadmap extends `i∂∂̄` to `C²` functions and proves agreement on smooth functions.
- K4: the Chern connection of a Hermitian holomorphic bundle, its curvature of type (1,1) and the local formula `A = h⁻¹∂h`, applied to `T^{1,0}X` and to `K_X^{-1}` for the Ricci form.
- K5a: the Laplace-type elliptic theory on compact boundaryless manifolds. This covers the self-adjoint realization of a formally self-adjoint nonnegative Laplace-type operator, its smooth spectral decomposition, the finite-dimensional smooth kernel and `H^s` regularity.
- K6.0: Kähler metrics as closed fundamental forms, holomorphic coordinates with `h_{ij} = δ_{ij} + O(|z|²)` at a point, and `Δ_d = 2Δ_∂̄`.

### From TauCetiRoadmap.PseudodifferentialOperators

- §5.4: the Banach spaces `C^{k,α}` of sections of a bundle over a compact base, with finite-atlas norms, independence of choices, products and composition with smooth maps.
- §6.2: Schauder regularity for smooth-coefficient elliptic operators. A distribution `u` with `Pu` locally `C^{k,α}` is locally `C^{k+m,α}`, with interior and global estimates. It also gives Fredholm theory with kernel, cokernel and index for `P : H^{s+m} → H^s`, and smoothness of solutions of `Pu = 0` and `P*u = 0`.

### From TauCetiRoadmap.DifferentialGeometry

Layers 0–1 (forms, wedge, `d`), Layer 5 (integration of top forms and Stokes' theorem on boundaryless compact oriented manifolds, `integralTopForm_mextDeriv_eq_zero`), and Layer 12 (`laplaceBeltrami`, `riemannianVolumeForm`, `integral_mul_laplaceBeltrami`).

### From TauCetiRoadmap.PDE

- §3.2 (C13), the strong maximum principle. The contract consumed is the classical form for `C²` functions and non-divergence operators `a^{ij}∂_i∂_j + b^i∂_i` with bounded coefficients and uniformly positive definite symmetric `a` on a connected bounded open set (gilbarg-trudinger2001 Theorem 3.5): a function with `Lu ≥ 0` attaining its maximum inside is constant. It is applied on chart balls with compact closure, where a continuous positive definite coefficient is uniformly elliptic and bounded.
- §3.2 (C13), the Aleksandrov–Bakelman–Pucci estimate: for `u ∈ W^{2,m}_loc(Ω) ∩ C(Ω̄)` on a bounded open `Ω ⊂ ℝ^m` with `a^{ij}∂_i∂_j u ≥ f` almost everywhere, `a` measurable, symmetric and positive definite, `D* = (det a)^{1/m} > 0` and `f/D* ∈ L^m(Ω)`, `sup_Ω u ≤ sup_{∂Ω} u⁺ + C(m)·diam(Ω)·‖f⁻/D*‖_{L^m(Γ⁺)}`, where `Γ⁺` is the upper contact set of `u` (gilbarg-trudinger2001 Theorem 9.1). It is consumed for `u ∈ C²` on a neighbourhood of `Ω̄`, `a` continuous and positive definite on `Ω̄` and `f = a^{ij}∂_i∂_j u`, so that `f/D*` is bounded on `Ω̄` and lies in `L^m(Ω)`; applied to `v = u − sup_{∂Ω} u`, which has the same `f` and the same contact set and `sup_{∂Ω} v⁺ = 0`, it gives `sup_Ω u ≤ sup_{∂Ω} u + C(m)·diam(Ω)·‖f⁻/D*‖_{L^m(Γ⁺)}`, the form used in §8.5.
- §5.6 (E25), the interior Schauder estimate for non-divergence equations: with `C` depending only on `m, α, λ, Λ` and a bound `M ≥ r^α[a]_{α; B_{2r}}`, every `C²` solution of `−a^{ij}∂_i∂_j u = f` on `B(x₀, 2r)` with `λ|ξ|² ≤ a^{ij}ξ_iξ_j ≤ Λ|ξ|²`, `a, f ∈ C^{0,α}`, satisfies `[D²u]_{α; B_r} ≤ C(r^{−2−α} sup_{B_{2r}}|u| + r^{−α} sup_{B_{2r}}|f| + [f]_{α; B_{2r}})` (gilbarg-trudinger2001 Theorem 6.2). On the ball `B_r` the derivatives `Du` and `D²u` are bounded by `C(r)(sup_{B_r}|u| + [D²u]_{α; B_r})`, by Taylor's formula along segments through the centre, which gives the full norm `‖u‖_{C^{2,α}(B_r)} ≤ C'(‖f‖_{C^{0,α}(B_{2r})} + ‖u‖_{C⁰(B_{2r})})` with `C'` depending also on `r`. Sections 5.2 and 6.5 derive the higher-order estimates from it by applying it to derivatives and difference quotients of `u`.
- **Contract `gap:weak-harnack-supersolutions` — PDE §5.4 (E23).** That section must provide the weak Harnack inequality for nonnegative weak supersolutions of divergence-form uniformly elliptic equations with bounded measurable coefficients and a scalar forcing term, in every dimension `m ≥ 1` (gilbarg-trudinger2001 Theorem 8.18). Let `r > 0`, `B_ρ = B(x₀, ρ) ⊂ ℝ^m`, `a` measurable on `B_{4r}` with `λ|ξ|² ≤ a^{ij}ξ_iξ_j` and `|aξ| ≤ Λ|ξ|`, `f ∈ L^q(B_{4r})` with `q` finite, `q ≥ 1` and `q > m/2`, and `u ∈ H¹(B_{4r})` with `u ≥ 0` almost everywhere and `div(a∇u) ≤ f` weakly, that is `∫ a^{ij}∂_j u ∂_i v ≥ −∫ f v` for every `v ∈ H¹_0(B_{4r})` with `v ≥ 0`. Then `r^{−m}‖u‖_{L¹(B_{2r})} ≤ C·(ess inf_{B_r} u + r^{2−m/q}‖f‖_{L^q(B_{4r})})`, with `C` depending only on `m`, `q`, `λ` and `Λ`. The essential infimum is required: on `B_4 ⊂ ℝ²` the function equal to `1` except `u(0) = 0` is the constant weak supersolution for `a = I`, `f = 0`, and an ordinary infimum would give `4π ≤ C·0`. The condition `q ≥ 1` is required when `m = 1`: on `(−4, 4)` the smooth functions `u_ε = (x² + ε²)^{1/2} − ε ≥ 0` solve `u_ε'' = f_ε = ε²(x² + ε²)^{−3/2}` with `inf_{(−1,1)} u_ε = 0` and `‖u_ε‖_{L¹(−2,2)} → 4`, while `‖f_ε‖_{L^{3/4}(−4,4)} = O(ε^{1/3}) → 0` although `3/4 > m/2`; at `q = 1` the forcing norm tends to `2`. This is the supersolution half of Moser's proof of the Harnack inequality that §5.4 plans; its homogeneous case `f = 0` is the pinned `TauCeti.PDE.exists_ae_setAverage_rpow_rpow_inv_le_mul_value`, whose conclusion holds almost everywhere. Required by §5.4, where it is applied with `m = 2n ≥ 2`, a bounded `f`, hence `f ∈ L^q` for every finite `q`, and a continuous `u`, whose essential and ordinary infima on a ball agree.

## How to read the build

Layers 1 and 2 are finite-dimensional. Layer 1 is the calculus of spectral functions over `RCLike 𝕜`, and Layer 2 is the theory of the cones `Γ_k` and of admissible pairs; together they deliver the pointwise theory: Lewis's theorem on the derivative of spectral functions, the concavity of spectral functions, Gårding's theorem and the structural constants of the standard pairs. Layer 3 places the equation on a compact Hermitian manifold, with the eigenvalue function, the form identities and the normalizations. Layer 4 proves the comparison principle and the uniqueness theorem for every concave admissible pair on a compact connected Hermitian manifold. Layer 5 assembles the linear analysis on compact Kähler manifolds from its suppliers: the Kähler Laplacian, Hölder invertibility, the Poincaré and Sobolev inequalities and `L¹` bounds. Layer 6 proves Yau's theorem on compact Kähler manifolds by the continuity method. Layer 7 proves the uniform exponential integrability of quasi-plurisubharmonic functions. Layer 8 proves the Guo–Phong–Tong `L^∞` estimates, first on degenerating backgrounds and for the Monge–Ampère equation, then the energy estimate, the fixed-background estimate and the Hessian corollary. Layers 1–4 need no Kähler hypothesis. Layer 5 onward assumes `dω_X = 0` exactly where the proofs integrate by parts against `ω_X`.

## Layer 1: Eigenvalues and spectral functions

Throughout, `E` is a finite-dimensional inner product space over `𝕜 ∈ {ℝ, ℂ}` (`RCLike 𝕜`) of dimension `n`. `Sym(E)` is the real vector space of self-adjoint operators with the trace inner product `⟨S, T⟩ = Re tr(ST)` and the operator norm, and `S ≤ T` is the Loewner order, `⟨u, (T − S)u⟩ ≥ 0` for all `u`. `λ(T) ∈ ℝⁿ` is Mathlib's decreasingly sorted eigenvalue vector. The variational facts about `λ` are consumed, not re-proved: the Courant–Fischer min–max formula, the monotonicity of `λ` in the Loewner order and Weyl's bound `|λ_i(S) − λ_i(T)| ≤ ‖S − T‖` are `LinearMap.IsSymmetric.eigenvalues_eq_iSup_iInf_re_inner`, `LinearMap.IsSymmetric.eigenvalue_mono` and `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`; von Neumann's trace inequality is `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues`; Ky Fan's maximum principle is `LinearMap.IsSymmetric.sum_re_inner_apply_self_le_sum_eigenvalues` (the Tau Ceti supplier contract above).

### 1.1 Eigenvalues relative to an inner product

Define, for a Hermitian form `a` on `E` (sesquilinear, conjugate-linear in the first slot, `a(v, u) = conj a(u, v)`), the representing operator `A_a ∈ Sym(E)` with `a(u, v) = ⟨u, A_a v⟩`, and the relative eigenvalue vector `λ[a] = λ(A_a)` (szekelyhidi2018 line 17–24; gpt2023 line 62–66; guo-phong2024 line 108–111). Write `a ≤ b` when `b − a` is positive semidefinite, that is, `A_a ≤ A_b`. *Needs:* Mathlib `LinearMap.IsSymmetric.eigenvalues`, `LinearMap.IsSymmetric.eigenvectorBasis`; Tau Ceti `LinearMap.IsSymmetric.eigenvalue_mono`, `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`.

API:

- The map `a ↦ A_a` is a real-linear isometric isomorphism from Hermitian forms onto `Sym(E)`. The inner product itself is sent to the identity, so `λ[⟨·,·⟩] = e`.
- For `t ∈ ℝ` and `s ≥ 0`, `λ[a + t⟨·,·⟩] = λ[a] + t·e`, `λ[s·a] = s·λ[a]`, and `λ[−a]` is the reversal of `−λ[a]`.
- `Σ_i λ_i[a] = tr A_a`, `∏_i λ_i[a] = det A_a`, and `det(Id + t·A_a) = Σ_k σ_k(λ[a])·t^k`.
- Unitary invariance: `λ[a(U·, U·)] = λ[a]` for every unitary `U`. Under a change of inner product `⟨u, v⟩' = ⟨u, Pv⟩` with `P` positive definite, the representing operator becomes `P⁻¹A_a`, which is `⟨·,·⟩'`-self-adjoint.
- In a basis with Gram matrix `g` and coefficient matrix `(a_{ij})`, `λ[a]` is the spectrum of `g⁻¹a`, the roots of `det(a − λg) = 0`.
- Monotonicity: `a ≤ b` gives `λ_i[a] ≤ λ_i[b]` for every `i` (`LinearMap.IsSymmetric.eigenvalue_mono`).
- Lipschitz continuity: `|λ_i[a] − λ_i[b]| ≤ ‖A_a − A_b‖` for every `i` (`LinearMap.IsSymmetric.abs_eigenvalues_sub_le_opNorm`), so `λ : Sym(E) → ℝⁿ` is Lipschitz with constant `1` for the sup norm on `ℝⁿ`, and `a ↦ λ[a]` is continuous.

**Checks.**

- On `ℂ²` with `⟨u, v⟩ = 2ū₁v₁ + ū₂v₂` and `a = diag(2, 3)` in the standard basis, `g⁻¹a = diag(1, 3)` and `λ[a] = (3, 1)`. Using the Euclidean inner product instead would give `(3, 2)`, so the reference inner product matters.
- For `a = ⟨·,·⟩` the vector is `e` in every dimension. For `a = 0` it is the zero vector, and `λ[−a]` for `λ[a] = (3, 1)` is `(−1, −3)`, not `(−3, −1)`.
- A non-Hermitian form such as `a(u, v) = ū₁v₂ − ū₂v₁` on `ℂ²` has representing matrix `[[0, 1], [−1, 0]]` with eigenvalues `±i`; it is excluded by the Hermitian hypothesis, and no real `λ[a]` exists.
- `det(Id + tA)` for `A = diag(1, 2, 3)` is `1 + 6t + 11t² + 6t³`, matching `σ_1 = 6`, `σ_2 = 11`, `σ_3 = 6`.
- Monotonicity compares equally indexed sorted eigenvalues: `diag(3, 0) ≤ diag(3, 1)` gives `(3, 0) ≤ (3, 1)`, while the cross pairing `λ_1(diag(3, 0)) ≤ λ_2(diag(3, 1))` fails (`3 > 1`).
- Additivity fails: `λ(diag(1, 0) + diag(0, 1)) = (1, 1)` while `λ(diag(1, 0)) + λ(diag(0, 1)) = (2, 0)`; the eigenvalue map is Lipschitz, not linear.
- The Lipschitz constant `1` is attained: `S = 0`, `T = [[0, ε], [ε, 0]]` has `λ(T) = (ε, −ε)` and `‖T‖ = ε`.

### 1.2 Ky Fan sums and their derivative

Define the Ky Fan sum `κ_m(T) = Σ_{i ≤ m} λ_i(T)` for `T ∈ Sym(E)` and `1 ≤ m ≤ n`, and for `T` with `λ_m(T) > λ_{m+1}(T)` (no condition when `m = n`) the spectral projection `P_T` onto the span of eigenvectors for `λ_1(T), …, λ_m(T)`.

Record the two forms of the supplier inequalities used below. For `F, B ∈ Sym(E)` with eigenvalues `γ_1 ≥ … ≥ γ_n` of `F` and `μ_1 ≤ … ≤ μ_n` of `B`, `Σ_i γ_i μ_i ≤ Re tr(FB) ≤ Σ_i γ_i μ_{n+1−i}`: the upper bound is von Neumann's inequality `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues`, and the lower bound is the same inequality applied to `F` and `−B`, whose decreasing eigenvalue list is `−μ_1 ≥ … ≥ −μ_n` (spruck2005 Lemma 1.5, line 11089–11091, states the lower bound). Ky Fan's maximum principle, `κ_m(T) = max Re tr(PT)` over orthogonal projections `P` of rank `m`, is `LinearMap.IsSymmetric.sum_re_inner_apply_self_le_sum_eigenvalues` evaluated on an orthonormal basis of the range of `P`, with equality at `P = P_T` (lewis1996 line 145–148).

Prove: `κ_m` is convex and `κ_m(S + T) ≤ κ_m(S) + κ_m(T)`, as a maximum of linear functionals. If `λ_m(T) > λ_{m+1}(T)`, then `P_T` is the only rank-`m` orthogonal projection `P` with `Re tr(PT) = κ_m(T)`, and `κ_m` is differentiable at `T` with gradient `P_T`, that is, `dκ_m(T)(H) = Re tr(P_T H)` (lewis1996 Theorem 2.1, line 150–158). Route. In an orthonormal eigenbasis `(e_j)` of `T` ordered by `λ(T)`, `Re tr(PT) = Σ_j λ_j(T)·c_j` with `c_j = ‖P e_j‖² ∈ [0, 1]` and `Σ_j c_j = m`; under the gap this linear form attains `κ_m(T)` only at `c_j = 1` for `j ≤ m`, which puts `e_1, …, e_m` in the range of `P`, so `P = P_T`. For the derivative, `κ_m(T + H) ≥ κ_m(T) + Re tr(P_T H)` by the maximum principle, and `κ_m(T + H) ≤ κ_m(T) + Re tr(P_{T+H} H)` since `T + H` keeps the gap for small `H` (Weyl's bound). Every limit point `P` of `P_{T+H}` as `H → 0` is a rank-`m` projection, by compactness, with `Re tr(PT) = lim κ_m(T + H) = κ_m(T)`, by the continuity of `κ_m` (Weyl's bound); uniqueness gives `P = P_T`, so `P_{T+H} → P_T` and the two bounds agree to first order. *Needs:* Tau Ceti `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues`, `LinearMap.IsSymmetric.sum_re_inner_apply_self_le_sum_eigenvalues`, `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`; Mathlib `LinearMap.IsSymmetric.eigenvectorBasis`.

**Checks.**

- `F = diag(2, 1)`, `B = diag(0, 3)`: `tr(FB) = 3`, the lower bound is `2·0 + 1·3 = 3` and the upper bound is `2·3 + 1·0 = 6`. For `B' = diag(3, 0)`, `tr(FB') = 6` attains the upper bound. The lower bound comes from von Neumann's inequality at `−B = diag(0, −3)`: `tr(F(−B)) = −3 ≤ 2·0 + 1·(−3) = −3`.
- `κ_1(T) = λ_1(T)` and `κ_n(T) = tr T`. For `T = diag(3, 1, 1)` and `m = 1` the gap `3 > 1` gives gradient `diag(1, 0, 0)`; for `m = 2` there is no gap, and `κ_2(T + t·diag(0, 1, −1)) = 4 + |t|` is not differentiable at `t = 0`.
- `κ_1(diag(1, 0) + diag(0, 1)) = 1 ≤ κ_1(diag(1, 0)) + κ_1(diag(0, 1)) = 2`, a strict subadditivity.

### 1.3 Spectral functions and their derivative

Define, for an open set `Ω ⊆ ℝⁿ` invariant under coordinate permutations and a symmetric function `f : Ω → ℝ`, the spectral domain `Sym_Ω(E) = {T ∈ Sym(E) : λ(T) ∈ Ω}`, which is open because `λ` is continuous (Weyl's bound), and the spectral function `F_f(T) = f(λ(T))` on it. Since `f` is symmetric, `F_f(T) = f(μ)` for any ordering `μ` of the eigenvalues of `T`.

Prove Lewis's theorem: `F_f` is differentiable at `T` if and only if `f` is differentiable at `λ(T)`. In that case `∇F_f(T) = Σ_i ∂_i f(λ(T))·e_i ⊗ e_i^*` for any orthonormal eigenbasis `(e_i)` of `T` ordered by `λ(T)`, that is, `dF_f(T)(H) = Σ_i ∂_i f(λ(T))·⟨e_i, H e_i⟩` (lewis1996 Theorem 1.1, line 77–81; spruck2005 Theorem 1.4(i), line 11072–11073). The real symmetric case is the same statement at `𝕜 = ℝ` (lewis1996 line 144). Further, `F_f` is `C¹` on `Sym_Ω(E)` if and only if `f` is `C¹` on `Ω` (lewis1996 line 468–469).

Route. Symmetry of `f` forces `∂_i f(μ) = ∂_j f(μ)` whenever `μ_i = μ_j`, so `∇f(λ(T))` is constant on eigenvalue clusters (lewis1996 Lemma 2.3, line 185–187). Then `∇f(λ(T))·λ(·)` is a combination of Ky Fan sums `κ_m` at indices `m` where `λ(T)` has a gap, differentiable at `T` by §1.2 (lewis1996 Lemma 2.2, line 165–166). The first-order expansion of `f` with Weyl's Lipschitz bound concludes (lewis1996 Theorem 2.4, line 199–217). Continuity of `T ↦ ∇F_f(T)` at `T_0` follows because spectral projections onto eigenvalue clusters of `T_0` depend continuously on `T`, while `∇f(λ(T))` converges on each cluster to the common value at `λ(T_0)`. *Needs:* §1.2; Tau Ceti `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`; Mathlib `HasFDerivAt`, `ContDiffOn`.

API:

- Unitary invariance `F_f(U T U^*) = F_f(T)` and equivariance `∇F_f(U T U^*) = U ∇F_f(T) U^*`. The gradient `∇F_f(T)` commutes with `T`, and on diagonal operators `F_f(diag μ) = f(μ)`.
- Agreement with the library: for `f = σ_1` the spectral function is the trace, and for `f = σ_n` it is the determinant (Mathlib `LinearMap.IsSymmetric.det_eq_prod_eigenvalues`).
- Compatibility with scalar shifts: for `Ω + ℝe = Ω` and `g(μ) = f(μ + te)`, `F_g(T) = F_f(T + t·Id)`.

**Checks.**

- `f = σ_1` gives `∇F_f(T) = Id` for every `T`. For `f = σ_n` on positive definite operators, `∇F_f(T) = det(T)·T⁻¹`. At `T = [[2, 1], [1, 2]]`, with eigenvalues `3, 1`, this is `[[2, −1], [−1, 2]]`. The wrong model `diag(∂_i f(λ(T))) = diag(1, 3)` in the standard basis, which forgets the eigenbasis, gives a different matrix.
- `f(μ) = max_i μ_i` is symmetric but not differentiable at `(1, 1)`; correspondingly `F_f = λ_1` satisfies `λ_1(Id + t·diag(1, 0)) = 1 + max(t, 0)`, which is not differentiable at `t = 0`. This is the negative control for the "only if" direction.
- `f(μ) = μ_1² + μ_2²` on `ℝ²` gives `F_f(T) = tr(T²)` with `∇F_f(T) = 2T`. At `T = [[0, 1], [1, 0]]` the eigenvalues are `±1`, the eigenbasis formula gives `2·(1·P_+ − 1·P_−) = 2T`, as computed directly.

### 1.4 Convexity of spectral domains, concavity and ellipticity

Prove, for an open convex symmetric `Γ ⊆ ℝⁿ` and a symmetric `C¹` function `f : Γ → ℝ` (spruck2005 Theorem 1.4 and its proof, line 11066–11100):

- `Sym_Γ(E)` is convex. Route: an open convex symmetric set is the intersection of open half-spaces `{μ : ⟨y, μ⟩ > s}` together with their permuted copies. Then `μ ∈ Γ` if and only if `⟨y↑, μ↓⟩ > s` for each such `(y, s)`, and by the lower trace bound of §1.2, `⟨y↑, λ(T)⟩ = min_U Re tr(U diag(y) U^* T)` over unitary `U` is concave in `T`, so each set `{T : ⟨y↑, λ(T)⟩ > s}` is convex.
- If `f` is concave, then `F_f` is concave on `Sym_Γ(E)`. Route: for symmetric concave `f`, comparing `f(μ)` with `f` at the transposition of two coordinates shows that `∂_i f(μ) ≤ ∂_j f(μ)` whenever `μ_i > μ_j`, so the eigenvalues `∂_i f(λ(S))` of `∇F_f(S)` are nondecreasing in `i` when `λ(S)` is nonincreasing (spruck2005 line 11095–11097). The lower trace bound of §1.2 applied to `∇F_f(S)` and `T` then gives `Re tr(∇F_f(S)·T) ≥ Σ_i ∂_i f(λ(S))·λ_i(T)`, and since `∇F_f(S)` is diagonal in an eigenbasis of `S`, `Re tr(∇F_f(S)·S) = Σ_i ∂_i f(λ(S))·λ_i(S)`; with the concavity of `f`, `dF_f(S)(T − S) ≥ f(λ(T)) − f(λ(S)) = F_f(T) − F_f(S)` (spruck2005 line 11092–11100).
- If `∂_i f > 0` on `Γ`, then `∇F_f(T)` is positive definite for every `T ∈ Sym_Γ(E)`.
- Monotonicity. Suppose `Γ + Γ_n ⊆ Γ` (true when `Γ` is a convex cone containing `Γ_n`); then also `Γ + Γ̄_n ⊆ Γ`, since `μ + d = (μ − εe) + (d + εe)` with `μ − εe ∈ Γ` for small `ε > 0` by openness. If `S ∈ Sym_Γ(E)` and `S ≤ T`, then `T ∈ Sym_Γ(E)`, because `λ(T) = λ(S) + d` with `d ≥ 0` componentwise (`LinearMap.IsSymmetric.eigenvalue_mono`). If moreover `∂_i f ≥ 0` on `Γ`, then `F_f(S) ≤ F_f(T)`, by the mean value theorem for `f` along the segment from `λ(S)` to `λ(T)`, which lies in `Γ` because `λ(S) + t·d ∈ Γ + Γ̄_n ⊆ Γ` for `t ∈ [0, 1]`. This bullet uses only that `Γ` is open and symmetric with `Γ + Γ_n ⊆ Γ`, not that `Γ` is convex; §4.1 applies it in that generality. If `∂_i f > 0` on `Γ`, then `F_f(S) < F_f(T)` unless `S = T`: when `λ(S) ≠ λ(T)` the mean value integrand is positive, and when `λ(S) = λ(T)` the operator `T − S ≥ 0` has trace zero, so `S = T`. For vectors, if `μ ∈ Γ` and `μ ≤ ν` componentwise then `ν ∈ Γ`, `f(μ) ≤ f(ν)` when `∂_i f ≥ 0`, and `f(μ) < f(ν)` when `∂_i f > 0` and `μ ≠ ν`.

*Needs:* §§1.2–1.3; Tau Ceti `LinearMap.IsSymmetric.eigenvalue_mono`, `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues`; Mathlib `ConcaveOn`.

**Checks.**

- `Γ = Γ_n` gives the open cone of positive definite operators, and `f = σ_n^{1/n}` gives `F = det^{1/n}`. For `A = diag(4, 1)` and `B = diag(1, 4)`, `F(A) = F(B) = 2` and `F((A + B)/2) = 5/2 ≥ 2`. For `f = σ_n`, which is not concave, `t ↦ det(t·Id_2) = t²` is convex, the expected failure.
- A non-convex symmetric open cone: `Γ = Γ_2 ∪ {μ : μ_1 > 0, −μ_1/2 < μ_2 < −μ_1/3} ∪ {its mirror}` in `ℝ²`. It contains `diag(1, −0.4)` and `diag(1, 0.1)` in `Sym_Γ`, but their midpoint `diag(1, −0.15)` is outside, so convexity of `Γ` is necessary.
- `Γ = Γ_1`, `f = σ_1`: `Sym_Γ = {tr T > 0}`, `∇F = Id` is positive definite, and monotonicity is `tr S ≤ tr T` for `S ≤ T`.
- Ellipticity is needed for monotonicity: `Γ = Γ_1 ⊂ ℝ²`, `f = −σ_1` (symmetric, `C¹`, concave, with `∂_i f = −1`), `S = diag(1, 0) ≤ T = diag(2, 0)`: `F_f(S) = −1 > −2 = F_f(T)`. For the strictness clause `∂_i f > 0` is needed: `f ≡ 0` has `∂_i f = 0 ≥ 0` and `F_f(S) = F_f(T)` with `S ≠ T`.
- The gradient ordering of the concavity route: `f = σ_2^{1/2}` on `Γ_2 ⊂ ℝ²` at `μ = (4, 1)` has `∂_1 f = (1/2)·μ_2/√(μ_1μ_2) = 1/4` and `∂_2 f = 1`, nondecreasing in the index as `μ` is nonincreasing.

### 1.5 Determinant, Euler and trace inequalities

Prove, for an open symmetric cone `Ω` and a `C¹` symmetric `f`:

- `det ∇F_f(T) = ∏_i ∂_i f(λ(T))` for `T ∈ Sym_Ω(E)`.
- If `f` is positively homogeneous of degree one, then `Re tr(∇F_f(T)·T) = F_f(T)` (Euler; gpt2023 line 246–250).
- For positive definite `A, B ∈ Sym(E)`: `Re tr(AB) ≥ n·(det A·det B)^{1/n}`, with equality exactly when `B = c·A⁻¹` for some `c > 0` (gpt2023 line 255, the arithmetic–geometric step). The proof applies AM–GM to the eigenvalues of `A^{1/2} B A^{1/2}`.

*Needs:* §1.3; Mathlib `Real.geom_mean_le_arith_mean_weighted`, `LinearMap.IsSymmetric.det_eq_prod_eigenvalues`.

**Checks.**

- `f = σ_n^{1/n}`, `T = diag(1, 4)`, whose sorted eigenvalue vector is `λ(T) = (4, 1)`: `∂_1 f(4, 1) = 1/4` and `∂_2 f(4, 1) = 1`, so `∇F(T) = diag(1, 1/4)` in the standard basis, `det ∇F = 1/4 = 2^{−2}`, and `tr(∇F·T) = 1 + 1 = 2 = F(T)`.
- `A = diag(1, 4)`, `B = Id`: `tr(AB) = 5 ≥ 2·√4 = 4`; `B = A⁻¹` gives `2 = 2`, the equality case.
- For the non-homogeneous `f = σ_n` on `ℝ²` at `T = diag(1, 4)`, `tr(∇F·T) = 4 + 4 = 8 = 2·F(T)`, so the Euler identity carries the degree.

### Examples

The spectral functions `tr`, `det`, `det^{1/n}`, `tr(T²)` and `λ_1`, the last as a non-differentiable control, together with the 2×2 computations in the Checks.

### Dependencies

Mathlib; Tau Ceti `LinearMap.IsSymmetric.eigenvalue_mono`, `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`, `LinearMap.IsSymmetric.re_trace_comp_le_sum_eigenvalues_mul_eigenvalues` and `LinearMap.IsSymmetric.sum_re_inner_apply_self_le_sum_eigenvalues`. No manifold input.

## Layer 2: Gårding cones and admissible pairs

### 2.1 Elementary symmetric functions and the Newton–Maclaurin inequalities

Use `σ_k(λ)` (Mathlib `MvPolynomial.esymm` evaluated at `λ`). Prove, for `1 ≤ k ≤ n`, the identities `σ_k(λ) = λ_i σ_{k−1;i}(λ) + σ_{k;i}(λ)`, `∂σ_k/∂λ_i = σ_{k−1;i}` and `Σ_i λ_i σ_{k−1;i} = kσ_k`; for `0 ≤ k ≤ n`, the identity `Σ_i σ_{k;i} = (n − k)σ_k` and the shift expansion `σ_k(λ + te) = Σ_{j=0}^{k} binom(n − j, k − j)·σ_j(λ)·t^{k−j}`; and `σ_0 = 1` with `∂σ_0/∂λ_i = 0`. Prove the Newton inequalities `S_{k−1}S_{k+1} ≤ S_k²` for all `λ ∈ ℝⁿ` and `1 ≤ k ≤ n − 1`, with equality for `λ ∈ Γ_n` only when all `λ_i` are equal (spruck2005 Proposition 2.7, line 11268–11270, whose equality clause is restricted here to `Γ_n`). The proof applies Rolle's theorem to the homogenized polynomial `∏(x + λ_i y)` (spruck2005 Lemma 2.6, line 11257–11265). Then prove the Maclaurin inequalities `S_k^{1/k} ≥ S_l^{1/l}` for `1 ≤ k ≤ l` and `λ ∈ Γ_l` (spruck2005 Corollary 2.8, line 11271–11275; dinew-kolodziej2014 line 152–159). By continuity they hold on the closure `Γ̄_l`, where `S_1, …, S_l ≥ 0` and the nonnegative roots are continuous; in particular they hold for every `λ` with all `λ_i ≥ 0`, since the closed orthant is the closure of `Γ_n ⊆ Γ_l`. Prove the generalized Newton–Maclaurin inequality: for integers `0 ≤ s < r ≤ n` and `0 ≤ l < k ≤ r` with `l ≤ s`, and `λ ∈ Γ_r`, `(S_r/S_s)^{1/(r−s)} ≤ (S_k/S_l)^{1/(k−l)}` (spruck2005 Lemma 2.10, line 11279–11293). Here `S_0 = 1` and `S_1, …, S_r > 0` on `Γ_r`, so every quotient is positive. Route: on `Γ_r` the sequence `j ↦ log S_j`, `0 ≤ j ≤ r`, is concave by Newton's inequalities, and the slope `(log S_b − log S_a)/(b − a)` of a chord of a concave sequence does not increase when either endpoint moves to the right; so the slope over `[l, k]` is at least the slope over `[l, r]`, which is at least the slope over `[s, r]`. Maclaurin is the case `s = l = 0`. *Needs:* Mathlib `MvPolynomial.esymm`, `Polynomial.card_roots_le_derivative`; §2.2 for the description of `Γ_l` used by Maclaurin.

**Checks.**

- `λ = (1, 2, 3)`: `σ = (6, 11, 6)`, `S = (2, 11/3, 6)`. Newton gives `S_1S_3 = 12 ≤ S_2² = 121/9`, and Maclaurin gives `2 ≥ (11/3)^{1/2} ≈ 1.915 ≥ 6^{1/3} ≈ 1.817`.
- `λ = e`: every `S_k = 1`, the equality case. Off `Γ_n` equality also occurs with unequal entries: `λ = (1, 0, 0)` has `S_1S_3 = 0 = S_2²`, which is why the equality clause is stated on `Γ_n`.
- Off the cone Maclaurin fails: `λ = −e` in `ℝ³` has `S_1 = −1 < S_2^{1/2} = 1`.
- Maclaurin on the closure: `λ = (1, 0, 0)` gives `S_1 = 1/3 ≥ S_2^{1/2} = 0 ≥ S_3^{1/3} = 0`, and `λ = (1, 1, 0)` gives `S_1 = 2/3 ≥ S_2^{1/2} = (1/3)^{1/2} ≈ 0.577 ≥ S_3^{1/3} = 0`. Off the orthant, `λ = (2, 2, −1)` lies on the boundary of `Γ_2` (§2.2) and gives `S_1 = 1 ≥ S_2^{1/2} = 0`.
- Generalized Newton–Maclaurin at `λ = (1, 2, 3) ∈ Γ_3`: `(r, s, k, l) = (3, 2, 2, 1)` gives `S_3/S_2 = 18/11 ≤ S_2/S_1 = 11/6`, and `(3, 1, 2, 0)` gives `(S_3/S_1)^{1/2} = √3 ≈ 1.732 ≤ S_2^{1/2} ≈ 1.915`. At `λ = e` both sides are `1` for every admissible index set. The condition `l ≤ s` cannot be dropped: `(r, s, k, l) = (2, 0, 2, 1)`, which has `l > s`, would claim `S_2^{1/2} = (11/3)^{1/2} ≈ 1.915 ≤ S_2/S_1 = 11/6 ≈ 1.833`, which is false.
- The shift expansion for `n = 3`, `k = 2` reads `σ_2(λ + te) = σ_2 + 2σ_1t + 3t²`; at `λ = e`, `t = 1` both sides equal 12.
- The index range: at `n = 1`, `k = 1`, `λ = 1` the recurrence and the derivative identity read `1 = 1·1 + 0` and `1 = 1`. At `k = 0` they are meaningless: reading `k − 1` as natural-number subtraction gives `σ_{−1;i} = σ_{0;i} = 1`, and the two identities would read `1 = 1·1 + 1` and `0 = 1`. This is why they assume `k ≥ 1`, while `σ_0 = 1` with derivative `0` is stated separately.

### 2.2 Hyperbolic polynomials and the Gårding cones

Define a homogeneous real polynomial `p` of degree `m` on `ℝ^N` to be hyperbolic in the direction `a` if `p(a) > 0` and `t ↦ p(x + ta)` has only real roots for every `x` (spruck2005 Definition 2.1, line 11182–11185). Define its Gårding cone `Γ(p, a) = {x : p(x + ta) ≠ 0 for all t ≥ 0}`, the component of `{p ≠ 0}` containing `a`. A positive constant (degree `m = 0`) satisfies the definition in every direction, with cone `ℝ^N`; it occurs as the derivative of a linear hyperbolic polynomial. The conclusions below that involve the degree assume `m ≥ 1`.

Prove Gårding's theorem (spruck2005 Theorem 2.2 and Proposition 2.3, line 11186–11224): for `p` hyperbolic in `a` of degree `m ≥ 1`, `Γ(p, a)` is an open convex cone on which `p > 0`, `p` is hyperbolic in every direction `b ∈ Γ(p, a)` with `Γ(p, b) = Γ(p, a)`, `p^{1/m}` is concave on `Γ(p, a)`, and `D_b p > 0` on `Γ(p, a)` for `b ∈ Γ(p, a)`. Prove that, for `m ≥ 1`, `D_a p` is hyperbolic in `a` with `Γ(p, a) ⊆ Γ(D_a p, a)` (Rolle); for `m = 1` it is the constant `p(a) > 0`, with cone `ℝ^N`. For symmetric `p` of degree `m ≥ 1` hyperbolic in `e`, the cone `Γ(p, e)` is invariant under coordinate permutations and lies in the half-space `σ_1 > 0`: the average over all permutations of a point `x` of the cone is `(σ_1(x)/n)·e`, which lies in the cone by convexity, while no `−s·e` with `s ≥ 0` does, since `p(−s·e + t·e) = (t − s)^m·p(e)` vanishes at `t = s`. Such a cone contains `Γ_n` if and only if every coordinate vector `e_i` lies in its closure `Γ̄(p, e)`, and this does not follow from symmetry (see the Checks). Under this condition, `∂_i p > 0` on `Γ(p, e)` for every `i`. spruck2005 Corollary 2.4 (line 11225–11235) states the containment and the positivity of the partial derivatives without the condition. Route for the equivalence: if the `e_i` lie in the closed convex cone `Γ̄(p, e)`, so does the closed orthant, and the open set `Γ_n` lies in the interior of `Γ̄(p, e)`, which is `Γ(p, e)` because an open convex set is the interior of its closure; the converse holds because each `e_i` is a limit of points of `Γ_n`. Route for the derivative: for `x` in the cone, `x + t·e_i` lies in the cone for `t ≥ 0`, because an open convex cone `Γ` satisfies `Γ + Γ̄ ⊆ Γ`, and `h(t) = p(x + t·e_i)^{1/m}` is concave there by Gårding's theorem. If `∂_i p(x) ≤ 0`, then `h'(0) ≤ 0`, and concavity gives `0 < p(x + t·e_i) ≤ p(x)` for all `t ≥ 0`. A polynomial bounded on a half-line is constant, so `p(x + t·e_i) = p(x)` for every real `t`. Then the line `x + ℝ·e_i` is connected, avoids `{p = 0}` and meets the cone, so it lies in the cone, although `σ_1(x + t·e_i) = σ_1(x) + t` is negative for `t < −σ_1(x)`.

Apply it to `σ_n` (hyperbolic in `e` since `σ_n(λ + te) = ∏(λ_i + t)`) and to `σ_k = D_e^{n−k}σ_n/(n − k)!` for `1 ≤ k ≤ n`. Prove `Γ(σ_k, e) = Γ_k = {σ_1 > 0, …, σ_k > 0}` for `1 ≤ k ≤ n`. The inclusion `⊇` holds because when `σ_1, …, σ_k > 0` every coefficient of the shift expansion of §2.1 is positive, so `σ_k(λ + te)` has no root `t ≥ 0`. The inclusion `⊆` is proved by induction on `k`, with `σ_k > 0` on `Γ(σ_k, e)`: for `k = 1`, `σ_1(λ + te) = σ_1(λ) + nt` has the root `t = −σ_1(λ)/n`, which is `≥ 0` when `σ_1(λ) ≤ 0`; for `2 ≤ k ≤ n` it follows from the nesting `Γ(σ_k, e) ⊆ Γ(σ_{k−1}, e)`. Hence, for `1 ≤ k ≤ n`, `Γ_k` is an open convex symmetric cone with `Γ_n ⊆ Γ_k ⊆ Γ_1`, the adjacent nesting `Γ_k ⊆ Γ_{k−1}` holds for `2 ≤ k ≤ n`, and `σ_k^{1/k}` is concave on `Γ_k` with `∂_iσ_k > 0` there (dinew-kolodziej2014 line 139–164); the positivity is also the derivative clause above, since `e_i ∈ Γ̄_n ⊆ Γ̄_k`. On `Sym(E)` the polynomial `T ↦ σ_k(λ(T))` is hyperbolic in the direction `Id`, with Gårding cone `Sym_{Γ_k}(E)`. *Needs:* §2.1; §1.4 for the operator version.

API:

- For `p` hyperbolic in `a` of degree `m ≥ 1`, `t ↦ p(x + ta)` has exactly `m` real roots counted with multiplicity, and `x ∈ Γ(p, a)` exactly when all of them are negative.
- Hyperbolicity in `a` and the cone are unchanged when `p` or `a` is multiplied by a positive scalar.
- For `1 ≤ k ≤ n`, `Γ_k` is open, symmetric, a convex cone, and satisfies `Γ_k + Γ_n ⊆ Γ_k`.
- `Γ_n` is the positive orthant and `Γ_1` the half-space; `Γ_k ⊆ Γ_{k−1}` for `2 ≤ k ≤ n`.
- For `1 ≤ k ≤ n`, `λ ∈ Γ_k` gives `σ_{k−1;i}(λ) > 0` for every `i`.

**Checks.**

- `p = xy` on `ℝ²` is hyperbolic in `a = (1, 1)`: `p(a) = 1` and `p(x + ta) = (x_1 + t)(x_2 + t)` has the real roots `−x_1`, `−x_2`; at `x = (2, −1)` they are `−2` and `1`. Its cone is the open quadrant, where both roots are negative, which is `Γ_2` for `n = 2`.
- `p = x² + y²` has `p(1, 0) = 1 > 0`, but `p((0, 1) + t(1, 0)) = t² + 1` has the roots `±i`, so `p` is not hyperbolic in `(1, 0)`: positivity at the direction does not suffice.
- `p = x + y` is hyperbolic in `a = (1, 1)`: `p(x + ta) = x + y + 2t` has the root `−(x + y)/2`, and the cone is the half-plane `x + y > 0`, which is `Γ_1` for `n = 2`. Its derivative `D_a p = 2` is the constant of degree `0`, whose cone `ℝ²` contains `Γ(p, a)`, as the derivative rule requires.
- Degree zero: the constant `p = 1` satisfies the definition in every direction with cone `ℝ^N`, which contains `−a`; `D_b p = 0` is not positive and `p^{1/m}` is undefined, so the positive-degree conclusions fail and assume `m ≥ 1`. Likewise no `Γ_0` is defined: with the empty conjunction it would be `ℝⁿ`, and `Γ_0 ⊆ Γ_1` would fail at `−e`.
- The index range of `σ_k`: at `n = k = 1`, `σ_1(e) = 1 > 0` and `σ_1(x + te) = x + t` has the real root `−x`, so `σ_1` is hyperbolic in `e`. At `n = 1`, `k = 2`, the convention `σ_k = 0` for `k > n` gives the zero polynomial, with `σ_2(e) = 0`, which is not hyperbolic; this is why `σ_k` is applied only for `1 ≤ k ≤ n`, with `σ_0 = 1` the degree-zero constant above.
- In `ℝ³`, `λ = (3, 3, −1)` has `σ_1 = 5`, `σ_2 = 3`, `σ_3 = −9`, so `λ ∈ Γ_2 \ Γ_3`; `λ = (2, 2, −1)` has `σ_2 = 0` and lies on the boundary of `Γ_2`.
- `σ_2(−e) = 3 > 0` in `ℝ³` but `−e ∉ Γ_2` since `σ_1(−e) = −3`. The set `{σ_2 > 0}` contains `e` and `−e` but not their midpoint `0`, so it is not convex and the defining condition must include the lower `σ_j`.
- `n = 2`: `Γ_1` is the half-plane `λ_1 + λ_2 > 0` and `Γ_2` the open quadrant; `(1, −1/2) ∈ Γ_1 \ Γ_2`.
- A symmetric hyperbolic polynomial whose cone misses part of `Γ_n`: `p = 2xy − 0.9(x² + y²)` on `ℝ²` has `p(e) = 0.2` and `p(x + t·e) = 0.2t² + 0.2(x_1 + x_2)t + p(x)`, whose discriminant `0.76(x_1 − x_2)²` is nonnegative, so `p` is hyperbolic in `e`. Its cone is the sector `x_1 > 0`, `0.627 < x_2/x_1 < 1.595`, inside the half-plane `x_1 + x_2 > 0`. The point `(1, 0.1) ∈ Γ_2` has `p = −0.709` (roots `1.41` and `−2.51`) and lies outside the cone, and `p(e_1) = −0.9 < 0`, so `e_1` is not in the closure: both sides of the equivalence fail. At `(1, 0.7)`, which lies in the cone (`p = 0.059`, roots `−0.196` and `−1.504`), `∂_x p = −0.4 < 0`, so the derivative clause fails without the condition on the `e_i`.
- Both sides of the equivalence on a family: `p_c = (x_1 + x_2)² − c(x_1 − x_2)²` with `c > 0` has `p_c(e) = 4` and the real roots `t = (−(x_1 + x_2) ± √c·|x_1 − x_2|)/2`, and its cone is `{x_1 + x_2 > √c·|x_1 − x_2|}`. Then `e_1` lies in the closure exactly when `1 ≥ √c`, and `Γ_2` lies in the cone exactly when `c ≤ 1`. At `c = 1/4`, `∂_1 p_c = 2(x_1 + x_2) − (x_1 − x_2)/2 > x_1 + x_2 > 0` on the cone; at `c = 1`, `p_1 = 4x_1x_2` with cone `Γ_2`; the polynomial of the previous Check is `p_19/20`.

### 2.3 Concavity of Hessian quotients and the tangent inequality

Prove that for `0 ≤ l < k ≤ n` the quotient `(σ_k/σ_l)^{1/(k−l)}` is concave on `Γ_k` with positive partial derivatives there (spruck2005 Theorems 2.11 and 2.16, line 11295 and 11364–11365). The proof writes the quotient as a product of the `S_i/S_{i−1}`, uses spruck2005 Lemma 2.12 (line 11303–11320; the geometric mean of positive concave functions on a convex cone is concave), and proves concavity of each `σ_i/σ_{i−1}` by induction with spruck2005 Proposition 2.15 (line 11347–11348). Prove the tangent inequality: for `g` concave and positively homogeneous of degree one on an open convex cone `Γ`, and `λ ∈ Γ` a point where `g` is differentiable, `g(μ) ≤ Σ_i μ_i ∂_i g(λ)` for every `μ ∈ Γ` (gpt2023 line 751–756, for a differentiable `g`). The route is the supporting-hyperplane inequality `g(μ) ≤ g(λ) + Dg(λ)(μ − λ)` of a concave function at a point of differentiability, together with Euler's identity `Dg(λ)λ = g(λ)`. In particular, for `λ, μ ∈ Γ_k`, `Σ_i μ_i σ_{k−1;i}(λ) ≥ k·σ_k(μ)^{1/k}·σ_k(λ)^{(k−1)/k}` (dinew-kolodziej2014 line 165–172), where `g = σ_k^{1/k}` is smooth on `Γ_k`; by continuity in `μ` this extends to `μ ∈ Γ̄_k`. *Needs:* §§2.1–2.2.

**Checks.**

- `n = 2`, `σ_2/σ_1 = λ_1λ_2/(λ_1 + λ_2)`: at `(4, 1)` and `(1, 4)` the value is `0.8`, and at the midpoint `(2.5, 2.5)` it is `1.25 ≥ 0.8`.
- `σ_2` itself on `Γ_2 ⊂ ℝ²` is not concave: `t ↦ σ_2(te) = t²`.
- The tangent inequality for `g = σ_1` is an equality; for `g = σ_2^{1/2}` on `ℝ²` at `λ = (1, 4)`, `μ = (4, 1)` it reads `2 ≤ 4·1 + 1·(1/4) = 4.25`.
- Differentiability at `λ` is needed: `g(x, y) = min(x, y)` on the open quadrant is concave and positively homogeneous of degree one, but at `λ = μ = (1, 1)` neither partial derivative exists; with the total derivatives set to `0` there, the inequality would read `1 ≤ 0`. At the point of differentiability `λ = (1, 2)`, where `∇g = (1, 0)`, it reads `g(2, 1) = 1 ≤ 2`.

### 2.4 Admissible cones, admissible pairs and the structural condition

Define an admissible cone as an open set `Γ ⊆ ℝⁿ` invariant under permutations and positive dilations with `Γ_n ⊆ Γ ⊆ Γ_1` (guo-phong2024 line 76–80; gpt2023 line 71–73). Define an admissible pair `(f, Γ)` as an admissible cone `Γ` with a `C¹` function `f : Γ → ℝ` that is symmetric, positively homogeneous of degree one and elliptic, `∂_j f > 0` on `Γ` (guo-phong2024 line 83–84; gpt2023 line 73–76). A concave admissible pair has in addition `Γ` convex and `f` concave (szekelyhidi2018 line 29–31 and 183–185). The pair satisfies the structural condition with constant `γ > 0` if `∏_j ∂_j f ≥ γ` on `Γ` (guo-phong2024 (1.2), line 85–90).

Prove:

- `f > 0` on `Γ_n`, by the Euler identity `Σ_j λ_j ∂_j f = f`.
- The structural condition with constant `γ` holds if and only if `det ∇F_f(T) ≥ γ` for every `T ∈ Sym_Γ(E)`, the form gpt2023 (1.4) (line 84–86). This follows from §1.5.
- gpt2023 Lemma 4 (line 744–769): a concave admissible pair with `f(μ) ≥ nγ^{1/n}(∏_j μ_j)^{1/n}` on `Γ_n` satisfies the structural condition with constant `γ`. The proof combines the tangent inequality of §2.3 with AM–GM over `μ ∈ Γ_n`, `∏μ_j = 1`.
- Positive combinations. If `(f_1, Γ_1')` and `(f_2, Γ_2')` are admissible pairs with structural constants `γ_1, γ_2` and `a, b > 0`, then `(af_1 + bf_2, Γ_1' ∩ Γ_2')` is an admissible pair with structural constant `(aγ_1^{1/n} + bγ_2^{1/n})^n`, and it is concave when both are (guo-phong2024 line 103–104). The constant comes from the superadditivity `∏(x_j + y_j)^{1/n} ≥ ∏x_j^{1/n} + ∏y_j^{1/n}` for positive `x, y` (spruck2005 line 11314).

*Needs:* §§1.3–1.5, 2.2–2.3.

API:

- For `1 ≤ k ≤ n`, the Hessian cone `Γ_k` is an admissible cone (§2.2); in particular `Γ_n` and `Γ_1` are the smallest and the largest admissible cones.
- The intersection of two, hence of finitely many, admissible cones is an admissible cone.
- Every `λ` in an admissible cone has `σ_1(λ) > 0`, since `Γ ⊆ Γ_1`.
- The operator `F_f` of an admissible pair is defined on the open cone `Sym_Γ(E)`, is `C¹`, has positive definite gradient, and is concave when the pair is concave (§§1.3–1.4).
- `tr(∇F_f(T)·T) = F_f(T)`, and `∇ log F_f = ∇F_f / F_f` wherever `F_f > 0`.
- Restriction of a pair to a smaller admissible cone `Γ' ⊆ Γ` is a pair, with the same structural constant if any.

**Checks.**

- `(σ_n^{1/n}, Γ_n)` has `∏_j ∂_j f = n^{−n}` identically. For `n = 2` at `(1, 4)` the partials are `1` and `1/4`, product `1/4`.
- `f(λ) = σ_1(λ) − ε|λ|` with `0 < ε < 1` on `Γ_1 ⊂ ℝ²` is an admissible pair (`∂_j f = 1 − ελ_j/|λ| > 0`). At `λ = (1, −1 + δ)` its value `δ − ε√(1 + (1 − δ)²)` is negative for small `δ`, so admissible pairs need not be positive off `Γ_n`.
- `f(λ) = max_j λ_j` on `Γ_n` is symmetric and homogeneous but not `C¹` at `e`; it is not an admissible pair.
- The cone `Γ_1 ⊂ ℝ²` is admissible and contains `(1, −1/2)`, whose coordinate sum is `1/2 > 0` although one entry is negative: admissible cones need not lie in the closed orthant.
- The shifted quadrant `{λ ∈ ℝ² : λ_1 > −1, λ_2 > −1}` is open, symmetric and contains `Γ_2`, but it is not an admissible cone. It contains `(−1/2, 1)` but not `3·(−1/2, 1) = (−3/2, 3)`, so it is not invariant under dilations, and it contains `(−1/2, −1/2)`, whose coordinate sum is negative, so it is not inside `Γ_1`.
- The cone `Γ = Γ_2 ∪ {μ : μ_1 > 0, −μ_1/2 < μ_2 < −μ_1/3} ∪ {its mirror}` of §1.4 is admissible: it is open and symmetric, and a point of the first wedge has `μ_1 + μ_2 > μ_1/2 > 0`. It is not convex: it contains `(1, −0.4)` and `(1, 0.1)` but not their midpoint `(1, −0.15)`. It also violates `Γ + Γ_n ⊆ Γ`: `(0.01, 0.25) ∈ Γ_2` and `(1, −0.4) + (0.01, 0.25) = (1.01, −0.15) ∉ Γ`. So the convexity of `Γ` in a concave admissible pair is a separate hypothesis.
- Only finite intersections: for each `ε > 0` the cone `{λ ∈ ℝ² : λ_1 + λ_2 > 0, λ_i > −ε(λ_1 + λ_2) for i = 1, 2}` is admissible, but the intersection over all `ε > 0` is `{λ : λ_1, λ_2 ≥ 0, λ ≠ 0}`, which contains `(1, 0)` and no neighbourhood of it, so it is not open.

### 2.5 Examples and structural constants

Prove that the following are admissible pairs, concave, with the stated structural constants (gpt2023 line 90–93 and 770–776; guo-phong2024 line 91–104):

- the Monge–Ampère pair `(σ_n^{1/n}, Γ_n)`, with `γ = n^{−n}`, an identity;
- the Laplace pair `(σ_1, Γ_1)`, with `γ = 1`;
- the Hessian pair `(σ_k^{1/k}, Γ_k)` for `1 ≤ k ≤ n`, with `γ = (binom(n, k)^{1/k}/n)^n`, which is sharp, attained at `λ = e`. The proof uses Maclaurin and gpt2023 Lemma 4;
- the quotient pair `((σ_k/σ_l)^{1/(k−l)} + c·σ_p^{1/p}, Γ_{max(k,p)})` for `0 ≤ l < k ≤ n`, `1 ≤ p ≤ n` and `c > 0`, with `γ ≥ (c·binom(n, p)^{1/p}/n)^n`;
- positive combinations of these on intersections of their cones (§2.4).

The pure quotient `((σ_k/σ_l)^{1/(k−l)}, Γ_k)` with `1 ≤ l < k` is a concave admissible pair (§2.3), but no structural constant is asserted for it: the computations below show that it fails for `(n, k, l) = (2, 2, 1)` and `(3, 2, 1)`. *Needs:* §§2.1–2.4.

**Checks.**

- Hessian, `n = 3`, `k = 2`: at `e`, `∂_j σ_2^{1/2} = (1/2)·3^{−1/2}·2 = 3^{−1/2}`, which equals `binom(3, 2)^{1/2}/3`; the constant is `3^{−3/2}`. At `k = 1` the formula gives `1` and at `k = n` it gives `n^{−n}`, matching the Laplace and Monge–Ampère pairs.
- Pure quotient, `n = 2`, `f = σ_2/σ_1`: `∏_j ∂_j f = λ_1²λ_2²/(λ_1 + λ_2)⁴`, which is `1/16` at `e` and `≈ ε²` at `(ε, 1)`, tending to `0`.
- Pure quotient, `n = 3`, `f = σ_2/σ_1` at `(M, 1, 1)`: `∂_1 f = 3/(M + 2)²` and `∂_2 f = ∂_3 f = (M² + M + 1)/(M + 2)²`, so the product is `≈ 3/M² → 0`. Adding `c·σ_1` raises every partial by `c` and restores the bound `c³`.

### Examples

The five families above with their constants. The pure quotient serves as the negative control for the structural condition, and the pair `σ_1 − ε|λ|` as the control for positivity.

### Dependencies

Layer 1; Mathlib only.

## Layer 3: The equation on a compact Hermitian manifold

### 3.1 Eigenvalue functions, `i∂∂̄` and the complex Laplacian

Define, on a complex manifold `X` with a Hermitian metric `ω`, the relative eigenvalue function of a continuous real (1,1)-form `α`: `x ↦ λ_ω[α](x) = λ[H_{α,x}]`, computed relative to `h_x` as in the Conventions (gpt2023 line 62–66; szekelyhidi2018 line 17–24). Define `i∂∂̄u` for `u ∈ C²(X)` chartwise by the formula of the Conventions, and the complex Laplacian `Δ_ω u = Σ_j λ_j[i∂∂̄u]`. Prove that `i∂∂̄u` is independent of the holomorphic chart, because holomorphic transition maps have pluriharmonic real coordinates, and that it agrees with ComplexKahlerGeometry K2's `i∂∂̄` on smooth functions. Prove the second-order maximum lemma: if `x_0` is a local maximum of `u ∈ C²(X)`, then `H_{i∂∂̄u}(x_0) ≤ 0`. The route is `H_{i∂∂̄u}(v, v) = (1/2)(D²u(v, v) + D²u(Jv, Jv))` in a chart, with the one-variable second-derivative test. *Needs:* Layer 1 §1.1; ComplexKahlerGeometry K1–K2; Tau Ceti `TauCeti.SmoothTwoForm.Invariant`, `TauCeti.SmoothTwoForm.Compatible`.

API:

- `λ_ω[α]` is continuous in `x` (Weyl's bound, `LinearMap.IsSymmetric.abs_eigenvalue_sub_eigenvalue_le`), `λ_ω[ω] = e`, `λ_ω[α + tω] = λ_ω[α] + te`, and `λ_{sω}[α] = s⁻¹λ_ω[α]` for `s > 0`.
- `Σ_j λ_j[α] = tr_ω α`, and `n·α ∧ ω^{n−1} = (tr_ω α)·ω^n`.
- `i∂∂̄(u + v) = i∂∂̄u + i∂∂̄v`. `i∂∂̄` vanishes on constants, and `i∂∂̄(γ ∘ u) = γ'(u)·i∂∂̄u + γ''(u)·i∂u ∧ ∂̄u` for `γ ∈ C²(ℝ)`.
- Pullback along holomorphic maps commutes with `i∂∂̄`.

**Checks.**

- On `ℂⁿ` with the standard `ω`: `λ[i∂∂̄|z|²] = 2e`, `λ[i∂∂̄|z_1|²] = (2, 0, …, 0)`, `i∂∂̄(x_1²) = dx_1 ∧ dy_1` with `Δ_ω(x_1²) = 1`. The pluriharmonic `x_1² − y_1² = Re z_1²` has `i∂∂̄ = 0`.
- `u = −|z|²` has a maximum at `0` with `H_{i∂∂̄u} = −2h ≤ 0`. The saddle `u = x_1² − y_1²` also has `H_{i∂∂̄u}(0) = 0 ≤ 0` without being a maximum, so the lemma has no converse.
- Doubling the metric halves the eigenvalues: relative to `2ω` the form `i∂∂̄|z|²` has `λ = e`. This is the normalization witness of the Conventions.

### 3.2 Form identities and integration identities

Prove, on a complex manifold with a Hermitian metric `ω`:

- The form identity `α^k ∧ ω^{n−k} = (k!(n−k)!/n!)·σ_k(λ[α])·ω^n` and its mixed version `α_1 ∧ … ∧ α_k ∧ ω^{n−k} = (k!(n−k)!/n!)·M_k(α_1, …, α_k)·ω^n`, where `M_k` is the polarization of `σ_k ∘ λ` (dinew-kolodziej2014 line 33–35). Also `ω^n = n!·dvol_g`, compared with `TauCeti.riemannianVolume`.
- Gårding's mixed inequality: if `λ[α] ∈ Γ̄_k` and `λ[β] ∈ Γ_k`, then `α ∧ β^{k−1} ∧ ω^{n−k} ≥ (k!(n−k)!/n!)·σ_k(λ[α])^{1/k}·σ_k(λ[β])^{(k−1)/k}·ω^n ≥ 0` (dinew-kolodziej2014 line 165–172 and Proposition 1.7, line 259–263). The proof writes `M_k(α, β, …, β) = (1/k)·D_α(σ_k ∘ λ)(β)` and applies the tangent inequality of §2.3 to the hyperbolic polynomial `σ_k ∘ λ` on `Sym` (§2.2).
- The Maclaurin form inequality: for a positive (1,1)-form `β`, `(β^k ∧ ω^{n−k}/ω^n)^{1/k} ≥ (β^n/ω^n)^{1/n}` (gpt2023 line 924–926, whose constant is `1` in this normalization).
- On compact `X`, for `u ∈ C²(X)` and a smooth real `(n−1, n−1)`-form `Θ`: `∫ i∂∂̄u ∧ Θ = ∫ u·i∂∂̄Θ`. In particular `∫ (Δ_ω u)·ω^n = n·∫ u·i∂∂̄(ω^{n−1})`, which vanishes when `dω = 0`. The proof applies Stokes twice to smooth approximations of `u` in `C²`.
- Kähler invariance: if `dω = dχ = 0`, then `∫ χ_φ^k ∧ ω^{n−k} = ∫ χ^k ∧ ω^{n−k}` for every `φ ∈ C²(X)` and `0 ≤ k ≤ n`, by the same approximation.

*Needs:* §3.1; Layer 2 §§2.2–2.3; DifferentialGeometry Layers 0–1, 5 and 12; ComplexManifolds Milestone 2.

**Checks.**

- `n = 2`, `λ[α] = (λ_1, λ_2)`: `α ∧ ω = ((λ_1 + λ_2)/2)ω²` and `α² = λ_1λ_2 ω²`; with `α = ω`, `σ_1 = 2` gives `ω ∧ ω = ω²`.
- The Maclaurin form inequality with `λ[β] = (4, 1)`, `k = 1`, `n = 2` reads `5/2 ≥ 2`; with `β = ω` it is an equality.
- On a torus `ℂ²/Λ` with constant `ω`, `∫ Δ_ω u·ω² = 0`. The identity `∫ Δ_ω u·ω^n = n∫ u·i∂∂̄ω^{n−1}` shows that this can fail exactly when `i∂∂̄ω^{n−1} ≠ 0`. For `n = 1` every Hermitian metric is Kähler, and the identity gives `∫ Δ_ω u·ω = 0`.

### 3.3 Admissible functions and the equation

Define, for a continuous real (1,1)-form `χ` and an admissible cone `Γ`: `φ ∈ C²(X)` is `(χ, Γ)`-admissible if `λ_ω[χ_φ](x) ∈ Γ` for every `x`. For an admissible pair `(f, Γ)` and `F ∈ C⁰(X)`, a solution is a pair `(c, φ)` of a constant `c > 0` and a `(χ, Γ)`-admissible `φ` with `f(λ_ω[χ_φ]) = c·e^F` on `X` and `sup_X φ = 0` (gpt2023 line 66–70 and 107–111; guo-phong2024 line 108–113). Call `F` normalized when `∫ e^{nF} ω^n = V`.

Prove:

- For a solution with normalized `F`, `c^n = V⁻¹ ∫ f(λ[χ_φ])^n ω^n`.
- The Monge–Ampère instance: `φ` is `(χ, Γ_n)`-admissible if and only if `χ_φ > 0`, and then `σ_n^{1/n}(λ[χ_φ]) = c·e^F` if and only if `χ_φ^n = c^n e^{nF} ω^n` (tosatti-weinkove2010 line 21–31).
- The Hessian instance: `(σ_k^{1/k}, Γ_k)` solutions are exactly the `φ` with `χ_φ^j ∧ ω^{n−j} > 0` for `j ≤ k` and `χ_φ^k ∧ ω^{n−k} = binom(n, k)⁻¹·c^k e^{kF} ω^n` (dinew-kolodziej2014 line 56–64, up to the normalization in the Conventions).
- If `dω = dχ = 0`, the Monge–Ampère constant is `c^n = ∫ χ^n / ∫ e^{nF} ω^n`, and the Hessian constant is `c^k = binom(n, k)·∫ χ^k ∧ ω^{n−k} / ∫ e^{kF} ω^n` (§3.2; gpt2023 line 974–981).
- Admissible functions satisfy `Δ_ω φ > −tr_ω χ`, since `Γ ⊆ Γ_1`.

*Needs:* §§3.1–3.2; Layer 2 §§2.4–2.5.

API:

- Admissibility is open in `C²(X)` and preserved by adding constants. If `Γ + Γ_n ⊆ Γ` and `χ ≤ χ'`, then `(χ, Γ)`-admissible implies `(χ', Γ)`-admissible (§1.4).
- Solutions are invariant under biholomorphisms transporting `ω`, `χ` and `F`.

**Checks.**

- `χ = ω`, `F = 0`, `φ = 0`: `λ = e` and `c = f(e)`. For the Monge–Ampère pair `c = 1`; for the Hessian pair `c = binom(n, k)^{1/k}`; for the Laplace pair `c = n`.
- With normalized `F` and Kähler `χ = ω` the Monge–Ampère constant is `c = 1`. Without normalization, for `F = a` constant, `c = e^{−a}` with `φ = 0`.
- On `ℂP¹` with `ω` of total area 1, `χ = 2ω` and `F` normalized give `c = 2`, since `c·∫ e^F ω = ∫ χ = 2` with `n = 1`.

### 3.4 Degenerating backgrounds, energy and entropy

Define, on a compact Kähler manifold `(X, ω_X)` with a smooth closed real (1,1)-form `χ ≥ 0`, the background family `ω_t = χ + tω_X` for `t ∈ (0, 1]`, its volumes `V_t = ∫ ω_t^n`, the equations `f(λ_{ω_X}[ω_{t,φ_t}]) = c_t e^{F_t}`, `sup φ_t = 0`, `λ ∈ Γ` with normalized `F_t`, the energy `E_t(φ) = V_t⁻¹ ∫ (−φ) f(λ[ω_{t,φ}])^n ω_X^n` of a `(ω_t, Γ)`-admissible `φ`, and the entropy `Ent_p(F)` (gpt2023 line 101–119 and 82–83). Eigenvalues are always taken relative to `ω_X`.

API:

- `ω_t` is a Kähler form for `t > 0`, and `V_t ≥ t^n V > 0`.
- For a solution, `E_t(φ_t) = (c_t^n/V_t)·∫ (−φ_t) e^{nF_t} ω_X^n` (gpt2023 (1.9), line 118–119). For the Monge–Ampère pair, `c_t^n/V_t = 1/V` (gpt2023 Lemma 5, line 785–803).
- `Ent_p(F) ≥ 0`. For every `F ∈ C⁰(X)` and `p > 0`, `V⁻¹ ∫ e^{nF} ω_X^n ≤ Ent_p(F) + e^n`, since `e^{nF} ≤ e^{nF}|F|^p` where `|F| ≥ 1` and `e^{nF} < e^n` where `|F| < 1` (gpt2023 (3.2), line 450–451, stated there for `p ≥ 1`); it bounds the mass of an unnormalized `e^{nF}` by the entropy.
- For normalized `F`, `Ent_q(F) ≤ 1 + Ent_p(F)` for `0 < q ≤ p`, by the same splitting.

**Checks.**

- `χ = 0`: `ω_t = tω_X`, `V_t = t^n V`, and `λ_{ω_X}[ω_t] = t·e`.
- `F = 0` is normalized with `Ent_p(0) = 0`, and `E_t(0) = 0`.
- Monge–Ampère with `χ = ω_X`: `V_t = (1 + t)^n V` and `c_t^n = (1 + t)^n`, consistent with `c_t^n/V_t = 1/V`.
- `F = a` constant with `V = 1`: the mass bound reads `e^{na} ≤ e^{na}|a|^p + e^n`; for `|a| ≥ 1` the first term alone gives it, and for `|a| < 1` the second alone, since `e^{na} < e^n`. For normalized `F` the left side is `1` and the bound is trivial, which is why it is stated for arbitrary `F`.

### Examples

The flat torus `ℂⁿ/Λ`, `ℂP^n` with the Fubini–Study form, and products, with the constants of §3.3 computed.

### Dependencies

Layers 1–2; ComplexKahlerGeometry K1–K2; DifferentialGeometry Layers 0–1, 5, 12; ComplexManifolds Milestones 1–2; Tau Ceti two-form predicates.

## Layer 4: The comparison principle and uniqueness

### 4.1 Pointwise comparison

Prove: let `(f, Γ)` be an admissible pair with `Γ + Γ_n ⊆ Γ`, let `χ` be a continuous real (1,1)-form, and let `φ, ψ ∈ C²(X)` be `(χ, Γ)`-admissible. If `x_0` is a local maximum of `ψ − φ`, then `f(λ[χ_ψ](x_0)) ≤ f(λ[χ_φ](x_0))`. The route: §3.1 gives `H_{χ_ψ} ≤ H_{χ_φ}` at `x_0`, `LinearMap.IsSymmetric.eigenvalue_mono` gives `λ[χ_ψ] ≤ λ[χ_φ]` componentwise, and §1.4 gives monotonicity of `f`, using the ellipticity `∂_j f > 0` of the admissible pair (tosatti-weinkove2010 line 38–47 for the Monge–Ampère case). *Needs:* §§1.4, 3.1, 3.3; Tau Ceti `LinearMap.IsSymmetric.eigenvalue_mono`.

**Checks.**

- `ψ = φ + c` with `c` constant: every point is a maximum, and the two values are equal.
- On `ℂ` with the standard metric, `χ = ω`, `φ = 0` and `ψ = −|z|²/4` on the disc: at `0`, `λ[χ_ψ] = 1/2 < 1 = λ[χ_φ]`, and for the Laplace pair `1/2 ≤ 1`.
- For the non-convex admissible cone `Γ` of the §1.4 Check, `Γ + Γ_n ⊆ Γ` fails: `(1, −0.4) ∈ Γ` and `(0.01, 0.25) ∈ Γ_2`, but their sum `(1.01, −0.15)` is not in `Γ`. Its three connected components (`Γ_2` and the two wedges) have disjoint closures away from `0`, so `f = σ_1` on `Γ_2` and `f = 10σ_1` on the wedges is an admissible pair. Then `μ = (1, −0.4) ≤ ν = (1.01, 0.1)` componentwise, both in `Γ`, while `f(μ) = 6 > f(ν) = 1.11`: the monotonicity of `f` that the comparison uses fails, which is why `Γ + Γ_n ⊆ Γ` is assumed.

### 4.2 Uniqueness

Prove the uniqueness theorem: let `X` be a compact connected complex manifold with a Hermitian metric `ω`, `(f, Γ)` a concave admissible pair, or more generally an admissible pair with `Γ` convex, `χ` a continuous real (1,1)-form and `F ∈ C⁰(X)`. If `(c, φ)` and `(c', ψ)` are solutions, then `c = c'` and `φ = ψ` (tosatti-weinkove2010 Corollary 1, line 36–47, for the Monge–Ampère pair).

Route: at a maximum of `ψ − φ`, §4.1 gives `c' ≤ c`, and at a minimum `c ≤ c'`. With `c = c'`, `w = ψ − φ` satisfies `Re tr(a·H_{i∂∂̄w}) = 0`, where `a(x) = ∫_0^1 ∇F_f(h_s(x)) ds` and `h_s = (1 − s)h_{χ_φ} + s·h_{χ_ψ}` lies in `Sym_Γ` by §1.4. The coefficient `a` is continuous and positive definite. The strong maximum principle in charts and connectedness make `w` constant, and `sup φ = sup ψ = 0` gives `w = 0`. *Needs:* §§1.3–1.4, 3.3, 4.1; PDE §3.2 (C13).

**Checks.**

- Kähler Monge–Ampère with `χ = ω` and `F = 0`: `(1, 0)` is the unique solution.
- Two components: `X = X_1 ⊔ X_2`, `χ = ω`, `F = 0`. Both `φ = 0` and `ψ = 0` on `X_1`, `ψ = −1` on `X_2` solve with `c = f(e)` and `sup = 0`, so connectedness is necessary.
- Without the normalization `sup φ = 0`, `φ` and `φ + 1` are distinct solutions with the same `c`.

### Examples

The constant solutions of §3.3 and the two-component counterexample.

### Dependencies

Layers 1–3; PDE §3.2 (C13).

## Layer 5: Linear analysis on compact Kähler manifolds

### 5.1 The Kähler Laplacian

Prove, for a Hermitian metric `ω` on `X`: if `dω = 0`, then `2Δ_ω u` is DifferentialGeometry's `laplaceBeltrami` of `g` applied to `u`, and `Δ_d u = −2Δ_ω u`. Integration by parts reads `∫ v·Δ_ω u·ω^n = −n ∫ i∂u ∧ ∂̄v ∧ ω^{n−1}` for real `u, v ∈ C²`, so `∫ u·Δ_ω u·ω^n = −∫ |∂u|²_ω·ω^n ≤ 0`. On compact connected Kähler `X`, `Δ_ω u = 0` implies that `u` is constant. Without `dω = 0`, `Δ_ω u = 0` still forces `u` to be constant on compact connected `X`, by the strong maximum principle. *Needs:* §§3.1–3.2; ComplexKahlerGeometry K6.0; DifferentialGeometry Layer 12; PDE §3.2 (C13).

**Checks.**

- `ℂⁿ`: `2Δ_ω|z|² = 4n`, the Euclidean `Δ|z|²`. On the square torus of side 1, `u = cos 2πx` has Euclidean `Δu = −4π²u` and `Δ_ω u = −2π²u`.
- Non-Kähler `ω = e^ρ ω_0` on `ℂ²` (`n = 2`): `2Δ_ω u − Δ_g u = −e^{−ρ}⟨∇ρ, ∇u⟩`, which is `−e^{−x_1}` for `ρ = u = x_1`. The identity `2Δ_ω = laplaceBeltrami` therefore needs `dω = 0`.
- `n = 1`: every metric is Kähler, and on the torus `ℂ/(ℤ + iℤ)` the kernel of `Δ_ω` is the constants.

### 5.2 Hölder invertibility and Schauder estimates

Prove, for a smooth Kähler metric `ω'` on compact connected `X`, `k ≥ 0` and `0 < α < 1`, that `Δ_{ω'}` is a bounded isomorphism `{u ∈ C^{k+2,α}(X) : ∫ u ω'^n = 0} → {v ∈ C^{k,α}(X) : ∫ v ω'^n = 0}`. Deduce that `(u, β) ↦ Δ_{ω'}u − β` is a bounded isomorphism `{u ∈ C^{k+2,α} : ∫ u ω^n = 0} × ℝ → C^{k,α}` for any fixed smooth volume form `ω^n`. The route: `Δ_{ω'}` is a smooth-coefficient elliptic operator, formally self-adjoint for `ω'^n` (§5.1). Its kernel is the constants (§5.1). PseudodifferentialOperators §6.2 gives `L²` solvability exactly for right-hand sides orthogonal to its cokernel, which is the constants by self-adjointness. Hölder regularity follows from Schauder (PseudodifferentialOperators §6.2), and boundedness of the inverse from the open mapping theorem. Prove the global Schauder estimate `‖u‖_{C^{k+2,α}} ≤ C(‖Lu‖_{C^{k,α}} + ‖u‖_{C⁰})` for operators `Lu = Re tr(a·H_{i∂∂̄u})` with `a ∈ C^{k,α}` uniformly positive definite. It is assembled on a finite atlas from the interior estimate, with higher `k` obtained by differentiating the equation. Prove compactness of `C^{k,α}(X) → C^{k,β}(X)` for `β < α` (Arzelà–Ascoli). *Needs:* §5.1; PseudodifferentialOperators §§5.4, 6.2; ComplexKahlerGeometry K5a; PDE §5.6 (E25); Mathlib `ArzelaAscoli.isCompact_closure_of_isClosedEmbedding`.

**Checks.**

- On the torus `ℂ/(ℤ + iℤ)` with the standard metric, `Δ_ω(cos 2πx) = −2π² cos 2πx`, so `Δ_ω⁻¹ cos 2πx = −cos(2πx)/(2π²)`. The constant `1` has nonzero mean and is not in the range, which is why the `β` summand is needed.
- On the circle, `u_j(x) = j^{−α} sin(jx)` is bounded in `C^{0,α}` and tends to `0` uniformly. Its `α`-Hölder quotient at `|x − y| = π/(2j)` stays above `(2/π)^α`, so no subsequence converges in `C^{0,α}`. Compactness holds only into lower exponents.
- On two components the kernel of `Δ_ω` is two-dimensional, and the isomorphism fails; connectedness is used.

### 5.3 Poincaré and Sobolev inequalities

Prove the Poincaré inequality `‖u − ū‖_{L²} ≤ C ‖du‖_{L²}` for `u ∈ H¹(X)` on a compact connected Riemannian manifold, where `ū` is the `g`-mean. The proof uses ComplexKahlerGeometry K5a's spectral decomposition of the scalar Laplacian, whose kernel is the constants by connectedness, with `C = λ_1^{−1/2}` for the first positive eigenvalue `λ_1`. Record the Sobolev inequality `‖u‖_{L^{2n/(n−1)}} ≤ C(‖du‖_{L²} + ‖u‖_{L²})` for every `C¹` function `u` on `X` of complex dimension `n ≥ 2`, norms for the Riemannian volume of `g` (`|du|_g = |∇u|_g` pointwise): it is `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add` at real dimension `2n`, with exponent `2·2n/(2n − 2) = 2n/(n−1)` (pss2012 line 278–288). *Needs:* ComplexKahlerGeometry K5a; Tau Ceti `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add`.

**Checks.**

- On the circle of length `2π`, `λ_1 = 1` and `u = sin` gives equality in Poincaré.
- On two components, the function `1` on one and `−1` on the other has `du = 0` and nonzero `u − ū`, so Poincaré fails.
- `n = 2`: the exponent is `4`, consistent with `2m/(m − 2)` at `m = 4`, and the dimension hypothesis of the Tau Ceti statement reads `2 < 4`. At `n = 1` it reads `2 < 2` and fails, matching the exclusion of `n = 1` in §6.2.

### 5.4 `L¹` bounds normalized by the supremum

Prove:

- Quasi-plurisubharmonic functions. Let `X` be compact connected with a Hermitian metric `ω` and `ω̂` a continuous real (1,1)-form. Then there is `C` such that every `ψ ∈ C²(X)` with `ω̂ + i∂∂̄ψ ≥ 0` and `sup ψ = 0` has `∫ (−ψ) ω^n ≤ C` (guedj-zeriahi2005 Proposition 1.7, line 255–274). Route: on a holomorphic coordinate ball where `ω̂ ≤ A·i∂∂̄|z|²`, the function `ψ + A|z|²` is plurisubharmonic, hence Euclidean subharmonic. The mean value inequality at a maximum point bounds `∫ (−ψ)` on one ball, and a chain of overlapping balls covers `X` by connectedness.
- `Δ_ω`-subsolutions. If `dω = 0`, there is `C(X, ω, A)` such that every `φ ∈ C²(X)` with `Δ_ω φ ≥ −A` and `sup φ = 0` has `∫ (−φ) ω^n ≤ C` (gpt2023 line 689–692). Route: `Δ_ω = (1/2)·laplaceBeltrami` is in divergence form in charts (§5.1), `∂_i(√g g^{ij}∂_j u) = 2√g·Δ_ω u`, so `u = −φ ≥ 0` satisfies `div(a∇u) ≤ f` with `a = √g g^{ij}` and the bounded `f = 2A√g`. It is continuous, so its essential infimum on a ball around a maximum point of `φ` is `0`. The weak Harnack inequality on that ball and a chain of balls conclude.

*Needs:* §§3.1, 5.1; Tau Ceti `TauCeti.le_setAverage_ball_of_laplacian_nonneg` for the first statement; `gap:weak-harnack-supersolutions` for the second statement.

**Checks.**

- `ψ = 0` with `ω̂ ≥ 0`: the integral is `0`.
- On `ℂP¹` with `ω' = i∂∂̄ log(1 + |z|²)`, the functions `ψ_ε = log((|z|² + ε)/(1 + |z|²))` satisfy `ω' + i∂∂̄ψ_ε ≥ 0` and `sup ψ_ε → 0`, and `∫ (−ψ_ε) ω'` stays bounded as `ε → 0`, as the first statement requires.
- `Δ_ω φ ≥ −A` without the normalization `sup φ = 0` allows `φ = −M` for every `M`, with unbounded integral; the normalization is what the statements control.

### Examples

The flat torus (explicit Fourier modes) and `ℂP¹` (explicit quasi-plurisubharmonic families).

### Dependencies

Layers 3–4; ComplexKahlerGeometry K5a, K6.0; PseudodifferentialOperators §§5.4, 6.2; DifferentialGeometry Layer 12; Tau Ceti `TauCeti.le_setAverage_ball_of_laplacian_nonneg` and `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add`; PDE §3.2 (C13) and §5.6 (E25); `gap:weak-harnack-supersolutions` (PDE §5.4, E23).

## Layer 6: Yau's theorem

Throughout, `(X, ω)` is compact connected Kähler, `F ∈ C^∞(X)`, and `φ` is a smooth solution of `ω_φ^n = e^F ω^n` with `ω_φ > 0`. The relative endomorphism is `h = ω⁻¹ω_φ`, with `tr h = n + Δ_ω φ`. The equation is invariant under `φ ↦ φ + M` for constants `M`, and no normalization of `φ` is assumed unless one is stated.

### 6.1 Curvature identities for two Kähler metrics

Notation. In holomorphic coordinates write `ω = i Σ g_{k̄j} dz^j ∧ dz̄^k` and `ω_φ = i Σ g'_{k̄j} dz^j ∧ dz̄^k`, as in the Conventions (on `ℂⁿ` with the standard metric `g_{k̄j} = δ_{jk}/2`), so that `Δ_ω u = g^{jk̄}∂_j∂_k̄u` and `Δ_{ω_φ} u = g'^{jk̄}∂_j∂_k̄u`. The Chern connection `∇` of `ω` on `T^{1,0}X` (ComplexKahlerGeometry K4; for a Kähler metric it is the Levi-Civita connection) has Christoffel symbols `Γ^l_{jm} = g^{lq̄}∂_j g_{q̄m}` and curvature `R_{k̄j}{}^l{}_m = −∂_k̄Γ^l_{jm}`, an `End(T^{1,0}X)`-valued (1,1)-form `Rm(ω)`; lowering with `g` gives `R_{k̄jl̄m}`. The Ricci form is `Ric(ω) = i Σ R_{k̄j} dz^j ∧ dz̄^k` with `R_{k̄j} = R_{k̄j}{}^l{}_l = −∂_j∂_k̄ log det(g_{k̄j})`, its endomorphism is `Ric(ω)^♯` with entries `g^{lk̄}R_{k̄m}`, and the scalar curvature is `s_ω = tr_ω Ric(ω) = g^{jk̄}R_{k̄j}`. The bisectional curvature of nonzero `u, v ∈ T^{1,0}_xX` is `B_ω(u, v) = R_{k̄jl̄m}u^jū^kv^mv̄^l/(|u|²_ω|v|²_ω)`, and `Λ(ω) = max(0, −inf B_ω)`, the infimum over `x ∈ X` and nonzero `u, v`, finite since `X` is compact. Primes denote the same objects for `ω_φ`, with `∇'` its Chern connection. The relative endomorphism is `h = g⁻¹g'`, with entries `h^j{}_k = g^{jp̄}g'_{p̄k}`; `T = ∇'h·h⁻¹ = Γ' − Γ` is an `End(T^{1,0}X)`-valued (1,0)-form, `S = |T|²_{ω_φ}` with every index contracted by `g'`, and `|∂u|²_{ω_φ} = g'^{jk̄}∂_ju ∂_k̄u`.

Prove, for Kähler forms `ω` and `ω_φ` on `X` with `ω_φ^n = e^F ω^n` (pss2012 (2.2), (6.2)–(6.6) and (7.1)–(7.4), line 163–164, 994–1016 and 1046–1064):

- `Ric(ω_φ) = Ric(ω) − i∂∂̄F`, and `Ric(ω)` is unchanged when `ω` is multiplied by a positive constant.
- `∇̄'T = Rm(ω) − Rm(ω_φ)`, that is `∂_q̄ T_j = R_{q̄j} − R'_{q̄j}` as endomorphisms of `T^{1,0}X`: the comparison of the curvatures of two Hermitian metrics on the same holomorphic bundle (pss2012 line 997–1002).
- The trace identity `Δ_{ω_φ} tr h = −s_ω + Δ_ω F + K + G`, with the curvature term `K = (h⁻¹)^p{}_m g^{mr̄}R_{r̄p}{}^j{}_k h^k{}_j` and the gradient term `G = g'^{pq̄} tr(∇'_p h · h⁻¹ · ∇'_q̄ h)`, a Hermitian square in `T`, so `G ≥ 0`. In a `g`-unitary frame `(e_p)` at `x` diagonalizing `h = diag(λ_1, …, λ_n)`, `K = Σ_{p,j} B_ω(e_p, e_j)·λ_j/λ_p ≥ −Λ(ω)·tr h·tr h⁻¹`.
- The logarithmic form `Δ_{ω_φ} log tr h = (−s_ω + Δ_ω F + K)/tr h + Y`, where `Y = G/tr h − |∂ tr h|²_{ω_φ}/(tr h)²` is nonnegative by the Cauchy–Schwarz inequality (the Yau–Aubin inequality, pss2012 line 1015–1016).
- Calabi's identity `Δ_{ω_φ} S = |∇'T|²_{ω_φ} + |∇̄'T|²_{ω_φ} + 2 Re⟨Θ, T⟩_{ω_φ} − ⟨T, Q(T)⟩_{ω_φ}`. Here `Θ_j = g'^{pq̄}∇'_p R_{q̄j} − ∇'_j Ric(ω_φ)^♯`, by the second item and the second Bianchi identity of `ω_φ`, and `Q(T)(v) = [Ric(ω_φ)^♯, T(v)] − T(Ric(ω_φ)^♯v)` for `v ∈ T^{1,0}X`, the commutator of `∇'_p` and `∇'_q̄` on `T`. By the first item and `∇' − ∇ = T`, `Θ` and `Q` involve only `Rm(ω)`, `∇Rm(ω)`, `h`, `T` and the derivatives of `F` up to order three.

Each identity holds for every pair of Kähler metrics. Under the simultaneous rescaling `(ω, ω_φ) ↦ (cω, cω_φ)` with `c > 0`, which leaves `F`, `h`, the Christoffel symbols and `T` unchanged, each identity is homogeneous, of one of three degrees, because every inverse coefficient `g^{jk̄}` or `g'^{jk̄}` contributes `c⁻¹` and every lowered index `c`. Degree `0`: the Ricci coefficients `R_{k̄j}` (so the Ricci form), the endomorphism-valued curvature `Rm(ω)` and `∇̄'T`; these are the first two identities. Degree `−1`: `s_ω`, `B_ω`, `Λ(ω)`, `S`, `K`, `G`, `Y`, `|∂u|²_{ω_φ}` and the scalar Laplacians `Δ_ω`, `Δ_{ω_φ}`; these are the terms of the trace and logarithmic trace identities. Degree `−2`: `Δ_{ω_φ}S`, `|∇'T|²_{ω_φ}`, `|∇̄'T|²_{ω_φ}`, `Re⟨Θ, T⟩_{ω_φ}` and `⟨T, Q(T)⟩_{ω_φ}`, since `Θ` and `Q` carry one inverse metric more than `T`; these are the terms of Calabi's identity. pss2012 writes `ω_0 = (i/2) Σ g_{k̄j} dz^j ∧ dz̄^k`, so its coefficient matrices are those of `(2ω, 2ω_φ)` in the Conventions. Its identities, read with its density `F` as `e^F`, are therefore the identities above for that pair, and they hold verbatim as identities among coefficients; its values convert by degree. Its Ricci coefficients, curvature endomorphisms and `∇̄'T` equal ours. Its `R`, `S` and Laplacians, and every term of its trace identities, are half of ours (`s_ω`, `S`, `Δ_ω`, `Δ_{ω_φ}`). Every term of its Calabi identity is a quarter of ours. Its curvature constant (5.4) (line 837–840) is replaced here by `Λ(ω)`, which gives the lower bound for `K` above. *Needs:* §§3.1, 5.1; ComplexKahlerGeometry K4, K6.0.

**Checks.**

- On a flat torus `Ric(ω) = 0` and `Λ(ω) = 0`, and `ω_φ = ω` gives `S = 0`.
- On `ℂP¹` with `ω = i∂∂̄ log(1 + |z|²)`, `g_{1̄1} = (1 + |z|²)^{−2}` and `R_{1̄1}{}^1{}_1 = 2g_{1̄1}`, so `Ric(ω) = 2ω`, `s_ω = 2`, `B_ω ≡ 2` and `Λ(ω) = 0`. For `2ω` the Ricci form and the curvature endomorphism `R_{1̄1}{}^1{}_1` are unchanged (degree `0`): `Ric(2ω) = Ric(ω) = 2ω`, which is `1·(2ω)`. Its scalar and bisectional curvatures are `s = 1` and `B ≡ 1` (degree `−1`).
- On a compact Riemann surface with `Ric(ω) = −ω`, `B_ω ≡ −1` and `Λ(ω) = 1`. For `n = 1`, `K = B_ω·λ_1/λ_1 = −1 = −Λ(ω)·tr h·tr h⁻¹`, the lower bound for `K` with equality.
- `ω_φ = s·ω` with `s > 0` constant (not of the form `ω + i∂∂̄φ` unless `s = 1`): `tr h = ns`, `F = n log s`, `T = 0` and `G = 0`. In a unitary frame `K = Σ_{p,j} B_ω(e_p, e_j) = s_ω`, so the trace identity reads `0 = −s_ω + 0 + s_ω + 0`.
- A nonconstant witness for the factors: on the torus `ℂ/(ℤ + iℤ)` with the standard metric (`g_{1̄1} = 1/2`, `n = 1`) take `φ = (a/2π²) cos 2πx` with `0 < a < 1`. Then `Δ_ω φ = −a cos 2πx`, `ω_φ = qω` with `q = 1 − a cos 2πx`, `e^F = q`, `h = q`, `T = ∂_z log q` and `S = q'²/(2q³)` (prime is `d/dx`). At `x = 0`, `Δ_{ω_φ} tr h = q''/(2q) = 2π²a/(1 − a)`, which equals `Δ_ω F = (1/2)(log q)''`, since `s_ω = K = 0` and `G = q'²/(2q²) = 0` there. At `x = 1/4`, where `q = 1`, `q' = 2πa` and `q'' = 0`, the left side is `0`, while `Δ_ω F = −2π²a²` and `G = 2π²a²`. At `x = 0`, `Δ_{ω_φ} S = (1/(2q))S'' = 8π⁴a²/(1 − a)⁴`, and Calabi's identity gives the same value as `|∇'T|² + |∇̄'T|²`, each term `4π⁴a²/(1 − a)⁴`, the terms in `Θ` and `Q` vanishing with `T(0) = 0`.
- The three degrees on the same torus: doubling both metrics (`g_{1̄1} = 1`, `g'_{1̄1} = q`, which are also pss2012's coefficients for this pair) leaves `h = q`, `T` and `F` unchanged. It halves `S` to `q'²/(4q³)` and `Δ_{ω_φ} tr h` at `x = 0` to `π²a/(1 − a)` (degree `−1`), and divides `Δ_{ω_φ}S` at `x = 0` by four, to `2π⁴a²/(1 − a)⁴` (degree `−2`). At `a = 1/2` the value `32π⁴` becomes `8π⁴`; a single degree `−1` for all identities would give `16π⁴`.

### 6.2 The `C⁰` estimate

Prove, for `n ≥ 2`, that `osc_X φ ≤ C(n, sup_X F, ω)` (pss2012 Theorem 3, line 245–308; yau1978 §2). The route is Moser iteration on `sup φ − φ + 1`, using `(e^F − 1)ω^n = i∂∂̄φ ∧ Σ_j ω_φ^{n−1−j} ∧ ω^j` integrated by parts, the Sobolev inequality, and the Poincaré inequality for the starting `L²` bound (pss2012 line 299–303). The Sobolev inequality is applied only to powers of the smooth positive function `sup φ − φ + 1`, which are `C¹`. The dependence on `sup F` alone, not on `inf F`, is the Kähler case of tosatti-weinkove2010 line 104–106. *Needs:* §§3.2, 5.3; DifferentialGeometry Layer 5; Tau Ceti `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add`.

**Checks.**

- `F = 0`: `φ` is constant, by uniqueness, so `osc = 0`.
- On the torus `ℂ²/ℤ⁴` with the standard metric and `φ = ε·cos(2πx_1)`, `0 < ε < 1/(2π²)`: `i∂∂̄φ = −2π²ε cos(2πx_1)·dx_1 ∧ dy_1`, so, with `q = 1 − 2π²ε cos 2πx_1`, the relative eigenvalues of `ω_φ` are `q` and `1`, the decreasingly sorted vector is `λ[ω_φ] = (max(q, 1), min(q, 1))`, and `φ` solves the equation exactly with `e^F = q`. At `ε = 1/(4π²)` the vector is `(1, 1/2)` at `x_1 = 0` and `(3/2, 1)` at `x_1 = 1/2`. Then `∫ e^F ω² = ∫ ω²`, `sup F = log(1 + 2π²ε)` and `osc φ = 2ε`.
- For `n = 1` no Sobolev embedding into `L^{2n/(n−1)}` exists; the case `n = 1` is handled linearly in §6.6.

### 6.3 The `C²` estimate

Prove the Aubin–Yau estimate `0 < tr_ω ω_φ ≤ C·exp(A(φ − inf φ))`, with `A` and `C` depending only on `sup F`, a lower bound for `Δ_ω F`, the constant `Λ(ω)` and an upper bound for the scalar curvature `s_ω` of §6.1 (pss2012 Theorem 8, line 981–990, proof line 994–1031). Combined with §6.2 and the equation it gives `C⁻¹ω ≤ ω_φ ≤ Cω`, with `C` depending on `‖F‖_{C²}` and `ω`. The route applies the maximum principle to `log tr h − Aφ` using the logarithmic form of §6.1 with `Y ≥ 0`, `K/tr h ≥ −Λ(ω)·tr h⁻¹` and `(tr h)⁻¹ ≤ tr h⁻¹`, which give `Δ_{ω_φ} log tr h ≥ −(C_1 + Λ(ω))·tr h⁻¹ − C_2`, with the lower bound from `λ_i ≥ e^F/∏_{j≠i} λ_j`. *Needs:* §§3.1, 6.1–6.2.

**Checks.**

- `F = 0`, `φ = 0`: `tr h = n`.
- For `ω_φ` with `λ[ω_φ] = (4, 1/4)` at a point (`n = 2`, `F(x) = 0`), `tr h = 17/4`, and the lower bound `λ_2 ≥ e^F/λ_1 = 1/4` is attained.
- The step `(tr h)⁻¹ ≤ tr h⁻¹` of pss2012 (6.8) at `λ = (4, 1/4)` reads `4/17 ≤ 17/4`. At `λ = e` both sides are `1/n` and `n`, so the inequality is strict for `n ≥ 2` and an equality only at `n = 1`.

### 6.4 The `C³` estimate

Prove Calabi's estimate: `S = |∇'h h⁻¹|²_{ω_φ}`, equal to `|∇_ω i∂∂̄φ|²` up to the metric equivalence of §6.3, is bounded by a constant depending on the `C²` bound of §6.3, `inf F`, `‖F‖_{C³}` and `‖Rm(ω)‖_{C¹}` (pss2012 Theorem 9, line 1078–1081, with (7.5)–(7.7), line 1070–1077; twwy2015 line 132–135). The route is the maximum principle for `S + A·tr h`: once `C⁻¹ω ≤ ω_φ ≤ Cω`, Calabi's identity of §6.1 gives `Δ_{ω_φ} S ≥ −C_1S − C_2`, since `Θ` is of order `1 + S^{1/2}` and `Q(T)` of order `S`, and the gradient term of the trace identity satisfies `G ≥ C_3 S`, so `Δ_{ω_φ}(S + A·tr h) ≥ C_4S − C_5` for large `A`. *Needs:* §§6.1, 6.3.

**Checks.**

- `ω_φ = ω` gives `S = 0`.
- On the torus solution of §6.2 with `h = diag(1 − 2π²ε cos 2πx_1, 1)`, only `∂_{z_1}h_{11} = 2π³ε sin(2πx_1)` is nonzero, so `S = O(ε²)` and `S ≠ 0` for `ε ≠ 0`.

### 6.5 Higher-order estimates and regularity

Prove three statements. First, if `sup_X φ = 0`, then `‖φ‖_{C^{2,α}} ≤ C(X, ω, α, ‖F‖_{C³})` for each `α < 1`: §6.4 bounds the first derivatives of the mixed second derivatives `∂_j∂_k̄φ`, so `Δ_ω φ` is Lipschitz, the global Schauder estimate of §5.2 for `Δ_ω` bounds `‖φ‖_{C^{2,α}}` by `C(‖Δ_ω φ‖_{C^{0,α}} + ‖φ‖_{C⁰})`, and `‖φ‖_{C⁰} = osc_X φ` is bounded by §6.2. Second, if `sup_X φ = 0`, then for each `k ≥ 0`, `‖φ‖_{C^{k+2,α}} ≤ C_k(X, ω, α, ‖F‖_{C^{m,α}})` with `m = max(3, k + 1)`, by differentiating the equation in coordinates and applying the interior Schauder estimate, inductively in `k`, to the linear equation `Δ_{ω_φ}(∂φ) = ∂F + (lower order)`, whose coefficients have the regularity of `i∂∂̄φ`; the constants of §§6.2–6.4 enter through `‖F‖_{C³}`, which is why `m ≥ 3` even for `k = 0, 1` (twwy2015 line 134–136 records that this route uses three derivatives of the right-hand side). Third, with no normalization, a `C^{2,α}` solution with smooth `F` and `ω_φ > 0` is smooth. The route is difference quotients with the interior Schauder estimate (tosatti-weinkove2010 line 93–99, "standard elliptic theory"; gilbarg-trudinger2001 Lemma 17.16). A solution normalized instead by `∫ φ ω^n = 0`, as on the continuity path of §6.6, differs from `φ − sup φ` by the constant `sup φ`, and `0 ≤ sup φ ≤ osc φ`; so the first two bounds hold for it with the bound of §6.2 added to the constant. *Needs:* §§5.2, 6.2–6.4; PDE §5.6 (E25).

**Checks.**

- With `sup φ = 0`, `F = 0` gives `φ = 0` (§4.2) and every norm `0`.
- The normalization is needed for the quantitative bounds: on a flat torus with `F = 0`, `φ = M` constant solves the equation with `ω_φ = ω` and `osc φ = 0`, while `‖φ‖_{C^{k,α}} ≥ |M|` for every `M`. The smoothness statement needs no normalization.
- The linear case `n = 1`: `Δ_ω φ = e^F − 1` with `F ∈ C^{k,α}` gives `φ ∈ C^{k+2,α}`, the Schauder gain of exactly two derivatives.
- For `F ∈ C^{0,α}` only, the bootstrap starts but the `C²` estimate of §6.3 needs `Δ_ω F` bounded below, which a `C^{0,α}` function need not have. The hypothesis `F ∈ C^∞` is used.

### 6.6 Yau's theorem

Prove Yau's theorem: let `(X, ω)` be a compact connected Kähler manifold of dimension `n ≥ 1` and `F ∈ C^∞(X, ℝ)`. Then there are a unique `b ∈ ℝ` and a unique `φ ∈ C^∞(X, ℝ)` with `ω + i∂∂̄φ > 0`, `(ω + i∂∂̄φ)^n = e^{F+b} ω^n` and `sup φ = 0`. Moreover `b = log(∫ ω^n / ∫ e^F ω^n)`, and `‖φ‖_{C^k} ≤ C_k(X, ω, F)` for every `k` (tosatti-weinkove2010 line 52–59; pss2012 Theorem 1, line 170–179; yau1978 §2; szekelyhidi2014 Theorem 3.1).

Prove the admissible-pair form: for a Kähler form `χ` and normalized `F`, eigenvalues still relative to `ω_X`, the Monge–Ampère equation `χ_φ^n = c^n e^{nF} ω_X^n` has a unique solution, with `c^n = ∫ χ^n / V`. This is the theorem with background `χ` and the smooth function `nF + log(ω_X^n/χ^n)`.

Route. For `n ≥ 2`, run the continuity method along `tF`, `t ∈ [0, 1]` (pss2012 §2.2, line 216–233). The solvable set contains `0`. It is open by §5.2 and the inverse function theorem `HasStrictFDerivAt.toOpenPartialHomeomorph` applied to `(φ, β) ↦ log(ω_φ^n/ω^n) − β` between the Banach spaces `{u ∈ C^{2,α} : ∫ u ω^n = 0} × ℝ` and `C^{0,α}`, whose strict derivative at a smooth solution is the isomorphism of §5.2, with regularity of the new solutions by §6.5. It is closed by §§6.2–6.5, whose constants are uniform in `t` since `‖tF‖ ≤ ‖F‖` in every norm, and §5.2's compactness; the path is normalized by `∫ φ ω^n = 0`, and §6.5 transfers its bounds to that normalization. The constant `b` follows by integrating (§3.2), and uniqueness is §4.2. For `n = 1` the equation is `Δ_ω φ = e^{F+b} − 1`, solvable exactly for the stated `b` by §5.2, and positivity `ω_φ = e^{F+b}ω > 0` is automatic. *Needs:* §§3.2–3.3, 4.2, 5.2, 6.2–6.5; Mathlib `HasStrictFDerivAt.toOpenPartialHomeomorph`.

**Checks.**

- `F = 0`: `b = 0` and `φ = 0`. `F = a` constant: `b = −a` and `φ = 0`.
- Square torus of area 1, `n = 1`, `F = ε cos 2πx`: `b = −log I_0(ε)`, where `I_0` is the modified Bessel function, so `b = −ε²/4 + O(ε⁴)`, and `φ` solves `Δ_ω φ = e^{ε cos 2πx}/I_0(ε) − 1`.
- Two components with `∫_{X_1} e^F ω^n/∫_{X_1} ω^n ≠ ∫_{X_2} e^F ω^n/∫_{X_2} ω^n` admit no single `b`; connectedness is necessary for existence as well as uniqueness.
- Admissible-pair form with `χ = 2ω` on `ℂP¹` (area 1) and normalized `F`: `c = 2`.

### Examples

Flat tori (explicit linearized solutions), `ℂP^n` with Fubini–Study (`F = 0`), and products of these with the product metric.

### Dependencies

Layers 3–5; ComplexKahlerGeometry K4, K6.0; DifferentialGeometry Layer 5; Tau Ceti `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add` (§6.2); Mathlib inverse function theorem.

## Layer 7: Exponential integrability of quasi-plurisubharmonic functions

### 7.1 The local estimate

Prove, in two steps.

The one-variable estimate. Let `0 < r < R' < R` and `A > 0`. There are `α_1 = log(R/R')/A` and a constant `C_1` depending only on `r`, `R'` and `R` such that every subharmonic `v : D(0, R) → [−∞, 0]` on the disc `D(0, R) ⊂ ℂ`, continuing subharmonically to a neighbourhood of the closed disc, with `v(0) ≥ −A` satisfies `∫_{D(0, r)} e^{−αv} dλ ≤ C_1` for `0 < α ≤ α_1`. Route. Jensen's formula at `0` on `D(0, R)`, the Green–Riesz representation at the centre, gives `(1/2π)·∫_{D(0,R)} log(R/|w|) dμ(w) = m_R − v(0) ≤ A` for the Riesz measure `μ = Δv ≥ 0` and the circle mean `m_R ≤ 0`, hence `M = μ(D(0, R')) ≤ 2πA/log(R/R')`. The Green–Riesz representation on `D(0, R')` (demailly2012 Proposition 4.22, line 1717–1725, Chapter I §4.B, p. 37) writes `v = ∫_{D(0,R')} G_{R'}(·, w) dμ(w) + h` with `G_{R'} ≤ 0` the Green function and `h ≤ 0` the Poisson integral of the boundary values. The circle mean `m_{R'} ≥ v(0) ≥ −A` and Harnack's inequality for the nonnegative harmonic function `−h` (demailly2012 Proposition 4.22(b), line 1726–1731) give `−h ≤ C_H·A` on `D(0, r)` with `C_H = (R' + r)/(R' − r)`. On `D(0, r)`, `−G_{R'}(t, w) ≤ (1/2π)·log(2R'/|t − w|)`, so Jensen's inequality for the convex exponential and the probability measure `μ/M` gives `e^{−αv(t)} ≤ e^{αC_H A}·M⁻¹·∫ (2R'/|t − w|)^{αM/2π} dμ(w)`, whose integral over `t ∈ D(0, r)` is at most `e^{αC_H A}·2π(2R')²/(2 − αM/2π)` when `αM < 4π`; for `α ≤ α_1` the exponent `αM/2π` is at most `1` and `e^{αC_H A} ≤ (R/R')^{C_H}`, so `C_1 = 2π(2R')²(R/R')^{C_H}`. When `M = 0` the function is harmonic and the Harnack bound alone suffices.

The local estimate. For `n ≥ 1` and `A > 0` there are `α = α(n, A) > 0` and `C = C(n)` such that every plurisubharmonic `u ∈ C²(B(0, 2))`, `B(0, 2) ⊂ ℂⁿ`, with `u ≤ 0` and `∫_{B(0,2)} (−u) ≤ A` satisfies `∫_{B(0,1)} e^{−αu} ≤ C`. This is the local estimate that pss2012 (line 2943–2945) and gpt2023 (line 287–289) attribute to Hörmander (hormander1990, Chapter IV). Route. Since `∫_{B(0,1/4)} (−u) ≤ A` and `−u` is continuous, there is `x_0 ∈ B(0, 1/4)` with `u(x_0) ≥ −A'`, `A' = A/vol(B(0, 1/4))`. For every unit vector `ξ ∈ ℂⁿ` the slice `v_ξ(t) = u(x_0 + tξ)` is subharmonic on `D(0, 7/4)`, nonpositive, with `v_ξ(0) = u(x_0) ≥ −A'`, because `H_{i∂∂̄u} ≥ 0` (§3.1) restricts on the complex line through `x_0` in direction `ξ` to `Δ_t v_ξ(t) = 2·H_{i∂∂̄u}(ξ, ξ) ≥ 0` at `x_0 + tξ`, for `ξ` read as a real tangent vector, by the formula `H_{i∂∂̄u}(v, v) = (1/2)(D²u(v, v) + D²u(Jv, Jv))` of §3.1; in the coefficients of `i∂∂̄u = i Σ u_{jk̄} dz^j ∧ dz̄^k` the same quantity is `Δ_t v_ξ = 4 Σ u_{jk̄}ξ_jξ̄_k`. A `C²` function with nonnegative Laplacian satisfies the sub-mean-value inequality (`TauCeti.le_setAverage_ball_of_laplacian_nonneg`; demailly2012 line 1534), so the slice is subharmonic. The one-variable estimate with `R = 3/2`, `R' = 11/8`, `r = 5/4` and `A'` bounds `∫_{D(0,5/4)} e^{−αv_ξ}` by `C_1` for `α ≤ α(n, A) = log(12/11)/A'`, uniformly in `ξ`. Polar coordinates centred at `x_0`, `∫_{B(x_0,5/4)} g = (1/2π)·∫_{S^{2n−1}} ∫_{D(0,5/4)} g(x_0 + tξ)·|t|^{2n−2} dλ(t) dσ(ξ)`, integrate the slice bounds over the sphere of directions, and `B(x_0, 5/4) ⊇ B(0, 1)`; so `C = (5/4)^{2n−2}·vol(S^{2n−1})·C_1/2π`. No monotonicity formula for Lelong numbers is needed. *Needs:* §3.1; Tau Ceti `TauCeti.le_setAverage_ball_of_laplacian_nonneg`; Mathlib `ConvexOn.map_integral_le`.

**Checks.**

- One variable, a point mass: take `R/2 < r < R' < R`, for instance `r = 3R/4` and `R' = 7R/8`. `v(t) = log(|t − w_0|/(2R))` with `|w_0| = R/2` is subharmonic on `ℂ`, `≤ 0` on the neighbourhood `D(0, 3R/2)` of the closed disc `D̄(0, R)` (there `|t − w_0| ≤ |t| + R/2 < 2R`), has `v(0) = −log 4`, so `A = log 4`, and Riesz measure `2π·δ_{w_0}`. Since `w_0 ∈ D(0, r) ⊂ D(0, R')`, `M = 2π ≤ 2π·log 4/log(8/7)`, as the Jensen bound requires. `e^{−αv} = (2R/|t − w_0|)^α` is integrable on `D(0, r)`, which contains the pole, exactly when `α < 2`, the threshold `αM < 4π` of the Jensen step; the admissible `α_1 = log(8/7)/log 4 ≈ 0.096` is below it. For `R' < R/2` the pole would lie outside `D(0, R')`, `M` would be `0`, and the check would test nothing.
- One variable, harmonic: `v ≡ −A` has `M = 0`, and the integral is `πr²·e^{αA}`, within the stated bound since `C_H ≥ 1`.
- One variable, the centre hypothesis: `v = c·log(|t|/R)` with `c > 0` has `v(0) = −∞`, so the estimate does not apply at `0`. Recentred at `t_0 = R/4` on the disc `D(t_0, R/2) ⊂ D(0, 3R/4)`, where `v < 0`, with intermediate radius `3R/8` and inner radius `5R/16`, all inside the original disc, it applies with `A = −v(t_0) = c·log 4` and gives `α_1 = log(4/3)/(c·log 4)`. The pole `0` lies in `D(t_0, 5R/16)`, and `e^{−αv} = (R/|t|)^{αc}` is integrable near `0` exactly when `αc < 2`, which every `α ≤ α_1` satisfies (`α_1 c ≈ 0.21`). The constant `α` must shrink like `1/c`.
- `u_ε = c·log((|z|² + ε)/(4 + ε))` with `c > 0` and `0 < ε ≤ 1` is smooth, plurisubharmonic and `≤ 0` on `B(0, 2) ⊂ ℂⁿ`, with `∫_{B(0,2)} (−u_ε) ≤ c·∫_{B(0,2)} log(5/|z|²) = c·K(n)` uniformly in `ε`. As `ε ↓ 0`, `∫_{B(0,1)} e^{−αu_ε}` increases to `∫_{B(0,1)} (4/|z|²)^{αc}`, which is finite exactly when `αc < n`. A bound uniform in `ε` therefore forces `α < n/c = nK(n)/A` for `A = c·K(n)`: `α` must shrink like `1/A`, as `α(n, A)` does, and an `α` independent of `A` is false.
- `u = 0` gives `vol(B(0, 1))`.
- The slice Laplacian: `n = 1`, `u = |z|² − 4` on `B(0, 2)`, `x_0 = 0`, `ξ = 1`. Here `H_{i∂∂̄u}(ξ, ξ) = 2` (the Conventions' witness `λ[i∂∂̄|z|²] = 2`), `u_{11̄} = 1`, and the slice `|t|² − 4` has `Δ_t = 4 = 2·2 = 4·1`; the factor `4` in front of `H` would give `8`.
- Subharmonic is not enough in `ℂ²`: `u_ε = −(|x|² + ε)^{−1/2}` on `B(0, 2) ⊂ ℂ² = ℝ⁴` is smooth and `≤ 0`, with `∫_{B(0,2)} (−u_ε) ≤ ∫_{B(0,2)} |x|^{−1} < ∞` uniformly in `ε`, and subharmonic: its real Laplacian is `(|x|² + 4ε)(|x|² + ε)^{−5/2} > 0`. It is not plurisubharmonic: the radial eigenvalue of `(∂_j∂_k̄u_ε)` is `(1/4)(2ε − |x|²)(|x|² + ε)^{−5/2}`, negative for `|x|² > 2ε`. As `ε ↓ 0`, `∫_{B(0,1)} e^{−αu_ε}` increases to `∫_{B(0,1)} e^{α/|x|} = ∞` for every `α > 0`, so no bound uniform in `ε` holds. Plurisubharmonicity is used exactly where the slices along complex lines are taken to be subharmonic.

### 7.2 The global estimate

Prove: let `X` be compact connected with a Hermitian metric `ω` and `ω̂` a continuous real (1,1)-form. There are `α > 0` and `C` such that every `ψ ∈ C²(X)` with `ω̂ + i∂∂̄ψ ≥ 0` satisfies `∫_X e^{−α(ψ − sup ψ)} ω^n ≤ C`. Consequently `∫_X (sup ψ − ψ)^p ω^n ≤ C_p` for every `p ≥ 1` (pss2012 Theorem 31, line 2946–2955; gpt2023 line 283–289, which attributes the global form to tian1987). The route covers `X` by coordinate balls with `ω̂ ≤ A·i∂∂̄|z|²` and applies §7.1 to `ψ + A|z|² − sup ψ − A·4`, with the `L¹` bound of §5.4. No Kähler hypothesis is needed. *Needs:* §§5.4, 7.1.

**Checks.**

- `ψ = 0` with `ω̂ ≥ 0`: the integral is `V`.
- On `ℂP¹` with `ω̂ = i∂∂̄ log(1 + |z|²)`, the functions `ψ_ε` of §5.4 show that every admissible `α` is `< 1`: near `0`, `e^{−αψ_ε} ≈ (|z|² + ε)^{−α}`, whose integral is unbounded as `ε → 0` when `α ≥ 1`.
- Scaling: `ψ` is `ω̂`-quasi-plurisubharmonic exactly when `2ψ` is `2ω̂`-quasi-plurisubharmonic, so the optimal `α` for `2ω̂` is half that for `ω̂`. The constant depends on `ω̂`.

### Examples

`ℂP¹` with Fubini–Study and the logarithmic families.

### Dependencies

Layers 3, 5; Tau Ceti `TauCeti.le_setAverage_ball_of_laplacian_nonneg`; Mathlib `ConvexOn.map_integral_le`.

## Layer 8: Sharp `L^∞` estimates

Throughout, `(X, ω_X)` is compact connected Kähler of dimension `n`, `(f, Γ)` is an admissible pair satisfying the structural condition with constant `γ`, `p > n`, and the degenerating setting of §3.4 is used with `χ ≥ 0` smooth and closed. Write `Ω_s = {φ_t ≤ −s}` for the closed sublevel set and `Ω_s^∘ = {φ_t < −s}` for the strict one; they differ by the level set `{φ_t = −s}`, which can have positive measure.

### 8.1 Comparison with an auxiliary Monge–Ampère equation

Prove (gpt2023 Lemma 1, line 198–302): let `φ_t ∈ C²` solve the degenerating equation with normalized smooth `F_t`, constant `c_t > 0` and `E_t(φ_t) ≤ Ē`. There are `C, β_0 > 0` depending only on `n`, `ω_X`, `χ` and `γ` such that for every `s > 0` with `inf φ_t < −s`, `∫_{Ω_s} exp{β_0·(−(φ_t + s)/A_s^{1/(n+1)})^{(n+1)/n}} ω_X^n ≤ C·exp(C·Ē)`. Here `A_s = (c_t^n/V_t)·∫_{Ω_s} (−φ_t − s) e^{nF_t} ω_X^n`, which is positive exactly when `inf φ_t < −s`, so the quotient is defined. The integrand of `A_s` vanishes on `{φ_t = −s}`, so `A_s` is also the integral over `Ω_s^∘`.

Route. Solve `(ω_t + i∂∂̄ψ)^n = (smooth positive approximations of τ_k(−φ_t − s))·A_{s,k}⁻¹·c_t^n e^{nF_t} ω_X^n` with `sup ψ = 0` by §6.6, with background `ω_t`. Apply the maximum principle (§3.1) to `Φ = −ε(−ψ + Λ)^{n/(n+1)} − (φ_t + s)` with the constants of gpt2023 (2.6). At the maximum use §1.5: `G = ∇ log F_f` is positive definite, `det G ≥ γ f^{−n}`, `tr(G·h) = 1`, and the AM–GM trace inequality. Then apply §7.2 with `ω̂ = a_0 ω_X`, where `χ ≤ (a_0 − 1)ω_X`, and dominated convergence as `k → ∞`. The smooth approximation of the right-hand side, uniform in `x`, replaces the source's direct use of a `C²` right-hand side. *Needs:* §§1.5, 2.4, 3.1, 3.4, 6.6, 7.2.

**Checks.**

- If `φ_t ≡ 0` then `Ω_s` is empty for every `s > 0`, and the statement is vacuous, consistent with `A_s = 0`.
- For `s ≥ −inf φ_t` the hypothesis `inf φ_t < −s` fails. At `s = −inf φ_t` the integrand would be `0/0` on the minimum set, which is why that case is excluded.
- Monge–Ampère pair with `χ = 0`, `t = 1` and `F_t = 0`: `φ_t = 0` by §6.6, so the lemma is vacuous, while `c_t^n/V_t = 1/V`.

### 8.2 De Giorgi's iteration lemma

Prove (gpt2023 Lemma 2, line 412–426): let `φ : [0, ∞) → [0, ∞)` be nonincreasing and right-continuous with `φ(s) → 0`, and suppose `r·φ(s + r) ≤ B_0·φ(s)^{1+δ_0}` for all `s > 0` and `r ∈ [0, 1]`, with `B_0, δ_0 > 0`. If `φ(s_0)^{δ_0} < 1/(2B_0)`, then `φ(s) = 0` for `s ≥ s_0 + 1/(1 − 2^{−δ_0})`. *Needs:* none beyond real analysis.

**Checks.**

- `φ = 1_{[0,1)}` satisfies the hypothesis with `B_0 = 1` and vanishes from `s = 1`.
- `φ(s) = e^{−s}` never vanishes. It violates the hypothesis for large `s`, since `r e^{−s−r}/(B_0 e^{−(1+δ_0)s}) → ∞`.
- `δ_0 = 0` is excluded: `φ(s) = e^{−s}` satisfies `rφ(s + r) ≤ φ(s)` with `B_0 = 1`.

### 8.3 Degenerating backgrounds

Prove the Guo–Phong–Tong estimate on degenerating backgrounds (gpt2023 Theorem 2, line 120–130): if `φ_t ∈ C²` solves the degenerating equation with normalized smooth `F_t`, then `sup_X |φ_t| ≤ C`, with `C` depending only on `ω_X`, `χ`, `p`, `n`, `γ` and upper bounds for `c_t^n/V_t`, `E_t(φ_t)` and `Ent_p(F_t)`. Explicitly, `inf φ_t ≥ −(2B_0)^{1/δ_0}Ē − 1/(1 − 2^{−δ_0})` with `δ_0 = (p − n)/(pn)` and `B_0` as in gpt2023 (2.15) (line 384–387 and 437–441). The route is §8.1 with the generalized Young inequality for `η(x) = (log(1 + x))^p`, Hölder's inequality and §8.2 applied to the strict sublevel function `Φ(s) = (c_t^n/V_t)·∫_{Ω_s^∘} e^{nF_t} ω_X^n` (gpt2023 line 303–441). `Φ` is nonincreasing, tends to `0` by Chebyshev's inequality and the energy bound, and is right-continuous because `Ω_s^∘` increases to `Ω_{s_0}^∘` as `s ↓ s_0`; the closed sublevel function `s ↦ (c_t^n/V_t)·∫_{Ω_s} e^{nF_t} ω_X^n`, which gpt2023 line 407 uses, is only left-continuous where a level set of `φ_t` has positive measure (see the Checks). The Hölder step of gpt2023 (2.14) is run on `Ω_s^∘`, which carries the integrand of `A_s` (§8.1), and gives `A_s ≤ B_0·Φ(s)^{1+δ_0}`; the lower bound `A_s ≥ r·Φ(s + r)` for `r ∈ [0, 1]` holds since `−φ_t − s > r` on `Ω_{s+r}^∘`. The conclusion `Φ(S_∞) = 0`, that is `Ω_{S_∞}^∘ = ∅`, gives `inf φ_t ≥ −S_∞`. *Needs:* §§3.4, 8.1–8.2.

**Checks.**

- Monge–Ampère pair with `χ = ω_X`, `F_t = 0`: `φ_t = 0` solves with `c_t = 1 + t`, and the bound holds with `sup |φ_t| = 0`.
- `δ_0 = (p − n)/(pn)` is positive exactly for `p > n`; at `p = n` the argument gives no bound, matching the hypothesis.
- `n = 1`, Laplace pair: the equation is linear, `δ_0 = (p − 1)/p`, and the estimate reduces to an `L¹(log L)^p` bound for the Poisson equation on a Riemann surface.
- Right-continuity needs the strict sublevel sets: take `φ_t = −ε·ρ` with `ρ` a smooth function, `0 ≤ ρ ≤ 1`, equal to `1` exactly on a closed set with nonempty interior `U` and to `0` somewhere, and `ε` so small that `ω_{t,φ_t} > 0`; it solves the equation for the smooth normalized `F_t` and the constant `c_t` that the equation defines, with `sup φ_t = 0`. Then `Ω_s` has measure at least `vol(U) > 0` at `s = ε` and is empty for `s > ε`, so the closed sublevel function jumps at `ε` from the right, whereas `Ω_ε^∘ = ∅` and the strict sublevel function is right-continuous at `ε`.

### 8.4 The Monge–Ampère case

Prove (gpt2023 Theorem 4 with Lemmas 5–6, line 785–850): for the Monge–Ampère pair, `c_t^n/V_t = 1/V`, `E_t(φ_t) ≤ C(n, ω_X, χ, Ent_1(F_t))`, and if `Ent_q(F_t)` is bounded uniformly in `t` for some `q > n`, then `‖φ_t‖_{L^∞}` is bounded uniformly in `t`. The fixed background `χ = 0`, `t = 1` is a special case. The energy bound uses §7.2 for the `2ω_X`-quasi-plurisubharmonic `φ_t` (taking `χ ≤ ω_X`) and Jensen's inequality for the probability measure `V_t⁻¹ω_{t,φ_t}^n`; the signed moment it produces, `n·(c_t^n/V_t)·∫ F_t e^{nF_t} ω_X^n`, is at most `n·Ent_1(F_t)` by `c_t^n/V_t = 1/V`. *Needs:* §§3.2, 3.4, 7.2, 8.3; Mathlib `ConvexOn.map_integral_le`.

**Checks.**

- `χ = ω_X`, `F_t = 0`: `V_t = (1 + t)^n V` and `c_t^n = (1 + t)^n`.
- `Ent_q(F_t)` bounded for `q > n` implies `Ent_1(F_t) ≤ 1 + Ent_q(F_t)`, so Lemma 6 applies.
- This recovers Kołodziej's bound (kolodziej1998 §1) for the fixed background. A right-hand side with `Ent_q = ∞` for all `q > n` is outside the statement, though it may still have bounded solutions.

### 8.5 Energy and Trudinger estimates on a fixed background

Prove (gpt2023 Theorem 3 with Lemma 3, line 458–736). Let `φ ∈ C²` solve `f(λ[ω_{X,φ}]) = e^F`, `sup φ = 0`, `λ ∈ Γ`, with smooth normalized `F`. Then:

- (a) for `p' ∈ (0, n)`, `∫ exp{c(−φ)^{n/(n−p')}} ω_X^n ≤ C`;
- (b) for `p' = n` and every `N > 0`, `∫ exp{c_N(−φ)^N} ω_X^n ≤ C_N`;
- (c) `∫ (−φ)^N e^{nF} ω_X^n ≤ C` for `N = n/(n − p')` when `p' ∈ [1, n)`, and for every `N > 0` when `p' = n`.

The constants depend only on `ω_X`, `n`, `p'`, `γ`, `Ent_{p'}(F)` and `N`. Route: compare with the auxiliary equation `(ω_X + i∂∂̄ψ)^n = (F² + 1)^{p'/2}Ψ_{p'}⁻¹ e^{nF} ω_X^n` (§6.6). Apply the Aleksandrov–Bakelman–Pucci estimate of PDE §3.2 (C13), in the boundary-shifted form of the supplier contract, on a coordinate ball `B ⊂ ℝ^{2n}` to the cutoff function `Hη` of gpt2023 (3.13), using `det G ≥ γ f^{−n}` and the real-versus-complex determinant comparison: the operator `tr(G·i∂∂̄u) = Ĝ^{jk̄}∂_j∂_k̄u`, with `Ĝ` its positive definite Hermitian coefficient matrix in the chart, has a real symmetric coefficient matrix `a` on `ℝ^{2n}` with `det a = 4^{−2n}(det Ĝ)²` (for `n = 1`, `Ĝ ∂_z∂_z̄ = (Ĝ/4)Δ`), continuous and positive definite on `B̄` because `Ĝ` is, and `Hη` is `C²` on a neighbourhood of `B̄`, so the integrability hypothesis of the contract holds. Then use the `L¹` bound of §5.4 for `Γ_1`-admissible `φ` and §7.2 for `ψ`. Statement (c) follows from (a) and (b) by Jensen's inequality for the probability measure `dμ = V⁻¹e^{nF} ω_X^n` (normalized `F`): writing `∫ exp{c(−φ)^N} ω_X^n = V·∫ exp{c(−φ)^N − nF} dμ ≤ C` gives `c·∫ (−φ)^N dμ ≤ log(C/V) + n·∫ F dμ`. The signed moment is bounded by `∫ F dμ ≤ Ent_1(F) ≤ 1 + Ent_{p'}(F)` for `p' ≥ 1` (§3.4), not by `Ent_{p'}(F)` itself (see the Checks); the additive `1` changes only the constant. *Needs:* §§1.5, 3.4, 5.4, 6.6, 7.2; Mathlib `ConvexOn.map_integral_le`; PDE §3.2 (C13); `gap:weak-harnack-supersolutions` (through §5.4).

**Checks.**

- `F = 0`, `φ = 0`: every integral is `V`, `0` or bounded trivially.
- The exponent `n/(n − p')` tends to `∞` as `p' → n`, matching case (b).
- For `p' < 1`, (c) is not claimed; the Jensen step needs `V⁻¹ ∫ F e^{nF} ω_X^n ≤ 1 + Ent_{p'}(F)`, which comes from `|F| ≤ 1 + |F|^{p'}` and uses `p' ≥ 1`.
- The signed moment is not bounded by `Ent_{p'}(F)` alone: on the flat torus `ℂ³/ℤ⁶` (`n = 3`) take `q = 1 − 0.03·cos 2πx_1` and `F = (log q)/3`, so `e^{3F} = q` has mean `1` and `F` is normalized. Then `φ = 0.03·(cos 2πx_1 − 1)/(2π²)` has `sup φ = 0`, and the relative eigenvalues of `ω_{X,φ}` are `q`, `1` and `1`, so it solves the Monge–Ampère equation `σ_3^{1/3}(λ) = e^F`. Here `V⁻¹ ∫ F e^{3F} ω_X³ = (1/3)·mean(q log q) ≈ 7.50·10⁻⁵`, at least `0.03²/(12·1.03) > 7.28·10⁻⁵` by convexity of `q log q − (q − 1)`. But `Ent_3(F) ≈ 4.24·10⁻⁷`, at most `(−log(0.97)/3)³ < 1.05·10⁻⁶`. The bound `1 + Ent_3(F)` used above holds.

### 8.6 Fixed backgrounds

Prove the Guo–Phong–Tong estimate on a fixed background (gpt2023 Theorem 1, line 84–89): let `φ ∈ C²(X)` solve `f(λ[ω_{X,φ}]) = e^F`, `sup φ = 0`, `λ ∈ Γ`, with smooth `F` normalized by `∫ e^{nF} ω_X^n = V`. Then `sup |φ| ≤ C(n, p, γ, ω_X, Ent_p(F))`. Route: §8.3 with `χ = 0` and `t = 1`, where `c_1 = 1` and `V_1 = V`. The energy `E(φ) = V⁻¹ ∫ (−φ) e^{nF} ω_X^n` is bounded by §8.5(c) at `p' = n` and `N = 1`, using `Ent_n(F) ≤ 1 + Ent_p(F)`. This holds also for `n = 1`, where no Hölder step is needed (gpt2023 line 442–457). *Needs:* §§8.3, 8.5.

**Checks.**

- Monge–Ampère pair: the statement agrees with §8.4 at `χ = 0`, `t = 1`.
- Laplace pair, `n = 1`: `φ` solves `1 + Δ_ω φ = e^F`, the classical case.
- `F` with `Ent_p(F) = ∞` for every `p > n` is outside the statement.

### 8.7 Hessian equations on degenerating backgrounds

Prove (gpt2023 Theorem 5 with Lemmas 7–8, line 861–952):

- Lemma 7: `E_t(φ_t) ≤ (c_t^n/V_t)·‖e^{nF_t}‖_{L^q}·‖φ_t‖_{L^{q'}}` for conjugate exponents `q, q' > 1`.
- Lemma 8: for `1 ≤ k < n` and `0 < p' < n/(n − k)`, every `u ∈ C²` with `sup u = 0` and `λ[ω_X + i∂∂̄u] ∈ Γ_k` satisfies `‖u‖_{L^{p'}(ω_X^n)} ≤ C(n, k, p', ω_X)`. Route: compare with the Monge–Ampère solutions `v_j` with right-hand sides `η_j` bounded in `L^{1+ε}` (§§6.6, 8.4). Integrate by parts against `(ω_X + i∂∂̄v_j)^{k−1} ∧ ω_X^{n−k}`, using §3.2's Gårding mixed inequality and Maclaurin form inequality and the `L¹` bound of §5.4, then apply Fatou.
- Theorem 5: if `λ[ω_{t,φ_t}] ∈ Γ_k` for all `t` and `q > n/k`, then `‖φ_t‖_{L^∞} ≤ C(n, k, q, γ, ω_X, χ, ‖e^{nF_t}‖_{L^q}, c_t^n/V_t)`. Lemma 8 is applied with background `a_0ω_X`: since `a_0ω_X ≥ ω_t`, the function `φ_t` is `(a_0ω_X, Γ_k)`-admissible by §1.4. This step is implicit in gpt2023.

*Needs:* §§1.4, 3.2, 5.4, 6.6, 8.3–8.4; `gap:weak-harnack-supersolutions` (through §5.4).

**Checks.**

- `k = n` is excluded from Lemma 8, where `n/(n − k)` is infinite. There §7.2 gives every `p'`.
- `q > n/k` is the conjugate of `q' < n/(n − k)`: `1/q + 1/q' = 1` with `q' = n/(n − k)` gives `q = n/k`.
- Hessian pair, `n = 2`, `k = 1` (Laplace): Lemma 8 gives `‖u‖_{L^{p'}}` for `p' < 2`. In real dimension 4, Green-function singularities `|x|^{−2}` are in `L^{p'}` exactly for `p' < 2`.

### Examples

The Monge–Ampère, Hessian and quotient pairs of Layer 2 on flat tori and `ℂP^n`, with `χ` a pullback of a Kähler form from a lower-dimensional factor (`X = Y × Z`, `χ = pr_Y^* ω_Y`), the degenerating case of gpt2023 line 851–852.

### Dependencies

Layers 1–7; Mathlib `ConvexOn.map_integral_le` (§8.5); PDE §3.2 (C13) for the Aleksandrov–Bakelman–Pucci estimate (§8.5, and §8.6 through it); `gap:weak-harnack-supersolutions` (§§8.5–8.7).

## Downstream consumers

- K3Surfaces §2.1 constructs the Ricci-flat Kähler form on a K3 surface by solving `(ω + i∂∂̄φ)² = c·V`, with its own continuity method and estimates. That equation is the case `n = 2`, `F = log(V/ω²)` of §6.6, where `e^b = c`, up to the change from `sup φ = 0` to `∫ φ ω² = 0` (Scope and ownership); §6.6 can replace those steps.
- ComplexHessianEquations Part II consumes Layers 1–5 for the Tosatti–Weinkove and Guo–Phong theorems on compact Hermitian manifolds. Further Part II directions are subsolution theory, Hessian-equation existence and the Kähler–Einstein (Aubin–Yau) equation `(ω + i∂∂̄φ)^n = e^{φ+F}ω^n`, whose right-hand side depends on `φ`; that equation uses Layer 4's comparison principle and Layer 6's estimates.
- A real Hessian-equation extension of OptimalTransport Layer 6 can consume the real symmetric case of Layer 1 (`𝕜 = ℝ`), the cone `Γ_n` and §1.5's determinant identities.

## References

- B. Guo, D. H. Phong, F. Tong, *On L^∞ estimates for complex Monge–Ampère equations*, Ann. of Math. 198 (2023), read as arXiv:2106.02224v1 (`gpt2023`).
- B. Guo, D. H. Phong, *On L^∞ estimates for fully nonlinear partial differential equations*, Ann. of Math. 200 (2024), read as arXiv:2204.12549v3 (`guo-phong2024`).
- G. Székelyhidi, *Fully non-linear elliptic equations on compact Hermitian manifolds*, J. Differential Geom. 109 (2018), read as arXiv:1501.02762v3 (`szekelyhidi2018`).
- V. Tosatti, B. Weinkove, *The complex Monge–Ampère equation on compact Hermitian manifolds*, J. Amer. Math. Soc. 23 (2010), read as arXiv:0910.1390v2 (`tosatti-weinkove2010`).
- S. Dinew, S. Kołodziej, *A priori estimates for complex Hessian equations*, Anal. PDE 7 (2014), read as arXiv:1112.3063v1 (`dinew-kolodziej2014`).
- D. H. Phong, J. Song, J. Sturm, *Complex Monge–Ampère equations*, Surv. Differ. Geom. 17 (2012), read as arXiv:1209.2203v2 (`pss2012`).
- V. Tosatti, Y. Wang, B. Weinkove, X. Yang, *C^{2,α} estimates for nonlinear elliptic equations in complex and almost complex geometry*, Calc. Var. 54 (2015), read as arXiv:1402.0554v2 (`twwy2015`).
- J. Spruck, *Geometric aspects of the theory of fully nonlinear elliptic equations*, Clay Math. Proc. 2 (2005) (`spruck2005`).
- A. S. Lewis, *Derivatives of spectral functions*, Math. Oper. Res. 21 (1996) (`lewis1996`).
- V. Guedj, A. Zeriahi, *Intrinsic capacities on compact Kähler manifolds*, J. Geom. Anal. 15 (2005), read as arXiv:math/0401302v2 (`guedj-zeriahi2005`).
- S.-T. Yau, *On the Ricci curvature of a compact Kähler manifold and the complex Monge–Ampère equation, I*, Comm. Pure Appl. Math. 31 (1978) (`yau1978`).
- G. Székelyhidi, *An Introduction to Extremal Kähler Metrics*, GSM 152 (2014) (`szekelyhidi2014`).
- G. Tian, *On Kähler–Einstein metrics on certain Kähler manifolds with C_1(M) > 0*, Invent. Math. 89 (1987) (`tian1987`).
- L. Hörmander, *An Introduction to Complex Analysis in Several Variables*, 3rd ed. (1990) (`hormander1990`).
- J.-P. Demailly, *Complex Analytic and Differential Geometry*, book manuscript, Institut Fourier, version of 21 June 2012 (`demailly2012`).
- D. Gilbarg, N. S. Trudinger, *Elliptic Partial Differential Equations of Second Order* (2001) (`gilbarg-trudinger2001`).
- S. Kołodziej, *The complex Monge–Ampère equation*, Acta Math. 180 (1998) (`kolodziej1998`).
- L. Caffarelli, L. Nirenberg, J. Spruck, *The Dirichlet problem for nonlinear second order elliptic equations III*, Acta Math. 155 (1985) (`cns1985`), and L. Caffarelli, J. J. Kohn, L. Nirenberg, J. Spruck, *… II*, Comm. Pure Appl. Math. 38 (1985) (`ckns1985`), cited for the boundary of this roadmap with its Part II.
