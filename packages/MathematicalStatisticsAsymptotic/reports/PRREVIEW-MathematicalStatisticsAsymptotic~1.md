# Review of MathematicalStatisticsAsymptotic (pull request #2320 at 9194088)

**Verdict:** needs changes

## R01 (P1) — The efficiency inequality integrates the squared mean over all of ℝ

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:1018
**Claim:** The parentheses make the variance factor a nonintegrable Bochner integral, whose value is zero.
**Witness:** For f = 1_[1,2], the mean is 3/2, second moment 7/3 and ∫f² = 1. The displayed integral is 0, so the theorem asserts 108/125 ≤ 0.
**Repair:** Replace the factor by `((∫ x, x ^ 2 * f x) - (∫ x, x * f x) ^ 2)`. The translated uniform density then gives RHS 1; retain it as a negative-control Check.

## R02 (P1) — The likelihood-ratio limit collapses restricted real infima to zero

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:975
**Claim:** The notation `⨅ g ∈ H₀, ...` inserts the empty real infimum 0 for every g outside H₀.
**Witness:** Take the scalar normal location model, I = 1, H₀ = {0}, H = ℝ. At Y = 1 the restricted term is 0 instead of 1. The asserted limit is δ₀ instead of χ²₁.
**Repair:** Use subtype infima `⨅ g : H₀, quadForm I (Y ω - g.1)` and similarly for H, with nonempty sets and lower bounds. The singleton probe then evaluates to 1.

## R03 (P1) — Neighborhood tightness does not justify this arbitrary-metric argmax theorem

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:535
**Claim:** Convergence on compact sets plus the stated enlargement-based tightness allows maximizers to escape every compact set while approaching the wrong point.
**Witness:** In ℓ²([0,1]), let Tₙ=e_ω/(n+1), M(h)=−‖h−e₀‖², and Mₙ=M except Mₙ(Tₙ)=1, with uniform ω. Compact restrictions agree almost surely; Tₙ→0, whereas argmax M=e₀.
**Repair:** Require compact containment: for every ε>0 some compact K has limsup outerP(Tₙ∉K)≤ε. Keep the general metric-space theorem with this hypothesis and an explicit localization proof. This excludes the shrinking-spike instance.

## R04 (P1) — Square-integrable kernel laws are not closed under mixtures

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1338; also :94
**Claim:** The stated reason for applying the supplier’s U-statistic optimality theorem is false.
**Witness:** Let h(x,y)=xy·1{xy<0}, P be positive Pareto with E_P X²=∞, and Q=δ₋₁. E_P²h²=E_Q²h²=0, but E_((P+Q)/2)²h²=∞; Foundations #2111, TauCetiRoadmap/MathematicalStatisticsFoundations/README.md:798 requires mixture closure.
**Repair:** Delete the closure assertion. For general square-integrable laws, symmetrize the estimator; identify that symmetrization using the finitely supported subfamily and Foundations §2.4/§4.2, then apply Jensen under the desired law. State this transfer explicitly.

## R05 (P1) — The U-statistic tail bound loses the finite-sample factor

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1356
**Claim:** The uniform upper bound with coefficient 2 is false.
**Witness:** For h(x,y)=xy, independent standard normals, N=0 and n=2, nUₙ=2X₁X₂. Its second moment is 4; the claimed upper bound is 2.
**Repair:** Write `E(n Uₙ(h−h_N))² = (2n/(n−1)) ∑_{j≥N} λⱼ² ≤ 4 ∑_{j≥N} λⱼ²` for n≥2. At n=2 this gives 4=4.

## R06 (P1) — The projection proof identifies a norm with its square

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1296
**Claim:** The displayed expression is the squared L² norm, not the norm.
**Witness:** For independent standard normals X,Y, take T=X+Y and S=X. The norm is √(2−√2)=0.7653669; the stated value is 2−√2=0.5857864.
**Repair:** Replace “the L² norm” by “the squared L² norm”; its convergence to zero implies norm convergence. Keep the two-normal calculation as the normalization Check.

## R07 (P2) — The prose bracketing Donsker theorem omits square integrability

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:813
**Claim:** Finite bracketing entropy alone does not imply the claimed Donsker property; the Lean theorem correctly has an additional `MemLp` hypothesis.
**Witness:** For the singleton f(x)=x under a standard Cauchy law, every bracketing number is 1 and the entropy integral is 0. √n times the sample mean is Cauchy with scale √n, hence not tight.
**Repair:** Add “every f_t belongs to L²(P)” to the theorem, matching TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:404. Record the singleton Cauchy class as the excluded Check.

## R08 (P2) — The degenerate U-statistic signature excludes finite-dimensional L²

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:725
**Claim:** An infinite orthonormal sequence is required even when only finitely many nonzero eigenvalues exist.
**Witness:** For P=(δ₋₁+δ₁)/2 and h(x,y)=xy, L²(P) has dimension 2 and h has one eigenvalue 1. No ℕ-indexed orthonormal family exists, although nUₙ→Z²−1.
**Repair:** Index the nonzero eigenfunctions by a finite or countable type, or allow zero padding and require orthonormality only at nonzero eigenvalues. The rank-one Rademacher kernel must instantiate the theorem.

## R09 (P2) — The GMM derivative envelope can be an unbounded real supremum

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:1040
**Claim:** Integrability of Lean’s real iSup does not assert an integrable bound when that family is unbounded.
**Witness:** For m(x,θ)=x+θ/(1−θ²) on the ball (−1,1), derivative norms are unbounded. The real iSup is 0, so `hdom` accepts the zero integrable function as the supposed envelope.
**Repair:** Use an integrable real D with ‖D_θm(x,θ)‖≤D(x) throughout the ball, or add a.e. boundedness before taking iSup. The displayed example then fails the envelope hypothesis.

## R10 (P2) — The Fréchet-to-Hadamard implication needs membership in the domain

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:944
**Claim:** The claimed implication for every domain contradicts the first conjunct of the defined Hadamard predicate.
**Witness:** For φ=id, θ=0 and dom=∅, the Fréchet derivative is id. `HasHadamardDerivWithinAt` is false because its first conjunct is 0∈∅ (TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:478).
**Repair:** Write “If θ∈dom and HasFDerivAt φ φ′ θ, then HasHadamardDerivWithinAt φ dom D₀ φ′ θ for every tangent set D₀.” Add the empty-domain negative control.

