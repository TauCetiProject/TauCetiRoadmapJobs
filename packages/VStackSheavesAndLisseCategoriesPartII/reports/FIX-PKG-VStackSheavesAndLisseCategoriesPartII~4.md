# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~4

This round answers the review `REV-PKG-VStackSheavesAndLisseCategoriesPartII~3`, which has four findings: one P2 and three P3. Each was checked against the cached legal sources (HKW22, GHW22, Sch17), the package's own definitions and the supplier roadmaps.

- F02, F03 and F04 are correct and are applied. F03 and F04 also had the same defect elsewhere in the README, and those places are repaired too.
- F01 cannot be settled by editing this package. It asks for a target that no source proves and whose missing input is an open question. Whether to plan it is a scope decision for a human.

Files touched:
- `packages/VStackSheavesAndLisseCategoriesPartII/README.md`
- `packages/VStackSheavesAndLisseCategoriesPartII/sources.toml`: the Sch17 locator now includes §22.

Files unchanged: `Suggested.lean`, `metadata.toml` and `design/plan.json`. No supplier gap was added.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~3/F01 (P2) — not actionable in this package: the requested theorem is proved in no source, and its missing input is an open representability question that no eligible supplier states; whether to plan an unproved statement is a scope decision for a human

The finding asks for a target saying that c_f is invertible for every proper fine map. This repeats REV-PKG-VStackSheavesAndLisseCategoriesPartII~2/R01, which last round treated as "applied differently". No edit of this package can supply that target honestly, for three reasons.

**1. No source proves it.**
- HKW22 line 1168 asserts the isomorphism and cites GHW22 Theorem 1.4.
- The list of properties in GHW22 Theorem 1.4 (GHW22 lines 133–155) does not contain it. The reviewer agrees.

**2. The missing input is open.**
- VS7.7 (b) and VS6.11 reduce the general case to one condition. Take a proper fine map X → V to a separated spatial diamond. The condition is that X is a diamond, or equivalently that every point of X is hit by a quasi-pro-étale geometric point.
- Smooth charts do not force this. Spd Z_p is decent but not a diamond (VS6.5, VS6.11). Its closed point is hit by no quasi-pro-étale geometric point.
- The sources record the closest neighbouring questions as unknown:
  - Sch17 line 5383, in the proof of Theorem 22.5, p. 130: Scholze does not know whether the canonical compactification of a compactifiable map of spatial diamonds is spatial.
  - GHW22 lines 606–614, §3.1, p. 12: Gulotta–Hansen–Weinstein call this a lacuna and work around it with prespatial diamonds.
  - GHW22 lines 964–973, Warning 4.2, pp. 19–20: they leave a related representability question open.
- I also tried two proof routes. Both need either that X ×_Y V is a diamond, or bounds on Rf_* and Rf_! for non-representable maps. No source supplies either.
  - Checking c_f on stalks: Sch17 line 4455, Theorem 19.2, compares j_! with Rf_* for arbitrary proper maps, but gives no amplitude bound and no comparison with the descent-built Rf_!.
  - Proper hyperdescent: it needs a proper surjection from a diamond onto X, which again requires X to be a diamond.

**3. No eligible supplier states it.**
- `roadmaps grep` finds "decent v-stack" in no other roadmap on main or at any open head.
- It also finds no statement that a decent v-sheaf over a diamond is a diamond, or that smooth covers can be refined to quasi-pro-étale ones.
- DiamondsAndVStacks §D5.11 states only the spatial v-sheaf criterion, which VS6.11 already uses.
- Under the brief, I may not invent a supplier target for it.

So a target "c_f is invertible for all proper fine maps" would plan a statement that may be false, with no proof route. This is not a bypass of theory. Every provable part is already stated at full generality:
- the comparison for all proper fine maps, with arbitrary 2-cells and base change;
- invertibility for proper nice maps and for maps that become representable after base change along one chart;
- downstream theorems over the cohomologically proper class, which is the class HKW22 actually uses ("p_* = p_!", HKW22 Definition 4.3.3).

The reviewer's requested boundary tests are already in the README: the VS6.11 and VS7.7 Checks on S → BC₂ and BC₃ → S.

**What changed (clarification only).**
- Old: VS7.7 said only "not settled by the sources".
- New: one sentence names the open representability question with exact locators (Sch17, proof of Theorem 22.5, p. 130; GHW22 §3.1 and Warning 4.2) and notes that the point condition fails for Spd Z_p.
- VS7.7 also gains an explicit API list (see F04, same pattern).

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~3/F02 (P3) — applied

