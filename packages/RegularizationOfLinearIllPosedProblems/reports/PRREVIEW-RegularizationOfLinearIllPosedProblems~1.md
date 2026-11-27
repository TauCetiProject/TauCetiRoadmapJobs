# Review of RegularizationOfLinearIllPosedProblems (pull request #3239 at c508ef9)

**Verdict:** needs changes

**Summary.** Changes are needed, for one reason: the existence of a singular system of a compact operator and its identification with the approximation numbers (1.1 and the Conventions) are planned a second time, since BanachSpaceTheory §4.5 on main already owns the compact Schmidt series at the same generality and by the same route. Every statement of the fourteen sampled sections and every declaration of `Suggested.lean` survived the computed degenerate-case pass, and the numerical Checks were reproduced. There are four small corrections and four format notes, none blocking. The locators into Kress, Engl–Hanke–Neubauer and Hansen could not be read legally, which is left to the human reviewers.

## R01 (P2) — The singular system of a compact operator in 1.1 is the compact Schmidt series that BanachSpaceTheory §4.5 already owns

Two roadmaps would each have the library build the same theorem, and the one on main is the earlier owner. BanachSpaceTheory §4.5 (`TauCetiRoadmap/BanachSpaceTheory/README.md`, lines 684–703) plans, for a compact `T : H → K` between complete real or complex Hilbert spaces: the spectral theorem `ContinuousLinearMap.exists_hilbertBasis_forall_hasEigenvector` applied to `T†T`, `s_j = √λ_j > 0`, orthonormal families with `f_j = s_j⁻¹ T e_j`, `s_j → 0`, the expansion `T x = Σ s_j ⟪e_j, x⟫ f_j` vanishing on the kernel, and `s_n = a_n(T)` for Tau Ceti's approximation numbers. The bullet "Existence for compact operators" of 1.1 (README lines 144–151, `IsCompactOperator.exists_isSingularSystem` in `Suggested.lean`) is that statement with the same route ("keep the eigenvectors with nonzero eigenvalue `λ`, put `σ = √λ` and `g = σ⁻¹ • K e`"), and the Conventions sentence that the approximation numbers "are, for compact `K`, the nonincreasing rearrangement of the `σ i`, padded by zeros" (lines 103–105) is its `s_n = a_n(T)`. BanachSpaceTheory is named nowhere in this README, nor among the suppliers in the pull request's description.

The route of 1.1 also shows why the supplier is needed: it obtains `σ → 0` from "`IsCompactOperator.tendsto_singularValue` or the countability of nonzero eigenvalues". The first presupposes `s_n = a_n`, which is the supplier's theorem; countability alone does not give a limit (a countable set can accumulate at 1). What gives it is that only finitely many eigenvalues, with multiplicity, exceed a given `ε`, which is the step BanachSpaceTheory §4.5 proves.

The smallest change: cite BanachSpaceTheory §4.5 as the owner of the compact Schmidt series and of `s_n = a_n(T)` (in 1.1, under "Not owned here", and in a `### From BanachSpaceTheory` contract), and reduce the existence bullet to what is this roadmap's own, namely that the supplier's ordered series is an `IsSingularSystem` in the unordered form used here, with completeness and `σ → 0` along the cofinite filter read off it. The predicate `IsSingularSystem`, the expansion for an arbitrary singular system (`IsSingularSystem.hasSum_apply`, which covers non-compact operators such as the identity of `ℓ²`), the adjoint and Gram systems, finite rank and Picard's criterion are not in BanachSpaceTheory and stay. The description's supplier list then gains BanachSpaceTheory §4.5.

## C01 — The least-squares solutions of 2.1 have a finite-dimensional real owner on main that the scope does not name

GaussianLinearModels §1.1 (`TauCetiRoadmap/GaussianLinearModels/README.md`, lines 96–110) defines `IsLeastSquares X y b` for a linear map between finite-dimensional real inner product spaces and proves the normal equations, the solution set `b + ker X` and the unique solution of least norm in `(ker X)ᗮ`. Section 2.1 here states the same three facts for a bounded operator between Hilbert spaces over `RCLike 𝕜`, where existence holds only on `R(K) + R(K)⊥`, under the different name `IsLeastSquaresSolution`. That is a legitimate variant, but a reader cannot tell from "Not owned here" that the finite-dimensional case exists or how the two predicates relate. One sentence there, as the README already gives for HilbertModules §2.8, would settle it: the finite-dimensional real case is GaussianLinearModels §1.1, and 2.1 is the infinite-dimensional statement over `RCLike 𝕜` with existence restricted to the domain of `K†`.

