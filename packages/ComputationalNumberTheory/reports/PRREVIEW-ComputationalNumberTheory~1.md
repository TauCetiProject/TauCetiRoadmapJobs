# Review of ComputationalNumberTheory (pull request #1408 at 7eb00f4)

**Verdict:** needs changes

## R01 (P2) — Reverse supply to an earlier roadmap

**Location:** `TauCetiRoadmap/ComputationalNumberTheory/README.md:120–132`, especially “The direction of supply is from this roadmap to EffectiveDiophantineMethods”; also lines 2693–2714.

**Claim:** The five groups of shared foundations are owned here and supplied to EffectiveDiophantineMethods. That direction contradicts the supplied merge order. Naming an earlier roadmap a consumer does not move it after its proposed supplier, and the dependency scanner does not validate these downstream assertions.

**Witness:** `merge-order/ORDER.txt:158` places EffectiveDiophantineMethods before ComputationalNumberTheory at line 178: the proposed supplier position is 178 > 158. The ownership search also finds the generic saturation definition and criterion in EffectiveDiophantineMethods §§3.17–3.18.

**Repair:** Reconcile ownership and order before retaining this supply claim. With the supplied order, cite EffectiveDiophantineMethods §§3.17–3.18 for the generic saturation and joint-reduction results, remove their duplicate ownership here, and retain the additional elliptic presentation comparisons. Resolve the other four table rows in the same direction. Alternatively, an explicitly coordinated transfer must actually place this supplier before its consumer and update the consumer's ownership; the local prose alone is insufficient. Do not add reciprocal dependencies.

**Repair check:** For A=ℤ, G=3ℤ, p=2, reduction sends the generator to 1 modulo 2, its kernel on G/2G is zero, and G is 2-saturated. This is the same generic object in both ownership claims. Keeping the earlier owner gives the edge 158→178 and preserves the elliptic specialization. I did not change the order or either roadmap. The search result is an overlap lead; the unavailable EffectiveDiophantineMethods head was not independently opened to certify its entire contract.

## R02 (P3) — Mark the declared supplier gap where intake reads it

**Location:** `TauCetiRoadmap/ComputationalNumberTheory/README.md:428–437`, the HeightsRationalPointsAndObstructions supplier subsection.

**Claim:** This subsection presents the quotient-cardinality input as supplied but omits the declared gap's identifier and contract marker.

**Witness:** `packages/ComputationalNumberTheory/design/plan.json:4` contains slug `local-two-quotient`; searching the entire README for `gap:local-two-quotient` returns zero occurrences.

**Repair:** Label the existing precise cardinality contract with `What HeightsRationalPointsAndObstructions must provide (gap:local-two-quotient):`, retaining the dimension, local-field and real hypotheses and both formulas. No new supplier request or mathematical target is needed.

**Repair check:** The marker would then match the existing plan slug. At dimension one, the formulas give 8 for a split cubic over ℚ₂, 4 over an odd p-adic field, and 2 over ℝ; thus the existing mathematical contract already supplies exactly the required sizes. This is a declaration-format issue, not a finding that the announced supplier gap is unowned.

## Verified sound

The mathematical checks below found no counterexample to a headline theorem. They are explicit tests and source comparisons, not proofs of the universal claims or a rerun of Platt's large computations.

**Coverage and gate.** Read both complete target files: 126 numbered README subsections and 69 named Lean declarations, including 32 admitted theorems. Read the normative README and contribution instructions and compared the shape with `Completed/NumberFieldArithmetic/README.md` and `TauCetiRoadmap/NewtonPolygons/README.md`. Verified the requested Git head, no changes outside this roadmap in the PR diff, and no review changes to the checkout. The supplied gate reports every scanner and the targeted build passing. Independently ran the targeted build (9016 jobs), direct `lake env lean` elaboration, and a scratch copy with `#check @name` for all 69 declarations: all pass, with only admission warnings in the target. Checked the displayed types against the README; completeness, finite generation, full span, generating-root, ambient torsion and good-integral-model assumptions remain in scope. No signatures were changed.

The dependency check produced:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There is no reported UPWARD or CYCLE line. R01 is a separately inspected downstream-order inconsistency, not an invented scanner failure. Every layer has examples and dependencies. Definition blocks have API statements and at least three Checks. No sorry-defined data, `set_option`, extra imports, admitted examples or executable algorithm specification was found. The finite predicates describe mathematical conditions rather than an execution procedure.

**Headlines and padding.** The README's headline list is represented by these acceptance declarations:

| README targets | Suggested.lean theorems |
| --- | --- |
| 0.15 | `rabin_iff_irreducible` |
| 1.3–1.6 | `PrattTree.sound`, `PrattTree.complete`, `pratt_small_tree` |
| 1.9, 1.14, 1.16 | `strongLiar_card_le`, `aks_correct`, `pocklington_prime` |
| 1.26–1.26a | `henselLift`, `henselFactor_completeDVR` |
| 2.6, 2.20, 2.22–2.23 | `pRadical_multiplier_eq_iff`, `ore_residual_irreducible`, `isSquare_iff_isSquare_mod`, `card_padicRoots_eq` |
| 3.3–3.4 | `exists_millerBasis`, `exists_integralModularBasis`, `levelOne_congruence_sturm` |
| 3.13–3.16 | `nonordinary_pairs_lt_200`, `weight82_companion_system`, `ordinary_companion_list` |
| 3.19–3.21 | the p-adic and real `localImageSpan_eq_range_of_card_*` and `exists_complete_localImage_*` theorems, `localImage_of_good_odd` |
| 3.26 | `pSaturationCriterion_iff` |
| 4.17a, 4.19 | `digamma_series_remainder`, `trigamma_series_remainder`, `exists_disjoint_root_presentations` |
| 4.19a, 4.20a | `dirichlet_eulerMaclaurin_remainder`, `cusp_mellin_tail` |
| 4.22–4.23 | `platt_bounded_height`, `platt_central_nonvanishing` |

All are statable on the pinned carriers plus the retained definitions. No missing headline or free-predicate stand-in was found. A scratch copy replacing each of the 32 admissions with `simp` leaves 32 unsolved theorem proofs. Reading their conclusions and the relevant pinned declarations also rules out `rfl`, `infer_instance`, and the obvious single-library-theorem substitutions: Lucas criteria do not contain the tree recursion, the native Sturm theorem is equality rather than integral congruence, root Hensel is not factor Hensel, and deep-unit squareness is not the residue-quotient equivalence. No padding finding is established by this probe.

**Seeded source checks.** All 15 requested targets were checked against the legal cached text, including hypotheses and version-specific numbering. The README marks no additional locator unverified. The references distinguish source theorems from locally defined presentations and derived estimates; the general normed-field record in 2.21, dyadic floor/ceiling specialization, and uniform analytic bounds are derived formulations, not verbatim source propositions.

