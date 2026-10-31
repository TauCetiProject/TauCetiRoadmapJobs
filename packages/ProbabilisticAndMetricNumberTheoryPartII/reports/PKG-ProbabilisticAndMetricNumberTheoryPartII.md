# PKG-ProbabilisticAndMetricNumberTheoryPartII — package report

Deliverables: `packages/ProbabilisticAndMetricNumberTheoryPartII/README.md`,
`packages/ProbabilisticAndMetricNumberTheoryPartII/Suggested.lean`,
`packages/ProbabilisticAndMetricNumberTheoryPartII/metadata.toml` (`topic = "math.NT"`, as the base
roadmap), `packages/ProbabilisticAndMetricNumberTheoryPartII/sources.toml`, and the top-level `gaps`
list of `packages/ProbabilisticAndMetricNumberTheoryPartII/design/plan.json`.

Inputs: the design README and `plan.json`. There is no separate `design/review.json` and the
`reports/` folder was empty; the accepted review is embedded in `plan.json` under `review`
(status `accepted`, 2026-10-18), and its notes were applied: the nonempty compact-set hypothesis
(§3.4), nonnegative (not positive) collocation entries (the collocation target itself is replaced,
see below), the source locator corrections, the E1–E13 findings with E9 rejected, and the seven
source versions (GMR19 and its arXiv v3 now one manifest key).

## Headline theorems

All eleven are stated in `Suggested.lean` with `sorry`.

| Headline theorem | Lean name | Layer | Status |
| --- | --- | --- | --- |
| Schauder–Tychonoff fixed point theorem | `schauder_tychonoff` | 3.1 | stated |
| Hennion's essential-radius bound (two-norm / Ionescu-Tulcea–Marinescu) | `hennion_essential_radius` | 3.5 | stated |
| Ruelle–Perron–Frobenius with C¹ spectral gap, unique eigenprobability | `ruelle_perron_frobenius` | 3.7 | stated (exponential-convergence form) |
| Analytic perturbation of a simple isolated eigenvalue, `λ′ = φ T′ h` | `simple_eigenvalue_analytic` | 4.2 | stated |
| Wielandt separation on vertical lines (non-lattice) | `wielandt_separation` | 5.3 | stated (exponential-decay form) |
| Pressure: real-analytic decreasing leading eigenvalue, limits at 1 and ∞ | `pressure_eigenvalue` | 5.4 | stated |
| Uniform renewal Tauberian theorem (`C(X; ℂ)`-valued) | `uniform_renewal_tauberian` | 6.5 | stated |
| Uniform counting theorem `N(w,r) ~ B(w) e^{βr}` | `uniform_counting` | 6.6 | stated |
| Conformal exponent: unique `β`, unique conformal probability | `conformal_exponent` | 6.7 | stated |
| `β(3) = 2` (twice Lebesgue on `[0,1/2]` is 2-conformal) | `eigenprobability_three` | 7.2 | stated |
| Monotonicity `β(n) ≥ β(n−1)` | `conformal_exponent_mono` | 7.5 | stated |

Definitions kept in `Suggested.lean`, each needed by a headline and each with a real body on
native carriers: `orderedSimplex`, `branchDenom`, `branchMap`, `wordDelay`, `wordCount`,
`C1BoundedOn`, `transferOp`, `IsEigenprobability`.

Not statable at the pins: none of the headlines. The module docstring records that the Banach space
`C¹(Δ; ℂ)` of jets is not a carrier at the pins, so the spectral gap and Wielandt's separation are
stated in their equivalent forms (exponential decay of iterates in the pointwise C¹ bound on native
`ContDiffOn` functions) rather than through `spectralRadius` on `C¹(Δ; ℂ)`. The equivalence: a
uniform bound `‖L^m‖ ≤ Cθ^m` on `C¹` is equivalent, by Gelfand's formula, to spectral radius
`< θ'` for every `θ' > θ`; and `C1BoundedOn` with bound `K` is within a factor two of the jet norm
(README §0.4).

