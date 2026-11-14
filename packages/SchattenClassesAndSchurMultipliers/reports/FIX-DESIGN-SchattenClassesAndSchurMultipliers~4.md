# Repair report: SchattenClassesAndSchurMultipliers design, round 4

Review settled: `REV-DESIGN-SchattenClassesAndSchurMultipliers~3` (eleven findings R01–R11: five P1, two P2, four P3). Every finding was checked against the pinned Mathlib and Tau Ceti, the cached sources and the supplier roadmaps on main. All eleven are correct. Files edited:

- `packages/SchattenClassesAndSchurMultipliers/design/README.md`;
- `packages/SchattenClassesAndSchurMultipliers/design/plan.json` (rewritten in its own format, `indent=1`, non-ASCII kept);
- `packages/SchattenClassesAndSchurMultipliers/sources.toml` (only `cited_for` of `lafforgue-delasalle-2011` gains `"2.5"`).

## R01 (P1) — applied

Changed: §2.4 kernel projection `condExp` → `condExpL2` (`= Q ⊗ Q`), with an ℓ²-not-ℓ¹ negative control. New definition §2.5 (plan `2.5`, `SchattenClasses.condExpBounded`): `E[φ | 𝒜] = condExp 𝒜 (w·μ) φ` for an `𝒜`-measurable integrable `w > 0`. Its API covers characterisation, density independence, contraction, tower and the `L²` module property, with four Checks. §5.1–§5.3, contracts, Scope and Examples follow.

Evidence: `Mathlib/MeasureTheory/Function/ConditionalExpectation/Basic.lean:101–107` returns `0` unless `Integrable f μ`, and `condExp_of_not_integrable` is at line 171. `CondexpL2.lean:68` defines `condExpL2` as the orthogonal projection onto `lpMeas`, with no σ-finiteness hypothesis.

The source itself reduces to a finite measure through an `𝒜`-measurable density (lafforgue-delasalle-2011 lines 356–359, 422–424). Supporting lemmas at the pin:

- `MeasureTheory.exists_pos_lintegral_lt_of_sigmaFinite` (`Integral/Lebesgue/Countable.lean:227`);
- `MeasureTheory.lintegral_trim` (`Integral/Lebesgue/Add.lean:466`);
- `MeasureTheory.Measure.withDensity` (`Measure/WithDensity.lean:39`).

Retests:

- Counting `ℕ`, `φ = 1`: the extension gives `1`, so §5.1 reads `1 = 1` in norm and in trace (`A = B = E₀₀`); `condExp` would give `0`.
- `k = u ⊗ u`, `u_j = 1/(j+1)`: `condExpL2` returns `k` with `‖k‖₂ = π²/6`, while `condExp` returns `0` (partial ℓ¹ sum at `N = 10⁶` is `207.2` and diverges).

Consumers on finite measures (§6.4, §7.2, §7.3, §8.2) already reduce to a finite measure, where §2.5 is `condExp`; they are unchanged.

Ownership: no roadmap on main or in the open pull requests owns an L∞ conditional expectation for measures σ-finite on the sub-σ-algebra (`roadmaps grep` on "conditional expectation"). NoncommutativeIntegration §4.3 takes an abstract normal expectation from Takesaki's theorem for von Neumann algebras. The Scope bullet now says in one clause that §2.5 is its measure-theoretic form on Mathlib's classes, compared with `condExp`.

## R02 (P1) — applied

Changed: §2.1 contract `u*|X|^{p−1}` → `|X|^{p−1}u*` (`u*` at `p = 1`), with the `E₁₂` witness. §1.2 builds finite-rank norming elements from an eigenbasis of `X*X` and applies them to the compressions `P_α X P_α`, which covers `p = 1`. Checks added: `E₁₂`, `diag((j+1)^{−2})`, `X = 0`. Plan 1.2 mirrors this.

Evidence: for `X = E₁₂` we have `u = E₁₂` and `|X| = E₂₂`, so `u*|X| = E₂₁E₂₂ = 0`, while `|X|u* = E₂₁` and `Tr(XE₂₁) = 1 = ‖X‖₂`. Random 3×3 tests:

| `p` | `‖X‖_p` | `Tr(XY)`, corrected order | `‖Y‖_{p'}` | `Tr(XY)`, reversed order |
|---|---|---|---|---|
| 3 | 2.089670 | 2.089670 | 1 | 1.343 |
| 1.5 | 2.595701 | 2.595701 | 1 | 2.362 |

