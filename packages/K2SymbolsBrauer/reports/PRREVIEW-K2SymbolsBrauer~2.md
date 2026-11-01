# Review of K2SymbolsBrauer (pull request #1302 at 31b3d54)

**Verdict:** accepted

Full re-review of the repaired head. The three blocking findings of the previous review (R01 ownership of the classical foundations, R02 ownership of the generic Brauer universe comparison, R03 the unnormalised Brauer acceptance signature) are repaired; the gate passes with every count zero; the dependency check shows no UPWARD or CYCLE line; `Suggested.lean` elaborates with `sorry` as the only warning; the adversarial table below carries computed values for every numbered target. Four P3 notes remain, none of which affects a stated result.

## Status of the previous review's findings

| Previous finding | Passage at this head | Status |
|---|---|---|
| R01 (P2) classical foundations re-planned | `README.md:9`: "AlgebraicKTheory A1–A3 and A5 owns stable matrices, Whitehead's theorem, classical and relative K₁, finite and stable Steinberg groups, stable centrality and universality, classical K₂, Matsumoto and finite-field classical K₂ vanishing. Layer 0 owns only the finite-word presentation adapter"; §§0.2–0.4 deleted; `README.md:52` supplier contract cites A1 (§§1.1–1.4), A2 (§§2.1–2.3), A3 (§3.1), A5 (§§5.1–5.2), all present at the AlgebraicKTheory head (its `README.md:202`, 218, 234, 250, 274, 289, 305, 331, 493, 508). | Repaired |
| R02 (P2) generic Brauer universe extension owned elsewhere | `README.md:9`, 56, 2410: the arbitrary-universe comparison is consumed from QuadraticFormInvariants "Native interfaces and remaining comparisons", stages 1–2 (on main `README.md:766`, 792–818) and Layer 7B, milestone 3 (`README.md:2554`–2571, characterised by `brauerCohomologyEquiv_crossedProductClass`); §10.32a keeps only the transport to the class-field-theory carrier and the cyclic-symbol normalisation. | Repaired |
| R03 (P2) `Nonempty (… ≃+ Br F)` stand-in | Deleted from `Suggested.lean`; the module docstring (lines 30–34) names the missing normalised universe comparison. | Repaired |
| R04 (P3) eleven anchor tags | Replaced by `####` headings (`README.md:2980`, 2997, 3025, 3039, 3053, 3067, 3210, 3249, 3275, 3289, 2219) and fragment links to their GitHub slugs; gate `residue=0`. | Repaired |
| R05 (P3) undeclared own Lean names in API bullets | The three named instances are gone, but other own names remain (R01 below). | Partly repaired |
| R06 (P3) one-lemma Brauer wrapper | Deleted with its two supporting definitions. | Repaired |
| R07 (P3) stale locators | `README.md:2527` and 2863 cite ArithmeticKTheory §2.1 and §8.2 (present at its head, `README.md:619`, 3954); `README.md:920` gives Exercise III.5.9 on p.229. | Repaired |
| R08 (P3) layer structure and Lean form | Layer 0 ends with Examples and Dependencies (`README.md:97`, 101); `Suggested.lean` has the "target signatures" title and `/-! ## Layer k -/` comments in README order (lines 42, 73, 83, 168, 180, 203, 232). | Repaired |

## R01 (P3) — Own Lean-style names still claimed in API bullets and Checks

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:1400` ("the local-field compatibility hypotheses of `unitPart_localField`"), 1410 (`unitPart_unit`, `unitPart_zpow`), 1566–1570 (`serreAlgebra.Π`, `serreAlgebra.Π_mul_Π`, `serreAlgebra.Π_mul`), 1734 (`higher_ramification_formula`), 2548–2561 (`MilnorK.globalResidueHom(V,n)`), 3231 (`K2.relDSRel I`); unbackticked Lean-style names in bullets and Checks at 636 (realSignPairing), 1456 (residueFieldMap, valuationSubringMap), 1498–1502 (tameSymbolHom), 1583 (lambdaHom), 2730–2740 (realSignSymbol, signSymbolAt), 3218–3233 (RelDSGen, relDSRel, relDennisSteinGroup).

**Claim:** A backticked name of this roadmap's own is a claim that `Suggested.lean` declares it, and a Check never names a Lean counterpart. None of these names is declared; the gate's identifier scan misses them because of the trailing argument, the `Π` character or the missing namespace.

**Witness:** `#check @name` over all 27 declarations of `Suggested.lean` (run on a scratch copy) lists none of them; the file's own names are `Steinberg.Root`, `rootWord`, `relators`, `FiniteRank`, `centralExtension_splits`, `steinbergRelations`, `SymbolGroup`, `symbol`, `milnorRel`, `MilnorK`, `MilnorK.ofUnit`, `MilnorK.symbol`, `MilnorK.degree`, the six Milnor theorems, `tameUnit`, the two reciprocity theorems, `K2.DSPair`, `K2.dsRel`, `K2.DennisSteinGroup`, `K2.dennisSteinGroup_equiv_symbolGroup`.

**Repair:** Write these bullets and Checks in prose ("the unit-part map of §9.1 on a nonarchimedean local field", "the total residue homomorphism of §11.4", "the guarded relative relation set of §13.9"), as the repair already did for `transgression_lift`, `classicalHomologyEquiv` and `orderedUpperProduct`. No mathematics changes: the values `unitPart(v,10,5)=1/2`, `Π·Π={−1}Π` over `𝔽₅` and the `(1,1)` D3 defect over `𝔽₃[x,y]/(x²,y²)` are unaffected.

## R02 (P3) — Supplier name drift for StableHomotopyKTheory §3.29

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:64` ("`plusConstruction.pi2Equiv`, `plusConstruction.fiber_universalCentralExtension`"), 325 and 336 ("TauCeti.plusConstruction.pi2Equiv").

**Claim:** The supplier's declarations have different names, and the `TauCeti.` prefix claims a pinned library declaration that does not exist.

**Witness:** StableHomotopyKTheory at its open head, `README.md:1339`, names them `IsPlusConstruction.piTwoEquiv` and `IsPlusConstruction.fiber_universalCentralExtension`; the pinned Tau Ceti has no `plusConstruction` namespace (grep of `TauCeti/` at the pin).

**Repair:** Cite "the plus-construction π₂ equivalence and fibre universal-central-extension theorem of StableHomotopyKTheory §3.29" in prose, or use the supplier's names exactly, and drop the `TauCeti.` prefix. The mathematics (ρ_A as the §3.29 equivalence at G=GL(A), P=E(A)) is unchanged.

## R03 (P3) — Residues of the repair in the text

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:1243` and 1270 ("§AlgebraicKTheory §5.1–0.4"); 3231 ("let `x` be the inner epsilon, `y` the outer epsilon and `I =`."); 1138 ("`(tauceti:TauCeti.UpperTriangularGroup.mem_diagonalTorus_of_mem, …)`"); 2004 ("the Layer 0 valuation class").

**Claim:** The first is a search-and-replace artefact pointing at a section this head deleted; the second is a truncated sentence (the ideal is never named); the third is a leftover link-syntax prefix inside a code span; the fourth means LocalFieldsRamification Layer 0, but "Layer 0" in this README is the finite-word adapter.

**Witness:** No §0.4 exists at this head (Layer 0 has only §0.1, `README.md:80`); the ideal intended at 3231 is `(xy)`, as the next bullet's basis `xy⊗dx, xy⊗dy` shows.

**Repair:** "AlgebraicKTheory §§5.1–5.2" at 1243 and 1270; "and `I = (xy)`" at 3231; "Tau Ceti `TauCeti.UpperTriangularGroup.mem_diagonalTorus_of_mem`" at 1138; "LocalFieldsRamification Layer 0's valuation class" at 2004.

## R04 (P3) — Two locator and wording slips

