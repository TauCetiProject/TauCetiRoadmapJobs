# Review of MathematicalStatisticsAsymptotic (pull request #2320 at dbee9ff)

**Verdict:** needs changes

## R01 (P2) — Asymptotic calibration does not give the required finite-sample level

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2012, “has level at most `α` and power at least `γ`”.
**Claim:** The preceding uniform CLT and total-variation continuity do not ensure that any sample size satisfies the exact level constraint defining Pitman efficiency.
**Witness:** In normal location take Tₙ=X̄ₙ+1/n, μ(θ)=θ, σ=1. All stated hypotheses hold, including positive slope. Its null rejection probability is 1−Φ(zα−1/√n)>α for every n, so the required minimum does not exist.
**Repair:** Require tests calibrated to level at most α for every n, with standardized critical values converging to zα. For this example use critical value zα+1/√n; it becomes the usual normal-mean test and the efficiency ratio is 1.

## R02 (P2) — The symmetric trimmed-mean formula mishandles endpoint atoms

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1559, “For `F` symmetric about `0` the variance is”.
**Claim:** The no-flat-level hypothesis permits atoms crossing the trimming probabilities. The displayed formula incorrectly assigns tail mass α at each cutoff; the uniform-law Check at line 1584 also applies a zero-centred formula without centring.
**Witness:** For P=(δ₋₁+δ₁)/2 and α=1/10 the forbidden-level set is empty. The actual variance is 25/16; the displayed formula gives 15/8 with closed endpoints, 35/32 with half-open endpoints, or 5/16 with open endpoints.
**Repair:** Use Var(clamp(X,a,b))/(1−2α)² in general, and E[min(X²,b²)]/(1−2α)² under symmetry about zero. These give 25/16 here. In the uniform Check centre X at 1/2 and use b=1/4, giving 4(1/96+1/32)=1/6.

## R03 (P2) — The L-statistic proof route loses ties

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1562, “write `Lₙ` as `∫ x φ(Fₙ(x)) dFₙ(x)` up to a remainder”.
**Claim:** This remainder need not vanish for the permitted atomic laws. The following trimmed-mean route also invokes a quantile-process derivative that §4.1 only supplies pointwise under a positive density.
**Witness:** For P=(δ₀+δ₁)/2 and φ(u)=u, Lₙ→3/8 whereas ∫xFₙ(x)dFₙ(x)→1/2. With α=1/4 the trimmed-mean assumptions hold, but the positive-density hypothesis of §4.1 fails at every quantile.
**Repair:** Use the empirical quantile integral ∫₀¹φ(u)Fₙ⁻¹(u)du, with the rank-weight approximation justified under the stated assumptions. Own and source the integrated-quantile derivative under the no-flat-level condition, rather than deriving it by integrating §4.1. Its Bernoulli trimmed limit variance is 1.

## R04 (P2) — The Huber example allows zero sensitivity

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1402, “for `F` symmetric about `θ₀` and continuous at `θ₀ ± k`”.
**Claim:** These hypotheses do not imply the nonsingular derivative or consistent root required by §5.3.
**Witness:** Take θ₀=0,k=1,P=(δ₋₂+δ₂)/2. F is continuous at ±1 but 2F(1)−1=0. Except at equal counts, the Huber root has absolute value tending to 1, so its √n-scaled error is not tight.
**Repair:** State the example for k>0, P(|X−θ₀|<k)>0, and consistent approximate roots satisfying §5.3. The denominator is then positive; the two-atom counterexample is excluded. Add it as a negative control.

## R05 (P2) — Regression breakdown needs a nonzero parameter dimension

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2250, “at every regression sample with a design of full rank”; also :2265.
**Claim:** The least-squares and least-absolute-deviation fractions omit p≥1 and n≥1. A full-rank design can have zero columns.
**Witness:** With n=1,p=0 the design has full column rank. Both estimators take values in the singleton ℝ⁰ under every replacement, so their breakdown is ∞, whereas 1/n=1.
**Repair:** Qualify both assertions by n≥1 and p≥1, retaining full column rank for least squares. Record that p=0 gives ∞, consistently with the constant-estimator Check.

## R06 (P2) — The acceptance test still omits statable headline conclusions

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:25, “every headline of the README that carries a Lean name”; also :1301 and :1548.
**Claim:** The new composite signature covers only the null limit. The composite local-alternative conclusion, Pitman-efficiency theorem, and lower half of the Huber saddle-point theorem remain absent despite available carriers.
**Witness:** README:1935 requires χ²_q((Ch)ᵀ[CI⁻¹Cᵀ]⁻¹Ch); Lean:1330 uses only Pθ₀. README:2309 compares every admissible score at G₀; Lean:1555 varies only the contaminating law with the score fixed.
**Repair:** Add the full composite local-alternative signature, the corrected Pitman-efficiency signature, and the admissible-score lower bound at G₀. Quantify headlines independently of naming them. For N₂(θ,I),c(θ)=θ₁,h=(2,3), the composite law must be χ²₁(4); Huber must compare competing scores.

## R07 (P3) — The quantile influence Check includes the discontinuous direction

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2211, “`IF(x) = (p - 1{x ≤ ξ})/f`”.
**Claim:** This formula is not the contamination derivative at x=ξ, although §9.1 defines influence pointwise and §9.3 correctly excludes that point.
**Witness:** For uniform F, p=ξ=1/2, contamination (1−t)F+tδξ retains quantile ξ. Its derivative is 0, while the displayed formula gives −1/2.
**Repair:** Write “For x≠ξ, IF(x)=(p−1{x≤ξ})/f; at x=ξ the contamination derivative is 0.” The asymptotic variance remains p(1−p)/f² because F has no atom at ξ.

## R08 (P3) — The rare-event Check has two missing ranges

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:446, “has mean `1` for every `n`”; :447, “for every `C`”.
**Claim:** The claimed mean needs n≥1 and the probability bound needs C≥0.
**Witness:** At n=0, X₀=0 and E[X₀]=0. At n=2,C=−1, μ{C<X₂}=1>1/2.
**Repair:** Write “For n≥1, Xₙ has mean 1; for C≥0, μ{C<Xₙ}≤1/n. Thus the sequence is bounded in probability.” Both excluded boundary cases then agree with their computed values.

## R09 (P3) — Separate the bundled definition Checks

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1533 and :1974, the `hoeffdingKernel` and `quadForm` Check lists.
**Claim:** The bullets bundle different tests; the required format is one discriminating test per bullet.
**Witness:** At lines 1533–1535 one bullet combines the order-one and order-two kernels. At line 1974 one bullet combines scalar squaring and the zero vector.
**Repair:** Split the kernel tests into order one, the sample-variance kernel, and the product kernel; split quadForm into scalar squaring, zero vector, and the nonsymmetric matrix. Preserve the computed values h−θ, −xy, xy and h², 0, −1.

