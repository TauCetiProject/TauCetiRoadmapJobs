# Review of ModularCurves (pull request #1101 at 4dc762c)

**Verdict:** needs changes

The pull request changes only `TauCetiRoadmap/ModularCurves/README.md` (§0G, §8C, three provenance paragraphs); `Suggested.lean` is byte-identical to main. The gate fails at this head (`tex=3 prnum=1 sorry-data=49 imports=1 readme-ids-missing=1`, build and depcheck pass), so no acceptance is possible. Findings R01 and R05 are introduced by this pull request; R02–R04 and R06–R11 are inherited from the folder on main and are reported because this is a full review of the folder at this head.

## R01 (P2) — §0G consumes Tau Ceti declarations that do not exist at the pin

Location: `TauCetiRoadmap/ModularCurves/README.md` lines 431–434 ("Consume Mathlib's module-valued Grassmannian functor and Tau Ceti's `Module.Grassmannian.scheme`, `glueData`, `toSpec`, `chartEquiv` and `chartHomEquiv`"), 480–483 ("native `TauCeti.RingTheory.Grassmannian.Chart.*` and `TauCeti.AlgebraicGeometry.Grassmannian.Basic`"), 490–493 (**Native provenance**).

Claim: the block consumes an affine-chart/gluing implementation of the relative Grassmannian from Tau Ceti.

Witness: at the pull request's Tau Ceti pin `a91d3aaf` and at main's pin `358314d4`, `grep -rl Grassmannian TauCeti/` returns only `TauCeti/LinearAlgebra/TotallyReal/Loop.lean` and `.../Maslov/Phase.lean`; there is no `TauCeti/RingTheory/Grassmannian/` and no `TauCeti/AlgebraicGeometry/Grassmannian/`. Mathlib at the pin has only `Module.Grassmannian` and `Module.Grassmannian.functor` (`Mathlib/RingTheory/Grassmannian.lean` lines 16–22) and lists `chart`, `chartFunctor`, "Grassmannians for schemes" and representability as TODO (lines 43–50). The paragraph itself says the modules live at a commit "beyond this repository's `a91d3aaf` dependency snapshot": a library declaration is cited at the pin, not at a later commit, and a commit hash is process narrative.

Repair: delete the Tau Ceti names, the "Native provenance" paragraph and the `PR14686` link; keep "Consume Mathlib's `Module.Grassmannian.functor`" and restore the statement that this block constructs the affine charts, transition maps, gluing and universal property (the text the pull request replaced), which is also what the Hopf-locus paragraph and SchemeAndStackFoundations §4.14 (main, line 5716, `*Needs:* … ModularCurves 0G`) rely on. The quotient-convention projective bundle on StableReduction Layer 2's relative Proj, the Plücker closed immersion into `P(∧^N E)` and the subspace/quotient comparisons are mathematically correct; their ownership is settled in R12.

## R02 (P2) — `Suggested.lean` imports another roadmap's module

Location: `TauCetiRoadmap/ModularCurves/Suggested.lean` line 2 (`import TauCetiRoadmap.EllipticCurves.Suggested`), lines 101–136 (`EllipticCurvesInterface`), 421–445, 571–590; README lines 72–82 and 2693–2698 defend the import. Gate rule `imports`.

Claim: the equation-level inputs of Layers 2A and 2E are type-checked against the Elliptic Curves roadmap by importing its `Suggested.lean`.

Witness: the Lean form rules allow `import Mathlib` and individual `TauCeti.*` modules only, never another roadmap's module; the gate refuses it (`imports=1`). The objects the import is used for exist in the pinned Tau Ceti: multiplication by `n` as an isogeny with `TauCeti.Isogeny.degree_mulByIntIsogenyOfNeZero` (`TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Degree.lean` line 79, hypothesis `n ≠ 0`, `[W.IsElliptic]`), `fieldPullback` (`Isogeny/FunctionField.lean` line 167), `degree` (`Isogeny/Degree.lean` line 99) and the equation-level `weilPairing` with `weilPairing_self` and `weilPairing_nondegenerate` (`Isogeny/MulByInt/WeilPairing/Basic.lean` lines 230, 372, 388). So the "owed by the Elliptic Curves roadmap, to be replaced when they land" declarations `EllipticCurvesInterface.mulByIsogeny` and `degree_mulByIsogeny` restate pinned theorems.

Repair: delete line 2, the `EllipticCurvesInterface` namespace, `mulByFunctionFieldPullback_eq`, `finrank_mulBy_ofWeierstrass`, `torsionSectionOfPoint` and `weilPairing_eq_equationLevel`; state the degree bridge and the pairing normalisation against the Tau Ceti names above (importing those `TauCeti.*` modules), and move the README's "will be imported once that roadmap states them" paragraphs into a `From Tau Ceti` supplier subsection written in prose.

## R03 (P2) — 49 `def`/`instance` bodies are `sorry`, and the first ones duplicate pinned Tau Ceti carriers

