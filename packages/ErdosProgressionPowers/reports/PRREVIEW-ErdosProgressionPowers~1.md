# Review of ErdosProgressionPowers (pull request #1336 at 04fc7e0)

**Verdict:** needs changes

One P2 (the declared supplier gaps) and three P3 findings. The gate fails on one residue word, so the folder cannot be accepted at this head even though the mathematics checked out: every sampled locator, every supplier section and every library declaration resolved, the Lean file elaborates with `sorry` as the only warning, and no headline closes with one tactic.

## R01 (P2) — The two declared gaps are compound, and the zero gap asks for what ComputationalNumberTheory §4.24 already supplies

**Location.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:563–569` (“### Supplier gaps”): “`gap:numerical-prime-inputs`: supplier `AnalyticNumberTheoryPartI` §§0.3, 0.5, 0.16, 0.25 and 3.2; needs: proofs of the five prime/conductor input hypotheses in the table” and “`gap:numerical-zero-inputs`: … needs: proofs of both BMOR input hypotheses in the table”.

**Claim.** Each gap is a precise, minimal contract with one supplier section.

**Witness.** The first gap bundles five distinct finite-range inputs of five sections (`SchoenfeldFiniteRangeInput`, `RosserSchoenfeldFiniteRangeInput`, `ModEightFiniteInput`, `PrimeProductFiniteInput`, `QuadraticConductorFiniteInput`, README lines 516–522). The second asks AnalyticNumberTheoryPartI §0.7 to prove `BMORFiniteInput`, whose first clause (no real zero in (0,1) for primitive quadratic conductors 3≤q≤400000) is exactly ComputationalNumberTheory §4.24 at its head (`TauCetiRoadmap/ComputationalNumberTheory/README.md:2489`), which this README already consumes (lines 552–560 and 1286–1288: “ComputationalNumberTheory §4.24: no primitive nonprincipal real quadratic conductor 1<N<400000 has a zero in this same exceptional interval”). The brief lists no plan.json slug for either gap, and neither is written in the supplier subsection in the `What AnalyticNumberTheoryPartI must provide (gap:<slug>): <needs>` form.

**Repair.** In “### From TauCetiRoadmap.AnalyticNumberTheoryPartI”, replace the two bullets by one line per input, each in the form `What AnalyticNumberTheoryPartI must provide (gap:<slug>): <one sentence>`, for example `gap:schoenfeld-theta-finite-range` (θ(x)<1.000081x for 0<x<exp(10000)), `gap:rosser-schoenfeld-prime-count-finite-range`, `gap:mod-eight-theta-finite-range` (both theta errors for 10¹⁰≤x<exp(10000) and the height-10000 zero-line input for the characters modulo 8), `gap:prime-product-finite-range`, `gap:quadratic-conductor-largest-prime-finite-range` (0.94 log N<P(N) for 1<N<12000000000), and for §0.7 only `gap:bmor-regulator-input` (√d·L(1,χ_d)>12 for positive fundamental 400000≤d<26500000000) and `gap:bmor-class-number-input` (h(ℚ(√d))≥46 for negative fundamental d<−319867), adding the sentence that the real-zero exclusion for 3≤q≤400000 is consumed from ComputationalNumberTheory §4.24 and that §0.7 must expose that clause as a separable hypothesis. Point every `*Needs:*` line that now says `gap:numerical-prime-inputs` or `gap:numerical-zero-inputs` (lines 766, 792, 1291, 1324, 1337, 1347, 1552, 1570, 1640, 1741, 1955, 2042, 2096, 2163) at the slugs it uses. The slugs must also be registered in the package’s `plan.json` `gaps` list by the worker; the review itself edits no manifest.

## R02 (P3) — Process residue: “handoff” (gate `residue=1`)

**Location.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:1289`, “This handoff is used in §§3.2, 4.8 and 6.2”.

**Claim.** The README is timeless prose.

**Witness.** The worker’s gate reports `residue=1` on this line; the rule forbids “handoff”. No other residue word occurs (grep for the gate’s list returned only this line).

**Repair.** Write “This input is used in §§3.2, 4.8 and 6.2”.

## R03 (P3) — `*Needs:*` lines cite Layer-1 local targets that no longer exist

**Location.** `TauCetiRoadmap/ErdosProgressionPowers/README.md:1004` (“Layer 1, removed-prime norm bound — removed prime bound”), `:1028` (“Layer 1, Kraus threshold functions — kraus f; … kraus g; … kraus h; Layer 0, explicit totient and divisor bounds”), `:1040` (“Layer 1, Kraus realization”).

**Claim.** Each `*Needs:*` item names a target of this roadmap or a supplier section.

