# Review of ArithmeticStatisticsPartVI (pull request #1176 at 26c32bd)

**Verdict:** accepted

No new findings. The previous blocking finding is repaired. This roadmap folder is ready for a human's final approval; this review does not approve or merge the pull request.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:15,45,2348,2352` imports RG2.0's Borel Haar formula. The completion and nonnegative-integrand adapters are separate derived applications; the submersion theorem remains here. The square-chart witness gives 1/8=(1/2)(1/4).

## Verified sound

Independent AI **incremental re-review of 13 changed lines since 6c914a4**, at head `26c32bd618e3023f6cd6e16921b651e5836c365e`. Reviewed the ownership sentence, supplier contract, completion and integral adapters, expanded submersion proof route, two added Checks, and affected local-boundary/orbit-integral consumers. All changes are in the README; `Suggested.lean` is byte-for-byte unchanged. The PR has no changes outside this folder. Initial and final worktree checks are clean.

Read the repository README and CONTRIBUTING, and consulted main's ReductiveGroupsPartII, MassFormula and Completed/EffectiveBounds for ownership and shape. No new copied passage, algorithm, route-specific restriction, sorry'd data, forbidden import or option override was introduced. Untouched mathematics and source checks are inherited explicitly from [review 4][previous], rather than represented as newly reviewed.

**Gate and elaboration.** The worker's gate at this head passed every check, including its targeted build. The independently rerun scanner gate printed:

```text
gate ArithmeticStatisticsPartVI: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separate dependency command printed:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. ReductiveGroupsPartII is on main; adding this precise contract does not introduce an upward supplier or a cycle.

Separately ran `lake build TauCetiRoadmap.ArithmeticStatisticsPartVI.Suggested`: success, 8993 jobs. Direct `lake env lean` elaboration of the acceptance file succeeded with exactly ten sorry warnings, no errors and no other warnings. A scratch copy with `#check @name` for all **25 declarations (15 definitions and ten theorems)** also succeeded. Compared the elaborated types with the README: the explicit prime, family, genus, field and positivity hypotheses remain present; finite-extension conditions remain in the real-bodied predicates. No signature changed. The initially reported unavailable object file did not prevent either build or elaboration in this run.

Each admitted theorem was tested on another scratch copy with closing `rfl`, `infer_instance` and `simp` branches: all ten still required `sorry`. The unchanged exact-library-lemma padding assessment is carried from review 4. No declaration or API padding was added by this repair.

**Headline coverage.** Unchanged endpoints are: two-Selmer mean 3; three/four/five means 4/7/6; second moment ≤15; marked mean ≤6; nonlifting mean ≥3/5; rank bounds 3/2, 7/6, 21/20 and low-rank proportion 19/24; conditional balanced refinements 177/200, 67/80, 1031/5000; hyperelliptic mean ≤2, order-k bounds, disappearance of bounded odd-degree points, positive index two and Sha consequences; conditional parity, simultaneous rank one, analytic rank-zero/weak-BSD and positive plane-cubic solubility. The ten statable headlines and the module docstring's explanations of missing higher-Selmer, Sha, Jacobian-torsor, root-number and modular-comparison carriers remain unchanged. The changed measure applications are supporting inputs to these headlines.

**Pinned declarations opened.** Paths below are relative to the named pinned library.

| Declaration and file | What was verified |
|---|---|
| `MeasureTheory.NullMeasurableSet.exists_measurable_superset_ae_eq`, `Mathlib/MeasureTheory/Measure/NullMeasurable.lean:199` | A null-measurable set has a measurable superset equal almost everywhere. With the Borel measurable space this is the required Borel representative; intersect it with the open chart domain. The residual difference lies in a measurable null hull. |
| `MeasureTheory.Measure.completion_apply`, same file, line 483; completion definition at line 470 | Completed and original measures have exactly the same outer-measure value on every set. This is not itself an image-measure or change-of-variables theorem. |
| `HasStrictFDerivAt.toOpenPartialHomeomorph`, `Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:117` | A strict derivative given by a continuous linear equivalence, over a nontrivially normed field and with complete domain, supplies the inverse chart. |
| `HasStrictFDerivAt.map_nhds_eq_of_surj`, same file, line 87 | Requires complete domain and codomain and derivative range equal to top. Supplies the neighborhood-image equality, not the Haar formula. |
| `lintegral_abs_det_fderiv_eq_addHaar_image₀`, `Mathlib/MeasureTheory/Function/Jacobian.lean:1105` | Null-measurable image formula under injectivity and differentiability; standing scalars are ℝ at line 100. It does not replace the Qp supplier. |
| `WeierstrassCurve.Affine.selmerGroup₂`, `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104` | Native subgroup intersects the norm kernel and all finite and supplied additional local conditions. Finiteness is not in its definition; the unchanged acceptance file supplies the real place and retains the existing finiteness contract. |

**Ownership and supplier resolution.** The resolver, checked against main `fa41b374` and the indexed 437 open roadmap pull requests, reports no unresolved cross-roadmap citation or roadmap Lean name. It does not check the pinned libraries; those were opened directly above. Used the roadmap `grep` and `show` commands, searched board packages and pinned measure-theory files by object, and read the relevant main supplier. This is a fresh semantic audit of the changed contract; unrelated ownership and supplier checks are carried forward.

- `TauCetiRoadmap/ReductiveGroupsPartII/README.md:640–668`, RG2.0, “Analytic charts and Haar Jacobians in characteristic zero”: analytic isomorphisms between open Kᵈ subsets, Borel source sets, nondiscrete locally compact characteristic-zero K, product additive Haar measure, and the normalized determinant. Lines 649–660 give precisely the formula and normalization now consumed. Lines 676–679 distinguish image from pushforward factors and include dimension zero. The repair cites this owner in all three required places.
- The new completion and nonnegative-integrand targets are derived adapters, not a second ownership claim for that Borel theorem. The submersion target uses a different-dimensional map and is not supplied by the inverse-chart statement. The object search found no separate owner for these Qp applications.
- `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:133,463,731` supplies the three internal dependencies named by the changed *Needs* line: soluble-family forms, the orbit Jacobian and the square-discriminant tail. The changed theorem does not assume the orbit-integral conclusion it helps prove.
- The consumers at lines 429 and 501–545 retain null-boundary hypotheses, nonsingular support, stabilizer weights and the factor abs(1/27)p. The imported formula has exactly their determinant direction. The zero-local-mass upper estimate remains separate from positive-denominator limiting ratios.
- No new Lean name was introduced, so this repair creates no fully qualified declaration collision. No supplier or merge-order file was edited.

**Source and seeded-sample scope.** All fifteen seeded section headings remain unchanged. §4.4's null-boundary argument consumes the changed submersion target, and §4.5's orbit integrals consume its completed-measure extension. Rechecked those dependencies and the changed supporting target; the remaining seeded source checks are carried from review 4. The downstream numerator and family-denominator statements in §§4.7–4.8 keep the same normalization. No changed locator is flagged unverified.

