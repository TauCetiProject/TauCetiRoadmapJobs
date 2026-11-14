# FIX-DESIGN-CompressibleEulerEquations~5

Repair of the six findings of `REV-DESIGN-CompressibleEulerEquations~4`. All six were verified
and applied. Files changed: `packages/CompressibleEulerEquations/design/README.md` and
`packages/CompressibleEulerEquations/design/plan.json`; `sources.toml` needed no change (no
source was added or re-keyed, no text fetched).

## F01 (P2) — applied

Change: Scope "LorentzianGeometry is a consumer, never a supplier" → LorentzianGeometry owns the
acoustical form (§7.3, §6.1, §6.3), Lipschitz causal curves (§8.2) and `D⁺_D(S)` in subsets
(§12.6). New contract `From TauCetiRoadmap.LorentzianGeometry`. §3.1–§3.3 now import these and keep
only determinant/frame, covector cones, Galilean covariance, symbol identification, integral
characterisation, limit curves, compact pasts, openness, idempotence, slabs, past-closed restriction.

Verified at the head of #2232 (`roadmaps show LorentzianGeometry --pr 2232`): §7.3 defines
`g = −c² dt² + h(dx − v dt, dx − v dt)`, `g⁻¹`, `B`; §12.6 defines `IsFutureCausalCurveIn`,
`IsPastInextendibleIn`, `futureDomainOfDependenceIn` (all in its `Suggested.lean`); its Downstream
consumers names the hyperbolic-PDE/Euler roadmap as consumer; it consumes nothing here (no cycle).
The board design `packages/LorentzianGeometry` also names this roadmap as its consumer (its scope and
line 661), so the old sentence was wrong for both texts.

Deleted as duplicates: the definitions of the form, causal vectors, causal curves,
past-inextendibility and `D⁺_D(S)`; the bullets "restriction and concatenation", "comparison with
piecewise `C¹` curves" (now one sentence citing §8.2/§12.6 there), and "`S ⊆ D⁺_D(S)`, monotone,
slice identity"; plan target 3.2.4 and the API entries `inverse`/`signature`/`causal_iff` (3.1),
`restrict_concat` (3.2), `subset` (3.3). Kept, each with its differing clause, after checking against
#2232 §8.2, §8.3, §11.4, §12.6: past-inextendible extension (not in §12.6), `J⁻_D` (causal pasts only
in a spacetime, §8.3), limit curves (§11.4 is spacetime curves with auxiliary arc length), openness
(absent), idempotence (§12.6 determination needs `S` closed in an open `U`, no boundary), slabs
(§12.6 slab = slice identity only), Galilean covariance (a boost is not an isometry of one field).
The zero-vector bridge is kept (Scope and §3.1). Also changed: Summary, How to read the build,
Conventions (time orientation `[B]` agrees with `τ > 0`, witness `g(B, (1, 1/2)) = −1`), Layer 3
*Needs* and Dependencies, §8.4 *Needs* (concatenation now from §12.6 there), Part II scope bullet and
consumer bullet (name LorentzianGeometry), Downstream consumers (LorentzianGeometry bullet and the
"Lorentzian causality theory, when planned" bullet deleted: #2232 §12.6 is that identification), plan
`suppliers`, `consumers` (LorentzianGeometry, LorentzianGeometryPartII removed), `summary`, targets
3.1, 3.2, 3.2.3, 3.3, 3.3.2, 3.3.3, 8.4.

## F02 (P2) — applied

Change: §5.1 "Define a linear symmetric hyperbolic operator … `Sym_N`" → a `LinearSystem n N` of
SymmetricHyperbolicSystems §1.2 with `LinearSystem.IsSymmetricHyperbolic` (constant `λ₀`) plus the
coefficient bounds; differing clauses added to §5.1 (Sobolev class, quotient `E/Λ`), §5.2 (extends
its §2.2) with the speed/cone bridge and transport Check, §5.4 (class against its §7.3). New Scope
bullet and contract section.

Verified at the head of #2246: §1.2 `LinearSystem`, `LinearSystem.apply`,
`LinearSystem.IsSymmetricHyperbolic` (`Matrix.IsSymm`, `λ|ξ|² ≤ ξ·A⁰ξ`); §2.1 identity with
`K = ∂ₜA⁰ + Σⱼ∂ⱼAʲ − B − Bᵀ`, the same `K` as §5.1 here (recomputed: `B = bI` gives `E = e^{−2bt}E(0)`
in both); scope excludes quasilinear systems and `Hˢ`; it consumes nothing here. Bridge proved: for
`ζ₀ ≥ c|ζ′|`, `ξ·σ(ζ)ξ ≥ (ζ₀ − c|ζ′|)ξ·A⁰ξ`; covectors `(c, ±ω)` give the converse; `c = 0` (forces
`Aʲ = 0`) has no round cone.

§5.2 now uses #2246 §2.1 in local form (by cutoffs `ψu`, `ψA⁰ + (1 − ψ)λI`, `ψAʲ`, `ψB`, which keep
the predicate). Also: `Matrix.IsSymm` and `Matrix.isHermitian_iff_isSymm` (`Mathlib/LinearAlgebra/
Matrix/Hermitian.lean:69`) in the contracts; Summary, How to read the build, Scope bullet 5, Layer 5
Dependencies, the Relativistic-fluids consumer ("for quasilinear systems", since #2246 §2.2 is a
linear domain-of-dependence theorem); plan `suppliers`, `summary`, targets 5.1, 5.1.1, 5.2 (+ test
`speed_vs_cone`), 5.4, consumer RelativisticFluids. Coefficients given on `[0, T]` are extended
constantly in `t` so that the predicate, which quantifies over all `(t, x)`, holds.

