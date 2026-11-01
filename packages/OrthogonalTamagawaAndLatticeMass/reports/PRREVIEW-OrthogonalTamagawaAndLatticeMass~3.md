# Review of OrthogonalTamagawaAndLatticeMass (pull request #1222 at f61a4d2)

**Verdict:** accepted

No findings. All five findings from the preceding review are repaired. This is an incremental re-review of 135 changed lines since a0c4f51, not a second full review. The folder is ready for a human's final approval; this report does not approve or merge the pull request.

🤖 AI review by Codex. Only the two specified roadmap files were reviewed; no pull-request file was changed.

## Previous findings

- R01 — repaired: README:115–135 constructs quadratic-preserving residue schemes, reductions and characteristic-two comparisons; README:435 consumes them. Split binary order is 2, polar-stabilizer order 6, and the repaired hyperbolic density is 4.
- R02 — repaired: README:51–53 and 317–334 import ImaginaryQuadraticClassNumber H1.4/H2.2 and ArithmeticStatisticsPartV's real-order comparison. The retained work identifies the same lattice, character, order, genus and measures; conductor-two unit index 3 gives h(−12)=1.
- R03 — repaired: README:181 retains Γᵢ∖(G∞×K_f), specifies its conjugated action and both maps, and takes the right-K_f quotient separately. The two adelic points of the previous counterexample remain distinct before that quotient.
- R04 — repaired: README:407–423 defines the filtration and all five auxiliaries, gives inclusion/isometry/base-change APIs, and tests mixed scales, both free even refinements, bound constituents, the hyperbolic plane and rank zero.
- R05 — repaired: README:142,334,527–551 supplies explicit deductions for the topology, regulators, coercivity and bounds, and precise classification/order locators. The 24-term order sum now independently matches the stated mass.

## Verified sound

The review checked the five repairs, all added or changed mathematical passages and their consumers, the changed part of the seeded sample, all 17 elaborated signatures, the five acceptance theorems, supplier citations and order, and the folder boundary. Unchanged mathematical tests below are explicitly carried from [the previous review](PRREVIEW-OrthogonalTamagawaAndLatticeMass~2.md), abbreviated **Prev**. No unresolved previous blocking finding remains.

### Gate and Lean evidence

The head is `f61a4d26d86d6b06ad5c47dcd47b307c9bdc5344`. The diff outside `TauCetiRoadmap/OrthogonalTamagawaAndLatticeMass` is empty. The independent gate passed every scanner, dependency and folder check; the worker's supplied gate also records `build=0` and `OK`. The independently rerun targeted build completed successfully, reporting 8,993 jobs.

Independent dependency-check output:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line, including the inline lines, was read. The characteristic-two construction now precedes the dyadic consumer; the local model does not depend on the global mass it evaluates. No supplier gap is declared or needed by these repairs.

Independent direct `lake env lean` elaboration succeeded with exactly five `declaration uses sorry` warnings. A separate scratch copy with `#check @name` for all **17 declarations** also elaborated. The 12 definitions/abbreviations and five theorem types agree with the README: the general mass theorem retains `0 < n` and `8 ∣ n`, and the four cardinality theorems use the actual even-unimodular Gram-class subtype. No binder was lost. Only the module docstring changed in Lean.

A scratch copy replacing each of the five admissions by `simp` left all five unproved: the mass theorem made no progress; the other four retained the asserted class-cardinality equation or bound. The definitions and opened library contracts also provide no `rfl`, instance synthesis or single-lemma shortcut. These are classification and mass headlines, not the small arithmetic checks used below. There is no admitted data or option override.

The README headline inventory remains: arbitrary-form algebraic Spin and point comparisons; approximation/Eichler; adelic and gauge comparisons and arbitrary-genus mass; binary analytic/order/genus comparison; the smooth dyadic model and density; even-unimodular mass; rank-16/24 classification; rank-32/40 lower bounds. The new quadratic residue-scheme comparison is also named in the module docstring. The five statable lattice mass/count headlines are present. The other headlines identify their missing scheme, quotient, measure, density or arithmetic-comparison carriers; nothing is substituted on unrelated scalar parameters.

### Sources and the seeded sample

The following table accounts for all **15 seeded targets**, with §2.2 checked additionally because the repairs depend on it. “Prev” means its unchanged source check is carried forward, not independently repeated here. Source line numbers refer to the sources service's legal cached extractions; no source text is reproduced. New retrievals used the sources service. The existing author-scan OCR for Conway–Sloane was read; a redundant slow re-fetch was stopped after that cached extraction was located.