| Sample | Located text and comparison |
| --- | --- |
| 0.14 | CarusoPublished lines 911–949, Proposition 2.1.1 and Definition 2.1.2, printed II–17–18: the zero-ball alternative, normalized mantissa and absolute/relative precision agree. |
| 1.13 | Shoup lines 21540–21555, Figure 21.1, printed p.550: least modulus, perfect-power exclusion, order threshold and `2*len(n)*floor(sqrt(r))+1` agree. |
| 1.24 | Shoup lines 20611–20718, Theorem 20.5, pp.527–528; lines 20825–20855, §20.4, p.532; lines 21130–21160, §20.5, pp.538–539. Squarefree decomposition and irreducible factors support the presentation; a nonmonic nonzero polynomial first contributes its leading coefficient. Constants give the empty factor list. |
| 2.2 | NumberRings lines 1122–1130, Proposition 9.3 and proof, p.235: the stabilizer is the multiplier ring. The zero-submodule extension is explicitly this roadmap's broader adapter. |
| 2.19a | GMN lines 293–397, Definitions 1.6–1.10, pp.7–8; 495–551, Theorem 1.13, pp.10–11; 575–600, Theorem 1.15, pp.11–12; 684–716, Theorem 1.19/Corollary 1.20, pp.14–15. Product, side and residual factorizations retain the negative principal polygon, infinite side and residual multiplicities. |
| 2.21 | CarusoPublished lines 911–949, §2.1.1, II–17–18: rational p-adic ball semantics. The normed-field record stores its remainder inequality and does not infer a canonical residue section or digit-extraction theorem from this source. |
| 3.3 | Stein lines 1134–1167, Lemma 2.20 and Remark 2.21, pp.20–21: unit leading terms and integral elimination give the first-d identity matrix. The README correctly separates the cusp lattice from the full modular lattice. |
| 3.4 | Stein lines 7638–7664, Theorem 9.18, pp.171–172: level-one congruence includes coefficient zero and indices through floor(k/12). |
| 3.15 | BCG lines 195–210 and 321–341, Theorem 2.1 and proof of Theorem 2.4, pp.512–515; CG13 lines 255–270, Theorem 8, and appendix lines 522–566. Ordinary weights sum to p+1, twist exponent is p−k, and both eigenvectors must be nonzero. |
| 3.23 | Siksek lines 804–831 and 864–877, §4, equation (39), §4.1, p.17, and §4.2, p.18. The README retains the p=2 exception and adds the necessary ambient-torsion condition for its generic-group extension. |
| 4.5 | Arb §3.1, p.4, line 439, and §5, p.7, lines 779–811 supply directed rounding and containment semantics. The fixed-grid endpoints and strict width bound follow from floor/ceiling inequalities, as the README explains. |
| 4.11 | CarusoPublished lines 955–961, Proposition 2.1.3, equation (2.1), II–18: addition has exact precision min(N,N′), including cancellation. |
| 4.19a | DLMF25 line 213, equation 25.11.4, and lines 419–449, equation 25.11.7. Shift then integrate by parts to obtain the even-Bernoulli remainder on Re(s)+2m>1; the nonprincipal polar cancellation at one and q^(−s) factor are retained. |
| 4.20 | Platt §§4–6 and DLMF25 25.11.7 supply continued-value/error comparisons; the roadmap's arbitrary-precision existence follows from its explicit 4.19a bound, not from a claim that the raw Dirichlet series converges everywhere. |
| 4.21 | Arb §§5–6, pp.7–10 supplies containment semantics; DLMF8 lines 122–164, equation 8.2.2 supplies the upper incomplete-Gamma integral. The actual two-tail estimate is stated and derived in 4.20a using the native Mellin normalization. |

Additional checks included Shoup's finite-algebra AKS lemmas, PrattNotes' proof-length argument, Théry's Pocklington proof, the CT/CL scalar formulas, CG13's ordinary/nonordinary tables, and Platt Theorems 7.1–7.2. The CL reference is the French preprint: Proposition 3.17, printed pp.304–307. Zhou was fetched legally through the sources service; its discussion at line 234 proves the irrationality used for the CT endpoint distinction. Mattuck remains waived, as instructed.

**Computed adversarial pass (144 rows).** Each row records actual values, memberships or cardinalities; “retained” means no mathematical change is requested by that test. Composite subsection rows are split where distinct constructions or identities need separate witnesses. Exact arithmetic was used for polynomial coefficients, finite groups, residues, interval endpoints and matrices. Decimal analytic entries are diagnostic evaluations, not claimed certified floating-point intervals.

