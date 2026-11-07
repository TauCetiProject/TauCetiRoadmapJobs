# Roadmap: Sobolev maps between manifolds

**Summary.** Build the first-order local Sobolev classes of maps between manifolds at the
generality of geometric function theory: continuous maps `f : M → N` whose local
representatives in charts lie in `W^{1,p}_loc`, `1 ≤ p ≤ ∞`, their weak differential `Df`, and,
when `M` and `N` carry Riemannian metrics and orientations and have one dimension `n`, the
operator norm `‖Df‖` and the Jacobian `J_f` defined by `(Df)^* vol_N = J_f vol_M`. This is the
class on which HeikkilaPankka2025 (lines 20–27) defines quasiregular maps. The construction
starts from vector-valued local classes `W^{1,p}_loc(Ω; F)` on open subsets of finite-dimensional
real normed spaces, built on Tau Ceti's weak Fréchet derivatives (`TauCeti.HasWeakFDerivOn`) and
its first-order space `TauCeti.W1p`. It proves their gluing and chain rules with no bound on the
derivatives of the `C¹` factors, identifies chartwise null sets with Riemannian null sets, and
ends with the extrinsic description through an immersion into a vector space and the class of
measurable maps into a closed manifold that Hajlasz2009 (line 28) defines through an embedding.
The headline theorems, with the labels by which consuming roadmaps cite them:

- **T1** (§1.3, §2.2–§2.4). On open subsets of finite-dimensional spaces, `W^{1,p}_loc` is a sheaf.
  It is preserved by precomposition with `C¹` local diffeomorphisms, by postcomposition of
  continuous members with `C¹` maps defined on an open set containing their values, and by
  postcomposition of arbitrary members with `C¹` maps of bounded derivative. Each comes with its
  almost-everywhere chain rule.
- **T2** (§3.1, §4.2–§4.4). For continuous `f`, membership of the local representatives in one
  atlas of each manifold gives membership in all charts. The weak differential exists and is
  unique up to a chartwise null set, and these are exactly the null sets of the Riemannian
  volume of every continuous metric. `C¹` maps belong to every class with `Df = mfderiv f`.
- **T3** (§5.2–§5.3). For `f ∈ W^{1,1}_loc(M, N)`: `f ∈ W^{1,p}_loc(M, N)` iff
  `‖Df‖ ∈ L^p_loc(M)`. Comparable metrics change `‖Df‖` by the comparison constants.
- **T4** (§6.1–§6.4). The oriented Jacobian of linear maps between oriented inner product spaces.
  The Jacobian `J_f`, its chart formula, its sign laws, `|J_f| = normDet(Df)`, Hadamard's
  inequality `|J_f| ≤ ‖Df‖ⁿ`, `J_f ∈ L^{p/n}_loc`, and the Jacobian measure.
- **T5** (§8.2). For a `C¹` immersion `ι : N → V`, a continuous `f` lies in `W^{1,p}_loc(M, N)`
  iff `ι ∘ f ∈ W^{1,p}_loc(M; V)`. Then `D(ι ∘ f) = dι ∘ Df`, and `‖D(ι ∘ f)‖ = ‖Df‖` when `ι` is
  isometric.
- **T6** (§7.1). On an open subset of a Euclidean space with values in a Euclidean space, the
  class is the continuous members of the Euclidean class. There `Df` is the weak derivative,
  `‖Df‖` its operator norm and `J_f` its determinant.
- **T7** (§8.4). For a closed `N` and two `C¹` embeddings `ι₁`, `ι₂` into vector spaces, a map
  `u : M → N` has `ι₁ ∘ u ∈ W^{1,p}_loc` iff `ι₂ ∘ u ∈ W^{1,p}_loc`.

## Scope and ownership

This roadmap owns:

- the local Lebesgue classes `L^p_loc(s, μ)` on a topological measure space, and the
  vector-valued first-order local Sobolev classes `W^{1,p}_loc(Ω; F)` on open subsets of
  finite-dimensional real normed spaces. It owns their linear, coordinate and gluing API and
  their agreement with Tau Ceti's `TauCeti.W1p`;
- the chain rules of T1 on Euclidean domains, at every `1 ≤ p ≤ ∞`, and the behaviour of
  Lebesgue null sets under `C¹` maps;
- the identification of chartwise null sets with the null sets of the Riemannian volume, and
  local Lebesgue classes on manifolds;
- the vector-valued class `W^{1,p}_loc(M; V)` on a manifold, the continuous class
  `W^{1,p}_loc(M, N)`, the weak differential, and their chart, restriction, gluing and chain-rule
  API;
- the operator norm of the weak differential and the `L^p` characterisation;
- the oriented Jacobian of a linear map between oriented inner product spaces of one dimension,
  the Jacobian of a Sobolev map, Hadamard's inequality and the Jacobian measure;
- the Euclidean compatibility of T6, local retractions of `C¹` immersions, the extrinsic
  description of T5, the extrinsic class of measurable maps, and its independence of the
  embedding for a closed target (T7).

Already in the libraries, and consumed: Tau Ceti's weak derivatives and `W1p`, including the
global change of variables `TauCeti.W1p.compL` (bounded `DΦ`, `|det DΦ|` bounded below,
`p < ∞`), the scalar chain rule `TauCeti.W1p.hasWeakFDerivOn_comp` (a `C¹` function of one
variable with bounded derivative, `p < ∞`) and the measure-preserving chain rule
`TauCeti.HasWeakFDerivOn.comp_measurePreserving`. Also consumed: chartwise null sets
(`TauCeti.IsNullSet`), the Riemannian volume (`TauCeti.riemannianVolume`), manifold orientations
(`TauCeti.Manifold.Orientation`), the Riemannian volume form (`TauCeti.riemannianVolumeForm`) and
compactly supported extensions along embeddings
(`TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport`). From Mathlib it
consumes `LinearMap.normDet` and the Whitney embedding `exists_embedding_euclidean_of_compact`.
The local and vector-valued statements here contain the library's global and scalar ones as
special cases. Each comparison is a Check.

It leaves to named roadmaps:

- [PDE](../PDE/README.md) Layer 1 owns the scalar Sobolev spaces of Euclidean domains, their
  embeddings and traces. They are consumed through Tau Ceti's `TauCeti.HasWeakFDerivOn` and
  `TauCeti.W1p`.
- [GeometricCurrents](../GeometricCurrents/README.md) G6 owns the scalar local spaces
  `W^{j,p}_loc(Ω)` of every order, with finite-cover gluing. At `j = 1` this is the class of
  §1.2 with `F = ℝ`, as §1.4 proves through `TauCeti.W1p`.
- [PseudoholomorphicCurveAnalysis](../PseudoholomorphicCurveAnalysis/README.md) PH1.1 owns the
  planar classes of every order on open subsets of `ℂ` and on half-discs. At order one on an
  open subset of `ℂ` they are the classes of §1.1–§1.2 with `E = ℂ`. Its PH1.2 composition and
  change-of-variables theorems at order one on open subsets of `ℂ`, where `p > 2`, are the cases
  `E = ℂ` of §2.4 and §2.2 (a Check of each); here they hold for every `p` (for continuous
  members in §2.4) and in every dimension. Its PH4.1 owns `W^{k,p}_loc(Σ, M)` for maps from
  Riemann surfaces with `kp > 2`, a two-dimensional higher-order sibling in the range where
  Morrey's embedding applies.
- SobolevPolynomialApproximation §2.1 (composition with `C^k` diffeomorphisms with bounded
  derivatives, a bounded operator on the global `W^{k,p}(Ω)`) and SobolevDifferentialForms §4.1
  (pullback of Sobolev differential forms by `C¹` diffeomorphisms with `DΦ` and `DΦ⁻¹` bounded)
  own the global precomposition theorems for scalar functions and forms on Euclidean domains,
  with their norm bounds. At order one, and in form degree `0`, they are the global counterparts
  of §2.2 for `C¹` diffeomorphisms `θ : Ω' → Ω` with `Dθ` and `(Dθ)⁻¹` bounded, with the same
  derivative `Du(θ) ∘ Dθ`. §2.2 is the local, vector-valued statement, with no bound and no
  injectivity, and gives no norm bound.
- [TeichmullerGeometry](../TeichmullerGeometry/README.md) §7.4 owns planar quasiconformal maps,
  the weak Wirtinger derivatives and the Beltrami equation.
- [PseudodifferentialOperators](../PseudodifferentialOperators/README.md) §5.2 owns Sobolev
  sections of vector bundles over compact bases, a global normed carrier. The classes here are
  local and need no compactness.
- [RiemannianGeometry](../RiemannianGeometry/README.md) R4.6 and R6 prove that the cut locus and
  the focal set have Riemannian measure zero. They relate chart nullity to the volume of a smooth
  metric for those sets. The comparison for arbitrary sets and every continuous metric is §3.1
  here.
- [DifferentialGeometry](../DifferentialGeometry/README.md) Layer 2 (orientations), 12.1
  (metrics on open subsets) and 12.4 (volume form and Riemannian measure) are consumed through
  their Tau Ceti implementations.
- [GeometricMeasureTheory](../GeometricMeasureTheory/README.md) G2 owns the area and coarea
  formulas. Mathlib's `LinearMap.normDet` is the unsigned Jacobian, and §6.1 compares the
  oriented Jacobian with it.
- SobolevMapsBetweenManifolds, Part II, described under Downstream consumers, owns the density
  of smooth maps (Hajlasz2009 Theorem 2.1, lines 129–130, for `p > dim M`, and lines 138–141 for
  `p = dim M`; Bethuel1991), traces, homotopy classes of Sobolev maps, Sobolev maps into metric
  spaces, higher-order classes `W^{k,p}_loc(M, N)`, bi-Lipschitz changes of variables
  (Ziemer1989 Theorem 2.2.2), approximate differentiability of Sobolev maps and the tangency
  `D(ι ∘ u) ∈ dι(TN)` for the extrinsic class.

Nash's isometric embedding theorem is not used: where an isometric embedding appears, isometry is
a hypothesis (§8.2).

## Conventions

- **Spaces.** `E`, `E'`, `F`, `F'`, `V`, `V'`, `V₁`, `V₂` are finite-dimensional real normed spaces
  with their Borel σ-algebras. Inner products are assumed where a statement says so (§1.4's
  comparison with `TauCeti.W1p`, metrics, Jacobians, Layer 7). On an open `Ω ⊆ E` the measure is
  an additive Haar measure `μ`. Every class and every weak derivative here is the same for all
  additive Haar measures (§1.2), so statements quantify over one.
- **Exponents.** `p ∈ [1, ∞]` as an extended non-negative real; `p = ∞` is included everywhere.
  At `p = ∞` the weak identities are proved through the finite-exponent tools on relatively
  compact subdomains, since `TauCeti.W1p.compL` and `TauCeti.W1p.hasWeakFDerivOn_comp` require
  `p ≠ ∞`. Witness: `log |x|` on `ℝ²` lies in `W^{1,p}_loc(ℝ²)` exactly for `p < 2`.
- **Manifolds.** `M` is modelled on `I : ModelWithCorners ℝ E H` with `I.Boundaryless` and
  `[IsManifold I 1 M]`; likewise `N` on `J`, with model space `F`, and `M'`, `P` on `I'`, `I_P`.
  Smooth manifolds are the main case. `C¹` is what the chain rules need, so it is the standing
  hypothesis. "A chart" is a member of `IsManifold.maximalAtlas`, and the class is defined
  through the preferred extended charts `extChartAt`. Second countability enters as
  `[LindelofSpace M]` exactly where it is used (existence of `Df`, the Riemannian volume, images
  of null sets in §3.3).
  No separation axiom is used.
- **Null sets.** No measurable structure is installed on a manifold. A null set is a
  `TauCeti.IsNullSet`: its image in every preferred chart is null for every Haar measure of the
  model. "Almost everywhere on `M`" means outside such a set. Statements involving a measure carry
  `[MeasurableSpace M] [BorelSpace M]` and use `TauCeti.riemannianVolume`, whose null sets are the
  same (§3.1).
- **Direction of the weak differential.** In charts `φ` at `x` and `ψ` at `f(x)`,
  `dψ_{f(x)} ∘ Df(x) ∘ (dφ_x)⁻¹ = D(ψ ∘ f ∘ φ⁻¹)(φ(x))`. Witness: on `M = N = ℝ` with the chart
  `φ(x) = 2x` on `M`, `ψ = id`, and `f = id`, the local representative is `y ↦ y/2` with
  derivative `1/2`, and `1 · Df · (1/2) = 1/2` gives `Df = 1`. Using `dφ` in place of `(dφ)⁻¹`
  would give `1/4`, and omitting the chart factors would give `1/2`.
- **Metrics.** Continuous Riemannian metrics are Mathlib's `Bundle.RiemannianBundle` with
  `IsContinuousRiemannianBundle`. A real inner product space carries its flat metric through
  Mathlib's `riemannianMetricVectorSpace`, and an open subset carries the restricted metric
  through `TauCeti.Manifold.instRiemannianBundleOpen`. A second metric on one manifold is carried
  by the copy `TauCeti.WithMetric`. `‖Df(x)‖` is the operator norm from `(T_xM, g_M)` to
  `(T_{f(x)}N, g_N)`. Witness: for `f = id` from flat `ℝ` to `ℝ` with the metric `4 dt²`,
  `‖Df‖ = 2`.
- **Volume.** `TauCeti.riemannianVolume` of a continuous metric on a Lindelöf manifold. On a real
  inner product space with its flat metric it is `volume` (§3.1). Witness: the unit square of
  `ℝ²` has volume `1` for the flat metric and `4` for `4(dx² + dy²)`.
- **Orientations and the Jacobian.** An orientation is a `TauCeti.Manifold.Orientation I M (Fin n)`
  with tangent orientations `orientationAt`. The volume form is
  `TauCeti.riemannianVolumeForm o`, fibrewise Mathlib's `Orientation.volumeForm`. The oriented
  Jacobian `J(A)` of a linear `A : V → W` is fixed by `A^*(vol_W) = J(A) vol_V`. Witnesses on
  `ℝ²`: `J(diag(2, 1)) = 2` for one orientation on both sides; `J(diag(−1, 1)) = −1` from the
  standard orientation to itself, and `+1` from the standard orientation to its negative. With
  the metric `4 dt²` on the target `ℝ`, `f = id` has `J_f = 2`.
- **Dimension.** `n = finrank ℝ E`. Dimension `0` is allowed and computed in the Checks: every map
  of a `0`-manifold lies in every class, `Df = 0`, and `J(A) = ±1`.
- **Totality.** The weak differential is a total function, `0` off the class. Statements carry
  the class as a hypothesis.

