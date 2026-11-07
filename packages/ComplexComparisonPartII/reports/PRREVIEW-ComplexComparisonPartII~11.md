# Review of ComplexComparisonPartII (pull request #848 at 1a0a82d)

**Verdict:** needs changes

Full review of the head the previous review read (no change in the folder since then). The gate, the dependency check, the elaboration of `Suggested.lean`, a `#check` of 91 pinned names the README relies on and the one-tactic padding probe all pass. The fifteen seeded targets were read at their locators in the cached texts, except Dimca and SGA 4½, which are paywalled.

Two blocking findings:

- **R01 (carried).** The citations of DifferentialGeometry Layers 6, 8 and 9 still name layers that the open revision of DifferentialGeometry drops.
- **R02 (new).** The holomorphic exponential sequence and its identification with the integral first Chern class now have two owners. C5.4 here proves them, and the open ComplexKahlerGeometry revision #1234 assigns them to its new K4.P with C5.4 as a consumer.

Seven P3 findings:

- **R03.** Two C6 statements are narrower than their sources.
- **R04.** The AffineMorseLefschetz triangulation supplier is mislocated and understated.
- **R05.** Two pairs of internal duplicate targets.
- **R06.** Two seeded locators point at the wrong page or section.
- **R07.** The References list is incomplete.
- **R08.** Template fragments remain in the prose.
- **R09.** The `Suggested.lean` docstring is not in the required form.

## Previous findings

- R01 of the previous review is **not repaired**. README:697–699, 2861–2862, 3620, 3631 and 4236–4237 are byte-identical, and the pull-request description still names neither DifferentialGeometry nor the revision #886. It is carried as R01 below. No repair report marks it "not actionable", so it is not re-raised under that rule; it was never answered.

## R01 (P2) — DifferentialGeometry Layers 6, 8 and 9 are cited, and the open revision of DifferentialGeometry drops them

**Location:** `TauCetiRoadmap/ComplexComparisonPartII/README.md:697–699` ("Layer 6: `deRhamCohomology`; Layer 8: the de Rham theorem `deRhamEquiv`; Layer 9: Poincaré duality and `finiteDimensional_deRhamCohomology`"). The same layers are cited at :2861–2862 (*Needs:* "Layers 5, 6, 8 and 9"), :3620 ("Layer 8's `deRhamEquiv`"), :3631 ("Layers 6–8") and :4236–4237.

**Claim:** de Rham cohomology, the de Rham theorem and Poincaré duality are DifferentialGeometry Layers 6, 8 and 9.

**Witness:** True on main (`DifferentialGeometry/README.md:782, 816, 862`). At the head of #886 (a565de6, unchanged) the layers are 0–5, 5.6 and 12 only (README:288–1204). Its README:262 hands de Rham cohomology to DeRhamCohomologyAndDuality, which is `ORDER.txt:383`, after this roadmap (:39).

**Repair:** No README change. The citations are correct against main, and no earlier owner exists. Add one sentence to the merge-order paragraph of the pull-request description. It should say that the README consumes `deRhamCohomology`, `deRhamEquiv` and `finiteDimensional_deRhamCohomology` from DifferentialGeometry Layers 6, 8 and 9 as they stand on main. It should also say that #886 removes those layers, so #886 must be reconciled with these citations before both merge: either it keeps the layers or gives an old → new map, or DeRhamCohomologyAndDuality moves ahead of this roadmap in the merge order. Add no *Needs:* edge to DeRhamCohomologyAndDuality while it is at :383.

## R02 (P2) — The holomorphic exponential sequence and its first-Chern-class identification have two owners

**Location:** `README.md:144` (ownership row: "…; ComplexComparisonPartII C5.4 | C5.4 constructs the holomorphic-to-smooth forgetful adapter, proves the exponential-sequence description `δu`…") and :3601–3616 ("Prove the exponential-sequence description here. The short exact sequence `0 → ℤ → O_M → O_M^× → 0` … prove that it sends the class of `L` to the image of `integralLineBundleChernClass L`").

**Claim:** C5.4 owns, on every complex manifold, the exponential-sequence description of the integral first Chern class.

**Witness:** At the head of #1234 (ComplexKahlerGeometry revision, 41f5a15), README:638–651 adds "K4.P". It owns "on every complex manifold, the holomorphic exponential sequence, the isomorphism `Pic_hol(M)≃H¹(M,𝒪×)`" and the connecting-map/c₁ identification, and names ComplexComparisonPartII C5.4 a consumer. Main's ComplexKahlerGeometry has no K4.P.

