# FIX-PKG-PotentialAutomorphyInfrastructurePartII~2 — repair report

Findings of `REV-PKG-PotentialAutomorphyInfrastructurePartII` (15). Section numbers below are the **new** README numbers unless marked "old".

## F01 (P1) — applied

I reordered sections inside their layers so that every Needs line points backwards. No layer changed. Layer 3: base change is now 3.5 (old 3.7 (1),(2),(4)), constituent Galois representations are 3.6 (old 3.5), and residual plus `𝒢_n`-valued representations are 3.7 (old 3.3(2) plus old 3.6). Old 3.7(3) became the new 3.14. The finiteness and `φ_λ` statements moved from 3.9 into 3.11 and 3.12, and 3.10 no longer claims finiteness. §4.4 no longer needs §5.2: its hypothesis is now explicit and its route includes the computation. §5.4 now covers only §§4.3(b), 4.4, 4.7, 5.1 and 5.3; §§5.5–5.7 state their own relaxed forms and cite §5.4. Layer 7: 7.12–7.19 became 7.19, 7.12–7.18. Layer 8: the ANT set-up and old 8.11–8.16 now come first as 8.1–8.6, and old 8.1–8.10 are 8.7–8.16. Layer 9: the unpolarized trace map is 9.5, and equivariance plus the polarized comparison are 9.6 (items (1)–(3)). A mechanical check of all 110 Needs lines finds 0 forward edges and 0 cycles. Before the repair it found 29 forward edges and 8 cycles, including the four the reviewer cited and also 8.1–8.3 → 8.11–8.16 and 5.4 → 5.5–5.7.

## F02 (P1) — applied

