# Repair report: PadicLocalLanglandsForGL2QpPartII

The findings come from the review `REV-PKG-PadicLocalLanglandsForGL2QpPartII~4`. Section numbers refer to `packages/PadicLocalLanglandsForGL2QpPartII/README.md`. I made every verdict and computation myself against the cached legal texts and the supplier roadmaps. I used no helper agents. Only `README.md` changed. `Suggested.lean`, `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII~4/F01 (P1) — applied

§5.1: "with its p-adic topology" is replaced by the stage topology. The finite-K stages are profinite, then come the inductive limit over K, the projective limit over k and the inductive limit over p^(−N). p-adic completeness is kept as an algebraic fact. The topology is carried through §§5.2–5.5 and 6.6, and m_(n,B) keeps its own p-adic topology. Negative-control Checks were added in §§5.1, 5.4 and 6.6.

## REV-PKG-PadicLocalLanglandsForGL2QpPartII~4/F02 (P3) — applied

§3.1, first Check: "fixed by G, as a smooth vector must be" becomes "fixed by an open subgroup of G". The Check now includes the two-component example. On the level-zero geometric space, f = (1, −1) has zero Lie derivatives and is fixed by {g : v_p(det g) even}. But diag(p,1)f = −f. Constants on one copy of Ω are the G-fixed special case.

## Evidence read for the verdicts

- **F01 is correct.** CDN23 Théorème 2.1 (line 1064) makes every H^q_ét(M_(n,K), O_L/p^k) profinite. CDN23 §2.1.3 (lines 1262–1271) gives this topology as the projective limit over quasi-compact opens. CDN23 Proposition 5.19 (lines 2673–2690) takes on Y = (H^(1,+)/p^k)^(G_K) the topology induced from H^(1,+), proves Y is profinite, and proves ι: Y → (H¹_(k,C))^(G_K) is a homeomorphism onto its image. CDN23 Remarque 5.20 (lines 2691–2715) builds the topology of H^(1,+) as the limit of the topological stages H¹_(k,ℚ̄_p). Corollaire 5.17 and lines 2743–2745 say "p-adically complete" of the module, and give the p-adic topology to m_(n,B) only.
- The README had declared the p-adic topology on H^(1,+). That topology makes H^(1,+)/p^k discrete, and a compact discrete space is finite. The review's level-zero witness shows the invariants are infinite; I recomputed it (table below). So the README asserted a contradiction, and the error was ours, not the source's: no source correction is needed.
- **Supplier support.** ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4 states that H¹_ét(M^p_(n,K), k) is "the compact dual" of a finite-length smooth representation, so the stage topology is supplied. ProetaleCohomologyOfPAdicCurvesAndTowers §6.9 (board package, line 741) states topological G×G_K-isomorphisms H^r_ét(H^d_C, ℤ_p(r)) ≅ Sp_r(ℤ_p)^* with trivial Galois action and weak-dual topology. I made both explicit in the supplier contracts.
- **F02 is correct.** The README's own Conventions (Σ₀ is two copies of Ω exchanged by ϖ_D) and ProetaleCohomologyOfPAdicCurvesAndTowers §7.1 (G acts on π₀ through det) give the computation below. The §3.1 route itself only concludes that orbit maps are locally constant, and it is unaffected.

## What changed, place by place (pattern repair)

- Supplier contracts. ProetaleCohomologyOfPAdicCurvesAndTowers §6.9 is now cited as topological G×G_ℚ_p-isomorphisms with trivial Galois action and pointwise-convergence topology. ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4 is now cited as "profinite, the compact dual of …".
- §5.1:
  - The definition gives the stage topologies, with locators CDN23 Théorème 2.1, §2.1.3 and Remarque 5.20.
  - The route proves that H^(1,+)_(k,ℚ̄_p) is Hausdorff and that p^kH^(1,+) is closed but not open, the stage topology being coarser than the p-adic one.
  - The API states continuity of the G×Ǧ×G_ℚ_p-action.
  - New Check: the p = 5, level-zero μ_j negative control.
  - *Needs* gains EndoscopicTransferAndUnitaryTraceComparison §§12.4–12.5, for the affinoid covering, and ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4.
- §5.2:
  - The reduction H^(1,+)/p^k → H¹_(k,ℚ̄_p) is now stated to be injective.
  - Completeness is algebraic, and also topological for the induced stage topologies (Remarque 5.20).
  - New target: H^(1,+)/p^k carries the inductive limit topology of its compact finite-K pieces (Remarque 5.20, lines 2697–2715). §5.4 uses it.
  - The first Check is rewritten: the pieces are compact in the stage topology, whereas the p-adic topology would make them discrete and they are infinite.
- §5.3:
  - m_(n,B) is continuous for the stage topology, and its p-adic separatedness and completeness are derived from §5.2.
  - m̌_(n,B) is all O_L-linear maps, with pointwise convergence, which explains why it is compact.
  - The m_B(H¹) = L⊗m_(n,B) bullet now gives the compactness argument.
  - Same pattern: the Check "the Pontryagin dual into L/O_L is discrete" was false for non-compact m_(n,B). By the review's own logic, a compact set's image in m/p is finite, so for m/p of infinite dimension the annihilator is nonzero and the dual is not discrete. It is replaced by the true distinction: m̌ is compact and torsion-free, while m^∨ is p-power torsion. Example: for m = O_L these are O_L and L/O_L.
- §5.4:
  - The completion is the algebraic p-adic completion. Modulo p^k, evaluation is a topological isomorphism for the inductive limit of the compact pieces, so the identification is topological in the limit.
  - The colim_K step names the compactness argument (CDN23 line 2729).
  - New Check: under the discrete topology, the map from P_B onto the Steinberg piece Sp_1(k_L)^* is lost.
- §5.5, same pattern: the Check "for the discrete Pontryagin dual it would not" becomes the computed failure of Nakayama on L/O_L = ϖ(L/O_L).
- §6.6:
  - The left side carries the §5.1 topology. The inner completion is the algebraic p-adic completion of the natural lattices (CDN23 footnote 6, line 178).
  - The isomorphism is topological for the transported stage topology, and neither side carries the p-adic topology.
  - New Check: the Steinberg summand at p = 5, n = 0, with the diagonal classes (μ_j, μ_j).
- §3.1: the first Check, as described under F02. A search for the same "smooth ⇒ G-fixed" construction found no other occurrence. The §3.1 route (line 476) and the H²_dR,c statement ("G acting through det with open kernel") were already correct.

## Computed adversarial pass

| Statement (new or changed) | Instances tried | Values computed on each side | Result / change |
|---|---|---|---|
| §5.1: the stage topology is not the p-adic topology; μ_j witness | p = 5, L = ℚ_5, n = 0, K ⊇ ℚ_25, one copy of Ω; μ_j = δ_(5^j) − δ₀ | ⟨μ_l, 1_(5^jℤ_5^×)⟩ = 1 if l = j and 0 if l ≠ j, so μ_j − μ_l ∉ 5H^(1,+)_C. Hence the reductions mod 5 are pairwise distinct and G_K-fixed, an infinite set. For f locally constant, f(5^j) − f(0) = 0 for j ≫ 0, so μ_j → 0 pointwise. In the p-adic topology, (H/5)^(G_K) would be infinite and discrete, so not compact. u(5^j)(δ₀ − δ_∞) − (δ₀ − δ_∞) = δ_(5^j) − δ₀ = μ_j ∉ 5H, so the action would not be continuous. | The declared topology fails; the stage topology passes. Added the Check. |
| §5.1: p^kH^(1,+) is closed, and the topology is coarser than p-adic | k = 1; projection H^(1,+) → H¹_(k,ℚ̄_p) | The kernel is p^kH^(1,+) (§5.2 injectivity), and the target is Hausdorff because it injects continuously into lim_i of discrete groups. So the kernel is closed. Every projection is continuous for the p-adic topology, since H/p^k is discrete there, so the p-adic topology is finer. Not open: μ_j above. | Pass. |
| §5.1: H^(1,+)_(k,K) = lim_i H¹(U_i⊗K) is profinite | U_i affinoid, so H⁰(U_i) is finite; Milnor sequence | lim¹ of finite groups is 0, so H¹ = lim_i H¹(U_i). Profiniteness comes from the cohomologically profinite prosystem (CDN23 §2.1.3), not from finiteness of each H¹(U_i), which is infinite for an affinoid. | Stated with the supplier and the locator. |
| §5.1 API: continuity of the G×Ǧ×G_ℚ_p action | G locally compact acting on a countable colimit; G_ℚ_p compact and smooth on H¹_(k,ℚ̄_p) | G × colim_K = colim_K (G × stage), since product with a locally compact space preserves quotients. G_ℚ_p maps the image of the K-stage to the image of the σ(K)-stage, and G_K acts trivially on it. The projective limit preserves continuity. | Pass. |
| §5.2: Remarque 5.20 limit topology; H/p^k ↪ H¹_(k,ℚ̄_p) | k = 1, 2 | Injectivity: H^(1,+)/p^k ↪ H^(1,+)_C/p^k (saturation) ↪ H¹_(k,C) (α_k, line 2649). The image of lim X_k in X_k is H/p^k, with transition maps continuous, so X = lim Y_k topologically. | Pass. |
| §5.2: H/p^k carries the inductive limit topology of its compact pieces | Countable cofinal tower K₁ ⊂ K₂ ⊂ … (finitely many extensions of each degree) | Each intersection Y_k ∩ Im(H_(k,K)) is closed (Rem. 5.20), so Y_k is closed in the final topology. If U ⊂ Y_k meets every stage in a relatively open set, then Y_k ∖ U is closed in every stage, hence closed. Cofinality: Im(H_(k,K)) ⊂ (Y)^(G_K) ⊂ Im(H_(k,K′)), because coker(H_(k,K) → (H_(k,C))^(G_K)) ⊂ H²(G_K, H⁰) is finite and dies over some K′. | Pass. Added as a target. |
| §5.3: m̌_(n,B) is compact | m = O_L; m = completed ⊕_ℕ O_L | Hom(m, O_L) is closed in ∏_m O_L, and Tychonoff gives compactness. Every O_L-linear map is p-adically continuous, since f(p^k m) = p^k f(m). For m = O_L, m̌ = O_L. | Pass. |
| §5.3: Pontryagin dual "discrete" (old Check) | m = completed ⊕_ℕ O_L, so m/p is infinite-dimensional | The image of a compact C ⊂ m in the discrete m/p is finite. So the closed submodule spanned by C has finite-dimensional image mod p, its annihilator in m^∨ is nonzero, and {0} is not open. m^∨ = ∪_k (m/p^k)^∨ is p-power torsion. For m = O_L: m^∨ = L/O_L is not finitely generated, since it is divisible. | Old Check false in general; replaced by the torsion distinction. |
| §5.5: Nakayama on the Pontryagin dual | L/O_L over O_L | ϖ·(L/O_L) = L/O_L, so (L/O_L)/𝔪 = 0 while L/O_L ≠ 0. | Replaced the Check with this computed failure. |
| §5.3: m_B(H¹) = L⊗m_(n,B) | H¹ = ∪_N p^(−N)H^(1,+), compact C not in any step | Choose x_N ∈ C ∖ p^(−N)H^(1,+). Then {x_N} meets each step finitely, so it is closed and discrete in the final topology, and it is infinite inside compact C: a contradiction. | Pass (only T1 steps are needed). |
| §5.4: evaluation mod p^k is topological | Finite-K piece X_(k,K): finite sum over B, with m_B(X_(k,K)) of finite length, hence a finite set | The source is a compact quotient of P_B^r and the target is compact Hausdorff, so a continuous bijection is a homeomorphism. colim_K then agrees with the §5.2 topology. | Pass. |
| §5.4: control under the discrete topology | Level zero, K ⊇ ℚ_(p²), block of the mod p Steinberg Sp_1(k_L) | Continuous image of compact P_B in a discrete space is finite. A finite G-stable F ⊂ Sp_1(k_L)^* has F^⊥ of finite codimension and G-stable. Since Sp_1(k_L) is irreducible and infinite-dimensional, F^⊥ = Sp_1(k_L), so F = 0. P_B ↠ Sp_1(k_L)^* exists because P_B is the projective generator of the block. Sp_1(O_L)^* → Sp_1(k_L)^* is onto, since Sp_1(O_L) is free. | Discrete topology loses the map; stage topology keeps it. Added the Check. |
| §6.6: topological isomorphism, Steinberg summand | p = 5 (> 3), n = 0, L = ℚ_5, M = Sp, ρ = 1, R = L | Frobenius and ϖ_D both act by swapping the copies (the period map is Galois-equivariant and Ǧ-invariant), so (μ_j, μ_j) is fixed. Norm of μ_j: |f(5^j) − f(0)| ≤ ‖f mod L‖, with equality 1 for f = 1_(5^jℤ_5^×), so the norm is 1. μ_j → 0 pointwise on bounded sets, which is compact convergence there (Conventions). Incongruent mod 5 by the pairing value 1. | Consistent with Conventions' W*. Norm or p-adic topologies would fail. Added the Check. |
| §3.1 Check (F02) | Level zero, geometric; f = (1, −1); p = 2, 3, 5 | v_p(det diag(p,1)) = 1 is odd, so the copies are swapped and diag(p,1)f = (−1, 1) = −f, which differs from f since 2 ≠ 0 in L, including p = 2. On {g : v_p(det g) even}, which contains GL₂(ℤ_p) and is open, gf = f. Lie derivatives of constants are 0. p·1 ∈ Z(G) has det p², even, consistent with the p-central quotient. | Old Check false; corrected. |
| Supplier contract: ProetaleCohomologyOfPAdicCurvesAndTowers §6.9 with trivial Galois action | d = r = 1 | That roadmap states "topological isomorphisms of G × G_K-modules … ≅ Sp_r(ℤ_p)^*", with no Galois action on the right. Its Check is Drinfeld's H¹_ét(Ω_C, ℚ_p(1)) ≅ (St^cont)*. | Contract made explicit. |

## Lean and declaration checks

- `lake env lean packages/PadicLocalLanglandsForGL2QpPartII/Suggested.lean`, run from the content checkout: exit 0, with no output and no warnings. The file has only `import Mathlib`, so no Tau Ceti object file was needed.
- `Suggested.lean` declares nothing, so the `#check @name` binder comparison has nothing to compare. I confirmed again that there are no declarations, and no binder could change. Both findings concern README targets. The module docstring describes the §6.6 factorisation without asserting a topology, so it needed no change.
- No README backticked own-name claims were added. The new text uses no Lean names.

