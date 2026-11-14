# Review of PivotalSpherical (pull request #2311 at bd87ef6)

**Verdict:** needs changes

## R01 (P2) — `exists_radfordIso` does not determine the Radford isomorphism

**Location:** `TauCetiRoadmap/PivotalSpherical/Suggested.lean:180`: “`∃ e : 𝟭 C ≅ doubleRightDualFunctor C ⋙ doubleRightDualFunctor C, NatTrans.IsMonoidal e.hom`”.
**Claim:** Any monoidal isomorphism passes this test, but 6.3, 6.8 and 6.9 use the one fixed by the characterization on simples of README 6.7. That characterization is statable at the pins and absent.
**Witness:** `Vec(C₃)` over `ℂ`, pivotal `j = ζ₃`: `e = j ≫ jᘁᘁ` is monoidal with component `ζ₃²`; Radford's is `1`. Lifts `f = ±ζ₃` have traces `±ζ₃`, `±ζ₃⁻¹`: that pivotalization is not spherical.
**Repair:** Add the conjunct `∧ ∀ (L : C) [Simple L] (a : L ≅ (Lᘁ : C)ᘁ), (λ_ L).inv ≫ doubleDualTrace a.hom ▷ L ≫ (λ_ L).hom ≫ e.hom.app L = (λ_ L).inv ≫ doubleDualTrace (rightAdjointMate a.inv) ▷ L ≫ (λ_ L).hom ≫ a.hom ≫ (doubleRightDualFunctor C).map a.hom`. It elaborates in scratch; on the witness it gives `ζ·e = ζ⁻¹·ζ²`, so `e = 1` and `ζ₃²` is rejected.

## R02 (P3) — Gate `imports`: a module is imported twice

**Location:** `TauCetiRoadmap/PivotalSpherical/Suggested.lean:13`: “`import TauCeti.CategoryTheory.Semisimple.Rigid`”.
**Claim:** The gate fails on `imports=1`: each `TauCeti.*` module is imported once.
**Witness:** The same line is `Suggested.lean:11`.
**Repair:** Delete line 13. The file with 16 distinct imports elaborates in scratch.

## R03 (P3) — Gate `statement-hygiene`: `normGlobalDim` chooses its datum

**Location:** `TauCetiRoadmap/PivotalSpherical/Suggested.lean:175`: “`squaredNorm (Classical.choice (nonempty_iso_rightDual_rightDual S.repr))`”.
**Claim:** The gate fails on `statement-hygiene=1` (choice in the body of a `def`). The value is choice-independent only under hypotheses the `def` does not carry (no `k`, no linearity).
**Witness:** `ℚ²` in `Vec`: `a = 𝟙` gives `4`, `a = diag(1,2)` gives `9/2` (README 372).
**Repair:** Take the family as an argument: `normGlobalDim (C) [Preadditive C] [Fintype (SimpleClasses C)] (a : ∀ S : SimpleClasses C, S.repr ≅ ((S.repr)ᘁ : C)ᘁ) := ∑ S, squaredNorm (a S)`, and quantify `a` (and `b` on `Center C`) in `normGlobalDim_ne_zero`, `normGlobalDim_eq_globalDim`, `normGlobalDim_center` and the hypothesis of `existsUnique_pivotalCategory_of_normGlobalDim`. These elaborate in scratch; `Vec(C₂)` gives `2` for every `a`. README 6.2: “for any isomorphisms `a_S : S ≅ Sᘁᘁ`, which exist by `TauCeti.nonempty_iso_rightDual_rightDual`”.