**Repair:** Settle one owner. ComplexKahlerGeometry is the earlier roadmap (on main), and K3Surfaces and GeometricQuantization also consume K4.P. So cite ComplexKahlerGeometry K4.P for three things on complex manifolds: the holomorphic exponential sequence, `Pic_hol(M) ≃ H¹(M,𝒪×)`, and the identification of its connecting map with the integral c₁ of the underlying smooth line. Then:

- Replace the paragraph at :3601–3616 with three items: the identification of C1.9's `analyticPicardGroup` on a manifold with K4.P's `Pic_hol`, the explicit `δu` cocycle, and the `P^r` normalisation, the last two as Checks on the consumed map.
- Rewrite row :144 to match.
- The worker names #1234 in the merge-order paragraph (K4.P exists only at that head).

The test instance survives: #1234 README:653–655 fixes `c₁(O(−1))·[ℂP¹] = −1` "as ComplexComparisonPartII writes it". So the Check at :3638–3641 (O(1) the positive generator) holds unchanged for the consumed map. If the two authors instead keep the manifold statement here, #1234 must drop it from K4.P. That needs a decision on #1234's side, and it is not consistent with K4.P's other consumers.

## R03 (P3) — Riemann existence and the relative Artin comparison are stated more narrowly than their sources

**Location:** `README.md:4428` ("For every finite-type `X/ℂ`, analytification induces an equivalence between finite étale `X`-schemes and finite topological covering spaces of `T_X`"). Also :4605–4606 ("If `f` is proper, the canonical exchange `ε_Y^* Rf_*K → R(f^an)_* ε_X^*K` is an equivalence").

**Claim:** Riemann existence is stated for finite-type `X`, and the direct-image exchange only for proper `f`.

**Witness:** SGA 1 XII Théorème 5.1 (retyped p. 251; cached text line 9872) assumes `X` only locally of finite type. SGA 4 XVI Théorème 4.1 (retyped p. 638) gives the direct-image exchange for every finite-type `f` when the coefficient sheaf is constructible (its case (ii)).

**Repair:**

- State `riemannExistence` for `X` locally of finite type over `ℂ`. The proof's affine-local gluing already allows infinite covers. Keep finite type only where C6.3 uses it.
- Add a clause to `relativeArtinComparison`: for every finite-type `f` and `K ∈ Dᵇ_c`, `ε_Y^*Rf_*K → R(f^an)_*ε_X^*K` is an isomorphism (SGA 4 XVI 4.1(ii)).
- Add a Check for it. For `j : G_m ↪ A¹` and `K = Λ`, both sides give `(R¹j_*Λ)_0 ≅ Λ(−1)` (tame inertia, resp. `H¹` of the punctured disc), although `j` is not proper.

## R04 (P3) — C6.0 mislocates and understates the AffineMorseLefschetz triangulation it consumes

**Location:** `README.md:287–291` ("*AffineMorseLefschetz, A4, opening triangulation paragraphs.* The compact semialgebraic finite closed-family theorem…"). The same citation is at :105, :719–723, :4271 and :4299. C6.0 at :4277–4282 then constructs locally closed strata: "record the closures and boundaries … express each piece as a difference of subcomplexes".

**Claim:** The supplier is A4's opening, and it triangulates compatibly with closed families only.

**Witness:** On main the triangulation is AffineMorseLefschetz Layer 5 (A4.1), §5.1 `finite_semialgebraic_triangulation` (README:946–983). Its marked subsets "need not be closed", and each is a union of open-simplex images. The opening of A4 (Layer 4, A4.0) is locally finite duality.

**Repair:**

- Cite "AffineMorseLefschetz Layer 5 (A4.1), §5.1" at :105, :287–291, :719–723, :4271, :4299 and :4732.
- Consume its non-closed marked-family statement for the locally closed strata, and delete the difference-of-subcomplexes step.
- Keep as C6.0's own only these: the bounded embedding of a noncompact set into its compact closure, the chart gluing, the common refinements and the finiteness consequences.

Test it on the Check at :4308. §5.1 applied to `P¹` with marks `{0}`, `{∞}` and `ℂ*` gives `ℂ*` as a union of open simplices directly.

## R05 (P3) — Two pairs of targets restate each other inside the roadmap

**Location:** C-1.3 `README.md:959` ("Define `SpaceAnalytification`. … construct `X^an` as the analytic quotient of `R^an⇉U^an`") and :975–981 (`analytification_descent`: independence of presentation, functoriality, fibre products). These restate C-1.2 at :935–937 (`complexSpaceAnalytification`; "A common refinement `U×_X U′` proves independence of the atlas…"). Separately, `analyticPolydisc` (:1009) restates `snc_exists_polydiscChart` (:1021).

