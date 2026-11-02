# Package report: EllipticModularityEffectiveComparisons

The deliverables are `packages/EllipticModularityEffectiveComparisons/README.md`, `Suggested.lean`, `metadata.toml` and `sources.toml`. Only the top-level `gaps` value of `design/plan.json` changed. The other design keys compare equal structurally, and the surrounding JSON text was preserved. The README skeleton was generated from all 100 accepted nodes before prose expansion. Seven node targets are supplied elsewhere; their conclusions appear in the ownership/contracts rather than as duplicate targets. All other targets, definition APIs, definition Checks and worked examples are retained, with the mathematical corrections below.

`design/review.json` is absent and the input reports directory was empty. The accepted review embedded in `design/plan.json` was read, including all 100 per-node entries. The separate missing review file was not invented. The source manifest was absent and was created through the source service; it has 15 unique keys, nine legally fetched texts and six published-locator-only Kenku items including the corrigendum. No source text was copied into a deliverable. No source request remains unsettled.

The inspected main checkout is ae2562cd6d39ddeac99ac18bdf78e6e46a068586. The supplied manifest pins Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, rather than the older design audit pins. Exact native declarations were rechecked at these supplied pins. The normative repository guidance and the main EllipticCurves and ModularForms roadmaps were read before writing. No helper agents were used.

## Headline theorems

The headline list was made before writing Suggested.lean; its statability audit was corrected when native integral-model and torsion formulations were found. All names below belong to the distinct namespace TauCetiRoadmap.EllipticModularityEffectiveComparisons.

| Headline | Acceptance status |
| --- | --- |
| Martin’s exact actual-newspace dimension formula | stated: `martin_dimension_formula` |
| Martin’s sharp bound and complete equality criterion | stated: `martin_sharp_bound` |
| Removed-prime residual exponent bound | not statable at the pins: arithmetic elliptic conductor and the residual conductor interface are absent |
| Finite-prime recognition of integral newform coefficients | stated: `newform_integral_of_small_primes` |
| General integral ideal Sturm, all characters and all ideals | stated: `integral_ideal_sturm` |
| Kraus’s global prime-power coefficient congruence | stated: `kraus_prime_power_congruence` |
| Kraus’s rational exact-conductor realization | not statable: residual Artin conductor and Serre weight interfaces are absent |
| Kraus’s full-two-torsion exact-conductor realization | not statable: the same missing conductor and weight interfaces |
| Four-divisible point counts give a degree-one/two full-two realization | stated: `four_divisible_isogeny_realization`, on every native integral model with elliptic rationalization; finite extra model-bad primes may be omitted |
| Mazur prime cyclic-degree list | stated: `prime_cyclic_isogeny_degrees` |
| Mazur–Kenku complete cyclic-degree list | stated: `rational_cyclic_isogeny_degrees` |
| Uniform irreducibility from one rational two-point | stated: `rational_two_uniform_irreducibility`, prime ℓ≥11 |
| Uniform irreducibility from full rational two-torsion | stated: `full_two_uniform_irreducibility`, prime ℓ≥7 |
| General quantitative elliptic isogeny bound | not statable: the stable Faltings-height interface is absent |
| BPR rational points on the actual split-normalizer curve | not statable: the modular curve with its cusp/CM loci is absent |
| Split-normalizer exclusion for an actual rational elliptic curve | stated: `split_normalizer_exclusion`, primes p≥11, p≠13 |
| Nonzero mixed full-new winding class and finite optimal quotient | not statable: mixed modular Jacobians, homology and integral annihilator quotients are absent |
| Cusp formal immersion into that quotient | not statable: those quotients and their integral models/cotangent maps are absent |
| Proper non-CM image is in a nonsplit normalizer | stated: `proper_image_nonsplit` |
| Integral j under the five genus-zero isogeny degrees and nonsplit containment | stated: `cyclic_isogeny_integral_j`, every prime outside {2,3,5,7,13}, without a non-CM hypothesis |
| Lemos’s non-CM rational cyclic-isogeny uniformity | stated: `lemos_uniform_surjectivity`, every prime p>37 |

The 14 admitted declarations are deep targets, not API or Check padding. Nine short definitions/abbreviations give their actual native objects. There is no admitted data, free condition field, set_option, conclusion-shaped hypothesis or import of a roadmap module. The arithmetic norm step remains in the README rather than becoming a weakened substitute for the removed-prime theorem.

## Corrections and ownership

- The full Γ₁ newspace is restricted to trivial character before taking its dimension. The native intersection and equivalence were rechecked. The correction product is denoted V∞, separated from I(N), the subgroup index: at 11 these are 0 and 12.
- Möbius inversion uses ζ, the positive-level constant-one function, and δ, the convolution identity: at p², λ₀∗τ=3−4+1=0. The final weight-two correction is μ(N), not the subgroup index. At 11 it is −1.
- Kraus’s square-root thresholds cite the original equations (7)–(9), kraus-1997 lines 239–293. Bennett–Siksek prints larger majorants at lines 220–233. In particular F(11)=3+2√2, rather than 9, and G(4)=4 rather than the erroneous 4N value 9. The accepted design attached the sharp formulas to the wrong source display.
- One residual use of I for the cusp product was corrected: the term discarded in the totient bound is −6V∞, while I denotes the Γ₀ index.
- The zero-level arithmetic value is a totalization. Without its guard the five-product formula at zero would be −1/12, not a modular dimension. All modular statements retain a nonzero-level binder.
- Source nonvanishing was checked at all embeddings. The counterexample c=100−70√2 has one small embedding but norm magnitude 391, refuting a single-embedding norm bound.
- The reviewed sixth-power note says 18·2^ω, but the source and target proof use 16·2^ω. At 64 the correct inequality is 32≥32; the 18 version would be 32≥36. The proof route retains the source’s 16 (martin-2003 lines 791–804).
- Every M₀/N comparison retains the coefficient-prime reduction alternative, with the weight-two implication restricted to ℓ≥11. The full residual conductor includes Swan exponents at 2 and 3. The native class-number-one supplier replaces the proposed new global classification extension.
- The path 0→i∞ with differential 2πi f(z)dz has period −L(f,1). The two-term Fourier witness q+2q² gives L=2, period −2 and unscaled integral i/π. This also corrects the orientation-dependent sign in darmon-merel lines 660–663 without affecting nonvanishing. A width-11 cusp has cotangent 11a₁dt, not a₀dt or an unmarked a₁dt.
- The Heegner–Gross criterion’s published hypothesis is p>11 (bilu-parent-rebolledo lines 847–859). The finite endpoint separately includes 11. The split-image theorem is stated in its full source range p≥11, p≠13, while the proper-image endpoint uses p>37.
- In the full source range for Cartan integrality, p outside the five genus-zero primes implies p≥11. An odd prime q≡±1 mod p satisfies q≥2p−1≥21>r,3. The same integral argument therefore supports the wider native integral-j headline; there is no unjustified p>37 restriction in its proof.
- The full-two selection uses quotient roots a±2√b: at a=3,b=1 they are 1,5. Multiplication-by-two/backtracking is separated from the cyclic four-isogeny.
- The finite trace set at F_(3^12) is {658,−1358,1458}. The value −1458 is not present. The k/t distinction, one-third character cases and exact rational denominators at isogeny degree 17 are retained.
- The Kenku 169 corrigendum, DOI 10.1112/jlms/s2-23.3.428-s, p.428, is included. Original Kenku texts are uncertified published-locator citations. The rational-point statements are also located in the legally read BNP account; no unread descent is certified.
- Lemos’s rank-zero assertion for Jac(X₀(37)) is not used: y²+y=x³−x has #E(F₂)=5 and #E(F₃)=7, hence trivial rational torsion, while (0,0) is a nonzero rational point. The degree-p degeneracy pullback multiplies divisor degree by p and preserves degree zero. Both source issues are explicitly respected in the targets.
- The absent roadmap name RankZeroOneBSD is not cited. The required higher-dimensional modular rank-zero realization is an explicit gap against the earlier EulerSystemsAndKolyvaginSystems §§4.7,5.13, rather than an invented elliptic-only supplier.

