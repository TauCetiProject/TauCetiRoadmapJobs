# Repair of RiemannianManifoldsWithConvexBoundary (design, round 4)

Review settled: `reports/REV-DESIGN-RiemannianManifoldsWithConvexBoundary~3.md` (verdict in
`design/review.json`), five findings R01–R05. All five were checked against the design and the
pins, found correct, and applied. Files edited: `packages/RiemannianManifoldsWithConvexBoundary/design/README.md`
and `design/plan.json`. `sources.toml` is unchanged: no new source was needed, and none was
requested. This is the design stage, so there is no `Suggested.lean`.

## R01 (P1) — applied

Old: §4.4 said that on the whole half-tube `{0 ≤ r < ε(q)}` with 4.3's `ε`, `r = d_M(·, ∂M)`. New: that half-tube is still the collar onto `W ∩ M`. A separate item gives a smooth `η ≤ ε`, constant for compact `∂M`, with `E({|r| < η}) ⊆ W'`, so that `r = d_M` on `E({0 ≤ r < η})`. The unequal-strip negative control is added.

- Verified: with `ρ = x(1 − x)` on `ℝ²` and `ε = 0.9`, `0.01` on the two boundary lines, the strips `(−0.9, 0.9) × ℝ` and `(0.99, 1.01) × ℝ` are disjoint, and `ρ(E(q, r)) = r(1 − r)` has the sign of `r`. `dE(∂_r) = ±e₁` is unit and orthogonal to `e₂`. So all of 4.3's tube conclusions hold. But at `(0.8, 0)`, `r = 0.8` while `d_M = 0.2`.
- Route for `η` (README §4.4): `m(q) := sup{s ≤ ε(q) : {q} × (−s, s) ⊆ E⁻¹(W')}` is positive and lower semicontinuous by the tube lemma. A partition of unity on the second-countable `∂M` gives a smooth `0 < η < m`. For compact `∂M`, `m` attains a positive minimum, so `η` can be constant.
- The Gauss-lemma metric formula and `II = −½ ∂_r h_r|₀` stay on `{|r| < ε(q)}`, since they do not need the distance property.
- Other places changed:
  - §4.3: `ρ̂ = d_M(·, ∂M)` "near `∂M`" is now explicitly "on `W₁ ∩ W' ∩ M`". It was true before, but it had the same unstated domain.
  - §4.4 *Needs* and Layer 4 Dependencies now list Mathlib `SmoothPartitionOfUnity` / partitions of unity.
  - Layer 4 Examples list the strip.
  - Plan target 4.4: statement, the `mathlib:SmoothPartitionOfUnity` prerequisite, and a new test `unequal_strips`.
- Searched for every other use of `d_M`/`r = distance`. Plan 4.3.3 already says "on `W' ∩ M`". The ball Checks (4.3.3 `ball`, 6.1.1 signed distance `R − |x − c|`) are globally true, since `d_M(x, ∂M) = R − |x − c|` on the whole ball. 4.6 uses only `ρ̂ = r` on `W₁`, not the distance.

## R02 (P2) — applied

Old: plan 6.1.1 gave the root formula for `τ(x, v)` with no speed condition, and plan 6.1.2 and README §6.1 gave `τ ≤ diam D` with no domain. New: the root formula is for `x ∈ B̄(c, R)`, `|v| = 1`. Homogeneity gives `(−⟨x−c,v⟩ + √(⟨x−c,v⟩² + |v|²(R² − |x−c|²)))/|v|²` for `v ≠ 0`, and `τ(x, 0) = ∞`. The diameter bound is on `SD`, with `≤ diam D/|v|` for `v ≠ 0`.

- Verified: in the unit ball, `τ(0, 0) = ∞`, `τ(0, e₁/4) = 4` and `τ(0, e₁) = 1`. The unqualified root gives `1, 1, 1`, and `4 > diam = 2`. This is the native predicate's behaviour: `TauCeti.Manifold.IsGeodesicCurveOn` (TauCeti/Geometry/Manifold/Riemannian/Geodesic/Basic.lean:102–111) has no speed field.
- Speed-1/4 negative control: README §6.1 Check "Speed" and plan 6.1.1 test `speed`.
- §5.5.1: the bound is now read pointwise on `SM` (README §5.5 first item, plan 5.5.1 statement). The ball Check reads `Xf = |v|² = 1` on `SM`.
- Same pattern elsewhere: the §5.4 ball Checks for `σ`, `T` and the fold form now say "for `(x, v) ∈ SM`". Off `SM` the values are `−2⟨x, v⟩/|v|²` and `(1 − |x|²)/|v|²`. This is in README §5.4 and plan tests 5.4.4 `ball` and 5.4.5 `ball`. Plan 6.1.2 gains the prerequisite `target:5.2` (homogeneity).
- Every other exit-time Check (5.2 disc/annulus/interval, 5.5.2 and 6.3 arcs `τ(θ, ±1)`, 6.1 disc) already uses unit vectors.

## R03 (P1) — applied

Old: plan 5.5.1 said "Compact M without boundary: no f has Xf > 0", and plan 5.5.2 said "Closed M: all three conditions fail". New: both say "nonempty", as the README already did. An empty-domain positive Check (`N = ℝ²`, `ρ ≡ −1`; all three conditions true) is added to README §5.5 and plan 5.5.2 (`empty_domain`). The extrema bound is pointwise on `SM`.

- Verified: `TauCeti.IsRegularValue` (TauCeti/Geometry/Manifold/RegularValue.lean:89–92) is `∀ x, f x = y → …`, so a value outside the range is regular, and `M = ∅` is an admissible regular domain. Then `SM = ∅`, non-trapping is vacuous, `C^∞(∅)` is one point (so `X` is surjective), and `Xf > 0` is vacuous: (true, true, true).
- For nonempty compact boundaryless `M`, `SM` is nonempty and compact (the fibres are spheres `Sⁿ`, and `S⁰ = {±1}` is nonempty), so `Xf = 0` at a maximum: (false, false, false).
- The equivalence theorem 5.5.2 is unchanged and still admits empty `M`, as the review asked.

## R04 (P2) — applied

Old: plan 2.3.2 test "Unit ball: best constant c = 1" for every `n ≥ 0`. New: the test is restricted to `n ≥ 1` (a unit `u` gives `1 ≥ c`). A new test `unit_ball_dimension_one` covers `[−1, 1]`: every `c > 0` works and there is no largest constant. README §2.3, which had no ball Check, gains the same Check, so README and plan agree. Target 2.3.2 is kept in all dimensions.

- Searched for other sharpness claims. "τ ≤ 2 attained by diameters" (5.5) is also attained for `n = 0` (`τ(−1, +1) = 2`). The bound `r_p ≤ π/2` (6.4) is already restricted to `n ≥ 1`.

## R05 (P3) — applied

Old: the slanted-metric Check said "`e₀` has `g(e₀, e₁) = a ≠ 0`" for all `|a| < 1`. New: the failure is stated for `a ≠ 0`, with the witness `a = 1/2`: `ν_in = (2/√3, −1/√3)` and `g(e₀, e₁) = 1/2`. At `a = 0`, `e₀` is the correct normal. Changed in README §1.2 and plan test 1.2 `slanted_metric`. The formula keeps `|a| < 1`.

- The Layer 1 Examples already say "non-diagonal", so no other occurrence needed a change.

## Checks run

**Dependency check**, exact output:

```text
candidate: RiemannianManifoldsWithConvexBoundary is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 227 roadmaps, 2052 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The placement after MathematicalBilliards is the design-stage default, not a supplier claim.

**Citation resolution** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere. The only library name newly added to a *Needs* line is Mathlib `SmoothPartitionOfUnity` (Mathlib/Geometry/Manifold/PartitionOfUnity.lean:123), which the Mathlib contract already lists.

**Plan integrity** (script over `plan.json`): 49 targets, 137 internal prerequisite edges (one added, 6.1.2 → 5.2), all resolve, no cycle. There are 127 tests (four added: `unit_ball_dimension_one`, `unequal_strips`, `empty_domain`, `speed`). The JSON parses, and the file format (indent, no trailing newline) is unchanged.

**Overlaps** (`scratch/overlaps.md`): no open pull request changes this roadmap, drops a cited id, or defines an id cited here. No construction was added this round: `η` is a radius inside 4.4, not a new carrier. So the round-3 ownership audit against main and the open heads is unaffected and was not redone.

**Suggested.lean**: not present at the design stage. No Lean declaration was added or changed, so there was nothing to `#check` and no Lean command was run.

## Adversarial mathematics pass

One row per statement added or changed this round.

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| 4.4 collar on `{0 ≤ r < ε}` | strip, `ε = 0.9 / 0.01` | image `[0, 0.9) × ℝ ∪ (0.99, 1] × ℝ = W ∩ M`; `ρ(E) = r(1 − r) ≥ 0` iff `r ≥ 0` | diffeomorphism onto `W ∩ M` holds | kept |
| 4.4 distance on `{0 ≤ r < ε}` (old) | strip at `(0.8, 0)` | `r = 0.8`; `d_M = min(0.8, 0.2) = 0.2` | false | replaced by `η` |
| 4.4 distance on `{0 ≤ r < η}` (new) | strip `η = 0.4 / 0.005`; `[0, 1]` (`n = 0`), `ε = η = 0.4`; annulus `1 ≤ |x| ≤ 2`, `η = 0.49`; `∂M = ∅` | strip: `x ∈ [0, 0.4)`, `d = min(x, 1 − x) = x = r`; `x = 1 − r`, `r < 0.005`, `d = r`. Interval: `d(0.3) = 0.3`. Annulus at `|x| = 1.49` from inner circle: `r = 0.49`, `d = min(0.49, 0.51) = 0.49`. Empty: nothing to check | holds | added |
| `m` lower semicontinuous | strip, `q = (0, y)` | `m = 0.5` on `{x = 0}` (`min(r, 1 − r) = r` iff `r ≤ 1/2`), `m = 0.01` on `{x = 1}`; `η = 0.4 < 0.5`, `0.005 < 0.01` | positive, lsc, `η < m ≤ ε` | added |
| 4.3 `ρ̂ = d_M` on `W₁ ∩ W' ∩ M` | unit ball, `ε = 1/2`, `ε₁ = 1/4` | `ρ̂ = 1 − |x| = d_M` for `3/4 < |x| ≤ 1` | holds | domain made explicit |
| 6.1 ball `τ`, unit speed | `R = 1`, `x = 0`, `v = e₁`; `x = e₁/2`, `v = e₁`; `x = e₁`, `v = e₂` | `0 + √1 = 1`; `−1/2 + √(1/4 + 3/4) = 1/2`; `0 + √0 = 0` (glancing) | holds | domain added |
| 6.1 ball `τ`, general speed | `x = 0`, `v = e₁/4`, `3e₁`; `x = e₁`, `v = 2e₁`, `−2e₁` | `(√(1/16))/(1/16) = 4`; `√9/9 = 1/3`; `(−2 + 2)/4 = 0` (outward); `(2 + 2)/4 = 1` | agrees with `τ(x, λv) = τ(x, v)/λ` | added |
| 6.1 `τ ≤ diam D` | ball `v = e₁/4`; `[−1, 1]`, `v = ±1`, `1/4`; `D = ∅` | ball: `4 > 2` (old, false), `4 ≤ 8` (new); interval `τ(−1, 1) = 2 = diam`, `τ(−1, 1/4) = 8 ≤ 2/(1/4) = 8`; empty `SD`: vacuous | new form sharp, true | domain added |
| 5.4 `σ`, `T` on `SM` | ball `x = e₁/2`, `v = e₁`; off `SM`, `v = 2e₁` | `σ = 1/2 − 3/2 = −1 = −2⟨x, v⟩`, `T = 3/4 = 1 − 1/4`; off: `σ = 1/4 − 3/4 = −1/2 = −2⟨x, v⟩/|v|²`, `T = 3/16 = (3/4)/4` | unit-speed formulas only on `SM` | domain added |
| 5.4 fold form on `SM` | ball, unit `v` | `Q(√a) = (−2⟨x, v⟩ + 2√(⟨x, v⟩² + 1 − |x|²))/2 = τ(x, v)`; `Q(−√a) = −τ(x, −v)` | holds | domain added |
| 5.5.1 bound pointwise on `SM` | unit ball `f = ⟨x, v⟩`; `[−1, 1]`, `f = x v`; `M = ∅` | ball: `Xf = 1`, bound `2`, `τ(−e₁, e₁) = 2`; interval: `Xf = v² = 1`, `max f = 1`, `min f = −1`, bound `2 = τ(−1, 1)`; empty: no point | holds; no extremum asserted on `∅` | reworded |
| 5.5.1/5.5.2 nonempty closed `M` | flat torus `ℝ²/ℤ²`; `S¹` | `SM` compact nonempty; `f = ⟨v, e₁⟩` has `Xf = 0` everywhere; `τ ≡ ∞` on `SM` | (F, F, F) | "nonempty" added |
| 5.5.2 empty domain | `N = ℝ²`, `ρ ≡ −1` | fibre `ρ⁻¹(0) = ∅`, regular; `SM = ∅`; `|C^∞(∅)| = 1` | (T, T, T), consistent with the equivalence | Check added |
| 2.3.2 ball sharpness | `n = 1` (disc), `n = 2`; `n = 0` | unit `u`: `II(u, u) = 1 ≥ c` gives `c ≤ 1`, `c = 1` works; `n = 0`: `0 ≥ 0` for `c = 2, 100` | best constant 1 only for `n ≥ 1` | restricted; control added |
| 1.2 slanted normal | `a = 1/2`, `a = 0`, `a = −1/2` | `a = 1/2`: `(e₀ − e₁/2)/√(3/4) = (2/√3, −1/√3)`, `g(ν, ν) = 4/3 − 2/3 + 1/3 = 1`, `g(e₀, e₁) = 1/2`; `a = 0`: `ν = e₀`, pairing `0`; `a = −1/2`: `ν = (2/√3, 1/√3)`, `g(e₀, e₁) = −1/2 ≠ 0` | failure exactly for `a ≠ 0` | qualified |

## For the maintainer

- No name that another roadmap cites changed. The plan target names (`boundaryNormalCoordinates`, `exitTime`, `isNonTrapping_of_X_pos`, `isNonTrapping_tfae`, `euclideanBall`, `convexEuclideanDomain`, `exists_pos_le_boundarySecondFundamentalForm`) and the section numbers are unchanged.
- §4.4 now says the distance identity holds on a possibly smaller collar of radius `η`. A future consumer that wants `r = d_M` (boundary rigidity, lens data) should cite 4.4's distance-collar item, not the tube radius `ε` of 4.3.
- No suspicious instructions were found in the review or in any other text read.
