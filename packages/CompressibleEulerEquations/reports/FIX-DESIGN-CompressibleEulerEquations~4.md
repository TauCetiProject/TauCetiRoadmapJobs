# FIX-DESIGN-CompressibleEulerEquations~4

Repair round for the design of `CompressibleEulerEquations`, round 4. It resolves the eight
findings of `REV-DESIGN-CompressibleEulerEquations~3`, numbered R01–R08 there and qualified here
as `REV-DESIGN-CompressibleEulerEquations~3/Rnn`.

Files edited:

- `packages/CompressibleEulerEquations/design/README.md`
- `packages/CompressibleEulerEquations/design/plan.json`
- `packages/CompressibleEulerEquations/sources.toml`

I checked every finding against the mathematics, the cited sources and the pinned libraries.
All eight hold, and all eight are repaired. The design stage has no `Suggested.lean`, so no Lean
statement changed and the `#check @name` comparison has no declaration to run on.

## REV-DESIGN-CompressibleEulerEquations~3/R01 (P2) — applied

**Verified.** Take `A⁰ = √(1+x²)` and `W = (1+x²)^{−1/2}`. Then:

- `‖W‖₂² = π` and `‖W′‖₂² = π/8`, both checked numerically.
- `∫_{−R}^{R} A⁰W² = 2 asinh R`, which is 5.996, 10.597 and 15.202 at `R = 10, 100, 1000`, so the energy is infinite.

**Old → new (§5.1, plan 5.1 and 5.1.1).** "`A^μ` `C¹` with bounded derivatives" becomes:

- `A⁰` bounded and `C¹` with bounded first derivatives;
- `Aⁱ` bounded, with bounded continuous spatial derivatives;
- a sentence on why: the bounds make the energy finite and put `LW` in `L²`.

The constant now names `sup|∂_tA⁰|` and `sup|∂ᵢAⁱ|`. The witness is added as a Check. The
identity does not need a time derivative of `Aⁱ`, and §5.4 relies on that, so §5.1 now says so.

## REV-DESIGN-CompressibleEulerEquations~3/R02 (P2) — applied

**Verified.** All four parts of the finding hold:

- The `k = 0` step datum has no `C¹` solution.
- With the non-compact `K = [1/2, 1)`, the ODE lifespans at `x = 0, 10, 100` are `0.0721`, `0.00365` and `0.0000484`, tending to `0`.
- The overshooting cutoff gives `5/2 ∉ (0, 2)`.
- §7.1 needs `F(Ū) = 0`.

**Old → new (§7.3).**

- Explicit hypotheses: general `F`, `Ū ∈ G`, compact `K`, segments in `G`, `2k > n + 2`, `M`, `0 ≤ χ ≤ 1`.
- The **source-switched system** is defined, with API and Checks.
- New route: compact neighbourhood `K₁`, cones `(m, 0)`, gluing and uniqueness by §6.2.
- Five Checks added.

**Plan.** 7.3 is updated, and the construction is a new target, 7.3.1 (`SymmetricHyperbolic.QuasilinearSystem.sourceSwitched`).

**Input this needs from §7.1.** The route needs the uniform bound `R(M, K)` on the §7.1
solution. The §7.1 route already proves it for the iterates, so it is now stated in §7.1 and in
plan 7.1.

## REV-DESIGN-CompressibleEulerEquations~3/R03 (P2) — applied

**Verified.** With `Φ_m = sin(ms)` and `u_m = m⁻¹1_{[0,1]}`:

- `sup_K |Φ_m| = 1`, but the order-zero constant is at least `m sin 1`, which is 8.41, 84.1 and 841 at `m = 10, 100, 1000`.

**Old → new (§4.3, plan 4.3.2).** "Derivatives up to order `k` on `K`" becomes:

- dependence on `K`, on a `δ` with `K_δ ⊆ G`, and on derivatives of order `≤ max(1, k)` on `K_δ`;
- the explicit secant bound `max(sup_{K_δ}|DΦ|, 2δ⁻¹ sup_K|Φ|)`, which also covers non-convex `K`.

The witness is added as a Check. On the witness the corrected bound reads `sin 1 ≤ 1`.

## REV-DESIGN-CompressibleEulerEquations~3/R04 (P2) — applied

**Verified.** In the §8.2 counter-flow pair, `D₁` and `D₂` both extend the solution on `W₁₂`,
yet at `(2, 0)` the velocities are `2` and `−2`.

**Old → new (Summary).** "Developments that extend a common classical solution are unique" is
replaced by three separate claims:

