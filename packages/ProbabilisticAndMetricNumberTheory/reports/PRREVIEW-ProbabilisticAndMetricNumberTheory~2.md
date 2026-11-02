# Review of ProbabilisticAndMetricNumberTheory (pull request #1421 at e4c4e53)

**Verdict:** accepted

No findings remain in this incremental re-review of 81 changed lines since 58cbb88. This is an AI review for a human's final approval, not an approval or merge.

## Previous findings

- R01 — repaired: README:15,83,6579–6594 imports finite and conditional label entropy from GeometryOfNumbersAndQuadraticArithmetic §4.2. Only mutual-information comparisons and the arithmetic application remain local; the chain rule and alphabet bound are supplier inputs.
- R02 — repaired: README:73,2129–2146,2198 imports RandomMatrices §3.2 and verifies Gaussian determinacy. The duplicate Gaussian moment-to-weak theorem is deleted from Suggested.lean; Erdős–Kac retains its full signature.
- R03 — repaired: README:6225 cites Sarig2023 Theorem 2.2 and the Howe–Moore input. README:6268 derives typical unboundedness from the local digit-frequency and bounded-orbit theorems, retaining Gorodnik only for the latter comparison.

## Verified sound

The review is confined to TauCetiRoadmap/ProbabilisticAndMetricNumberTheory at e4c4e538ff62a4605f45e643e00ea4615a3997ba. I read the repair diff, its dependent passages, the previous report, repository README and CONTRIBUTING, and main-branch roadmap examples. No file in the pull request was changed. The outside-folder diff and worktree status are empty. The only Lean change deletes one generic theorem: no theorem is weakened, no new data carrier is admitted, and no option override, computational procedure or restricted-prime shortcut is introduced.

The independently rerun text/dependency gate returned:

```text
gate ProbabilisticAndMetricNumberTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separate targeted build, `lake build TauCetiRoadmap.ProbabilisticAndMetricNumberTheory.Suggested`, succeeded. Independent `lake env lean` elaboration succeeded with exactly 58 warnings, all for `sorry`, and no errors. Thus the supplied gate's passing build result was independently confirmed.

The requested dependency check, using the supplied merge order, content and movable placement, returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. RandomMatrices is on main; GeometryOfNumbersAndQuadraticArithmetic precedes this roadmap. The revised routes have a single direction of supply. The seven old plan gap entries and the README's local ownership of their stronger analytic statements are unchanged; the previous review's disposition of that record discrepancy is carried forward, rather than reopening settled supplier-absence claims.

I elaborated a scratch copy containing `#check @name` for all 88 retained declarations and compared the types with the supplied signatures and relevant README statements. No retained signature changed. The four flagged declarations still have the intended generality: `torusPolynomial` sums over finitely many degrees and needs no finite coordinate-type instance; the consuming torus theorems retain it. `homogeneous_birkhoff` retains the diagonal formula, invariant probability and integrability. Both semiorbit theorems retain the diagonal and upper-unipotent formulas. No binder correction is needed.

The previous one-tactic padding probes apply unchanged to all 58 remaining admissions: they are identical declarations at identical pins. This round adds no admission to probe. The removed generic method-of-moments theorem is now a supplier input, not a missing arithmetic headline. The retained headline coverage is Hardy–Ramanujan, Erdős–Kac and restricted squarefree laws; Weyl linear/polynomial criteria, Haar mixtures, discrepancy and Borel normality; Duffin–Schaeffer, Catlin, Khintchine, mass transference, Jarník–Besicovitch and simultaneous approximation; arbitrary-L¹ Birkhoff, Gauss exactness/mixing, digit/word laws, Khinchin/Lévy growth, Gauss–Kuzmin and homogeneous applications; Matomäki–Radziwiłł, logarithmic Elliott/Chowla and nontrivial two-point bounds. The module docstring still names weighted GCD-graph compression and its missing native carrier. No replacement stand-in was introduced.

Ownership searches used the roadmap grep/show tools over main and open heads, board package READMEs, and the pinned libraries, searching finite-label/conditional entropy, joint and independent entropy, mutual information and moment-to-weak convergence by object. The new local mutual-information comparison has no competing owner in those searches; its underlying entropy construction does. No new fully qualified Lean name was added. The citation resolver found no unresolved cross-roadmap citation. Its warning that it did not inspect Lake pins was accounted for by direct inspection of the pinned source files below.

These supplier passages were reopened and their contracts checked:

| Repository-relative location | Contract verified |
|---|---|
| TauCetiRoadmap/RandomMatrices/README.md:501, on main | §3.2 supplies moment-to-weak convergence for a determinate limiting law, with higher-moment tightness/uniform-integrability arguments and exponential-moment determinacy. It imposes no uniform exponential-moment condition on the approximating sequence. |
| TauCetiRoadmap/FreeProbability/README.md:114 | The shared-foundations table assigns scalar moment-to-weak convergence to RandomMatrices. |
| TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1539, supplier head | The finite-label entropy formula, conditional formula, chain rule, relabeling and independent addition agree with the repaired contract; the probability alphabet bound is explicit. The adjacent standard-Borel subordinate-partition requirement does not constrain these finite sums. |
| TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1478 | §4.2.1 supplies Howe–Moore with strong continuity, unitarity and exclusion of invariant vectors. Restricting the mean-zero quotient representation along a₁ⁿ supplies the time-one mixing input. |
| TauCetiRoadmap/AdelicAlgebraicGroups/README.md:1755,1810,3237 | Quotient Borel/Haar integration, convention transport, and arithmetic finite volume supply the homogeneous space and invariant probability; SL₂(ℤ) is an explicit example. |
| TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:496,502 | The convergent-error inequalities and irrational badly-approximable predicate used in the unchanged bounded-orbit comparison remain present. |
| TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:441,461,813,2043,2700,2712 | Prime asymptotics, finite complex Dirichlet-polynomial mean squares, pretentious distance, restricted squarefree counting and Halász retain the contracts used alongside the revised routes. |
| TauCetiRoadmap/ArithmeticDynamics/README.md:277,289, supplied open head | The consumer imports pointwise Birkhoff and the shared GeometryOfNumbers entropy API. Its old additional citation to local `finiteEntropy` is stale after this repair; it should use the shared supplier when that consumer is updated. Reintroducing the duplicate here would undo R01. |

The source of the three added library claims was checked at Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Gaussian moment coefficients were also reopened at Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039:

| Pin file and line | Declaration and boundary |
|---|---|
| Mathlib/Probability/Distributions/Gaussian/Real.lean:503 | `ProbabilityTheory.mgf_id_gaussianReal`: μ=0,v=1,t=±1 gives exp(1/2). |
| Mathlib/Probability/Distributions/Gaussian/Real.lean:512 | `ProbabilityTheory.integrable_exp_mul_gaussianReal`: integrability at both signs gives the absolute exponential moment by domination. |
| Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean:227 | `Real.concaveOn_negMulLog` is concavity on [0,∞), including zero. It applies to all atom probabilities and zero-mass atoms in the finite mixture argument. |
| TauCeti/Probability/Distributions/Gaussian/Moments.lean:118,139 | `centralMoment_id_two_mul_gaussianReal` and `centralMoment_id_two_mul_add_one_gaussianReal`: moments 1,0,1,0,3 at mean zero and variance one, with the natural-subtraction convention also giving zeroth moment one. |

Source verification followed the incremental scope. The updated Birkhoff locator is exactly Sarig2023 Theorem 2.2, printed p.37/physical p.45, at lines 1841–1853: arbitrary integrable observables, with constant integral limit under ergodicity. The repaired mutual-information formulas, symmetry, nonnegativity and independence comparison are supported by TaoLogChowla §3, equations (3.1)–(3.5) and Remark 3.1, printed/physical p.19, lines 870–912. Its finite alphabet estimate is on p.20, lines 920–926, and the same entropy-decrement bound is Lemma 3.2, pp.21–22, lines 980–998. The change correctly imports that alphabet estimate instead of constructing a second API. GS-SIEVING lines 131–156 and 159–211 were reopened for the centered model and cutoff-transfer inputs to the revised Erdős–Kac route. No source passage was copied into the review artifacts.

Of the seeded sample, §§1.1 and 1.4 support the revised moment route, and §4.1 supplies the revised homogeneous route. The other sample targets are unchanged: §§0.2,2.2,2.4,2.6,2.8,3.1,3.2,3.6,3.9,3.10,3.11,4.9 retain the previous assessment and the applicable computed rows below. No new unverified locator was added. This is not a second full source review of those unchanged sections.

The first table records computations for the changed statements and their immediate interfaces. Each result is consistency evidence on the displayed instance, not a proof of an asymptotic theorem. The second table carries 149 unchanged rows from [r1]; its line numbers deliberately refer to 58cbb88. Five old rows involving the removed Gaussian target, the repaired entropy construction, Erdős–Kac's route, homogeneous Birkhoff and typical unboundedness are replaced by fresh rows here.

