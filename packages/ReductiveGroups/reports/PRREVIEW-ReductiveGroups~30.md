# Review of ReductiveGroups (pull request #1808 at a18764e)

**Verdict:** needs changes

Incremental re-review. The previous review of this folder read `ea43766`; between that head and `a18764e` the folder `TauCetiRoadmap/ReductiveGroups/` changed by 0 lines (`git diff ea43766..a18764e -- TauCetiRoadmap/ReductiveGroups` is empty), and the two commits since touch only `TauCetiRoadmap/PurityOfBranchLocus/` and `TauCetiRoadmap/RigidAnalyticGeometry/`, neither of which this roadmap cites. Every witness of the previous report was resolved again at this head (Part II on main, FormalConnectionsOpers and InverseGaloisAndArithmeticFundamentalGroups at their open heads, RootSystems on main, ComplexComparisonPartII at its head, the pinned Tau Ceti modules), and each still stands. The gate still fails with the same counts. So the eleven findings of the previous report remain, restated here with their locations at this head; none is new.

## R01 (P1) — ReductiveGroups and ReductiveGroupsPartII cite each other

**Location.** `TauCetiRoadmap/ReductiveGroups/README.md` line 692: "**Supplier:** ReductiveGroupsPartII RG2.3.7 owns ordinary q-Frobenius Lang surjectivity"; line 716 ("owned by ReductiveGroupsPartII, RG2.3.7 *lang-theorem*"); line 839 (Layer 7d consumes *lang-theorem* and *fixed-coset-lifting*); line 1077 (Layer 8 consumes RG2.0a.1–2 Weil restriction). The pull request's own edit (lines 977–980) routes Layer 7g to the same citation through Layer 7a.

**Claim.** Part II is a supplier of Part I.

**Witness.** `TauCetiRoadmap/ReductiveGroupsPartII/README.md` on main, "### From TauCetiRoadmap.ReductiveGroups" (line 341); RG2.3.7 *lang-theorem* ends "*Needs:* ReductiveGroups layer 3" (line 5214) and *lang-for-pro-algebraic-groups* "*Needs:* *lang-theorem*; ReductiveGroups layer 0" (line 5245); further `*Needs:*` on ReductiveGroups layers at lines 977, 6410, 6759. Layer 7a → RG2.3.7 → Layers 0 and 3 is a cycle between two roadmaps on main; the dependency check reports `0 problem(s)` only because its upward check exempts roadmaps on main.

**Repair.** Lang's theorem is foundational to Part I's finite-field lane, so the notion moves down: state in Layer 7a, as this roadmap's own targets, (a) the ordinary q-Frobenius Lang theorem for a smooth geometrically connected finite-type group over `F_q` (Milne, *Algebraic Groups*, Prop. 27.54 and Cor. 27.55, as Part II cites them) and (b) the fixed-coset lifting lemma, and state the Lean form in this roadmap's `Suggested.lean` exactly as `TauCetiRoadmap/ReductiveGroupsPartII/Suggested.lean` states `Lang.lang_surjective` (with `TauCeti.FiniteTypeCommHopfAlgCat`, `TauCeti.smoothCommHopfAlgProperty`, `TauCeti.geometricallyConnectedCommHopfAlgProperty`, `WithConv` and the `q`-power map on `AlgebraicClosure F`). ReductiveGroupsPartII RG2.3.7 then cites ReductiveGroups Layer 7a. For line 1077, either state the finite-locally-free affine Weil restriction as a Layer 0 target here or move the pseudo-reductive examples (`Res_(K/k) G_m`) into Part II; never cite Part II from Part I.

## R02 (P1) — Layer 11 consumes FormalConnectionsOpers and InverseGaloisAndArithmeticFundamentalGroups, which consume this roadmap

