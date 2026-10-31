# Repair report

## F01 (P1) — applied

Unqualified proper coherent direct image → the supplier's actual Kiehl-proper hypothesis. Added gap:adic-proper-kiehl-proper under AdicSpacesPartIII R3.6 in both exact contracts and the plan's top-level gaps. Section 0.4 now invokes that gap after affinoid base change and keeps all standing fields. Added the nondiscretely valued projective-line Check.

## F02 (P2) — applied

Rigid charts in the general group argument → §6.4's algebraic-point analytic atlas over complete nontrivially normed characteristic-zero fields. Added extension compatibility, rigid comparison, API and four Checks. Submersions and identity detection become §§6.5–6.6. Updated ownership, contracts, build description, Needs, dependencies, downstream specialization and Lean's missing-carrier explanation. The group function now has an explicit domain U.

## F03 (P3) — applied

Characterizations after their consumer → §4.2 characterizations, then §4.3 Shilov definition and API. Updated the singleton-fibre proof, both Needs references in §4.4, §4.6 and Layer 4 Dependencies. Recomputed disc and annulus fibres before their cardinalities. No reverse edge was added; §4.2 does not consume §4.3.

## F04 (P3) — applied

Unassigned Banach spectrum → AdicSpacesPartIII R3.9 in ownership, contracts, §4.2 Needs and Layer 4 Dependencies. Specified the comparison from rank-one adic points to the supplied spectrum, normalized by the fixed absolute value on K. Defined the boundary using pointwise topology and spectral suprema, with the empty-algebra convention explicit. Added disc, dual-number and zero-algebra Checks in the README.

## Evidence and ownership

All four findings are supported. No verdict relies on the review's assertion alone.

| Finding | Evidence read and mathematical consequence |
|---|---|
| F01 | TauCetiRoadmap/AdicSpacesPartIII/README.md:10727–10753 assumes Kiehl properness over every affinoid base; :10948–10977 gives the adic converse only with discrete valuation and explicitly retains the extra hypothesis otherwise. TauCetiRoadmap/AdicSpacesPartII/README.md:9984–10007 has the same restriction, apart from the locally quasi-finite case. TauCetiRoadmap/RigidAnalyticGeometry/README.md:640–647 states coherent direct image for Kiehl-proper maps. BH22 line 570 and HK2 line 722 support the proper-image application, without filling this supplier extension. |
| F02 | Existing §§6.2–6.3 explicitly assume nonarchimedean fields. HK2 line 2602 and HK2 line 2611 concern the p-adic application. SchemeAndStackFoundations §0.8, etale_coordinates, supplies smooth algebraic coordinates; STACKS line 3743, Tag 054L, Lemma 29.37.21, p. 83, states this algebraic input. Native strict inversion and analytic inversion then apply to polynomial presentations over every complete nontrivially normed F. ReductiveGroupsPartII RG2.0.2, smooth-group-analytic-charts, was read at its indexed head: its locally compact characteristic-zero version includes ℝ and ℂ, and its Haar theory remains downstream. |
| F03 | BH22 line 235 states the four conditions directly on a rank-one point, before BH22 line 310 defines Shilov points. Thus the theorem needs specialization and the Banach spectrum, without needing the later Shilov API. The finite-boundary deduction then uses this theorem and noetherian reduction. |
| F04 | TauCetiRoadmap/AdicSpacesPartIII/README.md:12470–12530, R3.9, owns bounded multiplicative seminorms, pointwise topology and spectral maximum. BH22 line 235, especially condition (4), and BH22 line 294 identify the affinoid boundary characterization. A rank-one valuation class has a unique real representative extending the prescribed nontrivial norm on K. No homeomorphism between the adic subspace topology and the Banach spectrum is asserted. |

Read the main-checkout shapes of RigidAnalyticGeometry, StableReduction and Completed/OrthogonalL2Bases before editing. The supplied content checkout and its pinned dependencies were read without modification. The citation resolver additionally searched its indexed main and 363 open roadmap heads; none of this README's cross-roadmap citations or roadmap Lean names was reported missing. Its diagnostic explicitly does not check native library names; the relevant native inputs were checked separately below.

