# Review of ArithmeticDynamics (pull request #1335 at d1c6f70)

**Verdict:** needs changes

One P2 finding blocks acceptance. Three P3 findings concern supplier names, a page locator, and definition Checks. The supplied gate passes; independent Lean elaboration and the dependency check also pass. This review changes neither roadmap file.

## R01 (P2) — Good reduction of the map does not normalize the chosen lift

**Location:** TauCetiRoadmap/ArithmeticDynamics/README.md:3546, §2.62: “at every nonarchimedean v of good reduction λ̂_{F,v} = log⁺ v”. The unqualified endpoint assertions in §§2.54–2.55 repeat this problem.

**Claim:** Under the displayed hypotheses d≥2 and Res(F)≠0, good reduction of f makes its lift-dependent local height the naive local height.

**Witness:** Over ℚ_p take f(z)=z² and F=p(X₀²,X₁²). Then Res(F)=p⁴≠0 and Fⁿ(0,1)=(0,p^(2ⁿ−1)). Thus λ̂_F(0)=−log p, whereas log⁺ abs(0)=0.

The map has good reduction, but this lift is not normalized. Section 2.42 itself supplies exactly this change under scaling. The integral, unit-resultant hypothesis is present in the cited §2.37, but absent from this conclusion.

**Repair:** Require F to have integral coefficients and abs(Res(F))=1 for the good-reduction equality, including the endpoints in §§2.54–2.55. Keep the bounded-difference statement for arbitrary lifts. Add the pair F₀=(X₀²,X₁²), pF₀ as a negative-control Check: the first gives λ̂(0)=0 and the second −log p; both induce the same good-reduction map. This repair preserves §2.42 and makes the proposed instance satisfy exactly the appropriate clause.

## R02 (P3) — Replace stale height-comparison names with the supplier's actual names

**Location:** TauCetiRoadmap/ArithmeticDynamics/README.md:180: “mulHeight_algebraMap, absMulHeight₁_eq_rpow”. These names recur in §§1.3, 1.7, 1.19, 4.28, 6.38 and 6.64.

**Claim:** These are declarations supplied by DiophantineApproximationAndTranscendence §0.2.

**Witness:** TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:269 names mulHeight_pow_finrank and mulHeight₁_pow_finrank; line 289 names absMulHeight₁_eq. Neither quoted stale name occurs in that supplier's README/Lean or the pinned libraries.

**Repair:** Replace every occurrence by the appropriate tuple or scalar name, and replace absMulHeight₁_eq_rpow by absMulHeight₁_eq. Retain the degree normalization. On ℚ⊂ℚ(i), the tuple (2,1) has relative heights 2 and 4=2²; the absolute height is √4=2. For §1.3's forms the bound constants are 3 and 9=3². Thus the existing supplier supplies the mathematics; this is a naming defect, not an unowned theorem.

## R03 (P3) — Juul Lemma 2.6 is on page 5

**Location:** TauCetiRoadmap/ArithmeticDynamics/README.md:7432, §5.7: “Lemma 2.6, p. 6”.

**Claim:** The different/discriminant input is at that locator.

**Witness:** juul-generic-iterates line 212 begins Lemma 2.6 on printed page 5. The page-6 marker is line 221; Corollary 2.8 is on page 6.

**Repair:** Change this locator to Lemma 2.6, p. 5, retaining Corollary 2.8, p. 6 and the combined pp. 5–6 locator. The test P=X²−u in characteristic different from 2 still has discriminant 4u, valuation 1, and transposition inertia. No mathematical narrowing is needed.

## R04 (P3) — The transfer operator needs discriminating Checks

**Location:** TauCetiRoadmap/ArithmeticDynamics/README.md:3456, §2.56 defines A by the local-degree weighted fibre sum. At line 3466 its only endpoint text says: “The generic Banach splitting and Radon functional representation are explicit supplier contracts”.

**Claim:** This section supplies the definition and its acceptance Checks.

**Witness:** The endpoint text computes no value of A. It cannot distinguish the stated operator from the zero operator, an unweighted distinct-root sum, or a selected inverse branch.

**Repair:** Give the operator its basic API list, including linearity, positivity, A1=1 and norm at most 1, and at least these three Checks for f(z)=z² on the complex sphere:

- At the critical value 0, A1(0)=2/2=1; counting the one distinct root without multiplicity gives 1/2.
- For ψ(z)=abs(z)²/(1+abs(z)²), extended by ψ(∞)=1, Aψ(4)=(4/5+4/5)/2=4/5, excluding the zero operator.
- For χ(z)=Re(z)/(1+abs(z)²), extended by χ(∞)=0, Aχ(4)=(2/5−2/5)/2=0, excluding selection of the positive inverse branch.

Both functions are continuous on the sphere. Keep these in the README; they are not additional Suggested.lean declarations.

## Verified sound

### Previous findings, checked first

