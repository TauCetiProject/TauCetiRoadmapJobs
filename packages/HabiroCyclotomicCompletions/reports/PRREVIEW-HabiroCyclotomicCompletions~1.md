# Review of HabiroCyclotomicCompletions (pull request #1314 at 3caf5c7)

**Verdict:** needs changes

## R01 (P2) — State the proper restriction theorems in the acceptance test

**Location:** TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:1441–1457; Suggested.lean:10–28. The README promises “restriction from all orders to any nonempty finite order set is not surjective,” alongside the adjacent-pair and divisor-set versions.

**Claim:** These are substantive proper-embedding results (H, Proposition 7.4), distinct from the single-root Taylor non-surjectivity theorem that the Lean file includes. All three are statable with the existing completion and restriction definitions. They are absent from both the declarations and the list of unavailable headlines.

**Witness:** Three scratch signatures, using only the existing definitions, elaborate with the expected sorry warnings. For the finite-set result, the complete conclusion is:

```lean
(T : Set ℕ) (hT : T.Finite) (hne : T.Nonempty)
(hpos : T ⊆ {n | 0 < n}) :
¬ Function.Surjective (restrict ℤ hpos)
```

**Repair:** Add admitted headline theorems for the three maps of README §4.4, retaining positive orders, distinctness, adjacency or divisibility where applicable, and finite nonempty target for the third. Name them in the README. The adjacent-pair and divisor-set signatures were also elaborated, using ordinary sets and divisibility; no new carrier is needed. At orders 1 and 2, the order-one series (3−2q)⁻¹ has translated value 1/5 at −1, while a preimage would have an integral value. This tests the intended proper map and distinguishes it from surjective rational restriction.

## R02 (P3) — Replace stale consumer and ownership locators

**Location:** TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:36, 61–85. Examples are “HabiroNumberFields Layer 6,” “QSeriesPartitionsAndMockModularForms Layer 0,” and “HabiroNahmSeries Layers 4 and 8.”

**Claim:** These section references do not identify the interfaces at the supplied heads. They are downstream/ownership references, not upward prerequisites, so this is a locator finding rather than a dependency-cycle finding.

**Witness:** HabiroNumberFields §2.9 (README:768) owns the rational-field comparison; QSeriesPartitionsAndMockModularForms §1.4 and its supplier contract (README:65) consume the formal toolkit; HabiroNahmSeries has Layers 1–7, not Layer 8.

**Repair:** Point the number-field comparison to HabiroNumberFields §2.9, the formal toolkit to QSeriesPartitionsAndMockModularForms §§1.2–1.5 and its supplier paragraph at README line 65, and identify actual targets for the Nahm-series consumer. Replace the claimed general lambda-ring ownership with SchemeKTheoryOperations §§6.2.1–6.2.2 and QWittVectors §2.1a's comparison, as QWittVectors itself specifies. ArithmeticQuantumTopology and AnalyticHabiroStack have no resolvable roadmap in the supplied index: describe those as application areas without invented layer ranges. Rechecking the corrected number-field locator gives the same Δ=2 odd-order projector comparison used here.

## R03 (P3) — Remove undeclared API-name claims and restore the Lean layer structure

**Location:** TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:22–26, 212–219, 323–369, 510–517; Suggested.lean:4 and throughout.

**Claim:** The README retains a large catalogue of backticked prospective declaration names, including in Checks, while the supplied Lean file has only 29 named declarations. The explicit policy requires mathematical API bullets and Checks in prose, and treats an own backticked identifier as a declaration claim. The Lean file also has no Layer section comments and places its Layer 2 theorem after Layer 4 definitions.

**Witness:** qFactorial, pochhammer, qFactorial_pochhammer and PolynomialLimit.equivOfCofinal are not declarations in Suggested.lean. Lines 216–219 nevertheless name them as its API; numerous Checks repeat absent identifiers.

**Repair:** Keep the mathematics, express non-headline API targets and Checks in prose, and retain own identifiers only for actual supporting definitions/headlines. Do not fill Suggested.lean with API padding to satisfy the prose. Use the required “target signatures” module title and Layer comments, ordering the statements by the README. For example, the Pochhammer identity remains (1−q)ⁿ[n]q!=(q;q)ₙ, with n=2,q=2 giving 3=3, without claiming a nonexistent Lean declaration. The gate's zero identifier count does not establish this stricter naming rule.

## Verified sound

This is an independent AI review. I read both complete files, the repository's normative Writing a roadmap and contribution rules, and the main-branch NewtonPolygons and RestrictedPowerSeries roadmaps as shape references. The reviewed head is 3caf5c7f1d8548c285a3aab260368b41fa56e52a. No pull-request file was changed. The outside-folder diff is empty. No copied source passage, sorry-valued data, set_option, route-specific restriction, or replacement of an existing roadmap was found.

The worker's complete gate is passing, including its targeted build. Independently, lake env lean on Suggested.lean exited successfully with exactly the 14 admitted-theorem warnings. A scratch copy emitted #check @name for all 29 named declarations; their elaborated binders match the uses in the README. The two anonymous topology instances were also read: both explicitly take their ring and order data and induce the intended discrete-coordinate topologies. No section hypothesis disappeared. In particular, root equations, faithful coefficient embeddings, the inside-set chain condition, prime separation, torsion-freeness, and positive Δ are retained in the headlines that require them.

Every one of the 14 admitted theorems was tried with the one-tactic alternatives rfl, infer_instance and simp on a scratch copy; all 14 remained unproved. Searches and inspection of the native APIs found no single existing lemma proving any of those new completion headlines. No Suggested.lean padding was found. The three R01 replacement signatures were separately elaborated successfully; they were not inserted into the pull request.

### Headline coverage

| README result | Acceptance-test coverage |
| --- | --- |
| Complete separated cyclotomic completion and continuous extension (§1.3) | completion_universal_property; native quotient-family and topology definitions |
| Unique normalized factorial expansions (§2.1) | factorial_expansion |
| Convergent close-root re-expansion (§3.3) | close_root_taylor_reexpansion |
| Restriction rigidity (§4.2) | restrict_injective_of_chain |
| Single-root Taylor rigidity (§4.3) | taylorAt_injective |
| Infinite-adjacency evaluation uniqueness (§4.4) | universalValues_injective |
| Three proper integral restriction embeddings (§4.4) | Missing: R01 |
| Proper single-root integral Taylor image (§4.4) | integral_taylor_not_surjective |
| Joint torsion-free Taylor injection and rational isomorphism (§4.6) | iota_injective; rational_taylor_isomorphism |
| Integral adjugate image and local detection (§§4.7–4.8) | Explicitly excluded in docstring: finite weighted quotients, bases and matrices not constructed |
| Exact polynomial-coefficient module completion and finite-presentation tensor comparison (§5.1) | Explicitly excluded: completed module carrier and maps missing |
| Arbitrary comaximal decomposition (§5.2) | comaximal_decomposition |
| Localized-integer decomposition, domain factors, component Taylor and all-value rigidity (§5.3) | component_decomposition; component_isDomain; componentTaylor_injective; allValues_injective |
| Completed/Laurent localization sum and intersection (§5.4) | Explicitly excluded: ambient embeddings and denominator monoids missing |
| Failure of exactness on arbitrary polynomial-ring modules (§5.5) | Explicitly excluded: module completion and completed direct sum missing |

The module and finite-matrix exclusions do not substitute finite examples for the unavailable constructions. The missing restriction results are different: their actual carriers and maps are already present.

### Sources: all 15 seeded targets

All six bibliographic works were obtained from legal sources through the sources service: H from the public publisher and its separately versioned arXiv v1, G and W from the specified arXiv versions, L from its public publisher, O from the author's notes page, and Fishburn from OEIS. H₀ below denotes the v1 extraction of the same work/key H, not a second bibliographic work. The README contains no additional locator flagged unverified. Source lines below refer to the service's numbered extractions; printed page numbers are used rather than the extraction's PDF page markers.