## R04 (P3) — The `FDRep` indicator comparison moved from Layer 8 to 7.1 with no mapping

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:395`: “### 7.1 Indicators agree”.
**Claim:** On main the comparison is a target of Layer 8 (“Frobenius–Schur indicators”), and a roadmap on main cites it there. After this change Layer 8 holds only the `Vec^ω_G` indicators.
**Witness:** `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:116` and `:241`: “PivotalSpherical Layer 8, Frobenius–Schur indicators”.
**Repair:** Add to “How to read the build”: “The comparison of indicators on `FDRep`, formerly in Layer 8, is 7.1.” (or state it as 8.5 and keep Layer 7 as supplier contracts only).

## R05 (P3) — Wrong or missing source locators

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:232` “([EGNO] §1.8 and §7.13)”; `:313` “p. 149”; `:323` “Remark 6.5.9, p. 127”; `:530` (11.4) and 3.2, 7.1, 8.2–8.4, 11.2, 11.5.
**Claim:** §7.13 is the centre construction and says nothing about split simple families; two printed pages are off by one; eight targets have neither a locator nor a statement that they are deductions.
**Witness:** egno line 201 (§7.13 title, p. 162); egno line 7514 (page header `150`, Definition 7.9.12); egno line 6491 (page header `128`, Remark 6.5.9); eno line 275 (the dimension of the centre).
**Repair:** 3.4: “([EGNO] Proposition 1.8.4, p. 9)”. 6.5: “p. 150”. 6.6: “p. 128”. 11.4: “([ENO] Theorem 2.15, preprint p. 6)”. For 3.2, 7.1, 8.2, 8.3, 8.4, 11.2 and 11.5 add a locator, or the sentence “a deduction from …” naming the inputs, as 3.1 and 3.3 do.

## R06 (P3) — Padding: the two scalar-trace theorems follow from pinned linearity

**Location:** `TauCetiRoadmap/PivotalSpherical/Suggested.lean:60` and `:65`: “`leftTrace f.asHom = (RingEquiv.ofBijective _ hX).symm f • leftDim X`”.
**Claim:** Both are surjectivity of `algebraMap` followed by one pinned lemma; they are API, not headlines.
**Witness:** `TauCeti/CategoryTheory/Monoidal/Pivotal/Trace.lean:336`, `:341` (`leftTrace_smul`, `rightTrace_smul`). In scratch: `obtain ⟨r, rfl⟩ := hX.2 f`, rewrite `symm_apply_apply` and `algebraMap_eq_smul_one`, `exact leftTrace_smul r (𝟙 X)` closes each.
**Repair:** Delete both from `Suggested.lean`; README 2.1 keeps the statements in prose, without the two backticked names. `leftDim_comp_rightDim_eq_of_bijective` stays.

## R07 (P3) — Three definitions have two Checks

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:374` (6.4), `:377` (6.5), `:383` (6.8).
**Claim:** The Deligne product, the canonical algebra and the pivotalization each have two tests; every definition needs three discriminating ones.
**Witness:** Bullets `6.4`, `6.5`, `6.8` of the Layer 6 Examples carry two instances each.
**Repair:** Add: 6.4 — in `Vec(C₂) ⊠ Vec(C₂)`, `δ_e ⊠ δ_e ⊕ δ_g ⊠ δ_g` has multiplicities `(1,0,0,1)`; a pair has `(ac, ad, bc, bd)` with `ad·bc = ac·bd`, so `C ⊗ₖ D` without `Mat_` lacks it. 6.5 — `C = Vec`: `A = 𝟙 ⊠ 𝟙` and `V ↦ (V ⊠ 𝟙) ⊗ A` is the identity on ranks. 6.8 — `C = Vec` over `ℂ`: two classes `(𝟙, ±1)` of dimensions `±1`, `normGlobalDim = 2 = 2·dim C` ([EGNO] Remark 7.21.11, p. 181); fixing `f` on the unit would give one.

## R08 (P3) — This roadmap's targets are written as `TauCeti.*` declarations

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:273` “`TauCeti.squaredNorm a :=`”; `:284` “named `TauCeti.normGlobalDim C`”; `:360` “so `TauCeti.normGlobalDim_ne_zero`”.
**Claim:** In this README the prefix `TauCeti.` marks a pinned supplier; these three are targets declared in `Suggested.lean` and exist nowhere at the pin.
**Witness:** No `squaredNorm`, `normGlobalDim` or `normGlobalDim_ne_zero` in Tau Ceti at `2fd255d`; `Suggested.lean:146`, `:173`, `:186` declare them in `TauCetiRoadmap.PivotalSpherical`.
**Repair:** Write `squaredNorm`, `normGlobalDim`, `normGlobalDim_ne_zero` without the prefix.

