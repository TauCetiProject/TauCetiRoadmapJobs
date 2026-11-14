# Repair of ComplexHessianEquations (design, round 4)

This round resolves the seven findings of the round-3 review (`reports/REV-DESIGN-ComplexHessianEquations~3.md`). All seven are correct and are applied as asked. Where the reviewer's repair needed an extra precision, the report says so. Files edited: `packages/ComplexHessianEquations/design/README.md` and `packages/ComplexHessianEquations/design/plan.json`. `packages/ComplexHessianEquations/sources.toml` needed no change: every new locator (spruck2005 Lemma 2.10, gilbarg-trudinger2001 Theorem 8.18) is already covered by its entry, and no new work is cited.

## R01 (P1) — applied

Old → new: "every identity is homogeneous of degree `−1`" → a dictionary by degree. Degree `0`: Ricci coefficients, `Rm`, `∇̄'T` (the first two identities). Degree `−1`: `s_ω`, `B_ω`, `Λ`, `S`, `K`, `G`, `Y` and the Laplacians (the trace identities). Degree `−2`: the Calabi terms. The pss2012 conversion is explained separately for each group. New Check: doubling turns `32π⁴` into `8π⁴`.

Evidence: under `(ω, ω_φ) ↦ (cω, cω_φ)` the matrices `h`, `Γ`, `T` and `F` do not change. Every inverse metric contributes `c⁻¹` and every lowered index contributes `c`. So `S = |T|²` has degree `−1`, and `Δ_{ω_φ}S` has degree `−2`. On the unit torus (`g_{1̄1} = 1/2`, `a = 1/2`, `x = 0`), `Δ_{ω_φ}S = 8π⁴a²/(1 − a)⁴ = 32π⁴`. With both metrics doubled, `S = q'²/(4q³)` and `Δ' = (1/(4q))d²/dx²`, which gives `2π⁴a²/(1 − a)⁴ = 8π⁴`. A uniform degree `−1` would give `16π⁴`. Other occurrences repaired:
- the ℂP¹ Check of §6.1, which now says that `Ric` and `R_{1̄1}{}^1{}_1` have degree `0` and `s`, `B` have degree `−1`;
- the closing sentence of the plan's 6.1 statement;
- the plan tests `ricci_CP1` and `torus_cosine_witness`, whose pss2012 clause moved into the new test `torus_doubled_degrees`.

The formulas themselves are unchanged.

## R02 (P1) — applied

Old → new: the §8.5 Check said "`V⁻¹∫F e^{nF} ≤ Ent_{p'}(F)`". It now says that the signed moment is at most `Ent_1(F) ≤ 1 + Ent_{p'}(F)`, for `p' ≥ 1` (§3.4). The §8.5 route now writes out the Jensen step for (c), with the additive `1` carried through. The torus negative control is added as a Check and as plan test `signed_moment_not_by_entropy`.

Evidence: gpt2023 line 82–83 defines `Ent_p(F) = V⁻¹∫e^{nF}|F|^p ω^n`, and line 730–735 makes the false claim. A quadrature on the reviewer's witness gives these values:
- signed moment `7.500844·10⁻⁵`;
- `Ent_3 = 4.2449·10⁻⁷`, `Ent_1 = 6.37·10⁻³`;
- convexity lower bound `7.28·10⁻⁵`, upper bound `1.047·10⁻⁶`.

The repaired chain is `c∫(−φ)^N dμ ≤ log(C/V) + n∫F dμ ≤ log(C/V) + n(1 + Ent_{p'})`. The theorem's parameter dependence is unchanged.

Same pattern searched: §8.4 (gpt2023 Lemma 6, line 807–844) bounds its signed moment by `Ent_1`, which is correct. Its Jensen step is now written out, and its Needs list now includes Mathlib `ConvexOn.map_integral_le`. In the plan, 8.4 and 8.5 gained `target:3.4.2` and `mathlib:ConvexOn.map_integral_le`. The Mathlib supplier bullet and the Layer 8 Dependencies name §8.5's use.

## R03 (P2) — applied