At `p = 1`, `Tr(Xu*) = 3.5 = ‖X‖₁`. For `diag((j+1)^{−2})` the tests `P_d` give `Σ_{j<d}(j+1)^{−2}`, which is `1.5498` at `d = 10` and `1.64483` at `d = 10⁴`, tending to `π²/6`.

Neither pin has a polar decomposition of operators, so the route uses the finite-dimensional eigenbasis.

## R03 (P1) — applied

Changed: §3.6 now requires `ν ≠ 0` (equivalently `L²(ν) ≠ 0`) and `d ≥ 1`; for `ν = 0` every norm of `S_{M'}` is `0`. Added a route sentence for finite `d`, a note that the source's Remark 1.6 omits the case, and the one-point Check `(1, 0)` / `(1, 1)`. Plan 3.6 mirrors this.

Evidence: one-point `Ω` of mass 1, `M = 1`: `‖S_M‖_{cb,2} = 1`, while for `ν = 0` the space `L²(μ ⊗ ν)` is `0`, so the norm is `0`. lafforgue-delasalle-2011 lines 262–266 state Remark 1.6 for every σ-finite `ν`. Pattern search: §1.4 already treats `d = 0` as the zero map. §3.7 (change of measure), §5.3 and §7.1 hold for `ν = 0` (`0 ≤ ·`; the zero measure is atomless).

## R04 (P1) — applied

Changed: §6.3 `|Σ ψ_{ij} M_{ij}| = |⟨α, S_M(a) β⟩|` → `Σ ψ_{ij} M_{ij} = Σ α_i (M ⊙ a)_{ij} β_j = ⟨ᾱ, S_M(a) β⟩`, with `‖ᾱ‖ = 1`, noting that Pisier's pairing is bilinear. Added the two-coordinate Check (`0 = 0` against `1`).

Evidence: with `α = (1,i)/√2`, `β = (1,1)/√2`, `a = I₂` and `M = diag(1,i)`:

- `|Σψ M| = 0`;
- `|⟨α, S_M(a)β⟩| = 1`;
- `|⟨ᾱ, S_M(a)β⟩| = 0`.

Three random 3×3 complex instances agree with the corrected identity to `2·10⁻¹⁵`. pisier-grothendieck-2012 line 800 uses the bilinear form `Σ λ_i a_{ij} φ_{ij} μ_j`.

Pattern search: the other sesquilinear conversions are correct.

- §6.3 `V_ξ*(A ⊗ 1)V_η` has entries `A_{ij}⟨ξ_i, η_j⟩`.
- §6.4 `⟨a(u), b(v)⟩ = ∫∫ conj u · v · M`.
- §6.1 `Σ D_{v_k} A D_{v_k}*`.
- §6.4 and §9.1 cosine factorisations give `cos(x − y)`.

## R05 (P2) — applied

Changed: the Layer 10 standing hypotheses now begin "`n ≥ 1`", matching plan 10.1–10.4. Added a §10.2 negative-control Check for `n = 0`:

- `π(A)` is constant, so `‖1‖_{BMO} = 0` against `‖1‖₂ = 1`;
- every `J_k` is `0`;
- §10.4 would assert `e^{−R/2} ≤ 4C_n e^{−R}`.

Plan 10.2 gains the test.

Evidence: `L²(ℝ⁰) = ℂ` and `U_z = 1`. At `R = 10` the two sides are `6.74·10⁻³` and `4C_n·4.54·10⁻⁵`, and the ratio grows like `e^{R/2}`.

## R06 (P2) — applied

Changed: §11.1 asserts the `L^∞` class only when `|||M||| < ∞`, and adds the column and row parts `|||M|||_c`, `|||M|||_r` and the Check `M = x`. The §11.3 intertwining needs a finite column (row) part. §11.4 needs `‖M‖_∞ < ∞` and bounds by `C_n|||M|||_c`, `C_n|||M|||_r` in `[0, ∞]`. Plan 11.1, 11.3 and 11.4 mirror this.

Evidence:

- `u = 1_{[1,∞)}/x` has `‖u‖₂² = ∫₁^∞ x⁻² = 1`, while `∫∫|x u(x) 1_{[0,1]}(y)|² = ∫₁^∞ 1 = ∞`.
- `|||x|||_c` already has `k = 0` term `ess sup|x| = ∞`.
- `sin y₁` has `|||·|||_r = 1` and `|||·|||_c = ∞`, consistent with the existing §11.4 Check.

## R07 (P1) — applied