## Exact supplier contracts

### From Mathlib

- `MeasureTheory.MemLp`, `MeasureTheory.eLpNorm`, `MeasureTheory.Measure.restrict`,
  `MeasureTheory.MemLp.of_le` and `MeasureTheory.memLp_top_of_bound`
  (`Mathlib/MeasureTheory/Function/LpSeminorm/Basic.lean`): Lebesgue classes and their domination
  and boundedness criteria.
- `MeasureTheory.LocallyIntegrableOn` and `MeasureTheory.locallyIntegrableOn_iff`
  (`Mathlib/MeasureTheory/Function/LocallyIntegrable.lean`): on a locally closed set in a locally
  compact space, local integrability is integrability on compact subsets.
- `MeasureTheory.Measure.IsAddHaarMeasure`, `MeasureTheory.Measure.isAddLeftInvariant_eq_smul`
  (`Mathlib/MeasureTheory/Measure/Haar/Unique.lean`): two additive Haar measures on a second
  countable locally compact group differ by a positive scalar. `Module.Basis.addHaar`,
  `Module.Basis.addHaar_self` and `Module.Basis.addHaar_eq_iff`
  (`Mathlib/MeasureTheory/Measure/Haar/OfBasis.lean`): the Haar measure normalised by a basis.
- `MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero` and
  `MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`
  (`Mathlib/MeasureTheory/Function/Jacobian.lean`): images of null sets under differentiable
  self-maps of `E` are null, and the Jacobian change of variables for maps injective on a
  measurable set.
- `MeasureTheory.Measure.withDensity` and `MeasureTheory.withDensity_absolutelyContinuous`
  (`Mathlib/MeasureTheory/Measure/WithDensity.lean`); `MeasurableEmbedding.comap_apply`
  (`Mathlib/MeasureTheory/Measure/Restrict.lean`); `Topology.IsOpenEmbedding.measurableEmbedding`
  (`Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean`): between Borel spaces an open
  embedding is a measurable embedding, so it maps Borel sets to Borel sets.
- `ContDiffAt.toOpenPartialHomeomorph`
  (`Mathlib/Analysis/Calculus/InverseFunctionTheorem/ContDiff.lean`): the `C¹` inverse function
  theorem. `exists_contDiff_support_eq_eq_one_iff` and
  `SmoothPartitionOfUnity.exists_isSubordinate` (`Mathlib/Geometry/Manifold/PartitionOfUnity.lean`):
  smooth functions with prescribed open support equal to `1` exactly on a closed subset, and
  smooth partitions of unity on `E`. `ContDiffBump`: the mollifier bumps.
- `extChartAt`, `isOpen_extChartAt_target` and `contDiffOn_ext_coord_change`
  (`Mathlib/Geometry/Manifold/IsManifold/ExtChartAt.lean`): preferred charts, open chart targets
  for boundaryless models, and `C¹` coordinate changes. `IsManifold.maximalAtlas`
  (`Mathlib/Geometry/Manifold/IsManifold/Basic.lean`); `TopologicalSpace.Opens.instChartedSpace`
  (`Mathlib/Geometry/Manifold/HasGroupoid.lean`): open subsets as manifolds.
- `mfderiv`, `ContMDiff`, `mfderiv_eq_fderiv` (`Mathlib/Geometry/Manifold/MFDeriv/NormedSpace.lean`);
  `IsLocalDiffeomorph` (`Mathlib/Geometry/Manifold/LocalDiffeomorph.lean`).
- `Manifold.IsImmersionAt` (`Mathlib/Geometry/Manifold/Immersion.lean`): the immersion normal
  form, with
  its domain chart, codomain chart and splitting equivalence. `Manifold.IsSmoothEmbedding`
  (`Mathlib/Geometry/Manifold/SmoothEmbedding.lean`): an immersion that is a topological
  embedding. `exists_embedding_euclidean_of_compact`
  (`Mathlib/Geometry/Manifold/WhitneyEmbedding.lean`): a compact Hausdorff manifold has a smooth
  closed embedding with injective differential into some `EuclideanSpace ℝ (Fin l)`.
- `Bundle.RiemannianBundle` and `IsContinuousRiemannianBundle`
  (`Mathlib/Topology/VectorBundle/Riemannian.lean`): the inner products of the tangent spaces,
  continuous in the base point. `riemannianMetricVectorSpace`
  (`Mathlib/Geometry/Manifold/Riemannian/Basic.lean`): the flat metric of an inner product space,
  installed as an instance.
- `Orientation.volumeForm`, `Orientation.volumeForm_robust`,
  `Orientation.volumeForm_neg_orientation`, `Orientation.abs_volumeForm_apply_le`,
  `Orientation.abs_volumeForm_apply_of_orthonormal`, `Orientation.volumeForm_map` and
  `Orientation.finOrthonormalBasis` (`Mathlib/Analysis/InnerProductSpace/Orientation.lean`): the
  oriented volume form, its value `±1` on oriented orthonormal bases, its sign under reversal,
  Hadamard's inequality for vectors `|ω(v)| ≤ Π |vᵢ|`, naturality under linear isometric
  equivalences, and a positively oriented orthonormal basis in dimension `n ≥ 1`.
  `Module.Basis.orientation_isEmpty` (`Mathlib/LinearAlgebra/Orientation.lean`): the empty basis
  is positively oriented. `AlternatingMap.eq_smul_basis_det`
  (`Mathlib/LinearAlgebra/Determinant.lean`): an alternating form indexed by a basis's index type
  is its value on the basis times the basis determinant.
- `LinearMap.det`; `LinearMap.normDet`, `LinearMap.normDet_eq_abs_det` and
  `LinearMap.normDet_eq_prod_singularValues` (`Mathlib/Analysis/InnerProductSpace/NormDet.lean`):
  the unsigned Jacobian, equal to `|det|` for endomorphisms.

### From Tau Ceti

- `TauCeti.HasWeakFDerivOn`, `TauCeti.hasWeakFDerivOn_iff`, `TauCeti.HasWeakFDerivOn.mono`,
  `TauCeti.HasWeakFDerivOn.add`, `TauCeti.HasWeakFDerivOn.const_smul`,
  `TauCeti.HasWeakFDerivOn.clm_comp`, `TauCeti.HasWeakFDerivOn.congr_ae`,
  `TauCeti.HasWeakFDerivOn.congr_ae_deriv`, `TauCeti.HasWeakFDerivOn.ae_eq`,
  `TauCeti.HasWeakFDerivOn.ae_eq_fderiv`, `Module.Basis.hasWeakFDerivOn_of_forall` and
  `TauCeti.hasWeakFDerivOn_of_differentiableOn` (`TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean`).
  The predicate includes completeness of the codomain and local integrability of `u` and of every
  `x ↦ U x v`. It makes no `Lᵖ` demand, and it identifies distributional derivatives only for a
  Haar measure.
- `TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure`
  (`TauCeti/Analysis/Sobolev/WeakDeriv/Local.lean`): weak derivatives are detected on relatively
  compact subdomains. `TauCeti.hasWeakFDerivOn_of_tendsto_lintegral_enorm_sub`
  (`…/WeakDeriv/Limit.lean`): weak derivatives pass to `L¹` limits.
  `TauCeti.HasWeakFDerivOn.comp_measurePreserving` (`…/WeakDeriv/MeasurePreserving.lean`): the
  chain rule for measure-preserving locally Lipschitz maps.
  `TauCeti.HasWeakLineDerivOn.absolutelyContinuousOnInterval` (`…/WeakDeriv/Interval.lean`).
- `TauCeti.HasWeakFDerivOn.hasFDerivAt_indicator_convolution_normed` and
  `TauCeti.HasWeakFDerivOn.fderiv_indicator_convolution_normed`
  (`TauCeti/Analysis/Sobolev/Mollification/Interior.lean`): mollifications of a weakly
  differentiable map are differentiable at points whose closed ball lies in the domain, with
  derivative the mollified weak derivative. `TauCeti.tendsto_eLpNorm_normed_convolution_sub`
  (`TauCeti/MeasureTheory/Function/Lp/ApproximateIdentity.lean`): convergence of normalised
  mollifications in `Lᵖ`, `p < ∞`.
- `TauCeti.W1p` and `TauCeti.mem_w1pSubmodule_iff_hasWeakFDerivOn`
  (`TauCeti/Analysis/Sobolev/W1p/Basic.lean`): the scalar first-order space of an open subset of a
  finite-dimensional inner product space, identified with the weak-derivative predicate.
  `TauCeti.W1p.compL`, `TauCeti.W1p.value_compL_ae` and `TauCeti.W1p.gradient_compL_ae`
  (`…/W1p/ChangeOfVariables.lean`): precomposition with `Φ : E → E` differentiable and injective
  on `U`, `‖DΦ‖ ≤ L`, `c ≤ |det DΦ|`, `p ≠ ∞`, with gradient `DΦ* (∇u ∘ Φ)`.
  `TauCeti.W1p.hasWeakFDerivOn_comp` (`…/W1p/ChainRule.lean`): the scalar chain rule for a `C¹`
  function of one variable with bounded derivative, `p ≠ ∞`.
- `TauCeti.not_absolutelyContinuousOnInterval_cantorFunction`
  (`TauCeti/Analysis/SpecialFunctions/CantorFunction.lean`).
  `DifferentiableOn.addHaar_image_eq_zero_of_finrank_lt_finrank`
  (`TauCeti/Analysis/Calculus/Sard/LowDimension.lean`): differentiable images into a space of
  larger dimension are null.
- `TauCeti.IsNullSet`, `TauCeti.IsNullSet.mono`, `TauCeti.IsNullSet.iUnion` and
  `TauCeti.IsNullSet.interior_eq_empty` (`TauCeti/Geometry/Manifold/Measure.lean`). A set is null
  when its image under `extChartAt I x`, intersected with the chart source, is null for every
  Haar measure, at every `x`. The definition installs no measurable structure on `M`.
- `TauCeti.riemannianVolume`, `TauCeti.riemannianVolume_restrict_source` and
  `TauCeti.setLIntegral_riemannianVolume_of_subset`
  (`TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean`), with
  `TauCeti.isLocallyFiniteMeasure_riemannianVolume`. The measure needs
  `[LindelofSpace M] [MeasurableSpace M] [BorelSpace M]`, `[IsManifold I 1 M]` and a continuous
  metric. On a preferred chart source it is the chart volume.
  `TauCeti.chartRiemannianVolume` (`…/VolumeDensity/Measure.lean`): the comap of
  `(Module.finBasis ℝ E).addHaar` weighted by the chart density. `TauCeti.chartVolumeDensity`,
  `TauCeti.chartVolumeDensity_pos` (`…/VolumeDensity/Basic.lean`) and
  `TauCeti.chartVolumeDensity_changeChart` (`…/VolumeDensity/ChangeOfCoordinates.lean`): the
  density is `√det` of the Gram matrix of the chart frame of `Module.finBasis ℝ E`, positive on the
  chart source, and changes by `|det|` of the coordinate change.
  `TauCeti.isOpenPosMeasure_riemannianVolume` (`…/VolumeDensity/Support.lean`).
- `TauCeti.Manifold.Orientation`, `TauCeti.Manifold.Orientation.orientationAt`,
  `TauCeti.Manifold.Orientation.orientationAt_neg` and `TauCeti.Manifold.Orientation.model`
  (`TauCeti/Geometry/Manifold/Orientation/Basic.lean`);
  `TauCeti.Manifold.Orientation.restrict` (`…/Orientation/OpenSubset.lean`);
  `TauCeti.Manifold.Orientation.IsOrientationPreservingAt`
  (`…/Orientation/Preserving.lean`). An orientation is a quotient of chart-sign data, and its
  tangent orientations are Mathlib orientations of the tangent spaces.
- `TauCeti.riemannianVolumeForm` (`TauCeti/Geometry/Manifold/Riemannian/VolumeForm.lean`): the
  fibrewise volume form `(o.orientationAt x).volumeFormL`, equal to `1` on positively oriented
  orthonormal bases.
- `TauCeti.Manifold.instRiemannianBundleOpen`
  (`TauCeti/Geometry/Manifold/Riemannian/Restriction.lean`)
  and `TauCeti.WithMetric` (`…/Riemannian/WithMetric.lean`): the metric of an open subset, and a
  copy of a manifold with the same charts carrying a second metric.
- `ContMDiffOn.isImmersionAt_iff_injective_mfderiv`
  (`TauCeti/Geometry/Manifold/Immersion/Differential.lean`): with a finite-dimensional target
  model, a `C^k` map (`k ≥ 1`) on an open subset of a boundaryless manifold has the immersion
  normal form at `x` iff its differential at `x` is injective.
  `Manifold.IsImmersionAt.exists_contMDiffOn_retraction`
  (`TauCeti/Geometry/Manifold/SmoothEmbedding/Extension.lean`): local `C^k` retractions of
  topological embeddings with immersion normal form, the model for §8.1.
  `TauCeti.exists_contMDiffOn_normalRetraction`
  (`TauCeti/Geometry/Manifold/TubularNeighborhood/LocalInverse.lean`): the same for `C^{k+1}`
  immersions into inner product spaces.
- `TauCeti.SmoothEmbedding` (`TauCeti/Geometry/Manifold/SmoothEmbedding/Basic.lean`) and
  `TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport`
  (`…/SmoothEmbedding/Extension.lean`): a `C^k` map on a compact portion of an embedded
  boundaryless manifold extends to a compactly supported `C^k` map of the ambient manifold.

### From TauCetiRoadmap.DifferentialGeometry

- Layer 2.1–2.2 (orientations, tangent orientations, orientation-preserving maps), 12.1 (metrics
  on open subsets) and 12.4 (the Riemannian volume form and the measure
  `TauCeti.riemannianVolume`), consumed through the Tau Ceti declarations above. The convention
  that no measurable structure is installed on a manifold is DifferentialGeometry's.

### From TauCetiRoadmap.PseudoholomorphicCurveAnalysis

- PH1.1: the planar local classes, used in the agreement Checks of §1.1 and §1.2.
- PH1.2: the composition and change-of-variables theorems for `kp > 2`, used at `k = 1` in the
  agreement Checks of §2.2 and §2.4.

## How to read the build

