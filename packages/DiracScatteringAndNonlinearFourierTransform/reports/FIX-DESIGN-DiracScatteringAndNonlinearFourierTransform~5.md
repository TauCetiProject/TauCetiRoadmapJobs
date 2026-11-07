# FIX-DESIGN-DiracScatteringAndNonlinearFourierTransform~5

This round settles the four findings of REV-DESIGN-DiracScatteringAndNonlinearFourierTransform~4: F01–F04,
all P3. The edits are in `packages/DiracScatteringAndNonlinearFourierTransform/design/README.md`,
`design/plan.json` and `sources.toml`.

All four findings are right in substance. F04 is applied as suggested, with a corrected witness. F01, F02
and F03 are applied differently, for the reasons given in each section. Two corrections to the review:
- Mathlib's disc kernel is `poissonKernel`, in the root namespace. It is not `Complex.poissonKernel`.
- Tao–Thiele Lemma 2 is not an analogue of the Dyson bounds. The real discrete analogue is Lecture 1 §3,
  Lemma 5 and line 460–465.

Every library name was checked at the pins of `lake-manifest.json`: Mathlib `1b1ccf4b`, Tau Ceti
`2fd255d9`. These are the checked-out package revisions and plan.json's `baseline`. No target was added
or removed. plan.json still has 9 layers, 57 targets and 106 API entries. Tests went from 193 to 195:
two new Checks in §2.1.

There is no `Suggested.lean` at the design stage. So there is no Lean statement to keep in step, and the
`#check @name` elaboration step does not apply. No Lean command was run.

## F01 (P3) — applied differently

**Verified.** Read at the Tau Ceti pin:
- `Analysis/PDE/GreenFunction/HalfSpace.lean`:
  - `TauCeti.halfSpacePoissonKernel` (line 122) is `2⟨v, x⟩/(n ωₙ ‖y − x‖ⁿ)`.
  - `_pos` (147), `harmonicOnNhd_halfSpacePoissonKernel_left` (177) and `_le_mul` (198) are as the review
    states.
- `Analysis/PDE/PoissonIntegral/HalfSpace.lean`: `integral_halfSpacePoissonKernel` (135),
  `halfSpacePoissonIntegral` (179), `tendsto_halfSpacePoissonIntegral` (297) and
  `harmonicOnNhd_halfSpacePoissonIntegral` (419).
- At `n = 2`, `ω₂ = π` by Mathlib `EuclideanSpace.volume_ball_fin_two` (`VolumeOfBalls.lean` 395). So the
  kernel is the README's `P(z, x)`.

**Change.** Old: §2.1 defined `P` by its formula, with no pinned kernel cited. New:
- `P` is defined as `TauCeti.halfSpacePoissonKernel 2 v` through `Complex.orthonormalBasisOneI`.
- Mass one cites `integral_halfSpacePoissonKernel`.
- §2.3 derives the cone comparison from `_le_mul` with `A = √3`.
- §2.4's continuous-data Check cites `tendsto_halfSpacePoissonIntegral`.
- New Tau Ceti contract bullets, Scope deferral, and Conventions clause.

**Differs from the suggested repair:**
- *Harmonicity of `P[ν]`* stays a target. Its route is now stated: `S[ν]` is holomorphic by
  `hasFDerivAt_integral_of_dominated_of_fderiv_le`, hence analytic (`DifferentiableOn.analyticAt`), so
  `Re S[ν]` is harmonic (`AnalyticAt.harmonicAt_re`).
- *The pinned special cases are recorded as Checks*, as the review asked:
  - bounded data, `harmonicOnNhd_halfSpacePoissonIntegral`, in the `h = 1/(1 + x²)` Check;
  - the kernel in its pole, `harmonicOnNhd_halfSpacePoissonKernel_left`, in the `δ₀` Check.
- *§2.4's Needs line is not extended.* The pinned limit theorem is used only by a Check, and the brief
  limits Needs lines to what the statement and its route need. §2.1's and §2.3's Needs lines and plan.json
  `prerequisites` carry the names the routes use.
- *Pattern repair, §2.5.* The route subtracts the Poisson integral of the bounded continuous data
  `F(· + iε)|_ℝ`. Its harmonicity and boundary values are exactly `harmonicOnNhd_halfSpacePoissonIntegral`
  and `tendsto_halfSpacePoissonIntegral` (for the real and imaginary parts). Both are now cited there and
  in §2.5's Needs.
- *Pattern repair, Layer 2's Examples.* The Examples claim boundary values everywhere for
  `P[dx/(1 + x²)]`; that claim now cites `tendsto_halfSpacePoissonIntegral`.
