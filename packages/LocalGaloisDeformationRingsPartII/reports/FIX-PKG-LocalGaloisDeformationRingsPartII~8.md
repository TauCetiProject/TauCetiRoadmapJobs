# FIX-PKG-LocalGaloisDeformationRingsPartII~8

Review settled: `REV-PKG-LocalGaloisDeformationRingsPartII~7` (four findings). Changed files:

- `packages/LocalGaloisDeformationRingsPartII/README.md`.
- `packages/LocalGaloisDeformationRingsPartII/design/plan.json`: only the `needs` of the gap `tame-types-unramified`, which again equals the README sentence word for word.

`Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged. No Lean name was added or removed, no gap was added, and no source was added.

## F01 (P2) — applied

Verified. BHHMS23 writes the type and its Deligne–Lusztig representation with the same second argument: `σ(τ(sw^{−1}, μ − sw^{−1}ν)) ≅ R_{sw^{−1}}(μ − sw^{−1}ν)` (`BHHMS23 line 733`, proof of Proposition 2.4.3, p. 16, citing `LLHL19 lines 549–550`, Corollary 2.3.5, p. 15). So for `τ ≅ τ(s, μ+η)` the label is `R_s(μ+η)`. The old `R_s(μ)` also disagreed with gap:deligne-lusztig-reduction, which reduces `R_{sw^{−1}}(μ − sw^{−1}ν)`.

Old → new:

- The gap (README "Exact supplier contracts", and `design/plan.json`): `R_s(μ)` → `R_s(μ+η)`, with locator "(BHHMS23, proof of Proposition 2.4.3, p. 16)".
- The route of 0.5 now names the label `R_{sw^{−1}}(μ − sw^{−1}ν)` and the 1-deep presentation `(sw^{−1}, μ − sw^{−1}ν − η)` it is applied to.
- New first Check of 0.5, at `f = 1`, `p = 7` (the review's witness).

## F02 (P2) — applied

Verified, at three places.

- 4.3 quantifies over every tame inertial type (BHHMS23 Lemma 4.1.2, `BHHMS23 lines 1226–1231`), and so does 7.2.
- The gap gave `σ(τ)` only for 1-deep `τ`, and `PadicLocalLanglandsForGL2Qp` §4.4 covers only `GL₂(ℤ_p)` and supercuspidal classes. The witness `f = 2`, `τ = 1 ⊕ 1` has no supplier.
- The converse in the proof of Lemma 4.1.2 treats `σ(τ) ⊗ χ` as an irreducible `E[GL₂(k)]`-constituent of `P̃_σ[1/p]` (`BHHMS23 lines 1268–1271`), so `σ(τ)` must be inflated from `GL₂(k)`.

The second Check of 0.5 also contradicted the source. For scalar `τ = χ ⊕ χ`, BHHMS23 takes `σ(τ) = χ ∘ det` (`BHHMS23 lines 593–596`, §2.2, p. 13). That is the `σ^cr(τ)` of `PadicLocalLanglandsForGL2Qp` §4.4, which also has a Steinberg-twisted `σ(τ)`.

Old → new:

- The gap now covers every rank-two tame `τ` (equivalently `τ(s,μ+η)`). It uses BHHMS23's normalization (`χ ∘ det` for scalar types). It states the `σ^cr` occurrence property explicitly (inertial restriction `τ` and `N = 0`), inflation from an irreducible `GL₂(𝔽_q)`-representation, the twist rule and `σ̄(τ)`. The `R_s(μ+η)` identification is kept for 1-deep `μ` only.
- The second Check of 0.5 now uses `σ^cr = χ ∘ det` and records its weight `F(0,0)` for `f = 2`.

Where this differs from the suggested text:

- The review's "with its occurrence property" is ambiguous for scalar `τ`, because §4.4 has two occurrence properties. The gap now states the `σ^cr` property.
- The review's "not in `W(ρ̄)`" now names the normalized data of Layer 4 and its bound. Every weight of `W(ρ̄)` has every root coordinate at least `11`.

Pattern repaired elsewhere:

- Scope, line 15 (crystalline normalization), and contract §4.4 ("the `σ(τ)` of this roadmap is the `σ^cr(τ)` of §4.4").
- 4.3: the route names the inflation property, and *Needs* adds `PadicLocalLanglandsForGL2Qp` §4.4.
- 7.2: *Needs* adds §4.4 with gap:tame-types-unramified, because its statement uses `σ̄(τ)` for every tame `τ`.
- Dependencies of Layers 4 and 7.

Ownership: `GL2AutomorphicRepresentationsAndTransfer` (README line 68, open head) defers the `GL₂(O_F)`-types to `PadicLocalLanglandsForGL2Qp` §4.4. `roadmaps grep` finds no other roadmap stating `σ(τ)` for `GL₂(𝒪_K)`, on main or at the open heads. The supplier stays `PadicLocalLanglandsForGL2Qp` §4.4.

## F03 (P3) — applied

Verified by computation. Adding `(b_j,b_j)` to `μ_j` multiplies `τ` by `ω̃_f^{Σ b_j p^j}` (0.1; at `r = 2` the exponent is `(1+q)Σ b_j p^j` and `ω̃_{2f}^{1+q} = ω̃_f`). By (14) of BHHMS23 (`BHHMS23 lines 705–708`) it shifts each `t_{μ−η}(ω)_j` by `(b_j,b_j)`. So `F(λ)` is tensored with `∏_j (σ_j ∘ det)^{b_j} = (σ₀ ∘ det)^{Σ b_j p^j}`.

Old → new: the third Check of 0.5 said "`(N_{k/𝔽_p} ∘ det)^c`". It now says "`(σ₀ ∘ det)^c`", with the derivation and the norm twist as the case `b_j = 1`. At `f = 2`, `c = 1` the two differ, since `(σ₀ ∘ det)^p ≠ 1` (order `p² − 1`).

Pattern search: `N_{k/𝔽_p} ∘ det` also occurs in the Conventions (line 35), 4.3 (statement, route and Check), 5.6 and 7.2. Each of these is the twist of BHHMS23 (20), which adds `(1,1)` at every `j` (`BHHMS23 line 1232`). That is the `b_j = 1` case, so they are correct and unchanged. No other place identifies an `ω̃_f`-twist with a norm twist.

## F04 (P3) — applied

Verified. Neither sentence named reproducible points.

Old → new:

- 5.4: "verified exactly at 2000 random rational points" → the exact coefficient expansion in `s = xy` after multiplication by `κ`. The coefficients are `0, 0, 0` and the constant term is `κp³(κ−1)²`.
- 5.5: the sentence "At `p = 29`, 2000 random such `a°` …" is deleted.

Additional repair in the same Check of 5.5. Its argument, once the trial sentence was gone, had a gap. It said "every `a° ≡ a` modulo `p⁴` has `X` of valuation `3`". That is false: `X = c₁₂/e₁₁*` is not a parameter, and `c₁₂° = p⁶ + p⁴` gives `X°` of valuation `1`.

The conclusion is still true, through `G₂`. Suppose `G(a°) = 0`.

- Then `c₂₂° = (a₁−1)X°Y°d₂₂*°`, while `c₂₂° ≡ (a₁−1)p³` modulo `p⁴`.
- `a₁ − 1 ≡ ∓(r_j+1)` is a unit, so `v(X°) = 3`.
- Then `v(G₅(a°)) = 3 + 3 + 1 = 7`, a contradiction.

The Check now gives this argument, together with the counterexample to the old shortcut. No other Check reports random or unnamed trials: a search for "random", "verified", "trial" and "sampled" finds none.

## Checks run

**Elaboration.** `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean` from the content checkout gave exactly one message:

```text
Suggested.lean:47:8: warning: declaration uses `sorry`
```

**Binder check.** A scratch file with `#check @crossing_prime`, elaborated once, gave:

```text
@crossing_prime : ∀ {O : Type u_1} [inst : CommRing O] [inst_1 : IsDomain O] [inst_2 : IsDiscreteValuationRing O]
  [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ : O},
  Irreducible ϖ →
    ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)
```

This is the generality of 5.3. Nothing was lost, and the file is unchanged.

**Dependency check** (the brief's command):

```text
depcheck: 223 roadmaps, 1977 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

**Citations.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name missing (main 45f58db and 449 open heads, index of 2026-11-13T13:53:07Z).

**Gaps.** A script compared `design/plan.json` with the README: 9 slugs, each `needs` equal to its README sentence word for word.

**Style.** The README has no LaTeX delimiter, machine path or pull-request number.

## Adversarial pass (values computed this round)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| gap label `R_s(μ+η)` | `f = 1`, `p = 7`, `s = 1`, `μ = (1,0)` | `τ = ω̃² ⊕ 1`; centre acts on `R_1((2,0))` by `ã²`, on `R_1((1,0))` by `ã`; `ã` of order 6 | new label right, old wrong | F01 |
| gap label in 0.5 composition | presentation `(sw^{−1}, μ − sw^{−1}ν − η)` | `R_{sw^{−1}}((μ − sw^{−1}ν − η) + η) = R_{sw^{−1}}(μ − sw^{−1}ν)`, the label of gap:deligne-lusztig-reduction | agree | F01 |
| gap domain "every rank-two tame `τ` is `τ(s,μ+η)`" | `ω̃_f^{a₁} ⊕ ω̃_f^{a₂}`; `θ ⊕ θ^q`, `θ = ω̃_{2f}^a` | `s = 1`, `μ₀ = (a₁−1, a₂)`, `μ_j = −η` otherwise: `a′^(0) = (a₁,a₂)`; `s₀ = w`, `μ₀ + η = (a,0)`, `μ_j = −η` otherwise: `a′^(0) = (a, qa)` | holds (Frobenius fixes or swaps the two characters) | none |
| gap: inflated irreducible | principal series `χ₁ ≠ χ₂`; cuspidal; scalar | `Ind_{Iw}^{GL₂(𝒪_K)}(χ₁ ⊗ χ₂)` = inflation of `Ind_B^{GL₂(k)}`, irreducible of dim `q+1`; `κ(θ)` dim `q−1`; `χ ∘ det` dim 1 | holds for every tame `τ` | F02 |
| gap: `σ^cr` occurrence | scalar `χ ⊕ χ`: principal series vs `χ · St` | `Ind(χ₁ ⊗ χ₂)|_K ⊇ χ ∘ det`; `St|_K = Ind_{B(𝒪)}^K 1 / 1` has trivial multiplicity `1 − 1 = 0` | "`τ` and `N = 0`" is right; for non-scalar `τ`, `N = 0` is automatic | F02 |
| 0.5 scalar Check | `f = 2`, `τ = 1 ⊕ 1`; normalized `W(ρ̄)` | `σ̄(τ) = F(0,0)`, coordinate 0; Steinberg alternative dim `q`, coordinate `p−1`; weights of `W(ρ̄)` have coordinates in `{r−1, r, r+1, p−3−r, p−2−r, p−1−r}` with `12 ≤ r ≤ p−14`, so between 11 and `p−13` | intersection of 4.3 empty, as 4.3 asserts | F02 |
| 0.5 label Check | `f = 1`, `p = 7`, `μ = (3,0)`, `ν = η`, `s = w = 1` | `μ − ν − η = (1,0)`, coordinate `2 ∈ (1,6)`; `t_{(2,0)}(0) = (2,0)`, `t_{(2,0)}(−1) = (0,−4)` by (14); dims `3 + 5 = 8 = p+1`; central characters `a²`, `a^{−4} = a²` (mod 6) | consistent with `R_1((2,0))` | new Check |
| 0.5 twist Check | `f = 2`, `c = 1`; `f = 1` | `(σ₀∘det)` against `(σ₀∘det)^{1+p}`: ratio `(σ₀∘det)^p`, order `(p²−1)/gcd(p, p²−1) = p²−1 ≠ 1`; at `f = 1`, `N ∘ det = det` and both agree | old false for `f ≥ 2`, new holds | F03 |
| norm twist = Teichmüller of `ω` | `b_j = 1` | `ω̃_f^{(q−1)/(p−1)} = ω̃₁ = [ω|_{I_K}]` (`e_K = 1`) | holds | none |
| 5.4 identity | coefficients in `s = xy` | `s³`: `2(κ+1) − 2(κ+1) = 0`; `s²`: `p(2(κ+1)² + (κ−1)² − (κ+1)² − 2(κ²+1)) = 0`; `s`: `p²(κ+1)(2κ + (κ−1)² − (κ²+1)) = 0`; constant `κp³(κ−1)²`; at `x = y = 0`, `p = 3`, `κ = −1`: `108` | holds | F04 |
| 5.5 unit Check | `c₁₂° = p⁶ + p⁴`, `e₁₁*° = p³` | `v(X°) = 4 − 3 = 1` | old shortcut false | F04 |
| 5.5 unit Check, repaired | `G(a°) = 0`, `a° ≡ a` mod `p⁴` | `v(c₂₂°) = 3`, so `v(X°) = 3`; `v(cX°Y° − 2p) = 1`; `v(G₅) = 7 ≠ ∞` | conclusion holds | F04 |
| 4.3 route, inflation | BHHMS23 `lines 1268–1271` | `P̃_σ[1/p]` has length `2^f` as an `E[GL₂(k)]`-module; `σ(τ)` must factor through `GL₂(k)` | stated now | F02 |

## For the maintainer

- `PadicLocalLanglandsForGL2Qp` is asked for more by gap:tame-types-unramified. It must supply `σ(τ)` for every tame type over unramified `K`, which includes principal series and scalar types (the `σ^cr` normalization). Its §4.4 states these only for `GL₂(ℤ_p)` and for supercuspidal classes.
- No name that another roadmap cites changed. No section of this README was renumbered.
- Sources: no new work was cited. BHHMS23 §2.2 (p. 13) and the proof of Proposition 2.4.3 (p. 16) were already in the manifest entry or its locators. LLHL19 Corollary 2.3.5 is quoted only in this report.
- Ownership against open pull requests was checked with `roadmaps grep` and `roadmaps show` at the heads of the index of 2026-11-13T13:53:07Z.
