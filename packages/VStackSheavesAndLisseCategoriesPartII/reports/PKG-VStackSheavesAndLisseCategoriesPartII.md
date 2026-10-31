# PKG-VStackSheavesAndLisseCategoriesPartII: package report

Deliverables: `packages/VStackSheavesAndLisseCategoriesPartII/README.md` (1994 lines, 65 targets in Layers VS6–VS11, every target, Check and worked example of the accepted design kept), `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`, as `TauCetiRoadmap/EnhancedDerivedSheaves/metadata.toml` on main), `sources.toml` (8 entries, `cited_for` fields brought up to date; no new source was needed, nothing was fetched), and the `gaps` list of `design/plan.json` (nothing else in the plan changed; checked by comparing every top-level key with the pre-edit copy).

## Headline theorems

| Headline | README | Status at the pins |
|---|---|---|
| Exceptional functors Rf_!, Rf^! for fine maps of decent v-stacks with agreement, pseudo-functoriality, projection formula, proper base change | VS7.5 | not statable: no perfectoid spaces, v-site, diamonds, small v-stacks or `D_ét` in Mathlib or Tau Ceti (Mathlib has perfectoid rings in `Mathlib/RingTheory/Perfectoid/`; Tau Ceti has pre-adic/adic spaces in `TauCeti/AlgebraicGeometry/AdicSpace/`, 103 files, none with perfectoid spaces or étale sheaves); also no Liu–Zheng enhanced operation maps |
| Dualizable in CoCorr_S ⇔ ULA | VS9.9 | not statable: additionally no symmetric monoidal bicategories (Mathlib `CategoryTheory.Bicategory` has no monoidal structure) and no ULA on Artin v-stacks |
| Relative Lefschetz–Verdier trace formula; proper pushforward of characteristic classes | VS10.1, VS10.2 | not statable: CoCorr_S, proper nice maps, dualizing complexes |
| Lefschetz trace formula for proper diamonds; local terms under base change and for perfect schemes | VS10.3, VS10.6, VS10.8 | not statable: diamonds, `D_ét`, local terms; scheme side also lacks étale cohomological correspondences |
| cc of an admissible object on [S/G_S] = trace distribution | VS11.4 | not statable: classifying v-stack, its inertia, `D_ét([S/G_S], Λ)` |
| Künneth formula for characteristic classes; cc on [X/G] = universal local term | VS11.9, VS11.12 | not statable: quotient v-stacks, inertia, based cohomological correspondences |

Nothing is stated in place of any of them. VS9.4 (dualizable objects of D(Λ) are the perfect complexes) and VS9.5 (reflexive ⇔ finitely generated over R/𝔪^k) are statable at the pins but are auxiliary lemmas of HKW22 Appendix B, not results the roadmap is named by; they stay README targets, as in the accepted design.

## Suggested.lean and elaboration

The file is the module docstring (title, "README.md is the roadmap", each headline above with its missing carriers), `import Mathlib`, and an empty `namespace TauCetiRoadmap.VStackSheavesAndLisseCategoriesPartII`. No `TauCeti.*` import, no `set_option`, no declarations.

Elaboration: `lake env lean <Suggested.lean>` from the content checkout: exit 0, no output at all — 0 `sorry` warnings, no other messages. The `#check @name` comparison of elaborated signatures was not applicable: the file declares nothing (no `def`, `instance` or `theorem` whose binders could be dropped).

## What the README could not support

Nothing of the design was dropped. Supplier gaps (six, as accepted) remain the only external requirements; they are stated in the supplier subsections of `## Exact supplier contracts` as `What <Supplier> must provide (gap:<slug>): …` and in `design/plan.json` `gaps` (each entry now carries `slug` = its id, with `supplier`, `section`, `needs`):