Fetched Reference 1 through the sources service from the legal arXiv copy explicitly cited by the README, **1006.1002v3**. Its preprint numbering, not the journal pagination, was checked:

| Passage | Source locator | Verification |
|---|---|---|
| Quartic orbit formula | bs-quartic line 1382, Proposition 3.7, printed p.25 | Continuous test functions, all primes, inverse-stabilizer weights and the determinant factor abs(1/27)p. |
| Inverse charts and measurable extension | bs-quartic lines 1687–1701, proof and Proposition 3.12, printed p.29 | Transverse plane, inverse-function route, stabilizer multiplicity and measurable orbit formula. The new general completed-measure adapter is derived from RG2.0 and the pinned completion lemmas, rather than attributed verbatim to this quartic proposition. |
| Selmer-numerator consumer | bs-quartic lines 1942–1968, Theorem 3.19 and proof, printed p.33 | Large-family nonidentity mean uses the same local integrals, weights and family denominator. |

The proof of the completion adapter is sound: choose a Borel representative inside U; its difference from A is contained in a Borel null set inside U. The supplied formula sends that null set to a null set; the chart homeomorphism sends the representative to a Borel set. Apply the same reasoning to the analytic inverse to obtain the completed measurability of compositions. Indicator identities extend to simple functions and increasing limits, including infinite integrals. For submersions, complementary coordinates give an invertible derivative, bounded product boxes avoid any finite-measure assumption on a whole fibre, and a countable chart cover suffices. These steps require no unsupported global injectivity or finite integral.

**Fresh adversarial computations.** Each row covers a changed assertion, its normalization, or a directly affected consumer. The numerical tests distinguish wrong models; they do not prove the asymptotic headlines.

| Statement | Instances tried | Values computed on both sides | Result | Change |
|---|---|---|---|---|
| Imported image factor, README:15,45,2348 | Q₂ square chart 1+4Z₂→1+8Z₂; identity | Source 1/4, image 1/8, determinant norm 1/2, hence 1/8=(1/2)(1/4). Identity gives 1=1·1. | Image factor agrees with RG2.0; inverse/pushforward factor 2 would give 1/2 incorrectly. | Previous R01 repaired. |
| Square-chart finite residues, README:2358 | Moduli 16,32,64,128,256 | Source/image counts 4/2,8/4,16/8,32/16,64/32; normalized masses always 1/4 and 1/8. | Images are exactly residues congruent to 1 modulo 8; derivative norm constant 1/2. | Recomputed. |
| Completion/null-image adapter, README:2348,2359 | A={1}; arbitrary subset N of a Borel null set in U; its inverse image in V | μ(A)=μ(f(A))=0; ∫A abs(2x)₂=0. μ(N)=0 forces μ(f(N))≤0, hence 0; inverse also gives 0. | Borel representatives changed by N change both sides by 0. | Completed sets genuinely included. |
| Nonnegative integral adapter, README:2348,2359 | Same chart, g=2, g=0, g=∞ | For g=2: 2/8=(1/2)·2/4=1/4. For g=0: 0=0. For g=∞ on the positive-mass chart: ∞=∞. | No finiteness hypothesis needed. | Derived from supplied formula. |
| Empty set and zero dimension, README:2359–2360 | A=∅ with g=∞; Qp⁰ identity on singleton | Empty integral 0=0, including ∞·0=0. Singleton mass and empty determinant both 1, so 1=1·1. | Only null subset in dimension zero is ∅; preimage mass 0. | Added Checks hold. |
| Submersion/null-preimage, README:2350,2360 | Projection Q₂²→Q₂ on Z₂²; B={0} | Congruence approximations have masses 1/2,1/4,1/8,1/16,…→0; exact fibre mass 0·1=0. Derivative rank 1 equals target dimension 1. | Countable box/chart route gives mass 0 on all U. | Correct distinct application. |
| Surjectivity and dimension guards, README:2350,2360 | Constant map to 0 on Z₂²; map Q₂⁰→Q₂ | Constant preimage of {0} has mass 1, not 0; derivative rank 0<1. The dimension-zero source also has preimage mass 1 and rank 0<1. | Both counterexamples fail the explicit surjectivity hypothesis. | No missing hypothesis. |
| Strict inverse-chart input, README:43,2352 | f(x)=x² at 1; f=0 | Derivatives 2≠0 and 0. The first chart gives mass 1/8; the constant map sends the source mass 1/4 to singleton mass 0. | Topological input alone cannot supply the determinant identity. | Correct roles for Mathlib and RG2.0. |
| Discriminant-nullity and boundary application, README:2350–2362 | Zero quartic; x⁴−y⁴; closed C=Z₂ minus a dense open O of mass <1/2 | Discriminants 0 and −256 show the discriminant polynomial is nonzero. μ({Δ=0})=0. For C, μ(∂C)=μ(C)>1/2, not 0. | Proper polynomial zero locus is null; arbitrary closed sets need not have null boundary. | Existing boundary guard preserved. |
| Zero family mass, README:2350,2363 | Local invariant specification of mass 0 | Main term coefficient 0; corresponding nonnegative local integral 0. Formal ratio 0/0 is not the positive-family mean 3. | Direct upper estimate remains applicable. | No division by zero introduced. |
| Quartic integral consumer, README:501–517 | p=3, invariant mass 3⁻⁵ | abs(1/27)₃=27; 27·(8/9)·3⁻⁵=8/81=24/3⁵. At p=2 the group-volume factor is 6/8=3/4. | Supplier and consumer normalizations agree, including small primes. | Formula unchanged. |

**Carried-forward adversarial rows.** The following two tables carry the untouched rows from [review 4][previous]. Its own earlier provenance and historical R/L line numbers are retained; they are not current-head locators. Rows newly superseded above are omitted from its first table. Every retained row cites review 4, including rows it inherited from earlier reviews. One numerical transcription in its `minimalShortPairs` row is corrected here: at (−1,0), −4A³−27B²=4, not −4; the nonsingularity conclusion and roadmap statement were already correct.


