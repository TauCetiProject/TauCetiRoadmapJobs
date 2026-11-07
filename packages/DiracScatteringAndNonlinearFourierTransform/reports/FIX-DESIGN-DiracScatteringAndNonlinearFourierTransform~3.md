# FIX-DESIGN-DiracScatteringAndNonlinearFourierTransform~3

This round repairs the two findings of REV-DESIGN-DiracScatteringAndNonlinearFourierTransform~2 (both
P3) in `packages/DiracScatteringAndNonlinearFourierTransform/design/README.md` and `design/plan.json`.
`sources.toml` is unchanged. I checked both findings at the pins: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`,
the revisions in `lake-manifest.json`, which match the checked-out packages and plan.json's `baseline`.
Both findings are right. F02's suggested repair would restate a theorem Tau Ceti already proves at the
pin, so I applied F02 differently. The F02 pattern sweep found two more *Needs:* lines that credit
Mathlib with results it lacks at the pin; both are repaired.

## F01 (P3) — applied

Verified: `fourier_real_eq` begins at Mathlib `Analysis/Fourier/FourierTransform.lean` line 483.

Change (README, From Mathlib contracts): "line 484" → "line 483".

Pattern: a script located every backticked library name in the supplier contracts at the pins and
printed its declaration line. I compared every line number the contracts gave before this round by
hand. Every one except this one matches, including the `singularPart` line 73 that the script's
pattern missed (opened directly). The line numbers added this round were each opened at the pin (below).
plan.json carries no line numbers.

## F02 (P3) — applied differently

Verified: the pinned Mathlib has no derivative of `det` (no `HasDerivAt`/`HasFDerivAt`/`fderiv`
statement about `Matrix.det`). Its only related result is the polynomial identity
`Matrix.derivative_det_one_add_X_smul`, and its `MatrixExponential.lean` still lists `det ∘ exp` as a
TODO. But the pinned **Tau Ceti** proves Jacobi's formula: `Matrix.hasFDerivAt_det`, `Matrix.fderiv_det_apply`
and `Matrix.fderiv_det_apply_adjugate` (`Analysis/Calculus/FDeriv/Det.lean` lines 110, 92, 75). It also
proves `Matrix.det_exp` (`Analysis/Normed/Algebra/MatrixExponential.lean` line 75). The review's repair,
"prove Jacobi's formula" here, would duplicate a pinned declaration, so I cite it instead.

Change (README §1.4; plan.json 1.4 `statement`, `prerequisites`): the route "determinant of an AC matrix
function has derivative `det N·tr(N⁻¹N′)`" → chain rule with Tau Ceti `Matrix.hasFDerivAt_det` at the
invertible `N_P(t,s)`, absolute continuity via the Leibniz expansion, then §1.2's scalar uniqueness clause.
*Needs:* → §1.2, §1.3, Tau Ceti, Mathlib names. Added a `Matrix.det_exp` compatibility Check, plus
contract and Scope bullets.

The Mathlib names added to *Needs:* and to the contracts were each opened at the pin:
`Matrix.det_apply` (`LinearAlgebra/Matrix/Determinant/Basic.lean` 66), `Matrix.trace_mul_comm`
(`LinearAlgebra/Matrix/Trace.lean` 156), `Matrix.mul_nonsing_inv` (`LinearAlgebra/Matrix/NonsingularInverse.lean`
209), `HasFDerivAt.comp_hasDerivAt` (`Analysis/Calculus/Deriv/Comp.lean` 375), `HasFDerivAt.restrictScalars`
(`Analysis/Calculus/FDeriv/RestrictScalars.lean` 54), and `AbsolutelyContinuousOnInterval.add` and `.smul`
(`MeasureTheory/Function/AbsolutelyContinuous.lean` 206, 273, in namespace `AbsolutelyContinuousOnInterval`).
Layer 1's Dependencies now name Tau Ceti's determinant-derivative module. plan.json 1.4 gains the test
`agreementWithTauCetiDetExp` (kind `compatibility`).

The review's `n = 2` route (`Matrix.det_fin_two` plus the product rule) is still valid. It is not needed,
because the pinned Jacobi formula holds for every `n` (any `Fintype` index, including the empty one).

**Pattern: other *Needs:* lines that credit Mathlib with something the pin lacks.** I swept every
*Needs:* line that cites a library result by description and checked each claim at the pins:

- §2.5, "Mathlib … weak-* compactness in `L^∞`". The route identifies `L^∞ = (L¹)^*`, which Mathlib
  lacks at the pin. Tau Ceti proves it only for **finite** measures (`MeasureTheory.Lp.dualOneEquiv`,
  `MeasureTheory/Function/L1Space/Dual.lean` line 102). For σ-finite measures it has only the isometric
  embedding `MeasureTheory.Lp.toDual`. Change (README §2.5 route and *Needs:*; plan.json 2.5
  `routeTheBoundedFunctions`, `prerequisites`): "`L^∞ = (L¹)^*`" → "`L^∞(Π) = L¹(Π)^*` … because
  `x ↦ (1 + x²)P(z, x)` is bounded and so lies in `L¹(Π)`; as a space of classes `L^∞(Π)` is `L^∞(ℝ)`".
  *Needs:* now names Mathlib `WeakDual.isCompact_closedBall` (`Analysis/Normed/Module/WeakDual.lean` 270)
  and Tau Ceti `MeasureTheory.Lp.dualOneEquiv`. Contract bullets and the Layer 2 Dependencies were added.
- §5.1, "Mathlib … Young's inequality for convolutions on `ℝ`". Mathlib at the pin has only the
  pointwise Hölder bound `enorm_convolution_le` (`Analysis/Convolution.lean` 557), not `‖k ⋆ f‖_p ≤ ‖k‖₁‖f‖_p`.
  Tau Ceti has it: `TauCeti.norm_convolutionLp_le` and `TauCeti.convolutionLp_ae_eq_convolution`
  (`MeasureTheory/Function/Lp/Convolution.lean` 117, 197). Change (README §5.1 route and *Needs:*;
  plan.json 5.1 `statement`, `prerequisites`): the citation is moved to Tau Ceti, and the route names the
  kernel `e^{−2ys} 1_{s ≥ 0}` with `L¹` norm `1/(2y)`. A contract bullet was added.
- The other descriptive claims are present at the pin and were left unchanged:
  - Riemann–Lebesgue (§4.2): `Real.tendsto_integral_exp_smul_cocompact`, `Analysis/Fourier/RiemannLebesgueLemma.lean` 205.
  - Liouville for harmonic functions (§2.5): `InnerProductSpace.bounded_harmonic_on_complex_plane_is_constant`, now named.
  - Weak convergence of finite measures (§6.7): Mathlib `MeasureTheory.FiniteMeasure`.
  - The inverse function theorem (§8.9): Mathlib `Analysis/Calculus/InverseFunctionTheorem`.
  - `StronglyMeasurable` limits (§1.7) and `Real.sinh` Taylor expansions (§9.5).

## Adversarial pass on every changed statement

Values were computed with a fourth-order Runge–Kutta integration (4000 steps), exact determinants by the
Leibniz sum, and central finite differences with step `10⁻⁶`.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §1.4 Liouville, integrable unbounded coefficient | `P(t) = [[t^{−1/2}, 1], [t, 0.3i]]` on `(0, 1]`, substitution `t = u²` | `det N(1,0) = 7.059035 + 2.183615i`; `exp(∫tr P) = exp(2 + 0.3i) = 7.059035 + 2.183615i` | holds | F02 |
| §1.4 orientation `s > t` | same, `N(0, 1)` | `det = 0.129291 − 0.039994i = exp(−(2 + 0.3i))`; the unsigned form would give `7.059 + 2.184i` | holds; sign pinned by the existing diagonal Check | none |
| §1.4 `n = 3`, non-commuting complex coefficient | `[[cos3t, 1, 0.2i], [t, i sin t, 0.5], [0, −t², 0.4]]` on `[0, 1.3]` | `∫tr P = 0.290745 + 0.732501i`; `det N = 0.994379 + 0.894377i = exp(∫tr P)` | holds | none |
| Tau Ceti Jacobi, invertible form | random complex `3 × 3` `A`, `H` | finite difference `−9.620555 + 3.946864i`; `det A·tr(A⁻¹H) = tr(adj A·H) = −9.620555 + 3.946864i`; `A·adj A − det A·1 = 0` | holds | none |
| Jacobi at a singular matrix | `N(t) = diag(t, t)` | `(det N)′ = 2t`; `tr(adj N·N′) = 2t` (`0` at `t = 0`, where `N⁻¹` is undefined); `det N′ = 1 ≠ 2t` | adjugate form needed only at singular points; `N_P` is invertible (§1.3), so §1.4 uses the invertible form | none |
| §1.4 trace bound `|tr P| ≤ n‖P‖` (sup norm, operator norm = max row sum) | `1₃`; `[[1, −2], [3, i]]` | `3 ≤ 3` (equality); `1.414 ≤ 8` | holds | none |
| §1.4 degenerate `n = 0` | empty index | `det = 1`, `tr = 0`, `exp 0 = 1` | holds | none |
| §1.4 new Check `Matrix.det_exp` | `A = [[1, 1], [0, 1]]`, `t = 0.5, 1` | `exp(0.5A) = [[1.648721, 0.824361], [0, 1.648721]]`, `det = 2.718282 = e^{1}`; `t = 1`: `det = 7.389056 = e²`; wrong forms `e^{3t} = 4.4817, 20.0855`, `e^t = 1.6487, 2.7183` | holds; both wrong models excluded | F02 |
| §1.4 Check, trace-free Dirac coefficient | `z = 0.6 + 0.25i`, `f = 0.8`, `g = 0.3` | `−Ω(z − Q_q) = [[0.8, −0.9 − 0.25i], [0.3 + 0.25i, −0.8]]`, trace `0` | holds | none |
| §2.5 Poisson weight in `L¹(Π)` | `z = 2 + 0.5i`, `i`, `−3 + 0.1i` | `sup (1 + x²)P(z, x) = 3.3116, 0.31831 (= 1/π, constant), 31.831`; limit `Im z/π`; bound `2(1 + a²)max(1, y⁻²)y/π = 6.37, 0.637, 63.7` | bounded, so in `L¹(Π)` (`Π` finite, `Π(ℝ) = π`) | pattern |
| §2.5 `L^∞(Π)` versus `L^∞(ℝ)` | null sets | `dΠ/dx = 1/(1 + x²) > 0` everywhere, so the null sets coincide and so do the essential suprema | holds | pattern |
| §5.1 Young bound | `q = 1_{[0,1]}`, `y = 0.5`, `k(u) = e^{−2yu}1_{u ≥ 0}` | `‖k‖₁ = 1/(2y) = 1`; `‖k ⋆ q‖₂ = 0.606531 = e^{−1/2}` (closed form `(1 − 2(1 − e^{−1}) + (1 − e^{−2})/2 + (e − 1)²e^{−2}/2)^{1/2}`) `≤ ‖k‖₁‖q‖₂ = 1`; `‖2k ⋆ q‖₂ = 1.213 ≤ ‖q‖/y = 2` | holds | pattern |
| §5.1 kernel direction | from §4.5, `(e^{−2izt}r)′ = e^{−2izt}(conj q − qr²)`, `|r| ≤ 1` | `e^{2yt}|r(t)| ≤ 2∫₀ᵗ|q(s)|e^{2ys}ds`, so `|r(t)| ≤ 2∫₀ᵗ|q(s)|e^{−2y(t−s)}ds = 2(k ⋆ |q|)(t)` with the one-sided kernel | holds | pattern |
| Pinned hypotheses | statements at the pins | `hasFDerivAt_det`: `[Fintype n] [DecidableEq n] [NontriviallyNormedField 𝕜]`, `IsUnit A.det`, matrix norm from `Matrix.Norms.Operator`; `dualOneEquiv`: `[RCLike 𝕜] [IsFiniteMeasure μ]`; `norm_convolutionLp_le`: finite-dimensional `E`, `IsAddHaarMeasure`, `Fact (1 ≤ p)`, `p ≠ ∞`, real kernel; `convolutionLp_ae_eq_convolution` adds `CompleteSpace F`, `Integrable k`, `MemLp f p` | the README contract bullets state these | pattern |

## Checks run

Dependency check, after all edits:

```
candidate: DiracScatteringAndNonlinearFourierTransform is not in the merge order yet; checked as if placed after AnalyticNumberTheoryPartI (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2351 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

Other checks:

- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere.
  Its scan cannot see the pinned Lake packages on this host, so I opened every library name I added at
  the pins myself (files and lines above).
- plan.json parses and round-trips with its formatting. Its diff touches only targets 1.4, 2.5 and 5.1.
  It still has 57 targets; tests go from 187 to 188 (one added in 1.4). `gaps` is still empty and the
  one supplier is unchanged.
- The added README text has no LaTeX delimiters, process words, pull-request numbers or machine paths
  (grepped).
- At the design stage there is no `Suggested.lean`, so there was no `#check @name` elaboration and no
  Lean–README agreement to check. No gate failures were listed for this round.

## Notes for the maintainer

- No target id, section number or plan target name changed, and no name that another roadmap could
  cite changed.
- No new source was fetched and `needs-references.toml` was not written. The changed passages keep
  their existing locators (coddingtonlevinson1955, waived; romanov2014 line 218–219; garnett2007,
  uncertified; denisov2006 and poltoratski2024 as before).
- Suppliers: everything newly consumed is in the pinned Tau Ceti or Mathlib, so the merge order is
  not affected. Tau Ceti's modules are consumed under their own names, and no roadmap declaration
  reuses a Tau Ceti name.
- Ownership. `roadmaps grep` over main and the open roadmap pull requests (index of 2026-11-06) for
  Liouville's and Jacobi's formula found one related statement: IncompressibleFlows Layer 3 item 1,
  Liouville's formula for the Jacobian determinant of the flow of a `C¹` vector field. It is a draft
  pull request that is not in the merge order, so this roadmap cannot consume it. Its object is the
  continuous-coefficient case, while §1.4 is the integrable-coefficient case. No other roadmap states
  Jacobi's formula, `det ∘ exp`, Young's inequality or `L¹` duality; all four are Tau Ceti's at the pin.
- The review text contained nothing beyond its findings and nothing suspicious. Its "Source issues"
  section records misprints in the sources and asks for no change to this package.
