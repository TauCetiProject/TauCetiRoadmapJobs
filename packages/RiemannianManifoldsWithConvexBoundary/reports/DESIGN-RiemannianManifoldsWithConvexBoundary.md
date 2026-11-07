# Design report: DESIGN-RiemannianManifoldsWithConvexBoundary

Deliverables: `packages/RiemannianManifoldsWithConvexBoundary/design/README.md`,
`packages/RiemannianManifoldsWithConvexBoundary/design/plan.json` (49 targets in 6 layers),
`packages/RiemannianManifoldsWithConvexBoundary/sources.toml` (`cited_for` and locators updated; no new
entries), this report. No `needs-references.toml` is written: every text the design relies on is
in the manifest and readable, or settled as uncertified.

Baselines: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti
`2fd255d997f47c0b5d834ee416c7015d55444ce5` (from the content checkout's `lake-manifest.json`).

## What the design covers

| Target brief | Design |
| --- | --- |
| T1 boundary hypersurface and normals | 1.1 (tangent/inward/outward trichotomy), 1.2 (normal API on DifferentialGeometry 12.5's normal); the induced metric is Tau Ceti's `Bundle.ContMDiffRiemannianMetric.restrictBoundaryTangentSpace` |
| T2 extension across the boundary | 3.1 (regular domains as Riemannian manifolds with boundary), 3.3.1 (collar extension), 3.3.2 (double), 3.4.1–3.4.2 (Seeley extension of functions and metrics), 3.5 (realisation theorem); independence of the extension is 4.1, 5.2 (realisation formula for τ), 5.6.1 (α independent of N), and the intrinsic definitions of `II`, `τ`, `α` |
| T3 boundary defining functions | 1.3 (definition, existence, gradient formula, ratio), 4.3.3 (distance to the boundary, PSU Lemma 3.1.10) |
| T4 boundary normal coordinates | 4.3.1–4.3.2 (normal exponential and Gauss lemma of a two-sided hypersurface), 4.4 (Fermi form `dr² + h_r`) |
| T5 second fundamental form | 1.4 (definition through the chart normal coordinate; equal to the three classical descriptions), 3.6 (R5a's `B`) |
| T6 computations | (a) 1.4; (b) 4.4; (c) 4.2.1; (d) 1.6 |
| T7 convexity | 2.1, 2.2, 2.3.1–2.3.3; covector form in 4.2.2 |
| T8 tangent geodesics | 4.2.2, 4.2.3 |
| T9 sublevel sets and convexity functions | 3.2, 4.5 |
| T10 exit time | 5.1, 5.2, 5.3.1–5.3.2, 5.4.1–5.4.5, 5.5.1–5.5.2 |
| T11 scattering relation | 5.6.1, plus boundary lens data 5.6.2 (makes Stefanov–Uhlmann–Vasy Theorem 1.3's hypothesis expressible) |
| T12 examples | 6.1.1, 6.1.2, 6.2, 6.3.1, 6.3.2, 6.4, 6.5 |

Additions beyond the brief, each needed by a target or a named consumer: the Weingarten map and
averaged mean curvature (1.5; PositiveMass 5.1–5.2), the Gauss equation for `∂M` (3.6, a
specialisation of R5a), the signed distance to an arbitrary two-sided regular hypersurface (4.3;
Stefanov–Uhlmann–Vasy Theorem 1.2's `x̃`), slight enlargements (4.6; the proof of Proposition
3.3.1), the fold normal form and the even-function lemma (5.3; Lemmas 3.2.9 and 3.2.11), spherical
caps (6.3.1; Paternain–Salo–Uhlmann Example 3.1.4) and the Herglotz form of the conformal example
(6.5).

## Design decisions and corrections to the brief

- **Intrinsic carrier.** Mathlib's `CovariantDerivative.leviCivitaConnection` (LeviCivita.lean) assumes
  `IsManifold I 2 M`, a `C¹` metric and finite dimension, and no boundaryless model; Tau Ceti's
  `TauCeti.Manifold.hessian` (Riemannian/Laplacian.lean:135) and `TauCeti.Manifold.IsGeodesicCurveOn`
  (Riemannian/Geodesic/Basic.lean:102) likewise work for any model with corners. So `II` (1.4), the
  convexity predicates (2.1) and the exit time (5.2, Paternain–Salo–Uhlmann Definition 3.1.1 with
  geodesics of `M`) are defined on `(M, g)` itself. The brief's "defined through `M̃`, proved
  independent of the extension" becomes: nothing is defined through `M̃`; the extension is a proof
  tool, and the realisation formula (5.2) and 4.1 state the agreement.
- **Choice-free `II`.** 1.4 defines `II_q` with the normal coordinate of the preferred chart at `q`
  (a canonical local defining function) and proves equality with `−Hess ρ/|dρ|` for every defining
  function, with `⟨∇_X N, Y⟩` for every extension `N` of `ν_out`, and with `⟨∇_X W, ν_in⟩` for every
  tangent extension `W`. No `Classical.choose` of an extension is needed.
- **Regular domains already exist as manifolds.** Tau Ceti's `TauCeti.scalarRegularSublevelChartedSpace`
  and `TauCeti.isManifold_scalarRegularSublevel` (RegularValue/Scalar/Sublevel.lean) make `{f ≤ a}` at a
  regular value a manifold over `𝓡∂ (n+1)` with boundary `f⁻¹(a)`; 3.1 adds the Riemannian part
  (pullback metric, Levi-Civita and Hessian compatibility, `II = −Hess ρ/|dρ|`). The closed unit ball
  and all Layer 6 examples are expressible without new data.
- **GeometricTopology numbering.** The brief cites GeometricTopology 1.1, 1.3, 1.5; that numbering
  belongs to an open pull request revising GeometricTopology, which is not a dependency. The design
  cites GeometricTopology Layer 1 as on main (the "Collar neighbourhoods" and "Gluing along a piece
  of the boundary" items). The tubular-neighbourhood input (brief's 1.5) is already in Tau Ceti:
  `TauCeti.SmoothEmbedding.normalExp`, `TauCeti.SmoothEmbedding.exists_partialDiffeomorph_normalExp_subset`,
  `TauCeti.SmoothEmbedding.exists_isClosedEmbedding_normalExp_norm_le_subset`
  (TubularNeighborhood/Riemannian/).
- **SmoothBundlesConnections B6.0** is on main (the brief calls it an open pull request); cited as on
  main.
- **Strata convention.** The brief writes `∂₊SM` with `⟨v, ν_in⟩ > 0`. Paternain–Salo–Uhlmann (lines
  2687, 2695) use closed sets `±⟨v, ν⟩ ≥ 0` with `∂₀SM = ∂₊SM ∩ ∂₋SM`; the design follows them (so
  `α(∂±SM) = ∂∓SM` holds with `∂₀SM` fixed). Stefanov–Uhlmann–Vasy (line 151) label the outward
  vectors `∂₊SM`; recorded as a Check in 5.1.
- **Fixed points of `α`.** The brief says `α` fixes `∂₀SM` pointwise; Lemma 3.3.5 (line 3119) states
  the fixed-point set is exactly `∂₀SM`; 5.6.1 states both inclusions.
- **Metric stability locator.** The brief cites Paternain–Salo–Uhlmann lines 3093–3096 for openness
  in the metric; those lines concern enlarging the domain (used in 4.6). Stability in the metric is
  cited to Uhlmann–Vasy lines 49–51 and planned for smooth metric families (Tau Ceti
  `TauCeti.Manifold.ContMDiffNondegenerateMetricFamily`, whose coefficient-smoothness theorems cover
  boundary points). Since `II` involves only first derivatives of `g`, the brief's "small `C²`
  perturbations" is stronger than needed; the family form is the definite, expressible statement.
- **Lemma 3.2.9** needs only compactness and strict convexity near the glancing point, not
  non-trapping; 5.4.4 carries only those hypotheses.
- **Continuity of `τ`** is Exercise 3.2.4 in the source (lines 2868, 2891), not proved there; 5.4.1
  routes it through the fold form 5.4.4 at `∂₀SM` and the implicit function theorem plus no interior
  tangency (4.2.3) elsewhere. Exercise 3.3.3 (`Xσ = −2`) and Exercise 3.3.6 (`τ̃ ∘ α = −τ̃`) are
  routed through the flow and reversal identities stated in 5.2.
- **Dimension.** All statements are for `dim M = n + 1` with every `n ≥ 0` (Lean model `𝓡∂ (n+1)`);
  the sources' `dim ≥ 2` is not imported. `n = 0` is checked wherever it differs: strict convexity
  and strict concavity are both vacuous there (2.1), `H` is undefined (1.5), `∂₀SM = ∅` (5.1).
- **Outward unit normal.** DifferentialGeometry 12.5 (main) states its boundary divergence theorem
  "with the outward unit normal" but names no object; DG's Suggested.lean defers the boundary version
  to its README. The design consumes DG 12.5's normal and records the contract (gap
  `dg-outward-unit-normal`).

## Ownership

Checked by object, with `roadmaps grep` over main and the 459 open roadmap pull requests at their
heads (index 2026-11-06T02:46Z), and over the board's packages (`board-packages-index.txt` lists three
packages, none in this area; `packages/*/target.md` and reports mention this roadmap only as a
neighbour). Patterns searched: `strictly convex boundary|convex boundary`, `scattering relation`,
`exit time`, `second fundamental form of (the )?boundary`, `boundary mean curvature|mean-convex`,
`inward (unit )?normal|outward unit normal`, `boundary defining function`, `Fermi coordinates|boundary
normal coordinates`, `signed distance`, `Seeley`, `double of`, `Gauss lemma`, `non-?trapping|trapped
geodesic`, `unit (tangent|sphere) bundle`, `lens (data|relation|rigidity)`, `regular domain`,
`Weingarten|shape operator of the boundary`, `conformal change … second fundamental`, `extension of
the metric`, `(f∘γ)''`, `Whitney … even`, `parametric Morse`. Findings:

- No roadmap on main or in an open pull request owns the boundary second fundamental form, boundary
  convexity, exit times of geodesics, the scattering relation or lens data, boundary normal
  coordinates, signed distance to a hypersurface, the realisation of a manifold with boundary in a
  boundaryless one, or a manifold-level Seeley extension. This roadmap owns them.
- ComplexKahlerGeometry K5a (main, line 867) owns the half-space Seeley extension for Euclidean
  domains: consumed; the manifold-level extension (3.4) is owned here, as the brief anticipated.
- RiemannianGeometry R6 owns focal geometry of the normal exponential; R5a owns `B`, `S` and
  Gauss–Codazzi. The hypersurface Gauss lemma and signed distance (4.3) are not in either and are
  owned here; 3.6 only compares with R5a.
- GeometricCurrents G7 (main) uses mean-convex domains with signed distance as a tool; it is earlier
  and does not plan these objects; a later Part II of it could consume 1.5 and 4.3.
- ManifoldOptimization (open pull request adding a new roadmap; not in the merge order) states the
  general along-curve identity `(f∘γ)'' = Hess f(γ', γ') + ⟨grad f, D_tγ'⟩`. It cannot be a supplier
  (not earlier in the merge order); this roadmap states only the geodesic case it needs (4.2.1),
  which is Paternain–Salo–Uhlmann Lemma 3.1.13's computation.
- Even smooth functions as functions of `r²` (Whitney) and the fold normal form: no owner found; owned
  here (5.3) because Layer 5 is their only consumer.
- No declaration of `Suggested.lean` exists at this stage; the README backticks only library and
  supplier names, all verified at the pins (below).

## Notions moved down from later roadmaps

None. PositiveMass (later in the merge order) compares its boundary mean curvature with R5b by
hand; it does not own a boundary mean curvature object, so 1.5 is not a move but a new supply.

## Proposed Part IIs and future roadmaps

- A roadmap on the geodesic X-ray transform and simple manifolds (Paternain–Salo–Uhlmann §§3.4–3.8
  and Chapters 4–5: the vector fields `X⊥`, `V`, Santaló's formula, conjugate points, simple
  manifolds, Pestov identities), consuming Layers 2, 4 and 5.
- A roadmap on local and global lens and boundary rigidity (Stefanov–Uhlmann–Vasy Theorems 1.1–1.4,
  Uhlmann–Vasy's local injectivity), consuming 2.1, 3.2, 4.3–4.5 and 5.6.
- PositiveScalarCurvature, Part II and Yamabe, Part II for manifolds with mean-convex boundary,
  consuming 1.5, 2.1 and 3.4.
- No Part II of an existing roadmap is required by this design; the two supplier contracts below are
  statements those roadmaps already plan in substance.

## Gaps (supplier contracts)

- `dg-outward-unit-normal` (DifferentialGeometry 12.5): a named outward unit normal along `∂M` of a
  Riemannian manifold with boundary over `𝓡∂ (n+1)`, proved unit, `g`-orthogonal to `dι(T∂M)` and
  outward in the sense of 5.1. Needed by 1.2 (and through it by everything using `ν_in`).
- `gt-full-boundary-gluing` (GeometricTopology Layer 1, gluing along a piece of the boundary): full-
  boundary gluing of two Hausdorff second-countable manifolds over `𝓡∂ (n+1)` along a boundary
  diffeomorphism using collars yields a Hausdorff second-countable boundaryless smooth
  `(n+1)`-manifold, each piece closed and diffeomorphic to its image, with the collars combining into
  a smooth bicollar of the seam. Needed by 3.3.1 and 3.3.2.

## Library names verified at the pins

Every backticked Lean name in the README was located in the pinned sources (grep of the declaration
keyword and final name component, then the namespace read in the file): Mathlib
`ModelWithCorners.boundary`/`.interior` (IsManifold/InteriorBoundary.lean:103,112),
`ModelWithCorners.isClosed_boundary` (:330), `modelWithCornersEuclideanHalfSpace`, `EuclideanHalfSpace`
(Instances/Real.lean:200,60), `Bundle.RiemannianBundle` (Topology/VectorBundle/Riemannian.lean:420),
`Bundle.ContMDiffRiemannianMetric` (Geometry/Manifold/VectorBundle/Riemannian.lean:245),
`IsContMDiffRiemannianBundle` (:68), `IsRiemannianManifold` (Riemannian/Basic.lean:80),
`Manifold.pathELength`, `Manifold.riemannianEDist` (Riemannian/PathELength.lean:66,208),
`CovariantDerivative.leviCivitaConnection`, `.isLeviCivitaConnection_leviCivitaConnection`,
`.IsLeviCivitaConnection.uniqueness` (CovariantDerivative/LeviCivita.lean:256 and following),
`ContDiffAt.implicitFunction`, `ContDiffAt.contDiffAt_implicitFunction` (Calculus/ImplicitContDiff.lean),
`SmoothPartitionOfUnity`, `exists_contMDiffSection_forall_mem_convex_of_local`,
`exists_contMDiff_zero_iff_one_iff_of_isClosed` (Manifold/PartitionOfUnity.lean:123,593,797). Tau Ceti:
all names of the README's Tau Ceti paragraph, in the files Boundary/{Charts,Derivative,Orientation,
OutwardExistence,TransitionNormal}.lean, Riemannian/{Boundary,Laplacian}.lean,
Riemannian/Gradient/Basic.lean, Riemannian/Pullback/Basic.lean, VectorBundle/Riemannian/{Conformal,
Existence,Sphere}.lean, Riemannian/Hessian/Conformal.lean,
VectorBundle/CovariantDerivative/LeviCivita/{Conformal,Immersion,Nondegenerate/Family}.lean,
VectorBundle/NondegenerateMetric/Family.lean, RegularValue.lean, RegularValue/{Level,Scalar/Sublevel}.lean,
Riemannian/Geodesic/{Basic,Maximal,Trajectory,Exponential,Flow,Compact}.lean,
TubularNeighborhood/Riemannian/{Basic,Coordinates,Noncompact}.lean, Analysis/Calculus/{Hadamard,
ParametricIntegral}.lean, Riemannian/Sphere/Basic.lean, Riemannian/Hyperbolic/UpperHalfSpace/{Basic,
Metric,Curvature}.lean. The `roadmaps resolve` tool found no unresolved cross-roadmap citation and
no unresolved roadmap-level Lean name (it does not check library names on this host; they were
checked by hand as above).

## Adversarial pass

One row per statement. "Values" are the computed sides.

| Statement | Instances tried | Values | Result | Change |
| --- | --- | --- | --- | --- |
| Conv.: half-space sign | model `EuclideanHalfSpace 2`, `v = −e₀`, `e₀`, `e₁` | `dx⁰(−e₀) = −1 < 0` outward; `dx⁰(e₀) = 1` inward; `dx⁰(e₁) = 0` tangent | consistent with `TauCeti.IsOutwardPointing` | none |
| Conv.: `II` sign (ball) | unit ball, `ρ = 1 − |x|²` | `Hess ρ = −2g`, `|dρ| = 2`, `−Hess ρ/|dρ| = h`; `⟨∇_X x, Y⟩ = ⟨X, Y⟩`; R5a `⟨−⟨X,Y⟩x, −x⟩ = ⟨X,Y⟩`; PSU `−⟨∇_X(−x), Y⟩ = ⟨X,Y⟩` | four conventions agree | none |
| Conv.: mean curvature | unit sphere, exterior | `H = n/n = 1`; exterior `−1`; PositiveMass `tr A/(dim−1) = 1` | agree | none |
| Conv.: Hamiltonian factor | `G = |ξ|²` vs `½|ξ|²` | `H_Gρ` scales by 2 or 1, `H_G²ρ` by 4 or 1 | sign unchanged | Check added |
| Conv.: strata labels | disc at `(0,−1)`; PSU vs SUV | `(0,1)`: `μ = 1` (PSU `∂₊`); SUV line 151 labels outward `∂₊` | conventions opposite | Check in 5.1 |
| 1.1 trichotomy | half-plane, `[0,1]` | `T∂M = span e₁`; `n = 0`: `T∂M = 0`, every nonzero vector inward or outward | holds; tangent class empty but zero vector tangent | degenerate Check |
| 1.2 normal | metric `[[1,a],[a,1]]`, `a = 1/2` | `ν_in = (e₀ − e₁/2)/√(3/4)`; `g(e₀ − e₁/2, e₁) = 1/2 − 1/2 = 0`; `g(e₀, e₁) = 1/2 ≠ 0` | chart direction is not the normal | Check |
| 1.2 normal (interval) | `[0, 1] ⊆ ℝ` | `ν_out(0) = −∂_x`, `ν_out(1) = +∂_x`; both charts read inward as `+e₀` | ok | Check |
| 1.3 defining function | `ρ = 1−|x|²`; `(2+x₁)ρ`; `ρ²`; `−ρ`; `x(1−x)` on `[0,1]` | `|dρ| = 2`; ratio `u ∈ [1,3]`; `d(ρ²) = 0` on sphere; `−ρ < 0` inside; `|ρ'(0)| = |ρ'(1)| = 1` | non-examples excluded by the definition | Checks |
| 1.3 ratio theorem | `u = ρ'/ρ` on boundary | `u = |dρ'|/|dρ| = (2+x₁)·2/2 = 2 + x₁` | matches | none |
| 1.4 `II` definition | balls radius `R`, half-space, exterior, `n = 0` | `II = h/R`; `0`; `−h`; zero form | ok | Checks |
| 1.4 inward-normal formula | unit ball with `⟨∇_X ν_in, Y⟩` | `−h ≠ h` | wrong convention detected | non-example Check |
| 1.4 generality | `II` at a boundary point uses Hessian on `M` | Mathlib LC and Tau Ceti Hessian have no boundaryless hypothesis (read at pin) | ok | carrier choice |
| 1.5 shape operator/H | sphere, cylinder, exterior, `n = 0` | `S = id`, `H = 1`; `κ = 1, 0`, `H = 1/2`; `H = −1`; `H` undefined (`n = 0` division) | `n ≥ 1` hypothesis needed for `H` | hypothesis added |
| 1.6 conformal law | `φ = log 2`; `φ = −|x|²` on disc; `φ = (|x|²−1)²` | `2h` = pullback of radius-2 ball's `h_{S₂}/2`; `dφ(ν_in) = 2`, `II = e^{−1}(1−2)h = −e^{−1}h`, `Ĥ = e(1−2) = −e`; `II = h` | ok; wrong sign gives `+3e^{−1}h` | Checks |
| 1.6 derivation | Tau Ceti `hessian_rescale` with `f = e^{2φ}` | `(2f)⁻¹(df⊗dρ + dρ⊗df − ⟨grad f, grad ρ⟩g) = dφ⊗dρ + dρ⊗dφ − ⟨grad φ, grad ρ⟩g`; on `T∂M`: `−|dρ|dφ(ν_in) g` correction | matches stated law | none |
| 2.1 predicates | ball, half-space, exterior, cylinder, `{y ≥ x³}`, `n = 0` | `II(t,t) = 6x/(1+9x⁴)^{3/2}`: `+` for `x>0`, `−` for `x<0`, `0` at `0`; `n = 0`: both strictly convex and strictly concave | exclusion fails at `n = 0` | `n ≥ 1` on exclusion; Check |
| 2.1 strict convex ⇒ `H > 0` | cylinder (convex, not strict) | `H = 1/2 > 0` but not strictly convex | converse false | Check |
| 2.2 Hessian char. | `ρ` and `(2+x₁)ρ`; `−ρ` | on `T∂M`: `Hess((2+x₁)ρ) = (2+x₁)Hess ρ = −2(2+x₁)h < 0`; `−ρ` flips sign | ok; positivity convention load-bearing | Check |
| 2.3.1 openness | `{y ≥ x³}` | convex set `{x ≥ 0}` closed, not open; strictly convex set `{x > 0}` open | ok | Check |
| 2.3.2 uniform bound | `{y ≥ √(1+x²)}` | curvature `(1+2x²)^{−3/2} → 0` | compactness needed | Check |
| 2.3.3 families | `g_s = e^{−2s|x|²}g` on disc | `II = e^{−s}(1−2s)h`: `s = 0.4` → `0.67·0.2 > 0`; `s = 0.5` → `0`; `s = 0.6` → `< 0` | open set `s < 1/2` | Check |
| 3.1 regular domain | `1−|x|²`, `(2+x₁)(1−|x|²)`, `(1−|x|²)³`, `x₀² − x₁²` | same set/structure; `d((1−|x|²)³) = 0` on sphere; cone singular at `0` | regular-value hypothesis load-bearing | Checks |
| 3.1 LC compatibility | codimension-0 inclusion with invertible `dj` at boundary points | uniqueness of LC (Mathlib) applies on `D` | ok | none |
| 3.2 level concavity | `|z|²`, `−|z|²`, affine, `|z−z₀|` | `Hess = 2g`, `II = h/√c`; `−2g` fails; `0` fails; `(g − dx⊗dx)/r > 0` on `ker dx` | ok | Checks |
| 3.3.1 collar extension | `[0,1]`, half-space, `∂M = ∅` | open interval; `ℝⁿ × (−1, ∞)`, `ρ̃ = x⁰`; `M̃ = M` | ok | Checks |
| 3.3.2 double | `[0,1]`, disc, annulus, `∂M = ∅` | circle; `S²`; torus; `M ⊔ M` disconnected | connectedness needs `∂M ≠ ∅` | hypothesis added |
| 3.4.1 function extension | `√x` on `[0,1]` | `(√x)' = 1/(2√x)` unbounded at `0`: not smooth up to boundary | hypothesis is smoothness up to boundary | Check |
| 3.4.2 metric extension | `(x + 1/100)dx²` on `[0,1] ⊆ ℝ` | formula positive only for `x > −1/100` | cutoff gluing required | Check |
| 3.5 realisation | disc in `ℝ²` and `S²`; `[0,1]`, `(1+x)²dx²`; closed `M` | `II = h` in both; length `∫₀¹(1+x)dx = 3/2` (corrected from a draft value for `(1+x)dx²`, whose length is `(2/3)(2^{3/2}−1) ≈ 1.219`); `ρ̃ ≡ 1` | ok | Check corrected |
| 3.6 R5a comparison | sphere, cylinder, exterior | Gauss: `0 + 1·1 − 0 = 1`; `0 + 1·0 − 0 = 0`; exterior `⟨B, +x⟩ = −h` | signs agree with R5a's pinned sphere | Checks |
| 4.1 geodesics of domain | ball outward/tangent; half-space tangent | `|q + tv|² = 1 + t² > 1` for tangent `v`: no `M`-geodesic on `[0,ε)`; half-space line in `∂M` is an `M`-geodesic on `ℝ` | ok | Checks |
| 4.2.1 second derivative | ball tangent chord | `ρ(q+tv) = −t²`, `(ρ∘γ)'' = −2 = −|dρ|·II(v,v) = −2·1` | ok | Check |
| 4.2.2 leaving | exterior, half-space, `{y ≥ x⁴}` | `ρ = t² ≥ 0`; `ρ ≡ 0`; `ρ(t,0) = −t⁴ < 0` with `II = 0` | strictness needed; leaving does not imply strictness | Checks |
| 4.2.3 no interior tangency | annulus `1 ≤ |x| ≤ 2` | line `y = −1` touches inner circle at `(0,−1)` at interior parameter `t = 3/2` from `(−3/2,−1)` | needs strict convexity | Check |
| 4.3 signed distance | sphere, sign of `f`, slanted collar | `E(q,r) = (1−r)q`, `r_Σ = 1 − |x|`, `|grad r_Σ| = 1`, `ε ≤ 1`; `f = |x|²−1` gives `|x| − 1`; cross term `⟨e₀+e₁, e₁⟩ = 1` | ok | Checks |
| 4.3.3 intrinsic distance | unit ball | `d_M(x, ∂M) = 1 − |x| = r` | ok | Check |
| 4.4 Fermi form | ball radius `R`, exterior, half-space, `n = 0` | `h_r = (1−r/R)²h₀`, `−½∂_r h_r|₀ = h₀/R`; `(1+r)²h₀ → −h₀`; `h₀ → 0`; `dr²` | sign of `−½` confirmed | Checks |
| 4.5 convexity function | disc `q = (0,−1)`, `ε = 1/2`; exterior; `[0,1]` | `Hess x̃ = (2−2ε)g = g > 0`; `dx̃_q = 2q = (0,−2) = −dρ_q`; `K_c ⊆ {|z−q|² ≤ 2c}`; exterior `Hess = −3g`; `[0,1]`: `K_c = [0, x_c]` | hypothesis load-bearing | Checks |
| 4.6 enlargement | ball, cap `R = π/3`, half-space | `II = h/(1+ε)`; cap convex iff `π/3 + ε < π/2`, i.e. `ε < π/6 ≈ 0.524`; flat stays flat | `ε₀` domain-dependent | Checks |
| 5.1 strata | disc, `[a,b]` | `∂SM` torus, `∂₀SM` two circles; `[a,b]`: four points, `μ = ±1`, `∂₀SM = ∅` | ok | Checks |
| 5.2 exit time | disc `θ = π/6, −π/6`; annulus; half-space; `[a,b]` | `τ = 2 sin(π/6) = 1`; `τ(−π/6) = 0`; annulus `3/2 + √3 ≈ 3.232` vs limit `3/2`; `∞`; `b − x` | discontinuity without convexity | Checks |
| 5.2 homogeneity/flow | ball `x = 0`, `v` unit, `λ = 2` | `τ(0, v) = 1`, `τ(0, 2v) = 1/2`; `τ(φ_t(0,v)) = 1 − t` | ok | API |
| 5.3.1 fold | `y − t²`, `y − t⁴` | `Q = r`, `a = y`; quartic roots `±y^{1/4}` would need `√a ∼ y^{1/4}`, `a ∼ √y` not smooth | `∂_t²h < 0` needed | Checks |
| 5.3.2 even functions | `cos r`, `r²`, `|r|` | `H(s) = Σ(−s)^k/(2k)!`; `H = s`; `|r|` not smooth | ok | Checks |
| 5.4.1 regularity | disc at `(0,−1)` | `τ(θ) = 2 sin θ` on `[0,π]`, `0` on `[−π,0]`: one-sided derivatives `2`, `0` at `θ = 0` | not smooth at `∂₀SM`, smooth off it | Check; continuity route added (source leaves it as Exercise 3.2.4) |
| 5.4.2 odd extension | disc, ball, `[a,b]` | `τ̃ = 2 sin θ`; `−2⟨x,v⟩`; `±(b−a)` | smooth | Checks |
| 5.4.3 `μ/τ̃` | disc | `sin θ/(2 sin θ) = 1/2 = II/2` with `II = 1` | ok | Check |
| 5.4.4 fold near glancing | ball | `a = 4(⟨x,v⟩² + 1 − |x|²)`, `Q(r) = (−2⟨x,v⟩ + r)/2`; `Q(√a) = −⟨x,v⟩ + √(⟨x,v⟩² + 1 − |x|²) = τ` | ok; non-trapping not needed | hypothesis removed |
| 5.4.5 `σ`, `T`, `Xσ` | ball, `[a,b]` | `σ = −2⟨x,v⟩`, `T = 1 − |x|²`, `(σ + √(σ²+4T))/2 = τ`; `d/dt(−2⟨x+tv,v⟩) = −2`; `a + b − 2x`, slope `−2` | ok | Checks |
| 5.5.1 `Xf > 0` | ball `f = ⟨x,v⟩`; closed `M` | `Xf = 1`, bound `(1−(−1))/1 = 2 =` diameter; closed `M`: `Xf = 0` at max of `f` | ok | Checks |
| 5.5.2 Prop. 3.3.1 | closed `M`, hemisphere | all three fail on closed `M`; hemisphere `II = cot(π/2)h = 0`, boundary great circle trapped | equivalence consistent | Checks |
| 5.6.1 `α` | ball, `[a,b]` | `α(x,v) = (x − 2⟨x,v⟩v, v)`, `⟨x − 2⟨x,v⟩v, v⟩ = −⟨x,v⟩` ⇒ `α² = id`; fixed iff `⟨x,v⟩ = 0`; `α(a,+1) = (b,+1)`, `α(b,+1) = (a,+1)` | ok, `Fix α = ∂₀SM` | Checks |
| 5.6.2 lens data | disc, glancing | `|L(x,w)| = |w|`; `ℓ = 2√(1−|w|²)`: `|w| = 1/2` → `√3`; `|w| = 1` → `0`, `L = id` | ok | Checks |
| 6.1.1 ball | `x = (0,−1)`, `θ = π/2` | `τ = sin θ + |sin θ| = 2` (diameter) | ok | Check |
| 6.1.2 convex domains | ellipse `a = 2, b = 1` at `(2,0)` | `dρ = (−1, 0)`, `|dρ| = 1`, `Hess ρ(e_y,e_y) = −2`, `II = 2 = a/b²` | ok | Check |
| 6.2 half-space/exterior | tangent lines | `ρ ≡ 0`; `ρ = t²` | ok | Checks |
| 6.3.1 caps | `R = π/4, π/2, 2π/3` | `II = cot R h`: `1`, `0`, `−1/√3`; non-trapping iff `R < π/2` (great circle in cap iff `cos R ≤ 0`) | ok | Check |
| 6.3.2 hyperbolic | `n = 1` coordinates, `Γ^x_{xy} = −1/y`, `Γ^y_{xx} = 1/y`, `Γ^y_{yy} = −1/y` | `Hess u_{xx} = 1/y − (1/y)(½ − (x²+1)/(2y²)) = u/y²`; `Hess u_{xy} = −x/y² + x/y² = 0`; `Hess u_{yy} = (x²+1)/y³ + (1/y)(½ − (x²+1)/(2y²)) = u/y²`; at `R = 1`: `coth 1 ≈ 1.313`, `cot 1 ≈ 0.642` | `Hess u = u g` | Checks (a garbled draft comparison bullet replaced by these values) |
| 6.4 small balls | unit sphere, `ℝⁿ⁺¹`, flat torus | caps convex only for `R < π/2` so `r_p ≤ π/2`; `∞`; `r_p = 1/2`, `II = h/R` | ok | Checks |
| 6.5 conformal ball | `φ(s) = −s`; `φ_s(t) = −st`, `s = 1/4` | `II = e^{−1}(1 − 2)h = −e^{−1}h`; `e^{−1/4}(1 − 1/2) ≈ 0.389 > 0` and Herglotz `d/dr(r e^{−r²/4})|₁ = e^{−1/4}/2 ≈ 0.389` | the two criteria agree numerically | Checks |

Context and generality notes (pass items 2, 3, 6, 7): every theorem's README statement lists its
hypotheses (compactness, strict convexity, non-trapping, second countability for partitions of
unity and Tau Ceti's tube theorems); no statement is quantified over unrelated data; the one
unnecessary hypothesis found (non-trapping in Lemma 3.2.9) was removed; 2.3.3 is stated for smooth
families rather than a `C²` topology on metrics, which is stronger than the source needs only in the
regularity of the family, not in its conclusion.

## Sources

All three certified sources were read at the cited lines (`paternain-salo-uhlmann2023` lines 300–315,
2440–2530, 2630–3130; `stefanov-uhlmann-vasy2021` lines 15–230; `uhlmann-vasy2016` lines 15–70,
128–145, 495–530). `lee-riemannian2018`, `lee-smooth2012` and `sharafutdinov1994` are settled as
uncertified and are cited by chapter or by the theorem number already recorded (Lee, Theorem 9.25);
no Lee theorem number beyond that is relied on. `sharafutdinov1994` is kept as background in the
References; no target relies on it. No source could not be read; no text is requested.

## Dependency check

    candidate: RiemannianManifoldsWithConvexBoundary is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
    depcheck: 242 roadmaps, 2367 edges, 0 problem(s)

No UPWARD and no CYCLE line. All suppliers (DifferentialGeometry, HopfRinow, RiemannianGeometry,
GeometricTopology, ComplexKahlerGeometry, SmoothBundlesConnections) are on main. The tool places the
candidate at the end of the order; the same placement appears for a one-line probe README citing only
SmoothBundlesConnections, so it is the tool's default when all suppliers are on main, not a signal
from this README. For PositiveMass (merge-order line 271) to consume 1.5 and 3.6, the intake should
insert this roadmap before PositiveMass, as the target brief proposed (after SmoothBundlesConnections,
line 8).

## Untrusted text

No fetched text, roadmap or report contained instructions; nothing suspicious to report.