## C02 — The two closing statements of 4.2 are called targets but have no quantifiers

The last bullet of 4.2 (lines 411–413) says that no source condition with `ν > 1` improves on `O(α)` and that "an error `o(δ^{2/3})` uniformly over the data forces `x† = 0`", and ends "both are targets in prose". An implementer cannot tell what to prove: for the second, which parameter choices are allowed (every `α(δ, yᵟ)`, as the cited proposition is usually stated, or a priori ones), over which data set the supremum is taken, and that the method is Tikhonov's; for the first, whether it is more than the corollary of `eq_zero_of_isLittleO_tikhonov_sub` that for `x = (K*K)^ν w ≠ 0` the error is not `o(α)`. Either state each with its hypotheses and conclusion, or call them remarks rather than targets.

## C03 — The scope hands the Bayesian side to a roadmap that does not exist

"Not owned here" assigns Gaussian measures, the posterior and the maximum a posteriori estimator to "the Bayesian inverse problems roadmap of the same family, which consumes Layer 4" (lines 642–643), and the description says that roadmap "will be filed after this one". No roadmap of that subject is on main or among the open pull requests (searched by "Bayesian inverse", "Tikhonov" and "maximum a posteriori"), so the sentence points at nothing and describes a plan, not a fact. It would be accurate to say that no Tau Ceti roadmap owns these topics and that this roadmap states no result about them; the consumer under "Downstream consumers" can stay as a description of use.

## C04 — The third Check of 3.1 does not name its scheme and contradicts the first Check if read with that one

"The constant choice `α ≡ α₀ > 0` is not regular even for `K = id`, since at `yᵟ = y` the error is `α₀ / (α₀ + 1) ‖y‖`" (lines 322–324) is true for the Tikhonov family (`R_α = 1/(1 + α)`, error `α₀/(1 + α₀) · |y|`), but the only scheme for `K = id` named in this list is `R a = id` of the first Check, for which the constant choice is regular, as that Check says. The label is also off: the example has `yᵟ = y`, so it does not exercise the uniformity over data; it shows that a choice which does not tend to the filter fails. Naming the scheme ("for the Tikhonov family of 4.1") and relabelling it as a control for the hypothesis `α δ → l` of the a priori theorem makes it say what it tests.

## N01 — A pull-request number in the README

Line 640 cites "ConditioningAndPerturbation (PR #2807)"; cite the roadmap by name only.

## N02 — `dualPairing` is declared in `Suggested.lean` and never named in the README

The README writes `(topDualPairing ℝ U).flip` in the Conventions; the Lean file abbreviates it as `dualPairing` and states every Layer 6 target with it. Naming it once in the Conventions lets a reader match the two.

## N03 — "the layers below" in the scope section

Line 619 says "The numbers are those of the layers below"; the layers are above that section.

## N04 — The open copy of Benning–Burger numbers its statements differently

The arXiv version (1801.09922v1) counts definitions, lemmas and examples separately, so the cited Definition 5.9, Lemma 5.13 and Example 5.16 are Definition 5.3, Lemma 5.2 and Example 5.1 there, and equation (5.4) is (48). A line under References saying that the locators are those of the Acta Numerica printing would save a reader with the open copy the search.