Layer 1 defines the local Lebesgue classes and the vector-valued local Sobolev classes on open
subsets of finite-dimensional spaces. It proves their API and their gluing over arbitrary open
covers, and compares them with `TauCeti.W1p`. Layer 2 proves the behaviour of null sets under
`C¹` maps and the three chain rules of T1. Layer 3 is measure theory on manifolds: chartwise
null sets are Riemannian null sets, local Lebesgue classes are chartwise, and `C¹` local
diffeomorphisms pull null sets back to null sets. Layer 4 defines the vector-valued class
`W^{1,p}_loc(M; V)`, the continuous class `W^{1,p}_loc(M, N)` and the weak differential. It
proves chart independence, the `C¹` case, restriction and gluing, and the chain rules on
manifolds. Layer 5 adds metrics and proves the `L^p` characterisation. Layer 6 is the Jacobian,
from linear algebra to the Jacobian measure. Layer 7 is the Euclidean compatibility. Layer 8
proves the extrinsic description through immersions and the independence of the embedding for
the class of measurable maps.

Layers 1 and 3.1–3.2 can be built at once. Layer 2 needs Layer 1. §3.3 needs §2.1. Layer 4 needs
Layers 1–3. Layer 5 needs Layers 3 and 4. Layer 6 needs Layers 4 and 5. Layer 7 needs Layers 4–6.
Layer 8 needs Layers 2, 4 and 5.

## Layer 1: local classes on Euclidean domains

### 1.1 Local Lebesgue classes

For a topological space `X` with a measure `μ`, a set `s ⊆ X`, an exponent `p` and a map
`g : X → B` into a normed group `B`, say that `g` is *locally `Lᵖ` on `s`*, written
`g ∈ L^p_loc(s, μ)`, when `g ∈ Lᵖ(μ restricted to K)` for every compact `K ⊆ s` (Mazya2011
§1.1). For `X = ℂ` with Lebesgue measure this is PseudoholomorphicCurveAnalysis PH1.1's local
`Lᵖ` condition.

- If `t ⊆ s` and `g ∈ L^p_loc(s, μ)` then `g ∈ L^p_loc(t, μ)`. Every `g` is in `L^p_loc(∅, μ)`.
- The class is closed under sums and scalar multiples. If `g ∈ L^p_loc(s, μ)` and `g'` is
  a.e.-strongly measurable on every compact subset of `s` with `‖g'(x)‖ ≤ c(x) ‖g(x)‖`
  almost everywhere on `s`, where `c` is bounded on every compact subset of `s`, then
  `g' ∈ L^p_loc(s, μ)`. In particular `A ∘ g` belongs for every continuous linear `A`. If
  `g = g'` almost everywhere on `s`, then the two have the same membership.
- If `μ` is finite on compact sets and `p ≤ q`, then `L^q_loc(s, μ) ⊆ L^p_loc(s, μ)`.
- If `X` is Hausdorff, open sets are measurable, `μ` is finite on compact sets and `g` is
  continuous on `s`, then `g ∈ L^p_loc(s, μ)` for every `p`.
- If `X` is locally compact and `s` is locally closed (for instance open), then
  `g ∈ L^1_loc(s, μ)` iff `g` is locally integrable on `s` (Mathlib's
  `MeasureTheory.locallyIntegrableOn_iff`).
- *Gluing.* If `X` is locally compact, `s = ⋃ᵢ sᵢ` with every `sᵢ` open, and
  `g ∈ L^p_loc(sᵢ, μ)` for all `i`, then `g ∈ L^p_loc(s, μ)`. A compact `K ⊆ s` is covered by
  finitely many compact neighbourhoods each inside one `sᵢ`.
- *Comparable measures.* Suppose that for every compact `K ⊆ s` there is `C` with
  `ν|_K ≤ C μ|_K` and `μ|_K ≤ C ν|_K`. Then `L^p_loc(s, μ) = L^p_loc(s, ν)`.

**Checks.**

- The identity of `ℝ` lies in `L^p_loc(ℝ)` for every `p`, and in `Lᵖ(ℝ)` for no `p`, since
  `∫ |x|ᵖ dx = ∞` and `x` is unbounded. A definition requiring global `Lᵖ` would reject it.
- `g(x) = |x|^{−1/2}` on `ℝ`: `∫_{−1}^{1} |x|^{−p/2} dx = 4/(2 − p)` for `p < 2`, which is `4` at
  `p = 1` and infinite at `p = 2`. So `g ∈ L^p_loc(ℝ)` iff `p < 2`, while
  `g ∈ L^∞_loc(ℝ ∖ {0})`, because compact subsets of `ℝ ∖ {0}` avoid `0`.
- On `s = (0, 1)`, `g(x) = 1/x` is bounded by `1/a` on `[a, b] ⊆ (0, 1)`, so
  `g ∈ L^∞_loc((0, 1))`. Yet `∫_0^1 dx/x = ∞`, so `g ∉ L¹((0, 1))`. A definition through
  bounded subsets of `s` rather than compact ones would reject it.
- For `X = ℂ` and Lebesgue measure the class is PH1.1's local `Lᵖ` condition, literally.

*Needs:* Mathlib `MeasureTheory.MemLp`, `MeasureTheory.MemLp.of_le`,
`MeasureTheory.memLp_top_of_bound`, `MeasureTheory.locallyIntegrableOn_iff`.

### 1.2 The class `W^{1,p}_loc(Ω; F)`

Let `μ` be an additive Haar measure on `E`, `Ω ⊆ E` open, and `1 ≤ p ≤ ∞`. A map `u : E → F` lies
in `W^{1,p}_loc(Ω; F)` when `u ∈ L^p_loc(Ω, μ)` and there is `U : E → (E →L[ℝ] F)` with
`TauCeti.HasWeakFDerivOn μ Ω u U` and `U ∈ L^p_loc(Ω, μ)` (Ziemer1989 Ch. 2 §2.1; Mazya2011
§1.1; HeikkilaPankka2025 lines 22–23). Such a `U` is a weak derivative of `u` on `Ω`, written
`Du`. It is unique almost everywhere on `Ω` (`TauCeti.HasWeakFDerivOn.ae_eq`).

- *Haar measure.* Membership and the weak derivatives are the same for all additive Haar
  measures on `E`. Two of them differ by a positive scalar
  (`MeasureTheory.Measure.isAddLeftInvariant_eq_smul`), which scales both sides of the defining
  identity and preserves local `Lᵖ`.
- *Null sets.* Modifying `u` or `U` on a `μ`-null set changes neither membership nor the
  weak-derivative relation.
- *Linearity.* Sums and scalar multiples of members are members, with
  `D(u + v) = Du + Dv` and `D(cu) = c Du`. For continuous linear `A : F →L[ℝ] F'`, `A ∘ u` is a
  member with `D(A ∘ u) = A ∘ Du`.
- *Coordinates.* Let `(f_j)` be a basis of `F` with coordinate functionals `f_j^*`. Then `u` is a
  member iff every `f_j^* ∘ u` lies in `W^{1,p}_loc(Ω; ℝ)`, and then `Du = Σ_j D(f_j^* ∘ u) · f_j`.
  For `F = F₁ × F₂`, `u` is a member iff both components are.
- *`C¹` maps.* If `u` is `C¹` on `Ω`, then `u` is a member for every `p`, with `Du = fderiv u` on
  `Ω` (`TauCeti.hasWeakFDerivOn_of_differentiableOn`). Constants are members with `Du = 0`.
- *Exponents and restriction.* For `p ≤ q`, `W^{1,q}_loc(Ω; F) ⊆ W^{1,p}_loc(Ω; F)`. For open
  `Ω' ⊆ Ω`, members on `Ω` restrict to members on `Ω'` with the same weak derivative.

**Checks.**

- The identity of `E`, for `E ≠ 0`, lies in the class for every `p`, with `Du` the constant `id`.
  It is not in the global `W^{1,p}(E)` for any `p`, since it is not in `Lᵖ(E)`.
- `u(x) = log |x|` on `ℝ²`: `u ∈ L^p_loc` for every `p` and `|Du(x)| = 1/|x|`, with
  `∫_{|x|<1} |x|^{−p} dx = 2π/(2 − p)` for `p < 2` and infinite at `p = 2`. So
  `u ∈ W^{1,p}_loc(ℝ²)` iff `p < 2`. A definition that omitted the bound on `Du` would accept
  `p = 2`.
- The Heaviside function on `ℝ` lies in `L^p_loc(ℝ)` but in no class: a weak derivative `U` would
  satisfy `∫ U φ = φ(0)` for every test function `φ`, which fails for `φ` concentrating at `0`. A
  definition through the classical derivative almost everywhere, which is `0`, would accept it.
- The Cantor function on `(0, 1)` is continuous with classical derivative `0` almost everywhere,
  yet it is not in `W^{1,1}_loc((0, 1))`. A member is absolutely continuous on compact
  subintervals (`TauCeti.HasWeakLineDerivOn.absolutelyContinuousOnInterval`), and the Cantor
  function is not (`TauCeti.not_absolutelyContinuousOnInterval_cantorFunction`).
- For `E = ℂ` with Lebesgue measure, the class is PH1.1's order-one planar class at the same `p`,
  literally.

*Needs:* §1.1; Tau Ceti `TauCeti.HasWeakFDerivOn`, `TauCeti.HasWeakFDerivOn.ae_eq`,
`TauCeti.HasWeakFDerivOn.add`, `TauCeti.HasWeakFDerivOn.const_smul`,
`TauCeti.HasWeakFDerivOn.clm_comp`, `TauCeti.HasWeakFDerivOn.mono`,
`TauCeti.HasWeakFDerivOn.congr_ae`, `TauCeti.HasWeakFDerivOn.congr_ae_deriv`,
`Module.Basis.hasWeakFDerivOn_of_forall`, `TauCeti.hasWeakFDerivOn_of_differentiableOn`;
Mathlib `MeasureTheory.Measure.isAddLeftInvariant_eq_smul`.

### 1.3 Locality and gluing (T1(c))

Prove the sheaf property (Mazya2011 §1.1). Let `(Ωᵢ)_{i ∈ ι}` be open subsets of `E` with union
`Ω`, and `u : E → F`. Then `u ∈ W^{1,p}_loc(Ω; F)` iff `u ∈ W^{1,p}_loc(Ωᵢ; F)` for every `i`.
More precisely, if `TauCeti.HasWeakFDerivOn μ Ωᵢ u Uᵢ` for every `i`, there is `U` with
`TauCeti.HasWeakFDerivOn μ Ω u U` and `U = Uᵢ` almost everywhere on each `Ωᵢ`. In particular any
two `Uᵢ`, `Uⱼ` agree almost everywhere on `Ωᵢ ∩ Ωⱼ`. The index set is arbitrary. Route: `E` is
second countable, so countably many `Ωᵢ` cover `Ω`. Define `U` on `Ω_{i_k} ∖ ⋃_{j<k} Ω_{i_j}` as
`U_{i_k}`; it agrees with every `Uᵢ` almost everywhere on `Ωᵢ` by uniqueness. A test function
on `Ω` splits, by a smooth partition of unity subordinate to finitely many `Ωᵢ` near its
support, into test functions of single `Ωᵢ`. Local `Lᵖ` glues by §1.1.

**Checks.**

- `u = sign(x₁)` on `ℝ²` is locally constant on the half-planes `{x₁ > 0}` and `{x₁ < 0}`, so it
  is in every class there with `Du = 0`. These two sets do not cover `ℝ²`, and `u` has a jump
  across `{x₁ = 0}`, so `u ∉ W^{1,1}_loc(ℝ²)`. A gluing statement for covers up to a null set
  would wrongly accept it, since the line is null.
- `log |x|` lies in `W^{1,p}_loc(ℝ² ∖ {0})` for every `p` and in `W^{1,p}_loc(B(0, 1))` only for
  `p < 2`. For the cover `{ℝ² ∖ {0}, B(0, 1)}` of `ℝ²`, the theorem gives membership on `ℝ²`
  exactly for `p < 2`, agreeing with §1.2.
- The empty index set: `Ω = ∅`, and both sides hold.
*Needs:* §1.1, §1.2; Tau Ceti `TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure`,
`TauCeti.HasWeakFDerivOn.ae_eq`, `TauCeti.HasWeakFDerivOn.congr_ae_deriv`; Mathlib
`SmoothPartitionOfUnity.exists_isSubordinate`.

### 1.4 Agreement with Tau Ceti's `W1p`

Let `E` be an inner product space and `F = ℝ`. Prove that `u ∈ W^{1,p}_loc(Ω; ℝ)` iff, for every
open `V` with compact closure contained in `Ω`, some `w ∈ TauCeti.W1p μ V p` has value equal to
`u` almost everywhere on `V`. Then `Du(x) = ⟨∇w(x), ·⟩` almost everywhere on `V`
(`TauCeti.mem_w1pSubmodule_iff_hasWeakFDerivOn`). This is GeometricCurrents G6's
`W^{1,p}_loc(Ω)` at order one. Route: "only if" restricts local `Lᵖ` to `V`, whose closure is a
compact subset of `Ω`; "if" glues the derivatives of the `w` over an exhaustion by §1.3.

**Checks.**

- `E = ℝ²`, `u(x) = x₁`, `V = B(0, 1/2)`: the restriction is an element of `TauCeti.W1p μ V p`
  with gradient `e₁`, and `Du = ⟨e₁, ·⟩`.
- `u = log |x|` on `Ω = ℝ²`, `p = 2`: on `V = B(0, 1/2)` no element of `TauCeti.W1p μ V 2` has
  value `u`, since `∫_V |x|^{−2} dx = ∞`. This agrees with §1.2's second Check.
- `p = ∞`, `u = |x|` on `ℝ`: on every bounded `V` the restriction lies in
  `TauCeti.W1p μ V ∞` with gradient `sign(x)`. On `V = ℝ`, which is not relatively compact, it
  does not, since `|x| ∉ L^∞(ℝ)`.

*Needs:* §1.2, §1.3; Tau Ceti `TauCeti.W1p`, `TauCeti.mem_w1pSubmodule_iff_hasWeakFDerivOn`.

### Examples

- `|x|` on `ℝⁿ` lies in `W^{1,∞}_loc(ℝⁿ)`, with `Du(x)v = ⟨x, v⟩/|x|` for `x ≠ 0`.
- `x ↦ x/|x|` on `ℝ³ ∖ {0}` is smooth, hence in every class there. On `ℝ³` it lies in
  `W^{1,p}_loc(ℝ³; ℝ³)` exactly for `p < 3`, since `|Du(x)|_HS = √2/|x|`.

### Dependencies

Mathlib's `Lᵖ` classes, Haar measures and partitions of unity; Tau Ceti's weak derivatives and
`TauCeti.W1p`; PseudoholomorphicCurveAnalysis PH1.1 for two agreement Checks. No earlier layer.

## Layer 2: chain rules on Euclidean domains

### 2.1 Null sets under `C¹` maps

Let `μ`, `μ'` be additive Haar measures on `E`, `E'`, and `Ω' ⊆ E'` open. Prove (Lee2012 Ch. 6):

