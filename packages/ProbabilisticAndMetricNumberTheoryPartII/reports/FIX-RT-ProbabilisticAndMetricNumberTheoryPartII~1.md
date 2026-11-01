# Repair of red-team round 1 (passes a and b)

Findings of review r1a (`F01`–`F11`, cited below as `a-F01`…) and of review r1b (`F01`–`F04`, cited as `b-F01`…) are grouped under their review. Overlaps: a-F05 (missing
headlines) contains b-F01 (n = 3 counting) and b-F02 (p-series enclosure); each is settled once
below and cross-referenced.

# Review r1a

## F01 (P1) — applied

§3.2 bullet "normalised pushforward sum agrees with `f ↦ ∫ L_σ f dμ`" → the unnormalised weighted
pushforward `Σ_a (q_a^{−σ} μ)∘F_a^{−1}` evaluates `f` as `∫ L_σ f dμ`; its probability normalisation
gives `(∫ L_σ f dμ)/(∫ L_σ 1 dμ)`. Witness added: `n = 3, σ = 2, μ = δ₀, f = 1` gives
`ζ(2) − 1 ≈ 0.645` and `1`.

## F02 (P2) — applied

§1.4 "unique fixed point of every branch and of every finite word lies in `K`" → every nonempty
finite word has a unique fixed point in `Δ`, lying in `K`; the empty word fixes all of `Δ`, with no
uniqueness or membership claimed (for `n = 4` it fixes `(1/3, 1/3, 1/3) ∉ K`).

## F03 (P3) — applied

§5.1 Check "without `r` ... non-lattice when `c ∉ δℤ`" was false (delays `1/2, 3/2`, `t = 4π`,
`r = 0`). New Check: one-point space, delays `√2`, `√2 + 1`: with phase, `t = 2π`,
`r = −2π√2`; without phase `t = 2πk` and `k√2 ∈ ℤ` force `k = 0`. The distinction holds exactly
when `c/δ` is irrational; the rational example is kept as a control.

## F04 (P3) — applied

§0.2 off-simplex Check "`log q` and the power are undefined" → total Lean values: `w_j = 3, A = 0`
gives `q = −1`, `Real.log q = 0`, complex `q^{−3} = −1` while `exp(−3 log q) = 1`; agreement and
geometric meaning only where `q > 0`, which holds on the simplex.

## F05 (P2) — applied

Added to `Suggested.lean` and the README: `wordMap` (chronological word map, real body),
`eventual_contraction` (§1.3), `birkhoff_contraction` (§3.3), `counting_three` (§7.2),
`conformal_exponent_pseries` (§7.4). Module docstring now lists stated headlines and names as
not statable: operator-norm holomorphy (§2.4), uniform gap (§4.3), renewal-transform pole (§6.3),
all needing `C¹(Δ; ℂ)`; Rauzy comparison (§7.3), needing the attractors.

Notes on the formulation. Birkhoff is stated in the infimum form (no Hilbert-distance definition,
so no junk `sSup`/`sInf` values): given `a f ≤ g ≤ b f`, `a > 0`, there are `a′ > 0`, `b′` with
`a′Tf ≤ Tg ≤ b′Tf` and `log(b′/a′) ≤ tanh(Δ/4) log(b/a)`. It holds for salient convex cones
(`PointedCone ℝ V` with `x, −x ∈ C → x = 0`) in arbitrary real vector spaces (Liverani's footnote 2
waives topology); proof: apply the diameter bound to `g − af`, `bf − g`, which yields explicit
`a′ = (μa + b)/(1 + μ)`, `b′ = (b + λa)/(1 + λ)`, so no closedness/attainment is needed. `0 ≤ Δ`
is required: with `T = 0`, `Δ < 0` the hypotheses hold only through `Real.log` of a negative ratio.
The README §3.3 bullet and the OptimalTransport ownership line were rewritten to this generality.

## F06 (P2) — applied differently

§2.2 no longer cites §3.2: the forward sentence "every eigenvalue of an eigenprobability (§3.2) lies
between the bounds" is deleted (the same fact is already §3.2's first API bullet), so
`IsEigenprobability` stays in §3.2. §6.6/§6.7 swapped: Conformal measures is now §6.6, the uniform
counting theorem §6.7; references in §3.2, §6.1, §7.2, §7.5 and Lean order updated. The §6.6 route
now rules out `s ≤ 1` first (divergent `Σ_a q_a^{−s}`, native sum `0`, giving `0 = 1`).

## F07 (P3) — applied

