# Review of NewtonTypeMethodsAndAlgorithmicDifferentiation (pull request #3237 at 7550273)

**Verdict:** needs changes

**Summary.** Changes are needed for one finding: the proof route of the affine-covariant theorem in 2.2 states the identity `x_{k+1} - x⋆ = -g(1)` with the wrong sign. Every stated theorem, definition and numerical Check that I could recompute came out as written, and the dependency direction is sound. There are three small corrections and one format note, none blocking. None of the nine cited books could be read from a legal place, so no locator was checked against its text; that, and three points on reuse and scope, are left to the human reviewers.

## R01 (P2) — The route of 2.2 gives the Newton error as `-g(1)`; it is `+g(1)`

An implementer who follows the route literally starts from a false identity (the norm bound that follows is unaffected, which is why it is easy to miss). In the route of the affine-covariant convergence bullet (README line 215) the text reads "with `h = x⋆ - x_k`, `x_{k+1} - x⋆ = -g(1)` for `g(t) = f'(x_k)⁻¹ (f(x_k + t h) - f(x_k) - t f'(x_k) h)`". With that `h` and `f(x⋆) = 0`,
`g(1) = -f'(x_k)⁻¹ f(x_k) - (x⋆ - x_k) = x_{k+1} - x⋆`. Numerically, for `f(x) = x² - 2`, `x_k = 2`: `h = -0.5858`, `g(1) = (0 - 2 + 4 · 0.5858) / 4 = 0.0858`, and `x_{k+1} - x⋆ = 1.5 - 1.41421 = 0.0858`, not `-0.0858`.

Smallest change: write `x_{k+1} - x⋆ = g(1)` (or keep the sign and take `h = x_k - x⋆` with `g(t) = f'(x_k)⁻¹ (f(x_k - t h) - f(x_k) + t f'(x_k) h)`).

## C01 — The module docstring of `Suggested.lean` lists other supplier sections than the README consumes

The docstring's paragraph on local copies says the upstream theorems consumed are "that roadmap's 1.3, 1.4, 2.1, 2.2 and 4.1". The README's ownership paragraph (line 656) says §1.3 and §1.4 "are not consumed", and its supplier contract lists §§1.1, 1.2, 2.1, 2.2 and 4.1. A reader of the Lean file is sent to two sections the roadmap does not use and misses §1.2, which the route of the one-step estimate of 3.2 needs. Replace "1.3, 1.4" by "1.2" in the docstring.

## C02 — The Check of 8.3 on the ranges of "the ratios" does not say that they are the ratios of the multiplication

The second Check of 8.3 (line 586) says that over admissible weights "the ratios range over `(2, 5/2]`, `(1 + p, 1 + 3p/2]`, `(7/2, 4]` and `(3/2 + 2q, 3/2 + 5q/2]`", directly after a sentence about per-elemental ratios. The intervals are right for the multiplication: `(6μ + 1 + 3π)/(3μ + π)` has infimum `2` and value `5/2` at `μ = π = 1`, and `(11μ + 2 + 3π)/(3μ + π)` has infimum `7/2` (as `μ = π → ∞`) and value `4` at `μ = π = 1`. They are not the ranges of the other elementals: a constant has tangent ratio `2μ/μ = 2` and gradient ratio `2`, an addition has gradient ratio `(9μ + 3)/(3μ + 1) = 3`, all outside the stated intervals. Say "the ratios of a multiplication".

## C03 — Five Checks report a number for data the text does not give, so they cannot be recomputed

The first Check of 3.1 ("a random point of a planar cubic system: both sides `-4.6141`"), the first of 3.2 ("a planar system ... random residual directions"), the first two of 4.1 (2000 and 500 random instances) and the first two of 7.2 (`-2807.6995` and `-4527.58` "for random `ẋ`, `ȳ`", for a five-step program whose steps 7.1 only partly lists) quote results without the system, the point or the seeds. A reader cannot tell a right value from a wrong one. Either give the data (the system, the point, the vectors) or state the Check without the number, as the 4.1 Checks nearly do.

## N01 — A pull-request number and the word "open" in the ownership paragraph

Line 665 reads "The open roadmap HypergradientsAndBilevelOptimization (PR #2991), §1.1". Cite it by name and section only: "HypergradientsAndBilevelOptimization §1.1 differentiates parametrized fixed points; ...".