## Duplication removals and direction of supply

The required roadmaps grep/show tools searched main and the indexed open heads by object: newspace dimensions and multiplicities, coefficient norms, removed primes, Kraus filters, full residual conductors, stable lines and cyclic kernels, Eisenstein quotients, Cartan normalizers, winding/Chen comparisons, j maps, ideal Sturm, and quadratic class numbers. The board packages were also searched by those objects. Only new roadmap heads were used as dependencies; main was used for existing roadmaps. No ownership claim relies on an unread similarly named module.

| Accepted target removed here | Existing owner consumed |
| --- | --- |

| The degree of a newform coefficient field | ModularForms Layer 8G, Galois stability and the coefficient-field orbit dimension |
| The weight-two lift at the residual conductor | SerreWeightAndLevelOptimisation §§2.8, 4.8 and 6.2, with gap:optimized-elliptic-weight-two |
| A rational form gives an elliptic curve of exact conductor | ModularCurvesPartII §§16.2–16.6 and AutomorphicGaloisRepresentations §§6.1, 6.4 |
| The deletion level away from the residual prime | NeronModelsAndSemistableAbelianVarieties §5.3h |
| Potential good reduction from a prime isogeny | EisensteinIdealAndRationalTorsion §§6.3–6.4 and 7.9 |
| Mazur’s finite Eisenstein quotient | EisensteinIdealAndRationalTorsion §§2.3, 6.3–6.4 |
| Formal immersion into the Eisenstein quotient | EisensteinIdealAndRationalTorsion §7.9 |

The proposed global class-number-one extension was also deleted as an ownership claim: main ImaginaryQuadraticClassNumber H1.1–H1.4 and H3.6 supplies it. Baseline factorization, totient, Möbius inversion identities, embedding counts, norm nonvanishing/integrality and Minkowski are not redeclared. The eight early progress-update “removals” consist of these seven catalogue nodes and that proposed extension.

EllipticCurveModularityPartII at its readable head covers essentially the same effective comparisons, but ORDER places it immediately after this package. Consequently it is a consumer, never a supplier. The overlap is recorded as ownership moving down to this earlier package: the actual newspace formula, sharp thresholds, ideal Sturm theorem, removed-prime comparison, exact-conductor realization, two-torsion arguments, Cartan/winding application, finite-j reduction and surjectivity remain here. Its later GL₂-type continuation is not an input. The general quantitative elliptic isogeny statement, also proposed in later FaltingsFinitenessAndIsogenyTheoremsPartII work, is a full-number-field target here; it is not imported upward. General mixed Chen geometry stays with the earlier ModularCurvesPartII via an explicit gap. ModularCurvesPartIII is listed in ORDER but has no readable main/new-head roadmap; it is not cited as a supplier. The missing general ideal Sturm theorem from the later ModularFormsPartII direction is developed here, with the earlier integral lattice theory imported.

The full torsion specialization is an additional duplicate requirement removed from the gap list and consumed from HeightsRationalPointsAndObstructions §§1.15b–1.18. The narrower ComputationalNumberTheory §3.4 level-one prime-modulus Sturm theorem is not a supplier of the general ideal statement here; unrelated ComputationalNumberTheory dependencies were deleted.

The other supplied open roadmap families were covered by the object searches. Their generic finite-field, CM, modular-symbol, local-field and norm work remains with those owners. The broad norm search reaches the service’s 201-line result cap; narrower removed-prime, coefficient, image and source-specific searches and direct supplier reads were used before deciding ownership. No fully qualified declaration name in Suggested.lean is reused from another readable roadmap.

## Native declarations and binder audit

The 20 baseline declarations in the accepted design were all elaborated with #check at the supplied pins, including the full ambient hypotheses. All exist. Their source files were read; representative defining bodies at the pin are:

- `TauCeti.cuspFormsNew` in `TauCeti/NumberTheory/ModularForms/Newforms/Basic.lean:202`: `CuspForm.peterssonOrthogonal (cuspFormsOld N k)`. This is on Γ₁; it does not impose trivial character.
- `cuspFormCharSpace` in `TauCeti/NumberTheory/ModularForms/DiamondOperators.lean:279`: the infimum of the diamond-operator eigenspaces with eigenvalues χ(d). It supplies the missing character restriction.
- `HeckeRing.GL2.Newform` in `TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104` extends the good-index eigenform data with newness and first coefficient 1; the all-prime recurrence is a theorem input, not silently a structure field.
- `WeierstrassCurve.torsionGaloisAction` in `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:64` sends σ to the restriction of the coordinate map equivalence to torsion. It does not assert irreducibility, cyclic-isogeny degrees or surjectivity.
- `TauCeti.Isogeny` in `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Basic.lean:139` has an actual coordinate pullback and pointedness; it is a nonzero isogeny carrier. The zero morphism belongs to the separate Hom carrier.
- `TauCeti.Isogeny.ker` in `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Kernel.lean:75` is `translationFixingSubgroup W₁ φ.fieldPullback.fieldRange`. The base change in the acceptance predicate is essential to count the geometric kernel.
- `TauCeti.Isogeny.Hom` in `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Basic.lean:106` admits zero; Hom/Add supplies the ring and integer scalar operations used by the geometric non-CM predicate.
- Native `WeierstrassCurve.IsIntegral`, minimal models, reduction and good reduction occur in `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean`. They are sufficient for the integral-model four-count signature, but do not supply the arithmetic Artin conductor or Serre weight. A repository-wide object/path search found no native elliptic arithmetic-conductor or Serre-weight carrier at the supplied pins.

A scratch file appended #check @name for all 23 kept declarations and elaborated it once after the final signatures changed. Every elaborated type was compared with its README statement: positive-level NeZero binders, ellipticity on every elliptic carrier and existential target, prime assumptions and numerical cutoffs, trivial character, the complete coefficient-realization equality, prime ideal/exponent, the constant-term Sturm test, geometric kernels, geometric endomorphisms, and the same algebraic closure in the actual action all remain present. No binder was silently dropped. The four-count signature explicitly carries ellipticity of W over ℚ, and the proper/surjective image statements quantify actual torsion operators. No hypotheses needed an include repair. The normalizer expression was corrected to the native set-based `Subgroup.normalizer (C : Set _)` before the successful build.

## Adversarial mathematics pass

These are falsification checks and exact arithmetic audits of the written statements, not proofs of their general roadmap conclusions. All 100 accepted nodes have a row, including supplied conclusions deleted as duplicate targets. General target proofs, the Kenku descents, the 10¹⁴ rational-point interval proof and the all-prime residual-image theorems are not claimed executed. Rows record positive and negative controls; a finite test is never presented as proof of an infinite family.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |

| §0.1 Martin’s prime-power correction table | p=0,e=0; p=4,e=1; (2,2),(3,2),(2,3) | (1,1,1,1,1); (0,0,0,0,0); (1/4,0,−1,1,0); (5/9,1,1,−1,0); (3/8,0,1,0,0) | Consistent with stated hypotheses | Preserved exceptional rows |
| §0.2 The weight-two arithmetic dimension expression | N=0,1,11,30,35 | g_arith=0,0,1,1,3; the unguarded N=0 five-product value is −1/12 | Consistent with stated hypotheses | Separated zero convention |
| §0.5 Identification with the actual trivial-character newspace | N=1,11,30,35 | arithmetic dimensions 0,1,1,3; full cusp dimension at 30 is 3 but new dimension is 1 | Consistent with stated hypotheses | Actual character intersection |
| §0.6 Bounds for the five correction products | N=1; p²=4 | (NS,V∞,A,B,M)=(1,1,1,1,1); at 4, NS=1≤φ(4)=2 and V∞=0≤2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.7 The totient–prime-factor upper bound | N=1,11 | 12g=0≤1+7+12=20; 12g=12≤10+14+12=36 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.8 The sharp estimate at prime levels | p=2,3,11,13,23 | 12g=0,0,12,0,24 versus p+1=3,4,12,14,24; equality exactly 11,23 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.9 Large composite levels with at most two prime factors | N=1522=2·761 | g=63, so 12g=756<1523; √1522>39 and ω=2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.10 Finite low-level composite check | all 772 composite levels ≤1521 with ω≤2 | minimum (N+1)−12g=0, attained only at N=35 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.11 Levels divisible by a sixth prime power | N=64,p=2 | N/p=32=16·2^ω; 18·2^ω=36 would fail; 12g=12≤58=N−6 | Consistent with stated hypotheses | Source factor 16 retained |
| §0.12 At least two large prime factors | N=154=2·7·11 | local products give g=5, so 12g=60≤145=N−9; 2^ω=8 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.13 A large prime together with a factor of six | N=1548=2²·3²·43 | g=17, so 12g=204≤1548; N/129=12 makes the coarse cutoff exact | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.14 The remaining small levels in the large-prime case | all 505 levels below 1548 with the indicated restrictions | minimum N−12g=38, so every stated inequality has positive margin | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.15 The residual finite family of levels | 11250 tuples; 10125 distinct levels | minimum N−12g=18 at N=30; 12g=12=30−18 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §0.16 Martin’s sharp weight-two newspace bound | all N=1,…,2000; N=35,23,13 | 0 failures of inequality or either direction of equality iff; 36=36, 24=24, 0<14 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §1.1 Nonvanishing of the removed-prime comparison integer | K=ℚ,p=2,c=1,s=±1; p=1,c=2,s=1 | α=2 or 4, nonzero; excluded p=1 gives α=0 and gap (√1−1)²=0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §1.3 Archimedean bound on the comparison norm | K=ℚ(√2),p=2,c=√2; c=100−70√2 | ∣Norm(3−√2)∣=7≤17+12√2; one small conjugate alone gives ∣Norm∣=391>17+12√2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §1.6 The removed-prime residual exponent bound | M=11, Δ=−11⁵, ℓ=5; p=11 | deletion M₀=1; E has rational five-torsion, so irreducibility is false and the small right side gives no erroneous bound | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §2.1 Kraus’s coefficient-rationality threshold | N=1,11,35 | I=1,12,48; g=0,1,3; F=1,3+2√2,(1+√8)^6 | Consistent with stated hypotheses | Correct source locator |
| §2.2 Kraus’s two-torsion threshold | N=1,4,11 | lcm=4,4,44; I=6,6,72; G=4,4,13+4√3; wrong 4N at N=4 gives 9 | Consistent with stated hypotheses | lcm retained |
| §2.3 Kraus’s full-two-torsion comparison threshold | N=1,4,11 | (F,G)=(1,4),(1,4),(3+2√2,13+4√3); H=4,4,13+4√3 | Consistent with stated hypotheses | Strict max retained |
| §0.3 Prime-power inversion of the divisor multiplicity | prime-power exponents 0,1,2,3 | λ₀=1,−2,1,0; (λ₀∗τ)(p)=2−2=0; at p² it is 3−4+1=0; at 1 it is 1 | Consistent with stated hypotheses | ζ distinguished from δ |
| §0.4 The five inverted dimension terms | N=1 and prime 11 | at 1: 1/12−1/2−1/4−1/3+1=0; at 11: 10/12+1/2+2/3−1=1; μ(11)=−1 whereas I(11)=12 | Consistent with stated hypotheses | μ and cusp/index notation corrected |
| supplier The degree of a newform coefficient field | one coefficient orbit in the level-11 space | [K_f:ℚ]=1=g(11); at level 1 g=0 rules out a normalized nonzero form | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §1.2 Congruences force divisibility of the integer norm | K=ℚ, λ=(5), x=5 or 0; K=ℚ(√2), x=3−√2 | norms 5,0,7; 5≤5 and 7≤7 hold for nonzero x; 5≤0 is false and excluded | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §1.4 The removed-prime bound with coefficient degree | p=2, degree d=1, trace c=1, s=±1 | comparison norms 2 and 4 are ≤(√2+1)²=3+2√2; at p=ℓ the supplied congruence is unavailable | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §1.5 Replacing the coefficient degree by the explicit level | L=11,g=d=1; L=35,g=d=3 | 2d=2=(11+1)/6; 2d=6=(35+1)/6, so both power comparisons are equalities | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| supplier The weight-two lift at the residual conductor | good coefficient prime ℓ=11; ℓ=3 curve of conductor 141 | good reduction gives finite-flat weight two; the supplied example M₀=141, N=47 and weight 4 at 3 separates deletion from exact weight-two lift | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §3.1 Finite-prime recognition of rational coefficients | level 11; constant and first two coefficients | I/6=2; a₀=0,a₁=1,a₂=−2 are integers, and the supplied Hecke recurrence gives a₄=a₂²−2=2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.2 A small good prime detects a nonrational newform | bad primes q∥N and q²∣N; N=1 | bad coefficients are ±1 or 0, hence integral; I(1)/6=1/6 has no prime witness and g(1)=0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.3 The coefficient-recognition witness is below F | B=2,g=1; g=0 negative control | F=(1+√2)²=3+2√2>2; with g=0, F=1<2, so nonzero-form dimension is essential | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.4 The norm of a noninteger coefficient minus an elliptic trace | q=3, good traces at Hasse extremes; multiplicative b=4 | ∣b−a∣≤6 or 7; (√3+1)²=4+2√3≈7.464 bounds both; a noninteger coefficient cannot equal integral b | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.5 The F-threshold forces coefficient field Q | B=2,g=1; ℓ=7 | F≈5.828<7 and a small prime q≤2 has q=2≠7; the norm contradiction would give 7≤F<7 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| supplier A rational form gives an elliptic curve of exact conductor | rational normalized form at level 11 | coefficient degree 1 gives quotient dimension 1 and conductor 11¹=11; a degree-2 coefficient field gives dimension 2 and cannot be declared elliptic | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §3.6 Kraus’s rational realization theorem | exact level N=32, E:y²=x³−x, ℓ=17 | g(32)=1, I(32)=48, F=9+4√2≈14.657<17; E itself is a conductor-32 realization | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.7 Kraus’s local coefficient filters | Z coefficients; dyadic and odd rows; zero ring | (2,0,3):1−3X+2X²; (2,2,0):1; (3,1,−1):1−5X; (3,2,0):1−4X+3X²; over the zero ring 1=0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.8 The odd weight-two Eisenstein comparison | first two nonzero terms and constant | g(q)=q+4q³+6q⁵+…; a₀=0 and odd-prime factor at 3 is 1−4T+3T², not a cusp-form condition at every cusp | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.9 The filtered forms have the required coefficient congruence | odd q=3 with a₃=−1; q=2 filter | (q+1)(a_q−1)=4·(−2)=−8≡0 mod4; multiplying the q=2 Euler series by 1−a₂R₂+2R₄ kills its coefficient at 2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.10 Kraus’s global prime-power coefficient congruence | λ=(2),m=2; q=3,a₃=−1 | a₃−(3+1)=−5∉4ℤ, so this finite good-prime test fails; congruence mod2 alone would admit values differing by 2 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.11 A small prime detects failure of divisibility by four | C:y²=x³+2x, conductor with q=5 good | at 5 there are two points, so 4∤2; the finite-witness conclusion detects such failure instead of assuming all counts | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.12 The mod-four witness is below G | B=12 and B=0 | G=(1+√12)²=13+4√3>12; at B=0, G=1>0, so there is no zero-base exception | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.13 The G-threshold transfers full-two point counts | q=3, ℓ=11; q=5,ℓ=11 | max good trace gaps 6<4+2√3<11 and 8<6+2√5<11; a congruent trace gap must be 0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.14 Global four-point counts give a rational two-torsion point | GL₂(F₂)=S₃, cyclic order-three and order-two subgroups | order-three element has det(1−g)=1, hence odd count; order-two subgroup fixes a nonzero vector; full S₃ contains order-three elements | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.16 The full-two curve in the two-isogeny class | a=3,b=1; a=0,b=−1 | first discriminant 5 is nonsquare, but quotient discriminant 16 has roots 1,5; second original discriminant 4 gives roots ±1 | Consistent with stated hypotheses | Native integral-model headline added |
| §3.17 Kraus’s full rational two-torsion realization | E:y²=x³−x,N=32,ℓ=17 | F=G=H=9+4√2≈14.657<17; identity gives degree 1, conductor 32 and four rational two-points | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| supplier The deletion level away from the residual prime | E:y²=x³−x, q=2, ℓ≥5; multiplicative q with ℓ∣v_qΔ | wild exponent at 2 is 5, not radical exponent 1; multiplicative exponent 1 drops to 0 exactly in the divisible branch | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §3.18 The finite-flat adapter from deletion level to residual conductor | M=ℓ·L with multiplicative v_ℓΔ divisible by ℓ; good coefficient prime | deletion removes ℓ once: M₀=L, and N is prime to ℓ; in the good branch v_ℓM=0 already | Consistent with stated hypotheses | Low-prime local hypothesis retained |
| supplier Potential good reduction from a prime isogeny | r=11,j=−121; genus-zero r=13 | v₁₁(−121)=2≥0 agrees with potential good reduction; the degree-17 j=−17²·101³/2 has v₂(j)=−1, demonstrating why q=2 is excluded; r=13 has quotient dimension 0 | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §4.1 The five possible isogeny-character exponents | r=11,17,37 | m=5,8,18 and t=1,2,6; 2t=2,4,12 divides 12; half exponent exists at m=5 but not m=8 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.2 Frobenius congruences for a rational prime-isogeny character | q=3,k=0 and β order dividing 12 | β¹²=1; the trace congruence after extension is A₁₂≡1+3¹²; determinant remains 3¹² | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.3 The finite twelfth-power trace checks | all nonsingular cubic models over F₃ and F₅ | base traces −3,…,3 and −4,…,4; A₁₂ sets {−1358,658,1458} and {−28334,−25774,23506,31250} | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.4 The zero-exponent prime-isogeny case | q=3 and q=5 zero-character prime factors | first set {2,3,5,7,13,19,37,97}; second {2,3,5,7,13,17,31,37,61,157,229}; positive-genus intersection leaves 37 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.5 The one-third prime-isogeny case | q=3, 3⁴+3⁸=6642 | differences with 658,−1358,1458 are 5984,8000,5184; prime-factor union {2,3,5,11,17}, leaving 11,17 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.6 The half-exponent class-number-one reduction | r=11 and K=ℚ(√−11) | Minkowski bound 2√11/π≈2.111<11/4=2.75; 2 is inert and has ideal norm 4, exceeding the bound, so only norm 1 contributes | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.7 Mazur’s rational prime-isogeny theorem | r=2,13,37,41,43 | 2,13,37,43 belong to the full prime list; 41 does not; CM degree 43 must not be discarded | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.8 Mazur’s minimal positive-genus composite levels | n=22 and n=20 | 22 has the positive-genus prime divisor 11; 20 is itself a listed minimal composite obstruction; genus-zero 25 is excluded from the premise | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.9 The genus-one rational-isogeny point tables | d=14,15,20,21,24,27,32,36,49 | noncuspidal cardinalities 2,4,0,4,0,1,0,0,0; zeros distinguish cusp-only from merely finite | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.15 Kenku’s five remaining cusp-only levels | five obstruction levels | the claimed noncuspidal count is 0 at each of 39,65,91,125,169; genus-one level 14 has count 2 and is outside this set | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.16 Excluding composite isogeny extensions | levels 26,35,50; candidate degrees 21,25,27 | noncuspidal counts 0,0,0 for the three obstructions; 21,25,27 remain in the allowed list and cannot be excluded by the extension statement | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.17 Mazur–Kenku’s rational cyclic-isogeny degrees | n=0,1,18,19,20,21,22,163 | membership false,true,true,true,false,true,false,true; no allowed even n exceeds 18 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.18 A rational two-point gives a cyclic twice-prime isogeny | odd ℓ=11; coprime subgroup orders 2 and 11 | intersection has order 1, product cyclic group has order 22; no rational generator of the 11-line is required | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.19 Full two-torsion gives a cyclic four-isogeny in its class | distinct versus identical rational order-two kernels | distinct path has cyclic order-four kernel; backtracking is [2] with kernel (Z/2)² of order four but exponent two | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.20 Full two-torsion and reducibility give a cyclic four-times-prime isogeny | full two-torsion and hypothetical reducibility at ℓ=7 | transport across a degree-two isogeny is invertible on 7-torsion; 4·7=28 has cyclic kernel by coprimality | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.21 Uniform irreducibility with one rational two-point | ℓ=11 and boundary ℓ=2 | a stable 11-line would give degree 22, absent from the list; at 2 rational two-torsion supplies a stable line, so the lower-bound hypothesis matters | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.22 Uniform irreducibility with full rational two-torsion | ℓ=7 and boundary ℓ=2 | 4·7=28 is excluded; full rational E[2] has three invariant lines, so the ℓ=2 conclusion would be false | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.1 The CM prime-isogeny exceptions | r=19,43,67,163 and nontrivial n | j-values −96³,−960³,−5280³,−640320³ are the CM values; n=1 has no prime divisor and is excluded from the descent premise | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.3 Excluding exceptional projective residual images | p=41; A₄,S₄,A₅ | inertia element order ≥10 exceeds maximum element orders 3,4,5 respectively | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.7 The split Cartan uniformity input | p=11,13,41; normalizer sizes | p=11 and 41 fall in the exclusion range; 13 is excluded; split normalizer sizes are 200,288,3200, smaller than the respective full groups | Consistent with stated hypotheses | Full source range stated |
| §5.8 Every remaining proper image is in a non-split Cartan normalizer | p=41 and a hypothetical proper image | 41 is absent from the non-CM isogeny list; inertia lower bound 10 excludes exceptional images; BPR excludes split containment, leaving nonsplit | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.9 Potentially multiplicative primes under a non-split image | p=11, q=3,43 and q=p | squared Tate eigenvalues are (9,1), (1,1); 9≠1 excludes q=3; at q=p cyclotomic value 2 squares to 4≠1 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.10 The Cartan correspondence kills the p-old part | p=11, auxiliary r=2; finite group product | ∣N_ns∣=240, ∣B∣=1100, ∣intersection∣=20, product size 13200=∣GL₂(F₁₁)∣; Jac(X₀(2)) has dimension 0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.11 The winding class selects exactly nonvanishing central periods | two Fourier terms q+2q² on the oriented path | L-value contribution is 1+2/2=2; differential period is −2 and unscaled period i/π; nonvanishing agrees on both sides | Consistent with stated hypotheses | Period sign and scale corrected |
| §5.12 Nonvanishing of the new winding class | a cuspidal boundary divisor of exact order p; p=11 | 11D=0 and D≠0; killing the projected winding class would force D=0, contradicting this exact-order input | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.13 The nonzero finite winding quotient | zero quotient versus positive-dimensional winding quotient | A=0 has finite A(Q) but dimension 0, rejected; a surviving eigencomponent has period −L≠0 and positive dimension | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.14 The cusp residue-field constraint | p=11, real cyclotomic degree 5; q=23,43,2 | 23≡1,43≡−1 give residue degree 1; 2 has order 5 modulo ±1, so it cannot fix a cusp over F₂ | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.15 Formal immersion into the winding quotient at a cusp | p=11,r=13,q=23; width 11 and f=t+2t² | q≥2p−1=21>13,3; cotangent is 11dt≠0 mod23, while a₀=0 would give the wrong zero map | Consistent with stated hypotheses | Source prime range justified |
| §5.16 The rational modular point has torsion quotient image | Gal(K/Q) order 5, differences killed by n; finite A(Q) exponent m | n(σP−P)=0, so nφ(P) descends; m n φ(P)=0; n=m=1 gives the identity-map case | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.17 Formal immersion excludes every denominator away from p | p=11,r=13, denominator q=23; q=2 control | 23>13 and e=1<22 permits full torsion injection; at q=2, 1<1 is false, but 2≢±1 mod11 already excludes that denominator | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.18 A proper residual image forces integral j | j=a/p^k in lowest terms; p-integrality | for k>0, v_p(j)=−k<0 contradicts the local theorem; k=0 gives j∈Z; p=11,r=13 still has q≥21>r | Consistent with stated hypotheses | Full integral-j range justified |
| §5.19 The five genus-zero j-numerators | r=2,3,5,7,13,11 | degrees 3,4,6,8,14 and zero polynomial; constants 4096,729,125,49,13,0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.20 The modular meaning of the five j-polynomials | r=2,t=−16,8,−64,0 | j=0,1728,1728; at t=0 the modular map has a pole although total field division returns 0 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.21 Integral j forces a signed constant-term divisor | monic f=(T+16)³, t=1/2; degree-one f=T | f(1/2)/(1/2)=35937/4 is nonintegral; f=T gives quotient 1 at nonintegral t, excluding degree one | Consistent with stated hypotheses | Degree-one and zero-denominator controls added |
| §5.22 The finite integral j-candidate sets | all signed divisors at the five levels | candidate cardinalities 25,13,8,6,4; r=2 has 26 divisor inputs and one repeated j=1728; r=11 is empty | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.24 Surjectivity is invariant under quadratic twist | p=5, scalar twist −1; determinant and second application | det(−g)=(−1)²det(g)=det(g); applying the determinant-dependent twist twice multiplies by ψ²=1 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.25 The finite j-table at prime degrees 11,17,37 | r=11 and r=17; r=37 | S₁₁={−24729001,−32768,−121}; two 17-values have denominators 2 and 2¹⁷; at 37 the two listed values remain, and only −32768 in the union is CM | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.26 Residual-image certificates for the six large-isogeny j-values | six non-CM values versus all seven j-values | 7−1=6 after the unique CM exclusion; all p>37 remains an infinite quantified conclusion, not a finite Frobenius sample | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §5.27 Residual-image certificates for the integral j-lists | five candidate sets; r=2 t=−16,8 | cardinalities 25,13,8,6,4; j=0 and 1728 are CM, so the non-CM restriction prevents applying surjectivity to them | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §5.28 Lemos’s rational cyclic-isogeny surjectivity theorem | p=41; degree 1 and CM negative controls | the claimed full image has order (41²−1)(41²−41)=2755200; n=1 is excluded, and j=1728 has an extra order-four endomorphism | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §3.15 Four-point counts force one quadratic square class | a=0,b=2 at q=5; coincident square classes a=4,b=2 at q=3 | both Legendre symbols are −1 and counts are 2,6 respectively, each 2 mod4; discriminants −8 and 8 are nonzero | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §4.10 The cusp-only level 39 | X₀(39) rational cusps versus X₀(14) | claimed noncuspidal cardinality 0 versus known 2 at the control level; original 39-proof is cited by locator, not certified read | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.11 The cusp-only level 65 | X₀(65); degree-65 cyclic kernel | claimed noncuspidal cardinality 0, so no rational cyclic degree 65; allowed degree 25 is not eliminated | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.12 The cusp-only level 91 | X₀(91); 91=7·13 | claimed noncuspidal cardinality 0 despite both 7 and 13 being allowed prime isogeny degrees | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.13 The cusp-only level 125 | X₀(125); degree 25 versus 125 | claimed noncuspidal cardinality 0 at 125, while 25 has genus zero and rational noncuspidal points | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §4.14 The cusp-only level 169 | X₀(169); degree 13 versus 13² | claimed noncuspidal cardinality 0 at 169, while 13 has genus zero; corrigendum p.428 is included | Finite/source endpoint retained; no claim of full independent proof | Corrigendum included |
| supplier Mazur’s finite Eisenstein quotient | prime levels r=11,13,37 | Eisenstein rational group orders 5,1,3; quotient at 13 has dimension 0 and is excluded; full J₀(37) need not have rank 0 | Consistent with stated hypotheses | Imported; duplicate target deleted |
| supplier Formal immersion into the Eisenstein quotient | cusp width 1; f=q+2q² in characteristic 5 | cotangent coefficient 1 gives dt≠0, although constant coefficient 0 would give zero; residue characteristic 2 is excluded | Consistent with stated hypotheses | Imported; duplicate target deleted |
| §5.2 Serre’s projective inertia bound | p=41; potential-good e=4 cases | ordinary order 40/gcd(4,40)=10; height-two order 42/gcd(4,42)=21; intermediate case order 41; all ≥10 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.4 The large-prime split Cartan exclusion | p=14000003; degree-two numerical corollary | 3710√p≈13881550.39<p; √(4·10⁷)(985+4log2)≈6247222.38<7000·985=6895000 | Consistent with stated hypotheses | Hypotheses and conclusion retained |
| §5.5 The Heegner–Gross criterion for split Cartan points | D=3,c=2,p=17; p=11 boundary | H_−3=X,H_−12=X−54000 have derivatives 1,1 and resultant 1; χ_−3(17)=−1; source criterion requires p>11 | Consistent with stated hypotheses | p>11 source hypothesis corrected |
| §5.6 The certified finite split Cartan sieve | p=17 and p=11; interval endpoint | 17 meets the resultant test; 11 is handled by the finite rational-point endpoint; 10¹⁴ is excluded by the strict inequality, covered by the large-prime theorem | Finite/source endpoint retained; no claim of full independent proof | Hypotheses and conclusion retained |
| §5.23 Integral j-values are the finite divisor candidates | r=2,j=1728 and r=5,j=64 | parameters 8 or −64 and −1 give these exact j-values; both directions use a nonzero divisor, and t=0 is a cusp | Consistent with stated hypotheses | Hypotheses and conclusion retained |

