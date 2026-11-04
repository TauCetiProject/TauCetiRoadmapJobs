# Review of ReductiveGroups (pull request #1332 at 4742ba3)

**Verdict:** needs changes

This head is the one the previous review read: the folder has no changed line since review 10. Every passage was nevertheless re-read in full (README, `Suggested.lean` and the eight companion `*Targets.lean` files), the gate, the dependency check, the elaboration, the signature check and the one-tactic probes were rerun, the seeded source sample was re-located in the cached legal texts, and the adversarial table below was recomputed. The three blocking findings live in companion Lean files that the repair job may not edit (its brief names only `README.md` and `Suggested.lean`), so another repair round cannot clear them: a human must widen the edit set, delete the companions, or decide that companion files are out of scope.

## R01 (P1) — Companion supplier attribution still reverses supply

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:134`: “is a target of the lower FCO dictionary”; line 23: “IG.5.1 supplies the generic configuration/disc comparison”; line 76: “the IG.5.1 comparison”.

**Claim:** The companion imports the analytic group dictionary from FormalConnectionsOpers and the configuration/disc comparison from InverseGaloisAndArithmeticFundamentalGroups. Both are consumers of this roadmap, and the README owns both objects itself (§§3A.5, 11.0 and 11A). Two directions of supply between ReductiveGroups and FormalConnectionsOpers is a cycle.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:240` (open head) consumes ReductiveGroups Layers 0–9; its line 2444 says “ReductiveGroups Layer 11 consumes §4.3's lower smooth/holomorphic dictionary”. README §11.0 (line 3950 onward) constructs that dictionary here. The dependency check reads only `*Needs:*` lines and cannot see these docstrings.

**Repair:** Replace the sentence at line 134 by “is README §§3A.5/11.0” and the two IG.5.1 attributions by “README §11A”. Nothing mathematical changes: the SL₂ chart differential at diag(1,−1) has coefficients −2, 2, 1 and determinant −4 without any oper input, and the Hurwitz rule (a,b)↦(aba⁻¹,a) is pinned in §11A. Re-raised: H01 of the round-8 repair report (answered as outside the edit set). That reason explains why the loop cannot act; it does not make the reversed attribution correct.

## R02 (P2) — Admitted data remain in the companion acceptance files

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:45`, `canonicalSCInput … := by sorry`; `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63`, `centerHomeomorph … := sorry`.

**Claim:** The Lean form rules apply to every listed `.lean` file: no `def`, `abbrev` or `instance` whose body is `sorry`, and nothing that mentions one. The companions contain many, and declarations built on them (`coordinate`, `Points`, `rootPoint`, `torusPoint`, `torusPoint_conj_rootPoint`; `planeBraidEquiv`, `matrixSpectrum`, `cameralEquiv`, `spectralFundamentalEquiv`, `arrangementAction`, `baseChangeWeylEquiv`).

**Witness:** Counted at this head: ChevalleyModel 1 (`canonicalSCInput`); SpectralWeyl 7 (`centerHomeomorph`, `planeBraidEquiv`, `planePureEquiv`, `matrixSpectrum`, `cameralEquiv`, `spectralFundamentalEquiv`, `arrangementAction`, `baseChangeWeylEquiv`); IntegralRational `integralPBWBasis` (line 107) plus the five `Subalgebra`/`LinearMap` fields admitted at lines 168–183; SignedADE `coverGroup` (line 88, `Group.ofLeftAxioms (by sorry)…`), `rootLineQuotientEquiv` (143), `normalizationEquiv` (221), `lieRing`/`lieAlgebra`/`fullLieRing` fields; FoldingADE `fixedIntegralBasis` (190), `signedCycleEquiv` (223), `smithKernelEquiv` (362), `rationalLieEquiv` field (272); CoverLift `isometryGroup`/`isometryMulAction`/`rootEquiv`/`carrierEquiv`/`lieEquiv` fields. The worker's gate reports sorry-data=0 because it scans `Suggested.lean` only.

**Repair:** Delete the admitted data and their dependents from the companions, or delete the companion files; the README already carries every construction, map and law (for example §11A's centering (1,3)↦(2,(−1,1)) with inverse by addition, and for n=0 a point rather than ℂ×point). Move nothing into `Suggested.lean`. Re-raised: H02 of the round-8 repair report (answered as outside the edit set).

## R03 (P2) — The Chevalley input record still does not determine the prescribed model

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23–39`, `SCRealizationInput`.

**Claim:** The record fixes eigenvalue equations (`rootWeight`, `weightVector`, `weightsGenerate`) but never identifies the supplied root operators `e` with the normalized frame of README §9A.1c (opposite-root brackets `[E_α,E_(−α)]=H_α` and root-string equations). Its type therefore admits an input whose toral closure is a torus, not the simply connected group.

**Witness:** Type A₁, V=ℚ², lattice ℤ², h=diag(1,−1), e=0: `rootWeight` reads [h,0]=2·0, `weightVector` and `weightsGenerate` hold (weights ±1 span ℤ), `nilpotent` holds. The generated scheme has dimension 1; SL₂ has dimension 3. The README states the missing law at §9B (“Every interface record … carries … `[E_α,E_(−α)]=H_α`”, with the witness `[E₁₂,E₂₁]=diag(1,−1)`), so README and companion disagree.

**Repair:** Remove the stand-in and its dependents as in R02; a future realization must carry the frame identification the README prescribes, which rejects e=0 (0≠diag(1,−1)) and accepts E₁₂,E₂₁. Re-raised: H03 of the round-8 repair report (applied in the README only, companion outside the edit set).

