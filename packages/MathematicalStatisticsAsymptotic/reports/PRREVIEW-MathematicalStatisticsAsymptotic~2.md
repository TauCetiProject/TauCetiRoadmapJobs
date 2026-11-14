# Review of MathematicalStatisticsAsymptotic (pull request #2320 at 9ff1e70)

**Verdict:** needs changes

## R01 (P1) — LMS breakdown depends on the selection

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2228, “every selection of a minimizer”.
**Claim:** The stated general-position condition does not give this breakdown fraction for every selection.
**Witness:** Take n=6,p=3, rows (1,t,t²), t=0,…,5, responses zero. The minimum-norm LMS selection remains zero after any two replacements: four original zero residuals remain. Its breakdown is 3/6, not the claimed 2/6.
**Repair:** State the fraction for set-valued breakdown of the entire minimizing set, and only a lower bound for arbitrary selections. Add this negative control: replacing responses at t=3,4,5 by A(t−2) makes the minimum-norm minimizer (0,−A/6,A/6), which diverges.

## R02 (P1) — The unimodal-mixture prerequisite has no owner

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2030, “a symmetric unimodal density is a mixture of uniform densities”.
**Claim:** The proof consumes Khinchine's representation without a target, supplier section or pinned declaration providing it; §8.3's Needs line does not supply it.
**Witness:** Searches for Khinchine, Khintchine and unimodal mixtures in main, the supplied open heads and both pins found only this use of the representation; Foundations §§2.4,9.2 supply U-statistics and scores, respectively.
**Repair:** Own and source the general representation theorem, or replace this step by the direct bound: for M=f(0), a=1/(2M), integrate (x²−a²)(f−M1_[−a,a])≥0 to obtain σ²≥1/(12M²). For uniform [−1/2,1/2], both sides are 1/12.

## R03 (P2) — Nested eventual quantifiers do not give a Lipschitz neighbourhood

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:763, also :1207 and :1250, “∀ᶠ θ₁ in 𝓝 θ₀, ∀ᶠ θ₂ in 𝓝 θ₀”.
**Claim:** The neighbourhood for θ₂ may depend on θ₁. This is weaker than the common neighbourhood required by README §§5.5 and 8.1.
**Witness:** At zero, f(t)=−t²+t³sin(t⁻⁴), f(0)=0, satisfies the nested condition with L=1. At tⱼ=(2πj)⁻¹ᐟ⁴, f′(tⱼ)=−2tⱼ−4/tⱼ² is unbounded, excluding every common Lipschitz neighbourhood.
**Repair:** In all three signatures require ∃ r>0, ∀ θ₁∈ball θ₀ r, ∀ θ₂∈ball θ₀ r, ∀ x, the displayed bound. Use θ instead of θ₀ in localSets. The oscillatory example then fails the hypothesis.

## R04 (P2) — Asymptotic linearity does not imply squared-risk attainment

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1888, “the one-step estimator of 5.4 attains it”.
**Claim:** Section 5.4 gives convergence in probability and distribution, which does not ensure convergence of unbounded squared losses.
**Witness:** In normal location let Aₙ be an ancillary event of probability 1/n, independent of X̄. Take initial estimate X̄+n1_Aₙ and estimated derivative −1/2 on Aₙ, −1 elsewhere. One-step output X̄−n1_Aₙ has Gaussian limit variance 1 but scaled risk 1+n².
**Repair:** Replace attainment by: “The efficient one-step expansion attains the Gaussian limiting distribution. Squared-error risk converges to 1/I_f when the scaled squared errors are uniformly integrable.” For local supremum risk, require uniform integrability and the corresponding uniform convergence over the local alternatives.

