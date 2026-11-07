# FIX-PKG-PadicFamiliesPartII~2 — repair round for REV-PKG-PadicFamiliesPartII

Files edited: `packages/PadicFamiliesPartII/README.md`, `packages/PadicFamiliesPartII/design/plan.json` (the `section` field of three entries of its top-level `gaps` list only). `Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.

## REV-PKG-PadicFamiliesPartII/F01 (P1) — disputed

The review claims that the BGG scaling identity of §6.4 is reversed and that the two source-issue bullets are not source errors. The identity as stated in §6.4 is the one the sources' own corollaries and BCGP21's own twisting statement require; the review's slope computation carries a sign error.

**Evidence.**

1. BCGP21 line 7417 prints `U_{v,2} ∘ θ_{s,s'} = p^{(k_v−l_v)+1} θ_{s,s'} ∘ U_{v,2}` with `θ_{s,s'}` from the term indexed by J (`v ∉ J`) to the term indexed by `J ∪ {v}` (lines 7413–7415). With the usual order of composition this reads `U_target ∘ θ = p^m θ ∘ U_source`, `m = k_v − l_v + 1`. Lines 7418–7420 then say the spectral sequence is equivariant "if the standard action of `U_{v,2}` on the term indexed by J is twisted by multiplication by `p^{k_v−l_v+1}` if `v ∈ J`", and line 7420–7421 derive Corollary 6.4.3 from the slope bounds of Proposition 6.4.1 (lines 7376–7377: standard slopes `≥ −3` on every `H^i`, `≥ 0` on `H⁰`).
2. The twist and the printed relation are inconsistent. Write `U'_J = p^{m}U` on the J-term when `v ∈ J`. Equivariance `U'_target ∘ θ = θ ∘ U'_source` with `U'_source = U_source` (`v ∉ J`) and `U'_target = p^m U_target` says `p^m U_target ∘ θ = θ ∘ U_source`, i.e. `θ ∘ U_source = p^m U_target ∘ θ`: the README's direction. Under the printed direction `U_target ∘ θ = p^m θ ∘ U_source` the equivariant twist on the reflected term is `p^{−m}`, its twisted slopes are `≥ −3 − m`, and the ordinary projector kills nothing.
3. Two eigenlines, computed: `θe = f`, `U_s e = αe`, `U_t f = βf`. README direction: `αf = p^m βf`, so `β = p^{−m}α`; with `v(β) ≥ 0` on the reflected `H⁰` (Prop. 6.4.1), an ordinary e (`v(α) = 0 < m`) forces `θe = 0`, so `e ∈ H⁰(ω^κ)`: exclusion. Printed direction: `β = p^m α`, so ordinary e may have `θe = f ≠ 0`; then `e(U)H⁰(ω^κ) = 0 ≠ e(U)H⁰(F^κ) = ⟨e⟩`, contradicting Cor. 6.4.3 for `i = 0`. The review's own sentence "a source eigenvector of slope s maps to a target eigenvector of slope `s + m`" is this `β = p^m α`; the next sentence, "the standard U on the reflected term is twisted by `p^m`, so its slopes are `≥ −3 + m`", has the sign reversed: a map that raises slopes by m needs the target divided by `p^m` to be equivariant. The review's test instance (`p = 3`, gap 3, ordinary class on the reflected `H¹`) gives twisted slope `0 − 4 = −4` under the printed direction and `0 + 4 = 4` under the README's, the opposite of what the review wrote.
4. P20 lines 4133–4140 print the same relation (`U` on the middle term, `p^{−k−1}U` on the reflected term, vertical `d₁`), and its Corollary 13.3.3.1 (lines 4142–4156) has thresholds `k − 2` in every degree and `k + 1` on `H⁰`/`H¹`. From the triangle `RΓ(Ω) → C_s → C_t` (line 4128) with twisted operator `U' = p^{c}U` on `C_t`, `H^i(Ω)_{<a} ≅ H^i(C_s)_{<a}` needs the reflected slopes `< a` to vanish, i.e. `a ≤ −3 + c`; the printed `c = −k−1` gives `a ≤ −k−4`, the corollary's `a = k − 2` needs `c = k + 1`. The slope bound used is weight-independent (lines 4092–4093: `p³U` stabilizes an open bounded lattice). So the thresholds of the corollary require `d₁ ∘ U_source = p^{k+1} U_target ∘ d₁`, which is what the README's bullet says.
5. The review's q-expansion witness `Uθ = pθU` for `θ = q d/dq` is correct for that operator, but that θ is not the BGG differential: it maps into the space of weight `k + 2` forms, whereas the BGG differential has `ω^κ` as its kernel on the source side. The README's derivative witness is on the unipotent flag coordinate z of the analytic flag variety of `ω_G`, not on q.
6. HigherHidaAndColemanTheory §9.6 item 4 (board design) says "U on the middle term intertwined with `p^{−k−1}U` on the last" and states the thresholds `k − 2`, `k + 1`; "intertwined with" fixes no direction, and its conclusions are those of §6.4. There is no contradiction with the supplier.

**Edits made (clarification only, no change of mathematics).** §6.4: the statement now names source and target terms, the standard normalization of `U_{v,2}` on both, the equivalent twisting statement, the slope bounds (Prop. 6.4.1) and Cor. 6.4.3; the clause "stated here in the direction forced by the derivative computation" is replaced by a pointer to the source issues; a proof route states the `z ↦ pz` action and the trace commuting with the fibrewise derivative; `§4.3` added to *Needs* (the standard operator). The three Checks are replaced by: the two-eigenline computation of both readings; the gap-3 and gap-2 instances (twisted slopes `≥ 1` and `≥ 0`); the derivative witness with the explicit negative control that the q-expansion `Uθ = pθU` is a different map. The source-issue bullet on P20 Prop. 13.3.3.1 and BCGP21 §6.4 is merged into one bullet that states both printed forms, the reading under which they fail, and why the corollaries and BCGP21's twisting sentence force the opposite direction.

Not read: the reference BCGP21 cites for the relation (AIP15 §7.3); not in the manifest and not fetched, since the sources' own corollaries settle the direction.

## REV-PKG-PadicFamiliesPartII/F02 (P3) — applied

Verified at the heads: AutomorphicBundles (#1069) carries the translation table (its README lines 217–222: B2 = Layer 3, B3 = Layer 5 with B3.2 = 5.3, B4 = Layer 11, B5 = Layer 12 with B5.n = 12.(n+1) for n ≥ 2) and ShimuraCompactifications (#1053) has no `§C` label of its own (its nine `§C` strings cite ComplexComparisonPartII §C−1.1). Titles checked: 3.3 Highest weights and coefficient conventions; 5.3 The canonical automorphic extension; 5.4 The subcanonical automorphic extension; 11.16 Siegel Schur and determinant coefficients; 12.1 The coefficient trace adapter; 12.11 Geometric Hecke operators on classical sections; 12.15 Fourier–Jacobi expansion with vector coefficients; 4.1 Refinement maps; 4.3 Toroidal Hecke correspondences; 4.10 Coherent cohomology does not depend on the cone system; 6.12 The Tate curve; 6.16 The compactified Klingen correspondence; 6.17 Acyclicity of the Klingen first projection; 7.16 The integral minimal compactification; 7.19 Finite normalizations at higher p-level; 7.20 Charts of normalized models; 7.21 Formally canonical coefficient sheaves; 7.22 The Koecher principle on normalized models; 7.25 Codimension of the Hilbert–Siegel minimal boundary; 7.26 The formal Hilbert–Siegel Koecher principle.

Old → new, everywhere in the README (79 label occurrences: Scope, supplier contracts, the three gap contracts, every *Needs* and Dependencies line) and in the `section` field of the three ShimuraCompactifications gaps of `design/plan.json`: B2.3→3.3, B3.2→5.3, B3.4→5.4, B4.16→11.16, B5.1→12.1, B5.10→12.11, B5.14→12.15; C3.1→4.1, C3.3→4.3, C3.9→4.10, C4.12→6.12, C4.16→6.16, C4.17→6.17, C5.16→7.16, C5.19→7.19, C5.20→7.20, C5.21→7.21, C5.22→7.22, C5.25→7.25, C5.26→7.26; the Scope ranges "§§C3, C4.16–C4.17, C5.16–C5.26" → "§§4.1, 4.3, 4.10, 6.12, 6.16–6.17, 7.16–7.26". No letter label of either supplier remains (grep `§[BC][0-9]`: none). HigherHidaAndColemanTheory citations are unchanged (board design numbering).

## REV-PKG-PadicFamiliesPartII/F03 (P3) — applied

Verified: PadicLocalLanglandsForGL2Qp §0.1 (#1312, its README line 220) proves `D(H,L)` Fréchet–Stein with noetherian Banach stages and flat transitions and defines coadmissibility by compatible finite modules over the stages; BCGP25 lines 1125–1139 give `Û(𝔤) = lim_r U(𝔤)_r` for the norms `|·|_r`, state it is Fréchet–Stein (line 1134) and define coadmissible modules over the stages `U(𝔤)_r` (Definition 2.2.31). PadicLocalLanglandsForGL2Qp is earlier in the merge order.

Old → new: §7.1 now defines `Û(𝔤)` by the norms of BCGP25 §2.2.29 (equivalently through the `D(G_r)`, Remark 2.2.30), proves it is a Fréchet–Stein algebra in the sense of PadicLocalLanglandsForGL2Qp §0.1 with the `U(𝔤)_r` as stages, and takes "coadmissible" from that section (BCGP25 Definition 2.2.31 as the locator); `PadicLocalLanglandsForGL2Qp §0.1` added to §7.1's *Needs*, to Layer 7's Dependencies, to the "Left to other roadmaps" list, and as a new supplier block `From TauCetiRoadmap.PadicLocalLanglandsForGL2Qp`; the Scope sentence on §§7.1–7.2 now says the Fréchet–Stein and coadmissibility notions are not owned here. The board design LocallyAnalyticDistributionsPartII is later in the order and is not cited.

## REV-PKG-PadicFamiliesPartII/F04 (P3) — applied

Verified: P20 line 4903 ("λ₂ = 0 and 0 > λ₁"), line 4933 ("k = −λ₁ − 1"), lines 4988–4989 (Prop. 15.2.4.1 hypothesis "λ₁ > 0"), line 5001 (proof of Thm. 15.2.1 specializes at one large weight).

Old → new: the source-issue bullet "P20 §15.2.2 and proof of Theorem 15.2.1 (pp. 108–109)" is replaced by "P20 Proposition 15.2.4.1 (p. 109)": its hypothesis `λ₁ > 0` is read as `λ₁ < 0`, as §§15.2.1–15.2.3 set `λ₂ = 0`, `λ₁ < 0`, `k = −λ₁ − 1 ≥ 0`; the sentence on a witness in every component of `Spec Λ₁` (proof in §15.2.5) is kept. §3.5 and its third Check already use `λ = (−k−1, 0; c)` and are unchanged; the gap `gsp4-singular-balance` already cites Prop. 15.2.4.1.

## Checks

- `lake env lean …/packages/PadicFamiliesPartII/Suggested.lean` from the content checkout: exit 0, no output. The file declares nothing (every headline is unstatable at the pins, as its docstring says), so the `#check @name` scratch pass has no declaration to run on; stated explicitly. No `TauCeti.*` import, nothing built.
- Depcheck:

```
depcheck: 236 roadmaps, 2293 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line for PadicFamiliesPartII.
- `roadmaps resolve` after the edits: the only lead is "HigherHidaAndColemanTheory §§9.6: no roadmap on main or in an open pull request", which is the board design this package is built on (not a pull request), as in the review; all AutomorphicBundles and ShimuraCompactifications leads are gone. No Lean name found nowhere.
- No gate failures were listed in the brief.
- Ownership against open pull requests: nothing new was planned; the only new citation (PadicLocalLanglandsForGL2Qp §0.1) was read at its head #1312.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §6.4 identity `θ∘U_s = p^m U_t∘θ`, two eigenlines | `θe = f`, `U_s e = αe`, `U_t f = βf`; `v(α) = 0`, `m = 4` | identity: `β = p^{−4}α`, `v(β) = −4 < 0`, impossible on reflected `H⁰` (slopes ≥ 0), so `θe = 0`; reversed: `β = p^4 α`, `v(β) = 4`, `θe ≠ 0` allowed | holds; reversed form excludes nothing | Check 1 states both |
| §6.4 twist equivariance | `U'_J = p^m U` for `v ∈ J` | `U'_t θ = p^m U_t θ = θ U_s` iff `θ U_s = p^m U_t θ` | holds | statement now says "equivalently" |
| §6.4 slope exclusion | gap 3 (`m = 4`); gap 2 (`m = 3`); gap 0 (`m = 1`) | reflected `H¹` twisted `≥ 1`; `≥ 0`; `≥ −2`; reflected `H⁰` twisted `≥ 4, 3, 1`, all `> 0` | iso on `H¹` only at gap ≥ 3; iso on `H⁰` always | Check 2 |
| §6.4 derivative witness | `f(pz)`, `m = 2` | `(f(pz))'' = p² f''(pz)`; q-expansion `Uθf = Σ pn a_{pn}qⁿ = pθUf` | the two relations concern different maps | Check 3 names the coordinate |
| Source bullet P20 13.3.3.1 | twist `c` on reflected term | threshold `−3 + c = k − 2` iff `c = k + 1`; printed `c = −k − 1` gives `−k − 4` | printed direction fails the corollary | bullet rewritten |
| §7.1 Fréchet–Stein stages | `𝔤 = 0`; `𝔤 = E·x` | `U(𝔤)_r = E` for every r, limit E; `U(𝔤)_r` = power series with `|a_n| rⁿ → 0`, noetherian Banach, limit the entire functions of x | holds | none |
| §7.1 coadmissible, `H` a point vs `𝔤 = 0` | zero module; `E` | both coadmissible, stages `0`, `E` | agrees with PadicLocalLanglandsForGL2Qp §0.1's Check "for H a point, finite-dimensional" | none |
| Source bullet P20 15.2.4.1 | `k = 0`, `k = 5` | `λ₁ = −1`, `−6`, both `< 0`; `λ₁ > 0` would give `k = −λ₁ − 1 ≤ −2` | hypothesis sign is the slip | bullet relocated |
| F02 labels | B5.10, B5.14, C3.9 | `12.(10+1) = 12.11`, `12.(14+1) = 12.15` by the table; C3.9 by title = 4.10 (an inserted 4.2 shifts later items) | titles match | labels replaced |

## For the maintainer

- The review's F01 should be answered with the two-eigenline computation above: the printed relation in both sources, read with the usual composition order, makes the equivariant twist on the reflected term `p^{−m}` and kills no ordinary class; the corollaries and BCGP21's own twisting sentence need the opposite direction, which §6.4 states. The two sources agree with each other and both print that direction; the roadmap keeps a single source-issue bullet for the pair.
- The three ShimuraCompactifications gaps now carry `§7.20`, `§7.25`, `§4.3` both in the README contracts and in `design/plan.json`; the package's `sourceIssues` list in `design/plan.json` was not edited (outside the allowed field) and still carries the earlier wording of the P20 §15.2 bullet.
- No name another roadmap cites changed; `Suggested.lean` is unchanged.