- any two developments have a largest common development, and are compatible exactly when they have a common upper bound;
- if the data extend to a classical solution on the whole future half-space, the maximal development is unique.

The plan summary gains the same uniqueness clause.

## REV-DESIGN-CompressibleEulerEquations~3/R05 (P2) — applied

**Verified.** At `n = 2`, the symbol `[[0,1,0],[1,0,0],[0,0,0]]` has eigenvalues `−1, 0, 1`
and determinant `0`, while `g⁻¹(ζ, ζ) = 1`. At `n = 1` the speeds are `±1` only.

**Old → new.**

- Scope: "null covectors = characteristic covectors" becomes "= the sound sheet of the characteristic variety", with the material sheet described as characteristic but not null, and absent for barotropic `n = 1`.
- Plan 2.2 `constant_state`: now uses unit `ω`, material multiplicity `n − 1`, the `n = 1` and `n = 2` witnesses, and the full system's multiplicity `n`.
- README §2.2 gains the matching Check, so the README and plan agree.

## REV-DESIGN-CompressibleEulerEquations~3/R06 (P3) — applied

**Verified.** The ratio of the wrong left side to the right side scales as `λ^{−ni/(2k)}`. For
`n = 1, k = 2, i = 1` the exponents are `0.5` and `0.75`, and the factors are `2` at `λ = 1/16`
and `0.5` at `λ = 16`.

**Old → new (§4.3 Check, plan 4.3 `scaling`).** "Refuted as `λ → ∞`" becomes the homogeneous
`Λ = 0` form, refuted as `λ → 0`, with the computed exponents.

**Same pattern elsewhere.** The §4.2 interpolation Check (`λ → ∞`) is correct and is left as it
is. Its inhomogeneous wrong pair scales as `λ^{1/6}` against `λ^{1/2}`, so it is refuted as
`λ → ∞`.

## REV-DESIGN-CompressibleEulerEquations~3/R07 (P3) — applied

**Verified at the cached texts.**

- MinguzziCone2019: line 1737 is Definition 2.17. The inclusion (2.2) is at line 672 (p. 16), its locally absolutely continuous solutions at lines 680–697 (p. 17), and Remark 2.3 at lines 698–718.
- Minguzzi2019: line 1354 heads §2.5. Definition 3.1 and Proposition 3.16 are indeed in §3.1.

**Old → new.**

- README §3.2 and plan 3.2 locators: now these MinguzziCone2019 lines. The Definition 2.17 citations in §3.3 are kept.
- Manifest, existing MinguzziCone2019 key (no new key): the §2.1 locators are added.
- Manifest, Minguzzi2019: "(§2.2)" becomes "(§2.5)".

## REV-DESIGN-CompressibleEulerEquations~3/R08 (P2) — applied

**Verified at the Tau Ceti pin `2fd255d9`.**

- `TauCeti.Wkp.normedBumpL` takes a `ContDiffBump (0 : E)` (`ApproximateIdentity.lean:52`), and its `_apply` lemma averages translates against `phi.normed`.
- `TauCeti.normedBumpAverageL` (`Analysis/Calculus/BumpFunction/Average.lean:88`) is bump-only.
- The two-bump kernel has `φ(0) = 0`.

**Old → new (§4.4, supplier contracts, plan 4.4).**

- "Cited, not reproved" becomes: §4.4 owns the extension to every admissible kernel and every `Λ`.
- The route is the Bochner average `∫ φ(y) τ_{−εy}u dy` over `TauCeti.Wkp.translate`, using `continuous_translate`, `norm_translate`, `translateLIE`, `lowerOrder_translate` and `iteratedGradient_translate` (`Translation.lean:104–229`, all opened at the pin), Young coordinatewise, and dominated convergence.
- The two-bump Check is added.
- No supplier gap is needed.

## Checks

**Dependency gate** (exact output, after all edits):

```text
candidate: CompressibleEulerEquations is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2056 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No roadmap is a supplier, and the plan's `gaps` list stays
empty.

**Citation resolver** (`roadmaps resolve` on the README):

- The first run listed one lead, "MinguzziCone2019 §2.1: no roadmap". That was a false positive: it is a source key followed by a section number. I reworded it to the house form "MinguzziCone2019 lines 680–697, §2.1".
- The re-run lists no cross-roadmap citation and no Lean name found nowhere.
- The tool does not check Lake declarations, so I opened every newly named Tau Ceti declaration in the pinned files directly (lines above). The pins of `lake-manifest.json` are Tau Ceti `2fd255d997f4…` and Mathlib `1b1ccf4b088b…`, matching the plan baseline.

**`Suggested.lean`, `#check` comparison and elaboration:** none of these applies, because the
design stage has no Lean file. No Lean command was run.