**Location:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:960` (§6.9, "(Weibel, III.6.1, p. 231.)" for a statement about commuting units of an associative unital ring); `README.md:2934` ("and `2 = −2`, so `⟨2, 2⟩ = ⟨−1, −2⟩`").

**Claim:** Theorem III.6.1 is Matsumoto's theorem for fields; the ring-level skew-symmetry and `{r,−r}=1` for every unit are III.5.10 (p.225) and Remark 5.10.4 (p.226), from which `{a,a}={a,−1}` follows. In the ℤ/4 Check the equality `⟨2,2⟩=⟨−1,−2⟩` follows from the chain displayed before it (`⟨2,2⟩=⟨2,−1⟩=⟨−1,2⟩⁻¹={−1,3}⁻¹={−1,−1}=⟨−1,−2⟩`), not from `2=−2` alone.

**Witness:** `weibel` lines 12983–12984 (skew-symmetry and bilinearity of `{r,s}` for commuting units of a ring), 13018–13023 (`{r,−r}=1` for every unit); line 13294 is the field case.

**Repair:** Cite III.5.10 and Remark 5.10.4 at §6.9 (keep III.6.1 for the field case); replace "and `2 = −2`, so" by "hence, with `3 = −1`,". Values unchanged: `{−1,−1}` is the nontrivial class of `K₂(ℤ/4)`, detected by `λ(3,2)=1`.

## Verified sound

**Extent.** Both files read in full (README 3478 lines, 146 numbered targets and sub-targets; `Suggested.lean` 268 lines). Every previous finding re-checked against the passage (table above). The change set was used to locate the author's work; every passage was reviewed, changed or not. Ownership against open pull requests was checked with the roadmap service and the sibling checkouts named in the brief.

**Build and form.** From the pull-request worktree: `lake build TauCeti.FieldTheory.FunctionField.Divisor.Eval TauCeti.RingTheory.Valuation.Discrete.Order` (2884 jobs, success), then `lake env lean TauCetiRoadmap/K2SymbolsBrauer/Suggested.lean`: ten `declaration uses sorry` warnings (lines 77, 134, 140, 153, 163, 193, 202, 215, 223, 259), nothing else. A scratch copy with `#check @name` for all 27 declarations elaborated; each type was compared with its README statement: `centralExtension_splits` carries `[Ring R]`, `5 ≤ n`, surjectivity and `q.ker ≤ center Y` and concludes `∃!` section; `finiteField_vanishing` carries `[Finite F]` and `2 ≤ n`; `uniqueDivisible_of_isAlgClosed` carries `[IsAlgClosed F]`, `2 ≤ n`, `0 < m`; `real_decomposition` carries `1 ≤ n`; `numberField_realSign_equiv` carries `[NumberField F]` and `3 ≤ n`; `transcendenceDegreeOne_vanishing` carries `[Finite k]`, `[Algebra k F]`, `Algebra.trdeg k F = 1`, `3 ≤ n`; both reciprocity theorems carry `TauCeti.IsFunctionField k F`; `dennisSteinGroup_equiv_symbolGroup` carries `[Field F]`; `Root` and `rootWord` correctly discard the unused `Ring` binder; no standing hypothesis disappeared. One `import Mathlib`, two individual `TauCeti.*` modules that exist at the pin, no sorry'd data, no `set_option`, no admitted `example`, one module docstring, `theorem` throughout.

**Padding probe.** Each of the ten sorried theorems was tried on a scratch copy with `first | simp | rfl | infer_instance | …`; none closed (six fell through to `sorry`, four left an unsolved residual goal after `simp` made progress). Every definition is used by a stated headline: the Steinberg presentation by §3.2, the symbol and Milnor carriers by §§5.12, 5.14, 5.15, 10.32, 10.33 and 13.4, `tameUnit` by §10.30, the Dennis–Stein carriers by §13.4. No declaration restates a definition, mirrors a Check or computes a value.

**Gate.** The worker's gate at this head:

```text
gate K2SymbolsBrauer: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

`git diff --stat origin/main...HEAD` outside the roadmap folder is empty. The folder contains `README.md`, `Suggested.lean` and `metadata.toml` only.

**Dependency check.** Run with `--movable` against the merge order and the content main:

```text
depcheck: 205 roadmaps, 1485 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. K2SymbolsBrauer sits at position 36, after AlgebraicKTheory (11), StableHomotopyKTheory (12), GeneralAlgebraicKTheory (13), SchemeKTheoryOperations (33) and KTheoryLowDegrees (35). Every `*Needs:*` line was read; the Layer 13 internal fragment links resolve to the `####` headings of the same layer. No declared gap exists (no readable `design/plan.json`), and no `What <Supplier> must provide` line is written.

**Headline inventory.** End theorems named by the README: the calibrated `K₂≃H₂≃π₂` comparisons and product sign (§§1–4, 8); finite-rank central-extension splitting (§3.2); Milnor calculations for finite, algebraically closed and real fields (§§5.12, 5.14, 5.15); the native Matsumoto dictionary (§7.2); higher residues, Bass–Tate sequence, Kato norms, the integral norm–residue square and Weil–Suslin reciprocity (§§9.11, 10.5, 10.24, 10.26, 10.29–10.31); number-field and function-field Bass–Tate calculations (§§10.32, 10.33); the local/global function-field symbol comparisons (§§10.32a–b); localisation comparison (§11); `K₂(ℤ)`, `K₂(ℚ)` (§§12.10–12.11); absolute, local and relative Dennis–Stein presentations and the dual-number and dyadic computations (§13). Stated at the pins: §3.2, §5.12, §5.14, §5.15 (two statements), §10.30, §10.31, §10.32, §10.33, §13.4 (field case). Not statable and named in the docstring: everything on stable Steinberg, classical or Quillen K-groups, higher residue and norm maps, cyclic-algebra symbol maps and the normalised universe Brauer comparison. No statable headline is absent: §6.17 would need the finite Steinberg-to-SL map, a `PresentedGroup.toGroup` whose relation proofs are themselves targets, not a simple definition.

