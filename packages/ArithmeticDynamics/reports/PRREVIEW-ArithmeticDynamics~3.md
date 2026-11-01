# Review of ArithmeticDynamics (pull request #1335 at 40c5963)

**Verdict:** accepted

:robot: Independent AI review. No findings remain. This is an incremental re-review of 61 changed lines since d1c6f70, not a second full review of the 500 targets. All four previous findings are repaired; the changed passages and their immediate mathematical interfaces introduce no new blocking defect. The passing gate and computed examples support readiness for a human's final approval.

## Previous findings

- R01 — repaired: README:3559 requires the chosen lift to be integral with unit resultant. Sections 2.54–2.55 and 2.76 agree; the two lifts of z² give local heights 0 and −log p.
- R02 — repaired: README:180 and §§1.3, 1.7, 1.19, 4.28, 6.38, 6.64 use the actual supplier names mulHeight_pow_finrank and absMulHeight₁_eq. The scalar companion is named separately. Neither stale name remains.
- R03 — repaired: README:7445 locates Juul Lemma 2.6 on page 5 and Corollary 2.8 on page 6, matching the cited v6 text.
- R04 — repaired: README:3457 specifies the complex continuous-linear operator; lines 3467–3480 provide four API clauses and four numerical Checks distinguishing multiplicity, averaging, positivity, linearity and normalization.

## Verified sound

**Scope and principles.** The diff changes only TauCetiRoadmap/ArithmeticDynamics/README.md. Suggested.lean is identical to the previously reviewed version. The outside-folder diff is empty. The new material is mathematical API and small examples, with no algorithm, new supplier edge, re-planned foundation, sorry'd data or option override. The unchanged shape was compared with RestrictedPowerSeries and DiophantineApproximationAndTranscendence on main. The transfer definition now has its source, target, API and four discriminating Checks.

The seeded target intersecting the changed passages is §1.19; its source and degree normalization were checked afresh. Dependent sampled targets §§1.27 and 4.8 were also checked below. The other newly seeded targets lie outside the changed passages: §§0.24, 3.18, 3.64, 3.66, 3.69, 4.11, 4.15, 4.60, 6.18, 6.65, 6.76 and 6.87. No new locator certification is claimed for them in this incremental round. The previous computed rows for §§4.15 and 6.87 are carried forward explicitly. Downstream use of normalized absolute heights and of lift-independent canonical measures remains compatible with the repairs.

**Gate and dependency direction.** The worker's gate, including its targeted build at this head, reports:

~~~text
gate ArithmeticDynamics: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
~~~

The independently rerun gate reports all the same text/dependency counters zero and OK; that invocation did not print a build counter. Independent direct elaboration supplies a separate check of the module. The independently rerun dependency command, using the specified order, content and movable mode, prints:

~~~text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
~~~

There is no UPWARD, CYCLE or moved line.

**Lean and headlines.** Direct elaboration succeeds with eleven warnings, all for sorry. A separate scratch copy with #check @name for all 15 declarations also succeeds. Comparison with the supplied signature inventory and README shows no changed or dropped binder: characteristic zero, finite-type algebra, positive iteration, marked-point algebraicity, distinct parameters and both ellipticity instances remain present. The four real definitions and eleven theorem statements are unchanged. The previous one-tactic probes of all eleven admissions are carried forward from [PRREVIEW-ArithmeticDynamics~2](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md); no new Lean declaration requires a probe.

The eleven statable headlines remain:

| README | Headline declaration |
|---|---|
| 3.57 | noRationalFourCycle |
| 3.58 | noRationalFiveCycle |
| 3.88 | atMostOneRationalThreeCycle |
| 5.64 | stoll_integer_family_card_gal |
| 6.23 | rittCommonIterate |
| 6.84 | polynomialOrbits_meetingLine |
| 6.86 | lechIntegralAssembly |
| 6.87 | legendreTorsionSpecializations_infinite |
| 6.90 | polynomialLine_returnTimes |
| 6.111 | uniformLegendreCommonTorsion |
| 6.112 | uniformThreeBranchCommonTorsion |

