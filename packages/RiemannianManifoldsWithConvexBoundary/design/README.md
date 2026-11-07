# Roadmap: Riemannian manifolds with convex boundary

**Summary.** This roadmap develops the geometry of the boundary of a smooth Riemannian manifold
with boundary `(M, g)`, modelled on Mathlib's half-space `𝓡∂ (n+1)`, as a Riemannian hypersurface,
and the convexity theory of that boundary that geometric inverse problems, boundary and lens
rigidity, and comparison geometry on domains assume. From Mathlib's Levi-Civita connection (which
is defined at boundary points), Tau Ceti's boundary manifold, induced boundary metric, Hessian,
regular sublevel domains, normal exponential and sphere bundles, it builds boundary defining
functions, the scalar second fundamental form `II` of `∂M` with its Weingarten map and mean
curvature, the conformal change law, the notions of strictly convex, convex and strictly concave
boundary with their Hessian characterisations and stability, the realisation of every `(M, g)` as
a regular domain `{ρ ≥ 0}` in a boundaryless Riemannian manifold (the collar extension and, for
compact `M`, the double, with the Seeley extension of functions and metrics), the behaviour of
geodesics at the boundary (tangent geodesics leave a strictly convex boundary to second order),
the signed distance to a hypersurface and boundary normal coordinates `g = dr² + h_r`, the
convexity functions with strictly concave level sets of Uhlmann–Vasy and Stefanov–Uhlmann–Vasy,
and, on compact non-trapping manifolds with strictly convex boundary, the unit sphere bundle
strata `∂±SM`, `∂₀SM`, the exit time `τ` with its regularity at the glancing set, the odd
extension `τ̃`, the identity `Xσ = −2` for `σ(x, v) = τ(x, v) − τ(x, −v)`, the characterisation of non-trapping by the geodesic
vector field, the scattering relation `α` and the boundary lens data. Its end theorems are the
Hessian characterisation of strict convexity, the realisation theorem, the second-order leaving
of tangent geodesics, the existence of convexity functions near a strictly convex boundary point,
the regularity of the exit time (Paternain–Salo–Uhlmann, Lemmas 3.2.3–3.2.11), Proposition 3.3.1
of the same book, and the involution and fixed-point theorem for `α`; the acceptance examples are
balls, spherical caps, hyperbolic domains, small geodesic balls, half-spaces, ball exteriors and a
conformal metric that turns the boundary of the unit disc strictly concave.

## Scope and ownership

This roadmap owns:

- the Riemannian hypersurface geometry of `∂M` for a manifold with boundary in Mathlib's sense:
  tangent and normal directions at boundary points beyond the outward-pointing interface,
  boundary defining functions, the scalar second fundamental form `II`, the Weingarten map,
  principal and mean curvature, their naturality and the conformal change law (Layer 1);
- strict convexity, convexity and strict concavity of the boundary, pointwise, on subsets and
  everywhere, with the Hessian characterisations, openness, the uniform bound on compact
  boundaries and stability under smooth families of metrics (Layer 2);
- regular domains `{ρ ≥ 0}` of a boundaryless Riemannian manifold as Riemannian manifolds with
  boundary, sublevel sets whose level sets are strictly concave from the superlevel sets, the
  interior of `M` as a boundaryless manifold, the collar extension and the double of `M` as
  compatible open gluings, the manifold-level extension of smooth functions and metrics across
  `∂M`, the realisation theorem, and the comparison of `II` with the immersion
  geometry of RiemannianGeometry R5a (Layer 3);
- geodesics of a regular domain, second-order contact of geodesics with the boundary, the normal
  exponential and signed distance of a two-sided hypersurface with its Gauss lemma, boundary
  normal coordinates, convexity functions near a strictly convex boundary point, and slight
  enlargements of a strictly convex domain (Layer 4);
- the unit sphere bundle strata, the exit time, non-trapping, two calculus lemmas (the fold normal
  form and smooth even functions with parameters), the regularity of the exit time, the
  non-trapping criteria, the scattering relation and the boundary lens data (Layer 5);
- the acceptance examples (Layer 6).

It leaves to other roadmaps, by section:

- the outward-pointing predicate and a smooth outward field: DifferentialGeometry 5.1, in Tau
  Ceti as `TauCeti.IsOutwardPointing` and `TauCeti.exists_isOutwardPointingField`;
- the outward unit normal as an object: DifferentialGeometry 12.5, whose boundary divergence
  theorem is stated with it (the contract this roadmap needs is listed below);
- existence of metrics, gradient and Hessian: DifferentialGeometry 12.1–12.3, in Tau Ceti as
  `TauCeti.Manifold.mgradient` and `TauCeti.Manifold.hessian`;
- the induced metric on the boundary: already in Tau Ceti as
  `Bundle.ContMDiffRiemannianMetric.restrictBoundaryTangentSpace`;
- regular sublevel sets and regular level sets as manifolds: already in Tau Ceti
  (`TauCeti.isManifold_scalarRegularSublevel`, `TauCeti.isManifold_regularLevel`);
- geodesics, the geodesic flow, the exponential map, normal balls, the Gauss lemma at a point,
  first-variation symmetry and completeness of compact manifolds: HopfRinow Layers 1, 2 and 4;
- the second fundamental form `B`, shape operator and Gauss–Codazzi–Ricci equations of isometric
  immersions: RiemannianGeometry R5a; normal-coordinate jets: RiemannianGeometry R1 (item 4);
- the normal exponential of an embedding and its tubular neighbourhoods: already in Tau Ceti
  (`TauCeti.SmoothEmbedding.normalExp` and the tube theorems);
- the smooth collar theorem: GeometricTopology Layer 1; gluing along a piece of the boundary in
  the corners category is also GeometricTopology Layer 1's and is not consumed, since the collar
  extension and the double of `M` (3.3) are compatible open gluings of boundaryless pieces, which
  Tau Ceti has (`TopCat.GlueData.chartedSpace`);
- the extension of smooth functions across a smooth boundary by the half-space Seeley extension:
  ComplexKahlerGeometry K5a;
- uniform normal radii on compact sets: SmoothBundlesConnections B6.0;
- the geodesic X-ray transform, Santaló's formula, Pestov identities, simple manifolds and the
  boundary and lens rigidity theorems themselves: future roadmaps that consume Layers 2, 4 and 5;
- manifolds with corners: not treated; the boundary here is the boundary of a half-space-modelled
  manifold.

The along-curve identity `(f∘γ)'' = Hess f(γ', γ') + df(D_t γ')` for arbitrary curves is not
stated here; Layer 4 states only its geodesic case, which is the computation of
Paternain–Salo–Uhlmann Lemma 3.1.13.

## Conventions

- **Setting.** `M` is a topological space with `[ChartedSpace (EuclideanHalfSpace (n+1)) M]` and
  `[IsManifold (𝓡∂ (n+1)) ∞ M]`, so `dim M = n + 1` and `∂M := (𝓡∂ (n+1)).boundary M` carries Tau
  Ceti's boundaryless manifold structure of dimension `n` (`TauCeti.isManifold_boundary`), with
  inclusion `ι : ∂M → M` a smooth closed embedding. Every `n ≥ 0` is allowed. The sources work
  with `dim M ≥ 2`; dimension one (`n = 0`, finite unions of intervals) is the degenerate case and
  is recorded as a Check wherever it behaves differently. `[T2Space M]` and
  `[SecondCountableTopology M]` are hypotheses of the statements that use partitions of unity;
  compactness, connectedness and non-trapping are hypotheses of the statements that need them,
  never standing assumptions.
- **Metric.** `g` is a smooth Riemannian metric: `[Bundle.RiemannianBundle (fun x : M ↦
  TangentSpace (𝓡∂ (n+1)) x)]` with `[IsContMDiffRiemannianBundle (𝓡∂ (n+1)) ∞ (EuclideanSpace ℝ
  (Fin (n+1))) (fun x : M ↦ TangentSpace (𝓡∂ (n+1)) x)]`; `⟨·,·⟩ = g`. Distances are Mathlib's
  `Manifold.riemannianEDist` of the manifold in question. `h := ι*g` is the induced metric on
  `∂M` (Tau Ceti `Bundle.ContMDiffRiemannianMetric.restrictBoundaryTangentSpace`).
- **Connection, gradient, Hessian.** `∇` is Mathlib's `CovariantDerivative.leviCivitaConnection`
  of `(M, g)`, which is defined at boundary points (no boundaryless hypothesis);
  `grad f = TauCeti.Manifold.mgradient` and `Hess f(X, Y) = ⟨∇_X grad f, Y⟩ =
  TauCeti.Manifold.hessian`.
- **Boundary tangent space.** For `q ∈ ∂M`, `T_q∂M` also denotes its image `dι_q(T_q∂M) ⊆ T_qM`;
  bilinear forms on `T_q∂M` are forms on the boundary manifold's tangent space, read through `dι`.
- **Half-space and pointing.** Mathlib's `EuclideanHalfSpace` constrains coordinate `0`: `x⁰ ≥ 0`
  on the model, `∂ = {x⁰ = 0}`. A vector is outward when the derivative of `x⁰` in a chart is
  negative (`TauCeti.IsOutwardPointing`), inward when it is positive, tangent when it is zero.
  Witness: on the model half-space with the Euclidean metric, `−e₀` is outward and `e₀` inward.
- **Normals.** `ν_out` is the outward unit normal and `ν_in := −ν_out` (Paternain–Salo–Uhlmann's
  `ν`). Witness: on the boundary sphere of the closed unit ball in `ℝⁿ⁺¹`, `ν_out(x) = x`,
  `ν_in(x) = −x`.
- **Defining functions** are positive inside: `ρ > 0` on the interior, `ρ = 0` on `∂M`,
  `dρ ≠ 0` on `∂M` (Paternain–Salo–Uhlmann, Uhlmann–Vasy). A regular domain of a boundaryless
  `N` is `{ρ ≥ 0}`; Tau Ceti's sublevel atlas is used for `−ρ ≤ 0`. Witness: `ρ = 1 − |x|²` for the
  closed unit ball, with `grad ρ = −2x = 2 ν_in` on the sphere.
- **Second fundamental form.** `II(X, Y) = ⟨∇_X ν_out, Y⟩ = −⟨∇_X ν_in, Y⟩ = ⟨∇_X Y, ν_in⟩ =
  −Hess ρ(X, Y)/|dρ|` on `T∂M`. It equals Paternain–Salo–Uhlmann's `Π_x(v, w) = −⟨∇_v ν, w⟩`
  (with `ν` inward) and `⟨B(X, Y), ν_in⟩` for RiemannianGeometry R5a's `B` of `∂M` in an
  extension. Witness: the unit sphere bounding the closed unit ball has `II = h`, so the ball is
  strictly convex; R5a's sphere normalisation `B = −g · position` gives `⟨B, ν_in⟩ = ⟨−⟨X,Y⟩x,
  −x⟩ = ⟨X, Y⟩`; for `ρ = 1 − |x|²`, `Hess ρ = −2g` and `|dρ| = 2`, so `−Hess ρ/|dρ| = h`.
- **Mean curvature** is the averaged trace `H = tr_h II / n` for `n ≥ 1` (RiemannianGeometry R5a's
  averaged convention, inward normal). Witness: the unit sphere has `H = 1`; the boundary of the
  exterior of the unit ball has `H = −1`.
- **Level-set concavity.** For `x` smooth with `dx ≠ 0`, the level set through `y` is strictly
  concave from the superlevel sets at `y` if `Hess x` is positive definite on `ker dx_y`. Witness:
  `x = |z|²` on `ℝⁿ⁺¹ ∖ {0}`, `Hess x = 2g`; the sublevel ball `{x ≤ c}` has `II = h/√c > 0` and the
  superlevel exterior `{x ≥ c}` has `II = −h/√c`.
- **Conformal change** is `ĝ = e^{2φ} g` (Tau Ceti `Bundle.ContMDiffRiemannianMetric.rescale` with
  factor `e^{2φ}`). Witness: `φ = log 2` turns the unit ball into a copy of the Euclidean ball of
  radius 2 and doubles `II`.
- **Unit sphere bundle strata** follow Paternain–Salo–Uhlmann: `∂±SM = {(x, v) ∈ ∂SM : ±⟨v,
  ν_in(x)⟩ ≥ 0}` are closed, `∂₊SM` is the influx (inward) part, `∂₀SM = ∂₊SM ∩ ∂₋SM` the glancing
  set. Stefanov–Uhlmann–Vasy use the opposite labels (their `∂₊SM` points outside; line 151).
  Witness: on the closed unit disc at `x = (0, −1)`, `v = (0, 1)` lies in `∂₊SM`, `v = (1, 0)` in
  `∂₀SM`.
- **Exit time** `τ` takes values in `[0, ∞]`; `μ(x, v) := ⟨v, ν_in(x)⟩` on `∂SM`; the geodesic flow
  is `φ_t(x, v) = (γ_{x,v}(t), γ'_{x,v}(t))` with generator `X`. Witness (Paternain–Salo–Uhlmann,
  Example 3.2.1): on the closed unit disc at `x = (0, −1)`, `τ(x, (cos θ, sin θ)) = 2 sin θ` for
  `θ ∈ [0, π]` and `0` for `θ ∈ [−π, 0]`.
- **Hamiltonian normalisation.** Uhlmann–Vasy's covector form of convexity uses the dual metric
  function `G`; whether `G = |ξ|²` or `½|ξ|²`, `H_G ρ` and `H_G² ρ` change by the positive factors
  2 and 4, so the convexity condition is unchanged.

## Exact supplier contracts