The comparison is against all eight findings of PRREVIEW-ArithmeticDynamics~1, not just the changed lines.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01: X₁(16) list presented as supplied | README:252 now says “What EffectiveDiophantineMethods must provide (gap:x1-16-rational-points)”; §3.57 consumes that contract | Mathematical ownership wording repaired. The explicit six-point contract replaces the false claim of an existing ED section. Registration remains unverified below. |
| R02: redundant geometric-height gap | README:413 consumes “ofPolarization of §0.10” and “weilHeight of §0.16” | Repaired: the redundant gap is gone; the named supplier really supplies the height-field and height-machine inputs. |
| R03: invented ED names and section keys | README:238 says “boundedHeightPoints with its completeness clause, and its projective set T”; line 242 names §§3.27–3.28 | Repaired: these match ED's statements. The FPS dependencies now identify the actual sections. |
| R04: invented analytification fields | README:188 says “its functor laws for identities and composites, its closed-subspace comparison” | Repaired: these are prose clauses of ComplexComparisonPartII §C-1.1, without nonexistent dotted declarations. |
| R05: three TeX tokens | §4.60 now uses code-form exponents; gate reports tex=0 and latex=0 | Repaired. |
| R06: computational smoothness certificate | §3.57 now uses “Smoothness of the affine unicritical dynatomic curves” (§3.73), specialized to d=2,n=4 | Repaired: smoothness is a mathematical target; the Gröbner-certificate input is gone. |
| R07: unused nonzero-line hypothesis | Suggested.lean:159 quantifies x,y,A,B,C without hline; its docstring includes “when A = B = 0” | Repaired: for C=0 the time set is ℕ, and for C≠0 it is empty. |
| R08: undeclared internal API names | The cited identifiers, including adjustedCriticalOrbit_ne_zero_iff and AdelicMeasure.height_eq_average, have been replaced by prose/section references | The cited examples are repaired. The distinct supplier-name drift found in this round is R02 above. |

The older repair report packages/ArithmeticDynamics/reports/FIX-RT-ArithmeticDynamics~1.md:189 records gap-metadata registration as requiring separately authorized edits. The previous review likewise explicitly directed a README contract when no plan was available. This review does not re-raise that settled editing-boundary issue.

### Gate, dependency direction, Lean form and signatures

The worker's gate at the reviewed head reports zero for every counter, including build, imports, sorry-data, set_option, source-material, stray-files, dirty and outside-folder:

~~~text
gate ArithmeticDynamics: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
~~~

The final independent dependency check, with the specified order, movable mode and content repository, prints:

~~~text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
~~~

There is no UPWARD, CYCLE or moved line. An earlier run in this review reported 1484 edges and also zero problems; the output above is the final run.

Independent elaboration of TauCetiRoadmap/ArithmeticDynamics/Suggested.lean exits successfully with 11 warnings, all for sorry. The file has 188 lines, one import Mathlib, four real definitions and eleven theorems. It has no sorry'd data, set_option, admitted examples, lemma declarations or extra imports. The outside-folder diff and final worktree status are empty.

A scratch copy with #check @name for all 15 declarations elaborated. I compared the elaborated types with the README, including the characteristic-zero/field binders, finite-type algebra hypothesis, positive iterate, algebraicity of the marked constant, distinct Legendre parameters and the two ellipticity instances inside the final universal quantifier. No dropped binder was found.

The one-tactic probe replaced each of the eleven admissions by attempts using simp, rfl and infer_instance. None closed. Inspection found no direct pinned-library theorem that would close any of them with one exact. These are not definition unfoldings or boundary-case padding.

### Headline coverage

All eleven statable headlines identified in the README are present:

| README | Suggested.lean theorem | Line |
|---|---|---|
| 3.57 | noRationalFourCycle | 68 |
| 3.58 | noRationalFiveCycle | 72 |
| 3.88 | atMostOneRationalThreeCycle | 76 |
| 5.64 | stoll_integer_family_card_gal | 85 |
| 6.23 | rittCommonIterate | 100 |
| 6.84 | polynomialOrbits_meetingLine | 132 |
| 6.86 | lechIntegralAssembly | 143 |
| 6.87 | legendreTorsionSpecializations_infinite | 151 |
| 6.90 | polynomialLine_returnTimes | 159 |
| 6.111 | uniformLegendreCommonTorsion | 168 |
| 6.112 | uniformThreeBranchCommonTorsion | 177 |

The four retained definitions are forwardOrbit, IsFiniteUnionAP, ellipticStandardProjection and legendreTorsionImages. Their bodies use native functions, sets, Weierstrass points and matrices. In particular, the projection reads xRep and sends denominator zero to infinity; it is not an arbitrary function assumed to satisfy the conclusion.