| Target | Verification at this head |
| --- | --- |
| 0.0 Small Gram presentation | Unchanged; Prev's Gram/native tests and pinned constructor checks carried forward. IntegralLattices main §§0B–0E were reopened, including §0E's rational/real positivity equivalence. |
| 0.1a Quadratic residue groups | Cho2015 lines 753–760, §4.1, printed p.16, specifies quadratic reduced factors and the even-disconnected/odd-connected distinction. GeometryOfNumbersAndQuadraticArithmetic §3.3.7 supplies finite quadratic-group orders. The new target retains q, constructs the scheme comparison, and does not claim the bilinear scheme supplies it. F₂/F₄, rank-zero and dual-number tests are below. |
| 0.2 Point/topology/stabilizer comparisons | README:142 now identifies a deduction from its scheme equations, OrthogonalSpinGroups §§2B/3B–3D and AdelicAlgebraicGroups AA.1. Inverse transpose, continuity and clearing denominators work in both directions; IntegralLattices §4B supplies the stabilizer dictionary. |
| 1.1 Proper adelic quotient | BelolipetskyGan lines 68–99, §2, printed pp.2–3, retains dimension ≥3, the finite double cosets, conjugated arithmetic stabilizers and definite mass integral. AA.2.3 supplies actual rational quotient integration. The new piece and inverse agree with these inputs. |
| 1.2 Gauge/local density | Formula unchanged; Prev's normalization checks carried forward. Reopened ConwaySloane1988 lines 186–209 and 1086–1104, equations (2)–(3), p.263, and §12, p.281; BelolipetskyGan lines 103–120 supplies the split/compact gauge constants. |
| 1.3 Arbitrary-genus mass | Unchanged; Prev's A₂, discriminant −23, E₈ and rank guards carried forward. ConwaySloane1988 line 189 has positive-definite rank ≥2; the roadmap keeps the separate low ranks and named adelic proof inputs. |
| 1.4 Binary normalization | ImaginaryQuadraticClassNumber main H2.2 explicitly states zeta factorization for quadratic fields before imaginary specialization; H1.4 supplies the imaginary conductor sequence. ArithmeticStatisticsPartV §3.6 supplies strict real-order/regulator transport. The two new native unit/Picard citations were opened; the real signature calculation and ordinary/narrow ratio are valid. |
| 2.1 Smooth integral model | Unchanged; Prev's Cho Theorem 3.7, p.15, and étale-points checks carried forward. Its consumer now has the required residue schemes. |
| 2.2 Special fibre/density | Cho2015 lines 212–242, §§2.3/Remark 2.6, pp.5–6, give the filtration, auxiliaries and dimension bounds; lines 250–283 distinguish bound/free and the refinements. Lines 883–897, Lemma 4.2/Remark 4.3, p.18, and 1191–1203, Theorem 4.12/proof, p.24, give the kernel and quotient. Lines 1249–1267, Theorem 5.2/Remark 5.3, p.25, give the density and point count. The affine-space kernel comparison is over the residue field, not just its algebraic closure. |
| 2.3 Numerical arbitrary-genus formula | Unchanged formula; Prev's good/bad factors and normalization rows carried forward. The changed dependency points to §0.1a and the existing finite-order supplier. |
| 3.1 Mass/Bernoulli product | BelolipetskyGan lines 163–182, Theorem 3.1, p.4, has the parahoric hypothesis; line 451, §5, p.11, gives the even-lattice correction 1. ConwaySloane1988 lines 711–713, §9(iv), p.274, is a reference to unimodular specialization, not a classification theorem. The corrected classification citations no longer ask it to prove that. |
| 3.2 Exact Bernoulli evaluations | Unchanged recurrence target; Prev's library checks carried forward. Exact rational recurrence through B₃₈ and all five relevant masses were recomputed this round. |
| 4.1 Bounds/rank 16 | The new coercivity deduction uses IntegralLattices §0E, compact nonempty sphere minimization and rational density; rank zero is separate. ChenevierLannes line 1589, Chapter II Corollary 3.6, printed p.41, identifies the two distinct classes. The root/glue route uses the now-explicit IntegralLattices §6G order. |
| 4.2 Rank 24 | ChenevierLannes lines 1886–1897, Chapter II Theorems 3.16–3.17, printed p.48, supports the rank-24 conclusion. BorcherdsTables lines 6–81 supplies the 24 distinct root-type factors, with duplicate uppercase listings counted only once. BorcherdsTableIndex lines 18–44 identifies the Niemeier/norm-zero correspondence. ChenevierLannes lines 1784–1787, Scholie 3.15(b), p.46, identifies O/W with the glue stabilizer. The full 24-term sum is verified below. |
| 4.3 Class-count lower bounds | Correctly identified as deductions from §§3.1–3.2, not a classification-table quotation. Exact floors of twice the masses are 80618465 and 8786162893954707795924443121224722752459224292177832. |

### Pinned declarations and supplier resolution

The package heads match the unchanged manifest pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **eight pinned contracts** were reopened for the changed passages. Paths here are relative to the corresponding library repository.

| File and line | Contract checked |
| --- | --- |
| `TauCeti/Algebra/AlgebraicGroup/ConstantForm/Basic.lean:445` | `mem_definingPointsSubgroup_iff` is M C Mᵀ=C. It preserves the bilinear form; it does not retain quadratic square coefficients in characteristic two. |
| `TauCeti/Algebra/AlgebraicGroup/SpecialOrthogonal/Smooth.lean:103` | Standard SO smoothness explicitly requires invertible 2. The new residue target does not use it at 2. |
| `TauCeti/NumberTheory/NumberField/Global/Orders/NarrowPic/Kernel.lean:198` | `NumberFieldOrder.card_narrowPic` multiplies the Picard cardinal by the unit-signature index. Its total `Nat.card` identity is not a finiteness theorem; README:334 explicitly retains finiteness. |
| `TauCeti/NumberTheory/NumberField/Units/Regulator.lean:68` | `mult_abs_log_eq_index_mul_regulator` requires unit rank one and uses place multiplicity and the subgroup generated by the unit and torsion. Real quadratic places have multiplicity 1. |
| `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:56,77` | Residue constant and right-hand residue theorem: signature (2,0), torsion order 2 give 2hR/√D. |
| `Mathlib/NumberTheory/LSeries/RiemannZeta.lean:241` | `riemannZeta_residue_one` supplies residue 1, not an ordered Euler endpoint. |
| `Mathlib/Topology/Order/Compact.lean:228` | `IsCompact.exists_isMinOn` requires a nonempty compact set and continuity. The positive-rank sphere meets these; rank zero is treated separately. |
| `Mathlib/Algebra/Order/Archimedean/Basic.lean:369` | `exists_rat_btwn` supplies the rational c strictly between 0 and the positive minimum. |

