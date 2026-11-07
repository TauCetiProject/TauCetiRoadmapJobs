# FIX-DESIGN-SchattenClassesAndSchurMultipliers~2

Repair round on the review `REV-DESIGN-SchattenClassesAndSchurMultipliers` (five P3 findings).
Files edited: `packages/SchattenClassesAndSchurMultipliers/design/README.md`,
`packages/SchattenClassesAndSchurMultipliers/design/plan.json`,
`packages/SchattenClassesAndSchurMultipliers/sources.toml`.

## F01 (P3) — applied differently

Verified: lafforgue-delasalle-2011 line 400 is the bound (9) inside the proof of Lemma 1.11 (lines 395–403). It does not state the norming formula. §1.2 old: "(lafforgue-delasalle-2011 lines 397–403, the estimate (9) used there)". New: the `S_p` case is NoncommutativeIntegration §2.1 read through its §1.5, restricted to the finite-rank operators of §1.1, with caspers-delasalle-2015 lines 638–642 (bilinear trace duality between `S_p` and `S_{p'}`). The `X ∉ S_p` case is this roadmap's. LdlS line 400 is cited only as the form §3.3 and §5.2 use. `plan.json` 1.2 mirrors this.

Why "differently": the review's text puts `≥` under §2.1. In fact `≥` is Hölder (NoncommutativeIntegration §1.4 with §1.5), as the route already says; §2.1 gives `≤` for `X ∈ S_p`.

## F02 (P3) — applied differently

Verified: §2.3 had no locator, and LdlS Remark 1.3 (line 244) says only "by duality". It was the only `###` subsection without one (checked by script over all 44).

Added:
- at the definition: `A^T` is the bilinear-pairing adjoint, and the flip under the identification of lafforgue-delasalle-2011 lines 226–230, which Remark 1.3 (line 244) uses;
- at the singular-value bullet: pisier-grothendieck-2012 Remark 13.4, line 2086;
- at the kernel bullet: lines 228–230 plus the derivation;
- at the trace bullet: the derivation (`Tr(JXJ) = conj Tr X`).

I did not attach Reed–Simon §VI.6 to §2.3. It supports the kernel theorem of §2.1–§2.2, where it is already cited, and `sources.toml` never listed it for 2.3. `plan.json` 2.3 now matches.

## F03 (P3) — applied

