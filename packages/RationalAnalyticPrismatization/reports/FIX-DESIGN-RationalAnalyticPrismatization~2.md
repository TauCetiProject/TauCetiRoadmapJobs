# FIX-DESIGN-RationalAnalyticPrismatization~2

Files edited: `packages/RationalAnalyticPrismatization/design/README.md`, `packages/RationalAnalyticPrismatization/design/plan.json`, `packages/RationalAnalyticPrismatization/sources.toml`. Every finding of the review was checked against the cached sources (ALRS, ABLB, Gest, HM) and the pinned Tau Ceti.

## F01 (P1) — not actionable in this package: no roadmap owns the analytic-stack layer, and creating the roadmap AnalyticStacks is a board decision

Verified. Nothing owns light analytic rings over ℚ_{p,■}, the !-topos of analytic stacks, its six functors or Gestalten:
- `roadmaps grep -i 'analytic stack'` finds only usage. The nearest object is VStackSheavesAndLisseCategories VS2.2 (open head), which covers analytic spectra of *discrete* rings with ℤ_■-solid modules and Zariski gluing. That is not the !-topology over ℚ_{p,■} with Banach/Gelfand algebras.
- `roadmaps grep -i gestalt` returns "No match on main or in any open roadmap pull request". Among the board packages, only this one mentions Gestalten.

No edit inside this package can name a supplier that does not exist, and the brief forbids inventing one. Filing AnalyticStacks (or accepting supplier-less contracts) is for a human. The contracts are already declared as gaps with supplier `none`. After F02 and F03 they are 20 single-deliverable gaps (21 gaps in all with the owned `proetale-v-comparison`), each proposed for AnalyticStacks and precise enough to hand to that roadmap.

## F02 (P2) — applied

Verified. ALRS proves 0-properness in the Gestalten-extended formalism E₁ (Construction 2.1.2, ALRS line 704; Remark 2.1.4, ALRS line 780). ALRS Remark 2.1.3 (ALRS line 751) only transfers properties from E₂ to E₁ for maps in E₀. The claim "0-proper ⇒ D-proper in the ABLB formalism" had no source. I took repair (a), so nothing is narrowed below the source:
- **2.2.** Now states the source's formalism E₁: transmutation into Gestalten, the 3-functor formalism on 0-proper maps (HM Proposition 3.3.3, HM line 1924), extension by HM Theorem 3.4.11, 0-proper ⇒ prim with δ_f ≅ 1 and f_! ≅ f_* (ALRS Remark 2.1.4), and the E₀ ⊂ E₁ ∩ E₂ comparison (ALRS Remark 2.1.3). It has new API bullets and a new Check.
- **New gaps.** `gestalten-affine-proper` covers Gest Definitions 6.5, 6.9, 6.12 and Propositions 6.6, 6.10, 6.13, 7.9 (Gest lines 1862–2479). `gestalten-transmutation` covers Gest Proposition 9.5 and Corollary 9.8 (Gest lines 3082, 3166). Both have supplier none (see F01).
- **"0-proper"/"0-affine" restored where ALRS proves it:** 2.7 (ALRS Lemma 2.2.5), 10.3 (Lemmas 5.2.10, 5.2.12), 10.6, 10.12(1), 11.1, 11.2, 11.4, 11.5(1), 11.6, 12.1(3), 12.2(2)–(3), 12.4. The routes of 12.3 and 12.5 changed with them.
- **10.2 keeps "D-proper".** ALRS Lemma 5.2.2(3) (ALRS line 4869) says "proper", which is cohomological properness, now in E₁.
- **12.2 route.** It now says that ALRS proves (1) through ABLB Theorem 7.1.1, and that the representation-theoretic computation is ALRS Remark 6.5.5. Remark 6.5.5 is a full computation (ALRS lines 8797–8821), not a sketch, so the route keeps it. The sketch-only Remark 6.5.9 is not used as a route.
- Scope (line 11), Conventions (line 19), the Layer 2 intro and the Layer 12 intro were rewritten to match.

## F03 (P2) — applied