| Statement | Instances and computed values on the two sides | Result / change |
| --- | --- | --- |
| Conventions: columns, width, parity | Matrix `[[3,17],[25,10]]` times (47,1) is (158,1185)=(0,0) mod79; transpose gives (166,809)=(8,19). Width-one Δ has a₁=1. | Correct column convention; retained. |
| 0.8 isolated root/value | X and X² in the singleton rectangle decode 0, polynomial value 0; X²−1 in [−2,2] has two roots, cardinality 2≠1. | Multiplicity allowed, ambiguity excluded. |
| 0.9 rational root | X−1/2 at 1/2 evaluates 0; singleton decoded value 1/2. At 0 its value is −1/2≠0. | Retained. |
| 0.9a existence | X²−2 has ±√2 in disjoint [1,2] and [−2,−1]; each contains exactly one root. Constant 1 has zero roots. | Nonzero polynomial and algebraicity used. |
| 0.10 addition | √2+(−√2)=0; annihilator X evaluates 0. Adding 1/2+1/3 gives 5/6 on both decodings. | Retained. |
| 0.11 multiplication | √2·√2=2; X−2 at 2 is 0. Multiplication by decoded zero gives 0. | Retained. |
| 0.12 inversion | (√2)⁻¹=√2/2; 2X²−1 evaluates 0 there and product is 1. Input 0 is excluded. | Denominator guard retained. |
| 0.13 equality | X and X² singleton-zero presentations both decode 0; presentations of +1 and −1 decode distinct values. | Both directions discriminate value, not syntax. |
| 0.14 normalized p-adic record | p=3,N=2: c=10 normalizes to (v,s)=(0,1), since 10−1=9; c=9 gives (2,0); c=1/3 gives (−1,1), relative precision 3. | Correct representatives; zero alternative essential. |
| 0.15 Rabin | Over F₂, X²+X+1 has X⁴ mod f=X and gcd(f,X²−X)=1. For (X+1)², X⁴−X has remainder X+1≠0. f=1 is a unit and fails positive degree. | Equivalence passes positive/negative/unit tests. |
| 0.16 finite field | F₂[X]/(X²+X+1) has basis (1,α), dimension 2, cardinality 4; α²=α+1. Choosing α=0 fails f(α)=1. | Root and finrank hypotheses discriminate. |
| 0.17 presentation change | On F₄, b=c=X+1 gives b(c(X))=X; both substituted quadratics reduce to 0. b=X+1,c=X gives composite X+1≠X. | Explicit inverse necessary. |
| 1.1 Pratt tree/value | Leaf value 2; node(3,2,[leaf]) value 3; node(0,0,[]) still has raw value 0, not a primality proof. | Syntax distinguished from validity. |
| 1.2 validity | Node3: child product 2=3−1, 2² mod3=1, 2¹ mod3=2≠1. Node3 with a=1 fails last inequality. | Retained. |
| 1.3 soundness | Leaf and valid node3 give prime values 2,3; node9,a=2 has 2⁸ mod9=4≠1 and is rejected. | No false composite witness. |
| 1.4 completeness | Trees for 2 and 3 as above; for 5 use a=2 and two leaf2 children: product4, 2⁴ mod5=1, 2² mod5=4. | Repeated factors necessary. |
| 1.5 bit size | Leaf size1; node3 size `1+2+2+1+1=7`; node5 with a2 and two children size `1+3+2+2+2=10`. | Counts multiplicity and headers. |
| 1.6 quadratic bound | For these n=2,3,5, sizes 1,7,10 are ≤2·length²=8,8,18. This tests the measure, not a universal choice C=2. | Retained. |
| 1.7 strong liar | n=9 has liars {1,8}; base2 gives 2¹=2, 2²=4, 2⁴=7, so fails. n=0,1,2 fail the odd n>1 predicate. | Junk values guarded. |
| 1.8 primes | n=3 bases1,2 give 1 and −1; n=5 bases2,3 have squares −1. All four nonzero bases for 5 pass. | Retained. |
| 1.9 liar bound | n=9: 4·2=8=n−1; n=15:8≤14; n=25:16≤24; n=2047:968≤2046, with base2 a liar. | Non-coprime bases not silently omitted. |
| 1.10 repeated rounds | n9,k2: accepting tuples=2²=4 of 8²=64, ratio1/16; k0 gives 1/1=1=4⁰. | Retained. |
| 1.11 AKS parameter | n0,1 give sentinel0; n2 gives r2, gcd2; n3 gives r3, gcd3; n9 gives r3, gcd3. | First bad divisor behavior correct. |
| 1.12 AKS identities | n2,r2,j1: (X+1)² and X²+1 both reduce to 0 in F₂[X]/(X²−1). n9,r2,j1 has remainder 4+4X versus 1+X. | Composite polynomial test discriminates. |
| 1.13 AKSAccepts | n2,3 pass r=n and are prime; n4,9 fail perfect-power exclusion; n0,1 fail n>1. | Both directions on small inputs. |
| 1.13a substitutions | In F₂[X]/(X³−1), σ₂²(X)=X⁴=X, agreeing with σ₁; Frobenius sends 1+X to 1+X². | Composition direction correct. |
| 1.13a multiplicativity | Same algebra, a=1+X,b=X: σ₂(ab)=X²+X⁴=X²+X=(ab)². For k=1, D(1)=E has 8 elements. | Retained. |
| 1.13a upper/lower counts | n=p=2,r31: t=ord₃₁(2)=5, S=F₃₂ has 32 elements, versus proposed upper 2⁴=16. The non-prime-power guard excludes this. Lower 2^min(5,1)−1=1≤32. | Guard essential; no change. |
| 1.13a numerical separation | n2,r331,t30,ℓ73: length2, ord₃₃₁(2)=30>16; 2³⁰−1=1073741823 > 2¹⁰=1024. | Numeric cardinality inequality passes. |
| 1.14 AKS equivalence | 2,3: acceptance=prime=true; 0,1,4,9: both false. | Retained; general proof needs the stated algebra. |
| 1.15 Pocklington divisor | n7,F3,a2: 2⁶ mod7=1; gcd(2²−1,7)=1; prime divisor7 has 7−1=6 divisible by3. | Retained. |
| 1.16 Pocklington primality | n7,F3:7<9. n9,F4,a2 fails 2⁸ mod9=4; no spurious prime conclusion. | Strict size and congruence retained. |
| 1.17 finite presentation | n7,F3 can use child prime3 with witness2; product3 divides6, inequalities as above. An empty child list cannot represent F3. | Retained. |
| 1.18 finite soundness | That list supplies q3 and prime conclusion7; replacing child3 by raw invalid node9 fails child validity. | Retained. |
| 1.19 integer factors | −12 decodes sign− and [2,2,3] to −12; empty lists decode ±1; no such product is 0. | Zero excluded. |
| 1.20 factor soundness | Prime divisors of −12 are {2,3}; child-value product=12. Duplicated 2 records exponent2, not another distinct prime. | Retained. |
| 1.21 existence | −1,1 use empty signed lists; −12 uses [2,2,3]; 0 has no signed nonzero-prime product. | Nonzero hypothesis necessary. |
| 1.22 finite-field factors | Over F₃, 2(X+1)²=2X²+X+2: c2, factor X+1, exponent2. Raw zero polynomial fails c≠0. | Retained. |
| 1.23 factor soundness | Leading coefficient2 agrees with c; irreducible multiset [X+1,X+1] has product (X+1)². | Scalar and multiplicity correct. |
| 1.24 factor existence | Constant2 in F₃ has c2 and empty list; X² in F₂ has X with exponent2 despite derivative0. | Inseparable polynomial case included. |
| 1.25 transport | F₄ automorphism α↦α+1 sends X−α to X−(α+1); leading coefficient remains1, degree1 and multiplicity1 remain1. | Retained. |
| 1.26 finite Hensel | f=X²−1,p3,k2: factors X−1,X+1 mod9 reduce correctly and multiply to f; coprime mod3. At p2 both reductions X+1 coincide, gcd degree1≠0. | Noncoprime case excluded. |
| 1.26a complete DVR Hensel | F₃[[t]], f=X²−1 has the same two exact monic factors; f=1 lifts (1,1). Equal-characteristic example is admitted by the signature. | General complete-DVR form retained. |
| 1.27 rational factors | (1/2)(X−1)² has scalar1/2 and repeated factor exponent2; 1 uses empty list; 0 fails scalar≠0. | Retained. |
| 1.28 rational factor existence | X²−2 has one irreducible degree2 factor; X²−1 has X−1,X+1; 1 has zero factors. | Covers irreducible, split and unit cases. |
| 2.1 order basis | In Q(i), basis(1,i) has i²=−1 and integer structure constants. (1,i/2) fails: (i/2)²=−1/4 has nonintegral first coordinate. | Closure distinguishes an order. |
| 2.2 multiplierRing | I=0 gives all Q; I=Z and I=2Z both give Z. x=1/2 sends 2 to1∉2Z. | Broader zero-lattice adapter justified. |
| 2.3 IsPMaximal | R=Z in Q,p2: any integral x has multiplier a1; p1 fails since 1 divides every a. | Prime guard on the theorem retained. |
| 2.4 Frobenius nilradical | F₂[ε]/ε² has dimension2; square kernel={0,ε}, exactly its two nilpotents; 1²=1. Zero algebra has dimension0 and one element0=1. | Nilpotent/zero-ring edges pass. |
| 2.5 p-radical | For R=Z,p3: radical(3)=3Z; for p1 radical(1)=Z. For p0 in Z, radical(0)=0. | Native radical and image agree. |
| 2.6 multiplier criterion | R=Z,p3: multiplier(3Z)=Z and local maximality=true. In Z[√5] at2, I=(2,1+√5); (1+√5)/2 stabilizes I but is outside R, and R is not 2-maximal. | Both directions discriminate. |
| 2.7 integral basis | Q(√5): basis(1,(1+√5)/2) has discriminant5; (1,√5) has discriminant20 and index2. | Equality with full integer ring is substantive. |
| 2.8 extension | Input Z[√5] embeds in Z[(1+√5)/2] with index2 and both ranks2; Q has rank1, never0. | Retained. |
| 2.9 ideal decomposition | Q: (3) one prime, exponent1; p1 empty product=unit ideal. Q(i): (2)=(1+i)² as ideals, e2,f1, norm4=2². | Ramification and raw unit case retained. |
| 2.16 φ-expansion | φ=X−1, f=X²: coefficients1,2,1 give 1+2φ+φ²=X²; index3 gives0. f0 gives all0. | Reconstruction and bounds pass. |
| 2.17 coefficient valuation | v₃(3X+9)=min(1,2)=1; v₃(X²)=0; value at zero polynomial=∞. | Zero coefficients not assigned false minima. |
| 2.18 Newton side | X²−3,φX,p3: endpoints(0,1),(2,0), slope−1/2; line 2v+i=2 at both. Slope−1 fails endpoint equality. | Maximal supporting face retained. |
| 2.19 residual | X²−3 gives Y−1 in F₃[Y]; (X−3)² gives Y²−2Y+1. Zero raw input gives0. | Exact division precedes reduction. |
| 2.19a uniformizer | π3→π′−3 changes normalized constant −3/3=−1 to −3/(−3)=1; residual Y−1→Y+1. Formula c⁻¹R(cY) with c−1 gives Y+1. | Unit factor correct. |
| 2.19a product | (X−3)² has slope−1 of length2 and residual (Y−1)²; multiplication by1 leaves both unchanged. | Multiplicity retained. |
| 2.19a side factors | (X−3)(X−9): coefficient valuations(3,1,0), slopes−2,−1, factors X−9,X−3. φ² has only the infinite-slope length2. | Mean-slope replacement rejected. |
| 2.19a residual factors | Over Q₅, X²−25 yields (Y−1)(Y+1), two degree1 factors. Over Q₃, X²−3 has e2,f1; repeated (Y−1)² does not force irreducibility. | Exponent-one condition retained. |
| 2.20 Ore | X²−3 over Q₃: d1,e2,h1, residual linear irreducible; degree2=e·f. (X−3)² fails residual irreducibility. | Retained. |
| 2.21 local expansion | π=3,x=1/3,v−1,N1,d₀1: error0≤1. For x1,v0,N1,d₀0: error1>1/3. Zero digits encode x0 with error0. | Record excludes wrong approximants. |
| 2.22 local squares | Q₂:17≡1 mod8 is square; 5 mod8 is not a square residue. In Q₂(√2), (1+√2)²=3+2√2, a unit square. | Ramified dyadic case retained. |
| 2.23 local roots | Q(√2),p7: X²−2 has two Q₇ roots and two e=f=1 primes; p2: zero Q₂ roots, one prime e2,f1, hence RHS0. | Residue degree alone would give wrong RHS1. |
| 3.1 integral modular lattice | E₄ constant coefficient1, all integral; E₄/2 has constant1/2 and fails. Zero form has all coefficients0. | Span agrees with closed integral-coefficient set. |
| 3.2 cusp lattice | Δ has a₀0,a₁1,a₂−24; Δ/2 fails at a₁1/2; E₄ has a₀1 and is not cuspidal. | Cusp/modular distinction retained. |
| 3.3 Miller basis | k12,d1: basisΔ has coefficient matrix[1]. k24: ΔE₄³ has a₂696; subtract696Δ² to obtain first two coefficients(1,0), while Δ² gives(0,1). k14:d0. | Integral elimination and rank zero pass. |
| 3.3a full basis | k12: E₄³−720Δ and Δ have coefficients at0,1 equal identity; k0 basis1,pivot0; k2 dimension0. | Constant term retained. |
| 3.4 congruence Sturm | k12,p2:2Δ has a₀0,a₁2 and all coefficients divisible2; Δ fails a₁1. k0 constant1 is detected at index0. | Inclusive bound and zero coefficient necessary. |
| 3.5 equality | At weight12, Δ and 2Δ differ at a₁1 versus2; equal initial0,1 data force equal coordinates in the displayed full basis. | Reuses native equality, not restated in Lean. |
| 3.6 Hecke recurrence/action | Δ,T₂: n1 gives a₂=−24; n2 gives a₄+2¹¹a₁=−1472+2048=576=(−24)a₂. | Factor p^(k−1) and column action correct. |
| 3.7 Hecke matrix | Weight12 matrix[−24]; weight38 at79 matrix [[3,17],[25,10]] modulo79, independently recomputed through q¹⁵⁸. | Basis coefficient convention passes. |
| 3.8 a₁₀₇ | ΔE₄²E₆ has a₂−48,a₃−195804,a₁₀₇=35830422465487817813321292; last residue106=−1 mod107. | Exact convolution agrees. |
| 3.9 ordinarity | a₁₀₇ residue106≠0, whereas 0 would mean nonordinary. | Retained. |
| 3.10 nonordinary determinant | det [[3,17],[25,10]]=30−425=−395=−5·79; vector(47,1) is nonzero in kernel. | Exact witness, not determinant rounding. |
| 3.11 nonordinary predicate | Weight12,p2: Δ mod2 nonzero (a₁1) and T₂=−24≡0. Zero form fails nonzero-reduction clause. | Excludes vacuous zero witness. |
| 3.12 first primes | CG13 first N pairs are(59,16),(79,38); companion weights46,44 satisfy k+k′=p+3 (62,82). | Table comparison, not exhaustive independent recomputation. |
| 3.13 list below200 | 8 unordered N pairs give16 listed weights. For p193:72+124=196=p+3; for p173:24+152=176. p2,k2 fails k<p. | Matches all N-marked source entries in range. |
| 3.13a localized lattice | Z at p5: Z_(5)⊗F₅=F₅, basis1 remains1; cusp weight2 gives0⊗F₅=0. These compare the reduction image, not all geometric forms. | No arbitrary-Katz identification. |
| 3.13a residual space/Hecke | Matrix[−24] base-changed to F₅ becomes[1]; to F₂ becomes[0]. Pure tensor c⊗Δ maps to c⊗(−24Δ). | Tensor direction correct. |
| 3.14 weight82 companion | mod107:2⁸¹=45,45·59=87;3⁸¹=53,53·6=104. Inverse twist25 would give56,95. | Correct twist; nonzero v required. |
| 3.15 ordinary pair | p107,k26 gives companion82 and twist81; weights sum108. Zero v or w fails; a₁₀₇106 supplies ordinarity for the input form. | Ordinary versus p+3 convention distinguished. |
| 3.16 companion list | Six pairs give gcd(k−1,p−1)=1 each. Omitted p151 weights52,100 give gcd(51,150)=gcd(99,150)=3. | Correctly does not propagate BCG's p151 claim. |
| 3.17 point counts | F₃:y²=x³+x has4 points,trace0. F₅:y²=x³+x+1 has9,trace−3; twist d2 has3,trace3. Singular x³ over F₅ has6 projective solutions but5 nonsingular-group points. | Native projective count and singular inclusion preserved. |
| 3.18 local image span | Q₂ cubic x³−x, x=−4,−16,−23: cubic valuations2,4,4 and odd parts1 mod8. Their square-class triples are (7,3,5),(7,7,1),(1,2·5,2·5), independent of rank3. | Span size8; roots themselves excluded from this abscissa presentation. |
| 3.19 size completion | Split cubic has r3: p2 target(1+3)·2=8; odd p target4; real equation2·size=4 gives size2. Proper rank2 subgroup of the p2 image has4≠8. | Cardinality detects incomplete spans. |
| 3.20 image existence | The three Q₂ rational abscissae above generate size8. Over R, x=−1/2 gives f=3/8>0 and a nontrivial sign class; positive x=2 gives f6 and trivial class. | Rational abscissae suffice in tested examples. |
| 3.21 good odd image | y²=x³−x at p3 has discriminant64, a unit, and split cubic; unramified square classes with square norm have size2^(3−1)=4, equal image size4. At2 discriminant not a unit and image size8. | Good-model guard includes integrality and 2. |
| 3.22 saturation | G6Z⊂Z: index6, gcd(5,6)=1 and saturated at5; p2 gives2·3∈G,3∉G. For Z×Z/2,G=Z×0, intersection equality holds but torsion containment fails. | Mathematical equivalence passes; ownership R01. |
| 3.23 finite tests | A=Z,g2,p2: V₂={0,1}, so nonzero test fails. A=Z/3,G=A,p2,empty g: G/2G=0,V₂={0},torsion kernel0. A=Z/2,G0: V₂={0} but A[2] has2 elements. | Quotient-generation and torsion guards necessary; R01. |
| 3.24 divisibility polynomial | y²=x³−x, P=(0,0),p2: Φ₂−xPΨSq₂=(X²+1)², degree4, no rational roots; P is not a rational double. Zero point is twice zero. | Candidate ordinate/equality conditions retained. |
| 3.25 joint reduction | G3Z at2 maps generator3→1, kernel0 and saturated; G2Z maps2→0, kernel size2 and not saturated. Empty reduction on A=Z/2,G0 has injective zero domain but missing torsion. | Mathematical tests pass; ownership R01. |
| 3.26 finite criterion | g=(Q,2Q),p2 with Q infinite: coefficient(0,1) gives2Q=2·Q, so finite independence test fails although G=ZQ is saturated in itself. Rank-zero full torsion group retains its p-torsion. | Independence is an actual conclusion, not assumed. |
| 4.1 signed product | [−2,3]·[−4,5]=[−12,15]; corner values8,−10,−12,15. [−1,1]²=[−1,1], not[1,1]. | Signed hull correct. |
| 4.2 product containment | x=−2,y5:xy−10∈[−12,15]; x3,y5 gives upper15; x3,y−4 gives lower−12. | Both extrema witnessed. |
| 4.3 reciprocal | [2,4]→[1/4,1/2]; [−4,−2]→[−1/2,−1/4]; [−1,1] rejected. | Endpoint reversal and zero guard correct. |
| 4.4 inverse containment | x3∈[2,4], reciprocal1/3∈[1/4,1/2]; x−3 gives−1/3 in negative interval. | Retained. |
| 4.5 dyadic hull | p2,1/3→[1/4,1/2]; p0,−1/3→[−1,0]. Truncation toward0 would lose−1/3. | Outward signs correct. |
| 4.6 rounding width | Singleton1/3,p2: width1/4<0+1/2; exact [0,1],p0:width1<1+2. | Strict bound includes exact endpoints. |
| 4.7 complex box | [0,1]×[−1,0] contains1−i on boundary; excludes1+i since1≤0 is false. Singleton zero contains exactly0. | Closed-coordinate convention correct. |
| 4.8 unique integer | [9/5,11/5]:ceil1.8=floor2.2=2; [0,1] has0,1 so extraction fails; [1/5,4/5] has no integer. | None versus one versus two distinguished. |
| 4.9 known integral value | Integral x2 in[9/5,11/5] recovers2; nonintegral x1/2 in[0,1] gives no such conclusion. | Integrality premise needed. |
| 4.10 ball normalization | p3,N2,c10 and c1 differ by9 and denote the same ball; c9 and c0 normalize to zero mantissa. p3,N0,c−1/3 normalizes to c2/3 (difference−1). | Negative centers and exponents retained. |
| 4.11 p-adic addition | (1+O9)+(−1+O27)=O9: precision min(2,3)=2; cancellation changes center, not absolute precision. | Exact set identity passes. |
| 4.12 p-adic product | (3+O81)(1/3+O9)=1+O27: min(1+2,4−1)=3. O9·O81=O729: min(2+4,2+4)=6. | Zero-mantissa valuation is N. |
| 4.13 p-adic inverse | (3+O81)⁻¹=1/3+O9, exponent4−2·1=2; O9 includes0 and is rejected. | Nonzero-ball guard essential. |
| 4.14 kernel | r0=2/π²≈0.202642; r1≈0.06146<r0; r(−1)=e²r1>r1. | Positivity and non-evenness discriminate. |
| 4.15 geometric tail | α1,b0,N0: bound r0/(1−e⁻¹)≈0.32057; first terms r0+r1≈0.2641 lie below it. α0 would give denominator0 and is excluded. | Correct convergence guard. |
| 4.16 alternating tail | α1,b0,N1: alternating remainder begins−r1 and has magnitude≤r1≈0.06146; weighted first omitted index1 meets α·1=1. | Sign and threshold retained. |
| 4.17 eight scalars | Indices1,4 at ℓ1 equal8/π²≈0.810569; ℓ2 gives≈1.621139, not0.405285. At w0, Re(zF)=Re(zG)=1/2. | Source formulas compared; positive-real Gamma arguments. |
| 4.17a digamma | z1,N1: ψ1−(−γ)=0 and bound0. z2,N1: ψ2−(−γ+1/2)=1/2≤1. | Tail and denominator correct. |
| 4.17a trigamma | z1,N1:errorπ²/6−1≈0.644934≤1; N2:errorπ²/6−5/4≈0.394934≤1/2. | Square-reciprocal tail passes. |
| 4.17a weighted tail | α1,N0: first omitted term r1; derivative log(xr(x)) at x1 is −4/(1+π²)<0, and remains negative for x≥1. | Stated threshold is sufficient. |
| 4.18 CT enclosures | 8/π²∈[4/5,41/50]; width1/50≤1/32. At ℓ2,[8/5,41/25] has width1/25≤1/16. | Correct scale-sensitive boxes. |
| 4.19 root isolation | (X−1)² yields one distinct presentation at1, not two; X²−1 gives singleton±1 boxes, disjoint; constant1 gives empty list. f0 excluded since every complex number is a root. | Multiplicity and finiteness correct. |
| 4.19a Hurwitz partial | N=m=t1: s0 gives−1/2; s2 gives79/48; s1 gives61/48−log2, not61/48. | Pole removal has logarithmic limit. |
| 4.19a character partial | q1,s2 gives79/48. Odd χ mod4,s0 gives1/4−(−1/4)=1/2. q4,s2 prefactor1/16 is essential. | Normalization correct. |
| 4.19a Bernoulli bound | C₀1,C₁13/6,C₂121/30; B₂(0)=1/6 and B₂(1/2)=−1/12 lie within C₁. | Absolute coefficients retained. |
| 4.19a uniform remainder | q1,s2,N=m1,σ₀=B2: error≈0.00089927≤13/6. q4,oddχ,s1: partial≈0.78588677, valueπ/4≈0.78539816,error≈0.00048861≤13/6. | Nonprincipal s1 allowed; principal s1 excluded. |
| 4.20 Dirichlet enclosure | ζ2≈1.644934∈[8/5,5/3]; width1/15≤1/8. ζ0=−1/2 has singleton enclosure; principal s1 rejected. | Continued rather than raw series values. |
| 4.20a Mellin partial | f0 gives0 at all N. k18,s9: two integrands have factor1+i¹⁸=0; k12,s6 gives1+i¹²=2. | Native Fricke sign retained. |
| 4.20a two-tail guards | k12,s12,N3:2π·4−11≈14.13274>0;1−exp(1.5−2π)≈0.99163>0. N0 first difference2π−11<0. | Both positivity assumptions necessary. |
| 4.21 cusp enclosure | Zero form: widths0≤2^(−P). Δ at s12 has first-three-term value about0.99454 and the stated C1000 tail below0.00068, hence lies in[1/2,3/2]; −Δ reflects it. | Distinguishes sign; integral coefficient bound is a separate target. |
| 4.21a completion/poles | q1:Λ=π^(−s/2)Γ(s/2)ζ(s), poles0,1. Small symmetric zero-free rectangle has divisor count−2, so N=−2+2=0. | Pole correction cannot be dropped. |
| 4.21a count/additivity | One upper-half zero of χ and corresponding lower-half zero of its conjugate: symmetric increment1, positive counts increments1 and0, sum1. A double zero contributes2, not1. | Both conjugate terms and multiplicity needed. |
| 4.21a argument/Turing | q1,t₀51,h1: bound1.8397+0.1242·log(52/(2π))≈2.102; h>0,t₀>50 hold. Reversing ε reverses two endpoint signs together, preserving their product. | Numeric bound and branch conventions retained. |
| 4.21a completeness | M0,U0.9 forces integer count0; M2,U2.9 together with lower bound2 forces count2. Duplicate overlapping intervals would count one zero twice and are excluded. | Arithmetic comparison passes. |
| 4.22 bounded heights | q400000 even:H=max(250,387.5)=387.5. q399999 odd:H≈max(250.000625,293.750234)=293.750234. q1:H=10⁸. | Modulus parity, not χ(−1), determines threshold. |
| 4.23 central nonvanishing | q1:ζ(1/2)≈−1.460354≠0. q2 has no primitive character, so contributes no additional case. | Source range2,000,000 retained; no general-GRH inference. |
| 4.24 real zeros | In the bounded range a real zero has height0≤H, forcing real part1/2; central nonvanishing excludes it. For ζ, value at1/2≈−1.460354. | Two distinct headlines needed. |
| 4.25 entrywise bounds | B0,A[[0,1],[1,0]],x(1,1):0≤2. x(1,−1):0≤−2 is false, excluded by coordinate nonnegativity. | Essential sign restriction. |
| 4.26 ellipsoid | G[[2,1],[1,2]],R2 gives7 points; (1,1) value6 excluded. G[1],t1/2,R1/4 gives{0,1}; G[0],R0 gives all Z. | Positivity and translation matter. |
| 4.27 finite completeness | I₂,R1 has5 integer points. Rank0 empty vector has value0, present iff R≥0. R−1 gives no points. | Boundary retained. |
| 4.28 Loewner | A=I₂,B0,x(1,−1):0≤2. Entrywise example above has A−B eigenvalues±1 and fails PSD. | Mixed signs require PSD. |
| 4.29 negative witness | I[−2,−1],t1:upper quadratic−1<0; t0 gives0, rejected; I[−1,1],t1 gives1, rejected. | Exact upper bound, not approximate eigenvalue. |
| 4.30 enclosed negativity | A[−3/2]∈[−2,−1]:value−3/2≤−1<0 at t1. Scaling t2 gives−6≤−4<0. | Retained. |
| 4.31 effective cover | B[1],A[2],c1: B-short nonnegative integers{0,1}, A-short{0}; output is a cover, not equality. Boundary1 remains in B-filter. | Correct containment direction. |
| 4.32 validity | I[−2,−1],t1:true; t0:false. Matrix[[0,1],[1,0]],t(1,−1) gives−2 but fails t≥0. | Excludes invalid use of entrywise upper bounds. |
| 4.33 family validity | Empty conjunction=true with0 rows; one negative row=true; appending zero-vector row makes conjunction=false. | No exhaustiveness inferred. |
| 4.34 multiplicity lift | m(2,3),A6,K[[1,2],[2,4]],t(2,3):lift five ones; expanded30−64=−34; reduced8−24−18=−34. m0 countercase:expanded0,reduced−1. | Division by m and positive block sizes correct. |
| 5.1 family interpretation | One row I[−2,−1],t1,A−3/2 gives value−3/2<0; empty list gives0 assertions, not a cover. | Native matrix containment binds the data. |
| Ownership/gap controls | Proposed edge178→158 points backward; corrected earlier-owner edge158→178 points forward. Gap marker occurrences: plan1,README0. | R01/R02. |

