# PKG-PadicLocalLanglandsForGL2QpPartII

Deliverables: `packages/PadicLocalLanglandsForGL2QpPartII/README.md` (1201 lines, 8 layers, 51 numbered targets), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as on main), `sources.toml` (five certified entries, `cited_for` updated), and `design/plan.json` (its `gaps` list only: three gaps dropped, two kept).

## Headline theorems

None of the headline theorems can be stated at the pins (Mathlib `6b7abb3c`, Tau Ceti `a91d3aa`). The pinned Mathlib has `BDeRhamPlus`/`BDeRham` and the locally convex and linear-algebra carriers. It has no rigid analytic Drinfeld tower, no étale or de Rham cohomology of rigid spaces, no Banach or locally analytic representations of GL₂(ℚ_p), no Robba ring or (φ,Γ)-modules, and no correspondence V ↦ Π(V). Tau Ceti has none of these either. `Suggested.lean` lists each headline and what it lacks in its module docstring:

| Headline (README) | Status | Missing carrier |
| --- | --- | --- |
| Galois-socle theorem (§4.14) | not statable | Drinfeld tower as a rigid space with its G×Ǧ×Gal action; étale cohomology of rigid spaces; Banach representations; Π(V) |
| Banach multiplicities in Ω¹ and H¹_ét (§§4.12–4.13) | not statable | the same carriers, plus strong duals of Banach representations |
| Factorisation of arithmetic completed cohomology (§6.6) | not statable | the above, plus blocks, projective envelopes, type rings R_{B,M}, Π*(ρ_{B,M}) |
| Realisation for every supercuspidal type in ΦNᵖ (§3.3) | not statable | rigid functions and de Rham cohomology of the tower; locally analytic vectors |
| Discharge of the global hypotheses (§3.1) | not statable | the above, plus quaternionic completed cohomology and Čerednik–Drinfeld uniformisation |
| Irreducibility of Π(π,0) (§2.3); weight change (§2.4) | not statable | locally analytic representations; Robba ring, (φ,Γ)-modules, Δ⊠ℙ¹ |
| Iwasawa invariants of Drinfeld functions (§7.4) | not statable | rigid functions, D(Γ), Iwasawa cohomology, Bloch–Kato exponential |
| Infinitely primitivable functions (§7.5) | not statable | the half-plane and its covers as rigid spaces |
| Filtered derived realisation (§7.6) | not statable | coadmissible D(G)-modules and their derived category; rigid de Rham complex; D_dR |

Lemmas that can be stated, such as §4.3 (extending a partial operator with prescribed spectrum) and §6.3 (rigidity over PIDs), are not headline theorems. Under the padding rule they stay in the README.

## Duplication sweep and ownership

**Main finding.** The board package `ProetaleCohomologyOfPAdicCurvesAndTowers` has an accepted design and sits at line 323 of the merge order. Its scope plans for every finite F/ℚ_p:

- the Drinfeld-tower geometry that the design owned in §§3.4–3.5 and 4.1;
- the half-plane comparisons of §4.2.

Its own text records this overlap. Its downstream bullet says this roadmap's §§3.4–3.5 and 4.1 re-derive its §§7.2–7.5 for F = ℚ_p. Its §7.5 Check names this roadmap's §4.1 as the consumer of its diagram.

**The three gaps on later roadmaps.** The accepted design declared three gaps on roadmaps that come after it in the merge order:

- `derived-lie-action`, on LocallyAnalyticRepresentationsOfLocalGroups (line 318);
- `modp-drinfeld-finite-length`, on ScholzeFunctorAndModpCohomologyOfTheLubinTateTower (line 326);
- `drinfeld-components`, on the same roadmap.

The depcheck does not count gap lines, so these gaps would have hidden upward edges. Each of these suppliers' current designs now states what the gap asked for:

- LocallyAnalyticRepresentationsOfLocalGroups: Layer LR.0, `derived-lie-action`.
- ScholzeFunctorAndModpCohomologyOfTheLubinTateTower: `SZ.5/finite-length`, items (a)–(c), which match the gap sentence word for word.
- Strauch's components: `SZ.0/lubin-tate-components`, and ProetaleCohomologyOfPAdicCurvesAndTowers §§7.1 and 7.3.

**Resolution.** I cited these roadmaps as ordinary suppliers, which moves this roadmap after all of them. The depcheck accepts that (`moved:` line below, 0 problems). Once ProetaleCohomologyOfPAdicCurvesAndTowers is an earlier supplier, the duplicated targets are deleted here and cited. Removals:

1. **§3.4, equivariant semistable models and the Hyodo–Kato structure at every level.** Deleted. Now cited as ProetaleCohomologyOfPAdicCurvesAndTowers §7.2 (models) and §7.4 (H¹_HK(M_∞)[M] ≅ M̆⊗̂LL(M)*, H¹_dR(M_∞)[M] ≅ (C⊗M_dR)⊗̂LL(M)*).
2. **§3.5, pro-étale cohomology of Stein curves, H̃K, and the tower diagram (a)–(d).** Deleted. The Stein and proper curve diagrams are that roadmap's §§4.2 and 4.7. Part (d) was only the route to §4.1, which is now its §7.5. This also removes the suppliers AInfCohomology §§AI.3.1/AI.5.1, AdicSpacesPartIII §§R3.4/R3.7, StableReduction Layer 7, WeightsInEtaleCohomology R34.3, PadicPeriodRings §4.3, LocallyAnalyticDistributions §0.CR.6.6 and HilbertModularVarietiesAndShimuraCurves §R18.5.14. No other target used them.
3. **§4.1, the fundamental diagram.** No longer proved here. It is now the fixed-level reading of ProetaleCohomologyOfPAdicCurvesAndTowers §7.5: from M_∞ with W_ℚ_p to M^p_n with G_ℚ_p. The route has two steps (the §0.2 level reading, then density of W_ℚ_p). The Checks are kept, and two are new: n = 0, and M ∉ ΦNᵖ against M_∞.
4. **§4.2.**
   - Deleted here: the definitions of St^sm and St^cont, the completion of St^sm, and the H¹_dR, H¹_proét and H¹_ét isomorphisms of Ω. They are now cited from ProetaleCohomologyOfPAdicCurvesAndTowers §§0.3, 0.4(c), 6.2, 6.5 and 6.9 at d = 1.
   - Kept here: St^an with its completion, Ω¹(Ω_C) ≅ (St^an)′, and the special-type twist (CDN23 Thm 5.1, Rem 5.2).
5. **§4.9, first statement.** H¹_ét = G-bounded part of H¹_proét at full level is now cited as that roadmap's §7.3. What stays here is the p-central and multiplicity forms (route: Hochschild–Serre for p^ℤ) and O[M]^b = 0 (route rewritten: affinoid covering, CDN20 Remarque A.2 at line 2247, Nrd on π₀).
6. **Gaps.** `derived-lie-action`, `modp-drinfeld-finite-length` and `drinfeld-components` are removed from plan.json `gaps` and from the README. They are replaced by supplier contracts naming the stating sections. The gaps `fixed-radius-divisibility` (base §6.9 at head 92e93dd still argues by t-divisibility, line 2451 of its README) and `cuspidal-projectivity-coefficients` (SmoothRepresentationsOfLocalGroups §SR.3.2 at head 1383569 is still stated over ℂ, its line 2638) remain.

**Other checks.**
- Every other definition and theorem was compared by object, using `roadmaps grep` over main and the open heads, against the board packages and the sibling heads. Nothing further was found.
- Mathlib's von Neumann bornology lemmas are cited, not restated. I checked them at the pin: `Bornology.IsVonNBounded` at `Bounded.lean:61`, `NormedSpace.image_isVonNBounded_iff` at `:495`, `WithSeminorms.isVonNBounded_iff_seminorm_bounded` at `WithSeminorms.lean:575`, `WithSeminorms.image_isVonNBounded_iff_seminorm_bounded` at `:595`, and `WithSeminorms.banach_steinhaus` at `Barrelled.lean:164`.
- Ownership against open pull requests was checked with `roadmaps grep` (354 heads, index of 2026-10-26T23:59:52Z).
- No declaration of `Suggested.lean` reuses another roadmap's name, because it declares none.

## Corrections made (beyond the removals)

- **§3.3(ii) uniqueness was false as written.** The design claimed "an isomorphism (L⊗H¹_dR)[M] ≅ M_dR⊗π′, unique up to L^×". G-automorphisms of M_dR⊗π′_b are A⊗id with A ∈ GL(M_dR), so the isomorphism is unique only up to GL(M_dR). The statement now puts the line condition into the isomorphism and asserts uniqueness up to L^× only under that condition. A negative-control Check was added (A = diag(1,2)).
- **New level reading in §0.2.** It identifies the M-multiplicities on M^p_n, M_{n′} and M_∞ for supercuspidal M ∈ ΦNᵖ_n (CDN20 lines 100–108). It is needed to read the infinite-level supplier at fixed level. It has an API bullet and a Check covering the special type and M ∉ ΦNᵖ.
- **§3.3 sentence on CDN20 Théorème 0.4.** The design said no supplier states it. That was outdated: ProetaleCohomologyOfPAdicCurvesAndTowers §7.4 states it, and the sentence now says what (ii) adds to it.
- **§7.3.** The Hyodo–Kato step no longer cites the deleted §3.4. The Hochschild–Serre and Saito route is stated in place, with Proetale §§7.1, 7.2 and 7.4.
- **§5.2 and the Scholze contract.** They spell out how the supplier's H¹(M^p_{n,K}, O_L/ϖ^k) statement is carried to the twisted coefficients and to (H¹_C)^{G_K}: a finite extension trivialising μ_{p^k}, Hochschild–Serre with finite H⁰, then a closed submodule.