## R05 (P2) — Pitman efficiency needs positively oriented tests

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1995, “the ratio of the efficacies … for every α, power γ”.
**Claim:** The preceding local-power hypotheses allow zero or negative slopes and do not guarantee that the target power can be reached.
**Witness:** For N(θ,1), compare upper-tail tests based on −X̄ and X̄. Both satisfy the preceding CLT; squared efficacy ratio is 1. At θ>0 the first has power below .05 for every n, so cannot attain γ=.8.
**Repair:** Require μᵢ′(0)>0 and 0<α<γ<1, with positive σᵢ(0), and define the sample sizes by attainment of γ. Retain the stated continuity and uniform-alternative assumptions. The negative-slope example is then excluded.

## R06 (P2) — Statable headline theorems remain absent

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:69 and :1913; Suggested.lean:24, “every headline of the README that carries a Lean name”.
**Claim:** Giving only named headlines signatures omits the general U-statistic optimality theorem and the composite Wilks/Wald/score theorem, although their carriers are available.
**Witness:** README:1479 states optimality over families containing finitely supported laws; no corresponding theorem exists in Suggested.lean. README:1913 gives composite tests; Suggested.lean:1243 states only the simple hypothesis. Measures, uStatistic, derivatives, matrices and χ² laws already occur in that file.
**Repair:** Add admitted signatures for both full headlines, using the existing carriers and only necessary simple definitions. For normal two-dimensional location with c(θ)=θ₁, the composite signature must yield χ²₁ rather than χ²₂; for h(x)=x it must compare Var δ with Var X̄.

## R07 (P3) — Proof routes do not replace source locators

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2076 and :2201, “in place of a locator”; also :2231 and :2306.
**Claim:** The three GMM results and median contamination bound still lack source locators; LMS and the Hjort–Pollard citation omit printed pages.
**Witness:** The explicit exemptions occur at README:2076 and :2201. Rousseeuw's Theorem 1 is on printed p.872 (rousseeuw line 153); Hjort–Pollard's Theorem 2.2 is on p.4 (hjort_pollard line 176).
**Repair:** Add exact legal-source theorem/section and page locators for GMM and the contamination bound, identifying adaptations alongside the proof routes. Cite Rousseeuw, Thm 1, p.872, and Hjort–Pollard, Thm 2.2, p.4. Update the blanket locator claim at README:28 accordingly.

## R08 (P3) — Several definitions still lack three separate Checks

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:443, :844 and :1522.
**Claim:** IsBoundedInProbabilityAlong and uniformEntropyIntegral have two Check bullets each; hoeffdingProjection has one, containing only the two endpoint identities.
**Witness:** The Check lists at README:443–447, :844–849 and :1522–1523 do not provide three separate discriminating tests for those definitions.
**Repair:** Add separate Checks: n1_[0,1/n] is bounded in probability although its mean is 1; F=0 makes the positive-envelope-norm index empty and the entropy integral 0; for Rademacher P, h(y)=y₀²+y₁, S={0}, projection at (2,3) is 4, versus h=7 and Ph=1. Separate the existing projection endpoint Checks.

## R09 (P3) — The PR description misstates the source exceptions