- *Aperture bullet.* It now names its constant as `A² = max(2, 1 + 2α²)` in the same comparison.
- *Measure on the hyperplane.* It is identified with Lebesgue measure on `ℝ` by
  `LinearIsometryEquiv.measurePreserving` (`MeasureTheory/Measure/Haar/InnerProductSpace.lean` 151).

**New Check.** At `z = 1 + i`, `x = 3`, the pinned kernel is `2·1/(2π·5) = 1/(5π) = Im z/(π|x − z|²)`.
With the arguments exchanged it is `0`, because `⟨v, x⟩ = 0`.

**Not used.** `halfSpacePoissonKernel_le_of_norm_sub_le` is not needed by the chosen route and is not cited.

## F02 (P3) — applied differently

**Verified.** The formula is right, but the name in the review is wrong:
- At the Mathlib pin, `Analysis/Complex/Poisson.lean` opens no namespace. The declaration at line 54 is
  `poissonKernel c w z = (‖z − c‖² − ‖w − c‖²)/‖(z − c) − (w − c)‖²`, with no factor `1/(2π)`.
- `Complex.poissonKernel` does not exist. The review's identifier would not resolve.
- The Poisson formula is `InnerProductSpace.HarmonicOnNhd.circleAverage_poissonKernel_smul`
  (`Analysis/Complex/Harmonic/Poisson.lean` 92, namespace `InnerProductSpace`).
- `Real.circleAverage` carries the factor `(2π)⁻¹` (`MeasureTheory/Integral/CircleAverage.lean` 56).

**Change.** Old: the Cayley comparison wrote `(1 − |w|²)/|ζ − w|²` and cited nothing. New:
- The factor is written `poissonKernel 0 w ζ`, and `P[ν](z) = ∫ poissonKernel 0 w ζ dσ(ζ)`.
- A Mathlib contract bullet names both declarations and the normalisation.
- `poissonKernel` is added to §2.1's Needs.
- A new Check computes `poissonKernel 0 (1/3) (−i) = 4/5`, so `P(2i, 1) = 2/(5π)`. It also checks
  `P[Re ζ](2i) = 1/3 = Re w` through the Poisson formula.

**Differs from the suggested repair:**
- The correct names are used.
- The Poisson formula is used only by that Check, so it goes in the contracts and not in §2.1's Needs.

**Pattern repair, §2.5's transport.** Tau Ceti's `AnalyticOnNhd.le_circleAverage_log_norm` is stated
at the centre of the disc only. The route now says so, and gets the bound at `z = i` from the Cayley
comparison at `w = 0`, where `poissonKernel 0 0 ζ = 1`. §2.1's covariance, applied to
`F(Re z + (Im z)·)`, then moves the bound to every `z`.

## F03 (P3) — applied differently

**Verified.** taothiele2012 line 296–297 (Lemma 3) states only that `a` has no zeros in the disc at
infinity. It bounds nothing.

**Change.** Old: §4.2 cited "(taothiele2012 Lecture 1 Lemma 3 line 296 for the discrete analogue)". New:
taothiele2012 Lecture 1 §3. Lemma 5 (line 430–433) gives the uniform convergence of truncations on `ℓ¹`,
and line 460–465 gives the bound `sup arccosh|a| ≤ Σ arccosh((1 − |F_n|²)^{−1/2})` on the circle. The same
locator change is made in plan.json 4.2's `locator`, in the References entry and in sources.toml.

**Why not the suggested repair.**
- Lemma 2 (line 253–272) describes the Laurent-polynomial structure of `a` and `b`. It is not an analogue
  of the cosh/sinh bounds.
- Line 460–465 is that analogue. Since `arccosh((1 − |F|²)^{−1/2}) = arctanh|F| ≈ |F|`, it is the discrete
  form of `arccosh|a| ≤ ∫|q|`. Computed: `0.100335 = arctanh 0.1`.
- Lemma 5 is the analogue of the uniform convergence as `t → ∞`.

**Pattern sweep.**
- §4.3's citation of Lemma 3 is correct (half-plane non-vanishing) and is kept.
- §4.4's citation of Lemma 6 (line 680–683, the discrete Plancherel identity) and §5.6's citation of
  line 687–688 (the quadratic approximation) were re-read and are correct.

## F04 (P3) — applied

**Change.** Old: "`ν` a point mass: `S = −∞`", with no `σ` fixed. New: the Check fixes `σ = dθ/2π`, the
Cayley image of `Π/π` and a non-atomic probability measure. For `ν = δ₁`, the set `X ∖ {1}` is `ν`-null but
has `σ`-measure `1`. So `σ` is not absolutely continuous with respect to `ν`, and `S = −∞`. The Check also
records `S(δ₁ | δ₁) = 0`. plan.json 6.7's test is updated.