Old → new: the contract is now stated with every hypothesis. It holds on `B(x₀, 4r)`, `r > 0`, in every dimension `m ≥ 1`. The coefficient `a` is measurable with constants `λ, Λ`. The solution satisfies `u ∈ H¹`, `u ≥ 0` a.e., and `div(a∇u) ≤ f` weakly, with the test-function form spelled out. The exponent is finite with `q ≥ 1` and `q > m/2`. The conclusion uses `ess inf_{B_r} u`, with `C = C(m, q, λ, Λ)`. Both counterexamples are recorded. The plan's gap `detail` and `needs` match. The §5.4 route now shows the chart identity and the bounded forcing.

Evidence: the null-set witness gives `4π ≤ C·0`. The pinned `TauCeti.PDE.exists_ae_setAverage_rpow_rpow_inv_le_mul_value` (`TauCeti/Analysis/PDE/Regularity/Harnack.lean`, line 270–299) has an a.e. conclusion. Computed values for the 1-D family:

| `ε` | `‖u_ε‖_{L¹(−2,2)}` | `‖f_ε‖_{L^{3/4}}` | `‖f_ε‖_{L¹}` |
| --- | --- | --- | --- |
| `10⁻²` | `3.9606` | `0.810` | `1.99999` |
| `10⁻⁴` | `3.9996` | `0.175` | `2.0000` |
| `10⁻⁶` | `3.999996` | `0.0376` | `2.0000` |

The `L^{3/4}` norm decays like `ε^{1/3}`. At `m = 1`, `q = 1` the inequality holds: the flux `w = au'` is non-increasing up to `‖f‖_{L¹}`, and this gives `u ≤ (1 + Λ/λ)·u(x₀) + 3r‖f‖₁/λ` on `B_{2r}`. Slug, supplier (PDE §5.4, E23) and `neededBy` are unchanged.

## R04 (P2) — applied

Old → new: "the generalized Newton–Maclaurin inequality of spruck2005 Lemma 2.10" → an explicit statement. For `λ ∈ Γ_r`, `0 ≤ s < r ≤ n`, `0 ≤ l < k ≤ r` and `l ≤ s`, with `S_0 = 1`, it reads `(S_r/S_s)^{1/(r−s)} ≤ (S_k/S_l)^{1/(k−l)}`. Its route is the concavity of `j ↦ log S_j` and monotone chord slopes, and Maclaurin is the case `s = l = 0`. Positive and negative Checks and plan tests are added.

Evidence: spruck2005 line 11279–11282 states `λ ∈ Γ_r`, `0 ≤ s < r`, `0 ≤ l < k`, `r ≥ k`, `s ≥ l`. The positive controls give:
- `(3, 2, 2, 1)`: `1.6364 ≤ 1.8333`;
- `(3, 1, 2, 0)`: `1.7321 ≤ 1.9149`;
- `(3, 0, 1, 0)`: `1.8171 ≤ 2`.

The negative controls fail as they should:
- `(2, 0, 2, 1)`, which has `l > s`: `1.9149 > 1.8333`;
- `(2, 1, 3, 0)`, which has `k > r`: `11/6 = 1.8333 > 6^{1/3} = 1.8171`, so `k ≤ r` is also needed.

## R05 (P2) — applied

Old → new: the plan API `isHyperbolic_sigma` "σ_k is hyperbolic in e" now reads "for 1 ≤ k ≤ n, σ_k is hyperbolic in e (σ_0 = 1 is the degree-zero positive constant; for k > n, σ_k = 0 is not hyperbolic)". The out-of-range Check is added to README §2.2, and plan test `sigma_out_of_range` to 2.2.1.

Evidence: at `n = 1`, `σ_2 = 0` gives `σ_2(e) = 0`, which is not `> 0`. At `n = k = 1`, `σ_1(e) = 1` and `x + t` has the root `−x`. A search of every plan API and test for `σ_k` without an index guard found two more statements. `det_one_add_smul_eq_sum_esymm` is true with out-of-range zero terms, and `hessianCone_eq_gardingCone` sits under a target whose hypotheses already require `1 ≤ k ≤ n`.

## R06 (P3) — applied

Old → new: "`λ[ω_φ] = (1 − 2π²ε cos 2πx_1, 1)`" → the unordered eigenvalues `q` and `1`, with the sorted vector `λ[ω_φ] = (max(q, 1), min(q, 1))`. At `ε = 1/(4π²)` it is `(1, 1/2)` at `x_1 = 0` and `(3/2, 1)` at `x_1 = 1/2`. The density `e^F = q`, `sup F` and `osc φ` are unchanged.

