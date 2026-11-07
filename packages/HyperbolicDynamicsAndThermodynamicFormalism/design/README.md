# Roadmap: hyperbolic dynamics and thermodynamic formalism

**Summary.** This roadmap builds the thermodynamic formalism of continuous maps and flows on compact spaces and the uniformly hyperbolic theory of diffeomorphisms and flows on compact manifolds, and joins them in the Bowen–Ruelle theorem. On the topological side it defines pressure on uniform spaces on top of Mathlib's Bowen–Dinaburg entropy, proves the variational principle for maps and flows, Abramov's formula, existence and structure of equilibrium states, and Bowen's uniqueness criterion (expansivity, weak specification and the Bowen property give a unique, ergodic, fully supported Gibbs equilibrium state) for homeomorphisms and flows. On the hyperbolic side it defines hyperbolic sets and Anosov systems through a continuous Riemannian metric, proves metric independence, the characterisation, uniqueness and continuity of the splitting and adapted metrics, the Hadamard–Perron theorem and local stable and unstable manifolds, and shows that locally maximal hyperbolic sets carry a hyperbolic local product structure, from which expansivity, closing, spectral decomposition and specification follow abstractly. The end theorems are Bowen's theorem (a Hölder potential on a basic set of a C¹ diffeomorphism, in particular on a transitive Anosov diffeomorphism, has exactly one equilibrium state), the Bowen–Ruelle theorem for basic sets of C¹ flows with its invariance under constants and flow coboundaries, uniqueness of the Bowen–Margulis measure, and the Bowen–Ruelle characterisation of the SRB measure of a C² Anosov flow (or hyperbolic attractor) as the equilibrium state of the geometric potential whose generic points have full Lebesgue measure. Hyperbolic toral automorphisms, suspensions of Anosov diffeomorphisms and geodesic flows in negative curvature are the examples.

## Scope and ownership

This roadmap owns, at the generality stated in each section: pressure of maps and flows and its three equivalent forms (Layer 2); the open-cover entropy and its agreement with Mathlib's entropy, the power and time-rescaling rules for topological entropy, expansive homeomorphisms, Bowen–Walters expansive flows, topological mixing, weak specification and the Bowen property (Layer 1); affinity of measure entropy, approximation by fine partitions, upper semicontinuity of entropy for expansive homeomorphisms and expansive flows, and Abramov's formula (Layer 3); the variational principles for pressure and entropy of maps and flows, equilibrium states and measures of maximal entropy with their convex and ergodic structure and existence, and the statement of Newhouse's theorem (Layer 4); Gibbs measures and Bowen's uniqueness criterion for homeomorphisms and flows (Layer 5); homeomorphisms and flows with hyperbolic local product structure and their expansivity, closing, spectral decomposition, specification and Bowen property (Layer 6); hyperbolic sets and Anosov systems with their linear theory (Layer 7); the uniform Hadamard–Perron theorem, local stable, unstable, strong and weak manifolds, local product structure of locally maximal hyperbolic sets, nontriviality and Hölder continuity of the bundles (Layer 8); the three families of examples (Layer 9); basic sets, Bowen's theorem, the Bowen–Ruelle theorem and the Bowen–Margulis measure (Layer 10); the geometric potential, bounded distortion, the two volume lemmas, the pressure of the geometric potential and the SRB theorem (Layer 11). No roadmap on main, at the open roadmap heads or on the board defines any of these objects; the only neighbouring notions (OperatorAlgebraDynamics §D9's pressure of quantum lattice systems, ArithmeticDynamics §§2.67–2.92's maximal-entropy measure of a rational map) concern other objects and are not consumed.

Already in the library and consumed by name in the supplier contracts: Mathlib's Bowen–Dinaburg entropy (`Dynamics.coverEntropy`, `Dynamics.netEntropyEntourage` and their agreement), flows (`Flow`), Birkhoff sums, ergodicity and its extreme-point characterisation, the Krylov–Bogolyubov theorem, compactness of the space of probability measures, Hölder maps, continuous and smooth Riemannian metrics on bundles, and Tau Ceti's maximal flows, geodesic flow, Riemannian volume, smooth circle and smooth mapping torus.

Stated by other roadmaps and imported, never planned again here: the partition entropy API and the measure entropy hμ(T) (GeometryOfNumbersAndQuadraticArithmetic §4.2); the pointwise Birkhoff theorem (ProbabilisticAndMetricNumberTheory §4.1); conditional entropy, the Shannon–McMillan–Breiman theorem, the supremum of hμ(T, P) over finite partitions, partitions of small diameter with μ-null boundaries, the ergodic decomposition with entropy integration, and the inequality hμ(T) ≤ h_top(T) on compact metric spaces (ArithmeticDynamics §§2.6–2.7); maximal flows of vector fields and completeness on compact manifolds (DifferentialGeometry Layer 3) and smooth Riemannian metrics (DifferentialGeometry Layer 12); sectional curvature, Jacobi fields, Rauch comparison and the Cartan–Hadamard theorem (RiemannianGeometry R1, R2, R4); sphere bundles as smooth manifolds (TangentialBordism §2.3).

Not part of this roadmap: nonuniform hyperbolicity (Pesin theory, Lyapunov exponents, the Katok entropy formula), the Buzzi–Crovisier–Sarig theorems, exponential mixing and Dolgopyat estimates, the Livšic theorem, structural stability, Markov partitions and symbolic dynamics of hyperbolic systems (the route below does not pass through them), thermodynamic formalism of ℤ^d-actions (whose measure entropy no supplier defines), and the ergodic theory of homogeneous flows (GeometryOfNumbersAndQuadraticArithmetic §4.2).

**Route.** The summit is reached through Bowen's criterion rather than Markov partitions. Climenhaga and Thompson prove the criterion for homeomorphisms and for flows with a specification property whose gluing times are only bounded (ClimenhagaThompson2016, Theorem A and Theorem 5.5). With bounded gluing times, transitivity suffices: a transitive system with hyperbolic local product structure has this weak specification at every scale, so neither a mixing hypothesis nor the reduction of non-mixing flows to constant-roof suspensions is needed. The smooth theory enters only through Bowen's abstract axioms for a homeomorphism with hyperbolic local product structure (BowenPeriodicPoints1971, lines 66–83) and their flow analogue (BowenRuelle1975, lines 96–108), which locally maximal hyperbolic sets satisfy. This keeps each layer general: the uniqueness theorems hold for every compact metric system with the abstract properties, and the examples are not special-cased.

## Conventions

- Logarithms are natural. Topological entropy and pressure take values in EReal, as Mathlib's `Dynamics.coverEntropy` does, with value ⊥ on the empty space; on a nonempty compact space with finite topological entropy they are real. Measure entropy hμ(T) is GeometryOfNumbersAndQuadraticArithmetic §4.2's `measureEntropy`, valued in [0, ∞] and cast to EReal when compared with pressure. Free energies hμ(T) + ∫φ dμ are computed in EReal.
- Pressure has the potential added: P_T(φ) is the exponential growth rate of Σ exp(S_nφ) over separated sets, so P_T(0) = h_top(T). The inverse-temperature form of statistical mechanics is P_T(−βH) for an energy H and inverse temperature β; equilibrium states of −βH are Gibbs states at temperature 1/β. Witness: on the full shift on k symbols, P(c) = log k + c for a constant c, so the inverse-temperature form of the constant energy H = 1 gives P(−β) = log k − β.
- Birkhoff sums are Mathlib's `birkhoffSum T φ n`, the sum of φ∘T^k over 0 ≤ k < n; S_0φ = 0. For a flow g and potential F, the orbit integral over [0, t] is ∫₀ᵗ F(g^s x) ds, and F_t denotes the function x ↦ ∫₀ᵗ F(g^s x) ds, so F_1 is the time-one average of BowenRuelle1975, lines 191–192.
- Dynamical distances use n terms for maps and closed time intervals for flows: d_n(x, y) = max over 0 ≤ k < n of d(T^k x, T^k y) (d_0 = 0), matching Mathlib's `Dynamics.dynEntourage`, and d_t(x, y) = sup over 0 ≤ s ≤ t of d(g^s x, g^s y). Bowen balls B_n(x, ε) and B_t(x, ε) are the open balls of these distances, so B_0(x, ε) is the whole space. Witness: for the doubling map of ℝ/ℤ, B_2(0, 1/8) is the arc of half-width 1/16.
- Separated sets: a finite set is (n, U)-separated when it is a dynamical net in the sense of Mathlib's `Dynamics.IsDynNetIn` for the entourage U, that is, the balls of the n-step dynamical entourage about its points are pairwise disjoint; on a metric space U is {d < ε}. For a flow, a finite set E is (T, ε)-separated when the open d_T-balls of radius ε about its points are pairwise disjoint. Disjoint balls of radius ε force d_T(x, y) ≥ ε, and the classical convention d_T(x, y) > ε at scale 2ε forces disjoint balls at scale ε, so the two conventions differ by at most a factor two in the scale, which the limit ε → 0 does not see; a Check at a fixed scale is read with the disjoint-ball convention.
- Invariant measures: M(T) is the set of Borel probability measures μ with `MeasurePreserving T μ μ`; for a flow g, M(g) is the set of probability measures preserved by every g^t. Ergodicity of a map is Mathlib's `Ergodic`; ergodicity of a flow is `ErgodicVAdd ℝ X μ` for the additive action `Flow.toAddAction`. The weak topology is that of `MeasureTheory.ProbabilityMeasure`.
- Transitivity is Mathlib's `AddAction.IsTopologicallyTransitive`, for a map through the ℕ-flow `Flow.fromIter` and for a homeomorphism or flow through `Flow.toAddAction` of the ℤ- or ℝ-flow. Topological mixing is defined in §1.7.
- Manifolds are finite-dimensional real smooth manifolds without boundary, modelled with corners I on a finite-dimensional normed space E; compactness is assumed where stated. Diffeomorphisms of class C^r (r ≥ 1) are Mathlib's `Diffeomorph I I M M r`. A C^r flow is a `Flow ℝ M` whose map (t, x) ↦ g^t x is C^r on ℝ × M; its generator is X(x) = d/dt g^t x at t = 0.
- Norms on tangent spaces come from a continuous Riemannian metric, Mathlib's `Bundle.ContinuousRiemannianMetric` on the tangent bundle. Because hyperbolicity does not depend on this choice (§7.3), any continuous metric may be used, and smooth metrics (`Bundle.ContMDiffRiemannianMetric`) are the special case. Distances on M are those of a fixed smooth Riemannian metric; on compact M any two such distances are bi-Lipschitz equivalent, which changes contraction constants but not rates.
- Rates: a hyperbolic set of a diffeomorphism has constants C > 0 and 0 < λ < 1 with |Df^n v| ≤ Cλ^n|v| on E^s; a hyperbolic set of a flow has C > 0 and κ > 0 with |Dg^t v| ≤ Ce^{−κt}|v| on E^s for t ≥ 0. Stable means contracted in forward time; unstable means contracted in backward time. Witness: for the linear map diag(2, 1/2) of ℝ² at the fixed point 0, E^s is the second coordinate axis with λ = 1/2 and C = 1.
- The geometric potential of a flow is φ^u(x) = −d/dt log Jac(Dg^t|E^u_x) at t = 0, with the sign making ∫₀ᵀ φ^u(g^t x) dt = −log Jac(Dg^T|E^u_x). Witness: for the geodesic flow of a surface of curvature −1, Jac(Dg^t|E^u) = e^t and φ^u = −1.
- Weak specification has bounded, not fixed, gluing times, as in ClimenhagaThompson2016, lines 295–303 (flows) and lines 1661–1669 (maps); specification with gluing times all equal to a fixed τ is called strong specification.

## Exact supplier contracts

### From Mathlib

At commit `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`.

- `Dynamics.dynEntourage`, `Dynamics.mem_dynEntourage`, `Dynamics.mem_ball_dynEntourage` (`Mathlib/Dynamics/TopologicalEntropy/DynamicalEntourage.lean`): the n-step dynamical entourage, defined by `∀ k < n`.
- `Dynamics.IsDynCoverOf`, `Dynamics.coverMincard`, `Dynamics.coverEntropyEntourage`, `Dynamics.coverEntropy`, `Dynamics.coverEntropyInf`, `Dynamics.coverEntropyInf_eq_coverEntropy` (`Mathlib/Dynamics/TopologicalEntropy/CoverEntropy.lean`): spanning-set entropy on uniform spaces, EReal-valued, limsup version as default; the file has no metric-space or open-cover form.
- `Dynamics.IsDynNetIn`, `Dynamics.netMaxcard`, `Dynamics.netEntropyEntourage`, `Dynamics.coverEntropy_eq_iSup_netEntropyEntourage` (`Mathlib/Dynamics/TopologicalEntropy/NetEntropy.lean`): separated-set entropy and its agreement with the spanning-set entropy.
- `Dynamics.coverEntropy_restrict`, `Dynamics.coverEntropy_image_le_of_uniformContinuous` (`Mathlib/Dynamics/TopologicalEntropy/Semiconj.lean`): restriction to invariant subsets and monotonicity under semiconjugacy.
- `ExpGrowth.expGrowthSup` (`Mathlib/Analysis/Asymptotics/ExpGrowth.lean`): limsup of log(u_n)/n for ℝ≥0∞-valued sequences, the growth rate used for pressure.
- `Flow`, `Flow.fromIter`, `Flow.toAddAction`, `Flow.reverse`, `Flow.toHomeomorph`, `Flow.restrict`, `IsInvariant` (`Mathlib/Dynamics/Flow.lean`): continuous flows; `Flow.toAddAction` is a definition, not an instance, and is supplied explicitly.
- `birkhoffSum` (`Mathlib/Dynamics/BirkhoffSum/Basic.lean`).
- `AddAction.IsTopologicallyTransitive` (`Mathlib/Dynamics/Transitive.lean`): for every pair of nonempty open sets some element of the acting monoid moves the first to meet the second (the identity element is allowed).
- `Ergodic`, `Ergodic.iff_mem_extremePoints` (`Mathlib/Dynamics/Ergodic/Extreme.lean`): ergodic probability measures are exactly the extreme points of the invariant probability measures; `ErgodicVAdd` (`Mathlib/Dynamics/Ergodic/Action/Basic.lean`).
- `MeasureTheory.exists_measurePreserving_probabilityMeasure` (`Mathlib/Dynamics/Ergodic/EmpiricalMeasure.lean`): Krylov–Bogolyubov on a nonempty compact Hausdorff space, producing a regular invariant probability measure.
- `MeasureTheory.ProbabilityMeasure` and its compact-space instance (`Mathlib/MeasureTheory/Measure/Prokhorov.lean`: the space of probability measures on a compact Hausdorff Borel space is compact), `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto` (`Mathlib/MeasureTheory/Measure/Portmanteau.lean`).
- `UpperSemicontinuous` (`Mathlib/Topology/Semicontinuity/Defs.lean`), `HolderWith` (`Mathlib/Topology/MetricSpace/Holder.lean`).
- `Bundle.ContinuousRiemannianMetric`, `Bundle.RiemannianBundle`, `IsContinuousRiemannianBundle` (`Mathlib/Topology/VectorBundle/Riemannian.lean`); `Bundle.ContMDiffRiemannianMetric`, `IsContMDiffRiemannianBundle` (`Mathlib/Geometry/Manifold/VectorBundle/Riemannian.lean`); `IsRiemannianManifold` (`Mathlib/Geometry/Manifold/Riemannian/Basic.lean`).
- `Diffeomorph`, `mfderiv`, `ContMDiff` (`Mathlib/Geometry/Manifold/`).
- `MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul` (`Mathlib/MeasureTheory/Function/Jacobian.lean`): the Euclidean change of variables, used in charts by the volume lemmas.
- `MeasureTheory.MeasurePreserving` (`Mathlib/Dynamics/Ergodic/MeasurePreserving.lean`): the invariance predicate defining M(T).
- `MeasureTheory.Measure.exists_regular_eq_of_compactSpace` (`Mathlib/MeasureTheory/Integral/RieszMarkovKakutani/Real.lean`): on a compact Hausdorff Borel space, every finite measure has a regular finite measure with the same integrals of bounded continuous functions; used by §4.2 to pass from a weak limit to a regular representative.
- `Continuous.inner_bundle` (`Mathlib/Topology/VectorBundle/Riemannian.lean`): the inner product of two continuous sections of a continuous Riemannian bundle is continuous; used by §7.3.
- `extChartAt` (`Mathlib/Geometry/Manifold/IsManifold/ExtChartAt.lean`): the extended chart of a manifold at a point, the chart in which §8.2 applies the Hadamard–Perron theorem.
- `fderiv` (`Mathlib/Analysis/Calculus/FDeriv/Defs.lean`) and `ContractingWith` (`Mathlib/Topology/MetricSpace/Contracting.lean`): the Fréchet derivative and the contraction-mapping predicate used by the graph transform of §8.1.

### From Tau Ceti