| Sample | Text read and outcome |
| --- | --- |
| §1.2 Indexing, compatible families, finite quotients | H lines 168–221, pp.1130–1131, defines actual monic products, finite/cofinal presentations and coefficient-change injectivity/surjectivity. Lines 570–582, p.1139, use completed division. The surjective projection, kernel and regularity targets are supported by the monic-division argument stated here; they are not misrepresented as separately numbered source theorems. |
| §2.2 Finite arithmetic and monic normalization | H₀ lines 255–266, p.7, gives the countable monic-block expansion with degree bounds. The negative quotient comes from choosing qⁿ⁺¹−1 as divisor while P uses 1−qⁿ⁺¹. F² and list examples were independently recomputed below. |
| §3.1 Root evaluation and additive Taylor coefficients | H lines 47–92, pp.1128–1129, supplies root evaluation/Taylor maps; the arbitrary-ring representative formula is checked against native Hasse derivatives. The non-domain primitive-root counterexample and the fraction-field irreducibility distinction are valid. |
| §3.2 Naturality and changes of q | H lines 168–221, pp.1130–1131, supplies the completion mechanism, not a separately named power-substitution theorem. The stated new result follows by Φ_m dividing Φ_(m/gcd(m,a))(qᵃ) integrally, then taking powers and products. The m=2,a=2 obstruction was checked. |
| §4.1 Order adjacency and cyclotomic ideals | H Lemma 4.1, lines 346–394, pp.1134–1135; W Lemma 2.1, lines 305–315, p.8; L theorem, lines 19–23, p.75, and Lemma 1 proof, lines 58–64, p.76. Equal orders are correctly excluded from W's quotient formula; n=1 is handled separately from L's theorem. |
| §4.4 Evaluation uniqueness and proper embeddings | H Theorem 6.1, lines 563–604, pp.1139–1140; Theorem 6.2/proof, lines 626–647, pp.1140–1141; Proposition 7.4, lines 794–828, pp.1144–1145. The README adds the necessary connectedness and residue-injectivity safeguards to the selected-root argument. The inverse-unit witnesses support the all-order Taylor statement. R01 concerns coverage, not falsity. |
| §4.7 Matrices and congruences | G equations (301)–(319), lines 2999–3221, pp.60–63. The README correctly uses n<N in the determinant product, rather than the printed n≤N. Its signed adjugate handles the absolute determinant. Torsion-freeness agrees with G's standing hypothesis, lines 2945–2948. |
| §5.1 Exact ordinary polynomial-module functor | H §7.3, lines 764–792, p.1144, defines the module completion and restriction theorem; H₀ lines 255–266 supplies monic blocks. Exactness, arbitrary products and finitely presented tensor comparison are additional arguments written here, not claims that H states all of them. The infinite-product topology caveat is correct. |
| §5.2 Comaximal components/rational case | H Lemma 4.1(2), lines 352–353, p.1134, and §7.5, lines 829–858, pp.1145–1146. The arbitrary-class result is the stated finite-index CRT extension. Non-adjacency is correctly distinguished from comaximality over ℤ×ℚ. |
| §5.4 Restriction versus localization | H Propositions 7.2–7.3, lines 707–753, pp.1142–1143; Proposition 7.4 and §7.5 above. Both images are placed in one fraction field. The idempotent localization and excluded-factor obstruction were checked separately; G Definition 1.1 is only a neighboring notation citation. |
| §5.5 Arbitrary polynomial-ring modules | H lines 168–205 and 764–792 supply the definitions; the diagonal counterexample is the README's own argument. Coordinate regularity, finite support at each precision, zero image, and failure of the only possible preimage all check out. |
| §6.1 Integral values, derivatives, units | H Proposition 7.1 and Remark 7.1, lines 662–705, pp.1141–1142; Proposition 7.4 proof above; OEIS A022493 for the named sequence. All six root values, ten coefficients at 1, seven at −1, and three at a cubic root were recomputed from finite products, independently of OEIS. |
| §6.2 Matrix recovery/projector digits | G Examples 5.6–5.7, equations (334)–(341), lines 3372–3422, pp.65–66. Matrix images and the altered vector agree exactly; localization-component theory supplies whole-projector integrality, as the README requires. |
| §6.3 Localization, rational kernels, mod two | H §7.5 gives the component mechanism, not the displayed finite representatives. Their stated CRT residues, reductions and idempotency were recomputed exactly below. |
| §6.4 Exported interface | This is a synthesis of preceding targets. Its six construction steps resolve to §§1.2–1.5, 2.1–2.3, 3.1–3.3, 4.1–4.8, 5.1–5.5. Projectors depend on both matrices and components; no external theorem is asserted by this subsection. |

Additional source checks covered O Definition 1.1, Proposition 1.5 and Propositions 2.1–2.7 (O lines 52–56, 114–155, 299–361), O Definitions 5.4–5.5 and the displayed product (lines 1451–1500), H Proposition 3.1 and Theorem 4.1, and H Theorem 5.2 (lines 504–538). Source errors encountered are recorded at the end; they are not silently charged to the roadmap when it already repairs them.

### Adversarial table

The following 197 rows record computed finite witnesses and symbolic boundary computations, not substitutes for proofs of the general theorems. Polynomial coefficient vectors in the computation record use increasing powers. “Pass” means the computed sides agree, or the negative control is excluded by the stated hypothesis. The computations used exact integer/rational arithmetic, including Gaussian elimination on the finite Taylor matrices. Non-applicable group/manifold tests do not apply to these commutative algebra statements. Zero rings, zero modules, empty order sets, characteristic two/three, split root algebras, square-zero coefficients, localization, and the direction/sign/precision boundaries were included.