Changed: the all-dimensional example is replaced by `φ((x−y)/⟨x⟩)` with `φ` Schwartz (finite gauge in every dimension; for a bump with `φ(0) ≠ 0`, neither Toeplitz nor a product), plus the suggested `e^{−|x|²−|y|²}`. The original symbol stays for `n = 1` (`|||M||| ≤ 2 sup|φ| + 4 sup|φ′|`), with the `n = 2` negative control.

Evidence:

- Closed form at `x = 0`, `y = (R,0)`: `R²|∂²_{x₁}M| = 5.7030`, `54.598`, `540.90` at `R = 10, 100, 1000`. A finite difference at `R = 10` agrees (`0.0570302` against `0.0570302`).
- Gaussian product: supremum `2R²e^{−R²} = 2/e = 0.73576`.
- New symbol with `φ = e^{−|t|²}`: 4000 random pairs per dimension in `n = 2, 3` (scales `10⁻²` to `10³`) give weighted suprema at most `1.51`, `0.74`, `8.35`, `1.66` for the four first- and second-order terms; the slice maximum is `2.73`.
- The `n = 1` original reaches `1.12 ≤ 4`.

## R08 (P3) — applied

Changed: the norm-one Checks now carry `d ≥ 1` and `α ≥ 1` (§1.1), `H ≠ 0` (§1.4), `μ ≠ 0` and `m ≥ 2` (§3.5, where the pinching kills a single off-diagonal block), and nonempty `ι` (§6.1), each with its norm-`0` companion. Plan 1.1 (two tests), 1.4 and 3.5 mirror this.

Evidence: at `d = 0`, `α = 0`, `H = 0`, `μ = 0` or empty `ι` the operator is `0`, with norm `0`; at `d = α = 1` the norm is `1`. Pattern search over every other "norm 1" claim found only nonzero carriers: `M₂`, `ℓ²(ℕ)`, `ℝⁿ` with `n ≥ 1`, a rank-one `e`, non-null sets in the §3.7 example.

## R09 (P3) — applied

Changed: §10.1 Check "`z ↦ U_z` has `‖·‖_{BMO^c} ≤ 1`" → `f(z) = e^{2πiz}e` (rank-one projection `e`). It has `‖f(z)‖₂ = 1` and `⨍_Q|f−f_Q|² = (1 − |⨍_Q e^{2πiz}|²)e`, so the seminorm is exactly `1`, attained at `Q = 𝕋`. The Check also notes that `U_z` is not Hilbert–Schmidt. Plan 10.1 test `bmo_constant` mirrors this.

Evidence: the singular values of `U_z` on `L²(ℝⁿ)` are all `1`, so `‖U_z‖₂ = ∞`. The supremum of `1 − sinc²(ℓ)` over lengths `ℓ ≤ 1` is `1.0`, at `ℓ = 1`.

## R10 (P3) — applied

Changed: the Littlewood–Paley estimates are now §11.2 and the twisted multipliers §11.3 (plan ids swapped, `target:11.3` → `target:11.2` in the twisted target). References updated: Tau Ceti contract, Layer 10 Examples, the §11.3 kernel-estimate reference and Needs, and §11.4's three references (intertwining, column bound, kernel estimates).

Evidence: a mechanical check shows no forward or missing prerequisite in plan.json (0 of 45 targets) or in the README `*Needs:*` lines (0 of 45 subsections). No roadmap on main, in the open pull requests or in the board packages cites this roadmap (`roadmaps grep --fixed SchattenClassesAndSchurMultipliers`: no match), so no old → new mapping is needed.

## R11 (P3) — applied

Changed: the §10.4 operator form now assumes finite `C₂, C_∞ ≥ 0` (`C_∞⁰ = 1` at `p = 2`). `A = 0` is trivial; `Ψ` is used only for positive constants and `A ≠ 0`; zero constants go through `C_j + ε`, `ε ↓ 0`. Added the Check `T = 0` (`0 ≤ 0`). Plan 10.4 mirrors this.

Evidence: with `C₂ = 0`, `C_∞ = 1`, `p = 4`, the factor `(1+ε)^{1/2} ε^{1/2}` is `0.332`, `0.0316`, `0.0010` at `ε = 10⁻¹, 10⁻³, 10⁻⁶`, tending to `0`, matching `TA = 0`. At `p = 2` with `C_∞ = 0`, `(C₂+ε)` tends to `C₂`. Positive constants `(2, 3)` at `p = 4` give `Ψ(2/p) = 0.408·TA` and bound factor `2.449`.