## R10 (P3) — The LAD application is outside the cited page range

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2343, “least squares and least absolute deviations in §3D, pp. 7–8”.
**Claim:** The source places the least-absolute-deviation application on printed page 9.
**Witness:** hjort_pollard line 368 marks page 9; lines 369–401 contain the LAD application. Section 3D begins at line 313 on page 7.
**Repair:** Replace the application locator by “§3D, pp. 7–9 (least squares, p. 8; least absolute deviations, p. 9)”. Keep Theorem 2.2, p. 4.

## R11 (P3) — Supply the Brownian-bridge definition locator

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:722, “`IsBrownianBridgeLaw P f L`”.
**Claim:** The sampled §2.4 defines the indexed bridge law and asserts uniqueness without any source locator. Its Needs line names internal results and library objects, not a source.
**Witness:** README:722–730 contains the definition and uniqueness/existence assertions; no theorem, definition, section or printed-page locator appears in the subsection.
**Repair:** Attach an exact definition/section and printed-page locator for the indexed P-Brownian bridge law; identify uniqueness as the application of §2.3 and existence as the application of §3.1/§3.4. Keep the computed covariance 1/8 at s=1/4,t=1/2.

## R12 (P3) — Name the pinned Prékopa–Leindler input

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1801, “Prékopa–Leindler form”; :1810, the Needs line.
**Claim:** The proof route consumes log-concave marginalization, but neither its Needs line nor the exact supplier contracts identify the pinned declarations supplying it.
**Witness:** TauCeti/MeasureTheory/Integral/PrekopaLeindler.lean:372 supplies finite-dimensional volume; :397 supplies LogConcave.lintegral_prod_right; :446 supplies Convex.measure_preimage_prodMk_le_measure_preimage_prodMk_zero.
**Repair:** Add these Tau Ceti declarations to the supplier contract and §7.5 Needs, retaining their measurability and finite-dimensional hypotheses and the reduction to the covariance range. The centred interval example then uses the supplied central-slice inequality, with probabilities 0.6827≥0.4772.

## R13 (P3) — Correct the median replacement counting argument

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2269, “`m` replacements leave at least `m + 1` original points on each side”.
**Claim:** There are m+1 unchanged observations in total, not on each side of the median.
**Witness:** In the original sample (0,1,2,3,4), replace 0 and 1 by 100 and 101. The median is 4, with only two unchanged points strictly below and none strictly above it.
**Repair:** Write “At most m replacements leave at least m+1 unchanged observations. Since at most m observations can lie below the original minimum or above the original maximum, the new median lies between those extremes.” Here 0≤4≤4.

## R14 (P3) — The description overstates the locator coverage

**Location:** Pull-request description, first paragraph: “every headline carries a theorem-and-page locator in a cited text”.
**Claim:** The head still has the uncited indexed Brownian-bridge definition and uniqueness assertion in §2.4; other entries use section or equation locators rather than theorem locators.
**Witness:** README:722–730 has no source locator. README:2224 cites Huber–Ronchetti §4.2, equation (4.2), rather than a theorem.
**Repair:** After supplying the missing locator, write “The README cites theorem, definition, section or equation locators with printed pages, and records the adaptations used here.” Keep the accurate statement that this adds a new roadmap.

## Verified sound