### Definition APIs, Checks and conventions

Each original definition API item is separately audited here. Definition Check values are given per Check, followed by the native acceptance abbreviations and new general targets.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 API 1 — For every p, localTerms(p,0)=(1,1,1,1,1). | Stated local/level specialization | p=0,e=0: five ones; p=2,e=0: five ones | Consistent | API kept as prose |
| §0.1 API 2 — For p not prime and e>0, localTerms(p,e) is the zero vector. | Stated local/level specialization | p=4,e=1: five zeros; p=0,e=2: five zeros | Consistent | API kept as prose |
| §0.1 API 3 — For p prime and e>0 every coordinate is the corresponding entry of the displayed prime-power table. | Stated local/level specialization | (2,2)=(1/4,0,−1,1,0); (3,3)=(16/27,0,0,1,0) | Consistent | API kept as prose |
| §0.1 Check 1 | degenerate instance | localTerms(0,0)=(1,1,1,1,1). | Recomputed from the defining formula | Name omitted from Lean |
| §0.1 Check 2 | computation instance | localTerms(2,2)=(1/4,0,−1,1,0). | Recomputed from the defining formula | Name omitted from Lean |
| §0.1 Check 3 | computation instance | localTerms(3,2)=(5/9,1,1,−1,0). | Recomputed from the defining formula | Name omitted from Lean |
| §0.1 Check 4 | computation instance | localTerms(2,3)=(3/8,0,1,0,0). | Recomputed from the defining formula | Name omitted from Lean |
| §0.2 API 1 — martinValue(0)=0, a junk-level convention only. | Stated local/level specialization | N=0: value 0 versus unguarded −1/12 | Consistent | API kept as prose |
| §0.2 API 2 — martinValue(1)=0. | Stated local/level specialization | N=1: 1/12−1/2−1/4−1/3+1=0 | Consistent | API kept as prose |
| §0.2 API 3 — For N>0, martinValue is the displayed five-product expression with the native factorization of N. | Stated local/level specialization | N=11: 10/12+1/2+2/3−1=1 | Consistent | API kept as prose |
| §0.2 Check 1 | degenerate instance | martinValue(1)=0. | Recomputed from the defining formula | Name omitted from Lean |
| §0.2 Check 2 | computation instance | martinValue(11)=1. | Recomputed from the defining formula | Name omitted from Lean |
| §0.2 Check 3 | computation instance | martinValue(35)=3. | Recomputed from the defining formula | Name omitted from Lean |
| §0.2 Check 4 | computation instance | martinValue(30)=1. | Recomputed from the defining formula | Name omitted from Lean |
| §2.1 API 1 — krausF is the displayed expression in the native index and newspace dimension. | Stated local/level specialization | N=11: (√(12/6)+1)²=3+2√2 | Consistent | API kept as prose |
| §2.1 API 2 — For positive N, 1≤krausF(N). | Stated local/level specialization | N=1: F=1; N=11: F≈5.828≥1 | Consistent | API kept as prose |
| §2.1 API 3 — If the actual g(N)=0 then krausF(N)=1. | Stated local/level specialization | g(1)=g(4)=0 gives F=1 at both | Consistent | API kept as prose |
| §2.1 Check 1 | degenerate instance | krausF(1)=1. | Recomputed from the defining formula | Name omitted from Lean |
| §2.1 Check 2 | computation instance | krausF(11)=3+2 sqrt(2). | Recomputed from the defining formula | Name omitted from Lean |
| §2.1 Check 3 | computation instance | krausF(35)=(1+sqrt(8))^6. | Recomputed from the defining formula | Name omitted from Lean |
| §2.2 API 1 — krausG is the displayed least-common-multiple expression. | Stated local/level specialization | N=4: lcm=4 and I=6 gives G=4 | Consistent | API kept as prose |
| §2.2 API 2 — For positive N, 1≤krausG(N). | Stated local/level specialization | N=1: G=4≥1; N=11: G≈19.928≥1 | Consistent | API kept as prose |
| §2.2 API 3 — If 4 divides N, krausG(N)=(sqrt(I(N)/6)+1)^2. | Stated local/level specialization | N=4: lcm(4,4)=4 so G=(√(6/6)+1)²=4 | Consistent | API kept as prose |
| §2.2 Check 1 | degenerate instance | krausG(1)=4. | Recomputed from the defining formula | Name omitted from Lean |
| §2.2 Check 2 | non-example instance | krausG(4)=4, whereas replacing lcm(4,4) by 16 would give 9. | Recomputed from the defining formula | Name omitted from Lean |
| §2.2 Check 3 | computation instance | krausG(11)=13+4 sqrt(3). | Recomputed from the defining formula | Name omitted from Lean |
| §2.3 API 1 — For N>0, krausH(N)=max(krausF(N),krausG(N)). | Stated local/level specialization | N=11: maximum is 13+4√3 | Consistent | API kept as prose |
| §2.3 API 2 — krausF(N)≤krausH(N). | Stated local/level specialization | N=1: F=1≤H=4 | Consistent | API kept as prose |
| §2.3 API 3 — krausG(N)≤krausH(N). | Stated local/level specialization | N=1: G=4=H | Consistent | API kept as prose |
| §2.3 API 4 — For real ell, krausH(N)<ell iff krausF(N)<ell and krausG(N)<ell. | Stated local/level specialization | N=1, real ell=5: 4<5 iff 1<5 and 4<5; ell=4 makes both sides false | Consistent | API kept as prose |
| §2.3 Check 1 | degenerate instance | krausH(1)=4. | Recomputed from the defining formula | Name omitted from Lean |
| §2.3 Check 2 | computation instance | krausH(4)=4. | Recomputed from the defining formula | Name omitted from Lean |
| §2.3 Check 3 | computation instance | krausH(11)=13+4 sqrt(3). | Recomputed from the defining formula | Name omitted from Lean |
| §3.7 API 1 — The three p=2 rows are the displayed e=0, e=1 and e≥2 pairs. | Stated local/level specialization | p=2,e=0,1,2: 1−3X+2X²,1−3X,1 for a=3 | Consistent | API kept as prose |
| §3.7 API 2 — For p≠2 the e=0, e=1 and e≥2 rows are the displayed pairs. | Stated local/level specialization | p=3,e=0,1,2: second factors 1,1−5X,1−4X+3X² for a=−1 | Consistent | API kept as prose |
| §3.7 API 3 — Both filters have constant coefficient one. | Stated local/level specialization | all six table rows have constant coefficient 1; in zero ring this is 0=1 | Consistent | API kept as prose |
| §3.7 API 4 — Mapping coefficients along a commutative-ring homomorphism sends the filters of a to the filters of its image. | Stated local/level specialization | Z→F₅ sends 1−5X to 1 and 1−4X+3X² to 1+X+3X² | Consistent | API kept as prose |
| §3.7 Check 1 | computation instance | Over Z, krausLocalFilters(2,0,3)=(1−3X+2X²,1). | Recomputed from the defining formula | Name omitted from Lean |
| §3.7 Check 2 | computation instance | Over Z, krausLocalFilters(2,2,0)=(1,1). | Recomputed from the defining formula | Name omitted from Lean |
| §3.7 Check 3 | computation instance | Over Z, krausLocalFilters(3,1,−1)=(1,1−5X). | Recomputed from the defining formula | Name omitted from Lean |
| §3.7 Check 4 | computation instance | Over Z, krausLocalFilters(3,2,0)=(1,1−4X+3X²). | Recomputed from the defining formula | Name omitted from Lean |
| §5.19 API 1 — For the five levels the polynomial is exactly the displayed formula. | Stated local/level specialization | r=2: (X+16)³ has degree 3 and constant 4096 | Consistent | API kept as prose |
| §5.19 API 2 — For r∈{2,3,5,7,13}, lemosNumerator(r) is monic of degree r+1. | Stated local/level specialization | degrees at 2,3,5,7,13 are 3,4,6,8,14; leading coefficients all 1 | Consistent | API kept as prose |
| §5.19 API 3 — The five constant terms are 4096,729,125,49,13 respectively. | Stated local/level specialization | constants are 4096,729,125,49,13 | Consistent | API kept as prose |
| §5.19 API 4 — Outside {2,3,5,7,13}, lemosNumerator(r)=0. | Stated local/level specialization | r=11: the zero polynomial, with natDegree 0 and no monicity | Consistent | API kept as prose |
| §5.19 Check 1 | computation instance | lemosNumerator(2)(0)=4096. | Recomputed from the defining formula | Name omitted from Lean |
| §5.19 Check 2 | computation instance | lemosNumerator(7) has degree 8 and constant term 49. | Recomputed from the defining formula | Name omitted from Lean |
| §5.19 Check 3 | computation instance | lemosNumerator(13) has degree 14 and constant term 13. | Recomputed from the defining formula | Name omitted from Lean |
| §5.19 Check 4 | non-example instance | lemosNumerator(11)=0: the genus-one level does not use a genus-zero formula. | Recomputed from the defining formula | Name omitted from Lean |
| §5.22 API 1 — j belongs iff r∈{2,3,5,7,13} and there is a nonzero signed divisor t of the constant term with j equal to the exact quotient f(t)/t. | Stated local/level specialization | r=5,t=−1 gives 64; r=2,t=8 and −64 both give 1728 | Consistent | API kept as prose |
| §5.22 API 2 — For r outside {2,3,5,7,13}, lemosIntegralJ(r) is empty. | Stated local/level specialization | r=11: empty image with cardinality 0 | Consistent | API kept as prose |
| §5.22 API 3 — The cardinalities at 2,3,5,7,13 are 25,13,8,6,4. | Stated local/level specialization | r=2,3,5,7,13: cardinalities 25,13,8,6,4 | Consistent | API kept as prose |
| §5.22 Check 1 | computation instance | lemosIntegralJ(2) has 25 elements and contains 0 and 1728. | Recomputed from the defining formula | Name omitted from Lean |
| §5.22 Check 2 | computation instance | lemosIntegralJ(5) has 8 elements and contains 64. | Recomputed from the defining formula | Name omitted from Lean |
| §5.22 Check 3 | computation instance | lemosIntegralJ(13)={−64·9·4079³,576,4096·27·19,4096·27·19·991³}. | Recomputed from the defining formula | Name omitted from Lean |
| §5.22 Check 4 | degenerate instance | lemosIntegralJ(11) is empty; its separate finite j-table is used instead. | Recomputed from the defining formula | Name omitted from Lean |
| newDimension API 1: actual character carrier | N=30,11 | new/full dimensions 1/3 at 30; trivial-character new dimension 1 at 11 | Consistent on actual carriers | Native API or Check retained in prose |
| newDimension API 2: finite dimension and transport | N=1,11 and identity equivalence | dimensions 0 and 1; identity transports a one-element basis to a one-element basis | Consistent on actual carriers | Native API or Check retained in prose |
| newDimension API 3: primitive eigenbasis | N=11,35 | one and three independent primitive eigensystems, respectively | Consistent on actual carriers | Native API or Check retained in prose |
| newDimension Check 1: empty level-one products | N=1 | 1/12−1/2−1/4−1/3+1=0 | Consistent on actual carriers | Native API or Check retained in prose |
| newDimension Check 2: prime equality | N=11 | 12·1=12=11+1 | Consistent on actual carriers | Native API or Check retained in prose |
| newDimension Check 3: newness and composite equality | N=35,30 | 12·3=36=35+1; new/full at 30 is 1/3 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion API 1: kernel and inherited group | n=1,2 | kernel cardinalities 1,4; each two-torsion point is killed by 2 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion API 2: linearity and characteristic zero | n=2,3 | cardinalities 2²=4 and 3²=9; additive maps commute with scalar 1+1 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion API 3: prime-to-degree transport | degree 2, n=7 | 2·4=8≡1 mod7, so 4 times the dual is the inverse on torsion | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion Check 1: geometric versus rational | y²=x³−2x, n=1,2 | geometric cardinalities 1,4 versus rational two-torsion cardinality 2 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion Check 2: zero convention | n=0 | 0·P=0 for every P, so the kernel is the whole geometric group | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricTorsion Check 3: characteristic-p control | y²=x³+1 over F₅ | trace 0, supersingular; geometric 5-torsion cardinality 1 instead of 25 | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible API 1: invariant subspaces | GL₂(F₂)=S₃ and its cyclic order-three subgroup | both have no common invariant line; the order-three polynomial X²+X+1 has no root in F₂ | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible API 2: transport | degree 2, n=7 | 2 has inverse 4 mod7; the stable-line cardinality 7 is preserved | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible API 3: stable kernel versus rational generator | y²=x³+2 | O,(0,±√2) has cardinality 3 and tangent slope 0; neither nonzero generator is rational | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible Check 1: rational torsion line | rational point of exact prime order p | line cardinality p is strictly between 1 and p² | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible Check 2: irreducible cyclic image | x³−3x−1 | values at ±1 are −3,1; cubic discriminant 81 is a square, so image C₃ has no invariant F₂-line | Consistent on actual carriers | Native API or Check retained in prose |
| ResiduallyIrreducible Check 3: nonabelian and reducible images | x³−x+1; x³−2x | discriminants −23 and 32; S₃ has no common line, C₂ fixes the point (0,0) | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree API 1: transport | identity rational isomorphism | degree 1 and one-element kernel remain degree 1 and one-element kernel | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree API 2: stable cyclic kernel | rational order-two subgroup | kernel cardinality 2 equals separable degree 2; the quotient descends to Q | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree API 3: divisors | Z/4, d=2 | the unique order-two subgroup is {0,2}; a Galois operator preserves it | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree Check 1: identity | n=1 | degree 1 and kernel cardinality/exponent 1/1 | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree Check 2: quotient | n=2 | degree 2 and kernel cardinality/exponent 2/2 | Consistent on actual carriers | Native API or Check retained in prose |
| CyclicIsogenyDegree Check 3: noncyclic multiplication | [2] | degree/cardinality 4 but exponent 2, so that map is not cyclic | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM API 1: integer scalars | endomorphisms 0,1,−1 | scalar degrees 0,1,1; only the zero map is degenerate | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM API 2: isogeny invariance | non-CM degree-two quotient | rational endomorphism algebra remains Q; the elliptic endomorphism order in Q is Z | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM API 3: geometric quantifier | y²=x³−x over Q | [i] is defined over Q(i), has order 4, and is missed by a Q-only endomorphism test | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM Check 1: j=1728 | (x,y)↦(−x,iy) | square is [−1], fourth power is 1; no integer scalar has order 4 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM Check 2: j=0 | cube-root automorphism | order 3; integer units have orders 1 or 2 | Consistent on actual carriers | Native API or Check retained in prose |
| GeometricallyNonCM Check 3: non-CM rational curve | conductor 11 model | j=−2¹²·31³/11⁵ has v₁₁=−5<0, excluding a CM algebraic integer | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage API 1: basis transport | identity and exchanged coordinate bases | two distinct order-11 lines remain distinct with cardinalities 11,11 | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage API 2: inverse and exchange | permutation matrix | square is 1, so inverse exchanges the same pair | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage API 3: stabilizer size | p=11 | pair stabilizer 2·10²=200 versus diagonal subgroup 10²=100 | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage Check 1: actual split CM image | p=13, E:y²=x³−x | 13=(3+2i)(3−2i), norm 13 for each factor; their two kernels have cardinality 13 and conjugation exchanges them | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage Check 2: nonsplit control | p=11 | 240 does not divide 200, so a full nonsplit normalizer cannot preserve a line pair | Consistent on actual carriers | Native API or Check retained in prose |
| SplitNormalizerImage Check 3: p=2 | pair and all three lines | pair stabilizer cardinality 2 versus full group cardinality 6; normalizer of the trivial diagonal subgroup is 6 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage API 1: field units and basis transport | F₁₂₁ inside M₂(F₁₁) | unit cardinality 121−1=120; conjugating by a basis change preserves 120 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage API 2: inverse normalization | C and normalizing operator g | gCg⁻¹=C implies g⁻¹Cg=C; the cyclic group remains order 120 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage API 3: Cartan and normalizer size | p=11 | 120 and 2·120=240; index is 2 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage Check 1: actual inert CM image | p=11, E:y²=x³−x | X²+1 is irreducible mod11; F₁₂₁ has 120 units, while scalar units have only 10 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage Check 2: full image | p=11 | |GL₂(F₁₁)|=120·110=13200>240 | Consistent on actual carriers | Native API or Check retained in prose |
| NonsplitNormalizerImage Check 3: split and small-prime controls | p=11,2 | 200 does not divide 240; at 2 the nonsplit normalizer has cardinality 6=|GL₂(F₂)| | Consistent on actual carriers | Native API or Check retained in prose |
| Quantitative cyclic bound: CM negative control | E:y²=x³−x over Q(i), endomorphism 10⁷+i | Smith invariants 1,10¹⁴+1; h_F≤log(1728)/12+3<4<985, while bound <39124840000000<100000000000001 | Non-CM is essential for the cyclic-degree corollary | Full CM existence theorem retained |
| Actual newDimension | N=1,11,30,35 | 0,1,1,3; full dimension at 30 is 3 | Consistent with explicit hypotheses | Recorded in README or signature |
| GeometricTorsion | n=1,2,0; supersingular E/F₅ | 1,4,whole group; geometric 5-torsion over F̄₅ has one point | Consistent with explicit hypotheses | Recorded in README or signature |
| ResiduallyIrreducible | cyclic 3 and 2 subgroups of GL₂(F₂); S₃ | order-3 companion has no invariant line; order-2 unipotent fixes one; S₃ has no common fixed line | Consistent with explicit hypotheses | Recorded in README or signature |
| CyclicIsogenyDegree | identity, degree-two quotient, [2] | kernel cardinalities 1,2,4; exponents 1,2,2, so [2] is noncyclic | Consistent with explicit hypotheses | Recorded in README or signature |
| GeometricallyNonCM | j=0,1728 and conductor-11 curve | extra endomorphism orders 3,4; conductor-11 j has denominator 11⁵ and cannot be a CM integer | Consistent with explicit hypotheses | Recorded in README or signature |
| NonsplitNormalizerImage | p=11 and p=2 | Cartan/normalizer/full orders 120/240/13200; at 2 the nonsplit normalizer has order 6=full group | Consistent with explicit hypotheses | Recorded in README or signature |
| SplitNormalizerImage | p=11 and p=2 | pair stabilizers have orders 200 and 2; full groups have orders 13200 and 6 | Consistent with explicit hypotheses | Recorded in README or signature |
| Integral Sturm all ideals and characters | k=0,J=0; level 4 odd series,J=4Z | constant 1 fails the n=0 test; level-4 cutoff is 1 and a₁=1∉4Z; J=Z admits every coefficient | Consistent with explicit hypotheses | Recorded in README or signature |
| Quantitative isogeny, existence and cyclic corollary | d=1,h≤985; d=2; [m] control | bound 9702250000000; quadratic root≈6247222.38<6895000; [m] has noncyclic kernel for m>1 | Consistent with explicit hypotheses | Recorded in README or signature |
| Four-count native integral model | W:y²=x³−x, q=3,5; scale by u=2 | counts 4,8; scaling raises discriminant by 2¹² and introduces no new odd excluded prime | Consistent with explicit hypotheses | Recorded in README or signature |
| Mellin/winding orientation | q+2q²; path 0→i∞ | L-contribution 2; unscaled integral i/π; normalized differential integral −2 | Consistent with explicit hypotheses | Recorded in README or signature |
| Cusp cotangent normalization | width 11, f=t+2t², characteristic 23 | differential 11dt+22t dt; cotangent 11dt≠0 | Consistent with explicit hypotheses | Recorded in README or signature |
| Arithmetic versus geometric Frobenius | E:y²+y=x³−x over F₂ | arithmetic roots −1±i: product 2; inverse roots give product 1/2 and polynomial X²+X+1/2 | Consistent with explicit hypotheses | Recorded in README or signature |
| Residual/ordinary conductor and radical | E:y²=x³−x at 2, residual ℓ≥5 | conductor exponent 5 persists; replacing it by radical exponent 1 changes N=32 to 2 | Consistent with explicit hypotheses | Recorded in README or signature |
| Unramified full torsion specialization | q=23,e=1; q=2,e=1 | 1<22 permits the argument; 1<1 fails and the dyadic formal kernel can have 2-torsion | Consistent with explicit hypotheses | Recorded in README or signature |
| Finite-character global triviality | unramified character α^(2t), r=37 | 2t=12; class field of Q with finite-prime conductor 1 is Q, so α¹²=1 | Consistent with explicit hypotheses | Recorded in README or signature |
| All embeddings and scalar tower | K=Q(√2), x=3−√2 | two conjugates 3±√2 have product 7; Z-module norm cast to Q is the same 7 | Consistent with explicit hypotheses | Recorded in README or signature |
| General polynomial degree and zero denominator | f=T,t=1/2; f=(T+16)³,t=0 | degree-one quotient is 1 despite nonintegral t; total division at t=0 gives 0 but modular j has a pole | Consistent with explicit hypotheses | Recorded in README or signature |
| Nonbacktracking two-isogenies | T≠T′ versus T=T′ | cyclic kernel exponent 4 versus [2] kernel exponent 2; both have cardinality 4 | Consistent with explicit hypotheses | Recorded in README or signature |
| Kenku 169 correction boundary | 13 versus 169 | X₀(13) genus 0 permits noncuspidal rational points; claimed noncuspidal count at 169 is 0 | Consistent with explicit hypotheses | Recorded in README or signature |
| Source rank-zero negative control | E:y²+y=x³−x, point (0,0) | counts 5 and 7 imply torsion divides gcd(5,7)=1; nonzero (0,0) is nontorsion | Consistent with explicit hypotheses | Recorded in README or signature |
| Source divisor-degree correction | degree-p finite map, divisors of degrees 1 and 0 | pullback degrees p and 0; pushforward of a rational geometric point has degree 1 | Consistent with explicit hypotheses | Recorded in README or signature |
| Inseparability and zero module controls | characteristic p versus Q; zero quotient | supersingular geometric p-torsion has dimension 0, excluded by Q; quotient dimension 0 is excluded by winding nonzero requirement | Consistent with explicit hypotheses | Recorded in README or signature |
| Finite integer-j sets, all signed inputs | constants 4096,729,125,49,13 | signed input counts 26,14,8,6,4; distinct output counts 25,13,8,6,4 | Consistent with explicit hypotheses | Recorded in README or signature |
| Integral-j source prime range | p=11,r=13,q≡±1 | q≥21>13,3; q=23 has residue 1 and permits the same immersion argument | Consistent with explicit hypotheses | Recorded in README or signature |

