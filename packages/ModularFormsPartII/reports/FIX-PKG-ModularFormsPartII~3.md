# FIX-PKG-ModularFormsPartII~3

This round repairs the findings of `REV-PKG-ModularFormsPartII~2`: six findings, one P1, three P2 and two P3. All six were verified against CDT25 and the roadmap's own definitions, and all six are applied.

Files changed:

- `packages/ModularFormsPartII/README.md`
- `packages/ModularFormsPartII/design/plan.json`: only the `needs` of the gap `udc-all-prime-cuspidal-model-of-full-level`.
- `packages/ModularFormsPartII/Suggested.lean`: one docstring phrase. No declaration changed.

`metadata.toml` and `sources.toml` are untouched. No new source was needed, and no `needs-references.toml` was written.

## REV-PKG-ModularFormsPartII~2/R01 (P1) — applied

The claim in §7.14 that the monodromy is "unipotent and nontrivial at every cusp" (README:787) is replaced. Put `G = Γ′ ∩ Γ(2)`. At a cusp `g∞` with signed width w and a sign `ε` such that `εgT^w g⁻¹ ∈ G`, the local monodromy is conjugate to `ε^k Sym^k(T^w)`. It has infinite order and is quasi-unipotent, and its square is nontrivial unipotent. It is unipotent exactly when `ε^k = 1`. The last proof-sketch sentence is corrected the same way, and the `H′` cusp-1 negative control is added to the Layer 7 Examples (README:796).

The finding is right. CDT25 lines 3650–3653 assert only order `k + 1` and commensurability with `Sym^k SL₂(ℤ)`. Recomputed: `−gT²g⁻¹ = [[1, −2], [2, −3]]` generates the stabilizer of cusp 1 in `H′`, since the elements of the form `±gTⁿg⁻¹` lying in `H′` are exactly `+` with `n ≡ 0 (mod 4)` and `−` with `n ≡ 2 (mod 4)`. On `(h, τh)` it acts by `B = [[−3, −2], [2, 1]]`, with trace `−2`, determinant 1 and `(B + I)² = 0`. Then `B² = [[5, 4], [−4, −3]]` and `(B² − I)² = 0`. In x this is the point `∞`, where the exponents are `1/2, 1/2`. For `k = 2, 3` and `ε = −1` the diagonal is `(1, 1, 1)` and `(−1, −1, −1, −1)` respectively, and the square is unipotent and not the identity in both cases.

Pattern search: the example in §2.6 and the Δ example in Layer 7 (`k = 12`, so `ε^k = 1`) remain correct. No other "unipotent at every cusp" claim remains.

## REV-PKG-ModularFormsPartII~2/R02 (P3) — applied

In the §7.8 sketch, `Wr(y, w₁, …, w_m)/Wr(w₁, …, w_m)` → `Wr(w₁, …, w_m, y)/Wr(w₁, …, w_m)`. The sketch now defines `Wr(f₁, …, f_r) = det(f_j^(i−1))`, sets the empty Wronskian to 1, and notes that expanding along the last column gives leading coefficient 1. A Check is added to the Layer 7 Examples (README:799).

Recomputed with exact polynomials, testing on `y = x^m`:

| `W` | `Wr(W, x^m)/Wr(W)` | Reversed order |
|---|---|---|
| `span{1}` | `1 = 1!` | `−1` |
| `span{1, x}` | `2 = 2!` | `+2`, matching the sign `(−1)^m` |
| `0` | identity operator | — |

The Wronskian in §7.14 is used only up to a nonzero constant, so it needs no change.

## REV-PKG-ModularFormsPartII~2/R03 (P3) — applied

In the §5.1 sketch, "identify `ℂM₂m` with the function field of `X(m)`" → "for `m ≥ 2`, … at the full level `2m ≥ 4`, … of `X(2m)`; for `m = 1`, `ℂM₂ = ℂ(λ)` is the function field of `X(2)` by §§2.2–2.3". §§2.2 and 2.3 are added to the Needs line, and the `N = 2` example of Layer 5 now records the degree of `X(4) → X(2)`.

Degrees checked against the formula of §5.4:

| m | `[ℂM₂m : ℂ(λ)]` |
|---|---|
| 1 | 1 |
| 2 | 4 |
| 3 | 12 |

Under the old reading, m = 2 would give degree 1. §5.4 already said `X(2N)`. The twisted-cusp gap requires level at least 3, which the full level `2m ≥ 4` satisfies.

## REV-PKG-ModularFormsPartII~2/R04 (P2) — applied

§9.1 changes from "a regular proper model" to "the minimal regular model `𝒳(N)`", as in CDT25 lines 4118–4121:

- For `N ≥ 6` (genus at least 1) the model is unique.
- For `N ≤ 5`, `X(N)_K ≅ ℙ¹_K`, minimal models are not unique, and the model is any smooth proper model.

The gap `udc-all-prime-cuspidal-model-of-full-level` is changed identically in README:83 and in the plan's `gaps`. Its clause "compatibility with finite extensions of K" is dropped, because minimal regular models do not commute with ramified base change and no target uses that clause. The cusp blow-up is added as a negative-control Check, and the Layer 9 introduction and one existing Check now say "minimal".