**From Mathlib** (at the pin): `ModelWithCorners.boundary`, `ModelWithCorners.interior`,
`ModelWithCorners.isClosed_boundary`, `modelWithCornersEuclideanHalfSpace` (notation `𝓡∂`),
`EuclideanHalfSpace` (`Mathlib/Geometry/Manifold/IsManifold/InteriorBoundary.lean`,
`Mathlib/Geometry/Manifold/Instances/Real.lean`); `Bundle.RiemannianBundle`,
`IsContMDiffRiemannianBundle`, `Bundle.ContMDiffRiemannianMetric`, `IsRiemannianManifold`,
`Manifold.pathELength`, `Manifold.riemannianEDist`; `CovariantDerivative.leviCivitaConnection`,
`CovariantDerivative.isLeviCivitaConnection_leviCivitaConnection` and
`CovariantDerivative.IsLeviCivitaConnection.uniqueness`, which assume `IsManifold I 2 M`, a `C¹`
metric and finite dimension but no boundaryless model; `ContDiffAt.implicitFunction` and
`ContDiffAt.contDiffAt_implicitFunction`; `SmoothPartitionOfUnity`,
`exists_contMDiffSection_forall_mem_convex_of_local` and
`exists_contMDiff_zero_iff_one_iff_of_isClosed` (finite-dimensional, Hausdorff, σ-compact);
`TopCat.GlueData` with its element-level constructor `TopCat.GlueData.MkCore`
(`Mathlib/Topology/Gluing.lean`): spaces glued along open subsets by transition homeomorphisms.

**From Tau Ceti** (at the pin): the boundary manifold `TauCeti.isManifold_boundary`,
`TauCeti.isSmoothEmbedding_subtypeVal_boundary`, `TauCeti.mfderiv_subtypeVal_boundary`,
`TauCeti.ModelWithCorners.mem_boundary_euclideanHalfSpace_iff_of_mem_atlas`; pointing
`TauCeti.IsOutwardPointing`, `TauCeti.isOutwardPointing_iff_tangentCoordChange`,
`TauCeti.tangentCoordChange_normal_pos`, `TauCeti.exists_isOutwardPointingField`; metrics
`Bundle.ContMDiffRiemannianMetric.restrictBoundaryTangentSpace` (and its `_inner` lemma),
`Bundle.ContMDiffRiemannianMetric.pullback`, `Bundle.ContMDiffRiemannianMetric.rescale`,
`Bundle.ContMDiffRiemannianMetric.hessian_rescale`,
`Bundle.ContMDiffRiemannianMetric.leviCivitaConnection_rescale_apply`,
`TauCeti.Manifold.ContMDiffNondegenerateMetricFamily` with
`TauCeti.Manifold.ContMDiffNondegenerateMetricFamily.contMDiffAt_christoffelSymbol` (joint
smoothness in parameter and point, boundary points included); calculus on `M`
`TauCeti.Manifold.mgradient`, `TauCeti.Manifold.inner_mgradient`, `TauCeti.Manifold.hessian`,
`TauCeti.Manifold.hessian_symm`, `TauCeti.Manifold.hessian_apply_eq_mvfderiv_sub`,
`CovariantDerivative.IsLeviCivitaConnection.inner_apply_eq_inner_mvfderiv` (Gauss formula into an
inner product space); regular values `TauCeti.IsRegularValue`,
`TauCeti.scalarRegularSublevelChartedSpace`, `TauCeti.isManifold_scalarRegularSublevel`,
`TauCeti.boundary_scalarRegularSublevel`, `TauCeti.interior_scalarRegularSublevel`,
`TauCeti.regularLevelChartedSpace`, `TauCeti.isManifold_regularLevel`,
`TauCeti.isSmoothEmbedding_coe_regularLevel`; geodesics `TauCeti.Manifold.IsGeodesicCurveOn` and
`TauCeti.Manifold.IsGeodesicCurveOnFrom` (defined for every model with corners),
`TauCeti.Manifold.geodesicInterval`, `TauCeti.Manifold.maximalGeodesic`,
`TauCeti.Manifold.riemannianExp`, `TauCeti.Manifold.expDomain`,
`TauCeti.Manifold.exists_contMDiffAt_localGeodesicFlow`, `TauCeti.Manifold.contMDiffOn_maximalGeodesic`,
`TauCeti.Manifold.isGeodesicallyCompleteAt_of_compactSpace` (boundaryless, Hausdorff); the normal
exponential `TauCeti.SmoothEmbedding.normalExp`,
`TauCeti.SmoothEmbedding.exists_partialDiffeomorph_normalExp_subset`,
`TauCeti.SmoothEmbedding.exists_isClosedEmbedding_normalExp_norm_le_subset` (closed embedding
into a boundaryless Hausdorff second-countable Riemannian manifold, no completeness); sphere
bundles `TauCeti.sphereBundleChartedSpace`, `TauCeti.isManifold_sphereBundle`,
`TauCeti.isSmoothEmbedding_coe_sphereBundle` (boundaryless base); the Hadamard factorisation
`ContDiff.sub_eq_hadamardFactor_apply`, `ContDiff.contDiff_hadamardFactor` and
`TauCeti.contDiff_intervalIntegral`; the model spaces `TauCeti.sphereRoundMetric`,
`TauCeti.UpperHalfSpace` with `TauCeti.UpperHalfSpace.hyperbolicMetric` and
`TauCeti.UpperHalfSpace.hasConstantSectionalCurvature`; compatible open gluing
`TopCat.GlueData.chartedSpace`, `TopCat.GlueData.IsCompatible`, `TopCat.GlueData.isCompatible_iff`,
`TopCat.GlueData.IsCompatible.isManifold`, `TopCat.GlueData.IsCompatible.isLocalDiffeomorph_ι`,
`TopCat.GlueData.IsCompatible.partialDiffeomorphι`, `TopCat.GlueData.IsCompatible.contMDiff_iff`
(pieces and overlaps modelled on one space, `C^n` manifolds on the pieces, local diffeomorphisms
as overlap maps; the glued space is a `C^n` manifold on which each canonical map is a
diffeomorphism onto its open image), with the Hausdorff criterion
`TopCat.GlueData.t2Space_iff_isClosed_chartRel` (the glued space is Hausdorff iff every gluing
relation is closed in the product of its two pieces) and the instance
`TopCat.GlueData.secondCountableTopology` (countably many second-countable pieces). Every name in
this paragraph is consumed, never restated.

**From TauCetiRoadmap.DifferentialGeometry**: 5.1 (the outward-pointing boundary interface),
12.1 (every finite-dimensional Hausdorff σ-compact manifold carries a smooth metric, in Tau Ceti as
`TauCeti.nonempty_contMDiffRiemannianMetric`), 12.2–12.3 (gradient and symmetric Hessian), 12.5 (the outward unit
normal of the boundary divergence theorem). What DifferentialGeometry must provide
(gap:dg-outward-unit-normal): a named outward unit normal along `∂M` of a Riemannian manifold
with boundary over `𝓡∂ (n+1)`, proved to be a unit vector, `g`-orthogonal to `dι(T∂M)` and
outward pointing in the sense of 5.1; 12.5 states its divergence theorem with this normal but
does not name it.

**From TauCetiRoadmap.HopfRinow** (completed): Layer 1 (geodesic equation, maximal intervals,
geodesic spray and smooth local flow, `riemannianExp` on its natural domain), Layer 2 (normal
neighbourhoods, local logarithm, Gauss lemma, local distance identity, covariant differentiation
in both variation directions with `D_s ∂_t = D_t ∂_s`), Layer 4 (compact manifolds are
geodesically complete). All of it under its boundaryless hypotheses; this roadmap applies it to a
boundaryless `N` containing `M`.

**From TauCetiRoadmap.RiemannianGeometry**: R1 item 4 (in a normal chart at `p` the first
derivatives of the metric vanish, so the Christoffel symbols vanish at `p`); R5a (for an isometric
immersion of boundaryless manifolds: `B(X, Y) = (∇^N_X df(Y))^⊥`, `S_η X = −(∇^N_X η)^⊤`,
`⟨S_η X, Y⟩ = ⟨B(X, Y), η⟩`, averaged mean curvature vector, Gauss equation with the pinned sign,
sphere normalisation `B = −g · position`).

**From TauCetiRoadmap.GeometricTopology**: Layer 1, collar neighbourhoods (Lee, *Introduction to
Smooth Manifolds*, Theorem 9.25, with its extract): `∂M` has a smooth collar, a diffeomorphism
`c : ∂M × [0, 1) → U` onto an open neighbourhood `U` of `∂M` with `c(q, 0) = q`. Nothing else
of Layer 1 is consumed: the gluings of 3.3 are open gluings of boundaryless pieces, taken from
Tau Ceti.

**From TauCetiRoadmap.ComplexKahlerGeometry**: K5a (extension of smooth functions across a
smooth boundary: the half-space Seeley extension), a step of K5a's construction of
diffeomorphisms of closures of bounded smooth domains rather than a separately numbered item: a
function on the closed half-space `{x⁰ ≥ 0} ⊆ ℝⁿ⁺¹` that is smooth up to the boundary (Mathlib's
`ContDiffOn ℝ ∞` on the closed half-space) is the restriction of a smooth function on `ℝⁿ⁺¹`.

**From TauCetiRoadmap.SmoothBundlesConnections**: B6.0, positive uniform normal radii on compact
sets of a boundaryless Riemannian manifold, with `IsNormalDomain` on every tangent ball of that
radius.

## How to read the build

Layer 1 is intrinsic: everything is defined on `(M, g)` itself, using that Mathlib's Levi-Civita
connection and Tau Ceti's Hessian make sense at boundary points, and delivers `II`, the Weingarten
map, mean curvature and the conformal law. Layer 2 turns `II` into the convexity predicates and
proves their Hessian characterisation and stability. Layer 3 connects the abstract setting with
domains `{ρ ≥ 0}` of a boundaryless manifold, where the library's geodesics live, and proves that
every `(M, g)` is such a domain; it also identifies `II` with R5a's `B`. Layer 4 studies geodesics
of a domain at its boundary: second-order contact, the normal exponential and signed distance,
boundary normal coordinates, convexity functions and enlargements. Layer 5 builds the unit sphere
bundle strata, the exit time and the scattering relation on compact non-trapping manifolds with
strictly convex boundary. Layer 6 computes the acceptance examples. Layers 4–6 are stated for a
regular domain `M = {ρ ≥ 0}` of a boundaryless `(N, g)`; by the realisation theorem of Layer 3 and
the intrinsic definitions of `II`, `τ` and `α`, nothing in them depends on the choice of `N`.

## Layer 1: The boundary as a Riemannian hypersurface

### 1.1 Tangent, inward and outward directions

For `q ∈ ∂M` prove that `T_q∂M = range(dι_q)` is the kernel of the differential at `q` of the
normal coordinate `x⁰` of every half-space chart of the maximal atlas at `q`, hence a hyperplane
of `T_qM`, and that every `v ∈ T_qM` is exactly one of: outward (`TauCeti.IsOutwardPointing`),
tangent (`v ∈ T_q∂M`) or inward (`−v` outward), the class not depending on the chart. Prove that a
`C¹` curve `c : [0, ε) → M` with `c(0) = q` has `c'(0)` inward or tangent, and a `C¹` curve
`c : (−ε, ε) → M` with `c(0) = q` has `c'(0)` tangent (Paternain–Salo–Uhlmann, the inward,
outward and tangent unit vectors of lines 2684–2696).

- The inward vectors and the outward vectors at `q` are disjoint open half-spaces of `T_qM` whose
  common boundary is `T_q∂M`.
- In the preferred chart `dι_q` is the zero-insertion map (`TauCeti.mfderiv_subtypeVal_boundary`).

*Needs:* Tau Ceti `TauCeti.mfderiv_subtypeVal_boundary`, `TauCeti.IsOutwardPointing`,
`TauCeti.isOutwardPointing_iff_tangentCoordChange`, `TauCeti.tangentCoordChange_normal_pos`,
`TauCeti.isManifold_boundary`; DifferentialGeometry 5.1.

### 1.2 The outward and inward unit normal

Consume the outward unit normal `ν_out` of DifferentialGeometry 12.5 and set `ν_in := −ν_out`.
Prove its Riemannian hypersurface API (Paternain–Salo–Uhlmann, lines 2687–2689; Lee,
*Introduction to Riemannian Manifolds*, Ch. 8):

- Uniqueness: a vector of `T_qM` that is a unit vector, `g`-orthogonal to `T_q∂M` and outward
  equals `ν_out(q)`; `ν_in(q)` is the unique inward unit vector orthogonal to `T_q∂M`.
- Smoothness: `q ↦ (q, ν_out(q))` is a smooth map `∂M → TM`.
- Chart formula: `ν_in(q) = grad x⁰(q)/|grad x⁰(q)|` for the normal coordinate `x⁰` of any
  half-space chart at `q`.
- Sign test: `v ∈ T_qM` is inward iff `⟨v, ν_in(q)⟩ > 0`, tangent iff `= 0`, outward iff `< 0`;
  `v = v^T + ⟨v, ν_in⟩ ν_in` with `v^T ∈ T_q∂M`.
- Naturality: an isometry of Riemannian manifolds with boundary carries `ν_out` to `ν_out`.

**Checks.**

- On the model half-space of dimension 2 with the constant metric `g = [[1, a], [a, 1]]`,
  `|a| < 1`: `ν_in = (e₀ − a e₁)/√(1 − a²)`, since `g(e₀ − a e₁, e₁) = a − a = 0` and
  `g(e₀ − a e₁, e₀ − a e₁) = 1 − a²`. The coordinate vector `e₀` has `g(e₀, e₁) = a ≠ 0`, so a
  definition by the chart direction fails orthogonality.
- On the boundary sphere of the closed unit ball, `ν_out(x) = x` and `⟨v, ν_in⟩ = −⟨v, x⟩`.
- Dimension one: for `M = [0, 1] ⊆ ℝ`, `ν_out(0) = −∂_x` and `ν_out(1) = +∂_x` in the ambient
  coordinate, although both charts read the inward direction as `+e₀`.

*Needs:* DifferentialGeometry 12.5 (with the contract above); 1.1; Tau Ceti
`TauCeti.Manifold.mgradient`.

### 1.3 Boundary defining functions

Define, for an open `U ⊆ M`, a boundary defining function on `U` as `ρ : M → ℝ`, smooth on `U`,
with `ρ > 0` on `U ∩ int M`, `ρ = 0` on `U ∩ ∂M` and `dρ_q ≠ 0` for `q ∈ U ∩ ∂M`; a global one is
the case `U = M` (Uhlmann–Vasy, lines 134–136 and 25–26; the stronger normalised function of
Paternain–Salo–Uhlmann, Lemma 3.1.10, is the `ρ̂` of 4.3). Prove:

- Local existence: the normal coordinate `x⁰` of a half-space chart is a boundary defining
  function on the chart source.