The module docstring names the remaining headline groups and missing carriers: dynamical moduli (§§0.37, 0.40); polarized/projective dynamical heights (§§1.17, 1.21, 1.25); analytic and Berkovich dynamics (§§2.80, 2.85, 2.90, 2.94); dynatomic curves and specified Jacobians (§§3.72, 3.73, 3.87, 3.89); adelic measures and pairings (§§4.60, 4.66–4.71, 6.106–6.110); arboreal towers (§§5.59, 5.61); family heights and hybrid limits (§§6.24, 6.42, 6.69, 6.78, 6.85); moduli (§6.81); and the quasi-projective étale orbit theorem (§6.101). No bounded stand-in replaces these. The conjectures are explicitly statements of conjectures, not promised proofs.

### Seeded source checks

All 15 requested targets were considered. Fourteen have accessible supporting text; §5.26's precise Stoll locator remains a settled waiver. For §5.7 the mathematics is supported but one printed page is wrong (R03). Source text was obtained through the sources service and read at the listed locations. The README contains no locator explicitly labelled unverified or uncertified.

| Target | Text and exact locator read | Result |
|---|---|---|
| 2.42 | baker-rumely-2006 line 537, proof of Lemma 3.21(B), p.13, arXiv v2 | Supports the homogeneous escape-height scaling, with γ replacing the source's stray α. The source's two-variable Green kernel itself is scale-invariant; the roadmap uses its homogeneous-height computation. |
| 3.53 | doylekrumm line 61, §2 p.2; line 496, output of Algorithm 4 p.11, arXiv v4 | Native relative height, both candidate lists and degree normalization agree. The roadmap consumes the mathematical completeness contract rather than reproducing the algorithm. |
| 4.12 | favre-rivera-letelier-2006 line 165, Definition 1.1 p.4, v2; fili2017 line 143, Definition 5 p.4 and following direct-limit discussion | Probability, continuous local potentials and finitely many exceptional places agree. A general adelic measure is not silently required to descend as an invariant metric. |
| 4.20 | favre-rivera-letelier-2006 line 1959, Lemma 6.3 p.42; line 1978, Lemma 6.4 p.43; baker-demarco-2011 line 462, Proposition 3.3 pp.12–13; baker-hsia-2005 line 1329, §8.2 p.26 | The roadmap correctly repairs the factor-D normalization and retains probability mass one. The latter source's quadratic example is not the sole support for arbitrary degree. |
| 4.59 | demarco-krieger-ye-2020 line 1675, §7.2 and Proposition 7.3 p.40, v2 | Regularization, diagonal term and modulus contribution match. The stated general-measure form follows from the displayed energy expansion; it is not an assumption that every measure has zero height at infinity. |
| 5.7 | juul-generic-iterates line 150, Lemma 2.4; line 212, Lemma 2.6 p.5; line 227, Corollary 2.8 p.6; line 235, Corollary 2.9 p.6, v6 | The characteristic-two alternative and cube-free exclusion are retained. R03 fixes the page. The roadmap correctly uses the different inequality without extending tame equality to wild places. |
| 5.26 | stoll-1992-quadratic-iterates, Lemma 1.1(a), waived | Exact source text not certified. Direct integer recurrence checks below support the positivity assertion. |
| 5.51 | jones-density-2008 line 535, Definition 4.1 pp.12–13, v1; jones-arboreal-survey line 1021, §5 p.26 | Stable pairs specialize the composition definition with g=X−α. Separability is separately needed for the intended regular preimage-tree interpretation. |
| 6.16 | bell-ghioca-tucker-2010 line 389, Theorem 3.3 p.9, v1 | The p>3 restriction and coefficient divisibilities of the analytic interpolation theorem are present. |
| 6.50 | bijmst18 line 1176, family context p.24; line 1258, Conjecture 11.6 p.25, v2 | The roadmap states a conjecture and expressly retains non-isotriviality, needed to exclude the constant counterexample below. |
| 6.60 | demarco-krieger-ye-2020 line 1511, Lemma 6.3 pp.35–36, v2 | The rational map, its degree-two inverse and exclusion of the diagonal agree. |
| 6.61 | bell-ghioca-tucker-2010 line 215, coordinate setup; line 253, Proposition 2.4 proof; line 271, Proposition 2.6, pp.6–7 | The roadmap uses extension of the maximal ideal and the induced cotangent map, repairing the source's setwise-surjectivity claim. |
| 6.70 | cassels-embedding-1976 line 97, pp.196–197, equations (6)–(10) and ensuing Hensel argument | The proof supplies simultaneous finite exclusions, algebraically independent p-adic perturbations and a simple integral root; positive degree and separability are retained. |
| 6.92 | bell-embedding-2007-v2 line 147, Lemma 3.1 and coefficient-ring application pp.5–6 | Adding the finitely many inverted denominators and their inverses forces units; the generated localized ring has integral image. |
| 6.106 | demarco-krieger-ye-2020 line 118, Theorem 1.6 p.4 and line 1542, §6.2/Remark 6.4 pp.35–36, v2; published text line 139, Theorem 1.7 | The numbering change and distinct smooth algebraic parameters agree. The chosen r and error leave a positive height coefficient. |