## R04 (P3) — Companion imports violate the acceptance-file form

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: “import TauCetiRoadmap.ReductiveGroups.SignedADETargets”.

**Claim:** Each listed Lean file must start with the single `import Mathlib` followed only by used `TauCeti.*` modules; no `Mathlib.<submodule>` lines, no roadmap modules.

**Witness:** BruhatCoordinate 1–5 import Mathlib submodules; ChevalleyModel 1–3 has no `import Mathlib`; SpectralWeyl, IntegralRational, OrbitGeometry, SignedADE, FoldingADE and CoverLift import `TauCetiRoadmap.ReductiveGroups.*` modules (SpectralWeyl puts `import Mathlib` at line 12 after them).

**Repair:** After R02, give each surviving companion the conforming header, or consolidate the surviving headline statements into `Suggested.lean` and delete the companion. `Suggested.lean` itself conforms (line 1 `import Mathlib`, then four `TauCeti.*` modules that exist at the pin). Re-raised: H04 of the round-8 repair report.

## R05 (P3) — Definition expansions and numerical Checks remain as padding

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204`, `rationalDistributionAction_apply`; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:200`, `wrong_left_complement_overlaps`.

**Claim:** These declarations expand a definition or reproduce small README Checks.

**Witness:** `rationalDistributionAction` is `convolutionAction.comp val`, so `_apply` is the native `convolutionAction_apply` (`TauCeti/Algebra/Coalgebra/Comodule/Convolution.lean:91`) by `rfl` (previous rounds' scratch probe closed it with `rfl`). `wrong_left_complement_overlaps` and `correct_right_complement_contains_alpha1` are `decide` on three permutations of `Fin 3`; `upper3_mul` computes 7=1+2·3 from §7C; FoldingADE lines 46–49 and 329–331 restate `LinearMap.fixedSubmodule_eq_ker` (`Mathlib/LinearAlgebra/FixedSubmodule.lean:42`); ChevalleyModel line 72 is the specialization of `kostantToralWeightTorusPoints_conj_rootSubgroupPoints` (`TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241`).

**Repair:** Delete them from the acceptance files; the README keeps the statements as API bullets and Checks (§7C, §9C, §10A). None of the nine `Suggested.lean` theorems is padding (probe below). Re-raised: H05 of the round-8 repair report.

## R06 (P3) — Source registration and companion module form remain incomplete

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:4400` (References); `TauCetiRoadmap/ReductiveGroups/FoldingADETargets.lean:310`: “Uniform matrix and exceptional exact-word certificates are required by this target.”

**Claim:** The folder has no `sources.toml` (the board package directory holds only `reports/`); the quoted phrase is undefined vocabulary; the companions keep catalogue docstrings (“Nonexhaustive integral model construction targets”, “selected target forms”, “admitted data family”) instead of the target-signature form.

**Witness:** `ls` of the folder: no manifest. ChevalleyModel line 6, SpectralWeyl lines 17–20, SignedADE lines 15–19, FoldingADE lines 17–21, CoverLift lines 3–4.

**Repair:** Register each cited work once with legal provenance (the nine cached texts below have author-page, institutional or arXiv routes; Brieskorn, Humphreys, Waterhouse, Conrad–Gabber–Prasad, Howlett–Lehrer, Dipper–Du, Carter, Lang, Steinberg, Serre, Gassmann, Borel, Springer and SGA3 as `uncertified` by locator). Replace the phrase at FoldingADE:310 by the mathematical claim: surjectivity of the Serre lift onto the fixed subalgebra, proved by the uniform matrix root-word generation and the explicit D₄/E₆ bracket words. After R02–R05 give surviving files target-signature docstrings. Re-raised: H06 of the round-8 repair report.

## R07 (P3) — README calls a companion definition “native”

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1749`: “The accompanying native `coveringHomeomorph` constructs precisely this comparison from the actual covering map, basepoint and stated topological hypotheses.”

**Claim:** No declaration named `coveringHomeomorph` exists in the pinned Mathlib or Tau Ceti; it is this roadmap's own definition at `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:263`, with a real body built from `IsCoveringMap.existsUnique_continuousMap_lifts` and `IsCoveringMap.eq_of_comp_eq`.

**Witness:** `grep -rn coveringHomeomorph` over the pinned `Mathlib/` and `TauCeti/` trees returns nothing; the two native lemmas it uses are at `Mathlib/Topology/Homotopy/Lifting.lean:477` and `Mathlib/Topology/Covering/Basic.lean:367`, as the README's links say.

**Repair:** Write “the comparison `coveringHomeomorph` constructed here from the two native lemmas” or drop the backticked name and describe the construction (a connected covering of a simply connected, locally path-connected base is a homeomorphism). A backticked name of the roadmap's own is a claim that `Suggested.lean` declares it; after R02–R05 either declare it there or remove the backticks.

## R08 (P3) — Two open pull requests revise this folder

**Location:** the open pull-request index: #1332 (this head) and #1676 (head 72e4141, “Specify elementary group points and the SL coordinate dictionary”), both on `TauCetiRoadmap/ReductiveGroups/` by the same author; the board holds reviews ~12 to ~16 of #1676.

**Claim:** Two open pull requests each build the same roadmap folder; only one can merge, and findings repaired in one are not repaired in the other.

**Witness:** `roadmaps list` shows both entries; the ~16 review of #1676 reports a different file set and different findings (for example a Kummer Check lacking n>0) from this head.

**Repair:** Not actionable in this package: a human decides which revision proceeds and closes or rebases the other. No edit to this folder resolves it.

## Previous findings

Dispositions refer to the review of this same head (review 10). Nothing changed in the folder, so every disposition is a re-verification, not a repair:

- R01 — not repaired: SpectralWeylTargets.lean lines 23, 76 and 134 unchanged; carried as R01.
- R02 — not repaired: ChevalleyModelTargets.lean:45 and SpectralWeylTargets.lean:63 unchanged; the full count of admitted data is now listed; carried as R02.
- R03 — not repaired: ChevalleyModelTargets.lean:23–39 unchanged; carried as R03.
- R04 — not repaired: import headers unchanged; carried as R04.
- R05 — not repaired; carried as R05.
- R06 — not repaired; carried as R06.

The gap-registry disposition (gap:root-automorphism-based-factorization declared in the README's RootSystems contract, no `design/plan.json` exists for a roadmap on main) was settled in review 9 and is not reopened. R07 and R08 are new.

## Verified sound

### Scope, gate, build and signatures

- Worktree clean at 4742ba3; `git diff --stat origin/main...HEAD` touches only `README.md`, `Suggested.lean` and the new `ChevalleyModelTargets.lean`; the seven other companions are byte-identical to main. No change outside the folder.
- Gate rerun at this head: every scanner zero, OK (the worker's run also reports build=0). Dependency check rerun: `depcheck: 204 roadmaps, 1652 edges, 0 problem(s)`; no UPWARD, CYCLE or moved line. The edge count grew from 1498 (review 10) only because other roadmaps changed on main.
- `lake env lean` on `Suggested.lean`: exactly nine `declaration uses 'sorry'` warnings (lines 91, 100, 109, 119, 154, 166, 219, 307, 321), no other warning, no error, 20 s.
- Scratch probe: every one of the nine sorried theorems replaced by `first | rfl | (simp; done) | infer_instance | decide | …` fails with “unsolved goals” (probe lines 97, 106, 116, 125, 156, 170, 220, 307, 319): no headline closes in one tactic, none is padding. The same file printed `#check @` for all 28 declarations; each elaborated type carries the README's binders: `IsAlgClosed k`, `IsAffine G.left`, `Smooth G.hom`, `QuasiCompact G.hom`, `LocallyOfFiniteType X.hom`, `QuasiCompact X.hom`, `IsSeparated X.hom` on the four orbit theorems; `IsProper X.hom` on compactness; `CharZero k`, `Algebra.Smooth k H.obj`, geometric connectedness on the reductivity equivalence; centrality `∀ s e, S.inl s * e = e * S.inl s` on the lift kernel; `P.IsCrystallographic` plus the frame on PBW; `2 ≤ n` on nonsplitting. No binder disappeared.
- README/Lean agreement: every backticked name of the roadmap's own in the README is declared in `Suggested.lean` (gate readme-ids-missing=0), except the companion name of R07.

### Headline theorems

From the README: orbit local closedness, boundary dimension drop, closed orbits (§3A); compact and Hausdorff complex points with smooth charts (§3A.5); characteristic-zero reductive ⇔ linearly reductive, Levi complements, affine quotients (§§6–6B); Lang–Steinberg, Harish–Chandra/Mackey/common-Levi (§§7a–7g); split and relative classification, pseudo-reductive basics (§8); signed ADE, cover-lift kernel, folding, integral PBW, pinned integral groups, distributions/Frobenius (§9); highest weights, Weyl/simple/Steinberg modules, Peter–Weyl (§10); braid nonsplitting, arrangement presentation, spectral monodromy (§11). Stated at the pins: nine (four orbit theorems, compactness, reductivity equivalence, lift kernel, integral PBW, braid nonsplitting). The module docstring (lines 17–47) names every other headline and the carrier it lacks (signed ADE Lie algebra, folded datum, bundled relative split group, relative center/derived/torus/Borel schemes, homogeneous quotient, rational highest-weight modules, regular-semisimple quotient and its analytic comparison, manifold atlas, scheme Frobenius, unipotent-radical quotient and semidirect product, Frobenius-fixed parabolics with Harish–Chandra functors, identity-supported distributions, contracted modules). No headline is forced through a stand-in in `Suggested.lean`; the stand-ins are the companions' admitted data (R02, R03).

### Seeded source sample

Each target was re-located in the cached legal texts (milne: author page, printed page = PDF page − 12; conrad: SGA3 exposition, printed = PDF; jantzen: MPIM 1985 preprint, printed = PDF − 5 or − 6 by chapter; dudas-michel: author page; sga1: arXiv retyped edition, printed = PDF − 16; conrad-feng, arzhantsev, ernst (− 4), fang-lim-tan: arXiv or author page). Lines are of the cached text.

| Target | Locator read | Hypotheses and support |
|---|---|---|
| 0.1 points and group law | milne line 3053 (§3.5, p. 66): convolution, counit and antipode equations for g₁,g₂∈G(R) | Supports the displayed equations; noncommutative values are the group of R-points, not group-likes. |
| 0.3 base change and descent | milne line 4989 (Def. 5.65, p. 116), line 5007 (Prop. 5.68, p. 116) | Sheaves for the flat topology and sheafification; representability is separate, as the README says. |
| 1.0a representations and comodules | milne line 3765 (Remark 4.1, pp. 84–85), line 3906 (Thm. 4.9, p. 87) | Representation ↔ right comodule with finitely many nonzero coefficients per basis vector; faithful embedding needs coefficients and det⁻¹. |
| 1.0b Tannakian comparison | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138`, `pointsFunctorIsoTensorAutFunctor`; milne line 3765 | Native iso with the universe lift; the README only transports it. |
| 2.1 tangent Lie algebra | milne line 8076 (Thm. 10.23, p. 193), lines 8143/8160 (Props. 10.28–10.29, p. 195), line 1115 (Prop. 1.37, p. 18) | Lie functor with Ad, dAd=ad; dimension equality needs smoothness, as the README's μₚ Check says. |
| 3.1 subgroup and quotient comparisons | milne line 4421 (Thm. 5.13, p. 101), line 4492 (Prop. 5.18, p. 103) | Universal property of the quotient map and existence of an affine quotient for a normal subgroup; no perfection or smoothness. |
| 3.2 identity component and π₀ | milne line 1070 (Prop. 1.34, p. 16), line 2493 (Prop. 2.37, p. 51), line 2517 (Def. 2.38, p. 52) | Universal map to étale groups, exact sequence e→G°→G→π₀(G)→e, base change. |
| 4.1 Jordan decomposition | milne line 7065 (Thm. 9.11, p. 168: perfect field), line 7194 (Thm. 9.18, p. 170) | Perfect-field uniqueness and polynomial factors; the README keeps the imperfect case geometric. |
| 4.3 multiplicative type and lattices | milne lines 9799/9824 (Defs. 12.14, 12.17, p. 236), line 9961 (Thm. 12.23, p. 240), line 9974 (Cor. 12.25) | Contravariant equivalence with finitely generated Galois modules, exactness preserved. |
| 5.1 unipotence | milne line 11654 (Prop. 14.3, p. 280), line 11679 (Thm. 14.5, p. 281: unipotent ⇔ subgroup of Uₙ ⇔ coconnected), line 11742 (Cor. 14.6, p. 282), lines 11778/11816 (Cors. 14.12, 14.18, pp. 283–284), line 13741 (Thm. 16.30, p. 334) | The coconnected-coalgebra route covers nonreduced G, as the README's αₚ/μₚ Checks require. |
| 6.2 linear reductivity | milne line 10280 (Def. 12.52, p. 248), line 10307 (Prop. 12.54), line 19713 (Thm. 22.42, p. 477: connected, characteristic zero), line 10330 (Remark 12.56, p. 249) | Characteristic-zero equivalence as stated in `reductive_iff_linearlyReductive`; the positive-characteristic remark needs the README's smoothness (source issue below). |
| 7.1 Borels and maximal tori | milne line 14503 (Def. 17.6, p. 353), line 14525 (Thm. 17.9, p. 354: G/B complete, Borels conjugate by G(k)), line 14547 (Thm. 17.10, pp. 354–355: maximal tori conjugate) | Algebraically closed field in the chapter's standing hypotheses; the README states no k-Borel existence. |
| 8.1 split classification | milne line 20291 (Thm. 23.25, pp. 492–493: isogeny theorem, uniqueness up to (T′/Z′)(k)), line 20303 (Remark 23.26, p. 493), line 20614 (Thm. 23.55, p. 501); conrad line 8173 (Thm. 6.1.17, p. 197) | Existence and pinned uniqueness over a nonempty base. |
| 8.2 relative reductive groups | conrad line 3334 (Def. 3.1.1, p. 81: smooth affine with connected reductive geometric fibres), lines 3518/3659 (Prop. 3.1.9, Cor. 3.1.11, pp. 85–88), line 3868 (Thm. 3.2.6, p. 94), line 4072 (Thm. 3.3.4, p. 98), line 6592 (Thm. 5.2.11, p. 157), line 6685 (Thm. 5.3.1, p. 160) | Fibrewise definition, open reductive locus, finite-presentation descent, maximal-torus scheme, center, Borel scheme, derived group. |
| 8.3 pseudo-reductive basics | milne line 5770 (§6.47, p. 136), line 5774 (Example 6.48), line 16386 (Prop. 19.9, p. 399) | Definition and the non-reductive pseudo-reductive example; the README uses Res_(K/k)Gₘ instead of the source's two-coordinate formula (source issue below). |

Other locators opened this round: milne lines 1461/1504 (Props. 1.65–1.66, pp. 26–27, orbit lemma), 15752–15774 (Thm. 17.96, Cors. 17.97–17.98, p. 383, Lang), 3084–3124 (Def. 3.10, Props. 3.12, 3.15, pp. 67–68), 5718 (Prop. 6.42, p. 134), 11750 (Cor. 14.8, p. 282), 12013 (Prop. 14.32, p. 289), 16284–16413 (Props. 19.1–19.13, pp. 397–400), 17715/17912/18457/18538 (Cor. 21.12, Thm. 21.32, Prop. 21.75, Thm. 21.80, pp. 430–450), 19155/19354/19414 (Thm. 22.2, Def. 22.21, Prop. 22.27, pp. 463–470), 25096/25554 (C.22 p. 612, Prop. C.53 p. 624); conrad-feng lines 2229 (§6.3, p. 53) and 5345 (Prop. 12.3.1, p. 127); dudas-michel lines 1599 (Def. 9.2, p. 35), 1608–1614 (Remark 9.3, Prop. 9.4, p. 36), 1665 (Thm. 9.6, p. 37), 1718 (Lemma 9.10, p. 38), 1745 (Lemma 9.11, p. 39), 1457 (Prop. 8.9, p. 32); jantzen lines 1507 (I.3.3, p. 53), 2102–2156 (I.4.14–I.4.16, pp. 77–79), 3640 (I.7.2, p. 136); sga1 lines 9399–9411 (XII Thm./Def. 1.1, pp. 239–240, completed local rings isomorphic), 9454 (§1.2, p. 241), 9594 (Prop. 3.1, p. 244), 9639 (Prop. 3.2, p. 245); arzhantsev line 49 (Prop. 2.2, p. 2); ernst lines 1056 (Thm. 5.11, p. 32), 1373 (Thm. 6.1, p. 41), 1504 (Thm. 6.10, p. 46, stated without proof); fang-lim-tan line 91 (§2.1, p. 2). Every page number in the README agrees with the running heads.

### Pinned declarations opened

| Object | Declaration, pinned file and line | Boundary |
|---|---|---|
| Rigidity | `AlgebraicGeometry.isCommMonObj_of_isProper_of_geometricallyIntegral`, `Mathlib/AlgebraicGeometry/Group/Abelian.lean:132` | As cited at README line 115. |
| Reductivity predicate | `TauCeti.reductiveCommHopfAlgProperty`, `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70` | Includes smoothness and geometric connectedness. |
| Linear reductivity | `TauCeti.linearlyReductiveCommHopfAlgProperty`, `TauCeti/Algebra/AlgebraicGroup/LinearlyReductive.lean:64` | No smoothness; μₚ satisfies it. |
| Geometric connectedness | `TauCeti.geometricallyConnectedCommHopfAlgProperty`, `TauCeti/Algebra/AlgebraicGroup/Connected/CommHopfAlgCat.lean:61` | Used as the explicit hypothesis of the §6.2 headline. |
| Embedding theorem | `exists_isClosedImmersion_generalLinear`, `TauCeti/Algebra/AlgebraicGroup/Representation/Embedding.lean:213` | Finite type over a field. |
| Coefficient criterion | `coordinateBialgHom_surjective_iff_matrixCoefficientSubalgebra_sup_antipode_eq_top`, `…/Representation/Faithful/Basic.lean:161` | Coefficients plus antipode generate. |
| Jordan decomposition | `jordanDecomposition`, `…/Representation/JordanDecomposition/Basic.lean:98` | Perfect coefficient field. |
| Tannaka | `pointsFunctorIsoTensorAutFunctor`, `…/Representation/Tannaka/GroupFunctor.lean:138` | With `GrpCat.uliftFunctor`. |
| Normal quotient | `coinvariantsFppfQuotientIso`, `TauCeti/Algebra/AlgebraicGroup/Fppf/Quotient/Coinvariants.lean:48`; `fppfQuotientSheaf`, `…/Fppf/Quotient/Basic.lean:154` | Geometrically reduced finite-type ambient group. |
| Unipotent embedding | `iff_exists_isClosedImmersion_upperUnitriangularGroupScheme`, `TauCeti/Algebra/AlgebraicGroup/Unipotent/Embedding.lean:265` | Reduced, algebraically closed. |
| Killing complement | `exists_isCompl_of_isKilling`, `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259` | Finite-dimensional module, characteristic zero. |
| Frobenius points | `iterateFrobeniusPoints`, `TauCeti/Algebra/AlgebraicGroup/Frobenius/Points.lean:66`; `frobeniusFixedPointsMulEquiv`, `…/Frobenius/FixedPoints.lean:174` | ℤ-bialgebra carrier, as the README says. |
| Kostant toral closure | `kostantToralWeightTorusPoints_conj_rootSubgroupPoints`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241`; `kostantToralGroupSchemeι`, `…/ToralClosure/Basic.lean:170` | Weight-vector and root-eigenvalue hypotheses only (R03). |
| Serre lift and diagram action | `serreLift`, `TauCeti/Algebra/Lie/Presentation/Serre.lean:411`; `serreDiagramAut_iterate_eq_id`, `…/Serre/Automorphism.lean:249` | Pinned generators; no injectivity theorem. |
| SL root datum and points | `diagonalRootDatum`, `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/DiagonalTorus/RootDatum.lean:108`; `pointsMulEquiv`, `…/SpecialLinear/Basic.lean:380` | Worked-example suppliers. |
| Base-change points | `baseChangePointsMulEquiv`, `TauCeti/Algebra/AlgebraicGroup/FiniteType/BaseChange.lean:290` | Field extension, as cited in §7a. |
| Gassmann criterion | `almostConjugate_iff_permutation_equiv`, `TauCetiRoadmap/RepresentationTheory/InductionRestriction/Suggested.lean:728` (main) | The §7f supplier exists on main, with the README's link anchor at its README line 346. |
| `coveringHomeomorph` | absent from both pins; `TauCetiRoadmap/ReductiveGroups/BruhatCoordinateTargets.lean:263` | R07. |

The citation resolver's 26 unmatched names are the 25 own declarations of `Suggested.lean` (all present) and the InductionRestriction name above.

### Cross-roadmap citations and ownership

Resolved on main this round: SchemeAndStackFoundations §§0.3 (README:551), 0.7 (:755), 0.9 (:848), 0.29 (:1825), 1.1 (:2071), 1.14 (:2458), 1.18 (:2745), 2.6 (:3437), 4.12 (:5613); ModularCurves §§0B (:280), 0E (:386), 0F (:412); RootSystems Layers 1–6 and `weylCoxeterSystem` (:37, :84); SmoothBundlesConnections B1.0 (:221), B1.1, B1.4; AlgebraicTopology Stages 1 (:289) and 4 (:499); DGFloer Layer 1 (:442); InductionRestriction Layer 2.1 (:346); GroebnerGeometry G5 (:394); ChevalleyGroups C0–C7 (:175–664); CFSGStatement L5 (:32, :209); IntegralLattices, ReflectionInvariantTheory, SchubertGeometry, AlgebraicVectorBundles, NilpotentOrbits, LieHighestWeight and LieGroups folders exist on main. ChevalleyGroups on main (README:6, :123) names “ReductiveGroups Layer 9 (9A and 9B)” as the owner of the generic integral constructor and defines `DynkinType.chevalleyGroupScheme` as its simply connected specialization: one owner, consistent with §9B here. RootSystemsPartII at its open head imports §9A.1b from ReductiveGroups (consumer). FormalConnectionsOpers at its open head (lines 67, 240, 1383, 2444) consumes Layers 0–9 and 6B and claims to supply Layer 11; the README owns the dictionary, the companion does not (R01). IntegralHeckeAndGaloisDeterminants, FormalConnectionsOpers and InverseGaloisAndArithmeticFundamentalGroups appear in the README only as consumers; no `*Needs:*` line or supplier heading cites a roadmap later in the order. Ownership against open pull requests whose files the brief does not supply (in particular the InverseGalois head) was not checked.

### Computed adversarial table

Fresh rows recomputed this round. The 166 further rows of review 9 on this byte-identical text (carried into review 10) are not repeated; every row below was computed again by hand.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| 0.1 convolution order | constant S₃, right-to-left | (12)(23): 1→2,2→3,3→1 = (123); (23)(12): 1→3,2→1,3→2 = (132) | Order retained. |
| 0.1 inverse/identity | Gₘ(ℚ), t=2 | antipode value 1/2; counit value 1 | Retained. |
| 0.3 base change of μ₂ | ℤ→𝔽₂, ℤ→ℚ | t²−1=(t−1)² (rank 2, nonreduced); over ℚ reduced of rank 2 | Fibre-dependent smoothness retained. |
| 1.0a weight-3 line | a=2 | 2³·v=8v; dual scalar 1/8; evaluation (1/8)(8)=1 | Right coaction direction fixed. |
| 1.0b trivial group | tensor automorphisms | one element; lifted carrier still one element | Retained. |
| 1.1 trivial Hopf algebra | H=A=M | cofaces id,id ⇒ d⁰=0; d¹=id−id+id=id; d²=0: H⁰=A, H¹=0, H²=0 | All-zero complex excluded. |
| 2.1 bracket sign | E₁₂,E₂₁ | E₁₂E₂₁−E₂₁E₁₂=E₁₁−E₂₂=diag(1,−1) | Left-invariant convention. |
| 2.1 Frobenius on Gₘ | char p | d(tᵖ)=p tᵖ⁻¹dt=0; kernel μₚ: Lie dim 1, scheme dim 0 | Smoothness hypothesis needed. |
| 3.1 Hopf ideals | k[t,t⁻¹] | ε(t−1)=0, ε(t²−1)=0, ε(t−2)=−1; (t²−1)⊆(t−1) ⇒ 1⊆μ₂ | Order reversal, counit test. |
| 3.1 αₚ×αₚ/αₚ | k[x,y]/(xᵖ,yᵖ) | coinvariants k[y]/(yᵖ), rank p; kernel rank p | Nonreduced ambient retained. |
| 3.2 μ₂ | 𝔽₂ vs 𝔽₃ | u² with u=t−1: one point, π₀ degree 1; over 𝔽₃ étale, π₀ degree 2 | Retained. |
| 3.2 μ₃ over ℝ | real points | t³=1 has one real, three complex solutions; conjugation swaps ζ,ζ̄ | Degree ≠ number of k-points. |
| 3A orbit_locallyClosed | Gₘ on ℙ¹ at 1 | orbit ℙ¹∖{0,∞}: open, dimension 1 | Headline instance. |
| 3A boundary_dimension_lt | same; fixed point 0 | boundary {0,∞} dim 0 < 1; boundary ∅ has dimension ⊥ < 0 | WithBot ⊥ needed. |
| 3A exists_closed_orbit | empty X; C₂ on two points | no rational point, hypothesis `Nonempty (Points X)` excludes it; closed two-point orbit | Nonemptiness premise, disconnected G. |
| 3A.5 compact_complexPoints | ℙ¹, 𝔸¹, Spec ℂ[ε]/ε², ∅ | compact; positive integers unbounded; one point; empty space compact | Properness premise. |
| 3A.5 charts | ℙ¹ at z=2 | w=1/z=1/2, dw/dz=−1/4 | Retained. |
| 3A.5 doubled origin | separatedness | two origins, every pair of neighbourhoods meets | Hausdorff needs separated. |
| 4.1 Jordan parts | [[2,1],[0,2]] over ℚ | g_s=2I, g_u=I+E₁₂/2, product g | Retained. |
| 4.2 pairing | χ=3, λ=−2 | t↦t⁻⁶ | Contravariant sign. |
| 4.2 ℤ→ℤ by 2 | Gₘ | t↦t², kernel μ₂ even in char 2 (length 2) | Retained. |
| 4.3 norm-one torus | over ℝ | lattices ℤ, conjugation −1, (−m)(−n)=mn | Pairing invariant; real character group 0. |
| 5.1 μₚ vs αₚ | p any | μₚ coaction v↦v⊗t≠v⊗1: invariants 0, not unipotent; αₚ⊂Gₐ unipotent | Nonreduced extension retained. |
| 5.2 Res_(K/k)Gₘ | p=2, [K:k]=2 | geometric kernel Gₐ (dim 1); k-radical 0 | Inclusion only under inseparable base change. |
| 5P BCH | X=E₁₂, Y=E₂₃ | exp(X)exp(Y) entry (1,3)=1; exp(X+Y) entry 1/2 | Additivity needs commuting. |
| 6.1 radicals | Gₐ,Gₘ,SL₂ | (R,Rᵤ) dims (1,1),(1,0),(0,0) | Retained. |
| 6.2 reductive_iff_linearlyReductive | Gₐ, Gₘ over ℚ | Gₐ: ke₁⊂k² stable, e₂+ae₁↦e₂+(a+t)e₁, no complement; Gₘ: weights split | Both directions. |
| 6.2 char p control | SL₂, p=2, Sym²k² | span{x²,y²} stable; y↦y+tx gives xy↦xy+tx² | Non-split; outside the CharZero headline. |
| 6.2 Reynolds | Gₘ on k[x,x⁻¹] | R(x)=R(x⁻¹)=0, R(xx⁻¹)=1 | Not multiplicative. |
| 6A semidirect law | Gₐ⋊Gₘ | (0,2)(3,1)=(6,2); (3,1)(0,2)=(3,2) | Not a direct product. |
| 6B SL₂/T | x=ab, y=cd, z=ad | xy=ad·bc=z(z−1) since bc=z−1 | Affine surface. |
| 7.1 GL₂ | B⁺∩B⁻ | T, dimension 2; GL₂/B=ℙ¹ | Retained. |
| 7C Gauss relation | SL₂, 1+ab≠0 | both sides [[1+ab,a],[b,1]] | Formula correct. |
| 7C Weyl representative | n_α(a) | [[1,a],[0,1]][[1,0],[−1/a,1]][[1,a],[0,1]]=[[0,a],[−1/a,0]] | Retained. |
| 7C A₂ complement | w=s₁ | H_w roots {α₂,α₁+α₂}; J_w root {α₁}; H_(w₀w) contains α₂, overlaps | Right complement correct. |
| 7a Lang | 𝔽₄, a²+a+1=0; constant C₂ | a²−a=a²+a=1; C₂: g⁻¹F(g)=1 for both elements | Connectedness essential. |
| 7b uU⁻u⁻¹ | u=[[1,1],[0,1]] | M=[[1+s,−s],[s,1−s]]; (M−I)²=0; det M=1; lower-left s | Unipotent, outside T∪U⁺ for s≠0. |
| 7b dimensions | P=Q=B of GL₂ | L⋉U: 2+1=3; dropping U∩V gives 2 | Factor needed. |
| 7e corner | S₃, U=⟨(12)⟩, V=⟨(13)⟩ | z_U=cos²(π/3)=1/4 on the 2-dim irreducible, inverse 4; trivial summand 1 | Unit over ℤ[1/2]. |
| 7f counting identity | S₃/C₂ | g=1: 3·2=6·1; g=(12): 1·2=2·1; g=(123): 0·2=3·0 | Holds. |
| 7g unitary twist | GL₁ | σ(a)=a⁻ᑫ; fixed a^(q+1)=1; σ²(a)=a^(q²) | G^σ≠G^(σ²). |
| 8.1 lattices | SL₂, PGL₂ | root 2·generator vs primitive; kernel μ₂ length 2 | Retained. |
| 8.3 units | k̄[ε]/ε² | c(1+aε)·d(1+bε)=cd(1+(a+b)ε) | Kernel Gₐ. |
| 9A ε and commutator | A₂, α₁<α₂ | ε(a,b)=(−1)^(a₂b₁); ε(α₁+α₂,−α₁−α₂)=(−1)^(−1)=−1; ε(a,b)ε(b,a)⁻¹=(−1)^(a₂b₁+a₁b₂)=(−1)^(B(a,b)) mod 2 | Both displayed laws hold. |
| 9A.1b sign law | A₂ swap, q_γ(a)=a₁a₂ | exponents: a₂b₁+(a₁+b₁)(a₂+b₂) ≡ a₁a₂+b₁b₂+a₁b₂ mod 2 | ε(a,b)s_γ(a+b)=s_γ(a)s_γ(b)ε(γa,γb) holds. |
| 9A folding A₂ | e=xα+xβ, f=x−α+x−β, h=Hα+Hβ | [e,f]=Hα+Hβ (α−β not a root); [h,e]=(2−1)xα+(−1+2)xβ=e; E=e,F=2f,H=2h index 4 | Integral vs normalized lattices. |
| 9A D₄, E₆ | triality; reversal | 24 roots: 6 fixed + 6·3, dim 6+6+2=14; 72 roots: 24+24·2, dim 24+24+4=52 | G₂, F₄ counts. |
| 9A lift kernel | Q₈→C₂², χ(i)=−1, χ(j)=1 | i↦−i, j↦j, k=ij↦(−i)j=−k=χ(k)k | Twist multiplicative. |
| 9A integral_pbw | rank 0; Gₘ; A₁ | one monomial 1, span ℤ; binom(H,2)(t^m)=binom(m,2); fe vs ef differ by h | Order and toral binomials needed. |
| 9A toral Smith | γ_Y=[[0,−1],[1,−1]] | det(γ_Y−I)=det[[−1,−1],[1,−2]]=3; over 𝔽₃ fixed vector (1,−1) | Obstruction A[3]. |
| 9B zero-operator input | A₁, e=0 | all record equations hold; closure dimension 1 vs 3 | R03 witness. |
| 9C Lucas | k=pm+r, 0<r<p | binom(pm+r,r)≡binom(m,0)binom(r,r)=1 (p) | γ_rγ_(pm)=γ_k. |
| 9C isogeny | t↦t² | binom(2m,2)=m(2m−1)=4binom(m,2)+m; over 𝔽₂: H↦0, binom(H,2)↦H′ | Surjective, not injective. |
| 9C μ₀ | p=2, λ=1,2,3 | λ−1 ≡ 0,1,0 | Projects onto 2X. |
| 10A character | λ=3,n=2; α=−1/3 | binom(3,2)=3; 3(1+4+16+…)=3/(1−4)=−1, digits 1,0,1,0,… | Non-integral binomial character. |
| 10B Gram | SL₂, λ=2 | (Fv,Fv)=(v,(FE+H)v)=2; (F⁽²⁾v,F⁽²⁾v)=binom(2,2)=1; diag(1,2,1), rank 2 over 𝔽₂ | Retained. |
| 10C p=2, n=2 | g·y² | (−cu+av)²=c²u²+a²v² (2ac=0) | y² generates span(x²,y²) only. |
| 10D coproduct | SL₂ entry a | Δa=a⊗a+b⊗c; at u=I+E₁₂, v=I+E₂₁: 1·1+1·1=2=(uv)₁₁ | Left factor first. |
| 11.0 quotient rule | Gₘ, D(t)=1 | D(t⁻¹)=−D(t)/ε(t)²=−1 | Sign fixed. |
| 11A half-twist | free a,b | aba⁻¹·a=ab; square ((ab)a(ab)⁻¹,(ab)b(ab)⁻¹); mirror (b,b⁻¹ab) applied to (aba⁻¹,a) gives (a,b) | Convention determined; swap excluded. |
| 11A nonsplitting | n=2: B₂≅ℤ→C₂ | section value m odd with 2m=0 ⇒ m=0, contradiction; n≥3: lift of (12) has odd exponent sum, its square 2m=0 | Headline holds for all n≥2. |
| 11B covers | A₁; A₁×A₁ | z↦z² degree 2, π₁ map 1↦2; (z,w)↦(z²,w²) degree 4 | Retained. |
| 11C gl₂ | diag(1,2); [[0,1],[0,0]] | (tr,det,disc)=(3,2,1), centralizer T; (0,0,0), centralizer {[[x,y],[0,x]]}=ℂ*×ℂ | Regular ≠ regular semisimple. |
| 11D differential | SL₂, t=H | [E,H]=−2E, [F,H]=2F, Y=cH ⇒ diag(−2,2,1), det −4 | Local isomorphism. |
| 11D action law | A₂, w=s₁s₂ | Ad_(gn_w)(w⁻¹t)=Ad_g(t); with wt one gets Ad_g(w²t)≠Ad_g(t) for order-3 w | w⁻¹t forced. |
| 11E projectors, centering | diag(1,2); (1,3) | (A−2I)/(1−2)=diag(1,0); centroid 2, centered (−1,1) | Retained. |
| 11F pairing | A₂ | ⟨s₁α₂,α₂∨⟩=⟨α₁+α₂,α₂∨⟩=−1+2=1≠2 | Both factors transported. |

Sixty-five fresh rows; together with the carried 166 rows every seeded target, every headline and every target a finding touches has computed values.

## Not verifiable

- The texts previous rounds could not read legally remain unread: Brieskorn 1971, Humphreys 1972 §26, Waterhouse, Conrad–Gabber–Prasad, Howlett–Lehrer 1994, Dipper–Du 1993, Carter, Lang 1956, Steinberg 1968, Serre's finite-group representations, Gassmann 1926, Borel, Springer, SGA3 XIX. Each was sought through the sources service in review 9 (publisher landing pages, JSTOR, AMS memoir page, arXiv/Crossref rate limits); none was retried this round, and no new text was fetched. The integral Harish–Chandra independence (§7e), the primary Brieskorn presentation (§11B) and the full integral PBW proof (§9A) therefore rest on the readable secondary texts (Dudas–Michel, Ernst) and the computed examples, not on the primary proofs.
- The companion files were not re-elaborated this round (their imports need object files the targeted build does not produce); review 9's elaboration of 308 companion signatures is carried.
- Ownership against open pull requests whose files the brief does not supply was not checked.

## Source issues

- **Error** in milne at Remark 12.56, printed p. 249: the source says an algebraic group in characteristic p is linearly reductive exactly when its identity component is a torus and the index is prime to p; it should say of multiplicative type, since μₚ is linearly reductive and not a torus; affects a stated result.
- **Error** in milne at Example 6.48, printed p. 136: the source says the displayed two-coordinate multiplication gives a pseudo-reductive non-reductive group in every positive characteristic; it should be restricted to p=2, with higher degrees constructed by Weil restriction; affects a stated result; corrected in print at the appended author errata, p. 2.
- **Misprint** in milne at Example 6.48, printed p. 136: the source says the norm-kernel equation has right-hand side zero; it should be one, the target being the multiplicative group; affects a stated result; corrected in print at the appended author errata, p. 2.
- **Misprint** in milne at proof of Corollary 14.9, printed p. 282: the source says its coconnectedness characterization comes from 14.9 itself; it should cite Theorem 14.5; affects the proof.
- **Gap** in milne at proof of Theorem 22.42, printed p. 477: the source says each simple summand of the restriction to the centre is stable under the derived group because the actions commute; it should use isotypic components after scalar extension and descend; affects the proof.
- **Error** in milne at Theorem 21.68(d), printed p. 445: the source says the root-addition closure condition is necessary in all characteristics; it should allow vanishing commutator constants in characteristics 2 and 3; affects a stated result; corrected in print at the appended author errata, p. 4.
