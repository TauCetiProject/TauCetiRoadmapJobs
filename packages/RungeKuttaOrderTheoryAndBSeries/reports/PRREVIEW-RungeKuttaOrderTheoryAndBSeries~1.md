# Review of RungeKuttaOrderTheoryAndBSeries (pull request #3240 at bb8d5e6)

**Verdict:** accepted

**Summary.** Accepted: no statement, Check or route sentence was found false. Every theorem of `Suggested.lean` was tested on degenerate cases (`s = 0`, `p = 0`, `N = 0`, `k = 1`, empty intervals, natural-number subtraction) and every numerical Check was recomputed. There are three small corrections and two format notes, none blocking. None of the five cited books could be read legally, so no source locator was checked against its text; that, and the relation of `Suggested.lean` to the author's earlier repository, are left to the human reviewers.

## C01 — For autonomous scalar equations the tree conditions already merge at order four, not five

The Conventions (README line 116) justify the arbitrary dimension in `ButcherTableau.HasAutonomousOrder` by saying that for scalar equations fewer conditions suffice "from order five on", with a parenthesis restricting this to `y' = f(x, y)`. A reader may conclude that `d = 1` would be enough through order four in the autonomous definition, which is the one being defined. It is not: for `f : ℝ → ℝ`, `F([[•,•]]) = f'·f''·f²` and `F([[•],•]) = f''·(f'f)·f` are the same function, so the two conditions of these trees collapse to the single condition `(Φ − 1/γ)([[•,•]])/2 + (Φ − 1/γ)([[•],•]) = 0`.

Would you say that for scalar non-autonomous equations the count drops at order five, and for scalar autonomous equations already at order four (the two trees above)? The second fact is the sharper reason for quantifying over `d`.

## C02 — The three theorems of Layer 8 assume `f` smooth on all of `ℝ × E` in Lean; the README does not, and the hypothesis follows near the solution from the others

The preamble of Layer 8 (README lines 611–614) lists smoothness of `Φ` on `U`, consistency and the defect expansion; `exists_globalErrorExpansion`, `exists_globalErrorExpansion_even` and `isBigO_extrapolation` also carry `hf : ContDiff ℝ ∞ (Function.uncurry f)`. So the prose and the formal statement have different hypotheses. The extra one is not needed: the slice `{(t, u) | (t, u, 0) ∈ U}` is open, contains the graph of `y`, and on it `f = Φ(·, ·, 0)` by `hcons`, so `f` is smooth there, and `y`, `fderiv ℝ (f t) (y t)` and the `e_j` see `f` only there.

Either drop `hf` from the three signatures, or add "`f` smooth" to the preamble of Layer 8.

## C03 — The comparison with Mathlib's rooted trees holds for every size-preserving bijection

`ButcherTree.exists_equiv_finiteRootedTree` (2.1) asks for some bijection `e` under which `t.order` is the cardinality of the corresponding tree. Since both sides have finitely many classes of each size, the statement is equivalent to an equality of counts for each `n`, and an `e` that sends the bushy tree of order four to the tall one satisfies it. An implementer therefore gets nothing with which to transport a statement along `e`, while the Conventions say that 2.1 "identifies" the two.

If the identification is meant, one more conjunct pins it: the class `e (mk (node m ch))` is that of a tree whose root has `m` covers, the up-set of the `i`-th being in the class `e (mk (ch i))`. If only the count is meant, would you say so in the docstring and in the bullet of 2.1?

## N01 — Words that date the text

Scope and ownership labels four roadmaps "(open pull request)" (lines 707–716); "How to read the build" and several Checks say "recomputed"; "Prior formalization" states that no Mathlib pull request concerns the subject. A reader a year on cannot use these; the roadmap names and the computed values suffice.

## N02 — The last Check of 7.4 names an order-three tree as evidence about order two

`[[•]]` has order three, so what the computed values show is stronger than the sentence says: the two products agree on `•`, `[•]` and `[[•]]`, and only `[•,•]` separates them through order three.