## Checks

Dependency check, run after the last edit:

```
candidate: SchattenClassesAndSchurMultipliers is not in the merge order yet; checked as if placed after AutomorphicSpectralTheory (the intake inserts it when its design is accepted)
depcheck: 223 roadmaps, 1971 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The roadmap and edge counts differ from round 3 because main moved (the resolver reports main at `755cb11`).

Other checks:

- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. It does not check Mathlib names, so every newly cited Mathlib declaration was opened at the pin:
  - `MeasureTheory.condExp_of_not_integrable` (Basic.lean:171), `setIntegral_condExp` (:231), `ae_eq_condExp_of_forall_setIntegral_eq` (:253), `condExp_condExp_of_le` (:342);
  - `MeasureTheory.exists_pos_lintegral_lt_of_sigmaFinite` (Countable.lean:227), `MeasureTheory.lintegral_trim` (Add.lean:466);
  - `MeasureTheory.Measure.withDensity` (WithDensity.lean:39), `MeasureTheory.SigmaFinite` (SFinite.lean:97);
  - `LinearMap.IsSymmetric.eigenvectorBasis` (InnerProductSpace/Spectrum.lean:297).
- plan.json parses; the 2.5 target has three API items and four tests. sources.toml parses, with 16 entries.
- Added README lines contain no LaTeX delimiters, process words or machine paths.
- There is no `Suggested.lean` at the design stage, so there was no `#check` audit and no elaboration. No Lean process was started.
- No gate failures were listed for this round.
- Sources: no new work is cited. Every new locator falls under an existing key (lafforgue-delasalle-2011 lines 262, 356–359, 422–424; pisier-grothendieck-2012 line 800), so no `needs-references.toml` was written.
- Ownership against open pull requests: checked with `roadmaps grep` over the open heads and main (conditional expectations; citations of this roadmap). The supplied overlap file lists no conflicting head and no dropped id.

## Adversarial pass (new or changed statements)

