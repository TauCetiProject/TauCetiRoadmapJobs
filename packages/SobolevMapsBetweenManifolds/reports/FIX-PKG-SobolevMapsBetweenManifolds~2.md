# Repair report: SobolevMapsBetweenManifolds

## F01 (P1) — applied

Unqualified equality of the two total differentials → almost-everywhere agreement for continuous vector-valued maps admitting a weak differential. Corrected both Conventions and §4.3; added the log-radius negative control there. Sections 4.1 and 8.3 retain discontinuous members. The vector predicate requires local integrability, whereas the manifold predicate also requires continuity.

## F02 (P2) — applied

Incomplete T4/T6 signatures → signed chart-density formula, all-dimensional Jacobian characterization, conditional positive-dimensional integrability, zero-dimensional essential boundedness, flat-volume comparison and oriented Euclidean determinant comparison. Updated the module description, §§6.2–6.3 and §7.1, and recomputed their Checks. The coordinate formula uses the transported weak field pointwise, hence any coordinate weak derivative almost everywhere by uniqueness.

## F03 (P2) — applied

Domination of the entire mollified derivative difference → an L¹ estimate for the derivative-error term and dominated convergence only for the coefficient-error term. Updated §2.3's route and added its cubic calculation. The chain-rule theorem and its generality are unchanged; the existing mollification and weak-limit inputs suffice.

## F04 (P2) — applied

Unrestricted ambient extension contract → finite-dimensional ambient model, smooth ambient manifold, Hausdorffness and σ-compactness. The exact contract identifies the finite-dimensional vector-space specialization used in §8.4. The embedded source and embedding remain C¹. No supplier gap is needed: these ambient hypotheses hold for both vector spaces in the application.

## F05 (P3) — applied

Admitted `isometric_immersion_norm` → README norm identity supplied by `LinearMap.isometryOfInner` and `LinearIsometry.norm_toContinuousLinearMap_comp`. Deleted the declaration and its claimed own-name reference, updated the module description, ownership, supplier contract and §8.2 dependencies. The substantive `immersion_comparison` remains. The deleted statement's weak-differential and regularity hypotheses are unnecessary for the fibrewise linear-isometry identity.

## F06 (P3) — applied

Introduction cited for signed-density integration → the package's positive/negative density-pair construction, with pinned density-integration declarations. Corrected §6.4, its dependencies, the Mathlib contracts and the `HeikkilaPankka2025` attribution in `sources.toml`. The introduction now supports determinant notation only; positive/negative masses and all existing measure Checks are unchanged.

## Verification and evidence

All six claims were verified; none requires another package to change. The two statement-hygiene gate failures are resolved below. No scope, layer numbering, supplier ownership, metadata or design-plan change was needed.

| Finding | Evidence read | Mathematical consequence |
| --- | --- | --- |
| F01 | `TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:250`, :265; package §4.1 and the real body of `HasWeakMDeriv` | Weak Fréchet differentiation requires local integrability, not continuity. The manifold predicate explicitly requires continuity. The gradient of log radius is locally L¹ in dimension two. |
| F02 | `TauCeti/Geometry/Manifold/Riemannian/VolumeForm.lean:55`, :133; `Riemannian/VolumeDensity/Basic.lean:48`, :61; `Orientation/Basic.lean:87`, :235; `Orientation/OpenSubset.lean:49` | The volume-form coefficient in a chart frame is its orientation sign times its positive Gram density. Pullback multiplies that coefficient by the coordinate determinant. The source coefficient is nonzero. These facts include dimension zero. |
| F03 | `TauCeti/Analysis/Sobolev/Mollification/Interior.lean:87`, :110; `TauCeti/MeasureTheory/Function/Lp/ApproximateIdentity.lean:165`; `TauCeti/Analysis/Sobolev/WeakDeriv/Limit.lean:89` | Mollified derivatives converge in L¹ on smaller domains. The split product difference has one L¹-controlled term and one term dominated by the fixed integrable field. |
| F04 | `TauCeti/Geometry/Manifold/SmoothEmbedding/Extension.lean:165`–172, :201–206 | The ambient hypotheses are present in the supplier's variable block and retained by its theorem. They hold for the vector spaces used here without increasing the source's regularity. |
| F05 | `Mathlib/Analysis/InnerProductSpace/LinearMap.lean:126`; `Mathlib/Analysis/Normed/Operator/NormedSpace.lean:53` | Inner-product preservation makes each immersion differential a linear isometry; postcomposing any linear field by it preserves its operator norm. No Sobolev input is needed for that equality. |
| F06 | HeikkilaPankka2025 line 25–27; `Mathlib/MeasureTheory/Measure/WithDensity.lean:476`; `Mathlib/MeasureTheory/Integral/Bochner/ContinuousLinearMap.lean:311` | The source introduces the determinant notation. Density integration is supplied by the pinned library for a.e. measurable weights, and, for the real integral, a.e. finite weights. Both Jacobian parts satisfy these conditions. |

