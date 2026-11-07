# Roadmap: lorentzian geometry

**Summary.** Build the foundations of Lorentzian geometry at finite regularity. Starting from Mathlib's signature theory of real quadratic forms, Mathlib's manifolds with corners and Tau Ceti's smooth nondegenerate metrics and connections, the roadmap develops: Lorentzian scalar products, their causal cones and the causal type of hyperplanes; Lorentzian metrics of class `C^k` and `C^{k,α}` on manifolds with boundary or corners, with `C^0` metrics as first-class objects; the Levi-Civita connection, curvature and geodesics of metrics of finite regularity, with geodesic uniqueness for `C^{1,1}` metrics; time orientations, spacetimes, the time-orientation double cover and `C^k`-extensions; and the null geometry of hypersurfaces, up to the null generators of a null hypersurface and the identification of the characteristic hypersurfaces of the wave operator `□_g` with the null hypersurfaces. The end theorems are the timecone theorem, the hyperplane classification, chart independence of the regularity class, existence, uniqueness and regularity of the Levi-Civita connection of a differentiable nondegenerate metric, geodesic uniqueness for `C^{1,1}` metrics, the two-orientation theorem, the time-oriented extension theorem, the equivalent descriptions of null hypersurfaces, the pregeodesic equation `∇_L L = κ L` of a null normal, and "characteristic for `□_g` if and only if null". Everything a later roadmap on causality, on the Einstein equations or on the acoustical geometry of compressible flow needs in order to state its theorems is defined here.

## Scope and ownership

This roadmap owns: Lorentzian bilinear forms on finite-dimensional real vector spaces and their causal cones (Layer 1); the local Hölder class of maps on subsets of normed spaces that the metric regularity classes need, Lorentzian metrics of class `C^k` (`k ∈ ℕ ∪ {∞}`) and `C^{k,α}` on manifolds over an arbitrary model with corners, causal character of vectors, vector fields and piecewise `C¹` curves (Layer 2); the Levi-Civita connection, Christoffel symbols, curvature and geodesics of nondegenerate metrics of finite regularity (Layer 3); time orientations, spacetimes, the time-orientation double cover, extensions and extendibility (Layer 4); hypersurfaces of class `C^r` given by local defining functions, their causal type, null normals, optical functions, null generators, the wave operator `□_g` of a `C¹` metric, its principal symbol and its characteristic hypersurfaces (Layer 5).

