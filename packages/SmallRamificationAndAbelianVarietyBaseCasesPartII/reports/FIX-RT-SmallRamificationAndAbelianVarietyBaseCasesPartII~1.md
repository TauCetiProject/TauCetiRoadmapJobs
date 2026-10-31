# Repair report: red-team round 1 of SmallRamificationAndAbelianVarietyBaseCasesPartII

There were two reviews. Pass a has findings F01–F02 and pass b has F01–F05, so the IDs F01 and F02 each appear twice. Each section below is headed with the review's own ID, and its first line names the pass. The two reviews do not overlap in content.

Every edit is in `packages/SmallRamificationAndAbelianVarietyBaseCasesPartII/README.md` or in the top-level `gaps` list of `design/plan.json`. `Suggested.lean` is unchanged: no finding touches a Lean statement.

## F01 (P2) — applied

**Pass a: lifting matrix coefficients.**

I checked the witness. Take p=3, r=1 and π²=−3. The lift λ̂=(1+π)²=−2+2π maps to 1−π≠1 in A(E)=O(E)/(π²). The element x=1+π solves x³=λ̂x, since both sides equal −8. But φ₀([x])=[−8]=1, which is not 1+π. Fontaine93 line 322 does not say which lift is meant.

Change in §1.2: "Choose lifts λ̂ₛₜ∈O(E)" now reads "λ̂ₛₜ maps to the image of λₛₜ under W(k)/p→A(E)". Equivalently, v₀(λ̂ₛₜ−[λₛₜ])>r/(p−1). Residue-field lifts alone are excluded, and lifts in W(k) are always permitted. The API bullet on Ĵ is scoped the same way, and the witness is a new negative Check.

Pattern search: §1.3 already said "permitted lifts", and §1.5 uses W(k) lifts. Neither needed an edit.

## F02 (P1) — applied

**Pass a: domain of the unramified-lifting supplier.**

The finding holds. LocalFieldsRamification Layer 2 (on main, `TauCetiRoadmap/LocalFieldsRamification/README.md` line 562) covers finite extensions of local fields with finite residue field. It does not reach K=Frac W(𝔽₃(t)^perf).

The §1.6 *Needs* line changes. Before: "LocalFieldsRamification Layer 2". Now:
- SchemeAndStackFoundations §0.12 `exists_etale_lift` (main, line 1002);
- SchemeAndStackFoundations §0.14 `henselian_pair_permanence` and `henselian_finiteEtale_equivalence` (main, lines 1075 and 1080);
- Mathlib `IsAdicComplete.henselianRing` (`Henselian.lean:170`), `Algebra.Etale` (`Etale/Basic.lean:205`), `StandardEtalePresentation` (`Etale/StandardEtale.lean:261`) and `Ideal.sum_ramification_inertia_eq_finrank` (`RamificationInertia/Basic.lean`).

The §1.6 route now goes through the maximal unramified subextension L₀:
- O(L₀)=W(k)[X]/(g) is standard étale;
- the pair (O(E),a(E)^m) is henselian;
- unique lifting then gives an embedding L₀→E;
- the totally ramified step runs over L₀.

There is a new Check with the infinite residue field k=𝔽₃(t)^perf and α²=t. I updated the supplier contracts for SchemeAndStackFoundations, Mathlib and LocalFieldsRamification, and the Layer 1 Dependencies. No new gap was needed.

## F01 (P2) — applied

**Pass b: `gap:fl-acris-truncation` named this roadmap's own carrier.**

The finding holds. A(E) is defined in §1.1 here, and FiniteFlatGroupsAndIntegralPadicHodgeTheory comes earlier in the merge order. So the gap cannot ask that roadmap for a projection onto A(E).

The gap's `needs` changes, with the same text in the README and plan.json. Before, it asked for "…projection … to the strict valuation quotient". Now it asks for:
- the presentation of A_cris/p, with Filⁱ and φᵢ for 0≤i≤r;
- its identification with Uₛ on the objects of MFₜₒᵣ[0,r] killed by p.

The §1.4 route now defines the projection A_cris/p→A(K̄) in this roadmap and checks that it respects Filⁱ and φᵢ (Fontaine93 lines 304–311).

## F02 (P3) — applied

**Pass b: the consumer statement about EnriquesSurfacesAndIntegralNonexistence.**

I checked the Enriques roadmap at its head (`TauCetiRoadmap/EnriquesSurfacesAndIntegralNonexistence/README.md`). Line 99 declares `gap:fontaine-low-degree-hodge` with supplier PadicHodgeTheory, and line 1127 cites that gap, not this roadmap.

Two statements change:
- Line 15. Before: "consumes the K3 obstruction here". Now: that roadmap declares the obstruction as its own gap, whose content is §3.3 and §4.2 here.
- Downstream consumers. Before: "§§3.11 and 3.13 consumes §4.2". Now: "§3.13 needs, through its declared gap, exactly §3.3 and §4.2".

