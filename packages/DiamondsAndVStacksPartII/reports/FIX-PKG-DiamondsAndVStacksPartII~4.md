# Repair report: DiamondsAndVStacksPartII, round 4

Findings merged from one review (`REV-PKG-DiamondsAndVStacksPartII~3`, four findings). Files changed: `packages/DiamondsAndVStacksPartII/README.md` and the top-level `gaps` list of `packages/DiamondsAndVStacksPartII/design/plan.json`. `Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.

## F01 (P2) — applied differently

Old: five `gap:` contracts on ArcTopologyAndDescent §§1.2, 1.5, 1.7, 3.10, 7.8. New: no Arc gaps. Direct citations of PrismaticCohomology §2.0 (`Arc.VCover`), SchemeKTheoryOperations §4.10 (`PerfectScheme.vTopology`) and ArcTopologyAndDescent §§1.5, 1.6, 1.7, 3.10, 7.8. The extension of subcanonicity to non-qcqs perfect targets is now proved inside D7.6. It is no longer a narrowed gap.

The finding is right in substance. The "no supplying text" reason given two rounds ago was factually wrong. ArcTopologyAndDescent is line 119 of the merge order, and its package is accepted. The review that accepted it, `REV-PKG-ArcTopologyAndDescent~4`, sits on the board's main. The finding was raised again after a not-actionable verdict, so I settled it on the evidence, because that reason was a factual error.

The suggested repair needed three corrections:

- **§1.2 no longer exists.** The reviewer cited ArcTopologyAndDescent's *design* README (`packages/ArcTopologyAndDescent/design/README.md`). The accepted package at its pull-request head (9af1fe1) has no §1.2. Layer 1 there runs §1.1, §1.3–§1.7, and its scope table says PrismaticCohomology §2.0 owns "Scheme v- and arc-cover predicates and their finite-affine site".
  - PrismaticCohomology §2.0 at its open head (ff0050b) defines `Arc.VCover`: lifting from valuation rings of arbitrary rank after injective local extensions, with composition, base change and `Arc.Cover.ofVCover`.
  - SchemeKTheoryOperations §4.10 at its open head (88dbd5a) defines `PerfectScheme.vTopology` on qcqs perfect 𝔽_p-schemes.
  - Both are earlier in the merge order (lines 64 and 38). They are the correct citations; ArcTopologyAndDescent §1.2 is not.
- **The other four clauses check out in the package**, clause by clause:
  - §1.5: subcanonical on qcqs perfect schemes.
  - §1.6: right cancellation.
  - §1.7: v-cover ⇔ universally subtrusive, hence universally submersive, plus the BS17 Remark 2.2 adic test. That test is GLE Lemma 3.5, GLE line 1129.
  - §3.10: a v-cover by ∏Vᵢ with Vᵢ aic valuation domains of unrestricted rank, of bounded cardinality via §0.3. An aic domain of characteristic p is perfect.
  - §7.8: Hom(X^perf, Y) is an arc-sheaf for qcqs Y; arc-covers ⇔ universally effective epimorphisms.
- **Residual §1.5 clause (non-qcqs targets).** This follows formally from the affine case:
  - Points of the fibre product surject onto pairs over a common point (Mathlib `AlgebraicGeometry.Scheme.Pullback.exists_preimage_pullback`, `Mathlib/AlgebraicGeometry/PullbackCarrier.lean` line 302), so |g| is constant on fibres.
  - v-covers are surjective and submersive (§1.7), so |g| descends to a continuous map.
  - Descend over basic opens that map into affine opens, then glue by uniqueness.
  - D7.6 needs this, because SW20's proof of Proposition 18.3.1 ("we can v-localize on Y", SW20 line 6458) uses it for arbitrary perfect X. So D7.6 now carries the argument, and D8.1 cites it.
  - Asking a supplier for it would announce a needless job. The ownership search (`roadmaps grep -i subcanonical` and the board packages) found no other owner of perfect-scheme v-subcanonicity.

Same pattern repaired elsewhere:

- Scope (§2, the ArcTopologyAndDescent sentence) and the supplier-contract blocks: a new PrismaticCohomology block, a new SchemeKTheoryOperations block (which also records why the finite-subfamily convention follows, by GLE Definition 3.4(2), GLE line 1125, and Arc §1.6), and a rewritten ArcTopologyAndDescent block.
- D7.10 proof sketch and Needs; D7.6 proof route and Needs; D8.1 proof sketch and Needs.
- The site sentence repeated in D8.1–D8.5; D8.2 proof sketch and Needs.
- The Layer D7 and Layer D8 Dependencies lines.
- A Mathlib contract sentence for `exists_preimage_pullback`.
- Three Contract Checks: the finite-subfamily boundary, the non-quasicompact target ⨿ℕ Spec 𝔽_p, and aic ⇒ perfect.
- Five plan slugs removed: `scheme-v-covers`, `perfect-scheme-v-subcanonicity`, `discrete-adic-v-cover-detection`, `perfect-valuation-product-covers`, `perfect-scheme-representable-descent`.

## F02 (P3) — applied

Old: D9.12 and D10.13 *Needs* lines lacked their slugs, and the layer Dependencies said "the completed étale-lift contract" and "the absolute weak-normality contract". New: D9.12's proof sketch and *Needs* add "SchemeAndStackFoundations §0.14 / §0.23a (gap:completed-etale-lifts)". D10.13's *Needs* adds "SchemeAndStackFoundations §0.26 (gap:absolute-weak-normality-formal)". The D9 and D10 Dependencies lines name the slugs.

Same pattern, also repaired:

- **D10.13 said "Absolute weak normality is imported from SF.0 (AGLR Definition 2.12)".** That is unsupported. SchemeAndStackFoundations §0.26 on main defines `Scheme.IsWeaklyNormal` only for reduced schemes of finite type over a perfect field of characteristic p (`TauCetiRoadmap/SchemeAndStackFoundations/README.md` lines 1640–1720). Searching that README for "absolute weak" finds nothing.
  - D10.13 now requests both the predicate and the normalization from the gap.
  - The gap's `needs` sentence (in both the README contract and the plan) now opens with "define absolute weak normality of rings and schemes (AGLR Definition 2.12)". The definition is at AGLR line 671.
- **D11.20 attributed mixed-characteristic weak normality to "(SF.0)".** It now reads "SchemeAndStackFoundations §0.26, gap:mixed-characteristic-weak-normality".
- **Prose-only gap mentions in other Dependencies lines** now name their slugs: the D10 line names `pseudorigid-jacobson-flatness` and `noetherian-definition-rational-flatness`, and the D11 line names the two weak-normality slugs.

Slug scan after the repair: all 10 declared slugs appear on at least one `*Needs:*` line. The README contracts and the plan `gaps` list are the same set with the same suppliers and sections.

## F03 (P3) — applied differently

Old: "GeometricSatakeAndFusionPartII LM.3 uses D8–D11 … HeckeStacksAndLocalShtukas uses the same interfaces …", plus the matching Scope sentence. New: the consumer note follows GeometricSatakeAndFusionPartII's current numbering, section by section, and HeckeStacksAndLocalShtukas HS2.16 is described as assuming a component comparison of the kind D11.14 proves.

The reviewer's text uses the design labels LM.3/LM.7. GeometricSatakeAndFusionPartII's package at its board pull-request head (e609a13) is numbered by layers instead. Its `*Needs:*` lines cite:

| Its section | This roadmap's target |
|---|---|
| §0.4 | D10.9 |
| §0.5 | D10.12 |
| §3.1 | D10.15 |
| §3.2 | D10.12 |
| §3.5 | D11.11, D11.17, D11.19 |
| §3.6 | D10.13, D11.18 |
| §6.4 | D10.14 |
| §§6.5, 6.6 | D10.12 |
| §7.1 | D11.5, D11 |
| §7.5 | D11 |
| §7.6 | D11.20, D10.12 |
| §7.7 | D10.15 |

HS2.16 at its open head (48d21c7) cites only HS2.6, HS2.10, HS2.11, HS2.15 and DiamondsAndVStacks D3–D5. Its specialization criterion "assumes that component comparison", so "uses the same interfaces" overstated it.

My first wording of the Scope sentence ("apply D10 and D11 …") made the dependency check read both roadmaps as suppliers. It reported `moved: … from #148 to #289, right after its last supplier GeometricSatakeAndFusionPartII`. The final wording says "consume" and "downstream consumer", and the check is clean.