The Levi-Civita theory of Layer 3 is stated for symmetric nondegenerate metrics of every signature, because no step of it uses the signature; this roadmap owns it because it is the first that needs the connection of a metric that is not smooth. The smooth case is in the pinned libraries and is consumed, not rebuilt: Tau Ceti's `TauCeti.Manifold.ContMDiffNondegenerateMetric` and its Levi-Civita connection, Christoffel formula, signature constancy and along-curve compatibility, which the completed HopfRinow roadmap, Layer 1, planned. Mathlib's signature theory (`sigPos`, `sigNeg`, Sylvester's law) and orthonormal diagonalisation are already in the library. Smooth curvature of a smooth connection (`CovariantDerivative.curvatureTensor`, `CovariantDerivative.ricciTensor`) is in Tau Ceti; Layer 3 extends it to `C²` metrics and to the metric contractions of an indefinite metric, and compares with it. The bounded, globally Hölder spaces `TauCeti.HolderSpace` and `TauCeti.CkHolderSpace` on a whole normed space are in Tau Ceti; the local Hölder class of §2.1 differs from them in being local, with no global bound, and in living on relatively open subsets of `range I`.

Left to other roadmaps:

- Causality theory proper — chronological and causal futures `I^±` and `J^±`, the causal ladder, global hyperbolicity, Cauchy surfaces and horizons, domains of dependence of a general spacetime, achronal sets, limit curves, convex neighbourhoods and locally Lipschitz causal curves — is the proposed LorentzianGeometryPartII. The piecewise `C¹` causal curves of §2.6 are written so that the locally Lipschitz class can be added as a larger class with an inclusion.
- The Einstein equations, energy conditions, the Raychaudhuri equation and null expansion, Gauss–Codazzi along null hypersurfaces, trapped surfaces, singularity theorems and inextendibility theorems (for instance the `C^0`-inextendibility of Schwarzschild) belong to roadmaps that consume this one.
- Smooth Riemannian geometry (positive-definite metrics, distance, Hopf–Rinow, comparison) is HopfRinow and RiemannianGeometry; the positive-definite gradient, Hessian and Laplace–Beltrami operator are DifferentialGeometry Layer 12; the Hölder spaces `C^{k,α}(Ω)` and `C^{k,α}_loc(Ω)` on open `Ω ⊆ ℝⁿ` are PDE §1.7, and the normed spaces `C^(k,α)` of bundle sections over a compact base are PseudodifferentialOperators §5.4 (the classes of §2.3 are local predicates on functions and on sections of `TM`, `T*M` and their Hom bundles over manifolds with corners, compact or not, with no norm); the homogeneous principal symbol of a smooth differential operator is PseudodifferentialOperators P1.0; the covering-space smooth structures used by the double cover are DifferentialGeometry Layer 2.3.
- Field theory on fixed Minkowski space, the Lorentz and Poincaré groups, and the variational theory of a fixed smooth Lorentzian metric belong to LocalVariationalFieldTheory (§3.8, LVF6), NoncompactQuantumSymmetry and RelativisticQuantumFieldTheory, which neither supply nor consume the general theory here; the sign comparison with their `(+, −, −, −)` convention is a Check of §1.1. The spacetime side that PositiveMass excludes, and Lorentzian spin structures over a spacetime, are extensions of those roadmaps in their own directions.
- The compressible Euler theory of the acoustical metric is CompressibleEulerEquations; this roadmap proves the pointwise and manifold statements about the acoustical form that it imports (§1.9, §2.5).

## Conventions

- **Spaces.** `V` is a finite-dimensional real vector space; a form is `b : LinearMap.BilinForm ℝ V`. Manifolds are `M` with `[ChartedSpace H M] [IsManifold I ∞ M]` over `I : ModelWithCorners ℝ E H` with `[FiniteDimensional ℝ E]`; boundary and corners are allowed throughout, following DifferentialGeometry's section "Boundary and corners". Only the metric has finite regularity; the manifold is smooth (as in `sbierski2018` §2, line 260, p. 7). `[T2Space M]` and `[SigmaCompactSpace M]` (or second countability) are written exactly where a theorem uses them (gluing, partitions of unity, global uniqueness, the canonical time orientation of the double cover), and in the definition of an extension, whose target is required to be Hausdorff and σ-compact (§4.5). Statements that need a boundaryless model say so with `[I.Boundaryless]` or `[BoundarylessManifold I M]`.
- **Dimension.** `dim V = n + 1`. No lower bound is imposed: the Lorentzian condition forces `dim V ≥ 1`, and the theory is true in dimension 1, where there are no null vectors. Nothing is specialised to four dimensions. In Checks and examples, coordinates on `ℝ^{1+n}` are written `(t, x)` with `t` the time coordinate (the last coordinate of `Fin (n + 1) → ℝ` in §1.9), and `r = |x|`.
- **Signature.** `(−, +, …, +)`: a Lorentzian form is symmetric, nondegenerate and has negative index `sigNeg b.toQuadraticMap = 1`. *Witness:* on `ℝ²` with `η(u, w) = −u⁰w⁰ + u¹w¹`, `η(e₀, e₀) = −1`.
- **Causal character.** `v` is timelike if `b(v, v) < 0`, null if `b(v, v) = 0` and `v ≠ 0`, causal if timelike or null, spacelike if `b(v, v) > 0` or `v = 0`. Timelike, null and spacelike partition `V`; causal means timelike or null. "Null" here is the nonzero isotropic vector (Minguzzi's "lightlike", `minguzzi2019` §1.3, line 304, p. 7); the zero vector is spacelike, as in `minguzzi2019` §1.3, line 306, p. 7. *Witness:* for `η` on `ℝ²`, `e₀` is timelike, `e₀ + e₁` null (`−1 + 1 = 0`), `e₁` and `0` spacelike.
- **Inverse form and gradient.** For nondegenerate `b`, `b♭ = b.toDual hb : V ≃ V*`, `b♯ = b♭⁻¹`, and the inverse (dual) form is `b⁻¹(ξ, ζ) = ξ(b♯ ζ)`. The gradient of a function is `grad u = g♯(du)`, so `g(grad u, X) = du(X)`. *Witness:* for `η`, `b♯(dt) = −e₀` (since `η(−e₀, w) = w⁰`), so `b⁻¹(dt, dt) = −1`.
- **Null normal of an optical function.** `L = −grad u`. *Witness:* in Minkowski space with `u = t − r`, `du = dt − dr`, `grad u = −∂_t − ∂_r`, so `L = ∂_t + ∂_r`, future-directed for `[∂_t]`.
- **Time orientation.** A time orientation is an equivalence class `[T]` of continuous timelike vector fields under `g(T, T') < 0`; a causal `v ∈ T_xM` is future-directed for `[T]` iff `g(T(x), v) < 0`. *Witness:* for `[∂_t]` on Minkowski space, `v = ∂_t + ∂_x` has `g(∂_t, v) = −1 < 0`, so `v` is future-directed and `−v` past-directed.
- **Spacetime.** A connected time-oriented Lorentzian manifold (`minguzzi2019cone` lines 240–244). Chruściel's spacetimes need not be connected (`chrusciel2011` Definition 2.1.1, lines 118–120, p. 4) and Minguzzi's Living Review adds non-compactness (`minguzzi2019` Definition 1.6, line 468, p. 11); both are variants, not the definition used.
- **Curvature.** Lee's convention, shared with Tau Ceti's `CovariantDerivative.curvatureOperator` and RiemannianGeometry R1: `R(X, Y)Z = ∇_X∇_Y Z − ∇_Y∇_X Z − ∇_[X,Y] Z`, `Ric(Y, Z) = tr(X ↦ R(X, Y)Z)`, `Scal = tr_g Ric = g^{ij} Ric_{ij}`. Lorentzian signature changes no sign. *Witness:* for the two-dimensional de Sitter metric `−dt² + cosh²t dx²`, `Scal = 2 (cosh t)''/cosh t = 2`; for the Milne metric `−dt² + t² dx²` on `t > 0`, `Scal = 0`.
- **Wave operator.** `□_g u = tr_g(Hess u)`, with `Hess u(X, Y) = X(Y u) − (∇_X Y)u`; on positive-definite metrics this is DifferentialGeometry's `Δ = div ∘ grad`. *Witness:* on Minkowski space `□ = −∂_t² + Σ_i ∂_i²`, so `□(t²) = −2` and `□(|x|²) = 2n`.
- **Principal symbol.** The real geometric symbol `σ(□_g)(x, ξ) = g_x⁻¹(ξ, ξ)`, characterised by `σ(□_g)(df) = ½ [[□_g, f], f]`, as in PseudodifferentialOperators P1.0's `σ_geom`; the Fourier symbol of that roadmap is `i² σ = −σ`. *Witness:* on Minkowski space `σ(dt) = −1`, `σ(dx¹) = 1`, `σ(dt − dx¹) = 0`.
- **Regularity classes.** `ℛ` ranges over `C^k` for `k ∈ ℕ ∪ {∞}` and `C^{k,α}` for `k ∈ ℕ`, `0 < α ≤ 1`, with `C^{k,α}` meaning: `C^k`, with `k`-th derivatives locally `α`-Hölder (`chrusciel2011` §2.2, footnote 2, lines 234–236, p. 6). This is the *local* Hölder condition, not Mathlib's pointwise `ContDiffPointwiseHolderAt`. The classes are ordered by inclusion: `C^∞ ⊆ C^{k+1} ⊆ C^{k,1} ⊆ C^{k,α} ⊆ C^{k,β} ⊆ C^k` for `β ≤ α`. Every theorem carries the least class its proof needs: the connection needs `C¹` (in fact differentiability), curvature `C²`, geodesic uniqueness `C^{1,1}`, time orientation, causal character and extensions `C^0`.
- **Sign flip.** The field-theory roadmaps use `(+, −, −, −)` (LocalVariationalFieldTheory §3.8). The map `g ↦ −g` turns this roadmap's convention into theirs without changing the set of timelike vectors; this is a Check of §1.1 and is never adopted.

## Exact supplier contracts

### From Mathlib

Baseline `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`. Declarations read at this pin:

- `LinearMap.BilinForm.IsSymm` (`Mathlib/LinearAlgebra/BilinearForm/Properties.lean:88`), `LinearMap.BilinForm.Nondegenerate` (same file, line 291: left separation, the right condition following from symmetry), `LinearMap.BilinForm.toDual` (line 350, the linear equivalence `V ≃ V*` of a nondegenerate form on a finite-dimensional space), `LinearMap.BilinForm.orthogonal`, `LinearMap.BilinForm.finrank_add_finrank_orthogonal` and `LinearMap.BilinForm.restrict_nondegenerate_iff_isCompl_orthogonal` (`Mathlib/LinearAlgebra/BilinearForm/Orthogonal.lean:102, 234, 285`).
- `sigPos` and `sigNeg` (`Mathlib/LinearAlgebra/QuadraticForm/Signature.lean:65, 98`): root-namespace definitions, the maximal dimension of a positive-, respectively negative-definite subspace, `0` on an infinite-dimensional module; `QuadraticMap.Equivalent.sigNeg_eq` (line 133), `QuadraticForm.sigNeg_of_equiv_weightedSumSquares` (line 251), and `QuadraticForm.equivalent_one_neg_one_weighted_sum_squared` (`Mathlib/LinearAlgebra/QuadraticForm/Real.lean:69`), the diagonalisation by `±1` of a nondegenerate real form. `QuadraticMap.associated` (`Mathlib/LinearAlgebra/QuadraticForm/Basic.lean:960`) is the associated symmetric bilinear form `(x, y) ↦ ½(Q(x + y) − Q x − Q y)`, half of the polar form `QuadraticMap.polar`, so that `associated Q x x = Q x` (`QuadraticMap.associated_eq_self_apply`, line 907).
- `ConvexCone` (`Mathlib/Geometry/Convex/Cone/Basic.lean:59`); `HolderOnWith` (`Mathlib/Topology/MetricSpace/Holder.lean`); `iteratedFDerivWithin` and `ContDiffOn`; `ContDiffPointwiseHolderAt` (`Mathlib/Analysis/Calculus/ContDiffHolder/Pointwise.lean:55`), the pointwise class, used only for comparison.
- `ModelWithCorners.nonempty_interior`, `ModelWithCorners.convex_range` and `ModelWithCorners.uniqueDiffOn` (`Mathlib/Geometry/Manifold/IsManifold/Basic.lean:294, 333, 347`): `range I` is a convex set with nonempty interior; `uniqueDiffOn_convex` (`Mathlib/Analysis/Calculus/TangentCone/Real.lean:80`), unique differentiability of a convex set with nonempty interior, and `UniqueDiffOn.inter` (`Mathlib/Analysis/Calculus/TangentCone/Basic.lean:136`), its passage to the intersection with an open set; `OpenPartialHomeomorph.extend`, `OpenPartialHomeomorph.extend_target` and `extChartAt` (`Mathlib/Geometry/Manifold/IsManifold/ExtChartAt.lean:75, 91, 437`): the extended chart `e.extend I = e ≫ I` of a chart `e : OpenPartialHomeomorph M H`, with target `I.symm ⁻¹' e.target ∩ range I ⊆ E`, and the extended chart at a point; `Bundle.contMDiffAt_section` (`Mathlib/Geometry/Manifold/VectorBundle/Basic.lean:204`): a section is `C^n` at `x₀` iff its coordinates `x ↦ (trivializationAt F V x₀ ⟨x, s x⟩).2` in the trivialisation at `x₀` are; `MDifferentiableAt.clm_bundle_apply₂` (`Mathlib/Geometry/Manifold/VectorBundle/Hom.lean:476`): pairing two sections differentiable at `x` with a section of a bilinear-map bundle differentiable at `x` is differentiable at `x`; `ContMDiffSection` (`Mathlib/Geometry/Manifold/VectorBundle/ContMDiffSection.lean`); `contMDiffAt_hom_bundle` and `contMDiffWithinAt_hom_bundle` (`Mathlib/Geometry/Manifold/VectorBundle/Hom.lean:79, 72`), which read the regularity of a section of the bilinear-form bundle in coordinates; `IsSmoothEmbedding` (`Mathlib/Geometry/Manifold/SmoothEmbedding.lean:70`), an immersion that is a topological embedding.
- `CovariantDerivative` (`Mathlib/Geometry/Manifold/VectorBundle/CovariantDerivative/Basic.lean:366`): additivity and the Leibniz rule on sections differentiable at the point, no regularity imposed; `IsCovariantDerivativeOn.congr_of_eventuallyEq` (same file, line 188): locality, `cov σ x` depends only on the germ of `σ` at `x` for `σ` differentiable at `x`, with no separation axiom on `M` (the proof multiplies by the indicator of a neighbourhood); `CovariantDerivative.torsion` (`.../Torsion.lean:119`); `CovariantDerivative.leviCivitaConnection` and `CovariantDerivative.IsLeviCivitaConnection` (`.../LeviCivita.lean:360, 202`), positive-definite smooth metrics only.
- `ODE_solution_unique_of_mem_Ioo` (`Mathlib/Analysis/ODE/ExistUnique.lean:279`), uniqueness for a vector field Lipschitz on a set containing both solutions; `IsPicardLindelof` (`Mathlib/Analysis/ODE/PicardLindelof.lean:80`); `exists_isMIntegralCurveAt_of_contMDiffAt` and `isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless` (`Mathlib/Geometry/Manifold/IntegralCurve/ExistUnique.lean:66, 228`), for a vector field of class `C¹`: local existence at an interior point, respectively uniqueness on open intervals on a boundaryless manifold that is Hausdorff (the second is declared under `[T2Space M]`, line 184).
- `PartitionOfUnity.exists_isSubordinate` (`Mathlib/Topology/PartitionOfUnity.lean:430`) under `[NormalSpace X] [ParacompactSpace X]`, and `SmoothPartitionOfUnity.exists_isSubordinate` (`Mathlib/Geometry/Manifold/PartitionOfUnity.lean:556`) under `[T2Space M] [SigmaCompactSpace M]`; the paracompactness and normality are supplied for manifolds by `paracompact_of_locallyCompact_sigmaCompact` and `NormalSpace.of_paracompactSpace_r1Space` (`Mathlib/Topology/Compactness/Paracompact.lean:285, 298`); `ImplicitFunctionData` (`Mathlib/Analysis/Calculus/Implicit.lean`).

### From Tau Ceti

Baseline `2fd255d997f47c0b5d834ee416c7015d55444ce5`. Declarations read at this pin:

- `TauCeti.Manifold.ContMDiffNondegenerateMetric` (`TauCeti/Geometry/Manifold/VectorBundle/NondegenerateMetric/Basic.lean:73`): a smooth section of `Hom(TM, Hom(TM, ℝ))`, symmetric and nondegenerate in every fibre, no signature; `ContMDiffNondegenerateMetric.mdifferentiableAt_apply` (line 97), the pairing of two vector fields differentiable at `x` with such a metric is differentiable at `x`; `TauCeti.Manifold.tangentBilinFormInCoordinates` (line 130), a bilinear form at `x` read in the tangent trivialisation at `a`; `ContMDiffNondegenerateMetric.signature` and `TauCeti.Manifold.isLocallyConstant_sigPos_sigNeg_of_continuous` (`.../NondegenerateMetric/Signature.lean:63, 104`), local constancy of `(sigPos, sigNeg)` for any *continuous* family of symmetric nondegenerate tangent forms.
- `TauCeti.Manifold.koszulBilinear`, `TauCeti.Manifold.tensorialAt_koszulBilinear_first`, `TauCeti.Manifold.tensorialAt_koszulBilinear_third`, `TauCeti.Manifold.koszulBilinear_sub_two_mul_apply_eq_derivBilinearTensor`, `TauCeti.Manifold.metricProductRule_of_two_apply_eq_koszulBilinear` and `TauCeti.Manifold.torsion_eq_zero_of_two_apply_eq_koszulBilinear` (`.../CovariantDerivative/LeviCivita/Basic.lean:118, 281, 288, 325, 174, 195`): the Koszul expression of a symmetric pointwise bilinear field whose pairings of vector fields differentiable at `x` are differentiable at `x`, its tensoriality, the Koszul identity of a torsion-free connection up to the covariant derivative of the field, and the converse Koszul lemmas; no smoothness of the field is assumed. The converse lemma for compatibility needs only symmetry; the converse lemma for torsion also assumes that `u ↦ (Z ↦ b_x(u, Z(x)))`, over fields `Z` differentiable at `x`, is injective, which pointwise nondegeneracy gives.
- `TauCeti.Manifold.ContMDiffNondegenerateMetric.leviCivitaConnection`, `isLeviCivitaConnection_leviCivitaConnection`, `IsLeviCivitaConnection.uniqueness`, `IsLeviCivitaConnection.christoffelSymbol_eq_fderivWithin` and `isLeviCivitaConnection_ofRiemannianBundle_leviCivitaConnection` (`.../LeviCivita/Nondegenerate/{Existence.lean:102,118; Basic.lean:280,313; Christoffel.lean:195}`): the smooth nondegenerate connection, its uniqueness on differentiable fields, the inverse-matrix Christoffel formula on chart domains including corner points, and the positive-definite comparison.
- `TauCeti.Manifold.christoffelSymbol` and `TauCeti.Manifold.christoffelMap` (`.../CovariantDerivative/LocalFrame.lean:294, 340`); `CovariantDerivative.accelerationWithin`, `CovariantDerivative.accelerationWithin_eq_zero_iff` and `CovariantDerivative.accelerationWithin_comp` (`.../AlongCurve/Acceleration.lean:77, 133, 157`), valid for every covariant derivative; `TauCeti.Manifold.curveVelocityWithin` (`TauCeti/Geometry/Manifold/MFDeriv/Curve.lean:135`); `ContMDiffNondegenerateMetric.IsMetricCompatible.apply_curveVelocityWithin_self_eq_of_accelerationWithin_eq_zero` (`.../AlongCurve/NondegenerateMetric.lean:163`), the smooth case of §3.5.
- `CovariantDerivative.curvatureOperator`, `CovariantDerivative.curvatureTensor`, `CovariantDerivative.ricciTensor` and `CovariantDerivative.riemannCurvatureTensor` (`.../Curvature/{Basic.lean:89, Tensor.lean:152, Ricci.lean:65, Riemann.lean:66}`): the operator has no hypotheses; the pointwise tensors need `[ContMDiffCovariantDerivative cov ∞]` and `[T2Space M]`, and the metric contractions use a `RiemannianBundle`; they are the smooth and positive-definite comparison for §3.4. `ContMDiffNondegenerateMetric.IsLeviCivitaConnection.contMDiffCovariantDerivative` (`.../LeviCivita/Nondegenerate/Regularity.lean:221`): a Levi-Civita connection of a smooth nondegenerate metric is a `ContMDiffCovariantDerivative` of every order `n ≤ ∞`.
- `TauCeti.Manifold.IsPiecewiseContMDiffOn` (`TauCeti/Geometry/Manifold/PiecewisePath.lean:73`): piecewise `C^n` on `[a, b]` for some finite strict partition, existentially.
- `TauCeti.isLocalDiffeomorphAt_of_mfderiv_eq` (`TauCeti/Geometry/Manifold/LocalDiffeomorph/Basic.lean:358`): a `C^n` map, `n ≥ 1`, on an open set, whose differential at an interior point equals a given continuous linear equivalence, is a local diffeomorphism there; `TauCeti.nonempty_contMDiffRiemannianMetric` (`TauCeti/Geometry/Manifold/VectorBundle/Riemannian/Existence.lean:69`): a `C^n` Riemannian metric on a finite-rank bundle over a Hausdorff σ-compact smooth manifold.
- `TauCeti.IsRegularPoint`, `TauCeti.isManifold_regularLevel` and `TauCeti.IsRegularPoint.range_mfderiv_eq_ker_mfderiv` (`TauCeti/Geometry/Manifold/RegularValue.lean`, `.../RegularValue/Level.lean:435`): regular levels of maps on manifolds over a boundaryless model (`[I.Boundaryless]`), with tangent space the kernel of the derivative.
- `TauCeti.Manifold.mgradient`, `TauCeti.Manifold.hessian` and `TauCeti.Manifold.laplaceBeltrami` (`TauCeti/Geometry/Manifold/Riemannian/Gradient/Basic.lean:73`, `.../Riemannian/Laplacian.lean:135, 238`), positive-definite, `Δ = div ∘ grad`.
- `TauCeti.HolderSpace` (`TauCeti/Analysis/Holder/Normed.lean:60`), `TauCeti.C1HolderSpace` (`TauCeti/Analysis/Holder/One.lean:71`) and `TauCeti.CkHolderSpace k α E F` (`TauCeti/Analysis/Holder/Iterated.lean:98`): the normed spaces of bounded continuous globally `α`-Hölder maps on a metric space, and of bounded `C^1`, respectively `C^k`, maps on a whole normed space `E` whose derivatives through order `1`, respectively `k`, are bounded and whose top derivative is globally `α`-Hölder. §2.1 is not a duplicate: its class is a predicate, local (each point has a neighbourhood with a Hölder bound, and no global bound is imposed), and defined on a subset `s` relatively open in `range I` with derivatives within `s`. Every element of `CkHolderSpace k α E F` satisfies `ContDiffLocallyHolderOn k α f Set.univ`, but not conversely: `x ↦ x²` on `ℝ` is `ContDiffLocallyHolderOn 0 1` and unbounded.
- `TauCeti.realCliffordForm` (`TauCeti/LinearAlgebra/CliffordAlgebra/RealForm/Basic.lean:113`): the diagonal form `Σ_{i<p} x_i² − Σ_{i≥p} x_i²` on `Fin (p + q) → ℝ`; the associated bilinear form (`QuadraticMap.associated`) of `TauCeti.realCliffordForm n 1` is the Minkowski form of §1.9, with the time coordinate last.
- `QuadraticForm.sigPos_add_sigNeg_of_nondegenerate`, `QuadraticForm.sigNeg_prod`, `QuadraticForm.posDef_iff_sigNeg_eq_zero_and_radical_eq_bot`, `QuadraticForm.sigPos_smul_of_neg` and `LinearMap.BilinForm.card_le_sigNeg_toQuadraticMap_of_iIsOrtho` (`TauCeti/LinearAlgebra/QuadraticForm/Signature.lean:379, 309, 360, 140, 466`).

### From TauCetiRoadmap.HopfRinow

Completed. Layer 1, "Nondegenerate Levi-Civita supplier": the smooth nondegenerate metric, its musical isomorphisms, signature, Koszul construction, Christoffel formula, positive-definite comparison and along-curve compatibility. Its implementation is the Tau Ceti list above; this roadmap consumes those declarations and extends them to finite regularity in §3.1–§3.5 without changing them.

### From TauCetiRoadmap.DifferentialGeometry

Section "Boundary and corners" (conventions); Layer 2.3, `IsCoveringMap.inducedChartedSpace` and the smoothness of continuous lifts, for the double cover of §4.4; Layers 12.2–12.3, the positive-definite gradient, Hessian and Laplace–Beltrami operator, for the comparisons of §5.3 and §5.5.

### From TauCetiRoadmap.PDE

§1.7: the local Hölder spaces `C^{k,α}_loc(Ω)` on open `Ω ⊆ ℝⁿ`. §2.1 agrees with membership in them on open sets and extends the predicate to relatively open subsets of `range I`.

### From TauCetiRoadmap.PseudodifferentialOperators

P1.0: the homogeneous principal symbol `σ_geom` on the cotangent bundle of a smooth boundaryless manifold, characterised by iterated commutators. Used only for the comparison Check of §5.5.

### From TauCetiRoadmap.RiemannianGeometry

Section "Conventions and suppliers" and R1: the curvature sign convention and the positive-definite curvature identities, used for the comparison Checks of §3.4.

### From TauCetiRoadmap.LocalVariationalFieldTheory

§3.8: the `(+, −, −, −)` convention `η = diag(+1, −1, −1, −1)` for the Minkowski form, used for the sign-flip Check of §1.1.

## How to read the build

Layer 1 is linear algebra on one vector space: the Lorentzian condition, causal character, the two time cones, the reverse Cauchy–Schwarz inequality, orthogonal complements, the causal type of a hyperplane through its conormal, and the Minkowski and acoustical forms. Layer 2 puts these forms on manifolds: a local Hölder class for maps on subsets of a normed space, Lorentzian metrics as continuous sections with a regularity class tested in charts, the continuity of causal character, the operations (restriction, pullback, conformal change, coframes) and piecewise `C¹` causal curves. Layer 3 is the differential calculus of a metric of finite regularity: the Levi-Civita connection of a differentiable nondegenerate metric, its Christoffel symbols and their regularity, curvature of a `C²` metric, geodesics, and existence and uniqueness for `C^{1,1}` metrics. Layer 4 adds global structure on Layer 2 alone: time orientations, their gluing and the two-orientation theorem, future-directed curves, spacetimes, the time-orientation double cover and extensions. Layer 5 uses Layers 1–4: hypersurfaces given by defining functions, their pointwise causal type, null normals, optical functions, null generators, and the wave operator. Layers 3 and 4 are independent of each other, except that one Check of §4.5 uses the scalar curvature of §3.4.

## Layer 1: Lorentzian scalar products and their causal cones

### 1.1 Lorentzian bilinear forms

Define `LinearMap.BilinForm.IsLorentzian b` for `b : LinearMap.BilinForm ℝ V`, `V` finite-dimensional: `b` is symmetric, nondegenerate and `sigNeg b.toQuadraticMap = 1` (`minguzzi2019` §1.3, lines 296–300, p. 7; `oneill1983` Ch. 2, the index of a scalar product). Equivalently `V` has a basis `e₀, …, e_n` in which `b = −e⁰ ⊗ e⁰ + Σ_{i ≥ 1} e^i ⊗ e^i`.

- A form is Lorentzian if and only if it is symmetric and nondegenerate and some basis diagonalises it with exactly one entry `−1` and all others `+1`; the proof combines `QuadraticForm.equivalent_one_neg_one_weighted_sum_squared` with `QuadraticForm.sigNeg_of_equiv_weightedSumSquares`.
- If `b` is Lorentzian then `sigPos b.toQuadraticMap = dim V − 1` and `dim V ≥ 1`, by `QuadraticForm.sigPos_add_sigNeg_of_nondegenerate`.
- Being Lorentzian is invariant under linear equivalences: for `e : V ≃ₗ W`, `b` is Lorentzian iff its transport to `W` is (`QuadraticMap.Equivalent.sigNeg_eq`).
- For `c > 0`, `c • b` is Lorentzian iff `b` is; `−b` is Lorentzian iff `b` is symmetric, nondegenerate and `sigPos b.toQuadraticMap = 1` (`QuadraticForm.sigPos_smul_of_neg`), so for Lorentzian `b`, `−b` is Lorentzian iff `dim V = 2`.
- An orthogonal family of timelike vectors of a Lorentzian form has at most one member (`LinearMap.BilinForm.card_le_sigNeg_toQuadraticMap_of_iIsOrtho`); in particular two timelike vectors are never orthogonal.
- The restriction of `b` to a subspace `W` is Lorentzian iff it is nondegenerate and `W` contains a timelike vector.

*Needs:* Mathlib `LinearMap.BilinForm.IsSymm`, `LinearMap.BilinForm.Nondegenerate`, `sigNeg`, `QuadraticForm.equivalent_one_neg_one_weighted_sum_squared`, `QuadraticForm.sigNeg_of_equiv_weightedSumSquares`, `QuadraticMap.Equivalent.sigNeg_eq`; Tau Ceti `QuadraticForm.sigPos_add_sigNeg_of_nondegenerate`, `QuadraticForm.sigPos_smul_of_neg`, `LinearMap.BilinForm.card_le_sigNeg_toQuadraticMap_of_iIsOrtho`, `QuadraticForm.sigNeg_prod`.

**Checks.**

- The form `η(u, w) = −u⁰w⁰ + u¹w¹` on `ℝ²` is Lorentzian: `sigNeg = 1`, `sigPos = 1`; the Euclidean form `u⁰w⁰ + u¹w¹` has `sigNeg = 0` and is not, so a definition by nondegeneracy alone is refuted.
- The form `diag(−1, 0)` on `ℝ²` is symmetric with `sigNeg = 1` but degenerate (`e₁` is in its radical), so it is not Lorentzian; a definition omitting nondegeneracy would accept it.
- `diag(−1, −1, 1)` on `ℝ³` is nondegenerate with `sigNeg = 2`: not Lorentzian (index two).
- Sign flip: `−η₄ = diag(1, −1, −1, −1)`, the convention of LocalVariationalFieldTheory §3.8, has `sigNeg = 3`, so it is not Lorentzian in this roadmap's sense, while its set of vectors with `(−η₄)(v, v) > 0` equals the set with `η₄(v, v) < 0`; in dimension 2, `−η = diag(1, −1)` is Lorentzian and exchanges timelike and spacelike: `e₀` is timelike for `η` and spacelike for `−η`.
- Dimension 1: `b(x, y) = −xy` on `ℝ` is Lorentzian; the zero space has `sigNeg = 0` and carries no Lorentzian form.
- Agreement with the pinned Clifford form: for `Q = TauCeti.realCliffordForm 3 1` on `Fin 4 → ℝ` (weights `1, 1, 1, −1`), the associated bilinear form `QuadraticMap.associated Q` (half the polar form) has Gram matrix `diag(1, 1, 1, −1)` (off the diagonal `½(Q(e_i + e_j) − Q(e_i) − Q(e_j)) = 0`) and is Lorentzian, with timelike basis vector `e₃` and value `Q(e₃) = −1` at `(e₃, e₃)`; the polar form `QuadraticMap.polar Q` has Gram matrix `diag(2, 2, 2, −2)` and value `−2` at `(e₃, e₃)`, Lorentzian as well but not the bilinear form whose diagonal is `Q`.

### 1.2 The inverse form

Define `LinearMap.BilinForm.dualForm b hb : LinearMap.BilinForm ℝ (Module.Dual ℝ V)` for nondegenerate `b` by `b⁻¹(ξ, ζ) = ξ(b♯ ζ)` with `b♯ = (b.toDual hb).symm` (`chrusciel2011` §2.2, (2.2.3), lines 193–198, pp. 5–6, the contravariant metric `g^♯`).

- `b♭ : V ≃ V*` is an isometry from `b` to `b⁻¹`: `b⁻¹(b♭ u, b♭ w) = b(u, w)`; hence `b⁻¹` is symmetric, nondegenerate and has the signature of `b`, and is Lorentzian iff `b` is.
- `b(b♯ ξ, w) = ξ(w)` for all `w`, which characterises `b♯ ξ`.
- `(c • b)⁻¹ = c⁻¹ • b⁻¹` for `c ≠ 0`; in a basis, the Gram matrix of `b⁻¹` in the dual basis is the inverse of the Gram matrix of `b`.

*Needs:* Mathlib `LinearMap.BilinForm.toDual`; §1.1.

**Checks.**

- For `η` on `ℝ²`: `b♯(dt) = −e₀` and `b♯(dx) = e₁`, so `b⁻¹(dt, dt) = −1`, `b⁻¹(dx, dx) = 1`, `b⁻¹(dt, dx) = 0`. The plausible wrong definition "the Gram matrix of `b` read in the dual basis" agrees on `η`, which is its own inverse, so the next two Checks separate them.
- For `b = diag(−2, 1)`: `b♯(e⁰) = −½ e₀`, so `b⁻¹(e⁰, e⁰) = −½`; the wrong definition gives `−2`.
- For the double null form with Gram matrix `[[0, −2], [−2, 0]]` (`b(e₀, e₁) = −2`): the inverse Gram matrix is `[[0, −½], [−½, 0]]`, so `b⁻¹(e⁰, e¹) = −½` and `b⁻¹(e⁰, e⁰) = 0`; the wrong definition gives `−2`. Rescaling: for `b = 4η`, `b⁻¹(dt, dt) = −¼`.

### 1.3 Causal character of vectors

Define, for any `b` and `v : V`, `LinearMap.BilinForm.IsTimelike b v` (`b v v < 0`), and the companion predicates null (`b v v = 0 ∧ v ≠ 0`), causal (`b v v ≤ 0 ∧ v ≠ 0`) and spacelike (`0 < b v v ∨ v = 0`) (`minguzzi2019` §1.3, lines 301–306, p. 7, with null meaning his "lightlike"; `sbierski2018` §2.1, lines 263–264, p. 7).

- For every `v`, exactly one of timelike, null, spacelike holds; causal is timelike or null.
- Each predicate is invariant under `v ↦ c v` for `c ≠ 0` (causal character of a line), and under isometries.
- For Lorentzian `b` and timelike `v`, the orthogonal complement `v^⊥` is positive definite and `V = ℝv ⊕ v^⊥` (`LinearMap.BilinForm.restrict_nondegenerate_iff_isCompl_orthogonal` and the orthogonal-family bound of §1.1).
- For Lorentzian `b`, a nonzero vector orthogonal to a timelike vector is spacelike; a timelike vector and a nonzero causal vector are never orthogonal; two null vectors are orthogonal iff they are proportional.
- Null vectors exist iff `dim V ≥ 2`.

*Needs:* §1.1; Mathlib `LinearMap.BilinForm.orthogonal`, `LinearMap.BilinForm.restrict_nondegenerate_iff_isCompl_orthogonal`; Tau Ceti `QuadraticForm.posDef_iff_sigNeg_eq_zero_and_radical_eq_bot`.

**Checks.**

- For `η` on `ℝ²`: `η(e₀, e₀) = −1` (timelike), `η(e₀ + e₁, e₀ + e₁) = 0` (null), `η(e₁, e₁) = 1` (spacelike).
- The zero vector is spacelike and neither null nor causal; a definition of null by `b v v = 0` alone would make `0` causal and break the statement that causal vectors lie in the closure of exactly one cone (§1.5).
- In dimension 1 with `b = −xy`, every nonzero vector is timelike and there are no null vectors.
- For the orthogonality statement: `e₀ + e₁` and `e₀ − e₁` are null for `η` with `η(e₀ + e₁, e₀ − e₁) = −2 ≠ 0`, while `e₀ + e₁` and `2e₀ + 2e₁` are orthogonal and proportional.

### 1.4 The time cones

Define `LinearMap.BilinForm.timeCone b v = {w | b w w < 0 ∧ b v w < 0}`, the time cone containing the timelike vector `v` (`chrusciel2011` §2.1, lines 84–98, p. 3; `minguzzi2019` §1.3, lines 308–314, p. 7).

- For timelike `v`, `v ∈ timeCone b v` and `timeCone b (−v) = −timeCone b v`.
- `timeCone b v` is open, and closed under multiplication by positive reals.
- For Lorentzian `b` and timelike `v`: `timeCone b v` is closed under addition, hence is the carrier of a `ConvexCone ℝ V`; for `v' ∈ timeCone b v`, `timeCone b v' = timeCone b v`; and its closure is `{w | b w w ≤ 0 ∧ b v w ≤ 0}`.

*Needs:* §1.3.

**Checks.**

- For `η` on `ℝ²` and `v = e₀`: `w = (2, 1)` has `η(w, w) = −3`, `η(e₀, w) = −2`, so `w ∈ timeCone η e₀`; `w' = (−1, ½)` has `η(w', w') = −¾` and `η(e₀, w') = 1`, so `w' ∈ timeCone η (−e₀)`.
- Degenerate input: for spacelike `v = e₁`, `timeCone η e₁ = {w | η w w < 0 ∧ w¹ < 0}` is not a time cone: it contains `(1, −½)` and `(−1, −½)` (both with `η = −¾`) but not their midpoint `(0, −½)` (`η = ¼`), so it is not convex; every theorem about `timeCone b v` assumes `v` timelike.
- The closure of `timeCone η e₀` contains `0` and the null vector `e₀ + e₁`, but not the null vector `−e₀ + e₁`, since `η(e₀, −e₀ + e₁) = 1 > 0`.

### 1.5 The timecone theorem

Prove, for Lorentzian `b` and timelike `v`, the theorem `LinearMap.BilinForm.IsLorentzian.timelike_eq_timeCone_union`: the timelike vectors are the disjoint union of `timeCone b v` and `timeCone b (−v)`, two nonempty open convex cones exchanged by `w ↦ −w`; prove `LinearMap.BilinForm.IsLorentzian.mem_timeCone_iff`: for `w ∈ timeCone b v` and timelike `w'`, `w' ∈ timeCone b v` iff `b w w' < 0`; and prove `LinearMap.BilinForm.IsLorentzian.causal_mem_closure_timeCone`: every causal vector lies in the closure of exactly one of the two cones, and the two closures meet only in `0` (`chrusciel2011` §2.1, (2.1.1), lines 84–98, p. 3; `minguzzi2019` §1.3, lines 308–309, p. 7; `minguzzi2019cone` lines 236–244; `oneill1983` Ch. 5, the timecone lemmas). Consequently the timelike set has exactly two connected components.

*Proof sketch.* Normalise `b(v, v) = −1` and write `w = a v + w_⊥` with `w_⊥ ∈ v^⊥`, which is a Euclidean space by §1.3. Then `b(w, w) = −a² + ‖w_⊥‖²` and `b(v, w) = −a`, so `timeCone b v = {a > ‖w_⊥‖}`, open and convex. For timelike `w, w'`, `b(w, w') = −aa' + ⟪w_⊥, w'_⊥⟫` and Cauchy–Schwarz in `v^⊥` gives `|⟪w_⊥, w'_⊥⟫| < |a||a'|`, so the sign of `b(w, w')` is `−sign(aa')`. A nonzero causal `w` has `‖w_⊥‖ ≤ |a|` and `a ≠ 0`.

*Needs:* §1.3, §1.4; Mathlib `ConvexCone`.

### 1.6 Reverse Cauchy–Schwarz and reverse triangle inequalities

Prove, for Lorentzian `b` and `u, w` in the closure of one time cone, `−b(u, w) ≥ √(−b(u, u)) √(−b(w, w))`, with equality iff `u` and `w` are linearly dependent (`minguzzi2019` Theorem 1.2, lines 336–348, p. 8). Deduce the reverse triangle inequality `F(u + w) ≥ F(u) + F(w)` for `F(w) = √(−b(w, w))` on the closure of a time cone, with equality iff `u` and `w` are linearly dependent (`minguzzi2019` Theorem 1.3, lines 349–368, pp. 8–9), and concavity of `F` there (`minguzzi2019` Corollary 1.4, line 371, p. 9).

*Needs:* §1.4, §1.5.

### 1.7 Orthogonal complements and null hyperplanes

Prove, for Lorentzian `b`: for timelike `v`, `v^⊥` is positive definite of dimension `dim V − 1`; for null `n`, `n^⊥` is a hyperplane containing `n`, `n^⊥ ∩ (n^⊥)^⊥ = ℝn`, every vector of `n^⊥` not in `ℝn` is spacelike, and the null vectors of `n^⊥` are exactly the nonzero multiples of `n` (`galloway2004` §3, lines 176–181, p. 5; `oneill1983` Ch. 5).

*Needs:* §1.3, §1.5; Mathlib `LinearMap.BilinForm.finrank_add_finrank_orthogonal`.

### 1.8 The causal type of a hyperplane

Prove the hyperplane classification `LinearMap.BilinForm.IsLorentzian.hyperplane_classification`: for Lorentzian `b`, a nonzero covector `ξ` and `W = ker ξ`,

- the restriction of `b` to `W` is positive definite iff `b⁻¹(ξ, ξ) < 0`;
- the restriction is Lorentzian iff `b⁻¹(ξ, ξ) > 0`;
- the restriction is degenerate iff `b⁻¹(ξ, ξ) = 0`, iff `W` contains a null vector and no timelike vector; then `W^⊥ = ℝ b♯ξ ⊆ W`, the radical of the restriction is the line `W ∩ W^⊥ = ℝ b♯ξ`, and the null vectors of `W` are exactly the nonzero elements of that radical line (§1.7), every other nonzero vector of `W` being spacelike

(`galloway2004` §3, lines 174–182, p. 5, for the degenerate case; `oneill1983` Ch. 5 for the three cases). Call `W` spacelike, timelike or null accordingly; the conormal `ξ` is then timelike, spacelike or null for `b⁻¹`.

*Proof sketch.* `N = b♯ξ` satisfies `b(N, w) = ξ(w)`, so `W = N^⊥` and `b(N, N) = b⁻¹(ξ, ξ)`. If `N` is timelike, §1.3 applies. If `N` is spacelike, `V = ℝN ⊕ W` orthogonally and `QuadraticForm.sigNeg_prod` gives `sigNeg(b|_W) = 1`. If `N` is null, §1.7 applies to `n = N`. The second description of the degenerate case: a positive-definite `W` has no null vector and a Lorentzian `W` has a timelike vector.

*Needs:* §1.2, §1.3, §1.7; Tau Ceti `QuadraticForm.sigNeg_prod`.

### 1.9 The Minkowski and acoustical forms

Record the following forms and their computations (`minguzzi2019` §1.3, lines 296–300, p. 7; `luoyu2023` line 95; `luoyu2023b` lines 211–214):

- The Minkowski form on `ℝ^{n+1} = Fin (n + 1) → ℝ` is the associated bilinear form (`QuadraticMap.associated`, half the polar form) of `TauCeti.realCliffordForm n 1`, so that its value at `(v, v)` is `TauCeti.realCliffordForm n 1 v`, with the time coordinate `t = x_n` last; it is Lorentzian, `e_n` is timelike, and `ker dt` is spacelike.
- Orthonormal coframes: for a basis `θ⁰, …, θⁿ` of `V*`, the form `−θ⁰ ⊗ θ⁰ + Σ_{i ≥ 1} θ^i ⊗ θ^i` is Lorentzian, with dual basis orthonormal.
- The acoustical form on `ℝ × ℝⁿ`: for `c > 0` and `v ∈ ℝⁿ`, `a_{c,v}((τ, ξ), (τ', ξ')) = −c² ττ' + ⟪ξ − τv, ξ' − τ'v⟫` is the coframe form of `θ⁰ = c dt`, `θ^i = dx^i − v^i dt`, hence Lorentzian; `B = (1, v)` is timelike with `a(B, B) = −c²`; `a⁻¹ = −c⁻² B ⊗ B + Σ_i ∂_i ⊗ ∂_i`, so `a⁻¹(dt, dt) = −c⁻²` and `ker dt` is spacelike; `(τ, ξ)` is causal iff `(τ, ξ) ≠ 0` and `|ξ − τv| ≤ c|τ|`, null iff in addition equality holds.

*Needs:* §1.1, §1.2, §1.3, §1.8; Tau Ceti `TauCeti.realCliffordForm`; Mathlib `QuadraticMap.associated`.

**Checks.**

- Time coordinate last: `TauCeti.realCliffordForm 1 1` on `Fin 2 → ℝ` has weights `1, −1`, so `Q(e₁) = −1` and `Q(e₀) = 1`; the timelike basis vector is `e₁` and `ker dt = ker e¹ = ℝe₀` is spacelike. Reading the time coordinate first would make `e₀` timelike, the opposite.
- The shift of the acoustical form: for `c = 2`, `v = (1, 0)`, the vector `(1, (3, 0))` has `a_{c,v} = −4 + |(3, 0) − (1, 0)|² = 0`, so it is null; the unshifted form `−c²ττ' + ⟪ξ, ξ'⟫` gives `−4 + 9 = 5` (spacelike) and the form with the opposite shift `ξ + τv` gives `−4 + 16 = 12`. The sound cone is centred on `B = (1, v)`.
- The inverse form: for `c = 2`, `v = (1, 0)` on `ℝ × ℝ²`, the Gram matrix of `a` in `(∂_t, ∂_1, ∂_2)` is `[[−3, −1, 0], [−1, 1, 0], [0, 0, 1]]`, with inverse `[[−¼, −¼, 0], [−¼, ¾, 0], [0, 0, 1]] = −¼ B ⊗ B + Σ_i ∂_i ⊗ ∂_i`, so `a⁻¹(dt, dt) = −¼ = −c⁻²`; reading the Gram matrix of `a` in the dual basis (the wrong inverse of §1.2) gives `−3`.
- The sound speed must be nonzero: for `c = 0` the form `⟪ξ − τv, ξ' − τ'v⟫` has `B = (1, v)` in its radical (`a(B, w) = ⟪v − v, ·⟫ = 0` for every `w`), so it is degenerate and not Lorentzian.

### Examples

- `η` on `ℝ²` (Checks of §§1.1–1.4) and the Minkowski form on `ℝ^{n+1}` (§1.9).
- The acoustical form with `c = 2`, `v = (1, 0)` on `ℝ × ℝ²`: `a(B, B) = −4` for `B = (1, 1, 0)`; `(1, (3, 0))` is null since `|(3, 0) − (1, 0)| = 2 = c`; `(1, (1, 0))` is timelike; `a⁻¹(dt, dt) = −¼`.
- In `1 + 1` dimensions the acoustical form `−c²dt² + (dx − v dt)²` has the two null vectors `∂_t + (v ± c)∂_x`: `a = −c² + (±c)² = 0` (`luoyu2023b` lines 211–214).
- The reverse Cauchy–Schwarz inequality for `η` on `ℝ²`: `u = (2, 1)`, `w = (1, 0)` give `2 ≥ √3`, strict; the null pair `(1, 1)`, `(1, −1)` gives `2 > 0`; the proportional null pair `(1, 1)`, `(2, 2)` gives `0 = 0`; for `u` and `−u` in opposite cones, `−b(u, −u) = b(u, u) < 0`, so the same-cone hypothesis is necessary.
- Hyperplanes for `η` on `ℝ²`: `ξ = dt` gives `b⁻¹ = −1` and `ker dt = ℝe₁` spacelike; `ξ = dx` gives `b⁻¹ = 1` and `ker dx = ℝe₀` Lorentzian; `ξ = dt − dx` gives `b♯ξ = −e₀ − e₁`, `b⁻¹(ξ, ξ) = −1 + 1 = 0` and `ker ξ = ℝ(e₀ + e₁)`, a null line.

### Dependencies

Mathlib signature theory, bilinear forms and convex cones; Tau Ceti `TauCeti/LinearAlgebra/QuadraticForm/Signature.lean` and `TauCeti.realCliffordForm`; LocalVariationalFieldTheory §3.8 for the sign-flip Check only.

## Layer 2: Lorentzian metrics of finite regularity

### 2.1 Local Hölder regularity on subsets of a normed space

Define `ContDiffLocallyHolderOn k α f s` for normed spaces `F, G`, `f : F → G`, `s : Set F`, `k : ℕ` and `α : ℝ≥0`: `f` is `ContDiffOn ℝ k` on `s` and every `x ∈ s` has a neighbourhood `U` within `s` and a constant `C` with `HolderOnWith C α (iteratedFDerivWithin ℝ k f s) U` (`chrusciel2011` §2.2, footnote 2, lines 234–236, p. 6). It is meant for `0 < α ≤ 1` and for sets `s` that are relatively open in `range I`, a convex set with nonempty interior (`ModelWithCorners.convex_range`, `ModelWithCorners.nonempty_interior`); on such `s` the within-derivatives are canonical by `ModelWithCorners.uniqueDiffOn` and `UniqueDiffOn.inter`. More generally, a set `s` relatively open in a convex set `K` with nonempty interior is a set of unique differentiability (`uniqueDiffOn_convex`, `UniqueDiffOn.inter`), and every `x ∈ s` has convex neighbourhoods `s ∩ B(x, r) = K ∩ B(x, r)` within `s`.

- Monotonicity: for `β ≤ α`, `ContDiffLocallyHolderOn k α f s` implies `ContDiffLocallyHolderOn k β f s` (shrink each neighbourhood to a bounded one); it implies `ContDiffOn ℝ k f s`; and for `s` relatively open in a convex set `K` with nonempty interior (such as `range I`), `ContDiffOn ℝ (k + 1) f s` implies `ContDiffLocallyHolderOn k 1 f s` (the within-derivatives are then the Taylor coefficients, and the mean-value inequality on the convex neighbourhoods `K ∩ B(x, r)` bounds the increments of the `k`-th derivative by a local bound of the `(k + 1)`-st).
- Restriction to a relatively open subset, and locality: the predicate holds on `s` iff it holds on each member of a cover of `s` by relatively open subsets.
- Algebra, for `s` relatively open in a convex set with nonempty interior (on a set without unique differentiability the within-derivative of a sum need not be the sum of the within-derivatives): sums, products of scalar and bilinear compositions, and composition with continuous multilinear maps preserve the class; composition `f ∘ φ` with a map `φ` that is `C^∞` within `s` and maps `s` into the domain `t` of `f`, where `t` is also relatively open in a convex set with nonempty interior, preserves the class (Faà di Bruno, with the lower derivatives locally Lipschitz on the convex neighbourhoods); postcomposition `F ∘ f` with a map `F : G → G'` that is `C^∞` on an open set containing `f(s)` preserves it (Faà di Bruno again: the terms `D^jF(f(x))[D^{i₁}f(x), …, D^{i_j}f(x)]` with `i₁ + … + i_j = k` are products of locally bounded factors that are locally Lipschitz, except `D^k f`, which is locally `α`-Hölder; for `k = 0`, `F` is locally Lipschitz near `f(x)`), in particular inversion of invertible continuous linear maps, `t ↦ 1/t` on nowhere-vanishing scalar functions and `exp`.
- Agreement on open sets: for open `Ω ⊆ ℝⁿ`, `ContDiffLocallyHolderOn k α f Ω` iff `f` belongs to PDE §1.7's `C^{k,α}_loc(Ω)`.
- Comparison with Mathlib's pointwise class: the predicate implies `ContDiffPointwiseHolderAt k α f x` at every interior point `x` of `s`; the converse fails.

*Needs:* Mathlib `HolderOnWith`, `iteratedFDerivWithin`, `ContDiffOn`, `ModelWithCorners.uniqueDiffOn`, `ModelWithCorners.convex_range`, `ModelWithCorners.nonempty_interior`, `uniqueDiffOn_convex`, `UniqueDiffOn.inter`, `ContDiffPointwiseHolderAt`; PDE §1.7.

**Checks.**

- `f(x) = |x|^α` on `(−1, 1)`, `0 < α < 1`: `ContDiffLocallyHolderOn 0 α` holds, with seminorm `1` near `0` (`||x|^α − |y|^α| ≤ |x − y|^α`), while `ContDiffLocallyHolderOn 0 β` fails for every `β > α` at `0` (`|x|^α / |x|^β → ∞`).
- `f(x) = x|x|` on `ℝ` is `ContDiffLocallyHolderOn 1 1` (its derivative `2|x|` is `2`-Lipschitz) and not `C²` (the second derivative jumps from `−2` to `2`), so `C^{1,1}` is strictly between `C²` and `C¹`.
- Pointwise is weaker than local: `f(x) = x² sin(1/x²)`, `f(0) = 0`, is differentiable everywhere, hence `ContDiffPointwiseHolderAt 0 1 f a` at every `a`; but at `x_m = (2πm)^{−1/2}`, `f'(x_m) = −2√(2πm) → −∞`, so `f` is Lipschitz on no neighbourhood of `0` and `ContDiffLocallyHolderOn 0 1 f (−1, 1)` fails.
- At a corner: `f(x, y) = (x + y)^{1/2}` on `s = [0, 1)²` is `ContDiffLocallyHolderOn 0 ½ f s` (`|√a − √b| ≤ √|a − b|`) and not `ContDiffLocallyHolderOn 0 1 f s`, since `f(t, 0) = √t` is Lipschitz on no neighbourhood of the corner `0` within `s`; at every point of the interior `(0, 1)²`, `f` is `C^∞`, so a definition that tests only interior points would wrongly accept the exponent `1`.
- Empty interior: on the segment `s = (0, 1) × {0}` in `ℝ²`, convex with empty interior, `f(x, y) = x²` is smooth, but at `(t, 0)` every functional `2t dx + c dy`, `c ∈ ℝ`, is a derivative of `f` within `s` (the increment along `s` is `f(t + h, 0) − f(t, 0) − 2th = h²`), since the tangent cone `ℝ × {0}` does not span `ℝ²`; so `iteratedFDerivWithin ℝ 1 f s` is one arbitrary choice among these and no Lipschitz bound on it follows from `ContDiffOn ℝ 2 f s`. On `(0, 1) × (−1, 1)`, convex with nonempty interior, the derivative within the set is `2x dx`, and `‖2x dx − 2x' dx‖ = 2|x − x'|` gives the Lipschitz constant `2`. The hypothesis of nonempty interior in the Lipschitz and algebra facts is what excludes the segment.

### 2.2 Lorentzian metrics

Define `TauCeti.Manifold.LorentzianMetric I M` as a continuous section of the bilinear-form bundle `Hom(TM, Hom(TM, ℝ))` — a `ContMDiffSection` of order `0` with fibre `T_xM →L[ℝ] T_xM →L[ℝ] ℝ` — whose value at every point is Lorentzian (§1.1) (`minguzzi2019` §1.5, line 396, p. 9, and §1.7, lines 439–452, pp. 10–11; `sbierski2018` §2.1, line 263, p. 7; `chruscielgrant2012` lines 64–73). A Lorentzian manifold is `M` together with such a section. The section is the carrier of Tau Ceti's `TauCeti.Manifold.ContMDiffNondegenerateMetric` at order `0` instead of `∞`.

- Coercion to the pointwise forms `g x : T_xM →L[ℝ] T_xM →L[ℝ] ℝ`, symmetry `g x v w = g x w v`, extensionality by pointwise equality.
- Pointwise inverse forms `g⁻¹_x` on `T*_xM` (§1.2), musical maps `g♭_x` and `g♯_x`, and the gradient `grad u = g♯(du)` of a differentiable function.
- A field of symmetric nondegenerate forms that is continuous as a section and Lorentzian at one point of a preconnected `M` is Lorentzian everywhere (§2.4).
- Restriction to open subsets, pullback along local diffeomorphisms and positive conformal rescaling (§2.5).
- Smooth comparison: a Lorentzian metric whose section is `C^∞` determines a `TauCeti.Manifold.ContMDiffNondegenerateMetric` with the same pairings and with `signature x = (dim M − 1, 1)` at every point; conversely a smooth nondegenerate metric with `sigNeg = 1` at one point of each component is a Lorentzian metric.

*Needs:* §1.1, §1.2; Mathlib `ContMDiffSection`; Tau Ceti `TauCeti.Manifold.ContMDiffNondegenerateMetric`, `ContMDiffNondegenerateMetric.signature`.

**Checks.**

- The constant Minkowski form on the model space `Fin (n + 1) → ℝ` is a Lorentzian metric; the constant Euclidean form is not, at any point.
- The section `x ↦ diag(−1, x²)` on `ℝ²` (with coordinates `(t, x)`) is continuous and symmetric with `sigNeg = 1` everywhere but degenerate on `{x = 0}`; it is not a Lorentzian metric, so the pointwise nondegeneracy in §1.1 is load-bearing on manifolds too.
- The section `(t, x) ↦ diag(−1, sign(x))` is Lorentzian on `{x > 0}` and not continuous across `{x = 0}`; it is not a section of order `0` on `ℝ²` and is excluded.

### 2.3 Regularity classes and chart independence

Define the regularity classes `TauCeti.Manifold.MetricRegularity`, with one class `C^k` for each `k ∈ ℕ∞` and one class `C^{k,α}` for each `k ∈ ℕ` and `0 < α ≤ 1`, ordered by inclusion as in Conventions; and define, for a pointwise field `b : (x : M) → T_xM →L[ℝ] T_xM →L[ℝ] ℝ` of bilinear forms (no symmetry or signature assumed), `TauCeti.Manifold.IsBilinFormOfClass ℛ b`: for `ℛ = C^k`, the section `x ↦ b x` of `Hom(TM, Hom(TM, ℝ))` is `ContMDiff` of order `k`; for `ℛ = C^{k,α}`, for every `x₀ ∈ M` the coefficient map `z ↦ tangentBilinFormInCoordinates x₀ ((extChartAt I x₀).symm z) (b _)` is `ContDiffLocallyHolderOn k α` on `(extChartAt I x₀).target` (`chrusciel2011` Definition 2.1.1, lines 118–120, p. 4, and §2.2, footnote 2, lines 234–236, p. 6; `minguzzi2019cone` lines 81–92). A Lorentzian metric `g` is of class `ℛ` when `IsBilinFormOfClass ℛ g`; the same predicate gives the class of a Riemannian metric and of a nondegenerate metric of any signature. The class `ℛ` of a function `f : M → ℝ` and of a section `s` of `TM`, of `T*M = Hom(TM, ℝ)` or of `Hom(TM, TM)` (a vector field, a one-form, a field of endomorphisms) is defined by the same chart test: for `ℛ = C^k`, `f`, respectively the section `x ↦ s x` into the total space, is `ContMDiff` of order `k` (for a section, equivalently its coordinates in the trivialisation at each point are, `Bundle.contMDiffAt_section`); for `ℛ = C^{k,α}`, for every `x₀ ∈ M` the coordinate expression `f ∘ (extChartAt I x₀).symm`, respectively `z ↦ (trivializationAt _ _ x₀ ⟨y, s y⟩).2` with `y = (extChartAt I x₀).symm z`, is `ContDiffLocallyHolderOn k α` on `(extChartAt I x₀).target`. An object on an open `U ⊆ M` is of class `ℛ` when its restriction to the open submanifold `U` is.

Prove the chart-independence theorem `TauCeti.Manifold.isBilinFormOfClass_iff_forall_mem_maximalAtlas`: `b` is of class `ℛ` iff for every chart `e` of the maximal smooth atlas of `M` the coefficient matrix of `b` in `e`, `z ↦ b(De⁻¹_z ·, De⁻¹_z ·)`, with `De⁻¹_z` the derivative within `range I` of `(e.extend I).symm` at `z`, is `C^k`, respectively `ContDiffLocallyHolderOn k α`, on the target of the extended chart, `(e.extend I).target = I.symm ⁻¹' e.target ∩ range I` (`OpenPartialHomeomorph.extend_target`), a relatively open subset of `range I` in `E`; the target `e.target` of `e` itself lies in `H`, where §2.1 does not apply (a Lorentzian manifold as a smooth manifold carrying a metric of finite regularity: `minguzzi2019` §1.5, lines 396–397, p. 9; the local Hölder class: `chrusciel2011` §2.2, footnote 2, lines 234–236, p. 6; the regularity of tensor fields on a smooth manifold read in charts: `hawkingellis1973` Ch. 2). Chart independence is a standard consequence of the `C^∞` transition maps of the smooth atlas, and it is proved here: for `C^k` it is `contMDiffAt_hom_bundle` read in every chart; for `C^{k,α}` it follows from §2.1, since transition maps are `C^∞` within `range I`.

- Monotonicity: class `ℛ` implies class `ℛ'` for `ℛ ⊆ ℛ'`; every Lorentzian metric is of class `C^0`.
- Locality: the class can be tested on an open cover; it is inherited by restrictions to open subsets.
- Algebra: sums of fields of class `ℛ` are of class `ℛ`, and so are: the product of a function of class `ℛ` with a function, vector field, one-form or bilinear field of class `ℛ`; the quotient of such a field by a nowhere-vanishing function of class `ℛ`; `F ∘ f` for a function `f` of class `ℛ` and a function `F` that is `C^∞` on an open subset of `ℝ` containing `f(M)` (for instance `e^{2f}`); the tensor product `θ ⊗ θ'` of two one-forms of class `ℛ`, a bilinear field; the contraction `b(·, X)` of a bilinear field and a vector field of class `ℛ`, a one-form; and the evaluation `θ(X)` of a one-form on a vector field of class `ℛ`, a function (so `h(X, X)` is of class `ℛ` for `h` and `X` of class `ℛ`). For a nondegenerate field of class `ℛ` the coefficient matrix of its pointwise inverse has class `ℛ` in every chart. For `C^k` these are the product and composition rules of `ContMDiff`; for `C^{k,α}` they are §2.1's algebra applied to the coordinate expressions on `(extChartAt I x₀).target`.
- For `ℛ = C^∞` this is the smoothness of the section, so §2.2's smooth comparison applies.

*Needs:* §2.1, §2.2; Mathlib `contMDiffAt_hom_bundle`, `contMDiffWithinAt_hom_bundle`, `Bundle.contMDiffAt_section`, `OpenPartialHomeomorph.extend`, `OpenPartialHomeomorph.extend_target`, `ModelWithCorners.uniqueDiffOn`; Tau Ceti `TauCeti.Manifold.tangentBilinFormInCoordinates`.

**Checks.**

- On `M = ℝ²` with the self model, `g = diag(−1, 1 + |x|^{3/2})` in coordinates `(t, x)` is of class `C^{1,½}` (the derivative `(3/2) sign(x) |x|^{1/2}` is `½`-Hölder) and not `C²` (the second derivative `(3/4)|x|^{−1/2}` is unbounded at `0`).
- On the quadrant model `modelWithCornersEuclideanQuadrant 2`, `b = −(1 + (x + y)^{3/2}) dx² + dy²` is of class `C^{1,½}` and not of class `C^{1,1}`: the derivative `(3/2)(x + y)^{1/2}` is Lipschitz on no neighbourhood of the corner `0` within the quadrant, while `b` is `C^∞` near every point off the corner; a definition testing only interior points would call it `C^∞`.
- Only charts of the smooth atlas are allowed: on `ℝ²` the homeomorphism `(t, x) ↦ (t, x³)` is not a chart of the maximal smooth atlas, and reading `−dt² + dx²` through its inverse gives the coefficient `(1/9) y^{−4/3}` of `dy²`, unbounded at `y = 0`; a chart-independence statement over all topological charts would declare the flat metric not even `C^0`.
- Class of a function and the product rule: on `ℝ × ℝ²` with the self model, `f(t, x) = |x|^{3/2}` has derivative `(3/2)|x|^{−1/2} ⟪x, ·⟫` in the `x`-directions, which is `½`-Hölder (it is homogeneous of degree `½` and smooth off `x = 0`; at `x = (a, 0)` and `x' = (−a, 0)` the ratio `|Df(x) − Df(x')| / |x − x'|^{1/2} = 3√a / √(2a) = 3/√2 ≈ 2.1213` for every `a > 0`), while the radial second derivative `(3/4)|x|^{−1/2}` is unbounded, so `f` is of class `C^{1,½}` and not `C²`. The vector field `f ∂_{x¹}` is then of class `C^{1,½}`, and by the product and sum rules so is the acoustical metric `−4dt² + (dx¹ − f dt)² + (dx²)²` of the Layer 2 Examples (`c = 2`, `v = f e₁`); it is not `C²`, since its coefficient `g(∂_t, ∂_{x¹}) = −f` is not.
- A vector field is tested through its coordinates, not through a pointwise length: on `ℝ` with the self model, `X = x ∂_x` has coordinate `x` and is `C^∞`, while its length `|x|` is not differentiable at `0`; a definition by the class of the length would reject a smooth field.

### 2.4 Signature, continuity of causal character, local timelike fields

Prove:

- For a field of symmetric nondegenerate forms on `TM` that is continuous as a section, the pair `(sigPos, sigNeg)` is locally constant; on a preconnected `M` such a field that is Lorentzian at one point is a Lorentzian metric (this is Tau Ceti's `TauCeti.Manifold.isLocallyConstant_sigPos_sigNeg_of_continuous`, consumed).
- Constancy of causal character: for a Lorentzian metric `g` and a continuous vector field `X` on an open set `U`, the timelike locus `{g(X, X) < 0}` and the nonzero-spacelike locus `{g(X, X) > 0}` of `X` are disjoint open subsets of `U`, by continuity of `x ↦ g_x(X(x), X(x))`; hence on a preconnected subset `C ⊆ U` on which `X` is nowhere null and nowhere zero, that is on which `g(X, X)` does not vanish, `X` is timelike throughout or spacelike throughout (the openness of the timelike locus by continuity of `g` is the argument of `minguzzi2019` §1.7, lines 450–452, p. 11, for a coordinate field timelike at one point; the spacelike case and the constancy on preconnected sets are the standard consequence, proved here).
- Constancy of the time sense: for continuous fields `T` and `X` on `U` and a preconnected `C ⊆ U` on which `T` is timelike and `X` is causal (in particular nonzero), `g(T, X)` is continuous and nowhere zero on `C` (a timelike and a nonzero causal vector are never orthogonal, §1.3), hence of constant sign on `C`. This is the continuity argument behind future-directed curves (§4.3) and future-directed null normals (§5.2, §5.3).
- Every point has an open neighbourhood with a smooth timelike vector field (`minguzzi2019` §1.7, lines 450–452, p. 11): take a chart at `x̄`, a vector `v` with `g_{x̄}(v, v) < 0` by §1.1, and the field with constant coordinates `v`.

*Needs:* §1.1, §1.3, §2.2; Tau Ceti `TauCeti.Manifold.isLocallyConstant_sigPos_sigNeg_of_continuous`.

**Checks.**

- On Minkowski `ℝ²`, `X(t, x) = ∂_t + x ∂_x` has `g(X, X) = −1 + x²`: timelike on `{|x| < 1}`, null on `{|x| = 1}` (where `X ≠ 0`), spacelike on `{|x| > 1}`. On the connected strip `{|x| < 1}`, which avoids the null and zero loci, `X` is timelike throughout; on the connected `ℝ²` it is timelike at `(0, 0)` and spacelike at `(0, 2)`, so the hypothesis that `X` be nowhere null is load-bearing.
- The hypothesis that `X` be nowhere zero is load-bearing too: `X(t, x) = x ∂_t` has `g(X, X) = −x²`, so `X` is timelike off `{x = 0}` and zero, hence spacelike by the convention, on `{x = 0}`; it is nowhere null on the connected `ℝ²` without being of one causal character. Its spacelike locus `{x = 0}` is not open, which is why the openness statement is about the nonzero-spacelike locus.
- Time sense: for `T = ∂_t` and `X = ∂_t + x ∂_x` on the closed strip `{|x| ≤ 1}`, where `X` is causal, `g(T, X) = −1` throughout; for `X = x ∂_t` on `ℝ²`, `g(T, X) = −x` changes sign across `{x = 0}`, where `X` is zero and not causal.

### 2.5 Operations on Lorentzian metrics

Construct and prove (`sbierski2018` Remark 2.3, lines 281–284, p. 7, for restriction; `sbierski2018` Definition 2.15, lines 475–478, p. 11, for pullback along embeddings; `chrusciel2011` Proposition 2.1.3, (2.1.2), lines 166–169, p. 5, for metrics built from a vector field):

- Restriction to an open subset `U`, of the same class.
- Pullback `φ^* g` along a local diffeomorphism `φ : N → M` of class `C^∞`, of the class of `g`; for an open embedding, pullback followed by pushforward is the restriction to the image.
- Conformal rescaling `e^{2φ} g` by a function `φ` of class `ℛ` (or `C^0` for `C^0` metrics), of class `ℛ`, with the same timelike, null and spacelike vectors.
- Metrics from coframes: for continuous one-forms `θ⁰, …, θⁿ` on `U` forming a basis of `T*_xU` at every point, `−θ⁰ ⊗ θ⁰ + Σ θ^i ⊗ θ^i` is a Lorentzian metric, of class `ℛ` when the `θ^α` are (by §1.9 pointwise).
- The acoustical metric: for a manifold `M` (corners allowed) with smooth functions `t, x¹, …, xⁿ` whose differentials form a basis of every cotangent space (for instance the coordinate functions of a chart into `ℝ × ℝⁿ` or of the quadrant model) and functions `c > 0`, `v¹, …, vⁿ` of class `ℛ` on `M`, the acoustical form `−c² dt² + Σ_i (dx^i − v^i dt)²` is a Lorentzian metric of class `ℛ`, with `B = ∂_t + v^i ∂_i` timelike, `g(B, B) = −c²`, `g⁻¹(dt, dt) = −c⁻²` and every slice `{t = const}` spacelike (`luoyu2023` line 95; `luoyu2023b` lines 211–214; `christodoulou2007` Ch. 1).
- The double null metric: for a function `Ω > 0` and a family `γ` of positive-definite forms on an open set of `ℝ_u × ℝ_v × ℝ^{n−1}`, both of class `ℛ` (for `γ`, its coefficient functions `γ_{AB}`), the form `−2Ω²(du ⊗ dv + dv ⊗ du) + γ_{AB} dθ^A ⊗ dθ^B` is a Lorentzian metric of class `ℛ`, with `g⁻¹(du, du) = g⁻¹(dv, dv) = 0` and `g⁻¹(du, dv) = −(2Ω²)⁻¹` (`rodnianskishlapentokhrothman2023` line 263 for the two-dimensional quotient with boundary).
- Lorentzian metrics from Riemannian ones: for a Riemannian metric `h` of class `ℛ` and a vector field `X` of class `ℛ` with no zero, `g(Y, Z) = h(Y, Z) − 2 h(Y, X) h(Z, X) / h(X, X)` is a Lorentzian metric of class `ℛ` with `X` timelike (`chrusciel2011` Proposition 2.1.3, lines 163–171, p. 5).

*Needs:* §1.9, §2.2, §2.3; Mathlib `ContMDiffSection`, `IsSmoothEmbedding`.

**Checks.**

- Conformal factor: on `(ℝ², −dt² + dx²)` with the constant `φ = log 2`, the rescaled metric has `e^{2φ}g(∂_t, ∂_t) = −4`, `e^{2φ}g(∂_t + ∂_x, ∂_t + ∂_x) = 0` and `(e^{2φ}g)⁻¹(dt, dt) = −¼`; a rescaling by `e^{φ}` would give `−2` and `−½`.
- Direction of pullback: for the diffeomorphism `φ(s, y) = (2s, y)` of `ℝ²` and `η = −dt² + dx²`, `φ^*η = −4ds² + dy²`, since `(φ^*η)(∂_s, ∂_s) = η(2∂_t, 2∂_t) = −4`; the pushforward, that is pullback along `φ⁻¹`, would give `−¼`, and pullback along the identity returns `η`.
- From a Riemannian metric: for `h = dt² + dx²` on `ℝ²` and `X = 2∂_t`, `h − 2h(·, X)h(·, X)/h(X, X) = dt² + dx² − 2(2dt)²/4 = −dt² + dx²`, the Minkowski metric, whereas omitting the division by `h(X, X)` gives `−7dt² + dx²`; for `X = ∂_t + ∂_x`, `h(X, X) = 2` and `g(X, X) = 2 − 4 = −2 < 0`.
- Double null against Minkowski: in two dimensions with `Ω = 1` and `u = t − x`, `v = t + x`, `−2(du ⊗ dv + dv ⊗ du) = 4(−dt² + dx²)`; so `g(∂_u, ∂_v) = −2`, `g⁻¹(du, du) = ¼(−1 + 1) = 0` and `g⁻¹(du, dv) = ¼ η⁻¹(dt − dx, dt + dx) = −½ = −(2Ω²)⁻¹`, in agreement with the §1.2 Check for `4η`.
- The basis hypothesis on coframes is load-bearing: `θ⁰ = dt`, `θ¹ = t dx` on `ℝ²` are continuous but not a basis on `{t = 0}`, and `−θ⁰ ⊗ θ⁰ + θ¹ ⊗ θ¹ = −dt² + t² dx²` is degenerate there, hence not a Lorentzian metric.

### 2.6 Causal curves

Define `TauCeti.Manifold.LorentzianMetric.IsCausalCurve g γ a b` for `a < b` and `γ : ℝ → M`: there is a strict partition `a = τ₀ < … < τ_{k+1} = b` witnessing `TauCeti.Manifold.IsPiecewiseContMDiffOn I 1 γ a b` such that at every `t ∈ [τ_i, τ_{i+1}]` the velocity of `γ` within `[τ_i, τ_{i+1}]` (`TauCeti.Manifold.curveVelocityWithin`) is causal, and at every interior break point `τ_i` the two one-sided velocities lie in the closure of one time cone of `g_{γ(τ_i)}`; analogously timelike and null curves (`sbierski2018` Definition 2.1, lines 269–273, p. 7; `minguzzi2019` §1.3, footnote 1, lines 323–326, p. 7).

- Independence of the partition: refining a witnessing partition preserves the condition, and any two witnessing partitions give the same condition.
- Reparametrisation by an increasing `C¹` diffeomorphism of intervals with positive derivative preserves causal, timelike and null curves, and so does restriction to a subinterval `[c, d] ⊆ [a, b]`, `c < d`.
- Concatenation: for causal (timelike, null) curves `γ₁` on `[a, b]` and `γ₂` on `[b, c]` with `γ₁(b) = γ₂(b)`, the curve equal to `γ₁` on `[a, b]` and to `γ₂` on `[b, c]` is causal (timelike, null) on `[a, c]` if and only if the velocity of `γ₁` within `[a, b]` at `b` and the velocity of `γ₂` within `[b, c]` at `b` lie in the closure of one time cone of `g_{γ₁(b)}`. If the concatenation is causal and `b` is not a break point of a witnessing partition, the two velocities are equal, hence in the closure of one cone (§1.5); otherwise the condition is the break-point requirement at `b`. For two future-directed curves of a spacetime the junction condition always holds (§4.3).
- A causal curve is regular on each piece (its one-sided velocities are nonzero), as the zero vector is not causal.
- A curve on an arbitrary interval is causal if its restriction to every compact subinterval is.

*Needs:* §1.3, §1.4, §1.5, §2.2; Tau Ceti `TauCeti.Manifold.IsPiecewiseContMDiffOn`, `TauCeti.Manifold.curveVelocityWithin`.

**Checks.**

- On Minkowski `ℝ²`, `γ(s) = (s, s/2)` is timelike (`−1 + ¼ < 0`), `γ(s) = (s, s)` is null, and `γ(s) = (s, 2s)` is not causal (`−1 + 4 > 0`).
- The constant curve is not causal (zero velocity), so a definition with `b v v ≤ 0` alone would accept it.
- The broken curve with velocity `(1, 1)` on `[0, 1]` and `(1, −1)` on `[1, 2]` is a null curve: at the break, both one-sided velocities lie in the closure of the cone of `e₀`. The curve with velocity `(1, 0)` on `[0, 1]` and `(−1, 0)` on `[1, 2]` has timelike velocities on both pieces but is not timelike, since they lie in opposite cones (`η((1, 0), (−1, 0)) = 1 > 0`); it is the concatenation at `s = 1` of two timelike curves with matching endpoint `(1, 0)`, so concatenation without the junction condition does not preserve timelike or causal curves; and the null curve that reverses along one null line, velocity `(1, 1)` then `(−1, −1)`, is not causal although `η((1, 1), (−1, −1)) = 0 ≤ 0`, so the break condition cannot be replaced by `g(v₋, v₊) ≤ 0`.

### Examples

- Minkowski space `(Fin (n + 1) → ℝ, η)` is a Lorentzian manifold of class `C^∞`.
- The acoustical metric with constant `c = 2`, `v = (1, 0)` on `ℝ × ℝ²` is of class `C^∞`; with `v(t, x) = |x|^{3/2} e₁` it is of class `C^{1,½}`.
- The Sbierski metric `g = e^{2√t}(−dt² + dx²)` on `(0, ∞) × ℝ` is `C^∞`; its continuous extension `g̃ = e^{2√|t|}(−dt² + dx²)` on `ℝ²` is a Lorentzian metric of class `C^{0,½}` (since `√|t|` is `½`-Hölder) and not `C¹` (`sbierski2018` §1.1, lines 109–119, p. 3).

### Dependencies

Layer 1; Mathlib manifolds, `ContMDiffSection`, Hom bundles and Hölder maps; Tau Ceti `NondegenerateMetric/{Basic,Signature}`, `PiecewisePath`, `MFDeriv/Curve`; PDE §1.7.

## Layer 3: Connection, curvature and geodesics at finite regularity

### 3.1 Levi-Civita connections of a differentiable metric

Define, for a pointwise bilinear field `b : (x : M) → T_xM →L[ℝ] T_xM →L[ℝ] ℝ` and `cov : CovariantDerivative I E (TangentSpace I)`, the predicate `CovariantDerivative.IsLeviCivitaFor cov b`, the conjunction of three clauses: the pairings of `b` are differentiable, that is `y ↦ b_y(Y(y), Z(y))` is differentiable at `x` for every `x ∈ M` and all vector fields `Y`, `Z` differentiable at `x` (the hypothesis `hdiff` of the Tau Ceti Koszul lemmas); `cov.torsion = 0`; and `cov` is compatible with `b`, that is `v(b(Y, Z)) = b(∇_v Y, Z) + b(Y, ∇_v Z)` for every `v ∈ T_xM` and all vector fields `Y`, `Z` differentiable at `x` (`oneill1983` Ch. 3, the Levi-Civita connection; `chrusciel2011` §2.2, (2.2.1)–(2.2.3), lines 186–193, p. 5). The first clause makes the left side of the compatibility law a derivative: without it, at a point where a pairing is not differentiable, the manifold derivative takes its junk value `0`. It holds whenever `b` is differentiable as a section of `Hom(TM, Hom(TM, ℝ))`, in particular for every field of class `C¹`, by `MDifferentiableAt.clm_bundle_apply₂`. This is Tau Ceti's `ContMDiffNondegenerateMetric.IsLeviCivitaConnection` with the smoothness of the metric weakened to the differentiability of its pairings, which a smooth metric has automatically.

- For a smooth nondegenerate metric, the predicate is `ContMDiffNondegenerateMetric.IsLeviCivitaConnection`, the first clause holding by `ContMDiffNondegenerateMetric.mdifferentiableAt_apply`; for a smooth Riemannian metric it is Mathlib's `CovariantDerivative.IsLeviCivitaConnection` (through `isLeviCivitaConnection_ofRiemannianBundle_leviCivitaConnection`).
- Koszul formula: if `b` is symmetric, then `IsLeviCivitaFor cov b` implies `2 b(∇_X Y, Z) = koszulBilinear I b X Y Z` for all `X`, `Y`, `Z` differentiable at the point (`TauCeti.Manifold.koszulBilinear_sub_two_mul_apply_eq_derivBilinearTensor`, whose differentiability hypothesis is the first clause). Conversely, if `b` is symmetric, nondegenerate at every point and its pairings of differentiable fields are differentiable, this Koszul identity implies `IsLeviCivitaFor cov b`, so for such `b` the two are equivalent: compatibility follows from symmetry alone (`TauCeti.Manifold.metricProductRule_of_two_apply_eq_koszulBilinear`), and torsion-freeness uses the nondegeneracy, through the injectivity of `u ↦ b_x(u, Z(x))` on fields `Z` differentiable at `x` (`TauCeti.Manifold.torsion_eq_zero_of_two_apply_eq_koszulBilinear`).
- Naturality: pullback along local diffeomorphisms and restriction to open sets carry Levi-Civita connections to Levi-Civita connections.

*Needs:* Mathlib `CovariantDerivative`, `CovariantDerivative.torsion`, `MDifferentiableAt.clm_bundle_apply₂`; Tau Ceti `ContMDiffNondegenerateMetric.mdifferentiableAt_apply`, `TauCeti.Manifold.koszulBilinear`, `TauCeti.Manifold.koszulBilinear_sub_two_mul_apply_eq_derivBilinearTensor`, `TauCeti.Manifold.metricProductRule_of_two_apply_eq_koszulBilinear`, `TauCeti.Manifold.torsion_eq_zero_of_two_apply_eq_koszulBilinear`.

**Checks.**

- On the model space `ℝ²` with the constant form `η`, the trivial connection `∇_v Y = DY(v)` satisfies the predicate: torsion `DY(X) − DX(Y) − [X, Y] = 0` and `D(η(Y, Z)) = η(DY, Z) + η(Y, DZ)`.
- The trivial connection on `ℝ²` with the non-constant form `diag(−1, e^{2t})` fails compatibility: with `v = ∂_t` and `Y = Z = ∂_x`, the left side is `∂_t(e^{2t}) = 2e^{2t}` and the right side is `0`.
- Both laws are needed. On Minkowski `ℝ²` put `∇_v Y = DY(v) + A(v, Y)`. For the symmetric `A(v, w) = v⁰w⁰ e₀` the torsion `A(X, Y) − A(Y, X)` vanishes but `η(A(e₀, e₀), e₀) + η(e₀, A(e₀, e₀)) = −2 ≠ 0`, so it is torsion free and not compatible. For `A(v, w) = v⁰ J w` with the boost generator `J e₀ = e₁`, `J e₁ = e₀` (which is `η`-skew: `η(Jw, z) = −η(w, Jz)`), compatibility holds but the torsion at `(e₀, e₁)` is `J e₁ = e₀ ≠ 0`.
- Nondegeneracy is needed for the converse Koszul direction. For the degenerate field `b = 0` on `ℝ²` and the torsionful connection `∇_v Y = DY(v) + v⁰ J Y` of the previous Check, every term of `koszulBilinear` is a pairing by `b = 0`, so the Koszul identity reads `0 = 0` for all differentiable `X`, `Y`, `Z`, while the torsion at `(e₀, e₁)` is `e₀ ≠ 0`. For the nondegenerate `b = η` the same connection violates the Koszul identity: with the constant fields `X = Z = e₀`, `Y = e₁` all pairings and brackets of `koszulBilinear` vanish, while `2η(∇_{e₀} e₁, e₀) = 2η(J e₁, e₀) = 2η(e₀, e₀) = −2 ≠ 0`.
- Differentiable pairings are part of the definition: `b = (1 + |t|) η` on `ℝ²` is a continuous Lorentzian metric whose pairing of the constant fields `Y = Z = e₀` is `−(1 + |t|)`, not differentiable at the points `(0, x)`, so no covariant derivative is Levi-Civita for `b`. Without the first clause, the compatibility law at `(0, x)` for these fields and the trivial connection would read `0 = η(0, e₀) + η(e₀, 0) = 0`, the left side being the junk derivative `0`, and would hold although the one-sided derivatives of the pairing in the direction `∂_t` are `∓1`.

### 3.2 Existence and uniqueness

Prove the theorem `CovariantDerivative.exists_isLeviCivitaFor`: for a field `b` that is symmetric and nondegenerate at every point and differentiable as a section (in particular a nondegenerate metric of class `C¹`, of any signature), so that its pairings of differentiable fields are differentiable (§3.1), there is a covariant derivative `cov` with `IsLeviCivitaFor cov b`; and `CovariantDerivative.IsLeviCivitaFor.uniqueness`: two such covariant derivatives agree on every vector field differentiable at the base point (`oneill1983` Ch. 3, the fundamental theorem; `chrusciel2011` §2.2, (2.2.1)–(2.2.3), lines 186–193, p. 5). For a smooth `b`, any such `cov` agrees on differentiable fields with `ContMDiffNondegenerateMetric.leviCivitaConnection`, and for a smooth Riemannian metric with Mathlib's `CovariantDerivative.leviCivitaConnection`.

*Proof sketch.* The Koszul expression is tensorial in its first and third arguments under exactly these hypotheses (`TauCeti.Manifold.tensorialAt_koszulBilinear_first`, `TauCeti.Manifold.tensorialAt_koszulBilinear_third`), giving a continuous bilinear form `K_x(v, ·)` for each differentiable `Y`; set `∇_v Y = ½ b♯_x K_x(v, ·)` and `0` on fields not differentiable at `x`, as Tau Ceti's smooth construction does with the smooth `sharp`. Additivity and the Leibniz rule come from the Koszul lemmas, the Levi-Civita laws from the converse direction of the Koszul formula of §3.1, which uses the nondegeneracy of `b`, and uniqueness from nondegeneracy as in `IsLeviCivitaConnection.uniqueness`.

*Needs:* §3.1; §1.2 for `b♯`; Mathlib `CovariantDerivative`; Tau Ceti `TauCeti.Manifold.tensorialAt_koszulBilinear_first`, `TauCeti.Manifold.tensorialAt_koszulBilinear_third`, `ContMDiffNondegenerateMetric.leviCivitaConnection`, `IsLeviCivitaConnection.uniqueness`, `isLeviCivitaConnection_ofRiemannianBundle_leviCivitaConnection`.

### 3.3 Christoffel symbols and the regularity of the connection

Prove, for a field `b` that is symmetric and nondegenerate at every point with `IsBilinFormOfClass (C^k) b`, `k ≥ 1` (`k ∈ ℕ∞`), respectively `IsBilinFormOfClass (C^{k,α}) b`, `k ≥ 1`, and a Levi-Civita connection `∇` for `b` (`chrusciel2011` §2.2, (2.2.2)–(2.2.3), lines 186–193, p. 5, and lines 201–203, p. 6; `oneill1983` Ch. 3):

- In the chart at `x₀`, the Christoffel symbols `TauCeti.Manifold.christoffelSymbol` of `∇` are given on the extended chart target `(extChartAt I x₀).target ⊆ E`, including boundary and corner points, by `Γ^k_{ij} = ½ g^{kl}(∂_i g_{jl} + ∂_j g_{il} − ∂_l g_{ij})` with derivatives within that set; this extends `IsLeviCivitaConnection.christoffelSymbol_eq_fderivWithin` from smooth to differentiable `b`.
- The Christoffel symbols are of class `C^{k−1}` (`k − 1 = ∞` for `k = ∞`), respectively `ContDiffLocallyHolderOn (k − 1) α`, on `(extChartAt I x₀).target`.
- Change of chart: let `Γ` be the Christoffel symbols in a chart with coordinate `x` and `Γ̃` those in a chart with coordinate `z`, and let `φ` be the transition from the chart of `Γ̃` to the chart of `Γ`, so `x = φ(z)` on the overlap. Then `Γ̃_z(a, b) = (Dφ_z)⁻¹(D²φ_z(a, b) + Γ_{φ(z)}(Dφ_z a, Dφ_z b))`, the inhomogeneous transformation law; derivatives of `φ` are taken within the extended chart target of the chart of `Γ̃`.
- Regularity of the connection: for a vector field `Y` of class `C^{j+1}` on an open `U`, `∇Y` is a section of `Hom(TM, TM)` of class `C^{min(j, k−1)}` on `U`.

*Needs:* §2.1, §2.3, §3.2; Tau Ceti `TauCeti.Manifold.christoffelSymbol`, `TauCeti.Manifold.christoffelMap`, `IsLeviCivitaConnection.christoffelSymbol_eq_fderivWithin`.

**Checks.**

- Direction of the transformation law, in one dimension with the flat metric `dx²` on `x > 0`, whose Christoffel symbol vanishes in the coordinate `x`. For the coordinate `z > 0` with `x = φ(z) = z²`, the law gives `Γ̃ = (2z)⁻¹ · 2 = 1/z`. Independently, the geodesics `x = a + bt` become `z = √(a + bt)`, with `z' = b/(2z)` and `z'' = −b²/(4z³) = −(z')²/z`, so `z'' + (1/z)(z')² = 0` and `Γ̃ = 1/z` again. Applying the formula to the transition in the other direction, `ψ(x) = √x`, gives `(Dψ)⁻¹D²ψ = 2√x · (−¼ x^{−3/2}) = −1/(2x)`, which at `z = 1` is `−½` instead of `1`.

### 3.4 Curvature of a `C²` metric

For a symmetric nondegenerate field `g` of class `C^k`, `k ≥ 2` (in the sense of §2.3, any signature), and a Levi-Civita connection `∇` for `g`, define the pointwise curvature tensor `R_x(u, v)w` by evaluating Tau Ceti's `CovariantDerivative.curvatureOperator` of `∇` at `x` on vector fields extending `u`, `v`, `w` that are of class `C²` on a neighbourhood of `x` (for instance the fields with constant coordinates in the chart at `x`; by the locality of covariant derivatives, which needs no separation axiom, only their germs at `x` matter); the Ricci tensor `Ric_x(v, w) = tr(u ↦ R_x(u, v)w)`; the Riemann tensor `Rm_x(u, v, w, z) = g_x(R_x(u, v)w, z)`; and the scalar curvature `Scal(x) = tr_{g_x} Ric_x = Σ_{ij} g^{ij} Ric_{ij}` (`oneill1983` Ch. 3, curvature; `chrusciel2011` §2.2, (2.2.2)–(2.2.3), lines 186–193, p. 5). Prove:

- Tensoriality: `R_x(u, v)w` depends only on `u`, `v`, `w` and not on the extensions; in the chart at `x₀` it is `∂_iΓ^l_{jk} − ∂_jΓ^l_{ik} + Γ^m_{jk}Γ^l_{im} − Γ^m_{ik}Γ^l_{jm}`; `R`, `Ric`, `Rm` and `Scal` are of class `C^{k−2}` (respectively `ContDiffLocallyHolderOn (k − 2) α` for `C^{k,α}`, `k ≥ 2`).
- Symmetries: `Rm(u, v, w, z) = −Rm(v, u, w, z) = −Rm(u, v, z, w)`, the first Bianchi identity `R(u, v)w + R(v, w)u + R(w, u)v = 0`, pair symmetry `Rm(u, v, w, z) = Rm(w, z, u, v)`, and symmetry of `Ric`.
- Naturality under pullback by local diffeomorphisms; under constant rescaling `c g`, `c ≠ 0`, the connection, `R` and `Ric` are unchanged and `Scal` is divided by `c`; in particular `Scal_{−g} = −Scal_g`.
- Two-dimensional conformal formula: for `g = e^{2φ} g₀` on a surface with `g₀` flat and `φ` of class `C²`, `Scal_g = −2 e^{−2φ} □_{g₀} φ`, with `□_{g₀}` as in §5.5.
- Smooth comparison: for `M` Hausdorff and a smooth metric, `∇` is a `ContMDiffCovariantDerivative` of order `∞` (`ContMDiffNondegenerateMetric.IsLeviCivitaConnection.contMDiffCovariantDerivative`), `R_x` is Tau Ceti's `CovariantDerivative.curvatureTensor` of `∇` and `Ric_x` its `CovariantDerivative.ricciTensor`; for `M` Hausdorff and a smooth Riemannian metric, `Rm` is `CovariantDerivative.riemannCurvatureTensor` and the symmetries are those of RiemannianGeometry R1. The Hausdorff hypothesis is that of the Tau Ceti tensors, which are declared under `[T2Space M]`.

*Needs:* §2.3, §3.2, §3.3; Mathlib `IsCovariantDerivativeOn.congr_of_eventuallyEq` (locality); Tau Ceti `CovariantDerivative.curvatureOperator`, `CovariantDerivative.curvatureTensor`, `CovariantDerivative.ricciTensor`, `CovariantDerivative.riemannCurvatureTensor`, `ContMDiffNondegenerateMetric.IsLeviCivitaConnection.contMDiffCovariantDerivative` (smooth comparison); RiemannianGeometry R1 for the convention comparison.

**Checks.**

- Two-dimensional de Sitter `−dt² + cosh²t dx²`: `Γ^t_{xx} = cosh t sinh t`, `Γ^x_{tx} = tanh t`, `R(∂_t, ∂_x)∂_x = cosh²t ∂_t`, `R(∂_x, ∂_t)∂_t = −∂_x`, so `Ric_{tt} = −1`, `Ric_{xx} = cosh²t` and `Scal = (−1)(−1) + cosh^{−2}t · cosh²t = 2`; the opposite curvature sign would give `−2`.
- Milne `−dt² + t² dx²` on `t > 0`: `Scal = 2 (t)''/t = 0`, consistent with its flatness.
- Sbierski's metric `e^{2√t}(−dt² + dx²)`: the conformal formula with `φ = √t`, `□_η φ = −φ'' = ¼ t^{−3/2}` gives `Scal = −½ e^{−2√t} t^{−3/2}`, unbounded as `t → 0⁺` (`sbierski2018` §1.1, lines 118–119, p. 3).
- For the round unit sphere (smooth comparison), `Scal = 2`, the same sign as de Sitter, as Lee's convention requires.

### 3.5 Geodesics

Call a curve `γ` of class `C²` on a parameter set `s` with `UniqueDiffOn ℝ s` a geodesic of a differentiable nondegenerate metric `g` on `s` if `CovariantDerivative.accelerationWithin ∇ γ s t = 0` for every `t ∈ s`, where `∇` is a Levi-Civita connection for `g` (by §3.2 the condition does not depend on the choice, the velocity field being differentiable) (`chrusciel2011` §2.2, (2.2.1)–(2.2.3), lines 184–193, p. 5). Prove:

- Chart form: `γ` is a geodesic iff, read in the chart at `γ(t)`, `u'' + Γ(u', u') = 0` at `t` (`CovariantDerivative.accelerationWithin_eq_zero_iff`).
- Constancy of causal character: along a geodesic of a `C¹` metric, `t ↦ g(γ'(t), γ'(t))` is constant on preconnected `s`, so a geodesic is timelike, null or spacelike throughout; this extends `ContMDiffNondegenerateMetric.IsMetricCompatible.apply_curveVelocityWithin_self_eq_of_accelerationWithin_eq_zero` from smooth to `C¹` metrics.
- Affine reparametrisation: `t ↦ γ(λt + μ)` is a geodesic on the corresponding set.
- Pregeodesics: if `γ` is `C²` on an interval with nowhere-vanishing velocity and `D_tγ' = f(t)γ'` for a continuous `f`, then `γ ∘ φ` is a geodesic for the increasing `C²` diffeomorphism `φ` solving `φ'' = −f(φ)φ'²`, explicitly `φ⁻¹(s) = ∫^s exp(∫^r f)`; by `CovariantDerivative.accelerationWithin_comp` (`galloway2004` Proposition 3.1, lines 183–185, p. 5).

*Needs:* §3.2, §3.3; Tau Ceti `CovariantDerivative.accelerationWithin`, `CovariantDerivative.accelerationWithin_eq_zero_iff`, `CovariantDerivative.accelerationWithin_comp`, `TauCeti.Manifold.curveVelocityWithin`, `ContMDiffNondegenerateMetric.IsMetricCompatible.apply_curveVelocityWithin_self_eq_of_accelerationWithin_eq_zero`.

**Checks.**

- The parametrisation matters: on Minkowski space `s ↦ p + s v` is a geodesic, while `s ↦ p + s² v`, `v ≠ 0`, has acceleration `2v ≠ 0` although its image lies on the same line; a definition by the image alone would accept it. On `s > 0` it is a pregeodesic, `γ'' = (1/s) γ'`, and the reparametrisation of the last item with `f(r) = 1/r` gives `φ⁻¹(s) = s²/2` and the geodesic `σ ↦ p + 2σ v`.
- The constancy of `g(γ', γ')` uses compatibility: the null line `s ↦ (s, s)` of Minkowski `ℝ²` has `g(γ', γ') = 0` for all `s`, while for the torsion-free, non-compatible connection `∇_v Y = DY(v) + v⁰Y⁰ e₀` of §3.1 the curve `s ↦ (log(1 + s), 0)`, `s > −1`, has zero acceleration (`t'' + t'² = −(1 + s)⁻² + (1 + s)⁻² = 0`) and `g(γ', γ') = −(1 + s)⁻²`, which is `−1` at `s = 0` and `−¼` at `s = 1`.
- Pregeodesic reparametrisation and its sign: `γ(t) = (e^{2t}/2, 0)` on Minkowski `ℝ²` has `γ'' = 2γ'`, so `f = 2`, and `φ(s) = ½ log(2s + c)` solves `φ'' = −2φ'²` with `γ ∘ φ(s) = ((2s + c)/2, 0)`, a geodesic (at `s = 0.3`, `c = 1`: `0.8 = 0.8`); the wrong sign `φ'' = +2φ'²`, solved by `φ(s) = −½ log(1 − 2s)`, gives `γ ∘ φ(s) = (1/(2(1 − 2s)), 0)`, whose second derivative is `4` at `s = 0`.
- Coordinate straightness is not the geodesic equation: on de Sitter `−dt² + cosh²t dx²`, `Γ^t_{tt} = Γ^x_{tt} = 0`, so `s ↦ (s, 0)` is a geodesic, with `g(γ', γ') = −1`; `s ↦ (t₀, s)` has acceleration `Γ^t_{xx} ∂_t = cosh t₀ sinh t₀ ∂_t` (`0.4047` at `t₀ = 0.37`), so it is a geodesic only for `t₀ = 0`, although both curves have vanishing coordinate second derivatives.

### 3.6 Existence and uniqueness for `C^{1,1}` metrics

Prove the theorem `CovariantDerivative.IsLeviCivitaFor.geodesic_unique`: for `M` Hausdorff, a symmetric nondegenerate field `b` with `IsBilinFormOfClass (C^{1,1}) b` (any signature) and a Levi-Civita connection `∇` for `b`, two geodesics `γ₁`, `γ₂` of `∇` on an open interval `J` with `γ₁(t₀) = γ₂(t₀)` and `γ₁'(t₀) = γ₂'(t₀)` for some `t₀ ∈ J` agree on `J`; and local existence: for `p` an interior point of `M` and `v ∈ T_pM`, there is a geodesic on an open interval around `0` with `γ(0) = p`, `γ'(0) = v` (`chrusciel2011` §2.2, lines 201–207, p. 6, and §2.5.1, lines 1305–1306, p. 31; `minguzzi2019cone` lines 81–83; `minguzzi2019` §2, lines 1025–1027, p. 25). The `C^{1,1}` hypothesis is the threshold: below it null geodesics need not be unique (`chrusciel2011` §2.2, footnote 2, lines 232–233, p. 6).

*Proof sketch.* By §3.3 the Christoffel symbols are locally Lipschitz on each extended chart target `(extChartAt I x₀).target`, so the first-order system `(u, w)' = (w, −Γ_u(w, w))` is locally Lipschitz on that set (a relatively open subset of `range I`, so boundary points are included); `ODE_solution_unique_of_mem_Ioo` gives local agreement, and the set of times where the two lifts agree is open and, by continuity and the Hausdorff property, closed in `J`. Existence at interior points is Picard–Lindelöf (`IsPicardLindelof`) in a chart.

*Needs:* §2.1, §3.3, §3.5; Mathlib `ODE_solution_unique_of_mem_Ioo`, `IsPicardLindelof`.

### Examples

- Minkowski space: the Levi-Civita connection is the trivial connection on the model space, the Christoffel symbols vanish, `R = 0`, and the geodesics are `t ↦ p + tv`.
- The acoustical metric with constant `c` and `v` is flat (the coframe `c dt`, `dx^i − v^i dt` is closed and orthonormal); its geodesics are straight lines.
- de Sitter and Milne (Checks of §3.4), the latter flat though its coefficients are not constant.

### Dependencies

Layer 2; Mathlib covariant derivatives and ODE uniqueness; Tau Ceti Koszul, nondegenerate Levi-Civita, Christoffel, along-curve and curvature files; HopfRinow Layer 1 (implemented in those files); RiemannianGeometry R1 (convention comparison).

## Layer 4: Time orientation, spacetimes and extensions

### 4.1 Timelike vector fields and time orientations

Define `TauCeti.Manifold.LorentzianMetric.TimelikeVectorField g`: continuous vector fields `T` (continuous as sections of `TM`) with `g(T(x), T(x)) < 0` for all `x`; the relation `T ∼ T'` iff `g(T(x), T'(x)) < 0` for all `x`; `TauCeti.Manifold.LorentzianMetric.TimeOrientation g`, the quotient by `∼`; and `TauCeti.Manifold.LorentzianMetric.IsTimeOrientable g`, nonemptiness of `TimelikeVectorField g` (`sbierski2018` §2.1, lines 265–268, p. 7; `chrusciel2011` §2.1, lines 99–112, pp. 3–4; `minguzzi2019` §1.7, lines 440–449, pp. 10–11; `minguzzi2019cone` lines 240–244; `hawkingellis1973` §6.1; `wald1984` §8.1; `beemehrlicheasley1996` Ch. 3).

- `∼` is an equivalence relation: reflexivity is timelikeness, symmetry is symmetry of `g`, and transitivity is §1.5 at each point.
- `T ↦ −T` is an involution of `TimelikeVectorField g` that descends to an involution of `TimeOrientation g` without fixed points when `M` is nonempty.
- Restriction to open subsets and pullback along local diffeomorphisms; a time orientation of `(M, g)` is one of `(M, e^{2φ}g)`.

*Needs:* §1.5, §2.2.

**Checks.**

- On Minkowski space, `[∂_t]` and `[−∂_t]` are two distinct time orientations: `g(∂_t, −∂_t) = 1 > 0`; the field `∂_t + ½∂_x` is equivalent to `∂_t` (`g = −1 < 0`).
- On the empty manifold there is exactly one time orientation (the empty field, equivalent to its negative), so the fixed-point-freeness of `[T] ↦ [−T]` needs `M` nonempty.
- On two disjoint copies of Minkowski space there are exactly four time orientations, so connectedness is necessary in §4.3.
- Without the continuity requirement, the field equal to `∂_t` on `{x < 0}` and `−∂_t` on `{x ≥ 0}` would be timelike and give a "time orientation" not equivalent to `±∂_t`.

### 4.2 Gluing local time orientations

Prove, for `M` Hausdorff and σ-compact and a Lorentzian metric `g` of class `C^0` (`chrusciel2011` §2.1, lines 99–112, pp. 3–4, and lines 132–144, p. 4; `minguzzi2019` §1.7, lines 453–455, p. 11):

- Gluing: for an open cover `(U_i)` and continuous timelike fields `X_i` on `U_i` with `g(X_i, X_j) < 0` on `U_i ∩ U_j`, there is a continuous timelike field `T` on `M` with `g(T, X_i) < 0` on each `U_i`. Proof: `T = Σ_i φ_i X_i` for a partition of unity subordinate to `(U_i)`; at each point the nonzero summands lie in one time cone, which is a convex cone (§1.5).
- Cone fields: a time orientation is equivalently a choice of time cone `𝒯_x ⊆ T_xM` at every point, depending continuously on `x` in the sense that every point has a neighbourhood and a continuous timelike field `X` on it with `X(y) ∈ 𝒯_y`; the passage from cones to fields is the gluing above.
- Smooth representatives: every time orientation `[T]` contains a smooth timelike vector field, whatever the regularity of `g`: near each point take the field with constant chart coordinates `T(x_i)`, which is timelike and equivalent to `T` near `x_i` by continuity (§2.4), and glue with a smooth partition of unity.
- Existence (`chrusciel2011` Proposition 2.1.3, lines 163–171, p. 5): `M` carries a time-oriented Lorentzian metric of class `C^0` iff it has a continuous nowhere-vanishing vector field, and then it carries one of class `C^∞`. For a nowhere-vanishing `X`, §2.5's construction from a smooth Riemannian metric `h` (`TauCeti.nonempty_contMDiffRiemannianMetric`) gives a `C^0` metric with `X` timelike; the smooth representative of `[X]` from the previous item is a smooth nowhere-vanishing field, and the same construction with it gives a `C^∞` metric. Conversely a time orientation contains a continuous timelike, hence nowhere-vanishing, field.

*Needs:* §4.1, §1.5, §2.4, §2.5; Mathlib `PartitionOfUnity.exists_isSubordinate`, `SmoothPartitionOfUnity.exists_isSubordinate`, `paracompact_of_locallyCompact_sigmaCompact`, `NormalSpace.of_paracompactSpace_r1Space`; Tau Ceti `TauCeti.nonempty_contMDiffRiemannianMetric`.

### 4.3 The two time orientations, future-directed curves and spacetimes

Prove the two-orientation theorem `TauCeti.Manifold.LorentzianMetric.card_timeOrientation`: for a time-orientable Lorentzian manifold `(M, g)` with `[ConnectedSpace M]`, `Nat.card (TimeOrientation g) = 2` (`chrusciel2011` §2.1, lines 114–116, p. 4; `sbierski2018` §2.1, lines 265–268, p. 7). Proof: for continuous timelike `T`, `T'`, the function `g(T, T')` is continuous and never zero (§1.3), hence of constant sign on connected `M`; so `[T'] ∈ {[T], [−T]}`, and `[T] ≠ [−T]` because `M` is nonempty.

For a time orientation `𝔬 = [T]`, call a causal `v ∈ T_xM` future-directed if `g(T(x), v) < 0` and past-directed if `g(T(x), v) > 0`; prove that this depends only on `𝔬` (§1.5), that every causal vector is exactly one of the two, and that the future-directed causal vectors at `x` form the closure of the future time cone minus `0`. A causal curve (§2.6) is future-directed if all its one-sided velocities are; prove that it is future-directed iff one of its velocities is, by continuity on each piece and by the requirement at break points (`sbierski2018` Definition 2.2, lines 274–276, p. 7). Consequently the concatenation of two future-directed causal (timelike, null) curves with matching endpoint is a future-directed causal (timelike, null) curve: at the junction both one-sided velocities are future-directed, hence lie in the closure of the future time cone, which is the junction condition of §2.6.

Define `TauCeti.Manifold.Spacetime`: a connected Lorentzian manifold with a time orientation (`minguzzi2019cone` lines 240–244; `chrusciel2011` Definition 2.1.1, lines 118–120, p. 4).

- A spacetime has future- and past-directed causal vectors and curves as above, and its metric class is that of its Lorentzian metric.
- A connected open subset of a spacetime, with the restricted metric and orientation, is a spacetime; so is the pullback along a local diffeomorphism from a connected manifold.
- Minkowski space with `[∂_t]` is a spacetime, and every spacetime is time-orientable with exactly two time orientations by the theorem above.

*Needs:* §1.3, §1.5, §2.4 (constancy of the time sense), §2.6, §4.1.

**Checks.**

- Minkowski space with `[∂_t]` is a spacetime; with `[−∂_t]` it is a different spacetime structure on the same Lorentzian manifold, and these are the only two.
- Compactness is allowed: the flat torus `(ℝ/ℤ)²` with `−dt² + dx²` and `[∂_t]` is a compact spacetime; the variant of `minguzzi2019` Definition 1.6, line 468, p. 11, which requires non-compactness, would exclude it.
- Two disjoint copies of Minkowski space with a time orientation are not a spacetime, being disconnected, although they are one in the convention of `chrusciel2011` Definition 2.1.1, lines 118–120, p. 4.
- Concatenation of future-directed curves, for `[∂_t]` on Minkowski `ℝ²`: the velocities `(1, 1)` and `(1, −1)` have `η(e₀, ·) = −1 < 0`, so both pieces of the broken null curve of §2.6 are future-directed and their concatenation is a future-directed null curve; the curve with velocity `(1, 0)` then `(−1, 0)` concatenates a future-directed piece (`η(e₀, (1, 0)) = −1`) with a past-directed one (`η(e₀, (−1, 0)) = 1`), and it is not causal, so the hypothesis that both pieces be future-directed is needed.

### 4.4 The time-orientation double cover

Construct, for a Lorentzian manifold `(M, g)`, the time-orientation double cover `p : M̂ → M`: the points of `M̂` are pairs `(x, 𝒯)` of a point and one of the two time cones of `g_x`, with the topology and smooth structure in which, for every open `U` with a continuous timelike field `X`, the two sets `{(x, cone of ±X(x)) | x ∈ U}` are open and mapped homeomorphically onto `U`; `p` is a two-sheeted covering map and a local diffeomorphism, `p^* g` is a Lorentzian metric of the class of `g`, and the canonical cone field `(x, 𝒯) ↦ 𝒯` of `(M̂, p^*g)` is continuous in the sense of §4.2, since over each such `U` it is the cone of `±p^*X` on the corresponding sheet (`chrusciel2011` Remark 2.1.2, lines 121–131, p. 4; `minguzzi2019` §1.7, lines 456–465, p. 11; `sbierski2018` Remark 2.16, lines 485–489, p. 11). For `M` Hausdorff and σ-compact, `M̂` is Hausdorff and σ-compact (a two-sheeted cover; the preimage of a compact set is compact), and the cone-field gluing of §4.2 turns the canonical cone field into a time orientation of `(M̂, p^*g)`, the canonical time orientation. Prove:

- `p` has a continuous section iff `M̂` is homeomorphic over `M` to `M × {±1}`; for connected `M`, iff `M̂` is disconnected. A time orientation `[T]` of `(M, g)` gives the continuous section `x ↦ (x, cone of T(x))`; for `M` Hausdorff and σ-compact, conversely, a continuous section is a continuous cone field and hence, by §4.2, a time orientation, so that `(M, g)` is then time-orientable iff `p` has a continuous section.
- Lifting: for `M` Hausdorff and σ-compact, a time-oriented Lorentzian manifold `(N, h, 𝔬)` and a local isometry `ι : N → M` lift uniquely to `ι̂ : N → M̂` with `ι̂^*` of the canonical time orientation equal to `𝔬`; explicitly `ι̂(y) = (ι(y), cone of dι_y(T(y)))` for `[T] = 𝔬`.

*Needs:* §1.5 (the two time cones at a point), §2.4, §2.5, §4.1, §4.2 (cone-field gluing, for the canonical time orientation, the converse of the section criterion and the lifting), §4.3; DifferentialGeometry Layer 2.3 (`IsCoveringMap.inducedChartedSpace`, smoothness of continuous lifts).

**Checks.**

- Minkowski space `ℝ²`: every fibre of `p` has exactly two points, `M̂` has exactly two connected components (the cones of `∂_t` and of `−∂_t`), each mapped diffeomorphically onto `ℝ²`, and `p` has exactly two continuous sections, as the two-orientation theorem of §4.3 requires; the plausible wrong model whose points are pairs of a point and a timelike ray of `T_xM` has as fibre two open arcs, not two points.
- The empty manifold: `M̂ = ∅` and `p` has exactly one continuous section, the empty map, matching the single time orientation of §4.1; a criterion "time-orientable iff `M̂` has exactly two components" fails here.
- Connectedness is needed in the last criterion: for `M` the disjoint union of two flat Möbius bands, `M̂` is two disjoint cylinders `ℝ × (ℝ/2ℤ)`, hence disconnected, while `M` is not time-orientable.
- Lifts: with the double cover of the flat Möbius band identified with `ℝ × (ℝ/2ℤ)` through the sheet of `∂_t`, the quotient map `π : ℝ² → M` lifts for the orientation `[∂_t]` to `(t, x) ↦ (t, x mod 2)` and for `[−∂_t]` to `(t, x) ↦ (−t, x + 1 mod 2)`; the two lifts differ by the fixed-point-free deck involution `(t, y) ↦ (−t, y + 1)`, which exchanges the two time cones over each point.

### 4.5 Extensions

Define, for a connected Lorentzian manifold `(M, g)` over a boundaryless model and a regularity class `ℛ`, `TauCeti.Manifold.LorentzianMetric.IsExtension`: a map `ι : M → M̃` into a connected Lorentzian manifold `(M̃, g̃)` over the same model with `[T2Space M̃] [SigmaCompactSpace M̃]`, with `g̃` of class `ℛ`, such that `ι` is an `IsSmoothEmbedding` of order `∞`, `ι^* g̃ = g` and `Set.range ι ≠ Set.univ`; and `TauCeti.Manifold.LorentzianMetric.IsExtendible g ℛ`, existence of such an extension (`sbierski2018` Definition 2.15, lines 475–481, p. 11, for manifolds that are Hausdorff and second countable by the standing convention of line 255, p. 6; `minguzzi2019` §1.5, lines 378–379, p. 9, the same convention; `dafermosluk2017` §1.1.4, lines 370–372). Call `g` `ℛ`-inextendible otherwise. The Hausdorff and σ-compactness requirements are part of the definition because `IsExtendible` quantifies over the target: without Hausdorffness Minkowski space would be extendible (Checks), and the time-oriented extension below glues on the target. Then `M`, homeomorphic to an open subset of `M̃`, is Hausdorff and second countable as well.

- An extension is a local diffeomorphism (its differential is injective because `ι^* g̃ = g` is nondegenerate, hence bijective in equal dimension; `TauCeti.isLocalDiffeomorphAt_of_mfderiv_eq`), so its image is open, and its boundary `closure(ι(M)) ∖ ι(M)` is nonempty because `M̃` is connected and `ι(M)` is a nonempty proper open subset (`sbierski2018` footnote 6, line 494, p. 11).
- Over equal models, a map `ι : M → M̃` is an extension iff it is injective, smooth, satisfies `ι^* g̃ = g` and is not surjective: an injective open continuous map is a topological embedding, and the immersion condition is the injectivity of the differential.
- Monotonicity: an `ℛ`-extension is an `ℛ'`-extension for `ℛ ⊆ ℛ'`; so `C^k`-extendible implies `C^j`-extendible for `j ≤ k`, and `C^{k,α}`-extendible implies `C^k`-extendible.
- An extension pulls back `ℛ` regularity: if `(M, g)` has an `ℛ`-extension, `g` is of class `ℛ`.
- Time-oriented extensions: if `(M, g)` is time-oriented and `ℛ`-extendible, it has an `ℛ`-extension `(M̃', g̃')` with a time orientation pulling back to the given one (`sbierski2018` Remark 2.16, lines 485–489, p. 11). Proof: for an extension `ι : M → M̃`, the target `M̃` is Hausdorff and σ-compact, so §4.4 applies to it: lift `ι` to `ι̂ : M → M̃̂` and take for `M̃'` the component of the double cover `M̃̂` containing `ι̂(M)`, with `g̃' = p^*g̃` and the canonical time orientation. The component is open and closed in the Hausdorff σ-compact `M̃̂`, hence Hausdorff, σ-compact and connected; `ι̂` is an injective local diffeomorphism, hence a smooth embedding; and its image is proper because `p` maps the component onto the connected `M̃` while `p(ι̂(M)) = ι(M) ≠ M̃`.

*Needs:* §2.3, §2.5, §4.1, §4.4; Mathlib `IsSmoothEmbedding`; Tau Ceti `TauCeti.isLocalDiffeomorphAt_of_mfderiv_eq`.

**Checks.**

- Sbierski's example (`sbierski2018` §1.1, lines 109–119, p. 3): `M = (0, ∞) × ℝ` with `g = e^{2√t}(−dt² + dx²)` is `C^{0,½}`-extendible, through the inclusion into `ℝ²` with `g̃ = e^{2√|t|}(−dt² + dx²)`; and no metric of class `C²` on an open set `W ⊆ ℝ²` meeting `{t = 0}` agrees with `g` on `W ∩ {t > 0}`, since its scalar curvature would be continuous on `W` while `Scal_g = −½ e^{−2√t} t^{−3/2}` is unbounded near `{t = 0}` (§3.4).
- A proper connected open subset of Minkowski space, for instance `{t > 0}`, is `C^∞`-extendible (by the inclusion); Minkowski space itself is not extended by its identity map, whose image is not proper.
- Injectivity is needed: the restriction to `(0, 1) × ℝ` of the covering map `ℝ² → ℝ × (ℝ/ℤ)` is a local isometry of the flat metrics onto the proper open subset `(0, 1) × (ℝ/ℤ)` of the connected flat cylinder, but it is not injective, so it is not an extension.
- Hausdorffness of the target is needed: glue two copies of Minkowski `ℝ²` along the open set `{t < 0}`. The result is a connected smooth manifold over the same model with a flat metric, and the inclusion of the first copy is an isometric open smooth embedding whose image misses the points `t ≥ 0` of the second copy; but the points `(0, x)` of the two copies have no disjoint neighbourhoods. A definition without `T2Space M̃` would make Minkowski space `C^∞`-extendible.

### Examples

- Minkowski space with `[∂_t]` is a spacetime with exactly two time orientations.
- The acoustical metric is time-oriented by `[B]`, `B = ∂_t + v^i∂_i`, and its future-directed causal vectors are the causal `(τ, ξ)` with `τ > 0`: `g(B, (τ, ξ)) = −c²τ`.
- The flat Lorentzian Möbius band, the quotient of `(ℝ², −dt² + dx²)` by the isometry `(t, x) ↦ (−t, x + 1)`, is not time-orientable: a lift of a continuous timelike field has a time component of constant sign on `ℝ²` that the isometry reverses (`chrusciel2011` §2.1, lines 113–114, p. 4); its time-orientation double cover is the cylinder `ℝ × (ℝ / 2ℤ)`.

### Dependencies

Layers 1 and 2; Layer 3 only for the scalar-curvature Check of §4.5; Mathlib partitions of unity and smooth embeddings; Tau Ceti `TauCeti.isLocalDiffeomorphAt_of_mfderiv_eq` and `TauCeti.nonempty_contMDiffRiemannianMetric`; DifferentialGeometry Layer 2.3.

## Layer 5: Hypersurfaces, null geometry and characteristics

### 5.1 Hypersurfaces given by local defining functions

Define `TauCeti.Manifold.IsHypersurface I r H` for `H ⊆ M` and `r ≥ 1`: every `p ∈ H` has an open neighbourhood `U` and a function `f : M → ℝ` of class `C^r` on `U` with `H ∩ U = U ∩ f⁻¹(0)` and, for every `x ∈ H ∩ U`, `mfderiv f x ≠ 0` and the linear span of the tangent cone `TauCeti.mtangentConeAt I H x` equal to `ker (mfderiv f x)` (`galloway2004` §3, lines 174–175, p. 5; `kupeli1987` §1). The tangent hyperplane of `H` at `x` is `T_xH = span (mtangentConeAt I H x)`, and the conormal line is its annihilator `ℝ · mfderiv f x`.

- The tangent hyperplane and the conormal line do not depend on the defining function, because the tangent cone does not; two defining functions at `p` have proportional differentials at `p`.
- At interior points of `M` (in particular over a boundaryless model) the tangent-cone condition follows from the other two, by Mathlib's `ImplicitFunctionData` in a chart; so over a boundaryless model a hypersurface is a set that is locally a regular zero set.
- Division lemma: a function, or vector field, of class `C¹` on `U` vanishing on `H ∩ U` has derivative zero on the tangent cone of `H` at every `p ∈ H ∩ U`, hence on `T_pH`; for a function, its differential at `p` is a multiple of `mfderiv f p`. At interior points such a function is moreover bounded near `p` by `C|f|`.
- Over a boundaryless model, `H ∩ U` is a `C^r` manifold of dimension `dim M − 1` whose tangent space at `x` is `T_xH`, by `TauCeti.isManifold_regularLevel` and `TauCeti.IsRegularPoint.range_mfderiv_eq_ker_mfderiv`.
- Regular level sets: over a boundaryless model, for `u` of class `C^r` on open `U` with `du ≠ 0` on `U`, every level set `u⁻¹(c) ∩ U` is a hypersurface of class `C^r` with `T_xH = ker du_x`.

*Needs:* Mathlib `ImplicitFunctionData`; Tau Ceti `TauCeti.mtangentConeAt`, `TauCeti.IsRegularPoint`, `TauCeti.isManifold_regularLevel`, `TauCeti.IsRegularPoint.range_mfderiv_eq_ker_mfderiv`.

**Checks.**

- The light cone `{t = |x|}` in `ℝ^{1+n}`, `n ≥ 1`, minus the vertex is a hypersurface of class `C^∞` with defining function `t − |x|` on `{x ≠ 0}`; with the vertex included it is not a hypersurface of class `C¹`: it contains the rays `s ↦ (s, sω)` for every unit `ω`, whose directions `(1, ω)` span `ℝ^{1+n}`, so its tangent cone at `0` spans `ℝ^{1+n}` and not a hyperplane.
- `{t = 0}` with defining functions `t` and `t e^{x}` has conormal lines `ℝ dt` and `ℝ e^x dt` at `(0, x)`, the same line.
- A boundary face: in the quadrant model, `{x = 0}` (the points `(0, y)`, `y ≥ 0`) is a hypersurface with defining function `x`: its tangent cone at the corner `0` is the ray `ℝ_{≥0} e_y`, spanning `ker dx`.
- A degenerate corner zero set is excluded: in the quadrant, `{x + y = 0}` meets the model only in `{0}`, and `x + y` and `x + 2y` both have it as zero set with nonzero, non-proportional differentials; the tangent cone `{0}` spans neither kernel, so the set is not a hypersurface, and without the tangent-cone condition its "tangent hyperplane" would depend on the defining function.

### 5.2 Causal type of a hypersurface and null normals

For a Lorentzian metric `g` (class `C^0`) and a hypersurface `H` of class `C¹`, call `H` spacelike, timelike or null at `p` according to the type of the hyperplane `T_pH ⊆ T_pM` (§1.8), and spacelike, timelike or null if it is so at every point. Prove the theorem `TauCeti.Manifold.LorentzianMetric.isNull_iff`: for `p ∈ H` with defining function `f`, the following are equivalent: `g⁻¹_p(df_p, df_p) = 0`; `T_pH` contains a null vector and no timelike vector; the restriction of `g_p` to `T_pH` is degenerate; and then its radical is a null line `L_p ⊆ T_pH`, equal to `ℝ grad f(p)` (`galloway2004` §3, lines 174–182, p. 5; `kupeli1987`; `oneill1983` Ch. 5).

- The set of points where `H` is spacelike, and the set where it is timelike, are open in `H` (continuity of `g⁻¹(df, df)`).
- Null normals: a null normal of a null hypersurface `H` on `H ∩ U` is a continuous nowhere-vanishing vector field along `H ∩ U` with values in the radical lines `L_p`; `grad f` restricted to `H ∩ U` is one, of class `C^{min(r−1, k)}` for `f ∈ C^r` and `g ∈ C^k`; any two null normals differ by a continuous nowhere-vanishing factor; on a spacetime, a null normal can be chosen future-directed (§4.3).
- Every tangent vector of a null hypersurface not proportional to the null normal is spacelike (§1.7).

*Needs:* §1.7, §1.8, §2.2, §2.4, §4.3 (future-directed choice), §5.1.

**Checks.**

- The three types: in Minkowski `ℝ³` with coordinates `(t, x¹, x²)`, the planes `{t = 0}`, `{x¹ = 0}` and `{t = x¹}`, with defining functions `t`, `x¹` and `t − x¹`, have `g⁻¹(df, df) = −1, 1, 0`: spacelike, timelike and null; for the null plane `grad(t − x¹) = −∂_t − ∂_{x¹}`, and the radical is `ℝ(∂_t + ∂_{x¹})`.
- Both clauses of the middle condition are needed: the timelike plane `{x¹ = 0}` contains the null vector `∂_t + ∂_{x²}` (and the timelike `∂_t`), so "contains a null vector" alone would call it null; the spacelike plane `{t = 0}` contains no timelike vector, so "contains no timelike vector" alone would call it null. The tangent vectors `(a, a, b)` of `{t = x¹}` have `g = b² ≥ 0`, with null vectors exactly the nonzero multiples of `∂_t + ∂_{x¹}` and the spacelike `∂_{x²}`.
- Null normals and their direction: `∂_t + ∂_{x¹}` and `3(∂_t + ∂_{x¹})` are null normals of `{t = x¹}` differing by the factor `3`; the first is future-directed for `[∂_t]` (`g(∂_t, ∂_t + ∂_{x¹}) = −1`), and `grad(t − x¹)` is past-directed (`g(∂_t, −∂_t − ∂_{x¹}) = 1`). The Euclidean normal `∂_t − ∂_{x¹}` of the plane is `g`-null but not tangent to it (`d(t − x¹)(∂_t − ∂_{x¹}) = 2`), so it is not a null normal.
- A hypersurface of mixed type: in Minkowski `ℝ²`, `H = {t = x²/2}` with `f = t − x²/2` has `g⁻¹(df, df) = −1 + x²` (`−0.75, 0, 3` at `x = 0.5, 1, 2`, matching the tangent vectors `x∂_t + ∂_x` with `g = 0.75, 0, −3`): spacelike on `{|x| < 1}`, timelike on `{|x| > 1}`, both open in `H`, and null exactly at `x = ±1`, a set that is not open in `H`.
- The acoustical slices `{t = const}` are spacelike, since `g⁻¹(dt, dt) = −c⁻² < 0` (§1.9).

### 5.3 Optical functions

Define `TauCeti.Manifold.LorentzianMetric.IsOpticalFunction g u U` for open `U` and `u : M → ℝ` of class `C¹` on `U`: `du ≠ 0` and `g⁻¹(du, du) = 0` on `U`, the eikonal equation (`dafermosluk2017` §2.2.1, (2.7), lines 1900–1903, p. 38; `christodoulou2007` Ch. 1–2). Prove that at every `x ∈ U` the hyperplane `ker du_x` is null with radical `ℝ L(x)`, where `L = −grad u`, and that `L` is tangent to the level sets: `du(L) = −g⁻¹(du, du) = 0`; over a boundaryless model, every level set `u⁻¹(c) ∩ U` is a null hypersurface of class `C¹` with null normal `L` (§5.1) (`galloway2004` §3, lines 176–181, p. 5; `dafermosluk2017` §2.2.1, lines 1904–1905, p. 38, the level sets of solutions of the eikonal equation are null hypersurfaces; `luoyu2023` §2.1, lines 999–1000, the level sets of the acoustical function are null hypersurfaces, and lines 1005–1008, their null generator `L`).

- On a spacetime, `L` is future-directed or past-directed on each connected component of `U`; on positive-definite metrics `grad u` is DifferentialGeometry 12.2's `TauCeti.Manifold.mgradient`.
- Optical functions are invariant under conformal rescaling and composition with `C¹` diffeomorphisms of `ℝ` with nonzero derivative.

*Needs:* §1.2, §2.4 (constancy of the time sense), §4.3, §5.1, §5.2; DifferentialGeometry Layer 12.2 (comparison).

**Checks.**

- Minkowski space with `u = t − |x|` on `{x ≠ 0}`: `g⁻¹(du, du) = −1 + |∇|x||² = 0`, `L = ∂_t + x/|x| · ∇`, future-directed for `[∂_t]`; `u = t + |x|` gives the incoming `L = ∂_t − x/|x| · ∇`.
- The time function `t` is not optical: `g⁻¹(dt, dt) = −1`, and `−grad t = ∂_t` is timelike, not null.
- Double null metric: `u` and `v` are optical, with `−grad u = (2Ω²)⁻¹ ∂_v` and `−grad v = (2Ω²)⁻¹ ∂_u`.
- The eikonal equation is required on an open set: `w = t² − |x|²` on Minkowski space has `g⁻¹(dw, dw) = −4t² + 4|x|² = −4w`, vanishing on the null level `{w = 0} ∖ {0}` but on no open set, so `w` is not optical; for it `L = −grad w = 2t∂_t + 2x·∇` satisfies `∇_L L = 2L ≠ 0` (a pregeodesic with `κ = 2`, as §5.4 allows), whereas §5.4 gives `∇_L L = 0` for optical functions.

### 5.4 Null generators

Prove, for a Lorentzian metric `g` of class `C¹`, a Levi-Civita connection `∇` for `g`, an open `U`, a null hypersurface `H` of class `C²` and a vector field `L` of class `C¹` on `U` that is a null normal along `H ∩ U` (`galloway2004` Proposition 3.1, lines 183–194, p. 5; `christodoulou2007` Ch. 1–2; `luoyu2023b` lines 331–332):

- The theorem `TauCeti.Manifold.LorentzianMetric.covariantDerivative_nullNormal`: there is a continuous `κ : H ∩ U → ℝ` with `∇_L L = κ L` on `H ∩ U`.
- Over a boundaryless model, let `γ : J → U` be an integral curve of `L` on an open interval `J` with `γ(s₀) ∈ H` for some `s₀ ∈ J`. The parameter set `{s ∈ J | γ(s) ∈ H}` is open in `J`. When `H ∩ U` is closed in `U` (for instance `H ∩ U = U ∩ f⁻¹(0)` for one defining function `f` on all of `U`, or a level set `u⁻¹(c) ∩ U` of an optical function, §5.3), it is also closed, hence equal to `J`: the curve stays in `H` as long as it stays in `U`. On every open interval contained in the parameter set, `γ` is a null pregeodesic, and its reparametrisation by §3.5 is a null geodesic, a null generator of `H`.
- For `M` Hausdorff and over a boundaryless model, every `p ∈ H ∩ U` lies on exactly one maximal generator segment: there is an integral curve `γ_p` of `L` on an open interval containing `0`, with `γ_p(0) = p` and values in `H ∩ U`, of which every integral curve of `L` on an open interval containing `0` with value `p` at `0` and values in `H ∩ U` is a restriction. No closedness of `H ∩ U` is needed here.
- For an optical function `u` of class `C²` on `U` and `L = −grad u`, `∇_L L = 0` on all of `U`, so the integral curves of `L` are affinely parametrised null geodesics.

*Proof sketch.* Take a defining function `f ∈ C²` and `N = grad f ∈ C¹`, a null normal along `H`. With `h = g⁻¹(df, df) ∈ C¹`, symmetry of the Hessian of `f` for the torsion-free `∇` gives `∇_N N = ½ grad h`; `h` vanishes on `H`, so by §5.1 `dh = 2κ_N df` on `H` with `κ_N` continuous, hence `∇_N N = κ_N N` on `H`. For general `L`, `L − φN` vanishes on `H` with `φ = g(L, Y)` for a `C¹` field `Y` with `df(Y) = 1` near `p`, and the derivative of a field vanishing on `H` in a direction tangent to `H` is zero; so `∇_L L = (L(φ)/φ + φ κ_N) L`. For `u` optical, the same Hessian symmetry gives `∇_L L = ½ grad g⁻¹(du, du) = 0` on `U`. Openness of the parameter set: near `s₀` with `γ(s₀) = p ∈ H`, take a defining function `f` at `p`; then `(f ∘ γ)' = df(L) ∘ γ`, where `df(L)` is `C¹` and vanishes on `H` near `p` because `L` is tangent to `H`, so `|df(L)| ≤ C|f|` near `p` by the division lemma of §5.1, and Grönwall gives `f ∘ γ = 0` near `s₀`. When `H ∩ U` is closed in `U`, the parameter set is closed in `J` by continuity of `γ`, and it is nonempty, so it is `J` by connectedness. The maximal generator segment through `p` is the maximal integral curve of `L` in `U` through `p`, restricted to the connected component of `0` in its parameter set. Existence of integral curves is `exists_isMIntegralCurveAt_of_contMDiffAt`; their uniqueness on open intervals, which the maximal curve needs, is `isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless` on the open submanifold `U`, for `M` Hausdorff.

*Needs:* §3.2, §3.3, §3.5, §5.1, §5.2, §5.3; Mathlib `exists_isMIntegralCurveAt_of_contMDiffAt`, `isMIntegralCurveOn_Ioo_eqOn_of_contMDiff_boundaryless`.

**Checks.**

- Closedness of `H ∩ U` in `U` is needed for staying in `H`: in Minkowski `ℝ²`, `H = {t = x, x > 0}` is a null hypersurface of class `C^∞` (defining function `t − x` on `{x > 0}`, `g⁻¹(df, df) = −1 + 1 = 0`), and `L = ∂_t + ∂_x = −grad(t − x)` on `U = ℝ²` is a `C^∞` null normal along `H`. The integral curve `s ↦ (1 + s, 1 + s)` is in `H` at `s = −½`, and at `s = −1` and `s = −1.5` it is at `(0, 0)` and `(−½, −½)`, in `U` and not in `H`; its parameter set `(−1, ∞)` is open, as stated, and `H` is not closed in `ℝ²`. On `U' = {x > 0}`, in which `H` is closed, the same curve is in `H` for every `s > −1`, exactly the parameters at which it is in `U'`.
- Hausdorffness is needed for uniqueness of generator segments: in the manifold obtained by gluing two copies of Minkowski `ℝ²` along `{t < 0}` (the non-Hausdorff manifold of the Checks of §4.5), the union `H` of the two lines `{t = x}` is a null hypersurface of class `C^∞` (defining function `t − x` on each copy), and `L = ∂_t + ∂_x` is a null normal along `H` on all of the manifold. Through `(−1, −1)` pass the two integral curves `s ↦ (−1 + s, −1 + s)` of the two copies, both with values in `H` for all `s`, equal for `s < 1` and different for `s ≥ 1`: two maximal generator segments.
- A nonzero `κ`: on the future light cone `H = {t = |x|, x ≠ 0}` in Minkowski `ℝ^{1+n}`, with `U = ℝ^{1+n} ∖ {0}`, in which `H` is closed, the field `L = −grad(t² − |x|²) = 2t∂_t + 2x·∇` equals `2t(∂_t + ∂_r)` on `H`, so it is a null normal along `H`; it is linear, so `∇_L L = 2L` and `κ = 2` (at `(1, 1, 0)` in `ℝ³`: `L = (2, 2, 0)`, `∇_L L = (4, 4, 0)`), and its integral curves `s ↦ e^{2s}(t₀, x₀)` stay in `H`. For the optical `u = t − |x|` on `{x ≠ 0}`, `L = −grad u = ∂_t + ∂_r` has `∇_L L = 0`, as the last item states.

### 5.5 The wave operator and its characteristic hypersurfaces

Define, for a Lorentzian metric `g` of class `C¹`, a Levi-Civita connection `∇` for `g` and `u` of class `C²` on an open `U`, the wave operator `TauCeti.Manifold.LorentzianMetric.waveOperator g ∇ u = tr_g(Hess u)`, `Hess u(X, Y) = X(Yu) − (∇_X Y)u`, written `□_g u`; the connection is an argument, and by §3.2 the value does not depend on which Levi-Civita connection is used, since `Hess u` only evaluates `∇` on differentiable fields; its principal symbol `σ_g(x, ξ) = g⁻¹_x(ξ, ξ)` on `T*_xM`; the characteristic covectors `ξ ≠ 0` with `σ_g(x, ξ) = 0`; and call a hypersurface `H` of class `C¹` with defining function `f` characteristic for `□_g` at `p` if `df_p` is characteristic (`christodoulou2007` Ch. 1; `luoyu2023` lines 422–424; `luoyu2023b` line 418; `hawkingellis1973` Ch. 2).

- `□_g u` is continuous for `u ∈ C²` and `g ∈ C¹`; in a chart `□_g u = g^{ij}(∂_i∂_j u − Γ^k_{ij}∂_k u) = |det g|^{−½} ∂_i(|det g|^{½} g^{ij} ∂_j u)`; Hess u is symmetric.
- Leibniz rule: `□_g(fu) = f □_g u + u □_g f + 2 g⁻¹(df, du)`; hence `½ [[□_g, f], f] u = g⁻¹(df, df) u`, the commutator characterisation of `σ_g`.
- Conformal behaviour in dimension 2: `□_{e^{2φ}g} = e^{−2φ} □_g`.
- On a smooth positive-definite metric, `□_g = TauCeti.Manifold.laplaceBeltrami` (DifferentialGeometry 12.3).

Prove the theorem `TauCeti.Manifold.LorentzianMetric.isCharacteristic_iff_isNull`: a hypersurface of class `C¹` is characteristic for `□_g` at `p` iff it is null at `p` (§5.2); in particular the level sets of an optical function are characteristic, and the characteristic covectors at `x` are the null covectors of `g⁻¹_x`.

*Needs:* §1.8, §3.2, §3.3, §5.1, §5.2; DifferentialGeometry Layer 12.3 (comparison); PseudodifferentialOperators P1.0 (comparison Check).

**Checks.**

- Minkowski space: `□ = −∂_t² + Σ∂_i²`, `□(t²) = −2`, `□(|x|²) = 2n`, `□(t² − |x|²) = −2 − 2n`; a definition `tr(Hess)` with the Euclidean trace would give `□(t²) = 2`.
- The symbol: `σ(dt) = −1`, so `{t = 0}` is not characteristic; `σ(dt − dx¹) = 0`, so `{t = x¹}` is characteristic and null; the commutator `½[[□, t], t] = g⁻¹(dt, dt) = −1` agrees.
- Smooth comparison: on smooth boundaryless `M` with smooth `g`, `σ_g(df) = ½[[□_g, f], f]` is PseudodifferentialOperators P1.0's `σ_geom(□_g)(df) = (1/2!)[[□_g, f], f]`, and its Fourier symbol is `−g⁻¹(ξ, ξ)`.
- Acoustical metric: `{t = 0}` has `σ(dt) = −c⁻² < 0` and is not characteristic, while `{x = (v + c) t}` in `1 + 1` dimensions with constant `c`, `v` has conormal `dx − (v + c)dt` and `σ = −c⁻²(v − (v + c))² + 1 = 0`: characteristic.

### Examples

- Minkowski space: `{t = const}` spacelike, `{x¹ = const}` timelike, `{t = |x|} ∖ {0}` null with null normal `∂_t + ∂_r` and generators the radial null lines `s ↦ (s, sω)`, `|ω| = 1`; `u = t − |x|` optical on `{x ≠ 0}` with `∇_L L = 0`.
- The double null metric: the level sets of `u` and of `v` are null hypersurfaces with generators the integral curves of `∂_v`, respectively `∂_u`.
- The acoustical metric: the slices `{t = const}` are spacelike; in `1 + 1` dimensions the integral curves of `∂_t + (v ± c)∂_x` are null and, for constant `c` and `v`, null geodesics.

### Dependencies

Layers 1–4; Mathlib implicit functions and integral curves; Tau Ceti regular levels; DifferentialGeometry Layer 12; PseudodifferentialOperators P1.0 (comparison only).

## Downstream consumers

- CompressibleEulerEquations: the acoustical metric of a `C¹` state (§1.9, §2.5), causal and future-directed vectors and piecewise `C¹` causal curves (§2.6, §4.3), the time orientation by `∂_t + v·∇` (Layer 4 Examples), null hypersurfaces, null normals and generators of the characteristic boundary (§§5.2–5.4), and `C^{1,1}` geodesics (§3.6).
- LorentzianGeometryPartII (proposed): causality theory — `I^±`, `J^±`, the causal ladder, global hyperbolicity, Cauchy surfaces and horizons, domains of dependence, convex neighbourhoods for `C^{1,1}` metrics and locally Lipschitz causal curves (`chruscielgrant2012`; `minguzzi2019` §2 onwards) — built on Layers 1–5.
- Roadmaps on the Einstein equations placed after this one: double null spacetimes with boundary (`rodnianskishlapentokhrothman2023`, `an2025`), `C^0`-extensions across Cauchy horizons (`dafermosluk2017`), `C^0`-inextendibility (`sbierski2018`), characteristic rarefaction fronts (`luoyu2023`, `luoyu2023b`).

## Worked examples

- **Minkowski space** `(ℝ^{n+1}, η)` with `[∂_t]`: a spacetime with exactly two time orientations; `{t = 0}` spacelike (`σ(dt) = −1`); the cone `{t = |x|} ∖ {0}` null with radial null generators; `u = t − |x|` optical on `{x ≠ 0}` with `L = ∂_t + ∂_r` future-directed and `∇_L L = 0`; geodesics straight lines; `R = 0`.
- **Double null metric** `−2Ω²(du ⊗ dv + dv ⊗ du) + γ`: `g(∂_u, ∂_v) = −2Ω²`, `g⁻¹(du, dv) = −(2Ω²)⁻¹`, `u` and `v` optical, the level sets null, `−grad u = (2Ω²)⁻¹∂_v` a geodesic null normal.
- **Acoustical metric** `−c²dt² + Σ(dx^i − v^i dt)²`, `c > 0`: Lorentzian with `B = ∂_t + v·∇` timelike (`g(B, B) = −c²`), `g⁻¹(dt, dt) = −c⁻²`, slices spacelike, the sound cone `|ξ − τv| = c|τ|` the null cone, and in `1 + 1` dimensions the null vectors `∂_t + (v ± c)∂_x`.
- **de Sitter** `−dt² + cosh²t dx²`: `Scal = 2`. **Milne** `−dt² + t²dx²`: `Scal = 0`.
- **Sbierski's metric** `e^{2√t}(−dt² + dx²)` on `(0, ∞) × ℝ`: `C^{0,½}`-extendible to `ℝ²` by `e^{2√|t|}(−dt² + dx²)`; `Scal = −½ e^{−2√t} t^{−3/2}` unbounded at `t = 0`, so no `C²` metric on a neighbourhood of a point of `{t = 0}` restricts to it.
- **Sign flip**: `−η₄ = diag(1, −1, −1, −1)` has the same timelike vectors as `η₄` with the opposite sign of `g(v, v)`; `sigNeg(−η₄) = 3`.

## References

- `minguzzi2019` — E. Minguzzi, *Lorentzian causality theory*, Living Rev. Relativ. 22 (2019), art. 3 (pages as printed in the article): §1.3, p. 7 (lines 295–326); §1.4, Theorems 1.2–1.3 and Corollary 1.4, pp. 8–9 (lines 333–375); §1.5, p. 9 (lines 376–397); §1.7 and Definition 1.6, pp. 10–11 (lines 439–470); §2, p. 25 (lines 1021–1028).
- `minguzzi2019cone` — E. Minguzzi, *Causality theory for closed cone structures with applications*, Rev. Math. Phys. 31 (2019) 1930001: lines 76–94 (`C^{1,1}`), lines 236–248 (time orientation, spacetimes).
- `chrusciel2011` — P. T. Chruściel, *Elements of causality theory*, 2011 (arXiv:1110.6706v1, printed page numbers): §2.1, pp. 3–5, with Definition 2.1.1 and Remark 2.1.2 on p. 4 and Proposition 2.1.3 on p. 5 (lines 83–177); §2.2, pp. 5–6, with footnote 2 on p. 6 (lines 178–236); §2.5.1, p. 31 (lines 1302–1310).
- `chruscielgrant2012` — P. T. Chruściel, J. D. E. Grant, *On Lorentzian causality with continuous metrics*, Class. Quantum Grav. 29 (2012): §1 (lines 60–80).
- `sbierski2018` — J. Sbierski, *The C⁰-inextendibility of the Schwarzschild spacetime and the spacelike diameter in Lorentzian geometry*, J. Differential Geom. 108 (2018); read as arXiv:1507.00601v2, whose pages are cited: §1.1, p. 3 (lines 106–119); §2, standing conventions, pp. 6–7 (lines 255–261); §2.1, Definitions 2.1–2.2 and Remark 2.3, p. 7 (lines 262–284); §2.3, Definition 2.15, Remark 2.16 and footnote 6, p. 11 (lines 473–495).
- `dafermosluk2017` — M. Dafermos, J. Luk, *The interior of dynamical vacuum black holes I*, Ann. of Math. 202 (2025); read as arXiv:1710.01722v1, whose pages are cited: §1.1.4 (lines 366–383); §2.2.1, the eikonal equation (2.7) and its null level sets, p. 38 (lines 1900–1905).
- `galloway2004` — G. J. Galloway, *Null geometry and the Einstein equations*, 2004 (the author's copy, whose pages are cited): §3 and Proposition 3.1, p. 5 (lines 171–194).
- `luoyu2023`, `luoyu2023b` — T.-W. Luo, P. Yu, *On the stability of multi-dimensional rarefaction waves I, II*, Ann. of Math. 202 (2025): I §1, line 95 and lines 420–424, §2.1, lines 999–1000 and 1005–1008; II lines 211–214, 329–333, 417–418.
- `rodnianskishlapentokhrothman2023` — I. Rodnianski, Y. Shlapentokh-Rothman, *Naked singularities for the Einstein vacuum equations: the exterior solution*, Ann. of Math. 198 (2023): line 263.
- `an2025` — X. An, *Naked singularity censoring with anisotropic apparent horizon*, Ann. of Math. 201 (2025): §1 (motivation).
- `oneill1983` — B. O'Neill, *Semi-Riemannian Geometry with Applications to Relativity*, 1983: Ch. 2, 3, 5 (uncertified, cited by locator).
- `beemehrlicheasley1996` — J. K. Beem, P. E. Ehrlich, K. L. Easley, *Global Lorentzian Geometry*, 1996: Ch. 3 (uncertified).
- `hawkingellis1973` — S. W. Hawking, G. F. R. Ellis, *The Large Scale Structure of Space-Time*, 1973: Ch. 2, §6.1 (uncertified).
- `wald1984` — R. M. Wald, *General Relativity*, 1984: §8.1 (uncertified).
- `kupeli1987` — D. N. Kupeli, *On null submanifolds in spacetimes*, Geom. Dedicata 23 (1987), 33–51 (uncertified).
- `christodoulou2007` — D. Christodoulou, *The Formation of Shocks in 3-Dimensional Fluids*, 2007: Ch. 1–2 (uncertified).