| Statement | Instances | Computed left side/input | Computed right side/output | Result / change |
|---|---|---|---|---|
| IsContiguous | P=Q; P=δ₀,Q=δ₁ | P{1}=0 in both cases | Q{1}=0 / 1; true / false | agrees; no change |
| uStatistic | m=2,n=2,h(x,y)=xy; n=1 | average of 2 products = x₁x₂; empty average=0 | x₁x₂; 0 | agrees; no change |
| empiricalCdf | sample (0,2), t=1 and 2 | counts 1 and 2, divided by 2 | 1/2 and 1 | agrees; no change |
| sampleQuantile | sample (0,2), p=1/2 and 3/4 | infima of [0,∞), [2,∞) | 0 and 2 | agrees; no change |
| huberScore | k=1,x=2 and −2 | max(−1,min(1,x)) | 1 and −1 | agrees; no change |
| TendstoInProbability | Xₙ=1/(n+1); Xₙ=1, target 0 | ε=1/2: tail masses eventually 0 / 1 | converges / fails | agrees; no change |
| IsBoundedInProbabilityAlong | Xₙ=1; Xₙ=n | large fixed radius: eventual tails 0 / 1 | bounded / unbounded | agrees; no change |
| TendstoInDistribution.of_tendstoInProbability_dist | Xₙ=Z normal,Yₙ=Z+1/(n+1) | distance=1/(n+1)→0 | both limit N(0,1) | agrees; no change |
| tendstoInDistribution_sum_of_lindeberg | Yₙᵢ=εᵢ/√n, independent Rademachers | covariance sum=1; tail sum eventually 0 | N(0,1) | agrees; no change |
| tendstoInDistribution_inv_sqrt_smul_sum_sub_euclidean | X=(Z,2Z); rank zero control | covariance [[1,2],[2,4]]; 0 | limit (Z,2Z); δ₀ | agrees; no change |
| map_quadForm_inv_multivariateGaussian | k=1,m=2,S=4 | X²/4=(Z+1)² | χ²₁(noncentrality 1) | agrees; no change |
| map_quadForm_pseudoInverse_multivariateGaussian | S=diag(2,0) | S⁺=diag(1/2,0); X₁²/2=Z² | χ²₁ | agrees; no change |
| 1.4 / tendstoInDistribution_second_order_delta_method | g(x)=x²,θ=0,Tₙ=Z/√n | n g(Tₙ)=Z² for n≥1 | ½·2Z²=Z² | agrees; no change |
| outerIntegral | bounded constant 2; nonnegative Pareto with infinite mean | infimum=2; empty real infimum=0 | 2; documented junk 0 | agrees; no change |
| innerIntegral | bounded constant −2; nonnegative Pareto | −outerIntegral(2)=−2; −outerIntegral(−X)=0 | −2; unbounded-input junk | agrees; no change |
| outerLIntegral | constant 2; Pareto tail 1/t | majorant expectations 2; ∞ | 2; ∞ | agrees; no change |
| measure_le_le_outerLIntegral_div | f=2,t=1 and 3 | tail probabilities 1 and 0 | upper bounds 2 and 2/3 | agrees; no change |
| outerLIntegral_ofReal_eq | f=2 on a probability space | extended outer integral=2 | ofReal(real outer integral)=2 | agrees; no change |
| outerIntegral_eq_integral | f=−2, probability measure | outer integral=−2 | ordinary integral=−2 | agrees; no change |
| 2.2 / TendstoInOuterDistribution | constant maps 0 versus 1, L=δ₀ | test arctan: expectations 0 versus π/4 | target expectation 0 | agrees; no change |
| IsAsymptoticallyTight | Xₙ=eₙ/(n+1); Xₙ=n | distance to {0}: 1/(n+1); n | asymptotic tightness true; false | agrees; no change |
| tendstoInOuterDistribution_iff_tendstoInDistribution | measurable constant sequence 2 | bounded-continuous integrals f(2) | law δ₂ has integral f(2) | agrees; no change |
| TendstoInOuterDistribution.tendstoInDistribution_comp | Xₙ=Z normal,g(x)=2x | measurable image variance 4 | image limit N(0,4) | agrees; no change |
| TendstoInOuterDistribution.comp | Xₙ=Z normal,g(x)=x² | image law Z² | χ²₁ | agrees; no change |
| TendstoInOuterDistribution.of_tendstoInProbability_dist | Xₙ=Z,Yₙ=Z+1/n | distance→0 | same N(0,1) limit | agrees; no change |
| Linfty | T={0,1}, z=(1,−2); unbounded z(n)=n | sup norms 2 / ∞ | first admitted; second excluded | agrees; no change |
| liftLinfty | bounded (1,−2); g(n)=n | output (1,−2); output 0 | norm 2; junk norm 0 | agrees; no change |
| marginal | z=(1,−2), indices (1,0,1) | evaluations (−2,1,−2) | Euclidean vector (−2,1,−2) | agrees; no change |
| IsAsymptoticallyUniformlyEquicontinuous | finite discrete T; zero semimetric, process (0,Z) | modulus 0 for δ<1; modulus ∣Z∣ | true; false | agrees |
| tendstoInOuterDistribution_of_marginal_of_equicontinuous | T singleton, process constantly Z normal | sole marginal N(0,1); modulus 0 | Linfty law N(0,1) | agrees; no change |
| ext_of_marginal | T singleton, L=δ₀,L′=δ₁ | first marginal δ₀ ≠ δ₁ | hypothesis rejects unequal laws | agrees; no change |
| IsBrownianBridgeLaw | uniform P, s=1/4,t=1/2; mean shifted by 1 | covariance 1/8; required mean 0 | correct bridge accepted; shift rejected | agrees; no change |
| empiricalProcess | n=2, observations (0,1), f(x)=x, P mean 1/2 | √2·(1/2−1/2)=0 | 0; n=0 also 0 | agrees; no change |
| IsGlivenkoCantelli | singleton constant 1; indicators of all finite subsets, uniform P | sup errors 0; 1 | true; false | agrees; no change |
| IsDonsker | singleton constant 1; singleton Cauchy identity | process 0; Cauchy scale √n | δ₀ limit; not tight | agrees; no change |
| IsDonsker.isBrownianBridgeLaw | singleton Bernoulli(1/2) identity | CLT variance 1/4 | bridge variance E X²−(E X)²=1/4 | agrees; no change |
| 3.2 / bracketingNumber | empty class; singleton measurable f | 0 brackets; [f,f] gives 1 | 0; 1 | agrees; no change |
| bracketingEntropyIntegral | singleton; all real constants, L², δ>0 | log 1=0; finite-radius bracket number ∞ | 0; ∞ | agrees; no change |
| coveringNumberLp | real constants, r=0 or r=2, finite ε | distances 0 or ∣s−t∣ | cover number 1 or ∞ | exponent restriction repaired |
| uniformEntropyIntegral | singleton 0 with F=1; F=0 | covering number 1; positive-norm Q index empty | integral 0; 0 | agrees; no change |
| IsPointwiseSeparable | half-lines with rational thresholds approaching from above; singleton indicators of points | rational limits give every half-line; countable points omit uncountably many | true; false | agrees; no change |
| integral_sup'_le_of_hasSubgaussianMGF | Y₀=Z,Y₁=−Z, variance proxy 1 | E∣Z∣=√(2/π)=0.797885 | √(2 log 2)=1.177410 | agrees; no change |
| isGlivenkoCantelli_of_bracketingNumber_lt_top | singleton constant 3 | L¹ bracket count 1; sup error 0 | outer-a.s. limit 0 | agrees; no change |
| isDonsker_of_bracketingEntropyIntegral_lt_top | singleton Cauchy identity | entropy 0; L² norm ∞ | L² hypothesis now rejects example | repaired |
| isDonsker_indicator_Iic | P=δ₀ | empirical cdf=F for every n≥1 | zero bridge/process | agrees; no change |
| isBrownianBridgeLaw_map_comp_cdf | P=uniform[0,1],s=1/4,t=1/2 | cov(B(F(s)),B(F(t)))=1/8 | F(min(s,t))−F(s)F(t)=1/8 | agrees; no change |
| vcDimSet | C={∅}; C=all subsets of {0,1} | largest shattered cardinalities 0; 2 | VC dimensions 0; 2 | agrees; no change |
| isGlivenkoCantelli_of_uniformCoveringNumber | singleton constant 1,F=1 | cover count 1; envelope integral 1 | sup empirical error 0 | agrees; no change |
| isDonsker_of_uniformEntropyIntegral_lt_top | singleton Rademacher identity,F=1 | uniform entropy 0; envelope L² norm 1 | limit N(0,1) | agrees; no change |
| coveringNumberLp_indicator_le_of_vcDimSet | C={∅},d=0,ε=1/2 | cover number 1 | bound K·4e (choose K≥1) | agrees; no change |
| tendstoInProbability_empiricalProcess_sub | uniform P, t₀=1/2,τₙ=t₀+1/n | L² distance²=1/n | process increment variance≤1/n→0 | agrees; no change |
| HasHadamardDerivWithinAt | identity at 0, domain ℝ or empty | quotient hₙ→v; membership true or false | accepts ℝ; rejects empty domain | repaired |
| HasHadamardDerivWithinAt.comp | φ(x)=2x,ψ(x)=3x | quotient of ψ∘φ =6v | ψ′∘φ′(v)=6v | agrees; no change |
| quantileFunctional | uniform cdf,p=1/4; constant zero function | inf [1/4,∞)=1/4; inf ∅=0 | 1/4; documented total-function issue | agrees; no change |
| hasHadamardDerivWithinAt_quantileFunctional | uniform F,p=ξ=1/2, density 1, local direction h=1 | perturbed quantile=1/2−t | derivative −h(ξ)/f=−1 | agrees; no change |
| tendstoInOuterDistribution_functional_delta_method | φ(x)=2x,Tₙ=Z/√n,θ=0 | scaled image=2Z; remainder 0 | N(0,4); remainder→0 | agrees; no change |
| tendstoInOuterDistribution_argmax | shrinking orthogonal spikes with nonatomic directions | probability of each compact containing spikes is 0 | compact-containment hypothesis fails | old counterexample excluded |
| tendstoInProbability_of_isWellSeparated | Mₙ=M=−θ², exact maximizer | gap outside radius ε is ε² | θ̂ₙ=0→0 | agrees; no change |
| tendstoInProbability_mle_of_isCompact | normal location Θ=[−1,1],θ₀=0 | MLE=clamp(sample mean); KL=θ²/2 | MLE→0 | agrees; no change |
| 5.3 / zEstimator_asymptotically_linear | ψθ(x)=x−θ, θ̂=sample mean | V=−1; influence=x−θ₀ | expansion residual identically 0 | agrees; no change |
| zEstimator_tendstoInDistribution | standard normal location mean | V=−1,Cov ψ=1 | V⁻¹Cov ψ V⁻ᵀ=1 | agrees; no change |
| oneStep_asymptotically_linear | Ψₙ(θ)=sample mean−θ,V̂=−1 | one step equals sample mean | linearization remainder 0 | agrees; no change |
| mEstimator_asymptotically_linear | f(t)=−t²+t³sin(t⁻⁴) at zero | derivative at tⱼ: −2tⱼ−4/tⱼ²→−∞ | common-ball Lipschitz hypothesis fails | excluded at this head |
| isBoundedInProbability_rate_mEstimator | φ(δ)=δ and √δ | r²φ(1/r)=r and r^(3/2) | rates √n and n^(1/3) | agrees; no change |
| 5.8 / tendstoInDistribution_sampleQuantile | uniform[0,1],p=1/2 | density 1; Bernoulli variance 1/4 | quantile limit variance 1/4 | agrees; no change |
| tendstoInProbability_bahadur_remainder | uniform[0,1],p=1/2 | linear term 1/2−Fₙ(1/2) | remainder after √n scaling→0 | agrees; no change |
| hajekProjection | n=2,T=X₁X₂; n=0,T=1 | projections 0; 1 | Hilbert projection assertion only n≥1 | n=0 excluded as required |
| integral_sub_hajekProjection_mul_eq_zero | T=X₁X₂, independent centered normals, gᵢ(x)=x | E[X₁²X₂+X₁X₂²]=0 | orthogonality RHS 0 | agrees; no change |
| 6.2 / tendstoInDistribution_uStatistic | sample-variance kernel under normal and Exp(1) | m²ζ₁=μ₄−σ⁴=3−1; 9−1 | limit variances 2; 8 | agrees; no change |
| 6.3 / tendstoInDistribution_degenerate_uStatistic | Rademacher P,h(x,y)=xy | λ₀=1, all remaining λⱼ=0 | orthogonality needed only at 0; nUₙ→Z²−1 | finite-rank padding repaired |
| lStatistic | φ=1, sample (1,3); n=0 | (1+3)/2=2; empty sum 0 | sample mean 2; 0 | agrees; no change |
| tendstoInDistribution_lStatistic | φ=1, uniform[0,1] | double covariance integral=1/12 | ordinary mean CLT variance 1/12 | agrees; no change |
| likelihoodRatioLaw | P=δ₀; Q=P, δ₁, or (δ₀+δ₁)/2 | ratios at 0: 1,0,1/2 | laws δ₁,δ₀,δ₁ᐟ₂ | agrees; no change |
| 7.1 / isContiguous_iff_forall_mapClusterPt_integral_eq_one | constant P=δ₀; Q=P or δ₁ | ratio-limit means 1 or 0 | contiguity true or false | agrees; no change |
| 7.2 / tendstoInDistribution_leCam_third | Gaussian shift, likelihood exp(hZ−h²/2) | tilted mean h, total mass 1 | N(h,1) | agrees; no change |
| tendstoInDistribution_leCam_third_gaussian | S=Z,Λ=hZ−h²/2 | Cov(S,Λ)=h | shifted limit Z+h | agrees; no change |
| HasQMDWithinAt | N(θ,1) location; proposed score 0 | true score x−θ; wrong-score squared error ∼t²/4 | normalized errors→0; →1/4 | agrees; no change |
| fisherInformation | normal location; zero score | E X²=1; E0²=0 | information 1; 0 | owner Foundations §4.3 cited |
| tendstoInProbability_likelihoodRatio_of_hasQMDWithinAt | normal location,θₙ=θ+h/√n | likelihood ratio exp(hΔₙ−h²/2) | normalized likelihood ratio exactly 1 | agrees; no change |
| IsLocallyAsymptoticallyNormal | normal shift Qₙ,h=N(h,1),Δ=x,I=1; wrong I=2 | normalized ratios 1; exp(h²/2) | valid; fails for h=1 | agrees; no change |
| exists_kernel_of_isLocallyAsymptoticallyNormal | Gaussian shift,Tₙ=2X | L_h=N(2h,4) | K(x)=δ₂ₓ gives N(2h,4) | agrees; no change |
| exists_conv_of_isRegular | efficient normal mean; add independent N(0,τ²) noise | centered limit variance 1; 1+τ² | residual convolution δ₀; N(0,τ²) | agrees; no change |
| exists_conv_of_equivariantInLaw | I=1,A=2,T(X)=2X | error law N(0,4) | N(0,4)*δ₀ | agrees; no change |
| lintegral_multivariateGaussian_le_iSup_risk | I=1,A=1,squared loss, estimator X | Gaussian risk 1 | sup_h risk=1 | agrees; no change |
| 7.5 / lintegral_multivariateGaussian_le_conv | N(0,1), squared loss, convolution δ₂ | centered risk 1 | translated risk 1+2²=5 | agrees; no change |
| 7.6 / lintegral_multivariateGaussian_le_localMinimax | normal mean; Zₙ≡n | Gaussian lower bound 1 | risks 1; ∞; both sequences allowed | tightness restriction removed |
| 7.7 / ae_posSemidef_covMatrix_sub_inv_fisherInformation | Hodges estimator in normal location | limit covariance−I⁻¹: −1 at 0, 0 elsewhere | negative only on measure-zero {0} | agrees; no change |
| quadForm | I=diag(2,0),v=(3,4); I=0 | 2·3²=18; 0 | 18; 0 | agrees; no change |
| tendstoInDistribution_likelihoodRatio_localSets | H₀={0},H=ℝ,I=1,Y=1 | restricted infimum 1; full infimum 0 | contrast 1−0=1 | subtype repair excludes junk infimum |
| 8.2 / limsup_power_le_envelope | I=1,ψ(θ)=θ,α=.05,h=1 | Gaussian one-sided test power .259511 | envelope 1−Φ(1.644854−1)=.259511 | agrees; no change |
| 8.3 / tendsto_power_localAlternatives | normal mean,μ′=σ=1,h=0 or 1,α=.05 | powers .05 or .259511 | normal-tail formula .05 or .259511 | agrees; no change |
| le_twelve_mul_variance_mul_sq_integral_sq | uniform[1,2]; Epanechnikov | 12·(1/12)·1²=1; 12·(1/5)·(3/5)²=.864 | both ≥108/125=.864 | parentheses repaired |
| tendstoInDistribution_pearson | k=1; k=2,p=(1/2,1/2) | statistic 0; (2N₁−n)²/n | χ²₀; χ²₁ limits | agrees; no change |
| gmm_tendstoInDistribution | G=2,Ω=9,W=3 | (12)⁻²·4·9·9=9/4 | G⁻²Ω=9/4 | explicit derivative envelope retained |
| HasInfluenceFunction | mean functional at mean 0; proposed IF=0 | contamination derivative x | IF=x; zero rejected for x=1 | agrees; no change |
| hasInfluenceFunction_mFunctional | ψ(u)=u,F=N(0,1),T=mean | a=Eψ′=1; IF(x)=x | ψ(x)/a=x | agrees; no change |
| tendstoInDistribution_of_hasHadamardDerivWithinAt_cdf | T(F)=F(1/2), uniform P | IF=1{x≤1/2}−1/2; mean 0 | variance 1/4 | centering route now uses tightness and LLN |
| median_mem_Icc_of_contamination | standard normal, ε=.1 and 0 | quantile levels 4/9,5/9; 1/2,1/2 | interval ±.139710; {0} | agrees; no change |
| breakdownPoint | n=1,T≡0; n=0 | no breaking replacements | infimum in ENNReal is ∞ | empty-family value repaired |
| breakdownPoint_sampleMean_and_median | n=5 and n=1 | mean 1/5, median 3/5; both 1 | replacement thresholds 1,3; 1 | agrees; no change |
| huber_minimax | ε=.05,k≈1.398377,H=δ₀ or remote symmetric mass | variances .975473; 1.256123 | upper bound 1.256123 | agrees; no change |
| regression_mEstimator_asymptotically_linear | intercept-only least squares,ρ(u)=u²/2 | Q=γ=1; β̂−β=mean(errors) | linearization residual 0; variance Var ε | agrees; no change |
| §1.3 general weighted Gaussian form | S=diag(2,3) | norm²=2Z₁²+3Z₂² | mean 5, variance 26 | agrees; no change |
| §2.2 HJ portmanteau | Xₙ=1/n→0, closed set {0} | limsup P(Xₙ∈{0})=0 | P(limit∈{0})=1; 0≤1 | agrees; no change |
| §2.2 HJ subsequence theorem | alternating constants 0,1 | tight K={0,1}; two subsequential laws | δ₀ and δ₁ | agrees; no change |
| §2.2 bounded-Lipschitz characterization | Xₙ=1/n, L=δ₀ | sup over unit Lipschitz tests difference≤1/n | limit discrepancy 0 | agrees; no change |
| §3.3 symmetrization | n=1,Rademacher singleton f=x | E∣X−EX∣=1 | 2E∣εX∣=2 | agrees; no change |
| §3.3 chaining | two points at distance 1, centered process (0,Z) | E sup∣increment∣=√(2/π) | entropy integral √(log 2), up to universal constant | agrees; no change |
| §3.3 finite Bernstein bound | one zero variable, variance 0, envelope 1 | expected maximum 0 | nonnegative Bernstein bound | agrees; no change |
| §3.3 bracketing maximal inequality | class {0}, envelope 1 | expected process supremum 0; entropy 0 | bound 0; tail argument uses 0/0=0 | agrees; no change |
| §3.4 classical Glivenko–Cantelli | P=δ₀ | empirical cdf equals F | sup error 0 | agrees; no change |
| §3.5 VC subgraphs and half-spaces | real half-lines; constants | VC dimensions 1; subgraph dimension 1 | finite polynomial entropy exponent 1 | agrees; no change |
| §4.1 Fréchet implication | identity, θ=0,dom=empty | derivative id; θ∉dom | implication now requires θ∈dom | repaired |
| §5.1 monotone Z consistency | Ψₙ(θ)=θ−1/n,θ₀=0 | root 1/n; signs at ±ε eventually opposite | root→0 | agrees; no change |
| §5.3 MLE headline | exponential rate θ | score 1/θ−X; information 1/θ² | limit variance θ² | signature present |
| §5.4 discretized one-step | normal mean; initial estimate rounded to mesh 1/√n | Newton update X̄ | expansion error 0 | signature present |
| §5.5 internal build order | quadratic criterion, modulus δ | r²φ(1/r)=r | r=√n; order 5.1→5.6→5.5 | order now explicit |
| §5.6 modal-interval rate | φ(δ)=√δ | r²φ(1/r)=r^(3/2) | r=n^(1/3) | agrees; no change |
| §5.7 misspecified likelihood | normal unit-variance location fitted to mean μ,variance 4 | A=1,B=4 | sandwich variance 4 | agrees; no change |
| §6.1 projection theorem normalization | T=X+Y,S=X, independent standard normals | squared distance 2−√2=.5857864 | 2(1−√(1/2))=.5857864 | squared-norm identity repaired |
| §6.3 Hoeffding finite-sample identity | h=1,m=2,n=1; n=2 | Uₙ−θ=−1; 0 | canonical sum 0; 0 | n=1 excluded by n≥m |
| §6.3 Hoeffding variance | sample-variance kernel,n=2,standard normal | h₁ variance 1/2; h₂ variance 1 | 4(1/2)/2+1=2=2/(n−1) | agrees; no change |
| §6.3 mixture closure | cross-sign kernel; Pareto and δ₋₁ | individual second moments 0; mixture ∞ | finite-support completeness route needs no mixture closure of C | repaired route |
| §6.3 finite-rank truncation bound | h=xy, normal P,N=0,n=2 | E(nUₙ)²=4 | 2n/(n−1)=4≤4 | repaired bound |
| §6.4 trimmed-mean headline | normal P,α=.1 | winsorized variance .678655 | divided by .8²: 1.060398 | signature present |
| §7.1 opposite-direction contiguity | P=δ₀,Q=(δ₀+δ₁)/2 | dP/dQ under Q: 2 or 0, mass 1/2 each | mass at 0 is 1/2; Q not contiguous to P | agrees; no change |
| §7.3 smooth/location QMD | Laplace location | score sign(x−θ), second moment 1 | information 1 | agrees; no change |
| §7.3 KL expansion headline | N(θ,1),N(θ+h,1) | KL=h²/2 | quadratic approximation h²/2, remainder 0 | signature present |
| §7.3 multiplicative/additive LAN | normal location,h=1 | ratio exp(Δ−1/2) | log ratio Δ−1/2; remainder 0 | agrees; no change |
| §7.4 randomized representation | K(x)=δ₂ₓ | T(x,u)=2x, independent of u | under N(h,1): N(2h,4) | agrees; no change |
| §7.5 efficient-estimator attainment | normal mean−n1_Aₙ, P(Aₙ)=1/n | scaled risk 1+n² | squared-error UI fails | excluded by added UI |
| §7.7 Hodges pointwise/local laws | θ=0; fixed θ≠0; θₙ=h/√n | limits 0; N(0,1); constant −h | variances 0;1;0; local law depends on h | agrees; no change |
| §7.7 truncated-loss Check | standard normal Z | E min(Z²,1)=1−2φ(1) | .51605855 | numerical Check repaired |
| §8.1 Wilks/Wald/score headline | one-dimensional normal location | all statistics nX̄² | χ²₁, exactly equal | simple-hypothesis signature present |
| §8.1 local test noncentrality | I=1,C=1, local h=2 | noncentrality h²=4 | χ²₁(4) | agrees; no change |
| §8.2 envelope attainment | normal efficient score,α=.05,h=1 | power .259511 | envelope .259511 | agrees; no change |
| §8.3 sign/Wilcoxon/t efficacies | normal; Laplace; uniform[−1/2,1/2] | relative pairs 2/π,3/π; 2,3/2; 1/3,1 | same from 4σ²f(0)²,12σ²(∫f²)² | agrees; no change |
| §8.3 logistic and minimum efficiency | logistic; Epanechnikov | π²/12,π²/9; 12·(1/5)·(3/5)² | sign/Wilcoxon .822467,1.096623; .864 | agrees; no change |
| §8.3 two-sample efficiency | normal shift, equal sample allocation | ratio of squared local slopes 3/π | same Wilcoxon/t efficiency .954930 | agrees; no change |
| §8.3 rank/U-statistic conversion | sample (1,2), no ties | W⁺=3; positive pairs i≤j=3 | U₂=1; diagonal correction 2/C(2,2)=2 | agrees; no change |
| §8.4 estimated multinomial parameters | 2×2 independence | 4−1−(1+1)=1 | (2−1)(2−1)=1 | agrees; no change |
| §8.4 GMM optimal weight headline | G=(1,1)ᵀ,Ω=diag(1,4) | identity-weight variance 5/4; optimum 4/5 | difference 9/20≥0 | signature present |
| §8.4 GMM overidentification headline | q=2,k=1, optimal weight | residual projection rank 1 | χ²₁ | signature present |
| §8.4 GMM envelope | m=x+θ/(1−θ²), approaching ±1 | derivative grows without bound | no finite D dominates on that whole interval | junk supremum eliminated |
| §9.1 gross-error sensitivity | normal median; sample mean | sup∣IF∣=√(π/2); ∞ | 1.253314; unbounded | agrees; no change |
| §9.2 mean-zero influence proof | nonzero mean IF=a, finite variance | sum/√n has mean a√n | tightness forces a=0 | new LLN route excludes a≠0 |
| §9.3 median influence | normal P,x≠0 | IF=±√(π/2) | variance π/2, sensitivity √(π/2) | agrees; no change |
| 9.4 / least-squares and LAD breakdown | intercept mean; LAD with one replaced leverage pair | one replacement sends estimate unbounded | fraction 1/n | agrees; no change |
| 9.4 / least median of squares | n=6,p=3,zero responses,Vandermonde design | set breakdown 2/6; minimum-norm selection 3/6 | at A=6 minimizing coefficient (0,−1,1), norm²=2 | repaired distinction |
| §9.5 Hampel optimality headline | change optimizer at singleton 0 | squared integral and two moments unchanged | same a.e. class | a.e. uniqueness repaired |
| §9.5 Huber least-favorable density/saddle | ε=.05,k≈1.398377 | density mass 1; Eψ²=.796100 | G₀(−k,k)=.796100; risk=1/.796100 | agrees; no change |
| §9.6 convex-process proof | ρ(u)=u²/2, Q=1 | local process u²/2−uΔₙ | minimizer u=Δₙ; residual 0 | agrees; no change |
| §9.6 least-absolute-deviation specialization | intercept-only,N(0,1) errors | γ=2φ(0)=√(2/π); Eψ²=1 | asymptotic variance π/2 | agrees; no change |
| Conventions / VC index | all subsets of {a,b}, universe {a,b,c} | dimension 2; all 3-element sets unshattered | least such cardinality 3=2+1 | universal quantifier repaired |
| tendstoInDistribution_degenerate_uStatistic | Rademacher h(x,y)=xy, one nonzero eigenvalue | λ₀=1; remaining λⱼ=0 | nUₙ→Z²−1; orthogonality only at j=0 | agrees |
| tendstoInOuterDistribution_iff_limsup_le | Xₙ=1/n,L=δ₀,C={0} | limsup closed-set mass 0 | L(C)=1; 0≤1 | agrees; no change |
| exists_strictMono_tendstoInOuterDistribution | alternating constants 0,1 | K={0,1}, complement mass 0 | even subsequence law δ₀ | agrees; no change |
| outerLIntegral_iSup_le_two_mul_rademacher | n=1,f=x,Rademacher P | E∣X−EX∣=1 | 2E∣εX∣=2 | agrees; no change |
| outerLIntegral_iSup_sub_le_packingEntropyIntegral | two points at distance 1, process (0,Z) | expected absolute increment √(2/π) | entropy integral √(log 2), times universal constant | agrees; no change |
| outerLIntegral_iSup_empiricalProcess_le_bracketing | class {0}, envelope 1 | expected supremum 0 | J=0; bound 0 | agrees; no change |
| zEstimator_asymptotically_linear_of_contDiffOn | normal location, ψθ=x−θ | V=−1,root=X̄ | expansion remainder 0 | agrees; no change |
| exists_tendstoInProbability_root_of_contDiffOn | ψθ=x−θ, normal law | derivative −1; root X̄ | X̄→0 in probability | agrees; no change |
| oneStep_asymptotically_linear_of_discretized | Ψₙ(θ)=X̄−θ, any grid start | start−(−1)⁻¹(X̄−start)=X̄ | linearized mean X̄ | agrees; no change |
| tendsto_integral_sq_standardized_sub_of_isProjection | Tₙ=X+Y/√n,Sₙ=X | variance ratio 1/(1+1/n) | squared error 2(1−1/√(1+1/n))→0 | agrees; no change |
| hoeffdingProjection | Rademacher P,h=y₀²+y₁,S={0},y=(2,3) | integrate y₁:4+0=4 | h(y)=7; Ph=1 | added intermediate Check discriminates |
| hoeffdingKernel | centered normal,h=xy | empty and singleton components 0 | pair component xy | agrees; no change |
| uStatistic_hoeffding_decomposition | h=(x−y)²/2, standard normal,n=2 | Var U₂=2 | 4(1/2)/2+1=2 | agrees; no change |
| trimmedMean | n=3,x=(0,1,8),α=1/3 | three weights 0,1,0 | trimmed value 1, versus mean 3 | agrees; no change |
| tendstoInDistribution_trimmedMean | uniform[0,1],α=1/4 | winsorized variance 1/24 | scaled variance (1/24)/(1/2)²=1/6 | agrees; no change |
| mle_asymptotically_linear_of_hasQMDWithinAt | normal location,score x,I=1 | MLE=X̄ | √nX̄−n⁻¹ᐟ²ΣXᵢ=0 | agrees; no change |
| isLittleO_klDiv_sub_quadForm | normal location shift h | KL=h²/2 | quadratic term h²/2; difference 0 | agrees; no change |
| tendstoInDistribution_likelihoodRatio_wald_score | normal scalar model,local h=2 | nX̄²=(Z+2)² | χ²₁(noncentrality 4) | agrees; no change |
| posSemidef_gmm_covariance_sub_optimal | G=(1,1)ᵀ,Ω=diag(1,4),W=I | covariance difference 5/4−4/5 | 9/20>0 | agrees; no change |
| tendstoInDistribution_gmm_overidentification | q=k=1,G=Ω=1,m=x−θ | fitted sample moment 0 | χ²₀=δ₀ | agrees; no change |
| integral_sq_huberScore_le_of_abs_le | same optimizer changed at one Gaussian-null point | both objective values equal | uniqueness only almost everywhere | agrees; no change |
| §6.3 / variance_uStatistic_le_of_unbiased | h(x)=x,n=2,δ=X₁,variance-one law | Var U₂=1/2 | Var δ=1 | signature now present |
| §8.1 / tendstoInDistribution_likelihoodRatio_wald_score_composite | N₂(θ,I),c(θ)=θ₁,h=(2,3) | LRT=(Z₁+2)² | χ²₁(4); at h=0, χ²₁ | R06: local alternative absent |
| §8.3 Pitman-efficiency headline | Tₙ=X̄ₙ+1/n, α=.05,n=100 | null rejection .06119084>.05 | no admissible sample size; efficacy ratio 1 | R01 |
| §8.3 unimodal lower bound | uniform[−1/2,1/2],M=1,a=1/2 | ∫(x²−a²)(f−M1_[−a,a])=0 | σ²=1/12; sign efficiency 1/3 | direct bound supplies route |
| §8.1 localSets Lipschitz binder | oscillatory f, tⱼ=(2πj)⁻¹ᐟ⁴ | slopes −2tⱼ−4/tⱼ² | common Lipschitz bound impossible | excluded at this head |
| §8.1 simple-test Lipschitz binder | same oscillatory f | derivative magnitudes→∞ | common-radius hypothesis false | excluded at this head |
| §2.4 bridge law existence | uniform index s=1/4,t=1/2 | min(s,t)−st=1/8 | bridge covariance 1/8 | R11: add source locator |
| §3.2 zero-envelope entropy Check | F=0 | positive-envelope-norm index empty | supremum=0, entropy integral=0 | added Check agrees |
| §1.1 boundedness rare-event Check | n=0; n=2,C=−1 | E X₀=0; tail probability 1 | claimed 1; upper bound 1/2 | R08 |
| §6.4 symmetric trimmed variance | P=(δ₋₁+δ₁)/2,α=1/10 | winsorized variance/(.8)²=25/16 | formula: 15/8 closed,35/32 half-open,5/16 open | R02 |
| §6.4 uniform trimmed Check | centre X at 1/2,α=1/4 | E[min((X−1/2)²,(1/4)²)]=1/24 | divided by (1/2)² gives 1/6 | R02: centre before symmetric formula |
| §6.4 L-statistic representation | Bernoulli(1/2),φ(u)=u | ∫_.5¹u du=3/8 | ∫xF(x)dF(x)=1/2 | R03: gap 1/8 |
| §6.4 integrated quantile derivative | Bernoulli(1/2),α=1/4 | trimmed centre 1/2; variance 1 | no density at either cutoff | R03: §4.1 cannot supply route |
| Layer 5 Huber example | P=(δ₋₂+δ₂)/2,k=1 | γ=P(−1<X<1)=0 | absolute root→1; scaled errors escape | R04 |
| §9.4 regression breakdown | p=0,n=1 | estimator range singleton, breakdown ∞ | claimed 1/n=1 | R05 |
| §9.2 quantile influence | F uniform,p=x=ξ=1/2 | contaminated quantile 1/2, derivative 0 | displayed influence −1/2 | R07 |
| §9.4 median replacement argument | (0,1,2,3,4)→(100,101,2,3,4) | median 4; unchanged counts below/above 2/0 | claimed ≥3 on each side | R13 |
| §9.5 missing minimax lower bound | least-favourable G₀,ψ=ψₖ | numerator I(G₀), denominator I(G₀)² | risk=1/I(G₀), ε=.05 gives 1.256123 | R06: quantify competing scores |
| §7.5 Prékopa–Leindler input | centred Gaussian, C=[−1,1],translate 1 | mass at centre .682689 | shifted mass .477250 | R12: pin named supplier |
| §9.6 source application scale | constant noise scale σ=2 | derivative γ=2f(0)/2=f(0) | sandwich variance 1/f(0)² | LAD text is on p.9; R10 |
| §6.3 kernel Check separation | m=1,h=x; normal h=(x−y)²/2; product xy | h−Ph=x; canonical pair −xy; pair xy | at (1,2):1,−2,2 | R09 |
| §8.1 quadForm Check separation | scalar I=1,h=2; zero v; skew example | 4;0;−1 | h²=4;0;v₀v₁=−1 | R09 |