Added C_a Checks (constant `1` in every `C_a`, `−1` in none; `e^{ax}` with equality, `e^{(a+ε)x}`
excluded), `C1BoundedOn` Checks (constant `1`: bound `1`; `2x₀ + 3` on `[0, 1/2]`: bound `6`, `5`
fails). §3.6 restatement → `sin(kx)/k` Check. §2.4 restatement moved to prose; Checks:
`∂_s L_s 1(0)|_{s=2} = ζ′(2) ≈ −0.938`, second derivative `≈ 1.989`.

## F08 (P2) — applied

Supplier contract: for `λ > 0` consume `squaredSinc λ`, nonnegativity, `squaredSinc_mass`,
`squaredSinc_fourier`, tail concentration; evenness for all `λ`; `λ = 0` (mass 0) and `λ = −1`
(value `−1/π` at 0) recorded. §6.4 and §6.5 now say `λ > 0`; §6.4 gained the `squaredSinc 0`
negative control. Verified at ArithmeticDirichletSeriesPartII `Suggested.lean` (`squaredSinc_mass`
has `0 < ell`).

## F09 (P2) — applied

Verified on main: AlgebraicTopology README Stage 2, item 7, and `Suggested.lean` declare
`brouwerFixedPoint_compactConvex_continuousOn` and `..._finiteSpan` (normed ambient). Supplier edge
DifferentialGeometry 10.5 → AlgebraicTopology Stage 2, item 7 (scope, contracts, §3.1 route and
*Needs:*, Layer 3 Dependencies). The span of the hull vertices is transported to a normed model by
Mathlib `LinearEquiv.toContinuousLinearEquiv` (finite-dimensional Hausdorff TVS), since the
ambient space is only locally convex. BanachAlgebras A8 named as owner of Banach Schauder.

## F10 (P2) — applied

§5.2 "characteristic polynomial `(1 − T)^{n−3}(−T)(…)`" → `det(γ − T·I_n)` equals that (GMR19 line
2135); monic `det(T·I_n − γ) = T(T − 1)^{n−3}(T² − (A + 1)T − 1)`. Check added: `n = 3, A = 0`,
`M = [[0,1,0],[0,0,1],[0,1,1]]`, values at `T = 2` are `−2` and `2`.

## F11 (P2) — applied

§5.2 "fixed ray is a boundary point" → boundary (`w₁ = 0`) for `n ≥ 4`; for `n = 3` all coordinates
are positive and the chart point `1/(1 + t_A) ∈ (0, 1/2)` because `t_A > 1` (uses
`t_A(t_A − A) = 1 + t_A`). Check: `A = 0` gives `(3 − √5)/2 ≈ 0.382`.

# Review r1b

## F01 (P2) — applied differently

