# Review of OrthogonalTamagawaAndLatticeMass (pull request #1222 at a0c4f51)

**Verdict:** needs changes

## R01 (P1) — The dyadic layer imports orthogonal groups from a layer excluding characteristic two

**Location:** `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass/README.md:421`, “finite-field reduced orthogonal groups from §0.1”. Section 0.1, line 90, assumes “characteristic different from 2”.

**Claim:** Section 0.1 supplies the residue-field quadratic orthogonal groups, their reductions and finite-point counts needed by §2.2.

**Witness:** For q(x,y)=xy over 𝔽₂, its quadratic orthogonal group has 2 points. Its polar-form stabilizer has 6. Section 0.1 excludes this field; its native constant-bilinear-form construction would give the latter group.

The six invertible 2×2 binary matrices all preserve the alternating polar matrix; only the identity and coordinate swap preserve xy. Cho2015 line 755 and line 758 require the **quadratic** orthogonal group and its scheme-theoretic reduction. The standard SO smoothness theorem at `TauCeti/Algebra/AlgebraicGroup/SpecialOrthogonal/Smooth.lean:103` requires invertibility of 2 and cannot fill this contract. This is an internal missing prerequisite, not a declared supplier gap.

**Repair:** Add an earlier target constructing the quadratic-form-preserving group scheme in residue characteristic two, its reduced group, odd/even-dimensional comparisons and the finite-field order formulas used here. Reuse the generic Hopf/group-scheme substrate, but retain q itself, not just its polarization. Point §2.2 to this target; keep the characteristic-not-two Spin branch separate. Include split and nonsplit binary and odd-dimensional tests. For xy over 𝔽₂ the repaired group has 2 points and gives α₂(U)=2^(2−1)·2=4; using the polar stabilizer instead gives 12.

## R02 (P2) — Import the existing imaginary-quadratic comparisons

**Location:** `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass/README.md:290–338`, especially “construct the all-prime coefficient identity” and “Construct the remaining nonmaximal-order exact sequence”.

**Claim:** The quadratic zeta factorization, imaginary analytic class-number comparison, and imaginary order-conductor sequence are new constructions owned here.

**Witness:** Main `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:45–49` owns the conductor sequence and order class-number formula; lines 61–67 own quadratic zeta factorization and the imaginary class-number formula with exceptional unit orders.

These are the same objects, not merely similarly named results. The current scope and supplier contracts omit that owner. The new lattice-to-form and genus/density comparisons do not make the underlying field/order theorems new. The main roadmap is an available supplier; its being absent from the open-work merge-order list is immaterial.

**Repair:** Cite ImaginaryQuadraticClassNumber H1.4 and H2.2 in the scope and supplier contracts and consume these results. Retain the genuinely new same-lattice adapters, ordered Euler endpoint, real/narrow regulator extension and the comparison with one genus. Describe precisely how the real extension differs; do not reconstruct the imaginary theory inside a combined target. The existing D=−3, f=2 test then imports residue-unit quotient order 3 and unit index 3, obtaining h(−12)=1. The imported maximal-order formula gives L(1,χ₋₃)=π/(3√3); the new mass adapter still has to prove mass 1/12.

## R03 (P2) — The claimed inverse forgets the finite compact-open coordinate

**Location:** `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass/README.md:155`, “The inverse of the quotient decomposition sends a class and an archimedean coset modulo its finite arithmetic stabilizer to its adelic double coset”.

**Claim:** A proper lattice class and an archimedean stabilizer coset provide an inverse for the decomposition of G(ℚ)\G(𝔸) in line 153.

**Witness:** For G=SO(x²+y²+z²), take k finite-adelic, identity except at 3, with block [[3/5,−4/5],[4/5,3/5]]. The distinct quotient points [(1,1)] and [(1,k)] have the same proposed data.

The block is integral at 3, orthogonal and determinant one: 9/25+16/25=1. If these two points were equal under G(ℚ), their real components would force the rational multiplier to be the identity, contradicting k≠1. They do become equal after the additional right quotient by K_f. The sentence switches between two different quotient spaces; an archimedean coset alone cannot recover the space whose volume is being computed.

**Repair:** For each finite double-coset representative g_i, define Γ_i=G(ℚ)∩g_iK_fg_i⁻¹ and identify the actual piece with Γ_i\(G(ℝ)×g_iK_f), or with Γ_i\(G(ℝ)×K_f) using the explicitly conjugated diagonal action. Separately identify its right-K_f quotient with Γ_i\G(ℝ). State the maps and measure disintegration on these carriers. The two points above remain distinct in the first space and coincide in the second; integration of the retained K_f coordinate produces the product of local volumes in line 153.

## R04 (P3) — Define Cho’s filtration lattice and test the refined types

**Location:** `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass/README.md:412`, “each rescaled constituent (A_i, 2^(−i) q)”; lines 423–426 contain only unary/type-II tests.

**Claim:** The auxiliary lattice definitions and their tests determine the inputs to the special-fibre construction.

**Witness:** Cho2015 line 212 defines A_i using the whole lattice. For L=⟨1⟩⊕⟨2⟩, A₀=L has rank 2, whereas the Jordan constituent L₀ has rank 1. They give dim(B₀/Z₀)=1 and 0 respectively.

A_i is not defined in the README and is called a constituent, although it is a filtration lattice. The three existing density tests never exercise either free even type-I refinement. A wrong definition that identifies Iᵉ₁ with Iᵉ₂ would pass all three.

**Repair:** Define A_i={x∈L : B(x,L)⊆2^iR}, then define X_i, B_i, W_i, Y_i, Z_i on that lattice in Cho’s norm convention q(x)=B(x,x). Give their inclusion/base-change/isometry API as bullets and at least three discriminating Checks for the auxiliary/refined definitions. Include the mixed-scale example above. For free rank-two type-I blocks [[1,1],[1,2]] and [[1,1],[1,0]], the residual q/2 on B/2L has values {0,1} and {0,0}, giving dim(B/Z)=1 and 0: types Iᵉ₁ and Iᵉ₂. A bound type-I block must receive neither refinement. These tests distinguish the actual constructions without changing the correct unary and hyperbolic density values.

