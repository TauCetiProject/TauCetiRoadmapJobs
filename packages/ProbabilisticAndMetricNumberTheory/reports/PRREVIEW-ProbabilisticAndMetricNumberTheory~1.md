# Review of ProbabilisticAndMetricNumberTheory (pull request #1421 at 58cbb88)

**Verdict:** needs changes

## R01 (P2) — Import the existing finite Shannon entropy API

Location: `TauCetiRoadmap/ProbabilisticAndMetricNumberTheory/README.md:6580`, API at 6584–6588, ownership at 15 and downstream interface at 6804. Claim: “Define finiteEntropy of a finite-valued random variable as −Σ_v P(X=v)log P(X=v)”. The paragraph also assigns the chain rule and alphabet bound here.

Witness: `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1539` already defines that finite-label formula, conditional entropy, the chain rule, independent addition and alphabet bound. Its fair-bit tests give H=log 2, H(X,Y)=2log 2 and H(X|X)=0.

This is the same probability object: a finite-valued random variable is a finite measurable label. The standard-Borel hypothesis on the adjacent subordinate-partition construction does not restrict this finite-label definition. GeometryOfNumbersAndQuadraticArithmetic is earlier in the merge order and is already a supplier. `TauCetiRoadmap/ArithmeticDynamics/README.md:287` at the supplied open head explicitly consumes both APIs and asks for their comparison; that does not establish two owners.

Repair: consume GeometryOfNumbersAndQuadraticArithmetic §4.2, “Entropy and Haar measure on leaves”, with `finitePartitionEntropy` and `conditionalPartitionEntropy`. Delete the duplicate construction, chain-rule and alphabet-bound targets; correct the ownership and downstream paragraphs. Keep any genuinely new mutual-information comparison and the entropy-decrement application here, expressed through that API. Tested repair: constant entropy stays 0; a fair bit stays log 2; independent bits give mutual information 0; a bit paired with itself gives log 2. No arithmetic application loses an input.

## R02 (P2) — Use the earlier method-of-moments theorem

Location: `TauCetiRoadmap/ProbabilisticAndMetricNumberTheory/README.md:2123` and `TauCetiRoadmap/ProbabilisticAndMetricNumberTheory/Suggested.lean:162`. Claim: convergence of every moment to the standard Gaussian moments implies weak convergence to that Gaussian.

Witness: `TauCetiRoadmap/RandomMatrices/README.md:503` (§3.2) already supplies moment-to-weak convergence for a determinate limiting law, including exponential-moment sufficient conditions. Standard Gaussian moments begin 1,0,1,0,3; its exponential moments at ±1 both equal exp(1/2).

The scope paragraph at README:9 acknowledges the general owner but distinguishes a characteristic-function proof. A different proof does not create a different mathematical interface. The Lean signature is about arbitrary probability measures and contains no arithmetic object. Gaussian exponential integrability is available at the pin: `ProbabilityTheory.integrable_exp_mul_gaussianReal`, `Mathlib/Probability/Distributions/Gaussian/Real.lean:512`; the elementary bound exp(|x|)≤exp(x)+exp(−x) supplies the determinacy criterion. FreeProbability's shared-foundations contract also assigns this to RandomMatrices Milestone 3 (`TauCetiRoadmap/FreeProbability/README.md:114`).

Repair: import RandomMatrices §3.2 in the exact supplier contracts and use its Gaussian specialization as an input to Erdős–Kac. Delete `gaussian_weak_convergence_of_moments` from Suggested.lean and its separate proof target; keep only a needed specialization/comparison in prose. Tested repair: the constant Gaussian sequence satisfies the imported theorem; the constant fair ±1 sequence fails the fourth-moment premise (1≠3), although its first two moments agree. Thus the replacement preserves the required discrimination.

## R03 (P3) — Replace the homogeneous Birkhoff locator

Location: `TauCetiRoadmap/ProbabilisticAndMetricNumberTheory/README.md:6222`, locator at 6225; related locator at 6269. Claim: Haar-almost-everywhere convergence of time-one diagonal Birkhoff averages, citing Gorodnik2010 Lecture 1, physical pp.3–8.

Witness: Gorodnik2010 lines 72–242 develop lattices, Mahler compactness and bounded-orbit Diophantine comparisons. Those pages contain no Birkhoff-average or time-one ergodicity theorem. Sarig2023 lines 1841–1853 state the applicable pointwise ergodic theorem.

Repair: cite Sarig2023 Theorem 2.2, printed p.37 (physical p.45), together with local §4.1 and GeometryOfNumbersAndQuadraticArithmetic §4.2.1 for Howe–Moore along a₁ⁿ. Retain Gorodnik for the bounded-orbit comparison. For typical unbounded semiorbits, cite the local digit-frequency and bounded-orbit results. Tested repair: for f=1, A₀=0 and A_N=1 for N>0, while the normalized Haar integral is 1. The route already written in the README proves the right statement; the cited pages do not document it.

## Verified sound

