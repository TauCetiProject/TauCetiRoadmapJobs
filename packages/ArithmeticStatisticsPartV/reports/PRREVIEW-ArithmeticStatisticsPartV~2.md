# Review of ArithmeticStatisticsPartV (pull request #1175 at 232ade3)

**Verdict:** needs changes

## R01 (P1) — Assign the finite-simple-group prerequisite an owner

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:60`, `:1893`; `TauCetiRoadmap/ArithmeticStatisticsPartV/Suggested.lean:317`. Passage: “No named supplier in this roadmap supplies that proof.”

Claim: the unconditional three-eighths headline still requires an unowned theorem: every finite nonabelian simple S has a proper H with |H|²>|S|. Naming this an unsupplied contract does not meet the declared-gap mechanism: there is no named supplier or matching plan entry. The separate theorem assuming the subgroup property does not supply the unconditional theorem.

Witness: at the Tau Ceti pin, `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:54` defines a proposition; line 67 assumes its universe-zero instance. Neither proves classification or the subgroup inequality. A₅/A₄ gives 144>60; C₂ gives only 1<2.

Repair: own the nonabelian finite-simple-group theorem with its proof inputs, or declare a precise gap assigned to an earlier supplier in both the plan and supplier contracts. Retain the unconditional endpoint only with that owned contract. Test the resulting contract on A₅ with H=A₄ and exclude cyclic simple groups. This is previous R01, not repaired; no repair report marking it non-actionable was supplied.

## R02 (P1) — Replace the nonexistent pinned translation supplier

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:38`, `:2338`. Passage: “The trace-slice argument consumes `Polynomial.discr_comp_X_add_C` in `TauCeti.RingTheory.Polynomial.Resultant.RootCoordinates`”.

Claim: neither the declaration nor the module exists at the specified pin. The new tail proof and its prime-square fibre comparison rely on this identity, so this is supplier drift, not merely an incorrect link. The signature build does not test README-only imports.

Witness: Tau Ceti HEAD equals manifest revision a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Its resultant directory has Basic, Discriminant, Normalization and AdjoinRoot, but no RootCoordinates; searches of both pinned libraries find no `discr_comp_X_add_C`.

Repair: remove the claim of a pinned declaration and make translation invariance an owned supporting target, or cite an actual earlier owner supplying the required statement. State the native-discriminant identity for monic polynomials over commutative rings, including repeated roots and reduction modulo p², with a root-difference/universal-coefficient proof route. Add it to this subsection's Needs. Test X²−9 and its translate X²+2X−8: both discriminants are 36, hence both are 0 modulo 4 and 9. For X² and (X+1)² both discriminants are zero. The repaired slice-tail argument otherwise has the correct loss of one height power.

## R03 (P2) — Import the two supporting estimates already owned earlier

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:330`–340 and `:1264`. Passages: “Squarefree integers in residue classes modulo four”; “This curve estimate … is an owned supporting result here.”

Claim: Part V replans the proof of the modulo-four squarefree count and claims ownership of the uniform Bombieri–Pila curve bound. Part I §0.6 already owns the general squarefree residue theorem and noncoprime-class reduction. Part III §2.13 already owns the coefficient-uniform rectangular plane-curve estimate, whose equal-side specialization is the requested bound.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:1167` supplies the residue count. `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1540` supplies the rectangular estimate. At q=4 its density is 2/π²; at P₁=P₂=B and degree n, T=Bⁿ gives B^(1/n+ε).

Repair: delete the duplicated proof targets and cite those exact owners in the supplier contracts and consuming Needs lines. Keep the specializations as Checks. For a=2, n=2m reduces to odd squarefree m≤X/2, giving (4/π²)(X/2)=2X/π². The plane curve y²=±Nm(β−x) has degree n≥3, so the equal-side specialization retains the coefficient-independent constant and includes the original square-norm application.

## R04 (P2) — State the quantified short-character-sum hypothesis

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:2093`, `:2114`, `:2663`. Passage: “Assume `C_(|S|n)` with saving `δ>0`.”

Claim: the conditional spin and governing-field endpoints never define C_n. The support paragraph sends the reader to a source for its ranges and constants. Consequently the roadmap does not specify the quantifier order, character class, interval range, or the relation between δ and the hypothesis that produces its displayed saving.

Witness: ref103 lines 340–345, Conjecture C_n, p.7, quantifies δ(n) before ε and the uniform constant, then all M,Q,N and real nonprincipal characters of modulus q≤Q with N≤Q^(1/n).

Repair: define C_n in the README in those explicit terms: for n≥3, some δ(n)>0 works for every ε>0 with a constant C(n,ε), uniformly over integers Q≥3, M and 1≤N≤Q^(1/n), and real nonprincipal χ modulo q≤Q, bounding the interval sum by C(n,ε)Q^((1−δ(n))/n+ε). Bind the spin theorem's δ to that witness and retain the all-n hypothesis for the governing-field contradiction. Check the nonprincipal character modulo 3 on intervals of length 1 and 3, with sums 1 and 0. A principal character has sum 2N/3+O(1), which violates a positive saving for N≈Q^(1/n) and ε<δ/n.

## R05 (P2) — Distinguish the S-integral algebra dictionary from its field locus

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:708`. Passage: “separable degree-`n` extensions correspond to the disjoint union of `Γ_β`-orbits of `S`-maximal elements”.

Claim: S-maximality alone does not impose that the associated étale algebra is a field. The wording uses extensions in a field-counting roadmap but places the whole S-maximal locus on the other side. The cited source's general dictionary is for étale algebras; its generic restriction imposes a field and full S_n normal closure separately.

Witness: F=ℚ, n=2, S={∞,2}, β=1, v=4 gives ℚ[t]/(t²−1)=ℚ×ℚ. Its ℤ[1/2]-order is maximal, its stabilizer has order 2, and it is not a quadratic field. See ref20 lines 546–554 and 654–656.

Repair: state the full equivalence for separable étale degree-n F-algebras, then explicitly restrict to field-valued orbits for field extensions and to the generic S_n locus for subsequent S_n counts. This preserves the general dictionary. The split v=4 example stays in the algebra equivalence and leaves the field locus; v=8 gives ℚ(√2) and remains in the field locus. Do not discard split local algebras from the local mass factors.

## R06 (P3) — Finish repairing the Part II fragment links

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:66` and repeated Part II links, including `:2450`. Passage: “ArithmeticStatisticsPartII: delone faddeev parametrization of cubic rings”.

Claim: ten distinct Part II fragment identifiers still point to former target headings. The targets are now bold paragraphs under numbered section headings, which do not generate those fragments. This is partial repair of previous R08; the earlier Part I/III/IV and analytic links now resolve.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:163` contains the bold Delone–Faddeev target under §1.1, not a `#delone-faddeev-parametrization-of-cubic-rings` heading. The same issue affects maximality, quartic/quintic dictionaries and binary density formulas.

Repair: link cubic dictionary/irreducibility to `#11-binary-cubics-and-cubic-algebras`, cubic maximality to `#12-cubic-maximality-and-index-p-switching`, quartic targets to `#13-quartic-rings-and-cubic-resolvents`, binary densities to `#19-coefficient-boxes-and-local-discriminants`, and quintic dictionary/maximality to `#110-integral-quintic-multiplication-and-sextic-resolvents`. Keep each target name in the link text. These destinations were checked at the supplied open head; the mathematical contracts do not change.