**Witness.** Layer 1 has subsections 1.1–1.13 only (lines 809–1055); none is a Kraus threshold function, a Kraus realization or a removed-prime norm bound. The README’s own contract table (lines 528–551) places these at EllipticCurveModularityPartII §2.2 (EC.1), §§1.5–1.8 (EC.2) and §4.7 (EC.3), which exist at that roadmap’s head (`TauCetiRoadmap/EllipticCurveModularityPartII/README.md:304, 218–290, 462`). The “explicit totient and divisor bounds” are §0.9’s Euler-product and divisor bounds.

**Repair.** In §1.9 write “EllipticCurveModularityPartII §2.2 (EC.1)”; in §1.11 write “EllipticCurveModularityPartII §§1.5–1.8 (EC.2); §0.9” for the threshold functions and the totient/divisor bounds; in §1.12 write “EllipticCurveModularityPartII §4.7 (EC.3)”. The same loose phrase “Layer 0, explicit totient and divisor bounds — eventual divisor subpower bound” at lines 1359 and 1684 becomes “§0.9”.

## R04 (P3) — Redundant conjunct and binders in `Suggested.lean`

**Location.** `TauCetiRoadmap/ErdosProgressionPowers/Suggested.lean:72–79` (`fixed_length_finiteness`), `:53–57` (`effective_prime_bound`, binder `0 < k`), `:81–84` (`consecutiveProduct_not_perfectPower`, binder `hy : 0 < y`).

**Claim.** The acceptance test states exactly the headline theorems.

**Witness.** The first conjunct of `fixed_length_finiteness` (positive tuples) is a subset of its second (signed tuples with `y*d ≠ 0`): on a scratch copy, `hfin.subset` with `positivity` for `y*d ≠ 0` proved the first from the second under the pinned Mathlib. In `effective_prime_bound`, `5 ≤ k0 ≤ k` already gives `0 < k`. In the Erdős–Selfridge statement, `y = 0` cannot satisfy the equation because the product of positive terms is positive, so `0 < y` is never used.

**Repair.** State `fixed_length_finiteness` with the signed set only (the README’s §6.5 keeps the positive statement as prose), and drop `0 < k` and `hy`. The README’s §6.2 and §7.1 sentences keep their hypotheses as written.

## Verified sound

**Gate and build.** Reran the dependency check: `depcheck: 204 roadmaps, 1477 edges, 0 problem(s)`; no UPWARD or CYCLE line. ErdosProgressionPowers is line 180 of the merge order, after EllipticCurveModularityPartII (179) and ComputationalNumberTheory (178); AnalyticNumberTheoryPartI is line 81 and EllipticLegendreCharacterInterfaces line 86. `lake env lean` on `Suggested.lean`: six `declaration uses 'sorry'` warnings, nothing else. The outside-folder diff is empty. The folder holds README.md, Suggested.lean and metadata.toml only.

**Lean signatures.** Elaborated `#check @term`, `@primitive_solution`, `@H` on a scratch copy: `ℤ → ℤ → ℕ → ℤ` and two `Prop`-valued predicates with every hypothesis in the declaration (there are no `variable` blocks). The nine elaborated types in the worker’s signature list agree with README §§0.1, 1.9, 6.2, 6.3, 6.5, 7.1 word for word (integer n,d,y, natural k,ell, prime ell in S, k≥10⁸ and ell>exp(10^k) in H, the three hyperbolic/positive ranges, k0≥5).

**One-tactic probes** (scratch copy): `half_primes_divide_d`, `effective_prime_bound`, `fixed_exponent_finiteness`, `positive_fixed_exponent_finiteness`, `consecutiveProduct_not_perfectPower` each left the goal open under `simp_all`/`omega`/`norm_num`/`decide`/`exact?`; none is padding. `H n d 2 y ell` is refuted by `norm_num` (README Check “H at k=0,1,2 is false”).

**Headline theorems.** README names six: §1.9, §6.2, §6.3 (two), §6.5, §7.1; all six are stated. §1.12 and §2.7 are declared not statable in the module docstring; confirmed: the pinned Tau Ceti `AlgebraicGeometry/EllipticCurve/` tree has no elliptic conductor or conductor exponent (grep for `def conductor`, `conductorExponent` returned nothing), so the deletion level M_a and Prop 6.1’s clause N_a^odd | M_a have no carrier.

**Sources opened** (line numbers are into the worker’s cached texts): BS20 Annals publisher PDF (printed pp. 355–392), BS20 arXiv 1709.01022v1 (numbering differs; not used for locators), DG95 author-hosted scan (printed pp. 513–543), ErdosSelfridge1975 (operator-local), Faltings1983 (GDZ OCR). Sampled targets, each checked for theorem number, printed page, hypotheses and that the source supports the statement:

| Target | Source passage | Result |
| --- | --- | --- |
| 0.2 gcd of terms | BS20 line 249–251, Lemma 3.1(i), p. 360 | matches: gcd(n+id,n+jd) divides j−i |
| 0.4 signed factorization | BS20 line 254–257, (6), p. 360 | matches; sign placement into z_i for odd ℓ is the README’s own convention |
| 0.7 index sets | BS20 line 1141–1155 (p. 381), 1468–1471 (Prop 12.3, p. 387) | matches: I_p, δ_p, θ_p |
| 1.3 first-family invariants | BS20 line 281–284, Lemma 3.2, p. 361 | README’s 16(abc)² is correct; the source prints 64(abc)² (Source issues) |
| 1.4 Fermat identity | BS20 line 263, p. 361 | matches |
| 1.5 second family | BS20 line 309–322, (11)–(13), p. 362 | matches: A−B=κd², model X(X²+2κdX+κA) |
| 1.6 second-family local tests | BS20 line 323–326 (Lemma 3.4, p. 362); 407–411 (p. 364) | matches; the quadruple (i,i+1,i+p−1,i+p) has κ=1−p |
| 1.10 bridge | BS20 line 235–239 (Thm 4, p. 360), 287–308 (Lemma 3.3), 423–443 (Lemma 5.1, p. 365) | the adapter is the README’s own theorem; inputs match |
| 1.13 good reduction, trace zero | BS20 line 447–465, Lemma 5.2, pp. 365–366 | matches, including Ẽ_a: Y²=X(X−n/g)(X+n/g) |
| 2.3 Case I projection | BS20 line 560–575 (Lemma 6.4, p. 368), 576–654 ((19)–(21), p. 369) | matches: ε=0.002811, (1−3ε)k/8 |
| 2.5 non-CM | BS20 line 773–789, p. 373 | matches: j=2⁸(a²−bc)³/(abc)², d | 3 |
| 4.3 maximal-valuation deletion | BS20 line 1293–1299, p. 384; ES75 line 164–183, Lemma 2 | matches |
| 5.2 exceptional moduli | BS20 line 1408–1416, (40)–(41), p. 386 | matches: T, Q=k⁴, β>1−3 log log k/log k, |t|≤T |
| 5.7 single witness | BS20 line 1489–1502, p. 388 | matches: N_a≤8A_iA_jA_h≤k⁴, gcd product ≥N_a/8 |
| 7.1 consecutive products | ES75 line 29–34 (Thms 1–2, p. 292); BS20 line 23–25 (Thm 1, p. 355) | matches |
| 6.1 Mordell | Faltings1983 line 682–683, Satz 7; page header “365” at line 676 | locator p. 365 confirmed |
| 6.3 Corollary 2.1 | DG95 line 325–367, pp. 520–521 | k≥3, m≥2, m+k≥6; (4,2),(3,3) by Euler; genus formula matches |

Further BS20 passages read against the README: Theorem 2 (line 107–109: y=0 or d=0 or ℓ≤exp(10^k)); Lemma 2.2 and (4) (line 195–207); Lemma 3.5 (line 331–343); Lemma 4.1 (line 395–415); Prop 6.1 (line 499–507: k≥2·10¹⁰, 0.1239k, N_a^odd | M_a, N_a^odd≠1); Lemmas 6.2–6.6 and Case II (line 526–789); Prop 7.1, Theorem 5, Prop 7.2, Lemma 7.3 (line 799–915: 1.07, 2.13, 373743, N=24); Theorem 6, Props 8.1–8.2, Theorem 7 and the large-sieve step (line 923–1118); Prop 9.1 and proof (line 1162–1334: 0.6k/log k, log(16/7), 0.9968, 0.0032, 0.00319, k^0.44k, k^139, 0.00001k, 2⁸(k^139)³<k^418); §10 (line 1336–1377: 17 log k, 0.0017, 0.1683); §11 (39); §12 (line 1396–1502).