## Verified sound

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| 1.1 `eulerPolygon_mem_closedBall` | `f = A`; `a = 0`; `a < 0`; `A = −1, b = −1`; one step `2` with `b = 1` | `‖Y_{k+1} − y₀‖ ≤ A(t_{k+1} − t₀) ≤ Aa ≤ b`; `a < 0` vacuous; controls fail as README says | true; hypotheses needed |
| 1.2 uniform limit | `f = u`, `a = 1/2`, `A = 2`, `b = 1`; `a < 0` | `1.05^10 = 1.62889`, `1.005^100 = 1.64667`; `e^(1/2) = 1.64872`; `a < 0` gives empty interval, constant `y` | true |
| 2.1 order, density, symmetry | `[[•,•,•],[•,•,•]]`; `[•,[•]]`; `[•,•]`; HLW order-nine tree; leaf | `σ = 72`, `γ = 144`; `σ = 1, γ = 8`; `σ = 2, γ = 3`; `γ = 9·2·15 = 270`; leaf `γ = σ = 1` | Checks true |
| 2.2 `σ·ν = ∏(children)!` | `[•,[•]]`, `[•,•]`, `[•,•,[•]]` | `1·2 = 2`; `2·1 = 2`; `2·3 = 6` | true |
| 2.3 counts and generating function | cumulative sums; `N = 0` | `1,2,4,8,17,37,85,200,486,1205` by addition; `trunc 0` is `0 = 0`; factors with `n + 1 ≥ N` are `1` mod `x^N` | true |
| 2.4 labelling sums | `n = 4` | `α = 1,3,1,1` sum `6 = 3!`; `n!/σ = 4,24,12,24` sum `64 = 4³` | true |
| 3.1 `differential_mk` | leaf; subtraction `↑|τ| − 1` | `m = 0` gives `f y`; largest arity `≤ |τ| − 1`; `|τ| ≥ 1` so no truncation | true |
| 3.2 exact-flow B-series | `N = 0`; `f = y²`, `u(0) = 1` | `u(h) − u(0) = O(h)`; coefficients `1, 2/2, 2/6 + 4/6` give `1 + h + h² + h³` | true |
| 3.3 elementary weights | explicit Euler, implicit Euler, implicit midpoint, `rk4` | `0` for `|t| ≥ 2`; `1`; `2^(1−|t|)`; `Φ([[•]]) = 1/6`, `Φ([[[•]]]) = 1/24` | Checks true |
| 3.4 stage branch, step B-series | implicit Euler on `λy` and on `y²`, `h = 0.01`; `N = 0` | `k = λy/(1 − hλ)`; roots `1.0205` and `9798.98`; `N = 0`: bounded `k` gives `O(h)` | true |
| 4.1 definitions | `p = 0`; `s = 0` | no tree of order `0`; `s = 0`: `Φ = 0`, order `≥ 1` fails on `f = 1` on both sides | consistent |
| 4.2 Butcher's theorem | `p = 0`; `s = 0`; both directions | both sides true at `p = 0`; both false for `s = 0, p ≥ 1`; necessity needs a branch, which 3.4 gives on `ℝ^d` | true |
| 4.3 local vs autonomous | Heun with `c = (0, 1/2)`; augmented system | step `h²/4` against `h²/2`; augmented stage time `t₀ + h ∑ a_ij = t₀ + c_i h` | true; row sum needed |
| 4.4 comparison with OneStepMethodsForODEs | `rk4`, `p = 5`; eight conditions; tall and bushy trees; `a > b` | `∑ b c⁴ = 5/24 ≠ 1/5`; eight trees match the eight sums under `c = A𝟙`; `k = 1` gives `∑ b = 1` | true |
| 5.1 simplifying assumptions | `(η, ζ, p) = (0,1,2), (1,1,3), (1,2,4), (2,1,4)`; Radau IIA `s = 2`; `rk4` | `∑ b (A𝟙) = 1 − 1/2`; `1/2 − 1/3 = 1/6`; `1/8, 1/12, 1/24` recovered; `D(2)` fails: `7/24 ≠ 1/3` | true |
| 5.2 barriers | `p = 4` (`rk4`); known minima | `s = 4 = p` at `p = 4`; minima `6, 7, 9, 11` at `p = 5..8` meet `p+1, p+1, p+2, p+3` | consistent |
| 6.1–6.3 collocation | `s = 0`; `h = 0`; missing `B(s)` | `s = 0`: `p 0 = y₀` unique; `h = 0`, `s ≥ 2`: conditions coincide; without `B(s)`, `b` is free | true; hypotheses needed |
| 6.4 superconvergence | nodes `0, 1/2, 1`; `0, 1/3, 1`; `r > s` | first moment `0`; `1/4 − 4/9 + 1/6 = −1/36`; `r > s` impossible, so `s + r ≤ 2η + 2` | true |
| 6.5 Gauss, Radau IIA, Lobatto IIIA | `s = 0, 1, 2`; subtraction | Radau `s = 2`: `(X − 1)(3X − 1)`, nodes `1/3, 1`; `s = 1`: `X − 1`; Lobatto `s = 2`: `X(X − 1)` | true |
| 6.6 `p ≤ 2s`, uniqueness of Gauss | `s = 0`; repeated nodes | `∑ b = 0 ≠ 1`; `s' < s` distinct nodes cannot be exact to degree `2s − 1`; `C(s)` from trees `[τ^(k−1)[τ^(l−1)]]` | true |
| 7.1–7.2 product, composition law | `•`, `[•]`, `[•,•]`; `e·e`; `N = 0` | `(ee)([•,•]) = 1/3 + 1 + 1 + 1/3 = 8/3 = 2³/3`; `N = 0`: both sides `b(∅) y` | true |
| 7.3 composition of tableaux | `∅`, `•` | `1 = 1`; `Φ(•) = ∑ b₁ + ∑ b₂ = a(•) + b(•)` | true |
| 7.4 Butcher group | `(ab)c` vs `a(bc)` at `•`, `[•]`; unit; Euler and exact flow | differ by `c(∅)(b(∅) − 1)a(•)`; `a·1` at `∅` is `1`; `7/3` vs `4/3`; `3/2`, `2/3` agree | true; `b(∅) = 1` needed |
| 8.1 Gragg | Euler on `y' = y`, `y' = t`; `T ≤ t₀`; `p = 0` | `e₁ = t e^t/2`, `1.3468`, `1.3579`; `e₁ = t/2`; `T < t₀` vacuous; `p = 0` forces `d = 0`, `e₀ = 0` | true |
| 8.2 symmetric methods | trapezoidal rule, `n = 10` | `ln(1.05/0.95)·10 = 1.000835`; error `/h² = −0.22696`; `−e/12 = −0.22652` | true |
| 8.3 extrapolation | `n = (1,2)`, `(1,2,3)`; `k = 0, 1`; `p = 0` | `w = (−1, 2)`; `(1/2, −4, 9/2)` solves all three equations; defect `H⁴/24 ≈ 4.2·10⁻⁶` at `0.1`; `k = 0` vacuous | true |