**Location:** Pull-request description, first paragraph: “except where the README says the source is not available locally (GMM, the LMS and median contamination bounds)”.
**Claim:** The head distinguishes absent coverage in cited texts from unavailable local copies, and LMS already has a theorem citation.
**Witness:** README:2076 says the cited texts do not treat GMM; :2201 says none states the median bound; :2231 cites Rousseeuw's Theorem 1. None makes the quoted local-availability assertion.
**Repair:** Describe the head as: “The GMM results and median contamination bound have proof routes without source locators; LMS cites Rousseeuw's Theorem 1.” After supplying the missing locators, replace this with the resulting source coverage.

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
| IsAsymptoticallyUniformlyEquicontinuous | finite discrete T; zero semimetric, process (0,Z) | modulus 0 for δ<1; modulus ∣Z∣ | true; false | repaired Check |
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
| mEstimator_asymptotically_linear | f(t)=−t²+t³sin(t⁻⁴), f(0)=0 | nested Lipschitz condition with L=1 holds | derivative at tⱼ: −2tⱼ−4/tⱼ²→−∞ | R03: common neighbourhood |
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
| §7.5 efficient-estimator attainment | normal mean with rare perturbation −n1_Aₙ, P(Aₙ)=1/n | centered limit N(0,1) | nE(error²)=1+n², not 1 | R04: add uniform integrability |
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
| 9.4 / least median of squares | n=6,p=3,zero responses,Vandermonde design,minimal-norm selection | ≤2 replacements leave selection 0; 3 can diverge | actual 3/6; claimed (3−3+2)/6=2/6 | R01: selection overclaim |
| §9.5 Hampel optimality headline | change optimizer at singleton 0 | squared integral and two moments unchanged | same a.e. class | a.e. uniqueness repaired |
| §9.5 Huber least-favorable density/saddle | ε=.05,k≈1.398377 | density mass 1; Eψ²=.796100 | G₀(−k,k)=.796100; risk=1/.796100 | agrees; no change |
| §9.6 convex-process proof | ρ(u)=u²/2, Q=1 | local process u²/2−uΔₙ | minimizer u=Δₙ; residual 0 | agrees; no change |
| §9.6 least-absolute-deviation specialization | intercept-only,N(0,1) errors | γ=2φ(0)=√(2/π); Eψ²=1 | asymptotic variance π/2 | agrees; no change |
| Conventions / VC index | all subsets of {a,b}, universe {a,b,c} | dimension 2; all 3-element sets unshattered | least such cardinality 3=2+1 | universal quantifier repaired |
| tendstoInDistribution_degenerate_uStatistic | Rademacher h(x,y)=xy, one nonzero eigenvalue | λ₀=1; remaining λⱼ=0 | nUₙ→Z²−1; orthogonality only at j=0 | repaired finite-rank case |
| tendstoInOuterDistribution_iff_limsup_le | Xₙ=1/n,L=δ₀,C={0} | limsup closed-set mass 0 | L(C)=1; 0≤1 | agrees; no change |
| exists_strictMono_tendstoInOuterDistribution | alternating constants 0,1 | K={0,1}, complement mass 0 | even subsequence law δ₀ | agrees; no change |
| outerLIntegral_iSup_le_two_mul_rademacher | n=1,f=x,Rademacher P | E∣X−EX∣=1 | 2E∣εX∣=2 | agrees; no change |
| outerLIntegral_iSup_sub_le_packingEntropyIntegral | two points at distance 1, process (0,Z) | expected absolute increment √(2/π) | entropy integral √(log 2), times universal constant | agrees; no change |
| outerLIntegral_iSup_empiricalProcess_le_bracketing | class {0}, envelope 1 | expected supremum 0 | J=0; bound 0 | agrees; no change |
| zEstimator_asymptotically_linear_of_contDiffOn | normal location, ψθ=x−θ | V=−1,root=X̄ | expansion remainder 0 | agrees; no change |
| exists_tendstoInProbability_root_of_contDiffOn | ψθ=x−θ, normal law | derivative −1; root X̄ | X̄→0 in probability | agrees; no change |
| oneStep_asymptotically_linear_of_discretized | Ψₙ(θ)=X̄−θ, any grid start | start−(−1)⁻¹(X̄−start)=X̄ | linearized mean X̄ | agrees; no change |
| tendsto_integral_sq_standardized_sub_of_isProjection | Tₙ=X+Y/√n,Sₙ=X | variance ratio 1/(1+1/n) | squared error 2(1−1/√(1+1/n))→0 | agrees; no change |
| hoeffdingProjection | Rademacher P,h=y₀²+y₁,S={0},y=(2,3) | integrate y₁:4+0 | 4, versus h(y)=7 and Ph=1 | R08: add intermediate-subset Check |
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
| §6.3 U-statistic optimality headline | normal mean kernel h=x, n=2; δ=X₁ | Var δ=1 | Var U₂=1/2; inequality 1≥1/2 | R06: add general signature |
| §8.1 composite-tests headline | N₂(θ,I),c(θ)=θ₁,local h=(2,3) | LRT=nX̄₁² | χ²₁(4), not χ²₂(13) | R06: add composite signature |
| §8.3 Pitman-efficiency headline | upper-tail tests −X̄ versus X̄, α=.05,γ=.8 | squared slope ratio 1 | first test never reaches .8 for θ>0 | R05: require positive slopes |
| §8.3 unimodal lower bound | uniform[−1/2,1/2] | σ²f(0)²=1/12 | e_sign,t=4/12=1/3 | R02: supply input or direct proof |
| §8.1 localSets Lipschitz binder | oscillatory f at zero | nested bound L=1 | common Lipschitz constant unbounded | R03 |
| §8.1 simple-test Lipschitz binder | oscillatory f at zero | nested bound L=1 | common Lipschitz constant unbounded | R03 |
| §2.4 bridge law existence | uniform index s=1/4,t=1/2 | min(s,t)−st=1/8 | centered bridge covariance 1/8 | supplier StochasticCalculus §1.4 |
| §3.2 zero-envelope entropy Check | F=0 | no Q with positive envelope norm | supremum and integral 0 | R08: add Check |
| §1.1 boundedness rare-event Check | Xₙ=n1_[0,1/n] | fixed-radius tail 1/n→0 | bounded in probability; E Xₙ=1 | R08: add Check |

