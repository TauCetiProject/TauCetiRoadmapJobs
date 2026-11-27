# Review of QuasiMonteCarloSparseGridsAndTractability (pull request #3238 at d3661d1)

**Verdict:** needs changes

**Summary.** Changes are needed, all of them one-sentence repairs: the stated theorems survived every instance computed, but three sentences beside them are false as written (a negative control in 4.3, the interpolation Check of 6.2, and the sentence of 4.4 that links the multi-index count to the tensor product of operators). There are five small corrections and six format notes, none blocking. None of the four sources could be read from a legal place, so no locator was checked against its text and the wording and arrangement were not compared; that, and one question on the lower-bound route of 5.2, are left for the author and the human reviewers.

## R01 (P2) — The negative control of 4.3 says the criterion fails with `q₁ = 0`, but with `q₁ = 0`, `q₂ = 1` the tail constant is finite

A reader takes from the sentence that polynomial tractability of this family needs `q₁ > 0`, which the criterion of the same subsection contradicts. In the negative control of 4.3 (line 548), `λ_{d,j} = 1` for `j ≤ d` and `0` after; the text says "the criterion holds with `q₁ = 1` and fails with `q₁ = 0` for every `C₁`". Take `C₁ = 1`, `q₁ = 0`, `τ = 1`, `q₂ = 1`: the tail from `j = 1` has `d` ones, so `C₂ = sup_d d · d⁻¹ = 1 < ∞`. The reason given (the tail contains `d − ⌈C₁⌉ + 1` ones) shows unboundedness only when `q₂ = 0`.

The smallest change: "holds with `q₁ = 1`, and the strong criterion (`q₁ = q₂ = 0`) fails for every `C₁` and `τ`".

## R02 (P2) — The Check of 6.2 that the sparse-grid interpolant interpolates is false without the boundary condition

The Check (line 687) states `u_n^{(1)}(x_{l,i}) = u(x_{l,i})` at every sparse-grid point for an unrestricted `u`, and the module docstring of `Suggested.lean` refers to it as "the interpolation property". For `u ≡ 1` every surplus is `1 − 1/2 − 1/2 = 0`, so the interpolant is `0` and differs from `u` at every grid point; the negative control of 6.3 (line 716) computes exactly this.

The smallest change: add "for `u` zero on the boundary of the cube" to the Check.

## R03 (P2) — 4.1 does not identify the complexity of a tensor product with the multi-index count of 4.4

The summary and the scope claim the curse of dimensionality and the tractability equivalence "of tensor products", while the two theorems of 4.4 are about `tensorComplexity`, a count of multi-indices of a real sequence; the only bridge is the sentence in 4.4 (line 557) "for an implemented tensor product, 4.1 identifies its complexity with the count". It does not: 4.1 gives `n(ε) = #{n | aₙ(S) > ε}` for one compact operator. To reach the count one also needs that the eigenvalues of `(S*S)^{⊗d}` on the `d`-fold Hilbert tensor power are the products `λ_{j₁} ⋯ λ_{j_d}` with multiplicity, which no layer states and no supplier is cited for. An implementer who proves 4.4 as written has proved nothing about an operator.

The smallest change: add that statement to 4.4 as a prose target with its hypotheses (compact `S` between Hilbert spaces, the completed tensor power, the eigenvalue multiset), or name the supplier that owns it, and say in the module docstring that the operator form is not statable at the pins for lack of the tensor-power carrier. Otherwise say in the summary and in 4.4 that the results are for the eigenvalue count alone and drop the sentence.

## C01 — The negative control of 4.4 reaches a true conclusion from a reason that does not give it

For `λ₁ = 1`, `λ₂ = 1/2`, `λⱼ = 0` after (line 573) the text infers that `λ₁ < 1` cannot be dropped because "the counts are `2^d` for small `ε`". That happens only for `ε² < 2^{−d}`, where `2^d < ε^{−2}`, which strong tractability with `p = 2` allows. What does fail: at fixed `ε` the count is `∑_{k < 2 log₂(1/ε)} C(d, k)`, which is `1 + d` at `ε = 1/2` and of degree `3` in `d` at `ε = 1/4`, so no single exponent `q` serves all `ε`.