- If `θ : E' → E` is differentiable on a set `A` with `μ'(A) = 0` and `finrank E' ≤ finrank E`,
  then `μ(θ(A)) = 0`. Route: for equal dimensions, through a linear equivalence and
  `MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero`; for smaller
  dimension, `DifferentiableOn.addHaar_image_eq_zero_of_finrank_lt_finrank`.
- If `θ` is `C¹` on `Ω'` and `fderiv θ y` is invertible for every `y ∈ Ω'`, then
  `μ'(Ω' ∩ θ⁻¹(S)) = 0` for every `μ`-null `S ⊆ E`. Route: by the inverse function theorem
  (`ContDiffAt.toOpenPartialHomeomorph`) countably many open sets on which `θ` has a `C¹`
  inverse cover `Ω'`, and the first item applies to those inverses.

**Checks.**

- The projection `(x, y) ↦ x` from `ℝ²` to `ℝ` maps the null set `ℝ × {0}` onto `ℝ`, which is
  not null. Here `finrank E' = 2 > 1`, so the dimension hypothesis is used.
- A constant map `ℝ² → ℝ²` has `θ⁻¹({c}) = ℝ²`. The derivative `0` is not invertible, so the
  invertibility hypothesis is used.
- The Cantor function maps the Cantor set, which is null, onto `[0, 1]`, of measure `1`. It is
  not differentiable on the Cantor set, so differentiability on `A` is used.

*Needs:* Mathlib `MeasureTheory.addHaar_image_eq_zero_of_differentiableOn_of_addHaar_eq_zero`,
`ContDiffAt.toOpenPartialHomeomorph`; Tau Ceti
`DifferentiableOn.addHaar_image_eq_zero_of_finrank_lt_finrank`.

### 2.2 Precomposition with `C¹` local diffeomorphisms (T1(a))

Let `Ω ⊆ E` and `Ω' ⊆ E'` be open. Let `θ : E' → E` be `C¹` on `Ω'`, with `θ(Ω') ⊆ Ω` and
`fderiv θ y` invertible for every `y ∈ Ω'`. Prove (Ziemer1989 Theorem 2.2.2; Mazya2011 §1.1):

- if `TauCeti.HasWeakFDerivOn μ Ω u U`, then
  `TauCeti.HasWeakFDerivOn μ' Ω' (u ∘ θ) (y ↦ U(θ y) ∘ fderiv θ y)`;
- if `u ∈ W^{1,p}_loc(Ω; F)` with `1 ≤ p ≤ ∞`, then `u ∘ θ ∈ W^{1,p}_loc(Ω'; F)`, and
  `D(u ∘ θ)(y) = Du(θ y) ∘ Dθ(y)` for almost every `y ∈ Ω'`.

No bound on `Dθ` or `(Dθ)⁻¹` and no injectivity is assumed. `C¹` diffeomorphisms `Ω' → Ω`,
`C¹` open embeddings and `C¹` coverings are special cases.

Route. Linear equivalences of `E` and `E'` with `EuclideanSpace ℝ (Fin n)` carry Haar measures to
Haar measures. `TauCeti.HasWeakFDerivOn.comp_measurePreserving` and the independence of the Haar
measure (§1.2) therefore reduce to `E = E' = EuclideanSpace ℝ (Fin n)`. Around each `y₀ ∈ Ω'`, the
inverse function theorem gives an open `W ∋ y₀` with compact closure in `Ω'` on which `θ` is
injective. On the closure, `‖Dθ‖ ≤ L` and `|det Dθ| ≥ c > 0`. Choose an open `V` with compact
closure in `Ω` containing `θ(W)`. Each coordinate of `u` lies in `TauCeti.W1p μ V 1`, and
`TauCeti.W1p.compL` with `TauCeti.W1p.gradient_compL_ae` gives the weak derivative on `W`. Since
`⟨Dθ* ∇u(θ y), v⟩ = ∇u(θ y) · Dθ(y) v`, this is the claimed formula. §1.3 glues over the cover
`{W}`. Local `Lᵖ` follows from `‖U(θ y) ∘ Dθ(y)‖ ≤ L ‖U(θ y)‖`, from the change of variables
`MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul` on each `W` for finite `p`, and
from §2.1 for `p = ∞`, where null sets pull back to null sets.

**Checks.**

- `θ(y) = 2y` on `ℝⁿ` and `u = |x|`: the formula gives `Du(2y) ∘ 2 id = 2⟨y, ·⟩/|y|`, the
  derivative of `u ∘ θ = 2|y|`.
- `θ(z) = z²` on `ℂ ∖ {0}`, a two-to-one local diffeomorphism, and `u(w) = log |w|`, with
  `Du(w)h = ⟨w, h⟩/|w|²`: `Du(z²)(2zh) = ⟨z², 2zh⟩/|z|⁴ = 2⟨z, h⟩/|z|²`, the derivative of
  `u ∘ θ = 2 log |z|`.
- Invertibility is used: for `θ(y₁, y₂) = (y₁, 0)` on `ℝ²` and `u = log |x| ∈ W^{1,1}_loc(ℝ²)`,
  `u ∘ θ = log |y₁|` has `∂₁ = 1/y₁` and `∫_{[−1,1]²} |y₁|^{−1} dy = ∞`. Moreover `u ∘ θ` is not
  determined by the class of `u`, since the image line is null.
- The local class is used: `θ(y) = y³ + y` is a `C^∞` diffeomorphism of `ℝ` with `θ' ≥ 1`, and
  `u = |x| ∈ W^{1,∞}_loc(ℝ)`. Then `D(u ∘ θ)(y) = (3y² + 1) sign(y)` is in `L^∞_loc(ℝ)` but not
  in `L^∞(ℝ)`, so no global bounded statement applies.
- For `E' = E` an inner product space, `p < ∞`, `θ` injective on `Ω'` with `‖Dθ‖ ≤ L` and
  `|det Dθ| ≥ c > 0`, and `F = ℝ`, the derivative agrees with `TauCeti.W1p.gradient_compL_ae`.
- For `E = E' = ℂ`, `p > 2` and `θ` a `C¹` diffeomorphism of `Ω'` onto `Ω`, the second item is
  PseudoholomorphicCurveAnalysis PH1.2's change of variables at `k = 1`. The covering `z ↦ z²`
  of the second Check, and every `1 ≤ p ≤ 2`, lie outside that statement.

*Needs:* §1.2, §1.3, §2.1; Tau Ceti `TauCeti.W1p.compL`, `TauCeti.W1p.value_compL_ae`,
`TauCeti.W1p.gradient_compL_ae`, `TauCeti.HasWeakFDerivOn.comp_measurePreserving`,
`TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure`; Mathlib
`ContDiffAt.toOpenPartialHomeomorph`,
`MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`.

### 2.3 Postcomposition with `C¹` maps of bounded derivative

Let `G : F → F'` be `C¹` on `F` with `‖DG(v)‖ ≤ L` for every `v`. Prove (Ziemer1989
Theorem 2.1.11, whose scalar statement this extends to vector values):

- if `TauCeti.HasWeakFDerivOn μ Ω u U`, then
  `TauCeti.HasWeakFDerivOn μ Ω (G ∘ u) (x ↦ DG(u x) ∘ U x)`;
- if `u ∈ W^{1,p}_loc(Ω; F)`, then `G ∘ u ∈ W^{1,p}_loc(Ω; F')`, with
  `D(G ∘ u) = DG(u) ∘ Du` almost everywhere.

`u` need not be continuous. Route: on an open `V` with compact closure in `Ω`, mollify the zero
extension of `u` from a slightly larger set. The mollifications `u_ε` are differentiable on `V`
with derivative the mollified `U`
(`TauCeti.HasWeakFDerivOn.hasFDerivAt_indicator_convolution_normed`), and `u_ε → u`,
`Du_ε → U` in `L¹(V)` (`TauCeti.tendsto_eLpNorm_normed_convolution_sub`), almost everywhere along
a sequence. Then `G ∘ u_ε → G ∘ u` in `L¹(V)` because `G` is `L`-Lipschitz, and
`DG(u_ε) Du_ε → DG(u) U` in `L¹(V)` by dominated convergence with bound `2L|U|`. Conclude with
`TauCeti.hasWeakFDerivOn_of_tendsto_lintegral_enorm_sub` and
`TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure`. The bounds
`|G(u)| ≤ |G(0)| + L|u|` and `‖DG(u) Du‖ ≤ L ‖Du‖` give local `Lᵖ`.

**Checks.**

- For `F = F' = ℝ`, `p < ∞` and `u ∈ TauCeti.W1p μ Ω p`, the derivative is the one of
  `TauCeti.W1p.hasWeakFDerivOn_comp`, `G'(u) ∇u` read through the inner product.
- For linear `G = A`, the statement is §1.2's `D(A ∘ u) = A ∘ Du`.
- Bounded derivative is used: `G(t) = e^{t²}` and `u = log |x| ∈ W^{1,1}_loc(ℝ²)`. Then
  `G(u(x)) = e^{(log |x|)²} ≥ |x|^{−2}` when `|x| ≤ e^{−2}`, and
  `∫_{|x|<e^{−2}} |x|^{−2} dx = ∞`, so `G ∘ u ∉ L¹_loc(ℝ²)`.

*Needs:* §1.2; Tau Ceti `TauCeti.HasWeakFDerivOn.hasFDerivAt_indicator_convolution_normed`,
`TauCeti.HasWeakFDerivOn.fderiv_indicator_convolution_normed`,
`TauCeti.tendsto_eLpNorm_normed_convolution_sub`,
`TauCeti.hasWeakFDerivOn_of_tendsto_lintegral_enorm_sub`,
`TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure`, `TauCeti.W1p.hasWeakFDerivOn_comp`;
Mathlib `ContDiffBump`.

### 2.4 Postcomposition of continuous maps with `C¹` maps (T1(b))

Let `W ⊆ F` be open and `G : F → F'` be `C¹` on `W`. Let `u` be continuous on `Ω` with
`u(Ω) ⊆ W`. Prove (Ziemer1989 Theorem 2.1.11; Mazya2011 §1.1):

- if `TauCeti.HasWeakFDerivOn μ Ω u U`, then
  `TauCeti.HasWeakFDerivOn μ Ω (G ∘ u) (x ↦ DG(u x) ∘ U x)`;
- if `u ∈ W^{1,p}_loc(Ω; F)`, then `G ∘ u ∈ W^{1,p}_loc(Ω; F')` with
  `D(G ∘ u) = DG(u) ∘ Du` almost everywhere.

No bound on `DG` is assumed. Route: on an open `V` with compact closure in `Ω`, `K = u(V̄)` is a
compact subset of `W`. A smooth cut-off equal to `1` on a closed neighbourhood of `K` whose
support has compact closure in `W` (`exists_contDiff_support_eq_eq_one_iff`) turns `G` into a
compactly supported `C¹` map `G̃ : F → F'`
that equals `G` near `K`. Apply §2.3 to `G̃` on `V`, and glue by §1.3. Local `Lᵖ` holds because
`DG ∘ u` is bounded on compact subsets of `Ω`.

**Checks.**

- *Leibniz rule.* `G(s, t) = st` on `F = ℝ²` and `u = (u₁, u₂)` continuous:
  `D(u₁u₂) = u₂ Du₁ + u₁ Du₂`.
- `G = log` on `W = (0, ∞)` and `u = |x|` on `Ω = ℝ² ∖ {0}`: `G ∘ u = log |x|` lies in every
  class on `ℝ² ∖ {0}`, with `D(G ∘ u)(x) = ⟨x, ·⟩/|x|²`. On `Ω = ℝ²` the hypothesis
  `u(Ω) ⊆ W` fails at `0`, and indeed `log |x| ∉ W^{1,2}_loc(ℝ²)`.
- Continuity is used: §2.3's third Check has `u = log |x|` discontinuous at `0` and
  `G(t) = e^{t²}` smooth on `W = ℝ`, with `G ∘ u ∉ L¹_loc`.
- For `E = ℂ`, `p > 2` and `W = F`, a member `u` has a continuous representative (PH1.2's Morrey
  embedding), and the second item for it is PseudoholomorphicCurveAnalysis PH1.2's composition
  at `k = 1`. The second Check, `G = log` on `W = (0, ∞)`, needs `G` only on `W` and lies outside
  that statement.

*Needs:* §1.3, §2.3; Mathlib `exists_contDiff_support_eq_eq_one_iff`.

### Examples

- `u ↦ |u|²` and `u ↦ ⟨u, v⟩` on continuous members, with `D|u|² = 2⟨u, Du⟩`.
- Polar coordinates: for `u ∈ W^{1,p}_loc(ℝ² ∖ {0})`, the composition with
  `(r, t) ↦ (r cos t, r sin t)` on `(0, ∞) × ℝ` is a member, by §2.2 with a non-injective local
  diffeomorphism.

### Dependencies

Layer 1; Tau Ceti's change of variables, mollification and weak-limit theorems; Mathlib's
inverse function theorem, Jacobian change of variables and bump functions.

## Layer 3: null sets and local integrability on manifolds

### 3.1 Chartwise null sets are Riemannian null sets

Let `M` carry `[IsManifold I 1 M]`, `[LindelofSpace M]`, `[MeasurableSpace M] [BorelSpace M]` and
a continuous Riemannian metric. The model may have boundary in this section. Prove that for
every set `s ⊆ M`, `TauCeti.IsNullSet I s` iff `TauCeti.riemannianVolume s = 0` (Lee2012 Ch. 6 and
Ch. 16). Measurability of `s` is not assumed; the volume is the outer measure.

Route. By `TauCeti.riemannianVolume_restrict_source`, on a preferred chart source the volume is
`TauCeti.chartRiemannianVolume`. That is the comap along the chart of
`(Module.finBasis ℝ E).addHaar` weighted by `TauCeti.chartVolumeDensity`. The comap evaluates
arbitrary sets through their images (`MeasurableEmbedding.comap_apply`), a weighted Haar
measure has the null sets of the Haar measure where the weight is positive
(`TauCeti.chartVolumeDensity_pos`), and countably many chart sources cover `M`.

Consequences:

- `∀ᵐ x ∂riemannianVolume, P x` iff `{x | ¬ P x}` is a `TauCeti.IsNullSet`. So any two continuous
  metrics on `M` have the same null sets, and "almost everywhere on `M`" has one meaning.
- On a finite-dimensional real inner product space `E` with its flat metric,
  `TauCeti.riemannianVolume = volume`. The chart is the identity, the density is the constant
  `√det` of the Gram matrix of `Module.finBasis ℝ E`, and that constant times
  `(Module.finBasis ℝ E).addHaar` is `volume` (`Module.Basis.addHaar_eq_iff`).