| Statement / target | Instances and computed values on both sides | Result / change |
| --- | --- | --- |
| §1.1 q-integer and geometric identity | n=0 gives 0 and q⁰−1=0; n=3,q=2 gives [3]=7 and (2−1)7=2³−1=7. | Pass |
| q-integer specialization | [3]₁=3=3; in 𝔽₃ both are 0; [2]₁ in 𝔽₂ is 0. | Pass |
| q-factorial | n=0: empty product=1; n=3,q=1: 1·2·3=6; q=2: 1·3·7=21. | Pass |
| Factorial/Pochhammer identity | n=2,q=2: (1−2)²·3=3=(1−2)(1−4); q=1,n>0: 0=0. | Pass |
| Finite Pochhammer | n=0:1; x=2,q=3,n=3: (−1)(−5)(−17)=−85; x=1,n>0:0. | Pass |
| Pochhammer concatenation | x=2,q=3,m=1,n=2: −85=(−1)·85. | Pass |
| Inverse-parameter formula | q=2,n=2: (1−1/2)(1−1/4)=3/8=(+1)2⁻³·3. | Pass |
| Jackson polynomial derivative | D₂(t²)=3t; D₁(t³)=3t²; D₁(t²) over 𝔽₂=0. | Pass |
| Adapted derivative | q=2,t²: (1−2)3t=−3t; q=0,t³:t²; q=1:0. | Pass |
| Jackson twisted product | f=g=t: D_q(t²)=(1+q)t=t+qt. | Pass |
| Series Jackson extensions | Constant derivative=0; degree-three monomial gives (1+q+q²)t², also by the series coefficient rule. | Pass |
| Jackson initial-value uniqueness | q=2: a₀=1,a₁=1,a₂=1/3; [2]a₂=3/3=a₁. q=1 over ℚ gives 1,1,1/2. | Pass |
| Adapted initial-value uniqueness | q=2: a₀=1,a₁=−1,a₂=1/3; (1−4)/3=−1. | Pass |
| Infinite Pochhammer E | q=0:E=1−t; q=2 first coefficients 1,1,2/3. Shift gives coefficient t:1=−1+2. | Pass |
| Reciprocal U and Euler identity | q=2: U=1−t+t²/3+…; EU has t coefficient 1−1=0 and t² coefficient 2/3−1+1/3=0. | Pass |
| General q-binomial identity | Coefficient t is a/(q−1)+1/(1−q)=(1−a)/(1−q); a=0 gives U, a=1 gives 1. | Pass |
| Formal logarithm | q=0: log E=−t−t²/2+…; stated coefficients −1/(1−0)=−1 and −1/(2(1−0))=−1/2. | Pass |
| Integral infinite product and topology | [q⁰t]=[q¹t]=−1; [q⁰t²]=0,[q¹t²]=1. In ℚ(q)[[t]], coefficients −1 and −1−q differ, so t-adic finite-product convergence fails. | Pass |
| Adams Laurent dilation | ψ²(q⁻¹)=q⁻²; ψ³ψ²(q⁻¹)=q⁻⁶=ψ⁶(q⁻¹). Rational constants stay fixed. | Pass |
| Adams double-series map | ψ²(q⁻¹t)=q⁻²t²; coefficient at t¹ is 0; ψ¹ gives q⁻¹t. | Pass |
| Plethystic logarithmic sum | Input t: first coefficients 1,1/2,1/3; input −t: −1,−1/2,−1/3. | Pass |
| Plethystic exponential/monomial law | PE(t)=1+t+t²+…; PE(−t)=1−t; PE(q⁻¹t)=(1−q⁻¹t)⁻¹. | Pass |
| Plethystic additivity, Adams, integrality | PE(2t)=(1−t)⁻² has coefficients 1,2,3; ψ²PE(t)=(1−t²)⁻¹=PE(t²), integral coefficients 1,0,1. | Pass |
| Raw O Proposition 1.5 identity | In r: constant=1, degrees 1,2,3 give 1,0,1. Degree 8 counts 1+7 and 3+5, giving 2 on both sides. | Pass; source prefactor removed |
| §1.2 actual cyclotomic indices | S=∅ gives {1}; over 𝔽₂, Φ₁=q+1=Φ₂; characteristic-zero labels remain q−1 and q+1. | Pass |
| Cofinal chain | Index Φ₂³Φ₃² divides g₃=Φ₂³Φ₃³ for S={2,3}; missing Φ₃ prevents division of that index into Φ₂ᵏ over ℤ. | Pass |
| Compatible-family carrier | S={1}, X=q−1: residues 1 and 1+X agree modulo X. Residues 0 modulo X and 1 modulo X² reduce to 0 versus 1. | Pass |
| Transition direction/extensionality | Mod X³→mod X² sends 1+X+X² to 1+X; isolated X at level X² and 0 at level X³ gives X versus 0. | Pass |
| Polynomial map | q modulo Φ₁=1; q modulo Φ₂=−1. Over ℤ, a nonzero constant cannot be divisible by all powers of q−1. | Pass |
| Projection surjectivity | Residue 2+3X modulo X² is the projection of that polynomial; its constant and linear coordinates are 2,3. | Pass |
| Polynomial-map injectivity boundary | S=∅: 0 and 1 both map to the sole zero element over ℤ. Over the zero ring they were already equal. | Pass |
| Nonunit admitted cyclotomic factor | Φ₂ projects to 0 in ℤ[q]/Φ₂≅ℤ; 0≠1, so it cannot be a unit. | Pass |
| Completed kernel/quotient | S={1},f=X: kernel=X R[[X]], quotient=R; f=1: kernel=whole ring, quotient=0. | Pass |
| Completed monic regularity | In (ℤ/4)[[X]], X·2X=2X²≠0; comparison of every shifted coefficient gives ker(X·)=0, despite 2·2=0 in coefficients. | Pass |
| Completed division | h=2+3X+X²: h=2+X(3+X); residue is 2, and h−2 has constant coefficient 0. | Pass |
| §1.3 inverse-limit topology | Neighborhood mod X² distinguishes 1 from 1+X; truncations of ΣXᵏ agree modulo X² after two terms. | Pass |
| Density | Coordinates through X³ of ΣXᵏ are represented by 1+X+X²: residues 1,1+X,1+X+X² match. | Pass |
| Completion universal property | S={1}, ψ evaluation at 1: extension sends ΣaₖXᵏ to a₀. On q, both maps give 1. With S=∅, hψ forces ψ(1)=0 in a Hausdorff target. | Pass; Lean headline |
| PolynomialLimit and cofinal equivalence | Xᵏ versus X²ᵏ: residues of 1+X+X² at power 2 are 1+X on both reconstructions; exponent 0 quotient=0. | Pass |
| Finite-order/adic equivalence | S={1,2}: generator Φ₁Φ₂=q²−1; q and q² retain identical residues in both towers. | Pass |
| Finite-subset inverse limit | Proposed constants 0 at order 1 and 1 at order 2 give 0≠1 modulo 2. Constants 0 and 2 pass that residue but violate re-expansion of the zero whole jet. | Pass |
| Cofinal topology counterexample | Xᵏ(−1)=(−2)ᵏ≠0 for every k, so X-powers never dominate Φ₂. | Pass |
| §1.4 factorial definition/recursion | P₀=1; P₁=1−q; P₂=1−q−q²+q³; P₃=1−q−q²+q⁴+q⁵−q⁶. Multiplication by the next factor gives each next polynomial. | Pass |
| Factorial leading coefficient/degree | P₂: lc=1,deg=3=2·3/2; P₃:lc=−1,deg=6=3·4/2. Zero ring has zero polynomial, excluded from degree claim. | Pass |
| Signed cyclotomic factorization | P₃=−Φ₁³Φ₂Φ₃; P₂=Φ₁²Φ₂. Signs are −1 and +1. | Pass |
| Cyclotomic divisibility/cofinality | Φ₃ multiplicities in P₅,P₆ are 1,2; Φ₃² divides P₆ but not P₅ over ℤ. | Pass |
| Root-power divisibility | m=k=2: (q²−1)² divides P₄. k=0:1 divides P₀=1. m=0,k=1 would require 0 dividing 1 and is excluded. | Pass |
| Factorial limit equivalence | Precision zero=quotient by 1=0; at P₂ both presentations send q to q and q² to q². | Pass |
| Order-adic transition/limit | 2 divides 6: q maps to q; q²−1 remains nonzero in the order-two completion. Constants 0 at m=1 and 1 at m=2 are incompatible. | Pass |
| Finite-divisors adic comparison | m=2 retains both Φ₁ and Φ₂ since q²−1=Φ₁Φ₂; reducing to only Φ₁ would lose the value at −1. | Pass |
| Not the q-adic or single-Taylor completion | q−1 has constant −1 at q=0 and is a unit there, but value 0 in H at 1. Φ₆ has value 1 at 1 and 0 at a sixth root. | Pass |
| Infinite-order filtration not ideal-adic | For nonzero f, choose root ζ of an order outside its finite root set: f(ζ)ᵏ≠0 for all k. The zero ideal gives discrete polynomials, whereas X-powers leave nonzero kernel neighborhoods. | Pass |
| §1.5 coefficient maps | ℤ→ℚ sends q to q injectively; mod 2 sends 2q to 0 and 1−q to 1+q; identity and composite coefficient maps give those same polynomials. | Pass |
| Order restriction/naturality | S={1,2},T={1}: q maps to q then to 1; reducing mod 2 before or after gives 1. Equal-set restriction fixes q². | Pass |
| Finite versus infinite base change | Finite quotient by X² has rank 2 over both ℤ and ℚ. In ΣXⁿ/n!, denominators n! are unbounded, unlike the single denominator in a tensor element. | Pass |
| §2.1 arbitrary factorial sums | (1−q)P₀−P₁=0; zero digits sum to 0; all-one digits give F≡2−q mod P₂. | Pass |
| General factorial summability | A summand in (Pₙ) has residue 0 modulo P_N for n≥N; eventual residue sums are constant. | Pass |
| Normalized factorial existence/uniqueness | q digits=(1,−1,0,…); 1−q digits=(0,1,0,…); all-one digits have degrees 0≤n. The unnormalized zero representation violates deg a₀≤0. | Pass; Lean headline |
| Negative quotient recursion | q=1+(q−1)·1 gives next residual −1; 2−q=1+(q−1)(−1) gives next residual 1, then 0. | Pass |
| Digit finite representative independence | Adding P₂ to q changes digit 2 by 1 but leaves digits 0,1 equal to 1,−1. | Pass |
| Truncated digit basis/rank | N=2 basis=(1,1−q,q−q²), three elements; quotient degree=3=2·3/2. | Pass |
| §2.2 addition/negation and multiplication | q+(1−q) has digits (1,0,…); F² digits through P₄ are 1,3−q,6−3q−q²,7−4q−4q²+2q³. | Pass |
| Upward carry | (q³−q²−3q+5)−(6−3q−q²)=q³−1; its carry changes only later digits. | Pass |
| List/polynomial normalization | [] gives 0; descending [−1,2] gives 2−q with digits 1,1; [1,0] gives q with first residual −1. | Pass |
| §2.3 q inverse/telescope | N=0:0=1−1; N=2:q(1+q−q²)=q+q²−q³=1−P₂. | Pass |
| Inverse-q finite representative | Mod P₃: q⁻¹=1+q−q³−q⁴+q⁵; multiplication by q reduces to 1. | Pass |
| Laurent comparison/injectivity | q⁻¹ at −1 is −1; its order-one expansion is 1−X+X². In the empty completion both Laurent 0 and 1 map to 0. | Pass |
| Laurent Taylor checks | q+q⁻¹ gives 2+X²+…; q⁻² gives 1−2X+3X²+… . | Pass |
| §3.1 root evaluation | q↦ζ; F(−1)=3; F(ω)=5−ω. A polynomial Φ_n maps to 0 exactly under the required root equation. | Pass |
| Primitive-root negative control | 3²=1 modulo 8 and 3≠1, but Φ₂(3)=4≠0; root-equation hypothesis excludes it. | Pass |
| Fraction-field irreducibility control | In ℤ[2i][q], 2+2iq evaluates to 0 at i but has degree 1 and nonzero class modulo q²+1. | Pass |
| No discrete substitution from ℤ[[q−1]] to −1 | 2−q has constant 1 at q=1 and is a unit; proposed image is 3, a nonunit in ℤ. | Pass |
| Additive Taylor construction | q² at ζ gives ζ²+2ζX+X²; coefficient k=2 is 1. Mod Φ_n³ fixes that coefficient independently of representative. | Pass |
| Hasse/ordinary derivative comparison | q² in 𝔽₂: second Hasse coefficient=1, second ordinary derivative=0, and 2!·1=0. | Pass |
| Taylor finite-truncation bound | At 1 coefficient 2 of F uses n≤2 and is 2; at −1 coefficient 1 uses n≤3 and is 11; later permitted summands contribute 0. | Pass |
| Exponential coordinate | q=ζexp(−t) gives ζ,−ζ,ζ/2; q² gives ζ²,−2ζ²,2ζ². | Pass |
| Taylor multiplicativity | q·q: degree-one coefficient ζ·1+1·ζ=2ζ, matching q². Over square-zero R=ℚ[ε]/ε², (εq)²=0 and its Taylor square is 0. | Pass |
| §3.2 naturality | Reducing q²−2q modulo 2 gives q²; Taylor at 1 gives (1+X)² in 𝔽₂ on either route. | Pass |
| Positive-power substitution | a=2: q²↦q⁴,1−q↦1−q²; an order-six root squares to order 3=6/gcd(6,2). | Pass |
| Power-map composition/Taylor law | a=2,b=3: q↦q⁶ by both routes. Near ζ, q² has shift 2ζX+X². | Pass |
| Order-condition necessity | S=T={2},a=2 fails because 2/gcd(2,2)=1∉S. q+1 is sent to q²+1, with value 2 at −1, not 0. | Pass |
| §3.3 root closeness | ζ₆=−ω²: ζ₆−ω=1; ζ₆−ω²=−2ω². The first is a unit, the second lies in 2B. | Pass |
| Prime-power nilpotence | ω=−1,p=2: (ω−1)²=4∈2B; equal roots have difference 0. | Pass |
| Non-prime-power unit obstruction | Φ₆(1)=1; at a primitive sixth root (1−ζ₆)ζ₆=1. In ℤ[ζ₆]×ℤ, (ζ₆,1) gives second component 0 for 1−ω, excluded by Φ₆(1)≠0. | Pass |
| Re-expansion coefficient formula | B=ℤ₂,c=−2,f=ΣXᵏ: constant=1/3, series=1/(3−X); at degree 1, coefficient=1/9. | Pass |
| Re-expansion composition/inverse | For f=X², shift c then d yields X²+2(c+d)X+(c+d)²; d=−c gives X². | Pass |
| Close-root Taylor compatibility | h=q: σζ=h gives ζ+X, translating gives ζ+c+X=ζ′+X. h=q² gives constant (ζ+c)²=ζ′². | Pass; Lean headline |
| Re-expansion topology | Xⁿ translated by −2 has constant (−2)ⁿ→0 in ℤ₂, never eventually 0. In ℚ₂, (2)=whole field, so ideal-adic separation fails. | Pass |
| §4.1 adjacency index | c₁,₁=0,c₁,₄=2,c₁,₆=1; in ℤ the first two are separated ideals, (1) is not. In ℚ only equality survives. | Pass |
| Adjacency symmetry/reflexivity | 3/12=2⁻² and 12/3=2² give the same prime 2; equal orders use (0) and are adjacent even over ℚ. Zero ring makes every pair adjacent. | Pass |
| Inside-set connectedness | {1,2,6} has edges 1–2,2–6; {1,6} has no edge; ∅ fails nonemptiness. | Pass |
| Divisor-set connectedness | Divisors of 12 are 1,2,3,4,6,12; over ℤ all connect. Over ℤ[1/3], the v₃=0 and v₃=1 groups cannot connect. | Pass |
| Prime-power congruences | Mod 2: Φ₁₂=q⁴+q²+1=(q²+q+1)²; mod 3: Φ₉=q⁶+q³+1=(q²+q+1)³. | Pass |
| Prime-in-ideal and pair quotient | (Φ₃,Φ₁₂)=(2,Φ₃), quotient basis 1,q over 𝔽₂; q²=1+q. For equal orders quotient is ℤ[q]/Φ₃, where 2≠0. | Pass |
| Non-prime-power comaximality | Φ₆−qΦ₁=(q²−q+1)−(q²−q)=1. | Pass |
| Cyclotomic resultant | Absolute resultants for (12,3),(9,3),(6,1) are 4,9,1; integers contained in the first two pair ideals include 2,3. | Pass |
| §4.2 monic radical relation | Φ₂≡Φ₁ mod 2, giving witness (2); divisibility f=g·h gives witness (0). Over ℚ, (2)=whole ring is not separated. | Pass |
| Finitely generated witnessing ideal | For f=q+1,g=q−1, f−g=2 generates the single coefficient ideal (2); higher powers of a smaller witness ideal stay inside the original powers. | Pass |
| One-step restriction and complete-base isomorphism | Integral (q²−1)-completion maps injectively to ℤ[[X]]; over ℤ₂, q²−1=X(X+2) has the same mixed radical as X; over ℚ the order-two projector maps to 0. | Pass |
| Monic chain/restriction injection | {1,2,4}→{1} has chain 1–2–4. {1,6}→{1} kills projector (0,1), and the missing inside-set chain excludes it. | Pass; Lean headline |
| Divisor-completion intersection | q has the same residue in all divisor completions; incompatible values 0 at 1 and 1 at −1 cannot represent a common element, since their mod-2 residues differ. | Pass |
| §4.3 root adjacency | Primitive order 2 has the single root −1. At order 4, i−(−i)=2i; over ℤ[i,1/2] this is a unit and the two factors split. | Pass |
| Finite-domain transfer | ℤ[i]→ℤ² sends a+bi to (a,b); ∩2ᵏℤ²=0 forces ∩2ᵏℤ[i]=0. A finite torsion algebra ℤ/2 cannot embed this way and is excluded. | Pass |
| Single-root Taylor rigidity | Over ℤ, q and 1 have series 1+X and 1 at order 1; over ℤ[i,1/2], order-four two-root completion has projector (0,1) killed at i and fails the separation hypothesis. | Pass; Lean headline |
| Connected-domain consequence | Integral S={1,2} embeds in ℤ[[X]], hence no nonzero product vanishes. S={1,6} has (1,0)(0,1)=0 and is explicitly excluded. | Pass |
| §4.4 universal-value uniqueness | T={2ᵏ:k≥0}: infinitely many orders adjacent to 1; finite T={1,2} misses nonzero q²−1, whose two values are 0,0. | Pass; Lean headline |
| Sparse-set limitation | For T=6,15,35,77,…, adjacent-order ratios to 1 are never prime powers; the theorem gives no injection claim. | Pass |
| Selected-root safeguard | R=ℤ[i], selected ζ=i: residue q−i≠0 modulo q²+1 but evaluation=0. Over ℤ the same map identifies the full rank-two residue with ℤ[i]. | Pass |
| Proper adjacent-pair restriction | (m,n)=(1,2): (3−2q)⁻¹ has value 1/5 after 2-adic translation to −1; an integral preimage would give an integer. | Pass mathematically; R01 |
| Proper divisor-set restriction | Divisors 1⊂divisors 2 give the same 1/5 obstruction. Equality m=n yields identity and is excluded. | Pass mathematically; R01 |
| Proper finite restriction of full ring | Retaining {1} gives (2−q)⁻¹, with translated value 1/3 at −1; target permits it, full integral ring does not. Empty target is surjective and excluded. | Pass mathematically; R01 |
| Every integral Taylor image is proper | n=2: 1+Φ₂=q+2 has value 1 at −1 and 3 at 1. n=6:1+Φ₆ has value 1 at ζ₆ and 2 at 1. Formal inverses cannot lie in Hℤ. | Pass; Lean headline |
| Missing linear jet for n≥3 | Φ₃′(ω)=2ω+1 has norm 3; a zero constant jet's linear coefficient lies in this proper ideal, so coefficient 1 is impossible. Discriminants at 3,4,5 are −3,−4,125. | Pass |
| §4.5 universal root algebra | A₄(ℚ(i)) has rank 2, while evaluation at i has rank 1 and kills q−i. A₁(R)=R; A₀ is not used in the positive Taylor product. | Pass |
| TaylorProduct and coordinates | For q, order-one coordinates are 1,−1,0,…; order-two constant is −1; zero collection gives all 0. The unit gives constant 1 and higher coefficients 0. | Pass |
| H filtration/kernel | N=1: P₀H=H, quotient=0. N=2:kernel=P₁H; 1−q has zero value at 1 and is in the kernel. | Pass |
| Weighted Taylor filtration | N=3 retains (1,1),(2,1),(1,2). Order-two u has weight 4: retained at N=5, killed at N=4. | Pass |
| Associated graded H equivalence | N=2: g=1−q maps to P₁(1−q)=(1−q)² modulo P₂; replacing g by g+(1−q²) changes it by P₂. | Pass |
| Associated graded Taylor equivalence | Weight 4 extracts the order-two u coefficient and order-four constant; a 5u in order two gives 5, while all other extracted entries are 0. | Pass |
| Graded rank identity | N=1:1; N=2:φ(1)+φ(2)=2; N=6:1+1+2+2=6. | Pass |
| Finite bases/coordinate order | N=3 digit vectors for q,q²,1−q are (1,−1,0),(1,−1,−1),(0,1,0); jet vectors are (1,−1,−1),(1,1,−2),(0,2,1). | Pass |
| Finite precision dimensions | N=1,2,3,5 give 0,1,3,10=N(N−1)/2; replacing strict < with ≤ adds N coordinates. | Pass |
| Taylor-product reconstruction | Coordinate (m,l)=(2,2) first appears at N=5 with its fixed coefficient; reductions N=6→5→4 keep then discard that same coefficient. | Pass |
| §4.6 iota and taylorPolynomial | q↦z−zu; q²↦z²−2z²u+z²u²; 1−q↦1−z+zu. Additive degree-one signs reverse at root 1. | Pass |
| Factorial Taylor vanishing | P₃ at m=2 has zero constant and coefficient 8 at u; modulo 2 that coefficient is 0, so exact order cannot be claimed generally. | Pass |
| Filtered finite comparison | P₂ maps into weighted filtration N=3: at order 1 its constant and first coefficients are 0, and at order 2 its constant is 0. | Pass |
| Universal root product | m=1:empty product=1; m=2:1−(−1)=2; m=3:(1−ω)(1−ω²)=3. Base change to 𝔽₃ gives 0=0. | Pass |
| Leading factors and recursion | D₁,₄=6,D₂,₂=8,D₃,₂=27; direct Hasse computations give 6,8,27. D₂,₃=64=2²·2·8. | Pass |
| Graded leading map | N=2,g=q: components 1 and −2; N=3,g=q² at order 3 gives −3−3z₃, with no derivative term. | Pass |
| Simultaneous remainder map | N=2 matrix [[1,1],[1,−1]], determinant −2; over ℤ injective, over ℚ invertible, over 𝔽₂ rows coincide. | Pass |
| Joint torsion-free Taylor injectivity | Over ℤ, M₃ has determinant 4≠0. Over torsion-free square-zero ℤ[ε]/ε², multiplication by 4 stays injective; being a domain is unnecessary. | Pass; Lean headline |
| Rational Taylor isomorphism | Jet (1,0,0) at N=3 has unique rational digits (1,−1/4,1/4); over ℚ[ε]/ε² the same matrix inverse exists. | Pass; Lean headline |
| §4.7 Taylor matrix and triangularity | M₃=[[1,0,0],[1,2,−2],[0,1,1]]; row weights 1,2,2 make the upper-right entries 0. M₁ is empty. | Pass |
| Remainder/resultant determinant | For f=q−1,g=q+1, determinant −2 and absolute resultant 2; f=1,g=q−1 gives the one-entry matrix [1]. | Pass |
| D₂ determinant product | N=1,…,8 gives 1,2,3,8,5,72,7,128 from exact remainder matrices. | Pass |
| D₁ graded determinant factor | N=2:D₁=2, D₂=2, product 4. N=3:D₁=18,D₂=3, product 54; δ₄/δ₃=216/4=54. | Pass |
| Strict δ_N formula | N=1,…,6 gives 1,1,4,216,1327104,99532800000. Product through N would give 4 instead of 1 at N=2. | Pass; corrects G |
| Signed adjugate identities | M₃*= [[4,0,0],[−1,1,2],[1,−1,2]]; both products equal 4I. Empty matrix has determinant 1. | Pass |
| Finite image criterion | γ=(1,0,0):M₃*γ=(4,−1,1), not in (4ℤ)³; γ=0 gives 0∈(4ℤ)³. Over ℤ[1/2] all three coordinates are divisible by 4. | Pass |
| Global compatible preimages | Zero jets reconstruct all-zero digits; q jets reconstruct (1,−1,0,…); at successive precisions the unique first two digits remain 1,−1. | Pass |
| §4.8 scalar local detection | Δ=2,d=6,b=3:6 divides 2·3 and 3∈6ℤ[1/2]; only p=3 matters and v₃(3)=v₃(6)=1. Δ=1 fails at p=2. b=0 passes all. | Pass |
| Canonical maps to ℤ_p | ℤ[1/3]→ℤ₂ sends 1/3,2/3,−1/9 to the same fractions in ℚ₂; 3 is a unit. A map ℤ[1/2]→ℤ₂ would require 2 a unit and is excluded. | Pass |
| Local detection of Taylor image | γ=(1,0,0),N=3: inverse digits contain ±1/4, failing ℤ₂ integrality; over Δ=2 that obstruction disappears. Δ=−2 has the identical allowed denominators. | Pass |
| §5.1 module-completion construction | M=0 gives 0 at every quotient; S=∅ gives 0; M=R recovers the same compatible quotient families as the ring. | Pass |
| Polynomial-module monic regularity | M=ℤ/2,N=1: P₁·q=q+q²≠0; leading coefficient remains 1. N=0:P₀=1 acts identically. | Pass |
| Module projection kernel and action | Mod X, 3+2X projects to 3; subtracting constant gives X·2. Multiplication by 2 sends 3q to 6q in every quotient. | Pass |
| Natural module maps/restrictions | Reduction ℤ→𝔽₂ sends (7,−3q,5q²) to (1,q,q²); applying restriction before reduction gives identical three residues. | Pass |
| Cofinal monic block product | g_j=Xʲ gives coordinate sequences for 7,q,q² equal to (7,0,0,…),(1,1,0,…),(1,2,1,0,…). Equal successive g's contribute zero coordinates. | Pass |
| Exact polynomial-module functor | 0→ℤ→ℤ→𝔽₂→0 with multiplication by 2 becomes coordinatewise: kernel consists exactly of even integer digits; every binary digit lifts. | Pass |
| Arbitrary products versus topology | (∏ℤ)[[X]]≅∏ℤ[[X]] as modules. The family with constant 1 in one arbitrarily late coordinate lies outside ∏Xℤ[[X]], so that image is not product-open. | Pass |
| Finite-presentation tensor comparison | M=ℤ/2 gives Hℤ/2Hℤ≅H𝔽₂; M=ℤ² gives two copies. For M=ℚ, digits 1/n! have no fixed denominator. | Pass |
| Infinite direct-sum comparison | Σe_jP_j has only indices j<N at precision P_N, but infinitely many nonzero completed components; it is not a finite-support completed family. | Pass |
| Module adjacency/restriction | M=ℤ:∩2ᵏM=0; M=ℚ:∩2ᵏM=ℚ≠0; M=0:intersection=0 and every pair is adjacent. | Pass |
| §5.2 comaximality criterion | Over ℤ, Φ₁,Φ₂ have common quotient 𝔽₂≠0; over ℤ[1/2], their difference 2 is a unit; Φ₁,Φ₆ already generate 1. | Pass |
| Two-part CRT equivalence | S={1,6}: projectors have components (1,0),(0,1), product (0,0), sum (1,1). q maps to q in both factors. | Pass |
| Arbitrary component decomposition | Empty family:source and product are zero rings. Three rational singleton parts have projectors e_i e_j=0 for i≠j and each restriction gives its own coordinate. | Pass; Lean headline |
| Non-comaximality classes | Over ℤ, {1,2} is one class; {1,6} gives two classes. Adding label 0 gives a zero quotient factor because Φ₀=1. | Pass |
| Non-adjacency is weaker than comaximality | R=ℤ×ℚ:∩2ᵏR=0×ℚ≠0, but 2 is not a unit since its ℤ coordinate is 2; pair quotient is 𝔽₂×0. | Pass |
| Rational singleton/evaluation behavior | Hℚ at order 1 is ℚ[[X]]:evaluation kills X≠0. In all orders, (q−1)e₁ has coordinate X at 1 and 0 elsewhere, so every root value is 0. | Pass |
| Rational restriction surjectivity | For {1,2}→{1}, arbitrary f lifts to (f,0); kernel contains (0,1)≠0. | Pass |
| §5.3 localized integer carrier | Δ=1 gives ℤ; Δ=2 makes 2 invertible; Δ=0 would invert 0 and give the zero ring, excluded in all four relevant headlines. | Pass |
| Valuation tuples/order sets | Δ=6 and 12 use the same primes {2,3}; n=12 has tuple (2,1). Δ=1 has one empty tuple and all positive orders. n=0 is excluded. | Pass |
| Localized component decomposition | Δ=2,n=1,2,4 have v₂ values 0,1,2 and belong to three distinct nonzero factors; Δ=1 has exactly one factor. | Pass; Lean headline |
| Component projectors and restriction criterion | At Δ=2, e₀ has values 1 at 1,0 at 2; e₁ reverses those values. Missing v₂=1 kills e₁; meeting every class leaves no projector kernel. | Pass |
| Component domain/Taylor descent | Δ=3,n=3:over R[ω], primitive roots ω,ω² differ by a unit; two factors split. A base-image pair is (f,conjugate(f)); first coordinate 0 forces both 0. | Pass; both Lean headlines |
| All-value localized injectivity | Δ=2, class v₂=a:orders 2ᵃℓ for odd primes ℓ remain adjacent to 2ᵃ. Rational t=(q−1)e₁ has all values 0 but requires denominators at infinitely many primes and is outside this conclusion. | Pass; Lean headline |
| Coefficient localization non-surjectivity | Hℤ[1/2] is a domain, hence an idempotent has e(e−1)=0⇒e=0 or 1. H_(ℤ[1/2]) contains e₀ with values 1,0, so it cannot be in that image. | Pass |
| §5.4 restriction projector/localization | Empty retained set:e=0,localization=0; all retained:e=1,localization=H; rational {1,2}→{1}:e=(1,0). | Pass |
| Excluded-factor obstruction | Retain {1} over ℤ:Φ₂=2+X has constant 2, not a unit; localizing at Φ₂ cannot map compatibly into ℤ[[X]]. | Pass |
| Shared fraction field and monoids | Denominator 1 preserves h; Φ₁ and Φ₂Φ₃ are indices; q and 2 are not monic cyclotomic products. q⁻¹ already belongs to both unlocalized rings. | Pass |
| Localization sum identity | h=b+fc gives h/f=c+b/f. For h=q⁻¹,f=Φ₁, reduced Laurent b=1 gives q⁻¹/(q−1)=−q⁻¹+1/(q−1). | Pass |
| Localization intersection identity | q⁻¹ lies in both rings; 1/Φ₂ cannot lie in H since multiplying then evaluating at −1 would give 0=1. A canceled pole Φ₂/Φ₂=1 lies in the intersection. | Pass |
| §5.5 arbitrary-module completion | A=ℤ[q]/P₂: for N≥2, P_NA=0 and A/P_NA=A; at N=0 quotient=0. Zero module gives zero throughout. | Pass |
| Completed direct sum/null families | x_k=P_k:at P₁ support=∅; at P₂ support⊆{1}. Family 1 has every coordinate 1 mod P₁ and fails finite support. | Pass |
| Diagonal nonexactness | d_k=P_k: each x_k=P_k maps to 0 in its quotient. Regularity forces a preimage coordinate=1 for every k, violating the preceding support test. | Pass |
| Wrong single-adic counterexample | ((q−1)ᵏ) evaluated modulo Φ₂ has entries (−2)ᵏ, never 0; it does not converge to zero in the factorial topology. | Pass |
| §6.1 alternating units | m=3 polynomial 1−q+q²=Φ₆, coprime to all admitted orders coprime to 6; at order 1 its value=1. | Pass |
| Unit criterion for 1−q | At order 1:value=0; order 2:value=2; order 6:(1−q)q=1−Φ₆. Φ_(pᵃ)(1)=p, while Φ₆(1)=1. Empty completion has its sole unit. | Pass |
| Order-six inverse series | (1−q)q Σ_(k=0)^K Φ₆ᵏ=1−Φ₆^(K+1); residues of both sides modulo Φ₆^(K+1) are 1. | Pass |
| F values at orders 1–6 | Exact remainders: 1;3;5−q;8−3q;9−5q−3q²;17−13q. Each equals the corresponding displayed root value. | Pass |
| F Taylor coefficients at 1 | Computed 1,−1,2,−5,15,−53,217,−1014,5335,−31240; identical to README. | Pass |
| F Taylor coefficients at −1 | Computed 3,11,72,635,7085,95911,1528541; identical to README. | Pass |
| F cubic Taylor coefficients | Computed 5−ω,49+40ω,128+693ω; identical to README. | Pass |
| F q⁻¹ digits | First three digits computed 1,2q,3q², agreeing with (n+1)qⁿ; its order-one constant is 1. | Pass |
| Ordinary geometric series is not Habiro-convergent | Partial sum Σ_(n<N)qⁿ has value N at 1; consecutive values differ by 1≠0 in the discrete quotient. | Pass |
| §6.2 M₅ recovery | M₅(1,1,0,1,0,0,1,0,0,0)=(1,3,1,5,−1,2,8,−3,11,5). | Pass |
| Altered-jet negative control | Changing first entry to 2 recovers (2,3/4,1/4,65/72,−1/72,17/72,275/288,−7/144,1/32,17/72), not an integral vector. | Pass |
| Odd/exponent-one projectors | e(q²)−e(q) has value 1 exactly when v₂(order)=1, and 0 for v₂=0 or ≥2; e itself has values 1,0,1 at orders 1,2,3. | Pass |
| Projector digit polynomials | Odd digits:1,(q−1)/4,(1−q+q²)/8,(−5+2q+q²+4q³)/32. Exponent-one digits:0,(1−q)/4,(−1+q−q²)/8,(1−2q+3q²−4q³)/32. | Pass; matrix recovery |
| §6.3 localized projector residues | e₀ mod P₃=(7+2q−q²+q³−2q⁴+q⁵)/8; reduction mod P₂=(3+2q−q²)/4. CRT residues are 1 modulo (q−1)³Φ₃ and 0 modulo Φ₂; e₀²−e₀ remainder=0. | Pass |
| Complementary projector kernel | 1−e₀ has value 1 at −1, zero Taylor at 1; it is nonzero and is killed by order-one restriction. | Pass |
| Localized order-two inverse | Put Y=q+1:1−q=2−Y. (2−Y)Σ_(k=0)^K Yᵏ/2^(k+1)=1−Y^(K+1)/2^(K+1), residue 1. | Pass |
| Rational singleton projector | Given degree-five e₁ has residues 1 mod (q−1)³ and 0 mod Φ₂Φ₃. Multiplying by q−1 gives coefficients (−5,−2,3,5,2,−3)/12 modulo P₃. | Pass |
| Rational zero-values/nonzero-jet element | t=(q−1)e₁ has all root values 0, but its order-one Taylor series is X≠0. | Pass |
| Characteristic-two projector | q⁵+q+1 has residues 1 mod (q+1)⁴,0 mod Φ₃; e²−e has remainder 0 mod P₃ in 𝔽₂. | Pass |
| Mod-two ideal not prime | Completed nontrivial projector e satisfies e(1−e)=0 with both factors nonzero; via Hℤ/2Hℤ≅H𝔽₂, 2Hℤ is not prime. | Pass |
| §6.4 finite projections and exported precision | At N=3, q has digits (1,−1,0) and matrix image (1,−1,−1); ml=3 slots are absent. Thus the exported equations use the same strict precision and signs as Layers 2–4. | Pass |

