# Review of PivotalSpherical (pull request #2311 at cb9ee7c)

**Verdict:** needs changes

## R01 (P3) — 6.2 has no locator, and the description says every subsection has one

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:283`: “For a fusion category over `k` (the hypotheses of `TauCeti.globalDim_ne_zero` without `[PivotalCategory C]` and without `[CharZero k]`), `dim C` is the sum of the squared norms”.
**Claim:** The rewritten 6.2 has neither a locator nor a deduction sentence. That makes the description's “a locator or an explicit statement that the target is a deduction” false for 6.2 (carried from R13).
**Witness:** eno line 179 (Definition 2.2, preprint p. 4) defines the global dimension as the sum of squared norms; egno line 8946 (Definition 7.21.3; page header 179 at line 8916).
**Repair:** After “named `normGlobalDim C a`” insert “([ENO] Definition 2.2, preprint p. 4; [EGNO] Definition 7.21.3, p. 179)”. The description's sentence is then true as written.

## R02 (P3) — 7.1's deduction names an input that its route does not use

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:411`: “A deduction from `FDRep.trace_eq_smul` and the character formula for the trace of the rotation on `(V ⊗ V)^G`, which is the swap of the two factors.”
**Claim:** `ν₂` is the linear trace of a rotation on `𝟙 ⟶ V ⊗ V`, and that rotation is built from the pivotal pairing. No categorical trace occurs, so `FDRep.trace_eq_smul` is not an input. The route's real input is the pivotal component of `FDRep`, which makes the rotation the swap, and the text does not name it.
**Witness:** `TauCeti/CategoryTheory/Monoidal/Pivotal/FrobeniusSchur.lean:287` (`LinearMap.trace k _ (frobeniusSchurEnd k V n.natPred)`); `:76` (`pivotalRotate` through `pivotalExactPairing`); `TauCeti/RepresentationTheory/FDRep/Pivotal.lean:55`.
**Repair:** “A deduction: by `TauCeti.pivotalIsoApp_eq_drinfeldIso` and `FDRep.drinfeldIso_hom_hom_hom_hom`, the rotation on `𝟙 ⟶ V ⊗ V = (V ⊗ V)^G` is the swap. Its trace there is `|G|⁻¹ ∑_g tr(ρ(g)²)` by the averaging projection `Representation.isProj_averageMap`.” The *Needs:* becomes: Tau Ceti `TauCeti.frobeniusSchurIndicator`, `TauCeti.pivotalIsoApp_eq_drinfeldIso`, `FDRep.drinfeldIso_hom_hom_hom_hom`; Mathlib `Representation.isProj_averageMap`.

