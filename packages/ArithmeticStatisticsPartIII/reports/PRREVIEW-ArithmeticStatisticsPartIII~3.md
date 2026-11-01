# Review of ArithmeticStatisticsPartIII (pull request #1174 at 478eb42)

**Verdict:** accepted

One P3 locator correction remains; there are no P1 or P2 findings. The gate passes. This verdict makes the folder ready for a human's final approval; it is not approval or merge of the pull request. The four unavailable texts are identified below, rather than certified from their citations.

Previous findings were checked first, against this head:

| Previous finding | Current passage and disposition |
|---|---|
| R01, duplicate ownership | **Repaired.** `README.md:11` assigns “Eligible pairs are nine lattice translates” to Part I, the cubic classification to AnalyticNumberTheoryPartII §§5.4–5.5, and both index-p dictionaries to Part II. Sections 2.4, 2.6 and 2.7 now use those objects to count, define regions, and bound fibres. |
| R02, missing finite-congruence pair headline | **Repaired.** `Suggested.lean:268` states `quartic_pair_count` with a positive modulus, homogeneous residue pairs and orbit invariance. Its factor is the actual residue cardinal divided by `m^12`. Empty, full and all-even residue tests give 0, 1 and 1/4096, respectively. |
| R03, undeclared API labels | **Repaired.** `README.md:215–217` now gives the strong/weak derivative criterion in prose; the two undeclared backticked labels are gone. |
| R04, missing APIs/Checks for pair definitions | **Repaired.** `README.md:1170–1254` gives separate API and Check lists for coefficients, determinant, resolvent, orbit equivalence, real zeros, absolute irreducibility and class sets. The determinant, scalar-change, real-intersection and congruence computations below test them. |
| R05, secondary-source page | **Repaired.** `README.md:1273` says “printed p. 41 (PDF p. 53)”; reference [17] fixes v2. This agrees with `st-secondary` line 2591 and the ensuing Proposition 11.2/Corollary 11.3. |
| R06, outdated Part I anchors | **Repaired.** `README.md:71` points to “§0.12, Binary discriminant”, “§0.22, Symmetric pencil” and “§0.15, Positive squareclass denominator”. All resolve in Part I. |

## R01 (P3) — Correct the section containing the quaternary sieve

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1974` and `:1982`: “Theorem 23, §3.5” and “Theorem 22, §3.5”.

**Claim:** Both locators place these theorems in §3.5 of reference [12].

**Witness:** `bs-four` line 837 starts §3.6, “Tail estimates and a squarefree sieve”; Theorem 22 starts at line 851 and Theorem 23 at line 860. The cited pages 16–17 are correct.

**Repair:** Replace §3.5 with §3.6 in both locators. Checked against the specified v1: Theorem 23 retains exponents 5/6 and 19/24 and the epsilon remainder; Theorem 22 is the acceptable-weight product formula. No mathematical change is needed.

## Verified sound

The review covered both files in full, all six previous findings, the 15 seeded source sections, the headline signatures, the definition bodies and Checks, the supplier contracts, and ownership by object. The two adversarial tables contain 166 computed rows: all 125 bold target headings, nine convention/supporting-contract rows, and all 32 retained definitions. Numerical and algebraic tests are falsification tests, not proofs of the asymptotic theorems.

The worker's gate on the requested head reports:

```text
gate ArithmeticStatisticsPartIII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

An independent execution of the prescribed dependency command at completion reports:

```text
depcheck: 205 roadmaps, 1459 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The outside-folder diff is empty. No file in the pull-request worktree was edited. There is no computational algorithm, sorry'd data, option override, good-prime-only final theorem, or newly discovered circular supplier contract. Exceptional primes in the proof routes are included in the finite initial conditions of the final sieves.

After building the missing pinned `TauCeti.RingTheory.MvPolynomial.LinearSubst` object, direct elaboration of `Suggested.lean` succeeded with only the 12 expected `sorry` warnings. A separate scratch file elaborated `#check @name` for all **44 declarations**: **32 definitions and 12 theorems**. Their binders agree with the README; no standing hypothesis disappeared. Scratch one-tactic probes with simplification, reflexivity and instance synthesis left all 12 admissions in place. Object searches found no single pinned theorem proving one of these statistical headlines directly. No padding deletion is indicated.

The 12 statable headlines are the quantitative Ekedahl bound, quartic class count, cubic class count, finite-congruence quartic-pair count, summed monic tail, summed odd binary tail, degree-uniform smooth-point bound, hypersurface local density, monic fixed-modulus sieve, binary fixed-modulus sieve, quartic acceptable sieve and cubic acceptable sieve. All occur in `Suggested.lean:232–437`. The binary fixed-modulus statement retains its quantitative tail hypothesis; it does not assert the missing even-degree construction.

The other deep endpoints are the quintic-ring and global-field counts; secondary cubic densities; general invariant sieve; even-degree binary tail construction; symmetric-pencil counts; ternary, quaternary and quinary genus-one counts; sparse smoothed quaternary counts; and arbitrary-dimensional number-field three-isogeny counts. The module docstring names these and the missing discriminants, invariant polynomials, arithmetic lattice charts, smoothing data, normalized Jacobian/volume data, marked-pencil constructions or Kummer/mirror/window carriers. No surrogate proposition is substituted. The supporting curve and rectangular estimates have their mathematical hypotheses and proof inputs in §2.13.

**Source sample.** All 24 references were submitted to the legal sources service; 20 yielded readable text. These are the 15 requested sample sections. Page numbers below refer to the versions specified in the README, not an assumed journal renumbering. When the roadmap corrects a source formula, the checked object is its stated derivation, not the erroneous formula alone.

