# FIX-PKG-PadicLocalLanglandsForGL2QpPartII~2

Repair round for the findings of `REV-PKG-PadicLocalLanglandsForGL2QpPartII` on the package `packages/PadicLocalLanglandsForGL2QpPartII`. Every finding was verified at the cited source lines and at the suppliers' heads before being applied. Files changed: `packages/PadicLocalLanglandsForGL2QpPartII/README.md`, `packages/PadicLocalLanglandsForGL2QpPartII/sources.toml` (two `cited_for` entries) and `packages/PadicLocalLanglandsForGL2QpPartII/design/plan.json` (the `needs` and `detail` sentences of the gap `fixed-radius-divisibility` only). `Suggested.lean` and `metadata.toml` are unchanged.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F01 (P1) — applied

Verified: DLB17 line 662 (Théorème 3.2, local analyticity of O(k)(Σ_n)^* for all k), line 759 (Lemme 3.5, the Lie formulas on O(k), its dual and Ω¹^*), line 783 (Proposition 3.6, H¹_dR,c(Σ_n) smooth, proved from Lemme 3.5(c)), lines 956–957 (the spectral sequence uses smoothness of H^(2−q)_dR,c for q = 0, 1, 2) and lines 1201–1208 (route (a) uses u⁺ = −d/dz on Ω¹ and the smoothness of H¹_dR,c). Owner search: PadicLocalLanglandsForGL2Qp §6.9 at head (lines 2312–2389 of its README) states neither fact; EndoscopicTransferAndUnitaryTraceComparison §§12.4–12.7 at head has no smoothness, local-analyticity or de Rham statement; the ProetaleCohomologyOfPAdicCurvesAndTowers design has no compact-support statement and defers compact supports to a proposed Part II; LocallyAnalyticRepresentationsOfLocalGroups LR.0 has the derived Lie action and `lieAction_smooth` (smooth implies Lie-trivial) but not the converse. This roadmap is the owner.