- Global existence: if `M` is Hausdorff and second countable, a global boundary defining function
  exists (a partition of unity subordinate to half-space charts and to `int M`, glued from the
  chart coordinates `x⁰` and the constant `1`).
- Gradient formula: `dρ_q` vanishes on `T_q∂M`, `dρ_q(ν_in) = |dρ_q| > 0` and
  `grad ρ(q) = |dρ_q| ν_in(q)` for `q ∈ U ∩ ∂M`.
- Comparison: two global boundary defining functions satisfy `ρ' = u ρ` with `u` smooth and
  positive on `M` and `u = |dρ'|/|dρ|` on `∂M` (Hadamard division in half-space charts).
- Restriction and pullback: a boundary defining function restricts to open subsets and pulls
  back along diffeomorphisms of manifolds with boundary.

**Checks.**

- On the closed unit ball (Layer 3) `ρ = 1 − |x|²` is a global defining function with
  `|dρ| = 2` and `grad ρ = −2x = 2 ν_in` on the sphere.
- `ρ' = (2 + x₁)(1 − |x|²)` is another, with ratio `u = 2 + x₁ ∈ [1, 3]`; `ρ'' = (1 − |x|²)²` is
  not one, since `dρ'' = 0` on the sphere, and `−ρ` is not one, since it is negative inside.
- On a manifold with empty boundary the constant `1` is a global defining function; in dimension
  one, on `M = [0, 1]`, `ρ(x) = x(1 − x)` is one with `|dρ| = 1` at both ends.

*Needs:* 1.1, 1.2; Tau Ceti `TauCeti.ModelWithCorners.mem_boundary_euclideanHalfSpace_iff_of_mem_atlas`,
`ContDiff.sub_eq_hadamardFactor_apply`, `ContDiff.contDiff_hadamardFactor`; Mathlib
`SmoothPartitionOfUnity`, `exists_contMDiff_zero_iff_one_iff_of_isClosed`.

### 1.4 The second fundamental form

Define the second fundamental form of `∂M` at `q ∈ ∂M` as the bilinear form on `T_q∂M`

    II_q(u, w) := −Hess x⁰(dι u, dι w) / |dx⁰_q|_g,

where `x⁰` is the normal coordinate of the preferred half-space chart at `q` (a boundary defining
function near `q` by 1.3), and `Hess` is Tau Ceti's Hessian of `(M, g)` at the boundary point `q`.
Prove that it is the second fundamental form in each of its usual descriptions (Paternain–Salo–
Uhlmann, lines 2728–2737 and Lemma 3.1.12, lines 2781–2784; Stefanov–Uhlmann–Vasy, line 53; Lee,
*Introduction to Riemannian Manifolds*, Ch. 8):

- For every boundary defining function `ρ` on a neighbourhood of `q`,
  `II_q(u, w) = −Hess ρ(dι u, dι w)/|dρ_q|`.
- For every vector field `N` on `M`, `C¹` near `q`, with `N = ν_out` along `∂M` near `q`,
  `II_q(u, w) = ⟨∇_{dι u} N, dι w⟩`; this is Paternain–Salo–Uhlmann's `Π_q(u, w) = −⟨∇_u ν, w⟩`
  with their inward `ν`.
- For every vector field `W`, `C¹` near `q` and tangent to `∂M` along `∂M` near `q`, with
  `W(q) = dι w`, `II_q(u, w) = ⟨∇_{dι u} W, ν_in(q)⟩`.
- `II_q` is symmetric, and `q ↦ II_q` is a smooth section of the bundle of bilinear forms on
  `T∂M` (its coefficients in Tau Ceti's boundary charts are smooth).
- Naturality: an isometry `Φ : (M, g) → (M', g')` of manifolds with boundary maps `∂M` onto `∂M'`
  and `(Φ|∂M)* II' = II`.

**Checks.**

- Closed ball of radius `R` in `ℝⁿ⁺¹` with `ρ = R² − |x|²`: `Hess ρ = −2g`, `|dρ| = 2R`, so
  `II = h/R`; for `R = 1`, `II = h`.
- Closed half-space `{x⁰ ≥ 0}` of `ℝⁿ⁺¹` with the Euclidean metric: `x⁰` is affine, `Hess x⁰ = 0`,
  `II = 0`. Closed exterior `{|x|² ≥ 1}` with `ρ = |x|² − 1`: `Hess ρ = 2g`, `|dρ| = 2`, `II = −h`.
- Using the inward normal in the first description, `⟨∇_X ν_in, Y⟩`, gives `−h` on the unit ball:
  that convention fails the ball witness of the Conventions.
- Dimension one: `T_q∂M = 0` and `II_q` is the zero form on the zero space.

*Needs:* 1.1, 1.2, 1.3; Mathlib `CovariantDerivative.leviCivitaConnection`; Tau Ceti
`TauCeti.Manifold.hessian`, `TauCeti.Manifold.hessian_symm`,
`TauCeti.Manifold.hessian_apply_eq_mvfderiv_sub`, `TauCeti.isManifold_boundary`; DifferentialGeometry
12.3.

### 1.5 Weingarten map, principal curvatures and mean curvature

Define the Weingarten map `S_q : T_q∂M → T_q∂M` by `h(S_q u, w) = II_q(u, w)`, the principal
curvatures at `q` as the eigenvalues of `S_q`, and, for `n ≥ 1`, the mean curvature
`H(q) := tr S_q / n` (Lee, *Introduction to Riemannian Manifolds*, Ch. 8; the averaged convention of
RiemannianGeometry R5a).

- `S_q` is `h`-self-adjoint, so the principal curvatures are real and `II_q` is diagonal in an
  `h`-orthonormal eigenbasis.
- Weingarten equation: `dι(S_q u)` is the tangential part of `∇_{dι u} N` for any `C¹` extension
  `N` of `ν_out`.
- `S` and `H` are smooth on `∂M`; under an isometry they are natural.
- `tr_h II = n H`.

**Checks.**

- The unit sphere bounding the closed unit ball: `S = id`, principal curvatures all `1`, `H = 1`;
  this is PositiveMass's averaged `tr A/(dim − 1)` for the inward normal.
- The solid cylinder `{x₁² + x₂² ≤ 1} ⊆ ℝ³`: principal curvatures `1` and `0`, `H = 1/2`.
- The closed exterior of the unit ball: principal curvatures `−1`, `H = −1`.
- Dimension one: `H` is not defined (the average needs `n ≥ 1`); no statement uses it there.

*Needs:* 1.4; Tau Ceti `Bundle.ContMDiffRiemannianMetric.restrictBoundaryTangentSpace`.

### 1.6 Conformal change and scaling

For `φ` smooth on `M` and `ĝ = e^{2φ} g`, prove `ν̂_out = e^{−φ} ν_out`, `ĥ = e^{2φ} h` and

    II^ĝ_q(u, w) = e^{φ(q)} (II_q(u, w) − dφ_q(ν_in(q)) h_q(u, w)),

hence `κ̂ = e^{−φ}(κ − dφ(ν_in))` for the principal curvatures and `Ĥ = e^{−φ}(H − dφ(ν_in))`. For
a constant `c > 0`, `II^{c² g} = c II` (Lee, *Introduction to Riemannian Manifolds*, Ch. 7–8; in
the rotationally symmetric case Paternain–Salo–Uhlmann, Lemma 2.5.2, lines 2462–2473).
Route: on `T∂M`, where `dρ = 0`, Tau Ceti's conformal Hessian formula gives
`Hess_ĝ ρ = Hess_g ρ + ⟨grad φ, grad ρ⟩_g g = Hess_g ρ + |dρ|_g dφ(ν_in) g`, and
`|dρ|_ĝ = e^{−φ}|dρ|_g`; divide as in 1.4.

- The law is local: it uses `φ` only on a neighbourhood of `∂M`, and only `φ|∂M` and `dφ(ν_in)`.
- If `dφ(ν_in) = 0` along `∂M`, then `II^ĝ = e^{φ} II`, so strict convexity is preserved.

**Checks.**

- `φ = log 2` on the closed unit ball: `II^ĝ = 2h`, the second fundamental form of the radius-2
  ball pulled back by `x ↦ 2x` (`h_{S₂}/2` pulls back to `4h/2`).
- Closed unit disc with `φ = −|x|²`: `ν_in = −x`, `dφ(ν_in) = 2` on the circle, so
  `II^ĝ = e^{−1}(1 − 2)h = −e^{−1}h`, and `Ĥ = e·(1 − 2) = −e`. The wrong sign
  `e^{φ}(II + dφ(ν_in) h)` would give `+3e^{−1}h`.
- `φ = (|x|² − 1)²` on the unit ball: `φ = 0` and `dφ = 0` on the sphere, so `II^ĝ = II = h`.

*Needs:* 1.2, 1.4, 1.5; Tau Ceti `Bundle.ContMDiffRiemannianMetric.rescale`,
`Bundle.ContMDiffRiemannianMetric.hessian_rescale`,
`Bundle.ContMDiffRiemannianMetric.leviCivitaConnection_rescale_apply`.

### Examples

The closed unit ball (`II = h`, `H = 1`), the half-space (`II = 0`), the exterior of the unit ball
(`II = −h`), the solid cylinder (`H = 1/2`), the constant non-diagonal metric on the half-plane
(slanted coordinate normal), and the conformal disc `e^{−2|x|²} g` (`II = −e^{−1} h`).

### Dependencies

1.1 uses Tau Ceti's boundary charts and DifferentialGeometry 5.1; 1.2 uses DifferentialGeometry
12.5 and 1.1; 1.3 uses 1.1–1.2, Tau Ceti's Hadamard factorisation and Mathlib's partitions of
unity; 1.4 uses 1.1–1.3, Mathlib's Levi-Civita connection and Tau Ceti's Hessian; 1.5 uses 1.4 and
the induced metric; 1.6 uses 1.4–1.5 and Tau Ceti's conformal formulas.

## Layer 2: Convexity of the boundary

### 2.1 Convexity predicates

Define, for `q ∈ ∂M`: `∂M` is strictly convex at `q` if `II_q(u, u) > 0` for every nonzero
`u ∈ T_q∂M`; convex at `q` if `II_q(u, u) ≥ 0` for every `u`; strictly concave at `q` if
`II_q(u, u) < 0` for every nonzero `u`. For `S ⊆ ∂M`, `∂M` is strictly convex on `S` if it is at
every point of `S`; `∂M` is strictly convex if it is at every point of `∂M`
(Paternain–Salo–Uhlmann, Definition 3.1.7, lines 2738–2739; Stefanov–Uhlmann–Vasy, lines 89–90
and 93; Paternain–Salo–Uhlmann, Definition 2.5.1, lines 2449–2461, for concavity).

- Strictly convex at `q` implies convex at `q`; for `n ≥ 1` strict convexity and strict concavity
  at `q` exclude each other.
- Strictly convex at `q` iff every principal curvature at `q` is positive; then `H(q) > 0`
  (`n ≥ 1`); convex at `q` implies `H(q) ≥ 0`.
- The predicates are invariant under isometries of manifolds with boundary.
- By 1.6, `∂M` is strictly convex at `q` for `e^{2φ} g` iff `II_q − dφ_q(ν_in) h_q` is positive
  definite.

**Checks.**

- The closed unit ball is strictly convex; the half-space is convex and nowhere strictly convex;
  the closed exterior of the unit ball is strictly concave; the solid cylinder is convex, not
  strictly convex, with `H = 1/2 > 0`.
- `M = {y ≥ x³} ⊆ ℝ²` with `ρ = y − x³`: at `(x, x³)` with unit tangent `t`,
  `II(t, t) = 6x/(1 + 9x⁴)^{3/2}`; positive for `x > 0`, negative for `x < 0`, zero at `x = 0`, so the
  boundary is convex and concave but neither strictly at the origin.
- Dimension one: `T_q∂M = 0`, and `∂M` is both strictly convex and strictly concave at every point
  (both conditions are vacuous); the exclusion above needs `n ≥ 1`.

*Needs:* 1.4, 1.5, 1.6.

### 2.2 Hessian characterisation

Prove: for `q ∈ ∂M` and any boundary defining function `ρ` on a neighbourhood of `q`, `∂M` is
strictly convex at `q` iff `Hess ρ(v, v) < 0` for every nonzero `v ∈ T_q∂M`; convex at `q` iff
`Hess ρ ≤ 0` on `T_q∂M`; strictly concave at `q` iff `Hess ρ(v, v) > 0` for every nonzero
`v ∈ T_q∂M`. In particular each condition holds for one defining function iff it holds for every
one (Paternain–Salo–Uhlmann, Lemma 3.1.12 and lines 2838–2841; Uhlmann–Vasy, lines 499–503).

**Checks.**

- On the closed unit ball, `ρ = 1 − |x|²` and `ρ' = (2 + x₁)ρ` give, on `T∂M` where `ρ = 0` and
  `dρ = 0`, `Hess ρ' = (2 + x₁) Hess ρ = −2(2 + x₁) h`, negative for both: the sign does not depend on
  the defining function.
- `−ρ` is negative inside, so it is not a defining function, and it reverses every sign: the
  positivity convention of 1.3 is load-bearing.

*Needs:* 1.3, 1.4, 2.1.

### 2.3 Openness, uniform bounds and families of metrics

Prove:

- The sets of points of `∂M` at which `∂M` is strictly convex, respectively strictly concave, are
  open in `∂M` (continuity of `II` and compactness of `h`-unit spheres in `T∂M` over compact
  neighbourhoods).
- If `∂M` is compact and strictly convex, there is `c > 0` with `II_q(u, u) ≥ c h_q(u, u)` for all
  `q ∈ ∂M` and `u ∈ T_q∂M`; equivalently every principal curvature is at least `c`.
- For a finite-dimensional smooth parameter manifold `P` and a smooth family `(g_s)_{s ∈ P}` of
  Riemannian metrics on `M` (a `TauCeti.Manifold.ContMDiffNondegenerateMetricFamily` whose forms
  are positive definite), the set of `(s, q) ∈ P × ∂M` at which `∂M` is strictly convex for `g_s`
  is open; if `∂M` is compact and strictly convex for `g_{s₀}`, it is strictly convex for every
  `g_s` with `s` in a neighbourhood of `s₀` (Paternain–Salo–Uhlmann, lines 3093–3095; Uhlmann–Vasy,
  lines 49–51).

**Checks.**

- The epigraph `{y ≥ √(1 + x²)} ⊆ ℝ²` has curvature `(1 + 2x²)^{−3/2}` at `(x, √(1 + x²))`: strictly
  convex everywhere with infimum `0`, so the uniform bound needs compactness of `∂M`.
- For `M = {y ≥ x³}` the convex points form the closed set `{x ≥ 0}` of the boundary, which is not
  open: convexity without strictness is not an open condition.
- The family `g_s = e^{−2s|x|²} g` on the closed unit disc, `s ∈ ℝ`, has `II^{g_s} = e^{−s}(1 − 2s)h`
  by 1.6: strictly convex exactly for `s < 1/2`, an open set of parameters, with `II = 0` at
  `s = 1/2`.

*Needs:* 1.4, 1.6, 2.1; Tau Ceti `TauCeti.Manifold.ContMDiffNondegenerateMetricFamily`,
`TauCeti.Manifold.ContMDiffNondegenerateMetricFamily.contMDiffAt_christoffelSymbol`.

### Examples

The ball (strictly convex), half-space (convex), exterior (strictly concave), cylinder (convex,
mean convex), `{y ≥ x³}` (mixed), the hyperbola epigraph (no uniform bound) and the conformal
family `e^{−2s|x|²} g` (threshold `s = 1/2`).

### Dependencies

2.1 uses Layer 1; 2.2 uses 1.3–1.4 and 2.1; 2.3 uses 1.4, 1.6, 2.1 and Tau Ceti's metric families.

## Layer 3: Regular domains and the extension across the boundary

### 3.1 Regular domains

Let `(N, g)` be a Hausdorff boundaryless smooth manifold over `𝓘(ℝ, E)` with `finrank ℝ E = n + 1`
and a smooth Riemannian metric, and `ρ : N → ℝ` smooth with `0` a regular value
(`TauCeti.IsRegularValue`). Construct the regular domain `D_ρ := {ρ ≥ 0}` as a Riemannian manifold
with boundary: Tau Ceti's sublevel atlas for `−ρ` (`TauCeti.scalarRegularSublevelChartedSpace`,
manifold by `TauCeti.isManifold_scalarRegularSublevel`, boundary `{ρ = 0}` by
`TauCeti.boundary_scalarRegularSublevel`, interior `{ρ > 0}` by
`TauCeti.interior_scalarRegularSublevel`) with the metric `g_D` pulled back along the inclusion
`j : D_ρ → N` (`Bundle.ContMDiffRiemannianMetric.pullback`) (Stefanov–Uhlmann–Vasy, lines 96–97;
Uhlmann–Vasy, lines 25–26; Paternain–Salo–Uhlmann, lines 2770–2772). Prove:

- `j` is a smooth closed embedding whose differential is invertible at every point, boundary
  points included, and `D_ρ` is closed in `N` with `∂D_ρ = {ρ = 0}`.
- Levi-Civita compatibility: for `x ∈ D_ρ`, `X ∈ T_x D_ρ` and a vector field `Y` on `N`
  differentiable at `x`, `dj(∇^D_X Y_D) = ∇^N_{dj X} Y`, where `Y_D` is the pullback of `Y`;
  consequently `Hess^D(f ∘ j) = Hess^N f` and `dj(grad^D(f ∘ j)) = grad^N f` on `D_ρ`, boundary
  points included.
- `ρ ∘ j` is a global boundary defining function of `D_ρ`, `dj(ν_in) = grad ρ/|grad ρ|` on
  `{ρ = 0}`, and `II_{D_ρ} = −Hess^N ρ/|dρ|` on `T∂D_ρ`.
- Independence of `ρ`: if `ρ, ρ'` have `0` as regular value and `{ρ ≥ 0} = {ρ' ≥ 0}`, the identity
  is a diffeomorphism and an isometry between the two structures.
- Lengths: for a `C¹` curve in `D_ρ`, its length in `D_ρ` equals the length of its composite with
  `j`; hence the Riemannian distance of `D_ρ` is at least that of `N` on `D_ρ`.

**Checks.**

- The closed unit ball `{1 − |x|² ≥ 0} ⊆ ℝⁿ⁺¹` and the same set written as
  `{(2 + x₁)(1 − |x|²) ≥ 0}` give the same structure, with `II = h`.
- `ρ = (1 − |x|²)³` has `0` as a critical value on the sphere: the regular-value hypothesis fails,
  and the sublevel theorem does not apply, although the set is the ball.
- `ρ = x₀² − x₁²` on `ℝ²` has a critical point at the origin in `{ρ = 0}`, and `{ρ ≥ 0}` is a double
  cone, not a manifold with boundary there.

*Needs:* Layer 1; Tau Ceti `TauCeti.IsRegularValue`, `TauCeti.scalarRegularSublevelChartedSpace`,
`TauCeti.isManifold_scalarRegularSublevel`, `TauCeti.boundary_scalarRegularSublevel`,
`TauCeti.interior_scalarRegularSublevel`, `Bundle.ContMDiffRiemannianMetric.pullback`; Mathlib
`CovariantDerivative.IsLeviCivitaConnection.uniqueness`, `Manifold.pathELength`.

### 3.2 Sublevel sets and level sets concave from the superlevel sets

Define, for an open `U ⊆ N` and `x ∈ C^∞(U)` with `dx ≠ 0` on `U`: the level set of `x` through
`y ∈ U` is strictly concave from the superlevel sets at `y` if `Hess x(v, v) > 0` for every nonzero
`v ∈ ker dx_y`; the level sets of `x` are strictly concave from the superlevel sets on `U` if this
holds at every `y ∈ U` (Stefanov–Uhlmann–Vasy, lines 128–129 and 198–200; Uhlmann–Vasy, lines
137–140 and 507–509). Prove:

- For `c` with `{x ≤ c}` a regular domain of the open submanifold `U` (with defining function
  `c − x`): `II(v, v) = Hess x(v, v)/|dx|` on `T∂{x ≤ c}`, so its boundary is strictly convex at
  `y` iff the level set is strictly concave from the superlevel sets at `y`; the superlevel domain
  `{x ≥ c}` has `II = −Hess x/|dx|` and is strictly concave there.
- Model: for a regular domain `M = {ρ ≥ 0}` and `q ∈ ∂M`, the level set of `x = −ρ` through `q` is
  strictly concave from the superlevel sets at `q` iff `∂M` is strictly convex at `q`.
- The condition is invariant under replacing `x` by `a x + b` with `a > 0` and depends only on the
  germ of `x` at `y`.

**Checks.**

- `x = |z|²` on `ℝⁿ⁺¹ ∖ {0}`: `Hess x = 2g`, level sets strictly concave from the superlevel
  sets; `{x ≤ c}` is the ball with `II = 2h/(2√c) = h/√c`; `x = −|z|²` has `Hess x = −2g` and
  fails.
- An affine `x` on `ℝⁿ⁺¹` has `Hess x = 0`: its level sets (hyperplanes) are not strictly concave
  from either side.
- Stefanov–Uhlmann–Vasy's example (lines 203–205): `x(z) = |z − z₀| − sup_M |· − z₀|` on `ℝⁿ⁺¹ ∖ {z₀}`
  has `Hess x = (g − dx ⊗ dx)/|z − z₀|`, positive definite on `ker dx`.

*Needs:* 1.4, 2.1, 3.1.

### 3.3 The collar extension and the double

Let `M` be Hausdorff and second countable, and `c : ∂M × [0, 1) → M` a smooth collar
(GeometricTopology Layer 1): a diffeomorphism of manifolds with boundary onto an open
neighbourhood `U` of `∂M` with `c(q, 0) = q`. Give `int M` the boundaryless structure over
`𝓘(ℝ, ℝⁿ⁺¹)` whose charts are the half-space charts of `M` restricted to interior points and read
in `ℝⁿ⁺¹` (interior points are read in the open half-space `{x⁰ > 0}`, and the restricted images
are open there), so that the inclusion `int M → M` is a smooth open embedding and `c` restricts to
a diffeomorphism `∂M × (0, 1) → U ∩ int M` of boundaryless manifolds. Construct `M̃` as the
compatible open gluing (Tau Ceti `TopCat.GlueData.chartedSpace`,
`TopCat.GlueData.IsCompatible.isManifold`, the gluing data given by Mathlib's
`TopCat.GlueData.MkCore`) of the two boundaryless pieces `int M` and the bicollar `∂M × (−1, 1)`
along the open subsets `U ∩ int M` and `∂M × (0, 1)` identified by `c`, and prove:

- `M̃` is a Hausdorff second-countable boundaryless smooth manifold of dimension `n + 1`:
  Hausdorff by the closed-relation criterion (`TopCat.GlueData.t2Space_iff_isClosed_chartRel`),
  since if `c(q_k, t_k) → x` in `int M` and `(q_k, t_k) → (q, t)` in `∂M × (−1, 1)`, then `t ≥ 0`,
  `x = c(q, t)` by continuity of `c` on `∂M × [0, 1)`, and `t > 0` because `x ∉ ∂M`, so the limit
  pair lies in the relation; second countable as a gluing of two second-countable pieces
  (`TopCat.GlueData.secondCountableTopology`).
- The canonical maps of the two pieces are smooth open embeddings
  (`TopCat.GlueData.IsCompatible.isLocalDiffeomorph_ι`,
  `TopCat.GlueData.IsCompatible.partialDiffeomorphι`); write `c̃ : ∂M × (−1, 1) → M̃` for that of
  the bicollar. The map `M → M̃` equal to the canonical map on `int M` and to `q ↦ c̃(q, 0)` on
  `∂M` is a closed embedding with image `M̃ ∖ c̃(∂M × (−1, 0))`; identifying `M` with its image,
  `M` is closed in `M̃`, `c̃` extends `c`, and `c̃(q, t) ∈ M` iff `t ≥ 0`.
- There is `ρ̃ ∈ C^∞(M̃)` with `0` a regular value, `ρ̃ > 0` on `int M`, `ρ̃ = 0` on `∂M`,
  `ρ̃ < 0` on `M̃ ∖ M`, and `ρ̃(c̃(q, t)) = t` on a neighbourhood of `∂M × {0}` in `∂M × (−1, 1)`,
  which contains `∂M × (−1/2, 1/2)` when `∂M` is compact. Route: with a smooth partition of
  unity `φ₀ + φ₁ = 1` subordinate to the open cover of `M̃` by `c̃(∂M × (−1, 1))` and `M̃ ∖ ∂M`
  (`∂M` is closed in `M̃`; for compact `∂M` the second set is replaced by
  `M̃ ∖ c̃(∂M × [−1/2, 1/2])`, open because `c̃(∂M × [−1/2, 1/2])` is compact), set `ρ̃ := φ₀ · (χ ∘ t) + φ₁ · s`, with `t` the bicollar
  coordinate, `χ` an odd smooth function equal to `t` for `|t| ≤ 1/2` and to `1` for `t ≥ 3/4`,
  and `s` the locally constant function equal to `1` on `int M` and to `−1` on `M̃ ∖ M`. The
  identity of `M` is a diffeomorphism from `M`'s atlas onto Tau Ceti's sublevel atlas of
  `{ρ̃ ≥ 0}`: at interior points both atlases consist of the charts of `int M`, and near `∂M` the
  bicollar chart restricted to `t ≥ 0` is `c` composed with a chart of `∂M`, a chart of `M`'s
  maximal atlas in which `ρ̃ = t` is the normal coordinate, so the sublevel charts built from it
  are compatible with `M`'s half-space charts.
- If `M` is compact and `∂M ≠ ∅`, the double `DM` is the compatible open gluing of three
  boundaryless pieces, two copies of `int M` and the bicollar `∂M × (−1, 1)`: the first copy is
  glued along `(q, t) ↦ c(q, t)` on `∂M × (0, 1)`, the second along `(q, t) ↦ c(q, −t)` on
  `∂M × (−1, 0)`, and the two copies do not meet (the cocycle condition is vacuous). `DM` is
  Hausdorff (the closed-relation argument for each pair of pieces), second countable,
  boundaryless, compact (the continuous image of `M ⊔ M` under the two copy maps `M → DM`), and
  contains the first copy of `M` as the regular domain `{ρ_D ≥ 0}` of a smooth `ρ_D` with `0`
  regular, built as `ρ̃` was with `s = 1` on the first copy of `int M` and `s = −1` on the second,
  and `ρ_D(c̃(q, t)) = t` for `|t| < 1/2`; `DM` is connected when `M` is, since the two copies of
  `M` are connected and meet along `∂M ≠ ∅`.

(Paternain–Salo–Uhlmann, Lemma 3.1.8 and Exercise 3.1.9, lines 2749–2762; Lee, *Introduction to
Smooth Manifolds*, Theorem 9.25, for the collar.)

**Checks.**

- `M = [0, 1]`: `int M = (0, 1)` glued to a bicollar `(−1, 1)` at each end gives `M̃ = (−1, 2)`, an
  open interval containing `[0, 1]`; `DM` is a circle; the closed unit disc doubles to a 2-sphere.
- The closed half-space `ℝⁿ × [0, ∞)`: `M̃ ≅ ℝⁿ × (−1, ∞)`, non-compact, with `ρ̃ = x⁰` near the
  boundary.
- The bicollar piece is what makes `M̃` Hausdorff: gluing two copies of `int M` along the open
  subset `U ∩ int M` alone is Tau Ceti's double of `int M` along an open set, Hausdorff only when
  that set is closed in `int M` (`TauCeti.t2Space_doubleGlueData_iff`); for `M = [0, 1]` with the
  collar `c(0, t) = t/2`, `c(1, t) = 1 − t/2` the set is `(0, 1/2) ∪ (1/2, 1)`, not closed in
  `(0, 1)`, and the double has two copies of the point `1/2` with no disjoint neighbourhoods. In
  `M̃` the seam `∂M × {0}` lies in the bicollar piece and the gluing relation is closed.
- If `∂M = ∅` the double is `M ⊔ M`, disconnected for nonempty `M`; the connectedness clause needs
  `∂M ≠ ∅`, and the realisation theorem 3.5 then takes `M̃ = M`.