## C02 — The agreement with ProbabilisticAndMetricNumberTheory §2.7 fails for the empty sample

The Conventions (line 102) say that for samples in `[0, 1)` "the two one-dimensional star discrepancies agree". For `n = 0` this roadmap's value is `sup_x |0 − x| = 1`, while §2.7 defines the discrepancy of the empty sample as `0`. Add `n ≥ 1`.

## C03 — The spectral theorem used in 4.1 is not named

The route for the optimal algorithm (line 487) uses "Tau Ceti's spectral theorem for the compact self-adjoint `S*S`" without a name, and the supplier contracts do not list it, so an implementer cannot tell which form is assumed. At the pin it is `ContinuousLinearMap.exists_hilbertBasis_forall_hasEigenvector` (`TauCeti/Analysis/InnerProductSpace/Spectrum.lean`, line 152), which gives a Hilbert basis of eigenvectors and not an ordering of the eigenvalues; name it in the route and under "From Tau Ceti".

## C04 — Two deferrals in the scope name no roadmap

"The Monte Carlo and model-reduction roadmaps of the same numerical-analysis family" (line 775) cannot be followed. MonteCarloMultilevelAndSDESchemes is the roadmap whose scope lists quasi-Monte Carlo rules, discrepancy and sparse grids as not owned; name it and the others meant, or say that no roadmap owns Kolmogorov widths and polynomial chaos.

## C05 — Two statements of `Suggested.lean` are range lemmas, not headlines

`starDiscrepancy_le_one` and `radicalInverse_mem_Ico` bound a definition's values and no later target of the file uses them as hypotheses. Neither closes with one tactic (tried `rfl`, `simp`, `norm_num`, `infer_instance`), so they are not vacuous; if they are kept as sanity checks of the two definitions, say so in their docstrings, or leave them to the README, which already has both.

## N01 — TeX-style subscripts outside code spans

In 6.1 (line 649, `u_l = ∑_{i ∈ I_l} v_{l,i} φ_{l,i}`) and 6.2 (line 677, `h_n = 2^{−n}`) the formula is outside a code span.

## N02 — "below" for layers that stand above

Scope and ownership (line 755): "The numbers are those of the layers below"; the layers precede this section.

## N03 — Process words

"the open roadmap CombinatorialDiscrepancy" and "the open roadmap QuadratureRulesAndPeanoKernels" (lines 770–773) describe today's state; the heading "Beyond this roadmap (a roadmap for a roadmap; do not implement)" is an instruction rather than a statement of scope.

## N04 — A Check that cannot be recomputed

The Check of 1.2 (line 195) gives `−0.0798651` for "five random points"; list the points.

## N05 — Mixed indexing in the Checks of 4.4

`λⱼ = (j + 1)^{−2}/2` with `λ₁ = 1/2` (line 571) is zero-based in the formula and one-based in the label; the counts `7, 8, …` are those of the zero-based reading.

## N06 — A section comment of `Suggested.lean` with no declaration

`## Upstream declarations named in the README` (line 704) heads only `#check` lines.

## Questions for the author

