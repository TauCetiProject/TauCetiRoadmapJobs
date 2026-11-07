# FIX-DESIGN-RationalAnalyticPrismatization~4

Files edited:

- `packages/RationalAnalyticPrismatization/design/README.md`
- `packages/RationalAnalyticPrismatization/design/plan.json`
- `packages/RationalAnalyticPrismatization/sources.toml`: the sources service added `And21` (Andreychev, arXiv:2105.12591v1, open repository, certified, `cited_for = ["Design: 1.7"]`).

Every README change was made by the same string replacement in both README and plan, so the plan's strings still match the README word for word. A script recheck found all 558 target statements, API bullets, tests, gap `needs` and gap `detail` strings in the README, with 0 missing.

## F01 (P1) — applied

Last round marked this not actionable because AnalyticStacks had no design. That reason no longer holds. On the board's main:

- `packages/AnalyticStacks/design/` exists, and its `review.json` has status `accepted` (2026-10-26, one conditional gap, `nuclear-hom-criterion`).
- `merge-order/ORDER.txt` lists AnalyticStacks at line 224. That is before MotivesAndAlgebraicCyclesPartII (227) and before LocallyAnalyticRepresentationsOfLocalGroups (316), after which this roadmap is placed.

I checked every mapping in the review's table against the statement of that AnalyticStacks section. All 18 hold, with the trims of F03–F06.

Changes:

- **plan.json.** `gaps[0..17]`: `supplier` changed from `"none"` to `"AnalyticStacks"`, and `section` set to the review's sections. `fredholm-criteria` becomes §4.4(1), (3)–(5) and `nuclear-modules` becomes §4.3(1)–(2).
- **README labels.** In all 18 paragraphs, "No owner (proposed roadmap AnalyticStacks)" → "From TauCetiRoadmap.AnalyticStacks §…".
- **README heading.** "Required contracts with missing owners" → "Declared gaps", with a new intro paragraph.
- **New supplier subsection.** Added `### From TauCetiRoadmap.AnalyticStacks` with the sections consumed. It notes that AnalyticStacks §4.3 rests on its own gap `nuclear-hom-criterion`. A matching `suppliers` entry was added to the plan.
- **Scope paragraph.** "has no owner … proposed AnalyticStacks …" → "is AnalyticStacks (Layers 0–7), consumed through the declared gaps".
- **Mathlib sentence.** "supplied by the contract `analytic-stack-topos`" → "CondAni is AnalyticStacks §2.1".

## F02 (P1) — not actionable in this package: Gestalten have no owner, and creating a Gestalten roadmap is a board decision

The claim is correct. AnalyticStacks Scope ("Left to other roadmaps", second bullet) assigns Gestalten to "a roadmap of their own placed after this one". `roadmaps grep -i gestalt` matches no roadmap on main or at an open head other than these two designs.

The two gaps are already declared, with `supplier: none`. Their `section` now reads "none: no roadmap owns Gestalten; AnalyticStacks … assigns them to a roadmap of their own". The README labels now read "No owner", and the Declared gaps intro says why.

I did not take the review's option (b), owning the n = 0 theory here. Stating 0-affine and 0-proper maps needs the category of Gestalten, lim_n CAlg(nPr_κ)^op (ALRS line 705), and the transmutation functor (Gest Prop. 9.5). That is general higher-categorical theory, not prismatization. Planning it here would make this roadmap the owner of a foundation that AnalyticStacks has already assigned elsewhere.

Whether to file a Gestalten roadmap target is for a human. This is also the residue of a finding the previous round marked not actionable.

## F03 (P1) — applied

The claim is verified: Sch24 Prop. VI.1.7 (Sch24 line 1755) is the surjection criterion. And21 §5 assumes a sheafy analytic Huber pair with the structure (A, A⁺)_■ (And21 line 1840–1842). AnalyticStacks §4.4(6) covers only that case.

Changes:

- **`fredholm-criteria`.** The `needs` sentence now covers only the criteria: descent of connectivity and perfect amplitude, the trace-class characterization (VI.1.5) and the surjection criterion (VI.1.7). The Supply sentence now says what each Sch24 locator states and that the Banach case is 1.7.
- **1.7 statement.** It now proves that every Banach ℚ_p-algebra with the induced structure is Fredholm, and then reduces Gelfand rings to it. Its locator notes that ABLB Prop. 3.3.5 takes the Banach case from And21 Thm 5.50, which is stated for sheafy Huber pairs.
- **1.7 route.** The "Sch24 VI.1.7" step is replaced by And21's argument run for the generators B ⊗ ℚ_{p,■}[S]. I read And21 Lemmas 5.48–5.49 and 5.51 (And21 line 2687–2800); the null-sequence factorisation uses only that C(S, B) is a Banach B-module.
- **1.7 Checks.** Two added: the two structures on ℚ_p⟨T⟩, and ℚ_p[ε]/ε².
- **1.7 hypotheses.** Updated in the plan.
- **References.** And21 added.