## R11 (P2) — The finite-sample Hoeffding identity needs n≥m

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1333
**Claim:** The decomposition and variance formula are stated without the sample-size condition required by the local U-statistic definition.
**Witness:** With n=1, m=2 and h≡1, the average over injections is 0 and θ=1; all canonical kernels vanish. The claimed identity reads −1=0.
**Repair:** Require n≥m for both finite-sample identities. In the excluded n<m case explicitly retain the total-function value Uₙ=0, without asserting the decomposition.

## R12 (P2) — The empty-sample Hájek expression is not the claimed projection

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1288; TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:697
**Claim:** Orthogonality alone does not make the expression a member of the sum-of-coordinate-functions subspace when n=0.
**Witness:** For n=0 and T≡1, the definition gives 0−(−1)·1=1. The subspace of empty sums is {0}, whose orthogonal projection of T is 0.
**Repair:** Require n≥1 for the projection characterization, or include constants explicitly in the projected subspace and state that convention. Add n=0 with value 1 to the definition’s Checks.

## R13 (P2) — The influence-function proof uses a nonexistent Bochner integral

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1909
**Claim:** Coordinatewise zero expectations do not permit commuting the derivative through an ℓ∞-valued Bochner integral.
**Witness:** For uniform F on [0,1], the maps x↦1_[x,∞)−F have pairwise sup-distance 1. Their law is not essentially separably valued, so this map is not Bochner integrable.
**Repair:** Obtain tightness of T′(𝔾ₙ) from Donsker convergence and continuity. Since it equals n⁻¹ᐟ²∑IF(Xᵢ), the scalar law of large numbers forces E IF=0; then apply the scalar CLT. This works for the uniform example.

## R14 (P2) — The full local minimax theorem is excluded to simplify its proof

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2058; TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:905
**Claim:** The roadmap explicitly removes arbitrary estimator sequences and substitutes a tightness-restricted headline, contrary to the general-library requirement.
**Witness:** In the scalar Gaussian shift, Zₙ≡n is measurable but not bounded in probability. Its squared-error local risks diverge, so the full bound applies while the stated signature cannot be instantiated.
**Repair:** Own and state the minimax theorem for arbitrary measurable estimator sequences. Add the compactification/tightness-free argument as a target of §7.6, remove `htight`, and delete this exclusion from the boundary list.

## R15 (P2) — Several statable headline theorems have no acceptance signature

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:39; TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:13
**Claim:** The claim that every headline is stated is contradicted by the declaration list; the docstring names no unstatable headlines.
**Witness:** The README promises Hoeffding decomposition (§6.3), trimmed means (§6.4), Wilks/Wald/score equivalence (§8.1), GMM optimality/overidentification (§8.4), and Hampel optimality (§9.5). None has a theorem in Suggested.lean; all use available native carriers.
**Repair:** Add these headline signatures with their full hypotheses and only necessary simple definitions. Also account explicitly for the README’s MLE, discretized one-step, Hájek projection theorem, symmetrization, chaining, bracketing maximal inequality, KL-expansion, HJ portmanteau and tightness/subsequence headlines; name any genuinely missing carrier in the module docstring.

## R16 (P2) — The idempotent Gaussian norm law already has an owner

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:469; TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:143
**Claim:** The roadmap plans the same Gaussian projection-norm law already owned on main and proved at the pin.
**Witness:** TauCetiRoadmap/StandardDistributions/README.md:613 owns orthogonal-projection norms. `Submodule.map_norm_sq_starProjection_stdGaussian`, TauCeti/Probability/Distributions/Gaussian/Projection.lean:63, proves χ²_rank, including rank zero. Symmetric idempotent S is projection onto its range.
**Repair:** Delete this target and its Suggested.lean declaration; cite StandardDistributions §5.3 and the pinned theorem in the supplier contracts. Use Gaussian transport for the covariance presentation; keep the singular-inverse extension separately.

## R17 (P2) — Hampel optimality is unique only almost everywhere

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1977
**Claim:** The feasible functions are pointwise functions, so strict convexity of the integral does not give the stated pointwise uniqueness.
**Witness:** Change the proposed minimizer at x=0 from 0 to c. Its mean, score normalization and objective are unchanged because Φ{0}=0, and its supremum remains c; the two functions differ.
**Repair:** Say “the minimizers agree Φ-almost everywhere with ψₖ/(2Φ(k)−1)” and formulate uniqueness in L²(Φ). The modified function then belongs to the same equivalence class.

## R18 (P2) — The LMS citation drops a standing design condition

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1952
**Claim:** General position alone admits dimensions where the quoted breakdown fraction is zero or negative.
**Witness:** For n=8,p=6 with Vandermonde design, the formula gives 0, whereas zero replacements cannot unbound a fixed estimator. Rousseeuw’s standing vertical-hyperplane restriction excludes this design (rousseeuw line 91, printed p.872).
**Repair:** Add the source’s condition that no vertical hyperplane contains more than ⌊n/2⌋ observations, and specify the LMS selection convention. Under general position this requires p−1≤⌊n/2⌋; retain n=8,p=6 as excluded. Cite Thm 1, p.872.

## R19 (P2) — The breakdown definition labels an unbreakable estimator as zero breakdown

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:1111; TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1945
**Claim:** Taking the real infimum of an empty set silently contradicts “the least fraction” of replacements causing unboundedness.
**Witness:** For n=1 and T≡0, every replacement has distance 0. The defining set is empty, so Lean returns breakdownPoint=0 although no fraction causes breakdown.
**Repair:** Represent the infimum in an extended nonnegative type, giving ∞ for no breakdown, or specify and implement an explicit endpoint convention. Document n=0 separately; preserve mean/odd-median values for n≥1.

## R20 (P2) — The information matrix is already shared vocabulary in Foundations

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1484; TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:812
**Claim:** The roadmap introduces the vector information matrix as its own vocabulary without citing its earlier owner.
**Witness:** Foundations #2111, TauCetiRoadmap/MathematicalStatisticsFoundations/README.md:812–818, already defines the matrix (∫sᵢsⱼ) and its positivity under square integrability, explicitly calling it shared asymptotic vocabulary. TauCetiRoadmap/MathematicalStatisticsAsymptotic/Suggested.lean:812 defines exactly that matrix.
**Repair:** Cite Foundations §4.3 in Scope and ownership and Exact supplier contracts. Keep the simple native definition only as a named local copy needed by the headlines, with its owner in the docstring.

## R21 (P2) — The VC-index convention reverses an essential quantifier

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:244
**Claim:** The least size of some unshattered set need not be the VC dimension plus one.
**Witness:** On X={a,b,c}, let C be all subsets of {a,b}. Then {a,b} is shattered, so dimension=2; {c} is not shattered, so the stated least size is 1, not 3.
**Repair:** Define the index using the least size for which no set of that size is shattered, and specify the empty-family convention separately. The example then has index 3 and dimension 2.