## Verified sound

No source text was readable, so "source" cells below are my own derivation of the statement, not a comparison with the book.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 `bisectSeq_invariant`, `exists_bisection_root` | `x²-2` on `[0,2]`; `f = x` on `[-1,1]`; step function at `1/3` | intervals `[1,2]`, `[1,1.5]`, `[1.25,1.5]`; `bisectStep = (-1,0)`; limit `1/3` with `f = 1` | holds; continuity needed | none |
| 1.2 secant: recursion and `E^(p^n)` bound | `x²-2`, `ε = 0.3`, `x₀ = √2+0.25`, `x₁ = √2-0.2`; `x₀ = α`; `M = 0`; `f = x²` | `M = 0.44875`, `E = 0.22539`; `M·e_n`: `.1122, .08975, 7.80e-3, 5.97e-4, 3.69e-6, 1.73e-9` ≤ `.2254, .08975, 2.02e-2, 1.82e-3, 3.67e-5, 6.67e-8`; `1/3, 1/5, 1/8, 1/13` | holds; induction `p² = p+1` checked | none |
| 1.2 "`x_{n+1} = x_n` iff `x_n = α`", `n ≥ 1` | `x₀ = α`; `x₁ = α`; junk quotient | sequence `α, x₁, α, α…`; `x₂ = α` when `x₁ = α`; `f` injective on `I_ε` | holds | none |
| 2.1 `newtonMap_sub_isLittleO`, `newtonSeq_superlinear` | `x + sign(x)·abs(x)^(3/2)` from `0.5`; `x²` | ratios `.17, .10, .041, .0092, 9e-4, 2.7e-5`; quadratic ratios `.34, 1.2, 4.7, 26, 275, 9.2e3`; `N(x) = x/2` | holds | none |
| 2.2 `newtonSeq_affineCovariant` | `x²-2`, `D = (1/2,∞)`; `ρ = 0`; `ω ≤ 0`; `D` not open | `ω = 2`; from `√2-0.9`: `x₁ = 2.2018`, error `.7876 ≤ .81 < .9`; `2/ω ≤ 0` unsatisfiable | holds | R01 (route sign) |
| 2.2 `eq_of_affineCovariant_of_eq_zero` | zero `z ≠ x⋆` in the ball | `1 ≤ (ω/2)·dist < 1` | holds | none |
| 2.3 `newtonKantorovich_apriori` | `x²-2`, `x₀ = 2`; `x²`, `x₀ = 1` | majorant: `a_{k+1} = a_k²/(a_k+c_k)`, `a_k+c_k ≥ (2/L)/2^k`; errors `.5858, .0858, 2.45e-3, 2.12e-6, 1.6e-12` ≤ `.5858, .0858, 3.68e-3, 1.35e-5, 3.67e-10`; critical `2^-k` attained | holds | none |
| 3.1 descent, stationarity, `dampedNewton_global` | `arctan` from `3`; `x²+1` at `0`; `h(x) = 0` | `γ·norm(d)·norm(Dh) ≤ 2h`; Newton `-9.49`; first step `j = 2, i = 2`, then `-0.1226, 1.2e-3, -1.2e-9`; `d = 0` stalls | holds; `FiniteDimensional` present in the elaborated type | none |
| 3.2 one-step, linear, superlinear, quadratic, weighted | `η < 0`; `η = 1`, `s = 0`; `x²-2`, `η = 0.1`; `η = abs f` from `1.5` | ratios `→ 0.1000`; errors `.0858, .0233, 1.72e-3, 9.44e-6, 2.84e-10, 2.56e-19`, quadratic ratios `3.164–3.182`; `η < 0` forces `x = x⋆` | holds | C03 (first Check) |
| 4.1 update, least change, invertibility | `s = 0`; `B = 1`, `s = e₁`, `y = e₂`; infinite dimension | `B₊ - B = (X-B)P`; `1 + ⟨s,B⁻¹u⟩ = ⟨s,B⁻¹y⟩/norm(s)²`; `B₊ = [[0,0],[1,1]]` | holds | C03 |
| 4.2 bounded deterioration, linear, superlinear | `s = 0`; `γ < 0`; trivial space | `B₊ - A = (B-A)(1-P) + (y-As)sᵀ/norm(s)²`; `norm(y-As) ≤ (γ/2)(e+e₊)·norm(s)` | holds; supplier §4.1 hypotheses met on `B(x⋆,κ)` | none |
| 5.1 Gauss–Newton: fixed points, one step, convergence, uniqueness, quadratic | `(x-1, x²-1)` from `1.4`; `(x, ε(x²+1))`, `ε = .2, .4, 1`; `ω < 0`, `κ > 1`; `ω = 0` | errors `.4, .0507, 9.97e-4, 3.97e-7, 6.3e-14`; ratios `.0800, .3200`; `ε = 1`: `-.190, .320, -.408, .408`, two-cycle `1/√6`; `ω < 0` forces `D = {x⋆}` | holds | none |
| 6.1 predictors | `x³+x-λ`; `ε < 0` | `x(.5) = .42385`; `max abs(x'')/2 = .4483` at `x² = 1/15`; `abs(x(s)-s)/s³ = .99970` at `.01` | holds | none |
| 6.2 `tendsto_newtonSeq_predictor` | same curve, `D = (-1,1)`, `s = 1/2` | `ω = 3.2320` at `x = .1547`; step `1.1756`; ball radius `.112` inside `D` | holds (derived in the file) | none |
| 7.1 `isOpen_runDom_and_contDiffOn` | two-step swap program at `(1,2)`; `d = ω` | `(3,1)` against `(3,-1)`; preimage of an open set under a map continuous on an open set | holds | none |
| 7.2 forward, pairing, gradient | one step; `v₀ ← v₀·v₀` at `3` | `⟨adj v̄, v̇⟩ = Σ_{i≠out} v̄ᵢv̇ᵢ + v̄_out·dφ(v̇∘args) = ⟨v̄, tan v̇⟩`; `6v̇₀`, `6v̄₀` | holds | C03 |
| 8.1 `runtime_work_le_of_forall` | empty trace | `0 ≤ c·0` | holds (proved in the file) | none |
| 8.2 tangent bounds | each of 4 kinds; `p = 0` | mul: `1 + π/2 ≤ 3μ/2`; unary: `π ≤ μ + ν/2`; vector unary: `pπ + ν ≤ pμ + 3pν/2`, false at `p = 0` | holds for `p ≥ 1` | none |
| 8.3 gradient bounds, sharpness | each kind; `q = 0`; `μ → 0` without `μ ≥ π` | mul: `2 ≤ μ + π`; unary: `1 + π ≤ μ + 2ν`; vector mul: `μ/2 + 2q ≤ 3qμ/2 + π(1+q)/2`; at `(1,1,1,2)`: `4, 10, 16, 4+6p, 6+10q`; limit `5` | holds | C02 |
| 8.4 recovery, row bound | tridiagonal `6×6`, `j mod 3`, `j mod 2`; cyclic `3×3` | columns `0, 2` share row `1`; triangle, `χ = 3 > 2` | holds (proved in the file) | none |

