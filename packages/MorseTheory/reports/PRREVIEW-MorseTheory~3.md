# Review of MorseTheory (pull request #1094 at 17c0bab)

**Verdict:** needs changes

Gate at this head: `gate MorseTheory … build=0 OK`, every check passed (residue, depcheck, stray-files, outside-folder all 0). Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`. `lake env lean` on `TauCetiRoadmap/MorseTheory/Suggested.lean`: 17 `declaration uses sorry` warnings, no other diagnostic, 3.6 s. Depcheck: `depcheck: 204 roadmaps, 1421 edges, 0 problem(s)`, no UPWARD or CYCLE line. Files changed outside the folder: none. Full review (441 changed lines since `65c6a14`).

## The previous review's findings at this head

- r1 R01 (P1, M4.2 on an AlgebraicTopology section that does not exist on main): **repaired**. M4.2 (old lines 713–869) and the Summary sentence "Compact isolating gradient pairs also supply…" are gone; the README now ends M4 at the RP² perfection remark (line 773) and goes straight to M5.
- r1 R02 (P2, Morse inequalities absent): **repaired**. `bettiNumber` (`Suggested.lean` 150–153) and `morse_inequalities` (160–165) are stated against `AlgebraicTopology.singularHomologyFunctor` and `Polynomial ℕ`; the identity is coefficientwise in `ℕ∞` and checked below (table rows 1–5).
- r1 R03 (P3, `<a id=` anchor): **repaired**, gate `residue=0`.
- r1 R04 (P3, two owners of Brown's generalized Schoenflies theorem): **not repaired**, and not repairable by this author alone; see R05 below.
- r1 R05 (P3, Golé without a reference entry): **repaired** by removal with M4.2.
- r1 R06 (P3, five padding declarations): **repaired**. `criticalPoints_eq_setOf_mfderiv_eq_zero`, `criticalCount_ne_top`, `finiteSmoothCriticalCounts_nonempty`, `minimumCriticalCount_attained`, `minimumCriticalCount_independent` are deleted; `minimumCriticalCount` now carries the nonemptiness proof inline (246–250).
- r1 R07 (P3, docstring and standing hypotheses): **repaired**. Docstring in the "target signatures" form (6–34); `SecondCountableTopology M` is in the `variable` block (47) and every theorem keeps it (checked, see Verified sound). One stated reason is inaccurate; see R01 and R06.
- r1 R08 (P3, names at neither pin nor commit): **repaired**. `lsCriticalPointBound` is de-backticked (496); `riemannianGradient` became `TauCeti.Manifold.mgradient` with a link to `Riemannian/Gradient/Basic` (815–816); lines 37–42 now say the Morse-lemma, pseudo-gradient, compact-sublevel, global-flow and gradient files are cited at commit `e8375e4f`. I read those files at that commit from the object store: `structure MorseChart` (`Morse/Lemma.lean:66`), `IsManifoldNondegenerateCriticalPoint.nonempty_morseChart` (:211), `IsMorse.finite_setOf_mfderiv_eq_zero` (`PseudoGradient/Existence.lean:323`), `MorseChart.mfderiv_eq_zero_iff` (:307, inside `namespace MorseChart`, so r1's "exists at neither" was wrong), `IsMorse.exists_isAdaptedPseudoGradient` (:340), `IsAdaptedPseudoGradient` (`PseudoGradient/Basic.lean:72`), `MorseChart.linearFlow` (`PseudoGradient/Local.lean:67`), `TauCeti.Manifold.mgradient` (`Riemannian/Gradient/Basic.lean:59`), and `PseudoGradient/{Flow,Energy,Gradient}`, `IntegralCurve/GlobalFlow`, `Analysis/Calculus/Morse/CompactSublevel` all exist there. The two "found nowhere" leads in the worker's citation list (`MorseChart.linearFlow`, `TauCeti.Manifold.mgradient`) are therefore resolved at the commit the README names.
- r1 R09 (P3, README shape): **partly repaired** as its repair asked: M4.1's three targets now carry `*Needs:*` lines and `**Checks.**` lists (624–642, 663–678, 704–720, 731); the course-source-audit sentence is gone. The whole-README restructuring (Scope/Conventions/Exact supplier contracts/`### k.n` targets) remains for a later revision and is not re-raised.

## R01 (P2) — M6's compact-trapped gradient convergence is statable at the pins but absent