## R05 (P3) — Supply the missing comparison and classification locators

**Location:** `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass/README.md:114–121,290–378,511–537`, including “(Conway–Sloane, §9)”.

**Claim:** Every new comparison and theorem has an exact supporting locator or a fully identified deduction from named inputs.

**Witness:** ConwaySloane1988 line 711, §9(iv), printed p.274, refers elsewhere for unimodular mass expressions; it does not state the rank-16/24 classifications, Leech order, or rank-32/40 bounds attributed to §9 here.

The source’s §9 consists of mass examples and a short reference to the mass formulas in SLG, Chapter 16. Its following §10 concerns the small-determinant lists of Part I, including determinant-one ranks only through 18 (ConwaySloane1988 line 785). It does not supply the missing rank-24 order table. Separately, the point/topology comparison at lines 114–119, real order/regulator comparison at lines 319–339 and rational coercivity statement at line 511 have no exact locator. These leave previous R06 partly unresolved.

**Repair:** Replace the §9 citations for the classification/order claims with exact supporting theorem/section and page locators. Mark the rank-32/40 bounds as deductions from the stated mass formula and the displayed exact evaluations: 80618465<2M₃₂<80618466 and 8·10⁵¹<2M₄₀<9·10⁵¹ verify them directly. Attach exact locators to the remaining comparisons, or identify them as deductions from precise supplied statements. For §1.4 import the imaginary results as in R02, and source the remaining real/narrow extension. Preserve D=5 and D=12 as tests of the two distinct unit-sign cases: both give h⁺R⁺=2hR. For the coercivity deduction, identify the positive minimum on a real unit sphere and rational approximation input; G=diag(1,2) then admits c=1. Unreadable sources may remain explicitly uncertified; do not invent their contents.

## Verified sound

This was a full review of both files, including unchanged passages. The five findings comprise one P1, two P2 and two P3 findings. The defects are local and repairable; the overall orthogonal mass programme is a named successor of the existing lattice and point-group work, so the verdict is not rejection of its scope.

### Previous findings, checked first against this head

| Previous finding | Passage at this head | Disposition |
| --- | --- | --- |
| R01, rank-zero Spin mismatch | README:96: “for n = 0 define it separately as the trivial group, with trivial projection kernel” | Repaired. The unrestricted normalizer has 2 points; the separate native branch has 1. |
| R02, missing class-count headlines | Suggested.lean:114,118,122,126: `rank16_classNumber`, `rank24_classNumber`, `rank32_classNumber_lower_bound`, `rank40_classNumber_lower_bound` | Repaired. All four are unconditional statements on the actual class set. The docstring also names approximation/Eichler and binary omissions. |
| R03, unspecified arbitrary-genus formula | README:191: `m_full(gen L) = 2 R_n (det B)^((n+1)/2) product_p beta_p(L)^(-1)` | Repaired as a numerical specification. Sections 1.2 and 2.3 specify the normalization, bad set and convergence. The inverse-map defect R03 above is separate. |
| R04, re-planned exhaustion | README:513: “Transport IntegralLattices §9B's completeness implication” | Repaired. `complete_of_mass_eq` is gone; native finiteness and supplied exhaustion are inputs. |
| R05, executable enumeration | README:511: “These are boundedness and isometry comparisons” | Repaired. The candidate-generation/certificate programme has been replaced by mathematical bounds and group actions. |
| R06, sources and locators | README:562: “§2, p.3, and Theorem 3.1, p.4”; README:565: “the source text is uncertified” | Partly repaired. Cho, Belolipetsky–Gan and the Conway–Sloane formula locators now resolve. R05 above identifies remaining missing locators. No source manifest exists; see limitations below. |
| R07, roadmap shape | README:20,56,58 and the five Examples/Dependencies endings | Substantially repaired: required major sections and direct Needs lines are present. Definition-level API/check completeness remains incomplete in §2.2, R04 above. |
| R08, Lean padding | Suggested.lean now contains the general mass theorem and four class-count theorems | Repaired. All four named padding declarations are absent. |
| R09, names/docstrings/layers | Suggested.lean:37,90,111 supply layer comments; all 17 declarations have docstrings and README mentions | Repaired. All 17 signatures were independently printed and compared. |
| R10, Bernoulli range | README:489: “compute B_2,B_4,…,B_38” | Repaired. Largest required indices are 22, 30 and 38 in ranks 24, 32 and 40. |

No supplied response marks any of these ten findings “not actionable in this package”. The older gate report says manifest editing was outside that job’s allowed files. I have not treated that editing restriction as a new mathematical defect or modified a manifest.

### Gate, build and acceptance-test coverage

Head was independently confirmed as `a0c4f518575c4e3718eea9c62226347deacf3a17`. The diff outside `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass` is empty; the worktree remains clean. The worker’s gate records every scanner, dependency and targeted-build check as zero, ending `OK`.

Independent dependency-check output:

```text
depcheck: 204 roadmaps, 1457 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line appeared. I read every Needs line as well; the mechanically clean graph does not detect the characteristic-two prerequisite error in R01. No supplier gaps are declared.

Independent `lake env lean` elaboration succeeded with exactly five `declaration uses sorry` warnings and no other diagnostics. A separate scratch copy appended `#check @name` for **all 17 declarations**; it elaborated successfully. The five theorem types exactly retain n>0 and 8∣n where required and the native class carriers in the four count conclusions. No section binder was lost and no signature repair is requested. No repository file was edited.

One scratch copy replaced each of the **five** admissions by one `simp`. None closed: the mass theorem made no progress, and the other four left the respective class-cardinality equality/inequality. Reading the definitions and pinned declarations also gives no rfl, instance or single-library-lemma proof of these results. The fixed-rank statements are classifications and genuine class-number lower bounds, not fixed Bernoulli computations. The 12 definitions/abbreviations are actual finite-matrix, quotient, native-lattice and rational-sum constructions needed to state them; there is no admitted data, arbitrary Prop field, option override, or alternative lattice carrier.