- Source locators checked against the text: 0 of about 69 (no cited book is readable from a legal place; see below).
- Library declarations opened at the pin: `LinearMap.moorePenroseInverse` and `moorePenroseInverse_comp_of_injective` (Tau Ceti `Analysis/InnerProductSpace/MoorePenrose.lean` lines 211, 274); `ContDiffAt.implicitFunction`, `contDiffAt_implicitFunction`, `hasStrictFDerivAt_implicitFunction` (Mathlib `Analysis/Calculus/ImplicitContDiff.lean` lines 55, 91, 83); `Polynomial.newtonMap` (Mathlib `Dynamics/Newton.lean`) is the only library Newton map and is algebraic. Tau Ceti at the pin has no Newton sequence, secant, Broyden, Gauss–Newton or register-machine declaration.
- Cross-roadmap citations resolved: NewtonAndQuasiNewtonMethods §§1.1, 1.2, 2.1, 2.2, 4.1 on main (statements read; the three local copies agree with its definitions character for character); InteriorPointMethods Layer 4 on main; HypergradientsAndBilevelOptimization §1.1 at its open head.
- Dependency check: `depcheck: 94 roadmaps, 1054 edges, 0 problem(s)`; no UPWARD or CYCLE line. The only roadmap supplier is on main.
- Elaboration: the targeted build of the module passes with `sorry` as the only warning (38 `sorry`, 45 theorems, 7 proved or derived, as the description says). Signature pass: all 83 elaborated types compared with the README; the theorems of 3.1, 4.2 and 5.1 keep `[FiniteDimensional ℝ E]`, the theorems of 2.1, 2.3, 3.2 keep `CompleteSpace`; only definitions drop instance binders, and none needs them.
- One-tactic probe (a scratch file importing the built module): `simp` with the definitions unfolded does not close the descent identity, the stationarity equivalence, least change, the adjoint pairing, the gradient bound or the classical predictor. The five proved statements are already marked as sanity checks.
- No change outside the roadmap folder.
- Overlap check: read NewtonAndQuasiNewtonMethods, InteriorPointMethods, DescentSplittingAndPathFollowingMethods, RegularizationOfLinearIllPosedProblems, FastAndNonequispacedFourierTransforms; nothing shared (NewtonAndQuasiNewtonMethods lists Broyden's update for systems, Gauss–Newton and inexact Newton as not treated; InteriorPointMethods owns the damped Newton map for self-concordant functions, a different step rule; RegularizationOfLinearIllPosedProblems owns the Moore–Penrose inverse of a bounded operator, here only Tau Ceti's finite-dimensional one is used).