| Sample | Text inspected and comparison |
|---|---|
| §2.2 Real quartic orbits/fundamental sets | `bs-quartic` lines 352–447, §§2.1–2.2, pp.8–10: fixed invariants, the real types, stabilizers and compact sections. Nonzero discriminant and the distinction between ordinary GL₂ counting and the twisted PGL₂ action are retained. |
| §2.3 Averaging/cusp | `bs-quartic` lines 551–653, pp.11–12: averaging, reducibility and cusp estimates. The extra-stabilizer discard has its own fixed-resolvent input; the counting convention retains orbit multiplicity. |
| §2.4 Invariant volumes/main terms | `bs-quartic` lines 654–759, Proposition 2.8 and subsequent volume computation, pp.13–14. Checked Jacobian 1/27, sign-region areas, stabilizer divisors and eligible density 1/27. The roadmap uses the fundamental domain in the Jacobian integral. |
| §2.6 Cubic regions/finite congruences | `bst-dh` lines 427–468, 586–614 and 723–832, pp.9,12,14–15. Checked sign-dependent stabilizers, determinant twist, actual residue proportion and leading constants. The separate Haar/Jacobian computations resolve the source's compensating factors of two. |
| §2.11 Secondary cubic densities | `bst-dh` lines 723–832 and 1310–1344, pp.14–15,20–21, including Theorem 27; Theorem 7 at lines 150–175. Main and secondary scalings differ; the sieve error stays below exponent 5/6. |
| §2.12 Summed square-divisor tails | `bsw-sqfree1` lines 935–1029, Theorem 4.1 and proof inputs on pp.21–22; `bsw-sqfree2` lines 112–269, Theorems 5–6, pp.3–5. Divisor multiplicity is retained and discriminant zero is excluded, unlike an infinite sum over its square divisors. |
| §2.13 Monic weighted sieves | `bsw-sqfree1` lines 935–1092, Lemma 4.2, Proposition 4.3, Theorem 4.4, pp.21–23; `dietmann` lines 92–175, Lemmas 1,2,5,6, pp.3–4; `browning-heathbrown` lines 43–80, Theorem 1/(3), p.2; `stacks` lines 766–783 and 1677–1688, Tags 0BYD/0CE3. Checked the anisotropic resolvent argument, exceptional fibres, logarithmic divisor average, quartic wreath index and normalization bound. |
| §2.15 Odd binary-form sieves | `bsw-sqfree2` lines 112–174 and 852–914, Theorem 5 and §4.1, pp.3,16–17. Odd degree starts at 3; the saving is 1/(2n), with the strong and weak contributions distinguished. |
| §2.16 Even binary tails/truncation | `bsw-sqfree2` lines 1000–1081, 1236–1352, 1442–1561, 2690–2726 and 3090–3278: Propositions 4.4/4.5/4.8, row spanning, small discriminant, Lemma 6.25 and §7. Transformed covolume, positive-rank hypotheses, nonzero discriminant, paired-fibre and restricted Gram assumptions remain explicit. The parameter inequalities are checked below. |
| §2.18 Ternary cubic counts | `bs-ternary` lines 44–140, 546–599 and 641–727, Theorems 8,17,18,24,25, pp.2–3,11–14. Checked the two leading constants, dimension ten, projection exponent 3/4 and acceptable-weight truncation. |
| §2.19 Quaternary counts | `bs-four` lines 192–269, 717–761 and 836–933, Group (3), Theorems 10,19,20,22,23, pp.5–6,14,16–17. Half-Gram coefficients, quotient group, real types and 19/24 exponent agree. Only the section number in R01 fails. |
| §2.20 Quinary counts | `bs-five` lines 260–299 and 850–1080, Theorem 12, Proposition 24, equation (18), Theorems 25–29, pp.7,16–20. Checked dimension 50, factor 1/5, projection exponent 49/60, bounded weak-lift fibres and the distinction from dimension-40 quintic rings. |
| §2.21 Smooth unfolding/sparse counts | `bss-second` lines 1151–1275, 1515–1625 and 2096–2145, Theorem 5.1, Theorem 6.3 and its error estimates, pp.23–24,29–30,38. Nonzero theta integral and stabilizer divisor are present; the sparse error inequalities retain the required slack. |
| §2.22 Number-field three-isogenies | `bkls` lines 240–335, 395–484 and 528–640, Theorems 4.2,5.3,6.2,7.1,8.1, pp.6–7,9–10,12–13; `bsw-global2` lines 684–816 and 863–946, §§3–4.1, pp.14–18. The roadmap keeps arbitrary abelian dimension, actual Kummer images and its additional windowed counting hypothesis. It does not infer general squareclass-window equidistribution from the source's height ordering alone. |
| §2.23 Hypersurface densities | `poonen-voloch` lines 1–146, especially Theorem 3.6/proof, pp.1–3. The conic exception is retained. Smooth-point estimates apply to geometrically integral hypersurfaces, not arbitrary nonreduced equations. Primitive coefficients and quotient by sign account for 2ζ(N); the unavailable Lang–Weil original is listed separately. |

**Pinned declarations and ownership.** Mathlib was inspected at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. In particular:

| File at pin | Opened declaration/input and boundary checked |
|---|---|
| `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:913` | `Polynomial.resultant_eq_zero_iff`: field coefficients and nonzero-polynomial disjunction; not a criterion over arbitrary rings. |
| Same file `:935` | `Polynomial.discr` uses actual natural degree. Constants have discriminant 1; this does not replace the fixed-degree binary discriminant. |
| `Mathlib/Algebra/Polynomial/Roots.lean:78` | `Polynomial.card_roots'`: root count bounded by natural degree. |
| `Mathlib/Algebra/MvPolynomial/SchwartzZippel.lean:191` | `MvPolynomial.schwartz_zippel_totalDegree`: nonzero polynomial over a domain, with finite evaluation sets. |
| `Mathlib/NumberTheory/Padics/Hensel.lean:459` | `hensels_lemma`: its derivative/value norm condition is required; the roadmap invokes the simple-root specialization. |
| `Mathlib/NumberTheory/Chebyshev.lean:101`, `:191`, `:796` | `theta_eq_sum_primesLE`, `theta_le_log4_mul_x`, `eventually_primeCounting_le`: the eventual result is not silently promoted to an all-range bound. |
| `Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean:72` | `UpperHalfPlane.volume_eq_lintegral`: density 1/y². |
| `Mathlib/MeasureTheory/Function/Jacobian.lean:1213` | `integral_image_eq_integral_abs_det_fderiv_smul`: measurable domain, injectivity and within-derivative hypotheses. |
| `Mathlib/Analysis/SpecialFunctions/Trigonometric/InverseDeriv.lean:53`; `Mathlib/MeasureTheory/Integral/IntervalIntegral/FundThmCalculus.lean:1176` | `Real.hasDerivAt_arcsin` excludes ±1; the interval integral theorem retains differentiability and integrability. The modular area integral lies inside those endpoints. |
| `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:226` | `riemannZeta_two`, giving ζ(2)=π²/6. |
| `Mathlib/Order/Northcott.lean:65` | `Northcott.comp_of_finite_fibers`; finite fibres are an assumption, not part of an arbitrary height. |
| `Mathlib/Algebra/CubicDiscriminant.lean:461` | Cubic discriminant and the ensuing product-of-root-differences identity: leading coefficient and root data matter. |
| `TauCeti/RingTheory/MvPolynomial/LinearSubst.lean:67` | Substitution sends variable i to the i-th matrix row. The transpose in the roadmap implements its row-vector action. |
| `TauCeti/NumberTheory/Modular.lean:116`, `:234` | `volume_fd_lt_top`, `isFundamentalDomain_fdo`: finite area and effective PSL₂ fundamental domain, without the roadmap's explicit π/3 area computation. |
| `TauCeti/FieldTheory/FunctionField/Place/Expansion/PowerSeries.lean:36`, `:76`; `Expansion/Completion.lean:119` | Place expansion, filtration criterion and completion equivalence retain degree-one place and order-one uniformizer hypotheses. |
| `TauCeti/FieldTheory/FunctionField/RiemannRoch/Basic.lean:87`, `:99` | Riemann–Roch space and its dimension are native objects; finiteness is not supplied merely by writing `finrank`. |

Ownership searches used `roadmaps grep/show`, the main checkout, the available open heads and board package READMEs/Lean files, searching for discriminants, orbit actions, resolvents, lattice counts, square-divisor tails, local densities and the normalization objects rather than only proposed names. The board matches concerning universal hypersurface monodromy, good-reduction loci and arithmetic dynamics concern different objects. No second owner of these representation-specific statistical counts was found, and no foreign declaration with this folder's fully qualified names was found.

Cross-roadmap citations were resolved afresh, including all Part I and Part II reference links. The substantive owner boundaries checked were:

- `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md`: §0.3 eligibility; §0.12 binary discriminant/strong–weak conditions; §0.15 positive squareclass denominator; §0.22 symmetric pencils; §0.2 acceptable weights; counting families and cubic conventions. The nine-class, strong/weak and pencil passages occur around lines 817, 1601 and 2368 at the supplied head.
- `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md`: §1.2 index-p subring/overring targets (around lines 299–313), §1.3 pair algebra (around line 329), quartic/quintic parametrizations and maximality, every linked matrix-slice/marked-Q/weak-lift/pencil/genus-one refinement, and Supporting descent and integral realization. The derivative test here extends the imported strong/weak predicate; it does not rebuild the dictionary.
- `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md`: §§5.4–5.7 (around lines 656–714), §5.21 (around 1036), §§5.28–5.29 (around 1328–1350). The real algebra automorphism orders are 6 and 2; the statistical sign regions retain them.
- `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md`: §3.22 divisor average (around 2162), §3.26 subpower divisor bound (around 2609), §§3.3–3.4 and §3.27 ideal bounds. `Completed/ArithmeticDirichletSeries/README.md`: Layers 3,6,9, including `EulerProductData`, `perronFormula`, `continuedLFunctionOfWeight` and `wienerIkehara`; its positivity and boundary hypotheses remain application obligations.
- `TauCetiRoadmap/GlobalNumberFields/README.md`: Layers 0–3 and 11 (ideal-count and order sections around lines 338 and 572). `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md`: Layers 0–4, including §4.1 Davenport count around line 1257. Neither is cited as already proving a moving-cusp estimate.
- `TauCetiRoadmap/AdelicAlgebraicGroups/README.md`: quotient integration around line 1823, Tamagawa normalization around 1885, §3.4 arithmetic charts around 3140. `TauCetiRoadmap/AutomorphicLFunctionsAndLocalFactors/README.md`: vector-space Poisson and compact-uniform estimates around line 769; the function-field adelic covolume discussion around 2313 is compatible with, but does not replace, the S-integer representation charts constructed here.
- `TauCetiRoadmap/OperatorTheory/PolarDecomposition/README.md:471`: PD-C09–PD-C18 provide the singular-vector/reconstruction input. `TauCetiRoadmap/AlgebraicCurves/README.md`: Layers 2,12 provide normalization and scheme comparison. `TauCetiRoadmap/SchemeAndStackFoundations/README.md:7337`: §5.12 Bézout; its earlier dimension/spreading interfaces are used. `TauCetiRoadmap/DeligneWeightsAndPurity/README.md:989`: §1.6 curve Weil bound and its named geometric inputs.
- `TauCetiRoadmap/PolynomialGaloisGroups/README.md`: Layers 0,2,4 root actions and integral resolvents; `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md`: IG.0–IG.2 specialization. The anisotropic estimate has a local proof target instead of being attributed to qualitative specialization.
- `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:2074`: §R02.3.2, function-field ideles, degree, S-units and finite S-class groups; `TauCetiRoadmap/AlgebraicCurves/README.md:613` and `:628`: Riemann–Roch and the degree ≥2g−1 dimension formula. These supply §2.10; the completion-valued representation charts and shell counts are local targets.
- `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md`: A3.1–A3.6; `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:6761`: §2.12a local Kummer maps. `TauCetiRoadmap/ClassFieldTheory/README.md:1725–1746`: global reciprocity and its Galois compatibility. These are algebraic inputs to the local isogeny mass, not suppliers of the windowed statistical theorem.

The layer order was also checked inside the folder: suborders and fixed-resolvent estimates precede the quartic pair count in the stated dependency order; the noncyclic mass sum follows that count; the quartic-field transport then supplies the weak quartic sieve. Function-field lattices precede the global counts. Paired-fibre and restricted Gram contracts precede the conditional even-degree branch. Thus the forward textual placement of some prerequisites is accompanied by an explicit acyclic proof order.

**Adversarial calculations.** Each row records actual values or symbolic exponents on both sides, including negative controls. “Retain” means no change is requested, not that finitely many tests prove a theorem. Locations in this table are lines of `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md`. Exponents are compared with the displayed hypotheses and constants allowed in the statement.