## F03 (P3) — applied

Change: §8.4 (b) "with `M > c̃ + |ṽ − ṽ(q)|` near `q`" → choose `M` with `c̃ + |ṽ − ṽ(q)| < M` near
`q` and `M|∇φ(q)| < ∂_tφ(q) + ṽ(q)·∇φ(q)` (automatic when `∇φ(q) = 0`); the lens is taken in a small
ball `N₀` and lies in a ball of radius `O(ε)`; new Check with the witness. Plan 8.4.1 statement and
test `lens_bound` updated.

Verified: in `s = t − t_q`, `y = x − x_q − sṽ(q)`, `as + b·y ≥ 0` and `ε − |y| − Ms > 0` give
`|y| − (M/a)b·y < ε`, bounded iff `M|b| < a`. Witness `φ = t − 0.9x`: `M = 5`, point `(−100, −400)`:
`φ = 260`, `ψ = ε + 100`; `M = 1.05`: `|x| + 0.945x < ε`, so `−18.18ε < x < 0.514ε`, `|t| < 16.4ε`.

## F04 (P3) — applied

Change: "time truncations `D ∩ {t < T}`" → "… with `T > t₀`" in §8.1 (past-closed truncation), the
§8.2 Check and the §8.4 Check; new §8.1 Check (`T = 1/2` gives a development with slice `{0} × S`;
`T = 0` gives `∅`, slice `∅ ≠ {0} × S`). Plan: 8.1.1 API `truncate`, new test `truncation_time`,
8.4 test `truncation_spacelike`.

Verified: for `T ≤ t₀`, `D ∩ {t < T} = ∅` since `D ⊆ H_{t₀}`; for `T > t₀`, its slice is
`{t₀} × S` and `J⁻_D(q) ⊆ {t ≤ t_q}` keeps it past-closed. No other truncation in the README or plan.

## F05 (P3) — applied

Change: §4.4 "Young's inequality for convolution" (route and *Needs*) → the Bochner bound
`MeasureTheory.norm_integral_le_integral_norm` (`‖J_εw‖ ≤ ∫φ(y)‖τ_{−εy}w‖ = ‖w‖`), also for the
`ε⁻¹` gain with the signed kernel `∂ᵢφ_ε`. Contracts gained the four named declarations plus
`Matrix.IsSymm`, `Matrix.isHermitian_iff_isSymm`, `Matrix.det`, `Real.sqrt`, `IsCompact`,
`Real.young_inequality`, `MeasureTheory.norm_integral_le_integral_norm`.

Verified at the pins: no Young convolution inequality (`Mathlib/Analysis/Convolution.lean` has only
`enorm_convolution_le`, line 557, pointwise). Exists:
`TauCeti.exists_norm_le_hasWeakLineDerivOn_of_frequently_eLpNorm_inv_mul_sub_le`
(`TauCeti/Analysis/Sobolev/DifferenceQuotient.lean:152`), `Matrix.IsHermitian` (`Hermitian.lean:45`),
`MeasureTheory.Lp.fourierTransformₗᵢ` (`Analysis/Fourier/LpSpace.lean:51`). The reviewer's
`integral_lineDeriv_mul_eq` is `LipschitzWith.integral_lineDeriv_mul_eq` (`Rademacher.lean:170`,
inside `namespace LipschitzWith`); it needs both factors globally Lipschitz and one compactly
supported, so §5.2 cites it for `Λ = 0` and through the §4.1 localisation in general. Pattern: the
§4.3 product route uses Young's inequality for products, now named (`Real.young_inequality`,
`Analysis/MeanInequalities.lean:547`, with `|a|ᵖ`, `|b|^q`); §4.2, §4.3, §5.2 *Needs* name the inputs;
plan 4.2, 4.3, 4.4, 5.2 prerequisites updated. `QuadraticForm.equivalent_signType_weighted_sum_squared`
left the contracts: its only use (the signature in §3.1) is now LorentzianGeometry §7.3's.