I wrote "declared gap" deliberately. The wording "supplier gap" made the depcheck read an edge from the Enriques roadmap to this one.

## F03 (P3) — applied

**Pass b: the degree-ten step used a prose decimal.**

The finding holds. The base roadmap's §1.9 row (b) states rd<6.93⇒n≤10; the value 7.00 appears there only in prose.

Before, the README used "rd<7" and "7.00 with monotonicity". Now it uses row (b) together with the tame computation:
- for a tame Galois field, rd=7^(1−1/e);
- e divides 7^f−1, by the injective tame character of LocalFieldsRamification Layer 3, which is added to the Needs;
- for the tame fixed field F′, rd(F′)≤7^(35/36)≈6.6317;
- for tame F of degree at most 287, e≤143 and rd(F)≤7^(142/143)≈6.9054.

This is applied in the scope paragraph, the supplier contract, the §2.4 route, Check and Needs, the Layer 2 Dependencies and the worked example. A new Check shows that the divisibility is needed: e=194 would give 7^(193/194)≈6.9301>6.93.

## F04 (P3) — applied

**Pass b: loose wording in `gap:finite-torsion-kernel-dictionary`.**

The slug and supplier are kept. The `needs` text, which said "dictionary … compatibility …", now states three facts, in both the README and plan.json:
- the kernel field is finite Galois, and G(E) fixes U pointwise exactly when L⊆E;
- the kernel field of U⊕U′ is the compositum of the two kernel fields;
- the kernel field of 𝔽₇(1) is ℚ(ζ₇), of degree 6, with group (ℤ/7)ˣ acting through χ₇.

The reviewer wrote "a profinite G". I wrote G(K) for a field K of characteristic zero instead, because a kernel field only makes sense for a Galois group.

## F05 (P3) — applied differently

**Pass b: the locator for the abstract.**

The old locator was wrong, but the reviewer's "printed p. 1" is also wrong. The abstract (Fontaine93 lines 20–30) lies before the `=== page 2 ===` marker at line 34, on the unnumbered cover page, PDF p. 1. Printed p. 4 is PDF p. 5 (marker at line 119), so printed p. 1 is PDF p. 2, where the introduction starts.

The locator now reads: "lines 23–30, abstract, unnumbered cover page, PDF p. 1; lines 127–139, §1, printed p. 4".

## Checks

- **Elaboration.** `lake env lean` on `Suggested.lean` exits 0. The only warnings are "declaration uses `sorry`" at lines 60 and 74; there are no errors.
- **Signatures.** All four declarations are `#check @`'d in one scratch file, elaborated once. Their types are identical to the supplied signatures and agree with the README. No binder was lost and nothing changed.
- **Dependency check.** Output:

      depcheck: 56 roadmaps, 649 edges, 0 problem(s)

  There is no UPWARD, CYCLE or `moved:` line.
- **Citation resolver.** "Lean names found nowhere: None."

## Adversarial pass on new or changed statements

| Statement | Instances and computed values | Result |
| --- | --- | --- |
| §1.2 permitted lifts | λ̂=(1+π)²: v₀(λ̂−1)=v₀(−3+2π)=1/2, not >1/2; image 1−π. λ̂=1: roots 0,±1, fixed by φ₀. d=0: the condition is empty. | Excludes the bad lift; W(k) lifts pass because p∈b(E), as r/(p−1)<1. |
| §1.6 unramified step | L₀=K: g=X. k=𝔽₃(t)^perf, g=X²−[t]: derivative 2α≠0. E=ℚ₃, L=ℚ₃(π): L₀=K. | Holds with an infinite residue field. |
| §2.4 tame bound | e=6: 5.0611. e=36: 6.6317. e=143: 6.9054. e=194: 6.9301>6.93. f=1 forces e∣6. | Row (b) applies in both steps. |
| fl-acris-truncation | p=3, r=1: φ₁ of the class of α (α³=−3) is α on both sides; positive divided-power terms map to 0. | No reference to A(E). |
| kernel dictionary | U=0: L=K. Weight one at p=3 over ℚ₃: 1 of 3 points fixed, so L⊄E. U⊕𝔽₇(1): the field is E(ζ₇). | Agrees with §§1.5 and 2.4. |

## For the maintainer

- No Lean name changed, and no name that other roadmaps cite changed.
- The A_cris/p→A(K̄) projection is now owned by §1.4 of this roadmap. FiniteFlatGroupsAndIntegralPadicHodgeTheory is asked for less than before.
- EnriquesSurfacesAndIntegralNonexistence still routes `gap:fontaine-low-degree-hodge` to PadicHodgeTheory. This roadmap states that content in §§3.3 and 4.2, so re-pointing that gap is a decision outside this package.
- No new sources were needed, and `needs-references.toml` was not written.
- Ownership was checked against the open roadmap pull requests through `roadmaps grep` and the sibling checkouts.