**Format:** `plan.json` parses (now 54 targets), and `sources.toml` parses (21 unique keys). There
are no LaTeX delimiters, no process words and no machine paths in the README.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §5.1 bounded coefficients | `A⁰ = √(1+x²)`, `W = (1+x²)^{−1/2}`; `A⁰ = 1` | `‖W‖² = 3.14159 = π`; `‖W′‖² = 0.392699 = π/8`; `E_R = 5.996, 10.597, 15.202` at `R = 10, 100, 1000`; with `A⁰ = 1`, `E = π` and both sides of the identity are `0` | Bound on `A⁰` needed; added |
| §5.1 identity without `∂_tAⁱ` | integration by parts with symmetric `Aⁱ` | `−2∫⟨Aⁱ∂ᵢW, W⟩ = ∫⟨(∂ᵢAⁱ)W, W⟩`; `−2∫⟨BW, W⟩ = −∫⟨(B+Bᵀ)W, W⟩`; no `∂_tAⁱ` term | Consistent with §5.4; stated |
| §5.1 continuity of `LW` | `B` continuous, bounded, not uniformly continuous in `t` | `‖(B(t)−B(s))W(s)‖ → 0` by dominated convergence (bound `2‖B‖|W|`) | `LW ∈ C([0,T]; L²)` holds |
| §4.3 composition constant | `Φ_m = sin(ms)` at `m = 10, 100, 1000` | `sup_K |Φ_m| = 1.0000`; required `C` = 8.4147, 84.147, 841.47; `Lip = m` gives `0.8415 ≤ 1` | First derivative needed; added |
| §4.3 secant bound, non-convex `K` | `K = {0, 1}` in `ℝ∖{1/2}`, `Φ = 0` near `0`, `m` near `1`, `u = 1_A` | required `C ≥ m`; secant bound `≥ 2m/δ ≥ 4m` for `δ < 1/2` | Consistent |
| §4.3 GN scaling | `n = 1, k = 2, i = 1` | right exponent `0.75`, wrong `0.5`; ratio factor `2` at `λ = 1/16`, `0.5` at `λ = 16` | `λ → 0`; fixed |
| §4.2 interpolation scaling (pattern) | `n = 1, j = 1, k = 2` | LHS `λ^{1/2}`, wrong RHS `λ^{−1/3}·λ^{1/2} = λ^{1/6}`, right RHS `λ^{1/2}` | `λ → ∞` correct; unchanged |
| §4.4 general kernel | two bumps `η(x∓2)/2`, supp `η ⊆ (−1/4, 1/4)` | `φ(0) = (η(−2)+η(2))/2 = 0`; `∫φ = 1`; `J_εu = ½(τ_{2ε}+τ_{−2ε})(η_ε⋆u)`, norm `≤ ‖u‖` | Owned extension; added |
| §4.4 strong convergence | dominated convergence | integrand `≤ 2φ(y)‖u‖`, pointwise `→ 0` by `continuous_translate` and `translate_zero` | Valid at `p = 2` |
| §7.3 order | step `1_{[0,∞)}`, `k = 0` | `L²` local norm `≤ ‖χ‖₂`; one-sided limits `0` and `1` | Excluded by `2k > n+2` |
| §7.3 compact `K` | `U₀ = 1 − 1/(2+√(1+x²))` | `U₀(0) = 0.6667`, lifespan `0.07213`; `U₀(10) = 0.9170`, `0.003647`; `U₀(100) = 0.9902`, `0.00004837` | Compactness needed; added |
| §7.3 cutoff range | `G = (0,2)`, `Ū = 1`, `K = {3/2}` | value-3 cutoff gives `2.5 ∉ G`; `θ = 0, 0.5, 1` gives `1, 1.25, 1.5` | `0 ≤ χ ≤ 1` added |
| 7.3.1 switched system | `F ≡ 1`; `F(Ū) ≠ 0` generally | `F_sw(Ū, 0) = (0·F(Ū), 0) = 0`; on `a = 1`, `U = Ū + t`, local norm `t‖χ‖_{Hᵏ}` | Equilibrium without `F(Ū) = 0` |
| 7.3.1 cone transfer | transport `a = 3`, cone `(1, 3)`, `ζ = (−2, 1)` | cone condition `1 ≥ 1`; given symbol `1 ≥ 0`; added entry `−2 < 0` | Needs `c ≥ |w|`; stated; gluing uses `(m, 0)` |
| 7.3.1 switch-off | `a ≡ 0` | `U`-equation homogeneous; constants solve it | Only `a = 1` cones glued |
| §7.3 gluing geometry | `p ∈ C_y ∩ C_{y′}`, speed `m` | backward cone `|x − y′| ≤ |x_p − y′| + m(t_p − s) < 1 − ms` | `J⁻_{C_y}(p) ⊆ C_{y′}`; §6.2 applies |
| §7.3 covering | `T ≤ 1/(2m)`, balls of radius `1/2` | `1 − mt ≥ 1/2` on `[0, T]` | Each point is in its own cone |
| §7.3 degenerate `K = {Ū}` | `U₀ ≡ Ū`, `F(Ū) ≠ 0` | ODE flow leaves `B̄(Ū, δ)` after time `≥ δ/V` | `T₁ > 0`; consistent |
| §7.3 vs §7.1, full-rank `Λ` | `F(Ū) ≠ 0` | §7.1 assumes `F(Ū) = 0` | Check now says "when `F(Ū) = 0`" |
| §7.1 uniform `R` | iterates `‖U^m − Ū‖ ≤ R`, `L²` limit | lower semicontinuity of §4.2 gives `‖U − Ū‖ ≤ R` | Stated |
| Summary uniqueness | counter-flow pair; constant data on a ball | velocities `2 ≠ −2` at `(2, 0)`; ball data give the unique cone `|x − tv₀| + c₀t < R` | Corrected |
| Summary common development | initial slice | `J⁻(p) = {p}` at `t₀`, so `W₁₂ ∩ Σ_{t₀} = {t₀} × S` | Holds |
| Scope sound sheet | `n = 2` `ζ = (0,1,0)`; `n = 1` | eigenvalues `−1, 0, 1`, `det = 0`, `g⁻¹ = 1`; `n = 1` speeds `±1` | Fixed |
| Material sheet never null | `ζ₀ + v·ζ′ = 0`, `ζ′ ≠ 0` | `g⁻¹(ζ, ζ) = |ζ′|² > 0` | Stated |