Read the entire 6,888-line README and 695-line Lean file, the repository's normative README and contribution rules, and main-branch roadmap examples. The review concerns only this folder at the specified head. The worktree was unchanged, the outside-folder diff was empty, and no source material was placed in it. No route-specific prime restriction, sorry-defined data, option override, forbidden import or computational implementation was found. The restricted squarefree family is an additional general theorem on its specified family, not a replacement for the unrestricted prime-factor laws.

The supplied gate passed every check, including the targeted build. Its exact output was:

```text
gate ProbabilisticAndMetricNumberTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I independently ran the requested dependency check with the supplied content and order, including `--movable`. Output:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Independent `lake env lean` elaboration of Suggested.lean succeeded with exactly 59 sorry warnings and no other warning or error. A scratch copy with `#check @name` inspected all 89 named declarations and both local native-structure aliases. All four suspected dropped-binder leads were false positives: `torusPolynomial` sums over degrees, so its definition does not need finite coordinate type; the relevant theorems retain finiteness. The homogeneous theorems explicitly retain the action hypotheses, and the two semiorbit statements retain both action and unipotent identifications. No signature repair was needed.

The padding probe tried each of the 59 admissions separately with a single `simp`, `rfl`, or `infer_instance`; none closed. Reading the matching pinned declarations found no identical one-library-lemma replacement for the remaining arithmetic/dynamical results. R02 concerns an existing roadmap owner, not a claim that Mathlib already proves that theorem. Previously settled repair dispositions were read; none is re-raised.

Headline coverage: the README's end results are Hardy–Ramanujan, Erdős–Kac and restricted squarefree laws; Weyl linear/polynomial criteria and Haar mixtures, discrepancy and Borel normality; Duffin–Schaeffer, Catlin, Khintchine, mass transference, Jarník–Besicovitch and simultaneous approximation; arbitrary-L¹ pointwise Birkhoff, Gauss exactness/mixing, digit and word laws, Khinchin/Lévy growth, quantitative Gauss–Kuzmin and homogeneous-space applications; Matomäki–Radziwiłł, logarithmic Elliott/Chowla and nontrivial two-point bounds. Their statable signatures are present. The module docstring identifies weighted GCD-graph compression as lacking its carrier at the pins; it is not replaced by a free predicate or bounded stand-in. R02 removes a generic foundation from this acceptance test. Finite random-model definitions and second-moment identities remain README mathematics.

Pinned ownership checks used Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, not newer libraries. Objects were searched in both libraries, main roadmaps, board packages and the supplied open-roadmap heads, using the roadmap search/show tools. No fully qualified declaration-name collision was found. Exact declarations inspected include:

| Pin file and line | Declaration/object and boundary checked |
|---|---|
| Mathlib/NumberTheory/ArithmeticFunction/Defs.lean:49,77,92 | `ArithmeticFunction`, zero preservation, extensionality; no additive or multiplicative law is bundled. |
| Mathlib/NumberTheory/ArithmeticFunction/Misc.lean:258,315,324,360,368 | `cardFactors`, `cardDistinctFactors`, prime-power and coprime-product formulas; zero and positive-exponent conventions. |
| Mathlib/Data/Nat/Factorization/Basic.lean:530 | `Nat.card_multiples`; exact floor counting is imported. |
| Mathlib/Data/ZMod/QuotientRing.lean:78 | `ZMod.prodEquivPi`; pairwise coprimality, plus local nonzero moduli for finite laws. |
| TauCeti/Probability/Process/EmpiricalMeasure.lean:134,139,155,180 | `empiricalMeasure`, Dirac expansion, event/integral evaluation; successor sample and multiplicities. |
| TauCeti/Probability/Distributions/Gaussian/Moments.lean:118,139 | `centralMoment_id_two_mul_gaussianReal`, `centralMoment_id_two_mul_add_one_gaussianReal`; variance zero included. |
| TauCeti/Probability/Ergodic/MeanErgodic.lean:91 | `birkhoffAverage_tendsto_metProjection`; L² mean convergence, not general L¹ pointwise convergence. |
| TauCeti/MeasureTheory/Function/ConditionalExpectation.lean:149 | `condExp_ae_eq_integral_of_forall_zero_or_one`; integrability, trivial sub-σ-algebra and complete normed target. |
| TauCeti/Probability/Martingale/Convergence.lean:182 | `tendsto_eLpNorm_condExp_iInf`; decreasing sub-σ-algebras and finite measure. |
| Mathlib/MeasureTheory/Measure/Hausdorff.lean:490,541 | `le_mkMetric`, `le_hausdorffMeasure`; diameter gauge versus its power specialization. |
| Mathlib/Probability/Distributions/Gaussian/Real.lean:503,512 | `mgf_id_gaussianReal`, `integrable_exp_mul_gaussianReal`; Gaussian determinacy input for R02. |

Cross-roadmap citations were resolved against main or the supplied applicable open head, then their mathematical contracts were read. The citation scanner reported no unresolved name. The material supplier interfaces checked were:

| Supplier and locator | Contract checked |
|---|---|
| Completed/ArithmeticDirichletSeries/README.md:102,267 | Export contract and Layer 6 Perron kernel, endpoint convention and remainder. |
| TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:441,461,813 | §§0.19,0.21,1.5: reciprocal-prime range x≥286, common Mertens constant, finite complex Dirichlet-polynomial means. |
| TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:1957,2043,2700,2712,2884 | §§3.12a,3.18,3.32,3.33,3.41: analytic parameter uniformity, pretentious distance, restricted family, full compact twist infimum, fixed-A bounds. |
| TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:496,502 | §§0.5–0.6: convergent errors and irrational badly approximable carrier with positive q·distance bound. |
| TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1468,1478,1539,2069 | §4.2 Howe–Moore, Moore and entropy; §4.5 Mahler. Time-one mixing uses Howe–Moore, not merely continuous-flow ergodicity. R01 identifies the overlap. |
| TauCetiRoadmap/AdelicAlgebraicGroups/README.md:1755,1810,3236 | AA.2–AA.3: quotient-Haar hypotheses, coset comparison, normalized arithmetic finite volume. |
| TauCetiRoadmap/RandomMatrices/README.md:503; TauCetiRoadmap/FreeProbability/README.md:114 | Shared method-of-moments owner; R02. |
| TauCetiRoadmap/ArithmeticDynamics/README.md:287,2478 | Downstream entropy comparisons at the supplied head; these do not give this roadmap ownership of the earlier finite-label API. |
| TauCetiRoadmap/SieveMethodsAndPrimePatterns/README.md:3331 | Fundamental-lemma relative remainder does not itself supply the summed smooth/rough comparison or arbitrary-phase fourth moment. Those stronger targets are local here. |

All seven announced gap contracts were compared with `packages/ProbabilisticAndMetricNumberTheory/design/plan.json`. The plan retains their slugs; this README instead explicitly owns their mathematical statements in §§0.13,3.7,5.1–5.2 and contains no gap slug. That is a contract-record discrepancy, but none is presented as an export from a nonexistent supplier section. Under the brief's restricted gap defect classes, absence from the former supplier is not raised as a finding. The long-mean, restricted-Dirichlet, high-twist, modulated-sum, fourth-moment, summed-sieve and divisor-bounded statements were checked as local prerequisites, with their quantifiers. No additional missing-supplier conclusion is inferred from the old plan.

The seeded sample comprised all 15 requested sections. Cached text and, where needed, the cached rendered scan/HTML were inspected; the table below distinguishes original source statements from local consequences. Settled waived works are listed under Not verifiable.

| Sample | Source witness and scope checked |
|---|---|
| 0.2 Weighted finite prime sums | Native declarations above; finite weights, positive input, zero extension, coprimality and exact prime-power behavior. |
| 0.11 Repeated-factor exponential/moments | TAO-PRIME-FACTORS lines 708–754, Exercises 46/51 and Theorem 47. The explicit e² bound is derived locally by a finite Euler product; the source exercise supplies the repeated-factor/moment setting. |
| 1.4 Removing a prime cutoff | GS-SIEVING lines 159–211, physical p.4: logarithmic tail bound, power expansion and Cauchy–Schwarz transfer. |
| 1.6 Restricted squarefree family | KoymansPagano2022 lines 41–49,2832–2848, Theorem 7.2, physical p.60. The window agrees; the second moment is a consequence of the named analytic-parameter supplier, not a literal quotation of Theorem 7.2. |
| 2.2 Progressions/two-sided indexing | TAO-HOFA-1.1 lines 239–254, printed p.4: nonzero progression step and both integer halves. |
| 2.3 Irrational torus characters | TAO-HOFA-1.1 lines 318–336,360–367, printed pp.5–6: every nonzero integer frequency, including dimension zero and rational negative controls. |
| 2.4 Haar/arbitrary Weyl criteria | TAO-HOFA-1.1 lines 329–357, printed pp.5–6: Haar criterion, projections and rational twists. Arbitrary-limit version follows the same character-density argument. |
| 2.8 Canonical normal digits | Smyth2020 lines 158–178,219–282,1229–1251, Lesson 1 and Theorem 11, physical pp.28–29: endpoint conventions and normality. The roadmap repairs the closed-cylinder endpoint problem. |
| 3.3 Second moments/overlaps | KM-2020 lines 601–621,685–726,900–928, Lemmas 5.2–5.3 and Proposition 6.3, printed pp.264–266,269–270. The roadmap retains the factor-two overlap correction. |
| 3.6 Prime quality increments | KM-2020 lines 1968–1999,2059–2096,2183–2249,2379–2406,2459–2469,2599–2603, Lemmas 12.1–14.1 and Proposition 8.2, printed pp.291–304. Positive edge mass and the precise prime/class alternatives were checked. |
| 3.7 Arithmetic anatomy/good graph | KM-2020 lines 1060–1170, Proposition 7.1 and Lemmas 7.2–7.3, printed pp.273–275. General divisor-bounded input and prime-power special case remain distinct. |
| 3.8 Gauges/disjoint coverings | BeresnevichVelani lines 131–166,196–279,297–379,390–436, printed pp.974–979: dimension functions, finite disjoint subcover and finite/infinite gauge-ratio cases. |
| 3.9 Cantor levels/measure | BeresnevichVelani lines 437–525,698–740,782–820, printed pp.980–982,986–989: separated levels, parent-normalized weights and small-ball estimates; radius/diameter comparison is explicit. |
| 4.10 Modular consumers | Smyth2020 lines 2354–2360,2416–2445,2534–2548, Theorems 25/27/29 and Exercise 2.20; Gorodnik2010 lines 72–242, physical pp.3–8. Row/column and time conventions checked; R03 is the missing Birkhoff locator. |
| 5.3 Multiplicative random models | Harper lines 41–48,73–88,769–814, printed pp.2277–2278,2290: squarefree-supported Rademacher versus completely multiplicative Steinhaus models, and conjugated second moments. |