*Needs:* GeometricTopology Layer 1 (collar neighbourhoods); 3.1; Tau Ceti
`TopCat.GlueData.chartedSpace`, `TopCat.GlueData.IsCompatible.isManifold`,
`TopCat.GlueData.IsCompatible.isLocalDiffeomorph_ι`,
`TopCat.GlueData.IsCompatible.partialDiffeomorphι`, `TopCat.GlueData.IsCompatible.contMDiff_iff`,
`TopCat.GlueData.t2Space_iff_isClosed_chartRel`, `TopCat.GlueData.secondCountableTopology`,
`TauCeti.isManifold_boundary`, `TauCeti.scalarRegularSublevelChartedSpace`; Mathlib
`TopCat.GlueData`, `TopCat.GlueData.MkCore`, `ModelWithCorners.isClosed_boundary`,
`SmoothPartitionOfUnity`.

### 3.4 Extension of functions and metrics across the boundary

Let `M = {ρ ≥ 0}` be a regular domain of a Hausdorff second-countable boundaryless `N`. Prove:

- Every smooth function on `M` (smooth up to the boundary, in Mathlib's sense on the manifold with
  boundary) is the restriction of a smooth function on `N`; the same holds for smooth sections of
  `T*M ⊗ T*M`. Route: in the half-space charts of the sublevel atlas, which are restrictions of
  charts of `N` in which `M = {x⁰ ≥ 0}`, apply the half-space Seeley extension to the coordinate
  coefficients, cut off inside the chart, and sum with a partition of unity of `N`.
- Every smooth Riemannian metric `g_M` on `M` is the restriction of a smooth Riemannian metric on
  `N`: extend the metric tensor, which stays positive definite on an open neighbourhood of `M` by
  continuity, and glue with any metric of `N` (DifferentialGeometry 12.1) by a cutoff equal to `1`
  on `M` and supported in that neighbourhood.

(Paternain–Salo–Uhlmann, lines 2755–2762.)

**Checks.**

- `f(x) = √x` on `[0, 1]` is continuous but not smooth up to `0` and has no smooth extension; the
  hypothesis is smoothness up to the boundary.
- On `M = [0, 1] ⊆ N = ℝ`, the metric `(x + 1/100) dx²` extends by the same formula only to
  `x > −1/100`; on `N = ℝ` the cutoff gluing is required for positivity.
- On a regular domain with empty boundary (`M` open and closed in `N`), extension by any smooth
  function on the complement works and no Seeley step is used.

*Needs:* 3.1; ComplexKahlerGeometry K5a (extension across a smooth boundary: the half-space
Seeley extension); DifferentialGeometry 12.1
(Tau Ceti `TauCeti.nonempty_contMDiffRiemannianMetric`); Mathlib `SmoothPartitionOfUnity`, `exists_contMDiffSection_forall_mem_convex_of_local`.

### 3.5 The realisation theorem

Prove: for every Hausdorff second-countable `(M, g)` as in the Conventions there are a Hausdorff
second-countable boundaryless Riemannian manifold `(M̃, g̃)` of dimension `n + 1`, a smooth
`ρ̃ : M̃ → ℝ` with `0` a regular value, and a diffeomorphism `Φ` from `M` onto the regular domain
`{ρ̃ ≥ 0}` with `Φ* g̃ = g` and `Φ(∂M) = {ρ̃ = 0}`. If `M` is compact, `M̃` can be taken compact; if
moreover `M` is connected, `M̃` can be taken compact and connected (the closed extension)
(Paternain–Salo–Uhlmann, Lemma 3.1.8, lines 2749–2762; Stefanov–Uhlmann–Vasy, lines 96–97).
Route: 3.3 for `M̃` and `ρ̃` (the double when `M` is compact with `∂M ≠ ∅`, `M̃ = M` read through
interior charts when `∂M = ∅`), then 3.4 for `g̃`.

**Checks.**

- The closed unit disc is realised in `ℝ²` with `ρ = 1 − |x|²` and in its double `S²`; Layer 1
  gives `II = h` in both, since `II` is computed on the disc itself.
- `[0, 1]` with `g = (1 + x)² dx²` is realised in the circle `D[0, 1]` with an extended metric; its
  length `∫₀¹ (1 + x) dx = 3/2` is the same in every realisation.
- A compact manifold without boundary is its own realisation with `ρ̃ ≡ 1`.

*Needs:* 3.1, 3.3, 3.4.

### 3.6 Comparison with immersion geometry

For a regular domain `M = {ρ ≥ 0}` of `(N, g)` (in particular a realisation from 3.5), the
inclusion `∂M → N` is an isometric embedding of the boundaryless manifolds `(∂M, h)` and `(N, g)`.
Prove that RiemannianGeometry R5a's second fundamental form `B` of this embedding satisfies
`B(u, w) = II(u, w) ν_in`, that R5a's shape operator satisfies `S_{ν_in} = S`, and that R5a's
averaged mean curvature vector is `H ν_in` (`n ≥ 1`). Consequently R5a's Gauss equation reads, for
tangent `X, Y, Z, W`, `⟨R^{∂M}(X, Y)Z, W⟩ = ⟨R^N(X, Y)Z, W⟩ + II(X, W) II(Y, Z) − II(X, Z) II(Y, W)`,
and only the values of `R^N` on `M` enter (Lee, *Introduction to Riemannian Manifolds*, Ch. 8).

**Checks.**

- Unit sphere in `ℝⁿ⁺¹`: R5a's `B = −g · position` and `ν_in = −position` give `⟨B, ν_in⟩ = h = II`;
  the Gauss equation gives sectional curvature `0 + 1·1 − 0 = 1`.
- Boundary of the solid cylinder in `ℝ³`: `II = diag(1, 0)` in the circle and axis directions, Gauss
  gives curvature `0 + 1·0 − 0 = 0`, the flat cylinder.
- Exterior of the unit ball: `ν_in = +position`, so `⟨B, ν_in⟩ = −h = II`; the sign of `II` follows
  the side, while `B` does not.

*Needs:* 1.4, 1.5, 3.1; RiemannianGeometry R5a.

### Examples

Balls, half-spaces and cylinders as regular domains; the interval and the disc doubled to the
circle and the sphere; the conformal ball as a domain in `(ℝⁿ⁺¹, e^{2φ} g)`.

### Dependencies

3.1 uses Layer 1 and Tau Ceti's sublevel atlas and pullback metric; 3.2 uses 1.4, 2.1 and 3.1;
3.3 uses GeometricTopology Layer 1 (the collar), Tau Ceti's compatible open gluing and 3.1; 3.4
uses 3.1, ComplexKahlerGeometry K5a and
DifferentialGeometry 12.1; 3.5 uses 3.3–3.4; 3.6 uses Layer 1, 3.1 and RiemannianGeometry R5a.

## Layer 4: Geodesics at the boundary

Throughout, `(N, g)` is a Hausdorff boundaryless Riemannian manifold as in 3.1 and
`M = {ρ ≥ 0}` a regular domain; by 3.5 every `(M, g)` is one.

### 4.1 Geodesics of a regular domain

Prove: for a nondegenerate interval `s` and `γ : ℝ → M`, `γ` is a geodesic of `M` on `s`
(`TauCeti.Manifold.IsGeodesicCurveOn` for `(M, g_M)`, which is defined at boundary points) iff
`j ∘ γ` is a geodesic of `N` on `s`, with the same initial data under `dj`. Consequences:

- Geodesics of `M` with given initial data agree on the intersection of their intervals.
- From `x ∈ int M` there is a geodesic of `M` on an open interval about `0`; from `q ∈ ∂M` with
  `v` inward there is one on `[0, ε)` for some `ε > 0`; from `q ∈ ∂M` with `v` outward there is
  none on any `[0, ε)`, `ε > 0`.
- An `N`-geodesic segment lying in `M` depends only on `(M, g_M)`: two realisations of `(M, g)`
  (3.5) have corresponding geodesic segments in `M`.

(Paternain–Salo–Uhlmann, lines 2646–2658 and 2763–2765.)

**Checks.**

- Closed unit ball: the geodesics of `M` are the chords; from `q ∈ S^n` with `v ⊥ q` there is none on
  any `[0, ε)`, since `|q + tv|² = 1 + t² > 1` for `t ≠ 0`.
- Closed half-space: a line `q + tv` with `q, v` in the boundary hyperplane is a geodesic of `M` on
  all of `ℝ` and lies in `∂M`.

*Needs:* 3.1, 3.5; HopfRinow Layer 1; Tau Ceti `TauCeti.Manifold.IsGeodesicCurveOn`,
`TauCeti.Manifold.IsGeodesicCurveOnFrom`, `TauCeti.Manifold.geodesicInterval`.

### 4.2 Second-order contact with the boundary

Prove (Paternain–Salo–Uhlmann, Lemma 3.1.13, lines 2801–2828): for an `N`-geodesic `γ` on an open
interval and any smooth `f` on `N`, `(f ∘ γ)'' = Hess f(γ', γ')`; in particular, if
`γ(t₀) ∈ ∂M`, then `(ρ ∘ γ)(t₀) = 0`, `(ρ ∘ γ)'(t₀) = |dρ| ⟨ν_in, γ'(t₀)⟩` and
`(ρ ∘ γ)''(t₀) = Hess ρ(γ'(t₀), γ'(t₀))`. If `γ(0) = q` and `γ'(0) = dι u ∈ T_q∂M`, then
`(ρ ∘ γ)''(0) = −|dρ_q| II_q(u, u)` and `ρ(γ(t)) = −½ |dρ_q| II_q(u, u) t² + O(t³)`
(Paternain–Salo–Uhlmann, Lemma 3.1.12, lines 2781–2784 and 2841–2844). Prove:

- `∂M` is strictly convex at `q` iff `(ρ ∘ γ)''(0) < 0` for every `N`-geodesic with `γ(0) = q` and
  `0 ≠ γ'(0) ∈ T_q∂M`. Read through the musical isomorphism, with `(H_G ρ)(β)` and `(H_G² ρ)(β)` the
  first and second derivatives of `ρ` along the geodesic with initial velocity `β♯`, this is
  Uhlmann–Vasy's covector condition `H_G ρ(β) = 0 ⇒ H_G² ρ(β) < 0` for nonzero `β ∈ T*_q N`
  (lines 499–503).
- Tangent geodesics leave: if `∂M` is strictly convex at `q`, such a `γ` satisfies `γ(t) ∉ M` for
  `0 < |t| < ε`, some `ε > 0`.
- No interior tangency (Paternain–Salo–Uhlmann, lines 2795–2798): if `∂M` is strictly convex, every
  nonconstant geodesic `γ : [a, b] → M` of `M` has `γ(t) ∈ int M` for `a < t < b`; in particular a
  maximal geodesic of `M` starting at a boundary point in an inward direction lies in `int M`
  except at its endpoints.

**Checks.**

- Unit ball, `q ∈ S^n`, unit `v ⊥ q`: `ρ(q + tv) = 1 − |q + tv|² = −t²`, so `(ρ ∘ γ)'' = −2`, equal to
  `−|dρ| II(v, v) = −2·1`.
- Exterior of the unit ball: `ρ(q + tv) = |q + tv|² − 1 = t² ≥ 0`, the tangent line stays in `M`;
  half-space: `ρ ≡ 0` along tangent lines, which stay in `∂M`; strict convexity is needed for the
  leaving conclusion.
- `{y ≥ x⁴} ⊆ ℝ²` at the origin: `II = 0` but `ρ(t, 0) = −t⁴ < 0` for `t ≠ 0`; the tangent line
  leaves to fourth order, so leaving does not imply strict convexity.

*Needs:* 1.3, 1.4, 2.1, 2.2, 4.1; HopfRinow Layer 1; Tau Ceti `TauCeti.Manifold.hessian_apply_eq_mvfderiv_sub`.

### 4.3 The normal exponential and signed distance of a hypersurface

Let `f ∈ C^∞(N)` have `0` as a regular value, `Σ := f⁻¹(0)` with Tau Ceti's regular-level structure
(`TauCeti.regularLevelChartedSpace`, `TauCeti.isSmoothEmbedding_coe_regularLevel`), `ν_Σ :=
grad f/|grad f|`, and `E_Σ(q, r) := exp_q(r ν_Σ(q))` on its open natural domain in `Σ × ℝ` (Tau
Ceti `TauCeti.SmoothEmbedding.normalExp` through the trivialisation of the normal line bundle by
`ν_Σ`). Prove (Stefanov–Uhlmann–Vasy, lines 99–100 and 220–221; Paternain–Salo–Uhlmann, Lemma
3.1.10, lines 2766–2773; Lee, *Introduction to Riemannian Manifolds*, Ch. 5–6):

- Tube: there is a smooth `ε : Σ → (0, ∞)`, constant when `Σ` is compact, such that `E_Σ` is a
  diffeomorphism from `{(q, r) : |r| < ε(q)}` onto an open neighbourhood `W` of `Σ`, with
  `sign f(E_Σ(q, r)) = sign r`.
- Gauss lemma for hypersurfaces: on `W`, `dE_Σ(∂_r)` is a unit vector orthogonal to
  `dE_Σ(T_qΣ × {0})`.
- Signed distance: `r_Σ :=` the second coordinate of `E_Σ⁻¹` is smooth on `W` with `|grad r_Σ| = 1`
  and `grad r_Σ = ν_Σ` on `Σ`, and there is an open `W' ⊆ W` containing `Σ` with
  `|r_Σ(y)| = d_N(y, Σ)` for `y ∈ W'`.
- Boundary case `Σ = ∂M`, `f = ρ`: on `W' ∩ M`, `r_{∂M}(y) = d_M(y, ∂M)`, the distance to `∂M` of
  `(M, g_M)` itself (no path is shorter than the normal segment, which lies in `M`), and `r_{∂M}`
  is a boundary defining function near `∂M` with `grad r_{∂M} = ν_in` on `∂M`.