Location: `Suggested.lean` lines 49 (`projModel`), 54, 70, 81, 88, 96, 117, 189–219, 324, 354, 359, 376, 392, 421, 447, 466, 475, 496, 503, 509, 523, 531, 537, 551, 556, 561, 573, 580, 594–620, 627, 696, 702–705 (`EllObj.baseChangeFunctor` with `map`, `map_id`, `map_comp` sorried), 764, 1095, 1099, 1130, 1142, 1172, 1176; gate rule `sorry-data`.

Claim: these are "provisional carrier signatures for objects whose construction is itself a milestone".

Witness: the principles forbid sorry'd data; and at the pull request's own Tau Ceti pin the projective model is not a milestone but a library object: `WeierstrassCurve.projModel`, `projModelOver`, `isProper_projModelOver`, `projModelZero`, `projModelZero_projModelOver` (`TauCeti/AlgebraicGeometry/EllipticCurve/Scheme/ProjModel.lean` lines 80, 85, 111, 118), `isIntegral_projModel` over any domain (`Scheme/Integral.lean` line 60) and `smoothOfRelativeDimension_one_projModelOver` (`Scheme/Smooth.lean` line 176). At main's Tau Ceti pin `358314d4` the file also duplicates `PointedWeierstrassChart`, `PointedWeierstrassAtlas`, `IsLocallyWeierstrass`, `nonempty_pointedWeierstrassAtlas_iff`, `EllipticCurveGeom` (`Scheme/Geom.lean` lines 94, 140, 154, 285, 302), `projModelPointsEquiv` (`Scheme/Points.lean` line 574) and `projModelFunctionFieldEquiv` (`Scheme/FunctionField.lean` line 141), and the relative Cartier predicate of Layer 0A is `IsRelativeEffectiveCartier` (`TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Relative.lean` line 63), the affine finite-group quotient of 0C is `TauCeti.AffineInvariantQuotient.quotient`/`projection`/`desc` with `isFinite_projection_of_finiteType` (`Quotient/Affine.lean` lines 16, 59, 139; `Quotient/FiniteGroup/Affine.lean` line 73), and kernels of group-scheme homomorphisms with base change are `TauCeti/AlgebraicGeometry/GroupScheme/Kernel.lean` lines 69–135.

Repair: delete the duplicated declarations and cite the Tau Ceti names in the README's supplier contracts (with the generality noted: `isIntegral_projModel` needs only `IsDomain R`, `smoothOfRelativeDimension_one_projModelOver` needs `[W.IsElliptic]`). Remove every remaining `def`/`abbrev`/`instance` whose body is `sorry` and everything that mentions one; keep the real-bodied carriers (`EllObj`, `EllHom`, `ModuliProblem`, `RelRepData`, `IsRigid`, `IsRegularOfDimTwo`, `EtaleRigidifier`, `IsCategoricalQuotient`, `KatzMazurQuotientData`, `RegularityAxioms`, `QuotientRegularityAxioms`, `CoarseModuliData`, `IsCoarseJLine`, `ArtinianTestAlgebra`, `Deformation`, `UniversalDeformation`) only where they rest on a pinned carrier for `EllipticCurve S`; where that carrier is missing at the pin the manifest will use, name the headline (First Main Theorem for `[Γ₀(N)]`, cyclicity, `coarseJLine`) in the module docstring as not statable instead of declaring sorried data for it.

## R04 (P2) — Layer 4D consumes SchemeAndStackFoundations §0.12 while SchemeAndStackFoundations consumes this roadmap

Location: README lines 1258 ("SchemeAndStackFoundations §0.12"), 1283, 1320 (`*Needs:* SchemeAndStackFoundations §0.12 (`Henselization.algebra`, `local_henselization`, `existsUnique_lift`)`), 1326.

Claim: 4D imports the henselisation of a pair from SchemeAndStackFoundations §0.12.

Witness: SchemeAndStackFoundations on main consumes ModularCurves 0B, 0C, 0D, 0E, 0F, 0G, 4D ("strict henselization and the regular locus"), 7D and 9D (its README lines 105–110 and 415–418), and `*Needs:* … ModularCurves 0G` at line 5716; the two roadmaps are each other's suppliers. The dependency check is silent because both roadmaps are on main and not in `ORDER.txt` (header rule: "roadmaps on main" may be consumed), so the cycle is not an UPWARD/CYCLE line, but it is a two-way supply. The names `TauCeti.Henselization.IsNeighbourhood`, `Neighbourhood`, `diagram`, `algebra`, `stage`, `desc`, `exists_stage_eq`, `hom_ext`, `parallel_equalization` attributed at lines 1257–1268 to "Tau Ceti's henselisation of a pair" are not in the pinned Tau Ceti (`TauCeti/RingTheory/Henselian/` has only `Basic`, `BinaryForm`, `Idempotent`, `Teichmuller`); they are SchemeAndStackFoundations §0.12's planned names.