**Pinned object audit.** The pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to those libraries, not a newer checkout. These are the decisive declarations opened when distinguishing imports from new work:

| Pinned location | Declaration/content checked; consequence |
| --- | --- |
| `Mathlib/NumberTheory/LucasPrimality.lean:39` | `lucas_primality` and the following `reverse_lucas_primality` supply the number-theoretic step, not the recursive tree or its size bound. |
| `Mathlib/FieldTheory/Finite/Extension.lean:181` | `Irreducible.natDegree_dvd_iff_dvd_X_pow_card_pow_sub_X`: divisibility by the Frobenius polynomial is controlled by irreducible degree. |
| `Mathlib/Algebra/Polynomial/Monic.lean:334` | `Monic.irreducible_iff_natDegree` tests proper monic divisors; it is not the full Rabin finite-family predicate. |
| `Mathlib/RingTheory/UniqueFactorizationDomain/NormalizedFactors.lean:179` | `normalizedFactors_prod_eq` requires irreducible factors; the README uses Rabin to discharge that condition and removes the scalar unit. |
| `Mathlib/Algebra/Polynomial/Roots.lean:138` | `finite_setOfPred_isRoot` requires a nonzero polynomial. The root-presentation existence targets retain that hypothesis. |
| `Mathlib/FieldTheory/AlgebraicClosure.lean:39` | Native relative algebraic closure and membership comparison at line54 supply the algebraic value carrier. Rational isolating boxes are extra presentation data. |
| `Mathlib/Algebra/Algebra/Operations.lean:875` | `Submodule.mem_div_iff_forall_mul_mem`, the scalar-subset comparison and `le_div_iff_mul_le` through line885: I/I already supplies the underlying stabilizer module. |
| `TauCeti/NumberTheory/NumberField/Global/Orders/ProperIdeal.lean:38` | Native `NumberFieldOrder.multiplierRing` takes a fractional ideal of a specified order. Its carrier is I/I; the target packages arbitrary integer submodules, including zero, as a subalgebra. |
| `Mathlib/RingTheory/Henselian.lean:49` | The file explicitly distinguishes root Hensel from the factor-lifting API still to be developed. `IsAdicComplete.henselianRing` at line170 supplies root lifting; it does not make either headline factorization theorem one-line padding. |
| `Mathlib/GroupTheory/Subgroup/Saturated.lean:32` | Native power saturation ranges over all exponents. Fixed-p saturation is a different predicate; the cross-roadmap ownership problem is R01. |
| `TauCeti/NumberTheory/LocalField/Squares.lean:121` | `unitFiltration_le_range_powMonoidHom_two` uses characteristic different from two and depth 2v(2)+1. It supports the ramified dyadic quotient criterion; “modulo p” would be insufficient. |
| `TauCeti/NumberTheory/LocalField/PowerSubgroup/Open.lean:42` | `isOpen_range_powMonoidHom` requires the exponent nonzero in the field. Characteristic-zero local square classes meet this requirement. |
| `TauCeti/NumberTheory/LocalField/Norm/Unramified/Basic.lean:126` | `map_normUnits_unitFiltration` has finite-dimensional, compatible valuation and unramified extension assumptions; depth zero gives the required unit-norm surjectivity. |
| `TauCeti/NumberTheory/ModularForms/SturmBound.lean:102` | `eq_of_sturm_bound` compares actual coefficients at the strict width for finite relative index. It does not assert divisibility of an integral Fourier lattice modulo p. |
| `Mathlib/NumberTheory/ModularForms/Bounds.lean:492` | `CuspFormClass.qExpansion_isBigO` has arithmetic-group hypotheses and exponent k/2, precisely the growth input to 4.20a. It is an eventual bound; the README absorbs the finitely many initial terms. |
| `Mathlib/NumberTheory/ModularForms/LFunction.lean:61` | `weakFEPair` fixes i^k; `L` at line134 fixes the uncompleted Mellin normalization. The k18 central sign in the table tests it. |
| `Mathlib/LinearAlgebra/TensorProduct/Tower.lean:657` | `LinearMap.baseChange` acts on the second tensor factor. It does not choose independent residual operators. |
| `Mathlib/LinearAlgebra/TensorProduct/Basis.lean:63` | `Module.Basis.baseChange` transports the integer basis; the residual module is a native tensor product. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean:80` | `pointCount_def` counts all affine solutions plus infinity; `pointCount_eq_card_point` at line86 requires ellipticity. The singular-cubic test preserves this distinction. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/XSubT.lean:961` | `ker_μ_eq` identifies the kernel with twice the point group. `range_μ_le_ker_normM` at line1030 is inclusion only. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/TwoTorsion.lean:57` | `card_ker_nsmul_two` gives one plus the rational cubic-root count, the input to all three local sizes. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/BadPrimes.lean:114` | The bad-prime definition and its membership characterization through line150 include coefficient integrality, discriminant and two. `hgood` is not merely a bare smoothness assertion. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroupA.lean:219` | `range_μ_le_selmerGroupA` supplies the other inclusion. Equality with the square-norm unramified subgroup remains the target. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/DivisionPolynomial/Descent.lean:116` | `mul_eval_ΨSq_eq_eval_Φ_of_zsmul` relates actual nonsingular points with a specified multiple; a root of the polynomial alone is not a divisibility witness. |