Location: `TauCetiRoadmap/MorseTheory/Suggested.lean` lines 30–32 ("the exponential convergence of negative-gradient trajectories on manifolds (M6), which lacks a Riemannian gradient on manifolds at the pins"); README lines 825–831 ("For a forward negative-gradient trajectory trapped in a compact set, prove global forward existence, … identify a single limit p").

Claim: the headline is not statable because the pins have no manifold gradient.

Witness: the pinned Mathlib has `RiemannianBundle (fun x : M ↦ TangentSpace I x)` (`Mathlib/Topology/VectorBundle/Riemannian.lean:420`, an inner product on every tangent space), `IsContMDiffRiemannianBundle` (`Mathlib/Geometry/Manifold/VectorBundle/Riemannian.lean:67`) and `IsMIntegralCurveOn` (`Mathlib/Geometry/Manifold/IntegralCurve/Basic.lean:65`). The gradient is then a one-line specialisation of library notions, and the convergence theorem elaborates at the pin with only `sorry` as diagnostic (tested in my scratch copy with `lake env lean`):

```lean
open Bundle in
/-- The gradient of `f` for the Riemannian metric: the Riesz dual of `df_x`. -/
noncomputable def mgradient [RiemannianBundle (fun (x : M) ↦ TangentSpace I x)]
    (f : M → ℝ) (x : M) : TangentSpace I x :=
  (InnerProductSpace.toDual ℝ (TangentSpace I x)).symm (mfderiv I 𝓘(ℝ) f x)

open Bundle in
/-- M6: a forward negative-gradient trajectory of a Morse function trapped in a compact set
converges to a critical point. -/
theorem tendsto_of_isMIntegralCurveOn_neg_mgradient
    [RiemannianBundle (fun (x : M) ↦ TangentSpace I x)]
    [IsContMDiffRiemannianBundle I ∞ E (fun (x : M) ↦ TangentSpace I x)]
    (f : M → ℝ) (hf : TauCeti.IsMorse I f) (γ : ℝ → M)
    (hγ : IsMIntegralCurveOn γ (fun x ↦ -mgradient (I := I) f x) (Set.Ici 0))
    {K : Set M} (hK : IsCompact K) (hmaps : Set.MapsTo γ (Set.Ici 0) K) :
    ∃ p ∈ K, mfderiv I 𝓘(ℝ) f p = 0 ∧ Filter.Tendsto γ Filter.atTop (nhds p) := by
  sorry
```

The smooth-metric class is needed, not decoration: with a merely pointwise metric `g = λ·g₀` and `λ` unbounded near a regular point `q`, the trajectory of `−grad_g f = λ⁻¹ grad_{g₀} f` can stall and converge to `q`, so the conclusion fails (table row 9). This corrects r1's R07, which accepted "no gradient at the pin" as the reason; the gradient is a Riesz dual of `mfderiv` under a class Mathlib already has. The exponential-decay form additionally needs a distance (`[EMetricSpace M] [IsRiemannianManifold I M]`, `Mathlib/Geometry/Manifold/Riemannian/Basic.lean:79`) and may stay in the docstring if the author prefers; the convergence statement itself is the M6 headline.

Repair: add the two declarations above (under `/-! ## M6: gradient convergence and exponential decay -/`), cite `mgradient` in the README's M6 paragraph as the pinned-form gradient agreeing with `TauCeti.Manifold.mgradient` at `e8375e4f`, and shorten the docstring's "not statable" list accordingly (keep the exponential-decay estimate there if it is not stated).

## R02 (P3) — The CW model's carrier is not required to be Hausdorff

Location: `TauCetiRoadmap/MorseTheory/Suggested.lean` line 141 (`∃ (X : Type u) (_ : TopologicalSpace X) (C : Set X) (cw : Topology.CWComplex C)`).

Witness: `Topology.RelCWComplex` (`Mathlib/Topology/CWComplex/Classical/Basic.lean:99`) has no separation axiom in its fields; every closure statement about it (`isClosed_closedCell` :342, `closed` :364, `isClosed` :471) takes `[T2Space X]` separately. The existential therefore admits a non-Hausdorff "CW complex", which is not the Milnor Theorem 3.5 model the docstring names.

Repair: insert `(_ : T2Space X)` after the topology binder.