Ownership searches by object used the roadmap grep service and the board packages for properness, bounded-seminorm spectra, smooth algebraic charts and extension-compatible atlases. The ambient Banach spectrum remains with AdicSpacesPartIII. Algebraic étale coordinates remain with SchemeAndStackFoundations. The general field-valued group atlas is owned here to supply the identity theorem without an upward dependency on ReductiveGroupsPartII; the latter's locally compact chart result is its specialization. No declaration of another roadmap was copied or redeclared. The brief supplied no separate checkout paths for the enumerated sibling open pull requests; ownership against unprovided open-pull-request files was not checked. Indexed searchable heads were searched where available.

The additional source was fetched through the sources service from the Stacks Project's legal archive and recorded once as STACKS, including authors, title, year, Tag 054L, hash and certified retrieval metadata. Read STACKS lines 3743–3770, including the standard smooth presentation and invertible Jacobian minor. Existing manifest entries were preserved. SCHNEIDER11 and ANDRE74 remain settled as uncertified; no new request was made. No missing text prevents these repairs.

## Adversarial mathematics pass

These are explicit computations, not consequences of elaborating admitted theorems. Rows for existing targets record the boundary witnesses recomputed while checking that the repairs preserve their consumers. Rows for the added atlas separate its defining construction and its API laws. Notation in the table uses p with |p| = p⁻¹ in ℚ_p and its isometric extensions.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Standing field and dimension conventions | Spa K; empty space; point plus disc | dim Spa K = 0; dim ∅ = bottom; sup(0,1) = 1 = dim(K × K⟨T⟩) | Agrees | None |
| Gauss normalization and denominator convention | π + T at η and 0; zero denominator | η gives max(\|π\|,1) = 1; evaluation at 0 gives \|π\|; zero denominator has value 0 and is excluded | Distinguishes valuations | None |
| Tangent direction | T ↦ T² at 0 and 1 in characteristic zero | Derivatives 0 and 2, from source to target; in characteristic 2 both are 0 | Agrees | None |
| Empty-centre convention | Unit, zero and Cartier ideals on disc | Bl_(1) = disc; Bl_0 = ∅; Bl_(T) = disc with nonempty centre | Distinguishes markings | None |
| §0.1 Zariski subsets and radicals | Disc, dual numbers, unit and zero ideals | V(T) = {0} on disc, whole point on dual numbers; √(T²) = (T); V(1) = ∅; V(0) = X | Agrees | None |
| §0.1 unions, intersections and preimages | Coordinate axes; squaring map | V(X) ∪ V(Y) = V(XY); V(X) ∩ V(Y) = {(0,0)}; squaring pulls V(T) back to V(T²) = {0} | Both directions agree | None |
| §0.2 local/global dimension comparisons | Disc; cusp; isolated point; empty space | Local dimensions 1,1,0; cusp tangent dimension 2; global point-plus-disc dimension max(0,1) = 1; empty dimension bottom | Agrees | None |
| §0.3 nowhere-density equivalences | V(T) in disc; whole axis in crossing; ∅ | Disc subset dimensions 0 < 1; axis dimensions 1 = 1 away from crossing; empty case has no nonempty opens on either side | Both directions distinguished | None |
| Kiehl-proper supplier gap | P¹ over ℂ_p, p = 2 and 3 | Inner T and T⁻¹ discs cover; outer radius p discs cover; norms of pT and p/T on inner charts are 1/2 and 1/3 respectively, each < 1 | Relative compactness despite nondiscreteness | Added exact gap |
| §0.4 image = coherent support | P¹ over ℂ_p; identity; empty source; closed point in disc | H⁰(P¹,O) = ℂ_p, support = image = point; identity support = X; empty direct image = 0 with empty support; quotient K⟨T⟩/(T) has support {0} | Equality in both directions | Proof uses gap; new Check |
| §0.5 regular restrictions | Identity; unit circle restriction; evaluation at 0 | Identity fibres are fields; restriction retains dimension-one completed local parameters; evaluation sends T to 0 and kills the injection given by multiplication by T | Regular versus nonflat distinguished | None |
| §0.5 scalar extensions | Characteristic-zero finite extension; inseparable degree-p extension | K[[T]] → K′[[T]] keeps T; inseparable geometric fibre is L[ε]/εᵖ, with ε ≠ 0 and εᵖ = 0 | Characteristic hypothesis retained | None |
| §1.1 normalization | Cusp, crossing, dual numbers, ∅ | Cusp B = A + At with t²,t³ in A but t not in A; crossing has two lifts at origin; dual numbers reduce to K; empty normalization empty | Agrees | None |
| §1.2 normalization criterion | Cusp; added vertical point | Cusp is an isomorphism off its origin, with one lift; X ⊔ point has an open extra component in inverse exceptional set | Both nowhere-density hypotheses matter | None |
| §1.3 connected components | Disc, K × K, ∅ | Component counts 1,2,0; idempotents of K × K are (0,0),(1,0),(0,1),(1,1); ∅ is preconnected but not connected | Agrees | None |
| §1.4 irreducible components and local branches | XY = 0; integral nodal cubic; finite field extension | Crossing has 2 components and 1 connected component; node normalization has t = ±1 over origin but 1 global component; Spa L has 1 component | Local/global distinction retained | None |
| §1.5 irreducibility criterion | Disc; crossing; ∅ | Proper closed disc subsets have dimension 0 < 1; crossing = two proper axes; empty binary-union condition alone is vacuous | Nonemptiness retained | None |
| §1.6 full-dimension criterion | Bidisc V(XY); Spa L; closed subdisc | Dimensions 1 < 2; nonempty closed subset of Spa L is the whole dimension-zero point; subdisc has dimension 1 but fails Zariski closedness | Agrees | None |
| §1.7 bounded extension | Idempotent; 1/T; cusp parameter t | e² − e = 0 with \|e\| ≤ 1; \|1/πⁿ\| = \|π\|⁻ⁿ tends to infinity; t is bounded but t not in K⟨t²,t³⟩ | Boundedness and normality distinguished | None |
| §1.8 connected complements | Punctured disc; crossing minus origin; nodal cubic minus node | Connected-component counts 1,2,1 respectively; crossing has 2 irreducible components | Hypotheses discriminate | None |
| §2.1 singular locus | Cusp, crossing, disc, dual numbers | Singular sets {0},{0},∅,whole point; dual-number tangent dimension 1 > 0 | Reducedness needed for density | None |
| §2.2 smooth = regular | Spa K; inseparable field L/K | Spa K has local ring K, dim 0 and Ω = 0; L is a regular dimension-zero field but dim_L Ω_(L/K) = 1 | Perfectness retained | None |
| §2.3 tangent spaces and functoriality | Disc, cusp, double point; square then cube | Tangent dimensions 1,2,1 versus local dimensions 1,1,0; derivative of T⁶ at a is 6a⁵ = (3a⁴)(2a) | Direction and chain rule agree | None |
| §2.4 reduced singular stratification | Cusp; plane plus line; zero-dimensional reduced space | Dimension chains 1 → 0 → empty; 2 → 0 → empty; 0 → empty | Bound d+1 includes d = 0 | None |
| §2.5 rank loci | Square; constant; identity; r = 0 and too large | Ranks 1 off 0 and 0 at 0; constant rank 0; identity rank n; empty determinant 1 gives whole locus; oversized minors give empty locus | Agrees | None |
| §3.1 finite-extension classes | Spa K; finite Galois L/K of degree n | One class for Spa K; n embedding representatives of Spa L give 1 image class; a nonfinite completed closure is excluded | Representatives not classes | None |
| §3.2 classical-image bijection | Disc; multiplicative Grassmannian point labels | A maximal ideal gives its finite residue-field representative and one class; tⁿ lattices give distinct integer labels n = 0,1,2 | Injectivity and surjectivity agree | None |
| §3.3 polydisc rational-point topology | ℚ_p unit disc; zero variables; rational metric balls | Rational trace \|T−a\| ≤ \|p\|ᵏ is the clopen ball a+pᵏℤ_p; D⁰(K) is one point; Gauss neighbourhood \|Tᵖ−T\| ≥ 1 has no ℚ_p-points | Weak inequalities use ultrametricity | None |
| IsUnitGaussPoint, §3.4 normalization | f = π+T, g = 1; f = 0; zero variables | Gauss norms 1 and 1; norm 0 only for zero series; in zero variables the comparison is the coefficient-field comparison | Predicate fixes valuation class | None |
| Gauss closure headline, §3.4 | Infinite residue field; 𝔽₂ and 𝔽₃; zero variables | At η, \|T^q−T\| = 1; at every integral rational a, \|a^q−a\| < 1 for q = 2,3; nonzero polynomial over infinite residue field has a nonzero evaluation; D⁰ has its single rational Gauss point | Infinitude hypothesis discriminates | None |
| §4.1 specialization and its direction | Disc; annulus; point; dual numbers | sp(η) = (0), sp(a) = (T−ā); annulus endpoints go to (Y),(X); point and reduced dual numbers have one reduction point | Agrees | References preserved |
| §4.1 naturality | K⟨S⟩ → K⟨T⟩, S ↦ T² | Both composites at T=a give the prime (S−ā²); at η both give generic prime (0) | Contravariant directions agree | None |
| §4.2 generic-point/singleton equivalence | Disc; annulus XY = c | Fibre over (0) is {η}; fibres over (Y),(X) are the two endpoint singletons with values (1,\|c\|),(\|c\|,1) | Characterizations precede API | Reordered, new Check |
| §4.2 valuation-ring characterization | Dual numbers; attempted completion of reduction | ε/pⁿ is power bounded for every n, so ε lies in every pⁿA° and separated completion kills it; result K°. In reduction p = 0, so completion cannot produce K° | Source misprint remains excluded | Preserved |
| Rank-one comparison normalization | Disc over ℚ₂ and ℚ₃; scaled seminorm | Normalized seminorm has α(p) = 1/2 or 1/3; α²(p) = 1/4 or 1/9 and fails the fixed-field normalization | Wrong rescaling excluded | Added domain, codomain, law |
| Shilov boundary convention and maximum | p+T²; constant 0; annulus X,Y | Disc supremum = max(p⁻¹,1) = 1 = value at η; zero supremum 0; X requires endpoint (1,\|c\|) and Y requires the other endpoint (\|c\|,1) | Smallest closed boundary discriminates | Imported ambient spectrum |
| Banach spectrum versus Banach norm | K[ε]/ε² with maximum norm; zero algebra | ‖ε‖ = 1 but α(ε)² = α(0) = 0, so α(ε) = 0 and spectrum = spectrum of K; zero algebra would require α(0) = 0 = α(1) = 1, impossible; its supremum is defined as 0 without attainment | Nilpotent and empty cases agree | Added README Checks |
| §4.3 Shilov definition and finite API | Disc; annulus; finite L/K; zero algebra | Minimal-prime counts and Shilov cardinalities agree: 1,2,1,0; nonzero cases have nonempty boundary | Characterization supplies API | Reordered and all references updated |
| §4.3 finite injective map API | K⟨S⟩ → K⟨T⟩, S ↦ T², including p = 2 | At η, the pullback value of S is 1² = 1; for every polynomial the substituted exponents remain distinct and the Gauss norm is unchanged, so η maps to η | Shilov preservation agrees | None |
| §4.4 weakly Shilov definition and density | Rational subdisc radius \|p\|; classical point; isolated point | Subdisc Gauss point has residue transcendence 1 = local dim 1; classical disc point 0 < 1; isolated point 0 = 0 | Local dimension retained | Needs updated |
| §4.5 secondary residue bound | Unit Gauss, irrational-radius, classical points | (trdeg,dim) = (1,1),(0,1),(0,1); on Spa L it is (0,0) | Bound, not automatic equality | None |
| §4.6 residue criterion and open invariance | Type 2, type 3, isolated component | Equalities 1=1 and 0=0 give membership; 0<1 fails membership; restricting an open changes neither completed residue nor local dimension | Both directions agree | Characterization reference updated |
| §4.7 avoidance | Disc V(T); crossing origin; union of classical points | V(T) has dimension 0 while Gauss trdeg is 1; crossing origin also has trdeg 0 < local dim 1; every classical point has trdeg 0 | Avoidance argument unchanged | None |
| §5.1 blow-ups and flat base change | Bidisc origin; Cartier centre; unit/zero ideals | Exceptional fibre P¹; Cartier blow-up identity; unit ideal identity, zero ideal empty; adjoining a smooth parameter gives exceptional P¹ times that parameter space | Agrees | None |
| §5.2 marked sequences and contraction | Length 0; unit ideal; Cartier ideal | Composite identities in all three cases, but marked lengths 0,1,1; contraction deletes only the unit-ideal stage | Markings discriminate | None |
| §5.2 countable hypersequences | y² = x^(2n+1), n = 0,1,2 | Displayed towers have 0,1,2 steps; n=2 first strict transform has exponent 3, second exponent 1; finite component unions have a finite maximum | No uniform global bound | None |
| §5.3 functorial rigid resolution | Smooth space; cusp; generically reduced embedded nilpotent | Smooth tower length 0; cusp length 1 with x=u²,y=u³; K⟨x,y⟩/(y²,xy) localizes at x to y=0 and blows up to x-chart K⟨x⟩ | Separate supplier gaps retained | None |
| §5.4 resolution covers and connectedness | Cusp; crossing; double point | Resolved connected-component counts 1,2,1 after reducing the double point; all maps surject on their underlying points; zero-ideal blow-up instead has 0 source points | Irreducibility/reduction matter | None |
| Analytic inverse contract | T+T²; point model | Substitution of T−T²+2T³ gives T modulo T⁴; derivative at 0 is 1; in dimension 0 unique linear map is invertible | Native input applies | None |
| Constant rank headline, §6.1 | (x,y)↦(x,x²); k=0; m=n=k=0; characteristic p | Target shear gives (x,0); centred constant map gives 0; empty coordinate formula has no indices; Tᵖ has derivative 0 but sends πⁿ to nonzero π^(np) | Rank-neighbourhood and char-zero binders retained | None |
| §6.2 rational rigid polydisc charts | G_m at 1, p=2,3; radius 1; dimension 0 | \|T−1\|≤1/p forces \|T\|=1; radius 1 includes T=0; dimension-zero rational chart is Spa F | Nonarchimedean hypothesis retained | None |
| §6.3 rigid rational-point atlas | Disc; finite extension degree 2; infinite extension | ℤ_p has Q_p dimension 1; finite-extension disc dimension 1 over F′ and 2 over Q_p; C_p model has infinite Q_p dimension | No infinite finite-rank assertion | None |
| §6.4 algebraic-point atlas construction | G_m over ℝ and ℂ | z↦z−1 and w↦1+w compose to identity; complex disc radius 1/2 intersects real points in interval (−1/2,1/2) | Matches evaluation topology and centres | Added target |
| §6.4 transition compatibility | G_m charts u=z−1 and v=z⁻¹−1 | v = −u/(1+u), u = −v/(1+v); derivative at 0 is −1; denominator has \|1+u\|≥1/2 for \|u\|<1/2 | Transition analytic and invertible | Added API and Check |
| §6.4 group operations and morphisms | G_m product/inverse; identity; squaring | Product coordinate u+v+uv; inverse −u/(1+u); identity derivative 1; square coordinate 2u+u² with derivative 2 | Sources, targets and tangent maps fixed | Added API |
| §6.4 GL₂ chart and extension compatibility | I+H over ℝ⊆ℂ, max entry <1/8 | det(I+H)=1+h₁₁+h₂₂+h₁₁h₂₂−h₁₂h₂₁; \|det−1\|<9/32<1; four-entry derivative determinant 1 | Chart exists over both fields | Added Check |
| §6.4 finite étale and zero-dimensional chart | μ₃ over ℝ⊆ℂ | Real point count 1, complex point count 3; both identity chart domains have 1 point and dimension 0 | No global point-set equality asserted | Added Check |
| §6.4 rigid-atlas comparison | ℚ_p⊆ℂ_p, G_m at 1 | Both coordinates w=z−1, inverse 1+w on \|w\|<1; intersection with ℚ_p gives the same ball; zero map derivative 0 cannot replace chart derivative 1 | Local compatibility holds | Added comparison |
| §6.5 submersions | Projection D²→D; GL₂ action on P¹; square at 0 | Projection derivative (u,v)↦u; orbit coordinate c/a has derivative δc at I; square derivative 0 fails surjectivity | Quotient need not surject on rational points | Heading renumbered |
| Scalar subfield headline, §6.6 | m=0; f(z)=z(z−a), a∉E; p=2,3 | m=0 condition and conclusion both f(0)=0; quadratic has f′(0)=−a≠0 so fails neighbourhood vanishing; coefficient recovery multiplies c₂ by 2, nonzero even over ℚ₂ | Open-set and char-zero conditions retained | None |
| §6.6 group identity consequence | ℝ⊆ℂ, G_m, K₀=ℝ₊; finite étale group | Chart sends K₀ near 1 to real interval containing 0; zero restriction gives derivatives n!c_n=0 and hence c_n=0; dimension-zero condition is φ(1)=0 on both sides | Archimedean case supplied locally | New atlas input and explicit U |