Repair: cut the edge on this side. The only uses are clause (1) of Stacks 04GP (`R^h → R^sh` local) and the `R^h` clauses of Stacks 06LJ, which no later layer of this roadmap consumes (7B uses the strict henselisation and its completion only): either drop them, or state the henselisation `R^h` of a local ring as a 4D target in the same colimit form (triples with trivial residue extension, Stacks 04GP line 19797 vs. 155.1) and prove the comparison here. Attribute the equaliser-by-idempotent construction to this roadmap, not to Tau Ceti.

## R05 (P3) — pull-request numbers in the README

Location: README line 434 (gate `prnum`: `[Mathlib PR14686](https://github.com/…/pull/14686)`), lines 226–228 and 2623 (`mathlib4#25983`, `mathlib4#35151`).

Repair: delete; the design being followed is described by its mathematics (affine charts indexed by bases, gluing over trivialising covers), which §0G already does.

## R06 (P3) — TeX-only syntax outside code spans

Location: README line 752 (`C×_S E ≅ E×_{E/C}E,`), lines 1861–1862 (`deg [Γ₀(N)] = (N²/φ(N)) ∏_{p∣N}(1-1/p²) = N ∏_{p∣N}(1+1/p)`); gate `tex`. Both displays sit in fenced blocks indented under list items, which the scanner does not recognise.

Repair: write them as inline code spans (`` `C ×_S E ≅ E ×_{E/C} E` ``) or move the fence to column 0.

## R07 (P3) — process narrative, dates and commit hashes

Location: README lines 204–206 ("The August 2026 source audit recorded this API at Mathlib `05ae0103` (2026-08-12)… historical source-audit scope"), 490–493, 2663–2665, 2693–2698 ("The selected floor for this proposal is Mathlib `6b7abb3c…`, Tau Ceti `a91d3aaf…`, and Lean `v4.35.0-rc3`"), the whole of §Provenance (audit dates, AINTLIB revision, branch, toolchain) and the last paragraph of §Early API (`api-audit-2026-08-18.md`); also 7E lines 1563–1567 ("an earlier draft of this layer promised one, and that was scope creep, now deleted"), the `⚠` markers, "Volatile implementation counts are deliberately omitted" (line 232).

Repair: delete the dated and pinned sentences (the pull request adds four of them); keep the mathematics (which Mathlib files are consumed, which KM pages were checked can stay as plain locators).

## R08 (P3) — gate `readme-ids-missing`: `Scheme.Hom.isLocallyConstant_finrank`

Location: README lines 206 and 291.

Witness: the declaration exists at both Mathlib pins as `AlgebraicGeometry.Scheme.Hom.isLocallyConstant_finrank` (`Mathlib/AlgebraicGeometry/Morphisms/FlatRank.lean` line 231, hypothesis `[LocallyOfFinitePresentation f]`, exactly as the README says), so the scanner is treating the unqualified name as this roadmap's own.

Repair: write the fully qualified name, or pin it with a `#check @AlgebraicGeometry.Scheme.Hom.isLocallyConstant_finrank` in `Suggested.lean`.

## R09 (P3) — README names not declared in `Suggested.lean`

Location: README lines 695–705 (code block naming `mulByHom_functionField_eq`, `mulByInt_functionField_degree`, `mulByHom_genericDegree`); line 118 (`IsogenyOfDegree n`, the Lean name is `Isogeny.IsOfDegree`).

Repair: name the declared theorems (`mulByFunctionFieldPullback_eq`, `finrank_mulBy_ofWeierstrass`) or state the three steps in prose; use `Isogeny.IsOfDegree`.

## R10 (P3) — API catalogue and padding in `Suggested.lean`

Location: lines 1429–1502 (`EarlyAPI`: `pullback.mapSnd` with five lemmas, `pullbackSection` with three, `SheafOfModules.comp_val_app_apply` proved by `rfl`), 1319–1384 (`RelativeNormalization`: abbreviations of `Scheme.Hom.normalization`, `fromNormalization`, `toNormalization`, `normalizationDesc` and their compatibility lemmas), 320–322 (`EllipticCurveGeom.zero_comp_structureMap`, a restatement of the field `zero_comp`), 1387–1389 (`shimuraDegree`, a definition no declaration uses).

Witness: these are API lemmas and wrappers of pinned Mathlib declarations, not headline theorems; the README already carries them as targets (§Early API, Layer 10 "Representative declarations"). One-tactic probe on a scratch copy: `neighbourhood_essentiallySmall` by `infer_instance`, `stage_naturality` by `simp [stage, diagram]` and `toSepClosure_comp_stage` by `simp [toSepClosure, desc, stage]` all leave goals, so those are not padding.

Repair: delete the four blocks from `Suggested.lean`; the README keeps the statements.

## R11 (P3) — precision notes on the new §8C and §0G text