## R07 (P3) — Give the S-integral carrier definitions discriminating Checks

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:708`–718. Passage: “Here `L_β=V_n(F)∩β^{-1}(…)` and `Γ_β` is the analogous conjugated integral subgroup.”

Claim: the two new carriers have only one shared Check, about the degree-two squareclass action. It does not test lattice membership, the integral stabilizing group, or dependence on S. Each definition needs at least three discriminating Checks.

Witness: the sole bullet at line 718 tests v and g²v. For the cubic β=1 component over ℚ, S={∞} gives L₁=ℤ⁴ and Γ₁=GL₂(ℤ); adding 2 changes these to ℤ[1/2]⁴ and GL₂(ℤ[1/2]).

Repair: add separate membership/action Checks for each carrier. Test the zero vector and identity; exclude a coefficient 1/2 and diag(2,1) at S={∞}; include both after adding 2. Retain the algebra/field controls in R05. These distinguish the chosen integral structure from V(F) and G(F). Keep these tests in the README, without adding Lean padding.

## Verified sound

This review read the whole README and Lean file at 232ade3, reconciled all nine earlier findings, and addressed all 15 seeded sections. No locator was explicitly marked unverified. The PR diff outside this folder is empty and the worktree remains unchanged. No sorry-backed data, set_option, forbidden import, copied source passage, executable algorithm, or route-specific good-prime restriction was identified. The narrow real Gram-metric extension differs from IntegralLattices' integral Gram theory; it is not a replan of that supplier.

### Previous findings, one by one

| Previous finding | Current passage and assessment |
| --- | --- |
| R01 finite-group input | “No named supplier … supplies that proof” (README:60): **not repaired**, current R01. |
| R02 quasi-reduction | “this predicate may be false” (README:2228,2230): **repaired**. The X²+1/4 counterexample is now explicit; general GL_n reduction is separate. |
| R03 trace-slice tail | “The trace-slice square-divisor tail is an owned target” (README:2334): **partly repaired**. The translate-and-divide estimate and local averaging are supplied; the new pinned translation citation fails, current R02. |
| R04 small degrees | “For every n≥2, the flexible mixed-trace bound” (README:1837): **repaired**. Lean:280 includes n=2,…,5; the Jacobian theorem retains n≥6. |
| R05 gate/duplicate targets | Gate residue=0 and the conductor tail now invokes the earlier bound: **the cited gate defects are repaired**. The independent cross-owner duplication is current R03. |
| R06 reciprocal sum | `Σ_(r) 1/r` in the fixed-prime-factor argument: **repaired**; round-labels=0. |
| R07 names/Checks/docstring | Prose local-specification API, separate T,U,V Checks, and “target signatures”: **the identified defects are repaired**. Current R07 concerns different definitions. |
| R08 supplier fragments | Part III §2.11 and Part IV §3.1 links now resolve: **partly repaired**, with Part II fragments remaining in current R06. |
| R09 subgroup inversion locator | “Lemma2.2 … manuscript p.11 (PDF p.13)” (README:1148): **repaired**, checked against ref141 lines 505–522. |

### Gate, elaboration, signatures and padding

The worker's gate on this head reports all checks zero and `build=0 OK`; no failing check is suppressed. Independently built `TauCeti.NumberTheory.BinaryQuadraticForm.Reduction`, then ran `lake env lean` on the requested Suggested file: exit 0, only 40 sorry warnings. A scratch copy with `#check @name` for every declaration elaborated all **40 theorems and seven definitions**. The explicit base-field, degree, finite-dimensionality, signature, prime and occurrence binders agree with the README; no silently dropped standing hypothesis was detected. Nothing was changed.

The one-tactic probe replaced every admitted proof with `simp`: **zero** theorems closed; 39 produced unsolved/no-progress goals, and relative-wreath simplification hit the default heartbeat limit. The original relative-wreath statement elaborates. Reading its norm-kernel numerator and occurrence/growth hypotheses gives no definition-restatement substitute. No padding finding was established; a failing simplification is not presented as a proof of mathematical depth.

The independent dependency check returned exactly:

```text
depcheck: 205 roadmaps, 1455 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. The manual audit still detects R01–R02: graph order cannot supply a missing theorem or nonexistent pinned declaration.

### Seeded source verification

The source service was used for all referenced works, with legal arXiv, author, institutional or publisher-open copies. Source aliases 90/22, 91/5 and 92/20 refer to the same texts. The table distinguishes directly read source support from independently supplied repairs; no source is credited with the repaired trace argument. The exceptions to text access are listed under Not verifiable.

| Seeded section | Locator/text inspected | Assessment |
| --- | --- | --- |
| 3.2 Cubic densities/counts | ref5 lines 405–469, Lemmas 17–19, pp.8–9; lines 1502–1530, Proposition 29, pp.23–24 | Five splitting types, normalized Haar mass, all primes including 2 and 3; counts agree with the computations below. |
| 3.3 Resolvents/three-torsion | ref93 lines 676–697, Lemma 3.1/Remark 3.2/Lemma 3.3, p.12; ref5 Theorem 2, p.1 | Fundamental-discriminant hypothesis and inverse-character pairing retained; R03 concerns ownership of the denominator estimate. |
| 3.21 S-integral orbits | ref20 lines 532–554 and 586–660, Theorems 3.1–3.4, pp.9–12; lines 1199–1220, Proposition 7.1, pp.22–23 | General algebra versus generic-field restriction is R05. Jacobian constants 2 and ±1 agree. |
| 3.24 Relative mass ratios | ref20 lines 1629–1686, §10.1, pp.29–30; Theorem 6(b), pp.4–5 | S₄ normal closure, cubic resolvent and ordinary/narrow infinity selectors retained. The source's degree-six/Galois wording and table headings have slips, recorded below. |
| 3.7 Low-degree means | ref20 lines 105–134, Theorem 2, pp.2–3; lines 235–272, Theorem 6, pp.4–5 | Automorphism weights, relative discriminant and all signature constants match. |
| 3.22 Four-rank expansions | ref22 lines 227–229, Theorem 5; lines 837–853, 1991–2011, 2341–2363, 2560–2588, 2772–2792, 2970–2994, Lemmas 17,28,34,39,41,43, pp.17,35,42,45,48,51; ref94 §3 Theorem 5, pp.6–8 | Six prefactors/twists and rank-law normalization tested separately; see the eight exact first-moment examples below. |
| 3.8 Four-rank moments | ref22 lines 90–196, Theorems 1–3 and formulas (4)–(9), pp.3–4 | Narrow group, six families, logarithmic error and real/imaginary coefficients agree. |
| 3.19 Conductors | ref93 lines 678–697, p.12; ref5 Proposition 29, pp.23–24; ClassFieldTheory Layer 13 | The source gives the unramified criterion and uniform count; the exact conductor identity uses the named reciprocity/conductor route, retaining wild 3. |
| 3.25 Uniform tower estimates | ref95 lines 476–505, Theorem 3.1/Corollary 3.2/Remark 3.3, pp.10–11; lines 787–860, Lemmas 3.13–3.14, pp.16–17; lines 1122–1141, Theorem 5.1, p.22; lines 1286–1302, Lemma 5.8, p.25 | Five ranges and tower height convention agree; corrected order weights tested. The underlying ref144 local formulas could not be reread; that limitation is explicit below. |
| 3.28 Small generators/mixed traces | ref101 (1.1)–(1.2), pp.189–195; ref98 lines 28–50 and 235–282, Theorems 1.1–1.2 and Lemma 3.3, pp.1–5; ref99 lines 159–185, §3, p.5 | Degree-uniform versus fixed-base constants separated; n≥2 count and n≥6 Jacobian ranges now agree. |
| 3.29 Special Galois/quartic bounds | ref102 lines 473–525, Proposition 2.8/Remark 2.10, pp.734–737; ref143 lines 210–216 and 365–379, Theorem 2.2/Proposition 3.3, pp.5,8; ref108 lines 205–267, Theorems 7–8, pp.57–58 | Three-eighths proof input remains R01. S₄ versus A₄ multiplicity, dyadic conductor and exceptional −3 resolvent retained. |
| 3.30 Governing fields/spins | ref134 lines 54–97, §1/Theorem A, pp.2–3; ref135 lines 1135–1157, 1257–1268, 1294–1300, Propositions 6.1–6.2, pp.20–22; ref103 lines 340–361, Conjecture C_n/Corollary 2.2, p.7, and §5, pp.22–23 | Conditionality and unit-square correction retained; exact analytic hypothesis is R04. Fixed-field arithmetic data remain explicit hypotheses. |
| 3.31 Pell | ref104 lines 41–94, §1, p.2; ref139 lines 146–180 and 208–225, Theorem 1/Corollary 1/Lemma 2, pp.2037–2039; ref145 lines 254–262 and rendered p.7, Theorem 2.7, and lines 429–434, Theorem 4.1, p.11 | Historical bounds remain distinct from 1−α; radicand/discriminant and graph/symmetric-matrix conventions checked. |
| 3.32 Reduction/sieves | ref105 lines 1100–1202, §5/Lemmas 5.1–5.3/Theorem 5.4, pp.24–26; ref106 lines 3195–3223 and 3269–3296, Theorem 7.1/Lemma 7.2, pp.51–53 | Real Gram predicate, expansion direction, signed fibres and zero-density quadratic trace slice corrected; R02 identifies a new nonexistent supplier. |
| 3.33 Monogenic predictions | ref105 lines 1203–1238, Remark 5.6/(42)/Corollary 1.4 proof, pp.26–27 | Prediction is explicitly conjectural; regular-region proof replaces unsupported strong density-one reasoning. Exponents and generator multiplicity checked. |

### Computed adversarial pass

Each row records actual values or a symbolic specialization, not merely elaboration. Finite calculations are witnesses for conventions and boundary cases, not empirical proofs of asymptotic theorems. Rows cover the sampled targets, every Lean headline, the remaining README target blocks and the interfaces touched by findings. Closely related API laws use the same carrier witness in their target row.


| Statement | Instances and computed values | Result | Change / retained condition |
| --- | --- | --- | --- |
| Conventions, sign/height | x⁴−y⁴: 4I³−J²=4(−12)³=−6912=27(−256); A=−1,B=0: 27H_E=108=4H_IJ | Pass | Retain. |
| Embedded counting convention | S₃ cubic: 3 copies·(1/3)=1; cyclic cubic: 1·(3/3)=1; quadratic inverse-Aut weight 1/2 | Pass | Retain both normalizations. |
| Splitting symbol/local sets | At p=2, 15 nonzero coefficient vectors, 1 zero vector; x³ has one triple root, zero form has no symbol | Pass | Retain zero exclusion and mod-p² distinction. |
| Reduction algebra | x³ mod2 gives F₂[t]/t³, dimension3, not F₂³; xy(x+y) gives three reduced F₂ factors | Pass | Retain both directions. |
| Splitting densities | p=2 numerators (1,3,2,6,3), denominator16; sum15/16=1−1/16 | Pass | Retain all five types. |
| Maximal splitting densities | p=2: (1,3,2,3,3/2)/16; ramified retention fractions both1/2 | Pass | Retain. |
| Maximal/non-total densities | p=2: U=21/32=(3/4)(7/8), V=9/16=(3/4)²; p=3: U=208/243,V=64/81 | Pass | Retain. |
| Maximal field dictionary | x³−x−1 has squarefree −23, index1; cyclic discriminant49 stays in cubic fields, but not nowhere-total family | Pass | Retain distinction. |
| Davenport–Heilbronn count | Signed constants ratio (1/4)/(1/12)=3; local product cancels ζ(2), leaving 1/(2·6ζ(3)) or 1/(2·2ζ(3)) | Pass | Retain. |
| Unramified resolvent correspondence | D=−23: conductor1; x³−2: −108=(−3)·6², so conductor6, not unramified | Pass | Retain converse with S₃. |
| Three-torsion/cubic fibre | Cl(−23) has three reduced classes, (3−1)/2=1 cubic; trivial 3-torsion gives(1−1)/2=0 | Pass | Retain. |
| Large-prime total ramification | x³−3 at p=3 enters for X>243; X/p² at 243 is27, not X/3=81 | Pass | No additional defect in this value test. |
| Squarefree mod4 | Through 1000: counts 200,204,204; total608. Each main term is 2000/π²≈202.642. Part I at q=4 gives (6/π²)(1/4)(4/3)=2/π². | Ownership defect | Import Part I §0.6 (R03). |
| Quadratic discriminant count | Negative fundamental D with 0<−D<25: ten; 3·25/π²≈7.599, difference2.401<√25 | Pass | Retain strict cutoff, D=1 excluded. |
| Mean three-torsion | Derived mean real 1+2/6=4/3, imaginary 1+2/2=2; finite negative sample below25 totals12 over 10, mean6/5, not a finite identity | Pass | Retain asymptotic quantifier. |
| Local specification definition | Empty infinite-place set has mass0; real-only1/6; complex-only1/2; both2/3. | Pass | The undeclared API names from the prior review are gone. |
| Local mass API | At p=2 all maximal orders mass7/4, all orders8/3; empty specification0 | Pass | Distinguishes maximal from all orders. |
| Local Haar/mass identity | GL₂(F₂)/2⁴=6/16=3/8; (3/8)(7/4)=21/32; (3/8)(8/3)=1 | Pass | Retain. |
| Acceptable-order asymptotic | All maximal finite factors (1−1/p)(1+1/p+1/p²)=1−1/p³; real prefactor 1/12 | Pass | Recovers cubic constant. |
| Roberts secondary | Error5/6−1/48=13/16<5/6; imaginary/real secondary ratio√3, first-term ratio3 | Pass | Retain distinct ratios. |
| Three-torsion secondary | At p=2 secondary Euler factor 1−(2^(1/3)+1)/6≈0.623346; ζ(1/3)<0 | Pass | Retain negative secondary correction. |
| Strongly acceptable secondary | Empty local set gives both coefficients0; maximal p=2 first factor 21/32 differs from secondary≈0.623346 | Pass | Retain two independent local densities. |
| Mertens quadratic forms | Integral Δ multiple4 for x²+y²: Δ=−4; stabilizer in SL₂ has4 elements, unweighted orbit count1; main coefficientπ/18≈0.174533 | Pass | Retain unweighted convention. |
| Quadratic-character interval bound | Nonprincipal χ mod3: χ(1)+χ(2)=0, χ(1)=1; principal sum over1…3m equals2m | Pass | Nonprincipal hypothesis discriminates. |
| Siegel indefinite forms | D=5 norm-one unit(3+√5)/2 has log≈0.962424; D=20 order period is3 times this; scaling a form does not replace its stabilizer by the larger-order regulator | Pass | Retain primitive/content distinction. |
| Classical imported counts | Real/imaginary cubic coefficients1/(12ζ3),1/(4ζ3), ratio3; primitive quadratic correction divides byζ3 | Pass | Retain as references, no new owner. |
| Rigid field family | n=1 gives1 label, quadratic2, S₃ cubic3·6=18; at heightD−1 count0 and atD full multiplicity | Pass | Retain normalizer, not Aut(G). |
| Relative torsion splitting | C₃,d=2: norm∘extension=x², corrected section x^(2·2)=x; identity extension relative cardinal1 | Pass | Retain inverse-degree section. |
| Relative splitting bad prime | C₂,d=2: x²=1 for every x, hence no inverse-power section; ℓ divides degree | Pass | Exclusion necessary. |
| S-integral orbit family | F=ℚ,S={∞,2},β=1,n=2: v=4 gives ℚ×ℚ, maximal after inverting2, Aut order2; v=8 gives ℚ(√2), also Aut order2. | Missing restriction | R05: retain full étale dictionary and identify its field locus. |
| Jacobian mass | Split cubic p=2 mass1/6 times GL factor3/8 equals1/16 | Pass | Retain coefficient/group-measure conversion. |
| Quartic/quintic constants | Quartic archimedean1/48+1/8+1/16=5/24; quintic1/240+1/24+1/16=13/120 | Pass | Retain signature weights. |
| Quartic class-group fibre | S₃ cubic resolvent has automorphism1; cyclic cubic has3 conjugate quadratic labels for one A₄ quartic | Pass | Retain multiplicity1 versus3. |
| Low-degree mass ratios | Over Q: quadratic mean real4/3, imaginary2; cubic ordinary real5/4, complex3/2; narrow real2 | Pass | Retain ordinary/narrow difference. |
| Quartic count | p=2 factor 1+1/4−1/8−1/16=17/16; signature sum5/24 | Pass | Retain S₄ restriction. |
| Quintic count | p=2 factor 1+1/4−1/16−1/32=37/32; signature sum13/120 | Pass | Retain S₅ restriction. |
| Number-field-base count | F=Q,n=2 weighted constant3/π²; multiply Aut2 gives unweighted6/π² | Pass | Retain weight1/n per embedded copy. |
| Cubic two-torsion mean | F=Q,a=1 ordinary1+2^-2=5/4,narrow2; a=0 ordinary=narrow3/2 | Pass | Retain relative norm kernel. |
| Four-rank conic formula | D=5: soluble factor classes represented by b=1,5, quotient by complements gives2/2=1=2^0 | Pass | Retain complement factor. |
| Six-family Jacobi expansion | For k=1 and D=−3,5,−8,8,−4,12, the six explicit sums each equal1=2^0. At D=−56 the sum is2=2^1; at D=56 it is1=2^0. | Pass | Retain the negative8 prefactor1 and all −1/2-character twists. |
| Maximal unlinked supports | k=0 support cardinal1; k=1 maximal size 2=2^1; a linked pair with phase−1 cannot be an unlinked support | Pass | Retain k=0 and phase distinction. |
| FK coefficient | Subspace totals N₀=1,N₁=2,N₂=5,N₃=16; real coefficients1,3/2,11/4; imaginary 1,2,5 | Pass | Retain. |
| Narrow/wide comparison | Q(√3): ordinary class group1, narrow C₂; both four-ranks0 despite distinct two-ranks | Pass | Retain no identification of whole groups. |
| Rank moment uniqueness | p=2,u=0: moments k=0,1,2 equal1,2,5; point mass at rank0 has1,1,1 and fails k=1 | Pass | Nonvacuous hypotheses. |
| Four-rank moments/law | η∞≈0.288788; imaginary P₀=η∞,P₁=2η∞; real P₀=2η∞,P₁=4η∞/3 | Pass | Retain distinct laws and k=0. |
| Cohen–Lenstra prediction | G=1 surjection count1; C₃ has Aut2, distinguishing inverse-Aut weight1/2 from1 | Pass | Retain conjectural status. |
| Malle invariants | Regular C₃ index2,a=1/2; regular S₃ index3,a=1/3; identity has index0 and is excluded from minimum | Pass | Retain nontriviality. |
| Malle prediction | C₃/Q b=2/2=1, C₃/Q(ζ₃) b=2/1=2; logarithmic exponents0 and1 | Pass | Retain base-field dependence. |
| Abelian discriminant series | V₄/Q smallest-prime elements3, cyclotomic degree1, pole order3; cumulative powerX^1/2(logX)²; trivial group excluded | Pass | Retain pole-to-count factor 1/a. |
| Klüners obstruction | \|D_L\|=27D_(L/K); square-root logarithmic lower scale versus predicted square-root scale has ratio logX→∞ | Pass | No additional defect in this value test. |
| Conductor identity | x³−3: −243=(−3)·9²; x³−2: −108=(−3)·6² | Pass | Retain wild conductor9. |
| Quadratic order torsion | D=−39 has class number4; conductor9 has class number36 and residue 3-kernel C₃²; 3-torsion9 exceeds tame-only bound3 | Pass | Retain extra wild dimension. |
| Total-ramification union | At integer M≥1, Σ_(j>M) j^(−2)≤1/M by integration; the prime sum is smaller. | Pass | Uses the earlier local uniform estimate. |
| Imported secondary estimates | At m⁴=X the condition holds at equality; T=m gives m/T=1. | Pass | Secondary targets are imported from the corrected §2.11 anchor. |
| Relative small-split-prime bound | K=Q base discriminant factor 1; d=2,ℓ=3 permits θ<1/(12(N−1)); M=0 excluded | Pass | Retain relative-degree exponent. |
| Largest integer-lattice minimum | Q(i) basis(1,i) lengths1,1; generic diag(1,T²) last minimumT while covolume^(1/2)=√T | Pass | Arithmetic multiplication is indispensable. |
| Small square-ideal generators | In ℚ(√−5), I=(2,1+√−5) has I²=(2); Nm(2)=4 is a nonzero rational square. | Pass | Retain chosen generator and ideal together. |
| Square-norm/nonprimitive comparison | n=3: translation-line exponent1/6 plus curve exponent1/6 gives1/3. Equal sides B in Part III give T=B³ and exp((log B)²/log(B³))=B^(1/3). | Ownership defect | Import Part III §2.13 (R03); keep the index-two exception. |
| Two-torsion saving | n=3 exponent1/3,n=4 exponent3/8; ε=1/(4n) leaves saving1/(4n) below1/2 | Pass | Retain all n≥3. |
| Elliptic point/rank bounds | y²=x³−x: cubic algebraQ³ class contribution0; Δ=64,ω=1, rank upper RHS4; singular Δ=0 excluded | Pass | Retain equation discriminant. |
| Cubic two-torsion feedback | β=0.2782386677; a=1/[6(1−β/log2)]=0.2784337427<1/3 | Pass | Retain denominator, not1−β. |
| Uniform quadratic bound | F=Q: D=h₂=1, RHS scaleX; X<1 gives0 fields | Pass | Retain degree-uniform constants. |
| Shintani order bound | At X=D³h^(2/3), hD^(9/2)X^-1/2=D³h^(2/3)=X | Pass | Retain threshold and separate F=Q case. |
| Relative torsion propagation | F=Q: sqrtX+X; X=1 gives2, no division by zero | Pass | Retain. |
| Cubic-order mass identity | At split prime11 in Q×Q(√5), embedded suborders3; orbit masses1+1/2=3/2, not 2·1/2=1 | Pass | Corrected Aut(R) weight is necessary. |
| Local order series | q=3,u=1/9: totally ramified2187/1936, split675/484; their ratio100/81=(1+u)² | Pass | Retain all five numerator types. |
| Cubic character Euler expansion | χ³=1: (1−χ²u²)/(1−χu)=1+χu; unit ideal coefficient1 | Pass | Retain χ² denominator and no wild-prime deletion. |
| Five-range bound | Four joining values D²,D^(5/2)h^(2/3),D³h^(2/3),D³h^(2/3); D=h=1 givesX | Pass | Adjacent bounds agree. |
| Tower tail | Y>√X gives empty family since D_top≥D_lower²; m=1 does not satisfy the stated m≥2 hypothesis | Pass | Retain absolute height. |
| Wreath fibre | H=1,d=1 gives C₂ and2 compatible labels; regular V₄ has no single transposition | Pass | Retain permutation hypothesis. |
| Thin two-groups | Regular V₄ nonidentity moves4 points in two cycles, index2; D₄ degree4 has a transposition, index1 | Pass | Distinguishes thin from linear families. |
| Tower counting constants | m=1,k=Q gives6/π²; m=0 count1 has ratio1/X→0 | Pass | Retain m positive. |
| Two-extension torsion means | m=1,k=Q averages equal-density4/3 and2 to5/3 | Pass | Retain signature weights. |
| Relative wreath mean | Unit-rank u=0 gives2,u=1 gives4/3; an empty signature family has denominator0 and is excluded | Pass | Retain occurrence hypothesis. |
| Embedded wreath type | G=C₃ anti-diagonal extension is S₃ with3 outside involutions in1 class; G=C₂ gives V₄ with2 such classes | Pass | Retain embedded conjugacy, not abstract group only. |
| Nonabelian moment interface | C₃ type: Aut2, outside class size3; rigid/unrigid multipliers imaginary2,real6 | Pass | Retain distinct infinity selectors. |
| Admissibility/abelianization | G=1,F=C₂ is generated by its unique outside involution; F=1 has0 outside involutions | Pass | Retain admissibility, reject vacuous type. |
| Embedded type catalogue | Swap C₂ and a base-coordinate C₂ have projection image sizes2 and1; diagonal automorphisms cannot interchange them | Pass | Retain distinct orbits. |
| Elementary-two Euler series | k=1,s=1: dyadic factors T=2,U=1/2,V=5/4; imaginary selector(T−U)/4=3/8, not T/4=1/2. T pole order2; V pole order1. | Pass | Separate T,U,V Checks are now present. |
| Elementary-two divergence | m=2: G_T dyadic(1+m/2)2^-m=1/2; main scale XlogX, proper-image scale at most X | Pass | Retain k≥1. |
| Low-degree nonabelian means | n=3,4,5 overQ: imaginary 1/2,1/4,1/12; real 1/6,1/24,1/120 | Pass | Retain factorials and infinite places. |
| Fixed-factor residue | p=3: A=20/27,B_min=16/27>0; p=2 B_min=0; χ(2)=±1 gives1/4,3/4 | Pass | Retain separated dyadic factor. |
| Restricted L-value mean | Diagonal m=1 density2/π²; odd factor3 changes it to(2/π²)(3/4); εn=1 principal character is excluded | Pass | Retain restricted family, not unrestricted positivity inference. |
| A₄ kernel correspondence | Two eligible kernels·24=48; one S₃ orbit·48=48; trivial C₃ action gives C₂²×C₃, not A₄ | Pass | Retain action conditions. |
| Sampling identity | List[0,48],m=1 estimates0,96 mean48; m=2 estimates0,48,48,96 mean48 | Pass | Mathematical expectation identity only; no algorithm required. |
| Small trace-zero element | Q(√2): α=√2 has trace0,minpolyX²−2; rational trace-zero element must be0 | Pass | Retain nonzero/nonrational and primitive distinction. |
| Schmidt bound | Base degree1,n=2 exponent1;n=4 exponent3/2; T<D_base^n yields empty family | Pass | Retain absolute cutoff and uniform base quantifier. |
| Mixed-trace Jacobian | n=6,r=3: d=4 gives15<18,d=5 gives21>18; n=9,r=4,d=4 gives35<36 | Pass | Exceptions excluded correctly at stated n≥6. |
| Finite-fibre theorem | (x,y)↦(x,xy): determinantx, fibre(0,0) infinite, fibre(1,b) singleton; x² fibre0 has1 point≤2 | Pass | Retain exceptional hypersurface. |
| Finite-fibre characteristic | In characteristicp derivative ofx^p is0; in characteristic0 derivative ofx² is2x≠0 | Pass | Retain characteristic-zero route. |
| Lemke Oliver–Thorne count | Least d at n=2,3,4,5 is2,3,3,4; exponents are3,11/3,17/4,24/5, each≥1. At n=3,r=3,d=4, binomial6,2=15>9 and dr=12. | Pass | Small-degree counts repaired; do not enlarge the n≥6 Jacobian theorem. |
| Cyclic prime count | p=2 exponent1,p=3 exponent1/2; characters per fieldp−1=1,2 | Pass | Retain dividing character labels. |
| Galois three-eighths | h=60 yields1/4+1/(2√60)+1/60≈0.331216389<3/8; refined17/48<18/48. | Unowned input | Arithmetic specialization works; R01 blocks unconditional proof ownership. |
| Finite-group boundary | A₅ with A₄: |H|²=144>|S|=60. C₂ with its only proper subgroup:1<2. | Unowned input | R01 requires an owned nonabelian-simple theorem. |
| Fixed quadratic resolvent cubics | D=−3 admits conductor9 and −243; D=−23 conductor1 gives one cubic; −3 is the logarithmic exceptional resolvent | Pass | Retain exceptional branch. |
| Baily quartic fibre | Cubic splitting111,12,3 gives respectively3,1,0 square-norm squarefree ideal choices | Pass | Retain norm-square filter, not arbitrary ideals. |
| Weighted cubic partial summation | For N(T)=cT, integrating weightt^-1/2 gives2c√T+O(1), not c√T | Pass | Retain integration boundary term. |
| Quartic torsion applications | a≈0.278433743, total exponent1/2+a≈0.778433743; cyclic resolvent has3 labels per A₄ field | Pass | Retain weighted cyclic branch. |
| Governing field definition | d=−4,p=5 gives fundamental−20 and genus two-rank1;p=3 gives−12 nonfundamental | Pass | Retain admissibility and conjugacy invariance. |
| Eight-rank field | p=5,h(−20)=2;p=17,h(−68)=4; both fail8 divisibility despite17≡1 mod8 | Pass | Retain full splitting criterion. |
| Fixed-field arithmetic data | 2^36/128²=2^22; Minkowski bound≈12.93514; smallest norms81,25,49,14641 exceed12 | Pass | Conditional arithmetic calculation; basis-data hypotheses remain explicit. |
| Principality transfer | Total ramification degree e>1 and unramified e=1 force intersection degree1; Cl(E)=1 surjecting implies Cl(L)=1 | Pass | Retain norm-surjectivity input. |
| Sixteen-rank spin criterion | Replacing π by πβ² multiplies symbol factors by squares, each with value1; p dividingF gives nonunit residue | Pass | Retain units domain and correction factor. |
| Joint-spin bound | S={σ},ord σ=4: |S∩S⁻¹|=0; ord σ=2: intersection size1. χ modulo3 has interval sums1 (N=1) and0 (N=3); principal χ has2N/3+O(1). | Incomplete hypothesis | Define C_n and its uniform δ (R04). |
| No sixteen-rank governing field | Predicted positive cX/logX divided by X^(1−δ) equals cX^δ/logX→∞ for δ>0 | Pass | Conditional contradiction, not an unconditional claim. |
| Pell radicands | 1,2,5 included;3 excluded; D_field(2)=8≠2;1 excluded from field-rank slices | Pass | Retain junk/boundary treatment. |
| Negative Pell subset | d=1:(0,1);d=2:(1,1);d=5:(2,1), all give−1;d=3 mod3 would require square2 | Pass | Retain integer-solubility predicate. |
| Pell proportion | X≤1 gives0/0=0 by Lean convention; X=3 has radicands1,2, both soluble, ratio1 | Pass | Retain finite convention distinct from limit. |
| Historical Pell bounds | α≈0.419422442<1−α≈0.580577558<2/3; for X≥e,logX^1/2≤logX^.62 | Pass | Retain historical scope. |
| Fixed-prime-factor Pell bound | Symmetric GF₂ sizes0,1,2,3: nonsingular 1/1,1/2,4/8,28/64 =1,1/2,1/2,7/16 | Pass | Retain q₁…q₄. |
| Legendre graph convention | (5/13)=−1 gives two-vertex Laplacian rank1 and8²−65=−1; (5/41)=1 gives rank0 | Pass | Retain negative-symbol edges. |
| Reciprocal-r estimate | t=2: the remaining r=1 contributes1=L^0. | Pass | Unambiguous Σ_(r) notation now passes the scanner. |
| Polynomial Gram metric | X²+1 gives diag(1,1),X²−2 gives diag(2,4); doubled complex norm would give wrongdiag(2,2) | Pass | Retain once-per-complex-pair metric. |
| Unimodular reduction | diag(2,1) reduces by swap to diag(1,2); [[1,−1],[−1,3]] shortens second vector by adding first, length 3→2 | Pass | Retain general lattice existence. |
| Monic quasi-reduction | X²+1/4: Gram diag(1,1/4), shortest primitive squared norm1/4<1; every allowed triangular change fixes the first1. Swapped Gram diag(1/4,1) is reduced. | Pass | The repaired predicate is false on this instance; general reduction remains true. |
| Binary quasi-reduction | x²+2xy+3y² under x↦x−y gives x²+2y². For x²+y²/4 every determinant-one representative has a primitive vector with squared norm≤1/2<1. | Pass | The repaired binary predicate is false on the latter instance. |
| Strong reducedness | diag(1,2) unique up tosigns; diag(1,1) also hasswap, which is not diagonal | Pass | Retain non-uniqueness at ties. |
| Squarefree discriminant⇒S_n | Cubic−23 and229 give normal degree6=3!; cyclic49 gives3≠6 and fails squarefree hypothesis | Pass | Retain. |
| Monic coefficient sieve | n=2 weighted box dimension exponent3; tracezero Δ=−4a₂ divisible4 always | Pass | Full-box result cannot imply slice positivity. |
| Weak quasi-reduction | Expanded X²+ρ² gives diag(1,ρ²), reduced for ρ>1; inverse dilation gives diag(1,ρ^-2), not reduced for ρ>1 | Pass | Retain corrected expansion. |
| Strong ring fibres | Replacingθ by−θ sends g to g*= (−1)^n g(−X); ring is unchanged, so equality without reflection is too strong | Pass | Retain sign alternatives. |
| Trace-restricted sieve | n=2,a=0: Δ=−4a₂, κ₂(2)=0, squarefree count0. At a=1, Δ=1−4a₂, κ=8/π²; the two-class average is4/π². | Supplier defect | Mathematical repair works; replace the nonexistent translation supplier (R02). |
| Short-generator upper bound | n=2 exponent2;n=3 exponent5; reducing a₁ mod n leaves n possibilities, not O(Y) | Pass | Retain translation normalization. |
| Regular monic region | n=2 dilation(a₁,a₂)↦(Ya₁,Y²a₂) hasJacobianY³; roots separatedc become separatedcY | Pass | Retain full dimension. |
| Regular monic sieve | An empty local class givesρ=0 and violates positivity; residueΔ≡1mod4 permits positive dyadic factor | Pass | Retain actual local conditions. |
| Generator multiplicity | \|m₂\|≤K/Y<1 for Y>K forces m₂=0; m₀ has O(Y) choices andm₁ has O(1) | Pass | Retain O(Y) loss. |
| Monogenic lower bounds | n=2 exponents1 inD,2 inY;n=3 exponents5/6 inD,5 inY | Pass | Retain squarefree,signature,monogenic predicates. |
| Monogenic asymptotic conjecture | n=3 exponent5/6; ±translation contributesfactor 2; unrestricted tracezero quadratic density0 | Pass | Retain conjectural status andn≥3. |
| Imported binary factors | Quarticp=3:42768/59049=176/243;dyadic384/1024=3/8 | Pass | Retain corrected supplier factor. |
| Binary form sieve | Oddn=3 error exponent4−1/6=23/6<4; evenn=4 conditionalτ must satisfy9τ<5 | Pass | Retain conditional tail, no asserted numerical even exponent. |
| Arithmetic Bertini | n=3 maximal densityζ(2)^-1ζ(3)^-1; repeated-root nonregular section excluded by discriminant 0 | Pass | Retain odd/even distinction. |
| Regular binary-region sieve | Coefficient dilationt hasvolume t^(n+1),discriminant t^(2n−2); n=3 givesboth power 4 | Pass | Retain fixed region andpositive ρ. |
| Invariant-order fibres | OverZ h₂=1; overa base with h₂=2 the even-degree bound doubles | Pass | Retain general S-integer correction. |
| Compact transporters | n=2 formxy fixed bydiag(u,u^-1) for all u>0, noncompact; n≥3 separated projective roots eliminate thisone-parameter stabilizer | Pass | Retain n≥3. |
| Binary field lower bound | n=3 exponent(4)/(4)=1;n=4 exponent5/6 but conditional; n=5 exponent3/4 | Pass | Retain odd-degree Lean scope. |
| Alternating transfer | n=3 normal closure S₃,quadraticfixedfield A₃=C₃; multiplicitybound2^(3!)=64; −108 notsquarefree | Pass | Retain finite/infinite ramification conditions. |
| Alternating-extension lower bound | Totally real n=3 gives positive 229; one complex pair givesnegative −23; two complexpairs positive sign doesnot imply total reality | Pass | Retain actual infinity condition. |
| All fields degree≤5 | Quartic total coefficient=c_S4+c_D4, c_D4>0; quintic proper transitive groups have0 transpositions versus10 inS₅ | Pass | Retain D₄ andA₅ treatment. |
| Cyclotomic subfamily | C₃≀C₂ degree6 index2; removeO(X^(3/8+ε)),ε<1/8, fromΩ(X^1/2logX) | Pass | No additional defect in this value test. |
| Tame nonabelian mass | F=V₄,p=3,s=1:1+2/3=5/3; F=S₃,p=5:1+1/5=6/5; F=1 mass1 but inadmissible | Pass | Retain p∤\|F\|; S₃ at p=3 is excluded. |
| Primitive quadratic class number | D=−23 gives6 classes (3 positive and3 negative); D=−4 gives2; non-discriminant D=2 gives0 | Pass | Retain: this definition does not impose positive definiteness. |
| Norm-one regulator | D=5 minimalpositive Pell t=3,u=1 giveslog((3+√5)/2); D=20 t=18,u=4 gives3 times this; D≤0 has empty Pell set, sInf=0 and log0=0 | Pass | Retain norm one, not fundamentalnormminusone unit. |
| Native discriminant translation | f=X²−9 and f(X+1)=X²+2X−8 both have Δ36; modulo4 and9 this is0. X² and (X+1)² both have Δ0. | Supplier defect | R02: identity needed over ℤ and ℤ/p², absent at pin. |
| Trace-tail multiplicity transfer | For Δ36 and M=5 the squarefree modulus set is{6}, cardinal1; at M=6 it is empty. H=2 gives floorH=2≥H/2=1; dividing H^(D−1/5) by H gives H^(E−1/5). | Pass conditional on R02 | The estimate is uniform before choosing a,H,M. |
| Trace-slice finite-modulus boundary | n=2,H=10,q=4,R={0}: count49, main50, error1. At q=1:199 versus200, error1; R=∅ gives0 versus0. | Pass | Keep q≤H² and the shortest side H². |
| Trace-band local averaging | n=2: g₂=2, band residues0,1 average(0+8/π²)/2=4/π². n=12: g₂=4,g₃=3, product12 divides12. | Pass conditional on R02 | The finite-prime CRT average is justified, not inferred from orbit representatives alone. |
| S-integral lattices and groups | β=1,n=3,F=ℚ: without finite S, L=ℤ⁴ and Γ=GL₂(ℤ). Coefficient1/2 and diag(2,1) fail membership; with2∈S both belong. | Missing Checks | R07: these membership tests must be added to the README. |
| Part II supplier destinations | 10 distinct former fragments have0 matching headings; their target paragraphs are present. The replacement section fragments each have1 matching heading. | Locator defect | R06; no mathematical target is claimed absent. |
| Finite-field exclusion at p=2 | A nonzero cubic has15/16 total density over ℤ₂; the excluded zero coefficient vector has1/16. Nonreduced t³ remains length3 rather than three reduced points. | Pass | No good-primes-only narrowing. |
| Symmetric versus arbitrary matrix probability | 2×2 symmetric matrices:4 invertible of8, probability1/2. Arbitrary matrices:6 of16, probability3/8. | Source misprint | ref145 Proposition2.8 needs symmetric matrices; roadmap uses them. |


### Pinned declarations and ownership audit

The checked pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to those libraries. The following 21 source locations were opened, rather than inferred from declaration names:

| Pin location | Declaration or native content checked; limit of what it supplies |
| --- | --- |
| `Mathlib/Order/Northcott.lean:36` | `Northcott` means finite inclusive sublevels; `comp_of_finite_fibers` at65 requires finite fibres. |
| `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:273` | `NumberField.abs_discr_gt_two`, requiring degree greater than one. |
| `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:494` | Discriminant-bounded intermediate-field finiteness; fixes the ambient algebraic extension and does not provide an asymptotic. |
| `Mathlib/RingTheory/ClassGroup/ExtendedHom.lean:47` | `ClassGroup.extendedHom`, native ideal-class extension. |
| `TauCeti/RingTheory/ClassGroup/RelNorm.lean:144` | `ClassGroup.relNorm`; degree-power compatibility and composite at 166,174. This is the ordinary group, not the missing narrow norm. |
| `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:54` | Classification is a proposition; line67 transports an assumed classification statement, not a proof. |
| `TauCeti/NumberTheory/NumberField/Monogenic.lean:68` | `IsMonogenic` uses a generator of the full integer ring; line85 relates this to index one. |
| `TauCeti/NumberTheory/NumberField/NarrowClassGroup/Basic.lean:83` | Quotient by totally positive principal ideals; does not identify ordinary and narrow groups. |
| `TauCeti/NumberTheory/NumberField/Index/Discriminant.lean:142` | `IntegralPrimitiveElement.index_eq_one_of_squarefree_discr`. |
| `TauCeti/NumberTheory/NumberField/Global/Orders/Discriminant.lean:215` | `NumberFieldOrder.eq_maximal_of_squarefree_discr`, on an actual number-field order. |
| `TauCeti/Probability/Moments/Determinacy.lean:153` | Finite-measure MGF uniqueness. |
| `TauCeti/Probability/Moments/Determinacy.lean:243` | `Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp`; its exponential integrability is not a finite-group moment theorem. |
| `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:56` | Residue formula and positivity at65; signature, regulator and roots-of-unity factors retained. |
| `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:935` | `Polynomial.discr` uses actual natural degree; it is not a fixed-degree binary discriminant. |
| `Mathlib/NumberTheory/Chebyshev.lean:796` | `Chebyshev.eventually_primeCounting_le`, eventual bound with coefficient log4+ε, not the prime number theorem. |
| `TauCeti/NumberTheory/NumberField/Discriminant/Stickelberger.lean:104` | Discriminant residues 0 or1 modulo4. |
| `TauCeti/NumberTheory/NumberField/Quadratic/RingOfIntegers.lean:340` | Quadratic integer basis under the squarefree parameter, generating element and minimal-polynomial hypotheses. |
| `TauCeti/Order/Northcott/Basic.lean:41` | `normLE`, its coercion at51, and `summatory` at102 use inclusive sublevels. |
| `Mathlib/Analysis/InnerProductSpace/Spectrum.lean:299` | `LinearMap.IsSymmetric.eigenvectorBasis` under finite-dimensional symmetric-operator hypotheses. |
| `Mathlib/Analysis/Complex/JensenFormula.lean:307` | Jensen formula with meromorphic-on-ball and nonzero-radius conditions. |
| `TauCeti/RingTheory/Polynomial/Resultant/` | Exhaustive module/declaration search for the translation claim: absent; R02. |

Object searches used the roadmap index and its grep/show tools, the main checkout, the supplied open heads and board packages, together with both pinned libraries. Searches covered squarefree residue counts, rectangular integral-point estimates, discriminants and translations, maximal orders and monogenicity, ordinary/narrow norms, finite-group/rank moments, Schur covers and marked wreath types, mixed-trace interpolation, lattice reduction and singular systems. Searching the kept Lean names found no second declaration with this folder's fully qualified names. Open-work ownership was checked against the supplied readable heads; existing-roadmap revisions were not treated as new suppliers.

The following 22 supplier entries were resolved. File references are to their README unless a nested file is named. Main/completed copies were used for existing roadmaps, and supplied new-roadmap heads for additions. The printed section names are the contracts, not an assertion that their future Lean implementation already exists.

| Supplier and resolved locator | Consumed object / audit result |
| --- | --- |
| `ArithmeticStatisticsPartI`, §0.6, line1167; cubic conventions, acceptable conditions and binary orders | Squarefree residue count is already owned; R03. Carrier and normalization contracts resolve. |
| `ArithmeticStatisticsPartII`, §§1.1–1.3,1.9–1.10; lines163,283,515,1363,1541 | Cubic/quartic/quintic dictionaries, maximality and binary local factors exist. Ten obsolete fragments are R06. |
| `ArithmeticStatisticsPartIII`, §§2.6–2.11,2.13,2.16; lines896,1096,1162,1344,1366,1458,1540 | Finite-congruence counts, maximality tails, secondary estimates and monic/binary sieves resolve. Uniform rectangular curve count is already owned; R03. |
| `ArithmeticStatisticsPartIV`, §§3.1–3.2,3.7,3.9–3.10; lines65,128,611,780,824 | Counts, torsion/ranks, Gaussian coefficients, kernel laws and FK phase. Symmetric and arbitrary matrix laws remain distinct. |
| `ClassFieldTheory`, main Layer13, lines1799–1872 | Ordinary/narrow ray classes, reciprocity and conductor characters. |
| `Completed/GlobalNumberFields`, Layers3,11, lines337,571 | Ideal lattices, orders and Picard groups; no field-count asymptotic imported from finiteness alone. |
| `Completed/NumberFieldArithmetic`, Layers1,4,6; lines1086,1097,1140,1873 | Relative discriminants, separability, tower formula and permutation-discriminant comparison. |
| `Completed/LocalFieldsRamification`, Layer3, line724 | Local extension ramification and differents, including wild primes. |
| `Completed/PolynomialGaloisGroups`, Layers0,2,6; transitive layer line1172 | Root actions, conjugacy and transitive groups; Part V only specializes to embeddings. |
| `IntegralLattices`, §2G, line813 | Integral Gram reduction. The real polynomial metric here need not be integral and has a different carrier. |
| `GeometryOfNumbersAndQuadraticArithmetic`, §4.1, line1257, and §§0.2–0.3,1.2–1.5 | Semialgebraic counting and lattice geometry; does not itself supply Bombieri–Pila. |
| `GenericDoublePointInterpolation`, §§1.4,4.8, lines519,1472 | Homogeneous-partial formulation and all-degree double-point rank theorem with exceptional cases. |
| `InductionRestrictionPartII`, RS.1,RS.3,RS.6.4–6.6; line1418 onward | Power laws, kernel action, reduced-cover quotient and marked parity comparisons. |
| `InverseGaloisAndArithmeticFundamentalGroups`, IG.3.4–3.5,IG.4.6, lines3001,3317,4969 | Reduced covers, cyclotomic action and arithmetic lifting; not unconditional unrestricted central lifting. |
| `AnalyticNumberTheoryPartI`, §§0.32,2.5,2.21,2.32,2.38,2.48–2.49,3.27,3.32 | Character sums, prime selection, uniform exceptional-set/Chebotarev and analytic estimates; the exception is fixed before cutoffs. |
| `AnalyticNumberTheoryPartII`, §§5.4–5.7,5.21,5.28–5.29 | Weighted partial summation, restricted analytic means and field-count inputs; Part V's sharper quadratic bound is distinguished. |
| `Completed/ArithmeticDirichletSeries`, Layers3,6,9, lines190,256,337 | Euler products, summation/Perron and Tauberian interfaces. |
| `AdelicAlgebraicGroups`, AA.0–AA.4 | Adelic double cosets, measures and Tamagawa inputs; does not remove the algebra/field distinction in R05. |
| `DiophantineApproximationAndTranscendence`, §2.4, line1085 | Finite-rank unit-equation finiteness used in generator multiplicities. |
| `EllipticCurves`, Layers6–7, line1200 onward | Mordell–Weil and arithmetic rank/point interfaces; the statistical saving remains new here. |
| `OperatorTheory/PolarDecomposition/README.md:471` | PD-C09–PD-C18 singular vectors/reconstruction; real invertible dimension2 gives the stated orthogonal factorization. |
| `CFSGStatement` and pinned classification proposition | Statement ownership is distinct from a proof of the large-subgroup theorem: R01. No later proof supplier is silently assumed. |

No upward supplier or cycle was found. The real Gram adapter, marked weights, narrow relative comparison, trace-slice transfer and arithmetic moment asymptotics are extensions here, subject to the findings.

### Headline coverage

The README's statable endpoints are represented by all 40 admitted theorems below (names in `Suggested.lean`, within `TauCetiRoadmap.ArithmeticStatisticsPartV` and its indicated subnamespaces):

- Cubic and low-degree field statistics: `davenportHeilbronn_cubicFields`, `davenportHeilbronn_threeTorsion`, `bhargava_cubicTwoTorsionMean`, `bhargava_quarticQuinticFields`, `bhargavaShankarWang_numberFieldCount`, `allFields_degree_le_five`, `quadratic_discriminant_count`, `roberts_cubicFieldsSecondary`, `davenportHeilbronn_threeTorsionSecondary`.
- Four-rank endpoints: `fouvryKluners_fourRankMoments`, `fouvryKluners_fourRankLaw`, `rank_moments_determine_rank_law`.
- General bounds and torsion: `schmidt_fieldCount_uniform`, `lemkeOliverThorne_fieldCount`, `galois_count_threeEighths_of_largeSubgroups`, `galois_count_threeEighths`, `classGroupTwoTorsion_powerSaving`, `cubicClassGroupTwoTorsion_bound`, `integerLattice_largestMinimum`, `elliptic_integralPoints_rankBound`, `quadraticFieldCount_uniform`.
- Polynomial-to-field results: `squarefree_discriminant_fullSymmetric`, `monogenicField_lowerBound`, `monogenicField_shortGenerator_lowerBound`, `binaryFormField_lowerBound`, `unramifiedAlternatingExtension_lowerBound`, `traceSlice_squarefreeDensity`.
- Special families and towers: `kluners_cyclotomic_lowerBound`, `cyclicPrime_fieldCount`, `fixedResolvent_cubicFields`, `twoExtension_fieldCount`, `twoExtension_threeTorsionMean`, `relativeWreath_threeTorsionMean`, `lowDegree_alternatingMoment`, `quarticTorsion_fieldCounts`, `cubicTwoTorsion_relativeMean`.
- Classical means and Pell: `mertens_positiveDefiniteForms`, `siegel_indefiniteForms`, `negativePell_historicalBounds`, `pell_fixedPrimeFactor_lower`.

The seven real-bodied definitions are the Galois-type predicate, three Pell sets/ratio definitions, quadratic wreath subgroup, primitive quadratic class number and norm-one regulator. Their native bodies were compared with the examples above; the regulator uses norm-one units and the quadratic-form count includes both definiteness signs where its definition requires them.

The module docstring names the nonstatable refinements and their missing carriers: local-specification/S-integral orbit means, relative narrow norms, fixed-signature rigid wreath and nonabelian moments, reduced-cover lifting invariants, conductor-height idele characters, quartic resolvents, and joint-spin/residue-symbol interfaces. It also records the even-degree binary tail conditionality. These are not replaced by free predicates. Arithmetic conjectures (Cohen–Lenstra/Malle/monogenic predictions) remain conjectures in the README. No additional missing statable headline or padding defect was established. The unconditional Galois endpoint's ownership failure remains R01, despite its successful elaboration.

## Not verifiable

- **ref144**, Datskovsky–Wright, local binary-cubic zeta theory, Theorems3.1 and6.1, printed pp.42–45,68: the service's GDZ retrieval contains only the viewer HTML, not the article pages. The DOI landing-page attempt did not yield an accessible legal PDF. The underlying local-order formulas in §3.25 therefore remain unverified against this primary text; the formula comparisons with ref95 and the numerical specializations above were checked. The consolidated missing-reference entry records both attempts. No inaccessible passage is treated as evidence of an error.
- **ref54**, Andrade–Jung, DOI10.1007/s00605-018-1162-2: publisher access was classified `uncertified`/paywalled by the service. Its locator is retained without claiming a text check or reopening a settled access request.
- **ref96**, published Wood pagination: the NSF repository retrieval timed out twice. The same work's arXiv v2 is available as ref50; the published-page correspondence was not verified. These identifiers denote one work, not two independent sources.
- Source fetching covered the bibliography, but detailed theorem-text certification is the seeded sample and the specific source issues listed here, not every sentence of every cited work. Finite adversarial computations do not certify the full analytic proofs. The specified arithmetic data for the fixed governing-field example remain hypotheses, not an independently certified integral basis/unit computation.

## Source issues

- **Misprint** in ref5 at Theorem8, manuscript p.3 (ref5 line176): the source says the local order condition uses tensoring with Q_p; it should be tensoring with Z_p for a specification of cubic orders; affects a stated result.
- **Misprint** in ref95 at Lemma3.14, publisher p.17 (ref95 lines845–859): the source says ideals of O_L while quantifying only F; it should be ideals of O_F; affects a stated result.
- **Error** in ref95 at Lemma3.13, publisher pp.16–17 (ref95 lines787–843): the source says isomorphism classes of orders receive generic-algebra automorphism weights; it should be weighting by order automorphisms, or counting embedded orders before dividing; affects a stated result.
- **Error** in ref105 at Lemma5.2, manuscript p.24 (ref105 lines1131–1156): the source says large input dilation g(ρx) gives quasi-reduction; it should be monic root expansion ρⁿg(x/ρ); affects a stated result.
- **Error** in ref105 at Lemma5.1 and its proof, manuscript p.24 (ref105 lines1115–1128): the source says reduced-basis uniqueness implies equality of trace-zero polynomials; it should be equality up to signed reflection (−1)ⁿg(−x); affects a stated result.
- **Error** in ref105 at Lemma5.3, manuscript p.25 (ref105 lines1159–1174): the source says weak quasi-reduction yields density-one strong uniqueness; it should be weak quasi-reduction only, since odd-trace imaginary quadratics retain a second-minimum tie beyond signs; affects a stated result.
- **Error** in ref105 at Theorem5.4, manuscript p.26 (ref105 lines1179–1183): the source says every trace-zero slice has positive squarefree density; it should be a density statement allowing the quadratic dyadic obstruction with density zero; affects a stated result.
- **Gap** in ref105 after Theorem5.4, manuscript p.26 (ref105 lines1188–1191): the source says unique translation representatives give the unrestricted density constant; it should be supplemented by a restricted height/tail comparison and a separate local density average; affects the proof.
- **Gap** in ref106 at Lemma7.2, publisher pp.52–53 (ref106 lines3273–3283): the source says reduced basis vectors can be identified without independent signs; it should be identification up to signs unless an orientation convention eliminates them; affects the proof.
- **Gap** in ref97 at Corollary4.10, printed p.656 (ref97 lines1626–1657): the source says restricted coprime discriminant factorizations may be replaced by an unrestricted divisor sum; it should be a restricted sum, with divergence of its L-value mean proved; affects the proof.
- **Misprint** in ref145 at Proposition2.8, manuscript p.7 (ref145 line258 and rendered page): the source says the matrix probability concerns arbitrary square matrices over F₂; it should be symmetric matrices; affects a stated result.
- **Misprint** in ref102 at Remark2.10, printed p.734 (ref102 lines485–489): the source says every finite simple group has a proper subgroup larger than its square root; it should be nonabelian finite simple groups; affects a stated result.
- **Misprint** in ref20 at §10.1, manuscript p.29 (ref20 lines1633–1634): the source says the degree-six quadratic-over-cubic field itself is S₄-Galois and then names L₄; it should be its S₄-Galois normal closure, referring to L₂; affects the proof.
- **Misprint** in ref20 at Table3, manuscript p.29 (ref20 lines1641–1650): the source says the degree-four partition column belongs to the cubic field and conversely; it should be the opposite assignment of the two field labels; affects nothing.
- **Misprint** in ref20 at §10.1, manuscript p.29 (ref20 line1638): the source says the cubic resolvent is contained in K₂₄, which is undefined; it should be F₂₄, the normal closure just defined; affects the proof.
