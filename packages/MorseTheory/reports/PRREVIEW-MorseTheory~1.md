# Review of MorseTheory (pull request #1094 at 65c6a14)

**Verdict:** needs changes

Gate at this head: FAIL (`residue=1`, everything else 0, `build=0`). Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf` (the worktree's `.lake/packages` is at these revisions). `lake env lean` on `TauCetiRoadmap/MorseTheory/Suggested.lean`: 17 `declaration uses sorry` warnings, no other diagnostic. Depcheck: `depcheck: 204 roadmaps, 1422 edges, 0 problem(s)`, no UPWARD or CYCLE line.

## R01 (P1) — M4.2 consumes an AlgebraicTopology section that does not exist on main

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 718–724 ("Consume AT6's compact-metric Čech closed-pair supplement … for Čech cohomology of compact metric spaces and closed pairs, its continuity, closed excision, exact sequences, relative cups and cube-product theorem"), and every later paragraph of M4.2 (lines 776–786 continuity and closed excision, 790–811 the shifted cup-module injection and the cube generator, 833–848 the relative cup into `Ȟ^*(I,A∪B)`).

Claim: AlgebraicTopology Stage 6 supplies a Čech cohomology of compact metric closed pairs with continuity, closed excision, relative cups and a cube-product theorem.

Witness: on main at `fa41b37`, `TauCetiRoadmap/AlgebraicTopology/README.md` contains no such section: the anchor `#compact-metric-cech-closed-pairs` is absent, and "compact-metric", "closed pair" and "Čech cohomology of compact metric" occur 0 times; its only Čech object is the finite-open-cover Čech double complex (lines 37, 934). `roadmaps grep` finds the anchor only at the head of pull request #1652, a revision of AlgebraicTopology (its line 1085), and in #1651. A revision of an existing roadmap is never a dependency; the pull request description itself says the compact-pair topology "is specified in #1652".

Consequence: all four M4.2 targets the worker sampled ("Regular pair and complete flow" apart, "Survivors and their maps", "Shifted relative cup-module injection", "Arbitrary-degenerate count on the invariant compactum") rest on an unowned prerequisite. The mathematics of M4.2 is sound (see the table), but it cannot be built from anything on main or at the pins.

Repair: remove M4.2 (lines 713–869) and the Summary sentence at lines 7–8 from this pull request, and resubmit it once AlgebraicTopology on main states the Čech closed-pair theory, citing that merged section by name. Do not restate the Čech theory here: it is what the AlgebraicTopology revision plans. If the project lets this roadmap declare gaps, the alternative is one declared gap with supplier AlgebraicTopology Stage 6 and the one-sentence `needs` "Čech cohomology of compact metric closed pairs with continuity for decreasing pairs, closed excision, the relative cup `Ȟ(X,A)⊗Ȟ(X,B)→Ȟ(X,A∪B)` for closed A,B, and the relative cube generator with its cross-product isomorphism".

## R02 (P2) — The Morse inequalities are statable at the pin but absent from Suggested.lean

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 467–478 (M4: "`Σ c_j t^j = Σ b_j t^j + (1+t)Q(t)`, with Q∈ℕ[t]", the weak inequalities and the Euler equality); `TauCetiRoadmap/MorseTheory/Suggested.lean` docstring lines 6–14.

Claim: the file states the roadmap's headline theorems statable at the pins, or says which are not.

Witness: the pinned Mathlib has singular homology (`singularHomologyFunctor` at `Mathlib/AlgebraicTopology/SingularHomology/Basic.lean:52`, a functor `C ⥤ TopCat ⥤ C` for any `CategoryWithHomology C`, so `ModuleCat k` with coefficients `ModuleCat.of k k`), `Module.finrank` and `Polynomial ℕ`; `criticalCount` is already in the file and `criticalCount_ne_top` gives finiteness on compact M. The strong inequalities `∑ j, criticalCount f j • X^j = ∑ j, b_j • X^j + (1 + X) * Q` with `b_j := Module.finrank k (H_j(M;k))`, and the weak inequalities `b_j ≤ c_j`, are therefore statable for a Morse f on compact M. Neither is stated, and the docstring names no non-statable headline. This predates the pull request (the file on main lacks them too), but the gap is in the folder under review.

