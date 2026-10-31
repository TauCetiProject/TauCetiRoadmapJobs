# FIX-PKG-TriangulineVarietyAndItsLocalModel~2

One review (codex, nine findings F01–F09). I checked every finding against the cited source lines, the supplier roadmaps at their current heads and the pinned libraries. All nine are correct on the mathematics. Files edited: `packages/TriangulineVarietyAndItsLocalModel/README.md`, `design/plan.json` (top-level `gaps` only), `sources.toml` (`cited_for` fields only). `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied

Gap `dominant-trianguline-semistability`, in the README and the plan: old wording "saturated trianguline with strictly decreasing integral labelled parameter weights". New wording: a saturated triangulation whose parameters satisfy δ_i(u)=∏_τ τ(u)^(k_(τ,i)) for every unit u, with integers k_(τ,1)>⋯>k_(τ,n); conclusion δ_i=z^(k_i)unr(φ_i); every finite K. The §8.3 route now invokes the contract with these algebraic unit restrictions.

Evidence: BHSsmooth17 lines 617–656 (the hypothesis is ω(x)=δ_k, i.e. algebraic unit restriction). Over ℚ₃, a ramified finite-order χ has wt=0 but is not semistable, and its unit restriction is not z⁰=1. The unramified weight-0 character is still covered.

Pattern search: "semistab" appears only in §8.3 and §4.4. §4.4 already works with potentially semistable modules.

## F02 (P1) — applied

I verified CompletedCohomologyAndLocalGlobalCompatibility §5.2a at its open head. It builds X_tri "in §5.1's CEGGPS setting" and "Retain[s] §5.1's globalisation, adequacy, …" hypotheses. It never states that ω′ is smooth on U_tri.

Changes:
- Scope and the supplier paragraph now say exactly what §5.2a states.
- New gap `unrestricted-trianguline-variety` (supplier CompletedCohomologyAndLocalGlobalCompatibility, §5.2a). It covers every finite K, every n≥1 and every r̄, and asks for: the reduced closure of U_tri; equidimension n²+dn(n+1)/2; U_tri Zariski open, dense and smooth; ω′|U_tri smooth of relative dimension n²+dn(n−1)/2−n.
- Locator: BHS17 Definition 2.4 and Théorème 2.6, lines 298–334.
- Every Needs or Dependencies line citing §5.2a now carries this gap tag.

## F03 (P1) — applied

PhiGammaModulesAndIwasawaCohomology §4.0, at its head, constructs `compactCharacterSpace` and `localMultiplicativeCharacterSpace` K (unit space × G_m). LocallyAnalyticDistributions §3.3 states that it adapts §4.0. PadicMeasuresIwasawaAlgebras §3a.1 (main) says "Nothing rigid-analytic is built".

Changes:
- §4.0 is now cited for the carriers, with dim W=d, dim T=d+1 and the smooth projection of relative dimension one. A ℚ₂ two-component witness is recorded.
- PadicMeasuresIwasawaAlgebras is limited to points and functions.
- The LocallyAnalyticDistributions contract is deleted: no target used it.
- Gap `general-character-spaces` is narrowed to (a) the weight morphism W_E→𝔸^Σ is étale, with its fibres, and (b) Zariski accumulation of algebraic points with gaps >C. Locators: BHS19 Lemma 3.5.5, line 2362; BHSsmooth17 line 727.
- The gap's supplier is now PhiGamma §§4.0, 7.3, the owner of the carrier and of the weights; LocallyAnalyticDistributions is only an adapter.
- Needs lines are retargeted: §§3.1, 4.1, 6.2, 8.6 and 11.7 deps now cite plain §4.0; §§4.3 and 11.1 cite §§4.0, 7.3; §§8.4 and 9.1 cite §4.0 with the gap.

## F04 (P1) — applied

§5.2: the vague "H¹ localization map" is now the named map `H^1(R_E(δ))→H^1(t^(−k)R_E(δ))`, with k a nonnegative tuple, both groups of dimension d, and the full localization kept separate. In the Check, "twist-localization limit" became H¹(t⁻¹R_E(δ)).

New Check: over ℚ₃ with δ=unr(2)x² (wt 2; εδ⁻¹=unr(1/6)x⁻¹ is nonalgebraic), the map has rank 1 at k=1 and rank 0 at k=2, so it is zero into the full localization.

Evidence: BHS19 Lemma 3.4.1(i)–(iii), lines 2061–2077. Lemma 3.4.2 is kept as a separate statement.

## F05 (P2) — applied

§9.2 is restated for the setting of BHS19 §4.3: r trianguline with integral distinct labelled Sen weights, δ∈T₀ⁿ, and x∈X_tri. Terms may vanish; nonvanishing of every term is claimed only for de Rham r. The extremal criterion is kept.

New Check: for N=[[0,1],[0,0]], the term C_s=Z_s is 0 (so the sum reduces to C_e alone); for N=0, C_e+C_s has both terms nonzero.

Evidence: BHS19 lines 3203–3224.

Pattern: §9.6 (diagram (4.11), lines 3303–3334) and §9.7 (Proposition 4.3.7) carried the same unneeded de Rham restriction. Both are repaired, and the §9.7 route now uses blockwise ν=0, as in the source's proof. §8.5 keeps its de Rham hypothesis, because BHS19 Proposition 4.1.5 assumes it (line 2963).

## F06 (P2) — applied

A paragraph before §13.6 now defines:
- κ_F: Ext¹_F→Ext¹(D₁,D₁)×Hom(K×,E), which is §11.6's map;
- κ_G: Ext¹_G→Ext¹(C₁,C₁)×Hom(K×,E), which is §11.6's filtration-ordered map followed by an exchange of the two factors;
- the partial maps κ_(σ,F) and κ_(σ,G) for D and for D_σ, built the same way.

§§13.9, 13.12 and 13.13 now name these maps.

New Check at n=3, d=1: the filtration-ordered target has dimensions (2,5) and κ_G's target (5,2). The scalar twist gives the ordered output (ψ, C₁⊗R(1+εψ)) and κ_G gives (C₁⊗R(1+εψ), ψ). Evidence: Ding25 (2.33), lines 1128–1133, and Theorem 2.32, lines 1233–1239.

## F07 (P2) — applied

The bundle `analytic-local-algebra` is replaced by three precise gaps on RigidAnalyticGeometry:
- `completed-normalization-injectivity`: the product over every normalization point, then over normal, locally projective birational stages. Locators: NT21 lines 1473–1485; BHS19 line 2691. Used in §7.2.
- `rigid-normal-cm-openness`: used in §§7.5 and 8.4.
- `rigid-flat-openness`: flatness spreads to an affinoid neighbourhood, and the image of that neighbourhood is admissible open. Locators: BHS19 lines 2923, 2948; BHSsmooth17 line 464. Used in §§8.1, 8.4 and 8.6.

The Herr-complex, base-change and Fitting parts are now imported from PhiGamma §§3.4a and 7.6–7.8. Constructibility was dropped because no target uses it.

The §7.2 route now normalizes after each blowup. A node Check was added: y↦(0,y), kernel 0, while a single branch kills y.

## F08 (P2) — applied

§8.3 is now stated at the source's generality, with no dominance hypothesis, and gains an explicit step: on X_tri every prefix valuation satisfies v_p((δ₁⋯δ_i)(ϖ_K))≥0.

Proof of the step: on U_tri, saturated sub-objects of an étale module have slope ≥0. The locus {|·|>1} is an admissible open lying inside the complement of U_tri, which has smaller dimension in the equidimensional X_tri; so the locus is empty.

Consequence: the gap hypothesis forces strict dominance, and the source's induction then goes through. Recorded in the route: the source compares a sum over embeddings with a single gap, which needs every summand nonnegative (BHSsmooth17 lines 642–648).

Checks: the d=2 example with prefix valuation −3 satisfies −2>−3 at each embedding and −3≥−4, so the induction step alone does not force w=1; the prefix bound excludes this point. Also added: an n=1 Check, a non-dominant (0,2) Check, and the e=2 Check gap 3>2.

## F09 (P2) — applied

The Downstream consumers section no longer promises consumption by PadicFamilies, CompletedCohomologyAndLocalGlobalCompatibility or ModularityAndLanglandsExtensions (merge-order lines 190, 247 and 255, all earlier than 303). It keeps PadicHodgeParametersInLocallyAnalyticRepresentations TR1–TR5 (line 304). The sentence "Future … applications consume" is gone.

Pattern: Scope said completed cohomology "belong[s] to [its] named consumers". It now names CompletedCohomologyAndLocalGlobalCompatibility as the earlier owner.

## Checks run

- `lake env lean packages/TriangulineVarietyAndItsLocalModel/Suggested.lean`, from the content checkout: exit 0, no output. The file has no `TauCeti.*` imports, so no module build was needed.
- `#check @name` comparison: `Suggested.lean` declares nothing (an empty namespace with a docstring of headlines that cannot be stated at the pins), so there was no case to elaborate and nothing changed. No headline was affected by these findings.
- Depcheck, exact output after the final edits: `depcheck: 52 roadmaps, 594 edges, 0 problem(s)`, exit 0, with no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citations and no Lean names found nowhere. The backticked `compactCharacterSpace`, `localMultiplicativeCharacterSpace` and `CharacterWeights` all resolve to PhiGamma.
- README gap slugs match the plan `gaps` list both ways (14 entries; suppliers and `needs` agree). `sources.toml` parses. Only `cited_for` was extended for BHS19, BHS17 and NT21; no key was added.
- Ownership: object searches (`roadmaps grep`, plus the sibling READMEs at their heads) found no other owner of the large-gap saturation step or of the rigid statements. PhiGamma §4.0 is the carrier owner.
- Gate failures: none were listed for this round.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| semistability gap (F01) | n=1 ramified χ over ℚ₃; unr(a); n=2 k=(0,0) | χ: wt 0, χ\|O×≠1 so excluded; unr(a): k=0, semistable; k=(0,0), δ₁/δ₂=unr(c) generic: H¹_g=0≠H¹ (dim 1), non-semistable extension | Strict decrease and unit restriction both needed; kept |
| prefix bound §8.3 (F08) | n=1; unr(p); d=2 (0,2) at val −3; n=3 k=(0,1,2) at V=−2 | v=0; v(unr(p)(ϖ))=1 not étale; −2>−3, −3≥−4; numerically consistent for w=(13), excluded by V≥0 | Bound closes the source gap; Checks added |
| §8.3 gap test | e=2, v=1, k=(4,1); gap 2; (0,2) at v=0 | 3>2 true; 2>2 false; −2>0 false | Consistent with Layer 8 Examples |
| unrestricted X_tri gap (F02) | (n,d)=(1,d),(2,1),(2,2),(3,1) | dim 1+d−(d+1)=0; 7−4=3; 10−6=4; 15−6=9, each equal to n²+dn(n−1)/2−n | Relative dimension formula verified |
| character carriers (F03) | ℚ₂, ℚ₃, unramified quadratic | ℚ₂: 2 components of dim 1, T dim 2; ℚ₃: 2 components; d=2: dims 2, 3 | Matches the §4.0 product model |
| étale wt (F03a) | disc coordinate T; sign char; x | d/dT log(1+T)=1/(1+T), a unit for \|T\|<1; wt(sign)=0; wt(x)=1 | Fibre descriptions correct |
| accumulation (F03b) | K=ℚₚ, (a+(p−1)p^m, b−(p−1)p^m) | gap a−b+2(p−1)p^m→∞; u^((p−1)p^m)≡1 mod p^(m+1) | True; Zariski dense via infinitely many zeros per coordinate |
| §5.2 (F04) | ℚ₃ unr(2)x², k=1,2,∞; wt 1, k=1 | ranks 1, 0, 0; εδ⁻¹=unr(1/6)x⁻¹; rank 0 | Finite target named; Check added |
| §9.2 (F05) | S₂, w_x=e, w=s; N=[[0,1],[0,0]]; N=0 | P_(e,s)(1)=P_(e,e)(1)=1; stable line E e₁ only, Cartan 0, Z_s∌x_pdR so C_s=0; N=0: both terms nonzero | Zero terms permitted; de Rham only for nonvanishing |
| §§9.6–9.7 (pattern) | n=2,d=1; n=2,d=2 | 8−5=3; 12−8=4 | Dimensions unchanged; de Rham dropped |
| κ_G (F06) | n=3,d=1 scalar twist; n=2 | (2,5) vs (5,2); ordered (ψ, C₁⊗R(1+εψ)) vs κ_G (C₁⊗R(1+εψ), ψ); n=2 scalar (ψ,ψ) does not discriminate, so the n=3 type check is used | Swap explicit; ker κ_F=8−7=1=−1+(n−1)d |
| V in §13.9 | n=3,d=1 | (5+2)·2=14; target 9; L=5 | Agrees with existing Check |
| completion gap (F07) | node xy; cusp y²=x³; smooth point | y↦(0,y), kernel 0; single branch kills y; t²,t³: injective | Product over all branches required |
| normal/CM openness | node; plane ∪ line | normal off origin, CM everywhere; CM off the meeting point | Zariski open in both |
| flat openness | t↦xy; point ⊔ line→line | flat, image {\|t\|≤1}; not flat at the point, no claim | Statement holds |
| consumers (F09) | merge order | 190, 247, 255 < 303 < 304 | Only TR1–TR5 kept |

## For the maintainer

- Gap slugs: `analytic-local-algebra` is gone, replaced by `completed-normalization-injectivity`, `rigid-normal-cm-openness` and `rigid-flat-openness`. `unrestricted-trianguline-variety` is new.
- `general-character-spaces` now names PhiGammaModulesAndIwasawaCohomology §§4.0, 7.3, not LocallyAnalyticDistributions. LocallyAnalyticDistributions is no longer a supplier.
- New contracts fall on CompletedCohomologyAndLocalGlobalCompatibility §5.2a, PhiGamma and RigidAnalyticGeometry.
- PadicHodgeParametersInLocallyAnalyticRepresentations consumes Layers 10–13. It should read κ_G in the exchanged order now made explicit in §13.6.
- No Lean names changed.
- Source issues: (1) the BHSsmooth17 Lemma 2.10 proof gap is repaired in §8.3; (2) the single-point step in BHS19 Proposition 3.7.2 is avoided by the product route in §7.2.
- No text was missing, so there is no `needs-references.toml` request.
- Nothing suspicious was found in the review text.