## Verified sound

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 `IsSingularSystem`, existence | `K = 0`; `K = 2·id` on `𝕜`; `σ = −1, g = −e` for `id`; `diag(1, ½)` with `σ = (1,1)` | `K = 0` forces `ι = ∅` since `K e = σ g ≠ 0`; `K e = e = (−1)(−e)` holds, `pos` fails; `K e₂ = ½e₂ ≠ e₂` | true | R01 (ownership) |
| 1.1 expansion, adjoint and Gram, finite rank | non-compact `id` on `ℓ²` (`σ ≡ 1`); `K = 0` | `x − Px ⊥ e` gives `K(x − Px) = 0`; `⟪eᵢ, K*y⟫ = σ⟪gᵢ, y⟫`; `gᵢ ∈ R(K)` independent, so finite range iff finite `ι` | true | none |
| 1.2 Picard | `K = 2·id`, `y = 3`; `diag(1/n)`, `y = (1/n)`; `K x = (x, 0)`, `y = (0, 1)` | series `3/2`, `K(3/2) = 3`; terms `n²·n⁻² = 1`, not summable; coefficient `0`, summable, `y ∉ R(K)`, `y ∈ ker K*` | true both directions | none |
| 2.1 graph, normal equation, minimal norm, Moore–Penrose equations | `K = [[1,0,0],[0,0,0]]`, `y = (2,3)`; `K = 0` | `K†y = (2,0,0)`, `K*Kx = K*y = (2,0,0)`, `‖(2,5,7)‖ > 2`; domain `0 ⊔ Y = Y`, `K† = 0` | true; functional since `Kx + z = 0`, `Kx ⊥ z` gives `x ∈ ker ∩ kerᗮ` | C01 (scope) |
| 2.2 closed graph, boundedness | `diag(1/n)` on `ℓ²`; finite dimension | `K†δₙ = nδₙ` unbounded; summands `{(Kx, x)}` and `R(K)⊥ × 0` closed and orthogonal; bounded gives closed domain `= Y`, so `R(K)` closed | true both directions | none |
| 2.3 compact case, closed range, finite dimension | `diag(1, ½)`; `diag(1/n)`, `y = (1/n²)` and `(1/n)`; empty system | `K† = diag(1, 2)`; `∑ n²n⁻⁴ < ∞`, `K†y = (1/n)`; `∑ 1 = ∞`; `⟪gᵢ, Qy⟫ = ⟪gᵢ, y⟫`; `ι = ∅`: domain `Y`, sum trivially summable | true | none |
| 3.1 scheme, regular choice, unboundedness, no norm convergence, a priori choice, Bakushinskii | `K = id, R = id`; `l = ⊥`; `diag(1/n)`, `α = δ`, `x† = (1/n)`, `n ≤ 4000` | bias `0.2798, 0.0872, 0.0234`, noise `0.05, 0.005, 0.0005`; `‖R_a K − I‖ < ½` gives `‖x‖ ≤ 2‖R_a‖‖Kx‖`; `yᵟ = y` forces `R(α y) y = K†y` | true; `l = ⊥` vacuous for unboundedness, excluded by `NeBot` where needed | C04 |
| 3.2 spectral filters, cut-off | `K = 0`; `σ = (1, ½, ¼)`; Tikhonov `q` | coefficients `|q/σ| ≤ c a`; cut-off norms `1, 2, 4` at `τ = 0.6, 0.4, 0.2`; `σ/(α + σ²) ≤ 1/(2√α)`; empty system: `R = 0`, needs `c ≥ 0` | true for every filter (dominated convergence of series needs no countability) | none |
| 4.1 Tikhonov operator, bounds, scheme, filter, a priori choice | `K = id, α = 1`; `K = ½, α = ¼` with `α²`; `tikhonov 0 0`; `X = 0` | `R₁ = ½ = 1/(2√1)`, `‖K‖/α = 1`; `(1/16 + 1/4)⁻¹·½ = 1.6 > 1`, `tikhonov = 1`; junk `0`; `2√α·s·t ≤ αs² + t² ≤ ‖y‖t` | true | none |
| 4.2 rates, converse, saturation | `ν = ¼, ½, 1` at `α = 0.01`; `diag(1/n)`, `n ≤ 20000`; `ν = 2`, `K = id` | sup `= ν^ν(1−ν)^{1−ν}α^ν`: `0.1802, 0.05, α`; ratios `1.191, 1.254, 1.273, 1.280 → 1.2825`; `28.0, 157, 883, 4933`; `α/(α+1) > α²`; terms `½ + 1 = 3/2` | true | C02 |
| 4.3 Morozov | scalar `K = k`; `K x = (x, 0)`, `y = (1, 1)`, `δ = 1`; `‖y‖ ≤ δ`; `δ < 0` | `α(|y| − δ) = k²δ` attained; admissible set `{1}`, Tikhonov residual² `= (α/(1+α))² + 1 > 1`; `‖x − x†‖² ≤ 2Re⟪K(x† − x), z⟫ ≤ 4δ‖z‖` | true; dense range needed, shown by the control | none |
| 5.1 Landweber operators, bound, scheme, a priori stopping | `K = id`: `a = 1`, `a = 3/2`; `diag(1, ½, 1/10)`, `a = 1.9`, `2.1`; `K = 0` | `R₀ = 1 = √1`; `3/2 > √(3/2) = 1.22`; `0.981²⁰¹ = 0.0212`; `1.1²⁰¹ = 2.09·10⁸`; `(1 − (1−at)^{m+1})² ≤ (m+1)at` on `[0, 1/a]` | true | none |
| 5.2 discrepancy stopping | `K x = (x, 0)`, `a = ½`, `γ = 3/2`, `yᵟ = (1, δ)`; `γ = 1`; `diag(n^{-3/2})`, `n ≤ 200`; stopping at `m = 0` | residual² `4^{−(m+1)} + δ²`: index `3` and `6`, errors `1/16`, `1/128`; `γ = 1` never stops; indices `≈160, 5000, 1.3·10⁵`, errors `0.35, 0.19, 0.09`; bounded index forces `(I − aA)^{m+1}x† = 0` | true | none |
| 6.1 Bregman distances | `J = |·|`, `u₀ = 0`, `p₀ = ½, 1, 2`; `J u = ⊤`; `J u₀ = ⊤` | `|u| − u/2`; `|u| − u = 0` on `[0, ∞)`; `D(1, 0) = −1`; `⊤`; subdifferential empty at the pin; sum of one-sided distances `= (p − p₀)(u − u₀)` | true | N02 |
| 6.2 optimality condition, Bregman estimate, quadratic case | expansion with `r = Kuα − fᵟ`, `e = f − fᵟ`; `α = δ/‖v‖`; `J = −u²/2`; `H`, `J = ½‖·‖²` | `D + ‖r‖²/2α = ‖e‖²/2α + α‖v‖²/2 − ‖r − e + αv‖²/2α` (expanded, agrees); bound `‖v‖δ/2 + ‖v‖δ/2`; `J(1) = −½ < 0`; `D^symm = ‖u − u₀‖²` | true; convexity needed, shown by the control | none |
| Conventions: approximation numbers | definition at the pin | `singularValue T n = ⨅ ‖T − R‖₊` over rank `≤ n`, zero-based, so `a₀ = ‖T‖ = max σ` | consistent with "nonincreasing rearrangement" | R01 |
| Scope: Bayesian roadmap | main and the open pull requests | no roadmap found | pointer to nothing | C03 |