Old → new: §3.1 now opens with a target, *The function duals of the tower*, stated for every level n of the p-central quotient M^p_n and for the covers Σ_(r,N) of route (b): local analyticity of O(k)(M^p_n)′_b for all k (hence of Ω¹, H¹_dR and their ρ-parts), the Lie formulas on O(k) and on Ω¹′_b, and smoothness of H¹_dR,c with H⁰_dR,c = 0, H²_dR,c = H⁰_dR′ finite-dimensional smooth, and vanishing of the ρ-parts for k ≠ 1 when dim ρ ≥ 2; with route (Stein covering by G_i-stable affinoids, Banach steps and Frommer's theorem, the anti-equivalence, the u⁺-kernel argument, Lie-trivial vectors of a locally analytic representation are smooth), five Checks, and the suppliers named. Route (a) step 4 and route (b) step 1 now cite it, and route (b) defines Σ_(r,N). The *Needs:* lines of §§3.1, 3.3, 7.2 and 7.6 and the Layer 3 Dependencies cite it; §7.1's bullet names it for the local analyticity of the dual of O(k). A supplier contract *From TauCetiRoadmap.LocallyAnalyticDistributionsPartII* (ND.2 Banach steps, ND.3 Frommer's theorem) was added, with the Scope paragraph and the "How to read the build" sentence of Layer 3 updated. The reviewer's suggested third Check ("the smooth quotient H¹_dR,c is not of compact type") was not used: H¹_dR,c(Σ_r) is the strong dual of a Fréchet space that is a countable inverse limit of finite-dimensional spaces, hence a countable direct limit of finite-dimensional spaces, which is of compact type.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F02 (P2) — applied

Verified: CDN20 lines 749–756 define O[M] and Ω¹[M] as G_F-invariants, L⊗F-modules; Corollaire 2.1 (lines 762–769) has Ĉ⊗_F O[M]; Proposition 2.4 (lines 822–843) tensors over L⊗F; CDN23 Lemme 5.5 (line 2411). With Layer 4's C-valued O[M] the displayed left terms of §4.5 were C-spaces where the source has L-spaces (witness V = L).

Old → new: both rows of §4.5 now read H_C(V)⊗_L O[M]^(G_ℚ_p) and H_C(V)⊗_L Ω¹[M]^(G_ℚ_p); the Layer 4 preamble defines the invariant forms and records O[M] = C⊗̂_ℚ_p O[M]^(G_ℚ_p); §4.5 says how the left and middle terms are identified (Lemme 5.5 applied to X = C⊗V^∨ and the Banach stages of O[M]^(G_ℚ_p), which is more precise than the reviewer's X = C, since the Galois action sits on C⊗V^∨), restates the injectivity step on H¹ with the identity H¹(G, X⊗̂B) ≅ H¹(G, X)⊗̂B as a step proved here, and its first Check is the V = L test. *Needs:* adds LocallyAnalyticDistributions §0.2 and PadicHodgeTheory §4.4. §4.1 (C-valued, as CDN20 Corollaire 2.1), its Check and §4.7 already used the invariant form and are unchanged.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F03 (P3) — applied

Verified with `roadmaps grep` over the open heads and main: none of the twenty-seven names occurs in PadicLocalLanglandsForGL2Qp, PhiGammaModulesAndIwasawaCohomology or HilbertModularVarietiesAndShimuraCurves at their heads, except `DivisionAlgebraTypes.jacquetLanglands` at the base's README line 2435, a supplier-table row attributed to other roadmaps. (LocalGaloisDeformationRings, GL2AutomorphicRepresentationsAndTransfer and CompletedCohomologyAndLocalGlobalCompatibility cite some of the same names as the base's; that is outside this package.)

Old → new: every backticked supplier name was replaced by its section citation and a prose description of the object, at README lines 22, 24–26, 78–79, 81, 84, 86, 88, 122, 124–125, 145–149, 161, 175, 322, 388, 400, 413, 460–463, 925, 932, 989, 1047, 1103 and 1109 of the reviewed version; the gap sentence of `fixed-radius-divisibility` now reads "the injectivity of the comparison map in §6.9" in the README and in `design/plan.json` (`needs` and `detail`), slug unchanged. The only backticked names left are the pinned Mathlib declarations of the supplier contract. The plan's node entries outside `gaps` still carry the old names in their `target` fields; this job may not edit them.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F04 (P3) — applied

Verified: `lake-manifest.json` of the content checkout pins mathlib `1b1ccf4b…` and TauCeti `2fd255d9…`, not the hashes printed. Old → new: "pinned declarations (Mathlib `6b7a…`)" → "declarations of the pinned Mathlib"; "The pinned Tau Ceti (`a91d…`)" → "The pinned Tau Ceti".

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F05 (P3) — applied

Verified: DLB17 lines 1522–1525 take an L_∞[[t]]-module with semilinear Γ-action; D⁻_dif(V) contains t⁻ʲe of torsion order j for every j, so no single power of t kills it. Old → new: §1.4 now reads "For an L_∞[[t]]-module X with a semilinear action of Γ on which t is locally nilpotent, every element being killed by some power of t, as for D⁻_dif(V) = …"; the sentence on the exponential says the value is killed by a power of t; a fourth Check records the torsion orders of t⁻ʲe as the negative control. API bullets unchanged.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F06 (P3) — applied

Verified: DLB17 lines 1593–1618 contain no statement about vectors of Π(V) fixed by the unipotent subgroup; line 2633 concerns LC(ℚ_p^×, L_∞)^Γ. Old → new: the bullet was removed from the list sourced to Proposition 7.9 and Théorème 7.11 and replaced by a separate statement at the generality the Kirillov model supports, which contains the reviewer's restatement: no nonzero vector of Π(V)^P-fin is fixed by u(ℚ_p), with the two-line proof (b ≠ 0 with bx ∈ ℤ_p forces tφ(x) = 0, then bx = p⁻¹ forces φ(x) = 0, and §1.5 is injective), citing line 2633 for the smooth L_∞-valued case. No later target uses it.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F07 (P3) — applied

Verified: the ⇒ direction is the nonvanishing of §§4.2 and 4.14, proved in Layer 4. Old → new: the §0.1 bullet now states only "If M ∉ ΦNᵖ, every JL(M)-multiplicity space of the p-central quotient vanishes, since p ∈ Z(Ǧ) acts trivially on that quotient", keeps δ(p)² = 1 for special M, and says that nonvanishing is a Layer 4 theorem (§§4.2, 4.14).

## REV-PKG-PadicLocalLanglandsForGL2QpPartII/F08 (P3) — applied

Verified at the ScholzeFunctorAndModpCohomologyOfTheLubinTateTower head: Layer 5 is "finite support and arithmetic finite length" (line 685) and §5.4 "Finite length of arithmetic Drinfeld cohomology" (line 755) carries the statement, for p > 2, n ≥ 0, finite K and a ≥ 1, plus the geometric corollary for every smooth admissible π without a central-character hypothesis. Old → new: the contract heading reads "§5.4, *Finite length of arithmetic Drinfeld cohomology* (CDN23 Théorème 4.1)", the Scope paragraph and all seven "Layer 5" citations of that supplier (§§4.14, 5.2, 5.5, their *Needs:* lines and the Layer 4 and 5 Dependencies) now cite §5.4. The restated content (with our central-character hypothesis, weaker than the supplier's) is kept.

## Checks run

**Dependency gate** (verbatim):

    depcheck: 242 roadmaps, 2488 edges, 0 problem(s)

No UPWARD or CYCLE line; no `moved:` line, the moved order already placing this roadmap at #325 after ScholzeFunctorAndModpCohomologyOfTheLubinTateTower. The one new edge is the supplier LocallyAnalyticDistributionsPartII (order line 315, a board package with accepted design, earlier than this roadmap).

**Citation resolver** on the edited README: the only lead is "ProetaleCohomologyOfPAdicCurvesAndTowers §7.5: no roadmap on main or in an open pull request", the same lead as before; it is a board package with an accepted design (order line 323), cited by section. No Lean name is found nowhere. Mathlib names were not checked by the resolver on this host ("no pinned Lake packages"); none of them changed, and the review verified them at the pins.

**Elaboration**: `lake env lean <Suggested.lean>` from the content checkout: exit 0, no output. The file declares nothing, so there is nothing to compare with `#check @name`; the mechanical binder comparison has no declaration to run on, and the README has no backticked name of this roadmap's own.

**Sources**: no new source was needed; all locators are to the five certified texts of `sources.toml` (`cited_for` of DLB17 gains "1.4" and of CDN23 gains "4.5"). No `needs-references.toml` was created.

**Ownership against open pull requests** whose files the brief does not give was checked only through `roadmaps grep` and the board packages present in this checkout.

## Adversarial pass on the added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §3.1 Lie formulas on O(Ω), k = 0 | f = z | u⁺z = −1; a⁺z = u⁺(z²)+z = −2z+z = −z; a⁻z = −∂u⁺z = z; u⁻z = −∂²u⁺z = z² | agrees with Conventions and DLB17 line 759 | — |
| §3.1 formulas on Ω¹′_b | from the dual of O(2) twisted by det⁻¹ | a⁺: ∂u⁺+1 → ∂u⁺; a⁻: −u⁺∂ = −∂u⁺+1 → −∂u⁺; u⁻: −2∂−u⁺∂² = −2∂−(∂u⁺−1)∂ = −∂²u⁺ | agrees with Lemme 3.5(c) | — |
| §3.1 smoothness read on O′ instead of Ω¹′ | ker u⁺ ⊂ O(M^p_n)′_b | a⁺ = ∂u⁺−1 acts by −1; u⁻ = −u⁺∂² acts by 2∂ | not gl₂-killed: the wrong space | Check added |
| §3.1 locally analytic but not smooth vector | δ_x, f = z | (u⁺δ_x)(z) = z′(x) = 1 ≠ 0; f(x+b) not locally constant | correct discriminating example | Check added |
| §3.1 at level zero | Ω | H¹_dR,c(Ω) = ((St^sm)′)′_b = St^sm, smooth; (St^sm)′ has uncountable dimension, its smooth vectors countable | consistent with §4.2 and Proetale §6.2 | Check added |
| §3.1 covering stability | g = 1+pⁱm, lattice Λ with p^iΛ₀ ⊂ Λ ⊂ Λ₀; u(p⁻¹) | gΛ ⊂ Λ+pⁱmΛ ⊂ Λ+pⁱΛ₀ = Λ; u(p⁻¹)ℤ_p² meets ℤ_p² in index p | U_i is G_i-stable, not G-stable | Check added |
| §3.1 H^k_dR,c for k ≠ 1 | ρ = 1; dim ρ ≥ 2 | H²_dR,c = H⁰_dR′ ≠ 0 for ρ = 1; ρ-part 0 when dim ρ ≥ 2 since Ǧ acts on π₀ through Nrd | hypothesis dim ρ ≥ 2 stated | — |
| §3.1 compact type of H¹_dR,c | H¹_dR = lim V_n finite-dimensional | dual = colim V_n^*, LB of compact type | reviewer's suggested Check false; not used | — |
| §3.1 route (a) step 4 | ℓ ∈ π′_b; bounded B ⊂ π finite-dimensional | (u(b)ℓ−ℓ)/b = 0 on B for b small, so u⁺-derivative 0; image killed by −d/dz, so locally constant, ρ-part 0 | sound | text rewritten |
| §3.1 route (b), Σ_(r,N) | N = 1 | Σ_(r,1) = Σ_r, Galois group trivial | consistent | definition added |
| §4.5 rows | V = L; V = 0 | H_C(L) = L, left term O[M]^(G_ℚ_p), an L-space; all terms 0 at V = 0 | agrees with CDN20 Prop. 2.4 at F = ℚ_p | applied |
| §4.5 identification of the left term | X = C⊗V^∨, B a Banach stage | (X⊗̂B)^G = X^G⊗̂B = H_C(V)⊗B, H_C(V) finite-dimensional | sound | — |
| §4.5 descent O[M] = C⊗̂ O[M]^(G) | Stein M^p_n over ℚ_p | O(M^p_(n,C)) = C⊗̂_ℚ_p O(M^p_n); (C⊗̂B)^(G_ℚ_p) = B | sound | — |
| §1.4 hypothesis | t⁻ʲe ∈ D⁻_dif(V) | killed by tʲ, not by tʲ⁻¹; e^(tbx)φ(x) finite sum | local nilpotence is the right hypothesis | applied |
| §1.7 unipotent-fixed vectors | b ≠ 0 with bx ∈ ℤ_p; bx = p⁻¹; v = 0 | tφ(x) = 0; (ζ_p−1)φ(x) = 0; zero vector trivially fixed and zero | statement holds on Π(V)^P-fin | applied |
| §0.1 API bullet | M(π₀⊗χ∘det), χ(p) = 1+p | p acts on JL(M) by (1+p)² ≠ 1, multiplicity 0 | only the ⇐ direction is definitional | applied |
| F08 citation | Scholze head lines 685, 755 | §5.4 carries the statement | — | applied |
| F04 hashes | manifest revs 1b1ccf4b, 2fd255d9 | README printed 6b7abb3c, a91d3aaf | stale | removed |

## For the maintainer

- New supplier: LocallyAnalyticDistributionsPartII (ND.2, ND.3), a board package at order line 315, earlier than this roadmap's placement; no move results.
- `design/plan.json` nodes outside `gaps` still name `DrinfeldComparison.*`, `WDTypeRing` and the like in their `target` and `statement` fields; this job may edit the `gaps` list only.
- The base roadmap's supplier-table row (its README line 2435) and the roadmaps LocalGaloisDeformationRings, GL2AutomorphicRepresentationsAndTransfer and CompletedCohomologyAndLocalGlobalCompatibility cite declaration names of PadicLocalLanglandsForGL2Qp that its `Suggested.lean` does not declare; not this package's to repair.
- No name of this roadmap is cited by another roadmap; nothing downstream changes.