| Statement | Instances tried | Values computed on both sides | Result | Change |
|---|---|---|---|---|
| Division polynomial separability, line 44 ([previous]) | p=5 over Q₅, versus reduction in characteristic 5 | Over Q₅, 5≠0; deg ψ₅=(25−1)/2=12 with 12 distinct x-coordinates and 24 nonzero geometric points. In F₅, 5=0 fails the hypothesis. | No confusion of residue and field characteristic. | Retain explicit field hypothesis. |
| General local quotient, line 1879 ([previous]) | p=5, split Tate q=11⁵; q′=11⁵(1+11ʰ), h≥1 | Valuation factor Z/5 and unit factor μ₁₀/μ₁₀⁵ both have size 5: quotient 25 on both curves. Their rational torsion images both have size 25. | Bad reduction and ℓ≠p included. | Previous R01 repaired. |
| Actual torsion subgroup, lines 1883, 1892 ([previous]) | q=11²⁵ over Q₁₁ | Quotient order remains 5·5=25; q^(1/5)=11⁵ has valuation class 0 mod 5, so torsion image order is 1·5=5. For q=11⁵ that class is 1, giving 5·5=25. | Cardinality alone cannot determine marked subgroup. | Retain subgroup compatibility. |
| Reduction/formal-group route, line 1881 ([previous]) | p=5, ℓ=2: y²+y=x³; ℓ=3: y²=x³−x | Affine residue counts 2 and 3, plus infinity give 3 and 4. Their quotients by 5 and 5-torsion each have order 1; the prime-to-5 formal groups contribute 1. | Small residue primes retained. | Both new Checks hold. |
| p=ℓ local quotient, line 1894 ([previous]) | Good ordinary Q₅ curve, rational 5-torsion order 1 or 5 | Quotient order=5·torsion order gives 5 or 25, respectively; E′=E sends 0 to 0 and every class to itself. | Reduction cardinality alone is insufficient. | Retain local-index factor. |
| Nearby torsion-root comparison, line 1883 ([previous]) | p=5, each pair P and −P | 24 nonzero points form 12 pairs; ordinate difference is 2y+a₁x+a₃≠0. If it were 0, P=−P and 2P=5P=0 would force P=0. | Distinct ordinates and unique root neighborhoods exclude incorrect matching. | Retain Galois-equivariant matching. |
| Quinary comparison and local-label means, lines 1898–1926 ([previous]) | #Q=5 or 25; singleton, all or empty labels | Mean per singleton 5/5=1 or 5/25=1/5; all labels give 5, empty labels 0. Invariant factors 6⁴=1296, 6⁶=46656 agree with Part II. | Actual torsion labels and source scaling preserved. | No new defect. |
| Simultaneous rank-one consumer, lines 1965–1979 ([previous]) | Twist D=−39 | Height factor 39⁶; count factor (39⁶)^(5/6)=39⁵=90224199; density bound (cF/cE)/(2·90224199)>0. | Quotient repair leaves this deduction unchanged. | Retain conditional modular input. |
| Cubic evaluation convention, line 2035 ([previous]) | e₀,e₄,e₅,e₉ | e₀(2,0,0)=8; e₉(0,0,2)=8; e₄(1,2,3)=6; e₅(1,2,3)=9. Reversal gives 0 for the endpoint tests; multinomial weighting gives 36 instead of 6. | Distinguishes order and normalization. | Previous R03 repaired. |
| Additivity and homogeneity, lines 2040–2041 ([previous]) | e₀+e₄ at (1,2,3); e₄ at twice that vector | 7=1+6; 48=2³·6, versus degree-two value 24. At scalar −1, −6=(−1)³·6; at scalar 0, 0=0³·6. | Both arbitrary-input identities also proved in the scratch Lean probe. | Retain API. |
| Projective zero exclusion, lines 2041, 2050 ([previous]) | Zero coordinate vector; zero cubic; e₀ | Every cubic at 0 gives 0; zero cubic at (1,0,0) gives 0 while e₀ gives 1. e₀(0,1,0)=0 with nonzero vector. | Nonzero projective witness essential; singular cubics still allowed in the raw count. | Retain. |
| Plane-cubic density consumer, lines 2052–2066 ([previous]) | Inclusive cube T=1; curve cutoff T⁶ | Denominator (2·1+1)¹⁰=59049; curve-count exponent 6·(5/6)=5. A cubic at the zero vector gives 0 but fails the required nonzero witness. | Evaluator repair preserves the headline's carrier and denominator. | No Lean statement change. |