**Supplier citations resolved** (every cross-roadmap citation, at main `fa41b37` or the open head the brief gives): NeronModelsAndSemistableAbelianVarieties §5.3g/§5.3h (`README.md:3472, 3496`: f₂≤8, f₃≤5, residual deletion formula for ℓ≥5, not semisimplified); EllipticCurveModularity R29.3 “The newform of an elliptic curve” (`:1197`), R29.4 “The level is the conductor” (`:1340`), R29.6 (`:1605`); SerreWeightAndLevelOptimisation §§6.1–6.3 (`:1368, 1400, 1418`; §6.1 includes q=ℓ in the deletion product, §6.3 excludes q=ℓ, as the README says); AutomorphicGaloisRepresentations §1.5 (`:1135`); WeightsInEtaleCohomology R34.5–R34.6 and `newform_ramanujan` (`Suggested.lean:56`, bound 2p^((k−1)/2) at every ℚ-embedding of the coefficient field, p∤N); HeightsRationalPointsAndObstructions §§5.12, 6.4 and `mordell_finite` (`README.md:2587, 2929`; `Suggested.lean:80`: smooth proper geometrically connected scheme over Spec K, `2 ≤ C.genus K`, finite-dimensional H¹ instance, morphisms over Spec K); MordellLawrenceVenkatesh §11.6 (`:3008`, proves that same declaration); ArithmeticGaloisRepresentations §1.9 (`:1149`, reduction/residualSS/residual), §§3.1–3.3 (`:2498, 2583, 2652`; `Conductor.artinConductor`, `artinConductorNat`, `primeToPConductor` are that README’s intended signatures, not declarations of its Suggested.lean, which is why the worker’s resolve tool listed them); EtaleCohomologyFoundations §F.4.0 (`:850`; `ContinuousRep` at `Suggested.lean:187`, `exists_stable_lattice_iff` at `:275`); AnalyticNumberTheoryPartI §§0.1, 0.3–0.8, 0.16–0.20, 0.24–0.25 (`:180–549`), 1.4 with 1.4a–1.4d (`:772–812`), 1.7 (`:858`), 3.1–3.2 (`:1787, 1811`), and the seven named inputs with the exact ranges the README’s table repeats; EllipticLegendreCharacterInterfaces §§0.1–0.6, 0.8–0.10, 1.2, 1.4–1.5, 2.1, 2.3, 2.5–2.8, 3.1, 3.7, 4.1, 5.1–5.2 (headings at `README.md:65–630`; §4.1’s point (2λ+4itv, 8itv(t+iv)) and §5.2’s twist identity match the README; its §0.2 names the twisting discriminant d at parameters (0,−d/4)); EllipticCurveModularityPartII §1.4 (12g⁺≤N+1), §1.8 (F_K, G_K, H_K), §2.2 (ℓ≤(√p+1)^((M₀+1)/6), p≠ℓ), §4.7 (Kraus realization with ℓ≥5, Serre weight two, prime-to-ℓ conductor N, ℓ>H♯(N)), §§5.4–5.5 (ℓ≥5 full two-torsion, ℓ≥11 rational two-point), §6.18 (Lemos, p>37) at `README.md:210, 273, 304, 462, 592, 600, 1008`; ComputationalNumberTheory §§4.22–4.24 (`:2472–2489`); ClassicalArithmeticCompletion §1.51 (`:1789`, odd part 1 iff u∈{±1,±2}·(ℚˣ)²) and §4.41 (`:8840`, T⁴+V⁴=2U² ⇒ T=V=U=1); ImaginaryQuadraticClassNumber H3.1 (`:83`); AlgebraicCurves Layer 7 (`:783`, Hurwitz) and Layer 12E (`:335, 1468`); EllipticCurves Layers 2–6, 8 (`:647–1374`), its Frey–Hellegouarch worked example with `freyCurve A B` = (0, B−A, 0, −AB, 0) (`Suggested.lean:1164`) and the “semistable case of the algorithmic–Artin comparison” milestone of Layer 8 (`README.md:1465`); ModularForms Layers 2–4, 8, 10 (`:383–1024`); ModularCurves §4C (`:1100`); Completed/LocalFieldsRamification Layers 3–4 (`:724, 1154`).