The README headline inventory is: arbitrary-form algebraic Spin structure and comparisons; away-S approximation and Eichler; proper adelic/gauge comparison and arbitrary-genus mass; binary analytic/order/genus normalization; Cho’s smooth model, special fibre and density; even-unimodular mass; rank-16 and rank-24 classification; rank-32 and rank-40 lower bounds. The **five statable acceptance headlines** are present. The docstring names the other six groups and the absent comparison/model carriers. Split type-B/D scheme carriers do exist at the pin, and the revised docstring correctly limits its absence claim to a scheme attached to an arbitrary form. It does not replace the missing arithmetic comparisons with theorems on unrelated scalars.

### Seeded source sample

All **15 named seeded targets** were checked, plus §2.2 and the remaining binary subtargets. Legal source texts were obtained through the sources service. References below use the line numbering of its extraction; printed pages are those of the version actually read. No assertion of published/preprint numbering agreement is made for an unread published text.

| Sample target | Locator actually checked and result |
| --- | --- |
| 0.0 Small Gram presentation | IntegralLattices §§0A–0E, main README:507–559; native `ofGramMatrix`, Basic.lean:261, and Isometry/Basic.lean:74. The specialization to the fixed small Gram carrier is consistent. The cited §§0B/0E concern parity/definiteness; §0C is the more precise Gram/basis locator. |
| 0.1 Algebraic orthogonal and Spin groups | Milne2022 line 22082 through line 22137, §24i, printed pp.535–536: regular forms, characteristic not two, Clifford-normalizer construction and central cover. The n≥3 guard correctly prevents applying the source’s unqualified derived-group sentence to the binary torus. Low-rank and rank-four claims were also checked against the point-group supplier and explicit models below. |
| 0.2 Point, topology and stabilizer comparisons | OrthogonalSpinGroups §3A, main Completed README:774–783, assigns this construction here; its Layers 2–3 and IntegralLattices §4B:1293–1307 supply the point topology and lattice dictionary. This resolves ownership, not primary-source certification of the new combined comparison. R05. |
| 0.3 Approximation and Eichler | AdelicAlgebraicGroups AA.4.2:4440–4453 supplies semisimple simply-connected strong approximation with the factorwise noncompactness hypothesis. IntegralLattices §4D:1359 names the proper-class conclusion. O’Meara 104:4–5 could not be read legally; uncertified. |
| 1.1 Proper adelic quotient | BelolipetskyGan line 68 through line 99, §2, printed pp.2–3: dimension ≥3, SO double cosets, arithmetic stabilizers and the definite mass integral. The source supports the volume route, not omission of K_f from a parametrization of the unquotiented adelic space. R03. |
| 1.2 Gauge and local-density transport | BelolipetskyGan line 103 through line 120, §2, p.3, gives split/compact gauge constants. GeometryOfNumbersAndQuadraticArithmetic §3.3 gives the named pinned and global gauge comparisons. ConwaySloane1988 line 186, equations (2),(3), printed p.263, and line 329, equation (6), p.266, were read, with the formulas visually checked. Its §12, line 1092, p.281, gives m_p=p^(s(n+1)/2)/α_p. Together with α_p=2β_p these yield the displayed determinant and factor-of-two normalization. |
| 1.3 Arbitrary-genus mass identity | Shared `orthogonalTamagawa_two`, GeometryOfNumbersAndQuadraticArithmetic README:1128, applies over number fields in rank ≥3. ConwaySloane1988 line 189, equation (2), p.263, states the mass formula for positive-definite n≥2; §12, line 1092, p.281, gives the density conversion. Its three calibrations were recomputed independently. The paper explicitly gives no proof of its mass formula (§13, line 1114); the roadmap must retain its named adelic and local-model proof inputs. |
| 1.4 Binary quadratic analytic normalization | Native character, residue, conductor and order maps were opened at the pins; TauberianBoundaryConvergence N2/N3:52–127 matches the ordered limit. ImaginaryQuadraticClassNumber H1.4/H2.2 already owns part of the claimed work, R02. The new real/narrow comparison has no primary locator, R05. |
| 2.1 Smooth integral model | Cho2015 line 90 through line 95 (§2.1, p.3) and line 744 (Theorem 3.7, p.15): unramified finite extension of ℚ₂, integral half-polar bilinear form, nondegenerate generic fibre; smooth model and agreement on étale algebras. Retain the source norm q=B(x,x), distinct from the README half-norm Q. |
| 2.3 Numerical arbitrary-genus formula | Cho2015 line 1249, Theorem 5.2, p.25 supports the dyadic local factor, not the entire global formula. IntegralLattices §7C:1765–1815 supplies the good factors and convergence regimes. ConwaySloane1988 equations (2),(3), p.263, equation (6), p.266, and §12, p.281 were verified at line 186, line 329 and line 1092. The determinant factor and full-density convention agree after conversion; independent numerical checks are below. |
| 3.1 Mass and Bernoulli product | BelolipetskyGan line 163, Theorem 3.1, p.4, retains the parahoric hypothesis; line 451, §5, p.11 supplies λ_even=1. Its mass is proper SO mass; division by two uses IntegralLattices §7A. Exact Bernoulli products agree with the stated full mass. |
| 3.2 Exact Bernoulli evaluations | Mathlib/NumberTheory/Bernoulli.lean:194,204,223,268: native sign convention, recurrence and generating function. Recurrence was independently evaluated through B₃₈, without floating-point arithmetic. |
| 4.1 Bounds and rank-16 classification | Native definite-isometry finiteness and IntegralLattices §§6D/6G/9B were opened. Both order formulas and their exact reciprocal sum were recomputed. ConwaySloane1988 §9(iv), line 711, p.274 does not state the claimed classification or orders; the coercivity deduction also needs a locator, R05. |
| 4.2 Rank-24 classification | IntegralLattices §6E:1668–1674 supplies exactly 24 pairwise distinct reference lattices, not exhaustiveness; §9B supplies the exhaustion implication. ConwaySloane1988 §9 does not contain the claimed classification, Leech order or the 24-order table. The specified locator therefore does not certify them, R05. |
| 4.3 Class-count lower bounds | IntegralLattices §§2C/2G provides finiteness; the weight inequality was checked including rank zero. Exact arithmetic gives the stated strict rank-32/40 bounds. ConwaySloane1988 §9 was read and does not state these bounds. They are verified deductions from the mass product, so cite the inputs as deductions, R05. |