**Claim:** These are four distinct targets.

**Witness:** Both C-1.2 and C-1.3 build the quotient of `U^an` by `R^an` and prove atlas independence, maps, identity, composition and fibre products. Consumers use only `complexSpaceAnalytification` (:1304, :1822, :2414). `analyticPolydisc` is the variety case of `snc_exists_polydiscChart`: the same chart, with complement `(Δ*)^r×Δ^(n−r)`.

**Repair:**

- Define the space analytification once, for locally separated algebraic spaces locally of finite type: the finite-type quotient of C-1.2, plus one sentence gluing over finite-type opens. Keep one named independence/functoriality theorem (`analytification_descent`) and delete the duplicate sentences at :937. Align Conventions :390, which says "of finite type".
- Delete `analyticPolydisc`. Repoint :146, :3787 and :4056 to `snc_exists_polydiscChart` and move its Bierstone–Milman locator there.

## R06 (P3) — Two seeded locators point at the wrong page or section

**Location:** `README.md:2723–2724` ("EGA IV₄, §§16.7–16.8, … printed pp. 39–44") and :4841–4842 ("§§16.7–16.8, printed pp. 40–44"). Also :4496 ("SGA 4 XI §4, especially §4.6 (elementary fibrations)").

**Claim:** §§16.7–16.8 are pp. 39–44 (resp. 40–44), and elementary fibrations are SGA 4 XI §4.6.

**Witness:** In the Numdam EGA IV₄, §16.7 starts on printed p. 36 and (16.8.1) is on p. 39; (16.8.8) is on p. 42 and (16.8.9) on p. 43. SGA 4 XI defines elementary fibrations and proves that they exist in §3 (Définition 3.1, Proposition 3.3, p. 549). 4.6 is Serre's variant that uses them.

**Repair:**

- Write "EGA IV₄ §16.7, printed pp. 36–39, and §16.8, (16.8.1)–(16.8.9.2), pp. 39–44" at both places.
- Write "SGA 4 XI §3 (Définition 3.1, Proposition 3.3) for elementary fibrations, and §4 (Théorème 4.4, Variante 4.6) for the smooth comparison".

## R07 (P3) — The References list omits cited works and misdescribes the Stacks chapters

**Location:** `README.md:4806–4874` (References), against the body citations at :987, :2318, :2336, :2351 and :4390.

**Claim:** The References list the works the README cites.

**Witness:** These are cited but absent from References:

- Kleiman, arXiv:math/0504020 (:2351)
- Schröer, arXiv:2004.07025 (:2318)
- Raynaud 1970, Publ. IHÉS 38 (:2336)
- M. Artin 1969, Publ. IHÉS 36 (:987)
- Hatcher §3.H (:4390)

The Stacks entry names §§29.6–29.7, 38.32–38.33 and 63.9, none of which the body cites. Mok–Pila–Tsimerman is listed but never cited.

**Repair:** Add the five works with their locator schemes. Replace the Stacks entry with the chapters and tags the body cites (for example 08BE, 09DS, 0CXB, 0D03 and 0FKF). Cite Mok–Pila–Tsimerman in C4.4 or delete it.

## R08 (P3) — Template fragments in the prose

**Location:** `README.md:985` ("Here Use finite-type complex objects, retain nonreduced analytic structure…"). Also :2162–2163 ("…transition homotopies. The API / The product and comparison assertions…"), and the hypothesis fragments at :1798, :2210, :2233, :2262, :2280, :2298, :2316, :2334 and :2364 (for example "Here No global section, Noetherian base or projectivity is required.", "Here Universal functions is an arbitrary-base-change condition.").

**Claim:** These lines are prose.

**Witness:** They are sentence fragments left by a hypothesis template. For example :2233 reads "Here f separated and of finite presentation; `B` an arbitrary algebraic space; modules on the ringed small étale site…".

**Repair:** Fold each hypothesis list into its theorem statement, or write it as a sentence ("No global section, Noetherian base or projectivity is required."). Delete "The API" at :2162 and the stray "Here" at :985.

## R09 (P3) — The `Suggested.lean` module docstring is not in the required form

**Location:** `TauCetiRoadmap/ComplexComparisonPartII/Suggested.lean:7–11` ("# Complex comparison: target statements … These statements suggest Lean forms for particular milestones; discharging all of them finishes neither a layer nor the roadmap.")