- Source locators checked against the text: 12 of the 12 into [BB], by content in arXiv 1801.09922v1 (BB lines 605–607, 684–690, 695–704, 957–959, 1009–1011, 1075–1115, 1144–1147, 1207–1230, 1353–1357); 0 of the 76 into [Kr], [EHN] and [Ha].
- Library declarations opened at the pin: `LinearMap.IsMoorePenroseInverse` (`TauCeti/Analysis/InnerProductSpace/MoorePenrose.lean:86`), `LinearMap.moorePenroseInverse` (:211), `LinearMap.isMoorePenroseInverse_iff_eq_moorePenroseInverse` (:268), `ContinuousLinearMap.singularValue` (`TauCeti/Analysis/OperatorIdeal/ApproximationNumber/Basic.lean:77`), `IsCompactOperator.tendsto_singularValue` (`…/ApproximationNumber/Compact.lean:139`), `TauCeti.subdifferential` (`TauCeti/Analysis/Convex/Subdifferential.lean:89`), `TauCeti.apply_le_apply_of_mem_subdifferential` (:191), `Submodule.toLinearPMap` (`Mathlib/LinearAlgebra/LinearPMap.lean:996`), `LinearPMap.IsClosed` (`Mathlib/Topology/Algebra/Module/LinearPMap.lean:59`).
- Duplication by object in the pinned libraries: no Bregman distance, Tikhonov or Landweber operator, Picard criterion, generalized inverse of a bounded operator, or closed-range criterion for compact operators found in Mathlib or Tau Ceti.
- Cross-roadmap citations resolved on main: PolarDecomposition PD-A10, PD-C07, PD-C19, PD-C23, PD-C28; ConvexAnalysisAndDuality Conventions, §3.5, §4.3 and the Layer 4 example; OnlineConvexOptimization §4.1; HilbertModules §2.8. ConditioningAndPerturbation exists as an open new roadmap.
- Dependency check: `depcheck: 94 roadmaps, 1054 edges, 0 problem(s)`; no UPWARD or CYCLE line. No change outside the roadmap folder.
- Elaboration of `Suggested.lean`: no error, 42 `sorry` warnings and nothing else; 16 definitions with real bodies, 4 proved theorems marked as sanity checks, no `set_option`.
- One-tactic probe on a scratch copy (`rfl`, `simp`, `infer_instance`, unfolding the two predicates then `simp`): none of the 42 closed. `#check` of 11 declarations: every signature carries `[CompleteSpace X] [CompleteSpace Y]` (or `[CompleteSpace V]`) and agrees with the README statement; nothing changed.
- Automatic checks: one failed, the pull-request number in the README, which is real (N01).