Genera recomputed for N = 3, 4, 5, 6, 7: 0, 0, 0, 1, 3. In the blow-up, `F·E = F·C = 0` and `C·E = 1` give `E² = C² = −1`. Because ε is transverse to the fibre, it meets E away from C, so the kept component is `𝔸¹`. The source does not restrict the prime: every prime is retained.

## REV-PKG-ModularFormsPartII~2/R05 (P2) — applied

In the §3.4 sketch, H is replaced by `H₂ = H ∩ Γ(2)`:

- `−I ∈ H₂` and H₂ has finite index.
- f is still invariant under H₂.
- §1.5 gives `L(H₂) = lcm(L(H), 2)`, which divides `2N`.

§2.2 is then applied to `H₂`, and §1.5 is added to the Needs line. A Layer 3 example is added: f = j and H = `SL₂(ℤ)`, with `λ(Ti) = −1 ≠ 1/2 = λ(i)`, and `j = 256(1 − λ + λ²)³/(λ²(1 − λ)²)`. That formula was checked against `q⁻² + 744 + 196884q² + 21493760q⁴` up to `q⁴`.

Pattern: the §7.6 API bullet about covers `Y(H) → Y(2)` now requires `H ≤ Γ(2)` containing `−I`. §§3.7, 5.1, 7.2 and 7.14 already intersect with `Γ(2)`. CDT25 lines 1433–1434 confirm that the source uses a curve with a map to `Y(2)`.

## REV-PKG-ModularFormsPartII~2/R06 (P2) — applied

In §2.5 the old sentence "leaves possible singularities only at `16^(−1/N)μ_N` and `∞`" is replaced by the inverse-image statement: the preimage of `{0, 1/16, ∞}` under `u ↦ u^N` is `{0} ∪ 16^(−1/N)μ_N ∪ {∞}`. A sentence now says that removing `u = 0` needs the signed-width hypothesis of §3.4, and the §3.4 sketch already does this, as in CDT25 lines 1441–1446. The proof sketch and the Layer 2 Examples add the logarithmic `K₀` negative control: `U^N = I + NB`, recomputed as `[[1, N], [0, 1]]` for N = 1, 2, 3.

Pattern: §7.1 removes `u = 0` by its finite-monodromy hypothesis, and §3.4 states `U_N` correctly. Neither needed a change.

## Checks

- **Elaboration.** `lake env lean packages/ModularFormsPartII/Suggested.lean`, run from the content checkout, exits 0. There are exactly six warnings, all `declaration uses sorry`, at lines 71, 85, 104, 116, 147 and 162. These are the earlier lines shifted by one by the docstring edit. There is no TauCeti import to build.
- **Signatures.** A scratch file ran `#check @name` on all nine declarations. Each elaborated type was compared with its README statement. All nine are unchanged and none has lost a binder. No finding touched a Lean statement.
- **Dependency check.** Output: `depcheck: 236 roadmaps, 2142 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line. The pre-repair README gives the same 2142 edges, so the change from the reviewer's 2141 comes from the board state, not from this edit.
- **Package gate (scratch copy).** All content checks are 0. The two failures are artifacts of the scratch copy:
  - `stray-files`: `sources.toml` was copied into the scratch roadmap folder.
  - `git`: the scratch copy is not a repository.

## Adversarial pass on the changed statements

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| §7.14 cusp monodromy | `θ₃²`, H′, cusp 1; cusp ∞; k = 1, 2, 3 with ε = −1 | B: trace −2, det 1, `(B+I)² = 0`; `B²` unipotent and ≠ I. At ∞, `T² ∈ H′`. Diagonals ±1 follow `ε^k` | Corrected statement holds; old one false |
| §7.8 monic quotient | W = 0, span{1}, span{1, x} | 1, 1!, 2!; reversed order −1 at m = 1 | Monic |
| §5.1 curve index | m = 1, 2, 3 | Degrees 1, 4, 12 against the old reading's 1 at m = 2 | `X(2m)` |
| §9.1 model | N = 1 smooth; cusp blow-up; genera for N = 3–7 | `E² = C² = −1`; kept component `𝔸¹`; genera 0, 0, 0, 1, 3 | Minimality needed; split by genus correct |
| §3.4 subgroup `H₂` | Pairs (L(H), N) = (1, 1), (3, 3), (2, 1), (1, 2), (4, 2) | `lcm(L(H), 2)` = 2, 6, 2, 2, 4, each dividing 2N; λ(Ti) = −1 | Holds |
| §2.5 preimage | `K₀` log solution, N = 1, 2, 3 | `U^N = [[1, N], [0, 1]] ≠ I` | 0 is not removed by substitution |

## For the maintainer

- **Changed section ids.** None changed. Of the roadmaps on main, only NoncongruenceModularForms cites this roadmap, and it cites W1.2–W1.8 and W6.3–W6.5. Those targets are untouched.
- **Supplier gap changed.** The `needs` of `udc-all-prime-cuspidal-model-of-full-level` (supplier ModularCurvesPartII, Layer 11 (§11.4)) now asks for the minimal regular model, with a smooth proper model in genus 0.
- **Ownership.** No new carrier or construction was introduced. The repairs restate existing targets of this roadmap, so ownership against open pull requests did not change.
- **Untrusted text.** No suspicious instructions were found in the review or in any supplier text.