- EnhancedDerivedSheaves §E3.4: `vs-pii-enhanced-operation-map`, `vs-pii-partial-adjoints`, `vs-pii-restricted-nerves`, `vs-pii-descent`. Re-checked on main: §E3.4 (line 1229) has ringed diagrams and coherent mates only; "restricted nerve", "multisimplicial" (other than a localisation remark at line 1241) and "partial adjoint" do not occur; Liu–Zheng is only in its bibliography (line 2969). Gaps still open.
- EtaleDualityAndPerverseSheaves §6.2/§6.3: `vs-pii-scheme-correspondences`, `vs-pii-scheme-local-terms`. Re-checked at the head of its open pull request: §6.2 (line 6284) is for `F_i ∈ D^b_ctf` with Λ "a finite ring killed by a power of ℓ, or a finite extension of ℤ_ℓ or ℚ_ℓ" (lines 6292–6294). Gaps still open.

## Notions moved down from later roadmaps

None. Every supplier is on main (EnhancedDerivedSheaves, SchemeAndStackFoundations, PivotalSpherical, AdicSpacesPartIII, DGAInfinity) or earlier in the merge order (VStackSheavesAndLisseCategories, DiamondsAndVStacks, DiamondSixOperations, AdicCoefficientsAndComparisons, EtaleDualityAndPerverseSheaves, SmoothRepresentationsOfLocalGroups — all new-roadmap pull requests, read at their heads).

## Duplication sweep and ownership

Searched (roadmaps grep over main and the 354 open heads, by object): "decent v-stack", "prespatial", "fine map(s) of decent", "weakly compactifiable", "universal local term", "cohomological correspondences of v-stacks/decent", "Haar(G, Λ)", "locally profinite set … smooth module / C(T, Λ)" — no match anywhere. "Lefschetz–Verdier" and "Lu–Zheng": EtaleDualityAndPerverseSheaves §6 (scheme correspondences, its symmetric monoidal 2-category of scheme cohomological correspondences at line 6489; no generic trace in symmetric monoidal 2-categories), ClassicalAdicEtaleCohomology (gluing topoi, unrelated), GlobalShtukas/automorphic roadmaps (function-field and automorphic uses). "inertia stack": PELModuli only (Shimura moduli). "trace distribution / distribution character": only complex automorphic trace distributions (AutomorphicSpectralTheory, CongruenceSpectralGap, GanGrossPrasadUnitaryGroups, GL2AutomorphicRepresentationsAndTransfer, ShimuraVarieties, EndoscopicTransferAndUnitaryTraceComparison), none torsion-coefficient local characters. "classifying stack … cohomologically smooth": VStackSheavesAndLisseCategories §VS0.2 (the non-smoothness of the point, imported and cited) and BunGAndNewtonStrata (Bun_G strata, not the stacky six functors). Pinned libraries: Mathlib and Tau Ceti have none of the geometric objects; the categorical inputs used (`ExactPairing`, `Bicategory`, `Bicategory.Adjunction`, `Pseudofunctor`, `LocallyConstant`, `LocallyConstant.charFn`, `CompactOpens`, `Module.Dual`, `Module.Dual.eval`, `Module.IsReflexive` with the instances at Mathlib/LinearAlgebra/Dual/Lemmas.lean lines 262 and 284, `IsDiscreteValuationRing`, `IsLocalRing.maximalIdeal`, `Module.Finite`, `LinearMap.trace`, `FGModuleCat` with `RightRigidCategory` at line 264, `DerivedCategory`, `TauCeti.IsSmoothDiscrete` at line 272 of its file) were each read at the pin and are cited, not restated.

Removals in this pass: none; the accepted design had already deleted its duplicates (ordinary symmetric traces → PivotalSpherical Layers 2/7; finite-projective traces → AdicSpacesPartIII §R3.8; compact = perfect → DGAInfinity Layer 5; Haar measures/integration → SmoothRepresentationsOfLocalGroups §SR.1.1; derived invariants/duality → §SR.0d.2 and VStackSheavesAndLisseCategories §VS4.2). The sweep found nothing new. This roadmap is the owner of the stacky six functors, CoCorr_S of v-stacks and the torsion-coefficient trace distribution because no roadmap on main, earlier in the order or among the open heads states them. No `Suggested.lean` declaration exists, so no fully qualified name can clash.

## Corrections relative to the accepted design