The module docstring still identifies the missing carriers for dynamical moduli, canonical heights on polarized varieties and rational maps, analytic equilibrium measures and entropy, dynatomic curves and Jacobians, adelic equidistribution/pairings, arboreal towers, family heights/hybrid limits and étale dynamical Mordell–Lang. The changed transfer API does not add an acceptance-test stand-in for its missing rational-map action.

**Resolved suppliers and ownership.** The following five supplier passages were reopened through the roadmap service at their main versions; line numbers below exclude the service's prefixed header.

| Supplier passage | Resolved content and consumer |
|---|---|
| TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:259, :269, :289 | §0.2 supplies prod_infinitePlace_comap_pow_mult, tuple mulHeight_pow_finrank, scalar mulHeight₁_pow_finrank and absMulHeight₁_eq. Relative multiplicative heights raise to [L:K]; absolute heights take the total-degree root. All changed height citations use the appropriate statement. |
| TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:296, :317 | §§0.16 and 0.18 supply the relative Weil-height normalization and Tate limit with convergence, error bound, functional equation and uniqueness. Section 1.19 consumes these; §1.27 divides by the number-field degree when comparing absolute heights. |
| TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:12996 | §6.37 supplies projectiveWeilHeight, with affine absolute height and zero at infinity, as required by §1.7. |
| TauCetiRoadmap/FuchsianOrbifolds/README.md:311, :320 | Layer 5 supplies finite holomorphic maps and degree as the fibrewise sum of local multiplicities. This supplies the multiplicity total used by §2.56, including critical fibres. |
| TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:9829 | §7.10.2 explicitly lists refineAtlas, glueDomains, fibreProduct and rigidModel. The four worker citation leads are planned supplier API, not missing pinned-library declarations. |

Object searches used roadmaps grep across main and the indexed open heads for height-extension comparisons, local canonical heights, escape rates and rational-map transfer operators, followed by a search of package README/Suggested files. The supplier owns the general height comparisons; this roadmap consumes them. No competing owner of the new rational-map fibre-sum API was found. The package search for Lyubich/localCanonicalHeight/local-degree weighting returned only ArithmeticDynamics. Generic continuous-function normed spaces remain Mathlib's objects. No Lean names were added, so the previous namespace-collision audit is unchanged. This is a delta ownership audit, not a new survey of unrelated open work.

**Pinned declarations opened.**

| File and line at the pin | Evidence used |
|---|---|
| Mathlib/NumberTheory/Height/MvPolynomial.lean:230 | Height.mulHeightBound is the product of archimedean coefficient-sum maxima and finite-place coefficient maxima with 1. This explains the 3-to-9 extension test. |
| Mathlib/NumberTheory/Height/MvPolynomial.lean:368, :491 | Height.logHeight_eval_le and logHeight_eval_ge retain homogeneity and the displayed certificate hypothesis. The lower constant includes totalWeight and the size of the output index set. |
| Mathlib/NumberTheory/Height/NumberField.lean:136, :145 | NumberField.absMulHeight₁ takes the degree root over the simple algebraic field; its actual transcendental branch is 1. absLogHeight₁ is its logarithm. A docstring slip is recorded below. |
| TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean:119, :191 | The native canonical height is the full relative x-height limit with denominator 4ⁿ; its bounded difference from naive height requires ellipticity. Section 6.64 retains the total-degree division and classical factor 2. |
| Mathlib/Topology/ContinuousMap/Compact.lean:179, :196, :298 | Compact-domain continuous functions have the native normed-group/space instances and point-evaluation norm bound. The complex-sphere operator fits this carrier. Compactness and nonemptiness are supplied by the sphere; these instances do not manufacture them. |
| Mathlib/Topology/ContinuousMap/Bounded/Normed.lean:46, :89, :114 | Supremum norm, norm_le and norm_const_eq distinguish contraction from the wrong d² normalization; the constant-norm equality uses a nonempty domain. |

**Source checks.** Seven texts were fetched through the sources service, using the existing bibliography keys, and the supplied cached Call–Silverman text was read. Publisher-open Cambridge and the institutional AWS archive required an explicit licence class; both fetches then succeeded. No manifest was edited and no source request remains outstanding.