| Statement | Instances | Computed values | Result | Change |
|---|---|---|---|---|
| §2.4 kernel projection | `ℕ`, `𝒜 = 𝓑`, `k = u⊗u`, `u_j = 1/(j+1)` | `‖k‖₂ = 1.644933` (at `N = 10⁶`) → `π²/6`; ℓ¹ partial `207.2` → ∞; `condExpL2 k = k`, `condExp k = 0` | `condExpL2` correct | restated |
| §2.4 rank-one kernel of `P(B)` | `B = u⊗v*` | `V*BV = Qu ⊗ (Qv)*`, kernel `Qu(x)·conj Qv(y) = (Q⊗Q)(u⊗v̄)` | holds | route added |
| §2.5 definition and characterisation | counting `ℕ`, `φ = 1` | `E = 1`; native `0` | needs the extension | new |
| §2.5 | Lebesgue `ℝ`, unit intervals, periodic `1_{[0,1/2)}` | `E = 1/2`; native `0` | holds | new Check |
| §2.5 σ-finiteness on `𝒜` | Lebesgue `ℝ`, trivial `𝒜` | integrable `𝒜`-measurable functions `= {0}`; every constant satisfies the identity | hypothesis needed | negative control |
| §2.5 finite case and density invariance | `{1,2}`, masses `1, 3`; four points, blocks, `ρ = (2,2,7,7)` | `E(1,0) = 0.25`, `E(0,1) = 0.75`; difference after `ρ` `0.0` | holds | new |
| §2.5 module property | four weighted points, two blocks, random `φ`, block-constant `k` | `max|condExpL2(φk) − E[φ]k| = 2.3·10⁻¹⁶` | holds | new |
| §5.1 with §2.5 | `ℕ`, `𝒜 = 𝓑`, `φ = 1`, `A = B = E₀₀` | norms `1 = 1`, trace `1 = 1` (native: `1 = 0`) | holds | Check added |
| §5.2 with §2.5 | `ℕ`, family `{𝓑}`, `f = 1` | `1 = 1` (native: `1 = 0`) | holds | Check added |
| §5.3 density step | `𝒜`-measurable `w ⊗ w` | `E` unchanged (§2.5), norms unchanged (§3.7) | holds | route clarified |
| §1.2 norming element | `E₁₂`, `p = 2`; random 3×3, `p = 3, 1.5, 1`; `diag((j+1)⁻²)`, `p = 1`; `X = 0` | corrected `1 = 1` against reversed `0`; random rows in R02 table; `Tr(Xu*) = 3.5 = ‖X‖₁`; partial sums `1.5498` (`d = 10`), `1.64483` (`d = 10⁴`) → `1.644934`; `0 = 0` | corrected order and compressions | restated |
| §1.2 compression step | `Y_α = P_αY_αP_α` | `Tr(XY_α) = Tr(P_αXP_αY_α) = ‖P_αXP_α‖_p` | holds since ranges lie in `range P_α` | new route |
| §3.6 stabilisation | one point, `M = 1`; `ν = 0`; one-point probability `ν` | `(cb, stabilised) = (1, 0)` and `(1, 1)` | `ν ≠ 0` needed | hypothesis added |
| §6.3 sesquilinear step | `α = (1,i)/√2`, `β = (1,1)/√2`, `a = I`, `M = diag(1,i)`; three random 3×3 | `0` against `1` (old), `0 = 0` (new); random error `≤ 2·10⁻¹⁵` | `ᾱ` needed | restated |
| Layer 10, `n ≥ 1` | `n = 0`, `A = 1`; `p = 4`, `Ψ = e^{−Rz}`, `R = 10` | BMO `0` against HS `1`; `6.74·10⁻³` against `4C_n·4.54·10⁻⁵` | `n ≥ 1` needed | hypothesis and Check |
| §10.1 Check | `e^{2πiz}e` on `𝕋` | `sup_Q(1 − |⨍e^{2πiz}|²) = 1.0` at `Q = 𝕋`; pointwise HS norm `1` | seminorm `1` | replaced |
| §10.4 zero constants | `T = 0`; `C₂ = 0, C_∞ = 1, p = 4`; `C_∞ = 0, p = 2`; `(2, 3), p = 4` | `0 ≤ 0`; factor `→ 0` (`0.332, 0.0316, 0.0010`); `→ C₂`; `0.408` and `2.449` | ε-branch valid | restated |
| §11.1 bounded class | `M = x`, `n = 1` | `‖u⊗v*‖₂ = 1`; `‖M·k‖₂² = ∫₁^R 1 = R − 1 → ∞` | finite gauge needed | qualified, Check |
| §11.1 parts | `sin y₁`; `M = 1` | `|||·|||_r = 1`, `|||·|||_c = ∞`; `1, 1, |||1||| = 2` | `max ≤ ||| ||| ≤ sum` holds | new API |
| §11.4 one-sided bounds | `M = 1`; `sin y₁` | `BMO ≤ C_n·1` per side, `≤ 2C_n` total; only the row bound finite | holds in `[0, ∞]` | restated |
| Layer 11 Examples | `n = 2`, `sin t₁`, `R = 10, 100, 1000`; Gaussian product; `φ((x−y)/⟨x⟩)`, `n = 2, 3`; `n = 1` original | `5.7030, 54.598, 540.90` (diverge); `2/e = 0.7358`; suprema `≤ 8.35`; `1.12 ≤ 4` | original fails for `n = 2` | replaced |
| §3.5, §6.1, §1.1, §1.4 Checks | `μ = 0`, empty `ι`, `d = 0`, `α = 0`, `H = 0`; and `d = α = 1`, `m = 2` | `0`; `1`; the pinching sends the `(1,2)` block to `0` | qualified | restated |
| §11.2 / §11.3 order | plan and README prerequisites | 0 forward of 45 | consistent | reordered |

## Notes for the maintainer

- **Supplier correction (no edit made there).** NoncommutativeIntegration §2.1 on main (README line 457) gives the norming element `y = u*|x|^(p−1)/‖x‖_p^(p−1)`, which is wrong for non-normal `x`: for `x = e₁₂` the product is `0`. The correct order is `|x|^(p−1)u*/‖x‖_p^(p−1)` (equivalently `u*|x*|^(p−1)/‖x‖_p^(p−1)`). Its own Check uses the positive `diag(3,1)`, where the order is invisible. This roadmap consumes only that roadmap's duality and cyclicity, and constructs the norming elements itself.
- **Source issue recorded in the README.** lafforgue-delasalle-2011 Remark 1.6 (line 262) holds only for `ν ≠ 0`.
- **New target.** §2.5 / plan `2.5` (`SchattenClasses.condExpBounded`) appends to Layer 2 and renumbers nothing there.
- **Renumbered ids.** §11.2 and §11.3 swapped. No roadmap cites them.
- **Untrusted text.** No supplier, source or pull-request text contained instructions; nothing suspicious was encountered.