## F04 (P3) — applied

Old: D9.7 "… using AdicSpacesPartIII F0.3's finite-ideal carrier." New: that sentence continues "a formal scheme is the colimit of its thickenings, locally Spec(A/Iⁿ⁺¹), and its morphisms are the compatible systems of morphisms of thickenings (AdicSpacesPartIII F0.3, *thickening-colimit-finite-ideal-type* and *morphisms-as-compatible-systems-finite-ideal-type*)", ending with the Convention-1 value colimₙ Hom(A/Iⁿ, B). Both targets are added to D9.7's *Needs*.

Both targets are on main at `TauCetiRoadmap/AdicSpacesPartIII/README.md` lines 1349 and 1376. Neither assumes noetherianity. Reviewer's test: for Spf O_C with I = (p) the thickenings are Spec O_C/pⁿ⁺¹. With I = (a), a² = p, the system is cofinal because (a)²ⁿ = (pⁿ), so the colimit is the same.

## Checks

- **`lake env lean packages/DiamondsAndVStacksPartII/Suggested.lean`**, run from the content checkout: exit 0, no output, 10.9 s. The file is unchanged: single `import Mathlib`, no `TauCeti.*` import, no declarations, no `set_option`.
- **Binder comparison:** `Suggested.lean` declares nothing, so there are zero `#check @name` comparisons and no elaborated type changed. No headline became statable: v-covers, scheme diamondification and small v-sheaves are still absent at the pins. The module docstring stays accurate (D7.10 still lacks "scheme v-covers and small v-sheaves").
- **Dependency check, final output:**

      depcheck: 56 roadmaps, 643 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. The intermediate `moved:` line came from my wording and is fixed (see F03).