The object searches covered the pinned libraries, main roadmaps, board packages, and the provided open-roadmap checkouts, using the roadmap search service as well as local searches. No collision with a read sibling's fully qualified Lean declaration was found. Objects already owned elsewhere are generally imported: Hermite/Smith and class-group relations, contour and zero-count semantics, strict-width Sturm equality, native descent carriers, lattice bounded-norm finiteness, and intrinsic orders. The new finite presentation adapters retain their additional data and are distinguished from those objects. The EffectiveDiophantineMethods overlap is the exception discussed in R01.

**Resolved roadmap contracts.** Every `Needs` line was read, including forward references within a layer. The seven supplied citation-resolver leads are not seven defects: four `IntMatrix` names and `ClassGroupPresentation.index_relationLattice` occur in ClassicalArithmeticCompletion on main; `PrattTree.validList` is declared in the target; the R15 identifiers are explicitly retained aliases in their supplier. Representative resolution evidence, including all supplier families:

| Supplier and location read | Contract resolved |
| --- | --- |
| `TauCetiRoadmap/ModularForms/README.md:708`, 764, 971, 1024, 1204 | Layers7–11: functional equation, integral Hecke/coefficient comparison, labels, analytic dimensions and trace formula. The Fricke construction also appears in Layer6 at line678. |
| `TauCetiRoadmap/EllipticCurves/README.md:793`, 1200, 1262 | Good-reduction homomorphism, Mordell–Weil/torsion and Selmer inputs. |
| `TauCetiRoadmap/EllipticLegendreCharacterInterfaces/README.md:592`, 612 (provided head) | §§5.1–5.2 include singular odd-characteristic equations and twist d=0. The F₅ counts and d=2 trace sign were recomputed above. |
| `Completed/LocalFieldsRamification/README.md:72`, 281, 343 | Local fields, normalized valuations and Teichmüller section. The unit-norm contract is realized by the pinned unramified-norm theorem above. Used the completed main copy rather than an obsolete revision. |
| `Completed/NumberFieldArithmetic/README.md:1399`, 1427 and §5.5 | Semilocal tensor decomposition, factor-to-completion equivalences and separate e/f comparisons, with the specified generating root. |
| `Completed/ContourIntegration/README.md:184` and pinned contour modules | Null-homologous contour input with off-contour singularities, together with its native argument-principle specializations. No order-zero shortcut replaces pointwise analyticity. |
| `TauCetiRoadmap/ZerosOfLFunctions/README.md:802`, 1202, 1235–1285, 1711 (provided head) | Layer4 counts and conventions, 7.1–7.2a rectangle/finite-singular-set bridge, Layer9 localization semantics. The target supplies arithmetic Turing inequalities rather than a second abstract certificate carrier. |
| `Completed/RealAlgebraicGeometry/README.md:128`, 231, 298, 341 | Real-root/sign/subresultant theory and multiplicity-sensitive root matching. Box presentations do not replace those carriers. |
| `Completed/PolynomialGaloisGroups/README.md:1108` | Factor degrees are Frobenius orbit sizes for squarefree monic finite-field polynomials; the target's Rabin criterion is a finite presentation using that theory. Used main for this completed roadmap. |
| `TauCetiRoadmap/NewtonPolygons/README.md:211`, 272, 648 | Lower convex envelope, maximal finite supporting faces and polygon products. The φ-coefficient/residual specialization is additional data. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:5332`, 5404, 6065, 6131, 6730 | §§3.3,3.5,3.25,3.27,3.48: Smith, upper column Hermite, reconstruction, pivot index and unique basis. A two-column H=[[3,2],[0,1]] gives determinant/index3 in both conventions. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:11130`, 11156, 11199, 11427, 11453, 11595, 11751 | §§5.1–5.3,5.10–5.11,5.16,5.22: generation, relation kernel, regulator and joint completeness. Index-two relations give determinant=2h and fail a strict <2 completeness bound. |
| `TauCetiRoadmap/AlgebraicModularFormsAndSerreWeights/README.md:18`, 191, 381, 626; §§5.10,5.14 | R15 aliases resolve to layers; small-level descent, localized cusp lattice/reduction image, theta/Hasse and eigenvalue lifting exist. The target's comparison does not identify the reduction image with arbitrary Katz forms. |
| `TauCetiRoadmap/IntegralLattices/README.md:792` (provided head) | Milestone2A is positive-definite bounded-norm finiteness. Clearing denominators in the affine ellipsoid is an adapter; the rank-zero and zero-matrix tests above check the boundary. |
| `TauCetiRoadmap/FormalLaurentPuiseux/README.md:233–266` | L5 owns coprime factor lifting over K[[t]]. The complete-DVR target is expressly a generalization including mixed characteristic, not another K[[t]]-only target. |
| `Completed/GlobalNumberFields/README.md:571` | Layer11 owns intrinsic orders and their ideal theory. Native fractional-ideal multiplier rings are distinguished above from arbitrary-submodule stabilizers. |
| `packages/ComputationalNumberTheory/design/plan.json:4` and target README:428 | Declared `local-two-quotient` contract; absence of the theorem from the supplier today is not a finding. The formulas are precise and dimension-general; R02 concerns the missing README marker. |