- Applied the three P3 notes of the accepting review: F01 (Corrections bullet now says the gluing paper arXiv:1211.5294v4 contains no Proposition 1.4.4 and no partial-adjoint statement, and that Remark 1.4.4 is in *Enhanced six operations*, p. 38); F02 (the repeated "§S4.4 and §S4.4" and "§S1.5, §S1.5, §S1.5" are single citations; the plan's `proofSteps` were not touched, since only `gaps` may change); F03 (the local-terms gap names its own coefficient ring, in README and plan).
- Rewrote the catalogue-generated field lists ("Work under the following hypotheses", "The source locators are", "The interface consists of", "These facts enter") into prose; dropped from each subsection the hypotheses already fixed in Conventions (Perf, Λ).
- Replaced every catalogue slug citation by the supplier's actual section, verified in its README: DiamondsAndVStacks D4.1, D4.6, D4.7, D4.10, D5.1, D5.2, D5.12, D5.14, D6.4, D6.5; VStackSheavesAndLisseCategories VS0.1, VS0.2, VS1.1, VS1.2, VS4.2, VS5.2; SmoothRepresentationsOfLocalGroups SR.0.3, SR.0d.2, SR.1.1, SR.2.1, SR.2.2 (target names kept in italics); AdicCoefficientsAndComparisons targets L1/…, L3/… (its headings carry those target names); own slugs replaced by VSk.n.
- Supplier contracts rewritten with Mathlib/Tau Ceti declaration names and files; "Used by" lists recomputed mechanically from the *Needs:* lines (VS4.2 is used by VS8.7, VS8.9 and VS11.1, not only VS8.7). Dependencies lines recomputed as the exact union of each layer's *Needs:* (VS6 no longer lists VStackSheavesAndLisseCategories VS1, which no VS6 *Needs:* cites — the review's R02 residue).
- VS9.5's statement had Lean syntax unbackticked (`Module.IsReflexive (R ⧸ 𝔪^k) M ↔ …`); restated in prose with the Mathlib name in backticks. Other unbackticked Lean names (`LinearMap.trace`, `HaarMeasureWithValues`, `CohCorr.*`, `perfection_universalHomeomorphism`, `FGModuleCat K`) backticked.
- Removed the design's "Suggested Lean file" section (pins and process text); its content is the Lean docstring. Removed `<a id>` anchors and the `(*slug*, kind)` heading suffixes to match upstream headings.

## Adversarial pass