## R22 (P3) — The finite-class Check allows a semimetric that identifies different functions

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:728
**Claim:** Equicontinuity is not automatic for every semimetric on a finite index set.
**Witness:** Take f₀=0, f₁(x)=x for Rademacher P, and ρ≡0. Every positive-radius modulus includes their difference, whose limiting law is N(0,1), rather than 0.
**Repair:** Replace “any semimetric” by “the discrete metric, with distinct-point distance 1”; its modulus is 0 for δ<1. Add ρ≡0 as the negative control.

## R23 (P3) — The constants Check includes the zero-exponent junk seminorm

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:767
**Claim:** The assertion “in every Lʳ(Q)” is false for the declared parameter type; an envelope for all real constants also cannot be finite.
**Witness:** At r=0, Mathlib’s eLpNorm of every measurable constant difference is 0. One center covers all constants even at radius 0, so the covering number is 1, not ∞.
**Repair:** Restrict this Check to 0<r≤∞ and finite radii under a probability measure. State divergence of bracketing entropy there; do not assert a uniform-envelope entropy value without specifying an admissible envelope.

## R24 (P3) — The truncated-normal risk Check has the wrong value

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1657
**Claim:** The quoted approximation 0.6 is not the value of the stated lower bound.
**Witness:** For Z∼N(0,1), integration by parts gives E min(Z²,1)=1−2φ(1)=0.5160585509617133.
**Repair:** Replace “≈0.6” by “≈0.5161”, with the identity 1−2φ(1). The Hodges maximal local risk still tends to 1.

## R25 (P3) — Headline claims lack exact source locators

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1814; also :1922, :1976
**Claim:** GMM normality/optimal weighting/overidentification, the median results, and Hampel optimality have no theorem-and-page locator attached to their statements.
**Witness:** The entire GMM bullet at TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1814–1821 and Hampel bullet at :1976–1979 contain no citation; the References list does not identify where these claims are proved.
**Repair:** Attach exact theorem/equation and printed-page locators for these claims, including their stated hypotheses. Add the missing printed pages to the Rousseeuw and Hjort–Pollard citations. Verify the editions rather than inferring locators from titles.

## R26 (P3) — Definitions do not have the required three discriminating Checks

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:680; also :417, :1300, :1393
**Claim:** Several definitions have fewer than three Checks, and some Checks combine formulas without distinguishing a wrong object.
**Witness:** Brownian-bridge laws have two Check bullets (§2.4), Hájek projection two (§6.1), and L-statistics two (§6.4); boundedness in probability has one (§1.1).
**Repair:** Give each kept definition its API and at least three discriminating Checks. For bridge laws include covariance 1/8 at s=1/4,t=1/2, zero endpoint variance, and a nonzero-mean Gaussian rejected by the centered-marginal law.

## R27 (P3) — The supplied gate rejects four TeX occurrences

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:751; also :752, :1431
**Claim:** The `tex` gate fails because formula code spans cross physical lines and their TeX fragments are scanned outside a span.
**Witness:** The worker reports tex=4 at lines 751,752,1431; the bracketing inequality and likelihood-ratio truncation formula contain split backtick spans.
**Repair:** Put each complete formula on one line inside a code span, or use an indented code block. Rerun the gate; retain the same inequalities.

## R28 (P3) — The gate classifies three supplier identifiers as local declarations

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:264; also :265, :348
**Claim:** The three `readme-ids-missing` hits are supplier names, not absent mathematical prerequisites, but the supplied gate still fails on their presentation.
**Witness:** Mathlib/MeasureTheory/Function/ConvergenceInDistribution.lean:136,309 defines the first two; Foundations #2111, TauCetiRoadmap/MathematicalStatisticsFoundations/README.md:1433 defines the contiguity criterion. None is an owned declaration here.
**Repair:** Pin the two fully qualified Mathlib declarations with permitted library `#check`s, and express the Foundations criterion in prose with its §8.6 citation. Do not add duplicate theorem targets; rerun `readme-ids-missing`.

## R29 (P3) — The M-estimator layer uses a later subsection without declaring the order

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1181
**Claim:** The §5.5 proof consumes the rate theorem in §5.6, although the presented sequence is advertised as build order.
**Witness:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1178 obtains the √n rate from §5.6; its Needs line at :1181 cites 5.6, which appears later.
**Repair:** Place the rate theorem before asymptotic normality, with an explicit old→new subsection mapping, or explicitly state the internal build order 5.1→5.6→5.5. Preserve every external subsection citation.

## R30 (P3) — The PR description overstates locator and signature coverage

**Location:** Pull request #2320 description, opening paragraph and “Review and AI assistance” bullet
**Claim:** “every headline carries a theorem-and-page locator in a cited text” and “states the headlines of Layers 1–9” overstate the head’s coverage.
**Witness:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:1814 and :1976 lack locators; Suggested.lean omits Hoeffding decomposition and Hampel optimality. The count of 66 admitted theorems is accurate.
**Repair:** After adding the missing locators and signatures, update the description and theorem count to the repaired head. If describing this head, say: “This adds nine layers and 66 signatures; several headline signatures and locators are incomplete.”

## R31 (P3) — The README records a transient search outcome

**Location:** TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2103
**Claim:** “No open Mathlib pull request … was found” is process narrative and cannot serve as a timeless ownership statement.
**Witness:** The sentence at TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2103–2105 records what a search found, rather than the pinned library declarations used by the roadmap.
**Repair:** Delete that sentence; keep the pinned API inventory in Exact supplier contracts and record any search history only in the PR description.

## Verified sound

Computed instances below distinguish agreement on an instance from a proof of the general statement. Source certification is limited as listed below.

