# FIX-PKG-VectorBundlesAndIsocrystalsPartII~2

Repair round for the review `REV-PKG-VectorBundlesAndIsocrystalsPartII` (one P2, seven P3). Every finding was verified against the cited texts in the sources cache, the supplier roadmaps at their current heads (parent VectorBundlesAndIsocrystals, PerfectoidTowers, PerfectoidSpaces, LocallyAnalyticDistributions, PadicHodgeTheory, read with the roadmaps tool) and the pins of `lake-manifest.json` (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`). All eight are applied.

## F01 (P2) — applied

Verified: PerfectoidTowers P9.6 (*almost-cohomology-of-tower*, *function-descent-along-tower*) is stated for a pro-étale `G`-tower, with a countable cofinal sequence of open subgroups, over a smooth rigid space over a complete discretely valued field, the almost statement read after base change to `C`; the sympathetic closure `C̃{X}` is the completion of the transfinite union of all elementary extensions of `C{X}` (Colmez02 line 975–978 and 1289–1297: Kummer extensions by `p`-th roots of elements at distance `< 1` from 1, étale) and is not such a tower. CN25 line 1089–1092 only calls the step "standard almost étale descent and decompletion".

Changed: §3.4 old → new. Old: one sentence applying the tower comparison to the sympathetic cover, *Needs* §3.2, P9.6, P6. New: a three-step route. (1) Tower step: the Kummer–cyclotomic tower of `Sp(ℚ_p{X})` (adjoining `p^n`-th roots of unity, of `p` and of `E_1`, of `E_2` at `p = 2`) is a *profinite-galois-tower* with perfectoid completed limit; its base change to `C` is `Ĉ{X}_∞ × S`, the integral sections are coinduced from the Kummer group `Γ ≅ ℤ_p(1)`, and P9.6 plus Shapiro give the almost comparison with `H^q_cts(Γ, O⁺(Ĉ{X}_∞)/p^m)`; the derived-limit condition is checked (Mittag–Leffler, the degree-zero system being `O_C{X}/p^m` extended by bounded torsion). (2) Inflation step: `C̃{X}` is the completion of a union of finite étale Galois extensions of the perfectoid `Ĉ{X}_∞`, `H_C → Γ` is surjective by the §3.1 lifting theorem, and almost purity (PerfectoidSpaces §P3) makes `H^q_cts(H′, O⁺(C̃{X})/p^m)` almost zero for `q ≥ 1` with invariants almost `O⁺(Ĉ{X}_∞)/p^m`, so inflation `H¹_cts(Γ, Ĉ{X}_∞) → H¹_cts(H_C, C̃{X})` is an isomorphism. (3) Decompletion along `Γ` gives `C{X}·ψ_1` and the bound. *Needs* now: §3.1; §3.2; P9.6; P3; P6. Three new Checks (first-level degrees `p(p−1)` and `p²(p−1)` versus the geometric `μ_p`; the eigenvalue `ζ − 1` on `C{X}·E_1^(1/p)` with inverse norm `p^(1/(p−1)) ≤ p`, equality at `p = 2`; the negative control that `C̃{X}` contains `(1 + cX)^(1/p)` for `|c| ≥ p^(−p/(p−1))`, not in `C{X}`, and enters only through inflation). The PerfectoidTowers contract names the stated hypotheses and the two-step route. Layer 3 Dependencies already listed P3; §3.6 and §3.8 consume §3.4 and needed no change.

## F02 (P3) — applied

Verified: the parent's README at its head has layers "Layer 0" to "Layer 6", with the Banach–Colmez material under "## Layer 5: Banach–Colmez spaces" and all 18 cited `####` headings under it. Changed: "Layer VB3" → "Layer 5" at every occurrence (36 by count, 34 lines) in `packages/VectorBundlesAndIsocrystalsPartII/README.md`, and the `section` field of gap `G-HOM` in `design/plan.json`. Two bare mentions under the parent's contract were made explicit ("The parent's Layer 5", "in its Layer 5") so they are not read as this roadmap's own Layer 5 (qBC). Heading names unchanged.

## F03 (P3) — applied

Verified: neither README nor Suggested.lean of LocallyAnalyticDistributions at its head contains `naLeftHeart`, `naFunctionalExtension_countableType` or `naProjectiveLimit_cohomology_finiteDimensionalML`; the prose targets *Left hearts and strict exactness* (its line 940), *Continuous functional extension in countable type* (1098) and *Strict countable inverse limits and cohomology* (1126) exist. Changed: the three backticked names in the LocallyAnalyticDistributions contract → the three italic target names.

## F04 (P3) — applied

Verified: PadicHodgeTheory at its head declares neither `senModule` nor `senOperator`; its §4.4 "Sen and differential de Rham realizations" (line 895–897) supplies the Sen module and operator in prose. Changed: "`senModule` and `senOperator` on finite-dimensional semilinear `C`-representations" → "the Sen module and the Sen operator of a finite-dimensional continuous semilinear `C`-representation".

## F05 (P3) — applied

Verified at the manifest: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`; `krullTopology` KrullTopology.lean:134, `ContinuousLinearMap.isOpenMap` Banach.lean:229, `exists_preimage_norm_le` Banach.lean:162, `Monoid.End` (`AddMonoid.End` by `to_additive`) Hom/Defs.lean:975, `Abelian.Ext.mapExactFunctor` Ext/Map.lean:126, `WittVector.fontaineTheta` FontaineTheta.lean:166; the other 13 rows exact. Changed: the two pin hashes and the six line numbers.

## F06 (P3) — applied

Verified: TVS25 line 1288 "Lemma 4.21", between the page markers for pp. 28 and 29; CN25 Appendix A runs from line 2873 (p. 58) to line 2952, the p. 60 marker at line 2953 opens the bibliography; Proposition A.4 at line 2922, p. 59. Changed: "Proposition 4.21, pp. 28–29" → "Lemma 4.21, p. 28" (§6.2) and "Proposition 4.21 and Corollary 4.25, pp. 28–30" → "Lemma 4.21, p. 28, and Corollary 4.25, p. 30" (§6.5); "Appendix A, pp. 58–60" → "pp. 58–59" at §2.5, §4.1 and §4.11 (pattern, three places) and in the CN25 manifest locator; "Appendix A.4, pp. 59–60" → "p. 59" at §4.6; TVS25 manifest locator "Proposition 4.21" → "Lemma 4.21".

## F07 (P3) — applied

Verified: for `v ∈ V`, `q(ρ σ v) = ρW.act σ (q v) = ρW.act σ 0 = 0` by `hq_equiv` and `hq_ker`, so `ρ σ v ∈ q.ker = V`; `hV` follows. Changed: `hV` deleted from `fundamental_extension_surjective` in `Suggested.lean`; its docstring and the README §1.8 sentence now say `V` is a finite-dimensional subspace, stable because it is the kernel of the equivariant `q`. The `#check @` audit was re-run (below).

## F08 (P3) — applied

Changed: "No roadmap on main or in an open pull request constructs these objects." → "No other roadmap constructs these objects."

## Checks

**Elaboration.** `lake env lean packages/VectorBundlesAndIsocrystalsPartII/Suggested.lean` from the content checkout: exactly two warnings, `65:8 declaration uses sorry` and `88:8 declaration uses sorry`; no errors; 9 s. No `TauCeti.*` import, so nothing to build.

**`#check @` audit.** A scratch copy with `#check @` for all four declarations elaborated once. `galoisAct : (p : ℕ) → [Fact p.Prime] → {K} → Gal(PadicAlgCl p/K) → ℂ_[p] → ℂ_[p]`; `SemilinearRep` with `[AddCommGroup W] [Module ℂ_[p] W] [TopologicalSpace W]`; `semilinearRep_equivariant_map_smul` carries `[FiniteDimensional ℚ_[p] K]`, both `[FiniteDimensional ℂ_[p] Wᵢ]` and `[IsModuleTopology ℂ_[p] Wᵢ]`, continuity and equivariance of `f`; `fundamental_extension_surjective` carries `[FiniteDimensional ℚ_[p] K]`, `[CompleteSpace E]`, `[FiniteDimensional ℚ_[p] V]`, `[IsModuleTopology ℂ_[p] W]`, `hW`, continuity, surjectivity, kernel and equivariance of `q`, equivariance of `η` and the image inequality. What changed: the binder `hV` is gone; every other binder is as before and matches its README statement.

**Depcheck.** `tauceti-roadmap gate --depcheck … --movable`: `depcheck: 242 roadmaps, 2482 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.

**Resolve.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

**Gate failures listed in the brief.** None.

## Adversarial pass on the new and changed text

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `E_1` a unit of `ℤ_p{X}` congruent to 1 mod `p` | `p = 3`, `k = 1, 2`; `p = 2` with `E_2` | `v_p(p^k/k!) = k − v_p(k!) ≥ k − (k−1)/(p−1)`: `1, 2` at `p = 3`; `v_2(4^k/k!) ≥ k + 1`: `2, 3` | unit, Kummer levels étale | none |
| First-level degrees | odd `p` | `[ℚ_p(ζ_p, p^(1/p)) : ℚ_p] = p(p−1)` (coprime degrees `p−1` and `p`), `|G/G_1| = p²(p−1)`, geometric `μ_p` of order `p` | Shapiro reduces to the geometric group | Check added |
| Perfectoidness of the tower's completed limit over `F̂_∞` | `n = 0`; `n ≥ 1` | `Y_0^p ≡ X`, `Y_n^p ≡ Y_(n−1)` mod `p^(1/p)` as in §3.2; constants `F̂_∞ = ℚ_p(μ_{p^∞}, p^(1/p^∞))^` perfectoid | hypotheses of *profinite-galois-tower* hold | none |
| Base change `Ĉ{X}_∞ × S`, coinduced module | level `n` | `F_n ⊗_ℚ_p C ≅ C^{[F_n:ℚ_p]}`, limit `S = Hom(F_∞, C)` a `Gal(F_∞/ℚ_p)`-torsor; `Cont(S, M)/p^m = Cont(S, M/p^m)` for profinite `S` | `H^q_cts(G, CoInd) = H^q_cts(Γ, −)` | none |
| Derived-limit condition of P9.6 | `q = 1` | `0 → O_C{X}/p^m → (O⁺/p^m)^Γ → H¹(Γ, O⁺)[p^m]`, the last killed by a fixed `p^c`, transitions multiplication by `p`, nilpotent | Mittag–Leffler, `R¹lim = 0`; "almost `O_C{X}/p^m`" would be false (the torsion is bounded, not almost zero) | sentence corrected before submission |
| Elementary extensions étale Galois | `Λ[T]/(T^p − x)`, `‖x − 1‖ < 1` | `x` a unit, `p` invertible, roots `ζT`, group `μ_p` (Colmez02 line 977–978) | `C̃{X}` completion of a union of finite étale extensions; `p`-closedness gives Galois closures inside the union | none |
| Inflation–restriction | `M = C̃{X}`, `N = H′` | `0 → H¹(Γ, M^{H′}) → H¹(H_C, M) → H¹(H′, M)`; `M^{H′} = Ĉ{X}_∞`, `H¹(H′, M) = 0` after inverting `p` | inflation an isomorphism | none |
| Invariants under `H′` mod `p^m` | one finite Galois stage `B/A` | almost Galois descent: `(B/p^m)^{H_L}` almost `A/p^m`; colimit over stages | almost `O⁺(Ĉ{X}_∞)/p^m` | none |
| `(γ − 1)⁻¹` on `C{X}·E_1^(1/p)` | `p = 3`; `p = 2` on `E_2^(1/2)` | `|ζ_3 − 1|⁻¹ = 3^(1/2) ≤ 3`; `|−2|⁻¹ = 2 = p` | constant `p` at least the component value, equal at `p = 2` | Check added |
| `H¹_cts(Γ, C{X})` | trivial action | `Hom_cts(ℤ_p, C{X}) = C{X}` via `f ↦ f(1)` | `C{X}·ψ_1` | none |
| `(1 + cX)^(1/p) ∉ C{X}` | `k = p^r`, `|c| = p^(−p/(p−1))` | `v_p(binom(1/p, k)) = −k − v_p(k!)`, coefficient norm `p^(k + v_p(k!))|c|^k = p^(−s_p(k)/(p−1)) = p^(−1/(p−1))`, not tending to 0; any root in `C{X}` would be `ζ` times the binomial series | negative control holds | Check added |
| `hV` redundancy | `v ∈ V`, any `σ` | `q(ρ σ v) = ρW.act σ (q v) = ρW.act σ 0 = 0` | statement unchanged in strength | binder deleted |
| Locators F05, F06 | each row | line numbers and page markers as listed above | exact at the pin and in the texts | updated |

## For the maintainer

- No Lean name changed; `fundamental_extension_surjective` lost the binder `hV` (one fewer explicit hypothesis). No other roadmap cites it.
- Supplier citations are unchanged in substance: the roadmap now cites the parent's Layer 5 (its actual heading), the three LocallyAnalyticDistributions targets by their prose names, and PadicHodgeTheory §4.4 in prose. The tower statements of PerfectoidTowers §P9.6 are now applied to an instance that satisfies their hypotheses; nothing is asked of PerfectoidTowers beyond what it states.
- Ownership: the Kummer–cyclotomic tower of the disc over `ℚ_p` is an instance verified in §3.4, not a new general construction; P9.6 owns the general statements. Ownership was checked against main and the open heads the roadmaps tool indexes; the sibling checkouts listed in the brief without a path were not searched by hand.
- The source issues of the review stand; none affects the edits. The `hV` deletion and the §3.4 route were not sent to any other roadmap.