**Correction to the review's witness.** "`σ({1}) = 0 < 1 = ν({1})`" shows that `ν` is not absolutely
continuous with respect to `σ`, which is the wrong direction. The correct witness is `X ∖ {1}`.

**Recomputed.** `ν = 2σ` gives `S = log 2 = log ν(X)`, and both sides compute to `0.693147`. This uses
that `σ` is a probability measure, which the new wording makes explicit.

## Adversarial pass on the new and changed statements

Values were computed in plain Python (`x = Re z + Im z·tan θ` substitution, 400 000 midpoints;
random sampling with 10⁵–2·10⁵ points).

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 `P` is the pinned kernel at `n = 2` | `(z, x) = (2i, 0), (1+i, 3), (−0.5+0.3i, 2)` | pinned `2⟨v,z⟩/(2π|x−z|²)` vs `Im z/(π|x−z|²)`: `0.1591549 = 0.1591549`, `0.0636620 = 0.0636620 = 1/(5π)`, `0.0150620 = 0.0150620` | equal | Check added |
| same, wrong model | arguments exchanged, pole `x = 3` real | `2·0/(…) = 0` | excluded by the Check | Check |
| §2.1 mass one | `z = 0.3 + 0.7i` | `∫P(z,x)dx = 1.0000000000` | holds | cite `integral_halfSpacePoissonKernel` |
| §2.1 harmonicity route | Schwarz integrand derivative `(x − z)^{−2}` on compact `K ⊂ ℂ₊` | `|x − z|² ≥ c_K(1 + x²)`; `Re[(1/πi)(1/(x−z) − x/(1+x²))] = Im z/(π|x−z|²)`; `S[ν](i) = (1/π)∫dν/(1+x²)` real | holds; Poisson-finiteness used exactly | route stated |
| §2.1 pinned bounded case | `h = 1/(1+x²)`, `z = 2i` | `P[h](2i) = 1/3`; real, bounded, continuous, so the pinned hypotheses hold | holds | Check |
| §2.1 Cayley comparison with `poissonKernel` | `(2i, 1)`, `(0.3+0.7i, −1.2)`, `(i, 5)` | `0.1273240 = 0.1273240` (`pk = 0.8`), `0.0813200 = 0.0813200` (`pk = 0.623358`), `0.0122427 = 0.0122427` (`pk = 1`); `poissonKernel 0 0 1 = 1` | equal | Check added |
| §2.1 Poisson formula through Cayley | `h = Re ζ = (x²−1)/(x²+1)` at `z = 2i`, `0.5 + 1.5i` | `P[h] = 0.3333333`, `0.2307692`; `Re w = 1/3`, `0.2307692`; partial fractions `(2/π)(−2π/3 + 5π/6) = 1/3` | equal; normalisation `1/(2π)` would give `1/(6π)` | Check added |
| §2.3 cone comparison from `_le_mul` | `2·10⁵` random `x′ + iy ∈ Γ_∞(x)`, `s ∈ [−20, 20]` | `max |s−(x+iy)|²/|s−(x′+iy)|² = 2.61699 ≤ 3 = A²`; max kernel ratio `2.61699 ≤ Aⁿ = 3`; height ratio `1`; `hx₁: 0 < y` holds on `ℂ₊` | holds | cite |
| §2.3 aperture constant | `α = 0.5, 1, 2` | max ratio `1.639 ≤ 2`, `2.609 ≤ 3`, `5.822 ≤ 9 = 1 + 2α²` | holds | wording `A²` |
| §2.4 continuous-data Check | `h` bounded continuous, complex | pinned theorem takes real bounded a.e.-strongly-measurable data continuous at `ξ` and gives the unrestricted limit; apply to `Re h`, `Im h` | holds (stronger than nontangential) | cite |
| §2.5 subtraction step | `g = F(· + iε)|_ℝ`, bounded continuous complex | pinned harmonicity and boundary values for `Re g`, `Im g`; the difference is continuous on the closed half-plane and zero on `ℝ`, so its odd reflection is continuous | holds | cite |
| §2.5 recentering | `G(u) = F(a + bu)`, `a = 0.4`, `b = 1.7`; `x = 0, 1.3, −2.2` | `P(i,x) = 0.3183099, 0.1183308, 0.0545051`; `b·P(z, a+bx)` gives the same values | covariance exact | sentence added |
| §2.5 log bound at non-centre `z` | `F = e^{iu}(u−i)/(u+i)`, `z = 0.5+2i`, `−1+0.3i` | `log|F(z)| = −3.000740`, `−0.595383` `≤ P[log|F*|](z) = 0` (`|F*| = 1`) | holds | none |
| §4.2 locator | discrete step `|F| = 0.1, 0.5, 0.9` | `arccosh((1−|F|²)^{−1/2}) = 0.100335, 0.549306, 1.472219 = arctanh|F|`; continuous equality case `q = 0.7+0.4i`, `T = 1.3`, `z = 0`: `a = 1.601407 = cosh L` | analogue correct | locator replaced |
| §6.7 Check | `σ = dθ/2π`; `ν = σ, 2σ, δ₁`; `σ = ν = δ₁` | `S = 0`; `S = log 2 = 0.693147 = log ν(X)`; `ν(X∖{1}) = 0`, `σ(X∖{1}) = 1`, so `S = −∞`; `S(δ₁|δ₁) = 0` | holds; non-atomic needed | Check fixed |
| §6.7 variational formula vs `−∞` | `ν = δ₁`, `σ = dθ/2π`, `F = M` off a neighbourhood of `1`, `F(1) = 1` | `∫F dν − ∫(1 + log F)dσ ≈ 1 − 1 − log M → −∞` | consistent | none |