| Statement | Instances | Computed left side/input | Computed right side/output | Result / change |
|---|---|---|---|---|
| IsContiguous | P=Q; P=δ₀,Q=δ₁ | P{1}=0 in both cases | Q{1}=0 / 1; true / false | agrees on instance |
| uStatistic | m=2,n=2,h(x,y)=xy; n=1 | average of 2 products = x₁x₂; empty average=0 | x₁x₂; 0 | agrees on instance |
| empiricalCdf | sample (0,2), t=1 and 2 | counts 1 and 2, divided by 2 | 1/2 and 1 | agrees on instance |
| sampleQuantile | sample (0,2), p=1/2 and 3/4 | infima of [0,∞), [2,∞) | 0 and 2 | agrees on instance |
| huberScore | k=1,x=2 and −2 | max(−1,min(1,x)) | 1 and −1 | agrees on instance |
| TendstoInProbability | Xₙ=1/(n+1); Xₙ=1, target 0 | ε=1/2: tail masses eventually 0 / 1 | converges / fails | agrees on instance |
| IsBoundedInProbabilityAlong | Xₙ=1; Xₙ=n | large fixed radius: eventual tails 0 / 1 | bounded / unbounded | agrees on instance |
| TendstoInDistribution.of_tendstoInProbability_dist | Xₙ=Z normal,Yₙ=Z+1/(n+1) | distance=1/(n+1)→0 | both limit N(0,1) | agrees on instance |
| tendstoInDistribution_sum_of_lindeberg | Yₙᵢ=εᵢ/√n, independent Rademachers | covariance sum=1; tail sum eventually 0 | N(0,1) | agrees on instance |
| tendstoInDistribution_inv_sqrt_smul_sum_sub_euclidean | X=(Z,2Z); rank zero control | covariance [[1,2],[2,4]]; 0 | limit (Z,2Z); δ₀ | agrees on instance |
| map_quadForm_inv_multivariateGaussian | k=1,m=2,S=4 | X²/4=(Z+1)² | χ²₁(noncentrality 1) | agrees on instance |
| map_norm_sq_multivariateGaussian_of_isIdempotent | S=diag(1,0); S=0 | norm²=Z²; 0 | χ²₁; χ²₀; already supplied | duplicate; R16 |
| map_quadForm_pseudoInverse_multivariateGaussian | S=diag(2,0) | S⁺=diag(1/2,0); X₁²/2=Z² | χ²₁ | agrees on instance |
| 1.4 / tendstoInDistribution_second_order_delta_method | g(x)=x²,θ=0,Tₙ=Z/√n | n g(Tₙ)=Z² for n≥1 | ½·2Z²=Z² | agrees on instance |
| outerIntegral | bounded constant 2; nonnegative Pareto with infinite mean | infimum=2; empty real infimum=0 | 2; documented junk 0 | agrees on instance |
| innerIntegral | bounded constant −2; nonnegative Pareto | −outerIntegral(2)=−2; −outerIntegral(−X)=0 | −2; unbounded-input junk | agrees on instance |
| outerLIntegral | constant 2; Pareto tail 1/t | majorant expectations 2; ∞ | 2; ∞ | agrees on instance |
| measure_le_le_outerLIntegral_div | f=2,t=1 and 3 | tail probabilities 1 and 0 | upper bounds 2 and 2/3 | agrees on instance |
| outerLIntegral_ofReal_eq | f=2 on a probability space | extended outer integral=2 | ofReal(real outer integral)=2 | agrees on instance |
| outerIntegral_eq_integral | f=−2, probability measure | outer integral=−2 | ordinary integral=−2 | agrees on instance |
| 2.2 / TendstoInOuterDistribution | constant maps 0 versus 1, L=δ₀ | test arctan: expectations 0 versus π/4 | target expectation 0 | agrees on instance |
| IsAsymptoticallyTight | shrinking orthogonal spikes; Xₙ=n in ℝ | distance to {0}: 1/(n+1) / n | true / false; inadequate for argmax | agrees; argmax fails R03 |
| tendstoInOuterDistribution_iff_tendstoInDistribution | measurable constant sequence 2 | bounded-continuous integrals f(2) | law δ₂ has integral f(2) | agrees on instance |
| TendstoInOuterDistribution.tendstoInDistribution_comp | Xₙ=Z normal,g(x)=2x | measurable image variance 4 | image limit N(0,4) | agrees on instance |
| TendstoInOuterDistribution.comp | Xₙ=Z normal,g(x)=x² | image law Z² | χ²₁ | agrees on instance |
| TendstoInOuterDistribution.of_tendstoInProbability_dist | Xₙ=Z,Yₙ=Z+1/n | distance→0 | same N(0,1) limit | agrees on instance |
| Linfty | T={0,1}, z=(1,−2); unbounded z(n)=n | sup norms 2 / ∞ | first admitted; second excluded | agrees on instance |
| liftLinfty | bounded (1,−2); g(n)=n | output (1,−2); output 0 | norm 2; junk norm 0 | agrees on instance |
| marginal | z=(1,−2), indices (1,0,1) | evaluations (−2,1,−2) | Euclidean vector (−2,1,−2) | agrees on instance |
| IsAsymptoticallyUniformlyEquicontinuous | finite discrete T; zero semimetric with process (0,Z) | modulus 0 for δ<1; modulus ∣Z∣ | true; false for Gaussian Z | agrees; Check fails R22 |
| tendstoInOuterDistribution_of_marginal_of_equicontinuous | T singleton, process constantly Z normal | sole marginal N(0,1); modulus 0 | Linfty law N(0,1) | agrees on instance |
| ext_of_marginal | T singleton, L=δ₀,L′=δ₁ | first marginal δ₀ ≠ δ₁ | hypothesis rejects unequal laws | agrees on instance |
| IsBrownianBridgeLaw | uniform P, s=1/4,t=1/2; mean shifted by 1 | covariance 1/8; required mean 0 | correct bridge accepted; shift rejected | agrees on instance |
| empiricalProcess | n=2, observations (0,1), f(x)=x, P mean 1/2 | √2·(1/2−1/2)=0 | 0; n=0 also 0 | agrees on instance |
| IsGlivenkoCantelli | singleton constant 1; indicators of all finite subsets, uniform P | sup errors 0; 1 | true; false | agrees on instance |
| IsDonsker | singleton constant 1; singleton Cauchy identity | process 0; Cauchy scale √n | δ₀ limit; not tight | agrees on instance |
| IsDonsker.isBrownianBridgeLaw | singleton Bernoulli(1/2) identity | CLT variance 1/4 | bridge variance E X²−(E X)²=1/4 | agrees on instance |
| 3.2 / bracketingNumber | empty class; singleton measurable f | 0 brackets; [f,f] gives 1 | 0; 1 | agrees on instance |
| bracketingEntropyIntegral | singleton; all real constants, L², δ>0 | log 1=0; finite-radius bracket number ∞ | 0; ∞ | agrees on instance |
| coveringNumberLp | all real constants under Q, r=0 versus r=2 | distances 0 versus ∣s−t∣ | cover numbers 1 versus ∞ | fails; R23 |
| uniformEntropyIntegral | singleton 0 with F=1; F=0 | covering number 1; positive-norm Q index empty | integral 0; 0 | agrees on instance |
| IsPointwiseSeparable | half-lines with rational thresholds approaching from above; singleton indicators of points | rational limits give every half-line; countable points omit uncountably many | true; false | agrees on instance |
| integral_sup'_le_of_hasSubgaussianMGF | Y₀=Z,Y₁=−Z, variance proxy 1 | E∣Z∣=√(2/π)=0.797885 | √(2 log 2)=1.177410 | agrees on instance |
| isGlivenkoCantelli_of_bracketingNumber_lt_top | singleton constant 3 | L¹ bracket count 1; sup error 0 | outer-a.s. limit 0 | agrees on instance |
| isDonsker_of_bracketingEntropyIntegral_lt_top | singleton Cauchy identity | entropy 0; L² norm ∞ | README accepts; Lean hf rejects | fails; R07 |
| isDonsker_indicator_Iic | P=δ₀ | empirical cdf=F for every n≥1 | zero bridge/process | agrees on instance |
| isBrownianBridgeLaw_map_comp_cdf | P=uniform[0,1],s=1/4,t=1/2 | cov(B(F(s)),B(F(t)))=1/8 | F(min(s,t))−F(s)F(t)=1/8 | agrees on instance |
| vcDimSet | C={∅}; C=all subsets of {0,1} | largest shattered cardinalities 0; 2 | VC dimensions 0; 2 | agrees on instance |
| isGlivenkoCantelli_of_uniformCoveringNumber | singleton constant 1,F=1 | cover count 1; envelope integral 1 | sup empirical error 0 | agrees on instance |
| isDonsker_of_uniformEntropyIntegral_lt_top | singleton Rademacher identity,F=1 | uniform entropy 0; envelope L² norm 1 | limit N(0,1) | agrees on instance |
| coveringNumberLp_indicator_le_of_vcDimSet | C={∅},d=0,ε=1/2 | cover number 1 | bound K·4e (choose K≥1) | agrees on instance |
| tendstoInProbability_empiricalProcess_sub | uniform P, t₀=1/2,τₙ=t₀+1/n | L² distance²=1/n | process increment variance≤1/n→0 | agrees on instance |
| HasHadamardDerivWithinAt | φ=id,θ=0,dom=ℝ versus ∅ | difference quotients hₙ→v; membership true / false | id derivative accepted / rejected | agrees on instance |
| HasHadamardDerivWithinAt.comp | φ(x)=2x,ψ(x)=3x | quotient of ψ∘φ =6v | ψ′∘φ′(v)=6v | agrees on instance |
| quantileFunctional | uniform cdf,p=1/4; constant zero function | inf [1/4,∞)=1/4; inf ∅=0 | 1/4; documented total-function issue | agrees on instance |
| hasHadamardDerivWithinAt_quantileFunctional | uniform F,p=ξ=1/2, density 1, local direction h=1 | perturbed quantile=1/2−t | derivative −h(ξ)/f=−1 | agrees on instance |
| tendstoInOuterDistribution_functional_delta_method | φ(x)=2x,Tₙ=Z/√n,θ=0 | scaled image=2Z; remainder 0 | N(0,4); remainder→0 | agrees on instance |
| tendstoInOuterDistribution_argmax | shrinking spikes in ℓ²([0,1]) | Tₙ→0; every compact restriction has correct limit | claimed limit e₀, distance 1 | fails; R03 |
| tendstoInProbability_of_isWellSeparated | Mₙ=M=−θ², exact maximizer | gap outside radius ε is ε² | θ̂ₙ=0→0 | agrees on instance |
| tendstoInProbability_mle_of_isCompact | normal location Θ=[−1,1],θ₀=0 | MLE=clamp(sample mean); KL=θ²/2 | MLE→0 | agrees on instance |
| 5.3 / zEstimator_asymptotically_linear | ψθ(x)=x−θ, θ̂=sample mean | V=−1; influence=x−θ₀ | expansion residual identically 0 | agrees on instance |
| zEstimator_tendstoInDistribution | standard normal location mean | V=−1,Cov ψ=1 | V⁻¹Cov ψ V⁻ᵀ=1 | agrees on instance |
| oneStep_asymptotically_linear | Ψₙ(θ)=sample mean−θ,V̂=−1 | one step equals sample mean | linearization remainder 0 | agrees on instance |
| mEstimator_asymptotically_linear | criterion −(x−θ)²/2, normal data | population Hessian −1; gradient x | influence x; variance 1 | agrees on instance |
| isBoundedInProbability_rate_mEstimator | φ(δ)=δ and √δ | r²φ(1/r)=r and r^(3/2) | rates √n and n^(1/3) | agrees on instance |
| 5.8 / tendstoInDistribution_sampleQuantile | uniform[0,1],p=1/2 | density 1; Bernoulli variance 1/4 | quantile limit variance 1/4 | agrees on instance |
| tendstoInProbability_bahadur_remainder | uniform[0,1],p=1/2 | linear term 1/2−Fₙ(1/2) | remainder after √n scaling→0 | agrees on instance |
| hajekProjection | n=2,T=X₁X₂, centered laws; n=0,T=1 | projection 0; value 1 | sum-space projection 0; 0 | fails; R12 |
| integral_sub_hajekProjection_mul_eq_zero | T=X₁X₂, independent centered normals, gᵢ(x)=x | E[X₁²X₂+X₁X₂²]=0 | orthogonality RHS 0 | agrees on instance |
| 6.2 / tendstoInDistribution_uStatistic | sample-variance kernel under normal and Exp(1) | m²ζ₁=μ₄−σ⁴=3−1; 9−1 | limit variances 2; 8 | agrees on instance |
| 6.3 / tendstoInDistribution_degenerate_uStatistic | Rademacher P,h(x,y)=xy | one eigenvalue 1; L² dimension 2 | Z²−1 exists; infinite horth impossible | fails; R08 |
| lStatistic | φ=1, sample (1,3); n=0 | (1+3)/2=2; empty sum 0 | sample mean 2; 0 | agrees on instance |
| tendstoInDistribution_lStatistic | φ=1, uniform[0,1] | double covariance integral=1/12 | ordinary mean CLT variance 1/12 | agrees on instance |
| likelihoodRatioLaw | P=δ₀; Q=P, δ₁, or (δ₀+δ₁)/2 | ratios at 0: 1,0,1/2 | laws δ₁,δ₀,δ₁ᐟ₂ | agrees on instance |
| 7.1 / isContiguous_iff_forall_mapClusterPt_integral_eq_one | constant P=δ₀; Q=P or δ₁ | ratio-limit means 1 or 0 | contiguity true or false | agrees on instance |
| 7.2 / tendstoInDistribution_leCam_third | Gaussian shift, likelihood exp(hZ−h²/2) | tilted mean h, total mass 1 | N(h,1) | agrees on instance |
| tendstoInDistribution_leCam_third_gaussian | S=Z,Λ=hZ−h²/2 | Cov(S,Λ)=h | shifted limit Z+h | agrees on instance |
| HasQMDWithinAt | N(θ,1) location; proposed score 0 | true score x−θ; wrong-score squared error ∼t²/4 | normalized errors→0; →1/4 | agrees on instance |
| fisherInformation | normal location variance 1; zero score | E(X−θ)²=1; E0²=0 | information 1; 0; Foundations §4.3 | ownership; R20 |
| tendstoInProbability_likelihoodRatio_of_hasQMDWithinAt | normal location,θₙ=θ+h/√n | likelihood ratio exp(hΔₙ−h²/2) | normalized likelihood ratio exactly 1 | agrees on instance |
| IsLocallyAsymptoticallyNormal | normal shift Qₙ,h=N(h,1),Δ=x,I=1; wrong I=2 | normalized ratios 1; exp(h²/2) | valid; fails for h=1 | agrees on instance |
| exists_kernel_of_isLocallyAsymptoticallyNormal | Gaussian shift,Tₙ=2X | L_h=N(2h,4) | K(x)=δ₂ₓ gives N(2h,4) | agrees on instance |
| exists_conv_of_isRegular | efficient normal mean; add independent N(0,τ²) noise | centered limit variance 1; 1+τ² | residual convolution δ₀; N(0,τ²) | agrees on instance |
| exists_conv_of_equivariantInLaw | I=1,A=2,T(X)=2X | error law N(0,4) | N(0,4)*δ₀ | agrees on instance |
| lintegral_multivariateGaussian_le_iSup_risk | I=1,A=1,squared loss, estimator X | Gaussian risk 1 | sup_h risk=1 | agrees on instance |
| 7.5 / lintegral_multivariateGaussian_le_conv | N(0,1), squared loss, convolution δ₂ | centered risk 1 | translated risk 1+2²=5 | agrees on instance |
| 7.6 / lintegral_multivariateGaussian_le_localMinimax | normal mean; Zₙ≡n | Gaussian risk 1 | local risks 1; ∞, second sequence excluded | fails; R14 |
| 7.7 / ae_posSemidef_covMatrix_sub_inv_fisherInformation | Hodges estimator in normal location | limit covariance−I⁻¹: −1 at 0, 0 elsewhere | negative only on measure-zero {0} | agrees on instance |
| quadForm | I=diag(2,0),v=(3,4); I=0 | 2·3²=18; 0 | 18; 0 | agrees on instance |
| tendstoInDistribution_likelihoodRatio_localSets | normal location,H₀={0},H=ℝ,Y=1 | restricted nested inf=0; full inf=0 | correct distance contrast 1−0=1 | fails; R02 |
| 8.2 / limsup_power_le_envelope | I=1,ψ(θ)=θ,α=.05,h=1 | Gaussian one-sided test power .259511 | envelope 1−Φ(1.644854−1)=.259511 | agrees on instance |
| 8.3 / tendsto_power_localAlternatives | normal mean,μ′=σ=1,h=0 or 1,α=.05 | powers .05 or .259511 | normal-tail formula .05 or .259511 | agrees on instance |
| le_twelve_mul_variance_mul_sq_integral_sq | uniform[1,2]; Epanechnikov centered | claimed RHS 0; 108/125 | bound 108/125; 108/125 | fails; R01 |
| tendstoInDistribution_pearson | k=1; k=2,p=(1/2,1/2) | statistic 0; (2N₁−n)²/n | χ²₀; χ²₁ limits | agrees on instance |
| gmm_tendstoInDistribution | scalar G=2,Ω=9,W=3 | (12)⁻²·4·9·9=9/4 | G⁻²Ω=9/4; envelope issue separately | agrees; see R09 |
| HasInfluenceFunction | mean functional at mean 0; proposed IF=0 | contamination derivative x | IF=x; zero rejected for x=1 | agrees on instance |
| hasInfluenceFunction_mFunctional | ψ(u)=u,F=N(0,1),T=mean | a=Eψ′=1; IF(x)=x | ψ(x)/a=x | agrees on instance |
| tendstoInDistribution_of_hasHadamardDerivWithinAt_cdf | T(F)=F(1/2),uniform P | IF=1{x≤1/2}−1/2; variance 1/4 | limit N(0,1/4); proof gap separately | agrees; proof gap R13 |
| median_mem_Icc_of_contamination | standard normal, ε=.1 and 0 | quantile levels 4/9,5/9; 1/2,1/2 | interval ±.139710; {0} | agrees on instance |
| breakdownPoint | n=1,T≡0 | no unbounding replacements; inf ∅=0 | no least breaking fraction exists | fails; R19 |
| breakdownPoint_sampleMean_and_median | n=5 and n=1 | mean 1/5, median 3/5; both 1 | replacement thresholds 1,3; 1 | agrees on instance |
| huber_minimax | ε=.05,k≈1.398377,H=δ₀ or remote symmetric mass | variances .975473; 1.256123 | upper bound 1.256123 | agrees on instance |
| regression_mEstimator_asymptotically_linear | intercept-only least squares,ρ(u)=u²/2 | Q=γ=1; β̂−β=mean(errors) | linearization residual 0; variance Var ε | agrees on instance |
| §1.3 general weighted Gaussian form | S=diag(2,3) | norm²=2Z₁²+3Z₂² | mean 5, variance 26 | agrees on instance |
| §2.2 HJ portmanteau | Xₙ=1/n→0, closed set {0} | limsup P(Xₙ∈{0})=0 | P(limit∈{0})=1; 0≤1 | agrees on instance |
| §2.2 HJ subsequence theorem | alternating constants 0,1 | tight K={0,1}; two subsequential laws | δ₀ and δ₁ | agrees on instance |
| §2.2 bounded-Lipschitz characterization | Xₙ=1/n, L=δ₀ | sup over unit Lipschitz tests difference≤1/n | limit discrepancy 0 | agrees on instance |
| §3.3 symmetrization | n=1,Rademacher singleton f=x | E∣X−EX∣=1 | 2E∣εX∣=2 | agrees on instance |
| §3.3 chaining | two points at distance 1, centered process (0,Z) | E sup∣increment∣=√(2/π) | entropy integral √(log 2), up to universal constant | agrees on instance |
| §3.3 finite Bernstein bound | one zero variable, variance 0, envelope 1 | expected maximum 0 | nonnegative Bernstein bound | agrees on instance |
| §3.3 bracketing maximal inequality | class {0}, envelope 1 | expected process supremum 0; entropy 0 | bound 0; tail argument uses 0/0=0 | agrees on instance |
| §3.4 classical Glivenko–Cantelli | P=δ₀ | empirical cdf equals F | sup error 0 | agrees on instance |
| §3.5 VC subgraphs and half-spaces | real half-lines; constants | VC dimensions 1; subgraph dimension 1 | finite polynomial entropy exponent 1 | agrees on instance |
| §4.1 Fréchet implication | φ=id, θ=0,dom=∅ | Fréchet derivative exists | Hadamard predicate false | fails; R10 |
| §5.1 monotone Z consistency | Ψₙ(θ)=θ−1/n,θ₀=0 | root 1/n; signs at ±ε eventually opposite | root→0 | agrees on instance |
| §5.3 MLE headline | exponential rate θ | score 1/θ−X; I=1/θ² | limit variance θ²; signature absent | signature missing; R15 |
| §5.4 discretized one-step | normal mean, initial root-n estimate rounded to mesh 1/√n | Newton update equals sample mean | remainder 0; signature absent | signature missing; R15 |
| §5.5 internal build order | quadratic criterion and rate modulus δ | r²φ(1/r)=r, requiring r=√n | §5.6 supplies input to preceding §5.5 | fails; R29 |
| §5.6 modal-interval rate | φ(δ)=√δ | r²φ(1/r)=r^(3/2) | r=n^(1/3) | agrees on instance |
| §5.7 misspecified likelihood | normal unit-variance location fitted to mean μ,variance 4 | A=1,B=4 | sandwich variance 4 | agrees on instance |
| §6.1 projection theorem normalization | T=X+Y,S=X, independent N(0,1) | L² norm=.7653669 | stated .5857864 equals squared norm | fails; R06 |
| §6.3 Hoeffding finite-sample identity | h≡1,m=2,n=1 | Uₙ−θ=−1 | sum of canonical terms=0 | fails; R11 |
| §6.3 Hoeffding variance | sample-variance kernel,n=2,standard normal | h₁ variance 1/2; h₂ variance 1 | 4(1/2)/2+1=2=2/(n−1) | agrees on instance |
| §6.3 mixture closure | cross-sign kernel; positive Pareto and δ₋₁ | component kernel second moments 0,0 | mixture kernel second moment ∞ | fails; R04 |
| §6.3 finite-rank truncation bound | h=xy, normal P,N=0,n=2 | E(nUₙ)²=4 | claimed bound 2; corrected bound 4 | fails; R05 |
| §6.4 trimmed-mean headline | normal P,α=.1 | b=1.281552; winsorized variance .678655 | divide by .8²: 1.060398; signature absent | signature missing; R15 |
| §7.1 opposite-direction contiguity | P=δ₀,Q=(δ₀+δ₁)/2 | dP/dQ under Q: 2 or 0, mass 1/2 each | mass at 0 is 1/2; Q not contiguous to P | agrees on instance |
| §7.3 smooth/location QMD | Laplace location | score sign(x−θ), second moment 1 | information 1 | agrees on instance |
| §7.3 KL expansion headline | N(θ,1) versus N(θ+h,1) | KL=h²/2 | ½h²I=h²/2; no signature | fails; R15 |
| §7.3 multiplicative/additive LAN | normal location,h=1 | ratio exp(Δ−1/2) | log ratio Δ−1/2; remainder 0 | agrees on instance |
| §7.4 randomized representation | K(x)=δ₂ₓ | T(x,u)=2x, independent of u | under N(h,1): N(2h,4) | agrees on instance |
| §7.5 efficient-estimator attainment | I=1,A=1,normal mean,squared loss | limit variance 1; excess convolution δ₀ | risk 1 attains lower bound 1 | agrees on instance |
| §7.7 Hodges pointwise/local laws | θ=0; fixed θ≠0; θₙ=h/√n | limits 0; N(0,1); constant −h | variances 0;1;0; local law depends on h | agrees on instance |
| §7.7 truncated-loss Check | Z standard normal | 1−2φ(1)=.51605855 | README approximation .6 | fails; R24 |
| §8.1 Wilks/Wald/score headline | one-parameter normal location,θ₀=0 | all three statistics=n·mean² | χ²₁, exactly equal; signatures absent | fails; R15 |
| §8.1 local test noncentrality | I=1,C=1, local h=2 | noncentrality h²=4 | χ²₁(4) | agrees on instance |
| §8.2 envelope attainment | normal efficient score,α=.05,h=1 | power .259511 | envelope .259511 | agrees on instance |
| §8.3 sign/Wilcoxon/t efficacies | normal; Laplace; uniform[−1/2,1/2] | relative pairs 2/π,3/π; 2,3/2; 1/3,1 | same from 4σ²f(0)²,12σ²(∫f²)² | agrees on instance |
| §8.3 logistic and minimum efficiency | logistic; Epanechnikov | π²/12,π²/9; 12·(1/5)·(3/5)² | sign/Wilcoxon .822467,1.096623; .864 | agrees on instance |
| §8.3 two-sample efficiency | normal shift, equal sample allocation | ratio of squared local slopes 3/π | same Wilcoxon/t efficiency .954930 | agrees on instance |
| §8.3 rank/U-statistic conversion | sample (1,2), no ties | W⁺=3; positive pairs i≤j=3 | U₂=1; diagonal correction 2/C(2,2)=2 | agrees on instance |
| §8.4 estimated multinomial parameters | 2×2 independence | 4−1−(1+1)=1 | (2−1)(2−1)=1 | agrees on instance |
| §8.4 GMM optimal weight headline | G=(1,1)ᵀ,Ω=diag(1,4) | W=I variance 5/4; optimal variance 4/5 | difference 9/20≥0; signature absent | signature missing; R15 |
| §8.4 GMM overidentification headline | q=2,k=1,optimal weight | residual projection rank 1 | χ²₁; signature absent | signature missing; R15 |
| §8.4 GMM envelope | m(x,θ)=x+θ/(1−θ²), ∣θ∣<1 | derivative sup unbounded; real iSup=0 | `Integrable 0` passes erroneously | fails; R09 |
| §9.1 gross-error sensitivity | normal median; sample mean | sup∣IF∣=√(π/2); ∞ | 1.253314; unbounded | agrees on instance |
| §9.2 mean-zero influence proof | uniform P,step-function ℓ∞ embedding | pairwise distance 1; not essentially separable | Bochner integral unavailable | fails; R13 |
| §9.3 median influence | normal P,x≠0 | IF=±√(π/2) | variance π/2, sensitivity √(π/2) | agrees on instance |
| 9.4 / least-squares and LAD breakdown | intercept mean; LAD with one replaced leverage pair | one replacement sends estimate unbounded | fraction 1/n | agrees on instance |
| 9.4 / least median of squares | n=20,p=2; n=8,p=6 | formula 1/2; 0 | valid first range; omitted restriction excludes second | fails; R18 |
| §9.5 Hampel optimality headline | change optimizer at zero to c | objective and both moments unchanged | distinct pointwise minimizers; same L² class | fails; R17 |
| §9.5 Huber least-favorable density/saddle | ε=.05,k≈1.398377 | density mass 1; Eψ²=.796100 | G₀(−k,k)=.796100; risk=1/.796100 | agrees on instance |
| §9.6 convex-process proof | ρ(u)=u²/2, Q=1 | local process u²/2−uΔₙ | minimizer u=Δₙ; residual 0 | agrees on instance |
| §9.6 least-absolute-deviation specialization | intercept-only,N(0,1) errors | γ=2φ(0)=√(2/π); Eψ²=1 | asymptotic variance π/2 | agrees on instance |
| Conventions / VC index | C=all subsets of {a,b} on {a,b,c} | dimension 2; smallest unshattered set size 1 | claimed dimension+1=3 | fails; R21 |