Additional headline text read: morton98 line 177, Theorem 4, printed p.93 (and the X₁(16) identification at line 175); fps95 line 68, Theorem 1 p.2; morton92 line 137, Theorem 3 printed p.346; ghioca-tucker-zieve-2008 line 83, Theorem 1.4 pp.2–3, line 94, Theorem 1.5 p.3, and line 678, Proposition 6.3 p.17; cassels-embedding-1976, Theorem I and its finite-exclusion proof; dwy-2014-v3 line 61, Theorem 1.2 p.2 and line 1144, §6.5 pp.28–29; demarco-krieger-ye-2020 line 89, Theorem 1.4 p.3 and line 1905, Corollary 8.2 pp.44–45. Jones's survey, line 212, Theorem 2.3 p.6, independently records the Stoll integer-family conditions.

### Pinned-library and ownership audit

The following native definitions and statements were opened, rather than inferred from declaration names:

| Pinned file and line | Content relevant to the review |
|---|---|
| Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:887 | xRep has value (1,0) at zero and (x,1) at an affine point; lines 892, 896, 899 and 917 give the evaluations, nonzero representative and equality up to sign. |
| TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean:119 | canonicalHeight is the full relative x-height limit divided by 4ⁿ, rather than half that height. Line 332's torsion criterion retains Northcott. |
| Mathlib/NumberTheory/Height/NumberField.lean:136 | absMulHeight₁ uses the degree-normalized algebraic value and the transcendental junk value 1; line 145 takes its logarithm. |
| Mathlib/NumberTheory/Height/MvPolynomial.lean:230 | mulHeightBound uses the archimedean coefficient sums and nonarchimedean maxima; this supports the 3-to-9 test of §1.3. |
| Mathlib/Dynamics/PeriodicPts/Defs.lean:245 | minimalPeriod is zero for a point with no positive period. The period-exclusion headlines therefore include wandering points correctly. |
| Mathlib/RingTheory/Unramified/LocalRing.lean:86 | FormallyUnramified.map_maximalIdeal concerns the extended ideal, not setwise surjectivity of the ring map on its maximal ideal. |
| Mathlib/RingTheory/EssentialFiniteness.lean:40 | EssFiniteType is the finite-type-up-to-localization condition used in the embedding headline. |
| Mathlib/FieldTheory/IntermediateField/Adjoin/Algebra.lean:92 | fg_top_iff relates the finitely generated field condition to EssFiniteType; the embedding theorem is not about arbitrary huge characteristic-zero fields. |

Object searches used roadmaps grep over the available main/open-head index and a separate search of package READMEs and Suggested.lean files, for dynatomic polynomials, arboreal towers, Lattès dynamics, escape rates, Arakelov–Zhang pairings and dynamical Mordell–Lang. The core dynamical objects had no competing construction in those results. EllipticLegendreCharacterInterfaces mentions Lattès maps as consumers of its Legendre model. ArithmeticDynamicsPartII's open introduction concerns Markoff surfaces and has disjoint ownership. The package search found only this package for those construction phrases. A separate Lean-name/namespace search found no identical fully qualified declaration in another readable roadmap.

Generic heights, curve arithmetic, analytic carriers, entropy and elliptic-curve infrastructure remain supplier-owned. Resolved contracts include:

- DiophantineApproximationAndTranscendence §§0.2–0.3: README:269 and 289 supply the actual height comparison names (R02); line 299 supplies conjugacy invariance.
- HeightsRationalPointsAndObstructions §§0.9–0.11 and 0.16: README:211, 224 and 296 supply GeneralizedGlobalField, ofPolarization and weilHeight. Section 0.18, line 317, supplies the Tate-limit API. Section 5.17b, line 2741, supplies adelic metrized line bundles.
- EffectiveDiophantineMethods §0.11: README:1031 supplies boundedHeightPoints and the following completeness/projective-set clauses. The three modular-curve point-list requests are identified as gaps, not found supplier results.
- ComplexComparisonPartII §C-1.1: README:773 supplies complexSchemeAnalytification with the comparisons consumed in this roadmap.
- AlgebraicModuliForArithmeticGeometry §7.10.2: README:9829 supplies BerkovichAnalyticSpace and the seven named operations. All four names flagged by the worker's unresolved-name scan occur here; they are planned supplier declarations, not alleged pinned-library declarations.
- TropicalAndBerkovichArithmetic §§1.1–1.3: README:911 and 952 supply Gauss points and the logarithmic tree metric; §6.5, line 2173, supplies positive self-energy, retaining the nonclassical diagonal. Its general-field continuation is explicit.
- EllipticLegendreCharacterInterfaces §§0.1 and 0.4: README:146 gives Δ=16t²(1−t)² and the characteristic restriction for ellipticity. The t=2 calculation below agrees.
- GeometryOfNumbersAndQuadraticArithmetic §4.2: README:1539 supplies partition entropy and entropy rate with natural logarithms.
- ProbabilisticAndMetricNumberTheory §§4.1–4.3 and 5.2: the Birkhoff declarations occur at README:4507 and 4549, and finiteEntropy at line 6580.
- ArithmeticGaloisRepresentations §1.11 includes the reductive-quotient target used here, including its field/DVR hypotheses. Its section heading alone would not reveal that target.