The previous report's other 16 inventory rows remain the baseline for unchanged definitions and carriers. No claim of a new implementation was inferred from source names alone.

Cross-roadmap citations resolve against main `fa41b374` or the supplied new-roadmap head. The resolver found no unknown roadmap citation or Lean name; it did not inspect the pin on this host, so the direct pinned checks above supply that evidence. Existing-roadmap revisions were not substituted for main.

| Supplier | Sections and ownership checked |
| --- | --- |
| IntegralLattices, main `TauCetiRoadmap/IntegralLattices/README.md` | §§0B–0E (lines 535–559); §§2C/2G finiteness; §4B lattice dictionary; §§6C–6G (1654–1689); §9B exhaustion. Its §6D/6E constructs distinct reference classes, not their completeness; §6G owns 696729600. §3I (892–969) and §7C (1746–1778) were reopened: all unramified dyadic scales and the bilinear count retain N=2 for U, giving α₂=4. Unchanged binary/local contracts remain as resolved in Prev. |
| OrthogonalSpinGroups, main `Completed/OrthogonalSpinGroups/README.md` | §§2B/3A–3D; lines 774–855 explicitly assign scheme comparison here and provide the point topology and restricted-product substrate. |
| ReductiveGroups, main | Layers 0/3 give Hopf points, subgroups and components; Layer 5 gives unipotent groups. Layer 7a, lines 690–730, imports ordinary Frobenius Lang and quotient lifting from ReductiveGroupsPartII RG2.3.7 with smooth geometric connectedness. The new application retains these hypotheses. Layers 6/8 remain the unchanged structure/descent supplier. |
| GeometryOfNumbersAndQuadraticArithmetic, new-roadmap head | §§2.4/3.3 and especially §3.3.7, “Reductive-quotient orders and canonical local volume” (README:1213). It explicitly includes odd characteristic-two orthogonal realization and disconnected O factors. This roadmap owns comparison with Cho's schemes, not a second order classification. |
| AdelicAlgebraicGroups, new-roadmap head | AA.1 concrete points/restricted-product transport; AA.2.3 rational quotient integration (README:1823); AA.2.4 normalization; AA.4.2 strong approximation. The corrected quotient is an application of these existing carriers. |
| ImaginaryQuadraticClassNumber, main | H1.4, lines 45–49, and H2.2, lines 61–67: conductor formula, quadratic zeta comparison and imaginary constants. These are now consumed. |
| ArithmeticStatisticsPartV, main | §3.6, “Siegel count of indefinite binary quadratic forms” (README:568–598): primitive strict order classes and positive norm-one period, with conductor factor and unit-index cancellation. This is the new real-order supplier, earlier in merge order. |
| GlobalNumberFields, main `Completed/GlobalNumberFields/README.md` | Layers 9/11, lines 508–598: conductor-compatible characters, actual orders, invertible Picard carriers, and conductor-coprime ideal transport. |
| TauberianBoundaryConvergence, main | N2/N3, lines 52–127: ordinary ordered endpoint and finite deletions. It supplies no quadratic order/genus comparison. |
| RootSystems, main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md` | Layers 5–6, lines 321–389: coordinate root systems, classification and integral root data. Type-specific lattice automorphism orders are conclusions here; the E₈ order is imported from IntegralLattices §6G. |
| EndoscopicTransferAndUnitaryTraceComparison, new-roadmap head | §6.5: scoped Kottwitz ratios; the boundary citation still does not supply a general central-isogeny volume comparison. |

Ownership searches used `roadmaps grep` by quadratic-preserving schemes, residue groups, Dickson invariants, finite orthogonal orders, conductor sequences and strict regulators across main and the supplied open-head corpus, plus board packages and the pinned libraries. The relevant overlap is now explicitly imported from GeometryOfNumbersAndQuadraticArithmetic, ImaginaryQuadraticClassNumber and ArithmeticStatisticsPartV. No competing owner of the new Cho scheme comparison was found. No acceptance declaration was added or renamed, and no fully qualified name collision was found. Main ImaginaryQuadraticClassNumber, ReductiveGroups and TauberianBoundaryConvergence were read for surrounding shape.

### Adversarial table: changed passages

All rows below were calculated this round. Matrix/group enumerations and Bernoulli computations used exact integer/rational arithmetic. These finite witnesses test definitions, normalization and regressions; they do not purport to prove the general theorems.

| Statement | Instances | Computed values on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1a quadratic-preserving equations | xy over F₂; shear (x,y)↦(x+y,y) | Quadratic group has 2 elements; polar stabilizer has 6; q(0,1)=0, q(1,1)=1 | Shear excluded by q, retained by polarization alone | Repairs R01 |
| Point functor, multiplication and inverse | Coordinate swap S; rank-one identity | S²=I, S⁻¹=S, q(Sv)=q(v); identity gives q(v)−q(v)=0 | Preserving equations form a group and commute with coefficient change | New API |
| Reduction on reduced/nonreduced algebras | q=z²; F₂ and F₂[ε]/ε² | Reduced group has 1 point in both; unreduced μ₂ has 1 and 2 points, since (1+ε)²=1 | Reduced-algebra restriction is necessary | New negative control |
| Even components/Dickson convention | Split binary swap over F₂ | det S=1; rank(I−S)=1, so Dickson value 1; identity has value 0 | Determinant-one does not select the identity component | New comparison |
| Split/nonsplit even orders | Binary spaces over F₂ and F₄ | Enumeration gives 2,6 and 6,10; formula gives 2(2−1),2(2+1),2(4−1),2(4+1) | Equal in all four cases | New order transport |
| Odd reduced order and polar radical | z²+xy over F₂ | Radical is z-axis, q(z)=1; enumeration gives 6, formula 2(2²−1)=6; induced Sp₂ has 6 | Odd regularity retained | New comparison |
| Rank-zero and singular exclusions | Zero space; zero quadratic form on F₂² | Actual zero-space order 1, unguarded even expression 0; singular-plane group GL₂ has 6, split regular formula 2 | Guards distinguish both cases | New checks |
| §0.2 inverse-transpose transport | C=diag(1,4), M=[[0,1/2],[2,0]] | MCMᵀ=C; MᵀCM=diag(16,1/4); A=M⁻ᵀ=[[0,2],[1/2,0]] has AᵀCA=C | Both maps inverse; denominator set {2} | Added proof route |
| Stabilizer and topology transport | C=[2], p=3; reflection −1 | Full/proper orders 2/1; inverse transpose fixes −1; volume ratio 2 on both carriers | Continuous algebraic inverse preserves distinction | Added proof route |
| §1.1 quotient inverse | Rational SO₃, rotation at 3 | 9/25+16/25=1, det=1; [(1,1)]≠[(1,k)], but right-K_f images coincide | New inverse retains k | Repairs R03 |
| Conjugated action and inverse choices | a_f=γ_fgᵢk=γ′_fgᵢk′, δ=γ′⁻¹γ | k′=(gᵢ⁻¹δ_fgᵢ)k; γ′∞⁻¹a∞=δ∞γ∞⁻¹a∞ | Exactly the stated Γᵢ-action | Repairs R03 |
| Finite quotient measure, nonabelian control | S₃ diagonally on S₃×S₃ with counting measures | 36 points /6=6 quotient points; further right-S₃ quotient has 1 | Retained second factor contributes 6 | Tests disintegration |
| General quotient branch | Model ℤ acting on ℝ by translation | Haar volume of ℝ is ∞; counting volume of ℤ is ∞; quotient [0,1) has measure 1 | Quotient integration avoids an undefined ∞/∞ | New guard |
| §1.4c imported coefficient identity | n=1; split/inert/ramified prime powers k=2 | Unit ideal 1=χ(1); coefficients 3,1,1 equal 1+1+1,1−1+1,1+0+0 | All splitting regimes retained | Repairs R02 |
| Imported zeta comparison | Local parameter T, through T² | Split (1−T)⁻²: 1,2,3; inert (1−T²)⁻¹: 1,0,1; ramified (1−T)⁻¹: 1,1,1 | Same coefficients as ζ·L | Ownership corrected |
| Imaginary constant and same-genus mass | D=−3, h=1, w=6 | L(1)=2π/(6√3)=π/(3√3); mass=1/(2·6)=1/12 | L-value not confused with mass | Imported formula/new adapter |
| Imaginary conductor and units | D=−3, f=2 | χ(2)=−1; 2(1+1/2)=3, unit index 3; h_f=1·3/3=1 | h(−12)=1, not 3 | Repairs R02 |
| Conductor identity and local factors | f=1; conductor prime 2 in split/inert/ramified cases | f=1 gives empty product 1, unit index 1 and identity Picard map; at f=2 the residue-unit factors are 1,3,2 | No unit-ideal or dyadic exception lost | Rechecked imported contract |
| Real residue and narrow ratio | D=5: s=4; D=12: s=2 | 2²hR/(2√D)=2hR/√D; (h⁺/h,R⁺/R)=(1,2),(2,1), product 2 in each | Native constants agree | Repairs R05 |
| Regulator embedding/subgroup law | η and η⁻¹; subgroup generated by η³ | Logs R⁺ and −R⁺; chosen positive generator restores R⁺; log η³=3R⁺ | Index 3 multiplies period by 3 | New deduction |
| Real nonmaximal-order transport | D=5, f=2, Δ=20 | η_f=9+4√5=ε⁶, R_f⁺=6R, h_f⁺=1; √20·(2R/√5)·(3/2)=6R | Correct positive-unit index and conductor factor | New supplier test |
| Filtration Aᵢ | diag(1,2), i=0,1,2 | A₀ basis (e₁,e₂), A₁=(2e₁,e₂), A₂=(4e₁,2e₂); both inclusions have index 2 here | Full lattice, not rank-one Lᵢ | Repairs R04 |
| X,B,W,Y,Z, mixed scales | diag(1,2), i=0, modulo 2L | Sizes X=B=Y=2, W=4, Z=1; q/2 values 0,1; dim B/Z=1 | Matches all named lattices | Repairs R04 |
| Free even type I₁ | [[1,1],[1,2]], modulo 2L | Sizes X=Z=1, B=W=Y=2; q/2 values 0,1, dim B/Z=1 | Type Iᵉ₁ | New discriminating check |
| Free even type I₂ and bound guard | [[1,1],[1,0]]; adjoin ⟨2⟩ | Sizes X=1, B=W=Y=Z=2; q/2 values 0,0, dim B/Z=0; adjacent I count becomes 1 | Iᵉ₂ only while free; neither refinement when bound | New discriminating check |
| Frobenius semilinearity/base extension | F₄={0,1,t,t+1}, t²=t+1 | Squares 0,1,t+1,t; nonzero semilinear map has kernel size 1, image size 4 | Kernel dimension stays 0, map not F₄-linear | New extension test |
| Hyperbolic radical versus zero locus | U, q/2=xy over F₂ | X=W=Y=Z have 1 residual element; B has 4; zero locus has 3, quadratic radical 1 | Only radical yields quotient dimension 2 | Repairs R04 |
| Auxiliary inclusion/dimension APIs | Mixed, Iᵉ₁, Iᵉ₂, U, zero | (dim A/B,dim W/X,dim Y/Z)=(1,1,1),(1,1,1),(1,1,0),(0,0,0),(0,0,0) | Every dimension ≤1; computed containments hold | New API tested |
| Isometry/basis-change naturality | Swap basis on diag(1,2) | Gram becomes diag(2,1); residual X=B=Y moves from span(e₂) to span(e₁); W full, Z zero | Both constructions transport by the same swap | New API tested |
| Connected-unipotent point count | A⁰/F₄ and A¹/F₄, quotient C₂ | Kernel counts 1,4; product counts 2,8=4⁰·2,4¹·2 | Lang lifting and affine count agree | New route verified |
| Cho density normalization | ⟨1⟩, ⟨2⟩, U over Z₂ | (N,dim O,#special points)=(1,0,2),(2,0,2),(2,1,2); β=2,4,2 and α=4,8,4 | α=2β; polar substitution for U gives wrong 12 | Repairs R01/R04 |
| §3.1 Bernoulli/full mass convention | Ranks 8 and 16 | Product 1/696729600 and 691/277667181515243520000; proper mass is twice each | Unchanged identity; locator corrected | Recomputed |
| §4.1 coercivity and rank zero | diag(1,2), real sphere; zero space | Sphere minimum μ=1; choose c=1/2, so (x²+y²)/2≤x²+2y²; zero rank c=1 gives 0≤0 | Nonempty-sphere guard correct | Repairs R05 |
| Column/determinant bounds | diag(1,2), c=1/2; four sign isometries | Column entry squares ≤2,4; det(A)²·2=2 implies det A=±1; empty determinant 1 | Matrix/native transport consistent | Added deduction |
| Rank-16 orders and exhaustion | E₈² and D₁₆⁺ | Orders 970864271032320000,685597979049984000; reciprocal sum 691/277667181515243520000 | Equals mass; two distinct supplied classes exhaust | Correct source/input ownership |
| Rank-24 mass identity | All 24 orders in next table | Sum of reciprocals =1027637932586061520960267/129477933340026851560636148613120000000=Bernoulli product | Exact equality | Previously uncertified table now checked |
| Leech/rootless guard | Leech; Leech⊕Leech | Root-action order 1 vs full Leech order 8315553613086720000; sum has rank 48 and zero roots | Minimal-vector action needed; uniqueness restricted to rank 24 | Source checked |
| §4.3 class-number inequality | Two weights 1/4,1/2; rank zero | 2M=3/2≤h=2; zero rank 2M=2>h=1 | Positive-rank hypothesis necessary | Deduction clarified |
| Rank-32 lower bound | Exact Bernoulli recurrence to B₃₀ | 80618465<2M₃₂<80618466; 10⁷<80618465 | h₃₂≥2M₃₂ gives required strict bound | Recomputed |
| Rank-40 lower bound | Exact recurrence to B₃₈ | floor(2M₄₀)=8786162893954707795924443121224722752459224292177832; 8·10⁵¹<2M₄₀<9·10⁵¹ | h₄₀≥2M₄₀>10⁵¹ | Recomputed |

### Rank-24 order calculation

For each row, the middle expression is the Weyl order multiplied by the finite factor in BorcherdsTables; the last column is its exact value. The rootless row uses its full order directly. Thus the table checks all 24 terms, including the factor-of-two convention, rather than only comparing a decimal approximation to the mass.

| Root system | Source factor × Weyl order | Full order computed |
| --- | --- | --- |
| Leech | 8315553613086720000 (rootless) | 8315553613086720000 |
| a1.24 | 244823040 × (2!)^24 | 4107449023856640 |
| a2.12 | 190080 × (3!)^12 | 413762786426880 |
| a3.8 | 2688 × (4!)^8 | 295882444505088 |
| a4.6 | 240 × (5!)^6 | 716636160000000 |
| a5.4d4 | 48 × (6!)^4 × (2^3·4!) | 2476694568960000 |
| d4.6 | 2160 × ((2^3·4!))^6 | 108208436847575040 |
| a6.4 | 24 × (7!)^4 | 15485790781440000 |
| a7.2d5.2 | 8 × (8!)^2 × ((2^4·5!))^2 | 47943914618880000 |
| a8.3 | 12 × (9!)^3 | 573416710078464000 |
| a9.2d6 | 4 × (10!)^2 × (2^5·6!) | 1213580338790400000 |
| d6.4 | 24 × ((2^5·6!))^4 | 6763027302973440000 |
| a11d7e6 | 2 × 12! × (2^6·7!) × 51840 | 16019260472033280000 |
| e6.4 | 48 × (51840)^4 | 346657985428193280000 |
| a12.2 | 4 × (13!)^2 | 155103152174530560000 |
| d8.3 | 6 × ((2^7·8!))^3 | 824788751971516416000 |
| a15d9 | 2 × 16! × (2^8·9!) | 3887340541213409280000 |
| a17e7 | 2 × 18! × 2903040 | 37172693925353226240000 |
| d10e7.2 | 2 × (2^9·10!) × (2903040)^2 | 31316197926418513920000 |
| d12.2 | 2 × ((2^11·12!))^2 | 1924703466207817236480000 |
| a24 | 2 × 25! | 31022420086661971968000000 |
| d16e8 | 1 × (2^15·16!) × 696729600 | 477676405704303732326400000 |
| e8.3 | 6 × (696729600)^3 | 2029289625631919702016000000 |
| d24 | 1 × (2^23·24!) | 5204698426366666226930810880000 |

### Adversarial table: unchanged statements carried forward

Each row cites **Prev**, the preceding report linked above, and preserves its computed values. Changed statements and previously failing rows are replaced by the fresh tests above. These are carried evidence, not claims of repeated computation.

| Statement | Instances and computed values | Result | Change / evidence |
| --- | --- | --- | --- |
| Fixed Gram universe and positivity | Rank 0: the only vector is 0, positivity has no nonzero test, determinant=1; rank 1: [1] and [2] give values 1 and 2 at 1, [0] gives 0. | Correct acceptance/nonacceptance. | Unchanged; Prev. |
| Native Gram lattice | Standard rank-one basis gives carrier ℤ⊂ℚ and norm 1 for [1], 2 for [2]; neither changes carrier to all ℚ. | Matches native constructor. | Unchanged; Prev. |
| Gram equivalence in both directions | GL₁(ℤ)={±1}, a²=1: [1]~[1], [2]~[2], but [1]≁[2]. Over ℚ, [1]~[4] via 2; det 2 is not an integral unit. | Integral condition essential. | Unchanged; Prev. |
| Gram basis transport | G=diag(1,2), A=[[1,1],[0,1]]: det A=1, AᵀGA=[[1,1],[1,3]], determinant=2 on both sides. | Same native isometry class. | Unchanged; Prev. |
| Setoid inverse/composition | A⁻¹=[[1,−1],[0,1]]; A⁻¹A=I; applying A twice gives [[1,2],[0,1]], transformed Gram [[1,2],[2,6]]. | Reflexive/symmetric/transitive proof elaborates. | Unchanged; Prev. |
| Class map | G and AᵀGA have one quotient class; G and diag(2,1)ᵀGdiag(2,1)=diag(4,2) have determinants 2 and 8. | Nonunit change is excluded. | Unchanged; Prev. |
| Full automorphism order | Empty matrix: 1; [1],[2]: 2 each; diag(1,2): 4 diagonal sign matrices, proper subgroup 2. | Correct full rather than proper weight. | Unchanged; Prev. |
| Representative-independent order | diag(1,2) and [[1,1],[1,3]] both have 4 automorphisms by conjugation; reciprocal weights both 1/4. | Choice of representative harmless. | Unchanged; Prev. |
| O/SO scheme-point convention | C=diag(1,4), M=[[0,1/2],[2,0]]: MCMᵀ=C; MᵀCM=diag(16,1/4). M⁻ᵀ=[[0,2],[1/2,0]] preserves C in column convention. | Correct inverse-transpose direction. | Unchanged; Prev. |
| Comparison is multiplicative | For invertible M,N, (MN)⁻ᵀ=M⁻ᵀN⁻ᵀ. For diagonal reflection M, det M=det M⁻ᵀ=−1. | No opposite-group or SO-only substitution. | Unchanged; Prev. |
| O/SO low ranks | Rank 0: both orders 1. Rank 1 over ℚ: O={±1}, SO={1}, orders 2 and 1. | Correct boundary split. | Unchanged; Prev. |
| Spin rank zero | Clifford even algebra ℚ: norm-one scalars ±1, order 2; generated native Spin from no invertible vectors: order 1. | Separate rank-zero branch retained. | Unchanged; Prev. |
| Spin rank one | Nonzero vector v yields scalar −1 as (−v)v⁻¹; even norm-one scalars are ±1. Kernel order 2, SO order 1. | Positive-rank kernel correct. | Unchanged; Prev. |
| Binary Spin torus | Q=x²+y²: (e₁e₂)²=−1; norm((3+4i)/5)=(9+16)/25=1; torus dimension=1. | Excluded from semisimple branch. | Unchanged; Prev. |
| Nonabelian Spin multiplication | Hamilton i²=j²=−1, ij=k, ji=−k. Q₈ maps to diagonal rotations of order 4 with kernel order 2. | Cover retains noncommutativity. | Unchanged; Prev. |
| Spin dimensions and root types | n=3,4,6 give 3,6,15; dimensions SL₂, SL₂×SL₂, SL₄ are 3,6,15. | Low-rank comparisons consistent. | Unchanged; Prev. |
| Rank-four factor convention | Four squares: signed determinant 1, centre ℚ×ℚ, 2 quaternion factors. diag(1,1,1,2): signed determinant 2, centre ℚ(√2), 1 ℚ-simple factor. | Correct factor count, not absolute simplicity in the second case. | Unchanged; Prev. |
| Central cover versus rational surjectivity | Reflections in e₁ and e₁+e₂ give spinor norm 1·2=2; class of 2≠1 in ℚ×/ℚ×². | Not in rational Spin image. | Unchanged; Prev. |
| Simply connected guard | Split SO₃=PGL₂ has cover SL₂ with geometric kernel {±I}, order 2; kernel for n=0 branch has order 1. | SO is not declared simply connected. | Unchanged; Prev. |
| Local stabilizer comparison | C=[2], p=3: K={±1}, K⁺={1}, index=2. | Volume ratio 2 persists under point transport. | Unchanged; Prev. |
| Finite-reference change | Replacing one local subgroup K₃ by index-2 subgroup changes the local volume by 1/2; references outside {3} are identical. | Requires finite-change comparison, not equality of subgroups. | Unchanged; Prev. |
| Strong approximation hypotheses | Split Spin₃=SL₂ has a real unipotent [[1,t],[0,1]] for unbounded t. Positive ternary Spin is compact at ∞. | First meets S={∞}; second fails hypothesis. | Unchanged; Prev. |
| Factorwise approximation | H₁×H₂ with one compact S-product and one noncompact S-product: 1 failing factor out of 2. | Noncompactness of the whole product is insufficient. | Unchanged; Prev. |
| Eichler scope | Indefinite split rank 3 has a hyperbolic plane; positive ternary has signature (3,0), not (2,1). | Only indefinite rank≥3 receives class=spinor-genus conclusion; no numerical enumeration claimed. | Unchanged; Prev. |
| Full/proper masses, nonsplit class | Orders O=12, SO=6: weights 1/12 and 1/6, ratio 2. | Matches supplied §7A. | Unchanged; Prev. |
| Full/proper masses, splitting class | O=SO of order 2: full weight 1/2; two proper classes contribute 1/2+1/2=1. | Ratio 2 without an improper integral automorphism. | Unchanged; Prev. |
| Zero-rank quotient | Group, arithmetic stabilizer and class set have size 1; both masses=1, not 2. | Positive-rank factor cannot extend. | Unchanged; Prev. |
| Real gauge constants | V₃=2π·4π=8π²; s₃=1/2, volume=4π². V₄=8π²·2π²=16π⁴; s₄=1. | Matches Belolipetsky–Gan factorial constants. | Unchanged; Prev. |
| Gauge product and mass, I₃ | β₂=6, good inverse product ζ^(2)(2)=π²/8, 2R₃=1/π²: mass=1/48. Then v∞∏v_p=48 and τ/(2·48)=1/48. | Consistent normalization; β₂ here is a formula specialization, not a fresh 3×3 exhaustive count. | Unchanged; Prev. |
| Integral rescaling | n=2, t=2: D↦4D, D^(3/2)↦8D^(3/2); β₂↦8β₂. n=3: both scale by 2⁶. | Global cancellation correct. | Unchanged; Prev. |
| Local component reflection | U and v=(1,1): B(v,v)=2; reflection [[0,−1],[−1,0]] has determinant −1 and is integral. | Unit-norm restriction would be wrong. | Unchanged; Prev. |
| General mass, A₂ | β₂=6, β₃=6, D=3: (2/π)·3√3·(1/36)·π/(2√3)=1/12. | Matches full automorphism weight 1/12. | Unchanged; Prev. |
| General mass, discriminant −23 | β₂=2, β₂₃=46, D=23: (2/π)·23√23·(1/92)·3π/(2√23)=3/4. | Matches weights 1/4+1/2. | Unchanged; Prev. |
| General mass, E₈ | β₂=42525/256; inverse Euler product=2⁻⁸ζ(2)ζ(4)²ζ(6). Multiply by 135/(8π¹⁶): 1/696729600. | Dyadic 2⁸ indispensable. | Unchanged; Prev. |
| Density formula rank guard | n=0 Bernoulli expression gives 0/0=0 in ℚ; actual empty mass=1. n=1 elementary mass=1/2. | Correct separate branches. | Unchanged; Prev. |
| Binary norm-content adapter | A₂ norm coefficients (2,−2,2), gcd 2 → (1,−1,1), Δ=1−4=−3. Half-norm gcd 1 gives same Δ. | Both directions agree. | Unchanged; Prev. |
| Odd binary half-norm rejection | diag(1,1): norm form (1,0,1), Δ=−4; Q(1,0)=1/2. | Half-norm not integral. | Unchanged; Prev. |
| Content and order conductor | [[4,1],[1,6]]: g=2, Δ=−4·23/4=−23, f=1. Doubling B: g=4, det=92, Δ=−368/16=−23. | Content changes; order does not. | Unchanged; Prev. |
| Primitive polar matrix | A₂: B/g has half-integral off-diagonals; 2B/g=B is integral. | Correct polynomial/polar distinction. | Unchanged; Prev. |
| Signed character and nonsplit condition | D=−3: level 3, χ(−1)=−1. D=5: level 5, χ(−1)=1. D=1: level 1, trivial character. | Nontriviality and level hypotheses retained. | Unchanged; Prev. |
| Endpoint finite deletion | χ₋₃(2)=−1 ⇒ factor 3/2; χ₋₄(2)=0 ⇒ factor 1; χ₋₂₃(2)=1 ⇒ factor 1/2. | Multiplication, not division, by deleted factors. | Unchanged; Prev. |
| Genus/full-class conversion | Δ=−23: proper classes 3, ambiguous 1, full classes (3+1)/2=2; mass=1/4+1/2=3/4=3/(2·2·1). | Proper count, not full count, enters formula. | Unchanged; Prev. |
| Split binary Euler branch | Finite products for primes ≤2,3,5: 2,3,15/4. Finite Euler expansion includes harmonic terms; limiting product diverges. | Trivial character excluded from nonzero endpoint. | Unchanged; Prev. |
| Smooth-model rank zero | Dimension 0, one residue point, one integral automorphism. | No division by 2. | Unchanged; Prev. |
| Smooth-model unary special fibre | Smooth model for ⟨1⟩ has 2 F₂ points; naive x²=1 has just x=1, one point. | Equal integral points do not identify special fibres. | Unchanged; Prev. |
| Smooth congruence kernels | f=4,n=2 gives f^(n(n−1)/2)=4; n=1 gives f⁰=1. | Residue cardinal, not always 2. | Unchanged; Prev. |
| Component exponent includes zero constituent | ⟨1⟩ at i=0: L₂=0 type II, β_Cho=1; omitting empty L₂ gives β_Cho=0. | Component counts 2 versus wrong 1. | Unchanged; Prev. |
| Cho exponent N | ⟨1⟩: N=1; ⟨2⟩: N=2; U: c=2,N=2; U⁴: c=8,N=8. | Type-II c term retained. | Unchanged; Prev. |
| Unary dyadic stabilization | ⟨1⟩ modulo 8,16,32: 4,4,4 solutions. ⟨2⟩: 4,8,8 solutions. | Stabilized α₂=4,8; do not use a premature cutoff. | Unchanged; Prev. |
| U bilinear density | Modulo 8 and 16: 32 and 64 matrices; divide by 8,16 gives α₂=4 both times. Cho: 2^(2−1)·2=4. | Agrees. | Unchanged; Prev. |
| A₂ dyadic density | Modulo 8 and 16: 96 and 192 matrices; α₂=12 both times, β₂=6. | Agrees with binary mass calibration. | Unchanged; Prev. |
| −23 dyadic density | Gram [[4,1],[1,6]], modulo 8 and 16: 32 and 64 matrices; α₂=4, β₂=2. | Agrees. | Unchanged; Prev. |
| Odd bad-prime density | diag(1,3) modulo 9: 108 matrices, α₃=12, β₃=6. diag(1,23) modulo 529: 48668 matrices, α₂₃=92, β₂₃=46. | Matches rank-two Jordan factors. | Unchanged; Prev. |
| Good-prime sign | U at p=3: raw determinant −1 nonsquare, signed determinant 1 square, #O=4; α₃=4/3, β₃=2/3. Wrong sign gives β₃=4/3. | Signed determinant essential. | Unchanged; Prev. |
| Good-prime convergence | n=3: β_p=1−p⁻² (at 3: 8/9). Split n=4: β_p=(1−p⁻²)² (at 3: 64/81). | Exponents ≥2; rank-two exponent 1 requires separate ordered theorem. | Unchanged; Prev. |
| Even/unimodular predicates | Rank 1 [1]: odd, unimodular; [2]: even, determinant 2, nonunimodular. Empty matrix: even and determinant 1. | Correct set membership. | Unchanged; Prev. |
| Rank-eight predicate discrimination | E₈: even, determinant 1, weight 1/696729600. I₈: determinant 1 but norm e₁=1, excluded. | Determinant alone insufficient. | Unchanged; Prev. |
| Mass finite-sum transport | Empty rank-zero class set presentation has one class of weight 1; finite two-weight set {1/4,1/2} sums to 3/4 regardless of order. | Native finiteness is needed before interpreting rational tsum. | Unchanged; Prev. |
| One-genus input | Even unimodular rank 8 has trivial discriminant group and signature 8; E₈² and D₁₆⁺ have trivial discriminant group and signature 16. | Supplier local/genus data agree; isometry classes need not coincide. | Unchanged; Prev. |
| Bernoulli sign convention | B₀+2B₁=1−1=0; using B₁=+1/2 yields 2. B₄=−1/30. | Correct native convention. | Unchanged; Prev. |
| Bernoulli product boundary | m=0: totalized B₀/0=0, empty finite product=1, result 0; true zero-rank mass=1. | hn excludes it. | Unchanged; Prev. |
| Mass headline at rank 8 | (1/240)(1/24)(1/240)(1/504)=1/696729600. | Matches imported E₈ order. | Unchanged; Prev. |
| Mass headline at rank 16 | Product=691/277667181515243520000; proper mass is twice this. | Correct full-O normalization. | Unchanged; Prev. |
| Bernoulli evaluation range | m=12,16,20: largest 2j=22,30,38. B₃₈=2929993913841559/6. | Correct extended range. | Unchanged; Prev. |
| Rank-24 distinctness versus list length | Repeating one of 24 representatives yields at most 23 distinct classes, not 24. | Injectivity hypothesis essential. | Unchanged; Prev. |
| Class-number inequality | Positive rank: each weight≤1/2, so two weights 1/4 and 1/2 give 2M=3/2≤h=2. Rank 0: 2M=2>h=1. | hn essential. | Unchanged; Prev. |
| Excluded general central-isogeny shortcut | Squaring on ℚ×: independent prime square classes give infinitely many cokernel elements; kernel still has order 2. | Finite kernel cannot replace a volume comparison. | Unchanged; Prev. |

The carried table has **67 rows**; the changed-passage table has **40 rows**, followed by **24 individual order calculations**.

## Not verifiable

- O’Meara, *Introduction to Quadratic Forms*, 104:4–5 remains explicitly uncertified. Prev records the unsuccessful legal sources-service search and publisher lookup. This unchanged locator was not reopened as a missing-source request; the cited AA.4.2 and IntegralLattices §4D contracts remain the proof inputs. This review does not certify the book's numbering or its full Eichler proof.
- This is a review of statements, dependencies, source support and finite witnesses, not a completed formal proof of the roadmap. In particular the table verifies all 24 stated order values and their exact sum; the general automorphism-group identifications remain the roadmap's mathematical targets.
- No `sources.toml` exists at this head. As in the preceding read-only review, no manifest was created or edited. Legal source-cache evidence is identified above; no source material was put in the roadmap or report. The previous classification-table and new-comparison locator limitations are repaired.

## Source issues

The following concern newly inspected passages; the unchanged Milne and Conway–Sloane errata recorded in Prev are not re-investigated in this incremental review.

- **Misprint** in Cho2015 at §2.3, item (3), printed p.5 (line 216): the source says the reduced norm is linear; it should be Frobenius-semilinear over the residue field, with a linear kernel; affects nothing.
- **Misprint** in ChenevierLannes at Chapter II, Theorem 3.16, printed p.48 (line 1886): the source says every rootless even unimodular lattice is Leech; it should be restricted to dimension 24, as in the surrounding classification; affects nothing.

For the first, on F₄ the unary norm sends t to t²=t+1, rather than t. For the second, Leech⊕Leech is rootless of rank 48. The printed p.48 was visually inspected. The roadmap already uses the correct semilinear interpretation and the rank-24 restriction.