| Statement and provenance | Instances and computed values on both sides | Result / change |
|---|---|---|
| Rational orbit weight, R77 ([previous]) | S₃ acting on three points, Γ=1, Y={0}: transporter size 2, w=2, orbit count n=1. Γ=G gives w=n=1; empty Y gives both 0. | Retain; stabilizer factor is necessary. |
| Soluble forms/family, R127 ([previous]) | `x³y−16xy³`: I=48,J=0, scaled invariants (3,0), curve A=−1,B=0; (x,y,z)=(1,0,0) is a projective point. | Retain scale 16/64. |
| Local masses, R165 ([previous]) | Full family: odd p≠3 mass 1−p⁻¹⁰; at 3, 3⁻⁴(1−3⁻¹⁰); real positive/negative discriminant volumes 8/5 and 32/5, total 8. Empty invariant set gives integral 0. | Retain factor 1/81 and zero-mass guard. |
| Average, R211 ([previous]) | Values 1,3 on a two-element sublevel give sum 4/card2=2; empty cutoff gives 0/0=0 in Lean. Constant c on a nonempty sublevel gives c. | Retain eventual nonempty hypothesis for limiting identities. |
| Stabilizer sum, R259 ([previous]) | S₃ example: one Γ-orbit, stabilizer ratio 2/1=2=w. Free C₆ action, Γ of order2: each summand 1 and w=n=3 for Y=all. | Retain both nonabelian and cyclic controls. |
| Cartan, R281 ([previous]) | p=2, k=0,1,2: indices 1,3,6; p=3,k=1,2: 4,12. Scalar pI has valuation difference 2−2=0. | Retain k=0 separately and PGL scalar invariance. |
| Nonintegral translates, R301 ([previous]) | f=p²x⁴+y⁴ has Δ=256p⁶; diag(p⁻¹,1) under det⁻² action sends it to x⁴+p²y⁴, integral. For p=3, v₃Δ=6≥2. | Retain determinant twist and square divisibility. |
| PGL₂ class number one, R319 ([previous]) | Finite adelic lattice pZₚ⊕Zₚ at one prime is matched by diag(p,1) over Q. A scalar pI gives the identity in PGL₂. | Retain GL₂ lift and rational integral intersection. |
| Global weight product, R339 ([previous]) | Only local weights 2 and 3 nontrivial: product 6, six independent coset choices. Empty exceptional set: product 1, one choice. | Retain restricted product/finiteness. |
| Finite quartic count, R359 ([previous]) | Exhaustive coefficient enumeration: q=2,3,5,7 gives 12,144,2400,14112; q²(q+1)(q−1)² gives exactly those four numbers. | Retain q>1; characteristic-two count does not assert a smooth double cover. |
| Finite-field solubility, R377 ([previous]) | Enumerated nonsingular quartics at p=3,5,7: soluble counts 144,2400,14112 equal total counts. Group doubling for C₂×C₂: quotient4/torsion4=1. | Retain odd characteristic and separate p=3 argument. |
| Away from square discriminant, R397 ([previous]) | x⁴−y⁴ has Δ=−256, v₃Δ=0 and point (1,1,0). The stated insoluble ternary-residue example has Δ=28116, v₃Δ=2≥2. | Retain hypothesis; obstruction is outside good locus. |
| Local constancy, R419 ([previous]) | For f₀=2x⁴+4x²y²+3xy³+2y⁴ over F₃, all four projective directions have value2 up to fourth-power scaling; squares are {0,1}. Same values persist modulo3. | Retain insoluble ball; Δ≠0 needed for finite weights. |
| Real quartics, R437 ([previous]) | x⁴+y⁴ is everywhere positive and soluble; −x⁴−y⁴ is negative on every nonzero vector and insoluble; x⁴−y⁴ has real zeros. | Retain positive/negative definite distinction. |
| Orbit Jacobian, R457 ([previous]) | At the stated section, the 5×5 determinant is −1/27; real absolute value1/27 and 3-adic absolute value27. | Retain absolute-value normalization. |
| PGL₂(Zₚ) volume, R475 ([previous]) | p=2: #PGL₂(F₂)=6, 6/2³=3/4. p=3: #PGL₂(F₃)=24, 24/3³=8/9. | Equals 1−p⁻². |
| p-adic change of measure, R493 ([previous]) | At p=3, test invariant mass3⁻⁵ gives 27·(8/9)·3⁻⁵=8/81; coefficient count gives 24/3⁵=8/81. | Retain the p=3 Jacobian factor. |
| Weighted measure, R513 ([previous]) | Two integral representatives in a rational orbit with equal stabilizer ratios give m=2; weights1/2+1/2=1. Omitting weights gives2. | Retain rational-orbit weighting. |
| Local soluble mass, R531 ([previous]) | Constant local quotient/torsion ratio2 at p=2 gives 2 times invariant mass; at p=3 ratio1 gives the same mass. A zero invariant mass gives zero on both sides. | Retain support and integral domain. |
| Finite-index Zₚ subgroup, R551 ([previous]) | G=Z₂×C₂: quotient4,torsion2,ratio2. G=Z₃×C₂²: quotient4,torsion4,ratio1. | Retain prime-dependent factor. |
| Local two-descent, R571 ([previous]) | Dimension-one p=2 gives abs(2)₂⁻¹=2; p=3 gives abs(2)₃⁻¹=1. Dimension g=2 would give4 at2, not2. | Retain dimension-one specialization of supplier. |
| Real index, R591 ([previous]) | Two components: quotient2/torsion4=1/2. One component: quotient1/torsion2=1/2. | Retain both real types. |
| Mass ratios, R611 ([previous]) | At all finite odd primes factor1; at2 factor2; at∞ factor1/2. Combined exceptional factor2·1/2=1. | Retain; no omitted dyadic prime. |
| Solubility by local conditions, R633 ([previous]) | A rational projective point maps to all local points; f=−x⁴−y⁴ fails the real condition and global condition simultaneously. Empty required local set makes the intersection empty. | Retain real completion and intersection direction. |
| Selmer/orbit numerator, R651 ([previous]) | E:y²=x³−x has N=4, hence N−1=3. Its identity cover has a rational linear factor, hence contributes0 to the irreducible numerator. | Retain exceptional torsion error, not equality curve by curve. |
| Bad forms, R669 ([previous]) | f₀ above: insoluble at3 and Δ=28116=9·3124 with3 not dividing3124, so v₃Δ=2. At p≥5 a nonsquare-divisible discriminant has valuation0 or1. | Retain square-divisibility conclusion. |
| Real orbit count, R687 ([previous]) | Δ>0: 2·(1/27)·2ζ(2)·(8/5)/4=(8/135)ζ(2). Δ<0: (1/27)·2ζ(2)·(32/5)/2=(32/135)ζ(2). | Both equal the stated mass expression. |
| Invariant lattice count, R707 ([previous]) | L=3Z×27Z: k=9,m=27 gives k/m²=1/81. Full lattice signs: 8/5+32/5=8. | Retain area and lattice index. |
| Square-discriminant tail, R725 ([previous]) | A=B=0 has D=0 and infinitely many square divisors, so is excluded. For nonzero D, p² divides D implies p≤√abs(D); at M=10000 the elementary tail is ≤1/10000. | Retain nonzero D and finite prime range. |
| Short cubic uniformity, R743 ([previous]) | x³−5y³ has Disc=−675; x³−40y³ has Disc=−43200=8²·(−675), index8, unchanged maximality at5. | Retain suborders nonmaximal away from p. |
| Elliptic uniformity, R759 ([previous]) | x³−x has Disc=4 and is counted at2 despite reducibility. For p² greater than the discriminant cutoff, both the source count and the restricted count are0. | Retain reducible contribution and nonzero discriminant. |
| Large-family denominator, R779 ([previous]) | Full invariants: area8 times density1/(81ζ(10)) gives 8/(81ζ(10)). A zero local Haar mass gives constant0; no division by that constant is used. | Retain positivity for consumers. |
| Soluble orbit sieve, R803 ([previous]) | If only primes2,3 have nonunit factors a,b, truncations beyond3 have product ab; for all weights1, product1. A weight identically0 at one prime gives total0. | Retain nonnegative truncation and same family. |
| Selmer mass product, R823 ([previous]) | Nonidentity mean: (real/finite index product1)·Tamagawa2=2; total mean1+2=3. | Retain separate identity class. |
| PGL₂ Tamagawa, R841 ([previous]) | 2ζ(2)·∏ₚ(1−p⁻²)=2·ζ(2)/ζ(2)=2; local p=2 factor3/4. | Retain ζ(2)≠0 and normalized measures. |
| Mean two-Selmer, R859/L138 ([previous]) | Positive denominator cX^(5/6): numerator (3c)X^(5/6), ratio3. With c=0 the same formal division is0/0, not3. | Lean excludes the zero-mass case. |
| Positive masses, R885 ([previous]) | Minimal pair (−1,0) is nonsingular with H=4; any compatible fixed residue cylinder has positive p-adic measure. Empty cylinder has measure0 and fails nonemptiness. | Retain actual congruence union, not marginal product. |
| Congruence-family mean, R905/L146 ([previous]) | A disjoint union of counts c₁X^(5/6),c₂X^(5/6) and Selmer sums3c₁X^(5/6),3c₂X^(5/6) gives ratio3; c₁=1,c₂=2 gives9/3=3. | Retain actual denominator weights. |
| Rational 2-torsion density, R927 ([previous]) | Monic cubic x³−x has roots−1,0,1, all integral; x³+x+1 has no integral root (possible roots ±1 give1,−1). | Rational-root route discriminates the torsion locus. |
| Rank from mean2, R945/L155 ([previous]) | r=0,1,2,3: 2r=0,2,4,6 versus2ʳ=1,2,4,8. Mean2ʳ≤3 gives mean r≤3/2. | Retain finite-cutoff inequality. |
| Sha two-rank, R967 ([previous]) | Selmer dimension s=r+t+a: (r,t,a)=(0,2,0) gives s=2; (0,0,2) also s=2. In either case2a≤2ˢ, respectively0≤4 and4=4. | Retain Sha/torsion correction; s alone is not rank. |
| Height moments, R987 ([previous]) | Indicator of evens has both densities1/2. Alternating dyadic blocks have lower1/3,upper2/3; complement upper2/3, sum4/3>1. Constant2 has moment m=2 equal4. | Retain limsup subadditivity, not linearity. |
| Rational p-torsion density, R1041 ([previous]) | Zero group has p-torsion dimension0; C₃ at p=3 has dimension1, quotient order3, while rank remains0. | Retain torsion correction and density-one restriction. |
| Mean three-Selmer, R1063 ([previous]) | σ(3)=1+3=4. For finite E(Fp), #E/3E divided by#E[3]=1, including C₃ (3/3) and C₂ (1/1). | Retain stack mass, not one isomorphism class per j. |
| Rank7/6, R1083/L167 ([previous]) | r=0,1,2,3: 6r−3=−3,3,9,15 versus3ʳ=1,3,9,27; (4+3)/6=7/6. | Retain. |
| Mean four-Selmer, R1103 ([previous]) | σ(4)=1+2+4=7; not second moment15. In C₄, element2 has order2 and reduction0; rational two-torsion can instead map nontrivially under the curve's Kummer comparison. | Retain induced-cover criterion and torsion exception. |
| Mean five-Selmer, R1123 ([previous]) | σ(5)=1+5=6; nonidentity mean5. Scalars (λI₅,λ⁻²I₅) satisfy (det g₁)²det g₂=λ¹⁰λ⁻¹⁰=1. | Retain central quotient and correct group. |
| Marked factorial bound, R1143 ([previous]) | N=1,2,4 gives (N−1)(N−2)=0,0,6; N(N−1)=0,2,12. Bound8 plus2·mean(N−1)=4 gives12. | Retain removed/restored classes and ≤, not equality. |
| Second moment, R1176/L192 ([previous]) | N²=(N−1)(N−2)+3N−2: N=1 gives1=0+3−2; N=4 gives16=6+12−2. Bound8+9−2=15. | Retain large OR finite-congruence family. |
| Admissibility, R1198 ([previous]) | A fixed local forbidden set away from all soluble reductions violates admissibility if it excludes a soluble model; the all-model condition accepts every soluble model and has local mass1 before smoothness. | Retain actual local solubility and positive masses. |
| Degree-one comparison, R1226 ([previous]) | Effective degrees1 and2 have gcd1; only even degrees have gcd2. A rational degree-one Picard point need not be an actual divisor until the Brauer obstruction0 is proved. | Retain obstruction and index-divides-two hypothesis. |
| Generic Weierstrass class, R1236 ([previous]) | If J(Q)[2]=0 and W[2]≠0 lies in J(Q)/2J(Q), rank0 would give quotient1 and no nonzero class; rank1 gives quotient2. | Retain generic exceptions and nonzero class. |
| Pencil global weight, R1254 ([previous]) | Local weights2,3 give global6, reciprocal1/6; an insoluble local component has weight0. | Retain exact local/global product and no inversion of0. |
| Pencil/Selmer count, R1270 ([previous]) | Empty torsor has0 elements; trivial group has1. A torsor under a four-element group, if nonempty, has4 elements. | Retain torsor rather than group identity convention. |
| Hyperelliptic local ratios, R1282 ([previous]) | g=1: real1/2,dyadic2; g=2: real1/4,dyadic4; products both1. | Retain dimension-dependent factors. |
| Pencil measure comparison, R1296 ([previous]) | Rescaling a rational top form by3 multiplies its real norm by3 and its 3-adic norm by1/3; global product1. | Retain all places and the same invariant form. |
| Central quotient Tamagawa, R1306 ([previous]) | n=2g+2: g=1 gives n=4, even; supplied τ=2. Split adjoint PSO₄ has τ=2·2=4, different from this quotient. | Retain group-scheme quotient distinctions. |
| Hyperelliptic upper count, R1320 ([previous]) | Product of local ratios1 timesτ2 gives upper mean2; dropping a nonnegative tail can prove ≤2 but cannot prove ≥2. | Retain one-sided conclusion. |
| Restricted Selmer set, R1338 ([previous]) | S={0,1,2}: one image{0,2} yields2 elements; images{0,1},{1,2} yield intersection{1}, card1; no places yields3, empty image yields0. | Retain intersection, monotonicity and empty-index case. |
| Odd component bound, R1372 ([previous]) | S₃(1)=3<4; S₅(3)=5+10=15<16; S₃(9)=4; S₁(1)=1; S₀(0)=0 whereas2^(0−1)=1 in Nat. | Retain m>0 for saturation. |
| Real effective image, R1410 ([previous]) | m=4,k=1:4/8=1/2; k=3:8/8=1. A conjugate pair contributes parity0, not two independent real components. | Retain upper bound and separate m=0 case. |
| Number-field count, R1428 ([previous]) | K=Q,N=5,T=1,unit ideal:3⁵=243 vectors. One residue at normq has density q⁻⁵; quadratic K has exponent10, not5. Empty residues give0. | Retain coordinate degree rN. |
| Number-field tail, R1447 ([previous]) | Empty Z gives0 at every cutoff. Z={a₁=a₂=0} has residue proportionq⁻²; divisor{a₁=0} hasq⁻¹ and does not meet codimension2. | Retain fixed envelope and excluded finite vertical fibres. |
| Twist height, R1465 ([previous]) | K=Q, α=1/2,t=2 givesβ=2 and H(βf)=2H(f); direct αf can have half-integral coefficients. α=1 gives both bounds1. | Retain square denominator clearing. |
| Isogeny quotient, R1483 ([previous]) | Identity has Q=1 and quotient1. For [5], rank1 plus one divisible Sha summand gives Q=5²=25; omitting the latter gives5. | Retain divisible kernel and reduced-primary terms. |
| Selmer dual, R1502 ([previous]) | Trivial group acting on Qp² gives dual dimension2. A finite p-primary Sha group tensors to0; one Qp/Zp summand contributes dimension1. | Retain without assuming finite full Sha. |
| Regulator parity, R1522 ([previous]) | Zero Brauer relation gives constant1, valuation0, empty multiplicity sum0. Exponents2 contribute even valuation, while exponent1 contributes the valuation itself. | Retain nᵢ and p=2 Sha factor. |
| Biquadratic parity, R1540 ([previous]) | Trivial character: 1·(1/2)⁻³·(1/4)²=1/2, square class2. Each nontrivial character gives2. Quotient1/2 has valuation−1≡1. | Retain all four characters and inversion parity. |
| Four-twist local parity, R1556 ([previous]) | Split toric rank1 contributes local quotient1/2, odd valuation; good full-decomposition place contributes square class1, even valuation0. | Retain extra twist-point condition for finite Selmer dimension. |
| Mod-eight family, R1573 ([previous]) | x² coefficient under twists1,−1,2,−2 is1,7,2,6 modulo8: four distinct classes. At n=3, reduced equation is Y²+xY=x³. | Retain corank conclusion, not automatic finite-dimension parity. |
| Odd-residue models, R1583 ([previous]) | f̄=x(x−1)(x−2) overF₅ has three simple roots. Split node f̄=x²(x−1)(x−4): h(0)=4 square, h has roots1,4. h(0)=2 would be nonsquare. | Retain simple-root and split-node conditions. |
| Full corank parity densities, R1597 ([previous]) | n=3:8⁻⁴2⁻⁴=2⁻¹⁶=1/65536; n=4:8⁻⁵2⁻⁵=2⁻²⁰. Four residue blocks are disjoint. | Retain lower density and Sha-dependent rank identification. |
| Admissible parities, R1607 ([previous]) | Four twist multiplicity≤4 with height factorC gives a positive density times C⁻ʳᴺ/4. Identity twist has factor1; no positive-density claim follows from mass0. | Retain prime-ideal and fixed-envelope hypotheses. |
| Hyperelliptic mean2, R1625 ([previous]) | For g=1,2, factors(1/2)·2·2 and(1/4)·4·2 both give2. Empty Selmer sets contribute0. | Retain ≤2 and locally actual Div¹-soluble family. |
| Strict order-k mean, R1643 ([previous]) | m=4,k=1 real fraction1/2; on that stratum mean upper contribution is2·1/2=1<2. At k=3 fraction1 gives no strictness from that stratum. | Retain k<g and positive strict strata. |
| Vanishing order-k mean, R1653 ([previous]) | Fixed k=1: m=4 ratio4/8=1/2; m=8 ratio8/128=1/16; m=16 ratio16/32768=1/2048. | Retain height limit before genus limit. |
| Bounded odd-degree points, R1669/L261 ([previous]) | A point over degree1 meets every m≥1; no degree can satisfy1≤degree≤0. −x⁴−1 has no real point, hence no point over an odd-degree number field. | Retain m>0 and smooth coefficient denominator. |
| Empty Selmer sets, R1729 ([previous]) | Counts N=100,E=20,B=0 imply T≥240−4Z. Upper average2 means T≤200 asymptotically, hence Z≥10=E/2. | Retain δ/2 and exceptional-count error. |
| Positive index2, R1739/L270 ([previous]) | Hyperelliptic degree2 map gives index dividing2; no odd degree rules out1, leaving2. A rational point would give degree1 and index1. | Retain actual local-point family. |
| Nontrivial Sha[2], R1751 ([previous]) | A nonzero torsor class x with2x=0 has order2; zero class has rational trivialization. Empty Pic¹(Q) selects the former. | Retain locally trivial class and no full-Sha finiteness. |
| Empty or infinite Pic¹, R1761 ([previous]) | Finite odd group C₃ has quotient by2 of order1; Z has quotient order2 and infinitely many points. | Retain nonzero Kummer class as rank witness. |
| Two-prime criterion, R1771 ([previous]) | p=5,q=3: (5/3)=−1 and (3/5)=−1. Their distinct nonsquare Q₂ square classes generate degree4, so two has one prime above it. | Retain added dyadic hypotheses. |
| Rank-one criterion, R1792 ([previous]) | F₅ line with injective quotient restriction has kernel dimension0; zero restriction has kernel dimension1. Only the former meets local non-torsion condition. | Retain local-image test and modular data. |
| Twisted criterion, R1808 ([previous]) | D=−39: D≡1 mod8, D≡1 mod5, D≡3 mod7; 2 and5 split,7 inert. Selmer dimensions0+1 give K-dimension1. | Retain theorem over E/K, not squarefree-conductor claim for twist. |
| Rank-one family, R1824 ([previous]) | (−208,464): d=117901=7·16843, Δ₀ mod39=10=7²,864B mod7=6 nonsquare,#E(F₅)=7. (−208,656): corresponding residue1 square. | First accepted, second excluded as stated. |
| Family properties, R1858 ([previous]) | Good integral model y²+y=x³−13x+7 has discriminant117901. Dyadic cylinder mass1/(32·64)=1/2048. (−136,16) has v₂c₄=7,v₂Δ=12 and is excluded. | Retain corrected v₂A=4. |
| Local label equidistribution, R1890 ([previous]) | #Q=5: singleton mean1; #Q=25: singleton mean1/5; all labels mean5; empty labels mean0. | Retain nonidentity mean5, not6. |
| Trapped-line count, R1909 ([previous]) | Onto F₅ map from F₅² has kernel5, hence4 nonzero; from F₅³ kernel25, hence24 nonzero. Dividing by4 gives coefficients1 and6. | Retain dimension thresholds2 and3. |
| Saturated count, R1926 ([previous]) | p=5 gives1−2/(5−1)=1/2; p=3 gives0. Original dimensions1 and0 are disjoint. | Retain p=5 in positive bound. |
| Simultaneous rank one, R1943 ([previous]) | Height factor39⁶ gives count factor(39⁶)^(5/6)=39⁵=90224199; bound(cF/cE)/(2·90224199)>0. | Retain height loss and conditional analytic conclusion. |
| Soluble generic three classes, R1961 ([previous]) | Rank-one Z modulo3 has three classes, two nonzero. Rank-zero trivial group has one class, zero nonidentity classes. | Retain positive-rank hypothesis. |
| Cubic height transport, R1977 ([previous]) | A=−1,B=0: H_AB=1,H_IJ=27. A=0,B=1: H_AB=1,H_IJ=729/4. Scalar λ substitution contributesλ³·λ⁻³=1. | Retain bounded, not constant, height comparison. |
| Soluble fundamental count, R1994 ([previous]) | Total retained weighted mass c₃t¹⁰/2 and multiplicity boundM yields at least c₃t¹⁰/(2M) vectors. For c₃=M=1,r=1, cube proportion lower coefficient1/2048. | Retain cusp-count control, not volume alone. |
| Balanced3 rank0, R2029 ([previous]) | With parity halves, minimal Selmer costs are1,9 on even part and3 on odd: mean≥6−8p₀; mean4 forces p₀≥1/4. | Retain finite-height reasoning. |
| Balanced3 rank1, R2046 ([previous]) | Odd dimensions1,≥3 cost3,≥27; even minimum1 gives mean≥14−24p₁. Mean4 forces p₁≥5/12. | Retain finite Selmer rank versus algebraic rank distinction. |
| Positive3 ranks, R2063 ([previous]) | A family of densityδ>0 with within-family bound1/4 gives full lower densityδ/4>0; δ=0 gives0 and is insufficient. | Retain positive family denominator. |
| Analytic rank0 criterion, R2080 ([previous]) | Sel₃=0 implies corank0; ordinary divisibility implication L(1)=0⇒corank≥1 then rules out L(1)=0. | Retain ordinary/residual-ramification hypotheses. |
| Positive analytic rank0, R2097 ([previous]) | Intersecting densityδ/4 with a density-one residual-irreducible locus keeps lower densityδ/4; arbitrary zero-density exceptional weighted sums would not suffice elsewhere. | Retain the supplied family and density-zero exception. |
| Positive weak BSD, R2114 ([previous]) | Rank0 and L(1)≠0 give ord₁L=0=rank; this is not the full leading-coefficient formula. | Retain stated weak conclusion. |
| Nonlifting, R2133 ([previous]) | a=0,1,2,3: 5·2ᵃ−8=−3,2,12,32 versus4ᵃ−2ᵃ=0,2,12,56. Lift mean≤12/5; 3−12/5=3/5; (3/5)/3=1/5. | Retain element denominator. |
| Basic5 bounds, R2149/L178 ([previous]) | r=0,1,2,3:20r−15=−15,5,25,45 versus5ʳ=1,5,25,125. (6+15)/20=21/20; 1·(19/24)+25·(5/24)=6. | Retain rank and low-rank bounds. |
| Balanced5 bounds, R2168 ([previous]) | Distribution (r0,r1,r2)=(3/8,1/2,1/8): mean size3/8+5/2+25/8=6; mean rank3/4; low-rank7/8. | All three bounds attained by the extremal distribution. |
| Dyadic balanced-family masses, R2185 ([previous]) | Four column sums:2336,1153,370,215 in4096ths; total4074/4096=2037/2048. Missing mass9/2048. | Matches stated Table3 aggregation. |
| Triadic balanced-family masses, R2185 ([previous]) | Column numerators257831,972,43083,52186 over354294; sum354072/354294=59012/59049. | Matches stated Table4 aggregation. |
| Finite labels F₁,F₂, R2185 ([previous]) | After minimality normalization: F₁=71495761/120812208≈.591793; F₂=48711683/120812208≈.403202. | Retain actual label rule. |
| Prime factors/tail, R2185 ([previous]) | p=7: a=2358/2401,b=42/2401,total2400/2401. Cutoff10000: finite F₃=.9668939841114075,F₄=.03260631699033738; multiply.9999 gives.9667972947129964,.03260305635863834. | Both exceed repaired rational lower bounds. Separately, a ceiling-rounded cutoff10⁶ and r-tail≤2/10⁶ gives full F₃<.966889459<.96689, confirming the source numerical slip. |
| Balanced union density, R2185 ([previous]) | F₁·.966797+F₂·.032603=55377570379783/100676840000000=.5500527269209383>.55005. | Previous R02 repaired with explicit margin. |
| Full mean rank, R2209 ([previous]) | .75·.55005+1.05·.44995=176997/200000=.884985<177/200. | Retain conditional conclusion and strict margin. |
| Full low-rank, R2226 ([previous]) | (7/8)·.55005+(19/24)·.44995=201001/240000≈.83750417≥67/80=.8375. | Retain. |
| Full rank0, R2243 ([previous]) | (3/8)·.55005=33003/160000=.20626875≥1031/5000=.2062. | Retain. |
| Marked Jacobian mean, R2262/L202 ([previous]) | Marked numerator N(N−1), denominator N−1: N=1 gives0/0 only at empty marking; N=4 gives12/3=4. Asymptotic bound12/2=6. | Retain family-of-pairs denominator. |
| Cubic Thue bound, R2288 ([previous]) | v=x(x−y)(x+y): v(a,b)=1 forces integer factor triple all±1 with product1; solutions(1,0) only, count1≤12. v=x³ is excluded by Disc0. | Retain reducible nonsingular cubics. |
| Modular data/twists, R2316 ([previous]) | Twist byD multiplies A,B byD²,D³ and height byabs(D)⁶; D=−39 gives39⁶. Isogeny differential scaleu changes log byu, squared formula byu². | Retain supplied isogeny and all Euler factors. |
| Ordinary divisibility, R2330 ([previous]) | In Λ[1/p], (T²)⊆(T): vanishing of generatorT at augmentation forces vanishing ofT². Reverse inclusion would permit (T)⊆(1), whose right generator is nonzero. | Retain containment direction and control hypotheses. |
| Anticyclotomic implication, R2346 ([previous]) | One-dimensional Selmer space injects into both local spaces: each restriction kernel0. A zero restriction instead has kernel dimension1. | Retain strict local group, not dimension alone. |
| Heegner logarithm/low rank, R2362 ([previous]) | Nonzero logarithm squared times nonzero constant is nonzero; logarithm0 gives0. A product of L-functions with vanishing orders0 and1 has order1. | Retain isogeny factors and exact hypotheses; auxiliary source limitation below. |
| Real-root support, R2380 ([previous]) | Uniform[−1,1] variance1/3; √3 scaling gives1 and identical roots. Degree4 cannot have exactly3 simple real roots: probability0 by conjugation. | Retain compatible fixed counts; not growing endpoint count. |
| Character nonvanishing, R2384 ([previous]) | p=3,n=1: primitive character of cyclic order9 has order9, not3. A character factoring through the preceding order3 layer is excluded. | Retain primitive/tame distinction and all odd p. |
| Character Selmer multiplicity, R2400 ([previous]) | p=3,n=1: rational primitive dimension(3−1)·3=6; D₆ two-dimensional constituent occurs3 times, an odd multiplicity. Extra divisible Sha line would change1 to2. | Algebra checked; Nekovář text unavailable below. |
| Elliptic p-parity, R2416 ([previous]) | (s,t)=(0,0) gives even0; rational3-torsion with corank0 gives(s,t)=(1,1), still even0. Dropping t would give odd1. | Retain torsion correction and conditional modular data. |
| Brauer constants, R2430 ([previous]) | Zero relation constant1. C₂×C₂ relation: trivial character constant1/2 and each other character2, all square class2. Pairing rescaleu changes product byu^(1−3+2)=1. | Retain pairing independence and dual-pair square class. |
| `minimalShortPairs`, L58 ([previous]) | (−1,0): D=4≠0, minimal; (0,0): D=0 excluded; (−16,0) fails p=2 because16 divides A and64 divides0. | Retain. |
| `localPairClosure`, L63 ([previous]) | Empty F gives closure∅; singleton minimal pair gives one closed point in Zₚ², Haar mass0. | Retain; nonempty is not positive mass. |
| `pairHaar`, L69 ([previous]) | Whole compact group mass1; p² residue classes modulo p each mass p⁻², summing1. At p=2:4·1/4=1. | Retain normalization and prime binder. |
| `IsLargeFamily`, L76 ([previous]) | Empty family fails nonempty sign/positive mass; singleton minimal pair has mass0 at each prime. Full minimal family has local complement massp⁻¹⁰. | Retain all-prime closure/saturation and eventual square-discriminant condition. |
| `shortCurve`, L93 ([previous]) | Pair(−1,0) gives coefficients(0,0,0,−1,0), discriminant64; (0,0) gives discriminant0. | Retain nonsingularity filtering. |
| `shortPairSublevel`, L98 ([previous]) | Pair(−1,0) has H=4: excluded at X=4, included at X=5. Empty F gives zero-card sublevel at all X. | Retain strict cutoff. |
| `shortPairAverage`, L104 ([previous]) | Two weights1,3 give2; empty cutoff gives0 by total division. Constant weight1 on nonempty cutoff gives1. | Retain eventual positivity in limits. |
| `twoSelmerSize`, L111 ([previous]) | Singular pair(0,0) gives explicit junk0; curve y²=x³−x gives4, not its rank0 or torsion-free quotient1. | Retain real and all finite local images. |
| `IsFiniteCongruenceFamily`, L129 ([previous]) | N=1 with all allowed sign/residue values accepts full minimal family; empty allowed set fails the witness; N=0 is expressly excluded. | Retain coupled sign/residue classes. |
| `hyperellipticPolynomial`, L229 ([previous]) | g=1,a=(1,0,0,0,1) givesX⁴+1; a=(0,0,0,0,1) gives1 and fails leading-coefficient test. Zero vector gives0. | Retain descending coefficient convention. |
| `hyperellipticSublevel`, L233 ([previous]) | X⁴+1 atT=1 is admitted (derivative4X³ coprime); (X²−1)² is excluded as repeated-root polynomial. T=0 gives empty set. | Retain actual degree and separability. |
| `hyperellipticHasPoint`, L240 ([previous]) | X⁴+1 has affine point(0,1) and square leading coefficient1; −X⁴−1 has neither overR. 2X⁴+3 has noQ₃ point: unit x gives residue2, v₃x>0 gives valuation1, negative valuation leaves nonsquare leading unit2. | Retain affine OR infinity; smooth-char0 interpretation supplied by sublevel. |
| `hasOddDegreePoint`, L247 ([previous]) | For X⁴+1,K=Q degree1≤m gives true for m≥1; m=0 gives false. −X⁴−1 has no point over any odd-degree extension, which has a real embedding. | Retain finite-extension and degree guards. |
| `locallySolubleHyperelliptic`, L253 ([previous]) | X⁴+1's point(0,1) works overR and everyQₚ; −X⁴−1 failsR; 2X⁴+3 failsQ₃. | Retain all completions, not good primes only. |