- 15 seeded targets evaluated mathematically; source text available for §§4.2 and 9.2; §2.4 has no locator; the other 12 source samples remain uncertified below.
- 16 source passages compared across 4 texts: vdv lines 65,130,218,255,286; hansen lines 554,778,847; rousseeuw lines 153,595; hjort_pollard lines 176,313,369.
- 78 pinned library #checks passed; declarations opened include Mathlib/Probability/CentralLimitTheorem.lean:122, Mathlib/Probability/CramerWold.lean:39, TauCeti/Probability/Distributions/Gaussian/Projection.lean:63, TauCeti/MeasureTheory/Integral/PrekopaLeindler.lean:397.
- 17 supplier section/target groups resolved: Foundations §§1.3,2.4,4.2,4.3,6.2,8.1–8.6,9.1–9.2; StochasticCalculus §§1.2,1.4; StandardDistributions §5.3; PolarDecomposition PD-C19–PD-C27.
- 0 gate failures at dbee9ff; dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE lines.
- 124 declarations checked with #check @name on a scratch copy; 7 binder alerts resolved: 5 measure-space binders are present, 2 combinatorial predicates need none; no type changes.
- 84 admissions survived one-tactic simp/rfl/infer_instance probes; direct lake env lean elaboration exited 0 with only sorry warnings; no padding identified by the probes or opened near-matches.
- 2 roadmap files added, 4106 lines; 0 outside-folder changes, 0 deleted base IDs, 0 confirmed overlapping revisions or second copies; worktree remained clean.