## R09 (P3) — 6.2 states characteristic zero for a definition that has none

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:281`: “(the hypotheses of `TauCeti.globalDim_ne_zero` without `[PivotalCategory C]`)”.
**Claim:** Those hypotheses include `[CharZero k]`; the Lean `normGlobalDim` and `normGlobalDim_eq_globalDim` do not, and the README's own example needs positive characteristic.
**Witness:** `TauCeti/CategoryTheory/Monoidal/Pivotal/Character.lean:228` (`[CharZero k]`); README 368: `Vec(C₂)` in characteristic `2` has `dim C = 0`.
**Repair:** “(the hypotheses of `TauCeti.globalDim_ne_zero` without `[PivotalCategory C]` and without `[CharZero k]`)”.

## R10 (P3) — The functoriality clause of 3.3 names no map

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:220`: “the canonical element of `T ⟶ F.obj B` factors through the constituents `S i` of `B`”.
**Claim:** “Factors through” is not a statement an implementer can identify; the perfect-pairing hypotheses on `T` are not what it needs.
**Witness:** `F = 𝟭`, `T = S = R`, `B = R²`: the only candidate is `(S ⟶ B) ⊗ (T ⟶ S) → (T ⟶ B)`, ranks `2·1 = 2`.
**Repair:** “For an additive `R`-linear `F : C ⥤ D`, any `T : D` and `s` as in the completeness relation for `B`, the map `⨁ i ∈ s, (S i ⟶ B) ⊗[R] (T ⟶ F.obj (S i)) → (T ⟶ F.obj B)`, `g ⊗ h ↦ h ≫ F.map g`, is an `R`-linear isomorphism, with inverse `t ↦ ∑ i j, b i j ⊗ (t ≫ F.map (c i j))`.”

## R11 (P3) — “proposed” is a process word

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:41`: “The proposed Ocneanu rigidity roadmap cites 6.1, 6.2, 6.9, 11.1 and 11.2”; `:44`: “the proposed PresentationsOfMonoidalCategories roadmap”.
**Claim:** The word dates the text to the state of two open pull requests.
**Witness:** README 559–561 names the same two consumers without it.
**Repair:** “OcneanuRigidity cites 6.1, …” and “(PresentationsOfMonoidalCategories, a consumer of Layers 2, 3 and 8)”.

## R12 (P3) — Layer 6 Dependencies omit Layer 2

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:391`: “Layer 3; supplier contracts of Layers 0, 4, 5 and 6; Mathlib `Mat_`.”
**Claim:** 6.1 has “*Needs:* Layer 2” (README 277) and compares with `leftDim X ≫ rightDim X`.
**Witness:** README 277 against README 391.
**Repair:** “Layers 2 and 3; supplier contracts of Layers 0, 2, 4, 5 and 6; Mathlib `Mat_`.”

## R13 (P3) — The description's text against the head

**Location:** Pull-request description: “The layer numbers are kept, since other roadmaps cite them.” and “Each remaining layer has numbered `### k.n` subsections with their *Needs:* clauses, locators and the Lean names of their headlines”.
**Claim:** The `FDRep` indicator comparison changes layer (R04), and seven targets have no locator (R05).
**Witness:** Main's README 527–535 (Layer 8) against head 395 (7.1); head 3.2, 7.1, 8.2–8.4, 11.2, 11.5.
**Repair:** Add “The comparison of indicators on `FDRep` moves from Layer 8 to 7.1.”; after R05 the second sentence is true. After R03 and R06, update the declaration counts.

## Verified sound