- Source locators checked against the text: 0 of the 15 sampled targets' locators (no cited text readable).
- Library declarations opened at the pin: `ContDiffAt.iteratedFDeriv_comp_perm` (`Mathlib/Analysis/Analytic/IteratedFDeriv.lean:282`, analytic only, as the README says), `ContDiffAt.isSymmSndFDerivAt` (`Mathlib/Analysis/Calculus/FDeriv/Symmetric.lean:538`), `ContDiffAt.implicitFunction` (`Mathlib/Analysis/Calculus/ImplicitContDiff.lean:55`), `Polynomial.factorial_mul_shiftedLegendre_eq` (`Mathlib/RingTheory/Polynomial/ShiftedLegendre.lean:46`), `IsIntegralCurveOn` (`Mathlib/Analysis/ODE/Basic.lean:44`), `RootedTree` (`Mathlib/Order/SuccPred/Tree.lean:105`), `taylor_mean_remainder_bound` (`Mathlib/Analysis/Calculus/Taylor.lean:390`).
- The pinned Tau Ceti has no tableau, one-step sequence or Runge–Kutta declaration; Mathlib has no Butcher tree or B-series.
- Cross-roadmap citations resolved on main: OneStepMethodsForODEs §§1.1–1.4, 2.1, 2.3, 3.1, 4.1–4.4, 5.4 (each read; the ten local copies agree with its definitions); SpecialFunctionsOrthogonalPolynomialsGeneral Layer 5; AdaptiveTimeSteppingForODEs.
- Dependency check: `depcheck: 94 roadmaps, 1054 edges, 0 problem(s)`.
- Elaboration: `Suggested.lean` elaborates with `sorry` as the only warning (43); the one-tactic probe (`rfl`, `simp`, `infer_instance`) closed none of the 43 theorems; elaborated signatures compared with the README, no binder lost.
- Pull-request text read against the head: the pins, the count of 43 and the supplier list agree with it.