### Computed adversarial record

The statement-level read covered the 500 numbered targets across all seven layers. The table records 64 explicit probes used in this review, including every seeded target, every Lean headline, all four retained Lean definitions, and each target affected by a finding. A successful instance is evidence about the convention or boundary it tests, not a proof of the general theorem.

In the table log is the natural logarithm, p is a rational prime, and p-adic absolute values satisfy abs(p)=1/p. “Keep” means no change was indicated by that probe.

| Statement | Instances tried | Values computed on both sides / competing model | Result and change |
|---|---|---|---|
| 0.4 resultant orientation | Linear forms aX+bY,cX+eY; swapped powers | Determinant ae−bc; Res(Yᵈ,Xᵈ)=(−1)^(d²)=(−1)^d | Signs agree; keep |
| 0.14 conjugating a lift | F=(X²,Y²), A=diag(2,1) | Adjugate lift (4X²,2Y²) has resultant 64=det(A)^6 | Homogeneous scaling agrees; keep |
| 0.15 resultant identity | F=(X²+2Y²,XY) | YF₀−XF₁=2Y³; Res(F)=2 | Nonunit resultant retained; keep |
| 0.30 fixed divisor | f=z² | Fixed points 0,1,∞, multiplicities 1 each; total 3=2+1 | Keep |
| 0.31 critical divisor | zᵈ, characteristic not dividing d; zᵖ in characteristic p | Multiplicities d−1 at 0 and ∞, sum 2d−2; derivative of zᵖ is 0 | Separability matters; retained |
| 0.39 quadratic multipliers | z² | Multipliers (0,2,0); σ₁=2, σ₃=0=σ₁−2 | Keep |
| 1.3 height-bound constant (R02) | ℚ⊂ℚ(i), (X²+2Y²,XY) | 3 over ℚ, 9=3² over ℚ(i); log 9/2=log 3 | Mathematics sound; rename citation |
| 1.7 absolute/relative height (R02) | x=2 over ℚ(i) | Relative multiplicative height 4; absolute √4=2; log 4/2=log 2 | Rename citation |
| 1.19 relative canonical height (R02) | z² at 2 over ℚ and ℚ(i) | Iterates 2^(2ⁿ); limits log 2 and 2log 2 | Degree division gives same absolute value; rename |
| 1.25 height-zero criterion | z² at 0, roots of unity, 2 | Heights 0,0,log 2; first two finite orbits, last orbit 2,4,16,… | Both sides distinguished; keep |
| 2.42 scaling the lift, seeded | F₀=(X²,Y²), pF₀ at (0,1) | G_F₀=0; G_pF₀=−log p=0+log abs(p)/(2−1) | Keep |
| 2.54 local-height endpoint (R01) | Same two lifts at z=0 | λ_F₀=0; λ_pF₀=−log p, although both maps are z² | Qualify chosen lift |
| 2.55 Green-function endpoint (R01) | Same two lifts on the sphere | g_F₀=0; g_pF₀=−log p everywhere | Qualify chosen lift |
| 2.56 transfer operator (R04) | z²; 1 at 0, radial ψ at 4, odd χ at 4 | 2/2=1; (4/5+4/5)/2=4/5; (2/5−2/5)/2=0 | Add these three Checks and API |
| 2.62 good-reduction equality (R01) | pF₀ at 0 | Claimed equality −log p=0 fails; normalized F₀ gives 0=0 | Add integral/unit-resultant hypothesis |
| 2.63 functional equation | f=(zᵖ−z)/p at 0, lift (Xᵖ−XY^(p−1),pYᵖ) | λ=−log p/(p−1); pλ+log p=−log p/(p−1) | Sign agrees; keep |
| 2.65 nonclassical point | Gauss point ζ(0,r), polynomial zᵈ | Seminorm of T is r; escape is log max(r,1), unlike evaluation at 0 | Carrier distinguishes Gauss and classical points |
| 2.85/2.87 entropy conventions | Complex zᵈ versus nonarchimedean good reduction | Complex maximal entropy log d; Gauss Dirac measure entropy 0 | Do not transfer archimedean equality to every place; roadmap distinguishes them |
| 3.53 relative candidate bound, seeded | x=2 in ℚ(i) | Native H=4, absolute H=2; native logarithmic radius is 2log 2 | Both candidate lists and degree factor retained |
| 3.57 noRationalFourCycle | c=−29/16, x=5/4; c=0,x=2 | Cycle 5/4→−1/4→−7/4→5/4 has minimal period 3≠4; wandering 2 has period 0≠4 | Consistent; X₁(16) gap expressly named |
| 3.58 noRationalFiveCycle | Same rational 3-cycle; c=−2 | Period 3≠5; rational finite preperiodic set {−2,−1,0,1,2} has only periods 1 and 2 | Consistent with FPS; keep |
| 3.71 exact/formal period | c=−3/4, x=−1/2 | Fixed multiplier −1; Φ₂=(x+1/2)², formal period 2 but exact period 1 | Distinction retained |
| 3.77 modular point lists | X₁(13), X₁(18) models at u=0,−1; X₁(16) at u=0,±1 | Sextic RHS 1 at both inputs, giving four affine points plus two infinities; odd-degree RHS 0,4,4 gives five affine points plus one infinity | Listed points satisfy equations; completeness remains named supplier contract |
| 3.88 atMostOneRationalThreeCycle | c=−29/16; x=5/4 and the other two orbit points | y is exactly x, x²+c=−1/4, or (x²+c)²+c=−7/4 | Conclusion includes all three choices; keep |
| 4.12 adelic measures, seeded | Standard family; one Gauss-radius change; classical atom | Standard mass 1, zero exceptional places; one changed place still mass 1; δ₀ gives log singularity −∞ | Finite exception and continuous-potential conditions distinguish wrong models |
| 4.13 metric constant | Standard O(1) at [2:1], then constant shift 1 | Norm of second section 1/2, local height log 2; shift gives log 2+1 with unchanged curvature | Metric constant not determined by curvature; keep normalization |
| 4.15 local energy | Finite sets {0,1} and {0,1/p} at p | First energy 0; second log p−(1/2)log p=(1/2)log p | Diagonal convention and sign agree |
| 4.16 global self-pairing | F={0,2} over ℚ | Archimedean contribution −(1/2)log 2; 2-adic contribution +(1/2)log 2; sum 0 | Product-formula cancellation; keep |
| 4.20 Multibrot measure, seeded | c=1/p, degree D≥2; c=0 | abs(P_cⁿ(0))=p^(D^(n−1)); correct limit log p, wrongly divided limit log p/D; at c=0 limit 0 | Probability normalization 1 rather than 1/D retained |
| 4.28 standard measure height (R02) | Point 2 over ℚ(i) | Relative height log 4 divided by 2 equals standard absolute height log 2 | Rename citation |
| 4.29 Mahler comparison | α=√2 | Mahler measure of X²−2 is 2; height (log 2)/2 | Degree factor agrees |
| 4.43 metric normalization | Standard metric shifted by 1 at the real place | Point height shifts by 1, self-intersection by 2; normalizing removes both shifts | Wrong constant model excluded |
| 4.59 regularized finite set, seeded | ρ=standard, F={0}; η=1 everywhere, then η_p=1/p | First both sides 0; second pairing (log p)/2, diagonal bound (log p)/2, height and potential-modulus terms 0 | Bound attained; keep |
| 4.65 height comparison | f=g=z² | Height difference 0; pairing 0; RHS remaining log 2≥0 | Compatible boundary; keep README only |
| 4.66 preimage multiplicities | f=z²−1, second preimages of 0 | Polynomial x²(x²−2): distinct set {0,√2,−√2} has size 3, multiplicity count 4 | Multiplicity distinction retained |
| 5.7 discriminant/inertia, seeded (R03) | X²−u in char≠2; X²+uX+u in char2; X³−u in char2 | Discriminant valuations 1,2,2; inertia permutations respectively transposition, wild transposition, 3-cycle | Correct char2 alternative; cube-free reduction excludes last example; fix page |
| 5.26 critical positivity, seeded | a=1,−2,−9 | Adjusted orbits: (−1,2,5,26,…), (2,2,2,…), (9,72,5175,26780616,…) | Terms from index 2 positive; −a nonsquare not needed for this isolated inequality |
| 5.29 tree automorphism size | (d,n)=(2,3),(3,2),(1,2),(2,0) | 2^7=128; 6^4=1296; 1; 1 | Empty-level and unary cases agree |
| 5.35 nonmaximal example | f=z²−2, level 2 | Iterated polynomial x⁴−4x²+2 has cyclic splitting group of order 4, versus full tree group 8; adjusted product 2·2=4 square | Square-class criterion discriminates |
| 5.51 stable pair, seeded | (z²+1,0); (z²,0); (Xᵖ,t) over 𝔽_p(t) | First iterates irreducible; second X² reducible; last X^(pⁿ)−t irreducible but inseparable | Stability alone does not supply a separable regular tree; condition retained |
| 5.64 stoll_integer_family_card_gal | a=1,n=0,1,2; a=−4 | Orders 1,2,8 equal 2^(2ⁿ−1); a=−4 has −a=4 square and is excluded | Nat subtraction boundary and congruences agree |
| forwardOrbit definition | Identity at x; successor at 0 | Orbit {x}; orbit ℕ via iterates n | Actual function iterates, no arbitrary relation |
| IsFiniteUnionAP definition | Empty set, ℕ, singleton {3} | Empty family; progression (1,0); progression (0,3) | Step zero correctly represents finite exceptional times |
| 6.16 analytic interpolation, seeded | p=5, F(x)=x+5; identity | g(z)=ω+5z gives g(z+1)=ω+5z+5=F(g(z)); identity gives constant g=ω | Required congruences and recurrence agree |
| 6.23 rittCommonIterate | −X³ versus X³, n=2; −X² versus X², n=2 | First both X⁹ and γ^(1+3)=1; second −X⁴≠X⁴ and γ^(1+2)=−1 | Both directions and s=0 monomial case discriminated |
| 6.35 Legendre invariants | t=2; t=0,1 | Δ=64, c₄=48, j=1728, resultant of degree-4 lift 4096=Δ²; degenerate Δ=0 | Agrees with ELCI; singular parameters excluded from theorems |
| 6.38 uniform form bound (R02) | (Xᴺ,Yᴺ) at (2,1) | c(p)=0, height image Nlog 2, upper bound Nlog 2; lower bound Nlog 2−log 2 | Field division correct; rename citation |
| 6.44 positive-characteristic obstruction | Return times pᵏ | Successive gaps (p−1)pᵏ unbounded, versus bounded gaps for an infinite finite union of progressions | Characteristic-zero restriction is substantive |
| 6.50 dynamical André–Oort, seeded | Constant z²+1; non-isotrivial z²+t | Constant critical orbit 0,1,2,5,… is infinite, ∞ fixed; relations through fixed ∞ exist despite no PCF fibres. At t=0,−1,−2 both critical orbits are finite | Constant family excluded by non-isotriviality; conjectural status retained |
| ellipticStandardProjection / 6.57 | Matrix exchanging coordinates; scalar 2I | ∞↦0, 0↦∞, 2↦1/2; 2I gives 4/2=2 | Column convention and scalar invariance agree; zero matrix excluded by GL₂ |
| 6.60 birational height bound, seeded | (t₁,t₂)=(2,3); diagonal (R,R) | Image (3/2,2), height log 4 versus source height log 3; inverse gives 2,3. Diagonal image (1,1) has height 0 while log R is unbounded | Diagonal exclusion essential and present |
| 6.61 residue return, seeded | u↦u² near 1 at p=5; p=2; translation | In disc coordinate F(U)=2U+5U², reduction 2U has fourth iterate U; at p=2 linear reduction 0; U+1 has p-th iterate U mod p | Unramified condition and positive iterate distinguish cases |
| 6.64 Lattès height normalization (R02) | Torsion P; general full relative native limit H over degree D | Torsion: 0=0; general normalized x-height H/D equals twice classical height H/(2D) | Factor two and degree agree; rename citation |
| 6.70 integral independent specialization, seeded | H=Y²−T, exclusion T−2, p=5; H=Y²−2,p=7 | Choose transcendental ξ≡1 mod5: root η≡1, derivative 2 unit, ξ−2≡−1 unit. At p=7 root 3 has derivative 6 unit | Simultaneous unit/simple-root conditions compatible; H=Y² and H=1 excluded |
| 6.84 polynomialOrbits_meetingLine | F=X²,G=ζ₃X², starts 2,2, diagonal | Orbits 2,4,16,256,… and 2,4ζ₃,16,256ζ₃,…; F²=G²=X⁴ | Infinite product-orbit intersection and positive iterate agree |
| 6.86 lechIntegralAssembly | L=ℚ,s={1/6},N=3; L=ℚ(√2) | p=5 gives norm(1/6)=1≤1; p=7 admits √2 by root 3 mod7 with derivative 6 | Native field/algebra conditions adequate |
| legendreTorsionImages definition | Smooth t=2 | Images of 2-torsion are {∞,0,1,2}; identity point contributes ∞ | Includes infinity and the actual torsion predicate |
| 6.87 legendreTorsionSpecializations_infinite | Mark a=2, t=2,4,4/3 | t=2 is 2-torsion; f₄(2)=0; f_(4/3)(2)=4/3 | Distinct smooth algebraic torsion specializations exhibited; consistent with infinitude source |
| 6.90 polynomialLine_returnTimes | F=2X,G=3X, starts 1,1, Y=X+1; A=B=0 | 3ⁿ=2ⁿ+1 only at n=1: 1≠2, 3=3, 9≠5; singleton progression. Zero coefficients give ℕ if C=0, otherwise ∅ | Covers constants and degenerate line equation; keep |
| 6.92 localized coefficient ring, seeded | L=ℚ, s={1/6}, f=10, p=7; wrong p=2 with f=6 | At 7 all chosen generators/inverses have norm 1; at 2 norm(6)=1/2 and norm(1/6)=2 | Denominators must be units, not merely integral; retained |
| 6.106 pairing growth, seeded | r=1/16, error coefficient 1/512; diagonal | r²−1/512=1/512>0; diagonal pairing 0 despite arbitrarily large parameter height | Positive coefficient and distinctness retained |
| 6.106a local Legendre comparison | t=2,z=3 | f=49/24, derivative −35/144, curve polynomial 6; transformed identity gives 1225/3456 on both sides | Differential normalization agrees |
| 6.111 uniformLegendreCommonTorsion | t₁=2,t₂=3; t₁=t₂=2 | Common branch values {0,1,∞}, cardinal 3; identical parameter gives infinite torsion intersection | Distinctness and separate Finite clause are necessary and present |
| 6.112 uniformThreeBranchCommonTorsion | Standard E₂,E₃; same curve and projection | Branch intersection cardinal 3 in first case, 4 in second; latter has infinite common torsion | Exact three-branch hypothesis excludes the infinite countermodel |