Read the legal cached sources, including HeikkilaPankka2025 line 22–27 and line 1328–1329, Hajlasz2009 line 20–28 and line 104–107, and MartioRickmanVaisala1969 line 118–127 and line 332–340. They give the continuous quasiregular convention, the compact-target extrinsic class, and Euclidean Jacobian notation. The general local C¹ results and infinite-exponent extensions are the package's constructions, not quotations of those sources. The source's reversed composition at HeikkilaPankka2025 line 1328 remains recorded in its existing version note.

The five settled uncertified works remain cited only by their locators: Ziemer1989 Ch. 2 §2.1 and Theorems 2.1.11/2.2.2; Mazya2011 §1.1; Rickman1993 Ch. I §1; Lee2012 Chs. 4, 6, 15, 16; Bethuel1991 Introduction. No new work was needed, no settled source was requested again, and no missing-reference request was created. The image-scan extraction's Jacobian locator in MartioRickmanVaisala1969 is an extraction-page locator; the line reference is the precise witness used here.

## Computed adversarial mathematics pass

The rows distinguish real weak differentials from their total choices, use operator norms unless marked HS, and read computed values of chosen fields almost everywhere. Empty sets have restricted measure zero. The examples stay in the README; no boundary-test declarations were added to Lean.

| Statement | Instances tried | Values computed on both sides | Result / change |
| --- | --- | --- | --- |
| Conventions: representatives and null modification | Change a field only at 0 in ℝ²; change it on a zero-dimensional singleton | In ℝ² the changed set has measure 0; in dimension zero its mass is 1 | Only the first modification preserves the a.e. class. |
| Conventions: Haar normalization | μ and 3μ | Both weak-integral sides multiply by 3; finite-p integrals multiply by 3; essential suprema are unchanged | Same local classes and weak derivatives. |
| Conventions: exponent endpoints | log radius on the unit disk | Gradient p-mass is 2π/(2−p) for p<2, ∞ at p=2; essential supremum is ∞ | The finite/infinite exponent distinction is preserved. |
| Conventions: direction of differentiation | Identity on ℝ, source chart 2x | Coordinate derivative 1/2 times source-chart derivative 2 gives intrinsic derivative 1 | Correct tangent-map direction. |
| Conventions: metrics and orientations | Identity into metric 4dt²; reflection in ℝ² | Norm and positive Jacobian are 2 for the first; reflection has Jacobian −1 and unsigned determinant 1 | Densities and signs are both necessary. |
| Conventions: totality | Discontinuous log radius, then punctured-plane restriction | Global manifold total is 0; vector gradient norm is 1/r; on the punctured plane both give 1/r a.e. | F01 repaired in Conventions and §4.3. |
| Conventions: dimension zero | Unique linear map between zero spaces | Operator norm 0, unsigned determinant 1, Jacobian ±1, 0⁰=1 | F02 retains characterization and Hadamard at n=0. |
| §1.1 `MemLpLoc` | Empty set; 1/x on (0,1); measurable x at p=0 | Empty seminorm 0; essential supremum on [a,b] is 1/a while global integral is ∞; p=0 seminorm 0 | Distinguishes compact locality, global integrability and the junk exponent. |
| §1.1 restriction, algebra and domination | x, 2x and 3x on [−1,1] | L¹ norms 1, 2 and 3; restriction to [0,1] gives 1/2, 1 and 3/2 | Restriction and sum/scalar bounds agree. |
| §1.1 exponent inclusion and continuity | Constant 1 on a compact set of mass m | p-norm m^(1/p), infinite norm 1 when m>0; zero measure gives norm 0 | Finite measure is retained in exponent inclusion. |
| §1.1 gluing and comparable measures | Two overlapping compact patches; μ versus 3μ | Integrals add over a disjoint refinement; an integral a becomes 3a | Both directions preserve finiteness. |
| §1.2 `MemW1pLoc`, uniqueness and coordinates | u=(x,2x); empty domain; log radius | Derivative (1,2), norm √5; empty weak integrals 0; log gradient mass 2π at p=1 | Values and derivatives both enter membership. |
| §1.2 weak versus classical differentiation | Heaviside; Cantor function | Classical derivatives 0 a.e.; Heaviside weak pairing is φ(0); Cantor values at 1/4 and 3/4 are 1/3 and 2/3 | Neither singular derivative is represented by a locally integrable zero field. |
| §1.2 linear and C¹ API | A=2, u=x; constant u | D(Au)=2=A Du; constant derivative 0 | Algebra and classical comparison agree. |
| §1.2 exponent and open restriction API | log radius on disk and punctured disk | Disk gradient mass diverges at p=2; on a compact annulus it is bounded by 1/r_min | Local restriction does not erase the origin's obstruction globally. |
| §1.3 `memW1pLoc_iUnion` | Empty cover; two half-planes; log-radius open cover | Empty sides true; half-plane fields 0 but whole-plane jump derivative 2δ; log-radius sides true exactly for p<2 | Exact open coverage, not coverage modulo a null set. |
| §1.4 scalar global comparison | x₁ on a ball; absolute value on ℝ | Gradient e₁ gives functional h↦h₁; absolute-value gradient norm 1 but values globally unbounded | Relatively compact domains give the claimed native W1p comparisons. |
| §2.1 null images/preimages | Projection, constant map, invertible dilation | Null line projects to ℝ of infinite measure; constant map's point preimage is all of ℝ²; dilation preserves point nullity | Dimension and invertibility hypotheses discriminate. |
| §2.2 `precomp_localDiffeomorph` | θ(y)=2y, u=absolute value; θ(z)=z², u=log radius | Derivatives 2sign(y) and h↦2⟨z,h⟩/r² respectively, equal to both chain expressions | Noninjective local diffeomorphisms remain allowed. |
| §2.2 singular-precomposition exclusion | θ(y₁,y₂)=(y₁,0), u=log radius | Original gradient L¹ disk integral 2π; composite derivative contains 1/absolute-value(y₁), with infinite integral | Singular differential remains excluded. |
| §2.3 `postcomp_boundedDerivative` and revised proof | Identity G, cubic u, even mollifier | Du_ε−U=3σ²ε²; coefficient-error term 0; derivative-error L¹ norm on (−1,1) is 6σ²ε²→0 | F03: the entire difference is not bounded by 6x² near zero. |
| §2.3 boundedness hypothesis | G(t)=exp(t²), u=log radius | G(u)≥r⁻² for r≤e⁻²; polar integral 2π∫dr/r=∞ | Unrestricted postcomposition of discontinuous members fails. |
| §2.4 `postcomp_continuous` | G=log on positive values, u=r; product G(s,t)=st | Chain derivative ⟨x,h⟩/r² on the punctured plane; product derivative t ds+s dt | Open range and continuity support localization. |
| §2.4 polar and quadratic examples | Polar source map; u=x, G(u)=u² | Polar determinant r>0; D(x²)=2x=2x·1 | Correct source and target directions. |
| §3.1 null-volume comparison | Zero-dimensional singleton; metric density 1+√absolute-value(x₁) | Singleton mass 1 and not null; unit-square mass 1+2/3=5/3 and vertical-segment mass 0 | General continuous metrics and dimension zero retained. |
| §3.1 flat-volume consequence | One-dimensional model basis a≠0 | Gram density absolute-value(a), basis Haar mass of [0,1] is 1/absolute-value(a); product 1 | Arbitrary model bases still give Euclidean volume. |
| §3.2 chartwise local Lp and metric independence | dx² versus e^(2x)dx²; finite discrete compact set | Local density ratio bounded above/below; weighted integrals of e⁻ˣ on [0,∞) are 1 and ∞; finite sum of finite values stays finite | Local, not global, metric independence. |
| §3.3 null transport | Covering z² away from 0; inclusion of an open interval | Two local inverse branches preserve zero measure; a singleton has mass 0 in the interval and ambient ℝ | Local inverses, not global injectivity, suffice. |
| §4.1 `MemVectorW1pLoc` | absolute value; alternate chart x³; log radius | Derivatives sign(x), sign(y)/(3 absolute-value(y)^(2/3)), and x/r²; thresholds ∞ allowed, p<3/2, p<2 | Discontinuous vector members retained. |
| §4.1 algebra, locality, C¹ and composition API | u=x, A=2, θ=3x, G=x² on continuous u | D(Au)=2; D(u∘θ)=3; D(G∘u)=2x; restriction keeps these fields | Same chain rules and field direction. |
| §4.2 `MemManifoldW1pLoc` | Circle half-power angle; log radius into ℝ | Angular derivative magnitude 1/(2√absolute-value(t)), threshold p<2; log radius fails continuity | The continuous class is smaller than the extrinsic/vector class. |
| §4.2 `memManifoldW1pLoc_iff_atlases` | Standard coordinate and coordinate 2x for u=absolute value | Representative derivatives sign(x) and sign(y)/2; positive constant factors preserve every local exponent | Two directions of atlas detection agree. |
| §4.2 constant, metric-free and exponent API | Constant map into a metric rescaling | Coordinate derivative 0 before/after rescaling, all local p-conditions finite | Membership is independent of metrics/orientations. |
| §4.3 `HasWeakMDeriv` and existence/uniqueness | Identity; circle half-power; change field at one point | Intrinsic identity derivative 1; angular field sign(t)/(2√absolute-value(t)); changed set mass 0 | Relations concern actual weak derivatives, with uniqueness a.e. |
| §4.3 repaired total comparison | log radius on 1<r<2 and punctured plane | Vector norm 1/2<1/r<1 versus global manifold total 0; restricted totals both 1/r a.e. | F01 negative control excludes the false comparison. |
| §4.4 `contMDiff_memManifoldW1pLoc` | t²; absolute value; Cantor function | C¹ derivative 2t; absolute-value weak derivative sign(t) despite not C¹; Cantor classical derivative 0 a.e. yet unequal values 1/3,2/3 | C¹ is sufficient; a.e. classical differentiability is insufficient. |
| §4.5 restriction, gluing, corestriction and metric copies | Half-power on the two half-lines; tanh into (−1,1) | Half-line derivatives smooth away from 0 but global threshold p<2; tanh derivative 1−tanh² on either codomain | Full coverage and all overlapping target charts matter. |
| §4.6 manifold chain rules | Half-power after dilation 2; cos/sin postcomposition | Derivative sign(y)/√absolute-value(2y); angular speed 1/(2√absolute-value(t)) | Both chain formulas agree with explicit derivatives. |
| §4.6 singular source exclusion | Norm half-power in ℝ² versus restriction to a line | Polar integral exponent 1−p/2 gives p<4; line integral exponent −p/2 gives p<2 | For 2≤p<4, singular precomposition fails. |
| §5.1 measurable operator norm and chart comparison | Identity into metric 4dt²; source chart 2x; circle radius 3 | Intrinsic norms 2, 1, and 3/(2√absolute-value(t)); coordinate norm for the second is 1/2 | Metrics, not bare coordinate norms, determine the operator norm. |
| §5.2 `memManifoldW1pLoc_iff_norm` | Half-power; t log absolute-value(t) | Norms 1/(2√absolute-value(t)) and absolute-value(log absolute-value(t)+1); first threshold p<2, second all finite p but not ∞ | Exact exponent agreement with membership. |
| §5.3 comparable metrics | Target rescaled by c²; identity into dx²+4dy² | Norm ratio c for c>0; comparison constants 1 and 2 give norm 2 | Bounds α/b and β/a are sharp in the examples. |
| §6.1 linear Jacobian definition and uniqueness | diag(2,1), reflection, zero map in positive dimension | Pullback coefficients 2, −1, 0; source volume evaluates to 1 on a positive orthonormal basis | Excludes unsigned or inverse-Jacobian models. |
| §6.1 composition, scaling and determinant API | A=diag(2,1), B=diag(3,1), scalar −1 in dimension two | J(BA)=6=3·2; J(−A)=2=(−1)²·2; det(A)=2 | Multiplication and parity agree. |
| §6.1 orientation and basis API | Reverse target orientation; use source basis (2e₁,e₂) for identity | Reflection coefficient changes −1→1; unnormalized matrix determinant 2 but intrinsic J=1 | Sign changes and basis-volume correction retained. |
| §6.1 normDet, bijectivity, continuity and Hadamard | diag(2,1), rank-one diag(1,0), λ times an isometry | Unsigned determinants 2,0; norm powers 4,1; isometric scaling gives λⁿ on both sides for λ≥0 | Correct zero/nonzero and sharp cases. |
| §6.1 dimension-zero orientation API | Positive/negative empty-family volume forms | Volumes ±1, empty determinant 1, Jacobian sign product ±1, Hadamard 1≤1 | No positive-basis assumption in dimension zero. |
| §6.2 all-dimensional pointwise characterization | Identity, zero map in positive dimension, n=0 | Coefficients 1,0,±1; unsigned values 1,0,1 | F02 removes the positive-dimension restriction from characterization. |
| §6.2 signed chart formula in `jacobian_hadamard_integrability` | Identity ℝ→metric 4dt², source coordinate 2x | ε_M=ε_N=1, det=1/2, ρ_M=1/2, ρ_N=2; formula and intrinsic Jacobian both 2 | F02 includes chart domains and positive denominator. |
| §6.2 chart formula under basis changes | Model bases a,b≠0 | det=a/(2b), densities absolute-value(a)/2 and 2absolute-value(b), signs sign(a),sign(b); full product 2 | Arbitrary model bases and orientation factors compensate. |
| §6.2 orientation reversal and a.e. classical comparison | Identity to opposite orientation; fold (absolute-value(x₁),x₂) | Jacobians −1 and sign(x₁), compared with unsigned values 1 | Sign information is preserved. |
| §6.3 integrability branch | Radial stretch x r^(−1/2) in ℝ² | Singular values r^(−1/2), r^(−1/2)/2; norm²=r⁻¹, J=r⁻¹/2; derivative threshold p<4, Jacobian threshold q<2 | Hadamard and q=p/2 agree. |
| §6.3 n=0 branch | Zero-dimensional identity with either relative orientation | Norm 0, J=±1; essential bound 1; no quotient needed | F02 separates this from p/n. |
| §6.3 subcritical nonintegrability | Disjoint bumps r_k=2⁻ᵏ, λ_k=2ᵏ/√k | Amplitude 1/√k→0; p-energy terms 2^((p−2)k) k^(−p/2) summable for p<2; positive Jacobian terms π/(4k) diverge | Local Jacobian L¹ is not asserted below the threshold. |
| §6.4 positive/negative density construction | f(x)=2x; f(x)=−x on [0,1] | Mass pairs (2,0), (0,1); signed integrals 2,−1 | F06 corrects attribution, not these values. |
| §6.4 density integration against a bounded test | g(x)=x on [0,1] for the two maps | Positive-minus-negative integrals are 1−0=1 and 0−1/2=−1/2; integrals of gJ are 1 and −1/2 | Pinned withDensity formulas yield both identities. |
| §6.4 `jacobian_changeOfVariables` | Reflection; z² on 1<r<2 | Reflection absolute-density image masses both 1; z² density mass 30π versus image mass 15π | Open embedding/injectivity prevents multiplicity. |
| §6.4 extended-integral bound | (√absolute-value(x),y) on [−1,1]² | Absolute Jacobian mass 4; norm-square integral ∞ from 1/(4absolute-value(x)) | Nonnegative extended integral is essential. |
| §7.1 `euclidean_compatibility` | Identity, reflection, circle-free scalar half-power | Both weak relations give identity/reflection linear maps; scalar derivative threshold p<2 | Membership and derivative iff statements match. |
| §7.1 `euclidean_volume` | Flat interval a<b; empty domain; zero-dimensional singleton | Both volumes b−a, 0, 1 respectively | Native comap/restriction statement uses the inherited flat metric. |
| §7.1 `euclidean_jacobian` | Reflection diag(−1,1), z², n=0 identity | J=det U=−1, 4r², 1 respectively; reflection normDet=1 | F02 tests the oriented determinant, not its absolute value. |
| §7.1 inversion example | x↦x/r² in dimension n≥1 | Radial eigenvalue −r⁻², tangential eigenvalues r⁻²; J=−r⁻²ⁿ and norm=r⁻² | Same sign and normalization as T4. |
| §8.1 local retraction | Circle inclusion; cubic immersion failure; source patch of a figure-eight | r(ι(z))=z; inverse cubic derivative (1/3)absolute-value(t)^(−2/3) diverges at 0; regular patch projection is identity after inclusion | Source patches permit self-intersections; injective differential is necessary. |
| §8.2 `immersion_comparison` | Circle inclusion; double cover; cubic after cube root | Circle derivative threshold p<2; double-cover angular derivatives differ by 2; cubic composite derivative 1 versus cube-root threshold p<3/2 | Continuous immersion comparison is substantive. |
| §8.2 norm consequence after deletion | Circle inclusion and twice inclusion; arbitrary zero field | Norms 1/(2√absolute-value(t)) on both sides for inclusion; doubled norm 1/√absolute-value(t); zero field gives 0=0 | F05 uses pinned linear-isometry results; doubling fails isometry. |
| §8.3 extrinsic class and null changes | Hedgehog B³→S²; jump into S⁰ | HS derivative √2/r; p-mass 4π·2^(p/2)/(3−p) for p<3; jump has bounded values 1 but derivative 2δ on the interface | Keeps discontinuous Sobolev members, excludes bounded jumps. |
| §8.3 image-valued representative API | Hedgehog changed at 0 to a fixed sphere point | Composite agrees outside the singleton of measure 0; p-threshold remains p<3 | Injectivity and nonempty target permit an actual target-valued representative. |
| §8.4 `embedding_independence` | Circle embeddings z and (z,z²), u=x/r | Derivative norms 1/r and √5/r; both p-thresholds p<2 | Compact-target embeddings give the same class. |
| §8.4 compactness negative control | u=log log(1/r), graph embedding (s,exp(exp s)) | Original radial energy ∫₀^(1/e)dr/(r log²(1/r))=1; graph coordinate 1/r has divergent gradient L¹ mass | Noncompact closed image does not replace compactness. |
| §8.4 injectivity negative control | Half-angle jump followed by the circle double cover | Composite is x/r, smooth away from 0; inclusion retains a jump of size 2 across the positive real axis | Immersions alone do not give embedding independence for discontinuous maps. |
| §8.4 extension route and F04 contract | C¹ data on compact embedded circle in finite-dimensional vector space | Ambient dimension finite; separation and σ-compactness hold; extension equals the data on the image, derivative norm has a finite compact-support supremum | Corrected ambient hypotheses still supply bounded-derivative postcomposition, including p=∞. |
| Worked circle, radial stretch and hedgehog | Recompute the three README worked examples | Circle speed 1/(2√absolute-value(t)); radial stretch J=r⁻¹/2 and norm²/J=2; hedgehog threshold p<3 | Agree with §§4.2–4.3, 5.2, 6.3 and 8.2–8.4 after the repairs. |