- In 5.2 the lower bound for the anchored space is taken from [DKS, Lemma 4.3] "with the weighted rule in place of the equal-weight one", for arbitrary real weights (after Smolyak's theorem). The derivation I can reconstruct, discarding the off-diagonal terms `aᵢ aₗ K(tᵢ, tₗ)` because `K ≥ 0`, needs `aᵢ aₗ ≥ 0`. What gives `e² ≥ e₀² (1 − n κ_s²)` for signed weights? I could not read the source. A search over about 200,000 random and 400 hill-climbed node sets (`s ≤ 4`, `n ≤ 5`, `c ∈ {0, 0.3, 0.5, 1}`, `γⱼ ≤ 50`) with optimal weights found no violation of `e² ≥ e₀² − ∑ᵢ h(tᵢ)²/K(tᵢ, tᵢ)` (largest ratio `0.99986`), so the inequality may hold here, but no argument is given.
- Do [DKS, Theorems 4.5 and 4.6] state the two characterizations for all algorithms using function values, as `integrationComplexity` does, or for equal-weight rules? If the latter, the necessity direction needs a primary source (the text says only that DKS "refers its lower bound to Sloan and Woźniakowski" for the unanchored space). The source was not readable.

## Verified sound

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 `localDiscrepancy`, `starDiscrepancy`, `starDiscrepancy_le_one` | `n = 0`; `s = 0`; point `0`; point `1/2`; midpoints | `n = 0`: `sup x = 1`; `s = 0`: `n/n − 1 = 0`; `1`; `1/2`; `1/(2n)` | holds | C02 |
| 1.1 negative control | `s = 2`, point `(0,1)`, `f = x` | error `−1/2`; closed boxes `−1/2`; strict boxes `+1/2` | holds | none |
| 1.2 `hlawkaZaremba` | `s = 1` by parts; `s = 0`; `n = 0`, `f ≡ 1` | `Q − I = −∫ f′Δ`; `0 = 0`; `−1 ≠ 0` so `0 < n` needed | holds | N04 |
| 1.2 `koksmaHlawka_of_contDiffOn` | face points `(y_u; 1)` in the cube | `|Δ| ≤ D*` at each | holds | none |
| 1.3 `hardyKrauseVariation_fin_one` | grid with `m = 0`; `u = {0}` | no admissible grid; sum of `|f(p_{k+1}) − f(p_k)|` | holds | none |
| 1.3 `koksmaHlawka` | indicator of `[1/2,1]` with `{1/4}`, `{1/2}`; indicator of `{1}` with `{1}`, `{0,1}`; `s = 0`; `V = ∞` | `1/2 ≤ 3/4`; `1/2 = 1/2`; `1 ≤ 1`; `1/2 = 1/2`; `0 ≤ 0`; `D* ≥ 1/(2n)` gives `∞` | holds | none |
| 1.3 negative control | `f = x`, point `(0,0)` | Vitali `0`, Hardy–Krause `1`, error `1/2` | holds | none |
| 2.1 `radicalInverse`, Halton, Hammersley | `φ₂(0..6)`; `φ₃(3)`, `φ₃(4)`; `t₁..t₃`; reversed digits of `6` | `0,1/2,1/4,3/4,1/8,5/8,3/8`; `1/9`, `4/9`; as listed; `3/4` vs `3/8` | holds | C05 |
| 2.2 `IsNet`, `IsTSSequence` | `m = 0`; `s = 0`; diagonal `k/4` | one point, count `1 = b⁰`; vacuous or count `b^t`; box `[0,1/2)×[1/2,1)` empty | holds | none |
| 2.3 bounds | Halton `s = 1, 2`, Hammersley `s = 2`, repeated base, `n = 4, 16, 64`; net `m = t`; `s = 0, 1` | `0.72,0.36,0.24`; `1.04,0.42,0.19`; `1.44,0.99,0.83`; `0.5,0.3125,0.2656`; `C ≥ b^t (t log b)^{1−s}`; `0`, `b^{t−m}` | holds | none |
| 2.4 rates | composition only | closed and strict boxes agree for points in `[0,1)^s` | holds | none |
| 3.1 kernels, one-variable norms | `γ = 0.7`: `K(y,y)`; `c = 1`; `K(·,c)`; `∫ η(x,y) dx` | `1.1213, 1.0583, 1.1703`; `1.14, 1.21`; `2 − max`; norm `1`; `B₃(y) + B₃(1−y) = 0` | holds | none |
| 3.2 `worstCaseError_sq_eq` | lattice `n = 7`, `z = (1,3)`; constant kernel; `γ_∅` | `0.00979453`; `1 − 2 + 1 = 0`; `∅` terms cancel | holds | none |
| 3.3 `lintegral_sq_error_shift_le`, `shiftAveragedError_latticePoints_sq` | `f = 0`; `e = ∞`; 20000 shifts; `s = 1` | `0 ≤ 0`; `∞·0 = 0`; `0.005431` vs `0.005425`; `γ/(6n²)` | holds | none |
| 3.4 CBC bounds | `n = 31`, `(j+1)^{−2}`, `λ = 1`; `s = 0`; `s = 1`; `λ = 1/2`; `δ = 1/2` | `z = (1,12,13,11)`, `3.943·10⁻⁴ ≤ 8.36·10⁻³`; `0 ≤ 0`; Jensen and `n^{2λ} ≥ φ(n)`; `tsum = 0`; `λ = 1` | holds | none |
| 4.1 minimal error, complexity | `n = 0`; rank `r`; identity; normed target | `‖S‖ = a₀`; `a_r = 0`; `n(ε) = r`; Gelfand number equals `aₙ` on a Hilbert source | holds | C03 |
| 4.2 tractability notions | `2^d`; `⌈d⁵ε⁻³⌉`; `N ≡ ⊤` | fails at `ε = 1/2`, `η < log 2`; `≤ 2d⁵ε⁻³`; rejected | holds | none |
| 4.3 criterion and bound | `λ_j = j⁻²`; ones up to `d`; `q₁ = 0`, `q₂ = 1` | `π²/6`, counts `1, 9, 33`; `n = d`; `C₂ = 1 < ∞` | theorem holds, Check false | R01 |
| 4.4 tensor count | `d = 0`; `λ₀ = λ₁ = 1`; `(j+1)⁻²/2` at `ε = 0.1`; `λ = (1, 1/2, 0, …)` | `1 ≥ 2⁰`; `≥ 2^d`; `7, 8`; `1 + d` at `ε = 1/2`, cubic at `1/4` | theorems hold | R03, C01, N05 |
| 5.1 integration problem | carrier, information class | `range (RKHS.eval H)` in `StrongDual ℝ H` elaborates | holds | none |
| 5.2 characterizations | `γ = 1`; `1/j`; `j^{−3/2}`; upper bound constants | sum `s`; `≤ 1 + log s`; summable, root not; `2B = c² − c + 1/2`, `1/6` | upper bound holds; lower bound not checked | question |
| 6.1 basis, surplus | `d = 0`; `l = 0`, `d = 1`; `u = x²`; `x(1−x)`; `‖ψ‖₁` | `1 = 2⁰`; `0` vs junk `1`; `−4^{−l}`; `4^{−l}`; `2^{−d} 2^{−2|l|₁}` | holds | N01 |
| 6.2 dimensions | `d = 2`, `n ≤ 5`; closed form `d = 1, 2, 3`; `d = 0`; `u ≡ 1` | `1,5,17,49,129`; `2ⁿ−1`, `1 + 2ⁿ(n−1)`, `−n/2 + 1 − 2^{−n}`; `1` vs `2ⁿ−1`; interpolant `0` | theorems hold, Check false | R02 |
| 6.3 error bounds | `d = 2`, `n = 5`; `n = 0`; `d = 0`; `∑ 4^{−i} C(i+n+d−1, d−1) ≤ 2A` for `d ≤ 5`, `n ≤ 7` | bounds `8.55·10⁻⁴`, `3.80·10⁻⁴`, `1.80·10⁻²`; `1/4 ≤ 1/2`; `0 ≤ 0`; all hold | holds | none |

- Source locators checked against the text: 0 of 72 (no source readable; see below).
- Library declarations opened at the pin: `ContinuousLinearMap.singularValue` (`ApproximationNumber/Basic.lean`:77, infimum over rank at most `n`), `singularValue_eq_iInf_nnnorm_comp_orthogonal` (`MinMax.lean`:226, complete inner product source, seminormed target), `IsCompactOperator.tendsto_singularValue` (`Compact.lean`), `positiveDefiniteKernelOperator` (`Kernel/Kolmogorov.lean`:65), `integrable_kolmogorovFeature`, `kernelMeanEmbedding`, `norm_kernelMeanEmbedding_sub_sq` (`Kernel/MeanEmbedding.lean`:123, 135, 186), `exists_hilbertBasis_forall_hasEigenvector` (`InnerProductSpace/Spectrum.lean`:152); the 30 names of the `#check` block all elaborate.
- Objects searched in the pinned Mathlib and Tau Ceti: star discrepancy, radical inverse, van der Corput, Halton, Hardy–Krause, Koksma, sparse grids, tractability: none present.
- Cross-roadmap citations resolved: ProbabilisticAndMetricNumberTheory §2.7 (strict cuts, samples in `[0,1)`, `koksma` with `eVariationOn`), KernelsAndSpectralMethods §7.2 (`mmd_eq_iSup`), FiniteSamplingDiscrepancy (on main); CombinatorialDiscrepancy and QuadratureRulesAndPeanoKernels at their open heads.
- Dependency check: `depcheck: 94 roadmaps, 1055 edges, 0 problem(s)`; no change outside the folder.
- Elaboration: `lake env lean` on `Suggested.lean` exits 0 with 41 `sorry` warnings and no other warning; 41 theorems, 60 definitions; none of the 41 closes with `rfl`, `simp`, `norm_num` or `infer_instance`.
- Elaborated types compared with the README for all declarations: `algorithmError`, `linearComplexity`, `tailConstant` and `integrationComplexity` drop `CompleteSpace` (or a `NormedSpace`) binders their bodies do not use; every theorem about them carries the binders; nothing to change.
- Pull-request text read against the head: counts (41 and 60), pins (Mathlib 1b1ccf4, Tau Ceti 2fd255d), suppliers and imports agree.

Overlap check: read MonteCarloMultilevelAndSDESchemes, ScatteredDataKernelInterpolation, RegularizationOfLinearIllPosedProblems (open) and KernelsAndSpectralMethods (main), also ProbabilisticAndMetricNumberTheory §2.7 and SNumbers; the one-dimensional star discrepancy and Koksma's inequality: ProbabilisticAndMetricNumberTheory; the supremum form of the maximum mean discrepancy: KernelsAndSpectralMethods; approximation and Gelfand numbers: Tau Ceti and SNumbers; singular systems: RegularizationOfLinearIllPosedProblems; all cited or not restated, nothing owned twice.

Source independence: 0 passages compared with 0 sources (none of the four could be read); largest share DKS, 38 of 72 locators; contents not compared with DKS; by the README's own page numbers the layers do not run in its order (Layer 1 cites pp. 165–176, Layer 2 pp. 140–146, Layer 3 pp. 169–202, Layer 5 pp. 186–187).

Research link: Layers 3 and 5 state the weighted-space lattice-rule and tractability theory surveyed by Dick–Kuo–Sloan (2013); Layer 4 the linear-information tractability of Novak–Woźniakowski (2008); Layer 6 the sparse-grid estimates of Bungartz–Griebel (2004); rests on the README's references and downstream consumers, no source read.

## Not verifiable

- DKS (Dick–Kuo–Sloan, Acta Numerica 2013), all 38 locators, including those of 1.1–1.3, 2.1–2.4, 3.1, 3.2 and 5.1: the DOI resolves to a publisher page that is not an open copy; one author-page address tried returned nothing.
- Caf (Caflisch, Acta Numerica 1998), 7 locators (1.1–1.3, 2.3, 2.4): the same.
- BG (Bungartz–Griebel, Acta Numerica 2004), 12 locators (6.1–6.3): the same; an institute-hosted copy was refused as not shown to be an author's page.
- NW (Novak–Woźniakowski, EMS Tracts 6, 2008), 15 locators (4.1–4.4, 5.1, 5.2): no legal copy found.
- The lower-bound direction of the four theorems of 5.2 for arbitrary algorithms (see the questions).

Automatic checks set aside as false positives: none.

## Source issues

- none

## For the human reviewers

- Not tested: none of DKS, Caf, BG, NW could be read legally, so wording and arrangement were not compared with any source; DKS carries 38 of the README's 72 locators.
- Licence: the README (lines 843–853) names the author's own lean-NASC repository (Apache-2.0, commit 8efdbf7) as a prior formalization of some targets; it was not opened, so `Suggested.lean` was not compared with it.
- Scope: three of the four sources are survey articles (Acta Numerica 1998, 2004, 2013); the primary papers for the tractability characterizations of 5.2 and the component-by-component bound of 3.4 are not cited.