§3.10: the generator `T_w^j − q_w^{j(j−1)/2} tr ∧^j r̄(Frob_w)` became `T_w^j − q_w^{−j(j−1)/2} tr ∧^j r̄(Frob_w)`, with geometric `Frob_w`. The text now explains the NT21 sign slip. I added the rank-two `𝔽₇` Check: `q = 2`, `det = 1`, so `T² = 4` and `qT² = 1`, whereas the printed sign gives `T² = 2` and determinant `4`. Evidence: NT21 line 3893 and NT21 lines 1017–1031 (the Hecke operator normalization is Geraghty's). No other generator with this sign appears in the roadmap.

## F03 (P1) — applied

§7.11(1): the Teichmüller `ψ₀` is replaced by a lift `d₀` of `det r̄` that is unramified at `S − S_l` and satisfies `d₀d₀^c = µ^n`. The isomorphism is canonical once `d₀` is fixed. When `µ^n|G_F` is unramified at `S − S_l`, `d₀ = ψ₀·(µ^n(ψ₀ψ₀^c)^{−1})^{1/2}` exists. The characteristic-`l` form with `ψ₀` holds with no condition on `µ`. The route and Checks are updated, and the `n = 1`, `l = 5` witness is added. The other uses of §7.11(1) are repaired: §8.13 (old 8.7) uses the characteristic-`l` form, and §8.9 (old 8.3) uses `d₀`.

## F04 (P2) — applied

I rewrote the gap `equal-characteristic-projective-image` in the README and in `design/plan.json` `gaps` with the full Tho15 §5.1 hypotheses: `l > 3`, `A = k⟦T⟧`, the polarized `𝒢_n` setting with `ν(r(c)) = −1`, the element `σ₀` with no multiplicative relation, and `l ∤ n`. Lemma 5.2 is now stated with `K₀` independent of `a, m` and with the hypotheses on `K₁`. The `Sp₄(𝔽₅⟦T⟧)` non-example is included (dimension 10 against 15). Evidence: Tho15 lines 2525–2563. §7.17 (old 7.18) works under the hypotheses of §7.13 and §7.10, which include all of these.

## F05 (P1) — applied

§6.1(5)(b): the polynomial with roots `α q_F^i` is now stated for `V_{λ,t}((N−1−n)/2)` with geometric Frobenius. On `V_{λ,t}` itself the roots are `α q_F^{(N−1−n)/2+i}`. The hypothesis "`n` even" became "`n ≥ 2` even". I added two Checks: the `n = 2`, `N = 5`, `q_F = 11` determinant (1331 untwisted against 11 twisted) and the `n = 0` exclusion. Evidence: BLGHT11 line 266 (Frobenius is geometric) and lines 1018–1021 and 1269–1273. §6.2 only uses "unramified twist of Steinberg", which does not depend on the twist.

## F06 (P1) — applied

§0.2 route: the geometric lemma now applies to the full induced representation. By exactness of the Jacquet functor, the irreducible subquotients split the Weyl terms among themselves, and the segment classification places the increasing-valuation character in the generic constituent only. I added the `GL₂(ℚ₃)` Check: total dimension 2, the Steinberg constituent gets `δ_B` and the trivial constituent gets `1`. I checked the same pattern in §0.5, where the representation is the full irreducible induced one, which is correct.

## F07 (P1) — applied differently

The reviewer's repair cannot be done in this roadmap, because of supply direction. LLHLM23 Theorem 9.1.6 is proved from Lemmas 9.1.10 and A.1.1 (LLHLM23 lines 6133–6141, 6231). The detectability half of Lemma A.1.1(2) uses LLHL19 Theorem 4.3.8 (LLHLM23 lines 6738–6740). That theorem's (2)⇒(3) step uses BLGG Theorem 3.1.3, i.e. automorphic lifts with prescribed potentially diagonalizable types (LLHL19 lines 1938–1962 and 2072–2081). That is change of weight and level, BLGGT14 Theorem 4.4.1, which ModularityAndLanglandsExtensions §2.32 owns. ModularityAndLanglandsExtensions consumes this roadmap and is later in the merge order (position 269 against 259).

So I deleted the conditional §10.6, which assumed the obvious weight was modular. Scope and ownership now records why the generic Serre weight theorem and Remark 9.2.2(1) are not stated here. I added a §10.5 Check: a residually automorphic `r̄` with no seed of the right weight and type lies outside the theorem. LLHL19 is fetched and recorded.

No roadmap plans these two statements yet. Where they go is for the maintainer to decide (see the notes at the end).

## F08 (P1) — applied

§9.1 now imports AutomorphicGaloisRepresentationsPartII AG2.6 ("Generic monodromy orbits and local genericity") for the Weil–Deligne genericity predicate and the generic local Langlands criterion. Its own definition and LLC proof are deleted. It keeps only the additional Galois-side statements (1)–(4), with a new route and Needs. The AG2.6 citation is added to the supplier contract, to Scope, and to the Layer 1 and Layer 9 dependencies. I repaired the same duplication in §1.3(1): its segment-linking proof now cites AG2.6's criterion. Evidence: AG2.6 at the head of its open pull request, under "Generic monodromy orbits and local genericity".

## F09 (P2) — applied

The supplier contract now splits AG2.2 (twisting, base change and discrete sums; its Shin-restricted existence theorem is not used) from AG2.3 ("Arbitrary regular conjugate-self-dual existence"). Every general-existence use now cites AG2.3: §3.6 route and Needs (old 3.5), §3.10, the Layer 3 dependencies, §10.2, and in addition §0.3's route and Needs.

## F10 (P1) — applied

§10.3 route: the test is now all ratios `(α/β)^j` with `−(N−1) ≤ j ≤ N−1`. The finiteness argument is kept, via `|(α/β)^j| = 1 < q`. I added the `y² = x³ + 3x + 2` over `𝔽₅`, `ℓ = 7`, `N = 3` negative control: the old exponents give `{4, 1, 2}`, which misses `5`. The ramified lift `Φ = diag(2, 10, 1)`, `τ = I + 7E₂₁` satisfies `ΦτΦ^{−1} = τ⁵`, and `7 ∤ 11904`.

## F11 (P3) — applied

§3.12 Check: the impossible "congruent mod `λ²` but not `λ`" case is replaced by the `ℤ₅[ζ₅]` example. The characters `1` and `ζ₅` differ by `ϖ`, so they are congruent modulo `λ` but not `λ²`. Their `k`-spaces agree, while the `O/λ²` characters differ.

## F12 (P3) — applied

§3.7 Check (old 3.6): it now shows `(aI,1)(A,b)j(aI,1)^{−1} = (a²A,b)j`, so `ν` is unchanged; for `a = 2` the result is `(4I,1)j`. When `ā² ≠ 1` the conjugate lifts a different residual representative; when `a ≡ 1 mod 𝔪` it is a strict equivalence.

## F13 (P3) — applied

§0.1 Check: the slopes of `D_cris(V_l E)` are `−1/2`. Their sum `−1` matches `φ = l^{−1}` on `D_cris(ε_l)`. The dual `H¹` has slopes `+1/2`.

## F14 (P3) — applied

- NT21 Proposition 5.6: pp. 71–72, with the set-up on pp. 70–71 (NT21 lines 3475, 3494).
- NT21 Theorem 5.7: pp. 72–73 (lines 3578–3591).
- Tau Ceti `NumberField.ncard_primesOver_eq_finrank_iff_of_isGalois`: `Basic.lean:74`, confirmed at the pin.

## F15 (P3) — applied

§10.4 now has a Needs line: AG2.0, AutomorphicFormsOnReductiveGroups §5.1, and §ALS.F.7 plus PotentialAutomorphyInfrastructure §0.4. The `Suggested.lean` docstring now says that `README.md` is the roadmap and this file is not. It adds §6.3 and §10.3 with their missing carriers, explains why the generic Serre weight and change-of-weight results are not headlines here, and corrects the old §§8.1–8.2 to §§8.7–8.8. All 110 targets have a Needs line.

## Checks run

- `lake env lean packages/PotentialAutomorphyInfrastructurePartII/Suggested.lean` (from the content checkout): exit 0, no output. There are no `TauCeti.*` imports and no declarations.
- Elaborated-signature comparison: `Suggested.lean` declares nothing, so there is nothing to `#check`; no binder changed.
- Depcheck output: `depcheck: 201 roadmaps, 1434 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line for this roadmap.
- `roadmaps resolve` on the README: no cross-roadmap citations unresolved, and no Lean names unresolved.
- Internal Needs graph (scratch script over all `*Needs:*` lines): 110 sections, 0 forward edges, 0 cycles.

Ownership against open pull requests was checked with `roadmaps grep`/`show`:
- The generic Serre weight theorem has no owner: AlgebraicModularFormsAndSerreWeights and SerreWeightAndLevelOptimisation are GL₂, and LocalGaloisDeformationRings §6.30 is GL₃.
- Generic WD genericity: AG2.6.
- PD lifts and change of weight: ModularityAndLanglandsExtensions §§2.25 and 2.32.

## Adversarial pass (changed or added statements)

| Statement | Instances | Computed values | Result / change |
|---|---|---|---|
| §0.1 supersingular Check | `V_lE`, `det = ε_l` | slope of `D_cris(ε_l)` is `−1`; `−1/2 −1/2 = −1`; old `+1/2 +1/2 = +1` | fixed (F13) |
| §0.2 route | `GL₂(ℚ₃)`, `n-Ind(|·|^{1/2}⊗|·|^{−1/2})` | full Jacquet dim 2, terms `δ_B` and `1`; Steinberg gets `δ_B` (dim 1), trivial gets `1` (dim 1) | fixed, Check added (F06) |
| §3.3 duality Check | `n = 1`; `n = 2`, `j = 1` | `T_{w^c} = T_w^{−1}`; on Satake `(a, b)`, `q^{1/2}(a^{−1} + b^{−1}) = q^{1/2}(a + b)/(ab)` | holds |
| §3.5 descent Check | `φ = |·|_{𝔸_L}` | `φ^c = φ` but base changes need `φ^c = φ^{−1}`, which gives `|·|² = 1`, false | correct non-example |
| §3.5 division-algebra Check | `n = 2`, unramified principal series at `S(B)` | not essentially square-integrable, so no Jacquet–Langlands partner | hypothesis needed |
| §3.7 scalar Check | `a = 2`, `A = I`, `b = 1` | `(4I, 1)j`, `ν` unchanged; `a = −1` acts trivially | fixed (F12) |
| §3.9 twisted-structure Check | `n = 2` | `w₀ν = (0, 1)`, `u ↦ τ(u₂)^{−1}⟨u⟩ = ∏_i τ(u_i)^{1−i}⟨u⟩` | agrees |
| §3.10 generator | `𝔽₇`, `q = 2`, `det = 1` | correct `T² = 4`, `2·4 = 1`; printed `T² = 2`, `2·2 = 4` | fixed (F02) |
| §3.12(4) Check | `ℤ₅[ζ₅]` | `v_ϖ(ζ₅ − 1) = 1` | fixed (F11) |
| §4.4 route (`p = 2`) | `A = 1₂` and `A = Ψ₂` | image of `1 + c`: `X + ᵗX` (alternating, so `I` is not in it); for `Ψ₂`, `(a+d)I` contains `I` | holds; dependency on §5.2 removed |
| §6.1(5)(b) | `n = 2`, `N = 5`, `q = 11` | `det V = ε^{−3}`, so 1331; twisted gives 11; `n = 0` gives 0 Jordan blocks against 1 | fixed (F05) |
| §7.11(1) | `n = 1`, `l = 5`, `F = ℚ(i)`; Tho15 normalization `n = 2` | `1 − 1/36 = 35/36`, `v₅ = 1`; `d₀ = ε^{−1}` has norm `1/36`; for `n = 2`, `ε^{−2}(g) = 1/36` against `ω^{−2}(g) = 1`; for `n = 1`, `µ = δ` and `ψ₀ψ₀^c = 1 = µ|G_F` | fixed (F03) |
| gap projective image | `Sp₄(𝔽₅⟦T⟧)` | dim `PSp₄ = 10`, dim `PGL₄ = 15`; `a·b·a^{−1}·b^{−1} = 1` | fixed (F04) |
| §9.1 transport | `(1 ⊕ |·|, 0)`; Tate curve; irreducible `r` | Hom dimensions 1, 0, 0; `det` differs by `|·|^{dim r}` | holds |
| §9.5 `H¹_𝓔` Check | `n = 1`, `F = ℚ`, `S = {p}`, `[0,0]` | `H¹ = O/ϖ^m` against `H¹_𝓔 = 0`, `R = O` | added |
| §10.3 ratio test | `y² = x³+3x+2`/`𝔽₅`, `ℓ = 7`, `N = 3` | `#E = 5`, roots `2, 6`; ratios `{4,1,2}` miss 5; full set `{2,3,1,5,4}`; `ΦτΦ^{−1} = I + 35E₂₁ = τ⁵`; `11904 = 7·1700 + 4` | fixed (F10) |
| §5.4 relaxed adequacy | `SL₂(𝔽₄)`, trivial group | unchanged values; statement narrowed to sections that precede it | order fixed |

## Notes for the maintainer

- **Renumbering.** Inside the README, sections were renumbered in Layers 3, 7, 8 and 9 (mapping in F01). `design/plan.json` node ids are unchanged, and I edited only its `gaps`. The plan's nodes for the deleted §10.6 and the old §9.1 definition remain; they are outside the files I may edit. Other roadmaps cite this package by PL node names (AbelianSurfacesModularity cites "PL.4, Strong residual oddness" = §5.2, and "relaxed adequacy" = §5.4); both sections still exist under the same numbers.
- **F07 placement.** No roadmap plans LLHLM23 Theorem 9.1.6 or the change-of-weight form of Remark 9.2.2(1). It needs a home after ModularityAndLanglandsExtensions §2.32, for example in that roadmap's Part II.
- **Sources.** `sources.toml` gained `LLHL19` (arXiv:1610.04819v4). A first fetch under a wrong arXiv id brought in an unrelated paper; that entry was removed. No `needs-references.toml` was written.
- **Source issues to add to the errata** (all confirmed above):
  - NT21 p.79: the sign of the residual ideal generator.
  - Tho15 Lemma 3.36: the Teichmüller determinant.
  - BLGHT11 Lemma 5.1(2): the twist.
  - LTXZZ Proposition 4.1.1 proof: the ratio test.