**Claim:** The docstring follows the house form.

**Witness:** The required form is "<title>: target signatures", saying that the file states the roadmap's headline theorems against the pinned APIs. The roadmap is "complex comparison, part II" (README:1). Main's CharacteristicClasses and SmoothBundlesConnections use this form.

**Repair:** Title it "# Complex comparison, part II: target signatures". Make the first paragraph: "The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline theorems that are statable against the pinned Mathlib and Tau Ceti, each with `sorry`." Keep the list of unstatable headlines unchanged. No statement changes, so `lake env lean` should again give the same three `sorry` warnings.

## Verified sound

**Gate and dependency check.** My run of the gate on this head printed `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK` (exit 0). The dependency check with `--movable` printed, in full:

```text
depcheck: 240 roadmaps, 2379 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. `git diff --stat origin/main...HEAD` outside the folder is empty. The folder holds `README.md`, `Suggested.lean` and `metadata.toml`. No `design/plan.json` is readable, so no gaps are declared; nothing should have been one.

**Lean.**

- `lake env lean` on `Suggested.lean`: exactly three `declaration uses sorry` warnings (lines 66, 77, 92), exit 0.
- The elaborated signatures of `montelTheorem`, `schwartzFiniteness` and `nonempty_sheafSingularComparison` lose no binder and equal the README statements at :1652–1659, :1677–1680 and :2826–2832.
- One-tactic probe on a scratch copy, with `first | simp | rfl | infer_instance | aesop` on each theorem: all three fail (unsolved goals ×2, `aesop` made no progress). So nothing is padding. No declaration restates a definition or mirrors a Check.
- The unstatable headlines are named in the docstring with the missing carrier.
- Neither Mathlib nor Tau Ceti has several-variable Montel (Tau Ceti's Montel files are all on `Ω ⊆ ℂ`), Schwartz's theorem, or a sheaf/singular comparison, so the three statements duplicate nothing.

**Pinned names opened (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`).** I put 91 names cited in the README in two scratch files of `#check @…`. I built three missing Tau Ceti modules first (`Geometry.Hodge.Conjugation`, `Geometry.Hodge.Structure`, `Analysis.Complex.HolomorphicSheaf`). All resolve. Three needed only a different import or namespace:

- `sheafPullback` and `sheafAdjunctionContinuous` are `CategoryTheory.Functor.…` (`Mathlib/CategoryTheory/Sites/Pullback.lean:71, 76`), as the README's unqualified wording allows.
- `SchemeWeilDivisor.toLineBundleClass` is in `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/LineBundle.lean:67`.

Signatures checked against the README's description:

- `LocallyContractibleSpace` (`Mathlib/Topology/Homotopy/LocallyContractible.lean:81`): every neighbourhood contains a neighbourhood with null-homotopic inclusion. This is equivalent to Sella's semi-local contractibility with open witnesses (take interiors).
- `TauCeti.montel` (`Analysis/Complex/Conformal/Montel/Basic.lean`): open `Ω ⊆ ℂ`, `ProperSpace E`.
- `IsCompactOperator.isClosed_range_pow_one_sub` and `IsCompactOperator.finiteDimensional_quotient_range_one_sub` (`RieszTheory.lean`): `IsRCLikeNormedField 𝕜`, `CompleteSpace X`.
- `ContinuousLinearMap.IsFredholm.add_of_isCompactOperator` (`Analysis/Fredholm/CompactPerturbation.lean:87`).
- `AnalyticAt.exists_openPartialHomeomorph` (`Analysis/Analytic/Inverse.lean:106`).
- `TauCeti.ContDiffOn.exists_openPartialHomeomorph` (`Analysis/Calculus/InverseFunctionTheorem.lean:153`).
- `Scheme.IsCurveOver` (`AlgebraicGeometry/Curves/Basic.lean:37`): integral, proper, `topologicalKrullDim = 1`.
- `SchemeWeilDivisor.globalSectionsEquivRiemannRochSpace` (`WeilDivisor/Scheme/FunctionField.lean:276`).
- All 34 Riemann-surface, divisor-sheaf and `ratFuncEquiv` names of C1.9.
- `TauCeti.FiniteLocallyFreeBicommutativeHopfAlgCat.cartierDuality`.

**Seeded sample, read at the locators.**