The 772 small composite cases, 505 near-six cases, 11250 bounded-family tuples (10125 distinct levels), 2000 initial sharp-bound cases, both finite-field trace lists, their prime-factor unions and all five signed-divisor j sets were recomputed with exact integer/rational arithmetic. These local computations are scratch verification only. No executable procedure or large computational claim was added to the roadmap. The finite 10¹⁴ theorem and infinite all-p>37 image theorems retain their genuine mathematical proof obligations.

Every layer’s dependent route has named direct suppliers. The complex Sturm theorem is not used as a prime-power congruence theorem; positive-characteristic support descent is not inferred from a complex-only statement; finite rational groups of elliptic quotients are not assumed for higher-dimensional RM factors; and the primitive genus-zero polynomial data are not assumed to be modular coordinates until the actual map comparison target.

## Supplier gaps and support limits

Nine one-sentence supplier gaps replace the legacy design gap groups in the top-level gaps list and are reproduced verbatim in each named supplier subsection. Their owners are earlier in ORDER: optimized exact weight two, the ℓ≥11 local reduction alternative, mixed modular curves, Chen/integral winding comparison, split-Cartan height inputs, positive-characteristic support descent, all-embedding Frobenius, the five-level boundary calculation, and the modular rank-zero realization. The already stated ArithmeticGaloisRepresentations torsion/stable-line/Dickson package was not left as a spurious gap. A proposed Néron specialization gap was also deleted after directly verifying the stronger existing HeightsRationalPointsAndObstructions §§1.15b–1.18 theorem, including its q-primary range and strict bound.