## Not verifiable

- Mattuck, Theorem7, p.114 is waived in the supplied manifest. I did not fetch it or reopen the waiver. The local quotient-cardinality input remains conditional on the explicitly announced `gap:local-two-quotient`; the roadmap states the required formulas, rather than treating the dimension-two FPS application as a general theorem.
- Ownership against open PRs for which the brief supplies no readable head was not independently certified. In particular, EffectiveDiophantineMethods was visible in the required ownership search but its full head was not provided; R01's order witness uses the supplied order and the target's own downstream claim. HeightsRationalPointsAndObstructions was treated through the announced gap. No missing-source request was issued for either roadmap.
- The generic interval existence claims, exact modular coefficient examples, source tables and Platt statements were checked as described; the full finite-conductor computation and all modular Hecke matrices below200 were not independently recomputed. The table explicitly labels source-based classification evidence. An admitted Lean build proves elaboration only.
- No additional sampled mathematical source remained unreadable. No source manifest or PR file was edited. The legal Zhou fetch is additional review evidence, not an edit to the package's manifest.

## Source issues

- **Misprint** in CarusoPublished at §2.1.1, printed II–18, line938: the source says unspecified digits have positions strictly greater than N; it should be positions at least N; affects nothing.
- **Misprint** in CarusoPublished at Proposition2.1.3 proof, printed II–19, line977: the source says divisibility of hh′ at v+v′ implies divisibility at v+N′; it should be use divisibility at N+N′ and N≥v; affects the proof.
- **Misprint** in CarusoPublished at Proposition2.1.3 proof, printed II–19, line983: the source says the resulting valuation is strictly greater than N′; it should be greater than or equal to N′; affects the proof.
- **Misprint** in CarusoPublished at Proposition2.1.3 proof, printed II–19, lines988–990: the source says the relative-precision exponent for I′ is N−v′; it should be N′−v′ throughout that inversion step; affects the proof.
- **Misprint** in NumberRings at Proposition9.3 proof, printed p.235, line1128: the source says sufficiently high powers of the radical contain pR; it should be they lie in arbitrarily high powers of pR; affects the proof.
- **Misprint** in Stein at Example2.19, printed p.20, line1116: the source says M24 is the first modular-form space of dimension greater than one; it should be greater than two, since dim M12=2; affects nothing.
- **Misprint** in Stein at Remark2.21, printed p.21, line1165: the source says integral combinations of the cusp Miller basis give every integral modular form; it should be every integral cusp form; affects a stated result.
- **Misprint** in Stein at Theorem9.18 proof, printed p.171, line7647: the source says Δ has coefficient +24 at q²; it should be −24; affects nothing.
- **Misprint** in Arb at §5.1, printed p.7, line823: the source says the sine increment subtracts sin(t); it should be subtract sin(m), with increment t and center m; affects a stated result.
- **Misprint** in Thery at Theorem6.2, printed p.9, line265: the source says F₁>N; it should be F₁>√N, as used in its proof; affects a stated result.
- **Misprint** in Thery at Definition6.1, printed p.9, line277: the source says Fermat numbers subtract one from 2^(2^p); it should be add one; affects a stated result.
- **Error** in Siksek at §4, equation(39) discussion, printed p.17, line815: the source says all prime coefficient representatives satisfy the symmetric odd-prime bound; it should be restrict that bound to odd p and use {0,1} at p=2; affects the proof; corrected in print at §4.2, printed p.18, lines868–869.
- **Error** in Siksek at §4.2, projective representative property(2), printed p.18, lines870–871: the source says every vector, including zero, has a unique projective representative with an arbitrary scalar; it should be nonzero vectors and nonzero scalars; affects a stated result.
- **Error** in BCG at Remark3.3, printed p.518, line463: the source says p151 supplies the ordinary hypotheses of Theorem2.1; it should be omit151, whose CG13 ordinary weights52 and100 both fail the required coprimality; affects a stated result.
- **Misprint** in CL at Proposition3.17 proof, printed p.306, line11715: the source says a real h₂ sum equals an expression containing the full complex ψ′ term; it should be the real part of that term; affects the proof.