**Location.** README lines 1964–1966 ("The lower smooth/holomorphic dictionary of FormalConnectionsOpers F4.3 … is a prerequisite for the analytic charts here"), 1972 (IG.5.1), 1996 (IG.3.2), 2082 and 2099 (FCO's analytification and inverse-function dictionaries).

**Claim.** FCO F4.3 and IG.5.1 are suppliers of Layer 11.

**Witness.** FormalConnectionsOpers at its open head: line 67 ("ReductiveGroups Layers 0–9 and 6B owns …"), "### From TauCetiRoadmap.ReductiveGroups" (line 240), `*Needs:*` lines 947 (Layer 1) and 1122 (Layers 4, 6, 9). InverseGaloisAndArithmeticFundamentalGroups at its head consumes ReductiveGroups Layers 0, 3 and 6 at lines 156, 394, 1453, 1483, 4269 and 4415. Both are consumers of Layers 0–9 and suppliers of Layer 11: a cycle at roadmap level.

**Repair.** Nothing in Layers 0–10 consumes Layer 11, and Layer 11 consumes only sibling roadmaps (FCO, IG, LieGroups Layer 8, DGFloer, AlgebraicTopology, ReflectionInvariantTheory). Split Layer 11 (with `SpectralWeylTargets.lean`) into a Part roadmap placed after FormalConnectionsOpers and InverseGaloisAndArithmeticFundamentalGroups in the merge order, whose introduction says that ReductiveGroups stops at Layer 10.

## R03 (P1) — sorry'd data in `Suggested.lean` and in the six companion Lean files

**Location.** `TauCetiRoadmap/ReductiveGroups/Suggested.lean` lines 89 (`liftSubgroup`, `sorry` at 93–95), 119 (`characterTwist`, 123–125), 127 (`characterInclusion`, 129–131), 134 (`characterKernelEquiv : … := by sorry`, line 136), 143 (`liftableExtension`); `characterKernelEquiv_value` (line 138) mentions the sorry'd `characterKernelEquiv`. Companion files, `sorry` lines counted at this head: `SignedADETargets.lean` 41, `FoldingADETargets.lean` 39, `SpectralWeylTargets.lean` 26, `CoverLiftTargets.lean` 23, `IntegralRationalTargets.lean` 18, `OrbitGeometryTargets.lean` 18, `BruhatCoordinateTargets.lean` 0; among them sorry'd `def` bodies such as `SignedADETargets.lean` line 221 (`normalizationEquiv`), 143 (`rootLineQuotientEquiv`), 172 (`lieRing`), `FoldingADETargets.lean` 248 (`simpleRoot`), 190 (`fixedIntegralBasis`), `SpectralWeylTargets.lean` 118 (`matrixSpectrum`), 63 (`centerHomeomorph`).

**Claim.** Honest "sorry construction targets" (README line 120).

**Witness.** The gate rule `sorry-data` (5 hits at this head) and the brief's principle: no `def`, `abbrev`, `instance` or `opaque` whose body is `sorry`, and nothing that mentions one. The companion files are not built by the gate, import `Mathlib.<submodule>` lines (every file except `SpectralWeylTargets.lean`, which has `import Mathlib` after eleven other imports) and are API catalogues.

**Repair.** Delete the five sorry'd definitions and `characterKernelEquiv_value` from `Suggested.lean` (the README's 9A.1a-L keeps the statements). Delete the six companion `*Targets.lean` files: the README already says it "remains definitive" (line 120), every one of their statements is a README target, and the file form admits only `Suggested.lean`. If any companion is kept, it must carry no sorry'd data, a single `import Mathlib` plus `TauCeti.*` modules, and no import of another file of this folder.

## R04 (P2) — `Suggested.lean` states no headline theorem; statable ones are absent, the rest is padding

**Location.** `Suggested.lean` lines 5–23 (docstring: "suggest Lean forms for particular milestones"), 34–43, 55–64, 99–116.

**Claim.** The file is the acceptance test of the roadmap.