Previous findings, compared with the head (README locations are in TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md; Lean locations are in TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean):

| Previous id | Status | Passage at this head |
|---|---|---|
| R01 | repaired | README:2006: “12 σ² (∫ f²)² ≥ 108/125”; Lean:1313 groups the integral before squaring. |
| R02 | repaired | Lean:1232: “⨅ g : H₀”; README:1958 computes the singleton distance contrast as 1. |
| R03 | repaired | README:1105: “T̂ₙ is uniformly tight”; Lean:606 requires compact containment. |
| R04 | repaired | README:1486: “The finitely supported laws form a family closed under binary mixtures”. |
| R05 | repaired | README:1509: “(2n/(n - 1)) ∑_{j ≥ N} λⱼ² ≤ 4 ∑_{j ≥ N} λⱼ²”. |
| R06 | repaired | README:1424: “norm of the difference of the standardized variables is 2 - 2 sd(Sₙ)/sd(Tₙ)”; the squared-distance Check agrees. |
| R07 | repaired | README:908: “every f_t belongs to L²(P)”. |
| R08 | repaired | README:1490: “orthonormality is required only among the φⱼ with λⱼ ≠ 0”. |
| R09 | repaired | README:2066: “‖D_θ m(x, θ)‖ ≤ D(x) for all θ ∈ B and an integrable D”. |
| R10 | repaired | README:1044: “if θ ∈ dom and HasFDerivAt φ φ' θ”. |
| R11 | repaired | README:1477: “For n < m … neither identity is asserted”; Lean:879 includes n≥m. |
| R12 | repaired | README:1412 restricts the projection onto sums to “n ≥ 1”. |
| R13 | repaired | README:2167 uses “bounded in probability” and the weak law to force mean zero. |
| R14 | repaired | README:1816: “every measurable estimator sequence Zₙ, with no tightness hypothesis”; Lean:1152 has no tightness assumption. |
| R15 | partly repaired; R06 | Lean:24 still limits coverage to “every headline … that carries a Lean name”; the two omissions in R06 remain. |
| R16 | repaired | README:328: “this theorem and do not restate it”; the Gaussian projection-law declaration was deleted. |
| R17 | repaired | Lean:1462 concludes equality “∀ᵐ x”; README:2263 specifies almost-everywhere uniqueness. |
| R18 | partly repaired; R01 | README:2228 now requires “n ≥ 2p”, but still asserts “every selection”. |
| R19 | repaired | README:2220: “∞ when no m ≤ n does”; Lean:1444 uses ENNReal. |
| R20 | repaired | README:354: “4.3: the information matrix”; the local-copy docstring names Foundations. |
| R21 | repaired | README:245: “the least n such that no set of size n is shattered”. |
| R22 | repaired | README:785 specifies the “discrete metric” and compares it with the zero semimetric. |
| R23 | repaired | README:837: “0 < r ≤ ∞ and every finite ε”. |
| R24 | repaired | README:1881: “1 - 2φ(1) ≈ 0.5161”. |
| R25 | partly repaired; R07 | README:2076 still says “in place of a locator”; the explicit GMM and median exemptions remain. |
| R26 | partly repaired; R08 | README:1522: “for S = ∅ … and for S = Fin m”; these are only two endpoint tests. |
| R27 | repaired | The worker gate reports “latex=0 tex=0”. |
| R28 | repaired | README:281 names “isCompact_closure_of_isTightMeasureSet”; all library #checks elaborate. |
| R29 | repaired | README:406 names the internal order “5.1 → 5.6 → 5.5”. |
| R30 | repaired; new text issue R09 | PR description now says “every headline … that has a Lean name; its 82 targets are admitted”. |
| R31 | repaired | README:309 gives a timeless inventory, “Mathlib has no Lindeberg–Feller theorem”, instead of search history. |