| Statement | Instances | One side | Other side | Result | Change |
|---|---|---|---|---|---|
| 2.1 scalar traces (Lean 60, 65) | `ℤ/4`, `δ_0`, `f = 2`; `Vecℤ/ℚ`, pivot `2`, `f = 3` | left `2`; right `6` | `2·1`; `3·2` | agree; closes from `leftTrace_smul` | R06 |
| 2.1 `leftDim ≫ rightDim` (Lean 71) | pivots `2ⁿ`, `3ⁿ` on `δ_1`; `ℤ/4`, unit `3` | `(1/2)·2 = 1`; `3·3 = 1` | `(1/3)·3 = 1`; `1` | agree | — |
| 3.1 pairing | `R = ℤ`, `(1,2)`, `(3,4)`; `X = 0` | `11`; `0` | dot product `3 + 8`; `𝟙 0 = 0` | agree; egno 945 gives only `End S = k` | — |
| 3.2 dual bases | `R²`, basis `(e₁, e₁+e₂)` | dual `(e₁*−e₂*, e₂*)`, pairings `1,0,0,1` | canonical sum `I₂` for both bases | agree; no locator | R05 |
| 3.3 (Lean 83–112) | `R = ℤ`, `X = R²`; zero ring; `δ₀ ⊕ δ₁` with `s = {0}` | rank `2`, sum `I₂`; all `0`; `diag(1,0)` | `I₂`; `0`; `hs` fails on `δ₁` | agree, control excluded | R10 |
| 3.4 field case (Lean 119) | `Vecℤ/ℂ`, `δ₀ ⊕ δ₁` | Hom ranks `1, 1` | index set `ℤ`, infinite | agree; §7.13 is the centre | R05 |
| 5.1 primitive (Lean 128) | `[[1,1],[1,1]]`; swap; `[0]` | `r = 2`, other root `0 < 2` | swap: `1, −1`, no positive power; `[0]` not primitive | agree; egno 2926, p. 51 | — |
| Conventions, `Vec^ω_{C₃}` | `ω = δb`, `b(1,2) = 2` | `ω(1,1,1) = 2`, `ω(1,2,1) = 1/2`, coevaluation `2`, pivot `1/2` | dimensions `1, 1`; inverse pivot: `4`, `1/4` | agree | — |
| 6.1 (Lean 141–158) | line, `a = 2, 3`; `ℚ²`; pivot `2` on `δ_1` | `2·½ = 3·⅓ = 1`; `4` vs `9/2` | `rightDim·leftDim = 2·½` | agree; eno 157–180, p. 4 | — |
| 6.2 (Lean 173–190) | `Vec(C₂)`, characteristic `0` and `2` | squared-norm sum `2`; `0` | `globalDim` `2`; `0` | agree | R03, R09 |
| 6.3 (Lean 196) | `Vec(C₂)/ℂ`, pivots `±` | `dim = 2 = FPdim`; left dimensions `(1,1)`, `(1,−1)` | exactly one equals `(FPdim) = (1,1)` | agree; eno 1545, p. 34; eno 452, p. 10 | R03 |
| 6.4 Deligne product | `Vec(C₂) ⊠ Vec(C₂)`; `Vec ⊠ (Vec × Vec)` | `4` classes; unit `2` summands | `2·2`; not fusion | agree; egno 1224 (p. 15), 3956 (p. 73) | R07 |
| 6.5 canonical algebra | Mathlib duals; `Vec(C₃)` | `Hom(X⊗Y, 𝟙) ≅ ⨁ Hom(X,S) ⊗ Hom(Y, ᘁS)` | `A = ⨁ g ⊠ g⁻¹` | agree; egno 7523 is p. 150 | R05, R07 |
| 6.7 Radford (Lean 180) | `L = k`, `a = 3`; `Vec(C₃)`, pivot `ζ₃`; `a ↦ λa` | `3·1`; `j ≫ jᘁᘁ = ζ₃²`; both sides `×λ` | `⅓·9`; Radford `1` | README agrees with egno 8991; Lean underdetermined | R01 |
| 6.7 locators | EGNO, ENO04 | egno 8824, 8849, 8857 (p. 177), 8991 (p. 180) | eno04 lines 215 (p. 5), 479, 505 (p. 11) | match | — |
| 6.8 pivotalization | `Vec(C₂)`; `U = [[1,1],[0,1]]` | `4` classes, `normGlobalDim 4` | `U² = [[1,2],[0,1]] = I` in characteristic `2` | agree; egno 9025–9026, p. 181 | R07 |
| 6.9 (Lean 186) | Fibonacci, Yang–Lee; `Vec(C₂)` characteristic `2` | `φ² ≈ 2.618`, `φ⁻² ≈ 0.382`; sums `3.618`, `1.382` | `≥ 1`; `2 = 0` excluded by `CharZero` | agree; eno 182 (p. 4), 190, 503 (p. 11) | — |
| 7.1 (Lean 208) | `C₂` sign; `Q₈` 2-dim; `C₃` character | `(1+1)/2 = 1`; `(2+2−12)/8 = −1`; `(1+ζ+ζ²)/3 = 0` | trace of the swap on invariants: `1, −1, 0` | agree; pinned `FDRep.frobeniusSchurIndicator` is at `k : Type` only | R04, R05 |
| 8.4 indicators | `C₃` coboundary, `n = 3`; `C₃`, `χ = ζ₃`, `n = 3` | `ω(1,1,1)ω(1,2,1) = 1`; `ζ₃⁻¹` | gauge-trivial `1`; pin's rotation uses `(pivotalIsoApp X).inv` | agree | R05 |
| 10.1 (Lean 225) | `Vecℤ/ℂ`; `FDRep 𝔽₃ C₃`, `g = I+N` | twists `1`; traces of `aI+bN`: `2a`, `2a` | dual twists `1`; `I − Nᵀ ≠ I + Nᵀ` | agree; hpt 1692–1700, pp. 45–46 | — |
| 11.1 induction | `Vec(C₂)`, `δ_e`; `a_S ↦ λ a_S` | `I δ_e = 2δ_e`; mate `×λ` | `(e,+) ⊕ (e,−)`; trace `×λ` | agree; eno 937, p. 21 | — |
| 11.2 averaging | `Vec(C₂)/ℂ`, unit | composite `2·𝟙`; unit rescaled by `3`: `6·𝟙` | `dim C = 2` | agree; no locator | R05 |
| 11.3 (Lean 247, 250) | `Z(Vec(C₂))`, `ℂ` and characteristic `2` | `4` classes | Jordan block `[[1,1],[0,1]]` does not split | agree; eno 273–276, p. 6 | — |
| 11.4 (Lean 255, 261) | `Vec(C₂)/ℂ`; `Vecℝ(C₃)` | `4`; `3(1+4) = 15` | `2²`; `9`, excluded by `IsAlgClosed` | agree; no locator | R03, R05 |
| 11.5 (Lean 267) | `Z(Vec(C₂))/ℂ` | twists `±1` | dual twists `±1` | agree; deduction from 10.1 and 11.3, not said | R05 |