The finding is correct. For t₀ ∈ T, s = (t₀, id) is a closed immersion with f ∘ s = id, so s^!f^! ≅ id. Inserting t₀ gives extra degeneracies of the augmented Čech nerve. A split augmented cosimplicial diagram is a limit diagram, and the splitting survives base change, so f is of universal !-codescent.

Old → new: the VS7.4 Check "a version requiring only surjectivity would be wrong" is deleted. The Check now:
- keeps the non-smoothness test, with an explicit rank-≥2 stalk witness (germs of δ_(t₀) and of V ↦ Σ_n (1_V(x_n) − 1_V(y_n)));
- records T × Spa C → Spa C as a split positive control for !-codescent.

Pattern: no other "would be wrong" claim, or claim that a sufficient condition is necessary, appears in the README (searched).

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~3/F03 (P3) — applied

The finding is correct: the zero map always exists.

Old → new: the VS11.5 Check "there is no natural map" now states an isomorphism obstruction. For S = T = X_i = Spd C, U = Y_i the perfectoid ball and A_i = Λ ≠ 0, the source is Λ(2)[4] and the untwisted target Λ(1)[2]. With the twist, both sides are Λ(2)[4].

Pattern: the VS11.7 Check said the naive fibre product "is not functorial". It now states precisely that the composite (4.5.7) lands in the twisted object, which is not isomorphic to the untwisted one (Λ(2)[4] against Λ(1)[2] in the same configuration with C_i = U). The line 672 "no comparison isomorphism exists" (BC₃ → S) is already about isomorphisms and is correct.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~3/F04 (P3) — applied

Old → new: VS10.2 gains a seven-bullet API list (restriction and its kernel, F(T) = lim F(U), F_M and its sections, both equivalences, the constant sheaf, compact T). It also gains four Checks: two points with M = (F₃², F₃) giving dimensions 2, 1 and 3; ℕ (Λ^ℕ against Λ^(ℕ)); the empty set; compact Z_p.

Pattern: VS7.7 defines "cohomologically proper" maps but had no API list. It now has seven bullets restating its statement. All 26 other API blocks already have at least three Checks.

## Checks run

- **Elaboration.** `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`, run from the content checkout, exited 0 with no output (6.5 s). No Tau Ceti module is imported, so nothing was built.
- **`#check @name` comparison.** `Suggested.lean` declares nothing (one `import Mathlib`, the module docstring and an empty namespace), so the comparison has no inputs and no scratch file was needed. The file is unchanged. Its docstring still matches the README: the headline list is the same, and no Lean name was added or removed.
- **Dependency gate.** The prescribed `gate --depcheck … --movable` printed exactly the line below. There is no UPWARD, CYCLE or `moved:` line.

      depcheck: 236 roadmaps, 2140 edges, 0 problem(s)