**Checks.**

- Dimension `0`: the Haar measures of the zero space give mass to `{0}`, so the only chartwise
  null set is `∅`. The Riemannian volume is counting measure (the `0 × 0` Gram determinant is
  `1`), whose only null set is `∅`.
- On `ℝ²`, the unit square has volume `1` for the flat metric and `4` for `4(dx² + dy²)` (the
  density is `√det(4 I₂) = 4`), while a segment is null for both.
- No non-empty open set is null on either side. That is `TauCeti.IsNullSet.interior_eq_empty`
  and `TauCeti.isOpenPosMeasure_riemannianVolume`, which therefore agree.

*Needs:* Tau Ceti `TauCeti.IsNullSet`, `TauCeti.IsNullSet.iUnion`, `TauCeti.riemannianVolume`,
`TauCeti.riemannianVolume_restrict_source`, `TauCeti.chartRiemannianVolume`,
`TauCeti.chartVolumeDensity`, `TauCeti.chartVolumeDensity_pos`; Mathlib
`MeasurableEmbedding.comap_apply`, `MeasureTheory.withDensity_absolutelyContinuous`,
`Module.Basis.addHaar_eq_iff`.

### 3.2 Local Lebesgue classes on manifolds

With `M` as in §3.1 and boundaryless, prove the following for `g : M → B`, `B` a normed group,
and `1 ≤ p ≤ ∞`:
`g ∈ L^p_loc(M, riemannianVolume)` (§1.1 with `s = M`) iff
`g ∘ (extChartAt I x₀).symm ∈ L^p_loc((extChartAt I x₀).target, μ)` for every `x₀ ∈ M` and one,
equivalently every, Haar measure `μ` on `E`. The same holds with the charts of any atlas in
`IsManifold.maximalAtlas`. Route: on a compact subset of a chart source, the chart density is
bounded above and below by positive constants. The comparable-measures criterion of §1.1 then
applies, and §1.1's gluing covers compact subsets of `M`.

- Any two continuous metrics on `M` give the same class `L^p_loc(M)`.
- The class is local: membership on each set of an open cover gives membership on `M`.

**Checks.**

- On `M = ℝ`, the metrics `dx²` and `e^{2x} dx²` give the same local classes but different
  global ones: `g = 1_{[0,∞)} e^{−x}` has `∫ g dx = 1` and `∫ g e^{x} dx = ∞`.
- On `M = (0, ∞)`, `g(x) = 1/x` lies in `L^∞_loc(M)`, as in §1.1.
- On a `0`-manifold every function is in every local class, since compact sets are finite and
  the volume is counting measure.

*Needs:* §1.1, §3.1; Mathlib `isOpen_extChartAt_target`, `contDiffOn_ext_coord_change`; Tau Ceti
`TauCeti.chartVolumeDensity_changeChart`, `TauCeti.setLIntegral_riemannianVolume_of_subset`.

### 3.3 Null sets under `C¹` maps of manifolds

Let `M'` and `M` be boundaryless `C¹` manifolds with models `E'`, `E`. Prove:

- if `θ : M' → M` is a `C¹` local diffeomorphism (`IsLocalDiffeomorph I' I 1 θ`), then
  `θ⁻¹(s)` is a `TauCeti.IsNullSet` whenever `s` is;
- if `f : M' → M` is `C¹`, `finrank E' ≤ finrank E`, and `s ⊆ M'` is a `TauCeti.IsNullSet`
  contained in the union of countably many preferred chart sources `(extChartAt I' xₖ).source`,
  then `f(s)` is a `TauCeti.IsNullSet`. Every `s` has such a cover when `[LindelofSpace M']`,
  since the preferred chart sources form an open cover of `M'`;
- for an open `U ⊆ M` and `s ⊆ U`, `s` is null in the manifold `U` iff it is null in `M`.

Route: read in charts, with §2.1 and `contDiffOn_ext_coord_change`. For the first and third
items, a chart source of the domain is second countable, so countably many open sets on which `θ`
has a `C¹` inverse (first item), or countably many chart sources of `U` (third item), cover it,
and no countability of `M'` or `M` is used.
For the second item, `f(s) = ⋃ₖ f(s ∩ Sₖ)` over the countable cover `(Sₖ)`. In a chart `ψ` of
`M`, `ψ(f(s ∩ Sₖ) ∩ ψ.source)` is the image of the null set
`φₖ(s ∩ Sₖ ∩ f⁻¹(ψ.source))` under the representative `ψ ∘ f ∘ φₖ.symm`, which is differentiable
on the open set `φₖ(Sₖ ∩ f⁻¹(ψ.source))`. That image is null by §2.1, and
`TauCeti.IsNullSet.iUnion` takes the countable union.

**Checks.**

- The covering `t ↦ e^{it}` of the circle by `ℝ` pulls a point back to a translate of `2πℤ`,
  which is countable and null.
- The `C¹` map `(x, y) ↦ (x, 0)` of `ℝ²` is not a local diffeomorphism, and it pulls the null
  line `ℝ × {0}` back to `ℝ²`.
- The projection `ℝ² → ℝ` maps the null line `ℝ × {0}` onto `ℝ`, which is not null. The
  dimension hypothesis of the second item is used.
- The countable cover of the second item is used. Let `D` be `ℝ` with the discrete topology and
  `M' = ℝ × D`, charted by `(x, d) ↦ x` on each slice `ℝ × {d}`: a Hausdorff `C^∞` `1`-manifold
  that is not Lindelöf. The locally constant map `f(x, d) = d` into `ℝ` is `C¹`. The set
  `s = {0} × D` meets each chart source in one point, whose image `{0}` is null, so `s` is
  null; but `f(s) = ℝ` is not. Here `s` meets uncountably many slices, and no countable family
  of chart sources covers it. With `D = ℤ` instead, `M'` is Lindelöf and `f(s) = ℤ` is null.

*Needs:* §2.1; Mathlib `IsLocalDiffeomorph`, `contDiffOn_ext_coord_change`; Tau Ceti
`TauCeti.IsNullSet`, `TauCeti.IsNullSet.iUnion`.

### Examples

- On the round sphere `S²`, a great circle is null and the volume of the upper hemisphere is
  `2π`. Both statements are independent of the chart used to check nullity.

### Dependencies

Tau Ceti's chartwise null sets, Riemannian volume and chart densities; §1.1; §2.1 for §3.3.

## Layer 4: Sobolev classes on manifolds and the weak differential

Throughout, `M` and `N` are as in the Conventions, `1 ≤ p ≤ ∞`, `φ = extChartAt I x₀` and
`ψ = extChartAt J y₀`.

### 4.1 Vector-valued Sobolev functions on a manifold

For `u : M → V`, say `u ∈ W^{1,p}_loc(M; V)` when `u ∘ φ.symm ∈ W^{1,p}_loc(φ.target; V)` for every
`x₀ ∈ M`. Here `φ.target` is open because `I` is boundaryless. A field
`D : (x : M) → (T_xM →L[ℝ] V)` is a *weak differential* of `u` when, for every `x₀` and every
Haar measure `μ` on `E`, `z ↦ D(φ.symm z) ∘ d(φ.symm)_z` is a weak derivative of `u ∘ φ.symm` on
`φ.target` (`TauCeti.HasWeakFDerivOn`). Continuity of `u` is not required. This class carries the
extrinsic description of Layer 8 (Hajlasz2009 line 28).

- *Charts.* Membership and weak differentials can be tested in the charts of any atlas contained
  in `IsManifold.maximalAtlas`. Coordinate changes are `C¹` diffeomorphisms of open sets, and
  §2.2 with §1.3 applies.
- *Existence and uniqueness.* If `M` is Lindelöf and `u ∈ W^{1,p}_loc(M; V)`, then `u` has a weak
  differential. Two weak differentials agree outside a `TauCeti.IsNullSet`. Changing a weak
  differential on a null set gives a weak differential. A total choice of weak differential,
  `0` off the class, is part of the API. Route: glue the chart derivatives over a countable
  cover of `M` by chart sources, as in §1.3.
- *Algebra.* The class is closed under sums, scalar multiples and continuous linear maps
  `A : V → V'`, with `D(A ∘ u) = A ∘ Du`. It is unchanged by modifying `u` on a null set.
- *`C¹` functions.* A `C¹` function lies in the class for every `p`, with weak differential
  `mfderiv u` (the tangent spaces of `V` are `V`).
- *Locality.* Restriction to an open `U ⊆ M` preserves membership. Membership on every set of an
  open cover gives membership on `M` (§1.3).
- *Composition.* If `θ : M' → M` is a `C¹` local diffeomorphism, then
  `u ∘ θ ∈ W^{1,p}_loc(M'; V)` with `D(u ∘ θ)(y) = Du(θ y) ∘ dθ_y` almost everywhere (§2.2,
  §3.3). If `G : V → V'` is `C¹` with bounded derivative, then `G ∘ u` is a member with
  `D(G ∘ u) = DG(u) ∘ Du` almost everywhere (§2.3). The same holds for `G` that is `C¹` on an
  open set containing `u(M)` when `u` is continuous (§2.4).

**Checks.**

- `M = ℝ` and `u = |x|`: `u ∈ W^{1,∞}_loc(ℝ; ℝ)` with `Du = sign(x)` almost everywhere.
- The class depends on the `C¹` structure, not only on the topology. On `ℝ` with the atlas
  `{x ↦ x³}`, which is a different smooth structure, `|x|` read in that chart is `|y|^{1/3}` with
  derivative `|y|^{−2/3}/3`. That lies in `L^p_loc` iff `2p/3 < 1`, so `|x|` is in the class of
  that structure iff `p < 3/2`.
- Discontinuous members: `sign(x₁)` lies in every class on the open submanifold
  `ℝ² ∖ {x₁ = 0}`, with `Du = 0`, and in none on `ℝ²` (§1.3).
- A `0`-manifold: every `u` is a member, and its weak differential is `0`.

*Needs:* §1.2, §1.3, §2.2, §2.3, §2.4, §3.3; Mathlib `extChartAt`, `isOpen_extChartAt_target`,
`contDiffOn_ext_coord_change`, `IsManifold.maximalAtlas`, `mfderiv_eq_fderiv`; Tau Ceti
`TauCeti.HasWeakFDerivOn`, `TauCeti.IsNullSet.iUnion`.

### 4.2 Local representatives and the class `W^{1,p}_loc(M, N)` (T2)

For `f : M → N`, `x₀ ∈ M` and `y₀ ∈ N`, the *local representative* is `ψ ∘ f ∘ φ.symm : E → F`. It
lives on `Ω_{x₀y₀}(f) = φ.target ∩ φ.symm⁻¹(f⁻¹(ψ.source))`. A map `f` lies in
`W^{1,p}_loc(M, N)` when `f` is continuous and every local representative lies in
`W^{1,p}_loc(Ω_{x₀y₀}(f); F)` (HeikkilaPankka2025 lines 22–23).

Prove the independence of the atlases (T2, first half). Let `𝒜 ⊆ IsManifold.maximalAtlas I 1 M`
and `ℬ ⊆ IsManifold.maximalAtlas J 1 N` cover `M` and `N`. For continuous `f`, the following are
equivalent:

- for every `e ∈ 𝒜` and `e' ∈ ℬ`, the representative `e'.extend J ∘ f ∘ (e.extend I).symm` lies in
  `W^{1,p}_loc` on `(e.extend I)(e.source ∩ f⁻¹(e'.source))`;
- `f ∈ W^{1,p}_loc(M, N)`;
- the first item holds for all charts of both maximal atlases.

Route: on overlaps two representatives differ by a coordinate change of `E` on the right and of
`F` on the left. Both are `C¹` (`contDiffOn_ext_coord_change`), the first with invertible
derivative. Representatives are continuous, so §2.2 and §2.4 apply, and §1.3 glues.

- Every `Ω_{x₀y₀}(f)` is open, by continuity of `f` and openness of chart targets.
- The class involves no metric and no orientation. A copy `TauCeti.WithMetric g' M` has the same
  charts, so the same maps lie in the class.
- `W^{1,q}_loc(M, N) ⊆ W^{1,p}_loc(M, N)` for `p ≤ q`. Constant maps are members.
- For a vector space target `N = V` with its single chart, `W^{1,p}_loc(M, V)` is the set of
  continuous members of `W^{1,p}_loc(M; V)` (§4.1).

**Checks.**

- Continuity is part of the definition. `log |x|` lies in `W^{1,1}_loc(ℝ²; ℝ)` (§4.1) but not in
  `W^{1,1}_loc(ℝ², ℝ)`. Without continuity the sets `Ω_{x₀y₀}(f)` need not be open.
- The circle `S¹ ⊆ ℝ²` with angle charts (members of the maximal atlas) and
  `f(t) = (cos |t|^{1/2}, sin |t|^{1/2})` from `ℝ`. In an angle chart the representative is
  `|t|^{1/2}`, with derivative `sign(t)|t|^{−1/2}/2`, in `L^p_loc` iff `p < 2`. So
  `f ∈ W^{1,p}_loc(ℝ, S¹)` iff `p < 2`. A definition requiring global `W^{1,p}` of the
  representatives would also fail for the identity of `ℝ`.