Results judged intermediate (README targets, not headlines): the holomorphic operator family
(GMR19 Lemma 38), the resolvent identity and simple pole (§§6.2–6.3), the Jacobian identity
(GMR19 Lemma 44, statable natively but a lemma), Birkhoff's general cone contraction (§3.3,
statable but a tool), the non-lattice test (§5.2), the `n = 3` constant `B = 3/(π² w₂)` (§7.2) and
the p-series enclosure of `β(n)` (§7.4).

## Mechanical `#check` comparison

A scratch copy of `Suggested.lean` with `#check @name` for all nineteen declarations, plus three
proved sanity `example`s (kept out of the deliverable), was elaborated once. Every elaborated type
was compared with its README statement; they agree. No declaration uses a section `variable`;
every binder is in the declaration's own signature. Changes made while comparing: the generalised
eigenspace is written `Module.End.maxGenEigenspace (T : Module.End ℂ B) z` and the kernels in the
perturbation theorem `LinearMap.ker (φ : B →ₗ[ℂ] ℂ)` (the pinned `LinearMap.ker` does not accept a
continuous linear map directly). The sanity examples confirmed the chart encoding of the branches:
`branchMap (0, 0) ![1/6, 1/3] = ![2/11, 3/11]`, `branchMap (1, 1) ![1/6, 1/3] = ![1/14, 3/14]`,
`branchDenom (1, 1) ![1/6, 1/3] = 7/3`, matching the README Checks for `n = 4`.

## Elaboration

Command: `lake env lean <absolute path of packages/ProbabilisticAndMetricNumberTheoryPartII/Suggested.lean>`
from the content checkout. Exit status `0`. Exactly **11** warnings `declaration uses 'sorry'`, one per
theorem; no other message. Imports: `import Mathlib` only; no `set_option`; no sorry'd data.

## Dependency check

```text
depcheck: 56 roadmaps, 640 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. Suppliers consumed: ProbabilisticAndMetricNumberTheory (order
281), ArithmeticDirichletSeriesPartII (287), and on main DifferentialGeometry, OptimalTransport and
BanachAlgebras; this roadmap is at 294.

`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Its note
says Lean names outside the roadmap repository were not checked on this host; every Mathlib and Tau
Ceti name cited in the README was therefore checked by `#check` at the pins (36 `#check`s of
Mathlib names, no error) and the two Tau Ceti names by reading the pinned sources
(`TauCeti/NumberTheory/LSeries/WienerIkehara/SharpCutoff.lean` line 301,
`TauCeti/Analysis/Holder/One.lean` line 94).

## Supplier gaps

The design's only gap, G1 (a "stage-index bridge" for Brouwer), is resolved: DifferentialGeometry
Layer 10.5 on main states `exists_fixedPoint_closedBall` for the closed unit ball of a
finite-dimensional real inner product space, and the README cites it directly. No supplier lacks
anything this package consumes, so the top-level `gaps` list of `plan.json` is now empty; nothing
else in `plan.json` changed (checked by comparing every other top-level key before and after).

## Duplication sweep and removals

Checked by object against the pinned Mathlib and Tau Ceti, the roadmaps on main, the board's
packages, and the 367 open roadmap pull requests at their heads (`roadmaps grep`).

- **Two-sided Laplace predicate deleted.** The design's `HasBilateralLaplace` is
  ArithmeticDirichletSeriesPartII HP.0.1 `HasLaplace f s z μ` with `μ = volume` (that predicate has a
  measure parameter). §2.5 keeps only the adapters (splitting, zero extension, holomorphy on strips,
  Mellin, translation); the uniqueness API item is the supplier's and was dropped.
- **Band-limited kernel construction deleted.** The kernel needed for smoothing is
  ArithmeticDirichletSeriesPartII HP.1.1 `squaredSinc`, with mass one, triangle Fourier transform and
  tail concentration; §6.4 is stated for every even probability density with continuous,
  nonnegative, compactly supported Fourier transform and names `squaredSinc` as an instance.
- **Spectral splitting.** The Riesz idempotents and the invariant direct-sum decomposition are
  BanachAlgebras A2; §3.5 consumes them. The finite-cover essential-radius estimate is owned here.