There are **11 fresh computational rows and 147 carried-forward rows** (12 from review 4's fresh table and 135 from its inherited table). They retain the seeded targets and all ten acceptance headlines, with computed values and explicit provenance.


## Not verifiable

The text needed for the changed measure applications was read legally. No new missing-source request is needed, and no source manifest was edited. Untouched source limitations from [review 4][previous] remain; acceptance does not silently certify them:

- **nekovar**, Reference 121, Theorem 3.2: the earlier IMJ author-PDF request returned HTTP 403; the original primitive-character multiplicity hypotheses remain uncertified.
- **fh**, Reference 123, Theorem B: the earlier DOI/JSTOR route supplied no accessible legal full text; the prescribed-local-condition auxiliary-twist hypotheses remain uncertified.
- **dh**, Reference 127, Proposition 1: the earlier Royal Society DOI route returned HTTP 403; the original all-cubic estimate was not read again.
- **monsky**, Reference 122: previously publisher-paywalled/uncertified; not reopened.
- **ps-density**, Reference 125, pp.241–244: previously publisher-paywalled/uncertified; not reopened.

Ownership against indexed open roadmaps was searched for the changed objects. Unchanged sources and unrelated open-roadmap mathematics were not re-reviewed. No pull-request file, source manifest, merge-order file or supplier checkout was edited.

## Source issues

The following eleven entries are carried from [review 4][previous] for continuity of the errata register. The final entry, in the quartic proof, was observed again in this review; no additional source issue was found.

- **Error** in bs-three at Lemma 33 proof, printed page 17, bs-three line 869: the source says each finite-field j-invariant determines one isomorphism class of genus-one curve with degree-three line bundle; it should use automorphism-weighted mass, including twists and line-bundle translation orbits; affects the proof.
- **Misprint** in bgw at Lemma A.5(3) proof, printed page 37, bgw line 1598: the source says the squarefree part and square factor can be chosen coprime; it should omit coprimality, as f=x³ has squarefree part x and square factor x²; affects the proof.
- **Misprint** in bgw at Theorem A.7, printed page 38, bgw line 1647: the source says to multiply the local/Sha factors without the Brauer coefficients as exponents; it should raise each factor to its coefficient nᵢ; affects a stated result.
- **Gap** in bgw at Theorem 44 and its use of A.3, printed pages 34–35, bgw line 1495: the source says the two specified odd primes provide the required parity conditions; it should also handle the dyadic full-decomposition place when it exists, for example p=5,q=3; affects the proof.
- **Error** in bs-rank-one at the coefficient family in §2, printed page 3, bs-rank-one line 99: the source says v₂(A)=3 yields the displayed good dyadic reduction family; it should use v₂(A)=4 and the compatible B modulo64 condition for that integral model; affects the proof.
- **Misprint** in bs-rank-one at Proposition 11, equations (5) and (6), printed page 11, bs-rank-one lines 443 and 446: the source says the Weierstrass left side includes a₃ alone; it should include a₃y; affects nothing.
- **Misprint** in bs-rank-one at Lemma 16 proof, printed page 16, bs-rank-one line 621: the source says an odd-dimensional nonzero Selmer group has at least p³ elements; it should exclude dimension one rather than only dimension zero; affects the proof.
- **Misprint** in bs-five at Lemma 36 proof, printed page 26, bs-five line 1400: the source says split multiplicative reduction has local root number +1; it should have local root number −1; affects nothing, since the product-of-two-signs argument is unchanged.
- **Misprint** in bs-five at Proposition 37(3), printed page 27, bs-five line 1409: the source says its constructed F₃ has density greater than 96.689%; it should use a smaller bound such as 96.688%, since the product is below 0.96689; affects a stated result.
- **Gap** in bs-five at Proposition 40 proof, equation (33), printed page 29, bs-five line 1502: the source says one total mean bounds separately taken even and odd conditional limsups; it should combine finite-height inequalities before taking limits; affects the proof.
- **Error** in bs-quartic at proof of Proposition 3.7, printed page 28, bs-quartic line 1681: the source says every continuous function is locally constant outside arbitrarily small measure; it should use uniform approximation by locally constant functions on the compact coefficient lattice; affects the proof.

For the quartic proof step, the digit map from Z₂ to R taking binary digits aᵢ to Σ 2aᵢ/3^(i+1) is continuous and injective, hence nowhere locally constant. Its finite digit truncations converge uniformly. The completion and simple-function route now stated in the roadmap does not rely on the erroneous step.

[previous]: packages/ArithmeticStatisticsPartVI/reports/PRREVIEW-ArithmeticStatisticsPartVI~4.md
