# Repair report: FIX-PKG-RefinedTraceMethodsPartII~3

Resolves the eleven findings of `REV-PKG-RefinedTraceMethodsPartII~2` (one review; ids R01–R11). I checked every finding against the cached sources, the supplier heads and the pins. All eleven are correct. Nine are applied as asked. Two (R07, R10) are applied differently, because the repair as asked would plan material that the source does not prove or that no layer uses. Files changed: `packages/RefinedTraceMethodsPartII/README.md`, `packages/RefinedTraceMethodsPartII/sources.toml` (new locators only), and `packages/RefinedTraceMethodsPartII/design/plan.json` (the `neededBy` of one gap only). `Suggested.lean` and `metadata.toml` are unchanged.

## R01 (P2) — applied

Changed: §2.3 convergence now requires THH(k) bounded below (for instance k connective), citing speirs-axes Lemma 21 for discrete k. Added negative control: k = ℚ[β^{±1}], Π_2, where `π_0X_{2j+1} ⊇ ℚβ^{−j}` and ⊕ℚ → ∏ℚ misses (1,1,…). Pattern: §2.6 now says "for every ring k". The uses in §§5.3, 6.1 and 7.1 have discrete or perfectoid coefficients.

## R02 (P2) — applied

Changed: §3.6 now requires B′ to be a finite pointed T-CW complex, and ψ to be a T-homeomorphism onto `B′^{C_p}` with the residual T/C_p ≅ T action. `B′/B′^{C_p}` is then finite free (speirs-trunc Lemma 8). Added a Check: B′ = S⁰ ∨ ET_+ gives 𝔽_p → 𝔽_p² on π_0, and T in place of ET restores the isomorphism.

## R03 (P2) — applied

Changed: deleted §4.2, which restates RefinedTraceMethods §4.18 "Truncating invariants: nil-invariance and excision" at its head. Renumbered §4.3 → §4.2 and §4.4 → §4.3, updated all internal citations, and pointed consumers at RTM §4.18. Moved the non-example to the §4.1 Checks and the axes values to Layer 4 Examples. In `plan.json`, the `perfect-homotopy-invariance` `neededBy` changed from 4.4 to 4.3.

## R04 (P2) — applied

Changed: §8.1 now says (A,R) is bounded when both A and R have bounded p^∞-torsion. Examples are restricted to such R; the prism example became the bounded prismatic δ-pairs, R an A/I-algebra (akn-delta Definitions 2.1–2.2, Remark 2.14). Pattern: "products and base change" became finite products and flat base change. Added three Checks: the square-zero ring, ∏(ℤ_p,ℤ/p^n), and ℤ_p{y} → ℤ_p.

## R05 (P2) — applied

Changed: §8.2 now defines G_A (module quadruples, its pullback/operad structure) first, then C_A = CAlg(G_A), with c a unital, multiplicative, coherent semilinear algebra map (akn-delta lines 1680–1717). Removed the later "Let G_A …" restatement. Added a Check: c = 2·id lies in G_{ℤ_p} but not in C_{ℤ_p}; its ℤ_p(0) is 0, versus ℤ_p ⊕ ℤ_p[−1] for c = id.

## R06 (P2) — applied

Changed: §8.3 (2) now requires a prism (A,I) and an A/I-algebra R, both bounded, compared with PrismaticCohomology §§2.1–2.13 (akn-delta line 54, Remark 2.14). (5) and (6) gained the relatively quasisyntomic domain. Added a Check: (ℤ_p,(p)) with R = 𝔽_p gives ℤ_p, and R = ℤ_p is excluded. Pattern: (7) is restricted to bounded, discrete base changes.

## R07 (P2) — applied differently

Changed: §8.4 descent now covers bounded δ-pairs with A → B flat and R → S faithfully flat. Added a Check: ℤ_p⟦x⟧ → ℤ_p has Tor₁ = ℤ_p, and the Layer 9 instance is flat. Scope "What is left out" now names prismatic cohomology relative to animated δ-rings.

Why not as asked: akn-delta lines 165–170 say the unrestricted generality "requires prismatic cohomology relative to animated δ-rings, which we will return to in future work". To avoid it, the paper assumes exactly A → B flat and R → S faithfully flat. No legal source constructs the animated theory. The only consumer, akn24 Theorem 2.22 (proof at lines 528–529), uses the flat map W(k) → W(k)⟦z_0⟧.