- Coverage: 103 elaborated declarations, including all 66 admitted theorems; 7 suspected binder losses examined, 0 missing necessary binders confirmed.
- Elaboration: direct `lake env lean` and the 103-name `#check @name` copy succeeded; 66 `sorry` warnings only; 3 arithmetic/parsing probes proved.
- Padding: all 66 admitted theorems tried with `simp`, `rfl`, and `infer_instance`; 0 closed; pinned near-matches distinguished from the projection-law overlap in R16.
- Sources: 8 locators read in 2 full texts—rousseeuw (2.1), Thm 1, p.872; hjort_pollard Lemmas 1–2 and Basic Corollary, p.2, Thms 2.1–2.2, pp.3–4, (3.2), p.7; only the LMS part of the 15-target seeded sample could be compared with full source text.
- Pinned witnesses: 7 declarations opened at Mathlib/MeasureTheory/Function/ConvergenceInDistribution.lean:136,309; Mathlib/Probability/CentralLimitTheorem.lean:122; Mathlib/Probability/CramerWold.lean:39; Mathlib/MeasureTheory/Measure/Prokhorov.lean:530; Mathlib/MeasureTheory/Function/LpSeminorm/Defs.lean:92; TauCeti/Probability/Distributions/Gaussian/Projection.lean:63.
- Suppliers: Foundations #2111 §§2.4,4.2,4.3,6.2,8.1–8.6,9.1–9.2; StochasticCalculus §§1.2,1.4; OperatorTheory/PolarDecomposition PD-C19–PD-C27 resolved; 0 declared gaps; 0 dropped-ID/conflicting-head overlap hits.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; 0 UPWARD and 0 CYCLE lines.
- Gate: FAIL (`tex=4`, `readme-ids-missing=3`; other checks 0, including build); head verified; 0 changes outside this roadmap; 0 worktree edits.

