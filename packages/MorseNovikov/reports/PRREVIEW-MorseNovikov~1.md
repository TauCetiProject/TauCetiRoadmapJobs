# Review of MorseNovikov (pull request #1161 at 1c71a9c)

**Verdict:** needs changes

This pull request revises a roadmap that is on main (merged as #890): it changes `TauCetiRoadmap/MorseNovikov/Suggested.lean` only (38 insertions, 6 deletions) and leaves the README untouched. The brief asks for a full review of the folder at the head, so the findings below cover the whole folder; R01–R03 are the blocking ones and all three are gate failures that the fix inherits from main and, in R02, extends. The PR's own claim is correct and was reproduced (see Verified sound): on main the admitted ring instance makes `monomial_coeff` prove `False`, and at the head the two `fail_if_success … rfl` checks pass. The fix is sound as far as it goes, but it replaces one admitted datum by another, and the file as a whole does not meet the acceptance-test rules or the push gate.

Gate at the head (data, worker's run): `set_option=0 blob=1 latex=0 tex=0 prnum=0 sorry-data=20 sorry-examples=0 residue=2 … imports=1 mathlib-subimports=10 no-import-mathlib=1 … depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=2 FAIL`. Every failing rule is a finding below.

## R01 (P1) — the targeted build fails the gate on two warnings

Location: `TauCetiRoadmap/MorseNovikov/Suggested.lean:177` (`simp only [Set.mem_setOf_eq, …]`) and `:233` (`theorem inner_dualField`).

Claim: `lake build TauCetiRoadmap.MorseNovikov.Suggested` passes with only `sorry` warnings.

Witness: my own `lake env lean` of the head file prints, besides 62 `declaration uses sorry` lines, `177:15: warning: Set.mem_setOf_eq has been deprecated: Use Set.mem_ofPred_eq instead` and `233:0: warning: automatically included section variable(s) unused in theorem inner_dualField: [I.Boundaryless] [T2Space M]`. The gate counts every non-sorry warning as a build problem (`build=2 FAIL`), so no acceptance is possible at this head.

Repair: both declarations are padding (R06) and disappear in the rewrite of R02. If kept: replace `Set.mem_setOf_eq` by `Set.mem_ofPred_eq` at line 177, and delete `inner_dualField` (it is the pinned `Riemannian.Tensor.inner_rieszDual` applied once); an `omit [I.Boundaryless] [T2Space M] in` line is the other option.

## R02 (P2) — twenty admitted data definitions, including the one this PR adds

Location: `Suggested.lean:42` (`commRingOf … := by sorry`), `:67` (`ofGroupRing`), `:72` (`monomial`), `:81` (`cutoff`), `:88` (`geometricInverse`, admitted `finite_below`), `:97` (`laurentEquiv`), `:111` (`torsionSetoid`), `:160` (`basedTorsion`), `:167` (`twoTermChainComplex`), `:173` (`twoTermBasedComplex.basis`), `:222` (`covector`), `:277` (`criticalIndex`), `:340` (`trajectoryTranslationSetoid.iseqv`), `:365` (`trajectorySign`), `:416` (`novikovComplex`), `:420` (`novikovComplexBasis`), `:454` (`normalReturn`), `:467` (`dynamicalZeta`), `:472` (`novikovTorsion`), `:476` (`completedCellularTorsion`).

Claim: the file is the roadmap's acceptance test, stating headline theorems against the pins with no admitted data.

Witness: the gate's `sorry-data=20` list is exactly the twenty declarations above; every theorem in the file, including the headline `dynamical_torsion_eq_cellular` (`:486`), is typed through `commRingOf`, `novikovTorsion`, `dynamicalZeta`, `completedCellularTorsion` and `torsionSetoid`, so it is a statement about undetermined objects. The PR's fix changes which admitted term carries the ring (a function of the whole `CommRing R` instead of a term seeing only `Zero R`) and that does remove the `1 = −1` collapse (reproduced, see Verified sound), but the principle forbids admitted data altogether, and the same loss-of-hypothesis pattern that produced the collapse is still present elsewhere: the elaborated type of `completedCellularTorsion` (my `#check` run) is `{E B M : Type*} → [NormedAddCommGroup E] → [NormedSpace ℝ E] → [TopologicalSpace B] → (I : ModelWithCorners ℝ E B) → [TopologicalSpace M] → [ChartedSpace B M] → [IsManifold I ⊤ M] → (H : Type*) → [AddCommGroup H] → (N : H →+ ℝ) → (Xtilde : Type*) → … → PeriodCover I H N Xtilde α → TorsionValue`, with no `[CompactSpace M]`, `[FiniteDimensional ℝ E]`, `[T2Space M]` or `[I.Boundaryless]`: it asserts a completed cellular torsion for every non-compact `M`, where no finite cellular complex exists. The same happens to `criticalIndex` (no `[FiniteDimensional ℝ E]`, `[I.Boundaryless]`, `[T2Space M]`).

Repair: rewrite `Suggested.lean` as the acceptance test. The headline theorems of the README are rt3 Theorem B (`I = ι τ(C_cell(X̃))`, hutchings-rt3 line 338), Theorem A (invariance of `I` in the class and cover, line 322), the Novikov isomorphism (1.4) (line 254), the product formula and integrality of ζ (hutchings-lee-rt2 line 119), and the explicit circle, mapping-torus and zero-surgery calculations (README lines 485–562). None is statable at the pins: Nov(R,H,N) as a ring (its convolution needs the finiteness theorem of N1), based torsion over total quotient rings, the zeta function, lifted trajectory moduli and the smooth-form carrier `closedForms`/`RoughForm` (DifferentialGeometry Layer 0–3 targets, `TauCetiRoadmap/DifferentialGeometry/Suggested.lean:529, 1280, 1396, 2182`, all admitted there) do not exist in the pinned Mathlib 6b7abb3c or Tau Ceti a91d3aaf. The module docstring should name each of these headlines and the missing carrier, and nothing is stated in their place: no `commRingOf`, no `NovikovSeries` ring, no `BasedFiniteComplex`, no geometry section. The one candidate worth checking before writing the docstring is the N6 Lefschetz fixed-point formula for a self-map of a closed manifold (README line 495–512), which AlgebraicTopologyPartII §13.3 consumes: the pinned Tau Ceti has `singularHomologyFunctor n : TopPair ⥤ C` (`TauCeti/AlgebraicTopology/Singular/Relative.lean:248`) and Mathlib has `mfderiv` and `LinearMap.det`, so a statement of the form "sum of `sgn det(1 − df_x)` over nondegenerate fixed points equals the alternating trace on rational homology" may be statable; if it is, state it, otherwise list it with the rest. Delete the `NovikovSeries` structure unless a stated headline needs it. No consumer imports this module (grep of main for `TauCetiRoadmap.MorseNovikov` in `.lean` files: none), so the rewrite breaks no build.

## R03 (P2) — imports: ten Mathlib submodules, no `import Mathlib`, and another roadmap's module

Location: `Suggested.lean:1–13`.

Claim: the header is `import Mathlib` followed only by the `TauCeti.*` modules used.

Witness: lines 1–10 are `import Mathlib.Algebra.MonoidAlgebra.Basic` … `import Mathlib.Geometry.Manifold.LocalDiffeomorph`; line 13 is `import TauCetiRoadmap.DifferentialGeometry.Suggested`. The gate refuses all three patterns (`imports=1 mathlib-subimports=10 no-import-mathlib=1`), and "never another roadmap's module" is a stated rule. Everything in lines 197–495 (`ClosedOneForm`, `criticalSet`, `IsMorseForm`, `dualField`, `negativeDualFlow`, `PeriodCover`, …) is built on DifferentialGeometry's `closedForms`, `RoughForm`, `toFlow`, `flowOf`, `isCompleteVectorField_of_compactSpace`, which are admitted targets of that roadmap, not pinned declarations.

Repair: header `import Mathlib` plus `import TauCeti.Geometry.Manifold.Morse.Index` and `import TauCeti.Geometry.Manifold.VectorBundle.Riemannian.Riesz` only if a kept statement uses them. The geometry section cannot survive this and goes into the docstring's not-statable list (R02). If the file is written in module-system form (`module` / `public import Mathlib` / `@[expose] public section`), the gate's import rule accepts it and Lake's module warning disappears.

## R04 (P3) — process residue: two `example : True` test scaffolds

Location: `Suggested.lean:118–139` (`negRing`, `MonomialsAgree`, `GeometricInversesAgree`, two `example : True := by fail_if_success … rfl; trivial`).

Claim: the residue rule forbids `: True :=` in `Suggested.lean` (gate `residue=2`).

Witness: lines 133 and 137 as quoted. The checks are regression tests for the collapse this PR fixes; they belong in a test file of the library that implements the ring, not in the acceptance test, and once no admitted data remains (R02) there is nothing for them to guard.

Repair: delete lines 118–139.

## R05 (P3) — README link into the roadmap repository pinned to a commit

Location: `TauCetiRoadmap/MorseNovikov/README.md:390`, "Consume [HeegaardFloer M.5](https://github.com/TauCetiProject/TauCetiRoadmap/blob/7d7fa6e8…/TauCetiRoadmap/HeegaardFloer/README.md)'s ordinary local A₂ fold".

Claim: cross-roadmap citations name the roadmap and section, never a commit-pinned link (gate `blob=1`).

Witness: HeegaardFloer on main has the section: `### 1.5 Continuation and ordinary Cerf families (M.5)` at `TauCetiRoadmap/HeegaardFloer/README.md:402`, and its consumer list (`:4117`) records "MorseNovikov consumes Lane M, F0 and M.5".

Repair: write "Consume HeegaardFloer §1.5 (M.5)'s ordinary local A₂ fold …" with a relative link to `../HeegaardFloer/README.md` if a link is wanted.

## R06 (P3) — padding: one-tactic lemmas, coefficient API catalogue, unused definitions

Location: `Suggested.lean:142–146` (`twoTermTorsion a := a⁻¹`, `twoTermTorsion_mul` proved by `simp`), `:233` (`inner_dualField`, one pinned lemma), `:254` (`negativeDualFlow_apply`, `toFlow_apply` applied once), `:189–195` (`AllIteratesNondegenerate`, `returnSign`: no theorem mentions them), `:497–504` (`EulerChain`, `EulerChain.Rel`: no theorem mentions them), the coefficient catalogue `:54–100` (`coeff_zero`, `coeff_add`, `coeff_neg`, `convolution_finite`, `coeff_mul`, `ofGroupRing_coeff`, `monomial_coeff`, `monomial_add`, `mem_cutoff`, `one_sub_monomial_mul_geometricInverse`, `laurentEquiv_coeff`), `:113` (`torsionSetoid_rel`), `:181` (`twoTermBasedComplex_matrix`), `:225` (`covector_apply`), `:457` (`normalReturn_mk`), `:370–393` (`trajectorySign_unit`, `_flip_source`, `_flip_target`), `:409` (`signedCount_nonzero_trajectory`: from `signedCount ≠ 0`, `Finset.sum_eq_zero` gives a nonempty orbit set and `Quotient.out` a trajectory, no roadmap content).

Claim: these are API lemmas restating definitions, one-library-lemma proofs, "controls" and boundary definitions, which the rules keep in the README.

Witness: the three proved-in-place theorems close with `simp [twoTermTorsion, ha]`, `Riemannian.Tensor.inner_rieszDual _ _` and `toFlow_apply _ _ t x` respectively (the file's own proofs).

Repair: delete them from `Suggested.lean`; the README keeps the statements as targets and Checks. They disappear with the rewrite of R02.

## R07 (P3) — README shape, locators and Lean/README agreement

Location: `README.md` throughout; e.g. `:12` (`## Scope, conventions and suppliers`), `:75–596` (sections `## N1` … `## N7` as continuous prose), `:597` (`## Order and acceptance`), `:624–625` ("Suggested.lean gives representative completion, based-chain, flow and coefficient interfaces").

Claim: the README has the house shape (Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, `## Layer k` with `### k.n` prose, `**Checks.**` lists, `### Examples`/`### Dependencies`, Downstream consumers, References), every theorem carries a locator, and every Lean name appears in the README.

Witness: (a) no `**Checks.**` list and no `*Needs:*` line exists in the file (grep: 0 hits each); (b) the only locators in 634 lines are "rt3 Lemma 2.8" (`:266`), "rt3 §2" (`:390`) and "rt3 Lemma 3.2" (`:400`), although the sources carry exact ones for the claims the README makes: Theorem A (hutchings-rt3 line 322), Theorem B (line 338), Definition 1.5 of `I` (line 305), Example 1.7 circle values (lines 354–363), Example 1.9 mapping-torus determinant formula (lines 394–414), Definition A.1 zero convention (line 1851), Proposition A.2 minor formula (line 1862), Lemma A.4 field decomposition (line 1900), Proposition A.5 basis change (line 1933), Definition B.1/B.3/B.4 Euler structures and bases (lines 1983, 2009, 2050), Lemma 3.5 and Proposition 3.6 Norm/Trace and ζ(X̂)=Norm ζ(X) (lines 1090, 1146), assumption (3.8) (line 1076), Lemma 3.8 `b₁ = (−1)^{i+1} a₁` (line 1289), rt2 Definition 1.3 and product formula (2) (hutchings-lee-rt2 lines 105, 119), rt2 Theorem 1.7 (line 174), the Lefschetz-sign definition (hutchings-rt3 line 78), the flow-line sign convention (lines 231–241); (c) none of the Lean names `NovikovSeries`, `commRingOf`, `geometricInverse`, `BasedFiniteComplex`, `PeriodCover`, `CriticalLiftData`, `LiftedTrajectory`, `trajectorySign`, `signedCount`, `FlowPeriodicPoint`, `dynamicalZeta`, `novikovTorsion`, `completedCellularTorsion`, `dynamical_torsion_eq_cellular` occurs in the README (grep: 0 hits), and the sentence at `:624–625` describes the Lean file as an interface sample, which the acceptance-test rule rules out; (d) a second open revision of this folder (#1690, README only: it inserts the Klein-bottle abelian-cover H₁ counterexample at `:155–159`) must be merged with this one in some order.

Repair: restructure to the house shape with the locators above at the claims (the circle values at `:485–490` get "rt3 Example 1.7"; the mapping-torus formula at `:498` gets "rt3 Example 1.9 (1.6)"; the product formula at `:363` gets "rt2 (2) with the general exponent, see Source issues"; the Norm statements at `:270–280` get "rt3 Lemma 3.5, Proposition 3.6 under (3.8)"); add `**Checks.**` lists (the acceptance paragraph `:607–625` already contains the right examples: the three circle calculations, H=ℤ³ with N=a+√2b, H=ℤ/2 two-term complex with components 0 and 1/2, the Klein bottle ζ=(1+t)/(1−t), H=ℤ⊕ℤ/2 with h=(2,1)); replace `:624–625` by a sentence naming the statable headlines and the missing carriers; and reconcile with #1690's insertion.

## R08 (P3) — torsion convention is rt3's and inverse to Milnor's; unused standing hypotheses in Lean signatures

Location: `README.md:223–225` ("the elementary two-term complex with differential a from degree 1 to degree 0 has torsion a⁻¹") with Milnor cited at `:633` for "based elementary chain operations"; `Suggested.lean:241` (`dualField_contMDiff` carries `[CompactSpace M]`), `:280` (`criticalIndex_eq_local` carries `[RiemannianBundle …]`, `[CompactSpace M]`, `[IsContMDiffRiemannianBundle …]`).

Claim: each convention is pinned by a two-term witness and each hypothesis is needed.

Witness: for the two-term complex `C₁ → C₀`, `d = a`, Milnor's `τ(C) = Σ (−1)^i [b_i h_i b_{i−1} / c_i]` (milnor-whitehead-torsion lines 270–273) gives `[a]` (degree-0 term `[a·e₁ / e₀]`, degree-1 term trivial), while rt3 Proposition A.2 (hutchings-rt3 line 1862) gives `det(∂_s : D₁ → E₀)^{(−1)^1} = a⁻¹`, and rt3 Example 1.7 (line 359) has `T_m = (1−t)^{−1}` for the one-critical-pair circle, which the README's circle Check reproduces. So the README's convention is rt3's, consistent with all its Checks, but a consumer transporting Milnor's elementary operations gets the inverse unless told. The unused hypotheses: smoothness of the metric dual needs the smooth metric, not compactness; the local index comparison needs neither a metric nor compactness (the elaborated signatures show them included; the linter stays silent on `sorry`'d theorems).

Repair: one sentence in the conventions: "this is rt3 Definition A.1/Proposition A.2's convention; Milnor §3 assigns the inverse." In Lean, if any of these statements survive R02, carry only the binders the type needs.

## Verified sound

**The PR's claim, reproduced by elaboration.** Scratch copy of main's `Suggested.lean` with `private abbrev negRing : CommRing ℤ := (Equiv.neg ℤ).commRing`, `theorem mainCollapse : (monomial (R := ℤ) (N := integerPeriod) 0).val.coeff = (letI := negRing; monomial … 0).val.coeff := rfl` and `theorem mainFalse : False` (from `monomial_coeff` on both sides, `congrFun mainCollapse 0`, `if_pos rfl`, `decide` on `(1 : ℤ) = −1`): elaborates with no error (only `sorry` warnings). So on main the admitted instance `instance : CommRing (NovikovSeries R H N) := by sorry` is one term for `Int.instCommRing` and `negRing` (their `Zero ℤ` projections are definitionally equal, `−0` reduces to `0`), and the file's theorems are jointly inconsistent. At the head the two `fail_if_success` examples elaborate (the checks fail to unify, as the PR says), and `commRingOf`'s elaborated type is `… → (x : CommRing R) → CommRing (NovikovSeries R H N)`, so the admitted term is applied to the instance and `commRingOf negRing` is not definitionally `commRingOf Int.instCommRing`. The remark that `twoTermChainComplex`/`basedTorsion` see a `Field F` only through its `Ring` is right and harmless: two field structures with the same ring structure have the same inverses, so `basedTorsion_twoTerm` cannot produce a contradiction that way.

**Elaboration and signatures.** `lake env lean TauCetiRoadmap/MorseNovikov/Suggested.lean` from the worktree: exit 0, 62 `sorry` warnings plus the two warnings of R01. A scratch file with `#check @…` for all 79 declarations elaborated (exit 0); the types compared with the README: `dynamical_torsion_eq_cellular` has `[FiniteDimensional ℝ E] [IsManifold I ⊤ M] [I.Boundaryless] [T2Space M] [RiemannianBundle …] [CompactSpace M] [IsContMDiffRiemannianBundle …] [PreconnectedSpace Xtilde] [AddAction H Xtilde] [Module.Finite ℤ H]`, hypotheses `IsMorseSmale I α`, `AllPeriodicNondegenerate I α`, `criticalEuler I α = 0`, and conclusion `⟦novikovTorsion … * algebraMap _ _ (dynamicalZeta …)⟧ = completedCellularTorsion …` in `Quotient torsionSetoid` (signs and deck monomials): this is rt3 Definition 1.5 and Theorem B (`I := T_m ζ`, `I = ι T(X̃)` in `Q(Λ)/±H`, hutchings-rt3 lines 305, 338) with the README's standing hypotheses (closed, finitely generated H); connectedness of `M` follows from `PreconnectedSpace Xtilde` and surjectivity in `IsAddQuotientCoveringMap` (`Mathlib/Topology/Covering/Quotient.lean:26`, which extends `IsQuotientMap`). Lost binders are reported in R02/R08. `criticalSet_finite` carries `[CompactSpace M]` and `IsMorseForm` ✓.

**Pinned declarations opened.** `TauCeti.IsManifoldNondegenerateCriticalPoint` (`TauCeti/Geometry/Manifold/Morse/Basic.lean:59`: `IsNondegenerateCriticalPoint (f ∘ (extChartAt I x).symm) (extChartAt I x x)`, no smoothness or boundary hypothesis in the definition), `TauCeti.manifoldMorseIndex` (`Morse/Index.lean:74`), `Riemannian.Tensor.rieszDual` (`VectorBundle/Riemannian/Riesz.lean:74`, `(InnerProductSpace.toDual ℝ _).symm` with finite dimension and completeness supplied locally) and `inner_rieszDual` (`:82`); Mathlib `IsAddQuotientCoveringMap` (`Topology/Covering/Quotient.lean:26`: quotient map, continuous action, fibres = orbits, a neighbourhood with pairwise disjoint translates), `Equiv.commRing` (`Algebra/Ring/TransferInstance.lean:159`), `instance_reducible` (toolchain `Lean/Meta/Instances.lean:298`). The three DifferentialGeometry carriers the Lean file uses are admitted targets, not pinned declarations (`TauCetiRoadmap/DifferentialGeometry/Suggested.lean:529, 1280, 1388, 1396, 2182`), and `circleAngularForm` (`:1951`) has `|∫| = 2π` (`:1956`), so the README's "`circleAngularForm/(2π)` … integral 1" is right.

**Cross-roadmap citations resolved on main.** MorseTheory M1–M4, M6 (`TauCetiRoadmap/MorseTheory/README.md:90, 124, 430, 458, 649`); HeegaardFloer Lane M = Layer 1, F0 = Layer 2, M.5 = §1.5 (`:402`), F0.6 = §2.8 (`:1690`), reciprocal consumer line `:4117`; DifferentialGeometry Layers 0–3, 5, 6, 8, 10, 12 (`:268, 311, 341, 371, 503, 782, 816, 877, 910`); AlgebraicTopology Stages 1–7 (`:289–1573`); DGFloer Layer 1 (`:442`); UniversalCovers Stage 2 (`Completed/UniversalCovers/README.md:98`); GeometricTopology Layers 1, 3–5, 11 and the smoothing comparison (`:177, 357, 409, 519, 831, 930`). The AT sub-labels "4.2/4.3" and DGFloer "1.1" are not literal headings in those READMEs (AT numbers stages, DGFloer numbers layers); a reader finds the cellular complex in AT Stage 4 and the covering material in DGFloer Layer 1, so this is a labelling nit folded into R07. Depcheck: `depcheck: 204 roadmaps, 1431 edges, 0 problem(s)`; the roadmap is on main and all its suppliers are on main.

**Ownership against open pull requests** (via `roadmaps grep` over the 437 open heads and main): SymplecticReidemeisterTorsionModSquares defers "based cellular torsion over Novikov total quotient rings with zero on nonacyclic components" to MorseNovikov §N4 (its README `:15`); AlgebraicTopologyPartII consumes "N6's Lefschetz fixed-point formula" (`:394`); DGFloer 7.C.6/7.T.0, TaubesGromov and HamiltonianFloerOperations consume N1/N4–N6; HeegaardFloer F0.6 owns the return-map germ that N5 applies (`:1724`), and HF's Poincaré–Hopf mention is a comparison with N7, not an owner. No other open roadmap builds Novikov completions, based torsion, Euler structures or the dynamical zeta function. The second open revision #1690 of this folder (kim-em, head 9637d5e) changes the README only; its `Suggested.lean` is byte-identical to main's.

**Sources: the seeded sample (15 targets) and the flagged locators.** Texts read: hutchings-rt3 (author page, 36 pages), hutchings-lee-rt2 (author page, G&T version), hutchings-lee-rt1 (author page), milnor-whitehead-torsion (AMS open archive), hutchings-erratum-family (author blog).

| # | README claim (line) | Source locator | Found |
|---|---|---|---|
| 1 | Novikov ring: coefficients finite below every cutoff, N = −P (77–79, 27) | hutchings-rt3 lines 137–143 (Nov(G;N), N(g) < R finitely many; Λ := Nov(H; −α)) | agrees |
| 2 | group-ring embedding onto iff N = 0 (88) | hutchings-rt3 line 145–147 ("identity iff N ≡ 0", see Source issues) | agrees (with the misprint) |
| 3 | Lefschetz sign ε(γ) = sgn det(1 − dreturn) on T/ℝV, return of −V p(γ) times (349, 305–306) | hutchings-rt3 lines 67–82 | agrees |
| 4 | admissible = nondegenerate zeros + Morse–Smale + all orbits nondegenerate, generic in a fixed class (347–351) | hutchings-rt3 Definition 1.1, lines 119–128 | agrees |
| 5 | flow-line sign: TD(p) = ℝ(outward tangent) ⊕ TD(q) (148) | hutchings-rt3 lines 231–241 | agrees (TM(p,q) is 0-dimensional for index difference 1) |
| 6 | ζ = exp Σ ε(γ)/p(γ) e^[γ], in Λ⊗ℚ, integral by the product formula (357–363) | hutchings-rt3 lines 162–208; hutchings-lee-rt2 lines 105–130 | agrees; exponent see Source issues |
| 7 | I = τ(CN)·ζ, I = i(τ(C_cell)), Theorem A/B (379–382) | hutchings-rt3 lines 305–309, 322–344; hutchings-lee-rt2 lines 165–178 | agrees |
| 8 | circle: no critical points τ=1, ζ=(1−t)⁻¹; with critical points τ=(1−t)⁻¹, ζ=1; τcell=(1−t)⁻¹ (485–490) | hutchings-rt3 Example 1.7, lines 354–363 | agrees |
| 9 | mapping torus ζ = Π det(1 − tφ_*|H_i)^{(−1)^{i+1}}, τ_m(ξ₀)=1 (494–498) | hutchings-rt3 Example 1.9, lines 377–414 | agrees |
| 10 | rt3 Lemma 2.8 one-sided limits of I at a good time (266–268) | hutchings-rt3 lines 681–693, Definition 2.6 at 632–637 | agrees |
| 11 | rt3 Lemma 3.2: degenerate closed orbit leaves CN and ζ unchanged, by local index on a transverse disc (400–402) | hutchings-rt3 lines 855–870 | agrees |
| 12 | ζ(X̂) = Norm ζ(X) without (3.8); torsion comparison needs μ to kill torsion (270–280, 373–375) | hutchings-rt3 Proposition 3.6 lines 1146–1160, (3.8) at 1076, Lemma 3.5 at 1090–1097 | agrees |
| 13 | b₁ = (−1)^{i+1} a₁ and y ∈ 1 + Σ ℤ e^{nh} (443–446) | hutchings-rt3 Lemma 3.8, lines 1289–1299 | agrees |
| 14 | torsion conventions: zero on nonacyclic, minor formula ±Π det^{(−1)^i}, basis change Π det(A_i)^{(−1)^i}, total quotient a finite sum of fields (225–257) | hutchings-rt3 Definition A.1, Proposition A.2, Lemma A.4, Proposition A.5 (lines 1851–1944) | agrees |
| 15 | Euler structures: 1-chains bounding the signed zero cycle, torsor over H₁, comparison through a parameter family, simplex field with zero of sign (−1)^i (566–580) | hutchings-rt3 Appendix B, lines 1951–2049 | agrees |
| 16 | generic function/metric path or generic connection, not a fixed homotopy with generic metrics (186–191, 634) | hutchings-erratum-family lines 23–27 | agrees |

No locator is flagged as unverified in the README.

**Adversarial pass.** One row per statement; values computed on each side.

| Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| ε(γ^k) = (−1)^{i₊}(−1)^{(k+1)i₋} (367) | return derivative 2; −2; rotation by 90° | det(1−2^k) = −1, −3 for k=1,2 vs formula −1, −1; det(1−(−2)^k) = 3, −3 vs formula +1, −1; rotation: det(1−A)=2, det(1−A²)=4, det(1−A⁴)=0 | holds; the rotation's 4th iterate is degenerate, excluded by admissibility | none |
| product-formula exponent −ε(γ)(−1)^{i₋} = −(−1)^{i₊+i₋} (363–368) | i₋=1, i₊=0 (repelling reflection point) | log contribution Σ(−1)^{k+1}x^k/k = log(1+x) → factor (1+x)^{+1}; README exponent −(+1)(−1) = +1; rt2 (2) gives −(−1)^{i₀} = −1 | README right in every dimension; rt2 (2) right only for odd dim X | Source issues |
| Klein bottle ζ = (1+t)/(1−t) (612) | orientation-reversing circle map with attracting (λ∈(−1,0)) and repelling (λ<−1) fixed points | factors (1−t)^{−1}·(1+t); Lefschetz: L(φ^k) = 1−(−1)^k, exp(Σ_{k odd} 2t^k/k) = (1+t)/(1−t) | equal | none |
| period doubling (1+x)/(1−x²) = 1/(1−x) (613) | x formal | (1+x)/((1−x)(1+x)) | equal | none |
| two-term torsion a⁻¹ (225) vs circle with one critical pair | d = ±(1−t) | README: (1−t)^{−1}; rt3 Example 1.7: T_m = (1−t)^{−1}; Milnor §3: (1−t) | README consistent with rt3; inverse to Milnor | R08 note |
| basis change τ(A⁻¹dA) = τ(d)·Π det(A_i)^{(−1)^i} (247) | two-term complex, A₀ = u, A₁ = v | new differential u⁻¹av, torsion (u⁻¹av)⁻¹ = u·a⁻¹·v⁻¹ = τ·det(A₀)^{+1}det(A₁)^{−1} | equal | none |
| minor formula τ = ±Π det(d_s)^{(−1)^i} (245) | two-term, D₁ = C₁, E₀ = C₀ | a^{(−1)^1} = a⁻¹ | equal to the convention | none |
| long exact sequence degrees 3i+2, 3i+1, 3i (234–236) | i, i−1 | H_i(A)→H_i(B)→H_i(D)→H_{i−1}(A): 3i+2 → 3i+1 → 3i → 3i−1 | consecutive, descending | none |
| partial acyclicity H=ℤ/2, N=0, d = 1−g (618–620) | Q(ℤ[ℤ/2]) = ℚ × ℚ, g ↦ ±1 | components 0 and 2; torsions 0 (nonacyclic) and 2⁻¹ = 1/2 | equal | none |
| irrational example H=ℤ³, N(a,b,c)=a+√2b (615–617) | kernel; ties | ker N = {a=b=0} = ⟨(0,0,1)⟩ since √2 ∉ ℚ; (1,0,c) all have period 1, so finiteness below C forces finitely many c; Σ_k e^{(k,0,0)} has periods k → ∞ | as claimed | none |
| cover maps μ_k, ν_k (408–415) | H = ℤ⊕ℤ/2, h=(2,1), d=2, λ = projection to ℤ | ν_k(n,e) = n mod 2k: ν_k(h)=2=d, kills T, onto; μ_k (k odd) = 2⁻¹n mod k: μ_k(h)=1, onto; nh ∈ ker ν_k ⟺ 2n ≡ 0 (2k) ⟺ k | n | as claimed | none |
| log Norm_{ν_k}(z) = dk·Σ_{k|n}(log z)_n e^{nh}, e^{kh}-coefficient dk(log z)_k (459–460) | rank dk, Tr = dk·restriction to ker ν_k | kh ∈ ker (ν_k(kh)=kd ≡ 0 mod dk); nh ∈ ker iff k | n; log Norm = Tr log over ℚ (rt3 Lemma 3.5(b)) | equal | none |
| Tr = k·coefficient restriction (273) | coset-monomial basis e^{c_j} | diagonal entry of multiplication by x on e^{c_j} is Σ_{h∈K} x_h e^h, k copies | equal | none |
| y = x^{(−1)^{i+1}} from b₁ = (−1)^{i+1}a₁ (446–448) | leading coefficients | leading coefficient of x^{(−1)^{i+1}} is (−1)^{i+1}a₁ = b₁ | consistent | none |
| Cerf normal form V_t = grad of the potential, indices i and i−1 (397–399) | x₁ = ∓√(∓(t−t₀)) | ∂₁ = x₁² ± (t−t₀), ∂_j = −x_j (2≤j≤i), +x_j (j>i); Hessian diag(2x₁, −1^{(i−1)}, +1^{(n−i)}): x₁<0 index i, x₁>0 index i−1 | as claimed | none |
| Poincaré–Hopf sign of V = α♯ at a Morse zero is (−1)^{ind} (577) | V = grad f | sgn det Hess f = (−1)^{#negative eigenvalues} | equal; matches rt3 line 2048's (−1)^i at i-simplex centres | none |
| embedding R[H] → Nov onto iff N=0, R nontrivial (88) | N ≠ 0 with N(h)>0; R = 0 | Σ_{k≥0} e^{kh} ∈ Nov ∖ R[H] (needs 1 ≠ 0); for R = 0 both sides are 0 and "onto" holds for every N | hypothesis "nontrivial R" is necessary and present | none |
| `geometricInverse` coefficient = indicator of {k•h}, (1−e^h)·Σ = 1 (Lean 88–93) | h with N h > 0 | k ↦ k•h injective since N(k•h) = kN(h); coefficient at 0: 1, at kh (k≥1): 1 − 1 = 0; {k : kN(h) < C} finite | holds | none |
| `laurentEquiv`: Nov(R,ℤ,id) ≅ LaurentSeries R (Lean 97) | H = ℤ | finite below every C ⟺ support bounded below ⟺ well-founded support in ℤ = HahnSeries ℤ R | holds | none |
| `potential_deck`: f̃(h+x) = f̃(x) − N h (Lean 305) vs README 28 | N = −P | f̃(x) + P(h) | equal | none |
| d-coefficient support: `signedCount_finite_below` (Lean 426) | trajectory from lift p to h + lift q | f̃ strictly decreases along −V (df̃(−V) = −|α|²), so f̃(q̃) − N(h) < f̃(p̃), i.e. N(h) > f̃(q̃) − f̃(p̃): bounded below | consistent with Nov's finite-below condition | none |
| `unstableSet` = descending manifold, orientation on `Fin (criticalIndex)` (Lean 261, 313) | −V flow | D(p) = {x : V-trajectory from x → p} = {x : Φ^{−V}_t(x) → p as t → −∞}; dim D(p) = ind p | matches rt3 lines 88–99 | none |
| `AllPeriodicNondegenerate` over all `FlowPeriodicPoint` (Lean 463) | iterates: time = k·least period | det(1 − d(return)^k) ≠ 0 for every k and every point on the orbit; spectrum independent of the point | matches admissibility (c) for all closed orbits incl. multiply covered | none |
| `criticalEuler` with `ncard` (Lean 481) | infinite critical set | ncard = 0, so `hχ` would be vacuous; under `IsMorseSmale` and `CompactSpace` the set is finite | no junk in the headline | none |
| degenerate deck groups | H = 0, N = 0; R = 0 | Nov(R,0,0) = R, cover = X, complex = Morse complex over ℤ, torsion in ℚ; Nov(0,H,N) = 0 | definitions behave | none |

**Duplication by object.** Mathlib's `HahnSeries` (well-founded support on an ordered group) is weaker than finite-below-every-threshold for a non-injective N (the README says so, `:46`); `LaurentSeries`, `AddMonoidAlgebra`, `Localization (nonZeroDivisors _)`, `ChainComplex (ModuleCat R) ℤ` are consumed, not restated. Dongryul Kim's `lean4-novikov` is acknowledged at `:62–73`. No pinned Mathlib or Tau Ceti declaration builds a Novikov completion, based torsion, a dynamical zeta function or Euler structures.

## Not verifiable

- V. Turaev, *Introduction to Combinatorial Torsions* (Birkhäuser 2001) and *Euler structures, nonsingular vector fields, and Reidemeister-type torsions* (Math. USSR-Izv. 34, 1990): book and paywalled journal; cited by the README for based torsion and lift refinement without locators. Checked instead through rt3 Appendices A–B, which restate what the README uses.
- A. Pajitnov, *Circle-valued Morse Theory* (de Gruyter 2006): book, not fetched; cited for the completed cellular comparison without a locator.
- Hutchings–Lee rt1 (Topology 38): fetched (author page) but the README cites it only for context; not sampled.

## Source issues

- **Error** in hutchings-lee-rt2 at equation (2), printed page 371: the source says the product formula's exponent is −(−1)^{i₀(γ)} for a closed manifold of any dimension; it should be −(−1)^{i₊(γ)+i₋(γ)}, which equals −(−1)^{i₀} only when dim X is odd (witness: a repelling fixed point with derivative < −1 of a surface return map contributes (1+t)^{+1}, as in the Klein bottle's ζ = (1+t)/(1−t)); affects a stated result (the remark; Theorem 1.7 does not use it).
- **Misprint** in hutchings-rt3 at §1.2, printed page 210: the source says the inclusion ℤG → Nov(G;N) "is the identity if and only if N ≡ 0"; it should be "is an isomorphism (onto) if and only if N ≡ 0"; affects nothing.