| Statement | Instance and computed values on the two sides | Result / change |
|---|---|---|
| Conventions: discriminant and height | For x⁴−y⁴, (I,J,Δ)=(−12,0,−256): 4I³−J²=−6912=27Δ. Scaling invariants by (16,64) multiplies both height terms by 4096. | Retain. |
| 88, Chebyshev bounds | At x=10⁶, π(x)=78498; √x+2 log(4)x/log(x)≈201686.664. At x=2, the prime count is 1 and the displayed positive bound exceeds 1. | Retain all-range versus eventual distinction. |
| 106, subvariety lattice bound | Coordinate codimension k gives exactly (2⌊r⌋+1)^(n−k) points in the cube; dimension n−k gives the same power of r. Empty variety gives 0. | Retain. |
| 126, mod-p bound | A coordinate codimension-k subspace has p^(n−k) points; a vertical component over p₀ has p₀^n points at p₀ and 0 at other primes. | Fixed bad-prime constants are necessary; retain. |
| 144, small-prime contribution | A coordinate codimension-2 locus has p^(n−2) residues among p^n, hence probability p⁻²; summing gives the required M⁻¹/log M scale. Codimension 1 gives p⁻¹ instead. | Retain k and its denominators. |
| 160, large-prime contribution | On x₁=x₂=0 in a radius-r cube, the exact count is (2⌊r⌋+1)^(n−2); the allowed remainder has exponent n−1. For a unit defining equation both counts are 0. | Retain. |
| 176, quantitative Ekedahl headline | n=0,k=1,I=(2),M=2 gives count 0 and RHS C(1/log 2+1). For n=2,k=2,I=(x,y), integer points reducing to the origin at p>2r are just (0,0), whereas the remainder is Cr. | Retain; no dimension-zero division. |
| 196, strong/weak definition and derivative criterion | Δ(x³+3h)≡0 mod 9 for every cubic h. For x²y+3y³, Δ=−12≡6 mod 9, so it is outside the square-divisible locus. Weak requires square divisibility first. For 25x⁴+x²y²+y⁴ at p=5, Δ=3920400, ∂aΔ≡1 and ∂eΔ≡0. | Retain both parts of the predicate. |
| 244, strong codimension | For a cubic over characteristic 0, a double-root stratum has dimension 3 in coefficient dimension 4; triple-root stratum has dimension 2. Codimensions are 1 and 2, respectively. | Retain stronger locus, not all discriminant-zero forms. |
| 264, discriminant codimension | x³−xy² has Δ=4 and x³ has Δ=0. The discriminant polynomial is not identically zero; its singular repeated-root locus is smaller than its hypersurface. | Retain nonzero polynomial and exceptional-characteristic treatment. |
| 280, local p² density | f=x has p^(2n−2) zeros modulo p², proportion p⁻². f=x² has proportion p⁻¹; it fails the squarefree/coprimality condition used in the proof. | Retain hypotheses; wrong repeated-factor model excluded. |
| 300, quartic root types | x⁴+y⁴: zero real projective roots, Δ=256. x⁴−y⁴: two roots, Δ=−256. xy(x²−y²): four roots, Δ=4. | Retain 0/2/4 types. |
| 348, fixed-invariant real orbits | At (I,J)=(1,0), Δ=4/27>0; both definite signs occur for the rootless type. At J=2, Δ=0 and the nondegenerate orbit assertion no longer applies. | Retain sign and discriminant exclusions. |
| 366, real quartic stabilizers | Rootless, two-root and four-root types have ordinary real stabilizer orders 8,4,8; their PGL₂ quotients have orders 4,2,4. | Retain the factor from ±I. |
| 384, compact quartic sections | Height-one slice at (I,J)=(1,0) has H=1; at (1,2), H=1 but Δ=0. Thus bounded height alone does not imply the section is nondegenerate. | Retain separate Δ≠0 condition. |
| 426, Gauss/Iwasawa coordinates | y=t² gives dy/y²=2t⁻³dt. Replacing t by 2t multiplies t⁻³dt by 1/4, matching y↦4y. | Retain Haar exponent and factor 2. |
| 472, modular area | Integral over x∈[−1/2,1/2] of 1/√(1−x²) is 2 arcsin(1/2)=π/3. | Retain. |
| 488, PGL₂ covolume | Algebraic differential gives π²/3=2ζ(2); the source coordinate normalization gives π/12. They are not equal measures. | Retain explicit conversion. |
| 506, multiplicity | For x⁴+y⁴ the real/integral stabilizer ratio is 8/8=1; for a generic four-root form it is 8/2=4. | Retain stabilizer quotient, not a universal multiplicity 1. |
| 524, averaged quartic region | Rescaling the averaging function by 2 doubles both numerator and its normalizing integral; the normalized count is unchanged. Zero averaging mass would give 0/0 and is excluded. | Retain positive normalization. |
| 566, quartic averaging formula | An interior orbit with ratio 8/2 contributes 4 before division by the real multiplicity, giving the same single orbit after normalization; boundary overlap may exceed 1. | Retain multiset integral. |
| 582, reducible quartics | With ε=1/24, exponent 2/3+ε=17/24 is below main exponent 5/6=20/24. Singular x⁴ has Δ=0 and is excluded where required. | Retain. |
| 598, monic cubic resolvent height | x³−xy² gives (I,J,H)=(3,0,27); x³−2y³ gives (0,54,729); x³ gives H=0. | Retain height normalization. |
| 620, large stabilizers | With ε=1/24, error exponent 3/4+ε=19/24<20/24. Cyclic cubic resolvents have automorphism order 3, not generic order 1. | Retain fixed-resolvent input. |
| 638, cusp lattice estimate | Leading coefficient weight λ⁴/t⁴: if t>Cλ, its absolute bound is <1 and a nonzero integral leading coefficient cannot occur. At zero it can occur. | Retain separation of the zero-leading-coefficient locus. |
| 654, integrated cusp | Integrating t⁴λ¹⁶ against t⁻³dt and dλ/λ up to t=Cλ gives λ¹⁸ scale; λ≤X^(1/24) gives X^(3/4). | Retain. |
| 674, quartic Jacobian | Determinant is −1/27: real absolute value 1/27; at p=3 its p-adic absolute value is 27. | Retain all-place normalization. |
| 690, invariant volumes | Positive/negative height-one areas are 8/5 and 32/5; after Jacobian/covolume the values are 16ζ(2)/135 and 64ζ(2)/135. | Retain ratio 4. |
| 706, quartic count headline | Divide those volumes by 4 and 2, and include both definite signs: root types 4,2,0 have constants 4ζ(2)/135,32ζ(2)/135,8ζ(2)/135. | Retain Lean constants. |
| 726, eligible-pair count | Nine classes among 9×27=243 give 1/27. (I,J)=(−2,7) gives Δ=−3 and H=49/4; (1,1) gives nonintegral Δ=−1/9. | Retain imported eligibility classification. |
| 742, average multiplicities | The ratios of quartic class constants to their eligible-invariant constants are ζ(2)/2, ζ(2), ζ(2) for the indicated types. Empty height sublevels have average 0, not this limit. | Retain limiting denominator. |
| 760, finite congruences | A coefficient class mod 2 in dimension 5 has density 1/32. Allowed residues {0,1} mod 15 have density 2/15, whereas multiplying marginal densities gives 4/15. | Retain actual CRT proportion. |
| 778, finite weights | Weight 1 gives original count; constant 1/2 gives exactly half of it and half the local mass; weight 0 gives 0 on both sides. | Retain. |
| 792, strong quartic tail | Dimension 5 with λ=X^(1/6) gives main X^(5/6) and projection X^(4/6)=X^(2/3). | Retain strong-tail exponent. |
| 808, weak transport | An index-p extension changes discriminant by p². At p=5, a disc −4 overring corresponds to disc −100 in its suborder. | Retain direction of transport. |
| 820, pair lift | Fibre bound is 24, not 1; a fibre with one element satisfies 1≤24, an injectivity claim would require 1 independently of the dictionary. | Retain bounded-fibre theorem, not identification of orbit sets. |
| 840, weak quartic tail | x⁴−2 has discriminant −2048 and D₄ splitting group, so an S₄-only transport would omit it. Its contribution belongs to the separate non-S₄ estimate. | Retain full field-count input. |
| 856, infinite uniformity | For factors in [0,1], deleting restrictions increases a finite weighted count; the loss is at most the number in the union of bad loci. For all factors 1 the loss is exactly 0. | Retain tail before infinite limit. |
| 874, quartic acceptable headline | All factors 1 give weighted count N and product 1, hence difference 0. A sole identically-zero factor gives count 0/product 0; infinitely many constant halves fail acceptability. | Retain. |
| 898, cubic sign regions | x³−3xy² has Δ=108>0 and 3 real roots; x³+xy² has Δ=−4 and 1 real root. | Retain imported classification. |
| 916, cubic stabilizers | Real étale algebras ℝ³ and ℝ×ℂ have automorphism orders 6 and 2. Over ℚ, x³−x²−2x+1 has Δ=49 and cyclic automorphisms of order 3; x³−2 has Δ=−108 and order 1. | Retain distinction between real and rational stabilizers. |
| 934, reducible cubic bound | With ε=1/24, X^(3/4+ε)=X^(19/24)<X^(5/6); reducible xy(x−y) has Δ=1 but is not a counted irreducible class. | Retain irreducibility test. |
| 950, cyclic cubic bound | In the permutation action, centralizer of S₃ in S₃ has order 1; centralizer of A₃ has order 3. The cyclic example above has Δ=7². | Retain nonabelian control. |
| 966, cubic measure | At x³−xy², Δ=4 and the infinitesimal action determinant is 8=2Δ. Conversion to source Haar measure gives 4πΔ, not 2πΔ. | Retain corrected Jacobian. |
| 984, cubic averaging region | Coefficients (1/3,0,−1,0) give squared norm 4/3 and Δ=4/3; (1/2,0,0,1/2) give norm 3/2 and Δ=−27/16. Both signs occur. | Retain nonempty averaging regions. |
| 1028, cubic averaging formula | Multiplying 4π by X/4 and coordinate covolume π/12, then dividing by 6 or 2, gives π²X/72 or π²X/24. | Retain. |
| 1044, cubic cusp | Main exponent 1 versus cusp/error exponent 5/6; at X=t⁶ the terms are t⁶ and t⁵. | Retain power saving. |
| 1060, cubic count headline | Positive/negative constants are π²/72 and π²/24, ratio 3; swapping the real stabilizers would invert this ratio. | Retain Lean signs. |
| 1080, cubic finite congruences | Full mod-m coefficient set has m⁴ residues and density 1; a single class has m⁻⁴. Empty set gives 0. | Retain. |
| 1098, index-p switch | At p=5, (1,0,1,0)↦(25,0,1,0), with discriminants −4↦−100, ratio 25. | Retain imported dictionaries and derived fibre bound. |
| 1112, nonmaximal cubic count | For p≥2, X/p⁴+3X/p²+(p+1)X/p⁶≤5X/p²; at p=2 coefficients total 1/16+3/4+3/64=55/64≤5/4. | Retain. |
| 1128, cubic prime tail | Summing p⁻² gives the 1/(M log M) scale; codimension-one p⁻¹ would not supply it. At p=2 the local term is included, not discarded. | Retain finite initial primes. |
| 1144, cubic acceptable headline | All local weights 1 give the cubic count with error O(X^(5/6))=o(X). A zero local factor gives 0 on both sides. | Retain. |
| 1164, pair count headline | Twelve coefficients give m¹² residues. At m=2, full/empty/zero-only densities are 1,0,1/4096. Real-type divisors are 48,8,16 for 4,2,0 real zeros. | Retain repaired finite-congruence statement. |
| 1170, pair coefficients | For u²+2uv+3v², coefficients (u²,uv,v²) are (1,2,3), whereas a symmetric bilinear matrix has off-diagonal 1. | Retain integer-valued quadratic convention. |
| 1182, four-times determinant | u²+v²+w² gives 4; uv+w² gives −1; zero gives 0. Scaling the first form by 2 gives 32=2³·4. | Retain integral determinant polynomial. |
| 1194, pair resolvent | A=uw−v², B=u²−vw−w² gives x³+4xy²+y³ and Δ=−283. A diagonal example gives 4(x−y)(x−2y)(x−3y), Δ=1024. | Retain minus sign and factor 4. |
| 1206, pair equivalence | Unimodular pair/variable changes preserve the orbit and discriminant. Scalar 2 on both forms multiplies Δ by 2¹²=4096, so it cannot identify either nonsingular example with its double. | Retain GL(ℤ)/SL(ℤ), not arbitrary rational changes. |
| 1218, real intersection count | (u²−w²,v²−w²) has 4 real projective zeros; a positive definite first form gives 0; (u²+v²,0) has 1 and is degenerate. | Retain regularity in 0/2/4 classification. |
| 1230, absolute irreducibility | For A=uw−v²,B=u²−vw−w², setting u=1 yields v⁴+v³−1=0 and 2 real intersection points; the quartic is irreducible over ℚ. A pair with a rational common zero fails the predicate. | Retain exclusion of rational intersections and reducible resolvents. |
| 1242, pair class sets | Δ=−283 lies outside strict cutoff X=283 and inside X=284. Its double has Δ=−1159168=−283·4096. | Retain strict cutoff and finite class cardinal. |
| 1261, maximal-order suborders | Split ℤ⁴ has 6 index-p suborders (one equality among four residues). Squarefree k gives 6^ω(k); at index p³ diagonal examples already give at least p+1, so squarefree and higher-power bounds differ. | Retain two ranges. |
| 1282, class-group/conductor inputs | Trivial class group has 2-torsion size 1; ℚ(√−5) has size 2. A noncyclic cubic's quadratic-character construction uses its actual conductor; a free choice of conductor 1 cannot count arbitrary ramification. | Retain conductor and noncyclic restrictions; unavailable dihedral source below. |
| 1300, non-S₄ fields | ℚ(ζ₅) has discriminant 125; ℚ(√2,√3) has 2304. Both are quartic fields outside S₄; a product of two quadratic fields is not a field. | Retain non-S₄ field estimate and separate étale products. |
| 1312, fixed cubic resolvent | Content p multiplies quartic discriminant by p⁶ while its number of resolvents can be p+1. Keeping only discriminant scaling would miss the multiplicity. | Retain resolvent multiplicity and suborder inputs. |
| 1328, quartic nonmaximal tail | A p-index suborder has discriminant multiplier p²; p=2 gives 4, not 2. The tail uses this square and the resolved noncyclic mass sum. | Retain dependency order. |
| 1346, quintic-ring count | Representation dimension 40 gives density 2⁻⁴⁰ for all-even coefficients. Real stabilizer orders are 120,12,8. | Retain; not the genus-one dimension-50 representation. |
| 1358, quintic nonmaximal tail | Content n gives discriminant exponent 8 and weight exponent 6; the remaining series is Σn⁻², convergent. Reversing them would give Σn². | Retain. |
| 1368, function-field lattices | For ℱ₂[t], standard local covolume is 1/2 and polynomials of degree ≤k number 2^(k+1). General ℱ_q degree-k shell has (q−1)q^k points. | Retain q>1 and chosen additive measure. |
| 1382, function-field reduction | Norm of a degree-D place is q^D; replacing it by q changes a degree-2 place's factor from q² to q. Empty S does not provide the required affine lattice chart. | Retain nonempty S and degree weights. |
| 1396, function-field sieve | In characteristic 2, x²+xy+ty² has discriminant 1. x²+t²xy+t²y² has discriminant t⁴ and is nonmaximal after dividing the root by t. | Retain bad-characteristic and maximality distinctions. |
| 1410, global finite counts | A residue condition of index q^D has local proportion q⁻ᴰ; doubling a real lattice index halves the volume/count constant. | Retain actual ideal index, not residue characteristic alone. |
| 1426, global prime tail | Place norm q^D contributes q⁻²ᴰ to a codimension-two local estimate; weighting by the number of degree-D places gives a summable q⁻ᴰ/D scale. | Retain degree shell summation. |
| 1442, global local-specification count | Full local sets give product 1, a single empty set product 0. A coupled two-prime set {0,1} modulo 15 has density 2/15, not 4/15. | Retain finite joint density before independent infinite product. |
| 1460, secondary congruences | Scaling a cubic lattice by m=2 gives index 16; main density 1/16, secondary scaling 2^(−10/3), and error factor 1/8. | Retain distinct secondary density. |
| 1468, secondary sieve | 5/6−1/48=13/16; at X=t⁴⁸ main secondary size t⁴⁰ and error t³⁹. | Retain strict saving. |
| 1478, square-divisor multiplicity | Δ=36: squarefree square divisors are 1,2,3,6; above M=5 count 1, above M=6 count 0. Δ=0 and Δ=1 both give 0 in the defined nonsingular tail. | Retain explicit zero convention. |
| 1496, bounded-exponent acceptability | Constant 1 works at κ=0; parity of one coefficient works at κ=1 but not κ=0, since mod 1 has one class. | Retain modulus quantifier. |
| 1518, rational-root bound | n=2 gives D=3 and bound X²log X; the zero-constant-term fibre has O(X) choices and must be separated before taking divisors of the constant term. | Retain divisor average, not pointwise O(log X). |
| 1526, normalization bounds | A line has genera (0,0); cuspidal cubic has arithmetic genus 1 and normalization genus 0. Split/nonsplit nodes give #normalization−#curve equal to +1/−1. | Retain finite-fibre correction. |
| 1540, rectangular curve bound | u^m−v in side lengths Y,Y^m has 2⌊Y⌋+1 points; T=Y^m makes the exponential term Y. u²−2v² has just (0,0). | Retain geometric/nongeometric branches and P_i≥2. |
| 1556, weighted Galois exclusion | n=4,D=10,wreath index 3 gives 10−4+4/3=22/3. For S_n,index 1 gives D, hence no spurious power saving. | Retain uniform resolvent and exceptional fibres. |
| 1571, extra reducible estimate | Wreath orders at n=4,6 are 8,72; indices are 3,10. Degree 4 therefore needs exponent 22/3 rather than 7. | Retain explicit quartic exception. |
| 1583, weighted Selberg | V=Xᴰ,E=X^(D−1),L=X^(2/5): both error exponents become D−1/5. If g(p)=0 identically, no saving follows and the positive lower bound on g fails. | Retain integrated remainder hypothesis. |
| 1597, off-block distinguished count | For g=1, t₁=2,t₂=1, the marked Q weight is 1/2, not 2. The integrated Selberg error is X^(D−1/5), below Xᴰ. | Retain source lattice and torus direction. |
| 1605, marked-Q cusp | Replacing Q by its inverse character would turn the preceding weight 1/2 into 2 and reverse the cusp inequality. | Retain character fixed by the marked lift. |
| 1613, monic strong tail | n=2,D=3 gives main X³/M and projection X²; these differ from the later multiplicity tail X³/√M. | Retain union versus multiplicity distinction. |
| 1621, monic weak tail | At n=3,D=6, the displayed main tail is proportional to X⁶/M and the power-saving error to X^(29/5). | Retain separate weak-lift input. |
| 1629, quadratic weak tail | x²−25 has Δ=100 and weak square divisibility at 5; x²+x has Δ=1 and no bad prime. | Retain degree-2 branch. |
| 1641, summed monic headline | n=2 gives X^(3+ε)/√M+X^(14/5+ε); Δ=36 contributes 1 at M=5 and 0 at M=6, rather than an indicator independent of multiplicity. | Retain. |
| 1659, monic fixed-modulus headline | κ=1 gives min(1/5,1/2)=1/5; κ=3 gives 1/6. An empty local residue set gives density/count 0; full sets give density 1. | Retain κ-dependent error. |
| 1677, general invariant sieve | A nonzero discriminant has finitely many prime-square divisors, so acceptable factors eventually equal 1 on that point. Zero discriminant does not have this property. | Retain nonsingular locus and transport hypotheses. |
| 1687, binary strong tail | n=3 has four coefficients: main X⁴/M, projection X³. This matches dimensions 4 and 3. | Retain. |
| 1695, odd cusp | n=3 gives saving 1/(2n)=1/6, so X^(23/6) is smaller than X⁴. n=1 is outside the claimed range. | Retain n≥3. |
| 1703, odd weak tail | At n=3 the combined tail has X⁴/M scale and saving 1/6; using the even-degree Gram contract is unnecessary for this branch. | Retain odd lift. |
| 1711, row spanning | Rank-one lattice ℤe₁ transformed by diag(T,T⁻¹) has covolume T; the symmetric-matrix entries scale by T², giving 2⌊Y/T²⌋ nonzero choices when Y/T² is nonintegral. Using original covolume 1 gives the wrong T dependence. | Retain transformed covolume and positive rank. |
| 1729, paired-fibre hypothesis | The displayed 5×5 example has determinant x(3x⁴+30x³−15x²−4x+2), discriminant 2529792, Gram factor 1; equal paired forms instead have discriminant 0. | Retain nonzero discriminant and actual fibre contract. |
| 1768, even tail parameters | At n=4,δ=1/2,η=.01,ξ=0, τ=.02 and min(.01,.98,4.82)=.01>0. At τ=.6, the second slack is 5−9τ=−.4, so the parameters are rejected. | Retain both inequalities; no division by δ=0. |
| 1782, even small discriminant | x⁴ has H=1,Δ=0 and lies in the singular small-discriminant locus; x⁴−y⁴ has H=1,absolute Δ=256 and need not. | Retain separate singular handling. |
| 1798, constant-term tail | Constant coefficient 0 gives the whole codimension-one coefficient slice, with O(Xⁿ) points rather than a divisor count of 0. | Retain separate zero-term treatment. |
| 1806, main/shallow cusps | At n=4, min(1/16,1/21)=1/21; at n=6 the stated θ is 1/24. The quartic saving cannot be strengthened to 1/16 by dropping the second contribution. | Retain weaker valid exponent. |
| 1822, restricted Gram hypothesis | Rows (1,0,0),(0,t,0) give Gram determinant t²; orthonormal rows give 1; dependent rows give 0. Over ℂ the rank-one row (1,i) has Gram determinant 0. Dividing by the determinant requires the stated independence. | Retain restricted, nonzero Gram input. |
| 1838, deep cusp | At n=4, κ=.1 gives the corresponding κ″=2/15. Positive κ gives positive saving; κ=0 gives 0 and is not a power saving. | Retain positive parameter range. |
| 1854, summed binary tails | Odd n=3 gives exponent 4−1/6=23/6. Even inputs require the named paired-fibre/Gram constants; δ=0 would make the analytic cutoff expression unusable. | Retain conditional even branch. |
| 1872, quadratic binary case | For Δ=36, M>6 makes the square-divisor tail 0. A repeated-root quadratic has Δ=0 and is removed before this bound. | Retain small-degree treatment. |
| 1880, binary fixed-modulus headline | n=4,τ=.6 would give boundary exponent (2n+1)τ=5.4>n+1=5 despite τ<1. The second cutoff condition rejects it. Empty R gives ν=0 and count 0. | Retain both cutoff conditions. |
| 1900, pencil finite count | n=4 gives two symmetric 4×4 forms, dimension 20; entry scaling X^(1/4) gives coefficient volume X⁵. | Retain dimension and scalar weights. |
| 1908, pencil upper count | A weight 1/2 at one prime halves its local integral; all weights 1 give product 1. Factors 1/2 at every prime have product 0 and fail the stated acceptability condition. | Retain admissible weights. |
| 1924, coefficient tails | A fixed exceptional prime is handled in the finite initial modulus. In the good-prime tail, codimension two contributes p⁻²; codimension one p⁻¹ would not be summable. | Retain codimension hypothesis. |
| 1934, ternary finite count | Dimension 10 and height degree 12 give exponent 10/12=5/6. Leading constants 32/45 and 128/45 have ratio 4. | Retain. |
| 1942, ternary prime tail | Projection dimension 9 gives 9/12=3/4; this is below 5/6 by 1/12. | Retain. |
| 1950, ternary acceptable sieve | Full finite congruences have density m¹⁰/m¹⁰=1; empty congruences 0. Weight 1/2 multiplies count and local mass by 1/2. | Retain. |
| 1960, quaternary finite count | Dimension 20/height degree 24 gives 5/6. Real stabilizer divisors are 8,4,8; 16det(xI₄)=16x⁴ verifies the resolvent normalization. | Retain group and half-Gram model. |
| 1968, quaternary prime tail | Projection exponent 19/24<20/24=5/6. Weak-lift fibre bound is 2, so a two-element fibre contributes at most twice its image count. | Mathematics retained; R01 changes locator only. |
| 1976, quaternary acceptable sieve | All weights 1 give N−N·1=0; zero at one prime gives 0−N·0=0. The order of limits retains the epsilon cusp loss. | Mathematics retained; R01. |
| 1986, quinary finite count | Dimension 50/height 60 gives 5/6; real stabilizer 5 changes 8/5 and 32/5 to 8/25 and 32/25 before multiplying by Jacobian/covolume. Central scalars give determinant characters λ¹⁰λ⁻¹⁰=1. | Retain corrected 1/5. |
| 1996, quinary prime tail | Projection exponent is 49/60, below 50/60. The weak transport allows fibre size 2, not arbitrary multiplicity. | Retain. |
| 2004, quinary acceptable sieve | Dimension-50 all-even condition has density 2⁻⁵⁰, distinct from the quintic-ring density 2⁻⁴⁰. | Retain representation-specific density. |
| 2014, smoothing kernel | Trivial group, Θ=2,φ=3 gives kernel 6. In the finite-group analogue with trivial C₂ action, summing the stabilizer gives 12; an orbit missing the section gives 0. | Retain stabilizer and section coverage. |
| 2034, unfolding | Trivial-group example: 6/(1·2)=3 equals orbit weight 3. Finite-group C₂ analogue: 12/(2·4)=3/2 equals reciprocal-stabilizer orbit weight. Θ=0 would cause 0/0 and is excluded. | Retain positive theta integral. |
| 2042, sparse quaternary count | Y=X^(1/2) yields main X⁵/q⁶. At the lower Y threshold the exponent comparison is 5−2δ versus 5+10θ+60δ−λ, so saving requires λ−10θ−62δ>0. | Retain all slack terms. |
| 2054, number-field three-isogenies | Local cokernel/kernel sizes 3/3 give mass 1; 1/3 gives mass 1/3. Global Selmer ratio 1 yields average 1+1=2. | Retain actual Kummer masses and window hypothesis. |
| 2075, smooth hypersurface points | Over ℱ₅, y²z=x³ has 6 projective points and 5 smooth points; the asserted lower bound is 5−C(√5+1)≤5. A repeated line has 0 smooth points and fails geometric integrality. | Retain smooth count and integral hypothesis. |
| 2093, hypersurface exceptional tail | (n,d)=(2,2),(2,3),(3,2),(3,3) give coefficient dimensions 6,10,10,20 and reducible-locus codimensions 1,2,3,7. | Retain exceptional conic; other cases allow codimension-two sieve. |
| 2107, finite hypersurface counts | Primitive vectors modulo sign divide the Euclidean leading volume by 2ζ(N). Nonzero vectors v and −v form two-element sign orbits over ℚ; zero is excluded. | Retain both factors. |
| 2121, local-density headline | Odd-degree real forms have real-zero density 1. Positive definite even forms can have no real point; x₀^d−x₁x₂^(d−1) has smooth point [0:0:1] with derivative −1 at every prime, including 2 and 3. | Retain real factor, positivity and conic exclusion. |
| 2147+, window contract: cubic normalization | Divided cubic (0,1,0,s/4) has normalized discriminant s and ordinary discriminant −27s. A vanishing leading coefficient does not license switching to the affine natural-degree discriminant. | Retain fixed binary degree. |
| Window contract: local spreading | For σ(s)=(0,1,0,s/4), normalized Disc(σ(s))=s and its s-derivative is 1. At s=0 the regular-orbit condition fails; at nonzero s the section is only through its own orbit. | Retain section-through-u requirement. |
| Window contract: squareclass denominator | Positive squarefree rational parameters have density 6/π²; both signs give 12/π²; the positive archimedean sector has mass 1/2. | Retain sign normalization. |
| Window contract: radial scaling | Degree-D norm cutoff uses radius X^(1/D) and volume X. For cubic coefficient charts, radius X^(1/(4D)) in dimension 4D also gives X. | Retain dimension-dependent scaling. |
| Window contract: lattice index | Doubling the lattice index doubles covolume and divides the leading count by 2. A formula multiplying by index would instead give 2. | Retain inverse covolume. |
| Window contract: uniform tails | With no local restrictions the discarded mass is exactly 0; for a nontrivial bad-prime union it is nonnegative and bounded by that union count. It cannot be set to 0 before taking limits. | Retain explicit uniform unsieved bound. |
| Window contract: local mass | Rational orbit with kernel size 3 and cokernel size 1 has weight 1/3; counting just representatives would give 1. | Retain integral/rational multiplicity comparison. |
| Window contract: assembly/Tamagawa | With d=√D=2, total d⁻⁴=1/16 agrees with coefficient d⁻³ times group d⁻¹. Omitting the group factor gives 1/8. | Retain separate group measure and volume theorem. |

