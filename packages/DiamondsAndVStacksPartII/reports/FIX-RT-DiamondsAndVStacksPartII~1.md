# Repair report: red-team round 1 of DiamondsAndVStacksPartII

Two reviews were resolved: pass a (findings F01–F09, cited below as a.F01–a.F09) and pass b (findings F01–F09, cited below as b.F01–b.F09). Each finding section names its review pass. The two reviews do not overlap. Both agree that the D11.14 proof does not give the unrestricted statement: a.F01 lists it under "Not verifiable" and b.F01 raises it as a finding. It is settled once, under b.F01.

## F01 (P2) — applied

Review pass a (cited elsewhere in this report as a.F01).

D7.7: "prime ideals of B/B°° that are open" → "prime ideals of B/(B·B°°), equivalently the open prime ideals of B". Added the ℚ_p witness (B·B°° = (1), no algebraic points) and discrete 𝔽_p[[u]] (B°° = 0, two points). Checked the equivalence: an open prime contains every topologically nilpotent element, and a prime containing B°° contains an ideal of definition, so it is open. D7.9, D8.6 and the Conventions already used A·A°°.

## F02 (P3) — applied

Review pass a (cited elsewhere in this report as a.F02).

D9.13 Check: "A nontrivial finite étale V → F^red … not an open immersion" → the Spd W(𝔽_(p²)) → Spd ℤ_p example, whose geometric generic fibre has 2 points, plus the counterexample over Spd(ℤ_p × ℤ_p): a finite étale component inclusion that is open.

## F03 (P3) — applied

Review pass a (cited elsewhere in this report as a.F03).

D11.10 Check: replaced Spd(C, C⁺), which has no structure map to Spa(C, O_C) because C⁺ ⊊ O_C, by Spd(L, L⁺). Here L is the completed perfection of C(T) for the Gauss norm and L⁺ the preimage of the T-adic valuation ring of `k_C(T^(1/p^∞))`. Then O_C ⊂ L⁺. The space has 2 points, 1 of rank one, and its rank-two singleton is patch-open with 0 rank-one points, so it is not cJ. The D11.8 and D11.11 Checks need no base and are unchanged.

## F04 (P1) — applied

Review pass a (cited elsewhere in this report as a.F04).

D9.14: "the étale site of a formal scheme is that of its reduction (AdicSpacesPartIII R2.9)" → the D9.7-generality route. Perfection (SchemeAndStackFoundations §0.24) and nil-thickenings are universal homeomorphisms, so §0.23a lifts V uniquely to compatible étale Vₙ over A/Iⁿ⁺¹. AdicSpacesPartIII F0.3 *adic-systems-equivalence-finite-ideal-type* makes them a formal scheme, which is the neighbourhood by Gleason Corollary 4.28. R2.9 is kept for its noetherian case. Needs now lists D9.7, §0.23a, §0.24 and F0.3. The p-completed ℤ_p[T₁,T₂,…] example is included. All three supplier sections were checked on main: §0.23a has no noetherian restriction, and F0.3's statement says "no noetherian hypothesis is made".

## F05 (P2) — applied

Review pass a (cited elsewhere in this report as a.F05).

D8.1 proof: "v-covers are filtered colimits of κ-small v-covers" → v-covers are cofiltered inverse limits of κ-small v-covers; equivalently their ring maps are filtered colimits, and so are sheaf values. This matches the displayed formula at GLE line 1165.

## F06 (P3) — applied

Review pass a (cited elsewhere in this report as a.F06).

D8.5: "reducedness of X is SW20 Proposition 18.3.1" → the Spec(𝔽_p × 𝔽_p) Check. The unit gives 2 = 2 sections on Spec 𝔽_p, while a terminal collapse would give 1. D11.8: deleted "The predicate satisfied everywhere is constructibly dense", which does not discriminate; five Checks remain, including the Sierpiński negative control.

## F07 (P2) — applied

Review pass a (cited elsewhere in this report as a.F07).