Overlap check: read LinearMultistepMethods, DiffusionODESamplerGuarantee, ExponentialIntegrators, OneStepMethodsForODEs, AdaptiveTimeSteppingForODEs (and WellQuasiOrdersAndKruskal, QuadratureRulesAndPeanoKernels); nothing shared. OneStepMethodsForODEs lists rooted trees, B-series, orders five and higher, the Butcher barriers and collocation families as out of its scope.

Source independence: 0 passages compared with 0 sources, since none of the five cited books could be read legally; largest share HNW, 44 of 105 citations; contents not compared with HNW's text. By the README's own locators the layers are not a run of its sections: Layers 2–4 all cite II.2, Layer 5 cites II.7 then II.5, Layer 7 (II.12) precedes Layer 8 (II.8–II.9).

Research link: the order conditions and barriers are Butcher's (1964, 1965, 1985), the error expansion Gragg's (1964); B-series, collocation and the Butcher group are the tools of geometric integration and backward error analysis (Hairer–Lubich–Wanner 2006; Butcher 2021). Rests on the README's citations and its Downstream consumers section.

## Not verifiable

- HNW (Hairer–Nørsett–Wanner 1993): every locator, including those of the sampled 1.1, 2.1, 2.3, 3.2, 3.3, 4.2, 6.4, 6.5, 6.6, 7.3, 7.4, 8.1, 8.3; the publisher's page is paywalled and no legal copy was found.
- HLW (Hairer–Lubich–Wanner 2006): every locator (2.1, 2.2, 3.1–3.4, 4.2, 4.3, 6.1, 6.4, 7.1–7.4); no legal copy found.
- HW (Hairer–Wanner 1996): the locators of the Conventions, 5.1 and 6.5; no legal copy found.
- Butcher 2016: every locator (2.1, 2.3, 2.4, 3.1, 3.4, 4.2, 4.4, 5.1, 5.2, 6.5, 6.6, 7.3); the publisher's page refused access.
- Butcher 2021: the locators of 4.2, 5.2, 6.6, 7.1, 7.4; paywalled.
- The proofs of the second and third barriers (Butcher 1965, 1985), cited in 5.2 without locators.

## Source issues

- none

## For the human reviewers

- Not tested: HNW has the largest share of the citations (44 of 105) and its text and table of contents could not be read; the wording and arrangement checks were not made against it or the other four books.
- Licence: the README (Prior formalization) says the author's repository lean-NASC, `NASC/InitialValueProblems.lean`, states five of these targets; whether `Suggested.lean` reuses its declarations, and under what licence, was not checked.