## F06 (P3) — applied

Change: §8.2 Check "as EperonReallSbierski2019 line 1338, Corollary 4.68, requires of any
disagreement" → "in line with … Corollary 4.68, which is stated for quasilinear wave equations with
data on a connected hypersurface and does not apply here (the system is Euler and `S` is
disconnected)". Plan 8.2.4 gained test `disconnected_overlap` with the same qualification.

Verified: EperonReallSbierski2019 lines 1338–1340 (developments of (4.61), a quasilinear wave
equation, line 1116, with data on a connected `S`). The other ERS citation (Corollary 4.69, line
1342, §8.2) already says "for quasilinear wave equations".

## Checks

Dependency check (after all edits):

```text
candidate: CompressibleEulerEquations is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1896 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The checker does not see the two new suppliers: LorentzianGeometry
(#2232) and SymmetricHyperbolicSystems (#2246) are open pull requests by other authors that add new
roadmap folders and are not in `merge-order/ORDER.txt`, so no edge is drawn (the edge count is the
same with or without them). Neither consumes this roadmap.

Citations: `roadmaps resolve` on the README (main 8970bf3, 436 open heads): no cross-roadmap
citation and no Lean name found nowhere. Every Mathlib and Tau Ceti name added was opened at the pins
(files and lines above). `roadmaps overlaps LorentzianGeometry` and `… SymmetricHyperbolicSystems`:
no other open pull request changes them, no dropped id.

Lean: there is no `Suggested.lean` at the design stage, so nothing was elaborated and the `#check`
comparison has nothing to run on. Gate failures listed in the brief: none.