- *Riemann surface of a smooth complex curve.* SGA 1 XII Propositions 3.1 ((iii) étale, (iv) smooth, (viii) separated) and 3.2 ((v) proper, (vi) finite) are on retyped pp. 244–247 (PDF page − 16 = printed).
- *Curve GAGA.* SGA 1 XII Théorème 4.4 is on pp. 249–250.
- *`IsDifferentialOperator`.* EGA IV₄ (16.8.1) is the definition through `P^n`. (16.8.8)(b) has `D_a(t) = D(at) − aD(t)` of order ≤ n−1, matching `commutatorWith`. (16.8.9)/(16.8.9.2) is on p. 43 (pages: R06).
- *`holomorphicConnectionDictionary`.* Deligne 1970 I.2.3–2.15 is on printed pp. 6–11 (2.11 curvature and 2.14 integrable are on p. 11), and 2.16–2.19 are on pp. 12–13 (printed = PDF − 3).
- *`CurrentCalculus`.* Demailly I (2.1)–(2.7) is on pp. 13–15 (sign (2.6) `⟨dT,u⟩ = (−1)^{q+1}⟨T,du⟩`; (2.7) `d[Z] = (−1)^{m−p+1}[∂Z]`), §2.D.3 on p. 19, (3.20) on p. 25, III (1.1)–(1.14) on pp. 130–133, and III (2.2)–(2.3) on pp. 138–140.
- *`realComplexCurrentComparison`.* Demailly III (1.14)–(1.15) is on pp. 133–134, and (1.21)–(1.22) and (1.24) on pp. 135–136. Trace measure: Demailly's `σ_T = (2^p p!)⁻¹ T∧ω^p` with `ω = iΣh dz∧dz̄` equals the README's `T∧ω^p/p!` with `ω = (i/2)Σh dz∧dz̄`.
- *`analyticSetLocalFiniteMass`.* Demailly III (2.5)–(2.6), p. 140: Lelong's local finite mass near `A_sing`.
- *`topologicalCoefficientComparison`.* Sella's Theorem (p. 2, any abelian group, semi-locally contractible) and Lemma 0.1 (pp. 2–4) check out. Hatcher §3.H local cochains are on printed pp. 333–334. Dimca is under *Not verifiable*.
- *`riemannExistence`.* SGA 1 XII Théorème 5.1 is on p. 251 (generality: R03).
- *`artinComparison`.* Checked SGA 4 XI §3 Définition 3.1 / Proposition 3.3 (p. 549), §4 Théorème 4.4 and Variante 4.6, and XVI Théorème 4.1 (p. 638). Milne LEC v2.21 has Theorems 21.1 (p. 130) and 21.5 (p. 132), Definition 21.7 and Proposition 21.8 (p. 133), fetched through the sources service. The locator problem is R06.
- *Named unit map.* SGA 4 XVI §4 compares through the morphism of sites `ε` with XII 4.2 base-change maps.
- *`artinComparisonCompactSupport` and `relativeArtinComparison`.* SGA 4 XVII §3 (recollement), §4 (base-change arrow) and §5 (`Rf_!`) check out. SGA 4½ is paywalled.
- *`artinSmoothTrace`.* SGA 4 XVIII 2.8, Théorème 2.9 (uniqueness of `Tr_f` with functoriality and base change), Proposition 2.10, and Théorème 3.2.5 (Poincaré duality) check out.
- *`adicArtinComparison`.* Bhatt–Scholze §5 and §§6.5, 6.7 (six functors) and 6.8 (`Zℓ`/`Qℓ`-sheaves) check out.

Other sources read:

- Schwartz's theorem is Demailly IX.1.8(b), p. 406; the vanishing above the dimension is IX.4.15(a), p. 428.
- Deligne's II.5.3/"4.3" misprint is confirmed at printed p. 94 (Source issues).

**Cross-roadmap citations resolved (copy named).**

- *On main:*
  - EtaleCohomologyFoundations §§G.1–G.3, F.0.1–F.0.4, F.0.3, F.1–F.3, F.4.1–F.4.6, 0.7, 0.8, 0.11 (`ClassicalAlgebraic.smoothTrace` :1159), with all 26 `VanishingCycles.*`/`ClassicalAlgebraic.*` names.
  - EnhancedDerivedSheaves `ClassicalDerived.*` (:30), `perfect_proper_pushforward` (:1057) and `adjointFunctorTheorem` (:1167).
  - DerivedModuleAlgebra `perfectInverseSystemEffectivity` (:2202).
  - CharacteristicClasses C1.2a/C1.2b (`cechSingularCWTypeComparison` :640), C1.5, C3 and C4 items 1–2.
  - ComplexKahlerGeometry K4.ComponentwiseFiniteRankAssembly (:517) and K5a `BundleDistribution` (:641).
  - RealAnalyticGeometry R3.0–R3.2 item 0 (:728).
  - Hyperfunctions HF3a "Conic sheaves and geometric derived functors" (:851).
  - GeometricCurrents G1.
  - ModularCurves §0B, with `FiniteFlatCommGroupScheme.cartierDual` and `cartierDualBaseChangeIso` in its `Suggested.lean:194, 205`.
  - SmoothBundlesConnections B1.5.
  - UniversalCovers and RealAlgebraicGeometry (Completed).