## Dependency check

    depcheck: 236 roadmaps, 2148 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line. The new *Needs* items are EndoscopicTransferAndUnitaryTraceComparison §§12.4–12.5 and ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4 in §5.1. Both suppliers were already named, and both are earlier in the merge order.

## Citations, ownership, overlaps

- `roadmaps resolve` reports the same three leads as before: ProetaleCohomologyOfPAdicCurvesAndTowers §7.5, LocallyAnalyticDistributionsPartII §2.2 and LocallyAnalyticRepresentationsOfLocalGroups §0.3. All three are board packages, and I confirmed the cited sections in `packages/*/README.md`. The newly cited ProetaleCohomologyOfPAdicCurvesAndTowers §6.9 is at line 741 of its board copy. §7.1 was already cited.
- ScholzeFunctorAndModpCohomologyOfTheLubinTateTower §5.4 was read at its open head. Its statement is the compact dual of a finite-length smooth representation for k and O_L/ϖ^a coefficients, which is what the contract cites. Its downstream paragraph names this roadmap as the consumer for the characteristic-zero factorisation.
- Ownership: no new object was introduced. The topology belongs to this roadmap's own arithmetic completion (§5.1, owned here per Scope). Overlaps: `scratch/overlaps.md` lists no open pull request changing this roadmap and no dropped ids.

## Sources

No fetch was needed. All new locators are in CDN23, which is already in the manifest and cited for §§5.1–5.6 and 6.6: Théorème 2.1 (line 1064), §2.1.3 (lines 1262–1271), line 2644, line 2649, Remarque 5.20 (lines 2691–2715), line 2729 and footnote 6 (line 178). `sources.toml` is unchanged. Nothing was added to `needs-references.toml`.

## Notes for the maintainer

- No name that other roadmaps cite changed, and no section was renumbered.
- §5.2 gains one target: the inductive limit topology of H^(1,+)/p^k over its compact finite-K pieces. It is the topological input §5.4 needs, and it is stated with its CDN23 locator.
- The §5.3 and §5.5 Checks on the Pontryagin dual were the same topological error as F01, in a form the review did not list. They are corrected under F01's pattern repair.
- No suspicious instructions were found in the review text.