- **Brouwer.** DifferentialGeometry Layer 10.5 (above).
- **Gauss objects.** The design's node ids `PM.4/gauss-map`, `gauss-branch-derivative`,
  `gauss-density-transfer`, `gauss-density-telescope`, `gauss-measure` are cited as
  ProbabilisticAndMetricNumberTheory §4.4 (`gaussMap`, `gaussMeasure`, inverse branches and absolute
  derivative, density telescope) and §4.8 (`gaussDensityTransfer`).
- **Finite Hilbert metric and Birkhoff contraction.** OptimalTransport Layer 13B item 9 owns the
  strictly positive finite case; §3.3 keeps the general-cone variant and checks agreement on vectors.
- Kept variants, each with its difference stated in Scope: C¹ jets on a compact convex body vs Tau
  Ceti `TauCeti.C1HolderSpace` (global bounded `C^{1,α}`); Banach-space simple-eigenvalue
  perturbation vs OperatorTheory's self-adjoint perturbation; uniform Tauberian vs the scalar
  ArithmeticDirichletSeriesPartII HP.3 and Tau Ceti Wiener–Ikehara; transfer-operator renewal vs
  MarkovChainsAndRenewal's i.i.d. renewal.
- Not found anywhere at the pins or in any roadmap: Schauder–Tychonoff (PDE mentions it only as a
  stretch goal, unplanned), measure of noncompactness / essential spectral radius, Hennion's theorem,
  transfer operators with spectral gap, analytic simple-eigenvalue perturbation in Banach spaces,
  conformal measures, pressure. This roadmap owns them.

Ownership against open work was checked with the files the brief provides (all open roadmap pull
requests at their heads through `roadmaps grep`, the board packages, main). ArithmeticDynamicsPartII
(a board package earlier in the order) does not plan the linear counting: it only proposes a
separate integral-orbit roadmap. The design's sentence that the Markoff–Hurwitz comparison and
Baragar identification "belong to ArithmeticDynamicsPartII" was therefore replaced: the README cites
ClassicalArithmeticCompletion §§4.38, 4.57, 4.78, 4.105 for the varieties, moves, exceptional tuples
and descent, and states that the nonlinear comparison is outside this roadmap.

## Corrections to the design

- **TO.7/numeric replaced.** The collocation/power-iteration diagnostic is an algorithm with
  uncertified decimals, excluded by the house rules. It is replaced by the rigorous p-series
  enclosure (§7.4), which uses only §2.2 and §5.4: `(n−2)(ζ(β)−1) ≤ 1 ≤ 2^β(n−2)(ζ(β)−1−2^{−β})`,
  giving `1.728 < β(3) < 2.425` and `2.18 < β(4) < 3.3`, consistent with Baragar's
  `(2.430, 2.477)` recorded in GMR19 (1.3), p.753.
- **Hennion's theorem generalised to its source form.** HEN95 Théorème 3.1 uses a seminorm, not a
  continuous norm, and precompactness by finitely many seminorm balls; the statement now has `r ≥ 0`
  (the case `r = 0` covers compact operators) and adds the finiteness of spectral values of modulus
  `≥ t > r` (HEN95 Proposition 3.1).
- **Schauder–Tychonoff locator.** MN75 Theorem 2.6 is on pp.166–167 and treats a convex set mapped
  into a compact subset of itself; the compact convex self-map is its case `F = A = C`. Its
  finite-dimensional input is Brouwer through Lemma 2.3.
- **C¹ bound predicate added** (`C1BoundedOn`) so that the spectral headlines are statable on native
  `ContDiffOn` functions; its relation to the jet norm (factor two) is an API fact of §0.4.
- **Smoothing route.** Uniform Riemann–Lebesgue for `C(X; ℂ)`-valued functions
  (`Real.tendsto_integral_exp_smul_cocompact` holds for any complex normed space) is named as a
  route alongside Lalley's integration by parts, which needs a smooth `k̂`; `squaredSinc` has only a
  Lipschitz triangle transform.
