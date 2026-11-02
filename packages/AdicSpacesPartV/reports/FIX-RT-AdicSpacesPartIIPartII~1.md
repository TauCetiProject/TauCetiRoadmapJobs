# FIX-RT-AdicSpacesPartV~1: red-team round 1 repairs

Two reviews were merged: review r1a (findings F01–F07, headed by their own ids below) and review r1b (findings F01–F03, headed r1b/F01–r1b/F03 below to keep them apart from r1a's ids). Where findings overlap, they are settled once and cross-referenced: F03, F07 and r1b/F02 all concern the regularity transfers; F06 and r1b/F01 both concern the formal-model inputs of §§4.1–4.2.

## F01 (P2) — applied

§3.4: "If L̃ is finite the conclusion fails." → "If L̃ is finite and n ≥ 1 the conclusion fails; in dimension 0 it holds over every L." The witness holds: D⁰(L) = {η}. The Check at §3.4 and the Layer 3 Examples already say this. The route's counterexample already uses n = 1. Suggested.lean is unaffected, since it assumes an infinite residue field.

## F02 (P3) — applied

§4.7 Check: "a countable union of proper Zariski closed Hodge loci" → each proper Hodge locus is Zariski closed and nowhere dense, so it has no weakly Shilov point; the union has none however many loci occur. Proposition 9.3.4 (HK2 line 2663) separately gives a countable union of *topologically* closed images of compact families of lines (HK2 lines 2699–2707), not Zariski closed sets. Checked at HK2 lines 2663–2735.

## F03 (P1) — applied

Confirmed: SchemeAndStackFoundations §0.21 (its README lines 1394–1450) has no target descent, and the pinned Mathlib RegularLocalRing files have none either. New gap `gap:regular-map-composition-descent` (SchemeAndStackFoundations §0.21) covers composition (STACKS Tag 07QI), descent along faithfully flat B → C (Tag 07NT) and reduction to maximal ideals (Tag 07C0). It is in the README contract, plan.json `gaps`, §0.5 Needs, scalar-extension Needs and the Layer 0 Dependencies.

## F04 (P1) — applied differently

The input is indeed unowned, but André's localization theorem is not needed. The map Â_m → B̂_n is a local map of *complete* noetherian local rings. For those, m_B-adic formal smoothness implies regularity with no quasi-excellence hypothesis (STACKS Tag 07PM, Proposition 15.50.2). New gap `gap:complete-local-formal-smoothness-regular` (§0.21); the §0.5 route now composes with A_m → Â_m and descends by F03's gap. The ANDRE74 citation, its README reference line and its sources.toml entry are removed.

## F05 (P3) — applied

Replaced five non-discriminating Checks:
- §0.1: K⟨T⟩/(T(T−1)) ≅ K × K, two classical points, Gauss point excluded.
- §0.4: the image of Spa 𝔽_p((t))(t^(1/p)) is V(Tᵖ − t), one point of residue degree p; T ↦ T² gives a free rank-2 algebra and the whole disc.
- §1.3: the crossing is connected (idempotents 0, 1) with two components.
- §1.6: the first disc of D ⊔ D.
- §1.7: ℚ₃(√2) is connected, and its scalar extension has two components.

## F06 (P1) — disputed

The reconstruction is supplied. AdicSpacesPartIII R2.4 (v), README lines 5000–5002 (`specialisationLimitHomeomorph`), gives two things for quasi-compact admissible X. First, a homeomorphism d(X) → lim |X′| over admissible blow-ups. Second, an isomorphism (d(X), O⁺) ≅ lim (X′, O_X′), which is the Zariski–Riemann description. Spf A₀ is quasi-compact and admissible. The §4.2 route used BH22's scheme models; it now says "admissible blow-ups of Spf A₀" and cites R2.4 (v). The formal-model contract paragraph now records R2.4 (v) and R2.5 surjectivity. No gap is needed.

## F07 (P1) — applied

New gap `gap:regular-local-flat-transfer` (§0.21) covers two clauses:
- Descent: for flat local R → S, S regular implies R regular, with no fibre condition (STACKS Tag 00OF). The reviewer's iff-with-regular-fibre form would not cover the fibrewise descent inside F03.
- Ascent: R regular with regular closed fibre implies S regular (Tag 031E).

§2.1's route now names it for the completion criterion, for affinoid restriction and for smooth pullback. The same gap is added to the Needs of §2.2 and §5.3, whose completion arguments use it, and to the Layer 2 Dependencies.

## r1b/F01 (P2) — applied

Confirmed: R2.4 (iii) gives only closed points. The §4.1 surjectivity proof now runs through R2.4 (v) and R2.5 `admissibleBlowUp.isProper_surjective_specialFibre`. The fibres over p₀ are nonempty. They are pro-constructible: a point of a spectral space is pro-constructible. Unlike the reviewer's text, they are not "closed", since a non-closed p₀ has non-closed fibres. So the fibres are compact in the constructible topology (AdicSpacesPartII R0.19.1–R0.19.2). Mathlib `TopCat.nonempty_limitCone_of_compact_t2_cofiltered_system` (Topology/Category/TopCat/Limits/Konig.lean:126) then gives a point with λ = p₀ exactly.

## r1b/F02 (P2) — applied differently

The regularity part is settled by the gaps of F03, F04 and F07. These declare SchemeAndStackFoundations §0.21 contracts rather than a §0.5 target here, because §0.21 owns regular ring maps and their permanence (Scope and ownership). The Nagata part is applied. §1.1 now uses §0.21 `Excellence.IsQuasiExcellentRing.isNagata` and §0.20 `IsNagata.integralClosure_finite`; the total ring of fractions of A_red is a reduced localization, hence essentially of finite type. The contract sentence is rewritten accordingly.

## r1b/F03 (P3) — applied differently

The bullet stays in §1.1 with a purely algebraic proof route, so it does not need §1.7. Write g^*(s) for the pullback of s. If s is a nonzerodivisor of A_red, then V(s) is nowhere dense (§0.3(c)). By hypothesis g⁻¹V(s) is nowhere dense, so g^*(s) lies in no minimal prime of the reduced noetherian ring B and is a nonzerodivisor. Then a/s ↦ g^*(a)/g^*(s) sends Ã^ν to elements integral over the normal ring B, hence into B, uniquely. The hypothesis is restated locally on opens U ⊆ X. A Check was added: the cusp, and two lifts of the origin of XY = 0 when the hypothesis fails.

## Checks run

- Elaboration: `lake env lean packages/AdicSpacesPartV/Suggested.lean` from the content checkout ended with exit 0. The only output was the three expected `declaration uses 'sorry'` warnings, at lines 51, 68 and 100. Suggested.lean is unchanged this round. The four elaborated signatures in the worker's signature file still match their README statements (§§3.4, 6.1, 6.6), so no fresh `#check` file was needed.
- Dependency check output:

```text
depcheck: 56 roadmaps, 645 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line for this roadmap. All three new gaps name SchemeAndStackFoundations, which is the first roadmap in the merge order.

- `roadmaps resolve` on the README found no unresolved cross-roadmap citations and no unresolved Lean names.
- The README and plan.json gaps were compared mechanically: all eight slugs have identical supplier and needs text.

## Adversarial pass on new or changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| gap:regular-local-flat-transfer | K[t]_(t) → K[[t]]; K → K[ε]/(ε²); A=K[ε]/ε² → A[[u]] | (dim, embdim): (1,1)/(1,1), fibre K; (0,0)→(0,1), fibre not regular; (0,1)→(1,2), both non-regular | consistent in both clauses |
| gap:regular-map-composition-descent | K → K[t]_(t) → K[[t]]; cusp B → B[1/x] | composite regular, fibres K[[t]]⊗L = L[[t]]; K→B[1/x] smooth but K→B singular at origin; Spec B[1/x] misses origin | faithful flatness needed: added as a Check |
| gap:complete-local-formal-smoothness-regular | K → K[[T]]; K → K[ε]/ε² | lifting ok; (t+ct²)² = t² ≠ 0 | criterion separates; completeness of both rings in hypothesis |
| §0.5 domain route | K⟨T⟩ → K⟨T,T⁻¹⟩ at T=1 | Â_m = K[[T−1]] on both sides | regular |
| §1.1 universal property | cusp normalization; origin → XY=0 | X ↦ t², Y/X ↦ t; preimage of origin = whole point, two lifts | hypothesis exact |
| §4.1 surjectivity | A = K⟨X,Y⟩, p = (Y) | fibre over (Y) contains Gauss point of Y=0, \|X\|=1, \|Y\|=0 | nonempty limit |
| §3.4 exception | n = 0, L̃ = 𝔽₂; n = 1, q = 2 | {η} = closure{η}; η(T²−T)=1, \|a²−a\| ≤ 1/2 | repaired |
| §0.1 Check | T(T−1) | 1 = T − (T−1); \|T(T−1)\|_η = 1 | K × K, two points |
| §0.4 Check | Tᵖ − t over 𝔽_p((t)) | Eisenstein, residue degree p; K⟨T⟩ = K⟨T²⟩ ⊕ T·K⟨T²⟩ | one point; whole disc |
| §1.3 Check | idempotents of K⟨X,Y⟩/(XY) | (e₁,e₂) ∈ {0,1}², e₁(0)=e₂(0) | 0, 1 only |
| §1.6 Check | D ⊔ D | dim 1 = 1, Y ≠ M | needs connected M |
| §1.7 Check | ℚ₃(√2) | 2 non-square mod 3; L⊗L ≅ L×L | 1 vs 2 components |

## Notes for the maintainer

- SchemeAndStackFoundations is asked for three new §0.21 statements: `gap:regular-local-flat-transfer`, `gap:regular-map-composition-descent` and `gap:complete-local-formal-smoothness-regular`. All are standard Stacks results (Tags 00OF, 031E, 07QI, 07NT, 07C0, 07PM).
- ANDRE74 was removed from sources.toml and from the README. The STACKS entry keeps one key and now lists the Algebra and More on Algebra tags. Those tags were read on the online Stacks Project, not taken from the cached Morphisms chapter.
- The plan.json `sourceIssues` entry E1 still says that the HK2 argument "fails" for a finite residue field without the n ≥ 1 qualifier. That field is outside what this job may edit.
- Ownership: DerivedDeRhamCohomology (an open pull request, not earlier in the merge order) has an "André's regularity criterion" section, so it cannot supply this roadmap. ResolutionOfSingularitiesCharacteristicZero and DerivedModuleAlgebra do not state these transfers. Ownership against open pull requests was checked with the roadmaps grep tool.
- No Lean names changed; no other roadmap's citations are affected.

## Gate failures repaired

- Report headings: finding sections now use the required form `## <id> (<severity>) — <outcome>`, headed with the review's own ids F01–F07 (review r1a) and r1b/F01–r1b/F03 (review r1b). The outcome text of F06 is now exactly "disputed" and that of F07 exactly "applied".
- LaTeX-style subscripts: in the §4.1 surjectivity route the three occurrences of the fibre notation `F_{X′}` → `F(X′)`. Nothing else changed.