- Normalised defining function: choose a smooth `ε₁ : ∂M → (0, ∞)` with `ε₁ < ε`, constant when
  `∂M` is compact, such that the closed tube `E_{∂M}({|r| ≤ ε₁(q)})` is closed in `N` (Tau Ceti's
  closed-tube theorem, applied inside `W`), and write `W := E_{∂M}({|r| < ε(q)})` and
  `W₁ := E_{∂M}({|r| < ε₁(q)})`. There is `ρ̂ ∈ C^∞(N)` with `ρ̂ = r_{∂M}` on `W₁` (so
  `ρ̂ = d_M(·, ∂M)` near `∂M` in `M`), `ρ̂ = 1` on `M ∖ W`, `ρ̂ = −1` on `N ∖ (M ∪ W)`, and `ρ̂`
  between `r_{∂M}` and `1` on `W ∩ M` and between `r_{∂M}` and `−1` on `W ∖ M`. Hence
  `M = {ρ̂ ≥ 0}`, `∂M = {ρ̂ = 0}`, `N ∖ M = {ρ̂ < 0}`, `grad ρ̂ = ν_in` on `∂M`, and for
  `0 < ε < 1` every point of `{ρ̂ ≥ −ε} ∖ M` lies in `W` with `r_{∂M} ≥ −ε`. Route:
  `ρ̂ = ψ r_{∂M} + (1 − ψ) s` with a smooth cutoff `ψ : N → [0, 1]` equal to `1` on the closed
  tube `E_{∂M}({|r| ≤ ε₁(q)})` and to `0` off `W`, and a smooth `s : N → [−1, 1]` equal to `1` on
  the closed set `M ∖ W₁` and to `−1` on the closed set `N ∖ (M ∪ W₁)` (closed because
  `∂M ⊆ W₁`), both from Mathlib's `exists_contMDiff_zero_iff_one_iff_of_isClosed`; on `W ∖ W₁`
  the value `ρ̂` is a convex combination of `r_{∂M}` and `s = ±1`.

**Checks.**

- `Σ = S^n ⊆ ℝⁿ⁺¹`, `f = 1 − |x|²`: `ν_Σ = −x`, `E(q, r) = (1 − r)q`, `r_Σ = 1 − |x|` on
  `0 < |x| < 2`, `|grad r_Σ| = 1`; `ε` cannot exceed `1`, where the normals meet at the centre.
- For the exterior domain, `f = |x|² − 1` gives `r_Σ = |x| − 1`; the sign is fixed by `f`, not by `Σ`.
- In a slanted collar of the half-plane, `(q, r) ↦ q + r(e₀ + e₁)`, the cross term
  `⟨∂_r, ∂_{x₁}⟩ = 1` is nonzero; the normal exponential is the collar with no cross term.

*Needs:* 1.3, 3.1, 4.1; HopfRinow Layers 1–2; Tau Ceti `TauCeti.regularLevelChartedSpace`,
`TauCeti.isSmoothEmbedding_coe_regularLevel`, `TauCeti.SmoothEmbedding.normalExp`,
`TauCeti.SmoothEmbedding.exists_partialDiffeomorph_normalExp_subset`,
`TauCeti.SmoothEmbedding.exists_isClosedEmbedding_normalExp_norm_le_subset`; Mathlib
`Manifold.riemannianEDist`, `exists_contMDiff_zero_iff_one_iff_of_isClosed`.

### 4.4 Boundary normal coordinates

With `ε` and `E := E_{∂M}` from 4.3 for `f = ρ`, prove (Stefanov–Uhlmann–Vasy, lines 20–22 and
220–221; Lee, *Introduction to Riemannian Manifolds*, Ch. 5–6):

- `E` restricted to `{(q, r) ∈ ∂M × ℝ : 0 ≤ r < ε(q)}` is a diffeomorphism onto an open
  neighbourhood of `∂M` in `M`, a smooth collar of `∂M` in the sense of GeometricTopology Layer 1,
  and `r = d_M(·, ∂M)` there.
- On `{|r| < ε(q)}`, `(E* g)((u, a), (u', a')) = a a' + h_r(u, u')` with `(h_r)` a smooth family of
  Riemannian metrics on `∂M` and `h_0 = h`.
- `II = −½ ∂_r h_r |_{r=0}`.

**Checks.**

- Ball of radius `R`: `E(q, r) = (1 − r/R) q`, `h_r = (1 − r/R)² h_0`, `−½ ∂_r h_r|₀ = h_0/R = II`.
- Exterior of the unit ball: `h_r = (1 + r)² h_0`, `II = −h_0`; half-space: `h_r = h_0`, `II = 0`.
- Dimension one: `∂M` is discrete, `h_r` is the zero metric on a point, and the statement reduces to
  `E* g = dr²`.

*Needs:* 1.4, 4.3; GeometricTopology Layer 1 (collar neighbourhoods).

### 4.5 Convexity functions near a strictly convex boundary point

Prove (Uhlmann–Vasy, Theorem on lines 30–32, construction on lines 504–524; Stefanov–Uhlmann–Vasy,
lines 128–134): let `q ∈ ∂M` with `∂M` strictly convex at `q`. Then:

- There are an open `U₀ ∋ q` in `N` and `C₀, δ > 0` such that for `y ∈ U₀` and unit `v ∈ T_yN`,
  `|dρ(v)| < δ` implies `Hess ρ(v, v) ≤ −C₀`.
- There are an open `U ∋ q` in `N`, `x̃ ∈ C^∞(U)` and `c₀ > 0` with `x̃(q) = 0`, `dx̃_q = −dρ_q`,
  `dx̃ ≠ 0` on `U`, the level sets of `x̃` strictly concave from the superlevel sets on `U` (3.2), and
  `K_c := {y ∈ U : x̃(y) ≥ −c, ρ(y) ≥ 0}` compact for every `0 ≤ c ≤ c₀`. In a chart `z` centred at
  `q`, `x̃ = −ρ − ε|z|²` works for every sufficiently small `ε > 0`.
- For `0 < c ≤ c₀`, `O_c := {x̃ > −c} ∩ M` is relatively open in `M` with closure in `K_c`.

**Checks.**

- Closed unit disc, `q = (0, −1)`, `ρ = 1 − |z|²`, `x̃ = |z|² − 1 − ε|z − q|²`: `Hess x̃ = (2 − 2ε) g`
  is positive for `ε < 1`, `dx̃_q = 2q = (0, −2) = −dρ_q`, and `K_c ⊆ {ε|z − q|² ≤ c}`.
- For the exterior of the unit disc the same formula gives `Hess x̃ = −(2 + 2ε) g`: the hypothesis
  of strict convexity at `q` is what makes the construction work.
- Dimension one, `M = [0, 1]`, `q = 0`, `ρ = x`: `ker dx̃ = 0`, concavity is vacuous, `x̃ = −x − εx²`,
  and `K_c = {x ∈ [0, 1] : x + εx² ≤ c}` is a compact interval.

*Needs:* 2.1, 2.2, 3.1, 3.2; Tau Ceti `TauCeti.Manifold.hessian`.

### 4.6 Slight enlargements of a strictly convex domain

Prove (Paternain–Salo–Uhlmann, lines 3093–3096): if `∂M` is compact and strictly convex and `ρ̂`
is the normalised defining function of 4.3, with constant tube radii `ε₁ < ε` there, there is
`ε₀` with `0 < ε₀ < min(ε₁, 1)` such that for `0 < ε ≤ ε₀`: `M_ε := {ρ̂ ≥ −ε}` equals
`M ∪ E_{∂M}(∂M × [−ε, 0))`, `−ε` is a regular value of `ρ̂`, `M_ε` is a regular domain with
strictly convex boundary `E_{∂M}(∂M × {−ε})`, `M ⊆ int M_ε`, and `M_ε` is compact if `M` is.
Route: by 4.3 a point of `M_ε ∖ M` lies in `W` with `r_{∂M} ≥ −ε > −ε₁`, hence in `W₁`, where
`ρ̂ = r_{∂M}`; so `M_ε = M ∪ E_{∂M}(∂M × [−ε, 0))`, `dρ̂ = dr_{∂M} ≠ 0` on `{ρ̂ = −ε}`, and with
the defining function `ρ̂ + ε` of `M_ε`, for which `|d(ρ̂ + ε)| = 1`, 3.1 gives
`II_{M_ε} = −Hess r_{∂M}` on the tangent spaces of `E_{∂M}(∂M × {−ε})`. At `ε = 0` this is
`II_{∂M} ≥ c h` (2.3); `Hess r_{∂M}` is continuous on the compact set `E_{∂M}(∂M × [−ε₁/2, 0])`,
over which the unit tangent vectors of the level sets of `r_{∂M}` form a compact set, so
`−Hess r_{∂M} > 0` on those vectors for `|r| ≤ ε₀` and some `ε₀ > 0`, which is 3.2 for `x = −ρ̂`.
`M_ε = M ∪ E_{∂M}(∂M × [−ε, 0])` is a union of two compact sets when `M` is compact, and
`M ⊆ {ρ̂ > −ε} = int M_ε`.

**Checks.**

- Unit ball with tube radius `ε = 1/2` and `ε₁ = 1/4`, so that `ρ̂ = 1 − |x|` on
  `3/4 < |x| < 5/4`: for `ε < 1/4`, `M_ε` is the ball of radius `1 + ε` with `II = h/(1 + ε)`.
- Spherical cap of radius `R < π/2` in the unit sphere (6.3): `M_ε` is the cap of radius `R + ε`,
  strictly convex iff `R + ε < π/2`, so `ε₀ < π/2 − R` and `ε₀` depends on the domain.
- The half-space is not strictly convex and every `M_ε` is a flat half-space: the hypothesis is
  needed for the conclusion.
- The normalisation of `ρ̂` off the tube is needed: on `ℝ²`, `ρ(x) = (1 − |x|²) e^{−|x|²}` has `0`
  as a regular value (its radial derivative at `|x| = 1` is `−2/e`) and `M = {ρ ≥ 0}` is the closed
  unit disc; a smooth function equal to `r_{∂M}` near the circle and to `ρ` for `|x| ≥ 5/4` has
  every property of 4.3's `ρ̂` except the normalisation, but `ρ` attains its minimum `−e^{−2}` at
  `|x| = √2` and tends to `0` from below, so for `0 < ε < e^{−2}` the set `{ρ ≥ −ε}` contains an
  unbounded exterior `{|x| ≥ r₂}` with `r₂ > √2`, whose boundary circle has `II = −h/r₂ < 0`, and
  `−e^{−2}` is a critical value: no `ε₀` works for that function.

*Needs:* 2.3, 3.1, 3.2, 4.3.

### Examples

The ball, its exterior and the half-space for second-order contact and Fermi coordinates; the
quartic `{y ≥ x⁴}` for leaving without strict convexity; the disc for the convexity function `x̃`;
spherical caps for enlargements.

### Dependencies

4.1 uses 3.1, 3.5 and HopfRinow Layer 1; 4.2 uses Layer 1, 2.1–2.2 and 4.1; 4.3 uses 1.3, 3.1, 4.1,
HopfRinow Layers 1–2 and Tau Ceti's normal exponential; 4.4 uses 1.4 and 4.3; 4.5 uses 2.1–2.2 and
3.1–3.2; 4.6 uses 2.3, 3.1–3.2 and 4.3.

## Layer 5: Exit time and scattering relation

Throughout, `M = {ρ ≥ 0}` is a regular domain of a Hausdorff second-countable boundaryless
`(N, g)`.

### 5.1 Unit sphere bundles and boundary strata

Define `SN := {(x, v) ∈ TN : |v| = 1}` with Tau Ceti's sphere-bundle structure for the constant
radius `1` (`TauCeti.sphereBundleChartedSpace`, `TauCeti.isManifold_sphereBundle`), a boundaryless
manifold of dimension `2n + 1` with projection `π`; `SM := π⁻¹(M)`, `∂SM := π⁻¹(∂M)`,
`∂±SM := {(x, v) ∈ ∂SM : ±⟨v, ν_in(x)⟩ ≥ 0}`, `∂₀SM := ∂₊SM ∩ ∂₋SM`, and `μ(x, v) := ⟨v, ν_in(x)⟩` on
`∂SM` (Paternain–Salo–Uhlmann, lines 2646–2648, 2682–2696 and 2931). Prove:

- `0` is a regular value of `ρ ∘ π` on `SN`; `SM` is a regular domain of `SN` with boundary `∂SM`,
  and `∂SM` is a closed embedded boundaryless submanifold of `SN`, compact if `M` is.
- `∂₊SM ∪ ∂₋SM = ∂SM` and `∂₀SM = {μ = 0}` is the set of unit vectors tangent to `∂M`; for `n ≥ 1`,
  `0` is a regular value of `μ` on `∂SM`, so `∂₀SM` is a closed hypersurface of `∂SM`.
- The geodesic flow of `N` preserves `SN` and is a smooth local flow on it (global if `N` is compact);
  its generator `X` is a smooth vector field on `SN`, and on the regular domain `SM` it acts on
  smooth functions by `Xu(z) = d/dt u(φ_t z)|_{t=0}` (Paternain–Salo–Uhlmann, lines 3063–3079).

**Checks.**

- Closed unit disc: `∂SM` is a torus, `∂₀SM` is two circles (the two unit tangents at each boundary
  point), `∂₊SM` is a closed annulus; at `x = (0, −1)`, `(0, 1) ∈ ∂₊SM` and `(1, 0) ∈ ∂₀SM`.
- Dimension one, `M = [a, b]`: `∂SM` has four points, `μ = ±1` on them, and `∂₀SM = ∅`.
- Stefanov–Uhlmann–Vasy label the vectors pointing outside `∂₊SM` (line 151): they lie in this
  roadmap's `∂₋SM`, and their scattering relation `L : ∂₋SM → ∂₊SM` (line 153), from inward to
  outward vectors, is the restriction of `α` (5.6) to this roadmap's `∂₊SM`.

*Needs:* 1.2, 3.1; HopfRinow Layer 1; Tau Ceti `TauCeti.sphereBundleChartedSpace`,
`TauCeti.isManifold_sphereBundle`, `TauCeti.isSmoothEmbedding_coe_sphereBundle`,
`TauCeti.scalarRegularSublevelChartedSpace`, `TauCeti.regularLevelChartedSpace`,
`TauCeti.Manifold.exists_contMDiffAt_localGeodesicFlow`, `TauCeti.Manifold.contMDiffOn_maximalGeodesic`,
`TauCeti.Manifold.isGeodesicallyCompleteAt_of_compactSpace`.

### 5.2 Exit time and non-trapping