**Witness.** Headline theorems of the README: the embedding theorem (Layer 1), Nagata's theorem (Layer 6, line 475), Levi complements in characteristic zero (6A), Lang's theorem (7a), the Bruhat decomposition (7), the Steinberg module `Δ((p−1)ρ) ≃ L ≃ ∇` of dimension `p^|Φ⁺|` (10B), classification of simples by `X⁺` (10B). Nagata is statable at the pins: `Coalgebra.IsLinearlyReductive` (`TauCeti/Algebra/Coalgebra/Comodule/LinearlyReductive.lean` line 227), `torusCommHopfAlgProperty` (`TauCeti/Algebra/AlgebraicGroup/Torus/Basic.lean` line 107), `smoothCommHopfAlgProperty` (`…/Smooth/CommHopfAlgCat.lean` line 40), `geometricallyConnectedCommHopfAlgProperty` (`…/Connected/CommHopfAlgCat.lean` line 61) and `FiniteTypeCommHopfAlgCat`; Lang is statable as Part II states it (R01). Neither is in the file. What is there: `globalSectionsHopfAlgebra` and `specGroupObject` are `inferInstance` restatements of pinned instances; `finrank_indFromProjectedLevi` is closed by the single library lemma `TauCeti.finrank_indFDRep` (its own proof, line 64); `coverAction_projection` is `l.property.2 e`, a restatement of the carrier; the README (line 823) states the dimension theorem over `ℂ` while the Lean has `[Field k]`. The signature check (`#check` of all 16 declarations, the worker's elaborated signatures) shows no dropped binder.

**Repair.** Rewrite `Suggested.lean` in the acceptance-test form: docstring "Reductive algebraic groups: target signatures" naming the headlines that are not statable (Bruhat, Steinberg module, highest-weight classification, Levi complements: the Weyl group of a group, Weyl modules and the unipotent radical as scheme carriers are missing at the pins), the Nagata and Lang statements with `sorry`, and nothing else; delete the four padding declarations (P3 on their own; the README keeps the statements).

## R05 (P1) — Citations of RootSystems sections that exist nowhere

**Location.** README line 654 ("[RootSystems Layers1–4]"), 1132 ("the actual finite realizations of [RootSystems Layers5–6]"), 1274 ("[RootSystems4A]'s actual Weyl/based factorization"), 1479 ("RootSystems' valid-type reindexing in low rank"), 2041 ("RootSystems Layer2's `weylCoxeterSystem`").

**Claim.** RootSystems supplies finite realizations (Layers 5–6), a Weyl/based factorization of unbased root automorphisms (4A) and Layer 4.

**Witness.** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md` on main has exactly Layers 1 (line 248), 2 (line 432) and 3 (line 504); no Layer 4, 4A, 5 or 6. RootSystemsPartII (open pull request) has Layers 1–4 on integral dominance and folding and itself has "### From TauCetiRoadmap.ReductiveGroups" (its line 57), so it cannot be the supplier. `weylCoxeterSystem` is a pinned Tau Ceti declaration (`TauCeti/LinearAlgebra/RootSystem/Coxeter/Presentation.lean` line 41), so line 2041 is sound once "Layer 2" is read as the injectivity target of RootSystems 2.1.

**Repair.** Repoint line 654 to RootSystems Layers 1–3 by section, and for lines 1132, 1274 and 1479 either cite the existing section that provides the object (Layer 1.4 integral comparison, Layer 3 classification) or state the missing finite realizations and the Weyl/based factorization as targets of 9A.1a here (the notion moves down).

## R06 (P2) — ComplexComparisonPartII C−1.1 does not offer the five interfaces named

**Location.** README lines 377–379: "consume ComplexComparisonPartII C−1.1's actual `.complexPoints`, `.closedSubspace`, `.proper`, `.separatedHausdorff` and `.smooth` interfaces".

**Witness.** ComplexComparisonPartII at its open head, "### C-1.1 Analytic local models and scheme analytification" (line 724), defines `complexSchemeAnalytification` on locally-finite-type schemes over `Spec ℂ` with its universal property (line 774) and says explicitly that no separatedness or smoothness assumption is imposed. None of the five names occurs anywhere in that README; properness and compactness of complex points are not stated in C-1.1.

**Repair.** Cite `complexSchemeAnalytification` and its universal property by name; cite the "proper scheme has compact Hausdorff complex points" statement at the section of ComplexComparisonPartII that states it (Layer C2, projective and proper consequences of coherent GAGA) or state it as a target of 3A.5 here.

## R07 (P2) — The cross-cutting "sheaves and descent" lane re-plans pinned and owned work

**Location.** README lines 124–127 ("presheaves on `CommAlgCat k`, Yoneda/representability, fppf sheafification, torsors, and faithfully-flat descent"), 170–173 ("Develop the fppf sheaf, faithfully-flat descent, torsor, and representability machinery in the cross-cutting lane"), 514–516, 1048–1059 ("Build the needed sheaf-torsor and descent API here from Layer0 if no lower supplier has it").

**Witness.** At the Tau Ceti pin: `TauCeti/Algebra/AlgebraicGroup/Fppf/Basic.lean`, `Fppf/GroupObject.lean`, `Fppf/Quotient/` (`Torsor.lean`, `Kernel`, `Cokernel`, `Exact`, `Finite`, `Homogeneous`) and `TauCeti/Algebra/AlgebraicGroup/FaithfullyFlatDescent.lean` (points over `A` are the equalizer of points over `B ⇉ B ⊗_A B` for faithfully flat `A → B`). SchemeAndStackFoundations at this pull request's head owns §1.1 (descent of quasi-coherent modules and sheaves, and effective fpqc descent of affine, finite locally free and closed subschemes), §1.15 (torsors and torsor classes) and §1.17 (categorical and geometric quotients). No locator or supplier is given for the lane.

**Repair.** Delete the lane's own construction; in a supplier-contracts section cite the pinned `TauCeti.Algebra.AlgebraicGroup.Fppf.*` modules and `TauCeti.Algebra.AlgebraicGroup.FaithfullyFlatDescent` by name and SchemeAndStackFoundations §1.1, §1.15 and §1.17 by section; keep only the Hopf-point comparison adapters that none of them states, each with a locator.

## R08 (P3) — README shape: no supplier contracts, no `*Needs:*` lines, no Checks, Layers 2–8 without locators

**Location.** Whole README: headings `## Standing hypotheses`, `## Three synchronized models`, `## Mathlib foundations to use`, `## Remaining roadmap targets` (line 66), `## Implemented foundations to consume` (line 83); Layers 2–8 (lines 227–247, 432–477, 627–651, 1023–1090) are bullet lists with no theorem or page locator; no layer has `### Examples`/`### Dependencies`; no definition has a `**Checks.**` list.

**Witness.** Compare `TauCetiRoadmap/ReductiveGroupsPartII/README.md` (Scope and ownership, Conventions, Exact supplier contracts, How to read the build, `*Needs:*` per target, Checks). Every theorem of Layers 2–7 ("Lie–Kolchin", "Jordan decomposition", "Borel conjugacy", "isomorphism and existence theorems") is stated without a locator.

**Repair.** Restructure to the house shape: `## Scope and ownership` (listing the deferrals of R01, R02, R07), `## Conventions`, `## Exact supplier contracts` (per supplier, the declarations and sections consumed, including every native name now scattered through the text), `## How to read the build`, and per target a locator and a `*Needs:*` line; at least three Checks per definition.

## R09 (P3) — Gate failures: commit-pinned links, import order, a Mathlib submodule import, a build warning, edits outside the pull request's folders

**Location.** README lines 521, 1077, 1210, 1388, 1762, 1918, 1972 (links of the form `github.com/TauCetiProject/TauCetiRoadmap/blob/<sha>/…`); `Suggested.lean` lines 1–3 (`import TauCeti.RepresentationTheory.Induction.FiniteDimensional.Basic` before `import Mathlib`, then `import Mathlib.GroupTheory.GroupExtension.Basic`); the targeted build's warning on line 3's import; the diff outside the pull request's named folders: `Completed/ArithmeticDirichletSeries/README.md` (one line) and `TauCetiRoadmap/SymplecticGeometry/README.md` (one line).

**Witness.** The gate at a18764e: `blob=7 sorry-data=5 imports=1 mathlib-subimports=1 outside-folder=2 build=2 FAIL`, the same counts as at ea43766; `git diff --stat origin/main...HEAD` excluding the named folders lists exactly the two files. Elaboration with `lake env lean` of `Suggested.lean` gives six `declaration uses sorry` warnings and nothing else, so the second build warning is the submodule import and goes with it.

**Repair.** Replace each pinned link by the roadmap name and section (e.g. "IntegralHeckeAndGaloisDeterminants §0.7", "LieHighestWeight Layer 7", "GroebnerGeometry G5", "InverseGaloisAndArithmeticFundamentalGroups IG.5.1"); make the header `import Mathlib` followed by the `TauCeti.*` modules used and delete line 3 (`GroupExtension` is in `Mathlib`); drop the two one-line edits outside the folders from this pull request or name those folders as its own.

## R10 (P3) — Process narrative and references to work state

**Location.** README line 4 ("Suggested home: …"), 1638 ("`TauCeti.SpStd.specialIsogeny`, done"), 1652 ("carriers … that do not yet exist"), 2183 ("## Design notes (from Zulip)"), 2231 ("mathlib4#39281"), the headings "## Remaining roadmap targets" (66) and "## Implemented foundations to consume" (83), and 1637–1650, where the construction of the `G₂`/`F₄` special isogenies is deferred to "the CFSG roadmap's carrier plan", a consumer's document.

**Repair.** Timeless wording: state what is built, not what is done or missing; move the Zulip design notes to `## Design references` without the pull-request number; state the `G₂`/`F₄` isogeny constructions in 9B itself (a supplier's target is not specified by its consumer).

## R11 (P3) — Layer 3 overstates the hypothesis for the component group

**Location.** README lines 243–244: "Under smoothness (and over a perfect field, or suitable hypotheses) `π₀(G)` is finite étale."

**Witness.** For any group scheme of finite type over a field, `π₀(G)` is finite étale; no smoothness enters. Instance: `μ_p` over `F_p` is not smooth and `π₀(μ_p) = 1` is finite étale; `G = μ_p × ℤ/2` likewise. The hypothesis is unused, not false.

**Repair.** State it for every finite-type group scheme over a field, with a locator.

## Previous findings

- R01 — not repaired: README line 692 still reads "**Supplier:** ReductiveGroupsPartII RG2.3.7 owns ordinary q-Frobenius Lang surjectivity"; lines 716, 839, 1077 unchanged; Part II on main still needs ReductiveGroups layers 0 and 3 (lines 5214, 5245).
- R02 — not repaired: lines 1964–1966, 1972, 1996, 2082, 2099 unchanged; FCO (lines 240, 947, 1122) and IG (lines 394, 1453, 4269) still consume ReductiveGroups at their heads.
- R03 — not repaired: the five sorry'd definitions at `Suggested.lean` lines 89, 119, 127, 134, 143 and the six companion files with sorry'd bodies are unchanged.
- R04 — not repaired: `Suggested.lean` is byte-identical; no Nagata or Lang statement, the four padding declarations remain.
- R05 — not repaired: lines 654, 1132, 1274, 1479 still cite RootSystems Layers 1–4, 5–6 and 4A; RootSystems on main still has Layers 1–3 only.
- R06 — not repaired: lines 377–379 still name the five `.complexPoints` … `.smooth` interfaces, absent from ComplexComparisonPartII C-1.1 at its head.
- R07 — not repaired: lines 124–127, 170–173, 514–516, 1048–1059 unchanged; the pinned `Fppf/` modules and `FaithfullyFlatDescent.lean` still exist unreferenced.
- R08 — not repaired: the README headings and the locator-free Layers 2–8 are unchanged.
- R09 — not repaired: the gate at this head reports the same `blob=7 imports=1 mathlib-subimports=1 outside-folder=2 build=2`; the two outside-folder edits are still in the diff.
- R10 — not repaired: lines 4, 66, 83, 1638, 1652, 2183, 2231 unchanged.
- R11 — not repaired: lines 243–244 unchanged.

## Verified sound

**Scope of this round.** Incremental re-review of 0 changed lines since `ea43766`: the folder's nine reviewed files are byte-identical to the previous head (`git diff --stat ea43766..a18764e -- TauCetiRoadmap/ReductiveGroups` empty); the pull request's diff against main in this folder is still the three-line Layer 7g edit at README lines 977–980. The commits since (`974a2a4d`, `a18764eb`) touch `TauCetiRoadmap/RigidAnalyticGeometry/` and `TauCetiRoadmap/PurityOfBranchLocus/`, which this README neither cites nor is cited by (grep for `ReductiveGroups` in both READMEs: no hit).

**Gate and dependency check.** Gate at a18764e (run here and by the worker): `set_option=0 blob=7 latex=0 tex=0 prnum=0 sorry-data=5 sorry-examples=0 residue=0 private-paths=0 imports=1 mathlib-subimports=1 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=2 source-material=0 build=2 FAIL`. Dependency check with `--movable`: `depcheck: 237 roadmaps, 2248 edges, 0 problem(s)`; no UPWARD or CYCLE line (the cycles of R01–R02 are between roadmaps on main or at open heads, which the check exempts). Elaboration: `lake env lean TauCetiRoadmap/ReductiveGroups/Suggested.lean` exits 0 with exactly six `declaration uses sorry` warnings (lines 89, 119, 127, 134, 138, 143). Signatures: the worker's `#check` of all 16 declarations reports no dropped section binder; the file is unchanged since the previous comparison with the README, whose one generality mismatch (`ℂ` versus `[Field k]` at README 823) is in R04.

**Seeded sample.** (1) "Cross-cutting prerequisite: sheaves and descent" (README 124–127): no locator, no supplier; the objects exist at the pin (`TauCeti/Algebra/AlgebraicGroup/Fppf/{Basic,GroupObject}.lean`, `Fppf/Quotient/`, `FaithfullyFlatDescent.lean`, all present at the pinned Tau Ceti) and in SchemeAndStackFoundations §1.1, §1.15, §1.17 at this pull request's head: R07. (2) "**Supplier:** ReductiveGroupsPartII RG2.3.7" (README 692): the section exists on main (`TauCetiRoadmap/ReductiveGroupsPartII/README.md` line 5201), states Lang's theorem for a smooth connected group over `F_q` with the `q`-Frobenius, surjectivity on `H(F̄_q)` (line 5203), with Milne AG Prop. 27.54/Cor. 27.55; the statement restated at README 716–718 ("smooth geometrically connected group of finite type over `F_q`") matches the supplier's hypotheses. The direction is the defect (R01).

**Cross-roadmap citations resolved at this head.** On main: ReductiveGroupsPartII RG2.3.7 (line 5201) and its `*Needs:*` on ReductiveGroups (341, 977, 5214, 5245, 6410, 6759); RootSystems Layers 1–3 (lines 248, 432, 504; no Layer 4–6 or 4A); the previous round's resolutions of LieHighestWeight Layers 3–4 and 7, LieGroups Layers 6–8, InductionRestriction Layer 2.1 (`Gassmann.almostConjugate_iff_permutation_equiv` is InductionRestriction's own README target, so the citation tool's "found nowhere" lead at README 951 is not a defect), SmoothBundlesConnections B1.1/B1.4, LieGroupoidsPoisson G0.1, DGFloer Layer 1, GroebnerGeometry G5, CFSGStatement L5, ModularCurves 0F, ChevalleyGroups (cites Layer 9 as owner) stand, the cited roadmaps being unchanged on main. At open heads: FormalConnectionsOpers (lines 67, 240, 947, 1122), InverseGaloisAndArithmeticFundamentalGroups (156, 394, 1453, 1483, 4269, 4415; IG.3.2 at 2678, IG.5.1 present), ComplexComparisonPartII C-1.1 (724, 774), SchemeAndStackFoundations §§0.3, 1.1, 1.15, 1.17, 2.6 at this pull request's head, IntegralHeckeAndGaloisDeterminants §0.7.

**Sources.** No source locator changed. The previous round's readings stand: `mcninch` §§2.2, 2.3, 3.1, 4.1, 4.3, 4.4, 4.5, 5.1, 5.2 (cache lines 138, 169, 236, 330, 399, 421, 448, 485, 507) support the Layer 6A route; Dudas–Michel Prop. 8.7, 8.9 (pp. 31–32), Prop. 7.5, Lemma 7.6, Prop. 7.7 (p. 25), Theorem 9.6 (p. 37), Lemmas 9.9–9.11 (p. 38), Theorem 10.1 (p. 41) are restated in Layers 7b–7e with the same hypotheses.

**Adversarial table.** The folder has no changed statement, so every row carries forward from the previous report (PRREVIEW-ReductiveGroups~23), with its values; no row was added.

| Statement | Instances tried | Values | Result |
|---|---|---|---|
| 7C rank-one identity `x_α(a)x_−α(b) = x_−α(b/(1+ab)) α∨(1+ab) x_α(a/(1+ab))` (657) | SL₂, `x_α(a)=[[1,a],[0,1]]`, `x_−α(b)=[[1,0],[b,1]]`, `α∨(t)=diag(t,t⁻¹)` | LHS `[[1+ab,a],[b,1]]`; RHS `[[c, a],[b, (ab+1)/c]]` with `c=1+ab` → `[[1+ab,a],[b,1]]` | equal (r23) |
| `n_α(a) = x_α(a)x_−α(−a⁻¹)x_α(a)` (658) | SL₂, `a≠0` | `[[0,a],[−1/a,0]]`, normalizes the torus | sound (r23) |
| 7C.2 `A_w`, `I_w` partition `Φ⁺`; `I_w = A_(w w₀)`; A2 example (663–666) | A2, `w=s₁`, `w₀=s₁s₂s₁` | `A_{s₁}={α₂,α₁+α₂}`, `I_{s₁}={α₁}`; `ww₀=s₂s₁`, `A_{s₂s₁}={α₁}`; `w₀w=s₁s₂`, `A_{s₁s₂}={α₂}` | matches text (r23) |
| 7C.2 `H_{s_i}` all positive roots except `α_i`; `H_{s_i w₀}=U_{α_i}`; `H_e=U⁺`, `H_{w₀}=1` (666) | general `W`, `s_i` | `A_{s_i}=Φ⁺∖{α_i}`; `A_{s_i w₀}={α_i}`; `A_e=Φ⁺`, `A_{w₀}=∅` | sound (r23) |
| 7C.3 derivative `L_u:(X,Y)↦Ad(u⁻¹)X−Y` of `(h,j)·u=huj⁻¹` (669) | `d/dt` of `exp(tX)u exp(−tY)` at 0 | `u⁻¹(Xu−uY)=Ad(u⁻¹)X−Y`; invertible at `u=1` iff `Lie(H_w)⊕Lie(J_w)=Lie(U⁺)` | sound (r23) |
| 7C.5 cell dimension `|I_w|=ℓ(w)`; GL₂ chart `a↦[a:1]` (684, 688) | `w=s₁` in A2; GL₂ with `u(a)=[[1,a],[0,1]]` | `|I_{s₁}|=1=ℓ(s₁)`; `u(a)n₀e₁=±(a,1)`, inverse `x/y` on `y≠0` | sound (r23) |
| 6A `c_b=c+db` with `s_b=i(b)s`; `s_a=i(−v)s₀ i(v)` for `a(g)=g·v−v` (564–570) | symbolic, `i(v)` central | `s_b(g)s_b(h)=i(b(g)+g·b(h)+c(g,h)−b(gh))s_b(gh)`; `i(−v)s₀(g)i(v)=i(g·v−v)s₀(g)` | both hold (r23) |
| 6A `L×G_a`: stabilizer of `L` is `C_U(L)(k)=U(k)` (603) | `U=G_a` central | every `u∈U(k)` normalizes `L` | conjugator nonunique, as stated (r23) |
| Layer 6 Nagata: linearly reductive smooth connected ⇒ torus in char `p` (476) | `G_a`, `G_m`, `SL₂` in char 2 | `G_a`: `0→k→k²→k→0` nonsplit; `SL₂`: `∇(2)` nonsplit; only tori survive | sound; absent from `Suggested.lean` (R04) |
| Layer 1 `𝔾_m→GL₁` coefficient `t` generates `k[t]≠k[t,t⁻¹]` (195) | `V=k` standard character | needs `t⁻¹=det(V)⁻¹` | sound (r23) |
| 7c `|U^F|∈Λˣ` from `p∈Λˣ` (794) | `U` connected unipotent over `F_q` | `|U^F|=q^{dim U}` | sound (r23) |
| 7e corner identities `ts=e_U`, `st=e_V` (913–916) | `t=e_Ue_V`, `s=e_Ve_U z_U⁻¹`, `z_U=e_Ue_Ve_U`, `z_V=e_Ve_Ue_V` | `ts=z_Uz_U⁻¹=e_U`; `(st)z_V=z_V` ⇒ `st=e_V` | sound given `z_U,z_V` units (r23) |
| 7f `|Fix(g on G/H)|·|H| = |C_G(g)|·|g^G∩H|` (962) | `G=S₃`, `H=⟨(12)⟩`, `g=(12)`, `(123)`, `e` | `1·2=2·1`; `0·2=3·0`; `3·2=6·1` | sound (r23) |
| 7 worked example GL₃: `P`, `Q` not conjugate, common Levi (998–1003) | `q=2`: `GL₂(F₂)≅S₃` on the 3 lines of `⟨e₂,e₃⟩` | transitive, no invariant line | sound (r23) |
| 9A.1a `ε(a,b)ε(b,a)=(−1)^{B(a,b)}` (1147) | `ε(a,b)=(−1)^{Σ_{i>j}bond(i,j)a_ib_j}` | exponent `Σ_{i≠j}bond·a_ib_j = B(a,b)−2Σa_ib_i` | sound (r23) |
| 9A.1a inverse `(a,s)⁻¹=(−a,sε(a,−a))`; A2 `ε(α₁+α₂,−α₁−α₂)=−1` (1146, 1171) | `a=(1,1)`, `b=(−1,−1)`, order `α₁<α₂` | `(0, s²ε(a,−a)²)=(0,1)`; exponent `a₂b₁=−1` → `−1` | sound (r23) |
| 9A.1a section homomorphic iff no bonds (1155); kernel order `2^rank` (1287) | bond `{i,j}`, `a=e_i`, `b=e_j` | `ε=−1`; `|Hom(ℤ^r,±1)|=2^r` | sound (r23) |
| 9A.1a `a+b∈Φ ⟺ B(a,b)=−1`; `B(a,b)=±2 ⟺ a=±b` (1141) | `B(a+b,a+b)=4+2B(a,b)` | `=2` iff `B(a,b)=−1`; Cauchy–Schwarz | sound for finite ADE (r23) |
| 9A.1b cocycle `ε(a,b)s_γ(a+b)=s_γ(a)s_γ(b)ε(γa,γb)` (1305) | A2 swap, `s_γ(a)=(−1)^{a₁a₂}` | exponents differ by `2a₂b₁` | sound (r23) |
| 9A.1b even-A negative monodromy (1366) | A2 swap, root `α₁+α₂` | `s_γ(α₁+α₂)=−1`, `μ=−1` | sound (r23) |
| 9A.1b folded matrices A3 `[[2,−2],[−1,2]]`, A4 `[[2,−1],[−2,2]]`, D4 `[[2,−3],[−1,2]]` (1498–1500) | `C_{O,P}=c_OΣ_{i∈O}B(α_i,α_j)`, `c_O=2/d_O` | A3 entries `−2`, `−1`; A4 `−1`, `−2`; D4 `−3`, `−1` | all match (r23) |
| 9A.1b `B(β_O,β_O)=d_O/|O|`, `C_{O,P}=2B(β_O,β_P)/B(β_O,β_O)` (1381–1382) | `β_O=S_O/|O|` | `B(S_O,S_O)=|O|d_O` | sound (r23) |
| 9A.1b A2-exchange basis `[e,f]=h`, `[h,e]=e`, index 4 (1512–1514) | `e=x_α+x_β`, `f=x_{−α}+x_{−β}`, `h=H_α+H_β` | `[h,e]=e`; `E=e,F=2f,H=2h`, index `4` | sound (r23) |
| 9A.1b `γ_Y=[[0,−1],[1,−1]]` (1535) | char. poly `λ²+λ+1`; `γ_Y−I` | order 3; `det=3`, Smith `1,3`; kernel 0; over `F₃` fixes `(1,−1)` | sound (r23) |
| 9A.1b `J` antidiagonal `(−1)^{i−1}`: `Jᵀ=(−1)^{m−1}J`, `J²=(−1)^{m−1}I` (1419) | entries `J_{i,m+1−i}` | ratio `(−1)^{m−1}`; `(J²)_{ii}=(−1)^{m−1}` | sound (r23) |
| 9A.2–3 divided-power laws (1565–1568) | `HE=E(H+⟨α,y⟩)`; Kostant | coefficients `binom(H_{α∨}−a−b+2r, r)` | sound (r23) |
| 9C toral idempotent `μ₀=Πbinom(H−1,p−1)` (1704) | Lucas on weight `λ` | `λ≡0`: 1; `λ≢0`: 0 | sound (r23) |
| 9C Frobenius kernel dimension `p^{r dim G}`; adjoint A1 `α∨=2y` (1690, 1676) | basis indices `<p^r`; `X=ℤα` | `p^{r·dim G}`; `α∨=2y` | sound (r23) |
| 10B Steinberg dimension `p^{|Φ⁺|}` (1812) | Weyl dimension formula at `(p−1)ρ` | `Π_{α>0} p = p^{|Φ⁺|}` | sound (r23) |
| 10C `dim L(n)=Π(n_j+1)`; simplicity iff `n=(a+1)p^m−1`; char 3 `n=4`; char 2 `n=2` (1833–1841) | Steinberg tensor product | `L(4)` misses `x²y²`; `L(2)=⟨x²,y²⟩`; `xy` generates `R₂` | sound (r23) |
| 10D coefficient action `(a,b)·c_{φ,v}=c_{a·φ,b·v}` (1855–1856) | `(a,b)f(g)=f(a⁻¹gb)` | `φ(a⁻¹gbv)=(a·φ)(g(bv))` | sound (r23) |
| 10D `SL₂/N⁺` charts (1896–1900) | `s_a=[[a,0],[c,a⁻¹]]`, `s_c=[[a,−c⁻¹],[c,0]]` | `τ=−1/(ac)`; `u_c=u_a+1/(ac)` | sound (r23) |
| 11A `1→P_n→B_n→S_n→1` nonsplit for `n≥2` (2002) | `n=2`: `B₂=ℤ→ℤ/2` | no section | sound (r23) |
| 11B rank 1; 11E `n=2` (2051, 2134) | `V_reg=ℂ*`, `W=ℤ/2` | `z↦z²`; `B₂≃ℤ`, pure `2ℤ` | sound (r23) |
| 11C GL₂ regular nilpotent centralizer (2062) | `N=E₁₂` | `{aI+bN: a≠0}≅ℂ*×ℂ` | sound (r23) |
| 11D right `W` action `([g],t)·w=([gn_w],w⁻¹t)` (2090) | `Ad_{gn_w}(w⁻¹t)=Ad_g(t)` | well defined; `SU₂` lift of order 4 | sound (r23) |
| 3A.7 `ℂ*` on `P¹` (1010–1013); char `p` twist | `t·[u:v]=[tu:v]`; `[t^pu:v]` | orbits `{0}`, `{∞}`, `ℂ*`; stabilizer `μ_p` | sound (r23) |
| Layer 3 `π₀(G)` finite étale (243) | `μ_p` over `F_p` | `π₀=1` without smoothness | hypothesis unused: R11 |
| `characterTwist` is an automorphism given centrality (119) | `e↦ι(χ(πe))e` | inverse `e↦ι(χ(πe))⁻¹e`; `π∘ι=1` | consistent with README 1245 (r23) |
| `liftSubgroup` carrier = README 1233–1234 | fields at lines 91–92 | `φ∘ι=ι`, `π∘φ=g∘π` | consistent (r23) |

**One-tactic probe.** The only `sorry`'d theorem, `characterKernelEquiv_value`, mentions the sorry'd `characterKernelEquiv`, so no tactic can close it; not probed. `finrank_indFromProjectedLevi` and `coverAction_projection` are already closed by one library lemma and by a projection (R04).

**Ownership.** Unchanged from the previous round: ChevalleyGroups (on main) and CFSGStatement cite ReductiveGroups Layer 9 as the owner of the Chevalley–Demazure construction; no second owner of Layers 0–10 was found among the open pull requests indexed at 2026-11-05T20:33:39Z (the same index as the previous round). Ownership of Layer 11's spectral quotient against open pull requests whose files the brief does not give was not checked beyond the grep.

## Not verifiable

- Milne, *Algebraic Groups*, Prop. 27.54, Cor. 27.55–27.56: cited through ReductiveGroupsPartII; the book is not legally available online and was not opened.
- Howlett–Lehrer, *J. Algebra* 165 (1994) and Dipper–Du, *Crelle* 437 (1993): paywalled; cited by locator only.
- Carter §1.17, Serre §§2.3, 3.3, Gassmann 1926, Jantzen, Borel, Springer, Waterhouse, SGA3 XIX, Conrad–Gabber–Prasad: standard texts cited without page-level claims; not opened.
- Conrad–Feng handout, Gros–Kaneda, Hedén: not opened; the README cites them for routes, not for stated hypotheses.
- Whether the gate's first build warning ("imports `Mathlib` … consider adding `module`") fails every roadmap's build or only this one: the gate was run only for this folder.

## Source issues

- none