Previous review (R01–R11 at `20de8ee`):

| Id | Disposition | Head passage |
|---|---|---|
| R01 | repaired | Lean 243 “`include k`”; the three elaborated types carry `k`, `IsAlgClosed`, `CharZero`, linearity and Hom-finiteness |
| R02 | repaired | README 298 “*Needs:* 6.2, 6.7, 6.8, 6.9”; 6.7–6.9 are targets |
| R03 | repaired | README 41; OcneanuRigidity README 47–51 and 149 cite 6.1, 6.2, 6.9, 11.1 |
| R04 | repaired | Lean 173, 186, 190, 196, 208, 250, 255 |
| R05 | repaired | README 155–158 “Hom-finiteness … and the simple unit” under supplier contracts |
| R06 | partly | `### k.n`, Examples and Dependencies present; Checks and locators: R05, R07 |
| R07 | repaired | README 134 “the theorem exists_mulVec_eq_smul_of_pos of …”; `readme-ids-missing=0` |
| R08 | repaired | README 510 “[ENO] §5.8, Proposition 5.4, preprint p. 21” |
| R09 | repaired | Lean 22–41; all 25 Lean names occur in the README |
| R10 | repaired | README 534 “### 11.5 The ribbon centre” |
| R11 | partly | description rewritten; R13 |