I searched every explicit eigenvalue vector in the README. Eleven occurrences were already sorted. The §1.5 Check at `T = diag(1, 4)` gave `∂_1 f = 1, ∂_2 f = 1/4`, which are values at the unsorted point. It now names `λ(T) = (4, 1)`, `∂f(4, 1) = (1/4, 1)`, and `∇F(T) = diag(1, 1/4)` in the standard basis, so that `tr(∇F·T) = 2` and `det = 1/4` are unchanged. The new §8.5 Check lists the eigenvalues `q, 1, 1` unordered.

## R07 (P3) — applied

Old → new: README §2.4 gains three cone API bullets: the `Γ_k` are admissible, finite intersections are admissible, and every member has `σ_1 > 0`. It also gains four cone Checks: `(1, −1/2) ∈ Γ_1`, the shifted quadrant, the non-convex §1.4 cone and infinite intersections. In the plan, "§1.5" → "§1.4" twice, and the increment `(0, 0.25)` → `(0.01, 0.25)`, with sum `(1.01, −0.15) ∉ Γ`.

Precision added beyond the review:
- The plan API `isAdmissibleCone_inter` said "intersections". An infinite intersection need not be open: the intersection of the cones `{λ₁ + λ₂ > 0, λ_i > −ε(λ₁ + λ₂)}` over all `ε > 0` is `{λ ≥ 0, λ ≠ 0}`. The API now says finite intersections, with a test.
- The §4.1 Check now carries a computed witness. With `f = σ_1` on `Γ_2` and `f = 10σ_1` on the wedges, `(1, −0.4) ≤ (1.01, 0.1)` but `f = 6 > 1.11`.
- §1.4's monotonicity bullet said that the segment lies in `Γ` "by convexity", yet §4.1 applies it without convexity. The segment lies in `Γ + Γ̄_n ⊆ Γ`, so the bullet and the plan's 1.4 hypotheses now say that only `Γ + Γ_n ⊆ Γ` is used. A non-convex example in `ℝ³` (see the table) shows that this generality is needed.

## Checks run

Dependency check (exit 0):