## R03 (P3) — The Lusternik–Schnirelmann inequality has no locator, and "the source" dangles

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 493–512 (the seeded target "Arbitrary-function Lusternik–Schnirelmann inequality") and 577 ("This is the source's c(M), not a new restriction to Morse functions").

Witness: no theorem, page or author is cited for `lsCategoryCount M M ≤ totalCriticalCount f` or for `c(M)`; "the source" referred to the Thomas Mark notes, which this head deletes from the references. I fetched Takens, Invent. Math. 6 (1968), from GDZ (`takens1968`, open repository, OCR): its Introduction defines `F.(X)` as the minimum over smooth `f` of the number of critical points (printed p. 198, lines 79–81), defines `L.S.(X)` as the least size of an open cover by sets contractible in `X` (lines 94–96, footnote line 120 noting the "one smaller" convention), and attributes `F.(X) ≥ L.S.(X)` for closed `X` to Lusternik–Schnirelmann (lines 91–92). That is exactly the README's unnormalized inequality and its `c(M)`.

Repair: at line 496 add "(Takens, *The minimal number of critical points of a function on a compact manifold and the Lusternik–Schnirelmann category*, Invent. Math. 6 (1968), Introduction, p. 198)"; at line 577 write "This is Takens' `F.(M)`, not a new restriction to Morse functions"; add the Takens entry to References. Palais, Topology 5 (1966), Theorem 7.2, is the usual primary proof but resolves only to a paywalled page (uncertified).

## R04 (P3) — A negative-control Check is false in dimension one

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 638–640 ("f=h² on S^m, m>0, has critical set {poles}∪{h=0} and count ⊤").

Witness: `df = 2h·dh` vanishes at the poles and on `{h=0}`; for `m=1` the equator `{h=0}` is two points, so the critical set has four points and `totalCriticalCount f = 4`, not `⊤`. The control still works (4 ≠ 2), but the stated value is wrong for `m=1`.

Repair: "count ⊤ for m≥2 and 4 for m=1, so `totalCriticalCount f=2` fails in every dimension".

## R05 (P3) — Two owners for Brown's generalized Schoenflies theorem (carried over)

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 72–73 and 644–661.

Witness: GeometricTopology on main (`fa41b37`) does not state it. The open revision of GeometricTopology, pull request #903 at `a814b8df`, has "### 2.2 The generalized Schoenflies theorem" (its lines 1105–1123) proving Brown's Theorems 4–5 and listing Brown's theorem under its Layer 2 summary (line 36). Two open pull requests build the same theorem.

Repair: unchanged from r1 R04: one owner, decided by a human; this review records the conflict and does not block on it.

## R06 (P3) — The docstring's reason for omitting the handle attachment contradicts the README

Location: `TauCetiRoadmap/MorseTheory/Suggested.lean` lines 23–25 ("the handle-attachment homeomorphism across a critical level (M2), which lacks the topological handle adjunction … a construction target of M2"); README line 308 ("native TopCat pushouts for the topological handle adjunction").

Witness: the README says the adjunction is Mathlib's `TopCat` pushout (which exists at the pin: `TopCat` has all colimits); the docstring says the adjunction is a missing construction. Both cannot hold.

Repair: either state the attachment with `CategoryTheory.Limits.pushout` in `TopCat` over the existential attaching data, or change the docstring's reason to the true one (the statement quantifies over chart-dependent attaching maps of `Σ_p D^{λ_p}×D^{m−λ_p}`, a long encoding the file does not state), and say that the CW model `exists_cwComplex_homotopyEquiv` is the stated cumulative form.

## R07 (P3) — Three prose overclaims