Additional source inspection: Cho2015 line 212 (A_i), line 240 (Remark 2.6), line 252 (free even refinements), line 755 (§4.1), line 883 (Lemma 4.2), line 889 (Remark 4.3), line 1191 (Theorem 4.12), line 1223 (Lemma 5.1) and line 1249 (Theorem 5.2). These support the component exponents, the full reduced orthogonal factors, connected unipotent kernel and the f^(N−dim O) point-count formula. The source does not justify importing characteristic-two groups from a characteristic-not-two construction.

### Computed adversarial pass

The following **94 rows** record explicit finite-instance and structural checks, not proofs of the general theorems. Rows marked “source-only” or “partial” do not certify an uncomputed classification. For each grouped API, the individual rows distinguish construction, transport and numerical consequences. The source/carrier limitations above remain material.

| Statement / convention | Instances and values computed on each side | Result / change |
| --- | --- | --- |
| Conventions: B versus half-norm Q | B=[2], x=1: B(x,x)=2 and 2Q(x)=2; B=[1]: Q(1)=1/2 is not integral. | Agrees; do not use half-norm as Cho’s q. |
| Fixed Gram universe and positivity | Rank 0: the only vector is 0, positivity has no nonzero test, determinant=1; rank 1: [1] and [2] give values 1 and 2 at 1, [0] gives 0. | Correct acceptance/nonacceptance. |
| Native Gram lattice | Standard rank-one basis gives carrier ℤ⊂ℚ and norm 1 for [1], 2 for [2]; neither changes carrier to all ℚ. | Matches native constructor. |
| Gram equivalence in both directions | GL₁(ℤ)={±1}, a²=1: [1]~[1], [2]~[2], but [1]≁[2]. Over ℚ, [1]~[4] via 2; det 2 is not an integral unit. | Integral condition essential. |
| Gram basis transport | G=diag(1,2), A=[[1,1],[0,1]]: det A=1, AᵀGA=[[1,1],[1,3]], determinant=2 on both sides. | Same native isometry class. |
| Setoid inverse/composition | A⁻¹=[[1,−1],[0,1]]; A⁻¹A=I; applying A twice gives [[1,2],[0,1]], transformed Gram [[1,2],[2,6]]. | Reflexive/symmetric/transitive proof elaborates. |
| Class map | G and AᵀGA have one quotient class; G and diag(2,1)ᵀGdiag(2,1)=diag(4,2) have determinants 2 and 8. | Nonunit change is excluded. |
| Full automorphism order | Empty matrix: 1; [1],[2]: 2 each; diag(1,2): 4 diagonal sign matrices, proper subgroup 2. | Correct full rather than proper weight. |
| Representative-independent order | diag(1,2) and [[1,1],[1,3]] both have 4 automorphisms by conjugation; reciprocal weights both 1/4. | Choice of representative harmless. |
| O/SO scheme-point convention | C=diag(1,4), M=[[0,1/2],[2,0]]: MCMᵀ=C; MᵀCM=diag(16,1/4). M⁻ᵀ=[[0,2],[1/2,0]] preserves C in column convention. | Correct inverse-transpose direction. |
| Comparison is multiplicative | For invertible M,N, (MN)⁻ᵀ=M⁻ᵀN⁻ᵀ. For diagonal reflection M, det M=det M⁻ᵀ=−1. | No opposite-group or SO-only substitution. |
| O/SO low ranks | Rank 0: both orders 1. Rank 1 over ℚ: O={±1}, SO={1}, orders 2 and 1. | Correct boundary split. |
| Spin rank zero | Clifford even algebra ℚ: norm-one scalars ±1, order 2; generated native Spin from no invertible vectors: order 1. | Separate branch repairs prior R01. |
| Spin rank one | Nonzero vector v yields scalar −1 as (−v)v⁻¹; even norm-one scalars are ±1. Kernel order 2, SO order 1. | Positive-rank kernel correct. |
| Binary Spin torus | Q=x²+y²: (e₁e₂)²=−1; norm((3+4i)/5)=(9+16)/25=1; torus dimension=1. | Excluded from semisimple branch. |
| Nonabelian Spin multiplication | Hamilton i²=j²=−1, ij=k, ji=−k. Q₈ maps to diagonal rotations of order 4 with kernel order 2. | Cover retains noncommutativity. |
| Spin dimensions and root types | n=3,4,6 give 3,6,15; dimensions SL₂, SL₂×SL₂, SL₄ are 3,6,15. | Low-rank comparisons consistent. |
| Rank-four factor convention | Four squares: signed determinant 1, centre ℚ×ℚ, 2 quaternion factors. diag(1,1,1,2): signed determinant 2, centre ℚ(√2), 1 ℚ-simple factor. | Correct factor count, not absolute simplicity in the second case. |
| Central cover versus rational surjectivity | Reflections in e₁ and e₁+e₂ give spinor norm 1·2=2; class of 2≠1 in ℚ×/ℚ×². | Not in rational Spin image. |
| Simply connected guard | Split SO₃=PGL₂ has cover SL₂ with geometric kernel {±I}, order 2; kernel for n=0 branch has order 1. | SO is not declared simply connected. |
| Local stabilizer comparison | C=[2], p=3: K={±1}, K⁺={1}, index=2. | Volume ratio 2 persists under point transport. |
| Finite-reference change | Replacing one local subgroup K₃ by index-2 subgroup changes the local volume by 1/2; references outside {3} are identical. | Requires finite-change comparison, not equality of subgroups. |
| Strong approximation hypotheses | Split Spin₃=SL₂ has a real unipotent [[1,t],[0,1]] for unbounded t. Positive ternary Spin is compact at ∞. | First meets S={∞}; second fails hypothesis. |
| Factorwise approximation | H₁×H₂ with one compact S-product and one noncompact S-product: 1 failing factor out of 2. | Noncompactness of the whole product is insufficient. |
| Eichler scope | Indefinite split rank 3 has a hyperbolic plane; positive ternary has signature (3,0), not (2,1). | Only indefinite rank≥3 receives class=spinor-genus conclusion; no numerical enumeration claimed. |
| Full/proper masses, nonsplit class | Orders O=12, SO=6: weights 1/12 and 1/6, ratio 2. | Matches supplied §7A. |
| Full/proper masses, splitting class | O=SO of order 2: full weight 1/2; two proper classes contribute 1/2+1/2=1. | Ratio 2 without an improper integral automorphism. |
| Quotient parametrization | SO₃ and k supported at 3 as R03: [(1,1)]≠[(1,k)] but both yield class i and real coset [1]. | Fails claimed inverse; retain K_f coordinate. |
| Zero-rank quotient | Group, arithmetic stabilizer and class set have size 1; both masses=1, not 2. | Positive-rank factor cannot extend. |
| Real gauge constants | V₃=2π·4π=8π²; s₃=1/2, volume=4π². V₄=8π²·2π²=16π⁴; s₄=1. | Matches Belolipetsky–Gan factorial constants. |
| Gauge product and mass, I₃ | β₂=6, good inverse product ζ^(2)(2)=π²/8, 2R₃=1/π²: mass=1/48. Then v∞∏v_p=48 and τ/(2·48)=1/48. | Consistent normalization; β₂ here is a formula specialization, not a fresh 3×3 exhaustive count. |
| Integral rescaling | n=2, t=2: D↦4D, D^(3/2)↦8D^(3/2); β₂↦8β₂. n=3: both scale by 2⁶. | Global cancellation correct. |
| Local component reflection | U and v=(1,1): B(v,v)=2; reflection [[0,−1],[−1,0]] has determinant −1 and is integral. | Unit-norm restriction would be wrong. |
| General mass, A₂ | β₂=6, β₃=6, D=3: (2/π)·3√3·(1/36)·π/(2√3)=1/12. | Matches full automorphism weight 1/12. |
| General mass, discriminant −23 | β₂=2, β₂₃=46, D=23: (2/π)·23√23·(1/92)·3π/(2√23)=3/4. | Matches weights 1/4+1/2. |
| General mass, E₈ | β₂=42525/256; inverse Euler product=2⁻⁸ζ(2)ζ(4)²ζ(6). Multiply by 135/(8π¹⁶): 1/696729600. | Dyadic 2⁸ indispensable. |
| Density formula rank guard | n=0 Bernoulli expression gives 0/0=0 in ℚ; actual empty mass=1. n=1 elementary mass=1/2. | Correct separate branches. |
| Binary norm-content adapter | A₂ norm coefficients (2,−2,2), gcd 2 → (1,−1,1), Δ=1−4=−3. Half-norm gcd 1 gives same Δ. | Both directions agree. |
| Odd binary half-norm rejection | diag(1,1): norm form (1,0,1), Δ=−4; Q(1,0)=1/2. | Half-norm not integral. |
| Content and order conductor | [[4,1],[1,6]]: g=2, Δ=−4·23/4=−23, f=1. Doubling B: g=4, det=92, Δ=−368/16=−23. | Content changes; order does not. |
| Primitive polar matrix | A₂: B/g has half-integral off-diagonals; 2B/g=B is integral. | Correct polynomial/polar distinction. |
| Signed character and nonsplit condition | D=−3: level 3, χ(−1)=−1. D=5: level 5, χ(−1)=1. D=1: level 1, trivial character. | Nontriviality and level hypotheses retained. |
| Endpoint finite deletion | χ₋₃(2)=−1 ⇒ factor 3/2; χ₋₄(2)=0 ⇒ factor 1; χ₋₂₃(2)=1 ⇒ factor 1/2. | Multiplication, not division, by deleted factors. |
| Coefficient factorization, n=1 | One unit ideal, divisor sum χ(1)=1. | No zero ideal added to positive norm fibre. |
| Coefficient factorization, prime powers | Split p: #ideals norm p^k=k+1=Σ_{j=0}^k1. Inert p: 1 for even k, 0 for odd k, equal to Σ(−1)^j. Ramified p: 1=1+0+⋯+0. | All three splitting regimes retained. |
| Zeta factorization at one prime | Split: (1−T)⁻², coefficients 1,2,3. Inert: (1−T²)⁻¹, coefficients 1,0,1. Ramified: (1−T)⁻¹, coefficients 1,1,1. | Matches ζ·L; imaginary ownership R02. |
| Imaginary residue constants | D=−3,h=1,w=6: 2π/(6√3)=π/(3√3). D=−23,h=3,w=2: 6π/(2√23)=3π/√23. | Correct w, regulator=1. |
| Real/narrow regulator, D=5 | ε=(1+√5)/2, Nε=−1; η=ε², R⁺=2R, h⁺=h=1 ⇒ h⁺R⁺=2hR=2R. | Correct ordinary/narrow distinction. |
| Real/narrow regulator, D=12 | ε=2+√3, Nε=1; conjugate 2−√3>0; R⁺=R, h⁺=2h=2 ⇒ both products=2R. | Correct second branch. |
| Regulator embedding change | η and η⁻¹ have logarithms R⁺ and −R⁺; choosing the >1 generator at the other embedding restores R⁺. | No least positive unit assertion. |
| Order sequence, f=1 | Both residue rings are zero rings with one-element unit groups; quotient order=1; Pic map identity; unit index=1. | Boundary exact sequence consistent. |
| Order unit quotient | For p=2,e=1: split gives 2(1−1/2)=1, inert gives 2(1+1/2)=3, ramified gives 2. | Dyadic cases differ. |
| Exceptional units in order formula | D=−3,f=2: quotient order 3, unit index 3, h_f=1·3/3=1, Δ=−12. | Omitting unit index gives false 3. |
| Order discriminant scaling | D=−3,f=2: f²D=−12; D=−4,f=2: f²D=−16. | Fundamental and order discriminants not interchanged. |
| Genus/full-class conversion | Δ=−23: proper classes 3, ambiguous 1, full classes (3+1)/2=2; mass=1/4+1/2=3/4=3/(2·2·1). | Proper count, not full count, enters formula. |
| Split binary Euler branch | Finite products for primes ≤2,3,5: 2,3,15/4. Finite Euler expansion includes harmonic terms; limiting product diverges. | Trivial character excluded from nonzero endpoint. |
| Smooth-model rank zero | Dimension 0, one residue point, one integral automorphism. | No division by 2. |
| Smooth-model unary special fibre | Smooth model for ⟨1⟩ has 2 F₂ points; naive x²=1 has just x=1, one point. | Equal integral points do not identify special fibres. |
| Smooth congruence kernels | f=4,n=2 gives f^(n(n−1)/2)=4; n=1 gives f⁰=1. | Residue cardinal, not always 2. |
| A_i is not L_i | L=diag(1,2): A₀=L, rank 2; L₀ rank 1. A₁=2ℤ₂e₁⊕ℤ₂e₂, rank 2. | R04: define filtration before auxiliaries. |
| Auxiliary X,B,W,Y,Z, unary | ⟨1⟩: X=B=Y=Z=2L, W=L; B/Z=0, dim 0. | Baseline calculation, no refinement of Iᵒ. |
| Auxiliary X,B,W,Y,Z, U | U: X=2L, B=L, W=2L, Y=Z=2L, B/Z=F₂² with q̄=xy. | Full quadratic group has 2 points; polar stabilizer 6, R01. |
| Free Iᵉ refinement | [[1,1],[1,2]]: dim B/Z=1; [[1,1],[1,0]]: dim B/Z=0. | Iᵉ₁ versus Iᵉ₂; add checks, R04. |
| Bound constituent distinction | diag(1,2): both nonzero constituents are bound; B₀/Z₀ has dimension 1 although isolated ⟨1⟩ gives 0. | No free-Iᵉ refinement assigned to bound blocks. |
| Component exponent includes zero constituent | ⟨1⟩ at i=0: L₂=0 type II, β_Cho=1; omitting empty L₂ gives β_Cho=0. | Component counts 2 versus wrong 1. |
| Cho exponent N | ⟨1⟩: N=1; ⟨2⟩: N=2; U: c=2,N=2; U⁴: c=8,N=8. | Type-II c term retained. |
| Unary dyadic stabilization | ⟨1⟩ modulo 8,16,32: 4,4,4 solutions. ⟨2⟩: 4,8,8 solutions. | Stabilized α₂=4,8; do not use a premature cutoff. |
| U bilinear density | Modulo 8 and 16: 32 and 64 matrices; divide by 8,16 gives α₂=4 both times. Cho: 2^(2−1)·2=4. | Agrees. |
| A₂ dyadic density | Modulo 8 and 16: 96 and 192 matrices; α₂=12 both times, β₂=6. | Agrees with binary mass calibration. |
| −23 dyadic density | Gram [[4,1],[1,6]], modulo 8 and 16: 32 and 64 matrices; α₂=4, β₂=2. | Agrees. |
| Odd bad-prime density | diag(1,3) modulo 9: 108 matrices, α₃=12, β₃=6. diag(1,23) modulo 529: 48668 matrices, α₂₃=92, β₂₃=46. | Matches rank-two Jordan factors. |
| Connected-component error | U: full O₂⁺(F₂) order 2, SO identity-component points order 1; corresponding α₂ values 4 and 2. | README correctly retains full reduced group. |
| Unipotent point count | Additive k-space dimension 0: 1 point; dimension 1 over F₄: 4 points. Product with constant C₂ gives 2 and 8. | Formula #G=#U·#quotient has correct dimension/component factors. |
| Good-prime sign | U at p=3: raw determinant −1 nonsquare, signed determinant 1 square, #O=4; α₃=4/3, β₃=2/3. Wrong sign gives β₃=4/3. | Signed determinant essential. |
| Good-prime convergence | n=3: β_p=1−p⁻² (at 3: 8/9). Split n=4: β_p=(1−p⁻²)² (at 3: 64/81). | Exponents ≥2; rank-two exponent 1 requires separate ordered theorem. |
| Even/unimodular predicates | Rank 1 [1]: odd, unimodular; [2]: even, determinant 2, nonunimodular. Empty matrix: even and determinant 1. | Correct set membership. |
| Rank-eight predicate discrimination | E₈: even, determinant 1, weight 1/696729600. I₈: determinant 1 but norm e₁=1, excluded. | Determinant alone insufficient. |
| Mass finite-sum transport | Empty rank-zero class set presentation has one class of weight 1; finite two-weight set {1/4,1/2} sums to 3/4 regardless of order. | Native finiteness is needed before interpreting rational tsum. |
| One-genus input | Even unimodular rank 8 has trivial discriminant group and signature 8; E₈² and D₁₆⁺ have trivial discriminant group and signature 16. | Supplier local/genus data agree; isometry classes need not coincide. |
| Bernoulli sign convention | B₀+2B₁=1−1=0; using B₁=+1/2 yields 2. B₄=−1/30. | Correct native convention. |
| Bernoulli product boundary | m=0: totalized B₀/0=0, empty finite product=1, result 0; true zero-rank mass=1. | hn excludes it. |
| Mass headline at rank 8 | (1/240)(1/24)(1/240)(1/504)=1/696729600. | Matches imported E₈ order. |
| Mass headline at rank 16 | Product=691/277667181515243520000; proper mass is twice this. | Correct full-O normalization. |
| Mass headline at rank 24 | Product=1027637932586061520960267/129477933340026851560636148613120000000. | Exact product computed; full 24-order sum not independently certified. |
| Bernoulli evaluation range | m=12,16,20: largest 2j=22,30,38. B₃₈=2929993913841559/6. | Correct extended range. |
| Coercivity / column bound | G=diag(1,2), c=1: x²+y²≤x²+2y²; columns obey squares ≤1,2; preserving integral matrices are four diagonal signs. | Correct; locator repair R05. |
| Determinant constraint | det(AᵀGA)=det A²·det G; det G=2 gives det A²=1. Rank-zero determinant is 1. | Nondegeneracy excludes arbitrary determinant. |
| Rank-16 orders and exhaustion | 2·696729600²=970864271032320000; 2¹⁵·16!=685597979049984000; reciprocal sum equals M₁₆ exactly. | Two distinct supplied representatives exhaust via §9B. |
| Rank-24 distinctness versus list length | Repeating one of 24 representatives yields at most 23 distinct classes, not 24. | Injectivity hypothesis essential. |
| Leech root-action control | Root set empty ⇒ permutation group order 1; claimed full order=8315553613086720000, reciprocal as written. Modding out by ±1 halves order and doubles weight. | Empty roots cannot prove order. Numerical primary certification remains open. |
| Class-number inequality | Positive rank: each weight≤1/2, so two weights 1/4 and 1/2 give 2M=3/2≤h=2. Rank 0: 2M=2>h=1. | hn essential. |
| Rank-32 count bound | Exact floor(2M₃₂)=80618465; 80618465<2M₃₂<80618466 and 10⁷<80618465. | h₃₂≥2M₃₂ gives the stated strict bound. |
| Rank-40 count bound | Exact floor(2M₄₀)=8786162893954707795924443121224722752459224292177832; between 8·10⁵¹ and 9·10⁵¹. | h₄₀≥2M₄₀>10⁵¹. |
| Excluded general central-isogeny shortcut | Squaring on ℚ×: independent prime square classes give infinitely many cokernel elements; kernel still has order 2. | Finite kernel cannot replace a volume comparison. |

