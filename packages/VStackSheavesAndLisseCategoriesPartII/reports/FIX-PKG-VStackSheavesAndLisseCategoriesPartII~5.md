# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~5

This round answers the review `REV-PKG-VStackSheavesAndLisseCategoriesPartII~4`. It has four findings: one P2 and three P3. I checked each against the cached legal sources (HKW22, Sch17), the package's own definitions and its earlier Checks. All four are correct, and all four are repaired.

- F01, F03 and F04 are applied as the review asks.
- F02 is applied with one change to the suggested repair. The review proposed Λ = F₃, which is not an allowed coefficient ring when p = 3; the Check uses Λ = F_ℓ with ℓ ≠ p instead.

Files touched:
- `packages/VStackSheavesAndLisseCategoriesPartII/README.md` only.

Files unchanged: `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json`. No supplier gap was added and no cited work was added.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~4/F01 (P2) — applied

**Verified.** VS10.10 lies in Layer VS10, where the conventions give nΛ = 0 for some n prime to p. So p is a unit in Λ and Haar(G, Λ) is free of rank one (VS10.5). Choosing a Haar measure μ gives the map Λ → Haar(G, Λ), a ↦ aμ. That map is an isomorphism exactly when μ is a generator, that is, a unit multiple of the measure normalised on a compact open pro-p subgroup.

The review's witness is right. Take G = 1, a point, p = 2, Λ = Z/9 and μ = 3·counting measure. The induced map Λ → Λ is a ↦ 3a, and both its image and its kernel are {0, 3, 6}. HKW22 lines 1315–1317 (Example 4.2.5, p. 27) only say "choose a Haar measure".

**Changed (VS10.10):**
- *Statement.* Old: "for G unimodular with a chosen Haar measure this is Dist(T, Λ)^G". New: if χ_G = 1 (for instance G unimodular) and μ generates Haar(G, Λ), then D ↦ (h ↦ D(h ⊗ μ)) is an isomorphism onto Dist(T, Λ)^G. A Haar measure that is nonzero but not a generator does not give an isomorphism in general.
- *Proof sketch.* New step 4 (untwisting).
- *Checks.* New negative control with Z/9.
- *Needs.* VS10.5 added.
- *Corrections to the sources.* New entry for HKW22 Example 4.2.5.

**Why χ_G = 1 instead of "unimodular".** It is the exact condition for the untwisting, and it is not narrower than the source's. It is needed: for the affine group over Q₂, Λ = F_5 and T a point, the twisted module is 0, because D(g·μ) = 2D(μ) = D(μ) forces D = 0. But Dist(T, Λ)^G = F_5.

**Pattern search.** I searched for every other choice of Haar measure in the README: the Conventions witnesses, the Z_p Check of VS6.2, VS10.3, VS10.5, the Layer VS10 Examples, VS11.3 and the VS11.4 Checks. Each one already uses the normalised measure, which is a generator, or the canonical choice-free pairing h ⊗ μ ↦ ∫ h dμ. None needed a change.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~4/F02 (P3) — applied differently

**Verified.** Take {0,1}^I with I uncountable. Countably many clopen sets depend on only countably many coordinates J. For i ∉ J, the point e_i lies in every one of them but not in {x_i = 0}. So the point 0 has no countable neighbourhood basis, and the old Check's sequence U_0 ⊋ U_1 ⊋ ⋯ need not exist for a general infinite profinite T.

**Changed (VS7.4 Checks).** The old bullet is split into two.

1. *Non-smoothness, now concrete.* T = Z₂ and Λ = F_ℓ (ℓ ≠ p). Take U_n = 2ⁿZ₂, x_n = 2ⁿ, y_n = 3·2ⁿ and W_n = 2ⁿ + 2^(n+2)Z₂.
   - The distribution ν is finite on every clopen set.
   - On U_n: δ₀ = 1 and ν = 0. On W_n: δ₀ = 0 and ν = 1. So the two germs are independent.
   - The bullet says the argument works at any non-isolated point with a countable clopen neighbourhood basis. It names {0,1}^I as the case where it does not apply as written.
2. *Split universal !-codescent.* This now holds for every nonempty profinite T. T = Z₂ serves as the control outside the smooth class.

**Why "differently".** The review suggested Λ = F₃. That ring is not allowed when p = 3, because the conventions require nΛ = 0 with n prime to p. The independence computation works over every nonzero Λ, so F_ℓ with ℓ ≠ p is used.

**Pattern search.** The Z_p Check of VS6.2 makes the analogous germ argument. Z_p is metrizable, and there the germs of δ₀ and of the normalised Haar measure are independent: on p^nZ_p the values are (1, p^(−n)), and on p^n + p^(n+1)Z_p they are (0, p^(−n−1)). No change was needed there.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~4/F03 (P3) — applied

**Verified.** Take the ball example with A′₁ = 0. Then (c′)^!(A′₁ ⊠ A′₂) = 0, and its tensor product with q^*K_(U/T′) is also 0. So positive dimension and Λ ≠ 0 do not by themselves make the two objects non-isomorphic.

**Changed (VS11.7, last Check).** Old: "is not isomorphic … when U → T′ has positive dimension and Λ ≠ 0". New: "need not be isomorphic …, as the following example shows". The constant example is kept, now stated with Λ ≠ 0: the two objects are Λ(2)[4] and Λ(1)[2], and their H^(−4) are Λ and 0. A new sentence gives the zero-sheaf case, where both objects are 0.

**Pattern search.** I searched VS11.5–VS11.8 and the whole README for "not isomorphic", "positive dimension" and "cannot be dropped". The only other hit is the VS11.5 Check, which is already scoped to A₁ = A₂ = Λ ≠ 0. No other change was needed.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII~4/F04 (P3) — applied