`Suggested.lean` now states D9.1 on native carriers:
- `reductionSpectrum`, a definition with a real body: the primes of A⁺ containing every element that is topologically nilpotent in A.
- `exists_tate_specialization`: for `[TauCeti.Huber.IsTateRing A]` and `P : TauCeti.Huber.Pair A`, there is a map sp from `spa P.plus` to `reductionSpectrum P.plus`, characterized by a ∈ sp(x) ⟺ v_x(a) < 1, that is surjective, `IsSpectralMap` and `IsClosedMap`.

The README D9.1 is widened to the same generality: no completeness and no ℤ_p structure, as Bhatt's affinoid Tate rings require (BHA17 lines 2142–2145). It cites BHA17 Remark 7.4.12 (line 2883) and Theorem 8.1.2 (line 3402). BHA17 was fetched legally from the author's page and recorded in `sources.toml`. The perfectoid homeomorphism clause is named in the docstring as not statable.

Ownership: AdicSpacesPartIII R2.3/R2.4 owns the centre map and specialisation only for type-(S) and locally noetherian formal schemes. A grep of main and the open pull requests found no owner of the Tate-pair theorem, so this roadmap owns it.

## F08 (P3) — applied

Review pass a (cited elsewhere in this report as a.F08).

D11.15 locator: "the paragraph after Remark 5.2 of the introduction (p. 6)" → "Introduction, unnumbered paragraph on normal formal schemes and connected components, p. 6, GLE lines 267–270; §4.6, motivation before Example 4.43, p. 36, GLE lines 1773–1782". Both passages were checked; line 1773 is on page 36.

## F09 (P3) — applied

Review pass a (cited elsewhere in this report as a.F09).

D11.8 Needs: added AdicSpacesPartII R1.9 *classical-points-constructible-density* (from RigidAnalyticGeometry §8.2). R0.9 is kept, marked as the K-affinoid carrier. The same edit was made in the AdicSpacesPartII supplier contract and in the D11b Dependencies line. The supplier text at AdicSpacesPartII README line 10632 was checked on main. D11.15 reaches this through D11.8.

## F01 (P2) — applied

Review pass b (cited elsewhere in this report as b.F01).

D11.14: the "Unrestricted target" and "Intermediate theorem" are replaced by one **Theorem** with the closed-specialization hypothesis. A paragraph explains why GLE's printed generality is not claimed: local noetherianity does not give closed points (the punctured chain Check, a perfect scheme Spec V ∖ {𝔪}), and topological normality only constrains tubes at closed points. It also states sufficient conditions: a quasicompact reduction, or a perfectly finite-type (Jacobson) reduction.

The same change was made in the Summary, the D11b introduction, the D11b Examples, the Downstream consumers sentence and the `Suggested.lean` docstring. D11.15 already verifies the hypothesis. The truth of the unrestricted statement is undecided, so it is not stated as a target.

## F02 (P2) — applied

Review pass b (cited elsewhere in this report as b.F02).

D10.11 gains a **Lemma (unramified descent)**:
1. (A_Ŏ)^Γ = A. Proof: O_(E_r) ⊗ O_(E_r) ≅ ∏ O_(E_r) via §0.23a, and Mathlib `Algebra.IsEffective.of_faithfullyFlat`.
2. Hom(𝔛, 𝔜) ≅ Hom(𝔛_Ŏ, 𝔜_Ŏ)^Γ.
3. Flatness and normality persist (a regular map; SchemeAndStackFoundations §0.21).
4. Spd Ŏ → Spd O_E is surjective, since Spd O_C → Spd O_E is a v-cover by DiamondsAndVStacks D6.7 and factors through Spd Ŏ.

The proof sketch now uses the lemma, and Needs was updated. I applied this differently from the reviewer in one respect: the v-sheaf side needs only that Spd Ŏ → Spd O_E is an epimorphism, not a Γ-quotient isomorphism. Three Checks were added.

## F03 (P3) — applied

Review pass b (cited elsewhere in this report as b.F03).