## Acceptance, signatures and dependency checks

- Required acceptance elaboration: ran `lake env lean` on `packages/SobolevMapsBetweenManifolds/Suggested.lean` from the pinned content checkout. **Exit 0; 16 warnings, all “declaration uses sorry”; no errors.** All six used Tau Ceti module object files were present; no targeted module build was required.
- Mechanical binder audit: appended `#check @name` for every one of the **21 declarations** to one scratch copy and elaborated it once. **Exit 0; the same 16 sorry warnings.** Compared every elaborated signature with the README. The five definitions retain their necessary model, Haar, finite-dimensional, C¹ and boundaryless binders. The unchanged theorems retain their explicit exponent, continuity, covering, Lindelöf and metric hypotheses. No needed section binder disappeared.
- The changed T4 signature retains both orientations, both continuous metrics, the weak-differential relation and Sobolev membership. Its dimension n is unrestricted; positivity occurs only in the p/n conclusion. Chart-source hypotheses, both density factors and the reindexed bases are explicit. The new Euclidean signatures retain finite dimension, the flat inner product, Borel structure, actual open domain and, for the determinant, `ho`, both weak relations and the defining Jacobian characterization. Continuity of the native flat metric is an explicit named instance binder in each Euclidean signature. It is a proof-valued class on the fixed metric, constructible from `Bundle.instIsContinuousRiemannianBundle` applied to `(riemannianMetricVectorSpace V).toContinuousRiemannianMetric`; it introduces no variable metric.
- The acceptance file has five real-bodied definitions and sixteen admitted headline theorems, with one `import Mathlib`, six individually used Tau Ceti imports, no options and no admitted data or examples. Every declaration name occurs in the README. No API or boundary theorem replaced the deleted padding.
- `git diff --check`: **exit 0**. Source manifest: eight distinct keys retained, with only the determinant-notation attribution corrected. No new supplier gap was required.
- Required dependency command: **exit 0**, output:

```text
depcheck: 236 roadmaps, 2133 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No merge-order file was edited.

## Ownership, citations and maintainer notes

Read the main-branch PDE and DifferentialGeometry roadmaps for house style. Searched objects in both pinned libraries, main roadmaps, board packages and the supplied open-head index. The native density, orientation, chart and linear-isometry constructions are inputs; the general weak-map comparison is this package's existing ownership. Neither new Euclidean acceptance name occurs in another readable roadmap's Lean file. The generic flat open-domain volume comparison was not found among pinned declarations; the upper-half-plane comparison is specific to its Poincaré metric.

Rechecked citations to PDE Layer 1, GeometricCurrents G6, PseudoholomorphicCurveAnalysis PH1.1/PH1.2/PH4.1, SobolevPolynomialApproximation §2.1, PseudodifferentialOperators §5.2, RiemannianGeometry R4.6, DifferentialGeometry §§2.1–2.2/12.1/12.4 and GeometricMeasureTheory G2 on main. Rechecked the SobolevDifferentialForms §4.1 and TeichmullerGeometry §7.4 open heads. The citation resolver reports no unresolved roadmap citations or own Lean names; its exclusion of Lake packages was supplemented by direct pinned-file checks.

Read the closest open heads: QuasiregularMaps explicitly imports this package's weak classes and Jacobians; SobolevDifferentialForms owns global form pullback; both ComplexKahlerGeometry heads own compact-base bundle Sobolev/elliptic theory; DifferentialGeometry retains §12.4's native volume and density interfaces. None owns a competing general first-order weak-map comparison. The overlap ledger identifies no conflicting revision, dropped cited ID or citation defined only by an open revision. No supplier section was renamed.

The existing intake placement concern remains: QuasiregularMaps consumes this package and must follow it in merge order. Its open-head contracts explicitly register that supply. This is the already recorded worker/intake ordering action; no package edit can move that consumer, and no new dependency on the consumer was introduced.

`isometric_immersion_norm` is the only removed Lean name. Its mathematical identity remains in §8.2 with the native inputs. Added names are `euclidean_volume` and `euclidean_jacobian`; `jacobian_hadamard_integrability` keeps its name with an expanded conclusion and no leading positive-dimension argument. No external citation to the deleted name was found in the ownership search. The source-certification limitations above remain; elaboration establishes well-formed signatures, not mathematical proof or independent acceptance. Nothing was committed or pushed.

## Statement-hygiene gate repairs

- `euclidean_volume` (P3): proposition-local `letI` → named instance binder `hflat` for continuity of the native flat metric. The metric, open domain and measure equality are unchanged.
- `euclidean_jacobian` (P3): the same `letI` → the same named instance binder, placed before the orientation and weak-differential data. The orientation, determinant and almost-everywhere measure are unchanged.

`Mathlib/Topology/VectorBundle/Riemannian.lean:60` defines this continuity class in `Prop` for the given fibre inner products; `Mathlib/Geometry/Manifold/Riemannian/Basic.lean:102` and :125 supply the standard flat metric and native bundle. Thus the binder does not permit rescaling or replacing the metric. The existing interval, empty-domain, zero-dimensional and reflection Checks still compute respectively b−a, 0, 1 and −1 on both sides. No README statement needs changing.

Reran the required acceptance elaboration: **exit 0, 16 existing sorry warnings, no errors**. Reran the scratch `#check @name` audit for all **21 declarations**: **exit 0, 16 sorry warnings**. Both changed signatures retain `hflat` explicitly, together with finite dimension, Borel structure and all original domain, orientation and weak-differential hypotheses. Neither theorem signature contains `letI`. No new declaration was introduced.

Reran the required dependency command: **exit 0**, output:

```text
depcheck: 236 roadmaps, 2133 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurred. `git diff --check`: **exit 0**. This follow-up changes only the two flagged signatures and this report; all prior deliverables are retained. Nothing was committed or pushed.