| Previous finding | Disposition | Passage at this head |
|---|---|---|
| R01 | repaired | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2256: “Breakdown is taken for the set of all minimizers”; :2261: “Every selection … at least”. |
| R02 | repaired | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2048: “integrate `(x² - a²)(f(x) - M 1_[-a,a](x)) ≥ 0`”. |
| R03 | repaired | TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:763: “`∃ r > 0, ∀ θ₁ ∈ Metric.ball θ₀ r, ∀ θ₂ ∈ Metric.ball θ₀ r`”; likewise :1225, :1268, :1308. |
| R04 | repaired | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1897: “scaled squared errors … uniformly integrable”; :1900: “uniformly integrable uniformly over the local alternatives”. |
| R05 | orientation repaired; R01 here | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2010: “`μᵢ'(0) > 0` and `σᵢ(0) > 0`”; the exact-level obstruction survives independently. |
| R06 | partly repaired; R06 here | TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:892 adds `variance_uStatistic_le_of_unbiased`; :1301 adds composite null convergence, without the local alternatives at TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1935. |
| R07 | repaired for the named omissions; R10 here | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2096–2102 cites Hansen; :2224 cites Huber–Ronchetti; :2258 gives Rousseeuw p.872; :2342 gives Hjort–Pollard p.4. |
| R08 | requested examples added; R08–R09 here | TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:446 adds the rare-event example, :849 the zero envelope, :1530 the intermediate projection value 4. |
| R09 | old exception removed; R14 here | Description now says “every headline carries a theorem-and-page locator”; its previous local-availability exception is absent. |