Headline coverage: Euclidean limit laws and quadratic forms; HJ convergence and process limits; entropy, VC, bracketing and EDF theorems; functional delta and argmax; M/Z/MLE/one-step/rate/quantile theorems; projection, Hoeffding, U/L/trimmed-mean limits and U-optimality; Le Cam/QMD/LAN/KL/representation/convolution/minimax/superefficiency; simple/composite tests, power, efficiency, Pearson/GMM; influence, Hampel/Huber, breakdown and regression. R06 identifies statable omissions; no missing carrier is identified in the module docstring.


- Sources: 13 locators read in 3 texts: vdv §20.1/Ex20.5/§20.2/Thms20.8–20.9, pp.291–298; rousseeuw (2.1)/Thm1/proof, pp.872,878; hjort_pollard Lemmas1–2/Basic Corollary/Thms2.1–2.2, pp.2–4. Seeded §§4.2 and 9.4 were partly source-verified; remaining sample limitations are below.
- Pins: 8 principal declarations opened at Mathlib/MeasureTheory/Function/ConvergenceInDistribution.lean:136,309; Mathlib/Probability/CentralLimitTheorem.lean:122; Mathlib/Probability/CramerWold.lean:39; Mathlib/MeasureTheory/Measure/Prokhorov.lean:530; Mathlib/MeasureTheory/Function/LpSeminorm/Defs.lean:92; Mathlib/Analysis/InnerProductSpace/Spectrum.lean:436; TauCeti/Probability/Distributions/Gaussian/Projection.lean:63. In particular, eLpNorm is ∞ for non-AEStronglyMeasurable functions, even at exponent 0.
- Suppliers: 12 Foundations sections (§§2.4,4.2,4.3,6.2,8.1–8.6,9.1–9.2), 2 StochasticCalculus sections (§§1.2,1.4), StandardDistributions §5.3 and OperatorTheory/PolarDecomposition PD-C19–PD-C27 read; 0 conflicting-head, dropped-ID or second-copy hits.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; 0 UPWARD and 0 CYCLE lines; 0 declared gaps.
- Gate: all checks passed, including the targeted build; direct `lake env lean` also exited 0 with 82 sorry warnings and no other warnings.
- Signatures: all 122 named declarations checked with `#check @name`; all 7 suspected dropped-binder leads resolved: 5 retain the dependent measurable-space instance, 2 definitions do not use measurability. No binder was lost; R03 concerns quantifier order.
- Padding: all 82 admitted theorems probed separately with `simp`, `rfl`, `infer_instance`; 0 closed. Pinned near-matches inspected for measurable Markov, scalar CLT, Cramér–Wold and Gaussian projection laws; no additional exact one-lemma duplicate established.
- Change/text: new folder, 3992 added lines, 122 named declarations, 82 admissions; 0 changes outside the folder, 0 review edits in the worktree; PR prose discrepancy R09.