Overlap check: read VariationalAnalysisAndMetricRegularity, NewtonTypeMethodsAndAlgorithmicDifferentiation, MatrixFactorizationsAndSparseElimination, VariationalMethods, PolarDecomposition, ConvexAnalysisAndDuality, and by object BanachSpaceTheory and GaussianLinearModels; compact Schmidt series and `s_n = a_n`: owner BanachSpaceTheory §4.5 (R01); finite-dimensional real least squares: owner GaussianLinearModels §1.1, variant here (C01); finite-dimensional Moore–Penrose inverse: owner PolarDecomposition, cited; nothing else shared.

Source independence: 8 passages compared with 1 source ([BB], arXiv v1), none shared beyond formulas; largest share EHN, 39 of 88 locators; contents compared with EHN only through the chapter numbers of the README's own locators (Layers 2, 3, 4, 5 draw mainly on its Chapters 2, 3, 5, 6, with Layer 1 placed before Layer 2, its Chapter 4 spread over 3.2, 4.1, 4.2 and 5.1, and Layers 4.3 and 6 from other sources; the order 2 → 3 → 4, 5 is forced by the definition of a scheme through `K†`): independent on that evidence; the texts and tables of contents of [EHN], [Kr] and [Ha] could not be read.

Research link: Regularization theory of linear inverse problems as in Engl–Hanke–Neubauer (1996) and Kress (2014); Layer 6 is the Bregman-distance error estimate for convex variational regularization surveyed by Benning and Burger (Acta Numerica, 2018), a current line of research in imaging. Rests on the README's references and on [BB] as read.

## Not verifiable

- All 31 locators into [Kr] (Kress, *Linear Integral Equations*, 3rd ed.): the citation resolves only to the publisher's paywalled page.
- All 39 locators into [EHN] (Engl–Hanke–Neubauer): the citation resolves only to the publisher's paywalled page.
- All 6 locators into [Ha] (Hansen, SIAM 1998): the publisher's page refused access; no legal copy found.
- The printed numbering and page numbers of [BB] in Acta Numerica 27: only arXiv 1801.09922v1 is open; its content supports each cited statement, and its statements in order are consistent with the cited numbers under a single shared counter.

## Source issues

- **Misprint** in BB at Definition 4.2 (arXiv v1, p. 15): the source says the convergence condition is written with one symbol for the limit and the next line calls the minimum norm solution by another; it should be the same symbol in both; affects nothing.

## For the human reviewers

- **Not tested.** EHN has the largest share of the locators (39 of 88) and Kress the next (31); neither text nor table of contents could be read, so wording and arrangement were not compared with them.
- **Licence.** The README's "Prior formalization" section names the author's own repository lean-NASC (stated there as Apache-2.0, `NASC/Regularization.lean`) as a cited source; it was not opened, so reuse of its statements in `Suggested.lean` was not compared.