- With the atlas `{x ↦ x³}` on the source `ℝ` and the standard target, `id` lies in the class iff
  `p < 3/2` (§4.1's second Check). Only charts of one `C¹` atlas are compared.

*Needs:* §1.2, §1.3, §2.2, §2.4, §4.1; Mathlib `extChartAt`, `isOpen_extChartAt_target`,
`contDiffOn_ext_coord_change`, `IsManifold.maximalAtlas`; Tau Ceti `TauCeti.WithMetric`.

### 4.3 The weak differential (T2)

A field `D : (x : M) → (T_xM →L[ℝ] T_{f(x)}N)` is a *weak differential* of `f` when `f` is
continuous and, for every `x₀`, `y₀` and Haar measure `μ`, the field
`z ↦ dψ_{f(φ.symm z)} ∘ D(φ.symm z) ∘ d(φ.symm)_z` is a weak derivative of `ψ ∘ f ∘ φ.symm` on
`Ω_{x₀y₀}(f)`. Prove (HeikkilaPankka2025 lines 22–26):

- if `M` is Lindelöf and `f ∈ W^{1,p}_loc(M, N)`, a weak differential exists;
- two weak differentials agree outside a `TauCeti.IsNullSet`, and a field that agrees with a weak
  differential outside a null set is one;
- the chart formula `dψ ∘ Df ∘ (dφ)⁻¹ = D(ψ ∘ f ∘ φ⁻¹) ∘ φ` holds almost everywhere on
  `φ.source ∩ f⁻¹(ψ.source)` for all charts `φ`, `ψ` of the maximal atlases, and the chart
  expressions are a.e.-strongly measurable and locally `Lᵖ`.

The *weak differential* `Df` is a total choice: a weak differential when one exists, and `0`
otherwise. For `N = V` it is the weak differential of §4.1.

**Checks.**

- The direction witness of the Conventions: for `M = N = ℝ`, the chart `φ(x) = 2x` and `f = id`,
  `Df = 1`.
- `f = id_M`: `Df(x) = id` outside a null set.
- Totality: for a discontinuous `f`, `Df = 0` everywhere. For the map into `S¹` of §4.2 at
  `p < 2`, `Df(t)` is `sign(t)|t|^{−1/2}/2` times the angular unit vector, for `t ≠ 0`.

*Needs:* §4.1, §4.2; Tau Ceti `TauCeti.HasWeakFDerivOn.ae_eq`, `TauCeti.IsNullSet.iUnion`;
Mathlib `mfderiv`.

### 4.4 `C¹` maps (T2)

Prove that a `C¹` map `f : M → N` (`ContMDiff I J 1 f`) lies in `W^{1,p}_loc(M, N)` for every
`1 ≤ p ≤ ∞`, that `mfderiv f` is a weak differential of `f`, and hence that `Df = mfderiv f`
outside a `TauCeti.IsNullSet`. Route: its representatives are `C¹`, with derivative the chart
expression of `mfderiv` (`mfderiv_eq_fderiv` in charts), and §1.2 applies.

**Checks.**

- `f(t) = t|t|` on `ℝ` is `C¹` but not `C²`. `Df(t) = 2|t|` everywhere, and `f` is in every
  class.
- `f = |t|` is not `C¹`, yet it is in every class, with `Df = sign(t)`. The theorem gives a
  sufficient condition only.
- The Cantor function, `C¹` with derivative `0` off the Cantor set, is in no class (§1.2), so
  "`C¹` off a closed null set" does not suffice.

*Needs:* §1.2, §4.2, §4.3; Mathlib `mfderiv_eq_fderiv`, `ContMDiff`.

### 4.5 Restriction, locality and metric copies

Prove, for continuous `f : M → N`:

- for an open `U ⊆ M`, `f ∈ W^{1,p}_loc(M, N)` gives `f|_U ∈ W^{1,p}_loc(U, N)`, with
  `D(f|_U) = Df|_U` almost everywhere (open subsets carry
  `TopologicalSpace.Opens.instChartedSpace`);
- if `(Uᵢ)` is an open cover of `M` and `f|_{Uᵢ} ∈ W^{1,p}_loc(Uᵢ, N)` for every `i`, then
  `f ∈ W^{1,p}_loc(M, N)`;
- if `f(M) ⊆ W` for an open `W ⊆ N`, then `f ∈ W^{1,p}_loc(M, N)` iff the corestriction lies in
  `W^{1,p}_loc(M, W)`, with the same weak differential;
- for a second continuous metric `g'` on `M` or on `N`, `f` and the same map between the
  `TauCeti.WithMetric` copies have the same membership. Their weak differentials agree outside a
  null set, since the copies have the same charts.

**Checks.**

- The map into `S¹` of §4.2 is smooth on `(0, ∞)` and on `(−∞, 0)`, hence in every class there,
  but on `ℝ` only for `p < 2`. The cover `{(0, ∞), (−∞, 0)}` misses `0`, so gluing does not
  apply.
- `sign(x₁)` on the half-planes (§1.3's first Check) shows the cover must be an open cover of
  all of `M`.
- `f = tanh` from `ℝ` to `ℝ` corestricts to `(−1, 1)` with the same `Df = 1 − tanh²`.

*Needs:* §1.3, §3.3, §4.2, §4.3; Mathlib `TopologicalSpace.Opens.instChartedSpace`; Tau Ceti
`TauCeti.WithMetric`.

### 4.6 Chain rules on manifolds

Prove (Ziemer1989 Theorem 2.1.11, Theorem 2.2.2):

- *(a)* if `θ : M' → M` is a `C¹` local diffeomorphism (`IsLocalDiffeomorph I' I 1 θ`) and
  `f ∈ W^{1,p}_loc(M, N)`, then `f ∘ θ ∈ W^{1,p}_loc(M', N)` and `D(f ∘ θ)(y) = Df(θ y) ∘ dθ_y`
  almost everywhere on `M'`;
- *(b)* if `g : N → P` is `C¹` (`ContMDiff J I_P 1 g`) and `f ∈ W^{1,p}_loc(M, N)`, then
  `g ∘ f ∈ W^{1,p}_loc(M, P)` and `D(g ∘ f)(x) = dg_{f(x)} ∘ Df(x)` almost everywhere on `M`.

Neither needs a bound on `dθ`, `(dθ)⁻¹` or `dg`. Route: in charts by §2.2 and §2.4, with §3.3 for
the null sets in (a).

**Checks.**

- *(a)* with `θ(y) = 2y` on `ℝ` and `f(t) = |t|^{1/2}`: `D(f ∘ θ)(y) = 2 Df(2y)`, which is
  `sign(y)|2y|^{−1/2}`, the derivative of `√2 |y|^{1/2}`.
- *(b)* with `g(s) = (cos s, sin s)` from `ℝ` to `S¹` and `f(t) = |t|^{1/2}`: `g ∘ f` is the map of
  §4.2, in the class exactly for `p < 2`, the range of `f`.
- The local-diffeomorphism hypothesis of (a) is used. `θ(y₁, y₂) = (y₁, 0)` and
  `f(x) = |x|^{1/2}` on `ℝ²`: `|Df| ∼ |x|^{−1/2}` is in `L^p_loc(ℝ²)` iff `p < 4`, while
  `f ∘ θ = |y₁|^{1/2}` has `∂₁ ∼ |y₁|^{−1/2}`, in `L^p_loc(ℝ²)` iff `p < 2`. For `2 ≤ p < 4`, `f`
  is in the class and `f ∘ θ` is not.

*Needs:* §2.2, §2.4, §3.3, §4.2, §4.3; Mathlib `IsLocalDiffeomorph`, `ContMDiff`.

### Examples

- The covering `ℝ → S¹` and `f : S¹ → N`: `f` is in the class iff its periodic lift is (§4.5 and
  §4.6(a) in both directions, the covering being a local diffeomorphism with local inverses).
- Inclusions of open subsets, charts and `C¹` diffeomorphisms are in every class.

### Dependencies

Layers 1–3; Mathlib's charts, maximal atlases, `mfderiv` and local diffeomorphisms; Tau Ceti's
`TauCeti.WithMetric` and null sets.

## Layer 5: the operator norm of the differential

Throughout, `M` and `N` carry continuous Riemannian metrics, `M` is Lindelöf with
`[MeasurableSpace M] [BorelSpace M]`, and `vol_M = TauCeti.riemannianVolume`.

### 5.1 The norm `‖Df‖` and its chart comparison

For `f ∈ W^{1,p}_loc(M, N)` consider `x ↦ ‖Df(x)‖`, the operator norm from `(T_xM, g_M)` to
`(T_{f(x)}N, g_N)` (HeikkilaPankka2025 line 26; Rickman1993 Ch. I §1). Prove:

- `x ↦ ‖Df(x)‖` is a.e.-strongly measurable for `vol_M`;
- *chart comparison:* for charts `φ`, `ψ` and a compact `K ⊆ φ.source ∩ f⁻¹(ψ.source)`, there is
  `C ≥ 1` with `C⁻¹ ‖D(ψ ∘ f ∘ φ⁻¹)(φ x)‖ ≤ ‖Df(x)‖ ≤ C ‖D(ψ ∘ f ∘ φ⁻¹)(φ x)‖` for almost every
  `x ∈ K`, the left norms being those of `E` and `F`. The metrics are continuous and the chart
  derivatives are continuous and invertible, so all four comparison factors are bounded on `K`;
- for `C¹` `f`, `‖Df‖ = ‖mfderiv f‖` almost everywhere (§4.4);
- `‖Df‖` does not depend on orientations.

**Checks.**

- `f = id` from flat `ℝ` to `ℝ` with `4 dt²` gives `‖Df‖ = 2`. A norm computed in charts with the
  norms of the models would give `1`.
- The map into `S¹` of §4.2, with the round metric of radius `1`: `‖Df(t)‖ = |t|^{−1/2}/2`. With
  radius `3`: `3|t|^{−1/2}/2`.
- Chart dependence of the naive norm: in the chart `φ(x) = 2x` of the source, the representative
  of `id` has norm `1/2`, while `‖Df‖ = 1`.

*Needs:* §4.3, §4.4, §3.1; Mathlib `Bundle.RiemannianBundle`,
`IsContinuousRiemannianBundle`.

### 5.2 The `L^p` characterisation (T3)

Prove: if `f ∈ W^{1,1}_loc(M, N)` and `1 ≤ p ≤ ∞`, then `f ∈ W^{1,p}_loc(M, N)` iff
`‖Df‖ ∈ L^p_loc(M, vol_M)` (Rickman1993 Ch. I §1; HeikkilaPankka2025 lines 22–26). Route: the
representatives are continuous, hence in every `L^p_loc`. §5.1's chart comparison and §3.2 turn
local `Lᵖ` of `‖Df‖` into local `Lᵖ` of the representatives' derivatives. Compact subsets of
`M` are covered by finitely many compact sets inside chart overlaps.

**Checks.**

- `f(t) = |t|^{1/2}` on flat `ℝ`: `f ∈ W^{1,1}_loc` and `‖Df‖ = |t|^{−1/2}/2`, in `L^p_loc` iff
  `p < 2`, which is the range of the class.
- `f(t) = t log |t|` (with `f(0) = 0`): `‖Df‖ = |log |t| + 1|` is in `L^p_loc` for every finite `p`
  and not in `L^∞_loc`. So `f` lies in `W^{1,p}_loc` for every finite `p` and not for `p = ∞`.
- The hypothesis `f ∈ W^{1,1}_loc` is used. The Cantor function has classical derivative `0`
  almost everywhere, so a pointwise "`‖Df‖ = 0 ∈ L^p_loc`" would hold, but it is in no class.

*Needs:* §3.2, §4.2, §4.3, §5.1.

### 5.3 Comparable metrics

Let `g_M`, `g'_M` be continuous metrics on `M` with `a|v| ≤ |v|' ≤ b|v|` for all tangent vectors,
`0 < a ≤ b`. Let `g_N`, `g'_N` on `N` satisfy `α|w| ≤ |w|' ≤ β|w|`, `0 < α ≤ β`. Prove that every
linear `A : T_xM → T_yN` has `(α/b)‖A‖ ≤ ‖A‖' ≤ (β/a)‖A‖`. Hence
`(α/b)‖Df‖ ≤ ‖Df‖' ≤ (β/a)‖Df‖` almost everywhere, the weak differential being metric-free up to
a null set (§4.5). Moreover any two
continuous metrics are uniformly comparable on each compact subset, so T3's condition does not
depend on the metrics.

**Checks.**

- `g'_N = c² g_N`, `g'_M = g_M`: `a = b = 1`, `α = β = c`, and `‖A‖' = c‖A‖` attains both bounds.
- `ℝ²` with `g' = dx² + 4 dy²` against the flat metric on the target (`α = 1`, `β = 2`), and the
  identity from flat `ℝ²`: `‖id‖' = 2 = β/a`.
- `ℝ` with `e^{2x} dx²` on the target is not comparable to `dx²` on `ℝ`. The identity from flat
  `ℝ` has `‖id‖' = e^{x}`, unbounded on `ℝ` and bounded on compact sets.

*Needs:* §4.5, §5.1, §5.2.

### Examples

- For a smooth map between closed Riemannian manifolds, `‖Df‖` is continuous and bounded, so
  `f ∈ W^{1,∞}_loc(M, N)`.

### Dependencies

Layers 3 and 4; Mathlib's Riemannian bundles; Tau Ceti's Riemannian volume.

## Layer 6: Jacobians

### 6.1 The oriented Jacobian of a linear map

Let `V`, `W` be real inner product spaces of dimension `n` with orientations
`o_V`, `o_W : Orientation ℝ · (Fin n)`. For linear `A : V → W` define the *oriented Jacobian*
`J(A)` as the unique scalar with `A^*(o_W.volumeForm) = J(A) · o_V.volumeForm`. It exists and is
unique because every alternating `n`-form on `V` is a multiple of the determinant of a basis
(`AlternatingMap.eq_smul_basis_det`) and `o_V.volumeForm` is non-zero: it takes the value `±1` on
every orthonormal basis (`Orientation.abs_volumeForm_apply_of_orthonormal`). Both facts hold for
`n = 0`, where the only basis is the empty family. This is the Jacobian
of MartioRickmanVaisala1969 line 124 and Rickman1993 Ch. I §1 when `V = W = ℝⁿ`.

- *Basis formula.* For every orthonormal basis `b : Fin n → V`,
  `J(A) = o_V.volumeForm b · o_W.volumeForm (A ∘ b)`, since `o_V.volumeForm b = ±1`. When `b` is
  positively oriented, `o_V.volumeForm b = 1` (`Orientation.volumeForm_robust`) and
  `J(A) = o_W.volumeForm (A ∘ b)`. Such a basis exists when `n ≥ 1`
  (`Orientation.finOrthonormalBasis`). It does not exist when `n = 0` and `o_V` is the negative
  orientation, since the empty basis is positively oriented (`Module.Basis.orientation_isEmpty`).
- For linear `B : W → X` with `X` oriented of dimension `n`, `J(B ∘ A) = J(B) J(A)`. Also
  `J(id_V) = 1`, and `J(cA) = cⁿ J(A)`.
- For `V = W` with `o_V = o_W`, `J(A) = det A` (`LinearMap.det`).
- Reversing exactly one of `o_V`, `o_W` negates `J(A)`, and reversing both leaves it unchanged
  (`Orientation.volumeForm_neg_orientation`).
- `|J(A)| = normDet(A)` (`LinearMap.normDet`). So `J(A) ≠ 0` iff `A` is bijective, and `J(A) > 0`
  iff `A` is bijective and carries `o_V` to `o_W`.
- *Hadamard's inequality:* `|J(A)| ≤ ‖A‖ⁿ`, from the basis formula and
  `Orientation.abs_volumeForm_apply_le` applied to `A ∘ b` for an orthonormal basis `b`. Equality
  holds when `A` is a non-negative multiple of a linear isometry.
- For linear isometric equivalences `U : V' ≃ V` and `U' : W ≃ W'`, `J(U' ∘ A ∘ U)` is `J(A)` times
  the signs `J(U)`, `J(U') ∈ {±1}`.
- For orthonormal bases `b` of `V` and `b'` of `W`, both indexed by `Fin n`,
  `J(A) = o_V.volumeForm b · o_W.volumeForm b' · det[A]`, where `[A]` is the matrix of `A` in these
  bases and the two signs are `±1`. So `J` is a polynomial in the matrix entries, hence
  continuous. For `n = 0` the matrix is empty with determinant `1`.

**Checks.**

- `A = diag(2, 1)` on `ℝ²` with the standard orientation on both sides: `J(A) = 2 = det A`,
  `normDet(A) = 2`, and `‖A‖² = 4 ≥ 2`.
- `R = diag(−1, 1)`: `J(R) = −1` from the standard orientation to itself, and `J(R) = +1` from the
  standard orientation to its negative. The unsigned `|det R| = 1` would make `R` and the identity
  indistinguishable.
- Orthonormal bases are used. For `id : ℝ² → ℝ²`, the matrix in the bases `(2e₁, e₂)` and
  `(e₁, e₂)` is `diag(2, 1)` with determinant `2`, while `J(id) = 1`.
- The direction of the pullback: `J(diag(2, 1)) = 2`. A definition through
  `(A⁻¹)^* vol_V = J vol_W` would give `1/2`.
- Dimension `0`: the volume form of a zero-dimensional space is `±1` on the empty family, so
  `J(A) = 1` when `o_V` and `o_W` are both positive or both negative, and `−1` otherwise.
  `normDet(A) = 1 = |J(A)|`, and Hadamard reads `1 ≤ ‖A‖⁰ = 1`. When `o_V` is negative no
  positively oriented basis exists. A definition as `o_W.volumeForm (A ∘ b)` with `b` the empty
  basis would ignore `o_V` and give `+1` for `o_V` negative and `o_W` positive.

*Needs:* Mathlib `Orientation.volumeForm`, `Orientation.volumeForm_robust`,
`Orientation.volumeForm_neg_orientation`, `Orientation.abs_volumeForm_apply_le`,
`Orientation.abs_volumeForm_apply_of_orthonormal`, `Orientation.volumeForm_map`,
`Orientation.finOrthonormalBasis`, `Module.Basis.orientation_isEmpty`,
`AlternatingMap.eq_smul_basis_det`, `LinearMap.det`,
`LinearMap.normDet`, `LinearMap.normDet_eq_abs_det`, `LinearMap.normDet_eq_prod_singularValues`.

### 6.2 The Jacobian of a Sobolev map (T4)

Let `M`, `N` have dimension `n`, carry continuous metrics and orientations
`o_M : TauCeti.Manifold.Orientation I M (Fin n)`, `o_N : TauCeti.Manifold.Orientation J N (Fin n)`,
and let `M` be Lindelöf with `[MeasurableSpace M] [BorelSpace M]`. For `f ∈ W^{1,p}_loc(M, N)`
define `J_f(x) = J(Df(x))`, computed with the tangent orientations `o_M.orientationAt x`,
`o_N.orientationAt (f x)` and the metrics (HeikkilaPankka2025 lines 25–27). Prove:

- `(Df(x))^* (vol_N)_{f(x)} = J_f(x) (vol_M)_x` for every `x`, with
  `vol = TauCeti.riemannianVolumeForm`.
  Any function `j` with `(Df)^* vol_N = j vol_M` almost everywhere equals `J_f` almost
  everywhere;
- `J_f` is a.e.-strongly measurable for `vol_M`, and `|J_f| = normDet(Df)` everywhere;
- replacing `o_M` or `o_N` by its negative negates `J_f`, and replacing both leaves it unchanged;
- *chart formula:* for preferred charts `φ` at `x₀` and `ψ` at `y₀`, for almost every
  `x ∈ φ.source ∩ f⁻¹(ψ.source)`,

      J_f(x) = ε_M(x) ε_N(f x) · det[D(ψ ∘ f ∘ φ⁻¹)(φ x)] · ρ_N(f x) / ρ_M(x).

  Here `det[·]` is the determinant of the matrix in the bases `Module.finBasis ℝ E` and
  `Module.finBasis ℝ F`, reindexed by `Fin n`, and `ρ_M`, `ρ_N` are `TauCeti.chartVolumeDensity` of
  the two charts. `ε_M(x) = ±1` according as the chart frame of `Module.finBasis ℝ E` at `x` is
  positively or negatively oriented, and likewise `ε_N`. In positively oriented charts both signs
  are `1` (Lee2012 Ch. 15);
- for `C¹` `f`, `J_f = J(mfderiv f)` almost everywhere. If `f` is orientation preserving at `x`
  (`TauCeti.Manifold.Orientation.IsOrientationPreservingAt`), then `J(mfderiv f x) > 0`.

**Checks.**

- `M = N = ℝ`, flat, standard orientations: `J_f = f'` almost everywhere. With the metric
  `4 dt²` on the target, `ρ_N = 2` and `J_f = 2f'`. A Jacobian taken as the determinant of the
  representative without densities would give `f'`, contradicting `|J_f| = normDet(Df) = 2|f'|`.
- The identity of `M` from `(M, o)` to `(M, −o)`, `M` non-empty: `J_f = −1`.
- The fold `F(x₁, x₂) = (|x₁|, x₂)` of `ℝ²`: `J_F = sign(x₁)` almost everywhere and `‖DF‖ = 1`. An
  unsigned Jacobian would give `1`.

*Needs:* §4.3, §4.4, §5.1, §6.1, §3.1; Tau Ceti `TauCeti.Manifold.Orientation`,
`TauCeti.Manifold.Orientation.orientationAt`, `TauCeti.Manifold.Orientation.orientationAt_neg`,
`TauCeti.Manifold.Orientation.IsOrientationPreservingAt`, `TauCeti.riemannianVolumeForm`,
`TauCeti.chartVolumeDensity`, `TauCeti.chartVolumeDensity_changeChart`.

### 6.3 Hadamard's inequality and integrability

Prove that, in the setting of §6.2, `|J_f(x)| ≤ ‖Df(x)‖ⁿ` for every `x` (Rickman1993 Ch. I §1).
Hence `f ∈ W^{1,p}_loc(M, N)` gives `J_f ∈ L^{p/n}_loc(M, vol_M)`, with `p/n` computed in
`[0, ∞]` (`∞/n = ∞`). In particular `J_f ∈ L¹_loc(M, vol_M)` when `p ≥ n ≥ 1`, which includes
the borderline `p = n` of HeikkilaPankka2025 line 23. Route: §6.1's Hadamard inequality
pointwise, and T3.

**Checks.**

- The radial map `f(x) = x |x|^{−1/2}` of `ℝ²`: the singular values of `Df(x)` are `|x|^{−1/2}`
  (tangential) and `|x|^{−1/2}/2` (radial). So `‖Df‖ = |x|^{−1/2}` and `J_f = |x|^{−1}/2`.
  Hadamard reads `|x|^{−1}/2 ≤ |x|^{−1}`. `‖Df‖ ∈ L^p_loc` iff `p < 4`, and `J_f ∈ L^q_loc` iff
  `q < 2`, which is the bound `p/n` with `n = 2`.
- Equality: a conformal linear map `λU` has `|J| = λⁿ = ‖λU‖ⁿ`.
- For `p < n` the Jacobian need not be locally integrable. Let `f` on `ℝ²` be the sum of
  `x ↦ λ_k (x − c_k) χ(|x − c_k|/r_k)` over disjoint discs `B(c_k, r_k)` accumulating at a point,
  with `χ = 1` on `[0, 1/2]` and `0` on `[1, ∞)`, `r_k = 2^{−k}` and `λ_k = 2^k/√k`. Then `f` is
  continuous since `λ_k r_k → 0`, and `f ∈ W^{1,p}_loc` for every `p < 2`, since
  `Σ λ_k^p r_k² < ∞`. Yet the inner halves of the discs contribute `π λ_k² r_k²/4 = π/(4k)` to
  `∫ J_f`, which diverges.

*Needs:* §5.2, §6.1, §6.2.

### 6.4 Jacobian measures

For `f ∈ W^{1,p}_loc(M, N)` with `J_f ∈ L¹_loc(M, vol_M)`, define the measures
`μ_f^± = vol_M.withDensity (J_f)^±`, where `(J_f)^+ = max(J_f, 0)` and `(J_f)^− = max(−J_f, 0)`.
The *Jacobian measure* `f^* vol_N` is the signed difference: on a relatively compact Borel `A`
it is `μ_f^+(A) − μ_f^−(A) = ∫_A J_f dvol_M`, and against a bounded Borel `g` with compact support
it is `∫ g J_f dvol_M` (HeikkilaPankka2025 lines 25–27).

- `μ_f^±` are locally finite and absolutely continuous with respect to `vol_M`.
- Reversing one orientation exchanges `μ_f^+` and `μ_f^−`. If `J_f ≥ 0` almost everywhere then
  `μ_f^− = 0`.
- `μ_f^+(A) + μ_f^−(A) ≤ ∫_A ‖Df‖ⁿ dvol_M`.

Prove: let `N` also be Lindelöf with `[MeasurableSpace N] [BorelSpace N]`, so that
`vol_N = TauCeti.riemannianVolume` of `N` is defined. If `f` is a `C¹` open embedding (`C¹`,
injective, with invertible differential) and is orientation preserving at every point, then
`μ_f^− = 0` and `μ_f^+(A) = vol_N(f(A))` for every Borel `A ⊆ M`; here `f(A)` is Borel because
`f` is an open embedding (`Topology.IsOpenEmbedding.measurableEmbedding`). If `f` is orientation
reversing at every point, the roles of `μ_f^+` and `μ_f^−` are exchanged (Lee2012 Ch. 16).
Route: the chart formula of §6.2, `MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`
in charts, `TauCeti.setLIntegral_riemannianVolume_of_subset` on `M` and on `N`, and a countable
cover.

**Checks.**

- `f(x) = 2x` on `ℝ`: `μ_f^+([0, 1]) = ∫_0^1 2 dx = 2 = vol([0, 2])`.
- `f(x) = −x` on `ℝ`: `μ_f^+ = 0` and `μ_f^−([0, 1]) = 1`. A density `|J_f|` would make the two
  maps indistinguishable.
- Injectivity is used: `f(z) = z²` on `ℂ ∖ {0}`, with `J_f = 4|z|²`, and the annulus
  `A = {1 < |z| < 2}`. Then `μ_f^+(A) = 2π ∫_1^2 4r³ dr = 30π`, while `f(A) = {1 < |w| < 4}`
  has area `15π`; the factor `2` is the multiplicity.

*Needs:* §6.2, §6.3, §3.1; Mathlib `MeasureTheory.Measure.withDensity`,
`MeasureTheory.lintegral_image_eq_lintegral_abs_det_fderiv_mul`,
`Topology.IsOpenEmbedding.measurableEmbedding`; Tau Ceti `TauCeti.riemannianVolume`,
`TauCeti.setLIntegral_riemannianVolume_of_subset`.

### Examples

- For an orientation-preserving local isometry `f`, `‖Df‖ = 1 = J_f`.
- For `f(z) = zᵏ` on `ℂ`, `J_f = k² |z|^{2k−2}` and `‖Df‖² = J_f`.

### Dependencies

Layers 4 and 5; Mathlib's oriented volume forms and `LinearMap.normDet`; Tau Ceti's manifold
orientations, Riemannian volume form and chart densities.

## Layer 7: Euclidean domains

### 7.1 Euclidean compatibility (T6)

Let `E`, `F` be finite-dimensional real inner product spaces with their flat metrics, and `Ω ⊆ E`
open, a manifold through `TopologicalSpace.Opens.instChartedSpace` with the restricted metric
(`TauCeti.Manifold.instRiemannianBundleOpen`). For `f : Ω → F` choose `f̃ : E → F` with
`f = f̃ ∘ Subtype.val`. Prove (MartioRickmanVaisala1969 line 124 and lines 332–340):

- `f ∈ W^{1,p}_loc(Ω, F)` iff `f̃` is continuous on `Ω` and `f̃ ∈ W^{1,p}_loc(Ω; F)` for `volume`.
  Equivalently, `f̃` is continuous on `Ω` and has a weak derivative `U` on `Ω` with
  `‖U‖ ∈ L^p_loc(Ω)`;
- then `Df(x) = U(x)` for almost every `x ∈ Ω`, since the tangent spaces of `Ω` and `F` are `E`
  and `F`;
- `TauCeti.riemannianVolume` of `Ω` is `volume` restricted to `Ω`, and `‖Df(x)‖ = ‖U(x)‖`, the
  operator norm for the inner product norms, almost everywhere;
- if `F = E` has dimension `n` and an orientation `o`, and both `Ω` and `E` carry the orientation
  `TauCeti.Manifold.Orientation.model o` (restricted to `Ω` by
  `TauCeti.Manifold.Orientation.restrict`), then `J_f = det U` almost everywhere. At points where
  `f̃` is differentiable with derivative `U(x)`, this is the Jacobian `J(x, f)` of
  MartioRickmanVaisala1969 line 124.

**Checks.**

- `f = id_Ω`: `Df = id`, `‖Df‖ = 1`, `J_f = 1`.
- The reflection `(x₁, x₂) ↦ (x₁, −x₂)` of `ℝ²`: `J_f = −1` with one orientation on both sides.
- `f(z) = z²` on `ℂ = ℝ²` with the orientation of `(1, i)`: `J_f = 4|z|²`, which is
  `|∂f/∂z|² − |∂f/∂z̄|² = |2z|²`.
- The radial map of §6.3: the weak and classical derivatives agree off `0`, and `J_f = |x|^{−1}/2`.

*Needs:* §1.2, §3.1, §4.2, §4.3, §5.1, §6.1, §6.2; Mathlib
`TopologicalSpace.Opens.instChartedSpace`, `riemannianMetricVectorSpace`; Tau Ceti
`TauCeti.Manifold.instRiemannianBundleOpen`, `TauCeti.Manifold.Orientation.model`,
`TauCeti.Manifold.Orientation.restrict`.

### Examples

- On `ℝⁿ`, the maps `x ↦ λx`, `x ↦ Ux` for orthogonal `U`, and `x ↦ x/|x|²` on `ℝⁿ ∖ {0}`. For
  the inversion, `‖Df(x)‖ = |x|^{−2}` and `J_f = −|x|^{−2n}`.

### Dependencies

Layers 1 and 3–6; Mathlib's flat metric and open-subset charts; Tau Ceti's open-subset metric and
model orientation.

## Layer 8: immersions, embeddings and the extrinsic class

### 8.1 Local retractions of immersions

Let `ι : N → V` be `C¹` (`ContMDiff J 𝓘(ℝ, V) 1 ι`) with `mfderiv ι y₀` injective. Prove that
there are an open `U ∋ y₀` in `N`, an open `t ⊆ V` with `ι(U) ⊆ t`, and `r : V → N` that is `C¹` on
`t` with `r(ι y) = y` for every `y ∈ U` (Lee2012 Ch. 4). No injectivity of `ι` is assumed. Route:
`ContMDiffOn.isImmersionAt_iff_injective_mfderiv` gives the immersion normal form. As in
`Manifold.IsImmersionAt.exists_contMDiffOn_retraction`, take `r` to be the inverse domain chart
after the first projection of the splitting, read in the codomain chart. Take `U` to be the
domain-chart source intersected with `ι⁻¹(t)`, in place of the embedding hypothesis there.

**Checks.**

- The inclusion of the unit circle in `ℝ²`: `r(v) = v/|v|` on `t = ℝ² ∖ {0}`.
- `ι(s) = s³` on `ℝ` is a `C^∞` homeomorphism onto `ℝ` with `ι'(0) = 0`. Every left inverse is
  `s ↦ s^{1/3}`, which is not differentiable at `0`, so the injectivity hypothesis is used.
- The figure-eight immersion of `ℝ` into `ℝ²` is not injective, yet has a local retraction on
  each patch, since `U` is a neighbourhood in the source.

*Needs:* Tau Ceti `ContMDiffOn.isImmersionAt_iff_injective_mfderiv`,
`Manifold.IsImmersionAt.exists_contMDiffOn_retraction`; Mathlib `Manifold.IsImmersionAt`.

### 8.2 The extrinsic description of the continuous class (T5)

Let `ι : N → V` be a `C¹` immersion (`C¹` with injective `mfderiv ι y` for every `y`) and let
`f : M → N` be continuous. Prove (Hajlasz2009 line 28; HeikkilaPankka2025 lines 1328–1329):

- `f ∈ W^{1,p}_loc(M, N)` iff `ι ∘ f ∈ W^{1,p}_loc(M; V)`, and then
  `D(ι ∘ f)(x) = dι_{f(x)} ∘ Df(x)` almost everywhere;
- if `V` is an inner product space and `ι` is isometric, `⟨dι v, dι w⟩ = g_N(v, w)` for all
  tangent vectors, then `‖D(ι ∘ f)(x)‖ = ‖Df(x)‖` almost everywhere for every continuous metric on
  `M`.

Route. "Only if" is §4.6(b) with `P = V`. For "if", around `x₀` take §8.1's retraction `r` at
`f(x₀)`. By continuity `f = r ∘ (ι ∘ f)` near `x₀`, with `ι ∘ f` taking values in `t`, so §2.4
applies in charts and §4.5 glues. Isometry makes `dι` a linear isometry onto its image. Smooth
embeddings (`Manifold.IsSmoothEmbedding`), such as those of `exists_embedding_euclidean_of_compact`
for compact `N`, are the case the sources use; an isometric one is the Nash embedding of
HeikkilaPankka2025 line 1328, taken here as a hypothesis.

**Checks.**

- The unit circle in `ℝ²` and `f(t) = (cos |t|^{1/2}, sin |t|^{1/2})`:
  `|D(ι ∘ f)(t)| = |t|^{−1/2}/2 = ‖Df(t)‖`. With `2ι`, which is not isometric, the left side
  doubles.
- The immersion hypothesis is used. `ι(s) = s³` on `ℝ` and `f(t) = t^{1/3}`: `ι ∘ f = id` is
  smooth, while `Df = t^{−2/3}/3` lies in `L^p_loc` iff `p < 3/2`. So for `p ≥ 3/2`,
  `ι ∘ f` is in the class and `f` is not.
- Non-injective immersions suffice for continuous maps. With `ι` the double cover `z ↦ z²` of the
  circle into `ℝ²` and `f(t) = (cos(|t|^{1/2}/2), sin(|t|^{1/2}/2))`, `ι ∘ f` is the map of §4.2.
  Both `ι ∘ f` and `f` lie in the class exactly for `p < 2`.

*Needs:* §2.4, §4.1, §4.2, §4.3, §4.5, §4.6, §5.1, §8.1; Mathlib `Manifold.IsSmoothEmbedding`,
`exists_embedding_euclidean_of_compact`.

### 8.3 The extrinsic class of measurable maps

For a map `ι : N → V` and any `u : M → N`, say `u ∈ W^{1,p}_loc(M, N; ι)` when
`ι ∘ u ∈ W^{1,p}_loc(M; V)` (§4.1) (Hajlasz2009 lines 23–28; Bethuel1991 Introduction). No
continuity is required, so this class carries the discontinuous maps that harmonic-map theory
needs.

- Membership is unchanged by modifying `u` on a `TauCeti.IsNullSet`.
- For injective `ι` and non-empty `N`, the source's formulation agrees. A map `v : M → V` with
  `v ∈ W^{1,p}_loc(M; V)` and `v(x) ∈ ι(N)` outside a null set equals `ι ∘ u` outside a null set
  for some `u` in the class, and conversely.
- For a `C¹` immersion `ι`, the continuous members are exactly `W^{1,p}_loc(M, N)` (§8.2).
- Precomposition with `C¹` local diffeomorphisms of the source preserves the class, with the chain
  rule of §4.1.

**Checks.**

- `u(x) = x/|x|` from the unit ball `B³` to `S² ⊆ ℝ³`: `|D(ι ∘ u)|_HS = √2/|x|`, and
  `∫_{B³} |x|^{−p} dx = 4π ∫_0^1 r^{2−p} dr` is finite iff `p < 3`. So `u ∈ W^{1,p}_loc(B³, S²; ι)`
  for `1 ≤ p < 3`, though `u` is in the continuous class for no `p`.
- `u = sign(x₁)` from `B²` to `S⁰ = {±1} ⊆ ℝ` has a jump, so it is in no class.
- A wrong model asking only `ι ∘ u ∈ L^p_loc` would accept `sign(x₁)`.

*Needs:* §4.1, §8.2; Tau Ceti `TauCeti.IsNullSet`.

### 8.4 Independence of the embedding (T7)

Let `N` be compact and boundaryless, and `ι₁ : N → V₁`, `ι₂ : N → V₂` be `C¹` embeddings
(`Manifold.IsSmoothEmbedding J 𝓘(ℝ, Vᵢ) 1 ιᵢ`). Prove that for every `u : M → N`,
`ι₁ ∘ u ∈ W^{1,p}_loc(M; V₁)` iff `ι₂ ∘ u ∈ W^{1,p}_loc(M; V₂)` (Hajlasz2009 lines 23–28). For every
compactly supported `C¹` map `G : V₁ → V₂` with `G ∘ ι₁ = ι₂`, and such `G` exist,
`D(ι₂ ∘ u) = DG(ι₁ ∘ u) ∘ D(ι₁ ∘ u)` almost everywhere. So `W^{1,p}_loc(M, N; ι)` does not depend
on `ι` among `C¹` embeddings of a closed `N`.

Route: `TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport`, applied to `ι₁`
bundled as a `TauCeti.SmoothEmbedding` with `g = ι₂` and the compact portion `N`, gives `G`.
`G` is `C¹` with compact support, hence of bounded derivative, and `ι₂ ∘ u = G ∘ (ι₁ ∘ u)`; §4.1's
composition with §2.3 concludes. Exchange `ι₁` and `ι₂` for the converse.

**Checks.**

- Compactness is used. Take `N = ℝ`, `ι₁ = id`, `ι₂(s) = (s, exp(exp s))`, a closed smooth
  embedding, `M = B(0, e^{−1}) ⊆ ℝ²` and `u(x) = log log(1/|x|)`. Since
  `|Du| = 1/(|x| log(1/|x|))` and `∫_0^{1/e} dr/(r log²(1/r)) < ∞`, `ι₁ ∘ u ∈ W^{1,2}_loc(M)`.
  The second coordinate of `ι₂ ∘ u` is `1/|x|`, whose gradient has size `|x|^{−2}` with
  `∫ r^{−2} r dr = ∞`, so `ι₂ ∘ u ∉ W^{1,1}_loc(M)`.
- Injectivity is used. With the double cover `z ↦ z²` of `S¹` as `ι₁` and the inclusion as `ι₂`,
  the half-angle map `u(re^{iθ}) = e^{iθ/2}` (`0 ≤ θ < 2π`) on the punctured unit disc has
  `ι₁ ∘ u = z/|z|`, which is smooth there and in every class. But `ι₂ ∘ u` jumps across the
  positive real axis and is in no class.
- Two embeddings of `S¹`: the inclusion into `ℝ²` and `z ↦ (z, z²)` into `ℝ⁴`. For
  `u(x) = x/|x|` on the unit disc both compositions have gradients of size `≍ 1/|x|`, in
  `L^p_loc` iff `p < 2`, as the theorem predicts.

*Needs:* §2.3, §4.1, §8.3; Tau Ceti `TauCeti.SmoothEmbedding`,
`TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport`; Mathlib
`Manifold.IsSmoothEmbedding`.

### Examples

- Maps into the round sphere `Sᵏ ⊆ ℝ^{k+1}` through the isometric inclusion:
  `‖Du‖ = |D(ι ∘ u)|` for continuous `u`, and the hedgehog `x/|x|` for discontinuous ones.

### Dependencies

Layers 2, 4 and 5; Tau Ceti's immersion normal form, retractions and compactly supported
extensions; Mathlib's smooth embeddings and the Whitney embedding.

## Downstream consumers

- **QuasiregularMaps** builds quasiregular maps on `W^{1,n}_loc(M, N)`, `Df`, `‖Df‖`, `J(A)` and
  `J_f`. Its requirements map to sections here as follows: the class to §4.2, §4.4 and §4.5; the
  weak differential and null sets to §3.1 and §4.3; the norm to §5.1–§5.3; the Jacobian to
  §6.1–§6.3; the chain rules to §3.3 and §4.6; the Euclidean case to §1.2 and §7.1. It owns the
  membership of locally Lipschitz maps (its §2.8, through Rademacher's theorem).
- **PseudoholomorphicCurveAnalysis** PH4.1: for a Riemann surface without boundary and `p > 2`,
  its class `W^{1,p}_loc(Σ, M)` is the class of §4.2, since isothermal charts are charts of the
  smooth structure (§4.2's atlas independence). The comparison is a Check of PH4.1 against §4.2.
- **SobolevMapsBetweenManifolds, Part II** starts where this roadmap stops, at the classes of
  Layers 4 and 8 without topology or approximation on them. It owns:
  - the density of smooth maps in `W^{1,p}(M, N)` for `p > dim M` (Hajlasz2009 Theorem 2.1,
    lines 129–130) and for `p = dim M` (Hajlasz2009 lines 138–141), and the topological
    obstructions for `p < dim M` (Bethuel1991);
  - traces and homotopy classes of Sobolev maps, and higher-order classes;
  - approximate differentiability and the tangency of `D(ι ∘ u)` to `ι(N)`;
  - the weak and stationary (p-)harmonic maps of Hajlasz2009 lines 37–53, which need §8.3–§8.4.

## Worked examples

- *The circle map.* `f(t) = (cos |t|^{1/2}, sin |t|^{1/2})` from flat `ℝ` to the round unit
  circle is continuous. In angle charts its representative is `|t|^{1/2}`, so
  `f ∈ W^{1,p}_loc(ℝ, S¹)` iff `p < 2` (§4.2). Its weak differential is
  `sign(t)|t|^{−1/2}/2` times the angular unit vector (§4.3), with `‖Df‖ = |t|^{−1/2}/2` (§5.1),
  in agreement with T3. The inclusion of `S¹` in `ℝ²` is isometric, so
  `|D(ι ∘ f)| = ‖Df‖` (§8.2). With both manifolds oriented, `J_f = Df` read as a number, since
  `n = 1`.
- *The radial stretch.* `f(x) = x|x|^{−1/2}` on `ℝ²`: `‖Df‖ = |x|^{−1/2}`, `J_f = |x|^{−1}/2`, `f`
  lies in `W^{1,p}_loc` iff `p < 4`, and `J_f ∈ L^q_loc` iff `q < 2` (§6.3). The distortion
  `‖Df‖²/J_f = 2` is constant; QuasiregularMaps calls such a map `2`-quasiregular.
- *The hedgehog.* `x/|x|` from `B³` to `S²` lies in the extrinsic class for `p < 3` (§8.3), in no
  continuous class, and the same range results from any `C¹` embedding of `S²` (§8.4).

## References

- `HeikkilaPankka2025`: S. Heikkilä and P. Pankka, *De Rham algebras of closed quasiregularly
  elliptic manifolds are Euclidean*, arXiv 2302.11440v2; lines 20–27 (Sobolev class, `‖Df‖`,
  `J_f`), lines 1328–1329 (the class through an embedding).
- `Hajlasz2009`: P. Hajłasz, *Sobolev mappings between manifolds and metric spaces*, in Sobolev
  Spaces in Mathematics I, Springer, 2009; lines 20–28 (the class through an embedding),
  lines 37–53 (weakly `p`-harmonic maps), lines 129–130 (Theorem 2.1, `p > dim M`), lines
  138–141 (the case `p = dim M`).
- `MartioRickmanVaisala1969`: O. Martio, S. Rickman and J. Väisälä, *Definitions for quasiregular
  mappings*, Ann. Acad. Sci. Fenn. Ser. A I 448 (1969); line 124 (the Jacobian), lines 332–340
  (Definition 2.16, `ACL` and `ACL^p`).
- `Ziemer1989`: W. P. Ziemer, *Weakly Differentiable Functions*, GTM 120; Ch. 2 §2.1, Theorem
  2.1.11 (chain rule), Theorem 2.2.2 (change of variables).
- `Mazya2011`: V. Maz'ya, *Sobolev Spaces*, 2nd ed., Grundlehren 342; §1.1 (local spaces,
  locality, change of variables).
- `Rickman1993`: S. Rickman, *Quasiregular Mappings*, Ergebnisse 26; Ch. I §1 (Sobolev classes,
  the Jacobian, `|J| ≤ ‖Df‖ⁿ`).
- `Lee2012`: J. M. Lee, *Introduction to Smooth Manifolds*, 2nd ed., GTM 218; Ch. 4 (the rank
  theorem), Ch. 6 (sets of measure zero), Ch. 15 (orientations, the Riemannian volume form in
  oriented charts), Ch. 16 (integration and change of variables).
- `Bethuel1991`: F. Bethuel, *The approximation problem for Sobolev maps between two manifolds*,
  Acta Math. 167 (1991); Introduction.