```text
candidate: ComplexHessianEquations is not in the merge order yet; checked as if placed after ComplexComparisonPartII (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2062 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. No supplier was added or removed. The one gap, `gap:weak-harnack-supersolutions` (PDE §5.4, E23), keeps its slug and supplier.

`roadmaps resolve packages/ComplexHessianEquations/design/README.md` found no cross-roadmap citation and no Lean name that resolves nowhere. Its library check was unavailable on this host. I checked the new Mathlib name at the pin myself: `ConvexOn.map_integral_le` is in `Mathlib/Analysis/Convex/Integral.lean`, line 196, and needs a probability measure, a convex function continuous on a closed set, a.e. membership and integrability of both terms. On compact `X` with continuous `φ, F` all of these hold.

`plan.json` parses, and its indentation and key order are preserved.

Suggested.lean and elaboration: this design package has no `Suggested.lean`, and this job may not create one. No Lean declaration of this roadmap was added, renamed or deleted, the README advertises no new backticked name of its own, and no Lean command was run.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed (two sides) | Result; change |
| --- | --- | --- | --- |
| §6.1 degree-0 identities | ℂP¹, `ω` versus `2ω` | `Ric(2ω) = Ric(ω) = 2ω = 1·(2ω)`; `R_{1̄1}{}^1{}_1 = 2g_{1̄1}` for both | Degree 0 confirmed; text and Check repaired |
| §6.1 trace identity, degree `−1` | torus, `a`, `x = 0`, metrics doubled | `2π²a/(1 − a)` → `π²a/(1 − a)`; `S`: `q'²/(2q³)` → `q'²/(4q³)` | Halved; Check added |
| §6.1 Calabi identity, degree `−2` | torus, `a = 1/2`, `x = 0` | `32π⁴ = 3117.09` → `8π⁴ = 779.27`; degree `−1` would give `16π⁴` | Quarter; old claim false; repaired |
| §6.1 ℂP¹ scalar and bisectional curvature | `ω` → `2ω` | `s: 2 → 1`, `B: 2 → 1` | Degree `−1` |
| §8.5(c) Jensen step, old bound | `n = 3` torus, `q = 1 − 0.03 cos` | moment `7.5008·10⁻⁵` versus `Ent_3 = 4.2449·10⁻⁷` | Old bound false; repaired |
| §8.5(c) Jensen step, new bound | same instance | `7.5008·10⁻⁵ ≤ Ent_1 = 6.37·10⁻³ ≤ 1 + Ent_3 = 1.0000004` | Holds |
| `|F| ≤ 1 + |F|^{p'}` | `p' = 1` with any `F`; `p' = 1/2`, `F = 4` | `p' = 1`: true; `p' = 1/2`: `4 ≤ 3` false | `p' ≥ 1` is needed, as stated |
| §8.4 Jensen step | MA pair, `χ = ω_X`, `F_t = 0` | `c_t^n/V_t = 1/V`; moment `0 ≤ n·Ent_1 = 0` | Holds |
| Weak Harnack, essential infimum | `B_4 ⊂ ℝ²`, `u = 1`, `u(0) = 0` | old: `4π ≤ C·0`; new: `4π ≤ C·1` | Repaired |
| Weak Harnack, `m = 1`, `q = 3/4` | `u_ε`, `ε = 10⁻²`, `10⁻⁴`, `10⁻⁶` | `L¹` norm `3.96, 3.9996, 3.999996`; forcing norm `0.81, 0.175, 0.0376` | Fails; `q ≥ 1` added |
| Weak Harnack, `m = 1`, `q = 1` | same family; flux argument | forcing norm `→ 2`; `u ≤ (1 + Λ/λ)u(x₀) + 3r‖f‖₁/λ` | True; endpoint kept |
| Weak Harnack, `m = 2`, `q = 1` (excluded) | `u_ε = ½log(|x|² + ε²) − log ε` | `‖f_ε‖_{L¹} = 2π`, `inf = 0`, `‖u_ε‖_{L¹(B_2)} = 4π log(1/ε) + O(1) → ∞` | Strict `q > m/2` needed |
| §5.4 chart identity | flat `ℂ`, `g = I` | `∂_i∂_i u = Δu = 2Δ_ω u` | Correct factor |
| Generalized Newton–Maclaurin, positive cases | `(1, 2, 3)`: `(3,2,2,1)`, `(3,1,2,0)`, `(3,0,1,0)`; `λ = e` | `1.6364 ≤ 1.8333`; `1.7321 ≤ 1.9149`; `1.8171 ≤ 2`; `λ = e`: `1 = 1` | Holds |
| Generalized Newton–Maclaurin, index conditions | `(2,0,2,1)`, which has `l > s`; `(2,1,3,0)`, which has `k > r` | `1.9149 > 1.8333`; `1.8333 > 1.8171` | Both conditions needed |
| Generalized Newton–Maclaurin, cone and `r = 1` | `λ = −e` (`n = 3`, `(2,0,1,0)`); `r = 1` | `1 > −1`, false off the cone; `r = 1`: `S_1 = S_1` | `λ ∈ Γ_r` needed; trivial case fine |
| `isHyperbolic_sigma` | `n = k = 1`; `n = 1`, `k = 2`; `k = 0` | `σ_1(e) = 1`, root `−x`; `σ_2(e) = 0`; `σ_0 = 1` | Guard added |
| §6.2 torus eigenvalue vector | `ε = 1/(4π²)`, `x_1 = 0` and `1/2` | `q = 1/2` gives `(1, 1/2)`; `q = 3/2` gives `(3/2, 1)`; `det = q = e^F` | Sorted |
| §1.5 Euler Check | `σ_2^{1/2}`, `T = diag(1, 4)` | `λ(T) = (4, 1)`; `∂f = (1/4, 1)`; `∇F = diag(1, 1/4)`; `tr = 2`, `det = 1/4` | Consistent |
| Admissible-cone API: `Γ_k` | `n = 2`, `Γ_1`, `Γ_2` | half-plane and quadrant: open, symmetric, cones, between `Γ_2` and `Γ_1` | True |
| Admissible-cone API: intersections | binary; the infinite family `C_ε` | binary: open; infinite: `(1, 0)` belongs, `(1, −δ) ∉ C_ε` for `ε < δ/(1 − δ)` | Infinite version false; API says finite |
| Admissible-cone API: positive sum | `(1, −1/2) ∈ Γ_1` | sum `1/2 > 0` | True |
| Shifted-quadrant Check | `(−1/2, 1)`, `(−3/2, 3)`, `(−1/2, −1/2)` | first in, second out; third in with sum `−1` | Not admissible |
| Non-convex §1.4 cone | `(1, −0.4)`, `(1, 0.1)`, midpoint `(1, −0.15)`; old increment `(0, 0.25)`; new increment, sum `(1.01, −0.15)` | wedge bounds `(−0.5, −0.333)`: endpoints in, midpoint out; `(0, 0.25) ∉ Γ_2`; `(1.01, −0.15)`: `−0.15 > −0.3367`, out | Admissible, not convex, fails `Γ + Γ_n ⊆ Γ`; old increment invalid |
| §4.1 monotonicity witness | `f = σ_1` on `Γ_2`, `f = 10σ_1` on the wedges | `f(1, −0.4) = 6 > f(1.01, 0.1) = 1.11` with `μ ≤ ν` | Hypothesis needed |
| §1.4 monotonicity without convexity | `Γ = {two coordinates > 0, σ_1 > 0} ⊂ ℝ³` | `(1,1,−1.5)` and `(−1.5,1,1)` in; midpoint `(−0.25,1,−0.25)` out; segment `(1, 1, −1.5 + 1.5t)` has `σ_1 = 0.5 + 1.5t > 0` | Non-convex, yet segments stay in `Γ`; text repaired |

## Ownership and overlaps

The only object stated anew is the generalized Newton–Maclaurin inequality.
- No other owner was found. `roadmaps grep` found no Newton-inequality target for `σ_k` on main or at the open heads, and none in the pinned Mathlib or Tau Ceti.
- The open roadmap NumberFieldEnumeration (`TauCetiRoadmap/NumberFieldEnumeration/README.md:194`) states a Maclaurin coefficient bound for nonnegative reals, `e_k/C(n,k) ≤ (e_1/n)^k`. It is a special case of the Maclaurin inequality this roadmap has planned since round 1, on the closure of `Γ_n` by continuity. Neither roadmap supplies the other, and it is not earlier in this roadmap's merge order. This repair does not re-plan it, and it is not settled here.

The weak-Harnack gap keeps PDE §5.4 (E23) as its supplier. On main, that section plans the weak Harnack inequality for nonnegative solutions of the homogeneous equation (`TauCetiRoadmap/PDE/README.md:1997–2005`). The forced supersolution form remains the declared gap.

`scratch/overlaps.md` lists no open pull request that changes this roadmap and no dropped or revision-only id. Ownership against the listed open pull requests was checked through `roadmaps grep`.

## Sources

No new source was fetched, and nothing was added to `needs-references.toml`. These locators were read in the sources cache:
- gpt2023 line 82–83 (definition of `Ent_p`), line 713–735 (proof of Theorem 3(c)) and line 804–844 (Lemma 6);
- spruck2005 line 11279–11293 (Lemma 2.10).

gilbarg-trudinger2001 Theorem 8.18 is settled as uncertified and is cited by its locator.

**Source issue (for the review record).** At gpt2023 line 730–735, the proof of Theorem 3(c), arXiv v1 p.16, bounds `V⁻¹∫F e^{nF}` by `Ent_p` for `p ≥ 1`. The bound should be `Ent_1 ≤ 1 + Ent_p`. The error affects the proof, not the statement.

## For the maintainer

- No Lean name, section number or target id of this roadmap changed. No other roadmap cites anything here that moved.
- The weak-Harnack contract (`gap:weak-harnack-supersolutions`, PDE §5.4) is now stated with the essential infimum, `q ≥ 1`, `q > m/2` and finite `q`. When PDE §5.4 is revised to supply it, this is the exact form consumed.
- NumberFieldEnumeration's Maclaurin bound for nonnegative reals overlaps with this roadmap's §2.1 Maclaurin inequality (a special case). If both are accepted, one should cite the other.