"SchemeAndStackFoundations:SF.0", seven occurrences, replaced:
- D7.4 → §0.24
- D9.12 → §0.23a
- D10.12, D10.13, D11.15, D11.20 → §0.21
- D10.1 → Mathlib `AlgebraicGeometry.ext_of_isDominant_of_isSeparated` (Mathlib/AlgebraicGeometry/Morphisms/Separated.lean:288, checked at the pin)

D10.1's proof now states the hypotheses (R^(♯+) reduced; Spec R^♯ dominant). The declaration was added to the "From Mathlib" contract.

## F04 (P3) — applied

Review pass b (cited elsewhere in this report as b.F04).

Conventions now defines FS_O as AdicSpacesPartIII R2.9's `FormalScheme.FSC` with C = O_E, citing DJ95 Definition 7.0.1 (DJ95 line 2427). It says that formal schemes locally formally of finite type belong to it, that structure maps need not be adic, and that "the standing FS convention" refers to this paragraph. The AdicSpacesPartIII contract now names `FormalScheme.FSC` and `rigOfFSC`, and D10.2 cites `rigOfFSC`'s universal property.

## F05 (P3) — applied

Review pass b (cited elsewhere in this report as b.F05).

D10.15 now takes `M^v_(𝒢,μ)` to be GeometricSatakeAndFusion GS0's integral v-sheaf local model ("Bounded admissible affine flag loci"), noting that D10.9 is the v-closure it uses, and adds that GS0 target to Needs; the transfer map is GS0's. For the unused-hypothesis note: "with reduced special fibre" is added to the definition of M^loc, matching SW20 Conjecture 21.4.1 (SW20 line 7490), so KPZ Lemma 3.4.1's hypothesis is now used. The GeometricSatakeAndFusion v-closure order remark is for the maintainer.

## F06 (P3) — applied differently

Review pass b (cited elsewhere in this report as b.F06).

D10.7: the support-m point now comes from pinned Tau Ceti `TauCeti.ValuationSpectrum.exists_mem_spa_supp_eq_of_isMaximal` (TauCeti/AlgebraicGeometry/AdicSpace/Spa/Support.lean:114, for complete Hausdorff Huber pairs; R is a completed rational localization). This replaces both the miscited R0.18 and the reviewer's gap reference: the gap's "dense" clause does not give a point for a prescribed m, while the pinned theorem does. It was added to Needs and to the Tau Ceti contract.

## F07 (P3) — applied

Review pass b (cited elsewhere in this report as b.F07).

D8 Examples: "(GLE Example 3.21 and Proposition 3.23)" → "(GLE Proposition 3.23, GLE line 1307; the discrete-pair contrast … is GLE Example 3.21, GLE line 1298)". Both were checked at those lines.

## F08 (P3) — applied

Review pass b (cited elsewhere in this report as b.F08).

D10.6: "separated locally noetherian formal scheme" → "separated formal scheme as in D9.7 (finitely generated ideal of definition containing p; no noetherian hypothesis)". The proof uses only D9.7, D8.6 and D8.7, which are stated in that generality. Added the Check for Spf O_C: the maximal diamond open is Spd(C, O_C) and its complement is Spd k_C.

## F09 (P3) — applied

Review pass b (cited elsewhere in this report as b.F09).

D7.3: the compatibility and Applications text no longer say D7.3 "gives" D6.9. They now say that DiamondsAndVStacks D6.9's seminormalization comparison is the case f = X^sn → X, proved there independently, and that D7.3 is not an input to it. This was checked against DiamondsAndVStacks D6.9 at the #820 head. No Lean name from another roadmap is backticked.

## Checks run