Overlap check: read MathematicalStatisticsFoundations (#2111), ProbabilisticAndMetricNumberTheory (#1421), PointProcesses (#417), StandardDistributions, RandomMatrices, OptimalTransport; Foundations owns finite-sample U-statistics/optimality, the information matrix, fixed-space stochastic algebra, contiguity and empirical quantiles; StandardDistributions owns Gaussian projection norms, quadratic-form transforms and distributions; RandomMatrices owns its matrix concentration/spectral limits; no additional shared target with the other three. The remaining outer-process and asymptotic-statistics targets have no second owner in the searched main/open/package material.

Source independence: 8 passages compared with 2 full texts, no copied expression identified in that sample; largest share vdv, 83 of 114 explicit author-attributed locator groups. Contents compared at vdv line 66: layers combine Chapters 2–3/17, 5/21, 11–12/22, 6–9 and 14–17; the 2→3→4 dependency sequence is explicit at TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:694,927,1031. No source-derived arrangement established. The principal vdv text and vdvw/js/lehmann/huber wording remain untested.

## Not verifiable

- vdv: Cambridge provided contents only; theorem text was unavailable through the sources service. Seeded §§1.4,5.3,5.8,6.2,6.3,7.1,7.2,7.5,7.6,7.7,8.2,8.3 remain uncertified at their theorem/page locators.
- vdvw: the 2023 second edition resolved to Springer paywalled content; seeded §§2.2,3.2 and the co-citations in §§5.3,7.2 could not be checked against that edition.
- js: the title resolver returned a review rather than the book; Wiley book text was unavailable. The LAD claim in seeded §9.4 and the robust-theory locators remain uncertified.
- lehmann: the title resolver returned a review rather than the book; Springer book text was unavailable. Seeded §8.3’s theorem/equation and page attribution remains uncertified.
- huber: the Project Euclid DOI exposed no accessible PDF; its explicit PDF URL returned an access-denial page, not source text. The source service’s apparent success was not treated as verification.
- Prior formalization: the linked lean-CKSD repository could not be read; the claimed proved/admitted inventory and adaptation licences were not certified. The linked Statlib model was not available at a supplied pin.
- Downstream section citations: MathematicalStatisticsSemiparametric, MathematicalStatisticsHigherOrderAndResampling, MathematicalStatisticsNonparametric and MathematicalStatisticsHighDimensional were not available among the supplied heads/main copies; they are not suppliers here.

## Source issues

- none

## For the human reviewers

- Not tested: vdv supplies 83/114 explicit locator groups, but only its contents were readable. Most source-wording comparisons and all seeded vdv theorem/page checks remain uncertified.
- Licence: TauCetiRoadmap/MathematicalStatisticsAsymptotic/README.md:2073–2102 describes reuse from lean-CKSD and models HasQMDWithinAt on Statlib. Their source statements and licences were not available for a reuse comparison.
- Not tested: the cited vdvw, js and lehmann editions and the huber article were unavailable as readable legal texts; their wording was not compared.
