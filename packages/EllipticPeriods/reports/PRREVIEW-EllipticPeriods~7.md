# Review of EllipticPeriods (pull request #1059 at ceceba6)

**Verdict:** accepted

Incremental re-review of 13 changed lines in `TauCetiRoadmap/EllipticPeriods/README.md` since 7406ad2 (7 insertions, 6 deletions; `Suggested.lean` and `metadata.toml` unchanged; nothing outside the folder). The commit answers the two P3 notes of the previous review: target 4.1 now ends with a Silverman locator, and the Downstream consumers section names EllipticIntegrals' section correctly and no longer carries a pull-request state marker. Both consumer bullets were re-resolved against EllipticIntegrals on main and EllipticCurvePeriodsAndModularParametrizations at its open head and hold. The worker's gate passes at this head (every counter 0, `build=0`), my rerun of the targeted elaboration gives the 34 `sorry` warnings as the only diagnostics with all 42 elaborated types identical to the worker's signatures file, and the dependency check with the merge-order candidate reports 0 problems. No blocking finding; one P3 note on the new locator.

## R01 (P3) — The References entry does not cover the new ATAEC locator

Location: `TauCetiRoadmap/EllipticPeriods/README.md` lines 595–596 ("Silverman, AEC, ch. VI, the theorem on the multipliers of a lattice; Silverman, ATAEC, ch. II.") against lines 847–848 ("*Advanced Topics in the Arithmetic of Elliptic Curves*, GTM 151, 1994, ch. I").

Claim: every locator in the body points into a work the References list records at that place.

Witness: `grep -n 'ATAEC' README.md` gives lines 458, 482 (ch. I) and 596 (ch. II); the References entry for GTM 151 names ch. I only, so the Layer 4 locator points at a chapter the list does not record. The AEC half of the locator is descriptive ("the theorem on the multipliers of a lattice") rather than numbered.

Repair: line 848: "GTM 151, 1994, ch. I–II (ch. II for Layer 4)". Optionally number the AEC locator; in my reading of AEC (not opened, see Not verifiable) the multiplier–endomorphism correspondence is Theorem VI.4.1 and "`ℤ` or an order in an imaginary quadratic field" is Theorem VI.5.5, and ATAEC ch. II §1 carries the degree `|α|²` statement. The author should confirm the numbers against the printing cited.

## Previous findings

