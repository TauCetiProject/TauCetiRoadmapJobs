# FIX-PKG-ModularFormsPartII~2

Repair round for the findings of `REV-PKG-ModularFormsPartII` (four findings, all P3). Only `packages/ModularFormsPartII/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are untouched.

## REV-PKG-ModularFormsPartII/F01 (P3) — applied

§8.4 proof sketch, old: "Each term has weight 1 and character `χ₋₄(d)` on `Γ(2)`". New: the first two terms have weight 1 and character `χ₋₄(d)` (trivial on `Γ(4)`), the third is `−4θ₃⁴/θ₂⁴ = −4/λ` of weight 0, so the sum is an inhomogeneous element of `M̃^!(Γ(4))`; the statement sentence now says "inhomogeneous, components of weights 1 and 0".

Verified: with `λ = (θ₂/θ₃)⁴` (§2.1) the third term is `−4/λ`; weights `1, 1, 0` by counting `θ₃² · (θ_qθ₂/θ₂)` as `1 + 2`, `θ₃ θ_qθ₃ = (1/2)θ_q(θ₃²)` as `3`, each over the weight-2 form `θ₂⁴`. Recomputed the identity in exact arithmetic: both sides `1 + q − 4q² + 5q³ + 12q⁴ − 42q⁵`, the `q⁻¹` coefficient of the right side is `0`, and `−4/λ = −1/(4q) − 2 − 5q + ⋯`. Pattern check: §8.3's clauses (`θ₄⁴/θ₃²`, `θ_qθ₃/θ₃³`, both weight 1) are correct and unchanged; §2.6 unchanged.

## REV-PKG-ModularFormsPartII/F02 (P3) — applied

§8.1, old: `M(Γ)` is "the graded ring of integral-weight modular forms of ModularForms Layer 0". New: `M(Γ) = ⊕_k ModularForm Γ k`, Mathlib's `ModularForm.instGCommRing` on the image of Γ in `GL₂(ℝ)`, with ModularForms Layer 0 cited for parity only. Added `ModularForm.instGCommRing` to the From Mathlib contract and to §8.1's `*Needs:*`; removed "the graded ring of integral-weight forms" from the ModularForms contract.

Verified at the pin: `ModularForm.instGCommRing (Γ : Subgroup (GL (Fin 2) ℝ)) [Γ.HasDetPlusMinusOne] : DirectSum.GCommRing (ModularForm Γ)` is `Mathlib/NumberTheory/ModularForms/Basic.lean` line 555 (the review's "542" is a few lines off, same declaration); `HasDetOne (Γ.map (mapGL S))` and `[HasDetOne Γ] → HasDetPlusMinusOne Γ` are instances in `ArithmeticSubgroups.lean` lines 58–66, so the ring exists for every subgroup of `SL₂(ℤ)`, congruence or not. ModularForms Layer 0 (`TauCetiRoadmap/ModularForms/README.md` lines 78–80, 259) is stated for `Γ₁(N) ≤ Γ ≤ Γ₀(N)`. The other Layer 0 citations (§§7.3, 7.6 and the Layer 7 dependencies) consume only the parity convention and stay.

## REV-PKG-ModularFormsPartII/F03 (P3) — applied

Every "AlgebraicModularFormsAndSerreWeights Layer R15.2" became "§2.9 (All-prime bounded denominators, Layer R15.2)" and every "Layer R15.1" became "§1.5 (All-weight analytic comparison, Layer R15.1)": Scope and ownership, the supplier contract, §§3.3, 3.4 (API bullet), 6.6, 6.8, 6.9, 8.6, and the Dependencies of Layers 3, 6 and 8 (fifteen occurrences). The contract's R15.1 line now says what §1.5 supplies.

Verified at the head of AlgebraicModularFormsAndSerreWeights: line 18 maps R15.1–R15.5 to Layers 1–5; §2.9 "All-prime bounded denominators" (line 413) is stated for any subgroup containing `Γ(N)`, `N ≥ 1`, integer weight, and carries the `Y(2N)` Laurent-series clause with `Δ⁻ᵐ` in `q = e^(πiτ)`; §1.5 "All-weight analytic comparison" is line 227.

## REV-PKG-ModularFormsPartII/F04 (P3) — applied

Old: "FuchsianOrbifolds Layer 2 item 6 (the presentation …)". New: "Layer 2 item 5 applied to the level-one group of Layer 6 item 1 (the presentation `PSL₂(ℤ) = ⟨S, R | S² = R³ = 1⟩` with `T = SR`)" in the supplier contract, Scope and ownership, §6.5 (sketch and `*Needs:*`, now Layers 2, 5, 6), §7.13 (statement and `*Needs:*`) and the Dependencies of Layers 6 and 7 (now Layers 2, 6).

Verified on main: `TauCetiRoadmap/FuchsianOrbifolds/README.md` item 5 (lines 252–254) extracts the standard presentation from the polygon, item 6 (255–260) builds triangle groups, Layer 6 item 1 (348–350) is the level-one group with its polygon and signature. Recomputed `R = S⁻¹T = [[0, 1], [−1, −1]]`, `R² = [[−1, −1], [1, 0]]`, `R³ = I`, so `T = SR` as §7.13 uses.

## Checks

- **Elaboration.** `lake env lean` on `packages/ModularFormsPartII/Suggested.lean` from the content checkout: exit 0, exactly six `declaration uses 'sorry'` warnings (lines 70, 84, 103, 115, 146, 161), nothing else. The file was not changed by this round (no finding touched it).
- **Signatures.** A scratch copy with `#check @name` for all nine declarations elaborated; each type is identical to the worker's `signatures.md` and to its README statement (§§1.1, 2.1, 2.2, 4.1, 6.3, 6.6, 7.3, 7.11, 7.12). Nothing changed.
- **Dependency check** (`gate --depcheck … --movable`): `depcheck: 235 roadmaps, 2338 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere.
- **README hygiene.** grep for LaTeX delimiters, process words, pull-request numbers and machine paths: none.
- No gate failures were listed for this round.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §8.4 theta quotient, weights | the three terms; `q`-series through `q⁵`; pole at `q = 0` | weights `1, 1, 0`; `−4/λ = −1/(4q) − 2 − 5q`; sum `1 + q − 4q² + 5q³ + 12q⁴ − 42q⁵` both sides; `q⁻¹` coefficient `0` | identity holds; "each term weight 1" false | clause rewritten |
| §8.1 `M(Γ)` as `⊕_k ModularForm (Γ.map (mapGL ℝ)) k` | `Γ = SL₂(ℤ)`; noncongruence finite-index `Γ`; `−I ∈ Γ`, odd `k` | `M₂(SL₂(ℤ)) = 0`, `Δ ∈ M₁₂`; `HasDetOne` instance for the `mapGL` image needs no congruence hypothesis; `f ∣[k](−I) = −f` forces `f = 0`, parity as stated | holds | citation and contract |
| §7.13 presentation with `T = SR` | `S = [[0, −1], [1, 0]]`, `T = [[1, 1], [0, 1]]` | `R = S⁻¹T = [[0, 1], [−1, −1]]`, `R³ = I`, `S² = −I` (trivial in `PSL₂`) | holds | citation only |
| §§3.3, 6.8, 8.6 use of §2.9 | subgroup containing `Γ(N)`, `N = 2N₀`; weight 0 on `Y(2N)` | §2.9 at its head: any subgroup containing `Γ(N)`, `N ≥ 1`, integer weight; Laurent clause with `Δ⁻ᵐ` | holds | citation only |

## For the maintainer

- No Lean name changed, so no consumer (NoncongruenceModularForms, AdelicImagesAndModularCurves) is affected.
- The ModularForms contract no longer claims Layer 0 supplies the graded ring of forms for arbitrary finite-index subgroups; that ring is Mathlib's `ModularForm.instGCommRing`.
- Ownership against open pull requests: unchanged from the previous round; no new object was introduced.
- `Ihara1994` remains `uncertified`; no source was fetched or added this round.
