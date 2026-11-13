# FIX-PKG-LocalGaloisDeformationRingsPartII~7

Review settled: `REV-PKG-LocalGaloisDeformationRingsPartII~6` (two findings). Only `packages/LocalGaloisDeformationRingsPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged: no new gap, no new source, no Lean name added or removed.

## F01 (P2) — applied differently

Verified. BHHMS23 fixes `σ′₀ : k′ → 𝔽` extending `σ₀` and defines `ω_{f′}` through it (`BHHMS23 lines 617–622`, §2.3, p. 14). It splits `W(k′) ⊗ R` along `σ′_{−j′}` (`BHHMS23 lines 808–813`). It assumes `E` sufficiently large (`BHHMS23 line 457`, §1.4, p. 10). The Conventions had no such hypothesis. The review's witness holds: at `p = 5`, `ω̃₂²` has order 12, but the prime-to-5 roots of unity in `ℚ_5` have order dividing 4.

Old → new:

- Conventions: "enlarged finitely where a statement says so" → also "`𝔽` contains `k₂ = 𝔽_{q²}` (equivalently `𝒪 ⊇ μ_{q²−1}`)".
- New `σ′₀ : k₂ → 𝔽` extending `σ₀`, with `σ′_{j′}` modulo `f′`.
- `ω_{f′}`: "followed by `σ₀`" → "followed by `σ′₀` restricted to `𝔽_{p^{f′}}`".
- 1.1: along `σ_{−j′}` → `σ′_{−j′}`.
- 3.7: the sentence now names `f′ ∈ {f, 2f}`.
- New Check in 0.1.

Why this differs from the suggested repair:

- **No reinterpreted index.** The review proposed reading an index `j′` modulo `f′` on `σ` as `σ′₀ ∘ Frob^{j′}`. The README instead introduces BHHMS23's notation `σ′_{j′}` and uses it in 1.1, so `σ_j` keeps a single meaning.
- **Artin-map sentence.** The Conventions also said that `ω_{f′}` composed with the Artin map of `K` restricts on `𝒪_K^×` to reduction. For `f′ = 2f` this is meaningless: `ω_{2f}` does not factor through `G_K^ab`, since Frobenius conjugates it to `ω_{2f}^q ≠ ω_{2f}` (its order is `q² − 1 > q − 1`). The sentence now uses the Artin map of `K′`, whose inertia group is `I_K`, restricted to `𝒪_{K′}^×`. This is BHHMS23's definition (`BHHMS23 lines 619–622`), and at `f′ = f` it is the old sentence.
- **Boundary Check in 0.1.** The witness is added as a Check: `p = 5`, `s = w`, `μ = (1,0)`. The orders are `24/gcd(2,24) = 24/gcd(10,24) = 12`, against prime-to-5 orders dividing 4 in `ℚ_5`. Over `ℚ_5`, `W(𝔽_{25}) ⊗ ℤ_5` is a domain; over `W(𝔽_{25})[1/5]` it is `𝒪 × 𝒪`.

Pattern search:

- Every "Conventions" reference was checked: 0.4 (normalized form), 3.3 (star operation, Kummer tower), 3.7 and 3.10 (`K`). Only 3.7 attributed something the Conventions lacked.
- Every niveau in the README divides `2f`: 1, 2 (at `f = 1`), `f`, `f′ ∈ {f, 2f}` and `2f`. So the restriction of `σ′₀` covers all of them.
- `σ_{−j′}` occurred only in 1.1. The Check of 1.1 has `f = f′`, where `σ′ = σ`, so it is unchanged.
- No example takes `E = ℚ_p` or `𝒪 = ℤ_p` apart from the new Check, which does so as the negative control.

## F02 (P2) — applied differently

Verified.

- BHHMS23 defines `R^(j)_poly` as a polynomial ring in the formal variable of the starred coordinate (`BHHMS23 lines 1435–1443`), so `e₁₁*` is not a unit there.
- Lemma 4.2.3 (`BHHMS23 lines 1478–1495`) proves chart 2 and calls the outer charts "similar".
- In chart 1 with `X = c₁₂/e₁₁*` and `Y = d₂₁/d₂₂*`, `G₅ = e₁₁*X(cXY − 2p)`. At `e₁₁* = X = d₁₁ = c₁₁ = c₂₁ = c₂₂ = 0`, every `G_i` and every minor vanishes (computed: maximal `|minor|` is 0).
- The review's 5.5 counterexample is confirmed (table below).

Old → new:

- 5.4: "`p³ ∈ I^poly_j + J₅`" → stated in `B_j`, the polynomial ring of 5.2 with `e₁₁*` (chart 1) or `e₂₂*` (chart 3) inverted and nothing inverted in chart 2. The proof is written out for each chart.
- 5.5: "lies in the residual chart" → "the coordinate inverted in 5.4 is a unit of `A`".
- 5.2: one clause added.
- 5.4 gains two Checks and 5.5 gains one.

Why this differs from the suggested repair:

- **Only one coordinate is inverted.** The review inverted both starred coordinates in 5.4 and required both to be units in 5.5. That is true but weaker than needed. In the polynomial parameters, `G₁, …, G₄` and the chart 2 system have no starred denominators, which was checked against the formulas of 5.2 at 200 random rational points with 0 mismatches. Only the factor `e₁₁*` (chart 1) or `e₂₂*` (chart 3) of `G₅` must be inverted. The stated form is therefore the stronger true one, and it still covers `A = R/I∞`.
- **`A = 𝒪` instead of `A = ℤ_p`.** The review's 5.5 Check used `A = ℤ_p`. Under F01, `𝒪 ⊇ W(k₂) ≠ ℤ_p`, so `ℤ_p` is never an `𝒪`-algebra. The Check uses `A = 𝒪` with `p`-adic valuations instead.
- **The proof is written out.** 5.4 now gives the unitriangular `4 × 4` block that reduces each minor to `±∂G₅/∂ξ`, the chart 1 identity `pH_X + cY(XH_X − 2YH_Y) = −2p²`, and its chart 3 mirror. Previously it said only "value and derivatives give `p²`".
- **The 5.5 route evaluates the identity.** It now evaluates the identity at `a`, which the unit hypothesis allows. It then uses `1 + pA ⊆ A^×` to get `p³ ∈ J₅(a)`, and notes that the Newton corrections, which lie in `pA`, keep the inverted coordinate a unit.

Pattern search for a "unit" that is not one in its ring:

- 5.2: denominators are units in `R_j`.
- 7.1, 7.4, 7.5: work in `S_j` and `S`, where `d₁₂*` and `d₂₁*` are units.
- 5.8, 6.3: work in `R_j`.

No other statement evaluates a chart identity at a point of an arbitrary ring.

## Checks

- **Elaboration.** `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean`, run from the content checkout, gave one message: `47:8: warning: declaration uses 'sorry'`. There is no `TauCeti.*` import, so no module build was needed.
- **Binder check.** A scratch copy with `#check @crossing_prime` elaborated to `∀ {O} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ : O}, Irreducible ϖ → ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`. This has the generality of README 5.3, which neither finding touches. Nothing was lost and nothing changed.
- **Dependency check** (the brief's command): `depcheck: 207 roadmaps, 1902 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name that is found nowhere. No cross-roadmap citation was added.
  - The changed `ω_{f′}` wording was re-read against `PadicLocalLanglandsForGL2Qp` §0.3 at its open head. There the characters take values in `𝔽_{p^f}^×` at every niveau and keep the residue embedding, which matches "followed by an embedding of `𝔽_{p^{f′}}` into `𝔽`".
- **Gaps.** The `design/plan.json` gaps and the README "must provide" lines were not edited: the 9 slugs are unchanged.
- **Style.** The added lines contain no LaTeX delimiters, process words or machine paths.
- **Sources.** The new locators BHHMS23 §1.4 (p. 10) and §2.3 (p. 14) were read at `BHHMS23 lines 453–465, 612–622`. BHHMS23 Lemma 4.2.3 is already in the manifest locator. `sources.toml` needs no change.

## Adversarial pass (changed and new statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: `𝔽 ⊇ k₂` | `f = 1`, `p = 5`, `s = w`, `μ = (1,0)`; `E = ℚ_5` vs `W(𝔽_{25})[1/5]` | `ω̃₂²`, `ω̃₂^{10}` of order 12; prime-to-5 roots of unity in `ℚ_5` of order dividing 4; `W(𝔽_{25}) ⊗ ℤ_5` a domain, `W(𝔽_{25}) ⊗ 𝒪 ≅ 𝒪 × 𝒪` | needed; stated | added, Check in 0.1 |
| `𝔽 ⊇ 𝔽_{q²}` ⟺ `μ_{q²−1} ⊆ 𝒪` | Hensel on `X^{q²−1} − 1`, separable mod `p` | roots lift; prime-to-`p` roots of unity reduce injectively | equivalent | none |
| `σ′_{j′}` restricts to `σ_{j′}` | `r = 1`; `r = 2`, `f = 1` | `r = 1`: equal; `f = 1`: `σ′₀, σ′₁` on `𝔽_{p²}`, both restrict to the identity of `𝔽_p`, `σ′₂ = σ′₀` | holds | added |
| Artin sentence for `ω_{f′}` | `f′ = 2f`; `f′ = f` | `ω_{2f}^q ≠ ω_{2f}` (order `q² − 1`), so no factorization through `G_K^ab`; at `f′ = f`, `K′ = K` and the old sentence | old wording meaningless at `f′ = 2f` | restated with `Art_{K′}` |
| 1.1 decomposition | `f = 1`, `r = 2`, `R = 𝒪 ⊇ W(𝔽_{p²})` | `x ⊗ b ↦ (σ′₀(x)b, σ′₁(x)b)`, since `−1 ≡ 1` mod 2 | splits | `σ′_{−j′}` |
| 3.7 sentence | `f′ ∈ {f, 2f}` | values in `𝔽_{p^{f′}}^× ⊆ k₂^× ↪ 𝔽` | true | wording |
| 5.4, chart 1, no inversion | `e₁₁* = X = d₁₁ = c₁₁ = c₂₁ = c₂₂ = 0`, `Y = 7/3`, `d₂₂* = 2`, `p = 3`, `a₁ = 5` | all `G_i = 0`; maximum `|minor|` over the 56 `5 × 5` minors `= 0` | false in the polynomial ring | restated in `B_j`; Check |
| 5.4, chart 1, `e₁₁*` inverted | 500 random rational `(p, c, X, Y)` | `pH_X + cY(XH_X − 2YH_Y) = −2p²` exactly; minor on `(d₁₁, c₂₂, c₂₁, c₁₁, ξ)` equals `±∂G₅/∂ξ` for `ξ ∈ {e₁₁*, X, Y, d₂₂*}` | holds | proof written |
| 5.4 Check witness | `X = Y = 1`, `c = 2`, `p = 3` | `H_X = −2`, `H_Y = 2`, total `−6 − 12 = −18 = −2·9` | holds | Check |
| 5.4, chart 3, `e₂₂*` inverted | 300 random rational points | `G₅ = e₂₂*Y(a₃(a₃+1)XY − 2p)`; `pH_Y + cX(YH_Y − 2XH_X) = −2p²` | holds | proof written |
| 5.4, chart 2 | 500 random rational `(x, y, p, κ)`; `x = y = 0`, `p = 3`, `κ = −1` | identity equals `p³(κ−1)²` exactly; value `108` | holds with no inversion | none |
| 5.4, `p = 2` (outside normalized data) | outer charts | `−2p² = −8 = −p³`: `p³ ∈ J₅` still, `p²` not shown | the `p²` claim uses `p` odd, as stated | none |
| 5.5 without the unit | `A = 𝒪`, `p = 29`, `a₁ ∈ {5, −12, 15}`, `e₁₁* = X = p³`, `Y = 1` | `v(G₅(a)) = 7`; over 2000 random `a° ≡ a` mod `p⁴`, minimum and maximum `v(G₅(a°))` both `7` | false without it | hypothesis; Check |
| 5.5, application `A = R/I∞` | `e₁₁* = [ē₁₁] + x` with `ē₁₁ ≠ 0` | unit in `R_j`, image a unit | hypothesis met | sentence added |
| 5.5, chart 2 | identity polynomial in `𝒪[parameters]` | evaluable at every `a ∈ A⁸` | no condition needed | stated |
| 5.5, `A = 0` | zero ring | every element a unit, `G(a) = 0`, take `a° = a` | holds | none |
| 5.5, Newton step | `a′ = a − M G(a)/p³`, `J(a)M = p³I₅` | error in `p^{2(n−3)}`; `J₅(a′) ≡ J₅(a)` mod `p^{n−3}` with `n − 3 ≥ 4 > 3`; inverted coordinate changes by `pA` | iteration well defined | route |
| `crossing_prime` (unchanged) | elaborated type | as in Checks | same generality as 5.3 | none |

The computations use exact rational arithmetic (Python `fractions`); the scripts are not part of the package.

## Ownership

No new construction. The coefficient hypothesis is a convention of this roadmap, and `B_j` is a localization of a polynomial ring already defined in 5.2. Nothing was searched or reassigned, and no supplier moved.

## For the maintainer

- The standing hypothesis `𝔽 ⊇ 𝔽_{q²}` now holds throughout. A consumer that instantiates this roadmap with `E` whose residue field lacks `𝔽_{q²}` must first extend coefficients. Framed deformation rings commute with that base change.
  - The only consumer, `HilbertModularVarietiesAndShimuraCurvesPartII`, works with `E` sufficiently large, as BHHMS23 does.
- 5.4 and 5.5 now carry the unit hypothesis that BHHMS23 Lemma 4.2.3 omits for the outer tables. This matches the reviewer's source-issue note.
- No section, layer or Lean name changed. No id cited by another roadmap moved.
- The review contained no instructions addressed to the worker. Its "Source issues" items are for the human reviewers, and nothing was changed because of them.