| Passage reviewed | Text and locator read | Conclusion |
|---|---|---|
| 1.19; dependent 1.27 | call-silverman-1993 line 132, line 150, line 178: §1, Theorem 1.1 pp.166–167, Example 3 p.167 | Global-height-field setting, expansion greater than one and projective-space example agree. The abstract extension to native admissible heights uses the separately named Tate-limit supplier and §1.8's height estimate. |
| 1.3 and 1.7 | silverman-aws-2010 line 389: Theorem 12(a), p.10; line 684: supplementary material, p.15 | Supports the field-independent height estimate and 1/[K:ℚ] normalization. The exact coefficient-bound base-change statement is justified by the pinned formula and supplier, rather than asserted to be verbatim in Silverman. |
| 2.54–2.55 and 2.62; dependencies 2.37 and 2.42 | baker-rumely-2006 line 381: Lemma 3.9 p.10; line 537: Lemma 3.21 proof p.13; line 591 and line 603: §3.4, (3.29), p.14 | Unit resultant plus integral lift is the right equality hypothesis; arbitrary lifts retain a bounded error. Their infinity chart is reversed, so coordinates are exchanged when comparing local-height definitions. |
| 2.56 | Lyubich1983 line 281: §4 p.358; line 290: Theorem 1; line 301 and line 352: Lemmas 1–2; line 430: Theorem 2 pp.362–364 | The complex continuous-function operator counts roots with multiplicity. Uniform convergence on compact sets avoiding exceptional points and support on Julia agree. The four added API clauses follow directly from this weighted fibre average. |
| 2.76; dependent 4.8 | demarco-krieger-ye-2020 line 306 and line 327: §§2.3–2.4 pp.8–9 | Δ log⁺ = standard measure minus δ∞, with the opposite sign to Baker–Rumely. Constant shifts have zero Laplacian, so the lift change leaves the measure unchanged. |
| 4.28; dependent 4.8 | favre-rivera-letelier-2006 line 1490, line 1510 and line 1515: §§5.1–5.2 pp.31–32; fili2017 line 176 and line 231: §2.2 pp.4–5 | Weights, standard measure, energy normalization and absolute height agree. Fili's sign slip after (5) is already corrected in the README's Correction 49. |
| 5.7 | juul-generic-iterates line 212 and line 227: Lemma 2.6 p.5, Corollary 2.8 p.6, v6 | Corrected page verified. The roadmap uses the discriminant inequality, avoiding the source's overbroad equality clause. |
| 6.38 and 6.64 normalization | Pinned upper/lower height bounds above; demarco-krieger-ye-2020 line 226: §2.1, (2.2), pp.6–7 | Division by the field degree and the elliptic factor 2 agree. This does not newly certify the unchanged general-form source locators of §6.38. |

**Computed adversarial pass.** Logarithms are natural, and abs(p)=1/p. The table contains 27 fresh computed rows. Eleven previous rows affected by the changes are replaced below; 53 untouched rows follow with individual previous-report citations. The fresh rows include each of the twelve changed numbered sections, the supplier-contract change, each new transfer API clause and its Checks, and immediate dependent normalization interfaces. These computations test the mathematical contracts; the sorry build alone is not a truth check.