- *At open heads, through the tool:* every AlgebraicModuliForArithmeticGeometry name (§§3.1, 3.5, 6.1, 7.1–7.9, 8.3, Layer 1; for example `PicardStackSpaces`, `relativePicardKernel`, `sectionPicardSplit`, `rigidification_gm_torsor`, `spaceDQCoh.*`) is in #853. `DeRham.d_leibniz` is in #868.
- *Leads:* the citations file's 39 Lean-name leads all resolve as above, and its cross-roadmap list is empty.
- *Ownership of C3:* the Picard/Coh-stack targets of C3.2c–C3.2g have a single owner. #853's README:9408 delegates `picardZeroSheaf`/`picardZeroCriterion` here, and #1225, #1754 and #1814 cite them from here.

**Ownership against open pull requests.**

- The overlap file lists no other pull request changing this roadmap and no id that only an open revision defines. Its two dropped ids are R01.
- Of the closest roadmaps in vocabulary, #1234 adds K4.P (R02). #1398 moves the pointwise Hodge star to Tau Ceti/Mathlib (`exteriorPower.hodgeStar` exists at both pins), which C1.2 consumes through K5a without redefining. Both revisions hand scheme analytification to this roadmap (#1234 README:542–547).
- DifferentialGeometry #886 and DeRhamCohomologyAndDuality #1768 (1b57dbe, still consuming "DifferentialGeometry 6 and 8") were read at their heads.
- Open pull requests whose files the brief does not list were searched only through the tool.