## Checks run

- **Dependency check**, on the edited candidate README:

  ```
  candidate: DiracScatteringAndNonlinearFourierTransform is not in the merge order yet; checked as if placed after AnalyticNumberTheoryPartI (the intake inserts it when its design is accepted)
  depcheck: 240 roadmaps, 2369 edges, 0 problem(s)
  ```

  There is no UPWARD or CYCLE line. The edge count is the same for the unedited README (2369; the review
  saw 2364 earlier). So the change comes from the content repository, not from these edits.
- **`roadmaps resolve` on the README:** no cross-roadmap citation and no Lean name found nowhere. Its
  output says that Lean names outside TauCetiRoadmap were not checked on this host. So every new Mathlib
  and Tau Ceti name was checked at the pins by file and line:
  - Tau Ceti `GreenFunction/HalfSpace.lean` 122, 147, 177, 198 and `PoissonIntegral/HalfSpace.lean` 135,
    179, 297, 419, all in `namespace TauCeti`;
  - Mathlib `PiL2.lean` 853, `VolumeOfBalls.lean` 395 (`namespace EuclideanSpace`),
    `Haar/InnerProductSpace.lean` 151 (`namespace LinearIsometryEquiv`), `Harmonic/Constructions.lean` 55
    (root), `CauchyIntegral.lean` 723 (root), `Complex/Poisson.lean` 54 (root) and
    `Complex/Harmonic/Poisson.lean` 92 (`namespace InnerProductSpace`).
- **README against plan.json:** a script compared every target's statement, API bullets and Checks up to
  whitespace and found 0 mismatches. It also finds 0 mismatches on the unedited pair.
- **Other checks:**
  - plan.json `prerequisites` for 2.1, 2.3 and 2.5 mirror the new Needs lines.
  - sources.toml parses, with 12 sources.
  - Grep of the added lines finds no LaTeX delimiters, process words, pull-request numbers or machine
    paths.
  - No line over 125 characters was introduced.
- **Sources:** every locator added was read at the cited line in the cached extraction: taothiele2012 line
  296–297, 430–433, 460–465, 680–683, 687–688, and mauth2022 line 404–410. No source is missing, and no
  `needs-references.toml` was written.

## Ownership and overlaps

- **Ownership.** No new object is owned. The half-space kernel and Poisson integral (Tau Ceti) and the
  disc kernel (Mathlib) are pinned and cited, and Scope lists them as deferrals. Layer 2 keeps the Poisson
  integral of a Poisson-finite measure; the Scope clause says it differs from the pinned bounded-data
  integral.
- **Open pull requests.** Ownership against them was checked with `roadmaps grep` over main and the 466
  open heads:
  - No other roadmap owns half-plane Poisson integrals of Poisson-finite measures.
  - PDE on main (README line 576) consumes the same pinned Tau Ceti kernel and is not cited.
- **Overlaps.** The overlaps listing for this roadmap shows:
  - no open pull request that changes this roadmap;
  - no dropped id;
  - no id that only an open revision defines.

## Notes for the maintainer

- No id, heading or name that other roadmaps could cite changed. No target was added, removed or renamed.
- The review's `Complex.poissonKernel` is not a Mathlib name at the pin. The README uses `poissonKernel`.
- A later review that re-checks F02 should look for `poissonKernel` in the root namespace.