- **Locators re-checked in the texts:** GMR19 arXiv v3 proofs of (5.1)–(5.10) on pp.46–53 (proof of
  (5.5) p.49, of (5.9) p.52); HEN95 Appendice A starts p.43; Lalley's Theorem 1 is on p.8 and (2.5)
  on p.9; Liverani's Theorem 1.1 is on preprint p.4 and Lemma 1.3 on p.6.
- **E9** (a rejected claim) is not reproduced; its content is the convention in §5.2 that the fixed
  vector is nonnegative with zero coordinates.
- **Process text removed from the README**: the design's G1 discussion, commit hashes, the
  review narrative, "packet", the routed-item crosswalk and "planning status" sections.
- **LIV95 hash.** The service stores the decompressed PostScript, so its SHA-256 differs from the
  design's hash of the `.ps.gz` file; same author URL.

What the README could not support: nothing. The Kato book is not used; Kloeckner supplies the
perturbation theory. Notions moved down from later roadmaps: none.

## Sources

Seven works, six manifest keys, all fetched through the sources service and `certified`: GMR19
(publisher-open, with `arxiv = "1603.06267v3"` and a version note on the numbering), LAL89
(author page), LIV95 (author page, OCR), MN75 (author page), KLO19 (publisher-open), HEN95
(Numdam). `sources check`: 0 problems. No `needs-references.toml` was written: nothing is missing.

## Untrusted text

No passage in the design, the supplier roadmaps or the sources asked for any action outside the
job; nothing suspicious to quote.

## Adversarial pass