Overlap check: read MathematicalStatisticsFoundations, ProbabilisticAndMetricNumberTheory, PointProcesses, StandardDistributions, RandomMatrices, OptimalTransport; shared contiguity/fixed-space stochastic algebra/U-statistic vocabulary belong to Foundations; elementary Gaussian/distribution laws to StandardDistributions and the pins; empirical measures to Tau Ceti. Arithmetic Gaussian limits, random-matrix spectra, transport and point-process laws have different targets. No second owner of the varying-space, empirical-process or statistical-efficiency targets was found.

Source independence: 16 passages compared with 4 sources; no nonmathematical copying or reused tables found. Largest share: vdv, 88 of 126 author-attributed locator groups. Its contents were compared: Layers 1,4,5,6,7,8 combine Chapters 2–3/17, 5/20, 5/21, 11–12/22, 6–9, and 14–17 respectively; the process→empirical-process→delta order is forced by Needs at README:783,939,1096. Contents arrangement is independent; wording outside the accessible chapter 20 remains untested.

## Not verifiable

- vdv: Cambridge landing page and the author’s Delft book page yielded chapter 20 and contents, not Chapters 2,5,7,9,14,16,18,19,21; sampled §§1.1,1.2,2.2,3.1,3.4,5.1,5.4,5.8,7.3,7.4,8.1,8.3 remain uncertified.
- vdvw: Springer DOI 10.1007/978-3-031-29040-4 and Wellner’s institutional book page provided no readable second-edition text; empirical-process, outer-convergence and minimax locators remain uncertified.
- js: the sources service resolved the book citation to a JSTOR review, not Jurečková–Sen’s book; robust-theory locators remain uncertified.
- lehmann: Springer DOI 10.1007/b98855 was paywalled; efficiency and testing locators remain uncertified.
- huber_ronchetti: Wiley DOI 10.1002/9780470434697 returned HTTP 403; §4.2, equation (4.2), pp.72–73 remains uncertified.
- huber: Project Euclid’s DOI page and PDF endpoint returned an access-denial page (huber line 5), not the article; no text certified.
- Prior-formalization claims: the named lean-CKSD repository and Statlib QMD commit could not be read through the available web retrieval; proof coverage and statement reuse were not certified.