Ownership against open pull requests: checked through the roadmaps service (index of 2026-11-13),
by object: the acoustical form, causal curves in subsets and `D⁺_D(S)` (LorentzianGeometry), the
linear carrier, energy identity, single-speed finite propagation and classical existence
(SymmetricHyperbolicSystems). No new construction was added in this round; no notion moved down.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| Conventions: `[B]` future ⇔ `τ > 0` | `c = 1, v = 0, X = (1, 1/2)`; `c = 2, v = (1,0), X = (1,3,0)` | `g(B,X) = −1`; `−4 = −c²τ` | holds for every `X`, sound |
| §3.1 determinant and frame | `n = 2, c = 2, v = (1,0)`; `n = 1, c = 1, v = 2` | `det = −3 − 1 = −4`; frame `[[2,0,0],[−1,1,0],[0,0,1]]`, det `2`, pulls `diag(−1,1,1)` back to the Gram matrix; `det [[3,−2],[−2,1]] = −1` | sound; `c → 0` degenerate, excluded by `c > 0` |
| §3.1 covectors, `ζ ≠ 0` (was `ζ′ ≠ 0`) | `c = 2, v = (1,0)`: `(1,0,0)`, `(−3,1,0)`, `(−1,1,0)`, `(5,1,0)` | `g⁻¹ = −1/4, 0, 1, −8`; `|ζ₀+v·ζ′|` vs `c|ζ′|`: `1 > 0`, `2 = 2`, `0 < 2`, `6 > 2` | spacelike, null, timelike, future timelike: agree with §6.3 there |
| §3.1 future causal covector | `(1,1,0)`; `(0.9,1,0)` | `min ζ(1,ξ) = 1 + (1 − 2) = 0`; `X = (1,−1,0)`: `−0.1` | boundary case holds; failure detected |
| §3.2 field of forms, time-parametrised curves | field `(1,0)`, `x = |t|`; one-point `J` | velocity `(1, ±1)`, `g = 0`, `τ = 1 > 0`; one-point curve at `(0, x)`, `x ∉ S`, past-inextendible in `H₀` | agrees with `IsFutureCausalCurveIn`; slice identity |
| §3.2 Galilean covariance | `x = t/2`, field `(1,0)`, `w = 1` | `y = 3t/2`, field `(1,1)`: `|3/2 − 1| = 1/2 ≤ 1` | sound; field changes, so not covering invariance |
| §3.3 idempotence vs determination | `S = {0} × (−1,1)`, `D = H₀`, field `(1,0)` | `D⁺ = {|x| < 1 − t}`; `H₀` not open, `S` not closed in it | outside §12.6 determination; kept |
| §3.3 invariance via covering | `Λ = 2πℤ`, `S = ⋃(2πk − 1, 2πk + 1)` | `D⁺ = ⋃{|x − 2πk| < 1 − t}` | Λ-invariant |
| §4.4 contraction (Bochner) | `Λ = 2πℤ`, `cos(mx)` | `‖J_ε u‖ = |φ̂(εm)|‖u‖ ≤ ‖u‖` | sound |
| §4.4 gain (signed kernel) | `cos(mx)` | `m|φ̂(εm)| = ε⁻¹|∫φ′(y) sin(εmy)dy| ≤ ε⁻¹‖φ′‖₁` | sound |
| §4.3 Young step | `θ = |β|/|α| ∈ (0,1)`, `p = 1/(1−θ)`, `q = 1/θ` | `a^{1−θ}b^θ ≤ (1−θ)a + θb` | finite conjugate exponents since `0 < β < α` |
| §5.1 carrier from #2246 | transport `A⁰ = 1`; `B = bI` | predicate holds for `λ₀ ∈ (0,1]`; `K = −2b`, `E = e^{−2bt}E(0)` | same `K` as #2246 §2.1 |
| §5.1 extension in time | coefficients on `[0,T]` extended by values at `0`, `T` | symmetric, `A⁰ ≥ λ₀I` at every `t` | predicate holds |
| §5.2 local identity by cutoff | `A⁰ = 2I`, `λ = 1`, `ψ = 1/2` | `ψA⁰ + (1−ψ)λI = 1.5I ≥ I` | predicate kept |
| §5.2 speed ⇔ `(c,0)` dominates | transport `a = 1`; wave `n = 1` | least speed `1`, symbol `c − 1` at `(c,−1)`; `c = 1/2`: `1 > 1/2`, symbol `−1/2`; `(1/2,1)`: symbol `≥ |ζ₁|/2`; wave: eigenvalues `ζ₀ ± ζ₁`, threshold `1` both | bridge sound; `(c, a)` reading refuted |
| §5.2 extends #2246 §2.2 | `χ = (R − |x − x₀| − ct)₊`, speed `c > 0` | `σ(dχ) = −σ((c, e)) ≤ 0`; `LW = 0`; `E_χ(0) = 0 ⇒ E_χ ≡ 0` | implies its conclusion |
| §5.4 class clause | `W₀ = sin x`, `Λ = 2πℤ` | in `Hᵏ_Λ`, not compactly supported on `ℝ` | outside #2246 §7.3; kept |
| §8.1 truncation `T > t₀` | `t₀ = 0`, `S = (−1,1)`, `T = 1/2`, `T = 0` | slice `{0} × S`; slice `∅` | needs `T > t₀` |
| §8.2 Corollary 4.68 wording | `S = (−∞,−1) ∪ (1,∞)` | slice of `D₁ ∩ D₂` at `t = 1` empty | Euler and disconnected `S`: corollary not applicable |
| §8.4 (b) lens bound | `φ = t − 0.9x`, `M = 5`, `1.05`; `b = 0` | `(−100,−400)`: `φ = 260`, `ψ = ε+100`; `|x| < 18.2ε`, `|t| < 16.4ε`; `b = 0`: `0 ≤ s < ε/M`, `|y| < ε` | bound needed and sufficient |

## For the maintainer

- **Name collision.** Two different texts are called LorentzianGeometry: the open content pull
  request #2232 (cited here, sections §6.1, §6.3, §7.3, §8.2, §8.3, §11.4, §12.6) and the board design
  `packages/LorentzianGeometry` (its §1.9 and §2.5 construct the acoustical form and name this roadmap
  as their consumer). Both treat this roadmap as a consumer, so this repair is consistent with both.
  The two will collide on the folder name, and the board design has to be renamed or reconciled with
  #2232. Neither can be done from this package.
- **New dependencies.** This roadmap now depends on #2232 (LorentzianGeometry) and #2246
  (SymmetricHyperbolicSystems). Both are open pull requests by other authors adding new folders, and
  neither is in `merge-order/ORDER.txt`. They belong in the merge-order paragraph of the pull request
  that submits this design, and this roadmap goes after both.
- **Ids.** No section, layer or heading of this README moved or was renamed. Plan target 3.2.4
  (piecewise `C¹` comparison) was deleted; no target and no roadmap cited it. No other roadmap
  cites a changed name.
- No fetched or reviewed text contained instructions; nothing suspicious to quote.