## F04 (P2) — applied

Changes:

- **`nuclear-modules` `needs`.** Trimmed to the review's sentence, which AnalyticStacks §4.3(1)–(2) states.
- **Supply sentence.** Now "ABLB Definition A.0.4 and Lemmas A.0.6–A.0.9; descent along descendable maps of Gelfand rings is 2.3". The AM24 clause is deleted.

AM24 stays in the manifest and in the description of 10.2's route.

I checked the three consumers:

- 2.3: pro-constancy, plus the Hom criterion for the ℚ_p⟨T⟩ Check.
- 3.2: ABLB §§5.5–5.6.
- 10.2: comodule presentation; its Check cites Man26.

None uses the deleted clauses. The gap title is now "Nuclear modules over solid ℚ_p-algebras".

## F05 (P2) — applied

Changes:

- **`solid-smooth-duality` `needs`.** "dualizing complex Ω^d[d], so that ω_g ≅ L_g[d]" → "ω_g ≅ det(L_g)[d] = Ω^d_g[d], canonical up to a sign depending only on d; in relative dimension one ω_g ≅ L_g[1]".
- **Supply sentence.** It now says ALRS Remark 6.5.6 writes L_g[d] for det(L_g)[d], and that the two agree for the d = 1 maps it is used on.

Pattern search: no other "L_g[d]" or "L[d]" in the README. 3.3 uses O[2d], which is det form over a point, and 12.2 uses d = 1.

## F06 (P3) — applied

- **`classifying-stack-dualizing`.** Now reads "second-countable locally pro-p group". The consumers are the p-adic Lie groups of 10.3 and ℚ_p^× in 12.2, all second-countable.
- **`hypercover-inversion`.** Now states the AnalyticStacks §0.13(6) form: a !-sheaf of full subcategories of D(−), fully faithful along !-hypercovers, inverts every !-equivalence.
- **2.3.** ALRS Lemma 2.1.9 is now a target sentence: "prove the criterion used for D^+ and Nuc: …".
- **`formal-cone-adic-filtration`.** Restated for pairs A → B with induced structure, surjective on π₀, as the algebraic cone over A^{1,alg}/G_m^alg. Supply is RCSolid Remarks 7.7.17–7.7.18. The extension to !-Zariski closed maps is assigned to 5.1.
- **5.1.** It now defines the algebraic cone X^{cone-alg} and its formal version (ALRS Remark 2.9.7(1)), which 9.5 already used without a definition. It also proves the !-Zariski statement by descent (ALRS Remark 2.9.7(2), ALRS line 2086). Its *Needs:* line gains §2.1 and the contract, and it gets one new Check.
- **plan.json.** `neededBy` of the gap gains 5.1, and 5.1's prerequisites gain the gap.

## F07 (P3) — applied

I added a convention Check to 12.2 (README and plan test `tateDuality_modulusWitness`):

- **Setting.** The mirabolic ℚ_p ⋊ ℚ_p^×, with a acting by multiplication (BC(O)^× acting on BC(O(1)), ALRS line 4175) and K = ℤ_p ⋊ (1 + pℤ_p).
- **Value.** δ(p) = [pℤ_p : ℤ_p] = p⁻¹, which agrees with AnalyticStacks Conventions (4) and HM line 4926–4943.
- **Source.** ALRS Remark 6.5.5 (ALRS line 8819) writes the inverse.
- **Dictionary forced by the result O⟨1⟩[2].** A character χ goes to (ℚ_p, χ(p)⁻¹φ).
- **Wrong value named.** Using ALRS's |a|⁻¹ with that dictionary gives O⟨−1⟩[2].

The stated targets of 12.2 are unchanged.

## F08 (P3) — applied

Two rephrasings, mirrored in the plan:

- 3.5: "sends connective pseudo-coherent objects to locally connective objects" → "carries connective pseudo-coherent objects to objects that are locally connective".
- 5.4 (the review says 5.3; the passage is in 5.4): "the overconvergent shifted tangent bundle T^†_X[1](−1)" → "the shifted tangent bundle T_X[1](−1) restricted to its overconvergent neighbourhood of zero, T^†_X[1](−1)".

## F09 (P3) — applied

- **2.8 Check.** It now ends "…not the inverse image of a geometric morphism into GelfStk; it is one into the slice of GelfStk over the image of Marc(ℚ_p) (ABLB Proposition 4.5.5, p. 52, ABLB line 2737)". Updated in both README and plan.
- **Mathlib sentence.** Fixed under F01.

## Checks run