The real-body definitions in `Suggested.lean` were also tested independently of the asymptotic statements. This prevents a correct-looking limit from hiding a wrong carrier or a total-function junk value:

| Definition | Computed positive / negative or boundary control | Result / change |
|---|---|---|
| `monicPolynomial` | n=2,a=(0,−1) gives X²−1; n=0 gives 1. | Retain; tail theorems impose n≥2. |
| `binaryForm` | n=2,a=(1,2,3) gives x²+2xy+3y²; zero coefficients give 0. | Retain descending coefficients. |
| `binaryDiscriminantPolynomial` | Degree-2 universal expression b²−4ac has values 1 at (0,1,0), 0 at (1,2,1). | Retain fixed degree. |
| `binaryDiscriminant` | Binary coefficients (0,1,0) give 1; zero degree-2 vector gives 0, whereas affine zero-polynomial discriminant is 1. | Retain specialization order. |
| `monicWeightedBox` | n=2,X=2 admits X²−1: coefficient bounds 0<2,1<4. Constant coefficient 4 is excluded by strictness. | Retain. |
| `squareDivisorMultiplicity` | Δ=36,M=5 gives 1; M=6 gives 0; Δ=0 gives 0. | Retain. |
| `binaryOrbitSetoid` | Identity fixes every form. At det −1, ordinary cubic substitution and twisted substitution differ by −1; twist 1 includes that factor, twist 0 does not. | Retain integral GL₂ action. |
| `binaryCoeff` | Coefficients of 2x²+3xy+5y² are 2,3,5 at indices 0,1,2. Index 3 requests y³ and yields 0 for this homogeneous quadratic. | Retain native coefficient, with valid-range uses. |
| `quarticI` | x⁴±y⁴ give ±12; xy(x²−y²) gives 3. | Retain. |
| `quarticJ` | All three preceding forms give 0; 25x⁴+x²y²+y⁴ gives 1798. | Retain; sign fixed by formula. |
| `binaryRealRoots` | x⁴+y⁴ gives 0; x⁴−y⁴ gives 2; xy(x²−y²) gives 4. At the zero form the implemented finite-root formula returns 0+1=1; its interpretation as a root count is only used for nonzero homogeneous forms. Irreducibility excludes this junk case. | Retain nondegeneracy. |
| `quarticClasses` | Root count 2 excludes x⁴+y⁴; reducible xy(x²−y²) is excluded despite its four roots. For X≤0 the positive-height nonsingular class set is empty. | Retain actual irreducibility and height. |
| `cubicDiscriminant` | x³−xy² gives 4; x³−2y³ gives −108; x³ gives 0. | Retain. |
| `cubicClasses` | x³−2y³ belongs only to negative sign and requires X>108; at X=108 strict cutoff excludes it. | Retain. |
| `ternaryCoeff` | In u²+2uv+3v², (0,1) and (1,0) both return 2; (0,0) returns 1. | Retain coefficient rather than matrix entry. |
| `ternaryDet4` | Diagonal identity form gives 4; uv+w² gives −1; zero gives 0. | Retain. |
| `pairResolvent` | Example above gives coefficients (1,0,4,1), Δ=−283; doubling the pair multiplies the resolvent by 8 and its discriminant by 4096. | Retain. |
| `pairOrbitSetoid` | Identity matrices give the same pair; doubling both forms is not unimodular and changes nonzero discriminant by 4096. | Retain. |
| `commonRealZeros` | The two diagonal equations above give 4, a positive definite member gives 0, the singular pair (u²+v²,0) gives 1. | Retain. |
| `AbsolutelyIrreduciblePair` | The irreducible intersection quartic v⁴+v³−1 has no rational root and gives 2 real points; a rational common zero forces predicate false. | Retain native predicate. |
| `quarticPairClasses` | Example Δ=−283 is excluded at X=283 and admitted at X=284 when the residue condition and root type match; empty R excludes every pair. | Retain. |
| `hypersurfaceForm` | Single degree-d coefficient 1 gives the corresponding monomial; all coefficients zero give zero form. | Retain homogeneous degree indexing. |
| `HasProjectiveZero` | x₀−x₁ vanishes at (1,1); positive definite x₀²+x₁² over ℝ has no nonzero zero. | Retain nonzero-vector requirement. |
| `smoothHypersurfacePoints` | ℱ₅ cusp gives 5 smooth points; repeated line gives 0. Scalar multiples describe the same projective point. | Retain quotient and derivative test. |
| `hypersurfaceRealDensity` | Odd degree gives 1; positive definite even forms furnish a positive open family of failures. Scaling coefficients by a nonzero real scalar leaves solubility unchanged. | Retain angular/ball normalization. |
| `padicMass` | Constant functions 1 and 0 have masses 1 and 0; one residue ball mod p in N coordinates has normalized mass p⁻ᴺ. | Retain unit-lattice normalization. |
| `hypersurfacePadicDensity` | A form with a simple residual point lifts; the displayed derivative −1 remains a unit at p=2,3. Multiplying all coefficients by p does not change the rational zero set. | Retain solubility rather than primitive-coefficient conditioning. |
| `hypersurfaceClasses` | v and −v define one class; 2v is excluded if primitive coefficients are required. Zero coefficients are excluded. | Retain primitive sign quotient. |
| `binaryGoodDensity` | For n=2,p=2, b²−4ac mod 4 is nonzero exactly when b is odd: 32 of 64 triples, density 1/2. | Retain p², not p modulus. |
| `AcceptableBinaryWeight` | Constant 1 is acceptable; constant 2 violates [0,1]; constant 1/2 at every prime violates eventual equality to 1 away from square divisibility. | Retain four explicit conditions. |
| `binaryWeight` | All factors 1 give 1; one factor 1/2 gives 1/2; one zero factor gives 0. | Retain actual infinite product. |
| `binaryLocalMass` | Constant local weight 1 gives 1; 1/2 gives 1/2; 0 gives 0. | Retain normalized integral. |