The 154 rows below retain the sampled sections, headline theorems and finding witnesses from the 442-row adversarial pass. “OK” means the computed instance is consistent with the statement, not a proof of an asymptotic or almost-everywhere claim. Independent exact arithmetic checks passed 9,325 finite assertions covering divisibility/CRT, moments, repeated factors, Gauss branches and overlaps.

|Statement (README line)|Instance|Computed values|Result|Change|
|---|---|---|---|---|
|193 primeDivisibilitySum|P={2,3},a=p|S12=5=2+3; S0=0, unguarded=5|OK|—|
|228 the positive-input evaluation fo…|P={2,3},a=p|S12=5=2+3; S0=0, unguarded=5|OK|—|
|240 primeDivisibilitySum_empty|P=∅;n=0,12|S0=S12=0=zero function|OK|—|
|253 primeDivisibilitySum_congr|P={2};a2=b2=2|S8=2=2; a3,b3 unused|OK|—|
|264 primeDivisibilitySum_add|P={2};a2=2,b2=−2|S(a+b)8=0=2+(−2)|OK|—|
|276 primeDivisibilitySum_mul_of_copr…|P={2};m=n=2|S4=2≠S2+S2=4; gcd=2 excluded|OK|—|
|293 primeDivisibilitySum_prime_pow|P={2,3};q=2,5;k=3|S8=2=a2; S125=0|OK|—|
|309 primeDivisibilitySum_primeFactors|n=0,1,12|S(n.primeFactors,1)n=0,0,2=ωn|OK|—|
|462 primeDivisibilitySum_secondMomen…|N5;weights2,3|abs(9/5−3)=6/5≤2·25/5=10|OK|—|
|486 primeDivisibilitySum_secondMomen…|N6;weights2,3|centered moment=3=model V|OK|—|
|623 divisibility_pattern_summed_error|N5;P={2,3}|L1 error=1/3≤3²/5=9/5|OK|—|
|981 crt_statistic_error|N5;F=1 on occupied tuples|error=1−5/6=1/6=R(Q−R)/(NQ)|OK|—|
|1322 excess_distribution_transfer|s=N;b=0|ED/N≤1/N→0; n=4 difference=1/N|OK|—|
|1351 cdf_weak_criterion|ν_n=δ_(1/(n+1));ν=δ₀|CDF at−1=0→0,at1=1→1; at0=0≠1 excluded|OK|—|
|1373 Positive geometric expansion at …|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|—|
|1394 Finite prime product for the exc…|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|—|
|1413 Finite Euler upper bound for the…|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|—|
|1439 Uniform bound for one repeated-f…|p2;N2|local tail=1/8≤1/(2·(2−3/2))=1|OK|—|
|1459 Uniform finite excess Euler prod…|P={2,3};N2|Euler product=19/16≤e²|OK|—|
|1482 excess_exponential_mean|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|—|
|1497 excess_all_moments|N8;k2|ED²=5/8≤2e²/log(3/2)²|OK|—|
|1520 excess_exponential_tail|N4;u=1|tail=1/4≤e²·2/3|OK|—|
|1539 Scaled repeated-factor moment bo…|N8;k2;s2|E(D/2)²=5/32≤e²/(2log(3/2)²)|OK|—|
|1605 kolmogorov_rogozin|two fair±1;δ=1|D=1; Q(sum,1)=1/2≤C|OK|—|
|1626 kubilius_small_prime_model|N=4;y=2|L1 atom error=1/4; TV=1/8|OK|—|
|1946 Prime cutoff decomposition of om…|n=60;z=3|ω60=3=2+1; tail1≤log60/log3|OK|—|
|1968 Logarithmic bound for discarded …|n8;z=3/2|tail=1≤log8/log(3/2); z=1 denominator excluded|OK|—|
|1992 Centered prime cutoff error|N60;n60;z3;b=5/6|centered difference=1≤log60/log3|OK|—|
|2015 Binomial prime cutoff power error|Y=−1;error=1;k2|abs(0²−(−1)²)=1≤2·1·1+1=3|OK|—|
|2040 Odd absolute prime moments from …|Y=±1;r1|Eabs(Y)³=1=√(EY²·EY⁴)|OK|—|
|2069 Finite prime cutoff moment trans…|P=∅;k=0|both zeroth moments=1; difference0=empty bound|OK|—|
|2102 turan_kubilius|N2;f2=a|LHS=a²/2; RHS=30a²|OK|—|
|2111 hardy_ramanujan|N4;ε=1|bad fractions=3/4,3/4; limiting target=0|OK|—|
|2123 gaussian_weak_convergence_of_mom…|Gaussian / fair±1|m₂=1 in both; m₄=3 versus1; supplier includes Gaussian|duplicate|R02|
|2135 erdos_kac|N=4;x=0|ω/Omega CDF=1/4; limiting Φ(0)=1/2|OK|—|
|2150 restricted_squarefree_second_mom…|N14;L=loglog14|sum(ω−L/2)²=7−5L+5L²/4|OK|—|
|2162 restricted_squarefree_window|N14|D={1,2,5,10,13}; 4,9 excluded; ω sum=5|OK|—|
|2398 TotallyAsympEquidistributed|x(n)=n mod2|full freq(0)=1/2; even-subsequence=1|OK|—|
|2411 TotallyAsympEquidistributed x μ …|x(n)=n mod2|full freq(0)=1/2; even-subsequence=1|OK|—|
|2433 AsympEquidistributedInt|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|—|
|2448 AsympEquidistributedInt x μ := A…|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|—|
|2476 AsympEquidistributedInt.natCast|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|—|
|2482 TotallyAsympEquidistributedInt.t…|integer x(n)=0;μ=δ₀|every signed progression law=δ₀|OK|—|
|2508 TorusIrrational|α=1/2;k=2|kα=0; character=1; irrational=false|OK|—|
|2519 TorusIrrational α := ∀ k|α=1/2;k=2|kα=0; character=1; irrational=false|OK|—|
|2549 torusIrrational_iff_mFourier|α=1/2;k=2|kα=0; character=1; irrational=false|OK|—|
|2557 mFourier_eq_fourier_sum|α=(1/4,1/4);k=(1,1)|mFourier=−1=e(1/2)|OK|—|
|2564 torusIrrational_unique_iff|α=1/2 or√2 mod1|additive order=2 or0; irrational=false ortrue|OK|—|
|2572 TorusIrrational.zsmul|α=√2 mod1;m=2,0|2√2 irrational;0α=0 with character1 excluded|OK|—|
|2580 TorusIrrational.nsmul|α=√2 mod1;m=2,0|2√2 irrational;0α=0 with character1 excluded|OK|—|
|2594 weyl_criterion|x(n)=0;k=1|Fourier mean=1; Haar coefficient=0|OK|—|
|2620 Equidistribution in T^d through …|x_n=(n√2,0);k=(0,1)|projected Fourier mean=1≠0|OK|—|
|2642 Weyl's criterion for an arbitrar…|x_n=0;μ=δ₀|Fourier mean=1=∫e(kx)dδ₀; Haar test0 differs|OK|—|
|2669 Total equidistribution by ration…|x_n=n/2;k1;twist1/2|untwisted mean0; twisted mean1≠0|OK|—|
|2699 linear_equidistribution_tfae|x(n)=n/2;k=2|Fourier mean=1≠0; irrational=false|OK|—|
|2774 weyl_polynomial|s2;α₂=√2|difference leading coefficient=2√2≠rational|OK|—|
|2798 uniformDistribution_mod_one_tfae|u_n=n/2;interval[0,1/4)|frequency=1/2≠length1/4; k2 mean1|OK|—|
|2827 polynomial_equidistribution_iff …|P=n√2+n²/2;k=2|quadratic frequency vanishes; linear=2√2≠0; criterion holds|OK|—|
|3032 polynomial_haar_mixture|P=(n√2,n²/3)|coset weights=1/3 at0,2/3 at1/3; sum1|OK|—|
|3132 erdos_turan|x={0,1/2};H1|Fourier mean0; D*=1/2≤3/2|OK|—|
|3142 koksma|sample {0,1/2}|D*=1/2; for f(t)=t: error=1/4≤1/2|OK|—|
|3165 IsNormalBase|b=3;x=1/3|digits=(1,0,0,…); freq0=1≠1/3|OK|—|
|3193 IsNormalBase.block|x=1/3;b3|freq0=1≠1/3; normality premise fails|OK|—|
|3199 IsNormalBase.digit|x=1/3;b3|freq0=1≠1/3; normality premise fails|OK|—|
|3204 IsNormalBase.empty_block|k0;N5|empty block counted5 times; ratio1=3⁰|OK|—|
|3210 Digit cylinders and expanding ci…|b3;word(1,2)|cylinder=[5/9,2/3); length1/9=3⁻²|OK|—|
|3224 borel_normal|x=0;b2,3|digit0 frequency1≠1/b; exceptional singleton measure0|OK|—|
|3236 borel_normal_all_bases|x=0;b2,3|digit0 frequency1≠1/b; exceptional singleton measure0|OK|—|
|3373 volume_dsLimsup_eq_zero|ψ=0|series=0; reduced limsup=∅; volume=0|OK|—|
|3388 volume_dsLimsup_eq_one|ψ(q)=q|every A_q=[0,1]; volume=1; series diverges|OK|—|
|3438 catlin|ψ=0|ξ=0; K contains rationals, A empty; both volumes0|OK|—|
|3476 khinchin|ψ(q)=1/q, q≥1|qψ=1; harmonic and totient sums diverge; volume1|OK|—|
|3498 Second-moment lower bound for a …|A₁=A₂=E;μE=1/2|sum masses=1; second moment2; union1/2=1²/2|OK|—|
|3511 Second moment for limsup events|all E_n=E;μE=1/2|pair sum=(N+1)²/2; ratio2; limsup mass1/2|OK|—|
|3523 Duffin–Schaeffer when ψ takes on…|ψ(q)=q|every A_q=[0,1]; volume=1; series diverges|OK|—|
|3531 Overlap estimate for 𝒜_q ∩ 𝒜_r|q=2,r=3;ψ=3/10|intersection=1/6; M=9/10<gcd=1|OK|—|
|3547 The second-moment bound|X=Y=1;ψ≤1/2|block mass≤1/2<1; hypothesis excludes singleton|OK|—|
|3841 Some pair of prime-power classes…|V=W={p};μp=1|edge ratio=1=(α₁β₁)^(9/10)|OK|—|
|3858 Quality increment unless a prime…|unit singleton atp|dominant densities=1≥1−10⁴⁰/p and9/10|OK|—|
|3875 Small quality loss or a dominant…|unit singleton atp|dominant densities=1≥1−10⁴⁰/p and9/10|OK|—|
|3889 Adding a small prime to 𝒫|p2;V=W={2}|δ′/δ=1; q′/q=4/(1−2^(−31/30))¹⁰>10⁻⁵⁰|OK|—|
|3908 Quality increment even when a pr…|prime p>10²⁰⁰⁰;V=W={p}|q′/q=(1−1/p)⁻²(1−p^(−31/30))⁻¹⁰>1|OK|—|
|3929 Iteration when ℛ♭(G) ≠ ∅|V=W={1,p};diagonal E;μ=1|δ=1/2; R♯ empty; restricting(p,p) gives q′/q>256|OK|—|
|3942 Iteration when ℛ♭(G) = ∅|prime p>10²⁰⁰⁰;V=W={p}|q′/q=(1−1/p)⁻²(1−p^(−31/30))⁻¹⁰>1|OK|—|
|3954 Bounded quality loss for small p…|V=W={1};P=∅|R=∅; G′=G; quality ratio1≥10^(−10^3000)|OK|—|
|3968 Removing the effect of ℛ(G) from…|singleton1;t300|L_t=0<10; edge hypothesis fails|OK|—|
|3988 Divisor-bounded multiplicative m…|f=1;x=2|sum=2; x exp(sum0)=2|OK|—|
|4002 Rankin-type bound for multiplica…|f=1;x=2|sum=2; x exp(sum0)=2|OK|—|
|4019 Few integers with many large pri…|x6;t2;c1|max reciprocal support=5/6<1; count0≤6e⁻²|OK|—|
|4037 Existence of a good GCD subgraph|singleton1;t>10²⁰⁰⁰|L_t=0<10; no admissible positive edge|OK|—|
|4062 Edge-set bound|ψ=0;E=∅|edge mass0≤C/t; positive vertex-mass premise excluded|OK|—|
|4086 IsDimensionGauge|k=1;f(r)=√r|f(0)=0; f(1/16)=1/4; expansion=1/4|OK|—|
|4113 IsDimensionGauge.zero|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|—|
|4118 IsDimensionGauge.positive|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|—|
|4123 IsDimensionGauge.tendsto_zero|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|—|
|4128 Radius versus diameter Hausdorff…|f(r)=√r;r1/16|f(2r)=√2/4; f(r)=1/4; ratio√2≠1|OK|—|
|4143 Disjoint finite covering for mas…|B=[0,1];disjoint expanded quarters|union length1/2≥κ·1; each radius1/8|OK|—|
|4159 MassTransferenceCantor|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|—|
|4190 MassTransferenceCantor.nested|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|—|
|4195 MassTransferenceCantor.limsup|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|—|
|4200 MassTransferenceCantor.separated|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|—|
|4206 MassTransferenceMeasure|child weights 1:3|masses=1/4,3/4; sum=1=root|OK|—|
|4235 MassTransferenceMeasure.root|root1;child weights1,3|μroot=1; children1/4+3/4=1|OK|—|
|4240 MassTransferenceMeasure.children|root1;child weights1,3|μroot=1; children1/4+3/4=1|OK|—|
|4245 MassTransferenceMeasure.ball_bound|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|—|
|4253 Bounds on selected level-ball ma…|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|—|
|4263 Ball intersection geometry|A=[−1,1];M=[0,1/2];c3|rM=1/4≤1; 3M=[−1/2,1]⊂5A|OK|—|
|4273 Arbitrary small-ball mass bound|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|—|
|4322 mass_transference|f(r)=r²;k=1|ratio=r→0; Hf([0,1])=0|OK|—|
|4352 mass_transference_power|s=1/2;interval radius1|full expanded limsup implies H^(1/2)=∞; k-dimensional volume2|OK|—|
|4384 jarnik_besicovitch|v3;x=0|coprime a=0 forces q1; x0 excluded; dim2/3,H^(2/3)=∞|OK|—|
|4397 hausdorff_duffin_schaeffer|ψ=0|summability threshold0; dim∅=0; gauge measure0|OK|—|
|4409 duffin_schaeffer_dimension|ψ=0|summability threshold0; dim∅=0; gauge measure0|OK|—|
|4441 simultaneous_duffin_schaeffer|k2;ψ=0|S=∅; series0; volume0|OK|—|
|4507 birkhoff_pointwise|singleton;T=id;f=2|A₀=0; A_N=2(N>0); E[f∣I]=2|OK|—|
|4549 birkhoff_pointwise_ergodic|singleton;T=id;f=2|A₀=0; A_N=2(N>0); E[f∣I]=2|OK|—|
|4979 gaussMeasure_probability|interval(0,1],(1/3,1/2]|totalmass=log2/log2=1; second=log(9/8)/log2|OK|—|
|5066 gauss_invariant|x0|sum1/(a(a+1))=1; invariant totalmass1=1|OK|—|
|5619 gauss_exact|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|—|
|5629 gauss_mixing|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|—|
|5637 gauss_ergodic|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|—|
|5648 gauss_digit_frequency|golden reciprocal;digit1|empirical freq1=1≠log(4/3)/log2; exceptional point|OK|—|
|5660 gauss_word_frequency|w=(1,2)|frequency limit=log(21/20)/log2; emptyword limit1|OK|—|
|5696 khinchin_series_summable|digit a=2|μdigit2=log(9/8)/log2; logK term=log(9/8)|OK|—|
|5727 khinchin_geometric_mean|golden reciprocal|geometric mean1; K>1; null exceptional point|OK|—|
|5739 levy_denominator|golden reciprocal|growth logφ≈.4812; typical π²/(12log2)≈1.1866|OK|—|
|6096 transfer_derivative_contraction|g1;M0;all n|Pⁿ1=1; derivative0≤.9ⁿ·0=0|OK|—|
|6134 density_uniform_error|n0;x0,1|density errors=abs(1−1/log2),abs(1−1/(2log2))<1|OK|—|
|6158 gauss_kuzmin|n0;a2|abs(1/6−log(9/8)/log2)≈.00326≤1|OK|—|
|6178 bounded_partial_denominators_iff…|x=1/2 (excluded)|digits2,0,0 bounded; q2 error0; orbit shortvector→0|OK|—|
|6192 Row/column and diagonal-time com…|t=log2;x=1|a_tu_x=[[2,2],[0,1/2]]; (−1,1)↦(0,1/2)|OK|—|
|6206 Bad approximation gives a unifor…|t0;q0;p1|max=1≥min(1,√c)|OK|—|
|6215 Uniform short vectors give a bad…|δ1;q1;tlog2|second coordinate1/2; first≥1 implies approximation≥1/2|OK|—|
|6222 homogeneous_birkhoff|f1;N0,1|A₀=0; A₁=1=Haar integral; Gorodnik has no average theorem|locator|R03|
|6248 bounded_digits_compact_orbit|x=1/2 (excluded)|digits2,0,0 bounded; q2 error0; orbit shortvector→0|OK|—|
|6266 typical_unbounded_semiorbit|digit boundB|frequency(B+1)=log(1+1/((B+1)(B+3)))/log2>0 versus0|OK|—|
|6395 matomaki_radziwill|f1;h=X|short−long=0; exceptional count0|OK|—|
|6541 logarithmic_chowla|λ;forms n,n+1;x=w=4|numerator=1/2−1/3−1/4=−1/12|OK|—|
|6554 logarithmic_elliott_finite|f1;χ1;t0|distance0<A; constant-correlation model excluded|OK|—|
|6580 finiteEntropy of a finite-valued…|constant,fair bit,independent bits|H=0,log2,2log2; I=0 orlog2; earlier owner identical|duplicate|R01|
|6627 logarithmic_elliott|f1;χ1;t0|distance0<A; constant-correlation model excluded|OK|—|
|6641 real_multiplicative_two_point_no…|λ;h1;X4|correlation sum=−1+1−1−1=−2; abs/X=1/2|OK|—|
|6653 liouville_two_point_nontrivial|λ;h1;X4|correlation sum=−1+1−1−1=−2; abs/X=1/2|OK|—|
|6668 Rademacher prime-sign model|ξ₂=−1,ξ₃=1;ζ₂=i,ζ₃=−1|R4=0,R6=−1; S4=−1,S6=−i|OK|—|
|6693 that on squarefree n the value i…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|—|
|6698 that on nonsquarefree n the valu…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|—|
|6703 that for every outcome the nativ…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|—|
|6708 Steinhaus prime-phase model|ξ₂=−1,ξ₃=1;ζ₂=i,ζ₃=−1|R4=0,R6=−1; S4=−1,S6=−i|OK|—|
|6732 that the model is completely mul…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|—|
|6737 that for prime p and k>0, the va…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|—|
|6742 that unit modulus of prime obser…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|—|
|6747 Rademacher covariance|m=n=4 or6|ER4²=0; ER6²=1; offdiagonal expectation0|OK|—|
|6756 Steinhaus covariance|m=n=4|Eabs(S4)²=1; without conjugation ES2²=0|OK|—|
|6765 Finite random-model second moments|N4|R second moment3; Steinhaus second moment4|OK|—|