| Statement | Instances tried | Values computed on both sides / competing model | Result and change |
|---|---|---|---|
| Supplier contract, README:180 | ℚ⊂ℚ(i); tuple (2,1), scalar 2; zero tuple | 2²=4 relative; 4^(1/2)=2 absolute; zero tuple 1²=1 | Tuple/scalar names and degree root resolve; repaired |
| 1.3 coefficient-bound base change | (X²+2Y²,XY), ℚ⊂ℚ(i); all-zero family | Archimedean maxima 3 and 3²=9; finite factors 1; log9/2=log3. Zero family gives bound 0 and normalized log max(0,1)=0 | Correct renamed input; no narrowing |
| 1.7 absolute/relative height | [2:1], [1:0], [0:1] over ℚ(i) | log4/2=log2; at infinity and zero 0/2=0 | Degree denominator nonzero and chart conventions agree |
| 1.19 relative canonical height | z² at 2 over ℚ and ℚ(i); at 0,∞; z+1 at 0 | Iterates 2^(2ⁿ), limits log2 and 2log2; 0 and ∞ give 0; degree-one sequence log n diverges | Repaired supplier name; d≥2 still substantive |
| 1.27 dependent comparison | z², P=[2:1] and ∞ over ℚ(i) | General absolute O(1) height log2 equals (2log2)/2; both heights at ∞ are 0 | Normalization consistent |
| 2.54 normalized local-height Check | F=(X²−XY−Y²,Y²), z=1/p and z=0 | Res=1, local heights log p and 0, equal to log⁺abs(z) | Added nonarchimedean restriction valid, including p=2,3 |
| 2.54 scaled-lift endpoint | F₀=(X²,Y²), pF₀, z=0; p=2,3 | Resultant norms 1 and p⁻⁴; heights 0 and −log p (−log2,−log3) | Unit-resultant clause excludes the former counterexample |
| 2.55 zero-potential API | F₀ and pF₀ on ℙ¹ | g_F₀=0 and g_pF₀=−log p at every point | Map good reduction alone is no longer asserted to fix the constant |
| 2.55 archimedean negative control | F=(X²+Y²,Y²), orbit of 0 | 0,1,2,5,26; normalized logarithms at n=2,3,4 are log2/4, log5/8, log26/16; increasing limit ≥log2/4>0 versus proposed zero | Explicitly excludes the archimedean wrong generalization |
| 2.56 definition and fibre weights | z² over ℂ at 0,∞ and 4 | Total local degree 2 at 0,∞; two simple roots ±2 at 4; weights sum 1 in each case | Native source and target correct |
| 2.56 linearity API | ψ=abs(z)²/(1+abs(z)²), χ=Re(z)/(1+abs(z)²), coefficients 2,−3 | A(2ψ−3χ)(4)=(2/5+14/5)/2=8/5=2(4/5)−3·0; A0=0 | Correct |
| 2.56 positivity and real restriction | Same nonnegative ψ; constant −1 | Aψ(4)=4/5≥0, Aψ(∞)=1≥0; A(−1)=−1 is real | Positivity hypothesis discriminated |
| 2.56 constants API | Constants 0,1,i | A0=0, A1=2/2=1, Ai=2i/2=i | Complex linearity and unit preservation agree |
| 2.56 contraction and critical continuity | ψ,χ and constant 1; z→0 and z→∞ | Aψ(z)=abs(z)/(1+abs(z)), Aχ(z)=0; limits 0,1 for Aψ; norms Aψ=ψ=1 and A1=1 | Contraction attained; continuous at both critical values |
| 2.56 Check 1 | Critical values 0 and ∞ | Correct A1=1; distinct-root unweighted alternative gives 1/2 | Discriminating |
| 2.56 Check 2 | Radial ψ at 4 and ∞ | (4/5+4/5)/2=4/5; at ∞ value 1; zero operator gives 0 | Discriminating |
| 2.56 Check 3 | Odd χ at 4; reciprocal coordinate u→0 | (2/5−2/5)/2=0 versus selected branch 2/5; transformed χ tends to 0 and ψ to 1 | Charts and cancellation correct |
| 2.56 Check 4 | 2ψ−3χ at 4; constant 1 | 8/5=2Aψ−3Aχ; correct norm of A1 is 1, d² normalization gives 1/2 | Discriminating |
| 2.56 convergence endpoint | z², a=1, and ψ,χ above | Every 2ⁿ-th root of 1 has ψ=1/2; sum of roots is 0 for n≥1, hence average χ=0; Haar integrals 1/2 and 0 | New operator agrees with unchanged limit theorem |
| 2.62 bounded difference and equality | pF₀ at 0; n=0,1,2 | Iterates (0,1),(0,p),(0,p³); normalized logs 0,−log p/2,−3log p/4 tend to −log p; F₀ difference 0 | Bounded clause and normalized equality both true |
| 2.62 retained p-polynomial bound | (zᵖ−z)/p, z∈ℤ_p, p=2,3 | p=2: −2log2≤−log2≤0; p=3: −3log3/2≤−log3/2≤0 | New example compatible with retained Check |
| 2.76 lift-invariant Laplacian | F₀,pF₀ on ℂ_p; Gauss point | Heights differ by −log p, Δ difference 0; both measures δ_G and both Laplacians δ_G−δ∞ | Repair propagates correctly |
| 4.8 dependent standard measure | z=2 at infinity; z=1/p at p; z=1/2 at infinity | Potentials log2,log p,0; energies against point masses −log2,−log p,0; δ₀ potential at 1/2 is −log2 | Sign and nonclassical carrier distinguish models |
| 4.28 absolute standard height | Point 2 over ℚ and ℚ(i); ∞ | Weighted sums log2 and (2log2)/2=log2; h(∞)=0 | Renamed scalar absolute-height comparison correct |
| 5.7 corrected locator | X²−u over k(u), char(k)≠2; characteristic 2 | Discriminant 4u has valuation 1 and inertia swaps two roots; char2 discriminant 0, excluded from this example | Page repair does not alter valid hypotheses |
| 6.38 absolute form bounds | (Xᴺ,Yᴺ), x=(2,1), N=0,1,2 over ℚ(i) | Image heights 0,log2,2log2; c(p)=0; upper equality Nlog2; lower bound Nlog2−log2 | Correct field-degree normalization |
| 6.64 Lattès normalization | Elliptic identity and torsion; full relative limit H over degree D | Torsion gives 0=2·0; general H/D=2·H/(2D) | Native full x-height and classical half-height distinguished |