**Pinned library declarations opened** (Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`): `Int.gcd_def` (`Data/Int/GCD.lean:159`), `Int.gcd_greatest` (`:223`), `Int.dvd_of_dvd_mul_left_of_gcd_one` (`:231`), `padicValInt.mul` (`NumberTheory/Padics/PadicVal/Basic.lean:420`, hypotheses a≠0, b≠0), `Nat.prod_factorization_pow_eq_self`, `WeierstrassCurve.c₄` (`Weierstrass.lean:120`), `.j` (`:388`), `Affine.Equation` (`Affine/Basic.lean:149`), `DirichletCharacter.conductor`/`IsPrimitive` (`DirichletCharacter/Basic.lean:245, 291`), `MulChar.IsQuadratic` (`:442`), `ringHomComp` (`:454`), `IsQuadratic.comp` (`:514`), `ZMod.LFunction_apply_zero_of_even` (`LSeries/ZMod.lean:271`), `DirichletCharacter.LFunction_ne_zero_of_one_le_re` (`Nonvanishing.lean:397`, hypothesis `χ ≠ 1 ∨ s ≠ 1`), `ArithmeticFunction.vonMangoldt`, `Nat.maxPrimeFac` (`getLastD n`, so values 0 and 1 at 0 and 1 as the Conventions say), `Chebyshev.theta`/`psi`, `roth_3ap_theorem_nat` (`Corner/Roth.lean:163`, with `cornersTheoremBound`), `Stirling.stirlingSeq`, `log_stirlingSeq_sdiff_le` (`Stirling.lean:126`: exactly 1/(12n(n+1))), `tendsto_stirlingSeq_sqrt_pi` (`:239`), `le_factorial_stirling` (`:276`); no upper factorial bound with exp(1/(12m)) exists at the pin, so §4.4 is not a duplicate; `Nat.exists_prime_lt_and_le_two_mul` (`Bertrand.lean:222`), `SimpleGraph.completeBipartiteGraph`, `Nat.factorial_le_pow`, `padicValNat_def`, `Real.log_two_gt_d9`/`lt_d9`. Tau Ceti: `WeierstrassCurve.pointCount_def`, `frobeniusTrace_eq_card_point` (`PointCount.lean:80, 115`), `Affine.μ`, `exists_eq_two_smul_iff`, `ker_μ_eq` (`MordellWeil/XSubT.lean:794` and docstring), `CongruenceSubgroup.Gamma0_prime_index` (`:547`, index p+1) and `Gamma0_prime_power_index` (`:631`), `TauCeti.Multiquadratic.fundamentalDiscriminantChar` and its three lemmas (`FundamentalDiscriminant/Character.lean:34, 68, 87, 95`), `DirichletCharacter.conductor_ringHomComp`/`isPrimitive_ringHomComp_iff` (`DirichletCharacter/Conductor.lean:50, 58`), `WeierstrassCurve.quadraticTwistOf` (`QuadraticTwist/Basic.lean:169`), `Δ_quadraticTwistOf`, `quadraticTwistPointEquiv_map_eq_quadraticCharacter_smul_map`, `TauCeti.LocalFieldsRamification.lowerRamificationGroup` (`RamificationGroup.lean:97`), `lowerRamificationGroup_zero` (`:127`), `_antitone` (`:132`), `_eq_bot_of_largestLowerJump_lt` (`:229`). Mathlib has Bessel’s inequality only for orthonormal families (`Orthonormal.sum_inner_products_le`); the Gram inequality of §3.1 is not at the pin.

**Ownership against open pull requests** (`roadmaps grep` over 437 open heads and main): no other roadmap states Erdős–Selfridge, Bennett–Siksek Theorem 2, Darmon–Granville Corollary 2.1, a quantitative Roth bound, Graham–Ringrose smooth-modulus character sums, the Gram/large-sieve inequality or the explicit Stirling upper bound. Consumers found: SieveMethodsAndPrimePatterns §3.1 (Gram inequality), PolynomialGaloisGroupsPartII and ArithmeticDynamicsPartII (§0.9 prime estimates), EllipticCurveModularityPartII (names this roadmap as the consumer of EC.0–EC.5), EllipticLegendreCharacterInterfaces (names §2.1 as its consumer). ClassicalArithmeticCompletion §§1.51 and 4.41 cite BS20 for the squareclass character and the quartic descent and are cited here, not restated.

**Adversarial pass** (values computed on each side; rows for the sampled targets, the headlines and every target a finding touches):

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 S, H | (1,24,3,35,2); (−3,2,4,3,2); (4,2,1,2,2); k=0,1,2 | 1·25·49=1225=35²; (−3)(−1)(1)(3)=9=3²; gcd(4,2)=2≠1; 10⁸≤2 false | all Checks hold; H refuted at k=2 by `norm_num` | none |
| §0.2 gcd of terms | n=1,d=2,(i,j)=(1,4) | gcd(3,9)=3 divides 3 | holds | none |
| §0.3 valuation divisibility | q=k=2, S(8,19,2,6,3) | v₂(8)=3, v₂(27)=0; 3 divides 3 | holds; q=k lies on the large side | none |
| §0.4 signed factorization | S(8,19,2,6,3); S(−8,7,2,2,3); n=64,d=0,k=3,ℓ=3 | (1,2),(1,3); (1,−2),(1,−1); (64,1)³ with 64 retaining 2⁶ | Checks hold; the model (1,4) is excluded by “primes of |z| ≥k” | none |
| §0.5 A(k) | k=0,1,2,3,5 | ∅,∅,∅,{(0,1,2)}, four triples (0,1,2),(1,2,3),(2,3,4),(0,2,4) | holds | none |
| §0.6 I(k), κ | (0,1,1,2),(0,1,2,3),(1,2,2,3),(0,1,1,3) | κ=−1,−2,−1; sums 3≠2 so excluded; A−B=κd² at n=d=1: 3−4=−1 | holds; κ<0 since equal-sum products are larger when closer | none |
| §0.7 I_r | n=1,d=2,k=6,r=3; n=1,d=1,k=3,r=4; k=0 | {1,4}; ∅; ∅ | holds | none |
| §0.8 count | n=1,d=2,k=6,p=3 | |I₃|=2, k/p=2, |2−2|<1 | holds | none |
| §0.9 factorial lower bound | a=k^(7/16) | (k−1)[(9/16)log k−1/(2log k)−8/(7log k)]−1.000081k vs (9/16)k log k−5k | holds for k≥exp(exp(10⁷)); 1/(2 log a)=8/(7 log k) | none |
| §0.9 Checks | x=2,4; n=4; k=2·10¹⁰ | θ(2)=log2, ψ(4)=2log2+log3; τ(4)=3; k/2=10¹⁰ included | hold | none |
| §1.1 M₀ and traces | 11a1 (M=11, v₁₁Δ=5) at ℓ=5,3; M=33, v₃=6, v₁₁=2, ℓ=3; p=7, ℓ=5 | 1 and 11; 11 (33 if ℓ excluded); 8≡3, −8≡2 mod 5 | hold | none |
| §1.1 Kraus majorants | N=0,1,4,11 | μ=0,1,6,12; μ(44)=72; F_K(1)=1,G_K(1)=4; F_K(11)=9, G_K(11)=169, H_K=169 | hold | none |
| §1.2 normalization | (n,d)=(1,1),(2,1),(−3,2) at (0,1,2) | g=1,2,1; (a,b,c)=(1,−4,3),(1,−3,2),(−3,2,1); a₂=2,1,4; a₄=−3,−2,3 | hold; a+b+c=0 each time | none |
| §1.3 invariants | a=1,c=3 (n=d=1) | Mathlib Δ=−b₂²b₈−8b₄³=576+1728=2304=16·(1·4·3)²=64·1·4·9 | 16(abc)² correct; source’s 64(abc)² is a misprint | none (Source issues) |
| §1.5–1.6 second family | n=d=1, q=(0,1,1,2); p-branch (i,i+1,i+p−1,i+p) | a₂=−2, a₄=−3; Δ=16a₄²(a₂²−4a₄)=−64κ³A²B; κ=i(i+p)−(i+1)(i+p−1)=1−p | hold; p∤κ, c₄≡64κ²d² mod p a unit | none |
| §1.7–1.8 level bounds | k with θ(k)<1.000081k | M_a | 2⁷∏_{q≤k}q ≤ 2⁷e^{1.000081k}; M_q ≤ 2⁷3⁵k⁴e^{2.000162k} | match BS20 Lemmas 3.3, 3.5 | none |
| §1.9 `half_primes_divide_d` | k/2<p≤k, p∤d | ⌊k/p⌋∈{1,2} terms divisible; EC.1 gives log ℓ ≤ (M+1)/6·log(√k+1) < 10^k | holds under H | none |
| §1.10 bridge | ℓ>exp(10^k) vs M_a≤2⁷e^{1.000081k} | M_a<ℓ so ℓ∤M_a; if ℓ|t_i then ℓ|y_i so ℓ|v_ℓ(Δ) (finite flat) | holds | none |
| §1.11 Kraus threshold | k≥10⁸ | log H_K ≤ ((M_a+1)/6)(1.000081k+8log2+log log k) ≪ e^{1.000081k}k < 10^k | holds | none |
| §1.13 trace comparison | p≡3 mod 4, p|d | reduction Y²=X(X−a)(X+a); |a_p(E)−a_p(F)|≤4√k<ℓ | holds | none |
| §2.1 Legendre Checks | 𝔽₅, λ=4; 𝔽₅, λ=−1; 𝔽₃, λ=−1; 𝔽₇, λ=2; 𝔽₃, λ=2; λ=1/2 | #F_λ=8 (trace −2), #F′_λ=4 (trace 2), rhs at x=1,4 are 2,3; 8; 4; 8; 4; Δ(F)=1, Δ(F′)=64 | all hold | none |
| §2.1 order-four witness | t=v=1/2, λ=1/2 | P=(1+i,−1+i); y²=−2i=(1+i)(−1+i)(i) | holds; source’s printed y equals y² | none (Source issues) |
| §2.1 non-scale-two example | D=3, λ=−1 | root differences ±3,±6; 2u²=3 or 6 has no rational u | holds | none |
| §2.2 partition | L_a={3},{−1},{2}; 0; k=0 | 3∉−ℚ²∪2ℚ²; −1=−1²; 2=2·1²; 0 in both; ∅,∅ | holds | none |
| §2.3 mod-8 projection | p≡1,3,5,7 mod 8 | (−1/p),(2/p) = (1,1),(−1,−1),(1,−1),(−1,1); μ₁−μ₂−μ₃+μ₄ = 0,4(λ/p),0,0 | holds; (1−3ε)/8=0.123945875 | none |
| §2.4 two-primary counts | p≡5 mod 8 | 8∥p+1−a ⇒ a≡6 mod 8 ⇒ 4∥p+1+a; 𝔽₅: counts 8 and 4 | holds | none |
| §2.5 non-CM | a,b,c=±2^e, a+b+c=0 | two equal; a=b ⇒ 3n=−(i+2j)d ⇒ d|3; half-interval prime >3 divides d | holds | none |
| §2.7 margin | k≥2·10¹⁰ | 0.123945875k−0.000045875k=0.1239k exactly; strict from the strict tail | holds as stated with a strict tail | none |
| §3.1 conductor Checks | N=4,8,24,16 | P=2,2,3; 0.94 log 24=2.987<3; 16 not a quadratic conductor | hold | none |
| §3.2 exceptional chain | 0.166 ≤ Σ1/P(N_j) | 1/0.94=1.0638<1.07; 2/0.94=2.1277<2.13; e^{2.13/0.166}=373743.6 | holds | none |
| §3.3 Gram mean | |B|>17 log k | (k log k/2)(k+1)/(34 log k)=k²/68+o(k²); 1/68=0.014706<0.1239²=0.015351 | holds; the row sum is averaged over B, so off-diagonal max suffices | none |
| §4.1 Roth cutoff | δ=10⁻⁵ | 132·log 2·10⁵=9.15·10⁶, between 10⁶ and 10⁷ | README’s 10⁷ is right; BS20 (37) prints 10⁶ | none (Source issues) |
| §4.2 prime sets | k=1,2,16; U_pr(0),(1),(2) | T_pr(2)={2} (2^{7/16}=1.35), T_pr(16)={5,7,11,13} (16^{7/16}=3.36); U_pr(2)∋2 (0.693<2≤6931) | hold | none |
| §4.3 deletion | A=(1,2,3,4,1),k=5; A=(1,2,1,2),k=4; J=∅; {3} with A=0 | J₁={0,1,4}, product 2 | 24; index 1 removed; ∅; 3 | hold; v_p(A_i)≤v_p(i−j) since p∤d | none |
| §4.5 densities | log(16/7)=0.82668 | 1−0.82668−0.17=0.00332>0.0032; 0.00319−0.44/139=0.0000025·… >10⁻⁵ | hold | none |
| §4.6 witness | k | 2⁸k^{417}<k^{418} iff k>256; thin-set Checks at k=9,6 | hold | none |
| §4.7–4.8 endgame | |B|≤17 log k | complementary mass ≤17·10⁻⁴=0.0017; 0.17−0.0017=0.1683>0.166; (log k)^{1−10⁻⁴}<(log k)^{1−1/20000} | hold | none |
| §5.1–5.2 Q(k,c) | k=0,1,16; c=0; χ₅ | T(0,c)=T(1,c)=T(k,0)=1 (log 0=0); 1−3 log log 16/log 16=−0.1034<0=Re 0; L(0,χ₅)=−χ₅(0)/2=0 | 5∈Q(16,0); witness excludes (1,1) | none |
| §5.3 bounds | T=k^{c/(3 log log k)} | (Q^{5+ε}T^{3+ε})^{1−σ} at σ=1−3log log k/log k gives (log k)^{12+…}·k^{… }→≪(log k)^{61} with Q=k⁴ | matches BS20 Prop 12.1 | none |
| §5.5 Bad | {1000},n=1000,d=1,k=3; {8},n=d=1,k=4 | r=1000≥5; 8^{1/3}/2=1 so r=1 qualifies | hold | none |
| §5.7–5.8 witness | k≥64 | 8·64^{7/2}=8·2^{21}=2^{24}=64⁴; blocks ≥k/3−o(k)>2k/7; ∏gcd ≥N^{odd}≥N/8 | hold | none |
| §6.3 genus | (k,ℓ)=(3,4),(4,3),(4,2),(3,3),(5,2) | 2g−2=kℓ^{k−1}(1−2/k−1/ℓ)=4,18,0,0,8 ⇒ g=3,10,1,1,5 | matches DG95 and Hurwitz: ℓ^{k−2}[(k−2)(ℓ−1)−2] | none |
| §6.3 ranges | k≥3,ℓ≥2,k+ℓ≥6 | exhaustive search k,ℓ<40: every pair is hyperbolic except (4,2),(3,3) | split is complete | none |
| §6.3 signed boundary | (−3,−1,1,3) | product 9=3², gcd(3,2)=1, genus 1 | signed (4,2) rightly excluded | none |
| §6.4–6.5 reduction | k≥5, p|ℓ | 2p+k<kp for p=2 needs k≥5, for p≥3 needs k≥4; |y|=1 impossible with three distinct terms | `fixed_length_finiteness` needs k0≥5 as stated | none |
| §6.5 Lean conjuncts | any k | positive set ⊆ signed set (`Set.Finite.subset` compiled) | redundancy | R04 |
| §7.1 ES Lemma 1 Checks | m=28,k=3,ℓ=3; m=1,k=7,ℓ=3 | products 841,870,899,900,930,961 pairwise ratios not cubes; 2·6=3·4 | hold | none |
| §7.1 smooth covers | ≤36 on {2,3,5,7}; ≤100 on {2,3,5,7,11} | 25 and 55 (enumerated) | hold | none |
| §7.1 finite ranges | k=1000, q=(19,23,29,31); k=29999, 31 primes 29..173 | F≥255, 255·254=64770>3⁷·21=45927; F≥4853, 4853·4852=23546756>3⁹·993=19545219 | hold (computed from Σ(⌊k/p⌋+1) over √k<p<k and Σ(⌊k/(q_iq_j)⌋+1)) | none |
| §7.1 k=4 square | m=0,1 | (m²+5m+5)²−1=24,120 | holds | none |
| §7.1 Theorem 2 domain | m=0,k=3; m=0,k=4 | v₃(6)=1; v₃(24)=1 but 3<4 and m+k=4<5 | Check correct | none |
| §7.2–7.3 predicates | (1,24,3,35,2); b=2,τ | ErdosThreshold(0),(3) false; support {2}≤2τ iff τ≥1 | hold | none |
| `effective_prime_bound` | binders | 5≤k0≤k ⇒ 0<k | redundant binder | R04 |
| `consecutiveProduct_not_perfectPower` | y=0 | 0^ℓ=0 < ∏(n+i) | `hy` unused | R04 |
| gaps | `BMORFiniteInput` clause 1 vs CNT §4.24 | identical statements (3≤q≤400000, real 0<s<1) | over-ask | R01 |

## Not verifiable

- IwaniecKowalski2004 (Theorems 5.26–5.28, 12.13, Prop. 5.25), RosserSchoenfeld1962 (Theorems 1, 5, 6), Tenenbaum1995 (Theorems 5, 9), RahmanRoth: waived in the manifest; cited by locator only. The constants attributed to them were checked against BS20’s quotations (lines 428–438, 1221–1236, 1316–1323, 1139–1140).
- Kraus1997 (Théorème 4, p. 1144), Lemos2017v2 (Theorem 1.1), Martin2003v1 (Theorem 2), Mazur1978, BMOR2018v3 (Prop. 1.11), Schoenfeld1976, RamareRumely1996, Bombieri1987, Platt2013v1: not opened in this review; each enters only through a supplier section whose statement was checked (EllipticCurveModularityPartII §§1.4, 2.2, 4.7, 5.4–5.5, 6.18; AnalyticNumberTheoryPartI §§0.3, 0.5, 0.7, 0.16, 1.7; ComputationalNumberTheory §4.24).
- The board manifest `sources.toml` records neither BS20 nor DG95 (six entries only); both were fetched for this review from the Annals publisher PDF and the author-hosted scan.
- Ownership against open pull requests whose files the brief does not list was not checked beyond `roadmaps grep`.

## Source issues

- **Misprint** in BS20 at Lemma 3.2, printed p. 361: the source gives the discriminant of E_a as 64(a_a b_a c_a)² = 2⁸g⁻⁶(n+id)²(n+jd)²(n+(2j−i)d)²; it should be 16(a_a b_a c_a)² = 2⁶g⁻⁶(…)², the discriminant of Y²=X(X−a)(X+c) (the README states the correct value); affects nothing.
- **Misprint** in BS20 at proof of Lemma 6.6, printed p. 371: the second coordinate printed for the order-four point P on F′_λ equals the square of its y-coordinate (at t=v=1/2 it is −2i while the point is (1+i,−1+i)); it should be a square root such as 8itv(t+iv); affects nothing.
- **Error** in BS20 at Proposition 9.1, (37), printed p. 381, and its proof, p. 384: the source asserts K₀(10⁻⁵)<exp(exp(10⁶)) from (36), but (36) gives K₀(10⁻⁵)=exp(exp(9.15·10⁶)); the hypothesis (37) should read k≥exp(exp(10⁷)); affects a stated result (the threshold of Proposition 9.1, hence the effective constant of Theorem 2; the README uses 10⁷).
- **Misprint** in BS20 at §10, condition (iii), printed p. 384: the forbidden prime range is printed as the closed interval while Proposition 9.1(III), which supplies it, has an open left endpoint; the endpoint cannot be a prime, so the meaning is clear; affects nothing.
- **Misprint** in DG95 at equation (2.2), printed p. 520: with terms a+id for 1≤i≤k, the eliminated relation needs coefficients j−1 and j−2 on λ₂z₂^m and λ₁z₁^m; the printed coefficients (j and j−1, as far as the scan can be read) produce the term a+(j+1)d; affects nothing (the genus argument is unchanged).