Verified by computation (table below): at `p = ∞` the `L¹`-normalised Gaussian must be narrower; at `p = 1` the `L^∞` one must be wider. Old: "(for `p ∈ {1, ∞}` a Gaussian of larger width)". New: explicit `γ_T`, with `g_R = f_R^{p−1}` for `1 < p < ∞` (mass exactly `1`), `T_R/R → ∞` at `p = 1`, and `T_R/R → 0` at `p = ∞`. The masses are given, along with the `n = 1` witness `0.995`/`0.0995`. The locator now states Lemma 4.1's own hypotheses (`1 < p < ∞`, `p/p'` rational). `plan.json` 9.4 mirrors this.

## F04 (P3) — applied

Verified at the Mathlib pin: in `Mathlib/Probability/Martingale/Convergence.lean`, `Integrable.tendsto_ae_condExp` (line 361) runs under `variable [IsFiniteMeasure μ] {g : Ω → ℝ}` (line 244) and `{ℱ : Filtration ℕ m0}` (line 54), with `StronglyMeasurable[⨆ n, ℱ n] g`. The contract now states these hypotheses and how §5.3 and §6.4 meet them: finite `μ ⊗ μ` after §3.7, the sequence `𝓑_n ⊗ 𝓑_n` with supremum `𝒜₀ ⊗ 𝒜₀`, applied to the real and imaginary parts.

Pattern repair: complex symbols need conditional expectation to commute with `Re` and `Im`. That is `ContinuousLinearMap.comp_condExp_comm` (`…/ConditionalExpectation/Basic.lean:357`) with `Complex.reCLM` and `Complex.imCLM` (`Analysis/Complex/Basic.lean:152, 172`). It is named in the contract, in the §5.3 and §6.4 routes and `*Needs:*` lines, and in the `plan.json` prerequisites of 5.3 and 6.4.

## F05 (P3) — applied

The `needs` of `semifinite-martingale-bmo-interpolation` is now one self-contained sentence. It carries the semifinite `(N, τ_N)`, the probability filtration (`𝓕₀` trivial, generating), `𝓜`, `E_k` and `E_{−1} = 0`, the three BMO norms, the class of `Ψ`, the bound `‖Ψ(2/p)‖_p ≤ C p · max(…)` and `2 ≤ p < ∞`, matching the README contract.

Pattern repair: the other gap's `needs` (`sigma-finite-hilbert-schmidt-kernels`) also leaned on "§0.8 and the first assertion of §0.10". It now states `T_K`, the HS-isometric embedding and the trace formula. Its wording and the README contract's `kernel_unique` bullet now say "isometric for the Hilbert–Schmidt norm". The earlier "isometric embedding into the bounded operators" reads as an operator-norm isometry, which is false (`K = 1 + s(x)s(y)` on `[0, 1]`, `s = ±1` on the halves: `‖T_K‖ = 1`, `‖K‖₂ = √2`).

## Checks run

Dependency gate (`tauceti-roadmap gate --candidate …/design/README.md --only SchattenClassesAndSchurMultipliers --order …/ORDER.txt --content …/content`):

```
candidate: SchattenClassesAndSchurMultipliers is not in the merge order yet; checked as if placed after NoncommutativeIntegration (the intake inserts it when its design is accepted)
note: supplier CStarAlgebras of SchattenClassesAndSchurMultipliers is not in the merge order; it must be inserted before SchattenClassesAndSchurMultipliers
depcheck: 240 roadmaps, 2371 edges, 0 problem(s)
```

The output has no UPWARD or CYCLE line. The CStarAlgebras note is unchanged from the review: it is a new-roadmap pull request, and the intake inserts it.

`roadmaps resolve` on the edited README found no cross-roadmap citation and no Lean name missing everywhere. `plan.json` parses as JSON and `sources.toml` as TOML. The README has no LaTeX delimiters and no machine paths.

No `Suggested.lean` exists at the design stage, so the `#check @name` audit does not apply. There were no gate failures to repair.

## Adversarial pass (changed or added statements)

| Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| §1.2 norming formula (statement unchanged, locator changed) | `p = 1`, `X = 1` on `ℓ²(ℕ)`; `p = 2`, `diag(1/(j+1))`; operator norm, `X = E₁₂`; zero space | `B = P_n`: `Tr = n → ∞ = ‖1‖₁`; sup `= π/√6 = 1.2825 = ‖X‖₂`; `B = E₂₁`, `‖B‖₁ = 1`: `Tr(E₁₂E₂₁) = 1 = ‖E₁₂‖`; `0 = 0` | sound | locator only |
| §1.2 case `X ∉ S_p` | compressions `P_αXP_α`, `B` finite rank | `Tr(P_αXP_αB) = Tr(X·P_αBP_α)`, `‖P_αBP_α‖_{p'} ≤ ‖B‖_{p'}`, `liminf ‖P_αXP_α‖_p ≥ ‖X‖_p = ∞` | sound | none |
| §2.3 `A^T` is the bilinear adjoint | `E₁₂`, `iE₁₂` on `{1, 2}` | `∫(E₂₁f)g = f₁g₂ = ∫ f(E₁₂g)`; `∫(iE₂₁f)g = i f₁g₂ = ∫ f(iE₁₂g)` | sound | added |
| §2.3 `k_{JBJ} = conj k_B`, `k_{A^T}(x,y) = k_A(y,x)` | `B = iE₁₂` | `JBJ = −iE₁₂`, kernel `−i·1_{(1,2)} = conj(i·1_{(1,2)})`; `(iE₁₂)^T = iE₂₁`, kernel `i·1_{(2,1)}` | sound | added |
| §2.3 `Tr(JXJ) = conj Tr X`, `Tr(A^T) = Tr A` | `X = iE₁₁`; `A = iE₁₁ + E₁₂` | `JXJ = −iE₁₁`, `Tr = −i`; `A^T = iE₁₁ + E₂₁`, `Tr = i = Tr A` | sound | added |
| §2.3 transposition on `M_n` has cb norm `n` | `n = 2`, flip unitary | `‖t^{(2)}([E_{ji}])‖ = ‖[E_{ij}]‖ = 2`; `‖t‖ = 1` | sound (agrees with §1.4 Check) | added |
| §9.4 `p = ∞` mass `(1 + T²/R²)^{−n/2}` | `n = 1`, `(R, T) = (1, 0.1), (1, 10), (3, 0.3)`, numerical quadrature | `0.99504, 0.0995, 0.99504` against the formula `0.99504, 0.0995, 0.99504` | sound; old "larger width" fails at `p = ∞` | rewritten |
| §9.4 `p = 1` mass `(1 + R²/T²)^{−n/2}` | `(R, T) = (1, 10), (1, 0.1)` | `0.99504, 0.0995` (quadrature = formula) | sound | rewritten |
| §9.4 `1 < p < ∞`, `g_R = f_R^{p−1}` | `p = 3`, `R = 2`, `n = 1` | `‖g_R‖_{3/2} = 1.000000`, `∫ f_R g_R = 1.000000`; width `R/√2` | sound | rewritten |
| §9.4 weight width `≤ 1/R` | all three cases | exponent `π(R² + R²/(p−1))|ξ|² = πR²p'|ξ|²`, `π(R² + T_R²)|ξ|²`: widths `1/(R√p')`, `(R² + T_R²)^{−1/2}`, both `≤ 1/R` | sound | rewritten |
| Lévy contract | complex `φ = e^{2πi(x−y)}` on dyadic `[0, 1]`; infinite `μ` | `Re`/`Im` parts real-valued; `IsFiniteMeasure` fails on Lebesgue `ℝ` and is restored by §3.7; `⨆(𝓑_n ⊗ 𝓑_n) ⊇` rectangles `A × A'`, `A, A' ∈ 𝒜₀` (σ-algebra `{A : A × Ω ∈ Σ}` contains `⋃𝓑_n`) | sound | contract restated |
| §6.4 dominated convergence | `u, v ∈ L¹(𝒜₀)` | `|conj u(x) v(y) M_n| ≤ ‖M‖_∞ |u(x)||v(y)| ∈ L¹(μ ⊗ μ)` | sound | bound stated |
| BMO gap `needs` | `p = 2`; `N = ℂ`, dyadic `𝕋` | `‖Ψ(1)‖₂ ≤ 2C sup_t ‖Ψ(1+it)‖₂` holds with `C ≥ 1/2`; classical John–Nirenberg `‖f‖_p ≲ p‖f‖_BMO`; `f = 1` has `‖f‖_{BMO_c} = 1` (because `E_{−1} = 0`), so the mean-zero hypothesis is needed | sound | sentence self-contained |
| Kernel gap `needs` / `kernel_unique` wording | `K = 1 + s(x)s(y)` on `[0, 1]` | `T_K` has eigenvalues `1, 1`: `‖T_K‖ = 1`, `‖K‖₂ = √2`; isometric only for HS | wording fixed | "isometric for the HS norm" |

## Maintainer notes

- No target, Lean name, layer or section number changed, so no other roadmap's citation of this one moves. Supplier citations are unchanged: NoncommutativeIntegration §1.4, §1.5 and §2.1 (read at the #864 head: §2.1 is `Lp–Lq` duality with the norming element) and AutomorphicSpectralTheory §0.8 and §0.10.
- Ownership: no new construction was introduced. The repairs add locators, hypotheses and Mathlib names (`ContinuousLinearMap.comp_condExp_comm`, `Complex.reCLM`, `Complex.imCLM`, `MeasureTheory.Filtration`), all checked at the pin.
- `overlaps.md`: no open pull request changes this roadmap, and no cited id is dropped or defined only by an open revision.
- Sources: no new fetches. Every text used (lafforgue-delasalle-2011, caspers-delasalle-2015, pisier-grothendieck-2012) is in the cache. `sources.toml` cited_for: caspers-delasalle-2015 gains `1.2`, pisier-grothendieck-2012 gains `2.3`. No `needs-references.toml` was written.
- No suspicious instructions were found in the review text.