Repair: add the strong Morse inequalities (compact M, `TauCeti.IsMorse I f`, a field k) with `sorry`, or, if the author judges the homology carrier unusable at this pin, say in the module docstring which headline it is and what carrier it lacks.

## R03 (P3) — Gate residue: an `<a id=` anchor

Location: `TauCetiRoadmap/MorseTheory/README.md` line 713: `<a id="m42-isolating-gradient-cup-bound"></a>`.

Witness: `gate MorseTheory … residue=1 … FAIL` (rule: no `<a id=` anchor tags). Nothing in this README links to the anchor.

Repair: delete the line (it disappears with M4.2 under R01).

## R04 (P3) — Two owners for Brown's generalized Schoenflies theorem

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 71–74 ("this roadmap owns Brown's bicollared generalized Schoenflies theorem as the input of M4.1") and 619–637.

Witness: GeometricTopology on main (Layer 2, lines 289–356) does not state it (it owns Brown's 1962 collaring and the annulus conjecture), so the ownership claim is consistent with main. But the open revision of GeometricTopology, pull request #903, has at its head a section "### 2.2 The generalized Schoenflies theorem" citing Brown 1960 (its lines 1089–1107). Two open pull requests therefore build the same theorem.

Repair: one owner. Since GeometricTopology Layer 2 already owns the neighbouring Brown theorems and is a supplier of this roadmap, the consistent home is GeometricTopology Layer 2, with M4.1 consuming it as a stated supplier contract; if ownership stays here, the GeometricTopology revision has to drop its §2.2. This is a decision for a human; the review only records the conflict.

## R05 (P3) — Golé is cited without a reference entry

Location: `TauCetiRoadmap/MorseTheory/README.md` line 717 ("Golé, Appendix 2, §§62–63"); References, lines 942–963.

Witness: the References list has no Golé entry (no title, year, publisher or DOI). The work is C. Golé, *Symplectic Twist Maps: Global Variational Techniques*, World Scientific 2001, DOI 10.1142/1349; its landing page answers HTTP 403, so the text cannot be read legally and the citation must be recorded as `uncertified` with its locator.

Repair: add the reference entry with the DOI; keep the locator.

## R06 (P3) — Padding in Suggested.lean

Location: `TauCetiRoadmap/MorseTheory/Suggested.lean` lines 114–117, 56–59, 193–196, 204–208, 211–214.

Witness (one-tactic probe on a copy, elaborated with `lake env lean`): `criticalPoints_eq_setOf_mfderiv_eq_zero` closes by `rfl` (`mvfderiv` is by definition `(NormedSpace.fromTangentSpace _).toContinuousLinearMap ∘L mfderiv`, `Mathlib/Geometry/Manifold/MFDeriv/NormedSpace.lean:448`), and its hypothesis `hf` is unused (Lean warns at line 114). `minimumCriticalCount_independent` is already `rfl`; `minimumCriticalCount_attained` is `Nat.find_spec`; `finiteSmoothCriticalCounts_nonempty` restates the definition; `criticalCount_ne_top` is the boundary corollary of `finite_criticalPoints_inter`. Every other sorried statement survived the probe (`rfl`, `simp`, `infer_instance`, `aesop`).

Repair: delete these five from `Suggested.lean`; the README keeps the statements (M1 "extended counts", M4 "attainment, independence of the supplied witness").

## R07 (P3) — Lean form: docstring and standing hypotheses

Location: `TauCetiRoadmap/MorseTheory/Suggested.lean` lines 6–14 (docstring), 22–25 (variables), 81 versus 94.

Witness: the docstring is the old standard note and names no headline that is not statable at the pins. Not statable at the pin and unnamed: handle/cell attachment and the CW model (M2), Morse approximation in the strong topology (M3), the Morse–Bott attachment (M5), M6's exponential convergence on manifolds (the pinned Mathlib `Geometry/Manifold/Riemannian/` has no gradient, and `TauCeti.Manifold.riemannianGradient` exists nowhere, see R08), and M4.2's Čech bound. The README's standing convention is "Hausdorff second-countable"; `exists_sublevelDeformation` adds `[SecondCountableTopology M]` and `exists_sublevelHomotopyEquiv` (same hypotheses otherwise) does not.

Repair: rewrite the docstring in the "<title>: target signatures" form listing those headlines and their missing carriers; put `SecondCountableTopology M` where the README's convention puts it.

## R08 (P3) — Names that exist at neither the pin nor the linked commit

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 491, 911, 36, 114–116, 283–288.

Witness: `lsCriticalPointBound` (line 491) is backticked as this roadmap's own and is not declared in `Suggested.lean` (the file's own names are `criticalPoints`, `exists_scalarRegularLevelData`, `exists_twoEuclideanOpenCover_of_two_criticalPoints`, `nonempty_homeomorph_sphere_of_two_criticalPoints`, `nonempty_homeomorph_sphere_of_two_euclidean_opens`, `nonempty_morseFiniteWitness`). `TauCeti.Manifold.riemannianGradient` (line 911) occurs nowhere in Tau Ceti at the pin `a91d3aaf`, nor under `TauCeti/Geometry/Manifold` at the linked commit `e8375e4f` (the library's gradient family is the `mgradient` one used by `exists_tendsto_maximalIntegralCurve_neg_mgradient`). The pinned Tau Ceti has no `Geometry/Manifold/Morse/Lemma.lean` and no `PseudoGradient/` directory, so `TauCeti.MorseChart`, `nonempty_morseChart`, `IsMorse.finite_setOf_mfderiv_eq_zero`, `MorseChart.linearFlow`, `IsAdaptedPseudoGradient` and `IsMorse.exists_isAdaptedPseudoGradient` are cited at commit `e8375e4f` (where they do exist) rather than at the pin; `MorseChart.mfderiv_eq_zero_iff` (line 115) exists at neither (`e8375e4f` has `TauCeti.mfderiv_eq_zero_iff_of_eqOn` in `MFDeriv/ModelChart.lean`).

Repair: drop the backticks on `lsCriticalPointBound` (or declare it); replace `riemannianGradient` by the actual name; cite `MorseChart.mfderiv_eq_zero_iff` by its real name; either bump the manifest pin to a Tau Ceti that has the Morse lemma and pseudo-gradient files or say the citations are to that later commit.

## R09 (P3) — README shape and residue (pre-existing)

Location: whole README; lines 958–961.

Witness: the README predates the current form: no `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, no `### k.n` targets with `*Needs:*` lines, no `**Checks.**` lists, no `### Examples`/`### Dependencies`, no `## Downstream consumers`. The new M4.1 and M4.2 follow the old prose style, so their definitions (regular pair, survivors, stopped maps) have no Checks list and their targets no `*Needs:*` lines. "Thomas Mark's Math240 … notes, catalogued separately in the course-source audit" (lines 958–961) is process narrative and has no locator or URL.

Repair: at the next revision restructure to the form; now, give M4.1 and M4.2 their Checks and Needs lines and replace the course-source-audit sentence by a locator.

## Verified sound

**Build and signatures.** `lake env lean` on `Suggested.lean`: 17 sorry warnings only, 4.8 s. A scratch file with `#check @TauCetiRoadmap.MorseTheory.<name>` for all 29 declarations elaborated; every theorem keeps `[FiniteDimensional ℝ E] [I.Boundaryless] [T2Space M] [IsManifold I ∞ M]`; `MorseFiniteWitness`, `finiteSmoothCriticalCounts`, `minimumCriticalCount` and the two proved lemmas about them drop them (nothing in their types needs them); `sublevelInclusion` keeps only `[TopologicalSpace M]`. The elaborated types agree with the README statements of M1, M2, M4 and M4.1 (same hypotheses, same counts in `ℕ∞`, sphere `Metric.sphere (0 : EuclideanSpace ℝ (Fin (m+1))) 1`).

**Library declarations opened at the pins.** Mathlib: `onePointCongr` (`Topology/Compactification/OnePoint/Basic.lean:629`), `onePointEquivSphereOfFinrankEq` (`…/OnePoint/Sphere.lean:34`, any finite-dimensional real Hausdorff TVS, so `Fin m → ℝ` qualifies), `PartialDiffeomorph` (`Geometry/Manifold/LocalDiffeomorph.lean:81`), `Manifold.IsSmoothEmbedding` (`SmoothEmbedding.lean:72`), `IsSubmersionAtOfComplement` and `mk_of_charts` (`Submersion.lean:153,179`), `mvfderiv` (`MFDeriv/NormedSpace.lean:448`), `RelCWComplex` (`Topology/CWComplex/Classical/Basic.lean:99`), `IsProperMap`, `HomotopyRel`, `Nullhomotopic`, `IsLocalMin.fderiv_eq_zero`, `singularHomologyFunctor`. Tau Ceti at `a91d3aaf`: `IsMorse` (`Geometry/Manifold/Morse/Basic.lean:178`), `IsMorseOn` (:99), `manifoldMorseIndex` (`Index.lean:74`, the index of the preferred-chart expression), `manifoldMorseIndex_le_finrank` (:105), `manifoldMorseIndex_comp_fst_add_comp_snd` (`Prod.lean:144`), `IsNondegenerateCriticalPoint.exists_morse_chart` (`Analysis/Calculus/Morse/NormalForm.lean:362`), `exists_hessianQuadraticForm_equivalent_weightedSumSquares` (`Index.lean:236`), `exists_congruence_of_symmetric_family` (`NormalForm.lean:217`), `sqrtNearOne` (:52), `exists_mul_abs_sub_le_norm_gradient_sq` (`Linearization.lean:380`), `IsIntegralCurveOn.exists_tendsto_atTop` (`Convergence.lean:272`), `exists_sub_le_mul_exp_atTop` / `exists_norm_sub_le_mul_exp_atTop` (`ExponentialConvergence.lean:239,262`), `sectionZeroChartedSpace` and companions (`VectorBundle/Section/Manifold.lean:155`, `SmoothZero.lean:63,145`), `sectionLinearization_trivial` (`Linearization.lean:271`), `boundaryChartedSpace` (`Boundary/Charts.lean:195`), `implicitCoordEquiv` / `coe_implicitCoordEquiv` (`ImplicitFunctionTheorem.lean:79,86`), `isFredholm_of_finiteDimensional` (`Fredholm/Basic.lean:57`), `index_eq_of_finiteDimensional` (`Fredholm/Index.lean:83`), `kerModelEquiv` (`Fredholm/LevelSet/Basic.lean:213`), `IsImmersionOfComplement.comp_diffeomorph` (`Immersion.lean:137`).

**Cross-roadmap citations resolved on main (`fa41b37`).** AlgebraicTopology: Stage 6 heading anchor `#stage-6-cohomology-products-and-manifold-duality` (line 946) and Stage 3 anchor (line 471) exist; "Categorical covers and Lusternik–Schnirelmann bounds" (lines 1080–1150) owns `LSCategoricalCover`, `lsCategoryCount`, `normalizedLSCategory`, `lsCupLength`, the pullback along g≃id with g(A)⊆B, the finite-coproduct sum formula and the two-open S^n check, exactly as M4 consumes them; Stage 4 owns `diskBoundaryRelCW` (624), `relativeCWPushout` (644), `homotopyPushoutGluingComparison` (658), `cofibrationTowerHomotopyEquivalence` (683), `cwSubcomplexTowerUnion` (700), `relativeCWPushoutCWModel` (716); 6.1 has the Ext¹ universal-coefficient sequence (1041). DifferentialGeometry: Layer 5 anchor and `boundaryOrientation_spec` (509), Layers 3, 10, 12 exist. GeometricTopology Layers 1–2 as described. CharacteristicClasses C2 (550), DGFloer `SpectralObject` (615), ComplexKahlerGeometry K1/K7 (96, 1405), HeegaardFloer Lane M, RiemannianGeometry R3, AffineMorseLefschetz and SymplecticGeometry/ConvexityToric T2 as consumers: all present. HomotopySpheres (open #1287) is mentioned only as a consumer. Ownership against open pull requests: `roadmaps grep` over the 437 heads for Schoenflies (only PlanarTopology's planar theorem in #271 and GeometricTopology #903 §2.2, see R04), the Čech closed-pair supplement (only #1652/#1651, see R01), "Conley index | isolating block | isolating pair" (no other roadmap), and Golé (no other roadmap): M4.2's isolating-pair bound has no other owner.

**Sources.** Brown 1960 (`51ec0a58` lines 25–113): Theorem 0 (line 25), Theorem 1 (37, cellular set with a one-inverse-set map), Theorem 2 (60), Theorem 3 (69), Theorem 4 (84, two inverse sets A, B cellular), Theorem 5 (101–113, printed p. 76): an embedding of S^{n−1}×I in S^n has both closures of the complementary domains of the middle sphere n-cells, proved by collapsing the two outer collar pieces to the poles; the README's route (lines 627–630) matches theorem by theorem. Milnor 1959 (`34405fd5` lines 72–119): Théorème 1 (printed p. 440) with condition (3) "union of two open sets diffeomorphic to ℝⁿ", Corollaire 1 (printed p. 442, line 117) "homeomorphic to Sⁿ", proof from condition (2); README lines 657–660 match. Rosen 1960 (`96b89458` lines 4092–4104, printed p. 380 at line 4111): abstract 570-28, Lemma 1 "a compact space that is the union of two open subsets each homeomorphic to Eⁿ is homeomorphic to Sⁿ", derived from Brown p. 76; README line 951 matches. Cohen–Iga–Norbury fetched (`80713f18`, author page); the degenerate Reeb statement at its line 1619 matches M4.1's.

**Adversarial table.** Instances tried and values on each side:

| Statement | Instance | Left | Right | Result |
|---|---|---|---|---|
| `nonempty_homeomorph_sphere_of_two_euclidean_opens` | m=0, X=point, U=V=X≅ℝ⁰ | X has 1 point | S⁰ has 2 points | false; excluded by `hm : 0 < m` (negative control) |
| same | m=1, X=S¹, two open arcs | S¹ | S¹ | holds |
| same | X=D^m, or S^m∨S^m | boundary/wedge point has no Euclidean neighbourhood | hypotheses fail | no counterexample |
| two-open-cell construction | D=closed r-ball in U ⊇ X∖V, C=X∖int D | X∖D and (int D∩V)∪{∞} open, disjoint, union S^m∖Σ, each contains one collar side | Brown: two components | C = closure of the component without ∞, C≅D^m, X=D∪_Σ C ≅ S^m |
| `exists_twoEuclideanOpenCover` | f=h−h³/3 on S^m | df=(1−h²)dh, zeros exactly the poles; d²f at poles = −2h·dh²+(1−h²)d²h = 0 | count 2, vanishing Hessians | theorem applies; M1 chart inapplicable, as claimed |
| uniform flow time | a=−2/3, b=2/3, band [a+ε,b−δ], η=min‖grad f‖ on band | f drops ≥ η²·t while in band | T > (b−δ−a−ε)/η² = (4/3−δ−ε)/η² | Φ_T(K) ⊂ {f<a+ε}; strictness since no critical point at level a+ε |
| `nonempty_homeomorph_sphere_of_two_criticalPoints` | f constant on positive-dimensional M | critical count ⊤ | hypothesis `=2` fails | a=b impossible when count is 2 |
| same | RP² | every f has ≥3 critical points (cat=3) | hypothesis fails | consistent |
| Brown Theorem 5 | n=1, S⁰×I ⊂ S¹ | closures of complementary arcs | two arcs = 1-cells | holds |
| LS inequality (M4) | M=∅; M=point; M=S¹, f=height; M=S¹, f const; T², Σcos; RP², three weights | 0; 1; 2; 2; 3; 3 | 0; 1; 2; ⊤; 4; 3 | ≤ in every case; constant f gives ⊤ not 0 (encard, not Nat.card) |
| `exists_criticalCategoricalCover` | M=∅ | card=0, `Fin 0` family | cover condition vacuous | holds; M nonempty gives card≥1 by `criticalPoints_nonempty_of_compact` |
| `exists_degenerateCriticalLevelDeformation` | c regular, U=⊥ | conclusion forces {f≤c+ε} into {f<c−ε} | compact critical-free band | true; c>max f: `hisolated` forces max f<c−δ, Φ=id works |
| `exists_noCriticalOpenSublevelDeformation` | b<min f; a−δ>max f | vacuous; Φ=id | — | holds |
| `exists_sublevelDeformation` | Milnor Thm 3.1 hypotheses | compact band, no critical points in f⁻¹[a,b] | retraction rel {f≤a} | exact hypotheses, M noncompact allowed |
| normalized chart | f = f(p) − Σ_{i<λ} y_i² + Σ_{i≥λ} y_i² | Hessian diag ±2 | README line 88–89 | convention consistent |
| `c_j(−f)=c_{m−j}(f)` | S², height: c₀=c₂=1 | −f: c₂=c₀=1 | index complement | holds |
| survivors T_t=φ_t(S_t) | P=[−1,1], W=x²/2, φ_t x=e^{−t}x | φ_t(P)=[−e^{−t},e^{−t}] | {x: φ_{[−t,0]}x⊂P}={|x|≤e^{−t}} | equal; T_∞={0}=I |
| regular pair, repelling | W=−x²/2, L={±1} | τ(x)=log(1/|x|), continuous P→[0,∞], τ(0)=∞ | Ȟ(P,L)=R in degree 1 | hypotheses satisfiable; K_t=P |
| Ȟ(T_∞)→Ȟ(I) | same, B_t=φ_{−t}(P)=[−e^{−t},e^{−t}] | ⋂B_n={0}=I | R→R | iso |
| shifted injection, product pair | P₀=pt, p=0, K=1 | u∪α^*v: Ȟ⁰(pt)→Ȟ¹(P,L), R→R | (α|I)^*: R→R | injective; K=0: u=1, α^* iso by homotopy invariance |
| degenerate count, induction | I=S¹, W=height, values −1<1, a=−1/2, b=1/2 | A, B arcs; I_A={min}, I_B={max}; n_A=n_B=1 | a∪a=0 so r≤1 | 2 ≤ 2 |
| degenerate count, tied values | I=two points at one value | Ȟ⁰=R², Ȟ^{>0}=0 | r=0 only | 1 ≤ 2 |
| degenerate count, R=0 ring | any I | unit = 0 | no nonzero product | vacuous; `Nontrivial R` required as stated |
| degenerate count, infinite critical set | W constant on I | encard = ⊤ | any r | holds |
| RP² handle example | f=(y²+2z²)/(x²+y²+z²) | critical points [1:0:0],[0:1:0],[0:0:1], values 0,1,2, indices 0,1,2 | {f≤2−ε}=Möbius band | attaching degree ±2 consistent |

**Checks of the proof routes.** M4.2 "Survivors": F_t(x)∈K_t by attainment of τ or t<τ; H(a,x)=F_{at}(x) preserves T_t because φ_{[at−t,at]}x⊂P; K_∞=⋂(T_n∪L)=T_∞∪L; closed excision gives Ȟ(T_∞∪L,L)≅Ȟ(T_∞,T_∞∩L); B_t negatively invariant, ⋂B_n=Inv(P). "Shifted injection": (α|I)^*v=0 ⇒ (α|T_∞)^*v=0 ⇒ j^*(u∪α^*v)=0 ⇒ u∪α^*v=0 ⇒ v=0, each step a stated isomorphism or naturality. "Count": A forward invariant, φ_n(A) decreasing with intersection Inv(A); the (n_A+n_B)-fold split lands in Ȟ(I,A∪B)=Ȟ(I,I)=0; base case at one critical value forces constant orbits by the energy identity. All correct as mathematics, conditional on R01's supplier.

## Not verifiable

- Golé, *Symplectic Twist Maps*, Appendix 2, §§62–63 (M4.2): World Scientific, DOI 10.1142/1349, landing page HTTP 403; no legal copy found; recorded in the job's `needs-references.toml`. The locator and the attribution of the isolating-pair bound could not be checked against the text.
- Milnor, *Morse Theory*, §§2–6, Theorem 4.1 and Remark 1 (References): Princeton University Press, not in the sources cache; cited by locator only.
- Thomas Mark, *Math 240* lecture and homework notes (References): no URL or locator in the README; not looked for.
- Cohen–Iga–Norbury "classical part": fetched, but the README gives no theorem or page locators into it, so only the Reeb statement was spot-checked.

## Source issues

- none