Values computed by me; rows for unchanged targets re-derive the instance rather than cite the earlier rounds.

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Conventions, Haar character witness | affine group {(a,b)} over ℚ_p, left Haar |a|⁻²da db, g = (p,0) | E·g = {(ap, b)}: substituting a′ = ap gives da′ = |p|da, |a′|⁻² = |p|⁻²|a|⁻², so μ(Eg) = |p|⁻¹μ(E) = pμ(E); χ_G(g) = p; δ_SR(g) = μ(Eg⁻¹)/μ(E) = |p| = p⁻¹; χ_G = δ_SR⁻¹ | holds; VS8.5 Check (scalar p, = 2 ≠ 1 in F_5 for p = 2) agrees |
| Scope, distribution character clause | G = ℤ/2, Λ = F_3, sign rep; Λ = ℤ/ℓ², trivial ℤ/ℓ of finite G with ℓ ∤ |G| | I_{1_σ,μ} = σ, trace −1 = 2 ∈ F_3; ℤ/ℓ is not projective over ℤ/ℓ² so "finite projective" is the needed hypothesis | kept as written |
| Gap G-scheme-local-terms (F03 text) | Λ = F_ℓ[t] (n = ℓ), Λ = ℤ/6 with p ∤ 6, X = Spec k̄, c = id, F = Λ[0] | F_ℓ[t] and ℤ/6 outside §6.3's "finite ring killed by a power of ℓ" range, inside the gap; Tr = 1 = local term | sentence now self-contained |
| Gap G-scheme-correspondences | F = ⊕_ℕ Λ (not constructible) | outside D^b_ctf, inside "arbitrary objects of D(X_ét, Λ)"; Hom(c₁^*F, c₂^!F′) defined | exactly the missing range |
| Corrections bullet (F01) | grep "1.4.4" in LiuZhengGluing text; LiuZhengEnhanced line 1887 | 0 hits in the gluing paper; Remark 1.4.4 at LiuZhengEnhanced line 1887 (page-38 block); Proposition 2.2.4 at line 3906 (p. 79) | repaired |
| VS6.1 | identity; open U ⊂ X; [S/ℤ_p] → S | fibre T; U ×_X T open in T; test T = S gives [S/ℤ_p] itself, automorphisms ℤ_p, not 0-truncated, so not representable | Checks consistent |
| VS6.2 | Spd C; Spd ℤ_p; point S → [S/ℤ_p] | identity clean chart; chart Spd ℤ_p × Spd F_p((t^{1/p^∞})); base change ℤ_p × S → S has dualizing object Dist(ℤ_p, Λ), not invertible, so not a chart | consistent |
| VS6.3 | locally separated locally spatial X; [S/G_S] | identity chart, diagonal injective; diagonal fibres G-torsors, quasiseparated | consistent |
| VS6.4 | X₂ = X₃ = X₁; In_S(X) = X ×_{X×_SX} X | fibre product X₁, decent; inertia is a fibre product of decent stacks | consistent |
| VS6.5 | Spd C; Spd k (k discrete alg. closed) | separated spatial; chart Spd k × Spd F_p((t^{1/p^∞})) | consistent |
| VS6.6–6.7 | identity; [S/GL_n(ℤ_p)] → S; ∞-dim perfectoid ball | fine; fine (chart top map GL_n^♢ × S → S smooth of finite dim.trg); dim.trg = ∞ at every point, not fine | consistent |
| VS6.8 | open immersion; [S/GL_n(ℤ_p)] → S; S → [S/ℤ_p] | smooth; smooth (pro-p compact open, ℓ ≠ p); not smooth (see VS6.2) | consistent |
| VS6.9 | G = 1; S = Spd ℚ_p, G = 1, H = ℤ/2; f₁ = f₂ = id_H | BG = S; unramified quadratic torsor gives B1 → BH not φ_f; 2-automorphisms = centre of H(S) | correction E-Example 4.1.1 stands |
| VS6.10 | q : S → [S/G], α_g | α_g^* on q^*M is the action of g; α = id gives identity | consistent |
| VS6.11 | closed immersion; (P¹_C)^♢ → Spd C; [S/ℤ_p] → S; open disc | proper nice; proper nice; diagonal fibre ℤ_p not injective, not separated; not quasicompact over Spd C, fine but not proper | consistent |
| VS7.1 | ⊔_ℕ points; Spa(C,O_C)^♢ | locally prespatial, not quasicompact; X₀ = X | consistent |
| VS7.2 | proper prespatial curve (dim.trg 1); qc open j | amplitude ≤ 3; Rj_* amplitude 0 | consistent |
| VS7.3 | proper strongly compactifiable f; qc open j; ∞-dim ball | j = id, h = id: Rf_! = Rf_*; Rj_! = extension by zero; not locally finite dim.trg | consistent |
| VS7.4 | X = Spa(C,O_C)^♢; T × Spa C → Spa C, T infinite profinite | value D(Λ); dualizing object Dist(T, Λ) not invertible, so excluded from !-codescent | consistent |
| VS7.5–7.6 | f : [S/G] → S, G finite, ℓ \| |G|, B = Λ | Rf_! = (M ⊗ Haar)_G (homology), Rf_* = RΓ(G, M) (cohomology), different for M = Λ: H_1(ℤ/ℓ, F_ℓ) ≠ 0 in degree −1, H¹ in degree +1; (P4) gives RHom(Rf_!M, Λ) = RΓ(G, M^∨ ⊗ Haar^∗) | (P4) is a genuine duality |
| VS7.7 | closed immersion i; smooth proper p of dim d | Ri_! = i_*; trace Rp_*Λ(d)[2d] → Λ in degree 2d | consistent |
| VS7.8 | [S/G] → S; q : S → [S/ℤ_p], M = C(ℤ_p, Λ) | Rf^!Λ = Haar^∗ invertible; Rq^!Λ = Haar ≅ Λ, but Rq^!M = Hom_{ℤ_p}(C_c(ℤ_p,Λ), C(ℤ_p,Λ)) ≅ Dist(ℤ_p, Λ)-type module ≠ Haar ⊗ M, so (2) fails | q not smooth, as stated |
| VS7.9 | K_{S/S}; (P¹_C)^♢; T = ℤ_p profinite | Λ_S, ∫ = id; Λ(1)[2], trace on H²; Dist(ℤ_p, Λ) not rank one over C(ℤ_p, Λ) | consistent |
| VS7.10–7.11 | I = Λ; f = id; f : [S/G] → S | identity; Λ = Λ; K_{diag} = Haar(G, Λ) = (Haar^∗)⁻¹ | consistent |
| VS8.1 | T finite; T = ∅; T = ℕ, Λ = ℤ, M = ℤ^ℕ | all smooth (1_T ∈ C_c); zero ring, 0; constant 1 ∉ 1_U·M for finite U, not smooth; smooth part ℤ^{(ℕ)} | consistent |
| VS8.2 | T finite | sheaves = Λ^T-modules, all smooth and complete | consistent |
| VS8.3 | T = Fin 3; ∅; T = ℤ_p, Λ = F_ℓ | Λ³ (Dirac basis); 0; μ(pⁿℤ_p) = p⁻ⁿ ≠ 0 on every coset, not a finite Dirac sum | consistent |
| VS8.4 | T finite; T = ℤ_p | four operations identities on Λ^T-modules; Rf^!Λ = distributions (DiamondSixOperations §S5.4) | consistent |
| VS8.5 | G = ℤ/3, Λ = ℤ[1/3]; G = ℤ_p, Λ = F_ℓ; G = ℤ_p, Λ = F_p | counting measure generates; μ(pⁿℤ_p) = p⁻ⁿ; Haar = 0 since μ(ℤ_p) = p·μ(pℤ_p) = 0 forces μ = 0 | invertibility hypothesis needed and present |
| VS8.6 | GL_n(ℤ_p); ℚ_p^× | decent (chart via GL_n^♢ × S) | consistent |
| VS8.7 | G finite; G = ℤ_p, M = Λ | Rq_* = Rq_! = Λ[G] ⊗ −, Rq^!M = Hom_G(Λ[G], M) = M; Rq_*Λ = C(ℤ_p, Λ), Rq^!Λ = Hom_G(C_c(ℤ_p,Λ), Λ) = Haar | consistent |
| VS8.8 | H = 1; G = H × H′, H′ finite | reduces to VS8.7; Rq^!M = Hom_{H′}(Λ[H′], M) = M | consistent |
| VS8.9 | G finite, |G| ∈ Λ^×; G = ℤ_p, M = Λ, p ∈ Λ^× | Rf_! = (M ⊗ Haar)_G ≅ M^G = Rf_*; H^{>0}(ℤ_p, Λ) = 0, Rf_*Λ = Λ, K = Haar^∗ ≅ Λ | consistent |
| VS8.10 | T = point; T = G conjugation; ax+b group, Λ = F_5, p = 2 | (Haar^∗)^G; Hom_G(C_c(G) ⊗ Haar, Λ); χ_G(diag(2,1)) = 2 ≠ 1, so (Haar^∗)^G = 0 | consistent |
| VS9.1 | unit of Corr_S; transposition on 2 points; (S, Λ ⊕ Λ[1]) | tr = S; Fix = ∅; 1 − 1 = 0 with the Koszul sign | orientation = Mathlib's `ExactPairing` |
| VS9.2 | f an isomorphism in a 1-category; empty correspondence on P¹ | tr(e) = tr(e′); both integrals 0 | consistent |
| VS9.3 | B terminal; B = Corr_S, F = c₂!c₁^* | C_F ≅ F(∗); Hom(c₂!c₁^*L, M) = Hom(c₁^*L, c₂^!M) | consistent |
| VS9.4 | Λⁿ[0]; Λ ⊕ Λ[1]; Λ = ℤ/6, P = 3Λ; ℚ[0] over ℤ | matrix trace; 0; 3² = 9 ≡ 3 so e = 3 idempotent, tr_proj(id_P) = 3, `LinearMap.trace` = 0 (P not free); ℚ not compact | consistent |
| VS9.5 (restated) | k = 1, M = κ²; Λ = ℤ/ℓ², M = ℤ/ℓ ⊕ ℤ/ℓ²; Λ = F_ℓ, M = Λ^{(ℕ)} | evaluation iso; M ≅ M^∗∗ (Λ self-injective, ℤ/ℓ^∗ = Hom(ℤ/ℓ, ℤ/ℓ²) ≅ ℤ/ℓ); M^∗∗ has dimension 2^{2^ℵ₀}, evaluation injective not surjective | restatement equals the source's (HKW22 Lemma B.1.1) |
| VS9.6 | identity correspondence; [S/G]; open immersion disc ⊂ closed disc | tr(id) = In_S(X); [G//G]; j_! ≠ Rj_* so not a 2-morphism | consistent |
| VS9.7 | S = Spd C, (S, A), id | End_{D(Λ)}(A); tensor target (c₂ ×_S d₂)^!(A′₁ ⊠ A′₂) (corrected misprint) | consistent |
| VS9.8 | X = S, A perfect; X smooth fine, A = Λ_X | m = 𝔻M ⊗ M → RHom(M, M), iso iff perfect; K ⊠ Λ → pr₂^!Λ iso by smoothness | consistent |
| VS9.9 | closed disc D̄, j : open disc, A = j_!Λ | at the Gauss point η, (j_!Λ)_η = 0; at its rank-2 specialisation inside the open disc the stalk is Λ; specialisation map Λ → 0 not iso, so not overconvergent, not ULA | Check true |
| VS9.10 | S = X = C, A = Λ², u matrix; u = 0; permutation σ of finite T | matrix trace; 0; Fix = (T^σ)_S, x ↦ tr(u_x) | consistent |
| VS9.11 | A = Λ³ ⊕ Λ[1]; X = [S/(ℤ/2)] | cc = 3 − 1 = 2; In_S has components {1}, {σ} | consistent |
| VS9.12 | U = X | identity restriction | consistent |
| VS10.1 (headline) | X = P¹_C, X′ = C′ = S, C = ∅ | tr(0 \| RΓ(P¹, Λ)) = 0 = ∫_∅ | consistent |
| VS10.2 (headline) | X′ = S, X proper nice; p = id | ∫ cc_{X/S}(A) = χ(RΓ(X, A)); identity | In_S(p) proper: In_S(X) → X ×_{X′} In_S(X′) closed immersion (base change of separated diagonal) |
| VS10.3 | P¹, g = az, a ≠ 1 (incl. p = 2); closed disc, g = T + p, char 0 | fixed points 0, ∞, multipliers a, a⁻¹ ≠ 1, local terms 1 + 1 = 2 = tr on H⁰ ⊕ H²; T + p = T impossible, Fix = ∅ but tr = 1 on RΓ(D, Λ) = Λ | properness hypothesis needed |
| VS10.4 | X = S, F = Λⁿ; β = ∅; β₁ ⊔ β₂; g = id on P¹ | n; 0; additive; only ∫ = χ(P¹) = 2 | consistent |
| VS10.5–10.6 | a = id; C ⊂ C′ alg. closed, P¹, g = az | identity functor; fixed points 0, ∞ over both, local terms 2 = 2 | consistent |
| VS10.7 | X = Spec k; perfection of A¹, x ↦ x + 1 | identity; Fix = ∅ on both sides (x + 1 = x impossible) | consistent |
| VS10.8 | X = Spec k, c = id; Λ = F_ℓ[t] | χ(F) on both sides; scheme side only via the local-terms gap | consistent |
| VS11.1 | M in degree 0, K pro-p, p ∈ Λ^×; C_c(G, Λ), G noncompact | invariants exact (averaging), M^K perfect ⇔ finite projective; C_c(ℚ_p)^{ℤ_p} = C_c(ℚ_p/ℤ_p), infinite rank | consistent |
| VS11.2 | G finite; G abelian | ⊔_{[g]}[S/Z_G(g)]; G × [S/G] | consistent |
| VS11.3 | G = ℤ/2, Λ = F_3; G = ℤ_p, M = Λ; M[1] | values 1, −1; ∫ h dμ; sign change | consistent (ℤ/2 discrete is locally pro-p for every p via the trivial open subgroup) |
| VS11.4 (headline) | G finite, counting measure | cc(M) = character g ↦ tr(g \| M) | consistent |
| VS11.5 | U = T = S, f_i = id; U = T × B, B perfectoid ball | identity; sides differ by K_{B} = Λ(1)[2] without the twist | consistent |
| VS11.6 | T = S; T = [S/G], G finite | cc = 1; In = ⊔[S/Z(g)], K ≅ Λ | consistent |
| VS11.7–11.8 | T = S, B = Λ; B = Λ_T | ⊠_𝔗 = ⊗ of CoCorr_S; no twist; dual (X → T, 𝔻A, K_{T/S} ⊗ B⁻¹) agrees with HKW22 at B = Λ_T | consistent |
| VS11.9 (headline) | T = S; X_i = T, A_i = Λ | tr(A ⊗ B) = tr A · tr B; both sides cc_{T/S}(Λ_T) | consistent |
| VS11.10–11.11 | X = S; trivial action; ℤ/2 swapping {a, b}, A = Λ | [G//G]; X × [G//G]; Fix(c̃) = {(a,1),(b,1)}, values 1, 1, nothing over σ | consistent |
| VS11.12 (headline) | X = S | cc_{[S/G]/S}(Λ) = the canonical trivialisation of VS11.6 | consistent |
| VS11.13 | g = az; G = {[[a,b],[0,1]]}, a ∈ 1 + ϖO, b ∈ O, U = G ∖ {1} | linear terms (a − 1)z, (a⁻¹ − 1)w nonzero, étale; in w = 1/z the fixed equation w(bw + a − 1) = 0 has a double root at w = 0 when a = 1, b ≠ 0: branched, not étale | étaleness hypothesis needed; correction stands |

Context check: `Suggested.lean` has no declarations, so no `variable`/`include` question arises. Generality: README statements are unchanged in scope from the accepted design except VS9.5's wording (same generality: any DVR R, any k ≥ 1).

## Dependency check

    depcheck: 56 roadmaps, 650 edges, 0 problem(s)

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (Mathlib and Tau Ceti names were checked by hand at the pins, listed above).

## Other notes

- Ownership against open pull requests was checked with the roadmaps tools over all 354 open heads, not only the sibling list.
- No suspicious instructions were found in any text read.
- No source was missing; `needs-references.toml` was not written.

## Repairs after the worker's checks

- TeX residue: outside code spans, every `_{…}` and `^{…}` in the README was rewritten with parentheses (for example `C ×_(X ×_S X) X`, `K_(Fix(c))`, `F_p((t^(1/p^∞)))`; a bare `^` or `_` such as `M^K` was already accepted and was left alone). The meaning is unchanged, and the README now has 0 TeX-residue hits.
- Target ids: the 65 subsections `### VSk.n Title` are now `### k.n Title`. The layer headings (`## Layer VSk: …`) and the in-text references `VSk.n` stay as they were, and the README reads as 65 targets.
- Gap slugs: `gap:VS-PII/G-<name>` contained a `/`, which the gap reader cuts at. The six gaps are now `vs-pii-enhanced-operation-map`, `vs-pii-partial-adjoints`, `vs-pii-restricted-nerves`, `vs-pii-descent`, `vs-pii-scheme-correspondences` and `vs-pii-scheme-local-terms`. They were renamed in the README, in this report and in the `slug`/`id` fields of the `gaps` list of `design/plan.json`. Nothing else in `design/plan.json` changed.
- Dependency check rerun after the repairs: `depcheck: 56 roadmaps, 650 edges, 0 problem(s)`.