### Shape

The README has the required scope, conventions, supplier contracts, seven layers, examples/dependencies, downstream discussion and references. The review used RestrictedPowerSeries and DiophantineApproximationAndTranscendence on main as shape comparators. The gate detects no forbidden imports, source blobs, process markers or stray files. R04 identifies a substantive failure of the definition-Check requirement that a text scan does not detect.

## Not verifiable

- **Exact Stoll source:** stoll-1992-quadratic-iterates, Lemma 1.1(a), is settled as waived. Its exact wording and page were not certified from that text. The recurrence was checked directly, and the integer-family endpoint was compared with jones-arboreal-survey line 212. No new request was made.
- **Other settled waived works:** poonen-corrected-descent-certificates; forster-riemann-surfaces; Zieve1996; silverman-moduli-book-2012; tate-1983. Their settled locator-only status is unchanged; this review does not certify their unavailable passages or reopen them.
- **Gap registration:** no readable packages/ArithmeticDynamics/design/plan.json was found. The README now states exact ED contracts for X₁(16), X₁(13) and X₁(18), but this review cannot certify matching plan entries or board announcements. The earlier repair instructions and settled edit boundary are recorded above. These are not claimed to be existing ED theorems.
- No source request remains outstanding from this round: both Morton papers were fetched from the legal ICM institutional archive after specifying that licence class. No source manifest was edited.
- The computed table is the concrete test record, not a claim that all 500 planned proofs have been mechanically verified. The successful sorry build certifies signatures only.