The new scalar-extension chart assertion is local at a rational centre. The polynomial presentation has coefficients in F; its invertible minor stays nonzero under the isometric embedding. On a sufficiently small common ball the inverse over F and its extension over F′ coincide by inverse uniqueness. Completeness ensures that the F-valued inverse exists in F, so the extended chart meets the F-point locus in precisely the smaller chart. This proves the claimed compatibility without assuming local compactness, finite extension degree or a rigid space over an archimedean field.

## Pinned APIs and elaborated signatures

The dependency checkout HEADs match lake-manifest.json: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.

| Input read at the pin | Locator and relevant limit |
|---|---|
| Analytic strict derivative | Mathlib/Analysis/Calculus/FDeriv/Analytic.lean:141, AnalyticAt.hasStrictFDerivAt. A convergent analytic germ supplies the strict derivative. |
| Local inversion | Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:117, HasStrictFDerivAt.toOpenPartialHomeomorph. Requires an invertible continuous linear derivative and complete source model. |
| Analytic inverse | Mathlib/Analysis/Analytic/Inverse.lean:656, OpenPartialHomeomorph.hasFPowerSeriesAt_symm. Requires the actual invertible first coefficient, not an arbitrary homeomorphism. |
| Analytic atlas | Mathlib/Geometry/Manifold/IsManifold/Basic.lean:777, IsManifold. Analytic compatibility does not include Hausdorffness or second countability. |
| Isometric scalar embedding | Mathlib/Analysis/Normed/Module/Basic.lean:271, :300 and :352, NormedAlgebra, norm_algebraMap' and algebraMap_isometry. The field norm is preserved; completeness then gives closed image. |
| Native algebraic smooth/étale vocabulary | Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:59 and Etale.lean:39 supply scheme predicates, not a canonical analytic atlas on algebraic rational points. Object searches in both pinned libraries found no such general algebraic-group point-atlas construction to import. |
| Existing native polydisc | TauCeti/AlgebraicGeometry/AdicSpace/Spa/Polydisc/Basic.lean supplies the imported closedPolydisc and evaluation carrier. No new heavy construction or data declaration was added to Suggested.lean. |