### Library and ownership audit

The library pins were verified directly: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. These are repository-relative paths inside those pins. The following 24 declarations or definition groups were opened, including the hypotheses, rather than checked by name alone:

| Pinned declaration(s) | File and line; contract actually checked |
| --- | --- |
| Polynomial.cyclotomic; map_cyclotomic_int; map_cyclotomic | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Basic.lean:229,240,262; integral polynomial and coefficient transport |
| Polynomial.cyclotomic.monic; prod_cyclotomic_eq_X_pow_sub_one | Same file:291,337; factorization requires n>0 |
| Polynomial.cyclotomic_mul_prime_dvd_eq_pow; cyclotomic_mul_prime_pow_eq | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Expand.lean:145,156; characteristic p, prime p, and the relevant divisibility condition |
| Polynomial.eval_one_cyclotomic_prime_pow; eval_one_cyclotomic_not_prime_pow | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Eval.lean:41,136; positive prime exponent and the non-prime-power boundary |
| AdjoinRoot.mk_eq_zero | .lake/packages/mathlib/Mathlib/RingTheory/AdjoinRoot.lean:212; exactly divisibility, with no domain restriction |
| AdjoinRoot.liftAlgHom | Same file:317; requires the polynomial equation, not merely multiplicative order |
| AdjoinRoot.algHomOfDvd | Same file:473; transition from modulus f to divisor g |
| AdjoinRoot.modByMonicHom; modByMonicHom_mk | Same file:676,683; reduced polynomial representative and its formula |
| Polynomial.hasseDeriv; hasseDeriv_coeff | .lake/packages/mathlib/Mathlib/Algebra/Polynomial/HasseDeriv.lean:59,67; binomial coefficients and natural subtraction, whose excessive-index terms have zero binomial factor |
| Polynomial.factorial_smul_hasseDeriv; hasseDeriv_mul | Same file:133,211; integral factorial comparison and convolution |
| PowerSeries.eval₂Hom | .lake/packages/mathlib/Mathlib/RingTheory/PowerSeries/Evaluation.lean:156; continuity, HasEval, complete Hausdorff target, linear topology and compatible uniformity |
| PowerSeries.hasSum_eval₂; eval₂_unique | Same file:176,190; convergent sum and uniqueness on polynomials |
| IsHausdorff; IsAdicComplete | .lake/packages/mathlib/Mathlib/RingTheory/AdicCompletion/Basic.lean:46,56; separation is intersection of powers; no Noetherian hypothesis; completeness includes separation |
| AdicCompletion.of_injective | Same file:632; requires IsHausdorff |
| AdicCompletion.isAdicComplete | .lake/packages/mathlib/Mathlib/RingTheory/AdicCompletion/Completeness.lean:181; requires a finitely generated ideal |
| Polynomial.resultant_eq_prod_eval | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:475; domain, splitting, and an explicit degree bound |
| Polynomial.isUnit_resultant_iff_isCoprime | Same file:890; monic first polynomial |
| HahnSeries.embDomainRingHom | .lake/packages/mathlib/Mathlib/RingTheory/HahnSeries/Multiplication.lean:881; injective, order-preserving and order-reflecting additive exponent map |
| IsPrimitiveRoot.prod_one_sub_pow_eq_order | .lake/packages/mathlib/Mathlib/RingTheory/RootsOfUnity/Lemmas.lean:33; domain and positive primitive order; supports the integral-root calculation before coefficient transport |
| TauCeti.TopCommRingCat.IsCompleteSeparated; .pi; .of_isClosedEmbedding | .lake/packages/TauCeti/TauCeti/Topology/Category/TopCommRingCat/CompleteSeparated/Basic.lean:80,137,155; actual group uniformity and T0 separation, hence T2, are included |
| UniformSpace.Completion.ringHom_ext_of_continuous | .lake/packages/TauCeti/TauCeti/Topology/Algebra/UniformRing.lean:116; continuous ring maps on the existing uniform completion |
| TauCeti.Polynomial.ofCoeffList; ofCoeffList_divByMonicList; ofCoeffList_modByMonicList | .lake/packages/TauCeti/TauCeti/Algebra/Polynomial/Coeff/List.lean:61,405,417; descending coefficients, divisor q^(length t)+ofCoeffList t, correct quotient and remainder |
| IsPrimitiveRoot.exists_algEquiv_apply_eq_pow_of_coprime | .lake/packages/TauCeti/TauCeti/RingTheory/RootsOfUnity/PrimitiveRoots.lean:63; normal characteristic-zero field over ℚ, a useful existing input for §5.3; restriction to the localized integral subalgebra remains additional work |
| IsPrimitiveRoot.mem_algebraAdjoin_of_pow_eq_one | .lake/packages/TauCeti/TauCeti/RingTheory/RootsOfUnity/Adjoin.lean:41; every nth root belongs to the algebra generated by a primitive one in a domain |