Each compound gap is split into one gap per deliverable, with the same slug in `plan.json` (`gaps` and every target's `prerequisites`) and in the README (contract paragraphs, `*Needs:*` lines, layer Dependencies). Gap `neededBy` lists equal the targets that cite the gap; I checked this with a script.
- `analytic-stacks` → `light-solid-analytic-rings`, `analytic-stack-topos`, `qcoh-six-functors`, `suave-prim-calculus`, `classifying-stack-dualizing`, `hypercover-inversion`.
- `analytic-stacks-betti-nuclear` → `betti-realization`, `nuclear-modules`, `fredholm-criteria`.
- `analytic-cartier-duality` → `vector-group-cartier-duality`, `stacky-cartier-duality`, `qcoh-bgm-description`.
- `algebraic-stacks-as-analytic` → `algebraic-stacks-condensed`, `formal-line-shearing`, `formal-cone-adic-filtration`.
- `solid-serre-duality` → `regular-immersion-suave`, `solid-smooth-duality`.
- `solid-cotangent-complex` and `proetale-v-comparison` were already single deliverables and are unchanged.

The Amice-transform duality (RC26a Proposition 3.2.32) was part of the old cartier contract, but no target cites it, so it is not carried as a gap. The Layer 8 Dependencies line no longer names a contract: no Layer 8 target cites one. The Layer 9 line now names the contracts that 9.5 actually uses.

## F04 (P3) — applied

Verified at the Tau Ceti pin a91d3aa:
- `TauCeti.FarguesFontaine.spaY` (Y.lean:116) and `frobeniusHomeomorph` (Y.lean:218).
- `IsRadiusLowerBound`/`IsRadiusUpperBound` (Window.lean:97, :103).
- `isRadiusLowerBound_comap_frobenius_iff` (Window.lean:144): q ≤ κ(φ*v) ⇔ q/p ≤ κ(v), so κ∘φ = p·κ. This is the same normalization as 6.1.
- `windowU`/`windowV` (Window.lean:255, :262).
- `spaX`, `compactSpace_spaX`, `t0Space_spaX` (Quotient.lean:56, 200, 212).

Old: "No Tau Ceti declaration is imported directly". New: a "From Tau Ceti" list with the hypotheses of these declarations. 6.1's comparison bullet now cites them (README and plan), and 6.1 gains two `tauceti:` prerequisites.

## F05 (P3) — applied

With F02(a), 12.1(3)–(4) and 12.4 are restated at the source's generality: "locally †-l.c.i." becomes "locally of †-finite presentation" (ALRS Proposition 6.5.3, ALRS line 8649; Proposition 6.5.10, ALRS line 8938). The locally †-l.c.i. class stays defined in 12.1, with an alternative route through `regular-immersion-suave`.

The cusp Check is no longer a non-example. It now computes L_{k/R} = k²[1] ⊕ k[2]: this is perfect, so the cusp is covered by (3), but it lies outside amplitude [−1, 0]. A new non-example covers the non-finitely-presented ℚ_p⟨T_n⟩ → ℚ_p. 12.4's hypotheses changed in the plan as well.

## F06 (P3) — applied differently

- **Applied.** The bare locators now carry their source:
  - ALRS Remark 3.1.6 (ALRS line 2263), ALRS Lemma 3.5.2 (ALRS line 2670), ALRS Remark 2.9.7(1)–(2) (ALRS line 2062);
  - ABLB Lemma 4.4.3, Proposition 4.4.7, Corollary 4.4.10 (ABLB lines 2414, 2531, 2641).
  - The same pattern was repaired at ALRS Proposition 2.8.15 (9.2 route) and at about 55 other bare ALRS locators in routes and Checks (e.g. Lemma 2.8.6 in the Conventions; Lemmas 2.1.9, 2.6.5, 4.2.5; Propositions 4.3.1, 6.7.1, 6.7.7; Remark 2.9.10). Each was checked to exist in ALRS.
  - The plan's mirrored test texts were updated to match.
- **Disputed: line 25.** The README's attribution is right. ABLB Definition 6.2.8 (ABLB line 5300) defines the Tate twist on Marc(𝔽_p)^HK as O⟨1⟩ := O(1)[2]. The ABLB extraction also uses O⟨1⟩ at ABLB lines 3683–3687. I added that locator next to ALRS Theorem 6.5.4(1) (ALRS line 8746).

## F07 (P3) — applied

- 12.3: "Let f: Y → X be a rigid smooth morphism of Berkovich spaces of relative dimension d" → "Let d ≥ 0 and let f: Y → X be a map of Berkovich spaces, rigid smooth and of pure relative dimension d" (also in the plan hypothesis).
- 9.3: "an epimorphism … which is infinitesimally cohesive and admits a cotangent complex" → "an infinitesimally cohesive epimorphism of Gelfand stacks with a cotangent complex".

A 12-word shingle scan against ALRS, ABLB, Gest and HM found two more prose runs, both rephrased in README and plan: "a fully faithful functor from partially proper rigid spaces to derived Berkovich" (2.6) and "as a commutative differential graded algebra" (5.3). The other hits are formulas and bibliography titles.

## Checks run

Dependency gate:

```
candidate: RationalAnalyticPrismatization is not in the merge order yet; checked as if placed after LocallyAnalyticRepresentationsOfLocalGroups (the intake inserts it when its design is accepted)
depcheck: 56 roadmaps, 667 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

`roadmaps resolve` gives three leads: MotivesAndAlgebraicCyclesPartII §BM.0, LocallyAnalyticRepresentationsOfLocalGroups §§LR.2, LocallyAnalyticDistributionsPartII §ND.0. All three are board packages at merge-order positions 220, 302 and 300, earlier than this roadmap's placement, and their sections exist. The resolver reports no Lean names found nowhere.

Lean: the design stage has no `Suggested.lean`, so there was nothing to elaborate and no `#check` pass. The new Tau Ceti names were verified by reading the pinned files (namespaces `TauCeti.FarguesFontaine` at Y.lean:71, Window.lean:86, Quotient.lean:46).

Consistency: `plan.json` parses, and every target statement, API statement and test statement of the plan occurs verbatim in the README (0 mismatches). No old slug remains in either file. A policy grep for process words, LaTeX and local paths found 0 hits.

## Adversarial pass (changed statements)

| Statement | Instances | Values | Result / change |
|---|---|---|---|
| 2.2 "maps of affinoid Gelfand stacks are 0-affine, f_! = f_*" | GSpec(ℚ_p⟨T⟩) → GSpec(ℚ_p) | f_! = f_* = forgetful; Γ(O) = ℚ_p⟨T⟩ | holds (ALRS line 731) |
| 2.2 open disc not 0-proper | open unit disc D | f_!O = RΓ_c in degree 1; f_*O = O(D) in degree 0; ≠, so not 0-proper (0-proper ⇒ f_! ≅ f_*) | Check stated |
| 2.2 "truncated 0-proper ⇒ D-proper" | n-truncated f | Δ_f is 0-proper (Gest Def 6.12 is closed under diagonals) and (n−1)-truncated; induction ends at an isomorphism; each stage is prim by Remark 2.1.4 | holds; untruncated maps are only claimed 0-proper |
| 2.2 left cancellation | Z → Y → X, Y → X 0-proper | Gest Prop 6.13(iv) in ring direction A → B → C ↔ X ← Y ← Z | direction checked |
| 2.2 E₀ comparison | affinoid map | both lower-shriek functors are the forgetful functor | consistent with ALRS Remark 2.1.3; no claim E₁ = E₂ |
| 2.7 h: X → \|X\|^Betti | X affinoid | base change to S_i affinoid ⇒ 0-affine; Gest Prop 7.9 gives locality | 0-affine (ALRS line 966) |
| 10.3 BG^la, BG^{≤r} | G finite | G^la = G^cont; s = id is 0-proper; GSpec → BG 0-proper | matches ALRS Lemma 5.2.12(1)–(2) wording |
| 10.2 stays D-proper | Π trivial | f = id, proper | source says "proper" (line 4869) |
| 11.1/11.6 α_X 0-proper ⇒ α_*O = O and full faithfulness | X = GSpec(ℚ_p) | α_*1 = 1, prim with δ ≅ 1 | matches ALRS Thm 6.1.1(1), 6.3.1 |
| 12.1(3) finite presentation | origin of disc; cusp; ℚ_p⟨T_n⟩ → ℚ_p | L = ℚ_p[1] (perfect, yes); L_{k/R} = k²[1] ⊕ k[2] (perfect, yes, not l.c.i.); I/I² infinite-dimensional (no) | Checks recomputed; the cusp moved from non-example to computation |
| 12.1(2) A¹ diagonal | (x, y) ↦ x − y | diagonal = base change of the zero section ⇒ case (3) | matches ALRS proof, line 8666 |
| 12.2(2) β 0-proper with 0-affine diagonal | A¹/G_m → A^{1,dR}/G_m → A^{1,dR}/G_m^dR | first map affinoid-represented; second map has fibre BG_m^† | matches ALRS lines 8769–8784 |
| 12.2(3) ω_{Div¹} | Hodge–Tate locus vs off it | O⟨1⟩ ⊗ I[2]; off HT, I trivial ⇒ O⟨1⟩[2] | unchanged, consistent |
| 12.4 at †-f.p. | P^d, d = 1; open disc | f_*O = O ⊕ O{−1}[−2]; open disc arc map not proper ⇒ excluded | Checks unchanged and consistent |
| Conventions O⟨1⟩ | ABLB Def 6.2.8 | O⟨1⟩ = O(1)[2] in ABLB, ALRS 6.5.4(1); README writes O⟨1⟩ unshifted + [2] | convention unchanged; attribution correct |
| 6.1 vs Tau Ceti radius | q ≤ κ(φ*v) ⇔ q/p ≤ κ(v) | κ(φ*v) = p κ(v) | same normalization as 6.1 and the Conventions |

## For the maintainer

- **Gap slugs were renamed and split (F03).** No other roadmap cites the old slugs. MotivesAndAlgebraicCyclesPartII Interface 5 (`AnalyticStacks:AS.0`) corresponds to `qcoh-six-functors` and `suave-prim-calculus`, as both gaps' `section` fields record.
- **Two new unowned gaps** (`gestalten-affine-proper`, `gestalten-transmutation`) join the AnalyticStacks proposal. F01 is the human decision that settles all 20 supplier-less gaps together.
- **Sources.** `sources.toml`: the Gest locator was widened (Definitions 6.5, 6.9, 6.12; Propositions 6.6, 6.10, 6.13, 7.9, 9.5; Corollary 9.8), the HM locator gained Proposition 3.3.3 and Lemmas 4.4.5–4.4.6, and the `cited_for` lists were updated to the new slugs. Nothing was fetched and no text is missing.
- **Ownership against open work.** The sibling checkouts listed in the brief were searched through `roadmaps grep` for Gestalten and analytic stacks (findings under F01). No notion moved down from a later roadmap.
- **Suspicious text.** None found in the review.