- README line 1746: with hypothesis (4) present, the "Reg. 3" clause of hypothesis (1) is implied (the isomorphisms `c_i` are exactly the Reg. 3 comparisons). Say "(4) supplies Reg. 3 for both problems" or drop Reg. 3 from (1).
- README line 440: `F_P` is undefined; write "the pullback of `F` to `Proj_S(Sym F)`".
- README lines 443, 470: StableReduction Layer 2 is cited for base change of relative Proj; its Layer 2 (main, lines 439–443) states relative Proj of a finitely generated graded quasi-coherent algebra with the affine graded-ring, localization and base-change interfaces of AlgebraicVectorBundles L2A, not a base-change isomorphism of the relative Proj itself. State "formation of `Proj_S(Sym F)` commutes with base change" as a 0G target (it is one line from the affine comparison).
- README line 2054 vs `Suggested.lean` line 1291: the README says "regular noetherian scheme `S`", the Lean says `[IsLocallyNoetherian S]` with regular stalks. Align the prose to the (more general) Lean hypothesis.

## R12 (P3) — §0G now plans targets that AlgebraicModuliForArithmeticGeometry §1.3 already plans on top of 0G

Location: README lines 439–450 (identification of the `N = 1` Grassmannian with `Proj_S(Sym F)`, the Plücker map into `Grass_1(∧^N E)` and its closed immersion into `P(∧^N E)`), 460–461 ("Prove finite presentation and `SmoothOfRelativeDimension`, with dimension `N(n−N)` on a rank-`n` locus, the `N=0,n` point cases and emptiness when `N>n`"), 462–463 ("supplied here to flag/Schubert and other consumers").

Claim: these are 0G's targets.