Appended `#check @name` for all four declarations to one scratch copy of the final Lean file and elaborated it once. Exit 0, with three admitted-proof warnings. Compared each elaborated type with the README:

| Declaration | Signature comparison |
|---|---|
| IsUnitGaussPoint | Keeps nontrivially normed, ultrametric and nonarchimedean hypotheses, arbitrary n and the native polydisc carrier. Completeness is not needed for this comparison predicate. |
| gaussPoint_mem_closure_rationalPoints | Keeps CompleteSpace and Infinite of the native residue quotient, arbitrary dimension and the base Spa point. Its conclusion asserts both the specified Gauss point and closure of the actual evaluation-point range. |
| analytic_constantRank | Keeps CompleteSpace, CharZero, both rank bounds, both analytic manifold structures, analyticity and eventual rank. Charts, their analytic inverses, centred coordinates, MapsTo and the first-k-coordinate formula all remain. |
| analytic_germ_eq_zero_of_subfield | Keeps completeness and characteristic zero of both normed fields, NormedAlgebra, the analytic germ and actual algebraMap restriction. No ultrametric or local-compactness hypothesis was introduced. |

No section binder was lost and no theorem signature changed. No Lean declaration was added, deleted or renamed. The only Lean change explains why the new algebraic-point atlas and its extension comparison cannot be stated with the canonical structures absent at the pins. The three existing headlines remain the acceptance test; all new boundary tests stay in the README.