Define the exit time intrinsically: for `x ∈ M` and `v ∈ T_xM`,
`τ(x, v) := sup {T > 0 : there is a geodesic γ of M on [0, T] with γ(0) = x and γ'(0) = v} ∈ [0, ∞]`,
with `sup ∅ = 0`; `M` is non-trapping if `τ(x, v) < ∞` for every unit `(x, v)`
(Paternain–Salo–Uhlmann, Definitions 3.1.1 and 3.1.3, lines 2659–2661 and 2674–2676). Prove:

- Realisation formula: `τ(x, v)` is the supremum of the `T ≥ 0` such that `[0, T]` lies in the
  maximal interval of the `N`-geodesic from `(x, v)` and that geodesic maps `[0, T]` into `M`; hence
  `τ` does not depend on `N`.
- Homogeneity: `τ(x, λ v) = τ(x, v)/λ` for `λ > 0`; `τ(x, 0) = ∞`.
- `τ(x, v) > 0` if `x ∈ int M` or `v` is inward; `τ = 0` on outward vectors at boundary points;
  `τ = 0` on `∂₀S_qM` if `∂M` is strictly convex at `q` (4.2), so then `τ = 0` on `∂₋S_qM`.
- If `M` is compact and `τ(x, v) < ∞`, the geodesic extends to `[0, τ(x, v)]`, ends on `∂M`, and
  `μ(φ_τ(x, v)) ≤ 0`; for `0 ≤ t ≤ τ(x, v)`, with `(y, w) = φ_t(x, v)`,
  `τ(y, w) = τ(x, v) − t` and `τ(y, −w) = τ(x, −v) + t` (reversal of geodesics).
- A nonempty compact `M` with empty boundary is trapped (`τ ≡ ∞`).

**Checks.**

- Closed unit disc at `x = (0, −1)`: `τ(x, (cos θ, sin θ)) = 2 sin θ` on `[0, π]` and `0` on
  `[−π, 0]` (Paternain–Salo–Uhlmann, Example 3.2.1, lines 2849–2861), from 6.1's formula.
- Closed annulus `1 ≤ |x| ≤ 2` in `ℝ²` (concave inner boundary): at `x = (−3/2, −1)`, `v = e₁` the line
  touches the inner circle at `(0, −1)` from `M` and continues, `τ = 3/2 + √3`; starting from
  `(−3/2, −1 + δ)` it hits the inner circle at time `3/2 − √(2δ − δ²)` → `3/2`, so `τ` is
  discontinuous (Paternain–Salo–Uhlmann, Exercise 3.1.2(b), line 2666).
- The half-space: `τ = ∞` on tangent vectors, which give lines in `∂M`; `M = [a, b]`:
  `τ(x, +1) = b − x`.

*Needs:* 4.1, 4.2, 5.1; Tau Ceti `TauCeti.Manifold.IsGeodesicCurveOnFrom`,
`TauCeti.Manifold.geodesicInterval`, `TauCeti.Manifold.maximalGeodesic`.

### 5.3 Two lemmas of calculus

Prove the fold normal form (Paternain–Salo–Uhlmann, Lemma 3.2.10, lines 2970–2982, proof lines
2985–3026): let `h(t, y)` be smooth near `(0, y₀)` in `ℝ × ℝ^K` with `h(0, y₀) = 0`,
`∂_t h(0, y₀) = 0` and `∂_t² h(0, y₀) < 0`. Then there are smooth `Q` near `(0, y₀)` in `ℝ × ℝ^K`
and `a` near `y₀` such that `a(y) ≥ 0` whenever `h(0, y) ≥ 0`, `∂_r Q(0, y₀) > 0`, and for `(t, y)`
near `(0, y₀)` with `h(0, y) ≥ 0`: `h(t, y) = 0` iff `t = Q(√a(y), y)` or `t = Q(−√a(y), y)`; moreover
`Q(√a(y), y) ≥ Q(−√a(y), y)`. Route: the implicit function theorem for `∂_t h = 0`, Hadamard
factorisation of `h` around the critical point, and the inverse function theorem for
`r = s F(s, y)^{1/2}`.

Prove the even-function lemma (Paternain–Salo–Uhlmann, Exercise 3.2.12, lines 3044–3045, used with
parameters on lines 3039–3041): if `f(r, y)` is smooth near `(0, y₀)` in `ℝ × ℝ^K` and
`f(−r, y) = f(r, y)`, there is `H` smooth near `(0, y₀)` with `f(r, y) = H(r², y)`. Route: `∂_r f` is
odd, hence `r` times a smooth even function (Hadamard division); induction shows that
`s ↦ f(√s, y)` has all `s`-derivatives continuous up to `s = 0`; extend across `s = 0` by the
half-space Seeley extension.

**Checks.**

- `h(t, y) = y − t²` (`K = 1`, `y₀ = 0`): `Q(r, y) = r`, `a(y) = y`, roots `±√y`. For `h = y − t⁴` the
  second derivative vanishes and the roots `±y^{1/4}` admit no such `Q`, `a`.
- `f(r) = cos r` gives `H(s) = Σ_k (−s)^k/(2k)!`; `f(r) = r²` gives `H(s) = s`; `f(r) = |r|` is even
  but not smooth and is excluded.
- `K = 0` (no parameters) is allowed in both lemmas.

*Needs:* Mathlib `ContDiffAt.implicitFunction`, `ContDiffAt.contDiffAt_implicitFunction`; Tau Ceti
`ContDiff.sub_eq_hadamardFactor_apply`, `ContDiff.contDiff_hadamardFactor`,
`TauCeti.contDiff_intervalIntegral`; ComplexKahlerGeometry K5a (extension across a smooth
boundary: the half-space Seeley extension).

### 5.4 Regularity of the exit time

Assume `M` compact, `∂M` strictly convex and `M` non-trapping. Prove (Paternain–Salo–Uhlmann, Lemma
3.2.3, lines 2865–2886; Lemma 3.2.6, lines 2896–2925; Lemma 3.2.8, lines 2935–2949; Lemma 3.2.9,
lines 2955–2966; Lemma 3.2.11, lines 3027–3043; Remark 3.2.13, lines 3046–3055; Exercise 3.3.3,
lines 3110–3113):

- `τ` is smooth on `SM ∖ ∂₀SM`: every `z ∈ SM ∖ ∂₀SM` has an open neighbourhood in `SN` and a
  smooth function on it agreeing with `τ` on `SM`. For such `z`, `μ(φ_{τ(z)} z) < 0`: the exit is
  transversal. Route: no interior tangency (4.2) keeps nearby geodesics in `int M` away from the
  endpoints, and the implicit function theorem applies to `h(t, y) = ρ(γ_y(t))` at the transversal
  exit, so the root it produces is the exit time of every nearby `y`.
- `τ` is continuous on `SM` (Exercise 3.2.4, lines 2868 and 2891, which the source leaves to the
  reader): off `∂₀SM` by the previous item, and at `∂₀SM` by the fold form below, where
  `τ = Q(√a, ·)` with `Q(0, z₀) = 0`.
- The odd extension `τ̃ : ∂SM → ℝ`, `τ̃ = τ` on `∂₊SM` and `τ̃(x, v) = −τ(x, −v)` on `∂₋SM` (both are `0`
  on `∂₀SM`), is smooth on the manifold `∂SM`, and `τ̃ = 0` exactly on `∂₀SM`.
- `μ/τ̃` on `∂SM ∖ ∂₀SM` extends to a smooth positive function on `∂SM` whose value at
  `(q, dι u) ∈ ∂₀SM` is `II_q(u, u)/2`.
- Fold form (Lemma 3.2.9, which needs only `M` compact and `∂M` strictly convex near the base point
  of `z₀`, not non-trapping): near every `z₀ ∈ ∂₀SM`, on `SM`, `τ(x, v) = Q(√a(x, v), x, v)` and
  `−τ(x, −v) = Q(−√a(x, v), x, v)` with `Q`, `a` smooth and `a ≥ 0` on `SM`.
- `σ := τ(x, v) − τ(x, −v)` and `T := τ(x, v) τ(x, −v)` are smooth on the manifold with boundary
  `SM`, `σ = τ̃` on `∂SM`, and `τ = (σ + √(σ² + 4T))/2`, the nonnegative root of
  `τ² − σ τ − T = 0`.
- `Xσ = −2` on `SM`.

**Checks.**

- Closed unit disc at `x = (0, −1)`: `τ̃(x, v_θ) = 2 sin θ` for all `θ`, smooth, while `τ|∂SM` has
  one-sided derivatives `2` and `0` at `θ = 0`; `μ/τ̃ = sin θ/(2 sin θ) = 1/2 = II(v, v)/2`.
- Closed unit ball: `τ(x, v) − τ(x, −v) = −2⟨x, v⟩`, `τ(x, v) τ(x, −v) = 1 − |x|²`, both smooth, and
  `d/dt(−2⟨x + tv, v⟩) = −2`; Remark 3.2.13's formula returns 6.1's `τ`.
- `M = [a, b]`: `τ(x, 1) − τ(x, −1) = a + b − 2x` and `X = d/dx` along the flow gives `−2`.
- Fold form on the closed unit ball (Remark 3.2.13): `a = 4(⟨x, v⟩² + 1 − |x|²)` and
  `Q(r, x, v) = (−2⟨x, v⟩ + r)/2`, so `Q(√a) = τ(x, v)` and `Q(−√a) = −τ(x, −v)`.

*Needs:* 2.1, 2.3, 4.2, 4.3, 5.1, 5.2, 5.3; Mathlib `ContDiffAt.implicitFunction`,
`ContDiffAt.contDiffAt_implicitFunction`; Tau Ceti `TauCeti.Manifold.contMDiffOn_maximalGeodesic`.

### 5.5 Non-trapping criteria

Prove (Paternain–Salo–Uhlmann, Proposition 3.3.1, lines 3081–3106):

- For compact `M` (no convexity assumption): if some `f ∈ C^∞(SM)` has `Xf > 0` on `SM`, then `M` is
  non-trapping, with `τ ≤ (max f − min f)/min Xf`.
- Hessian criterion: for compact `M`, if `u` is smooth on an open neighbourhood of `M` in `N` and
  `Hess u` is positive definite at every point of `M`, then `M` is non-trapping (apply the first
  item to `f(x, v) = du_x(v)`, for which `Xf(x, v) = Hess u(v, v)`).
- For compact `M` with strictly convex boundary the following are equivalent: `M` is non-trapping;
  `X : C^∞(SM) → C^∞(SM)` is surjective; some `f ∈ C^∞(SM)` has `Xf > 0`. Route: `f = −σ` has
  `Xf = 2` by 5.4; for surjectivity, extend `f` and the given `h ∈ C^∞(SM)` to a neighbourhood of
  `SM` in `SN` (3.4 for the regular domain `SM`), so that `Xf > 0` on `SM_ε` and `M_ε` is
  non-trapping with strictly convex boundary for small `ε` (4.6), and set
  `u = −∫_0^{τ_ε} h ∘ φ_t dt` with `τ_ε` the exit time of `M_ε`, smooth on `SM` by 5.4 since
  `SM ∩ ∂₀SM_ε = ∅`; then `Xu = h`.

**Checks.**

- Closed unit ball with `u = |x|²/2`: `f(x, v) = ⟨x, v⟩`, `Xf = 1`, and the bound gives
  `τ ≤ (1 − (−1))/1 = 2`, the diameter, attained by diameters.
- A nonempty compact manifold without boundary (the boundary condition is vacuous): all three
  conditions fail: `Xf` vanishes at a maximum of `f` on `SM`, the constant `1` is therefore not of
  the form `Xu`, and `τ ≡ ∞`.
- The hemisphere (6.3 with `R = π/2`): its boundary great circle is a geodesic of `M`, so it is
  trapped, and `II = 0` there; the strict convexity hypothesis is not met.

*Needs:* 3.4, 4.6, 5.1, 5.2, 5.4.

### 5.6 The scattering relation and boundary lens data

Assume `M` compact, `∂M` strictly convex and `M` non-trapping. Define the scattering relation
`α : ∂SM → ∂SM`, `α(z) := φ_{τ̃(z)}(z)`, equivalently `(γ_z(τ̃(z)), γ_z'(τ̃(z)))` with `γ_z` the
geodesic of `M` (Paternain–Salo–Uhlmann, Definition 3.3.4, lines 3114–3117). Define the tangential
projection `P(x, v) := v − μ(x, v) ν_in(x) ∈ T_x∂M` on `∂SM`, and the boundary lens data
`L := P ∘ α ∘ (P|_{∂₊SM})⁻¹` and `ℓ := τ ∘ (P|_{∂₊SM})⁻¹` on the closed unit ball bundle `B∂M` of
`(∂M, h)` (Stefanov–Uhlmann–Vasy, lines 150–163, with their `∂±` interchanged).

- `α` is a diffeomorphism of `∂SM`, `α ∘ α = id`, `α(∂±SM) = ∂∓SM`, the fixed-point set of `α` is
  exactly `∂₀SM`, and `τ̃ ∘ α = −τ̃` (Lemma 3.3.5 and Exercise 3.3.6, lines 3118–3127).
- `α` does not depend on the realisation `N`.
- `P` restricts to homeomorphisms `∂±SM → B∂M`, with inverse `w ↦ w ± √(1 − |w|²) ν_in`, and to
  diffeomorphisms of `∂±SM ∖ ∂₀SM` onto the open unit ball bundle.
- `L` and `ℓ` are intrinsic to `(M, g)`; two metrics on `M` with the same induced metric `h` have
  lens data on the same `B∂M`, so equality of their lens data is a statement about maps
  `B∂M → B∂M` and `B∂M → [0, ∞)`.

**Checks.**

- Closed unit ball: `α(x, v) = (x − 2⟨x, v⟩ v, v)`; applying it twice returns `(x, v)` since
  `⟨x − 2⟨x, v⟩v, v⟩ = −⟨x, v⟩`; the fixed points are `⟨x, v⟩ = 0`, the glancing set.
- Closed unit disc: `|L(x, w)| = |w|` (equal angles at entry and exit) and `ℓ(x, w) = 2√(1 − |w|²)`.
- `M = [a, b]`: `α(a, +1) = (b, +1)` with `τ̃ = b − a`, `α(b, +1) = (a, +1)` with `τ̃ = −(b − a)`, and
  `α` has no fixed points, matching `∂₀SM = ∅`.

*Needs:* 1.2, 5.1, 5.2, 5.4.

### Examples

The disc and ball (all formulas explicit), the interval (dimension one), the annulus
(discontinuity without convexity), closed manifolds and the hemisphere (trapping).