**Verified.** In the Sch17 text, the page-145 marker is at line 6049. Proposition 23.11 is stated at lines 6085–6087. The page-146 marker is at line 6096, inside the proof.

**Changed (VS6.11 source paragraph).** "Proposition 23.11, p. 146" becomes "Proposition 23.11, pp. 145–146".

**Pattern search.** I rechecked the other Sch17 locators in the README against the page markers. They are all correct:

| Sch17 result | Page | Sch17 line |
|---|---|---|
| Definition 10.7, Remark 10.8, Proposition 10.9 | 51 | 2109, 2118, 2129 |
| Definition 18.1 | 100 | 4118 |
| Proposition 18.3 | 101 | 4132 |
| Definition 12.12 | 72 | 2974 |
| Theorem 12.18, Remark 12.19 | 75 | 3091, 3094 |
| Proposition 22.3 | 127 | 5251 |
| Theorem 22.5 | 129 | 5349 |
| Proposition 18.7 | 104 | 4288 |
| Proposition 11.20 | 62 | 2562 |
| Definition 23.8 | 144 | 6035 |

## Checks run

**Lean elaboration.** I ran `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean` from the content checkout. It exited with code 0 and printed nothing (no errors, no warnings). The file is unchanged. It has zero declarations and a single `import Mathlib`, so no Tau Ceti module had to be built.

**Signature check.** The `#check @name` comparison has no inputs, because there are no declarations. No Lean name was added or removed, and the README and Lean file still agree.

**Dependency direction.** The prescribed `gate --depcheck` printed exactly:

```text
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

It printed no UPWARD, CYCLE or `moved:` line.

**Citation resolver.** `roadmaps resolve` on the README reported no cross-roadmap citation and no Lean name that it could not find. Its note: Lean names outside TauCetiRoadmap were not checked on this host.

**House style.** I grepped the README for machine paths and LaTeX delimiters and found none.

**Sources.** No new work is cited. HKW22 and Sch17 are already in the manifest as certified. Nothing was written to `needs-references.toml`.

**Ownership.** No object was added. The untwisting isomorphism belongs to VS10.10, which this roadmap already owns. The Haar-module facts it uses are this roadmap's VS10.5, built on SmoothRepresentationsOfLocalGroups §SR.1.1. No supplier edge changed.

## Adversarial pass on added and changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| VS10.10 untwisting with a generator, χ_G = 1 | G = 1, T = point, p = 2, Λ = Z/9; μ = μ₀, 2μ₀, 3μ₀, 0 | a ↦ a (bijective); a ↦ 2a (bijective, 2·5 = 1); a ↦ 3a (image = kernel = {0,3,6}); a ↦ 0 | Generator needed; added as a negative-control Check |
| VS10.10, hypothesis χ_G = 1 | Affine group over Q₂, Λ = F_5, T = point, χ_G(diag(2,1)) = 2 | Twisted side: Hom_G(Haar, Λ) = 0. Untwisted side: Dist(pt)^G = F_5 | Hypothesis is needed and is in the statement |
| VS10.10, χ_G = 1 without unimodularity | Affine group over Q₃, Λ = F_2 | χ_G(diag(3,1)) = 3 = 1 in F_2, so Haar is a trivial G-module and the untwisting holds | The wider hypothesis is correct |
| VS10.10, invariant side | G = Z/3 (p = 3), T = G by translation, Λ = F_2, μ₀ = counting measure | Both sides have dimension 1: the twisted side is spanned by D(h ⊗ μ₀) = Σ h; the invariant side by the sum of Dirac masses | Consistent |
| VS10.10, unit change | μ ↦ uμ | Isomorphism multiplied by u | Stated in proof step 4 |
| VS7.4, Z₂ non-smoothness | U_n, W_n, x_n, y_n as above; n = 0: W_0 = 1 + 4Z₂ | δ₀(U_n) = 1, ν(U_n) = 0; δ₀(W_n) = 0, ν(W_n) = 1. ν(W_0) = 1 (contains x_0 = 1, not y_0 = 3). ν(1 + 2Z₂) = 1 − 1 = 0. ν(Z₂) = 0 | Germs independent, stalk dimension ≥ 2 |
| VS7.4, W_n contains no other sample point | x_m, y_m for m ≠ n | 2^m − 2^n and 3·2^m − 2^n have valuation min(m, n) ≤ n < n + 2 | Correct |
| VS7.4, scope of the sequence argument | {0,1}^I, I uncountable, t₀ = 0 | No countable basis: e_i lies in every countable family's members, not in {x_i = 0} | Argument scoped to points with a countable basis |
| VS7.4, split codescent | T = ∅; T = point; T = Z₂ | ∅: D_ét(∅) = 0 ≠ D(Λ), so it fails and "nonempty" is needed. Point: f = id. Z₂: section at 0 | Hypothesis "nonempty" kept |
| VS11.7, twist Check | Ball; A′ = Λ ≠ 0; A′₁ = 0; Λ = 0 | Λ ≠ 0: Λ(2)[4] vs Λ(1)[2], H^(−4) = Λ vs 0. A′₁ = 0: 0 vs 0. Λ = 0: 0 vs 0 | Quantifier repaired |
| VS6.11, Sch17 locator | Page markers | Statement at lines 6085–6087 between markers 145 (line 6049) and 146 (line 6096) | pp. 145–146 |

## For the maintainer

- No Lean declaration, section number, target id or heading changed. No other roadmap's citation of this package is affected.
- *Corrections to the sources* gains one entry: HKW22 Example 4.2.5, p. 27. Untwisting needs a generating Haar measure, not just any Haar measure.
- Ownership against open pull requests was checked as before. This round added no object, so nothing new needed checking.