## Validation outcomes

- Prescribed `lake env lean` elaboration of packages/AdicSpacesPartV/Suggested.lean, from the pinned content checkout: exit 0. Diagnostics are exactly three “declaration uses sorry” warnings at 51:8, 68:8 and 100:8. No missing TauCeti object file and no targeted build required.
- All four `#check @name` signature checks in one scratch copy: exit 0; all hypotheses and conclusions agree as above.
- Prescribed dependency check with the supplied order and movable mode: exit 0. Its complete output is:

    depcheck: 52 roadmaps, 587 edges, 0 problem(s)

No UPWARD, CYCLE or moved line was emitted. The merge-order file was not edited.

- Citation resolution: exit 0; no cross-roadmap citations found nowhere and no roadmap Lean names found nowhere. Relevant native declarations were separately read at the pins.
- JSON comparison against the original plan: every top-level field except gaps is identical; all four original gaps are identical. All five exact README gap sentences match their plan entries.
- sources.toml and metadata.toml parse as TOML. Metadata was not edited.
- Mechanical internal edge check: every Layer 4 Needs edge points to an earlier subsection; the graph is reduction → characterizations → Shilov API → weakly Shilov → residue bound/criterion → avoidance.
- All four declared Lean names appear in the README. Import lines, theorem signatures and real definition body are unchanged; no set_option, data placeholder or additional admitted theorem was introduced.
- Final git diff --check: exit 0, no diagnostics. Only the four permitted package files and this requested report changed.
- No separately listed gate failures were supplied with this job.

## Maintainer consequences

AdicSpacesPartIII R3.6 must supply gap:adic-proper-kiehl-proper to discharge the unrestricted proper-image proof route. This report does not claim that another roadmap has acquired or proved that extension. The other four existing gaps retain their owners and statements.

ReductiveGroupsPartII can consume §6.4 for its locally compact characteristic-zero group atlas. Its measure and Jacobian normalization theory remains there. Neither it nor any later roadmap is imported as a supplier.

Section references changed: former §4.3 is §4.2; former §4.2 is §4.3; former §6.4 is §6.5; former §6.5 is §6.6. Internal references were updated throughout. External consumers using those numerical links should use the new locations; stable RZ target descriptions and all Lean names are unchanged. No other package, tooling, merge order or pull-request text was edited; no commit or network write was made.