The following 53 rows are carried from the previous report, with unchanged statements and computed values. “Seeded” in these carried rows refers to that report's sample.

| Statement | Instances tried | Values computed on both sides / competing model | Result and change |
|---|---|---|---|
| 0.4 resultant orientation | Linear forms aX+bY,cX+eY; swapped powers | Determinant ae−bc; Res(Yᵈ,Xᵈ)=(−1)^(d²)=(−1)^d | Signs agree; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 0.14 conjugating a lift | F=(X²,Y²), A=diag(2,1) | Adjugate lift (4X²,2Y²) has resultant 64=det(A)^6 | Homogeneous scaling agrees; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 0.15 resultant identity | F=(X²+2Y²,XY) | YF₀−XF₁=2Y³; Res(F)=2 | Nonunit resultant retained; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 0.30 fixed divisor | f=z² | Fixed points 0,1,∞, multiplicities 1 each; total 3=2+1 | Keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 0.31 critical divisor | zᵈ, characteristic not dividing d; zᵖ in characteristic p | Multiplicities d−1 at 0 and ∞, sum 2d−2; derivative of zᵖ is 0 | Separability matters; retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 0.39 quadratic multipliers | z² | Multipliers (0,2,0); σ₁=2, σ₃=0=σ₁−2 | Keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 1.25 height-zero criterion | z² at 0, roots of unity, 2 | Heights 0,0,log 2; first two finite orbits, last orbit 2,4,16,… | Both sides distinguished; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 2.42 scaling the lift, seeded | F₀=(X²,Y²), pF₀ at (0,1) | G_F₀=0; G_pF₀=−log p=0+log abs(p)/(2−1) | Keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 2.63 functional equation | f=(zᵖ−z)/p at 0, lift (Xᵖ−XY^(p−1),pYᵖ) | λ=−log p/(p−1); pλ+log p=−log p/(p−1) | Sign agrees; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 2.65 nonclassical point | Gauss point ζ(0,r), polynomial zᵈ | Seminorm of T is r; escape is log max(r,1), unlike evaluation at 0 | Carrier distinguishes Gauss and classical points  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 2.85/2.87 entropy conventions | Complex zᵈ versus nonarchimedean good reduction | Complex maximal entropy log d; Gauss Dirac measure entropy 0 | Do not transfer archimedean equality to every place; roadmap distinguishes them  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.53 relative candidate bound, seeded | x=2 in ℚ(i) | Native H=4, absolute H=2; native logarithmic radius is 2log 2 | Both candidate lists and degree factor retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.57 noRationalFourCycle | c=−29/16, x=5/4; c=0,x=2 | Cycle 5/4→−1/4→−7/4→5/4 has minimal period 3≠4; wandering 2 has period 0≠4 | Consistent; X₁(16) gap expressly named  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.58 noRationalFiveCycle | Same rational 3-cycle; c=−2 | Period 3≠5; rational finite preperiodic set {−2,−1,0,1,2} has only periods 1 and 2 | Consistent with FPS; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.71 exact/formal period | c=−3/4, x=−1/2 | Fixed multiplier −1; Φ₂=(x+1/2)², formal period 2 but exact period 1 | Distinction retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.77 modular point lists | X₁(13), X₁(18) models at u=0,−1; X₁(16) at u=0,±1 | Sextic RHS 1 at both inputs, giving four affine points plus two infinities; odd-degree RHS 0,4,4 gives five affine points plus one infinity | Listed points satisfy equations; completeness remains named supplier contract  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 3.88 atMostOneRationalThreeCycle | c=−29/16; x=5/4 and the other two orbit points | y is exactly x, x²+c=−1/4, or (x²+c)²+c=−7/4 | Conclusion includes all three choices; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.12 adelic measures, seeded | Standard family; one Gauss-radius change; classical atom | Standard mass 1, zero exceptional places; one changed place still mass 1; δ₀ gives log singularity −∞ | Finite exception and continuous-potential conditions distinguish wrong models  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.13 metric constant | Standard O(1) at [2:1], then constant shift 1 | Norm of second section 1/2, local height log 2; shift gives log 2+1 with unchanged curvature | Metric constant not determined by curvature; keep normalization  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.15 local energy | Finite sets {0,1} and {0,1/p} at p | First energy 0; second log p−(1/2)log p=(1/2)log p | Diagonal convention and sign agree  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.16 global self-pairing | F={0,2} over ℚ | Archimedean contribution −(1/2)log 2; 2-adic contribution +(1/2)log 2; sum 0 | Product-formula cancellation; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.20 Multibrot measure, seeded | c=1/p, degree D≥2; c=0 | abs(P_cⁿ(0))=p^(D^(n−1)); correct limit log p, wrongly divided limit log p/D; at c=0 limit 0 | Probability normalization 1 rather than 1/D retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.29 Mahler comparison | α=√2 | Mahler measure of X²−2 is 2; height (log 2)/2 | Degree factor agrees  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.43 metric normalization | Standard metric shifted by 1 at the real place | Point height shifts by 1, self-intersection by 2; normalizing removes both shifts | Wrong constant model excluded  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.59 regularized finite set, seeded | ρ=standard, F={0}; η=1 everywhere, then η_p=1/p | First both sides 0; second pairing (log p)/2, diagonal bound (log p)/2, height and potential-modulus terms 0 | Bound attained; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.65 height comparison | f=g=z² | Height difference 0; pairing 0; RHS remaining log 2≥0 | Compatible boundary; keep README only  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 4.66 preimage multiplicities | f=z²−1, second preimages of 0 | Polynomial x²(x²−2): distinct set {0,√2,−√2} has size 3, multiplicity count 4 | Multiplicity distinction retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 5.26 critical positivity, seeded | a=1,−2,−9 | Adjusted orbits: (−1,2,5,26,…), (2,2,2,…), (9,72,5175,26780616,…) | Terms from index 2 positive; −a nonsquare not needed for this isolated inequality  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 5.29 tree automorphism size | (d,n)=(2,3),(3,2),(1,2),(2,0) | 2^7=128; 6^4=1296; 1; 1 | Empty-level and unary cases agree  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 5.35 nonmaximal example | f=z²−2, level 2 | Iterated polynomial x⁴−4x²+2 has cyclic splitting group of order 4, versus full tree group 8; adjusted product 2·2=4 square | Square-class criterion discriminates  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 5.51 stable pair, seeded | (z²+1,0); (z²,0); (Xᵖ,t) over 𝔽_p(t) | First iterates irreducible; second X² reducible; last X^(pⁿ)−t irreducible but inseparable | Stability alone does not supply a separable regular tree; condition retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 5.64 stoll_integer_family_card_gal | a=1,n=0,1,2; a=−4 | Orders 1,2,8 equal 2^(2ⁿ−1); a=−4 has −a=4 square and is excluded | Nat subtraction boundary and congruences agree  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| forwardOrbit definition | Identity at x; successor at 0 | Orbit {x}; orbit ℕ via iterates n | Actual function iterates, no arbitrary relation  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| IsFiniteUnionAP definition | Empty set, ℕ, singleton {3} | Empty family; progression (1,0); progression (0,3) | Step zero correctly represents finite exceptional times  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.16 analytic interpolation, seeded | p=5, F(x)=x+5; identity | g(z)=ω+5z gives g(z+1)=ω+5z+5=F(g(z)); identity gives constant g=ω | Required congruences and recurrence agree  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.23 rittCommonIterate | −X³ versus X³, n=2; −X² versus X², n=2 | First both X⁹ and γ^(1+3)=1; second −X⁴≠X⁴ and γ^(1+2)=−1 | Both directions and s=0 monomial case discriminated  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.35 Legendre invariants | t=2; t=0,1 | Δ=64, c₄=48, j=1728, resultant of degree-4 lift 4096=Δ²; degenerate Δ=0 | Agrees with ELCI; singular parameters excluded from theorems  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.44 positive-characteristic obstruction | Return times pᵏ | Successive gaps (p−1)pᵏ unbounded, versus bounded gaps for an infinite finite union of progressions | Characteristic-zero restriction is substantive  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.50 dynamical André–Oort, seeded | Constant z²+1; non-isotrivial z²+t | Constant critical orbit 0,1,2,5,… is infinite, ∞ fixed; relations through fixed ∞ exist despite no PCF fibres. At t=0,−1,−2 both critical orbits are finite | Constant family excluded by non-isotriviality; conjectural status retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| ellipticStandardProjection / 6.57 | Matrix exchanging coordinates; scalar 2I | ∞↦0, 0↦∞, 2↦1/2; 2I gives 4/2=2 | Column convention and scalar invariance agree; zero matrix excluded by GL₂  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.60 birational height bound, seeded | (t₁,t₂)=(2,3); diagonal (R,R) | Image (3/2,2), height log 4 versus source height log 3; inverse gives 2,3. Diagonal image (1,1) has height 0 while log R is unbounded | Diagonal exclusion essential and present  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.61 residue return, seeded | u↦u² near 1 at p=5; p=2; translation | In disc coordinate F(U)=2U+5U², reduction 2U has fourth iterate U; at p=2 linear reduction 0; U+1 has p-th iterate U mod p | Unramified condition and positive iterate distinguish cases  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.70 integral independent specialization, seeded | H=Y²−T, exclusion T−2, p=5; H=Y²−2,p=7 | Choose transcendental ξ≡1 mod5: root η≡1, derivative 2 unit, ξ−2≡−1 unit. At p=7 root 3 has derivative 6 unit | Simultaneous unit/simple-root conditions compatible; H=Y² and H=1 excluded  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.84 polynomialOrbits_meetingLine | F=X²,G=ζ₃X², starts 2,2, diagonal | Orbits 2,4,16,256,… and 2,4ζ₃,16,256ζ₃,…; F²=G²=X⁴ | Infinite product-orbit intersection and positive iterate agree  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.86 lechIntegralAssembly | L=ℚ,s={1/6},N=3; L=ℚ(√2) | p=5 gives norm(1/6)=1≤1; p=7 admits √2 by root 3 mod7 with derivative 6 | Native field/algebra conditions adequate  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| legendreTorsionImages definition | Smooth t=2 | Images of 2-torsion are {∞,0,1,2}; identity point contributes ∞ | Includes infinity and the actual torsion predicate  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.87 legendreTorsionSpecializations_infinite | Mark a=2, t=2,4,4/3 | t=2 is 2-torsion; f₄(2)=0; f_(4/3)(2)=4/3 | Distinct smooth algebraic torsion specializations exhibited; consistent with infinitude source  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.90 polynomialLine_returnTimes | F=2X,G=3X, starts 1,1, Y=X+1; A=B=0 | 3ⁿ=2ⁿ+1 only at n=1: 1≠2, 3=3, 9≠5; singleton progression. Zero coefficients give ℕ if C=0, otherwise ∅ | Covers constants and degenerate line equation; keep  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.92 localized coefficient ring, seeded | L=ℚ, s={1/6}, f=10, p=7; wrong p=2 with f=6 | At 7 all chosen generators/inverses have norm 1; at 2 norm(6)=1/2 and norm(1/6)=2 | Denominators must be units, not merely integral; retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.106 pairing growth, seeded | r=1/16, error coefficient 1/512; diagonal | r²−1/512=1/512>0; diagonal pairing 0 despite arbitrarily large parameter height | Positive coefficient and distinctness retained  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.106a local Legendre comparison | t=2,z=3 | f=49/24, derivative −35/144, curve polynomial 6; transformed identity gives 1225/3456 on both sides | Differential normalization agrees  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.111 uniformLegendreCommonTorsion | t₁=2,t₂=3; t₁=t₂=2 | Common branch values {0,1,∞}, cardinal 3; identical parameter gives infinite torsion intersection | Distinctness and separate Finite clause are necessary and present  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |
| 6.112 uniformThreeBranchCommonTorsion | Standard E₂,E₃; same curve and projection | Branch intersection cardinal 3 in first case, 4 in second; latter has infinite common torsion | Exact three-branch hypothesis excludes the infinite countermodel  Carried from [previous review](packages/ArithmeticDynamics/reports/PRREVIEW-ArithmeticDynamics~2.md). |