## R03 (P3) — 8.2 cites DGNO beyond the hypotheses DGNO states

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:444`: “Over a field it follows from [DGNO] Proposition 2.3; over a ring it is a deduction from the three facts just listed.”
**Claim:** 8.2 holds for every group `G`. DGNO Proposition 2.3(iii) is about fusion categories over an algebraically closed field of characteristic zero, so it covers only finite `G` over such a field. It does not cover `Vecℤ` over `ℚ`, the case in the Conventions Check.
**Witness:** dgno line 268 (DGNO's standing assumption: an algebraically closed field of characteristic 0); dgno lines 313–317 (Proposition 2.3(iii), preprint p. 7, for a fusion category).
**Repair:** “For finite `G` over an algebraically closed field of characteristic zero it is [DGNO] Proposition 2.3(iii), preprint p. 7; for every `G` and `R` it is a deduction from the three facts just listed.”

## R04 (P3) — 11.5 says 11.3 supplies all of 10.1's hypotheses

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:555`: “A deduction from 10.1 applied to `Center C`, whose hypotheses 11.3 supplies.”
**Claim:** 11.3 supplies only finite semisimplicity. 10.1 also needs finite-dimensional Hom spaces and scalar endomorphisms of simple objects. Both come from pinned declarations that 11.5's *Needs:* does not list.
**Witness:** README 497–499 (10.1's hypotheses) against README 540–542 (11.3: “Hom-finiteness and the simple unit are supplied”); `TauCeti/CategoryTheory/Monoidal/Center/Preadditive.lean:225`.
**Repair:** “A deduction from 10.1 applied to `Center C`. 11.3 gives finite semisimplicity, `CategoryTheory.Center.instFiniteDimensionalHom` gives the finite-dimensional Hom spaces, and Schur's lemma over `k` (`TauCeti.endAlgEquivOfSimple`) gives the scalar endomorphisms of simple objects.” Add both names to the *Needs:*.

## R05 (P3) — 2.1's *Needs:* omits the change of pivotal structure

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:180`: “*Needs:* Tau Ceti `TauCeti.leftTrace_smul`, `TauCeti.rightTrace_smul`, `TauCeti.leftTrace_tensorHom_eq_comp`.”
**Claim:** `leftDim_comp_rightDim_eq_of_bijective` compares two pivotal structures. Its route writes each dimension for `P` as a trace for `Q` of a scalar automorphism, and none of the listed declarations does that.
**Witness:** The pinned field form, `TauCeti/CategoryTheory/Monoidal/Pivotal/Simple.lean:102`, rewrites with `leftDim_eq_leftTrace P Q` and `rightDim_eq_rightTrace P Q` (`Trace.lean:377`, `:385`).
**Repair:** “*Needs:* Tau Ceti `TauCeti.leftTrace_smul`, `TauCeti.rightTrace_smul`, `TauCeti.leftDim_eq_leftTrace`, `TauCeti.rightDim_eq_rightTrace`, `TauCeti.leftTrace_tensorHom_eq_comp`.”

## R06 (P3) — A Layer 6 Example names a Lean declaration and argues for its signature

**Location:** `TauCetiRoadmap/PivotalSpherical/README.md:385`: “fails the characterization on simples, which forces `e = 1`; so `exists_radfordIso` must carry the characterization.”
**Claim:** A Check does not name a Lean counterpart. This clause explains why the signature was changed; it states no property of the Radford isomorphism.
**Witness:** The last sentence of the same bullet (README 388–390) already gives the discrepancy `ζ₃²` as a character.
**Repair:** Replace “so `exists_radfordIso` must carry the characterization” with “so monoidality alone does not determine the Radford isomorphism”.

## Previous findings

- R01 — repaired: Lean 171–175: “`NatTrans.IsMonoidal e.hom ∧ ∀ (L : C) [Simple L] (a : L ≅ (Lᘁ : C)ᘁ), … ≫ e.hom.app L = … ≫ a.hom ≫ (doubleRightDualFunctor C).map a.hom`”. This matches README 340–342.
- R02 — repaired: Lean 1–16 import 15 distinct `TauCeti.*` modules; `Semisimple.Rigid` appears once (line 11); gate `imports=0`.
- R03 — repaired: Lean 162: “`normGlobalDim (a : ∀ S : SimpleClasses C, S.repr ≅ ((S.repr)ᘁ : C)ᘁ)`”. The family is quantified at Lean 180, 186, 196, 254–255; gate `statement-hygiene=0`.
- R04 — repaired: README 166: “The comparison of indicators on `FDRep`, formerly in Layer 8, is 7.1.”
- R05 — repaired: 3.4 “Proposition 1.8.4, p. 9”; 6.5 “p. 150”; 6.6 “p. 128”; 11.4 “Theorem 2.15, preprint p. 6”. The new deduction sentences of 7.1, 8.2 and 11.5 introduce R02–R04.
- R06 — repaired: both theorems are deleted. README 178–179: “the two trace formulas follow from surjectivity of `algebraMap` and the pinned `TauCeti.leftTrace_smul`, `TauCeti.rightTrace_smul`”.
- R07 — repaired: README 379–381 (6.4), 383–384 (6.5), 393–395 (6.8) each add the third Check.
- R08 — repaired: README 275 “`squaredNorm a :=`”, 286 “`normGlobalDim C a`”, 363 “`normGlobalDim_ne_zero`”.
- R09 — repaired: README 284: “without `[PivotalCategory C]` and without `[CharZero k]`”.
- R10 — repaired: README 222–224: “the map `⨁ i ∈ s, (S i ⟶ B) ⊗[R] (T ⟶ F.obj (S i)) → (T ⟶ F.obj B)` … is an `R`-linear isomorphism”.
- R11 — repaired: README 41 “OcneanuRigidity cites 6.1, 6.2, 6.9, 11.1 and 11.2”; README 44 “(PresentationsOfMonoidalCategories, a consumer of Layers 2, 3 and 8)”.
- R12 — repaired: README 401: “Layers 2 and 3; supplier contracts of Layers 0, 2, 4, 5 and 6; Mathlib `Mat_`.”
- R13 — partly repaired: the description now states the 7.1 move and the deduction sentences. “a locator or an explicit statement that the target is a deduction” is still false for 6.2 (R01).

## Verified sound

| Statement | Instances | One side | Other side | Result | Change |
|---|---|---|---|---|---|
| 2.1 trace formulas (prose) | `ℤ/4`, `δ₀`, `f = 2`; `Vecℤ/ℚ`, pivots `2ⁿ`, `3ⁿ` | `leftTrace(2•𝟙) = 2•leftTrace 𝟙 = 2`; `½·2`, `⅓·3` | `2 • leftDim δ₀ = 2`; both `1` | agree; route also needs `leftDim_eq_leftTrace` | R05 |
| 3.2 dual bases (deduction) | `R²`, basis `(e₁, e₁+e₂)` | dual `(e₁*−e₂*, e₂*)`, pairings `1,0,0,1` | canonical sum `I₂` for both bases | agree | — |
| 3.3 functoriality isomorphism | `F = 𝟭`, `T = S = R`, `B = R²`; `Vecℤ`, `B = δ₀⊕δ₁`, `T = δ₁`, `s = {0}` | `(x,y) ↦ e₁⊗x + e₂⊗y ↦ (x,y)`; domain `0` | target `R²`; `Hom(δ₁, B) = k` | isomorphism; the hypothesis on `s` excludes the control | — |
| 3.4 locator | egno 945–947 | Prop. 1.8.4: `Hom(X,X) = k`, `0` between distinct simples | page header `9` (egno 926) | agree | — |
| 6.2 `normGlobalDim` (Lean 162) | `Vec(C₂)/ℂ`, `a = (1,1)`, `(2,3)`; characteristic `2` | `1 + 1 = 2`; `1 + 3·⅓ = 2`; `0` | `globalDim` `2`; `0` | independent of `a`; no locator | R01 |
| 6.2 `normGlobalDim_eq_globalDim` (Lean 185) | `Vec(C₂)/ℂ`, pivot `−`, `a = (1,2)` | `1 + 2·½ = 2` | `1·1 + (−1)(−1) = 2` | agree | — |
| 6.3 (Lean 192–200) | `Vec(C₂)/ℂ`, any `a`; Yang–Lee | `normGlobalDim 2 = FPdim 2`; pivots `±`: dimensions `(1,1)`, `(1,−1)` | unique `+`, spherical; Yang–Lee `1.382 ≠ 3.618`: hypothesis false | agree | — |
| 6.4 new Check | `δ_e⊠δ_e ⊕ δ_g⊠δ_g` | multiplicities `(1,0,0,1)`: `ad·bc = 0` | `ac·bd = 1` | not a pair; Check holds | — |
| 6.5 new Check; locator | `C = Vec`; egno 7523, 7528 | `A = 𝟙⊠𝟙`, `V ↦ V` | page header `150` (egno 7514) | agree | — |
| 6.6 locator | egno 6523 | Remark 6.5.9: semisimple implies unimodular | page header `128` (egno 6491) | agree | — |
| 6.7 `exists_radfordIso` (Lean 170) | `Vec(C₃)/ℂ`, pivot `ζ₃`; `Vecℤ/ℚ`, pivot `2`; `a ↦ λa` | `ζ·e = ζ⁻¹·ζ²`; `2e = ½·4` | `e = 1`; `j ≫ jᘁᘁ = ζ₃²` rejected; both sides `×λ` | determines `e`; egno 8991 (p. 180), eno04 479 | R06 |
| 6.8 new Check | `Pivotalization Vec` over `ℂ` | `f = u·j`, `u² = 1`: classes `(𝟙,±1)`, dimensions `±1` | `normGlobalDim 1 + 1 = 2 = 2·dim Vec` | agree; egno 9029, p. 181 | — |
| 6.9 (Lean 180) | Fibonacci, Yang–Lee, any `a`; `Vec(C₂)` in characteristic `2` | `3.618`, `1.382` | `≠ 0`; `0` excluded by `CharZero` | agree | — |
| 7.1 deduction | `Q₈`, two-dimensional; `C₂` sign | `(2·2 + 6·(−2))/8 = −1`; `(1+1)/2 = 1` | trace of the swap on `(V⊗V)^G`: `−1`, `1` | values agree; `FDRep.trace_eq_smul` unused | R02 |
| 8.2 locator | `G = ℤ` over `ℚ`; `G = C₂` over `ℂ` | `Aut_⊗(𝟭) ≅ ℚˣ`, infinitely many simples | DGNO: fusion, algebraically closed, characteristic `0` (dgno 268, 313) | covers finite `G` only | R03 |
| 8.3 deduction | `Vecℤ/ℚ`, `χ = 2ⁿ`; `C₂`, sign | dimensions `½`, `2`; `(−1)⁻¹ = −1` | `χ(1)² = 4`: not spherical; `χ² = 1`: spherical | agree with the Conventions Check | — |
| 8.4 deduction | `C₂`, sign twist, `n = 2`; `ℤ`, `δ₁`, `n = 3` | `χ(g)⁻¹ω(g,g,g) = −1`; `Hom(𝟙, δ₃) = 0` | Example `−1`; `0` | agree; ns 360, p. 8 | — |
| 11.2 deduction | `Vec(C₂)/ℂ`, `Z = 𝟙` | summands `δ_e`, `δ_g` contribute `1`, `1` | `2·𝟙 = dim C · 𝟙` | agree | — |
| 11.4 (Lean 252, 261); locator | `Z(Vec(C₂))/ℂ`, any `a`, `b` | `4` simples with squared norm `1`: `4` | `2·2 = 4`; eno 273–276, p. 6 | agree | — |
| 11.5 deduction | `Z(Vec(C₂))/ℂ` | twists `±1`, equal to the dual twists | 10.1 needs finite-dimensional Hom spaces and scalar simples; 11.3 gives semisimplicity | value agrees; attribution wrong | R04 |

Rows for statements the diff does not touch (5.1, 6.1, 8.1, 9.1, 10.1, 11.1, 11.3, and the Lean of Layers 2, 3 and 5) stand as in the previous review, of `bd87ef6`.

- Source locators checked against the text: 12 (EGNO Prop. 1.8.4, Def. 7.9.12, Ex. 7.9.14, Rem. 6.5.9, Def. 7.21.3, Thm 7.21.7, Rem. 7.21.11; ENO Def. 2.2, Thm 2.15; ENO04 Thm 7.3; DGNO Prop. 2.3; NS Def. 3.1). One is cited beyond its hypotheses (R03); one target has no locator (R01).
- Library declarations opened at the pins (Mathlib `1b1ccf4`, Tau Ceti `2fd255d`): `Pivotal/Trace.lean:171, 336, 341, 377, 385`; `Pivotal/Simple.lean:79, 99–109`; `Semisimple/Rigid.lean:89`; `Pivotal/Character.lean:228–239`; `Pivotal/FrobeniusSchur.lean:76, 160, 287`; `FDRep/Pivotal.lean:55, 63`; `Pivotal/Symmetric.lean:65`; `Center/Preadditive.lean:225`; `Preadditive/Schur.lean:66`; Mathlib `RepresentationTheory/Invariants.lean:141`.
- Cross-roadmap citations resolved: OcneanuRigidity (at its head) cites 6.1, 6.2, 6.9, 11.1 and 11.2 and takes `normGlobalDim C a` with the family (its README 73–75, 152–155); PresentationsOfMonoidalCategories cites 3.3 and 8.1. CharacterTheory 1183 and CategoricalOperatorAlgebras 155 cite “Layer 8”, which README 166 maps.
- Gate at `cb9ee7c` (rerun): OK, every check `0`; no change outside the folder.
- Elaboration: `Suggested.lean` gives 19 `sorry` warnings and nothing else. `#check @` on all 23 declarations: every changed signature keeps its binders (`normGlobalDim` keeps `Abelian` and `Fintype`; `a` and `b` are explicit). 0 changed.
- One-tactic probe (`rfl`, `simp`, `infer_instance`, `exact?`) on all 19 theorems in a scratch copy: none closes.
- Dependency check: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- Headlines: 19 stated; the module docstring's not-statable list (Layer 8, 9.1, 6.4–6.8, 11.1–11.2) is unchanged and still accurate.

Overlap check: read PresentationsOfMonoidalCategories, OcneanuRigidity, CategoricalOperatorAlgebras, QuantumGroups, TemperleyLieb. For `squaredNorm`, `doubleDualTrace`, `normGlobalDim`, the Radford isomorphism and the pivotalization, the owner is PivotalSpherical: it is the only `Suggested.lean` that declares them, and OcneanuRigidity cites them. No object has two owners.

Source independence: changed passages only; 9 passages compared with 4 sources (egno, eno, dgno, ns). Nothing is shared beyond formulas and a dozen-word standard definition (6.2 against eno 179). Largest share egno, 15 of 30 bracketed citations. Contents were not compared again: the diff adds, removes and reorders no layer.

## Not verifiable

- `freyd-yetter`: settled as uncertified; the head consumes only the pinned `TauCeti.pivotalIsoApp_rightDual`.
- 8.4's indicator formula and 11.2's averaging identity are marked as deductions and cite no text for the formula; they were checked only by computing the instances in the table.

## Source issues

- none

## For the human reviewers

- none