- **Elaboration.** `lake env lean packages/DiamondsAndVStacksPartII/Suggested.lean` gives one warning, "declaration uses `sorry`" (line 68), and no errors. The only imports are `import Mathlib`, `TauCeti.RingTheory.Huber.Pair` and `TauCeti.AlgebraicGeometry.AdicSpace.Spa.Basic`, all pinned and already built.
- **Signature check.** A scratch file with `#check @…reductionSpectrum` and `#check @…exists_tate_specialization` was elaborated once. Elaborated types:
  - `{A} [CommRing A] [TopologicalSpace A] (Aplus : Subring A) : Set (PrimeSpectrum ↥Aplus)`
  - `∀ {A} [CommRing A] [TopologicalSpace A] [IsTopologicalRing A] [TauCeti.Huber.IsTateRing A] (P : TauCeti.Huber.Pair A), ∃ sp, (∀ x a, a ∈ (↑(sp x)).asIdeal ↔ (↑x).valuation ↑a < 1) ∧ Surjective sp ∧ IsSpectralMap sp ∧ IsClosedMap sp`
  
  There are no section variables, so no binder was dropped. Both match README D9.1.
- **Dependency check.** `depcheck: 56 roadmaps, 652 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line.
- **Citation resolver.** No Lean names are unresolved. Two cross-roadmap leads come from untouched lines: ArcTopologyAndDescent, a board package in the merge order, and GeometricSatakeAndFusionPartII, a board package and consumer.
- **Gate failures.** None were listed.
- **Plan.** `design/plan.json` is unchanged; no supplier gap was added.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| D9.1 / `exists_tate_specialization` | zero ring; (ℚ_p,ℤ_p); rank-two field pair; 1 ∈ A⁺ | Spv 0 = ∅ so the map is ∅ → ∅; 1 point → {(p)}, with a ∈ (p) ⟺ abs(a) < 1; 2 points → 2 primes over 𝔪; v(1) = 1 so 1 ∉ sp(x) | holds; strict inequality pinned |
| D7.7 algebraic points | ℚ_p; discrete 𝔽_p[[u]] | B·B°° = (1), 0 points; B°° = 0, 2 primes | holds |
| D9.14 formal clause | identity, two-copy, p-completed ℤ_p[T₁,…] | lifts are Spf A and Spf(A×A); counts 1, 2 | holds without noetherianity |
| D10.6 generalized | Spf ℤ_p; Spf O_C; ∅ | Spd ℚ_p / Spd(C,O_C) / ∅ | holds |
| D10.11 lemma | ℤ_p, k = 𝔽_p; ℤ_(p²); ramified ℤ_p[√p] | invariants ℤ_p; tensor has 2 factors; ramified tensor is local, not a product | product step needs unramified |
| D10.11 descent | Spf ℤ_p → Spf W(𝔽_(p²)) | 0 maps over ℤ_p; 2 after base change, swapped by Γ | 0 = 0 invariants |
| D11.14 | Spd O; ∅; two-branch; punctured chain | 1 → 1; ∅ → ∅; 2 → 1 (not normal); 0 closed points (hypothesis fails) | hypothesis needed by the proof |
| D11.10 Check | Spd(L, L⁺) | 2 points, 1 of rank one; patch-open singleton has 0 rank-one points | not cJ |
| D8.5 Check | Spec(𝔽_p×𝔽_p), p = 2, 3 | 2 = 2; collapse gives 1 | discriminates |
| D10.15 | GL(Λ), μ_d | M^loc = Gr(d,Λ), with smooth hence reduced special fibre | consistent with the added clause |

## For the maintainer

- D11.14 now carries the closed-specialization hypothesis. Consumers (GeometricSatakeAndFusionPartII, HeckeStacksAndLocalShtukas HS2.16, GLX applications) use perfectly finite-type reductions, which satisfy it. The statement at GLE Lemma 4.55's printed generality is not claimed anywhere.
- New Lean names: `TauCetiRoadmap.DiamondsAndVStacksPartII.reductionSpectrum` and `TauCetiRoadmap.DiamondsAndVStacksPartII.exists_tate_specialization`. No other roadmap cites a name of this roadmap that changed.
- GeometricSatakeAndFusion GS0 uses "v-closure" without a supplier, while D10.9 here is later in the merge order (b.F05 remark). This cannot be settled in this package.
- Ownership against open pull requests: checked with `roadmaps grep` over main and the open heads for the Tate specialization theorem; found no owner.
- No suspicious instructions were found in the reviews.