- Source locators checked against the text: 24 (EGNO 13, ENO 7, ENO04 3, HPT 1, DGNO 1 at dgno 307–317, NS 1 at ns 360); 3 wrong (R05). ENO04 was read from arXiv `math/0404504v1` through the sources service; the manifest has no entry for it.
- Library declarations resolved at the pins (Mathlib `1b1ccf4`, Tau Ceti `2fd255d`): 97 backticked supplier names, all found; opened `Pivotal/Trace.lean:88–101, 336`, `Pivotal/Basic.lean:187, 203`, `Pivotal/FrobeniusSchur.lean:76, 160, 287`, `Pivotal/GlobalDim.lean:58`, `Semisimple/Basic.lean:56`, `Semisimple/Rigid.lean:89`, `PseudoUnitary/Existence.lean:161`, `Pivotal/Character.lean:228–239`, `Center/Simple.lean:54`, `CharacterTable/FrobeniusSchur/Basic.lean:82, 209`.
- Cross-roadmap citations resolved: 5 on main (CharacterTheory, CategoricalOperatorAlgebras, Subfactors, QuantumGroups, TemperleyLieb), 2 open consumers at their heads; 1 broken inbound citation (R04).
- Gate at `bd87ef6`: FAIL on `imports=1` (R02) and `statement-hygiene=1` (R03); every other check `0`; targeted build passes; no change outside the folder.
- Elaboration: `Suggested.lean` gives 21 `sorry` warnings and nothing else. `#check @` on the 25 declarations (21 theorems, 3 definitions, 1 structure) compared with the README: no section binder lost (the 20 flagged are false positives; the `Radford` and `CenterFusion` theorems carry `k`), 0 changed.
- One-tactic probe: none of the 21 theorems closes under `rfl`, `simp` or `infer_instance`; the two of R06 close in four lines from one pinned lemma.
- Dependency check: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- Headlines: 21 stated; `Vec^ω_G` (8.1–8.4, 9.1), 6.4–6.6, 6.8, 11.1 and 11.2 are named in the module docstring as not statable; the characterization of 6.7 is statable and absent (R01).

Overlap check: read PresentationsOfMonoidalCategories, OcneanuRigidity, CategoricalOperatorAlgebras, QuantumGroups, TemperleyLieb; split simple families, `Vec^ω_G`, squared norms, `normGlobalDim`, the Radford isomorphism, the pivotalization, the induction functor and the centre's semisimplicity and dimension: owner PivotalSpherical, cited by the others; unitary and C*-structures: CategoricalOperatorAlgebras; no object with two owners.

Source independence: 12 passages compared with 6 sources (egno, eno, eno04, hpt, dgno, ns), none shared beyond formulas and standard names; largest share egno, 14 of 26 locators; contents compared with egno: independent (Layers 2, 3, 5, 6, 8 ↔ §§4.7, 1.8, 3.2, {1.11, 4.6, 7.9, 6.5, 7.19, 7.21}, 2.3, not monotone; the order 6.5 → 6.6 → 6.7 → 6.8 is forced by their *Needs:* lines).

## Not verifiable

- `freyd-yetter`: settled as uncertified; the head consumes the pinned `TauCeti.pivotalIsoApp_rightDual` and adds no statement from it.
- 8.4's indicator formula and 11.2's averaging identity cite no source; they were computed on the instances in the table, not checked against a text.
- 8.1's equivalence for cohomologous cocycles is cited to [EGNO] Proposition 2.6.1, which is stated over a field; the ring form was not checked against a text.

## Source issues

- **Error** in hpt at Lemma A.5, p. 46: the source says that in a rigid semisimple tensor category over any field, nonzero maps `1 → a⊗a*` and `a⊗a* → 1` compose to a nonzero scalar for simple `a`; it should assume `End(a) = k` (the real rotation representation of `C₃` gives `Tr(J) = 0`); affects a stated result.

## For the human reviewers

- none