## R08 (P2) — applied

Changed: §9.4 defines d, a, b_v, d_N (akn24's d̃), f_u, g_{u,v}, λ_u, R_u, w_1 (akn24 Lemmas 3.6, 3.24). The bases state k < n, digits < p, the F-weight and the Nygaard exponent `w = max(0, i − Σ_u p^u e_u − Σ p^u e_{u,v})`. §9.5 states the exact exponents of Lemma 5.9 and Corollary 5.10. Added Checks for each.

## R09 (P2) — applied

Changed: GeneralAlgebraicKTheory §10.13 (left noetherian, finite left global dimension) is dropped from the contract, from §4.3 Needs and from the Layer 4 Dependencies. The SchemeKTheoryOperations §5.2 contract and the Scope line now read "NK_n(X) = 0 for all n, K_n(X) = 0 for n < 0" for regular noetherian X, as its head states. GAKT §§8.1 and 10.5 are kept.

## R10 (P2) — applied differently

Changed: the bare bullet is replaced by a precise statement of akn-delta Corollary 10.34 and Proposition 10.46. It gives the domain (Definition 10.32, Remark 10.33), the fibres `F^{−∞}Δ ≃ Δ_{R/A}` and `gr Δ ≃ Δ_{gr R/gr A}`, and the Hodge–Tate-completed Rees statement, with a route via §8.3 (7). Added a Breuil–Kisin Check. Proposition 10.37 is cut and listed under Scope.

Why cut rather than stated: no layer uses Proposition 10.37. akn24 cites only (v1) Corollary 10.32, Proposition 10.41 and Proposition 10.44/Corollary 10.45 (akn24 lines 324, 334, 535, 1068). Stating it needs the filtered Cartier–Witt stack, which is outside Layer 8's declared scope ("as far as Layer 9 uses them").

## R11 (P1) — applied

Changed: added a DerivedDeRhamCohomology §§1.14–1.17 contract (`DF(A)`, completion, Rees, completed Day convolution) and a Scope import. The EnhancedDerivedSheaves contract now names §§E5:abstract.1–2 (operads, CAlg, modules) and §E5:presentability.2. Every bare "EnhancedDerivedSheaves E5" was re-pointed: §3.3 Needs, Layer 3 Dependencies, §8.2 Needs, §8.5 Needs and Layer 8 Dependencies. The citation was false because on main, Layer E5 is the compatibility layer.

## Checks

- **Elaboration.** I ran `lake env lean` on `packages/RefinedTraceMethodsPartII/Suggested.lean` from the content checkout. Exit 0; the only warnings are three `declaration uses 'sorry'` (lines 61, 69, 77). The file imports only `import Mathlib`, so no Tau Ceti module had to be built.
- **Signature check.** A scratch copy with `#check @name` for all six declarations elaborated:
  - `cuspCount`, `cuspTruncationSet` and `cuspCoprimeSet` are `ℕ → ℕ → ℕ → …`.
  - `ncard_cuspTruncationSet` and `ncard_cuspCoprimeSet` carry `2 ≤ a`, `2 ≤ b`, `a.Coprime b` and `r`.
  - `card_noCyclicRepetition` carries `1 ≤ m`.

  These match README §§1.1 and 1.4, and nothing changed.
- **Dependency check:** `depcheck: 236 roadmaps, 2145 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line. The new supplier citations (DerivedDeRhamCohomology §§1.14–1.17, EnhancedDerivedSheaves §§E5:abstract.1–2, SchemeKTheoryOperations §5.2, RefinedTraceMethods §4.18) are all to roadmaps earlier in the order or on main.
- **`roadmaps resolve`:** "Cross-roadmap citations found nowhere: None"; "Lean names found nowhere: None".
- **Gate failure (tex=5).** Five pieces of brace-delimited sub- and superscript math sat outside code spans in the README. Each is now wrapped in backticks, and no wording changed. They are: §2.3 Checks, `ℚ[β^{±1}]` in the convergence negative control; §8.2 Checks, `G_{ℤ_p}` and `C_{ℤ_p}` in the G_A versus C_A Check; §9.4, `e_{u,v}` in the bullet on the Nygaard generators and their basis; and §9.4, `g_{u,v}` in the bullet on the δ-ideal recursion. A rescan of the README finds brace scripts only inside the two fenced `text` display blocks of §§5.3–5.4. After the edit the dependency check again reports `depcheck: 236 roadmaps, 2145 edges, 0 problem(s)`. `Suggested.lean` is unchanged, so it was not re-elaborated.

## Adversarial pass on new and changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §2.3 convergence | k = ℚ[β^±], Π_2, m = 2j+1; k = 𝔽_p; Π = ⟨t⟩_+ | π_0X_m ⊇ ℚβ^{−j} ≠ 0 for all j, and ⊕ℚ → ∏ℚ is not onto. For 𝔽_p, the bottom degree is 2j, so π_0 = 0 for j ≥ 1. For ⟨t⟩_+, the pieces `(T/C_m)_+` have connectivity −1 for all m, so the hypothesis fails and no claim is made (indeed π_0 has 𝔽_p in each m). | needs THH(k) bounded below | hypothesis + Check |
| §2.6 cusp product | (2,3), k = 𝔽_2 | ℓ(2,3,m) ≥ ⌊m/6⌋ − 1 → ∞; THH(𝔽_2) is connective | holds | "every ring k" made explicit |
| §3.6 Frobenius | B = S⁰, B′ = S⁰ ∨ ET_+; B′ = S⁰ ∨ T_+; B = S^{λ_1} ∧ T_+ | ET_+: 𝔽_p → 𝔽_p² on π_0. T_+: `(THH ⊗ T_+)^{tC_p} = 0`, so 𝔽_p → 𝔽_p. S^{λ_1} ∧ T_+: the cofibre of φ is (−2)-truncated, so the map is an isomorphism from π_2 (claimed from π_3) and fails on π_1. | finite B′ needed | hypothesis + Check |
| Layer 4 after deletion | axes over 𝔽_p and ℚ; identity square; ℤ → ℤ/p | K_2 = TC_2 = 𝔽_p; K_2⊗ℚ = HC_1 = ℚ and HC_2 = 0 (K_3 = Ω¹_ℚ = 0); identity square gives 0; ℤ → ℤ/p gives total fibre K(ℤ,pℤ), so it is not a Milnor square | consistent with RTM §4.18 | Checks moved |
| SKTO §5.2 contract | field; Nagata ring (regular, infinite Krull dimension); 𝔽_p[ε]/ε² | field: K_{−1} = 0 from either supplier. Nagata ring: outside GAKT §10.13 (infinite global dimension), inside SKTO §5.2. 𝔽_p[ε]/ε²: NK_1 ∋ 1 + εt ≠ 1. | SKTO scope is right | repointed |
| §8.1 bounded pairs | ℤ_p ⊕ ⊕ℤ/p^n; ℤ/p^n; ℤ_p; ∏(ℤ_p,ℤ/p^n); ℤ_p{y} → ℤ_p; ℤ_p → ℤ_p⟦x⟧ with R = ℤ/p^n | Orders p^n are unbounded in the first and in the product. ℤ/p^n has exponent p^n; ℤ_p has torsion 0. The non-flat base change contains z_n of order p^n. The flat base change ℤ/p^n⟦x⟧ has exponent p^n. | hypotheses needed | statement + Checks |
| §8.2 G_A vs C_A | c = 2·id; c = id; zero object | fib(−id) = 0; fib(0) = ℤ_p ⊕ ℤ_p[−1]; the zero object gives 0 | c must be unital | definition reordered + Check |
| §8.3 (2) | (ℤ_p,(p)) with R = 𝔽_p and with R = ℤ_p; (W(k)⟦z⟧,E) with R = O_K | 𝔽_p: Δ = ℤ_p, which equals absolute Δ_{𝔽_p} = ℤ_p. ℤ_p: p ↦ p ≠ 0, excluded. O_K: Δ = W(k)⟦z⟧. | A/I-algebra needed | hypothesis + Check |
| §8.3 (5)–(6) | (ℤ_p, ℚ_p) | derived p-completion of ℚ_p is 0 ≠ ℚ_p, so the pair is outside the domain | domain needed | domain added |
| §8.3 (7) | ℤ_p → W(𝔽_q), R = ℤ/p^n; ℤ_p{y} → ℤ_p; Rees(F⋆A) → A, t ↦ 1 | W_n(𝔽_q) is bounded. The ℤ_p{y} base change has unbounded torsion and is excluded. For the Rees map, t − 1 is regular on Rees(F⋆R), so the derived base change is R. | domain needed | domain added |
| §8.4 descent | ℤ_p⟦x⟧ → ℤ_p with R = S = 𝔽_p; W(k) → W(k)⟦z_0⟧; identity | Tor₁ = ℤ_p while the ordinary tensor has π_1 = 0. W(k) → W(k)⟦z_0⟧ is flat, and its completed Čech nerve is A^•. The identity has a constant Čech nerve. | flat case is what is proved | restricted + Check |
| §8.5 base change | trivial filtration; filtered Breuil–Kisin pair | Trivial filtration: gr is in weight 0 and equals Δ_{R/A}. Breuil–Kisin: gr^u = W(k)z^u on both sides, generic fibre W(k)⟦z⟧. L = (E)/(E²)[1] and (p)/(p²)[1]. | holds | stated + Check |
| §9.4 bases | p = 2, n = 3, s = 0 on [2,2] and [3,3] (i = 1); ℤ/4 at i = 1 on [1,1] with s = 0, 1; p = 2 relation | [2,2]: {z_0²}, rank 1 (a bound k < p would give 0). [3,3]: {f_0}, rank 1 (dropping k < n gives 2). ℤ/4, s = 0: N-rank 1 (d_N z_0), equal to f(in−1) = 1; s = 1: rank 2 (z_0, b_1), the middle term ℤ_2² of the model. Relation: a² = (−2 + d²λ_0)δ(a). | consistent with §9.4 model | defined + Checks |
| §9.5 step 1 | (p,e,n) = (2,1,2), (2,2,3), n ≤ e | (2,1,2): exponents 6 and 3, i ≥ 3. (2,2,3): exponents 8 and 4. n ≤ e: pn. §9.6 cross-check: z^{[j]_pe}d^{p^j−1} has z-exponent ≥ the (b) bound, so v^{[j]_p} = 0. | consistent with §9.6 | stated + Check |
| DDR §§1.14–1.17 contract | step filtration of A; constant filtration | Rees = A[t]; t = 1 gives A; t = 0 gives gr⁰ = A; completion of the constant filtration is 0; the Day unit is the step filtration, matching §8.2's unit package | holds | contract |

## Ownership and overlaps

No new construction or target was introduced. R03 removes a duplication of RefinedTraceMethods §4.18, and R11 moves an attribution to the existing owner, DerivedDeRhamCohomology §§1.14–1.17. Both were read at their open heads through `roadmaps show`. The overlap report lists no open pull request that changes this roadmap and no dropped id. No other roadmap or package cites RefinedTraceMethodsPartII: `roadmaps grep` finds no match on main or at any open head, and the board has no other citing file. So renumbering Layer 4 (old §4.2 deleted; old §§4.3–4.4 now §§4.2–4.3) breaks no citation outside this package.

## For the maintainer

- **Changed ids inside this roadmap:** Layer 4 §4.2 is now "The normalization squares of axes and cusps" (formerly §4.3), and §4.3 is "Relative versus birelative K-theory" (formerly §4.4). No outside roadmap cites them. The design-stage layer list in `design/plan.json` still shows the old four 4.x ids; only its `gaps` list may be edited, and its `neededBy` was updated.
- **No Lean name changed.**
- **New Scope exclusions:**
  - prismatic cohomology relative to animated δ-rings (announced, not constructed, in akn-delta lines 165–170);
  - the filtered Hodge–Tate gerbe comparison (akn-delta Proposition 10.37).
- **Source issues** (consistent with the review's list): akn-delta Theorem 1.2(7) and Corollary 1.3 are stated more generally than the ordinary bounded theory proves. The paper itself says so at lines 165–170 and 473–474.
- No fetched or quoted text contained instructions; nothing suspicious to report.