- **Dependency check** at the checkout's `merge-order/ORDER.txt`:
  ```
  candidate: RationalAnalyticPrismatization is not in the merge order yet; checked as if placed after LocallyAnalyticRepresentationsOfLocalGroups (the intake inserts it when its design is accepted)
  depcheck: 56 roadmaps, 667 edges, 0 problem(s)
  ```
  The same command against the board main's `ORDER.txt`, which lists AnalyticStacks at 224, gives `depcheck: 56 roadmaps, 668 edges, 0 problem(s)`. Neither run shows an UPWARD or CYCLE line.
- **`roadmaps resolve`.** It lists four citations found nowhere: MotivesAndAlgebraicCyclesPartII §BM.0, LocallyAnalyticRepresentationsOfLocalGroups §§LR.2, LocallyAnalyticDistributionsPartII §ND.0 and AnalyticStacks §2.1. All four are accepted board packages earlier in the merge order. Their sections exist; AnalyticStacks §2.1 is "Light condensed animated rings and their modules".
- **Lean.** There is no `Suggested.lean` at the design stage, so no elaboration or `#check` pass was run, and no Lean names changed.
- **Ownership.** Checked against open pull requests with `roadmaps grep` (Gestalten: none).

## Adversarial pass (changed statements)

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| 1.7 Banach ⇒ Fredholm | B = 0; ℚ_p; ℚ_p × ℚ_p; ℚ_p[ε]/ε²; ℚ_p⟨T⟩ induced vs (ℚ_p⟨T⟩, ℤ_p⟨T⟩)_■ | B = 0: D = 0 and every object is perfect. ℚ_p: dualizable = bounded finite-dimensional complexes. Product: pairs, ranks may differ. ℚ_p[ε]/ε²: B/ε has an infinite resolution, so it is not dualizable. ℚ_p⟨T⟩: two distinct analytic rings, both Fredholm. | holds; two Checks added |
| `fredholm-criteria` | ℚ_p, trace-class f on ℚ_{p,■}[S] | cone(1 − f) = [ℚ_p^n → ℚ_p^n], which is perfect (And21 Lemma 5.51 shape) | holds |
| `nuclear-modules` | ℚ_p⟨T⟩; ∏_ℕ ℚ_p; ℚ_{p,■}[S], S infinite | nuclear and not dualizable; nuclear (countable limit); compact and not nuclear | holds |
| `solid-smooth-duality` | d = 0, 1, 2 | det 0 = O, so ω = O (étale). d = 1: L[1]. 𝔸²: det = O[2], invertible, while L[2] = O²[2] is not. | old clause false for d ≥ 2; replaced |
| `classifying-stack-dualizing` | G = 1; G = ℤ_p; mirabolic; G = ∏_{uncountable} ℤ_p | ω = 1. ℤ_p: δ = 1. Mirabolic: δ(p) = p⁻¹. Uncountable product: not light, so excluded by second-countability. | hypothesis added |
| `hypercover-inversion` | Perf^{[a,b]}, D^+, Nuc ⊂ D | each is a full subcategory of the sheaf D; the §0.13(6) form applies | holds |
| `formal-cone-adic-filtration` (pairs) | ℤ[x] → ℤ; A → A; A → 0 | gr = Sym(ℤx̄), so the cone is the normal line. Identity: gr = A in degree 0, cone = base × Â¹/G_m. A → 0: Fil^n = A for all n, Rees = A[t^{±1}], cone = G_m/G_m, which matches the 5.1 Check ∅^cone = G_m/G_m. | holds |
| 5.1 new Check | zero section of GSpec(ℚ_p⟨x⟩); identity | special fibre Spec ℚ_p[x̄] = T_{Z/X}[1]; identity gives X × Â¹/G_m^alg | holds |
| 12.2 modulus Check | g = p, K = ℤ_p ⋊ (1 + pℤ_p) | gKg⁻¹ ∩ translations = pℤ_p, so δ(p) = μ(pℤ_p)/μ(ℤ_p) = p⁻¹. δ⁻¹(p) = p goes to (ℚ_p, p⁻¹φ) = O⟨1⟩. | records the convention |
| 2.8 Check | final objects | Marc(ℚ_p)^ ≠ GSpec(ℚ_p) (ABLB Ex. 4.5.6); the slice form is ABLB Prop. 4.5.5 | holds |

## For the maintainer

- AnalyticStacks is now the supplier of 18 gaps. Its §4.3 is conditional on its own gap `nuclear-hom-criterion` (RefinedTraceMethods §4.3), so this roadmap's `nuclear-modules` inherits that condition.
- The checkout's `merge-order/ORDER.txt` does not yet list AnalyticStacks; the board's main lists it at 224. The gate passes against both.
- Two gaps remain without an owner: `gestalten-affine-proper` and `gestalten-transmutation`. A human must decide whether a Gestalten roadmap is filed.
- No Lean names changed. No other roadmap cites this one.
- No suspicious instructions were found in the review text.