## Source issues

- **Misprint** in baker-rumely-2006 at proof of Lemma 3.21(B)(a), p.13: the source says the escape-height shift uses an unrelated scalar α; it should be the scaling scalar γ; affects nothing.
- **Error** in doylekrumm at §2, p.2: the source says the archimedean logarithm map on K× has only roots of unity in its kernel; it should be restricted to algebraic integer units for that kernel assertion; affects a stated result.
- **Error** in favre-rivera-letelier-2006 at Lemmas 6.3–6.4, pp.42–43: the source says D⁻ⁿ normalization of the nth critical iterate produces the probability potential; it should be D⁻⁽ⁿ⁻¹⁾, with the corresponding height identity adjusted by D; affects a stated result.
- **Error** in favre-rivera-letelier-2006 at proof of Theorem 8, p.42: the source says pushing forward every uniform finite-set measure yields the uniform image-set measure; it should retain fibre multiplicities, or restrict to sets with equal fibre sizes; affects the proof.
- **Error** in juul-generic-iterates at Lemma 2.6, p.5: the source says characteristic of the fraction field determines equality in the discriminant bound for arbitrary Dedekind domains; it should use residue characteristic and the appropriate residue-separability/tameness conditions; affects a stated result.
- **Error** in jones-density-2008 at Proposition 4.3, p.13: the source says nonsquareness of the critical value suffices for an arbitrary quadratic leading coefficient; it should include the leading-coefficient factor in the norm test or impose the monic normalization; affects a stated result.
- **Error** in bell-ghioca-tucker-2010 at proof of Proposition 2.4, p.7: the source says an unramified pullback maps the maximal ideal onto itself setwise; it should assert equality of the extended ideal and the induced cotangent-space isomorphism; affects the proof.
- **Error** in bijmst18 at Conjecture 11.6, p.25: the source says the stated equivalence applies to any marked family, including constant non-PCF families; it should require non-isotriviality for this formulation; affects a stated result.
- **Error** in ghioca-tucker-zieve-2008 at discussion after Theorem 1.5, p.3: the source says infinitely many linear-exponential solutions force one base to be a root of unity; it should allow root-of-unity ratios and degenerate vanishing subsums; affects a stated result.

For reproducibility of the source corrections: (3+4i)/5 has both complex absolute values 1 but is not an algebraic integer; z² maps {0,1,−1} to {0,1} with weights (1/3,2/3), not (1/2,1/2); ℚ₂(√2)/ℚ₂ has e=2 and different exponent 3>e−1=1; f=2X²−2/3 has irreducible f and nonsquare f²(0)=2/9, but f²=(2/9)(6X²−6X+1)(6X²+6X+1); u↦u² on the local ring of Gₘ at 1 in characteristic 5 does not have u−1 in its setwise image; and 2ⁿ−2ⁿ=0 for every n although neither base 2 is a root of unity. The roadmap already avoids the mathematical source errors relevant to the sampled statements; R01 is a separate missing lift hypothesis.