## Not verifiable

Seven texts are settled as waived in the source record; their original proofs were not independently certified. I used the supplied cache and manifest, respected the existing waivers and made no new request for them: Koukoulopoulos2019 (notably Theorem 14.2, p.145, the divisor-bounded mean input); Kubilius1964 (small-prime multiplicity comparison); RS1962 (Theorem 5 prime estimates); Falconer1990 (Proposition 1.7 measure-extension input); PollingtonVaughan1990 (higher-dimensional Duffin–Schaeffer and overlap input); Rogozin1961a and Rogozin1961b (concentration inequalities). Their locators remain uncertified; accessibility is not a mathematical counterexample. All 15 sampled targets were investigated, with these limitations recorded rather than guessed. Ownership against the supplied open heads was checked; no unseen open head is claimed to have been inspected.

## Source issues

These are defects in the cited source versions, not additional findings against corrected roadmap statements. No published correction was established.

- **Error** in KM-2020 at Lemma 5.3, printed pp.264–265 (lines 601–621): the source says overlap vanishes when M<gcd(q,r); it should be allowed once 2M≥gcd(q,r); affects a stated result.
- **Error** in KM-2020 at Lemma 12.1, printed p.291 (lines 1968–1999): the source says normalized prime-class masses satisfy the alternative without positive edge mass; it should be assumed that the edge measure is positive; affects a stated result.
- **Misprint** in KM-2020 at Lemma 14.1, Case 1, printed p.302 (line 2464): the source says the quality ratio equals the displayed prime factor after restriction; it should be bounded below by that factor when isolated vertices are discarded; affects the proof.
- **Error** in Smyth2020 at Lesson 1, printed p.4 (lines 277–278): the source says closed fundamental intervals exactly characterize the canonical digit; it should be half-open intervals, or endpoints must be excluded; affects a stated result.
- **Misprint** in Smyth2020 at Theorem 21, printed p.43 (line 2109): the source says the Khinchin product factor uses denominator k(k+1); it should be k(k+2); affects a stated result.
- **Gap** in Sun2017 at proof of Theorem 2, printed p.4 (lines 190–206): the source says the derivative norm is bounded using signed branch-weight derivatives; it should be bounded using absolute derivatives or a justified cancellation; affects the proof.
- **Error** in MatomakiRadziwill at Theorem 3, printed p.7, and equation (26), printed p.30 (lines 238–249,1601–1609): the source says finite-support restricted short means have no terminal-boundary loss; it should be added, or the prime condition should extend beyond the finite dyadic interval; affects a stated result.

Computed source-error witnesses: q=2,r=3 and ψ(q)=ψ(r)=3/10 give M=9/10<1 but overlap length 1/6. A zero-weight edge (p,p) makes both normalized class masses zero. In Lemma 14.1, take V={1,p²}, W={1,p}, edges (1,1),(p²,p), μ(1)=1 and μ(p)=μ(p²)=ε=1/p². The edge restriction leaves p² isolated; deleting that vertex multiplies the displayed factor by (1+ε)^9>1. The canonical base-3 expansion of 1/3 starts with 1 although the closed zero cylinder contains it. At k=2 the Khinchin factor is 9/8, not 7/6. At p=1,k=2,x=1 in Sun's notation, h₂′=−1/72, and the corrected absolute coefficient is 1/48. For equation (26), at x=2X the finite-support short sum has at most one term, so its normalized value is ≤1/h₂, whereas the dyadic mean for f=1 and a density-one admissible prime-restricted family tends to 1. With h=X the terminal loss persists over a positive fraction of starting points; the roadmap's +h/X term accounts for it.