At commit `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

- `TauCeti.riemannianVolume`, `TauCeti.riemannianVolume_restrict_source`, `TauCeti.chartRiemannianVolume`, `TauCeti.chartRiemannianVolume_pos` (`TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/{Volume,Measure}.lean`): the Riemannian volume of a continuous Riemannian metric, equal on each chart source to Lebesgue measure weighted by the square root of the Gram determinant, positive on nonempty open sets. No change of variables for non-isometric maps is supplied; the volume lemmas work in charts.
- `TauCeti.Manifold.contMDiffOn_maximalIntegralCurve_geodesicSpray` (`TauCeti/Geometry/Manifold/Riemannian/Geodesic/Flow.lean`): the geodesic flow on the tangent bundle is smooth on its open domain; `TauCeti.Manifold.isGeodesicallyCompleteAt_of_compactSpace` (`TauCeti/Geometry/Manifold/Riemannian/Geodesic/Compact.lean`): compact manifolds are geodesically complete; `TauCeti.Manifold.IsGeodesicCurveOn.norm_curveVelocityWithin_eq` (`TauCeti/Geometry/Manifold/Riemannian/Geodesic/ConstantSpeed.lean`): geodesics have constant speed.
- `TauCeti.SmoothMappingTorus`, `TauCeti.SmoothMappingTorus.flow`, `TauCeti.SmoothMappingTorus.contMDiff_uncurry_flow`, `TauCeti.SmoothMappingTorus.flow_one_mk` (`TauCeti/Geometry/Manifold/Instances/MappingTorus.lean`): the smooth mapping torus of a diffeomorphism φ, the quotient of ℝ × M by (t + 1, x) ∼ (t, φx), with its smooth suspension flow [t, x] ↦ [t + s, x] whose time-one map is φ on each fibre.
- `AddCircle.instIsManifold` (`TauCeti/Geometry/Manifold/Instances/AddCircle.lean`): ℝ/pℤ as an analytic manifold with the quotient map a local diffeomorphism.
- `TauCeti.catMap`, `TauCeti.det_catMap`, `TauCeti.charpolyRev_catMap` (`TauCeti/Dynamics/CatMap.lean`): the matrix (2 1; 1 1), its determinant 1 and det(1 − tP) = 1 − 3t + t².
- `ContinuousLinearMap.lyapunovPerronSolution`, `ContinuousLinearMap.lyapunovPerronGraphMap`, `ContinuousLinearMap.localStableGraphMap`, `ContinuousLinearMap.localUnstableGraphMap` (`TauCeti/Analysis/ODE/LyapunovPerron/{Basic,Graph,Local,Smooth}.lean`): the Lyapunov–Perron fixed point for an ordinary differential equation y' = Ay + N(y) with an exponential dichotomy of the linear part, its Lipschitz graph over the stable spectral subspace, the cut-off local stable and unstable graphs at a hyperbolic equilibrium, and their smoothness in the parameter. These concern a single hyperbolic equilibrium of a vector field on a Banach space, not a hyperbolic set, and no target consumes them: §8.1 names them only as the construction its graph transform parallels in discrete time.

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic — §4.2

The **Entropy and Haar measure on leaves** paragraph: `finitePartitionEntropy`, `countablePartitionEntropy`, `conditionalPartitionEntropy`, `iteratedPartitionLabel`, `partitionEntropyRate` and `measureEntropy` for measurable labels, with the chain rule, relabelling, independence, conjugacy invariance and `entropy_inverse` (hμ(T⁻¹) = hμ(T) for invertible measure-preserving T). The measure entropy keeps the value +∞; natural logarithms.

### From TauCetiRoadmap.ProbabilisticAndMetricNumberTheory — §4.1

`birkhoff_pointwise` (time averages of an integrable function converge almost everywhere to its conditional expectation on the invariant σ-algebra) and `birkhoff_pointwise_ergodic` (to its integral when T is ergodic), on any probability space.

### From TauCetiRoadmap.ArithmeticDynamics — §§2.6–2.7

§2.6: hμ(T) is the supremum of hμ(T, P) over finite partitions P (its inequality hμ(T, P) ≤ hμ(T, Q) + Hμ(P | Q) is stated there only for a finite truncation Q of a countable P, as a step of that proof; the inequality for two arbitrary finite partitions is §3.2 of this roadmap). §2.7: conditional entropy Hμ(P | ℰ) against a sub-σ-algebra with its chain rule; the Shannon–McMillan–Breiman theorem; for a continuous map of a nonempty compact metric space and an invariant Borel probability μ, the inequality of the EReal image of hμ(T) with `Dynamics.coverEntropy T Set.univ`; finite Borel partitions of arbitrarily small diameter with μ-null boundaries; and, on a nonempty standard Borel space, the ergodic decomposition kernel x ↦ μ_x of a measure-preserving map with almost-everywhere uniqueness and hμ(T) = ∫⁻ hμ_x(T) dμ(x).

### From TauCetiRoadmap.DifferentialGeometry — Layers 3 and 12

Layer 3.3: `toFlow`, the flow `Flow ℝ M` of a complete C^r vector field, and completeness on compact manifolds. Layer 12.1: existence of smooth Riemannian metrics, `nonempty_contMDiffRiemannianMetric`.

### From TauCetiRoadmap.RiemannianGeometry — R1, R2, R4

R1: the curvature tensor and sectional curvature. R2: Jacobi fields along geodesics, their existence and uniqueness for given initial data, the fact that variations through geodesics give Jacobi fields, and constant-curvature solutions in a parallel frame. R4.1: the Rauch comparison |J(t)| ≥ s_κ(t)|D_tJ(0)| for K ≤ κ and the Riccati tools along geodesics. R4.4: Cartan–Hadamard, hence no conjugate points in nonpositive curvature.

### From TauCetiRoadmap.TangentialBordism — §2.3 (B1.5)

Unit disc and sphere bundles of a vector bundle with a metric as smooth manifolds, compared with the literal subsets of the total space.

### Required extensions

These are what the named suppliers must provide for Layer 9's geodesic-flow example; nothing else in the roadmap depends on them.

- What TangentialBordism §2.3 must provide (gap:sphere-bundle-embedding): the unit sphere bundle of a smooth Riemannian vector bundle as a closed smooth submanifold of the total space: the inclusion is a smooth embedding, and a smooth map into the total space with values in the sphere bundle is smooth into it.
- What RiemannianGeometry, Part II (a proposed extension) must provide (gap:connection-map-jacobi-derivative): for a smooth Riemannian manifold (M, g) with its Levi-Civita connection, the connection map K : T(TM) → TM, the resulting splitting of T_v(TM) into the horizontal and vertical subspaces, each identified with T_{π(v)}M, and the theorem that, for v ∈ TM, a vector ξ ∈ T_v(TM) with horizontal and vertical components (w, w') and t in the domain of the geodesic γ_v of v, the derivative of the geodesic flow at v applied to ξ has components (J(t), D_tJ(t)), where J is the Jacobi field along γ_v with J(0) = w and D_tJ(0) = w' (RiemannianGeometry R2 supplies J).

## How to read the build

Layers 1–5 are topological and measure-theoretic and use no manifolds: Layer 1 fixes Bowen balls, entropy and the dynamical hypotheses; Layer 2 builds pressure; Layer 3 adds the measure-entropy facts the variational principle and the uniqueness proof need; Layer 4 proves the variational principles and the structure and existence of equilibrium states; Layer 5 proves Bowen's uniqueness criterion. Layer 6 abstracts uniform hyperbolicity as a local product structure with exponential contraction and derives the hypotheses of Layer 5 from it. Layers 7 and 8 are smooth: hyperbolic sets, their linear theory, invariant manifolds, and the theorem that locally maximal hyperbolic sets satisfy Layer 6's axioms. Layer 9 gives the examples, Layer 10 the Bowen and Bowen–Ruelle theorems, and Layer 11 the SRB theory of C² flows. Layers 1–5 can be built in parallel with Layer 7.

## Layer 1: Bowen balls, topological entropy and the dynamical hypotheses

This layer connects Mathlib's entourage-based entropy with the metric and open-cover forms used in the sources, adds the entropy of a flow, and defines the four hypotheses of Bowen's criterion: expansivity, mixing, weak specification and the Bowen property.

### 1.1 Dynamical distances and Bowen balls

Define, for a map T of a pseudometric space (X, d), the dynamical distance d_n(x, y) as the maximum of d(T^k x, T^k y) over 0 ≤ k < n (zero for n = 0) and the Bowen ball B_n(x, ε) as the open d_n-ball. For a flow g on X define d_t(x, y) as the supremum of d(g^s x, g^s y) over 0 ≤ s ≤ t and the Bowen ball B_t(x, ε) as the open d_t-ball (BowenRuelle1975, lines 99–101, use closed balls with k ∈ [0, n]; ClimenhagaThompson2016, lines 175–177, use closed balls with s ∈ [0, t]; the conventions differ by a shift of n by one and by boundary points, which no limit sees).

Its API:

- The Bowen ball B_n(x, ε) is the ball at x of Mathlib's `Dynamics.dynEntourage` T {(a, b) | d(a, b) < ε} n, so every metric statement transfers to Mathlib's entourage statements and back.
- B_0(x, ε) is the whole space and B_1(x, ε) is the ball of radius ε; B_{n+1}(x, ε) ⊆ B_n(x, ε), and the balls increase with ε.
- T maps B_{n+1}(x, ε) into B_n(Tx, ε); for a semiconjugacy h with h∘S = T∘h and h Lipschitz with constant L, h maps B^S_n(x, ε) into B^T_n(hx, Lε).
- For a continuous flow on a compact metric space and t > 0: the flow ball B_{nt}(x, ε) lies in the time-t ball B^{g^t}_n(x, ε), and conversely B^{g^t}_n(x, δ) lies in B_{nt}(x, ε) whenever δ is a modulus of uniform continuity of (s, y) ↦ g^s y on [0, t] × X for ε.
- For a homeomorphism the two-sided set Γ_ε(x) of points whose whole orbit stays ε-close to that of x is the intersection over n of T^{−n}B_{2n+1}(T^n x, ε) with closed balls; it is closed, and compact when X is compact (ClimenhagaThompson2016, line 358, for compact X). For the identity of ℝ it is the closed ε-ball, closed but not compact.

**Checks.**

- For a rotation of ℝ/ℤ (an isometry), B_n(x, ε) equals the ε-ball for every n ≥ 1; a definition that summed the distances along the orbit instead of maximising would shrink with n.
- For the doubling map x ↦ 2x of ℝ/ℤ and ε = 1/8, B_n(0, 1/8) is the arc of half-width 2^{−n−2}: half-width 1/8 at n = 1 and 1/16 at n = 2. The convention with k ≤ n would give 1/16 already at n = 1.
- At n = 0 the ball is the whole space, matching `Dynamics.dynEntourage` at time zero, so Mathlib's `Dynamics.coverMincard` at time zero is 1 on a nonempty set; a convention using k ≤ n would give the ε-ball instead.

*Needs:* Mathlib `Dynamics.dynEntourage`, `Dynamics.mem_ball_dynEntourage`, `Flow`.

### 1.2 Open-cover entropy

Define the open-cover entropy h_cov(T) of a continuous map T of a nonempty compact space X as the supremum over finite open covers 𝒰 of the limit of (1/n) log N(𝒰^n), where 𝒰^n is the join of T^{−k}𝒰 over 0 ≤ k < n and N is the least cardinality of a subcover; the limit exists by subadditivity of log N(𝒰^n). Prove that for a nonempty compact Hausdorff X with its unique uniformity, h_cov(T) equals `Dynamics.coverEntropy T Set.univ` (BowenGroupEndomorphisms1971, lines 110–114, recording the agreement with the open-cover entropy of Adler–Konheim–McAndrew on compact spaces; Walters1982, Chapter 7). The proof compares covers by Bowen balls with joins of covers by entourage balls, using a Lebesgue entourage of a finite open cover and the finite subcover of a cover by entourage balls.

Its API:

- N((𝒰 ∨ 𝒱)^n) ≤ N(𝒰^n) N(𝒱^n), and refining 𝒰 increases the limit, so the supremum may be taken along any sequence of covers whose Lebesgue entourages shrink to the diagonal.
- h_cov is invariant under topological conjugacy and does not increase under factors.
- For the restriction to a closed invariant subset, h_cov agrees with Mathlib's `Dynamics.coverEntropy_restrict`.

**Checks.**

- The identity map has N(𝒰^n) = N(𝒰) for all n, hence h_cov = 0.
- For the full shift on k symbols and the cover by the k cylinders of the zeroth coordinate, N(𝒰^n) = k^n, giving log k; a definition that took the cardinality of 𝒰^n without passing to minimal subcovers would give the same here but overcount for covers with redundant members.
- Taking a single cover instead of the supremum fails: the trivial cover {X} gives 0 for the full shift, whose entropy is log k.

*Needs:* Mathlib `Dynamics.coverEntropy`, `Dynamics.coverMincard`, `Dynamics.IsDynCoverOf`; Layer 1.1.

### 1.3 Entropy of iterates and inverses

Prove that for a uniformly continuous map T of a uniform space and k ≥ 1, `Dynamics.coverEntropy` of T^k on Set.univ is k times that of T (BowenGroupEndomorphisms1971, Proposition 4(i), lines 115–123), and that a homeomorphism T of a compact Hausdorff space has the same entropy as T⁻¹ (Walters1982, Chapter 7). The power rule compares (n, U)-spanning sets of T^k with (kn, V)-spanning sets of T for an entourage V whose first k iterates stay inside U. The inverse rule maps an (n, U)-separated set E for T to the (n, U)-separated set T^{n−1}(E) for T⁻¹.

**Checks.**

- The full shift on k symbols has entropy log k and its square has entropy 2 log k.
- For k = 0 the identity has entropy 0, and the rule 0 · h = 0 holds in EReal on a nonempty space even when h = ∞; on the empty space both sides are ⊥ only for k ≥ 1, which is why k ≥ 1 is assumed.
- For the doubling map (not invertible) the inverse rule does not apply; for the hyperbolic toral automorphism given by the cat matrix, T and T⁻¹ both have entropy log((3 + √5)/2).

*Needs:* Mathlib `Dynamics.coverEntropy`, `Dynamics.IsDynCoverOf`, `Dynamics.IsDynNetIn`, `Dynamics.coverEntropy_eq_iSup_netEntropyEntourage`; Layer 1.1.

### 1.4 Topological entropy of a flow

Define the topological entropy of a continuous flow g on a uniform space as h_top(g) = `Dynamics.coverEntropy` (g 1) Set.univ. Prove that on a nonempty compact Hausdorff space `Dynamics.coverEntropy` (g t) Set.univ = |t| h_top(g) for every real t, with the convention 0 · ∞ = 0, and that on a compact metric space h_top(g) is the limit as ε → 0 of the limsup as T → ∞ of (1/T) log of the largest cardinality of a (T, ε)-separated set for d_T (BowenGroupEndomorphisms1971, Proposition 21, lines 487–495, for t > 0; BowenRuelle1975, lines 174 and 182–189, for the separated-set form as the pressure of the zero function). For t > 0 the proof shows h(g^t) ≤ (t/s) h(g^s) for all s, t > 0 by comparing spanning sets as in §1.3; t < 0 follows from §1.3's inverse rule since g^{−t} = (g^t)⁻¹ (`Flow.toHomeomorph`), and t = 0 is the identity, whose entropy is 0 on a nonempty space.

Its API:

- On a nonempty compact Hausdorff space, `Dynamics.coverEntropy` (g t) Set.univ = |t| h_top(g) for every real t, with 0 · ∞ = 0; on the empty space both h_top(g) and every h(g^t) are ⊥, and the law holds for t ≠ 0 only, since |0| · ⊥ = 0 in EReal while the left side is ⊥, as in §1.3's Check for k = 0.
- The reversed flow `Flow.reverse` has the same entropy, the case t = −1 of the rescaling law.
- On a compact metric space h_top(g) is the limit as ε → 0 of the limsup as T → ∞ of (1/T) log of the largest cardinality of a (T, ε)-separated set for d_T, with separated sets as in the Conventions.

**Checks.**

- The flow of a periodic orbit of period p on a circle has h_top = 0, as does every time-t map.
- For the constant-roof suspension of the full shift on two symbols (roof 1), h_top(g) = log 2 and h(g^2) = 2 log 2; for the time-rescaled flow g'(t) = g(2t) the entropy is 2 log 2, which is the rescaling law of BowenRuelle1975, lines 409–411.
- The separated-set form uses d_T over the whole interval [0, T]; sampling only at integer times gives the entropy of g^1, which agrees, but sampling at times kT/n for fixed n would give n·h_top(g)/T per unit and is not the flow entropy.

*Needs:* Mathlib `Dynamics.coverEntropy`, `Flow.toHomeomorph`; Layers 1.1, 1.3.

### 1.5 Expansive homeomorphisms

Define a homeomorphism T of a metric space to be expansive with constant c > 0 when any two distinct points x ≠ y have some n ∈ ℤ with d(T^n x, T^n y) > c; equivalently Γ_c(x) = {x} for every x (ClimenhagaThompson2016, lines 1687–1690).

Its API:

- On a compact space expansivity is independent of the metric (the constant changes), and passes to T⁻¹ with the same constant and to T^k, k ≠ 0, with a smaller constant.
- On a compact space, for every ε > 0 there is N such that d(x, y) < ε whenever d(T^n x, T^n y) ≤ c for all |n| ≤ N (BowenPeriodicPoints1971, Lemma 2.4, lines 98–100).
- A uniformly continuous map T of a compact metric space is entropy-expansive at scale ε > 0 when `Dynamics.coverEntropy` T Φ_ε(x) = 0 for every x, where Φ_ε(x) is the set of points whose forward orbit stays within ε of that of x (BowenEntropyExpansive1972, lines 55–56); for a homeomorphism of a compact space the two-sided set Γ_ε(x) of §1.1 may be used instead (BowenEntropyExpansive1972, Corollary 2.3, line 188). An entropy-expansive map of a compact metric space has finite entropy, equal to its spanning-set entropy at the entourage {d ≤ ε}: `Dynamics.coverEntropy` T Set.univ = `Dynamics.coverEntropyEntourage` T Set.univ {d ≤ ε} < ∞ (BowenEntropyExpansive1972, Theorem 2.4, lines 192–193; the entropy at a fixed scale is finite on a compact metric space because the itineraries through a finite cover by N balls of radius ε/2 give at most N^n points that (n, ε)-span X). In particular an expansive homeomorphism with constant c is entropy-expansive at every scale ε < c, since Γ_ε(x) = {x}, so it has finite entropy equal to the entropy at any entourage {d ≤ ε} with ε < c, and it has finitely many points of each period.

**Checks.**

- The full shift on k symbols with d(x, y) = 2^{−N(x,y)}, N the least |i| with x_i ≠ y_i, is expansive with constant 1/2: distinct points differ at some coordinate n, and then d(T^n x, T^n y) = 1.
- An isometry of an infinite compact metric space (an irrational rotation of ℝ/ℤ) is not expansive: points at distance less than c stay at that distance forever.
- The identity of a finite metric space is expansive with any c below the least distance, while the identity of [0, 1] is not.
- The identity of [0, 1] is entropy-expansive at every scale although it is not expansive (Φ_ε(x) is a closed interval, on which the identity has entropy 0), so finiteness of entropy is the conclusion for the wider class, while finiteness of the sets of periodic points needs expansivity itself.

*Needs:* Mathlib `Dynamics.coverEntropy`, `Dynamics.coverEntropyEntourage`; Layer 1.1.

### 1.6 Bowen–Walters expansive flows

Define a continuous flow g on a metric space to be expansive when for every η > 0 there is ε > 0 such that whenever d(g^t x, g^{s(t)} y) ≤ ε for all real t, for some continuous s : ℝ → ℝ with s(0) = 0, then y = g^u x for some |u| ≤ η (BowenWalters1972; ClimenhagaThompson2016, lines 359–362).

Its API:

- An expansive flow has, for every η > 0, an ε > 0 with Γ_ε(x) contained in the orbit segment g^{[−η, η]}x for every x (ClimenhagaThompson2016, lines 356–366).
- Its fixed points are isolated (ClimenhagaThompson2016, lines 380–381, citing Bowen and Walters).
- Every time-t map of a flow with Γ_ε(x) ⊆ g^{[−η, η]}x is entropy-expansive (BowenEntropyExpansive1972, Example 1.6, lines 117–133), and every invariant measure is almost expansive in the sense of ClimenhagaThompson2016, Definition 2.7 (lines 371–375). Hence a Bowen–Walters expansive flow on a compact metric space has finite entropy: h_top(g) = `Dynamics.coverEntropy` (g 1) Set.univ < ∞ by §1.5's finiteness theorem for entropy-expansive maps applied to g^1, and every h(g^t) is finite by §1.4.
- Expansivity is preserved by time reversal and by rescaling g(at), a > 0.

**Checks.**

- The flow of a periodic orbit on a circle is expansive: points ε-close for all time lie on the same orbit within time ε/(speed).
- The linear flow of irrational slope on ℝ²/ℤ² is not expansive: two points on a short transverse segment stay at the same distance for all time without lying on a common short orbit segment.
- The identity flow of the circle is not expansive (every point is a non-isolated fixed point); the identity flow of a finite set is.

*Needs:* Mathlib `Flow`, `Dynamics.coverEntropy`; Layers 1.1, 1.4, 1.5.

### 1.7 Topological mixing

Define a continuous map T of a topological space to be topologically mixing when for all nonempty open U, V there is N with T^n(U) ∩ V nonempty for every n ≥ N, and a flow to be topologically mixing when for all nonempty open U, V there is t₀ with g^t(U) ∩ V nonempty for every t ≥ t₀ (BowenRuelle1975, line 165, footnote 2; BCS2022, lines 43–44).

Its API:

- Mixing implies transitivity in the sense of `AddAction.IsTopologicallyTransitive` for the ℕ-, ℤ- or ℝ-flow.
- Mixing is invariant under topological conjugacy and passes to factors; a homeomorphism T is mixing iff T^k is mixing for one, equivalently every, k ≥ 1 (T^j of a nonempty open set is open and nonempty).
- A flow is mixing iff one, equivalently every, time-t map with t > 0 is mixing: the forward implication restricts to the times nt, and the converse covers [0, t] by finitely many short intervals of offsets.

**Checks.**

- The full shift is mixing: cylinders U, V of length m meet after n ≥ m steps.
- An irrational rotation is transitive but not mixing: a short arc U returns near itself only along a sparse set of times; the swap of two points is transitive and not mixing.
- The constant-roof suspension (roof 1) of any homeomorphism is not mixing: a thin flow box U at height 0 meets a flow box V at height 1/2 only at times in 1/2 + ℤ up to the box widths.

*Needs:* Mathlib `AddAction.IsTopologicallyTransitive`, `Flow.fromIter`, `Flow.toAddAction`.

### 1.8 Weak specification

Define weak specification of a homeomorphism T of a compact metric space: for every δ > 0 there is τ ∈ ℕ such that for every finite list of orbit segments (x_1, n_1), …, (x_k, n_k) there are a point y and gluing times τ_1, …, τ_{k−1} ≤ τ with d_{n_j}(T^{N_{j−1}+τ_{j−1}} y, x_j) < δ for 1 ≤ j ≤ k, where N_j is the sum of n_i over i ≤ j plus the sum of τ_i over i < j and N_0 = τ_0 = 0 (ClimenhagaThompson2016, lines 1661–1669). Define it for a continuous flow with real segment lengths and real gluing times in [0, τ] in the same way (ClimenhagaThompson2016, lines 295–303). Strong specification asks that all gluing times equal τ.

Its API:

- Strong specification implies weak specification.
- Weak specification of a nonempty system implies transitivity: given nonempty open U, V, glue a point of U to a point of V.
- Weak specification is invariant under topological conjugacy of compact systems (with δ transported by uniform continuity).
- For a flow, weak specification at scale δ for long segments implies it for all segments with the same scale after enlarging τ (ClimenhagaThompson2016, Lemma 2.10, lines 448–463, for the tail version used by the uniqueness proof).

**Checks.**

- The swap of two points a, b has weak specification with τ = 1 for δ < d(a, b): choose each gluing time 0 or 1 to match the phase. It has no strong specification: the segments (a, 1), (a, 1) need 1 + τ even and the segments (a, 1), (b, 1) need it odd.
- The full shift has strong specification: at scale 2^{−m}, gluing time τ = 2m + 1 leaves room to concatenate the required central words.
- A disjoint union of two full shifts has no weak specification, since it is not transitive. An irrational rotation does have weak specification (choose the gluing time so the orbit lands near the next starting point, using minimality), which shows that expansivity in Bowen's criterion is an independent hypothesis.

*Needs:* Mathlib `AddAction.IsTopologicallyTransitive`; Layer 1.1.

### 1.9 The Bowen property

Define a continuous potential φ on a compact metric space to have the Bowen property for a map T when there are ε > 0 and K ≥ 0 with |S_nφ(x) − S_nφ(y)| ≤ K whenever n ≥ 0 and y ∈ B_n(x, ε), and for a flow g when |∫₀ᵗ φ(g^s x) ds − ∫₀ᵗ φ(g^s y) ds| ≤ K whenever t ≥ 0 and y ∈ B_t(x, ε) (ClimenhagaThompson2016, Definition 2.6, lines 333–339, and Definition 5.3, lines 1680–1682).

Its API:

- Potentials with the Bowen property form a real vector space containing the constants, and the property at scale ε implies it at every smaller scale with the same K.
- For a continuous ψ, the coboundary ψ∘T − ψ has the Bowen property with K = 4 sup|ψ|, since its Birkhoff sum telescopes to ψ∘T^n − ψ.
- For a flow and a continuous ψ that is differentiable along the flow with continuous derivative L_gψ(x) = d/dt ψ(g^t x) at t = 0, the potential L_gψ has the Bowen property with K = 4 sup|ψ|, since its orbit integral over [0, t] is ψ∘g^t − ψ.

**Checks.**

- A constant potential has the Bowen property with K = 0.
- On the full two-shift with the metric of §1.5, the potential x ↦ x_0 has the Bowen property at ε = 1/2 with K = 0, because y ∈ B_n(x, 1/2) forces y_i = x_i for −1 ≤ i ≤ n.
- On the full two-shift, the continuous potential φ(x) = 1/m, where m is the least index i ≥ 1 with x_i = 1 (φ = 0 if there is none), fails the Bowen property: for x = 0^∞ and y agreeing with x up to index n − 1 with y_n = 1, S_{n−1}φ(y) − S_{n−1}φ(x) is the harmonic sum 1/2 + ⋯ + 1/n, which is unbounded.

*Needs:* Mathlib `birkhoffSum`; Layer 1.1.

### Examples

The full shift on k symbols is expansive, mixing and has strong specification, with entropy log k; the irrational rotation is minimal with weak specification but neither expansive nor mixing; the constant-roof suspension of the full two-shift is an expansive flow with entropy log 2 that is not mixing.

### Dependencies

Mathlib's topological entropy and dynamical entourages (`Mathlib/Dynamics/TopologicalEntropy/`), `Flow`, `birkhoffSum` and `AddAction.IsTopologicallyTransitive`. No other roadmap.

## Layer 2: Pressure

Pressure is built on Mathlib's uniform-space entropy so that the zero potential recovers `Dynamics.coverEntropy` by a short lemma, and the variational principle of Layer 4 can be proved in Misiurewicz's entourage language.

### 2.1 Pressure of a map

Define, for a map T of a uniform space X, a potential φ : X → ℝ, an entourage U and n ∈ ℕ, the partition sum Z_n(φ, U) ∈ [0, ∞] as the supremum over finite (n, U)-separated sets s (`Dynamics.IsDynNetIn` T Set.univ U n s) of the sum over x ∈ s of exp(S_nφ(x)), and define the pressure P_T(φ) ∈ EReal as the supremum over entourages U of the uniformity of `ExpGrowth.expGrowthSup` (n ↦ Z_n(φ, U)) (Misiurewicz1976, lines 88–102, equations (1)–(3), for ℤ^N_+-actions on compact Hausdorff spaces, of which N = 1 is this definition; Walters1982, Section 9.1; BowenRuelle1975, lines 161–173, for the metric form).

Its API:

- P_T(0) = `Dynamics.coverEntropy T Set.univ`, because Z_n(0, U) is Mathlib's `Dynamics.netMaxcard` and `Dynamics.coverEntropy_eq_iSup_netEntropyEntourage` identifies the supremum.
- On a metric space P_T(φ) is the limit as ε → 0 of the limsup of (1/n) log Z_n(φ, ε), with separation measured in d_n; the limit is monotone in ε.
- The inner growth rate is antitone in U, so the supremum may be taken along a basis of the uniformity.
- On the empty space P_T(φ) = ⊥; on a nonempty space P_T(φ) ≥ inf φ.

**Checks.**

- On a one-point space P_T(φ) = φ(pt): every separated set is a singleton and Z_n = e^{nφ(pt)}.
- For the identity map of an m-point discrete space, Z_n(φ, U) = Σ_x e^{nφ(x)} for small U, so P(φ) = max φ; summing over all points of an infinite space instead of separated sets would make Z_n infinite.
- For the full shift on k symbols and a constant c, Z_n(c, U) is k^n e^{nc} up to a factor bounded independently of n at the cylinder scale, so P(c) = log k + c.

*Needs:* Mathlib `Dynamics.IsDynNetIn`, `Dynamics.netMaxcard`, `Dynamics.coverEntropy_eq_iSup_netEntropyEntourage`, `ExpGrowth.expGrowthSup`, `birkhoffSum`; Layer 1.1.

### 2.2 Spanning-set and open-cover pressure

Prove that for a continuous map T of a nonempty compact Hausdorff space and a continuous potential φ, P_T(φ) also equals (a) the supremum over entourages U of the limsup of (1/n) log of the infimum over finite (n, U)-spanning sets s (`Dynamics.IsDynCoverOf`) of Σ_{x∈s} exp(S_nφ(x)), and (b) the supremum over finite open covers 𝒰 of the limit of (1/n) log of the infimum over subcovers 𝒱 of 𝒰^n of Σ_{A∈𝒱} sup_A exp(S_nφ) (Walters1982, Section 9.1; Misiurewicz1976, lines 96–102 for the separated form). The comparisons use a modulus of uniform continuity of φ: a maximal separated set spans, a minimal spanning set meets each member of a fine subcover, and entourage balls of a Lebesgue entourage refine the cover; the errors are at most n times the oscillation of φ on U-close pairs, which vanishes in the growth rate as U shrinks.

**Checks.**

- For φ = 0 all three forms reduce to the three entropies of §1.2, the spanning form being Mathlib's definition.
- For the identity of an m-point space all three give max φ.
- Replacing sup_A by inf_A in the open-cover form changes the value at a fixed cover (the identity of two points with the single cover {X} gives min φ instead of max φ); the supremum is the correct choice.

*Needs:* Mathlib `Dynamics.IsDynCoverOf`, `Dynamics.coverMincard`; Layers 1.2, 2.1.

### 2.3 Basic properties of pressure

Prove, for a continuous map T of a nonempty compact Hausdorff space and continuous potentials φ, ψ (Walters1982, Theorem 9.7, for the first four items, and Theorem 9.8 for the power rule and conjugacy invariance; BowenRuelle1975, line 174 for the first item):

- P_T(0) = h_top(T), and h_top(T) + min φ ≤ P_T(φ) ≤ h_top(T) + max φ, so P_T(φ) is finite iff h_top(T) is.
- φ ≤ ψ implies P_T(φ) ≤ P_T(ψ); P_T(φ + c) = P_T(φ) + c for a real constant c.
- If h_top(T) < ∞, then |P_T(φ) − P_T(ψ)| ≤ sup|φ − ψ| and φ ↦ P_T(φ) is convex on C(X).
- P_T(φ + ψ∘T − ψ) = P_T(φ).
- P_{T^k}(S_kφ) = k P_T(φ) for k ≥ 1.
- Pressure is invariant under topological conjugacy: P_S(φ∘h) = P_T(φ) when h∘S = T∘h for a homeomorphism h.

**Checks.**

- For the full two-shift, P(c) − P(0) = c, so the Lipschitz constant 1 is attained.
- For the full two-shift with ψ(x) = x_0 and φ = 0, the coboundary ψ∘T − ψ has Birkhoff sums bounded by 1 in absolute value, and the pressure stays log 2.
- For k = 2 on the full two-shift with φ(x) = x_0, S_2φ(x) = x_0 + x_1; the pressure of the square is 2 log(1 + e) and that of the shift is log(1 + e) (the pressure of the full shift for a potential of x_0 alone is log Σ_a e^{φ(a)}), as the power rule requires.

*Needs:* Mathlib `Dynamics.coverEntropy`; Layers 1.3, 2.1, 2.2.

### 2.4 Pressure of a flow

Define, for a continuous flow g on a compact metric space and a continuous F, the partition sum Z_T(F, ε) as the supremum over (T, ε)-separated sets E for d_T of Σ_{x∈E} exp ∫₀ᵀ F(g^s x) ds, and the pressure P_g(F) as the limit as ε → 0 of the limsup as T → ∞ of (1/T) log Z_T(F, ε) (BowenRuelle1975, lines 182–189). Prove that P_g(F) = P_{g^1}(F_1) with F_1(x) = ∫₀¹ F(g^s x) ds, that more generally P_{g^t}(F_t) = t P_g(F) for t > 0, and that P_g(0) = h_top(g) (BowenRuelle1975, lines 190–192, the identity stated as a straightforward exercise; Layer 1.4 for F = 0). The proof compares (T, ε)-separated sets for the flow with (n, ε')-separated sets for g^t, using the containments of §1.1 between flow balls and time-t balls, and the bound |∫₀ᵀ F∘g^s − Σ_{k<n} F_t∘g^{kt}| ≤ t·max|F| for nt ≤ T < (n+1)t.

Its API:

- P_g(F + c) = P_g(F) + c; P_g is monotone, 1-Lipschitz and convex when h_top(g) < ∞.
- P_g(F + L_gψ) = P_g(F) for ψ continuous and differentiable along the flow with continuous derivative L_gψ.
- The pressure of the reversed flow `Flow.reverse` with the same potential equals P_g(F).
- P_g(F) depends only on the topology of the compact space, not on the metric (BowenRuelle1975, line 190).

**Checks.**

- For a constant c, F_1 = c and P_g(c) = h_top(g) + c.
- For the flow on a periodic orbit of period p, P_g(F) is the orbit average (1/p)∫₀^p F(g^s x) ds: a maximal (T, ε)-separated set has a bounded number of points, each with orbit integral T times the average plus a bounded error.
- For the rescaled flow g'(t) = g(2t), P_{g'}(2F) = 2P_g(F), the case t = 2 of the identity; using F instead of 2F gives 2P_g(F/2), which differs for nonconstant F.

*Needs:* Mathlib `Flow`, `Flow.reverse`; Layers 1.1, 1.4, 2.1, 2.3.

### Examples

For the full shift on k symbols and a potential depending on the zeroth coordinate, P(φ) = log Σ_a e^{φ(a)}; for the identity of a finite set P(φ) = max φ; for the constant-roof suspension (roof 1) of the full two-shift and F = c, P_g(c) = log 2 + c.

### Dependencies

Layer 1; Mathlib's dynamical nets and covers and `ExpGrowth.expGrowthSup`.

## Layer 3: Invariant measures and measure entropy

This layer supplies the measure-theoretic facts the variational principle and the uniqueness theorems need beyond the imported entropy API: the space of invariant measures, affinity and concavity, fine partitions, upper semicontinuity for expansive systems, and Abramov's formula.

### 3.1 Invariant probability measures

Define M(T), for a measurable map T of a measurable space, as the set of probability measures μ with `MeasurePreserving T μ μ`, and M(g), for a flow g, as the set of probability measures preserved by every g^t; call μ ∈ M(g) ergodic for g when `ErgodicVAdd ℝ X μ` holds for the action `Flow.toAddAction g`.

Its API:

- M(T) is convex, and on a nonempty compact Hausdorff space with a continuous T it contains a regular measure (`MeasureTheory.exists_measurePreserving_probabilityMeasure`).
- On a compact metric space, the image of M(T) in `MeasureTheory.ProbabilityMeasure X` is compact (closed in the compact space of probability measures, invariance being tested against continuous functions), and its extreme points are exactly the ergodic measures (`Ergodic.iff_mem_extremePoints`).
- For a continuous flow on a compact metric space, M(g) is the set of μ ∈ M(g^1) with (g^s)_*μ = μ for 0 ≤ s ≤ 1; it is compact and convex, and the averaging map μ ↦ ∫₀¹ (g^s)_*μ ds sends M(g^1) into M(g) and fixes M(g) pointwise.
- Flow-ergodic measures are exactly the extreme points of M(g).

**Checks.**

- For the identity, M(id) is the set of all probability measures; for the swap of two points a, b, M(T) consists of the single measure (δ_a + δ_b)/2.
- For an irrational rotation of ℝ/ℤ, M(T) is the single Haar measure.
- For the flow on a periodic orbit of period p, M(g) is the single normalised time measure, while the time-p map is the identity on the orbit and M(g^p) contains every point mass of the orbit: invariance under one time-t map does not give flow invariance.

*Needs:* Mathlib `MeasureTheory.MeasurePreserving`, `MeasureTheory.exists_measurePreserving_probabilityMeasure`, `MeasureTheory.ProbabilityMeasure`, `Ergodic.iff_mem_extremePoints`, `ErgodicVAdd`, `Flow.toAddAction`.

### 3.2 Affinity and concavity of measure entropy

Prove, for a measurable map T of a measurable space and μ ∈ M(T):

- for finite partitions P and Q, hμ(T, P) ≤ hμ(T, Q) + Hμ(P | Q) (Walters1982, Theorem 4.12, and its use in Theorem 8.3): by the chain rule of GeometryOfNumbersAndQuadraticArithmetic §4.2, Hμ(Pⁿ) ≤ Hμ(Pⁿ ∨ Qⁿ) = Hμ(Qⁿ) + Hμ(Pⁿ | Qⁿ) ≤ Hμ(Qⁿ) + Σ_{i<n} Hμ(T^{−i}P | T^{−i}Q) = Hμ(Qⁿ) + n Hμ(P | Q), where Pⁿ is the n-fold join of the T^{−i}P, the middle step uses that conditional entropy is subadditive in its first argument and decreases when the conditioning is refined (Jensen's inequality for t ↦ −t log t, proved here), and the last step is the invariance of μ; divide by n and let n → ∞;
- for μ, ν ∈ M(T) and 0 ≤ p ≤ 1, the measure entropy of pμ + (1 − p)ν is p hμ(T) + (1 − p) hν(T) in [0, ∞] (Walters1982, Theorem 8.1);
- for a measurable family x ↦ μ_x of measures in M(T) with integral μ and a finite partition ξ, hμ(T, ξ) ≥ ∫ hμ_x(T, ξ) dμ(x).

For a finite partition the entropy of the mixture lies between p Hμ + (1 − p) Hν and that quantity plus log 2; dividing the entropies of the n-fold joins by n removes the log 2, and the supremum over finite partitions (ArithmeticDynamics §2.6) passes to measure entropy. The integral inequality is Jensen's inequality for the concave function t ↦ −t log t applied to each n-fold join, combined with the fact that GeometryOfNumbersAndQuadraticArithmetic §4.2 defines the rate as the infimum over n of H(ξ^n)/n.

**Checks.**

- For the identity on two points all invariant measures have entropy 0, and so does every mixture, although (δ_a + δ_b)/2 has partition entropy log 2 for the partition into points: the log 2 defect lives at finite n only.
- On the full two-shift, the mixture with weights 1/2 of the Bernoulli measures (1/2, 1/2) and (1/3, 2/3) has entropy (1/2) log 2 + (1/2)(log 3 − (2/3) log 2), about 0.6648, while the Bernoulli measure of the averaged weights (5/12, 7/12) has entropy about 0.6792: entropy of a mixture is not the entropy of the averaged process.
- With p = 0 or 1, or ν = μ, the identity is trivial.
- For the conditional inequality on the full two-shift with the Bernoulli measure (1/2, 1/2): P the partition by x_0 and Q the trivial partition give hμ(T, P) = log 2 ≤ 0 + Hμ(P | Q) = log 2, equality; P the partition by (x_0, x_1) and Q the partition by x_0 give log 2 ≤ log 2 + log 2, with Hμ(P | Q) = log 2 ≠ 0, so the inequality is strict there and a version without the conditional term would be false (hμ(T, P) = log 2 > 0 = hμ(T, {X})).

*Needs:* GeometryOfNumbersAndQuadraticArithmetic §4.2 (`finitePartitionEntropy`, `conditionalPartitionEntropy` and its chain rule, `partitionEntropyRate`, `measureEntropy`); ArithmeticDynamics §2.6 (supremum over finite partitions); Layer 3.1.

### 3.3 Entropy through fine partitions

Prove, for a continuous map T of a compact metric space and μ ∈ M(T) (Walters1982, Theorem 8.3):

- for finite Borel partitions ξ_k with diameters tending to 0, hμ(T, ξ_k) → hμ(T);
- hμ(T) is the supremum of hμ(T, ξ) over finite Borel partitions with μ-null boundaries;
- the rate is unchanged by refining with iterates: hμ(T, ξ ∨ T⁻¹ξ ∨ ⋯ ∨ T^{−m}ξ) = hμ(T, ξ), and for invertible T also with the forward images T^jξ, j ≤ m.

The first item follows from Hμ(η | ξ_k) → 0 for every finite partition η (approximate each atom of η from inside by a compact set; once diam ξ_k is below the least distance between these compacts, each atom of ξ_k meets at most one of them) together with §3.2's inequality hμ(T, η) ≤ hμ(T, ξ_k) + Hμ(η | ξ_k) for finite partitions. The second uses the small-diameter null-boundary partitions of ArithmeticDynamics §2.7.

**Checks.**

- For the full two-shift and the Bernoulli measure (1/2, 1/2), the partitions by the coordinates in [−k, k] have diameter 2^{−k−1} → 0 and rate log 2 for every k, the measure entropy.
- For the identity map every rate is 0, and so is the limit.
- For the trivial partition {X} the rate is 0: the first item needs the diameters to tend to 0, not merely the partitions to be finite.

*Needs:* ArithmeticDynamics §2.6 (supremum over finite partitions), §2.7 (null-boundary partitions of small diameter); GeometryOfNumbersAndQuadraticArithmetic §4.2 (`conditionalPartitionEntropy` and its chain rule); Mathlib regularity of finite Borel measures on metric spaces; Layers 3.1, 3.2 (the conditional inequality).

### 3.4 Entropy of expansive homeomorphisms

Prove, for an expansive homeomorphism T of a compact metric space with constant c (Walters1982, Theorem 8.2; ClimenhagaThompson2016, Theorem 3.2, lines 504–509, for ergodic measures; BowenEntropyExpansive1972, Theorem 3.5, lines 297–299, for finite-dimensional spaces):

- hμ(T) = hμ(T, ξ) for every μ ∈ M(T) and every finite Borel partition ξ of diameter less than c;
- μ ↦ hμ(T) is upper semicontinuous on M(T) for the weak topology, and bounded by h_top(T) < ∞.

The partition ξ is a two-sided generator: by expansivity and compactness the diameters of the joins of T^jξ over |j| ≤ n tend to 0, so §3.3's first and third items give the first claim. For the second, choose ξ of diameter less than c with μ-null boundary; each join ξ^n has μ-null boundary, so ν ↦ H_ν(ξ^n) is continuous at μ by `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto`, and hν(T) = inf_n H_ν(ξ^n)/n is an infimum of functions continuous at μ.

**Checks.**

- On the full two-shift (c = 1/2), the partition by the coordinates x_{−1}, x_0, x_1 has diameter 1/4 < c and rate H(p) = −p log p − (1 − p) log(1 − p) for the Bernoulli measure (p, 1 − p).
- The normalised orbit measures of the periodic points of period n of the full two-shift converge to the Bernoulli measure (1/2, 1/2); they have entropy 0 while the limit has entropy log 2, so entropy is upper but not lower semicontinuous.
- The identity of [0, 1] is not expansive, yet all its entropies vanish and the conclusion holds for another reason: expansivity is sufficient, not necessary.

*Needs:* Mathlib `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto`, `UpperSemicontinuous`; ArithmeticDynamics §2.7 (null-boundary partitions); Layers 1.5, 3.1, 3.3.

### 3.5 Entropy of expansive flows

Prove, for a Bowen–Walters expansive continuous flow g on a compact metric space: there is ε > 0 such that hμ(g^1) = hμ(g^1, ξ) for every μ ∈ M(g^1) and every finite Borel partition ξ of diameter less than ε for d_1; and μ ↦ hμ(g^1) is upper semicontinuous on M(g) (ClimenhagaThompson2016, Theorem 3.2 and Propositions 3.3–3.4, lines 504–535; BowenEntropyExpansive1972, Example 1.6, lines 117–133). By §1.6 the time-one map is entropy-expansive at scale ε for the metric d_1, so ClimenhagaThompson2016, Theorem 3.2 gives the equality for every g^1-ergodic measure. For general μ ∈ M(g^1) decompose μ into g^1-ergodic components by ArithmeticDynamics §2.7 and use hμ(g^1) = ∫⁻ hμ_x(g^1) = ∫ hμ_x(g^1, ξ) ≤ hμ(g^1, ξ) ≤ hμ(g^1), the middle inequality being §3.2's concavity. Upper semicontinuity follows as in §3.4 on the closed set M(g).

**Checks.**

- For the flow on a periodic orbit, M(g) is a point of entropy 0.
- For the constant-roof suspension (roof 1) of the full two-shift and μ the product of the Bernoulli measure (1/2, 1/2) with Lebesgue measure on the fibre, hμ(g^1) = log 2, computed by a partition of d_1-diameter below ε.
- For the linear flow of irrational slope on ℝ²/ℤ² (not expansive) every entropy is 0, so this example says nothing about necessity.

*Needs:* ArithmeticDynamics §2.7 (ergodic decomposition with entropy integration); Layers 1.6, 3.1, 3.2, 3.3, 3.4.

### 3.6 Abramov's formula

Prove that for a continuous flow g on a compact metric space and μ ∈ M(g), hμ(g^t) = |t| hμ(g^1) for every real t, with 0 · ∞ = 0, and define the entropy of μ for the flow as hμ(g) = hμ(g^1) (BowenRuelle1975, lines 409–411 and 225–227, recording Abramov's formula; ClimenhagaThompson2016, line 588). The case t = 0 is the identity, and t < 0 reduces to t > 0 by `entropy_inverse` of GeometryOfNumbersAndQuadraticArithmetic §4.2. For s, t > 0 prove hμ(g^t, ξ) ≤ (t/s) hμ(g^s) for every finite partition ξ with μ-null boundary; exchanging s and t gives equality. Fix a finite partition ζ of diameter ρ, put m = ⌈nt/s⌉ + 1, and compare the n-fold g^t-join of ξ with the m-fold g^s-join of ζ: each atom A of the latter has diam g^{jt}(A) < ω(ρ) for j < n, where ω is a modulus of uniform continuity of the flow on [0, s] × X. For a partition γ into sets of diameter less than ω, Hμ(ξ | γ) ≤ H₂(μ(E_ω)) + μ(E_ω) log |ξ|, where E_ω is the set of points within ω of the complement of their own atom of ξ and H₂ is the binary entropy; μ(E_ω) → 0 as ω → 0 because the atoms have μ-null boundaries. Invariance of μ under g^{jt} and the chain rule give Hμ(ξ^{(t)}_n) ≤ Hμ(ζ^{(s)}_m) + n(H₂(μ(E_ω)) + μ(E_ω) log |ξ|); divide by n, let n → ∞ and then ρ → 0, and finish with §3.3's second item.

**Checks.**

- For the constant-roof suspension with roof 2 of the Bernoulli two-shift (the flow takes time 2 to return to the base), hμ(g^2) = log 2 and hμ(g^1) = (log 2)/2, as the formula requires.
- For the flow on a periodic orbit every time-t map has entropy 0.
- hμ(g^{−1}) = hμ(g^1); without the absolute value the formula would assign negative entropy to t < 0.

*Needs:* GeometryOfNumbersAndQuadraticArithmetic §4.2 (`entropy_inverse`, chain rule, `conditionalPartitionEntropy`); ArithmeticDynamics §2.7 (null-boundary partitions); Layers 3.1, 3.2 (the conditional inequality), 3.3.

### Examples

The Bernoulli measures on the full two-shift give entropies H(p), affine mixtures and upper semicontinuity at the uniform measure; suspension flows of the two-shift give Abramov's formula with explicit constants.

### Dependencies

Layers 1–2; GeometryOfNumbersAndQuadraticArithmetic §4.2; ArithmeticDynamics §§2.6–2.7; Mathlib measure theory and the portmanteau theorem.

## Layer 4: Variational principles and equilibrium states

### 4.1 The free energy is bounded by the pressure

Prove that for a continuous map T of a nonempty compact Hausdorff uniform space, a continuous φ and a regular μ ∈ M(T), hμ(T) + ∫φ dμ ≤ P_T(φ) in EReal (Misiurewicz1976, Part I, lines 125–200: fix a finite partition and m, shrink its atoms to compact sets, choose an entourage separating them, and compare the partition entropy of the refined join with the partition sum of a maximal separated set using the concavity of −x log x). For φ = 0 on a compact metric space this is ArithmeticDynamics §2.7's inequality.

**Checks.**

- For the full two-shift, the Bernoulli measure (p, 1 − p) and φ = 0, H(p) ≤ log 2, with equality only at p = 1/2.
- For the identity of two points with φ(a) = 1, φ(b) = 0 and μ = (δ_a + δ_b)/2, the free energy is 1/2 and P = 1.
- For φ = 0 on a compact metric space the inequality agrees with ArithmeticDynamics §2.7's comparison of hμ(T) with `Dynamics.coverEntropy`.

*Needs:* GeometryOfNumbersAndQuadraticArithmetic §4.2 (`measureEntropy`, `finitePartitionEntropy`); ArithmeticDynamics §2.6; Mathlib regular measures; Layers 2.1, 3.1.

### 4.2 Variational principle for pressure

Prove that for a continuous map T of a nonempty compact Hausdorff uniform space and a continuous φ, P_T(φ) is the supremum of hμ(T) + ∫φ dμ over regular μ ∈ M(T) (Misiurewicz1976, lines 119–121 for the statement and Part II for the construction; Walters1982, Theorem 9.10; BowenRuelle1975, lines 176–178). For the reverse inequality, take maximal separated sets E_n nearly realising Z_n(φ, U), form the atomic measures σ_n with weights proportional to exp(S_nφ), average them along the orbit to μ_n = (1/n)Σ_{k<n} T^k_*σ_n, take a weak limit point and its regular representative (`MeasureTheory.Measure.exists_regular_eq_of_compactSpace`), and bound hμ(T, ξ) + ∫φ dμ from below by the growth rate of Z_n for a partition ξ whose atoms are smaller than U and have μ-null boundaries.

**Checks.**

- For the full shift on k symbols and φ depending on x_0, the supremum is attained by the Bernoulli measure with weights e^{φ(a)}/Σ_b e^{φ(b)}, with value log Σ_b e^{φ(b)}.
- For the identity of a finite set the supremum is max φ, attained by the point masses on the maximum set.
- On a compact metric space every finite Borel measure is regular, so the supremum is over all of M(T); regularity is a restriction only on non-metrizable spaces.

*Needs:* Mathlib `MeasureTheory.ProbabilityMeasure` (compactness), `MeasureTheory.Measure.exists_regular_eq_of_compactSpace`, `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto`; GeometryOfNumbersAndQuadraticArithmetic §4.2; ArithmeticDynamics §2.7 (null-boundary partitions, metric case); Layers 2.1, 2.2, 3.1, 4.1.

### 4.3 Variational principle for entropy and ergodic suprema

Prove that h_top(T) is the supremum of hμ(T) over regular μ ∈ M(T) for a continuous map of a nonempty compact Hausdorff uniform space, and that on a compact metric space the suprema of §4.2 and of this section may be taken over ergodic μ only (Walters1982, Theorem 8.6 and Corollary 8.6.1; BCS2022, lines 45–51, for the statement). The ergodic reduction uses ArithmeticDynamics §2.7's ergodic decomposition: hμ(T) = ∫⁻ hμ_x(T) dμ and ∫φ dμ = ∫∫φ dμ_x dμ, so some ergodic component has free energy at least that of μ.

**Checks.**

- The full shift on k symbols has h_top = log k, attained by the ergodic Bernoulli measure (1/k, …, 1/k).
- The identity has h_top = 0 and every measure, ergodic or not, has entropy 0.
- On the disjoint union of a fixed point and a full two-shift, the measure giving weight 1/2 to each part has entropy (log 2)/2 < log 2, and the supremum log 2 is attained by an ergodic measure on the shift.

*Needs:* ArithmeticDynamics §2.7 (ergodic decomposition); Layers 3.1, 4.2.

### 4.4 Equilibrium states and measures of maximal entropy

Define an equilibrium state of a continuous potential φ for a continuous map T of a compact metric space as μ ∈ M(T) with hμ(T) + ∫φ dμ = P_T(φ) in EReal, and a measure of maximal entropy as an equilibrium state of the zero potential (BowenRuelle1975, lines 180–181; BCS2022, Definition 1.1, lines 54–55). Write ES_T(φ) for the set of equilibrium states. The structure theorems assume h_top(T) < ∞, so that P_T(φ) is finite.

Its API:

- ES_T(φ + c) = ES_T(φ) for real c, and ES_T(φ + ψ∘T − ψ) = ES_T(φ) for continuous ψ (the integral of ψ∘T − ψ vanishes on M(T) and the pressure is unchanged by §2.3).
- ES_T(φ) is the set of maximisers of the free energy on M(T).
- Equilibrium states are transported by topological conjugacies.

**Checks.**

- For the identity of two points with φ(a) = 1 and φ(b) = 0, P = 1 and ES = {δ_a}; for φ = 0 every invariant measure is a measure of maximal entropy.
- For the swap of two points the unique invariant measure is the equilibrium state of every potential.
- For the full two-shift the measure of maximal entropy is the Bernoulli measure (1/2, 1/2); the point mass at a fixed point has entropy 0 and is not one.

*Needs:* Layers 2.3, 3.1, 4.2.

### 4.5 Structure of the set of equilibrium states

Prove, for a continuous map T of a nonempty compact metric space with h_top(T) < ∞ and a continuous φ (Walters1982, Theorem 9.13; BCS2022, line 56, for measures of maximal entropy):

- ES_T(φ) is convex, and it is a face of M(T): if pμ₁ + (1 − p)μ₂ ∈ ES_T(φ) with 0 < p < 1 and μ₁, μ₂ ∈ M(T), then μ₁, μ₂ ∈ ES_T(φ);
- μ ∈ ES_T(φ) is an extreme point of ES_T(φ) iff μ is ergodic;
- for μ ∈ ES_T(φ), μ-almost every ergodic component μ_x lies in ES_T(φ).

Convexity and the face property come from affinity (§3.2) and the bound of §4.1; the extreme points of a face of M(T) are extreme in M(T), hence ergodic by `Ergodic.iff_mem_extremePoints`; the last item integrates the free energy over the ergodic decomposition of ArithmeticDynamics §2.7 and uses that each component's free energy is at most P_T(φ).

**Checks.**

- On the disjoint union of two full two-shifts, ES(0) is the segment between the two uniform Bernoulli measures; its extreme points are the two ergodic ones and its midpoint is not ergodic.
- For the identity of [0, 1] and φ(x) = −(x − 1/2)², ES(φ) = {δ_{1/2}}, a single ergodic measure.
- For the identity of two points with φ(a) = 1, φ(b) = 0, the midpoint (δ_a + δ_b)/2 has free energy 1/2 < 1 = P and is not an equilibrium state, although its component δ_a is: the third item concerns equilibrium states only.

*Needs:* Mathlib `Ergodic.iff_mem_extremePoints`; ArithmeticDynamics §2.7 (ergodic decomposition); Layers 3.2, 4.1, 4.2, 4.4.

### 4.6 Existence of equilibrium states

Prove that if T is a continuous map of a nonempty compact metric space and μ ↦ hμ(T) is upper semicontinuous on M(T) as a [0, ∞]-valued function, then ES_T(φ) is nonempty and compact for every continuous φ; in particular this holds for expansive homeomorphisms (Walters1982, Theorem 8.2 and Theorem 9.13(iv); BowenRuelle1975, lines 178–179). No finiteness of h_top(T) is assumed: the free energy is upper semicontinuous on the nonempty compact set M(T) (§3.1), and an upper semicontinuous EReal-valued function on a nonempty compact set attains its supremum, also when that supremum is ∞ (the sets where it is at least n are closed, nonempty and nested), so some μ has free energy P_T(φ) by §4.2; ES_T(φ) is the closed set where the free energy is at least P_T(φ). For expansive homeomorphisms use §3.4.

**Checks.**

- The full shift is expansive and has a measure of maximal entropy, the uniform Bernoulli measure.
- For every finite r ≥ 1 and every manifold of dimension at least 2 there is a C^r diffeomorphism with finite topological entropy and no measure of maximal entropy (Buzzi2014, Corollary 1, lines 114–116); the upper semicontinuity hypothesis cannot be dropped.
- For the identity of [0, 1] (not expansive) and continuous φ, ES(φ) is the set of measures on the maximum set of φ, nonempty because entropy vanishes identically and is trivially upper semicontinuous.
- When h_top(T) = ∞ the statement still applies: P_T(φ) = ∞ by §2.3, ∫φ dμ is finite for every μ, so ES_T(φ) is exactly the set of invariant measures of infinite entropy, which upper semicontinuity makes nonempty and closed; a measure of finite entropy is then never an equilibrium state. Upper semicontinuity itself fails in the natural infinite-entropy examples (the shift on [0, 1]^ℤ carries product measures on 2^k equally spaced values, of entropy k log 2, converging to a point mass of entropy 0), which is why the finiteness hypothesis was redundant rather than harmless: it is upper semicontinuity that does the work.

*Needs:* Mathlib `UpperSemicontinuous`, `MeasureTheory.ProbabilityMeasure` (compactness); Layers 3.1, 3.4, 4.2, 4.4.

### 4.7 Newhouse's theorem, as an input

State, without proof, Newhouse's theorem: for a C^∞ map f of a compact C^∞ manifold, μ ↦ hμ(f) is upper semicontinuous on M(f); consequently, by §4.6, which assumes no finiteness of entropy, every continuous potential has an equilibrium state for f, and in particular f has a measure of maximal entropy (Newhouse1989, Theorem 1; BCS2022, lines 59–60, and Buzzi2014, lines 25–27, for the statement). Its proof, through Yomdin's theory of C^r volume growth, is outside this roadmap: the statement is an input recorded so that consumers can state their hypotheses against the definitions here, and no target of this roadmap uses it.

**Checks.**

- Hyperbolic toral automorphisms are C^∞ and expansive, and §3.4 already gives upper semicontinuity for them, consistent with the input.
- For finite r the conclusion fails (Buzzi2014, Corollary 1), so the C^∞ hypothesis is not cosmetic.
- The identity of a compact manifold is C^∞ with all entropies zero, the degenerate case.

*Needs:* Layers 3.1, 4.6.

### 4.8 Variational principle and equilibrium states for flows

Define an equilibrium state of a continuous F for a continuous flow g on a compact metric space as μ ∈ M(g) with hμ(g^1) + ∫F dμ = P_g(F), and write ES_g(F) for their set (BowenRuelle1975, lines 200–201; TsujiiZhang2023, Definition 3.5, lines 485–495, which takes the variational form as the definition of the pressure). Prove the variational principle P_g(F) = sup over μ ∈ M(g) of hμ(g^1) + ∫F dμ (BowenRuelle1975, lines 192–199). The bound ≤ P_g(F) for μ ∈ M(g) follows from §2.4 and §4.1 applied to g^1 and F_1, with ∫F_1 dμ = ∫F dμ for μ ∈ M(g). For the reverse, §4.2 for g^1 gives μ' ∈ M(g^1) with free energy for (g^1, F_1) close to P_{g^1}(F_1); average it to μ = ∫₀¹ (g^s)_*μ' ds ∈ M(g). Then ∫F dμ = ∫F_1 dμ', and hμ(g^1) ≥ hμ'(g^1): each (g^s)_*μ' has the entropy of μ' because g^s commutes with g^1, and for partitions ξ_k of diameters tending to 0, hμ(g^1, ξ_k) ≥ ∫₀¹ h_{(g^s)_*μ'}(g^1, ξ_k) ds by §3.2's concavity, so §3.3 and Fatou's lemma conclude.

Its API:

- ES_g(F) is convex; its extreme points are exactly its flow-ergodic members; it is nonempty and compact when μ ↦ hμ(g^1) is upper semicontinuous on M(g), in particular for Bowen–Walters expansive flows (§3.5).
- ES_g(F + c) = ES_g(F).
- Measures of maximal entropy of g are the equilibrium states of F = 0.

**Checks.**

- For the flow on a periodic orbit, M(g) is one measure, the equilibrium state of every F, with P_g(F) the orbit average.
- For the constant-roof suspension (roof 1) of the full two-shift and F = 0, the measure of maximal entropy is the product of the uniform Bernoulli measure with Lebesgue measure on the fibre.
- Maximising over M(g^1) instead of M(g) gives the same value but other maximisers: for the flow on a periodic orbit of period 1 and nonconstant F, F_1 is the constant orbit average, so every point mass of the orbit is a g^1-invariant maximiser that is not flow-invariant.

*Needs:* Mathlib `ErgodicVAdd`, `Flow.toAddAction`; Layers 2.4, 3.1, 3.2, 3.3, 3.5, 4.1, 4.2, 4.5.

### 4.9 Time changes and flow coboundaries

Prove, for a continuous flow g on a compact metric space with h_top(g) < ∞ and a continuous F (BowenRuelle1975, lines 213–219 and 409–413; TsujiiZhang2023, lines 106–109):

- for t > 0 and μ ∈ M(g), μ ∈ ES_g(F) iff μ is an equilibrium state of F_t for the map g^t;
- for the rescaled flow g_a(t) = g(at) with a > 0, ES_{g_a}(aF) = ES_g(F) and P_{g_a}(aF) = a P_g(F);
- if F' = F + c + L_gψ for a real c and a continuous ψ differentiable along the flow with continuous derivative L_gψ, then P_g(F') = P_g(F) + c and ES_g(F') = ES_g(F); on a manifold every C¹ function ψ qualifies, with L_gψ = dψ(X).

The first item combines Abramov's formula (§3.6), ∫F_t dμ = t∫F dμ and P_{g^t}(F_t) = t P_g(F) (§2.4): the free energy of μ for (g^t, F_t) is t times its free energy for (g, F), and the maximum over the larger set M(g^t) is t P_g(F). The coboundary item uses ∫L_gψ dμ = d/dt ∫ψ∘g^t dμ = 0 for μ ∈ M(g).

**Checks.**

- On a periodic orbit of period p, ∫₀^p L_gψ(g^s x) ds = ψ(g^p x) − ψ(x) = 0, so the coboundary has zero integral for the flow-invariant measure.
- For the constant-roof suspension of the full two-shift, F = 1 and F' = 1 + L_gψ have the same equilibrium state, the measure of maximal entropy, and pressure log 2 + 1.
- For the flow on a periodic orbit of period 1 and t = 1, every point mass of the orbit is an equilibrium state of F_1 for g^1 but is not in M(g): the first item is an equivalence for g-invariant μ only.

*Needs:* Layers 2.4, 3.6, 4.8.

### Examples

For the full shift and potentials of the zeroth coordinate, the Bernoulli measures are the equilibrium states and realise the variational principle; for suspensions of the full shift, equilibrium states of the flow are products with Lebesgue measure on the fibre.

### Dependencies

Layers 1–3; ArithmeticDynamics §§2.6–2.7; GeometryOfNumbersAndQuadraticArithmetic §4.2; Mathlib `Ergodic.iff_mem_extremePoints`, `ErgodicVAdd` and the compactness of the space of probability measures.

## Layer 5: Bowen's uniqueness criterion

### 5.1 Gibbs measures

Define μ ∈ M(T), for a homeomorphism T of a compact metric space with P_T(φ) finite, to have the Gibbs property for φ at scale ε with constant K ≥ 1 when K⁻¹ ≤ μ(B_n(x, ε)) · exp(n P_T(φ) − S_nφ(x)) ≤ K for every x and every n ≥ 1; and μ ∈ M(g), for a flow, to have the lower Gibbs property at scale ε with constant K when μ(B_t(x, ε)) · exp(t P_g(φ) − ∫₀ᵗ φ(g^s x) ds) ≥ K⁻¹ for every x and every t ≥ 1 (BowenRuelle1975, Proposition 3.1(d), lines 218–222, and Theorem 3.3, lines 272–277; ClimenhagaThompson2016, Lemma 4.16, lines 1251–1253, and Proposition 6.17, lines 1963–1965).

Its API:

- A measure with the (lower) Gibbs property at arbitrarily small scales gives positive mass to every nonempty open set.
- If μ is Gibbs for φ at a scale below an expansivity constant of T, then μ is an equilibrium state of φ.
- If T is expansive and ε is below an expansivity constant, two Gibbs measures μ, ν for the same φ at scale ε are mutually absolutely continuous with bounded densities; if one of them is ergodic they are equal (BowenPeriodicPoints1971, Lemma 6.4, lines 615–618, for the last step). The Gibbs bounds pass to every smaller scale ε' < ε with other constants, since by uniform expansivity (BowenPeriodicPoints1971, Lemma 2.4, lines 98–100) there is N with T^{−N}B_{n+2N}(T^{−N}x, ε) ⊆ B_n(x, ε'), and invariance gives μ(B_n(x, ε')) ≥ K⁻¹e^{−2N(|P_T(φ)| + sup|φ|)} exp(−nP_T(φ) + S_nφ(x)). The two-sided balls T^jB_{2j+1}(T^{−j}x, r) have the same bounds by invariance; for a closed set A, a Vitali covering by such balls of radius ε/5 about points of A, pairwise disjoint and with the balls of radius ε covering A, gives μ(A) ≤ K K_{ε/5} ν(N_j(A)) with N_j(A) the two-sided neighbourhood of A of radius ε/5 at order j; these neighbourhoods decrease to A as j → ∞ because r < c forces Γ_r(x) = {x}, so μ(A) ≤ K K_{ε/5} ν(A) on closed sets and, by regularity, on Borel sets.
- μ is Gibbs for φ iff it is Gibbs for φ + c, and iff it is Gibbs for φ + ψ∘T − ψ with K multiplied by e^{2 sup|ψ|}.

**Checks.**

- The uniform Bernoulli measure on the full two-shift with φ = 0 and ε = 1/2: B_n(x, 1/2) is the cylinder fixing x_{−1}, …, x_n, of measure 2^{−(n+2)}, and exp(n log 2) = 2^n, so the product is 1/4 for all x and n: Gibbs with K = 4.
- For the swap of two points a, b and small ε, B_n(x, ε) = {x} has measure 1/2, P(φ) = (φ(a) + φ(b))/2, and |nP − S_nφ(x)| ≤ |φ(a) − φ(b)|/2, so the unique invariant measure is Gibbs.
- The point mass at a fixed point of the full two-shift is not Gibbs for φ = 0: Bowen balls of other points have measure 0.
- Without expansivity two Gibbs measures need not be equivalent: for the identity of [0, 1], φ = 0 and ε = 1, every Bowen ball is [0, 1], P = 0, and every invariant measure is Gibbs with K = 1, yet δ₀ and δ₁ are mutually singular; at ε = 1/10 Lebesgue measure and the uniform measure on the twenty points k/20 are both Gibbs with K = 20 and are mutually singular.

*Needs:* Layers 1.1, 1.5, 2.3, 3.1.

### 5.2 Bowen's theorem for homeomorphisms

Prove that if X is a nonempty compact metric space, T an expansive homeomorphism of X with weak specification, and φ a continuous potential with the Bowen property, then φ has exactly one equilibrium state μ_φ; μ_φ is ergodic, has the Gibbs property at every sufficiently small scale, and gives positive mass to every nonempty open set (ClimenhagaThompson2016, Theorem 5.5, lines 1717–1724, with the decomposition consisting of all orbit segments and P^⊥_exp(φ) = −∞ by expansivity; Proposition 6.16, line 1955, for ergodicity; the lower Gibbs bound of its Lemma 6.13, line 1944, and Proposition 6.17, lines 1963–1965, for the upper bound, the Bowen property replacing the supremum over the ball by the value at x). The route constructs μ as a limit of weighted orbit averages over maximising separated sets, proves the lower Gibbs bound by gluing with specification, deduces that every equilibrium state is absolutely continuous with respect to μ, and proves ergodicity of μ by a second gluing; absolute continuity and ergodicity give uniqueness.

**Checks.**

- For the full shift with φ depending on x_0, the unique equilibrium state is the Bernoulli measure with weights e^{φ(a)}/Σ_b e^{φ(b)}, and it is Gibbs.
- The swap of two points satisfies every hypothesis; its unique invariant measure is the equilibrium state, ergodic but not mixing, so ergodicity is the right conclusion and mixing is not claimed.
- The disjoint union of two full shifts is expansive and every locally constant potential has the Bowen property, but weak specification fails and ES(0) is a segment: the specification hypothesis is needed.

*Needs:* Layers 1.5, 1.8, 1.9, 3.4, 4.2, 4.5, 4.6, 5.1.

### 5.3 Bowen's criterion for flows

Prove that if X is a nonempty compact metric space, g a Bowen–Walters expansive continuous flow on X with weak specification, and φ a continuous potential with the Bowen property for g, then φ has exactly one equilibrium state μ_φ for g; μ_φ is ergodic for the flow, has the lower Gibbs property at every sufficiently small scale, and gives positive mass to every nonempty open set (ClimenhagaThompson2016, Theorem A, lines 140–147, uniform case, expansivity giving P^⊥_exp(φ) = −∞; Proposition 4.19, line 1489, ergodicity; Lemma 4.16, lines 1251–1253, lower Gibbs bound; Proposition 4.15 for existence). Positivity on open sets follows from the lower Gibbs bound at arbitrarily small scale, since by uniqueness the measure does not depend on the scale.

**Checks.**

- The constant-roof suspension (roof 1) of the full two-shift is expansive with weak specification (gluing times in [0, 1] absorb the phase) but is not mixing; its unique measure of maximal entropy is the flow-ergodic product measure.
- The flow on a periodic orbit satisfies the hypotheses, and its unique invariant measure is the equilibrium state of every potential.
- The identity flow of a two-point space is expansive but has no weak specification, and every probability measure on it is a measure of maximal entropy.

*Needs:* Layers 1.6, 1.8, 1.9, 3.5, 4.8, 5.1.

### Examples

The full shift and its constant-roof suspension satisfy the criterion with explicit Gibbs measures; the swap of two points and the periodic orbit are the minimal non-mixing examples.

### Dependencies

Layers 1–4.

## Layer 6: Abstract hyperbolic dynamics

Uniform hyperbolicity enters the uniqueness theory only through a local product structure with exponential contraction. This layer states those axioms for homeomorphisms (Bowen's Axiom A*) and for flows, and derives expansivity, closing, density of periodic points, spectral decomposition, weak specification and the Bowen property of Hölder potentials, so that Layer 5 applies.

### 6.1 Homeomorphisms with hyperbolic local product structure

Define, for a homeomorphism f of a compact metric space X and δ > 0, the local stable and unstable sets W^s_δ(x) = {y : d(f^n x, f^n y) ≤ δ for all n ≥ 0} and W^u_δ(x) = {y : d(f^{−n} x, f^{−n} y) ≤ δ for all n ≥ 0} (BowenPeriodicPoints1971, lines 66–72). Say f has hyperbolic local product structure when (A2) for every δ > 0 there is e(δ) > 0 such that W^s_δ(x) ∩ W^u_δ(z) is nonempty whenever d(x, z) < e(δ), and (A3) there are δ* > 0, 0 < λ < 1 and c ≥ 1 with d(f^n x, f^n y) ≤ cλ^n d(x, y) for y ∈ W^s_{δ*}(x) and d(f^{−n} x, f^{−n} y) ≤ cλ^n d(x, y) for y ∈ W^u_{δ*}(x), for all n ≥ 0. Say f satisfies Axiom A* when moreover (A1) its periodic points are dense (BowenPeriodicPoints1971, lines 74–83).

Its API:

- For 2δ ≤ δ* and d(x, z) < e(δ), the intersection W^s_δ(x) ∩ W^u_δ(z) is a single point [x, z] (two such points stay 2δ-close along the whole orbit and coincide by §6.2's expansivity); the bracket is continuous, [x, x] = x, and f[x, z] = [fx, fz] whenever both sides are defined.
- f⁻¹ has hyperbolic local product structure with the roles of W^s and W^u exchanged, and so does f^k for k ≥ 1 with constant λ^k.
- The definitions depend on the metric only up to bi-Lipschitz equivalence, which changes c and e but not λ.

**Checks.**

- The full two-shift with d(x, y) = 2^{−N(x,y)} has W^s_{1/2}(x) = {y : y_i = x_i for i ≥ 0}, contraction d(T^n x, T^n y) ≤ 2^{−n} d(x, y) on it (c = 1, λ = 1/2), and bracket [x, z] equal to z on the negative coordinates and x on the nonnegative ones whenever x_0 = z_0; its periodic points are dense, so it satisfies Axiom A*.
- The identity of a finite set satisfies Axiom A*: for δ below the least distance both local sets are singletons, and (A2) holds with e(δ) at most that distance.
- An irrational rotation fails (A3): W^s_δ(x) is the δ-ball and distances are preserved; the identity of the circle fails (A3) for the same reason, although it satisfies (A2).

*Needs:* Layer 1.1.

### 6.2 Expansivity, shadowing and closing

Prove, for a homeomorphism f of a compact metric space with hyperbolic local product structure:

- f is expansive with constant δ* (BowenPeriodicPoints1971, Lemma 2.3, lines 96–97): if d(f^n x, f^n y) ≤ δ* for all n ∈ ℤ then f^n y ∈ W^u_{δ*}(f^n x) and d(x, y) ≤ cλ^n δ* for every n;
- shadowing: for every β > 0 there is α > 0 such that every α-pseudo-orbit (x_n)_{n∈ℤ}, d(f x_n, x_{n+1}) < α, is β-shadowed by some point y, d(f^n y, x_n) ≤ β for all n, and the shadowing point is unique when 2β ≤ δ*, two shadowing points staying 2β-close along their whole orbits (Bowen1975, Chapter 3; KatokHasselblatt1995, Section 18.1);
- closing: for every ε > 0 there are φ(ε) > 0 and R(ε) such that if m ≥ R(ε) and d(f^m y, y) < φ(ε), there is z with f^m z = z and d(f^k z, f^k y) ≤ ε for 0 ≤ k ≤ m (BowenPeriodicPoints1971, 2.5, lines 101–104);
- if f is topologically transitive, its periodic points are dense, so f satisfies Axiom A*.

Shadowing of finite pseudo-orbits is proved by iterating the bracket along the pseudo-orbit, as in BowenPeriodicPoints1971's proof of 2.10 (lines 171–200), with the errors summed as a geometric series by (A3); compactness gives bi-infinite pseudo-orbits and expansivity with constant δ* gives uniqueness for 2β ≤ δ*. Closing applies shadowing to the periodic pseudo-orbit y, fy, …, f^{m−1}y, y, …. For the last item, every point of a transitive homeomorphism of a compact space is nonwandering, with arbitrarily long return times of nearby points unless X is a single finite orbit, and closing turns a long return of a nearby point into a periodic point.

**Checks.**

- On the full two-shift a pseudo-orbit is a sequence of points whose consecutive symbols agree up to α, and the shadowing point reads off the zeroth symbols; the closing lemma produces the periodic sequence repeating the first m symbols of y.
- On the identity of a finite set every pseudo-orbit with α below the least distance is constant, and shadowing is trivial.
- The irrational rotation (no (A3)) has the pseudo-orbit adding α/2 extra rotation at each step, which no orbit shadows at scale β < 1/4 for long times; it also has no periodic points.
- On the full two-shift with the metric of §1.5 (diameter 1, δ* = 1/2) and β = 1, every point 1-shadows every pseudo-orbit, so uniqueness fails above the expansivity scale; at β = 1/4, 2β = 1/2 = δ* and the shadowing point is unique.

*Needs:* Layers 1.5, 6.1.

### 6.3 Spectral decomposition and specification

Prove, for a homeomorphism f satisfying Axiom A* (BowenPeriodicPoints1971, 2.6–2.10, lines 105–168, and Remark 4.4, lines 421–426):

- X is a finite disjoint union of closed sets X_1, …, X_m, permuted by f, with f^r : X_i → X_i C-dense (unstable sets of periodic points dense) whenever f^r maps X_i to itself; f is transitive iff the permutation is a single cycle;
- for C-dense f and every ε > 0 there is M(ε) such that every M(ε)-delayed specification is ε-shadowed by a periodic point (strong specification with periodic shadowing points);
- if f is transitive, it has weak specification at every scale, and h_top(f) > 0 unless X is finite.

The third item glues orbit segments by applying the second item to f^m on the piece X_1 and choosing each gluing time, at most M(ε) + m, in the residue class mod m that moves the end of one segment into the piece containing the start of the next.

**Checks.**

- The swap of two points satisfies Axiom A* with m = 2 pieces, each fixed by f², and has weak but not strong specification, as in §1.8.
- The full shift is C-dense with m = 1, and its strong specification is the second item.
- The disjoint union of two full shifts satisfies Axiom A* with two pieces fixed by f; the permutation is not a cycle, f is not transitive, and weak specification fails.

*Needs:* Layers 1.7, 1.8, 6.1, 6.2.

### 6.4 Hölder potentials have the Bowen property

Prove that for a homeomorphism f of a compact metric space with hyperbolic local product structure and a Hölder φ (`HolderWith` C θ φ with θ > 0), φ has the Bowen property (ClimenhagaThompson2016, lines 341–342, for the statement; Bowen1975, Chapter 1). Choose ε with the bracket of ε-close points defined and within δ of both. If d(f^k x, f^k y) < ε for 0 ≤ k < n, then z = [x, y] satisfies f^k z = [f^k x, f^k y] for k < n, so d(f^k x, f^k z) ≤ cλ^k δ and d(f^k z, f^k y) ≤ cλ^{n−1−k} δ, and |S_nφ(x) − S_nφ(y)| ≤ 2C(cδ)^θ/(1 − λ^θ).

**Checks.**

- On the full two-shift with θ = 1, the potential x ↦ x_0 is Lipschitz and Bowen with K = 0 at ε = 1/2, as computed in §1.9.
- A constant potential is Hölder with C = 0 and Bowen with K = 0.
- The non-Bowen potential of §1.9 is continuous but not Hölder: its variation on cylinders of length m is 1/m, not exponentially small.

*Needs:* Mathlib `HolderWith`; Layers 1.9, 6.1.

### 6.5 Flows with hyperbolic local product structure

Define, for a continuous flow g without fixed points on a compact metric space and δ > 0, the local strong stable set W^s_δ(x) of points y with d(g^t x, g^t y) ≤ δ for all t ≥ 0 and d(g^t x, g^t y) → 0, and the local strong unstable set W^u_δ(x) symmetrically in backward time (BowenRuelle1975, lines 96–103). Say g has hyperbolic local product structure when (F2) for every small δ > 0 there is e(δ) > 0 such that whenever d(x, z) < e(δ) there is a unique v ∈ [−δ, δ] with W^s_δ(g^v x) ∩ W^u_δ(z) nonempty, and (F3) there are δ* > 0, κ > 0 and c ≥ 1 with d(g^t x, g^t y) ≤ ce^{−κt} d(x, y) for y ∈ W^s_{δ*}(x) and d(g^{−t} x, g^{−t} y) ≤ ce^{−κt} d(x, y) for y ∈ W^u_{δ*}(x), for all t ≥ 0 (BowenRuelle1975, lines 96–108 and 303–307, where these structures are used for basic sets; FH2019, Part II).

Its API:

- For small δ the intersection W^s_δ(g^v x) ∩ W^u_δ(z) is a single point [x, z]; the bracket and the time shift v(x, z) are continuous, [x, x] = x and v(x, x) = 0, and g^t[x, z] = [g^t x, g^t z] when both are defined.
- The reversed flow `Flow.reverse` has hyperbolic local product structure with W^s and W^u exchanged; the rescaled flow g(at), a > 0, has it with κ replaced by aκ.
- Let W^{cs}_δ(x) be the union of g^v W^s_δ(x) over |v| ≤ δ (the local weak stable set). Every z with d(x, z) < e(δ) lies in W^u_δ(w) for a point w = [x, z] of W^{cs}_δ(x).

**Checks.**

- The constant-roof suspension (roof 1) of the full two-shift: W^s_δ([s, x]) consists of the points [s, y] with y ∈ W^s(x) of the shift, the bracket combines coordinates as in §6.1 at matched heights, and v is the height difference.
- The flow on a periodic orbit: W^s_δ(x) = W^u_δ(x) = {x}, and every z near x is g^v x for a unique small v, so (F2) and (F3) hold.
- The linear flow of irrational slope on ℝ²/ℤ² fails (F3): transverse distances are preserved for all time, so the strong stable sets reduce to points while (F2) fails.

*Needs:* Mathlib `Flow`, `Flow.reverse`; Layer 1.1.

### 6.6 Expansivity, closing and weak specification for flows

Prove, for a continuous flow g on a compact metric space with hyperbolic local product structure:

- g is Bowen–Walters expansive (BowenWalters1972; BowenEntropyExpansive1972, Example 1.6*, lines 134–135, for basic sets of Axiom A flows);
- closing: for every ε > 0 there are φ(ε) > 0 and R(ε) such that if T ≥ R(ε) and d(g^T y, y) < φ(ε), there are a periodic point z of period T' with |T' − T| ≤ ε and d(g^t z, g^t y) ≤ ε for 0 ≤ t ≤ T (FH2019, Part II; KatokHasselblatt1995, Section 18.1);
- if g is topologically transitive, its periodic orbits are dense;
- if g is topologically transitive, it has weak specification at every scale.

Expansivity follows from (F3) as in §6.2, the time shift absorbing the reparametrisation. Closing iterates the bracket along the closed pseudo-orbit and adjusts the time shift at the closing point. For weak specification, choose finitely many δ-balls covering X and, by transitivity, connecting orbit segments of length at most τ₀ between any two of them; concatenating the given segments with these connections gives a pseudo-orbit with finitely many jumps, which the bracket iteration shadows up to a time shift at each junction; the shifts are absorbed into the gluing times, which stay below τ₀ + 1.

**Checks.**

- The constant-roof suspension (roof 1) of the full two-shift is transitive and not mixing, and has weak specification with gluing times in [0, τ₀ + 1]; its periods are integers, so strong specification with a fixed gluing time fails.
- The flow on a periodic orbit is transitive, its periodic orbit is dense, and weak specification holds with gluing times at most one period.
- The identity flow of a finite set has fixed points and is excluded from the definition; the disjoint union of two periodic orbits has hyperbolic local product structure but is not transitive and has no weak specification.

*Needs:* Layers 1.6, 1.7, 1.8, 6.5.

### 6.7 Hölder potentials have the Bowen property for flows

Prove that for a continuous flow g on a compact metric space with hyperbolic local product structure and a Hölder φ, φ has the Bowen property for g (BowenRuelle1975, Appendix, Lemma A.2, lines 681–701, for C¹ potentials on hyperbolic sets, whose argument uses only the bracket and the exponential estimates; ClimenhagaThompson2016, lines 341–342). For y ∈ B_t(x, ε), z = [x, y] lies on W^s(g^v x) with |v| ≤ Cε and on W^u(y); the orbit integrals of φ along x and g^v x differ by at most 2|v| max|φ|, and those along g^v x, z and z, y differ by geometric sums as in §6.4.

**Checks.**

- A constant potential is Bowen with K = 0.
- For the constant-roof suspension of the full two-shift, a potential of the zeroth symbol and the height that is Lipschitz in the height is Hölder and Bowen.
- The potential L_gψ of a C¹ function on a manifold is Bowen by §1.9 whether or not the flow is hyperbolic: the Bowen property of coboundaries does not need this section.

*Needs:* Mathlib `HolderWith`; Layers 1.9, 6.5.

### 6.8 Unique equilibrium states for transitive hyperbolic systems

Prove: (a) if f is a transitive homeomorphism of a nonempty compact metric space with hyperbolic local product structure and φ is Hölder, then φ has a unique equilibrium state, which is ergodic, has the Gibbs property at small scales and is positive on nonempty open sets; for φ = 0 this is the unique measure of maximal entropy, and h_top(f) > 0 unless X is finite (BowenPeriodicPoints1971, 8.1, lines 749–750, for the entropy of Bowen's measure, and Remark 4.4, lines 421–426); (b) if g is a transitive continuous flow on a nonempty compact metric space with hyperbolic local product structure and φ is Hölder, then φ has a unique equilibrium state for g, which is flow-ergodic, has the lower Gibbs property at small scales and is positive on nonempty open sets. Both are Layer 5 applied with §§6.2–6.4, respectively §§6.6–6.7.

**Checks.**

- For the full shift and φ of the zeroth coordinate, (a) gives the Bernoulli measure of §5.2.
- For the swap of two points (finite X), h_top = 0 and the unique measure is the equilibrium state of every potential.
- For the flow on a periodic orbit, (b) gives the normalised time measure for every Hölder potential, and the entropy is 0.

*Needs:* Layers 5.2, 5.3, 6.2, 6.3, 6.4, 6.6, 6.7.

### Examples

The full shift and the constant-roof suspension of the full shift satisfy all axioms of this layer; the swap and the periodic orbit are the finite cases; the irrational rotation and the irrational linear flow fail the contraction axiom.

### Dependencies

Layers 1–5; Mathlib `HolderWith`.

## Layer 7: Hyperbolic sets and their linear theory

Throughout, M is a finite-dimensional smooth manifold without boundary and the norm |v| of a tangent vector comes from a continuous Riemannian metric (`Bundle.ContinuousRiemannianMetric` on the tangent bundle). The splitting is not required to be continuous in the definitions: continuity is a theorem (§7.5).

### 7.1 Hyperbolic sets of diffeomorphisms and Anosov diffeomorphisms

Define a compact set Λ ⊆ M with f(Λ) = Λ to be a hyperbolic set of a C¹ diffeomorphism f (`Diffeomorph I I M M 1`) for a continuous Riemannian metric when there are C > 0, 0 < λ < 1 and, for every x ∈ Λ, complementary subspaces E^s_x and E^u_x of T_xM with Df_x(E^s_x) = E^s_{fx} and Df_x(E^u_x) = E^u_{fx}, such that |D(f^n)_x v| ≤ Cλ^n|v| for v ∈ E^s_x and |D(f^{−n})_x v| ≤ Cλ^n|v| for v ∈ E^u_x, for all n ≥ 0. Call f Anosov when M is compact and M itself is a hyperbolic set (Smale1967, Part I, Section 1.3, lines 381–473; KatokHasselblatt1995, Section 6.4).

Its API:

- A closed f-invariant subset of a hyperbolic set is hyperbolic with the restricted splitting; a finite union of hyperbolic sets is hyperbolic (the splittings agree on overlaps by §7.4).
- A fixed point p is a hyperbolic set {p} iff the linear map Df_p has no complex eigenvalue of modulus 1, with E^s_p and E^u_p the sums of the generalised eigenspaces of eigenvalues of modulus less than and greater than 1.
- Hyperbolicity is invariant under C¹ conjugacy: if h is a C¹ diffeomorphism, h(Λ) is hyperbolic for h∘f∘h⁻¹ with the pushed-forward splitting.

**Checks.**

- For the linear map diag(2, 1/2) of ℝ², the set {0} is hyperbolic with E^s the second axis, E^u the first, C = 1 and λ = 1/2; for diag(2, 1) it is not, the eigenvalue 1 giving a vector that is neither contracted nor expanded.
- The identity of a manifold of positive dimension has no nonempty hyperbolic set: |Df^n v| = |v| forces E^s = E^u = 0, which is impossible when T_xM ≠ 0.
- The rate λ = 1 must be excluded: with λ = 1 allowed, every isometry with any splitting would qualify.

*Needs:* Mathlib `Diffeomorph`, `mfderiv`, `Bundle.ContinuousRiemannianMetric`.

### 7.2 Hyperbolic sets of flows and Anosov flows

Define a compact g-invariant set Λ ⊆ M to be a hyperbolic set of a C¹ flow g when its generator X has no zero on Λ and there are C > 0, κ > 0 and, for every x ∈ Λ, subspaces E^s_x, E^u_x with T_xM = E^s_x ⊕ ℝX(x) ⊕ E^u_x, invariant under every Dg^t, such that |Dg^t v| ≤ Ce^{−κt}|v| for v ∈ E^s_x and |Dg^{−t} v| ≤ Ce^{−κt}|v| for v ∈ E^u_x, for all t ≥ 0. Call g Anosov when M is compact and M is a hyperbolic set (BowenRuelle1975, lines 10–18; FH2019, Part II).

Its API:

- A closed invariant subset of a hyperbolic set is hyperbolic; Dg^t(X(x)) = X(g^t x), and |X| is bounded above and below on Λ.
- A periodic orbit is a hyperbolic set iff the derivative of its return map, acting on T_xM/ℝX(x), has no eigenvalue of modulus 1.
- Hyperbolicity is invariant under C¹ conjugacy of flows.

**Checks.**

- The flow of a constant vector field on ℝ²/ℤ² is not Anosov: Dg^t is the identity, so E^s = E^u = 0 and T_xM would be one-dimensional.
- The constant-roof suspension of diag(2, 1/2) at the fixed point 0 (a periodic orbit of period 1 in the mapping torus of the linear map) is a hyperbolic set with E^s, E^u the two axes transported along the orbit and κ = log 2.
- A zero of the generator is excluded: the origin of the linear field (x, −y) on ℝ² is a hyperbolic equilibrium but not a hyperbolic set of the flow in this sense (BowenRuelle1975, line 11).

*Needs:* Mathlib `Flow`, `mfderiv`, `Bundle.ContinuousRiemannianMetric`.

### 7.3 Independence of the metric

Prove that if Λ is a hyperbolic set of f for one continuous Riemannian metric with constants (C, λ), then it is hyperbolic with the same splitting for any other continuous Riemannian metric, with constants (CK₁K₂, λ), where K₁ bounds the ratio of the new norm to the old and K₂ the ratio of the old to the new on the tangent spaces over the compact set Λ; and the same for flows with (CK₁K₂, κ) (KatokHasselblatt1995, Section 6.4; BowenRuelle1975, lines 412–413, for the metric independence of the derived objects). Compactness of the unit sphere bundle over Λ and continuity of the inner products (`Continuous.inner_bundle`) give K₁ and K₂.

**Checks.**

- Multiplying a metric by the constant 4 multiplies norms by 2, so K₁ = 2, K₂ = 1/2 and K₁K₂ = 1: C and λ are unchanged, as they must be since the ratios |Df^n v|/|v| do not change.
- On ℝ² at the fixed point 0 of diag(2, 1/2), the metric with Gram matrix (2 1; 1 1) has K₁ = ((3 + √5)/2)^{1/2} and K₂ = ((3 − √5)/2)^{−1/2}, so K₁K₂ = (3 + √5)/2 ≈ 2.618, and the rate λ = 1/2 persists.
- On a noncompact invariant set the conclusion fails: two metrics whose ratio is unbounded along an orbit can destroy the uniform constant.

*Needs:* Mathlib `Bundle.ContinuousRiemannianMetric`, `Continuous.inner_bundle`; Layers 7.1, 7.2.

### 7.4 Characterisation and uniqueness of the splitting

Prove, for a hyperbolic set Λ of f and x ∈ Λ, that E^s_x = {v : |D(f^n)_x v| → 0 as n → ∞} = {v : sup_{n≥0} |D(f^n)_x v| < ∞}, and E^u_x is the corresponding set for backward iterates; hence any two splittings witnessing hyperbolicity coincide. For a hyperbolic set of a flow, E^s_x = {v : |Dg^t v| → 0 as t → ∞}, E^s_x ⊕ ℝX(x) = {v : sup_{t≥0} |Dg^t v| < ∞}, and symmetrically for E^u (KatokHasselblatt1995, Section 6.4; FH2019, Part II). Writing v = v^s + v^u, the unstable component grows at least like C⁻¹λ^{−n}|v^u|, so boundedness forces v^u = 0; for flows the flow direction stays bounded above and below.

**Checks.**

- For diag(2, 1/2) at 0: (1, 0) grows like 2^n, (0, 1) decays like 2^{−n}, and (1, 1) is unbounded, so E^s is exactly the second axis.
- For the constant-roof suspension of diag(2, 1/2), the flow direction ∂_t is bounded but does not decay, so it lies in E^s ⊕ ℝX and not in E^s.
- The boundedness characterisation needs hyperbolicity: for a rotation of the plane every vector is bounded and none decays.

*Needs:* Layers 7.1, 7.2.

### 7.5 Continuity of the splitting

Prove, for a hyperbolic set Λ of f: the set of tangent vectors v with base point x ∈ Λ and v ∈ E^s_x is closed in the total space of TM, and likewise for E^u, and for E^s ⊕ ℝX and E^u ⊕ ℝX in the flow case; x ↦ dim E^s_x is locally constant on Λ; and the projections onto E^s_x along E^u_x have norms bounded uniformly on Λ (KatokHasselblatt1995, Section 6.4; BowenRuelle1975, line 13, where continuity is part of the definition). A limit of vectors v_k ∈ E^s_{x_k} satisfies |D(f^n) v| ≤ Cλ^n|v| by continuity of D(f^n), so it lies in E^s_x by §7.4; the two dimensions are upper semicontinuous by closedness and add up to dim M, hence are locally constant; uniform boundedness of the projections follows by compactness.

**Checks.**

- For a hyperbolic toral automorphism the splitting is constant in the flat trivialisation, the simplest continuous case.
- On a disjoint union of a hyperbolic fixed point of saddle type in ℝ² and a hyperbolic sink in ℝ², dim E^s takes the values 1 and 2: locally constant, not constant.
- Closedness uses the uniform constants: for the maps diag(1 + t, 1/(1 + t)) the stable line at 0 is the second axis for every t > 0, but the rate tends to 1 as t → 0 and the limit identity has stable subspace 0, so no statement uniform in t survives.

*Needs:* Mathlib `Bundle.ContinuousRiemannianMetric`; Layers 7.1, 7.2, 7.4.

### 7.6 Adapted metrics

Prove that for a hyperbolic set Λ of a C¹ diffeomorphism f of a compact manifold with rate λ and every λ' with λ < λ' < 1, there is a continuous Riemannian metric on M for which |Df_x v| ≤ λ'|v| for v ∈ E^s_x and |Df⁻¹_x v| ≤ λ'|v| for v ∈ E^u_x, for every x ∈ Λ; and for a hyperbolic set of a C¹ flow with rate κ and every 0 < κ' < κ, a continuous Riemannian metric with |Dg^t v| ≤ e^{−κ't}|v| on E^s and |Dg^{−t} v| ≤ e^{−κ't}|v| on E^u for all t ≥ 0, x ∈ Λ (BowenRuelle1975, lines 19–24, for flows with the estimate for t ≥ t₀; KatokHasselblatt1995, Section 6.4). On Λ define the new norm on E^s by the series Σ_{n≥0} λ'^{−2n}|D(f^n) v|² (for flows, the integral ∫₀^∞ e^{2κ's}|Dg^s v|² ds), similarly on E^u backward, with E^s and E^u declared orthogonal; it is continuous by §7.5 and dominated convergence, and C = 1 follows by shifting the series. Extend the resulting continuous inner product from Λ to M by Tietze extension in local trivialisations and a partition of unity, mixing with the original metric away from a neighbourhood of Λ on which the extension stays positive definite.

**Checks.**

- For diag(2, 1/2) at 0 with λ' = 3/4 the Euclidean metric is already adapted (C = 1, rate 1/2).
- For the geodesic flow of a closed surface of curvature −1, the Sasaki metric is adapted with C = 1 and κ = 1: unstable Jacobi fields grow exactly like e^t in the norm (|J|² + |J'|²)^{1/2} (§9.3).
- The rate itself cannot be kept: for the linear map of ℝ³ equal to 2 on one axis and to the Jordan block J = (1/2 1; 0 1/2) on the complementary plane, J^n has entries 2^{−n} and n2^{1−n}, so |J^n| decays slower than 2^{−n} in every norm and an adapted metric exists only for λ' > 1/2, as the strict inequality in the statement allows.

*Needs:* Mathlib `Bundle.ContinuousRiemannianMetric`; DifferentialGeometry Layer 12.1 (`nonempty_contMDiffRiemannianMetric`); Layers 7.1, 7.2, 7.5.

### 7.7 Inverses, iterates and time reversal

Prove: if Λ is a hyperbolic set of f, it is a hyperbolic set of f⁻¹ with E^s and E^u exchanged and the same constants, and of f^k (k ≥ 1) with the same splitting and rate λ^k; if Λ is a hyperbolic set of a flow g, it is one for the reversed flow `Flow.reverse` with E^s and E^u exchanged, and for the rescaled flow g(at), a > 0, with rate aκ; in particular inverses of Anosov diffeomorphisms and reversals of Anosov flows are Anosov (KatokHasselblatt1995, Section 6.4; FH2019, Part II). Each time-t map of an Anosov flow preserves the splitting E^s ⊕ ℝX ⊕ E^u with the stated rates on E^s and E^u and bounded distortion on ℝX; it is not an Anosov diffeomorphism.

**Checks.**

- For the cat map A = (2 1; 1 1), A⁻¹ = (1 −1; −1 2) has the same eigenlines with the roles of the eigenvalues (3 ± √5)/2 exchanged.
- For f^2 with f = diag(2, 1/2), the rate is 1/4 = λ².
- The time-1 map of the constant-roof suspension of an Anosov diffeomorphism fixes the flow direction (|Dg^1 X| = |X|), so it fails the definition of §7.1 although the flow is Anosov.

*Needs:* Mathlib `Flow.reverse`; Layers 7.1, 7.2.

### Examples

The linear maps diag(2, 1/2) and the cat matrix give hyperbolic fixed points and Anosov automorphisms with explicit splittings and adapted metrics; constant-roof suspensions give hyperbolic periodic orbits of flows.

### Dependencies

Mathlib's diffeomorphisms, `mfderiv` and continuous Riemannian metrics; DifferentialGeometry Layer 12.1. Independent of Layers 1–6.

## Layer 8: Invariant manifolds and local product structure

Distances on M are those of a fixed smooth Riemannian metric (DifferentialGeometry Layer 12.1); by compactness the choice changes constants only.

### 8.1 The Hadamard–Perron theorem for sequences

Prove the uniform Hadamard–Perron theorem: let ℝ^d = E^u ⊕ E^s with balls B^u(r₀), B^s(r₀), let μ > max(1, λ), and for each n let f_n(x, y) = (A_n x + g_n(x, y), B_n y + h_n(x, y)) be C¹ maps of B^u(r₀) × B^s(r₀) into ℝ^d with linear A_n, B_n, |A_n⁻¹| ≤ μ⁻¹, |B_n| ≤ λ and g_n(0) = h_n(0) = 0. There is γ₀ > 0 such that for 0 < γ < γ₀ there is δ₀ > 0 such that if the C¹ norms of g_n and h_n are below δ < δ₀ for all n, then there are λ' < μ' (tending to λ and μ as γ, δ → 0) and a unique family of graphs W^+_n of C¹ maps φ_n : B^u(r₀) → B^s(r₀) with |Dφ_n| < γ, such that f_n(W^+_n) ∩ (B^u(r₀) × B^s(r₀)) = W^+_{n+1}, f_n expands distances on W^+_n by at least μ', and a point whose backward images under f_{n−1}, f_{n−2}, … decay faster than ν^{−L} for some λ' < ν < μ' lies on W^+_n; applying this to the inverse sequence gives the stable family (ClimenhagaPesin2016, Theorem 11.1 and Remark 11.2, lines 1822–1843; KatokHasselblatt1995, Theorem 6.2.8, cited at ClimenhagaPesin2016, lines 281–283). The proof is the graph transform: it is a contraction on the space of sequences of 1-Lipschitz graphs, and its fixed point is C¹ by the invariant cone family for the derivatives.

**Checks.**

- For linear maps (g_n = h_n = 0) the unstable graphs are E^u itself: φ_n = 0, with expansion exactly μ when A_n = μ·Id.
- With λ ≥ 1 allowed (only λ < μ and μ > 1 required) the theorem produces strong unstable manifolds for dominated splittings, as needed for flows, where the complement contains the neutral flow direction.
- With μ = λ the cone argument fails: for f_n = Id on ℝ² every line through 0 is invariant, so uniqueness of the family is lost.

*Needs:* Mathlib calculus (`fderiv`, contraction mapping `ContractingWith`). Tau Ceti's Lyapunov–Perron construction of the local stable manifold of a hyperbolic equilibrium of an ordinary differential equation (`ContinuousLinearMap.lyapunovPerronSolution`, `ContinuousLinearMap.localStableGraphMap`) is the continuous-time analogue of this graph transform; it concerns an equilibrium, not a sequence of maps, and is not consumed.

### 8.2 Local stable and unstable manifolds of hyperbolic sets of diffeomorphisms

Prove that for a hyperbolic set Λ of a C^r diffeomorphism f of M (r ≥ 1) there are ε > 0, C' > 0 and λ < λ' < 1 such that for every x ∈ Λ the set W^s_ε(x) = {y : d(f^n x, f^n y) ≤ ε for all n ≥ 0} is an embedded C^r disc of dimension dim E^s_x tangent to E^s_x at x, with d(f^n x, f^n y) ≤ C'λ'^n d(x, y) for y ∈ W^s_ε(x) and n ≥ 0, depending continuously on x in the C¹ topology of embedded discs; and symmetrically for W^u_ε(x) (KatokHasselblatt1995, Section 6.4; ClimenhagaPesin2016, Theorem 11.1, for the sequence version). Apply §8.1 in exponential charts along each orbit, with the adapted metric of §7.6 so that the linear parts satisfy the hypotheses uniformly; C^r regularity follows by the same graph transform on jets.

**Checks.**

- For a hyperbolic toral automorphism, W^s_ε(x) is the ε-segment of the line through x in the direction of the contracting eigenvector.
- For the time-one map of a flow (not hyperbolic) the set {y : d(f^n x, f^n y) ≤ ε, n ≥ 0} contains a segment of the orbit of x and is not tangent to a contracting subspace: hyperbolicity is used.
- At a hyperbolic fixed point the theorem is the local stable manifold theorem of the fixed point: for diag(2, 1/2) at 0 the local stable manifold is the ε-segment of the second axis.

*Needs:* Mathlib `Diffeomorph`, `mfderiv`, `extChartAt`; Layers 7.1, 7.5, 7.6, 8.1.

### 8.3 Strong and weak local manifolds of hyperbolic sets of flows

Prove that for a hyperbolic set Λ of a C^r flow g (r ≥ 1) there is ε > 0 such that for x ∈ Λ the local strong stable set W^s_ε(x) of §6.5 (points whose forward orbits stay ε-close and converge) is an embedded C^r disc tangent to E^s_x with exponential contraction, the local weak stable set W^{cs}_ε(x), the union of g^v W^s_ε(x) over |v| ≤ ε, is an embedded C^r disc tangent to E^s_x ⊕ ℝX(x), and symmetrically for the unstable sets, all depending continuously on x (BowenRuelle1975, lines 96–108, for the definitions, and Appendix A.1, lines 643–652, for charts straightening W^{cs} and W^{cu}; FH2019, Part II). Apply §8.1 to the time-one map along orbits with the dominated splittings E^s ⊕ (ℝX ⊕ E^u) and (E^s ⊕ ℝX) ⊕ E^u (rates e^{−κ'} against a bounded neutral rate), and flow the strong discs for |v| ≤ ε.

**Checks.**

- For the constant-roof suspension of a hyperbolic toral automorphism, W^s_ε([s, x]) is the stable segment of x at height s and W^{cs}_ε adds the flow direction.
- For the geodesic flow of a surface of curvature −1, the strong stable discs are the stable horocycle arcs (§9.3).
- Requiring only d(g^t x, g^t y) ≤ ε for t ≥ 0, without convergence, would include the orbit segment of x in the strong stable set; the convergence condition is what makes it a disc tangent to E^s.

*Needs:* Mathlib `Flow`, `mfderiv`; Layers 6.5, 7.2, 7.5, 7.6, 8.1.

### 8.4 Local product structure of locally maximal hyperbolic sets of diffeomorphisms

Call a hyperbolic set Λ of f locally maximal when Λ is the intersection of f^n(U) over n ∈ ℤ for some open U ⊇ Λ. Prove that f restricted to a locally maximal hyperbolic set Λ, with the restricted distance, has hyperbolic local product structure in the sense of §6.1, with local stable and unstable sets W^s_δ(x) ∩ Λ and W^u_δ(x) ∩ Λ (BowenPeriodicPoints1971, lines 73–80, attributing (A1)–(A3) for basic sets of Axiom A diffeomorphisms to Smale and to Hirsch–Pugh; KatokHasselblatt1995, Sections 6.4 and 18.4). For x, z ∈ Λ close, the discs W^s_ε(x) and W^u_ε(z) of §8.2 meet transversally in one point by continuity of the discs and complementarity of the tangent spaces; its orbit stays near Λ, hence in U, so it lies in Λ by local maximality. (A3) is §8.2's contraction.

**Checks.**

- For an Anosov diffeomorphism Λ = M with U = M is locally maximal, and the bracket is the transverse intersection of stable and unstable discs.
- A hyperbolic periodic orbit is locally maximal; its local product structure is trivial at small scale.
- Without local maximality the bracket can leave Λ: for a horseshoe with hyperbolic fixed point p and a transverse homoclinic orbit O of p, the set {p} ∪ O is hyperbolic but not locally maximal, and the bracket of two points of O near p, one close to the local stable and one close to the local unstable manifold of p, is a horseshoe point outside {p} ∪ O.

*Needs:* Layers 6.1, 7.1, 8.2.

### 8.5 Local product structure of locally maximal hyperbolic sets of flows

Prove that a C¹ flow g restricted to a locally maximal hyperbolic set Λ (Λ the intersection of g^t(U) over t ∈ ℝ for an open U ⊇ Λ) has hyperbolic local product structure in the sense of §6.5 (BowenRuelle1975, lines 25–34 and 96–108; FH2019, Part II). The bracket of nearby x, z ∈ Λ is the transverse intersection of W^{cs}_ε(x) and W^u_ε(z), which lies in Λ by local maximality; (F3) is §8.3's contraction.

**Checks.**

- For an Anosov flow, Λ = M with U = M.
- For the constant-roof suspension of a hyperbolic toral automorphism, the bracket is the toral bracket at matched heights and v is the height difference.
- The flow on a hyperbolic periodic orbit is locally maximal and satisfies (F2) with W^s_δ(x) = W^u_δ(x) = {x} within the orbit.

*Needs:* Layers 6.5, 7.2, 8.3.

### 8.6 Nontriviality of the stable and unstable bundles

Prove: (a) if f is a C¹ Anosov diffeomorphism of a compact manifold and E^s_x = 0 or E^u_x = 0 at some x, then the connected component of x is a single point; hence on a compact manifold whose components have positive dimension both bundles are nonzero everywhere; (b) if g is a C¹ Anosov flow on a compact manifold and E^s_x = 0 or E^u_x = 0 at some x, then the component of x has dimension 1 and is a periodic orbit; hence on a compact manifold of dimension at least 2 both bundles are nonzero. For (a) with E^u = 0 near x (dimensions are locally constant by §7.5), every point of the component has W^s_ε a neighbourhood (§8.2), so finitely many such neighbourhoods U_i cover the component K; since f^n permutes components, a power f^{nk} maps K onto K while diam f^{nk}(U_i) → 0, so K is a finite union of sets of arbitrarily small diameter, hence finite and, being connected, a point. For (b) with E^u = 0, the weak stable discs W^{cs}_ε are neighbourhoods (§8.3), so g^T maps each of finitely many such neighbourhoods into the tube of radius C'εe^{−κT} around an orbit segment of length 2ε; the Riemannian volume of such a tube is at most a constant times e^{−κT(dim M − 1)}, computed in charts, while g^T(K) = K has positive volume, so dim M = 1 (`TauCeti.riemannianVolume`, `TauCeti.chartRiemannianVolume_pos`).

**Checks.**

- The hyperbolic toral automorphism of 𝕋² given by the cat matrix has dim E^s = dim E^u = 1.
- An Anosov flow on a circle (the flow on a single periodic orbit) has E^s = E^u = 0 and dim M = 1, the exception in (b).
- A hyperbolic sink {p} of a diffeomorphism of ℝ² is a hyperbolic set with E^u = 0, but it is not Anosov on a compact manifold; the conclusion is about Anosov systems only.

*Needs:* `TauCeti.riemannianVolume`, `TauCeti.chartRiemannianVolume_pos`, `TauCeti.riemannianVolume_restrict_source`; Layers 7.1, 7.2, 7.5, 8.2, 8.3.

### 8.7 Hölder continuity of the bundles

Prove that for a hyperbolic set Λ of a C² diffeomorphism or C² flow (C^{1+α} suffices), the bundles E^s and E^u are Hölder continuous on Λ: there are θ ∈ (0, 1] and C such that for x, y ∈ Λ in a common chart domain, the distance between E^u_x and E^u_y read in the chart, measured as the distance between the graphs representing them over a fixed complement, is at most C d(x, y)^θ (BowenRuelle1975, line 362, citing Pugh; KatokHasselblatt1995, Section 19.1). The proof compares the backward invariant cone images at x and y over n steps: they agree to within C d(x, y)·L^n at step n and contract at rate λ^n, and optimising n gives θ = log λ⁻¹ / (log L + log λ⁻¹) with L a Lipschitz constant of Df.

**Checks.**

- For a hyperbolic toral automorphism E^u is constant in the flat chart, Hölder for every θ.
- For the geodesic flow of a surface of curvature −1, E^u is smooth (horocyclic), the best case.
- For C¹ systems without Hölder derivative the bundles are only continuous in general; this is why the geometric potential of §11.1 is Hölder only for C² (or C^{1+α}) systems.

*Needs:* Mathlib `HolderWith`; Layers 7.1, 7.2, 7.5, 8.2, 8.3.

### Examples

For hyperbolic toral automorphisms the local manifolds are segments of eigenlines and the bracket is linear; for constant-roof suspensions the strong and weak manifolds are those of the base at matched heights.

### Dependencies

Layer 6 (the axioms verified in §§8.4–8.5) and Layer 7; DifferentialGeometry Layer 12.1; Mathlib calculus; Tau Ceti's Riemannian volume.

## Layer 9: Examples

### 9.1 Hyperbolic toral automorphisms

Construct, for an integer n × n matrix A with det A = ±1 and no complex eigenvalue of modulus 1, the map f_A of the torus 𝕋^n = (ℝ/ℤ)^n (the product of Tau Ceti's smooth circles, `AddCircle.instIsManifold`) induced by x ↦ Ax. Prove that f_A is an analytic diffeomorphism, that it is Anosov for the flat metric with E^s and E^u the (constant, in the flat trivialisation) images of the sums of the real generalised eigenspaces of A for eigenvalues of modulus less than and greater than 1, that it is topologically mixing, and that h_top(f_A) is the sum of log |λ| over the eigenvalues λ of A of modulus greater than 1, counted with algebraic multiplicity (Smale1967, Part I, Section 1.3, lines 381–473; BowenGroupEndomorphisms1971, Theorem 15, lines 313–316, and Corollary 16, lines 332–336; BowenPeriodicPoints1971, Proposition 7.1, line 667, for Haar measure as Bowen's measure). The entropy formula is Bowen's for endomorphisms of Lie groups with a right-invariant metric; mixing follows because no eigenvalue is a root of unity, so Haar measure is mixing by Fourier analysis on characters, and Haar measure has full support.

Its API:

- The lift of f_A to ℝ^n is A, and Df_A is A in the flat trivialisation of T𝕋^n; f_{AB} = f_A ∘ f_B and f_{A⁻¹} = f_A⁻¹.
- The local stable and unstable manifolds are the ε-segments of the translates of E^s and E^u, and the bracket is linear in a chart.
- Haar measure is invariant, ergodic and of maximal entropy.

**Checks.**

- For the cat matrix (2 1; 1 1) (`TauCeti.catMap`, with `TauCeti.det_catMap` = 1 and `TauCeti.charpolyRev_catMap` = 1 − 3t + t²), the eigenvalues are (3 ± √5)/2 ≈ 2.618 and 0.382, E^u is spanned by (1, (√5 − 1)/2), and h_top = log((3 + √5)/2) ≈ 0.9624.
- The shear (1 1; 0 1) has the double eigenvalue 1: f_A is not Anosov, and the entropy formula gives 0.
- The rotation (0 −1; 1 0) has eigenvalues ±i of modulus 1 and satisfies A⁴ = I: f_A has finite order, entropy 0, and no hyperbolic splitting; in dimension 1 the only candidates ±1 have modulus 1, so hyperbolic toral automorphisms need n ≥ 2.

*Needs:* Tau Ceti `AddCircle.instIsManifold`, `TauCeti.catMap`; Mathlib `Diffeomorph`; Layers 1.3, 1.7, 7.1.

### 9.2 Suspension flows and time changes

Prove: (a) for a C^r Anosov diffeomorphism φ of a compact manifold N (r ≥ 1), the suspension flow on the smooth mapping torus (`TauCeti.SmoothMappingTorus.flow` φ, whose time-one map is φ on each fibre by `TauCeti.SmoothMappingTorus.flow_one_mk`, C^r jointly by `TauCeti.SmoothMappingTorus.contMDiff_uncurry_flow`) is a C^r Anosov flow, with E^s and E^u the images of E^s_φ and E^u_φ in the fibres and the flow direction ∂_t, and it is not topologically mixing; (b) if g is a C^r Anosov flow on a compact manifold with generator X and h is a positive C^r function, the flow of hX (DifferentialGeometry Layer 3.3 `toFlow`) is a C^r Anosov flow, with stable bundle the graph {v + a_x(v)X(x) : v ∈ E^s_x} of a continuous linear functional a_x on E^s_x given by an integral that converges by exponential contraction, and symmetrically for E^u; (c) consequently the suspension of φ under any positive C^r roof function is Anosov, since it is C^r conjugate to the flow of h∂_t on the mapping torus for a positive C^r function h whose integrals of 1/h over the fibre circuits realise the roof up to a cohomologous roof, which gives a conjugate flow (FH2019, Part II; KatokHasselblatt1995, Chapter 17; BowenRuelle1975, lines 119–133 and 60–61, for special flows and the passage between diffeomorphisms and flows).

**Checks.**

- The constant-roof suspension of the cat map has h_top equal to log((3 + √5)/2), by §1.4 since its time-one map acts on each fibre as the cat map.
- Speeding up the constant-roof suspension by the constant factor 2 (h = 2) halves the return time and doubles the entropy, to 2 log((3 + √5)/2), as §1.4's rescaling law predicts.
- The periods of periodic orbits of a constant-roof suspension (roof 1) are integers, so the flow is not mixing, while a roof r with r(p)/r(q) irrational at two fixed points p, q of φ gives a flow whose periods generate a dense subgroup of ℝ.

*Needs:* Tau Ceti `TauCeti.SmoothMappingTorus`, `TauCeti.SmoothMappingTorus.flow`, `TauCeti.SmoothMappingTorus.flow_one_mk`, `TauCeti.SmoothMappingTorus.contMDiff_uncurry_flow`; DifferentialGeometry Layer 3.3; Layers 1.4, 1.7, 7.1, 7.2, 7.4, 7.5.

### 9.3 Geodesic flows in negative curvature

Prove that if (M, g) is a compact smooth Riemannian manifold without boundary of dimension at least 2 whose sectional curvatures are all negative, then the geodesic flow restricted to the unit tangent sphere bundle SM is a C^∞ Anosov flow; if K ≤ −a² < 0 (such a exists by compactness), the rate can be taken to be κ = a for the norm (|J(0)|² + |D_tJ(0)|²)^{1/2}, and E^s_v and E^u_v correspond, under the horizontal–vertical identification of T_v(TM) with T_xM ⊕ T_xM, to the initial data of the stable and unstable Jacobi fields perpendicular to the geodesic of v (FH2019, Part II; KatokHasselblatt1995, Chapter 17). The geodesic flow on TM is smooth on its open domain (`TauCeti.Manifold.contMDiffOn_maximalIntegralCurve_geodesicSpray`), complete because M is compact (`TauCeti.Manifold.isGeodesicallyCompleteAt_of_compactSpace`), and preserves SM because geodesics have constant speed (`TauCeti.Manifold.IsGeodesicCurveOn.norm_curveVelocityWithin_eq`); SM is a closed smooth submanifold of TM (TangentialBordism §2.3). The derivative of the flow sends (J(0), D_tJ(0)) to (J(t), D_tJ(t)) for the Jacobi field J (the connection-map contract under Required extensions, built from RiemannianGeometry R2). There are no conjugate points (RiemannianGeometry R4.4); the stable Jacobi field with J(0) = w is the limit as T → ∞ of the Jacobi fields with J(0) = w and J(T) = 0, which exist and converge by the Riccati comparison of RiemannianGeometry R4.1, and the comparison with the model sinh(at)/a gives |J(t)| ≤ e^{−at}|J(0)| for stable and the reverse growth for unstable fields.

Its API:

- The flow direction corresponds to the tangential Jacobi field (γ', 0); E^s ⊕ E^u corresponds to perpendicular Jacobi fields.
- For constant curvature −1 the stable and unstable Jacobi fields are e^{∓t} times parallel fields, and E^s, E^u are smooth.
- Reversing time is the flip v ↦ −v, which conjugates the flow to its reversal and exchanges E^s and E^u (§7.7).

**Checks.**

- For a closed surface of curvature −1, unstable Jacobi fields are e^t times the parallel unit normal, so |Dg^t ξ| = e^t|ξ| on E^u for the Sasaki norm: C = 1 and κ = 1 (the adapted-metric Check of §7.6).
- For a flat torus, perpendicular Jacobi fields are affine, J(t) = p + tq, so no vector is exponentially contracted and the geodesic flow is not Anosov: negative curvature is needed.
- For the round sphere, perpendicular Jacobi fields with J(0) = 0 are sin t times parallel fields and all geodesics are closed: the flow is periodic, with zero entropy.

*Needs:* Tau Ceti `TauCeti.Manifold.contMDiffOn_maximalIntegralCurve_geodesicSpray`, `TauCeti.Manifold.isGeodesicallyCompleteAt_of_compactSpace`, `TauCeti.Manifold.IsGeodesicCurveOn.norm_curveVelocityWithin_eq`; RiemannianGeometry R1, R2, R4.1, R4.4; TangentialBordism §2.3 with the sphere-bundle embedding of Required extensions; the connection-map contract of Required extensions (RiemannianGeometry, Part II); Layers 7.2, 7.3, 7.7.

### Examples

The cat map, its constant-roof suspension and the geodesic flow of a hyperbolic surface are the running examples of Layers 10–11.

### Dependencies

Layers 1, 7; Tau Ceti's circle, mapping torus and geodesic flow; DifferentialGeometry Layer 3.3; RiemannianGeometry R1, R2, R4; TangentialBordism §2.3.

## Layer 10: Basic sets and the Bowen–Ruelle theorem

### 10.1 Basic sets and attractors

Define a basic set of a C¹ diffeomorphism f as a nonempty locally maximal hyperbolic set Λ on which f is topologically transitive, and a basic set of a C¹ flow as a nonempty locally maximal hyperbolic set on which the flow is topologically transitive; call a basic set Λ of a flow an attractor when it has an open neighbourhood U with g^t(U) ⊆ U for all t ≥ T₀ and Λ the intersection of g^t(U) over t ≥ 0, and define its basin W^s_Λ as the set of points y with d(g^t y, Λ) → 0 (BowenRuelle1975, lines 25–34, where density of periodic orbits is a further axiom).

Its API:

- Periodic points (orbits) are dense in a basic set (§6.2, §6.6 and §§8.4–8.5), so Bowen–Ruelle's density axiom is a theorem.
- A transitive Anosov diffeomorphism or flow of a nonempty compact manifold M is a basic set Λ = M, and for flows an attractor with U = M and basin M.
- Basic sets of f are basic sets of f⁻¹, and basic sets of a flow are basic sets of its reversal; the basin of an attractor is open.

**Checks.**

- A hyperbolic periodic orbit of a flow is a basic set, and it is an attractor iff its unstable bundle is zero.
- The union of two distinct hyperbolic fixed points of a diffeomorphism is locally maximal and hyperbolic but not transitive, hence not a basic set.
- For the constant-roof suspension of the cat map, Λ = M is a basic set and an attractor with basin M.
- The empty set is compact, invariant, locally maximal with U = ∅, hyperbolic and transitive, all vacuously, and carries no invariant probability measure; nonemptiness excludes it, so that §§10.2–10.4 have a measure to speak of.

*Needs:* Layers 6.2, 6.6, 7.1, 7.2, 8.4, 8.5.

### 10.2 Bowen's theorem for diffeomorphisms

Prove that if Λ is a basic set of a C¹ diffeomorphism f of a compact manifold and φ : Λ → ℝ is Hölder continuous, then φ has a unique equilibrium state μ_φ for f restricted to Λ; μ_φ is ergodic, has the Gibbs property at small scales, gives positive mass to every nonempty relatively open subset of Λ, and μ_φ = μ_{φ'} whenever φ' = φ + c + ψ∘f − ψ for a real c and a continuous ψ on Λ (Bowen1975, Chapter 4, Theorem 4.1; ClimenhagaThompson2016, Theorem 5.5, for the criterion used). In particular a transitive C¹ Anosov diffeomorphism of a nonempty compact manifold and a Hölder potential on M have a unique equilibrium state; the C² case is a specialisation. By §8.4 and §10.1, f restricted to Λ, a nonempty compact metric space, satisfies Axiom A*; §6.8(a) applies, and §4.4 gives the invariance.

**Checks.**

- For the cat map and φ = 0 the unique equilibrium state is Haar measure, of entropy log((3 + √5)/2) (§9.1).
- For the cat map and the geometric potential φ^u = −log((3 + √5)/2), a constant, the equilibrium state is again Haar measure, with pressure 0.
- For a hyperbolic fixed point (a one-point basic set) the unique equilibrium state is the point mass, of entropy 0, for every φ.

*Needs:* Layers 4.4, 6.8, 8.4, 9.1, 10.1.

### 10.3 The Bowen–Ruelle theorem for flows

Prove that if Λ is a basic set of a C¹ flow g on a compact manifold and F : Λ → ℝ is Hölder continuous, then F has a unique equilibrium state ν_{g,F} for g restricted to Λ; ν_{g,F} is ergodic for the flow, positive on nonempty relatively open subsets of Λ, satisfies the lower Gibbs bound ν_{g,F}(B_x(ε, T)) ≥ C_ε exp(−T P(g|Λ, F) + ∫₀ᵀ F(g^t x) dt) for x ∈ Λ, T > 0, and ν_{g,F} = ν_{g,F'} whenever F' = F + c + L_gψ for a real c and a continuous ψ differentiable along the flow with continuous derivative (in particular for ψ of class C¹ on M); moreover ν_{g,F} is the equilibrium state of F_t for g^t among g-invariant measures for every t > 0, and ν_{g_a, aF} = ν_{g,F} for the rescaled flow g_a(t) = g(at), a > 0 (BowenRuelle1975, Theorem 3.3, lines 272–277, and Proposition 3.1, lines 213–222; TsujiiZhang2023, lines 106–109 and Definition 3.5, lines 485–495, for the statement in the consumers' form). In particular a transitive C¹ Anosov flow on a nonempty compact manifold and a Hölder F have exactly one equilibrium state, and C² flows are a specialisation. By §8.5 and §10.1, g restricted to Λ, a nonempty compact metric space, has hyperbolic local product structure and is transitive; §6.8(b) applies. The flow g|Λ is Bowen–Walters expansive by §6.6, so h_top(g|Λ) < ∞ by §1.6, and §4.9 gives the invariance and time-change statements.

**Checks.**

- For the constant-roof suspension of the cat map and F = 0, ν_{g,0} is the product of Haar measure with Lebesgue measure on the fibre, of entropy log((3 + √5)/2) for g^1.
- For a hyperbolic periodic orbit of period p, ν_{g,F} is the normalised time measure for every F, with P = (1/p)∫₀^p F along the orbit.
- For F' = F + 5 + L_gψ the equilibrium state is unchanged while the pressure increases by exactly 5.

*Needs:* Layers 1.6 (finite entropy of expansive flows), 4.9, 6.6, 6.8, 8.5, 9.2, 10.1.

### 10.4 Bowen–Margulis and Bowen measures

Prove that a basic set Λ of a C¹ flow (in particular a transitive Anosov flow) has a unique measure of maximal entropy, the Bowen–Margulis measure ν_{g,0}, which is ergodic and positive on nonempty relatively open subsets of Λ, and that h_top(g|Λ) > 0 unless Λ is a single periodic orbit; that a basic set of a C¹ diffeomorphism has a unique measure of maximal entropy, Bowen's measure, with h_top > 0 unless Λ is finite; and that for a hyperbolic toral automorphism Bowen's measure is Haar measure (BowenRuelle1975, Remark 3.4, lines 324–325, and lines 77–78; BowenPeriodicPoints1971, Remark 4.4, lines 421–426, and Proposition 7.1, line 667). Uniqueness is §10.2 and §10.3 with zero potential. Positivity of entropy uses weak specification and expansivity: gluing two disjoint orbit segments in all binary patterns produces exponentially many separated orbit segments, unless Λ is a single orbit.

**Checks.**

- For the cat map, Bowen's measure is Haar measure and the entropy is log((3 + √5)/2) > 0.
- For a hyperbolic periodic orbit of a flow, the entropy is 0 and the Bowen–Margulis measure is the time measure: the exception is necessary.
- For the geodesic flow of a closed surface of curvature −1, the Bowen–Margulis measure is the Liouville measure (§11.5), of entropy 1.

*Needs:* Layers 6.3, 9.1, 10.2, 10.3.

### Examples

Haar measure for the cat map, the product measure for its constant-roof suspension, and the Liouville measure for hyperbolic surfaces are explicit Bowen–Margulis measures.

### Dependencies

Layers 4–9.

## Layer 11: SRB measures of C² flows

### 11.1 The geometric potential

Define, for a hyperbolic set Λ of a C² flow g and x ∈ Λ, the unstable Jacobian λ_t(x) as the absolute value of the determinant of Dg^t : E^u_x → E^u_{g^t x} computed in orthonormal bases of the Riemannian inner products, and the geometric potential φ^u(x) = −d/dt log λ_t(x) at t = 0 (BowenRuelle1975, Section 4, lines 346–358).

Its API:

- λ_{t+s}(x) = λ_t(g^s x) λ_s(x), and ∫₀ᵀ φ^u(g^t x) dt = −log λ_T(x) (BowenRuelle1975, lines 351–357).
- φ^u is continuous, and Hölder continuous since E^u is (BowenRuelle1975, Lemma 4.1, lines 360–363; §8.7).
- Changing the Riemannian metric changes φ^u by a coboundary L_gψ with ψ the logarithm of the ratio of the two volume forms on E^u, so the equilibrium state of φ^u does not depend on the metric (BowenRuelle1975, Remark 4.5, lines 409–413); rescaling time by a replaces φ^u by aφ^u.

**Checks.**

- For the geodesic flow of a closed surface of curvature −1, λ_t = e^t and φ^u = −1.
- For the constant-roof suspension of the cat map, λ_t = ((3 + √5)/2)^t on E^u and φ^u = −log((3 + √5)/2) ≈ −0.9624, so P(φ^u) = h_top + φ^u = 0, consistent with §11.4.
- The sign is fixed by ∫₀ᵀ φ^u = −log λ_T: the opposite convention would make P(φ^u) = 2 h_top in the previous example instead of 0.

*Needs:* Mathlib `mfderiv`, `Bundle.ContinuousRiemannianMetric`; Layers 7.2, 7.5, 8.7.

### 11.2 Bounded distortion of unstable Jacobians

Prove that for a hyperbolic set Λ of a C² flow and θ > 0 there is ε > 0 such that for x ∈ Λ, y with d(g^t x, g^t y) ≤ ε for 0 ≤ t ≤ T, and a plane E* at y tangent to a disc close to the unstable disc through y in the adapted chart at x, e^{−θ} ≤ Jac(Dg^T|E*) / λ_T(x) ≤ e^θ (BowenRuelle1975, Appendix, Lemmas A.2–A.4, lines 681–739). The route follows Bowen–Ruelle: the function E ↦ −d/dt log Jac(Dg^t|E) at t = 0 is Hölder on planes in a cone neighbourhood of the unstable bundle; the derivative cocycle contracts this cone neighbourhood (Bowen–Ruelle realise it as a hyperbolic set of the induced flow on the Grassmann bundle, Lemma A.3), so the Bowen-property estimate of §6.7 for this function along the pair of orbits bounds the logarithm of the ratio.

**Checks.**

- For a linear Anosov flow (the constant-roof suspension of a toral automorphism) Jacobians of all planes in the unstable cone grow at the same constant rate along each orbit, and the ratio is bounded by the cone opening alone.
- For E* = E^u_y with y ∈ Λ the ratio compares λ_T(y) with λ_T(x), which is the Bowen property of φ^u (§6.7).
- Without the C² hypothesis φ^u need not be Hölder and the ratios can grow without bound along long orbit segments.

*Needs:* Layers 6.7, 7.6, 8.3, 8.7, 11.1.

### 11.3 The volume lemmas

Prove, for a hyperbolic set Λ of a C² flow on a compact manifold with Riemannian volume m (`TauCeti.riemannianVolume`) and closed flow Bowen balls B_x(ε, T) in M: (a) for small ε there is c_ε ≥ 1 with c_ε⁻¹ ≤ m(B_x(ε, T)) λ_T(x) ≤ c_ε for all x ∈ Λ and T > 0; (b) for small ε, δ there is d > 0 with m(B_y(δ, T)) ≥ d·m(B_x(ε, T)) whenever x ∈ Λ, y ∈ B_x(ε, T) and T > 0 (BowenRuelle1975, Lemmas 4.2–4.3, lines 364–375, proved in the Appendix A.5–A.6, lines 740–808). In charts adapted to the weak stable and unstable discs (BowenRuelle1975, A.1, via §8.3), the set of points whose orbit stays ε-close to that of x for time T is fibred by graphs over the unstable direction whose images at time T are discs of bounded size; Fubini's theorem in the chart, the Euclidean change of variables (`MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`) and §11.2 bound each fibre's measure by λ_T(x)⁻¹ up to constants, and the chart volume is comparable to m by the continuous positive chart density (`TauCeti.riemannianVolume_restrict_source`, `TauCeti.chartRiemannianVolume`).

**Checks.**

- For the constant-roof suspension of the cat map with the flat metric, B_x(ε, T) is a box of unstable length about ε((3 + √5)/2)^{−T}, stable length about ε and flow length about ε, so its volume times λ_T = ((3 + √5)/2)^T is about ε³.
- For the geodesic flow of a hyperbolic surface the volume of B_x(ε, T) decays like e^{−T}, matching λ_T = e^T.
- For T = 0 the ball is the ε-ball of M and λ_0 = 1, so (a) says the volume of small balls is bounded above and below, true by compactness.

*Needs:* Mathlib `MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`, Fubini for product measures; Tau Ceti `TauCeti.riemannianVolume`, `TauCeti.riemannianVolume_restrict_source`, `TauCeti.chartRiemannianVolume`; Layers 8.3, 11.1, 11.2.

### 11.4 The pressure of the geometric potential

Prove, for a basic set Λ of a C² flow on a compact manifold: (a) P(g|Λ, φ^u) is the limsup as T → ∞ of (1/T) log m(B_Λ(ε, T)) for small ε, where B_Λ(ε, T) is the union of the B_x(ε, T) over x ∈ Λ, and hence P(g|Λ, φ^u) ≤ 0; (b) if the local stable set W^s_Λ(ε) has positive volume, in particular if Λ is an attractor, in particular if g is a transitive Anosov flow with Λ = M, then P(g|Λ, φ^u) = 0 and the equilibrium state μ⁺ = ν_{g,φ^u} satisfies hμ⁺(g^1) = −∫φ^u dμ⁺ (BowenRuelle1975, Proposition 4.4, lines 377–407). For (a), a maximal (δ, T)-separated set E of Λ gives disjoint balls B_x(δ/2, T) inside B_Λ(ε, T) ⊆ ∪_{x∈E} B_x(δ + ε, T), and §11.3(a) turns the volumes into the partition sum of φ^u; for (b), B_Λ(ε, T) contains the set of points whose forward orbits stay ε-close to Λ, which has volume bounded below.

**Checks.**

- For the constant-roof suspension of the cat map, P(φ^u) = log((3 + √5)/2) − log((3 + √5)/2) = 0 and μ⁺ is the product measure.
- For the geodesic flow of a hyperbolic surface, P(φ^u) = h_top − 1 = 0, so h_top = 1.
- For a hyperbolic periodic orbit with nonzero unstable bundle (not an attractor), P(φ^u) = −(1/p) log λ_p < 0, consistent with (a) and with the strict inequality for non-attractors.

*Needs:* Layers 2.4, 10.1, 10.3, 11.1, 11.3.

### 11.5 The SRB theorem

Prove that if Λ is an attractor of a C² flow on a compact manifold with basin W^s_Λ, then for m-almost every x ∈ W^s_Λ and every continuous u : M → ℝ, (1/T)∫₀ᵀ u(g^t x) dt → ∫u dμ⁺ as T → ∞, where μ⁺ = ν_{g,φ^u} is the equilibrium state of the geometric potential (BowenRuelle1975, Theorem 5.1, lines 421–469). In particular, for a transitive C² Anosov flow on a nonempty compact manifold, m-almost every point of M is generic for μ⁺; μ⁺ is the unique g-invariant probability measure whose generic points have positive volume, hence the unique one whose generic points have full volume; and every g-invariant probability measure absolutely continuous with respect to m equals μ⁺ (BowenRuelle1975, Remark 5.2, lines 470–472). The proof is Bowen–Ruelle's: for δ > 0 the set of points of a neighbourhood U of Λ whose time averages deviate by more than δ is covered, beyond any time N, by disjoint Bowen balls of points of Λ with deviating averages; the volume lemma (§11.3(a)), P(φ^u) = 0 (§11.4) and the lower Gibbs bound (§10.3) compare the total volume with the μ⁺-measure of the deviation sets beyond N, which tends to 0 by flow-ergodicity of μ⁺ and the pointwise ergodic theorem (ProbabilisticAndMetricNumberTheory §4.1 applied to g^1 and u_1); invariance of the deviation set and g^t(U) shrinking to Λ extend the conclusion to the basin, and a countable dense set of u finishes.

**Checks.**

- For the geodesic flow of a closed surface of curvature −1, φ^u = −1 is constant, so μ⁺ is the measure of maximal entropy (equilibrium states are unchanged by adding constants, §4.8), that is the Bowen–Margulis measure of §10.4; since the Liouville measure is invariant and absolutely continuous (KatokHasselblatt1995, Chapter 17), μ⁺ is also the Liouville measure: Bowen–Margulis, SRB and Liouville measures coincide.
- For the constant-roof suspension of the cat map, μ⁺ is the product of Haar and fibre Lebesgue measure, which is the normalised Riemannian volume itself, and Lebesgue-almost every orbit equidistributes.
- Two distinct measures cannot both have generic points of positive volume on a transitive Anosov flow, since a common generic point would force equality; the uniqueness clause is that observation.

*Needs:* ProbabilisticAndMetricNumberTheory §4.1 (`birkhoff_pointwise`); Tau Ceti `TauCeti.riemannianVolume`; Layers 3.1, 10.1, 10.3, 11.3, 11.4.

### Examples

The constant-roof suspension of the cat map (μ⁺ = volume) and the geodesic flow of a hyperbolic surface (μ⁺ = Liouville = Bowen–Margulis) realise every statement of this layer with constant geometric potential.

### Dependencies

Layers 2–10; ProbabilisticAndMetricNumberTheory §4.1; Tau Ceti's Riemannian volume; Mathlib's Euclidean change of variables.

## Downstream consumers

- Exponential mixing of three-dimensional Anosov flows (TsujiiZhang2023, Theorem 1.1, lines 123–127) uses transitive C^∞ Anosov flows, topological mixing (§1.7), Hölder potentials and the unique equilibrium measure ν_{g,F} of §10.3, with the pressure in the variational form of §4.8 (TsujiiZhang2023, Definition 3.5, lines 485–495).
- The Buzzi–Crovisier–Sarig theorems on C^∞ surface diffeomorphisms (BCS2022, Main Theorem, lines 61–64, and Corollaries 1.4–1.6, lines 195–213) state their conclusions with the variational principle (§4.3), measures of maximal entropy and equilibrium measures (§4.4), their ergodic components (§4.5), Newhouse's theorem (§4.7) and the geometric potential; a roadmap on nonuniform hyperbolicity would import these.
- ArithmeticDynamicsPartII and any roadmap comparing the maximal-entropy measure of a rational map with the general notion can cite §4.4 for the definition of a measure of maximal entropy.
- GeometricTopology and TaubesGromov, which use Anosov torus bundles and the cat matrix as examples, can import §7.1's Anosov diffeomorphisms and §9.1's hyperbolic toral automorphisms.

## References

- **BowenRuelle1975** — R. Bowen, D. Ruelle, *The ergodic theory of Axiom A flows*, Invent. Math. 29 (1975), 181–202 (author page). Hyperbolic sets of flows and adapted metrics (lines 10–24), basic sets and attractors (25–34), local manifolds (96–108), pressure of maps and flows (160–201), Proposition 3.1 and Theorem 3.3 (213–277), the geometric potential and volume lemmas (346–419), Theorem 5.1 and Remark 5.2 (421–472), Appendix (628–808).
- **ClimenhagaThompson2016** — V. Climenhaga, D. J. Thompson, *Unique equilibrium states for flows and homeomorphisms with non-uniform structure*, Adv. Math. 303 (2016), arXiv:1505.03803v2. Theorem A, Theorem 5.5, weak specification, Bowen property, Theorem 3.2 and Propositions 3.3–3.4, Lemma 4.16, Propositions 4.19, 6.16, 6.17.
- **Misiurewicz1976** — M. Misiurewicz, *A short proof of the variational principle for a ℤ^N_+ action on a compact space*, Astérisque 40 (1976), 147–157 (Numdam).
- **BowenPeriodicPoints1971** — R. Bowen, *Periodic points and measures for Axiom A diffeomorphisms*, Trans. Amer. Math. Soc. 154 (1971), 377–397. Axiom A* (lines 66–83), Lemmas 2.3–2.5, Theorems 2.7 and 2.10, Remark 4.4, Lemma 6.4, Proposition 7.1, 8.1.
- **BowenEntropyExpansive1972** — R. Bowen, *Entropy-expansive maps*, Trans. Amer. Math. Soc. 164 (1972), 323–331. Example 1.6, Theorem 2.4, Theorem 3.5.
- **BowenGroupEndomorphisms1971** — R. Bowen, *Entropy for group endomorphisms and homogeneous spaces*, Trans. Amer. Math. Soc. 153 (1971), 401–414. Proposition 4, Theorem 15, Corollary 16, Proposition 21.
- **Smale1967** — S. Smale, *Differentiable dynamical systems*, Bull. Amer. Math. Soc. 73 (1967), 747–817. Part I, Section 1.3.
- **ClimenhagaPesin2016** — V. Climenhaga, Ya. Pesin, *Hadamard–Perron theorems and effective hyperbolicity*, Ergodic Theory Dynam. Systems (2016), arXiv:1303.2375v1. Theorem 11.1, Remark 11.2.
- **Buzzi2014** — J. Buzzi, *C^r surface diffeomorphisms with no maximal entropy measure*, Ergodic Theory Dynam. Systems (2014), arXiv:1205.4096v1. Corollary 1.
- **TsujiiZhang2023** — M. Tsujii, Z. Zhang, *Smooth mixing Anosov flows in dimension three are exponentially mixing*, Ann. of Math. 197 (2023), arXiv:2006.04293v1. Theorem 1.1, Definition 3.5.
- **BCS2022** — J. Buzzi, S. Crovisier, O. Sarig, *Measures of maximal entropy for surface diffeomorphisms*, Ann. of Math. 195 (2022), arXiv:1811.02240v2. Definition 1.1, Main Theorem, Corollaries 1.4–1.6.
- **Walters1982** — P. Walters, *An Introduction to Ergodic Theory*, GTM 79 (cited by locator). Theorem 4.12 and Chapters 7–9 (Theorems 8.1, 8.2, 8.3, 8.6, 9.7, 9.8, 9.10, 9.13).
- **Bowen1975** — R. Bowen, *Equilibrium States and the Ergodic Theory of Anosov Diffeomorphisms*, LNM 470, 2nd ed. 2008 (cited by locator). Chapters 1, 3, 4.
- **KatokHasselblatt1995** — A. Katok, B. Hasselblatt, *Introduction to the Modern Theory of Dynamical Systems* (cited by locator). Sections 6.2, 6.4, 18.1, 18.4, 19.1 and Chapter 17.
- **FH2019** — T. Fisher, B. Hasselblatt, *Hyperbolic Flows*, EMS Zurich Lectures (cited by locator). Part II.
- **BowenWalters1972** — R. Bowen, P. Walters, *Expansive one-parameter flows*, J. Differential Equations 12 (1972), 180–193 (cited by locator).
- **Newhouse1989** — S. E. Newhouse, *Continuity properties of entropy*, Ann. of Math. 129 (1989), 215–235 (cited by locator). Theorem 1.