Added `counting_three` (exactly the reviewer's statement) with README target in §7.2 and a Check
that `h₂` in place of `B` contradicts the counts. `conformal_exponent_three` not added: it follows
in a few lines from the stated `conformal_exponent` (d = 1) and `eigenprobability_three` (both
`s` and `2` equal the unique exponent), so it would be a corollary of two stated headlines; §7.2
keeps that derivation in prose.

## F02 (P3) — applied

Added `conformal_exponent_pseries` (reviewer's statement, no `1 ≤ d` hypothesis: for `d = 0` the
hypothesis is impossible) as the §7.4 target; Summary names it. Check values: `d = 1, β = 2`:
`0.6449 ≤ 1 ≤ 1.5797`.

## F03 (P3) — applied

Verified: MN75 footers at line 76 ("166") and line 113 ("167"), Theorem 2.6 at MN75 line 99, proof
past line 113. README §3.1 and `sources.toml` locator → "Theorem 2.6, p.167, with its proof on
pp.167–168; Lemma 2.3, p.166".

## F04 (P3) — applied

Verified GMR19 lines 2090–2092 (footnote 21). §0.5 citation split: chain rule and Leibniz → GMR19
Lemma 46 / proof of Lemma 38, pp.798–799; compact inclusion → Arzelà–Ascoli, used by GMR19 footnote
21, p.794. `sources.toml` GMR19 locator gains "Definition 40 with footnote 21"; LIV95 gains
"footnote 2".

## Checks

- Elaboration: `lake env lean packages/ProbabilisticAndMetricNumberTheoryPartII/Suggested.lean`
  from the content checkout: exit 0, 0 errors, 15 `declaration uses 'sorry'` warnings (15 theorems;
  9 definitions with real bodies). No `TauCeti.*` import.
- `#check @name` audit: one scratch file with `#check @` for all 24 declarations, elaborated once.
  No section `variable`s exist, so no binder can drop; the five new types print as written
  (`birkhoff_contraction` keeps both salience hypotheses, `0 ≤ Δ`, `hΔ`; `conformal_exponent_pseries`
  uses real `rpow`). Compared with README §§0.3, 1.3, 3.3, 7.2, 7.4: generality agrees. No change.
- Dependency check output:

```text
depcheck: 149 roadmaps, 1012 edges, 0 problem(s)
```

  No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere.

## Adversarial pass on new or changed statements

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| `wordMap` | `[]`; `[(0,0)]`, `d = 1`, `x = 0` | identity; `branchMap (0,0) 0 = 1/2` (`q = 2`, `F = 1/2`) | matches Conventions `F_{a::u} = F_u ∘ F_a` and `wordDelay` order |
| `eventual_contraction` | `u = []`; `n = 3` single branch; `n = 3` pair `A = B = 0` at `x = 0` (Gauss coordinate) | norm `1` forces `D ≥ 1`; `|F_A′(w₁)| = q_A^{−2} ≤ 4/9`; `1/4` | holds; `d = 0` trivial, kept `1 ≤ d` for README agreement |
| `birkhoff_contraction` | `[[2,1],[1,2]]`, `f = (1,1)`, `g = (1,2)`; `T = 0`; `g = af` | `log(5/4) = 0.223 ≤ (1/3)log 2 = 0.231`; `a′ = b′ = 1`, `0 ≤ tanh(Δ/4)·log(b/a)` needs `Δ ≥ 0`, `b ≥ a` (salience of `C₁`); `log 1 = 0` | holds; `0 ≤ Δ` added |
| `counting_three` | `w₁ = 0, 1/4, 1/2`, `R = 150` | constants `0.304, 0.405, 0.608`; predictions `6839, 9119, 13678` vs counts `6858, 9124, 13699` (both reviews); denominator `1 − x 0 ≥ 1/2` | holds |
| `conformal_exponent_pseries` | `d = 1, β = 2`; `d = 0`; `β ≤ 1` | `0.6449 ≤ 1 ≤ 1.5797`; hypothesis gives `0 = 1`; non-summable, native sum `0`, hypothesis gives `0 = 1` | holds |
| §3.2 pushforward bullet | `n = 3, σ = 2, δ₀, f = 1` | `0.645` unnormalised, `1` normalised | fixed |
| §5.1 Check | `√2, √2+1`; `1/2, 3/2` | phases `0, −2π` with `r = −2π√2`; `−2π, −6π` with `r = 0` | fixed |
| §5.2 polynomial | `n = 3, A = 0, T = 2` | `det(M − 2I) = −2`, monic `2` | fixed |
| §5.2 fixed ray | `n = 3, A = 0` | `1/(1 + 1.618) = 0.382 ∈ (0, 1/2)` | fixed |
| §2.4 derivative Check | `n = 3, w = (0,1), f = 1, s = 2` | `−Σ log k/k² = −0.9375`; `Σ (log k)²/k² = 1.9892` | new |
| §3.3 C_a Checks | `1`, `−1`, `e^{ax}`, `e^{(a+ε)x}` | `0 ≤ a`; `−1 < 0`; `a e^{ax} = a f`; `(a+ε) f > a f` | new |
| §0.4 Checks | `1`; `2x₀+3` on `[0,1/2]` | `1`; `4 + 2 = 6` | new |
| §0.2 off-simplex | `q = −1`, `s = 3` | `Real.log(−1) = 0`, `(−1)^(−3) = −1` (cpow), `exp(0) = 1` | fixed |

## Ownership and suppliers

New supplier edge: AlgebraicTopology (on main). Dropped edge: DifferentialGeometry. Birkhoff for
general cones: OptimalTransport 13B item 9 owns only finite positive kernels; this roadmap keeps
the general statement. `eventual_contraction`, `counting_three`, `conformal_exponent_pseries` are
specific to this roadmap's branches. No plan gap added. No name another roadmap cites was changed;
`uniform_counting` and `conformal_exponent` keep their names (only their section numbers swapped:
conformal measures §6.6, counting §6.7).

## For the maintainer

- Pass b's "Pass-a and round-1 findings" section confirms two findings of an earlier review
  (the (5.1) index range and Tau Ceti's `IsCompactOperator` Riesz declarations in §3.5's compact
  Check); they are not numbered findings of these two reviews and were not acted on here.
- No suspicious instructions found in the reviews.