## Not verifiable

- This incremental review does not recertify the unchanged source locators, all other supplier contracts, or all 500 targets. The 53 carried rows and unchanged headline/padding assessment are explicitly attributed to the previous review.
- The settled locator-only sources remain outside text certification: poonen-corrected-descent-certificates, forster-riemann-surfaces, Zieve1996, stoll-1992-quadratic-iterates, silverman-moduli-book-2012 and tate-1983. None was requested again.
- Registration of the existing EffectiveDiophantineMethods modular-point-list gaps remains unverified, as in the previous review. The prior settled editing-boundary disposition is unchanged; the diff neither adds nor alters those contracts.
- No source needed for this delta remains inaccessible. The missing-reference file contains no requests. The successful Lean elaborations establish well-formed signatures, not proofs of the eleven admitted theorems.

## Source issues

Only issues encountered in this round's source passages are listed; the previous report retains the other unchanged errata.

- **Misprint** in baker-rumely-2006 at Lemma 3.21(B)(a), printed p.13, line 537: the source says the escape-height shift uses an unrelated scalar α; it should be the scaling scalar γ; affects nothing.
- **Error** in juul-generic-iterates at Lemma 2.6, printed p.5, line 214: the source says fraction-field characteristic controls equality in the discriminant bound for arbitrary Dedekind domains; it should be residue characteristic with the requisite residue-separability and tameness conditions; affects a stated result.
- **Misprint** in fili2017 at §2.2 after (5), printed p.5, line 234: the source says standard-measure mutual energy with a point is positive log⁺; it should be negative log⁺ for the negative-logarithm kernel; affects a stated result.
- **Misprint** in demarco-krieger-ye-2020 at §2.2 after (2.3), printed p.7, line 269: the source says the norm of the pair (z,w) uses variables x,y; it should be max(abs(z),abs(w)); affects nothing.
- **Error** in demarco-krieger-ye-2020 at §2.3, printed p.8, lines 297–300: the source says rational versus irrational radii distinguish type II from type III; it should be membership versus nonmembership in the nonzero value group; affects a stated result.
- **Misprint** in pinned Mathlib at NumberField.absMulHeight₁, Mathlib/NumberTheory/Height/NumberField.lean:134, no printed page: the source says the transcendental junk value is zero; it should be one, as the definition's else branch specifies; affects nothing.

Concrete witnesses: ℚ₂(√2)/ℚ₂ has different exponent 3 rather than e−1=1; the circle energy against 2 is −log2; a disc over ℂ₂ of radius √2 is type II although √2 is irrational. The roadmap's relevant normalizations avoid these errors.