## Not verifiable

These bibliography entries could not be read in full through the legal sources service. Their source text is not certified by this review. The mathematical tests and the rest of the review were completed; unavailable text was not replaced by a guess.

- **cohen-dihedral**, Cohen–Diaz y Diaz–Olivier, *Enumerating quartic dihedral extensions of ℚ*, DOI 10.1023/A:1016310902973: the service reached the Cambridge journal landing page, but obtained no readable legal full text. This limits direct verification of the dihedral extension estimates used in §2.8.
- **stichtenoth**, *Algebraic Function Fields and Codes*, second edition, Theorem 1.5.15: the service returned `uncertified` for Springer DOI 10.1007/978-3-540-76878-4. The Riemann–Roch source locator used in §2.10 was not certified from the book.
- **lang-weil**, *Number of points of varieties in finite fields*, Theorem 1 and Lemmas 1–2, pp.819–823, DOI 10.2307/2372655: the service reached the JSTOR landing page but no readable legal full text. Poonen–Voloch's open proof discussion and the roadmap's explicit uniformity route were inspected; the original printed locators were not.
- **platonov-rapinchuk**, *Algebraic Groups and Number Theory*, Volume I, second edition, §5.3, Example 5.23, p.316: the service reached the Cambridge book landing page but no readable legal full text. The SL₂ Tamagawa-value citation in the assembly target remains uncertified from that book.