## Source issues

- **Error** in vdv at §20.1, p.291 (vdv line 21): the source says any statistic is recoverable from the empirical distribution; it should be restricted to permutation-invariant statistics; affects nothing.
- **Misprint** in vdv at proof of Theorem 20.8, p.297 (vdv line 266): the source says the paired map is differentiated at (θ,θ); it should be differentiated at θ in its stated domain; affects nothing.
- **Misprint** in hansen at Lemma 4.2, p.1049 (hansen line 847): the source says Assumptions 3.1–3.6 belong to Theorem 4.1; it should refer to Theorem 3.1; affects nothing.
- **Misprint** in hjort_pollard at §3D, p.9 (hjort_pollard line 399): the source says Jₙ contains 2fᵢ(0)/σ(xᵢ); it should contain 2fᵢ(0), since fᵢ already includes scaling by σ(xᵢ); affects a stated result.
- **Gap** in rousseeuw at Theorem 1 upper-bound proof, p.878 (rousseeuw line 606): the source says its diverging constructed minimizer bounds the estimator’s breakdown; it should specify set-valued breakdown, since a selection may remain bounded; affects a stated result.

## For the human reviewers

- Not tested: vdv dominates the locators, but only chapter 20 and its contents were readable. Wording comparison for the remaining chapters is incomplete; the contents comparison was performed.
- Licence/reuse: TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2402–2428 describes lean-CKSD proof reuse and Statlib’s QMD definition at af349698. Those repositories were not readable through the available retrieval; their licence and statement-level reuse require human inspection.
- Source status: hjort_pollard is the 1993 preprint, available as arXiv:1107.3806; it supplements the published robust-statistics books for §9.6.