- **Notation without TeX braces.** All 515 brace groups `_{…}` and `^{…}` in the README were rewritten: superscripts whose characters all have Unicode forms became Unicode superscripts (`^{−1}` → ⁻¹, `^{(k)}` → ⁽ᵏ⁾), single-token groups lost their braces (`^{ps}` → `^ps`), and the rest use parentheses as upstream does (`V_{M,ℒ}` → `V_(M,ℒ)`, `M^p_{n,C}` → `M^p_(n,C)`, `E₂^{a,b}` → `E₂^(a,b)`). No mathematics changed; the remaining braces are set notation such as weights {0,1}.

## Review notes applied (REV~5, both P3)

- **F01.** Layer 6 Dependencies now names Mathlib `Submodule` and `Module.Basis`. The requested WeightsInEtaleCohomology insertion in Layer 3 is moot: its only user, §3.5 route (c), is deleted, and the Layer 3 Dependencies paragraph was rewritten to list exactly what §§3.1–3.3 use.
- **F02.** The §0.2 locator now reads "DLB17, Théorème 1.2 (line 154) and the definition of σ^ρ before it (line 152)".

## What the README could not support

Nothing depends on a missing text. No source was fetched, and no `needs-references.toml` was written. The new locators (CDN20 lines 100–108 and 2247, CDN23 lines 2414–2422 and 2791–2795) are in cached texts, and I read them at those lines.

## Notions moved down

None. The direction defect was resolved the other way, by moving this roadmap later (see the depcheck below).

## Adversarial pass (statements written or changed)

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.2 level reading | supercuspidal M of level 1, n = 1, n′ = 2; special Sp; M = M(π₀⊗χ∘det), χ(p) = 1+p | Ǧ_1/Ǧ_2 has order p² and acts trivially on JL(M), so invariants are exact over L. H¹(p^ℤ, H⁰) is a space of functions on π₀ on which Ǧ acts through characters of Nrd, so Hom_Ǧ(JL(M), −) = 0 since dim JL(M) = 2. For Sp, the Ǧ-invariants of H¹(p^ℤ, L^{π₀}) contain the class of 1 ≠ 0, an extra term. For χ(p) = 1+p, p acts on JL(M) by (1+p)² ≠ 1, so the multiplicity on M^p_n is 0 and on M_n it is ≠ 0 | holds for supercuspidal M ∈ ΦNᵖ_n only | hypotheses stated; Check added |
| §3.3(ii) uniqueness | A = diag(1,2) on M_dR = Le₁⊕Le₂ | A⊗id sends the preimage of L(e₁+e₂)⊗π′ to that of L(e₁+2e₂)⊗π′; the lines are distinct because 2 ≠ 1 in characteristic 0. Aut_G(M_dR⊗π′) = GL₂(L) (dimension 4), not L^× (dimension 1). A fixing Le₁, Le₂, L(e₁+e₂) forces A = aI | design statement false | fixed; Check added |
| §4.1 | n = 0; M ∉ ΦNᵖ; slope 0 versus 1/2; W versus G_ℚ_p | n = 0: JL(M) factors through Ǧ/O_D^× ≅ ℤ, so it is 1-dimensional, no supercuspidal M exists, and every term is 0. M ∉ ΦNᵖ: 0 on M^p_n, ≠ 0 on M_∞. Slope 1/2: (B⁺_cris⊗M)^{φ=1} = 0, so θ is injective; slope 0 leaves φ = 1 invariants. W_ℚ_p is dense in G_ℚ_p and the maps are W-equivariant and continuous, hence G_ℚ_p-equivariant | sound | Checks added |
| §4.2 | δ_x−δ_y; (z−a)/(z−b); aI₂ on St^cont⊗δ_G | mass of δ_x−δ_y is 1−1 = 0, mass of δ_x is 1. The symbol of (z−a)/(z−b) is δ_a−δ_b, with residues +1 and −1. aI₂ acts by δ(a²), and a ∈ Ǧ acts by δ(Nrd a) = δ(a²) | sound | citations moved to Proetale §§0.3–0.4, 6.x |
| §4.9 p-central form | M^p_0 = Ω⊔Ω; the class of the ℤ-cover | H⁰ = L² in both the étale and the pro-étale sequence, so H¹(p^ℤ, H⁰) = L² is common to both and the 5-term comparison gives injectivity. A bounded pro-étale class maps to a bounded class upstairs, which is étale and lifts; the difference lies in the common term | sound | route written |
| §4.9 Check (z on Ω) | f = z; vertex affinoid {|z| ≤ 1, |z−a| ≥ 1} | (u(b)f)(z) = f(z−b) = z−b, whose sup on the affinoid is |b| for |b| > 1, unbounded as |b| → ∞. So z is not G-bounded, and is bounded on the affinoid but not on Ω | sound | new Check |
| §4.9 O[M]^b = 0 | constants on M^p_0 | H⁰ = L² with Ǧ acting by the parity of v(Nrd); both characters are 1-dimensional, and Hom_Ǧ of a 2-dimensional JL(M) into them is 0 | sound | route rewritten |
| Scholze contract bridge | K′ = K(μ_{p^k}); n = 0 | at n = 0, H⁰(M^p_{0,C}, O/p^k) = (O/p^k)², finite, so H¹ and H² of G_{K′} with these coefficients are finite. A quotient of a finite-length smooth module has finite length | sound | contract and §5.2 made explicit |
| §7.3 Hyodo–Kato step | ρ trivial on 1+ϖ_DO_D but not on 1+pO_D, n = 1 | with dim ρ = 2, H⁰[ρ] = 0 (Nrd on π₀). With ρ nontrivial on 1+ϖ_DO_D, the ρ-part on the first cover is 0 (Check 6 unchanged) | sound | citations only |
| Headline docstring (§4.14) | V = V_{M,ℒ}; dim V = 3; δ with δ(p)² = 1 | Π(V)′⊗JL(M); 0; (St^cont⊗δ)′⊗δ∘Nrd | agrees with §4.14 | — |