Scripts for the exact and numerical computations are in the job's scratch area (exact rational
forward differentiation for the ten bounds and Jacobians; exact rational enumeration for `n = 3`
counts; Euler–Maclaurin `ζ`). Every Lean instance below was also checked against the elaborated
`#check` types.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `orderedSimplex` | `d = 1`; `n = 4` vertices; chart `(1/2,1/2)`; `w₁ = −1` | `d=1`: `{0 ≤ x₀ ≤ 1/2}`; vertices `(0,0),(0,1/2),(1/3,1/3)`; `(1/2,1/2)` gives `w₃ = 0 < w₂`, excluded; `(−1,2)` excluded by nonnegativity | holds | Checks added |
| `d = 0` junk | `Fin 0 → ℝ` | simplex is one point, alphabet empty, `transferOp = 0`, `IsEigenprobability 0 _ c _` false for `c ≠ 0` | theorems either assume `1 ≤ d` or are vacuous | `hd` kept where needed |
| `branchDenom`, `branchMap` | `n=4, w=(1/6,1/3,1/2)`, `(0,1)`, `(1,2)`; `n=3, w=(0,1)` | `q=11/6, F=(2/11,3/11,6/11)`; `q=7/3, F=(1/14,3/14,5/7)` (also proved by Lean `example`); `q=A+2, F=(1/(A+2),(A+1)/(A+2))`; wrong order `γ₂γ₃`: `(1/16,3/8,9/16)`, last `8/3` | holds | wrong-order Check added |
| `q` bounds, `τ ≥ log(3/2)` | `n=3, w=(1/2,1/2), A=0`; `w=(0,1)` | `q=3/2=(A+3)/2`; `q=A+2` | both bounds attained | Check |
| off-simplex | `w_j = 3, A = 0` | `q = −1` | formula meaningless off `Δ`; all statements restricted to `Δ` | Check |
| `log q` derivative | general | `(A+1)/q ≤ 2(A+1)/(A+3) < 2` | holds | none |
| `wordDelay` order | `[ (0,1), (1,2) ]` at `n=4` | `log(11/6)+log(27/11) = log(9/2)`; homogeneous last coordinate `9/2`; wrong evaluation `log(77/18)` | holds | Check |
| `wordCount` | `r=−1`; `r=0`; `n=3, w=(1/2,1/2), r=log 2`; `n=4, w=(1/4,1/4,1/2), r=log(7/4)` | `0`; `1`; `3`; `3` (two words share the image `(1/7,2/7,4/7)`; distinct-point count `2`) | holds; `ncard` junk on infinite sets is excluded by the finiteness theorem | Checks |
| letter bound `A ≤ 2e^r − 3` | `r = log 2` | `A ≤ 1`, consistent with `N = 3` | holds | none |
| C¹ jets | `1`; `2x+3`; `(0,1)`; singleton | norms `1`, `7`; `(0,1)` fails segment identity (`0 ≠ y−x`); point in nonzero space: within-derivative not unique | holds | Checks |
| `C1BoundedOn` vs jet norm | `d=1, f = x₀` on `[0,1/2]` | pointwise max `1/2+1 = 3/2`; fails `K=1`; jet norm `3/2 ≤ 2·3/2` | holds | Check |
| pullback / Leibniz | `f=g=x` on `[0,1]` | `‖fg‖ = 1+2 = 3 ≤ 4` | holds | Check |
| core / cusp | `(0,0,1)`, `(0,1/2,1/2)`, `(0,1/3,2/3)`, `(1/5,1/5,3/5)`, `(1/3,1/3,1/3)` | cusp only; core only; both (`1−2b = w₂ = 1/3`); both, `w₃ = (1+w₂)/2 = 3/5`; `b = 2/3`, outside `Δ₀` | holds; strict cusp would fail | non-strict kept |
| ten bounds (5.1)–(5.10) | 300 exact rational points of `Δ₀`, `n = 4,…,8`, region bounds included | 11 241 inequalities, 0 failures; (5.2) equality `20/27` at `(1/6,1/3)`; (5.5) `4/9` and (5.9) `7/25` at `w=(0,0,1)`, equal to the squared bounds; unsquared `4/3 > 4/5`, `7/5 > 32/49` | corrected forms hold, printed forms fail | squares kept (E6) |
| single branch not contracting | `n=4`, `γ₂` at `(0,1/2,1/2)` | `‖dγ₂‖₁ = 4/3` | holds | Check |
| uniform contraction | `m = 0`; `n=3`, `A=B=0`, `x=0` | identity norm `1` (so `D ≥ 1`); two-branch derivative `1/4`, max over `[0,1]` since `(x+2)² ≥ 4` | holds | Checks |
| coding attractor | `n=3` fixed points; codes; `n=4` | `x_A = 2/((A+1)+√((A+1)²+4)) → 0`; every code `> 0`; `(1/3,1/3,1/3) ∉ K` (`K ⊂ Δ₀`) | closure needed (E1) | kept |
| `transferOp` | `n=3, s=2` at `w=(0,1)`, `(1/2,1/2)`; `h=1/w₂`; `Re s ≤ 1` | `ζ(2)−1 ≈ 0.645`; `4(ζ(2)−5/4) ≈ 1.580`; `Σ 4/((A+2)(A+3)) = 2 = h`; numeric `L₂h` at `u=0,0.2,0.5`: `0.999995, 1.249992, 1.999980` (200 000 branches); `f=1`, `s ≤ 1`: series diverges, native value `0` | holds; junk region never used | Checks |
| C⁰ bounds with `2^σ` | `n=3, σ=2` | lower `0.645` attained at `(0,1)`, upper `1.580` attained at `(1/2,1/2)`; printed factor `2`: `0.790 < 1.580` | corrected holds, printed fails (E2) | kept |
| tail bound | general | `Σ_{k≥M+4} k^{−σ} ≤ ∫_{M+2}^∞ t^{−σ} dt = (M+2)^{1−σ}/(σ−1)` | holds | none |
| two-norm inequality | `m=0`; `Im s ≠ 0` | `|Df| ≤ C|s||f| + D|Df|` since `D ≥ 1`; right side real only with `L_{Re s}` | holds (E3) | Checks |
| holomorphy | `w=(0,1)` | `τ_a = log(A+2)`, absorbed by `q^{σ₀−σ}` | holds | Check |
| two-sided Laplace adapters | `1_{[c,∞)}`; `e^{−|t|}`; `mellin 1_{[1,∞)}`; constant `1` | `e^{−sc}/s`; `1/(1+s)+1/(1−s) = 2/(1−s²)`; `1/s` at `−s` (needs `Re s > 0`), `+s` needs `Re s < 0`; divergent | holds; Mellin substitution checked against `MeasureTheory.integral_comp_exp` | definition replaced by `HasLaplace … volume` |
| `schauder_tychonoff` | `C = ∅`; `x ↦ x+1` on `[0,∞)`; rotation of the circle | no fixed point in each, so nonempty, compact, convex are all needed | holds | Checks |
| `IsEigenprobability` | `n=3, σ=2`, `ν = 2·Leb[0,1/2]`, `f=w₁²`; `δ₀`; `σ ≤ 1` | `∫ f dν = 1/12`; numeric `∫ L₂f dν = 2 × 0.0416667 = 1/12` (midpoint rule, 400 nodes); `δ₀`: `F_A(0) = 1/(A+2) ≠ 0`, fails; `σ ≤ 1`: `f=1` gives `0 = c`, false | holds | Checks |
| Hilbert distance, Birkhoff | `(1,2),(3,6)`; `(1,1),(1,4)`; `(1,0),(0,1)`; `1+x`; `[[2,1],[1,2]]` | `0`; `log 4` (`α=1, β=4`); `α = 0`; `|f′(0)| = 1 > a f(0)` for `a<1`; image diameter `log 4`, factor `tanh(log 4/4) = 1/3` | holds | Checks |
| measure of noncompactness | finite set; `B₁` infinite-dim; `cT`; `A + ∅` | `0`; `1`; `|c| r_χ`; `χ(B₁+∅) = 0 ≠ 1` | nonempty needed (E11) | hypothesis kept |
| `hennion_essential_radius` | compact `T`, `p = ‖·‖`, `r=0`; `T = id`; `T = ½ id`; `B = 0` | Riesz–Schauder conclusion; `id` admits no `r < 1` (with `p = 0`, LY forces `r ≥ 1`); radius `1/2`; trivial algebra has empty spectrum, vacuous | holds; `k ≥ 1` and `r ≥ 0` needed (`k=0` makes LY empty, `r=−1, k=2` mimics `r=1`) | generalised to seminorm, `r ≥ 0` |
| cone convergence normalisation | `n=3, σ=2` | `∫ h dν = (1/log 2)·log 2 = 1` for `h = 1/(2 log 2 w₂)` | holds | Check |
| `ruelle_perron_frobenius` uniqueness clause | other eigenprobability `μ` with eigenvalue `c′` | testing `h` (Tietze extension) gives `c′ = λ`; then `μ = ν` | holds for any `c′` | stated for any `c′` |
| simple eigendata | `diag(2,1)`; Jordan block; `λ = 0` on `ℂ` | `P = diag(1,0)`, `T−2 = −1` on `ℂe₂`; every `φ` with `φT = λφ` kills `e₁`; `ker φ = 0` | holds | Checks |
| `simple_eigenvalue_analytic` | `diag(e^z, 1/2)`; `[[0,1],[z,0]]`; `B = 0` | `λ′(0) = 1 = φ₀(T′(0)e₁)`; `±√z`, hypothesis fails at `0`; `φ₀h₀ = 1` impossible, vacuous | holds | Checks |
| uniform gap | `σ ↓ 1` | `λ_σ ≥ (n−2)(ζ(σ)−1) → ∞` | only compact intervals | Check |
| non-lattice | constants; `c + δℤ`; shrinking gaps | `G=0, r=−tc`; `t=2π/δ`; differences `→ 0` | phase `r` essential | Checks |
| fixed-point test | `A = 0,1,2`; `n = 3` | `t = 1.618, 2.414, 3.303`; gaps `0.400, 0.314`; `t² − (A+1)t − 1 = 0` gives the sum relation | holds | Checks |
| `wielandt_separation` | constant delays | domination holds but `ρ(L_{σ+it}) = λ_σ` when `tc ∈ 2πℤ` | non-lattice needed | Check |
| `pressure_eigenvalue` | `n = 3` | `λ₂ = 1`, `λ′₂ = −π²/(12 log 2) ≈ −1.187 ≤ −0.405` | holds | Check |
| growth bound | `n=3, w=(1/2,1/2), r=log 2` | `N e^{−2r} = 3/4 > sup B = 6/π² ≈ 0.608` | `C` is not the asymptotic constant | Check |
| transform `1/s` | empty word | `∫₀^∞ e^{−sr} dr = 1/s` | holds | Check |
| pole and residue | `h_s`; `n=3` | corrected decomposition gives `(1−λ)^{−1}h`, printed gives `(1−λ)^{−1}h + h` (E4, E12); `B = h₂/(2|λ′₂|) = 3/(π² w₂)` vs `h₂ = 1/(2 log 2 w₂)`, ratio `6 log 2/π² ≈ 0.421` | corrected holds (E5) | Checks |
| `uniform_counting` (`n = 3`) | exact enumeration at `w₁ = 0, 1/4, 1/2`, `R = 20, 60, 150` | `N = 6858, 9124, 13699` at `R=150` vs `3R²/(π² w₂) = 6839.2, 9118.9, 13678.4`; ratios `1.0028, 1.0006, 1.0015` (at `R=20`: `1.053, 1.006, 1.008`) | consistent | worked example |
| smoothing / Tauberian one-point case | `α(t) = e^{at}` | `F = 1/(s−a)`, `B = 1`, smoothed limit `∫ k = 1`; agrees with `delangeLaplace`, `k=0`, `A=1` | holds | Checks |
| Jacobian identity | `n=3`; `n=4` at `(1/6,1/3)` | `q^{−2}`; `|det dγ₁| = 216/1331 = (11/6)^{−3}`; `|det dF_{(1,2)}| = 27/343 = (7/3)^{−3}` | exponent `n−1`, not `n−2` | Checks |
| `conformal_exponent` uniqueness over all real `s` | `s ≤ 1` | `f = 1`: series diverges, native value `0 ≠ 1`, so no `ν` | holds | README wording aligned |
| Gauss conjugacy | `x = 1, A = 0` | `F = 1/2`, `q = 3/2`, matching `w = (1/2,1/2)` | holds | Check |
| `eigenprobability_three` | substitution `v = F_A`, tiling; numeric | images `[1/(A+3), 1/(A+2)]` tile `(0,1/2]`; numeric `∫₀^{1/2} L₂(u²) du = 0.04166667` vs `1/24` | holds | none |
| `n = 3` constants | `λ′₂` | `∫₀¹ log y/(1+y) dy = −π²/12`, `∫₀¹ dx/(1+x) = log 2` | `λ′₂ = −π²/(12 log 2)` | none |
| Rauzy matrices | row moves | `γ₁ → [[1,1,1],[0,1,0],[0,0,1]]`, `γ₂ → [[1,0,0],[1,1,1],[0,0,1]]`, `γ₃ = A₃` | holds | Check |
| p-series enclosure | `n = 3, 4`; printed factor | `ζ(1.728)−1 = 1.0012`, upper at `2.425`: `0.9992`; `2(ζ(2.18)−1) = 1.0069`, upper at `3.3`: `0.9931` (at `3.29`: `0.99996`, too thin, not used); printed-factor root `1.882 < 2` | holds | replaces numeric diagnostic |
| `conformal_exponent_mono` | `w = (1/3,2/3) ↦ (0,1/3,2/3)` | `q_{(A,1)} = 1 + 2(A+1)/3 = q_{(A,2)}`; with `j ↦ j`, `q = A + 2` | holds | Check |
| `uniform_renewal_tauberian` hypotheses | `hF` integrability | `α_x ≤ Ce^{at}` and monotonicity give integrability for `Re s > a`, so the Bochner value is genuine | no junk | none |
| complex weights | `q ≥ 3/2 > 0` on `Δ` | `Complex.ofReal_cpow` (base `≥ 0`) identifies `(q:ℂ)^{−σ}` with the real power | holds | convention |

P3 notes (unused hypotheses): `hd : 1 ≤ d` is not needed for the truth of `uniform_counting` and
`wielandt_separation`, whose eigenprobability hypothesis already fails for `d = 0`; it is kept for
readability.