- R01 — repaired: README lines 595–596 close 4.1 with "(Silverman, AEC, ch. VI, the theorem on the multipliers of a lattice; Silverman, ATAEC, ch. II.)"; the mathematics of the paragraph is unchanged (table row below). The References entry lags one chapter behind (this report's R01, P3).
- R02 — repaired: README lines 786–788 read "(its Ownership and dependencies section, under the old name GrothendieckPeriodConjecture)" and "EllipticCurvePeriodsAndModularParametrizations expects the Eisenstein dictionary (2.4)" with no "(open)"; EllipticIntegrals on main (`fa41b37`) has `## Ownership and dependencies` at README line 62 and the deferral at lines 68–76.

## Verified sound

**The change.** `git diff --stat 7406ad2..HEAD` is `README.md | 13 +++++++------` and nothing else; `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/EllipticPeriods'` is empty; the folder holds `README.md`, `Suggested.lean`, `metadata.toml`; the worktree is clean. Pins unchanged: Mathlib `f6090c70`, Tau Ceti `358314d4`, both checked out under `.lake/packages` and equal to `lake-manifest.json`.

**Gate.** The worker's run at ceceba6: `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK`. My rerun of the plain gate (without the merge-order candidate) has every text counter 0 and stops only at `depcheck: NOT IN ORDER: EllipticPeriods (insert it after its last supplier)`, the pre-intake artefact of a roadmap not yet on main's order; it is not a defect.

**Dependency check** with the merge-order candidate and `--movable`:

```
depcheck: 205 roadmaps, 1438 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The candidate lists ModularCurvesPartII at 70 and EllipticPeriods at 71. The diff touches no `*Needs:*` line and no supplier citation.

**Elaboration.** A copy of `Suggested.lean` in the scratch directory, unchanged except for `#check @<name>` appended for all 42 declarations, elaborated with `lake env lean` from the worktree in 6 s: 34 `declaration uses 'sorry'` warnings, one per sorried theorem, no other warning or error. The 42 elaborated types (127 lines) are identical, token for token, to the worker's signatures file at this head and to the previous review's probe. `Suggested.lean` is byte-identical to 7406ad2, so the previous rounds' one-tactic probe of the 34 sorried statements (none closes in one tactic; `quasiPeriod_smul` with `simp [quasiPeriod, weierstrassZeta]` leaves the `tsum` goal) stands; no padding, no sorry'd data, no `set_option`, `public import Mathlib` the only import.

**Seeded sample** (0.1, 0.2, 1.2, 1.3, 1.5, 2.4, 3.1, 3.2, 3.3, 3.4, 4.3, 4.4, 5.1, 5.4, 5.5). None of these targets is in the diff; all fifteen are byte-identical to the heads the reviews at a1d420d, 40c294b and 7406ad2 verified at their locators. The cache passages behind them were re-read this round and are intact: `chudnovsky-icm78` lines 14557–14559 (§0, algebraic invariants standing), 14698–14700 (Theorem 1, `#{ω₁, ω₂, η₁, η₂} ≥ 2`, for 5.3), 14702–14708 (Corollary 2 and (2), for 5.5), 14710–14712 (Theorem 3, `π/ω`, `η/ω` algebraically independent, for 5.1), 14713–14715 (display (4), for 5.2), 14755–14758 ((9), `Γ(1/4)`, `Γ(1/3)` each a.i. with `π`, for 5.5); `dlmf23` line 234 (23.2.5, the `ζ` series) and 574 (23.2.14, `η₁ω₃ − η₃ω₁ = πi/2` in half periods, for 2.3 and 3.1); `dlmf23-3` line 184 (23.3.4, `Δ = 16∏(e_i − e_j)²`, for 1.5); `dlmf23-8` line 217 (23.8.5, the `csc²` series for `η₁`, for 2.4); `dlmf23-9` line 191 (23.9.5, the Laurent recursion); `bost-charles` lines 471–472 (the CM elliptic case due to Chudnovsky, for 5.4); `waldschmidt-periodes` (arXiv math/0502582v1) lines 309–314 (Théorème 3.1, `Γ(1/4)` and `π`, `Γ(1/3)` and `π`), 327–333 (two of `g₂, g₃, ω/π, η/π` a.i.) and 367–370 (Théorème 3.4), and the English version page 442 lines 341–346 (the same statement), for 5.2 and 5.5. The hypotheses at each locator match the README's: algebraic invariants for Theorems 1, 3 and Corollary 2 (§0), none for display (4) and Waldschmidt's statement, CM for Corollary 2.

**Changed passages.** (i) 4.1, lines 591–596: only the closing locator is new; the statement is the one verified in the previous rounds (row below), and the new sentence introduces no name, section or supplier. (ii) Downstream consumers, lines 785–790: EllipticIntegrals on main `fa41b37`, README line 62 is `## Ownership and dependencies`; lines 68–76 defer the lattice functions ("℘ beyond Mathlib, the Weierstrass `ζ` and `σ` functions, quasi-periods, the lattice form of Legendre's relation (`η₁ω₂ − η₂ω₁ = 2πi`)") to the lattice roadmaps GrothendieckPeriodConjecture and ModularCurves part II, as the bullet says. EllipticCurvePeriodsAndModularParametrizations at its open head, README lines 59 and 141–144, asks "GrothendieckPeriodConjecture Layers 0–2" for the scaling action with `g₂_smul`, `g₃_smul`, lattice invariance `G_congr`, `g₂³ − 27g₃² ≠ 0` and the Eisenstein dictionary; the bullet's split of these between this roadmap (2.4, 0.2) and ModularCurvesPartII §§1.3 and 1.1 agrees with this README's Scope (lines 48–51) and Exact supplier contracts (lines 147–150), and with ModularCurvesPartII §1.1 and §1.3 at its open head as resolved in the previous review. The two bullets are now timeless (no state marker, no pull-request number: `prnum=0`).

**Library declarations opened at the pins.** None needed this round: the diff names no library declaration. The previous rounds' locations (`TauCeti.ringKrullDim_eq_toNat_trdeg` at `TauCeti/RingTheory/KrullDimension/FiniteType.lean` line 152; Mathlib `Weierstrass.lean`, `EisensteinSeries/E2/`, `TranscendenceBasis.lean`) are unchanged at the unchanged pins.

**Ownership.** No object changed; the previous rounds' searches (`weierstrassZeta`, `periodField`, `IsEllipticFunction`, `HasCM`, `quasiPeriod`, `chudnovsky` over main and the open pull requests) stand, and the diff introduces no carrier.

**Adversarial table.** Rows for the unchanged statements are carried from the review at 7406ad2 (which carried them, with their values, from the reviews at 40c294b and a1d420d); rows with values for the changed passages follow.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 0.1 `SMul`, `G_smul` | `k = 0, 1, 2`; `k = 4, c = 2`; `c = −1` | `G₄(2Λ) = G₄/16`; odd `k`: `0 = 0`; `k ≤ 2` both sides `0` (junk) | sound | none; carried from the review at 7406ad2 |
| 0.2, 0.3 lattice invariance, `ofUpperHalfPlane` | `ℤ[i]`, `I • L`; `(τ, 1)` | `iℤ[i] = ℤ[i]`, `G₆ = −G₆ ⇒ g₃(ℤ[i]) = 0`; `(1/τ).im < 0` | sound | none; carried from the review at 7406ad2 |
| 1.1 `IsEllipticFunction` | `℘`, `℘′`, `℘(2z)`, constant; `ζ`, `z` | `ζ(z+1) − ζ(z) = π ≠ 0` on `ℤ[i]` | Checks discriminate | none; carried from the review at 7406ad2 |
| 1.2 Liouville | constant; `℘`; `z ↦ z` | `℘` order `−2` at `0`; `z` not periodic | hypotheses needed | none; carried from the review at 7406ad2 |
| 1.3 `finsum_meromorphicOrderAt_eq_zero` | `℘ − e₁`; `1`; codiscrete `0` | orders `−2 + 2 = 0`; all `0`; all `⊤`, excluded by `hne` | sound | none; carried from the review at 7406ad2 |
| 1.4 structure | `℘′²`; `0`; `℘′` | `P = 4X³ − g₂X − g₃, Q = 1`; `P = 0`; `℘′` odd, excluded | sound | none; carried from the review at 7406ad2 |
| 1.5 half-period values | `ℤ[i]`; `ℤ[ρ]` | `℘(1/2) = 6.87518 = −℘(i/2)`, `4e² = 189.0726 = g₂`; `64e⁶ = g₂³`; `g₂(ℤ[ρ]) = 0` | sound | none; carried from the review at 7406ad2 |
| 1.6 Laurent, `G_mem_adjoin` | `n = 3, 4`; numerically `c₁` | `c₃ = g₂²/1200`, `c₄ = 3g₂g₃/6160`; `(℘(0.05) − 400)/0.05² = 9.4538` vs `g₂/20 = 9.4536` | sound | none; carried from the review at 7406ad2 |
| 1.7 descent | `℘(2z)`; `℘`; `℘′²` | duplication at `z = 0.3 + 0.17i`: `0.75722 + 1.51668i` both sides | sound | none; carried from the review at 7406ad2 |
| 2.1 `weierstrassZeta`, oddness, `ζ′ = −℘` | `z = l₀`; `z = 0` | junk `2/l₀` at `l₀`, odd; `ζ(0) = 0` | sound | none; carried from the review at 7406ad2 |
| 2.2 `quasiPeriod`, `_add`, `_smul`, `_congr` | `l = 0`; `c = 2`, `l = 1/3`; `(ω₂, ω₁)` | `η(0) = 0`; `−2.207299 = ½(−4.414598)`; `_congr` needs `l ∈ Λ` | sound | none; carried from the review at 7406ad2 |
| 2.3 Legendre, `ζ = σ′/σ` | `ℤ[i]`, both bases | `η(1) = 3.14160`, `η(i) = −3.14159i`, `η(1)i − η(i) = 6.28319i = 2πi`; reversed `−2πi` | agrees with ModularCurvesPartII §1.4a | none; carried from the review at 7406ad2 |
| 2.4 Eisenstein dictionary | constants; `τ = i`; `G₂(−1/τ)` | `60·2ζ(4) = 4π⁴/3`, `140·2ζ(6) = 8π⁶/27`; `g₂(ℤ[i]) = 189.0726` vs `(4π⁴/3)E₄(i) = 189.0727`; `(π²/3)E₂(i) = π`; `G2_S_transform` matches `τ²G₂ − 2πiτ` | sound | none; carried from the review at 7406ad2 |
| 3.1 `periodMatrix`, `det_periodMatrix` | `ℤ[i]`; exchanged; `γ = !![0,1;1,0]` | `!![1, i; π, −iπ]`, `det = −2πi`; `+2πi`; `det γ = −1` | sound | none; carried from the review at 7406ad2 |
| 3.2 `periodField`, `two_pi_I_mem_periodField` | both orientations; `ℤ[i]` | `det = ∓2πi ∈ F`; `F = ℚ(i, π)`, trdeg `1` | sound | none; carried from the review at 7406ad2 |
| 3.3 `trdeg_periodField_le` | four generators; `ℤ[i]`; `πℤ[i]` | `≤ 4`; `1`; `1` | sound | none; carried from the review at 7406ad2 |
| 3.4 `periodIdeal`, `ringKrullDim_periodIdeal` | `ℤ[i]`; determinant | `X₂₂ + X₁₂X₂₁ ↦ 0`, `X₁₂² + 1 ↦ 0`; `det ↦ −2πi ≠ 0`; finite-type domain, `dim = 1 = trdeg ℚ(i, π)` | hypotheses met | none; carried from the review at 7406ad2 |
| 3.5 `trdeg_periodField_smul`, `isAlgebraic_of_smul` | algebraic `c`; `c = π` | `c⁴ = g₂(L)/g₂(cL)`; `g₂(πL) = π⁻⁴` transcendental | sound | none; carried from the review at 7406ad2 |
| 4.1 `HasCM`, `hasCM_iff`, multipliers | `τ = i, i√2, iπ`; `α = 0, N, 1+i, 1/2` | `nτ² + (m−q)τ − p = 0`, `n ≠ 0`; `iπ` no integer quadratic; `[ℤ[i] : (1+i)ℤ[i]] = 2 = |1+i|²`; `α = 0` infinite index, excluded by "nonzero"; `ω₁/2 ∉ Λ` | sound | none; carried from the review at 7406ad2 |
| 4.2 `exists_weierstrassP_mul_eq` | `α = ±1, 2, 0, i` | `P = X`; duplication; excluded; `P = −X` | sound | none; carried from the review at 7406ad2 |
| 4.3 `exists_quasiPeriod_mul` | real `α`; `α = i`; `√−2` numerically | `b = 0`; `b = 0`; `b = 2.99106i` from three routes, `b² = −e₂²/2` algebraic | sound | none; carried from the review at 7406ad2 |
| 4.4 `trdeg_periodField_le_two_of_hasCM` | `ℤ[i]`; `√−2` numerically | `η₁ = 2πi/(2i) = π`; `3.278942` vs `3.278944`, `−1.646065i` both | sound | none; carried from the review at 7406ad2 |
| 5.1 `chudnovsky` | primitive `l`; `l = 0`; `πℤ[i]` | `E₄ = (3g₂/4)(l/π)⁴`, `E₆ = (27g₃/8)(l/π)⁶`, `E₂ = 3(l/π)(η(l)/π)`; `trdeg ≥ 3 − 1 = 2`; `(0, 0)`; `l/π = 1` | sound | none; carried from the review at 7406ad2 |
| 5.2 `two_le_trdeg_adjoin_invariants` | `ℤ[i]`, `l = 1`; `πℤ[i]` | `g₂(ℤ[i]), π` a.i.; `η_{πΛ}(π) = 1` | sound | none; carried from the review at 7406ad2 |
| 5.3 `two_le_trdeg_periodField` | `πℤ[i]`; `ℤ[i]` | `ω₁/π = 2iω₁/(2πi) ∈ F(i)`; trdeg `1` in both examples, hypothesis needed | sound | none; carried from the review at 7406ad2 |
| 5.4 `trdeg_periodField_eq_two_of_hasCM` | `c • ℤ[i]`, `c⁴ = g₂(ℤ[i])` | `g₂ = 1`, `g₃ = 0`, `E₆(i) = 0`, `2 ≤ trdeg ≤ 2` | sound | none; carried from the review at 7406ad2 |
| 5.5 corollaries | `ℤ[i]`; `c • ℤ[i]`; `ρ` | fails without algebraic invariants (`ω₁ = 1`); `c, π` a.i.; `(0, 1)` | sound | none; carried from the review at 7406ad2 |
| 4.1 locator (changed) | `Λ = ℤ[i]`, `α = 1 + i`; `α = m ∈ ℤ`; `τ = i√2`; `α = 0` | ring: `(1+i)ℤ[i] ⊆ ℤ[i]`, `[Λ : αΛ] = det(x − y, x + y) = 2 = |1+i|²`, minimal polynomial `X² − 2X + 2`, degree `2`; `m`: index `m²`, degree `1`; multiplier ring of `ℤ + ℤi√2` is `ℤ[√−2]`, an order in `ℚ(i√2)`; `α = 0` excluded by "nonzero" | the paragraph the locator covers is true as stated; AEC ch. VI and ATAEC ch. II are the chapters on `ℂ/Λ` and on complex multiplication, cited by locator only (Not verifiable) | R01 (P3): References entry says ch. I only |
| Downstream consumers (changed) | EllipticIntegrals on main; EllipticCurvePeriodsAndModularParametrizations at its open head | EllipticIntegrals README line 62 `## Ownership and dependencies`, lines 68–76 the deferral to GrothendieckPeriodConjecture; the consumer's README lines 59, 141–144: scaling (`g₂_smul`, `g₃_smul`), `G_congr`, `Δ ≠ 0`, the dictionary from "GrothendieckPeriodConjecture Layers 0–2"; here 0.2 owns invariance, 2.4 the dictionary, ModularCurvesPartII §1.3 the `g₂, g₃` scaling and §1.1 `Δ ≠ 0` (README lines 48–51, 147–150) | both bullets resolve; no state marker, no pull-request number | none |

## Not verifiable

- Silverman, AEC ch. VI and ATAEC chs. I–II: not legally available to me (Springer's book pages redirect to a cookie gate; zbMATH returned 403), so the new 4.1 locator is checked for consistency with the References list and for the truth of the statement it covers, not against the text.
- Lang, *Introduction to Transcendental Numbers* (1966), Ch. IV §1, Theorem 1 (research context): cited through Waldschmidt's footnote 10, as in the previous review.
- Grothendieck's Montpellier folder 18, Chudnovsky 1976 and 1984, Nesterenko 1996, André (Panoramas et Synthèses 17): cited by locator only, as in the previous reviews; no target depends on them.

## Source issues

- none