## Source issues

The following concern the cited source versions, not additional defects in this head. The roadmap either corrects them explicitly or keeps the additional quantitative hypothesis. Source identifiers are those in the source-sample table; all descriptions below are in my own words.

- **Misprint** in bs-quartic at Proposition 2.8, equation (22), printed p.13: the source says the inner integral is over all PGL₂(ℝ), while the left side uses a fundamental multiset; it should be over the corresponding fundamental domain; affects a stated result; corrected in print at equation (23), p.13.
- **Error** in bs-quartic at Theorem 2.20 proof, printed p.18: the source says weak divisibility forces the last-coefficient derivative to be nonzero modulo p; it should be some coefficient derivative, with separate coordinate cases; affects the proof.
- **Gap** in bs-quartic at Theorem 2.19 and equation (37), printed p.18: the source says the cited quartic-field transport supplies the whole required tail; it should include a separate treatment of the field types outside that transport; affects the proof.
- **Misprint** in bst-dh at Proposition 23 and §5.4, printed pp.12,14: the source says the Jacobian coefficient and group volume are 1/(2π) and ζ(2)/π; it should be 1/(4π) and ζ(2)/(2π) with the specified Haar coordinates; affects nothing.
- **Gap** in bhargava-geomsieve at Lemma 3.1 proof, printed p.10: the source says a nonzero resultant multiplier preserves the relevant component; it should account separately for components where that multiplier vanishes; affects the proof.
- **Error** in bsw-sqfree1 at Lemma 4.2 proof, printed p.21: the source says each fixed nonzero constant coefficient has O(log X) possible divisors; it should use the averaged divisor sum O(Y log Y); affects the proof.
- **Error** in bsw-sqfree1 at Proposition 4.3 proof, printed p.22: the source says the conjugate-half splitting group has order at most 2(n/2)!; it should use the wreath bound 2((n/2)!)², giving index three in degree four; affects the proof.
- **Error** in bsw-sqfree1 at Theorem 4.4, printed p.22: the source says the summed square-divisor bound includes all discriminants; it should exclude zero discriminant, which contributes infinitely many moduli; affects a stated result.
- **Misprint** in bsw-sqfree1 at the even torus coordinates, printed p.18: the source says the final coordinate is s_g=t_g t_(g+1), duplicating s_g; it should be s_(g+1)=t_g t_(g+1); affects nothing.
- **Misprint** in bsw-sqfree1 at equation (36), printed p.19: the source says the Q character is the product of s_i to positive powers i; it should use powers −i, as the displayed t-coordinate expression requires; affects the proof.
- **Gap** in bsw-sqfree1 at equation (41), printed p.23: the source says the intermediate lattice error is X^(D−n) for each modulus; it should retain the shorter-face and residue-class errors before optimizing the truncation; affects the proof.
- **Error** in bsw-sqfree2 at Proposition 3.6 proof, printed p.11: the source says a zero Gram determinant over ℂ implies deficient row rank; it should impose a nondegenerate restricted pairing or use a different determinantal argument; affects the proof.
- **Error** in bsw-sqfree2 at Proposition 5.2, printed p.22: the source says its positive-power lattice bound holds for every Y>0; it should include the constant term for the origin, or exclude that point; affects a stated result.
- **Error** in bsw-sqfree2 at Proposition 5.5, printed p.22: the source says the uniform bound uses d(Λ); it should use d(γΛ), consistent with the transformed lattice in Theorem 5.3; affects a stated result.
- **Gap** in bsw-sqfree2 at Theorem 6.6, printed p.29, proof p.33: the source says the proof yields saving 1/(4n); it should retain the minimum with (n−2)/(2n²+2n+2), unless that other error is improved; affects the proof.
- **Gap** in bsw-sqfree2 at Lemma 6.25 proof, printed p.44: the source says scaling the pair by Y⁻¹ yields discriminant greater than X^(−κ); it should account for the pair-discriminant degree and the lifted constant-coefficient factor; affects the proof.
- **Gap** in bsw-sqfree2 at Lemma 6.25 proof, printed p.44: the source says Proposition 3.6 supplies the needed Gram-polynomial factorization; it should justify that divisibility independently or assume the restricted real Gram bound explicitly; affects the proof.
- **Misprint** in bsw-sqfree2 at the proof of Theorem 5(c), printed p.50: the source says the squarefree-modulus residue count is O(m^(2n−ε)); it should have exponent 2n+ε, consistent with the following denominator m^(2−ε); affects nothing.
- **Error** in bsw-sqfree2 at Corollary 6.27, printed p.51: the source says its square-divisor sum includes zero-discriminant forms; it should restrict to nonzero discriminant before invoking a finite divisor bound; affects a stated result.
- **Misprint** in bsw-sqfree2 at Corollary 6.27 proof, printed p.51: the source says each of the strong and weak unions separately bounds the full union; it should bound by their sum; affects the proof.
- **Misprint** in bs-five at Theorem 12, printed p.7: the source says the main constant is Jacobian times group volume; it should also divide by the real stabilizer order five; affects a stated result; corrected in print at equation (18), p.17.
- **Error** in bss-second at Theorem 5.1, printed p.24: the source says the normalized unfolding holds for arbitrary smooth compactly supported Θ; it should require its integral to be nonzero before division; affects a stated result.
- **Gap** in st-secondary at Theorem 11.1 proof, printed p.41: the source says the quadratic-extension count is uniformly subpower while the quadratic base field varies; it should justify that uniformity, retaining class-group dependence; affects the proof.