Overlap check: read MathematicalStatisticsFoundations (#2111), ProbabilisticAndMetricNumberTheory (#1421), PointProcesses (#417), StandardDistributions, RandomMatrices and OptimalTransport. Foundations owns finite-sample U-statistics/optimality, information matrices, fixed-space stochastic algebra, contiguity and empirical quantiles; StandardDistributions owns Gaussian projection norms and distribution laws; RandomMatrices owns matrix concentration/spectral limits. No additional shared target with the other three was found in main, supplied open heads or the package index. The asymptotic extensions here have no second owner in that search; R02 identifies an unassigned proof input.

Source independence: 11 passages compared across 3 sources, including README §§4.1,4.2,9.1–9.4,9.6 and the regression docstring; no copied expression or reused table/figure identified. Largest share vdv, 87 of 119 explicit author-attributed locator groups. Contents compared with vdv line 5 (contents extraction): Layers 1,5,6,7,8 combine Chapters 2–3/17, 5/21, 11–12/22, 6–9, 14–17 respectively. The process→empirical-process→functional-delta order is required by Needs lines at README:824,934,1093; no one-to-one source arrangement established. Most vdv wording and the vdvw/js/lehmann/huber wording remain untested.

## Not verifiable

- vdv: the author page supplies Chapter 20 and contents, not the full book; seeded §§1.2,3.4,4.3,5.5,5.6,6.1,7.1,7.4,8.1,8.2,8.4 remain uncertified at their stated theorem/page locators; Cambridge/title-service attempts did not yield the other chapters.
- vdvw: the 2023 second edition resolves to Springer paywalled content; seeded §§2.2,2.4,3.4 and the §4.2 co-citation could not be compared with that edition.
- js: the title service returned a book review rather than the Wiley book; the robustness locators, including the remaining parts of seeded §9.4, remain uncertified.
- lehmann: DOI 10.1007/b98855 resolves only to paywalled content; its classical-test and efficiency locators remain uncertified.
- huber: the Project Euclid explicit PDF address returned an Incapsula denial page; its successful-fetch label did not supply article text.
- lean-CKSD: the linked GitHub repository could not be read; the README's proved/admitted inventory and reuse comparison remain unverified. Statlib's public repository states Apache-2.0; the particular definition/version used here was not identified.
- Downstream section citations: MathematicalStatisticsSemiparametric, MathematicalStatisticsHigherOrderAndResampling, MathematicalStatisticsNonparametric and MathematicalStatisticsHighDimensional were not available among the supplied heads/main copies; they are consumers, not suppliers.

## Source issues

- **Error** in vdv at §20.1, printed p.291: every statistic is said to be expressible through the empirical distribution; it should be every permutation-invariant statistic, since (0,1) and (1,0) have the same empirical law but different first coordinates; affects nothing.
- **Gap** in rousseeuw at Theorem 1 proof, printed p.878: the upper-bound argument constructs an unbounded family of minimizing fits; it should control the selected fit or formulate set-valued breakdown; affects a stated result.

## For the human reviewers

- Not tested: vdv supplies 87/119 locator groups. Its contents and Chapter 20 were readable; wording and theorem attribution in its other chapters were not checked against the text.
- Not tested: vdvw, js, lehmann and huber were unavailable as readable legal texts; their source wording was not compared.
- Licence: TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2359 names lean-CKSD as prior formalization; its files and licence could not be read. README:2386 names Statlib as a model; the public repository declares Apache-2.0, but the adapted version was not identified.