The existing Hasse derivative, geometric sum, cyclotomic factorization, coefficient-list division, Laurent dilation and complete-separated category are inputs, not new replacements. The universal cyclotomic algebra over a general coefficient ring is deliberately different from choosing one embedded root; the split ℚ(i) test above verifies that distinction. General ordinary monic completion comparisons are developed here to support the cyclotomic system; no matching classical Habiro completion implementation was found at the pins.

Object searches used the roadmap search tool across main and the open-head index, checked the supplied sibling files, and searched board packages for cyclotomic completions, monic completions, q-integers, Jackson operators, Pochhammer/plethystic constructions, and polynomial-module completion. No fully qualified declaration collision was found for the 29 local names. The relevant ownership resolutions were:

- Completed/ProfiniteArithmetic/README.md:275, §0.2: inverse limits of integer residue rings, a neighboring construction rather than an owner of the polynomial system.
- AInfCohomology §AI.3.3: the framed q-de Rham monomial formula uses q-integers; it does not supply a separately named qInteger declaration. Coordination of notation is appropriate, rather than an additional dependency on its derived theory.
- ArithmeticStatisticsPartIV §3.2: Gaussian polynomial, semiring evaluation and Cauchy's finite q-binomial theorem are present as mathematical targets. Their native mathematical names, rather than remembered aliases, identify the owner. They are explicitly not inputs here.
- HabiroRings README:477, §2.4: ordinary/derived comparison consumes this roadmap's §§1.4,2.3,5.1. The direction is outward from this roadmap; the derived comparison is not replanned here.
- HabiroNumberFields README:11,87,768, §§2.8–2.10: generic completions and Taylor lattices are explicitly assigned here; its arithmetic Frobenius equalizer and rational-field comparison are distinct. R02 corrects the outdated Layer 6 citation.
- QSeriesPartitionsAndMockModularForms README:7,64–66, §§1.2–1.5: it imports finite and integral formal Pochhammer theory here and adds integer-indexed/analytic adapters. The q-calculus scopes agree; the old “Layer 0” locator does not.
- HabiroNahmSeries README:114–116, §5.1: it consumes the elementary toolkit; its multivariate admissibility/logarithmic theory is distinct. Its present Layer 4 is a Bloch-torsion application and there is no Layer 8.
- HabiroCohomologyFoundations README:29,233–235,439, §§0.2–0.3 and 1.2: it imports the cyclotomic ideal/product and Jackson results here. Its enhanced descent does not own these classical objects. Its skew product convention is explicitly compared with the supplier's Jackson convention.
- QWittVectors README:12,103–125, §2.1a: cyclotomic intersections and component topology are assigned here, while arithmetic Witt theory and the lambda/Witt comparison remain there. Its SchemeKTheoryOperations ownership citation identifies the general special-lambda-ring owner.