### Dependencies

5.1 uses 1.2, 3.1, HopfRinow Layer 1 and Tau Ceti's sphere bundles; 5.2 uses 4.1–4.2 and 5.1; 5.3
uses only calculus (Mathlib, Tau Ceti, ComplexKahlerGeometry K5a); 5.4 uses 2.1, 2.3, 4.2–4.3 and
5.1–5.3; 5.5 uses 3.4, 4.6 and 5.1–5.4; 5.6 uses 1.2, 5.1, 5.2 and 5.4.

## Layer 6: Examples

### 6.1 Euclidean balls and convex Euclidean domains

For the closed ball `B̄(c, R) = {R² − |x − c|² ≥ 0} ⊆ ℝⁿ⁺¹` with the Euclidean metric prove:
`II = h/R`, `S = R⁻¹ id`, `H = 1/R` (`n ≥ 1`); the boundary is strictly convex; the ball is
non-trapping with `τ(x, v) = −⟨x − c, v⟩ + √(⟨x − c, v⟩² + R² − |x − c|²)` for unit `v`; on `∂SM`,
`τ̃(x, v) = −2⟨x − c, v⟩` and `α(x, v) = (x − 2⟨x − c, v⟩ v, v)`; the signed distance to the sphere is
`R − |x − c|` (Paternain–Salo–Uhlmann, Example 3.2.1, lines 2849–2864, and lines 307–310).

For a compact regular domain `D = {ρ ≥ 0} ⊆ ℝⁿ⁺¹` prove: `D` is non-trapping (5.5 with
`u = |x|²/2`), and `τ ≤ diam D` since its geodesics are straight segments; if `D` is convex as a subset of `ℝⁿ⁺¹`, then `∂D` is convex; and at
`q ∈ ∂D`, in Euclidean coordinates with `q = 0` and `ν_in(q) = e₀`, `D = {x₀ ≥ w(x')}` near `0` with
`w(0) = 0`, `Dw(0) = 0`, and `II_q = D²w(0)` under `T_q∂D = ℝⁿ`; so `∂D` is strictly convex at `q`
iff `D²w(0)` is positive definite, iff the principal curvatures at `q` are positive
(Paternain–Salo–Uhlmann, Example 3.1.4, lines 2677–2680).

**Checks.**

- `R = 1`, `c = 0`: `II = h`, `H = 1`; at `x = (0, −1)` in `ℝ²`, `τ(x, (cos θ, sin θ)) = sin θ + |sin θ|`,
  which is `2 sin θ` or `0`.
- The ellipse `{x²/a² + y²/b² ≤ 1}` at `(a, 0)`: `dρ = (−2/a, 0)`, `Hess ρ(e_y, e_y) = −2/b²`, so
  `II = a/b²`, the curvature of the ellipse at its vertex.
- `{y ≥ x³}` is not convex near `0` and has `II < 0` for `x < 0`; the graph form gives
  `w(x) = x³`, `w''(x) = 6x`.

*Needs:* 1.4, 1.5, 2.1, 3.1, 3.2, 5.2, 5.4, 5.5, 5.6.

### 6.2 Half-spaces and ball exteriors

Prove: the closed half-space `{x⁰ ≥ 0} ⊆ ℝⁿ⁺¹` has `II = 0`, is convex and nowhere strictly convex,
its tangent geodesics stay in `∂M`, and `τ = ∞` on `∂₀SM`. The closed exterior `{|x − c| ≥ R}` has
`II = −h/R`, `H = −1/R`, is strictly concave, and its tangent lines enter `int M` to second order
(Paternain–Salo–Uhlmann, Definition 2.5.1 and Lemma 2.5.2, lines 2449–2473).

**Checks.**

- Half-space with `ρ = x⁰`: `Hess ρ = 0`; along `q + tv` with `v ∈ ℝⁿ`, `ρ ≡ 0`.
- Exterior of the unit ball: `ρ(q + tv) = t²` along tangent lines; `II = −h`, `H = −1`.
- Both are non-compact, so 5.4 and 5.6 do not apply; the exterior has `τ = ∞` in every direction
  that does not point at the ball.

*Needs:* 1.4, 1.5, 2.1, 4.2, 5.2.

### 6.3 Spherical caps and hyperbolic domains

In the unit sphere `S^{n+1} ⊆ ℝⁿ⁺²` with Tau Ceti's round metric (`TauCeti.sphereRoundMetric`),
prove for the cap `C_R = {⟨x, p⟩ ≥ cos R}`, `0 < R < π`: `II = cot R · h`; `∂C_R` is strictly
convex iff `R < π/2`, totally geodesic at `R = π/2` and strictly concave for `R > π/2`; `C_R` is
non-trapping iff `R < π/2` (Hessian criterion with `u = −⟨x, p⟩`, `Hess u = ⟨x, p⟩ g`, for `R < π/2`;
a closed great circle inside `C_R` for `R ≥ π/2`) (Paternain–Salo–Uhlmann, Examples 2.5.4–2.5.5,
lines 2499–2521, and Example 3.1.4, lines 2677–2680).

In Tau Ceti's upper half-space model `TauCeti.UpperHalfSpace` of hyperbolic space with
`TauCeti.UpperHalfSpace.hyperbolicMetric`, prove that `u(x, y) = (|x|² + y² + 1)/(2y)` satisfies
`Hess u = u · g` with `u ≥ 1`; hence every compact regular domain is non-trapping (5.5), and the
closed balls `{u ≤ cosh R}`, `R > 0`, are strictly convex with `II = coth R · h`
(Paternain–Salo–Uhlmann, Example 3.1.4).

**Checks.**

- Cap: with `ρ = ⟨x, p⟩ − cos R`, `Hess ρ = −⟨x, p⟩ g = −cos R · g` on `∂C_R` and `|dρ| = sin R`, so
  `II = cot R · h`; `R = π/4` gives `II = h`, `R = π/2` gives `0`.
- Hyperbolic plane (`n = 1`, `g = (dx² + dy²)/y²`): with `Γ^x_{xy} = −1/y`, `Γ^y_{xx} = 1/y`,
  `Γ^y_{yy} = −1/y`, `u_x = x/y`, `u_y = ½ − (x² + 1)/(2y²)`, one gets
  `Hess u_{xx} = 1/(2y) + (x² + 1)/(2y³) = u/y² = u g_{xx}`, `Hess u_{xy} = −x/y² + x/y² = 0` and
  `Hess u_{yy} = u/y²`.
- At radius `R = 1` the boundary second fundamental forms are `coth 1 · h ≈ 1.313 h` (hyperbolic),
  `h` (Euclidean) and `cot 1 · h ≈ 0.642 h` (spherical): curvature `−1, 0, +1` lowers `II` in this
  order, and only the spherical value changes sign, at `R = π/2`.

*Needs:* 1.4, 2.1, 3.1, 3.2, 5.5; Tau Ceti `TauCeti.sphereRoundMetric`, `TauCeti.UpperHalfSpace`,
`TauCeti.UpperHalfSpace.hyperbolicMetric`, `TauCeti.UpperHalfSpace.hasConstantSectionalCurvature`,
`CovariantDerivative.IsLeviCivitaConnection.inner_apply_eq_inner_mvfderiv`.

### 6.4 Small geodesic balls

Prove: for a boundaryless Hausdorff Riemannian `(N, g)` and `p ∈ N` there is `r_p > 0` such that
for `0 < R < r_p` the function `d(p, ·)²` is smooth on `B(p, r_p)` with `R²` a regular value there,
and the closed ball `B̄(p, R) = {d(p, ·)² ≤ R²}` is a compact regular domain with strictly convex
boundary which is non-trapping; on a compact set of centres `r_p` can be chosen uniformly
(Lee, *Introduction to Riemannian Manifolds*, Ch. 6; the spherical-cap instance is
Paternain–Salo–Uhlmann, Example 3.1.4, lines 2677–2678). Route:
in normal coordinates `z` at `p`, `d(p, ·) = |z|` (HopfRinow Layer 2), the Christoffel symbols vanish
at `p` (RiemannianGeometry R1 item 4), so `Hess |z|² = 2g + O(|z|²)`, positive definite on a small
ball; apply 3.2 and 5.5; uniformity from SmoothBundlesConnections B6.0.

**Checks.**

- Unit sphere: geodesic balls are the caps of 6.3, strictly convex exactly for `R < π/2`, so every
  admissible `r_p` is at most `π/2`.
- `ℝⁿ⁺¹` and hyperbolic space: every radius works (6.1, 6.3).
- Flat torus `ℝ²/ℤ²`: `d(p, ·)²` is smooth on `B(p, 1/2)` and not beyond, and the balls of radius
  `R < 1/2` are flat discs with `II = h/R`.

*Needs:* 3.1, 3.2, 5.5; HopfRinow Layer 2; RiemannianGeometry R1 (item 4); SmoothBundlesConnections
B6.0.

### 6.5 Conformal and rotationally symmetric metrics on the ball

On the closed unit ball of `ℝⁿ⁺¹` with `ĝ = e^{2φ(|x|²)} g_eucl`, `φ` smooth on `ℝ`, prove
`II^ĝ = e^{φ(1)} (1 + 2φ'(1)) h_eucl`, so the sphere is strictly convex for `ĝ` iff
`d/dr (r e^{φ(r²)})|_{r=1} > 0`, the Herglotz–Wiechert condition (Stefanov–Uhlmann–Vasy, lines
66–72; Paternain–Salo–Uhlmann, Lemma 2.5.2 and Corollary 2.5.3, lines 2462–2481, with
`b(r) = r e^{φ(r²)}` in dimension two). For `φ(s) = −s` this gives `II^ĝ = −e^{−1} h_eucl`: the unit
disc is strictly convex for the Euclidean metric and strictly concave for `e^{−2|x|²} g_eucl`.

**Checks.**

- `φ ≡ 0`: `II = h`; `φ ≡ log c`: `II = c h` (1.6).
- `φ_s(t) = −s t`: `II = e^{−s}(1 − 2s) h`, and `d/dr (r e^{−s r²})|₁ = e^{−s}(1 − 2s)`: the two
  criteria agree, with threshold `s = 1/2`.
- With 1.6 directly: `ν_in = −x`, `d(φ(|x|²))(ν_in) = −2φ'(1)` on the sphere, so
  `II^ĝ = e^{φ(1)}(1 + 2φ'(1)) h`, as stated.

*Needs:* 1.6, 2.1, 3.1.

### Examples

This layer is the roadmap's acceptance suite: every formula above is evaluated at explicit points.

### Dependencies

6.1 uses Layers 1–5; 6.2 uses Layers 1, 2, 4 and 5.2; 6.3 uses 1.4, 2.1, 3.1–3.2, 5.5 and Tau Ceti's
round sphere and hyperbolic space; 6.4 uses 3.1–3.2, 5.5, HopfRinow Layer 2, RiemannianGeometry R1
and SmoothBundlesConnections B6.0; 6.5 uses 1.6, 2.1 and 3.1.

## Downstream consumers

- **PositiveMass**, 5.1–5.2: the boundary mean curvature `H = tr_h II/n` for the inward normal
  (1.5), identified with RiemannianGeometry R5a's `⟨B, ν_in⟩` by 3.6, with `H = 1` on the unit
  sphere and `H = −1` on the boundary of the exterior of the unit ball.
- A future Lorentzian geometry roadmap (domains with boundary): regular domains (3.1), the
  collar extension and realisation (3.3–3.5) and the defining-function calculus (1.3), where the
  metric is Riemannian.
- Future roadmaps on the geodesic X-ray transform, lens and boundary rigidity and simple manifolds
  (Stefanov–Uhlmann–Vasy, Theorems 1.1–1.4; Uhlmann–Vasy; Paternain–Salo–Uhlmann, Chapters 4–5):
  the convexity predicates (2.1), level-set concavity (3.2), convexity functions (4.5), boundary
  normal coordinates (4.4), the exit time and its regularity (5.2–5.4), Proposition 3.3.1 (5.5) and
  the scattering relation and lens data (5.6). With these, the hypotheses of Stefanov–Uhlmann–Vasy
  Theorems 1.1–1.3 are expressible: strict convexity at a point and on a subset, the signed distance
  `x̃` to a hypersurface (4.3), compactness of `M ∩ {x̃ ≥ −δ}`, level sets strictly concave from the
  superlevel sets, the boundary distance function `d_M|∂M×∂M`, and equality of lens data.
- Part II extensions of PositiveScalarCurvature and Yamabe to manifolds with boundary (mean-convex
  boundary conditions): 1.5, 2.1 and 3.4.

## References

- G. P. Paternain, M. Salo, G. Uhlmann, *Geometric Inverse Problems with Emphasis on Two
  Dimensions*, Cambridge Studies in Advanced Mathematics 204, 2023 (`paternain-salo-uhlmann2023`):
  Chapter 2.5 (lines 2443–2530) and Chapter 3, Sections 3.1–3.3 (lines 2640–3127).
- P. Stefanov, G. Uhlmann, A. Vasy, *Local and global boundary rigidity and the geodesic X-ray
  transform in the normal gauge*, Ann. of Math. 194 (2021) (`stefanov-uhlmann-vasy2021`):
  Section 1, lines 15–230.
- G. Uhlmann, A. Vasy, *The inverse problem for the local geodesic ray transform*, Invent. Math.
  205 (2016) (`uhlmann-vasy2016`): Section 1, lines 15–70 and 128–142; Section 3, lines 498–524.
- J. M. Lee, *Introduction to Riemannian Manifolds*, 2nd ed., GTM 176, 2018
  (`lee-riemannian2018`): Ch. 5–6 (normal neighbourhoods, Gauss lemma, Fermi coordinates), Ch. 7–8
  (curvature, Riemannian submanifolds, second fundamental form, hypersurfaces).
- J. M. Lee, *Introduction to Smooth Manifolds*, 2nd ed., GTM 218, 2012 (`lee-smooth2012`):
  Theorem 9.25 (collar neighbourhoods), through GeometricTopology Layer 1.
- V. A. Sharafutdinov, *Integral Geometry of Tensor Fields*, VSP, 1994 (`sharafutdinov1994`):
  Ch. 4, compact dissipative Riemannian manifolds, an alternative account of the material of
  Layer 5.