### Pinned declarations and ownership audit

Pins were checked by both manifest and package git heads: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **16 inventory rows** record opened definitions/statements, rather than name-only search hits. Library paths are relative to the respective pinned repositories.

| Pinned file and line | Opened declaration / relevant contract |
| --- | --- |
| `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63,261` | `IntegralLattice`, `ofGramMatrix`: full finitely generated ℤ-submodule, rational symmetric form, integral values. Neither positivity nor nondegeneracy is a structure field. The Gram subtype supplies positivity. |
| `TauCeti/LinearAlgebra/IntegralLattice/Isometry/Basic.lean:74`; `Isometry/Group.lean:59` | `IntegralLattice.Isometry` and the actual self-isometry group. |
| `TauCeti/LinearAlgebra/IntegralLattice/PosDef/Finite.lean:126,140` | `finite_isometry_of_forall_finite_vectorsOfNorm`, `IsPosDef.finite_isometry`; definiteness is needed, not silently inferred from IntegralLattice. |
| `TauCeti/LinearAlgebra/IntegralLattice/Even.lean:67`; `Unimodular.lean:58` | `IsEven` tests even integral norms; `IsUnimodular` is equality with the dual carrier. |
| `Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean:61,153,292` | `lipschitzGroup` is generated by invertible embedded vectors; `pinGroup` intersects with unitary; `spinGroup` further intersects with the even subalgebra. |
| `TauCeti/Algebra/AlgebraicGroup/ConstantForm/Basic.lean:445` | `mem_definingPointsSubgroup_iff`: M C Mᵀ=C, a bilinear matrix equation. |
| `TauCeti/Algebra/AlgebraicGroup/SpecialOrthogonal/Smooth.lean:103`; `Reductive.lean:149` | Standard-form smoothness needs invertible 2; reductivity needs a field with nonzero 2. These do not supply characteristic-two quadratic orthogonal groups. |
| `TauCeti/Algebra/Lie/Orthogonal/TypeB/SpinCarrier/Basic.lean:429`; `TypeD/SpinCarrier/Basic.lean:295` | The split integral Spin carriers exist; type D carries 4≤n. They are not arbitrary-form Clifford scheme comparisons. |
| `Mathlib/NumberTheory/Bernoulli.lean:194,204,223,268` | `bernoulli`, `bernoulli_one`, `sum_bernoulli`, `bernoulliPowerSeries_mul_exp_sub_one`. These are consumed; no replacement Bernoulli theory is needed. |
| `TauCeti/NumberTheory/Multiquadratic/FundamentalDiscriminant/Character.lean:34,60,68,87,95` | Fundamental character, value at −1, quadraticity, primitivity and odd-prime Legendre evaluation. The odd-prime theorem explicitly excludes 2. |
| `TauCeti/NumberTheory/DirichletCharacter/Conductor.lean:50,58` | `conductor_ringHomComp`, `isPrimitive_ringHomComp_iff`; positive level and injective coefficient map retained. These are Tau Ceti additions in the native namespace. |
| `TauCeti/NumberTheory/Multiquadratic/Quadratic/Discriminant.lean:50,82` | Field-discriminant comparisons require squarefree radicand and actual generator/minpoly/adjoin data, or a square root with rational nonsquareness. |
| `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean:97,149`; `Nonvanishing.lean:397` | Continuation, `LFunction_changeLevel` and whole-closed-half-plane nonvanishing; nonzero levels and χ≠1 or s≠1 are retained. |
| `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:56,77`; `LSeries/RiemannZeta.lean:241` | Native residue constant, right-hand Dedekind residue and zeta residue one. They do not themselves prove ordered prime convergence. |
| `TauCeti/NumberTheory/NumberField/Global/Orders/AwayConductor.lean:116`; `Discriminant.lean:107`; `NarrowPic.lean:162` | Nonzero conductor-coprime ideal equivalence, discriminant/index identity and narrow-to-wide Picard map. |
| `TauCeti/NumberTheory/Multiquadratic/Quadratic/GenusCharacter/PrincipalGenus.lean:150` | Maximal-field narrow principal-genus equivalence with squarefree generator and prime-discriminant data; not an arbitrary nonmaximal-order theorem. |