**Pinned library audit** (Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`, the manifest's pins). All 60 Tau Ceti names and 43 Mathlib names cited in the supplier contracts and Needs lines were grepped at the pin; every one resolves to a declaration (`TauCeti.transvectionUnit` at `LinearAlgebra/Matrix/GeneralLinearGroup/Transvection.lean:144`, `diagGL` `Diagonal/Basic.lean:100`, `permutationGL` `Diagonal/Normalizer.lean:67`, `upperUnitriangularGroup` `UpperUnitriangular/Basic.lean:107` with `ext` at 153, `mem_diagonalTorus_of_mem` `Diagonal/Bruhat.lean:153`, `Matrix.SpecialLinearGroup.diag2nUnit_decompose` `SpecialLinearGroup/Diagonal/Basic.lean:100`, `FactorSet` `GroupExtension/Of/FactorSet.lean:92`, `Valuation.ord` `Valuation/Discrete/Order.lean:32` with `ord_mul` 61, `ord_zpow` 83, `exists_eq_zpow_mul_unit_of_surjective` 260, `HenselianRing.exists_pow_eq_and_sub_one_mem_of_sub_one_mem` `Henselian/Basic.lean:111`, `Place` `FunctionField/Place/Basic.lean:100` (valuation surjective, trivial on `k`; `ord` at 142 is `Valuation.ord`), `normResidue` `Place/Residue.lean:140`, `normResidueOrOne` 153, `Divisor.eval_eq_prod_normResidue` `Divisor/Eval.lean:192`, `isUnitAtSupport_iff_disjoint` 310, `degree_principal` `Divisor/ProductFormula.lean:258`, `finite_setOf_ord_ne_zero` `Place/Zeros.lean:461`, `sum_ramificationIdx_mul_relativeDegree_eq_finrank_of_isSeparable` `Place/Extension/Fundamental.lean:97`, `unitsEquivIntProd` `LocalField/UnitsDecomposition.lean:114`, `residueFieldEquivMaximalIdealGradedOfUniformizer` `DiscreteValuationRing/Uniformizer.lean:187`, `brauerCohomologyEquiv` `CrossedProduct/Comparison.lean:267` with evaluation 287/295 and uniqueness 314, `unitsRepH2Equiv` `ClassFieldTheory/Brauer/Basic.lean:156`, `BrauerGroup.instCommGroup` `BrauerGroup/Group.lean:174`; Mathlib `TensorPower.mulEquiv` `TensorPower/Basic.lean:75`, `PiTensorProduct.isEmptyEquiv` `PiTensorProduct/Basic.lean:777`, `ShortComplex` `δ` `SnakeLemma.lean:278`, `AlgebraicGeometry.Scheme.ord` `OrderOfVanishing.lean:52`, `rTensor_exact` `RightExactness.lean:397`, `Matrix.diag2_decompose` `SpecialLinearGroup.lean:777`, `TrivSqZeroExt.kerIdeal_sq` `TrivSqZeroExt/Ideal.lean:38`, `KaehlerDifferential.D` `Kaehler/Basic.lean:226`, `Algebra.trdeg` used by the elaborated signature). The pinned Mathlib and Tau Ceti have no Milnor K-group, Steinberg group, Dennis–Stein group or tame symbol (the only hits are Tau Ceti's quaternion Steinberg-relation splitting `Algebra/Quaternion/Steinberg.lean` and tame inertia characters, unrelated objects); the roadmap service finds no other open roadmap's `Suggested.lean` declaring `MilnorK`, `SymbolGroup`, `DennisSteinGroup`, `tameUnit`, `FiniteRank` or `steinbergRelations`, nor any Lean mention of Milnor, Steinberg or Dennis–Stein outside this folder.

**Supplier resolution** (every citation resolved at the open head or on main, this round):

| Citation | Resolved at |
|---|---|
| AlgebraicKTheory §§1.1–1.4, 2.1–2.3, 3.1, 5.1–5.2 | `README.md:202`–250, 274–305, 331, 493–522 at #1142; §5.1 states finite/stable `St`, root projections, universality; §5.2 states Matsumoto's presentation and `K₂(𝔽_q)=0` |
| StableHomotopyKTheory §§1.30, 1.32, 2.4–2.10, 3.12, 3.15, 3.26–3.33, 4.14 | `README.md:463`, 492, 573–665, 1131, 1172, 1305–1390, 1648 at #1227 (names: R02) |
| GeneralAlgebraicKTheory §§1.8, 3.2, 3.12–3.14, 4.6, 4.8, 4.14, 7.2–7.4, 7.7–7.8, 8.1, 8.11–8.13, 10.12, Layers 3, 4, 7, 8 | `README.md:227`, 419, 616–646, 772, 800, 890, 1459–1479, 1539, 1555, 1575, 1755–1784, 2309 at #1212; §8.13 states `∂(x·y)=∂x·y` and `δ_n=(−1)^{n−1}∂_n`, §8.12 `∂[π]=1` |
| KTheoryLowDegrees §§6.1–6.2, 8.1, 9.1, 13.1–13.5, Layers 6, 9, 10, 11, 13 | `README.md:690`, 709, 837, 936, 1023, 1211, 1559–1681 at #1248; §13.2 aliases AlgebraicKTheory A5's carriers; Layers 10–11 own `SK₁` of S-integers |
| SchemeKTheoryOperations §3.6 | `README.md:1018` at #1229; its Downstream names K2SymbolsBrauer for the explicit symbol comparison |
| QuadraticFormInvariants stages 1–2 and Layer 7B milestone 3 | main `README.md:766`–826, 2554–2571 |
| ClassicalArithmeticCompletion §1.1, §1.14 | main `README.md:346`, 713–727 (`normResidueSymbol`, Steinberg, skew-symmetry, norm criterion) |
| ClassFieldTheory Layers 5–6, 10–14 (`Br`, `invMap`, `brRes`, `brCor`, `localSymbol`, `hilbertProductFormula`) | main `README.md:920`, 1220, 1552–1872, 584–591 |
| AlgebraicCurves Layers 2, 12 (12A, 12B, 12D) | main `README.md:513`, 1471–1641 |
| EllipticCurves Layer 0, Layer 2 Weil reciprocity milestone | main `README.md:335` onward, 669 |
| LocalFieldsRamification Layers 0, 1, 3 | Completed `README.md:72`, 281, 724 |
| ReductiveGroups Layer 7 (Bruhat); RepresentationTheory/RootSystems Layer 3 | main `README.md:630`; `RepresentationTheory/RootSystems/README.md:274` |
| AlgebraicTopology Stages 5, 8; GeneralizedCohomology G2.10 | main `README.md:849`, 1602; `README.md:405`, 533 |
| Consumers K3BlochGroups, RefinedTraceMethods, MotivicEtaleKTheory, K2SymbolsBrauerPartII, ArithmeticKTheory, EllipticKTheory, KTheoryFiniteLocalFields | all open pull requests (#1430, #1493, #1470, #1432, #1418, #1489, #1281); none is cited as a supplier |

Observation for the author, outside this folder: K2SymbolsBrauerPartII at its head (`README.md:8`, 63) still cites "the classical field presentation constructed in K2SymbolsBrauer §0.4", a section this head deleted in favour of AlgebraicKTheory §5.2; the other six consumers cite no removed section. That is the consumer's citation to update, not a defect here.

**Seeded source verification.** Texts read in the sources cache this round: `weibel` (the K-book, printed page = cache page − 8), `matsumoto-1969`, `van-der-kallen-1977`, `vdk-maazen-stienstra-1975`, `stacks-09EM`, `loday-1976`. No passage was copied.

| Target | Locator and lines inspected | Assessment |
|---|---|---|
| 5.7 | Weibel Def. III.7.1, p.245, `weibel` lines 14127–14142; Thm III.6.1, p.231, lines 13284–13290 | Degree two of the tensor-algebra quotient is `F×⊗F×` modulo `x⊗(1−x)`, exactly `P₂(F)`; the stated symbol-preserving equivalence is supported |
| 5.12 | Weibel Ex. III.7.2(a), p.245, lines 14147–14148 | `K^M_n(𝔽_q)=0` for `n≥2` via `K^M_2=0`; hypotheses match the Lean `[Finite F]`, `2 ≤ n` |
| 6.9 | Weibel III.5.10, p.225, lines 12983–12984; Remark 5.10.4, p.226, lines 13018–13023; III.6.1, p.231, line 13294 | Skew-symmetry and `{r,−r}=1` hold for commuting units of any ring, hence `{a,a}={a,−1}`; the cited page is the field case (R04) |
| 6.18 | Weibel Thm III.5.10.5, p.226, lines 13029–13030 | Symbol generation for fields, division rings, local and semilocal rings with no residue bound, as stated; the Dennis–Stein proof route is not readable (below) |
| 8.3 | Weibel Ex. IV.1.10.1, p.266, lines 15444–15453; Loday Prop. 2.2.3, p.337, `loday-1976` lines 1092–1095 and 1131 | The K-book gives the graded map `K^M_*→K_*` from the universal property; Loday proves the product agrees with Milnor's symbol up to sign and computes the inverse commutator; the roadmap's `ε=−1` is its own calibration, consistent with the §1.1 bar convention (table row 8.1) |
| 9.14 | Weibel Ex. III.7.10, p.258, lines 14947–14950 | Printed formula `∂(xy)=λ(x)∂(y)+(−1)^j∂(x)ρ(y)`, `ρ(l(uπ^i))=l((−1)^iū)`; it holds for the parameter-last residue and fails for the source's own Thm 7.3 residue (table row 9.14; Source issues) |
| 10.3 | Weibel Lemma III.7.4.1, p.247, lines 14273–14282 | `h_π` sends `{ā₂,…,āₙ}` to the class of `{π,a₂,…,aₙ}` with `π` first; the roadmap's `π`-last version differs by `(−1)^{n−1}`, matching its residue sign |
| 10.9 | Weibel Cor. III.7.5.3, p.248, lines 14334–14336 | Composite is multiplication by `d`, kernel killed by `d`; exact match |
| 10.18 | Stacks Remark 15.116.1 (09EM), `stacks-09EM` lines 15844–15871 | Supplies the normalisation `B₁` of `B⊗_A A₁` as a product of DVRs with surjective spectra, the input the componentwise lattice argument uses; the length identities are the roadmap's own argument (table row 10.18) |
| 10.20 | Weibel Cor. III.7.6.3, p.249, lines 14375–14395 | Complete `F`, `E/F` normal of prime degree (the standing hypothesis of Lemma 7.6.2, lines 14356–14358); the proof reduces to one-outside-entry symbols by Ex. 7.6–7.8; Gille–Szamuely 7.3.9 not readable |
| 10.30 | Weibel V.6.12 and 6.12.1, p.416, `weibel` lines 25026–25062; III.6.5.3, p.236, lines 13597–13614 | Reciprocity over closed points of a projective curve with residue-field transfers; the degree-two formula with `(a,t−b)_∞=a` and `∂_{t−b}(a,t−b)=a⁻¹` in the K-book normalisation, as the roadmap records |
| 11.2 | Weibel Loc. Thm III.6.5, p.236, lines 13559–13574; V.6.6.1, p.409, lines 24557–24571 | Dedekind sequence with residue-field transfers; the boundary is `K_*(R)`-linear with `∂{π,u}=[ū]`, the K-book tame symbol, inverse of the roadmap's |
| 13.4 | Weibel Thm III.5.11.1(a), p.226, lines 13059–13062; vdK–Maazen–Stienstra Thm 1, §2.4, p.935, `vdk-maazen-stienstra-1975` lines 49–50 | Local rings and fields are presented by D1–D3; Theorem 1 gives `D(R)≅K₂(n,R)` for `3≤n≤∞` and local or 3-fold stable `R` (in the older `1+ab` convention, lines 21–27) |
| 13.5 | van der Kallen 1977 §5.2, p.488, `van-der-kallen-1977` lines 628–642; Thm 5.3, p.489, lines 655–659; §5.4(3),(6), lines 663–684; Thm 6.2, line 941; Thm 7.1, line 1319; Remark 8.7, p.512, lines 1522–1528 | Threefold stability, `D(R)` in the `1+ab` convention, the rank-two caveat (6), the semilocal residue criterion (3), and the `{27,13}=⟨2,13⟩=⟨2,1⟩³` remark used in §13.6 all match |
| 13.15 | Weibel Ex. III.5.13, p.229, lines 13232–13235 | `K₂(ℤ/2ⁿ)≅K₂(ℤ/4)≅{±1}` on `{−1,−1}=⟨−1,−2⟩=⟨2,2⟩` for `n≥2`; the Witt-vector attribution (Dennis–Stein survey §12) not readable |

Also read: Weibel Prop. III.5.5.1, p.220, lines 12639–12668 (every central extension of `St_n(R)` splits for `n≥5`, the §3.2 headline); Thm III.7.3, p.246, lines 14197–14228 (Serre's algebra, `d(uπ^i)=l(ū)+iΠ`, `∂{π,u₂,…}` with `π` first); Lemma III.6.3, p.234, lines 13461–13483 (K-book tame symbol `(−1)^{v(r)v(s)}(s^{v(r)}/r^{v(s)})‾`, `∂(π,u)=ū`); Ex. III.7.1–7.8, p.257, lines 14863–14917 (Ex. 7.1 claims `λ` independent of `π`; Ex. 7.3(a) `n≥2`; Ex. 7.7 with `F′` finite; Ex. 7.8 with `E` finite, both extended here by the stated elementary proofs); Ex. III.5.8–5.9, p.229, lines 13202–13209; Ex. III.6.2, p.243, lines 14027–14032; Matsumoto Lemma 5.4(c), p.26, `matsumoto-1969` lines 1018–1023 (`[h_α(s),h_β(t)]=c_α(s,t^{⟨β,α*⟩})` with `c_α(s,t)=h_α(s)h_α(t)h_α(st)⁻¹`, line 1003), which fixes §6.6's `{r,s}=h_ij(r)h_ij(s)h_ij(rs)⁻¹` at Cartan pairing `+1`.

**Computed adversarial table.** Residues are parameter-last (the roadmap's convention) unless a row says K-book; additive zero in a unit group means 1. One row per numbered target; the `#` sub-targets of §§10.25, 13.4, 13.6, 13.7–13.9 and 13.13 are folded into their sections' rows.

| Statement | Instances tried | Values on one side | Values on the other side | Result |
|---|---|---|---|---|
| 0.1 | zero ring; `R=M₂(ℤ)`, `a=E₁₂`, `b=E₂₁`; `n=2` over ℤ | `x_ij(0)²=x_ij(0)` so generators 1; forward `ab=E₁₁`; `[e₁₂(1),e₂₁(1)]` | trivial group; reverse `−ba=−E₂₂`; matrix `[[3,−1],[1,0]]≠1` | agrees; fourth relation is the inverse of the third at indices `(k,i,j)`, so no opposite-root relation is added |
| 1.1 | Heisenberg group over 𝔽₃, `a=(1,0,0)`, `b=(0,1,0)` | `[a,b]=(0,0,1)` | `ba(ab)⁻¹=(0,0,2)`; lifted boundary of `[s|t]−[t|s]` is `[ts]−[st]`, class `ts(st)⁻¹=[s,t]⁻¹` | agrees; the opposite sign gives 1 |
| 2.1 | `M₂(ℤ)`, `t=3`, `c=E₁₂`, `v₂=E₂₁` (column); `v₁=E₂₁` (row) | `[x_ab(c),x_bt(v_b)]=x_at(cv_b)`, increment `E₁₁` | `[x_ab(c),x_ta(v_a)]=x_tb(−v_a c)`, increment `−E₂₂` | agrees; `ab` and `ba` distinguished |
| 2.2 | zero ring; `x₁₂(1)` over ℤ | centre trivial; `e₁₂(1)≠1` | `K₂(0)=0`; root not central | agrees |
| 2.3 | `k∈ker φ_n`, `g∈St_n` | `φ_n[k,g]=1`, stable image `[k̄,ḡ]=1` (K₂ central) | injectivity on the kernel gives `[k,g]=1` | agrees; without injectivity nothing follows |
| 3.1 | `q=id`; `a=0`; `M₂(ℤ)` lifts of `x₀₂(E₁₂),x₂₁(E₂₁)` | `y_ij(a)=x_ij(a)`; `y_ij(0)=1` | commutator `y₀₁(E₁₁)`, not `y₀₁(E₂₂)` | agrees |
| 3.2 | zero ring, `n≥5`; two sections `σ,σ′` | `St_n(0)=1`, unique `σ:1→Y`; `σσ′⁻¹` is a hom into the central kernel | perfectness of `St_n` (`n≥3`) kills it | agrees with Weibel 5.5.1; `∃!` justified |
| 3.3 | zero ring; torus class of §1.1 | `α` unique between zero groups | inverse commutator of lifts | agrees |
| 4.1 | `R=0`; `R=𝔽₃` | `K₂=0`, `π₂=0` | Hurewicz on the simply connected `BE⁺` | agrees |
| 4.2 | template `C=H=π₂=ℤ`, `κ=ρ=id` | `χ(1)=ρ⁻¹κ(1)=1` | negated `χ` gives −1 | agrees; the normalisation excludes `−χ` |
| 4.3 | `f=id`; `ℤ→ℤ/2` | identity squares | `K₂(𝔽₂)=0`, square commutes trivially | agrees; no injectivity hypothesis |
| 4.4 | `u≃id` under `BGL(A)` | `u_*χ=χ` | abstract isomorphism not allowed | agrees |
| 4.5 | zero ring; `ℤ→ℤ/2` | `π₂K_Q(0)=0` | image of the order-two class is 0 | agrees; flatness not needed |
| 5.1 | zero pairing; constant 1 into ℤ; real sign to ℤ/2 | `0`; `1≠1+1`; `c(−1,−1)=1` | bilinearity; `c(2,−1)=0`, `c(−1,1)=0` | zero allowed, constant rejected, sign pairing passes |
| 5.2 | 𝔽₂; ℚ `(1/2,1/2)`; ℝ `(−1,−1)` | `P₂(𝔽₂)=0`; `p=0`; nonzero | trivial units; `1/2+1/2=1`; sign map value 1 | agrees |
| 5.3 | `a=1`; ℝ `a=−1`; char 2 | `c(1,−1)=0`; `c(−1,−1)` may be nonzero; `c(a,a)=c(a,−1)=c(a,1)=0` | `c(a,−a)=0` from `−a=(1−a)/(1−a⁻¹)` when `a≠1` | agrees; `a=1` handled by normalisation |
| 5.4 | 𝔽₂ degrees 0,1,2 | `ℤ,0,0` | tensor grading; `{1}=0` | agrees |
| 5.5 | relation `a⊗b` times degree-one `r,s` | degree 4 relation; `J∩T₀=J∩T₁=0` | ideal generated in degree 2 is homogeneous | agrees |
| 5.6 | 𝔽₂ constant 7; ℝ `{−1}²` | `7≠0` in degree 0; `{−1,−1}≠0` | sign map to `(ℤ/2)[t]` gives `t²` | agrees; not exterior |
| 5.7 | ℚ `{1/2,1/2}`; ℝ `{−1,−1}` | `0`; sign 1 | tensor-square quotient values `0`; sign 1 | agrees; both maps fixed on symbols |
| 5.8 | `ℚ→ℝ`; `id_{𝔽₂}` | `p(−1,−1)↦p(−1,−1)`, sign 1 | identity on degree-0 ℤ | agrees; order preserved |
| 5.9 | `(−1,−1),(2,−1),(−1,2)` | `1,0,0` | `−1+2=1` forces 0 at the last | agrees |
| 5.10 | `ℂ(t)`, `{t,t}`; ℝ `{−1,−1,−1}` | `{t,t}={t,−1}`, residue at `t` is `−1≠1` | `t³` under the sign map | agrees; `i∈F` does not kill it |
| 5.11 | 𝔽₃ `a=b=−1`; 𝔽₅ generator 2 | `−1+(−1)=1`, exponents (1,1) odd; `3=2³`, `1−3=3` | `c(g,g)=0`, pairing zero | agrees |
| 5.12 | 𝔽₃, `n=0,1,2,3` | `ℤ,C₂,0,0` | degrees ≥2 generated by degree 2 | agrees; Lean `2 ≤ n` |
| 5.13 | `U=V=ℚ/ℤ`, `p` any; `ℚ/ℤ` with subgroup ℤ | `U⊗V=0`, bijective; `ker(p)=` image of `U[p]⊗V=U[p]⊗V/pV=0` | `ℤ` not `p`-divisible, `ℚ/ℤ` has `p`-torsion | agrees; negative control works |
| 5.14 | `ℂ` degree 1, `m=2`; `n≥2` | `(−1)²=1`, not injective in degree 1 | uniquely divisible in degree ≥2 (Weibel Ex. 7.3(a)) | agrees; `2 ≤ n` essential |
| 5.15 | ℝ `n=1`; all-negative symbol `{−a₁,…,−aₙ}` | `D₁=ℝ_{>0}` divisible, `e₁=[−1]` order 2 | `=e_n+` terms with a positive entry; sign map 1 on `e_n`, 0 on `D_n`, so `e_n∉D_n` | agrees; `e(d)=(0,d)`, `e(e_n)=(1,0)` consistent; `K/2≅𝔽₂[ε]` since each `K_n/2=ℤ/2` |
| 6.1 | `A⋆A`; `e₀₁(1),e₁₂(1)` over ℤ | `[a,a]=1`; commutator lifts `e₀₂(1)≠1` | not a `K₂` input | agrees |
| 6.2 | `w₀₁(1), w₀₁(−1)`, `w₁₂(2)` over ℚ | blocks `[[0,1],[−1,0]]`, `[[0,−1],[1,0]]`, `(0,2;−1/2,0)` | three transvections multiply to these | agrees |
| 6.3 | `h₀₁(2)`, `h₁₂(2)` | `diag(2,1/2,1)`, `diag(1,2,1/2)` | `w(2)w(−1)` | agrees |
| 6.4 | `{1,u}`; ℤ `{−1,−1}` | `1`; nonzero in `K₂(ℤ)` | commutator of overlapping diagonals | agrees |
| 6.5 | `w_ab(u)` on `x_ab(λ)`, `x_ba(λ)` | `x_ba(−u⁻²λ)`, `x_ab(−u²λ)` | Weibel Ex. 5.8(c),(d) with commutative `r⁻¹sr⁻¹=u⁻²s` | agrees; `h_ij(−1)` image `diag(−1,−1)≠1` over ℚ |
| 6.6 | `α=e_i−e_j`, `β=e_i−e_k` | `⟨β,α*⟩=+1` | Matsumoto 5.4(c): `[h_ij(r),h_ik(s)]=h_ij(r)h_ij(s)h_ij(rs)⁻¹` | agrees; Weibel Ex. 5.9's printed order gives the inverse (Source issues) |
| 6.7 | ℚ at 5, `r=1/5`, `1−r=4/5` | `(−1)^1·res(5·4/5)=−4=1` | Steinberg class 1 | agrees; unsigned gives 4 |
| 6.8 | ℤ `r=−1`; `r=1` | `{−1,1}=1`; `{1,−1}=1` | `1−r=2` not a unit, still fine | agrees |
| 6.9 | ℝ `r=−1`; 𝔽₄ | `{−1,−1}≠1`; `{a,a}={a,1}=1` | `{a,a}={a,−1}` of order ≤2 | agrees |
| 6.10 | ℤ `w₁₂(1)`; 𝔽₂; 𝔽₅ `h₁₂(2)`; 𝔽₃ | square `diag(−1,−1,1)`, fourth power 1; permutation matrices (6); `diag(2,3,1)`; 24 | `3!·2²/2·…`: `6·8/2=24` monomial det-1 matrices | agrees |
| 6.11 | 𝔽₅ `w₁₂(2)` on `x₂₁(1)`, `x₂₃(1)` | `x₁₂(−4)=x₁₂(1)`, `x₁₃(2)` | rows 7 and 3 of the table | agrees; `u⁻¹` would give 3 |
| 6.12 | ℤ `{−1,−1}₃`; `[h₁₂(−1),h₁₂(−1)]` | `h₁₃(1)h₁₃(−1)⁻²=h₁₃(−1)⁻²=w₁₂(1)⁴` (since `w₁₂(1)²=h₁₂(−1)⁻¹`) | `1`, whereas `{−1,−1}₃≠1` | agrees; repeated-index commutator rejected |
| 6.13 | ℤ; 𝔽_q; zero ring | `C_n(ℤ)⊆{1,w₁₂(1)⁴}`; `C_n(𝔽_q)=1` | units `{±1}`; cyclic annihilator | agrees |
| 6.14 | ℤ `x₁₂(1)x₁₃(0)x₂₃(1)`; `[x₁₂(1),x₂₃(1)]` | `(1,3)` entry 1 | `x₁₃(1)≠1` | agrees |
| 6.15 | `SL₃(𝔽₂)` | 168 | `8·(1+2+2+4+4+8)=168` | agrees |
| 6.16 | `SL₃(𝔽₂)`, `SL₃(𝔽₃)`; ℝ | 168, `26·24·18/2=5616`, kernel 1 | `{−1,−1}₃≠1` over ℝ | agrees |
| 6.17 | 𝔽₂, 𝔽₃ at `n=3`; ℝ defect `h(−1)²h(1)⁻¹` | quotient orders 168, 5616 | defect is `{−1,−1}₃`, nonzero before, 1 after the quotient | agrees |
| 6.18 | 𝔽₂; ℝ; ℤ/4 | `0`; `{−1,−1}`; `{3,3}` generates | Weibel 5.10.5 | agrees; no general-ring claim |
| 7.1 | ℚ `{1/2,1/2}`; ℝ `{−1,−1}` | `0`; sign 1 | `[h₁₂,h₁₃]` ordered | agrees |
| 7.2 | `{a,b}↦{a,b}↦{a,b}`; 𝔽₂ | identities; zero groups | inverse interchanging entries would invert | agrees |
| 7.3 | `id`; composite | squares commute | not injectivity | agrees |
| 7.4 | `lead(t/(t−1))=1`, `lead(1−t/(t−1))=lead(−1/(t−1))=−1` | `{1,−1}=0` | constants fixed | agrees |
| 7.5 | `ℝ→ℂ` on `{−1,−1}` | dies in ℂ | `[ℂ:ℝ]=2` kills it (5.6.3) | agrees |
| 8.1 | `ℚ(t)`, `θ₁[2]·θ₁[t]` | raw `θ₂⁻¹` gives `{2,t}⁻¹`, residue `1/2` | `θ₂♮` gives `{2,t}`, residue 2; `ε=−1` from `[s,t]⁻¹` in row 1.1 | agrees; finite fields and ℝ cannot calibrate |
| 8.2 | ℚ degrees 0, 1, 3 | `1↦[ℚ]`; `2↦[2]`; `ℤ/2→ℤ/48` injective | `2·24=0`, not onto | agrees |
| 8.3 | `ℚ(t)` `{2,t}` | residue of `(θ₂♮)⁻¹Φ₂{2,t}` is 2 | reversed gives `1/2` | agrees |
| 8.4 | 𝔽₃ degree 3; ℚ | source 0; `ℤ/2↦24` | injectivity downstream | agrees |
| 9.1 | ℚ at 5: `2,10,2/5` with `t=5`; `t=10` on 5; `t^{−2}` | unit parts `2,2,2`; `1/2`; `1` | absolute-value exponent would give `t^{−4}` | agrees |
| 9.2 | ℚ at 5: `(2,5),(5,2),(5,5),(10,5)` | `2, 2⁻¹=3, −1=4, −2=3` | K-book values inverse: `3,2,4,2` | agrees; `∂(a,t−b)=a` vs K-book `a⁻¹` |
| 9.3 | `(10,5)` with `t=5` and `t=10` | `3` both | uniformiser-free formula | agrees |
| 9.4 | `(1/5,4/5)`; `(2,−1)` | `1`; `1` | unsigned gives 4 | agrees |
| 9.5 | `{5,2},{2,5},{2,3}` at 5 | `3,2,1` | 2 generates `𝔽₅ˣ` | agrees; onto |
| 9.6 | constant 1; K-book pairing; unsigned | fail `c(2,5)=2`; gives 3; Steinberg fails at `(1/5,4/5)` | only the signed normalised pairing passes | agrees |
| 9.7 | `ℚ⊂ℚ(√5)`, `e=2`; `ℚ(i)` at 5, `e=1` | `(−1)²=1`, `2²=4`; `2,2` | `e²≡e` mod 2 | agrees |
| 9.8 | `T₅(2,5),T₅(5,2),T₅(5,5),T₅(10,5)` | `2,3,4,3` | same as row 9.2 | agrees |
| 9.9 | 𝔽₅: `Π·Π`, `Π·{2}`; 𝔽₂ | `{4}Π`, `{3}Π`; `Π·Π=0` | product formula with `(−1)^{|c|}`, `(−1)^{|d|}` | agrees |
| 9.10 | `d(5)d(−5)` over 𝔽₅ with `Π²={−1}Π` vs `Π²=0` | `Π({4}+Π)={4}Π+{4}Π=0` | with `Π²=0`: `{4}Π≠0` | agrees |
| 9.11 | ℚ at 5 `{50}`; `{5,2}`, `{2,5}`; `ℚ(t)` `{t,5,2}`, `{5,t,2}` | `∂=2∈ℤ`, `λ=2`; `3,2`; `{5,2}`, `−{5,2}` | Weibel's residue `(−1)^{n−1}` times these | agrees |
| 9.12 | degree 1 | `ker=U¹` | `{ū}+ord·Π=0` iff `ord=0`, `ū=1` | agrees |
| 9.13 | `{2,5}`, `{2,−1}` | support `{5}`; empty | union of entry supports `{2,5}`, `{2}` | agrees; containment strict |
| 9.14 | `x={5},y={2}`; swapped | `0−{2}=3`; `{2}=2` | rows 9.2/9.5 | agrees; K-book residue would need `(−1)^i` on the first term |
| 9.15 | `t=5`, `t′=10`, `c=2` | `λ₁₀{5}=−{2}=3`, `λ₅{5}=1` | `∂{5}=1` both | agrees; Weibel Ex. 7.1 wrong on `λ` |
| 9.16 | degree 3 `{u₁,u₂,π}`; degree 2 `{2,5}` | both residues `{ū₁,ū₂}`; `2` vs `3` | `(−1)^{n−1}` | agrees |
| 9.17 | `ℚ_p`, `n=1`, `q=p` odd | `ℚ_pˣ/p≅(ℤ/p)²` | `𝔽_pˣ/p⊕ℤ/p≅ℤ/p` | agrees; `q` prime to `p` needed |
| 9.18 | completion `e=1`; `F(t)→F(u)(t)` at `t−u` | `∂∘res=∂`; trivial restriction, residue 0 | `e·res∘∂` | agrees |
| 10.1 | `ℚ(t)` `{t}` with `t⁻¹` vs `2t⁻¹` | `lead=1` | `2` | agrees; uniformiser is data |
| 10.2 | `e₁=t`, `e₂=t−2`, `h=2` | residue of `{t,t−2}` at `t−2` is 2 | `{2,t−2}−{2,t}+{t,−1}` residue `2−0+0` | agrees; derived from `{h/e₁,e₂/e₁}=0` |
| 10.3 | `n=1`; `d=1` | `h_π(1)={π}`, `∂_π{π}=1` | `{c,…,t−b}` | agrees |
| 10.4 | `n=1` | monic irreducibles of degree `d` form a basis | `∂_π` kills `L_{d−1}` | agrees |
| 10.5 | degree 1; `{2,t}` over ℚ with ∞ added | `0→ℚˣ→ℚ(t)ˣ→⊕ℤ→0`; residues `2` at `t`, `1/2` at ∞ | ∞ would break surjectivity | agrees |
| 10.6 | `y=π`; `a∈F`; `ℚ(i)`, `1+i` | `N(1)=d` since `∂_∞(π)=−d`; `N=id`; `N(1+i)=2` | `+∂_∞` would give `−d` | agrees |
| 10.7 | `ℚ(∛2)`, `y={t,1−t³/2}` | `∂_π=∛2`, `∂_t=0`, `∂_∞=−res((1−t³/2)/t³)=1/2`, so `N=2` | Weil formula with `∂_t{t,π}=(−2)⁻¹`, `∂_∞=−1` gives `N=2` | agrees; sign needed |
| 10.8 | `y=1`; degree 1 | `N(res x)=dx`; `x^d` | projection formula | agrees |
| 10.9 | degrees 0, 1 | `d`; `x↦x^d` | Weibel 7.5.3 | agrees |
| 10.10 | `{a,t−b}`; `{2,t}`; degree 1 | ∞ factor `a`, `t−b` factor `a⁻¹`; `1/2`·`2=1`; `Σ deg·ord=0` | finite places alone fail | agrees |
| 10.11 | ℝ, `p` odd | `F′=ℂ`, `{−1,−1}` dies, killed by 2 | prime to `p` | agrees |
| 10.12 | degree 0; `F′=ℚ(u)`, `π=t²−2` | `deg π=Σe_i deg π_i`; irreducible stays | extra place `t−u` has zero residue on classes from `F` | agrees; extension beyond Weibel's finite `F′` by the `e=1` residue comparison |
| 10.13 | `ℝ⊂ℂ`; ℚ `1+∛2+∛4` | generated by `{r,z}`; quadratic in `∛2` not split | hypothesis needed | agrees |
| 10.14 | degrees 0, 1 | `p`; field norm | base case | agrees |
| 10.15 | `t=s²`; `𝔽₂(a)((t))(α)`, `α²+tα+a` | `e=2`; derivative `t≠0` separable, `e=1`, residue `k(√a)` | separable residue would be wrong | agrees |
| 10.16 | same two; `ℚ(i)((t))` | rank `2=2·1`; `1·2`; `1·2` | `R[α]` free on `1,α`, max ideal `(t)` | agrees |
| 10.17 | `N(s)=−t`, `N(2)=4`; `N(α)=a`, `N(t)=t²` | `ord=1=f·1`; residue `2²`; `f=2` | `e,f` not interchanged | agrees |
| 10.18 | `E=ℚ((s))`, `F′=E`; `F′=ℚ((u))`, `u²=2t`; `𝔽₂(a)` case | `1+1=2=e·1`; `1·2=2=e·1`; `1+1=2=1·2` | `r t_j`: `2`, `2`, `2` | agrees; compositum or reduced factors would give 1 |
| 10.19 | `e=1,f=p`; `e=p,f=1` Eisenstein | `c=N(v̄)⁻¹`; `res(a₀/π_F)=−v̄⁻¹`, `c=(−1)^{p+1}v̄⁻¹` | formula `(−1)^{p−f}N(v̄)⁻¹` | agrees |
| 10.20 | degree 1; unramified `n=2`; non-complete | `v(N y)=f·w(y)`; norm of tame = tame of norm; several places | completeness used | agrees |
| 10.21 | `v=∞`; split/inert | `∂_∞∘N=N∘∂_∞`; `p` degree-one terms / one degree-`p` term | Weibel Ex. 7.9 | agrees |
| 10.22 | `a∈F`; degree 0 | `N_{E/F}`; `[E′:F]` | both sides | agrees |
| 10.23 | separable cubic; purely inseparable `p^a` | normal closure needed; one embedding, multiplicity `p^a` | `E⊗_F M` length | agrees |
| 10.24 | degree 1; simple `E=F(a)` | `Algebra.norm_norm`; `N_{E/F}=N_{a/F}` for every generator | Kato | agrees |
| 10.25 | `E=𝔽_p(s^{1/p},t^{1/p})`, `F′=E` | `E[ε,η]/(ε^p,η^p)`, length `p²`, index `2p−1` | degree-0 identity needs coefficient `p²` (`4` at `p=2`) | agrees; filtered-colimit sub-target: finite symbols/relations descend |
| 10.26 | `E=F`; `n=1` `ℚ((s))/ℚ((t))`; `ℚ(i)((t))`; Sylow at `ℓ=2` | `d=r=1`; `1=1`; `2=2`; odd `d` | `2δ=0` alone insufficient; Bézout over all `ℓ` | agrees; descent sound (defectless `r[k′:k]=d`) |
| 10.27 | `ℚ(i)/ℚ` at 5, `x=2+i` | `ord₅ N=ord₅ 5=1` | places `(2+i),(2−i)`: `1+0` | agrees |
| 10.28 | `y²=x^p−s` over `𝔽_p(s)` at `y=0` | `𝔪=(y)` regular | both partials vanish; residue `F(s^{1/p})` | agrees |
| 10.29 | `n=0`; inseparable residues `F=𝔽_p(s)`, `K=F(s^{1/p})(t)` | principal divisor degree 0; `N(α)=α^p` | places of `K/F` | agrees |
| 10.30 | `ℙ¹` over ℚ, `f=t`, `g=t−1` | factors `−1` at 0, `1` at 1, `−1` at ∞, product 1 | unsigned gives `−1` at ∞ | agrees; Lean uses `Place.valuation`, surjective by `Place.valuation_surjective`, so `tameUnit` has order 0 and `normResidueOrOne` is the norm residue |
| 10.31 | `ℙ¹` `f=t`, `g=(t−1)/(t−2)`; `y²=x³−x`, `f=x/(x−2)`, `g=(x−3)/(x−5)` | `f(1)/f(2)=1/2`; `N(3)N(5/3)⁻¹=9·9/25=81/25` | `g(0)/g(∞)=1/2`; `(3/5)²·N(1/3)⁻¹=81/25` | agrees; without norms `9/5≠27/25` |
| 10.32 | ℚ `n=3`; totally imaginary | `ℤ/2` on `{−1,−1,−1}`; `0` | `(F →+* ℝ)` empty gives the zero group | agrees with Lean signature |
| 10.32a | `𝔽₇((t))`, `ℓ=3`, `ζ=2` | `[2,t]=2^{(7−1)/3}=4=ζ²`, invariant `2/3`; `[t,2]=4⁻¹=2=ζ`, `1/3` | `[2,6]=1` (unit, unit) | agrees; arithmetic Frobenius `(2^{1/3})^7=2^{1/3}·4` |
| 10.32b | `𝔽₇(t)` `{2,t}` | invariants `2/3` at 0, `1/3` at ∞, sum 0 | lone `1/3` has no global preimage | agrees |
| 10.32c | `𝔽_q(t)`, `S={∞}`, `{0,∞}` | ranks 0, 1 | `#S−1` | agrees |
| 10.33 | `𝔽₂(t)`; perfect closure; `n=1` control | `K₃^M=0`; finite tuples lie in a global subfield; `{t}≠0` | trdeg-0 subfields are finite fields | agrees with the `Finite k`, `trdeg=1` signature |
| 11.1 | `ℤ_(5)`, `{5,2}`, `{2,5}` | K-book boundary `2`, `3` | roadmap tame `3`, `2` | agrees; inversion recorded |
| 11.2 | `R=ℤ`, `{5,2}`; `ℝ[x,y]/(x²+y²−1)` | 5-component 2 (K-book) vs 3 | `coker ∂=SK₁≠0` | agrees |
| 11.3 | `{2,5},{5,2},{5,5}` at 5; `{2,t,π}` over `ℚ(t)((π))` | `D₂Φ₂`: `3,2,4`; `D₃Φ₃={π,2,t}↦Φ₂{2,t}` (right rule `∂[π]·y`) | `(−1)^{n−1}`: `−1` in degree 2, `+1` in degree 3 | agrees |
| 11.4 | `{25/2}`; `{2,5}`; `{2,−1}`; `V=ℕ` constant family | `(−1 at 2, 2 at 5)`; only `2∈𝔽₅ˣ`; all 1; infinite support | finite character required | agrees |
| 11.5 | `ℤ_(5)`: `λ₅{5}=0`, `q₅[5]=[−1]=4`; `λ₁₀{5}=3`, `q₁₀[5]=D₂Φ₂{10,5}=3⁻¹=2` | `q=Φ(λ+r{−1})`: `4·3=2` | `−D₂([5][−5])=0` | agrees |
| 11.6 | `ℚ(i)/ℚ` at 2, `N(1+i)=2` | `ord₂=1=f·1` | `e=2` would give 2 | agrees |
| 11.7 | `ℂ/ℝ` `{r,e^{iθ}}`, `{r,s}`; `𝔽_p(s^{1/p})` | `1`, `{r,s}²`; `res∘N=p` | nonreduced tensor length `p` | agrees |
| 11.8 | `{2,5}`; `{5,5}` at 5 | tame `2` vs `det B η♮` `3`; both `4` | inversion visible only off the diagonal | agrees |
| 12.1 | ℚ: `{−1,−1}`, `{−1,p}`, `{3,3}`, `{2,−1}` | in `U`; `−1∉`; `(−1)^{1·1}·1=−1∉`; `=1` | residues at `p`, 3, 2 | agrees |
| 12.2 | `S={5}` | `#K₂(ℤ[1/5])=2·4=8` | residue at 5 excluded from the sum | agrees |
| 12.3 | ℚ | `1→ℤ/2→K₂(ℚ)→⊕𝔽_pˣ→1` | surjectivity from `SK₁(ℤ)=1` | agrees |
| 12.4 | `S={2}`, `{5}` | orders `2·1`, `2·4` | `𝔽₂ˣ=1` | agrees |
| 12.5 | `(−2,−3)`, `(−2,3)`, `(x,1−x)` | `−1`, `1`, `1` (signs of `x`, `1−x` never both negative) | at-least-one-negative pairing fails at `(2,−1)` | agrees |
| 12.6 | `(2,−1)x₁₂(1)`, `(2,−1)x₂₁(1)`, `(2,−1)w₁₂(1)` | `(2,1)`, `(1,−1)`, `(1,2)` | `ℓ¹` norms 3, 2, 3 | agrees |
| 12.7 | case 6 `(4,3,−2)`, `ε=1` | `|c+εa|=2=|c|`, strict fails; `|c+εb|=1<2` descent | Weyl-tail branch | agrees |
| 12.8 | `n=1,2`; last column `(2,3)` | trivial; `I+2E₁₃+3E₂₃≠I` | faithful last column | agrees |
| 12.9 | `g=w₁₂(1)⁴` | `g²=1` | at most two elements | agrees |
| 12.10 | ℤ | sign `−1`, `g²=1` | order exactly 2 | agrees |
| 12.11 | `{2,3}` at 3; `{−1,p}` | `2=−1≠1`; `−1` at `p` | not in `K₂(ℤ)` | agrees |
| 13.1 | `r=1,s=2` over ℚ, `u=−1` | `e₂₁(2)e₁₂(−1)e₂₁(2)e₁₂(−1)=diag(−1,−1)` | `diag(u,u⁻¹)` | agrees; `⟨−1,−2⟩={−1,−1}` |
| 13.2 | ℤ/4 chain; D2 identity | `⟨2,1⟩=1`, `⟨2,2⟩=⟨2,−1⟩=⟨−1,2⟩⁻¹={−1,3}⁻¹={−1,−1}` | `1−r(s+t−rst)=(1−rs)(1−rt)` | agrees (R04 wording) |
| 13.3 | 𝔽₂ pairs `(0,1),(1,1)`; 𝔽₃; 𝔽₅ | `t=1` and `t=0` contradict; all three `t` excluded; ≤3 of 5 excluded | `𝔽₅×𝔽₅` coordinatewise | agrees |
| 13.4 | D1–D3 under `D(r,s)↦{r,1−rs}`, `D(0,s)↦0` | D1 `{rs,1−rs}=0`; D2 `{r,(1−rs)(1−rt)}`; D3 `{r²st,1−rst}={r,1−rst}` | zero-entry cases 0 | agrees; the Lean equation fixes `{r,1−rs}`, not `{1−rs,r}` |
| 13.5 | ℤ/25; `𝔽₅×𝔽₅`; rank 2 | threefold stable; nonlocal example; excluded (vdK 5.4(6)) | `n≥3` | agrees |
| 13.6 | ℤ/4, ℤ/9 sections | `1+1↦2≠0`, `3≠0` | transfer from `ℤ_(p)`; `{27,13}=⟨2,13⟩=3⟨2,1⟩=0` (vdK 8.7) | agrees |
| 13.7 | `I=0`, `I=R`; ℤ/4 `(2)`; `ab=ba=0` | `0`, `K₂(R)`; onto since `K₂(𝔽₂)=1`; `[x_ij(a),x_ji(b)]=D(−b,−a)` as `h_ij(1)=1` | `e₁₂(a)e₂₁(b)e₁₂(−a)e₂₁(−b)=1` | agrees |
| 13.8 | `ψ(a)=(σπ(a),a−σπ(a))`; `I=0`, `I=A` | `qψ=id`, `pψ=σπ`; `0`, `Ξ_A` | ℤ/4 has no section | agrees |
| 13.9 | `𝔽₃[x,y]/(x²,y²)`, `I=(xy)`, `(x,y,x+y)` | `rs=st=tr=xy`; `δ`: `(2,0)−(1,1)−(0,1)=(1,1)≠0` | guard excludes the triple | agrees |
| 13.10 | D3 with `r∈I`; with `s∈I` | `r⊗(s̄dt̄+t̄ds̄)` both sides | `−st⊗dr̄` both sides | agrees |
| 13.11 | `ℚ[x,y]/(x,y)²`, `Λ(r,s)=r_xs_y−r_ys_x` | `Λ(s,r)=−Λ(r,s)`; `Λ(x,y)=1` | tensor target 0 | agrees; `S≠0` with 2 invertible |
| 13.12 | `ast∈I²=0` | `⟨a,s⟩⟨a,t⟩=⟨a,s+t⟩` | `1−as` inverse `1+as` | agrees |
| 13.13 | `ℚ[t]` `D(ε,t)↦dt`; odd 𝔽_q | nonzero; `Ω=0` | `M_ℤ=ℤ/2` (vdK 1971, not re-read) | agrees where checkable |
| 13.14 | all admissible ℤ/4 pairs (one entry in `{0,2}`) | D1, D2 and D3 instances listed in the review transcript all give defect 0; `λ(3,2)=1`, `⟨3,2⟩={3,3}={−1,−1}` | `(1,1)` inadmissible | agrees |
| 13.15 | `n=1,2,3` | `0, ℤ/2, ℤ/2` | `n=1` excluded | agrees |

## Not verifiable

- `milnor` (Introduction to Algebraic K-Theory): no legal copy; Lemmas 9.1–9.15 and 10.1–10.7 cited in Layers 6 and 12 were not read; the Moreno Ramírez exposition was not re-read this round.
- `dennis-stein` (K₂ of radical ideals and semi-local rings revisited, LNM 342) and `dennis-stein-survey`: the sources service found no legal source (recorded in the job's missing-reference file); Corollary 2.2, Proposition 1.1, Theorems 2.1 and 2.7 and survey §12 remain uncertified; Weibel 5.10.5 and 5.11 supply the statements used.
- `gille-szamuely-2006`: no legal source; Propositions 7.3.9, 7.4.1, A.6.7–A.6.8 and Lemma 7.3.10 uncertified.
- Bass–Tate 1973, Tate 1976, Suslin 1980, Keune 1978, Loday 1978, Maazen–Stienstra 1977, Dennis–Stein 1975, Levine 1989: paywalled or not attempted this round; cited by locator only.
- Steinberg 1967, Morrow 2014, van der Kallen 1971/1978/1984/1989, Soulé, Weibel 1981, Waldhausen 1985, Löh, Milne's Tate survey, Bass 1971 and Milne CFT: available per the previous review's cache but not re-read this round; their targets are outside the seeded sample.
- Weibel's errata list (cited at `README.md:1681`, 1762): not consulted.

## Source issues

- **Error** in weibel at Exercise III.7.1, printed p.257 (`weibel` lines 14863–14866): the source says the specialisation λ is independent of the parameter; it should say only the residue is, since λ₁₀{5}=3≠1=λ₅{5} over 𝔽₅; affects a stated result.
- **Error** in weibel at Exercise III.7.10, printed p.258 (`weibel` lines 14947–14950): the source states the product formula for its Theorem 7.3 residue; with that residue it gives ∂{5,2}=3 instead of 2, so it holds only for the parameter-last residue; affects a stated result.
- **Error** in weibel at Exercise III.5.9, printed p.229 (`weibel` line 13208): the source writes the symbol as h(rs)h(s)⁻¹h(r)⁻¹; with its commutator convention and Matsumoto's Lemma 5.4(c) this is the inverse symbol, the correct order being h(rs)h(r)⁻¹h(s)⁻¹; affects a stated result.
- **Misprint** in weibel at Definition III.5.11, printed p.226 (`weibel` lines 13052–13053): the source says ⟨r,1⟩=0 for all r in a multiplicatively written group; it should say ⟨r,1⟩=1 when 1−r is a unit; affects nothing.
- **Error** in weibel at Exercise III.6.2, printed p.243 (`weibel` lines 14027–14032): the source says {e₁,e₂} is a product of symbols with only e₁ in degree d and all other entries of degree below d; it should allow e₂ in the degree-d slot too, since {t,t−2} has residue 2 at t−2 while every {t,c}, {c,c′} has residue 1 there; affects a stated result.