- **Citation resolver: two leads, both expected.**
  - "9: ArcTopologyAndDescent §§1.5": ArcTopologyAndDescent is an accepted board package, merge-order line 119; I read its README at its pull-request head 9af1fe1.
  - "15: GeometricSatakeAndFusionPartII Layers 0": a board package under review (head e609a13), named only as a consumer.
  - Lean names found nowhere: none.
- **Ownership against open pull requests** was checked with `roadmaps grep`/`roadmaps show` for PrismaticCohomology, SchemeKTheoryOperations and HeckeStacksAndLocalShtukas. ArcTopologyAndDescent and GeometricSatakeAndFusionPartII were read at their board pull-request heads with a read-only `gh api` contents call. No declaration name of this file can collide, because it declares none.
- **Sources:** no new work cited and no manifest change. No `needs-references.toml` request.

## Adversarial mathematics pass

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| `Arc.VCover` as the cover predicate of D7.10/D8 | id Spec 𝔽_p; ∅→Spec 𝔽_p; ∅→∅; Spec(K×κ)→Spec V (V perfect rank one); Spec(V_q)⊔Spec(V/q)→Spec V (rank two) | lifts: yes (W=V); none; vacuous yes; none (V→K inverts m_V, V→κ kills m_V, V→W is injective local); none for the identity test | Agrees with D7.10 Checks and GLE Def 3.4(1) |
| Finite-subfamily convention (SKTO §4.10 + Arc §1.6) | D(t),D(t−1) on Spec 𝔽_p[t^(1/p^∞)]; all closed points; empty family over ∅ and over Spec 𝔽_p | (t,t−1)=1, so 2 opens cover; any finite set of closed points misses (0); ∅ covers ∅, not Spec 𝔽_p | Added as Contract Check; matches GLE line 1125 |
| Adic test (Arc §1.7) | id; Spec(K×κ)→Spec V | id: Spa bijective; the valuation with ring V has v(π)<1 and support (0); preimages: trivial on K (v(π)=1) or support m_V: 0 preimages | ⇔ holds on both |
| §3.10 cover, aic ⇒ perfect | A=0; A=𝔽_p; p=2,3; 𝔽_p[[t]] | empty index, ∏=0, id Spec 0; Spec 𝔽̄_p→Spec 𝔽_p faithfully flat; roots t^(1/2), t^(1/3) in the valuation ring of an algebraic closure of 𝔽_p((t)); v_t(xᵖ)∈pℤ≠1, so no root of xᵖ−t | Perfect factors; 𝔽_p[[t]] excluded (Contract Check) |
| §7.8 ⇒ v-descent | id; ∅→Spec 𝔽_p | both sides true; not arc, not epi (two maps to Spec(𝔽_p×𝔽_p) agree on ∅) | Uses `Arc.Cover.ofVCover` |
| D7.6 extension to arbitrary X | X=⨿ℕ Spec 𝔽_p, cover Spec 𝔽_p³→Spec 𝔽_p² (factors 1,2↦pt 1; 3↦pt 2); doubled-origin perfect line | labelling (3,3,7) descends uniquely to (3,7); (3,5,7) has unequal pullbacks 3≠5 at a fibre-product point; the two origin maps Spec 𝔽_p→X stay distinct after Spec 𝔽̄_p→Spec 𝔽_p | Existence and uniqueness consistent; non-qcqs case needs no supplier |
| D7.6 general Y | Y=Spec 𝔽_p[t^(1/p^∞)]; Y=Spec 𝔽_p[t] | q^⋄ surjective (D7.10), so h^⋄=ψ; t↦t^(1/p) on (Y^perf)^⋄ has 0 lifts on 𝔽_p[t] | Perfection hypothesis needed and stated |
| D8.1 subcanonicity via D7.6 | Spec 𝔽_p; ∅ | Hom(T,Spec 𝔽_p)=1 for all T; Hom(T,∅)=∅ for T≠∅, 1 for T=∅; D7.6 Needs contain no D8 target | Sheaf; no cycle |
| gap:absolute-weak-normality-formal (predicate added) | ℤ_p, ℓ=p; 𝔽_p[t]; 𝔽_p[t^(1/p^∞)]; O_E⟨x,y⟩/(y²−x³) | pᵖa=bᵖ gives b=pc, a=cᵖ, unique: awn; not perfect, so not awn (AGLR line 688); awn; x³=y² needs c=t∉A: not seminormal | SF §0.26 lacks mixed characteristic: gap now asks for the predicate |
| D9.12 wiring | identity residue algebra | ordinary lifts R⁺, R⁺×R⁺[1/ϖ] (2); completed: R⁺×0≅R⁺ (1) | Completed uniqueness needs the gap |
| D9.7 Convention-1 bridge | Spf O_C with (p) and (a); zero ring | thickenings Spec O_C/pⁿ⁺¹; (a)²ⁿ=(pⁿ) gives the same colimit; colimₙ Hom(0,B)=∅ for B≠0, 1 for B=0, equal to Hom(Spec B,∅) | Matches F0.3 targets |
| Downstream note | merge-order positions; cited sections | 149 < 243 (HeckeStacks) < 290 (GSF Part II); 13 `*Needs:*` lines mapped (F03 table); HS2.16 cites no D-target | Consumer only; no supply edge |

## For the maintainer

- **Five gap slugs left the plan** (listed under F01). If the intake already announced them on ArcTopologyAndDescent's board job, they can be closed: ArcTopologyAndDescent and PrismaticCohomology already state what they asked for.
- **New supplier edges:** PrismaticCohomology (merge-order line 64) and SchemeKTheoryOperations (line 38), both earlier than this roadmap. The README now names supplier declarations `Arc.VCover`, `Arc.Cover.ofVCover` and `PerfectScheme.vTopology`. If those roadmaps rename them, these citations follow.
- **Stale witness:** ArcTopologyAndDescent's design README on the board's main still shows §1.2 `VCover`, but its accepted package does not. Reviews should use the package head.
- **Open requests on D11:** GeometricSatakeAndFusionPartII's package declares two gaps on this roadmap's D11, `gap:general-tube-cohomology` and `gap:connected-fibre-tube-transfer`. This README does not state them yet. They were outside this round's findings and will arrive as their own jobs.
- **Changed names other roadmaps may cite:** none. No target was renamed or renumbered. D7.6 now also carries the non-qcqs subcanonicity step.
- **Review-text instructions:** none were followed. Nothing in the review was treated as an instruction.