The generic central-isogeny definitions and descent statements were also located in the pinned Hopf/group-scheme modules; no claim of a general isogeny Tamagawa-volume theorem was inferred from them.

Every cross-roadmap supplier family was resolved against main or its available new-roadmap head. Main existing-roadmap revisions were not substituted as suppliers. Three main roadmap shapes read for comparison were IntegralLattices, TauberianBoundaryConvergence and ImaginaryQuadraticClassNumber. The meaningful ownership and dependency conclusions are:

| Supplier | Sections resolved and boundary checked |
| --- | --- |
| IntegralLattices, main | §§0A–0E; 2C/2G; 3C/3E/3I; 4B/4C/4D; 5A; 6C–6E and 6G; 7A/7C/7E/7G; B1–B4/B7/B8; 9B. The existing 7H/7I moved-out entries assign the general mass and classifications to this successor, not to an earlier proof of those conclusions. Local counts are usable without the later global endpoint. |
| OrthogonalSpinGroups, main `Completed/OrthogonalSpinGroups/README.md` | Layers 0–3 and §3A: point groups, local topology, references and rational diagonals; affine arbitrary-form scheme/topology comparisons assigned here. This is the proper justification for ownership of Layer 0. |
| ReductiveGroups, main | Layers 6 and 8: radicals, central isogenies, simply connected forms, root-data classification, base change and descent. They support a new arbitrary-form instance rather than a second generic theory. |
| AdelicAlgebraicGroups, available new-roadmap head | AA.1–4, specifically the concrete point/reference maps, AA.2 quotient integration, AA.2.4 normalized gauge product, and AA.4.2 factorwise strong approximation. Squaring/nonopen-image example occurs in AA.1.3 and is repeated in AA.1.4; the reference resolves. |
| GeometryOfNumbersAndQuadraticArithmetic, available new-roadmap head | §§2.4/3.3: named τ(SO)=2 and gauge contracts in rank≥3, proper mass identity, maximal-model restriction. General dyadic factors remain new here. |
| GlobalNumberFields, main `Completed/GlobalNumberFields/README.md` | Layer 9: conductor/parity-compatible Hecke–Dirichlet dictionary; Layer 11 and pinned order maps supply the order/Picard substrate. |
| TauberianBoundaryConvergence, main | N2/N3: ordered endpoint, finite deletion and level transport. It owns no quadratic field/order/genus comparison. |
| RootSystems, main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md` | Layers 5–6: classification and integral root data; these do not provide a table of lattice automorphism orders. IntegralLattices §6G supplies the E₈ order used in the rank-16 argument and should be added explicitly to that Needs list. |
| EndoscopicTransferAndUnitaryTraceComparison, available new-roadmap head | §6.5: scoped Kottwitz relative ratios, consistent with the exclusion of a general central-isogeny defect theory here. This is a boundary citation, not a new premise of the mass proof. |
| ImaginaryQuadraticClassNumber, main | H1.4 and H2.2 overlap the imaginary part of §1.4; R02 requires importing them. |

Ownership searches used `roadmaps grep` by objects—Spin schemes, orthogonal gauges, smooth models, conductor sequences, quadratic zeta factorization—and read the returned relevant sections. Main and the supplied open-head corpus were searched, together with board package README/Lean files. Exact-name searches found no other declaration in the local acceptance namespace. The open IntegralLattices revision’s extra constructions were not imported: that folder already exists on main. No whole-roadmap replanning, route-specific good-prime restriction, new executable algorithm, or upward/cyclic supplier was found. The one ownership overlap is R02. The broad library programme is preserved, including all bad primes, nonmaximal orders and the separate low ranks.

## Not verifiable

- **O’Meara, 104:4–5:** the sources-service citation search found no legal text. The publisher lists the book, but no accessible text of these sections was obtained. The roadmap marks it uncertified. Strong approximation was checked against the actual AA.4.2 contract; this does not certify the book’s precise numbering/page or the complete Eichler proof.
- **Classification order table:** the Conway–Sloane formula paper was obtained through the sources service from the [author’s copy](https://neilsloane.com/doc/Me150.pdf), following failed DOI and CiteSeer attempts. Its equations and §9 are verified above. That section does not contain the 24 automorphism-order proofs or classification being cited. Those claims need the actual primary locator; their certification remains incomplete for that reason, not because this paper is inaccessible.
- **New comparison locators:** §0.2 and the new real/order portions of §1.4 lack exact primary locators, as detailed in R05. Source access cannot resolve an unspecified locator.
- **Manifest:** this head contains no `sources.toml`. The earlier gate-response note says manifest changes were outside that repair’s permitted files. This read-only review did not create or edit it. Fetch metadata and missing-source requests were retained in review scratch; nothing was copied into the roadmap folder.
- **Classification scope of the numerical audit:** the rank-16 two-term reciprocal sum and rank-32/40 exact inequalities were computed. The rank-24 Bernoulli mass was computed, but not a primary-source-certified 24-term order table. I did not claim to have proved the classification from the 24 reference-lattice names alone.

## Source issues

- **Error** in Milne2022 at Proposition 24.58(b), printed p.534 (line 22060): the source says no odd Clifford element centralizes the even algebra; it should be restricted to even dimension, since the odd-dimensional volume element is central; affects nothing.
- **Error** in Milne2022 at §24i, printed p.536 (line 22129): the source says Spin equals the derived group without a rank guard; it should be restricted to rank at least three, since binary GSpin is commutative and binary Spin is a torus; affects nothing.
- **Misprint** in Milne2022 at Remark 24.60, printed p.536 (line 22145): the source says the reduced bilinear stabilizer is symplectic in characteristic different from two; it should be in characteristic two; affects nothing.

- **Misprint** in ConwaySloane1988 at §10, printed p.274 (line 721): the source says Lemma 3 is in §13; it should be §11, printed p.280 (line 1052); affects nothing.

The Conway–Sloane printed pages 263, 266, 274 and 281 were rendered to verify formulas and the internal-reference misprint. The two Milne printed pages were rendered and visually inspected to distinguish these from text-extraction artifacts. For the last issue, a one-dimensional form over ℚ has bilinear orthogonal group μ₂ of order 2, whereas Sp₀ is trivial. The roadmap’s characteristic-not-two low-rank statements do not copy that misprint.