The original nine narrative gap groups were reconciled in the sole editable top-level gaps value: class-number-one and full torsion specialization have exact earlier owners; ideal Sturm and quantitative isogeny bounds are targets here; source access and native elaboration are settled or explicitly delimited. The untouched design coverage/review fields remain historical evidence. The stale native-build prohibition in that evidence was not treated as an instruction. The package uses the binding build authorization and the supplied pins. The named supplier gaps, the actual original Kenku descents, the finite point-table proofs, the five-level boundary comparison and the all-prime residual-image proofs remain work for the future library, as the roadmap requires. None is represented by a sorry'd data object. Unread original Kenku proofs and journal-version collation are not certified; preprint/author-copy locators identify precisely the versions used.

## Elaboration and dependency checks

The required lake env lean invocation was run from the content checkout on the resolved package Suggested.lean path, one Lean process at a time. It succeeded with **14 warnings**, each exactly:

```text
warning: declaration uses `sorry`
```

There were **zero errors and no other messages**. All imported native object files were present; no targeted build was needed. The final scratch #check audit also succeeded with the same 14 admission warnings and the printed types of all 23 declarations. The 20 baseline #check calls succeeded without errors or warnings. No Lean process remains running.

The mechanical own-identifier check reports zero undeclared own backticked names, and all 23 native declaration names occur in the README. Every definition retains an API and at least three discriminating Checks. The citations resolver reports no missing roadmap citation and no missing Lean name. Its separate “no pinned Lake packages on this host” limitation was not treated as a library audit: the explicit pinned-source reads and Lean #check builds supply that evidence.

The dependency checker was run with the exact prescribed name, order and movable options. Its output was:

```text
depcheck: 47 roadmaps, 523 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line for this roadmap. Sources check reports zero problems. The source keys are unique and settled. The final path scan found no machine paths in any deliverable. The only package edits are the four roadmap files, the gaps value and this report.