The two unresolved application names are accounted for in R02. I did not treat their occurrence as a supplier, invent a missing supplier contract, or search for unprovided PRs individually. The provided indexed search and sibling heads were used for ownership checks, not as instructions.

### Supplier order and shape

All 61 explicit Needs lines and the supplier table were read. Their inputs are pinned library constructions and preceding local targets; downstream names in Scope are not prerequisites. There is no declared supplier gap. The mechanical check returned exactly:

```text
depcheck: 205 roadmaps, 1477 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. This agrees with the separation of ordinary completion here from the later derived/arithmetic work. In particular, Layer 4's matrix arguments do not require Layer 5's projectors; the latter only appear in the worked examples after both are available.

The README has all six ordered layers, Examples and Dependencies endings, conventions and supplier contracts. Its definition families have mathematical API descriptions and multiple positive/negative examples. R03 addresses the noncompliant identifier catalogue and Check formatting rather than asking for additional trivial Lean declarations. No computational implementation or large calculation is requested: the finite normalization equations and small matrices serve mathematical quotient comparisons.

## Not verifiable

- None of the cited works was inaccessible. All 15 seeded targets were checked against legally obtained text or, where the README explicitly gives an extension/calculation, against that argument and the computed witnesses.
- ArithmeticQuantumTopology and AnalyticHabiroStack section references could not be resolved in main or the supplied open-head index. This limitation is the concrete locator issue R02; no mathematical dependency here rests on either.
- Finite examples and an admitted Lean build do not prove the eventual infinite constructions. In particular, I checked the stated monic-block exactness, finite-domain separation transfer and Galois descent arguments, but there is no implemented completed module/matrix library in this PR to execute. The docstring accurately identifies those unavailable carriers.

## Source issues

- **Misprint** in O at Proposition 1.5, printed p.3 (O line 114): the source says the raw Nahm sum equals the product times q^(−1/48); it should be the product without that prefactor; affects a stated result.
- **Misprint** in O at the proof of Proposition 1.5, printed p.3 (O lines 129–147): the source says the difference is a sum with the wrong second exponent; it should be subtraction with exponent n²/2+n; affects the proof.
- **Misprint** in O at Proposition 2.5, equation (2.1), printed p.8 (O lines 335–338): the source says f(t)=(1−t)f(qt); it should be (1−t)f(t)=f(qt); affects the proof.
- **Misprint** in O at the introductory modular product, printed p.2 (O lines 61–69): the source says the discriminant product starts at n=0; it should be n=1, since the n=0 factor is zero; affects a stated result.
- **Misprint** in O at equation (5.2), printed p.27 (O lines 1460–1467): the source says the exponential sums Adams transforms without averaging; it should retain the factor 1/ℓ from the preceding logarithmic identity; affects a stated result.
- **Error** in O at Definitions 5.4–5.5 and following product, printed pp.26–27 (O lines 1451–1500): the source says the displayed product represents arbitrary series despite omitting multiplicities and t-exponents; it should include each coefficient multiplicity and the corresponding t-exponent; affects a stated result.
- **Error** in H at Lemma 5.1, printed pp.1136–1137 (H lines 450–469): the source says prime-power ratio with prime separation characterizes every root pair; it should also include equal roots, even over ℚ; affects a stated result.
- **Error** in H at Lemma 5.2(2), printed p.1137 (H lines 476–485): the source says connected orders imply connected full root sets without further separation; it should require separation connecting conjugate roots; affects a stated result.
- **Error** in H at Corollary 5.1, final sentence, printed p.1138 (H line 539): the source says every nonempty integral order set gives a domain; it should retain connectedness, since orders {1,6} give a product; affects a stated result.
- **Error** in H at Theorem 6.2, printed pp.1140–1141 (H lines 626–642): the source says the infinite-adjacency hypothesis alone gives injectivity for arbitrary S; it should require the relevant source components to be detected, in particular connectedness in this argument; affects a stated result.
- **Gap** in H at the proof of Theorem 6.2, printed p.1141 (H lines 643–647): the source says selected-root evaluation on each cyclotomic residue algebra is injective; it should require fraction-field irreducibility or enough roots to detect every factor; affects the proof.
- **Misprint** in H at §7.2 opening, printed p.1142 (H line 709): the source says Proposition 5.1 proves the domain assertion; it should cite Corollary 5.1; affects nothing.
- **Error** in W at Lemma 2.1, printed p.8 (W lines 305–308): the source says the prime-power-ratio quotient is characteristic p also at exponent zero; it should exclude equal orders, whose quotient remains ℤ[q]/Φ_n; affects a stated result.
- **Error** in L at Lemma 1, printed p.76 (L lines 46–48): the source says the unit classification applies to all positive x; it should require x>1, since 1−ζ₁=0; affects a stated result.
- **Misprint** in L at the last sentence of Lemma 2's proof, printed p.76 (L lines 80–82): the source says the number of choices for v is φ(p^(a+b)); it should be φ(p^b)=φ(n)/φ(N); affects the proof.
- **Misprint** in G at equations (302)–(305), printed p.60 (G lines 3018–3020,3049–3050): the source says the kernel filtrations increase with N; it should say they decrease, while the retained finite quotients increase in precision; affects nothing.
- **Error** in G at the basis/base-change parenthesis before (312), printed p.61 (G lines 3104–3109): the source says whole completions and Taylor products commute with ordinary tensoring by R; it should assert the finite free quotient base-change identities or impose valid tensor-commutation hypotheses; affects the proof.
- **Misprint** in G at Proposition 5.1, equation (313) and its numerical table, printed p.62 (G lines 3157–3196): the source says det M_N uses the product through n=N; it should stop at n<N for the quotient modulo P_(N−1); affects a stated result.

For the two H root-set issues, explicit witnesses are R=ℚ with an equal root, and R=ℚ(i), S={4}, root set {i,−i}: the order set has one vertex, while the two linear factors are comaximal. For Theorem 6.2's omitted connectedness, take S={2ᵏ:k≥0}∪{15} and select all 2-power roots: the order-15 component projector survives and has all selected values zero. For its residue-map gap, take R=ℤ[i] and the selected root i: q−i is the nonzero killed residue. The roadmap's stronger hypotheses avoid these errors. No published correction was established in this review.
