# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~3

Repair round for the review `REV-PKG-VStackSheavesAndLisseCategoriesPartII~2` (ten findings: one P1, four P2, five P3). Each finding was checked against the cached legal sources, the supplier heads and the package's own definitions. Nine are applied as asked. R01 is applied differently, because the isomorphism it asks to restore has no proof in any source; the reason is given below.

Files touched: `packages/VStackSheavesAndLisseCategoriesPartII/README.md`, `packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean` (docstring only) and `packages/VStackSheavesAndLisseCategoriesPartII/sources.toml` (the `cited_for` layer numbers after R10, and Sch17's locator now includes §12). `metadata.toml` and `design/plan.json` are unchanged: no new supplier gap was needed.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R01 (P2) — applied differently

Old → new: the proper nice restriction is replaced by a comparison c_f : Rf_! → Rf_* for every proper fine map, pseudo-natural in compositions and arbitrary 2-cells, invertible for proper nice and chart-locally representable maps (VS7.7). VS6.11 adds a representability criterion. Corr/CoCorr 2-morphisms, integration, VS9.1/9.2/9.4 and BCoCorr now use "cohomologically proper" maps (comparison universally invertible).

Why "differently". The isomorphism for every proper fine map is not stated as a target, because no proof of it exists.

- **The source claim is unsupported.** HKW22 lines 1165–1169 assert it "on the class of proper morphisms", citing GHW22 Theorem 1.4. That theorem's list (GHW22 lines 133–155, items (1)–(5)) contains no comparison of Rf_! with Rf_*.
- **The reduction stops one step short.** DiamondSixOperations §S4.4 (descent of representability) and DiamondsAndVStacks §D5.11 (spatial v-sheaf criterion; Sch17 line 3091, Theorem 12.18) reduce the general case to a point condition: for a proper fine map to a separated spatial diamond, every point of the source must be hit by a quasi-pro-étale geometric point. No source proves that condition.
- **Decent is not enough.** Decent v-sheaves need not be diamonds (Spd Z_p).

Everything provable is now stated at full generality. Proper nice maps are kept as the proved special case. The Corrections entry for HKW22 Theorem 4.1.8 now states the gap exactly. The boundary Checks requested are added: S → B(C₂) is proper nice; B(C₃) → S is fine but not proper (H⁻¹ is F₃ for Rf_! and 0 for Rf_*); Spd Z_p is a spatial v-sheaf that is not a diamond. Cohomologically proper maps are what HKW22 uses ("p_* = p_!"), and the class is stable under composition and base change.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R02 (P1) — applied

Verified: q : S → B(C₂) is finite étale, proper nice and 0-truncated, yet Aut(q) = C₂ (left multiplications on the trivial torsor). The claim "2-morphisms between 0-truncated maps are identities" is deleted. VS7.7 now asserts c_(f′) ∘ α_! = α_* ∘ c_f for arbitrary α, proved by pasting mates in the coherent structure of VS7.5 and VS6.10. A Check computes the swap e_1 ↔ e_σ on q_!Λ = q_*Λ = Λ[C₂] over F₃ and the action −1 on q^*(sign). A matching Check is in VS6.11. Pattern: the VS8.7 step "γ_∗ = γ_! for proper maps" became the same 2-cell compatibility, and the VS9.1 uniqueness sentence now argues uniqueness correctly.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R03 (P2) — applied

Verified with the review's S₃ data (permutations composed right to left): hf₁(t) = (12) ≠ (23) = f₂(t)h, while h⁻¹f₁(t) = (13) = f₂(t)h⁻¹.

Old → new: VS6.9 keeps HKW22's label f₁ = ad(h)∘f₂ (HKW22 line 1057), but the map is now left multiplication by h⁻¹; labels multiply; α_g is left multiplication by g, so g ↦ α_g^* is a left action; a left-action-to-right-torsor rule is added. VS11.2 uses φ(y·g) = g⁻¹φ(y)g. Both have S₃ Checks.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R04 (P3) — applied

Verified: over ℚ₃ one has |2|₃ = 1, so χ = 1 and both directions give μ(K); with μ = 0 both sides are 0. In the Conventions witness and the VS11.3 Check, "ℚ_p, a compact open K" became "ℚ₂, a compact open pro-2 subgroup K with μ(K) = 1". The values are now μ(gKg⁻¹) = 3 in F₅, the correct direction gives 2·3 = 1, and the reversed one gives 2·2 = 4. The general identity is unchanged.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R05 (P3) — applied

Verified: for T = {a, b}, Rf_!f^*Λ = Λ² has dimension 2, not 1. The VS10.4 (formerly VS8.4) Check "all four operations are the identity" now gives the family formulas: f^*M = (M)_t, Rf^!M = (M)_t, Rf_! is the finite sum and Rf_* the finite product (which agree), with the T = {a, b} value and the point and empty cases. These agree with the main statement: C_c(T, Λ) = Λ^T, and Hom(Λ^T, M) = (M)_t.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R06 (P3) — applied

Verified: HKW22 lines 2020–2021 say "not a cohomological correspondence in general"; a finite étale action has α^! = α^*. In the VS8.7 Check and the VS11.11 Check, "not … since α^* ≠ α^!; only over G" became "in general not". Each now carries the G_m^♢ witness (α^*Λ = Λ, α^!Λ = Λ(1)[2], Λ ≠ 0). VS11.11 also has the Z/2-swap positive control: fixed pairs (a, 1), (b, 1), class (1, 1), and nothing over σ.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R07 (P3) — applied

Verified: with X = S and C = S ⊔ S the trace class is (1, 2) ∈ Λ², not a scalar. The VS8.10 (formerly VS9.10) API bullet "For X = S, tr_c(u, A) = tr(u | A)" now reads: "for S = X = C with both legs the identity and A perfect". A Check was added: X = S, C = S ⊔ S with fold legs, u = (1, 2) over F₅ gives class (1, 2) with integral 3, while C = S and u = 2 give 2. Pattern: the other "X = S" statements (cc_(S/S), loc_S with c = id) already fix C.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R08 (P3) — applied

Verified: Λ = 0 satisfies nΛ = 0 and makes every listed negative control fail.

Old → new: "Λ ≠ 0" was added in VS7.8, VS7.9, VS8.9, VS8.10, VS11.1 and VS11.3, and by pattern in VS9.3 and VS11.5. F_ℓ coefficients are now explicit in VS6.2 and VS7.4. Zero-ring controls were added (K = 0 invertible, j_!0 ULA, C_c(Q₂, 0) admissible with trace distribution 0), plus the witness C_c(Q₂, F₃)^(Z₂) = ⊕ over Q₂/Z₂ of F₃.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R09 (P3) — applied

Verified: In(BC₂) = BC₂ ⊔ BC₂ has an open σ-component, but BC₂ has only the opens ∅ and BC₂. The VS8.12 Check is replaced by X = S ⊔ S, A = (Λ², Λ³): cc = (2, 3) restricts to 2. The BC₂ case is kept as a warning that an open of the inertia need not be the inertia of an open. Pattern: VS11.13 step 2 had applied VS8.12 (formerly VS9.12) to the open [U//G] of In([S/G]). It now restricts the VS11.6 isomorphism of sheaves to that open, and VS9.12 was removed from VS11.13's *Needs:*.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R10 (P2) — applied

Verified: the old VS9 and VS10 contain no reference to VS8 (grep count 0), and old VS8 references only a VS11.3 Check.

Old → new: the layers are reordered as 6, 7, 9, 10, 8, 11 and renumbered: old VS9 → VS8, old VS10 → VS9, old VS8 → VS10, with subsection indices kept. Every id, heading, *Needs:* line, Dependencies paragraph, Downstream consumers entry, Correction and docstring was updated. "How to read the build" is rewritten with a former-numbering table, and the Scope list is reordered.

## Checks run

- **Elaboration.** `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`, run from the content checkout, exited 0 with no output (5.8 s). Only `import Mathlib` is used, so no Tau Ceti build was needed. The file declares nothing, so the `#check @name` comparison of elaborated types against README statements has no inputs; no declaration was added or changed. The only edits are in the docstring: VS9.9 → VS8.9, VS10.x → VS9.x, and "proper nice maps" → "cohomologically proper maps".
- **Dependency gate.** The prescribed `gate --depcheck … --movable` printed exactly:

      depcheck: 236 roadmaps, 2140 edges, 0 problem(s)

  There is no UPWARD, CYCLE or `moved:` line.
- **Citation resolver.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name missing everywhere.
- **New supplier citations.** These were opened at the supplier heads: DiamondsAndVStacks §D5.1 (*spatial-diamond*, spatial v-sheaves), §D5.5 (*quasi-pro-etale-and-fibre-product-permanence*) and §D5.11 (*spatial-v-sheaf-criterion*); DiamondSixOperations §S4.3 ("smooth maps are universally open"), §S4.4 ("descent of representability") and §S4.5 ("smooth base change").
- **Internal ids.** A script checked every `VSn.k` reference against the README headings: none is missing. No *Needs:* line points to a later layer.
- **Style scan.** No LaTeX delimiters, machine paths or process words.
- **Gate failures.** None were listed in the brief.
- **Sources.** No source was added; `needs-references.toml` was not created. All cited passages are in cached certified texts (Sch17 Def. 12.12, Thm. 12.18, Rem. 12.19 and Prop. 23.11 at Sch17 lines 2974, 3091, 3094 and 6085).

## Adversarial pass on added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| VS6.9 label h ↦ left mult. by h⁻¹ | G = Z/2, H = S₃, f₂(t) = (12), h = (123) | f₁(t) = (23); h⁻¹f₁(t) = (13) = f₂(t)h⁻¹; hf₁(t) = (12) ≠ (23) = f₂(t)h | only h⁻¹ intertwines | statement, API, sketch, Check |
| VS6.9 composite labels hh′ | h = (123), h′ = (12), f₃(t) = (12) | h′⁻¹h⁻¹ = (12)(132) = (13) = (hh′)⁻¹; ad((13))(12) = (23) = f₁(t) | consistent | stated |
| VS6.9 degenerate | H abelian; G = 1 | ad trivial, f₁ = f₂, labels H(S); Aut of the trivial torsor = H(S) | consistent | none |
| VS6.9 α_g a left action | G = S₃ | α_(12)α_(123) = α_(23); α_(123)α_(12) = α_(13) | order visible on a 2-dim irreducible representation | Check |
| VS11.2 φ(y·g) = g⁻¹φ(y)g | S₃, P = G, a = left mult. by (12), g = (123) | φ(g) = (13) = g⁻¹φ(1)g; gφ(1)g⁻¹ = (23) | right-torsor formula correct | statement, sketch, Check |
| VS11.2 degenerate | G abelian; G = 1 | g⁻¹φg = φ = gφg⁻¹; φ trivial | both conventions agree there | none |
| Conventions / VS11.3 Haar witness | ℚ₂, F₅, μ(K) = 1, g = diag(2,1); ℚ₃; μ = 0 | 2·3 = 1 vs 2·2 = 4; at p = 3 both 1; at μ = 0 both 0 | witness now discriminates | hypotheses added |
| VS10.4 finite T | T = {a,b}, F₃; T = pt; T = ∅ | f_!f^*Λ = Λ² (dim 2); identities; zero category | matches main statement | Check replaced |
| VS8.7 / VS11.11 action correspondence | X = S, G = G_m^♢; Z/2 swap on {a,b}; Z/2 trivial on S | α^*Λ = Λ ≠ Λ(1)[2] = α^!Λ; Fix = {(a,1),(b,1)}, class (1,1); trivial action Fix = S × Z/2, classes (1,1) | "in general" correct | Checks reworded |
| VS8.10 scalar specialization | X = S, C = S⊔S, u = (1,2), F₅; C = S, u = 2; S = X = C, A = Λ², matrix u | class (1,2), integral 3; scalar 2; matrix trace | needs C = S | API bullet, Check |
| VS8.12 Check | X = S⊔S, A = (Λ²,Λ³); X = BC₂ | cc = (2,3) ↦ 2; σ-component open, X has only ∅, X | new Check valid | Check replaced |
| VS11.13 step 2 | U ⊂ G open conjugation-invariant | [U//G] open in [G//G]; restriction of a sheaf isomorphism | VS8.12 not applicable, not needed | sketch and *Needs:* |
| R08 zero ring | Λ = 0; Λ = F₃, G = Q₂ (p = 2) | K = 0 = unit invertible; j_!0 = 0 ULA; C_c(Q₂,0) = 0 admissible, tr.dist 0; C_c(Q₂,F₃)^(Z₂) = ⊕_(Q₂/Z₂) F₃ | nonzero hypothesis needed and sufficient | qualifiers, controls |
| VS6.11 spatial criterion | X = (P¹_C)^♢; X = V; X = ∅; Spd Z_p | spatial diamond, (c) holds; trivial; vacuous; spatial with 2 points, closed point fails (c) | criterion consistent; spatial does not imply diamond | target, Checks |
| VS6.11 proper boundary | S → BC₂; BC₃ → S (p = 2, F₃) | base change C₂ × S → S finite étale; diagonal not injective; H⁻¹(Rf_!) = H₁(C₃,F₃) = F₃, H⁻¹(Rf_*) = 0, H¹(Rf_*) = F₃ | S → BC₂ proper nice, BC₃ → S not proper | Checks |
| VS7.7 c_f construction | closed immersion i; q : S → BC₂; P¹ → S | Δ_i iso, c_i = id; c_q : Λ[C₂] → Map(C₂,Λ), e_g ↦ δ_g; Scholze's identification | defined, consistent | target |
| VS7.7 2-cell naturality | q : S → BC₂, α_σ, Λ = F₃ | α_σ! and α_σ* = swap on Λ² commute with c_q; identity ≠ swap; −1 on q^*(sign) | nontrivial 2-cells handled | statement, Check |
| VS7.7 (b) and stability | chart-local representability under base change Y′ → Y; composites | chart V′ of V ×_Y Y′ is a chart of Y′; c_(g∘f) = c_g ∘ c_f | class stable | stated |
| Cohomologically proper class | identity, closed immersion, open disc ⊂ closed disc, BC₃ → S | in, in, not proper, not proper | Corr_S 2-morphisms closed under composites, whiskering, ⊗ | propagated |
| VS8.6 adjunction unit | q cohomologically proper | diagonal X → X ×_(X′) X is a closed immersion | cohomologically proper | sketch updated |
| VS9.2 In_S(p) | p cohomologically proper | closed immersion In(X) → X ×_(X′) In(X′), then base change of p | cohomologically proper | sketch updated |
| R10 ordering | *Needs:* of all subsections | no *Needs:* points to a later layer; old VS9/VS10 → VS8 count 0 | order forced only where kept | renumbered |

## For the maintainer

- **Renumbering (R10).** Former VS8.k is now VS10.k, VS9.k is VS8.k and VS10.k is VS9.k. The README gives the table. The only other roadmap that names this package, SolidAnalyticRings (board package), cites the range "VS6–VS11", which is unaffected. `design/plan.json` (not editable here except its gaps list) keeps its design-stage node ids: the scheme gaps' `neededBy` entries still say `VS10/…`. These are plan slugs, not README ids, and were left unchanged so they still match the plan's nodes.
- **Source gap (R01).** Whether every proper fine map is cohomologically proper is a genuine gap in HKW22 Theorem 4.1.8. The README states exactly what would close it: the point condition of VS6.11 for proper fine maps over separated spatial diamonds. If R01 is raised again, a human should decide whether to state the general isomorphism as a conjecture-level target.
- **Ownership.** "Proper fine" and "cohomologically proper" maps of decent v-stacks are owned here: decent v-stacks are this roadmap's objects, and `roadmaps grep` finds "decent v-stack" in no other roadmap. The spatial v-sheaf criterion, representability descent and smooth base change are cited from DiamondsAndVStacks and DiamondSixOperations, not planned again. EtaleHomotopyTypes uses "cohomological properness" for a different scheme-theoretic property; the term is defined explicitly here.
- **Unchanged checks.** Ownership against the other open pull requests was not re-checked beyond the searches above; the review's sweep over the open heads stands.
- **Untrusted text.** None of the text read asked for any action.