- **Citation resolver.** `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.
- **Style scan.** No LaTeX delimiters, machine paths or process words appear in the new text.
- **Sources.**
  - All new locators are in cached certified texts: Sch17 lines 5349 and 5383 (Theorem 22.5 and its proof, p. 130); GHW22 lines 600–614 (§3.1, p. 12) and 964–973 (Warning 4.2, pp. 19–20); HKW22 lines 1864–1867 (p. 38).
  - The Sch17 manifest locator was extended to §22. No source was added, and `needs-references.toml` was not created.
- **Gate failures.** None were listed in the brief.

## Adversarial pass on added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| VS7.4 Check: T × Spa C → Spa C is not smooth | T = Z₂ with ℓ = 3; T = Z_ℓ with F_ℓ (no Haar measure); T finite | At non-isolated t₀: δ gives 1 on every U_n; ν = Σ(δ_(x_n) − δ_(y_n)) gives 0 on every U_n and 1 on a clopen W ∋ x_n, y_n ∉ W, so the germs are independent and the stalk rank is ≥ 2. ν(V) is a finite sum for every clopen V. For finite T the map is finite étale, and the Check excludes it by requiring T infinite. | Holds for every infinite profinite T, including T without Haar measure | Witness made explicit |
| VS7.4 Check: universal !-codescent | Any t₀; base change along S′ → Spa C; T a point | s^!f^! = (f∘s)^! = id; the extra degeneracies are closed immersions T^(n+1) × S → T^(n+2) × S; for T a point, f = id | Split, hence a limit diagram, after every base change | Positive control replaces the false claim |
| VS11.5 Check: κ needs the twist | U = ball (dim 1); U = T (dim 0); Λ = 0 | Source K ⊗ K = Λ(2)[4]; untwisted target Λ(1)[2]; H^(−4) ranks 1 vs 0 and H^(−2) ranks 0 vs 1; twisted target Λ(2)[4]. For dim 0, K = Λ and both sides are Λ. For Λ = 0, both sides are 0. | Not isomorphic exactly when the dimension is positive and Λ ≠ 0; the zero map exists | Reworded as an isomorphism obstruction |
| VS11.5: κ is an isomorphism in that example | Same | Künneth for smooth f_i is an isomorphism. Δ′^*M ⊗ Δ′^!Λ → Δ′^!M is an isomorphism for invertible M = K ⊠ K. Lemma 4.1.11 is an isomorphism. | Claim limited to the example, not to general smooth f_i | Stated for the example only |
| VS11.7 Check | S = T = T′ = X_i = X′_i = Spd C, C_i = U = ball; U = T′ | (c′)^!Λ ⊗ q^*K = Λ(2)[4] vs (c′)^!Λ = Λ(1)[2]; for U = T′ the twist is trivial | The twist appears only for positive-dimensional U → T′, matching HKW22 p. 38 | Precise statement |
| VS10.2 API: restriction | T = {a, b}, M = (F₃², F₃), U = {a} | Image F₃² (dim 2), kernel 1_b·M (dim 1), 2 + 1 = 3 | Surjective, kernel (1 − 1_U)M | Added |
| VS10.2 API: compactly supported vs global sections | T = ℕ, Λ ≠ 0; T = Z_p; T = ∅ | colim Λ^U = Λ^(ℕ) vs lim Λ^U = Λ^ℕ; Z_p: both C(Z_p, Λ); ∅: 0 = 0 | Equivalences go through colim for smooth modules and lim for complete ones | Added |
| VS10.2 API: R is the constant sheaf | T = ℕ, U = {n}; T = Z_p | R({n}) = Λ; R(Z_p) = C(Z_p, Λ) = locally constant functions | Λ-module sheaves are R-module sheaves | Added |
| VS10.2 Check: two points | Model "F(U) = M for all U" | 3 + 3 = 6 ≠ 3 = dim F(T) | Wrong model refuted | Added |
| VS10.2 Check: ℕ | Λ = F₃; Λ = 0 | All-ones lies in Λ^ℕ, not in Λ^(ℕ) (not fixed by any 1_U with U finite). For Λ = 0 both are 0, so the hypothesis Λ ≠ 0 is needed. | Distinguishes the two inverse functors | Added with Λ ≠ 0 |
| VS7.7 API: 2-cells | q : S → BC₂, F₃, α_σ | c_q(e_g) = δ_g; the swap on Λ[C₂] commutes with c_q | Consistent with the existing Check | Added |
| VS7.7 API: invertibility | Closed immersion i; q; P¹_C → Spd C; BC₃ → S (p = 2, F₃) | c_i = id; c_q is an isomorphism (proper nice); P¹: Scholze's identification; BC₃ → S is excluded because it is not proper (H^(−1) is F₃ vs 0) | The proper fine hypothesis is necessary for the statement to make sense | Added |
| VS7.7: cohomologically proper class | Composite of q and i; base change of q along S → BC₂ | c_(g∘f) = c_g ∘ c_f; the base change C₂ × S → S is finite étale and nice | Stable | Added |
| VS7.7 disclosure sentence | Spd Z_p; (P¹_C)^♢ | Spd Z_p: the closed point is not hit (VS6.11 Check). P¹: every point is hit. | Consistent with the VS6.11 Checks | Added |

## For the maintainer

- **F01 needs a human decision.** This is the second time the finding has been raised (it was R01 in the previous review). The question is whether a library roadmap may plan an open statement as a target: "every proper fine map of decent v-stacks is cohomologically proper", equivalently a representability statement for decent v-sheaves proper over spatial diamonds. If yes, it would be a research-level target with no known proof route. If no, the present formulation (comparison for all proper fine maps; downstream theorems over cohomologically proper maps) is the most general one the sources support.
- **Other roadmaps.** No id, heading or name changed, so no other roadmap is affected. The only other roadmap that names this package (SolidAnalyticRings, board package) cites the range "VS6–VS11", which is unaffected.
- **Ownership.** This round adds no new construction. The new F_M API restates VS10.2's own construction; VS10.1–VS10.2 remain this roadmap's (HKW22 Appendix B.2). `roadmaps grep` found no other owner of decent v-stacks or of a representability criterion for them.
- **Untrusted text.** None of the text read asked for any action outside the job.