## Other places repaired for the same pattern

- **R01:** §5.2, §5.3, §5.4 and §7.1 were checked. Their coefficients are bounded already (compact support modulo `Λ`, values in a compact `K`, or `Hᵏ` embedding), so no change was needed. The §5.4 time-regularity mismatch is resolved in §5.1 itself.
- **R02:** §7.1 gains the bound `R`. §8.3 and the counter-flow worked example still satisfy the hypotheses of §7.3: their values are compact and the barotropic `G` is convex.
- **R03:** §5.3 and §7.1 constants still depend only on `K` and the system, because `δ` is determined by `K` and `G`.
- **R05:** plan 3.1.1 and §3.1 already distinguish the two sheets; no change was needed.
- **R07:** the Definition 2.17 citations in §3.3 are correct, as are Minguzzi2019 line 1364 (Remark 2.13) and §3.1; all are kept.

## Ownership and sources

- **Ownership.** I searched for symmetric-hyperbolic local existence and uniformly local data on main, at the open roadmap heads (`roadmaps grep`, 429 open pull requests indexed) and in the board packages. No other roadmap owns them; the only package hit (MordellLawrenceVenkateshPartII) uses "symmetric hyperbolic" for a GO representation. The source-switched system is a construction on this roadmap's own carrier (§2.1), so this roadmap owns it.
- **Sources.** No new source was fetched and no text is requested; no `needs-references.toml` was written. The settled Kato1975, Majda1984 and Dafermos2016 (uncertified) and the waived works were not requested again. The new 7.3.1 target cites Kato1975 Theorem I only for the theorem it serves, and says the switching construction is not taken from it.
- **Untrusted text.** None of the reviews, sources or roadmaps read contained instructions; there is no suspicious passage to report.

## Notes for the maintainer

- **New plan target:** 7.3.1, `SymmetricHyperbolic.QuasilinearSystem.sourceSwitched` (construction), which 7.3 now depends on.
- **Changed statements:** §7.1 (plan 7.1) now also states the uniform bound `R(M, K)`; §5.1 states the exact coefficient hypotheses.
- **Unchanged:** no target was renamed or deleted, and no section, layer or id moved, so no other roadmap's citation changes. LorentzianGeometry's consumer bridge (§3.1) is untouched.