**Computed adversarial pass.**

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| Riemann surface of `C` (seeded) | `P¹`; `z↦z²` on `G_m`, on `A¹` at 0; nodal cubic; doubled origin; `P¹⊔P¹` | transition `z↦1/z` is its own holomorphic inverse on `ℂ*`; derivative `2z≠0` on `ℂ*`, `=0` at 0 (no chart); `∂_x(y²−x³−x²)=∂_y=0` at the node; doubled origin gives a non-Hausdorff `T_C`; `H⁰(O)=ℂ²` gives a nontrivial idempotent, so disconnected | Pass |
| `functionFieldToMeromorphic` (seeded) | `z` on `P¹`; `x,y` on `E: y²=x³−x`; `D=∞`; `E∖{∞}`; `O(±1)` | `ord₀z=1`, `ord_∞z=−1`; `∂_x(x³−x−y²)=−1` at `(0,0)`, so `y` is a parameter and `ord x=2`; `div x=2(0,0)−2∞` of degree 0; `h⁰(𝒪_∞)=2=h⁰(O(1))`, reversed sign gives 0; algebraic `Pic(E∖∞)≅E(ℂ)≠0` vs analytic 0; `O(1)` goes to the class with `h⁰=2` | Pass |
| `IsDifferentialOperator` (seeded) | `k[z]`; `𝔽₂[z]`; `𝔽₃[z]`; zero map | `[d/dz,z]=id`; `(z+t)²=z²+t²`: `z²↦1` while `(d/dz)²z²=2=0`; `t³`-coefficient of `(z+t)⁴` is `4z≡z`; `(d/dz)³zⁿ=n(n−1)(n−2)zⁿ⁻³≡0`; `P^m(k[z])=k[t]/t^{m+1}`, rank `m+1` | Pass |
| `holomorphicConnectionDictionary` (seeded) | `e′=eg`; F2.4 gauge `h=g⁻¹`; `d+z dw`; rank 0 | `A′=A+g⁻¹dg`; `h·d(h⁻¹)=−(dh)h⁻¹` gives `A′=hAh⁻¹−(dh)h⁻¹`; curvature `d(z dw)=dz∧dw`; `0` | Pass |
| `CurrentCalculus` (seeded) | smooth `α`; `α=a dx+b dy`, `η=φdx+ψdy`; `[Z]`; `|z|⁻²dxdy`; `[a]` | `∫d(α∧η)=0` gives `(dT_α)(η)=∫dα∧η`; `α∧η=(aψ−bφ)dx∧dy`; `(−1)^{2n−p+1}` = Demailly (2.7) with `m=2n`; `∫₀^ε r⁻¹dr=∞`; trace mass of `[a]` is 1 | Pass |
| `realComplexCurrentComparison` (seeded) | disc (`n=1,q=2`); segment (`q=1`); `½δ_a`; `ω` normalisation | sign `(−1)^{2n−q+1}`: `−1` for the disc, `+1` for the segment (`J₀(δ_b−δ_a)`); mass `½`; `ω_D=2ω` gives `(2^p p!)⁻¹T∧ω_D^p = T∧ω^p/p!` | Pass |
| `analyticSetLocalFiniteMass` (seeded) | line in `ℂ²`; node `xy=0`; `c g≤h≤C g` | `πR²<∞` on balls, total `∞`; node mass = sum of two branch areas, no atom; volume factor between `c^d` and `C^d` | Pass |
| `topologicalCoefficientComparison` (seeded) | `𝔽₃`, monodromy `−1`; `𝔽₅`, transport `2`; `(0,1)⊂[0,1]`; `ℤ/2` over `ℤ/4` | `v=−v` gives `2v=0`, so `v=0` and `H⁰=0`; dual transport `3` (`2·3≡1`); `H⁰_c=0`, `H¹_c=coker(Λ→Λ²)=Λ` vs `H¹=0`; `Tor_i=ℤ/2` for all `i`: bounded, not perfect | Pass |
| `riemannExistence` (seeded) | `z↦zⁿ` on `ℂ*`; `ε`-thickening; `⊔_{n≥0}Aⁿ` | deck group `ℤ/n`; same finite étale site; the infinite union is locally of finite type, covered by SGA 1 XII 5.1, excluded here | R03 |
| `artinComparison` (seeded) | `G_m`, `Λ(1)`, `n=2,3`; `Spec ℂ`, `Λ=ℤ/4`, `K=ℤ/2` | Kummer class goes to the `n`-th-root torsor with transport `exp(2πi/n)`; the negated map gives `exp(−2πi/n)`, different iff `n≥3` (`−1=1` in `ℤ/2`); `Tor_i=ℤ/2` for all `i`: in `Dᵇ_c`, outside ctf | Pass (locator R06) |
| `IsIso (artinComparisonMap)` (seeded) | `Spec ℂ`; affine étale `U` | both sites trivial, unit = identity; `IsIso RΓ(U,unit)` for all `U` in the dense `AffineEtale` iff `IsIso unit` | Pass |
| `artinComparisonCompactSupport` (seeded) | `A¹`; `G_m⊂A¹`; conjugation on `P¹` | `H^•_c(A¹)=(0,0,Λ(−1))`, `H⁰_c=0≠Λ=H⁰`; conjugation acts by `−1` on `H²(P¹(ℂ),Λ)` and by inversion on `μ_n`, so `+1` on `H²(Λ(1))`, matching the Galois-invariant point class | Pass |
| `relativeArtinComparison` (seeded) | proper `f`; open immersion; `j:G_m↪A¹`, `K=Λ` | proper: XVI 4.1(i); `j_!` exchange; `(R¹j_*Λ)_0=Λ(−1)` on both sides with `j` not proper: not stated | R03 |
| `artinSmoothTrace` (seeded) | `P¹→pt`; `A¹⊔A¹`; `A²→A¹→pt` | `tr c₁(O(1))=1`; `H²_c(Λ(1))=Λ²`, trace = sum with kernel `{(a,−a)}≠0` for `n>1`; composite = iterated | Pass |
| `adicArtinComparison` (seeded) | reductions; torsion object; `P¹` | mod `ℓⁿ` gives the finite map; `T⊗ℚ_ℓ=0`; degree 2 rank 1, trace 1 | Pass |
| `montelTheorem` (Lean) | `Ω=∅`; `E=0`; `f_n=n`; `f_n=zⁿ` on the disc | conclusion trivial with `g=0`; Bolzano–Weierstrass on `f_n(0)`; `hb` fails, so the hypothesis is used; `|zⁿ|≤rⁿ→0` locally uniformly | Pass |
| `schwartzFiniteness` (Lean) | `h=0`; `g=id`, `h=−K` on `ℓ²`; `ℓ¹↪ℓ²`; `h=−id` | codim 0; Riesz: closed, finite codim; not surjective (excluded); `−id` not compact in infinite dimension (excluded; else codim `∞`) | Pass |
| `nonempty_sheafSingularComparison` (Lean) | `∅`; point; Cantor set; Sella's 5-point space | `Opens ∅` sheaves are trivial, `0=0`; `A` in degree 0 on both sides; Cantor set fails LC and has `H⁰` = locally constant functions `≠ A^K`; the 5-point space is LC and the iso holds (Sella Ex. 0.3) | Pass |
| exponential description in C5.4 (R02) | `O(±1)` on `P¹`; dual; `μ₂`-flat line on Enriques | `±1` generators; `exp(−2πiu)` swaps them; `δ(−u)=−δu`; Bockstein class nonzero with real image 0 | Pass; owner R02 |
| `multiplicativePeriodInterface` (R01) | `dz/z` on `G_m` | `circleIntegral.integral_sub_inv_of_mem_ball` gives `2πi` | Pass; ids R01 |
| `complexAlgebraicTopology` (R04) | `P¹` strata `{0},{∞},ℂ*`; `A¹` | §5.1 with non-closed marks gives `ℂ*` directly; `A¹` inside its compact closure `P¹` | Pass; locator R04 |
| `complexSpaceAnalytification` vs `SpaceAnalytification` (R05) | identity atlas of `Spec ℂ[ε]/ε²`; two-copy atlas | the same quotient in C-1.2 and C-1.3, `ε≠0`, copies identified | R05 |
| `analyticTwistCohomology` | `P¹`: `O(2)`, `O(−2)`; `Pʳ` | `3`; `1=binom(1,1)`; `h^r(O(k))=binom(−k−1,r)=h⁰(O(−k−r−1))` | Pass |
| Cartan–Serre needs Hausdorff | two `P¹` glued along `P¹∖{0}` | Leray cover `{P¹,P¹}`, overlap `≅ℂ`: `H¹(O)=O(ℂ)/ℂ`, infinite-dimensional | Pass |
| `cartanSerreFiniteness` vanishing | `dim T≤n` | `H^k=0` for `k≥n+1` (Demailly IX.4.15(a), p. 428) | Pass |
| `regularSingularDeRhamComparison` | residues `(−1,0)`, `(1,0)`, `(−1,+1)` on `P¹` | `O(1),O(1)` with `diag(0,−1)`: `H⁰=H¹=ℂ`; `O(−1)`: 0; `O,O` with `−1`: acyclic | Pass |
| `curveResidueLocalization`, `localMonodromy` | `dz/z` on `G_m`; `a=1/4,1/2,−1/4` | residues `(1,−1)`, periods `(2πi,−2πi)`; `exp(−πi/2)=−i`, `exp(−πi)=−1`; strip representative `3/4` | Pass |
| `coherentFlatConnection_locallyFree` | `O/(t)` in char 0; `O/(t^p)` in char `p` | Leibniz gives `dt⊗1=0`, contradiction; `d(t^p)=pt^{p−1}dt=0` | Pass |
| `chernFubiniStudyIntersection` | `∫_ℂ π⁻¹(1+|z|²)⁻²` | `(2π/π)·½=1` | Pass |
| `StronglyOneComplete` Checks | polydisc; `ℂᵃ×(ℂ*)ᵇ`; `P¹` | `∂∂̄(−log(r²−|z|²))=r²(r²−|z|²)⁻²dz∧dz̄>0`; `∂∂̄(log|w|)²=2∂log|w|∧∂̄log|w|≥0`; maximum principle on compact `P¹` | Pass |

**Policy.** No copied passage, algorithm, `set_option`, sorry'd data, `lemma`, pull-request number in the README, or machine path. Template residue is R08.

## Not verifiable

- A. Dimca, *Sheaves in Topology*, §§2.1–2.5, §3.2, §4.1 (C6.1). Springer, paywalled; no legal copy found. The statement is checked instead against Sella and Hatcher §3.H.
- P. Deligne, SGA 4½, *Théorèmes de finitude*, §§1–2 (C6.4). The sources service resolves it only to a paywalled page (Springer LNM 569, uncertified; recorded in a scratch manifest, no package manifest edited). The C6.4 statement is checked against SGA 4 XVII §§3–5 and XVI 4.1.
- Kato 1989, Katz–Oda 1968, tom Dieck 2009, Hironaka 1975, Bochnak–Coste–Roy, Knutson, Whitney: none is in the seeded sample, and no cached legal copy was found. tom Dieck is already in the job's earlier `needs-references.toml`.

## Source issues

- **Misprint** in Deligne 1970 (LNM 163) at II §5, printed p. 94: the source numbers the paragraph after 5.2 as "4.3"; it should be 5.3, as Proposition 5.4 ("T comme en 5.3") refers to it; affects nothing.