| Statement at this head | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| README:73, Gaussian determinacy input | t=1 and −1; x=0,±1 in the dominating inequality | Both Gaussian exponential integrals are exp(1/2); their sum is 3.2974425414. At x=0, 1≤2; at x=±1, e≤e+e⁻¹. | The limiting law meets the imported criterion. | Import RandomMatrices §3.2. |
| README:2144, moment-to-weak positive control | Constant standard Gaussian sequence | Moments of orders 0…4 are 1,0,1,0,3 on both sides; every measure in the sequence and its weak limit is the same Gaussian. | Pass. | Replaces the removed generic theorem's test. |
| README:2145, zero-law negative control | Constant δ₀ sequence | Second moment is 0, required Gaussian second moment is 1. | Premise correctly fails. | New placement under Erdős–Kac. |
| README:2146, mean/variance negative control | Constant fair ±1 sequence | Moments are 1,0,1,0,1; Gaussian fourth moment is 3. | Premise correctly fails despite matching first two moments. | New placement under Erdős–Kac. |
| README:2129, Erdős–Kac route | N=4, x=0; positive sample 1,2,3,4 | ω=(0,1,1,1), Ω=(0,1,1,2); each normalized empirical CDF at 0 is 1/4; limiting Φ(0)=1/2. Every finite sample has finite absolute moments. | Finite law and asymptotic conclusion remain distinct; imported criterion applies once local moment limits are established. | Supplier changed; signature unchanged. |
| README:1688, centered prime input | p=2 or3; e=0,1,2,3,4 | p=2 gives 1,0,1/4,0,1/16; p=3 gives 1,0,2/9,2/27,2/27. For e≥2 each lies in [0,v_p]. | No blanket odd-moment vanishing is used. | Supporting input reopened. |
| README:6579, mutual-information definition | Constant X and fair-bit Y | H(X)=0, H(Y)=H(X,Y)=log 2; I=0+log 2−log 2=0. | Pass. | Uses supplied entropy. |
| README:6583, symmetry | Binary joint masses (1/2,0,1/4,1/4) | H(X)=0.6931471806, H(Y)=0.5623351446, H(X,Y)=1.0397207708; I(X,Y)=I(Y,X)=0.2157615543. | Pass; swapping labels preserves the value. | New comparison API. |
| README:6583, conditional formula | Joint masses (3/8,1/8,1/8,3/8) | H(X&#124;Y)=0.5623351446; H(X)−H(X&#124;Y)=0.1308120359=H(X)+H(Y)−H(X,Y). | Pass. | Uses supplied chain rule. |
| README:6584, nonnegativity via concavity | Fair X paired with itself; zero and one conditional probabilities | H(X&#124;X)=0≤log 2=H(X); scalar Jensen at 0,1 gives (h(0)+h(1))/2=0≤h(1/2)=(log 2)/2. | Pass including zero atoms. | Pinned concavity supplies the input. |
| README:6585, independence | Two independent fair bits | H(X,Y)=2log 2=1.3862943611; H(X&#124;Y)=log 2; both I formulas give 0. | Pass; joint entropy is not mutual information. | Local comparison only. |
| README:6585, self-information | A fair bit paired with itself | H(X,X)=log 2, H(X&#124;X)=0; I(X,X)=log 2=H(X). | Pass; identically zero information fails this test. | Local comparison only. |
| README:6592, unused-label and logarithm conventions | Alphabet masses (1/2,1/2,0) | H=−2(1/2)log(1/2)−0log0=log 2≈0.6931471806, not 1. | Pass. | Four discriminating Checks retained. |
| README:83,6598, alphabet bound for blocks | H=2; four independent binary coordinates | Alphabet size 2⁴=16; block entropy 4log 2=log16, equal to its alphabet bound. For 2H coordinates with M labels, log(M^(2H))=2Hlog M. | Correct linear-in-H bound for fixed mesh. | Consumed from the entropy supplier. |
| README:6596–6598, entropy-decrement bound | Constant f=g=1, H=10¹⁰ at an admissible scale | Quantized X_H is constant, I(X_H,Y_H)=0; H/(log H·log log log H)≈379911980.609>0. | Bound and denominator convention consistent. | Proof route now names the supplier. |
| README:6222–6244, homogeneous Birkhoff | f=1; N=0,1,2 | A₀=0; A₁=A₂=1; normalized Haar integral=1. Also a₁ⁿ has entries eⁿ,e⁻ⁿ, giving max entry 1,e,e² at n=0,1,2 and escape as n grows. | Correct pointwise theorem plus time-one mixing input. | Locator repaired. |
| README:6234, column-action convention | t=log2,x=1; vector (−1,1) | a_tu_x=[[2,2],[0,1/2]] sends the vector to (0,1/2); u_xa_t=[[2,1/2],[0,1/2]] sends it to (−3/2,1/2). | Correct order retained. | Supporting convention unchanged. |
| README:6265–6272, typical unboundedness | Hypothetical digit bounds B=1 and2 | Observed frequency of B+1 would be 0; required frequencies are log(9/8)/log2≈0.1699250014 and log(16/15)/log2≈0.0931094044. | Contradiction for every finite bound on the common conull set. | Derived from local digit laws and bounded-orbit criterion. |
| README:6804, partition-label consumer | Independent fair-bit labels, then identical labels | Joint-label entropy is 2log2 or log2; I is respectively 0 or log2, exactly as for the same labels used as random variables. | Same supplier object, with no duplicate entropy construction. | Downstream interface corrected. |

| Statement (old README line) | Instance | Computed values | Result | Provenance |
|---|---|---|---|---|
|r1 line 193 primeDivisibilitySum|P={2,3},a=p|S12=5=2+3; S0=0, unguarded=5|OK|Carried from [r1]|
|r1 line 228 the positive-input evaluation fo…|P={2,3},a=p|S12=5=2+3; S0=0, unguarded=5|OK|Carried from [r1]|
|r1 line 240 primeDivisibilitySum_empty|P=∅;n=0,12|S0=S12=0=zero function|OK|Carried from [r1]|
|r1 line 253 primeDivisibilitySum_congr|P={2};a2=b2=2|S8=2=2; a3,b3 unused|OK|Carried from [r1]|
|r1 line 264 primeDivisibilitySum_add|P={2};a2=2,b2=−2|S(a+b)8=0=2+(−2)|OK|Carried from [r1]|
|r1 line 276 primeDivisibilitySum_mul_of_copr…|P={2};m=n=2|S4=2≠S2+S2=4; gcd=2 excluded|OK|Carried from [r1]|
|r1 line 293 primeDivisibilitySum_prime_pow|P={2,3};q=2,5;k=3|S8=2=a2; S125=0|OK|Carried from [r1]|
|r1 line 309 primeDivisibilitySum_primeFactors|n=0,1,12|S(n.primeFactors,1)n=0,0,2=ωn|OK|Carried from [r1]|
|r1 line 462 primeDivisibilitySum_secondMomen…|N5;weights2,3|abs(9/5−3)=6/5≤2·25/5=10|OK|Carried from [r1]|
|r1 line 486 primeDivisibilitySum_secondMomen…|N6;weights2,3|centered moment=3=model V|OK|Carried from [r1]|
|r1 line 623 divisibility_pattern_summed_error|N5;P={2,3}|L1 error=1/3≤3²/5=9/5|OK|Carried from [r1]|
|r1 line 981 crt_statistic_error|N5;F=1 on occupied tuples|error=1−5/6=1/6=R(Q−R)/(NQ)|OK|Carried from [r1]|
|r1 line 1322 excess_distribution_transfer|s=N;b=0|ED/N≤1/N→0; n=4 difference=1/N|OK|Carried from [r1]|
|r1 line 1351 cdf_weak_criterion|ν_n=δ_(1/(n+1));ν=δ₀|CDF at−1=0→0,at1=1→1; at0=0≠1 excluded|OK|Carried from [r1]|
|r1 line 1373 Positive geometric expansion at …|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|Carried from [r1]|
|r1 line 1394 Finite prime product for the exc…|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|Carried from [r1]|
|r1 line 1413 Finite Euler upper bound for the…|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|Carried from [r1]|
|r1 line 1439 Uniform bound for one repeated-f…|p2;N2|local tail=1/8≤1/(2·(2−3/2))=1|OK|Carried from [r1]|
|r1 line 1459 Uniform finite excess Euler prod…|P={2,3};N2|Euler product=19/16≤e²|OK|Carried from [r1]|
|r1 line 1482 excess_exponential_mean|mean N4;local n=N8|E(3/2)^D=9/8≤e²; (3/2)^D8=9/4|OK|Carried from [r1]|
|r1 line 1497 excess_all_moments|N8;k2|ED²=5/8≤2e²/log(3/2)²|OK|Carried from [r1]|
|r1 line 1520 excess_exponential_tail|N4;u=1|tail=1/4≤e²·2/3|OK|Carried from [r1]|
|r1 line 1539 Scaled repeated-factor moment bo…|N8;k2;s2|E(D/2)²=5/32≤e²/(2log(3/2)²)|OK|Carried from [r1]|
|r1 line 1605 kolmogorov_rogozin|two fair±1;δ=1|D=1; Q(sum,1)=1/2≤C|OK|Carried from [r1]|
|r1 line 1626 kubilius_small_prime_model|N=4;y=2|L1 atom error=1/4; TV=1/8|OK|Carried from [r1]|
|r1 line 1946 Prime cutoff decomposition of om…|n=60;z=3|ω60=3=2+1; tail1≤log60/log3|OK|Carried from [r1]|
|r1 line 1968 Logarithmic bound for discarded …|n8;z=3/2|tail=1≤log8/log(3/2); z=1 denominator excluded|OK|Carried from [r1]|
|r1 line 1992 Centered prime cutoff error|N60;n60;z3;b=5/6|centered difference=1≤log60/log3|OK|Carried from [r1]|
|r1 line 2015 Binomial prime cutoff power error|Y=−1;error=1;k2|abs(0²−(−1)²)=1≤2·1·1+1=3|OK|Carried from [r1]|
|r1 line 2040 Odd absolute prime moments from …|Y=±1;r1|Eabs(Y)³=1=√(EY²·EY⁴)|OK|Carried from [r1]|
|r1 line 2069 Finite prime cutoff moment trans…|P=∅;k=0|both zeroth moments=1; difference0=empty bound|OK|Carried from [r1]|
|r1 line 2102 turan_kubilius|N2;f2=a|LHS=a²/2; RHS=30a²|OK|Carried from [r1]|
|r1 line 2111 hardy_ramanujan|N4;ε=1|bad fractions=3/4,3/4; limiting target=0|OK|Carried from [r1]|
|r1 line 2150 restricted_squarefree_second_mom…|N14;L=loglog14|sum(ω−L/2)²=7−5L+5L²/4|OK|Carried from [r1]|
|r1 line 2162 restricted_squarefree_window|N14|D={1,2,5,10,13}; 4,9 excluded; ω sum=5|OK|Carried from [r1]|
|r1 line 2398 TotallyAsympEquidistributed|x(n)=n mod2|full freq(0)=1/2; even-subsequence=1|OK|Carried from [r1]|
|r1 line 2411 TotallyAsympEquidistributed x μ …|x(n)=n mod2|full freq(0)=1/2; even-subsequence=1|OK|Carried from [r1]|
|r1 line 2433 AsympEquidistributedInt|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|Carried from [r1]|
|r1 line 2448 AsympEquidistributedInt x μ := A…|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|Carried from [r1]|
|r1 line 2476 AsympEquidistributedInt.natCast|x(n)=1_(n<0)|positive-half mean0; negative-half1; symmetric1/2 insufficient|OK|Carried from [r1]|
|r1 line 2482 TotallyAsympEquidistributedInt.t…|integer x(n)=0;μ=δ₀|every signed progression law=δ₀|OK|Carried from [r1]|
|r1 line 2508 TorusIrrational|α=1/2;k=2|kα=0; character=1; irrational=false|OK|Carried from [r1]|
|r1 line 2519 TorusIrrational α := ∀ k|α=1/2;k=2|kα=0; character=1; irrational=false|OK|Carried from [r1]|
|r1 line 2549 torusIrrational_iff_mFourier|α=1/2;k=2|kα=0; character=1; irrational=false|OK|Carried from [r1]|
|r1 line 2557 mFourier_eq_fourier_sum|α=(1/4,1/4);k=(1,1)|mFourier=−1=e(1/2)|OK|Carried from [r1]|
|r1 line 2564 torusIrrational_unique_iff|α=1/2 or√2 mod1|additive order=2 or0; irrational=false ortrue|OK|Carried from [r1]|
|r1 line 2572 TorusIrrational.zsmul|α=√2 mod1;m=2,0|2√2 irrational;0α=0 with character1 excluded|OK|Carried from [r1]|
|r1 line 2580 TorusIrrational.nsmul|α=√2 mod1;m=2,0|2√2 irrational;0α=0 with character1 excluded|OK|Carried from [r1]|
|r1 line 2594 weyl_criterion|x(n)=0;k=1|Fourier mean=1; Haar coefficient=0|OK|Carried from [r1]|
|r1 line 2620 Equidistribution in T^d through …|x_n=(n√2,0);k=(0,1)|projected Fourier mean=1≠0|OK|Carried from [r1]|
|r1 line 2642 Weyl's criterion for an arbitrar…|x_n=0;μ=δ₀|Fourier mean=1=∫e(kx)dδ₀; Haar test0 differs|OK|Carried from [r1]|
|r1 line 2669 Total equidistribution by ration…|x_n=n/2;k1;twist1/2|untwisted mean0; twisted mean1≠0|OK|Carried from [r1]|
|r1 line 2699 linear_equidistribution_tfae|x(n)=n/2;k=2|Fourier mean=1≠0; irrational=false|OK|Carried from [r1]|
|r1 line 2774 weyl_polynomial|s2;α₂=√2|difference leading coefficient=2√2≠rational|OK|Carried from [r1]|
|r1 line 2798 uniformDistribution_mod_one_tfae|u_n=n/2;interval[0,1/4)|frequency=1/2≠length1/4; k2 mean1|OK|Carried from [r1]|
|r1 line 2827 polynomial_equidistribution_iff …|P=n√2+n²/2;k=2|quadratic frequency vanishes; linear=2√2≠0; criterion holds|OK|Carried from [r1]|
|r1 line 3032 polynomial_haar_mixture|P=(n√2,n²/3)|coset weights=1/3 at0,2/3 at1/3; sum1|OK|Carried from [r1]|
|r1 line 3132 erdos_turan|x={0,1/2};H1|Fourier mean0; D*=1/2≤3/2|OK|Carried from [r1]|
|r1 line 3142 koksma|sample {0,1/2}|D*=1/2; for f(t)=t: error=1/4≤1/2|OK|Carried from [r1]|
|r1 line 3165 IsNormalBase|b=3;x=1/3|digits=(1,0,0,…); freq0=1≠1/3|OK|Carried from [r1]|
|r1 line 3193 IsNormalBase.block|x=1/3;b3|freq0=1≠1/3; normality premise fails|OK|Carried from [r1]|
|r1 line 3199 IsNormalBase.digit|x=1/3;b3|freq0=1≠1/3; normality premise fails|OK|Carried from [r1]|
|r1 line 3204 IsNormalBase.empty_block|k0;N5|empty block counted5 times; ratio1=3⁰|OK|Carried from [r1]|
|r1 line 3210 Digit cylinders and expanding ci…|b3;word(1,2)|cylinder=[5/9,2/3); length1/9=3⁻²|OK|Carried from [r1]|
|r1 line 3224 borel_normal|x=0;b2,3|digit0 frequency1≠1/b; exceptional singleton measure0|OK|Carried from [r1]|
|r1 line 3236 borel_normal_all_bases|x=0;b2,3|digit0 frequency1≠1/b; exceptional singleton measure0|OK|Carried from [r1]|
|r1 line 3373 volume_dsLimsup_eq_zero|ψ=0|series=0; reduced limsup=∅; volume=0|OK|Carried from [r1]|
|r1 line 3388 volume_dsLimsup_eq_one|ψ(q)=q|every A_q=[0,1]; volume=1; series diverges|OK|Carried from [r1]|
|r1 line 3438 catlin|ψ=0|ξ=0; K contains rationals, A empty; both volumes0|OK|Carried from [r1]|
|r1 line 3476 khinchin|ψ(q)=1/q, q≥1|qψ=1; harmonic and totient sums diverge; volume1|OK|Carried from [r1]|
|r1 line 3498 Second-moment lower bound for a …|A₁=A₂=E;μE=1/2|sum masses=1; second moment2; union1/2=1²/2|OK|Carried from [r1]|
|r1 line 3511 Second moment for limsup events|all E_n=E;μE=1/2|pair sum=(N+1)²/2; ratio2; limsup mass1/2|OK|Carried from [r1]|
|r1 line 3523 Duffin–Schaeffer when ψ takes on…|ψ(q)=q|every A_q=[0,1]; volume=1; series diverges|OK|Carried from [r1]|
|r1 line 3531 Overlap estimate for 𝒜_q ∩ 𝒜_r|q=2,r=3;ψ=3/10|intersection=1/6; M=9/10<gcd=1|OK|Carried from [r1]|
|r1 line 3547 The second-moment bound|X=Y=1;ψ≤1/2|block mass≤1/2<1; hypothesis excludes singleton|OK|Carried from [r1]|
|r1 line 3841 Some pair of prime-power classes…|V=W={p};μp=1|edge ratio=1=(α₁β₁)^(9/10)|OK|Carried from [r1]|
|r1 line 3858 Quality increment unless a prime…|unit singleton atp|dominant densities=1≥1−10⁴⁰/p and9/10|OK|Carried from [r1]|
|r1 line 3875 Small quality loss or a dominant…|unit singleton atp|dominant densities=1≥1−10⁴⁰/p and9/10|OK|Carried from [r1]|
|r1 line 3889 Adding a small prime to 𝒫|p2;V=W={2}|δ′/δ=1; q′/q=4/(1−2^(−31/30))¹⁰>10⁻⁵⁰|OK|Carried from [r1]|
|r1 line 3908 Quality increment even when a pr…|prime p>10²⁰⁰⁰;V=W={p}|q′/q=(1−1/p)⁻²(1−p^(−31/30))⁻¹⁰>1|OK|Carried from [r1]|
|r1 line 3929 Iteration when ℛ♭(G) ≠ ∅|V=W={1,p};diagonal E;μ=1|δ=1/2; R♯ empty; restricting(p,p) gives q′/q>256|OK|Carried from [r1]|
|r1 line 3942 Iteration when ℛ♭(G) = ∅|prime p>10²⁰⁰⁰;V=W={p}|q′/q=(1−1/p)⁻²(1−p^(−31/30))⁻¹⁰>1|OK|Carried from [r1]|
|r1 line 3954 Bounded quality loss for small p…|V=W={1};P=∅|R=∅; G′=G; quality ratio1≥10^(−10^3000)|OK|Carried from [r1]|
|r1 line 3968 Removing the effect of ℛ(G) from…|singleton1;t300|L_t=0<10; edge hypothesis fails|OK|Carried from [r1]|
|r1 line 3988 Divisor-bounded multiplicative m…|f=1;x=2|sum=2; x exp(sum0)=2|OK|Carried from [r1]|
|r1 line 4002 Rankin-type bound for multiplica…|f=1;x=2|sum=2; x exp(sum0)=2|OK|Carried from [r1]|
|r1 line 4019 Few integers with many large pri…|x6;t2;c1|max reciprocal support=5/6<1; count0≤6e⁻²|OK|Carried from [r1]|
|r1 line 4037 Existence of a good GCD subgraph|singleton1;t>10²⁰⁰⁰|L_t=0<10; no admissible positive edge|OK|Carried from [r1]|
|r1 line 4062 Edge-set bound|ψ=0;E=∅|edge mass0≤C/t; positive vertex-mass premise excluded|OK|Carried from [r1]|
|r1 line 4086 IsDimensionGauge|k=1;f(r)=√r|f(0)=0; f(1/16)=1/4; expansion=1/4|OK|Carried from [r1]|
|r1 line 4113 IsDimensionGauge.zero|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|Carried from [r1]|
|r1 line 4118 IsDimensionGauge.positive|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|Carried from [r1]|
|r1 line 4123 IsDimensionGauge.tendsto_zero|f(r)=√r|f0=0; f(1/16)=1/4>0; f(1/n²)=1/n→0|OK|Carried from [r1]|
|r1 line 4128 Radius versus diameter Hausdorff…|f(r)=√r;r1/16|f(2r)=√2/4; f(r)=1/4; ratio√2≠1|OK|Carried from [r1]|
|r1 line 4143 Disjoint finite covering for mas…|B=[0,1];disjoint expanded quarters|union length1/2≥κ·1; each radius1/8|OK|Carried from [r1]|
|r1 line 4159 MassTransferenceCantor|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|Carried from [r1]|
|r1 line 4190 MassTransferenceCantor.nested|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|Carried from [r1]|
|r1 line 4195 MassTransferenceCantor.limsup|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|Carried from [r1]|
|r1 line 4200 MassTransferenceCantor.separated|root[0,1];centers1/4,3/4;r1/20|triples=[1/10,2/5],[3/5,9/10]; gap1/5|OK|Carried from [r1]|
|r1 line 4206 MassTransferenceMeasure|child weights 1:3|masses=1/4,3/4; sum=1=root|OK|Carried from [r1]|
|r1 line 4235 MassTransferenceMeasure.root|root1;child weights1,3|μroot=1; children1/4+3/4=1|OK|Carried from [r1]|
|r1 line 4240 MassTransferenceMeasure.children|root1;child weights1,3|μroot=1; children1/4+3/4=1|OK|Carried from [r1]|
|r1 line 4245 MassTransferenceMeasure.ball_bound|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|Carried from [r1]|
|r1 line 4253 Bounds on selected level-ball ma…|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|Carried from [r1]|
|r1 line 4263 Ball intersection geometry|A=[−1,1];M=[0,1/2];c3|rM=1/4≤1; 3M=[−1/2,1]⊂5A|OK|Carried from [r1]|
|r1 line 4273 Arbitrary small-ball mass bound|η2;child f(r)=1/2;weight1/4|μL=1/4=f(r)/η; outside-root ball μ0≤Cf(r)/2|OK|Carried from [r1]|
|r1 line 4322 mass_transference|f(r)=r²;k=1|ratio=r→0; Hf([0,1])=0|OK|Carried from [r1]|
|r1 line 4352 mass_transference_power|s=1/2;interval radius1|full expanded limsup implies H^(1/2)=∞; k-dimensional volume2|OK|Carried from [r1]|
|r1 line 4384 jarnik_besicovitch|v3;x=0|coprime a=0 forces q1; x0 excluded; dim2/3,H^(2/3)=∞|OK|Carried from [r1]|
|r1 line 4397 hausdorff_duffin_schaeffer|ψ=0|summability threshold0; dim∅=0; gauge measure0|OK|Carried from [r1]|
|r1 line 4409 duffin_schaeffer_dimension|ψ=0|summability threshold0; dim∅=0; gauge measure0|OK|Carried from [r1]|
|r1 line 4441 simultaneous_duffin_schaeffer|k2;ψ=0|S=∅; series0; volume0|OK|Carried from [r1]|
|r1 line 4507 birkhoff_pointwise|singleton;T=id;f=2|A₀=0; A_N=2(N>0); E[f∣I]=2|OK|Carried from [r1]|
|r1 line 4549 birkhoff_pointwise_ergodic|singleton;T=id;f=2|A₀=0; A_N=2(N>0); E[f∣I]=2|OK|Carried from [r1]|
|r1 line 4979 gaussMeasure_probability|interval(0,1],(1/3,1/2]|totalmass=log2/log2=1; second=log(9/8)/log2|OK|Carried from [r1]|
|r1 line 5066 gauss_invariant|x0|sum1/(a(a+1))=1; invariant totalmass1=1|OK|Carried from [r1]|
|r1 line 5619 gauss_exact|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|Carried from [r1]|
|r1 line 5629 gauss_mixing|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|Carried from [r1]|
|r1 line 5637 gauss_ergodic|Gauss B=univ|μ(B)=1; correlations1=1·1; trivial-event checks pass|OK|Carried from [r1]|
|r1 line 5648 gauss_digit_frequency|golden reciprocal;digit1|empirical freq1=1≠log(4/3)/log2; exceptional point|OK|Carried from [r1]|
|r1 line 5660 gauss_word_frequency|w=(1,2)|frequency limit=log(21/20)/log2; emptyword limit1|OK|Carried from [r1]|
|r1 line 5696 khinchin_series_summable|digit a=2|μdigit2=log(9/8)/log2; logK term=log(9/8)|OK|Carried from [r1]|
|r1 line 5727 khinchin_geometric_mean|golden reciprocal|geometric mean1; K>1; null exceptional point|OK|Carried from [r1]|
|r1 line 5739 levy_denominator|golden reciprocal|growth logφ≈.4812; typical π²/(12log2)≈1.1866|OK|Carried from [r1]|
|r1 line 6096 transfer_derivative_contraction|g1;M0;all n|Pⁿ1=1; derivative0≤.9ⁿ·0=0|OK|Carried from [r1]|
|r1 line 6134 density_uniform_error|n0;x0,1|density errors=abs(1−1/log2),abs(1−1/(2log2))<1|OK|Carried from [r1]|
|r1 line 6158 gauss_kuzmin|n0;a2|abs(1/6−log(9/8)/log2)≈.00326≤1|OK|Carried from [r1]|
|r1 line 6178 bounded_partial_denominators_iff…|x=1/2 (excluded)|digits2,0,0 bounded; q2 error0; orbit shortvector→0|OK|Carried from [r1]|
|r1 line 6192 Row/column and diagonal-time com…|t=log2;x=1|a_tu_x=[[2,2],[0,1/2]]; (−1,1)↦(0,1/2)|OK|Carried from [r1]|
|r1 line 6206 Bad approximation gives a unifor…|t0;q0;p1|max=1≥min(1,√c)|OK|Carried from [r1]|
|r1 line 6215 Uniform short vectors give a bad…|δ1;q1;tlog2|second coordinate1/2; first≥1 implies approximation≥1/2|OK|Carried from [r1]|
|r1 line 6248 bounded_digits_compact_orbit|x=1/2 (excluded)|digits2,0,0 bounded; q2 error0; orbit shortvector→0|OK|Carried from [r1]|
|r1 line 6395 matomaki_radziwill|f1;h=X|short−long=0; exceptional count0|OK|Carried from [r1]|
|r1 line 6541 logarithmic_chowla|λ;forms n,n+1;x=w=4|numerator=1/2−1/3−1/4=−1/12|OK|Carried from [r1]|
|r1 line 6554 logarithmic_elliott_finite|f1;χ1;t0|distance0<A; constant-correlation model excluded|OK|Carried from [r1]|
|r1 line 6627 logarithmic_elliott|f1;χ1;t0|distance0<A; constant-correlation model excluded|OK|Carried from [r1]|
|r1 line 6641 real_multiplicative_two_point_no…|λ;h1;X4|correlation sum=−1+1−1−1=−2; abs/X=1/2|OK|Carried from [r1]|
|r1 line 6653 liouville_two_point_nontrivial|λ;h1;X4|correlation sum=−1+1−1−1=−2; abs/X=1/2|OK|Carried from [r1]|
|r1 line 6668 Rademacher prime-sign model|ξ₂=−1,ξ₃=1;ζ₂=i,ζ₃=−1|R4=0,R6=−1; S4=−1,S6=−i|OK|Carried from [r1]|
|r1 line 6693 that on squarefree n the value i…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|Carried from [r1]|
|r1 line 6698 that on nonsquarefree n the valu…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|Carried from [r1]|
|r1 line 6703 that for every outcome the nativ…|ξ₂=−1,ξ₃=1|R6=−1=R2R3; R4=0≠R2²=1|OK|Carried from [r1]|
|r1 line 6708 Steinhaus prime-phase model|ξ₂=−1,ξ₃=1;ζ₂=i,ζ₃=−1|R4=0,R6=−1; S4=−1,S6=−i|OK|Carried from [r1]|
|r1 line 6732 that the model is completely mul…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|Carried from [r1]|
|r1 line 6737 that for prime p and k>0, the va…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|Carried from [r1]|
|r1 line 6742 that unit modulus of prime obser…|ζ₂=i,ζ₃=−1|S4=−1=i²; S12=1=S4S3; modulus1|OK|Carried from [r1]|
|r1 line 6747 Rademacher covariance|m=n=4 or6|ER4²=0; ER6²=1; offdiagonal expectation0|OK|Carried from [r1]|
|r1 line 6756 Steinhaus covariance|m=n=4|Eabs(S4)²=1; without conjugation ES2²=0|OK|Carried from [r1]|
|r1 line 6765 Finite random-model second moments|N4|R second moment3; Steinhaus second moment4|OK|Carried from [r1]|

## Not verifiable

No newly changed locator was inaccessible. The previous review's limitations remain: Koukoulopoulos2019, Kubilius1964, RS1962, Falconer1990, PollingtonVaughan1990, Rogozin1961a and Rogozin1961b are settled as waived. Their original proofs were not recertified or requested again. Unchanged source checks and padding probes are carried forward from [r1], not represented as newly performed. Ownership was checked against the indexed heads available through the supplied roadmap tools; no claim is made about unseen work.

## Source issues

- none

No new source mistake was found in the changed passages. The seven source issues recorded in [r1] concern unchanged passages and remain in that report; this round neither retracts nor independently recertifies them.

[r1]: packages/ProbabilisticAndMetricNumberTheory/reports/PRREVIEW-ProbabilisticAndMetricNumberTheory~1.md