Witness: AlgebraicModuliForArithmeticGeometry (in the merge order, open at #853) consumes ModularCurves 0G for "`Gr_d(E)` for finite locally free `E` with its affine graph charts, gluing and universal property" and states that "its smoothness of relative dimension `d(n−d)` …, its tangent space … and the extreme ranks are targets of §1.3" (its README lines 249–254); its §1.3 defines `plucker` as the closed immersion `Gr_d(E) → P(∧^d E)` with `O(1)` pulling back to `det Q`, commuting with base change, with the Checks `Gr_1(E) ≅ P(E)`, `Gr_0(E) = S` and the six Plücker coordinates of `Gr_2(O⁴)` (lines 654–676), and `*Needs:* coherentGrassmannian, ProjectiveBundles.projectiveBundle, ModularCurves §0G`. So the Plücker embedding, the rank-one identification and the smoothness statement now have two planned owners, and ModularCurves, being the supplier, cannot import them.

Repair, on this side: the Plücker closed immersion is what makes the Hopf-locus parameter scheme projective, which Layer 6 and 8A ("projective plus quasi-finite implies finite") need, so it legitimately moves down into 0G; record this in §Scope and under Downstream consumers ("the finite locally free quotient Grassmannian with its universal quotient and its Plücker closed immersion into `P(∧^N E)` are owned here; the coherent extension, the tangent space, smoothness of relative dimension `N(n−N)` and flags are AlgebraicModuliForArithmeticGeometry §1.3's"), and delete from 0G the smoothness/relative-dimension/extreme-rank sentence and the "flag/Schubert consumers" sentence, which nothing in this roadmap uses. The identification of `Grass_1(F)` with `Proj_S(Sym F)` stays as the route to `P(∧^N E)` on StableReduction Layer 2's carrier. The matching change on AlgebraicModuliForArithmeticGeometry's side (importing `plucker` for finite locally free `E` from 0G) is for that roadmap.

## Verified sound

**Gate and tools.** Dependency check at this head: `depcheck: 204 roadmaps, 1422 edges, 0 problem(s)` (no UPWARD or CYCLE line; ModularCurves is on main and not in `ORDER.txt`, so edges to other main roadmaps are not ordered, see R04). `lake env lean` on `Suggested.lean`: exit 0, 114 `declaration uses 'sorry'` warnings and nothing else. The object file of `TauCetiRoadmap.EllipticCurves.Suggested` is present in the worktree build, which is why the build passes despite R02. No `set_option`, `lemma`, `#eval`, `#print axioms` or `True` placeholder. No change outside `TauCetiRoadmap/ModularCurves/` (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/ModularCurves'` is empty).

**Seeded sample.**
- *Consumers* (0A, lines 270–279): consistent with the dependency lines of 3N (0C–0D, 0G, 2A; "no dependency on 3A–3D"), 5A (1A–1D, 2A, 3N), 5B (2F, 3N, 4C; 2E for the determinant) and 5C (2E–2F, 5B).
- *Native provenance*: false at the pin, R01.
- *Strict henselisation* (lines 1253–1324): checked against the Stacks text. 04GP (`stacks-04GW` lines 19782–19800): clauses (1)–(5) as listed, including the triple construction `(S, 𝔮, α)`. 04GQ (19801–19808). 04GF (19317–19322): strictly henselian = henselian with separably closed residue field. 08HQ (19562–19567): unique `R`-algebra map `A → S` for `S` henselian local, as used stagewise. 04GT (19896–19915) with `S = R`: the unique `f : A → S^{sh}` with `f⁻¹(𝔪) = 𝔮` inducing the given residue map. 04GU (19917–19933): functoriality. 04GW (19935–19940): `(R_𝔭)^{sh} = colim S = colim S_𝔮` over triples; the Stacks proof equalises parallel maps by a tensor-product construction (19960–19969), the README's idempotent `1 − d(e)` localisation is its own variant and should be owned here (R04). 06LJ (`stacks-06LJ` lines 5346–5359): (1)⇔(2)⇔(3) and clauses (a)–(f) exactly as the README lists them. 07NV (5216), 07NY (5229–5230). The Lean `StrictHenselization` namespace (lines 1515–1670) states these on Mathlib carriers (`CommAlgCat`, `Over`, `ObjectProperty.FullSubcategory`, `SmallModel`, `HenselianLocalRing`, `IsSepClosure`) and the four Checks are correct: for `R = k` separably closed the only pointed étale neighbourhoods are products of copies of `k` pointed at one factor, colimit `k`; for `R = 𝔽_p` the colimit is `Ω`; for `R` strictly henselian every pointed étale neighbourhood has a section, so `R → R^{sh}` is an isomorphism; `ℤ_(p)^{sh}` is a countable DVR with residue field `Ω`, hence not complete, with completion `W(Ω)`.
- *Geometric irreducibility, conditionally* (lines 1433–1468): the two Lean statements exist (`irreducibleSpace_of_connectedSpace` line 1404, `irreducibleSpace_baseChange_algebraicClosure_of_connectedSpace` line 1420) and are true: smooth over a field gives locally noetherian and normal, connected plus normal plus locally noetherian gives irreducible; the base change of a nonempty scheme along the surjective `Spec ℚ̄ → Spec ℚ` is nonempty. `[IsAlgClosed K]` in the leaf is unused (normality of a smooth scheme over any field suffices); note, not a finding.
- *The two moduli problems compared (KM 6.1, p. 155)*, *The rings of §6.3 (KM 6.3.2)*, *The proof, as separate named lemmas (KM 6.3.3–6.3.6)*: KM is not legally readable (see Not verifiable), so the mathematics was recomputed instead; see the table rows on items 5–10. The transport of `(P, G, Q)` by `ξ_n : E[pⁿ] ≃ E'[pⁿ]` is well defined because exact order, cyclicity, the primitive part `D` (the unique rank-`φ(N)` subscheme of which the `aP` are a full set) and `Gˣ` (the `ℤ/N`-generator locus) are all conditions on the finite flat group scheme `E[pⁿ]`, and the inclusion `D ↪ Gˣ` is natural, so the square in hypothesis (4) commutes before `D = Gˣ` is known. Hypothesis (4) is genuinely needed by the stated route: objectwise Reg. 3 transports source and target but not the kernel/cokernel locus of `Φ`; with (4), the vanishing locus contains all ordinary points or none, and since it is open, contains the characteristic-0 fibre and (by (3)) every supersingular point, "none" would make its closed complement contain the dense ordinary locus of the special fibre and hence a supersingular point. So the added hypothesis is correct and the proof sketch is complete.
- *Smoothness of finite quotients* (line 2054; Lean line 1291): true as stated. Proof sketch checked: the categorical quotient of an affine morphism by a finite group is `Spec_S` of the invariant algebra; at a point of the special fibre the completed local ring is `R[[x]]` with `R` the completed base and `H_y` acting; if `H_y` acts faithfully on `k[[x]]` then `N(x) = ∏ h(x)` has `x`-order `|H_y|`, `R[[x]]` is finite of generic rank `|H_y|` over `R[[N(x)]]`, so the invariant ring (of the same fraction field) equals the normal ring `R[[N(x)]]`; if the kernel `H_0` of `H_y → Aut k[[x]]` is nontrivial, `R[[x]]^{H_0} = R[[N_{H_0}(x)]]` by the same argument and one inducts on `|H|`. So the quotient is `R[[u]]`, smooth of relative dimension one; no invertibility of `|H|` is used, and regularity of `S` is only used through normality.
- *The class quantified over, fixed once* (lines 2189–2203): `deg j = (N² − 1)/(2|H|)` (for `H = Δ`, `|Δ| = (N−1)/2`, this is `N + 1`), cusps `(N−1)/|H|` with `(N−1)/(2|H|)` of each width `1` and `N`, total `Cusps_H` rank `(N−1)(N+1)/(2|H|) = deg j`: consistent.
- *Representative declarations* (lines 2408–2416): the `RelativeNormalization` namespace exists with `desc`, `hom_ext` (with Mathlib's `[IsAffineHom g]`, `Mathlib/AlgebraicGeometry/Normalization.lean` line 436), `fibre`, `map`, `map_fromNormalization`, `toNormalization_map`, both proved. Mathlib's `normalizationPullback` is an isomorphism for smooth `g` (`Normalization.lean` line 599, `@[stacks 03GV]`), as the README states.

**Adversarial table.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 0G relative dimension `N(n−N)`, `N = 0, n`, `N > n` | rank-`n` free `E`, `N = 0`; `N = n`; `N = n+1` | `N = 0`: unique quotient `0`, `Gr = S`, dim `0 = 0·n`; `N = n`: quotient is an isomorphism, `Gr = S`, dim `n·0 = 0`; `N = n+1`: a rank-`n` module has no locally free rank-`(n+1)` quotient, empty | true | none |
| 0G subspace/quotient comparison | `k`-vector space, dim `n = 3`, `d = 1` | lines ↔ rank-`2` quotients of `V` ↔ rank-`1` quotients of `V^∨`; `G(1,3) ≅ G(2,3)` | matches Mathlib's note (`Grassmannian.lean` lines 36–41) | none |
| 0G Plücker map | `n = 2, N = 1` | `∧¹E → det Q` is `E → Q` itself; `P(E) → P(E)` identity | consistent | none |
| 0G `N = 1` Grassmannian = `Proj_S(Sym F)` | `F = O_S^{n+1}` | rank-one quotients of `O^{n+1}` = `ℙ^n_S` in the quotient convention | matches SSF §0.3 Check `relativeProj_polynomial` and SSF §5 line 6564 (which assigns this convention to ModularCurves 0G) | none |
| 0B `R = ℤ ⋉ V`, `A = R[ε]/(ε²)`, `ε ↦ −ε` | invariants | `a + bε` fixed iff `2b = 0` iff `b ∈ V`; `A^{C₂} = R ⊕ Vε`; kernel of `B² → A` is `{(−vε, v + v'ε)} ≅ V ⊕ V`, not finitely generated over `B` since `V` is infinite-dimensional over `𝔽₂` | example correct | none |
| 0B `𝔸² → 𝔸²/±1` | fibre at origin | `k[x,y]/(x², xy, y²)` length `3`, generic length `2` | not flat, as stated | none |
| 1B `y² = x³` over `𝔽₅` | point count | affine solutions `(0,0), (1,±1), (4,±2)`: five; projective six; `W.toAffine.Point` excludes the singular `(0,0)`: five | as stated | none |
| 2A `deg [N] = N²` at the pin | `n ≠ 0`, elliptic `W` | `TauCeti.Isogeny.degree_mulByIntIsogenyOfNeZero` (Degree.lean 79) | pinned, not owed by Elliptic Curves roadmap | R02 |
| 2E item 7 and 5B determinant law | `g = [[a,b],[c,d]]`, `(P,Q)g = (aP+cQ, bP+dQ)` | `e(aP+cQ, bP+dQ) = e(P,Q)^{ad−cb}` by bilinearity and alternation; `det g = ad − bc` | consistent; right action verified by composing two matrices | none |
| Convention 5 right action | `g, h ∈ GL₂(ℤ/N)` | `((P,Q)g)h` has first entry `(aa'+bc')P + (ca'+dc')Q`, equal to `(P,Q)(gh)` | genuine right action | none |
| 3A `μ_{p²}` example | `R = 𝔽_p[X]/(X^p − 1)`, `ζ = X` | `ζ ∈ μ_p(R)`, `ζ ≠ 1` | hypotheses coherent; the generator claims are KM 1.11.4–5, not readable | none |
| 4C Legendre count | `y² = x(x−1)(x−2)/ℚ` | differences `x(Q) − x(P) ∈ {±1, ±2}`; rational squares only `+1`, for two ordered bases; with `±ω`: `4` of `12` | as stated; a constant-group torsor with a rational point would have `12` | none |
| 7G binomial | `C(pⁿ, p^{n−1})` | one carry in base `p` (Kummer), so `v_p = 1` | as stated | none |
| 8C item 6 determinant | `A₁ = A[Q]/(f)`, `f = ∏_{(b,p)=1}(Q − [b](P))` monic | `det(Q·) = ±f(0) = ±∏[b](P)` | as stated | none |
| 8C item 8 degree-`p^{n−1}` coefficient | `pⁿ` roots `[a](P)`, `a mod pⁿ`, `[0](P) = 0` | coefficient of `X^{pⁿ−φ(pⁿ)}` is `±e_{φ(pⁿ)}`; the one product over units is `P^{φ}·unit`, every other product has a factor `[a](P) = P·(max ideal)`, so `e_φ = P^{φ}·unit` | equals `∏_{(b,p)=1}[b](P) = P^{φ}·unit` up to a unit | none |
| 8C item 9 | `[a](X) = aX + O(X²)`, `P ∈ max A` | `(a,p) = 1`: `a + O(P)` unit; `p ∣ a`: `a ∈ pW(k) ⊆ max A` | as stated | none |
| 8C item 7 snake lemma | `0 → Ker → A₂ → A₁ → 0`, `Q·` injective on `A₁` | `0 → Ker/QKer → A₂/QA₂ → A₁/QA₁ → 0` | exact | none |
| 8C hypothesis (4) vs Reg. 3 | any `Φ` | `c_i` are Reg. 3 isomorphisms for `𝒫_i` | Reg. 3 in (1) redundant | R11 |
| 8D degree formula | `N = p`; `N = p^k` | `(p²/(p−1))(1 − 1/p²) = p + 1`; `p^{k+1}/(p−1) · (p²−1)/p² = p^k(1 + 1/p)` | both forms agree | none |
| `gammaZeroDegree` (Lean 1150) | `N = 1, 2, 4, 6, 12` | `1, 3, 6, 12, 24` | equals `N∏(1+1/p)`; integral division exact | none |
| `shimuraDegree` (Lean 1388) | `N = 5, 7, 11, 13, 37`; junk `N = 0, 1` | `1, 1, 5, 1, 3`; `0, 0` | agrees with `num((N−1)/12)` for primes `≥ 5` | R10 (unused) |
| 9E Hesse family | `y² + a₁xy + a₃y = x³` | `b₈ = 0`, `Δ = −8a₁³a₃³ − 27a₃⁴ + 9a₁³a₃³ = a₃³(a₁³ − 27a₃)`; `c₄ = a₁⁴ − 24a₁a₃` | as stated | none |
| 9E Legendre identity | `d = λ(λ−1)`, `f = d + 1` | `2⁸(d³ + 3d² + 3d + 1) = jd²` gives `d(jd − 2⁸(d² + 3d + 3)) = 2⁸` | as stated | none |
| 9E field degrees | `Y_full(3)/ℤ[1/3, ζ₃]` | `[Frac A₃ : ℚ(ζ₃)(j)] = |SL₂(𝔽₃)|/2 = 12`, times `2` for `ζ₃`: `24 = |GL₂(𝔽₃)|/2` | as stated | none |
| 9A(3) and 9A(4) regression examples | `ℤ[x]`, `x ↦ −x`; `ℚ[x₁, x₂, …]`, all signs | `𝔽₂[x²] ⊊ 𝔽₂[x]`; `A/B₊A = ℚ ⊕ ⊕ℚx_i` infinite-dimensional | as stated | none |
| 8A ordinary fibre | `E[pⁿ] ≅ μ_{pⁿ} × ℤ/pⁿ` over `k̄` | `Hom(ℤ/pⁿ, μ_{pⁿ}) = μ_{pⁿ}(k̄) = 1`, so every subgroup is `μ_{p^a} × p^{n−b}ℤ/pⁿ`, `a + b = n` | `n + 1` subgroups, as stated | none |
| Layer 10 item 3 ramification table | characteristics `≠ 2,3`; `2`; `3` | `mazur77` lines 1506–1513, 1514–1529 (`A₄`, `H₃` self-normalising, `H₂` with Klein-four normaliser collapsing the pair), 1562–1575 (`S₃`, roles exchanged) | matches the README's six rows | none |
| Layer 10 item 3 "first type" | Mazur Def. 2.2 | `mazur77` lines 1487–1491: `G = G₀ = … = G_ν`, `G_{ν+1} = 0`; `ν = 1` at 1560 | as stated | none |
| Layer 10 item 4 Shimura covering | Mazur Cor. 2.3 | `mazur77` lines 1579–1583: `n = num((N−1)/12)`, cyclic of order `n`, étale over `ℤ[1/N]`; `[G : H] = ((N−1)/2)/(gcd(N−1,12)/2) = n` | as stated | none |
| Layer 10 item 2 cusp fibre | `Γ₀(N)`, `N` prime | widths `1` and `N`, `[∞] + N[0]`, rank `N + 1 = deg j` | consistent | none |
| 9D theorem (Lean 1291) | `Y = 𝔸¹_S`, `x ↦ −x`, `S = Spec ℤ`; `x ↦ ζx` on `W[[x]]`, `W = ℤ_p[ζ_p]` | `ℤ[x²]` smooth; `W[[x^p]]` regular with special fibre `k[[x^p]]` although `(B/π)^σ = k[[x]]` | true (norm argument above) | none |

**Library declarations opened at the pins.** `Mathlib/RingTheory/Grassmannian.lean` 16–50; `Mathlib/AlgebraicGeometry/Morphisms/FlatRank.lean` 30, 86, 231; `Mathlib/AlgebraicGeometry/Normalization.lean` 122, 372, 436, 577–599; `Mathlib/RingTheory/FormalGroup/Basic.lean` 56, 74; no Mathlib declaration relating `IsRegularLocalRing` or `ringKrullDim` to `AdicCompletion` (so lines 1676–1690 of `Suggested.lean` are not duplicates); Tau Ceti `EllipticCurve/Scheme/{ProjModel 80–118, Integral 60, Smooth 176}`, `Isogeny/{Degree 99, FunctionField 167, MulByInt/Degree 67–79, MulByInt/Hom 50–83, MulByInt/WeilPairing/Basic 230–388, Dual/WeilPairing 134}`, `EffectiveCartierDivisor/Relative.lean 63–198`, `Quotient/Affine.lean 16–148`, `Quotient/FiniteGroup/Affine.lean 66–85`, `GroupScheme/Kernel.lean 69–135`, `GroupScheme/ClosedSubgroup.lean 81`, `PicardFunctor/Rigidified.lean 66`, `RingTheory/Henselian/*`; main's Tau Ceti pin `EllipticCurve/Scheme/{Geom 94–332, Points 574–621, FunctionField 141, Chart 71}`.

**Cross-roadmap citations resolved (on main).** AlgebraicVectorBundles L0B (228–252: `FiniteLocallyFreeSheaf`, rank loci), L0C (254–267: exterior powers, determinant), L2A (306–335: `gradedSymmetricAlgebra`, affine graded-ring interface); StableReduction Layer 2 (405–467: relative Proj of a finitely generated graded quasi-coherent algebra, projective morphisms); SchemeAndStackFoundations §0.3 (551–600), §0.12 (969–1030), §4.14 (5710–5725), §5 (6560–6565); AlgebraicCurves Layers 7 (783), 8 (870), 9 (1099), 12 (1468); JacobianChallenge Layers A–F (111–448; its Picard scheme is over a field, lines 22, 42–45, as the README says); EllipticCurves `Suggested.lean` (188–379: `Isogeny`, `degree`, `fieldPullback`, `weilPairing`, `isIntegrallyClosed_coordinateRing`). ModularCurvesPartII and PartIII are in the order (lines 70, 287) and not cited here. Ownership against open work was checked by object for the relative Grassmannian, the projective bundle and the Plücker embedding: SchubertGeometry (its line 19), SchemeAndStackFoundations (main line 6564, open head line 208) and AlgebraicModuliForArithmeticGeometry (lines 249–254) all defer the Grassmannian scheme to ModularCurves 0G; AlgebraicModuliForArithmeticGeometry §1.3 plans the Plücker embedding, `Gr_1(E) ≅ P(E)` and the smoothness of the Grassmannian on top of it, see R12; AlgebraicVectorBundles at #1221 and on main plans none of these (its "Successor roadmaps" paragraph leaves Grassmann bundles to a successor).

**Sources read.** Stacks `stacks-04GW` (algebra, 469 pages) lines 19317–19985; `stacks-06LJ` (more-algebra) 5216–5359; `stacks-02KB` (morphisms) 4633–4651 (01W8: projective = closed subscheme of `P(E)`, `E` quasi-coherent of finite type; Example 44.2 is exactly §0G's Plücker-type closed immersion), 5513–5520 (02KB: finite locally free iff finite, flat, locally of finite presentation; iff finite flat over a locally noetherian base); `stacks-05LB` (examples) 1444–1465 (finite flat, not of finite presentation, over `R` with `R/I` finite flat not projective); `mazur77` (Numdam) 1429–1583.

## Not verifiable

- Katz–Mazur, *Arithmetic Moduli of Elliptic Curves* (`km85`): no legal text (the sources service found none; recorded in `needs-references.toml`). Every KM locator in the README (1.1.1–1.12.7, 2.2.5–2.8, 3.6.0, 4.6.2, 4.7.0, 4.12, 5.1.1–5.4, 6.1.1–6.6.1, 7.1.2–7.6.1, 8.1.1–8.2.2, 8.6–8.11, 10.6–10.9, Notes Added in Proof pp. 505–510) is cited by locator only; the mathematics of §6.3 and of the Notes-Added-in-Proof theorems was recomputed above instead. The README's erratum against KM 4.6.2 (the Legendre torsor) is arithmetically correct but could not be checked against KM's wording.
- D. Loeffler, *Modular Curves* lecture notes (Prop. 3.8.2, 3.3.4, 3.3.6, 3.4.4, 3.7.4): no legal source found by the service; recorded in `needs-references.toml`.
- K. Buzzard, *Formalizing Fermat*, Lecture 8 (for `Y(ρ)`), Silverman III.10.1 and Appendix A, Katz *Serre–Tate local moduli* Thm 1.2.1, Lazard 1955, Igusa 1959 §2, SGA 3 VIIA §3.3 and V 4.1, Deligne–Rapoport II.1.1: not fetched in this round (none is in the seeded sample; the automorphism-group facts of Layer 10 item 3 were checked against Mazur instead).

## Source issues

- none