Source independence: 0 passages compared with 0 sources (none of the nine books could be read); largest share Griewank–Walther, 20 of about 93 citations; contents not compared (table of contents not read). Sections 7.1, 7.2, 8.1–8.3, 8.4 cite its Chapters 2, 3, 4, 8 in that order; programs before sweeps before costs is forced by the definitions, 8.4 is independent.

Research link: the affine-invariant Newton theory of Deuflhard (2004), inexact and Broyden convergence theory as in Kelley (1995) and Nocedal–Wright (2006), and the reverse-mode complexity bounds of Griewank–Walther (2008); consumers are optimization, implicit ODE solvers and adjoint methods. Rests on the README (References, Downstream consumers), not on a source read.

## Not verifiable

- Gautschi 2012, Quarteroni–Sacco–Saleri 2007, Stoer–Bulirsch 2002, Deuflhard 2011, Deuflhard–Hohmann 2003, Nocedal–Wright 2006 (Springer/Birkhäuser books): not in the sources cache, no open copy known; every locator of 1.1, 1.2, 2.1, 2.2, 3.1, 5.1, 6.1, 6.2 unchecked.
- Kelley 1995: not in the cache; the author's page timed out three times and the SIAM archive URL is not accepted as an author's page; locators of 3.2, 4.1, 4.2 unchecked.
- Griewank–Walther 2008 and Ciarlet 2013 (SIAM): the DOI landing page answers 403; locators of 2.3, 7.1, 7.2, 8.1–8.4 unchecked, including that the five work tables of `Suggested.lean` agree with (4.7), (4.16), Table 4.15, (4.20), (4.22).
- The README's statement (6.2) that Deuflhard–Hohmann's printed step bound (4.24) has `max` where `min` is meant: the text was not read.
- The numbers of the Checks named in C03, and the 4.2 Check against Nocedal–Wright's Table 11.1.

Automatic checks set aside as false positives: the rule that a section header of the Lean file must have a declaration under it flagged the last header, which introduces the `#check` lines pinning library declarations; those are allowed and the header describes them.

## Source issues

- none

## For the human reviewers

- **Not tested.** No cited source was read (nine textbooks, none legally fetchable here), so wording and arrangement were not compared with any of them; Griewank–Walther has the largest share (20 of about 93 citations).
- **Licence.** `Suggested.lean` transcribes the per-elemental operation counts of five Griewank–Walther tables ((4.7), (4.16), Table 4.15, (4.20), (4.22)) as `workEval` … `workGradientVec`; the theorems of Layer 8 are stated on these numbers.
- **Licence.** The README's "Prior formalization" section names the author's public repository lean-NASC; `exists_bisection_root` has the same name there. Its licence was not read.
- **Scope.** The subject is textbook numerical analysis; Layer 8's theorems are inequalities on tabulated work vectors over a four-kind trace, not on the programs of Layer 7.