All other targets keep the text the accepted design reviewed (its round-5 adversarial table). Their computed rows are not repeated here.

## Elaboration

Command: `lake env lean <absolute path>/Suggested.lean` from the content checkout. Exit code 0 and no messages: 0 `sorry` warnings, no other output. The file declares nothing (`import Mathlib`, one module docstring, an empty `namespace TauCetiRoadmap.PadicLocalLanglandsForGL2QpPartII`), so the `#check @name` binder comparison had nothing to compare; I did not run it. There is no `set_option` and no `TauCeti.*` import.

## Dependency check (verbatim)

    moved: PadicLocalLanglandsForGL2QpPartII moved in the merge order from #259 to #325, right after its last supplier ScholzeFunctorAndModpCohomologyOfTheLubinTateTower (LocallyAnalyticRepresentationsOfLocalGroups, ProetaleCohomologyOfPAdicCurvesAndTowers also came after it); checked as moved (the worker moves it there when it submits)
    depcheck: 56 roadmaps, 655 edges, 0 problem(s)

There is no UPWARD or CYCLE line. The `moved:` line comes from naming the three later board designs as suppliers, which the design already depended on through gaps.

## Citations

`roadmaps resolve` on the README reports two leads, both checked:

- `ProetaleCohomologyOfPAdicCurvesAndTowers §7.5`
- `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower Layer 5`

The tool searches only main and open pull requests, so it cannot see these two board-package designs. Both exist in the board checkout (`packages/<Name>/design/README.md`). The cited sections there are Proetale §§0.3, 0.4, 6.2, 6.5, 6.9, 7.1–7.5 and Scholze `SZ.5/finite-length`; LocallyAnalyticRepresentationsOfLocalGroups Layer LR.0 `derived-lie-action` was read the same way. "Lean names found nowhere: none". I checked the base roadmap's names (`DrinfeldComparison.*`, `AnalyticBoxtimes.*`, `Kirillov.compactPAlgebraic`, `WDTypeRing`, `KisinRingLL.completion`, `DivisionAlgebraTypes.jacquetLanglands`) in its README at head 92e93dd. I checked the PhiGammaModulesAndIwasawaCohomology names (`oneSubPhiOnPsiOne`, `deRhamDiffEq`, `allLevelExp_*`, `tNrig_*`) at head 8cb314e.

No instruction-like text was found in any file or source read.