Location: `TauCetiRoadmap/MorseTheory/README.md` line 61 ("native singular (co)homology"); lines 644–649 (Brown's Theorem 5 cited for "the closure of each is homeomorphic to the closed ball D^m by a homeomorphism carrying its frontier Σ onto ∂D^m"); `Suggested.lean` line 161 (`(k : Type u)`).

Witness: (a) the pinned Mathlib has singular homology only (`Mathlib/AlgebraicTopology/SingularHomology/{Basic,HomologyZero,HomotopyInvariance,HomotopyInvarianceTopCat}.lean`); `singularCohomology` occurs nowhere; cohomology is AlgebraicTopology's. (b) Brown's Theorem 5 (`51ec0a58` lines 101–103) says only that the closure of either complementary domain of the middle sphere is an `n`-cell; the clause that the cell homeomorphism carries the frontier onto `∂D^m` is a consequence by invariance of domain (the manifold interior of the closure is the domain, since `Σ` is bicollared), not part of the cited statement. (c) the field `k` is quantified in `M`'s universe `u` because `bettiNumber` uses `ModuleCat.{u} k` with `ModuleCat.of k k`; the README says "a field k". Harmless for `M : Type`, but the README's generality is wider than the Lean's.

Repair: (a) "native singular homology (cohomology from AlgebraicTopology Stage 6)"; (b) "… by a homeomorphism carrying its frontier Σ onto ∂D^m (Brown 1960, Theorem 5, p. 76, with the frontier clause by invariance of domain)"; (c) one clause in M4: "with k a field in M's universe".

## Verified sound

**Build and signatures.** `lake env lean` on `Suggested.lean`: 17 sorry warnings, nothing else. A scratch file with `#check @name` for all 27 declarations elaborated once; every `theorem` keeps `[FiniteDimensional ℝ E] [I.Boundaryless] [T2Space M] [SecondCountableTopology M] [IsManifold I ∞ M]` (so r1's inconsistency between `exists_sublevelDeformation` and `exists_sublevelHomotopyEquiv` is gone); `criticalPoints`, `criticalCount`, `totalCriticalCount`, `finiteSmoothCriticalCounts`, `MorseFiniteWitness`, `minimumCriticalCount` keep only `[TopologicalSpace M] [ChartedSpace H M]` (their types mention nothing else); `morseFiniteWitnessOfMorse` keeps the full block plus `[CompactSpace M]` because its body uses `finite_criticalPoints_inter`; `sublevelInclusion` keeps `[TopologicalSpace M]`; `bettiNumber : (k : Type u) → [Field k] → (X : Type u) → [TopologicalSpace X] → ℕ → ℕ`. Elaborated types agree with the README statements of M1, M2, M4, M4.1 (same hypotheses, counts in `ℕ∞`, sphere `Metric.sphere (0 : EuclideanSpace ℝ (Fin (m+1))) 1`), apart from R02 and R07(c).

**Padding probe.** A copy with every `sorry` replaced by `first | rfl | simp_all | infer_instance | aesop | (exact ⟨⟩)`: all 17 sorried theorems survive (an error at each; `aesop` reports exhaustive failure at line 87). No padding remains; `nonempty_homeomorph_sphere_of_two_criticalPoints` has a real proof term composing the two M4.1 targets, as the README says.

**Library declarations opened at the pins.** Mathlib: `AlgebraicTopology.singularHomologyFunctor : (C) → [Category C] → [HasCoproducts C] → [Preadditive C] → ℕ → [CategoryWithHomology C] → C ⥤ TopCat ⥤ C` (applied to `ModuleCat.{u} k`, `ModuleCat.of k k`, `TopCat.of M`); `Topology.CWComplex : {X} → [TopologicalSpace X] → Set X → Type (u+1)`, `RelCWComplex.cell … : ℕ → Type u`, `ENat.card`; `RiemannianBundle` (`Topology/VectorBundle/Riemannian.lean:420`), `IsContMDiffRiemannianBundle` (`Geometry/Manifold/VectorBundle/Riemannian.lean:67`), `IsRiemannianManifold` (`Geometry/Manifold/Riemannian/Basic.lean:79`), `IsMIntegralCurveOn` (`IntegralCurve/Basic.lean:65`); `onePointCongr` (`OnePoint/Basic.lean:629`), `onePointEquivSphereOfFinrankEq` (`OnePoint/Sphere.lean:34`: any finite-dimensional Hausdorff real TVS, so `Fin m → ℝ` qualifies); `HasStrictFDerivAt.implicitToOpenPartialHomeomorphOfComplemented`, `IsSubmersionAtOfComplement.mk_of_charts`, `ChartedSpace.locallyConnectedSpace`, `finrank_real_of_complex`, `Module.finrank_pi`, `mem_baseSet_trivializationAt`, `IsLocalMin.fderiv_eq_zero`, `IsEmbedding.subtypeVal`. Tau Ceti at `a91d3aaf`: `IsMorse` (`Morse/Basic.lean:178`, `IsMorseOn I f univ`, which includes `ContMDiffOn … ∞`), `IsMorseOn` (:99), `IsManifoldNondegenerateCriticalPoint` (:59, the preferred-chart expression), `manifoldMorseIndex` (`Index.lean:74`), `IsMorse.contMDiff` (:197), `IsNondegenerateCriticalPoint` (`Analysis/Calculus/Morse/Basic.lean:124`), `manifoldMorseIndex_le_finrank`, `manifoldMorseIndex_comp_fst_add_comp_snd`, `exists_hessianQuadraticForm_equivalent_weightedSumSquares`, `exists_congruence_of_symmetric_family`, `IsNondegenerateCriticalPoint.exists_morse_chart`, `sqrtNearOne`, `exists_mul_abs_sub_le_norm_gradient_sq`, `IsIntegralCurveOn.exists_tendsto_atTop`, `exists_sub_le_mul_exp_atTop`, `exists_norm_sub_le_mul_exp_atTop`, the eleven `sectionZero*` names and `sectionLinearization_trivial`, `exists_isManifold_sectionZero_of_contMDiff`, `isFredholm_of_finiteDimensional`, `index_eq_of_finiteDimensional`, `ContinuousLinearMap.kerModelEquiv` (`Fredholm/LevelSet/Basic.lean:213`), `implicitCoordEquiv`/`coe_implicitCoordEquiv`/`implicitCoordSource`, `boundaryChartedSpace` and its five laws, `isManifold_boundary`, `isImmersionOfComplement_comp_diffeomorph` (`Immersion.lean:136`), `SpectralSplitting`, `Morse/Sphere/{Basic,Prod}`, `Analysis/Calculus/Morse/{Basic,NormalForm,Generic}`: all present. `mvfderiv_eq_fderiv_comp_extChartAt_symm` is in `VectorBundle/Section/Parametric.lean`.

**Cross-roadmap citations resolved on main (`fa41b37`).** AlgebraicTopology: anchors `#stage-3-subdivision-excision-and-mayer--vietoris` (heading line 471) and `#stage-6-cohomology-products-and-manifold-duality` (946) exist; "Categorical covers and Lusternik–Schnirelmann bounds" (1080–1150) defines `LSCategoricalCover`, `lsCategoryCount X A : ℕ∞` as the unnormalized infimum (empty set `0`, `∞` when no finite cover), the pullback inequality for `g ≃ id` with `g(A) ⊆ B`, the finite-coproduct sum, `normalizedLSCategory X = lsCategoryCount X X − 1` on nonempty `X` with cat(point)=0, and `lsCupLength X R + 1 ≤ lsCategoryCount X X`: the README's lines 502–511 use exactly these conventions. Stage 4 names `diskBoundaryRelCW`, `relativeCWPushout`, `relativeCWPushoutCWModel`, `homotopyPushoutGluingComparison`, `cofibrationTowerHomotopyEquivalence`, `cwSubcomplexTowerUnion` present. DifferentialGeometry: "### Layer 5: integration and Stokes' theorem" (503) gives the cited anchor; `boundaryOrientation_spec` (509); Layers 3 (371), 10 (877), 12 (910). GeometricTopology Layers 1 (177) and 2 (289). ComplexKahlerGeometry K1 (96), K7 (1405, anchor `#k7-projective-torus-and-hopf-examples`). DGFloer `SpectralObject` (382, 615). ConvexityToric T2 (73), HeegaardFloer Lane M (57), RiemannianGeometry R3 (347), CharacteristicClasses C2 (550), AffineMorseLefschetz: present. HomotopySpheres is not on main (open #1287, merge order line 64) and is cited only as a consumer. RiemannianGeometry's "finite-dimensional Lusternik–Schnirelmann/minimax lemma" (main line 780) is a path-space minimax existence lemma, not the closed-manifold count bound: no duplication.

**Ownership against open pull requests** (`roadmaps grep` over 437 heads): Schoenflies: PlanarTopology Layer 7 in #271 (planar, dimension ≤ 2) and GeometricTopology #903 §2.2 (R05); "Morse inequalit": only HeegaardFloer's semiclassical remark; "Reeb|exactly two critical": no other roadmap states the two-critical-point sphere theorem; "Lusternik": AlgebraicTopology (#1652, #1663 revisions and main) as supplier, RiemannianGeometry as above. The Lean names `morse_inequalities`, `exists_cwComplex_homotopyEquiv`, `bettiNumber`, `criticalCount`, `nonempty_homeomorph_sphere_*` occur in no other roadmap. Data: a second open revision of this folder, #1682 "Add Palais–Smale compactness and nonproper gradient convergence" at `929db4f`, also edits M6; it is neither a supplier nor reviewed here, but the two heads will have to be reconciled on merge.

**Sources.** Brown 1960 (`51ec0a58`): Theorem 5 at lines 101–113 (printed p. 76), proof via Theorems 2 and 4 by collapsing the two outer collar pieces: the README's route (652–655) matches. Milnor 1959 (`34405fd5`): Corollaire 1 at line 117 (printed p. 442), "homéomorphe à Sⁿ", proof from condition (2); README 699–702 matches. Rosen 1960 (`96b89458` lines 4092–4104, printed p. 380 at line 4111): abstract 570-28, Lemma 1 exactly as cited (854–856). Takens 1968 (`takens1968`, fetched this round from GDZ `LOG_0025`, OCR): Introduction p. 198 as in R03. Cohen–Iga–Norbury (`80713f18`): contains no Lusternik–Schnirelmann category (its "category" is the flow category), so it cannot serve as the LS locator.

**Adversarial table.** Instances tried and the values on each side.

| # | Statement | Instance | Left | Right | Result |
|---|---|---|---|---|---|
| 1 | `morse_inequalities` coefficient law | `((1+X)Q).coeff j` | `Q_j + Q_{j−1}` (`Q_0` at j=0) | strong-inequality form `c_j = b_j + Q_j + Q_{j−1}` | agrees |
| 2 | same | S², height, any k | c=(1,0,1) | b=(1,0,1), Q=0 | holds |
| 3 | same | T², 1 min, 3 saddles, 2 max, k=ℚ | c=(1,3,2) | b=(1,2,1), Q=t: 1+0, 2+1+0, 1+0+1 | holds |
| 4 | same | RP², three-weight quadratic | c=(1,1,1) | k=F₂: b=(1,1,1), Q=0; k=ℚ: b=(1,0,0), Q=t: 1, 0+1+0, 0+0+1 | holds both |
| 5 | same | M=∅; M=point | c=0; c₀=1 | b=0, Q=0; b₀=1, Q=0 | holds; `Field k` with `k` in universe u (R07c) |
| 6 | `exists_cwComplex_homotopyEquiv` | M=∅ | X=∅, no cells, 0 | criticalCount 0 | holds |
| 7 | same | M=ℕ discrete, f(n)=n (proper, bounded below, dim 0: every point nondegenerate critical, index 0) | criticalCount 0 = ⊤ | ℕ as 0-cells, `ENat.card ℕ = ⊤` | holds (counts in ℕ∞) |
| 8 | same | non-Hausdorff X | `RelCWComplex` has no T2 field | Mathlib closure lemmas need `[T2Space X]` | R02 |
| 9 | M6 convergence (R01 form) | f=x² on ℝ, γ=e^{−2t}x₀, K=[−1,1]; f=−x², trapped only if x₀=0; metric λ·g₀ with λ→∞ at a regular q | limit 0 critical; limit 0; trajectory of λ⁻¹grad₀f stalls at q | conclusion; conclusion; fails | smooth-metric class required and included |
| 10 | `nonempty_homeomorph_sphere_of_two_euclidean_opens` | m=0, X=point, U=V=X | 1 point | S⁰: 2 points | false; excluded by `hm` (Check 715) |
| 11 | same | X=ℝ^m, U=V=X; X=D^m; X=S^m∨S^m | noncompact; boundary point; wedge point | hypotheses fail | no counterexample (Checks 717–720) |
| 12 | same, route | D closed r-ball in U ⊇ X∖V, C=X∖int D ⊂ V | X∖D and (int D∩V)∪{∞} open, disjoint, union S^m∖Σ, one collar side each | Brown: exactly two components | each open set is one component; C = closure of the one without ∞ |
| 13 | `exists_twoEuclideanOpenCover` | f=h−h³/3 on S^m | df=(1−h²)dh, zeros = poles; d²f at poles = −2h·0+0·d²h = 0 | count 2, Hessians vanish | theorem applies, M1 chart inapplicable (Check 634) |
| 14 | same, Check 638 | f=h² on S^m | m≥2: crit = poles ∪ S^{m−1}, count ⊤; m=1: 4 points | `=2` fails both | Check's "⊤" wrong at m=1 (R04) |
| 15 | same, Check 630 | height on S^m, Φ_t descending | Φ_{−T}(B) expands the south cap over K | Φ_T(B) ⊂ B | Check correct |
| 16 | uniform flow time | band [a+ε,b−δ], η=min‖grad f‖ | f drops ≥ η²t in band | T > (b−δ−a−ε)/η² | Φ_T(K) ⊂ {f<a+ε} |
| 17 | `nonempty_homeomorph_sphere_of_two_criticalPoints` | f constant, dim>0; RP² | count ⊤; ≥3 | `=2` fails | consistent |
| 18 | Brown Theorem 5 | m=1, S⁰×I ⊂ S¹ | closures of the two arcs | two 1-cells | holds (Check 668) |
| 19 | separation Check 676 | MV on the open collar, m≥2: H̃₁(S^m)=0 → H̃₀(two collar halves)=ℤ → H̃₀(S^m∖Σ)⊕0 → 0; m=1: ℤ → ℤ³ → H̃₀⊕ℤ → 0 | H̃₀(S^m∖Σ)=ℤ | two components | holds in every m≥1 |
| 20 | LS inequality (M4) vs Takens | M=∅; point; S¹ height; S¹ const; T² Σcos; RP² | L.S.: 0,1,2,2,3,3 | counts 0,1,2,⊤,4,3 | ≤ everywhere; unnormalized convention = Takens' |
| 21 | `exists_criticalCategoricalCover` | M=∅; M=point | `Fin 0`; one open `⊤` | vacuous; nullhomotopic | holds |
| 22 | `exists_degenerateCriticalLevelDeformation` | c regular, U=⊥; c>max f | {f≤c+ε}→{f<c−ε} across a critical-free band; `hisolated` forces max f<c−δ, Φ=id | — | holds |
| 23 | `exists_noCriticalOpenSublevelDeformation` | b<min f; a−δ>max f | vacuous; Φ=id | — | holds |
| 24 | `exists_sublevelDeformation` | Milnor Thm 3.1 data | compact band, no critical points | retraction rel {f≤a} | exact hypotheses |
| 25 | normalized chart | f=f(p)−Σ_{i<λ}y_i²+Σ_{i≥λ}y_i² | Hessian ±2 | README 88–89 | consistent |
| 26 | `c_j(−f)=c_{m−j}(f)` | S² height: c₀=c₂=1 | −f: c₂=c₀=1 | complementary index | holds |
| 27 | `minimumCriticalCount_eq_extended_sInf` | S^m with height: witness count 2; constant f contributes ⊤ | Nat.find = 2 | sInf over ℕ∞ = 2 | holds; ⊤ cannot lower it |
| 28 | RP² handle example | f=(y²+2z²)/(x²+y²+z²) | critical [1:0:0],[0:1:0],[0:0:1], values 0,1,2, indices 0,1,2 | {f≤2−ε}=Möbius band | attaching degree ±2 consistent |

**Proof routes checked.** Two-open-cell lemma: ∞ ∉ closure of X∖D because X∖D ⊂ C compact in V; closure of X∖D is C since D is a closed ball in U-coordinates; gluing D ≅ D^m and C ≅ D^m along the boundary homeomorphism gives S^m by the Alexander radial extension (owned at line 705). Two-Euclidean-open cover: {f≤a+ε} is invariant under the descending flow, so U=Φ_{−T}(B) ⊇ K and U≅B≅ℝ^m via Φ_T and the chart; V≅ℝ^m by the chart. CW model: `relativeCWPushoutCWModel` at each regular stage, `cwSubcomplexTowerUnion` for the union, cell counts labelled by the critical points (so `ENat.card (cell n) = criticalCount f n` with `⊤` on infinite index-n sets).

## Not verifiable

- Milnor, *Morse Theory*, §§2–6, Theorems 3.1, 3.5, 4.1, Remark 1 (References, `Suggested.lean` docstrings): Princeton University Press, not in the cache; cited by locator only.
- Palais, *Lusternik–Schnirelman theory on Banach manifolds*, Topology 5 (1966), Theorem 7.2 (alternative primary locator for R03): DOI prefix 10.1016 resolves only to a paywalled page (`palais1966`, uncertified).
- Cohen–Iga–Norbury "classical part": fetched (`80713f18`), but the README gives no theorem or page locators into it.

## Source issues

- none
